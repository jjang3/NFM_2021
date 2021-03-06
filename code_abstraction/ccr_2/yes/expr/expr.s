	.section	.text
	.align	32
	#Procedure 0x401d60

	.globl usage
	.type usage, @function
usage:
	push	rbp
	push	rbx
	push	rax
	mov	ebp, edi
	test	ebp, ebp
	jne	.label_22
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_26
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	mov	rdx, qword ptr [rip + program_name]
	mov	edi, 1
	xor	eax, eax
	mov	rsi, rcx
	mov	rcx, rdx
	call	__printf_chk
	mov	rdi, qword ptr [rip + stdout]
	mov	rax, qword ptr [rdi + 0x28]
	cmp	rax, qword ptr [rdi + 0x30]
	jae	.label_11
	lea	rcx, [rax + 1]
	mov	qword ptr [rdi + 0x28], rcx
	mov	byte ptr [rax], 0xa
	jmp	.label_25
.label_22:
	mov	rbx, qword ptr [rip + stderr]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_28
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
.label_11:
	mov	esi, 0xa
	call	__overflow
.label_25:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_29
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
	mov	esi, OFFSET FLAT:label_33
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
	mov	esi, OFFSET FLAT:label_30
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
	mov	esi, OFFSET FLAT:label_14
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
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_21
	mov	edx, 5
	call	dcgettext
	mov	rsi, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:label_23
	mov	ecx, OFFSET FLAT:label_24
	xor	eax, eax
	call	__printf_chk
	mov	edi, 5
	xor	esi, esi
	call	setlocale
	test	rax, rax
	je	.label_19
	mov	esi, OFFSET FLAT:label_10
	mov	edx, 3
	mov	rdi, rax
	call	strncmp
	test	eax, eax
	je	.label_19
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_18
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	call	fputs_unlocked
.label_19:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_27
	mov	edx, 5
	call	dcgettext
	mov	rsi, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:label_24
	mov	ecx, OFFSET FLAT:label_31
	xor	eax, eax
	call	__printf_chk
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_9
	mov	edx, 5
	call	dcgettext
	mov	rsi, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:label_31
	mov	ecx, OFFSET FLAT:label_32
	xor	eax, eax
	call	__printf_chk
	mov	edi, ebp
	call	exit
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x402010

	.globl main
	.type main, @function
main:
	push	rbp
	push	rbx
	push	rax
	mov	rbx, rsi
	mov	ebp, edi
	mov	rdi, qword ptr [rbx]
	call	set_program_name
	mov	edi, 6
	mov	esi, OFFSET FLAT:label_46
	call	setlocale
	mov	edi, OFFSET FLAT:label_48
	mov	esi, OFFSET FLAT:label_49
	call	bindtextdomain
	mov	edi, OFFSET FLAT:label_48
	call	textdomain
	mov	dword ptr [rip + exit_failure],  3
	mov	edi, OFFSET FLAT:close_stdout
	call	atexit
	mov	edx, OFFSET FLAT:label_31
	mov	ecx, OFFSET FLAT:label_23
	mov	r8d, OFFSET FLAT:label_41
	mov	r9d, OFFSET FLAT:usage
	mov	eax, 0
	mov	edi, ebp
	mov	rsi, rbx
	push	0
	push	OFFSET FLAT:label_42
	push	OFFSET FLAT:label_43
	push	OFFSET FLAT:label_44
	call	parse_long_options
	add	rsp, 0x20
	cmp	ebp, 2
	jb	.label_37
	mov	rax, qword ptr [rbx + 8]
	cmp	byte ptr [rax], 0x2d
	jne	.label_45
	cmp	byte ptr [rax + 1], 0x2d
	jne	.label_45
	cmp	byte ptr [rax + 2], 0
	jne	.label_45
	dec	ebp
	cmp	ebp, 1
	jbe	.label_37
	add	rbx, 8
.label_45:
	add	rbx, 8
	mov	qword ptr [rip + args],  rbx
	mov	edi, 1
	call	eval
	mov	rbx, rax
	mov	rax, qword ptr [rip + args]
	cmp	qword ptr [rax], 0
	jne	.label_39
	mov	eax, dword ptr [rbx]
	cmp	eax, 1
	je	.label_47
	test	eax, eax
	jne	.label_51
	mov	rdi, qword ptr [rip + stdout]
	mov	rdx, rbx
	add	rdx, 8
	mov	esi, 0xa
	call	__gmpz_out_str
	mov	rdi, qword ptr [rip + stdout]
	mov	rax, qword ptr [rdi + 0x28]
	cmp	rax, qword ptr [rdi + 0x30]
	jae	.label_53
	lea	rcx, [rax + 1]
	mov	qword ptr [rdi + 0x28], rcx
	mov	byte ptr [rax], 0xa
	jmp	.label_38
.label_47:
	mov	rdi, qword ptr [rbx + 8]
	call	puts
.label_38:
	mov	eax, dword ptr [rbx]
	cmp	eax, 1
	je	.label_54
	test	eax, eax
	jne	.label_34
	cmp	dword ptr [rbx + 0xc], 0
	sete	al
	jmp	.label_36
.label_54:
	mov	rcx, qword ptr [rbx + 8]
	mov	dl, byte ptr [rcx]
	mov	al, 1
	test	dl, dl
	je	.label_36
	xor	esi, esi
	cmp	dl, 0x2d
	sete	sil
	mov	dl, byte ptr [rcx + rsi]
	lea	rcx, [rcx + rsi + 1]
	nop	
.label_52:
	cmp	dl, 0x30
	jne	.label_50
	movzx	edx, byte ptr [rcx]
	inc	rcx
	test	dl, dl
	jne	.label_52
	jmp	.label_36
.label_50:
	xor	eax, eax
.label_36:
	movzx	eax, al
	add	rsp, 8
	pop	rbx
	pop	rbp
	ret	
.label_53:
	mov	esi, 0xa
	call	__overflow
	jmp	.label_38
.label_37:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_40
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	xor	edi, edi
	xor	esi, esi
	xor	eax, eax
	mov	rdx, rcx
	call	error
	mov	edi, 2
	call	usage
.label_39:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_35
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
	mov	rax, qword ptr [rip + args]
	mov	rdx, qword ptr [rax]
	xor	edi, edi
	mov	esi, 8
	call	quotearg_n_style
	mov	rcx, rax
	mov	edi, 2
	xor	esi, esi
	xor	eax, eax
	mov	rdx, rbx
	call	error
.label_51:
	call	abort
.label_34:
	call	abort
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x402210

	.globl eval
	.type eval, @function
eval:
	push	rbp
	push	r15
	push	r14
	push	r12
	push	rbx
	mov	r14d, edi
	movzx	edi, r14b
	call	eval1
	mov	r12, rax
	mov	rbx, qword ptr [rip + args]
	mov	rdi, qword ptr [rbx]
	test	rdi, rdi
	je	.label_62
	nop	word ptr [rax + rax]
.label_64:
	lea	r15, [r12 + 8]
.label_73:
	mov	esi, OFFSET FLAT:label_70
	call	strcmp
	xor	ecx, ecx
	test	eax, eax
	sete	cl
	lea	rax, [rbx + rcx*8]
	mov	qword ptr [rip + args],  rax
	jne	.label_62
	test	r14b, r14b
	je	.label_76
	mov	eax, dword ptr [r12]
	cmp	eax, 1
	je	.label_77
	test	eax, eax
	jne	.label_80
	cmp	dword ptr [r12 + 0xc], 0
	sete	al
	jmp	.label_68
	nop	dword ptr [rax + rax]
.label_77:
	mov	rcx, qword ptr [r15]
	mov	dl, byte ptr [rcx]
	mov	al, 1
	test	dl, dl
	je	.label_68
	xor	esi, esi
	cmp	dl, 0x2d
	sete	sil
	mov	dl, byte ptr [rcx + rsi]
	lea	rcx, [rcx + rsi + 1]
	nop	dword ptr [rax]
.label_65:
	cmp	dl, 0x30
	jne	.label_76
	movzx	edx, byte ptr [rcx]
	inc	rcx
	test	dl, dl
	jne	.label_65
	jmp	.label_68
	nop	word ptr cs:[rax + rax]
.label_76:
	xor	eax, eax
.label_68:
	movzx	edi, al
	call	eval1
	mov	rbp, rax
	mov	eax, dword ptr [r12]
	test	eax, eax
	je	.label_72
	cmp	eax, 1
	jne	.label_75
	mov	rcx, qword ptr [r15]
	mov	dl, byte ptr [rcx]
	test	dl, dl
	je	.label_79
	xor	esi, esi
	cmp	dl, 0x2d
	sete	sil
	mov	dl, byte ptr [rcx + rsi]
	lea	rcx, [rcx + rsi + 1]
	nop	dword ptr [rax]
.label_59:
	cmp	dl, 0x30
	jne	.label_81
	movzx	edx, byte ptr [rcx]
	inc	rcx
	test	dl, dl
	jne	.label_59
	jmp	.label_67
	nop	word ptr cs:[rax + rax]
.label_72:
	cmp	dword ptr [r12 + 0xc], 0
	je	.label_55
.label_81:
	mov	rdi, rbp
	add	rdi, 8
	cmp	dword ptr [rbp], 1
	jne	.label_66
	mov	rdi, qword ptr [rdi]
	call	free
	jmp	.label_71
	nop	
.label_66:
	call	__gmpz_clear
.label_71:
	mov	rdi, rbp
	call	free
	mov	rbx, qword ptr [rip + args]
	mov	rdi, qword ptr [rbx]
	test	rdi, rdi
	jne	.label_73
	jmp	.label_62
	nop	word ptr cs:[rax + rax]
.label_67:
	cmp	eax, 1
	jne	.label_55
.label_79:
	mov	rdi, qword ptr [r15]
	call	free
	jmp	.label_58
	nop	
.label_55:
	mov	rdi, r15
	call	__gmpz_clear
.label_58:
	mov	rdi, r12
	call	free
	mov	eax, dword ptr [rbp]
	test	eax, eax
	je	.label_61
	cmp	eax, 1
	jne	.label_63
	mov	rcx, qword ptr [rbp + 8]
	mov	dl, byte ptr [rcx]
	test	dl, dl
	je	.label_69
	xor	esi, esi
	cmp	dl, 0x2d
	sete	sil
	mov	dl, byte ptr [rcx + rsi]
	lea	rcx, [rcx + rsi + 1]
	nop	dword ptr [rax + rax]
.label_60:
	cmp	dl, 0x30
	jne	.label_56
	movzx	edx, byte ptr [rcx]
	inc	rcx
	test	dl, dl
	jne	.label_60
	cmp	eax, 1
	jne	.label_74
.label_69:
	mov	rdi, qword ptr [rbp + 8]
	call	free
	jmp	.label_78
	nop	
.label_61:
	cmp	dword ptr [rbp + 0xc], 0
	jne	.label_56
.label_74:
	mov	rdi, rbp
	add	rdi, 8
	call	__gmpz_clear
.label_78:
	mov	rdi, rbp
	call	free
	mov	edi, 0x18
	call	xmalloc
	mov	rbp, rax
	mov	dword ptr [rbp], 0
	lea	rdi, [rbp + 8]
	xor	esi, esi
	call	__gmpz_init_set_ui
.label_56:
	mov	rbx, qword ptr [rip + args]
	mov	rdi, qword ptr [rbx]
	test	rdi, rdi
	mov	r12, rbp
	jne	.label_64
	jmp	.label_57
.label_62:
	mov	rbp, r12
.label_57:
	mov	rax, rbp
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_75:
	call	abort
.label_80:
	call	abort
.label_63:
	call	abort
	nop	
	.section	.text
	.align	32
	#Procedure 0x402460

	.globl eval1
	.type eval1, @function
eval1:
	push	rbp
	push	r15
	push	r14
	push	r12
	push	rbx
	mov	r14d, edi
	movzx	edi, r14b
	call	eval2
	mov	r12, rax
	jmp	.label_105
	nop	dword ptr [rax]
.label_91:
	mov	rdi, rbp
	call	free
	mov	edi, 0x18
	call	xmalloc
	mov	r12, rax
	mov	dword ptr [r12], 0
	lea	rdi, [r12 + 8]
	xor	esi, esi
	call	__gmpz_init_set_ui
.label_105:
	mov	rbp, qword ptr [rip + args]
	mov	rdi, qword ptr [rbp]
	test	rdi, rdi
	je	.label_90
	lea	r15, [r12 + 8]
.label_99:
	mov	esi, OFFSET FLAT:label_95
	call	strcmp
	xor	ecx, ecx
	test	eax, eax
	sete	cl
	lea	rax, [rbp + rcx*8]
	mov	qword ptr [rip + args],  rax
	jne	.label_90
	test	r14b, r14b
	je	.label_102
	mov	eax, dword ptr [r12]
	cmp	eax, 1
	je	.label_86
	test	eax, eax
	jne	.label_104
	cmp	dword ptr [r12 + 0xc], 0
	sete	al
	jmp	.label_87
	nop	word ptr cs:[rax + rax]
.label_102:
	xor	eax, eax
	jmp	.label_85
	nop	word ptr cs:[rax + rax]
.label_86:
	mov	rcx, qword ptr [r15]
	mov	dl, byte ptr [rcx]
	mov	al, 1
	test	dl, dl
	je	.label_87
	xor	esi, esi
	cmp	dl, 0x2d
	sete	sil
	mov	dl, byte ptr [rcx + rsi]
	lea	rcx, [rcx + rsi + 1]
	nop	dword ptr [rax]
.label_96:
	cmp	dl, 0x30
	jne	.label_93
	movzx	edx, byte ptr [rcx]
	inc	rcx
	test	dl, dl
	jne	.label_96
	jmp	.label_87
.label_93:
	xor	eax, eax
	nop	word ptr cs:[rax + rax]
.label_87:
	xor	al, 1
.label_85:
	movzx	edi, al
	call	eval2
	mov	rbp, rax
	mov	eax, dword ptr [r12]
	test	eax, eax
	je	.label_103
	cmp	eax, 1
	jne	.label_106
	mov	rcx, qword ptr [r15]
	mov	dl, byte ptr [rcx]
	test	dl, dl
	je	.label_108
	xor	esi, esi
	cmp	dl, 0x2d
	sete	sil
	mov	dl, byte ptr [rcx + rsi]
	lea	rcx, [rcx + rsi + 1]
	nop	dword ptr [rax]
.label_88:
	cmp	dl, 0x30
	jne	.label_94
	movzx	edx, byte ptr [rcx]
	inc	rcx
	test	dl, dl
	jne	.label_88
	jmp	.label_84
	nop	word ptr cs:[rax + rax]
.label_103:
	cmp	dword ptr [r12 + 0xc], 0
	je	.label_82
.label_94:
	mov	ecx, dword ptr [rbp]
	test	ecx, ecx
	je	.label_97
	cmp	ecx, 1
	jne	.label_98
	mov	rdx, qword ptr [rbp + 8]
	mov	bl, byte ptr [rdx]
	test	bl, bl
	je	.label_84
	xor	esi, esi
	cmp	bl, 0x2d
	sete	sil
	mov	bl, byte ptr [rdx + rsi]
	lea	rdx, [rdx + rsi + 1]
	nop	dword ptr [rax + rax]
.label_83:
	cmp	bl, 0x30
	jne	.label_92
	movzx	ebx, byte ptr [rdx]
	inc	rdx
	test	bl, bl
	jne	.label_83
	jmp	.label_84
	nop	word ptr cs:[rax + rax]
.label_97:
	cmp	dword ptr [rbp + 0xc], 0
	jne	.label_89
	jmp	.label_84
.label_92:
	cmp	ecx, 1
	jne	.label_89
	mov	rdi, qword ptr [rbp + 8]
	call	free
	jmp	.label_101
	nop	dword ptr [rax + rax]
.label_89:
	mov	rdi, rbp
	add	rdi, 8
	call	__gmpz_clear
.label_101:
	mov	rdi, rbp
	call	free
	mov	rbp, qword ptr [rip + args]
	mov	rdi, qword ptr [rbp]
	test	rdi, rdi
	jne	.label_99
	jmp	.label_90
	nop	word ptr [rax + rax]
.label_84:
	cmp	eax, 1
	jne	.label_82
.label_108:
	mov	rdi, qword ptr [r15]
	call	free
	jmp	.label_107
	nop	
.label_82:
	mov	rdi, r15
	call	__gmpz_clear
.label_107:
	mov	rdi, r12
	call	free
	mov	rdi, rbp
	add	rdi, 8
	cmp	dword ptr [rbp], 1
	jne	.label_100
	mov	rdi, qword ptr [rdi]
	call	free
	jmp	.label_91
	nop	word ptr [rax + rax]
.label_100:
	call	__gmpz_clear
	jmp	.label_91
.label_90:
	mov	rax, r12
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_106:
	call	abort
.label_98:
	call	abort
.label_104:
	call	abort
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4026e0

	.globl eval2
	.type eval2, @function
eval2:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	push	rax
	movzx	r14d, dil
	mov	edi, r14d
	call	eval3
	mov	rbx, rax
	mov	rbp, qword ptr [rip + args]
	mov	rdi, qword ptr [rbp]
	test	rdi, rdi
	je	.label_111
	mov	dword ptr [rsp + 4], r14d
	jmp	.label_113
	nop	dword ptr [rax + rax]
.label_119:
	lea	r14, [r15 + 8]
.label_133:
	call	__errno_location
	mov	dword ptr [rax], 0
	mov	rsi, qword ptr [r14]
	mov	rdi, rbp
	call	strcoll
.label_114:
	mov	ebp, eax
	and	r13b, 7
	movzx	eax, r13b
	cmp	al, 5
	mov	r14d, dword ptr [rsp + 4]
	ja	.label_127
	jmp	qword ptr [(rax * 8) + label_132]
.label_2478:
	shr	ebp, 0x1f
	jmp	.label_110
.label_2479:
	xor	eax, eax
	test	ebp, ebp
	setle	al
	mov	rbp, rax
	jmp	.label_110
.label_2480:
	xor	eax, eax
	test	ebp, ebp
	sete	al
	mov	rbp, rax
	jmp	.label_110
.label_2481:
	xor	eax, eax
	test	ebp, ebp
	setne	al
	mov	rbp, rax
	jmp	.label_110
.label_2482:
	shr	ebp, 0x1f
	xor	rbp, 1
	jmp	.label_110
.label_2483:
	xor	eax, eax
	test	ebp, ebp
	setg	al
	mov	rbp, rax
	jmp	.label_110
	nop	dword ptr [rax + rax]
.label_113:
	mov	esi, OFFSET FLAT:label_129
	call	strcmp
	xor	ecx, ecx
	test	eax, eax
	sete	cl
	lea	rbp, [rbp + rcx*8]
	mov	qword ptr [rip + args],  rbp
	je	.label_121
	mov	rdi, qword ptr [rbp]
	test	rdi, rdi
	je	.label_111
	mov	esi, OFFSET FLAT:label_128
	call	strcmp
	xor	ecx, ecx
	test	eax, eax
	sete	cl
	lea	rbp, [rbp + rcx*8]
	mov	qword ptr [rip + args],  rbp
	mov	r13b, 1
	je	.label_109
	mov	rdi, qword ptr [rbp]
	test	rdi, rdi
	je	.label_111
	mov	esi, OFFSET FLAT:label_115
	call	strcmp
	xor	ecx, ecx
	test	eax, eax
	sete	cl
	lea	rbp, [rbp + rcx*8]
	mov	qword ptr [rip + args],  rbp
	mov	r13b, 2
	je	.label_109
	mov	rdi, qword ptr [rbp]
	test	rdi, rdi
	je	.label_111
	mov	esi, OFFSET FLAT:label_123
	call	strcmp
	xor	ecx, ecx
	test	eax, eax
	sete	cl
	lea	rbp, [rbp + rcx*8]
	mov	qword ptr [rip + args],  rbp
	je	.label_109
	mov	rdi, qword ptr [rbp]
	test	rdi, rdi
	je	.label_111
	mov	esi, OFFSET FLAT:label_134
	call	strcmp
	xor	ecx, ecx
	test	eax, eax
	sete	cl
	lea	rbp, [rbp + rcx*8]
	mov	qword ptr [rip + args],  rbp
	mov	r13b, 3
	je	.label_109
	mov	rdi, qword ptr [rbp]
	test	rdi, rdi
	je	.label_111
	mov	esi, OFFSET FLAT:label_118
	call	strcmp
	xor	ecx, ecx
	test	eax, eax
	sete	cl
	lea	rbp, [rbp + rcx*8]
	mov	qword ptr [rip + args],  rbp
	mov	r13b, 4
	je	.label_109
	mov	rdi, qword ptr [rbp]
	test	rdi, rdi
	je	.label_111
	mov	esi, OFFSET FLAT:label_126
	call	strcmp
	xor	ecx, ecx
	test	eax, eax
	sete	cl
	lea	rax, [rbp + rcx*8]
	mov	qword ptr [rip + args],  rax
	mov	r13b, 5
	je	.label_109
	jmp	.label_111
	nop	dword ptr [rax + rax]
.label_121:
	xor	r13d, r13d
.label_109:
	mov	edi, r14d
	call	eval3
	mov	r15, rax
	test	r14b, r14b
	je	.label_112
	mov	eax, dword ptr [rbx]
	cmp	eax, 1
	je	.label_116
	test	eax, eax
	jne	.label_117
	lea	rbp, [rbx + 8]
	xor	edi, edi
	mov	esi, 0xa
	mov	rdx, rbp
	call	__gmpz_get_str
	mov	r12, rax
	mov	rdi, rbp
	call	__gmpz_clear
	mov	qword ptr [rbx + 8], r12
	mov	dword ptr [rbx], 1
.label_116:
	mov	eax, dword ptr [r15]
	cmp	eax, 1
	je	.label_124
	test	eax, eax
	jne	.label_117
	lea	rbp, [r15 + 8]
	xor	edi, edi
	mov	esi, 0xa
	mov	rdx, rbp
	call	__gmpz_get_str
	mov	r12, rax
	mov	rdi, rbp
	call	__gmpz_clear
	mov	qword ptr [r15 + 8], r12
	mov	dword ptr [r15], 1
.label_124:
	mov	rbp, qword ptr [rbx + 8]
	xor	eax, eax
	cmp	byte ptr [rbp], 0x2d
	lea	r12, [rbx + 8]
	sete	al
	mov	cl, byte ptr [rbp + rax]
	lea	rax, [rbp + rax + 1]
	nop	word ptr cs:[rax + rax]
.label_122:
	movsx	ecx, cl
	add	ecx, -0x30
	cmp	ecx, 9
	ja	.label_119
	movzx	ecx, byte ptr [rax]
	inc	rax
	test	cl, cl
	jne	.label_122
	mov	rsi, qword ptr [r15 + 8]
	xor	eax, eax
	cmp	byte ptr [rsi], 0x2d
	lea	r14, [r15 + 8]
	sete	al
	mov	cl, byte ptr [rsi + rax]
	lea	rax, [rsi + rax + 1]
	nop	word ptr cs:[rax + rax]
.label_135:
	movsx	ecx, cl
	add	ecx, -0x30
	cmp	ecx, 9
	ja	.label_133
	movzx	ecx, byte ptr [rax]
	inc	rax
	test	cl, cl
	jne	.label_135
	mov	rdi, rbp
	call	strintcmp
	jmp	.label_114
	nop	word ptr cs:[rax + rax]
.label_112:
	lea	r12, [rbx + 8]
	xor	ebp, ebp
.label_110:
	cmp	dword ptr [rbx], 1
	jne	.label_130
	mov	rdi, qword ptr [r12]
	call	free
	jmp	.label_120
	nop	word ptr cs:[rax + rax]
.label_130:
	lea	rdi, [rbx + 8]
	call	__gmpz_clear
.label_120:
	mov	rdi, rbx
	call	free
	mov	rdi, r15
	add	rdi, 8
	cmp	dword ptr [r15], 1
	jne	.label_125
	mov	rdi, qword ptr [rdi]
	call	free
	jmp	.label_131
	nop	dword ptr [rax + rax]
.label_125:
	call	__gmpz_clear
.label_131:
	mov	rdi, r15
	call	free
	mov	edi, 0x18
	call	xmalloc
	mov	rbx, rax
	mov	dword ptr [rbx], 0
	lea	rdi, [rbx + 8]
	mov	rsi, rbp
	call	__gmpz_init_set_ui
	mov	rbp, qword ptr [rip + args]
	mov	rdi, qword ptr [rbp]
	test	rdi, rdi
	jne	.label_113
.label_111:
	mov	rax, rbx
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_117:
	call	abort
.label_127:
	call	abort
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x402ad0

	.globl eval3
	.type eval3, @function
eval3:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	push	rax
	movzx	r12d, dil
	mov	edi, r12d
	call	eval4
	mov	r14, rax
	mov	rbx, qword ptr [rip + args]
	mov	rdi, qword ptr [rbx]
	test	rdi, rdi
	je	.label_138
	mov	r15, r14
	add	r15, 8
	nop	word ptr cs:[rax + rax]
.label_139:
	mov	esi, OFFSET FLAT:label_140
	call	strcmp
	xor	r13d, r13d
	xor	ecx, ecx
	test	eax, eax
	sete	cl
	lea	rbx, [rbx + rcx*8]
	mov	qword ptr [rip + args],  rbx
	je	.label_142
	mov	rdi, qword ptr [rbx]
	test	rdi, rdi
	je	.label_138
	mov	esi, OFFSET FLAT:label_148
	call	strcmp
	xor	ecx, ecx
	test	eax, eax
	sete	cl
	lea	rax, [rbx + rcx*8]
	mov	qword ptr [rip + args],  rax
	mov	r13d, 1
	jne	.label_138
.label_142:
	mov	edi, r12d
	call	eval4
	mov	rbx, rax
	test	r12b, r12b
	je	.label_147
	mov	eax, dword ptr [r14]
	test	eax, eax
	je	.label_151
	cmp	eax, 1
	jne	.label_136
	mov	rbp, qword ptr [r15]
	xor	eax, eax
	cmp	byte ptr [rbp], 0x2d
	sete	al
	mov	cl, byte ptr [rbp + rax]
	lea	rax, [rbp + rax + 1]
	nop	
.label_143:
	movsx	ecx, cl
	add	ecx, -0x30
	cmp	ecx, 9
	ja	.label_137
	movzx	ecx, byte ptr [rax]
	inc	rax
	test	cl, cl
	jne	.label_143
	mov	edx, 0xa
	mov	rdi, r15
	mov	rsi, rbp
	call	__gmpz_init_set_str
	mov	rdi, rbp
	call	free
	mov	dword ptr [r14], 0
.label_151:
	mov	eax, dword ptr [rbx]
	test	eax, eax
	je	.label_141
	cmp	eax, 1
	jne	.label_144
	mov	rbp, qword ptr [rbx + 8]
	xor	eax, eax
	cmp	byte ptr [rbp], 0x2d
	lea	rdi, [rbx + 8]
	sete	al
	mov	cl, byte ptr [rbp + rax]
	lea	rax, [rbp + rax + 1]
	nop	word ptr cs:[rax + rax]
.label_145:
	movsx	ecx, cl
	add	ecx, -0x30
	cmp	ecx, 9
	ja	.label_137
	movzx	ecx, byte ptr [rax]
	inc	rax
	test	cl, cl
	jne	.label_145
	mov	edx, 0xa
	mov	rsi, rbp
	call	__gmpz_init_set_str
	mov	rdi, rbp
	call	free
	mov	dword ptr [rbx], 0
.label_141:
	test	r13d, r13d
	mov	eax, OFFSET FLAT:__gmpz_sub
	mov	ecx, OFFSET FLAT:__gmpz_add
	cmove	rax, rcx
	lea	rdx, [rbx + 8]
	mov	rdi, r15
	mov	rsi, r15
	call	rax
.label_147:
	mov	rdi, rbx
	add	rdi, 8
	cmp	dword ptr [rbx], 1
	jne	.label_146
	mov	rdi, qword ptr [rdi]
	call	free
	jmp	.label_150
	nop	word ptr [rax + rax]
.label_146:
	call	__gmpz_clear
.label_150:
	mov	rdi, rbx
	call	free
	mov	rbx, qword ptr [rip + args]
	mov	rdi, qword ptr [rbx]
	test	rdi, rdi
	jne	.label_139
.label_138:
	mov	rax, r14
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_137:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_149
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	mov	edi, 2
	xor	esi, esi
	xor	eax, eax
	mov	rdx, rcx
	call	error
.label_136:
	call	abort
.label_144:
	call	abort
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x402cf0

	.globl eval4
	.type eval4, @function
eval4:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x18
	mov	dword ptr [rsp + 0x14], edi
	movzx	r13d, dil
	mov	edi, r13d
	call	eval6
	mov	r15, rax
	jmp	.label_157
	nop	word ptr cs:[rax + rax]
.label_168:
	mov	rdi, rbx
	call	free
.label_157:
	mov	rbx, qword ptr [rip + args]
	mov	rdi, qword ptr [rbx]
	test	rdi, rdi
	je	.label_165
	mov	esi, OFFSET FLAT:label_166
	call	strcmp
	xor	ecx, ecx
	test	eax, eax
	sete	cl
	lea	rbx, [rbx + rcx*8]
	mov	qword ptr [rip + args],  rbx
	jne	.label_165
	mov	edi, r13d
	call	eval6
	mov	rbp, rax
	mov	rbx, rbp
	test	r13b, r13b
	je	.label_172
	mov	rdi, r15
	mov	rsi, rbx
	call	docolon
	mov	r14, rax
	lea	rdi, [r15 + 8]
	cmp	dword ptr [r15], 1
	jne	.label_184
	mov	rdi, qword ptr [rdi]
	call	free
	jmp	.label_156
	nop	
.label_184:
	call	__gmpz_clear
.label_156:
	mov	rdi, r15
	call	free
	mov	r15, r14
.label_172:
	add	rbp, 8
	cmp	dword ptr [rbx], 1
	jne	.label_169
	mov	rdi, qword ptr [rbp]
	call	free
	jmp	.label_168
	nop	word ptr [rax + rax]
.label_169:
	mov	rdi, rbp
	call	__gmpz_clear
	jmp	.label_168
.label_165:
	mov	qword ptr [rsp], r15
	mov	rdi, qword ptr [rbx]
	test	rdi, rdi
	je	.label_159
	mov	rax, qword ptr [rsp]
	lea	rax, [rax + 8]
	mov	qword ptr [rsp + 8], rax
	nop	word ptr [rax + rax]
.label_182:
	mov	esi, OFFSET FLAT:label_183
	call	strcmp
	xor	r12d, r12d
	xor	ecx, ecx
	test	eax, eax
	sete	cl
	lea	rbx, [rbx + rcx*8]
	mov	qword ptr [rip + args],  rbx
	je	.label_164
	mov	rdi, qword ptr [rbx]
	test	rdi, rdi
	je	.label_159
	mov	esi, OFFSET FLAT:label_161
	call	strcmp
	xor	ecx, ecx
	test	eax, eax
	sete	cl
	lea	rbx, [rbx + rcx*8]
	mov	qword ptr [rip + args],  rbx
	mov	r12d, 1
	je	.label_164
	mov	rdi, qword ptr [rbx]
	test	rdi, rdi
	je	.label_159
	mov	esi, OFFSET FLAT:label_174
	call	strcmp
	xor	ecx, ecx
	test	eax, eax
	sete	cl
	lea	rax, [rbx + rcx*8]
	mov	qword ptr [rip + args],  rax
	mov	r12d, 2
	jne	.label_159
.label_164:
	mov	edi, r13d
	call	eval6
	mov	rbx, rax
	jmp	.label_185
	nop	word ptr cs:[rax + rax]
.label_162:
	mov	rdi, rbp
	call	free
.label_185:
	mov	rbp, qword ptr [rip + args]
	mov	rdi, qword ptr [rbp]
	test	rdi, rdi
	je	.label_160
	mov	esi, OFFSET FLAT:label_166
	call	strcmp
	xor	ecx, ecx
	test	eax, eax
	sete	cl
	lea	rax, [rbp + rcx*8]
	mov	qword ptr [rip + args],  rax
	jne	.label_160
	mov	edi, r13d
	call	eval6
	mov	r14, rax
	mov	rbp, r14
	test	r13b, r13b
	je	.label_175
	mov	rdi, rbx
	mov	rsi, rbp
	call	docolon
	mov	r15, rax
	lea	rdi, [rbx + 8]
	cmp	dword ptr [rbx], 1
	jne	.label_155
	mov	rdi, qword ptr [rdi]
	call	free
	jmp	.label_154
	nop	
.label_155:
	call	__gmpz_clear
.label_154:
	mov	rdi, rbx
	call	free
	mov	rbx, r15
.label_175:
	add	r14, 8
	cmp	dword ptr [rbp], 1
	jne	.label_178
	mov	rdi, qword ptr [r14]
	call	free
	jmp	.label_162
	nop	word ptr [rax + rax]
.label_178:
	mov	rdi, r14
	call	__gmpz_clear
	jmp	.label_162
	nop	dword ptr [rax]
.label_160:
	mov	eax, dword ptr [rsp + 0x14]
	test	al, al
	je	.label_153
	mov	rax, qword ptr [rsp]
	mov	eax, dword ptr [rax]
	test	eax, eax
	je	.label_173
	cmp	eax, 1
	jne	.label_176
	mov	rax, qword ptr [rsp + 8]
	mov	rbp, qword ptr [rax]
	xor	eax, eax
	cmp	byte ptr [rbp], 0x2d
	sete	al
	mov	cl, byte ptr [rbp + rax]
	lea	rax, [rbp + rax + 1]
	nop	dword ptr [rax]
.label_158:
	movsx	ecx, cl
	add	ecx, -0x30
	cmp	ecx, 9
	ja	.label_152
	movzx	ecx, byte ptr [rax]
	inc	rax
	test	cl, cl
	jne	.label_158
	mov	edx, 0xa
	mov	rdi, qword ptr [rsp + 8]
	mov	rsi, rbp
	call	__gmpz_init_set_str
	mov	rdi, rbp
	call	free
	mov	rax, qword ptr [rsp]
	mov	dword ptr [rax], 0
.label_173:
	mov	eax, dword ptr [rbx]
	test	eax, eax
	je	.label_170
	cmp	eax, 1
	jne	.label_171
	mov	rbp, qword ptr [rbx + 8]
	xor	eax, eax
	cmp	byte ptr [rbp], 0x2d
	lea	rdi, [rbx + 8]
	sete	al
	mov	cl, byte ptr [rbp + rax]
	lea	rax, [rbp + rax + 1]
	nop	word ptr cs:[rax + rax]
.label_186:
	movsx	ecx, cl
	add	ecx, -0x30
	cmp	ecx, 9
	ja	.label_152
	movzx	ecx, byte ptr [rax]
	inc	rax
	test	cl, cl
	jne	.label_186
	mov	edx, 0xa
	mov	rsi, rbp
	call	__gmpz_init_set_str
	mov	rdi, rbp
	call	free
	mov	dword ptr [rbx], 0
.label_170:
	test	r12d, r12d
	mov	eax, OFFSET FLAT:__gmpz_mul
	je	.label_163
	cmp	dword ptr [rbx + 0xc], 0
	je	.label_167
	cmp	r12d, 1
	mov	eax, OFFSET FLAT:__gmpz_tdiv_r
	mov	ecx, OFFSET FLAT:__gmpz_tdiv_q
	cmove	rax, rcx
.label_163:
	lea	rdx, [rbx + 8]
	mov	rdi, qword ptr [rsp + 8]
	mov	rsi, rdi
	call	rax
.label_153:
	lea	rdi, [rbx + 8]
	cmp	dword ptr [rbx], 1
	jne	.label_177
	mov	rdi, qword ptr [rdi]
	call	free
	jmp	.label_179
	nop	dword ptr [rax + rax]
.label_177:
	call	__gmpz_clear
.label_179:
	mov	rdi, rbx
	call	free
	mov	rbx, qword ptr [rip + args]
	mov	rdi, qword ptr [rbx]
	test	rdi, rdi
	jne	.label_182
.label_159:
	mov	rax, qword ptr [rsp]
	add	rsp, 0x18
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_152:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_149
.label_181:
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	mov	edi, 2
	xor	esi, esi
	xor	eax, eax
	mov	rdx, rcx
	call	error
.label_176:
	call	abort
.label_171:
	call	abort
.label_167:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_180
	jmp	.label_181
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4030e0

	.globl eval6
	.type eval6, @function
eval6:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x98
	mov	r15d, edi
	mov	rbp, qword ptr [rip + args]
	mov	rdi, qword ptr [rbp]
	test	rdi, rdi
	je	.label_206
	mov	esi, OFFSET FLAT:label_140
	call	strcmp
	xor	ecx, ecx
	test	eax, eax
	sete	cl
	lea	rbx, [rbp + rcx*8]
	mov	qword ptr [rip + args],  rbx
	mov	rbp, qword ptr [rbp + rcx*8]
	je	.label_230
	test	rbp, rbp
	je	.label_206
	mov	esi, OFFSET FLAT:label_238
	mov	rdi, rbp
	call	strcmp
	xor	ecx, ecx
	test	eax, eax
	sete	cl
	lea	rbx, [rbx + rcx*8]
	mov	qword ptr [rip + args],  rbx
	je	.label_241
	mov	rdi, qword ptr [rbx]
	test	rdi, rdi
	je	.label_206
	mov	esi, OFFSET FLAT:label_208
	call	strcmp
	xor	ecx, ecx
	test	eax, eax
	sete	cl
	lea	rbx, [rbx + rcx*8]
	mov	qword ptr [rip + args],  rbx
	je	.label_262
	mov	rdi, qword ptr [rbx]
	test	rdi, rdi
	je	.label_206
	mov	esi, OFFSET FLAT:label_251
	call	strcmp
	xor	ecx, ecx
	test	eax, eax
	sete	cl
	lea	rbx, [rbx + rcx*8]
	mov	qword ptr [rip + args],  rbx
	je	.label_252
	mov	rdi, qword ptr [rbx]
	test	rdi, rdi
	je	.label_206
	mov	esi, OFFSET FLAT:label_259
	call	strcmp
	xor	ecx, ecx
	test	eax, eax
	sete	cl
	lea	rbx, [rbx + rcx*8]
	mov	qword ptr [rip + args],  rbx
	je	.label_261
	mov	rdi, qword ptr [rbx]
	test	rdi, rdi
	je	.label_206
	mov	esi, OFFSET FLAT:label_267
	call	strcmp
	xor	ecx, ecx
	test	eax, eax
	sete	cl
	lea	rbx, [rbx + rcx*8]
	mov	qword ptr [rip + args],  rbx
	je	.label_268
	mov	rdi, qword ptr [rbx]
	test	rdi, rdi
	je	.label_190
	mov	esi, OFFSET FLAT:label_193
	call	strcmp
	xor	ecx, ecx
	test	eax, eax
	sete	cl
	lea	rbx, [rbx + rcx*8]
	mov	qword ptr [rip + args],  rbx
	je	.label_195
.label_190:
	lea	rax, [rbx + 8]
	mov	qword ptr [rip + args],  rax
	mov	rbx, qword ptr [rbx]
	mov	edi, 0x18
	call	xmalloc
	mov	r13, rax
	mov	dword ptr [r13], 1
	mov	rdi, rbx
	jmp	.label_189
.label_230:
	test	rbp, rbp
	je	.label_206
	add	rbx, 8
	mov	qword ptr [rip + args],  rbx
	mov	edi, 0x18
	call	xmalloc
	mov	r13, rax
	mov	dword ptr [r13], 1
	mov	rdi, rbp
.label_189:
	call	xstrdup
	mov	qword ptr [r13 + 8], rax
	jmp	.label_197
.label_241:
	movzx	edi, r15b
	call	eval6
	mov	rbp, rax
	mov	eax, dword ptr [rbp]
	test	eax, eax
	je	.label_211
	cmp	eax, 1
	jne	.label_215
	lea	r14, [rbp + 8]
	mov	rbx, qword ptr [rbp + 8]
	jmp	.label_217
.label_262:
	movzx	ebx, r15b
	mov	edi, ebx
	call	eval6
	mov	r13, rax
	mov	edi, ebx
	call	eval6
	mov	rbp, rax
	mov	r14, rbp
	test	r15b, r15b
	je	.label_224
	mov	rdi, r13
	mov	rsi, r14
	call	docolon
	mov	r15, rax
	mov	rdi, r13
	add	rdi, 8
	cmp	dword ptr [r13], 1
	jne	.label_227
	mov	rdi, qword ptr [rdi]
	call	free
	jmp	.label_231
.label_211:
	lea	r14, [rbp + 8]
	xor	edi, edi
	mov	esi, 0xa
	mov	rdx, r14
	call	__gmpz_get_str
	mov	rbx, rax
	mov	rdi, r14
	call	__gmpz_clear
	mov	qword ptr [rbp + 8], rbx
	mov	dword ptr [rbp], 1
.label_217:
	mov	rdi, rbx
	call	mbslen
	mov	rbx, rax
	mov	edi, 0x18
	call	xmalloc
	mov	r13, rax
	mov	dword ptr [r13], 0
	lea	rdi, [r13 + 8]
	mov	rsi, rbx
	call	__gmpz_init_set_ui
	cmp	dword ptr [rbp], 1
	jne	.label_247
	mov	rdi, qword ptr [r14]
	call	free
	jmp	.label_233
.label_247:
	mov	rdi, rbp
	add	rdi, 8
.label_194:
	call	__gmpz_clear
.label_233:
	mov	rdi, rbp
	jmp	.label_187
.label_252:
	movzx	ebx, r15b
	mov	edi, ebx
	call	eval6
	mov	r12, rax
	mov	r14, r12
	mov	edi, ebx
	call	eval6
	mov	r15, rax
	mov	eax, dword ptr [r12]
	cmp	eax, 1
	je	.label_253
	test	eax, eax
	jne	.label_200
	lea	rbx, [r12 + 8]
	xor	edi, edi
	mov	esi, 0xa
	mov	rdx, rbx
	call	__gmpz_get_str
	mov	rbp, rax
	mov	rdi, rbx
	call	__gmpz_clear
	mov	qword ptr [r14 + 8], rbp
	mov	dword ptr [r14], 1
.label_253:
	mov	eax, dword ptr [r15]
	test	eax, eax
	je	.label_265
	cmp	eax, 1
	jne	.label_256
	lea	rax, [r15 + 8]
	mov	qword ptr [rsp + 8], rax
	mov	rbx, qword ptr [r15 + 8]
	jmp	.label_236
.label_261:
	movzx	ebx, r15b
	mov	edi, ebx
	call	eval6
	mov	r12, rax
	mov	edi, ebx
	call	eval6
	mov	r15, rax
	mov	edi, ebx
	call	eval6
	mov	rbp, rax
	mov	eax, dword ptr [r12]
	cmp	eax, 1
	je	.label_228
	mov	r14, rbp
	test	eax, eax
	jne	.label_198
	lea	rbx, [r12 + 8]
	xor	edi, edi
	mov	esi, 0xa
	mov	rdx, rbx
	call	__gmpz_get_str
	mov	rbp, rax
	mov	rdi, rbx
	call	__gmpz_clear
	mov	qword ptr [r12 + 8], rbp
	mov	dword ptr [r12], 1
	mov	rbp, r14
.label_228:
	mov	eax, dword ptr [r15]
	test	eax, eax
	je	.label_207
	cmp	eax, 1
	jne	.label_198
	mov	rbx, qword ptr [r15 + 8]
	xor	eax, eax
	cmp	byte ptr [rbx], 0x2d
	lea	rdi, [r15 + 8]
	sete	al
	mov	cl, byte ptr [rbx + rax]
	lea	rax, [rbx + rax + 1]
	nop	dword ptr [rax + rax]
.label_213:
	movsx	ecx, cl
	add	ecx, -0x30
	cmp	ecx, 9
	ja	.label_210
	movzx	ecx, byte ptr [rax]
	inc	rax
	test	cl, cl
	jne	.label_213
	mov	edx, 0xa
	mov	rsi, rbx
	call	__gmpz_init_set_str
	mov	rdi, rbx
	call	free
	mov	dword ptr [r15], 0
.label_207:
	mov	eax, dword ptr [rbp]
	test	eax, eax
	je	.label_221
	cmp	eax, 1
	jne	.label_223
	mov	rbx, qword ptr [rbp + 8]
	xor	eax, eax
	cmp	byte ptr [rbx], 0x2d
	lea	rdi, [rbp + 8]
	sete	al
	mov	cl, byte ptr [rbx + rax]
	lea	rax, [rbx + rax + 1]
	nop	dword ptr [rax]
.label_204:
	movsx	ecx, cl
	add	ecx, -0x30
	cmp	ecx, 9
	ja	.label_210
	movzx	ecx, byte ptr [rax]
	inc	rax
	test	cl, cl
	jne	.label_204
	mov	edx, 0xa
	mov	rsi, rbx
	call	__gmpz_init_set_str
	mov	rdi, rbx
	call	free
	mov	dword ptr [rbp], 0
.label_221:
	mov	eax, dword ptr [r15 + 0xc]
	mov	r14, -1
	test	eax, eax
	mov	rdx, -1
	js	.label_237
	cmp	eax, 1
	ja	.label_243
	mov	rcx, qword ptr [r15 + 0x10]
	xor	edx, edx
	test	eax, eax
	cmovne	rdx, qword ptr [rcx]
	cmp	rdx, -1
	jne	.label_237
.label_243:
	mov	rdx, -2
.label_237:
	mov	qword ptr [rsp], rdx
	mov	eax, dword ptr [rbp + 0xc]
	test	eax, eax
	js	.label_222
	cmp	eax, 1
	ja	.label_249
	mov	rcx, qword ptr [rbp + 0x10]
	xor	r14d, r14d
	test	eax, eax
	cmovne	r14, qword ptr [rcx]
	cmp	r14, -1
	jne	.label_222
.label_249:
	mov	r14, -2
.label_222:
	mov	qword ptr [rsp + 8], rbp
	mov	r13, qword ptr [r12 + 8]
	mov	rdi, r13
	call	strlen
	mov	rbp, rax
	call	__ctype_get_mb_cur_max
	cmp	rax, 2
	mov	rbx, rbp
	jb	.label_254
	mov	rdi, r13
	call	mbslen
	mov	rbx, rax
.label_254:
	mov	rcx, qword ptr [rsp]
	lea	rax, [rcx - 1]
	cmp	rax, rbx
	jae	.label_257
	lea	rax, [r14 + 1]
	cmp	rax, 1
	ja	.label_260
.label_257:
	mov	edi, OFFSET FLAT:label_46
	call	xstrdup
	mov	r14, rax
.label_212:
	mov	rbp, qword ptr [rsp + 8]
	lea	rbx, [r12 + 8]
	mov	edi, 0x18
	call	xmalloc
	mov	r13, rax
	mov	dword ptr [r13], 1
	mov	rdi, r14
	call	xstrdup
	mov	qword ptr [r13 + 8], rax
	mov	rdi, r14
	call	free
	jmp	.label_192
.label_265:
	lea	rbp, [r15 + 8]
	xor	edi, edi
	mov	esi, 0xa
	mov	rdx, rbp
	call	__gmpz_get_str
	mov	rbx, rax
	mov	qword ptr [rsp + 8], rbp
	mov	rdi, rbp
	call	__gmpz_clear
	mov	qword ptr [r15 + 8], rbx
	mov	dword ptr [r15], 1
.label_236:
	xor	ebp, ebp
	cmp	byte ptr [rbx], 0
	je	.label_201
	mov	rbp, qword ptr [r14 + 8]
	call	__ctype_get_mb_cur_max
	cmp	rax, 2
	jb	.label_203
	mov	qword ptr [rsp + 0x20], rbp
	mov	byte ptr [rsp + 0x10], 0
	mov	qword ptr [rsp + 0x14], 0
	mov	byte ptr [rsp + 0x1c], 0
	lea	rdi, [rsp + 0x10]
	call	mbuiter_multi_next
	mov	rax, qword ptr [rsp + 0x30]
	xor	ebp, ebp
	mov	rcx, rax
	shr	rcx, 0x20
	jne	.label_209
	test	al, al
	jne	.label_201
.label_209:
	lea	r13, [rsp + 0x58]
	xor	ecx, ecx
	mov	qword ptr [rsp + 0x50], r14
.label_255:
	inc	rcx
	mov	qword ptr [rsp], rcx
	cmp	qword ptr [rsp + 0x28], 1
	jne	.label_214
	mov	rbp, qword ptr [rsp + 0x20]
	movsx	esi, byte ptr [rbp]
	mov	rdi, rbx
	call	mbschr
	test	rax, rax
	mov	eax, 1
	je	.label_220
	jmp	.label_225
.label_214:
	mov	qword ptr [rsp + 0x68], rbx
	mov	byte ptr [rsp + 0x58], 0
	mov	qword ptr [rsp + 0x5c], 0
	jmp	.label_188
	nop	dword ptr [rax + rax]
.label_199:
	add	qword ptr [rsp + 0x68], r14
.label_188:
	mov	byte ptr [rsp + 0x64], 0
	mov	rdi, r13
	call	mbuiter_multi_next
	mov	rcx, qword ptr [rsp + 0x78]
	mov	rax, rcx
	shr	rax, 0x20
	test	cl, cl
	setne	cl
	je	.label_229
	test	eax, eax
	je	.label_234
.label_229:
	mov	rdx, qword ptr [rsp + 0x30]
	test	dl, dl
	je	.label_235
	xor	cl, 1
	test	cl, 1
	jne	.label_235
	shr	rdx, 0x20
	cmp	eax, edx
	je	.label_245
	mov	r14, qword ptr [rsp + 0x70]
	add	qword ptr [rsp + 0x68], r14
	jmp	.label_188
	nop	word ptr cs:[rax + rax]
.label_235:
	mov	r14, qword ptr [rsp + 0x70]
	cmp	r14, qword ptr [rsp + 0x28]
	jne	.label_199
	mov	rdi, qword ptr [rsp + 0x68]
	mov	rsi, qword ptr [rsp + 0x20]
	mov	rdx, r14
	call	memcmp
	test	eax, eax
	jne	.label_199
	jmp	.label_245
.label_234:
	mov	rbp, qword ptr [rsp + 0x20]
	mov	rax, qword ptr [rsp + 0x28]
	mov	r14, qword ptr [rsp + 0x50]
.label_220:
	add	rbp, rax
	mov	qword ptr [rsp + 0x20], rbp
	mov	byte ptr [rsp + 0x1c], 0
	lea	rdi, [rsp + 0x10]
	call	mbuiter_multi_next
	mov	rax, qword ptr [rsp + 0x30]
	mov	rcx, rax
	shr	rcx, 0x20
	mov	ebp, 0
	mov	rcx, qword ptr [rsp]
	jne	.label_255
	test	al, al
	je	.label_255
	jmp	.label_201
.label_227:
	call	__gmpz_clear
.label_231:
	mov	rdi, r13
	call	free
	mov	r13, r15
.label_224:
	add	rbp, 8
	cmp	dword ptr [r14], 1
	jne	.label_266
	mov	rdi, qword ptr [rbp]
	call	free
	jmp	.label_269
.label_266:
	mov	rdi, rbp
	call	__gmpz_clear
.label_269:
	mov	rdi, r14
	jmp	.label_187
.label_268:
	movzx	edi, r15b
	call	eval
	mov	r13, rax
	mov	rbx, qword ptr [rip + args]
	mov	rdi, qword ptr [rbx]
	test	rdi, rdi
	je	.label_191
	mov	esi, OFFSET FLAT:label_193
	call	strcmp
	xor	ecx, ecx
	test	eax, eax
	sete	cl
	lea	rax, [rbx + rcx*8]
	mov	qword ptr [rip + args],  rax
	je	.label_197
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_263
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
	mov	rax, qword ptr [rip + args]
	mov	rdx, qword ptr [rax]
	jmp	.label_205
.label_203:
	mov	rdi, rbp
	mov	rsi, rbx
	call	strcspn
	cmp	byte ptr [rbp + rax], 0
	mov	ebp, 0
	lea	rax, [rax + 1]
	cmovne	rbp, rax
	jmp	.label_201
.label_210:
	mov	edi, 0x18
	call	xmalloc
	mov	r13, rax
	mov	dword ptr [r13], 1
	mov	edi, OFFSET FLAT:label_46
	call	xstrdup
	mov	qword ptr [r13 + 8], rax
	lea	rbx, [r12 + 8]
.label_192:
	cmp	dword ptr [r12], 1
	jne	.label_216
	mov	rdi, qword ptr [rbx]
	call	free
	jmp	.label_219
.label_216:
	mov	rdi, r12
	add	rdi, 8
	call	__gmpz_clear
.label_219:
	mov	rdi, r12
	call	free
	mov	rdi, r15
	add	rdi, 8
	cmp	dword ptr [r15], 1
	jne	.label_242
	mov	rdi, qword ptr [rdi]
	call	free
	jmp	.label_226
.label_242:
	call	__gmpz_clear
.label_226:
	mov	rdi, r15
	call	free
	mov	rdi, rbp
	add	rdi, 8
	cmp	dword ptr [rbp], 1
	jne	.label_194
	mov	rdi, qword ptr [rdi]
	call	free
	jmp	.label_233
.label_245:
	mov	rbp, qword ptr [rsp]
	mov	r14, qword ptr [rsp + 0x50]
.label_201:
	add	r12, 8
	mov	edi, 0x18
	call	xmalloc
	mov	r13, rax
	mov	dword ptr [r13], 0
	lea	rdi, [r13 + 8]
	mov	rsi, rbp
	call	__gmpz_init_set_ui
	cmp	dword ptr [r14], 1
	jne	.label_244
	mov	rdi, qword ptr [r12]
	call	free
	jmp	.label_246
.label_244:
	mov	rdi, r12
	call	__gmpz_clear
.label_246:
	mov	rdi, r14
	call	free
	cmp	dword ptr [r15], 1
	jne	.label_248
	mov	rax, qword ptr [rsp + 8]
	mov	rdi, qword ptr [rax]
	call	free
	jmp	.label_250
.label_248:
	mov	rdi, r15
	add	rdi, 8
	call	__gmpz_clear
.label_250:
	mov	rdi, r15
.label_187:
	call	free
.label_197:
	mov	rax, r13
	add	rsp, 0x98
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_260:
	sub	rbx, rcx
	inc	rbx
	cmp	rbx, r14
	cmova	rbx, r14
	mov	r14, rcx
	call	__ctype_get_mb_cur_max
	cmp	rax, 1
	jne	.label_258
	lea	rdi, [rbx + 1]
	call	xmalloc
	mov	rcx, r14
	mov	r14, rax
	lea	rsi, [r13 + rcx - 1]
	mov	rcx, -1
	mov	rdi, r14
	mov	rdx, rbx
	call	__mempcpy_chk
	mov	r13, rax
	jmp	.label_196
.label_258:
	inc	rbp
	mov	rdi, rbp
	call	xmalloc
	mov	r14, rax
	mov	qword ptr [rsp + 0x20], r13
	mov	byte ptr [rsp + 0x10], 0
	mov	qword ptr [rsp + 0x14], 0
	mov	byte ptr [rsp + 0x1c], 0
	lea	rdi, [rsp + 0x10]
	call	mbuiter_multi_next
	mov	rcx, qword ptr [rsp + 0x30]
	test	cl, cl
	sete	al
	shr	rcx, 0x20
	setne	cl
	test	rbx, rbx
	mov	r13, r14
	je	.label_196
	or	cl, al
	mov	r13, r14
	je	.label_196
	mov	ebp, 1
	mov	r13, r14
.label_264:
	cmp	rbp, qword ptr [rsp]
	jb	.label_202
	dec	rbx
	mov	rsi, qword ptr [rsp + 0x20]
	mov	rdx, qword ptr [rsp + 0x28]
	mov	rcx, -1
	mov	rdi, r13
	call	__mempcpy_chk
	mov	r13, rax
.label_202:
	mov	rax, qword ptr [rsp + 0x28]
	add	qword ptr [rsp + 0x20], rax
	mov	byte ptr [rsp + 0x1c], 0
	lea	rdi, [rsp + 0x10]
	call	mbuiter_multi_next
	mov	rcx, qword ptr [rsp + 0x30]
	test	cl, cl
	sete	al
	shr	rcx, 0x20
	setne	cl
	test	rbx, rbx
	je	.label_196
	inc	rbp
	or	cl, al
	jne	.label_264
.label_196:
	mov	byte ptr [r13], 0
	jmp	.label_212
.label_225:
	mov	rbp, qword ptr [rsp]
	jmp	.label_201
.label_206:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_218
.label_240:
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
	mov	rax, qword ptr [rip + args]
	mov	rdx, qword ptr [rax - 8]
.label_205:
	xor	edi, edi
	mov	esi, 8
	call	quotearg_n_style
	mov	rcx, rax
	mov	edi, 2
	xor	esi, esi
	xor	eax, eax
	mov	rdx, rbx
	call	error
.label_215:
	call	abort
.label_198:
	call	abort
.label_200:
	call	abort
.label_256:
	call	abort
.label_223:
	call	abort
.label_195:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_232
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	mov	edi, 2
	xor	esi, esi
	xor	eax, eax
	mov	rdx, rcx
	call	error
.label_191:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_239
	jmp	.label_240
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x403b50

	.globl docolon
	.type docolon, @function
docolon:
	push	r15
	push	r14
	push	r12
	push	rbx
	sub	rsp, 0x1a8
	mov	r15, rsi
	mov	r14, rdi
	mov	eax, dword ptr [r14]
	cmp	eax, 1
	je	.label_285
	test	eax, eax
	jne	.label_288
	lea	rbx, [r14 + 8]
	xor	edi, edi
	mov	esi, 0xa
	mov	rdx, rbx
	call	__gmpz_get_str
	mov	r12, rax
	mov	rdi, rbx
	call	__gmpz_clear
	mov	qword ptr [r14 + 8], r12
	mov	dword ptr [r14], 1
.label_285:
	mov	eax, dword ptr [r15]
	test	eax, eax
	je	.label_273
	cmp	eax, 1
	jne	.label_276
	mov	rbx, qword ptr [r15 + 8]
	jmp	.label_279
.label_273:
	lea	r12, [r15 + 8]
	xor	edi, edi
	mov	esi, 0xa
	mov	rdx, r12
	call	__gmpz_get_str
	mov	rbx, rax
	mov	rdi, r12
	call	__gmpz_clear
	mov	qword ptr [r15 + 8], rbx
	mov	dword ptr [r15], 1
.label_279:
	xorps	xmm0, xmm0
	movaps	xmmword ptr [rsp], xmm0
	mov	qword ptr [rsp + 0x10], 0
	movaps	xmmword ptr [rsp + 0x60], xmm0
	lea	rax, [rsp + 0xa0]
	mov	qword ptr [rsp + 0x80], rax
	mov	qword ptr [rsp + 0x88], 0
	mov	qword ptr [rip + rpl_re_syntax_options],  0x2c6
	mov	rdi, rbx
	call	strlen
	lea	rdx, [rsp + 0x60]
	mov	rdi, rbx
	mov	rsi, rax
	call	rpl_re_compile_pattern
	mov	rcx, rax
	test	rcx, rcx
	jne	.label_281
	and	byte ptr [rsp + 0x98], 0x7f
	mov	rbx, qword ptr [r14 + 8]
	mov	rdi, rbx
	call	strlen
	lea	rdi, [rsp + 0x60]
	lea	r8, [rsp]
	xor	ecx, ecx
	mov	rsi, rbx
	mov	rdx, rax
	call	rpl_re_match
	mov	r15, rax
	test	r15, r15
	js	.label_286
	cmp	qword ptr [rsp + 0x90], 0
	je	.label_289
	mov	rax, qword ptr [rsp + 0x10]
	mov	rax, qword ptr [rax + 8]
	mov	rcx, qword ptr [r14 + 8]
	mov	byte ptr [rcx + rax], 0
	mov	rbx, qword ptr [r14 + 8]
	mov	rax, qword ptr [rsp + 8]
	add	rbx, qword ptr [rax + 8]
	mov	edi, 0x18
	call	xmalloc
	mov	r14, rax
	mov	dword ptr [r14], 1
	mov	rdi, rbx
	jmp	.label_274
.label_286:
	cmp	r15, -1
	jne	.label_280
	mov	rbx, qword ptr [rsp + 0x90]
	mov	edi, 0x18
	call	xmalloc
	mov	r14, rax
	cmp	rbx, 0
	je	.label_284
	mov	dword ptr [r14], 1
	mov	edi, OFFSET FLAT:label_46
.label_274:
	call	xstrdup
	mov	qword ptr [r14 + 8], rax
	jmp	.label_287
.label_289:
	call	__ctype_get_mb_cur_max
	cmp	rax, 1
	mov	rbx, r15
	je	.label_277
	mov	r12, qword ptr [r14 + 8]
	mov	qword ptr [rsp + 0x30], r12
	mov	byte ptr [rsp + 0x20], 0
	mov	qword ptr [rsp + 0x24], 0
	mov	byte ptr [rsp + 0x2c], 0
	lea	rdi, [rsp + 0x20]
	call	mbuiter_multi_next
	mov	rax, qword ptr [rsp + 0x40]
	xor	ebx, ebx
	mov	rcx, rax
	shr	rcx, 0x20
	jne	.label_278
	test	al, al
	jne	.label_277
.label_278:
	xor	ebx, ebx
	lea	r14, [rsp + 0x20]
	nop	word ptr cs:[rax + rax]
.label_270:
	mov	rax, qword ptr [rsp + 0x30]
	mov	rcx, rax
	sub	rcx, r12
	cmp	rcx, r15
	adc	rbx, 0
	cmp	rcx, r15
	jae	.label_277
	add	rax, qword ptr [rsp + 0x38]
	mov	qword ptr [rsp + 0x30], rax
	mov	byte ptr [rsp + 0x2c], 0
	mov	rdi, r14
	call	mbuiter_multi_next
	mov	rax, qword ptr [rsp + 0x40]
	mov	rcx, rax
	shr	rcx, 0x20
	jne	.label_270
	test	al, al
	je	.label_270
.label_277:
	mov	edi, 0x18
	call	xmalloc
	mov	r14, rax
	mov	dword ptr [r14], 0
	lea	rdi, [r14 + 8]
	mov	rsi, rbx
	jmp	.label_272
.label_284:
	mov	dword ptr [r14], 0
	mov	rdi, r14
	add	rdi, 8
	xor	esi, esi
.label_272:
	call	__gmpz_init_set_ui
.label_287:
	cmp	qword ptr [rsp], 0
	je	.label_283
	mov	rdi, qword ptr [rsp + 8]
	call	free
	mov	rdi, qword ptr [rsp + 0x10]
	call	free
.label_283:
	mov	qword ptr [rsp + 0x80], 0
	lea	rdi, [rsp + 0x60]
	call	rpl_regfree
	mov	rax, r14
	add	rsp, 0x1a8
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	ret	
.label_288:
	call	abort
.label_276:
	call	abort
.label_281:
	mov	edi, 2
	xor	esi, esi
	mov	edx, OFFSET FLAT:label_271
	xor	eax, eax
	call	error
.label_280:
	mov	ebx, 0x4b
	cmp	r15, -2
	jne	.label_275
	call	__errno_location
	mov	ebx, dword ptr [rax]
.label_275:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_282
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	mov	edi, 3
	xor	eax, eax
	mov	esi, ebx
	mov	rdx, rcx
	call	error
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x403e60
	.globl close_stdout_set_file_name
	.type close_stdout_set_file_name, @function
close_stdout_set_file_name:

	mov	qword ptr [rip + file_name],  rdi
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x403e70
	.globl close_stdout_set_ignore_EPIPE
	.type close_stdout_set_ignore_EPIPE, @function
close_stdout_set_ignore_EPIPE:

	mov	byte ptr [rip + ignore_EPIPE],  dil
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x403e80

	.globl close_stdout
	.type close_stdout, @function
close_stdout:
	push	rbp
	push	rbx
	push	rax
	mov	rdi, qword ptr [rip + stdout]
	call	close_stream
	test	eax, eax
	je	.label_295
	mov	bl, byte ptr [rip + ignore_EPIPE]
	call	__errno_location
	mov	rbp, rax
	cmp	bl, 0
	je	.label_291
	cmp	dword ptr [rbp], 0x20
	jne	.label_291
.label_295:
	mov	rdi, qword ptr [rip + stderr]
	call	close_stream
	test	eax, eax
	jne	.label_293
	add	rsp, 8
	pop	rbx
	pop	rbp
	ret	
.label_291:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_290
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
	mov	rdi, qword ptr [rip + file_name]
	test	rdi, rdi
	mov	ebp, dword ptr [rbp]
	jne	.label_292
	xor	edi, edi
	mov	edx, OFFSET FLAT:label_271
	xor	eax, eax
	mov	esi, ebp
	mov	rcx, rbx
	call	error
	mov	edi, dword ptr [rip + exit_failure]
	call	_exit
.label_293:
	mov	edi, dword ptr [rip + exit_failure]
	call	_exit
.label_292:
	call	quotearg_colon
	mov	rcx, rax
	xor	edi, edi
	mov	edx, OFFSET FLAT:label_294
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
	#Procedure 0x403f40

	.globl parse_long_options
	.type parse_long_options, @function
parse_long_options:
	push	rbp
	push	r15
	push	r14
	push	r12
	push	rbx
	sub	rsp, 0xd0
	mov	rbx, r9
	mov	r14, r8
	mov	r15, rcx
	mov	r12, rdx
	test	al, al
	je	.label_296
	movaps	xmmword ptr [rsp + 0x50], xmm0
	movaps	xmmword ptr [rsp + 0x60], xmm1
	movaps	xmmword ptr [rsp + 0x70], xmm2
	movaps	xmmword ptr [rsp + 0x80], xmm3
	movaps	xmmword ptr [rsp + 0x90], xmm4
	movaps	xmmword ptr [rsp + 0xa0], xmm5
	movaps	xmmword ptr [rsp + 0xb0], xmm6
	movaps	xmmword ptr [rsp + 0xc0], xmm7
.label_296:
	mov	ebp, dword ptr [rip + opterr]
	mov	dword ptr [rip + opterr],  0
	cmp	edi, 2
	jne	.label_298
	mov	edi, 2
	mov	edx, OFFSET FLAT:label_140
	mov	ecx, OFFSET FLAT:long_options
	xor	r8d, r8d
	call	getopt_long
	cmp	eax, 0x68
	je	.label_297
	cmp	eax, 0x76
	jne	.label_298
	lea	rax, [rsp + 0x20]
	mov	qword ptr [rsp + 0x10], rax
	lea	rax, [rsp + 0x100]
	mov	qword ptr [rsp + 8], rax
	mov	dword ptr [rsp + 4], 0x30
	mov	dword ptr [rsp], 0x30
	mov	rdi, qword ptr [rip + stdout]
	lea	r8, [rsp]
	mov	rsi, r12
	mov	rdx, r15
	mov	rcx, r14
	call	version_etc_va
	xor	edi, edi
	call	exit
.label_297:
	xor	edi, edi
	call	rbx
.label_298:
	mov	dword ptr [rip + opterr],  ebp
	mov	dword ptr [rip + optind],  0
	add	rsp, 0xd0
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	pop	rbp
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x404040
	.globl parse_gnu_standard_options_only
	.type parse_gnu_standard_options_only, @function
parse_gnu_standard_options_only:

	push	rbp
	push	r15
	push	r14
	push	rbx
	sub	rsp, 0xd8
	mov	r14, r8
	mov	r15, rcx
	mov	rbx, rdx
	test	al, al
	je	.label_299
	movaps	xmmword ptr [rsp + 0x50], xmm0
	movaps	xmmword ptr [rsp + 0x60], xmm1
	movaps	xmmword ptr [rsp + 0x70], xmm2
	movaps	xmmword ptr [rsp + 0x80], xmm3
	movaps	xmmword ptr [rsp + 0x90], xmm4
	movaps	xmmword ptr [rsp + 0xa0], xmm5
	movaps	xmmword ptr [rsp + 0xb0], xmm6
	movaps	xmmword ptr [rsp + 0xc0], xmm7
.label_299:
	mov	ebp, dword ptr [rip + opterr]
	mov	dword ptr [rip + opterr],  1
	mov	eax, OFFSET FLAT:label_46
	mov	edx, OFFSET FLAT:label_140
	test	r9b, r9b
	cmovne	rdx, rax
	mov	ecx, OFFSET FLAT:long_options
	xor	r8d, r8d
	call	getopt_long
	cmp	eax, -1
	je	.label_303
	mov	rcx, qword ptr [rsp + 0x100]
	cmp	eax, 0x68
	je	.label_300
	cmp	eax, 0x76
	je	.label_301
	mov	edi, dword ptr [rip + exit_failure]
	jmp	.label_302
.label_300:
	xor	edi, edi
.label_302:
	call	rcx
.label_303:
	mov	dword ptr [rip + opterr],  ebp
	add	rsp, 0xd8
	pop	rbx
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_301:
	lea	rax, [rsp + 0x20]
	mov	qword ptr [rsp + 0x10], rax
	lea	rax, [rsp + 0x108]
	mov	qword ptr [rsp + 8], rax
	mov	dword ptr [rsp + 4], 0x30
	mov	dword ptr [rsp], 0x30
	mov	rdi, qword ptr [rip + stdout]
	lea	r8, [rsp]
	mov	rsi, rbx
	mov	rdx, r15
	mov	rcx, r14
	call	version_etc_va
	xor	edi, edi
	call	exit
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x404140

	.globl mbschr
	.type mbschr, @function
mbschr:
	push	r15
	push	r14
	push	rbx
	sub	rsp, 0x40
	mov	ebx, esi
	mov	r14, rdi
	call	__ctype_get_mb_cur_max
	mov	ecx, ebx
	and	ecx, 0xf0
	cmp	ecx, 0x30
	jb	.label_304
	cmp	rax, 2
	jb	.label_304
	mov	qword ptr [rsp + 0x10], r14
	mov	byte ptr [rsp], 0
	mov	qword ptr [rsp + 4], 0
	mov	byte ptr [rsp + 0xc], 0
	lea	rdi, [rsp]
	call	mbuiter_multi_next
	mov	rax, qword ptr [rsp + 0x20]
	xor	r14d, r14d
	test	al, al
	je	.label_307
	shr	rax, 0x20
	je	.label_306
.label_307:
	lea	r15, [rsp]
	xor	r14d, r14d
	nop	
.label_308:
	mov	rax, qword ptr [rsp + 0x10]
	mov	rcx, qword ptr [rsp + 0x18]
	cmp	rcx, 1
	jne	.label_309
	cmp	byte ptr [rax], bl
	je	.label_305
.label_309:
	add	rax, rcx
	mov	qword ptr [rsp + 0x10], rax
	mov	byte ptr [rsp + 0xc], 0
	mov	rdi, r15
	call	mbuiter_multi_next
	mov	rax, qword ptr [rsp + 0x20]
	test	al, al
	je	.label_308
	shr	rax, 0x20
	jne	.label_308
	jmp	.label_306
.label_304:
	mov	rdi, r14
	mov	esi, ebx
	add	rsp, 0x40
	pop	rbx
	pop	r14
	pop	r15
	jmp	strchr
.label_305:
	mov	r14, rax
.label_306:
	mov	rax, r14
	add	rsp, 0x40
	pop	rbx
	pop	r14
	pop	r15
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x404200

	.globl mbslen
	.type mbslen, @function
mbslen:
	push	r14
	push	rbx
	sub	rsp, 0x48
	mov	rbx, rdi
	call	__ctype_get_mb_cur_max
	cmp	rax, 2
	jb	.label_313
	mov	qword ptr [rsp + 0x18], rbx
	mov	byte ptr [rsp + 8], 0
	mov	qword ptr [rsp + 0xc], 0
	mov	byte ptr [rsp + 0x14], 0
	lea	rdi, [rsp + 8]
	call	mbuiter_multi_next
	mov	rax, qword ptr [rsp + 0x28]
	xor	ebx, ebx
	test	al, al
	je	.label_312
	shr	rax, 0x20
	je	.label_310
.label_312:
	xor	ebx, ebx
	lea	r14, [rsp + 8]
	nop	
.label_311:
	inc	rbx
	mov	rax, qword ptr [rsp + 0x20]
	add	qword ptr [rsp + 0x18], rax
	mov	byte ptr [rsp + 0x14], 0
	mov	rdi, r14
	call	mbuiter_multi_next
	mov	rax, qword ptr [rsp + 0x28]
	test	al, al
	je	.label_311
	shr	rax, 0x20
	jne	.label_311
.label_310:
	mov	rax, rbx
	add	rsp, 0x48
	pop	rbx
	pop	r14
	ret	
.label_313:
	mov	rdi, rbx
	add	rsp, 0x48
	pop	rbx
	pop	r14
	jmp	strlen
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4042a0

	.globl mbuiter_multi_next
	.type mbuiter_multi_next, @function
mbuiter_multi_next:
	push	r15
	push	r14
	push	r12
	push	rbx
	push	rax
	mov	rbx, rdi
	cmp	byte ptr [rbx + 0xc], 0
	jne	.label_325
	cmp	byte ptr [rbx], 0
	mov	r15, qword ptr [rbx + 0x10]
	je	.label_329
	lea	r14, [rbx + 4]
.label_321:
	lea	r12, [rbx + 0x24]
	call	__ctype_get_mb_cur_max
	mov	rdi, r15
	mov	rsi, rax
	call	strnlen1
	mov	rdi, r12
	mov	rsi, r15
	mov	rdx, rax
	mov	rcx, r14
	call	rpl_mbrtowc
	mov	qword ptr [rbx + 0x18], rax
	cmp	rax, -2
	je	.label_327
	test	rax, rax
	je	.label_328
	cmp	rax, -1
	jne	.label_314
	mov	qword ptr [rbx + 0x18], 1
	mov	byte ptr [rbx + 0x20], 0
	jmp	.label_326
.label_329:
	movzx	eax, byte ptr [r15]
	mov	rcx, rax
	shr	rcx, 5
	mov	ecx, dword ptr [(rcx * 4) + is_basic_table]
	bt	ecx, eax
	jae	.label_316
	mov	qword ptr [rbx + 0x18], 1
	movsx	eax, byte ptr [r15]
	mov	dword ptr [rbx + 0x24], eax
	mov	byte ptr [rbx + 0x20], 1
	jmp	.label_326
.label_327:
	mov	rdi, qword ptr [rbx + 0x10]
	call	strlen
	mov	qword ptr [rbx + 0x18], rax
	mov	byte ptr [rbx + 0x20], 0
	jmp	.label_326
.label_328:
	mov	qword ptr [rbx + 0x18], 1
	mov	rax, qword ptr [rbx + 0x10]
	cmp	byte ptr [rax], 0
	jne	.label_315
	cmp	dword ptr [r12], 0
	jne	.label_323
.label_314:
	mov	byte ptr [rbx + 0x20], 1
	mov	rdi, r14
	call	mbsinit
	test	eax, eax
	je	.label_326
	mov	byte ptr [rbx], 0
.label_326:
	mov	byte ptr [rbx + 0xc], 1
.label_325:
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	ret	
.label_316:
	lea	r14, [rbx + 4]
	mov	rdi, r14
	call	mbsinit
	test	eax, eax
	je	.label_320
	mov	byte ptr [rbx], 1
	jmp	.label_321
.label_315:
	mov	edi, OFFSET FLAT:label_324
	mov	esi, OFFSET FLAT:label_318
	mov	edx, 0xb2
	mov	ecx, OFFSET FLAT:label_319
	call	__assert_fail
.label_323:
	mov	edi, OFFSET FLAT:label_322
	mov	esi, OFFSET FLAT:label_318
	mov	edx, 0xb3
	mov	ecx, OFFSET FLAT:label_319
	call	__assert_fail
.label_320:
	mov	edi, OFFSET FLAT:label_317
	mov	esi, OFFSET FLAT:label_318
	mov	edx, 0x96
	mov	ecx, OFFSET FLAT:label_319
	call	__assert_fail
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4043f0
	.globl mbuiter_multi_reloc
	.type mbuiter_multi_reloc, @function
mbuiter_multi_reloc:

	add	qword ptr [rdi + 0x10], rsi
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x404400
	.globl mbuiter_multi_copy
	.type mbuiter_multi_copy, @function
mbuiter_multi_copy:

	push	r15
	push	r14
	push	rbx
	mov	rbx, rsi
	mov	r14, rdi
	mov	al, byte ptr [rbx]
	test	al, al
	mov	byte ptr [r14], al
	je	.label_330
	mov	rax, qword ptr [rbx + 4]
	mov	qword ptr [r14 + 4], rax
	jmp	.label_331
.label_330:
	mov	qword ptr [r14 + 4], 0
.label_331:
	mov	al, byte ptr [rbx + 0xc]
	mov	byte ptr [r14 + 0xc], al
	mov	rsi, qword ptr [rbx + 0x10]
	lea	rax, [rbx + 0x28]
	cmp	rsi, rax
	jne	.label_332
	lea	r15, [r14 + 0x28]
	mov	rdx, qword ptr [rbx + 0x18]
	mov	rdi, r15
	call	memcpy
	mov	rsi, r15
.label_332:
	mov	qword ptr [r14 + 0x10], rsi
	mov	rax, qword ptr [rbx + 0x18]
	mov	qword ptr [r14 + 0x18], rax
	mov	rax, qword ptr [rbx + 0x20]
	test	al, al
	mov	byte ptr [r14 + 0x20], al
	je	.label_333
	shr	rax, 0x20
	mov	dword ptr [r14 + 0x24], eax
.label_333:
	pop	rbx
	pop	r14
	pop	r15
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x404480

	.globl set_program_name
	.type set_program_name, @function
set_program_name:
	push	r14
	push	rbx
	push	rax
	mov	rbx, rdi
	test	rbx, rbx
	je	.label_334
	mov	esi, 0x2f
	mov	rdi, rbx
	call	strrchr
	test	rax, rax
	lea	r14, [rax + 1]
	cmove	r14, rbx
	mov	rax, r14
	sub	rax, rbx
	cmp	rax, 7
	jl	.label_336
	lea	rdi, [r14 - 7]
	mov	esi, OFFSET FLAT:label_338
	mov	edx, 7
	call	strncmp
	test	eax, eax
	jne	.label_336
	mov	esi, OFFSET FLAT:label_337
	mov	edx, 3
	mov	rdi, r14
	call	strncmp
	test	eax, eax
	jne	.label_339
	add	r14, 3
	mov	qword ptr [rip + __progname],  r14
.label_339:
	mov	rbx, r14
.label_336:
	mov	qword ptr [rip + program_name],  rbx
	mov	qword ptr [rip + __progname_full],  rbx
	add	rsp, 8
	pop	rbx
	pop	r14
	ret	
.label_334:
	mov	rcx, qword ptr [rip + stderr]
	mov	edi, OFFSET FLAT:label_335
	mov	esi, 0x37
	mov	edx, 1
	call	fwrite
	call	abort
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x404530
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
	#Procedure 0x404570
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
	#Procedure 0x404580
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
	#Procedure 0x404590
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
	#Procedure 0x4045d0
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
	#Procedure 0x4045f0
	.globl set_custom_quoting
	.type set_custom_quoting, @function
set_custom_quoting:

	test	rdi, rdi
	mov	eax, OFFSET FLAT:default_quoting_options
	cmovne	rax, rdi
	mov	dword ptr [rax], 0xa
	test	rsi, rsi
	je	.label_340
	test	rdx, rdx
	je	.label_340
	mov	qword ptr [rax + 0x28], rsi
	mov	qword ptr [rax + 0x30], rdx
	ret	
.label_340:
	push	rax
	call	abort
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x404620
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
	#Procedure 0x4046a0

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
.label_429:
	mov	r11, rbp
	xor	r14d, r14d
	mov	ecx, r15d
	cmp	r15d, 0xa
	ja	.label_426
	mov	edi, 7
	mov	r13b, 1
	xor	esi, esi
	mov	r8, qword ptr [rsp + 0x30]
	jmp	qword ptr [(rcx * 8) + label_349]
.label_2467:
	mov	byte ptr [rsp + 7], r10b
	mov	edi, OFFSET FLAT:label_437
	mov	esi, r15d
	mov	rbx, r11
	mov	ebp, r9d
	call	gettext_quote
	mov	qword ptr [rsp + 0x78], rax
	mov	edi, OFFSET FLAT:label_374
	mov	esi, r15d
	call	gettext_quote
	mov	r9d, ebp
	mov	r10b, byte ptr [rsp + 7]
	mov	r11, rbx
	mov	qword ptr [rsp + 0x70], rax
.label_2468:
	mov	dword ptr [rsp + 0x50], r9d
	mov	byte ptr [rsp + 7], r10b
	test	r12b, 1
	mov	r14d, 0
	mov	rcx, qword ptr [rsp + 0x78]
	jne	.label_396
	mov	al, byte ptr [rcx]
	test	al, al
	mov	r14d, 0
	je	.label_396
	xor	r14d, r14d
	nop	word ptr cs:[rax + rax]
.label_461:
	cmp	r14, r11
	jae	.label_425
	mov	rdx, qword ptr [rsp + 8]
	mov	byte ptr [rdx + r14], al
.label_425:
	movzx	eax, byte ptr [rcx + r14 + 1]
	inc	r14
	test	al, al
	jne	.label_461
.label_396:
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
	jmp	.label_345
.label_2460:
	xor	edi, edi
	xor	r14d, r14d
	mov	r13d, eax
	xor	esi, esi
	jmp	.label_345
.label_2463:
	mov	al, 1
.label_2461:
	mov	r12b, 1
.label_2464:
	test	r12b, 1
	mov	cl, 1
	je	.label_362
	mov	ecx, eax
.label_362:
	mov	al, cl
.label_2462:
	test	r12b, 1
	jne	.label_365
	test	r11, r11
	je	.label_352
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx], 0x27
.label_352:
	mov	r14d, 1
	jmp	.label_368
.label_365:
	xor	r14d, r14d
.label_368:
	mov	ecx, OFFSET FLAT:label_374
	mov	qword ptr [rsp + 0x48], rcx
	mov	ecx, 1
	mov	qword ptr [rsp + 0x40], rcx
	mov	r13d, eax
	mov	sil, r12b
	mov	edi, 2
	jmp	.label_345
.label_2465:
	test	r12b, 1
	jne	.label_381
	test	r11, r11
	je	.label_384
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax], 0x22
.label_384:
	mov	r14d, 1
	jmp	.label_386
.label_2466:
	mov	r13b, 1
	mov	edi, 5
	xor	r14d, r14d
	mov	eax, OFFSET FLAT:label_388
	mov	qword ptr [rsp + 0x48], rax
	mov	eax, 1
	mov	qword ptr [rsp + 0x40], rax
	mov	sil, 1
	jmp	.label_345
.label_381:
	xor	r14d, r14d
.label_386:
	mov	eax, OFFSET FLAT:label_388
	mov	qword ptr [rsp + 0x48], rax
	mov	eax, 1
	mov	qword ptr [rsp + 0x40], rax
	mov	r13b, 1
	mov	sil, r12b
	mov	edi, 5
	nop	word ptr cs:[rax + rax]
.label_345:
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
	jmp	.label_405
	nop	dword ptr [rax]
.label_367:
	inc	rsi
.label_405:
	cmp	rbp, -1
	je	.label_444
	cmp	rsi, rbp
	jne	.label_445
	jmp	.label_446
	nop	word ptr cs:[rax + rax]
.label_444:
	mov	rcx, -1
	cmp	byte ptr [rdi + rsi], 0
	je	.label_451
.label_445:
	cmp	byte ptr [rsp + 0x2f], 0
	je	.label_379
	mov	rax, qword ptr [rsp + 0x40]
	lea	rbx, [rsi + rax]
	cmp	rax, 2
	jb	.label_455
	cmp	rbp, -1
	jne	.label_455
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
.label_455:
	cmp	rbx, rbp
	jbe	.label_346
.label_379:
	xor	r8d, r8d
.label_377:
	movzx	r15d, byte ptr [rdi + rsi]
	cmp	r15, 0x7e
	ja	.label_348
	xor	edx, edx
	mov	r13b, 1
	mov	cl, 0x6e
	mov	bl, 0x61
	xor	eax, eax
	jmp	qword ptr [(r15 * 8) + label_353]
.label_2444:
	test	rsi, rsi
	jne	.label_342
	jmp	.label_360
	nop	word ptr cs:[rax + rax]
.label_346:
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
	jne	.label_375
	cmp	byte ptr [rsp + 6], 0
	mov	rdi, qword ptr [rsp + 0x30]
	mov	r11, rbx
	mov	r10d, r15d
	mov	rax, qword ptr [rsp + 0x38]
	mov	r9d, ebp
	mov	rsi, r12
	mov	r12, rax
	mov	rbp, qword ptr [rsp + 0x20]
	je	.label_377
	jmp	.label_358
.label_375:
	mov	rdi, qword ptr [rsp + 0x30]
	mov	r11, rbx
	mov	r10d, r15d
	mov	rax, qword ptr [rsp + 0x38]
	mov	r9d, ebp
	mov	rsi, r12
	mov	r12, rax
	mov	rbp, qword ptr [rsp + 0x20]
	jmp	.label_377
.label_2448:
	xor	eax, eax
	cmp	rbp, -1
	je	.label_395
	test	rsi, rsi
	jne	.label_397
	cmp	rbp, 1
	je	.label_360
	xor	r13d, r13d
	jmp	.label_355
.label_2437:
	cmp	byte ptr [rsp + 0x17], 0
	je	.label_402
	cmp	byte ptr [rsp + 6], 0
	jne	.label_404
	cmp	r12d, 2
	jne	.label_409
	mov	eax, r9d
	and	al, 1
	jne	.label_409
	cmp	r14, r11
	jae	.label_411
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], 0x27
.label_411:
	lea	rax, [r14 + 1]
	cmp	rax, r11
	jae	.label_416
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + rax], 0x24
.label_416:
	lea	rax, [r14 + 2]
	cmp	rax, r11
	jae	.label_401
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + rax], 0x27
.label_401:
	add	r14, 3
	mov	r9b, 1
.label_409:
	mov	rcx, r14
	cmp	rcx, r11
	jae	.label_430
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + rcx], 0x5c
.label_430:
	lea	r14, [rcx + 1]
	mov	al, 1
	mov	r15b, 0x30
	cmp	r12d, 2
	je	.label_435
	lea	rdx, [rsi + 1]
	cmp	rdx, rbp
	jae	.label_435
	mov	dl, byte ptr [rdi + rdx]
	add	dl, 0xd0
	cmp	dl, 9
	ja	.label_435
	cmp	r14, r11
	jae	.label_433
	mov	rdx, qword ptr [rsp + 8]
	mov	byte ptr [rdx + r14], 0x30
.label_433:
	lea	rdx, [rcx + 2]
	cmp	rdx, r11
	jae	.label_415
	mov	rbx, qword ptr [rsp + 8]
	mov	byte ptr [rbx + rdx], 0x30
.label_415:
	add	rcx, 3
	xor	r13d, r13d
	mov	r14, rcx
	jmp	.label_355
.label_2438:
	mov	bl, 0x62
	jmp	.label_453
.label_2439:
	mov	cl, 0x74
	jmp	.label_361
.label_2440:
	mov	bl, 0x76
	jmp	.label_453
.label_2441:
	mov	bl, 0x66
	jmp	.label_453
.label_2442:
	mov	cl, 0x72
	jmp	.label_361
.label_2445:
	mov	r15b, 0x27
	mov	al, 1
	mov	qword ptr [rsp + 0xa0], rax
	cmp	r12d, 2
	jne	.label_460
	cmp	byte ptr [rsp + 6], 0
	jne	.label_351
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
	jae	.label_341
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], 0x27
.label_341:
	lea	rax, [r14 + 1]
	cmp	rax, r11
	jae	.label_356
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + rax], 0x5c
.label_356:
	lea	rax, [r14 + 2]
	cmp	rax, r11
	jae	.label_363
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + rax], 0x27
.label_363:
	add	r14, 3
	xor	r9d, r9d
.label_460:
	xor	eax, eax
	mov	r13b, 1
	jmp	.label_355
.label_2446:
	mov	r15b, 0x3f
	cmp	r12d, 5
	je	.label_370
	cmp	r12d, 2
	jne	.label_342
	cmp	byte ptr [rsp + 6], 0
	je	.label_342
	jmp	.label_351
.label_2447:
	cmp	r12d, 2
	jne	.label_382
	cmp	byte ptr [rsp + 6], 0
	jne	.label_351
	mov	r15b, 0x5c
	xor	eax, eax
	xor	r13d, r13d
	jmp	.label_347
.label_348:
	mov	dword ptr [rsp + 0x54], r8d
	mov	dword ptr [rsp + 0x50], r9d
	mov	byte ptr [rsp + 7], r10b
	mov	qword ptr [rsp + 0x98], r11
	cmp	qword ptr [rsp + 0xa8], 1
	jne	.label_390
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
.label_391:
	and	r13b, 1
	mov	r8d, r13d
	or	r8b, byte ptr [rsp + 0x2a]
	mov	qword ptr [rsp + 0x60], r12
	cmp	r12, 1
	mov	r11, qword ptr [rsp + 0x98]
	mov	r10b, byte ptr [rsp + 7]
	mov	r12, qword ptr [rsp + 0x38]
	mov	r9d, dword ptr [rsp + 0x50]
	ja	.label_408
	test	r8b, r8b
	je	.label_408
	xor	eax, eax
	mov	rbp, qword ptr [rsp + 0x20]
	mov	r8d, dword ptr [rsp + 0x54]
	jmp	.label_355
.label_395:
	test	rsi, rsi
	jne	.label_432
	mov	cl, byte ptr [rdi + 1]
	test	cl, cl
	jne	.label_432
.label_360:
	mov	dl, 1
.label_2443:
	cmp	byte ptr [rsp + 0x1f], 0
	je	.label_351
	xor	eax, eax
	mov	r13b, dl
	nop	word ptr [rax + rax]
.label_355:
	cmp	byte ptr [rsp + 0x2e], 0
	je	.label_439
	cmp	qword ptr [rsp + 0xf0], 0
	jne	.label_441
	jmp	.label_421
	nop	word ptr cs:[rax + rax]
.label_439:
	cmp	byte ptr [rsp + 0x2d], 0
	je	.label_421
.label_441:
	mov	ebx, r8d
	mov	r8, rsi
	mov	ecx, r15d
	shr	cl, 5
	movzx	edx, cl
	mov	esi, 1
	mov	ecx, r15d
	shl	esi, cl
	test	bl, bl
	jne	.label_448
	mov	rcx, qword ptr [rsp + 0xf0]
	and	esi, dword ptr [rcx + rdx*4]
	mov	ebx, r15d
	mov	rsi, r8
	je	.label_347
	jmp	.label_459
	nop	dword ptr [rax]
.label_421:
	test	r8b, r8b
	mov	ebx, r15d
	jne	.label_459
	jmp	.label_347
.label_448:
	mov	ebx, r15d
	mov	rsi, r8
	jmp	.label_459
.label_402:
	cmp	dword ptr [rsp + 0x90], 0
	jne	.label_367
	xor	r15d, r15d
	jmp	.label_342
.label_382:
	mov	cl, 0x5c
	cmp	byte ptr [rsp + 0x29], 0
	je	.label_361
	xor	eax, eax
	mov	r15b, 0x5c
	xor	r13d, r13d
	jmp	.label_347
.label_361:
	cmp	byte ptr [rsp + 0x1f], 0
	mov	ebx, ecx
	je	.label_351
.label_453:
	xor	eax, eax
	cmp	byte ptr [rsp + 0x17], 0
	mov	r13d, 0
	je	.label_355
	nop	word ptr cs:[rax + rax]
.label_459:
	cmp	byte ptr [rsp + 6], 0
	jne	.label_404
	cmp	r12d, 2
	jne	.label_366
	mov	eax, r9d
	and	al, 1
	jne	.label_366
	cmp	r14, r11
	jae	.label_372
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], 0x27
.label_372:
	lea	rax, [r14 + 1]
	cmp	rax, r11
	jae	.label_369
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + rax], 0x24
.label_369:
	lea	rax, [r14 + 2]
	cmp	rax, r11
	jae	.label_422
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + rax], 0x27
.label_422:
	add	r14, 3
	mov	r9b, 1
.label_366:
	cmp	r14, r11
	jae	.label_457
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], 0x5c
.label_457:
	inc	r14
	jmp	.label_354
.label_390:
	mov	qword ptr [rsp + 0x80], 0
	cmp	rbp, -1
	jne	.label_392
	mov	rbx, rsi
	call	strlen
	mov	rsi, rbx
	mov	rdi, qword ptr [rsp + 0x30]
	mov	rbp, rax
.label_392:
	lea	rax, [rdi + rsi]
	mov	qword ptr [rsp + 0x60], rax
	mov	r13b, 1
	xor	r12d, r12d
	lea	rax, [rsp + 0x80]
	mov	rcx, rax
	mov	qword ptr [rsp + 0x20], rbp
	mov	qword ptr [rsp + 0x58], rsi
.label_383:
	lea	rbx, [r12 + rsi]
	lea	rsi, [rdi + rbx]
	mov	rdx, rbp
	sub	rdx, rbx
	lea	rdi, [rsp + 0x94]
	call	rpl_mbrtowc
	mov	rbp, rax
	test	rbp, rbp
	je	.label_414
	cmp	rbp, -1
	movabs	rsi, 0x20000002b
	je	.label_418
	cmp	rbp, -2
	je	.label_424
	cmp	rbp, 1
	seta	al
	and	al, byte ptr [rsp + 0x2b]
	cmp	al, 1
	mov	rdi, qword ptr [rsp + 0x30]
	mov	r11, qword ptr [rsp + 0x98]
	jne	.label_450
	mov	rax, qword ptr [rsp + 0x60]
	lea	rax, [rax + r12]
	mov	ecx, 1
	nop	word ptr cs:[rax + rax]
.label_440:
	movsx	edx, byte ptr [rax + rcx]
	add	edx, -0x5b
	cmp	edx, 0x21
	ja	.label_406
	bt	rsi, rdx
	jb	.label_443
.label_406:
	inc	rcx
	cmp	rcx, rbp
	jb	.label_440
.label_450:
	mov	edi, dword ptr [rsp + 0x94]
	call	iswprint
	test	eax, eax
	jne	.label_371
	xor	r13d, r13d
.label_371:
	lea	rdi, [rsp + 0x80]
	add	r12, rbp
	mov	rbx, rdi
	call	mbsinit
	mov	rcx, rbx
	test	eax, eax
	mov	rdi, qword ptr [rsp + 0x30]
	mov	rbp, qword ptr [rsp + 0x20]
	mov	rsi, qword ptr [rsp + 0x58]
	je	.label_383
	jmp	.label_391
.label_435:
	xor	r13d, r13d
	jmp	.label_355
.label_432:
	mov	rbp, -1
	xor	r13d, r13d
	jmp	.label_355
.label_370:
	cmp	dword ptr [rsp + 0x8c], 0
	je	.label_342
	lea	rcx, [rsi + 2]
	cmp	rcx, rbp
	jae	.label_342
	cmp	byte ptr [rdi + rsi + 1], 0x3f
	jne	.label_342
	movsx	edx, byte ptr [rdi + rcx]
	xor	eax, eax
	cmp	edx, 0x3e
	ja	.label_394
	mov	rbx, rsi
	movabs	rsi, 0x7000a38200000000
	bt	rsi, rdx
	jae	.label_413
	cmp	byte ptr [rsp + 6], 0
	jne	.label_393
	cmp	r14, r11
	jae	.label_344
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], 0x3f
.label_344:
	lea	rax, [r14 + 1]
	cmp	rax, r11
	jae	.label_456
	mov	rsi, qword ptr [rsp + 8]
	mov	byte ptr [rsi + rax], 0x22
.label_456:
	lea	rax, [r14 + 2]
	cmp	rax, r11
	jae	.label_373
	mov	rsi, qword ptr [rsp + 8]
	mov	byte ptr [rsi + rax], 0x22
.label_373:
	lea	rax, [r14 + 3]
	cmp	rax, r11
	jae	.label_412
	mov	rsi, qword ptr [rsp + 8]
	mov	byte ptr [rsi + rax], 0x3f
.label_412:
	add	r14, 4
	xor	eax, eax
	mov	rsi, rcx
	mov	r15b, dl
	xor	r13d, r13d
	jmp	.label_355
.label_342:
	xor	eax, eax
.label_397:
	xor	r13d, r13d
	jmp	.label_355
.label_408:
	add	qword ptr [rsp + 0x60], rsi
	xor	eax, eax
	mov	rbp, qword ptr [rsp + 0x20]
	jmp	.label_389
	nop	word ptr cs:[rax + rax]
.label_343:
	inc	r14
	mov	r15b, byte ptr [rdi + rsi + 1]
	mov	rsi, rdx
.label_389:
	test	r8b, r8b
	je	.label_398
	mov	ecx, dword ptr [rsp + 0x54]
	test	cl, 1
	je	.label_399
	cmp	r14, r11
	jae	.label_400
	mov	rdx, qword ptr [rsp + 8]
	mov	byte ptr [rdx + r14], 0x5c
.label_400:
	inc	r14
	mov	dword ptr [rsp + 0x54], 0
	jmp	.label_399
	nop	dword ptr [rax]
.label_398:
	cmp	byte ptr [rsp + 6], 0
	jne	.label_358
	cmp	r12d, 2
	jne	.label_385
	mov	eax, r9d
	and	al, 1
	jne	.label_385
	cmp	r14, r11
	jae	.label_417
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], 0x27
.label_417:
	lea	rax, [r14 + 1]
	cmp	rax, r11
	jae	.label_428
	mov	rdx, qword ptr [rsp + 8]
	mov	byte ptr [rdx + rax], 0x24
.label_428:
	lea	rax, [r14 + 2]
	cmp	rax, r11
	jae	.label_427
	mov	rdx, qword ptr [rsp + 8]
	mov	byte ptr [rdx + rax], 0x27
.label_427:
	add	r14, 3
	mov	r9b, 1
.label_385:
	cmp	r14, r11
	jae	.label_364
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], 0x5c
.label_364:
	lea	rax, [r14 + 1]
	cmp	rax, r11
	jae	.label_438
	mov	edx, r15d
	shr	dl, 6
	or	dl, 0x30
	mov	rbx, qword ptr [rsp + 8]
	mov	byte ptr [rbx + rax], dl
.label_438:
	lea	rax, [r14 + 2]
	cmp	rax, r11
	jae	.label_442
	mov	edx, r15d
	shr	dl, 3
	and	dl, 7
	or	dl, 0x30
	mov	rbx, qword ptr [rsp + 8]
	mov	byte ptr [rbx + rax], dl
.label_442:
	add	r14, 3
	and	r15b, 7
	or	r15b, 0x30
	mov	al, 1
.label_399:
	lea	rdx, [rsi + 1]
	cmp	qword ptr [rsp + 0x60], rdx
	jbe	.label_347
	test	r9b, 1
	je	.label_420
	mov	ebx, eax
	and	bl, 1
	jne	.label_420
	mov	rbx, rsi
	cmp	r14, r11
	jae	.label_458
	mov	rsi, qword ptr [rsp + 8]
	mov	byte ptr [rsi + r14], 0x27
.label_458:
	lea	rsi, [r14 + 1]
	cmp	rsi, r11
	jae	.label_359
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + rsi], 0x27
.label_359:
	add	r14, 2
	xor	r9d, r9d
	mov	rsi, rbx
.label_420:
	cmp	r14, r11
	jae	.label_343
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + r14], r15b
	jmp	.label_343
	nop	word ptr cs:[rax + rax]
.label_347:
	test	r9b, 1
	je	.label_350
	and	al, 1
	jne	.label_350
	cmp	r14, r11
	jae	.label_403
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], 0x27
.label_403:
	lea	rax, [r14 + 1]
	cmp	rax, r11
	jae	.label_431
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + rax], 0x27
.label_431:
	add	r14, 2
	xor	r9d, r9d
.label_350:
	mov	ebx, r15d
.label_354:
	cmp	r14, r11
	jae	.label_462
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], bl
.label_462:
	inc	r14
	shl	r13b, 7
	sar	r13b, 7
	and	r13b, r10b
	mov	r10d, r13d
	jmp	.label_367
.label_418:
	xor	r13d, r13d
.label_414:
	mov	rdi, qword ptr [rsp + 0x30]
	mov	rsi, qword ptr [rsp + 0x58]
	jmp	.label_391
.label_424:
	mov	rbp, qword ptr [rsp + 0x20]
	cmp	rbp, rbx
	mov	rdi, qword ptr [rsp + 0x30]
	jbe	.label_380
	mov	rsi, qword ptr [rsp + 0x58]
.label_387:
	mov	rax, qword ptr [rsp + 0x60]
	cmp	byte ptr [rax + r12], 0
	je	.label_454
	lea	rax, [rsi + r12 + 1]
	inc	r12
	cmp	rax, rbp
	jb	.label_387
	xor	r13d, r13d
	jmp	.label_391
.label_380:
	xor	r13d, r13d
	mov	rsi, qword ptr [rsp + 0x58]
	jmp	.label_391
.label_454:
	xor	r13d, r13d
	jmp	.label_391
.label_394:
	xor	r13d, r13d
	jmp	.label_355
.label_413:
	xor	r13d, r13d
	mov	rsi, rbx
	jmp	.label_355
	nop	dword ptr [rax + rax]
.label_446:
	mov	rcx, rsi
.label_451:
	cmp	r12d, 2
	setne	al
	test	r14, r14
	setne	dl
	cmp	byte ptr [rsp + 6], 0
	je	.label_452
	or	al, dl
	je	.label_407
.label_452:
	cmp	r12d, 2
	setne	al
	cmp	byte ptr [rsp + 6], 0
	setne	dl
	mov	rsi, qword ptr [rsp + 0xa0]
	test	sil, 1
	mov	bl, byte ptr [rsp + 0x2c]
	mov	rsi, qword ptr [rsp + 0xb0]
	je	.label_410
	or	al, dl
	jne	.label_410
	test	r10b, 1
	jne	.label_423
	cmp	qword ptr [rsp + 0x68], 0
	je	.label_410
	test	r11, r11
	mov	r15d, r12d
	mov	al, bl
	mov	qword ptr [rsp + 0x20], rcx
	mov	r12d, esi
	mov	rbp, qword ptr [rsp + 0x68]
	je	.label_429
.label_410:
	mov	rdx, qword ptr [rsp + 0x48]
	test	rdx, rdx
	je	.label_436
	cmp	byte ptr [rsp + 6], 0
	mov	rcx, qword ptr [rsp + 8]
	jne	.label_419
	mov	al, byte ptr [rdx]
	test	al, al
	je	.label_419
	inc	rdx
	nop	word ptr cs:[rax + rax]
.label_449:
	cmp	r14, r11
	jae	.label_447
	mov	byte ptr [rcx + r14], al
.label_447:
	inc	r14
	movzx	eax, byte ptr [rdx]
	inc	rdx
	test	al, al
	jne	.label_449
	jmp	.label_419
.label_404:
	mov	qword ptr [rsp + 0x20], rbp
.label_358:
	mov	rdx, rdi
	jmp	.label_357
.label_351:
	mov	qword ptr [rsp + 0x20], rbp
.label_443:
	mov	rdx, rdi
	mov	eax, 2
.label_434:
	mov	qword ptr [rsp + 0x38], rax
.label_357:
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
.label_376:
	mov	r14, rax
.label_378:
	mov	rax, r14
	add	rsp, 0xb8
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_407:
	mov	rdx, rdi
	mov	qword ptr [rsp + 0x20], rcx
	jmp	.label_357
.label_423:
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
	jmp	.label_376
.label_436:
	mov	rcx, qword ptr [rsp + 8]
.label_419:
	cmp	r14, r11
	jae	.label_378
	mov	byte ptr [rcx + r14], 0
	jmp	.label_378
.label_393:
	mov	qword ptr [rsp + 0x20], rbp
	mov	rdx, rdi
	mov	eax, 5
	jmp	.label_434
.label_426:
	call	abort
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4054b0
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
	#Procedure 0x405580
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
	je	.label_463
	mov	qword ptr [rax], rbx
.label_463:
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
	#Procedure 0x405670
	.globl quotearg_free
	.type quotearg_free, @function
quotearg_free:

	push	r15
	push	r14
	push	rbx
	mov	r14, qword ptr [rip + slotvec]
	cmp	dword ptr [rip + nslots],  2
	jl	.label_464
	lea	r15, [r14 + 0x18]
	mov	ebx, 1
	nop	
.label_466:
	mov	rdi, qword ptr [r15]
	call	free
	inc	rbx
	movsxd	rax, dword ptr [rip + nslots]
	add	r15, 0x10
	cmp	rbx, rax
	jl	.label_466
.label_464:
	mov	rdi, qword ptr [r14 + 8]
	mov	eax, OFFSET FLAT:slot0
	cmp	rdi, rax
	je	.label_467
	call	free
	mov	qword ptr [rip + slotvec0],  0x100
	mov	qword ptr [rip + label_468], OFFSET FLAT:slot0
.label_467:
	mov	eax, OFFSET FLAT:slotvec0
	cmp	r14, rax
	je	.label_465
	mov	rdi, r14
	call	free
	mov	qword ptr [rip + slotvec], OFFSET FLAT:slotvec0
.label_465:
	mov	dword ptr [rip + nslots],  1
	pop	rbx
	pop	r14
	pop	r15
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x405710
	.globl quotearg_n
	.type quotearg_n, @function
quotearg_n:

	mov	rdx, -1
	mov	ecx, OFFSET FLAT:default_quoting_options
	jmp	quotearg_n_options
	nop	
	.section	.text
	.align	32
	#Procedure 0x405720

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
	js	.label_469
	mov	eax, dword ptr [r13]
	mov	rbp, qword ptr [rip + slotvec]
	cmp	dword ptr [rip + nslots],  r12d
	mov	qword ptr [rsp + 0x18], r13
	mov	dword ptr [rsp], eax
	mov	qword ptr [rsp + 0x10], rbx
	mov	qword ptr [rsp + 8], r15
	jg	.label_472
	cmp	r12d, 0x7fffffff
	je	.label_474
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
	jne	.label_470
	movups	xmm0, xmmword ptr [rip + slotvec0]
	movups	xmmword ptr [r14], xmm0
.label_470:
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
.label_472:
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
	jbe	.label_475
	mov	rax, qword ptr [rsp + 0x18]
	mov	ebp, dword ptr [rsp]
	jmp	.label_471
.label_475:
	lea	rax, [rbp + r13]
	lea	r12, [rbp + r13 + 8]
	inc	r15
	mov	qword ptr [rax], r15
	mov	eax, OFFSET FLAT:slot0
	cmp	r14, rax
	mov	ebp, dword ptr [rsp]
	je	.label_473
	mov	rdi, r14
	call	free
.label_473:
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
.label_471:
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
.label_469:
	call	abort
.label_474:
	call	xalloc_die
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x4058e0
	.globl quotearg_n_mem
	.type quotearg_n_mem, @function
quotearg_n_mem:

	mov	ecx, OFFSET FLAT:default_quoting_options
	jmp	quotearg_n_options
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4058f0
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
	#Procedure 0x405910
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
	#Procedure 0x405930

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
	je	.label_476
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
.label_476:
	call	abort
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x4059a0
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
	je	.label_477
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
.label_477:
	call	abort
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x405a10
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
	je	.label_478
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
.label_478:
	call	abort
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x405a80
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
	je	.label_479
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
.label_479:
	call	abort
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x405af0
	.globl quotearg_char_mem
	.type quotearg_char_mem, @function
quotearg_char_mem:

	sub	rsp, 0x38
	mov	ecx, edx
	mov	r8, rsi
	mov	rdx, rdi
	mov	rsi, qword ptr [rip + label_480]
	mov	qword ptr [rsp + 0x30], rsi
	movups	xmm0, xmmword ptr [rip + label_481]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0, xmmword ptr [rip + label_482]
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
	#Procedure 0x405b60
	.globl quotearg_char
	.type quotearg_char, @function
quotearg_char:

	sub	rsp, 0x38
	mov	ecx, esi
	mov	rax, rdi
	mov	rdx, qword ptr [rip + label_480]
	mov	qword ptr [rsp + 0x30], rdx
	movups	xmm0, xmmword ptr [rip + label_481]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0, xmmword ptr [rip + label_482]
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
	#Procedure 0x405bd0

	.globl quotearg_colon
	.type quotearg_colon, @function
quotearg_colon:
	sub	rsp, 0x38
	mov	rax, rdi
	mov	rcx, qword ptr [rip + label_480]
	mov	qword ptr [rsp + 0x30], rcx
	movups	xmm0, xmmword ptr [rip + label_481]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0, xmmword ptr [rip + label_482]
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
	#Procedure 0x405c30
	.globl quotearg_colon_mem
	.type quotearg_colon_mem, @function
quotearg_colon_mem:

	sub	rsp, 0x38
	mov	rax, rsi
	mov	rdx, rdi
	mov	rcx, qword ptr [rip + label_480]
	mov	qword ptr [rsp + 0x30], rcx
	movups	xmm0, xmmword ptr [rip + label_481]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0, xmmword ptr [rip + label_482]
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
	#Procedure 0x405c90
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
	je	.label_483
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
.label_483:
	call	abort
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x405d30
	.globl quotearg_n_custom
	.type quotearg_n_custom, @function
quotearg_n_custom:

	sub	rsp, 0x38
	mov	rax, qword ptr [rip + label_480]
	mov	qword ptr [rsp + 0x30], rax
	movups	xmm0, xmmword ptr [rip + label_481]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0, xmmword ptr [rip + label_482]
	movaps	xmmword ptr [rsp + 0x10], xmm0
	movups	xmm0, xmmword ptr [rip + default_quoting_options]
	movaps	xmmword ptr [rsp], xmm0
	mov	dword ptr [rsp], 0xa
	test	rsi, rsi
	je	.label_484
	test	rdx, rdx
	je	.label_484
	mov	qword ptr [rsp + 0x28], rsi
	mov	qword ptr [rsp + 0x30], rdx
	lea	rax, [rsp]
	mov	rdx, -1
	mov	rsi, rcx
	mov	rcx, rax
	call	quotearg_n_options
	add	rsp, 0x38
	ret	
.label_484:
	call	abort
	nop	
	.section	.text
	.align	32
	#Procedure 0x405da0
	.globl quotearg_n_custom_mem
	.type quotearg_n_custom_mem, @function
quotearg_n_custom_mem:

	sub	rsp, 0x38
	mov	rax, qword ptr [rip + label_480]
	mov	qword ptr [rsp + 0x30], rax
	movups	xmm0, xmmword ptr [rip + label_481]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0, xmmword ptr [rip + label_482]
	movaps	xmmword ptr [rsp + 0x10], xmm0
	movups	xmm0, xmmword ptr [rip + default_quoting_options]
	movaps	xmmword ptr [rsp], xmm0
	mov	dword ptr [rsp], 0xa
	test	rsi, rsi
	je	.label_485
	test	rdx, rdx
	je	.label_485
	mov	qword ptr [rsp + 0x28], rsi
	mov	qword ptr [rsp + 0x30], rdx
	lea	rax, [rsp]
	mov	rsi, rcx
	mov	rdx, r8
	mov	rcx, rax
	call	quotearg_n_options
	add	rsp, 0x38
	ret	
.label_485:
	call	abort
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x405e10
	.globl quotearg_custom
	.type quotearg_custom, @function
quotearg_custom:

	sub	rsp, 0x38
	mov	rax, rdx
	mov	rcx, qword ptr [rip + label_480]
	mov	qword ptr [rsp + 0x30], rcx
	movups	xmm0, xmmword ptr [rip + label_481]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0, xmmword ptr [rip + label_482]
	movaps	xmmword ptr [rsp + 0x10], xmm0
	movups	xmm0, xmmword ptr [rip + default_quoting_options]
	movaps	xmmword ptr [rsp], xmm0
	mov	dword ptr [rsp], 0xa
	test	rdi, rdi
	je	.label_486
	test	rsi, rsi
	je	.label_486
	mov	qword ptr [rsp + 0x28], rdi
	mov	qword ptr [rsp + 0x30], rsi
	lea	rcx, [rsp]
	xor	edi, edi
	mov	rdx, -1
	mov	rsi, rax
	call	quotearg_n_options
	add	rsp, 0x38
	ret	
.label_486:
	call	abort
	.section	.text
	.align	32
	#Procedure 0x405e80
	.globl quotearg_custom_mem
	.type quotearg_custom_mem, @function
quotearg_custom_mem:

	sub	rsp, 0x38
	mov	rax, qword ptr [rip + label_480]
	mov	qword ptr [rsp + 0x30], rax
	movups	xmm0, xmmword ptr [rip + label_481]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0, xmmword ptr [rip + label_482]
	movaps	xmmword ptr [rsp + 0x10], xmm0
	movups	xmm0, xmmword ptr [rip + default_quoting_options]
	movaps	xmmword ptr [rsp], xmm0
	mov	dword ptr [rsp], 0xa
	test	rdi, rdi
	je	.label_487
	test	rsi, rsi
	je	.label_487
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
.label_487:
	call	abort
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x405ef0
	.globl quote_n_mem
	.type quote_n_mem, @function
quote_n_mem:

	mov	ecx, OFFSET FLAT:quote_quoting_options
	jmp	quotearg_n_options
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x405f00
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
	#Procedure 0x405f20
	.globl quote_n
	.type quote_n, @function
quote_n:

	mov	rdx, -1
	mov	ecx, OFFSET FLAT:quote_quoting_options
	jmp	quotearg_n_options
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x405f40
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
	#Procedure 0x405f60

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
	jne	.label_493
	call	locale_charset
	movsx	ecx, byte ptr [rax]
	and	ecx, 0xffffffdf
	cmp	ecx, 0x47
	je	.label_489
	cmp	ecx, 0x55
	jne	.label_488
	movsx	ecx, byte ptr [rax + 1]
	and	ecx, 0xffffffdf
	cmp	ecx, 0x54
	jne	.label_488
	movsx	ecx, byte ptr [rax + 2]
	and	ecx, 0xffffffdf
	cmp	ecx, 0x46
	jne	.label_488
	cmp	byte ptr [rax + 3], 0x2d
	jne	.label_488
	cmp	byte ptr [rax + 4], 0x38
	jne	.label_488
	cmp	byte ptr [rax + 5], 0
	jne	.label_488
	cmp	byte ptr [rbx], 0x60
	mov	ecx, OFFSET FLAT:label_495
	mov	eax, OFFSET FLAT:label_496
	jmp	.label_492
.label_489:
	movsx	ecx, byte ptr [rax + 1]
	and	ecx, 0xffffffdf
	cmp	ecx, 0x42
	jne	.label_488
	cmp	byte ptr [rax + 2], 0x31
	jne	.label_488
	cmp	byte ptr [rax + 3], 0x38
	jne	.label_488
	cmp	byte ptr [rax + 4], 0x30
	jne	.label_488
	cmp	byte ptr [rax + 5], 0x33
	jne	.label_488
	cmp	byte ptr [rax + 6], 0x30
	jne	.label_488
	cmp	byte ptr [rax + 7], 0
	je	.label_494
.label_488:
	cmp	ebp, 9
	mov	ecx, OFFSET FLAT:label_388
	mov	eax, OFFSET FLAT:label_374
.label_492:
	cmove	rax, rcx
.label_493:
	add	rsp, 8
	pop	rbx
	pop	rbp
	ret	
.label_494:
	cmp	byte ptr [rbx], 0x60
	mov	ecx, OFFSET FLAT:label_490
	mov	eax, OFFSET FLAT:label_491
	jmp	.label_492
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x406030

	.globl strnlen1
	.type strnlen1, @function
strnlen1:
	push	r14
	push	rbx
	push	rax
	mov	r14, rsi
	mov	rbx, rdi
	xor	esi, esi
	mov	rdx, r14
	call	memchr
	mov	ecx, 1
	sub	rcx, rbx
	add	rcx, rax
	test	rax, rax
	cmove	rcx, r14
	mov	rax, rcx
	add	rsp, 8
	pop	rbx
	pop	r14
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x406070

	.globl strintcmp
	.type strintcmp, @function
strintcmp:
	movzx	ecx, byte ptr [rdi]
	mov	dl, byte ptr [rsi]
	cmp	ecx, 0x2d
	jne	.label_525
	nop	word ptr [rax + rax]
.label_497:
	movzx	ecx, byte ptr [rdi + 1]
	inc	rdi
	cmp	ecx, 0x30
	je	.label_497
	movzx	r8d, dl
	cmp	r8d, 0x2d
	jne	.label_501
	nop	word ptr [rax + rax]
.label_508:
	movzx	eax, byte ptr [rsi + 1]
	inc	rsi
	cmp	eax, 0x30
	je	.label_508
	lea	edx, [rcx - 0x30]
	cmp	edx, 9
	ja	.label_513
	movzx	r8d, cl
	movzx	edx, al
	cmp	edx, r8d
	jne	.label_514
	nop	dword ptr [rax + rax]
.label_522:
	mov	r9b, byte ptr [rdi + 1]
	inc	rdi
	movzx	eax, byte ptr [rsi + 1]
	inc	rsi
	movzx	ecx, r9b
	cmp	eax, ecx
	jne	.label_524
	lea	edx, [rcx - 0x30]
	cmp	edx, 0xa
	jb	.label_522
	jmp	.label_524
.label_525:
	movzx	r8d, dl
	cmp	r8d, 0x2d
	jne	.label_527
	inc	rsi
	nop	dword ptr [rax + rax]
.label_503:
	movzx	edx, byte ptr [rsi]
	inc	rsi
	cmp	edx, 0x30
	je	.label_503
	add	edx, -0x30
	mov	eax, 1
	cmp	edx, 0xa
	jb	.label_506
	movzx	eax, cl
	cmp	eax, 0x30
	jne	.label_510
	inc	rdi
	nop	word ptr [rax + rax]
.label_521:
	movzx	ecx, byte ptr [rdi]
	inc	rdi
	cmp	ecx, 0x30
	je	.label_521
.label_510:
	movzx	eax, cl
	add	eax, -0x30
	cmp	eax, 0xa
	sbb	eax, eax
	and	eax, 1
	ret	
.label_501:
	add	ecx, -0x30
	mov	eax, 0xffffffff
	cmp	ecx, 0xa
	jb	.label_506
	cmp	r8d, 0x30
	jne	.label_523
	inc	rsi
	nop	word ptr cs:[rax + rax]
.label_498:
	movzx	edx, byte ptr [rsi]
	inc	rsi
	cmp	edx, 0x30
	je	.label_498
.label_523:
	movzx	eax, dl
	add	eax, -0x30
	cmp	eax, 0xa
	sbb	eax, eax
	ret	
.label_527:
	movzx	eax, cl
	cmp	eax, 0x30
	jne	.label_504
	nop	
.label_516:
	movzx	ecx, byte ptr [rdi + 1]
	inc	rdi
	cmp	ecx, 0x30
	je	.label_516
.label_504:
	cmp	r8d, 0x30
	jne	.label_500
	nop	word ptr cs:[rax + rax]
.label_515:
	movzx	edx, byte ptr [rsi + 1]
	inc	rsi
	cmp	edx, 0x30
	je	.label_515
.label_500:
	movzx	r8d, cl
	lea	eax, [r8 - 0x30]
	cmp	eax, 9
	ja	.label_509
	movzx	r9d, dl
	movzx	eax, cl
	cmp	eax, r9d
	jne	.label_509
	nop	word ptr cs:[rax + rax]
.label_499:
	mov	cl, byte ptr [rdi + 1]
	inc	rdi
	movzx	edx, byte ptr [rsi + 1]
	inc	rsi
	movzx	r8d, cl
	cmp	r8d, edx
	jne	.label_509
	lea	eax, [r8 - 0x30]
	cmp	eax, 0xa
	jb	.label_499
.label_509:
	movzx	eax, dl
	movzx	edx, cl
	add	edx, -0x30
	xor	ecx, ecx
	cmp	edx, 9
	ja	.label_502
	xor	ecx, ecx
	nop	word ptr cs:[rax + rax]
.label_512:
	movzx	edx, byte ptr [rdi + rcx + 1]
	inc	rcx
	add	edx, -0x30
	cmp	edx, 0xa
	jb	.label_512
.label_502:
	lea	edi, [rax - 0x30]
	xor	edx, edx
	cmp	edi, 9
	ja	.label_505
	xor	edx, edx
	nop	dword ptr [rax]
.label_517:
	movzx	edi, byte ptr [rsi + rdx + 1]
	inc	rdx
	add	edi, -0x30
	cmp	edi, 0xa
	jb	.label_517
.label_505:
	cmp	rcx, rdx
	jne	.label_519
	sub	r8d, eax
	xor	eax, eax
	test	rcx, rcx
	jmp	.label_520
.label_519:
	mov	ecx, 0xffffffff
	mov	eax, 1
	cmovb	eax, ecx
	ret	
.label_513:
	mov	r9b, cl
	jmp	.label_524
.label_514:
	mov	r9b, cl
.label_524:
	movzx	r8d, al
	movzx	eax, r9b
	add	eax, -0x30
	xor	edx, edx
	cmp	eax, 9
	ja	.label_511
	xor	edx, edx
	nop	dword ptr [rax]
.label_518:
	movzx	eax, byte ptr [rdi + rdx + 1]
	inc	rdx
	add	eax, -0x30
	cmp	eax, 0xa
	jb	.label_518
.label_511:
	lea	edi, [r8 - 0x30]
	xor	eax, eax
	cmp	edi, 9
	ja	.label_526
	xor	eax, eax
	nop	dword ptr [rax]
.label_507:
	movzx	edi, byte ptr [rsi + rax + 1]
	inc	rax
	add	edi, -0x30
	cmp	edi, 0xa
	jb	.label_507
.label_526:
	cmp	rdx, rax
	jne	.label_528
	sub	r8d, ecx
	xor	eax, eax
	test	rdx, rdx
.label_520:
	cmovne	eax, r8d
.label_506:
	ret	
.label_528:
	mov	ecx, 1
	mov	eax, 0xffffffff
	cmovb	eax, ecx
	ret	
	.section	.text
	.align	32
	#Procedure 0x4062f0

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
	je	.label_540
	mov	edx, OFFSET FLAT:label_536
	xor	eax, eax
	mov	rdi, r14
	mov	r8, rbx
	call	__fprintf_chk
	jmp	.label_542
.label_540:
	mov	edx, OFFSET FLAT:label_543
	xor	eax, eax
	mov	rdi, r14
	mov	rcx, rbx
	mov	r8, r9
	call	__fprintf_chk
.label_542:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_547
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
	mov	esi, OFFSET FLAT:label_544
	mov	edx, 5
	call	dcgettext
	mov	rdi, rax
	mov	rsi, r14
	call	fputs_unlocked
	cmp	r12, 9
	ja	.label_531
	jmp	qword ptr [(r12 * 8) + label_532]
.label_2528:
	add	rsp, 8
	jmp	.label_529
.label_531:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_539
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
	jmp	.label_529
.label_2529:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_545
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
.label_2530:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_530
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
.label_2531:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_537
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
.label_2532:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_534
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
	jmp	.label_529
.label_2533:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_533
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
	jmp	.label_529
.label_2534:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_535
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
	jmp	.label_529
.label_2535:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_538
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
	jmp	.label_529
.label_2537:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_541
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
	jmp	.label_529
.label_2536:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_546
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
.label_529:
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x406650
	.globl version_etc_ar
	.type version_etc_ar, @function
version_etc_ar:

	mov	r9, -1
	nop	word ptr [rax + rax]
.label_548:
	cmp	qword ptr [r8 + r9*8 + 8], 0
	lea	r9, [r9 + 1]
	jne	.label_548
	jmp	version_etc_arn
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x406680

	.globl version_etc_va
	.type version_etc_va, @function
version_etc_va:
	movsxd	r10, dword ptr [r8]
	cmp	r10, 0x28
	ja	.label_549
	mov	r9, r10
	add	r9, qword ptr [r8 + 0x10]
	lea	r10d, [r10 + 8]
	mov	dword ptr [r8], r10d
	jmp	.label_551
.label_549:
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
.label_551:
	sub	rsp, 0x58
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp], rax
	xor	r9d, r9d
	test	rax, rax
	je	.label_552
	cmp	r10d, 0x29
	jae	.label_561
	movsxd	r9, r10d
	add	r9, qword ptr [r8 + 0x10]
	add	r10d, 8
	mov	dword ptr [r8], r10d
	jmp	.label_550
.label_561:
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
.label_550:
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp + 8], rax
	mov	r9d, 1
	test	rax, rax
	je	.label_552
	cmp	r10d, 0x29
	jae	.label_559
	movsxd	r9, r10d
	add	r9, qword ptr [r8 + 0x10]
	add	r10d, 8
	mov	dword ptr [r8], r10d
	jmp	.label_560
.label_559:
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
.label_560:
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp + 0x10], rax
	mov	r9d, 2
	test	rax, rax
	je	.label_552
	cmp	r10d, 0x29
	jae	.label_557
	movsxd	r9, r10d
	add	r9, qword ptr [r8 + 0x10]
	add	r10d, 8
	mov	dword ptr [r8], r10d
	jmp	.label_558
.label_557:
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
.label_558:
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp + 0x18], rax
	mov	r9d, 3
	test	rax, rax
	je	.label_552
	cmp	r10d, 0x29
	jae	.label_555
	movsxd	r9, r10d
	add	r9, qword ptr [r8 + 0x10]
	add	r10d, 8
	mov	dword ptr [r8], r10d
	jmp	.label_556
.label_555:
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
.label_556:
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp + 0x20], rax
	mov	r9d, 4
	test	rax, rax
	je	.label_552
	cmp	r10d, 0x29
	jae	.label_553
	movsxd	r9, r10d
	add	r9, qword ptr [r8 + 0x10]
	add	r10d, 8
	mov	dword ptr [r8], r10d
	jmp	.label_554
.label_553:
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
.label_554:
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp + 0x28], rax
	mov	r9d, 5
	test	rax, rax
	je	.label_552
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp + 0x30], rax
	mov	r9d, 6
	test	rax, rax
	je	.label_552
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp + 0x38], rax
	mov	r9d, 7
	test	rax, rax
	je	.label_552
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp + 0x40], rax
	mov	r9d, 8
	test	rax, rax
	je	.label_552
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp + 0x48], rax
	cmp	rax, 1
	mov	r9d, 9
	sbb	r9, -1
.label_552:
	lea	r8, [rsp]
	call	version_etc_arn
	add	rsp, 0x58
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x406870
	.globl version_etc
	.type version_etc, @function
version_etc:

	sub	rsp, 0xd8
	test	al, al
	je	.label_562
	movaps	xmmword ptr [rsp + 0x50], xmm0
	movaps	xmmword ptr [rsp + 0x60], xmm1
	movaps	xmmword ptr [rsp + 0x70], xmm2
	movaps	xmmword ptr [rsp + 0x80], xmm3
	movaps	xmmword ptr [rsp + 0x90], xmm4
	movaps	xmmword ptr [rsp + 0xa0], xmm5
	movaps	xmmword ptr [rsp + 0xb0], xmm6
	movaps	xmmword ptr [rsp + 0xc0], xmm7
.label_562:
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
	#Procedure 0x406900
	.globl emit_bug_reporting_address
	.type emit_bug_reporting_address, @function
emit_bug_reporting_address:

	push	rax
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_563
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:label_564
	xor	eax, eax
	mov	rsi, rcx
	call	__printf_chk
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_566
	mov	edx, 5
	call	dcgettext
	mov	rsi, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:label_23
	mov	ecx, OFFSET FLAT:label_24
	xor	eax, eax
	call	__printf_chk
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_565
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	pop	rax
	jmp	fputs_unlocked
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x406980
	.globl xnmalloc
	.type xnmalloc, @function
xnmalloc:

	push	rbx
	mov	rbx, rsi
	movabs	rax, 0x7fffffffffffffff
	xor	edx, edx
	div	rbx
	cmp	rax, rdi
	jb	.label_567
	imul	rbx, rdi
	mov	rdi, rbx
	call	malloc
	test	rbx, rbx
	je	.label_568
	test	rax, rax
	je	.label_567
.label_568:
	pop	rbx
	ret	
.label_567:
	call	xalloc_die
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4069c0

	.globl xmalloc
	.type xmalloc, @function
xmalloc:
	push	rbx
	mov	rbx, rdi
	call	malloc
	test	rbx, rbx
	je	.label_569
	test	rax, rax
	je	.label_570
.label_569:
	pop	rbx
	ret	
.label_570:
	call	xalloc_die
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4069e0
	.globl xnrealloc
	.type xnrealloc, @function
xnrealloc:

	push	rbx
	mov	rbx, rdx
	movabs	rax, 0x7fffffffffffffff
	xor	edx, edx
	div	rbx
	cmp	rax, rsi
	jb	.label_571
	imul	rbx, rsi
	test	rdi, rdi
	je	.label_572
	test	rbx, rbx
	jne	.label_572
	call	free
	xor	eax, eax
	pop	rbx
	ret	
.label_572:
	mov	rsi, rbx
	call	realloc
	test	rbx, rbx
	je	.label_573
	test	rax, rax
	je	.label_571
.label_573:
	pop	rbx
	ret	
.label_571:
	call	xalloc_die
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x406a30

	.globl xrealloc
	.type xrealloc, @function
xrealloc:
	push	rbx
	mov	rbx, rsi
	test	rdi, rdi
	je	.label_574
	test	rbx, rbx
	jne	.label_574
	call	free
	xor	eax, eax
	pop	rbx
	ret	
.label_574:
	mov	rsi, rbx
	call	realloc
	test	rbx, rbx
	je	.label_576
	test	rax, rax
	je	.label_575
.label_576:
	pop	rbx
	ret	
.label_575:
	call	xalloc_die
	.section	.text
	.align	32
	#Procedure 0x406a60
	.globl x2nrealloc
	.type x2nrealloc, @function
x2nrealloc:

	push	rbx
	mov	rbx, rdx
	mov	rcx, qword ptr [rsi]
	test	rdi, rdi
	je	.label_577
	movabs	rax, 0x5555555555555554
	xor	edx, edx
	div	rbx
	cmp	rax, rcx
	jbe	.label_580
	mov	rax, rcx
	shr	rax, 1
	lea	rcx, [rcx + rax + 1]
	jmp	.label_578
.label_577:
	test	rcx, rcx
	jne	.label_583
	mov	eax, 0x80
	xor	edx, edx
	div	rbx
	xor	ecx, ecx
	cmp	rbx, 0x80
	seta	cl
	add	rcx, rax
.label_583:
	movabs	rax, 0x7fffffffffffffff
	xor	edx, edx
	div	rbx
	cmp	rax, rcx
	jb	.label_579
.label_578:
	mov	qword ptr [rsi], rcx
	imul	rbx, rcx
	test	rdi, rdi
	je	.label_582
	test	rbx, rbx
	jne	.label_582
	call	free
	xor	eax, eax
	pop	rbx
	ret	
.label_582:
	mov	rsi, rbx
	call	realloc
	test	rbx, rbx
	je	.label_581
	test	rax, rax
	je	.label_580
.label_581:
	pop	rbx
	ret	
.label_580:
	call	xalloc_die
.label_579:
	call	xalloc_die
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x406b00
	.globl xcharalloc
	.type xcharalloc, @function
xcharalloc:

	push	rbx
	mov	rbx, rdi
	call	malloc
	test	rbx, rbx
	je	.label_584
	test	rax, rax
	je	.label_585
.label_584:
	pop	rbx
	ret	
.label_585:
	call	xalloc_die
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x406b20
	.globl x2realloc
	.type x2realloc, @function
x2realloc:

	push	rbx
	mov	rax, qword ptr [rsi]
	test	rdi, rdi
	je	.label_586
	movabs	rcx, 0x5555555555555554
	cmp	rax, rcx
	jae	.label_589
	mov	rbx, rax
	shr	rbx, 1
	add	rbx, rax
	inc	rbx
	mov	qword ptr [rsi], rbx
	jne	.label_590
	call	free
	xor	eax, eax
	jmp	.label_587
.label_586:
	test	rax, rax
	mov	ebx, 0x80
	cmovne	rbx, rax
	test	rbx, rbx
	js	.label_588
	mov	qword ptr [rsi], rbx
.label_590:
	mov	rsi, rbx
	call	realloc
	test	rbx, rbx
	je	.label_587
	test	rax, rax
	je	.label_588
.label_587:
	pop	rbx
	ret	
.label_588:
	call	xalloc_die
.label_589:
	call	xalloc_die
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x406b90
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
	je	.label_592
	test	r14, r14
	je	.label_591
.label_592:
	xor	esi, esi
	mov	rdi, r14
	mov	rdx, rbx
	call	memset
	mov	rax, r14
	add	rsp, 8
	pop	rbx
	pop	r14
	ret	
.label_591:
	call	xalloc_die
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x406bd0
	.globl xcalloc
	.type xcalloc, @function
xcalloc:

	push	rax
	movabs	rax, 0x7fffffffffffffff
	xor	edx, edx
	div	rsi
	cmp	rax, rdi
	jb	.label_593
	call	rpl_calloc
	test	rax, rax
	je	.label_593
	pop	rcx
	ret	
.label_593:
	call	xalloc_die
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x406c00

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
	je	.label_594
	test	r15, r15
	je	.label_595
.label_594:
	mov	rdi, r15
	mov	rsi, r14
	mov	rdx, rbx
	call	memcpy
	mov	rax, r15
	pop	rbx
	pop	r14
	pop	r15
	ret	
.label_595:
	call	xalloc_die
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x406c40

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
	je	.label_597
	test	r15, r15
	je	.label_596
.label_597:
	mov	rdi, r15
	mov	rsi, r14
	mov	rdx, rbx
	call	memcpy
	mov	rax, r15
	pop	rbx
	pop	r14
	pop	r15
	ret	
.label_596:
	call	xalloc_die
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x406c90

	.globl xalloc_die
	.type xalloc_die, @function
xalloc_die:
	push	rbx
	mov	ebx, dword ptr [rip + exit_failure]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_598
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	xor	esi, esi
	mov	edx, OFFSET FLAT:label_271
	xor	eax, eax
	mov	edi, ebx
	call	error
	call	abort
	.section	.text
	.align	32
	#Procedure 0x406cc0

	.globl rpl_calloc
	.type rpl_calloc, @function
rpl_calloc:
	test	rdi, rdi
	mov	eax, 1
	je	.label_599
	test	rsi, rsi
	mov	ecx, 1
	je	.label_600
	mov	rax, rsi
	imul	rax, rdi
	xor	edx, edx
	div	rsi
	cmp	rax, rdi
	mov	rax, rsi
	mov	rcx, rdi
	je	.label_600
	push	rax
	call	__errno_location
	mov	dword ptr [rax], 0xc
	xor	eax, eax
	pop	rcx
	ret	
.label_599:
	mov	ecx, 1
.label_600:
	mov	rdi, rcx
	mov	rsi, rax
	jmp	calloc
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x406d10

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
	je	.label_601
	cmp	r15, -2
	jb	.label_601
	xor	edi, edi
	call	hard_locale
	test	al, al
	jne	.label_601
	movzx	eax, byte ptr [r14]
	mov	dword ptr [rbx], eax
	mov	r15d, 1
.label_601:
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
	#Procedure 0x406d70

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
	je	.label_602
	cdqe	
	mov	esi, OFFSET FLAT:__re_error_msgid
	add	rsi, qword ptr [(rax * 8) + __re_error_msgid_idx]
	xor	edi, edi
	mov	edx, 5
	pop	rax
	jmp	dcgettext
.label_602:
	xor	eax, eax
	pop	rcx
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x406dd0

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
	jbe	.label_971
.label_777:
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
	ja	.label_668
	lea	rdi, [r13 + 1]
	mov	qword ptr [r12 + 8], rdi
	mov	rax, rdi
	mov	qword ptr [rsp + 8], rax
	shl	rdi, 4
	call	malloc
	mov	qword ptr [r12], rax
	mov	eax, 1
	nop	word ptr cs:[rax + rax]
.label_1034:
	mov	rbx, rax
	lea	rax, [rbx + rbx]
	cmp	rbx, r13
	jbe	.label_1034
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
	jne	.label_1052
	mov	cl, byte ptr [rax + 1]
	or	cl, 0x20
	cmp	cl, 0x74
	jne	.label_1052
	mov	cl, byte ptr [rax + 2]
	or	cl, 0x20
	cmp	cl, 0x66
	jne	.label_1052
	xor	ecx, ecx
	cmp	byte ptr [rax + 3], 0x2d
	sete	cl
	cmp	byte ptr [rax + rcx + 3], 0x38
	jne	.label_1052
	cmp	byte ptr [rax + rcx + 4], 0
	jne	.label_1052
	or	byte ptr [r12 + 0xb0], 4
.label_1052:
	mov	rax, qword ptr [r12 + 0xb0]
	mov	ecx, eax
	and	cl, 0xf7
	mov	byte ptr [r12 + 0xb0], cl
	mov	rcx, rax
	shr	rcx, 0x20
	cmp	ecx, 2
	jl	.label_662
	test	al, 4
	jne	.label_1072
	mov	edi, 0x20
	mov	esi, 1
	call	rpl_calloc
	mov	qword ptr [r12 + 0x78], rax
	test	rax, rax
	je	.label_668
	xor	ebp, ebp
	nop	dword ptr [rax]
.label_603:
	mov	edi, ebp
	call	btowc
	cmp	eax, -1
	je	.label_1077
	mov	edx, 1
	mov	ecx, ebp
	shl	rdx, cl
	mov	rcx, qword ptr [r12 + 0x78]
	or	qword ptr [rcx], rdx
.label_1077:
	cmp	ebp, 0x7f
	ja	.label_1079
	cmp	ebp, eax
	je	.label_1079
	or	byte ptr [r12 + 0xb0], 8
.label_1079:
	inc	rbp
	cmp	rbp, 0x40
	jne	.label_603
	xor	ebp, ebp
	nop	dword ptr [rax + rax]
.label_627:
	lea	rbx, [rbp + 0x40]
	mov	edi, ebx
	call	btowc
	cmp	eax, -1
	je	.label_611
	mov	edx, 1
	mov	ecx, ebp
	shl	rdx, cl
	mov	rcx, qword ptr [r12 + 0x78]
	or	qword ptr [rcx + 8], rdx
.label_611:
	cmp	ebx, eax
	je	.label_623
	or	byte ptr [r12 + 0xb0], 8
.label_623:
	inc	rbp
	cmp	rbp, 0x40
	jne	.label_627
	xor	ebp, ebp
	nop	dword ptr [rax + rax]
.label_649:
	mov	edi, ebp
	sub	edi, -0x80
	call	btowc
	cmp	eax, -1
	je	.label_642
	mov	eax, 1
	mov	ecx, ebp
	shl	rax, cl
	mov	rcx, qword ptr [r12 + 0x78]
	or	qword ptr [rcx + 0x10], rax
.label_642:
	inc	rbp
	cmp	rbp, 0x40
	jne	.label_649
	xor	ebp, ebp
	nop	dword ptr [rax]
.label_661:
	lea	edi, [rbp + 0xc0]
	call	btowc
	cmp	eax, -1
	je	.label_656
	mov	eax, 1
	mov	ecx, ebp
	shl	rax, cl
	mov	rcx, qword ptr [r12 + 0x78]
	or	qword ptr [rcx + 0x18], rax
.label_656:
	inc	rbp
	cmp	rbp, 0x40
	jne	.label_661
	jmp	.label_662
.label_1072:
	mov	qword ptr [r12 + 120], OFFSET FLAT:utf8_sb_map
.label_662:
	cmp	qword ptr [r12], 0
	je	.label_668
	cmp	qword ptr [r12 + 0x40], 0
	je	.label_668
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
	jle	.label_923
	cmp	edx, 2
	jl	.label_736
	mov	r12d, 0xc
	mov	rax, qword ptr [rsp + 8]
	movabs	rcx, 0x1fffffffffffffff
	cmp	rax, rcx
	ja	.label_738
	lea	rsi, [rax*4]
	xor	edi, edi
	call	realloc
	test	rax, rax
	je	.label_738
	mov	qword ptr [rsp + 0x58], rax
	mov	r12, qword ptr [rsp + 0x18]
.label_736:
	xor	eax, eax
	test	bpl, bpl
	je	.label_754
	xor	edi, edi
	mov	rsi, qword ptr [rsp + 8]
	call	realloc
	mov	r12d, 0xc
	test	rax, rax
	je	.label_738
	mov	qword ptr [rsp + 0x50], rax
	mov	r12, qword ptr [rsp + 0x18]
.label_754:
	mov	rcx, qword ptr [rsp + 8]
	mov	qword ptr [rsp + 0x88], rcx
	mov	ecx, dword ptr [r12 + 0xb4]
	jmp	.label_1002
.label_668:
	mov	dword ptr [rsp + 4], 0xc
	mov	rdi, r12
	call	free_dfa_content
	pxor	xmm0, xmm0
	movdqu	xmmword ptr [r15], xmm0
	mov	eax, 0xc
	jmp	.label_758
.label_923:
	shr	rcx, 0x20
	xor	edx, edx
	mov	qword ptr [rsp + 8], rdx
.label_1002:
	test	bpl, bpl
	cmove	rax, r14
	mov	qword ptr [rsp + 0x50], rax
	cmp	qword ptr [rsp + 0xe0], 0
	je	.label_781
	cmp	ecx, 2
	jl	.label_790
	lea	rdi, [rsp + 0x48]
	call	build_wcs_upper_buffer
	mov	r12d, eax
	test	r12d, r12d
	jne	.label_738
	lea	rbx, [rsp + 0x48]
	nop	
.label_843:
	cmp	qword ptr [rsp + 0x80], r13
	mov	r12, qword ptr [rsp + 0x18]
	jge	.label_639
	mov	rbp, qword ptr [rsp + 0x88]
	movsxd	rax, dword ptr [r12 + 0xb4]
	add	rax, qword ptr [rsp + 0x78]
	cmp	rbp, rax
	jg	.label_639
	lea	r14, [rbp + rbp]
	cmp	dword ptr [rsp + 0xd8], 2
	jl	.label_724
	mov	r12d, 0xc
	movabs	rax, 0x1fffffffffffffff
	cmp	r14, rax
	ja	.label_738
	mov	rdi, qword ptr [rsp + 0x58]
	lea	rsi, [rbp*8]
	call	realloc
	test	rax, rax
	je	.label_738
	mov	qword ptr [rsp + 0x58], rax
	mov	rdi, qword ptr [rsp + 0x60]
	test	rdi, rdi
	je	.label_724
	shl	rbp, 4
	mov	rsi, rbp
	call	realloc
	test	rax, rax
	je	.label_738
	mov	qword ptr [rsp + 0x60], rax
.label_724:
	cmp	byte ptr [rsp + 0xd3], 0
	je	.label_866
	mov	rdi, qword ptr [rsp + 0x50]
	mov	rsi, r14
	call	realloc
	mov	r12d, 0xc
	test	rax, rax
	je	.label_738
	mov	qword ptr [rsp + 0x50], rax
.label_866:
	mov	qword ptr [rsp + 0x88], r14
	mov	rdi, rbx
	call	build_wcs_upper_buffer
	mov	r12d, eax
	test	r12d, r12d
	je	.label_843
.label_738:
	mov	dword ptr [rsp + 4], r12d
	jmp	.label_848
.label_781:
	cmp	ecx, 2
	jl	.label_966
	lea	rdi, [rsp + 0x48]
	call	build_wcs_buffer
	jmp	.label_639
.label_790:
	mov	rax, qword ptr [rsp + 8]
	cmp	rax, r13
	cmovg	rax, r13
	mov	r13, rax
	xor	eax, eax
	test	r13, r13
	jle	.label_855
	xor	eax, eax
	mov	ebp, 1
	jmp	.label_861
	nop	dword ptr [rax]
.label_884:
	mov	r14, qword ptr [rsp + 0x48]
	mov	rax, qword ptr [rsp + 0x70]
	mov	rbx, qword ptr [rsp + 0xc0]
	inc	rbp
.label_861:
	add	r14, rax
	movzx	eax, byte ptr [rbp + r14 - 1]
	movzx	ecx, al
	test	rbx, rbx
	jne	.label_870
.label_887:
	movzx	ebx, al
	mov	eax, ebx
	sub	eax, -0x80
	cmp	eax, 0x17f
	ja	.label_876
	call	__ctype_toupper_loc
	mov	rax, qword ptr [rax]
	mov	ebx, dword ptr [rax + rbx*4]
.label_876:
	mov	rax, qword ptr [rsp + 0x50]
	mov	byte ptr [rax + rbp - 1], bl
	cmp	rbp, r13
	jl	.label_884
	jmp	.label_886
.label_870:
	movzx	eax, byte ptr [rbx + rcx]
	jmp	.label_887
.label_966:
	test	rbx, rbx
	je	.label_888
	mov	rcx, qword ptr [rsp + 8]
	cmp	rcx, r13
	cmovg	rcx, r13
	mov	rdi, rcx
	xor	ecx, ecx
	test	rdi, rdi
	jle	.label_889
	movzx	ecx, byte ptr [r14]
	mov	cl, byte ptr [rbx + rcx]
	mov	byte ptr [rax], cl
	mov	ecx, 1
	cmp	rdi, 1
	je	.label_889
	mov	eax, 1
	nop	word ptr [rax + rax]
.label_906:
	mov	rcx, qword ptr [rsp + 0x48]
	mov	rdx, qword ptr [rsp + 0x50]
	add	rcx, qword ptr [rsp + 0x70]
	movzx	ecx, byte ptr [rax + rcx]
	mov	rsi, qword ptr [rsp + 0xc0]
	movzx	ecx, byte ptr [rsi + rcx]
	mov	byte ptr [rdx + rax], cl
	inc	rax
	cmp	rax, rdi
	jl	.label_906
	mov	rcx, rdi
.label_889:
	mov	qword ptr [rsp + 0x78], rcx
	mov	qword ptr [rsp + 0x80], rcx
	jmp	.label_639
.label_886:
	mov	rax, r13
	jmp	.label_855
.label_888:
	mov	rax, qword ptr [rsp + 8]
.label_855:
	mov	qword ptr [rsp + 0x78], rax
	mov	qword ptr [rsp + 0x80], rax
.label_639:
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
	jne	.label_939
	mov	eax, dword ptr [rsp + 4]
	test	eax, eax
	jne	.label_944
.label_939:
	mov	ebp, dword ptr [rbx + 0x80]
	cmp	ebp, 0xf
	je	.label_1056
	mov	rax, qword ptr [rbx + 0x70]
.label_787:
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
.label_783:
	test	r14, r14
	mov	rcx, rbp
	je	.label_958
	mov	ecx, dword ptr [rbx + 0x80]
	cmp	ecx, 0xf
	je	.label_962
	mov	rax, qword ptr [rbx + 0x70]
.label_796:
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
	je	.label_795
	mov	qword ptr [rbp], rcx
.label_958:
	test	rbp, rbp
	je	.label_795
	test	rcx, rcx
	je	.label_795
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
	je	.label_765
	cmp	qword ptr [rbx + 0x20], 0
	je	.label_765
	test	rax, rax
	je	.label_765
	mov	rax, qword ptr [rbx + 0x28]
	test	rax, rax
	je	.label_765
	mov	rbp, qword ptr [r15 + 0x30]
	lea	rdi, [rbp*8]
	call	malloc
	mov	qword ptr [rbx + 0xe0], rax
	test	rax, rax
	mov	rdi, rbx
	mov	qword ptr [rsp + 8], rdi
	je	.label_1012
	test	rbp, rbp
	je	.label_632
	xor	edx, edx
	cmp	rbp, 4
	jb	.label_637
	xor	edx, edx
	mov	rcx, rbp
	and	rcx, 0xfffffffffffffffc
	je	.label_637
	lea	rsi, [rcx - 4]
	mov	rbx, rsi
	shr	rbx, 2
	lea	edx, [rbx + 1]
	and	edx, 3
	mov	r8d, 1
	cmp	rsi, 0xc
	jae	.label_1025
	movq	xmm0, r8
	pslldq	xmm0, 8
	jmp	.label_1032
.label_1012:
	lea	r12, [rdi + 0x68]
	jmp	.label_683
.label_1025:
	lea	rsi, [rdx - 1]
	sub	rsi, rbx
	mov	ebx, 1
	movq	xmm0, rbx
	pslldq	xmm0, 8
	movdqa	xmm8, xmmword ptr [rip + label_1037]
	movdqa	xmm9, xmmword ptr [rip + label_1038]
	movdqa	xmm10, xmmword ptr [rip + label_1039]
	movdqa	xmm11, xmmword ptr [rip + label_1040]
	movdqa	xmm5, xmmword ptr [rip + label_1041]
	movdqa	xmm6, xmmword ptr [rip + label_1042]
	movdqa	xmm7, xmmword ptr [rip + label_1043]
	movdqa	xmm1, xmmword ptr [rip + label_1044]
	nop	word ptr cs:[rax + rax]
.label_918:
	movdqa	xmm2, xmm0
	paddq	xmm2, xmm8
	movdqa	xmm3, xmm0
	paddq	xmm3, xmm9
	movq	rbx, xmm0
	movdqu	xmmword ptr [rax + rbx*8], xmm0
	movdqu	xmmword ptr [rax + rbx*8 + 0x10], xmm2
	movdqa	xmm2, xmm0
	paddq	xmm2, xmm10
	movdqa	xmm4, xmm0
	paddq	xmm4, xmm11
	movq	rbx, xmm3
	movdqu	xmmword ptr [rax + rbx*8], xmm3
	movdqu	xmmword ptr [rax + rbx*8 + 0x10], xmm2
	movdqa	xmm2, xmm0
	paddq	xmm2, xmm5
	movdqa	xmm3, xmm0
	paddq	xmm3, xmm6
	movq	rbx, xmm4
	movdqu	xmmword ptr [rax + rbx*8], xmm4
	movdqu	xmmword ptr [rax + rbx*8 + 0x10], xmm2
	movdqa	xmm2, xmm0
	paddq	xmm2, xmm7
	paddq	xmm0, xmm1
	movq	rbx, xmm3
	movdqu	xmmword ptr [rax + rbx*8], xmm3
	movdqu	xmmword ptr [rax + rbx*8 + 0x10], xmm2
	add	rsi, 4
	jne	.label_918
.label_1032:
	test	rdx, rdx
	je	.label_1080
	neg	rdx
	movdqa	xmm1, xmmword ptr [rip + label_1037]
	movdqa	xmm2, xmmword ptr [rip + label_1038]
	nop	word ptr cs:[rax + rax]
.label_672:
	movdqa	xmm3, xmm0
	movq	rsi, xmm0
	movdqu	xmmword ptr [rax + rsi*8], xmm0
	paddq	xmm0, xmm1
	paddq	xmm3, xmm2
	movdqu	xmmword ptr [rax + rsi*8 + 0x10], xmm0
	inc	rdx
	movdqa	xmm0, xmm3
	jne	.label_672
.label_1080:
	cmp	rbp, rcx
	mov	rdx, rcx
	je	.label_632
	nop	dword ptr [rax]
.label_637:
	mov	qword ptr [rax + rdx*8], rdx
	inc	rdx
	cmp	rdx, rbp
	jb	.label_637
.label_632:
	mov	rbp, qword ptr [rdi + 0x68]
	mov	rsi, rbp
	call	optimize_subexps
	test	eax, eax
	jne	.label_647
	nop	dword ptr [rax]
.label_663:
	mov	rbx, qword ptr [rbp + 8]
	test	rbx, rbx
	jne	.label_648
	xor	eax, eax
	nop	dword ptr [rax + rax]
.label_658:
	mov	rcx, rax
	mov	rax, rbp
	mov	rbx, qword ptr [rax + 0x10]
	cmp	rbx, rcx
	je	.label_653
	test	rbx, rbx
	jne	.label_648
.label_653:
	mov	rbp, qword ptr [rax]
	test	rbp, rbp
	jne	.label_658
	jmp	.label_647
	nop	
.label_648:
	mov	rdi, qword ptr [rsp + 8]
	mov	rsi, rbx
	call	optimize_subexps
	test	eax, eax
	mov	rbp, rbx
	je	.label_663
.label_647:
	mov	rax, qword ptr [r15 + 0x30]
	xor	ecx, ecx
	test	rax, rax
	mov	rdi, qword ptr [rsp + 8]
	je	.label_666
	mov	rdx, qword ptr [rdi + 0xe0]
	xor	ecx, ecx
	nop	dword ptr [rax]
.label_681:
	cmp	rcx, qword ptr [rdx + rcx*8]
	jne	.label_666
	inc	rcx
	cmp	rcx, rax
	jb	.label_681
.label_666:
	lea	r12, [rdi + 0x68]
	cmp	rcx, rax
	jne	.label_683
	mov	rdi, qword ptr [rdi + 0xe0]
	call	free
	mov	rdi, qword ptr [rsp + 8]
	mov	qword ptr [rdi + 0xe0], 0
.label_683:
	mov	rax, qword ptr [r12]
	lea	rbp, [rsp + 0x20]
	nop	dword ptr [rax]
.label_693:
	mov	rbx, rax
	mov	rax, qword ptr [rbx + 8]
	test	rax, rax
	jne	.label_693
	mov	rax, qword ptr [rbx + 0x10]
	test	rax, rax
	jne	.label_693
	xor	edx, edx
	jmp	.label_700
	nop	dword ptr [rax]
.label_727:
	mov	rdx, qword ptr [rcx + 8]
	mov	rbx, rcx
.label_700:
	mov	dword ptr [rsp + 0x20], 0
	test	rdx, rdx
	je	.label_704
	cmp	byte ptr [rdx + 0x30], 0x11
	jne	.label_704
	mov	rdi, rbp
	mov	rsi, r15
	call	lower_subexp
	mov	rdi, qword ptr [rsp + 8]
	mov	qword ptr [rbx + 8], rax
	test	rax, rax
	je	.label_704
	mov	qword ptr [rax], rbx
	nop	word ptr cs:[rax + rax]
.label_704:
	mov	rdx, qword ptr [rbx + 0x10]
	test	rdx, rdx
	je	.label_682
	cmp	byte ptr [rdx + 0x30], 0x11
	jne	.label_682
	mov	rdi, rbp
	mov	rsi, r15
	call	lower_subexp
	mov	rdi, qword ptr [rsp + 8]
	mov	qword ptr [rbx + 0x10], rax
	test	rax, rax
	je	.label_682
	mov	qword ptr [rax], rbx
	nop	dword ptr [rax + rax]
.label_682:
	mov	eax, dword ptr [rsp + 0x20]
	test	eax, eax
	jne	.label_722
	mov	rcx, qword ptr [rbx]
	test	rcx, rcx
	je	.label_725
	mov	rax, qword ptr [rcx + 0x10]
	cmp	rax, rbx
	je	.label_727
	test	rax, rax
	je	.label_727
	jmp	.label_693
.label_725:
	mov	rax, qword ptr [r12]
	mov	ebp, 0xfffc00ff
	nop	dword ptr [rax + rax]
.label_744:
	mov	rbx, rax
	mov	rax, qword ptr [rbx + 8]
	test	rax, rax
	jne	.label_744
	mov	rax, qword ptr [rbx + 0x10]
	test	rax, rax
	jne	.label_744
	nop	word ptr cs:[rax + rax]
.label_778:
	cmp	byte ptr [rbx + 0x30], 0x10
	jne	.label_873
	mov	rax, qword ptr [rbx + 8]
	mov	rcx, qword ptr [rax + 0x18]
	mov	qword ptr [rbx + 0x18], rcx
	mov	rax, qword ptr [rax + 0x38]
	mov	qword ptr [rbx + 0x38], rax
	jmp	.label_750
	nop	dword ptr [rax]
.label_873:
	mov	qword ptr [rbx + 0x18], rbx
	mov	rsi, qword ptr [rbx + 0x28]
	mov	rdx, qword ptr [rbx + 0x30]
	call	re_dfa_add_node
	mov	qword ptr [rbx + 0x38], rax
	cmp	rax, -1
	je	.label_765
	cmp	byte ptr [rbx + 0x30], 0xc
	mov	rdi, qword ptr [rsp + 8]
	jne	.label_750
	mov	ecx, dword ptr [rbx + 0x28]
	mov	rdx, qword ptr [rdi]
	shl	rax, 4
	shl	ecx, 8
	and	ecx, 0x3ff00
	mov	esi, dword ptr [rdx + rax + 8]
	and	esi, ebp
	or	esi, ecx
	mov	dword ptr [rdx + rax + 8], esi
.label_750:
	mov	rcx, qword ptr [rbx]
	test	rcx, rcx
	je	.label_776
	mov	rax, qword ptr [rcx + 0x10]
	cmp	rax, rbx
	mov	rbx, rcx
	je	.label_778
	test	rax, rax
	mov	rbx, rcx
	je	.label_778
	jmp	.label_744
.label_776:
	mov	rbp, qword ptr [r12]
	mov	al, byte ptr [rbp + 0x30]
	cmp	al, 0x10
	je	.label_786
	cmp	al, 0xb
	jne	.label_789
	mov	rax, qword ptr [rbp + 8]
	mov	qword ptr [rax + 0x20], rbp
	jmp	.label_791
.label_786:
	mov	rax, qword ptr [rbp + 8]
	mov	rcx, qword ptr [rbp + 0x10]
	mov	rdx, qword ptr [rcx + 0x18]
	mov	qword ptr [rax + 0x20], rdx
	jmp	.label_792
.label_789:
	mov	rax, qword ptr [rbp + 8]
	test	rax, rax
	je	.label_640
	mov	rcx, qword ptr [rbp + 0x20]
	mov	qword ptr [rax + 0x20], rcx
.label_640:
	mov	rcx, qword ptr [rbp + 0x10]
	test	rcx, rcx
	je	.label_791
.label_792:
	mov	rdx, qword ptr [rbp + 0x20]
	mov	qword ptr [rcx + 0x20], rdx
.label_791:
	mov	rdx, rbp
	jmp	.label_699
.label_839:
	mov	rax, qword ptr [rcx + 8]
	mov	rdx, qword ptr [rcx + 0x10]
	mov	rsi, qword ptr [rdx + 0x18]
	mov	qword ptr [rax + 0x20], rsi
	mov	rsi, qword ptr [rcx + 0x20]
	mov	qword ptr [rdx + 0x20], rsi
	mov	rdx, rcx
.label_699:
	test	rax, rax
	mov	rcx, rax
	jne	.label_797
	xor	eax, eax
	nop	word ptr cs:[rax + rax]
.label_805:
	mov	rsi, rax
	mov	rax, rdx
	mov	rcx, qword ptr [rax + 0x10]
	cmp	rcx, rsi
	je	.label_1026
	test	rcx, rcx
	jne	.label_797
.label_1026:
	mov	rdx, qword ptr [rax]
	test	rdx, rdx
	jne	.label_805
	jmp	.label_817
	nop	
.label_797:
	mov	al, byte ptr [rcx + 0x30]
	cmp	al, 0x10
	je	.label_839
	cmp	al, 0xb
	jne	.label_829
	mov	rax, qword ptr [rcx + 8]
	mov	qword ptr [rax + 0x20], rcx
	mov	rdx, rcx
	jmp	.label_699
.label_829:
	mov	rax, qword ptr [rcx + 8]
	test	rax, rax
	je	.label_832
	mov	rdx, qword ptr [rcx + 0x20]
	mov	qword ptr [rax + 0x20], rdx
.label_832:
	mov	rsi, qword ptr [rcx + 0x10]
	test	rsi, rsi
	mov	rdx, rcx
	je	.label_699
	mov	rdx, qword ptr [rcx + 0x20]
	mov	qword ptr [rsi + 0x20], rdx
	mov	rdx, rcx
	jmp	.label_699
.label_817:
	mov	rsi, rbp
	call	link_nfa_nodes
	mov	rsi, qword ptr [rsp + 8]
	test	eax, eax
	jne	.label_722
	nop	word ptr [rax + rax]
.label_860:
	mov	rbx, qword ptr [rbp + 8]
	test	rbx, rbx
	jne	.label_846
	xor	eax, eax
	nop	dword ptr [rax + rax]
.label_853:
	mov	rcx, rax
	mov	rax, rbp
	mov	rbx, qword ptr [rax + 0x10]
	cmp	rbx, rcx
	je	.label_850
	test	rbx, rbx
	jne	.label_846
.label_850:
	mov	rbp, qword ptr [rax]
	test	rbp, rbp
	jne	.label_853
	jmp	.label_858
	nop	
.label_846:
	mov	rdi, rsi
	mov	rsi, rbx
	call	link_nfa_nodes
	mov	rsi, qword ptr [rsp + 8]
	test	eax, eax
	mov	rbp, rbx
	je	.label_860
	jmp	.label_722
.label_858:
	xor	eax, eax
	lea	r12, [rsp + 0x20]
	xor	r14d, r14d
	jmp	.label_865
	nop	dword ptr [rax + rax]
.label_881:
	inc	rbp
	mov	rax, rbp
.label_865:
	cmp	rax, qword ptr [rsi + 0x10]
	jne	.label_1075
	xor	ebp, ebp
	test	r14b, 1
	mov	r14d, 0
	jne	.label_871
	jmp	.label_878
	nop	dword ptr [rax]
.label_1075:
	mov	rbp, rax
.label_871:
	mov	rax, qword ptr [rsi + 0x30]
	lea	rbx, [rbp + rbp*2]
	cmp	qword ptr [rax + rbx*8 + 8], 0
	jne	.label_881
	mov	ecx, 1
	mov	rdi, r12
	mov	rdx, rbp
	mov	r13, rsi
	call	calc_eclosure_iter
	test	eax, eax
	jne	.label_722
	mov	rax, qword ptr [r13 + 0x30]
	cmp	qword ptr [rax + rbx*8 + 8], 0
	mov	rsi, r13
	jne	.label_881
	mov	rdi, qword ptr [rsp + 0x30]
	call	free
	mov	rsi, qword ptr [rsp + 8]
	mov	r14b, 1
	jmp	.label_881
.label_878:
	test	byte ptr [r15 + 0x38], 0x10
	mov	qword ptr [rsp + 0x38], r15
	mov	r14, qword ptr [rsp + 0x18]
	jne	.label_901
	cmp	qword ptr [r15 + 0x30], 0
	je	.label_901
	test	byte ptr [rsi + 0xb0], 1
	jne	.label_909
.label_901:
	cmp	qword ptr [rsi + 0x98], 0
	je	.label_914
.label_909:
	shl	rax, 3
	lea	rdi, [rax + rax*2]
	call	malloc
	mov	r8, qword ptr [rsp + 8]
	mov	qword ptr [r8 + 0x38], rax
	test	rax, rax
	je	.label_765
	cmp	qword ptr [r8 + 0x10], 0
	je	.label_914
	pxor	xmm0, xmm0
	movdqu	xmmword ptr [rax], xmm0
	mov	qword ptr [rax + 0x10], 0
	mov	rax, qword ptr [r8 + 0x10]
	cmp	rax, 2
	jb	.label_919
	mov	ecx, 1
	mov	edx, 0x18
	nop	
.label_925:
	mov	rax, qword ptr [r8 + 0x38]
	movdqu	xmmword ptr [rax + rdx], xmm0
	mov	qword ptr [rax + rdx + 0x10], 0
	inc	rcx
	mov	rax, qword ptr [r8 + 0x10]
	add	rdx, 0x18
	cmp	rcx, rax
	jb	.label_925
.label_919:
	test	rax, rax
	je	.label_914
	mov	r9, qword ptr [r8 + 0x30]
	xor	ebp, ebp
	nop	word ptr cs:[rax + rax]
.label_975:
	lea	r10, [rbp + rbp*2]
	cmp	qword ptr [r9 + r10*8 + 8], 0
	jle	.label_938
	mov	r13, qword ptr [r9 + r10*8 + 0x10]
	xor	ebx, ebx
	mov	qword ptr [rsp + 0x40], r10
	nop	dword ptr [rax]
.label_1049:
	mov	r14, qword ptr [r8 + 0x38]
	mov	rax, qword ptr [r13 + rbx*8]
	lea	r12, [rax + rax*2]
	mov	rax, qword ptr [r14 + r12*8]
	lea	r15, [r14 + r12*8 + 8]
	mov	rdx, qword ptr [r14 + r12*8 + 8]
	cmp	rax, rdx
	jne	.label_947
	lea	rcx, [r14 + r12*8]
	lea	rdx, [rax + rax + 2]
	lea	rax, [rax + rax]
	mov	qword ptr [rcx], rdx
	mov	rdi, qword ptr [r14 + r12*8 + 0x10]
	lea	rsi, [rax*8 + 0x10]
	call	realloc
	test	rax, rax
	je	.label_956
	lea	rcx, [r14 + r12*8 + 0x10]
	mov	qword ptr [rcx], rax
	mov	rdx, qword ptr [r15]
	mov	r8, qword ptr [rsp + 8]
	mov	r9, qword ptr [r8 + 0x30]
	mov	r10, qword ptr [rsp + 0x40]
	jmp	.label_959
	nop	word ptr cs:[rax + rax]
.label_947:
	mov	rax, qword ptr [r14 + r12*8 + 0x10]
.label_959:
	lea	rsi, [rdx + 1]
	mov	qword ptr [r15], rsi
	mov	qword ptr [rax + rdx*8], rbp
	inc	rbx
	cmp	rbx, qword ptr [r9 + r10*8 + 8]
	jl	.label_1049
	mov	rax, qword ptr [r8 + 0x10]
	mov	r15, qword ptr [rsp + 0x38]
	mov	r14, qword ptr [rsp + 0x18]
.label_938:
	inc	rbp
	cmp	rbp, rax
	jb	.label_975
.label_914:
	mov	dword ptr [rsp + 4], 0
	cmp	qword ptr [rsp + 0xe0], 0
	jne	.label_903
	mov	al, byte ptr [r14 + 0xb0]
	mov	ecx, eax
	and	cl, 4
	je	.label_903
	cmp	qword ptr [r15 + 0x28], 0
	jne	.label_903
	mov	rdx, qword ptr [r14 + 0x10]
	test	rdx, rdx
	je	.label_989
	mov	rbp, qword ptr [r14]
	xor	r9d, r9d
	movabs	r8, 0x1000000010001
	mov	rcx, rbp
	xor	r10d, r10d
	xor	edi, edi
.label_1015:
	movzx	ebx, byte ptr [rcx + 8]
	dec	bl
	movzx	esi, bl
	cmp	sil, 0xb
	ja	.label_994
	jmp	qword ptr [(rsi * 8) + label_998]
.label_2551:
	cmp	byte ptr [rcx], 0
	mov	sil, 1
	js	.label_999
	mov	esi, r10d
.label_999:
	mov	r10b, sil
	jmp	.label_1003
.label_2552:
	mov	rsi, qword ptr [rcx]
	cmp	qword ptr [rsi + 0x10], 0
	jne	.label_903
	cmp	qword ptr [rsi + 0x18], 0
	je	.label_1003
	jmp	.label_903
.label_2553:
	mov	r9b, 1
	jmp	.label_1003
.label_2554:
	mov	esi, dword ptr [rcx]
	lea	ebx, [rsi - 0x10]
	cmp	ebx, 0x30
	ja	.label_1051
	bt	r8, rbx
	jb	.label_1003
.label_1051:
	cmp	esi, 0x80
	jne	.label_903
.label_1003:
	inc	rdi
	add	rcx, 0x10
	cmp	rdi, rdx
	jb	.label_1015
	mov	cl, r9b
	and	cl, 1
	or	r10b, r9b
	test	r10b, 1
	je	.label_788
	xor	eax, eax
	mov	edx, 8
	jmp	.label_1022
.label_765:
	mov	eax, 0xc
.label_722:
	mov	dword ptr [rsp + 4], eax
.label_848:
	mov	r12, qword ptr [rsp + 0x18]
	jmp	.label_667
.label_1045:
	add	rdx, 0x10
	mov	rbp, qword ptr [r14]
.label_1022:
	mov	esi, dword ptr [rbp + rdx]
	cmp	sil, 5
	je	.label_712
	cmp	sil, 1
	jne	.label_1030
	cmp	byte ptr [rbp + rdx - 8], 0
	jns	.label_1030
	and	esi, 0xffdfffff
	jmp	.label_745
.label_712:
	and	esi, 0xffffff00
	or	esi, 7
.label_745:
	mov	dword ptr [rbp + rdx], esi
.label_1030:
	inc	rax
	cmp	rax, qword ptr [r14 + 0x10]
	jb	.label_1045
	mov	al, byte ptr [r14 + 0xb0]
	jmp	.label_788
.label_989:
	xor	ecx, ecx
.label_788:
	mov	dword ptr [r14 + 0xb4], 1
	cmp	qword ptr [r14 + 0x98], 0
	setg	dl
	or	dl, cl
	add	dl, dl
	and	al, 0xf9
	or	al, dl
	mov	byte ptr [r14 + 0xb0], al
.label_903:
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
	jle	.label_1055
	mov	qword ptr [rsp + 0x20], r13
	lea	rdi, [r13*8]
	call	malloc
	mov	rbp, rax
	mov	qword ptr [rsp + 0x30], rbp
	test	rbp, rbp
	je	.label_1066
	mov	rsi, qword ptr [r15 + r12*8 + 0x10]
	shl	r14, 3
	mov	rdi, rbp
	mov	rdx, r14
	call	memcpy
	mov	dword ptr [rsp + 0x14], 0
	test	r13, r13
	mov	r15, qword ptr [rsp + 0x38]
	mov	r12, qword ptr [rsp + 0x18]
	jle	.label_678
	mov	rax, qword ptr [r12 + 0x98]
	test	rax, rax
	jle	.label_678
	xor	eax, eax
	lea	r14, [rsp + 0x20]
	jmp	.label_1078
	nop	dword ptr [rax + rax]
.label_671:
	mov	rbp, qword ptr [rsp + 0x30]
.label_1078:
	mov	r8, qword ptr [rbp + rax*8]
	mov	rdx, qword ptr [r12]
	mov	rsi, r8
	shl	rsi, 4
	cmp	byte ptr [rdx + rsi + 8], 4
	jne	.label_628
	test	r13, r13
	mov	edi, 0
	jle	.label_644
	add	rsi, rdx
	xor	edi, edi
	nop	
.label_624:
	mov	rcx, qword ptr [rbp + rdi*8]
	shl	rcx, 4
	cmp	byte ptr [rdx + rcx + 8], 9
	jne	.label_1076
	mov	rcx, qword ptr [rdx + rcx]
	cmp	rcx, qword ptr [rsi]
	je	.label_644
.label_1076:
	inc	rdi
	cmp	rdi, r13
	jl	.label_624
.label_644:
	cmp	rdi, r13
	je	.label_628
	mov	rcx, qword ptr [r12 + 0x28]
	lea	rdx, [r8 + r8*2]
	mov	rcx, qword ptr [rcx + rdx*8 + 0x10]
	mov	rcx, qword ptr [rcx]
	test	r13, r13
	jle	.label_633
	mov	rdx, r13
	dec	rdx
	mov	esi, 0
	je	.label_761
	xor	esi, esi
	nop	dword ptr [rax + rax]
.label_701:
	lea	rdi, [rsi + rdx]
	shr	rdi, 1
	cmp	qword ptr [rbp + rdi*8], rcx
	lea	rbx, [rdi + 1]
	cmovl	rsi, rbx
	cmovge	rdx, rdi
	cmp	rsi, rdx
	jb	.label_701
.label_761:
	cmp	rsi, -1
	je	.label_633
	cmp	qword ptr [rbp + rsi*8], rcx
	je	.label_628
.label_633:
	mov	rax, qword ptr [r12 + 0x30]
	lea	rcx, [rcx + rcx*2]
	lea	rsi, [rax + rcx*8]
	mov	rdi, r14
	call	re_node_set_merge
	test	eax, eax
	jne	.label_664
	mov	r13, qword ptr [rsp + 0x28]
	xor	eax, eax
	nop	
.label_628:
	inc	rax
	cmp	rax, r13
	jl	.label_671
	jmp	.label_678
.label_1055:
	pxor	xmm0, xmm0
	movdqa	xmmword ptr [rsp + 0x20], xmm0
	mov	qword ptr [rsp + 0x30], 0
	mov	dword ptr [rsp + 0x14], 0
	mov	r15, qword ptr [rsp + 0x38]
	mov	r12, qword ptr [rsp + 0x18]
.label_678:
	lea	rdi, [rsp + 0x14]
	lea	rdx, [rsp + 0x20]
	xor	ecx, ecx
	mov	rsi, r12
	call	re_acquire_state_context
	mov	qword ptr [r12 + 0x48], rax
	test	rax, rax
	je	.label_690
	cmp	byte ptr [rax + 0x68], 0
	js	.label_694
	mov	qword ptr [r12 + 0x60], rax
	mov	qword ptr [r12 + 0x58], rax
	mov	qword ptr [r12 + 0x50], rax
	jmp	.label_696
.label_694:
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
	je	.label_707
	test	rax, rax
	je	.label_707
	mov	rax, qword ptr [r12 + 0x58]
	test	rax, rax
	je	.label_707
.label_696:
	mov	rdi, qword ptr [rsp + 0x30]
	call	free
	xor	eax, eax
.label_664:
	mov	dword ptr [rsp + 4], eax
	mov	rbx, qword ptr [r15]
	mov	rdi, qword ptr [rbx + 0x70]
	test	rdi, rdi
	je	.label_726
	nop	dword ptr [rax]
.label_735:
	mov	rbp, qword ptr [rdi]
	call	free
	test	rbp, rbp
	mov	rdi, rbp
	jne	.label_735
.label_726:
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
	je	.label_755
	mov	rdi, qword ptr [rsp + 0x50]
	call	free
.label_755:
	xor	eax, eax
	cmp	dword ptr [rsp + 4], 0
	je	.label_758
	jmp	.label_764
.label_707:
	mov	eax, dword ptr [rsp + 0x14]
	jmp	.label_664
.label_956:
	mov	eax, 0xc
	mov	r15, qword ptr [rsp + 0x38]
	jmp	.label_722
.label_971:
	mov	esi, 0xe8
	mov	rdi, r12
	call	realloc
	mov	r12, rax
	mov	eax, 0xc
	test	r12, r12
	je	.label_758
	mov	qword ptr [r15 + 8], 0xe8
	mov	qword ptr [r15], r12
	jmp	.label_777
.label_1056:
	mov	edi, 0x3c8
	call	malloc
	xor	ebp, ebp
	test	rax, rax
	je	.label_783
	mov	rcx, qword ptr [rbx + 0x70]
	mov	qword ptr [rax], rcx
	mov	qword ptr [rbx + 0x70], rax
	mov	dword ptr [rbx + 0x80], 0
	jmp	.label_787
.label_962:
	mov	edi, 0x3c8
	call	malloc
	test	rax, rax
	je	.label_795
	mov	rcx, qword ptr [rbx + 0x70]
	mov	qword ptr [rax], rcx
	mov	qword ptr [rbx + 0x70], rax
	mov	dword ptr [rbx + 0x80], 0
	xor	ecx, ecx
	jmp	.label_796
.label_795:
	mov	dword ptr [rsp + 4], 0xc
.label_944:
	mov	qword ptr [r12 + 0x68], 0
.label_667:
	mov	rbx, qword ptr [r15]
	mov	rdi, qword ptr [rbx + 0x70]
	test	rdi, rdi
	je	.label_811
	nop	word ptr cs:[rax + rax]
.label_816:
	mov	rbp, qword ptr [rdi]
	call	free
	test	rbp, rbp
	mov	rdi, rbp
	jne	.label_816
.label_811:
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
	je	.label_764
	mov	rdi, qword ptr [rsp + 0x50]
	call	free
.label_764:
	mov	rdi, r12
	call	free_dfa_content
	pxor	xmm0, xmm0
	movdqu	xmmword ptr [r15], xmm0
	mov	eax, dword ptr [rsp + 4]
.label_758:
	add	rsp, 0xe8
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_690:
	mov	eax, dword ptr [rsp + 0x14]
	jmp	.label_664
.label_1066:
	pxor	xmm0, xmm0
	movdqa	xmmword ptr [rsp + 0x20], xmm0
	mov	dword ptr [rsp + 0x14], 0xc
	mov	eax, 0xc
	mov	r15, qword ptr [rsp + 0x38]
	mov	r12, qword ptr [rsp + 0x18]
	jmp	.label_664
.label_994:
	call	abort
	nop	
	.section	.text
	.align	32
	#Procedure 0x4083c0
	.globl rpl_re_set_syntax
	.type rpl_re_set_syntax, @function
rpl_re_set_syntax:

	mov	rax, qword ptr [rip + rpl_re_syntax_options]
	mov	qword ptr [rip + rpl_re_syntax_options],  rdi
	ret	
	nop	
	.section	.text
	.align	32
	#Procedure 0x4083d0

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
	je	.label_1083
	mov	rdi, r14
	mov	rdx, rbx
	call	re_compile_fastmap_iter
	mov	rax, qword ptr [r15 + 0x48]
.label_1083:
	mov	rsi, qword ptr [r15 + 0x58]
	cmp	rax, rsi
	je	.label_1082
	mov	rdi, r14
	mov	rdx, rbx
	call	re_compile_fastmap_iter
	mov	rax, qword ptr [r15 + 0x48]
.label_1082:
	mov	rsi, qword ptr [r15 + 0x60]
	cmp	rax, rsi
	je	.label_1084
	mov	rdi, r14
	mov	rdx, rbx
	call	re_compile_fastmap_iter
.label_1084:
	or	byte ptr [r14 + 0x38], 8
	xor	eax, eax
	pop	rbx
	pop	r14
	pop	r15
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4084a0

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
	mov	rcx, qword ptr [r13]
	cmp	dword ptr [rcx + 0xb4], 1
	jne	.label_1085
	mov	r14b, byte ptr [r13 + 0x1a]
	and	r14b, 0x40
	shr	r14b, 6
	jmp	.label_1086
.label_1085:
	xor	r14d, r14d
.label_1086:
	cmp	qword ptr [rsi + 0x10], 0
	jle	.label_687
	xor	edx, edx
	mov	qword ptr [rsp + 0x20], rsi
	mov	qword ptr [rsp], rcx
	nop	dword ptr [rax + rax]
.label_684:
	mov	rax, qword ptr [rsi + 0x18]
	mov	qword ptr [rsp + 0x28], rdx
	mov	rbp, qword ptr [rax + rdx*8]
	mov	rcx, qword ptr [rcx]
	mov	r12, rbp
	shl	r12, 4
	movzx	eax, byte ptr [rcx + r12 + 8]
	mov	edx, eax
	dec	dl
	movzx	edx, dl
	cmp	dl, 6
	ja	.label_609
	lea	rsi, [rcx + r12]
	jmp	qword ptr [(rdx * 8) + label_937]
.label_2502:
	movzx	ebx, byte ptr [rsi]
	mov	byte ptr [r15 + rbx], 1
	test	r14b, r14b
	je	.label_940
	mov	eax, ebx
	sub	eax, -0x80
	cmp	eax, 0x17f
	ja	.label_946
	call	__ctype_tolower_loc
	mov	rax, qword ptr [rax]
	mov	ebx, dword ptr [rax + rbx*4]
.label_946:
	movsxd	rax, ebx
	mov	byte ptr [r15 + rax], 1
.label_940:
	test	byte ptr [r13 + 0x1a], 0x40
	je	.label_609
	mov	rax, qword ptr [rsp]
	cmp	dword ptr [rax + 0xb4], 2
	jl	.label_609
	mov	qword ptr [rsp + 0x18], r13
	mov	rdx, qword ptr [rsp]
	mov	rax, qword ptr [rdx]
	mov	al, byte ptr [rax + r12]
	mov	byte ptr [rsp + 0x30], al
	inc	rbp
	cmp	rbp, qword ptr [rdx + 0x10]
	lea	r13, [rsp + 0x31]
	mov	esi, 0x2000ff
	jae	.label_952
	add	r12, 0x18
	lea	r13, [rsp + 0x31]
.label_965:
	mov	rax, qword ptr [rdx]
	mov	ecx, dword ptr [rax + r12]
	and	ecx, esi
	cmp	ecx, 0x200001
	jne	.label_952
	movzx	eax, byte ptr [rax + r12 - 8]
	mov	byte ptr [r13], al
	inc	r13
	inc	rbp
	add	r12, 0x10
	cmp	rbp, qword ptr [rdx + 0x10]
	jb	.label_965
.label_952:
	mov	qword ptr [rsp + 8], 0
	lea	rbp, [rsp + 0x30]
	sub	r13, rbp
	lea	rdi, [rsp + 0x14]
	mov	rsi, rbp
	mov	rdx, r13
	lea	rbx, [rsp + 8]
	mov	rcx, rbx
	call	rpl_mbrtowc
	cmp	rax, r13
	jne	.label_856
	mov	edi, dword ptr [rsp + 0x14]
	call	towlower
	mov	rdi, rbp
	mov	esi, eax
	mov	rdx, rbx
	call	wcrtomb
	cmp	rax, -1
	je	.label_856
	movzx	eax, byte ptr [rsp + 0x30]
	mov	byte ptr [r15 + rax], 1
.label_856:
	mov	r13, qword ptr [rsp + 0x18]
	jmp	.label_609
	nop	dword ptr [rax]
.label_2504:
	mov	rax, qword ptr [rcx + r12]
	mov	rbp, qword ptr [rax]
	xor	ebx, ebx
	nop	dword ptr [rax]
.label_1005:
	bt	rbp, rbx
	jae	.label_993
	mov	byte ptr [r15 + rbx], 1
	test	r14b, r14b
	je	.label_993
	mov	eax, ebx
	sub	eax, -0x80
	cmp	eax, 0x180
	jae	.label_996
	call	__ctype_tolower_loc
	mov	rax, qword ptr [rax]
	mov	eax, dword ptr [rax + rbx*4]
	jmp	.label_995
.label_996:
	mov	eax, ebx
.label_995:
	cdqe	
	mov	byte ptr [r15 + rax], 1
.label_993:
	inc	rbx
	cmp	rbx, 0x40
	jne	.label_1005
	mov	rax, qword ptr [rsp]
	mov	rax, qword ptr [rax]
	mov	rax, qword ptr [rax + r12]
	mov	rbp, qword ptr [rax + 8]
	xor	ebx, ebx
	nop	dword ptr [rax]
.label_670:
	bt	rbp, rbx
	jae	.label_1010
	mov	byte ptr [r15 + rbx + 0x40], 1
	test	r14b, r14b
	je	.label_1010
	lea	eax, [rbx + 0xc0]
	cmp	eax, 0x180
	jae	.label_1014
	call	__ctype_tolower_loc
	mov	rax, qword ptr [rax]
	mov	eax, dword ptr [rax + rbx*4 + 0x100]
	jmp	.label_762
.label_1014:
	lea	rax, [rbx + 0x40]
.label_762:
	cdqe	
	mov	byte ptr [r15 + rax], 1
.label_1010:
	inc	rbx
	cmp	rbx, 0x40
	jne	.label_670
	mov	rax, qword ptr [rsp]
	mov	rax, qword ptr [rax]
	mov	rax, qword ptr [rax + r12]
	mov	rbp, qword ptr [rax + 0x10]
	xor	ebx, ebx
	nop	word ptr cs:[rax + rax]
.label_1050:
	bt	rbp, rbx
	jae	.label_898
	mov	byte ptr [r15 + rbx + 0x80], 1
	test	r14b, r14b
	je	.label_898
	lea	eax, [rbx + 0x100]
	cmp	eax, 0x180
	jae	.label_1035
	call	__ctype_tolower_loc
	mov	rax, qword ptr [rax]
	mov	eax, dword ptr [rax + rbx*4 + 0x200]
	jmp	.label_680
.label_1035:
	mov	rax, rbx
	sub	rax, -0x80
.label_680:
	cdqe	
	mov	byte ptr [r15 + rax], 1
.label_898:
	inc	rbx
	cmp	rbx, 0x40
	jne	.label_1050
	mov	rax, qword ptr [rsp]
	mov	rax, qword ptr [rax]
	mov	rax, qword ptr [rax + r12]
	mov	rbp, qword ptr [rax + 0x18]
	xor	ebx, ebx
	nop	word ptr [rax + rax]
.label_1067:
	bt	rbp, rbx
	jae	.label_875
	mov	byte ptr [r15 + rbx + 0xc0], 1
	test	r14b, r14b
	je	.label_875
	lea	eax, [rbx + 0x140]
	cmp	eax, 0x180
	jae	.label_1059
	call	__ctype_tolower_loc
	mov	rax, qword ptr [rax]
	mov	eax, dword ptr [rax + rbx*4 + 0x300]
	jmp	.label_1064
.label_1059:
	lea	rax, [rbx + 0xc0]
.label_1064:
	cdqe	
	mov	byte ptr [r15 + rax], 1
.label_875:
	inc	rbx
	cmp	rbx, 0x40
	jne	.label_1067
	jmp	.label_609
	nop	
.label_2505:
	mov	r12, qword ptr [rsi]
	mov	rax, qword ptr [rsp]
	cmp	dword ptr [rax + 0xb4], 1
	jle	.label_1006
	cmp	qword ptr [r12 + 0x48], 0
	jne	.label_809
	test	byte ptr [r12 + 0x20], 1
	jne	.label_809
	cmp	qword ptr [r12 + 0x40], 0
	je	.label_1006
.label_809:
	mov	byte ptr [rsp + 8], 0
	lea	rbx, [rsp + 0x30]
	lea	rbp, [rsp + 8]
	nop	word ptr [rax + rax]
.label_607:
	mov	qword ptr [rsp + 0x30], 0
	xor	edi, edi
	mov	edx, 1
	mov	rsi, rbp
	mov	rcx, rbx
	call	rpl_mbrtowc
	movzx	ecx, byte ptr [rsp + 8]
	cmp	rax, -2
	jne	.label_1081
	mov	byte ptr [r15 + rcx], 1
.label_1081:
	inc	cl
	mov	byte ptr [rsp + 8], cl
	jne	.label_607
	jmp	.label_609
.label_1006:
	cmp	qword ptr [r12 + 0x28], 0
	jle	.label_609
	xor	ebp, ebp
	nop	word ptr cs:[rax + rax]
.label_926:
	mov	qword ptr [rsp + 8], 0
	mov	rax, qword ptr [r12]
	mov	esi, dword ptr [rax + rbp*4]
	lea	rdi, [rsp + 0x30]
	lea	rdx, [rsp + 8]
	call	wcrtomb
	cmp	rax, -1
	je	.label_636
	movzx	ebx, byte ptr [rsp + 0x30]
	mov	byte ptr [r15 + rbx], 1
	test	r14b, r14b
	je	.label_636
	mov	eax, ebx
	sub	eax, -0x80
	cmp	eax, 0x17f
	ja	.label_645
	call	__ctype_tolower_loc
	mov	rax, qword ptr [rax]
	mov	ebx, dword ptr [rax + rbx*4]
.label_645:
	movsxd	rax, ebx
	mov	byte ptr [r15 + rax], 1
.label_636:
	test	byte ptr [r13 + 0x1a], 0x40
	je	.label_655
	mov	rax, qword ptr [rsp]
	cmp	dword ptr [rax + 0xb4], 2
	jl	.label_655
	mov	rax, qword ptr [r12]
	mov	edi, dword ptr [rax + rbp*4]
	call	towlower
	lea	rdi, [rsp + 0x30]
	mov	esi, eax
	lea	rdx, [rsp + 8]
	call	wcrtomb
	cmp	rax, -1
	je	.label_655
	movzx	eax, byte ptr [rsp + 0x30]
	mov	byte ptr [r15 + rax], 1
	nop	word ptr cs:[rax + rax]
.label_655:
	inc	rbp
	cmp	rbp, qword ptr [r12 + 0x28]
	jl	.label_926
	nop	
.label_609:
	mov	rdx, qword ptr [rsp + 0x28]
	inc	rdx
	mov	rsi, qword ptr [rsp + 0x20]
	cmp	rdx, qword ptr [rsi + 0x10]
	mov	rcx, qword ptr [rsp]
	jl	.label_684
	jmp	.label_687
.label_2503:
	movaps	xmm0, xmmword ptr [rip + label_688]
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
	jne	.label_687
	or	byte ptr [r13 + 0x38], 1
.label_687:
	add	rsp, 0x138
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
	#Procedure 0x408990
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
	je	.label_1089
	test	bpl, 1
	mov	eax, 0x3b2fc
	mov	ecx, 0x10102c6
	cmovne	rcx, rax
	mov	ebx, ebp
	and	ebx, 2
	shl	rbx, 0x15
	or	rbx, rcx
	test	bpl, 4
	jne	.label_1087
	mov	al, byte ptr [r15 + 0x38]
	and	al, 0x7f
	jmp	.label_1088
.label_1087:
	and	ebx, 0x143b2be
	or	rbx, 0x100
	mov	al, byte ptr [r15 + 0x38]
	or	al, 0x80
.label_1088:
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
	jne	.label_1090
	mov	rdi, r15
	call	rpl_re_compile_fastmap
	xor	ebx, ebx
.label_1089:
	mov	eax, ebx
	add	rsp, 8
	pop	rbx
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_1090:
	mov	rdi, qword ptr [r15 + 0x20]
	call	free
	mov	qword ptr [r15 + 0x20], 0
	jmp	.label_1089
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x408a80
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
	jae	.label_1091
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
	je	.label_1094
	cmp	rbx, r15
	mov	rdx, rbx
	ja	.label_1092
.label_1093:
	mov	rdi, r14
	mov	rsi, r12
	call	memcpy
.label_1094:
	mov	rax, rbx
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	ret	
.label_1092:
	mov	byte ptr [r14 + r15 - 1], 0
	dec	r15
	mov	rdx, r15
	jmp	.label_1093
.label_1091:
	call	abort
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x408b00

	.globl rpl_regfree
	.type rpl_regfree, @function
rpl_regfree:
	push	rbx
	mov	rbx, rdi
	mov	rdi, qword ptr [rbx]
	test	rdi, rdi
	je	.label_1095
	call	free_dfa_content
.label_1095:
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
	#Procedure 0x408b40

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
	je	.label_1106
	cmp	qword ptr [r14 + 0x10], 0
	je	.label_1106
	xor	ebx, ebx
	mov	r12d, 8
	mov	ebp, 0x400ff
	jmp	.label_1110
	nop	dword ptr [rax]
.label_1108:
	add	r12, 0x10
	mov	rax, qword ptr [r14]
.label_1110:
	mov	ecx, dword ptr [rax + r12]
	and	ecx, ebp
	cmp	ecx, 3
	je	.label_1112
	cmp	ecx, 6
	jne	.label_1097
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
	jmp	.label_1103
	nop	word ptr cs:[rax + rax]
.label_1112:
	mov	rdi, qword ptr [rax + r12 - 8]
.label_1103:
	call	free
.label_1097:
	inc	rbx
	cmp	rbx, qword ptr [r14 + 0x10]
	jb	.label_1108
.label_1106:
	mov	rdi, qword ptr [r14 + 0x18]
	call	free
	cmp	qword ptr [r14 + 0x10], 0
	je	.label_1109
	lea	r12, [r14 + 0x30]
	lea	r15, [r14 + 0x38]
	lea	r13, [r14 + 0x28]
	xor	ebp, ebp
	mov	ebx, 0x10
	nop	word ptr cs:[rax + rax]
.label_1104:
	mov	rax, qword ptr [r12]
	test	rax, rax
	je	.label_1096
	mov	rdi, qword ptr [rax + rbx]
	call	free
.label_1096:
	mov	rax, qword ptr [r15]
	test	rax, rax
	je	.label_1100
	mov	rdi, qword ptr [rax + rbx]
	call	free
.label_1100:
	mov	rax, qword ptr [r13]
	test	rax, rax
	je	.label_1101
	mov	rdi, qword ptr [rax + rbx]
	call	free
.label_1101:
	inc	rbp
	add	rbx, 0x18
	cmp	rbp, qword ptr [r14 + 0x10]
	jb	.label_1104
	jmp	.label_1107
.label_1109:
	lea	r13, [r14 + 0x28]
	lea	r12, [r14 + 0x30]
	lea	r15, [r14 + 0x38]
.label_1107:
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
	je	.label_1102
	xor	r15d, r15d
	jmp	.label_1113
.label_1105:
	mov	rdi, qword ptr [r14 + 0x40]
.label_1113:
	lea	rax, [r15 + r15*2]
	lea	r12, [rdi + rax*8 + 0x10]
	cmp	qword ptr [rdi + rax*8], 0
	jle	.label_1098
	lea	rbx, [rdi + rax*8]
	xor	ebp, ebp
	nop	word ptr [rax + rax]
.label_1099:
	mov	rax, qword ptr [r12]
	mov	rdi, qword ptr [rax + rbp*8]
	call	free_state
	inc	rbp
	cmp	rbp, qword ptr [rbx]
	jl	.label_1099
.label_1098:
	mov	rdi, qword ptr [r12]
	call	free
	inc	r15
	cmp	r15, qword ptr [r14 + 0x88]
	jbe	.label_1105
	mov	rdi, qword ptr [r14 + 0x40]
.label_1102:
	call	free
	mov	rdi, qword ptr [r14 + 0x78]
	mov	eax, OFFSET FLAT:utf8_sb_map
	cmp	rdi, rax
	je	.label_1111
	call	free
.label_1111:
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
	#Procedure 0x408d10
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
	ja	.label_1115
	test	bl, 4
	jne	.label_1116
	mov	rdi, r12
	call	strlen
	mov	rdx, rax
	xor	ecx, ecx
	jmp	.label_1118
.label_1116:
	mov	rcx, qword ptr [r15]
	mov	rdx, qword ptr [r15 + 8]
.label_1118:
	test	byte ptr [r13 + 0x38], 0x10
	jne	.label_1114
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
	jmp	.label_1117
.label_1114:
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
.label_1117:
	mov	ecx, eax
	xor	eax, eax
	test	ecx, ecx
	setne	al
.label_1115:
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x408db0

	.globl re_search_internal
	.type re_search_internal, @function
re_search_internal:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x218
	mov	r14, r9
	mov	rbp, rcx
	mov	r9, qword ptr [rsp + 0x250]
	mov	r11, qword ptr [rdi]
	xorps	xmm0, xmm0
	movaps	xmmword ptr [rsp + 0x170], xmm0
	movaps	xmmword ptr [rsp + 0x160], xmm0
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
	mov	qword ptr [rsp + 0x118], r11
	mov	rax, qword ptr [rdi + 0x20]
	xor	r13d, r13d
	test	rax, rax
	je	.label_1127
	mov	cl, byte ptr [rdi + 0x38]
	and	cl, 9
	xor	ebx, ebx
	cmp	cl, 8
	cmovne	rax, rbx
	cmp	rbp, r8
	cmove	rax, rbx
	mov	r13, rax
.label_1127:
	mov	rax, qword ptr [rdi + 0x30]
	lea	r15, [r9 - 1]
	mov	rcx, r15
	sub	rcx, rax
	xor	r12d, r12d
	cmp	rax, r9
	cmovb	r12, rcx
	mov	ebx, 1
	cmp	qword ptr [rdi + 0x10], 0
	je	.label_838
	mov	rax, qword ptr [r11 + 0x48]
	test	rax, rax
	je	.label_838
	mov	rcx, qword ptr [r11 + 0x50]
	test	rcx, rcx
	je	.label_838
	mov	r10, qword ptr [r11 + 0x58]
	test	r10, r10
	je	.label_838
	mov	qword ptr [rsp + 0x50], rsi
	mov	rsi, r14
	cmp	qword ptr [r11 + 0x60], 0
	je	.label_838
	mov	r14, qword ptr [rdi + 0x28]
	mov	qword ptr [rsp + 0x58], r14
	cmp	qword ptr [rax + 0x10], 0
	je	.label_1131
	mov	rax, r8
	mov	r14, rsi
	jmp	.label_1126
.label_1131:
	cmp	qword ptr [rcx + 0x10], 0
	mov	r14, rsi
	jne	.label_1120
	cmp	qword ptr [r10 + 0x10], 0
	je	.label_1119
	cmp	byte ptr [rdi + 0x38], 0
	js	.label_1120
.label_1119:
	xor	eax, eax
	test	rbp, rbp
	je	.label_1122
	test	r8, r8
	mov	ebp, 0
	jne	.label_838
	jmp	.label_1126
.label_1120:
	mov	rax, r8
.label_1126:
	mov	qword ptr [rsp + 0x18], rax
	mov	qword ptr [rsp + 0x40], r13
	mov	qword ptr [rsp + 0x1e8], r15
	mov	qword ptr [rsp + 0x1e0], r12
	sub	r9, r12
	mov	qword ptr [rsp + 0x38], r9
	mov	byte ptr [rsp + 7], 1
	jne	.label_1128
	cmp	qword ptr [r11 + 0x98], 0
	setne	byte ptr [rsp + 7]
.label_1128:
	mov	r15, qword ptr [r11 + 0x10]
	inc	r15
	mov	qword ptr [rsp + 0x48], rdi
	mov	rcx, qword ptr [rdi + 0x18]
	movsxd	rax, dword ptr [r11 + 0xb4]
	cmp	rax, r15
	cmovge	r15, rax
	mov	rbx, rdx
	lea	rdi, [rbx + 1]
	cmp	rdi, r15
	cmovle	r15, rdi
	mov	rdx, qword ptr [rsp + 0x50]
	mov	qword ptr [rsp + 0x80], rdx
	mov	qword ptr [rsp + 0xd8], rbx
	mov	qword ptr [rsp + 0xd0], rbx
	mov	rsi, qword ptr [rsp + 0x58]
	mov	qword ptr [rsp + 0xf8], rsi
	shr	rcx, 0x16
	and	cl, 1
	mov	byte ptr [rsp + 0x108], cl
	test	rsi, rsi
	mov	rsi, rbx
	setne	r12b
	or	r12b, cl
	mov	byte ptr [rsp + 0x10b], r12b
	mov	dword ptr [rsp + 0x110], eax
	mov	cl, byte ptr [r11 + 0xb0]
	mov	edx, ecx
	shr	dl, 2
	and	dl, 1
	shr	cl, 3
	and	cl, 1
	cmp	rax, 2
	mov	byte ptr [rsp + 0x109], dl
	mov	byte ptr [rsp + 0x10a], cl
	mov	qword ptr [rsp + 0xe8], rsi
	mov	qword ptr [rsp + 0x78], rsi
	mov	qword ptr [rsp + 0xe0], rsi
	mov	qword ptr [rsp + 0x20], r11
	jl	.label_1132
	movabs	rax, 0x1ffffffffffffffe
	inc	rax
	mov	ebx, 0xc
	cmp	r15, rax
	ja	.label_604
	lea	rsi, [r15*4]
	xor	edi, edi
	call	realloc
	test	rax, rax
	je	.label_604
	mov	qword ptr [rsp + 0x90], rax
	mov	r11, qword ptr [rsp + 0x20]
.label_1132:
	test	r12b, r12b
	je	.label_1133
	xor	edi, edi
	mov	rsi, r15
	call	realloc
	mov	ebx, 0xc
	test	rax, rax
	je	.label_604
	mov	qword ptr [rsp + 0x88], rax
	mov	r11, qword ptr [rsp + 0x20]
.label_1133:
	mov	edx, dword ptr [rsp + 0x260]
	mov	qword ptr [rsp + 0xc0], r15
	lea	rax, [r11 + 0xb8]
	mov	qword ptr [rsp + 0x100], rax
	mov	rax, qword ptr [r11 + 0xb0]
	mov	ecx, eax
	shr	cl, 4
	and	cl, 1
	mov	byte ptr [rsp + 0x10e], cl
	xor	ecx, ecx
	test	r12b, r12b
	jne	.label_1123
	shr	rax, 0x20
	mov	rcx, qword ptr [rsp + 0x50]
	mov	qword ptr [rsp + 0x88], rcx
	xor	ecx, ecx
	cmp	eax, 1
	cmovle	rcx, qword ptr [rsp + 0x78]
.label_1123:
	mov	qword ptr [rsp + 0xb0], rcx
	mov	qword ptr [rsp + 0xb8], rcx
	mov	qword ptr [rsp + 0xe8], r14
	mov	qword ptr [rsp + 0xe0], r14
	mov	rax, qword ptr [rsp + 0x48]
	mov	al, byte ptr [rax + 0x38]
	shr	al, 7
	mov	byte ptr [rsp + 0x10d], al
	mov	r14, qword ptr [r11 + 0x98]
	lea	r13, [r14 + r14]
	mov	dword ptr [rsp + 0x120], edx
	mov	qword ptr [rsp + 0x128], -1
	test	r14, r14
	jle	.label_1134
	mov	ebx, 0xc
	movabs	rax, 0x666666666666666
	cmp	r13, rax
	ja	.label_604
	shl	r14, 4
	lea	rdi, [r14 + r14*4]
	call	malloc
	mov	r12, rax
	mov	qword ptr [rsp + 0x158], r12
	mov	rdi, r14
	call	malloc
	mov	qword ptr [rsp + 0x178], rax
	test	r12, r12
	je	.label_604
	test	rax, rax
	je	.label_604
.label_1134:
	mov	qword ptr [rsp + 0x150], r13
	mov	dword ptr [rsp + 0x160], 1
	mov	qword ptr [rsp + 0x170], r13
	cmp	qword ptr [rsp + 0x38], 1
	mov	rax, qword ptr [rsp + 0x20]
	ja	.label_1121
	mov	rdi, qword ptr [rax + 0xb0]
	test	dil, 2
	jne	.label_1121
	shr	rdi, 0x20
	mov	qword ptr [rsp + 0x138], 0
	jmp	.label_1129
.label_1121:
	mov	ebx, 0xc
	movabs	rax, 0x1ffffffffffffffe
	cmp	r15, rax
	ja	.label_604
	lea	rdi, [r15*8 + 8]
	call	malloc
	mov	qword ptr [rsp + 0x138], rax
	test	rax, rax
	je	.label_604
	mov	rax, qword ptr [rsp + 0x20]
	mov	edi, dword ptr [rax + 0xb4]
.label_1129:
	mov	eax, dword ptr [rsp + 0x260]
	mov	qword ptr [rsp + 0x28], rbp
	lea	eax, [rax + rax]
	and	eax, 2
	xor	eax, 6
	mov	dword ptr [rsp + 0xf0], eax
	mov	rbx, qword ptr [rsp + 0x18]
	cmp	rbx, rbp
	mov	r15, rbp
	cmovle	r15, rbx
	mov	r12, rbx
	cmovl	r12, rbp
	mov	ecx, 8
	cmp	qword ptr [rsp + 0x40], 0
	mov	rsi, qword ptr [rsp + 0x58]
	je	.label_1124
	cmp	edi, 1
	je	.label_1130
	mov	ecx, 0x400000
	xor	eax, eax
	test	rsi, rsi
	jne	.label_1125
	mov	rdx, qword ptr [rsp + 0x48]
	and	rcx, qword ptr [rdx + 0x18]
	jne	.label_1125
.label_1130:
	mov	eax, 4
.label_1125:
	xor	ecx, ecx
	test	rsi, rsi
	setne	cl
	xor	edx, edx
	cmp	rbp, rbx
	setle	dl
	lea	ecx, [rcx + rdx*2]
	or	ecx, eax
.label_1124:
	mov	qword ptr [rsp + 0x208], rdi
	xor	edx, edx
	cmp	rbp, rbx
	setle	byte ptr [rsp + 0xf]
	lea	rsi, [rsp + 0x28]
	mov	eax, 0
	mov	qword ptr [rsp + 0x1d8], rax
	cmovg	rsi, rdx
	mov	qword ptr [rsp + 0x200], rsi
	cmp	rbx, rbp
	mov	eax, 1
	mov	r13, -1
	cmovge	r13, rax
	add	ecx, -4
	mov	qword ptr [rsp + 0x210], rcx
	mov	qword ptr [rsp + 0x70], r13
	mov	qword ptr [rsp + 0x190], r15
	mov	qword ptr [rsp + 0x188], r12
	jmp	.label_612
.label_1122:
	xor	ebp, ebp
	jmp	.label_1126
.label_654:
	mov	rdi, r15
	call	free
	mov	rdi, rbp
	call	free
	test	ebx, ebx
	mov	r12, qword ptr [rsp + 0x38]
	mov	r13, qword ptr [rsp + 0x70]
	je	.label_779
	cmp	ebx, 1
	mov	r15, qword ptr [rsp + 0x190]
	mov	r12, qword ptr [rsp + 0x188]
	je	.label_823
	jmp	.label_604
.label_751:
	test	al, al
	js	.label_831
	cmp	byte ptr [rsp + 7], 0
	mov	rdx, r8
	mov	ecx, 1
	jne	.label_852
	mov	r14, r8
	jmp	.label_867
.label_1029:
	mov	r14, r8
	lea	rbp, [rbx + 8]
	xor	edx, edx
	lea	rdi, [rsp + 0x80]
	mov	rsi, rbp
	call	check_subexp_matching_top
	mov	dword ptr [rsp + 8], eax
	test	eax, eax
	jne	.label_813
	test	byte ptr [rbx + 0x68], 0x40
	je	.label_841
	lea	rdi, [rsp + 0x80]
	mov	rsi, rbp
	call	transit_state_bkref
	mov	dword ptr [rsp + 8], eax
	test	eax, eax
	jne	.label_813
.label_841:
	mov	dword ptr [rsp + 0x18], 0
	mov	r8, r14
	jmp	.label_851
.label_831:
	lea	rdi, [rsp + 0x80]
	mov	rsi, rbx
	mov	rdx, r8
	mov	r14, r8
	call	check_halt_state_context
	cmp	rax, 1
	sbb	rdx, rdx
	xor	ecx, ecx
	test	rax, rax
	sete	al
	setne	cl
	or	al, byte ptr [rsp + 7]
	je	.label_867
	or	rdx, r14
	mov	r8, r14
	jmp	.label_852
.label_813:
	movsxd	r14, eax
	jmp	.label_867
	nop	word ptr cs:[rax + rax]
.label_612:
	mov	rax, qword ptr [rsp + 0x210]
	cmp	eax, 4
	ja	.label_872
	jmp	qword ptr [(rax * 8) + label_880]
.label_2508:
	cmp	rbp, r15
	mov	rax, rbp
	mov	rcx, qword ptr [rsp + 0x78]
	mov	rdx, qword ptr [rsp + 0x50]
	mov	rsi, qword ptr [rsp + 0x40]
	mov	rdi, qword ptr [rsp + 0x58]
	jl	.label_882
	nop	dword ptr [rax + rax]
.label_899:
	xor	eax, eax
	cmp	rbp, rcx
	jge	.label_891
	movzx	eax, byte ptr [rdx + rbp]
.label_891:
	test	rdi, rdi
	je	.label_893
	movzx	eax, byte ptr [rdi + rax]
.label_893:
	cmp	byte ptr [rsi + rax], 0
	jne	.label_896
	lea	rax, [rbp - 1]
	mov	qword ptr [rsp + 0x28], rax
	cmp	rbp, r15
	mov	rbp, rax
	jg	.label_899
	jmp	.label_882
.label_2510:
	cmp	rbp, r12
	jge	.label_857
	mov	rcx, qword ptr [rsp + 0x50]
	mov	rdx, qword ptr [rsp + 0x40]
	mov	rsi, qword ptr [rsp + 0x58]
	nop	dword ptr [rax + rax]
.label_854:
	movzx	eax, byte ptr [rcx + rbp]
	movzx	eax, byte ptr [rsi + rax]
	cmp	byte ptr [rdx + rax], 0
	jne	.label_857
	inc	rbp
	mov	qword ptr [rsp + 0x28], rbp
	cmp	rbp, r12
	jl	.label_854
	jmp	.label_857
.label_2509:
	cmp	rbp, r12
	mov	rcx, qword ptr [rsp + 0x50]
	mov	rdx, qword ptr [rsp + 0x40]
	jge	.label_857
	nop	dword ptr [rax]
.label_921:
	movzx	eax, byte ptr [rcx + rbp]
	cmp	byte ptr [rdx + rax], 0
	jne	.label_857
	inc	rbp
	mov	qword ptr [rsp + 0x28], rbp
	cmp	rbp, r12
	jl	.label_921
	nop	word ptr [rax + rax]
.label_857:
	cmp	rbp, r12
	jne	.label_934
	xor	eax, eax
	cmp	r12, qword ptr [rsp + 0x78]
	mov	rcx, qword ptr [rsp + 0x50]
	jge	.label_927
	movzx	eax, byte ptr [rcx + r12]
.label_927:
	mov	rcx, qword ptr [rsp + 0x58]
	test	rcx, rcx
	je	.label_933
	movzx	eax, byte ptr [rcx + rax]
.label_933:
	mov	rcx, qword ptr [rsp + 0x40]
	mov	ebx, 1
	cmp	byte ptr [rcx + rax], 0
	mov	rbp, r12
	jne	.label_934
	jmp	.label_604
.label_872:
	mov	rax, qword ptr [rsp + 0xa8]
	jmp	.label_810
.label_968:
	add	rbp, r13
	mov	qword ptr [rsp + 0x28], rbp
	cmp	rbp, r15
	mov	ebx, 1
	jl	.label_604
	cmp	rbp, r12
	jle	.label_810
	jmp	.label_604
.label_961:
	lea	rdi, [rsp + 0x80]
	mov	rsi, rbp
	mov	edx, dword ptr [rsp + 0x260]
	call	re_string_reconstruct
	mov	ebx, eax
	test	ebx, ebx
	jne	.label_604
	mov	rbp, qword ptr [rsp + 0x28]
	mov	rax, qword ptr [rsp + 0xa8]
	mov	rcx, rbp
	sub	rcx, rax
	jmp	.label_953
	nop	word ptr cs:[rax + rax]
.label_810:
	mov	rcx, rbp
	sub	rcx, rax
	cmp	rcx, qword ptr [rsp + 0xb8]
	jae	.label_961
.label_953:
	cmp	rbp, qword ptr [rsp + 0x78]
	mov	edx, 0
	mov	rsi, qword ptr [rsp + 0x40]
	jge	.label_717
	mov	rdx, qword ptr [rsp + 0x88]
	movzx	edx, byte ptr [rdx + rcx]
.label_717:
	cmp	byte ptr [rsi + rdx], 0
	je	.label_968
	jmp	.label_934
.label_896:
	mov	rax, rbp
.label_882:
	mov	ebx, 1
	cmp	rax, r15
	mov	rbp, rax
	jl	.label_604
.label_934:
	lea	rdi, [rsp + 0x80]
	mov	rsi, rbp
	mov	edx, dword ptr [rsp + 0x260]
	call	re_string_reconstruct
	mov	ebx, eax
	test	ebx, ebx
	jne	.label_604
	mov	rax, qword ptr [rsp + 0x208]
	cmp	eax, 1
	je	.label_982
	mov	rax, qword ptr [rsp + 0xb0]
	test	rax, rax
	je	.label_982
	mov	rax, qword ptr [rsp + 0x90]
	cmp	dword ptr [rax], -1
	je	.label_986
.label_982:
	mov	dword ptr [rsp + 0x160], 0
	lea	rax, [rsp + 0xb8]
	xorps	xmm0, xmm0
	movups	xmmword ptr [rax + 0x88], xmm0
	mov	rbp, qword ptr [rsp + 0x118]
	mov	r8, qword ptr [rsp + 0xc8]
	mov	dword ptr [rsp + 8], 0
	mov	rbx, qword ptr [rbp + 0x48]
	cmp	byte ptr [rbx + 0x68], 0
	js	.label_957
	mov	r14b, byte ptr [rsp + 0xf]
	jmp	.label_620
	nop	
.label_957:
	mov	qword ptr [rsp + 0x10], r8
	lea	rsi, [r8 - 1]
	mov	edx, dword ptr [rsp + 0x120]
	lea	rdi, [rsp + 0x80]
	call	re_string_context_at
	test	al, 1
	mov	r14b, byte ptr [rsp + 0xf]
	jne	.label_1009
	test	eax, eax
	je	.label_1065
	mov	ecx, eax
	and	ecx, 4
	sete	sil
	mov	edx, eax
	and	edx, 2
	mov	r8, qword ptr [rsp + 0x10]
	je	.label_1018
	test	sil, sil
	jne	.label_1018
	mov	rbx, qword ptr [rbp + 0x60]
	jmp	.label_620
.label_1009:
	mov	rbx, qword ptr [rbp + 0x50]
.label_1065:
	mov	r8, qword ptr [rsp + 0x10]
.label_620:
	test	rbx, rbx
	je	.label_1023
	mov	rax, qword ptr [rsp + 0x138]
	test	rax, rax
	mov	cl, r14b
	mov	dword ptr [rsp + 0x18], ecx
	je	.label_851
	mov	qword ptr [rax + r8*8], rbx
	cmp	qword ptr [rbp + 0x98], 0
	mov	al, r14b
	mov	dword ptr [rsp + 0x18], eax
	jne	.label_1029
.label_851:
	mov	al, byte ptr [rbx + 0x68]
	mov	rdx, -1
	test	al, 0x10
	mov	ecx, 0
	jne	.label_751
.label_852:
	mov	r14, qword ptr [rsp + 0xc8]
	mov	rax, qword ptr [rsp + 0x200]
.label_705:
	mov	r13, rax
	mov	qword ptr [rsp + 0x60], rdx
	cmp	qword ptr [rsp + 0xe8], r14
	jle	.label_812
	test	rcx, rcx
	sete	al
	or	al, byte ptr [rsp + 7]
	mov	byte ptr [rsp + 0x198], al
	mov	r12, rbx
	jmp	.label_622
.label_803:
	add	r14d, 2
	lea	rdi, [rsp + 0x80]
	mov	esi, r14d
	mov	rbx, r8
	call	extend_buffers
	mov	r8, rbx
	mov	dword ptr [rsp + 8], eax
	test	eax, eax
	jne	.label_1061
	jmp	.label_1046
.label_804:
	cmp	qword ptr [r12 + 0x10], 0
	jle	.label_935
	mov	rbp, qword ptr [rsp + 0x118]
	xor	edx, edx
	mov	qword ptr [rsp + 0x10], r8
	mov	qword ptr [rsp + 0x1f8], rbp
.label_905:
	mov	rax, qword ptr [r12 + 0x18]
	mov	rcx, qword ptr [rax + rdx*8]
	mov	rax, qword ptr [rbp]
	mov	rsi, rcx
	mov	qword ptr [rsp + 0x68], rsi
	shl	rcx, 4
	mov	ebx, dword ptr [rax + rcx + 8]
	test	ebx, 0x100000
	je	.label_631
	mov	r14d, ebx
	shr	r14d, 8
	test	r14w, 0x3ff
	mov	r9, qword ptr [rsp + 0xc8]
	mov	qword ptr [rsp + 0x180], rdx
	je	.label_743
	mov	edx, dword ptr [rsp + 0x120]
	lea	rdi, [rsp + 0x80]
	mov	rsi, r9
	mov	rbp, r9
	call	re_string_context_at
	mov	r9, rbp
	mov	rdx, qword ptr [rsp + 0x180]
	mov	r8, qword ptr [rsp + 0x10]
	mov	rbp, qword ptr [rsp + 0x1f8]
	mov	ecx, eax
	and	ecx, 1
	test	r14b, 4
	je	.label_606
	test	ecx, ecx
	je	.label_631
.label_606:
	test	bh, 8
	je	.label_702
	test	ecx, ecx
	jne	.label_631
.label_702:
	test	bh, 0x20
	je	.label_626
	mov	ecx, eax
	and	ecx, 2
	je	.label_631
.label_626:
	test	r14b, r14b
	jns	.label_743
	and	eax, 8
	je	.label_631
.label_743:
	mov	rdi, rbp
	mov	rsi, qword ptr [rsp + 0x68]
	lea	rdx, [rsp + 0x80]
	mov	rcx, r9
	call	check_node_accept_bytes
	mov	rdx, qword ptr [rsp + 0x180]
	mov	r8, qword ptr [rsp + 0x10]
	test	eax, eax
	je	.label_631
	movsxd	rbx, eax
	add	rbx, qword ptr [rsp + 0xc8]
	mov	ecx, dword ptr [rsp + 0x160]
	cmp	ecx, eax
	cmovl	ecx, eax
	mov	dword ptr [rsp + 0x160], ecx
	mov	r14, qword ptr [rsp + 0x140]
	mov	rcx, qword ptr [rsp + 0xc0]
	mov	rax, qword ptr [rsp + 0xd8]
	cmp	rcx, rbx
	jg	.label_932
	cmp	rcx, rax
	jl	.label_674
.label_932:
	mov	rcx, qword ptr [rsp + 0xb0]
	cmp	rcx, rbx
	jg	.label_676
	cmp	rcx, rax
	jge	.label_676
.label_674:
	lea	esi, [rbx + 1]
	lea	rdi, [rsp + 0x80]
	call	extend_buffers
	test	eax, eax
	jne	.label_685
.label_676:
	mov	rdx, rbx
	sub	rdx, r14
	jle	.label_686
	mov	rax, qword ptr [rsp + 0x138]
	lea	rdi, [rax + r14*8 + 8]
	shl	rdx, 3
	xor	esi, esi
	call	memset
	mov	qword ptr [rsp + 0x140], rbx
.label_686:
	mov	dword ptr [rsp + 0x34], 0
	mov	rax, qword ptr [rbp + 0x18]
	mov	rcx, qword ptr [rsp + 0x68]
	mov	rax, qword ptr [rax + rcx*8]
	lea	rdx, [rax + rax*2]
	shl	rdx, 3
	add	rdx, qword ptr [rbp + 0x30]
	mov	rax, qword ptr [rsp + 0x138]
	mov	qword ptr [rsp + 0x68], rbx
	mov	rax, qword ptr [rax + rbx*8]
	test	rax, rax
	mov	qword ptr [rsp + 0x1f0], rax
	je	.label_1017
	mov	rsi, qword ptr [rax + 0x50]
	lea	rbx, [rsp + 0x1a0]
	mov	rdi, rbx
	call	re_node_set_init_union
	mov	dword ptr [rsp + 0x34], eax
	test	eax, eax
	je	.label_660
	jmp	.label_716
.label_1017:
	mov	rax, qword ptr [rdx + 0x10]
	mov	qword ptr [rsp + 0x1b0], rax
	movups	xmm0, xmmword ptr [rdx]
	movaps	xmmword ptr [rsp + 0x1a0], xmm0
	lea	rbx, [rsp + 0x1a0]
.label_660:
	mov	r14, qword ptr [rsp + 0x68]
	lea	rsi, [r14 - 1]
	mov	edx, dword ptr [rsp + 0x120]
	lea	rdi, [rsp + 0x80]
	call	re_string_context_at
	lea	rdi, [rsp + 0x34]
	mov	rsi, rbp
	mov	rdx, rbx
	mov	ecx, eax
	call	re_acquire_state_context
	cmp	qword ptr [rsp + 0x1f0], 0
	mov	rcx, qword ptr [rsp + 0x138]
	mov	qword ptr [rcx + r14*8], rax
	je	.label_798
	mov	rdi, qword ptr [rsp + 0x1b0]
	call	free
.label_798:
	mov	rax, qword ptr [rsp + 0x138]
	cmp	qword ptr [rax + r14*8], 0
	mov	r8, qword ptr [rsp + 0x10]
	mov	rdx, qword ptr [rsp + 0x180]
	jne	.label_631
	mov	eax, dword ptr [rsp + 0x34]
	test	eax, eax
	jne	.label_752
.label_631:
	inc	rdx
	cmp	rdx, qword ptr [r12 + 0x10]
	jl	.label_905
.label_935:
	mov	dword ptr [rsp + 8], 0
	jmp	.label_920
.label_771:
	mov	rsi, qword ptr [rsp + 0xc8]
	dec	rsi
	mov	edx, dword ptr [rsp + 0x120]
	lea	rdi, [rsp + 0x80]
	call	re_string_context_at
	and	eax, 1
	shl	rax, 8
	or	rax, rbx
	mov	rbx, qword ptr [r14 + rax*8]
	mov	r8, qword ptr [rsp + 0x10]
	jmp	.label_770
.label_784:
	cmp	r12, rbx
	je	.label_775
	mov	dword ptr [rsp + 0x18], 0
.label_775:
	cmove	r8, r15
	jmp	.label_1016
.label_752:
	mov	dword ptr [rsp + 8], eax
.label_830:
	xor	ebx, ebx
	jmp	.label_770
.label_685:
	mov	dword ptr [rsp + 0x34], eax
.label_716:
	mov	dword ptr [rsp + 8], eax
	xor	ebx, ebx
	mov	r8, qword ptr [rsp + 0x10]
	jmp	.label_770
	nop	dword ptr [rax]
.label_622:
	lea	r15, [r14 + 1]
	mov	rcx, qword ptr [rsp + 0xc0]
	mov	rax, qword ptr [rsp + 0xd8]
	cmp	r15, rcx
	jl	.label_1074
	cmp	rcx, rax
	jl	.label_803
.label_1074:
	mov	rcx, qword ptr [rsp + 0xb0]
	cmp	r15, rcx
	jl	.label_1046
	cmp	rcx, rax
	jl	.label_803
.label_1046:
	test	byte ptr [r12 + 0x68], 0x20
	jne	.label_804
.label_920:
	mov	rax, qword ptr [rsp + 0xc8]
	lea	rcx, [rax + 1]
	mov	qword ptr [rsp + 0xc8], rcx
	mov	rcx, qword ptr [rsp + 0x88]
	movzx	ebx, byte ptr [rcx + rax]
.label_827:
	mov	rax, qword ptr [r12 + 0x58]
	test	rax, rax
	jne	.label_815
	mov	qword ptr [rsp + 0x10], r8
	mov	r14, qword ptr [r12 + 0x60]
	test	r14, r14
	jne	.label_771
	mov	rdi, qword ptr [rsp + 0x118]
	mov	rsi, r12
	call	build_trtable
	test	al, al
	mov	r8, qword ptr [rsp + 0x10]
	jne	.label_827
	mov	dword ptr [rsp + 8], 0xc
	jmp	.label_830
	nop	word ptr [rax + rax]
.label_815:
	mov	rbx, qword ptr [rax + rbx*8]
.label_770:
	cmp	qword ptr [rsp + 0x138], 0
	je	.label_834
	lea	rdi, [rsp + 8]
	lea	rsi, [rsp + 0x80]
	mov	rdx, rbx
	mov	rbx, r8
	call	merge_state_with_log
	mov	r8, rbx
	mov	rbx, rax
.label_834:
	test	rbx, rbx
	jne	.label_837
	cmp	dword ptr [rsp + 8], 0
	jne	.label_842
	mov	rax, qword ptr [rsp + 0x138]
	test	rax, rax
	setne	cl
	and	cl, byte ptr [rsp + 0x198]
	cmp	cl, 1
	je	.label_847
	jmp	.label_812
.label_879:
	mov	rax, qword ptr [rsp + 0x138]
	mov	r8, rbp
.label_847:
	mov	rdx, qword ptr [rsp + 0xc8]
	mov	rcx, qword ptr [rsp + 0x140]
	nop	dword ptr [rax + rax]
.label_864:
	cmp	rdx, rcx
	jge	.label_812
	lea	rsi, [rdx + 1]
	mov	qword ptr [rsp + 0xc8], rsi
	cmp	qword ptr [rax + rdx*8 + 8], 0
	mov	rdx, rsi
	je	.label_864
	mov	rbp, r8
	xor	edx, edx
	lea	rdi, [rsp + 8]
	lea	rsi, [rsp + 0x80]
	call	merge_state_with_log
	mov	rbx, rax
	test	rbx, rbx
	jne	.label_629
	mov	eax, dword ptr [rsp + 8]
	test	eax, eax
	je	.label_879
.label_629:
	test	rbx, rbx
	mov	r8, rbp
	je	.label_812
	nop	word ptr cs:[rax + rax]
.label_837:
	mov	eax, dword ptr [rsp + 0x18]
	test	al, 1
	jne	.label_784
.label_1016:
	mov	al, byte ptr [rbx + 0x68]
	test	al, 0x10
	jne	.label_890
	mov	r14, qword ptr [rsp + 0xc8]
	jmp	.label_892
	nop	dword ptr [rax]
.label_890:
	mov	r14, qword ptr [rsp + 0xc8]
	test	al, al
	jns	.label_907
	lea	rdi, [rsp + 0x80]
	mov	rsi, rbx
	mov	rdx, r14
	mov	rbp, r8
	call	check_halt_state_context
	mov	r8, rbp
	test	rax, rax
	jne	.label_907
.label_892:
	cmp	qword ptr [rsp + 0xe8], r14
	mov	r12, rbx
	jg	.label_622
	jmp	.label_812
.label_907:
	cmp	byte ptr [rsp + 7], 0
	mov	rdx, r14
	mov	ecx, 1
	mov	eax, 0
	mov	r13, qword ptr [rsp + 0x70]
	jne	.label_705
	jmp	.label_867
	nop	dword ptr [rax]
.label_812:
	mov	rax, r13
	test	rax, rax
	mov	r13, qword ptr [rsp + 0x70]
	je	.label_885
	add	qword ptr [rax], r8
.label_885:
	mov	r14, qword ptr [rsp + 0x60]
.label_867:
	cmp	r14, -1
	mov	r15, qword ptr [rsp + 0x190]
	mov	r12, qword ptr [rsp + 0x188]
	je	.label_823
	mov	ebx, 0xc
	cmp	r14, -2
	je	.label_604
	mov	r12, qword ptr [rsp + 0x38]
	cmp	r12, 1
	seta	al
	mov	qword ptr [rsp + 0x128], r14
	mov	rcx, qword ptr [rsp + 0x48]
	test	byte ptr [rcx + 0x38], 0x10
	sete	r15b
	and	r15b, al
	je	.label_930
	mov	rax, qword ptr [rsp + 0x138]
	mov	rsi, qword ptr [rax + r14*8]
	lea	rdi, [rsp + 0x80]
	mov	rdx, r14
	call	check_halt_state_context
	mov	qword ptr [rsp + 0x130], rax
	mov	rbp, qword ptr [rsp + 0x20]
	jmp	.label_1047
.label_930:
	mov	rbp, qword ptr [rsp + 0x20]
	cmp	qword ptr [rbp + 0x98], 0
	je	.label_779
	mov	rax, qword ptr [rsp + 0x138]
	mov	rsi, qword ptr [rax + r14*8]
	lea	rdi, [rsp + 0x80]
	mov	rdx, r14
	call	check_halt_state_context
	mov	qword ptr [rsp + 0x130], rax
	test	r15b, 1
	je	.label_951
.label_1047:
	test	byte ptr [rbp + 0xb0], 1
	jne	.label_955
.label_951:
	cmp	qword ptr [rbp + 0x98], 0
	je	.label_779
.label_955:
	movabs	rax, 0x1ffffffffffffffe
	cmp	r14, rax
	ja	.label_604
	mov	r15, qword ptr [rsp + 0x118]
	mov	r12, qword ptr [rsp + 0x130]
	lea	rbp, [r14*8 + 8]
	mov	rdi, rbp
	call	malloc
	mov	r13, rax
	test	rax, rax
	mov	eax, 0
	je	.label_970
	cmp	qword ptr [r15 + 0x98], 0
	je	.label_973
	mov	qword ptr [rsp + 0x198], r15
	mov	rdi, rbp
	call	malloc
	test	rax, rax
	je	.label_979
	xor	esi, esi
	mov	rdi, rax
	mov	rdx, rbp
	mov	rbx, rax
	call	memset
	mov	r15, r13
	mov	qword ptr [rsp + 0x1a0], r15
	mov	qword ptr [rsp + 0x18], rbx
	mov	qword ptr [rsp + 0x1a8], rbx
	mov	qword ptr [rsp + 0x60], r12
	mov	qword ptr [rsp + 0x1b0], r12
	mov	qword ptr [rsp + 0x1b8], r14
	lea	rax, [rsp + 0x1c0]
	xorps	xmm0, xmm0
	movups	xmmword ptr [rax], xmm0
	mov	qword ptr [rax + 0x10], 0
	lea	rdi, [rsp + 0x80]
	lea	r12, [rsp + 0x1a0]
	mov	rsi, r12
	call	sift_states_backward
	mov	ebx, eax
	test	ebx, ebx
	jne	.label_785
	lea	r13, [r14 + 1]
.label_1054:
	cmp	qword ptr [r15], 0
	mov	rcx, qword ptr [rsp + 0x18]
	jne	.label_1008
	cmp	qword ptr [rcx], 0
	jne	.label_1008
	test	r14, r14
	jle	.label_679
	mov	rax, qword ptr [rsp + 0x138]
	mov	r13, r14
	nop	word ptr cs:[rax + rax]
.label_659:
	lea	r14, [r13 - 1]
	mov	rsi, qword ptr [rax + r13*8 - 8]
	test	rsi, rsi
	je	.label_963
	test	byte ptr [rsi + 0x68], 0x10
	jne	.label_1020
.label_963:
	cmp	r13, 2
	mov	r13, r14
	jge	.label_659
	jmp	.label_679
.label_1020:
	lea	rbx, [rsp + 0x80]
	mov	rdi, rbx
	mov	rdx, r14
	mov	rbx, rcx
	call	check_halt_state_context
	mov	rbp, rax
	lea	rdx, [r13*8]
	xor	esi, esi
	mov	rdi, rbx
	call	memset
	mov	qword ptr [rsp + 0x1a0], r15
	mov	qword ptr [rsp + 0x1a8], rbx
	mov	qword ptr [rsp + 0x60], rbp
	mov	qword ptr [rsp + 0x1b0], rbp
	mov	qword ptr [rsp + 0x1b8], r14
	lea	rax, [rsp + 0x1c0]
	xorps	xmm0, xmm0
	movups	xmmword ptr [rax], xmm0
	mov	qword ptr [rax + 0x10], 0
	lea	rdi, [rsp + 0x80]
	mov	rsi, r12
	call	sift_states_backward
	mov	ebx, eax
	test	ebx, ebx
	je	.label_1054
.label_785:
	mov	rbp, qword ptr [rsp + 0x18]
	jmp	.label_654
.label_973:
	mov	r15, r13
	mov	qword ptr [rsp + 0x1a0], r15
	mov	qword ptr [rsp + 0x1a8], 0
	mov	qword ptr [rsp + 0x1b0], r12
	mov	qword ptr [rsp + 0x1b8], r14
	lea	rax, [rsp + 0x1c0]
	xorps	xmm0, xmm0
	movups	xmmword ptr [rax], xmm0
	mov	qword ptr [rax + 0x10], 0
	lea	rdi, [rsp + 0x80]
	lea	rsi, [rsp + 0x1a0]
	call	sift_states_backward
	mov	ebx, eax
	test	ebx, ebx
	mov	ebp, 0
	jne	.label_654
	cmp	qword ptr [r15], 0
	mov	ecx, 0
	jne	.label_1073
.label_679:
	mov	rdi, r15
	mov	rbx, rcx
	call	free
	mov	rdi, rbx
	call	free
	mov	r15, qword ptr [rsp + 0x190]
	mov	r12, qword ptr [rsp + 0x188]
	mov	r13, qword ptr [rsp + 0x70]
.label_823:
	lea	rdi, [rsp + 0x80]
	call	match_ctx_clean
.label_986:
	mov	rbp, qword ptr [rsp + 0x28]
	add	rbp, r13
	mov	qword ptr [rsp + 0x28], rbp
	cmp	rbp, r15
	mov	ebx, 1
	jl	.label_604
	cmp	r12, rbp
	jge	.label_612
	jmp	.label_604
.label_1018:
	test	edx, edx
	jne	.label_619
	test	ecx, ecx
	je	.label_620
	mov	rdx, qword ptr [rbx + 0x50]
	lea	rdi, [rsp + 8]
	mov	rsi, rbp
	mov	ecx, eax
	call	re_acquire_state_context
	mov	r8, qword ptr [rsp + 0x10]
	mov	rbx, rax
	jmp	.label_620
.label_619:
	mov	rbx, qword ptr [rbp + 0x58]
	jmp	.label_620
.label_1008:
	mov	rdi, qword ptr [rsp + 0x198]
	mov	rsi, r15
	mov	rdx, rcx
	mov	rbp, rcx
	mov	rcx, r13
	call	merge_state_array
	mov	ebx, eax
	mov	rdi, rbp
	call	free
	test	ebx, ebx
	mov	ebp, 0
	mov	r12, qword ptr [rsp + 0x60]
	jne	.label_654
.label_1073:
	mov	rdi, qword ptr [rsp + 0x138]
	call	free
	mov	qword ptr [rsp + 0x138], r15
	mov	qword ptr [rsp + 0x130], r12
	mov	qword ptr [rsp + 0x128], r14
	mov	r12, qword ptr [rsp + 0x38]
.label_779:
	xor	ebx, ebx
	test	r12, r12
	je	.label_604
	mov	rbx, qword ptr [rsp + 0x38]
	cmp	rbx, 1
	je	.label_675
	mov	rax, qword ptr [rsp + 0x258]
	lea	rdi, [rax + 0x10]
	cmp	rbx, 2
	mov	edx, 2
	cmova	rdx, rbx
	shl	rdx, 4
	add	rdx, -0x10
	mov	esi, 0xff
	call	memset
.label_675:
	mov	rax, qword ptr [rsp + 0x258]
	mov	rcx, rax
	mov	qword ptr [rcx], 0
	mov	rax, qword ptr [rsp + 0x128]
	mov	qword ptr [rcx + 8], rax
	cmp	rbx, 2
	jb	.label_689
	mov	rax, qword ptr [rsp + 0x48]
	mov	al, byte ptr [rax + 0x38]
	and	al, 0x10
	jne	.label_689
	mov	rax, qword ptr [rsp + 0x20]
	test	byte ptr [rax + 0xb0], 1
	jne	.label_703
	xor	eax, eax
	jmp	.label_1062
.label_703:
	cmp	qword ptr [rax + 0x98], 0
	setg	al
.label_1062:
	mov	rdi, qword ptr [rsp + 0x48]
	mov	rdx, qword ptr [rsp + 0x38]
	movzx	r8d, al
	lea	rsi, [rsp + 0x80]
	mov	rcx, qword ptr [rsp + 0x258]
	call	set_regs
	mov	ebx, eax
	test	ebx, ebx
	jne	.label_604
.label_689:
	mov	r9b, byte ptr [rsp + 0x10c]
	mov	r8, qword ptr [rsp + 0x98]
	mov	rax, qword ptr [rsp + 0x258]
	lea	rdx, [rax + 8]
	xor	ecx, ecx
	mov	r14, qword ptr [rsp + 0x20]
	mov	rax, qword ptr [rsp + 0x250]
	mov	r10, qword ptr [rsp + 0x1e0]
	jmp	.label_652
.label_1061:
	cmp	eax, 0xc
	je	.label_842
	mov	edi, OFFSET FLAT:label_729
	mov	esi, OFFSET FLAT:label_730
	mov	edx, 0x46c
	mov	ecx, OFFSET FLAT:label_731
	call	__assert_fail
.label_1023:
	cmp	dword ptr [rsp + 8], 0xc
	jne	.label_739
.label_842:
	mov	ebx, 0xc
	jmp	.label_604
.label_734:
	mov	rbx, qword ptr [rsp + 0xb0]
	cmp	rdi, rbx
	lea	rdi, [r8 + rdi*8]
	lea	rsi, [rsp + 0xb8]
	mov	r11, rsi
	cmove	rdi, r11
	mov	rdi, qword ptr [rdi]
	mov	qword ptr [rdx - 8], rdi
	mov	rsi, rcx
	shl	rsi, 4
	mov	rbp, qword ptr [rsp + 0x258]
	lea	rbp, [rbp + rsi + 8]
	mov	rsi, qword ptr [rdx]
	cmp	rsi, rbx
	lea	rsi, [r8 + rsi*8]
	cmove	rsi, r11
	mov	rbx, qword ptr [rsi]
	mov	qword ptr [rdx], rbx
	jmp	.label_942
	nop	word ptr cs:[rax + rax]
.label_652:
	mov	rdi, qword ptr [rdx - 8]
	cmp	rdi, -1
	je	.label_767
	test	r9b, r9b
	jne	.label_734
	mov	rbx, qword ptr [rdx]
	mov	rbp, rdx
.label_942:
	mov	rsi, qword ptr [rsp + 0x28]
	add	rdi, rsi
	mov	qword ptr [rdx - 8], rdi
	add	rbx, rsi
	mov	qword ptr [rbp], rbx
.label_767:
	inc	rcx
	add	rdx, 0x10
	dec	rax
	cmp	r10, rax
	jne	.label_652
	test	r10, r10
	mov	rbp, qword ptr [rsp + 0x38]
	jle	.label_713
	mov	rdi, rbp
	shl	rdi, 4
	add	rdi, qword ptr [rsp + 0x258]
	mov	rdx, r10
	shl	rdx, 4
	mov	esi, 0xff
	call	memset
.label_713:
	mov	rax, qword ptr [r14 + 0xe0]
	xor	ebx, ebx
	test	rax, rax
	je	.label_604
	cmp	rbp, 2
	jb	.label_604
	mov	rcx, qword ptr [rsp + 0x1e0]
	sub	qword ptr [rsp + 0x1e8], rcx
	mov	rcx, qword ptr [rsp + 0x258]
	lea	rcx, [rcx + 0x18]
	xor	edx, edx
	nop	word ptr cs:[rax + rax]
.label_868:
	mov	rsi, qword ptr [rax + rdx*8]
	cmp	rdx, rsi
	je	.label_835
	shl	rsi, 4
	mov	rdi, qword ptr [rsp + 0x258]
	mov	rsi, qword ptr [rdi + rsi + 0x10]
	mov	qword ptr [rcx - 8], rsi
	mov	rsi, qword ptr [rax + rdx*8]
	shl	rsi, 4
	mov	rsi, qword ptr [rdi + rsi + 0x18]
	mov	qword ptr [rcx], rsi
.label_835:
	inc	rdx
	add	rcx, 0x10
	xor	ebx, ebx
	cmp	qword ptr [rsp + 0x1e8], rdx
	jne	.label_868
.label_604:
	mov	rdi, qword ptr [rsp + 0x138]
	call	free
	mov	rax, qword ptr [rsp + 0x20]
	cmp	qword ptr [rax + 0x98], 0
	je	.label_825
	lea	rdi, [rsp + 0x80]
	call	match_ctx_clean
	mov	rdi, qword ptr [rsp + 0x178]
	call	free
	mov	rdi, qword ptr [rsp + 0x158]
	call	free
.label_825:
	mov	rdi, qword ptr [rsp + 0x90]
	call	free
	mov	rdi, qword ptr [rsp + 0x98]
	call	free
	cmp	byte ptr [rsp + 0x10b], 0
	je	.label_838
	mov	rdi, qword ptr [rsp + 0x88]
	call	free
.label_838:
	mov	eax, ebx
	add	rsp, 0x218
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_979:
	mov	qword ptr [rsp + 0x1d8], r13
.label_970:
	mov	rdi, qword ptr [rsp + 0x1d8]
	mov	rbp, rax
	call	free
	mov	rdi, rbp
	call	free
	jmp	.label_604
.label_739:
	mov	edi, OFFSET FLAT:label_729
	mov	esi, OFFSET FLAT:label_730
	mov	edx, 0x435
	mov	ecx, OFFSET FLAT:label_731
	call	__assert_fail
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40a3f0

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
	#Procedure 0x40a410

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
	mov	rbx, rdx
	test	rcx, rcx
	mov	rbp, -1
	js	.label_1139
	mov	qword ptr [rsp + 0x18], rsi
	mov	qword ptr [rsp + 0x10], r9
	cmp	rcx, rbx
	jg	.label_1139
	xor	r12d, r12d
	add	r8, rcx
	js	.label_1156
	mov	r12, r8
.label_1156:
	mov	rbp, qword ptr [rsp + 0x60]
	cmp	r8, rbx
	cmovg	r12, rbx
	movzx	r13d, byte ptr [rdi + 0x38]
	cmp	r12, rcx
	mov	eax, r13d
	mov	qword ptr [rsp + 0x20], rcx
	mov	qword ptr [rsp + 8], rdi
	jle	.label_1157
	test	r13b, 8
	mov	eax, r13d
	jne	.label_1157
	mov	rax, qword ptr [rdi + 0x20]
	test	rax, rax
	mov	eax, r13d
	je	.label_1157
	call	rpl_re_compile_fastmap
	mov	rdi, qword ptr [rsp + 8]
	mov	al, byte ptr [rdi + 0x38]
.label_1157:
	xor	r14d, r14d
	test	rbp, rbp
	mov	r15d, 1
	je	.label_1141
	mov	ecx, eax
	and	cl, 0x10
	jne	.label_1141
	and	al, 6
	cmp	al, 4
	jne	.label_1147
	mov	rax, qword ptr [rbp]
	mov	r15, qword ptr [rdi + 0x30]
	cmp	rax, r15
	ja	.label_1150
	xor	r14d, r14d
	test	rax, rax
	jle	.label_1152
	mov	r14, rbp
.label_1152:
	mov	r15d, 1
	test	rax, rax
	jle	.label_1141
	mov	r15, rax
	jmp	.label_1141
.label_1147:
	mov	r15, qword ptr [rdi + 0x30]
.label_1150:
	inc	r15
	mov	r14, rbp
.label_1141:
	mov	rdi, r15
	shl	rdi, 4
	call	malloc
	mov	rdi, qword ptr [rsp + 8]
	mov	rbp, -2
	test	rax, rax
	mov	rcx, qword ptr [rsp + 0x20]
	je	.label_1139
	mov	edx, r13d
	shr	dl, 5
	and	dl, 1
	and	r13d, 0x40
	movzx	edx, dl
	shr	r13d, 5
	or	r13d, edx
	sub	rsp, 8
	mov	rsi, qword ptr [rsp + 0x20]
	mov	rdx, rbx
	mov	r8, r12
	mov	r9, qword ptr [rsp + 0x18]
	push	r13
	mov	r12, rax
	push	rax
	push	r15
	call	re_search_internal
	add	rsp, 0x20
	test	eax, eax
	je	.label_1151
	xor	ebp, ebp
	cmp	eax, 1
	sete	bpl
	or	rbp, 0xfffffffffffffffe
	mov	rdi, r12
.label_1135:
	call	free
.label_1139:
	mov	rax, rbp
	add	rsp, 0x28
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_1151:
	test	r14, r14
	mov	rdi, r12
	je	.label_1163
	mov	r8, qword ptr [rsp + 8]
	mov	al, byte ptr [r8 + 0x38]
	shr	al, 1
	and	al, 3
	cmp	al, 2
	je	.label_1166
	lea	rbx, [r15 + 1]
	cmp	al, 1
	je	.label_1148
	test	al, al
	jne	.label_1165
	lea	r13, [rbx*8]
	mov	rdi, r13
	call	malloc
	mov	qword ptr [r14 + 8], rax
	xor	ebp, ebp
	mov	qword ptr [rsp + 0x10], rax
	test	rax, rax
	je	.label_1146
	mov	rdi, r13
	call	malloc
	mov	qword ptr [r14 + 0x10], rax
	test	rax, rax
	je	.label_1140
	mov	qword ptr [r14], rbx
	mov	r13d, 1
.label_1161:
	mov	r8, qword ptr [rsp + 8]
	mov	rdi, r12
	jmp	.label_1159
.label_1166:
	mov	rbx, qword ptr [r14]
	mov	r13d, 2
	cmp	rbx, r15
	jae	.label_1159
	mov	edi, OFFSET FLAT:label_1164
	mov	esi, OFFSET FLAT:label_730
	mov	edx, 0x1fb
	mov	ecx, OFFSET FLAT:label_1154
	call	__assert_fail
.label_1148:
	mov	rax, qword ptr [r14]
	mov	r13d, 1
	cmp	rbx, rax
	ja	.label_1137
	mov	rbx, rax
.label_1159:
	test	r15, r15
	jle	.label_1142
	mov	rcx, qword ptr [r14 + 8]
	mov	rax, qword ptr [r14 + 0x10]
	mov	r9d, r15d
	and	r9d, 1
	xor	edx, edx
	cmp	r15, 1
	je	.label_1145
	mov	rsi, r15
	sub	rsi, r9
	mov	rbp, rdi
	add	rbp, 0x18
	xor	edx, edx
	nop	word ptr [rax + rax]
.label_1158:
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
	jne	.label_1158
.label_1145:
	test	r9, r9
	je	.label_1168
	mov	rsi, rdx
	shl	rsi, 4
	mov	rbp, qword ptr [rdi + rsi]
	mov	qword ptr [rcx + rdx*8], rbp
	mov	rcx, qword ptr [rdi + rsi + 8]
	mov	qword ptr [rax + rdx*8], rcx
.label_1168:
	mov	rbx, qword ptr [r14]
	jmp	.label_1136
.label_1142:
	xor	r15d, r15d
.label_1136:
	cmp	r15, rbx
	jae	.label_1160
	mov	rax, qword ptr [r14 + 8]
	mov	rcx, qword ptr [r14 + 0x10]
	nop	word ptr cs:[rax + rax]
.label_1155:
	mov	qword ptr [rcx + r15*8], -1
	mov	qword ptr [rax + r15*8], -1
	inc	r15
	cmp	r15, qword ptr [r14]
	jb	.label_1155
.label_1160:
	mov	ebp, r13d
.label_1167:
	mov	al, byte ptr [r8 + 0x38]
	add	bpl, bpl
	and	al, 0xf9
	mov	ecx, ebp
	and	cl, 6
	or	cl, al
	and	bpl, 6
	mov	byte ptr [r8 + 0x38], cl
	mov	rbp, -2
	je	.label_1135
.label_1163:
	mov	al, byte ptr [rsp + 0x68]
	mov	rbp, qword ptr [rdi]
	test	al, al
	je	.label_1135
	mov	rax, qword ptr [rsp + 0x20]
	cmp	rbp, rax
	jne	.label_1138
	mov	rbp, qword ptr [rdi + 8]
	sub	rbp, rax
	jmp	.label_1135
.label_1137:
	mov	rdi, qword ptr [r14 + 8]
	lea	rsi, [rbx*8]
	mov	qword ptr [rsp + 0x10], rsi
	call	realloc
	xor	ebp, ebp
	mov	qword ptr [rsp + 0x18], rax
	test	rax, rax
	je	.label_1146
	mov	rdi, qword ptr [r14 + 0x10]
	mov	rsi, qword ptr [rsp + 0x10]
	call	realloc
	test	rax, rax
	je	.label_1149
	mov	rcx, qword ptr [rsp + 0x18]
	mov	qword ptr [r14 + 8], rcx
	mov	qword ptr [r14 + 0x10], rax
	mov	qword ptr [r14], rbx
	jmp	.label_1161
.label_1140:
	mov	rdi, qword ptr [rsp + 0x10]
.label_1162:
	call	free
.label_1146:
	mov	r8, qword ptr [rsp + 8]
	mov	rdi, r12
	jmp	.label_1167
.label_1165:
	mov	edi, OFFSET FLAT:label_1153
	mov	esi, OFFSET FLAT:label_730
	mov	edx, 0x1f9
	mov	ecx, OFFSET FLAT:label_1154
	call	__assert_fail
.label_1138:
	mov	edi, OFFSET FLAT:label_1143
	mov	esi, OFFSET FLAT:label_730
	mov	edx, 0x1be
	mov	ecx, OFFSET FLAT:label_1144
	call	__assert_fail
.label_1149:
	mov	rdi, qword ptr [rsp + 0x18]
	jmp	.label_1162
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40a7d0
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
	#Procedure 0x40a7f0
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
	js	.label_1172
	movabs	rax, 0x7fffffffffffffff
	test	rbx, rbx
	js	.label_1174
	sub	rax, rbx
	cmp	rax, r14
	jl	.label_1172
	lea	rdx, [rbx + r14]
	xor	r12d, r12d
	test	rbx, rbx
	jle	.label_1171
	xor	r12d, r12d
	test	r14, r14
	jle	.label_1169
	mov	qword ptr [rsp + 8], rdi
	mov	qword ptr [rsp], rdx
	mov	rdi, rdx
	mov	qword ptr [rsp + 0x10], r9
	call	malloc
	mov	r12, rax
	test	r12, r12
	je	.label_1172
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
	jmp	.label_1171
.label_1174:
	inc	rax
	sub	rax, rbx
	cmp	rax, r14
	jle	.label_1173
.label_1172:
	mov	rax, -2
	jmp	.label_1170
.label_1173:
	add	rbx, r14
	xor	r12d, r12d
	mov	rdx, rbx
	jmp	.label_1171
.label_1169:
	mov	r13, r15
.label_1171:
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
.label_1170:
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
	#Procedure 0x40a900
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
	js	.label_1175
	movabs	rax, 0x7fffffffffffffff
	test	rbx, rbx
	js	.label_1178
	sub	rax, rbx
	cmp	rax, r14
	jl	.label_1175
	lea	rdx, [rbx + r14]
	xor	r12d, r12d
	test	rbx, rbx
	jle	.label_1176
	xor	r12d, r12d
	test	r14, r14
	jle	.label_1179
	mov	qword ptr [rsp + 8], rdi
	mov	qword ptr [rsp], rdx
	mov	rdi, rdx
	mov	qword ptr [rsp + 0x10], r9
	call	malloc
	mov	r12, rax
	test	r12, r12
	je	.label_1175
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
	jmp	.label_1176
.label_1178:
	inc	rax
	sub	rax, rbx
	cmp	rax, r14
	jle	.label_1177
.label_1175:
	mov	rax, -2
	jmp	.label_1180
.label_1177:
	add	rbx, r14
	xor	r12d, r12d
	mov	rdx, rbx
	jmp	.label_1176
.label_1179:
	mov	r13, r15
.label_1176:
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
.label_1180:
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
	#Procedure 0x40aa10
	.globl rpl_re_set_registers
	.type rpl_re_set_registers, @function
rpl_re_set_registers:

	mov	al, byte ptr [rdi + 0x38]
	and	al, 0xf9
	mov	r9d, eax
	or	r9b, 2
	test	rdx, rdx
	je	.label_1181
	mov	eax, r9d
.label_1181:
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
	#Procedure 0x40aa40

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
	je	.label_1182
	mov	rdi, qword ptr [rax + 0x10]
	call	free
	mov	rdi, qword ptr [rbx + 0x50]
	call	free
.label_1182:
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
	#Procedure 0x40aaa0

	.globl re_string_realloc_buffers
	.type re_string_realloc_buffers, @function
re_string_realloc_buffers:
	push	rbp
	push	r14
	push	rbx
	mov	r14, rsi
	mov	rbx, rdi
	cmp	dword ptr [rbx + 0x90], 2
	jl	.label_1183
	mov	rax, r14
	shr	rax, 0x3d
	mov	ebp, 0xc
	jne	.label_1184
	mov	rdi, qword ptr [rbx + 0x10]
	lea	rsi, [r14*4]
	call	realloc
	test	rax, rax
	je	.label_1184
	mov	qword ptr [rbx + 0x10], rax
	mov	rdi, qword ptr [rbx + 0x18]
	test	rdi, rdi
	je	.label_1183
	lea	rsi, [r14*8]
	call	realloc
	test	rax, rax
	je	.label_1184
	mov	qword ptr [rbx + 0x18], rax
.label_1183:
	cmp	byte ptr [rbx + 0x8b], 0
	je	.label_1185
	mov	rdi, qword ptr [rbx + 8]
	mov	rsi, r14
	call	realloc
	mov	ebp, 0xc
	test	rax, rax
	je	.label_1184
	mov	qword ptr [rbx + 8], rax
.label_1185:
	mov	qword ptr [rbx + 0x40], r14
	xor	ebp, ebp
.label_1184:
	mov	eax, ebp
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40ab30

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
	jne	.label_1198
	cmp	qword ptr [r13 + 0x78], 0
	jne	.label_1198
	cmp	byte ptr [r13 + 0x8c], 0
	je	.label_1215
.label_1198:
	mov	r12, qword ptr [r13 + 0x38]
	jmp	.label_1221
.label_1215:
	cmp	rdx, r15
	jle	.label_1225
	lea	rax, [r13 + 0x78]
	mov	qword ptr [rsp + 0x20], rax
	lea	rax, [r13 + 0x20]
	mov	qword ptr [rsp + 8], rax
	jmp	.label_1193
.label_1224:
	lea	rax, [rbp + 1]
	cmp	rax, 2
	jb	.label_1226
	cmp	rbp, -2
	jne	.label_1233
	mov	rax, qword ptr [r13 + 0x40]
	cmp	rax, qword ptr [r13 + 0x58]
	jl	.label_1233
.label_1226:
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
	jne	.label_1235
	mov	rax, qword ptr [rsp + 0x10]
	mov	rcx, qword ptr [rsp + 8]
	mov	qword ptr [rcx], rax
	jmp	.label_1235
	nop	
.label_1193:
	mov	r14, rdx
	mov	rbp, qword ptr [r13]
	mov	rbx, qword ptr [r13 + 0x28]
	lea	rax, [rbx + r15]
	movzx	r12d, byte ptr [rbp + rax]
	test	r12b, r12b
	js	.label_1191
	mov	rdi, qword ptr [rsp + 8]
	call	mbsinit
	test	eax, eax
	je	.label_1191
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
.label_1235:
	mov	rax, r15
	jmp	.label_1203
	nop	dword ptr [rax]
.label_1191:
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
	ja	.label_1224
	mov	edi, dword ptr [rsp + 4]
	call	towupper
	mov	r12d, eax
	cmp	r12d, dword ptr [rsp + 4]
	lea	rbx, [rsp + 0x30]
	jne	.label_1231
	mov	rdi, qword ptr [r13 + 8]
	add	rdi, r15
	mov	rsi, qword ptr [r13]
	add	rsi, qword ptr [r13 + 0x28]
	add	rsi, r15
	jmp	.label_1237
	nop	word ptr cs:[rax + rax]
.label_1231:
	mov	rdi, rbx
	mov	esi, r12d
	lea	rdx, [rsp + 0x10]
	call	wcrtomb
	cmp	rbp, rax
	jne	.label_1240
	mov	rdi, qword ptr [r13 + 8]
	add	rdi, r15
	mov	rsi, rbx
.label_1237:
	mov	rdx, rbp
	call	memcpy
	mov	rcx, qword ptr [r13 + 0x10]
	mov	dword ptr [rcx + r15*4], r12d
	lea	rbx, [rbp + r15]
	lea	rax, [r15 + 1]
	cmp	rax, rbx
	jge	.label_1203
	lea	rdi, [rcx + r15*4 + 4]
	lea	rdx, [rbp*4 - 4]
	mov	esi, 0xff
	call	memset
	mov	rax, rbx
.label_1203:
	mov	rdx, r14
	cmp	rdx, rax
	mov	r15, rax
	jg	.label_1193
	jmp	.label_1195
.label_1240:
	mov	r12, r15
	mov	rdx, r14
	mov	rcx, qword ptr [rsp + 8]
	mov	rsi, qword ptr [rsp + 0x20]
	jmp	.label_1196
.label_1233:
	mov	rax, qword ptr [rsp + 0x10]
	mov	rcx, qword ptr [rsp + 8]
	mov	qword ptr [rcx], rax
.label_1225:
	mov	rax, r15
.label_1195:
	mov	qword ptr [r13 + 0x30], rax
	mov	qword ptr [r13 + 0x38], rax
	jmp	.label_1207
.label_1221:
	cmp	r15, rdx
	jge	.label_1212
	lea	rcx, [r13 + 0x20]
	lea	rsi, [r13 + 0x78]
.label_1196:
	mov	qword ptr [rsp + 0x18], rdx
	sub	rdx, r15
	mov	rax, qword ptr [rcx]
	mov	qword ptr [rsp + 0x10], rax
	mov	rax, qword ptr [rsi]
	test	rax, rax
	mov	qword ptr [rsp + 0x20], r12
	mov	qword ptr [rsp + 8], rcx
	jne	.label_1216
	mov	rbp, qword ptr [r13]
	add	rbp, qword ptr [r13 + 0x28]
	add	rbp, r12
.label_1186:
	lea	rdi, [rsp + 4]
	mov	rsi, rbp
	call	rpl_mbrtowc
	mov	r14, rax
	lea	r12, [r14 - 1]
	cmp	r12, -4
	ja	.label_1234
	mov	edi, dword ptr [rsp + 4]
	call	towupper
	mov	ebx, eax
	cmp	ebx, dword ptr [rsp + 4]
	je	.label_1209
	lea	rdi, [rsp + 0x30]
	lea	rdx, [rsp + 0x10]
	mov	esi, ebx
	call	wcrtomb
	mov	rcx, rax
	sub	rax, r14
	jne	.label_1242
	mov	rdi, qword ptr [r13 + 8]
	add	rdi, r15
	lea	rsi, [rsp + 0x30]
	jmp	.label_1243
.label_1216:
	lea	rbp, [rsp + 0x30]
	movsxd	r8, dword ptr [r13 + 0x90]
	test	r8, r8
	jle	.label_1186
	xor	esi, esi
.label_1201:
	cmp	rsi, rdx
	jge	.label_1186
	mov	rdi, qword ptr [r13]
	add	rdi, qword ptr [r13 + 0x28]
	add	rdi, r12
	movzx	edi, byte ptr [rsi + rdi]
	movzx	ebx, byte ptr [rax + rdi]
	mov	byte ptr [rsp + rsi + 0x30], bl
	inc	rsi
	cmp	rsi, r8
	jl	.label_1201
	jmp	.label_1186
.label_1234:
	lea	rax, [r14 + 1]
	cmp	rax, 2
	jb	.label_1197
	cmp	r14, -2
	jne	.label_1199
	mov	rax, qword ptr [r13 + 0x40]
	cmp	rax, qword ptr [r13 + 0x58]
	jl	.label_1199
.label_1197:
	mov	rax, qword ptr [r13 + 0x28]
	mov	r12, qword ptr [rsp + 0x20]
	add	rax, r12
	mov	rdx, qword ptr [r13]
	mov	rcx, qword ptr [r13 + 0x78]
	mov	al, byte ptr [rdx + rax]
	movzx	edx, al
	test	rcx, rcx
	jne	.label_1208
.label_1202:
	movzx	eax, al
	mov	rcx, qword ptr [r13 + 8]
	mov	byte ptr [rcx + r15], al
	cmp	byte ptr [r13 + 0x8c], 0
	jne	.label_1232
.label_1205:
	inc	r12
	mov	rcx, qword ptr [r13 + 0x10]
	mov	dword ptr [rcx + r15*4], eax
	inc	r15
	cmp	r14, -1
	jne	.label_1192
	mov	rax, qword ptr [rsp + 0x10]
	mov	rcx, qword ptr [rsp + 8]
	mov	qword ptr [rcx], rax
	jmp	.label_1192
.label_1242:
	cmp	rcx, -1
	je	.label_1209
	lea	rbp, [rcx + r15]
	mov	rdi, qword ptr [r13 + 0x40]
	cmp	rbp, rdi
	jbe	.label_1236
.label_1199:
	mov	rax, qword ptr [rsp + 0x10]
	mov	rcx, qword ptr [rsp + 8]
	mov	qword ptr [rcx], rax
	mov	r12, qword ptr [rsp + 0x20]
.label_1212:
	mov	qword ptr [r13 + 0x30], r15
	mov	qword ptr [r13 + 0x38], r12
.label_1207:
	xor	eax, eax
.label_1190:
	add	rsp, 0x78
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_1209:
	mov	rdi, qword ptr [r13 + 8]
	add	rdi, r15
	mov	rsi, rbp
.label_1243:
	mov	rdx, r14
	call	memcpy
	cmp	byte ptr [r13 + 0x8c], 0
	mov	r12, qword ptr [rsp + 0x20]
	jne	.label_1187
.label_1189:
	add	r12, r14
	mov	rax, qword ptr [r13 + 0x10]
	mov	dword ptr [rax + r15*4], ebx
	lea	rbp, [r14 + r15]
	inc	r15
	cmp	r15, rbp
	jge	.label_1192
	lea	rdi, [rax + r15*4]
	lea	rdx, [r14*4 - 4]
	mov	esi, 0xff
	call	memset
	jmp	.label_1204
.label_1192:
	mov	rbp, r15
.label_1204:
	mov	rdx, qword ptr [rsp + 0x18]
	mov	r15, rbp
	jmp	.label_1221
.label_1187:
	mov	rax, qword ptr [r13 + 0x18]
	xor	esi, esi
	cmp	r14, 4
	jb	.label_1214
	xor	esi, esi
	mov	rcx, r14
	and	rcx, 0xfffffffffffffffc
	je	.label_1214
	movq	xmm0, r12
	pshufd	xmm0, xmm0, 0x44
	lea	rdi, [rcx - 4]
	shr	rdi, 2
	lea	edx, [rdi + 1]
	and	edx, 1
	mov	esi, 1
	test	rdi, rdi
	je	.label_1222
	lea	rsi, [rdx - 1]
	sub	rsi, rdi
	mov	edi, 1
	movq	xmm1, rdi
	pslldq	xmm1, 8
	movdqa	xmm8, xmmword ptr [rip + label_1038]
	movdqa	xmm3, xmmword ptr [rip + label_1037]
	movdqa	xmm4, xmmword ptr [rip + label_1040]
	movdqa	xmm5, xmmword ptr [rip + label_1039]
.label_1244:
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
	jne	.label_1244
	jmp	.label_1194
.label_1236:
	mov	qword ptr [rsp + 0x18], rax
	mov	rax, qword ptr [r13 + 0x18]
	test	rax, rax
	mov	qword ptr [rsp + 0x28], rcx
	jne	.label_1245
	shl	rdi, 3
	call	malloc
	mov	rcx, qword ptr [rsp + 0x28]
	mov	qword ptr [r13 + 0x18], rax
	test	rax, rax
	je	.label_1188
.label_1245:
	cmp	byte ptr [r13 + 0x8c], 0
	jne	.label_1210
	test	r15, r15
	je	.label_1200
	xor	edx, edx
	cmp	r15, 4
	jb	.label_1211
	xor	edx, edx
	mov	r9, r15
	and	r9, 0xfffffffffffffffc
	je	.label_1211
	lea	rsi, [r9 - 4]
	mov	rdi, rsi
	shr	rdi, 2
	lea	edx, [rdi + 1]
	and	edx, 3
	mov	r8d, 1
	cmp	rsi, 0xc
	jae	.label_1228
	movq	xmm0, r8
	pslldq	xmm0, 8
	jmp	.label_1241
.label_1222:
	movq	xmm1, rsi
	pslldq	xmm1, 8
.label_1194:
	test	rdx, rdx
	je	.label_1238
	paddq	xmm0, xmm1
	movq	rdx, xmm1
	add	rdx, r15
	movdqu	xmmword ptr [rax + rdx*8], xmm0
	paddq	xmm0, xmmword ptr [rip + label_1037]
	movdqu	xmmword ptr [rax + rdx*8 + 0x10], xmm0
.label_1238:
	cmp	r14, rcx
	mov	rsi, rcx
	je	.label_1189
.label_1214:
	mov	rcx, r14
	sub	rcx, rsi
	lea	rdx, [rsi + r12]
	add	rsi, r15
	lea	rax, [rax + rsi*8]
.label_1246:
	mov	qword ptr [rax], rdx
	inc	rdx
	add	rax, 8
	dec	rcx
	jne	.label_1246
	jmp	.label_1189
.label_1188:
	mov	eax, 0xc
	jmp	.label_1190
.label_1228:
	lea	rsi, [rdx - 1]
	sub	rsi, rdi
	mov	edi, 1
	movq	xmm0, rdi
	pslldq	xmm0, 8
	movdqa	xmm8, xmmword ptr [rip + label_1037]
	movdqa	xmm9, xmmword ptr [rip + label_1038]
	movdqa	xmm10, xmmword ptr [rip + label_1039]
	movdqa	xmm11, xmmword ptr [rip + label_1040]
	movdqa	xmm5, xmmword ptr [rip + label_1041]
	movdqa	xmm6, xmmword ptr [rip + label_1042]
	movdqa	xmm7, xmmword ptr [rip + label_1043]
	movdqa	xmm1, xmmword ptr [rip + label_1044]
.label_1223:
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
	jne	.label_1223
.label_1241:
	test	rdx, rdx
	je	.label_1227
	neg	rdx
	movdqa	xmm1, xmmword ptr [rip + label_1037]
	movdqa	xmm2, xmmword ptr [rip + label_1038]
.label_1230:
	movdqa	xmm3, xmm0
	movq	rsi, xmm0
	movdqu	xmmword ptr [rax + rsi*8], xmm0
	paddq	xmm0, xmm1
	paddq	xmm3, xmm2
	movdqu	xmmword ptr [rax + rsi*8 + 0x10], xmm0
	inc	rdx
	movdqa	xmm0, xmm3
	jne	.label_1230
.label_1227:
	cmp	r15, r9
	mov	rdx, r9
	je	.label_1200
.label_1211:
	mov	qword ptr [rax + rdx*8], rdx
	inc	rdx
	cmp	r15, rdx
	jne	.label_1211
.label_1200:
	mov	byte ptr [r13 + 0x8c], 1
.label_1210:
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
	jb	.label_1220
	lea	r10, [rdi - 1]
	mov	eax, 1
	cmp	r10, 4
	jb	.label_1213
	mov	rsi, r10
	and	rsi, 0xfffffffffffffffc
	mov	r8, r10
	and	r8, 0xfffffffffffffffc
	mov	eax, 1
	je	.label_1213
	mov	rax, rsi
	or	rax, 1
	movq	xmm0, r14
	pshufd	xmm6, xmm0, 0x44
	movq	xmm1, r12
	pshufd	xmm11, xmm1, 0x44
	mov	r9, rbx
	movq	xmm2, rbx
	pshufd	xmm12, xmm2, 0x44
	movdqa	xmm7, xmmword ptr [rip + label_1217]
	movdqa	xmm8, xmmword ptr [rip + label_1037]
	movdqa	xmm9, xmmword ptr [rip + label_1038]
	movdqa	xmm10, xmmword ptr [rip + label_1218]
	pxor	xmm6, xmm10
	pshufd	xmm13, xmmword ptr [rip + label_1219],  0xe8
	mov	rdi, r8
.label_1239:
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
	jne	.label_1239
	cmp	r10, r8
	mov	rbx, r9
	mov	rdi, qword ptr [rsp + 0x28]
	je	.label_1220
.label_1213:
	lea	rcx, [rcx + r15*4]
	lea	rdx, [rdx + r15*8]
.label_1229:
	cmp	rax, r14
	mov	rsi, r12
	cmovb	rsi, rax
	add	rsi, rbx
	mov	qword ptr [rdx + rax*8], rsi
	mov	dword ptr [rcx + rax*4], 0xffffffff
	inc	rax
	cmp	rdi, rax
	jne	.label_1229
.label_1220:
	mov	rax, qword ptr [r13 + 0x58]
	mov	rcx, qword ptr [rsp + 0x18]
	add	rax, rcx
	mov	qword ptr [r13 + 0x58], rax
	cmp	qword ptr [r13 + 0x60], rbx
	mov	r12, rbx
	jle	.label_1206
	add	qword ptr [r13 + 0x68], rcx
.label_1206:
	mov	rdx, qword ptr [r13 + 0x40]
	cmp	rdx, rax
	cmovg	rdx, rax
	add	r12, r14
	mov	r15, rbp
	jmp	.label_1221
.label_1208:
	mov	al, byte ptr [rcx + rdx]
	jmp	.label_1202
.label_1232:
	mov	rcx, qword ptr [r13 + 0x18]
	mov	qword ptr [rcx + r15*8], r12
	jmp	.label_1205
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40b460

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
	jle	.label_1254
	lea	r14, [r13 + 0x20]
	lea	r15, [rsp + 0xc]
	jmp	.label_1249
	nop	dword ptr [rax + rax]
.label_1250:
	mov	rax, qword ptr [r13 + 0x28]
	add	rax, rbx
	mov	rcx, qword ptr [r13]
	movzx	ecx, byte ptr [rcx + rax]
	mov	dword ptr [rsp + 0xc], ecx
	mov	rax, qword ptr [r13 + 0x78]
	test	rax, rax
	jne	.label_1256
.label_1252:
	mov	qword ptr [r14], rbp
	mov	eax, 1
.label_1247:
	mov	rdx, qword ptr [r13 + 0x10]
	mov	dword ptr [rdx + rbx*4], ecx
	lea	rbp, [rax + rbx]
	lea	rcx, [rbx + 1]
	cmp	rcx, rbp
	jge	.label_1258
	lea	rdi, [rdx + rbx*4 + 4]
	lea	rdx, [rax*4 - 4]
	mov	esi, 0xff
	call	memset
	mov	rcx, rbp
.label_1258:
	cmp	r12, rcx
	mov	rbx, rcx
	jg	.label_1249
	jmp	.label_1259
.label_1255:
	mov	ecx, dword ptr [rsp + 0xc]
	jmp	.label_1247
.label_1257:
	cmp	dword ptr [r13 + 0x90], 0
	lea	rsi, [rsp + 0x10]
	jle	.label_1248
	xor	eax, eax
.label_1253:
	cmp	rax, rdx
	jge	.label_1251
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
	jl	.label_1253
	lea	rsi, [rsp + 0x10]
	jmp	.label_1248
.label_1256:
	movzx	ecx, byte ptr [rax + rcx]
	mov	dword ptr [rsp + 0xc], ecx
	jmp	.label_1252
.label_1251:
	lea	rsi, [rsp + 0x10]
	jmp	.label_1248
	nop	
.label_1249:
	mov	rdx, r12
	sub	rdx, rbx
	mov	rbp, qword ptr [r13 + 0x20]
	cmp	qword ptr [r13 + 0x78], 0
	jne	.label_1257
	mov	rsi, qword ptr [r13]
	add	rsi, qword ptr [r13 + 0x28]
	add	rsi, rbx
.label_1248:
	mov	rdi, r15
	mov	rcx, r14
	call	rpl_mbrtowc
	lea	rcx, [rax + 1]
	cmp	rcx, 2
	jb	.label_1250
	cmp	rax, -2
	jne	.label_1255
	mov	rax, qword ptr [r13 + 0x40]
	cmp	rax, qword ptr [r13 + 0x58]
	jge	.label_1250
	mov	qword ptr [r14], rbp
.label_1254:
	mov	rcx, rbx
.label_1259:
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
	#Procedure 0x40b5e0

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
	mov	rbx, r9
	mov	r13, rdx
	mov	r12, rdi
	mov	r14, qword ptr [rsi]
	mov	rax, qword ptr [r14 + 0xa8]
	mov	qword ptr [rsp + 0x18], rax
	mov	qword ptr [rsp + 0x20], rsi
	mov	qword ptr [rsp + 8], rcx
	mov	qword ptr [rsp + 0x10], r8
	call	parse_branch
	mov	r8, rbx
	mov	rbx, rax
	xor	ebp, ebp
	test	rbx, rbx
	jne	.label_1268
	mov	eax, dword ptr [r8]
	test	eax, eax
	jne	.label_1263
.label_1268:
	cmp	byte ptr [r13 + 8], 0xa
	jne	.label_1274
	mov	rax, qword ptr [rsp + 8]
	or	rax, 0x800000
	mov	qword ptr [rsp + 0x30], rax
	jmp	.label_1267
.label_1274:
	mov	rbp, rbx
	jmp	.label_1263
.label_1273:
	mov	edi, 0x3c8
	call	malloc
	test	rax, rax
	je	.label_1269
	mov	rcx, qword ptr [r14 + 0x70]
	mov	qword ptr [rax], rcx
	mov	qword ptr [r14 + 0x70], rax
	mov	dword ptr [r14 + 0x80], 0
	xor	ecx, ecx
	mov	r8, rbp
	jmp	.label_1271
	nop	word ptr cs:[rax + rax]
.label_1267:
	mov	rdi, r13
	mov	rsi, r12
	mov	rdx, qword ptr [rsp + 0x30]
	mov	rbp, r8
	call	peek_token
	mov	r8, rbp
	cdqe	
	add	qword ptr [r12 + 0x48], rax
	movzx	eax, byte ptr [r13 + 8]
	mov	ecx, eax
	or	cl, 8
	cmp	cl, 0xa
	mov	r15d, 0
	je	.label_1264
	cmp	qword ptr [rsp + 0x10], 0
	je	.label_1260
	cmp	eax, 9
	mov	r15d, 0
	je	.label_1264
.label_1260:
	mov	rax, qword ptr [r14 + 0xa8]
	mov	qword ptr [rsp + 0x28], rax
	mov	rax, qword ptr [rsp + 0x18]
	mov	qword ptr [r14 + 0xa8], rax
	mov	rdi, r12
	mov	rsi, qword ptr [rsp + 0x20]
	mov	rdx, r13
	mov	rcx, qword ptr [rsp + 8]
	mov	r8, qword ptr [rsp + 0x10]
	mov	r9, rbp
	call	parse_branch
	mov	r8, rbp
	mov	r15, rax
	test	r15, r15
	jne	.label_1275
	mov	eax, dword ptr [r8]
	test	eax, eax
	jne	.label_1277
.label_1275:
	mov	rax, qword ptr [rsp + 0x28]
	or	qword ptr [r14 + 0xa8], rax
	nop	dword ptr [rax]
.label_1264:
	mov	ecx, dword ptr [r14 + 0x80]
	cmp	ecx, 0xf
	je	.label_1273
	mov	rax, qword ptr [r14 + 0x70]
.label_1271:
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
	je	.label_1261
	mov	qword ptr [rbx], rbp
.label_1261:
	test	r15, r15
	je	.label_1265
	mov	qword ptr [r15], rbp
.label_1265:
	cmp	byte ptr [r13 + 8], 0xa
	mov	rbx, rbp
	je	.label_1267
.label_1263:
	mov	rax, rbp
	add	rsp, 0x38
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_1277:
	xor	ebp, ebp
	test	rbx, rbx
	je	.label_1263
	mov	r14d, 0x400ff
	xor	ebp, ebp
.label_1262:
	mov	r15, rbx
	mov	rbx, qword ptr [r15 + 8]
	test	rbx, rbx
	jne	.label_1262
	mov	rbx, qword ptr [r15 + 0x10]
	test	rbx, rbx
	jne	.label_1262
.label_1272:
	mov	eax, dword ptr [r15 + 0x30]
	and	eax, r14d
	cmp	eax, 3
	je	.label_1276
	cmp	eax, 6
	jne	.label_1270
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
	jmp	.label_1266
.label_1276:
	mov	rdi, qword ptr [r15 + 0x28]
.label_1266:
	call	free
.label_1270:
	mov	rax, qword ptr [r15]
	test	rax, rax
	je	.label_1263
	mov	rbx, qword ptr [rax + 0x10]
	cmp	rbx, r15
	mov	r15, rax
	je	.label_1272
	test	rbx, rbx
	mov	r15, rax
	je	.label_1272
	jmp	.label_1262
.label_1269:
	mov	dword ptr [rbp], 0xc
	xor	ebp, ebp
	jmp	.label_1263
	.section	.text
	.align	32
	#Procedure 0x40b850

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
	jle	.label_1307
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
	jl	.label_1329
	mov	rax, qword ptr [rbp + 0x48]
	cmp	rax, qword ptr [rbp + 0x30]
	je	.label_1329
	mov	rcx, qword ptr [rbp + 0x10]
	cmp	dword ptr [rcx + rax*4], -1
	je	.label_1331
.label_1329:
	cmp	bl, 0x5c
	jne	.label_1336
	mov	rcx, qword ptr [rbp + 0x48]
	lea	rax, [rcx + 1]
	cmp	rax, qword ptr [rbp + 0x58]
	jge	.label_1338
	cmp	byte ptr [rbp + 0x8b], 0
	jne	.label_1343
.label_1282:
	mov	rcx, qword ptr [rbp + 8]
	mov	bl, byte ptr [rcx + rax]
.label_1304:
	mov	byte ptr [r15], bl
	and	r14d, 0xff9fff00
	or	r14d, 1
	mov	dword ptr [r15 + 8], r14d
	cmp	dword ptr [rbp + 0x90], 2
	jl	.label_1347
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
	jmp	.label_1365
.label_1307:
	mov	byte ptr [r15 + 8], 2
	xor	r14d, r14d
	jmp	.label_650
.label_1336:
	and	r14d, 0xff9fff00
	or	r14d, 1
	mov	dword ptr [r15 + 8], r14d
	cmp	dword ptr [rbp + 0x90], 2
	jl	.label_1404
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
	jmp	.label_1386
.label_1338:
	and	r14d, 0xff9fff00
	or	r14d, 0x24
	jmp	.label_1392
.label_1404:
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
.label_1386:
	mov	dword ptr [r15 + 8], eax
	mov	r14d, 1
	add	bl, 0xf6
	movzx	ecx, bl
	cmp	cl, 0x73
	ja	.label_650
	jmp	qword ptr [(rcx * 8) + label_1402]
.label_2421:
	mov	rcx, r12
	test	ch, 8
	je	.label_650
	jmp	.label_844
.label_1347:
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
.label_1365:
	mov	dword ptr [r15 + 8], eax
	mov	r14d, 2
	add	bl, 0xd9
	movzx	ecx, bl
	cmp	cl, 0x56
	ja	.label_650
	jmp	qword ptr [(rcx * 8) + label_1358]
.label_2564:
	mov	rcx, r12
	test	ch, 0x40
	jne	.label_650
	and	eax, 0xffffff00
	or	eax, 4
	mov	dword ptr [r15 + 8], eax
	add	rbp, -0x31
	mov	qword ptr [r15], rbp
	jmp	.label_650
.label_1331:
	and	r14d, 0xff9fff00
	or	r14d, 0x200001
.label_1392:
	mov	dword ptr [r15 + 8], r14d
	mov	r14d, 1
.label_650:
	mov	eax, r14d
	add	rsp, 0x10
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_2422:
	mov	rdx, r12
	test	dl, 8
	jne	.label_780
	mov	rcx, qword ptr [rbp + 0x48]
	inc	rcx
	cmp	rcx, qword ptr [rbp + 0x58]
	je	.label_780
	mov	qword ptr [rbp + 0x48], rcx
	lea	rdi, [rsp]
	mov	rsi, rbp
	call	peek_token
	dec	qword ptr [rbp + 0x48]
	movzx	eax, byte ptr [rsp + 8]
	add	eax, -9
	cmp	eax, 1
	ja	.label_650
	mov	eax, dword ptr [r15 + 8]
.label_780:
	and	eax, 0xffffff00
	or	eax, 0xc
	mov	dword ptr [r15 + 8], eax
	mov	dword ptr [r15], 0x20
	jmp	.label_650
.label_2423:
	mov	rcx, r12
	test	ch, 0x20
	je	.label_650
	jmp	.label_802
.label_2424:
	mov	rcx, r12
	test	ch, 0x20
	je	.label_650
	jmp	.label_806
.label_2425:
	and	eax, 0xffffff00
	or	eax, 0xb
	mov	dword ptr [r15 + 8], eax
	jmp	.label_650
.label_2426:
	test	r12w, 0x402
	jne	.label_650
	jmp	.label_814
.label_2427:
	and	eax, 0xffffff00
	or	eax, 5
	mov	dword ptr [r15 + 8], eax
	jmp	.label_650
.label_2428:
	test	r12w, 0x402
	jne	.label_650
	jmp	.label_821
.label_2429:
	and	eax, 0xffffff00
	or	eax, 0x14
	mov	dword ptr [r15 + 8], eax
	jmp	.label_650
.label_2430:
	mov	rdx, r12
	test	edx, 0x800008
	jne	.label_828
	mov	rcx, qword ptr [rbp + 0x48]
	test	rcx, rcx
	je	.label_828
	test	dh, 8
	je	.label_650
	mov	rdx, qword ptr [rbp + 8]
	cmp	byte ptr [rdx + rcx - 1], 0xa
	jne	.label_650
.label_828:
	and	eax, 0xffffff00
	or	eax, 0xc
	mov	dword ptr [r15 + 8], eax
	mov	dword ptr [r15], 0x10
	jmp	.label_650
.label_2431:
	and	r12d, 0x1200
	cmp	r12, 0x1200
	jne	.label_650
	jmp	.label_845
.label_2432:
	mov	rcx, r12
	test	ch, 4
	jne	.label_650
	test	cx, cx
	js	.label_844
	jmp	.label_650
.label_2433:
	and	r12d, 0x1200
	cmp	r12, 0x1200
	jne	.label_650
	jmp	.label_616
.label_2560:
	test	r12d, 0x80000
	jne	.label_650
	and	eax, 0xffffff00
	or	eax, 0xc
	mov	dword ptr [r15 + 8], eax
	mov	dword ptr [r15], 0x80
	jmp	.label_650
.label_2561:
	mov	rcx, r12
	test	ch, 0x20
	jne	.label_650
.label_802:
	and	eax, 0xffffff00
	or	eax, 8
	mov	dword ptr [r15 + 8], eax
	jmp	.label_650
.label_2562:
	mov	rcx, r12
	test	ch, 0x20
	jne	.label_650
.label_806:
	and	eax, 0xffffff00
	or	eax, 9
	mov	dword ptr [r15 + 8], eax
	jmp	.label_650
.label_2563:
	and	r12d, 0x402
	cmp	r12, 2
	jne	.label_650
.label_814:
	and	eax, 0xffffff00
	or	eax, 0x12
	mov	dword ptr [r15 + 8], eax
	jmp	.label_650
.label_2565:
	test	r12d, 0x80000
	jne	.label_650
	and	eax, 0xffffff00
	or	eax, 0xc
	mov	dword ptr [r15 + 8], eax
	mov	dword ptr [r15], 6
	jmp	.label_650
.label_2566:
	test	r12d, 0x80000
	jne	.label_650
	and	eax, 0xffffff00
	or	eax, 0xc
	mov	dword ptr [r15 + 8], eax
	mov	dword ptr [r15], 9
	jmp	.label_650
.label_2567:
	and	r12d, 0x402
	cmp	r12, 2
	jne	.label_650
.label_821:
	and	eax, 0xffffff00
	or	eax, 0x13
	mov	dword ptr [r15 + 8], eax
	jmp	.label_650
.label_2568:
	test	r12d, 0x80000
	jne	.label_650
	and	eax, 0xffffff00
	or	eax, 0xc
	mov	dword ptr [r15 + 8], eax
	mov	dword ptr [r15], 0x200
	jmp	.label_650
.label_2569:
	test	r12d, 0x80000
	jne	.label_650
	and	eax, 0xffffff00
	or	eax, 0x23
	mov	dword ptr [r15 + 8], eax
	jmp	.label_650
.label_2570:
	test	r12d, 0x80000
	jne	.label_650
	and	eax, 0xffffff00
	or	eax, 0x21
	mov	dword ptr [r15 + 8], eax
	jmp	.label_650
.label_2571:
	test	r12d, 0x80000
	jne	.label_650
	and	eax, 0xffffff00
	or	eax, 0xc
	mov	dword ptr [r15 + 8], eax
	mov	dword ptr [r15], 0x40
	jmp	.label_650
.label_2572:
	test	r12d, 0x80000
	jne	.label_650
	and	eax, 0xffffff00
	or	eax, 0xc
	mov	dword ptr [r15 + 8], eax
	mov	dword ptr [r15], 0x100
	jmp	.label_650
.label_2573:
	test	r12d, 0x80000
	jne	.label_650
	and	eax, 0xffffff00
	or	eax, 0x22
	mov	dword ptr [r15 + 8], eax
	jmp	.label_650
.label_2574:
	test	r12d, 0x80000
	jne	.label_650
	and	eax, 0xffffff00
	or	eax, 0x20
	mov	dword ptr [r15 + 8], eax
	jmp	.label_650
.label_2575:
	and	r12d, 0x1200
	cmp	r12, 0x200
	jne	.label_650
.label_845:
	and	eax, 0xffffff00
	or	eax, 0x17
	mov	dword ptr [r15 + 8], eax
	jmp	.label_650
.label_2576:
	mov	rcx, r12
	test	ch, 4
	jne	.label_650
	test	cx, cx
	js	.label_650
.label_844:
	and	eax, 0xffffff00
	or	eax, 0xa
	mov	dword ptr [r15 + 8], eax
	jmp	.label_650
.label_2577:
	and	r12d, 0x1200
	cmp	r12, 0x200
	jne	.label_650
.label_616:
	and	eax, 0xffffff00
	or	eax, 0x18
	mov	dword ptr [r15 + 8], eax
	jmp	.label_650
.label_1343:
	cmp	edx, 2
	jl	.label_1335
	mov	rdx, qword ptr [rbp + 0x10]
	cmp	dword ptr [rdx + rcx*4 + 4], -1
	je	.label_1282
	lea	rsi, [rcx + 2]
	cmp	qword ptr [rbp + 0x30], rsi
	je	.label_1335
	cmp	dword ptr [rdx + rcx*4 + 8], -1
	je	.label_1282
.label_1335:
	mov	dl, byte ptr [rbp + 0x8c]
	test	dl, dl
	mov	rsi, rax
	je	.label_1293
	mov	rsi, qword ptr [rbp + 0x18]
	mov	rsi, qword ptr [rsi + rcx*8 + 8]
.label_1293:
	add	rsi, qword ptr [rbp + 0x28]
	test	dl, dl
	mov	rcx, qword ptr [rbp]
	mov	bl, byte ptr [rcx + rsi]
	je	.label_1304
	test	bl, bl
	js	.label_1282
	jmp	.label_1304
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40be70

	.globl parse_branch
	.type parse_branch, @function
parse_branch:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x28
	mov	rbx, r9
	mov	r15, r8
	mov	r13, rdx
	mov	rax, qword ptr [rsi]
	mov	qword ptr [rsp + 8], rax
	mov	qword ptr [rsp + 0x10], rdi
	mov	qword ptr [rsp + 0x18], rsi
	mov	qword ptr [rsp + 0x20], rcx
	call	parse_expression
	mov	rbp, rbx
	mov	rbx, rax
	xor	r12d, r12d
	test	rbx, rbx
	jne	.label_1423
	mov	eax, dword ptr [rbp]
	test	eax, eax
	je	.label_1423
	jmp	.label_1425
	nop	dword ptr [rax]
.label_1420:
	test	rbx, rbx
	cmove	rbx, r12
.label_1423:
	movzx	eax, byte ptr [r13 + 8]
	mov	ecx, eax
	or	cl, 8
	cmp	cl, 0xa
	je	.label_1428
	test	r15, r15
	je	.label_1432
	cmp	eax, 9
	je	.label_1428
.label_1432:
	mov	rdi, qword ptr [rsp + 0x10]
	mov	rsi, qword ptr [rsp + 0x18]
	mov	rdx, r13
	mov	rcx, qword ptr [rsp + 0x20]
	mov	r8, r15
	mov	r14, rbp
	mov	r9, r14
	call	parse_expression
	mov	r12, rax
	test	r12, r12
	jne	.label_1414
	mov	eax, dword ptr [rbp]
	test	eax, eax
	jne	.label_1418
.label_1414:
	test	rbx, rbx
	je	.label_1420
	test	r12, r12
	je	.label_1420
	mov	rax, qword ptr [rsp + 8]
	mov	ecx, dword ptr [rax + 0x80]
	cmp	ecx, 0xf
	je	.label_1424
	mov	rsi, rax
	mov	rax, qword ptr [rsi + 0x70]
.label_1421:
	lea	edx, [rcx + 1]
	mov	dword ptr [rsi + 0x80], edx
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
	jmp	.label_1423
.label_1424:
	mov	edi, 0x3c8
	call	malloc
	test	rax, rax
	je	.label_1419
	mov	rsi, qword ptr [rsp + 8]
	mov	rcx, qword ptr [rsi + 0x70]
	mov	qword ptr [rax], rcx
	mov	qword ptr [rsi + 0x70], rax
	mov	dword ptr [rsi + 0x80], 0
	xor	ecx, ecx
	mov	rbp, r14
	jmp	.label_1421
.label_1428:
	mov	r12, rbx
.label_1425:
	mov	rax, r12
	add	rsp, 0x28
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_1418:
	xor	r12d, r12d
	test	rbx, rbx
	je	.label_1425
	mov	r14d, 0x400ff
	xor	r12d, r12d
	nop	dword ptr [rax]
.label_1435:
	mov	rbp, rbx
	mov	rbx, qword ptr [rbp + 8]
	test	rbx, rbx
	jne	.label_1435
	mov	rbx, qword ptr [rbp + 0x10]
	test	rbx, rbx
	jne	.label_1435
.label_1431:
	mov	eax, dword ptr [rbp + 0x30]
	and	eax, r14d
	cmp	eax, 3
	je	.label_1412
	cmp	eax, 6
	jne	.label_1434
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
	jmp	.label_1417
.label_1412:
	mov	rdi, qword ptr [rbp + 0x28]
.label_1417:
	call	free
.label_1434:
	mov	rax, qword ptr [rbp]
	test	rax, rax
	je	.label_1425
	mov	rbx, qword ptr [rax + 0x10]
	cmp	rbx, rbp
	mov	rbp, rax
	je	.label_1431
	test	rbx, rbx
	mov	rbp, rax
	je	.label_1431
	jmp	.label_1435
.label_1419:
	mov	ebp, 0x400ff
	mov	rcx, r14
.label_1410:
	mov	r13, r12
	mov	r12, qword ptr [r13 + 8]
	test	r12, r12
	jne	.label_1410
	mov	r12, qword ptr [r13 + 0x10]
	test	r12, r12
	jne	.label_1410
.label_1433:
	mov	eax, dword ptr [r13 + 0x30]
	and	eax, ebp
	cmp	eax, 3
	je	.label_1415
	cmp	eax, 6
	jne	.label_1436
	mov	r15, qword ptr [r13 + 0x28]
	mov	rdi, qword ptr [r15]
	call	free
	mov	rdi, qword ptr [r15 + 8]
	call	free
	mov	rdi, qword ptr [r15 + 0x10]
	call	free
	mov	rdi, qword ptr [r15 + 0x18]
	call	free
	mov	rdi, r15
	jmp	.label_1413
.label_1415:
	mov	rdi, qword ptr [r13 + 0x28]
.label_1413:
	call	free
	mov	rcx, r14
.label_1436:
	mov	rax, qword ptr [r13]
	test	rax, rax
	je	.label_1429
	mov	r12, qword ptr [rax + 0x10]
	cmp	r12, r13
	mov	r13, rax
	je	.label_1433
	test	r12, r12
	mov	r13, rax
	je	.label_1433
	jmp	.label_1410
.label_1429:
	mov	ebp, 0x400ff
.label_1411:
	mov	r15, rbx
	mov	rbx, qword ptr [r15 + 8]
	test	rbx, rbx
	jne	.label_1411
	mov	rbx, qword ptr [r15 + 0x10]
	test	rbx, rbx
	jne	.label_1411
.label_1426:
	mov	eax, dword ptr [r15 + 0x30]
	and	eax, ebp
	cmp	eax, 3
	je	.label_1416
	cmp	eax, 6
	jne	.label_1422
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
	jmp	.label_1427
.label_1416:
	mov	rdi, qword ptr [r15 + 0x28]
.label_1427:
	call	free
	mov	rcx, r14
.label_1422:
	mov	rax, qword ptr [r15]
	test	rax, rax
	je	.label_1430
	mov	rbx, qword ptr [rax + 0x10]
	cmp	rbx, r15
	mov	r15, rax
	je	.label_1426
	test	rbx, rbx
	mov	r15, rax
	je	.label_1426
	jmp	.label_1411
.label_1430:
	mov	dword ptr [rcx], 0xc
	xor	r12d, r12d
	jmp	.label_1425
	nop	
	.section	.text
	.align	32
	#Procedure 0x40c180

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
	ja	.label_698
	mov	rdi, qword ptr [r14]
	mov	qword ptr [rsp + 0x20], rbx
	mov	qword ptr [rsp + 0x10], r8
	mov	qword ptr [rsp + 8], r10
	mov	qword ptr [rsp + 0x18], rdi
	jmp	qword ptr [(rcx * 8) + label_1437]
.label_2408:
	mov	rsi, qword ptr [r8 + 0x78]
	xor	r8d, r8d
	cmp	al, 0x21
	sete	r8b
	mov	edx, OFFSET FLAT:label_740
	mov	ecx, OFFSET FLAT:label_741
	jmp	.label_742
.label_2409:
	mov	rsi, qword ptr [r8 + 0x78]
	xor	r8d, r8d
	cmp	al, 0x23
	sete	r8b
	mov	edx, OFFSET FLAT:label_747
	mov	ecx, OFFSET FLAT:label_46
.label_742:
	mov	r9, r12
	call	build_charclass_op
	mov	rbp, rax
	xor	r15d, r15d
	test	rbp, rbp
	jne	.label_756
	mov	eax, dword ptr [r12]
	test	eax, eax
.label_657:
	mov	r8, qword ptr [rsp + 0x10]
	mov	r10, qword ptr [rsp + 8]
	je	.label_673
	jmp	.label_698
.label_756:
	mov	r8, qword ptr [rsp + 0x10]
	mov	r10, qword ptr [rsp + 8]
	jmp	.label_673
.label_2399:
	mov	ecx, dword ptr [rdi + 0x80]
	cmp	ecx, 0xf
	je	.label_768
	mov	rax, qword ptr [rdi + 0x70]
.label_826:
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
	jl	.label_772
	mov	rax, qword ptr [r8 + 0x48]
	cmp	qword ptr [r8 + 0x68], rax
	jg	.label_794
	mov	rbp, r14
	jmp	.label_673
.label_894:
	mov	rcx, qword ptr [r8 + 0x10]
	cmp	dword ptr [rcx + rax*4], -1
	jne	.label_800
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
	je	.label_808
	mov	rax, qword ptr [rsi + 0x70]
	pxor	xmm1, xmm1
.label_869:
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
.label_1033:
	mov	ecx, dword ptr [rsi + 0x80]
	cmp	ecx, 0xf
	je	.label_833
	mov	rax, qword ptr [rsi + 0x70]
.label_910:
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
	je	.label_641
	mov	qword ptr [rbx], rbp
	mov	rax, qword ptr [r8 + 0x48]
	cmp	qword ptr [r8 + 0x68], rax
	mov	r14, rbp
	mov	rbx, qword ptr [rsp + 0x20]
	jg	.label_794
	jmp	.label_673
.label_808:
	mov	edi, 0x3c8
	call	malloc
	mov	rsi, qword ptr [rsp + 0x18]
	mov	r8, qword ptr [rsp + 0x10]
	test	rax, rax
	mov	ebx, 0
	mov	r10, qword ptr [rsp + 8]
	pxor	xmm1, xmm1
	je	.label_1033
	mov	rcx, qword ptr [rsi + 0x70]
	mov	qword ptr [rax], rcx
	mov	qword ptr [rsi + 0x70], rax
	mov	dword ptr [rsi + 0x80], 0
	xor	ecx, ecx
	jmp	.label_869
.label_833:
	mov	edi, 0x3c8
	call	malloc
	pxor	xmm1, xmm1
	mov	rsi, qword ptr [rsp + 0x18]
	mov	r10, qword ptr [rsp + 8]
	mov	r8, qword ptr [rsp + 0x10]
	test	rax, rax
	je	.label_641
	mov	rcx, qword ptr [rsi + 0x70]
	mov	qword ptr [rax], rcx
	mov	qword ptr [rsi + 0x70], rax
	mov	dword ptr [rsi + 0x80], 0
	xor	ecx, ecx
	jmp	.label_910
.label_794:
	cmp	rax, qword ptr [r8 + 0x30]
	jne	.label_894
	mov	rbp, r14
	jmp	.label_673
.label_2400:
	mov	cl, byte ptr [r10]
	mov	eax, 1
	shl	eax, cl
	cdqe	
	test	qword ptr [rdi + 0xa8], rax
	je	.label_902
	or	qword ptr [rdi + 0xa0], rax
	mov	ecx, dword ptr [rdi + 0x80]
	cmp	ecx, 0xf
	je	.label_912
	mov	rax, qword ptr [rdi + 0x70]
.label_863:
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
	jmp	.label_673
.label_2401:
	mov	ecx, dword ptr [rdi + 0x80]
	cmp	ecx, 0xf
	je	.label_931
	mov	rax, qword ptr [rdi + 0x70]
.label_840:
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
	jle	.label_673
	or	byte ptr [rdi + 0xb0], 2
	jmp	.label_673
.label_2402:
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
	je	.label_697
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
	jne	.label_698
	cmp	byte ptr [r10 + 8], 9
	jne	.label_972
	mov	r15, rbp
.label_697:
	cmp	r15, 8
	mov	rsi, qword ptr [rsp + 0x18]
	ja	.label_978
	mov	eax, 1
	mov	ecx, r15d
	shl	eax, cl
	cdqe	
	or	qword ptr [rsi + 0xa8], rax
.label_978:
	mov	ecx, dword ptr [rsi + 0x80]
	cmp	ecx, 0xf
	je	.label_984
	mov	rax, qword ptr [rsi + 0x70]
.label_929:
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
	je	.label_913
	mov	qword ptr [rdi], rbp
.label_913:
	mov	qword ptr [rax + rcx + 0x30], r15
	jmp	.label_673
.label_2405:
	mov	eax, dword ptr [r10]
	test	ax, 0x30f
	je	.label_1004
	mov	al, byte ptr [rdi + 0xb0]
	test	al, 0x10
	jne	.label_987
	mov	ecx, eax
	or	cl, 0x10
	mov	byte ptr [rdi + 0xb0], cl
	xor	r14d, r14d
	test	al, 8
	mov	ebp, 0
	jne	.label_711
	movdqa	xmm0, xmmword ptr [rip + label_1013]
	movdqu	xmmword ptr [rdi + 0xb8], xmm0
	mov	ebp, 2
	mov	r14d, 0x80
	test	al, 4
	je	.label_711
	pxor	xmm0, xmm0
	movdqu	xmmword ptr [rdi + 0xc8], xmm0
.label_987:
	mov	eax, dword ptr [r10]
.label_1004:
	cmp	eax, 0x200
	je	.label_1024
	cmp	eax, 0x100
	jne	.label_1027
	mov	dword ptr [r10], 6
	mov	r15, rdi
	sub	r15, -0x80
	mov	r14d, dword ptr [rdi + 0x80]
	cmp	r14d, 0xf
	je	.label_1028
	mov	rax, qword ptr [rdi + 0x70]
.label_991:
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
	jmp	.label_1036
.label_2407:
	test	ebx, 0x1000000
	jne	.label_1057
.label_2404:
	test	bl, 0x20
	jne	.label_1057
	test	bl, 0x10
	jne	.label_1060
.label_2403:
	test	ebx, 0x20000
	jne	.label_1063
	movzx	ecx, al
	cmp	ecx, 9
	jne	.label_1063
	mov	dword ptr [r12], 0x10
	jmp	.label_651
.label_1063:
	and	eax, 0xffffff00
	or	eax, 1
	mov	dword ptr [r10 + 8], eax
	mov	ecx, dword ptr [rdi + 0x80]
	cmp	ecx, 0xf
	je	.label_1068
	mov	rax, qword ptr [rdi + 0x70]
.label_818:
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
.label_719:
	movdqu	xmmword ptr [rax + rcx + 0x20], xmm0
	mov	qword ptr [rax + rcx + 0x40], -1
	jmp	.label_673
.label_2406:
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
	je	.label_618
	test	r15, r15
	je	.label_618
	mov	rbp, qword ptr [rsp + 8]
	mov	rdi, rbp
	mov	rsi, qword ptr [rsp + 0x10]
	mov	rdx, rbx
	call	peek_token_bracket
	mov	rdx, rbp
	mov	ecx, dword ptr [rdx + 8]
	cmp	cl, 0x19
	je	.label_638
	cmp	cl, 2
	je	.label_643
	mov	dword ptr [rsp + 0x28], 0
	jmp	.label_646
.label_2410:
	mov	dword ptr [r12], 5
	jmp	.label_651
.label_1060:
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
.label_772:
	mov	rbp, r14
	jmp	.label_673
.label_638:
	or	byte ptr [r15 + 0x20], 1
	test	bh, 1
	je	.label_677
	or	byte ptr [r14 + 1], 4
.label_677:
	cdqe	
	mov	rsi, qword ptr [rsp + 0x10]
	add	qword ptr [rsi + 0x48], rax
	mov	rdi, rdx
	mov	rdx, rbx
	call	peek_token_bracket
	mov	rdx, qword ptr [rsp + 8]
	mov	ecx, dword ptr [rdx + 8]
	cmp	cl, 2
	je	.label_643
	mov	sil, 1
	mov	dword ptr [rsp + 0x28], esi
.label_646:
	cmp	cl, 0x15
	jne	.label_691
	and	ecx, 0xffffff00
	or	ecx, 1
	mov	dword ptr [rdx + 8], ecx
.label_691:
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
	jne	.label_708
	mov	eax, ebx
	and	eax, 0x10000
	mov	qword ptr [rsp + 0x38], rax
	xor	eax, eax
	mov	qword ptr [rsp + 0x68], rax
	xor	eax, eax
	mov	qword ptr [rsp + 0x60], rax
	mov	qword ptr [rsp + 0x30], r15
	jmp	.label_709
.label_997:
	cmp	al, 2
	je	.label_715
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
	je	.label_709
	jmp	.label_708
.label_2495:
	mov	rcx, qword ptr [r15 + 0x28]
	cmp	qword ptr [rsp + 0x68], rcx
	je	.label_732
	mov	rax, qword ptr [r15]
.label_895:
	mov	r10, qword ptr [rsp + 8]
	mov	r9, qword ptr [rsp + 0x18]
	mov	edx, dword ptr [rsp + 0x58]
	lea	rsi, [rcx + 1]
	mov	qword ptr [r15 + 0x28], rsi
	mov	dword ptr [rax + rcx*4], edx
	jmp	.label_737
.label_2496:
	mov	rbp, qword ptr [rsp + 0x58]
	mov	rdi, rbp
	call	strlen
	cmp	rax, 1
	je	.label_748
	jmp	.label_749
.label_967:
	mov	rax, qword ptr [rsp + 0x58]
	mov	al, byte ptr [rax]
	jmp	.label_874
.label_820:
	xor	eax, eax
.label_874:
	cmp	r15d, 3
	je	.label_900
	test	r15d, r15d
	jne	.label_928
	mov	bl, byte ptr [rsp + 0xa0]
	jmp	.label_759
.label_900:
	mov	rcx, qword ptr [rsp + 0xa0]
	mov	bl, byte ptr [rcx]
	jmp	.label_759
.label_928:
	xor	ebx, ebx
.label_759:
	cmp	ebp, 3
	je	.label_945
	test	ebp, ebp
	jne	.label_766
.label_945:
	test	r12, r12
	movzx	edx, al
	je	.label_949
	mov	edi, edx
	call	btowc
	mov	r9, qword ptr [rsp + 0x18]
	mov	r10, qword ptr [rsp + 8]
	mov	edx, eax
	jmp	.label_949
.label_766:
	mov	edx, dword ptr [rsp + 0x58]
.label_949:
	cmp	r15d, 3
	je	.label_773
	test	r15d, r15d
	jne	.label_774
.label_773:
	test	r12, r12
	movzx	eax, bl
	je	.label_634
	mov	edi, eax
	mov	ebx, edx
	call	btowc
	mov	edx, ebx
	mov	r9, qword ptr [rsp + 0x18]
	mov	r10, qword ptr [rsp + 8]
	jmp	.label_634
.label_774:
	mov	eax, dword ptr [rsp + 0xa0]
.label_634:
	mov	rbx, qword ptr [rsp + 0x20]
	cmp	edx, -1
	mov	ecx, 3
	je	.label_617
	cmp	eax, -1
	je	.label_617
	cmp	qword ptr [rsp + 0x38], 0
	je	.label_793
	cmp	edx, eax
	mov	ecx, 0xb
	ja	.label_617
.label_793:
	test	r12, r12
	je	.label_799
	mov	rsi, qword ptr [r12 + 0x40]
	cmp	qword ptr [rsp + 0x60], rsi
	je	.label_801
	mov	rdi, qword ptr [r12 + 8]
	mov	rbp, qword ptr [r12 + 0x10]
.label_862:
	mov	dword ptr [rdi + rsi*4], edx
	lea	rcx, [rsi + 1]
	mov	qword ptr [r12 + 0x40], rcx
	mov	dword ptr [rbp + rsi*4], eax
.label_799:
	mov	r15, qword ptr [rsp + 0x30]
	mov	eax, eax
	mov	edx, edx
	xor	ecx, ecx
	mov	r12, qword ptr [rsp + 0x48]
	nop	dword ptr [rax]
.label_824:
	cmp	rdx, rcx
	ja	.label_757
	cmp	rcx, rax
	ja	.label_757
	mov	esi, 1
	shl	rsi, cl
	mov	rdi, rcx
	sar	rdi, 0x3f
	shr	rdi, 0x3a
	add	rdi, rcx
	sar	rdi, 6
	or	qword ptr [r14 + rdi*8], rsi
.label_757:
	inc	rcx
	cmp	rcx, 0x100
	jne	.label_824
	mov	dword ptr [r12], 0
	jmp	.label_737
.label_732:
	mov	rax, qword ptr [rsp + 0x68]
	lea	rax, [rax + rax]
	mov	rdi, qword ptr [r15]
	lea	rsi, [rax*4 + 4]
	call	realloc
	test	rax, rax
	je	.label_746
	mov	rcx, qword ptr [rsp + 0x68]
	lea	rcx, [rcx + rcx + 1]
	mov	qword ptr [rsp + 0x68], rcx
	mov	r15, qword ptr [rsp + 0x30]
	mov	qword ptr [r15], rax
	mov	rcx, qword ptr [r15 + 0x28]
	mov	rbx, qword ptr [rsp + 0x20]
	jmp	.label_895
.label_801:
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
	je	.label_859
	test	rbp, rbp
	je	.label_859
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
	jmp	.label_862
.label_709:
	mov	rdi, qword ptr [rsp + 8]
	mov	rsi, qword ptr [rsp + 0x10]
	mov	rdx, rbx
	call	peek_token_bracket
	mov	r13d, eax
	mov	ebp, dword ptr [rsp + 0x50]
	cmp	ebp, 2
	je	.label_760
	cmp	ebp, 4
	jne	.label_897
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
	je	.label_737
	jmp	.label_721
.label_897:
	mov	rax, qword ptr [rsp + 8]
	mov	al, byte ptr [rax + 8]
	cmp	al, 0x16
	mov	rsi, qword ptr [rsp + 0x10]
	je	.label_964
	cmp	al, 2
	jne	.label_915
	jmp	.label_916
.label_964:
	movsxd	rax, r13d
	add	qword ptr [rsi + 0x48], rax
	lea	rdi, [rsp + 0xb0]
	mov	rdx, rbx
	mov	r15, rsi
	call	peek_token_bracket
	mov	cl, byte ptr [rsp + 0xb8]
	cmp	cl, 0x15
	je	.label_877
	cmp	cl, 2
	je	.label_904
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
	jne	.label_992
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
	je	.label_617
	cmp	r15d, 4
	je	.label_617
	cmp	ebp, 3
	mov	r10, qword ptr [rsp + 8]
	jne	.label_625
	mov	rdi, qword ptr [rsp + 0x58]
	call	strlen
	mov	r9, qword ptr [rsp + 0x18]
	mov	r10, qword ptr [rsp + 8]
	mov	ecx, 3
	cmp	rax, 1
	ja	.label_617
.label_625:
	cmp	r15d, 3
	jne	.label_960
	mov	rdi, qword ptr [rsp + 0xa0]
	call	strlen
	mov	r9, qword ptr [rsp + 0x18]
	mov	r10, qword ptr [rsp + 8]
	mov	ecx, 3
	cmp	rax, 1
	ja	.label_617
.label_960:
	cmp	ebp, 3
	je	.label_967
	test	ebp, ebp
	jne	.label_820
	mov	al, byte ptr [rsp + 0x58]
	jmp	.label_874
.label_877:
	mov	eax, r13d
	neg	eax
	cdqe	
	add	qword ptr [r15 + 0x48], rax
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + 8], 1
	mov	r15, qword ptr [rsp + 0x30]
.label_915:
	mov	eax, ebp
	cmp	ebp, 3
	ja	.label_714
	jmp	qword ptr [(rax * 8) + label_980]
.label_2494:
	mov	cl, byte ptr [rsp + 0x58]
	mov	eax, 1
	shl	rax, cl
	shr	cl, 6
	movzx	ecx, cl
	or	qword ptr [r14 + rcx*8], rax
	jmp	.label_981
.label_760:
	mov	rbp, qword ptr [rsp + 0x58]
	mov	rdi, rbp
	call	strlen
	cmp	rax, 1
	jne	.label_990
.label_748:
	mov	cl, byte ptr [rbp]
	mov	eax, 1
	shl	rax, cl
	shr	cl, 6
	movzx	ecx, cl
	or	qword ptr [r14 + rcx*8], rax
	mov	dword ptr [r12], 0
.label_981:
	mov	r10, qword ptr [rsp + 8]
	mov	r9, qword ptr [rsp + 0x18]
.label_737:
	mov	al, byte ptr [r10 + 8]
	cmp	al, 0x15
	jne	.label_997
	movsxd	rax, r13d
	mov	rcx, qword ptr [rsp + 0x10]
	add	qword ptr [rcx + 0x48], rax
	mov	eax, dword ptr [rsp + 0x28]
	test	al, al
	je	.label_1001
	movdqu	xmm0, xmmword ptr [r14]
	pcmpeqd	xmm1, xmm1
	pxor	xmm0, xmm1
	movdqu	xmmword ptr [r14], xmm0
	movdqu	xmm0, xmmword ptr [r14 + 0x10]
	pxor	xmm0, xmm1
	movdqu	xmmword ptr [r14 + 0x10], xmm0
.label_1001:
	mov	eax, dword ptr [r9 + 0xb4]
	cmp	eax, 2
	jl	.label_1011
	mov	rcx, qword ptr [r9 + 0x78]
	mov	rdx, qword ptr [rcx]
	and	qword ptr [r14], rdx
	mov	rdx, qword ptr [rcx + 8]
	and	qword ptr [r14 + 8], rdx
	mov	rdx, qword ptr [rcx + 0x10]
	and	qword ptr [r14 + 0x10], rdx
	mov	rcx, qword ptr [rcx + 0x18]
	and	qword ptr [r14 + 0x18], rcx
.label_1011:
	cmp	qword ptr [r15 + 0x28], 0
	jne	.label_695
	cmp	qword ptr [r15 + 0x30], 0
	jne	.label_695
	cmp	qword ptr [r15 + 0x38], 0
	jne	.label_695
	cmp	qword ptr [r15 + 0x40], 0
	jne	.label_695
	cmp	eax, 2
	jl	.label_1031
	cmp	qword ptr [r15 + 0x48], 0
	jne	.label_695
	test	byte ptr [r15 + 0x20], 1
	jne	.label_695
.label_1031:
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
	je	.label_1019
	mov	rax, qword ptr [rsi + 0x70]
.label_908:
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
	jmp	.label_719
.label_695:
	or	byte ptr [r9 + 0xb0], 2
	mov	ecx, dword ptr [r9 + 0x80]
	cmp	ecx, 0xf
	je	.label_950
	mov	rax, qword ptr [r9 + 0x70]
.label_883:
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
	jne	.label_605
	cmp	qword ptr [r14 + 8], 0
	jne	.label_605
	cmp	qword ptr [r14 + 0x10], 0
	jne	.label_605
	cmp	qword ptr [r14 + 0x18], 0
	je	.label_630
.label_605:
	mov	eax, dword ptr [r9 + 0x80]
	cmp	eax, 0xf
	je	.label_610
	mov	rbp, qword ptr [r9 + 0x70]
	mov	r8, qword ptr [rsp + 0x10]
.label_763:
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
	je	.label_621
	mov	rax, qword ptr [r9 + 0x70]
.label_720:
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
.label_673:
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
.label_1360:
	movzx	eax, byte ptr [rdi + 8]
	cmp	al, 0x17
	ja	.label_698
	mov	ecx, 0x8c0800
	bt	rcx, rax
	jae	.label_698
	mov	r14, qword ptr [r8 + 0x48]
	movdqu	xmm0, xmmword ptr [rdi]
	movdqa	xmmword ptr [rsp + 0xc0], xmm0
	cmp	eax, 0x17
	mov	qword ptr [rsp + 0x28], r15
	jne	.label_706
	mov	rsi, -1
	jmp	.label_710
	nop	word ptr cs:[rax + rax]
.label_706:
	xor	r13d, r13d
	cmp	eax, 0x12
	sete	r13b
	cmp	eax, 0x13
	mov	r15, -1
	mov	eax, 1
	cmove	r15, rax
.label_917:
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
	je	.label_924
	mov	rax, r15
	mov	r11, r13
	or	rax, r11
	je	.label_1328
	test	r11, r11
	mov	eax, 0
	mov	qword ptr [rsp + 0x38], rax
	mov	r12, r9
	mov	rdi, qword ptr [rsp + 8]
	jg	.label_1401
.label_1409:
	cmp	byte ptr [r12 + 0x30], 0x11
	jne	.label_1378
	mov	rax, qword ptr [r12 + 0x28]
	mov	rdx, r12
	nop	
.label_1278:
	mov	rcx, rdx
	mov	rdx, qword ptr [rcx + 8]
	test	rdx, rdx
	jne	.label_1278
	mov	rdx, qword ptr [rcx + 0x10]
	test	rdx, rdx
	jne	.label_1278
	nop	word ptr cs:[rax + rax]
.label_1300:
	mov	edx, dword ptr [rcx + 0x30]
	cmp	dl, 0x11
	jne	.label_1290
	cmp	qword ptr [rcx + 0x28], rax
	jne	.label_1290
	or	edx, 0x80000
	mov	dword ptr [rcx + 0x30], edx
.label_1290:
	mov	rsi, qword ptr [rcx]
	test	rsi, rsi
	je	.label_1378
	mov	rdx, qword ptr [rsi + 0x10]
	cmp	rdx, rcx
	mov	rcx, rsi
	je	.label_1300
	test	rdx, rdx
	mov	rcx, rsi
	je	.label_1300
	jmp	.label_1278
	nop	word ptr cs:[rax + rax]
.label_1378:
	xor	ebx, ebx
	cmp	r15, -1
	sete	r14b
	mov	ecx, dword ptr [rbp + 0x80]
	cmp	ecx, 0xf
	je	.label_1313
	mov	rax, qword ptr [rbp + 0x70]
.label_1408:
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
	je	.label_1320
	mov	qword ptr [r12], r14
.label_1320:
	add	r11, 2
	cmp	r11, r15
	jg	.label_1342
	mov	qword ptr [rsp + 0x30], r15
	jmp	.label_1285
.label_836:
	lea	rax, [r13 + r13*4]
	lea	rax, [rcx + rax*2 - 0x30]
	cmp	rax, 0x8000
	mov	esi, 0x8000
	cmovle	rsi, rax
	nop	dword ptr [rax + rax]
.label_710:
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
	je	.label_819
	cmp	al, 2
	mov	r9, qword ptr [rsp + 0x28]
	je	.label_782
	mov	sil, 0x2c
	cmp	dl, 0x2c
	mov	ebx, eax
	je	.label_977
	cmp	dl, 0x30
	mov	rsi, -2
	mov	rbx, qword ptr [rsp + 0x20]
	jb	.label_710
	cmp	eax, 1
	jne	.label_710
	cmp	r13, -2
	je	.label_710
	cmp	dl, 0x39
	ja	.label_710
	cmp	r13, -1
	jne	.label_836
	add	rcx, -0x30
	mov	rsi, rcx
	jmp	.label_710
	nop	dword ptr [rax]
.label_819:
	mov	esi, edx
	mov	r9, qword ptr [rsp + 0x28]
.label_977:
	cmp	r13, -1
	jne	.label_943
	cmp	sil, 0x2c
	jne	.label_911
	cmp	eax, 1
	mov	r13d, 0
	je	.label_849
	jmp	.label_911
	nop	word ptr [rax + rax]
.label_943:
	cmp	r13, -2
	je	.label_782
.label_849:
	cmp	bl, 0x18
	je	.label_1000
	cmp	bl, 1
	jne	.label_782
	cmp	sil, 0x2c
	mov	rbx, qword ptr [rsp + 0x20]
	jne	.label_782
	mov	rdx, -1
	jmp	.label_733
.label_1000:
	mov	r15, r13
	mov	rbx, qword ptr [rsp + 0x20]
	jmp	.label_1053
.label_728:
	lea	rax, [r15 + r15*4]
	lea	rdx, [rcx + rax*2 - 0x30]
	cmp	rdx, 0x8000
	mov	eax, 0x8000
	cmovg	rdx, rax
	nop	word ptr cs:[rax + rax]
.label_733:
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
	je	.label_723
	cmp	al, 2
	je	.label_782
	cmp	cl, 0x2c
	je	.label_723
	cmp	cl, 0x30
	mov	rdx, -2
	jb	.label_733
	cmp	eax, 1
	jne	.label_733
	cmp	r15, -2
	je	.label_733
	cmp	cl, 0x39
	ja	.label_733
	cmp	r15, -1
	jne	.label_728
	add	rcx, -0x30
	mov	rdx, rcx
	jmp	.label_733
.label_723:
	cmp	r15, -2
	je	.label_782
.label_1053:
	cmp	r15, -1
	sete	cl
	cmp	r13, r15
	setle	dl
	or	dl, cl
	cmp	dl, 1
	jne	.label_911
	cmp	eax, 0x18
	jne	.label_911
	cmp	r15, -1
	mov	rax, r15
	cmove	rax, r13
	cmp	rax, 0x8000
	jl	.label_917
	mov	dword ptr [r12], 0xf
	jmp	.label_807
	nop	dword ptr [rax]
.label_911:
	mov	dword ptr [r12], 0xa
	jmp	.label_807
.label_782:
	cmp	qword ptr [rsp + 0x60], 0
	je	.label_922
	mov	qword ptr [r8 + 0x48], r14
	movdqa	xmm0, xmmword ptr [rsp + 0xc0]
	movdqu	xmmword ptr [rdi], xmm0
	mov	byte ptr [rdi + 8], 1
	mov	rcx, r9
	jmp	.label_924
.label_1286:
	mov	qword ptr [rsp + 0x40], r11
	mov	edi, 0x3c8
	call	malloc
	test	rax, rax
	je	.label_1359
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
	jmp	.label_1362
.label_1399:
	mov	qword ptr [rsp + 0x40], r11
	mov	r12, r15
	mov	r15, qword ptr [rsp + 0x30]
	jmp	.label_1379
.label_1279:
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
	je	.label_1349
	mov	rcx, qword ptr [rbp + 0x70]
	mov	qword ptr [rax], rcx
	mov	qword ptr [rbp + 0x70], rax
	mov	dword ptr [rbp + 0x80], 0
	xor	ecx, ecx
	jmp	.label_1391
.label_1359:
	mov	qword ptr [rsp + 0x70], 0
	jmp	.label_1396
.label_1381:
	mov	qword ptr [rbx], 0
	mov	r15, qword ptr [rsp + 0x30]
.label_1396:
	xor	r12d, r12d
.label_1379:
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
	je	.label_1349
	mov	rcx, qword ptr [rbp + 0x70]
	mov	qword ptr [rax], rcx
	mov	qword ptr [rbp + 0x70], rax
	mov	dword ptr [rbp + 0x80], 0
	xor	ecx, ecx
	jmp	.label_1406
	nop	dword ptr [rax + rax]
.label_1285:
	mov	r13, qword ptr [r12]
	mov	ecx, dword ptr [rbp + 0x80]
	cmp	ecx, 0xf
	je	.label_1286
	mov	rax, qword ptr [rbp + 0x70]
.label_1362:
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
	jmp	.label_1297
	nop	dword ptr [rax + rax]
.label_1383:
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
.label_1297:
	mov	qword ptr [rcx], r13
	mov	rax, qword ptr [rbx]
	or	dword ptr [rax + 0x30], 0x40000
	mov	r13, qword ptr [rbx]
	mov	rax, qword ptr [r12 + 8]
	test	rax, rax
	je	.label_1346
	lea	rbx, [r13 + 8]
	mov	r12, rax
	jmp	.label_1353
	nop	dword ptr [rax]
.label_1346:
	xor	eax, eax
	nop	word ptr cs:[rax + rax]
.label_1355:
	mov	rcx, rax
	mov	rax, r12
	mov	r12, qword ptr [rax + 0x10]
	cmp	r12, rcx
	je	.label_1363
	test	r12, r12
	jne	.label_1367
.label_1363:
	mov	r12, qword ptr [rax]
	mov	r13, qword ptr [r13]
	test	r12, r12
	jne	.label_1355
	jmp	.label_1373
.label_1367:
	lea	rbx, [r13 + 0x10]
.label_1353:
	mov	ecx, dword ptr [rbp + 0x80]
	cmp	ecx, 0xf
	je	.label_1374
	mov	rax, qword ptr [rbp + 0x70]
	jmp	.label_1383
.label_1374:
	mov	qword ptr [rsp + 0x40], r11
	mov	edi, 0x3c8
	call	malloc
	test	rax, rax
	je	.label_1381
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
	jmp	.label_1383
.label_1373:
	mov	ecx, dword ptr [rbp + 0x80]
	cmp	ecx, 0xf
	je	.label_1399
	mov	rax, qword ptr [rbp + 0x70]
	mov	r12, r15
	mov	r15, qword ptr [rsp + 0x30]
.label_1406:
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
	je	.label_1349
	mov	qword ptr [r12], rbx
	mov	ecx, dword ptr [rbp + 0x80]
	cmp	ecx, 0xf
	je	.label_1279
	mov	rax, qword ptr [rbp + 0x70]
.label_1391:
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
	jl	.label_1285
.label_1342:
	mov	rbx, qword ptr [rsp + 0x38]
	test	rbx, rbx
	je	.label_1317
	mov	ecx, dword ptr [rbp + 0x80]
	cmp	ecx, 0xf
	mov	r12, qword ptr [rsp + 0x48]
	je	.label_1318
	mov	rax, qword ptr [rbp + 0x70]
.label_1390:
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
	jmp	.label_1327
.label_1317:
	mov	r12, qword ptr [rsp + 0x48]
.label_1327:
	mov	rbx, qword ptr [rsp + 0x20]
	xor	eax, eax
	mov	rcx, r14
	jmp	.label_1348
.label_1328:
	mov	rax, r9
	nop	word ptr cs:[rax + rax]
.label_1357:
	mov	rbx, rax
	mov	rax, qword ptr [rbx + 8]
	test	rax, rax
	jne	.label_1357
	mov	rax, qword ptr [rbx + 0x10]
	test	rax, rax
	jne	.label_1357
.label_1389:
	mov	eax, dword ptr [rbx + 0x30]
	mov	ecx, 0x400ff
	and	eax, ecx
	cmp	eax, 3
	je	.label_1366
	cmp	eax, 6
	jne	.label_1368
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
	jmp	.label_1380
.label_1366:
	mov	rdi, qword ptr [rbx + 0x28]
.label_1380:
	call	free
	mov	r9, qword ptr [rsp + 0x28]
	mov	r8, qword ptr [rsp + 0x10]
.label_1368:
	mov	rdx, qword ptr [rbx]
	test	rdx, rdx
	mov	ecx, 0
	je	.label_924
	mov	rax, qword ptr [rdx + 0x10]
	cmp	rax, rbx
	mov	rbx, rdx
	je	.label_1389
	test	rax, rax
	mov	rbx, rdx
	je	.label_1389
	jmp	.label_1357
.label_1401:
	cmp	r11, 1
	mov	rax, r9
	mov	qword ptr [rsp + 0x38], rax
	mov	r12, r9
	je	.label_1393
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp + 0x38], rax
	mov	r12, r9
	mov	r14d, 2
	mov	rax, r9
	mov	qword ptr [rsp + 0x30], r15
	jmp	.label_1369
.label_1313:
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
	je	.label_1349
	mov	rcx, qword ptr [rbp + 0x70]
	mov	qword ptr [rax], rcx
	mov	qword ptr [rbp + 0x70], rax
	mov	dword ptr [rbp + 0x80], 0
	xor	ecx, ecx
	jmp	.label_1408
.label_1318:
	mov	edi, 0x3c8
	call	malloc
	pxor	xmm1, xmm1
	mov	r9, qword ptr [rsp + 0x28]
	mov	rbp, qword ptr [rsp + 0x18]
	mov	r8, qword ptr [rsp + 0x10]
	test	rax, rax
	mov	ecx, 0
	je	.label_924
	mov	rcx, qword ptr [rbp + 0x70]
	mov	qword ptr [rax], rcx
	mov	qword ptr [rbp + 0x70], rax
	mov	dword ptr [rbp + 0x80], 0
	xor	ecx, ecx
	mov	rdi, qword ptr [rsp + 8]
	jmp	.label_1390
.label_922:
	xor	ecx, ecx
	cmp	al, 2
	setne	cl
	add	ecx, 9
	mov	dword ptr [r12], ecx
	jmp	.label_807
.label_1372:
	mov	edi, 0x3c8
	call	malloc
	test	rax, rax
	je	.label_1321
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
	jmp	.label_1323
.label_1337:
	mov	r12, rbx
	jmp	.label_1339
.label_1321:
	mov	qword ptr [rsp + 0x70], 0
	jmp	.label_1341
.label_1334:
	mov	qword ptr [r15], 0
.label_1341:
	xor	r12d, r12d
.label_1339:
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
	je	.label_1349
	mov	rcx, qword ptr [rbp + 0x70]
	mov	qword ptr [rax], rcx
	mov	qword ptr [rbp + 0x70], rax
	mov	dword ptr [rbp + 0x80], 0
	xor	ecx, ecx
	jmp	.label_1364
.label_1369:
	mov	ecx, dword ptr [rbp + 0x80]
	cmp	ecx, 0xf
	mov	qword ptr [rsp + 0x40], rax
	je	.label_1372
	mov	rax, qword ptr [rbp + 0x70]
.label_1323:
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
	jmp	.label_1395
.label_1312:
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
.label_1395:
	mov	rax, qword ptr [rsp + 0x38]
	mov	qword ptr [rcx], rax
	mov	rax, qword ptr [r15]
	or	dword ptr [rax + 0x30], 0x40000
	mov	rcx, qword ptr [r15]
	mov	rax, qword ptr [r12 + 8]
	test	rax, rax
	mov	qword ptr [rsp + 0x38], rcx
	je	.label_1403
	lea	r15, [rcx + 8]
	mov	r12, rax
	jmp	.label_1280
.label_1403:
	xor	eax, eax
	mov	r15, qword ptr [rsp + 0x30]
	nop	word ptr [rax + rax]
.label_1294:
	mov	rcx, rax
	mov	rax, r12
	mov	r12, qword ptr [rax + 0x10]
	cmp	r12, rcx
	je	.label_1332
	test	r12, r12
	jne	.label_1292
.label_1332:
	mov	r12, qword ptr [rax]
	mov	rcx, qword ptr [rsp + 0x38]
	mov	rcx, qword ptr [rcx]
	mov	qword ptr [rsp + 0x38], rcx
	test	r12, r12
	jne	.label_1294
	jmp	.label_1397
.label_1292:
	mov	rax, qword ptr [rsp + 0x38]
	lea	r15, [rax + 0x10]
.label_1280:
	mov	ecx, dword ptr [rbp + 0x80]
	cmp	ecx, 0xf
	je	.label_1308
	mov	rax, qword ptr [rbp + 0x70]
	jmp	.label_1312
.label_1308:
	mov	edi, 0x3c8
	call	malloc
	test	rax, rax
	je	.label_1334
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
	jmp	.label_1312
.label_1397:
	mov	ecx, dword ptr [rbp + 0x80]
	cmp	ecx, 0xf
	je	.label_1337
	mov	rax, qword ptr [rbp + 0x70]
	mov	r12, rbx
.label_1364:
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
	je	.label_1344
	mov	qword ptr [rbx], rdx
.label_1344:
	mov	qword ptr [rsp + 0x38], rdx
	test	r12, r12
	je	.label_1349
	mov	rax, qword ptr [rsp + 0x38]
	mov	qword ptr [r12], rax
	cmp	r14, r11
	lea	r14, [r14 + 1]
	jl	.label_1369
.label_1393:
	cmp	r11, r15
	jne	.label_1376
	mov	rcx, qword ptr [rsp + 0x38]
	mov	r12, qword ptr [rsp + 0x48]
	jmp	.label_924
.label_1376:
	mov	r14, qword ptr [r12]
	mov	ecx, dword ptr [rbp + 0x80]
	cmp	ecx, 0xf
	mov	qword ptr [rsp + 0x30], r15
	je	.label_1316
	mov	rax, qword ptr [rbp + 0x70]
.label_1345:
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
	jmp	.label_1384
.label_1314:
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
.label_1384:
	mov	qword ptr [rcx], r14
	mov	rax, qword ptr [r15]
	or	dword ptr [rax + 0x30], 0x40000
	mov	r14, qword ptr [r15]
	mov	rax, qword ptr [rbx + 8]
	test	rax, rax
	je	.label_1281
	lea	r15, [r14 + 8]
	mov	rbx, rax
	jmp	.label_1289
.label_1281:
	xor	eax, eax
	mov	r15, qword ptr [rsp + 0x30]
.label_1306:
	mov	rcx, rax
	mov	rax, rbx
	mov	rbx, qword ptr [rax + 0x10]
	cmp	rbx, rcx
	je	.label_1296
	test	rbx, rbx
	jne	.label_1302
.label_1296:
	mov	rbx, qword ptr [rax]
	mov	r14, qword ptr [r14]
	test	rbx, rbx
	jne	.label_1306
	jmp	.label_1409
.label_1302:
	lea	r15, [r14 + 0x10]
.label_1289:
	mov	ecx, dword ptr [rbp + 0x80]
	cmp	ecx, 0xf
	je	.label_1311
	mov	rax, qword ptr [rbp + 0x70]
	jmp	.label_1314
.label_1311:
	mov	edi, 0x3c8
	call	malloc
	test	rax, rax
	je	.label_1319
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
	jmp	.label_1314
.label_1316:
	mov	edi, 0x3c8
	call	malloc
	test	rax, rax
	je	.label_1340
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
	jmp	.label_1345
.label_1340:
	mov	qword ptr [rsp + 0x70], 0
	jmp	.label_1305
.label_1319:
	mov	qword ptr [r15], 0
.label_1305:
	mov	r8, qword ptr [rsp + 0x10]
	mov	r9, qword ptr [rsp + 0x28]
.label_1349:
	mov	r12, qword ptr [rsp + 0x48]
	mov	dword ptr [r12], 0xc
.label_807:
	xor	ecx, ecx
.label_924:
	test	rcx, rcx
	sete	al
	jne	.label_1375
	mov	edx, dword ptr [r12]
	test	edx, edx
	mov	rbx, qword ptr [rsp + 0x20]
	mov	rdi, qword ptr [rsp + 8]
	je	.label_1348
	jmp	.label_1405
	nop	word ptr cs:[rax + rax]
.label_1375:
	mov	rbx, qword ptr [rsp + 0x20]
	mov	rdi, qword ptr [rsp + 8]
.label_1348:
	cmp	qword ptr [rsp + 0x68], 0
	mov	r15, rcx
	je	.label_1360
	mov	dl, byte ptr [rdi + 8]
	cmp	dl, 0x17
	je	.label_1388
	cmp	dl, 0xb
	mov	r15, rcx
	jne	.label_1360
.label_1388:
	test	al, al
	jne	.label_1057
	mov	r14d, 0x400ff
	nop	dword ptr [rax + rax]
.label_1350:
	mov	rbp, rcx
	mov	rcx, qword ptr [rbp + 8]
	test	rcx, rcx
	jne	.label_1350
	mov	rcx, qword ptr [rbp + 0x10]
	test	rcx, rcx
	jne	.label_1350
	nop	word ptr cs:[rax + rax]
.label_1283:
	mov	eax, dword ptr [rbp + 0x30]
	and	eax, r14d
	cmp	eax, 3
	je	.label_1398
	cmp	eax, 6
	jne	.label_1400
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
	jmp	.label_1407
	nop	dword ptr [rax]
.label_1398:
	mov	rdi, qword ptr [rbp + 0x28]
.label_1407:
	call	free
.label_1400:
	mov	rax, qword ptr [rbp]
	test	rax, rax
	je	.label_1057
	mov	rcx, qword ptr [rax + 0x10]
	cmp	rcx, rbp
	mov	rbp, rax
	je	.label_1283
	test	rcx, rcx
	mov	rbp, rax
	je	.label_1283
	jmp	.label_1350
.label_1057:
	mov	dword ptr [r12], 0xd
.label_651:
	xor	r15d, r15d
.label_698:
	mov	rax, r15
	add	rsp, 0xe8
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_1024:
	mov	dword ptr [r10], 5
	mov	r15, rdi
	sub	r15, -0x80
	mov	r14d, dword ptr [rdi + 0x80]
	cmp	r14d, 0xf
	je	.label_635
	mov	rax, qword ptr [rdi + 0x70]
.label_1007:
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
.label_1036:
	mov	dword ptr [r10], ecx
	mov	ebp, dword ptr [r15]
	cmp	ebp, 0xf
	je	.label_669
	mov	rax, qword ptr [rdi + 0x70]
.label_948:
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
.label_941:
	mov	ecx, dword ptr [r15]
	cmp	ecx, 0xf
	je	.label_692
	mov	rax, qword ptr [rdi + 0x70]
.label_954:
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
	je	.label_665
	mov	qword ptr [r14], r15
.label_665:
	test	rbp, rbp
	je	.label_641
	mov	qword ptr [rbp], r15
	test	r14, r14
	jne	.label_753
	jmp	.label_641
.label_1027:
	mov	ecx, dword ptr [rdi + 0x80]
	cmp	ecx, 0xf
	je	.label_718
	mov	rax, qword ptr [rdi + 0x70]
.label_1021:
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
.label_753:
	mov	rdi, r10
	mov	rsi, r8
	mov	rdx, rbx
	mov	rbx, r8
	call	peek_token
	cdqe	
	add	qword ptr [rbx + 0x48], rax
	jmp	.label_698
.label_800:
	mov	rbp, r14
	jmp	.label_673
.label_1405:
	xor	r15d, r15d
	test	r9, r9
	je	.label_698
	mov	r14d, 0x400ff
	xor	r15d, r15d
	nop	word ptr cs:[rax + rax]
.label_1291:
	mov	rbx, r9
	mov	r9, qword ptr [rbx + 8]
	test	r9, r9
	jne	.label_1291
	mov	r9, qword ptr [rbx + 0x10]
	test	r9, r9
	jne	.label_1291
.label_1324:
	mov	eax, dword ptr [rbx + 0x30]
	and	eax, r14d
	cmp	eax, 3
	je	.label_1295
	cmp	eax, 6
	jne	.label_1301
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
	jmp	.label_1315
.label_1295:
	mov	rdi, qword ptr [rbx + 0x28]
.label_1315:
	call	free
.label_1301:
	mov	rax, qword ptr [rbx]
	test	rax, rax
	je	.label_698
	mov	r9, qword ptr [rax + 0x10]
	cmp	r9, rbx
	mov	rbx, rax
	je	.label_1324
	test	r9, r9
	mov	rbx, rax
	je	.label_1324
	jmp	.label_1291
.label_630:
	mov	rdi, r14
	call	free
	mov	r10, qword ptr [rsp + 8]
	mov	rbp, r15
	mov	r8, qword ptr [rsp + 0x10]
	jmp	.label_673
.label_708:
	mov	dword ptr [r12], eax
	jmp	.label_721
.label_715:
	mov	dword ptr [r12], 7
	jmp	.label_721
.label_1068:
	mov	edi, 0x3c8
	call	malloc
	test	rax, rax
	je	.label_641
	mov	rdi, qword ptr [rsp + 0x18]
	mov	rcx, qword ptr [rdi + 0x70]
	mov	qword ptr [rax], rcx
	mov	qword ptr [rdi + 0x70], rax
	mov	dword ptr [rdi + 0x80], 0
	xor	ecx, ecx
	mov	rbx, qword ptr [rsp + 0x20]
	mov	r8, qword ptr [rsp + 0x10]
	mov	r10, qword ptr [rsp + 8]
	jmp	.label_818
.label_643:
	mov	dword ptr [r12], 2
	jmp	.label_721
.label_768:
	mov	edi, 0x3c8
	call	malloc
	test	rax, rax
	je	.label_641
	mov	rdi, qword ptr [rsp + 0x18]
	mov	rcx, qword ptr [rdi + 0x70]
	mov	qword ptr [rax], rcx
	mov	qword ptr [rdi + 0x70], rax
	mov	dword ptr [rdi + 0x80], 0
	xor	ecx, ecx
	mov	rbx, qword ptr [rsp + 0x20]
	mov	r8, qword ptr [rsp + 0x10]
	mov	r10, qword ptr [rsp + 8]
	jmp	.label_826
.label_902:
	mov	dword ptr [r12], 6
	jmp	.label_651
.label_931:
	mov	edi, 0x3c8
	call	malloc
	test	rax, rax
	je	.label_641
	mov	rdi, qword ptr [rsp + 0x18]
	mov	rcx, qword ptr [rdi + 0x70]
	mov	qword ptr [rax], rcx
	mov	qword ptr [rdi + 0x70], rax
	mov	dword ptr [rdi + 0x80], 0
	xor	ecx, ecx
	mov	rbx, qword ptr [rsp + 0x20]
	mov	r8, qword ptr [rsp + 0x10]
	mov	r10, qword ptr [rsp + 8]
	jmp	.label_840
.label_618:
	mov	rdi, r14
	call	free
	mov	rdi, r15
	call	free
	jmp	.label_641
.label_912:
	mov	edi, 0x3c8
	call	malloc
	test	rax, rax
	je	.label_641
	mov	rdi, qword ptr [rsp + 0x18]
	mov	rcx, qword ptr [rdi + 0x70]
	mov	qword ptr [rax], rcx
	mov	qword ptr [rdi + 0x70], rax
	mov	dword ptr [rdi + 0x80], 0
	xor	ecx, ecx
	mov	rbx, qword ptr [rsp + 0x20]
	mov	r8, qword ptr [rsp + 0x10]
	mov	r10, qword ptr [rsp + 8]
	jmp	.label_863
.label_950:
	mov	edi, 0x3c8
	call	malloc
	test	rax, rax
	je	.label_746
	mov	r9, qword ptr [rsp + 0x18]
	mov	rcx, qword ptr [r9 + 0x70]
	mov	qword ptr [rax], rcx
	mov	qword ptr [r9 + 0x70], rax
	mov	dword ptr [r9 + 0x80], 0
	xor	ecx, ecx
	mov	rbx, qword ptr [rsp + 0x20]
	mov	r10, qword ptr [rsp + 8]
	jmp	.label_883
.label_610:
	mov	edi, 0x3c8
	call	malloc
	mov	rbp, rax
	test	rbp, rbp
	je	.label_746
	mov	r9, qword ptr [rsp + 0x18]
	mov	rax, qword ptr [r9 + 0x70]
	mov	qword ptr [rbp], rax
	mov	qword ptr [r9 + 0x70], rbp
	mov	dword ptr [r9 + 0x80], 0
	xor	eax, eax
	mov	r8, qword ptr [rsp + 0x10]
	mov	r10, qword ptr [rsp + 8]
	jmp	.label_763
.label_621:
	mov	edi, 0x3c8
	call	malloc
	test	rax, rax
	je	.label_746
	mov	r9, qword ptr [rsp + 0x18]
	mov	rcx, qword ptr [r9 + 0x70]
	mov	qword ptr [rax], rcx
	mov	qword ptr [r9 + 0x70], rax
	mov	dword ptr [r9 + 0x80], 0
	xor	ecx, ecx
	mov	r8, qword ptr [rsp + 0x10]
	mov	r10, qword ptr [rsp + 8]
	jmp	.label_720
.label_990:
	mov	dword ptr [r12], 3
	jmp	.label_721
.label_984:
	mov	rbp, rdi
	mov	edi, 0x3c8
	call	malloc
	test	rax, rax
	je	.label_641
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
	jmp	.label_929
.label_669:
	mov	edi, 0x3c8
	call	malloc
	mov	rdi, qword ptr [rsp + 0x18]
	mov	r10, qword ptr [rsp + 8]
	mov	r8, qword ptr [rsp + 0x10]
	xor	ebp, ebp
	test	rax, rax
	je	.label_941
	mov	rcx, qword ptr [rdi + 0x70]
	mov	qword ptr [rax], rcx
	mov	qword ptr [rdi + 0x70], rax
	mov	dword ptr [r15], 0
	jmp	.label_948
.label_692:
	mov	edi, 0x3c8
	call	malloc
	mov	r10, qword ptr [rsp + 8]
	mov	r8, qword ptr [rsp + 0x10]
	test	rax, rax
	je	.label_641
	mov	rdx, qword ptr [rsp + 0x18]
	mov	rcx, qword ptr [rdx + 0x70]
	mov	qword ptr [rax], rcx
	mov	qword ptr [rdx + 0x70], rax
	mov	dword ptr [r15], 0
	xor	ecx, ecx
	jmp	.label_954
.label_916:
	mov	dword ptr [r12], 7
	jmp	.label_721
.label_711:
	call	__ctype_b_loc
	mov	rdi, qword ptr [rsp + 0x18]
	mov	r10, qword ptr [rsp + 8]
	mov	r8, qword ptr [rsp + 0x10]
	mov	r9, qword ptr [rax]
	inc	r14
.label_985:
	mov	rsi, r14
	xor	eax, eax
.label_983:
	test	byte ptr [r9 + rsi*2 - 2], 8
	je	.label_969
	mov	edx, 1
	mov	ecx, eax
	shl	rdx, cl
	or	qword ptr [rdi + rbp*8 + 0xb8], rdx
.label_969:
	cmp	esi, 0x5f
	je	.label_974
	movzx	ecx, word ptr [r9 + rsi*2]
	and	ecx, 8
	test	cx, cx
	je	.label_976
.label_974:
	lea	ecx, [rax + 1]
	mov	edx, 1
	shl	rdx, cl
	or	qword ptr [rdi + rbp*8 + 0xb8], rdx
.label_976:
	add	rax, 2
	add	rsi, 2
	cmp	rax, 0x40
	jne	.label_983
	inc	rbp
	add	r14, 0x40
	cmp	ebp, 4
	jne	.label_985
	jmp	.label_987
.label_1028:
	mov	edi, 0x3c8
	call	malloc
	mov	ecx, 9
	xor	r14d, r14d
	test	rax, rax
	je	.label_822
	mov	rdi, qword ptr [rsp + 0x18]
	mov	rcx, qword ptr [rdi + 0x70]
	mov	qword ptr [rax], rcx
	mov	qword ptr [rdi + 0x70], rax
	mov	dword ptr [rdi + 0x80], 0
	mov	rbx, qword ptr [rsp + 0x20]
	mov	r8, qword ptr [rsp + 0x10]
	mov	r10, qword ptr [rsp + 8]
	jmp	.label_991
.label_635:
	mov	edi, 0x3c8
	call	malloc
	mov	ecx, 0xa
	xor	r14d, r14d
	test	rax, rax
	je	.label_822
	mov	rdi, qword ptr [rsp + 0x18]
	mov	rcx, qword ptr [rdi + 0x70]
	mov	qword ptr [rax], rcx
	mov	qword ptr [rdi + 0x70], rax
	mov	dword ptr [rdi + 0x80], 0
	mov	rbx, qword ptr [rsp + 0x20]
	mov	r8, qword ptr [rsp + 0x10]
	mov	r10, qword ptr [rsp + 8]
	jmp	.label_1007
.label_718:
	mov	edi, 0x3c8
	call	malloc
	test	rax, rax
	je	.label_641
	mov	rdi, qword ptr [rsp + 0x18]
	mov	rcx, qword ptr [rdi + 0x70]
	mov	qword ptr [rax], rcx
	mov	qword ptr [rdi + 0x70], rax
	mov	dword ptr [rdi + 0x80], 0
	xor	ecx, ecx
	mov	rbx, qword ptr [rsp + 0x20]
	mov	r8, qword ptr [rsp + 0x10]
	mov	r10, qword ptr [rsp + 8]
	jmp	.label_1021
.label_641:
	mov	dword ptr [r12], 0xc
	jmp	.label_651
.label_904:
	mov	dword ptr [r12], 7
	jmp	.label_608
.label_822:
	mov	rbx, qword ptr [rsp + 0x20]
	mov	r8, qword ptr [rsp + 0x10]
	mov	r10, qword ptr [rsp + 8]
	mov	rdi, qword ptr [rsp + 0x18]
	jmp	.label_1036
.label_972:
	mov	rax, rdi
	test	rdi, rdi
	je	.label_1048
	mov	r14d, 0x400ff
	mov	rcx, rax
.label_988:
	mov	rbp, rcx
	mov	rcx, qword ptr [rbp + 8]
	test	rcx, rcx
	jne	.label_988
	mov	rcx, qword ptr [rbp + 0x10]
	test	rcx, rcx
	jne	.label_988
.label_1070:
	mov	eax, dword ptr [rbp + 0x30]
	and	eax, r14d
	cmp	eax, 3
	je	.label_769
	cmp	eax, 6
	jne	.label_1058
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
	jmp	.label_936
.label_769:
	mov	rdi, qword ptr [rbp + 0x28]
.label_936:
	call	free
.label_1058:
	mov	rax, qword ptr [rbp]
	test	rax, rax
	je	.label_1048
	mov	rcx, qword ptr [rax + 0x10]
	cmp	rcx, rbp
	mov	rbp, rax
	je	.label_1070
	test	rcx, rcx
	mov	rbp, rax
	je	.label_1070
	jmp	.label_988
.label_1048:
	mov	dword ptr [r12], 8
	jmp	.label_651
.label_992:
	mov	r12, qword ptr [rsp + 0x48]
	mov	dword ptr [r12], eax
	jmp	.label_608
.label_749:
	mov	dword ptr [r12], 3
	jmp	.label_721
.label_1019:
	mov	edi, 0x3c8
	call	malloc
	test	rax, rax
	je	.label_746
	mov	rsi, qword ptr [rsp + 0x18]
	mov	rcx, qword ptr [rsi + 0x70]
	mov	qword ptr [rax], rcx
	mov	qword ptr [rsi + 0x70], rax
	mov	dword ptr [rsi + 0x80], 0
	xor	ecx, ecx
	mov	rbx, qword ptr [rsp + 0x20]
	jmp	.label_908
.label_746:
	mov	dword ptr [r12], 0xc
	mov	rbx, qword ptr [rsp + 0x20]
	jmp	.label_608
.label_714:
	mov	edi, OFFSET FLAT:label_613
	mov	esi, OFFSET FLAT:label_614
	mov	edx, 0xced
	mov	ecx, OFFSET FLAT:label_615
	call	__assert_fail
.label_859:
	call	free
	mov	rdi, rbp
	call	free
	mov	ecx, 0xc
	mov	rbx, qword ptr [rsp + 0x20]
.label_617:
	mov	r12, qword ptr [rsp + 0x48]
	mov	dword ptr [r12], ecx
.label_608:
	mov	r15, qword ptr [rsp + 0x30]
.label_721:
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
	jmp	.label_657
	.section	.text
	.align	32
	#Procedure 0x40e8a0

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
	je	.label_1450
	mov	qword ptr [rsp + 8], r15
	mov	edi, 0x50
	mov	esi, 1
	call	rpl_calloc
	mov	r15, rax
	test	r15, r15
	je	.label_1454
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
	jne	.label_1442
	mov	al, byte ptr [rbp]
	test	al, al
	je	.label_1444
	inc	rbp
	nop	word ptr cs:[rax + rax]
.label_1447:
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
	jne	.label_1447
.label_1444:
	mov	eax, dword ptr [rsp + 4]
	test	al, al
	je	.label_1455
	movdqu	xmm0, xmmword ptr [rbx]
	pcmpeqd	xmm1, xmm1
	pxor	xmm0, xmm1
	movdqu	xmmword ptr [rbx], xmm0
	movdqu	xmm0, xmmword ptr [rbx + 0x10]
	pxor	xmm0, xmm1
	movdqu	xmmword ptr [rbx + 0x10], xmm0
.label_1455:
	cmp	dword ptr [r12 + 0xb4], 2
	jl	.label_1440
	mov	rax, qword ptr [r12 + 0x78]
	mov	rcx, qword ptr [rax]
	and	qword ptr [rbx], rcx
	mov	rcx, qword ptr [rax + 8]
	and	qword ptr [rbx + 8], rcx
	mov	rcx, qword ptr [rax + 0x10]
	and	qword ptr [rbx + 0x10], rcx
	mov	rax, qword ptr [rax + 0x18]
	and	qword ptr [rbx + 0x18], rax
.label_1440:
	mov	ecx, dword ptr [r12 + 0x80]
	cmp	ecx, 0xf
	je	.label_1448
	mov	rax, qword ptr [r12 + 0x70]
.label_1441:
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
	jl	.label_1452
	or	byte ptr [r12 + 0xb0], 2
	mov	eax, dword ptr [r12 + 0x80]
	cmp	eax, 0xf
	je	.label_1445
	mov	rbp, qword ptr [r12 + 0x70]
.label_1453:
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
	je	.label_1451
	mov	rcx, qword ptr [r12 + 0x70]
.label_1449:
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
	jmp	.label_1443
.label_1452:
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
.label_1443:
	add	rsp, 0x18
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_1450:
	mov	dword ptr [r15], 0xc
	jmp	.label_1438
.label_1454:
	mov	rdi, rbx
	jmp	.label_1446
.label_1442:
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
	jmp	.label_1438
.label_1448:
	mov	edi, 0x3c8
	call	malloc
	test	rax, rax
	je	.label_1439
	mov	rcx, qword ptr [r12 + 0x70]
	mov	qword ptr [rax], rcx
	mov	qword ptr [r12 + 0x70], rax
	mov	dword ptr [r12 + 0x80], 0
	xor	ecx, ecx
	jmp	.label_1441
.label_1445:
	mov	edi, 0x3c8
	call	malloc
	mov	rbp, rax
	test	rbp, rbp
	je	.label_1439
	mov	rax, qword ptr [r12 + 0x70]
	mov	qword ptr [rbp], rax
	mov	qword ptr [r12 + 0x70], rbp
	mov	dword ptr [r12 + 0x80], 0
	xor	eax, eax
	jmp	.label_1453
.label_1439:
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
.label_1446:
	call	free
	mov	rax, qword ptr [rsp + 8]
	mov	dword ptr [rax], 0xc
.label_1438:
	xor	eax, eax
	jmp	.label_1443
.label_1451:
	mov	edi, 0x3c8
	call	malloc
	mov	rcx, rax
	xor	eax, eax
	test	rcx, rcx
	je	.label_1443
	mov	rdx, qword ptr [r12 + 0x70]
	mov	qword ptr [rcx], rdx
	mov	qword ptr [r12 + 0x70], rcx
	mov	dword ptr [r12 + 0x80], 0
	jmp	.label_1449
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40ec80

	.globl peek_token_bracket
	.type peek_token_bracket, @function
peek_token_bracket:
	mov	rax, qword ptr [rsi + 0x48]
	cmp	qword ptr [rsi + 0x68], rax
	jle	.label_1456
	mov	rcx, qword ptr [rsi + 8]
	mov	al, byte ptr [rcx + rax]
	mov	byte ptr [rdi], al
	cmp	dword ptr [rsi + 0x90], 2
	jl	.label_1461
	mov	r8, qword ptr [rsi + 0x48]
	cmp	r8, qword ptr [rsi + 0x30]
	je	.label_1461
	mov	rcx, qword ptr [rsi + 0x10]
	cmp	dword ptr [rcx + r8*4], -1
	je	.label_1459
.label_1461:
	test	dl, 1
	je	.label_1460
	cmp	al, 0x5c
	jne	.label_1460
	mov	rcx, qword ptr [rsi + 0x48]
	inc	rcx
	cmp	rcx, qword ptr [rsi + 0x58]
	jge	.label_1460
	mov	qword ptr [rsi + 0x48], rcx
	mov	rax, qword ptr [rsi + 8]
	mov	al, byte ptr [rax + rcx]
	mov	byte ptr [rdi], al
	jmp	.label_1459
.label_1456:
	mov	byte ptr [rdi + 8], 2
	xor	eax, eax
	ret	
.label_1460:
	cmp	al, 0x5c
	jg	.label_1466
	cmp	al, 0x2d
	je	.label_1464
	cmp	al, 0x5b
	jne	.label_1459
	mov	rax, qword ptr [rsi + 0x48]
	inc	rax
	cmp	rax, qword ptr [rsi + 0x58]
	jge	.label_1465
	mov	rcx, qword ptr [rsi + 8]
	mov	al, byte ptr [rcx + rax]
	mov	byte ptr [rdi], al
	cmp	al, 0x3d
	je	.label_1457
	cmp	al, 0x3a
	je	.label_1458
	cmp	al, 0x2e
	jne	.label_1463
	mov	byte ptr [rdi + 8], 0x1a
	mov	eax, 2
	ret	
.label_1466:
	cmp	al, 0x5d
	je	.label_1462
	cmp	al, 0x5e
	jne	.label_1459
	mov	byte ptr [rdi + 8], 0x19
	mov	eax, 1
	ret	
.label_1459:
	mov	byte ptr [rdi + 8], 1
	mov	eax, 1
	ret	
.label_1464:
	mov	byte ptr [rdi + 8], 0x16
	mov	eax, 1
	ret	
.label_1462:
	mov	byte ptr [rdi + 8], 0x15
	mov	eax, 1
	ret	
.label_1465:
	mov	byte ptr [rdi], 0
.label_1463:
	mov	byte ptr [rdi + 8], 1
	mov	byte ptr [rdi], 0x5b
	mov	eax, 1
	ret	
.label_1457:
	mov	byte ptr [rdi + 8], 0x1c
	mov	eax, 2
	ret	
.label_1458:
	test	dl, 4
	je	.label_1463
	mov	byte ptr [rdi + 8], 0x1e
	mov	eax, 2
	ret	
	nop	
	.section	.text
	.align	32
	#Procedure 0x40ed70

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
	je	.label_1467
	lea	rax, [r11 + 1]
	mov	rbx, qword ptr [rsi + 0x30]
	cmp	rax, rbx
	jge	.label_1467
	mov	r10, qword ptr [rsi + 0x10]
	lea	rax, [r10 + r11*4]
	mov	edi, 1
	nop	word ptr cs:[rax + rax]
.label_1470:
	cmp	dword ptr [rax + rdi*4], -1
	jne	.label_1468
	lea	rdx, [r11 + rdi + 1]
	inc	rdi
	cmp	rdx, rbx
	jl	.label_1470
.label_1468:
	cmp	edi, 2
	jl	.label_1467
	mov	dword ptr [r14], 1
	mov	eax, dword ptr [r10 + r11*4]
	mov	dword ptr [r14 + 8], eax
	movsxd	rax, edi
	add	rax, r11
	mov	qword ptr [rsi + 0x48], rax
	jmp	.label_1471
.label_1467:
	movsxd	rax, ecx
	add	r11, rax
	mov	qword ptr [rsi + 0x48], r11
	movzx	edi, byte ptr [r15 + 8]
	mov	eax, edi
	add	al, 0xea
	movzx	eax, al
	cmp	al, 8
	ja	.label_1069
	jmp	qword ptr [(rax * 8) + label_1469]
.label_2500:
	mov	eax, 7
	cmp	qword ptr [rsi + 0x68], r11
	jle	.label_1071
	mov	r11b, byte ptr [r15]
	xor	ecx, ecx
	jmp	.label_1284
	nop	word ptr cs:[rax + rax]
.label_1382:
	inc	rcx
	movzx	edi, byte ptr [r15 + 8]
.label_1284:
	cmp	dil, 0x1e
	jne	.label_1298
	cmp	byte ptr [rsi + 0x8b], 0
	jne	.label_1299
	mov	rbx, qword ptr [rsi + 0x48]
	lea	rdi, [rbx + 1]
	mov	qword ptr [rsi + 0x48], rdi
	mov	rdx, qword ptr [rsi + 8]
	mov	bl, byte ptr [rdx + rbx]
	jmp	.label_1303
	nop	dword ptr [rax]
.label_1298:
	mov	rdx, qword ptr [rsi + 0x48]
	lea	rdi, [rdx + 1]
	mov	qword ptr [rsi + 0x48], rdi
	mov	rbx, qword ptr [rsi + 8]
.label_1326:
	mov	bl, byte ptr [rbx + rdx]
.label_1303:
	cmp	qword ptr [rsi + 0x68], rdi
	jle	.label_1071
	cmp	bl, r11b
	jne	.label_1352
	mov	rdx, qword ptr [rsi + 8]
	cmp	byte ptr [rdx + rdi], 0x5d
	je	.label_1322
.label_1352:
	mov	rdx, qword ptr [r14 + 8]
	mov	byte ptr [rdx + rcx], bl
	cmp	rcx, 0x1e
	jle	.label_1382
	jmp	.label_1071
.label_1299:
	cmp	byte ptr [rsi + 0x8c], 0
	je	.label_1330
	mov	r9, qword ptr [rsi + 0x30]
	mov	r8, qword ptr [rsi + 0x48]
	cmp	r8, r9
	je	.label_1333
	mov	rdx, qword ptr [rsi + 0x10]
	cmp	dword ptr [rdx + r8*4], -1
	je	.label_1309
.label_1333:
	mov	rdx, qword ptr [rsi]
	mov	rdi, qword ptr [rsi + 0x18]
	mov	rbx, qword ptr [rsi + 0x28]
	add	rbx, qword ptr [rdi + r8*8]
	mov	bl, byte ptr [rdx + rbx]
	test	bl, bl
	js	.label_1309
	mov	edi, 1
	cmp	dword ptr [rsi + 0x90], 1
	je	.label_1351
	lea	rdx, [r8 + 1]
	cmp	rdx, r9
	jge	.label_1351
	lea	r10, [r8*4]
	add	r10, qword ptr [rsi + 0x10]
	mov	edi, 1
.label_1361:
	cmp	dword ptr [r10 + rdi*4], -1
	jne	.label_1351
	lea	rdx, [r8 + rdi + 1]
	inc	rdi
	cmp	rdx, r9
	jl	.label_1361
.label_1351:
	movsxd	rdi, edi
	add	rdi, r8
	mov	qword ptr [rsi + 0x48], rdi
	jmp	.label_1303
.label_1330:
	mov	rdx, qword ptr [rsi + 0x48]
	lea	rdi, [rdx + 1]
	add	rdx, qword ptr [rsi + 0x28]
	mov	qword ptr [rsi + 0x48], rdi
	mov	rbx, qword ptr [rsi]
	jmp	.label_1326
.label_1309:
	lea	rdi, [r8 + 1]
	mov	qword ptr [rsi + 0x48], rdi
	mov	rdx, qword ptr [rsi + 8]
	mov	bl, byte ptr [rdx + r8]
	jmp	.label_1303
.label_1322:
	inc	rdi
	mov	qword ptr [rsi + 0x48], rdi
	movsxd	rax, ecx
	mov	rcx, qword ptr [r14 + 8]
	mov	byte ptr [rcx + rax], 0
	mov	cl, byte ptr [r15 + 8]
	xor	eax, eax
	cmp	cl, 0x1e
	je	.label_1356
	cmp	cl, 0x1c
	je	.label_1385
	cmp	cl, 0x1a
	jne	.label_1071
	mov	dword ptr [r14], 3
	jmp	.label_1071
.label_1356:
	mov	dword ptr [r14], 4
	jmp	.label_1071
.label_1385:
	mov	dword ptr [r14], 2
	jmp	.label_1071
.label_2499:
	test	r9b, r9b
	jne	.label_1069
	lea	rdi, [rsp]
	mov	rdx, r8
	call	peek_token_bracket
	mov	eax, 0xb
	cmp	byte ptr [rsp + 8], 0x15
	jne	.label_1071
.label_1069:
	mov	dword ptr [r14], 0
	mov	al, byte ptr [r15]
	mov	byte ptr [r14 + 8], al
.label_1471:
	xor	eax, eax
.label_1071:
	add	rsp, 0x10
	pop	rbx
	pop	r14
	pop	r15
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40efd0

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
	je	.label_1477
	mov	esi, OFFSET FLAT:label_1524
	mov	rdi, r12
	call	strcmp
	test	eax, eax
	je	.label_1472
	mov	esi, OFFSET FLAT:label_1474
	mov	rdi, r12
	call	strcmp
	test	eax, eax
	jne	.label_1477
.label_1472:
	mov	r12d, OFFSET FLAT:label_1479
.label_1477:
	mov	rbp, qword ptr [r13]
	cmp	rbp, qword ptr [rbx + 0x48]
	je	.label_1480
.label_1530:
	mov	rdi, r12
	call	wctype
	mov	rcx, qword ptr [rbx + 0x48]
	lea	rdx, [rcx + 1]
	mov	qword ptr [rbx + 0x48], rdx
	mov	rdx, qword ptr [rbx + 0x18]
	mov	qword ptr [rdx + rcx*8], rax
	mov	esi, OFFSET FLAT:label_740
	mov	rdi, r12
	call	strcmp
	test	eax, eax
	je	.label_1488
	mov	esi, OFFSET FLAT:label_1490
	mov	rdi, r12
	call	strcmp
	test	eax, eax
	je	.label_1492
	mov	esi, OFFSET FLAT:label_1474
	mov	rdi, r12
	call	strcmp
	test	eax, eax
	je	.label_1497
	mov	esi, OFFSET FLAT:label_747
	mov	rdi, r12
	call	strcmp
	test	eax, eax
	je	.label_1500
	mov	esi, OFFSET FLAT:label_1479
	mov	rdi, r12
	call	strcmp
	test	eax, eax
	je	.label_1504
	mov	esi, OFFSET FLAT:label_1505
	mov	rdi, r12
	call	strcmp
	test	eax, eax
	je	.label_1508
	mov	esi, OFFSET FLAT:label_1510
	mov	rdi, r12
	call	strcmp
	test	eax, eax
	je	.label_1513
	mov	esi, OFFSET FLAT:label_1524
	mov	rdi, r12
	call	strcmp
	test	eax, eax
	je	.label_1515
	mov	esi, OFFSET FLAT:label_1518
	mov	rdi, r12
	call	strcmp
	test	eax, eax
	je	.label_1520
	mov	esi, OFFSET FLAT:label_1522
	mov	rdi, r12
	call	strcmp
	test	eax, eax
	je	.label_1523
	mov	esi, OFFSET FLAT:label_1526
	mov	rdi, r12
	call	strcmp
	test	eax, eax
	je	.label_1529
	mov	esi, OFFSET FLAT:label_1531
	mov	rdi, r12
	call	strcmp
	mov	ecx, eax
	mov	eax, 4
	test	ecx, ecx
	jne	.label_1478
	call	__ctype_b_loc
	test	r14, r14
	mov	rdx, qword ptr [rax]
	jne	.label_1535
	xor	ecx, ecx
.label_1542:
	test	byte ptr [rdx + rcx*2 + 1], 0x10
	je	.label_1538
	mov	eax, 1
	shl	rax, cl
	mov	rsi, rcx
	sar	rsi, 0x3f
	shr	rsi, 0x3a
	add	rsi, rcx
	sar	rsi, 6
	or	qword ptr [r15 + rsi*8], rax
.label_1538:
	inc	rcx
	xor	eax, eax
	cmp	rcx, 0x100
	jne	.label_1542
	jmp	.label_1478
.label_1488:
	call	__ctype_b_loc
	test	r14, r14
	mov	rdx, qword ptr [rax]
	jne	.label_1547
	xor	ecx, ecx
	nop	word ptr cs:[rax + rax]
.label_1554:
	test	byte ptr [rdx + rcx*2], 8
	je	.label_1549
	mov	eax, 1
	shl	rax, cl
	mov	rsi, rcx
	sar	rsi, 0x3f
	shr	rsi, 0x3a
	add	rsi, rcx
	sar	rsi, 6
	or	qword ptr [r15 + rsi*8], rax
.label_1549:
	inc	rcx
	xor	eax, eax
	cmp	rcx, 0x100
	jne	.label_1554
	jmp	.label_1478
.label_1492:
	call	__ctype_b_loc
	test	r14, r14
	mov	rdx, qword ptr [rax]
	jne	.label_1556
	xor	ecx, ecx
	nop	word ptr [rax + rax]
.label_1483:
	test	byte ptr [rdx + rcx*2], 2
	je	.label_1473
	mov	eax, 1
	shl	rax, cl
	mov	rsi, rcx
	sar	rsi, 0x3f
	shr	rsi, 0x3a
	add	rsi, rcx
	sar	rsi, 6
	or	qword ptr [r15 + rsi*8], rax
.label_1473:
	inc	rcx
	xor	eax, eax
	cmp	rcx, 0x100
	jne	.label_1483
	jmp	.label_1478
.label_1497:
	call	__ctype_b_loc
	test	r14, r14
	mov	rdx, qword ptr [rax]
	jne	.label_1486
	xor	ecx, ecx
	nop	word ptr [rax + rax]
.label_1495:
	test	byte ptr [rdx + rcx*2 + 1], 2
	je	.label_1487
	mov	eax, 1
	shl	rax, cl
	mov	rsi, rcx
	sar	rsi, 0x3f
	shr	rsi, 0x3a
	add	rsi, rcx
	sar	rsi, 6
	or	qword ptr [r15 + rsi*8], rax
.label_1487:
	inc	rcx
	xor	eax, eax
	cmp	rcx, 0x100
	jne	.label_1495
	jmp	.label_1478
.label_1500:
	call	__ctype_b_loc
	test	r14, r14
	mov	rdx, qword ptr [rax]
	jne	.label_1499
	xor	ecx, ecx
	nop	dword ptr [rax + rax]
.label_1511:
	test	byte ptr [rdx + rcx*2 + 1], 0x20
	je	.label_1503
	mov	eax, 1
	shl	rax, cl
	mov	rsi, rcx
	sar	rsi, 0x3f
	shr	rsi, 0x3a
	add	rsi, rcx
	sar	rsi, 6
	or	qword ptr [r15 + rsi*8], rax
.label_1503:
	inc	rcx
	xor	eax, eax
	cmp	rcx, 0x100
	jne	.label_1511
	jmp	.label_1478
.label_1504:
	call	__ctype_b_loc
	test	r14, r14
	mov	rdx, qword ptr [rax]
	jne	.label_1514
	xor	ecx, ecx
	nop	dword ptr [rax + rax]
.label_1525:
	test	byte ptr [rdx + rcx*2 + 1], 4
	je	.label_1519
	mov	eax, 1
	shl	rax, cl
	mov	rsi, rcx
	sar	rsi, 0x3f
	shr	rsi, 0x3a
	add	rsi, rcx
	sar	rsi, 6
	or	qword ptr [r15 + rsi*8], rax
.label_1519:
	inc	rcx
	xor	eax, eax
	cmp	rcx, 0x100
	jne	.label_1525
	jmp	.label_1478
.label_1508:
	call	__ctype_b_loc
	test	r14, r14
	mov	rdx, qword ptr [rax]
	jne	.label_1532
	xor	ecx, ecx
	nop	dword ptr [rax + rax]
.label_1491:
	test	byte ptr [rdx + rcx*2 + 1], 8
	je	.label_1543
	mov	eax, 1
	shl	rax, cl
	mov	rsi, rcx
	sar	rsi, 0x3f
	shr	rsi, 0x3a
	add	rsi, rcx
	sar	rsi, 6
	or	qword ptr [r15 + rsi*8], rax
.label_1543:
	inc	rcx
	xor	eax, eax
	cmp	rcx, 0x100
	jne	.label_1491
	jmp	.label_1478
.label_1513:
	call	__ctype_b_loc
	test	r14, r14
	mov	rdx, qword ptr [rax]
	jne	.label_1541
	xor	ecx, ecx
	nop	dword ptr [rax + rax]
.label_1550:
	test	byte ptr [rdx + rcx*2 + 1], 0x40
	je	.label_1546
	mov	eax, 1
	shl	rax, cl
	mov	rsi, rcx
	sar	rsi, 0x3f
	shr	rsi, 0x3a
	add	rsi, rcx
	sar	rsi, 6
	or	qword ptr [r15 + rsi*8], rax
.label_1546:
	inc	rcx
	xor	eax, eax
	cmp	rcx, 0x100
	jne	.label_1550
	jmp	.label_1478
.label_1515:
	call	__ctype_b_loc
	test	r14, r14
	mov	rdx, qword ptr [rax]
	jne	.label_1552
	xor	ecx, ecx
	nop	dword ptr [rax + rax]
.label_1475:
	test	byte ptr [rdx + rcx*2 + 1], 1
	je	.label_1555
	mov	eax, 1
	shl	rax, cl
	mov	rsi, rcx
	sar	rsi, 0x3f
	shr	rsi, 0x3a
	add	rsi, rcx
	sar	rsi, 6
	or	qword ptr [r15 + rsi*8], rax
.label_1555:
	inc	rcx
	xor	eax, eax
	cmp	rcx, 0x100
	jne	.label_1475
	jmp	.label_1478
.label_1520:
	call	__ctype_b_loc
	test	r14, r14
	mov	rdx, qword ptr [rax]
	jne	.label_1481
	xor	ecx, ecx
	nop	dword ptr [rax + rax]
.label_1489:
	test	byte ptr [rdx + rcx*2], 1
	je	.label_1484
	mov	eax, 1
	shl	rax, cl
	mov	rsi, rcx
	sar	rsi, 0x3f
	shr	rsi, 0x3a
	add	rsi, rcx
	sar	rsi, 6
	or	qword ptr [r15 + rsi*8], rax
.label_1484:
	inc	rcx
	xor	eax, eax
	cmp	rcx, 0x100
	jne	.label_1489
	jmp	.label_1478
.label_1523:
	call	__ctype_b_loc
	test	r14, r14
	mov	rdx, qword ptr [rax]
	jne	.label_1494
	xor	ecx, ecx
.label_1502:
	cmp	word ptr [rdx + rcx*2], 0
	jns	.label_1496
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
	jne	.label_1502
	jmp	.label_1478
.label_1529:
	call	__ctype_b_loc
	test	r14, r14
	mov	rdx, qword ptr [rax]
	jne	.label_1506
	xor	ecx, ecx
.label_1516:
	test	byte ptr [rdx + rcx*2], 4
	je	.label_1509
	mov	eax, 1
	shl	rax, cl
	mov	rsi, rcx
	sar	rsi, 0x3f
	shr	rsi, 0x3a
	add	rsi, rcx
	sar	rsi, 6
	or	qword ptr [r15 + rsi*8], rax
.label_1509:
	inc	rcx
	xor	eax, eax
	cmp	rcx, 0x100
	jne	.label_1516
.label_1478:
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_1480:
	lea	rax, [rbp + rbp]
	mov	rdi, qword ptr [rbx + 0x18]
	lea	rsi, [rax*8 + 8]
	call	realloc
	mov	rcx, rax
	mov	eax, 0xc
	test	rcx, rcx
	je	.label_1478
	lea	rax, [rbp + rbp + 1]
	mov	qword ptr [rbx + 0x18], rcx
	mov	qword ptr [r13], rax
	jmp	.label_1530
.label_1547:
	xor	esi, esi
.label_1537:
	test	byte ptr [rdx + rsi*2], 8
	je	.label_1534
	movzx	ecx, byte ptr [r14 + rsi]
	mov	eax, 1
	shl	rax, cl
	shr	cl, 6
	movzx	ecx, cl
	or	qword ptr [r15 + rcx*8], rax
.label_1534:
	inc	rsi
	xor	eax, eax
	cmp	rsi, 0x100
	jne	.label_1537
	jmp	.label_1478
.label_1556:
	xor	esi, esi
.label_1545:
	test	byte ptr [rdx + rsi*2], 2
	je	.label_1540
	movzx	ecx, byte ptr [r14 + rsi]
	mov	eax, 1
	shl	rax, cl
	shr	cl, 6
	movzx	ecx, cl
	or	qword ptr [r15 + rcx*8], rax
.label_1540:
	inc	rsi
	xor	eax, eax
	cmp	rsi, 0x100
	jne	.label_1545
	jmp	.label_1478
.label_1486:
	xor	esi, esi
.label_1551:
	test	byte ptr [rdx + rsi*2 + 1], 2
	je	.label_1548
	movzx	ecx, byte ptr [r14 + rsi]
	mov	eax, 1
	shl	rax, cl
	shr	cl, 6
	movzx	ecx, cl
	or	qword ptr [r15 + rcx*8], rax
.label_1548:
	inc	rsi
	xor	eax, eax
	cmp	rsi, 0x100
	jne	.label_1551
	jmp	.label_1478
.label_1499:
	xor	esi, esi
.label_1528:
	test	byte ptr [rdx + rsi*2 + 1], 0x20
	je	.label_1553
	movzx	ecx, byte ptr [r14 + rsi]
	mov	eax, 1
	shl	rax, cl
	shr	cl, 6
	movzx	ecx, cl
	or	qword ptr [r15 + rcx*8], rax
.label_1553:
	inc	rsi
	xor	eax, eax
	cmp	rsi, 0x100
	jne	.label_1528
	jmp	.label_1478
.label_1514:
	xor	esi, esi
.label_1482:
	test	byte ptr [rdx + rsi*2 + 1], 4
	je	.label_1476
	movzx	ecx, byte ptr [r14 + rsi]
	mov	eax, 1
	shl	rax, cl
	shr	cl, 6
	movzx	ecx, cl
	or	qword ptr [r15 + rcx*8], rax
.label_1476:
	inc	rsi
	xor	eax, eax
	cmp	rsi, 0x100
	jne	.label_1482
	jmp	.label_1478
.label_1532:
	xor	esi, esi
.label_1557:
	test	byte ptr [rdx + rsi*2 + 1], 8
	je	.label_1485
	movzx	ecx, byte ptr [r14 + rsi]
	mov	eax, 1
	shl	rax, cl
	shr	cl, 6
	movzx	ecx, cl
	or	qword ptr [r15 + rcx*8], rax
.label_1485:
	inc	rsi
	xor	eax, eax
	cmp	rsi, 0x100
	jne	.label_1557
	jmp	.label_1478
.label_1541:
	xor	esi, esi
.label_1498:
	test	byte ptr [rdx + rsi*2 + 1], 0x40
	je	.label_1493
	movzx	ecx, byte ptr [r14 + rsi]
	mov	eax, 1
	shl	rax, cl
	shr	cl, 6
	movzx	ecx, cl
	or	qword ptr [r15 + rcx*8], rax
.label_1493:
	inc	rsi
	xor	eax, eax
	cmp	rsi, 0x100
	jne	.label_1498
	jmp	.label_1478
.label_1552:
	xor	esi, esi
.label_1507:
	test	byte ptr [rdx + rsi*2 + 1], 1
	je	.label_1501
	movzx	ecx, byte ptr [r14 + rsi]
	mov	eax, 1
	shl	rax, cl
	shr	cl, 6
	movzx	ecx, cl
	or	qword ptr [r15 + rcx*8], rax
.label_1501:
	inc	rsi
	xor	eax, eax
	cmp	rsi, 0x100
	jne	.label_1507
	jmp	.label_1478
.label_1481:
	xor	esi, esi
.label_1517:
	test	byte ptr [rdx + rsi*2], 1
	je	.label_1512
	movzx	ecx, byte ptr [r14 + rsi]
	mov	eax, 1
	shl	rax, cl
	shr	cl, 6
	movzx	ecx, cl
	or	qword ptr [r15 + rcx*8], rax
.label_1512:
	inc	rsi
	xor	eax, eax
	cmp	rsi, 0x100
	jne	.label_1517
	jmp	.label_1478
.label_1494:
	xor	esi, esi
.label_1527:
	cmp	word ptr [rdx + rsi*2], 0
	jns	.label_1521
	movzx	ecx, byte ptr [r14 + rsi]
	mov	eax, 1
	shl	rax, cl
	shr	cl, 6
	movzx	ecx, cl
	or	qword ptr [r15 + rcx*8], rax
.label_1521:
	inc	rsi
	xor	eax, eax
	cmp	rsi, 0x100
	jne	.label_1527
	jmp	.label_1478
.label_1506:
	xor	esi, esi
.label_1536:
	test	byte ptr [rdx + rsi*2], 4
	je	.label_1533
	movzx	ecx, byte ptr [r14 + rsi]
	mov	eax, 1
	shl	rax, cl
	shr	cl, 6
	movzx	ecx, cl
	or	qword ptr [r15 + rcx*8], rax
.label_1533:
	inc	rsi
	xor	eax, eax
	cmp	rsi, 0x100
	jne	.label_1536
	jmp	.label_1478
.label_1535:
	xor	esi, esi
.label_1544:
	test	byte ptr [rdx + rsi*2 + 1], 0x10
	je	.label_1539
	movzx	ecx, byte ptr [r14 + rsi]
	mov	eax, 1
	shl	rax, cl
	shr	cl, 6
	movzx	ecx, cl
	or	qword ptr [r15 + rcx*8], rax
.label_1539:
	inc	rsi
	xor	eax, eax
	cmp	rsi, 0x100
	jne	.label_1544
	jmp	.label_1478
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40f7a0

	.globl optimize_subexps
	.type optimize_subexps, @function
optimize_subexps:
	mov	al, byte ptr [rsi + 0x30]
	cmp	al, 0x11
	je	.label_1558
	cmp	al, 4
	jne	.label_1559
	mov	rax, qword ptr [rdi + 0xe0]
	test	rax, rax
	je	.label_1559
	movsxd	rcx, dword ptr [rsi + 0x28]
	mov	rcx, qword ptr [rax + rcx*8]
	mov	qword ptr [rsi + 0x28], rcx
	mov	eax, 1
	shl	eax, cl
	cdqe	
	or	qword ptr [rdi + 0xa0], rax
	xor	eax, eax
	ret	
.label_1558:
	mov	rax, qword ptr [rsi + 8]
	test	rax, rax
	je	.label_1559
	cmp	byte ptr [rax + 0x30], 0x11
	jne	.label_1559
	mov	rdx, qword ptr [rax + 8]
	mov	rcx, qword ptr [rax + 0x28]
	mov	qword ptr [rsi + 8], rdx
	test	rdx, rdx
	je	.label_1560
	mov	qword ptr [rdx], rsi
.label_1560:
	mov	rax, qword ptr [rsi + 0x28]
	mov	rdx, qword ptr [rdi + 0xe0]
	mov	rax, qword ptr [rdx + rax*8]
	mov	qword ptr [rdx + rcx*8], rax
	cmp	rcx, 0x3f
	jg	.label_1559
	mov	rax, -2
	rol	rax, cl
	and	qword ptr [rdi + 0xa0], rax
.label_1559:
	xor	eax, eax
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40f830

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
	ja	.label_1561
	xor	eax, eax
	jmp	qword ptr [(rbx * 8) + label_1562]
.label_2513:
	mov	r14, qword ptr [rdi + 0x28]
	lea	rbx, [rcx + rcx*2]
	mov	rax, qword ptr [rsi + 0x20]
	mov	r15, qword ptr [rax + 0x38]
	movaps	xmm0, xmmword ptr [rip + label_1310]
	movups	xmmword ptr [r14 + rbx*8], xmm0
	mov	edi, 8
	call	malloc
	mov	qword ptr [r14 + rbx*8 + 0x10], rax
	test	rax, rax
	je	.label_1354
	mov	qword ptr [rax], r15
	jmp	.label_1325
	.section	.text
	.align	32
	#Procedure 0x40fa40

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
	je	.label_1569
	mov	al, byte ptr [rsi + 0x38]
	and	al, 0x10
	je	.label_1569
	mov	rax, qword ptr [r14 + 0x28]
	cmp	rax, 0x3f
	jg	.label_1570
	mov	rcx, qword ptr [rbx + 0xa0]
	bt	rcx, rax
	jae	.label_1570
.label_1569:
	mov	r12d, dword ptr [rbx + 0x80]
	cmp	r12d, 0xf
	je	.label_1571
	mov	rax, qword ptr [rbx + 0x70]
.label_1584:
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
.label_1580:
	mov	qword ptr [rsp], rbp
	mov	r15d, dword ptr [rbx + 0x80]
	cmp	r15d, 0xf
	je	.label_1572
	mov	rax, qword ptr [rbx + 0x70]
.label_1579:
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
.label_1577:
	test	r13, r13
	mov	rbp, r15
	je	.label_1573
	mov	ebp, dword ptr [rbx + 0x80]
	cmp	ebp, 0xf
	je	.label_1581
	mov	rax, qword ptr [rbx + 0x70]
.label_1582:
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
	je	.label_1573
	mov	qword ptr [r15], rbp
.label_1573:
	mov	r13d, dword ptr [rbx + 0x80]
	cmp	r13d, 0xf
	je	.label_1583
	mov	rax, qword ptr [rbx + 0x70]
.label_1576:
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
	je	.label_1578
	mov	qword ptr [r12], r13
.label_1578:
	test	rbp, rbp
	je	.label_1575
	mov	qword ptr [rbp], r13
.label_1575:
	test	r15, r15
	je	.label_1574
	test	r12, r12
	je	.label_1574
	test	rbp, rbp
	je	.label_1574
	test	r13, r13
	je	.label_1574
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
.label_1570:
	mov	rax, r13
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_1571:
	mov	edi, 0x3c8
	call	malloc
	xor	r12d, r12d
	test	rax, rax
	je	.label_1580
	mov	rcx, qword ptr [rbx + 0x70]
	mov	qword ptr [rax], rcx
	mov	qword ptr [rbx + 0x70], rax
	mov	dword ptr [rbx + 0x80], 0
	jmp	.label_1584
.label_1572:
	mov	edi, 0x3c8
	call	malloc
	xor	r15d, r15d
	test	rax, rax
	je	.label_1577
	mov	rcx, qword ptr [rbx + 0x70]
	mov	qword ptr [rax], rcx
	mov	qword ptr [rbx + 0x70], rax
	mov	dword ptr [rbx + 0x80], 0
	jmp	.label_1579
.label_1583:
	mov	edi, 0x3c8
	call	malloc
	xor	r13d, r13d
	test	rax, rax
	je	.label_1575
	mov	rcx, qword ptr [rbx + 0x70]
	mov	qword ptr [rax], rcx
	mov	qword ptr [rbx + 0x70], rax
	mov	dword ptr [rbx + 0x80], 0
	jmp	.label_1576
.label_1574:
	mov	rax, qword ptr [rsp]
	mov	dword ptr [rax], 0xc
	xor	r13d, r13d
	jmp	.label_1570
.label_1581:
	mov	edi, 0x3c8
	call	malloc
	xor	ebp, ebp
	test	rax, rax
	je	.label_1573
	mov	rcx, qword ptr [rbx + 0x70]
	mov	qword ptr [rax], rcx
	mov	qword ptr [rbx + 0x70], rax
	mov	dword ptr [rbx + 0x80], 0
	jmp	.label_1582
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40fd40

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
	jae	.label_1585
.label_1586:
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
	jne	.label_1590
	mov	cl, 1
	cmp	dword ptr [rbx + 0xb4], 1
	jg	.label_1588
.label_1590:
	cmp	eax, 6
	sete	cl
.label_1588:
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
.label_1587:
	mov	rax, r15
	add	rsp, 0x18
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_1585:
	lea	rcx, [r13 + r13]
	mov	r15, -1
	movabs	rax, 0xaaaaaaaaaaaaaaa
	cmp	rcx, rax
	ja	.label_1587
	mov	qword ptr [rsp + 0x10], rcx
	mov	rdi, qword ptr [rbx]
	mov	rsi, r13
	shl	rsi, 5
	call	realloc
	test	rax, rax
	je	.label_1587
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
	je	.label_1589
	test	rax, rax
	je	.label_1589
	test	r13, r13
	je	.label_1589
	test	rbp, rbp
	je	.label_1589
	mov	qword ptr [rbx + 0x18], rdi
	mov	qword ptr [rbx + 0x20], rax
	mov	qword ptr [rbx + 0x28], r13
	mov	qword ptr [rbx + 0x30], rbp
	mov	rax, qword ptr [rsp + 0x10]
	mov	qword ptr [rbx + 8], rax
	mov	rax, qword ptr [rbx + 0x10]
	jmp	.label_1586
.label_1589:
	mov	rbx, rax
	call	free
	mov	rdi, rbx
	call	free
	mov	rdi, r13
	call	free
	mov	rdi, rbp
	call	free
	jmp	.label_1587
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40ff10

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
	je	.label_1592
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
	je	.label_1599
	lea	rdx, [r15 + r14*8 + 8]
	cmp	qword ptr [rdx], 0
	je	.label_1599
	mov	rdx, qword ptr [r15 + r14*8 + 0x10]
	mov	rdx, qword ptr [rdx]
	shl	rdx, 4
	test	byte ptr [rcx + rdx + 0xa], 4
	jne	.label_1599
	mov	rdi, rbp
	mov	rsi, r12
	mov	rdx, r12
	mov	rcx, r12
	call	duplicate_node_closure
	test	eax, eax
	jne	.label_1592
	mov	rax, qword ptr [rbp]
	mov	eax, dword ptr [rax + rbx + 8]
.label_1599:
	test	al, 8
	mov	qword ptr [rsp + 0x28], r12
	je	.label_1596
	mov	rax, qword ptr [rbp + 0x28]
	cmp	qword ptr [rax + r14*8 + 8], 0
	jle	.label_1596
	xor	r15d, r15d
	lea	rbx, [rsp + 0x30]
.label_2486:
	xor	r12d, r12d
	nop	word ptr cs:[rax + rax]
.label_1594:
	mov	rax, qword ptr [rax + r14*8 + 0x10]
	mov	rdx, qword ptr [rax + r12*8]
	mov	rax, qword ptr [rbp + 0x30]
	lea	r13, [rdx + rdx*2]
	mov	rcx, qword ptr [rax + r13*8 + 8]
	cmp	rcx, -1
	je	.label_1593
	test	rcx, rcx
	jne	.label_1598
	xor	ecx, ecx
	mov	rdi, rbx
	mov	rsi, rbp
	call	calc_eclosure_iter
	test	eax, eax
	je	.label_1601
	jmp	.label_1592
	nop	word ptr [rax + rax]
.label_1598:
	mov	rcx, qword ptr [rax + r13*8 + 0x10]
	mov	qword ptr [rsp + 0x40], rcx
	movups	xmm0, xmmword ptr [rax + r13*8]
	movaps	xmmword ptr [rsp + 0x30], xmm0
.label_1601:
	lea	rdi, [rsp + 0x10]
	mov	rsi, rbx
	call	re_node_set_merge
	test	eax, eax
	jne	.label_1592
	mov	rax, qword ptr [rbp + 0x30]
	cmp	qword ptr [rax + r13*8 + 8], 0
	jne	.label_1600
	mov	rdi, qword ptr [rsp + 0x40]
	call	free
.label_1593:
	mov	r15b, 1
.label_1600:
	inc	r12
	mov	rax, qword ptr [rbp + 0x28]
	cmp	r12, qword ptr [rax + r14*8 + 8]
	jl	.label_1594
	jmp	.label_1597
.label_1596:
	xor	r15d, r15d
.label_1597:
	lea	rdi, [rsp + 0x10]
	mov	rsi, qword ptr [rsp + 0x28]
	call	re_node_set_insert
	test	al, al
	mov	eax, 0xc
	je	.label_1592
	test	r15b, 1
	mov	rax, qword ptr [rbp + 0x30]
	je	.label_1591
	mov	ecx, dword ptr [rsp + 4]
	test	cl, cl
	jne	.label_1591
	mov	qword ptr [rax + r14*8 + 8], 0
	jmp	.label_1595
.label_1591:
	mov	rcx, qword ptr [rsp + 0x20]
	mov	qword ptr [rax + r14*8 + 0x10], rcx
	movups	xmm0, xmmword ptr [rsp + 0x10]
	movups	xmmword ptr [rax + r14*8], xmm0
.label_1595:
	mov	rcx, qword ptr [rsp + 8]
	mov	rax, qword ptr [rsp + 0x20]
	mov	qword ptr [rcx + 0x10], rax
	movups	xmm0, xmmword ptr [rsp + 0x10]
	movups	xmmword ptr [rcx], xmm0
	xor	eax, eax
.label_1592:
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
	#Procedure 0x410120

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
.label_1609:
	mov	eax, r13d
	shl	eax, 8
	and	eax, 0x3ff00
	mov	dword ptr [rsp + 0xc], eax
	mov	r15, r14
	mov	dword ptr [rsp + 0x1c], r13d
	nop	word ptr cs:[rax + rax]
.label_1607:
	mov	rax, qword ptr [r12]
	mov	rdx, r15
	shl	rdx, 4
	cmp	byte ptr [rax + rdx + 8], 4
	jne	.label_1614
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
	je	.label_1603
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
	jne	.label_1607
	jmp	.label_1603
	nop	dword ptr [rax + rax]
.label_1614:
	mov	r8, qword ptr [r12 + 0x28]
	lea	rcx, [r15 + r15*2]
	mov	rsi, qword ptr [r8 + rcx*8 + 8]
	test	rsi, rsi
	je	.label_1606
	mov	rdi, qword ptr [r8 + rcx*8 + 0x10]
	mov	r14, qword ptr [rdi]
	lea	rdi, [rbp + rbp*2]
	mov	qword ptr [rsp + 0x10], rdi
	mov	qword ptr [r8 + rdi*8 + 8], 0
	cmp	rsi, 1
	je	.label_1612
	mov	rdi, qword ptr [r12 + 0x10]
	lea	rsi, [rdi - 1]
	test	rsi, rsi
	jle	.label_1605
	mov	rdx, rsi
	shl	rdx, 4
	mov	ebx, dword ptr [rax + rdx + 8]
	mov	edx, ebx
	and	edx, 0x40000
	je	.label_1605
	mov	rdx, qword ptr [r12 + 0x20]
	shl	rdi, 4
	lea	rdi, [rax + rdi - 0x18]
	nop	word ptr cs:[rax + rax]
.label_1613:
	cmp	qword ptr [rdx + rsi*8], r14
	jne	.label_1610
	shr	ebx, 8
	and	ebx, 0x3ff
	cmp	ebx, r13d
	je	.label_1611
.label_1610:
	dec	rsi
	test	rsi, rsi
	jle	.label_1605
	mov	ebx, dword ptr [rdi]
	mov	ebp, ebx
	and	ebp, 0x40000
	add	rdi, -0x10
	test	ebp, ebp
	jne	.label_1613
	jmp	.label_1605
.label_1611:
	cmp	rsi, -1
	je	.label_1605
	mov	r15, rcx
	mov	rax, qword ptr [rsp + 0x10]
	lea	rdi, [r8 + rax*8]
	call	re_node_set_insert
	mov	dword ptr [rsp + 8], 0xc
	test	al, al
	jne	.label_1608
	jmp	.label_1603
	nop	dword ptr [rax]
.label_1605:
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
	je	.label_1603
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
	je	.label_1603
	mov	rdi, r12
	mov	rsi, r14
	mov	rdx, rbp
	mov	rcx, qword ptr [rsp + 0x20]
	mov	r8d, r13d
	call	duplicate_node_closure
	mov	dword ptr [rsp + 8], eax
	test	eax, eax
	jne	.label_1603
.label_1608:
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
	je	.label_1603
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
	jne	.label_1607
	jmp	.label_1603
	nop	
.label_1612:
	cmp	r15, qword ptr [rsp + 0x20]
	jne	.label_1602
	cmp	rbp, r15
	jne	.label_1604
.label_1602:
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
	je	.label_1603
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
	jne	.label_1609
	jmp	.label_1603
.label_1606:
	mov	rax, qword ptr [r12 + 0x18]
	mov	rcx, qword ptr [rax + r15*8]
	mov	qword ptr [rax + rbp*8], rcx
.label_1615:
	mov	dword ptr [rsp + 8], 0
.label_1603:
	mov	eax, dword ptr [rsp + 8]
	add	rsp, 0x28
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_1604:
	mov	rax, qword ptr [rsp + 0x10]
	lea	rdi, [r8 + rax*8]
	mov	rsi, r14
	call	re_node_set_insert
	mov	dword ptr [rsp + 8], 0xc
	test	al, al
	jne	.label_1615
	jmp	.label_1603
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x410590

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
	je	.label_1620
	mov	rax, qword ptr [r14 + 8]
	test	rax, rax
	je	.label_1620
	mov	rbx, qword ptr [r15]
	mov	rcx, qword ptr [r15 + 8]
	lea	rdx, [rcx + rax*2]
	cmp	rbx, rdx
	jge	.label_1627
	add	rbx, rax
	mov	rdi, qword ptr [r15 + 0x10]
	mov	rsi, rbx
	shl	rsi, 4
	call	realloc
	mov	rcx, rax
	mov	eax, 0xc
	test	rcx, rcx
	je	.label_1621
	add	rbx, rbx
	mov	qword ptr [r15 + 0x10], rcx
	mov	qword ptr [r15], rbx
	mov	rcx, qword ptr [r15 + 8]
	mov	rax, qword ptr [r14 + 8]
.label_1627:
	test	rcx, rcx
	je	.label_1623
	lea	r12, [rcx + rax*2]
	dec	rax
	dec	rcx
	mov	rdx, rax
	or	rdx, rcx
	js	.label_1616
	mov	rdx, qword ptr [r15 + 0x10]
	mov	rsi, qword ptr [r14 + 0x10]
	jmp	.label_1617
.label_1626:
	dec	rax
.label_1628:
	dec	rcx
	jmp	.label_1625
	nop	word ptr [rax + rax]
.label_1617:
	mov	rdi, qword ptr [rsi + rax*8]
	cmp	qword ptr [rdx + rcx*8], rdi
	je	.label_1626
	jge	.label_1628
	dec	rax
	mov	qword ptr [rdx + r12*8 - 8], rdi
	dec	r12
.label_1625:
	mov	rdi, rax
	or	rdi, rcx
	jns	.label_1617
.label_1616:
	test	rax, rax
	js	.label_1619
	lea	rcx, [rax + 1]
	sub	r12, rcx
	lea	rdi, [r12*8]
	add	rdi, qword ptr [r15 + 0x10]
	mov	rsi, qword ptr [r14 + 0x10]
	lea	rdx, [rax*8 + 8]
	call	memcpy
.label_1619:
	mov	r9, qword ptr [r15 + 8]
	mov	rax, qword ptr [r14 + 8]
	lea	rcx, [r9 + rax*2 - 1]
	mov	rsi, rcx
	sub	rsi, r12
	inc	rsi
	je	.label_1620
	lea	rax, [rsi + r9]
	mov	qword ptr [r15 + 8], rax
	mov	rdi, qword ptr [r15 + 0x10]
.label_1624:
	lea	r8, [r9 - 1]
	lea	rdx, [rsi*8]
	nop	dword ptr [rax + rax]
.label_1629:
	mov	rax, qword ptr [rdi + rcx*8]
	mov	rbx, qword ptr [rdi + r9*8 - 8]
	cmp	rax, rbx
	jle	.label_1622
	dec	rcx
	lea	rbx, [rdi + rdx]
	add	rdx, -8
	dec	rsi
	mov	qword ptr [rbx + r9*8 - 8], rax
	jne	.label_1629
	jmp	.label_1620
	nop	word ptr cs:[rax + rax]
.label_1622:
	lea	rax, [rdi + rdx]
	mov	qword ptr [rax + r9*8 - 8], rbx
	cmp	r9, 1
	mov	r9, r8
	jg	.label_1624
	lea	rsi, [rdi + r12*8]
.label_1618:
	call	memcpy
.label_1620:
	xor	eax, eax
.label_1621:
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	ret	
.label_1623:
	mov	qword ptr [r15 + 8], rax
	mov	rdi, qword ptr [r15 + 0x10]
	mov	rdx, qword ptr [r14 + 8]
	mov	rsi, qword ptr [r14 + 0x10]
	shl	rdx, 3
	jmp	.label_1618
	nop	
	.section	.text
	.align	32
	#Procedure 0x410720

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
	je	.label_1638
	mov	rcx, qword ptr [r14 + 8]
	test	rcx, rcx
	je	.label_1640
	cmp	rsi, rcx
	jne	.label_1642
	lea	rax, [rsi + rsi]
	mov	qword ptr [r14], rax
	mov	rdi, qword ptr [r14 + 0x10]
	shl	rsi, 4
	call	realloc
	test	rax, rax
	je	.label_1634
	mov	qword ptr [r14 + 0x10], rax
	mov	rcx, qword ptr [r14 + 8]
	jmp	.label_1636
.label_1638:
	movaps	xmm0, xmmword ptr [rip + label_1310]
	movups	xmmword ptr [r14], xmm0
	mov	edi, 8
	call	malloc
	mov	qword ptr [r14 + 0x10], rax
	test	rax, rax
	je	.label_1643
	mov	qword ptr [rax], rbx
	jmp	.label_1637
.label_1640:
	mov	rax, qword ptr [r14 + 0x10]
	mov	qword ptr [rax], rbx
	jmp	.label_1632
.label_1642:
	mov	rax, qword ptr [r14 + 0x10]
.label_1636:
	cmp	qword ptr [rax], rbx
	jle	.label_1635
	test	rcx, rcx
	jle	.label_1630
	nop	word ptr cs:[rax + rax]
.label_1639:
	mov	rdx, qword ptr [rax + rcx*8 - 8]
	mov	qword ptr [rax + rcx*8], rdx
	cmp	rcx, 1
	lea	rcx, [rcx - 1]
	jg	.label_1639
	jmp	.label_1630
.label_1635:
	mov	rdx, qword ptr [rax + rcx*8 - 8]
	jmp	.label_1631
	nop	dword ptr [rax]
.label_1633:
	mov	qword ptr [rax + rcx*8], rdx
	mov	rdx, qword ptr [rax + rcx*8 - 0x10]
	dec	rcx
.label_1631:
	cmp	rdx, rbx
	jg	.label_1633
.label_1630:
	mov	qword ptr [rax + rcx*8], rbx
.label_1632:
	inc	qword ptr [r14 + 8]
.label_1637:
	mov	al, 1
.label_1641:
	add	rsp, 8
	pop	rbx
	pop	r14
	ret	
.label_1643:
	xorps	xmm0, xmm0
	movups	xmmword ptr [r14], xmm0
.label_1634:
	xor	eax, eax
	jmp	.label_1641
	nop	
	.section	.text
	.align	32
	#Procedure 0x410800

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
	mov	r12d, ecx
	mov	r13, rsi
	mov	r15, rdi
	mov	r8, qword ptr [rdx + 8]
	test	r8, r8
	je	.label_1644
	mov	r14d, r12d
	add	r14, r8
	test	r8, r8
	jle	.label_1651
	mov	rcx, qword ptr [rdx + 0x10]
	xor	r9d, r9d
	cmp	r8, 4
	jb	.label_1652
	mov	r9, r8
	and	r9, 0xfffffffffffffffc
	je	.label_1669
	movq	xmm0, r14
	lea	rbp, [r9 - 4]
	mov	rax, rbp
	shr	rax, 2
	lea	esi, [rax + 1]
	and	esi, 3
	xor	edi, edi
	cmp	rbp, 0xc
	jae	.label_1659
	pxor	xmm1, xmm1
	jmp	.label_1666
.label_1644:
	mov	dword ptr [r15], 0
.label_1680:
	xor	ebp, ebp
	jmp	.label_1676
.label_1669:
	xor	r9d, r9d
	jmp	.label_1652
.label_1659:
	lea	rbp, [rsi - 1]
	sub	rbp, rax
	pxor	xmm1, xmm1
	xor	edi, edi
	nop	word ptr cs:[rax + rax]
.label_1674:
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
	jne	.label_1674
.label_1666:
	test	rsi, rsi
	je	.label_1684
	lea	rdi, [rcx + rdi*8 + 0x10]
	neg	rsi
	nop	word ptr cs:[rax + rax]
.label_1649:
	movdqu	xmm2, xmmword ptr [rdi - 0x10]
	movdqu	xmm3, xmmword ptr [rdi]
	paddq	xmm0, xmm2
	paddq	xmm1, xmm3
	add	rdi, 0x20
	inc	rsi
	jne	.label_1649
.label_1684:
	paddq	xmm0, xmm1
	pshufd	xmm1, xmm0, 0x4e
	paddq	xmm1, xmm0
	movq	r14, xmm1
	cmp	r8, r9
	je	.label_1651
.label_1652:
	mov	rsi, r8
	sub	rsi, r9
	lea	rcx, [rcx + r9*8]
	nop	dword ptr [rax + rax]
.label_1661:
	add	r14, qword ptr [rcx]
	add	rcx, 8
	dec	rsi
	jne	.label_1661
.label_1651:
	mov	rax, qword ptr [r13 + 0x40]
	mov	rcx, qword ptr [r13 + 0x88]
	and	rcx, r14
	lea	rcx, [rcx + rcx*2]
	mov	r10, qword ptr [rax + rcx*8]
	test	r10, r10
	jle	.label_1662
	mov	r9, qword ptr [rax + rcx*8 + 0x10]
	xor	esi, esi
	nop	
.label_1681:
	mov	rbp, qword ptr [r9 + rsi*8]
	cmp	qword ptr [rbp], r14
	jne	.label_1645
	movzx	eax, byte ptr [rbp + 0x68]
	and	eax, 0xf
	cmp	eax, r12d
	jne	.label_1645
	test	rdx, rdx
	je	.label_1645
	mov	rdi, qword ptr [rbp + 0x50]
	test	rdi, rdi
	je	.label_1645
	cmp	qword ptr [rdi + 8], r8
	jne	.label_1645
	mov	rax, r8
	nop	dword ptr [rax]
.label_1678:
	test	rax, rax
	jle	.label_1676
	mov	rcx, qword ptr [rdi + 0x10]
	mov	rbx, qword ptr [rcx + rax*8 - 8]
	mov	rcx, qword ptr [rdx + 0x10]
	cmp	rbx, qword ptr [rcx + rax*8 - 8]
	lea	rax, [rax - 1]
	je	.label_1678
	nop	word ptr cs:[rax + rax]
.label_1645:
	inc	rsi
	cmp	rsi, r10
	jl	.label_1681
.label_1662:
	mov	qword ptr [rsp + 8], rdx
	mov	edi, 0x70
	mov	esi, 1
	call	rpl_calloc
	mov	r9, rax
	test	r9, r9
	je	.label_1682
	mov	qword ptr [rsp + 0x20], r13
	mov	rax, r9
	add	rax, 8
	mov	rsi, qword ptr [rsp + 8]
	mov	rdi, qword ptr [rsi + 8]
	mov	qword ptr [r9 + 0x10], rdi
	mov	rbp, qword ptr [rsi + 8]
	test	rbp, rbp
	mov	qword ptr [rsp + 0x10], r9
	mov	qword ptr [rsp + 0x18], r15
	jle	.label_1647
	mov	r13, rax
	mov	qword ptr [r9 + 8], rdi
	shl	rdi, 3
	call	malloc
	mov	rdi, qword ptr [rsp + 0x10]
	mov	qword ptr [rdi + 0x18], rax
	test	rax, rax
	je	.label_1656
	mov	rbx, qword ptr [rsp + 8]
	mov	rsi, qword ptr [rbx + 0x10]
	shl	rbp, 3
	mov	rdi, rax
	mov	rdx, rbp
	call	memcpy
	mov	r9, qword ptr [rsp + 0x10]
	mov	rsi, rbx
	mov	rdi, qword ptr [rsp + 0x20]
	mov	r15, r13
	jmp	.label_1667
.label_1647:
	pxor	xmm0, xmm0
	movdqu	xmmword ptr [rax], xmm0
	mov	qword ptr [rax + 0x10], 0
	mov	rdi, qword ptr [rsp + 0x20]
	mov	r15, rax
.label_1667:
	mov	al, byte ptr [r9 + 0x68]
	mov	edx, r12d
	mov	ecx, r12d
	and	cl, 0xf
	and	al, 0xf0
	or	al, cl
	mov	byte ptr [r9 + 0x68], al
	mov	qword ptr [r9 + 0x50], r15
	cmp	qword ptr [rsi + 8], 0
	jle	.label_1672
	mov	ebp, edx
	and	ebp, 1
	mov	eax, edx
	and	eax, 2
	mov	dword ptr [rsp + 0x2c], eax
	and	edx, 4
	mov	dword ptr [rsp + 0x28], edx
	xor	r12d, r12d
	xor	r8d, r8d
	mov	qword ptr [rsp + 0x30], r15
	nop	dword ptr [rax]
.label_1670:
	mov	rax, qword ptr [rdi]
	mov	rcx, qword ptr [rsi + 0x10]
	mov	rcx, qword ptr [rcx + r12*8]
	shl	rcx, 4
	mov	edx, dword ptr [rax + rcx + 8]
	mov	r13d, edx
	shr	r13d, 8
	mov	ecx, r13d
	and	ecx, 0x3ff
	cmp	dl, 1
	jne	.label_1673
	test	ecx, ecx
	je	.label_1650
.label_1673:
	mov	esi, edx
	shr	esi, 0x14
	mov	bl, byte ptr [r9 + 0x68]
	mov	eax, ebx
	shr	al, 5
	movzx	eax, al
	or	eax, esi
	shl	al, 5
	and	al, 0x20
	and	bl, 0xdf
	or	bl, al
	mov	byte ptr [r9 + 0x68], bl
	cmp	dl, 4
	je	.label_1665
	cmp	dl, 2
	jne	.label_1654
	or	bl, 0x10
	jmp	.label_1655
.label_1665:
	or	bl, 0x40
.label_1655:
	mov	byte ptr [r9 + 0x68], bl
.label_1654:
	test	ecx, ecx
	je	.label_1658
	cmp	qword ptr [r9 + 0x50], r15
	jne	.label_1660
	mov	edi, 0x18
	call	malloc
	mov	r9, qword ptr [rsp + 0x10]
	mov	rbx, rax
	mov	qword ptr [r9 + 0x50], rbx
	test	rbx, rbx
	je	.label_1663
	mov	rax, qword ptr [rsp + 8]
	mov	r15, qword ptr [rax + 8]
	mov	qword ptr [rbx + 8], r15
	test	r15, r15
	jle	.label_1668
	mov	qword ptr [rbx], r15
	shl	r15, 3
	mov	rdi, r15
	call	malloc
	mov	qword ptr [rbx + 0x10], rax
	test	rax, rax
	je	.label_1671
	mov	rcx, qword ptr [rsp + 8]
	mov	rsi, qword ptr [rcx + 0x10]
	mov	rdi, rax
	mov	rdx, r15
	call	memcpy
	mov	r9, qword ptr [rsp + 0x10]
	jmp	.label_1677
.label_1658:
	mov	rsi, qword ptr [rsp + 8]
	jmp	.label_1650
.label_1668:
	pxor	xmm0, xmm0
	movdqu	xmmword ptr [rbx], xmm0
	mov	qword ptr [rbx + 0x10], 0
.label_1677:
	mov	r15, qword ptr [rsp + 0x30]
	or	byte ptr [r9 + 0x68], 0x80
	xor	r8d, r8d
	mov	rdi, qword ptr [rsp + 0x20]
.label_1660:
	test	ebp, ebp
	mov	rsi, qword ptr [rsp + 8]
	jne	.label_1683
	mov	eax, r13d
	and	eax, 1
	jne	.label_1648
.label_1683:
	test	ebp, ebp
	je	.label_1685
	mov	eax, r13d
	and	eax, 2
	jne	.label_1648
.label_1685:
	cmp	dword ptr [rsp + 0x2c], 0
	jne	.label_1646
	mov	eax, r13d
	and	eax, 0x10
	jne	.label_1648
.label_1646:
	cmp	dword ptr [rsp + 0x28], 0
	jne	.label_1650
	and	r13d, 0x40
	je	.label_1650
	nop	word ptr cs:[rax + rax]
.label_1648:
	mov	rax, r12
	sub	rax, r8
	js	.label_1653
	mov	rcx, qword ptr [r9 + 0x10]
	cmp	rcx, rax
	jle	.label_1653
	dec	rcx
	mov	qword ptr [r9 + 0x10], rcx
	cmp	rcx, rax
	jle	.label_1653
	lea	rax, [r12*8]
	add	rax, qword ptr [r9 + 0x18]
	mov	rcx, r8
	neg	rcx
	nop	
.label_1664:
	mov	rdx, qword ptr [rax + rcx*8 + 8]
	mov	qword ptr [rax + rcx*8], rdx
	lea	rdx, [r12 + rcx + 1]
	inc	rcx
	cmp	rdx, qword ptr [r9 + 0x10]
	jl	.label_1664
	nop	word ptr [rax + rax]
.label_1653:
	inc	r8
.label_1650:
	inc	r12
	cmp	r12, qword ptr [rsi + 8]
	jl	.label_1670
.label_1672:
	mov	rsi, r9
	mov	rdx, r14
	call	register_state
	mov	rbp, qword ptr [rsp + 0x10]
	test	eax, eax
	jne	.label_1675
.label_1676:
	mov	rax, rbp
	add	rsp, 0x38
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_1663:
	mov	rdi, r9
	jmp	.label_1657
.label_1671:
	pxor	xmm0, xmm0
	movdqu	xmmword ptr [rbx], xmm0
	jmp	.label_1679
.label_1675:
	mov	rdi, rbp
.label_1657:
	call	free_state
.label_1679:
	mov	r15, qword ptr [rsp + 0x18]
.label_1682:
	mov	dword ptr [r15], 0xc
	jmp	.label_1680
.label_1656:
	call	free
	jmp	.label_1682
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x410cf0

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
	je	.label_1688
	test	r13, r13
	jle	.label_1690
	xor	ebp, ebp
	nop	dword ptr [rax]
.label_1687:
	mov	rcx, qword ptr [rbx + 0x18]
	mov	r14, qword ptr [rcx + rbp*8]
	mov	rcx, qword ptr [r12]
	mov	rdx, r14
	shl	rdx, 4
	test	byte ptr [rcx + rdx + 8], 8
	jne	.label_1686
	mov	rdx, qword ptr [rbx + 0x20]
	mov	rcx, qword ptr [rbx + 0x28]
	cmp	rdx, rcx
	jne	.label_1692
	lea	rcx, [rdx + rdx + 2]
	lea	rdx, [rdx + rdx]
	mov	qword ptr [rbx + 0x20], rcx
	lea	rsi, [rdx*8 + 0x10]
	mov	rdi, rax
	call	realloc
	test	rax, rax
	je	.label_1691
	mov	qword ptr [rbx + 0x30], rax
	mov	rcx, qword ptr [rbx + 0x28]
.label_1692:
	lea	rdx, [rcx + 1]
	mov	qword ptr [rbx + 0x28], rdx
	mov	qword ptr [rax + rcx*8], r14
	mov	r13, qword ptr [rbx + 0x10]
.label_1686:
	inc	rbp
	cmp	rbp, r13
	jl	.label_1687
.label_1690:
	mov	r13, qword ptr [r12 + 0x40]
	and	r15, qword ptr [r12 + 0x88]
	lea	rbp, [r15 + r15*2]
	lea	r14, [r13 + rbp*8]
	mov	r15, qword ptr [r13 + rbp*8]
	cmp	qword ptr [r13 + rbp*8 + 8], r15
	jle	.label_1689
	mov	rax, qword ptr [r13 + rbp*8 + 0x10]
.label_1693:
	lea	rcx, [r15 + 1]
	mov	qword ptr [r14], rcx
	mov	qword ptr [rax + r15*8], rbx
	xor	ecx, ecx
.label_1688:
	mov	eax, ecx
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_1691:
	mov	ecx, 0xc
	jmp	.label_1688
.label_1689:
	lea	rax, [r15 + r15]
	mov	rdi, qword ptr [r13 + rbp*8 + 0x10]
	lea	rsi, [rax*8 + 0x10]
	call	realloc
	test	rax, rax
	mov	ecx, 0xc
	je	.label_1688
	lea	rcx, [r13 + rbp*8 + 8]
	lea	rdx, [r15 + r15 + 2]
	mov	qword ptr [rcx + 8], rax
	mov	qword ptr [rcx], rdx
	mov	r15, qword ptr [r14]
	jmp	.label_1693
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x410e30

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
	jle	.label_1711
	cmp	dword ptr [rbx + 0x90], 2
	jl	.label_1722
	mov	qword ptr [rbx + 0x20], 0
.label_1722:
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
	jne	.label_1728
	mov	rax, qword ptr [rbx]
	mov	qword ptr [rbx + 8], rax
	xor	eax, eax
	mov	r14, r12
.label_1728:
	test	r14, r14
	je	.label_1707
	mov	rbp, qword ptr [rbx + 0x38]
	cmp	r14, rbp
	jge	.label_1730
	cmp	byte ptr [rbx + 0x8c], 0
	jne	.label_1749
	lea	rsi, [r14 - 1]
	mov	rdi, rbx
	mov	edx, r15d
	call	re_string_context_at
	mov	dword ptr [rbx + 0x70], eax
	cmp	dword ptr [rbx + 0x90], 2
	jl	.label_1729
	mov	rdi, qword ptr [rbx + 0x10]
	mov	rdx, qword ptr [rbx + 0x30]
	lea	rsi, [rdi + r14*4]
	sub	rdx, r14
	shl	rdx, 2
	call	memmove
.label_1729:
	cmp	byte ptr [rbx + 0x8b], 0
	jne	.label_1699
.label_1742:
	sub	qword ptr [rbx + 0x30], r14
	sub	qword ptr [rbx + 0x38], r14
.label_1698:
	cmp	byte ptr [rbx + 0x8b], 0
	jne	.label_1707
	add	qword ptr [rbx + 8], r14
.label_1707:
	mov	qword ptr [rbx + 0x28], r12
	mov	rdx, qword ptr [rbx + 0x58]
	sub	rdx, r14
	mov	qword ptr [rbx + 0x58], rdx
	sub	qword ptr [rbx + 0x68], r14
	cmp	dword ptr [rbx + 0x90], 2
	jl	.label_1710
	cmp	byte ptr [rbx + 0x88], 0
	je	.label_1719
	mov	rdi, rbx
	call	build_wcs_upper_buffer
	test	eax, eax
	jne	.label_1723
	jmp	.label_1724
.label_1710:
	cmp	byte ptr [rbx + 0x8b], 0
	jne	.label_1726
	mov	qword ptr [rbx + 0x30], rdx
	jmp	.label_1724
.label_1719:
	mov	rdi, rbx
	call	build_wcs_buffer
.label_1724:
	mov	qword ptr [rbx + 0x48], 0
	xor	eax, eax
.label_1723:
	add	rsp, 0x38
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_1711:
	mov	r14, r12
	sub	r14, rax
	jmp	.label_1728
.label_1730:
	mov	rcx, qword ptr [rbx + 0x30]
	mov	qword ptr [rsp + 0x20], rcx
	movzx	r8d, word ptr [rbx + 0x8c]
	test	r8b, r8b
	jne	.label_1740
.label_1735:
	mov	qword ptr [rbx + 0x30], 0
	movsxd	rdi, dword ptr [rbx + 0x90]
	cmp	rdi, 2
	jl	.label_1745
	cmp	byte ptr [rbx + 0x89], 0
	je	.label_1750
	mov	r10, qword ptr [rbx]
	lea	rdx, [r10 + rax]
	mov	rsi, r14
	sub	rsi, rdi
	add	rsi, rdx
	cmp	rsi, r10
	cmovb	rsi, r10
	lea	r8, [rdx + r14]
	add	r10, r14
.label_1717:
	lea	rdi, [r10 + rax - 1]
	cmp	rdi, rsi
	jb	.label_1750
	movzx	ecx, byte ptr [rax + r10 - 1]
	and	cl, 0xc0
	dec	r10
	cmp	cl, 0x80
	je	.label_1717
	mov	qword ptr [rsp], r8
	add	rdx, qword ptr [rbx + 0x58]
	lea	rbp, [r10 + rax]
	sub	rdx, rbp
	mov	rdi, qword ptr [rbx + 0x78]
	test	rdi, rdi
	mov	rsi, rbp
	jne	.label_1703
.label_1697:
	mov	qword ptr [rsp + 8], 0
	lea	rdi, [rsp + 0x14]
	lea	rcx, [rsp + 8]
	call	rpl_mbrtowc
	mov	rdx, qword ptr [rsp]
	sub	rdx, rbp
	mov	esi, 0xffffffff
	mov	rcx, rax
	sub	rcx, rdx
	jb	.label_1720
	cmp	rax, -3
	ja	.label_1720
	mov	qword ptr [rbx + 0x20], 0
	mov	qword ptr [rbx + 0x30], rcx
	mov	esi, dword ptr [rsp + 0x14]
.label_1720:
	mov	edx, esi
	cmp	edx, -1
	jne	.label_1733
	mov	rax, qword ptr [rbx + 0x28]
	mov	rbp, qword ptr [rbx + 0x38]
.label_1750:
	add	rbp, rax
	mov	rax, rbp
	sub	rax, r12
	jge	.label_1737
	lea	rax, [rbx + 0x20]
	mov	qword ptr [rsp], rax
	jmp	.label_1705
.label_1749:
	mov	r8, qword ptr [rbx + 0x18]
	mov	rdx, qword ptr [rbx + 0x30]
	xor	ecx, ecx
	mov	qword ptr [rsp], rdx
.label_1753:
	lea	rsi, [rcx + rdx]
	mov	rax, rsi
	shr	rax, 0x3f
	add	rax, rsi
	sar	rax, 1
	mov	rsi, qword ptr [r8 + rax*8]
	cmp	rsi, r14
	mov	rdi, rax
	jg	.label_1746
	jge	.label_1756
	lea	rcx, [rax + 1]
	mov	rdi, rdx
.label_1746:
	cmp	rcx, rdi
	mov	rdx, rdi
	jl	.label_1753
.label_1756:
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
	jle	.label_1708
	cmp	rbp, r14
	jne	.label_1708
	cmp	qword ptr [rsi + r14*8], r14
	jne	.label_1708
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
	jle	.label_1698
	mov	rax, qword ptr [rbx + 0x18]
	lea	rcx, [rax + r14*8]
	xor	edx, edx
.label_1706:
	mov	rsi, qword ptr [rcx + rdx*8]
	sub	rsi, r14
	mov	qword ptr [rax + rdx*8], rsi
	inc	rdx
	cmp	rdx, qword ptr [rbx + 0x30]
	jl	.label_1706
	jmp	.label_1698
.label_1699:
	mov	rdi, qword ptr [rbx + 8]
	mov	rdx, qword ptr [rbx + 0x30]
	sub	rdx, r14
	lea	rsi, [rdi + r14]
	call	memmove
	jmp	.label_1742
.label_1708:
	mov	rax, r14
	sub	rax, r12
	mov	rcx, qword ptr [rbx + 0x50]
	add	rcx, rax
	mov	qword ptr [rbx + 0x58], rcx
	add	rax, qword ptr [rbx + 0x60]
	mov	qword ptr [rbx + 0x68], rax
	mov	byte ptr [rbx + 0x8c], 0
.label_1743:
	mov	rax, rbp
	test	rax, rax
	jle	.label_1751
	lea	rbp, [rax - 1]
	cmp	qword ptr [rsi + rax*8 - 8], r14
	je	.label_1743
.label_1751:
	cmp	rax, rdi
	jge	.label_1741
	mov	rcx, qword ptr [rbx + 0x10]
.label_1754:
	cmp	dword ptr [rcx + rax*4], -1
	jne	.label_1741
	inc	rax
	cmp	rax, rdi
	jl	.label_1754
.label_1741:
	cmp	rax, rdi
	jne	.label_1694
	mov	qword ptr [rbx + 0x30], 0
	xor	eax, eax
	mov	qword ptr [rbx + 0x38], rax
	jmp	.label_1698
.label_1726:
	cmp	byte ptr [rbx + 0x88], 0
	je	.label_1704
	mov	r15, qword ptr [rbx + 0x30]
	mov	r14, qword ptr [rbx + 0x40]
	cmp	r14, rdx
	cmovg	r14, rdx
	cmp	r15, r14
	jl	.label_1709
	jmp	.label_1714
.label_1732:
	mov	r12, qword ptr [r13]
.label_1709:
	inc	r15
	add	r12, qword ptr [rbx]
	movzx	eax, byte ptr [r15 + r12 - 1]
	movzx	ecx, al
	mov	rdx, qword ptr [rbx + 0x78]
	test	rdx, rdx
	jne	.label_1718
.label_1736:
	movzx	ebp, al
	mov	eax, ebp
	sub	eax, -0x80
	cmp	eax, 0x17f
	ja	.label_1725
	call	__ctype_toupper_loc
	mov	rax, qword ptr [rax]
	mov	ebp, dword ptr [rax + rbp*4]
.label_1725:
	mov	rax, qword ptr [rbx + 8]
	mov	byte ptr [rax + r15 - 1], bpl
	cmp	r15, r14
	jl	.label_1732
	jmp	.label_1734
.label_1718:
	movzx	eax, byte ptr [rdx + rcx]
	jmp	.label_1736
.label_1745:
	add	rax, r14
	mov	rdx, qword ptr [rbx]
	mov	cl, byte ptr [rdx + rax - 1]
	movzx	edx, cl
	mov	qword ptr [rbx + 0x38], 0
	mov	rsi, qword ptr [rbx + 0x78]
	test	rsi, rsi
	je	.label_1738
	mov	cl, byte ptr [rsi + rdx]
.label_1738:
	mov	rdx, qword ptr [rbx + 0x80]
	mov	eax, ecx
	shr	al, 6
	movzx	eax, al
	mov	rax, qword ptr [rdx + rax*8]
	mov	edx, 1
	movzx	esi, cl
	bt	rax, rsi
	jb	.label_1712
	xor	edx, edx
	cmp	cl, 0xa
	jne	.label_1712
	movzx	eax, r8w
	xor	edx, edx
	cmp	eax, 0xff
	seta	dl
	add	edx, edx
.label_1712:
	mov	dword ptr [rbx + 0x70], edx
	jmp	.label_1698
.label_1694:
	mov	rbp, qword ptr [rsi + rax*8]
	sub	rbp, r14
	mov	qword ptr [rbx + 0x30], rbp
	xor	eax, eax
	test	rbp, rbp
	je	.label_1744
	jle	.label_1696
	mov	rdi, qword ptr [rbx + 0x10]
	lea	rdx, [rbp*4]
	mov	esi, 0xff
	call	memset
.label_1696:
	mov	rdi, qword ptr [rbx + 8]
	mov	esi, 0xff
	mov	rdx, rbp
	call	memset
	mov	rax, qword ptr [rbx + 0x30]
.label_1744:
	mov	qword ptr [rbx + 0x38], rax
	jmp	.label_1698
.label_1737:
	mov	rbp, rax
	mov	qword ptr [rbx + 0x30], rax
	jmp	.label_1713
.label_1704:
	mov	rsi, qword ptr [rbx + 0x78]
	test	rsi, rsi
	je	.label_1724
	mov	rax, qword ptr [rbx + 0x30]
	mov	rcx, qword ptr [rbx + 0x40]
	cmp	rcx, rdx
	cmovg	rcx, rdx
	cmp	rax, rcx
	jge	.label_1721
	add	r12, rax
	mov	rdx, qword ptr [rbx]
	mov	rdi, qword ptr [rbx + 8]
	movzx	edx, byte ptr [rdx + r12]
	mov	dl, byte ptr [rsi + rdx]
	jmp	.label_1727
.label_1739:
	mov	rdx, qword ptr [rbx + 0x78]
	mov	rsi, qword ptr [rbx]
	mov	rdi, qword ptr [rbx + 8]
	add	rsi, qword ptr [rbx + 0x28]
	movzx	esi, byte ptr [rax + rsi]
	movzx	edx, byte ptr [rdx + rsi]
.label_1727:
	mov	byte ptr [rdi + rax], dl
	inc	rax
	cmp	rax, rcx
	jl	.label_1739
	mov	rax, rcx
.label_1721:
	mov	qword ptr [rbx + 0x30], rax
	mov	qword ptr [rbx + 0x38], rax
	jmp	.label_1724
.label_1734:
	mov	r15, r14
.label_1714:
	mov	qword ptr [rbx + 0x30], r15
	mov	qword ptr [rbx + 0x38], r15
	jmp	.label_1724
.label_1701:
	mov	rcx, qword ptr [rsp + 0x28]
	xor	edx, edx
	cmp	qword ptr [rsp + 0x30], 0
	je	.label_1747
	test	rax, rax
	je	.label_1747
	mov	rax, qword ptr [rbx]
	movzx	edx, byte ptr [rax + rbp]
.label_1747:
	mov	rax, qword ptr [rsp]
	mov	qword ptr [rax], rcx
	mov	eax, 1
	jmp	.label_1702
.label_1705:
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
	jae	.label_1701
	mov	edx, dword ptr [rsp + 8]
.label_1702:
	add	rbp, rax
	mov	rax, rbp
	sub	rax, r12
	jl	.label_1705
	mov	rbp, rax
	mov	qword ptr [rbx + 0x30], rax
	cmp	edx, -1
	je	.label_1713
.label_1733:
	cmp	byte ptr [rbx + 0x8e], 0
	jne	.label_1715
.label_1755:
	xor	ecx, ecx
	cmp	edx, 0xa
	jne	.label_1695
	xor	ecx, ecx
	cmp	byte ptr [rbx + 0x8d], 0
	setne	cl
	add	ecx, ecx
.label_1695:
	mov	dword ptr [rbx + 0x70], ecx
	mov	rbp, qword ptr [rbx + 0x30]
	jmp	.label_1752
.label_1713:
	mov	rsi, qword ptr [rsp + 0x20]
	dec	rsi
	mov	rdi, rbx
	mov	edx, r15d
	call	re_string_context_at
	mov	dword ptr [rbx + 0x70], eax
.label_1752:
	test	rbp, rbp
	jne	.label_1731
.label_1748:
	mov	rax, qword ptr [rbx + 0x30]
	mov	qword ptr [rbx + 0x38], rax
	jmp	.label_1698
.label_1740:
	mov	rdx, r14
	sub	rdx, r12
	mov	rsi, qword ptr [rbx + 0x50]
	add	rsi, rdx
	mov	qword ptr [rbx + 0x58], rsi
	add	rdx, qword ptr [rbx + 0x60]
	mov	qword ptr [rbx + 0x68], rdx
	mov	byte ptr [rbx + 0x8c], 0
	jmp	.label_1735
.label_1731:
	jle	.label_1700
	mov	rdi, qword ptr [rbx + 0x10]
	lea	rdx, [rbp*4]
	mov	esi, 0xff
	call	memset
.label_1700:
	cmp	byte ptr [rbx + 0x8b], 0
	mov	rdx, rbp
	je	.label_1748
	mov	rdi, qword ptr [rbx + 8]
	mov	esi, 0xff
	call	memset
	jmp	.label_1748
.label_1715:
	mov	ebp, edx
	mov	edi, ebp
	call	iswalnum
	mov	edx, ebp
	cmp	ebp, 0x5f
	mov	ecx, 1
	je	.label_1695
	test	eax, eax
	je	.label_1755
	jmp	.label_1695
.label_1703:
	lea	rsi, [rsp + 0x1a]
	cmp	rdx, 7
	mov	r8d, 6
	cmovl	r8, rdx
	cmp	rdx, 6
	mov	ecx, 6
	cmovl	ecx, edx
	test	ecx, ecx
	jle	.label_1697
	movsxd	r8, r8d
	lea	r9, [rsp + r8 + 0x19]
	add	rax, r8
	lea	r10, [r10 + rax - 1]
	xor	ecx, ecx
.label_1716:
	movzx	eax, byte ptr [r10 + rcx]
	movzx	eax, byte ptr [rdi + rax]
	mov	byte ptr [r9 + rcx], al
	lea	rax, [r8 + rcx - 1]
	dec	rcx
	inc	rax
	cmp	rax, 1
	jg	.label_1716
	jmp	.label_1697
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x411570

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
	jle	.label_1759
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
.label_1758:
	mov	rcx, qword ptr [r11 + rbx*8]
	mov	rdx, rcx
	shl	rdx, 4
	mov	esi, dword ptr [rdi + rdx + 8]
	cmp	sil, 2
	jne	.label_1757
	shr	esi, 8
	test	si, 0x3ff
	je	.label_1759
	test	r9d, r9d
	jne	.label_1762
	mov	edx, esi
	and	edx, 4
	jne	.label_1757
.label_1762:
	test	r9d, r9d
	je	.label_1760
	mov	edx, esi
	and	edx, 8
	jne	.label_1757
.label_1760:
	test	r8d, r8d
	jne	.label_1761
	mov	edx, esi
	and	edx, 0x20
	jne	.label_1757
.label_1761:
	test	eax, eax
	jne	.label_1759
	test	sil, sil
	jns	.label_1759
	nop	dword ptr [rax]
.label_1757:
	inc	rbx
	cmp	rbx, r10
	mov	ecx, 0
	jl	.label_1758
.label_1759:
	mov	rax, rcx
	add	rsp, 8
	pop	rbx
	pop	r14
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x411630

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
	jle	.label_1765
	xor	r12d, r12d
	nop	dword ptr [rax]
.label_1767:
	mov	rax, qword ptr [r14 + 0xf8]
	mov	r15, qword ptr [rax + r12*8]
	cmp	qword ptr [r15 + 0x20], 0
	jle	.label_1763
	xor	ebx, ebx
	nop	word ptr cs:[rax + rax]
.label_1764:
	mov	rax, qword ptr [r15 + 0x28]
	mov	r13, qword ptr [rax + rbx*8]
	mov	rdi, qword ptr [r13 + 0x20]
	call	free
	mov	rdi, r13
	call	free
	inc	rbx
	cmp	rbx, qword ptr [r15 + 0x20]
	jl	.label_1764
.label_1763:
	mov	rdi, qword ptr [r15 + 0x28]
	call	free
	mov	rax, qword ptr [r15 + 0x10]
	test	rax, rax
	je	.label_1766
	mov	rdi, qword ptr [rax + 0x10]
	call	free
	mov	rdi, qword ptr [r15 + 0x10]
	call	free
.label_1766:
	mov	rdi, r15
	call	free
	inc	r12
	cmp	r12, qword ptr [r14 + 0xe8]
	jl	.label_1767
.label_1765:
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
	#Procedure 0x4116f0

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
	mov	r13, qword ptr [rdi]
	mov	rax, qword ptr [rip + label_1800]
	mov	qword ptr [rbp - 0xa0], rax
	movups	xmm0, xmmword ptr [rip + label_1801]
	movaps	xmmword ptr [rbp - 0xb0], xmm0
	xor	eax, eax
	test	r8b, r8b
	je	.label_1802
	mov	edi, 0x60
	call	malloc
	mov	qword ptr [rbp - 0xa0], rax
	mov	r14d, 0xc
	test	rax, rax
	je	.label_1776
	lea	rax, [rbp - 0xb0]
.label_1802:
	mov	qword ptr [rbp - 0x38], rax
	mov	qword ptr [rbp - 0x90], r13
	mov	r13, qword ptr [r13 + 0x90]
	xorps	xmm0, xmm0
	movaps	xmmword ptr [rbp - 0x70], xmm0
	mov	qword ptr [rbp - 0x60], 0
	mov	rdx, rbx
	shl	rdx, 4
	cmp	rdx, 0xfbf
	ja	.label_1810
	mov	rdi, rsp
	lea	rax, [rdx + 0xf]
	and	rax, 0xfffffffffffffff0
	sub	rdi, rax
	mov	rsp, rdi
	mov	dword ptr [rbp - 0x2c], 0
	jmp	.label_1808
.label_1810:
	mov	r14, rdx
	mov	rdi, rdx
	call	malloc
	mov	rdi, rax
	test	rdi, rdi
	je	.label_1806
	mov	al, 1
	mov	dword ptr [rbp - 0x2c], eax
	mov	rdx, r14
.label_1808:
	mov	qword ptr [rbp - 0x40], rdi
	mov	rsi, r15
	mov	qword ptr [rbp - 0x58], rdx
	call	memcpy
	mov	r14, qword ptr [r15]
	xor	edi, edi
	cmp	r14, qword ptr [r15 + 8]
	jg	.label_1830
	lea	rax, [r15 + 8]
	mov	qword ptr [rbp - 0x80], rax
	mov	qword ptr [rbp - 0x88], rbx
	mov	qword ptr [rbp - 0x48], r12
	mov	qword ptr [rbp - 0x78], r15
	jmp	.label_1788
.label_1774:
	test	r13, r13
	mov	r14, qword ptr [rbp - 0x50]
	je	.label_1789
.label_1787:
	mov	r14, qword ptr [r13]
	lea	rax, [r14 + 1]
	mov	qword ptr [r13], rax
	cmp	rax, qword ptr [r13 + 8]
	jne	.label_1772
	mov	rdi, qword ptr [r13 + 0x10]
	shl	rax, 5
	lea	rsi, [rax + rax*2]
	call	realloc
	mov	r13, rax
	test	r13, r13
	je	.label_1779
	mov	rax, qword ptr [rbp - 0x38]
	shl	qword ptr [rax + 8], 1
	mov	qword ptr [rax + 0x10], r13
	jmp	.label_1824
.label_1772:
	mov	r13, qword ptr [r13 + 0x10]
.label_1824:
	lea	r14, [r14 + r14*2]
	shl	r14, 4
	mov	rax, qword ptr [rbp - 0x50]
	mov	qword ptr [r13 + r14], rax
	mov	qword ptr [r13 + r14 + 8], rbx
	mov	rdi, qword ptr [rbp - 0x58]
	call	malloc
	mov	qword ptr [r13 + r14 + 0x10], rax
	test	rax, rax
	je	.label_1779
	mov	rdi, rax
	mov	rsi, qword ptr [rbp - 0x78]
	mov	rdx, qword ptr [rbp - 0x58]
	call	memcpy
	lea	rbx, [r13 + r14 + 0x18]
	mov	qword ptr [r13 + r14 + 0x20], r15
	test	r15, r15
	jle	.label_1790
	mov	qword ptr [rbx], r15
	shl	r15, 3
	mov	rdi, r15
	call	malloc
	mov	qword ptr [r13 + r14 + 0x28], rax
	test	rax, rax
	je	.label_1795
	mov	rsi, qword ptr [rbp - 0x60]
	mov	rdi, rax
	mov	rdx, r15
	call	memcpy
	mov	r14, qword ptr [rbp - 0x50]
	jmp	.label_1789
.label_1790:
	xorps	xmm0, xmm0
	movups	xmmword ptr [rbx], xmm0
	mov	qword ptr [rbx + 0x10], 0
	mov	r14, qword ptr [rbp - 0x50]
	jmp	.label_1789
.label_1783:
	mov	r12, rax
	jmp	.label_1789
	nop	dword ptr [rax]
.label_1788:
	mov	rax, qword ptr [rbp - 0x90]
	mov	rcx, qword ptr [rax]
	mov	rdx, r13
	shl	rdx, 4
	lea	rax, [rcx + rdx]
	mov	ecx, dword ptr [rcx + rdx + 8]
	cmp	cl, 9
	je	.label_1820
	cmp	cl, 8
	jne	.label_1804
	mov	rax, qword ptr [rax]
	inc	rax
	cmp	rax, rbx
	jge	.label_1804
	shl	rax, 4
	mov	qword ptr [r15 + rax], r14
	mov	qword ptr [r15 + rax + 8], -1
	jmp	.label_1804
	nop	word ptr cs:[rax + rax]
.label_1820:
	mov	rax, qword ptr [rax]
	inc	rax
	cmp	rax, rbx
	jge	.label_1804
	shl	rax, 4
	cmp	qword ptr [r15 + rax], r14
	jge	.label_1826
	mov	qword ptr [r15 + rax + 8], r14
	mov	rdi, qword ptr [rbp - 0x40]
	mov	rsi, r15
	jmp	.label_1797
.label_1826:
	test	ecx, 0x80000
	je	.label_1811
	mov	rcx, qword ptr [rbp - 0x40]
	cmp	qword ptr [rcx + rax], -1
	je	.label_1811
	mov	rdi, r15
	mov	rsi, qword ptr [rbp - 0x40]
.label_1797:
	mov	rdx, qword ptr [rbp - 0x58]
	call	memcpy
	jmp	.label_1804
.label_1811:
	mov	qword ptr [r15 + rax + 8], r14
	nop	dword ptr [rax]
.label_1804:
	cmp	r14, qword ptr [r15 + 8]
	jne	.label_1816
	cmp	r13, qword ptr [r12 + 0xb0]
	jne	.label_1816
	mov	r15, qword ptr [rbp - 0x38]
	test	r15, r15
	je	.label_1821
	test	rbx, rbx
	mov	eax, 0
	je	.label_1825
	mov	rcx, qword ptr [rbp - 0x80]
	xor	eax, eax
	nop	word ptr cs:[rax + rax]
.label_1832:
	cmp	qword ptr [rcx - 8], 0
	js	.label_1828
	cmp	qword ptr [rcx], -1
	je	.label_1825
.label_1828:
	inc	rax
	add	rcx, 0x10
	cmp	rax, rbx
	jb	.label_1832
.label_1825:
	cmp	rax, rbx
	je	.label_1834
	mov	rcx, qword ptr [r15]
	lea	rax, [rcx - 1]
	mov	qword ptr [r15], rax
	test	rcx, rcx
	jle	.label_1771
	mov	rcx, qword ptr [r15 + 0x10]
	shl	rax, 4
	lea	rbx, [rax + rax*2]
	mov	r14, qword ptr [rcx + rbx]
	mov	rsi, qword ptr [rcx + rbx + 0x10]
	mov	rdi, qword ptr [rbp - 0x78]
	mov	rdx, qword ptr [rbp - 0x58]
	call	memcpy
	mov	rdi, qword ptr [rbp - 0x60]
	call	free
	mov	rax, qword ptr [r15 + 0x10]
	mov	rdi, qword ptr [rax + rbx + 0x10]
	call	free
	mov	rax, qword ptr [r15 + 0x10]
	mov	rcx, qword ptr [rax + rbx + 0x28]
	mov	qword ptr [rbp - 0x60], rcx
	movups	xmm0, xmmword ptr [rax + rbx + 0x18]
	movaps	xmmword ptr [rbp - 0x70], xmm0
	mov	r13, qword ptr [rax + rbx + 8]
.label_1816:
	mov	r15, qword ptr [r12 + 0x98]
	mov	rax, qword ptr [r15]
	mov	rbx, r13
	shl	rbx, 4
	mov	ecx, dword ptr [rax + rbx + 8]
	test	cl, 8
	jne	.label_1775
	test	ecx, 0x100000
	jne	.label_1786
	movzx	ecx, cl
	cmp	ecx, 4
	jne	.label_1773
	mov	rax, qword ptr [rax + rbx]
	shl	rax, 4
	mov	rcx, qword ptr [rbp - 0x78]
	mov	rdi, qword ptr [rcx + rax + 0x10]
	mov	rax, qword ptr [rcx + rax + 0x18]
	mov	rdx, rax
	sub	rdx, rdi
	cmp	qword ptr [rbp - 0x38], 0
	je	.label_1792
	cmp	rax, -1
	mov	r12, r14
	je	.label_1796
	cmp	rdi, -1
	je	.label_1796
	test	rdx, rdx
	je	.label_1791
	mov	rax, qword ptr [rbp - 0x48]
	mov	rax, qword ptr [rax + 0x30]
	sub	rax, r12
	cmp	rax, rdx
	jl	.label_1796
	mov	rax, qword ptr [rbp - 0x48]
	mov	rsi, qword ptr [rax + 8]
	add	rdi, rsi
	add	rsi, r12
	mov	rbx, rdx
	call	memcmp
	mov	rdx, rbx
	test	eax, eax
	jne	.label_1796
	mov	rax, qword ptr [r15 + 0x18]
	mov	rcx, r12
	mov	r12, qword ptr [rax + r13*8]
	add	rdx, rcx
	jmp	.label_1781
	nop	
.label_1775:
	mov	rax, qword ptr [r12 + 0xb8]
	mov	qword ptr [rbp - 0x50], r14
	mov	r14, qword ptr [rax + r14*8]
	mov	rbx, qword ptr [r15 + 0x28]
	lea	rdi, [rbp - 0x70]
	mov	rsi, r13
	call	re_node_set_insert
	test	al, al
	je	.label_1779
	lea	rax, [r13 + r13*2]
	mov	r9, qword ptr [rbx + rax*8 + 8]
	test	r9, r9
	jle	.label_1809
	mov	r8, qword ptr [rbx + rax*8 + 0x10]
	mov	r11, qword ptr [r14 + 0x10]
	lea	r10, [r11 - 1]
	mov	r12, -1
	xor	r15d, r15d
	mov	r13, qword ptr [rbp - 0x38]
	nop	word ptr cs:[rax + rax]
.label_1829:
	test	r11, r11
	jle	.label_1813
	mov	rbx, qword ptr [r8 + r15*8]
	test	r10, r10
	mov	rcx, qword ptr [r14 + 0x18]
	mov	eax, 0
	je	.label_1814
	mov	rsi, r10
	xor	eax, eax
	nop	dword ptr [rax]
.label_1819:
	lea	rdx, [rax + rsi]
	shr	rdx, 1
	cmp	qword ptr [rcx + rdx*8], rbx
	lea	rdi, [rdx + 1]
	cmovl	rax, rdi
	cmovge	rsi, rdx
	cmp	rax, rsi
	jb	.label_1819
.label_1814:
	cmp	rax, -1
	je	.label_1813
	cmp	qword ptr [rcx + rax*8], rbx
	jne	.label_1813
	cmp	r12, -1
	jne	.label_1827
	mov	r12, rbx
.label_1813:
	inc	r15
	cmp	r15, r9
	jl	.label_1829
	mov	r14, qword ptr [rbp - 0x50]
	jmp	.label_1789
	nop	word ptr cs:[rax + rax]
.label_1786:
	mov	rdi, r15
	mov	rsi, r13
	mov	rdx, r12
	mov	rcx, r14
	call	check_node_accept_bytes
	movsxd	rdx, eax
.label_1805:
	test	rdx, rdx
	jne	.label_1769
	jmp	.label_1773
.label_1827:
	mov	r15, qword ptr [rbp - 0x68]
	test	r15, r15
	jle	.label_1774
	mov	rcx, r15
	dec	rcx
	mov	rax, qword ptr [rbp - 0x60]
	mov	edx, 0
	mov	r14, qword ptr [rbp - 0x50]
	je	.label_1777
	xor	edx, edx
	nop	word ptr cs:[rax + rax]
.label_1780:
	lea	rsi, [rdx + rcx]
	shr	rsi, 1
	cmp	qword ptr [rax + rsi*8], r12
	lea	rdi, [rsi + 1]
	cmovl	rdx, rdi
	cmovge	rcx, rsi
	cmp	rdx, rcx
	jb	.label_1780
.label_1777:
	cmp	rdx, -1
	setne	cl
	cmp	qword ptr [rax + rdx*8], r12
	sete	dl
	and	dl, cl
	mov	rax, r12
	cmovne	rax, rbx
	test	dl, dl
	jne	.label_1783
	test	r13, r13
	jne	.label_1787
	mov	r12, rax
	jmp	.label_1789
.label_1792:
	test	rdx, rdx
	mov	rcx, r14
	je	.label_1791
	mov	rax, qword ptr [r15 + 0x18]
	mov	r12, qword ptr [rax + r13*8]
	add	rdx, rcx
	jmp	.label_1793
.label_1791:
	lea	rdi, [rbp - 0x70]
	mov	rsi, r13
	mov	r12, rdx
	call	re_node_set_insert
	mov	rdx, r12
	test	al, al
	je	.label_1779
	mov	rax, qword ptr [rbp - 0x48]
	mov	rax, qword ptr [rax + 0xb8]
	mov	rcx, qword ptr [rax + r14*8]
	mov	rax, qword ptr [rcx + 0x10]
	test	rax, rax
	jle	.label_1773
	mov	rdi, qword ptr [r15 + 0x28]
	lea	rsi, [r13 + r13*2]
	mov	rsi, qword ptr [rdi + rsi*8 + 0x10]
	mov	r12, qword ptr [rsi]
	dec	rax
	mov	r8, qword ptr [rcx + 0x18]
	mov	ecx, 0
	je	.label_1798
	xor	ecx, ecx
	nop	word ptr [rax + rax]
.label_1803:
	lea	rsi, [rcx + rax]
	shr	rsi, 1
	cmp	qword ptr [r8 + rsi*8], r12
	lea	rdi, [rsi + 1]
	cmovl	rcx, rdi
	cmovge	rax, rsi
	cmp	rcx, rax
	jb	.label_1803
.label_1798:
	cmp	rcx, -1
	je	.label_1805
	cmp	qword ptr [r8 + rcx*8], r12
	je	.label_1789
	jmp	.label_1805
	nop	word ptr cs:[rax + rax]
.label_1773:
	add	rbx, qword ptr [r15]
	mov	rdi, qword ptr [rbp - 0x48]
	mov	rsi, rbx
	mov	rdx, r14
	call	check_node_accept
	test	al, al
	mov	edx, 1
	je	.label_1809
.label_1769:
	add	rdx, r14
	cmp	qword ptr [rbp - 0x38], 0
	mov	rax, qword ptr [r15 + 0x18]
	mov	r12, qword ptr [rax + r13*8]
	je	.label_1793
.label_1781:
	mov	rax, qword ptr [rbp - 0x48]
	cmp	rdx, qword ptr [rax + 0xa8]
	jg	.label_1796
	mov	rax, qword ptr [rbp - 0x48]
	mov	rax, qword ptr [rax + 0xb8]
	mov	rcx, qword ptr [rax + rdx*8]
	test	rcx, rcx
	je	.label_1796
	mov	rax, qword ptr [rcx + 0x10]
	test	rax, rax
	jle	.label_1796
	dec	rax
	mov	rcx, qword ptr [rcx + 0x18]
	mov	ebx, 0
	je	.label_1818
	xor	ebx, ebx
	nop	
.label_1823:
	lea	rsi, [rbx + rax]
	shr	rsi, 1
	cmp	qword ptr [rcx + rsi*8], r12
	lea	rdi, [rsi + 1]
	cmovl	rbx, rdi
	cmovge	rax, rsi
	cmp	rbx, rax
	jb	.label_1823
.label_1818:
	cmp	rbx, -1
	je	.label_1809
	cmp	qword ptr [rcx + rbx*8], r12
	jne	.label_1809
.label_1793:
	mov	qword ptr [rbp - 0x68], 0
	mov	r14, rdx
.label_1789:
	test	r12, r12
	mov	r15, qword ptr [rbp - 0x78]
	jns	.label_1833
	cmp	r12, -2
	je	.label_1779
	nop	word ptr [rax + rax]
.label_1809:
	cmp	qword ptr [rbp - 0x38], 0
	je	.label_1768
.label_1796:
	mov	rbx, qword ptr [rbp - 0x38]
	mov	rcx, qword ptr [rbx]
	lea	rax, [rcx - 1]
	mov	qword ptr [rbx], rax
	test	rcx, rcx
	jle	.label_1771
	mov	rcx, qword ptr [rbx + 0x10]
	shl	rax, 4
	lea	r14, [rax + rax*2]
	mov	r13, qword ptr [rcx + r14]
	mov	rsi, qword ptr [rcx + r14 + 0x10]
	mov	r15, qword ptr [rbp - 0x78]
	mov	rdi, r15
	mov	rdx, qword ptr [rbp - 0x58]
	call	memcpy
	mov	rdi, qword ptr [rbp - 0x60]
	call	free
	mov	rax, qword ptr [rbx + 0x10]
	mov	rdi, qword ptr [rax + r14 + 0x10]
	call	free
	mov	rax, qword ptr [rbx + 0x10]
	mov	rcx, qword ptr [rax + r14 + 0x28]
	mov	qword ptr [rbp - 0x60], rcx
	movups	xmm0, xmmword ptr [rax + r14 + 0x18]
	movaps	xmmword ptr [rbp - 0x70], xmm0
	mov	r12, qword ptr [rax + r14 + 8]
	mov	r14, r13
.label_1833:
	cmp	r14, qword ptr [r15 + 8]
	mov	r13, r12
	mov	rbx, qword ptr [rbp - 0x88]
	mov	r12, qword ptr [rbp - 0x48]
	jle	.label_1788
	mov	rdi, qword ptr [rbp - 0x60]
.label_1830:
	call	free
	mov	eax, dword ptr [rbp - 0x2c]
	test	al, al
	je	.label_1794
	mov	rdi, qword ptr [rbp - 0x40]
	call	free
.label_1794:
	xor	r14d, r14d
	mov	r12, qword ptr [rbp - 0x38]
	test	r12, r12
	je	.label_1776
	cmp	qword ptr [r12], 0
	jle	.label_1778
	xor	ebx, ebx
	xor	r15d, r15d
	nop	
.label_1799:
	mov	rax, qword ptr [r12 + 0x10]
	mov	rdi, qword ptr [rax + rbx + 0x28]
	call	free
	mov	rax, qword ptr [r12 + 0x10]
	mov	rdi, qword ptr [rax + rbx + 0x10]
	call	free
	inc	r15
	add	rbx, 0x30
	cmp	r15, qword ptr [r12]
	jl	.label_1799
	jmp	.label_1778
.label_1806:
	mov	r14d, 0xc
	mov	r12, qword ptr [rbp - 0x38]
	test	r12, r12
	je	.label_1776
	cmp	qword ptr [r12], 0
	jle	.label_1778
	xor	ebx, ebx
	xor	r15d, r15d
	nop	dword ptr [rax + rax]
.label_1807:
	mov	rax, qword ptr [r12 + 0x10]
	mov	rdi, qword ptr [rax + rbx + 0x28]
	call	free
	mov	rax, qword ptr [r12 + 0x10]
	mov	rdi, qword ptr [rax + rbx + 0x10]
	call	free
	inc	r15
	add	rbx, 0x30
	cmp	r15, qword ptr [r12]
	jl	.label_1807
.label_1778:
	mov	rdi, qword ptr [r12 + 0x10]
.label_1815:
	call	free
.label_1776:
	mov	eax, r14d
	lea	rsp, [rbp - 0x28]
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_1768:
	mov	rdi, qword ptr [rbp - 0x60]
	call	free
	mov	r14d, 1
	jmp	.label_1812
.label_1821:
	mov	rdi, qword ptr [rbp - 0x60]
	call	free
	xor	r14d, r14d
.label_1812:
	mov	eax, dword ptr [rbp - 0x2c]
	test	al, al
	je	.label_1776
	mov	rdi, qword ptr [rbp - 0x40]
	jmp	.label_1815
.label_1834:
	mov	rdi, qword ptr [rbp - 0x60]
	call	free
	mov	eax, dword ptr [rbp - 0x2c]
	test	al, al
	je	.label_1817
	mov	rdi, qword ptr [rbp - 0x40]
	call	free
.label_1817:
	cmp	qword ptr [r15], 0
	jle	.label_1822
	xor	ebx, ebx
	xor	r14d, r14d
	nop	word ptr cs:[rax + rax]
.label_1831:
	mov	rax, qword ptr [r15 + 0x10]
	mov	rdi, qword ptr [rax + rbx + 0x28]
	call	free
	mov	rax, qword ptr [r15 + 0x10]
	mov	rdi, qword ptr [rax + rbx + 0x10]
	call	free
	inc	r14
	add	rbx, 0x30
	cmp	r14, qword ptr [r15]
	jl	.label_1831
.label_1822:
	mov	rdi, qword ptr [r15 + 0x10]
	call	free
	xor	r14d, r14d
	jmp	.label_1776
.label_1795:
	xorps	xmm0, xmm0
	movups	xmmword ptr [rbx], xmm0
.label_1779:
	mov	rdi, qword ptr [rbp - 0x60]
	call	free
	mov	eax, dword ptr [rbp - 0x2c]
	test	al, al
	je	.label_1770
	mov	rdi, qword ptr [rbp - 0x40]
	call	free
.label_1770:
	mov	r14d, 0xc
	mov	r12, qword ptr [rbp - 0x38]
	test	r12, r12
	je	.label_1776
	cmp	qword ptr [r12], 0
	jle	.label_1778
	xor	ebx, ebx
	xor	r15d, r15d
.label_1782:
	mov	rax, qword ptr [r12 + 0x10]
	mov	rdi, qword ptr [rax + rbx + 0x28]
	call	free
	mov	rax, qword ptr [r12 + 0x10]
	mov	rdi, qword ptr [rax + rbx + 0x10]
	call	free
	inc	r15
	add	rbx, 0x30
	cmp	r15, qword ptr [r12]
	jl	.label_1782
	jmp	.label_1778
.label_1771:
	mov	edi, OFFSET FLAT:label_1784
	mov	esi, OFFSET FLAT:label_730
	mov	edx, 0x555
	mov	ecx, OFFSET FLAT:label_1785
	call	__assert_fail
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x412090

	.globl re_string_context_at
	.type re_string_context_at, @function
re_string_context_at:
	push	rbp
	push	rbx
	push	rax
	mov	rbx, rdi
	test	rsi, rsi
	js	.label_1839
	cmp	qword ptr [rbx + 0x58], rsi
	je	.label_1843
	cmp	dword ptr [rbx + 0x90], 2
	jl	.label_1838
	mov	rax, qword ptr [rbx + 0x10]
	inc	rsi
	nop	dword ptr [rax]
.label_1840:
	mov	ebp, dword ptr [rax + rsi*4 - 4]
	cmp	ebp, -1
	jne	.label_1835
	dec	rsi
	test	rsi, rsi
	jg	.label_1840
	mov	edx, dword ptr [rbx + 0x70]
	jmp	.label_1836
.label_1838:
	mov	rax, qword ptr [rbx + 8]
	mov	rcx, qword ptr [rbx + 0x80]
	movzx	eax, byte ptr [rax + rsi]
	mov	edx, eax
	shr	dl, 6
	movzx	edx, dl
	mov	rcx, qword ptr [rcx + rdx*8]
	mov	edx, 1
	bt	rcx, rax
	jb	.label_1836
	xor	edx, edx
	cmp	al, 0xa
	je	.label_1841
	jmp	.label_1836
.label_1835:
	cmp	byte ptr [rbx + 0x8e], 0
	jne	.label_1837
.label_1842:
	xor	edx, edx
	cmp	ebp, 0xa
	jne	.label_1836
.label_1841:
	xor	edx, edx
	cmp	byte ptr [rbx + 0x8d], 0
	setne	dl
	add	edx, edx
.label_1836:
	mov	eax, edx
	add	rsp, 8
	pop	rbx
	pop	rbp
	ret	
.label_1839:
	mov	edx, dword ptr [rbx + 0x70]
	jmp	.label_1836
.label_1843:
	and	edx, 2
	xor	edx, 0xa
	jmp	.label_1836
.label_1837:
	mov	edi, ebp
	call	iswalnum
	cmp	ebp, 0x5f
	mov	edx, 1
	je	.label_1836
	test	eax, eax
	je	.label_1842
	jmp	.label_1836
	nop	
	.section	.text
	.align	32
	#Procedure 0x412150

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
	jle	.label_1847
	mov	r13, qword ptr [r15 + 0x98]
	xor	ebx, ebx
	jmp	.label_1846
.label_1848:
	mov	rdi, qword ptr [r15 + 0xf8]
	mov	rsi, r14
	shl	rsi, 4
	call	realloc
	mov	rcx, rax
	mov	eax, 0xc
	test	rcx, rcx
	je	.label_1847
	add	r14, r14
	mov	qword ptr [r15 + 0xf8], rcx
	mov	qword ptr [r15 + 0xf0], r14
	jmp	.label_1845
	nop	word ptr [rax + rax]
.label_1846:
	mov	rax, qword ptr [r12 + 0x10]
	mov	rbp, qword ptr [rax + rbx*8]
	mov	rax, qword ptr [r13]
	mov	rdx, rbp
	shl	rdx, 4
	cmp	byte ptr [rax + rdx + 8], 8
	jne	.label_1844
	mov	rax, qword ptr [rax + rdx]
	cmp	rax, 0x3f
	jg	.label_1844
	mov	rdx, qword ptr [r13 + 0xa0]
	bt	rdx, rax
	jae	.label_1844
	mov	r14, qword ptr [r15 + 0xe8]
	cmp	r14, qword ptr [r15 + 0xf0]
	je	.label_1848
.label_1845:
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
	je	.label_1847
	mov	qword ptr [rdx + 8], rbp
	inc	rcx
	mov	qword ptr [r15 + 0xe8], rcx
	mov	rax, qword ptr [rsp]
	mov	qword ptr [rdx], rax
	mov	rcx, qword ptr [r12 + 8]
	nop	word ptr [rax + rax]
.label_1844:
	inc	rbx
	xor	eax, eax
	cmp	rbx, rcx
	jl	.label_1846
.label_1847:
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
	#Procedure 0x412280

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
	jle	.label_1870
	mov	rcx, qword ptr [rdi + 0x98]
	mov	r15, qword ptr [rdi + 0x48]
	xor	edx, edx
	mov	qword ptr [rsp + 0x20], rdi
	mov	qword ptr [rsp + 8], r15
	mov	qword ptr [rsp + 0x78], rsi
	mov	qword ptr [rsp + 0x50], rcx
	nop	dword ptr [rax]
.label_1885:
	mov	rax, qword ptr [rsi + 0x10]
	mov	qword ptr [rsp + 0x80], rdx
	mov	r14, qword ptr [rax + rdx*8]
	mov	rax, qword ptr [rcx]
	mov	rcx, r14
	mov	qword ptr [rsp + 0x48], rcx
	shl	r14, 4
	mov	ebx, dword ptr [rax + r14 + 8]
	cmp	bl, 4
	jne	.label_1859
	mov	ebp, ebx
	shr	ebp, 8
	test	bp, 0x3ff
	je	.label_1875
	mov	edx, dword ptr [rdi + 0xa0]
	mov	rsi, r15
	call	re_string_context_at
	mov	rdi, qword ptr [rsp + 0x20]
	mov	ecx, eax
	and	ecx, 1
	test	bpl, 4
	je	.label_1852
	test	ecx, ecx
	je	.label_1859
.label_1852:
	test	bh, 8
	je	.label_1862
	test	ecx, ecx
	jne	.label_1859
.label_1862:
	test	bh, 0x20
	je	.label_1868
	mov	ecx, eax
	and	ecx, 2
	je	.label_1859
.label_1868:
	test	bpl, bpl
	jns	.label_1875
	and	eax, 8
	je	.label_1859
	nop	word ptr [rax + rax]
.label_1875:
	mov	rax, qword ptr [rdi + 0xc8]
	mov	r8, qword ptr [rdi + 8]
	mov	rcx, qword ptr [rdi + 0x98]
	mov	qword ptr [rsp + 0x60], rcx
	mov	qword ptr [rsp + 0x40], rax
	test	rax, rax
	mov	eax, 0
	jle	.label_1881
	mov	rcx, qword ptr [rdi + 0xd8]
	xor	eax, eax
	mov	rdx, qword ptr [rsp + 0x40]
	nop	word ptr cs:[rax + rax]
.label_1899:
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
	jl	.label_1899
.label_1881:
	cmp	rax, qword ptr [rsp + 0x40]
	jge	.label_1908
	cmp	rax, -1
	je	.label_1908
	mov	rcx, qword ptr [rdi + 0xd8]
	lea	rax, [rax + rax*4]
	cmp	qword ptr [rcx + rax*8 + 8], r15
	jne	.label_1908
	lea	rax, [rcx + rax*8]
	nop	
.label_1916:
	mov	rcx, qword ptr [rsp + 0x48]
	cmp	qword ptr [rax], rcx
	je	.label_1912
	cmp	byte ptr [rax + 0x20], 0
	lea	rax, [rax + 0x28]
	jne	.label_1916
.label_1908:
	cmp	qword ptr [rdi + 0xe8], 0
	jle	.label_1912
	mov	rax, qword ptr [rsp + 0x60]
	mov	rax, qword ptr [rax]
	mov	r14, qword ptr [rax + r14]
	xor	ecx, ecx
	mov	qword ptr [rsp + 0x30], rcx
	xor	edx, edx
	mov	qword ptr [rsp + 0x38], r14
	jmp	.label_1851
	nop	word ptr cs:[rax + rax]
.label_1911:
	mov	rax, qword ptr [rsp + 0x60]
	mov	rax, qword ptr [rax]
.label_1851:
	mov	rcx, qword ptr [rdi + 0xf8]
	mov	r9, qword ptr [rcx + rdx*8]
	mov	rcx, qword ptr [r9 + 8]
	shl	rcx, 4
	cmp	qword ptr [rax + rcx], r14
	mov	qword ptr [rsp + 0x88], rdx
	jne	.label_1874
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp + 0x28], rax
	mov	rax, qword ptr [r9 + 0x20]
	test	rax, rax
	mov	qword ptr [rsp + 0x10], r9
	jle	.label_1882
	mov	rcx, qword ptr [rsp + 8]
	xor	r14d, r14d
	jmp	.label_1863
.label_1882:
	xor	r14d, r14d
	mov	rcx, qword ptr [rsp + 8]
	jmp	.label_1850
.label_1895:
	mov	rdx, qword ptr [rdi + 0x58]
	mov	r10d, 7
	cmp	r13, rdx
	jg	.label_1898
	mov	rsi, qword ptr [rdi + 0x40]
	mov	r12, qword ptr [rdi + 0xc0]
	cmp	rsi, r13
	setle	r9b
	cmp	rsi, rdx
	setl	sil
	cmp	rax, rdx
	jl	.label_1903
	and	r9b, sil
	je	.label_1910
.label_1903:
	lea	esi, [r13 + 1]
	mov	qword ptr [rsp + 0x70], r8
	mov	qword ptr [rsp + 0x58], rcx
	call	extend_buffers
	mov	rcx, qword ptr [rsp + 0x58]
	mov	r9, qword ptr [rsp + 0x10]
	mov	r8, qword ptr [rsp + 0x70]
	mov	rdi, qword ptr [rsp + 0x20]
	test	eax, eax
	je	.label_1910
	mov	r10d, 1
	mov	qword ptr [rsp + 0x30], rax
	jmp	.label_1898
.label_1920:
	mov	r10d, 1
	mov	qword ptr [rsp + 0x28], rbx
	mov	rcx, r13
	mov	qword ptr [rsp + 0x30], rax
	jmp	.label_1918
.label_1910:
	mov	rdx, r13
	sub	rdx, r12
	jle	.label_1858
	mov	rax, qword ptr [rdi + 0xb8]
	lea	rdi, [rax + r12*8 + 8]
	shl	rdx, 3
	xor	esi, esi
	mov	qword ptr [rsp + 0x58], rcx
	call	memset
	mov	rcx, qword ptr [rsp + 0x58]
	mov	rdi, qword ptr [rsp + 0x20]
	mov	qword ptr [rdi + 0xc0], r13
.label_1858:
	mov	r12, rbp
	mov	r8, qword ptr [rdi + 8]
	jmp	.label_1879
	nop	word ptr cs:[rax + rax]
.label_1863:
	mov	rax, qword ptr [r9 + 0x28]
	mov	rbp, qword ptr [rax + r14*8]
	mov	rbx, qword ptr [rbp + 8]
	mov	r13, rbx
	mov	rax, qword ptr [rsp + 0x28]
	sub	r13, rax
	add	r13, rcx
	mov	r15, rbx
	sub	r15, rax
	jle	.label_1889
	mov	rax, qword ptr [rdi + 0x30]
	cmp	r13, rax
	mov	qword ptr [rsp + 0x68], rbx
	jg	.label_1895
	mov	r12, rbp
.label_1879:
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
	jne	.label_1898
.label_1889:
	mov	rsi, r9
	mov	rdx, rbp
	mov	rcx, qword ptr [rsp + 0x48]
	mov	r8, qword ptr [rsp + 8]
	call	get_subexp_sub
	mov	rdi, qword ptr [rsp + 0x20]
	mov	r8, qword ptr [rdi + 8]
	mov	r10d, 9
	cmp	eax, 1
	je	.label_1914
	test	eax, eax
	jne	.label_1920
	xor	r10d, r10d
.label_1914:
	mov	qword ptr [rsp + 0x28], rbx
	mov	rcx, r13
.label_1918:
	mov	r9, qword ptr [rsp + 0x10]
.label_1898:
	mov	eax, r10d
	and	al, 0xf
	je	.label_1857
	cmp	al, 9
	jne	.label_1861
.label_1857:
	inc	r14
	mov	rax, qword ptr [r9 + 0x20]
	cmp	r14, rax
	jl	.label_1863
	jmp	.label_1850
.label_1861:
	cmp	al, 7
	jne	.label_1869
	mov	rax, qword ptr [r9 + 0x20]
	nop	
.label_1850:
	cmp	r14, rax
	jge	.label_1876
	mov	r15, qword ptr [rsp + 8]
	mov	r14, qword ptr [rsp + 0x38]
	jmp	.label_1874
	nop	word ptr cs:[rax + rax]
.label_1876:
	xor	ebx, ebx
	test	r14, r14
	setg	bl
	add	rbx, qword ptr [rsp + 0x28]
	mov	r15, qword ptr [rsp + 8]
	cmp	rbx, r15
	jle	.label_1884
	mov	r14, qword ptr [rsp + 0x38]
	jmp	.label_1874
.label_1884:
	mov	r14, qword ptr [rsp + 0x38]
	jmp	.label_1894
.label_1890:
	cmp	r13, -1
	je	.label_1872
	mov	rbp, r8
	mov	rsi, qword ptr [r9 + 0x10]
	test	rsi, rsi
	jne	.label_1893
	lea	rsi, [rbx + 1]
	sub	rsi, qword ptr [r9]
	mov	edi, 0x18
	call	rpl_calloc
	mov	r9, qword ptr [rsp + 0x10]
	mov	rdi, qword ptr [rsp + 0x20]
	mov	rsi, rax
	mov	qword ptr [r9 + 0x10], rsi
	test	rsi, rsi
	je	.label_1909
.label_1893:
	mov	rcx, qword ptr [r9]
	mov	rdx, qword ptr [r9 + 8]
	mov	dword ptr [rsp], 9
	mov	r8, r13
	mov	r9, rbx
	call	check_arrival
	cmp	eax, 1
	jne	.label_1906
	mov	rcx, r15
	mov	rdi, qword ptr [rsp + 0x20]
	mov	r15, qword ptr [rsp + 8]
	mov	r8, rbp
	mov	r9, qword ptr [rsp + 0x10]
	mov	r10d, 0xc
	jmp	.label_1896
.label_1906:
	test	eax, eax
	mov	r8, rbp
	jne	.label_1853
	mov	rcx, qword ptr [rsp + 0x10]
	mov	r14, qword ptr [rcx + 0x20]
	cmp	r14, qword ptr [rcx + 0x18]
	je	.label_1907
.label_1905:
	mov	edi, 1
	mov	esi, 0x28
	call	rpl_calloc
	mov	r10d, 1
	test	rax, rax
	je	.label_1873
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
	jne	.label_1891
	mov	r10d, 0xc
	jmp	.label_1864
.label_1891:
	test	eax, eax
	jne	.label_1901
	xor	r10d, r10d
.label_1864:
	mov	rcx, r15
.label_1860:
	mov	r15, qword ptr [rsp + 8]
.label_1886:
	mov	r9, qword ptr [rsp + 0x10]
	jmp	.label_1896
.label_1909:
	mov	eax, 0xc
	mov	qword ptr [rsp + 0x30], rax
	mov	r10d, 1
	mov	rcx, r15
	mov	r15, qword ptr [rsp + 8]
	mov	r8, rbp
	jmp	.label_1896
.label_1913:
	mov	r10d, 0xa
	cmp	rcx, qword ptr [rdi + 0x58]
	jge	.label_1896
	mov	r14, r8
	mov	r12, rcx
	lea	r15, [rcx + 1]
	mov	esi, r15d
	mov	rbp, rdi
	call	extend_buffers
	test	eax, eax
	jne	.label_1919
	mov	r8, qword ptr [rbp + 8]
	mov	rdi, rbp
	mov	r14, qword ptr [rsp + 0x38]
	mov	r9, qword ptr [rsp + 0x10]
	mov	rcx, r12
	jmp	.label_1854
.label_1853:
	mov	r10d, 1
	mov	rcx, r15
	mov	qword ptr [rsp + 0x30], rax
	mov	rdi, qword ptr [rsp + 0x20]
	jmp	.label_1860
.label_1907:
	lea	rax, [r14 + r14]
	mov	rdi, qword ptr [rcx + 0x28]
	lea	rsi, [rax*8 + 8]
	mov	r12, rcx
	call	realloc
	test	rax, rax
	je	.label_1855
	lea	rcx, [r14 + r14 + 1]
	mov	qword ptr [r12 + 0x28], rax
	mov	qword ptr [r12 + 0x18], rcx
	jmp	.label_1905
.label_1873:
	mov	rcx, r15
	mov	eax, 0xc
	mov	qword ptr [rsp + 0x30], rax
	mov	rdi, qword ptr [rsp + 0x20]
	mov	r15, qword ptr [rsp + 8]
	mov	r8, rbp
	mov	r14, qword ptr [rsp + 0x38]
	jmp	.label_1886
.label_1901:
	mov	rcx, r15
	mov	qword ptr [rsp + 0x30], rax
	mov	r15, qword ptr [rsp + 8]
	mov	r9, qword ptr [rsp + 0x10]
	mov	r10d, 1
	jmp	.label_1896
.label_1919:
	mov	r10d, 1
	mov	qword ptr [rsp + 0x30], rax
	mov	rdi, rbp
	mov	r15, qword ptr [rsp + 8]
	mov	r8, r14
	mov	r14, qword ptr [rsp + 0x38]
	mov	r9, qword ptr [rsp + 0x10]
	mov	rcx, r12
	jmp	.label_1896
.label_1855:
	mov	eax, 0xc
	mov	qword ptr [rsp + 0x30], rax
	mov	r10d, 1
	mov	rcx, r15
	mov	rdi, qword ptr [rsp + 0x20]
	mov	r15, qword ptr [rsp + 8]
	mov	r8, rbp
	mov	r14, qword ptr [rsp + 0x38]
	mov	r9, r12
	jmp	.label_1896
	nop	word ptr [rax + rax]
.label_1894:
	cmp	rbx, qword ptr [r9]
	jle	.label_1849
	cmp	rcx, qword ptr [rdi + 0x30]
	jge	.label_1913
	lea	r15, [rcx + 1]
.label_1854:
	mov	al, byte ptr [r8 + rcx]
	mov	r10d, 0xa
	cmp	al, byte ptr [r8 + rbx - 1]
	je	.label_1856
	jmp	.label_1872
	nop	word ptr cs:[rax + rax]
.label_1849:
	mov	r15, rcx
.label_1856:
	mov	rax, qword ptr [rdi + 0xb8]
	mov	rcx, qword ptr [rax + rbx*8]
	mov	r10d, 0xc
	test	rcx, rcx
	je	.label_1872
	mov	rax, qword ptr [rcx + 0x10]
	test	rax, rax
	jle	.label_1872
	mov	rcx, qword ptr [rcx + 0x18]
	mov	rdx, qword ptr [rsp + 0x60]
	mov	rdx, qword ptr [rdx]
	xor	esi, esi
.label_1892:
	mov	r13, qword ptr [rcx + rsi*8]
	mov	rbp, r13
	shl	rbp, 4
	cmp	byte ptr [rdx + rbp + 8], 9
	jne	.label_1865
	cmp	qword ptr [rdx + rbp], r14
	je	.label_1890
.label_1865:
	inc	rsi
	cmp	rsi, rax
	jl	.label_1892
.label_1872:
	mov	rcx, r15
	mov	r15, qword ptr [rsp + 8]
.label_1896:
	mov	eax, r10d
	and	al, 0xf
	je	.label_1897
	cmp	al, 0xc
	jne	.label_1877
.label_1897:
	cmp	rbx, r15
	lea	rbx, [rbx + 1]
	jl	.label_1894
	jmp	.label_1874
.label_1869:
	mov	r15, qword ptr [rsp + 8]
	mov	r14, qword ptr [rsp + 0x38]
	jmp	.label_1904
.label_1877:
	cmp	al, 0xa
	je	.label_1874
.label_1904:
	cmp	r10d, 6
	je	.label_1874
	test	r10d, r10d
	jne	.label_1888
	nop	word ptr cs:[rax + rax]
.label_1874:
	mov	rdx, qword ptr [rsp + 0x88]
	inc	rdx
	cmp	rdx, qword ptr [rdi + 0xe8]
	jl	.label_1911
.label_1912:
	mov	dword ptr [rsp + 0x1c], 0
	mov	rbx, qword ptr [rsp + 0x40]
.label_1866:
	cmp	rbx, qword ptr [rdi + 0xc8]
	jge	.label_1859
	lea	rax, [rbx + rbx*4]
	lea	rbp, [rax*8 + 0x18]
	nop	
.label_1917:
	mov	rax, qword ptr [rdi + 0xd8]
	mov	rcx, qword ptr [rsp + 0x48]
	cmp	qword ptr [rax + rbp - 0x18], rcx
	jne	.label_1867
	cmp	qword ptr [rax + rbp - 0x10], r15
	jne	.label_1867
	mov	rdx, qword ptr [rax + rbp - 8]
	mov	rsi, qword ptr [rax + rbp]
	mov	rcx, qword ptr [rsp + 0x50]
	mov	r14, qword ptr [rcx + 0x30]
	cmp	rsi, rdx
	mov	qword ptr [rsp + 0x40], rbx
	jne	.label_1871
	mov	rax, qword ptr [rcx + 0x28]
	mov	rcx, qword ptr [rsp + 0x48]
	lea	rcx, [rcx + rcx*2]
	mov	rax, qword ptr [rax + rcx*8 + 0x10]
	jmp	.label_1880
.label_1871:
	mov	rax, qword ptr [rsp + 0x48]
	lea	rax, [rax*8]
	add	rax, qword ptr [rcx + 0x18]
.label_1880:
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
	je	.label_1902
	mov	rdx, qword ptr [rcx + 0x10]
.label_1902:
	mov	qword ptr [rsp + 0x68], rdx
	lea	r12, [r14 + r15*8]
	test	rax, rax
	lea	rcx, [rsp + 0x90]
	je	.label_1900
	mov	rsi, qword ptr [rax + 0x50]
	mov	r14, rcx
	mov	rdi, r14
	mov	rdx, r12
	call	re_node_set_init_union
	mov	dword ptr [rsp + 0x1c], eax
	test	eax, eax
	mov	r15, qword ptr [rsp + 8]
	jne	.label_1915
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
	jne	.label_1883
	mov	eax, dword ptr [rsp + 0x1c]
	test	eax, eax
	je	.label_1883
	jmp	.label_1878
.label_1900:
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
	jne	.label_1883
	mov	eax, dword ptr [rsp + 0x1c]
	test	eax, eax
	mov	rbx, qword ptr [rsp + 0x40]
	mov	rdx, qword ptr [rsp + 0x28]
	mov	rsi, qword ptr [rsp + 0x10]
	je	.label_1887
	jmp	.label_1878
.label_1883:
	mov	rbx, qword ptr [rsp + 0x40]
	mov	rdx, qword ptr [rsp + 0x28]
	mov	rsi, qword ptr [rsp + 0x10]
.label_1887:
	cmp	rsi, rdx
	jne	.label_1867
	mov	rax, qword ptr [rcx + r15*8]
	mov	rcx, qword ptr [rsp + 0x68]
	cmp	qword ptr [rax + 0x10], rcx
	jle	.label_1867
	mov	rsi, r12
	mov	rdx, r15
	call	check_subexp_matching_top
	mov	rdi, qword ptr [rsp + 0x20]
	mov	dword ptr [rsp + 0x1c], eax
	test	eax, eax
	jne	.label_1878
	mov	rsi, r12
	call	transit_state_bkref
	mov	rdi, qword ptr [rsp + 0x20]
	mov	dword ptr [rsp + 0x1c], eax
	test	eax, eax
	jne	.label_1878
	nop	
.label_1867:
	inc	rbx
	add	rbp, 0x28
	cmp	rbx, qword ptr [rdi + 0xc8]
	jl	.label_1917
	nop	word ptr cs:[rax + rax]
.label_1859:
	mov	rdx, qword ptr [rsp + 0x80]
	inc	rdx
	mov	rsi, qword ptr [rsp + 0x78]
	cmp	rdx, qword ptr [rsi + 8]
	mov	rcx, qword ptr [rsp + 0x50]
	jl	.label_1885
	jmp	.label_1870
.label_1888:
	mov	rax, qword ptr [rsp + 0x30]
	mov	dword ptr [rsp + 0x1c], eax
	test	eax, eax
	mov	rbx, qword ptr [rsp + 0x40]
	je	.label_1866
	jmp	.label_1878
.label_1870:
	mov	dword ptr [rsp + 0x1c], 0
	xor	eax, eax
.label_1878:
	add	rsp, 0xa8
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_1915:
	mov	rdi, qword ptr [rsp + 0xa0]
	mov	rbx, rax
	call	free
	mov	rax, rbx
	jmp	.label_1878
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x412c80

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
	ja	.label_1921
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
	jne	.label_1921
	mov	rdi, qword ptr [r14 + 0xb8]
	test	rdi, rdi
	je	.label_1927
	mov	rax, qword ptr [r14 + 0x40]
	lea	rsi, [rax*8 + 8]
	call	realloc
	mov	rcx, rax
	test	rcx, rcx
	mov	eax, 0xc
	je	.label_1921
	mov	qword ptr [r14 + 0xb8], rcx
.label_1927:
	cmp	byte ptr [r14 + 0x88], 0
	mov	eax, dword ptr [r14 + 0x90]
	je	.label_1923
	cmp	eax, 2
	jl	.label_1930
	mov	rdi, r14
	call	build_wcs_upper_buffer
	test	eax, eax
	je	.label_1928
	jmp	.label_1921
.label_1923:
	cmp	eax, 2
	jl	.label_1932
	mov	rdi, r14
	call	build_wcs_buffer
	jmp	.label_1928
.label_1930:
	mov	rbx, qword ptr [r14 + 0x30]
	mov	r15, qword ptr [r14 + 0x40]
	mov	rax, qword ptr [r14 + 0x58]
	cmp	r15, rax
	cmovg	r15, rax
	cmp	rbx, r15
	jl	.label_1922
	jmp	.label_1931
.label_1932:
	mov	rdx, qword ptr [r14 + 0x78]
	test	rdx, rdx
	je	.label_1928
	mov	rax, qword ptr [r14 + 0x30]
	mov	rcx, qword ptr [r14 + 0x40]
	mov	rsi, qword ptr [r14 + 0x58]
	cmp	rcx, rsi
	cmovg	rcx, rsi
	cmp	rax, rcx
	jge	.label_1934
	mov	rsi, qword ptr [r14 + 0x28]
	add	rsi, rax
	mov	rdi, qword ptr [r14]
	mov	rbx, qword ptr [r14 + 8]
	movzx	esi, byte ptr [rdi + rsi]
	mov	dl, byte ptr [rdx + rsi]
	mov	byte ptr [rbx + rax], dl
	jmp	.label_1926
	nop	word ptr cs:[rax + rax]
.label_1925:
	mov	rdx, qword ptr [r14 + 0x78]
	mov	rsi, qword ptr [r14]
	mov	rdi, qword ptr [r14 + 8]
	add	rsi, qword ptr [r14 + 0x28]
	movzx	esi, byte ptr [rax + rsi]
	movzx	edx, byte ptr [rdx + rsi]
	mov	byte ptr [rdi + rax], dl
.label_1926:
	inc	rax
	cmp	rax, rcx
	jl	.label_1925
	mov	rax, rcx
.label_1934:
	mov	qword ptr [r14 + 0x30], rax
	mov	qword ptr [r14 + 0x38], rax
	jmp	.label_1928
.label_1933:
	movzx	ecx, byte ptr [rax + rdx]
	jmp	.label_1929
	nop	word ptr cs:[rax + rax]
.label_1922:
	mov	rcx, qword ptr [r14]
	mov	rax, qword ptr [r14 + 0x78]
	add	rcx, qword ptr [r14 + 0x28]
	movzx	ecx, byte ptr [rbx + rcx]
	movzx	edx, cl
	test	rax, rax
	jne	.label_1933
.label_1929:
	movzx	r12d, cl
	mov	eax, r12d
	sub	eax, -0x80
	cmp	eax, 0x17f
	ja	.label_1924
	call	__ctype_toupper_loc
	mov	rax, qword ptr [rax]
	mov	r12d, dword ptr [rax + r12*4]
.label_1924:
	mov	rax, qword ptr [r14 + 8]
	mov	byte ptr [rax + rbx], r12b
	inc	rbx
	cmp	rbx, r15
	jl	.label_1922
	mov	rbx, r15
.label_1931:
	mov	qword ptr [r14 + 0x30], rbx
	mov	qword ptr [r14 + 0x38], rbx
.label_1928:
	xor	eax, eax
.label_1921:
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x412e50

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
	jle	.label_1937
	mov	qword ptr [rax + r14*8], rbx
	mov	qword ptr [r13 + 0xc0], r14
	jmp	.label_1935
.label_1937:
	mov	rcx, qword ptr [rax + r14*8]
	test	rcx, rcx
	je	.label_1938
	mov	rdx, qword ptr [rcx + 0x50]
	test	rbx, rbx
	je	.label_1939
	mov	rbx, qword ptr [rbx + 0x50]
	lea	rdi, [rsp]
	mov	rsi, rbx
	call	re_node_set_init_union
	mov	dword ptr [r15], eax
	test	eax, eax
	jne	.label_1941
	mov	rsi, qword ptr [r13 + 0x48]
	test	rbx, rbx
	sete	bpl
	jmp	.label_1942
.label_1938:
	mov	qword ptr [rax + r14*8], rbx
	jmp	.label_1935
.label_1939:
	mov	rax, qword ptr [rdx + 0x10]
	mov	qword ptr [rsp + 0x10], rax
	movups	xmm0, xmmword ptr [rdx]
	movaps	xmmword ptr [rsp], xmm0
	mov	bpl, 1
	mov	rsi, r14
.label_1942:
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
	jne	.label_1935
	mov	rdi, qword ptr [rsp + 0x10]
	call	free
.label_1935:
	test	rbx, rbx
	je	.label_1940
	mov	rax, qword ptr [r12 + 0x98]
	test	rax, rax
	je	.label_1940
	lea	r12, [rbx + 8]
	mov	rdi, r13
	mov	rsi, r12
	mov	rdx, r14
	call	check_subexp_matching_top
	mov	ecx, eax
	mov	dword ptr [r15], ecx
	xor	eax, eax
	test	ecx, ecx
	jne	.label_1936
	test	byte ptr [rbx + 0x68], 0x40
	mov	rax, rbx
	je	.label_1936
	mov	rdi, r13
	mov	rsi, r12
	call	transit_state_bkref
	mov	ecx, eax
	mov	dword ptr [r15], ecx
	xor	eax, eax
	test	ecx, ecx
	jne	.label_1936
	mov	rax, qword ptr [r13 + 0xb8]
	mov	rax, qword ptr [rax + r14*8]
	jmp	.label_1936
.label_1940:
	mov	rax, rbx
.label_1936:
	add	rsp, 0x18
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_1941:
	xor	eax, eax
	jmp	.label_1936
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x412fa0

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
	je	.label_1951
	mov	r13, qword ptr [r12 + 8]
	test	rbx, rbx
	je	.label_1946
	test	r13, r13
	jle	.label_1946
	mov	rdi, qword ptr [rbx + 8]
	test	rdi, rdi
	jle	.label_1946
	add	rdi, r13
	mov	qword ptr [rbp], rdi
	shl	rdi, 3
	call	malloc
	mov	qword ptr [rsp], rbp
	mov	qword ptr [rbp + 0x10], rax
	test	rax, rax
	mov	ecx, 0xc
	je	.label_1948
	xor	edi, edi
	xor	esi, esi
	xor	ebp, ebp
.label_1947:
	mov	r15, rdi
	mov	r14, rsi
	nop	word ptr cs:[rax + rax]
.label_1954:
	cmp	r14, qword ptr [rbx + 8]
	jge	.label_1943
	mov	rcx, qword ptr [r12 + 0x10]
	mov	rdx, qword ptr [rcx + rbp*8]
	mov	rcx, qword ptr [rbx + 0x10]
	mov	rcx, qword ptr [rcx + r14*8]
	cmp	rdx, rcx
	jle	.label_1952
	inc	r14
	mov	qword ptr [rax + r15*8], rcx
	inc	r15
	mov	r13, qword ptr [r12 + 8]
	cmp	rbp, r13
	jl	.label_1954
	jmp	.label_1943
.label_1952:
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
	jl	.label_1947
	xor	esi, esi
	cmp	rdx, rcx
	sete	sil
	inc	r15
	add	r14, rsi
.label_1943:
	sub	r13, rbp
	jle	.label_1945
	lea	rdi, [rax + r15*8]
	mov	rax, qword ptr [r12 + 0x10]
	lea	rsi, [rax + rbp*8]
	shl	r13, 3
	mov	rdx, r13
	call	memcpy
	sub	r15, rbp
	add	r15, qword ptr [r12 + 8]
	jmp	.label_1950
.label_1946:
	test	r13, r13
	jle	.label_1951
	mov	qword ptr [rbp + 8], r13
	mov	r15, qword ptr [r12 + 8]
	test	r15, r15
	jle	.label_1944
	mov	qword ptr [rbp], r13
	shl	r13, 3
	mov	rdi, r13
	call	malloc
	mov	qword ptr [rbp + 0x10], rax
	test	rax, rax
	je	.label_1953
	mov	rsi, qword ptr [r12 + 0x10]
	shl	r15, 3
	mov	rdi, rax
	mov	rdx, r15
	call	memcpy
	jmp	.label_1949
.label_1951:
	test	rbx, rbx
	je	.label_1944
	mov	rdi, qword ptr [rbx + 8]
	test	rdi, rdi
	jle	.label_1944
	mov	qword ptr [rbp + 8], rdi
	mov	r14, rbx
	mov	rbx, qword ptr [rbx + 8]
	test	rbx, rbx
	jle	.label_1944
	mov	qword ptr [rbp], rdi
	shl	rdi, 3
	call	malloc
	mov	qword ptr [rbp + 0x10], rax
	test	rax, rax
	je	.label_1953
	mov	rsi, qword ptr [r14 + 0x10]
	shl	rbx, 3
	mov	rdi, rax
	mov	rdx, rbx
	call	memcpy
	jmp	.label_1949
.label_1944:
	xorps	xmm0, xmm0
	movups	xmmword ptr [rbp], xmm0
	mov	qword ptr [rbp + 0x10], 0
	jmp	.label_1949
.label_1945:
	mov	rdx, qword ptr [rbx + 8]
	sub	rdx, r14
	jle	.label_1950
	lea	rdi, [rax + r15*8]
	mov	rax, qword ptr [rbx + 0x10]
	lea	rsi, [rax + r14*8]
	shl	rdx, 3
	call	memcpy
	sub	r15, r14
	add	r15, qword ptr [rbx + 8]
.label_1950:
	mov	rax, qword ptr [rsp]
	mov	qword ptr [rax + 8], r15
.label_1949:
	xor	ecx, ecx
.label_1948:
	mov	eax, ecx
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_1953:
	xorps	xmm0, xmm0
	movups	xmmword ptr [rbp], xmm0
	mov	ecx, 0xc
	jmp	.label_1948
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4131b0

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
	jne	.label_1955
	mov	qword ptr [rsp + 0x20], r15
	mov	rsi, qword ptr [r15]
	mov	rdi, qword ptr [r12 + 8]
	mov	r15, qword ptr [r13 + 0xc8]
	mov	rax, qword ptr [r13 + 0xd0]
	cmp	r15, rax
	jl	.label_1963
	mov	qword ptr [rsp + 0x10], rsi
	mov	qword ptr [rsp + 0x18], rdi
	mov	rdi, qword ptr [r13 + 0xd8]
	shl	rax, 4
	lea	rsi, [rax + rax*4]
	call	realloc
	test	rax, rax
	je	.label_1961
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
.label_1963:
	test	r15, r15
	jle	.label_1956
	lea	rcx, [r15 - 1]
	mov	rax, qword ptr [r13 + 0xd8]
	lea	rcx, [rcx + rcx*4]
	cmp	qword ptr [rax + rcx*8 + 8], r14
	jne	.label_1957
	mov	byte ptr [rax + rcx*8 + 0x20], 1
	jmp	.label_1957
.label_1956:
	mov	rax, qword ptr [r13 + 0xd8]
.label_1957:
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
	jge	.label_1960
	mov	dword ptr [r13 + 0xe0], edi
.label_1960:
	add	r14, qword ptr [r12 + 8]
	mov	rax, qword ptr [rsp + 0x20]
	sub	r14, qword ptr [rax]
	mov	rax, qword ptr [r13 + 0x40]
	mov	r15, qword ptr [r13 + 0xc0]
	cmp	rax, r14
	jg	.label_1962
	cmp	rax, qword ptr [r13 + 0x58]
	jl	.label_1958
.label_1962:
	mov	rax, qword ptr [r13 + 0x30]
	cmp	rax, r14
	jg	.label_1959
	cmp	rax, qword ptr [r13 + 0x58]
	jge	.label_1959
.label_1958:
	lea	esi, [r14 + 1]
	mov	rdi, r13
	call	extend_buffers
	mov	ebp, eax
	test	ebp, ebp
	jne	.label_1955
.label_1959:
	xor	ebp, ebp
	mov	rdx, r14
	sub	rdx, r15
	jle	.label_1955
	mov	rax, qword ptr [r13 + 0xb8]
	lea	rdi, [rax + r15*8 + 8]
	shl	rdx, 3
	xor	ebp, ebp
	xor	esi, esi
	call	memset
	mov	qword ptr [r13 + 0xc0], r14
.label_1955:
	mov	eax, ebp
	add	rsp, 0x28
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_1961:
	mov	rdi, qword ptr [r13 + 0xd8]
	call	free
	mov	ebp, 0xc
	jmp	.label_1955
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x413390

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
	jle	.label_1987
	mov	r14, qword ptr [rbp + 0x10]
.label_1985:
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
	jne	.label_1977
	mov	dword ptr [rsp + 0x38], eax
	movaps	xmm0, xmmword ptr [rip + label_1310]
	movaps	xmmword ptr [rsp + 0x10], xmm0
	mov	edi, 8
	call	malloc
	mov	qword ptr [rsp + 0x20], rax
	test	rax, rax
	je	.label_1971
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
	jne	.label_1991
	mov	rbp, qword ptr [rsp + 0x18]
	mov	r14, qword ptr [rsp + 0x28]
	jmp	.label_1993
.label_1977:
	mov	rdx, qword ptr [r14 + r13*8]
	test	rdx, rdx
	je	.label_1996
	mov	dword ptr [rsp + 0x38], eax
	mov	al, byte ptr [rdx + 0x68]
	test	al, 0x40
	jne	.label_1997
	xorps	xmm0, xmm0
	movaps	xmmword ptr [rsp + 0x10], xmm0
	mov	qword ptr [rsp + 0x20], 0
	xor	ebp, ebp
	mov	r14, qword ptr [rsp + 0x28]
	mov	r13, qword ptr [rsp + 0x40]
	jmp	.label_1999
.label_1996:
	xorps	xmm0, xmm0
	movaps	xmmword ptr [rsp + 0x10], xmm0
	mov	qword ptr [rsp + 0x20], 0
	xor	edx, edx
	mov	r14, qword ptr [rsp + 0x28]
	mov	r13, qword ptr [rsp + 0x40]
	mov	ebx, dword ptr [rsp + 0xd0]
	jmp	.label_1965
.label_1997:
	mov	rbp, qword ptr [rdx + 0x10]
	mov	qword ptr [rsp + 0x18], rbp
	test	rbp, rbp
	mov	r13, qword ptr [rsp + 0x40]
	jle	.label_1973
	mov	qword ptr [rsp + 0x48], rdx
	mov	qword ptr [rsp + 0x10], rbp
	lea	r15, [rbp*8]
	mov	rdi, r15
	call	malloc
	mov	qword ptr [rsp + 0x20], rax
	test	rax, rax
	mov	r14, qword ptr [rsp + 0x28]
	mov	ebx, dword ptr [rsp + 0xd0]
	je	.label_1971
	mov	r12, qword ptr [rsp + 0x48]
	mov	rsi, qword ptr [r12 + 0x18]
	mov	rdi, rax
	mov	rdx, r15
	call	memcpy
	mov	rdx, r12
	mov	al, byte ptr [rdx + 0x68]
	mov	dword ptr [rsp + 4], 0
	mov	r12, qword ptr [rsp + 0x58]
	jmp	.label_1986
.label_1973:
	xorps	xmm0, xmm0
	movaps	xmmword ptr [rsp + 0x10], xmm0
	mov	qword ptr [rsp + 0x20], 0
	xor	ebp, ebp
	mov	dword ptr [rsp + 4], 0
	mov	r14, qword ptr [rsp + 0x28]
.label_1999:
	mov	ebx, dword ptr [rsp + 0xd0]
.label_1986:
	test	al, 0x40
	je	.label_1965
.label_1993:
	test	rbp, rbp
	je	.label_1994
	lea	rsi, [rsp + 0x10]
	mov	rdi, r14
	mov	rdx, qword ptr [rsp + 8]
	mov	rcx, r13
	mov	r8d, ebx
	call	expand_bkref_cache
	mov	ebp, eax
	mov	dword ptr [rsp + 4], ebp
	test	ebp, ebp
	jne	.label_1991
.label_1994:
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
	jne	.label_1969
.label_1976:
	mov	rax, qword ptr [r14 + 0xb8]
	mov	rcx, qword ptr [rsp + 8]
	mov	qword ptr [rax + rcx*8], rdx
.label_1965:
	mov	rax, qword ptr [rsp + 8]
	cmp	rax, qword ptr [rsp + 0x50]
	jge	.label_1974
	xor	esi, esi
	nop	
.label_1998:
	movsxd	rax, dword ptr [r14 + 0xe0]
	cmp	rsi, rax
	jg	.label_1978
	mov	qword ptr [rsp + 0x38], rsi
	mov	qword ptr [rsp + 0x18], 0
	mov	rax, qword ptr [r14 + 0xb8]
	mov	rcx, qword ptr [rsp + 8]
	mov	rsi, qword ptr [rax + rcx*8 + 8]
	test	rsi, rsi
	je	.label_1981
	add	rsi, 8
	lea	rdi, [rsp + 0x10]
	mov	rbp, rdx
	call	re_node_set_merge
	mov	rdx, rbp
	mov	dword ptr [rsp + 4], eax
	test	eax, eax
	jne	.label_1969
.label_1981:
	test	rdx, rdx
	je	.label_1988
	mov	r13, qword ptr [r14 + 0x98]
	mov	dword ptr [rsp + 0x34], 0
	xorps	xmm0, xmm0
	movaps	xmmword ptr [rsp + 0x60], xmm0
	mov	qword ptr [rsp + 0x70], 0
	cmp	qword ptr [rdx + 0x28], 0
	mov	edi, 0
	jle	.label_1990
	xor	ebx, ebx
	mov	qword ptr [rsp + 0x48], rdx
	nop	word ptr cs:[rax + rax]
.label_1982:
	mov	rax, qword ptr [rdx + 0x30]
	mov	r15, qword ptr [rax + rbx*8]
	mov	rsi, qword ptr [r13]
	mov	rbp, r15
	shl	rbp, 4
	test	byte ptr [rsi + rbp + 0xa], 0x10
	je	.label_1979
	mov	rdi, r13
	mov	rsi, r15
	mov	rdx, r14
	mov	r12, qword ptr [rsp + 8]
	mov	rcx, r12
	call	check_node_accept_bytes
	cmp	eax, 2
	jl	.label_1970
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
	je	.label_1972
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
	jne	.label_1983
.label_1972:
	mov	rbp, rcx
	mov	rdi, rbp
	mov	rsi, rdx
	call	re_node_set_insert
	test	al, al
	mov	rdx, rbp
	je	.label_1966
	lea	rdi, [rsp + 0x34]
	mov	rsi, r13
	call	re_acquire_state
	mov	rdx, qword ptr [rsp + 0x28]
	mov	rcx, qword ptr [rdx + 0xb8]
	mov	qword ptr [rcx + r14*8], rax
	mov	rax, qword ptr [rdx + 0xb8]
	cmp	qword ptr [rax + r14*8], 0
	mov	r14, rdx
	jne	.label_1989
	mov	r12d, dword ptr [rsp + 0x34]
	test	r12d, r12d
	je	.label_1989
	jmp	.label_1983
	nop	
.label_1970:
	test	eax, eax
	jne	.label_1989
	mov	rsi, qword ptr [r13]
	nop	dword ptr [rax + rax]
.label_1979:
	add	rsi, rbp
	mov	rdi, r14
	mov	rdx, qword ptr [rsp + 8]
	call	check_node_accept
	test	al, al
	je	.label_2000
.label_1989:
	mov	rax, qword ptr [r13 + 0x18]
	mov	rsi, qword ptr [rax + r15*8]
	lea	rdi, [rsp + 0x10]
	call	re_node_set_insert
	test	al, al
	je	.label_1966
.label_2000:
	inc	rbx
	mov	rdx, qword ptr [rsp + 0x48]
	cmp	rbx, qword ptr [rdx + 0x28]
	jl	.label_1982
	mov	rdi, qword ptr [rsp + 0x70]
	mov	r12, qword ptr [rsp + 0x58]
.label_1990:
	call	free
	mov	dword ptr [rsp + 4], 0
	mov	r13, qword ptr [rsp + 0x40]
	mov	ebx, dword ptr [rsp + 0xd0]
.label_1988:
	mov	rax, qword ptr [rsp + 8]
	lea	rbp, [rax + 1]
	cmp	qword ptr [rsp + 0x18], 0
	lea	r15, [rsp + 0x10]
	je	.label_1980
	mov	rdi, r12
	mov	rsi, r15
	mov	rdx, r13
	mov	ecx, ebx
	call	check_arrival_expand_ecl
	mov	dword ptr [rsp + 4], eax
	test	eax, eax
	jne	.label_1969
	mov	rdi, r14
	mov	rsi, r15
	mov	rdx, rbp
	mov	rcx, r13
	mov	r8d, ebx
	call	expand_bkref_cache
	mov	dword ptr [rsp + 4], eax
	test	eax, eax
	jne	.label_1969
.label_1980:
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
	jne	.label_1992
	mov	eax, dword ptr [rsp + 4]
	test	eax, eax
	jne	.label_1969
.label_1992:
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
	jl	.label_1998
	jmp	.label_1967
.label_1974:
	mov	rbp, rax
	jmp	.label_1967
.label_1978:
	mov	rbp, qword ptr [rsp + 8]
.label_1967:
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
	je	.label_1975
	mov	rax, qword ptr [rcx + 8]
	test	rax, rax
	jle	.label_1975
	xor	ebp, ebp
	dec	rax
	mov	rcx, qword ptr [rcx + 0x10]
	mov	edx, 0
	je	.label_1984
	xor	edx, edx
.label_1964:
	lea	rsi, [rdx + rax]
	shr	rsi, 1
	cmp	qword ptr [rcx + rsi*8], rbx
	lea	rdi, [rsi + 1]
	cmovl	rdx, rdi
	cmovge	rax, rsi
	cmp	rdx, rax
	jb	.label_1964
.label_1984:
	cmp	rdx, -1
	je	.label_1975
	cmp	qword ptr [rcx + rdx*8], rbx
	je	.label_1968
.label_1975:
	mov	ebp, 1
.label_1968:
	mov	eax, ebp
	add	rsp, 0x98
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_1966:
	mov	rdi, qword ptr [rsp + 0x70]
	call	free
	mov	r12d, 0xc
	jmp	.label_1995
.label_1983:
	mov	rdi, qword ptr [rsp + 0x70]
	call	free
.label_1995:
	mov	dword ptr [rsp + 4], r12d
.label_1969:
	mov	rdi, qword ptr [rsp + 0x20]
	call	free
	mov	ebp, dword ptr [rsp + 4]
	jmp	.label_1968
.label_1987:
	mov	r13, rbp
	movabs	rdx, 0x7fffffffffffffff
	sub	rdx, r12
	mov	ebp, 0xc
	cmp	rdx, rdi
	jle	.label_1968
	mov	qword ptr [rsp + 8], rcx
	mov	rcx, qword ptr [rsp + 0x50]
	lea	r15, [rax + rcx + 1]
	lea	rcx, [r15 + r12]
	mov	rax, rcx
	shr	rax, 0x3d
	jne	.label_1968
	mov	rdi, qword ptr [r13 + 0x10]
	mov	qword ptr [rsp + 0x38], rcx
	lea	rsi, [rcx*8]
	call	realloc
	mov	r14, rax
	test	r14, r14
	je	.label_1968
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
	jmp	.label_1985
.label_1991:
	mov	rdi, qword ptr [rsp + 0x20]
	call	free
	jmp	.label_1968
.label_1971:
	xorps	xmm0, xmm0
	movaps	xmmword ptr [rsp + 0x10], xmm0
	mov	dword ptr [rsp + 4], 0xc
	mov	ebp, 0xc
	jmp	.label_1968
	nop	
	.section	.text
	.align	32
	#Procedure 0x413aa0

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
	je	.label_2005
	test	r12, r12
	jle	.label_2008
	xor	r12d, r12d
	jmp	.label_2009
	nop	dword ptr [rax]
.label_2003:
	cmp	rbp, -1
	je	.label_2006
	mov	rdi, qword ptr [rsp + 8]
	lea	rsi, [rsp + 0x10]
	mov	rcx, r13
	mov	r8d, r15d
	call	check_arrival_expand_ecl_sub
	jmp	.label_2002
	nop	dword ptr [rax]
.label_2009:
	mov	rax, qword ptr [r14 + 0x10]
	mov	rdx, qword ptr [rax + r12*8]
	mov	rax, qword ptr [rsp + 8]
	mov	r8, qword ptr [rax + 0x30]
	lea	r9, [rdx + rdx*2]
	mov	r10, qword ptr [r8 + r9*8 + 8]
	test	r10, r10
	jle	.label_2006
	mov	rdi, qword ptr [r8 + r9*8 + 0x10]
	mov	rax, qword ptr [rsp + 8]
	mov	rbx, qword ptr [rax]
	xor	eax, eax
	nop	
.label_2007:
	mov	rbp, qword ptr [rdi + rax*8]
	mov	rcx, rbp
	shl	rcx, 4
	movzx	esi, byte ptr [rbx + rcx + 8]
	cmp	esi, r15d
	jne	.label_2001
	cmp	qword ptr [rbx + rcx], r13
	je	.label_2003
.label_2001:
	inc	rax
	cmp	rax, r10
	jl	.label_2007
.label_2006:
	lea	rsi, [r8 + r9*8]
	lea	rdi, [rsp + 0x10]
	call	re_node_set_merge
.label_2002:
	mov	ebx, eax
	test	ebx, ebx
	jne	.label_2004
	inc	r12
	cmp	r12, qword ptr [r14 + 8]
	jl	.label_2009
.label_2008:
	mov	rdi, qword ptr [r14 + 0x10]
	call	free
	mov	rax, qword ptr [rsp + 0x20]
	mov	qword ptr [r14 + 0x10], rax
	movups	xmm0, xmmword ptr [rsp + 0x10]
	movups	xmmword ptr [r14], xmm0
	xor	ebx, ebx
.label_2005:
	mov	eax, ebx
	add	rsp, 0x28
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_2004:
	mov	rdi, qword ptr [rsp + 0x20]
	call	free
	jmp	.label_2005
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x413bd0

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
	jle	.label_2020
	mov	r10, qword ptr [rdi + 0xd8]
	xor	r11d, r11d
	mov	rdx, r9
	nop	dword ptr [rax]
.label_2028:
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
	jl	.label_2028
.label_2020:
	cmp	r11, r9
	jge	.label_2021
	cmp	r11, -1
	je	.label_2021
	mov	qword ptr [rsp + 0x50], rcx
	mov	dword ptr [rsp + 0x44], r8d
	mov	rcx, qword ptr [rdi + 0xd8]
	lea	rdx, [r11 + r11*4]
	mov	qword ptr [rsp + 0x48], rdx
	cmp	qword ptr [rcx + rdx*8 + 8], r15
	jne	.label_2021
	mov	dword ptr [rsp + 0xc], eax
	mov	qword ptr [rsp + 0x38], rsi
	mov	qword ptr [rsp + 0x30], rdi
	mov	qword ptr [rsp + 0x28], r14
	jmp	.label_2039
.label_2016:
	mov	rcx, qword ptr [rdi + 0xd8]
	nop	
.label_2039:
	mov	rax, qword ptr [rsp + 0x48]
	lea	r13, [rcx + rax*8]
	nop	dword ptr [rax]
.label_2036:
	mov	r9, qword ptr [rsi + 8]
	test	r9, r9
	jle	.label_2019
	mov	rdx, qword ptr [r13]
	dec	r9
	mov	r8, qword ptr [rsi + 0x10]
	mov	eax, 0
	je	.label_2023
	mov	rcx, r9
	xor	eax, eax
	nop	word ptr cs:[rax + rax]
.label_2031:
	lea	rbp, [rax + rcx]
	shr	rbp, 1
	cmp	qword ptr [r8 + rbp*8], rdx
	lea	rbx, [rbp + 1]
	cmovl	rax, rbx
	cmovge	rcx, rbp
	cmp	rax, rcx
	jb	.label_2031
.label_2023:
	cmp	rax, -1
	je	.label_2019
	cmp	qword ptr [r8 + rax*8], rdx
	jne	.label_2019
	mov	r12, qword ptr [r13 + 0x18]
	add	r12, r15
	sub	r12, qword ptr [r13 + 0x10]
	cmp	r12, r15
	jne	.label_2010
	test	r9, r9
	mov	rax, qword ptr [r14 + 0x28]
	lea	rdx, [rdx + rdx*2]
	mov	rdx, qword ptr [rax + rdx*8 + 0x10]
	mov	rbx, qword ptr [rdx]
	mov	edx, 0
	je	.label_2013
	xor	edx, edx
.label_2025:
	lea	rax, [rdx + r9]
	shr	rax, 1
	cmp	qword ptr [r8 + rax*8], rbx
	lea	rcx, [rax + 1]
	cmovl	rdx, rcx
	cmovge	r9, rax
	cmp	rdx, r9
	jb	.label_2025
.label_2013:
	cmp	rdx, -1
	je	.label_2030
	mov	ecx, 4
	cmp	qword ptr [r8 + rdx*8], rbx
	je	.label_2032
.label_2030:
	movaps	xmm0, xmmword ptr [rip + label_1310]
	movaps	xmmword ptr [rsp + 0x10], xmm0
	mov	edi, 8
	call	malloc
	mov	qword ptr [rsp + 0x20], rax
	test	rax, rax
	je	.label_2041
	mov	qword ptr [rax], rbx
	xor	r12d, r12d
.label_2040:
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
	je	.label_2032
	test	r14d, r14d
	cmovne	ebx, r14d
	test	r12d, r12d
	cmovne	ebx, r12d
	mov	dword ptr [rsp + 8], ebx
	mov	ecx, 1
	mov	dword ptr [rsp + 0xc], ebx
	jmp	.label_2032
.label_2010:
	mov	rax, qword ptr [r14 + 0x18]
	mov	r14, qword ptr [rax + rdx*8]
	mov	rax, qword ptr [rdi + 0xb8]
	mov	r9, qword ptr [rax + r12*8]
	test	r9, r9
	je	.label_2011
	mov	r8, qword ptr [r9 + 0x10]
	test	r8, r8
	jle	.label_2018
	mov	rcx, r8
	dec	rcx
	mov	rax, qword ptr [r9 + 0x18]
	mov	edx, 0
	je	.label_2022
	xor	edx, edx
	nop	
.label_2027:
	lea	rbp, [rdx + rcx]
	shr	rbp, 1
	cmp	qword ptr [rax + rbp*8], r14
	lea	rbx, [rbp + 1]
	cmovl	rdx, rbx
	cmovge	rcx, rbp
	cmp	rdx, rcx
	jb	.label_2027
.label_2022:
	cmp	rdx, -1
	je	.label_2035
	mov	ecx, 4
	cmp	qword ptr [rax + rdx*8], r14
	je	.label_2032
.label_2035:
	mov	qword ptr [rsp + 0x18], r8
	test	r8, r8
	jle	.label_2038
	mov	rbp, r9
	mov	qword ptr [rsp + 0x10], r8
	shl	r8, 3
	mov	rdi, r8
	mov	rbx, r8
	call	malloc
	mov	qword ptr [rsp + 0x20], rax
	test	rax, rax
	je	.label_2014
	mov	rsi, qword ptr [rbp + 0x18]
	mov	rdi, rax
	mov	rdx, rbx
	call	memcpy
	jmp	.label_2024
.label_2011:
	movaps	xmm0, xmmword ptr [rip + label_1310]
	movaps	xmmword ptr [rsp + 0x10], xmm0
	mov	edi, 8
	call	malloc
	mov	qword ptr [rsp + 0x20], rax
	test	rax, rax
	je	.label_2029
	mov	qword ptr [rax], r14
	mov	dword ptr [rsp + 8], 0
	jmp	.label_2033
.label_2018:
	mov	qword ptr [rsp + 0x18], r8
.label_2038:
	xorps	xmm0, xmm0
	movaps	xmmword ptr [rsp + 0x10], xmm0
	mov	qword ptr [rsp + 0x20], 0
.label_2024:
	xor	ebx, ebx
.label_2026:
	mov	dword ptr [rsp + 8], ebx
	lea	rdi, [rsp + 0x10]
	mov	rsi, r14
	call	re_node_set_insert
	test	ebx, ebx
	jne	.label_2012
	xor	al, 1
	jne	.label_2012
.label_2033:
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
	jmp	.label_2037
.label_2041:
	xorps	xmm0, xmm0
	movaps	xmmword ptr [rsp + 0x10], xmm0
	mov	r12d, 0xc
	jmp	.label_2040
.label_2012:
	mov	rdi, qword ptr [rsp + 0x20]
	call	free
	test	ebx, ebx
	mov	eax, 0xc
	cmove	ebx, eax
	mov	dword ptr [rsp + 8], ebx
	mov	ecx, 1
	mov	dword ptr [rsp + 0xc], ebx
	jmp	.label_2017
.label_2029:
	xorps	xmm0, xmm0
	movaps	xmmword ptr [rsp + 0x10], xmm0
	mov	dword ptr [rsp + 8], 0xc
	mov	dword ptr [rsp + 0xc], 0xc
	mov	ecx, 1
.label_2017:
	mov	rsi, qword ptr [rsp + 0x38]
	mov	rdi, qword ptr [rsp + 0x30]
.label_2032:
	mov	r14, qword ptr [rsp + 0x28]
.label_2037:
	test	ecx, ecx
	je	.label_2019
	cmp	ecx, 4
	jne	.label_2034
.label_2019:
	xor	eax, eax
	cmp	byte ptr [r13 + 0x20], 0
	lea	r13, [r13 + 0x28]
	jne	.label_2036
	jmp	.label_2021
.label_2014:
	xorps	xmm0, xmm0
	movaps	xmmword ptr [rsp + 0x10], xmm0
	mov	ebx, 0xc
	jmp	.label_2026
.label_2034:
	cmp	ecx, 2
	je	.label_2016
	mov	eax, dword ptr [rsp + 0xc]
.label_2021:
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
	#Procedure 0x414030

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
	jmp	.label_2051
	nop	dword ptr [rax]
.label_2047:
	mov	rax, qword ptr [rax + rbp*8 + 0x10]
	mov	rbp, qword ptr [rax]
.label_2051:
	mov	rax, qword ptr [rbx + 8]
	test	rax, rax
	jle	.label_2045
	dec	rax
	mov	rcx, qword ptr [rbx + 0x10]
	mov	edx, 0
	je	.label_2048
	xor	edx, edx
	nop	word ptr cs:[rax + rax]
.label_2042:
	lea	rsi, [rdx + rax]
	shr	rsi, 1
	cmp	qword ptr [rcx + rsi*8], rbp
	lea	rdi, [rsi + 1]
	cmovl	rdx, rdi
	cmovge	rax, rsi
	cmp	rdx, rax
	jb	.label_2042
.label_2048:
	cmp	rdx, -1
	je	.label_2045
	cmp	qword ptr [rcx + rdx*8], rbp
	je	.label_2049
.label_2045:
	mov	rax, qword ptr [r12]
	mov	rcx, rbp
	shl	rcx, 4
	movzx	edx, byte ptr [rax + rcx + 8]
	cmp	edx, r15d
	jne	.label_2050
	cmp	qword ptr [rax + rcx], r14
	je	.label_2043
.label_2050:
	mov	rdi, rbx
	mov	rsi, rbp
	call	re_node_set_insert
	mov	ecx, eax
	mov	eax, 0xc
	test	cl, cl
	je	.label_2044
	mov	rax, qword ptr [r12 + 0x28]
	lea	rbp, [rbp + rbp*2]
	mov	rcx, qword ptr [rax + rbp*8 + 8]
	cmp	rcx, 2
	je	.label_2046
	test	rcx, rcx
	jne	.label_2047
	jmp	.label_2049
	nop	dword ptr [rax]
.label_2046:
	mov	rax, qword ptr [rax + rbp*8 + 0x10]
	mov	rdx, qword ptr [rax + 8]
	mov	rdi, r12
	mov	rsi, rbx
	mov	rcx, r14
	mov	r8d, r15d
	call	check_arrival_expand_ecl_sub
	test	eax, eax
	jne	.label_2044
	mov	rax, qword ptr [r12 + 0x28]
	jmp	.label_2047
.label_2043:
	cmp	r15d, 9
	jne	.label_2049
	mov	rdi, rbx
	mov	rsi, rbp
	call	re_node_set_insert
	mov	ecx, eax
	mov	eax, 0xc
	test	cl, cl
	je	.label_2044
.label_2049:
	xor	eax, eax
.label_2044:
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	pop	rbp
	ret	
	nop	
	.section	.text
	.align	32
	#Procedure 0x414150

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
	mov	r15, rsi
	mov	r14, rdi
	mov	r8, qword ptr [r12 + 8]
	test	r8, r8
	je	.label_2070
	mov	rbx, r8
	jle	.label_2076
	mov	rcx, qword ptr [r12 + 0x10]
	xor	esi, esi
	cmp	r8, 4
	mov	rbx, r8
	jb	.label_2057
	xor	esi, esi
	mov	rdx, r8
	and	rdx, 0xfffffffffffffffc
	mov	rbx, r8
	je	.label_2057
	movq	xmm0, r8
	lea	rbp, [rdx - 4]
	mov	rbx, rbp
	shr	rbx, 2
	lea	esi, [rbx + 1]
	and	esi, 3
	xor	edi, edi
	cmp	rbp, 0xc
	jae	.label_2071
	pxor	xmm1, xmm1
	jmp	.label_2068
.label_2071:
	lea	rbp, [rsi - 1]
	sub	rbp, rbx
	pxor	xmm1, xmm1
	xor	edi, edi
	nop	word ptr cs:[rax + rax]
.label_2067:
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
	jne	.label_2067
.label_2068:
	test	rsi, rsi
	je	.label_2065
	lea	rdi, [rcx + rdi*8 + 0x10]
	neg	rsi
	nop	word ptr cs:[rax + rax]
.label_2077:
	movdqu	xmm2, xmmword ptr [rdi - 0x10]
	movdqu	xmm3, xmmword ptr [rdi]
	paddq	xmm0, xmm2
	paddq	xmm1, xmm3
	add	rdi, 0x20
	inc	rsi
	jne	.label_2077
.label_2065:
	paddq	xmm0, xmm1
	pshufd	xmm1, xmm0, 0x4e
	paddq	xmm1, xmm0
	movq	rbx, xmm1
	cmp	r8, rdx
	mov	rsi, rdx
	je	.label_2076
.label_2057:
	mov	rdx, r8
	sub	rdx, rsi
	lea	rcx, [rcx + rsi*8]
	nop	
.label_2078:
	add	rbx, qword ptr [rcx]
	add	rcx, 8
	dec	rdx
	jne	.label_2078
.label_2076:
	mov	rdx, qword ptr [r15 + 0x40]
	mov	rcx, qword ptr [r15 + 0x88]
	and	rcx, rbx
	lea	rsi, [rcx + rcx*2]
	mov	rcx, qword ptr [rdx + rsi*8]
	test	rcx, rcx
	jle	.label_2060
	mov	rdx, qword ptr [rdx + rsi*8 + 0x10]
	xor	esi, esi
	nop	
.label_2056:
	test	r12, r12
	je	.label_2066
	mov	r13, qword ptr [rdx + rsi*8]
	cmp	rbx, qword ptr [r13]
	jne	.label_2066
	cmp	qword ptr [r13 + 0x10], r8
	jne	.label_2066
	mov	rdi, r8
	nop	dword ptr [rax + rax]
.label_2075:
	test	rdi, rdi
	jle	.label_2052
	mov	rbp, qword ptr [r13 + 0x18]
	mov	rbp, qword ptr [rbp + rdi*8 - 8]
	mov	rax, qword ptr [r12 + 0x10]
	cmp	rbp, qword ptr [rax + rdi*8 - 8]
	lea	rdi, [rdi - 1]
	je	.label_2075
	nop	word ptr cs:[rax + rax]
.label_2066:
	inc	rsi
	cmp	rsi, rcx
	jl	.label_2056
.label_2060:
	mov	edi, 0x70
	mov	esi, 1
	call	rpl_calloc
	mov	r13, rax
	test	r13, r13
	je	.label_2063
	mov	rax, r13
	add	rax, 8
	mov	rdi, qword ptr [r12 + 8]
	mov	qword ptr [r13 + 0x10], rdi
	mov	rbp, qword ptr [r12 + 8]
	test	rbp, rbp
	mov	qword ptr [rsp + 8], r14
	jle	.label_2064
	mov	qword ptr [rsp + 0x10], rax
	mov	qword ptr [r13 + 8], rdi
	shl	rdi, 3
	call	malloc
	mov	qword ptr [r13 + 0x18], rax
	test	rax, rax
	je	.label_2073
	lea	r14, [r12 + 0x10]
	mov	rsi, qword ptr [r12 + 0x10]
	shl	rbp, 3
	mov	rdi, rax
	mov	rdx, rbp
	call	memcpy
	mov	rax, qword ptr [rsp + 0x10]
	mov	qword ptr [r13 + 0x50], rax
	jmp	.label_2054
.label_2064:
	pxor	xmm0, xmm0
	movdqu	xmmword ptr [rax], xmm0
	mov	qword ptr [rax + 0x10], 0
	cmp	qword ptr [r12 + 8], 0
	mov	qword ptr [r13 + 0x50], rax
	jle	.label_2058
	lea	r14, [r12 + 0x10]
.label_2054:
	xor	eax, eax
	nop	dword ptr [rax]
.label_2062:
	mov	r8, qword ptr [r15]
	mov	rdx, qword ptr [r14]
	mov	rsi, qword ptr [rdx + rax*8]
	shl	rsi, 4
	mov	ebp, dword ptr [r8 + rsi + 8]
	mov	edx, ebp
	and	edx, 0x3ffff
	cmp	edx, 1
	je	.label_2061
	mov	edi, ebp
	shr	edi, 0x14
	movzx	ecx, byte ptr [r13 + 0x68]
	mov	edx, ecx
	shr	dl, 5
	movzx	edx, dl
	or	edx, edi
	shl	dl, 5
	and	dl, 0x20
	and	cl, 0xdf
	or	cl, dl
	mov	byte ptr [r13 + 0x68], cl
	cmp	bpl, 0xc
	je	.label_2074
	cmp	bpl, 4
	je	.label_2053
	cmp	bpl, 2
	jne	.label_2055
	or	cl, 0x10
	jmp	.label_2059
.label_2053:
	or	cl, 0x40
	jmp	.label_2059
.label_2055:
	lea	rdx, [r8 + rsi + 8]
	test	dword ptr [rdx], 0x3ff00
	je	.label_2061
.label_2074:
	or	cl, 0x80
.label_2059:
	mov	byte ptr [r13 + 0x68], cl
.label_2061:
	inc	rax
	cmp	rax, qword ptr [r12 + 8]
	jl	.label_2062
.label_2058:
	mov	rdi, r15
	mov	rsi, r13
	mov	rdx, rbx
	call	register_state
	test	eax, eax
	jne	.label_2069
.label_2052:
	mov	rax, r13
	add	rsp, 0x18
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_2070:
	mov	dword ptr [r14], 0
	jmp	.label_2072
.label_2069:
	mov	rdi, r13
	call	free_state
	mov	r14, qword ptr [rsp + 8]
	jmp	.label_2063
.label_2073:
	mov	rdi, r13
	call	free
.label_2063:
	mov	dword ptr [r14], 0xc
.label_2072:
	xor	r13d, r13d
	jmp	.label_2052
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x414490

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
	je	.label_2088
	mov	r8d, dword ptr [rdx + 0x90]
	mov	ebx, 1
	cmp	r8d, 1
	je	.label_2094
	lea	rax, [rcx + 1]
	mov	r11, qword ptr [rdx + 0x30]
	cmp	rax, r11
	jge	.label_2094
	lea	rax, [rcx*4]
	add	rax, qword ptr [rdx + 0x10]
	mov	ebx, 1
	nop	
.label_2099:
	cmp	dword ptr [rax + rbx*4], -1
	jne	.label_2094
	lea	rbp, [rcx + rbx + 1]
	inc	rbx
	cmp	rbp, r11
	jl	.label_2099
.label_2094:
	cmp	r10d, 5
	jne	.label_2103
	xor	r14d, r14d
	cmp	ebx, 2
	jl	.label_2079
	mov	rax, qword ptr [rdi + 0xd8]
	test	al, 0x40
	jne	.label_2082
	mov	rsi, qword ptr [rdx + 8]
	cmp	byte ptr [rsi + rcx], 0xa
	je	.label_2079
.label_2082:
	test	al, al
	jns	.label_2090
	mov	rax, qword ptr [rdx + 8]
	cmp	byte ptr [rax + rcx], 0
	je	.label_2079
.label_2090:
	mov	r14d, ebx
	jmp	.label_2079
.label_2103:
	cmp	ebx, 1
	setg	al
	xor	r14d, r14d
	cmp	r10d, 6
	jne	.label_2079
	test	al, al
	je	.label_2079
	mov	r15, qword ptr [r9 + rsi]
	mov	rsi, qword ptr [r15 + 0x40]
	test	rsi, rsi
	jne	.label_2097
	cmp	qword ptr [r15 + 0x48], 0
	jne	.label_2097
	xor	r12d, r12d
	cmp	qword ptr [r15 + 0x28], 0
	je	.label_2100
.label_2097:
	cmp	r8d, 1
	jne	.label_2102
	mov	rax, qword ptr [rdx + 8]
	movzx	r12d, byte ptr [rax + rcx]
	jmp	.label_2100
.label_2102:
	mov	rax, qword ptr [rdx + 0x10]
	mov	r12d, dword ptr [rax + rcx*4]
.label_2100:
	mov	rax, qword ptr [r15 + 0x28]
	test	rax, rax
	jle	.label_2086
	mov	rcx, qword ptr [r15]
	xor	edx, edx
	nop	dword ptr [rax + rax]
.label_2092:
	cmp	r12d, dword ptr [rcx + rdx*4]
	je	.label_2085
	inc	rdx
	cmp	rdx, rax
	jl	.label_2092
.label_2086:
	cmp	qword ptr [r15 + 0x48], 0
	jle	.label_2089
	xor	ebp, ebp
	nop	word ptr [rax + rax]
.label_2098:
	mov	rax, qword ptr [r15 + 0x18]
	mov	rsi, qword ptr [rax + rbp*8]
	mov	edi, r12d
	call	iswctype
	test	eax, eax
	jne	.label_2085
	inc	rbp
	cmp	rbp, qword ptr [r15 + 0x48]
	jl	.label_2098
	mov	rsi, qword ptr [r15 + 0x40]
.label_2089:
	xor	ecx, ecx
	test	rsi, rsi
	jle	.label_2095
	mov	rax, qword ptr [r15 + 8]
	xor	edx, edx
	nop	
.label_2080:
	cmp	dword ptr [rax + rdx*4], r12d
	jg	.label_2101
	mov	rcx, qword ptr [r15 + 0x10]
	cmp	r12d, dword ptr [rcx + rdx*4]
	jle	.label_2085
.label_2101:
	inc	rdx
	xor	ecx, ecx
	cmp	rdx, rsi
	jl	.label_2080
	jmp	.label_2095
.label_2085:
	mov	ecx, ebx
.label_2095:
	test	byte ptr [r15 + 0x20], 1
	jne	.label_2087
	mov	r14d, ecx
	jmp	.label_2079
.label_2087:
	test	ecx, ecx
	jg	.label_2079
	test	ebx, ebx
	mov	r14d, 1
	cmovg	r14d, ebx
.label_2079:
	mov	eax, r14d
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_2088:
	mov	rax, qword ptr [rdx + 8]
	mov	bl, byte ptr [rax + rcx]
	xor	r14d, r14d
	cmp	bl, 0xc2
	jb	.label_2079
	lea	rsi, [rcx + 2]
	mov	rdx, qword ptr [rdx + 0x58]
	cmp	rsi, rdx
	jg	.label_2079
	mov	dil, byte ptr [rax + rcx + 1]
	cmp	bl, 0xdf
	ja	.label_2096
	cmp	dil, 0xc0
	sbb	eax, eax
	and	eax, 2
	xor	r14d, r14d
	test	dil, dil
	cmovs	r14d, eax
	jmp	.label_2079
.label_2096:
	cmp	bl, 0xef
	ja	.label_2093
	mov	esi, 3
	cmp	bl, 0xe0
	jne	.label_2083
	cmp	dil, 0xa0
	jb	.label_2079
	jmp	.label_2083
.label_2093:
	cmp	bl, 0xf7
	ja	.label_2084
	mov	esi, 4
	cmp	bl, 0xf0
	jne	.label_2083
	cmp	dil, 0x90
	jb	.label_2079
	jmp	.label_2083
.label_2084:
	cmp	bl, 0xfb
	ja	.label_2091
	mov	esi, 5
	cmp	bl, 0xf8
	jne	.label_2083
	cmp	dil, 0x88
	jb	.label_2079
	jmp	.label_2083
.label_2091:
	cmp	bl, 0xfd
	ja	.label_2079
	mov	esi, 6
	cmp	bl, 0xfc
	jne	.label_2083
	cmp	dil, 0x84
	jb	.label_2079
.label_2083:
	mov	edi, esi
	lea	rbp, [rdi + rcx]
	cmp	rbp, rdx
	jg	.label_2079
	add	rax, rcx
	mov	ecx, 1
.label_2081:
	movzx	edx, byte ptr [rax + rcx]
	test	dl, dl
	jns	.label_2079
	cmp	dl, 0xbf
	ja	.label_2079
	inc	rcx
	cmp	rcx, rdi
	jl	.label_2081
	mov	r14d, esi
	jmp	.label_2079
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x414720

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
	ja	.label_2107
	jmp	qword ptr [(rbp * 8) + label_2106]
.label_2519:
	cmp	byte ptr [rsi], cl
	je	.label_2104
	xor	eax, eax
	jmp	.label_2107
.label_2520:
	mov	rax, qword ptr [rsi]
	mov	ebx, ecx
	shr	bl, 6
	movzx	esi, bl
	mov	rax, qword ptr [rax + rsi*8]
	bt	rax, rcx
	jb	.label_2104
	xor	eax, eax
	jmp	.label_2107
.label_2522:
	test	cl, cl
	js	.label_2110
.label_2521:
	test	cl, cl
	je	.label_2111
	cmp	cl, 0xa
	jne	.label_2104
	mov	rax, qword ptr [rdi + 0x98]
	test	byte ptr [rax + 0xd8], 0x40
	jne	.label_2104
	xor	eax, eax
	jmp	.label_2107
.label_2111:
	mov	rax, qword ptr [rdi + 0x98]
	cmp	byte ptr [rax + 0xd8], 0
	js	.label_2112
.label_2104:
	mov	eax, r14d
	mov	ebp, eax
	shr	ebp, 8
	mov	al, 1
	test	bp, 0x3ff
	je	.label_2107
	mov	eax, dword ptr [rdi + 0xa0]
	mov	rsi, rdx
	mov	edx, eax
	call	re_string_context_at
	mov	ecx, eax
	and	ecx, 1
	test	bpl, 4
	je	.label_2108
	test	ecx, ecx
	jne	.label_2108
	xor	eax, eax
	jmp	.label_2107
.label_2108:
	mov	edx, r14d
	test	dh, 8
	je	.label_2105
	test	ecx, ecx
	je	.label_2105
.label_2110:
	xor	eax, eax
	jmp	.label_2107
.label_2105:
	mov	ecx, r14d
	test	ch, 0x20
	je	.label_2109
	mov	ecx, eax
	and	ecx, 2
	jne	.label_2109
.label_2112:
	xor	eax, eax
	jmp	.label_2107
.label_2109:
	and	eax, 8
	test	bpl, bpl
	setns	cl
	shr	eax, 3
	or	al, cl
.label_2107:
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	nop	
	.section	.text
	.align	32
	#Procedure 0x414810

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
	sub	rsp, 0xa8
	mov	r14, rsi
	mov	qword ptr [rbp - 0x30], rdi
	mov	edi, 0x3800
	call	malloc
	mov	r15, rax
	test	r15, r15
	je	.label_2125
	lea	rax, [r14 + 0x58]
	mov	qword ptr [rbp - 0xc8], rax
	pxor	xmm0, xmm0
	movdqu	xmmword ptr [r14 + 0x58], xmm0
	movdqa	xmmword ptr [rbp - 0x40], xmm0
	movdqa	xmmword ptr [rbp - 0x50], xmm0
	xor	ebx, ebx
	cmp	qword ptr [r14 + 0x10], 0
	jle	.label_2128
	lea	rax, [r15 + 0x1800]
	mov	qword ptr [rbp - 0x88], rax
	xor	r12d, r12d
	mov	qword ptr [rbp - 0x70], r15
	mov	rsi, qword ptr [rbp - 0x30]
	mov	qword ptr [rbp - 0xb0], r14
	nop	dword ptr [rax]
.label_2176:
	mov	rax, qword ptr [r14 + 0x18]
	mov	rax, qword ptr [rax + rbx*8]
	mov	rcx, qword ptr [rsi]
	shl	rax, 4
	lea	rdi, [rcx + rax]
	mov	eax, dword ptr [rcx + rax + 8]
	movzx	ecx, al
	mov	dword ptr [rbp - 0xa0], ecx
	cmp	ecx, 1
	jne	.label_2180
	mov	cl, byte ptr [rdi]
	mov	edx, 1
	shl	rdx, cl
	shr	cl, 6
	movzx	ecx, cl
	or	qword ptr [rbp + rcx*8 - 0x50], rdx
.label_2115:
	mov	ecx, eax
	shr	ecx, 8
	mov	edx, ecx
	and	edx, 0x3ff
	je	.label_2156
	test	cl, 0x20
	je	.label_2162
	mov	rdx, qword ptr [rbp - 0x50]
	test	dh, 4
	pxor	xmm0, xmm0
	movdqa	xmmword ptr [rbp - 0x40], xmm0
	movdqa	xmmword ptr [rbp - 0x50], xmm0
	je	.label_2163
	mov	qword ptr [rbp - 0x50], 0x400
.label_2162:
	test	cl, cl
	js	.label_2169
	test	cl, 4
	je	.label_2172
	mov	edx, eax
	and	edx, 0x4000ff
	cmp	edx, 1
	je	.label_2169
	mov	r9, rbx
	cmp	dword ptr [rsi + 0xb4], 1
	jle	.label_2181
	mov	rdx, qword ptr [rsi + 0x78]
	movdqu	xmm0, xmmword ptr [rsi + 0xb8]
	movdqu	xmm1, xmmword ptr [rdx]
	pcmpeqd	xmm2, xmm2
	pxor	xmm1, xmm2
	por	xmm1, xmm0
	pand	xmm1, xmmword ptr [rbp - 0x50]
	movdqa	xmmword ptr [rbp - 0x50], xmm1
	movq	r8, xmm1
	pshufd	xmm0, xmm1, 0x4e
	movq	r10, xmm0
	movdqu	xmm0, xmmword ptr [rsi + 0xc8]
	movdqu	xmm1, xmmword ptr [rdx + 0x10]
	pxor	xmm1, xmm2
	por	xmm1, xmm0
	pand	xmm1, xmmword ptr [rbp - 0x40]
	movq	rbx, xmm1
	or	rbx, r8
	or	rbx, r10
	movdqa	xmmword ptr [rbp - 0x40], xmm1
	pshufd	xmm0, xmm1, 0x4e
	jmp	.label_2186
	nop	word ptr cs:[rax + rax]
.label_2180:
	cmp	al, 7
	je	.label_2211
	cmp	al, 5
	je	.label_2212
	cmp	al, 3
	jne	.label_2163
	mov	rcx, qword ptr [rdi]
	movups	xmm0, xmmword ptr [rcx]
	orps	xmm0, xmmword ptr [rbp - 0x50]
	movaps	xmmword ptr [rbp - 0x50], xmm0
	movdqu	xmm0, xmmword ptr [rcx + 0x10]
	por	xmm0, xmmword ptr [rbp - 0x40]
	movdqa	xmmword ptr [rbp - 0x40], xmm0
	jmp	.label_2115
.label_2211:
	pcmpeqd	xmm0, xmm0
	movdqa	xmmword ptr [rbp - 0x50], xmm0
	mov	rcx, qword ptr [rsi + 0xd8]
	mov	rdx, -2
	test	cl, 0x40
	jne	.label_2193
	mov	qword ptr [rbp - 0x50], -0x401
	mov	rdx, -0x402
.label_2193:
	test	cl, cl
	jns	.label_2115
	mov	qword ptr [rbp - 0x50], rdx
	jmp	.label_2115
.label_2212:
	cmp	dword ptr [rsi + 0xb4], 2
	jl	.label_2121
	mov	rcx, qword ptr [rsi + 0x78]
	movdqu	xmm0, xmmword ptr [rcx]
	por	xmm0, xmmword ptr [rbp - 0x50]
	movdqa	xmmword ptr [rbp - 0x50], xmm0
	movdqu	xmm1, xmmword ptr [rcx + 0x10]
	por	xmm1, xmmword ptr [rbp - 0x40]
	movdqa	xmmword ptr [rbp - 0x40], xmm1
	movq	rcx, xmm0
	jmp	.label_2122
.label_2121:
	pcmpeqd	xmm0, xmm0
	movdqa	xmmword ptr [rbp - 0x40], xmm0
	movdqa	xmmword ptr [rbp - 0x50], xmm0
	mov	rcx, -1
.label_2122:
	mov	rdx, qword ptr [rsi + 0xd8]
	test	dl, 0x40
	jne	.label_2136
	and	rcx, 0xfffffffffffffbff
	mov	qword ptr [rbp - 0x50], rcx
.label_2136:
	test	dl, dl
	jns	.label_2115
	and	rcx, 0xfffffffffffffffe
	mov	qword ptr [rbp - 0x50], rcx
	jmp	.label_2115
.label_2181:
	movdqu	xmm0, xmmword ptr [rsi + 0xb8]
	pand	xmm0, xmmword ptr [rbp - 0x50]
	movdqa	xmmword ptr [rbp - 0x50], xmm0
	movq	rdx, xmm0
	pshufd	xmm0, xmm0, 0x4e
	movq	r8, xmm0
	movdqu	xmm0, xmmword ptr [rsi + 0xc8]
	pand	xmm0, xmmword ptr [rbp - 0x40]
	movq	rbx, xmm0
	or	rbx, rdx
	or	rbx, r8
	movdqa	xmmword ptr [rbp - 0x40], xmm0
	pshufd	xmm0, xmm0, 0x4e
.label_2186:
	movq	rdx, xmm0
	or	rdx, rbx
	test	rdx, rdx
	mov	rbx, r9
	je	.label_2163
.label_2172:
	test	cl, 8
	je	.label_2156
	cmp	dword ptr [rbp - 0xa0], 1
	setne	cl
	test	eax, 0x400000
	je	.label_2114
	test	cl, cl
	jne	.label_2114
	nop	word ptr cs:[rax + rax]
.label_2169:
	pxor	xmm0, xmm0
	movdqa	xmmword ptr [rbp - 0x40], xmm0
	movdqa	xmmword ptr [rbp - 0x50], xmm0
	jmp	.label_2163
.label_2114:
	cmp	dword ptr [rsi + 0xb4], 1
	jle	.label_2177
	mov	rax, qword ptr [rsi + 0x78]
	movdqu	xmm0, xmmword ptr [rsi + 0xb8]
	movdqu	xmm1, xmmword ptr [rax]
	pand	xmm1, xmm0
	pandn	xmm1, xmmword ptr [rbp - 0x50]
	movdqa	xmmword ptr [rbp - 0x50], xmm1
	movq	r8, xmm1
	pshufd	xmm0, xmm1, 0x4e
	movq	rdx, xmm0
	movdqu	xmm0, xmmword ptr [rsi + 0xc8]
	movdqu	xmm1, xmmword ptr [rax + 0x10]
	pand	xmm1, xmm0
	pandn	xmm1, xmmword ptr [rbp - 0x40]
	movq	rcx, xmm1
	or	rcx, r8
	or	rcx, rdx
	movdqa	xmmword ptr [rbp - 0x40], xmm1
	pshufd	xmm0, xmm1, 0x4e
	movq	rax, xmm0
	or	rax, rcx
	jmp	.label_2182
.label_2177:
	movdqu	xmm0, xmmword ptr [rsi + 0xb8]
	pandn	xmm0, xmmword ptr [rbp - 0x50]
	movdqa	xmmword ptr [rbp - 0x50], xmm0
	movq	rax, xmm0
	pshufd	xmm0, xmm0, 0x4e
	movq	rcx, xmm0
	movdqu	xmm0, xmmword ptr [rsi + 0xc8]
	pandn	xmm0, xmmword ptr [rbp - 0x40]
	movq	rdx, xmm0
	or	rdx, rax
	or	rdx, rcx
	movdqa	xmmword ptr [rbp - 0x40], xmm0
	pshufd	xmm0, xmm0, 0x4e
	movq	rax, xmm0
	or	rax, rdx
.label_2182:
	test	rax, rax
	je	.label_2163
	nop	word ptr cs:[rax + rax]
.label_2156:
	mov	qword ptr [rbp - 0xa8], rbx
	test	r12, r12
	jle	.label_2222
	mov	qword ptr [rbp - 0x78], r15
	mov	r14, qword ptr [rbp - 0x88]
	xor	r13d, r13d
	mov	qword ptr [rbp - 0x80], rdi
	jmp	.label_2142
.label_2222:
	xor	r13d, r13d
	jmp	.label_2117
.label_2214:
	pxor	xmm0, xmm0
	mov	rax, qword ptr [rbp - 0x90]
	movdqu	xmmword ptr [rax], xmm0
	mov	ebx, 0x1a
	mov	r12, qword ptr [rbp - 0x60]
	mov	rsi, qword ptr [rbp - 0x30]
	mov	rdi, qword ptr [rbp - 0x80]
	mov	r13, qword ptr [rbp - 0x58]
	mov	r15, qword ptr [rbp - 0x70]
	jmp	.label_2120
	nop	word ptr cs:[rax + rax]
.label_2142:
	cmp	dword ptr [rbp - 0xa0], 1
	jne	.label_2133
	movzx	eax, byte ptr [rdi]
	mov	ecx, eax
	shr	cl, 6
	movzx	ecx, cl
	mov	rcx, qword ptr [r14 + rcx*8]
	mov	ebx, 0x13
	bt	rcx, rax
	jae	.label_2120
.label_2133:
	mov	qword ptr [rbp - 0x58], r13
	mov	qword ptr [rbp - 0x60], r12
	mov	rax, qword ptr [rbp - 0x50]
	mov	rcx, qword ptr [rbp - 0x48]
	mov	r9, qword ptr [r14]
	mov	r13, qword ptr [r14 + 8]
	mov	rdx, r9
	and	rdx, rax
	mov	rsi, r13
	and	rsi, rcx
	mov	qword ptr [rbp - 0x90], rsi
	mov	rdi, rsi
	mov	qword ptr [rbp - 0x98], rdx
	or	rdi, rdx
	mov	r11, qword ptr [rbp - 0x40]
	mov	r12, qword ptr [r14 + 0x10]
	mov	r8, r12
	and	r8, r11
	or	rdi, r8
	mov	rdx, qword ptr [rbp - 0x38]
	mov	rsi, qword ptr [r14 + 0x18]
	mov	r10, rsi
	and	r10, rdx
	mov	ebx, 0x13
	or	rdi, r10
	je	.label_2124
	mov	rbx, rax
	not	rbx
	and	rbx, r9
	not	r9
	and	r9, rax
	mov	qword ptr [rbp - 0xc0], r9
	mov	qword ptr [rbp - 0x50], r9
	mov	r15, rcx
	not	r15
	and	r15, r13
	mov	rax, r15
	or	rax, rbx
	not	r13
	and	r13, rcx
	mov	qword ptr [rbp - 0x48], r13
	mov	rcx, r11
	not	rcx
	and	rcx, r12
	or	rax, rcx
	not	r12
	and	r12, r11
	mov	qword ptr [rbp - 0x40], r12
	mov	rdi, rdx
	not	rdi
	and	rdi, rsi
	not	rsi
	and	rsi, rdx
	mov	qword ptr [rbp - 0x38], rsi
	or	rax, rdi
	mov	qword ptr [rbp - 0xb8], rsi
	je	.label_2161
	mov	r11, qword ptr [rbp - 0x60]
	mov	rax, r11
	shl	rax, 5
	mov	rdx, qword ptr [rbp - 0x88]
	mov	qword ptr [rdx + rax], rbx
	mov	qword ptr [rdx + rax + 8], r15
	mov	qword ptr [rdx + rax + 0x10], rcx
	mov	qword ptr [rdx + rax + 0x18], rdi
	mov	rax, qword ptr [rbp - 0x98]
	mov	qword ptr [r14], rax
	mov	rax, qword ptr [rbp - 0x90]
	mov	qword ptr [r14 + 8], rax
	mov	qword ptr [r14 + 0x10], r8
	mov	qword ptr [r14 + 0x18], r10
	lea	rbx, [r11 + r11*2]
	mov	r15, qword ptr [rbp - 0x70]
	lea	rcx, [r15 + rbx*8]
	mov	rax, qword ptr [rbp - 0x78]
	mov	rdi, qword ptr [rax + 8]
	mov	qword ptr [r15 + rbx*8 + 8], rdi
	mov	rax, qword ptr [rax + 8]
	test	rax, rax
	jle	.label_2192
	mov	qword ptr [rbp - 0x98], rax
	mov	qword ptr [rbp - 0x90], rcx
	mov	qword ptr [rcx], rdi
	shl	rdi, 3
	call	malloc
	mov	qword ptr [r15 + rbx*8 + 0x10], rax
	test	rax, rax
	je	.label_2214
	mov	rcx, qword ptr [rbp - 0x78]
	mov	rsi, qword ptr [rcx + 0x10]
	mov	rdx, qword ptr [rbp - 0x98]
	shl	rdx, 3
	mov	rdi, rax
	call	memcpy
	jmp	.label_2221
.label_2161:
	mov	r15, qword ptr [rbp - 0x70]
	mov	rcx, qword ptr [rbp - 0xa8]
	jmp	.label_2207
.label_2192:
	pxor	xmm0, xmm0
	movdqu	xmmword ptr [rcx], xmm0
	mov	qword ptr [rcx + 0x10], 0
.label_2221:
	inc	qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0xa8]
	mov	r15, qword ptr [rbp - 0x70]
.label_2207:
	mov	rax, qword ptr [rbp - 0xb0]
	mov	rax, qword ptr [rax + 0x18]
	mov	rsi, qword ptr [rax + rcx*8]
	mov	rdi, qword ptr [rbp - 0x78]
	call	re_node_set_insert
	mov	ebx, 0x1a
	test	al, al
	je	.label_2124
	or	r13, qword ptr [rbp - 0xc0]
	or	r12, qword ptr [rbp - 0xb8]
	or	r12, r13
	mov	ebx, 0
	mov	eax, 0x11
	cmove	ebx, eax
.label_2124:
	mov	r12, qword ptr [rbp - 0x60]
	mov	rsi, qword ptr [rbp - 0x30]
	mov	rdi, qword ptr [rbp - 0x80]
	mov	r13, qword ptr [rbp - 0x58]
.label_2120:
	mov	eax, ebx
	and	al, 0x1f
	and	ebx, 0x1f
	cmp	al, 0x1a
	ja	.label_2138
	jmp	qword ptr [(rbx * 8) + label_2141]
.label_2526:
	inc	r13
	add	r14, 0x20
	add	qword ptr [rbp - 0x78], 0x18
	cmp	r13, r12
	jl	.label_2142
.label_2117:
	cmp	r13, r12
	mov	r14, qword ptr [rbp - 0xb0]
	mov	rbx, qword ptr [rbp - 0xa8]
	jne	.label_2163
	mov	rax, r13
	shl	rax, 5
	movaps	xmm0, xmmword ptr [rbp - 0x50]
	movdqa	xmm1, xmmword ptr [rbp - 0x40]
	mov	rcx, qword ptr [rbp - 0x88]
	movdqu	xmmword ptr [rcx + rax + 0x10], xmm1
	movups	xmmword ptr [rcx + rax], xmm0
	mov	rcx, rbx
	lea	rbx, [r13 + r13*2]
	mov	rax, qword ptr [r14 + 0x18]
	mov	r14, qword ptr [rax + rcx*8]
	movdqa	xmm0, xmmword ptr [rip + label_1310]
	movdqu	xmmword ptr [r15 + rbx*8], xmm0
	mov	edi, 8
	call	malloc
	mov	qword ptr [r15 + rbx*8 + 0x10], rax
	test	rax, rax
	je	.label_2166
	mov	qword ptr [rax], r14
	inc	r13
	pxor	xmm0, xmm0
	movdqa	xmmword ptr [rbp - 0x40], xmm0
	movdqa	xmmword ptr [rbp - 0x50], xmm0
	mov	r12, r13
	mov	rsi, qword ptr [rbp - 0x30]
	mov	r14, qword ptr [rbp - 0xb0]
	mov	rbx, qword ptr [rbp - 0xa8]
	nop	dword ptr [rax]
.label_2163:
	inc	rbx
	cmp	rbx, qword ptr [r14 + 0x10]
	jl	.label_2176
	test	r12, r12
	jle	.label_2187
.label_2138:
	lea	rax, [r12 + 1]
	mov	qword ptr [rbp - 0x50], rax
	mov	qword ptr [rbp - 0x48], 0
	lea	rdi, [r12*8 + 8]
	call	malloc
	mov	qword ptr [rbp - 0x40], rax
	mov	ecx, 0xc
	test	rax, rax
	je	.label_2197
	xor	ecx, ecx
.label_2197:
	mov	dword ptr [rbp - 0x64], ecx
	movabs	rcx, 0xaaaaaaaaaaaa855
	cmp	r12, rcx
	ja	.label_2199
	test	rax, rax
	je	.label_2199
	lea	rax, [r12*8]
	lea	rdi, [rax + rax*2]
	lea	rax, [rax + rax*2 + 0x3800]
	cmp	rax, 0xfbf
	ja	.label_2204
	mov	rax, rsp
	add	rdi, 0xf
	and	rdi, 0xfffffffffffffff0
	sub	rax, rdi
	mov	rsp, rax
	mov	dword ptr [rbp - 0xa8], 0
	jmp	.label_2210
.label_2204:
	call	malloc
	test	rax, rax
	je	.label_2199
	mov	cl, 1
	mov	dword ptr [rbp - 0xa8], ecx
.label_2210:
	mov	qword ptr [rbp - 0x58], rax
	lea	rax, [rax + r12*8]
	mov	qword ptr [rbp - 0xc0], rax
	lea	rax, [rax + r12*8]
	mov	qword ptr [rbp - 0xb8], rax
	xor	eax, eax
	mov	qword ptr [rbp - 0xa0], rax
	lea	r13, [rbp - 0x50]
	xor	eax, eax
	mov	qword ptr [rbp - 0x98], rax
	xor	eax, eax
	mov	qword ptr [rbp - 0x90], rax
	xor	eax, eax
	mov	qword ptr [rbp - 0x78], rax
	xor	r15d, r15d
	xor	eax, eax
	mov	qword ptr [rbp - 0x80], rax
	mov	rsi, qword ptr [rbp - 0x30]
	mov	qword ptr [rbp - 0x60], r12
	nop	word ptr cs:[rax + rax]
.label_2202:
	mov	qword ptr [rbp - 0x48], 0
	lea	rcx, [r15 + r15*2]
	mov	rax, qword ptr [rbp - 0x70]
	mov	rax, qword ptr [rax + rcx*8 + 8]
	test	rax, rax
	jle	.label_2127
	mov	rdx, qword ptr [rbp - 0x70]
	lea	rbx, [rdx + rcx*8 + 8]
	mov	r14, qword ptr [rdx + rcx*8 + 0x10]
	xor	r12d, r12d
	nop	dword ptr [rax + rax]
.label_2150:
	mov	rcx, qword ptr [r14 + r12*8]
	mov	rdx, qword ptr [rsi + 0x18]
	mov	rcx, qword ptr [rdx + rcx*8]
	cmp	rcx, -1
	je	.label_2209
	mov	rax, qword ptr [rsi + 0x30]
	lea	rcx, [rcx + rcx*2]
	lea	rsi, [rax + rcx*8]
	mov	rdi, r13
	call	re_node_set_merge
	mov	dword ptr [rbp - 0x64], eax
	test	eax, eax
	jne	.label_2118
	mov	rax, qword ptr [rbx]
	mov	rsi, qword ptr [rbp - 0x30]
.label_2209:
	inc	r12
	cmp	r12, rax
	jl	.label_2150
.label_2127:
	xor	ecx, ecx
	lea	rdi, [rbp - 0x64]
	mov	rdx, r13
	call	re_acquire_state_context
	mov	rcx, qword ptr [rbp - 0x58]
	mov	qword ptr [rcx + r15*8], rax
	test	rax, rax
	jne	.label_2153
	mov	ecx, dword ptr [rbp - 0x64]
	test	ecx, ecx
	jne	.label_2118
.label_2153:
	cmp	byte ptr [rax + 0x68], 0
	js	.label_2159
	mov	rcx, qword ptr [rbp - 0xc0]
	mov	qword ptr [rcx + r15*8], rax
	mov	rax, qword ptr [rbp - 0x58]
	mov	rax, qword ptr [rax + r15*8]
	mov	rcx, qword ptr [rbp - 0xb8]
	mov	qword ptr [rcx + r15*8], rax
	jmp	.label_2154
	nop	
.label_2159:
	mov	ecx, 1
	lea	rdi, [rbp - 0x64]
	mov	rsi, qword ptr [rbp - 0x30]
	mov	rdx, r13
	call	re_acquire_state_context
	mov	rcx, qword ptr [rbp - 0xc0]
	mov	qword ptr [rcx + r15*8], rax
	test	rax, rax
	jne	.label_2174
	mov	ecx, dword ptr [rbp - 0x64]
	test	ecx, ecx
	jne	.label_2118
.label_2174:
	mov	rcx, qword ptr [rbp - 0x58]
	cmp	qword ptr [rcx + r15*8], rax
	je	.label_2183
	mov	rsi, qword ptr [rbp - 0x30]
	cmp	dword ptr [rsi + 0xb4], 1
	mov	al, 1
	jg	.label_2185
	mov	rax, qword ptr [rbp - 0x80]
.label_2185:
	mov	qword ptr [rbp - 0x80], rax
	jmp	.label_2216
.label_2183:
	mov	rsi, qword ptr [rbp - 0x30]
.label_2216:
	mov	ecx, 2
	lea	rdi, [rbp - 0x64]
	mov	rdx, r13
	call	re_acquire_state_context
	mov	rcx, qword ptr [rbp - 0xb8]
	mov	qword ptr [rcx + r15*8], rax
	test	rax, rax
	jne	.label_2154
	mov	eax, dword ptr [rbp - 0x64]
	test	eax, eax
	jne	.label_2118
	nop	word ptr cs:[rax + rax]
.label_2154:
	mov	rax, r15
	shl	rax, 5
	mov	rcx, qword ptr [rbp - 0x88]
	mov	rdx, qword ptr [rbp - 0x78]
	or	rdx, qword ptr [rcx + rax]
	mov	qword ptr [rbp - 0x78], rdx
	mov	rdx, qword ptr [rbp - 0x90]
	or	rdx, qword ptr [rcx + rax + 8]
	mov	qword ptr [rbp - 0x90], rdx
	mov	rdx, qword ptr [rbp - 0x98]
	or	rdx, qword ptr [rcx + rax + 0x10]
	mov	qword ptr [rbp - 0x98], rdx
	mov	rdx, qword ptr [rbp - 0xa0]
	or	rdx, qword ptr [rcx + rax + 0x18]
	mov	qword ptr [rbp - 0xa0], rdx
	inc	r15
	mov	r12, qword ptr [rbp - 0x60]
	cmp	r15, r12
	mov	rsi, qword ptr [rbp - 0x30]
	jl	.label_2202
	mov	rax, qword ptr [rbp - 0x80]
	and	al, 1
	mov	qword ptr [rbp - 0x80], rax
	mov	edi, 8
	jne	.label_2223
	mov	esi, 0x100
	call	rpl_calloc
	mov	rcx, qword ptr [rbp - 0xc8]
	mov	qword ptr [rcx], rax
	test	rax, rax
	je	.label_2118
	cmp	qword ptr [rbp - 0x78], 0
	mov	r14, qword ptr [rbp - 0x70]
	mov	r15, qword ptr [rbp - 0x60]
	mov	r10, qword ptr [rbp - 0x88]
	mov	rdi, qword ptr [rbp - 0x58]
	mov	r13, qword ptr [rbp - 0x90]
	je	.label_2123
	lea	r8, [rdi - 8]
	mov	edx, 1
	xor	esi, esi
	mov	rbx, qword ptr [rbp - 0x78]
	jmp	.label_2131
.label_2200:
	mov	rcx, r10
	mov	r9, r8
.label_2129:
	add	r9, 8
	test	qword ptr [rcx], rdx
	lea	rcx, [rcx + 0x20]
	je	.label_2129
	mov	rcx, qword ptr [rbp - 0x30]
	test	qword ptr [rcx + 0xb8], rdx
	je	.label_2201
	mov	rcx, qword ptr [r9 + r15*8]
	jmp	.label_2168
.label_2201:
	mov	rcx, qword ptr [r9]
.label_2168:
	mov	qword ptr [rax + rsi*8], rcx
	jmp	.label_2143
	nop	word ptr [rax + rax]
.label_2131:
	test	bl, 1
	jne	.label_2200
.label_2143:
	add	rdx, rdx
	shr	rbx, 1
	inc	rsi
	test	rbx, rbx
	jne	.label_2131
.label_2123:
	test	r13, r13
	mov	r11, qword ptr [rbp - 0xa0]
	mov	r12, qword ptr [rbp - 0x98]
	je	.label_2148
	lea	r8, [rdi - 8]
	lea	r9, [r14 + 0x1808]
	mov	esi, 1
	mov	ebx, 0x40
	jmp	.label_2152
.label_2113:
	mov	rdx, r9
	mov	rcx, r8
.label_2158:
	add	rcx, 8
	test	qword ptr [rdx], rsi
	lea	rdx, [rdx + 0x20]
	je	.label_2158
	mov	rdx, qword ptr [rbp - 0x30]
	test	qword ptr [rdx + 0xc0], rsi
	je	.label_2188
	mov	rcx, qword ptr [rcx + r15*8]
	jmp	.label_2165
.label_2188:
	mov	rcx, qword ptr [rcx]
.label_2165:
	mov	qword ptr [rax + rbx*8], rcx
	jmp	.label_2171
	nop	dword ptr [rax]
.label_2152:
	test	r13b, 1
	jne	.label_2113
.label_2171:
	add	rsi, rsi
	shr	r13, 1
	inc	rbx
	test	r13, r13
	jne	.label_2152
.label_2148:
	test	r12, r12
	je	.label_2140
	lea	r8, [rdi - 8]
	lea	r9, [r14 + 0x1810]
	mov	esi, 1
	mov	ebx, 0x80
	jmp	.label_2175
.label_2196:
	mov	rdx, r9
	mov	rcx, r8
.label_2184:
	add	rcx, 8
	test	qword ptr [rdx], rsi
	lea	rdx, [rdx + 0x20]
	je	.label_2184
	mov	rdx, qword ptr [rbp - 0x30]
	test	qword ptr [rdx + 0xc8], rsi
	je	.label_2189
	mov	rcx, qword ptr [rcx + r15*8]
	jmp	.label_2194
.label_2189:
	mov	rcx, qword ptr [rcx]
.label_2194:
	mov	qword ptr [rax + rbx*8], rcx
	jmp	.label_2195
	nop	
.label_2175:
	test	r12b, 1
	jne	.label_2196
.label_2195:
	add	rsi, rsi
	shr	r12, 1
	inc	rbx
	test	r12, r12
	jne	.label_2175
.label_2140:
	test	r11, r11
	je	.label_2126
	lea	r8, [rdi - 8]
	lea	r9, [r14 + 0x1818]
	mov	esi, 1
	mov	ebx, 0xc0
	jmp	.label_2160
.label_2178:
	mov	rdx, r9
	mov	rcx, r8
.label_2206:
	add	rcx, 8
	test	qword ptr [rdx], rsi
	lea	rdx, [rdx + 0x20]
	je	.label_2206
	mov	rdx, qword ptr [rbp - 0x30]
	test	qword ptr [rdx + 0xd0], rsi
	je	.label_2208
	mov	rcx, qword ptr [rcx + r15*8]
	jmp	.label_2149
.label_2208:
	mov	rcx, qword ptr [rcx]
.label_2149:
	mov	qword ptr [rax + rbx*8], rcx
	jmp	.label_2213
	nop	
.label_2160:
	test	r11b, 1
	jne	.label_2178
.label_2213:
	add	rsi, rsi
	shr	r11, 1
	inc	rbx
	test	r11, r11
	jne	.label_2160
.label_2126:
	mov	rcx, qword ptr [rbp - 0x78]
	test	ch, 4
	je	.label_2217
	xor	ecx, ecx
	nop	
.label_2220:
	test	byte ptr [r10 + 1], 4
	jne	.label_2219
	inc	rcx
	add	r10, 0x20
	cmp	rcx, r15
	jl	.label_2220
	jmp	.label_2217
.label_2219:
	mov	rdx, r15
	shl	rdx, 4
	add	rdx, rdi
	mov	rsi, qword ptr [rbp - 0x80]
	test	sil, sil
	mov	rcx, qword ptr [rdx + rcx*8]
	mov	qword ptr [rax + 0x50], rcx
	je	.label_2217
	mov	qword ptr [rax + 0x850], rcx
.label_2217:
	mov	eax, dword ptr [rbp - 0xa8]
	test	al, al
	je	.label_2119
	call	free
.label_2119:
	mov	rdi, qword ptr [rbp - 0x40]
	call	free
	mov	rbx, r14
	add	rbx, 0x10
	nop	word ptr cs:[rax + rax]
.label_2130:
	mov	rdi, qword ptr [rbx]
	call	free
	add	rbx, 0x18
	dec	r15
	jne	.label_2130
	mov	rdi, r14
	call	free
	mov	al, 1
	jmp	.label_2155
.label_2199:
	mov	rdi, qword ptr [rbp - 0x40]
	call	free
	jmp	.label_2137
.label_2166:
	lea	rax, [r15 + rbx*8]
	pxor	xmm0, xmm0
	movdqu	xmmword ptr [rax], xmm0
	mov	r12, r13
.label_2527:
	mov	rbx, -1
	test	r12, r12
	jle	.label_2128
	mov	rbx, r15
	add	rbx, 0x10
.label_2146:
	mov	rdi, qword ptr [rbx]
	call	free
	add	rbx, 0x18
	dec	r12
	jne	.label_2146
	mov	rbx, -1
.label_2128:
	mov	r12, rbx
.label_2187:
	mov	rdi, r15
	call	free
	test	r12, r12
	jne	.label_2125
	mov	edi, 8
	mov	esi, 0x100
	call	rpl_calloc
	mov	rcx, qword ptr [rbp - 0xc8]
	mov	qword ptr [rcx], rax
	test	rax, rax
	setne	al
	jmp	.label_2155
.label_2223:
	mov	esi, 0x200
	call	rpl_calloc
	mov	rcx, qword ptr [rbp - 0xb0]
	mov	qword ptr [rcx + 0x60], rax
	test	rax, rax
	je	.label_2118
	cmp	qword ptr [rbp - 0x78], 0
	mov	r14, qword ptr [rbp - 0x70]
	mov	rdi, qword ptr [rbp - 0x58]
	mov	rcx, qword ptr [rbp - 0x90]
	je	.label_2167
	lea	r8, [rdi - 8]
	mov	r9d, 1
	xor	esi, esi
	mov	rdx, qword ptr [rbp - 0x78]
	jmp	.label_2173
.label_2118:
	mov	eax, dword ptr [rbp - 0xa8]
	test	al, al
	je	.label_2179
	mov	rdi, qword ptr [rbp - 0x58]
	call	free
.label_2179:
	mov	rdi, qword ptr [rbp - 0x40]
	call	free
	mov	r12, qword ptr [rbp - 0x60]
	test	r12, r12
	mov	r15, qword ptr [rbp - 0x70]
	jle	.label_2191
.label_2137:
	mov	rbx, r15
	add	rbx, 0x10
	nop	dword ptr [rax]
.label_2198:
	mov	rdi, qword ptr [rbx]
	call	free
	add	rbx, 0x18
	dec	r12
	jne	.label_2198
.label_2191:
	mov	rdi, r15
	call	free
.label_2125:
	xor	eax, eax
.label_2155:
	lea	rsp, [rbp - 0x28]
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_2215:
	mov	rbx, qword ptr [rbp - 0x88]
	mov	rcx, r8
.label_2205:
	add	rcx, 8
	test	qword ptr [rbx], r9
	lea	rbx, [rbx + 0x20]
	je	.label_2205
	mov	rbx, qword ptr [rcx]
	mov	qword ptr [rax + rsi*8], rbx
	mov	rbx, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rcx + rbx*8]
	mov	qword ptr [rax + rsi*8 + 0x800], rcx
	mov	r14, qword ptr [rbp - 0x70]
	mov	rdi, qword ptr [rbp - 0x58]
	mov	rcx, qword ptr [rbp - 0x90]
	jmp	.label_2203
.label_2173:
	test	dl, 1
	jne	.label_2215
.label_2203:
	add	r9, r9
	shr	rdx, 1
	inc	rsi
	test	rdx, rdx
	jne	.label_2173
.label_2167:
	test	rcx, rcx
	mov	r12, qword ptr [rbp - 0xa0]
	mov	rdx, qword ptr [rbp - 0x98]
	je	.label_2218
	lea	r8, [rdi - 8]
	lea	r9, [r14 + 0x1808]
	mov	esi, 1
	mov	ebx, 0x40
	jmp	.label_2134
.label_2132:
	mov	r10, rcx
	mov	rdx, r9
	mov	rcx, r8
.label_2116:
	add	rcx, 8
	test	qword ptr [rdx], rsi
	lea	rdx, [rdx + 0x20]
	je	.label_2116
	mov	rdx, qword ptr [rcx]
	mov	qword ptr [rax + rbx*8], rdx
	mov	rdx, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rcx + rdx*8]
	mov	qword ptr [rax + rbx*8 + 0x800], rcx
	mov	r14, qword ptr [rbp - 0x70]
	mov	rdi, qword ptr [rbp - 0x58]
	mov	r12, qword ptr [rbp - 0xa0]
	mov	rdx, qword ptr [rbp - 0x98]
	mov	rcx, r10
	jmp	.label_2151
.label_2134:
	test	cl, 1
	jne	.label_2132
.label_2151:
	add	rsi, rsi
	shr	rcx, 1
	inc	rbx
	test	rcx, rcx
	jne	.label_2134
.label_2218:
	test	rdx, rdx
	mov	r15, qword ptr [rbp - 0x60]
	mov	r10, qword ptr [rbp - 0x88]
	je	.label_2135
	lea	r8, [rdi - 8]
	lea	r9, [r14 + 0x1810]
	mov	esi, 1
	mov	ebx, 0x80
	jmp	.label_2139
.label_2157:
	mov	r11, rdx
	mov	rdx, r9
	mov	rcx, r8
.label_2144:
	add	rcx, 8
	test	qword ptr [rdx], rsi
	lea	rdx, [rdx + 0x20]
	je	.label_2144
	mov	rdx, qword ptr [rcx]
	mov	qword ptr [rax + rbx*8], rdx
	mov	r15, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rcx + r15*8]
	mov	qword ptr [rax + rbx*8 + 0x800], rcx
	mov	r14, qword ptr [rbp - 0x70]
	mov	r10, qword ptr [rbp - 0x88]
	mov	rdi, qword ptr [rbp - 0x58]
	mov	r12, qword ptr [rbp - 0xa0]
	mov	rdx, r11
	jmp	.label_2147
.label_2139:
	test	dl, 1
	jne	.label_2157
.label_2147:
	add	rsi, rsi
	shr	rdx, 1
	inc	rbx
	test	rdx, rdx
	jne	.label_2139
.label_2135:
	test	r12, r12
	je	.label_2126
	lea	r8, [rdi - 8]
	lea	r9, [r14 + 0x1818]
	mov	esi, 1
	mov	ebx, 0xc0
	jmp	.label_2164
.label_2190:
	mov	r11, r12
	mov	rdx, r9
	mov	rcx, r8
.label_2170:
	add	rcx, 8
	test	qword ptr [rdx], rsi
	lea	rdx, [rdx + 0x20]
	je	.label_2170
	mov	rdx, qword ptr [rcx]
	mov	qword ptr [rax + rbx*8], rdx
	mov	r15, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rcx + r15*8]
	mov	qword ptr [rax + rbx*8 + 0x800], rcx
	mov	r14, qword ptr [rbp - 0x70]
	mov	r10, qword ptr [rbp - 0x88]
	mov	rdi, qword ptr [rbp - 0x58]
	mov	r12, r11
	jmp	.label_2145
.label_2164:
	test	r12b, 1
	jne	.label_2190
.label_2145:
	add	rsi, rsi
	shr	r12, 1
	inc	rbx
	test	r12, r12
	jne	.label_2164
	jmp	.label_2126
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x415760

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
	movaps	xmm0, xmmword ptr [rip + label_1310]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	mov	edi, 8
	call	malloc
	mov	qword ptr [rsp + 0x30], rax
	test	rax, rax
	je	.label_2226
	mov	qword ptr [rax], rbx
	lea	rcx, [rsp + 0x20]
	mov	rdi, r13
	mov	rsi, r14
	mov	rdx, r15
	call	update_cur_sifted_state
	mov	ebp, eax
	test	ebp, ebp
	jne	.label_2231
	lea	rax, [r14 + 0x20]
	mov	qword ptr [rsp + 0x38], rax
	mov	dword ptr [rsp + 0x14], 0
	nop	word ptr cs:[rax + rax]
.label_2241:
	mov	rdx, r15
	test	rdx, rdx
	jle	.label_2238
	mov	rdi, qword ptr [r14]
	mov	ecx, dword ptr [rsp + 0x14]
	inc	ecx
	cmp	qword ptr [rdi + rdx*8], 0
	mov	eax, 0
	cmovne	ecx, eax
	cmp	ecx, dword ptr [r13 + 0xe0]
	jg	.label_2239
	mov	dword ptr [rsp + 0x14], ecx
	mov	qword ptr [rsp + 0x28], 0
	lea	r15, [rdx - 1]
	mov	rax, qword ptr [r13 + 0xb8]
	mov	qword ptr [rsp + 0x40], rdx
	mov	rax, qword ptr [rax + rdx*8 - 8]
	test	rax, rax
	je	.label_2233
	cmp	qword ptr [rax + 0x28], 0
	jle	.label_2233
	mov	rcx, qword ptr [r13 + 0x98]
	mov	qword ptr [rsp + 0x18], rcx
	xor	ebx, ebx
	mov	qword ptr [rsp + 0x50], rax
	nop	dword ptr [rax + rax]
.label_2236:
	mov	rax, qword ptr [rax + 0x30]
	mov	r12, qword ptr [rax + rbx*8]
	mov	rax, qword ptr [rsp + 0x18]
	mov	rax, qword ptr [rax]
	mov	rcx, r12
	mov	qword ptr [rsp + 8], rcx
	shl	r12, 4
	test	byte ptr [rax + r12 + 0xa], 0x10
	je	.label_2234
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
	jle	.label_2230
	movsxd	rcx, eax
	mov	rsi, r14
	add	rcx, r14
	cmp	rcx, qword ptr [rsp + 0x48]
	jle	.label_2232
	mov	r14, r15
	mov	r15, rsi
	jmp	.label_2235
.label_2230:
	mov	rcx, r15
	mov	r15, r14
	mov	r14, rcx
	jne	.label_2235
	jmp	.label_2234
.label_2232:
	mov	r14, r15
	mov	rdx, qword ptr [r14]
	mov	rdx, qword ptr [rdx + rcx*8]
	test	rdx, rdx
	mov	r15, rsi
	je	.label_2234
	mov	rsi, qword ptr [rdx + 0x10]
	test	rsi, rsi
	jle	.label_2234
	mov	rcx, qword ptr [rbp + 0x18]
	mov	rdi, qword ptr [rsp + 8]
	mov	r8, qword ptr [rcx + rdi*8]
	dec	rsi
	mov	rdx, qword ptr [rdx + 0x18]
	mov	edi, 0
	je	.label_2242
	xor	edi, edi
	nop	dword ptr [rax]
.label_2228:
	lea	rbp, [rdi + rsi]
	shr	rbp, 1
	cmp	qword ptr [rdx + rbp*8], r8
	lea	rcx, [rbp + 1]
	cmovl	rdi, rcx
	cmovge	rsi, rbp
	cmp	rdi, rsi
	jb	.label_2228
.label_2242:
	test	eax, eax
	je	.label_2234
	cmp	rdi, -1
	je	.label_2234
	cmp	qword ptr [rdx + rdi*8], r8
	je	.label_2235
.label_2234:
	mov	rax, qword ptr [rsp + 0x18]
	add	r12, qword ptr [rax]
	mov	rdi, r13
	mov	rsi, r12
	mov	rdx, r15
	call	check_node_accept
	test	al, al
	je	.label_2224
	mov	rax, qword ptr [r14]
	mov	rcx, qword ptr [rsp + 0x40]
	mov	rdx, qword ptr [rax + rcx*8]
	test	rdx, rdx
	je	.label_2224
	mov	rax, qword ptr [rdx + 0x10]
	test	rax, rax
	jle	.label_2224
	mov	rcx, qword ptr [rsp + 0x18]
	mov	rcx, qword ptr [rcx + 0x18]
	mov	rsi, qword ptr [rsp + 8]
	mov	rcx, qword ptr [rcx + rsi*8]
	dec	rax
	mov	rdx, qword ptr [rdx + 0x18]
	mov	esi, 0
	je	.label_2225
	xor	esi, esi
	nop	word ptr cs:[rax + rax]
.label_2237:
	lea	rdi, [rsi + rax]
	shr	rdi, 1
	cmp	qword ptr [rdx + rdi*8], rcx
	lea	rbp, [rdi + 1]
	cmovl	rsi, rbp
	cmovge	rax, rdi
	cmp	rsi, rax
	jb	.label_2237
.label_2225:
	cmp	rsi, -1
	je	.label_2224
	mov	eax, 1
	cmp	qword ptr [rdx + rsi*8], rcx
	jne	.label_2224
	nop	dword ptr [rax]
.label_2235:
	cmp	qword ptr [r14 + 0x28], 0
	je	.label_2240
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
	jne	.label_2227
.label_2240:
	lea	rdi, [rsp + 0x20]
	mov	rsi, qword ptr [rsp + 8]
	call	re_node_set_insert
	movzx	ecx, al
	xor	ecx, 1
.label_2227:
	or	cl, 4
	mov	ebp, 0xc
	and	cl, 7
	cmp	cl, 4
	jne	.label_2231
.label_2224:
	inc	rbx
	mov	rax, qword ptr [rsp + 0x50]
	cmp	rbx, qword ptr [rax + 0x28]
	jl	.label_2236
.label_2233:
	mov	rdi, r13
	mov	rsi, r14
	mov	rdx, r15
	lea	rcx, [rsp + 0x20]
	call	update_cur_sifted_state
	mov	ebp, eax
	test	ebp, ebp
	je	.label_2241
	jmp	.label_2231
.label_2238:
	xor	ebp, ebp
	jmp	.label_2231
.label_2239:
	shl	rdx, 3
	xor	ebp, ebp
	xor	esi, esi
	call	memset
.label_2231:
	mov	rdi, qword ptr [rsp + 0x30]
	call	free
.label_2229:
	mov	eax, ebp
	add	rsp, 0x58
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_2226:
	xorps	xmm0, xmm0
	movaps	xmmword ptr [rsp + 0x20], xmm0
	mov	ebp, 0xc
	jmp	.label_2229
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x415ac0

	.globl merge_state_array
	.type merge_state_array, @function
merge_state_array:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x28
	mov	r15, rcx
	mov	r14, rdx
	mov	rbx, rsi
	mov	r12, rdi
	xor	eax, eax
	test	r15, r15
	jle	.label_2243
	xor	ebp, ebp
	lea	r13, [rsp + 0x10]
	nop	dword ptr [rax + rax]
.label_2245:
	mov	rsi, qword ptr [rbx + rbp*8]
	mov	rdx, qword ptr [r14 + rbp*8]
	test	rsi, rsi
	je	.label_2246
	test	rdx, rdx
	je	.label_2244
	add	rsi, 8
	add	rdx, 8
	mov	rdi, r13
	call	re_node_set_init_union
	mov	dword ptr [rsp + 0xc], eax
	test	eax, eax
	jne	.label_2243
	lea	rdi, [rsp + 0xc]
	mov	rsi, r12
	mov	rdx, r13
	call	re_acquire_state
	mov	qword ptr [rbx + rbp*8], rax
	mov	rdi, qword ptr [rsp + 0x20]
	call	free
	mov	eax, dword ptr [rsp + 0xc]
	test	eax, eax
	je	.label_2244
	jmp	.label_2243
	nop	word ptr cs:[rax + rax]
.label_2246:
	mov	qword ptr [rbx + rbp*8], rdx
.label_2244:
	inc	rbp
	xor	eax, eax
	cmp	rbp, r15
	jl	.label_2245
.label_2243:
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
	#Procedure 0x415b70

	.globl update_cur_sifted_state
	.type update_cur_sifted_state, @function
update_cur_sifted_state:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x98
	mov	r10, rcx
	mov	rcx, rdx
	mov	r12, rsi
	mov	r11, qword ptr [rdi + 0x98]
	mov	dword ptr [rsp + 0xc], 0
	mov	qword ptr [rsp + 0x18], rdi
	mov	rax, qword ptr [rdi + 0xb8]
	mov	r15, qword ptr [rax + rcx*8]
	lea	rax, [r15 + 8]
	test	r15, r15
	cmove	rax, r15
	mov	qword ptr [rsp + 0x40], rax
	cmp	qword ptr [r10 + 8], 0
	mov	qword ptr [rsp + 0x10], rcx
	mov	qword ptr [rsp + 0x38], r12
	je	.label_2275
	test	r15, r15
	je	.label_2292
	mov	dword ptr [rsp + 0x50], 0
	lea	rdi, [rsp + 0x50]
	mov	qword ptr [rsp + 0x20], r11
	mov	rsi, r11
	mov	qword ptr [rsp + 0x28], r10
	mov	rdx, r10
	call	re_acquire_state
	mov	r14, rax
	mov	r12d, dword ptr [rsp + 0x50]
	test	r12d, r12d
	jne	.label_2268
	mov	r13, r14
	add	r13, 0x38
	cmp	qword ptr [r14 + 0x38], 0
	mov	rdx, qword ptr [rsp + 0x28]
	jne	.label_2251
	mov	rdi, qword ptr [rdx + 8]
	mov	qword ptr [r14 + 0x38], rdi
	mov	qword ptr [r14 + 0x40], 0
	shl	rdi, 3
	call	malloc
	mov	qword ptr [r14 + 0x48], rax
	mov	r12d, 0xc
	test	rax, rax
	mov	ecx, 0xc
	je	.label_2265
	xor	ecx, ecx
.label_2265:
	test	rax, rax
	mov	dword ptr [rsp + 0x50], ecx
	je	.label_2268
	mov	rdx, qword ptr [rsp + 0x28]
	cmp	qword ptr [rdx + 8], 0
	jle	.label_2251
	xor	ebx, ebx
	nop	dword ptr [rax + rax]
.label_2284:
	mov	rax, qword ptr [rsp + 0x20]
	mov	rax, qword ptr [rax + 0x38]
	mov	rcx, qword ptr [rdx + 0x10]
	mov	rcx, qword ptr [rcx + rbx*8]
	lea	rcx, [rcx + rcx*2]
	lea	rsi, [rax + rcx*8]
	mov	rdi, r13
	mov	rbp, rdx
	call	re_node_set_merge
	mov	dword ptr [rsp + 0x50], eax
	test	eax, eax
	jne	.label_2268
	inc	rbx
	cmp	rbx, qword ptr [rbp + 8]
	mov	rdx, rbp
	jl	.label_2284
.label_2251:
	mov	rdi, rdx
	mov	rsi, qword ptr [rsp + 0x40]
	mov	rdx, r13
	call	re_node_set_add_intersect
	mov	r12d, eax
	mov	dword ptr [rsp + 0xc], r12d
	test	r12d, r12d
	mov	r9, qword ptr [rsp + 0x10]
	jne	.label_2259
	mov	r12, qword ptr [rsp + 0x38]
	mov	rax, qword ptr [r12 + 0x28]
	test	rax, rax
	mov	r10, qword ptr [rsp + 0x28]
	mov	r11, qword ptr [rsp + 0x20]
	je	.label_2292
	mov	qword ptr [rsp + 0x48], r15
	jle	.label_2297
	mov	rax, qword ptr [rsp + 0x18]
	mov	rax, qword ptr [rax + 0xd8]
	mov	qword ptr [rsp + 0x30], rax
	xor	r13d, r13d
	nop	
.label_2280:
	mov	rax, qword ptr [r12 + 0x30]
	mov	rax, qword ptr [rax + r13*8]
	lea	rax, [rax + rax*4]
	mov	rcx, qword ptr [rsp + 0x30]
	cmp	qword ptr [rcx + rax*8 + 0x10], r9
	jge	.label_2247
	mov	rcx, qword ptr [rsp + 0x30]
	cmp	qword ptr [rcx + rax*8 + 8], r9
	jl	.label_2247
	mov	rdx, qword ptr [rsp + 0x30]
	mov	rcx, qword ptr [rdx + rax*8]
	mov	rbp, qword ptr [r11]
	shl	rcx, 4
	mov	r14, qword ptr [rbp + rcx]
	cmp	qword ptr [rdx + rax*8 + 0x18], r9
	mov	rax, qword ptr [r10 + 8]
	jne	.label_2266
	test	rax, rax
	jle	.label_2247
	mov	rdx, qword ptr [r10 + 0x10]
	mov	r15, -1
	mov	rsi, -1
	nop	dword ptr [rax]
.label_2289:
	mov	rbx, qword ptr [rdx]
	mov	rdi, rbx
	shl	rdi, 4
	movzx	ecx, byte ptr [rbp + rdi + 8]
	cmp	cl, 9
	je	.label_2248
	cmp	cl, 8
	jne	.label_2277
	cmp	r14, qword ptr [rbp + rdi]
	cmove	rsi, rbx
	jmp	.label_2277
	nop	word ptr cs:[rax + rax]
.label_2248:
	cmp	r14, qword ptr [rbp + rdi]
	cmove	r15, rbx
.label_2277:
	add	rdx, 8
	dec	rax
	jne	.label_2289
	test	rsi, rsi
	js	.label_2282
	mov	rdi, r11
	mov	rdx, r10
	mov	rcx, qword ptr [rsp + 0x40]
	call	sub_epsilon_src_nodes
	mov	r11, qword ptr [rsp + 0x20]
	mov	r10, qword ptr [rsp + 0x28]
	mov	r9, qword ptr [rsp + 0x10]
	mov	r12d, eax
	test	r12d, r12d
	jne	.label_2268
.label_2282:
	test	r15, r15
	mov	r12, qword ptr [rsp + 0x38]
	js	.label_2247
	mov	r8, qword ptr [r10 + 8]
	test	r8, r8
	jle	.label_2247
	xor	r14d, r14d
.label_2300:
	mov	rcx, qword ptr [r10 + 0x10]
	mov	rsi, qword ptr [rcx + r14*8]
	mov	rdi, qword ptr [r11 + 0x38]
	lea	rcx, [rsi + rsi*2]
	mov	rdx, qword ptr [rdi + rcx*8 + 8]
	test	rdx, rdx
	jle	.label_2272
	dec	rdx
	mov	rdi, qword ptr [rdi + rcx*8 + 0x10]
	mov	ebx, 0
	je	.label_2260
	xor	ebx, ebx
	nop	dword ptr [rax + rax]
.label_2267:
	lea	rbp, [rbx + rdx]
	shr	rbp, 1
	cmp	qword ptr [rdi + rbp*8], r15
	lea	rax, [rbp + 1]
	cmovl	rbx, rax
	cmovge	rdx, rbp
	cmp	rbx, rdx
	jb	.label_2267
.label_2260:
	cmp	rbx, -1
	je	.label_2272
	cmp	qword ptr [rdi + rbx*8], r15
	je	.label_2273
.label_2272:
	mov	rdi, qword ptr [r11 + 0x30]
	mov	rdx, qword ptr [rdi + rcx*8 + 8]
	test	rdx, rdx
	jle	.label_2258
	dec	rdx
	mov	rcx, qword ptr [rdi + rcx*8 + 0x10]
	mov	edi, 0
	je	.label_2278
	xor	edi, edi
	nop	dword ptr [rax + rax]
.label_2283:
	lea	rax, [rdi + rdx]
	shr	rax, 1
	cmp	qword ptr [rcx + rax*8], r15
	lea	rbp, [rax + 1]
	cmovl	rdi, rbp
	cmovge	rdx, rax
	cmp	rdi, rdx
	jb	.label_2283
.label_2278:
	cmp	rdi, -1
	je	.label_2258
	cmp	qword ptr [rcx + rdi*8], r15
	je	.label_2273
.label_2258:
	mov	rdi, r11
	mov	rdx, r10
	mov	rcx, qword ptr [rsp + 0x40]
	call	sub_epsilon_src_nodes
	mov	r11, qword ptr [rsp + 0x20]
	mov	r10, qword ptr [rsp + 0x28]
	mov	r9, qword ptr [rsp + 0x10]
	mov	r12d, eax
	test	r12d, r12d
	jne	.label_2268
	dec	r14
	mov	r8, qword ptr [r10 + 8]
	mov	r12, qword ptr [rsp + 0x38]
.label_2273:
	inc	r14
	cmp	r14, r8
	jl	.label_2300
	jmp	.label_2247
.label_2266:
	test	rax, rax
	jle	.label_2247
	xor	ebx, ebx
	jmp	.label_2249
	nop	dword ptr [rax]
.label_2285:
	mov	rbp, qword ptr [r11]
.label_2249:
	mov	rcx, qword ptr [r10 + 0x10]
	mov	rsi, qword ptr [rcx + rbx*8]
	mov	rdx, rsi
	shl	rdx, 4
	mov	ecx, dword ptr [rbp + rdx + 8]
	mov	edi, 0xfe
	and	ecx, edi
	or	ecx, 1
	cmp	ecx, 9
	jne	.label_2253
	cmp	r14, qword ptr [rbp + rdx]
	jne	.label_2253
	mov	rdi, r11
	mov	rdx, r10
	mov	rcx, qword ptr [rsp + 0x40]
	call	sub_epsilon_src_nodes
	mov	r11, qword ptr [rsp + 0x20]
	mov	r10, qword ptr [rsp + 0x28]
	mov	r9, qword ptr [rsp + 0x10]
	mov	r12d, eax
	test	r12d, r12d
	jne	.label_2268
	mov	rax, qword ptr [r10 + 8]
	mov	r12, qword ptr [rsp + 0x38]
.label_2253:
	inc	rbx
	cmp	rbx, rax
	jl	.label_2285
	nop	dword ptr [rax + rax]
.label_2247:
	inc	r13
	cmp	r13, qword ptr [r12 + 0x28]
	jl	.label_2280
.label_2297:
	mov	dword ptr [rsp + 0xc], 0
	mov	r15, qword ptr [rsp + 0x48]
.label_2292:
	lea	rdi, [rsp + 0xc]
	mov	rsi, r11
	mov	rdx, r10
	call	re_acquire_state
	mov	rcx, qword ptr [rsp + 0x10]
	mov	rdx, qword ptr [r12]
	mov	qword ptr [rdx + rcx*8], rax
	mov	r12d, dword ptr [rsp + 0xc]
	test	r12d, r12d
	je	.label_2286
	jmp	.label_2259
.label_2275:
	mov	rax, qword ptr [r12]
	mov	qword ptr [rax + rcx*8], 0
.label_2286:
	test	r15, r15
	je	.label_2256
	mov	rax, qword ptr [rsp + 0x18]
	mov	rax, qword ptr [rax + 0xb8]
	mov	rax, qword ptr [rax + rcx*8]
	test	byte ptr [rax + 0x68], 0x40
	je	.label_2256
	mov	rax, qword ptr [rsp + 0x18]
	mov	r10, qword ptr [rax + 0x98]
	mov	rax, qword ptr [rax + 0xc8]
	xor	r15d, r15d
	test	rax, rax
	jle	.label_2299
	mov	rdx, qword ptr [rsp + 0x18]
	mov	rbp, qword ptr [rdx + 0xd8]
	xor	r15d, r15d
	mov	rdx, rax
	nop	word ptr cs:[rax + rax]
.label_2262:
	lea	rsi, [rdx + r15]
	mov	rdi, rsi
	shr	rdi, 0x3f
	add	rdi, rsi
	sar	rdi, 1
	lea	rsi, [rdi + rdi*4]
	cmp	qword ptr [rbp + rsi*8 + 8], rcx
	cmovge	rdx, rdi
	lea	rsi, [rdi + 1]
	cmovl	r15, rsi
	cmp	r15, rdx
	jl	.label_2262
.label_2299:
	cmp	r15, rax
	mov	rdx, qword ptr [rsp + 0x38]
	jge	.label_2271
	cmp	r15, -1
	je	.label_2271
	mov	rax, qword ptr [rsp + 0x18]
	mov	rax, qword ptr [rax + 0xd8]
	lea	rsi, [r15 + r15*4]
	mov	qword ptr [rsp + 0x48], rsi
	cmp	qword ptr [rax + rsi*8 + 8], rcx
	jne	.label_2271
	mov	qword ptr [rsp + 0x50], 0
	mov	rax, qword ptr [rsp + 0x40]
	cmp	qword ptr [rax + 8], 0
	jle	.label_2271
	lea	rax, [rdx + 0x20]
	mov	qword ptr [rsp + 0x28], rax
	lea	rax, [rcx + 1]
	mov	qword ptr [rsp + 0x90], rax
	xor	eax, eax
	mov	qword ptr [rsp + 0x20], rax
	shl	qword ptr [rsp + 0x48], 3
	mov	qword ptr [rsp + 0x30], r10
	nop	word ptr cs:[rax + rax]
.label_2296:
	mov	rax, qword ptr [rsp + 0x40]
	mov	rax, qword ptr [rax + 0x10]
	mov	rdx, qword ptr [rsp + 0x20]
	mov	r14, qword ptr [rax + rdx*8]
	mov	rax, qword ptr [r10]
	mov	rdx, r14
	shl	rdx, 4
	movzx	eax, byte ptr [rax + rdx + 8]
	mov	r12, qword ptr [rsp + 0x38]
	cmp	r14, qword ptr [r12 + 0x10]
	jne	.label_2295
	cmp	eax, 4
	jne	.label_2252
	cmp	qword ptr [r12 + 0x18], rcx
	jne	.label_2255
	jmp	.label_2252
	nop	word ptr cs:[rax + rax]
.label_2295:
	cmp	eax, 4
	jne	.label_2252
.label_2255:
	mov	rax, qword ptr [rsp + 0x18]
	mov	rbx, qword ptr [rax + 0xd8]
	add	rbx, qword ptr [rsp + 0x48]
	mov	r13, r15
	nop	dword ptr [rax]
.label_2293:
	cmp	qword ptr [rbx], r14
	jne	.label_2254
	mov	rax, qword ptr [rbx + 0x18]
	mov	rdx, qword ptr [rbx + 0x10]
	mov	r9, rax
	sub	r9, rdx
	add	r9, rcx
	cmp	rax, rdx
	je	.label_2270
	lea	rsi, [r14*8]
	add	rsi, qword ptr [r10 + 0x18]
	jmp	.label_2274
.label_2270:
	mov	rax, qword ptr [r10 + 0x28]
	lea	rdx, [r14 + r14*2]
	mov	rsi, qword ptr [rax + rdx*8 + 0x10]
.label_2274:
	cmp	r9, qword ptr [r12 + 0x18]
	jg	.label_2254
	mov	rax, qword ptr [r12]
	mov	rdx, qword ptr [rax + r9*8]
	test	rdx, rdx
	je	.label_2254
	mov	rax, qword ptr [rdx + 0x10]
	test	rax, rax
	jle	.label_2254
	mov	r8, qword ptr [rsi]
	dec	rax
	mov	rbp, qword ptr [rdx + 0x18]
	mov	edx, 0
	je	.label_2288
	xor	edx, edx
	nop	word ptr cs:[rax + rax]
.label_2276:
	lea	rsi, [rdx + rax]
	shr	rsi, 1
	cmp	qword ptr [rbp + rsi*8], r8
	lea	rdi, [rsi + 1]
	cmovl	rdx, rdi
	cmovge	rax, rsi
	cmp	rdx, rax
	jb	.label_2276
.label_2288:
	cmp	rdx, -1
	je	.label_2254
	cmp	qword ptr [rbp + rdx*8], r8
	jne	.label_2254
	mov	rdi, qword ptr [rsp + 0x18]
	mov	rsi, qword ptr [rsp + 0x28]
	mov	rdx, r14
	call	check_dst_limits
	mov	r10, qword ptr [rsp + 0x30]
	mov	rcx, qword ptr [rsp + 0x10]
	test	al, al
	jne	.label_2254
	cmp	qword ptr [rsp + 0x50], 0
	jne	.label_2290
	mov	rax, qword ptr [r12 + 0x30]
	mov	qword ptr [rsp + 0x80], rax
	movups	xmm0, xmmword ptr [r12]
	movups	xmm1, xmmword ptr [r12 + 0x10]
	movups	xmm2, xmmword ptr [r12 + 0x20]
	movaps	xmmword ptr [rsp + 0x70], xmm2
	movaps	xmmword ptr [rsp + 0x60], xmm1
	movaps	xmmword ptr [rsp + 0x50], xmm0
	mov	rbx, qword ptr [r12 + 0x28]
	mov	qword ptr [rsp + 0x78], rbx
	test	rbx, rbx
	jle	.label_2298
	mov	qword ptr [rsp + 0x70], rbx
	shl	rbx, 3
	mov	rdi, rbx
	call	malloc
	mov	qword ptr [rsp + 0x80], rax
	test	rax, rax
	je	.label_2279
	mov	rsi, qword ptr [r12 + 0x30]
	mov	rdi, rax
	mov	rdx, rbx
	call	memcpy
	mov	rcx, qword ptr [rsp + 0x10]
	jmp	.label_2290
.label_2298:
	lea	rax, [rsp + 0x70]
	xorps	xmm0, xmm0
	movups	xmmword ptr [rax], xmm0
	mov	qword ptr [rax + 0x10], 0
.label_2290:
	mov	qword ptr [rsp + 0x60], r14
	mov	qword ptr [rsp + 0x68], rcx
	lea	rdi, [rsp + 0x70]
	mov	rsi, r13
	call	re_node_set_insert
	mov	rcx, qword ptr [rsp + 0x10]
	mov	r12d, 0xc
	test	al, al
	je	.label_2264
	mov	rbp, qword ptr [rsp + 0x50]
	mov	rbx, qword ptr [rbp + rcx*8]
	mov	rdi, qword ptr [rsp + 0x18]
	lea	rsi, [rsp + 0x50]
	call	sift_states_backward
	mov	r10, qword ptr [rsp + 0x30]
	mov	rcx, qword ptr [rsp + 0x10]
	mov	r12d, eax
	test	r12d, r12d
	jne	.label_2264
	mov	rax, qword ptr [rsp + 0x38]
	mov	rsi, qword ptr [rax + 8]
	test	rsi, rsi
	je	.label_2269
	mov	rdi, r10
	mov	rdx, rbp
	mov	rcx, qword ptr [rsp + 0x90]
	call	merge_state_array
	mov	r10, qword ptr [rsp + 0x30]
	mov	rcx, qword ptr [rsp + 0x10]
	mov	r12d, eax
	test	r12d, r12d
	jne	.label_2264
.label_2269:
	mov	qword ptr [rbp + rcx*8], rbx
	mov	rsi, qword ptr [rsp + 0x78]
	test	rsi, rsi
	jle	.label_2261
	mov	rbp, rsi
	dec	rbp
	mov	r8, qword ptr [rsp + 0x80]
	mov	edx, 0
	je	.label_2263
	mov	rdi, rbp
	xor	edx, edx
	nop	word ptr [rax + rax]
.label_2257:
	lea	rbx, [rdx + rdi]
	shr	rbx, 1
	cmp	qword ptr [r8 + rbx*8], r13
	lea	rax, [rbx + 1]
	cmovl	rdx, rax
	cmovge	rdi, rbx
	cmp	rdx, rdi
	jb	.label_2257
.label_2263:
	cmp	qword ptr [r8 + rdx*8], r13
	mov	rdi, -1
	cmove	rdi, rdx
	test	rdi, rdi
	js	.label_2261
	cmp	rsi, rdi
	jle	.label_2261
	mov	qword ptr [rsp + 0x78], rbp
	cmp	rbp, rdi
	jle	.label_2261
	lea	r12, [rdx + 1]
	cmp	rbp, r12
	mov	r11, r12
	cmovge	r11, rbp
	sub	r11, rdx
	cmp	r11, 4
	jb	.label_2291
	mov	rax, r11
	and	rax, 0xfffffffffffffffc
	mov	r9, r11
	and	r9, 0xfffffffffffffffc
	je	.label_2291
	cmp	rbp, r12
	cmovge	r12, rbp
	sub	r12, rdx
	add	r12, -4
	shr	r12, 2
	lea	r10d, [r12 + 1]
	and	r10d, 1
	test	r12, r12
	mov	edi, 0
	je	.label_2294
	lea	rbx, [r8 + rdx*8 + 0x38]
	lea	rsi, [r10 - 1]
	sub	rsi, r12
	xor	edi, edi
	nop	dword ptr [rax]
.label_2287:
	movups	xmm0, xmmword ptr [rbx + rdi*8 - 0x30]
	movups	xmm1, xmmword ptr [rbx + rdi*8 - 0x20]
	movups	xmmword ptr [rbx + rdi*8 - 0x38], xmm0
	movups	xmmword ptr [rbx + rdi*8 - 0x28], xmm1
	movups	xmm0, xmmword ptr [rbx + rdi*8 - 0x10]
	movups	xmm1, xmmword ptr [rbx + rdi*8]
	movups	xmmword ptr [rbx + rdi*8 - 0x18], xmm0
	movups	xmmword ptr [rbx + rdi*8 - 8], xmm1
	add	rdi, 8
	add	rsi, 2
	jne	.label_2287
.label_2294:
	test	r10, r10
	je	.label_2281
	add	rdi, rdx
	movups	xmm0, xmmword ptr [r8 + rdi*8 + 8]
	movups	xmm1, xmmword ptr [r8 + rdi*8 + 0x18]
	movups	xmmword ptr [r8 + rdi*8], xmm0
	movups	xmmword ptr [r8 + rdi*8 + 0x10], xmm1
.label_2281:
	cmp	r11, r9
	mov	rcx, qword ptr [rsp + 0x10]
	mov	r10, qword ptr [rsp + 0x30]
	je	.label_2261
	add	rdx, rax
	nop	word ptr cs:[rax + rax]
.label_2291:
	mov	rax, qword ptr [r8 + rdx*8 + 8]
	mov	qword ptr [r8 + rdx*8], rax
	inc	rdx
	cmp	rdx, rbp
	jl	.label_2291
.label_2261:
	lea	rbx, [r13 + r13*4]
	shl	rbx, 3
	mov	rax, qword ptr [rsp + 0x18]
	add	rbx, qword ptr [rax + 0xd8]
	mov	r12, qword ptr [rsp + 0x38]
	nop	dword ptr [rax + rax]
.label_2254:
	inc	r13
	cmp	byte ptr [rbx + 0x20], 0
	lea	rbx, [rbx + 0x28]
	jne	.label_2293
.label_2252:
	mov	rax, qword ptr [rsp + 0x20]
	mov	rsi, rax
	inc	rsi
	xor	r12d, r12d
	mov	rax, qword ptr [rsp + 0x40]
	mov	rdx, rsi
	mov	qword ptr [rsp + 0x20], rdx
	cmp	rsi, qword ptr [rax + 8]
	jl	.label_2296
.label_2264:
	cmp	qword ptr [rsp + 0x50], 0
	je	.label_2250
	mov	rdi, qword ptr [rsp + 0x80]
	call	free
.label_2250:
	mov	dword ptr [rsp + 0xc], r12d
	test	r12d, r12d
	je	.label_2256
	jmp	.label_2259
.label_2271:
	mov	dword ptr [rsp + 0xc], 0
.label_2256:
	xor	r12d, r12d
.label_2259:
	mov	eax, r12d
	add	rsp, 0x98
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_2268:
	mov	dword ptr [rsp + 0xc], r12d
	jmp	.label_2259
.label_2279:
	xorps	xmm0, xmm0
	lea	rax, [rsp + 0x70]
	movups	xmmword ptr [rax], xmm0
	mov	r12d, 0xc
	jmp	.label_2264
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x416570

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
	je	.label_2303
	mov	r11, qword ptr [r14 + 8]
	test	r11, r11
	je	.label_2303
	lea	rax, [r11 + rcx]
	mov	r13, qword ptr [r12]
	mov	rdx, qword ptr [r12 + 8]
	lea	rsi, [rdx + rax]
	cmp	rsi, r13
	jle	.label_2309
	add	r13, rax
	mov	rdi, qword ptr [r12 + 0x10]
	lea	rsi, [r13*8]
	call	realloc
	mov	rcx, rax
	mov	eax, 0xc
	test	rcx, rcx
	je	.label_2303
	lea	r8, [r12 + 0x10]
	mov	qword ptr [r12 + 0x10], rcx
	mov	qword ptr [r12], r13
	mov	rdx, qword ptr [r12 + 8]
	mov	rcx, qword ptr [r15 + 8]
	mov	r11, qword ptr [r14 + 8]
	jmp	.label_2308
.label_2309:
	lea	r8, [r12 + 0x10]
.label_2308:
	lea	r10, [rcx + rdx]
	add	r10, r11
	dec	rdx
	mov	rsi, qword ptr [r15 + 0x10]
	mov	r9, qword ptr [r14 + 0x10]
.label_2306:
	dec	rcx
	mov	rdi, r11
.label_2316:
	lea	r11, [rdi - 1]
	mov	rax, qword ptr [r9 + rdi*8 - 8]
	nop	dword ptr [rax]
.label_2314:
	cmp	qword ptr [rsi + rcx*8], rax
	je	.label_2310
	jl	.label_2312
	test	rcx, rcx
	lea	rcx, [rcx - 1]
	jg	.label_2314
	jmp	.label_2302
	nop	word ptr cs:[rax + rax]
.label_2312:
	cmp	rdi, 2
	mov	rdi, r11
	jge	.label_2316
	jmp	.label_2302
	nop	dword ptr [rax + rax]
.label_2310:
	mov	rbx, qword ptr [r8]
	test	rdx, rdx
	js	.label_2307
	nop	dword ptr [rax + rax]
.label_2311:
	cmp	qword ptr [rbx + rdx*8], rax
	jle	.label_2301
	test	rdx, rdx
	lea	rdx, [rdx - 1]
	jg	.label_2311
	jmp	.label_2307
.label_2301:
	je	.label_2313
	nop	word ptr cs:[rax + rax]
.label_2307:
	mov	qword ptr [rbx + r10*8 - 8], rax
	dec	r10
.label_2313:
	test	rcx, rcx
	jle	.label_2302
	cmp	rdi, 2
	jge	.label_2306
.label_2302:
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
	jle	.label_2304
	test	rax, rax
	js	.label_2304
	xor	edx, edx
.label_2318:
	lea	rax, [rcx + r8]
	lea	rax, [rdi + rax*8]
	nop	dword ptr [rax + rax]
.label_2315:
	mov	rbx, qword ptr [rdi + r9*8]
	mov	rsi, qword ptr [rdi + rcx*8]
	cmp	rbx, rsi
	jg	.label_2317
	mov	qword ptr [rax], rsi
	add	rax, -8
	test	rcx, rcx
	lea	rcx, [rcx - 1]
	jg	.label_2315
	jmp	.label_2304
	nop	
.label_2317:
	dec	r9
	dec	r8
	mov	qword ptr [rax], rbx
	jne	.label_2318
	jmp	.label_2305
.label_2304:
	mov	rdx, r8
.label_2305:
	lea	rsi, [rdi + r10*8]
	shl	rdx, 3
	call	memcpy
	xor	eax, eax
.label_2303:
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x416730

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
	jle	.label_2331
	mov	qword ptr [rsp + 0x28], rax
	mov	qword ptr [rsp + 0x20], rcx
	lea	r13, [rax + rcx*8 + 8]
	xor	r14d, r14d
	nop	word ptr cs:[rax + rax]
.label_2333:
	mov	r11, qword ptr [r13 + 8]
	mov	rax, qword ptr [r11 + r14*8]
	cmp	rax, r15
	je	.label_2325
	mov	rdx, qword ptr [rdi]
	mov	rcx, rax
	shl	rcx, 4
	test	byte ptr [rdx + rcx + 8], 8
	je	.label_2325
	mov	rbp, qword ptr [rdi + 0x28]
	lea	r8, [rax + rax*2]
	mov	rax, qword ptr [rbp + r8*8 + 0x10]
	mov	rsi, qword ptr [rax]
	mov	r10, -1
	cmp	qword ptr [rbp + r8*8 + 8], 2
	jl	.label_2332
	mov	r10, qword ptr [rax + 8]
.label_2332:
	test	r9, r9
	jle	.label_2324
	mov	rax, r9
	dec	rax
	mov	ebp, 0
	je	.label_2339
	xor	ebp, ebp
	nop	dword ptr [rax]
.label_2343:
	lea	rbx, [rbp + rax]
	shr	rbx, 1
	cmp	qword ptr [r11 + rbx*8], rsi
	lea	rcx, [rbx + 1]
	cmovl	rbp, rcx
	cmovge	rax, rbx
	cmp	rbp, rax
	jb	.label_2343
.label_2339:
	cmp	rbp, -1
	je	.label_2324
	cmp	qword ptr [r11 + rbp*8], rsi
	je	.label_2326
.label_2324:
	mov	rbp, qword ptr [r12 + 8]
	test	rbp, rbp
	jle	.label_2326
	dec	rbp
	mov	rbx, qword ptr [r12 + 0x10]
	mov	eax, 0
	je	.label_2328
	xor	eax, eax
	nop	word ptr cs:[rax + rax]
.label_2320:
	lea	rcx, [rax + rbp]
	shr	rcx, 1
	cmp	qword ptr [rbx + rcx*8], rsi
	lea	rdx, [rcx + 1]
	cmovl	rax, rdx
	cmovge	rbp, rcx
	cmp	rax, rbp
	jb	.label_2320
.label_2328:
	cmp	rax, -1
	je	.label_2326
	cmp	qword ptr [rbx + rax*8], rsi
	je	.label_2342
.label_2326:
	test	r10, r10
	jle	.label_2325
	test	r9, r9
	jle	.label_2330
	mov	rax, r9
	dec	rax
	mov	esi, 0
	je	.label_2345
	xor	esi, esi
	nop	dword ptr [rax]
.label_2341:
	lea	rcx, [rsi + rax]
	shr	rcx, 1
	cmp	qword ptr [r11 + rcx*8], r10
	lea	rdx, [rcx + 1]
	cmovl	rsi, rdx
	cmovge	rax, rcx
	cmp	rsi, rax
	jb	.label_2341
.label_2345:
	cmp	rsi, -1
	je	.label_2330
	cmp	qword ptr [r11 + rsi*8], r10
	je	.label_2325
.label_2330:
	mov	rsi, qword ptr [r12 + 8]
	test	rsi, rsi
	jle	.label_2325
	dec	rsi
	mov	rbp, qword ptr [r12 + 0x10]
	mov	eax, 0
	je	.label_2334
	xor	eax, eax
	nop	word ptr [rax + rax]
.label_2340:
	lea	rcx, [rax + rsi]
	shr	rcx, 1
	cmp	qword ptr [rbp + rcx*8], r10
	lea	rdx, [rcx + 1]
	cmovl	rax, rdx
	cmovge	rsi, rcx
	cmp	rax, rsi
	jb	.label_2340
.label_2334:
	cmp	rax, -1
	je	.label_2325
	cmp	qword ptr [rbp + rax*8], r10
	jne	.label_2325
.label_2342:
	mov	rbx, rdi
	mov	rax, qword ptr [rdi + 0x38]
	lea	rdx, [rax + r8*8]
	lea	rdi, [rsp]
	mov	rsi, qword ptr [rsp + 0x30]
	call	re_node_set_add_intersect
	mov	ebp, eax
	test	ebp, ebp
	jne	.label_2336
	mov	r9, qword ptr [r13]
	mov	rdi, rbx
	nop	word ptr cs:[rax + rax]
.label_2325:
	inc	r14
	cmp	r14, r9
	jl	.label_2333
	test	r9, r9
	mov	rax, qword ptr [rsp + 0x28]
	mov	rcx, qword ptr [rsp + 0x20]
	jle	.label_2331
	mov	r9, qword ptr [rsp + 8]
	mov	rdi, qword ptr [rsp + 0x10]
	lea	r10, [r9 - 1]
	mov	r8, qword ptr [rax + rcx*8 + 0x10]
	xor	r15d, r15d
	nop	word ptr cs:[rax + rax]
.label_2335:
	test	r9, r9
	mov	rbp, qword ptr [r8 + r15*8]
	jle	.label_2319
	test	r10, r10
	mov	eax, 0
	je	.label_2322
	mov	rcx, r10
	xor	eax, eax
	nop	dword ptr [rax + rax]
.label_2327:
	lea	rdx, [rax + rcx]
	shr	rdx, 1
	cmp	qword ptr [rdi + rdx*8], rbp
	lea	rbx, [rdx + 1]
	cmovl	rax, rbx
	cmovge	rcx, rdx
	cmp	rax, rcx
	jb	.label_2327
.label_2322:
	cmp	rax, -1
	je	.label_2319
	cmp	qword ptr [rdi + rax*8], rbp
	je	.label_2323
.label_2319:
	mov	r14, qword ptr [r12 + 8]
	test	r14, r14
	jle	.label_2323
	mov	r11, r14
	dec	r11
	mov	rdx, qword ptr [r12 + 0x10]
	mov	eax, 0
	je	.label_2337
	mov	rbx, r11
	xor	eax, eax
	nop	dword ptr [rax]
.label_2329:
	lea	rcx, [rax + rbx]
	shr	rcx, 1
	cmp	qword ptr [rdx + rcx*8], rbp
	lea	rsi, [rcx + 1]
	cmovl	rax, rsi
	cmovge	rbx, rcx
	cmp	rax, rbx
	jb	.label_2329
.label_2337:
	cmp	qword ptr [rdx + rax*8], rbp
	mov	rbx, -1
	cmove	rbx, rax
	test	rbx, rbx
	js	.label_2323
	cmp	r14, rbx
	jle	.label_2323
	mov	qword ptr [r12 + 8], r11
	cmp	r11, rbx
	jle	.label_2323
	nop	
.label_2344:
	mov	rcx, qword ptr [rdx + rax*8 + 8]
	mov	qword ptr [rdx + rax*8], rcx
	inc	rax
	cmp	rax, qword ptr [r12 + 8]
	jl	.label_2344
	nop	word ptr cs:[rax + rax]
.label_2323:
	inc	r15
	cmp	r15, qword ptr [r13]
	jl	.label_2335
	jmp	.label_2338
.label_2331:
	mov	rdi, qword ptr [rsp + 0x10]
.label_2338:
	call	free
	xor	ebp, ebp
.label_2321:
	mov	eax, ebp
	add	rsp, 0x38
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_2336:
	mov	rdi, qword ptr [rsp + 0x10]
	call	free
	jmp	.label_2321
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x416a90

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
	mov	qword ptr [rsp], r9
	mov	qword ptr [rsp + 0x30], r8
	mov	qword ptr [rsp + 0x28], rdx
	mov	r9, rsi
	mov	r10, qword ptr [rdi + 0x98]
	mov	r8, qword ptr [rdi + 0xc8]
	xor	r14d, r14d
	test	r8, r8
	jle	.label_2352
	mov	rbp, qword ptr [rdi + 0xd8]
	xor	r14d, r14d
	mov	rdx, r8
	nop	word ptr cs:[rax + rax]
.label_2351:
	lea	rsi, [rdx + r14]
	mov	rax, rsi
	shr	rax, 0x3f
	add	rax, rsi
	sar	rax, 1
	lea	rsi, [rax + rax*4]
	cmp	qword ptr [rbp + rsi*8 + 8], rcx
	cmovge	rdx, rax
	lea	rsi, [rax + 1]
	cmovl	r14, rsi
	cmp	r14, rdx
	jl	.label_2351
.label_2352:
	cmp	r14, r8
	jge	.label_2348
	mov	rsi, qword ptr [rdi + 0xd8]
	lea	rdx, [r14 + r14*4]
	cmp	qword ptr [rsi + rdx*8 + 8], rcx
	je	.label_2349
.label_2348:
	mov	r14, -1
.label_2349:
	xor	r12d, r12d
	test	r8, r8
	jle	.label_2355
	mov	rbp, qword ptr [rdi + 0xd8]
	xor	r12d, r12d
	mov	rdx, r8
	nop	
.label_2360:
	lea	rsi, [rdx + r12]
	mov	rax, rsi
	shr	rax, 0x3f
	add	rax, rsi
	sar	rax, 1
	lea	rsi, [rax + rax*4]
	mov	rbx, qword ptr [rsp]
	cmp	qword ptr [rbp + rsi*8 + 8], rbx
	cmovge	rdx, rax
	lea	rsi, [rax + 1]
	cmovl	r12, rsi
	cmp	r12, rdx
	jl	.label_2360
.label_2355:
	cmp	r12, r8
	jge	.label_2356
	mov	rax, qword ptr [rdi + 0xd8]
	lea	rdx, [r12 + r12*4]
	mov	rsi, qword ptr [rsp]
	cmp	qword ptr [rax + rdx*8 + 8], rsi
	je	.label_2358
.label_2356:
	mov	r12, -1
.label_2358:
	cmp	qword ptr [r9 + 8], 0
	jle	.label_2350
	xor	r15d, r15d
	mov	qword ptr [rsp + 0x20], rcx
	mov	qword ptr [rsp + 0x18], r9
	mov	qword ptr [rsp + 0x10], rdi
	mov	qword ptr [rsp + 8], r10
	nop	word ptr cs:[rax + rax]
.label_2359:
	mov	rax, qword ptr [rdi + 0xd8]
	mov	rdx, qword ptr [r9 + 0x10]
	mov	r11, qword ptr [rdx + r15*8]
	lea	rsi, [r11 + r11*4]
	mov	rdx, qword ptr [rax + rsi*8]
	mov	rbx, qword ptr [r10]
	shl	rdx, 4
	mov	rdx, qword ptr [rbx + rdx]
	mov	rbp, qword ptr [rax + rsi*8 + 0x10]
	mov	r13d, 0xffffffff
	cmp	rbp, rcx
	jle	.label_2347
	mov	ebx, 0xffffffff
	jmp	.label_2354
	nop	dword ptr [rax]
.label_2347:
	mov	rbx, qword ptr [rax + rsi*8 + 0x18]
	cmp	rbx, rcx
	jge	.label_2353
	mov	ebx, 1
	jmp	.label_2354
	nop	word ptr cs:[rax + rax]
.label_2353:
	xor	r8d, r8d
	cmp	rbp, rcx
	sete	r8b
	xor	esi, esi
	cmp	rbx, rcx
	sete	sil
	add	esi, esi
	xor	ebx, ebx
	or	esi, r8d
	je	.label_2354
	mov	rcx, qword ptr [rsp + 0x28]
	mov	r8, r14
	mov	rbx, rdx
	call	check_dst_limits_calc_pos_1
	mov	rdx, rbx
	mov	r10, qword ptr [rsp + 8]
	mov	rdi, qword ptr [rsp + 0x10]
	mov	r9, qword ptr [rsp + 0x18]
	mov	rcx, qword ptr [rsp + 0x20]
	mov	ebx, eax
	mov	rax, qword ptr [r9 + 0x10]
	mov	r11, qword ptr [rax + r15*8]
	mov	rax, qword ptr [rdi + 0xd8]
	lea	rsi, [r11 + r11*4]
	mov	rbp, qword ptr [rax + rsi*8 + 0x10]
	nop	dword ptr [rax]
.label_2354:
	cmp	rbp, qword ptr [rsp]
	jg	.label_2346
	lea	rsi, [r11 + r11*4]
	mov	rax, qword ptr [rax + rsi*8 + 0x18]
	mov	r13d, 1
	cmp	rax, qword ptr [rsp]
	jl	.label_2346
	mov	r11d, ebx
	xor	ebx, ebx
	mov	r8, qword ptr [rsp]
	cmp	rbp, r8
	sete	bl
	xor	esi, esi
	cmp	rax, r8
	sete	sil
	add	esi, esi
	xor	r13d, r13d
	or	esi, ebx
	mov	ebx, r11d
	je	.label_2346
	mov	rcx, qword ptr [rsp + 0x30]
	mov	r8, r12
	call	check_dst_limits_calc_pos_1
	mov	r10, qword ptr [rsp + 8]
	mov	rdi, qword ptr [rsp + 0x10]
	mov	r9, qword ptr [rsp + 0x18]
	mov	rcx, qword ptr [rsp + 0x20]
	mov	r13d, eax
	nop	word ptr cs:[rax + rax]
.label_2346:
	cmp	r13d, ebx
	mov	al, 1
	jne	.label_2357
	inc	r15
	cmp	r15, qword ptr [r9 + 8]
	jl	.label_2359
.label_2350:
	xor	eax, eax
.label_2357:
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
	#Procedure 0x416d20

	.globl check_dst_limits_calc_pos_1
	.type check_dst_limits_calc_pos_1, @function
check_dst_limits_calc_pos_1:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x58
	mov	r15, rcx
	mov	dword ptr [rsp + 0xc], esi
	mov	qword ptr [rsp + 0x20], rdi
	mov	r10, qword ptr [rdi + 0x98]
	mov	rax, qword ptr [r10 + 0x30]
	lea	rcx, [r15 + r15*2]
	cmp	qword ptr [rax + rcx*8 + 8], 0
	jle	.label_2368
	lea	r11, [rax + rcx*8 + 8]
	mov	esi, 1
	mov	ecx, edx
	shl	rsi, cl
	mov	eax, dword ptr [rsp + 0xc]
	mov	ecx, eax
	shl	ecx, 0x1f
	sar	ecx, 0x1f
	mov	dword ptr [rsp + 0x1c], ecx
	mov	qword ptr [rsp + 0x50], rsi
	xor	rsi, 0xffff
	mov	qword ptr [rsp + 0x28], rsi
	mov	ecx, eax
	and	ecx, 2
	mov	dword ptr [rsp + 0x10], ecx
	shr	ecx, 1
	cmp	rdx, 0x3f
	setg	bl
	mov	dword ptr [rsp + 0x14], ecx
	or	bl, cl
	mov	byte ptr [rsp + 0xb], bl
	and	eax, 1
	mov	dword ptr [rsp + 0x18], eax
	xor	ebx, ebx
	mov	qword ptr [rsp + 0x38], r10
	mov	qword ptr [rsp + 0x30], rdx
	nop	word ptr cs:[rax + rax]
.label_2366:
	mov	rax, qword ptr [r11 + 8]
	mov	r14, qword ptr [rax + rbx*8]
	mov	rax, qword ptr [r10]
	mov	rsi, r14
	shl	rsi, 4
	lea	rdi, [rax + rsi]
	mov	al, byte ptr [rax + rsi + 8]
	cmp	al, 9
	je	.label_2361
	cmp	al, 8
	je	.label_2369
	cmp	al, 4
	jne	.label_2367
	cmp	r8, -1
	je	.label_2367
	lea	r13, [r8 + r8*4]
	shl	r13, 3
	mov	rax, qword ptr [rsp + 0x20]
	add	r13, qword ptr [rax + 0xd8]
	mov	r12d, ecx
	mov	qword ptr [rsp + 0x48], rbx
	mov	qword ptr [rsp + 0x40], r14
	nop	dword ptr [rax]
.label_2376:
	mov	ebp, 7
	cmp	qword ptr [r13], r14
	jne	.label_2362
	cmp	rdx, 0x3f
	jg	.label_2374
	movzx	eax, word ptr [r13 + 0x22]
	test	qword ptr [rsp + 0x50], rax
	je	.label_2362
.label_2374:
	mov	rax, qword ptr [r10 + 0x28]
	lea	rcx, [r14 + r14*2]
	mov	rax, qword ptr [rax + rcx*8 + 0x10]
	mov	rcx, qword ptr [rax]
	mov	ebp, 1
	cmp	rcx, r15
	jne	.label_2365
	mov	ecx, dword ptr [rsp + 0x1c]
	jmp	.label_2364
	nop	dword ptr [rax + rax]
.label_2365:
	mov	rdi, qword ptr [rsp + 0x20]
	mov	esi, dword ptr [rsp + 0xc]
	mov	rbx, r8
	mov	r14, r11
	call	check_dst_limits_calc_pos_1
	mov	r11, r14
	mov	r14, qword ptr [rsp + 0x40]
	mov	r10, qword ptr [rsp + 0x38]
	mov	rdx, qword ptr [rsp + 0x30]
	mov	r8, rbx
	mov	rbx, qword ptr [rsp + 0x48]
	mov	ecx, 0xffffffff
	cmp	eax, -1
	je	.label_2364
	test	eax, eax
	jne	.label_2372
	cmp	dword ptr [rsp + 0x10], 0
	mov	ecx, r12d
	mov	eax, 0
	cmovne	ecx, eax
	cmp	byte ptr [rsp + 0xb], 0
	mov	ebp, dword ptr [rsp + 0x14]
	je	.label_2373
	jmp	.label_2364
.label_2372:
	xor	ebp, ebp
	cmp	rdx, 0x3f
	jg	.label_2362
.label_2373:
	movzx	eax, word ptr [r13 + 0x22]
	mov	rcx, qword ptr [rsp + 0x28]
	and	eax, ecx
	mov	word ptr [r13 + 0x22], ax
	xor	ebp, ebp
	nop	word ptr cs:[rax + rax]
.label_2362:
	mov	ecx, r12d
.label_2364:
	mov	eax, ebp
	and	al, 7
	cmp	al, 7
	je	.label_2375
	test	al, al
	jne	.label_2370
.label_2375:
	cmp	byte ptr [r13 + 0x20], 0
	lea	r13, [r13 + 0x28]
	mov	r12d, ecx
	jne	.label_2376
	jmp	.label_2367
	nop	word ptr cs:[rax + rax]
.label_2361:
	cmp	dword ptr [rsp + 0x10], 0
	je	.label_2367
	xor	eax, eax
	jmp	.label_2371
	nop	dword ptr [rax + rax]
.label_2369:
	cmp	dword ptr [rsp + 0x18], 0
	je	.label_2367
	mov	eax, 0xffffffff
.label_2371:
	cmp	qword ptr [rdi], rdx
	jne	.label_2367
	jmp	.label_2363
.label_2370:
	test	ebp, ebp
	mov	eax, ecx
	jne	.label_2363
	nop	dword ptr [rax]
.label_2367:
	inc	rbx
	cmp	rbx, qword ptr [r11]
	jl	.label_2366
.label_2368:
	mov	eax, dword ptr [rsp + 0xc]
	shr	eax, 1
	and	eax, 1
.label_2363:
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
	#Procedure 0x416f80

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
	jne	.label_2378
	test	eax, eax
	sete	cl
	neg	eax
	sbb	ebx, ebx
	test	r14, r14
	jne	.label_2377
	test	cl, cl
	jne	.label_2377
	call	__errno_location
	xor	ecx, ecx
	cmp	dword ptr [rax], 9
	mov	ebx, 0xffffffff
	cmove	ebx, ecx
	jmp	.label_2377
.label_2378:
	mov	ebx, 0xffffffff
	test	eax, eax
	jne	.label_2377
	call	__errno_location
	mov	dword ptr [rax], 0
.label_2377:
	mov	eax, ebx
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x416fe0

	.globl hard_locale
	.type hard_locale, @function
hard_locale:
	push	rbx
	xor	esi, esi
	call	setlocale
	mov	bl, 1
	test	rax, rax
	je	.label_2380
	cmp	byte ptr [rax], 0x43
	jne	.label_2382
	cmp	byte ptr [rax + 1], 0
	je	.label_2379
.label_2382:
	mov	esi, OFFSET FLAT:label_2381
	mov	rdi, rax
	call	strcmp
	test	eax, eax
	jne	.label_2380
.label_2379:
	xor	ebx, ebx
.label_2380:
	mov	eax, ebx
	pop	rbx
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x417020

	.globl locale_charset
	.type locale_charset, @function
locale_charset:
	push	rax
	mov	edi, 0xe
	call	rpl_nl_langinfo
	test	rax, rax
	mov	ecx, OFFSET FLAT:label_46
	cmovne	rcx, rax
	cmp	byte ptr [rcx], 0
	mov	eax, OFFSET FLAT:label_2383
	cmovne	rax, rcx
	pop	rcx
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x417050
	.globl mb_width_aux
	.type mb_width_aux, @function
mb_width_aux:

	push	rbx
	mov	ebx, edi
	call	wcwidth
	test	eax, eax
	jns	.label_2384
	mov	edi, ebx
	call	iswcntrl
	mov	ecx, eax
	xor	eax, eax
	test	ecx, ecx
	sete	al
.label_2384:
	pop	rbx
	ret	
	nop	
	.section	.text
	.align	32
	#Procedure 0x417070
	.globl mb_copy
	.type mb_copy, @function
mb_copy:

	push	r15
	push	r14
	push	rbx
	mov	rbx, rsi
	mov	r14, rdi
	mov	rsi, qword ptr [rbx]
	lea	rax, [rbx + 0x18]
	cmp	rsi, rax
	jne	.label_2385
	lea	r15, [r14 + 0x18]
	mov	rdx, qword ptr [rbx + 8]
	mov	rdi, r15
	call	memcpy
	mov	rsi, r15
.label_2385:
	mov	qword ptr [r14], rsi
	mov	rax, qword ptr [rbx + 8]
	mov	qword ptr [r14 + 8], rax
	mov	rax, qword ptr [rbx + 0x10]
	test	al, al
	mov	byte ptr [r14 + 0x10], al
	je	.label_2386
	shr	rax, 0x20
	mov	dword ptr [r14 + 0x14], eax
.label_2386:
	pop	rbx
	pop	r14
	pop	r15
	ret	
	nop	
	.section	.text
	.align	32
	#Procedure 0x4170c0
	.globl is_basic
	.type is_basic, @function
is_basic:

	mov	eax, edi
	shr	eax, 3
	and	eax, 0x1c
	mov	eax, dword ptr [rax + is_basic_table]
	bt	eax, edi
	setb	al
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4170e0

	.globl rpl_fclose
	.type rpl_fclose, @function
rpl_fclose:
	push	rbp
	push	r14
	push	rbx
	mov	rbx, rdi
	call	fileno
	test	eax, eax
	js	.label_2387
	mov	rdi, rbx
	call	__freading
	test	eax, eax
	je	.label_2389
	mov	rdi, rbx
	call	fileno
	xor	esi, esi
	mov	edx, 1
	mov	edi, eax
	call	lseek
	cmp	rax, -1
	je	.label_2387
.label_2389:
	mov	rdi, rbx
	call	rpl_fflush
	test	eax, eax
	je	.label_2387
	call	__errno_location
	mov	r14, rax
	mov	ebp, dword ptr [r14]
	mov	rdi, rbx
	call	fclose
	test	ebp, ebp
	je	.label_2388
	mov	dword ptr [r14], ebp
	mov	eax, 0xffffffff
.label_2388:
	pop	rbx
	pop	r14
	pop	rbp
	ret	
.label_2387:
	mov	rdi, rbx
	pop	rbx
	pop	r14
	pop	rbp
	jmp	fclose
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x417160

	.globl rpl_fflush
	.type rpl_fflush, @function
rpl_fflush:
	push	rbx
	mov	rbx, rdi
	test	rbx, rbx
	je	.label_2390
	mov	rdi, rbx
	call	__freading
	test	eax, eax
	je	.label_2390
	test	byte ptr [rbx + 1], 1
	je	.label_2390
	xor	esi, esi
	mov	edx, 1
	mov	rdi, rbx
	call	rpl_fseeko
.label_2390:
	mov	rdi, rbx
	pop	rbx
	jmp	fflush
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4171a0

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
	jne	.label_2391
	mov	rax, qword ptr [rbx + 0x28]
	cmp	rax, qword ptr [rbx + 0x20]
	jne	.label_2391
	cmp	qword ptr [rbx + 0x48], 0
	je	.label_2392
.label_2391:
	mov	rdi, rbx
	mov	rsi, rbp
	mov	edx, r14d
	pop	rbx
	pop	r14
	pop	rbp
	jmp	fseeko
.label_2392:
	mov	rdi, rbx
	call	fileno
	mov	edi, eax
	mov	rsi, rbp
	mov	edx, r14d
	call	lseek
	mov	rcx, rax
	mov	eax, 0xffffffff
	cmp	rcx, -1
	je	.label_2393
	and	byte ptr [rbx], 0xef
	mov	qword ptr [rbx + 0x90], rcx
	xor	eax, eax
.label_2393:
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	nop	
	.section .text
	.align	32
	#Procedure 0x417210

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
