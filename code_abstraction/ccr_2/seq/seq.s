	.section	.text
	.align	32
	#Procedure 0x401780

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
	mov	esi, OFFSET FLAT:label_13
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	mov	rdx, qword ptr [rip + program_name]
	mov	edi, 1
	xor	eax, eax
	mov	rsi, rcx
	mov	rcx, rdx
	mov	r8, rdx
	call	__printf_chk
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_18
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
	mov	esi, OFFSET FLAT:label_20
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
	mov	esi, OFFSET FLAT:label_28
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
	mov	esi, OFFSET FLAT:label_24
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_22
	mov	edx, 5
	call	dcgettext
	mov	rsi, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:label_27
	mov	ecx, OFFSET FLAT:label_17
	xor	eax, eax
	call	__printf_chk
	mov	edi, 5
	xor	esi, esi
	call	setlocale
	test	rax, rax
	je	.label_25
	mov	esi, OFFSET FLAT:label_14
	mov	edx, 3
	mov	rdi, rax
	call	strncmp
	test	eax, eax
	je	.label_25
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_23
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	call	fputs_unlocked
.label_25:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_10
	mov	edx, 5
	call	dcgettext
	mov	rsi, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:label_17
	mov	ecx, OFFSET FLAT:label_11
	xor	eax, eax
	call	__printf_chk
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_26
	mov	edx, 5
	call	dcgettext
	mov	rsi, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:label_11
	mov	ecx, OFFSET FLAT:label_12
	xor	eax, eax
	call	__printf_chk
	mov	edi, ebp
	call	exit
.label_9:
	mov	rbx, qword ptr [rip + stderr]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_19
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
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4019b0

	.globl main
	.type main, @function
main:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x108
	mov	r14, rsi
	mov	ebp, edi
	mov	rdi, qword ptr [r14]
	call	set_program_name
	mov	edi, 6
	mov	esi, OFFSET FLAT:label_45
	call	setlocale
	test	rax, rax
	setne	byte ptr [rip + locale_ok]
	mov	edi, OFFSET FLAT:label_107
	mov	esi, OFFSET FLAT:label_108
	call	bindtextdomain
	mov	edi, OFFSET FLAT:label_107
	call	textdomain
	mov	edi, OFFSET FLAT:close_stdout
	call	atexit
	mov	byte ptr [rip + equal_width],  0
	mov	qword ptr [rip + separator], OFFSET FLAT:label_31
	mov	eax, dword ptr [rip + optind]
	xor	ebx, ebx
	cmp	eax, ebp
	jge	.label_32
	xor	ebx, ebx
.label_99:
	movsxd	rcx, eax
	mov	rcx, qword ptr [r14 + rcx*8]
	cmp	byte ptr [rcx], 0x2d
	jne	.label_40
	movsx	ecx, byte ptr [rcx + 1]
	cmp	ecx, 0x2e
	je	.label_32
	add	ecx, -0x30
	cmp	ecx, 0xa
	jb	.label_32
.label_40:
	mov	edx, OFFSET FLAT:label_47
	mov	ecx, OFFSET FLAT:long_options
	xor	r8d, r8d
	mov	edi, ebp
	mov	rsi, r14
	call	getopt_long
	cmp	eax, 0x65
	jle	.label_50
	cmp	eax, 0x66
	je	.label_53
	cmp	eax, 0x73
	je	.label_54
	cmp	eax, 0x77
	jne	.label_56
	mov	byte ptr [rip + equal_width],  1
	jmp	.label_57
.label_53:
	mov	rbx, qword ptr [rip + optarg]
	jmp	.label_57
.label_54:
	mov	rax, qword ptr [rip + optarg]
	mov	qword ptr [rip + separator],  rax
.label_57:
	mov	eax, dword ptr [rip + optind]
	cmp	eax, ebp
	jl	.label_99
	jmp	.label_32
.label_50:
	cmp	eax, -1
	jne	.label_67
	mov	eax, dword ptr [rip + optind]
.label_32:
	mov	r13d, ebp
	sub	r13d, eax
	je	.label_68
	cmp	r13d, 4
	jae	.label_72
	xor	r15d, r15d
	test	rbx, rbx
	mov	dword ptr [rsp + 0x10], ebp
	mov	qword ptr [rsp + 0x40], r14
	mov	qword ptr [rsp + 0x30], r13
	je	.label_74
	xor	r15d, r15d
	xor	ebp, ebp
	jmp	.label_75
	nop	dword ptr [rax]
.label_78:
	xor	ecx, ecx
	cmp	al, 0x25
	sete	cl
	inc	r15
	lea	rbp, [rcx + rbp + 1]
.label_75:
	movzx	eax, byte ptr [rbx + rbp]
	cmp	al, 0x25
	jne	.label_114
	cmp	byte ptr [rbx + rbp + 1], 0x25
	je	.label_78
	jmp	.label_79
.label_114:
	test	al, al
	jne	.label_78
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_80
	jmp	.label_34
.label_79:
	lea	rdi, [rbx + rbp + 1]
	inc	rbp
	mov	esi, OFFSET FLAT:label_82
	call	strspn
	mov	r14, rax
	add	r14, rbp
	lea	rdi, [rbx + r14]
	mov	esi, OFFSET FLAT:label_59
	call	strspn
	mov	r12, rax
	add	r12, r14
	mov	al, byte ptr [rbx + r12]
	cmp	al, 0x2e
	jne	.label_87
	lea	rdi, [rbx + r12 + 1]
	mov	esi, OFFSET FLAT:label_59
	call	strspn
	lea	r12, [rax + r12 + 1]
	mov	al, byte ptr [rbx + r12]
.label_87:
	xor	ecx, ecx
	cmp	al, 0x4c
	sete	cl
	lea	rbp, [rcx + r12]
	movsx	esi, byte ptr [rbx + rbp]
	test	esi, esi
	je	.label_92
	mov	qword ptr [rsp + 0x20], rcx
	mov	edi, OFFSET FLAT:label_95
	mov	edx, 9
	call	memchr
	test	rax, rax
	je	.label_98
	lea	r13, [rbx + r12]
	inc	rbp
	xor	r14d, r14d
	jmp	.label_100
	nop	dword ptr [rax]
.label_104:
	xor	ecx, ecx
	cmp	al, 0x25
	sete	cl
	inc	r14
	lea	rbp, [rcx + rbp + 1]
.label_100:
	movzx	eax, byte ptr [rbx + rbp]
	cmp	al, 0x25
	jne	.label_102
	cmp	byte ptr [rbx + rbp + 1], 0x25
	je	.label_104
	jmp	.label_105
	nop	word ptr cs:[rax + rax]
.label_102:
	test	al, al
	jne	.label_104
	add	rbp, 2
	mov	rdi, rbp
	call	xmalloc
	mov	rbp, rax
	mov	rdi, rbp
	mov	rsi, rbx
	mov	rdx, r12
	call	memcpy
	mov	byte ptr [rbp + r12], 0x4c
	lea	rdi, [rbp + r12 + 1]
	add	r13, qword ptr [rsp + 0x20]
	mov	rsi, r13
	call	strcpy
	xor	ebx, ebx
	test	rbp, rbp
	je	.label_36
	cmp	byte ptr [rip + equal_width],  1
	je	.label_38
	mov	al, 1
	mov	qword ptr [rsp + 0x68], rax
	mov	rbx, rbp
	jmp	.label_39
.label_74:
	xor	eax, eax
	mov	qword ptr [rsp + 0x68], rax
	xor	ebx, ebx
	xor	r14d, r14d
	jmp	.label_44
.label_36:
	xor	eax, eax
	mov	qword ptr [rsp + 0x68], rax
.label_39:
	mov	ebp, dword ptr [rsp + 0x10]
.label_44:
	mov	r12d, dword ptr [rip + optind]
	movsxd	rcx, r12d
	mov	rax, qword ptr [rsp + 0x40]
	mov	rsi, qword ptr [rax + rcx*8]
	movsx	eax, byte ptr [rsi]
	add	eax, -0x30
	cmp	eax, 9
	ja	.label_48
	mov	qword ptr [rsp + 0x58], rcx
	mov	rdi, rsi
	mov	r13, rsi
	call	strlen
	mov	rbp, rax
	mov	esi, OFFSET FLAT:label_59
	mov	qword ptr [rsp + 0x20], r13
	mov	rdi, r13
	call	strspn
	cmp	rbp, rax
	jne	.label_64
	mov	rax, qword ptr [rsp + 0x30]
	cmp	eax, 1
	je	.label_66
	mov	rax, qword ptr [rsp + 0x40]
	mov	rcx, qword ptr [rsp + 0x58]
	mov	rbp, qword ptr [rax + rcx*8 + 8]
	movsx	r13d, byte ptr [rbp]
	lea	eax, [r13 - 0x30]
	cmp	eax, 9
	ja	.label_64
	mov	rdi, rbp
	call	strlen
	mov	qword ptr [rsp + 0x98], rax
	mov	esi, OFFSET FLAT:label_59
	mov	rdi, rbp
	call	strspn
	cmp	qword ptr [rsp + 0x98], rax
	jne	.label_64
	mov	rax, qword ptr [rsp + 0x30]
	cmp	eax, 3
	jb	.label_66
	cmp	r13b, 0x31
	mov	rsi, qword ptr [rsp + 0x20]
	jne	.label_69
	cmp	byte ptr [rbp + 1], 0
	jne	.label_69
	mov	rax, qword ptr [rsp + 0x40]
	mov	rcx, qword ptr [rsp + 0x58]
	mov	rbp, qword ptr [rax + rcx*8 + 0x10]
	movsx	eax, byte ptr [rbp]
	add	eax, -0x30
	cmp	eax, 9
	ja	.label_69
	mov	rdi, rbp
	call	strlen
	mov	r13, rax
	mov	esi, OFFSET FLAT:label_59
	mov	rdi, rbp
	call	strspn
	cmp	r13, rax
	jne	.label_64
.label_66:
	mov	al, byte ptr [rip + equal_width]
	mov	rcx, qword ptr [rsp + 0x68]
	or	al, cl
	test	al, 1
	mov	ebp, dword ptr [rsp + 0x10]
	jne	.label_90
	mov	rdi, qword ptr [rip + separator]
	call	strlen
	cmp	rax, 1
	jne	.label_90
	mov	rcx, qword ptr [rsp + 0x30]
	cmp	ecx, 1
	mov	eax, OFFSET FLAT:label_94
	mov	rdi, qword ptr [rsp + 0x20]
	cmove	rdi, rax
	lea	eax, [rcx + r12 - 1]
	mov	rbp, qword ptr [rsp + 0x40]
	mov	rsi, qword ptr [rbp + rax*8]
	call	seq_fast
	test	al, al
	fldz	
	jne	.label_43
	fstp	st(0)
	movsxd	r12, dword ptr [rip + optind]
	mov	rsi, qword ptr [rbp + r12*8]
.label_69:
	mov	ebp, dword ptr [rsp + 0x10]
	jmp	.label_48
.label_64:
	mov	ebp, dword ptr [rsp + 0x10]
.label_90:
	mov	rsi, qword ptr [rsp + 0x20]
.label_48:
	inc	r12d
	mov	dword ptr [rip + optind],  r12d
	lea	rdi, [rsp + 0xe0]
	call	scan_arg
	fld	xword ptr [rsp + 0xe0]
	mov	rdi, qword ptr [rsp + 0xf0]
	mov	r13d, dword ptr [rsp + 0xf8]
	movsxd	rax, dword ptr [rip + optind]
	fld1	
	xor	r12d, r12d
	mov	edx, 1
	cmp	eax, ebp
	jge	.label_93
	fstp	st(0)
	fstp	xword ptr [rsp + 0x20]
	mov	qword ptr [rsp + 0x10], rdi
	lea	ecx, [rax + 1]
	mov	dword ptr [rip + optind],  ecx
	mov	r12, qword ptr [rsp + 0x40]
	mov	rsi, qword ptr [r12 + rax*8]
	lea	rdi, [rsp + 0xc0]
	call	scan_arg
	fld	xword ptr [rsp + 0xc0]
	mov	ecx, dword ptr [rsp + 0xd8]
	movsxd	rax, dword ptr [rip + optind]
	cmp	eax, ebp
	fld	st(0)
	fstp	xword ptr [rsp + 0x30]
	jge	.label_46
	mov	ebp, ecx
	fldz	
	fxch	st(1)
	fucomip	st(1)
	fstp	st(0)
	jne	.label_51
	jnp	.label_65
.label_51:
	lea	ecx, [rax + 1]
	mov	dword ptr [rip + optind],  ecx
	mov	rsi, qword ptr [r12 + rax*8]
	lea	rdi, [rsp + 0xa0]
	call	scan_arg
	fld	xword ptr [rsp + 0x30]
	fld	xword ptr [rsp + 0xa0]
	mov	rdx, qword ptr [rsp + 0x10]
	mov	rax, qword ptr [rsp + 0xb0]
	mov	r12d, ebp
	mov	ecx, dword ptr [rsp + 0xb8]
	mov	rdi, rax
	mov	ebp, r13d
	fld	xword ptr [rsp + 0x20]
	fxch	st(1)
	fstp	xword ptr [rsp + 0x30]
	jmp	.label_60
.label_93:
	xor	ebp, ebp
	fld	st(0)
	mov	ecx, r13d
	fxch	st(2)
	fstp	xword ptr [rsp + 0x30]
	jmp	.label_73
.label_46:
	fstp	st(0)
	mov	rdx, qword ptr [rsp + 0x10]
	mov	rax, qword ptr [rsp + 0xd0]
	mov	rdi, rax
	mov	ebp, r13d
	fld	xword ptr [rsp + 0x20]
	fld1	
	xor	r12d, r12d
.label_73:
	fxch	st(1)
.label_60:
	fldz	
	fld	st(1)
	fstp	xword ptr [rsp + 0x20]
	fmul	st(1), st(0)
	fxch	st(1)
	fucomip	st(1)
	fstp	st(0)
	fld	st(0)
	fstp	xword ptr [rsp + 0x58]
	jne	.label_49
	jp	.label_49
	mov	eax, r12d
	or	eax, ebp
	jne	.label_49
	fld1	
	fxch	st(1)
	fucomi	st(1)
	fstp	st(1)
	jne	.label_49
	jp	.label_49
	fld	xword ptr [rsp + 0x20]
	fldz	
	fxch	st(1)
	fucomip	st(1)
	fstp	st(0)
	jb	.label_49
	test	ecx, ecx
	jne	.label_49
	fld	xword ptr [rsp + 0x30]
	fldz	
	fxch	st(1)
	fucomip	st(1)
	fstp	st(0)
	jb	.label_49
	mov	rax, qword ptr [rsp + 0x68]
	or	al, byte ptr [rip + equal_width]
	test	al, 1
	jne	.label_49
	fstp	st(0)
	mov	qword ptr [rsp + 0x10], rdi
	mov	rdi, qword ptr [rip + separator]
	mov	qword ptr [rsp + 0x40], rdx
	mov	r13d, ecx
	call	strlen
	mov	ecx, r13d
	mov	rdx, qword ptr [rsp + 0x40]
	mov	rdi, qword ptr [rsp + 0x10]
	fld	xword ptr [rsp + 0x58]
	cmp	rax, 1
	jne	.label_49
	fstp	st(0)
	fld	xword ptr [rsp + 0x20]
	fstp	xword ptr [rsp]
	lea	rdi, [rsp + 0x80]
	mov	esi, 1
	mov	edx, OFFSET FLAT:label_89
	xor	eax, eax
	call	__asprintf_chk
	test	eax, eax
	js	.label_70
	fld	xword ptr [rsp + 0x30]
	fldz	
	fld	st(1)
	fmul	st(1)
	fucomip	st(1)
	fstp	st(0)
	jne	.label_106
	jp	.label_106
	fstp	xword ptr [rsp]
	lea	rdi, [rsp + 0x50]
	mov	esi, 1
	mov	edx, OFFSET FLAT:label_89
	xor	eax, eax
	call	__asprintf_chk
	test	eax, eax
	jns	.label_115
	jmp	.label_70
.label_106:
	fstp	st(0)
	mov	edi, OFFSET FLAT:label_29
	call	xstrdup
	mov	qword ptr [rsp + 0x50], rax
.label_115:
	mov	rdi, qword ptr [rsp + 0x80]
	cmp	byte ptr [rdi], 0x2d
	je	.label_35
	mov	rsi, qword ptr [rsp + 0x50]
	cmp	byte ptr [rsi], 0x2d
	je	.label_35
	call	seq_fast
	test	al, al
	je	.label_42
	fldz	
	jmp	.label_43
.label_42:
	mov	rdi, qword ptr [rsp + 0x80]
.label_35:
	call	free
	mov	rdi, qword ptr [rsp + 0x50]
	call	free
	fld	xword ptr [rsp + 0x58]
	mov	rdi, qword ptr [rsp + 0x10]
	mov	rdx, qword ptr [rsp + 0x40]
	mov	ecx, r13d
.label_49:
	test	rbx, rbx
	jne	.label_52
	cmp	ebp, r12d
	cmovge	r12d, ebp
	cmp	r12d, 0x7fffffff
	mov	ebx, OFFSET FLAT:label_55
	je	.label_52
	cmp	ecx, 0x7fffffff
	je	.label_52
	cmp	byte ptr [rip + equal_width],  1
	jne	.label_62
	mov	eax, r12d
	sub	eax, ebp
	movsxd	r8, eax
	mov	eax, r12d
	sub	eax, ecx
	cdqe	
	test	r12d, r12d
	sete	sil
	setne	r9b
	test	ecx, ecx
	setne	bl
	sete	cl
	and	bl, sil
	and	cl, r9b
	movzx	ecx, cl
	add	rax, rdi
	movzx	esi, bl
	sub	rax, rsi
	add	rax, rcx
	test	ebp, ebp
	sete	cl
	and	cl, r9b
	movzx	ecx, cl
	add	r8, rdx
	add	r8, rcx
	cmp	r8, rax
	cmovbe	r8, rax
	mov	ebx, OFFSET FLAT:label_55
	cmp	r8, 0x7fffffff
	ja	.label_52
	fstp	st(0)
	mov	ebx, OFFSET FLAT:get_default_format.format_buf
	mov	edi, OFFSET FLAT:get_default_format.format_buf
	mov	esi, 1
	mov	edx, 0x1c
	mov	ecx, OFFSET FLAT:label_77
	xor	eax, eax
	mov	r9d, r12d
	call	__sprintf_chk
	jmp	.label_83
.label_62:
	fstp	st(0)
	mov	ebx, OFFSET FLAT:get_default_format.format_buf
	mov	edi, OFFSET FLAT:get_default_format.format_buf
	mov	esi, 1
	mov	edx, 0x1c
	mov	ecx, OFFSET FLAT:label_84
	xor	eax, eax
	mov	r8d, r12d
	call	__sprintf_chk
.label_83:
	fld	xword ptr [rsp + 0x58]
.label_52:
	fld	xword ptr [rsp + 0x30]
	fld	xword ptr [rsp + 0x20]
	fxch	st(1)
	fucomi	st(1)
	seta	al
	fxch	st(1)
	fucomi	st(1)
	fstp	st(1)
	seta	cl
	fldz	
	fucomip	st(2)
	fstp	st(1)
	ja	.label_88
	mov	eax, ecx
.label_88:
	test	al, al
	jne	.label_43
	fstp	xword ptr [rsp]
	mov	edi, 1
	xor	eax, eax
	mov	rsi, rbx
	call	__printf_chk
	test	eax, eax
	fldz	
	js	.label_85
	fstp	st(0)
	fld1	
	xor	r13d, r13d
	fld	xword ptr [rsp + 0x20]
	fxch	st(1)
	fstp	xword ptr [rsp + 0x10]
	nop	word ptr cs:[rax + rax]
.label_86:
	test	r13b, r13b
	fld	xword ptr [rsp + 0x58]
	jne	.label_76
	fld	xword ptr [rsp + 0x10]
	fmul	st(1)
	fld	xword ptr [rsp + 0x20]
	faddp	st(1)
	fld	xword ptr [rsp + 0x30]
	fucomi	st(1)
	seta	r13b
	fld	st(1)
	fstp	xword ptr [rsp + 0x40]
	fxch	st(1)
	fucomip	st(1)
	fstp	st(0)
	seta	al
	fldz	
	fucomip	st(1)
	fstp	st(0)
	ja	.label_101
	mov	r13b, al
.label_101:
	test	r13b, r13b
	fldz	
	je	.label_111
	fstp	st(0)
	fstp	xword ptr [rsp + 0x68]
	cmp	byte ptr [rip + locale_ok],  0
	je	.label_113
	mov	edi, 1
	mov	esi, OFFSET FLAT:label_30
	call	setlocale
.label_113:
	fld	xword ptr [rsp + 0x40]
	fstp	xword ptr [rsp]
	mov	esi, 1
	xor	eax, eax
	lea	rdi, [rsp + 0x50]
	mov	rdx, rbx
	call	__asprintf_chk
	mov	ebp, eax
	cmp	byte ptr [rip + locale_ok],  0
	je	.label_41
	mov	edi, 1
	mov	esi, OFFSET FLAT:label_45
	call	setlocale
.label_41:
	test	ebp, ebp
	js	.label_70
	movsxd	rax, ebp
	sub	rax, r14
	mov	rcx, qword ptr [rsp + 0x50]
	mov	byte ptr [rcx + rax], 0
	mov	rdi, qword ptr [rsp + 0x50]
	add	rdi, r15
	xor	r12d, r12d
	xor	esi, esi
	mov	ecx, OFFSET FLAT:cl_strtold
	lea	rdx, [rsp + 0x80]
	call	xstrtold
	fld	xword ptr [rsp + 0x80]
	test	al, al
	je	.label_58
	fld	xword ptr [rsp + 0x30]
	fxch	st(1)
	fucomip	st(1)
	fstp	st(0)
	jne	.label_63
	jp	.label_63
	mov	qword ptr [rsp + 0x78], 0
	fld	xword ptr [rsp + 0x68]
	fstp	xword ptr [rsp]
	mov	esi, 1
	xor	eax, eax
	lea	rdi, [rsp + 0x78]
	mov	rdx, rbx
	call	__asprintf_chk
	test	eax, eax
	js	.label_70
	mov	rbp, qword ptr [rsp + 0x78]
	mov	rsi, qword ptr [rsp + 0x50]
	mov	rdi, rbp
	call	strcmp
	test	eax, eax
	setne	r12b
	mov	rdi, rbp
	call	free
	jmp	.label_63
.label_58:
	fstp	st(0)
.label_63:
	mov	rdi, qword ptr [rsp + 0x50]
	call	free
	test	r12b, r12b
	fldz	
	fldz	
	fxch	st(1)
	je	.label_76
.label_111:
	fstp	st(0)
	fstp	st(0)
	mov	rdi, qword ptr [rip + separator]
	mov	rsi, qword ptr [rip + stdout]
	call	fputs_unlocked
	cmp	eax, -1
	je	.label_81
	fld1	
	fld	xword ptr [rsp + 0x10]
	faddp	st(1)
	fstp	xword ptr [rsp + 0x10]
	fld	xword ptr [rsp + 0x40]
	fstp	xword ptr [rsp]
	mov	edi, 1
	xor	eax, eax
	mov	rsi, rbx
	call	__printf_chk
	test	eax, eax
	fld	xword ptr [rsp + 0x40]
	jns	.label_86
.label_85:
	fstp	st(0)
	call	io_error
.label_76:
	fstp	st(0)
	fstp	st(0)
	mov	rsi, qword ptr [rip + stdout]
	mov	edi, OFFSET FLAT:label_31
	call	fputs_unlocked
	cmp	eax, -1
	fldz	
	je	.label_91
.label_43:
	fstp	st(0)
	xor	eax, eax
	add	rsp, 0x108
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_105:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_96
.label_34:
	mov	edx, 5
	call	dcgettext
	mov	rbp, rax
	mov	rdi, rbx
	call	quote
	mov	rcx, rax
	mov	edi, 1
	xor	esi, esi
	xor	eax, eax
	mov	rdx, rbp
	call	error
.label_81:
	call	io_error
.label_70:
	call	xalloc_die
.label_67:
	cmp	eax, 0xffffff7d
	je	.label_103
	cmp	eax, 0xffffff7e
	jne	.label_56
	xor	edi, edi
	call	usage
.label_68:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_109
	jmp	.label_110
.label_72:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_97
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
	movsxd	rax, dword ptr [rip + optind]
	mov	rdi, qword ptr [r14 + rax*8 + 0x18]
	jmp	.label_116
.label_92:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_33
	jmp	.label_34
.label_98:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_37
	mov	edx, 5
	call	dcgettext
	mov	r14, rax
	mov	rdi, rbx
	call	quote
	mov	rcx, rax
	movsx	r8d, byte ptr [rbx + rbp]
	mov	edi, 1
	xor	esi, esi
	xor	eax, eax
	mov	rdx, r14
	call	error
.label_103:
	mov	rdi, qword ptr [rip + stdout]
	mov	rcx, qword ptr [rip + Version]
	mov	esi, OFFSET FLAT:label_11
	mov	edx, OFFSET FLAT:label_27
	mov	r8d, OFFSET FLAT:label_112
	xor	r9d, r9d
	xor	eax, eax
	call	version_etc
	xor	edi, edi
	call	exit
.label_91:
	fstp	st(0)
	call	io_error
.label_56:
	mov	edi, 1
	call	usage
.label_38:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_61
.label_110:
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
.label_65:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_71
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
	movsxd	rax, dword ptr [rip + optind]
	mov	rdi, qword ptr [r12 + rax*8 - 8]
.label_116:
	call	quote
	mov	rcx, rax
	xor	edi, edi
	xor	esi, esi
	xor	eax, eax
	mov	rdx, rbx
	call	error
	mov	edi, 1
	call	usage
	nop	
	.section	.text
	.align	32
	#Procedure 0x402500

	.globl seq_fast
	.type seq_fast, @function
seq_fast:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x38
	mov	r15, rsi
	mov	rbp, rdi
	movzx	eax, byte ptr [r15]
	mov	ebx, 0x69
	sub	ebx, eax
	jne	.label_117
	movzx	ecx, byte ptr [r15 + 1]
	mov	ebx, 0x6e
	sub	ebx, ecx
	jne	.label_117
	movzx	ecx, byte ptr [r15 + 2]
	mov	ebx, 0x66
	sub	ebx, ecx
	jne	.label_117
	movzx	ebx, byte ptr [r15 + 3]
	neg	ebx
.label_117:
	xor	ecx, ecx
	jmp	.label_131
	nop	dword ptr [rax + rax]
.label_133:
	inc	rcx
.label_131:
	movzx	edx, byte ptr [rbp + rcx]
	cmp	dl, 0x30
	je	.label_133
	test	dl, dl
	jne	.label_134
	lea	rdx, [rbp + rcx]
	test	rcx, rcx
	lea	rbp, [rbp + rcx - 1]
	cmove	rbp, rdx
	jmp	.label_135
.label_134:
	add	rbp, rcx
.label_135:
	xor	ecx, ecx
	jmp	.label_138
	nop	dword ptr [rax + rax]
.label_118:
	mov	al, byte ptr [r15 + rcx + 1]
	inc	rcx
.label_138:
	cmp	al, 0x30
	je	.label_118
	test	al, al
	jne	.label_120
	lea	rax, [r15 + rcx]
	test	rcx, rcx
	lea	r15, [r15 + rcx - 1]
	cmove	r15, rax
	jmp	.label_121
.label_120:
	add	r15, rcx
.label_121:
	mov	rdi, rbp
	call	strlen
	mov	r13, rax
	xor	eax, eax
	mov	dword ptr [rsp + 4], ebx
	test	ebx, ebx
	je	.label_127
	mov	rdi, r15
	call	strlen
.label_127:
	lea	r12, [r13 + 1]
	cmp	r12, rax
	mov	qword ptr [rsp + 0x28], rax
	cmova	rax, r12
	cmp	rax, 0x1f
	mov	r14d, 0x1f
	cmova	r14, rax
	lea	rdi, [r14 + 1]
	mov	qword ptr [rsp + 8], rdi
	call	xmalloc
	mov	qword ptr [rsp + 0x20], rax
	lea	rbx, [rax + r14]
	sub	rbx, r13
	mov	rdi, rbx
	mov	rsi, rbp
	mov	rdx, r12
	call	memcpy
	mov	rdi, qword ptr [rsp + 8]
	xor	eax, eax
	mov	qword ptr [rsp + 0x18], rax
	mov	r12d, dword ptr [rsp + 4]
	test	r12d, r12d
	mov	ebp, 0
	je	.label_126
	call	xmalloc
	mov	qword ptr [rsp + 0x10], rax
	mov	rdi, rax
	add	rdi, r14
	mov	rbp, qword ptr [rsp + 0x28]
	sub	rdi, rbp
	lea	rdx, [rbp + 1]
	mov	rax, rdi
	mov	qword ptr [rsp + 0x18], rax
	mov	rsi, r15
	call	memcpy
	cmp	r13, rbp
	jae	.label_132
	mov	rdi, qword ptr [rsp + 8]
	mov	rbp, qword ptr [rsp + 0x10]
.label_126:
	mov	qword ptr [rsp + 0x10], rbp
	add	rdi, rdi
	cmp	rdi, 0x2000
	mov	ebp, 0x2000
	cmovae	rbp, rdi
	mov	rdi, rbp
	call	xmalloc
	mov	r15, rax
	mov	qword ptr [rsp + 0x30], rbp
	lea	rax, [r15 + rbp]
	mov	qword ptr [rsp + 8], rax
	mov	rcx, -1
	mov	rdi, r15
	mov	rsi, rbx
	mov	rdx, r13
	call	__mempcpy_chk
	mov	rbp, rax
	nop	dword ptr [rax + rax]
.label_119:
	test	r12d, r12d
	je	.label_128
	cmp	r13, qword ptr [rsp + 0x28]
	jb	.label_128
	cmp	qword ptr [rsp + 0x28], r13
	jb	.label_130
	mov	rdi, rbx
	mov	rsi, qword ptr [rsp + 0x18]
	call	strcmp
	test	eax, eax
	jns	.label_130
.label_128:
	mov	rax, qword ptr [rip + separator]
	mov	al, byte ptr [rax]
	mov	byte ptr [rbp], al
	inc	rbp
	lea	rax, [rbx + r13 - 1]
.label_139:
	movzx	ecx, byte ptr [rax]
	mov	edx, ecx
	inc	dl
	mov	byte ptr [rax], dl
	cmp	cl, 0x39
	jl	.label_137
	mov	byte ptr [rax], 0x30
	dec	rax
	cmp	rax, rbx
	jae	.label_139
	mov	byte ptr [rbx - 1], 0x31
	dec	rbx
	inc	r13
.label_137:
	cmp	r13, r14
	jne	.label_122
	lea	rsi, [r14 + r14 + 1]
	mov	rdi, qword ptr [rsp + 0x20]
	call	xrealloc
	lea	rbx, [rax + r14]
	lea	rdx, [r14 + 1]
	lea	r14, [r14 + r14]
	mov	rdi, rbx
	mov	qword ptr [rsp + 0x20], rax
	mov	rsi, rax
	call	memmove
	lea	r12, [r14 + r14 + 2]
	cmp	qword ptr [rsp + 0x30], r12
	jae	.label_123
	sub	rbp, r15
	mov	rdi, r15
	mov	rsi, r12
	call	xrealloc
	mov	r15, rax
	add	rbp, r15
	lea	rax, [r15 + r12]
	mov	qword ptr [rsp + 8], rax
	mov	qword ptr [rsp + 0x30], r12
.label_123:
	mov	r12d, dword ptr [rsp + 4]
.label_122:
	mov	rcx, -1
	mov	rdi, rbp
	mov	rsi, rbx
	mov	rdx, r13
	call	__mempcpy_chk
	mov	rbp, rax
	mov	rax, r13
	not	rax
	add	rax, qword ptr [rsp + 8]
	cmp	rax, rbp
	jae	.label_119
	sub	rbp, r15
	mov	rcx, qword ptr [rip + stdout]
	mov	edx, 1
	mov	rdi, r15
	mov	rsi, rbp
	call	fwrite_unlocked
	cmp	rax, 1
	mov	rbp, r15
	je	.label_119
	call	io_error
.label_130:
	mov	byte ptr [rbp], 0xa
	inc	rbp
	sub	rbp, r15
	mov	rcx, qword ptr [rip + stdout]
	mov	edx, 1
	mov	rdi, r15
	mov	rsi, rbp
	call	fwrite_unlocked
	mov	bl, 1
	cmp	rax, 1
	mov	rbp, qword ptr [rsp + 0x10]
	jne	.label_136
.label_125:
	mov	rdi, qword ptr [rsp + 0x20]
	call	free
	mov	rdi, rbp
	call	free
	mov	eax, ebx
	add	rsp, 0x38
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_132:
	cmp	rbp, r13
	jae	.label_124
	xor	ebx, ebx
	mov	rbp, qword ptr [rsp + 0x10]
	jmp	.label_125
.label_124:
	mov	rdi, rbx
	mov	rsi, qword ptr [rsp + 0x18]
	call	strcmp
	test	eax, eax
	mov	rbp, qword ptr [rsp + 0x10]
	jle	.label_129
	xor	ebx, ebx
	jmp	.label_125
.label_129:
	mov	rdi, qword ptr [rsp + 8]
	jmp	.label_126
.label_136:
	call	io_error
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x402860

	.globl scan_arg
	.type scan_arg, @function
scan_arg:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x38
	mov	rbx, rsi
	mov	r14, rdi
	lea	rdx, [rsp + 0x10]
	xor	esi, esi
	mov	ecx, OFFSET FLAT:cl_strtold
	mov	rdi, rbx
	call	xstrtold
	test	al, al
	je	.label_141
	fld	xword ptr [rsp + 0x10]
	fld	st(0)
	fstp	xword ptr [rsp]
	fucomip	st(0)
	jp	.label_156
	call	__ctype_b_loc
	mov	rax, qword ptr [rax]
	dec	rbx
	nop	dword ptr [rax]
.label_149:
	movzx	edx, byte ptr [rbx + 1]
	inc	rbx
	movzx	ecx, word ptr [rax + rdx*2]
	and	ecx, 0x2000
	cmp	rdx, 0x2b
	je	.label_149
	test	cx, cx
	jne	.label_149
	mov	qword ptr [rsp + 0x20], 0
	mov	dword ptr [rsp + 0x28], 0x7fffffff
	mov	esi, 0x2e
	mov	rdi, rbx
	call	strchr
	mov	r15, rax
	test	r15, r15
	jne	.label_158
	mov	esi, 0x70
	mov	rdi, rbx
	call	strchr
	test	rax, rax
	jne	.label_158
	mov	dword ptr [rsp + 0x28], 0
.label_158:
	mov	rax, rbx
	nop	
.label_144:
	movsx	ecx, byte ptr [rax]
	test	ecx, ecx
	je	.label_142
	inc	rax
	or	ecx, 0x20
	cmp	ecx, 0x78
	jne	.label_144
	jmp	.label_147
.label_142:
	fldz	
	fld	xword ptr [rsp]
	fmul	st(1)
	fucomip	st(1)
	fstp	st(0)
	jne	.label_147
	jp	.label_147
	mov	rdi, rbx
	call	strlen
	mov	qword ptr [rsp + 0x20], rax
	xor	ebp, ebp
	test	r15, r15
	je	.label_152
	xor	ecx, ecx
	nop	word ptr cs:[rax + rax]
.label_160:
	mov	rbp, rcx
	movsx	edx, byte ptr [r15 + rbp + 1]
	test	edx, edx
	je	.label_155
	lea	rcx, [rbp + 1]
	or	edx, 0x20
	cmp	edx, 0x65
	jne	.label_160
.label_155:
	cmp	rbp, 0x7fffffff
	ja	.label_162
	mov	dword ptr [rsp + 0x28], ebp
	mov	rcx, -1
	test	rbp, rbp
	je	.label_140
.label_162:
	mov	cl, 1
	cmp	r15, rbx
	je	.label_143
	movsx	ecx, byte ptr [r15 - 1]
	add	ecx, -0x30
	cmp	ecx, 9
	seta	cl
.label_143:
	movzx	ecx, cl
.label_140:
	add	rax, rcx
	mov	qword ptr [rsp + 0x20], rax
.label_152:
	mov	esi, 0x65
	mov	rdi, rbx
	call	strchr
	mov	r13, rax
	test	r13, r13
	jne	.label_151
	mov	esi, 0x45
	mov	rdi, rbx
	call	strchr
	mov	r13, rax
	test	r13, r13
	je	.label_147
.label_151:
	mov	qword ptr [rsp], r14
	lea	rdi, [r13 + 1]
	xor	esi, esi
	mov	edx, 0xa
	call	strtol
	mov	r12, rax
	test	r12, r12
	movsxd	r14, dword ptr [rsp + 0x28]
	js	.label_161
	cmp	r14, r12
	mov	rax, r12
	cmovle	rax, r14
.label_161:
	sub	r14d, eax
	mov	dword ptr [rsp + 0x28], r14d
	mov	rdi, rbx
	call	strlen
	mov	rcx, r13
	sub	rcx, rbx
	sub	rcx, rax
	add	rcx, qword ptr [rsp + 0x20]
	mov	qword ptr [rsp + 0x20], rcx
	test	r12, r12
	js	.label_145
	test	r15, r15
	je	.label_150
	test	rbp, rbp
	je	.label_150
	test	r14d, r14d
	jne	.label_150
	dec	rcx
	mov	qword ptr [rsp + 0x20], rcx
.label_150:
	mov	r14, qword ptr [rsp]
	cmp	rbp, r12
	cmovae	rbp, r12
	sub	r12, rbp
	jmp	.label_153
.label_145:
	test	r15, r15
	mov	r14, qword ptr [rsp]
	je	.label_146
	inc	r15
	cmp	r13, r15
	jne	.label_157
.label_146:
	inc	rcx
	mov	qword ptr [rsp + 0x20], rcx
.label_157:
	neg	r12
.label_153:
	add	rcx, r12
	mov	qword ptr [rsp + 0x20], rcx
.label_147:
	movaps	xmm0, xmmword ptr [rsp + 0x10]
	movaps	xmm1, xmmword ptr [rsp + 0x20]
	movaps	xmmword ptr [r14 + 0x10], xmm1
	movaps	xmmword ptr [r14], xmm0
	mov	rax, r14
	add	rsp, 0x38
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_141:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_148
	mov	edx, 5
	call	dcgettext
	mov	r14, rax
	mov	rdi, rbx
	call	quote
	mov	rcx, rax
	xor	edi, edi
	xor	esi, esi
	xor	eax, eax
	mov	rdx, r14
	call	error
	mov	edi, 1
	call	usage
.label_156:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_154
	mov	edx, 5
	call	dcgettext
	mov	r14, rax
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_159
	call	quote_n
	mov	r15, rax
	mov	edi, 1
	mov	rsi, rbx
	call	quote_n
	mov	rbx, rax
	xor	edi, edi
	xor	esi, esi
	xor	eax, eax
	mov	rdx, r14
	mov	rcx, r15
	mov	r8, rbx
	call	error
	mov	edi, 1
	call	usage
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x402b30

	.globl io_error
	.type io_error, @function
io_error:
	push	rbx
	mov	rdi, qword ptr [rip + stdout]
	call	clearerr_unlocked
	call	__errno_location
	mov	ebx, dword ptr [rax]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_163
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	mov	edi, 1
	xor	eax, eax
	mov	esi, ebx
	mov	rdx, rcx
	call	error
	nop	dword ptr [rax]
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x402b70

	.globl cl_strtold
	.type cl_strtold, @function
cl_strtold:
	push	rbp
	push	r15
	push	r14
	push	r12
	push	rbx
	sub	rsp, 0x20
	mov	r14, rsi
	mov	rbx, rdi
	lea	rsi, [rsp]
	call	strtold
	mov	r12, qword ptr [rsp]
	cmp	byte ptr [r12], 0
	je	.label_165
	fstp	xword ptr [rsp + 0x14]
	call	__errno_location
	mov	r15, rax
	mov	ebp, dword ptr [r15]
	lea	rsi, [rsp + 8]
	mov	rdi, rbx
	call	c_strtold
	mov	rax, qword ptr [rsp + 8]
	cmp	r12, rax
	jae	.label_164
	mov	qword ptr [rsp], rax
	mov	r12, rax
	jmp	.label_165
.label_164:
	fstp	st(0)
	mov	dword ptr [r15], ebp
	fld	xword ptr [rsp + 0x14]
.label_165:
	test	r14, r14
	je	.label_166
	mov	qword ptr [r14], r12
.label_166:
	add	rsp, 0x20
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	pop	rbp
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x402bf0
	.globl close_stdout_set_file_name
	.type close_stdout_set_file_name, @function
close_stdout_set_file_name:

	mov	qword ptr [rip + file_name],  rdi
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x402c00
	.globl close_stdout_set_ignore_EPIPE
	.type close_stdout_set_ignore_EPIPE, @function
close_stdout_set_ignore_EPIPE:

	mov	byte ptr [rip + ignore_EPIPE],  dil
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x402c10

	.globl close_stdout
	.type close_stdout, @function
close_stdout:
	push	rbp
	push	rbx
	push	rax
	mov	rdi, qword ptr [rip + stdout]
	call	close_stream
	test	eax, eax
	je	.label_172
	mov	bl, byte ptr [rip + ignore_EPIPE]
	call	__errno_location
	mov	rbp, rax
	cmp	bl, 0
	je	.label_170
	cmp	dword ptr [rbp], 0x20
	jne	.label_170
.label_172:
	mov	rdi, qword ptr [rip + stderr]
	call	close_stream
	test	eax, eax
	jne	.label_169
	add	rsp, 8
	pop	rbx
	pop	rbp
	ret	
.label_170:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_163
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
	mov	rdi, qword ptr [rip + file_name]
	test	rdi, rdi
	mov	ebp, dword ptr [rbp]
	jne	.label_167
	xor	edi, edi
	mov	edx, OFFSET FLAT:label_168
	xor	eax, eax
	mov	esi, ebp
	mov	rcx, rbx
	call	error
	mov	edi, dword ptr [rip + exit_failure]
	call	_exit
.label_169:
	mov	edi, dword ptr [rip + exit_failure]
	call	_exit
.label_167:
	call	quotearg_colon
	mov	rcx, rax
	xor	edi, edi
	mov	edx, OFFSET FLAT:label_171
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
	#Procedure 0x402cd0

	.globl set_program_name
	.type set_program_name, @function
set_program_name:
	push	r14
	push	rbx
	push	rax
	mov	rbx, rdi
	test	rbx, rbx
	je	.label_176
	mov	esi, 0x2f
	mov	rdi, rbx
	call	strrchr
	test	rax, rax
	lea	r14, [rax + 1]
	cmove	r14, rbx
	mov	rax, r14
	sub	rax, rbx
	cmp	rax, 7
	jl	.label_178
	lea	rdi, [r14 - 7]
	mov	esi, OFFSET FLAT:label_173
	mov	edx, 7
	call	strncmp
	test	eax, eax
	jne	.label_178
	mov	esi, OFFSET FLAT:label_175
	mov	edx, 3
	mov	rdi, r14
	call	strncmp
	test	eax, eax
	jne	.label_174
	add	r14, 3
	mov	qword ptr [rip + __progname],  r14
.label_174:
	mov	rbx, r14
.label_178:
	mov	qword ptr [rip + program_name],  rbx
	mov	qword ptr [rip + __progname_full],  rbx
	add	rsp, 8
	pop	rbx
	pop	r14
	ret	
.label_176:
	mov	rcx, qword ptr [rip + stderr]
	mov	edi, OFFSET FLAT:label_177
	mov	esi, 0x37
	mov	edx, 1
	call	fwrite
	call	abort
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x402d80
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
	#Procedure 0x402dc0
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
	#Procedure 0x402dd0
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
	#Procedure 0x402de0
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
	#Procedure 0x402e20
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
	#Procedure 0x402e40
	.globl set_custom_quoting
	.type set_custom_quoting, @function
set_custom_quoting:

	test	rdi, rdi
	mov	eax, OFFSET FLAT:default_quoting_options
	cmovne	rax, rdi
	mov	dword ptr [rax], 0xa
	test	rsi, rsi
	je	.label_179
	test	rdx, rdx
	je	.label_179
	mov	qword ptr [rax + 0x28], rsi
	mov	qword ptr [rax + 0x30], rdx
	ret	
.label_179:
	push	rax
	call	abort
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x402e70
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
	#Procedure 0x402ef0

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
.label_283:
	mov	r11, rbp
	xor	r14d, r14d
	mov	ecx, r15d
	cmp	r15d, 0xa
	ja	.label_281
	mov	edi, 7
	mov	r13b, 1
	xor	esi, esi
	mov	r8, qword ptr [rsp + 0x30]
	jmp	qword ptr [(rcx * 8) + label_285]
.label_487:
	mov	byte ptr [rsp + 7], r10b
	mov	edi, OFFSET FLAT:label_289
	mov	esi, r15d
	mov	rbx, r11
	mov	ebp, r9d
	call	gettext_quote
	mov	qword ptr [rsp + 0x78], rax
	mov	edi, OFFSET FLAT:label_225
	mov	esi, r15d
	call	gettext_quote
	mov	r9d, ebp
	mov	r10b, byte ptr [rsp + 7]
	mov	r11, rbx
	mov	qword ptr [rsp + 0x70], rax
.label_488:
	mov	dword ptr [rsp + 0x50], r9d
	mov	byte ptr [rsp + 7], r10b
	test	r12b, 1
	mov	r14d, 0
	mov	rcx, qword ptr [rsp + 0x78]
	jne	.label_187
	mov	al, byte ptr [rcx]
	test	al, al
	mov	r14d, 0
	je	.label_187
	xor	r14d, r14d
	nop	word ptr cs:[rax + rax]
.label_197:
	cmp	r14, r11
	jae	.label_195
	mov	rdx, qword ptr [rsp + 8]
	mov	byte ptr [rdx + r14], al
.label_195:
	movzx	eax, byte ptr [rcx + r14 + 1]
	inc	r14
	test	al, al
	jne	.label_197
.label_187:
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
	jmp	.label_205
.label_480:
	xor	edi, edi
	xor	r14d, r14d
	mov	r13d, eax
	xor	esi, esi
	jmp	.label_205
.label_483:
	mov	al, 1
.label_481:
	mov	r12b, 1
.label_484:
	test	r12b, 1
	mov	cl, 1
	je	.label_216
	mov	ecx, eax
.label_216:
	mov	al, cl
.label_482:
	test	r12b, 1
	jne	.label_219
	test	r11, r11
	je	.label_221
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx], 0x27
.label_221:
	mov	r14d, 1
	jmp	.label_203
.label_219:
	xor	r14d, r14d
.label_203:
	mov	ecx, OFFSET FLAT:label_225
	mov	qword ptr [rsp + 0x48], rcx
	mov	ecx, 1
	mov	qword ptr [rsp + 0x40], rcx
	mov	r13d, eax
	mov	sil, r12b
	mov	edi, 2
	jmp	.label_205
.label_485:
	test	r12b, 1
	jne	.label_233
	test	r11, r11
	je	.label_236
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax], 0x22
.label_236:
	mov	r14d, 1
	jmp	.label_239
.label_486:
	mov	r13b, 1
	mov	edi, 5
	xor	r14d, r14d
	mov	eax, OFFSET FLAT:label_241
	mov	qword ptr [rsp + 0x48], rax
	mov	eax, 1
	mov	qword ptr [rsp + 0x40], rax
	mov	sil, 1
	jmp	.label_205
.label_233:
	xor	r14d, r14d
.label_239:
	mov	eax, OFFSET FLAT:label_241
	mov	qword ptr [rsp + 0x48], rax
	mov	eax, 1
	mov	qword ptr [rsp + 0x40], rax
	mov	r13b, 1
	mov	sil, r12b
	mov	edi, 5
	nop	word ptr cs:[rax + rax]
.label_205:
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
	jmp	.label_260
	nop	dword ptr [rax]
.label_198:
	inc	rsi
.label_260:
	cmp	rbp, -1
	je	.label_296
	cmp	rsi, rbp
	jne	.label_297
	jmp	.label_298
	nop	word ptr cs:[rax + rax]
.label_296:
	mov	rcx, -1
	cmp	byte ptr [rdi + rsi], 0
	je	.label_180
.label_297:
	cmp	byte ptr [rsp + 0x2f], 0
	je	.label_185
	mov	rax, qword ptr [rsp + 0x40]
	lea	rbx, [rsi + rax]
	cmp	rax, 2
	jb	.label_189
	cmp	rbp, -1
	jne	.label_189
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
.label_189:
	cmp	rbx, rbp
	jbe	.label_206
.label_185:
	xor	r8d, r8d
.label_240:
	movzx	r15d, byte ptr [rdi + rsi]
	cmp	r15, 0x7e
	ja	.label_207
	xor	edx, edx
	mov	r13b, 1
	mov	cl, 0x6e
	mov	bl, 0x61
	xor	eax, eax
	jmp	qword ptr [(r15 * 8) + label_211]
.label_497:
	test	rsi, rsi
	jne	.label_201
	jmp	.label_215
	nop	word ptr cs:[rax + rax]
.label_206:
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
	jne	.label_226
	cmp	byte ptr [rsp + 6], 0
	mov	rdi, qword ptr [rsp + 0x30]
	mov	r11, rbx
	mov	r10d, r15d
	mov	rax, qword ptr [rsp + 0x38]
	mov	r9d, ebp
	mov	rsi, r12
	mov	r12, rax
	mov	rbp, qword ptr [rsp + 0x20]
	je	.label_240
	jmp	.label_238
.label_226:
	mov	rdi, qword ptr [rsp + 0x30]
	mov	r11, rbx
	mov	r10d, r15d
	mov	rax, qword ptr [rsp + 0x38]
	mov	r9d, ebp
	mov	rsi, r12
	mov	r12, rax
	mov	rbp, qword ptr [rsp + 0x20]
	jmp	.label_240
.label_501:
	xor	eax, eax
	cmp	rbp, -1
	je	.label_247
	test	rsi, rsi
	jne	.label_248
	cmp	rbp, 1
	je	.label_215
	xor	r13d, r13d
	jmp	.label_181
.label_490:
	cmp	byte ptr [rsp + 0x17], 0
	je	.label_256
	cmp	byte ptr [rsp + 6], 0
	jne	.label_259
	cmp	r12d, 2
	jne	.label_263
	mov	eax, r9d
	and	al, 1
	jne	.label_263
	cmp	r14, r11
	jae	.label_268
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], 0x27
.label_268:
	lea	rax, [r14 + 1]
	cmp	rax, r11
	jae	.label_272
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + rax], 0x24
.label_272:
	lea	rax, [r14 + 2]
	cmp	rax, r11
	jae	.label_251
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + rax], 0x27
.label_251:
	add	r14, 3
	mov	r9b, 1
.label_263:
	mov	rcx, r14
	cmp	rcx, r11
	jae	.label_284
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + rcx], 0x5c
.label_284:
	lea	r14, [rcx + 1]
	mov	al, 1
	mov	r15b, 0x30
	cmp	r12d, 2
	je	.label_287
	lea	rdx, [rsi + 1]
	cmp	rdx, rbp
	jae	.label_287
	mov	dl, byte ptr [rdi + rdx]
	add	dl, 0xd0
	cmp	dl, 9
	ja	.label_287
	cmp	r14, r11
	jae	.label_257
	mov	rdx, qword ptr [rsp + 8]
	mov	byte ptr [rdx + r14], 0x30
.label_257:
	lea	rdx, [rcx + 2]
	cmp	rdx, r11
	jae	.label_235
	mov	rbx, qword ptr [rsp + 8]
	mov	byte ptr [rbx + rdx], 0x30
.label_235:
	add	rcx, 3
	xor	r13d, r13d
	mov	r14, rcx
	jmp	.label_181
.label_491:
	mov	bl, 0x62
	jmp	.label_191
.label_492:
	mov	cl, 0x74
	jmp	.label_192
.label_493:
	mov	bl, 0x76
	jmp	.label_191
.label_494:
	mov	bl, 0x66
	jmp	.label_191
.label_495:
	mov	cl, 0x72
	jmp	.label_192
.label_498:
	mov	r15b, 0x27
	mov	al, 1
	mov	qword ptr [rsp + 0xa0], rax
	cmp	r12d, 2
	jne	.label_196
	cmp	byte ptr [rsp + 6], 0
	jne	.label_199
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
	jae	.label_204
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], 0x27
.label_204:
	lea	rax, [r14 + 1]
	cmp	rax, r11
	jae	.label_214
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + rax], 0x5c
.label_214:
	lea	rax, [r14 + 2]
	cmp	rax, r11
	jae	.label_217
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + rax], 0x27
.label_217:
	add	r14, 3
	xor	r9d, r9d
.label_196:
	xor	eax, eax
	mov	r13b, 1
	jmp	.label_181
.label_499:
	mov	r15b, 0x3f
	cmp	r12d, 5
	je	.label_223
	cmp	r12d, 2
	jne	.label_201
	cmp	byte ptr [rsp + 6], 0
	je	.label_201
	jmp	.label_199
.label_500:
	cmp	r12d, 2
	jne	.label_234
	cmp	byte ptr [rsp + 6], 0
	jne	.label_199
	mov	r15b, 0x5c
	xor	eax, eax
	xor	r13d, r13d
	jmp	.label_186
.label_207:
	mov	dword ptr [rsp + 0x54], r8d
	mov	dword ptr [rsp + 0x50], r9d
	mov	byte ptr [rsp + 7], r10b
	mov	qword ptr [rsp + 0x98], r11
	cmp	qword ptr [rsp + 0xa8], 1
	jne	.label_244
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
.label_194:
	and	r13b, 1
	mov	r8d, r13d
	or	r8b, byte ptr [rsp + 0x2a]
	mov	qword ptr [rsp + 0x60], r12
	cmp	r12, 1
	mov	r11, qword ptr [rsp + 0x98]
	mov	r10b, byte ptr [rsp + 7]
	mov	r12, qword ptr [rsp + 0x38]
	mov	r9d, dword ptr [rsp + 0x50]
	ja	.label_262
	test	r8b, r8b
	je	.label_262
	xor	eax, eax
	mov	rbp, qword ptr [rsp + 0x20]
	mov	r8d, dword ptr [rsp + 0x54]
	jmp	.label_181
.label_247:
	test	rsi, rsi
	jne	.label_232
	mov	cl, byte ptr [rdi + 1]
	test	cl, cl
	jne	.label_232
.label_215:
	mov	dl, 1
.label_496:
	cmp	byte ptr [rsp + 0x1f], 0
	je	.label_199
	xor	eax, eax
	mov	r13b, dl
	nop	word ptr [rax + rax]
.label_181:
	cmp	byte ptr [rsp + 0x2e], 0
	je	.label_290
	cmp	qword ptr [rsp + 0xf0], 0
	jne	.label_292
	jmp	.label_291
	nop	word ptr cs:[rax + rax]
.label_290:
	cmp	byte ptr [rsp + 0x2d], 0
	je	.label_291
.label_292:
	mov	ebx, r8d
	mov	r8, rsi
	mov	ecx, r15d
	shr	cl, 5
	movzx	edx, cl
	mov	esi, 1
	mov	ecx, r15d
	shl	esi, cl
	test	bl, bl
	jne	.label_300
	mov	rcx, qword ptr [rsp + 0xf0]
	and	esi, dword ptr [rcx + rdx*4]
	mov	ebx, r15d
	mov	rsi, r8
	je	.label_186
	jmp	.label_193
	nop	dword ptr [rax]
.label_291:
	test	r8b, r8b
	mov	ebx, r15d
	jne	.label_193
	jmp	.label_186
.label_300:
	mov	ebx, r15d
	mov	rsi, r8
	jmp	.label_193
.label_256:
	cmp	dword ptr [rsp + 0x90], 0
	jne	.label_198
	xor	r15d, r15d
	jmp	.label_201
.label_234:
	mov	cl, 0x5c
	cmp	byte ptr [rsp + 0x29], 0
	je	.label_192
	xor	eax, eax
	mov	r15b, 0x5c
	xor	r13d, r13d
	jmp	.label_186
.label_192:
	cmp	byte ptr [rsp + 0x1f], 0
	mov	ebx, ecx
	je	.label_199
.label_191:
	xor	eax, eax
	cmp	byte ptr [rsp + 0x17], 0
	mov	r13d, 0
	je	.label_181
	nop	word ptr cs:[rax + rax]
.label_193:
	cmp	byte ptr [rsp + 6], 0
	jne	.label_259
	cmp	r12d, 2
	jne	.label_182
	mov	eax, r9d
	and	al, 1
	jne	.label_182
	cmp	r14, r11
	jae	.label_258
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], 0x27
.label_258:
	lea	rax, [r14 + 1]
	cmp	rax, r11
	jae	.label_227
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + rax], 0x24
.label_227:
	lea	rax, [r14 + 2]
	cmp	rax, r11
	jae	.label_246
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + rax], 0x27
.label_246:
	add	r14, 3
	mov	r9b, 1
.label_182:
	cmp	r14, r11
	jae	.label_237
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], 0x5c
.label_237:
	inc	r14
	jmp	.label_242
.label_244:
	mov	qword ptr [rsp + 0x80], 0
	cmp	rbp, -1
	jne	.label_245
	mov	rbx, rsi
	call	strlen
	mov	rsi, rbx
	mov	rdi, qword ptr [rsp + 0x30]
	mov	rbp, rax
.label_245:
	lea	rax, [rdi + rsi]
	mov	qword ptr [rsp + 0x60], rax
	mov	r13b, 1
	xor	r12d, r12d
	lea	rax, [rsp + 0x80]
	mov	rcx, rax
	mov	qword ptr [rsp + 0x20], rbp
	mov	qword ptr [rsp + 0x58], rsi
.label_212:
	lea	rbx, [r12 + rsi]
	lea	rsi, [rdi + rbx]
	mov	rdx, rbp
	sub	rdx, rbx
	lea	rdi, [rsp + 0x94]
	call	rpl_mbrtowc
	mov	rbp, rax
	test	rbp, rbp
	je	.label_271
	cmp	rbp, -1
	movabs	rsi, 0x20000002b
	je	.label_275
	cmp	rbp, -2
	je	.label_280
	cmp	rbp, 1
	seta	al
	and	al, byte ptr [rsp + 0x2b]
	cmp	al, 1
	mov	rdi, qword ptr [rsp + 0x30]
	mov	r11, qword ptr [rsp + 0x98]
	jne	.label_278
	mov	rax, qword ptr [rsp + 0x60]
	lea	rax, [rax + r12]
	mov	ecx, 1
	nop	word ptr cs:[rax + rax]
.label_266:
	movsx	edx, byte ptr [rax + rcx]
	add	edx, -0x5b
	cmp	edx, 0x21
	ja	.label_231
	bt	rsi, rdx
	jb	.label_294
.label_231:
	inc	rcx
	cmp	rcx, rbp
	jb	.label_266
.label_278:
	mov	edi, dword ptr [rsp + 0x94]
	call	iswprint
	test	eax, eax
	jne	.label_265
	xor	r13d, r13d
.label_265:
	lea	rdi, [rsp + 0x80]
	add	r12, rbp
	mov	rbx, rdi
	call	mbsinit
	mov	rcx, rbx
	test	eax, eax
	mov	rdi, qword ptr [rsp + 0x30]
	mov	rbp, qword ptr [rsp + 0x20]
	mov	rsi, qword ptr [rsp + 0x58]
	je	.label_212
	jmp	.label_194
.label_287:
	xor	r13d, r13d
	jmp	.label_181
.label_232:
	mov	rbp, -1
	xor	r13d, r13d
	jmp	.label_181
.label_223:
	cmp	dword ptr [rsp + 0x8c], 0
	je	.label_201
	lea	rcx, [rsi + 2]
	cmp	rcx, rbp
	jae	.label_201
	cmp	byte ptr [rdi + rsi + 1], 0x3f
	jne	.label_201
	movsx	edx, byte ptr [rdi + rcx]
	xor	eax, eax
	cmp	edx, 0x3e
	ja	.label_218
	mov	rbx, rsi
	movabs	rsi, 0x7000a38200000000
	bt	rsi, rdx
	jae	.label_267
	cmp	byte ptr [rsp + 6], 0
	jne	.label_276
	cmp	r14, r11
	jae	.label_220
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], 0x3f
.label_220:
	lea	rax, [r14 + 1]
	cmp	rax, r11
	jae	.label_209
	mov	rsi, qword ptr [rsp + 8]
	mov	byte ptr [rsi + rax], 0x22
.label_209:
	lea	rax, [r14 + 2]
	cmp	rax, r11
	jae	.label_224
	mov	rsi, qword ptr [rsp + 8]
	mov	byte ptr [rsi + rax], 0x22
.label_224:
	lea	rax, [r14 + 3]
	cmp	rax, r11
	jae	.label_208
	mov	rsi, qword ptr [rsp + 8]
	mov	byte ptr [rsi + rax], 0x3f
.label_208:
	add	r14, 4
	xor	eax, eax
	mov	rsi, rcx
	mov	r15b, dl
	xor	r13d, r13d
	jmp	.label_181
.label_201:
	xor	eax, eax
.label_248:
	xor	r13d, r13d
	jmp	.label_181
.label_262:
	add	qword ptr [rsp + 0x60], rsi
	xor	eax, eax
	mov	rbp, qword ptr [rsp + 0x20]
	jmp	.label_243
	nop	word ptr cs:[rax + rax]
.label_202:
	inc	r14
	mov	r15b, byte ptr [rdi + rsi + 1]
	mov	rsi, rdx
.label_243:
	test	r8b, r8b
	je	.label_249
	mov	ecx, dword ptr [rsp + 0x54]
	test	cl, 1
	je	.label_250
	cmp	r14, r11
	jae	.label_253
	mov	rdx, qword ptr [rsp + 8]
	mov	byte ptr [rdx + r14], 0x5c
.label_253:
	inc	r14
	mov	dword ptr [rsp + 0x54], 0
	jmp	.label_250
	nop	dword ptr [rax]
.label_249:
	cmp	byte ptr [rsp + 6], 0
	jne	.label_238
	cmp	r12d, 2
	jne	.label_270
	mov	eax, r9d
	and	al, 1
	jne	.label_270
	cmp	r14, r11
	jae	.label_274
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], 0x27
.label_274:
	lea	rax, [r14 + 1]
	cmp	rax, r11
	jae	.label_277
	mov	rdx, qword ptr [rsp + 8]
	mov	byte ptr [rdx + rax], 0x24
.label_277:
	lea	rax, [r14 + 2]
	cmp	rax, r11
	jae	.label_282
	mov	rdx, qword ptr [rsp + 8]
	mov	byte ptr [rdx + rax], 0x27
.label_282:
	add	r14, 3
	mov	r9b, 1
.label_270:
	cmp	r14, r11
	jae	.label_222
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], 0x5c
.label_222:
	lea	rax, [r14 + 1]
	cmp	rax, r11
	jae	.label_200
	mov	edx, r15d
	shr	dl, 6
	or	dl, 0x30
	mov	rbx, qword ptr [rsp + 8]
	mov	byte ptr [rbx + rax], dl
.label_200:
	lea	rax, [r14 + 2]
	cmp	rax, r11
	jae	.label_293
	mov	edx, r15d
	shr	dl, 3
	and	dl, 7
	or	dl, 0x30
	mov	rbx, qword ptr [rsp + 8]
	mov	byte ptr [rbx + rax], dl
.label_293:
	add	r14, 3
	and	r15b, 7
	or	r15b, 0x30
	mov	al, 1
.label_250:
	lea	rdx, [rsi + 1]
	cmp	qword ptr [rsp + 0x60], rdx
	jbe	.label_186
	test	r9b, 1
	je	.label_188
	mov	ebx, eax
	and	bl, 1
	jne	.label_188
	mov	rbx, rsi
	cmp	r14, r11
	jae	.label_190
	mov	rsi, qword ptr [rsp + 8]
	mov	byte ptr [rsi + r14], 0x27
.label_190:
	lea	rsi, [r14 + 1]
	cmp	rsi, r11
	jae	.label_273
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + rsi], 0x27
.label_273:
	add	r14, 2
	xor	r9d, r9d
	mov	rsi, rbx
.label_188:
	cmp	r14, r11
	jae	.label_202
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + r14], r15b
	jmp	.label_202
	nop	word ptr cs:[rax + rax]
.label_186:
	test	r9b, 1
	je	.label_210
	and	al, 1
	jne	.label_210
	cmp	r14, r11
	jae	.label_213
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], 0x27
.label_213:
	lea	rax, [r14 + 1]
	cmp	rax, r11
	jae	.label_252
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + rax], 0x27
.label_252:
	add	r14, 2
	xor	r9d, r9d
.label_210:
	mov	ebx, r15d
.label_242:
	cmp	r14, r11
	jae	.label_295
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], bl
.label_295:
	inc	r14
	shl	r13b, 7
	sar	r13b, 7
	and	r13b, r10b
	mov	r10d, r13d
	jmp	.label_198
.label_275:
	xor	r13d, r13d
.label_271:
	mov	rdi, qword ptr [rsp + 0x30]
	mov	rsi, qword ptr [rsp + 0x58]
	jmp	.label_194
.label_280:
	mov	rbp, qword ptr [rsp + 0x20]
	cmp	rbp, rbx
	mov	rdi, qword ptr [rsp + 0x30]
	jbe	.label_230
	mov	rsi, qword ptr [rsp + 0x58]
.label_286:
	mov	rax, qword ptr [rsp + 0x60]
	cmp	byte ptr [rax + r12], 0
	je	.label_269
	lea	rax, [rsi + r12 + 1]
	inc	r12
	cmp	rax, rbp
	jb	.label_286
	xor	r13d, r13d
	jmp	.label_194
.label_230:
	xor	r13d, r13d
	mov	rsi, qword ptr [rsp + 0x58]
	jmp	.label_194
.label_269:
	xor	r13d, r13d
	jmp	.label_194
.label_218:
	xor	r13d, r13d
	jmp	.label_181
.label_267:
	xor	r13d, r13d
	mov	rsi, rbx
	jmp	.label_181
	nop	dword ptr [rax + rax]
.label_298:
	mov	rcx, rsi
.label_180:
	cmp	r12d, 2
	setne	al
	test	r14, r14
	setne	dl
	cmp	byte ptr [rsp + 6], 0
	je	.label_255
	or	al, dl
	je	.label_261
.label_255:
	cmp	r12d, 2
	setne	al
	cmp	byte ptr [rsp + 6], 0
	setne	dl
	mov	rsi, qword ptr [rsp + 0xa0]
	test	sil, 1
	mov	bl, byte ptr [rsp + 0x2c]
	mov	rsi, qword ptr [rsp + 0xb0]
	je	.label_264
	or	al, dl
	jne	.label_264
	test	r10b, 1
	jne	.label_279
	cmp	qword ptr [rsp + 0x68], 0
	je	.label_264
	test	r11, r11
	mov	r15d, r12d
	mov	al, bl
	mov	qword ptr [rsp + 0x20], rcx
	mov	r12d, esi
	mov	rbp, qword ptr [rsp + 0x68]
	je	.label_283
.label_264:
	mov	rdx, qword ptr [rsp + 0x48]
	test	rdx, rdx
	je	.label_288
	cmp	byte ptr [rsp + 6], 0
	mov	rcx, qword ptr [rsp + 8]
	jne	.label_183
	mov	al, byte ptr [rdx]
	test	al, al
	je	.label_183
	inc	rdx
	nop	word ptr cs:[rax + rax]
.label_301:
	cmp	r14, r11
	jae	.label_299
	mov	byte ptr [rcx + r14], al
.label_299:
	inc	r14
	movzx	eax, byte ptr [rdx]
	inc	rdx
	test	al, al
	jne	.label_301
	jmp	.label_183
.label_259:
	mov	qword ptr [rsp + 0x20], rbp
.label_238:
	mov	rdx, rdi
	jmp	.label_184
.label_199:
	mov	qword ptr [rsp + 0x20], rbp
.label_294:
	mov	rdx, rdi
	mov	eax, 2
.label_254:
	mov	qword ptr [rsp + 0x38], rax
.label_184:
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
.label_228:
	mov	r14, rax
.label_229:
	mov	rax, r14
	add	rsp, 0xb8
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_261:
	mov	rdx, rdi
	mov	qword ptr [rsp + 0x20], rcx
	jmp	.label_184
.label_279:
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
	jmp	.label_228
.label_288:
	mov	rcx, qword ptr [rsp + 8]
.label_183:
	cmp	r14, r11
	jae	.label_229
	mov	byte ptr [rcx + r14], 0
	jmp	.label_229
.label_276:
	mov	qword ptr [rsp + 0x20], rbp
	mov	rdx, rdi
	mov	eax, 5
	jmp	.label_254
.label_281:
	call	abort
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x403d00
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
	#Procedure 0x403dd0
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
	je	.label_302
	mov	qword ptr [rax], rbx
.label_302:
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
	#Procedure 0x403ec0
	.globl quotearg_free
	.type quotearg_free, @function
quotearg_free:

	push	r15
	push	r14
	push	rbx
	mov	r14, qword ptr [rip + slotvec]
	cmp	dword ptr [rip + nslots],  2
	jl	.label_303
	lea	r15, [r14 + 0x18]
	mov	ebx, 1
	nop	
.label_306:
	mov	rdi, qword ptr [r15]
	call	free
	inc	rbx
	movsxd	rax, dword ptr [rip + nslots]
	add	r15, 0x10
	cmp	rbx, rax
	jl	.label_306
.label_303:
	mov	rdi, qword ptr [r14 + 8]
	mov	eax, OFFSET FLAT:slot0
	cmp	rdi, rax
	je	.label_307
	call	free
	mov	qword ptr [rip + slotvec0],  0x100
	mov	qword ptr [rip + label_304], OFFSET FLAT:slot0
.label_307:
	mov	eax, OFFSET FLAT:slotvec0
	cmp	r14, rax
	je	.label_305
	mov	rdi, r14
	call	free
	mov	qword ptr [rip + slotvec], OFFSET FLAT:slotvec0
.label_305:
	mov	dword ptr [rip + nslots],  1
	pop	rbx
	pop	r14
	pop	r15
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x403f60
	.globl quotearg_n
	.type quotearg_n, @function
quotearg_n:

	mov	rdx, -1
	mov	ecx, OFFSET FLAT:default_quoting_options
	jmp	quotearg_n_options
	nop	
	.section	.text
	.align	32
	#Procedure 0x403f70

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
	js	.label_311
	mov	eax, dword ptr [r13]
	mov	rbp, qword ptr [rip + slotvec]
	cmp	dword ptr [rip + nslots],  r12d
	mov	qword ptr [rsp + 0x18], r13
	mov	dword ptr [rsp], eax
	mov	qword ptr [rsp + 0x10], rbx
	mov	qword ptr [rsp + 8], r15
	jg	.label_314
	cmp	r12d, 0x7fffffff
	je	.label_309
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
	jne	.label_312
	movups	xmm0, xmmword ptr [rip + slotvec0]
	movups	xmmword ptr [r14], xmm0
.label_312:
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
.label_314:
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
	jbe	.label_310
	mov	rax, qword ptr [rsp + 0x18]
	mov	ebp, dword ptr [rsp]
	jmp	.label_313
.label_310:
	lea	rax, [rbp + r13]
	lea	r12, [rbp + r13 + 8]
	inc	r15
	mov	qword ptr [rax], r15
	mov	eax, OFFSET FLAT:slot0
	cmp	r14, rax
	mov	ebp, dword ptr [rsp]
	je	.label_308
	mov	rdi, r14
	call	free
.label_308:
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
.label_313:
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
.label_311:
	call	abort
.label_309:
	call	xalloc_die
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x404130
	.globl quotearg_n_mem
	.type quotearg_n_mem, @function
quotearg_n_mem:

	mov	ecx, OFFSET FLAT:default_quoting_options
	jmp	quotearg_n_options
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x404140
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
	#Procedure 0x404160
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
	#Procedure 0x404180
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
	je	.label_315
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
.label_315:
	call	abort
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x4041f0
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
	je	.label_316
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
.label_316:
	call	abort
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x404260
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
	je	.label_317
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
.label_317:
	call	abort
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4042d0
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
	je	.label_318
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
.label_318:
	call	abort
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x404340
	.globl quotearg_char_mem
	.type quotearg_char_mem, @function
quotearg_char_mem:

	sub	rsp, 0x38
	mov	ecx, edx
	mov	r8, rsi
	mov	rdx, rdi
	mov	rsi, qword ptr [rip + label_319]
	mov	qword ptr [rsp + 0x30], rsi
	movups	xmm0, xmmword ptr [rip + label_320]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0, xmmword ptr [rip + label_321]
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
	#Procedure 0x4043b0
	.globl quotearg_char
	.type quotearg_char, @function
quotearg_char:

	sub	rsp, 0x38
	mov	ecx, esi
	mov	rax, rdi
	mov	rdx, qword ptr [rip + label_319]
	mov	qword ptr [rsp + 0x30], rdx
	movups	xmm0, xmmword ptr [rip + label_320]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0, xmmword ptr [rip + label_321]
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
	#Procedure 0x404420

	.globl quotearg_colon
	.type quotearg_colon, @function
quotearg_colon:
	sub	rsp, 0x38
	mov	rax, rdi
	mov	rcx, qword ptr [rip + label_319]
	mov	qword ptr [rsp + 0x30], rcx
	movups	xmm0, xmmword ptr [rip + label_320]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0, xmmword ptr [rip + label_321]
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
	#Procedure 0x404480
	.globl quotearg_colon_mem
	.type quotearg_colon_mem, @function
quotearg_colon_mem:

	sub	rsp, 0x38
	mov	rax, rsi
	mov	rdx, rdi
	mov	rcx, qword ptr [rip + label_319]
	mov	qword ptr [rsp + 0x30], rcx
	movups	xmm0, xmmword ptr [rip + label_320]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0, xmmword ptr [rip + label_321]
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
	#Procedure 0x4044e0
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
	je	.label_322
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
.label_322:
	call	abort
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x404580
	.globl quotearg_n_custom
	.type quotearg_n_custom, @function
quotearg_n_custom:

	sub	rsp, 0x38
	mov	rax, qword ptr [rip + label_319]
	mov	qword ptr [rsp + 0x30], rax
	movups	xmm0, xmmword ptr [rip + label_320]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0, xmmword ptr [rip + label_321]
	movaps	xmmword ptr [rsp + 0x10], xmm0
	movups	xmm0, xmmword ptr [rip + default_quoting_options]
	movaps	xmmword ptr [rsp], xmm0
	mov	dword ptr [rsp], 0xa
	test	rsi, rsi
	je	.label_323
	test	rdx, rdx
	je	.label_323
	mov	qword ptr [rsp + 0x28], rsi
	mov	qword ptr [rsp + 0x30], rdx
	lea	rax, [rsp]
	mov	rdx, -1
	mov	rsi, rcx
	mov	rcx, rax
	call	quotearg_n_options
	add	rsp, 0x38
	ret	
.label_323:
	call	abort
	nop	
	.section	.text
	.align	32
	#Procedure 0x4045f0
	.globl quotearg_n_custom_mem
	.type quotearg_n_custom_mem, @function
quotearg_n_custom_mem:

	sub	rsp, 0x38
	mov	rax, qword ptr [rip + label_319]
	mov	qword ptr [rsp + 0x30], rax
	movups	xmm0, xmmword ptr [rip + label_320]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0, xmmword ptr [rip + label_321]
	movaps	xmmword ptr [rsp + 0x10], xmm0
	movups	xmm0, xmmword ptr [rip + default_quoting_options]
	movaps	xmmword ptr [rsp], xmm0
	mov	dword ptr [rsp], 0xa
	test	rsi, rsi
	je	.label_324
	test	rdx, rdx
	je	.label_324
	mov	qword ptr [rsp + 0x28], rsi
	mov	qword ptr [rsp + 0x30], rdx
	lea	rax, [rsp]
	mov	rsi, rcx
	mov	rdx, r8
	mov	rcx, rax
	call	quotearg_n_options
	add	rsp, 0x38
	ret	
.label_324:
	call	abort
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x404660
	.globl quotearg_custom
	.type quotearg_custom, @function
quotearg_custom:

	sub	rsp, 0x38
	mov	rax, rdx
	mov	rcx, qword ptr [rip + label_319]
	mov	qword ptr [rsp + 0x30], rcx
	movups	xmm0, xmmword ptr [rip + label_320]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0, xmmword ptr [rip + label_321]
	movaps	xmmword ptr [rsp + 0x10], xmm0
	movups	xmm0, xmmword ptr [rip + default_quoting_options]
	movaps	xmmword ptr [rsp], xmm0
	mov	dword ptr [rsp], 0xa
	test	rdi, rdi
	je	.label_325
	test	rsi, rsi
	je	.label_325
	mov	qword ptr [rsp + 0x28], rdi
	mov	qword ptr [rsp + 0x30], rsi
	lea	rcx, [rsp]
	xor	edi, edi
	mov	rdx, -1
	mov	rsi, rax
	call	quotearg_n_options
	add	rsp, 0x38
	ret	
.label_325:
	call	abort
	.section	.text
	.align	32
	#Procedure 0x4046d0
	.globl quotearg_custom_mem
	.type quotearg_custom_mem, @function
quotearg_custom_mem:

	sub	rsp, 0x38
	mov	rax, qword ptr [rip + label_319]
	mov	qword ptr [rsp + 0x30], rax
	movups	xmm0, xmmword ptr [rip + label_320]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0, xmmword ptr [rip + label_321]
	movaps	xmmword ptr [rsp + 0x10], xmm0
	movups	xmm0, xmmword ptr [rip + default_quoting_options]
	movaps	xmmword ptr [rsp], xmm0
	mov	dword ptr [rsp], 0xa
	test	rdi, rdi
	je	.label_326
	test	rsi, rsi
	je	.label_326
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
.label_326:
	call	abort
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x404740
	.globl quote_n_mem
	.type quote_n_mem, @function
quote_n_mem:

	mov	ecx, OFFSET FLAT:quote_quoting_options
	jmp	quotearg_n_options
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x404750
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
	#Procedure 0x404770

	.globl quote_n
	.type quote_n, @function
quote_n:
	mov	rdx, -1
	mov	ecx, OFFSET FLAT:quote_quoting_options
	jmp	quotearg_n_options
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x404790

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
	#Procedure 0x4047b0

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
	jne	.label_328
	call	locale_charset
	movsx	ecx, byte ptr [rax]
	and	ecx, 0xffffffdf
	cmp	ecx, 0x47
	je	.label_333
	cmp	ecx, 0x55
	jne	.label_327
	movsx	ecx, byte ptr [rax + 1]
	and	ecx, 0xffffffdf
	cmp	ecx, 0x54
	jne	.label_327
	movsx	ecx, byte ptr [rax + 2]
	and	ecx, 0xffffffdf
	cmp	ecx, 0x46
	jne	.label_327
	cmp	byte ptr [rax + 3], 0x2d
	jne	.label_327
	cmp	byte ptr [rax + 4], 0x38
	jne	.label_327
	cmp	byte ptr [rax + 5], 0
	jne	.label_327
	cmp	byte ptr [rbx], 0x60
	mov	ecx, OFFSET FLAT:label_330
	mov	eax, OFFSET FLAT:label_331
	jmp	.label_332
.label_333:
	movsx	ecx, byte ptr [rax + 1]
	and	ecx, 0xffffffdf
	cmp	ecx, 0x42
	jne	.label_327
	cmp	byte ptr [rax + 2], 0x31
	jne	.label_327
	cmp	byte ptr [rax + 3], 0x38
	jne	.label_327
	cmp	byte ptr [rax + 4], 0x30
	jne	.label_327
	cmp	byte ptr [rax + 5], 0x33
	jne	.label_327
	cmp	byte ptr [rax + 6], 0x30
	jne	.label_327
	cmp	byte ptr [rax + 7], 0
	je	.label_329
.label_327:
	cmp	ebp, 9
	mov	ecx, OFFSET FLAT:label_241
	mov	eax, OFFSET FLAT:label_225
.label_332:
	cmove	rax, rcx
.label_328:
	add	rsp, 8
	pop	rbx
	pop	rbp
	ret	
.label_329:
	cmp	byte ptr [rbx], 0x60
	mov	ecx, OFFSET FLAT:label_334
	mov	eax, OFFSET FLAT:label_335
	jmp	.label_332
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x404880

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
	je	.label_336
	mov	edx, OFFSET FLAT:label_346
	xor	eax, eax
	mov	rdi, r14
	mov	r8, rbx
	call	__fprintf_chk
	jmp	.label_352
.label_336:
	mov	edx, OFFSET FLAT:label_353
	xor	eax, eax
	mov	rdi, r14
	mov	rcx, rbx
	mov	r8, r9
	call	__fprintf_chk
.label_352:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_339
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
	mov	esi, OFFSET FLAT:label_354
	mov	edx, 5
	call	dcgettext
	mov	rdi, rax
	mov	rsi, r14
	call	fputs_unlocked
	cmp	r12, 9
	ja	.label_341
	jmp	qword ptr [(r12 * 8) + label_342]
.label_464:
	add	rsp, 8
	jmp	.label_340
.label_341:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_349
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
	jmp	.label_340
.label_465:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_337
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
.label_466:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_350
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
.label_467:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_347
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
.label_468:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_344
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
	jmp	.label_340
.label_469:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_343
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
	jmp	.label_340
.label_470:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_345
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
	jmp	.label_340
.label_471:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_348
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
	jmp	.label_340
.label_473:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_351
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
	jmp	.label_340
.label_472:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_338
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
.label_340:
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x404be0
	.globl version_etc_ar
	.type version_etc_ar, @function
version_etc_ar:

	mov	r9, -1
	nop	word ptr [rax + rax]
.label_355:
	cmp	qword ptr [r8 + r9*8 + 8], 0
	lea	r9, [r9 + 1]
	jne	.label_355
	jmp	version_etc_arn
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x404c10

	.globl version_etc_va
	.type version_etc_va, @function
version_etc_va:
	movsxd	r10, dword ptr [r8]
	cmp	r10, 0x28
	ja	.label_360
	mov	r9, r10
	add	r9, qword ptr [r8 + 0x10]
	lea	r10d, [r10 + 8]
	mov	dword ptr [r8], r10d
	jmp	.label_363
.label_360:
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
.label_363:
	sub	rsp, 0x58
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp], rax
	xor	r9d, r9d
	test	rax, rax
	je	.label_361
	cmp	r10d, 0x29
	jae	.label_359
	movsxd	r9, r10d
	add	r9, qword ptr [r8 + 0x10]
	add	r10d, 8
	mov	dword ptr [r8], r10d
	jmp	.label_362
.label_359:
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
.label_362:
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp + 8], rax
	mov	r9d, 1
	test	rax, rax
	je	.label_361
	cmp	r10d, 0x29
	jae	.label_357
	movsxd	r9, r10d
	add	r9, qword ptr [r8 + 0x10]
	add	r10d, 8
	mov	dword ptr [r8], r10d
	jmp	.label_358
.label_357:
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
.label_358:
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp + 0x10], rax
	mov	r9d, 2
	test	rax, rax
	je	.label_361
	cmp	r10d, 0x29
	jae	.label_368
	movsxd	r9, r10d
	add	r9, qword ptr [r8 + 0x10]
	add	r10d, 8
	mov	dword ptr [r8], r10d
	jmp	.label_356
.label_368:
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
.label_356:
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp + 0x18], rax
	mov	r9d, 3
	test	rax, rax
	je	.label_361
	cmp	r10d, 0x29
	jae	.label_366
	movsxd	r9, r10d
	add	r9, qword ptr [r8 + 0x10]
	add	r10d, 8
	mov	dword ptr [r8], r10d
	jmp	.label_367
.label_366:
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
.label_367:
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp + 0x20], rax
	mov	r9d, 4
	test	rax, rax
	je	.label_361
	cmp	r10d, 0x29
	jae	.label_364
	movsxd	r9, r10d
	add	r9, qword ptr [r8 + 0x10]
	add	r10d, 8
	mov	dword ptr [r8], r10d
	jmp	.label_365
.label_364:
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
.label_365:
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp + 0x28], rax
	mov	r9d, 5
	test	rax, rax
	je	.label_361
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp + 0x30], rax
	mov	r9d, 6
	test	rax, rax
	je	.label_361
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp + 0x38], rax
	mov	r9d, 7
	test	rax, rax
	je	.label_361
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp + 0x40], rax
	mov	r9d, 8
	test	rax, rax
	je	.label_361
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp + 0x48], rax
	cmp	rax, 1
	mov	r9d, 9
	sbb	r9, -1
.label_361:
	lea	r8, [rsp]
	call	version_etc_arn
	add	rsp, 0x58
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x404e00

	.globl version_etc
	.type version_etc, @function
version_etc:
	sub	rsp, 0xd8
	test	al, al
	je	.label_369
	movaps	xmmword ptr [rsp + 0x50], xmm0
	movaps	xmmword ptr [rsp + 0x60], xmm1
	movaps	xmmword ptr [rsp + 0x70], xmm2
	movaps	xmmword ptr [rsp + 0x80], xmm3
	movaps	xmmword ptr [rsp + 0x90], xmm4
	movaps	xmmword ptr [rsp + 0xa0], xmm5
	movaps	xmmword ptr [rsp + 0xb0], xmm6
	movaps	xmmword ptr [rsp + 0xc0], xmm7
.label_369:
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
	#Procedure 0x404e90
	.globl emit_bug_reporting_address
	.type emit_bug_reporting_address, @function
emit_bug_reporting_address:

	push	rax
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_370
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:label_371
	xor	eax, eax
	mov	rsi, rcx
	call	__printf_chk
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_373
	mov	edx, 5
	call	dcgettext
	mov	rsi, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:label_27
	mov	ecx, OFFSET FLAT:label_17
	xor	eax, eax
	call	__printf_chk
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_372
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	pop	rax
	jmp	fputs_unlocked
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x404f10
	.globl xnmalloc
	.type xnmalloc, @function
xnmalloc:

	push	rbx
	mov	rbx, rsi
	movabs	rax, 0x7fffffffffffffff
	xor	edx, edx
	div	rbx
	cmp	rax, rdi
	jb	.label_374
	imul	rbx, rdi
	mov	rdi, rbx
	call	malloc
	test	rbx, rbx
	je	.label_375
	test	rax, rax
	je	.label_374
.label_375:
	pop	rbx
	ret	
.label_374:
	call	xalloc_die
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x404f50

	.globl xmalloc
	.type xmalloc, @function
xmalloc:
	push	rbx
	mov	rbx, rdi
	call	malloc
	test	rbx, rbx
	je	.label_376
	test	rax, rax
	je	.label_377
.label_376:
	pop	rbx
	ret	
.label_377:
	call	xalloc_die
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x404f70
	.globl xnrealloc
	.type xnrealloc, @function
xnrealloc:

	push	rbx
	mov	rbx, rdx
	movabs	rax, 0x7fffffffffffffff
	xor	edx, edx
	div	rbx
	cmp	rax, rsi
	jb	.label_378
	imul	rbx, rsi
	test	rdi, rdi
	je	.label_379
	test	rbx, rbx
	jne	.label_379
	call	free
	xor	eax, eax
	pop	rbx
	ret	
.label_379:
	mov	rsi, rbx
	call	realloc
	test	rbx, rbx
	je	.label_380
	test	rax, rax
	je	.label_378
.label_380:
	pop	rbx
	ret	
.label_378:
	call	xalloc_die
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x404fc0

	.globl xrealloc
	.type xrealloc, @function
xrealloc:
	push	rbx
	mov	rbx, rsi
	test	rdi, rdi
	je	.label_381
	test	rbx, rbx
	jne	.label_381
	call	free
	xor	eax, eax
	pop	rbx
	ret	
.label_381:
	mov	rsi, rbx
	call	realloc
	test	rbx, rbx
	je	.label_383
	test	rax, rax
	je	.label_382
.label_383:
	pop	rbx
	ret	
.label_382:
	call	xalloc_die
	.section	.text
	.align	32
	#Procedure 0x404ff0
	.globl x2nrealloc
	.type x2nrealloc, @function
x2nrealloc:

	push	rbx
	mov	rbx, rdx
	mov	rcx, qword ptr [rsi]
	test	rdi, rdi
	je	.label_387
	movabs	rax, 0x5555555555555554
	xor	edx, edx
	div	rbx
	cmp	rax, rcx
	jbe	.label_389
	mov	rax, rcx
	shr	rax, 1
	lea	rcx, [rcx + rax + 1]
	jmp	.label_384
.label_387:
	test	rcx, rcx
	jne	.label_390
	mov	eax, 0x80
	xor	edx, edx
	div	rbx
	xor	ecx, ecx
	cmp	rbx, 0x80
	seta	cl
	add	rcx, rax
.label_390:
	movabs	rax, 0x7fffffffffffffff
	xor	edx, edx
	div	rbx
	cmp	rax, rcx
	jb	.label_385
.label_384:
	mov	qword ptr [rsi], rcx
	imul	rbx, rcx
	test	rdi, rdi
	je	.label_386
	test	rbx, rbx
	jne	.label_386
	call	free
	xor	eax, eax
	pop	rbx
	ret	
.label_386:
	mov	rsi, rbx
	call	realloc
	test	rbx, rbx
	je	.label_388
	test	rax, rax
	je	.label_389
.label_388:
	pop	rbx
	ret	
.label_389:
	call	xalloc_die
.label_385:
	call	xalloc_die
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x405090
	.globl xcharalloc
	.type xcharalloc, @function
xcharalloc:

	push	rbx
	mov	rbx, rdi
	call	malloc
	test	rbx, rbx
	je	.label_391
	test	rax, rax
	je	.label_392
.label_391:
	pop	rbx
	ret	
.label_392:
	call	xalloc_die
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4050b0
	.globl x2realloc
	.type x2realloc, @function
x2realloc:

	push	rbx
	mov	rax, qword ptr [rsi]
	test	rdi, rdi
	je	.label_395
	movabs	rcx, 0x5555555555555554
	cmp	rax, rcx
	jae	.label_397
	mov	rbx, rax
	shr	rbx, 1
	add	rbx, rax
	inc	rbx
	mov	qword ptr [rsi], rbx
	jne	.label_394
	call	free
	xor	eax, eax
	jmp	.label_396
.label_395:
	test	rax, rax
	mov	ebx, 0x80
	cmovne	rbx, rax
	test	rbx, rbx
	js	.label_393
	mov	qword ptr [rsi], rbx
.label_394:
	mov	rsi, rbx
	call	realloc
	test	rbx, rbx
	je	.label_396
	test	rax, rax
	je	.label_393
.label_396:
	pop	rbx
	ret	
.label_393:
	call	xalloc_die
.label_397:
	call	xalloc_die
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x405120
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
	je	.label_399
	test	r14, r14
	je	.label_398
.label_399:
	xor	esi, esi
	mov	rdi, r14
	mov	rdx, rbx
	call	memset
	mov	rax, r14
	add	rsp, 8
	pop	rbx
	pop	r14
	ret	
.label_398:
	call	xalloc_die
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x405160
	.globl xcalloc
	.type xcalloc, @function
xcalloc:

	push	rax
	movabs	rax, 0x7fffffffffffffff
	xor	edx, edx
	div	rsi
	cmp	rax, rdi
	jb	.label_400
	call	rpl_calloc
	test	rax, rax
	je	.label_400
	pop	rcx
	ret	
.label_400:
	call	xalloc_die
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x405190

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
	je	.label_401
	test	r15, r15
	je	.label_402
.label_401:
	mov	rdi, r15
	mov	rsi, r14
	mov	rdx, rbx
	call	memcpy
	mov	rax, r15
	pop	rbx
	pop	r14
	pop	r15
	ret	
.label_402:
	call	xalloc_die
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x4051d0

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
	je	.label_404
	test	r15, r15
	je	.label_403
.label_404:
	mov	rdi, r15
	mov	rsi, r14
	mov	rdx, rbx
	call	memcpy
	mov	rax, r15
	pop	rbx
	pop	r14
	pop	r15
	ret	
.label_403:
	call	xalloc_die
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x405220

	.globl xalloc_die
	.type xalloc_die, @function
xalloc_die:
	push	rbx
	mov	ebx, dword ptr [rip + exit_failure]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_405
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	xor	esi, esi
	mov	edx, OFFSET FLAT:label_168
	xor	eax, eax
	mov	edi, ebx
	call	error
	call	abort
	.section	.text
	.align	32
	#Procedure 0x405250

	.globl xstrtold
	.type xstrtold, @function
xstrtold:
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x10
	mov	r13, rcx
	mov	r14, rdx
	mov	r15, rsi
	mov	rbx, rdi
	call	__errno_location
	mov	r12, rax
	mov	dword ptr [r12], 0
	lea	rsi, [rsp + 8]
	mov	rdi, rbx
	call	r13
	mov	rcx, qword ptr [rsp + 8]
	cmp	rcx, rbx
	je	.label_406
	test	r15, r15
	jne	.label_408
	cmp	byte ptr [rcx], 0
	je	.label_408
	xor	eax, eax
	jmp	.label_409
.label_408:
	mov	al, 1
	fldz	
	fxch	st(1)
	fucomi	st(1)
	fstp	st(1)
	jne	.label_410
	jnp	.label_407
.label_410:
	cmp	dword ptr [r12], 0x22
	setne	al
	jmp	.label_407
.label_406:
	xor	eax, eax
.label_407:
	test	r15, r15
	je	.label_409
	mov	qword ptr [r15], rcx
.label_409:
	fstp	xword ptr [r14]
	add	rsp, 0x10
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	ret	
	nop	
	.section	.text
	.align	32
	#Procedure 0x4052d0

	.globl rpl_calloc
	.type rpl_calloc, @function
rpl_calloc:
	test	rdi, rdi
	mov	eax, 1
	je	.label_411
	test	rsi, rsi
	mov	ecx, 1
	je	.label_412
	mov	rax, rsi
	imul	rax, rdi
	xor	edx, edx
	div	rsi
	cmp	rax, rdi
	mov	rax, rsi
	mov	rcx, rdi
	je	.label_412
	push	rax
	call	__errno_location
	mov	dword ptr [rax], 0xc
	xor	eax, eax
	pop	rcx
	ret	
.label_411:
	mov	ecx, 1
.label_412:
	mov	rdi, rcx
	mov	rsi, rax
	jmp	calloc
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x405320

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
	je	.label_413
	cmp	r15, -2
	jb	.label_413
	xor	edi, edi
	call	hard_locale
	test	al, al
	jne	.label_413
	movzx	eax, byte ptr [r14]
	mov	dword ptr [rbx], eax
	mov	r15d, 1
.label_413:
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
	#Procedure 0x405380

	.globl c_strtold
	.type c_strtold, @function
c_strtold:
	push	rbp
	push	r15
	push	r14
	push	rbx
	sub	rsp, 0x18
	mov	r15, rsi
	mov	r14, rdi
	cmp	qword ptr [rip + c_locale_cache],  0
	jne	.label_414
	mov	edi, 0x1fbf
	mov	esi, OFFSET FLAT:label_30
	xor	edx, edx
	call	newlocale
	mov	qword ptr [rip + c_locale_cache],  rax
.label_414:
	mov	rdi, qword ptr [rip + c_locale_cache]
	test	rdi, rdi
	je	.label_416
	call	uselocale
	mov	rbx, rax
	test	rbx, rbx
	je	.label_416
	mov	rdi, r14
	mov	rsi, r15
	call	strtold
	fstp	xword ptr [rsp + 0xc]
	call	__errno_location
	mov	r14, rax
	mov	ebp, dword ptr [r14]
	mov	rdi, rbx
	call	uselocale
	test	rax, rax
	je	.label_417
	mov	dword ptr [r14], ebp
	fld	xword ptr [rsp + 0xc]
	jmp	.label_415
.label_416:
	fldz	
	test	r15, r15
	je	.label_415
	mov	qword ptr [r15], r14
.label_415:
	add	rsp, 0x18
	pop	rbx
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_417:
	call	abort
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x405420

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
	jne	.label_419
	test	eax, eax
	sete	cl
	neg	eax
	sbb	ebx, ebx
	test	r14, r14
	jne	.label_418
	test	cl, cl
	jne	.label_418
	call	__errno_location
	xor	ecx, ecx
	cmp	dword ptr [rax], 9
	mov	ebx, 0xffffffff
	cmove	ebx, ecx
	jmp	.label_418
.label_419:
	mov	ebx, 0xffffffff
	test	eax, eax
	jne	.label_418
	call	__errno_location
	mov	dword ptr [rax], 0
.label_418:
	mov	eax, ebx
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x405480

	.globl hard_locale
	.type hard_locale, @function
hard_locale:
	push	rbx
	xor	esi, esi
	call	setlocale
	mov	bl, 1
	test	rax, rax
	je	.label_421
	cmp	byte ptr [rax], 0x43
	jne	.label_423
	cmp	byte ptr [rax + 1], 0
	je	.label_420
.label_423:
	mov	esi, OFFSET FLAT:label_422
	mov	rdi, rax
	call	strcmp
	test	eax, eax
	jne	.label_421
.label_420:
	xor	ebx, ebx
.label_421:
	mov	eax, ebx
	pop	rbx
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4054c0

	.globl locale_charset
	.type locale_charset, @function
locale_charset:
	push	rax
	mov	edi, 0xe
	call	rpl_nl_langinfo
	test	rax, rax
	mov	ecx, OFFSET FLAT:label_45
	cmovne	rcx, rax
	cmp	byte ptr [rcx], 0
	mov	eax, OFFSET FLAT:label_424
	cmovne	rax, rcx
	pop	rcx
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4054f0

	.globl rpl_fclose
	.type rpl_fclose, @function
rpl_fclose:
	push	rbp
	push	r14
	push	rbx
	mov	rbx, rdi
	call	fileno
	test	eax, eax
	js	.label_425
	mov	rdi, rbx
	call	__freading
	test	eax, eax
	je	.label_427
	mov	rdi, rbx
	call	fileno
	xor	esi, esi
	mov	edx, 1
	mov	edi, eax
	call	lseek
	cmp	rax, -1
	je	.label_425
.label_427:
	mov	rdi, rbx
	call	rpl_fflush
	test	eax, eax
	je	.label_425
	call	__errno_location
	mov	r14, rax
	mov	ebp, dword ptr [r14]
	mov	rdi, rbx
	call	fclose
	test	ebp, ebp
	je	.label_426
	mov	dword ptr [r14], ebp
	mov	eax, 0xffffffff
.label_426:
	pop	rbx
	pop	r14
	pop	rbp
	ret	
.label_425:
	mov	rdi, rbx
	pop	rbx
	pop	r14
	pop	rbp
	jmp	fclose
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x405570

	.globl rpl_fflush
	.type rpl_fflush, @function
rpl_fflush:
	push	rbx
	mov	rbx, rdi
	test	rbx, rbx
	je	.label_428
	mov	rdi, rbx
	call	__freading
	test	eax, eax
	je	.label_428
	test	byte ptr [rbx + 1], 1
	je	.label_428
	xor	esi, esi
	mov	edx, 1
	mov	rdi, rbx
	call	rpl_fseeko
.label_428:
	mov	rdi, rbx
	pop	rbx
	jmp	fflush
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4055b0

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
	jne	.label_429
	mov	rax, qword ptr [rbx + 0x28]
	cmp	rax, qword ptr [rbx + 0x20]
	jne	.label_429
	cmp	qword ptr [rbx + 0x48], 0
	je	.label_430
.label_429:
	mov	rdi, rbx
	mov	rsi, rbp
	mov	edx, r14d
	pop	rbx
	pop	r14
	pop	rbp
	jmp	fseeko
.label_430:
	mov	rdi, rbx
	call	fileno
	mov	edi, eax
	mov	rsi, rbp
	mov	edx, r14d
	call	lseek
	mov	rcx, rax
	mov	eax, 0xffffffff
	cmp	rcx, -1
	je	.label_431
	and	byte ptr [rbx], 0xef
	mov	qword ptr [rbx + 0x90], rcx
	xor	eax, eax
.label_431:
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	nop	
	.section .text
	.align	32
	#Procedure 0x405620

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
