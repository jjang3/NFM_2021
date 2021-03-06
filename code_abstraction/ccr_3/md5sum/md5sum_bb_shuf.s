	.section	.text
	.align	16
	#Procedure 0x4015f9
	.globl sub_4015f9
	.type sub_4015f9, @function
sub_4015f9:

	hlt	
	.section	.text
	.align	16
	#Procedure 0x4015fa
	.globl sub_4015fa
	.type sub_4015fa, @function
sub_4015fa:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x401632
	.globl sub_401632
	.type sub_401632, @function
sub_401632:

	nop	dword ptr [rax]
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40167a
	.globl sub_40167a
	.type sub_40167a, @function
sub_40167a:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40169c
	.globl sub_40169c
	.type sub_40169c, @function
sub_40169c:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x4016ad
	.globl sub_4016ad
	.type sub_4016ad, @function
sub_4016ad:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x4016c6
	.globl sub_4016c6
	.type sub_4016c6, @function
sub_4016c6:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4016d0
	.globl quotearg_custom_mem
	.type quotearg_custom_mem, @function
quotearg_custom_mem:

	sub	rsp, 0x38
	mov	rax, qword ptr [rip + label_9]
	mov	qword ptr [rsp + 0x30], rax
	movups	xmm0, xmmword ptr [rip + label_10]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0, xmmword ptr [rip + label_11]
	movaps	xmmword ptr [rsp + 0x10], xmm0
	movups	xmm0, xmmword ptr [rip + default_quoting_options]
	movaps	xmmword ptr [rsp], xmm0
	mov	dword ptr [rsp], 0xa
	test	rdi, rdi
	je	.label_12
	test	rsi, rsi
	je	.label_12
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
.label_12:
	call	abort
	.section	.text
	.align	16
	#Procedure 0x40173c
	.globl sub_40173c
	.type sub_40173c, @function
sub_40173c:

	nop	dword ptr [rax]
.label_16:
	mov	rcx, qword ptr [rip + stderr]
	mov	edi, OFFSET FLAT:label_13
	mov	esi, 0x37
	mov	edx, 1
	call	fwrite
	call	abort
	.section	.text
	.align	16
	#Procedure 0x401760
	.globl sub_401760
	.type sub_401760, @function
sub_401760:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40176f

	.globl set_program_name
	.type set_program_name, @function
set_program_name:
	push	r14
	push	rbx
	push	rax
	mov	rbx, rdi
	test	rbx, rbx
	je	.label_16
	mov	esi, 0x2f
	mov	rdi, rbx
	call	strrchr
	test	rax, rax
	lea	r14, [rax + 1]
	cmove	r14, rbx
	mov	rax, r14
	sub	rax, rbx
	cmp	rax, 7
	jl	.label_15
	lea	rdi, [r14 - 7]
	mov	esi, OFFSET FLAT:label_18
	mov	edx, 7
	call	strncmp
	test	eax, eax
	jne	.label_15
	mov	esi, OFFSET FLAT:label_17
	mov	edx, 3
	mov	rdi, r14
	call	strncmp
	test	eax, eax
	jne	.label_14
	add	r14, 3
	mov	qword ptr [rip + __progname],  r14
.label_14:
	mov	rbx, r14
.label_15:
	mov	qword ptr [rip + program_name],  rbx
	mov	qword ptr [rip + __progname_full],  rbx
	add	rsp, 8
	pop	rbx
	pop	r14
	ret	
.label_19:
	call	abort
	.section	.text
	.align	16
	#Procedure 0x4017f5
	.globl sub_4017f5
	.type sub_4017f5, @function
sub_4017f5:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4017fd
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
	je	.label_19
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
.label_22:
	mov	rsi, rbx
	call	realloc
	test	rbx, rbx
	je	.label_23
	test	rax, rax
	je	.label_24
.label_23:
	pop	rbx
	ret	
.label_20:
	test	rcx, rcx
	jne	.label_26
	mov	eax, 0x80
	xor	edx, edx
	div	rbx
	xor	ecx, ecx
	cmp	rbx, 0x80
	seta	cl
	add	rcx, rax
.label_26:
	movabs	rax, 0x7fffffffffffffff
	xor	edx, edx
	div	rbx
	cmp	rax, rcx
	jb	.label_25
.label_21:
	mov	qword ptr [rsi], rcx
	imul	rbx, rcx
	test	rdi, rdi
	je	.label_22
	test	rbx, rbx
	jne	.label_22
	call	free
	xor	eax, eax
	pop	rbx
	ret	
	.section	.text
	.align	16
	#Procedure 0x4018c0
	.globl x2nrealloc
	.type x2nrealloc, @function
x2nrealloc:

	push	rbx
	mov	rbx, rdx
	mov	rcx, qword ptr [rsi]
	test	rdi, rdi
	je	.label_20
	movabs	rax, 0x5555555555555554
	xor	edx, edx
	div	rbx
	cmp	rax, rcx
	jbe	.label_24
	mov	rax, rcx
	shr	rax, 1
	lea	rcx, [rcx + rax + 1]
	jmp	.label_21
.label_24:
	call	xalloc_die
.label_25:
	call	xalloc_die
	.section	.text
	.align	16
	#Procedure 0x4018f7
	.globl sub_4018f7
	.type sub_4018f7, @function
sub_4018f7:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x401900

	.globl quotearg_buffer_restyled
	.type quotearg_buffer_restyled, @function
quotearg_buffer_restyled:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0xc8
	mov	ebx, r9d
	mov	r15d, r8d
	mov	qword ptr [rsp + 0x48], rcx
	mov	qword ptr [rsp + 0x28], rdx
	mov	r13, rsi
	mov	qword ptr [rsp + 0x10], rdi
	mov	rax, qword ptr [rsp + 0x110]
	mov	qword ptr [rsp + 0x78], rax
	mov	rax, qword ptr [rsp + 0x108]
	mov	qword ptr [rsp + 0x80], rax
	call	__ctype_get_mb_cur_max
	mov	qword ptr [rsp + 0xb8], rax
	mov	r12d, ebx
	shr	r12b, 1
	and	r12b, 1
	mov	eax, ebx
	and	eax, 1
	mov	dword ptr [rsp + 0x9c], eax
	mov	dword ptr [rsp + 0x20], ebx
	and	ebx, 4
	mov	dword ptr [rsp + 0x98], ebx
	mov	dil, 1
	mov	eax, 0
	mov	qword ptr [rsp + 0x68], rax
	mov	eax, 0
	mov	qword ptr [rsp + 0x58], rax
	mov	eax, 0
	mov	qword ptr [rsp + 0x50], rax
	mov	eax, 0
	xor	r9d, r9d
	xor	ecx, ecx
	mov	qword ptr [rsp + 0xa8], rcx
	jmp	.label_116
	.section	.text
	.align	16
	#Procedure 0x4019af
	.globl sub_4019af
	.type sub_4019af, @function
sub_4019af:

	nop	
.label_31:
	cmp	r8d, 2
	setne	al
	cmp	byte ptr [rsp + 0xf], 0
	setne	dl
	mov	rsi, qword ptr [rsp + 0xa8]
	test	sil, 1
	mov	bl, byte ptr [rsp + 0x34]
	mov	rsi, qword ptr [rsp + 0xc0]
	je	.label_97
	or	al, dl
	jne	.label_97
	test	dil, 1
	jne	.label_152
	cmp	qword ptr [rsp + 0x68], 0
	je	.label_97
	test	rbp, rbp
	mov	r15d, r8d
	mov	al, bl
	mov	qword ptr [rsp + 0x48], rcx
	mov	r12d, esi
	mov	r13, qword ptr [rsp + 0x68]
	je	.label_116
	jmp	.label_97
.label_600:
	mov	r8d, 5
	test	r12b, 1
	jne	.label_34
	test	rbp, rbp
	je	.label_38
	mov	rax, qword ptr [rsp + 0x10]
	mov	byte ptr [rax], 0x22
.label_38:
	mov	r14d, 1
	jmp	.label_41
.label_601:
	mov	r13b, 1
	mov	r8d, 5
	xor	r14d, r14d
	mov	eax, OFFSET FLAT:label_43
	mov	qword ptr [rsp + 0x58], rax
	mov	eax, 1
	mov	qword ptr [rsp + 0x50], rax
	mov	sil, 1
	jmp	.label_44
.label_34:
	xor	r14d, r14d
.label_41:
	mov	eax, OFFSET FLAT:label_43
	mov	qword ptr [rsp + 0x58], rax
	mov	eax, 1
	mov	qword ptr [rsp + 0x50], rax
	mov	r13b, 1
	jmp	.label_57
	.section	.text
	.align	16
	#Procedure 0x401a7f
	.globl sub_401a7f
	.type sub_401a7f, @function
sub_401a7f:

	nop	
.label_116:
	mov	rbp, r13
	xor	r14d, r14d
	mov	ecx, r15d
	cmp	r15d, 0xa
	ja	.label_66
	mov	r8d, 7
	mov	r13b, 1
	xor	esi, esi
	mov	r10, qword ptr [rsp + 0x28]
	mov	r11, qword ptr [rsp + 0x48]
	jmp	qword ptr [(rcx * 8) + label_33]
.label_602:
	mov	r14d, edi
	mov	edi, OFFSET FLAT:label_78
	mov	esi, r15d
	mov	ebx, r9d
	call	gettext_quote
	mov	qword ptr [rsp + 0x80], rax
	mov	edi, OFFSET FLAT:label_72
	mov	esi, r15d
	call	gettext_quote
	mov	r9d, ebx
	mov	edi, r14d
	mov	qword ptr [rsp + 0x78], rax
.label_603:
	mov	byte ptr [rsp + 0x1e], dil
	mov	dword ptr [rsp + 0x60], r9d
	test	r12b, 1
	mov	r14d, 0
	mov	rcx, qword ptr [rsp + 0x80]
	jne	.label_92
	mov	al, byte ptr [rcx]
	test	al, al
	mov	r14d, 0
	je	.label_92
	xor	r14d, r14d
	nop	
.label_106:
	cmp	r14, rbp
	jae	.label_102
	mov	rdx, qword ptr [rsp + 0x10]
	mov	byte ptr [rdx + r14], al
.label_102:
	movzx	eax, byte ptr [rcx + r14 + 1]
	inc	r14
	test	al, al
	jne	.label_106
.label_92:
	mov	rbx, qword ptr [rsp + 0x78]
	mov	rdi, rbx
	call	strlen
	mov	qword ptr [rsp + 0x50], rax
	mov	r8d, r15d
	mov	qword ptr [rsp + 0x58], rbx
	mov	r13b, 1
	mov	sil, r12b
	mov	r10, qword ptr [rsp + 0x28]
	mov	r11, qword ptr [rsp + 0x48]
	mov	dil, byte ptr [rsp + 0x1e]
	mov	r9d, dword ptr [rsp + 0x60]
	jmp	.label_44
.label_595:
	xor	r8d, r8d
	xor	r14d, r14d
	mov	r13d, eax
	xor	esi, esi
	jmp	.label_44
.label_598:
	mov	al, 1
.label_596:
	mov	r12b, 1
.label_599:
	test	r12b, 1
	mov	cl, 1
	je	.label_124
	mov	ecx, eax
.label_124:
	mov	al, cl
.label_597:
	mov	r8d, 2
	test	r12b, 1
	jne	.label_127
	test	rbp, rbp
	je	.label_132
	mov	rcx, qword ptr [rsp + 0x10]
	mov	byte ptr [rcx], 0x27
.label_132:
	mov	r14d, 1
	jmp	.label_135
.label_127:
	xor	r14d, r14d
.label_135:
	mov	ecx, OFFSET FLAT:label_72
	mov	qword ptr [rsp + 0x58], rcx
	mov	ecx, 1
	mov	qword ptr [rsp + 0x50], rcx
	mov	r13d, eax
.label_57:
	mov	sil, r12b
.label_44:
	cmp	qword ptr [rsp + 0x100], 0
	setne	r12b
	cmp	r8d, 2
	setne	r15b
	sete	al
	mov	ecx, r13d
	and	cl, 1
	sete	byte ptr [rsp + 0x33]
	mov	ebx, r15d
	mov	byte ptr [rsp + 0x1f], cl
	and	bl, cl
	cmp	qword ptr [rsp + 0x50], 0
	setne	cl
	mov	edx, ecx
	mov	byte ptr [rsp + 0x36], bl
	and	dl, bl
	mov	byte ptr [rsp + 0x37], dl
	mov	ebx, esi
	and	bl, 1
	sete	dl
	and	al, bl
	mov	byte ptr [rsp + 0x31], al
	mov	byte ptr [rsp + 0xf], bl
	and	r12b, bl
	mov	byte ptr [rsp + 0x35], r12b
	or	dl, r15b
	mov	byte ptr [rsp + 0x27], dl
	mov	byte ptr [rsp + 0x34], r13b
	mov	qword ptr [rsp + 0xc0], rsi
	and	r13b, sil
	and	r13b, cl
	mov	byte ptr [rsp + 0x32], r13b
	xor	r12d, r12d
	mov	qword ptr [rsp + 0x38], r8
	jmp	.label_141
	.section	.text
	.align	16
	#Procedure 0x401c41
	.globl sub_401c41
	.type sub_401c41, @function
sub_401c41:

	nop	word ptr cs:[rax + rax]
.label_107:
	inc	r12
.label_141:
	cmp	r11, -1
	je	.label_52
	cmp	r12, r11
	jne	.label_54
	jmp	.label_56
	.section	.text
	.align	16
	#Procedure 0x401c63
	.globl sub_401c63
	.type sub_401c63, @function
sub_401c63:

	nop	word ptr cs:[rax + rax]
.label_52:
	mov	rcx, -1
	cmp	byte ptr [r10 + r12], 0
	je	.label_60
.label_54:
	cmp	byte ptr [rsp + 0x37], 0
	je	.label_67
	mov	rax, qword ptr [rsp + 0x50]
	lea	rbx, [r12 + rax]
	cmp	rax, 2
	jb	.label_75
	cmp	r11, -1
	jne	.label_75
	mov	r15d, edi
	mov	rdi, r10
	mov	r13d, r9d
	call	strlen
	mov	r9d, r13d
	mov	r8, qword ptr [rsp + 0x38]
	mov	edi, r15d
	mov	r10, qword ptr [rsp + 0x28]
	mov	r11, rax
.label_75:
	cmp	rbx, r11
	jbe	.label_82
.label_67:
	xor	esi, esi
.label_90:
	movzx	r15d, byte ptr [r10 + r12]
	cmp	r15, 0x7e
	ja	.label_84
	xor	edx, edx
	mov	r13b, 1
	mov	cl, 0x6e
	mov	bl, 0x61
	xor	eax, eax
	jmp	qword ptr [(r15 * 8) + label_89]
.label_623:
	test	r12, r12
	jne	.label_40
	jmp	.label_96
	.section	.text
	.align	16
	#Procedure 0x401cf6
	.globl sub_401cf6
	.type sub_401cf6, @function
sub_401cf6:

	nop	word ptr cs:[rax + rax]
.label_82:
	mov	r13d, r9d
	mov	r15d, edi
	mov	rbx, r11
	lea	rdi, [r10 + r12]
	mov	rsi, qword ptr [rsp + 0x58]
	mov	rdx, qword ptr [rsp + 0x50]
	call	memcmp
	test	eax, eax
	sete	sil
	jne	.label_104
	cmp	byte ptr [rsp + 0xf], 0
	mov	r10, qword ptr [rsp + 0x28]
	mov	r11, rbx
	mov	edi, r15d
	mov	r8, qword ptr [rsp + 0x38]
	mov	r9d, r13d
	je	.label_90
	jmp	.label_32
.label_104:
	mov	r10, qword ptr [rsp + 0x28]
	mov	r11, rbx
	mov	edi, r15d
	mov	r8, qword ptr [rsp + 0x38]
	mov	r9d, r13d
	jmp	.label_90
.label_627:
	xor	eax, eax
	cmp	r11, -1
	je	.label_118
	test	r12, r12
	jne	.label_121
	cmp	r11, 1
	je	.label_96
	xor	r13d, r13d
	jmp	.label_30
.label_616:
	cmp	byte ptr [rsp + 0x1f], 0
	je	.label_129
	cmp	byte ptr [rsp + 0xf], 0
	jne	.label_32
	cmp	r8d, 2
	jne	.label_133
	mov	eax, r9d
	and	al, 1
	jne	.label_133
	cmp	r14, rbp
	jae	.label_137
	mov	rax, qword ptr [rsp + 0x10]
	mov	byte ptr [rax + r14], 0x27
.label_137:
	lea	rax, [r14 + 1]
	cmp	rax, rbp
	jae	.label_139
	mov	rcx, qword ptr [rsp + 0x10]
	mov	byte ptr [rcx + rax], 0x24
.label_139:
	lea	rax, [r14 + 2]
	cmp	rax, rbp
	jae	.label_143
	mov	rcx, qword ptr [rsp + 0x10]
	mov	byte ptr [rcx + rax], 0x27
.label_143:
	add	r14, 3
	mov	r9b, 1
.label_133:
	mov	rcx, r14
	cmp	rcx, rbp
	jae	.label_151
	mov	rax, qword ptr [rsp + 0x10]
	mov	byte ptr [rax + rcx], 0x5c
.label_151:
	lea	r14, [rcx + 1]
	mov	al, 1
	mov	r15b, 0x30
	cmp	r8d, 2
	je	.label_28
	lea	rdx, [r12 + 1]
	cmp	rdx, r11
	jae	.label_28
	mov	dl, byte ptr [r10 + rdx]
	add	dl, 0xd0
	cmp	dl, 9
	ja	.label_28
	cmp	r14, rbp
	jae	.label_126
	mov	rdx, qword ptr [rsp + 0x10]
	mov	byte ptr [rdx + r14], 0x30
.label_126:
	lea	rdx, [rcx + 2]
	cmp	rdx, rbp
	jae	.label_122
	mov	ebx, esi
	mov	rsi, qword ptr [rsp + 0x10]
	mov	byte ptr [rsi + rdx], 0x30
	mov	esi, ebx
.label_122:
	add	rcx, 3
	xor	r13d, r13d
	mov	r14, rcx
	jmp	.label_30
.label_617:
	mov	bl, 0x62
	jmp	.label_53
.label_618:
	mov	cl, 0x74
	jmp	.label_45
.label_619:
	mov	bl, 0x76
	jmp	.label_53
.label_620:
	mov	bl, 0x66
	jmp	.label_53
.label_621:
	mov	cl, 0x72
	jmp	.label_45
.label_624:
	mov	r15b, 0x27
	mov	al, 1
	mov	qword ptr [rsp + 0xa8], rax
	cmp	r8d, 2
	jne	.label_63
	cmp	byte ptr [rsp + 0xf], 0
	jne	.label_37
	test	rbp, rbp
	sete	al
	mov	rcx, qword ptr [rsp + 0x68]
	mov	rdx, rcx
	test	rdx, rdx
	setne	cl
	or	cl, al
	cmove	rdx, rbp
	mov	qword ptr [rsp + 0x68], rdx
	mov	eax, 0
	cmove	rbp, rax
	cmp	r14, rbp
	jae	.label_73
	mov	rax, qword ptr [rsp + 0x10]
	mov	byte ptr [rax + r14], 0x27
.label_73:
	lea	rax, [r14 + 1]
	cmp	rax, rbp
	jae	.label_86
	mov	rcx, qword ptr [rsp + 0x10]
	mov	byte ptr [rcx + rax], 0x5c
.label_86:
	lea	rax, [r14 + 2]
	cmp	rax, rbp
	jae	.label_93
	mov	rcx, qword ptr [rsp + 0x10]
	mov	byte ptr [rcx + rax], 0x27
.label_93:
	add	r14, 3
	xor	r9d, r9d
.label_63:
	xor	eax, eax
	mov	r13b, 1
	jmp	.label_30
.label_625:
	mov	r15b, 0x3f
	cmp	r8d, 5
	je	.label_99
	cmp	r8d, 2
	jne	.label_40
	cmp	byte ptr [rsp + 0xf], 0
	je	.label_40
	jmp	.label_37
.label_626:
	cmp	r8d, 2
	jne	.label_109
	cmp	byte ptr [rsp + 0xf], 0
	jne	.label_37
	mov	r15b, 0x5c
	xor	eax, eax
	jmp	.label_125
.label_84:
	cmp	qword ptr [rsp + 0xb8], 1
	mov	qword ptr [rsp + 0xa0], rbp
	mov	byte ptr [rsp + 0x1e], dil
	mov	dword ptr [rsp + 0x60], r9d
	mov	dword ptr [rsp + 0x94], esi
	jne	.label_115
	mov	qword ptr [rsp + 0x48], r11
	call	__ctype_b_loc
	mov	r10, qword ptr [rsp + 0x28]
	mov	rax, qword ptr [rax]
	movzx	r13d, word ptr [rax + r15*2]
	shr	r13d, 0xe
	and	r13b, 1
	mov	ebx, 1
	jmp	.label_91
.label_118:
	test	r12, r12
	jne	.label_136
	mov	cl, byte ptr [r10 + 1]
	test	cl, cl
	jne	.label_136
.label_96:
	mov	dl, 1
.label_622:
	cmp	byte ptr [rsp + 0x27], 0
	je	.label_37
	xor	eax, eax
	mov	r13b, dl
.label_30:
	cmp	byte ptr [rsp + 0x36], 0
	je	.label_142
	cmp	qword ptr [rsp + 0x100], 0
	jne	.label_144
	jmp	.label_147
	.section	.text
	.align	16
	#Procedure 0x401fd4
	.globl sub_401fd4
	.type sub_401fd4, @function
sub_401fd4:

	nop	word ptr cs:[rax + rax]
.label_142:
	cmp	byte ptr [rsp + 0x35], 0
	je	.label_147
.label_144:
	mov	ecx, r15d
	shr	cl, 5
	movzx	edx, cl
	mov	ebx, esi
	mov	esi, 1
	mov	ecx, r15d
	shl	esi, cl
	test	bl, bl
	jne	.label_145
	mov	rcx, qword ptr [rsp + 0x100]
	and	esi, dword ptr [rcx + rdx*4]
	jmp	.label_27
	.section	.text
	.align	16
	#Procedure 0x40200d
	.globl sub_40200d
	.type sub_40200d, @function
sub_40200d:

	nop	dword ptr [rax]
.label_147:
	test	sil, sil
.label_27:
	mov	ebx, r15d
	je	.label_49
	jmp	.label_36
.label_145:
	mov	ebx, r15d
	jmp	.label_36
.label_129:
	cmp	dword ptr [rsp + 0x9c], 0
	jne	.label_107
	xor	r15d, r15d
	jmp	.label_40
.label_109:
	mov	cl, 0x5c
	cmp	byte ptr [rsp + 0x32], 0
	je	.label_45
	xor	eax, eax
	mov	r15b, 0x5c
.label_125:
	xor	r13d, r13d
	jmp	.label_49
.label_45:
	cmp	byte ptr [rsp + 0x27], 0
	mov	ebx, ecx
	je	.label_37
.label_53:
	xor	eax, eax
	cmp	byte ptr [rsp + 0x1f], 0
	mov	r13d, 0
	je	.label_30
	nop	
.label_36:
	cmp	byte ptr [rsp + 0xf], 0
	jne	.label_32
	cmp	r8d, 2
	jne	.label_65
	mov	eax, r9d
	and	al, 1
	jne	.label_65
	cmp	r14, rbp
	jae	.label_70
	mov	rax, qword ptr [rsp + 0x10]
	mov	byte ptr [rax + r14], 0x27
.label_70:
	lea	rax, [r14 + 1]
	cmp	rax, rbp
	jae	.label_74
	mov	rcx, qword ptr [rsp + 0x10]
	mov	byte ptr [rcx + rax], 0x24
.label_74:
	lea	rax, [r14 + 2]
	cmp	rax, rbp
	jae	.label_77
	mov	rcx, qword ptr [rsp + 0x10]
	mov	byte ptr [rcx + rax], 0x27
.label_77:
	add	r14, 3
	mov	r9b, 1
.label_65:
	cmp	r14, rbp
	jae	.label_83
	mov	rax, qword ptr [rsp + 0x10]
	mov	byte ptr [rax + r14], 0x5c
.label_83:
	inc	r14
	jmp	.label_131
.label_115:
	mov	qword ptr [rsp + 0x70], 0
	cmp	r11, -1
	jne	.label_64
	mov	rdi, r10
	call	strlen
	mov	r10, qword ptr [rsp + 0x28]
	mov	r11, rax
.label_64:
	cmp	byte ptr [rsp + 0x31], 0
	mov	qword ptr [rsp + 0x48], r11
	mov	qword ptr [rsp + 0x88], r12
	je	.label_98
	lea	rax, [r10 + r12]
	mov	qword ptr [rsp + 0xb0], rax
	mov	r13b, 1
	xor	r12d, r12d
	lea	rbp, [rsp + 0x70]
.label_148:
	mov	rax, r12
	mov	qword ptr [rsp + 0x40], rax
	mov	rcx, qword ptr [rsp + 0x88]
	lea	rax, [r12 + rcx]
	mov	r12, rcx
	lea	rsi, [r10 + rax]
	mov	rdx, r11
	sub	rdx, rax
	lea	rdi, [rsp + 0x64]
	mov	rcx, rbp
	call	rpl_mbrtowc
	mov	rbx, rax
	cmp	rbx, -2
	je	.label_110
	cmp	rbx, -1
	mov	r10, qword ptr [rsp + 0x28]
	movabs	rsi, 0x20000002b
	je	.label_119
	test	rbx, rbx
	mov	r11, qword ptr [rsp + 0x48]
	je	.label_94
	cmp	rbx, 2
	mov	rbp, qword ptr [rsp + 0xa0]
	jb	.label_130
	mov	rax, qword ptr [rsp + 0x40]
	mov	rcx, qword ptr [rsp + 0xb0]
	lea	rax, [rcx + rax]
	mov	ecx, 1
	nop	dword ptr [rax]
.label_50:
	movsx	edx, byte ptr [rax + rcx]
	add	edx, -0x5b
	cmp	edx, 0x21
	ja	.label_138
	bt	rsi, rdx
	jb	.label_37
.label_138:
	inc	rcx
	cmp	rcx, rbx
	jb	.label_50
.label_130:
	mov	edi, dword ptr [rsp + 0x64]
	call	iswprint
	test	eax, eax
	jne	.label_149
	xor	r13d, r13d
.label_149:
	lea	rbp, [rsp + 0x70]
	mov	r12, qword ptr [rsp + 0x40]
	add	r12, rbx
	mov	rdi, rbp
	call	mbsinit
	test	eax, eax
	mov	r10, qword ptr [rsp + 0x28]
	mov	r11, qword ptr [rsp + 0x48]
	je	.label_148
	jmp	.label_29
.label_28:
	xor	r13d, r13d
	jmp	.label_30
.label_136:
	mov	r11, -1
	xor	r13d, r13d
	jmp	.label_30
.label_99:
	cmp	dword ptr [rsp + 0x98], 0
	je	.label_40
	lea	rcx, [r12 + 2]
	cmp	rcx, r11
	jae	.label_40
	cmp	byte ptr [r10 + r12 + 1], 0x3f
	jne	.label_40
	movsx	edx, byte ptr [r10 + rcx]
	xor	eax, eax
	cmp	edx, 0x3e
	ja	.label_51
	mov	ebx, esi
	movabs	rsi, 0x7000a38200000000
	bt	rsi, rdx
	jae	.label_42
	cmp	byte ptr [rsp + 0xf], 0
	jne	.label_68
	cmp	r14, rbp
	jae	.label_61
	mov	rax, qword ptr [rsp + 0x10]
	mov	byte ptr [rax + r14], 0x3f
.label_61:
	lea	rax, [r14 + 1]
	cmp	rax, rbp
	jae	.label_69
	mov	rsi, qword ptr [rsp + 0x10]
	mov	byte ptr [rsi + rax], 0x22
.label_69:
	lea	rax, [r14 + 2]
	cmp	rax, rbp
	jae	.label_85
	mov	rsi, qword ptr [rsp + 0x10]
	mov	byte ptr [rsi + rax], 0x22
.label_85:
	lea	rax, [r14 + 3]
	cmp	rax, rbp
	jae	.label_95
	mov	rsi, qword ptr [rsp + 0x10]
	mov	byte ptr [rsi + rax], 0x3f
.label_95:
	add	r14, 4
	xor	eax, eax
	mov	r12, rcx
	mov	r15b, dl
.label_42:
	xor	r13d, r13d
	mov	esi, ebx
	jmp	.label_30
.label_40:
	xor	eax, eax
.label_121:
	xor	r13d, r13d
	jmp	.label_30
.label_98:
	mov	r13b, 1
	xor	r12d, r12d
	lea	rbx, [rsp + 0x70]
	nop	word ptr cs:[rax + rax]
.label_117:
	mov	rax, r12
	mov	qword ptr [rsp + 0x40], rax
	mov	rcx, qword ptr [rsp + 0x88]
	lea	rax, [r12 + rcx]
	mov	r12, rcx
	lea	rsi, [r10 + rax]
	mov	rdx, r11
	sub	rdx, rax
	lea	rdi, [rsp + 0x64]
	mov	rcx, rbx
	call	rpl_mbrtowc
	mov	rbp, rax
	test	rbp, rbp
	je	.label_76
	cmp	rbp, -1
	je	.label_108
	cmp	rbp, -2
	je	.label_110
	mov	edi, dword ptr [rsp + 0x64]
	call	iswprint
	test	eax, eax
	mov	r12, qword ptr [rsp + 0x40]
	jne	.label_113
	xor	r13d, r13d
.label_113:
	add	r12, rbp
	lea	rbx, [rsp + 0x70]
	mov	rdi, rbx
	call	mbsinit
	test	eax, eax
	mov	r10, qword ptr [rsp + 0x28]
	mov	r11, qword ptr [rsp + 0x48]
	je	.label_117
	jmp	.label_29
.label_110:
	mov	r10, qword ptr [rsp + 0x28]
	mov	rsi, qword ptr [rsp + 0x40]
	lea	rax, [rsi + r12]
	mov	rdx, qword ptr [rsp + 0x48]
	cmp	rax, rdx
	jae	.label_59
	lea	rax, [r10 + r12]
.label_112:
	cmp	byte ptr [rax + rsi], 0
	je	.label_59
	lea	rcx, [r12 + rsi + 1]
	inc	rsi
	cmp	rcx, rdx
	jb	.label_112
.label_59:
	mov	qword ptr [rsp + 0x40], rsi
.label_119:
	xor	r13d, r13d
	jmp	.label_94
.label_108:
	xor	r13d, r13d
.label_76:
	mov	r10, qword ptr [rsp + 0x28]
.label_94:
	mov	r12, qword ptr [rsp + 0x40]
.label_29:
	mov	rbx, r12
	mov	r12, qword ptr [rsp + 0x88]
.label_91:
	and	r13b, 1
	mov	eax, r13d
	or	al, byte ptr [rsp + 0x33]
	cmp	rbx, 1
	mov	rbp, qword ptr [rsp + 0xa0]
	mov	dil, byte ptr [rsp + 0x1e]
	mov	r8, qword ptr [rsp + 0x38]
	mov	r9d, dword ptr [rsp + 0x60]
	mov	esi, dword ptr [rsp + 0x94]
	ja	.label_123
	test	al, al
	je	.label_123
	xor	eax, eax
	mov	r11, qword ptr [rsp + 0x48]
	jmp	.label_30
.label_123:
	mov	byte ptr [rsp + 0x40], al
	add	rbx, r12
	xor	eax, eax
	mov	r11, qword ptr [rsp + 0x48]
	jmp	.label_153
	.section	.text
	.align	16
	#Procedure 0x402407
	.globl sub_402407
	.type sub_402407, @function
sub_402407:

	nop	word ptr [rax + rax]
.label_120:
	inc	r14
	mov	r15b, byte ptr [r10 + r12 + 1]
	mov	r12, rdx
.label_153:
	cmp	byte ptr [rsp + 0x40], 0
	je	.label_35
	test	sil, 1
	je	.label_47
	cmp	r14, rbp
	jae	.label_39
	mov	rdx, qword ptr [rsp + 0x10]
	mov	byte ptr [rdx + r14], 0x5c
.label_39:
	inc	r14
	xor	esi, esi
	jmp	.label_47
	.section	.text
	.align	16
	#Procedure 0x402445
	.globl sub_402445
	.type sub_402445, @function
sub_402445:

	nop	word ptr cs:[rax + rax]
.label_35:
	cmp	byte ptr [rsp + 0xf], 0
	jne	.label_32
	cmp	r8d, 2
	jne	.label_55
	mov	eax, r9d
	and	al, 1
	jne	.label_55
	cmp	r14, rbp
	jae	.label_58
	mov	rax, qword ptr [rsp + 0x10]
	mov	byte ptr [rax + r14], 0x27
.label_58:
	lea	rax, [r14 + 1]
	cmp	rax, rbp
	jae	.label_62
	mov	rdx, qword ptr [rsp + 0x10]
	mov	byte ptr [rdx + rax], 0x24
.label_62:
	lea	rax, [r14 + 2]
	cmp	rax, rbp
	jae	.label_150
	mov	rdx, qword ptr [rsp + 0x10]
	mov	byte ptr [rdx + rax], 0x27
.label_150:
	add	r14, 3
	mov	r9b, 1
.label_55:
	cmp	r14, rbp
	jae	.label_146
	mov	rax, qword ptr [rsp + 0x10]
	mov	byte ptr [rax + r14], 0x5c
.label_146:
	lea	rax, [r14 + 1]
	cmp	rax, rbp
	jae	.label_80
	mov	edx, r15d
	shr	dl, 6
	or	dl, 0x30
	mov	ecx, esi
	mov	rsi, qword ptr [rsp + 0x10]
	mov	byte ptr [rsi + rax], dl
	mov	esi, ecx
.label_80:
	lea	rax, [r14 + 2]
	cmp	rax, rbp
	jae	.label_87
	mov	edx, r15d
	shr	dl, 3
	and	dl, 7
	or	dl, 0x30
	mov	ecx, esi
	mov	rsi, qword ptr [rsp + 0x10]
	mov	byte ptr [rsi + rax], dl
	mov	esi, ecx
.label_87:
	add	r14, 3
	and	r15b, 7
	or	r15b, 0x30
	mov	al, 1
.label_47:
	lea	rdx, [r12 + 1]
	cmp	rbx, rdx
	jbe	.label_49
	test	r9b, 1
	je	.label_100
	mov	rcx, rbx
	mov	ebx, eax
	and	bl, 1
	jne	.label_88
	mov	r8, r12
	mov	r12d, esi
	cmp	r14, rbp
	jae	.label_103
	mov	rsi, qword ptr [rsp + 0x10]
	mov	byte ptr [rsi + r14], 0x27
.label_103:
	lea	rsi, [r14 + 1]
	cmp	rsi, rbp
	jae	.label_111
	mov	rbx, qword ptr [rsp + 0x10]
	mov	byte ptr [rbx + rsi], 0x27
.label_111:
	add	r14, 2
	xor	r9d, r9d
	mov	esi, r12d
	mov	rbx, rcx
	mov	r12, r8
	mov	r8, qword ptr [rsp + 0x38]
	jmp	.label_100
	.section	.text
	.align	16
	#Procedure 0x402556
	.globl sub_402556
	.type sub_402556, @function
sub_402556:

	nop	word ptr cs:[rax + rax]
.label_88:
	mov	rbx, rcx
.label_100:
	cmp	r14, rbp
	jae	.label_120
	mov	ecx, esi
	mov	rsi, qword ptr [rsp + 0x10]
	mov	byte ptr [rsi + r14], r15b
	mov	esi, ecx
	jmp	.label_120
	.section	.text
	.align	16
	#Procedure 0x40257e
	.globl sub_40257e
	.type sub_40257e, @function
sub_40257e:

	nop	
.label_49:
	test	r9b, 1
	je	.label_128
	and	al, 1
	jne	.label_128
	cmp	r14, rbp
	jae	.label_114
	mov	rax, qword ptr [rsp + 0x10]
	mov	byte ptr [rax + r14], 0x27
.label_114:
	lea	rax, [r14 + 1]
	cmp	rax, rbp
	jae	.label_134
	mov	rcx, qword ptr [rsp + 0x10]
	mov	byte ptr [rcx + rax], 0x27
.label_134:
	add	r14, 2
	xor	r9d, r9d
.label_128:
	mov	ebx, r15d
.label_131:
	cmp	r14, rbp
	jae	.label_140
	mov	rax, qword ptr [rsp + 0x10]
	mov	byte ptr [rax + r14], bl
.label_140:
	inc	r14
	shl	r13b, 7
	sar	r13b, 7
	and	r13b, dil
	mov	edi, r13d
	jmp	.label_107
.label_51:
	xor	r13d, r13d
	jmp	.label_30
	.section	.text
	.align	16
	#Procedure 0x4025e1
	.globl sub_4025e1
	.type sub_4025e1, @function
sub_4025e1:

	nop	word ptr cs:[rax + rax]
.label_56:
	mov	rcx, r12
.label_60:
	cmp	r8d, 2
	setne	al
	test	r14, r14
	setne	dl
	cmp	byte ptr [rsp + 0xf], 0
	je	.label_31
	or	al, dl
	jne	.label_31
	mov	r11, rcx
	jmp	.label_32
.label_37:
	mov	eax, 2
.label_105:
	mov	qword ptr [rsp + 0x38], rax
.label_32:
	mov	r9d, dword ptr [rsp + 0x20]
	cmp	byte ptr [rsp + 0x1f], 0
	mov	r8d, 4
	mov	rax, qword ptr [rsp + 0x38]
	cmove	r8d, eax
	cmp	eax, 2
	cmovne	r8d, eax
	and	r9d, 0xfffffffd
	sub	rsp, 8
	mov	rdi, qword ptr [rsp + 0x18]
	mov	rsi, rbp
	mov	rdx, r10
	mov	rcx, r11
	push	qword ptr [rsp + 0x80]
	push	qword ptr [rsp + 0x90]
	push	0
	call	quotearg_buffer_restyled
	add	rsp, 0x20
.label_48:
	mov	r14, rax
.label_101:
	mov	rax, r14
	add	rsp, 0xc8
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_97:
	mov	rdx, qword ptr [rsp + 0x58]
	test	rdx, rdx
	je	.label_71
	cmp	byte ptr [rsp + 0xf], 0
	mov	rcx, qword ptr [rsp + 0x10]
	jne	.label_46
	mov	al, byte ptr [rdx]
	test	al, al
	je	.label_46
	inc	rdx
	nop	dword ptr [rax + rax]
.label_81:
	cmp	r14, rbp
	jae	.label_79
	mov	byte ptr [rcx + r14], al
.label_79:
	inc	r14
	movzx	eax, byte ptr [rdx]
	inc	rdx
	test	al, al
	jne	.label_81
	jmp	.label_46
.label_152:
	sub	rsp, 8
	mov	r8d, 5
	mov	rdi, qword ptr [rsp + 0x18]
	mov	rsi, qword ptr [rsp + 0x70]
	mov	rdx, qword ptr [rsp + 0x30]
	mov	r9d, dword ptr [rsp + 0x28]
	push	qword ptr [rsp + 0x80]
	push	qword ptr [rsp + 0x90]
	push	qword ptr [rsp + 0x118]
	call	quotearg_buffer_restyled
	add	rsp, 0x20
	jmp	.label_48
.label_71:
	mov	rcx, qword ptr [rsp + 0x10]
.label_46:
	cmp	r14, rbp
	jae	.label_101
	mov	byte ptr [rcx + r14], 0
	jmp	.label_101
.label_68:
	mov	eax, 5
	jmp	.label_105
.label_66:
	call	abort
	.section	.text
	.align	16
	#Procedure 0x402730
	.globl quote_n
	.type quote_n, @function
quote_n:

	mov	rdx, -1
	mov	ecx, OFFSET FLAT:quote_quoting_options
	jmp	quotearg_n_options
	.section	.text
	.align	16
	#Procedure 0x402741
	.globl sub_402741
	.type sub_402741, @function
sub_402741:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x402750
	.globl quotearg_n_custom_mem
	.type quotearg_n_custom_mem, @function
quotearg_n_custom_mem:

	sub	rsp, 0x38
	mov	rax, qword ptr [rip + label_9]
	mov	qword ptr [rsp + 0x30], rax
	movups	xmm0, xmmword ptr [rip + label_10]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0, xmmword ptr [rip + label_11]
	movaps	xmmword ptr [rsp + 0x10], xmm0
	movups	xmm0, xmmword ptr [rip + default_quoting_options]
	movaps	xmmword ptr [rsp], xmm0
	mov	dword ptr [rsp], 0xa
	test	rsi, rsi
	je	.label_154
	test	rdx, rdx
	je	.label_154
	mov	qword ptr [rsp + 0x28], rsi
	mov	qword ptr [rsp + 0x30], rdx
	lea	rax, [rsp]
	mov	rsi, rcx
	mov	rdx, r8
	mov	rcx, rax
	call	quotearg_n_options
	add	rsp, 0x38
	ret	
.label_154:
	call	abort
	.section	.text
	.align	16
	#Procedure 0x4027ba
	.globl sub_4027ba
	.type sub_4027ba, @function
sub_4027ba:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4027c0
	.globl quotearg_n
	.type quotearg_n, @function
quotearg_n:

	mov	rdx, -1
	mov	ecx, OFFSET FLAT:default_quoting_options
	jmp	quotearg_n_options
	.section	.text
	.align	16
	#Procedure 0x4027ce
	.globl sub_4027ce
	.type sub_4027ce, @function
sub_4027ce:

	nop	
	.section	.text
	.align	16
	#Procedure 0x4027d0

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
	js	.label_158
	mov	eax, dword ptr [r13]
	mov	rbp, qword ptr [rip + slotvec]
	cmp	dword ptr [rip + nslots],  r12d
	mov	qword ptr [rsp + 0x18], r13
	mov	dword ptr [rsp], eax
	mov	qword ptr [rsp + 0x10], rbx
	mov	qword ptr [rsp + 8], r15
	jg	.label_161
	cmp	r12d, 0x7fffffff
	je	.label_156
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
	jne	.label_159
	movups	xmm0, xmmword ptr [rip + slotvec0]
	movups	xmmword ptr [r14], xmm0
.label_159:
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
.label_161:
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
	jbe	.label_157
	mov	rax, qword ptr [rsp + 0x18]
	mov	ebp, dword ptr [rsp]
	jmp	.label_160
.label_157:
	lea	rax, [rbp + r13]
	lea	r12, [rbp + r13 + 8]
	inc	r15
	mov	qword ptr [rax], r15
	mov	eax, OFFSET FLAT:slot0
	cmp	r14, rax
	mov	ebp, dword ptr [rsp]
	je	.label_155
	mov	rdi, r14
	call	free
.label_155:
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
.label_160:
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
.label_158:
	call	abort
.label_156:
	call	xalloc_die
	.section	.text
	.align	16
	#Procedure 0x40298d
	.globl sub_40298d
	.type sub_40298d, @function
sub_40298d:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x402990
	.globl quotearg
	.type quotearg, @function
quotearg:

	mov	rax, rdi
	xor	edi, edi
	mov	rdx, -1
	mov	ecx, OFFSET FLAT:default_quoting_options
	mov	rsi, rax
	jmp	quotearg_n_options
	.section	.text
	.align	16
	#Procedure 0x4029a9
	.globl sub_4029a9
	.type sub_4029a9, @function
sub_4029a9:

	nop	dword ptr [rax]
.label_182:
	mov	rbx, qword ptr [rip + stderr]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_162
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
	.section	.text
	.align	16
	#Procedure 0x4029e8
	.globl sub_4029e8
	.type sub_4029e8, @function
sub_4029e8:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4029f5

	.globl usage
	.type usage, @function
usage:
	push	rbp
	push	rbx
	push	rax
	mov	ebp, edi
	test	ebp, ebp
	jne	.label_182
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_163
	mov	edx, 5
	call	dcgettext
	mov	rsi, rax
	mov	rdx, qword ptr [rip + program_name]
	mov	edi, 1
	mov	ecx, OFFSET FLAT:label_165
	mov	r8d, 0x80
	xor	eax, eax
	call	__printf_chk
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_183
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_171
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_181
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:label_165
	xor	eax, eax
	mov	rsi, rcx
	call	__printf_chk
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_168
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_176
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_175
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_185
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_179
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_177
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_178
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:label_169
	xor	eax, eax
	mov	rsi, rcx
	call	__printf_chk
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_164
	mov	edx, 5
	call	dcgettext
	mov	rsi, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:label_172
	mov	ecx, OFFSET FLAT:label_166
	xor	eax, eax
	call	__printf_chk
	mov	edi, 5
	xor	esi, esi
	call	setlocale
	test	rax, rax
	je	.label_170
	mov	esi, OFFSET FLAT:label_186
	mov	edx, 3
	mov	rdi, rax
	call	strncmp
	test	eax, eax
	je	.label_170
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_173
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	call	fputs_unlocked
.label_170:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_174
	mov	edx, 5
	call	dcgettext
	mov	rsi, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:label_166
	mov	ecx, OFFSET FLAT:label_167
	xor	eax, eax
	call	__printf_chk
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_184
	mov	edx, 5
	call	dcgettext
	mov	rsi, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:label_167
	mov	ecx, OFFSET FLAT:label_180
	xor	eax, eax
	call	__printf_chk
	mov	edi, ebp
	call	exit
	.section	.text
	.align	16
	#Procedure 0x402c50

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
	je	.label_187
	cmp	r15, -2
	jb	.label_187
	xor	edi, edi
	call	hard_locale
	test	al, al
	jne	.label_187
	movzx	eax, byte ptr [r14]
	mov	dword ptr [rbx], eax
	mov	r15d, 1
.label_187:
	mov	rax, r15
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	ret	
	.section	.text
	.align	16
	#Procedure 0x402ca6
	.globl sub_402ca6
	.type sub_402ca6, @function
sub_402ca6:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x402cb0
	.globl quotearg_char
	.type quotearg_char, @function
quotearg_char:

	sub	rsp, 0x38
	mov	ecx, esi
	mov	rax, rdi
	mov	rdx, qword ptr [rip + label_9]
	mov	qword ptr [rsp + 0x30], rdx
	movups	xmm0, xmmword ptr [rip + label_10]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0, xmmword ptr [rip + label_11]
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
	.section	.text
	.align	16
	#Procedure 0x402d1f
	.globl sub_402d1f
	.type sub_402d1f, @function
sub_402d1f:

	nop	
.label_192:
	call	__errno_location
	mov	rbp, rax
	mov	r14d, dword ptr [rbp]
	mov	rdi, rbx
	call	rpl_fclose
	mov	dword ptr [rbp], r14d
.label_190:
	xor	eax, eax
.label_188:
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x402d3f
	.globl sub_402d3f
	.type sub_402d3f, @function
sub_402d3f:

	nop	word ptr cs:[rax + rax]
.label_191:
	mov	rax, rbx
	jmp	.label_188
	.section	.text
	.align	16
	#Procedure 0x402d4e

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
	je	.label_188
	mov	rdi, rbx
	call	fileno
	cmp	eax, 2
	ja	.label_191
	mov	edi, eax
	call	dup_safer
	mov	ebp, eax
	test	ebp, ebp
	js	.label_192
	mov	rdi, rbx
	call	rpl_fclose
	test	eax, eax
	jne	.label_189
	mov	edi, ebp
	mov	rsi, r14
	call	fdopen
	test	rax, rax
	jne	.label_188
.label_189:
	call	__errno_location
	mov	rbx, rax
	mov	r14d, dword ptr [rbx]
	mov	edi, ebp
	call	close
	mov	dword ptr [rbx], r14d
	jmp	.label_190
	.section	.text
	.align	16
	#Procedure 0x402db0
	.globl quotearg_custom
	.type quotearg_custom, @function
quotearg_custom:

	sub	rsp, 0x38
	mov	rax, rdx
	mov	rcx, qword ptr [rip + label_9]
	mov	qword ptr [rsp + 0x30], rcx
	movups	xmm0, xmmword ptr [rip + label_10]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0, xmmword ptr [rip + label_11]
	movaps	xmmword ptr [rsp + 0x10], xmm0
	movups	xmm0, xmmword ptr [rip + default_quoting_options]
	movaps	xmmword ptr [rsp], xmm0
	mov	dword ptr [rsp], 0xa
	test	rdi, rdi
	je	.label_193
	test	rsi, rsi
	je	.label_193
	mov	qword ptr [rsp + 0x28], rdi
	mov	qword ptr [rsp + 0x30], rsi
	lea	rcx, [rsp]
	xor	edi, edi
	mov	rdx, -1
	mov	rsi, rax
	call	quotearg_n_options
	add	rsp, 0x38
	ret	
.label_193:
	call	abort
	.section	.text
	.align	16
	#Procedure 0x402e20
	.globl md5_finish_ctx
	.type md5_finish_ctx, @function
md5_finish_ctx:

	push	r15
	push	r14
	push	r12
	push	rbx
	push	rax
	mov	r14, rsi
	mov	rbx, rdi
	mov	eax, dword ptr [rbx + 0x18]
	cmp	rax, 0x38
	mov	ecx, 0x10
	mov	r15d, 0x20
	cmovb	r15, rcx
	mov	ecx, dword ptr [rbx + 0x10]
	add	ecx, eax
	mov	dword ptr [rbx + 0x10], ecx
	jae	.label_194
	inc	dword ptr [rbx + 0x14]
.label_194:
	lea	edx, [rcx*8]
	lea	r12, [rbx + 0x1c]
	mov	dword ptr [rbx + r15*4 + 0x14], edx
	mov	edx, dword ptr [rbx + 0x14]
	shld	edx, ecx, 3
	mov	dword ptr [rbx + r15*4 + 0x18], edx
	lea	rdi, [rbx + rax + 0x1c]
	lea	rdx, [r15*4 - 8]
	sub	rdx, rax
	mov	esi, OFFSET FLAT:fillbuf
	call	memcpy
	shl	r15, 2
	mov	rdi, r12
	mov	rsi, r15
	mov	rdx, rbx
	call	md5_process_block
	mov	eax, dword ptr [rbx]
	mov	dword ptr [r14], eax
	mov	eax, dword ptr [rbx + 4]
	mov	dword ptr [r14 + 4], eax
	mov	eax, dword ptr [rbx + 8]
	mov	dword ptr [r14 + 8], eax
	mov	eax, dword ptr [rbx + 0xc]
	mov	dword ptr [r14 + 0xc], eax
	mov	rax, r14
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	ret	
	.section	.text
	.align	16
	#Procedure 0x402ec2
	.globl sub_402ec2
	.type sub_402ec2, @function
sub_402ec2:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x402ed0
	.globl md5_read_ctx
	.type md5_read_ctx, @function
md5_read_ctx:

	mov	eax, dword ptr [rdi]
	mov	dword ptr [rsi], eax
	mov	eax, dword ptr [rdi + 4]
	mov	dword ptr [rsi + 4], eax
	mov	eax, dword ptr [rdi + 8]
	mov	dword ptr [rsi + 8], eax
	mov	eax, dword ptr [rdi + 0xc]
	mov	dword ptr [rsi + 0xc], eax
	mov	rax, rsi
	ret	
	.section	.text
	.align	16
	#Procedure 0x402eea
	.globl sub_402eea
	.type sub_402eea, @function
sub_402eea:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x402ef0

	.globl md5_process_bytes
	.type md5_process_bytes, @function
md5_process_bytes:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	push	rax
	mov	r14, rdx
	mov	r12, rsi
	mov	r15, rdi
	mov	ebx, dword ptr [r14 + 0x18]
	test	rbx, rbx
	je	.label_198
	mov	r13d, 0x80
	sub	r13, rbx
	cmp	r13, r12
	cmova	r13, r12
	lea	rdi, [r14 + rbx + 0x1c]
	mov	rsi, r15
	mov	rdx, r13
	call	memcpy
	add	rbx, r13
	mov	dword ptr [r14 + 0x18], ebx
	cmp	ebx, 0x41
	jb	.label_197
	lea	rbp, [r14 + 0x1c]
	mov	esi, ebx
	and	esi, 0xffffffc0
	mov	rdi, rbp
	mov	rdx, r14
	call	md5_process_block
	mov	edx, dword ptr [r14 + 0x18]
	and	edx, 0x3f
	mov	dword ptr [r14 + 0x18], edx
	and	rbx, 0xffffffffffffffc0
	add	rbx, rbp
	mov	rdi, rbp
	mov	rsi, rbx
	call	memcpy
.label_197:
	add	r15, r13
	sub	r12, r13
.label_198:
	cmp	r12, 0x40
	jb	.label_195
	mov	rbx, r12
	and	rbx, 0xffffffffffffffc0
	mov	rdi, r15
	mov	rsi, rbx
	mov	rdx, r14
	call	md5_process_block
	add	r15, rbx
	and	r12d, 0x3f
.label_195:
	test	r12, r12
	je	.label_199
	mov	ebx, dword ptr [r14 + 0x18]
	lea	rdi, [r14 + rbx + 0x1c]
	mov	rsi, r15
	mov	rdx, r12
	call	memcpy
	add	rbx, r12
	cmp	rbx, 0x40
	jb	.label_196
	lea	rbp, [r14 + 0x1c]
	mov	esi, 0x40
	mov	rdi, rbp
	mov	rdx, r14
	call	md5_process_block
	add	rbx, -0x40
	lea	rsi, [r14 + 0x5c]
	mov	rdi, rbp
	mov	rdx, rbx
	call	memcpy
.label_196:
	mov	dword ptr [r14 + 0x18], ebx
.label_199:
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x402fee
	.globl sub_402fee
	.type sub_402fee, @function
sub_402fee:

	nop	
.label_204:
	cmp	byte ptr [rbx], 0x60
	mov	ecx, OFFSET FLAT:label_200
	mov	eax, OFFSET FLAT:label_201
	jmp	.label_202
	.section	.text
	.align	16
	#Procedure 0x402fff
	.globl sub_402fff
	.type sub_402fff, @function
sub_402fff:

	nop	word ptr cs:[rax + rax]
.label_207:
	movsx	ecx, byte ptr [rax + 1]
	and	ecx, 0xffffffdf
	cmp	ecx, 0x42
	jne	.label_203
	cmp	byte ptr [rax + 2], 0x31
	jne	.label_203
	cmp	byte ptr [rax + 3], 0x38
	jne	.label_203
	cmp	byte ptr [rax + 4], 0x30
	jne	.label_203
	cmp	byte ptr [rax + 5], 0x33
	jne	.label_203
	cmp	byte ptr [rax + 6], 0x30
	jne	.label_203
	cmp	byte ptr [rax + 7], 0
	je	.label_204
.label_203:
	cmp	ebp, 9
	mov	ecx, OFFSET FLAT:label_43
	mov	eax, OFFSET FLAT:label_72
.label_202:
	cmove	rax, rcx
.label_208:
	add	rsp, 8
	pop	rbx
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x403052

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
	jne	.label_208
	call	locale_charset
	movsx	ecx, byte ptr [rax]
	and	ecx, 0xffffffdf
	cmp	ecx, 0x47
	je	.label_207
	cmp	ecx, 0x55
	jne	.label_203
	movsx	ecx, byte ptr [rax + 1]
	and	ecx, 0xffffffdf
	cmp	ecx, 0x54
	jne	.label_203
	movsx	ecx, byte ptr [rax + 2]
	and	ecx, 0xffffffdf
	cmp	ecx, 0x46
	jne	.label_203
	cmp	byte ptr [rax + 3], 0x2d
	jne	.label_203
	cmp	byte ptr [rax + 4], 0x38
	jne	.label_203
	cmp	byte ptr [rax + 5], 0
	jne	.label_203
	cmp	byte ptr [rbx], 0x60
	mov	ecx, OFFSET FLAT:label_205
	mov	eax, OFFSET FLAT:label_206
	jmp	.label_202
	.section	.text
	.align	16
	#Procedure 0x4030c0

	.globl version_etc
	.type version_etc, @function
version_etc:
	sub	rsp, 0xd8
	test	al, al
	je	.label_209
	movaps	xmmword ptr [rsp + 0x50], xmm0
	movaps	xmmword ptr [rsp + 0x60], xmm1
	movaps	xmmword ptr [rsp + 0x70], xmm2
	movaps	xmmword ptr [rsp + 0x80], xmm3
	movaps	xmmword ptr [rsp + 0x90], xmm4
	movaps	xmmword ptr [rsp + 0xa0], xmm5
	movaps	xmmword ptr [rsp + 0xb0], xmm6
	movaps	xmmword ptr [rsp + 0xc0], xmm7
.label_209:
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
	.section	.text
	.align	16
	#Procedure 0x403143
	.globl sub_403143
	.type sub_403143, @function
sub_403143:

	nop	word ptr cs:[rax + rax]
.label_210:
	call	abort
	.section	.text
	.align	16
	#Procedure 0x403155
	.globl sub_403155
	.type sub_403155, @function
sub_403155:

	nop	
	.section	.text
	.align	16
	#Procedure 0x403157
	.globl quotearg_n_custom
	.type quotearg_n_custom, @function
quotearg_n_custom:

	sub	rsp, 0x38
	mov	rax, qword ptr [rip + label_9]
	mov	qword ptr [rsp + 0x30], rax
	movups	xmm0, xmmword ptr [rip + label_10]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0, xmmword ptr [rip + label_11]
	movaps	xmmword ptr [rsp + 0x10], xmm0
	movups	xmm0, xmmword ptr [rip + default_quoting_options]
	movaps	xmmword ptr [rsp], xmm0
	mov	dword ptr [rsp], 0xa
	test	rsi, rsi
	je	.label_210
	test	rdx, rdx
	je	.label_210
	mov	qword ptr [rsp + 0x28], rsi
	mov	qword ptr [rsp + 0x30], rdx
	lea	rax, [rsp]
	mov	rdx, -1
	mov	rsi, rcx
	mov	rcx, rax
	call	quotearg_n_options
	add	rsp, 0x38
	ret	
	.section	.text
	.align	16
	#Procedure 0x4031c0
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
	je	.label_211
	mov	qword ptr [rax], rbx
.label_211:
	mov	rax, r14
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
	#Procedure 0x4032ac
	.globl sub_4032ac
	.type sub_4032ac, @function
sub_4032ac:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x4032b0
	.globl quotearg_colon_mem
	.type quotearg_colon_mem, @function
quotearg_colon_mem:

	sub	rsp, 0x38
	mov	rax, rsi
	mov	rdx, rdi
	mov	rcx, qword ptr [rip + label_9]
	mov	qword ptr [rsp + 0x30], rcx
	movups	xmm0, xmmword ptr [rip + label_10]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0, xmmword ptr [rip + label_11]
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
	.section	.text
	.align	16
	#Procedure 0x403304
	.globl sub_403304
	.type sub_403304, @function
sub_403304:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x403310
	.globl quote
	.type quote, @function
quote:

	mov	rax, rdi
	xor	edi, edi
	mov	rdx, -1
	mov	ecx, OFFSET FLAT:quote_quoting_options
	mov	rsi, rax
	jmp	quotearg_n_options
	.section	.text
	.align	16
	#Procedure 0x403329
	.globl sub_403329
	.type sub_403329, @function
sub_403329:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x403330

	.globl digest_file
	.type digest_file, @function
digest_file:
	push	rbp
	push	r15
	push	r14
	push	rbx
	push	rax
	mov	rbx, rdx
	mov	r14, rsi
	mov	r15, rdi
	cmp	byte ptr [r15], 0x2d
	jne	.label_219
	cmp	byte ptr [r15 + 1], 0
	mov	byte ptr [rbx], 0
	jne	.label_213
	mov	byte ptr [rip + have_read_stdin],  1
	mov	bl, 1
	mov	rbp, qword ptr [rip + stdin]
	jmp	.label_214
.label_219:
	mov	byte ptr [rbx], 0
.label_213:
	mov	esi, OFFSET FLAT:label_217
	mov	rdi, r15
	call	fopen_safer
	mov	rbp, rax
	test	rbp, rbp
	je	.label_220
	xor	ebx, ebx
.label_214:
	mov	esi, 2
	mov	rdi, rbp
	call	fadvise
	mov	rdi, rbp
	mov	rsi, r14
	call	md5_stream
	test	eax, eax
	je	.label_215
	call	__errno_location
	mov	ebx, dword ptr [rax]
	xor	r14d, r14d
	xor	edi, edi
	mov	esi, 3
	mov	rdx, r15
	call	quotearg_n_style_colon
	mov	rcx, rax
	xor	edi, edi
	mov	edx, OFFSET FLAT:label_216
	xor	eax, eax
	mov	esi, ebx
	call	error
	cmp	rbp, qword ptr [rip + stdin]
	je	.label_212
	mov	rdi, rbp
	call	rpl_fclose
	xor	r14d, r14d
	jmp	.label_212
.label_220:
	mov	bpl, byte ptr [rip + ignore_missing]
	call	__errno_location
	cmp	bpl, 1
	jne	.label_218
	cmp	dword ptr [rax], 2
	jne	.label_218
	mov	byte ptr [rbx], 1
	mov	r14b, 1
	jmp	.label_212
.label_215:
	mov	r14b, 1
	test	bl, bl
	jne	.label_212
	mov	rdi, rbp
	call	rpl_fclose
	test	eax, eax
	je	.label_212
	call	__errno_location
.label_218:
	mov	ebx, dword ptr [rax]
	xor	r14d, r14d
	xor	edi, edi
	mov	esi, 3
	mov	rdx, r15
	call	quotearg_n_style_colon
	mov	rcx, rax
	xor	edi, edi
	mov	edx, OFFSET FLAT:label_216
	xor	eax, eax
	mov	esi, ebx
	call	error
.label_212:
	mov	eax, r14d
	add	rsp, 8
	pop	rbx
	pop	r14
	pop	r15
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x403446
	.globl sub_403446
	.type sub_403446, @function
sub_403446:

	nop	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x403450

	.globl rpl_fflush
	.type rpl_fflush, @function
rpl_fflush:
	push	rbx
	mov	rbx, rdi
	test	rbx, rbx
	je	.label_221
	mov	rdi, rbx
	call	__freading
	test	eax, eax
	je	.label_221
	test	byte ptr [rbx + 1], 1
	je	.label_221
	xor	esi, esi
	mov	edx, 1
	mov	rdi, rbx
	call	rpl_fseeko
.label_221:
	mov	rdi, rbx
	pop	rbx
	jmp	fflush
	.section	.text
	.align	16
	#Procedure 0x403483
	.globl sub_403483
	.type sub_403483, @function
sub_403483:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x403490
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
	.section	.text
	.align	16
	#Procedure 0x403551
	.globl sub_403551
	.type sub_403551, @function
sub_403551:

	nop	word ptr cs:[rax + rax]
.label_222:
	call	xalloc_die
	.section	.text
	.align	16
	#Procedure 0x403565
	.globl sub_403565
	.type sub_403565, @function
sub_403565:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x403573
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
	je	.label_223
	test	r15, r15
	je	.label_222
.label_223:
	mov	rdi, r15
	mov	rsi, r14
	mov	rdx, rbx
	call	memcpy
	mov	rax, r15
	pop	rbx
	pop	r14
	pop	r15
	ret	
	.section	.text
	.align	16
	#Procedure 0x4035b0
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
	.section	.text
	.align	16
	#Procedure 0x4035c8
	.globl sub_4035c8
	.type sub_4035c8, @function
sub_4035c8:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4035d0
	.globl set_quoting_style
	.type set_quoting_style, @function
set_quoting_style:

	test	rdi, rdi
	mov	eax, OFFSET FLAT:default_quoting_options
	cmovne	rax, rdi
	mov	dword ptr [rax], esi
	ret	
	.section	.text
	.align	16
	#Procedure 0x4035df
	.globl sub_4035df
	.type sub_4035df, @function
sub_4035df:

	nop	
	.section	.text
	.align	16
	#Procedure 0x4035e0

	.globl fadvise
	.type fadvise, @function
fadvise:
	push	rbx
	mov	ebx, esi
	test	rdi, rdi
	je	.label_224
	call	fileno
	xor	esi, esi
	xor	edx, edx
	mov	edi, eax
	mov	ecx, ebx
	pop	rbx
	jmp	posix_fadvise
.label_224:
	pop	rbx
	ret	
	.section	.text
	.align	16
	#Procedure 0x4035fd
	.globl sub_4035fd
	.type sub_4035fd, @function
sub_4035fd:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x403600
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
	.section	.text
	.align	16
	#Procedure 0x403675
	.globl sub_403675
	.type sub_403675, @function
sub_403675:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x403680

	.globl hard_locale
	.type hard_locale, @function
hard_locale:
	push	rbx
	xor	esi, esi
	call	setlocale
	mov	bl, 1
	test	rax, rax
	je	.label_226
	cmp	byte ptr [rax], 0x43
	jne	.label_228
	cmp	byte ptr [rax + 1], 0
	je	.label_225
.label_228:
	mov	esi, OFFSET FLAT:label_227
	mov	rdi, rax
	call	strcmp
	test	eax, eax
	jne	.label_226
.label_225:
	xor	ebx, ebx
.label_226:
	mov	eax, ebx
	pop	rbx
	ret	
	.section	.text
	.align	16
	#Procedure 0x4036b1
	.globl sub_4036b1
	.type sub_4036b1, @function
sub_4036b1:

	nop	word ptr cs:[rax + rax]
.label_230:
	mov	rdi, rbx
	call	fileno
	mov	edi, eax
	mov	rsi, rbp
	mov	edx, r14d
	call	lseek
	mov	rcx, rax
	mov	eax, 0xffffffff
	cmp	rcx, -1
	je	.label_229
	and	byte ptr [rbx], 0xef
	mov	qword ptr [rbx + 0x90], rcx
	xor	eax, eax
.label_229:
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x4036f4
	.globl sub_4036f4
	.type sub_4036f4, @function
sub_4036f4:

	nop	
	.section	.text
	.align	16
	#Procedure 0x4036f6

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
	jne	.label_231
	mov	rax, qword ptr [rbx + 0x28]
	cmp	rax, qword ptr [rbx + 0x20]
	jne	.label_231
	cmp	qword ptr [rbx + 0x48], 0
	je	.label_230
.label_231:
	mov	rdi, rbx
	mov	rsi, rbp
	mov	edx, r14d
	pop	rbx
	pop	r14
	pop	rbp
	jmp	fseeko
.label_232:
	call	abort
	.section	.text
	.align	16
	#Procedure 0x403735
	.globl sub_403735
	.type sub_403735, @function
sub_403735:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x403740

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
	je	.label_232
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
.label_236:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_237
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
	mov	rdi, qword ptr [rip + file_name]
	test	rdi, rdi
	mov	ebp, dword ptr [rbp]
	jne	.label_234
	xor	edi, edi
	mov	edx, OFFSET FLAT:label_216
	xor	eax, eax
	mov	esi, ebp
	mov	rcx, rbx
	call	error
	mov	edi, dword ptr [rip + exit_failure]
	call	_exit
	.section	.text
	.align	16
	#Procedure 0x403811

	.globl close_stdout
	.type close_stdout, @function
close_stdout:
	push	rbp
	push	rbx
	push	rax
	mov	rdi, qword ptr [rip + stdout]
	call	close_stream
	test	eax, eax
	je	.label_233
	mov	bl, byte ptr [rip + ignore_EPIPE]
	call	__errno_location
	mov	rbp, rax
	cmp	bl, 0
	je	.label_236
	cmp	dword ptr [rbp], 0x20
	jne	.label_236
.label_233:
	mov	rdi, qword ptr [rip + stderr]
	call	close_stream
	test	eax, eax
	jne	.label_235
	add	rsp, 8
	pop	rbx
	pop	rbp
	ret	
.label_235:
	mov	edi, dword ptr [rip + exit_failure]
	call	_exit
.label_234:
	call	quotearg_colon
	mov	rcx, rax
	xor	edi, edi
	mov	edx, OFFSET FLAT:label_238
	xor	eax, eax
	mov	esi, ebp
	mov	r8, rbx
	call	error
	mov	edi, dword ptr [rip + exit_failure]
	call	_exit
	nop	word ptr cs:[rax + rax]
.label_240:
	mov	rdi, rbx
	pop	rbx
	pop	r14
	pop	rbp
	jmp	fclose
	.section	.text
	.align	16
	#Procedure 0x40389c
	.globl sub_40389c
	.type sub_40389c, @function
sub_40389c:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4038a8

	.globl rpl_fclose
	.type rpl_fclose, @function
rpl_fclose:
	push	rbp
	push	r14
	push	rbx
	mov	rbx, rdi
	call	fileno
	test	eax, eax
	js	.label_240
	mov	rdi, rbx
	call	__freading
	test	eax, eax
	je	.label_239
	mov	rdi, rbx
	call	fileno
	xor	esi, esi
	mov	edx, 1
	mov	edi, eax
	call	lseek
	cmp	rax, -1
	je	.label_240
.label_239:
	mov	rdi, rbx
	call	rpl_fflush
	test	eax, eax
	je	.label_240
	call	__errno_location
	mov	r14, rax
	mov	ebp, dword ptr [r14]
	mov	rdi, rbx
	call	fclose
	test	ebp, ebp
	je	.label_241
	mov	dword ptr [r14], ebp
	mov	eax, 0xffffffff
.label_241:
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x403910

	.globl quotearg_colon
	.type quotearg_colon, @function
quotearg_colon:
	sub	rsp, 0x38
	mov	rax, rdi
	mov	rcx, qword ptr [rip + label_9]
	mov	qword ptr [rsp + 0x30], rcx
	movups	xmm0, xmmword ptr [rip + label_10]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0, xmmword ptr [rip + label_11]
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
	.section	.text
	.align	16
	#Procedure 0x403965
	.globl sub_403965
	.type sub_403965, @function
sub_403965:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x403970
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
	je	.label_242
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
.label_242:
	call	abort
	.section	.text
	.align	16
	#Procedure 0x4039dc
	.globl sub_4039dc
	.type sub_4039dc, @function
sub_4039dc:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x4039e0

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
	je	.label_243
	test	r15, r15
	je	.label_244
.label_243:
	mov	rdi, r15
	mov	rsi, r14
	mov	rdx, rbx
	call	memcpy
	mov	rax, r15
	pop	rbx
	pop	r14
	pop	r15
	ret	
.label_244:
	call	xalloc_die
	.section	.text
	.align	16
	#Procedure 0x403a1c
	.globl sub_403a1c
	.type sub_403a1c, @function
sub_403a1c:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x403a20
	.globl fdadvise
	.type fdadvise, @function
fdadvise:

	jmp	posix_fadvise
	.section	.text
	.align	16
	#Procedure 0x403a25
	.globl sub_403a25
	.type sub_403a25, @function
sub_403a25:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x403a30
	.globl close_stdout_set_ignore_EPIPE
	.type close_stdout_set_ignore_EPIPE, @function
close_stdout_set_ignore_EPIPE:

	mov	byte ptr [rip + ignore_EPIPE],  dil
	ret	
	.section	.text
	.align	16
	#Procedure 0x403a38
	.globl sub_403a38
	.type sub_403a38, @function
sub_403a38:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x403a40
	.globl x2realloc
	.type x2realloc, @function
x2realloc:

	push	rbx
	mov	rax, qword ptr [rsi]
	test	rdi, rdi
	je	.label_245
	movabs	rcx, 0x5555555555555554
	cmp	rax, rcx
	jae	.label_248
	mov	rbx, rax
	shr	rbx, 1
	add	rbx, rax
	inc	rbx
	mov	qword ptr [rsi], rbx
	jne	.label_249
	call	free
	xor	eax, eax
	jmp	.label_246
.label_245:
	test	rax, rax
	mov	ebx, 0x80
	cmovne	rbx, rax
	test	rbx, rbx
	js	.label_247
	mov	qword ptr [rsi], rbx
.label_249:
	mov	rsi, rbx
	call	realloc
	test	rbx, rbx
	je	.label_246
	test	rax, rax
	je	.label_247
.label_246:
	pop	rbx
	ret	
.label_248:
	call	xalloc_die
	.section	.text
	.align	16
	#Procedure 0x403a9f
	.globl sub_403a9f
	.type sub_403a9f, @function
sub_403a9f:

	nop	word ptr cs:[rax + rax]
.label_247:
	call	xalloc_die
	.section	.text
	.align	16
	#Procedure 0x403ab0

	.globl rpl_nl_langinfo
	.type rpl_nl_langinfo, @function
rpl_nl_langinfo:
	lea	eax, [rdi - 0x27d8]
	lea	ecx, [rdi + 0x1d842]
	cmp	eax, 0xc
	cmovb	edi, ecx
	jmp	nl_langinfo
	.section	.text
	.align	16
	#Procedure 0x403ac7
	.globl sub_403ac7
	.type sub_403ac7, @function
sub_403ac7:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x403ad0

	.globl locale_charset
	.type locale_charset, @function
locale_charset:
	push	rax
	mov	edi, 0xe
	call	rpl_nl_langinfo
	test	rax, rax
	mov	ecx, OFFSET FLAT:label_250
	cmovne	rcx, rax
	cmp	byte ptr [rcx], 0
	mov	eax, OFFSET FLAT:label_251
	cmovne	rax, rcx
	pop	rcx
	ret	
	.section	.text
	.align	16
	#Procedure 0x403af5
	.globl sub_403af5
	.type sub_403af5, @function
sub_403af5:

	nop	word ptr cs:[rax + rax]
.label_551:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_252
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
	jmp	.label_253
	.section	.text
	.align	16
	#Procedure 0x403b42

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
	je	.label_255
	mov	edx, OFFSET FLAT:label_263
	xor	eax, eax
	mov	rdi, r14
	mov	r8, rbx
	call	__fprintf_chk
	jmp	.label_268
.label_255:
	mov	edx, OFFSET FLAT:label_269
	xor	eax, eax
	mov	rdi, r14
	mov	rcx, rbx
	mov	r8, r9
	call	__fprintf_chk
.label_268:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_257
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
	mov	esi, OFFSET FLAT:label_265
	mov	edx, 5
	call	dcgettext
	mov	rdi, rax
	mov	rsi, r14
	call	fputs_unlocked
	cmp	r12, 9
	ja	.label_260
	jmp	qword ptr [(r12 * 8) + label_261]
.label_547:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_264
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
.label_546:
	add	rsp, 8
	jmp	.label_253
.label_260:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_262
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
	jmp	.label_253
.label_552:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_266
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
	jmp	.label_253
.label_553:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_270
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
	jmp	.label_253
.label_549:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_256
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
.label_548:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_254
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
.label_554:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_267
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
.label_253:
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	ret	
	.section	.text
	.align	16
	#Procedure 0x403dca
	.globl sub_403dca
	.type sub_403dca, @function
sub_403dca:

	nop	dword ptr [rax + rax]
.label_555:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_258
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
	jmp	.label_253
.label_550:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_259
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
	jmp	.label_253
	.section	.text
	.align	16
	#Procedure 0x403e60
	.globl get_quoting_style
	.type get_quoting_style, @function
get_quoting_style:

	test	rdi, rdi
	mov	eax, OFFSET FLAT:default_quoting_options
	cmovne	rax, rdi
	mov	eax, dword ptr [rax]
	ret	
	.section	.text
	.align	16
	#Procedure 0x403e6f
	.globl sub_403e6f
	.type sub_403e6f, @function
sub_403e6f:

	nop	
	.section	.text
	.align	16
	#Procedure 0x403e70
	.globl md5_init_ctx
	.type md5_init_ctx, @function
md5_init_ctx:

	movaps	xmm0, xmmword ptr [rip + label_271]
	movups	xmmword ptr [rdi], xmm0
	mov	dword ptr [rdi + 0x14], 0
	mov	dword ptr [rdi + 0x10], 0
	mov	dword ptr [rdi + 0x18], 0
	ret	
	.section	.text
	.align	16
	#Procedure 0x403e90
	.globl close_stdout_set_file_name
	.type close_stdout_set_file_name, @function
close_stdout_set_file_name:

	mov	qword ptr [rip + file_name],  rdi
	ret	
	.section	.text
	.align	16
	#Procedure 0x403e98
	.globl sub_403e98
	.type sub_403e98, @function
sub_403e98:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x403ea0
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
	.section	.text
	.align	16
	#Procedure 0x403ed6
	.globl sub_403ed6
	.type sub_403ed6, @function
sub_403ed6:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x403ee0

	.globl version_etc_va
	.type version_etc_va, @function
version_etc_va:
	movsxd	r10, dword ptr [r8]
	cmp	r10, 0x28
	ja	.label_282
	mov	r9, r10
	add	r9, qword ptr [r8 + 0x10]
	lea	r10d, [r10 + 8]
	mov	dword ptr [r8], r10d
	jmp	.label_284
.label_282:
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
.label_284:
	sub	rsp, 0x58
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp], rax
	xor	r9d, r9d
	test	rax, rax
	je	.label_273
	cmp	r10d, 0x29
	jae	.label_281
	movsxd	r9, r10d
	add	r9, qword ptr [r8 + 0x10]
	add	r10d, 8
	mov	dword ptr [r8], r10d
	jmp	.label_283
.label_281:
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
.label_283:
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp + 8], rax
	mov	r9d, 1
	test	rax, rax
	je	.label_273
	cmp	r10d, 0x29
	jae	.label_279
	movsxd	r9, r10d
	add	r9, qword ptr [r8 + 0x10]
	add	r10d, 8
	mov	dword ptr [r8], r10d
	jmp	.label_280
.label_279:
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
.label_280:
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp + 0x10], rax
	mov	r9d, 2
	test	rax, rax
	je	.label_273
	cmp	r10d, 0x29
	jae	.label_277
	movsxd	r9, r10d
	add	r9, qword ptr [r8 + 0x10]
	add	r10d, 8
	mov	dword ptr [r8], r10d
	jmp	.label_278
.label_277:
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
.label_278:
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp + 0x18], rax
	mov	r9d, 3
	test	rax, rax
	je	.label_273
	cmp	r10d, 0x29
	jae	.label_275
	movsxd	r9, r10d
	add	r9, qword ptr [r8 + 0x10]
	add	r10d, 8
	mov	dword ptr [r8], r10d
	jmp	.label_276
.label_275:
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
.label_276:
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp + 0x20], rax
	mov	r9d, 4
	test	rax, rax
	je	.label_273
	cmp	r10d, 0x29
	jae	.label_272
	movsxd	r9, r10d
	add	r9, qword ptr [r8 + 0x10]
	add	r10d, 8
	mov	dword ptr [r8], r10d
	jmp	.label_274
.label_272:
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
.label_274:
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp + 0x28], rax
	mov	r9d, 5
	test	rax, rax
	je	.label_273
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp + 0x30], rax
	mov	r9d, 6
	test	rax, rax
	je	.label_273
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp + 0x38], rax
	mov	r9d, 7
	test	rax, rax
	je	.label_273
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp + 0x40], rax
	mov	r9d, 8
	test	rax, rax
	je	.label_273
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp + 0x48], rax
	cmp	rax, 1
	mov	r9d, 9
	sbb	r9, -1
.label_273:
	lea	r8, [rsp]
	call	version_etc_arn
	add	rsp, 0x58
	ret	
	.section	.text
	.align	16
	#Procedure 0x4040c2
	.globl sub_4040c2
	.type sub_4040c2, @function
sub_4040c2:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4040d0

	.globl xalloc_die
	.type xalloc_die, @function
xalloc_die:
	push	rbx
	mov	ebx, dword ptr [rip + exit_failure]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_285
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	xor	esi, esi
	mov	edx, OFFSET FLAT:label_216
	xor	eax, eax
	mov	edi, ebx
	call	error
	call	abort
	.section	.text
	.align	16
	#Procedure 0x404100
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
	.section	.text
	.align	16
	#Procedure 0x404133
	.globl sub_404133
	.type sub_404133, @function
sub_404133:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404140
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
	je	.label_286
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
.label_286:
	call	abort
	.section	.text
	.align	16
	#Procedure 0x4041a1
	.globl sub_4041a1
	.type sub_4041a1, @function
sub_4041a1:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4041b0
	.globl md5_buffer
	.type md5_buffer, @function
md5_buffer:

	push	r15
	push	r14
	push	rbx
	sub	rsp, 0xa0
	mov	r14, rdx
	movaps	xmm0, xmmword ptr [rip + label_271]
	movaps	xmmword ptr [rsp], xmm0
	mov	dword ptr [rsp + 0x14], 0
	mov	dword ptr [rsp + 0x10], 0
	mov	dword ptr [rsp + 0x18], 0
	lea	rdx, [rsp]
	call	md5_process_bytes
	mov	eax, dword ptr [rsp + 0x18]
	cmp	rax, 0x38
	mov	ecx, 0x10
	mov	ebx, 0x20
	cmovb	rbx, rcx
	mov	ecx, dword ptr [rsp + 0x10]
	add	ecx, eax
	mov	dword ptr [rsp + 0x10], ecx
	mov	edx, dword ptr [rsp + 0x14]
	jae	.label_287
	inc	edx
	mov	dword ptr [rsp + 0x14], edx
.label_287:
	lea	esi, [rcx*8]
	lea	r15, [rsp + 0x1c]
	mov	dword ptr [rsp + rbx*4 + 0x14], esi
	shld	edx, ecx, 3
	mov	dword ptr [rsp + rbx*4 + 0x18], edx
	lea	rdi, [rsp + rax + 0x1c]
	lea	rdx, [rbx*4 - 8]
	sub	rdx, rax
	mov	esi, OFFSET FLAT:fillbuf
	call	memcpy
	shl	rbx, 2
	lea	rdx, [rsp]
	mov	rdi, r15
	mov	rsi, rbx
	call	md5_process_block
	movaps	xmm0, xmmword ptr [rsp]
	movups	xmmword ptr [r14], xmm0
	mov	rax, r14
	add	rsp, 0xa0
	pop	rbx
	pop	r14
	pop	r15
	ret	
	.section	.text
	.align	16
	#Procedure 0x404274
	.globl sub_404274
	.type sub_404274, @function
sub_404274:

	nop	word ptr cs:[rax + rax]
.label_289:
	mov	ecx, 1
.label_288:
	mov	rdi, rcx
	mov	rsi, rax
	jmp	calloc
	.section	.text
	.align	16
	#Procedure 0x404290
	.globl sub_404290
	.type sub_404290, @function
sub_404290:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404295

	.globl rpl_calloc
	.type rpl_calloc, @function
rpl_calloc:
	test	rdi, rdi
	mov	eax, 1
	je	.label_289
	test	rsi, rsi
	mov	ecx, 1
	je	.label_288
	mov	rax, rsi
	imul	rax, rdi
	xor	edx, edx
	div	rsi
	cmp	rax, rdi
	mov	rax, rsi
	mov	rcx, rdi
	je	.label_288
	push	rax
	call	__errno_location
	mov	dword ptr [rax], 0xc
	xor	eax, eax
	pop	rcx
	ret	
	.section	.text
	.align	16
	#Procedure 0x4042d0
	.globl set_custom_quoting
	.type set_custom_quoting, @function
set_custom_quoting:

	test	rdi, rdi
	mov	eax, OFFSET FLAT:default_quoting_options
	cmovne	rax, rdi
	mov	dword ptr [rax], 0xa
	test	rsi, rsi
	je	.label_290
	test	rdx, rdx
	je	.label_290
	mov	qword ptr [rax + 0x28], rsi
	mov	qword ptr [rax + 0x30], rdx
	ret	
.label_290:
	push	rax
	call	abort
	.section	.text
	.align	16
	#Procedure 0x4042fb
	.globl sub_4042fb
	.type sub_4042fb, @function
sub_4042fb:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404300

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
	jne	.label_292
	test	eax, eax
	sete	cl
	neg	eax
	sbb	ebx, ebx
	test	r14, r14
	jne	.label_291
	test	cl, cl
	jne	.label_291
	call	__errno_location
	xor	ecx, ecx
	cmp	dword ptr [rax], 9
	mov	ebx, 0xffffffff
	cmove	ebx, ecx
	jmp	.label_291
.label_292:
	mov	ebx, 0xffffffff
	test	eax, eax
	jne	.label_291
	call	__errno_location
	mov	dword ptr [rax], 0
.label_291:
	mov	eax, ebx
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x404360
	.globl quotearg_char_mem
	.type quotearg_char_mem, @function
quotearg_char_mem:

	sub	rsp, 0x38
	mov	ecx, edx
	mov	r8, rsi
	mov	rdx, rdi
	mov	rsi, qword ptr [rip + label_9]
	mov	qword ptr [rsp + 0x30], rsi
	movups	xmm0, xmmword ptr [rip + label_10]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0, xmmword ptr [rip + label_11]
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
	.section	.text
	.align	16
	#Procedure 0x4043ce
	.globl sub_4043ce
	.type sub_4043ce, @function
sub_4043ce:

	nop	
	.section	.text
	.align	16
	#Procedure 0x4043d0

	.globl dup_safer
	.type dup_safer, @function
dup_safer:
	xor	esi, esi
	mov	edx, 3
	xor	eax, eax
	jmp	rpl_fcntl
	.section	.text
	.align	16
	#Procedure 0x4043de
	.globl sub_4043de
	.type sub_4043de, @function
sub_4043de:

	nop	
	.section	.text
	.align	16
	#Procedure 0x4043e0
	.globl set_quoting_flags
	.type set_quoting_flags, @function
set_quoting_flags:

	test	rdi, rdi
	mov	ecx, OFFSET FLAT:default_quoting_options
	cmovne	rcx, rdi
	mov	eax, dword ptr [rcx + 4]
	mov	dword ptr [rcx + 4], esi
	ret	
	.section	.text
	.align	16
	#Procedure 0x4043f3
	.globl sub_4043f3
	.type sub_4043f3, @function
sub_4043f3:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404400
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
	.section	.text
	.align	16
	#Procedure 0x404418
	.globl sub_404418
	.type sub_404418, @function
sub_404418:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404420
	.globl quotearg_free
	.type quotearg_free, @function
quotearg_free:

	push	r15
	push	r14
	push	rbx
	mov	r14, qword ptr [rip + slotvec]
	cmp	dword ptr [rip + nslots],  2
	jl	.label_293
	lea	r15, [r14 + 0x18]
	mov	ebx, 1
	nop	
.label_295:
	mov	rdi, qword ptr [r15]
	call	free
	inc	rbx
	movsxd	rax, dword ptr [rip + nslots]
	add	r15, 0x10
	cmp	rbx, rax
	jl	.label_295
.label_293:
	mov	rdi, qword ptr [r14 + 8]
	mov	eax, OFFSET FLAT:slot0
	cmp	rdi, rax
	je	.label_296
	call	free
	mov	qword ptr [rip + slotvec0],  0x100
	mov	qword ptr [rip + label_297], OFFSET FLAT:slot0
.label_296:
	mov	eax, OFFSET FLAT:slotvec0
	cmp	r14, rax
	je	.label_294
	mov	rdi, r14
	call	free
	mov	qword ptr [rip + slotvec], OFFSET FLAT:slotvec0
.label_294:
	mov	dword ptr [rip + nslots],  1
	pop	rbx
	pop	r14
	pop	r15
	ret	
	.section	.text
	.align	16
	#Procedure 0x4044b1
	.globl sub_4044b1
	.type sub_4044b1, @function
sub_4044b1:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4044c0

	.globl xrealloc
	.type xrealloc, @function
xrealloc:
	push	rbx
	mov	rbx, rsi
	test	rdi, rdi
	je	.label_298
	test	rbx, rbx
	jne	.label_298
	call	free
	xor	eax, eax
	pop	rbx
	ret	
.label_300:
	call	xalloc_die
.label_298:
	mov	rsi, rbx
	call	realloc
	test	rbx, rbx
	je	.label_299
	test	rax, rax
	je	.label_300
.label_299:
	pop	rbx
	ret	
	.section	.text
	.align	16
	#Procedure 0x4044f0
	.globl xnrealloc
	.type xnrealloc, @function
xnrealloc:

	push	rbx
	mov	rbx, rdx
	movabs	rax, 0x7fffffffffffffff
	xor	edx, edx
	div	rbx
	cmp	rax, rsi
	jb	.label_301
	imul	rbx, rsi
	test	rdi, rdi
	je	.label_302
	test	rbx, rbx
	jne	.label_302
	call	free
	xor	eax, eax
	pop	rbx
	ret	
.label_302:
	mov	rsi, rbx
	call	realloc
	test	rbx, rbx
	je	.label_303
	test	rax, rax
	je	.label_301
.label_303:
	pop	rbx
	ret	
.label_301:
	call	xalloc_die
	.section	.text
	.align	16
	#Procedure 0x404538
	.globl sub_404538
	.type sub_404538, @function
sub_404538:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404540
	.globl quote_n_mem
	.type quote_n_mem, @function
quote_n_mem:

	mov	ecx, OFFSET FLAT:quote_quoting_options
	jmp	quotearg_n_options
	.section	.text
	.align	16
	#Procedure 0x40454a
	.globl sub_40454a
	.type sub_40454a, @function
sub_40454a:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404550
	.globl xcalloc
	.type xcalloc, @function
xcalloc:

	push	rax
	movabs	rax, 0x7fffffffffffffff
	xor	edx, edx
	div	rsi
	cmp	rax, rdi
	jb	.label_304
	call	rpl_calloc
	test	rax, rax
	je	.label_304
	pop	rcx
	ret	
.label_304:
	call	xalloc_die
	.section	.text
	.align	16
	#Procedure 0x404576
	.globl sub_404576
	.type sub_404576, @function
sub_404576:

	nop	word ptr cs:[rax + rax]
.label_306:
	call	xalloc_die
	.section	.text
	.align	16
	#Procedure 0x404585
	.globl sub_404585
	.type sub_404585, @function
sub_404585:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40458f
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
	je	.label_305
	test	r14, r14
	je	.label_306
.label_305:
	xor	esi, esi
	mov	rdi, r14
	mov	rdx, rbx
	call	memset
	mov	rax, r14
	add	rsp, 8
	pop	rbx
	pop	r14
	ret	
.label_307:
	call	abort
	.section	.text
	.align	16
	#Procedure 0x4045c5
	.globl sub_4045c5
	.type sub_4045c5, @function
sub_4045c5:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4045cd
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
	je	.label_307
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
	.section	.text
	.align	16
	#Procedure 0x404630

	.globl main
	.type main, @function
main:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0xe8
	mov	rbp, rsi
	mov	r15d, edi
	mov	r14d, 3
	mov	rdi, qword ptr [rbp]
	call	set_program_name
	mov	edi, 6
	mov	esi, OFFSET FLAT:label_250
	call	setlocale
	mov	edi, OFFSET FLAT:label_433
	mov	esi, OFFSET FLAT:label_434
	call	bindtextdomain
	mov	edi, OFFSET FLAT:label_433
	call	textdomain
	mov	edi, OFFSET FLAT:close_stdout
	call	atexit
	mov	rdi, qword ptr [rip + stdout]
	xor	eax, eax
	mov	qword ptr [rsp + 0x70], rax
	xor	esi, esi
	mov	edx, 1
	xor	ecx, ecx
	call	setvbuf
	mov	ecx, 0xffffffff
	xor	eax, eax
	mov	qword ptr [rsp + 0x18], rax
	jmp	.label_440
.label_409:
	mov	byte ptr [rip + quiet],  0
	mov	ecx, ebx
	nop	dword ptr [rax + rax]
.label_440:
	mov	ebx, ecx
	mov	edx, OFFSET FLAT:label_444
	mov	ecx, OFFSET FLAT:long_options
	xor	r8d, r8d
	mov	edi, r15d
	mov	rsi, rbp
	call	getopt_long
	cmp	eax, 0x61
	jle	.label_447
	add	eax, -0x62
	cmp	eax, 0x22
	ja	.label_348
	mov	ecx, 1
	jmp	qword ptr [(rax * 8) + label_392]
.label_584:
	mov	al, 1
	mov	qword ptr [rsp + 0x18], rax
	mov	ecx, ebx
	jmp	.label_440
.label_585:
	xor	ecx, ecx
	jmp	.label_440
.label_586:
	mov	byte ptr [rip + status_only],  0
	mov	byte ptr [rip + warn],  1
	jmp	.label_409
.label_587:
	mov	byte ptr [rip + delim],  1
	mov	ecx, ebx
	jmp	.label_440
.label_588:
	mov	byte ptr [rip + ignore_missing],  1
	mov	ecx, ebx
	jmp	.label_440
.label_589:
	mov	byte ptr [rip + status_only],  1
	mov	byte ptr [rip + warn],  0
	jmp	.label_409
.label_590:
	mov	byte ptr [rip + status_only],  0
	mov	byte ptr [rip + warn],  0
	mov	byte ptr [rip + quiet],  1
	mov	ecx, ebx
	jmp	.label_440
.label_591:
	mov	byte ptr [rip + strict],  1
	mov	ecx, ebx
	jmp	.label_440
.label_592:
	mov	al, 1
	mov	qword ptr [rsp + 0x70], rax
	mov	ecx, 1
	jmp	.label_440
.label_447:
	cmp	eax, -1
	jne	.label_471
	mov	byte ptr [rip + min_digest_line_length],  1
	mov	byte ptr [rip + digest_hex_bytes],  1
	mov	rax, qword ptr [rsp + 0x70]
	test	al, al
	sete	al
	test	ebx, ebx
	jne	.label_474
	test	al, al
	je	.label_467
.label_474:
	mov	rcx, qword ptr [rsp + 0x18]
	test	cl, cl
	je	.label_482
	mov	cl, byte ptr [rip + delim]
	xor	cl, 1
	test	cl, 1
	je	.label_425
.label_482:
	mov	rcx, qword ptr [rsp + 0x18]
	test	cl, cl
	sete	cl
	or	cl, al
	je	.label_486
	test	ebx, ebx
	js	.label_488
	mov	rax, qword ptr [rsp + 0x18]
	test	al, al
	jne	.label_489
.label_488:
	mov	rax, qword ptr [rsp + 0x18]
	test	al, al
	jne	.label_491
	test	byte ptr [rip + ignore_missing],  1
	jne	.label_492
.label_491:
	mov	rax, qword ptr [rsp + 0x18]
	test	al, al
	jne	.label_494
	test	byte ptr [rip + status_only],  1
	jne	.label_309
.label_494:
	mov	rax, qword ptr [rsp + 0x18]
	test	al, al
	jne	.label_311
	test	byte ptr [rip + warn],  1
	jne	.label_313
.label_311:
	mov	rax, qword ptr [rsp + 0x18]
	test	al, al
	jne	.label_318
	test	byte ptr [rip + quiet],  1
	jne	.label_320
.label_318:
	movzx	eax, byte ptr [rip + strict]
	mov	rcx, qword ptr [rsp + 0x18]
	movzx	ecx, cl
	xor	ecx, 1
	test	eax, ecx
	jne	.label_322
	movsxd	rax, r15d
	lea	rcx, [rbp + rax*8]
	movsxd	rax, dword ptr [rip + optind]
	cmp	eax, r15d
	jne	.label_328
	mov	qword ptr [rcx], OFFSET FLAT:label_331
	add	rcx, 8
.label_328:
	lea	rdx, [rbp + rax*8]
	mov	bpl, 1
	cmp	rdx, rcx
	jae	.label_334
	test	ebx, ebx
	mov	eax, 0x2a
	mov	esi, 0x20
	cmovg	esi, eax
	mov	dword ptr [rsp + 0x94], esi
	mov	byte ptr [rsp + 7], 0x2a
	jg	.label_337
	mov	byte ptr [rsp + 7], 0x20
.label_337:
	neg	r14
	lea	rbx, [rsp + r14 + 0xd3]
	mov	sil, 1
	mov	qword ptr [rsp + 0x38], rcx
	mov	qword ptr [rsp + 0x88], rbx
	jmp	.label_321
.label_485:
	call	__overflow
	jmp	.label_349
.label_455:
	mov	esi, 0x20
	call	__overflow
	jmp	.label_354
.label_459:
	mov	esi, dword ptr [rsp + 0x94]
	call	__overflow
	jmp	.label_357
.label_411:
	mov	esi, 0x5c
	mov	rdi, rax
	call	__overflow
	jmp	.label_359
.label_452:
	mov	esi, 0x5c
	call	__overflow
	jmp	.label_362
	.section	.text
	.align	16
	#Procedure 0x404915
	.globl sub_404915
	.type sub_404915, @function
sub_404915:

	nop	word ptr cs:[rax + rax]
.label_321:
	mov	rax, qword ptr [rsp + 0x18]
	test	al, al
	mov	rbx, qword ptr [rdx]
	mov	dword ptr [rsp + 8], esi
	je	.label_366
	mov	qword ptr [rsp + 0x40], rdx
	cmp	byte ptr [rbx], 0x2d
	jne	.label_413
	cmp	byte ptr [rbx + 1], 0
	je	.label_371
.label_413:
	mov	esi, OFFSET FLAT:label_217
	mov	rdi, rbx
	call	fopen_safer
	mov	rbp, rax
	test	rbp, rbp
	je	.label_381
	mov	qword ptr [rsp + 0x10], rbx
	mov	dword ptr [rsp + 0x5c], 0
	jmp	.label_382
	.section	.text
	.align	16
	#Procedure 0x40496f
	.globl sub_40496f
	.type sub_40496f, @function
sub_40496f:

	nop	
.label_366:
	mov	r14, rdx
	mov	rdi, rbx
	lea	rsi, [rsp + 0xd0]
	lea	rdx, [rsp + 0xb0]
	call	digest_file
	test	al, al
	je	.label_376
	mov	esi, 0x5c
	mov	rdi, rbx
	call	strchr
	test	rax, rax
	jne	.label_394
	mov	esi, 0xa
	mov	rdi, rbx
	call	strchr
	test	rax, rax
	je	.label_400
.label_394:
	mov	r15b, byte ptr [rip + delim]
	xor	r15b, 1
.label_426:
	mov	rax, qword ptr [rsp + 0x70]
	test	al, al
	je	.label_404
	mov	rax, qword ptr [rip + stdout]
	test	r15b, 1
	je	.label_406
	mov	rcx, qword ptr [rax + 0x28]
	cmp	rcx, qword ptr [rax + 0x30]
	jae	.label_411
	lea	rdx, [rcx + 1]
	mov	qword ptr [rax + 0x28], rdx
	mov	byte ptr [rcx], 0x5c
.label_359:
	mov	rsi, qword ptr [rip + stdout]
	mov	edi, OFFSET FLAT:label_165
	call	fputs_unlocked
	mov	rsi, qword ptr [rip + stdout]
	mov	edi, OFFSET FLAT:label_416
	call	fputs_unlocked
	mov	r12, rbx
	mov	al, byte ptr [rbx]
	test	al, al
	mov	rbx, qword ptr [rsp + 0x88]
	je	.label_419
	lea	rbp, [r12 + 1]
	jmp	.label_424
.label_381:
	call	__errno_location
	mov	r14d, dword ptr [rax]
	mov	rdx, rbx
	xor	ebp, ebp
	xor	edi, edi
	mov	esi, 3
	call	quotearg_n_style_colon
	mov	rcx, rax
	xor	edi, edi
	mov	edx, OFFSET FLAT:label_216
	xor	eax, eax
	mov	esi, r14d
	call	error
	jmp	.label_330
.label_376:
	xor	eax, eax
	jmp	.label_436
.label_371:
	mov	byte ptr [rip + have_read_stdin],  1
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_391
	mov	edx, 5
	call	dcgettext
	mov	qword ptr [rsp + 0x10], rax
	mov	al, 1
	mov	dword ptr [rsp + 0x5c], eax
	mov	rbp, qword ptr [rip + stdin]
.label_382:
	mov	qword ptr [rsp + 0x80], 0
	mov	qword ptr [rsp + 0xa8], 0
	xor	ebx, ebx
	xor	eax, eax
	mov	qword ptr [rsp + 0x20], rax
	xor	eax, eax
	mov	qword ptr [rsp + 0x98], rax
	xor	eax, eax
	mov	qword ptr [rsp + 0x68], rax
	xor	eax, eax
	mov	qword ptr [rsp + 0x60], rax
	xor	r13d, r13d
	xor	r15d, r15d
	mov	qword ptr [rsp + 0x28], rbp
	jmp	.label_310
.label_404:
	mov	r12, rbx
	test	r15b, 1
	mov	rbx, qword ptr [rsp + 0x88]
	je	.label_362
	mov	rdi, qword ptr [rip + stdout]
	mov	rax, qword ptr [rdi + 0x28]
	cmp	rax, qword ptr [rdi + 0x30]
	jae	.label_452
	lea	rcx, [rax + 1]
	mov	qword ptr [rdi + 0x28], rcx
	mov	byte ptr [rax], 0x5c
	jmp	.label_362
.label_406:
	mov	edi, OFFSET FLAT:label_165
	mov	rsi, rax
	call	fputs_unlocked
	mov	rsi, qword ptr [rip + stdout]
	mov	edi, OFFSET FLAT:label_416
	call	fputs_unlocked
	mov	rsi, qword ptr [rip + stdout]
	mov	r12, rbx
	mov	rdi, rbx
	call	fputs_unlocked
	mov	rbx, qword ptr [rsp + 0x88]
	jmp	.label_419
.label_473:
	mov	esi, 0xa
	mov	rdi, r14
	call	strchr
	test	rax, rax
	setne	bpl
.label_478:
	mov	rbx, qword ptr [rsp + 0x68]
	mov	rdi, r14
	lea	rsi, [rsp + 0xb0]
	lea	rdx, [rsp + 0xf]
	call	digest_file
	test	al, al
	je	.label_476
	cmp	byte ptr [rsp + 0xf], 0
	je	.label_479
	mov	al, byte ptr [rip + ignore_missing]
	xor	al, 1
	test	al, 1
	je	.label_324
.label_479:
	mov	dword ptr [rsp + 0x78], ebp
	movzx	eax, byte ptr [rip + digest_hex_bytes]
	mov	r15, rax
	shl	r15, 4
	cmp	rax, 1
	mov	r12d, 0
	mov	rbx, qword ptr [rsp + 0x60]
	jne	.label_308
	call	__ctype_tolower_loc
	mov	rax, qword ptr [rax]
	xor	r12d, r12d
	nop	dword ptr [rax]
.label_312:
	movzx	edx, byte ptr [r13 + r12*2]
	lea	rcx, [rsp + 0xb0]
	movzx	ecx, byte ptr [rcx + r12]
	mov	rsi, rcx
	shr	rsi, 4
	movsx	esi, byte ptr [rsi + digest_check.bin2hex]
	cmp	dword ptr [rax + rdx*4], esi
	jne	.label_308
	movzx	edx, byte ptr [r13 + r12*2 + 1]
	and	ecx, 0xf
	movsx	ecx, byte ptr [rcx + digest_check.bin2hex]
	cmp	dword ptr [rax + rdx*4], ecx
	jne	.label_308
	inc	r12
	cmp	r12, r15
	jb	.label_312
.label_308:
	inc	rbx
	cmp	r12, r15
	mov	rax, qword ptr [rsp + 0x20]
	jne	.label_315
	mov	al, 1
.label_315:
	mov	rcx, qword ptr [rsp + 0x60]
	cmovne	rcx, rbx
	mov	dl, byte ptr [rip + status_only]
	test	dl, dl
	je	.label_319
	mov	qword ptr [rsp + 0x20], rax
	mov	qword ptr [rsp + 0x60], rcx
	jmp	.label_324
.label_476:
	inc	rbx
	mov	qword ptr [rsp + 0x68], rbx
	mov	al, byte ptr [rip + status_only]
	test	al, al
	mov	r13, qword ptr [rsp + 0x50]
	mov	r15, qword ptr [rsp + 0x48]
	jne	.label_405
	mov	rax, qword ptr [rip + stdout]
	test	bpl, bpl
	je	.label_333
	mov	rcx, qword ptr [rax + 0x28]
	cmp	rcx, qword ptr [rax + 0x30]
	jae	.label_385
	lea	rdx, [rcx + 1]
	mov	qword ptr [rax + 0x28], rdx
	mov	byte ptr [rcx], 0x5c
.label_450:
	mov	al, byte ptr [r14]
	test	al, al
	je	.label_339
	inc	r14
	jmp	.label_341
.label_319:
	cmp	r12, r15
	jne	.label_343
	mov	al, byte ptr [rip + quiet]
	test	al, al
	je	.label_343
	mov	al, 1
	mov	qword ptr [rsp + 0x20], rax
	jmp	.label_324
.label_333:
	mov	rdi, r14
	mov	rsi, rax
	call	fputs_unlocked
	jmp	.label_339
.label_343:
	mov	rax, qword ptr [rip + stdout]
	mov	ecx, dword ptr [rsp + 0x78]
	test	cl, cl
	je	.label_353
	mov	rcx, qword ptr [rax + 0x28]
	cmp	rcx, qword ptr [rax + 0x30]
	jae	.label_355
	lea	rdx, [rcx + 1]
	mov	qword ptr [rax + 0x28], rdx
	mov	byte ptr [rcx], 0x5c
.label_453:
	mov	rbp, qword ptr [rsp + 0x10]
	mov	al, byte ptr [r14]
	test	al, al
	je	.label_358
	inc	r14
	jmp	.label_361
.label_353:
	mov	rdi, r14
	mov	rsi, rax
	call	fputs_unlocked
	mov	rbp, qword ptr [rsp + 0x10]
	jmp	.label_358
.label_389:
	movzx	esi, al
	call	__overflow
	jmp	.label_369
	.section	.text
	.align	16
	#Procedure 0x404d36
	.globl sub_404d36
	.type sub_404d36, @function
sub_404d36:

	nop	word ptr cs:[rax + rax]
.label_341:
	movsx	ecx, al
	cmp	ecx, 0x5c
	je	.label_374
	cmp	ecx, 0xa
	jne	.label_377
	mov	rsi, qword ptr [rip + stdout]
	mov	edi, OFFSET FLAT:label_379
	call	fputs_unlocked
	jmp	.label_369
.label_374:
	mov	rsi, qword ptr [rip + stdout]
	mov	edi, OFFSET FLAT:label_383
	call	fputs_unlocked
	jmp	.label_369
	.section	.text
	.align	16
	#Procedure 0x404d73
	.globl sub_404d73
	.type sub_404d73, @function
sub_404d73:

	nop	word ptr cs:[rax + rax]
.label_377:
	mov	rdi, qword ptr [rip + stdout]
	mov	rcx, qword ptr [rdi + 0x28]
	cmp	rcx, qword ptr [rdi + 0x30]
	jae	.label_389
	lea	rdx, [rcx + 1]
	mov	qword ptr [rdi + 0x28], rdx
	mov	byte ptr [rcx], al
.label_369:
	movzx	eax, byte ptr [r14]
	inc	r14
	test	al, al
	jne	.label_341
.label_339:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_396
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	mov	edi, 1
	mov	esi, OFFSET FLAT:label_401
	xor	eax, eax
	mov	rdx, rcx
	call	__printf_chk
	jmp	.label_405
.label_420:
	movzx	esi, al
	call	__overflow
	jmp	.label_408
	.section	.text
	.align	16
	#Procedure 0x404ddd
	.globl sub_404ddd
	.type sub_404ddd, @function
sub_404ddd:

	nop	dword ptr [rax]
.label_361:
	movsx	ecx, al
	cmp	ecx, 0x5c
	je	.label_462
	cmp	ecx, 0xa
	jne	.label_412
	mov	rsi, qword ptr [rip + stdout]
	mov	edi, OFFSET FLAT:label_379
	call	fputs_unlocked
	jmp	.label_408
.label_462:
	mov	rsi, qword ptr [rip + stdout]
	mov	edi, OFFSET FLAT:label_383
	call	fputs_unlocked
	jmp	.label_408
	.section	.text
	.align	16
	#Procedure 0x404e13
	.globl sub_404e13
	.type sub_404e13, @function
sub_404e13:

	nop	word ptr cs:[rax + rax]
.label_412:
	mov	rdi, qword ptr [rip + stdout]
	mov	rcx, qword ptr [rdi + 0x28]
	cmp	rcx, qword ptr [rdi + 0x30]
	jae	.label_420
	lea	rdx, [rcx + 1]
	mov	qword ptr [rdi + 0x28], rdx
	mov	byte ptr [rcx], al
.label_408:
	movzx	eax, byte ptr [r14]
	inc	r14
	test	al, al
	jne	.label_361
.label_358:
	mov	qword ptr [rsp + 0x10], rbp
	cmp	r12, r15
	je	.label_428
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_410
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	mov	edi, 1
	mov	esi, OFFSET FLAT:label_401
	xor	eax, eax
	mov	rdx, rcx
	call	__printf_chk
	mov	qword ptr [rsp + 0x60], rbx
.label_324:
	mov	r13, qword ptr [rsp + 0x50]
	mov	r15, qword ptr [rsp + 0x48]
.label_405:
	mov	rbp, qword ptr [rsp + 0x28]
	mov	rbx, qword ptr [rsp + 0x30]
.label_372:
	mov	al, 1
	mov	qword ptr [rsp + 0x98], rax
	jmp	.label_439
.label_428:
	mov	al, 1
	mov	qword ptr [rsp + 0x20], rax
	mov	al, byte ptr [rip + quiet]
	test	al, al
	mov	r13, qword ptr [rsp + 0x50]
	mov	r15, qword ptr [rsp + 0x48]
	mov	rbp, qword ptr [rsp + 0x28]
	mov	rbx, qword ptr [rsp + 0x30]
	jne	.label_372
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_445
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	mov	edi, 1
	mov	esi, OFFSET FLAT:label_401
	xor	eax, eax
	mov	rdx, rcx
	call	__printf_chk
	jmp	.label_372
.label_385:
	mov	esi, 0x5c
	mov	rdi, rax
	call	__overflow
	jmp	.label_450
.label_355:
	mov	esi, 0x5c
	mov	rdi, rax
	call	__overflow
	jmp	.label_453
	.section	.text
	.align	16
	#Procedure 0x404f13
	.globl sub_404f13
	.type sub_404f13, @function
sub_404f13:

	nop	word ptr cs:[rax + rax]
.label_310:
	inc	rbx
	je	.label_456
	mov	edx, 0xa
	lea	rdi, [rsp + 0x80]
	lea	rsi, [rsp + 0xa8]
	mov	rcx, rbp
	call	__getdelim
	mov	r12, rax
	test	r12, r12
	jle	.label_463
	mov	qword ptr [rsp + 0x30], rbx
	mov	r14, qword ptr [rsp + 0x80]
	cmp	byte ptr [r14], 0x23
	jne	.label_464
	mov	rbp, qword ptr [rsp + 0x28]
	mov	rbx, qword ptr [rsp + 0x30]
	jmp	.label_439
	.section	.text
	.align	16
	#Procedure 0x404f74
	.globl sub_404f74
	.type sub_404f74, @function
sub_404f74:

	nop	word ptr cs:[rax + rax]
.label_464:
	cmp	byte ptr [r14 + r12 - 1], 0xa
	jne	.label_472
	dec	r12
	mov	byte ptr [r14 + r12], 0
	mov	r14, qword ptr [rsp + 0x80]
.label_472:
	mov	rax, r13
	xor	ebp, ebp
	jmp	.label_390
	.section	.text
	.align	16
	#Procedure 0x404f9f
	.globl sub_404f9f
	.type sub_404f9f, @function
sub_404f9f:

	nop	
.label_418:
	inc	rbp
.label_390:
	movzx	r13d, byte ptr [r14 + rbp]
	cmp	r13b, 0x20
	je	.label_418
	cmp	r13b, 9
	je	.label_418
	mov	qword ptr [rsp + 0x48], r15
	mov	qword ptr [rsp + 0x50], rax
	xor	r15d, r15d
	cmp	r13b, 0x5c
	sete	r15b
	lea	rbx, [r14 + r15]
	lea	rdi, [rbx + rbp]
	mov	esi, OFFSET FLAT:label_165
	mov	edx, 3
	mov	qword ptr [rsp + 0x78], rdi
	call	strncmp
	test	eax, eax
	je	.label_490
	mov	rax, r12
	sub	rax, r15
	sub	rax, rbp
	mov	cl, byte ptr [rip + min_digest_line_length]
	test	cl, cl
	mov	ecx, 0
	mov	edx, 0x22
	cmovne	rcx, rdx
	xor	edx, edx
	cmp	byte ptr [rbx + rbp], 0x5c
	sete	dl
	or	rdx, rcx
	cmp	rax, rdx
	mov	r8, qword ptr [rsp + 0x78]
	jb	.label_323
	movzx	eax, byte ptr [rip + digest_hex_bytes]
	mov	r9, rax
	shl	r9, 5
	lea	rcx, [r9 + r15]
	add	rcx, r14
	mov	dl, byte ptr [rbp + rcx]
	cmp	dl, 0x20
	je	.label_316
	cmp	dl, 9
	jne	.label_323
.label_316:
	mov	byte ptr [rcx + rbp], 0
	mov	bl, byte ptr [rbx + rbp]
	test	al, al
	je	.label_327
	mov	qword ptr [rsp + 0xa0], r9
	call	__ctype_b_loc
	mov	r9, qword ptr [rsp + 0xa0]
	mov	r8, qword ptr [rsp + 0x78]
	mov	rax, qword ptr [rax]
	lea	rcx, [r14 + r15 + 2]
	xor	edx, edx
	nop	dword ptr [rax]
.label_340:
	movzx	esi, bl
	test	byte ptr [rax + rsi*2 + 1], 0x10
	je	.label_323
	lea	rsi, [rcx + rdx]
	movzx	edi, byte ptr [rbp + rsi - 1]
	test	byte ptr [rax + rdi*2 + 1], 0x10
	je	.label_323
	movzx	ebx, byte ptr [rbp + rsi]
	add	rdx, 2
	cmp	edx, 0x20
	jb	.label_340
.label_327:
	test	bl, bl
	jne	.label_323
	add	r9, r15
	lea	rax, [rbp + r9 + 1]
	mov	ecx, 2
	sub	rcx, r12
	add	rcx, r9
	add	rcx, rbp
	je	.label_345
	lea	rcx, [r14 + r9]
	mov	cl, byte ptr [rbp + rcx + 1]
	cmp	cl, 0x20
	je	.label_469
	cmp	cl, 0x2a
	jne	.label_345
.label_469:
	cmp	dword ptr [rip + bsd_reversed],  1
	je	.label_356
	mov	dword ptr [rip + bsd_reversed],  0
	lea	rax, [rbp + r9 + 2]
	jmp	.label_356
.label_490:
	lea	rax, [r15 + rbp + 3]
	cmp	byte ptr [rbp + rbx + 3], 0x20
	lea	rdx, [r15 + rbp + 4]
	cmovne	rdx, rax
	cmp	byte ptr [r14 + rdx], 0x28
	jne	.label_323
	lea	rax, [rdx + 1]
	cmp	r12, rax
	je	.label_323
	lea	r9, [r14 + rdx + 1]
	mov	rsi, rdx
	neg	rsi
	lea	rdi, [r14 + r12]
	lea	rbp, [r14 + r12 + 1]
	lea	rbx, [r14 + r12 + 3]
	nop	
.label_384:
	mov	rax, r12
	mov	rcx, rdi
	mov	r8, rbp
	mov	r15, rbx
	lea	rdi, [rsi + rax]
	cmp	rdi, 2
	je	.label_380
	lea	r12, [rax - 1]
	lea	rdi, [rcx - 1]
	lea	rbp, [r8 - 1]
	lea	rbx, [r15 - 1]
	cmp	byte ptr [r14 + rax - 1], 0x29
	jne	.label_384
	add	r14, r12
	sub	r12, rdx
	dec	r12
	xor	esi, esi
	jmp	.label_388
.label_380:
	mov	sil, 1
	cmp	byte ptr [r9], 0x29
	mov	r14, r9
	mov	r12d, 0
	jne	.label_323
.label_388:
	sub	rax, rdx
	cmp	r13b, 0x5c
	jne	.label_395
	test	sil, sil
	mov	rdx, r9
	jne	.label_399
	xor	esi, esi
	mov	rdx, r9
	nop	dword ptr [rax + rax]
.label_417:
	movzx	ebx, byte ptr [r9 + rsi]
	movsx	edi, bl
	cmp	edi, 0x5c
	je	.label_403
	test	edi, edi
	je	.label_323
	mov	byte ptr [rdx], bl
	jmp	.label_407
	.section	.text
	.align	16
	#Procedure 0x4051d9
	.globl sub_4051d9
	.type sub_4051d9, @function
sub_4051d9:

	nop	dword ptr [rax]
.label_403:
	mov	rdi, rax
	sub	rdi, rsi
	add	rdi, -3
	je	.label_323
	movsx	edi, byte ptr [r9 + rsi + 1]
	inc	rsi
	cmp	edi, 0x5c
	je	.label_414
	cmp	edi, 0x6e
	jne	.label_323
	mov	byte ptr [rdx], 0xa
	jmp	.label_407
	.section	.text
	.align	16
	#Procedure 0x40520c
	.globl sub_40520c
	.type sub_40520c, @function
sub_40520c:

	nop	dword ptr [rax]
.label_414:
	mov	byte ptr [rdx], 0x5c
.label_407:
	inc	rdx
	inc	rsi
	cmp	rsi, r12
	jb	.label_417
.label_399:
	cmp	rdx, r14
	jae	.label_395
	mov	byte ptr [rdx], 0
.label_395:
	dec	rax
	mov	byte ptr [r14], 0
	jmp	.label_421
	.section	.text
	.align	16
	#Procedure 0x40522f
	.globl sub_40522f
	.type sub_40522f, @function
sub_40522f:

	nop	
.label_427:
	inc	rax
	inc	rcx
	inc	r8
	inc	r15
.label_421:
	movzx	edx, byte ptr [rcx]
	cmp	dl, 9
	je	.label_427
	cmp	dl, 0x20
	je	.label_427
	cmp	dl, 0x3d
	je	.label_429
	jmp	.label_323
	.section	.text
	.align	16
	#Procedure 0x405253
	.globl sub_405253
	.type sub_405253, @function
sub_405253:

	nop	word ptr cs:[rax + rax]
.label_435:
	inc	r8
	inc	r15
.label_429:
	movzx	ebx, byte ptr [r8]
	cmp	bl, 0x20
	je	.label_435
	cmp	bl, 9
	je	.label_435
	cmp	byte ptr [rip + digest_hex_bytes],  1
	jne	.label_442
	mov	r14, r8
	mov	rbp, r9
	call	__ctype_b_loc
	mov	r9, rbp
	mov	r8, r14
	mov	rax, qword ptr [rax]
	xor	ecx, ecx
	nop	word ptr cs:[rax + rax]
.label_443:
	movzx	edx, bl
	test	byte ptr [rax + rdx*2 + 1], 0x10
	je	.label_323
	movzx	edx, byte ptr [r15 - 1]
	test	byte ptr [rax + rdx*2 + 1], 0x10
	je	.label_323
	add	ecx, 2
	movzx	ebx, byte ptr [r15]
	add	r15, 2
	cmp	ecx, 0x20
	jb	.label_443
.label_442:
	test	bl, bl
	mov	r14, r9
	jne	.label_323
	jmp	.label_402
.label_345:
	cmp	dword ptr [rip + bsd_reversed],  0
	je	.label_323
	mov	dword ptr [rip + bsd_reversed],  1
.label_356:
	add	r14, rax
	cmp	r13b, 0x5c
	jne	.label_402
	sub	r12, rax
	mov	rax, r14
	je	.label_451
	lea	rcx, [r12 - 1]
	xor	edx, edx
	mov	rax, r14
.label_465:
	movzx	ebx, byte ptr [r14 + rdx]
	movsx	esi, bl
	cmp	esi, 0x5c
	je	.label_454
	test	esi, esi
	je	.label_323
	mov	byte ptr [rax], bl
	jmp	.label_457
	.section	.text
	.align	16
	#Procedure 0x405325
	.globl sub_405325
	.type sub_405325, @function
sub_405325:

	nop	word ptr cs:[rax + rax]
.label_454:
	cmp	rdx, rcx
	je	.label_323
	movsx	esi, byte ptr [r14 + rdx + 1]
	inc	rdx
	cmp	esi, 0x5c
	je	.label_458
	cmp	esi, 0x6e
	jne	.label_323
	mov	byte ptr [rax], 0xa
	jmp	.label_457
	.section	.text
	.align	16
	#Procedure 0x40534d
	.globl sub_40534d
	.type sub_40534d, @function
sub_40534d:

	nop	dword ptr [rax]
.label_458:
	mov	byte ptr [rax], 0x5c
.label_457:
	inc	rax
	inc	rdx
	cmp	rdx, r12
	jb	.label_465
.label_451:
	add	r12, r14
	cmp	rax, r12
	jae	.label_468
	mov	byte ptr [rax], 0
.label_468:
	test	r14, r14
	je	.label_323
.label_402:
	mov	eax, dword ptr [rsp + 0x5c]
	test	al, al
	je	.label_338
	cmp	byte ptr [r14], 0x2d
	jne	.label_338
	cmp	byte ptr [r14 + 1], 0
	je	.label_323
.label_338:
	mov	al, byte ptr [rip + status_only]
	test	al, al
	mov	r13, r8
	je	.label_473
	xor	ebp, ebp
	jmp	.label_478
	.section	.text
	.align	16
	#Procedure 0x40539b
	.globl sub_40539b
	.type sub_40539b, @function
sub_40539b:

	nop	dword ptr [rax + rax]
.label_323:
	cmp	byte ptr [rip + warn],  1
	mov	rbp, qword ptr [rsp + 0x10]
	mov	rbx, qword ptr [rsp + 0x30]
	jne	.label_481
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_483
	mov	edx, 5
	call	dcgettext
	mov	r14, rax
	xor	edi, edi
	mov	esi, 3
	mov	rdx, rbp
	call	quotearg_n_style_colon
	mov	rcx, rax
	xor	edi, edi
	xor	esi, esi
	mov	r9d, OFFSET FLAT:label_165
	xor	eax, eax
	mov	rdx, r14
	mov	r8, rbx
	call	error
.label_481:
	mov	qword ptr [rsp + 0x10], rbp
	mov	r15, qword ptr [rsp + 0x48]
	inc	r15
	mov	r13, qword ptr [rsp + 0x50]
	inc	r13
	mov	rbp, qword ptr [rsp + 0x28]
.label_439:
	test	byte ptr [rbp], 0x30
	je	.label_310
.label_463:
	mov	rdi, qword ptr [rsp + 0x80]
	call	free
	test	byte ptr [rbp], 0x20
	jne	.label_314
	mov	eax, dword ptr [rsp + 0x5c]
	test	al, al
	jne	.label_317
	mov	rdi, rbp
	call	rpl_fclose
	test	eax, eax
	je	.label_317
	call	__errno_location
	mov	ebx, dword ptr [rax]
	xor	ebp, ebp
	xor	edi, edi
	mov	esi, 3
	mov	rdx, qword ptr [rsp + 0x10]
	call	quotearg_n_style_colon
	mov	rcx, rax
	xor	edi, edi
	mov	edx, OFFSET FLAT:label_216
	xor	eax, eax
	mov	esi, ebx
	call	error
	jmp	.label_330
	.section	.text
	.align	16
	#Procedure 0x40546d
	.globl sub_40546d
	.type sub_40546d, @function
sub_40546d:

	nop	dword ptr [rax]
.label_314:
	xor	ebp, ebp
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_332
.label_423:
	mov	edx, 5
	call	dcgettext
	mov	r14, rax
	xor	edi, edi
	mov	esi, 3
	mov	rdx, qword ptr [rsp + 0x10]
	call	quotearg_n_style_colon
	mov	rcx, rax
	xor	edi, edi
	xor	esi, esi
	xor	eax, eax
	mov	rdx, r14
	call	error
	jmp	.label_330
.label_317:
	mov	rax, qword ptr [rsp + 0x98]
	test	al, 1
	jne	.label_342
	xor	ebp, ebp
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_344
	mov	edx, 5
	call	dcgettext
	mov	r14, rax
	xor	edi, edi
	mov	esi, 3
	mov	rdx, qword ptr [rsp + 0x10]
	call	quotearg_n_style_colon
	mov	rcx, rax
	xor	edi, edi
	xor	esi, esi
	mov	r8d, OFFSET FLAT:label_165
	xor	eax, eax
	mov	rdx, r14
	call	error
	nop	word ptr cs:[rax + rax]
.label_330:
	mov	rcx, qword ptr [rsp + 0x38]
	mov	rdx, qword ptr [rsp + 0x40]
	mov	esi, dword ptr [rsp + 8]
.label_373:
	and	bpl, sil
	and	bpl, 1
	jmp	.label_360
.label_342:
	cmp	byte ptr [rip + status_only],  1
	jne	.label_363
	mov	rax, qword ptr [rsp + 0x20]
	and	al, 1
	mov	qword ptr [rsp + 0x20], rax
.label_415:
	xor	ebp, ebp
	mov	rax, qword ptr [rsp + 0x60]
	or	qword ptr [rsp + 0x68], rax
	jne	.label_330
	mov	rax, qword ptr [rsp + 0x20]
	test	al, al
	mov	rcx, qword ptr [rsp + 0x38]
	mov	rdx, qword ptr [rsp + 0x40]
	mov	esi, dword ptr [rsp + 8]
	je	.label_373
	mov	bpl, byte ptr [rip + strict]
	test	r13, r13
	sete	al
	xor	bpl, 1
	or	bpl, al
	jmp	.label_373
.label_363:
	test	r15, r15
	je	.label_335
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_386
	mov	edx, OFFSET FLAT:label_387
	mov	r8d, 5
	mov	rcx, r15
	call	dcngettext
	mov	rcx, rax
	xor	edi, edi
	xor	esi, esi
	xor	eax, eax
	mov	rdx, rcx
	mov	rcx, r15
	call	error
.label_335:
	mov	r14, qword ptr [rsp + 0x68]
	test	r14, r14
	je	.label_393
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_397
	mov	edx, OFFSET FLAT:label_398
	mov	r8d, 5
	mov	rcx, r14
	call	dcngettext
	mov	rcx, rax
	xor	edi, edi
	xor	esi, esi
	xor	eax, eax
	mov	rdx, rcx
	mov	rcx, r14
	call	error
.label_393:
	mov	r14, qword ptr [rsp + 0x60]
	test	r14, r14
	je	.label_437
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_460
	mov	edx, OFFSET FLAT:label_461
	mov	r8d, 5
	mov	rcx, r14
	call	dcngettext
	mov	rcx, rax
	xor	edi, edi
	xor	esi, esi
	xor	eax, eax
	mov	rdx, rcx
	mov	rcx, r14
	call	error
.label_437:
	mov	rax, qword ptr [rsp + 0x20]
	and	al, 1
	mov	qword ptr [rsp + 0x20], rax
	jne	.label_415
	test	byte ptr [rip + ignore_missing],  1
	je	.label_415
	xor	ebp, ebp
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_422
	jmp	.label_423
.label_400:
	xor	r15d, r15d
	jmp	.label_426
.label_438:
	movzx	esi, al
	call	__overflow
	jmp	.label_430
	.section	.text
	.align	16
	#Procedure 0x40564c
	.globl sub_40564c
	.type sub_40564c, @function
sub_40564c:

	nop	dword ptr [rax]
.label_424:
	movsx	ecx, al
	cmp	ecx, 0x5c
	je	.label_431
	cmp	ecx, 0xa
	jne	.label_432
	mov	rsi, qword ptr [rip + stdout]
	mov	edi, OFFSET FLAT:label_379
	call	fputs_unlocked
	jmp	.label_430
.label_431:
	mov	rsi, qword ptr [rip + stdout]
	mov	edi, OFFSET FLAT:label_383
	call	fputs_unlocked
	jmp	.label_430
	.section	.text
	.align	16
	#Procedure 0x405683
	.globl sub_405683
	.type sub_405683, @function
sub_405683:

	nop	word ptr cs:[rax + rax]
.label_432:
	mov	rdi, qword ptr [rip + stdout]
	mov	rcx, qword ptr [rdi + 0x28]
	cmp	rcx, qword ptr [rdi + 0x30]
	jae	.label_438
	lea	rdx, [rcx + 1]
	mov	qword ptr [rdi + 0x28], rdx
	mov	byte ptr [rcx], al
.label_430:
	movzx	eax, byte ptr [rbp]
	inc	rbp
	test	al, al
	jne	.label_424
.label_419:
	mov	rsi, qword ptr [rip + stdout]
	mov	edi, OFFSET FLAT:label_441
	call	fputs_unlocked
.label_362:
	cmp	byte ptr [rip + digest_hex_bytes],  1
	jne	.label_446
	xor	ebp, ebp
	nop	word ptr cs:[rax + rax]
.label_449:
	movzx	edx, byte ptr [rbx + rbp]
	mov	edi, 1
	mov	esi, OFFSET FLAT:label_448
	xor	eax, eax
	call	__printf_chk
	inc	rbp
	movzx	eax, byte ptr [rip + digest_hex_bytes]
	shl	rax, 4
	cmp	rbp, rax
	jb	.label_449
.label_446:
	mov	rax, qword ptr [rsp + 0x70]
	test	al, al
	mov	rbp, r12
	jne	.label_325
	mov	rdi, qword ptr [rip + stdout]
	mov	rax, qword ptr [rdi + 0x28]
	cmp	rax, qword ptr [rdi + 0x30]
	jae	.label_455
	lea	rcx, [rax + 1]
	mov	qword ptr [rdi + 0x28], rcx
	mov	byte ptr [rax], 0x20
.label_354:
	mov	rdi, qword ptr [rip + stdout]
	mov	rax, qword ptr [rdi + 0x28]
	cmp	rax, qword ptr [rdi + 0x30]
	jae	.label_459
	lea	rcx, [rax + 1]
	mov	qword ptr [rdi + 0x28], rcx
	mov	cl, byte ptr [rsp + 7]
	mov	byte ptr [rax], cl
.label_357:
	test	r15b, 1
	je	.label_466
	mov	al, byte ptr [rbp]
	test	al, al
	je	.label_325
	inc	rbp
	jmp	.label_470
.label_466:
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rbp
	call	fputs_unlocked
	jmp	.label_325
.label_487:
	movzx	esi, al
	call	__overflow
	jmp	.label_475
	.section	.text
	.align	16
	#Procedure 0x40578c
	.globl sub_40578c
	.type sub_40578c, @function
sub_40578c:

	nop	dword ptr [rax]
.label_470:
	movsx	ecx, al
	cmp	ecx, 0x5c
	je	.label_477
	cmp	ecx, 0xa
	jne	.label_480
	mov	rsi, qword ptr [rip + stdout]
	mov	edi, OFFSET FLAT:label_379
	call	fputs_unlocked
	jmp	.label_475
.label_477:
	mov	rsi, qword ptr [rip + stdout]
	mov	edi, OFFSET FLAT:label_383
	call	fputs_unlocked
	jmp	.label_475
	.section	.text
	.align	16
	#Procedure 0x4057c3
	.globl sub_4057c3
	.type sub_4057c3, @function
sub_4057c3:

	nop	word ptr cs:[rax + rax]
.label_480:
	mov	rdi, qword ptr [rip + stdout]
	mov	rcx, qword ptr [rdi + 0x28]
	cmp	rcx, qword ptr [rdi + 0x30]
	jae	.label_487
	lea	rdx, [rcx + 1]
	mov	qword ptr [rdi + 0x28], rdx
	mov	byte ptr [rcx], al
.label_475:
	movzx	eax, byte ptr [rbp]
	inc	rbp
	test	al, al
	jne	.label_470
.label_325:
	mov	al, byte ptr [rip + delim]
	test	al, al
	mov	esi, 0xa
	mov	eax, 0
	cmovne	esi, eax
	mov	rdi, qword ptr [rip + stdout]
	mov	rax, qword ptr [rdi + 0x28]
	cmp	rax, qword ptr [rdi + 0x30]
	jae	.label_485
	lea	rcx, [rax + 1]
	mov	qword ptr [rdi + 0x28], rcx
	mov	byte ptr [rax], sil
.label_349:
	mov	eax, dword ptr [rsp + 8]
.label_436:
	mov	bpl, al
	mov	rcx, qword ptr [rsp + 0x38]
	mov	rdx, r14
.label_360:
	add	rdx, 8
	cmp	rdx, rcx
	mov	sil, bpl
	jb	.label_321
.label_334:
	mov	al, byte ptr [rip + have_read_stdin]
	test	al, al
	je	.label_326
	mov	rdi, qword ptr [rip + stdin]
	call	rpl_fclose
	cmp	eax, -1
	je	.label_329
.label_326:
	not	bpl
	and	bpl, 1
	movzx	eax, bpl
	add	rsp, 0xe8
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_456:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_336
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
	xor	edi, edi
	mov	esi, 3
	mov	rdx, qword ptr [rsp + 0x10]
	call	quotearg_n_style_colon
	mov	rcx, rax
	mov	edi, 1
	xor	esi, esi
	xor	eax, eax
	mov	rdx, rbx
	call	error
.label_471:
	cmp	eax, 0xffffff7d
	je	.label_346
	cmp	eax, 0xffffff7e
	jne	.label_348
	xor	edi, edi
	call	usage
.label_346:
	mov	rdi, qword ptr [rip + stdout]
	mov	rcx, qword ptr [rip + Version]
	mov	esi, OFFSET FLAT:label_167
	mov	edx, OFFSET FLAT:label_172
	mov	r8d, OFFSET FLAT:label_350
	mov	r9d, OFFSET FLAT:label_351
	mov	eax, 0
	push	0
	push	OFFSET FLAT:label_352
	call	version_etc
	add	rsp, 0x10
	xor	edi, edi
	call	exit
.label_348:
	mov	edi, 1
	call	usage
.label_467:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_364
	jmp	.label_365
.label_425:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_367
	jmp	.label_365
.label_486:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_368
	jmp	.label_365
.label_489:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_370
	jmp	.label_365
.label_492:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_375
	jmp	.label_365
.label_309:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_378
	jmp	.label_365
.label_313:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_493
	jmp	.label_365
.label_320:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_484
	jmp	.label_365
.label_322:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_347
.label_365:
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
.label_329:
	call	__errno_location
	mov	ebx, dword ptr [rax]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_391
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	mov	edi, 1
	xor	eax, eax
	mov	esi, ebx
	mov	rdx, rcx
	call	error
	nop	
	.section	.text
	.align	16
	#Procedure 0x4059c0

	.globl rpl_fcntl
	.type rpl_fcntl, @function
rpl_fcntl:
	push	rbp
	push	r14
	push	rbx
	sub	rsp, 0xd0
	mov	ebx, edi
	test	al, al
	je	.label_508
	movaps	xmmword ptr [rsp + 0x50], xmm0
	movaps	xmmword ptr [rsp + 0x60], xmm1
	movaps	xmmword ptr [rsp + 0x70], xmm2
	movaps	xmmword ptr [rsp + 0x80], xmm3
	movaps	xmmword ptr [rsp + 0x90], xmm4
	movaps	xmmword ptr [rsp + 0xa0], xmm5
	movaps	xmmword ptr [rsp + 0xb0], xmm6
	movaps	xmmword ptr [rsp + 0xc0], xmm7
.label_508:
	mov	qword ptr [rsp + 0x48], r9
	mov	qword ptr [rsp + 0x40], r8
	mov	qword ptr [rsp + 0x38], rcx
	mov	qword ptr [rsp + 0x30], rdx
	lea	rax, [rsp + 0x20]
	mov	qword ptr [rsp + 0x10], rax
	lea	rax, [rsp + 0xf0]
	mov	qword ptr [rsp + 8], rax
	mov	dword ptr [rsp + 4], 0x30
	mov	dword ptr [rsp], 0x10
	cmp	esi, 0xb
	ja	.label_497
	mov	eax, 0xa0a
	bt	eax, esi
	jb	.label_510
	mov	eax, 0x514
	bt	eax, esi
	jb	.label_498
	test	esi, esi
	jne	.label_497
	movsxd	rcx, dword ptr [rsp]
	cmp	rcx, 0x28
	ja	.label_512
	mov	rax, rcx
	add	rax, qword ptr [rsp + 0x10]
	lea	ecx, [rcx + 8]
	mov	dword ptr [rsp], ecx
	jmp	.label_513
.label_497:
	lea	eax, [rsi - 0x400]
	cmp	eax, 8
	ja	.label_495
	mov	ecx, 0x85
	bt	ecx, eax
	jb	.label_498
	mov	ecx, 0x102
	bt	ecx, eax
	jae	.label_501
.label_510:
	xor	eax, eax
	mov	edi, ebx
	call	fcntl
	jmp	.label_504
.label_498:
	movsxd	rcx, dword ptr [rsp]
	cmp	rcx, 0x28
	ja	.label_505
	mov	rax, rcx
	add	rax, qword ptr [rsp + 0x10]
	lea	ecx, [rcx + 8]
	mov	dword ptr [rsp], ecx
	jmp	.label_506
.label_505:
	mov	rax, qword ptr [rsp + 8]
	lea	rcx, [rax + 8]
	mov	qword ptr [rsp + 8], rcx
.label_506:
	mov	edx, dword ptr [rax]
	xor	eax, eax
	mov	edi, ebx
.label_507:
	call	fcntl
.label_504:
	mov	ebp, eax
.label_500:
	mov	eax, ebp
	add	rsp, 0xd0
	pop	rbx
	pop	r14
	pop	rbp
	ret	
.label_501:
	cmp	eax, 6
	jne	.label_495
	movsxd	rcx, dword ptr [rsp]
	cmp	rcx, 0x28
	ja	.label_515
	mov	rax, rcx
	add	rax, qword ptr [rsp + 0x10]
	lea	ecx, [rcx + 8]
	mov	dword ptr [rsp], ecx
	jmp	.label_496
.label_495:
	movsxd	rcx, dword ptr [rsp]
	cmp	rcx, 0x28
	ja	.label_499
	mov	rax, rcx
	add	rax, qword ptr [rsp + 0x10]
	lea	ecx, [rcx + 8]
	mov	dword ptr [rsp], ecx
	jmp	.label_503
.label_512:
	mov	rax, qword ptr [rsp + 8]
	lea	rcx, [rax + 8]
	mov	qword ptr [rsp + 8], rcx
.label_513:
	mov	edx, dword ptr [rax]
	xor	esi, esi
	xor	eax, eax
	mov	edi, ebx
	jmp	.label_507
.label_515:
	mov	rax, qword ptr [rsp + 8]
	lea	rcx, [rax + 8]
	mov	qword ptr [rsp + 8], rcx
.label_496:
	mov	r14d, dword ptr [rax]
	cmp	dword ptr [rip + rpl_fcntl_DUPFD_CLOEXEC.have_dupfd_cloexec],  0
	js	.label_511
	mov	esi, 0x406
	xor	eax, eax
	mov	edi, ebx
	mov	edx, r14d
	call	fcntl
	mov	ebp, eax
	test	ebp, ebp
	jns	.label_514
	call	__errno_location
	cmp	dword ptr [rax], 0x16
	jne	.label_514
	xor	esi, esi
	xor	eax, eax
	mov	edi, ebx
	mov	edx, r14d
	call	fcntl
	mov	ebp, eax
	test	ebp, ebp
	js	.label_500
	mov	dword ptr [rip + rpl_fcntl_DUPFD_CLOEXEC.have_dupfd_cloexec],  0xffffffff
	mov	al, 1
	jmp	.label_502
.label_514:
	mov	dword ptr [rip + rpl_fcntl_DUPFD_CLOEXEC.have_dupfd_cloexec],  1
	jmp	.label_500
.label_499:
	mov	rax, qword ptr [rsp + 8]
	lea	rcx, [rax + 8]
	mov	qword ptr [rsp + 8], rcx
.label_503:
	mov	rdx, qword ptr [rax]
	xor	eax, eax
	mov	edi, ebx
	call	fcntl
	jmp	.label_504
.label_511:
	xor	esi, esi
	xor	eax, eax
	mov	edi, ebx
	mov	edx, r14d
	call	fcntl
	mov	ebp, eax
	cmp	dword ptr [rip + rpl_fcntl_DUPFD_CLOEXEC.have_dupfd_cloexec],  -1
	sete	al
.label_502:
	test	al, al
	je	.label_500
	test	ebp, ebp
	js	.label_500
	mov	esi, 1
	xor	eax, eax
	mov	edi, ebp
	call	fcntl
	mov	ecx, eax
	test	ecx, ecx
	js	.label_509
	or	ecx, 1
	mov	esi, 2
	xor	eax, eax
	mov	edi, ebp
	mov	edx, ecx
	call	fcntl
	cmp	eax, -1
	jne	.label_500
.label_509:
	call	__errno_location
	mov	rbx, rax
	mov	r14d, dword ptr [rbx]
	mov	edi, ebp
	call	close
	mov	dword ptr [rbx], r14d
	mov	ebp, 0xffffffff
	jmp	.label_500
	.section	.text
	.align	16
	#Procedure 0x405c51
	.globl sub_405c51
	.type sub_405c51, @function
sub_405c51:

	nop	word ptr cs:[rax + rax]
.label_516:
	call	xalloc_die
	.section	.text
	.align	16
	#Procedure 0x405c65
	.globl sub_405c65
	.type sub_405c65, @function
sub_405c65:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x405c70
	.globl xnmalloc
	.type xnmalloc, @function
xnmalloc:

	push	rbx
	mov	rbx, rsi
	movabs	rax, 0x7fffffffffffffff
	xor	edx, edx
	div	rbx
	cmp	rax, rdi
	jb	.label_516
	imul	rbx, rdi
	mov	rdi, rbx
	call	malloc
	test	rbx, rbx
	je	.label_517
	test	rax, rax
	je	.label_516
.label_517:
	pop	rbx
	ret	
	.section	.text
	.align	16
	#Procedure 0x405ca0
	.globl xcharalloc
	.type xcharalloc, @function
xcharalloc:

	push	rbx
	mov	rbx, rdi
	call	malloc
	test	rbx, rbx
	je	.label_518
	test	rax, rax
	je	.label_519
.label_518:
	pop	rbx
	ret	
.label_519:
	call	xalloc_die
	.section	.text
	.align	16
	#Procedure 0x405cba
	.globl sub_405cba
	.type sub_405cba, @function
sub_405cba:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x405cc0
	.globl quotearg_n_mem
	.type quotearg_n_mem, @function
quotearg_n_mem:

	mov	ecx, OFFSET FLAT:default_quoting_options
	jmp	quotearg_n_options
	.section	.text
	.align	16
	#Procedure 0x405cca
	.globl sub_405cca
	.type sub_405cca, @function
sub_405cca:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x405cd0
	.globl emit_bug_reporting_address
	.type emit_bug_reporting_address, @function
emit_bug_reporting_address:

	push	rax
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_520
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:label_521
	xor	eax, eax
	mov	rsi, rcx
	call	__printf_chk
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_523
	mov	edx, 5
	call	dcgettext
	mov	rsi, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:label_172
	mov	ecx, OFFSET FLAT:label_166
	xor	eax, eax
	call	__printf_chk
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_522
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	pop	rax
	jmp	fputs_unlocked
	.section	.text
	.align	16
	#Procedure 0x405d44
	.globl sub_405d44
	.type sub_405d44, @function
sub_405d44:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x405d50

	.globl md5_process_block
	.type md5_process_block, @function
md5_process_block:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	push	rax
	mov	r8, rsi
	and	r8, 0xfffffffffffffffc
	add	r8, rdi
	mov	r10d, dword ptr [rdx]
	mov	ebx, dword ptr [rdx + 4]
	mov	r9d, dword ptr [rdx + 8]
	mov	ebp, dword ptr [rdx + 0xc]
	mov	rax, rsi
	shr	rax, 0x20
	mov	ecx, dword ptr [rdx + 0x10]
	add	ecx, esi
	mov	dword ptr [rdx + 0x10], ecx
	adc	eax, 0
	mov	qword ptr [rsp - 0x28], rdx
	add	dword ptr [rdx + 0x14], eax
	cmp	rdi, r8
	jae	.label_525
	mov	qword ptr [rsp - 0x20], r8
	nop	word ptr [rax + rax]
.label_524:
	mov	qword ptr [rsp - 0x78], rbx
	mov	qword ptr [rsp - 8], rbp
	mov	qword ptr [rsp], r9
	mov	dword ptr [rsp - 0x34], r10d
	mov	eax, r9d
	xor	eax, ebp
	and	eax, ebx
	xor	eax, ebp
	add	eax, r10d
	mov	ecx, dword ptr [rdi]
	mov	esi, dword ptr [rdi + 4]
	mov	qword ptr [rsp - 0x58], rsi
	lea	edx, [rcx + rax - 0x28955b88]
	mov	r10, rcx
	mov	qword ptr [rsp - 0x10], r10
	rol	edx, 7
	mov	rax, qword ptr [rsp - 0x78]
	add	edx, eax
	mov	rax, qword ptr [rsp - 0x78]
	xor	eax, r9d
	and	eax, edx
	xor	eax, r9d
	lea	ecx, [rbp + rsi]
	lea	ebp, [rax + rcx - 0x173848aa]
	rol	ebp, 0xc
	add	ebp, edx
	mov	eax, edx
	mov	rcx, qword ptr [rsp - 0x78]
	xor	eax, ecx
	and	eax, ebp
	mov	rcx, qword ptr [rsp - 0x78]
	xor	eax, ecx
	mov	ecx, dword ptr [rdi + 8]
	mov	qword ptr [rsp - 0x30], rcx
	lea	ecx, [r9 + rcx]
	lea	ebx, [rax + rcx + 0x242070db]
	rol	ebx, 0x11
	add	ebx, ebp
	mov	eax, ebp
	xor	eax, edx
	and	eax, ebx
	xor	eax, edx
	mov	esi, dword ptr [rdi + 0xc]
	mov	rcx, qword ptr [rsp - 0x78]
	lea	ecx, [rcx + rsi]
	mov	r12, rsi
	mov	qword ptr [rsp - 0x18], r12
	lea	eax, [rax + rcx - 0x3e423112]
	rol	eax, 0x16
	add	eax, ebx
	mov	ecx, ebx
	xor	ecx, ebp
	and	ecx, eax
	xor	ecx, ebp
	mov	esi, dword ptr [rdi + 0x10]
	mov	dword ptr [rsp - 0x64], esi
	add	edx, esi
	lea	ecx, [rcx + rdx - 0xa83f051]
	rol	ecx, 7
	add	ecx, eax
	mov	edx, eax
	xor	edx, ebx
	and	edx, ecx
	xor	edx, ebx
	mov	esi, dword ptr [rdi + 0x14]
	mov	dword ptr [rsp - 0x6c], esi
	add	ebp, esi
	lea	r8d, [rdx + rbp + 0x4787c62a]
	rol	r8d, 0xc
	add	r8d, ecx
	mov	edx, ecx
	xor	edx, eax
	and	edx, r8d
	xor	edx, eax
	mov	esi, dword ptr [rdi + 0x18]
	add	ebx, esi
	mov	dword ptr [rsp - 0x38], esi
	lea	ebx, [rdx + rbx - 0x57cfb9ed]
	rol	ebx, 0x11
	add	ebx, r8d
	mov	ebp, r8d
	xor	ebp, ecx
	and	ebp, ebx
	xor	ebp, ecx
	mov	edx, dword ptr [rdi + 0x1c]
	mov	dword ptr [rsp - 0x60], edx
	add	eax, edx
	lea	r9d, [rbp + rax - 0x2b96aff]
	rol	r9d, 0x16
	add	r9d, ebx
	mov	eax, ebx
	xor	eax, r8d
	and	eax, r9d
	xor	eax, r8d
	mov	edx, dword ptr [rdi + 0x20]
	mov	dword ptr [rsp - 0x68], edx
	add	ecx, edx
	lea	ecx, [rax + rcx + 0x698098d8]
	rol	ecx, 7
	add	ecx, r9d
	mov	eax, r9d
	xor	eax, ebx
	and	eax, ecx
	xor	eax, ebx
	mov	edx, dword ptr [rdi + 0x24]
	mov	dword ptr [rsp - 0x7c], edx
	add	r8d, edx
	lea	ebp, [rax + r8 - 0x74bb0851]
	rol	ebp, 0xc
	add	ebp, ecx
	mov	eax, ecx
	xor	eax, r9d
	and	eax, ebp
	xor	eax, r9d
	mov	edx, dword ptr [rdi + 0x28]
	add	ebx, edx
	mov	r13d, edx
	mov	dword ptr [rsp - 0x48], r13d
	lea	r15d, [rax + rbx - 0xa44f]
	rol	r15d, 0x11
	add	r15d, ebp
	mov	eax, ebp
	xor	eax, ecx
	and	eax, r15d
	xor	eax, ecx
	mov	edx, dword ptr [rdi + 0x2c]
	add	r9d, edx
	mov	dword ptr [rsp - 0x5c], edx
	lea	r11d, [rax + r9 - 0x76a32842]
	rol	r11d, 0x16
	add	r11d, r15d
	mov	eax, r15d
	xor	eax, ebp
	and	eax, r11d
	xor	eax, ebp
	mov	ebx, dword ptr [rdi + 0x30]
	mov	dword ptr [rsp - 0x40], ebx
	add	ecx, ebx
	lea	ecx, [rax + rcx + 0x6b901122]
	rol	ecx, 7
	add	ecx, r11d
	mov	eax, r11d
	xor	eax, r15d
	and	eax, ecx
	xor	eax, r15d
	mov	ebx, dword ptr [rdi + 0x34]
	add	ebp, ebx
	lea	r9d, [rax + rbp - 0x2678e6d]
	rol	r9d, 0xc
	add	r9d, ecx
	mov	eax, ecx
	xor	eax, r11d
	and	eax, r9d
	xor	eax, r11d
	mov	r14d, dword ptr [rdi + 0x38]
	add	r15d, r14d
	lea	r8d, [rax + r15 - 0x5986bc72]
	rol	r8d, 0x11
	add	r8d, r9d
	mov	eax, r9d
	xor	eax, ecx
	and	eax, r8d
	xor	eax, ecx
	mov	ebp, dword ptr [rdi + 0x3c]
	add	r11d, ebp
	mov	r15d, ebp
	mov	dword ptr [rsp - 0x3c], r15d
	lea	r11d, [rax + r11 + 0x49b40821]
	rol	r11d, 0x16
	add	r11d, r8d
	mov	eax, r11d
	xor	eax, r8d
	and	eax, r9d
	xor	eax, r8d
	mov	rbp, qword ptr [rsp - 0x58]
	add	ecx, ebp
	lea	ecx, [rax + rcx - 0x9e1da9e]
	rol	ecx, 5
	add	ecx, r11d
	mov	eax, ecx
	xor	eax, r11d
	and	eax, r8d
	xor	eax, r11d
	add	r9d, esi
	lea	ebp, [rax + r9 - 0x3fbf4cc0]
	rol	ebp, 9
	add	ebp, ecx
	mov	eax, ebp
	xor	eax, ecx
	and	eax, r11d
	xor	eax, ecx
	add	r8d, edx
	lea	r8d, [rax + r8 + 0x265e5a51]
	rol	r8d, 0xe
	add	r8d, ebp
	mov	eax, r8d
	xor	eax, ebp
	and	eax, ecx
	xor	eax, ebp
	add	r11d, r10d
	lea	r11d, [rax + r11 - 0x16493856]
	rol	r11d, 0x14
	add	r11d, r8d
	mov	eax, r11d
	xor	eax, r8d
	and	eax, ebp
	xor	eax, r8d
	mov	r9d, dword ptr [rsp - 0x6c]
	add	ecx, r9d
	lea	ecx, [rax + rcx - 0x29d0efa3]
	rol	ecx, 5
	add	ecx, r11d
	mov	eax, ecx
	xor	eax, r11d
	and	eax, r8d
	xor	eax, r11d
	add	ebp, r13d
	lea	ebp, [rax + rbp + 0x2441453]
	rol	ebp, 9
	add	ebp, ecx
	mov	eax, ebp
	xor	eax, ecx
	and	eax, r11d
	xor	eax, ecx
	add	r8d, r15d
	lea	r8d, [rax + r8 - 0x275e197f]
	rol	r8d, 0xe
	add	r8d, ebp
	mov	eax, r8d
	xor	eax, ebp
	and	eax, ecx
	xor	eax, ebp
	mov	r10d, dword ptr [rsp - 0x64]
	add	r11d, r10d
	lea	r11d, [rax + r11 - 0x182c0438]
	rol	r11d, 0x14
	add	r11d, r8d
	mov	eax, r11d
	xor	eax, r8d
	and	eax, ebp
	xor	eax, r8d
	add	ecx, dword ptr [rsp - 0x7c]
	lea	ecx, [rax + rcx + 0x21e1cde6]
	rol	ecx, 5
	add	ecx, r11d
	mov	eax, ecx
	xor	eax, r11d
	and	eax, r8d
	xor	eax, r11d
	mov	r13d, r14d
	mov	dword ptr [rsp - 0x4c], r13d
	add	ebp, r13d
	lea	ebp, [rax + rbp - 0x3cc8f82a]
	rol	ebp, 9
	add	ebp, ecx
	mov	eax, ebp
	xor	eax, ecx
	and	eax, r11d
	xor	eax, ecx
	add	r8d, r12d
	lea	r8d, [rax + r8 - 0xb2af279]
	rol	r8d, 0xe
	add	r8d, ebp
	mov	eax, r8d
	xor	eax, ebp
	and	eax, ecx
	xor	eax, ebp
	mov	esi, dword ptr [rsp - 0x68]
	add	r11d, esi
	lea	r11d, [rax + r11 + 0x455a14ed]
	rol	r11d, 0x14
	add	r11d, r8d
	mov	eax, r11d
	xor	eax, r8d
	and	eax, ebp
	xor	eax, r8d
	add	ecx, ebx
	mov	dword ptr [rsp - 0x44], ebx
	lea	ecx, [rax + rcx - 0x561c16fb]
	rol	ecx, 5
	add	ecx, r11d
	mov	eax, ecx
	xor	eax, r11d
	and	eax, r8d
	xor	eax, r11d
	mov	rdx, qword ptr [rsp - 0x30]
	add	ebp, edx
	lea	r14d, [rax + rbp - 0x3105c08]
	rol	r14d, 9
	add	r14d, ecx
	mov	eax, r14d
	xor	eax, ecx
	and	eax, r11d
	xor	eax, ecx
	mov	edx, dword ptr [rsp - 0x60]
	add	r8d, edx
	lea	r8d, [rax + r8 + 0x676f02d9]
	rol	r8d, 0xe
	add	r8d, r14d
	mov	ebp, r8d
	xor	ebp, r14d
	mov	eax, ebp
	and	eax, ecx
	xor	eax, r14d
	mov	r15d, dword ptr [rsp - 0x40]
	add	r11d, r15d
	lea	eax, [rax + r11 - 0x72d5b376]
	rol	eax, 0x14
	add	eax, r8d
	xor	ebp, eax
	add	ecx, r9d
	lea	r11d, [rbp + rcx - 0x5c6be]
	rol	r11d, 4
	add	r11d, eax
	mov	ecx, eax
	xor	ecx, r8d
	xor	ecx, r11d
	add	r14d, esi
	lea	r14d, [rcx + r14 - 0x788e097f]
	rol	r14d, 0xb
	add	r14d, r11d
	mov	ebp, r11d
	xor	ebp, eax
	xor	ebp, r14d
	add	r8d, dword ptr [rsp - 0x5c]
	lea	ebp, [rbp + r8 + 0x6d9d6122]
	rol	ebp, 0x10
	add	ebp, r14d
	mov	ecx, r14d
	xor	ecx, r11d
	xor	ecx, ebp
	add	eax, r13d
	lea	r8d, [rcx + rax - 0x21ac7f4]
	rol	r8d, 0x17
	add	r8d, ebp
	mov	eax, ebp
	xor	eax, r14d
	xor	eax, r8d
	mov	rcx, qword ptr [rsp - 0x58]
	add	r11d, ecx
	lea	r11d, [rax + r11 - 0x5b4115bc]
	rol	r11d, 4
	add	r11d, r8d
	mov	ecx, r8d
	xor	ecx, ebp
	xor	ecx, r11d
	add	r14d, r10d
	lea	r14d, [rcx + r14 + 0x4bdecfa9]
	rol	r14d, 0xb
	add	r14d, r11d
	mov	eax, r11d
	xor	eax, r8d
	xor	eax, r14d
	add	ebp, edx
	lea	ebp, [rax + rbp - 0x944b4a0]
	rol	ebp, 0x10
	add	ebp, r14d
	mov	eax, r14d
	xor	eax, r11d
	xor	eax, ebp
	mov	r10d, dword ptr [rsp - 0x48]
	add	r8d, r10d
	lea	r8d, [rax + r8 - 0x41404390]
	rol	r8d, 0x17
	add	r8d, ebp
	mov	eax, ebp
	xor	eax, r14d
	xor	eax, r8d
	add	r11d, ebx
	lea	eax, [rax + r11 + 0x289b7ec6]
	rol	eax, 4
	add	eax, r8d
	mov	ecx, r8d
	xor	ecx, ebp
	xor	ecx, eax
	mov	rsi, qword ptr [rsp - 0x10]
	add	r14d, esi
	lea	r11d, [rcx + r14 - 0x155ed806]
	rol	r11d, 0xb
	add	r11d, eax
	mov	ecx, eax
	xor	ecx, r8d
	xor	ecx, r11d
	mov	r9, qword ptr [rsp - 0x18]
	add	ebp, r9d
	lea	r14d, [rcx + rbp - 0x2b10cf7b]
	rol	r14d, 0x10
	add	r14d, r11d
	mov	ecx, r11d
	xor	ecx, eax
	xor	ecx, r14d
	mov	r12d, dword ptr [rsp - 0x38]
	add	r8d, r12d
	lea	r8d, [rcx + r8 + 0x4881d05]
	rol	r8d, 0x17
	add	r8d, r14d
	mov	ecx, r14d
	xor	ecx, r11d
	xor	ecx, r8d
	add	eax, dword ptr [rsp - 0x7c]
	lea	ecx, [rcx + rax - 0x262b2fc7]
	rol	ecx, 4
	add	ecx, r8d
	mov	eax, r8d
	xor	eax, r14d
	xor	eax, ecx
	add	r11d, r15d
	lea	edx, [rax + r11 - 0x1924661b]
	rol	edx, 0xb
	add	edx, ecx
	mov	ebp, ecx
	xor	ebp, r8d
	xor	ebp, edx
	mov	r13d, dword ptr [rsp - 0x3c]
	add	r14d, r13d
	lea	r11d, [rbp + r14 + 0x1fa27cf8]
	rol	r11d, 0x10
	add	r11d, edx
	mov	ebp, edx
	xor	ebp, ecx
	xor	ebp, r11d
	mov	rax, qword ptr [rsp - 0x30]
	add	r8d, eax
	mov	r14, rax
	lea	r8d, [rbp + r8 - 0x3b53a99b]
	add	ecx, esi
	rol	r8d, 0x17
	add	r8d, r11d
	mov	eax, edx
	not	eax
	or	eax, r8d
	xor	eax, r11d
	lea	ecx, [rax + rcx - 0xbd6ddbc]
	add	edx, dword ptr [rsp - 0x60]
	rol	ecx, 6
	add	ecx, r8d
	mov	eax, r11d
	not	eax
	or	eax, ecx
	xor	eax, r8d
	lea	ebp, [rax + rdx + 0x432aff97]
	add	r11d, dword ptr [rsp - 0x4c]
	rol	ebp, 0xa
	add	ebp, ecx
	mov	eax, r8d
	not	eax
	or	eax, ebp
	xor	eax, ecx
	lea	eax, [rax + r11 - 0x546bdc59]
	add	r8d, dword ptr [rsp - 0x6c]
	rol	eax, 0xf
	add	eax, ebp
	mov	edx, ecx
	not	edx
	or	edx, eax
	xor	edx, ebp
	lea	esi, [rdx + r8 - 0x36c5fc7]
	add	ecx, r15d
	rol	esi, 0x15
	add	esi, eax
	mov	edx, ebp
	not	edx
	or	edx, esi
	xor	edx, eax
	lea	ecx, [rdx + rcx + 0x655b59c3]
	add	ebp, r9d
	rol	ecx, 6
	add	ecx, esi
	mov	edx, eax
	not	edx
	or	edx, ecx
	xor	edx, esi
	lea	ebp, [rdx + rbp - 0x70f3336e]
	add	eax, r10d
	mov	rbx, qword ptr [rsp - 0x78]
	rol	ebp, 0xa
	add	ebp, ecx
	mov	edx, esi
	not	edx
	or	edx, ebp
	xor	edx, ecx
	lea	eax, [rdx + rax - 0x100b83]
	rol	eax, 0xf
	add	eax, ebp
	mov	rdx, qword ptr [rsp - 0x58]
	add	esi, edx
	mov	edx, ecx
	not	edx
	or	edx, eax
	xor	edx, ebp
	lea	r8d, [rdx + rsi - 0x7a7ba22f]
	rol	r8d, 0x15
	add	r8d, eax
	add	ecx, dword ptr [rsp - 0x68]
	mov	edx, ebp
	not	edx
	or	edx, r8d
	xor	edx, eax
	lea	ecx, [rdx + rcx + 0x6fa87e4f]
	rol	ecx, 6
	add	ecx, r8d
	add	ebp, r13d
	mov	edx, eax
	not	edx
	or	edx, ecx
	xor	edx, r8d
	lea	edx, [rdx + rbp - 0x1d31920]
	rol	edx, 0xa
	add	edx, ecx
	add	eax, r12d
	mov	esi, r8d
	not	esi
	or	esi, edx
	xor	esi, ecx
	lea	ebp, [rsi + rax - 0x5cfebcec]
	rol	ebp, 0xf
	add	ebp, edx
	add	r8d, dword ptr [rsp - 0x44]
	mov	eax, ecx
	not	eax
	or	eax, ebp
	xor	eax, edx
	lea	esi, [rax + r8 + 0x4e0811a1]
	mov	r8, qword ptr [rsp - 0x20]
	mov	r10d, dword ptr [rsp - 0x34]
	rol	esi, 0x15
	add	esi, ebp
	add	ecx, dword ptr [rsp - 0x64]
	mov	eax, edx
	not	eax
	or	eax, esi
	xor	eax, ebp
	lea	ecx, [rax + rcx - 0x8ac817e]
	rol	ecx, 6
	add	ecx, esi
	add	edx, dword ptr [rsp - 0x5c]
	mov	eax, ebp
	not	eax
	or	eax, ecx
	xor	eax, esi
	lea	edx, [rax + rdx - 0x42c50dcb]
	rol	edx, 0xa
	add	edx, ecx
	add	ebp, r14d
	mov	eax, esi
	not	eax
	or	eax, edx
	xor	eax, ecx
	lea	eax, [rax + rbp + 0x2ad7d2bb]
	add	esi, dword ptr [rsp - 0x7c]
	rol	eax, 0xf
	add	eax, edx
	add	r10d, ecx
	not	ecx
	or	ecx, eax
	xor	ecx, edx
	lea	ecx, [rcx + rsi - 0x14792c6f]
	rol	ecx, 0x15
	add	ebx, eax
	add	ebx, ecx
	mov	rcx, qword ptr [rsp]
	add	eax, ecx
	mov	rcx, qword ptr [rsp - 8]
	add	edx, ecx
	add	rdi, 0x40
	cmp	rdi, r8
	mov	r9d, eax
	mov	ebp, edx
	jb	.label_524
	jmp	.label_526
.label_525:
	mov	edx, ebp
	mov	eax, r9d
.label_526:
	mov	rcx, qword ptr [rsp - 0x28]
	mov	dword ptr [rcx], r10d
	mov	dword ptr [rcx + 4], ebx
	mov	dword ptr [rcx + 8], eax
	mov	dword ptr [rcx + 0xc], edx
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40655c
	.globl sub_40655c
	.type sub_40655c, @function
sub_40655c:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x406560
	.globl version_etc_ar
	.type version_etc_ar, @function
version_etc_ar:

	mov	r9, -1
	nop	word ptr [rax + rax]
.label_527:
	cmp	qword ptr [r8 + r9*8 + 8], 0
	lea	r9, [r9 + 1]
	jne	.label_527
	jmp	version_etc_arn
	.section	.text
	.align	16
	#Procedure 0x406581
	.globl sub_406581
	.type sub_406581, @function
sub_406581:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x406590

	.globl xmalloc
	.type xmalloc, @function
xmalloc:
	push	rbx
	mov	rbx, rdi
	call	malloc
	test	rbx, rbx
	je	.label_528
	test	rax, rax
	je	.label_529
.label_528:
	pop	rbx
	ret	
.label_529:
	call	xalloc_die
	.section	.text
	.align	16
	#Procedure 0x4065aa
	.globl sub_4065aa
	.type sub_4065aa, @function
sub_4065aa:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4065b0

	.globl md5_stream
	.type md5_stream, @function
md5_stream:
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0xa0
	mov	r14, rsi
	mov	r12, rdi
	mov	edi, 0x8048
	call	malloc
	mov	r15, rax
	mov	eax, 1
	test	r15, r15
	je	.label_530
	movaps	xmm0, xmmword ptr [rip + label_271]
	movaps	xmmword ptr [rsp], xmm0
	mov	dword ptr [rsp + 0x14], 0
	mov	dword ptr [rsp + 0x10], 0
	mov	dword ptr [rsp + 0x18], 0
	lea	r13, [rsp]
	jmp	.label_531
	.section	.text
	.align	16
	#Procedure 0x40660a
	.globl sub_40660a
	.type sub_40660a, @function
sub_40660a:

	nop	word ptr [rax + rax]
.label_535:
	mov	esi, 0x8000
	mov	rdi, r15
	mov	rdx, r13
	call	md5_process_block
.label_531:
	xor	ebx, ebx
	nop	word ptr cs:[rax + rax]
.label_537:
	test	byte ptr [r12], 0x10
	jne	.label_533
	lea	rdi, [r15 + rbx]
	mov	edx, 0x8000
	sub	rdx, rbx
	mov	esi, 1
	mov	rcx, r12
	call	fread_unlocked
	add	rbx, rax
	cmp	rbx, 0x8000
	je	.label_535
	test	rax, rax
	jne	.label_537
	test	byte ptr [r12], 0x20
	jne	.label_534
.label_533:
	test	rbx, rbx
	je	.label_532
	lea	rdx, [rsp]
	mov	rdi, r15
	mov	rsi, rbx
	call	md5_process_bytes
.label_532:
	mov	eax, dword ptr [rsp + 0x18]
	cmp	rax, 0x38
	mov	ecx, 0x10
	mov	ebx, 0x20
	cmovb	rbx, rcx
	mov	ecx, dword ptr [rsp + 0x10]
	add	ecx, eax
	mov	dword ptr [rsp + 0x10], ecx
	jae	.label_536
	inc	dword ptr [rsp + 0x14]
.label_536:
	lea	edx, [rcx*8]
	lea	r12, [rsp + 0x1c]
	mov	dword ptr [rsp + rbx*4 + 0x14], edx
	mov	edx, dword ptr [rsp + 0x14]
	shld	edx, ecx, 3
	mov	dword ptr [rsp + rbx*4 + 0x18], edx
	lea	rdi, [rsp + rax + 0x1c]
	lea	rdx, [rbx*4 - 8]
	sub	rdx, rax
	mov	esi, OFFSET FLAT:fillbuf
	call	memcpy
	shl	rbx, 2
	lea	rdx, [rsp]
	mov	rdi, r12
	mov	rsi, rbx
	call	md5_process_block
	movaps	xmm0, xmmword ptr [rsp]
	movups	xmmword ptr [r14], xmm0
	mov	rdi, r15
	call	free
	xor	eax, eax
	jmp	.label_530
.label_534:
	mov	rdi, r15
	call	free
	mov	eax, 1
.label_530:
	add	rsp, 0xa0
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	ret	
	.section	.text
	.align	16
	#Procedure 0x406721
	.globl sub_406721
	.type sub_406721, @function
sub_406721:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x406795
	.globl sub_406795
	.type sub_406795, @function
sub_406795:

	nop	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4067a2
	.globl sub_4067a2
	.type sub_4067a2, @function
sub_4067a2:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4067c6
	.globl sub_4067c6
	.type sub_4067c6, @function
sub_4067c6:

	nop	word ptr cs:[rax + rax]
