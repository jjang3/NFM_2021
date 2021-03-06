	.section	.text
	.align	16
	#Procedure 0x401a59
	.globl sub_401a59
	.type sub_401a59, @function
sub_401a59:

	hlt	
	.section	.text
	.align	16
	#Procedure 0x401a5a
	.globl sub_401a5a
	.type sub_401a5a, @function
sub_401a5a:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x401a92
	.globl sub_401a92
	.type sub_401a92, @function
sub_401a92:

	nop	dword ptr [rax]
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x401ada
	.globl sub_401ada
	.type sub_401ada, @function
sub_401ada:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x401afc
	.globl sub_401afc
	.type sub_401afc, @function
sub_401afc:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x401b0d
	.globl sub_401b0d
	.type sub_401b0d, @function
sub_401b0d:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x401b26
	.globl sub_401b26
	.type sub_401b26, @function
sub_401b26:

	nop	word ptr cs:[rax + rax]
.label_10:
	push	rax
	call	abort
	.section	.text
	.align	16
	#Procedure 0x401b36
	.globl sub_401b36
	.type sub_401b36, @function
sub_401b36:

	nop	
	.section	.text
	.align	16
	#Procedure 0x401b37

	.globl i_ring_pop
	.type i_ring_pop, @function
i_ring_pop:
	cmp	byte ptr [rdi + 0x1c], 0
	jne	.label_10
	mov	ecx, dword ptr [rdi + 0x10]
	mov	edx, dword ptr [rdi + 0x14]
	mov	eax, dword ptr [rdi + rdx*4]
	mov	dword ptr [rdi + rdx*4], ecx
	mov	ecx, dword ptr [rdi + 0x14]
	cmp	ecx, dword ptr [rdi + 0x18]
	jne	.label_9
	mov	byte ptr [rdi + 0x1c], 1
	ret	
.label_9:
	add	ecx, 3
	and	ecx, 3
	mov	dword ptr [rdi + 0x14], ecx
	ret	
.label_11:
	call	abort
	.section	.text
	.align	16
	#Procedure 0x401b65
	.globl sub_401b65
	.type sub_401b65, @function
sub_401b65:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x401b6d
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
	je	.label_11
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
	#Procedure 0x401bd0
	.globl hash_table_ok
	.type hash_table_ok, @function
hash_table_ok:

	mov	rax, qword ptr [rdi]
	mov	r9, qword ptr [rdi + 8]
	xor	r10d, r10d
	cmp	rax, r9
	mov	ecx, 0
	jae	.label_17
	mov	rcx, rax
	not	rcx
	add	r9, rcx
	shr	r9, 4
	lea	rsi, [r9 + 1]
	mov	r8d, esi
	and	r8d, 1
	xor	ecx, ecx
	test	r9, r9
	je	.label_19
	sub	rsi, r8
	xor	ecx, ecx
	xor	r10d, r10d
	nop	
.label_14:
	cmp	qword ptr [rax], 0
	je	.label_15
	mov	rdx, rax
	nop	dword ptr [rax]
.label_18:
	inc	rcx
	mov	rdx, qword ptr [rdx + 8]
	test	rdx, rdx
	jne	.label_18
	inc	r10
.label_15:
	cmp	qword ptr [rax + 0x10], 0
	je	.label_20
	lea	rdx, [rax + 0x10]
	nop	word ptr [rax + rax]
.label_12:
	inc	rcx
	mov	rdx, qword ptr [rdx + 8]
	test	rdx, rdx
	jne	.label_12
	inc	r10
.label_20:
	add	rax, 0x20
	add	rsi, -2
	jne	.label_14
	jmp	.label_16
.label_19:
	xor	r10d, r10d
.label_16:
	test	r8, r8
	je	.label_17
	cmp	qword ptr [rax], 0
	je	.label_17
	nop	dword ptr [rax]
.label_21:
	inc	rcx
	mov	rax, qword ptr [rax + 8]
	test	rax, rax
	jne	.label_21
	inc	r10
.label_17:
	cmp	r10, qword ptr [rdi + 0x18]
	jne	.label_22
	mov	al, 1
	cmp	rcx, qword ptr [rdi + 0x20]
	je	.label_13
.label_22:
	xor	eax, eax
.label_13:
	ret	
	.section	.text
	.align	16
	#Procedure 0x401c90

	.globl hash_rehash
	.type hash_rehash, @function
hash_rehash:
	push	rbp
	push	r15
	push	r14
	push	r12
	push	rbx
	sub	rsp, 0x50
	mov	r14, rdi
	mov	rax, qword ptr [r14 + 0x28]
	cmp	byte ptr [rax + 0x10], 0
	jne	.label_31
	mov	ecx, esi
	and	ecx, 1
	test	rsi, rsi
	js	.label_37
	cvtsi2ss	xmm0, rsi
	jmp	.label_36
.label_37:
	shr	rsi, 1
	or	rcx, rsi
	cvtsi2ss	xmm0, rcx
	addss	xmm0, xmm0
.label_36:
	divss	xmm0, dword ptr [rax + 8]
	movss	xmm1, dword ptr [rip + label_26]
	movaps	xmm2, xmm0
	subss	xmm2, xmm1
	cvttss2si	rax, xmm2
	movabs	rcx, 0x8000000000000000
	xor	rcx, rax
	cvttss2si	rsi, xmm0
	ucomiss	xmm0, xmm1
	cmovae	rsi, rcx
	ucomiss	xmm0, dword ptr [rip + label_27]
	jae	.label_28
.label_31:
	cmp	rsi, 0xa
	mov	ebx, 0xa
	cmovae	rbx, rsi
	or	rbx, 1
	jmp	.label_25
	.section	.text
	.align	16
	#Procedure 0x401d1b
	.globl sub_401d1b
	.type sub_401d1b, @function
sub_401d1b:

	nop	dword ptr [rax + rax]
.label_39:
	add	rbx, 2
.label_25:
	cmp	rbx, -1
	je	.label_28
	cmp	rbx, 0xa
	mov	ecx, 3
	jb	.label_35
	mov	esi, 0xc
	mov	edi, 9
	mov	ecx, 3
	nop	dword ptr [rax + rax]
.label_33:
	xor	edx, edx
	mov	rax, rbx
	div	rcx
	test	rdx, rdx
	je	.label_35
	lea	rdi, [rdi + rsi + 4]
	add	rcx, 2
	add	rsi, 8
	cmp	rdi, rbx
	jb	.label_33
.label_35:
	xor	edx, edx
	mov	rax, rbx
	div	rcx
	test	rdx, rdx
	je	.label_39
	lea	rax, [rbx - 1]
	movabs	rcx, 0xffffffffffffffe
	cmp	rax, rcx
	ja	.label_28
	mov	bpl, 1
	cmp	rbx, qword ptr [r14 + 0x10]
	je	.label_29
	mov	esi, 0x10
	mov	rdi, rbx
	call	rpl_calloc
	mov	qword ptr [rsp], rax
	test	rax, rax
	je	.label_28
	mov	qword ptr [rsp + 0x10], rbx
	shl	rbx, 4
	add	rax, rbx
	mov	qword ptr [rsp + 8], rax
	xorps	xmm0, xmm0
	movups	xmmword ptr [rsp + 0x18], xmm0
	movups	xmm0, xmmword ptr [r14 + 0x28]
	movups	xmmword ptr [rsp + 0x28], xmm0
	movups	xmm0, xmmword ptr [r14 + 0x38]
	movups	xmmword ptr [rsp + 0x38], xmm0
	mov	rax, qword ptr [r14 + 0x48]
	mov	qword ptr [rsp + 0x48], rax
	lea	rdi, [rsp]
	xor	edx, edx
	mov	rsi, r14
	call	transfer_entries
	test	al, al
	je	.label_43
	mov	rdi, qword ptr [r14]
	call	free
	movaps	xmm0, xmmword ptr [rsp]
	movups	xmmword ptr [r14], xmm0
	movaps	xmm0, xmmword ptr [rsp + 0x10]
	movups	xmmword ptr [r14 + 0x10], xmm0
	mov	rax, qword ptr [rsp + 0x48]
	mov	qword ptr [r14 + 0x48], rax
	jmp	.label_29
.label_43:
	mov	rax, qword ptr [rsp + 0x48]
	mov	qword ptr [r14 + 0x48], rax
	mov	r12, qword ptr [rsp]
	mov	r15, qword ptr [rsp + 8]
	jmp	.label_38
	.section	.text
	.align	16
	#Procedure 0x401e3e
	.globl sub_401e3e
	.type sub_401e3e, @function
sub_401e3e:

	nop	
.label_24:
	add	r12, 0x10
.label_38:
	cmp	r12, r15
	jae	.label_23
	cmp	qword ptr [r12], 0
	je	.label_24
	mov	rbp, qword ptr [r12 + 8]
	test	rbp, rbp
	je	.label_32
	mov	rsi, qword ptr [r14 + 0x10]
	nop	word ptr cs:[rax + rax]
.label_30:
	mov	rbx, qword ptr [rbp]
	mov	rdi, rbx
	call	qword ptr [r14 + 0x30]
	mov	rsi, qword ptr [r14 + 0x10]
	cmp	rax, rsi
	jae	.label_42
	mov	rdx, qword ptr [r14]
	mov	rcx, qword ptr [rbp + 8]
	shl	rax, 4
	cmp	qword ptr [rdx + rax], 0
	je	.label_40
	mov	rdi, qword ptr [rdx + rax + 8]
	mov	qword ptr [rbp + 8], rdi
	mov	qword ptr [rdx + rax + 8], rbp
	jmp	.label_34
	.section	.text
	.align	16
	#Procedure 0x401eaa
	.globl sub_401eaa
	.type sub_401eaa, @function
sub_401eaa:

	nop	word ptr [rax + rax]
.label_40:
	add	rdx, rax
	mov	qword ptr [rdx], rbx
	inc	qword ptr [r14 + 0x18]
	mov	qword ptr [rbp], 0
	mov	rax, qword ptr [r14 + 0x48]
	mov	qword ptr [rbp + 8], rax
	mov	qword ptr [r14 + 0x48], rbp
.label_34:
	test	rcx, rcx
	mov	rbp, rcx
	jne	.label_30
.label_32:
	mov	qword ptr [r12 + 8], 0
	jmp	.label_24
.label_23:
	lea	rsi, [rsp]
	xor	edx, edx
	mov	rdi, r14
	call	transfer_entries
	test	al, al
	je	.label_41
	mov	rdi, qword ptr [rsp]
	call	free
.label_28:
	xor	ebp, ebp
.label_29:
	mov	eax, ebp
	add	rsp, 0x50
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_42:
	call	abort
.label_41:
	call	abort
	.section	.text
	.align	16
	#Procedure 0x401f1a
	.globl sub_401f1a
	.type sub_401f1a, @function
sub_401f1a:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x401f20
	.globl hash_get_entries
	.type hash_get_entries, @function
hash_get_entries:

	mov	r9, qword ptr [rdi]
	mov	r8, qword ptr [rdi + 8]
	xor	eax, eax
	cmp	r9, r8
	jae	.label_44
	xor	eax, eax
.label_46:
	cmp	qword ptr [r9], 0
	je	.label_45
	test	r9, r9
	je	.label_45
	mov	r8, r9
	nop	
.label_47:
	cmp	rax, rdx
	jae	.label_44
	mov	rcx, qword ptr [r8]
	mov	qword ptr [rsi + rax*8], rcx
	inc	rax
	mov	r8, qword ptr [r8 + 8]
	test	r8, r8
	jne	.label_47
	mov	r8, qword ptr [rdi + 8]
.label_45:
	add	r9, 0x10
	cmp	r9, r8
	jb	.label_46
.label_44:
	ret	
	.section	.text
	.align	16
	#Procedure 0x401f66
	.globl sub_401f66
	.type sub_401f66, @function
sub_401f66:

	nop	word ptr cs:[rax + rax]
.label_49:
	call	xalloc_die
	.section	.text
	.align	16
	#Procedure 0x401f75
	.globl sub_401f75
	.type sub_401f75, @function
sub_401f75:

	nop	dword ptr [rax + rax]
.label_50:
	mov	rsi, rbx
	call	realloc
	test	rbx, rbx
	je	.label_48
	test	rax, rax
	je	.label_49
.label_48:
	pop	rbx
	ret	
	.section	.text
	.align	16
	#Procedure 0x401f91
	.globl xnrealloc
	.type xnrealloc, @function
xnrealloc:

	push	rbx
	mov	rbx, rdx
	movabs	rax, 0x7fffffffffffffff
	xor	edx, edx
	div	rbx
	cmp	rax, rsi
	jb	.label_49
	imul	rbx, rsi
	test	rdi, rdi
	je	.label_50
	test	rbx, rbx
	jne	.label_50
	call	free
	xor	eax, eax
	pop	rbx
	ret	
	.section	.text
	.align	16
	#Procedure 0x401fc0

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
	je	.label_51
	test	r15, r15
	je	.label_52
.label_51:
	mov	rdi, r15
	mov	rsi, r14
	mov	rdx, rbx
	call	memcpy
	mov	rax, r15
	pop	rbx
	pop	r14
	pop	r15
	ret	
.label_52:
	call	xalloc_die
	.section	.text
	.align	16
	#Procedure 0x401ffc
	.globl sub_401ffc
	.type sub_401ffc, @function
sub_401ffc:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x402000

	.globl fts_safe_changedir
	.type fts_safe_changedir, @function
fts_safe_changedir:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x98
	mov	rbx, rcx
	mov	r13d, edx
	mov	r12, rsi
	mov	r15, rdi
	test	rbx, rbx
	je	.label_53
	movzx	edx, byte ptr [rbx]
	mov	ecx, 0x2e
	mov	eax, 0x2e
	sub	eax, edx
	jne	.label_54
	movzx	eax, byte ptr [rbx + 1]
	sub	ecx, eax
	mov	eax, ecx
	jne	.label_54
	movzx	eax, byte ptr [rbx + 2]
	neg	eax
.label_54:
	test	eax, eax
	sete	r14b
	jmp	.label_66
.label_53:
	xor	r14d, r14d
.label_66:
	mov	eax, dword ptr [r15 + 0x48]
	test	al, 4
	jne	.label_67
	test	r13d, r13d
	mov	qword ptr [rsp], r12
	jns	.label_68
	mov	ecx, r14d
	xor	cl, 1
	jne	.label_68
	and	eax, 0x200
	je	.label_68
	lea	rbp, [r15 + 0x60]
	mov	rdi, rbp
	call	i_ring_empty
	test	al, al
	jne	.label_68
	mov	rdi, rbp
	call	i_ring_pop
	xor	ecx, ecx
	test	eax, eax
	cmovns	rbx, rcx
	cmovns	r13d, eax
	mov	r14b, 1
.label_68:
	test	r13d, r13d
	mov	r12d, r13d
	jns	.label_59
	mov	eax, dword ptr [r15 + 0x48]
	mov	edx, eax
	and	edx, 0x10
	shl	edx, 0xd
	or	edx, 0x90900
	test	ah, 2
	jne	.label_61
	xor	eax, eax
	mov	rdi, rbx
	mov	esi, edx
	call	open_safer
	jmp	.label_65
.label_67:
	xor	ebp, ebp
	test	r13d, r13d
	js	.label_60
	and	eax, 0x200
	je	.label_60
	mov	edi, r13d
	call	close
	jmp	.label_60
.label_61:
	mov	edi, dword ptr [r15 + 0x2c]
	xor	eax, eax
	mov	rsi, rbx
	call	openat_safer
.label_65:
	mov	r12d, eax
	mov	ebp, 0xffffffff
	test	r12d, r12d
	js	.label_60
.label_59:
	mov	eax, dword ptr [r15 + 0x48]
	test	al, 2
	jne	.label_55
	test	rbx, rbx
	je	.label_58
	cmp	byte ptr [rbx], 0x2e
	jne	.label_58
	cmp	byte ptr [rbx + 1], 0x2e
	jne	.label_58
	cmp	byte ptr [rbx + 2], 0
	jne	.label_58
.label_55:
	lea	rdx, [rsp + 8]
	mov	edi, 1
	mov	esi, r12d
	call	__fxstat
	test	eax, eax
	jne	.label_64
	mov	rcx, qword ptr [rsp]
	mov	rax, qword ptr [rcx + 0x78]
	cmp	rax, qword ptr [rsp + 8]
	jne	.label_63
	mov	rax, qword ptr [rcx + 0x80]
	cmp	rax, qword ptr [rsp + 0x10]
	jne	.label_63
	mov	eax, dword ptr [r15 + 0x48]
.label_58:
	test	ah, 2
	jne	.label_69
	mov	edi, r12d
	call	fchdir
	mov	ebp, eax
	jmp	.label_70
.label_69:
	mov	esi, dword ptr [r15 + 0x2c]
	cmp	esi, r12d
	jne	.label_71
	cmp	esi, -0x64
	jne	.label_62
.label_71:
	test	r14b, r14b
	je	.label_72
	test	al, 4
	jne	.label_57
	test	esi, esi
	js	.label_57
	mov	edi, esi
	jmp	.label_56
.label_63:
	call	__errno_location
	mov	dword ptr [rax], 2
.label_64:
	mov	ebp, 0xffffffff
.label_70:
	test	r13d, r13d
	jns	.label_60
	call	__errno_location
	mov	rbx, rax
	mov	r14d, dword ptr [rbx]
	mov	edi, r12d
	call	close
	mov	dword ptr [rbx], r14d
	jmp	.label_60
.label_72:
	lea	rdi, [r15 + 0x60]
	call	i_ring_push
	test	eax, eax
	js	.label_57
	mov	edi, eax
.label_56:
	call	close
.label_57:
	mov	dword ptr [r15 + 0x2c], r12d
	xor	ebp, ebp
.label_60:
	mov	eax, ebp
	add	rsp, 0x98
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_62:
	call	abort
	.section	.text
	.align	16
	#Procedure 0x4021e9
	.globl sub_4021e9
	.type sub_4021e9, @function
sub_4021e9:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x4021f0
	.globl set_custom_quoting
	.type set_custom_quoting, @function
set_custom_quoting:

	test	rdi, rdi
	mov	eax, OFFSET FLAT:default_quoting_options
	cmovne	rax, rdi
	mov	dword ptr [rax], 0xa
	test	rsi, rsi
	je	.label_73
	test	rdx, rdx
	je	.label_73
	mov	qword ptr [rax + 0x28], rsi
	mov	qword ptr [rax + 0x30], rdx
	ret	
.label_73:
	push	rax
	call	abort
	.section	.text
	.align	16
	#Procedure 0x40221b
	.globl sub_40221b
	.type sub_40221b, @function
sub_40221b:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x402220

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
	je	.label_74
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
.label_74:
	call	abort
	.section	.text
	.align	16
	#Procedure 0x40228c
	.globl sub_40228c
	.type sub_40228c, @function
sub_40228c:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x402290
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
	#Procedure 0x4022c6
	.globl sub_4022c6
	.type sub_4022c6, @function
sub_4022c6:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4022d0

	.globl close_stdin
	.type close_stdin, @function
close_stdin:
	push	rbp
	push	r14
	push	rbx
	mov	rbx, qword ptr [rip + stdin]
	mov	rdi, rbx
	call	freadahead
	xor	ebp, ebp
	test	rax, rax
	je	.label_76
	xor	esi, esi
	mov	edx, 1
	mov	rdi, rbx
	call	rpl_fseeko
	test	eax, eax
	jne	.label_76
	mov	rdi, qword ptr [rip + stdin]
	call	rpl_fflush
	test	eax, eax
	setne	bpl
.label_76:
	mov	rdi, qword ptr [rip + stdin]
	call	close_stream
	test	bpl, bpl
	jne	.label_75
	test	eax, eax
	jne	.label_75
	pop	rbx
	pop	r14
	pop	rbp
	jmp	close_stdout
.label_75:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_79
	mov	edx, 5
	call	dcgettext
	mov	r14, rax
	mov	rbx, qword ptr [rip + file_name]
	call	__errno_location
	test	rbx, rbx
	mov	ebp, dword ptr [rax]
	jne	.label_77
	xor	edi, edi
	mov	edx, OFFSET FLAT:label_81
	xor	eax, eax
	mov	esi, ebp
	mov	rcx, r14
	call	error
	jmp	.label_78
.label_77:
	mov	rdi, rbx
	call	quotearg_colon
	mov	rcx, rax
	xor	edi, edi
	mov	edx, OFFSET FLAT:label_80
	xor	eax, eax
	mov	esi, ebp
	mov	r8, r14
	call	error
.label_78:
	call	close_stdout
	mov	edi, dword ptr [rip + exit_failure]
	call	_exit
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4023a0
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
	#Procedure 0x4023d3
	.globl sub_4023d3
	.type sub_4023d3, @function
sub_4023d3:

	nop	word ptr cs:[rax + rax]
.label_82:
	call	abort
	.section	.text
	.align	16
	#Procedure 0x4023e5
	.globl sub_4023e5
	.type sub_4023e5, @function
sub_4023e5:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4023f4
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
	je	.label_82
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
	.section	.text
	.align	16
	#Procedure 0x402450

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
	#Procedure 0x402467
	.globl sub_402467
	.type sub_402467, @function
sub_402467:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x402470

	.globl filesystem_type
	.type filesystem_type, @function
filesystem_type:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x78
	mov	r15d, esi
	mov	r13, rdi
	mov	rbx, qword ptr [r13 + 0x50]
	xor	eax, eax
	test	byte ptr [rbx + 0x49], 2
	je	.label_86
	mov	rbp, qword ptr [rbx + 0x50]
	test	rbp, rbp
	jne	.label_87
	xor	r12d, r12d
	mov	edi, 0xd
	xor	esi, esi
	mov	edx, OFFSET FLAT:dev_type_hash
	mov	ecx, OFFSET FLAT:dev_type_compare
	mov	r8d, OFFSET FLAT:free
	call	hash_initialize
	mov	rbp, rax
	mov	qword ptr [rbx + 0x50], rbp
	test	rbp, rbp
	mov	r14d, 0
	je	.label_88
.label_87:
	mov	rax, qword ptr [r13 + 0x78]
	mov	qword ptr [rsp], rax
	lea	rsi, [rsp]
	mov	rdi, rbp
	call	hash_lookup
	test	rax, rax
	je	.label_84
	mov	rax, qword ptr [rax + 8]
	jmp	.label_86
.label_83:
	mov	rdi, rbp
	call	free
.label_85:
	mov	rax, qword ptr [rsp]
.label_86:
	add	rsp, 0x78
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x402508
	.globl sub_402508
	.type sub_402508, @function
sub_402508:

	nop	word ptr [rax + rax]
.label_84:
	mov	r12b, 1
	mov	r14, rbp
.label_88:
	xor	eax, eax
	test	r15d, r15d
	js	.label_86
	lea	rsi, [rsp]
	mov	edi, r15d
	call	fstatfs
	mov	ecx, eax
	xor	eax, eax
	test	ecx, ecx
	jne	.label_86
	test	r12b, r12b
	je	.label_85
	mov	edi, 0x10
	call	malloc
	mov	rbp, rax
	test	rbp, rbp
	je	.label_85
	mov	rax, qword ptr [r13 + 0x78]
	mov	qword ptr [rbp], rax
	mov	rax, qword ptr [rsp]
	mov	qword ptr [rbp + 8], rax
	mov	rdi, r14
	mov	rsi, rbp
	call	hash_insert
	test	rax, rax
	je	.label_83
	cmp	rax, rbp
	je	.label_85
	call	abort
	.section	.text
	.align	16
	#Procedure 0x402570

	.globl close_stdout
	.type close_stdout, @function
close_stdout:
	push	rbp
	push	rbx
	push	rax
	mov	rdi, qword ptr [rip + stdout]
	call	close_stream
	test	eax, eax
	je	.label_93
	mov	bl, byte ptr [rip + ignore_EPIPE]
	call	__errno_location
	mov	rbp, rax
	cmp	bl, 0
	je	.label_91
	cmp	dword ptr [rbp], 0x20
	jne	.label_91
.label_93:
	mov	rdi, qword ptr [rip + stderr]
	call	close_stream
	test	eax, eax
	jne	.label_90
	add	rsp, 8
	pop	rbx
	pop	rbp
	ret	
.label_91:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_92
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
	mov	rdi, qword ptr [rip + file_name_0]
	test	rdi, rdi
	mov	ebp, dword ptr [rbp]
	jne	.label_89
	xor	edi, edi
	mov	edx, OFFSET FLAT:label_81
	xor	eax, eax
	mov	esi, ebp
	mov	rcx, rbx
	call	error
	mov	edi, dword ptr [rip + exit_failure]
	call	_exit
.label_89:
	call	quotearg_colon
	mov	rcx, rax
	xor	edi, edi
	mov	edx, OFFSET FLAT:label_80
	xor	eax, eax
	mov	esi, ebp
	mov	r8, rbx
	call	error
	mov	edi, dword ptr [rip + exit_failure]
	call	_exit
	nop	word ptr cs:[rax + rax]
.label_90:
	mov	edi, dword ptr [rip + exit_failure]
	call	_exit
	.section	.text
	.align	16
	#Procedure 0x402630

	.globl yesno
	.type yesno, @function
yesno:
	push	rbx
	sub	rsp, 0x10
	mov	qword ptr [rsp], 0
	mov	qword ptr [rsp + 8], 0
	mov	rcx, qword ptr [rip + stdin]
	lea	rdi, [rsp]
	lea	rsi, [rsp + 8]
	mov	edx, 0xa
	call	__getdelim
	test	rax, rax
	jle	.label_94
	mov	rdi, qword ptr [rsp]
	cmp	byte ptr [rdi + rax - 1], 0xa
	jne	.label_96
	mov	byte ptr [rdi + rax - 1], 0
	mov	rdi, qword ptr [rsp]
.label_96:
	call	rpmatch
	test	eax, eax
	setg	bl
	jmp	.label_95
.label_94:
	xor	ebx, ebx
.label_95:
	mov	rdi, qword ptr [rsp]
	call	free
	mov	eax, ebx
	add	rsp, 0x10
	pop	rbx
	ret	
	.section	.text
	.align	16
	#Procedure 0x402698
	.globl sub_402698
	.type sub_402698, @function
sub_402698:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4026a0

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
	je	.label_109
	mov	edx, OFFSET FLAT:label_100
	xor	eax, eax
	mov	rdi, r14
	mov	r8, rbx
	call	__fprintf_chk
	jmp	.label_106
.label_109:
	mov	edx, OFFSET FLAT:label_107
	xor	eax, eax
	mov	rdi, r14
	mov	rcx, rbx
	mov	r8, r9
	call	__fprintf_chk
.label_106:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_111
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
	mov	esi, OFFSET FLAT:label_108
	mov	edx, 5
	call	dcgettext
	mov	rdi, rax
	mov	rsi, r14
	call	fputs_unlocked
	cmp	r12, 9
	ja	.label_112
	jmp	qword ptr [(r12 * 8) + label_113]
.label_1146:
	add	rsp, 8
	jmp	.label_99
.label_112:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_103
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
	jmp	.label_99
.label_1147:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_98
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
.label_1148:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_104
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
.label_1149:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_101
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
.label_1150:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_115
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
	jmp	.label_99
.label_1151:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_114
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
	jmp	.label_99
.label_1152:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_97
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
	jmp	.label_99
.label_1153:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_102
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
	jmp	.label_99
.label_1155:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_105
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
	jmp	.label_99
.label_1154:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_110
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
.label_99:
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	ret	
	.section	.text
	.align	16
	#Procedure 0x4029f8
	.globl sub_4029f8
	.type sub_4029f8, @function
sub_4029f8:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x402a00
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
	#Procedure 0x402ac1
	.globl sub_402ac1
	.type sub_402ac1, @function
sub_402ac1:

	nop	word ptr cs:[rax + rax]
.label_116:
	call	xalloc_die
	.section	.text
	.align	16
	#Procedure 0x402ad5
	.globl sub_402ad5
	.type sub_402ad5, @function
sub_402ad5:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x402adf
	.globl xcalloc
	.type xcalloc, @function
xcalloc:

	push	rax
	movabs	rax, 0x7fffffffffffffff
	xor	edx, edx
	div	rsi
	cmp	rax, rdi
	jb	.label_116
	call	rpl_calloc
	test	rax, rax
	je	.label_116
	pop	rcx
	ret	
	.section	.text
	.align	16
	#Procedure 0x402b00

	.globl file_type
	.type file_type, @function
file_type:
	movzx	eax, word ptr [rdi + 0x18]
	and	eax, 0xf000
	movsx	ecx, ax
	movzx	eax, ax
	cmp	ecx, 0xfff
	jle	.label_117
	cmp	ecx, 0x3fff
	jg	.label_130
	cmp	eax, 0x1000
	je	.label_133
	cmp	eax, 0x2000
	jne	.label_121
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_126
	mov	edx, 5
	jmp	dcgettext
.label_117:
	cmp	eax, 0x8000
	je	.label_119
	cmp	eax, 0xa000
	je	.label_124
	cmp	eax, 0xc000
	jne	.label_121
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_125
	mov	edx, 5
	jmp	dcgettext
.label_130:
	cmp	eax, 0x4000
	je	.label_123
	cmp	eax, 0x6000
	jne	.label_121
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_129
	mov	edx, 5
	jmp	dcgettext
.label_133:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_122
	mov	edx, 5
	jmp	dcgettext
.label_119:
	cmp	qword ptr [rdi + 0x30], 0
	je	.label_131
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_132
	mov	edx, 5
	jmp	dcgettext
.label_124:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_120
	mov	edx, 5
	jmp	dcgettext
.label_123:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_118
	mov	edx, 5
	jmp	dcgettext
.label_121:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_127
	mov	edx, 5
	jmp	dcgettext
.label_131:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_128
	mov	edx, 5
	jmp	dcgettext
	.section	.text
	.align	16
	#Procedure 0x402bf4
	.globl sub_402bf4
	.type sub_402bf4, @function
sub_402bf4:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x402c00

	.globl rpl_calloc
	.type rpl_calloc, @function
rpl_calloc:
	test	rdi, rdi
	mov	eax, 1
	je	.label_134
	test	rsi, rsi
	mov	ecx, 1
	je	.label_135
	mov	rax, rsi
	imul	rax, rdi
	xor	edx, edx
	div	rsi
	cmp	rax, rdi
	mov	rax, rsi
	mov	rcx, rdi
	je	.label_135
	push	rax
	call	__errno_location
	mov	dword ptr [rax], 0xc
	xor	eax, eax
	pop	rcx
	ret	
.label_134:
	mov	ecx, 1
.label_135:
	mov	rdi, rcx
	mov	rsi, rax
	jmp	calloc
	.section	.text
	.align	16
	#Procedure 0x402c4b
	.globl sub_402c4b
	.type sub_402c4b, @function
sub_402c4b:

	nop	dword ptr [rax + rax]
.label_137:
	mov	edi, eax
	call	close
.label_136:
	mov	rdi, rbx
	call	i_ring_empty
	test	al, al
	jne	.label_138
	mov	rdi, rbx
	call	i_ring_pop
	test	eax, eax
	jns	.label_137
	jmp	.label_136
.label_138:
	mov	eax, ebp
	add	rsp, 8
	pop	rbx
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x402c7a
	.globl sub_402c7a
	.type sub_402c7a, @function
sub_402c7a:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x402c80

	.globl restore_initial_cwd
	.type restore_initial_cwd, @function
restore_initial_cwd:
	push	rbp
	push	rbx
	push	rax
	mov	rbx, rdi
	mov	eax, dword ptr [rbx + 0x48]
	test	al, 4
	jne	.label_139
	test	ah, 2
	jne	.label_142
	mov	edi, dword ptr [rbx + 0x28]
	call	fchdir
	test	eax, eax
	setne	al
	jmp	.label_141
.label_142:
	mov	esi, dword ptr [rbx + 0x2c]
	lea	rdi, [rbx + 0x60]
	call	i_ring_push
	test	eax, eax
	js	.label_140
	mov	edi, eax
	call	close
.label_140:
	mov	dword ptr [rbx + 0x2c], 0xffffff9c
.label_139:
	xor	eax, eax
.label_141:
	movzx	ebp, al
	add	rbx, 0x60
	jmp	.label_136
	.section	.text
	.align	16
	#Procedure 0x402cca
	.globl sub_402cca
	.type sub_402cca, @function
sub_402cca:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x402cd0
	.globl quotearg_n_custom
	.type quotearg_n_custom, @function
quotearg_n_custom:

	sub	rsp, 0x38
	mov	rax, qword ptr [rip + label_143]
	mov	qword ptr [rsp + 0x30], rax
	movups	xmm0, xmmword ptr [rip + label_144]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0, xmmword ptr [rip + label_145]
	movaps	xmmword ptr [rsp + 0x10], xmm0
	movups	xmm0, xmmword ptr [rip + default_quoting_options]
	movaps	xmmword ptr [rsp], xmm0
	mov	dword ptr [rsp], 0xa
	test	rsi, rsi
	je	.label_146
	test	rdx, rdx
	je	.label_146
	mov	qword ptr [rsp + 0x28], rsi
	mov	qword ptr [rsp + 0x30], rdx
	lea	rax, [rsp]
	mov	rdx, -1
	mov	rsi, rcx
	mov	rcx, rax
	call	quotearg_n_options
	add	rsp, 0x38
	ret	
.label_146:
	call	abort
	.section	.text
	.align	16
	#Procedure 0x402d3e
	.globl sub_402d3e
	.type sub_402d3e, @function
sub_402d3e:

	nop	
	.section	.text
	.align	16
	#Procedure 0x402d40
	.globl hash_string
	.type hash_string, @function
hash_string:

	mov	al, byte ptr [rdi]
	xor	edx, edx
	test	al, al
	je	.label_147
	inc	rdi
	xor	edx, edx
	nop	dword ptr [rax]
.label_148:
	mov	rcx, rdx
	shl	rcx, 5
	sub	rcx, rdx
	movzx	eax, al
	add	rax, rcx
	xor	edx, edx
	div	rsi
	movzx	eax, byte ptr [rdi]
	inc	rdi
	test	al, al
	jne	.label_148
.label_147:
	mov	rax, rdx
	ret	
	.section	.text
	.align	16
	#Procedure 0x402d73
	.globl sub_402d73
	.type sub_402d73, @function
sub_402d73:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x402d80

	.globl i_ring_push
	.type i_ring_push, @function
i_ring_push:
	movzx	ecx, byte ptr [rdi + 0x1c]
	xor	ecx, 1
	add	ecx, dword ptr [rdi + 0x14]
	mov	edx, ecx
	and	edx, 3
	mov	eax, dword ptr [rdi + rdx*4]
	mov	dword ptr [rdi + rdx*4], esi
	mov	dword ptr [rdi + 0x14], edx
	cmp	edx, dword ptr [rdi + 0x18]
	jne	.label_149
	mov	dl, byte ptr [rdi + 0x1c]
	xor	dl, 1
	movzx	edx, dl
	add	edx, ecx
	and	edx, 3
	mov	dword ptr [rdi + 0x18], edx
.label_149:
	mov	byte ptr [rdi + 0x1c], 0
	ret	
	.section	.text
	.align	16
	#Procedure 0x402db3
	.globl sub_402db3
	.type sub_402db3, @function
sub_402db3:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x402dc0
	.globl close_stdin_set_file_name
	.type close_stdin_set_file_name, @function
close_stdin_set_file_name:

	mov	qword ptr [rip + file_name],  rdi
	ret	
	.section	.text
	.align	16
	#Procedure 0x402dc8
	.globl sub_402dc8
	.type sub_402dc8, @function
sub_402dc8:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x402dd0

	.globl hash_initialize
	.type hash_initialize, @function
hash_initialize:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	push	rax
	mov	r14, r8
	mov	rbx, rsi
	mov	r12, rdi
	test	rdx, rdx
	mov	r13d, OFFSET FLAT:raw_hasher
	cmovne	r13, rdx
	test	rcx, rcx
	mov	ebp, OFFSET FLAT:raw_comparator
	cmovne	rbp, rcx
	mov	edi, 0x50
	call	malloc
	mov	r15, rax
	xor	eax, eax
	test	r15, r15
	je	.label_152
	test	rbx, rbx
	mov	eax, OFFSET FLAT:default_tuning
	cmove	rbx, rax
	mov	qword ptr [r15 + 0x28], rbx
	cmp	rbx, rax
	je	.label_155
	movss	xmm0, dword ptr [rbx + 8]
	ucomiss	xmm0, dword ptr [rip + label_156]
	jbe	.label_151
	movss	xmm1, dword ptr [rip + label_163]
	ucomiss	xmm1, xmm0
	jbe	.label_151
	movss	xmm1, dword ptr [rbx + 0xc]
	ucomiss	xmm1, dword ptr [rip + label_154]
	jbe	.label_151
	movss	xmm1, dword ptr [rbx]
	xorps	xmm2, xmm2
	ucomiss	xmm1, xmm2
	jb	.label_151
	addss	xmm1, dword ptr [rip + label_156]
	ucomiss	xmm0, xmm1
	jbe	.label_151
	movss	xmm0, dword ptr [rbx + 4]
	movss	xmm2, dword ptr [rip + label_150]
	ucomiss	xmm2, xmm0
	jb	.label_151
	ucomiss	xmm0, xmm1
	jbe	.label_151
.label_155:
	cmp	byte ptr [rbx + 0x10], 0
	jne	.label_162
	mov	eax, r12d
	and	eax, 1
	test	r12, r12
	js	.label_159
	xorps	xmm0, xmm0
	cvtsi2ss	xmm0, r12
	jmp	.label_161
.label_159:
	shr	r12, 1
	or	rax, r12
	xorps	xmm0, xmm0
	cvtsi2ss	xmm0, rax
	addss	xmm0, xmm0
.label_161:
	divss	xmm0, dword ptr [rbx + 8]
	movss	xmm1, dword ptr [rip + label_26]
	movaps	xmm2, xmm0
	subss	xmm2, xmm1
	cvttss2si	rax, xmm2
	movabs	rcx, 0x8000000000000000
	xor	rcx, rax
	cvttss2si	r12, xmm0
	ucomiss	xmm0, xmm1
	cmovae	r12, rcx
	ucomiss	xmm0, dword ptr [rip + label_27]
	jae	.label_151
.label_162:
	cmp	r12, 0xa
	mov	ebx, 0xa
	cmovae	rbx, r12
	or	rbx, 1
	jmp	.label_153
	.section	.text
	.align	16
	#Procedure 0x402f1e
	.globl sub_402f1e
	.type sub_402f1e, @function
sub_402f1e:

	nop	
.label_160:
	add	rbx, 2
.label_153:
	cmp	rbx, -1
	je	.label_151
	cmp	rbx, 0xa
	mov	ecx, 3
	jb	.label_158
	mov	esi, 0xc
	mov	edi, 9
	mov	ecx, 3
	nop	dword ptr [rax + rax]
.label_157:
	xor	edx, edx
	mov	rax, rbx
	div	rcx
	test	rdx, rdx
	je	.label_158
	lea	rdi, [rdi + rsi + 4]
	add	rcx, 2
	add	rsi, 8
	cmp	rdi, rbx
	jb	.label_157
.label_158:
	xor	edx, edx
	mov	rax, rbx
	div	rcx
	test	rdx, rdx
	je	.label_160
	mov	rax, rbx
	shr	rax, 0x3c
	jne	.label_151
	mov	qword ptr [r15 + 0x10], rbx
	test	rbx, rbx
	je	.label_151
	mov	esi, 0x10
	mov	rdi, rbx
	call	rpl_calloc
	mov	qword ptr [r15], rax
	test	rax, rax
	je	.label_151
	shl	rbx, 4
	add	rax, rbx
	mov	qword ptr [r15 + 8], rax
	xorps	xmm0, xmm0
	movups	xmmword ptr [r15 + 0x18], xmm0
	mov	qword ptr [r15 + 0x30], r13
	mov	qword ptr [r15 + 0x38], rbp
	mov	qword ptr [r15 + 0x40], r14
	mov	qword ptr [r15 + 0x48], 0
	mov	rax, r15
	jmp	.label_152
.label_151:
	mov	rdi, r15
	call	free
	xor	eax, eax
.label_152:
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
	#Procedure 0x402fe8
	.globl sub_402fe8
	.type sub_402fe8, @function
sub_402fe8:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x402ff0

	.globl hash_insert
	.type hash_insert, @function
hash_insert:
	push	rbx
	sub	rsp, 0x10
	mov	rbx, rsi
	lea	rdx, [rsp + 8]
	call	hash_insert_if_absent
	mov	ecx, eax
	xor	eax, eax
	cmp	ecx, -1
	je	.label_164
	test	ecx, ecx
	cmove	rbx, qword ptr [rsp + 8]
	mov	rax, rbx
.label_164:
	add	rsp, 0x10
	pop	rbx
	ret	
	.section	.text
	.align	16
	#Procedure 0x40301c
	.globl sub_40301c
	.type sub_40301c, @function
sub_40301c:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x403020
	.globl quotearg_n
	.type quotearg_n, @function
quotearg_n:

	mov	rdx, -1
	mov	ecx, OFFSET FLAT:default_quoting_options
	jmp	quotearg_n_options
	.section	.text
	.align	16
	#Procedure 0x40302e
	.globl sub_40302e
	.type sub_40302e, @function
sub_40302e:

	nop	
	.section	.text
	.align	16
	#Procedure 0x403030

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
	js	.label_168
	mov	eax, dword ptr [r13]
	mov	rbp, qword ptr [rip + slotvec]
	cmp	dword ptr [rip + nslots],  r12d
	mov	qword ptr [rsp + 0x18], r13
	mov	dword ptr [rsp], eax
	mov	qword ptr [rsp + 0x10], rbx
	mov	qword ptr [rsp + 8], r15
	jg	.label_171
	cmp	r12d, 0x7fffffff
	je	.label_166
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
	jne	.label_169
	movups	xmm0, xmmword ptr [rip + slotvec0]
	movups	xmmword ptr [r14], xmm0
.label_169:
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
.label_171:
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
	jbe	.label_167
	mov	rax, qword ptr [rsp + 0x18]
	mov	ebp, dword ptr [rsp]
	jmp	.label_170
.label_167:
	lea	rax, [rbp + r13]
	lea	r12, [rbp + r13 + 8]
	inc	r15
	mov	qword ptr [rax], r15
	mov	eax, OFFSET FLAT:slot0
	cmp	r14, rax
	mov	ebp, dword ptr [rsp]
	je	.label_165
	mov	rdi, r14
	call	free
.label_165:
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
.label_170:
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
.label_168:
	call	abort
.label_166:
	call	xalloc_die
	.section	.text
	.align	16
	#Procedure 0x4031ed
	.globl sub_4031ed
	.type sub_4031ed, @function
sub_4031ed:

	nop	dword ptr [rax]
.label_172:
	call	xalloc_die
	.section	.text
	.align	16
	#Procedure 0x4031f5
	.globl sub_4031f5
	.type sub_4031f5, @function
sub_4031f5:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x403203

	.globl file_name_concat
	.type file_name_concat, @function
file_name_concat:
	push	rax
	call	mfile_name_concat
	test	rax, rax
	je	.label_172
	pop	rcx
	ret	
.label_173:
	call	abort
	.section	.text
	.align	16
	#Procedure 0x403215
	.globl quotearg_custom
	.type quotearg_custom, @function
quotearg_custom:

	sub	rsp, 0x38
	mov	rax, rdx
	mov	rcx, qword ptr [rip + label_143]
	mov	qword ptr [rsp + 0x30], rcx
	movups	xmm0, xmmword ptr [rip + label_144]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0, xmmword ptr [rip + label_145]
	movaps	xmmword ptr [rsp + 0x10], xmm0
	movups	xmm0, xmmword ptr [rip + default_quoting_options]
	movaps	xmmword ptr [rsp], xmm0
	mov	dword ptr [rsp], 0xa
	test	rdi, rdi
	je	.label_173
	test	rsi, rsi
	je	.label_173
	mov	qword ptr [rsp + 0x28], rdi
	mov	qword ptr [rsp + 0x30], rsi
	lea	rcx, [rsp]
	xor	edi, edi
	mov	rdx, -1
	mov	rsi, rax
	call	quotearg_n_options
	add	rsp, 0x38
	ret	
.label_174:
	mov	rdi, qword ptr [rbp + 0x58]
	lea	rsi, [r14 + 0x78]
	call	cycle_check
	mov	bpl, 1
	test	al, al
	je	.label_175
	mov	qword ptr [r14], r14
.label_176:
	mov	word ptr [r14 + 0x70], 2
	jmp	.label_175
	.section	.text
	.align	16
	#Procedure 0x4032a0

	.globl enter_dir
	.type enter_dir, @function
enter_dir:
	push	rbp
	push	r15
	push	r14
	push	rbx
	push	rax
	mov	r14, rsi
	mov	rbp, rdi
	movzx	eax, word ptr [rbp + 0x48]
	test	ax, 0x102
	je	.label_174
	mov	edi, 0x18
	call	malloc
	mov	rbx, rax
	test	rbx, rbx
	je	.label_177
	movups	xmm0, xmmword ptr [r14 + 0x78]
	movups	xmmword ptr [rbx], xmm0
	mov	qword ptr [rbx + 0x10], r14
	mov	rdi, qword ptr [rbp + 0x58]
	mov	rsi, rbx
	call	hash_insert
	mov	r15, rax
	mov	bpl, 1
	cmp	r15, rbx
	je	.label_175
	mov	rdi, rbx
	call	free
	test	r15, r15
	je	.label_177
	mov	rax, qword ptr [r15 + 0x10]
	mov	qword ptr [r14], rax
	jmp	.label_176
.label_177:
	xor	ebp, ebp
.label_175:
	mov	eax, ebp
	add	rsp, 8
	pop	rbx
	pop	r14
	pop	r15
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x403311
	.globl sub_403311
	.type sub_403311, @function
sub_403311:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x403320
	.globl quotearg_colon_mem
	.type quotearg_colon_mem, @function
quotearg_colon_mem:

	sub	rsp, 0x38
	mov	rax, rsi
	mov	rdx, rdi
	mov	rcx, qword ptr [rip + label_143]
	mov	qword ptr [rsp + 0x30], rcx
	movups	xmm0, xmmword ptr [rip + label_144]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0, xmmword ptr [rip + label_145]
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
	#Procedure 0x403374
	.globl sub_403374
	.type sub_403374, @function
sub_403374:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x403380
	.globl quotearg_free
	.type quotearg_free, @function
quotearg_free:

	push	r15
	push	r14
	push	rbx
	mov	r14, qword ptr [rip + slotvec]
	cmp	dword ptr [rip + nslots],  2
	jl	.label_178
	lea	r15, [r14 + 0x18]
	mov	ebx, 1
	nop	
.label_180:
	mov	rdi, qword ptr [r15]
	call	free
	inc	rbx
	movsxd	rax, dword ptr [rip + nslots]
	add	r15, 0x10
	cmp	rbx, rax
	jl	.label_180
.label_178:
	mov	rdi, qword ptr [r14 + 8]
	mov	eax, OFFSET FLAT:slot0
	cmp	rdi, rax
	je	.label_182
	call	free
	mov	qword ptr [rip + slotvec0],  0x100
	mov	qword ptr [rip + label_181], OFFSET FLAT:slot0
.label_182:
	mov	eax, OFFSET FLAT:slotvec0
	cmp	r14, rax
	je	.label_179
	mov	rdi, r14
	call	free
	mov	qword ptr [rip + slotvec], OFFSET FLAT:slotvec0
.label_179:
	mov	dword ptr [rip + nslots],  1
	pop	rbx
	pop	r14
	pop	r15
	ret	
	.section	.text
	.align	16
	#Procedure 0x403411
	.globl sub_403411
	.type sub_403411, @function
sub_403411:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x403420
	.globl quotearg_n_mem
	.type quotearg_n_mem, @function
quotearg_n_mem:

	mov	ecx, OFFSET FLAT:default_quoting_options
	jmp	quotearg_n_options
	.section	.text
	.align	16
	#Procedure 0x40342a
	.globl sub_40342a
	.type sub_40342a, @function
sub_40342a:

	nop	word ptr [rax + rax]
.label_184:
	mov	rdi, rbx
	pop	rbx
	pop	r14
	pop	rbp
	jmp	fclose
	.section	.text
	.align	16
	#Procedure 0x40343c
	.globl sub_40343c
	.type sub_40343c, @function
sub_40343c:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x403448

	.globl rpl_fclose
	.type rpl_fclose, @function
rpl_fclose:
	push	rbp
	push	r14
	push	rbx
	mov	rbx, rdi
	call	fileno
	test	eax, eax
	js	.label_184
	mov	rdi, rbx
	call	__freading
	test	eax, eax
	je	.label_183
	mov	rdi, rbx
	call	fileno
	xor	esi, esi
	mov	edx, 1
	mov	edi, eax
	call	lseek
	cmp	rax, -1
	je	.label_184
.label_183:
	mov	rdi, rbx
	call	rpl_fflush
	test	eax, eax
	je	.label_184
	call	__errno_location
	mov	r14, rax
	mov	ebp, dword ptr [r14]
	mov	rdi, rbx
	call	fclose
	test	ebp, ebp
	je	.label_185
	mov	dword ptr [r14], ebp
	mov	eax, 0xffffffff
.label_185:
	pop	rbx
	pop	r14
	pop	rbp
	ret	
.label_186:
	call	xalloc_die
	.section	.text
	.align	16
	#Procedure 0x4034b5
	.globl sub_4034b5
	.type sub_4034b5, @function
sub_4034b5:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4034c0
	.globl xnmalloc
	.type xnmalloc, @function
xnmalloc:

	push	rbx
	mov	rbx, rsi
	movabs	rax, 0x7fffffffffffffff
	xor	edx, edx
	div	rbx
	cmp	rax, rdi
	jb	.label_186
	imul	rbx, rdi
	mov	rdi, rbx
	call	malloc
	test	rbx, rbx
	je	.label_187
	test	rax, rax
	je	.label_186
.label_187:
	pop	rbx
	ret	
	.section	.text
	.align	16
	#Procedure 0x4034f0

	.globl __argmatch_die
	.type __argmatch_die, @function
__argmatch_die:
	mov	edi, 1
	jmp	usage
	.section	.text
	.align	16
	#Procedure 0x4034fa
	.globl sub_4034fa
	.type sub_4034fa, @function
sub_4034fa:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x403500
	.globl hash_get_n_entries
	.type hash_get_n_entries, @function
hash_get_n_entries:

	mov	rax, qword ptr [rdi + 0x20]
	ret	
	.section	.text
	.align	16
	#Procedure 0x403505
	.globl sub_403505
	.type sub_403505, @function
sub_403505:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x403510
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
	je	.label_189
	test	r15, r15
	je	.label_188
.label_189:
	mov	rdi, r15
	mov	rsi, r14
	mov	rdx, rbx
	call	memcpy
	mov	rax, r15
	pop	rbx
	pop	r14
	pop	r15
	ret	
.label_188:
	call	xalloc_die
	.section	.text
	.align	16
	#Procedure 0x403552
	.globl sub_403552
	.type sub_403552, @function
sub_403552:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x403560

	.globl fts_sort
	.type fts_sort, @function
fts_sort:
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	mov	r14, rdx
	mov	rbx, rsi
	mov	r12, rdi
	mov	r15, qword ptr [r12 + 0x40]
	cmp	qword ptr [r12 + 0x38], r14
	jae	.label_194
	lea	rsi, [r14 + 0x28]
	mov	qword ptr [r12 + 0x38], rsi
	mov	rax, rsi
	shr	rax, 0x3d
	jne	.label_195
	lea	r13, [r12 + 0x10]
	mov	rdi, qword ptr [r13]
	shl	rsi, 3
	call	realloc
	mov	rdi, rax
	test	rdi, rdi
	je	.label_195
	mov	qword ptr [r13], rdi
	jmp	.label_199
.label_194:
	mov	rdi, qword ptr [r12 + 0x10]
	add	r12, 0x10
	mov	r13, r12
.label_199:
	test	rbx, rbx
	je	.label_190
	nop	dword ptr [rax]
.label_192:
	mov	qword ptr [rdi], rbx
	add	rdi, 8
	mov	rbx, qword ptr [rbx + 0x10]
	test	rbx, rbx
	jne	.label_192
	mov	rdi, qword ptr [r13]
.label_190:
	mov	edx, 8
	mov	rsi, r14
	mov	rcx, r15
	call	qsort
	mov	r8, qword ptr [r13]
	mov	rbx, qword ptr [r8]
	cmp	r14, 1
	mov	rcx, rbx
	je	.label_200
	mov	rcx, qword ptr [r8 + 8]
	mov	qword ptr [rbx + 0x10], rcx
	mov	rcx, r14
	add	rcx, -2
	je	.label_191
	lea	rsi, [r8 + 8]
	lea	rdx, [r14 - 3]
	and	ecx, 3
	cmp	rdx, 3
	jae	.label_193
	mov	rdx, rsi
	jmp	.label_197
.label_195:
	mov	rdi, qword ptr [r12 + 0x10]
	call	free
	mov	qword ptr [r12 + 0x10], 0
	mov	qword ptr [r12 + 0x38], 0
	jmp	.label_201
.label_193:
	lea	rdi, [rcx + 2]
	sub	rdi, r14
	nop	dword ptr [rax + rax]
.label_196:
	mov	rdx, qword ptr [rsi]
	mov	rax, qword ptr [rsi + 8]
	mov	qword ptr [rdx + 0x10], rax
	mov	rax, qword ptr [rsi + 8]
	mov	rdx, qword ptr [rsi + 0x10]
	mov	qword ptr [rax + 0x10], rdx
	mov	rax, qword ptr [rsi + 0x10]
	mov	rdx, qword ptr [rsi + 0x18]
	mov	qword ptr [rax + 0x10], rdx
	lea	rdx, [rsi + 0x20]
	mov	rax, qword ptr [rsi + 0x18]
	mov	rsi, qword ptr [rsi + 0x20]
	mov	qword ptr [rax + 0x10], rsi
	add	rdi, 4
	mov	rsi, rdx
	jne	.label_196
.label_197:
	test	rcx, rcx
	je	.label_191
	add	rdx, 8
	neg	rcx
	nop	dword ptr [rax + rax]
.label_198:
	mov	rax, qword ptr [rdx - 8]
	mov	rsi, qword ptr [rdx]
	mov	qword ptr [rax + 0x10], rsi
	add	rdx, 8
	inc	rcx
	jne	.label_198
.label_191:
	mov	rcx, qword ptr [r8 + r14*8 - 8]
.label_200:
	mov	qword ptr [rcx + 0x10], 0
.label_201:
	mov	rax, rbx
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	ret	
	.section	.text
	.align	16
	#Procedure 0x4036de
	.globl sub_4036de
	.type sub_4036de, @function
sub_4036de:

	nop	
.label_212:
	mov	rbx, qword ptr [rip + stderr]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_202
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
	#Procedure 0x403718
	.globl sub_403718
	.type sub_403718, @function
sub_403718:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x403720

	.globl usage
	.type usage, @function
usage:
	push	rbp
	push	rbx
	push	rax
	mov	ebp, edi
	test	ebp, ebp
	jne	.label_212
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_216
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	mov	rdx, qword ptr [rip + program_name]
	mov	edi, 1
	xor	eax, eax
	mov	rsi, rcx
	call	__printf_chk
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_205
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_217
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_208
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_218
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_219
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_220
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_209
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_221
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_222
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	mov	rdx, qword ptr [rip + program_name]
	mov	edi, 1
	xor	eax, eax
	mov	rsi, rcx
	mov	rcx, rdx
	call	__printf_chk
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_203
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_214
	mov	edx, 5
	call	dcgettext
	mov	rsi, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:label_224
	mov	ecx, OFFSET FLAT:label_215
	xor	eax, eax
	call	__printf_chk
	mov	edi, 5
	xor	esi, esi
	call	setlocale
	test	rax, rax
	je	.label_204
	mov	esi, OFFSET FLAT:label_211
	mov	edx, 3
	mov	rdi, rax
	call	strncmp
	test	eax, eax
	je	.label_204
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_210
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	call	fputs_unlocked
.label_204:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_213
	mov	edx, 5
	call	dcgettext
	mov	rsi, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:label_215
	mov	ecx, OFFSET FLAT:label_206
	xor	eax, eax
	call	__printf_chk
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_223
	mov	edx, 5
	call	dcgettext
	mov	rsi, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:label_206
	mov	ecx, OFFSET FLAT:label_207
	xor	eax, eax
	call	__printf_chk
	mov	edi, ebp
	call	exit
	.section	.text
	.align	16
	#Procedure 0x403970

	.globl i_ring_init
	.type i_ring_init, @function
i_ring_init:
	mov	byte ptr [rdi + 0x1c], 1
	mov	dword ptr [rdi + 0x14], 0
	mov	dword ptr [rdi + 0x18], 0
	movd	xmm0, esi
	pshufd	xmm0, xmm0, 0
	movdqu	xmmword ptr [rdi], xmm0
	mov	dword ptr [rdi + 0x10], esi
	ret	
	.section	.text
	.align	16
	#Procedure 0x403993
	.globl sub_403993
	.type sub_403993, @function
sub_403993:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4039a0

	.globl is_empty_dir
	.type is_empty_dir, @function
is_empty_dir:
	push	rbp
	push	r14
	push	rbx
	xor	ebx, ebx
	mov	edx, 0x30900
	xor	eax, eax
	call	openat
	mov	ebp, eax
	test	ebp, ebp
	js	.label_231
	mov	edi, ebp
	call	fdopendir
	mov	rbx, rax
	test	rbx, rbx
	je	.label_226
	call	__errno_location
	mov	r14, rax
	mov	dword ptr [r14], 0
	nop	word ptr [rax + rax]
.label_230:
	mov	rdi, rbx
	call	readdir
	test	rax, rax
	je	.label_228
	cmp	byte ptr [rax + 0x13], 0x2e
	jne	.label_229
	xor	ecx, ecx
	cmp	byte ptr [rax + 0x14], 0x2e
	sete	cl
	movzx	ecx, byte ptr [rax + rcx + 0x14]
	cmp	cl, 0x2f
	cmove	rax, rbp
	test	cl, cl
	cmovne	rbp, rax
	cmp	cl, 0x2f
	je	.label_230
	test	cl, cl
	je	.label_230
	mov	r14d, dword ptr [r14]
	mov	rdi, rbx
	call	closedir
	test	rbp, rbp
	jne	.label_225
	jmp	.label_227
.label_226:
	mov	edi, ebp
	call	close
	jmp	.label_225
.label_229:
	mov	rdi, rbx
	call	closedir
.label_225:
	xor	ebx, ebx
.label_231:
	mov	eax, ebx
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x403a43
	.globl sub_403a43
	.type sub_403a43, @function
sub_403a43:

	nop	word ptr cs:[rax + rax]
.label_228:
	mov	r14d, dword ptr [r14]
	mov	rdi, rbx
	call	closedir
.label_227:
	test	r14d, r14d
	sete	bl
	jmp	.label_231
	.section	.text
	.align	16
	#Procedure 0x403a60

	.globl hash_delete
	.type hash_delete, @function
hash_delete:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	push	rax
	mov	r14, rsi
	mov	r15, rdi
	mov	rsi, qword ptr [r15 + 0x10]
	mov	rdi, r14
	call	qword ptr [r15 + 0x30]
	mov	rbx, rax
	cmp	rbx, qword ptr [r15 + 0x10]
	jae	.label_252
	mov	rbp, qword ptr [r15]
	shl	rbx, 4
	mov	rsi, qword ptr [rbp + rbx]
	xor	r12d, r12d
	test	rsi, rsi
	je	.label_236
	lea	r13, [rbp + rbx]
	cmp	rsi, r14
	je	.label_242
	mov	rdi, r14
	call	qword ptr [r15 + 0x38]
	test	al, al
	je	.label_243
	mov	r14, qword ptr [r13]
.label_242:
	mov	rax, qword ptr [rbp + rbx + 8]
	test	rax, rax
	je	.label_248
	movups	xmm0, xmmword ptr [rax]
	movups	xmmword ptr [r13], xmm0
	mov	qword ptr [rax], 0
	mov	rcx, qword ptr [r15 + 0x48]
	mov	qword ptr [rax + 8], rcx
	mov	qword ptr [r15 + 0x48], rax
	jmp	.label_233
.label_243:
	mov	rax, qword ptr [rbp + rbx + 8]
	xor	r12d, r12d
	test	rax, rax
	je	.label_236
	lea	rbx, [rbp + rbx + 8]
	xor	r12d, r12d
	nop	word ptr [rax + rax]
.label_239:
	mov	rsi, qword ptr [rax]
	cmp	rsi, r14
	je	.label_232
	mov	rdi, r14
	call	qword ptr [r15 + 0x38]
	mov	rcx, qword ptr [rbx]
	test	al, al
	jne	.label_238
	mov	rax, qword ptr [rcx + 8]
	add	rcx, 8
	test	rax, rax
	mov	rbx, rcx
	jne	.label_239
	jmp	.label_236
.label_248:
	mov	qword ptr [r13], 0
	jmp	.label_233
.label_232:
	mov	rcx, rax
	jmp	.label_245
.label_238:
	mov	r14, qword ptr [rcx]
.label_245:
	mov	rax, qword ptr [rcx + 8]
	mov	qword ptr [rbx], rax
	mov	qword ptr [rcx], 0
	mov	rax, qword ptr [r15 + 0x48]
	mov	qword ptr [rcx + 8], rax
	mov	qword ptr [r15 + 0x48], rcx
.label_233:
	xor	r12d, r12d
	test	r14, r14
	je	.label_236
	dec	qword ptr [r15 + 0x20]
	cmp	qword ptr [r13], 0
	jne	.label_240
	mov	rax, qword ptr [r15 + 0x18]
	dec	rax
	mov	qword ptr [r15 + 0x18], rax
	mov	ecx, eax
	and	ecx, 1
	test	rax, rax
	js	.label_246
	cvtsi2ss	xmm1, rax
	jmp	.label_235
.label_246:
	shr	rax, 1
	or	rcx, rax
	cvtsi2ss	xmm1, rcx
	addss	xmm1, xmm1
.label_235:
	mov	rcx, qword ptr [r15 + 0x10]
	mov	rax, qword ptr [r15 + 0x28]
	movss	xmm2, dword ptr [rax]
	mov	edx, ecx
	and	edx, 1
	test	rcx, rcx
	js	.label_241
	xorps	xmm0, xmm0
	cvtsi2ss	xmm0, rcx
	jmp	.label_244
.label_241:
	shr	rcx, 1
	or	rdx, rcx
	xorps	xmm0, xmm0
	cvtsi2ss	xmm0, rdx
	addss	xmm0, xmm0
.label_244:
	movaps	xmm3, xmm2
	mulss	xmm3, xmm0
	ucomiss	xmm3, xmm1
	jbe	.label_240
	mov	ecx, OFFSET FLAT:default_tuning
	cmp	rax, rcx
	je	.label_249
	movss	xmm3, dword ptr [rax + 8]
	ucomiss	xmm3, dword ptr [rip + label_156]
	jbe	.label_234
	movss	xmm4, dword ptr [rip + label_163]
	ucomiss	xmm4, xmm3
	jbe	.label_234
	xorps	xmm4, xmm4
	ucomiss	xmm2, xmm4
	jb	.label_234
	movss	xmm4, dword ptr [rax + 0xc]
	ucomiss	xmm4, dword ptr [rip + label_154]
	jbe	.label_234
	movss	xmm4, dword ptr [rip + label_156]
	addss	xmm4, xmm2
	ucomiss	xmm3, xmm4
	jbe	.label_234
	movss	xmm3, dword ptr [rax + 4]
	movss	xmm5, dword ptr [rip + label_150]
	ucomiss	xmm5, xmm3
	jb	.label_234
	ucomiss	xmm3, xmm4
	ja	.label_237
.label_234:
	mov	qword ptr [r15 + 40], OFFSET FLAT:default_tuning
	mov	eax, OFFSET FLAT:default_tuning
	xorps	xmm2, xmm2
	jmp	.label_237
.label_249:
	mov	eax, OFFSET FLAT:default_tuning
.label_237:
	mulss	xmm2, xmm0
	ucomiss	xmm2, xmm1
	jbe	.label_240
	mulss	xmm0, dword ptr [rax + 4]
	cmp	byte ptr [rax + 0x10], 0
	jne	.label_250
	mulss	xmm0, dword ptr [rax + 8]
.label_250:
	movss	xmm1, dword ptr [rip + label_26]
	movaps	xmm2, xmm0
	subss	xmm2, xmm1
	cvttss2si	rax, xmm2
	movabs	rcx, 0x8000000000000000
	xor	rcx, rax
	cvttss2si	rsi, xmm0
	ucomiss	xmm0, xmm1
	cmovae	rsi, rcx
	mov	rdi, r15
	call	hash_rehash
	test	al, al
	jne	.label_240
	mov	rdi, qword ptr [r15 + 0x48]
	test	rdi, rdi
	je	.label_251
	nop	word ptr cs:[rax + rax]
.label_247:
	mov	rbx, qword ptr [rdi + 8]
	call	free
	test	rbx, rbx
	mov	rdi, rbx
	jne	.label_247
.label_251:
	mov	qword ptr [r15 + 0x48], 0
.label_240:
	mov	r12, r14
.label_236:
	mov	rax, r12
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_252:
	call	abort
	.section	.text
	.align	16
	#Procedure 0x403cf3
	.globl sub_403cf3
	.type sub_403cf3, @function
sub_403cf3:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x403d00

	.globl cycle_check
	.type cycle_check, @function
cycle_check:
	cmp	dword ptr [rdi + 0x18], 0x95f616
	jne	.label_253
	mov	rcx, qword ptr [rdi + 0x10]
	test	rcx, rcx
	je	.label_254
	mov	rax, qword ptr [rsi + 8]
	cmp	rax, qword ptr [rdi]
	jne	.label_254
	mov	rdx, qword ptr [rsi]
	mov	al, 1
	cmp	rdx, qword ptr [rdi + 8]
	je	.label_255
.label_254:
	lea	rdx, [rcx + 1]
	mov	qword ptr [rdi + 0x10], rdx
	test	rdx, rcx
	jne	.label_256
	mov	al, 1
	test	rdx, rdx
	je	.label_255
	mov	rax, qword ptr [rsi]
	mov	qword ptr [rdi + 8], rax
	mov	rax, qword ptr [rsi + 8]
	mov	qword ptr [rdi], rax
.label_256:
	xor	eax, eax
.label_255:
	ret	
.label_253:
	push	rax
	mov	edi, OFFSET FLAT:label_257
	mov	esi, OFFSET FLAT:label_258
	mov	edx, 0x3c
	mov	ecx, OFFSET FLAT:label_259
	call	__assert_fail
	.section	.text
	.align	16
	#Procedure 0x403d65
	.globl sub_403d65
	.type sub_403d65, @function
sub_403d65:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x403d70

	.globl main
	.type main, @function
main:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0xb8
	mov	r12, rsi
	mov	ebp, edi
	mov	rdi, qword ptr [r12]
	call	set_program_name
	mov	edi, 6
	mov	esi, OFFSET FLAT:label_292
	call	setlocale
	mov	edi, OFFSET FLAT:label_295
	mov	esi, OFFSET FLAT:label_296
	call	bindtextdomain
	mov	edi, OFFSET FLAT:label_295
	call	textdomain
	mov	edi, OFFSET FLAT:close_stdin
	call	atexit
	mov	byte ptr [rsp + 8], 0
	mov	dword ptr [rsp + 0xc], 4
	mov	byte ptr [rsp + 0x10], 0
	mov	byte ptr [rsp + 0x12], 0
	mov	byte ptr [rsp + 0x11], 0
	mov	qword ptr [rsp + 0x18], 0
	mov	byte ptr [rsp + 0x20], 0
	xor	r13d, r13d
	xor	edi, edi
	call	isatty
	test	eax, eax
	setne	byte ptr [rsp + 0x21]
	mov	byte ptr [rsp + 0x22], 0
	mov	byte ptr [rsp + 0x23], 0
	mov	bl, 1
	jmp	.label_299
	.section	.text
	.align	16
	#Procedure 0x403e0a
	.globl sub_403e0a
	.type sub_403e0a, @function
sub_403e0a:

	nop	word ptr [rax + rax]
.label_293:
	mov	dword ptr [rsp + 0xc], 3
	mov	byte ptr [rsp + 8], 0
.label_299:
	xor	r15d, r15d
	jmp	.label_267
	.section	.text
	.align	16
	#Procedure 0x403e22
	.globl sub_403e22
	.type sub_403e22, @function
sub_403e22:

	nop	word ptr cs:[rax + rax]
.label_1134:
	mov	dword ptr [rsp + 0xc], 5
	mov	byte ptr [rsp + 8], 1
	mov	r15b, 1
.label_267:
	xor	r14d, r14d
	jmp	.label_263
.label_1132:
	mov	byte ptr [rsp + 0x11], 1
	mov	r13b, 1
	nop	dword ptr [rax]
.label_263:
	mov	edx, OFFSET FLAT:label_278
	mov	ecx, OFFSET FLAT:long_opts
	xor	r8d, r8d
	mov	edi, ebp
	mov	rsi, r12
	call	getopt_long
	cmp	eax, 0x48
	jle	.label_282
	add	eax, -0x49
	cmp	eax, 0x3b
	ja	.label_284
	jmp	qword ptr [(rax * 8) + label_285]
.label_1133:
	mov	byte ptr [rsp + 0x12], 1
	jmp	.label_263
.label_1135:
	mov	byte ptr [rsp + 0x22], 1
	jmp	.label_263
.label_1136:
	mov	rsi, qword ptr [rip + optarg]
	test	rsi, rsi
	je	.label_293
	mov	r9, qword ptr [rip + argmatch_die]
	mov	edi, OFFSET FLAT:label_297
	mov	edx, OFFSET FLAT:interactive_args
	mov	ecx, OFFSET FLAT:interactive_types
	mov	r8d, 4
	call	__xargmatch_internal
	mov	eax, dword ptr [(rax * 4) + interactive_types]
	cmp	eax, 2
	je	.label_293
	cmp	eax, 1
	je	.label_303
	test	eax, eax
	jne	.label_263
	jmp	.label_306
.label_303:
	mov	dword ptr [rsp + 0xc], 4
	mov	byte ptr [rsp + 8], 0
	mov	r14b, 1
	xor	r15d, r15d
	jmp	.label_263
.label_1137:
	mov	byte ptr [rsp + 0x10], 1
	jmp	.label_263
.label_1138:
	movsxd	rax, dword ptr [rip + optind]
	mov	rdi, qword ptr [r12 + rax*8 - 8]
	mov	esi, OFFSET FLAT:label_261
	call	strcmp
	xor	ebx, ebx
	test	eax, eax
	je	.label_263
	jmp	.label_270
.label_1139:
	mov	rax, qword ptr [rip + optarg]
	test	rax, rax
	mov	bl, 1
	je	.label_263
	cmp	byte ptr [rax], 0x61
	jne	.label_275
	cmp	byte ptr [rax + 1], 0x6c
	jne	.label_275
	cmp	byte ptr [rax + 2], 0x6c
	jne	.label_275
	cmp	byte ptr [rax + 3], 0
	jne	.label_275
	mov	byte ptr [rsp + 0x20], 1
	mov	bl, 1
	jmp	.label_263
.label_1140:
	mov	byte ptr [rsp + 0x21], 1
	jmp	.label_263
.label_306:
	mov	dword ptr [rsp + 0xc], 5
	jmp	.label_267
.label_282:
	cmp	eax, -1
	jne	.label_304
	mov	eax, dword ptr [rip + optind]
	cmp	eax, ebp
	jge	.label_291
	test	bl, bl
	je	.label_286
	test	r13b, r13b
	je	.label_286
	mov	edi, OFFSET FLAT:main.dev_ino_buf
	call	get_root_dev_ino
	mov	qword ptr [rsp + 0x18], rax
	test	rax, rax
	je	.label_265
	mov	eax, dword ptr [rip + optind]
.label_286:
	test	r14b, r14b
	je	.label_300
	sub	ebp, eax
	cmp	ebp, 3
	ja	.label_301
	test	r13b, r13b
	je	.label_300
.label_301:
	mov	ebx, eax
	movsxd	r15, ebp
	mov	r14, qword ptr [rip + stderr]
	xor	edi, edi
	test	r13b, r13b
	je	.label_305
	mov	esi, OFFSET FLAT:label_307
	mov	edx, OFFSET FLAT:label_308
	jmp	.label_309
.label_304:
	cmp	eax, 0xffffff7d
	je	.label_260
	cmp	eax, 0xffffff7e
	je	.label_264
.label_284:
	cmp	ebp, 2
	jl	.label_266
	movsxd	r15, ebp
	mov	ebx, 1
	lea	r14, [rsp + 0x28]
	nop	dword ptr [rax + rax]
.label_279:
	mov	rbp, qword ptr [r12 + rbx*8]
	cmp	byte ptr [rbp], 0x2d
	jne	.label_274
	cmp	byte ptr [rbp + 1], 0
	je	.label_274
	mov	edi, 1
	mov	rsi, rbp
	mov	rdx, r14
	call	__lxstat
	test	eax, eax
	je	.label_283
.label_274:
	inc	rbx
	cmp	rbx, r15
	jl	.label_279
.label_266:
	mov	edi, 1
	call	usage
.label_291:
	xor	ebp, ebp
	test	r15b, r15b
	jne	.label_276
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_298
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
.label_283:
	mov	r14, qword ptr [rip + stderr]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_294
	mov	edx, 5
	call	dcgettext
	mov	r15, rax
	mov	r12, qword ptr [r12]
	mov	edi, 1
	mov	esi, 3
	mov	rdx, rbp
	call	quotearg_n_style
	mov	rbx, rax
	mov	edi, 4
	mov	rsi, rbp
	call	quotearg_style
	mov	rbp, rax
	mov	esi, 1
	xor	eax, eax
	mov	rdi, r14
	mov	rdx, r15
	mov	rcx, r12
	mov	r8, rbx
	mov	r9, rbp
	call	__fprintf_chk
	mov	edi, 1
	call	usage
.label_305:
	mov	esi, OFFSET FLAT:label_268
	mov	edx, OFFSET FLAT:label_269
.label_309:
	mov	r8d, 5
	mov	rcx, r15
	call	dcngettext
	mov	rdx, rax
	mov	rcx, qword ptr [rip + program_name]
	xor	ebp, ebp
	mov	esi, 1
	xor	eax, eax
	mov	rdi, r14
	mov	r8, r15
	call	__fprintf_chk
	call	yesno
	test	al, al
	mov	eax, ebx
	je	.label_276
.label_300:
	cdqe	
	lea	rdi, [r12 + rax*8]
	lea	rsi, [rsp + 8]
	call	rm
	lea	ecx, [rax - 2]
	cmp	ecx, 3
	jae	.label_280
	xor	ebp, ebp
	cmp	eax, 4
	sete	bpl
.label_276:
	mov	eax, ebp
	add	rsp, 0xb8
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_264:
	xor	edi, edi
	call	usage
.label_260:
	mov	rdi, qword ptr [rip + stdout]
	mov	rcx, qword ptr [rip + Version]
	sub	rsp, 8
	mov	esi, OFFSET FLAT:label_206
	mov	edx, OFFSET FLAT:label_224
	mov	r8d, OFFSET FLAT:label_287
	mov	r9d, OFFSET FLAT:label_288
	mov	eax, 0
	push	0
	push	OFFSET FLAT:label_289
	push	OFFSET FLAT:label_290
	call	version_etc
	add	rsp, 0x20
	xor	edi, edi
	call	exit
.label_275:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_302
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
	mov	rsi, qword ptr [rip + optarg]
	mov	edi, 4
	call	quotearg_style
	mov	rcx, rax
	mov	edi, 1
	xor	esi, esi
	xor	eax, eax
	mov	rdx, rbx
	call	error
.label_270:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_262
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	mov	edi, 1
	xor	esi, esi
	xor	eax, eax
	mov	rdx, rcx
	call	error
.label_280:
	mov	edi, OFFSET FLAT:label_271
	mov	esi, OFFSET FLAT:label_272
	mov	edx, 0x173
	mov	ecx, OFFSET FLAT:label_273
	call	__assert_fail
.label_265:
	call	__errno_location
	mov	ebx, dword ptr [rax]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_277
	mov	edx, 5
	call	dcgettext
	mov	rbp, rax
	mov	edi, 4
	mov	esi, OFFSET FLAT:label_281
	call	quotearg_style
	mov	rcx, rax
	mov	edi, 1
	xor	eax, eax
	mov	esi, ebx
	mov	rdx, rbp
	call	error
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404290

	.globl prompt
	.type prompt, @function
prompt:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0xb8
	mov	rbx, r9
	mov	dword ptr [rsp + 0x1c], r8d
	mov	rbp, rcx
	mov	r12d, edx
	mov	r15, rsi
	mov	ecx, dword ptr [rdi + 0x2c]
	mov	rdx, qword ptr [r15 + 0x30]
	mov	rax, qword ptr [r15 + 0x38]
	mov	qword ptr [rsp + 0x20], rax
	test	rbx, rbx
	mov	dword ptr [rsp + 0xc], ecx
	mov	qword ptr [rsp + 0x10], rdx
	je	.label_338
	mov	dword ptr [rbx], 2
	mov	qword ptr [rsp + 0x58], -1
	movzx	r13d, r12b
	shl	r13d, 2
	mov	edi, ecx
	mov	rsi, rdx
	call	is_empty_dir
	mov	r14b, al
	movzx	eax, r14b
	add	eax, 3
	mov	dword ptr [rbx], eax
	jmp	.label_347
.label_338:
	mov	qword ptr [rsp + 0x58], -1
	movzx	r13d, r12b
	shl	r13d, 2
	xor	r14d, r14d
.label_347:
	mov	ebx, 3
	cmp	qword ptr [r15 + 0x20], 0
	jne	.label_313
	mov	ecx, dword ptr [rbp + 4]
	cmp	ecx, 5
	je	.label_315
	mov	rdx, qword ptr [rbp]
	mov	rax, rdx
	shr	rax, 0x20
	xor	r15d, r15d
	test	dl, dl
	je	.label_320
	xor	ecx, ecx
	jmp	.label_323
.label_320:
	cmp	ecx, 3
	je	.label_325
	cmp	byte ptr [rbp + 0x19], 0
	mov	ecx, 0
	je	.label_323
.label_325:
	call	can_write_any_file
	test	al, al
	jne	.label_324
	mov	rax, qword ptr [rsp + 0x58]
	cmp	rax, -1
	jne	.label_330
	lea	rcx, [rsp + 0x28]
	mov	edi, 1
	mov	r8d, 0x100
	mov	esi, dword ptr [rsp + 0xc]
	mov	rdx, qword ptr [rsp + 0x10]
	call	__fxstatat
	test	eax, eax
	je	.label_339
	mov	qword ptr [rsp + 0x58], -2
	call	__errno_location
	movsxd	r15, dword ptr [rax]
	mov	qword ptr [rsp + 0x30], r15
	jmp	.label_341
.label_339:
	mov	rax, qword ptr [rsp + 0x58]
.label_330:
	test	rax, rax
	js	.label_342
	mov	eax, 0xf000
	and	eax, dword ptr [rsp + 0x40]
	cmp	eax, 0xa000
	je	.label_324
	mov	edx, 2
	mov	ecx, 0x200
	mov	edi, dword ptr [rsp + 0xc]
	mov	rsi, qword ptr [rsp + 0x10]
	call	faccessat
	test	eax, eax
	je	.label_324
	call	__errno_location
	cmp	dword ptr [rax], 0xd
	mov	ecx, 1
	mov	r15d, 0xffffffff
	cmove	r15d, ecx
	jmp	.label_346
.label_324:
	call	__errno_location
	mov	ecx, dword ptr [rax]
	mov	eax, dword ptr [rbp + 4]
.label_323:
	cmp	eax, 3
	je	.label_310
	jmp	.label_315
.label_342:
	mov	r15, qword ptr [rsp + 0x30]
	call	__errno_location
.label_341:
	mov	dword ptr [rax], r15d
	mov	r15d, 0xffffffff
.label_346:
	mov	ecx, dword ptr [rax]
.label_310:
	test	r15d, r15d
	js	.label_317
	xor	r12b, 1
	je	.label_317
	mov	rax, qword ptr [rsp + 0x58]
	cmp	rax, -1
	jne	.label_321
	mov	r12, rcx
	lea	rcx, [rsp + 0x28]
	mov	edi, 1
	mov	r8d, 0x100
	mov	esi, dword ptr [rsp + 0xc]
	mov	rdx, qword ptr [rsp + 0x10]
	call	__fxstatat
	test	eax, eax
	je	.label_328
	mov	qword ptr [rsp + 0x58], -2
	call	__errno_location
	movsxd	rcx, dword ptr [rax]
	mov	qword ptr [rsp + 0x30], rcx
	jmp	.label_334
.label_328:
	mov	rax, qword ptr [rsp + 0x58]
	mov	rcx, r12
.label_321:
	test	rax, rax
	js	.label_337
	mov	eax, 0xf000
	and	eax, dword ptr [rsp + 0x40]
	mov	r12d, 0xa
	cmp	eax, 0xa000
	je	.label_340
	cmp	eax, 0x4000
	mov	eax, 4
	cmove	r13d, eax
.label_317:
	mov	r12d, r13d
.label_340:
	test	r15d, r15d
	js	.label_327
	mov	eax, r12d
	and	al, 0xf
	cmp	al, 4
	je	.label_343
	cmp	al, 0xa
	jne	.label_344
	cmp	dword ptr [rbp + 4], 3
	je	.label_344
	jmp	.label_315
.label_343:
	cmp	byte ptr [rbp + 9], 0
	jne	.label_344
	cmp	byte ptr [rbp + 0xa], 0
	mov	ecx, 0x15
	je	.label_327
	mov	eax, r14d
	xor	al, 1
	jne	.label_327
.label_344:
	mov	edi, 4
	mov	rsi, qword ptr [rsp + 0x20]
	call	quotearg_style
	mov	r13, rax
	cmp	r12d, 4
	setne	al
	cmp	dword ptr [rsp + 0x1c], 2
	setne	cl
	or	cl, al
	or	r14b, cl
	je	.label_312
	mov	rax, qword ptr [rsp + 0x58]
	cmp	rax, -1
	jne	.label_316
	lea	rcx, [rsp + 0x28]
	mov	edi, 1
	mov	r8d, 0x100
	mov	esi, dword ptr [rsp + 0xc]
	mov	rdx, qword ptr [rsp + 0x10]
	call	__fxstatat
	test	eax, eax
	je	.label_326
	mov	qword ptr [rsp + 0x58], -2
	call	__errno_location
	movsxd	rbx, dword ptr [rax]
	mov	qword ptr [rsp + 0x30], rbx
	jmp	.label_329
.label_312:
	mov	rbp, qword ptr [rip + stderr]
	xor	edi, edi
	test	r15d, r15d
	je	.label_333
	mov	esi, OFFSET FLAT:label_335
	jmp	.label_336
.label_337:
	mov	rbx, qword ptr [rsp + 0x30]
	call	__errno_location
	mov	rcx, rbx
.label_334:
	mov	dword ptr [rax], ecx
.label_327:
	mov	ebx, 4
	mov	edi, 4
	mov	r14, rcx
	mov	rsi, qword ptr [rsp + 0x20]
	call	quotearg_style
	mov	rbp, rax
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_322
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	xor	edi, edi
	xor	eax, eax
	mov	esi, r14d
	mov	rdx, rcx
	mov	rcx, rbp
	call	error
	jmp	.label_313
.label_333:
	mov	esi, OFFSET FLAT:label_345
.label_336:
	mov	edx, 5
	call	dcgettext
	mov	rdx, rax
	mov	rcx, qword ptr [rip + program_name]
	mov	esi, 1
	xor	eax, eax
	mov	rdi, rbp
	mov	r8, r13
	call	__fprintf_chk
	jmp	.label_311
.label_326:
	mov	rax, qword ptr [rsp + 0x58]
.label_316:
	test	rax, rax
	js	.label_332
	mov	r14, qword ptr [rip + stderr]
	mov	r12, r13
	xor	edi, edi
	test	r15d, r15d
	je	.label_314
	mov	esi, OFFSET FLAT:label_318
	jmp	.label_319
.label_332:
	mov	rbx, qword ptr [rsp + 0x30]
	call	__errno_location
.label_329:
	mov	dword ptr [rax], ebx
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_322
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	xor	edi, edi
	xor	eax, eax
	mov	esi, ebx
	mov	rdx, rcx
	mov	rcx, r13
	call	error
	mov	ebx, 4
	jmp	.label_313
.label_314:
	mov	esi, OFFSET FLAT:label_331
.label_319:
	mov	edx, 5
	call	dcgettext
	mov	r15, rax
	mov	r13, qword ptr [rip + program_name]
	lea	rdi, [rsp + 0x28]
	call	file_type
	mov	rbp, rax
	mov	esi, 1
	xor	eax, eax
	mov	rdi, r14
	mov	rdx, r15
	mov	rcx, r13
	mov	r8, rbp
	mov	r9, r12
	call	__fprintf_chk
.label_311:
	call	yesno
	test	al, al
	je	.label_313
.label_315:
	mov	ebx, 2
.label_313:
	mov	eax, ebx
	add	rsp, 0xb8
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x4046cb
	.globl sub_4046cb
	.type sub_4046cb, @function
sub_4046cb:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4046d0

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
	#Procedure 0x4046e9
	.globl sub_4046e9
	.type sub_4046e9, @function
sub_4046e9:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x4046f0

	.globl version_etc_va
	.type version_etc_va, @function
version_etc_va:
	movsxd	r10, dword ptr [r8]
	cmp	r10, 0x28
	ja	.label_358
	mov	r9, r10
	add	r9, qword ptr [r8 + 0x10]
	lea	r10d, [r10 + 8]
	mov	dword ptr [r8], r10d
	jmp	.label_360
.label_358:
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
.label_360:
	sub	rsp, 0x58
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp], rax
	xor	r9d, r9d
	test	rax, rax
	je	.label_348
	cmp	r10d, 0x29
	jae	.label_357
	movsxd	r9, r10d
	add	r9, qword ptr [r8 + 0x10]
	add	r10d, 8
	mov	dword ptr [r8], r10d
	jmp	.label_359
.label_357:
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
.label_359:
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp + 8], rax
	mov	r9d, 1
	test	rax, rax
	je	.label_348
	cmp	r10d, 0x29
	jae	.label_355
	movsxd	r9, r10d
	add	r9, qword ptr [r8 + 0x10]
	add	r10d, 8
	mov	dword ptr [r8], r10d
	jmp	.label_356
.label_355:
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
.label_356:
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp + 0x10], rax
	mov	r9d, 2
	test	rax, rax
	je	.label_348
	cmp	r10d, 0x29
	jae	.label_353
	movsxd	r9, r10d
	add	r9, qword ptr [r8 + 0x10]
	add	r10d, 8
	mov	dword ptr [r8], r10d
	jmp	.label_354
.label_353:
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
.label_354:
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp + 0x18], rax
	mov	r9d, 3
	test	rax, rax
	je	.label_348
	cmp	r10d, 0x29
	jae	.label_351
	movsxd	r9, r10d
	add	r9, qword ptr [r8 + 0x10]
	add	r10d, 8
	mov	dword ptr [r8], r10d
	jmp	.label_352
.label_351:
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
.label_352:
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp + 0x20], rax
	mov	r9d, 4
	test	rax, rax
	je	.label_348
	cmp	r10d, 0x29
	jae	.label_349
	movsxd	r9, r10d
	add	r9, qword ptr [r8 + 0x10]
	add	r10d, 8
	mov	dword ptr [r8], r10d
	jmp	.label_350
.label_349:
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
.label_350:
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp + 0x28], rax
	mov	r9d, 5
	test	rax, rax
	je	.label_348
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp + 0x30], rax
	mov	r9d, 6
	test	rax, rax
	je	.label_348
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp + 0x38], rax
	mov	r9d, 7
	test	rax, rax
	je	.label_348
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp + 0x40], rax
	mov	r9d, 8
	test	rax, rax
	je	.label_348
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp + 0x48], rax
	cmp	rax, 1
	mov	r9d, 9
	sbb	r9, -1
.label_348:
	lea	r8, [rsp]
	call	version_etc_arn
	add	rsp, 0x58
	ret	
	.section	.text
	.align	16
	#Procedure 0x4048d2
	.globl sub_4048d2
	.type sub_4048d2, @function
sub_4048d2:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4048e0

	.globl mfile_name_concat
	.type mfile_name_concat, @function
mfile_name_concat:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x18
	mov	qword ptr [rsp + 0x10], rdx
	mov	r15, rsi
	mov	r13, rdi
	call	last_component
	mov	rbx, rax
	mov	rdi, rbx
	call	base_len
	mov	rbp, rax
	sub	rbx, r13
	add	rbx, rbp
	mov	rdi, r15
	call	strlen
	test	rbp, rbp
	je	.label_364
	cmp	byte ptr [r13 + rbx - 1], 0x2f
	je	.label_361
	cmp	byte ptr [r15], 0x2f
	je	.label_361
	mov	r12b, 0x2f
	jmp	.label_362
.label_364:
	cmp	byte ptr [r15], 0x2f
	mov	r12b, 0x2e
	je	.label_362
.label_361:
	xor	r12d, r12d
.label_362:
	xor	ebp, ebp
	test	r12b, r12b
	setne	bpl
	mov	qword ptr [rsp + 8], rax
	lea	rax, [rax + rbx]
	lea	rdi, [rbp + rax + 1]
	call	malloc
	mov	r14, rax
	xor	eax, eax
	test	r14, r14
	je	.label_365
	mov	rcx, -1
	mov	rdi, r14
	mov	rsi, r13
	mov	rdx, rbx
	call	__mempcpy_chk
	mov	byte ptr [rax], r12b
	add	rbp, rax
	mov	rax, qword ptr [rsp + 0x10]
	test	rax, rax
	je	.label_363
	mov	qword ptr [rax], rbp
.label_363:
	mov	rcx, -1
	mov	rdi, rbp
	mov	rsi, r15
	mov	rdx, qword ptr [rsp + 8]
	call	__mempcpy_chk
	mov	byte ptr [rax], 0
	mov	rax, r14
.label_365:
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
	#Procedure 0x4049b8
	.globl sub_4049b8
	.type sub_4049b8, @function
sub_4049b8:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4049c0

	.globl last_component
	.type last_component, @function
last_component:
	dec	rdi
	nop	word ptr cs:[rax + rax]
.label_366:
	movzx	edx, byte ptr [rdi + 1]
	inc	rdi
	cmp	dl, 0x2f
	je	.label_366
	xor	esi, esi
	mov	rax, rdi
	jmp	.label_369
	.section	.text
	.align	16
	#Procedure 0x4049e3
	.globl sub_4049e3
	.type sub_4049e3, @function
sub_4049e3:

	nop	word ptr cs:[rax + rax]
.label_368:
	mov	rax, rdi
	ret	
	.section	.text
	.align	16
	#Procedure 0x4049f4
	.globl sub_4049f4
	.type sub_4049f4, @function
sub_4049f4:

	nop	dword ptr [rax]
.label_367:
	movzx	edx, byte ptr [rax + 1]
	inc	rax
	mov	sil, cl
.label_369:
	mov	cl, 1
	cmp	dl, 0x2f
	je	.label_367
	test	dl, dl
	je	.label_368
	mov	ecx, esi
	and	cl, 1
	je	.label_370
	xor	esi, esi
.label_370:
	test	cl, cl
	cmovne	rdi, rax
	mov	ecx, esi
	jmp	.label_367
	.section	.text
	.align	16
	#Procedure 0x404a20
	.globl cycle_warning_required
	.type cycle_warning_required, @function
cycle_warning_required:

	mov	ecx, dword ptr [rdi + 0x48]
	and	ecx, 0x11
	mov	al, 1
	cmp	ecx, 0x10
	je	.label_371
	cmp	ecx, 0x11
	jne	.label_372
	cmp	qword ptr [rsi + 0x58], 0
	setne	al
.label_371:
	ret	
.label_372:
	xor	eax, eax
	ret	
	.section	.text
	.align	16
	#Procedure 0x404a3e
	.globl sub_404a3e
	.type sub_404a3e, @function
sub_404a3e:

	nop	
	.section	.text
	.align	16
	#Procedure 0x404a40

	.globl transfer_entries
	.type transfer_entries, @function
transfer_entries:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	push	rax
	mov	dword ptr [rsp + 4], edx
	mov	r12, rsi
	mov	rbp, rdi
	mov	r14, qword ptr [r12]
	mov	al, 1
	cmp	r14, qword ptr [r12 + 8]
	jae	.label_373
	nop	word ptr cs:[rax + rax]
.label_383:
	mov	r13, qword ptr [r14]
	test	r13, r13
	je	.label_382
	mov	r15, qword ptr [r14 + 8]
	test	r15, r15
	je	.label_386
	mov	rsi, qword ptr [rbp + 0x10]
	nop	dword ptr [rax]
.label_374:
	mov	rbx, qword ptr [r15]
	mov	rdi, rbx
	call	qword ptr [rbp + 0x30]
	mov	rsi, qword ptr [rbp + 0x10]
	cmp	rax, rsi
	jae	.label_377
	mov	rdx, qword ptr [rbp]
	mov	rcx, qword ptr [r15 + 8]
	shl	rax, 4
	cmp	qword ptr [rdx + rax], 0
	je	.label_379
	mov	rdi, qword ptr [rdx + rax + 8]
	mov	qword ptr [r15 + 8], rdi
	mov	qword ptr [rdx + rax + 8], r15
	jmp	.label_385
	.section	.text
	.align	16
	#Procedure 0x404ac9
	.globl sub_404ac9
	.type sub_404ac9, @function
sub_404ac9:

	nop	dword ptr [rax]
.label_379:
	add	rdx, rax
	mov	qword ptr [rdx], rbx
	inc	qword ptr [rbp + 0x18]
	mov	qword ptr [r15], 0
	mov	rax, qword ptr [rbp + 0x48]
	mov	qword ptr [r15 + 8], rax
	mov	qword ptr [rbp + 0x48], r15
.label_385:
	test	rcx, rcx
	mov	r15, rcx
	jne	.label_374
	mov	r13, qword ptr [r14]
.label_386:
	mov	qword ptr [r14 + 8], 0
	mov	eax, dword ptr [rsp + 4]
	test	al, al
	jne	.label_382
	mov	rsi, qword ptr [rbp + 0x10]
	mov	rdi, r13
	call	qword ptr [rbp + 0x30]
	mov	rbx, rax
	cmp	rbx, qword ptr [rbp + 0x10]
	jae	.label_375
	mov	r15, qword ptr [rbp]
	shl	rbx, 4
	cmp	qword ptr [r15 + rbx], 0
	je	.label_378
	mov	rax, qword ptr [rbp + 0x48]
	test	rax, rax
	je	.label_381
	mov	rcx, qword ptr [rax + 8]
	mov	qword ptr [rbp + 0x48], rcx
	jmp	.label_384
.label_377:
	call	abort
.label_381:
	mov	edi, 0x10
	call	malloc
	test	rax, rax
	je	.label_376
.label_384:
	mov	qword ptr [rax], r13
	mov	rcx, qword ptr [r15 + rbx + 8]
	mov	qword ptr [rax + 8], rcx
	mov	qword ptr [r15 + rbx + 8], rax
.label_380:
	mov	qword ptr [r14], 0
	dec	qword ptr [r12 + 0x18]
.label_382:
	add	r14, 0x10
	cmp	r14, qword ptr [r12 + 8]
	jb	.label_383
	mov	al, 1
.label_373:
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_378:
	add	r15, rbx
	mov	qword ptr [r15], r13
	inc	qword ptr [rbp + 0x18]
	jmp	.label_380
.label_376:
	xor	eax, eax
	jmp	.label_373
.label_375:
	call	abort
	.section	.text
	.align	16
	#Procedure 0x404ba7
	.globl sub_404ba7
	.type sub_404ba7, @function
sub_404ba7:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404bb0
	.globl hash_get_max_bucket_length
	.type hash_get_max_bucket_length, @function
hash_get_max_bucket_length:

	mov	rcx, qword ptr [rdi]
	mov	rdi, qword ptr [rdi + 8]
	xor	eax, eax
	cmp	rcx, rdi
	jae	.label_391
	mov	rax, rcx
	not	rax
	add	rdi, rax
	shr	rdi, 4
	lea	rsi, [rdi + 1]
	mov	r8d, esi
	and	r8d, 1
	xor	eax, eax
	test	rdi, rdi
	je	.label_388
	sub	rsi, r8
	xor	eax, eax
	nop	word ptr cs:[rax + rax]
.label_393:
	cmp	qword ptr [rcx], 0
	je	.label_389
	xor	edi, edi
	mov	rdx, rcx
	nop	dword ptr [rax + rax]
.label_387:
	mov	rdx, qword ptr [rdx + 8]
	inc	rdi
	test	rdx, rdx
	jne	.label_387
	cmp	rdi, rax
	cmova	rax, rdi
.label_389:
	cmp	qword ptr [rcx + 0x10], 0
	je	.label_392
	lea	rdx, [rcx + 0x10]
	xor	edi, edi
.label_390:
	mov	rdx, qword ptr [rdx + 8]
	inc	rdi
	test	rdx, rdx
	jne	.label_390
	cmp	rdi, rax
	cmova	rax, rdi
.label_392:
	add	rcx, 0x20
	add	rsi, -2
	jne	.label_393
.label_388:
	test	r8, r8
	je	.label_391
	cmp	qword ptr [rcx], 0
	je	.label_391
	xor	edx, edx
	nop	word ptr [rax + rax]
.label_394:
	mov	rcx, qword ptr [rcx + 8]
	inc	rdx
	test	rcx, rcx
	jne	.label_394
	cmp	rdx, rax
	cmova	rax, rdx
.label_391:
	ret	
	.section	.text
	.align	16
	#Procedure 0x404c64
	.globl sub_404c64
	.type sub_404c64, @function
sub_404c64:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404c70
	.globl hash_get_n_buckets
	.type hash_get_n_buckets, @function
hash_get_n_buckets:

	mov	rax, qword ptr [rdi + 0x10]
	ret	
	.section	.text
	.align	16
	#Procedure 0x404c75
	.globl sub_404c75
	.type sub_404c75, @function
sub_404c75:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404c80
	.globl quotearg_char_mem
	.type quotearg_char_mem, @function
quotearg_char_mem:

	sub	rsp, 0x38
	mov	ecx, edx
	mov	r8, rsi
	mov	rdx, rdi
	mov	rsi, qword ptr [rip + label_143]
	mov	qword ptr [rsp + 0x30], rsi
	movups	xmm0, xmmword ptr [rip + label_144]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0, xmmword ptr [rip + label_145]
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
	#Procedure 0x404cee
	.globl sub_404cee
	.type sub_404cee, @function
sub_404cee:

	nop	
.label_404:
	mov	rdi, qword ptr [rbx]
	call	qword ptr [r14 + 0x40]
	mov	rbx, qword ptr [rbx + 8]
.label_400:
	test	rbx, rbx
	jne	.label_404
	mov	rax, qword ptr [r14 + 8]
	jmp	.label_395
.label_399:
	mov	r15, qword ptr [r14]
	mov	rax, qword ptr [r14 + 8]
	jmp	.label_397
	.section	.text
	.align	16
	#Procedure 0x404d0f
	.globl sub_404d0f
	.type sub_404d0f, @function
sub_404d0f:

	nop	
.label_395:
	add	r15, 0x10
.label_405:
	cmp	r15, rax
	jae	.label_399
	mov	rdi, qword ptr [r15]
	test	rdi, rdi
	je	.label_395
	test	r15, r15
	je	.label_395
	call	qword ptr [r14 + 0x40]
	mov	rbx, qword ptr [r15 + 8]
	jmp	.label_400
.label_398:
	mov	rdi, qword ptr [r14 + 0x48]
	test	rdi, rdi
	je	.label_402
.label_396:
	mov	rbx, qword ptr [rdi + 8]
	call	free
	test	rbx, rbx
	mov	rdi, rbx
	jne	.label_396
.label_402:
	mov	rdi, qword ptr [r14]
	call	free
	mov	rdi, r14
	pop	rbx
	pop	r14
	pop	r15
	jmp	free
	.section	.text
	.align	16
	#Procedure 0x404d5f
	.globl sub_404d5f
	.type sub_404d5f, @function
sub_404d5f:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404d69

	.globl hash_free
	.type hash_free, @function
hash_free:
	push	r15
	push	r14
	push	rbx
	mov	r14, rdi
	cmp	qword ptr [r14 + 0x40], 0
	je	.label_399
	cmp	qword ptr [r14 + 0x20], 0
	je	.label_399
	mov	r15, qword ptr [r14]
	mov	rax, qword ptr [r14 + 8]
	jmp	.label_405
	.section	.text
	.align	16
	#Procedure 0x404d88
	.globl sub_404d88
	.type sub_404d88, @function
sub_404d88:

	nop	
.label_401:
	add	r15, 0x10
.label_397:
	cmp	r15, rax
	jae	.label_398
	mov	rdi, qword ptr [r15 + 8]
	test	rdi, rdi
	je	.label_401
	nop	word ptr cs:[rax + rax]
.label_403:
	mov	rbx, qword ptr [rdi + 8]
	call	free
	test	rbx, rbx
	mov	rdi, rbx
	jne	.label_403
	mov	rax, qword ptr [r14 + 8]
	jmp	.label_401
	.section	.text
	.align	16
	#Procedure 0x404dc0

	.globl set_program_name
	.type set_program_name, @function
set_program_name:
	push	r14
	push	rbx
	push	rax
	mov	rbx, rdi
	test	rbx, rbx
	je	.label_406
	mov	esi, 0x2f
	mov	rdi, rbx
	call	strrchr
	test	rax, rax
	lea	r14, [rax + 1]
	cmove	r14, rbx
	mov	rax, r14
	sub	rax, rbx
	cmp	rax, 7
	jl	.label_408
	lea	rdi, [r14 - 7]
	mov	esi, OFFSET FLAT:label_410
	mov	edx, 7
	call	strncmp
	test	eax, eax
	jne	.label_408
	mov	esi, OFFSET FLAT:label_409
	mov	edx, 3
	mov	rdi, r14
	call	strncmp
	test	eax, eax
	jne	.label_411
	add	r14, 3
	mov	qword ptr [rip + __progname],  r14
.label_411:
	mov	rbx, r14
.label_408:
	mov	qword ptr [rip + program_name],  rbx
	mov	qword ptr [rip + __progname_full],  rbx
	add	rsp, 8
	pop	rbx
	pop	r14
	ret	
.label_406:
	mov	rcx, qword ptr [rip + stderr]
	mov	edi, OFFSET FLAT:label_407
	mov	esi, 0x37
	mov	edx, 1
	call	fwrite
	call	abort
	.section	.text
	.align	16
	#Procedure 0x404e61
	.globl sub_404e61
	.type sub_404e61, @function
sub_404e61:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404e70

	.globl rpl_fts_close
	.type rpl_fts_close, @function
rpl_fts_close:
	push	rbp
	push	r14
	push	rbx
	mov	r14, rdi
	mov	rdi, qword ptr [r14]
	test	rdi, rdi
	je	.label_429
	cmp	qword ptr [rdi + 0x58], 0
	js	.label_425
	nop	word ptr cs:[rax + rax]
.label_419:
	mov	rbx, qword ptr [rdi + 0x10]
	test	rbx, rbx
	jne	.label_416
	mov	rbx, qword ptr [rdi + 8]
.label_416:
	call	free
	cmp	qword ptr [rbx + 0x58], 0
	mov	rdi, rbx
	jns	.label_419
	jmp	.label_420
.label_425:
	mov	rbx, rdi
.label_420:
	mov	rdi, rbx
	call	free
.label_429:
	mov	rbx, qword ptr [r14 + 8]
	test	rbx, rbx
	je	.label_422
	nop	word ptr cs:[rax + rax]
.label_427:
	mov	rbp, qword ptr [rbx + 0x10]
	mov	rdi, qword ptr [rbx + 0x18]
	test	rdi, rdi
	je	.label_426
	call	closedir
.label_426:
	mov	rdi, rbx
	call	free
	test	rbp, rbp
	mov	rbx, rbp
	jne	.label_427
.label_422:
	mov	rdi, qword ptr [r14 + 0x10]
	call	free
	mov	rdi, qword ptr [r14 + 0x20]
	call	free
	mov	eax, dword ptr [r14 + 0x48]
	test	ah, 2
	jne	.label_413
	xor	ebp, ebp
	test	al, 4
	jne	.label_414
	mov	edi, dword ptr [r14 + 0x28]
	call	fchdir
	xor	ebp, ebp
	test	eax, eax
	je	.label_418
	call	__errno_location
	mov	ebp, dword ptr [rax]
.label_418:
	mov	edi, dword ptr [r14 + 0x28]
	call	close
	test	ebp, ebp
	je	.label_421
	jmp	.label_414
.label_413:
	mov	edi, dword ptr [r14 + 0x2c]
	xor	ebp, ebp
	test	edi, edi
	js	.label_414
	call	close
.label_421:
	test	eax, eax
	je	.label_414
	call	__errno_location
	mov	ebp, dword ptr [rax]
.label_414:
	lea	rbx, [r14 + 0x60]
	jmp	.label_424
	.section	.text
	.align	16
	#Procedure 0x404f58
	.globl sub_404f58
	.type sub_404f58, @function
sub_404f58:

	nop	dword ptr [rax + rax]
.label_430:
	mov	edi, eax
	call	close
.label_424:
	mov	rdi, rbx
	call	i_ring_empty
	test	al, al
	jne	.label_428
	mov	rdi, rbx
	call	i_ring_pop
	test	eax, eax
	jns	.label_430
	jmp	.label_424
.label_428:
	mov	rdi, qword ptr [r14 + 0x50]
	test	rdi, rdi
	je	.label_412
	call	hash_free
.label_412:
	movzx	eax, word ptr [r14 + 0x48]
	test	ax, 0x102
	je	.label_415
	mov	rdi, qword ptr [r14 + 0x58]
	test	rdi, rdi
	je	.label_417
	call	hash_free
	jmp	.label_417
.label_415:
	mov	rdi, qword ptr [r14 + 0x58]
	call	free
.label_417:
	mov	rdi, r14
	call	free
	xor	eax, eax
	test	ebp, ebp
	je	.label_423
	call	__errno_location
	mov	dword ptr [rax], ebp
	mov	eax, 0xffffffff
.label_423:
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x404fd2
	.globl sub_404fd2
	.type sub_404fd2, @function
sub_404fd2:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404fe0

	.globl hash_insert_if_absent
	.type hash_insert_if_absent, @function
hash_insert_if_absent:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	push	rax
	mov	r15, rdx
	mov	r14, rsi
	mov	r13, rdi
	test	r14, r14
	je	.label_432
	mov	rsi, qword ptr [r13 + 0x10]
	mov	rdi, r14
	call	qword ptr [r13 + 0x30]
	mov	rbp, rax
	cmp	rbp, qword ptr [r13 + 0x10]
	jae	.label_432
	mov	rbx, qword ptr [r13]
	shl	rbp, 4
	lea	r12, [rbx + rbp]
	mov	rsi, qword ptr [rbx + rbp]
	test	rsi, rsi
	je	.label_436
	cmp	rsi, r14
	je	.label_442
	mov	rdi, r14
	call	qword ptr [r13 + 0x38]
	test	al, al
	je	.label_458
	mov	rax, qword ptr [r12]
.label_441:
	test	rax, rax
	jne	.label_448
	jmp	.label_436
.label_442:
	mov	rax, r14
.label_448:
	xor	ebp, ebp
	test	r15, r15
	je	.label_437
	mov	qword ptr [r15], rax
	jmp	.label_437
.label_458:
	mov	rax, qword ptr [rbx + rbp + 8]
	test	rax, rax
	je	.label_436
	lea	rbp, [rbx + rbp + 8]
	nop	word ptr [rax + rax]
.label_434:
	mov	rsi, qword ptr [rax]
	cmp	rsi, r14
	je	.label_460
	mov	rdi, r14
	call	qword ptr [r13 + 0x38]
	mov	rbp, qword ptr [rbp]
	test	al, al
	jne	.label_431
	mov	rax, qword ptr [rbp + 8]
	add	rbp, 8
	test	rax, rax
	jne	.label_434
.label_436:
	mov	rcx, qword ptr [r13 + 0x10]
	mov	rax, qword ptr [r13 + 0x18]
	mov	edx, eax
	and	edx, 1
	test	rax, rax
	js	.label_438
	cvtsi2ss	xmm1, rax
	jmp	.label_444
.label_438:
	shr	rax, 1
	or	rdx, rax
	cvtsi2ss	xmm1, rdx
	addss	xmm1, xmm1
.label_444:
	mov	rax, qword ptr [r13 + 0x28]
	movss	xmm2, dword ptr [rax + 8]
	mov	edx, ecx
	and	edx, 1
	test	rcx, rcx
	js	.label_449
	cvtsi2ss	xmm0, rcx
	jmp	.label_456
.label_449:
	shr	rcx, 1
	or	rdx, rcx
	cvtsi2ss	xmm0, rdx
	addss	xmm0, xmm0
.label_456:
	movaps	xmm3, xmm2
	mulss	xmm3, xmm0
	ucomiss	xmm1, xmm3
	jbe	.label_446
	mov	ecx, OFFSET FLAT:default_tuning
	cmp	rax, rcx
	je	.label_461
	ucomiss	xmm2, dword ptr [rip + label_156]
	jbe	.label_435
	movss	xmm3, dword ptr [rip + label_163]
	ucomiss	xmm3, xmm2
	jbe	.label_435
	movss	xmm3, dword ptr [rax + 0xc]
	ucomiss	xmm3, dword ptr [rip + label_154]
	jbe	.label_435
	movss	xmm3, dword ptr [rax]
	xorps	xmm4, xmm4
	ucomiss	xmm3, xmm4
	jb	.label_435
	addss	xmm3, dword ptr [rip + label_156]
	ucomiss	xmm2, xmm3
	jbe	.label_435
	movss	xmm4, dword ptr [rax + 4]
	movss	xmm5, dword ptr [rip + label_150]
	ucomiss	xmm5, xmm4
	jb	.label_435
	ucomiss	xmm4, xmm3
	ja	.label_440
.label_435:
	mov	qword ptr [r13 + 40], OFFSET FLAT:default_tuning
	mov	eax, OFFSET FLAT:default_tuning
	movss	xmm2, dword ptr [rip + label_439]
	jmp	.label_440
.label_461:
	mov	eax, OFFSET FLAT:default_tuning
.label_440:
	movaps	xmm3, xmm2
	mulss	xmm3, xmm0
	ucomiss	xmm1, xmm3
	jbe	.label_446
	cmp	byte ptr [rax + 0x10], 0
	mulss	xmm0, dword ptr [rax + 0xc]
	jne	.label_459
	mulss	xmm0, xmm2
.label_459:
	mov	ebp, 0xffffffff
	ucomiss	xmm0, dword ptr [rip + label_27]
	jae	.label_437
	movss	xmm1, dword ptr [rip + label_26]
	movaps	xmm2, xmm0
	subss	xmm2, xmm1
	cvttss2si	rax, xmm2
	movabs	rcx, 0x8000000000000000
	xor	rcx, rax
	cvttss2si	rsi, xmm0
	ucomiss	xmm0, xmm1
	cmovae	rsi, rcx
	mov	rdi, r13
	call	hash_rehash
	test	al, al
	je	.label_437
	mov	rsi, qword ptr [r13 + 0x10]
	mov	rdi, r14
	call	qword ptr [r13 + 0x30]
	mov	rbp, rax
	cmp	rbp, qword ptr [r13 + 0x10]
	jae	.label_432
	mov	rbx, qword ptr [r13]
	shl	rbp, 4
	lea	r12, [rbx + rbp]
	mov	rsi, qword ptr [rbx + rbp]
	test	rsi, rsi
	je	.label_446
	cmp	rsi, r14
	mov	rax, r14
	je	.label_452
	mov	rdi, r14
	call	qword ptr [r13 + 0x38]
	test	al, al
	je	.label_451
	mov	rax, qword ptr [r12]
.label_452:
	test	rax, rax
	jne	.label_443
.label_446:
	cmp	qword ptr [r12], 0
	je	.label_445
	mov	rax, qword ptr [r13 + 0x48]
	test	rax, rax
	je	.label_447
	mov	rcx, qword ptr [rax + 8]
	mov	qword ptr [r13 + 0x48], rcx
	jmp	.label_450
.label_445:
	mov	qword ptr [r12], r14
	movdqu	xmm0, xmmword ptr [r13 + 0x18]
	paddq	xmm0, xmmword ptr [rip + label_454]
	movdqu	xmmword ptr [r13 + 0x18], xmm0
	jmp	.label_455
.label_447:
	mov	edi, 0x10
	call	malloc
	mov	ebp, 0xffffffff
	test	rax, rax
	je	.label_437
.label_450:
	mov	qword ptr [rax], r14
	mov	rcx, qword ptr [r12 + 8]
	mov	qword ptr [rax + 8], rcx
	mov	qword ptr [r12 + 8], rax
	inc	qword ptr [r13 + 0x20]
.label_455:
	mov	ebp, 1
.label_437:
	mov	eax, ebp
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_460:
	mov	rax, r14
	jmp	.label_441
.label_431:
	mov	rax, qword ptr [rbp]
	jmp	.label_441
.label_451:
	mov	rax, qword ptr [rbx + rbp + 8]
	test	rax, rax
	je	.label_446
	lea	rbp, [rbx + rbp + 8]
.label_457:
	mov	rsi, qword ptr [rax]
	cmp	rsi, r14
	je	.label_453
	mov	rdi, r14
	call	qword ptr [r13 + 0x38]
	mov	rbp, qword ptr [rbp]
	test	al, al
	jne	.label_433
	mov	rax, qword ptr [rbp + 8]
	add	rbp, 8
	test	rax, rax
	jne	.label_457
	jmp	.label_446
.label_453:
	mov	rax, r14
	jmp	.label_452
.label_433:
	mov	rax, qword ptr [rbp]
	jmp	.label_452
.label_432:
	call	abort
.label_443:
	call	abort
	.section	.text
	.align	16
	#Procedure 0x405311
	.globl sub_405311
	.type sub_405311, @function
sub_405311:

	nop	word ptr cs:[rax + rax]
.label_463:
	mov	ebx, 0xffffffff
	test	eax, eax
	jne	.label_462
	call	__errno_location
	mov	dword ptr [rax], 0
.label_462:
	mov	eax, ebx
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40533b

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
	jne	.label_463
	test	eax, eax
	sete	cl
	neg	eax
	sbb	ebx, ebx
	test	r14, r14
	jne	.label_462
	test	cl, cl
	jne	.label_462
	call	__errno_location
	xor	ecx, ecx
	cmp	dword ptr [rax], 9
	mov	ebx, 0xffffffff
	cmove	ebx, ecx
	jmp	.label_462
	.section	.text
	.align	16
	#Procedure 0x405380
	.globl hash_clear
	.type hash_clear, @function
hash_clear:

	push	r15
	push	r14
	push	rbx
	mov	r15, rdi
	mov	r14, qword ptr [r15]
	mov	rax, qword ptr [r15 + 8]
	jmp	.label_464
	.section	.text
	.align	16
	#Procedure 0x405391
	.globl sub_405391
	.type sub_405391, @function
sub_405391:

	nop	word ptr cs:[rax + rax]
.label_467:
	add	r14, 0x10
.label_464:
	cmp	r14, rax
	jae	.label_466
	cmp	qword ptr [r14], 0
	je	.label_467
	mov	rbx, qword ptr [r14 + 8]
	mov	rax, qword ptr [r15 + 0x40]
	test	rax, rax
	setne	cl
	test	rbx, rbx
	je	.label_468
	nop	word ptr cs:[rax + rax]
.label_470:
	test	cl, 1
	je	.label_469
	mov	rdi, qword ptr [rbx]
	call	rax
	mov	rax, qword ptr [r15 + 0x40]
.label_469:
	mov	qword ptr [rbx], 0
	mov	rdx, qword ptr [rbx + 8]
	mov	rcx, qword ptr [r15 + 0x48]
	mov	qword ptr [rbx + 8], rcx
	mov	qword ptr [r15 + 0x48], rbx
	test	rax, rax
	setne	cl
	test	rdx, rdx
	mov	rbx, rdx
	jne	.label_470
.label_468:
	test	cl, cl
	je	.label_465
	mov	rdi, qword ptr [r14]
	call	rax
.label_465:
	xorps	xmm0, xmm0
	movups	xmmword ptr [r14], xmm0
	mov	rax, qword ptr [r15 + 8]
	jmp	.label_467
.label_466:
	xorps	xmm0, xmm0
	movups	xmmword ptr [r15 + 0x18], xmm0
	pop	rbx
	pop	r14
	pop	r15
	ret	
	.section	.text
	.align	16
	#Procedure 0x405427
	.globl sub_405427
	.type sub_405427, @function
sub_405427:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x405430
	.globl hash_do_for_each
	.type hash_do_for_each, @function
hash_do_for_each:

	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	push	rax
	mov	r14, rdx
	mov	r15, rsi
	mov	r12, rdi
	mov	r13, qword ptr [r12]
	mov	rax, qword ptr [r12 + 8]
	xor	ebx, ebx
	cmp	r13, rax
	jae	.label_474
	xor	ebx, ebx
.label_473:
	mov	rdi, qword ptr [r13]
	test	rdi, rdi
	je	.label_475
	test	r13, r13
	je	.label_475
	mov	rsi, r14
	call	r15
	test	al, al
	je	.label_474
	mov	rbp, r13
	nop	word ptr cs:[rax + rax]
.label_472:
	mov	rbp, qword ptr [rbp + 8]
	test	rbp, rbp
	je	.label_471
	inc	rbx
	mov	rdi, qword ptr [rbp]
	mov	rsi, r14
	call	r15
	test	al, al
	jne	.label_472
	jmp	.label_474
	.section	.text
	.align	16
	#Procedure 0x40549c
	.globl sub_40549c
	.type sub_40549c, @function
sub_40549c:

	nop	dword ptr [rax]
.label_471:
	mov	rax, qword ptr [r12 + 8]
	inc	rbx
.label_475:
	add	r13, 0x10
	cmp	r13, rax
	jb	.label_473
.label_474:
	mov	rax, rbx
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
	#Procedure 0x4054c3
	.globl sub_4054c3
	.type sub_4054c3, @function
sub_4054c3:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4054d0

	.globl raw_comparator
	.type raw_comparator, @function
raw_comparator:
	cmp	rdi, rsi
	sete	al
	ret	
	.section	.text
	.align	16
	#Procedure 0x4054d7
	.globl sub_4054d7
	.type sub_4054d7, @function
sub_4054d7:

	nop	word ptr [rax + rax]
.label_480:
	call	abort
	.section	.text
	.align	16
	#Procedure 0x4054e5
	.globl sub_4054e5
	.type sub_4054e5, @function
sub_4054e5:

	nop	word ptr cs:[rax + rax]
.label_478:
	mov	rdx, qword ptr [r14 + 8]
	lea	rcx, [rcx + rax + 0x10]
	nop	word ptr cs:[rax + rax]
.label_477:
	cmp	rcx, rdx
	mov	eax, 0
	jae	.label_476
	mov	rax, qword ptr [rcx]
	add	rcx, 0x10
	test	rax, rax
	je	.label_477
.label_476:
	add	rsp, 8
	pop	rbx
	pop	r14
	ret	
	.section	.text
	.align	16
	#Procedure 0x405526
	.globl hash_get_next
	.type hash_get_next, @function
hash_get_next:

	push	r14
	push	rbx
	push	rax
	mov	rbx, rsi
	mov	r14, rdi
	mov	rsi, qword ptr [r14 + 0x10]
	mov	rdi, rbx
	call	qword ptr [r14 + 0x30]
	cmp	rax, qword ptr [r14 + 0x10]
	jae	.label_480
	mov	rcx, qword ptr [r14]
	shl	rax, 4
	lea	rdx, [rcx + rax]
	nop	word ptr cs:[rax + rax]
.label_481:
	cmp	qword ptr [rdx], rbx
	mov	rdx, qword ptr [rdx + 8]
	je	.label_479
	test	rdx, rdx
	jne	.label_481
	jmp	.label_478
.label_479:
	test	rdx, rdx
	je	.label_478
	mov	rax, qword ptr [rdx]
	jmp	.label_476
.label_484:
	mov	rax, qword ptr [rsi + 8]
	test	rax, rax
	je	.label_483
	cmp	qword ptr [rax + 0x58], 0
	js	.label_483
	mov	rcx, qword ptr [rdi + 0x58]
	cmp	qword ptr [rcx + 0x10], 0
	je	.label_482
	mov	rdx, qword ptr [rcx]
	cmp	rdx, qword ptr [rsi + 0x80]
	jne	.label_483
	mov	rdx, qword ptr [rcx + 8]
	cmp	rdx, qword ptr [rsi + 0x78]
	jne	.label_483
	mov	rdx, qword ptr [rax + 0x78]
	mov	qword ptr [rcx + 8], rdx
	mov	rax, qword ptr [rax + 0x80]
	mov	qword ptr [rcx], rax
.label_483:
	add	rsp, 0x18
	ret	
.label_482:
	call	abort
	.section	.text
	.align	16
	#Procedure 0x4055bd
	.globl sub_4055bd
	.type sub_4055bd, @function
sub_4055bd:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4055cb

	.globl leave_dir
	.type leave_dir, @function
leave_dir:
	sub	rsp, 0x18
	movzx	eax, word ptr [rdi + 0x48]
	test	ax, 0x102
	je	.label_484
	movups	xmm0, xmmword ptr [rsi + 0x78]
	movaps	xmmword ptr [rsp], xmm0
	mov	rdi, qword ptr [rdi + 0x58]
	lea	rsi, [rsp]
	call	hash_delete
	test	rax, rax
	je	.label_482
	mov	rdi, rax
	call	free
	add	rsp, 0x18
	ret	
	.section	.text
	.align	16
	#Procedure 0x405600

	.globl dev_type_hash
	.type dev_type_hash, @function
dev_type_hash:
	mov	rax, qword ptr [rdi]
	xor	edx, edx
	div	rsi
	mov	rax, rdx
	ret	
	.section	.text
	.align	16
	#Procedure 0x40560c
	.globl sub_40560c
	.type sub_40560c, @function
sub_40560c:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x405610
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
	#Procedure 0x405685
	.globl sub_405685
	.type sub_405685, @function
sub_405685:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x405690

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
	je	.label_485
	cmp	r15, -2
	jb	.label_485
	xor	edi, edi
	call	hard_locale
	test	al, al
	jne	.label_485
	movzx	eax, byte ptr [r14]
	mov	dword ptr [rbx], eax
	mov	r15d, 1
.label_485:
	mov	rax, r15
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	ret	
	.section	.text
	.align	16
	#Procedure 0x4056e6
	.globl sub_4056e6
	.type sub_4056e6, @function
sub_4056e6:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4056f0

	.globl fts_compare_ino
	.type fts_compare_ino, @function
fts_compare_ino:
	mov	rax, qword ptr [rdi]
	mov	rax, qword ptr [rax + 0x80]
	mov	rcx, qword ptr [rsi]
	mov	rcx, qword ptr [rcx + 0x80]
	cmp	rcx, rax
	sbb	edx, edx
	and	edx, 1
	cmp	rax, rcx
	mov	eax, 0xffffffff
	cmovae	eax, edx
	ret	
	.section	.text
	.align	16
	#Procedure 0x405718
	.globl sub_405718
	.type sub_405718, @function
sub_405718:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x405720
	.globl version_etc_ar
	.type version_etc_ar, @function
version_etc_ar:

	mov	r9, -1
	nop	word ptr [rax + rax]
.label_486:
	cmp	qword ptr [r8 + r9*8 + 8], 0
	lea	r9, [r9 + 1]
	jne	.label_486
	jmp	version_etc_arn
	.section	.text
	.align	16
	#Procedure 0x405741
	.globl sub_405741
	.type sub_405741, @function
sub_405741:

	nop	word ptr cs:[rax + rax]
.label_487:
	mov	word ptr [rsi + 0x74], dx
	xor	eax, eax
	ret	
	.section	.text
	.align	16
	#Procedure 0x405757
	.globl sub_405757
	.type sub_405757, @function
sub_405757:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x405765

	.globl rpl_fts_set
	.type rpl_fts_set, @function
rpl_fts_set:
	cmp	edx, 5
	jb	.label_487
	push	rax
	call	__errno_location
	mov	dword ptr [rax], 0x16
	mov	eax, 1
	add	rsp, 8
	ret	
	.section	.text
	.align	16
	#Procedure 0x405780
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
	#Procedure 0x405798
	.globl sub_405798
	.type sub_405798, @function
sub_405798:

	nop	dword ptr [rax + rax]
.label_488:
	call	abort
	.section	.text
	.align	16
	#Procedure 0x4057a5
	.globl sub_4057a5
	.type sub_4057a5, @function
sub_4057a5:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4057ad

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
	je	.label_488
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
	.section	.text
	.align	16
	#Procedure 0x405810

	.globl openat_safer
	.type openat_safer, @function
openat_safer:
	sub	rsp, 0xd8
	test	al, al
	je	.label_489
	movaps	xmmword ptr [rsp + 0x50], xmm0
	movaps	xmmword ptr [rsp + 0x60], xmm1
	movaps	xmmword ptr [rsp + 0x70], xmm2
	movaps	xmmword ptr [rsp + 0x80], xmm3
	movaps	xmmword ptr [rsp + 0x90], xmm4
	movaps	xmmword ptr [rsp + 0xa0], xmm5
	movaps	xmmword ptr [rsp + 0xb0], xmm6
	movaps	xmmword ptr [rsp + 0xc0], xmm7
.label_489:
	mov	qword ptr [rsp + 0x48], r9
	mov	qword ptr [rsp + 0x40], r8
	mov	qword ptr [rsp + 0x38], rcx
	xor	ecx, ecx
	test	dl, 0x40
	je	.label_490
	lea	rax, [rsp + 0x20]
	mov	qword ptr [rsp + 0x10], rax
	lea	rax, [rsp + 0xe0]
	mov	qword ptr [rsp + 8], rax
	mov	dword ptr [rsp + 4], 0x30
	mov	dword ptr [rsp], 0x18
	movsxd	rcx, dword ptr [rsp]
	cmp	rcx, 0x28
	ja	.label_491
	mov	rax, rcx
	add	rax, qword ptr [rsp + 0x10]
	lea	ecx, [rcx + 8]
	mov	dword ptr [rsp], ecx
	jmp	.label_492
.label_491:
	mov	rax, qword ptr [rsp + 8]
	lea	rcx, [rax + 8]
	mov	qword ptr [rsp + 8], rcx
.label_492:
	mov	ecx, dword ptr [rax]
.label_490:
	xor	eax, eax
	call	openat
	mov	edi, eax
	call	fd_safer
	add	rsp, 0xd8
	ret	
	.section	.text
	.align	16
	#Procedure 0x4058ce
	.globl sub_4058ce
	.type sub_4058ce, @function
sub_4058ce:

	nop	
.label_493:
	call	abort
	.section	.text
	.align	16
	#Procedure 0x4058d5
	.globl sub_4058d5
	.type sub_4058d5, @function
sub_4058d5:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4058e0

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
	je	.label_493
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
	.section	.text
	.align	16
	#Procedure 0x405970

	.globl xmalloc
	.type xmalloc, @function
xmalloc:
	push	rbx
	mov	rbx, rdi
	call	malloc
	test	rbx, rbx
	je	.label_494
	test	rax, rax
	je	.label_495
.label_494:
	pop	rbx
	ret	
.label_495:
	call	xalloc_die
	.section	.text
	.align	16
	#Procedure 0x40598a
	.globl sub_40598a
	.type sub_40598a, @function
sub_40598a:

	nop	word ptr [rax + rax]
.label_500:
	test	rax, rax
	mov	ebx, 0x80
	cmovne	rbx, rax
	test	rbx, rbx
	js	.label_496
	mov	qword ptr [rsi], rbx
.label_498:
	mov	rsi, rbx
	call	realloc
	test	rbx, rbx
	je	.label_497
	test	rax, rax
	je	.label_496
.label_497:
	pop	rbx
	ret	
	.section	.text
	.align	16
	#Procedure 0x4059b8
	.globl x2realloc
	.type x2realloc, @function
x2realloc:

	push	rbx
	mov	rax, qword ptr [rsi]
	test	rdi, rdi
	je	.label_500
	movabs	rcx, 0x5555555555555554
	cmp	rax, rcx
	jae	.label_499
	mov	rbx, rax
	shr	rbx, 1
	add	rbx, rax
	inc	rbx
	mov	qword ptr [rsi], rbx
	jne	.label_498
	call	free
	xor	eax, eax
	jmp	.label_497
.label_496:
	call	xalloc_die
.label_499:
	call	xalloc_die
	.section	.text
	.align	16
	#Procedure 0x4059f4
	.globl sub_4059f4
	.type sub_4059f4, @function
sub_4059f4:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x405a00

	.globl rpl_fcntl
	.type rpl_fcntl, @function
rpl_fcntl:
	push	rbp
	push	r14
	push	rbx
	sub	rsp, 0xd0
	mov	ebx, edi
	test	al, al
	je	.label_501
	movaps	xmmword ptr [rsp + 0x50], xmm0
	movaps	xmmword ptr [rsp + 0x60], xmm1
	movaps	xmmword ptr [rsp + 0x70], xmm2
	movaps	xmmword ptr [rsp + 0x80], xmm3
	movaps	xmmword ptr [rsp + 0x90], xmm4
	movaps	xmmword ptr [rsp + 0xa0], xmm5
	movaps	xmmword ptr [rsp + 0xb0], xmm6
	movaps	xmmword ptr [rsp + 0xc0], xmm7
.label_501:
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
	ja	.label_507
	mov	eax, 0xa0a
	bt	eax, esi
	jb	.label_504
	mov	eax, 0x514
	bt	eax, esi
	jb	.label_513
	test	esi, esi
	jne	.label_507
	movsxd	rcx, dword ptr [rsp]
	cmp	rcx, 0x28
	ja	.label_508
	mov	rax, rcx
	add	rax, qword ptr [rsp + 0x10]
	lea	ecx, [rcx + 8]
	mov	dword ptr [rsp], ecx
	jmp	.label_509
.label_507:
	lea	eax, [rsi - 0x400]
	cmp	eax, 8
	ja	.label_510
	mov	ecx, 0x85
	bt	ecx, eax
	jb	.label_513
	mov	ecx, 0x102
	bt	ecx, eax
	jae	.label_515
.label_504:
	xor	eax, eax
	mov	edi, ebx
	call	fcntl
	jmp	.label_505
.label_513:
	movsxd	rcx, dword ptr [rsp]
	cmp	rcx, 0x28
	ja	.label_519
	mov	rax, rcx
	add	rax, qword ptr [rsp + 0x10]
	lea	ecx, [rcx + 8]
	mov	dword ptr [rsp], ecx
	jmp	.label_520
.label_519:
	mov	rax, qword ptr [rsp + 8]
	lea	rcx, [rax + 8]
	mov	qword ptr [rsp + 8], rcx
.label_520:
	mov	edx, dword ptr [rax]
	xor	eax, eax
	mov	edi, ebx
.label_521:
	call	fcntl
.label_505:
	mov	ebp, eax
.label_503:
	mov	eax, ebp
	add	rsp, 0xd0
	pop	rbx
	pop	r14
	pop	rbp
	ret	
.label_515:
	cmp	eax, 6
	jne	.label_510
	movsxd	rcx, dword ptr [rsp]
	cmp	rcx, 0x28
	ja	.label_512
	mov	rax, rcx
	add	rax, qword ptr [rsp + 0x10]
	lea	ecx, [rcx + 8]
	mov	dword ptr [rsp], ecx
	jmp	.label_502
.label_510:
	movsxd	rcx, dword ptr [rsp]
	cmp	rcx, 0x28
	ja	.label_514
	mov	rax, rcx
	add	rax, qword ptr [rsp + 0x10]
	lea	ecx, [rcx + 8]
	mov	dword ptr [rsp], ecx
	jmp	.label_517
.label_508:
	mov	rax, qword ptr [rsp + 8]
	lea	rcx, [rax + 8]
	mov	qword ptr [rsp + 8], rcx
.label_509:
	mov	edx, dword ptr [rax]
	xor	esi, esi
	xor	eax, eax
	mov	edi, ebx
	jmp	.label_521
.label_512:
	mov	rax, qword ptr [rsp + 8]
	lea	rcx, [rax + 8]
	mov	qword ptr [rsp + 8], rcx
.label_502:
	mov	r14d, dword ptr [rax]
	cmp	dword ptr [rip + rpl_fcntl_DUPFD_CLOEXEC.have_dupfd_cloexec],  0
	js	.label_506
	mov	esi, 0x406
	xor	eax, eax
	mov	edi, ebx
	mov	edx, r14d
	call	fcntl
	mov	ebp, eax
	test	ebp, ebp
	jns	.label_511
	call	__errno_location
	cmp	dword ptr [rax], 0x16
	jne	.label_511
	xor	esi, esi
	xor	eax, eax
	mov	edi, ebx
	mov	edx, r14d
	call	fcntl
	mov	ebp, eax
	test	ebp, ebp
	js	.label_503
	mov	dword ptr [rip + rpl_fcntl_DUPFD_CLOEXEC.have_dupfd_cloexec],  0xffffffff
	mov	al, 1
	jmp	.label_516
.label_511:
	mov	dword ptr [rip + rpl_fcntl_DUPFD_CLOEXEC.have_dupfd_cloexec],  1
	jmp	.label_503
.label_514:
	mov	rax, qword ptr [rsp + 8]
	lea	rcx, [rax + 8]
	mov	qword ptr [rsp + 8], rcx
.label_517:
	mov	rdx, qword ptr [rax]
	xor	eax, eax
	mov	edi, ebx
	call	fcntl
	jmp	.label_505
.label_506:
	xor	esi, esi
	xor	eax, eax
	mov	edi, ebx
	mov	edx, r14d
	call	fcntl
	mov	ebp, eax
	cmp	dword ptr [rip + rpl_fcntl_DUPFD_CLOEXEC.have_dupfd_cloexec],  -1
	sete	al
.label_516:
	test	al, al
	je	.label_503
	test	ebp, ebp
	js	.label_503
	mov	esi, 1
	xor	eax, eax
	mov	edi, ebp
	call	fcntl
	mov	ecx, eax
	test	ecx, ecx
	js	.label_518
	or	ecx, 1
	mov	esi, 2
	xor	eax, eax
	mov	edi, ebp
	mov	edx, ecx
	call	fcntl
	cmp	eax, -1
	jne	.label_503
.label_518:
	call	__errno_location
	mov	rbx, rax
	mov	r14d, dword ptr [rbx]
	mov	edi, ebp
	call	close
	mov	dword ptr [rbx], r14d
	mov	ebp, 0xffffffff
	jmp	.label_503
	.section	.text
	.align	16
	#Procedure 0x405c91
	.globl sub_405c91
	.type sub_405c91, @function
sub_405c91:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x405ca0
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
	je	.label_522
	add	rbx, 8
	nop	word ptr cs:[rax + rax]
.label_523:
	mov	rdi, r12
	mov	rsi, r15
	mov	rdx, r14
	call	memcmp
	test	eax, eax
	mov	rax, r13
	je	.label_522
	mov	r13, qword ptr [rbx]
	add	rbx, 8
	add	r15, r14
	test	r13, r13
	mov	eax, 0
	jne	.label_523
.label_522:
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	ret	
	.section	.text
	.align	16
	#Procedure 0x405d03
	.globl sub_405d03
	.type sub_405d03, @function
sub_405d03:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x405d10

	.globl cycle_check_init
	.type cycle_check_init, @function
cycle_check_init:
	mov	qword ptr [rdi + 0x10], 0
	mov	dword ptr [rdi + 0x18], 0x95f616
	ret	
.label_524:
	call	xalloc_die
	.section	.text
	.align	16
	#Procedure 0x405d25
	.globl sub_405d25
	.type sub_405d25, @function
sub_405d25:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x405d2f
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
	je	.label_525
	test	r14, r14
	je	.label_524
.label_525:
	xor	esi, esi
	mov	rdi, r14
	mov	rdx, rbx
	call	memset
	mov	rax, r14
	add	rsp, 8
	pop	rbx
	pop	r14
	ret	
	.section	.text
	.align	16
	#Procedure 0x405d60

	.globl dev_type_compare
	.type dev_type_compare, @function
dev_type_compare:
	mov	rax, qword ptr [rdi]
	cmp	rax, qword ptr [rsi]
	sete	al
	ret	
	.section	.text
	.align	16
	#Procedure 0x405d6a
	.globl sub_405d6a
	.type sub_405d6a, @function
sub_405d6a:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x405d70
	.globl xcharalloc
	.type xcharalloc, @function
xcharalloc:

	push	rbx
	mov	rbx, rdi
	call	malloc
	test	rbx, rbx
	je	.label_526
	test	rax, rax
	je	.label_527
.label_526:
	pop	rbx
	ret	
.label_527:
	call	xalloc_die
	.section	.text
	.align	16
	#Procedure 0x405d8a
	.globl sub_405d8a
	.type sub_405d8a, @function
sub_405d8a:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x405d90

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
	ja	.label_528
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
	jmp	.label_529
.label_528:
	mov	eax, ebx
.label_529:
	add	rsp, 8
	pop	rbx
	pop	r14
	pop	r15
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x405dd1
	.globl sub_405dd1
	.type sub_405dd1, @function
sub_405dd1:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x405de0
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
	je	.label_530
	mov	qword ptr [rax], rbx
.label_530:
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
	#Procedure 0x405ecc
	.globl sub_405ecc
	.type sub_405ecc, @function
sub_405ecc:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x405ed0
	.globl quotearg_char
	.type quotearg_char, @function
quotearg_char:

	sub	rsp, 0x38
	mov	ecx, esi
	mov	rax, rdi
	mov	rdx, qword ptr [rip + label_143]
	mov	qword ptr [rsp + 0x30], rdx
	movups	xmm0, xmmword ptr [rip + label_144]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0, xmmword ptr [rip + label_145]
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
	#Procedure 0x405f3f
	.globl sub_405f3f
	.type sub_405f3f, @function
sub_405f3f:

	nop	
	.section	.text
	.align	16
	#Procedure 0x405f40

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
.label_649:
	mov	r11, rbp
	xor	r14d, r14d
	mov	ecx, r15d
	cmp	r15d, 0xa
	ja	.label_646
	mov	edi, 7
	mov	r13b, 1
	xor	esi, esi
	mov	r8, qword ptr [rsp + 0x30]
	jmp	qword ptr [(rcx * 8) + label_644]
.label_1164:
	mov	byte ptr [rsp + 7], r10b
	mov	edi, OFFSET FLAT:label_539
	mov	esi, r15d
	mov	rbx, r11
	mov	ebp, r9d
	call	gettext_quote
	mov	qword ptr [rsp + 0x78], rax
	mov	edi, OFFSET FLAT:label_544
	mov	esi, r15d
	call	gettext_quote
	mov	r9d, ebp
	mov	r10b, byte ptr [rsp + 7]
	mov	r11, rbx
	mov	qword ptr [rsp + 0x70], rax
.label_1165:
	mov	dword ptr [rsp + 0x50], r9d
	mov	byte ptr [rsp + 7], r10b
	test	r12b, 1
	mov	r14d, 0
	mov	rcx, qword ptr [rsp + 0x78]
	jne	.label_555
	mov	al, byte ptr [rcx]
	test	al, al
	mov	r14d, 0
	je	.label_555
	xor	r14d, r14d
	nop	word ptr cs:[rax + rax]
.label_572:
	cmp	r14, r11
	jae	.label_537
	mov	rdx, qword ptr [rsp + 8]
	mov	byte ptr [rdx + r14], al
.label_537:
	movzx	eax, byte ptr [rcx + r14 + 1]
	inc	r14
	test	al, al
	jne	.label_572
.label_555:
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
	jmp	.label_534
.label_1157:
	xor	edi, edi
	xor	r14d, r14d
	mov	r13d, eax
	xor	esi, esi
	jmp	.label_534
.label_1160:
	mov	al, 1
.label_1158:
	mov	r12b, 1
.label_1161:
	test	r12b, 1
	mov	cl, 1
	je	.label_585
	mov	ecx, eax
.label_585:
	mov	al, cl
.label_1159:
	test	r12b, 1
	jne	.label_588
	test	r11, r11
	je	.label_566
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx], 0x27
.label_566:
	mov	r14d, 1
	jmp	.label_592
.label_588:
	xor	r14d, r14d
.label_592:
	mov	ecx, OFFSET FLAT:label_544
	mov	qword ptr [rsp + 0x48], rcx
	mov	ecx, 1
	mov	qword ptr [rsp + 0x40], rcx
	mov	r13d, eax
	mov	sil, r12b
	mov	edi, 2
	jmp	.label_534
.label_1162:
	test	r12b, 1
	jne	.label_605
	test	r11, r11
	je	.label_607
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax], 0x22
.label_607:
	mov	r14d, 1
	jmp	.label_609
.label_1163:
	mov	r13b, 1
	mov	edi, 5
	xor	r14d, r14d
	mov	eax, OFFSET FLAT:label_611
	mov	qword ptr [rsp + 0x48], rax
	mov	eax, 1
	mov	qword ptr [rsp + 0x40], rax
	mov	sil, 1
	jmp	.label_534
.label_605:
	xor	r14d, r14d
.label_609:
	mov	eax, OFFSET FLAT:label_611
	mov	qword ptr [rsp + 0x48], rax
	mov	eax, 1
	mov	qword ptr [rsp + 0x40], rax
	mov	r13b, 1
	mov	sil, r12b
	mov	edi, 5
	nop	word ptr cs:[rax + rax]
.label_534:
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
	jmp	.label_629
	.section	.text
	.align	16
	#Procedure 0x40622d
	.globl sub_40622d
	.type sub_40622d, @function
sub_40622d:

	nop	dword ptr [rax]
.label_573:
	inc	rsi
.label_629:
	cmp	rbp, -1
	je	.label_548
	cmp	rsi, rbp
	jne	.label_549
	jmp	.label_551
	.section	.text
	.align	16
	#Procedure 0x406243
	.globl sub_406243
	.type sub_406243, @function
sub_406243:

	nop	word ptr cs:[rax + rax]
.label_548:
	mov	rcx, -1
	cmp	byte ptr [rdi + rsi], 0
	je	.label_556
.label_549:
	cmp	byte ptr [rsp + 0x2f], 0
	je	.label_553
	mov	rax, qword ptr [rsp + 0x40]
	lea	rbx, [rsi + rax]
	cmp	rax, 2
	jb	.label_565
	cmp	rbp, -1
	jne	.label_565
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
.label_565:
	cmp	rbx, rbp
	jbe	.label_576
.label_553:
	xor	r8d, r8d
.label_599:
	movzx	r15d, byte ptr [rdi + rsi]
	cmp	r15, 0x7e
	ja	.label_577
	xor	edx, edx
	mov	r13b, 1
	mov	cl, 0x6e
	mov	bl, 0x61
	xor	eax, eax
	jmp	qword ptr [(r15 * 8) + label_579]
.label_1044:
	test	rsi, rsi
	jne	.label_552
	jmp	.label_583
	.section	.text
	.align	16
	#Procedure 0x4062e5
	.globl sub_4062e5
	.type sub_4062e5, @function
sub_4062e5:

	nop	word ptr cs:[rax + rax]
.label_576:
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
	jne	.label_596
	cmp	byte ptr [rsp + 6], 0
	mov	rdi, qword ptr [rsp + 0x30]
	mov	r11, rbx
	mov	r10d, r15d
	mov	rax, qword ptr [rsp + 0x38]
	mov	r9d, ebp
	mov	rsi, r12
	mov	r12, rax
	mov	rbp, qword ptr [rsp + 0x20]
	je	.label_599
	jmp	.label_543
.label_596:
	mov	rdi, qword ptr [rsp + 0x30]
	mov	r11, rbx
	mov	r10d, r15d
	mov	rax, qword ptr [rsp + 0x38]
	mov	r9d, ebp
	mov	rsi, r12
	mov	r12, rax
	mov	rbp, qword ptr [rsp + 0x20]
	jmp	.label_599
.label_1048:
	xor	eax, eax
	cmp	rbp, -1
	je	.label_619
	test	rsi, rsi
	jne	.label_620
	cmp	rbp, 1
	je	.label_583
	xor	r13d, r13d
	jmp	.label_557
.label_1037:
	cmp	byte ptr [rsp + 0x17], 0
	je	.label_627
	cmp	byte ptr [rsp + 6], 0
	jne	.label_587
	cmp	r12d, 2
	jne	.label_632
	mov	eax, r9d
	and	al, 1
	jne	.label_632
	cmp	r14, r11
	jae	.label_635
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], 0x27
.label_635:
	lea	rax, [r14 + 1]
	cmp	rax, r11
	jae	.label_639
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + rax], 0x24
.label_639:
	lea	rax, [r14 + 2]
	cmp	rax, r11
	jae	.label_594
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + rax], 0x27
.label_594:
	add	r14, 3
	mov	r9b, 1
.label_632:
	mov	rcx, r14
	cmp	rcx, r11
	jae	.label_630
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + rcx], 0x5c
.label_630:
	lea	r14, [rcx + 1]
	mov	al, 1
	mov	r15b, 0x30
	cmp	r12d, 2
	je	.label_533
	lea	rdx, [rsi + 1]
	cmp	rdx, rbp
	jae	.label_533
	mov	dl, byte ptr [rdi + rdx]
	add	dl, 0xd0
	cmp	dl, 9
	ja	.label_533
	cmp	r14, r11
	jae	.label_602
	mov	rdx, qword ptr [rsp + 8]
	mov	byte ptr [rdx + r14], 0x30
.label_602:
	lea	rdx, [rcx + 2]
	cmp	rdx, r11
	jae	.label_617
	mov	rbx, qword ptr [rsp + 8]
	mov	byte ptr [rbx + rdx], 0x30
.label_617:
	add	rcx, 3
	xor	r13d, r13d
	mov	r14, rcx
	jmp	.label_557
.label_1038:
	mov	bl, 0x62
	jmp	.label_562
.label_1039:
	mov	cl, 0x74
	jmp	.label_567
.label_1040:
	mov	bl, 0x76
	jmp	.label_562
.label_1041:
	mov	bl, 0x66
	jmp	.label_562
.label_1042:
	mov	cl, 0x72
	jmp	.label_567
.label_1045:
	mov	r15b, 0x27
	mov	al, 1
	mov	qword ptr [rsp + 0xa0], rax
	cmp	r12d, 2
	jne	.label_571
	cmp	byte ptr [rsp + 6], 0
	jne	.label_535
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
	jae	.label_575
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], 0x27
.label_575:
	lea	rax, [r14 + 1]
	cmp	rax, r11
	jae	.label_581
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + rax], 0x5c
.label_581:
	lea	rax, [r14 + 2]
	cmp	rax, r11
	jae	.label_586
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + rax], 0x27
.label_586:
	add	r14, 3
	xor	r9d, r9d
.label_571:
	xor	eax, eax
	mov	r13b, 1
	jmp	.label_557
.label_1046:
	mov	r15b, 0x3f
	cmp	r12d, 5
	je	.label_593
	cmp	r12d, 2
	jne	.label_552
	cmp	byte ptr [rsp + 6], 0
	je	.label_552
	jmp	.label_535
.label_1047:
	cmp	r12d, 2
	jne	.label_606
	cmp	byte ptr [rsp + 6], 0
	jne	.label_535
	mov	r15b, 0x5c
	xor	eax, eax
	xor	r13d, r13d
	jmp	.label_563
.label_577:
	mov	dword ptr [rsp + 0x54], r8d
	mov	dword ptr [rsp + 0x50], r9d
	mov	byte ptr [rsp + 7], r10b
	mov	qword ptr [rsp + 0x98], r11
	cmp	qword ptr [rsp + 0xa8], 1
	jne	.label_615
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
.label_569:
	and	r13b, 1
	mov	r8d, r13d
	or	r8b, byte ptr [rsp + 0x2a]
	mov	qword ptr [rsp + 0x60], r12
	cmp	r12, 1
	mov	r11, qword ptr [rsp + 0x98]
	mov	r10b, byte ptr [rsp + 7]
	mov	r12, qword ptr [rsp + 0x38]
	mov	r9d, dword ptr [rsp + 0x50]
	ja	.label_631
	test	r8b, r8b
	je	.label_631
	xor	eax, eax
	mov	rbp, qword ptr [rsp + 0x20]
	mov	r8d, dword ptr [rsp + 0x54]
	jmp	.label_557
.label_619:
	test	rsi, rsi
	jne	.label_650
	mov	cl, byte ptr [rdi + 1]
	test	cl, cl
	jne	.label_650
.label_583:
	mov	dl, 1
.label_1043:
	cmp	byte ptr [rsp + 0x1f], 0
	je	.label_535
	xor	eax, eax
	mov	r13b, dl
	nop	word ptr [rax + rax]
.label_557:
	cmp	byte ptr [rsp + 0x2e], 0
	je	.label_542
	cmp	qword ptr [rsp + 0xf0], 0
	jne	.label_591
	jmp	.label_547
	.section	.text
	.align	16
	#Procedure 0x406634
	.globl sub_406634
	.type sub_406634, @function
sub_406634:

	nop	word ptr cs:[rax + rax]
.label_542:
	cmp	byte ptr [rsp + 0x2d], 0
	je	.label_547
.label_591:
	mov	ebx, r8d
	mov	r8, rsi
	mov	ecx, r15d
	shr	cl, 5
	movzx	edx, cl
	mov	esi, 1
	mov	ecx, r15d
	shl	esi, cl
	test	bl, bl
	jne	.label_633
	mov	rcx, qword ptr [rsp + 0xf0]
	and	esi, dword ptr [rcx + rdx*4]
	mov	ebx, r15d
	mov	rsi, r8
	je	.label_563
	jmp	.label_568
	.section	.text
	.align	16
	#Procedure 0x40667d
	.globl sub_40667d
	.type sub_40667d, @function
sub_40667d:

	nop	dword ptr [rax]
.label_547:
	test	r8b, r8b
	mov	ebx, r15d
	jne	.label_568
	jmp	.label_563
.label_633:
	mov	ebx, r15d
	mov	rsi, r8
	jmp	.label_568
.label_627:
	cmp	dword ptr [rsp + 0x90], 0
	jne	.label_573
	xor	r15d, r15d
	jmp	.label_552
.label_606:
	mov	cl, 0x5c
	cmp	byte ptr [rsp + 0x29], 0
	je	.label_567
	xor	eax, eax
	mov	r15b, 0x5c
	xor	r13d, r13d
	jmp	.label_563
.label_567:
	cmp	byte ptr [rsp + 0x1f], 0
	mov	ebx, ecx
	je	.label_535
.label_562:
	xor	eax, eax
	cmp	byte ptr [rsp + 0x17], 0
	mov	r13d, 0
	je	.label_557
	nop	word ptr cs:[rax + rax]
.label_568:
	cmp	byte ptr [rsp + 6], 0
	jne	.label_587
	cmp	r12d, 2
	jne	.label_590
	mov	eax, r9d
	and	al, 1
	jne	.label_590
	cmp	r14, r11
	jae	.label_546
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], 0x27
.label_546:
	lea	rax, [r14 + 1]
	cmp	rax, r11
	jae	.label_597
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + rax], 0x24
.label_597:
	lea	rax, [r14 + 2]
	cmp	rax, r11
	jae	.label_589
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + rax], 0x27
.label_589:
	add	r14, 3
	mov	r9b, 1
.label_590:
	cmp	r14, r11
	jae	.label_625
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], 0x5c
.label_625:
	inc	r14
	jmp	.label_612
.label_615:
	mov	qword ptr [rsp + 0x80], 0
	cmp	rbp, -1
	jne	.label_616
	mov	rbx, rsi
	call	strlen
	mov	rsi, rbx
	mov	rdi, qword ptr [rsp + 0x30]
	mov	rbp, rax
.label_616:
	lea	rax, [rdi + rsi]
	mov	qword ptr [rsp + 0x60], rax
	mov	r13b, 1
	xor	r12d, r12d
	lea	rax, [rsp + 0x80]
	mov	rcx, rax
	mov	qword ptr [rsp + 0x20], rbp
	mov	qword ptr [rsp + 0x58], rsi
.label_559:
	lea	rbx, [r12 + rsi]
	lea	rsi, [rdi + rbx]
	mov	rdx, rbp
	sub	rdx, rbx
	lea	rdi, [rsp + 0x94]
	call	rpl_mbrtowc
	mov	rbp, rax
	test	rbp, rbp
	je	.label_637
	cmp	rbp, -1
	movabs	rsi, 0x20000002b
	je	.label_641
	cmp	rbp, -2
	je	.label_604
	cmp	rbp, 1
	seta	al
	and	al, byte ptr [rsp + 0x2b]
	cmp	al, 1
	mov	rdi, qword ptr [rsp + 0x30]
	mov	r11, qword ptr [rsp + 0x98]
	jne	.label_558
	mov	rax, qword ptr [rsp + 0x60]
	lea	rax, [rax + r12]
	mov	ecx, 1
	nop	word ptr cs:[rax + rax]
.label_628:
	movsx	edx, byte ptr [rax + rcx]
	add	edx, -0x5b
	cmp	edx, 0x21
	ja	.label_608
	bt	rsi, rdx
	jb	.label_545
.label_608:
	inc	rcx
	cmp	rcx, rbp
	jb	.label_628
.label_558:
	mov	edi, dword ptr [rsp + 0x94]
	call	iswprint
	test	eax, eax
	jne	.label_651
	xor	r13d, r13d
.label_651:
	lea	rdi, [rsp + 0x80]
	add	r12, rbp
	mov	rbx, rdi
	call	mbsinit
	mov	rcx, rbx
	test	eax, eax
	mov	rdi, qword ptr [rsp + 0x30]
	mov	rbp, qword ptr [rsp + 0x20]
	mov	rsi, qword ptr [rsp + 0x58]
	je	.label_559
	jmp	.label_569
.label_533:
	xor	r13d, r13d
	jmp	.label_557
.label_650:
	mov	rbp, -1
	xor	r13d, r13d
	jmp	.label_557
.label_593:
	cmp	dword ptr [rsp + 0x8c], 0
	je	.label_552
	lea	rcx, [rsi + 2]
	cmp	rcx, rbp
	jae	.label_552
	cmp	byte ptr [rdi + rsi + 1], 0x3f
	jne	.label_552
	movsx	edx, byte ptr [rdi + rcx]
	xor	eax, eax
	cmp	edx, 0x3e
	ja	.label_570
	mov	rbx, rsi
	movabs	rsi, 0x7000a38200000000
	bt	rsi, rdx
	jae	.label_582
	cmp	byte ptr [rsp + 6], 0
	jne	.label_618
	cmp	r14, r11
	jae	.label_624
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], 0x3f
.label_624:
	lea	rax, [r14 + 1]
	cmp	rax, r11
	jae	.label_532
	mov	rsi, qword ptr [rsp + 8]
	mov	byte ptr [rsi + rax], 0x22
.label_532:
	lea	rax, [r14 + 2]
	cmp	rax, r11
	jae	.label_595
	mov	rsi, qword ptr [rsp + 8]
	mov	byte ptr [rsi + rax], 0x22
.label_595:
	lea	rax, [r14 + 3]
	cmp	rax, r11
	jae	.label_623
	mov	rsi, qword ptr [rsp + 8]
	mov	byte ptr [rsi + rax], 0x3f
.label_623:
	add	r14, 4
	xor	eax, eax
	mov	rsi, rcx
	mov	r15b, dl
	xor	r13d, r13d
	jmp	.label_557
.label_552:
	xor	eax, eax
.label_620:
	xor	r13d, r13d
	jmp	.label_557
.label_631:
	add	qword ptr [rsp + 0x60], rsi
	xor	eax, eax
	mov	rbp, qword ptr [rsp + 0x20]
	jmp	.label_614
	.section	.text
	.align	16
	#Procedure 0x406962
	.globl sub_406962
	.type sub_406962, @function
sub_406962:

	nop	word ptr cs:[rax + rax]
.label_574:
	inc	r14
	mov	r15b, byte ptr [rdi + rsi + 1]
	mov	rsi, rdx
.label_614:
	test	r8b, r8b
	je	.label_584
	mov	ecx, dword ptr [rsp + 0x54]
	test	cl, 1
	je	.label_621
	cmp	r14, r11
	jae	.label_613
	mov	rdx, qword ptr [rsp + 8]
	mov	byte ptr [rdx + r14], 0x5c
.label_613:
	inc	r14
	mov	dword ptr [rsp + 0x54], 0
	jmp	.label_621
	.section	.text
	.align	16
	#Procedure 0x4069ac
	.globl sub_4069ac
	.type sub_4069ac, @function
sub_4069ac:

	nop	dword ptr [rax]
.label_584:
	cmp	byte ptr [rsp + 6], 0
	jne	.label_543
	cmp	r12d, 2
	jne	.label_636
	mov	eax, r9d
	and	al, 1
	jne	.label_636
	cmp	r14, r11
	jae	.label_640
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], 0x27
.label_640:
	lea	rax, [r14 + 1]
	cmp	rax, r11
	jae	.label_642
	mov	rdx, qword ptr [rsp + 8]
	mov	byte ptr [rdx + rax], 0x24
.label_642:
	lea	rax, [r14 + 2]
	cmp	rax, r11
	jae	.label_647
	mov	rdx, qword ptr [rsp + 8]
	mov	byte ptr [rdx + rax], 0x27
.label_647:
	add	r14, 3
	mov	r9b, 1
.label_636:
	cmp	r14, r11
	jae	.label_652
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], 0x5c
.label_652:
	lea	rax, [r14 + 1]
	cmp	rax, r11
	jae	.label_540
	mov	edx, r15d
	shr	dl, 6
	or	dl, 0x30
	mov	rbx, qword ptr [rsp + 8]
	mov	byte ptr [rbx + rax], dl
.label_540:
	lea	rax, [r14 + 2]
	cmp	rax, r11
	jae	.label_531
	mov	edx, r15d
	shr	dl, 3
	and	dl, 7
	or	dl, 0x30
	mov	rbx, qword ptr [rsp + 8]
	mov	byte ptr [rbx + rax], dl
.label_531:
	add	r14, 3
	and	r15b, 7
	or	r15b, 0x30
	mov	al, 1
.label_621:
	lea	rdx, [rsi + 1]
	cmp	qword ptr [rsp + 0x60], rdx
	jbe	.label_563
	test	r9b, 1
	je	.label_564
	mov	ebx, eax
	and	bl, 1
	jne	.label_564
	mov	rbx, rsi
	cmp	r14, r11
	jae	.label_550
	mov	rsi, qword ptr [rsp + 8]
	mov	byte ptr [rsi + r14], 0x27
.label_550:
	lea	rsi, [r14 + 1]
	cmp	rsi, r11
	jae	.label_560
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + rsi], 0x27
.label_560:
	add	r14, 2
	xor	r9d, r9d
	mov	rsi, rbx
.label_564:
	cmp	r14, r11
	jae	.label_574
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + r14], r15b
	jmp	.label_574
	.section	.text
	.align	16
	#Procedure 0x406ab3
	.globl sub_406ab3
	.type sub_406ab3, @function
sub_406ab3:

	nop	word ptr cs:[rax + rax]
.label_563:
	test	r9b, 1
	je	.label_578
	and	al, 1
	jne	.label_578
	cmp	r14, r11
	jae	.label_580
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], 0x27
.label_580:
	lea	rax, [r14 + 1]
	cmp	rax, r11
	jae	.label_538
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + rax], 0x27
.label_538:
	add	r14, 2
	xor	r9d, r9d
.label_578:
	mov	ebx, r15d
.label_612:
	cmp	r14, r11
	jae	.label_638
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], bl
.label_638:
	inc	r14
	shl	r13b, 7
	sar	r13b, 7
	and	r13b, r10b
	mov	r10d, r13d
	jmp	.label_573
.label_641:
	xor	r13d, r13d
.label_637:
	mov	rdi, qword ptr [rsp + 0x30]
	mov	rsi, qword ptr [rsp + 0x58]
	jmp	.label_569
.label_604:
	mov	rbp, qword ptr [rsp + 0x20]
	cmp	rbp, rbx
	mov	rdi, qword ptr [rsp + 0x30]
	jbe	.label_603
	mov	rsi, qword ptr [rsp + 0x58]
.label_610:
	mov	rax, qword ptr [rsp + 0x60]
	cmp	byte ptr [rax + r12], 0
	je	.label_645
	lea	rax, [rsi + r12 + 1]
	inc	r12
	cmp	rax, rbp
	jb	.label_610
	xor	r13d, r13d
	jmp	.label_569
.label_603:
	xor	r13d, r13d
	mov	rsi, qword ptr [rsp + 0x58]
	jmp	.label_569
.label_645:
	xor	r13d, r13d
	jmp	.label_569
.label_570:
	xor	r13d, r13d
	jmp	.label_557
.label_582:
	xor	r13d, r13d
	mov	rsi, rbx
	jmp	.label_557
	.section	.text
	.align	16
	#Procedure 0x406b88
	.globl sub_406b88
	.type sub_406b88, @function
sub_406b88:

	nop	dword ptr [rax + rax]
.label_551:
	mov	rcx, rsi
.label_556:
	cmp	r12d, 2
	setne	al
	test	r14, r14
	setne	dl
	cmp	byte ptr [rsp + 6], 0
	je	.label_626
	or	al, dl
	je	.label_648
.label_626:
	cmp	r12d, 2
	setne	al
	cmp	byte ptr [rsp + 6], 0
	setne	dl
	mov	rsi, qword ptr [rsp + 0xa0]
	test	sil, 1
	mov	bl, byte ptr [rsp + 0x2c]
	mov	rsi, qword ptr [rsp + 0xb0]
	je	.label_634
	or	al, dl
	jne	.label_634
	test	r10b, 1
	jne	.label_643
	cmp	qword ptr [rsp + 0x68], 0
	je	.label_634
	test	r11, r11
	mov	r15d, r12d
	mov	al, bl
	mov	qword ptr [rsp + 0x20], rcx
	mov	r12d, esi
	mov	rbp, qword ptr [rsp + 0x68]
	je	.label_649
.label_634:
	mov	rdx, qword ptr [rsp + 0x48]
	test	rdx, rdx
	je	.label_536
	cmp	byte ptr [rsp + 6], 0
	mov	rcx, qword ptr [rsp + 8]
	jne	.label_541
	mov	al, byte ptr [rdx]
	test	al, al
	je	.label_541
	inc	rdx
	nop	word ptr cs:[rax + rax]
.label_554:
	cmp	r14, r11
	jae	.label_622
	mov	byte ptr [rcx + r14], al
.label_622:
	inc	r14
	movzx	eax, byte ptr [rdx]
	inc	rdx
	test	al, al
	jne	.label_554
	jmp	.label_541
.label_587:
	mov	qword ptr [rsp + 0x20], rbp
.label_543:
	mov	rdx, rdi
	jmp	.label_561
.label_535:
	mov	qword ptr [rsp + 0x20], rbp
.label_545:
	mov	rdx, rdi
	mov	eax, 2
.label_600:
	mov	qword ptr [rsp + 0x38], rax
.label_561:
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
.label_598:
	mov	r14, rax
.label_601:
	mov	rax, r14
	add	rsp, 0xb8
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_648:
	mov	rdx, rdi
	mov	qword ptr [rsp + 0x20], rcx
	jmp	.label_561
.label_643:
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
	jmp	.label_598
.label_536:
	mov	rcx, qword ptr [rsp + 8]
.label_541:
	cmp	r14, r11
	jae	.label_601
	mov	byte ptr [rcx + r14], 0
	jmp	.label_601
.label_618:
	mov	qword ptr [rsp + 0x20], rbp
	mov	rdx, rdi
	mov	eax, 5
	jmp	.label_600
.label_646:
	call	abort
	.section	.text
	.align	16
	#Procedure 0x406d47
	.globl sub_406d47
	.type sub_406d47, @function
sub_406d47:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x406d50

	.globl dup_safer
	.type dup_safer, @function
dup_safer:
	xor	esi, esi
	mov	edx, 3
	xor	eax, eax
	jmp	rpl_fcntl
	.section	.text
	.align	16
	#Procedure 0x406d5e
	.globl sub_406d5e
	.type sub_406d5e, @function
sub_406d5e:

	nop	
.label_656:
	mov	esi, OFFSET FLAT:label_653
.label_655:
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
	#Procedure 0x406db3

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
	je	.label_656
	mov	esi, OFFSET FLAT:label_654
	jmp	.label_655
	.section	.text
	.align	16
	#Procedure 0x406dd0

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
	mov	r12, rdi
	call	strlen
	mov	rbx, rax
	mov	qword ptr [rsp + 0x20], rbp
	mov	r15, qword ptr [rbp]
	test	r15, r15
	je	.label_660
	mov	qword ptr [rsp + 8], -1
	xor	eax, eax
	mov	qword ptr [rsp + 0x10], rax
	mov	qword ptr [rsp + 0x18], r14
	xor	ebp, ebp
	nop	dword ptr [rax + rax]
.label_657:
	mov	rdi, r15
	mov	rsi, r12
	mov	rdx, rbx
	call	strncmp
	test	eax, eax
	jne	.label_658
	mov	rdi, r15
	call	strlen
	cmp	rax, rbx
	je	.label_662
	cmp	qword ptr [rsp + 8], -1
	je	.label_663
	mov	rax, qword ptr [rsp + 0x18]
	test	rax, rax
	je	.label_659
	mov	rdi, qword ptr [rsp + 8]
	imul	rdi, r13
	add	rdi, rax
	mov	rsi, r14
	mov	rdx, r13
	call	memcmp
	test	eax, eax
	je	.label_658
.label_659:
	mov	al, 1
	mov	qword ptr [rsp + 0x10], rax
	jmp	.label_658
.label_663:
	mov	qword ptr [rsp + 8], rbp
	nop	word ptr [rax + rax]
.label_658:
	mov	rax, qword ptr [rsp + 0x20]
	mov	r15, qword ptr [rax + rbp*8 + 8]
	inc	rbp
	add	r14, r13
	test	r15, r15
	jne	.label_657
	jmp	.label_661
.label_660:
	mov	qword ptr [rsp + 8], -1
	xor	eax, eax
	mov	qword ptr [rsp + 0x10], rax
.label_661:
	mov	rax, qword ptr [rsp + 0x10]
	test	al, 1
	mov	rbp, -2
	cmove	rbp, qword ptr [rsp + 8]
.label_662:
	mov	rax, rbp
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
	#Procedure 0x406ecd
	.globl sub_406ecd
	.type sub_406ecd, @function
sub_406ecd:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x406ed0
	.globl quotearg_custom_mem
	.type quotearg_custom_mem, @function
quotearg_custom_mem:

	sub	rsp, 0x38
	mov	rax, qword ptr [rip + label_143]
	mov	qword ptr [rsp + 0x30], rax
	movups	xmm0, xmmword ptr [rip + label_144]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0, xmmword ptr [rip + label_145]
	movaps	xmmword ptr [rsp + 0x10], xmm0
	movups	xmm0, xmmword ptr [rip + default_quoting_options]
	movaps	xmmword ptr [rsp], xmm0
	mov	dword ptr [rsp], 0xa
	test	rdi, rdi
	je	.label_664
	test	rsi, rsi
	je	.label_664
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
.label_664:
	call	abort
	.section	.text
	.align	16
	#Procedure 0x406f3c
	.globl sub_406f3c
	.type sub_406f3c, @function
sub_406f3c:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x406f40

	.globl rm
	.type rm, @function
rm:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0xa8
	mov	eax, 2
	cmp	qword ptr [rdi], 0
	je	.label_684
	mov	qword ptr [rsp + 0x10], rsi
	cmp	byte ptr [rsi + 8], 0
	mov	eax, 0x218
	mov	esi, 0x258
	cmove	esi, eax
	xor	edx, edx
	call	xfts_open
	mov	r12, rax
	mov	r13d, 2
	jmp	.label_665
	.section	.text
	.align	16
	#Procedure 0x406f88
	.globl sub_406f88
	.type sub_406f88, @function
sub_406f88:

	nop	dword ptr [rax + rax]
.label_693:
	mov	edx, 4
	mov	rdi, r12
	mov	rsi, r14
	call	rpl_fts_set
	mov	rdi, r12
	call	rpl_fts_read
.label_665:
	mov	dword ptr [rsp + 8], r13d
.label_716:
	mov	rdi, r12
	call	rpl_fts_read
	mov	r14, rax
	test	r14, r14
	je	.label_707
	movzx	eax, word ptr [r14 + 0x70]
	lea	ecx, [rax - 1]
	movzx	ecx, cx
	cmp	ecx, 0xc
	ja	.label_678
	jmp	qword ptr [(rcx * 8) + label_712]
.label_1128:
	mov	r13, qword ptr [rsp + 0x10]
	cmp	byte ptr [r13 + 9], 0
	jne	.label_713
	mov	ebp, 0x15
	cmp	byte ptr [r13 + 0xa], 0
	je	.label_717
	mov	edi, dword ptr [r12 + 0x2c]
	mov	rsi, qword ptr [r14 + 0x30]
	call	is_empty_dir
	test	al, al
	je	.label_666
.label_713:
	cmp	qword ptr [r14 + 0x58], 0
	jne	.label_668
	mov	rbp, qword ptr [r14 + 0x30]
	mov	rdi, rbp
	call	last_component
	cmp	byte ptr [rax], 0x2e
	jne	.label_714
	xor	ecx, ecx
	cmp	byte ptr [rax + 1], 0x2e
	sete	cl
	mov	al, byte ptr [rax + rcx + 1]
	cmp	al, 0x2f
	je	.label_681
	test	al, al
	je	.label_681
.label_714:
	mov	rax, qword ptr [r13 + 0x10]
	test	rax, rax
	je	.label_687
	mov	rcx, qword ptr [r14 + 0x80]
	cmp	rcx, qword ptr [rax]
	jne	.label_687
	mov	rcx, qword ptr [r14 + 0x78]
	cmp	rcx, qword ptr [rax + 8]
	je	.label_680
.label_687:
	cmp	byte ptr [r13 + 0x18], 0
	je	.label_668
	mov	esi, OFFSET FLAT:label_696
	xor	edx, edx
	mov	rdi, rbp
	call	file_name_concat
	mov	rbx, rax
	test	rbx, rbx
	mov	ebp, 0
	je	.label_699
	mov	edi, 1
	mov	rsi, rbx
	lea	rdx, [rsp + 0x18]
	call	__lxstat
	test	eax, eax
	jne	.label_704
	mov	rdi, rbx
	call	free
	mov	rax, qword ptr [r12 + 0x18]
	cmp	rax, qword ptr [rsp + 0x18]
	jne	.label_708
.label_668:
	mov	edx, 1
	mov	r8d, 2
	mov	rdi, r12
	mov	rsi, r14
	mov	rcx, r13
	lea	r9, [rsp + 0x18]
	call	prompt
	mov	r15d, eax
	cmp	r15d, 2
	jne	.label_715
	cmp	dword ptr [rsp + 0x18], 4
	jne	.label_715
	mov	ecx, 1
	mov	rdi, r12
	mov	rsi, r14
	mov	rdx, r13
	call	excise
	mov	r15d, eax
	mov	edx, 4
	mov	rdi, r12
	mov	rsi, r14
	call	rpl_fts_set
	mov	rdi, r12
	call	rpl_fts_read
.label_715:
	cmp	r15d, 2
	je	.label_676
	mov	rax, qword ptr [r14 + 8]
	jmp	.label_721
	.section	.text
	.align	16
	#Procedure 0x40712f
	.globl sub_40712f
	.type sub_40712f, @function
sub_40712f:

	nop	
.label_685:
	mov	qword ptr [rax + 0x20], 1
	mov	rax, qword ptr [rax + 8]
.label_721:
	cmp	qword ptr [rax + 0x58], 0
	js	.label_682
	cmp	qword ptr [rax + 0x20], 0
	je	.label_685
.label_682:
	mov	edx, 4
	mov	rdi, r12
	mov	rsi, r14
	call	rpl_fts_set
	mov	rdi, r12
	call	rpl_fts_read
	jmp	.label_676
.label_1130:
	mov	rcx, qword ptr [rsp + 0x10]
	cmp	byte ptr [rcx + 8], 0
	je	.label_694
	cmp	qword ptr [r14 + 0x58], 0
	jle	.label_694
	mov	rcx, qword ptr [r14 + 0x78]
	cmp	rcx, qword ptr [r12 + 0x18]
	jne	.label_698
	nop	word ptr cs:[rax + rax]
.label_694:
	or	eax, 2
	movzx	ebx, ax
	xor	edx, edx
	cmp	ebx, 6
	sete	dl
	mov	r8d, 3
	xor	r9d, r9d
	mov	rdi, r12
	mov	rsi, r14
	mov	rbp, qword ptr [rsp + 0x10]
	mov	rcx, rbp
	call	prompt
	mov	r15d, eax
	cmp	r15d, 2
	jne	.label_676
	xor	ecx, ecx
	cmp	ebx, 6
	sete	cl
	mov	rdi, r12
	mov	rsi, r14
	mov	rdx, rbp
	call	excise
	mov	r15d, eax
.label_676:
	lea	eax, [r15 - 2]
	cmp	eax, 2
	jae	.label_718
	cmp	dword ptr [rsp + 8], 2
	jne	.label_716
	mov	r13d, 3
	cmp	r15d, 3
	jne	.label_716
	jmp	.label_665
	.section	.text
	.align	16
	#Procedure 0x407205
	.globl sub_407205
	.type sub_407205, @function
sub_407205:

	nop	word ptr cs:[rax + rax]
.label_718:
	mov	r13d, 4
	cmp	r15d, 4
	je	.label_665
	jmp	.label_677
.label_1129:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_679
	mov	edx, 5
	call	dcgettext
	mov	rbp, rax
	mov	rdx, qword ptr [r14 + 0x38]
	xor	edi, edi
	mov	esi, 3
	call	quotearg_n_style_colon
	mov	rcx, rax
	xor	edi, edi
	xor	esi, esi
	xor	eax, eax
	jmp	.label_688
.label_1131:
	mov	r15d, dword ptr [r14 + 0x40]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_690
	mov	edx, 5
	call	dcgettext
	mov	rbp, rax
	mov	rdx, qword ptr [r14 + 0x38]
	xor	edi, edi
	mov	esi, 3
	call	quotearg_n_style_colon
	mov	rcx, rax
	xor	edi, edi
	xor	eax, eax
	mov	esi, r15d
.label_688:
	mov	rdx, rbp
	call	error
.label_667:
	mov	r13d, 4
	jmp	.label_693
.label_698:
	mov	rax, qword ptr [r14 + 8]
	jmp	.label_703
	.section	.text
	.align	16
	#Procedure 0x40729f
	.globl sub_40729f
	.type sub_40729f, @function
sub_40729f:

	nop	
.label_706:
	mov	qword ptr [rax + 0x20], 1
	mov	rax, qword ptr [rax + 8]
.label_703:
	cmp	qword ptr [rax + 0x58], 0
	js	.label_705
	cmp	qword ptr [rax + 0x20], 0
	je	.label_706
.label_705:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_692
	mov	edx, 5
	call	dcgettext
	mov	rbp, rax
	mov	rsi, qword ptr [r14 + 0x38]
	mov	r13d, 4
	mov	edi, 4
	call	quotearg_style
	mov	rcx, rax
	xor	edi, edi
	xor	esi, esi
	xor	eax, eax
	mov	rdx, rbp
	call	error
	jmp	.label_665
.label_666:
	cmp	byte ptr [r13 + 0xa], 0
	mov	ebp, 0x15
	mov	eax, 0x27
	cmovne	ebp, eax
.label_717:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_322
	mov	edx, 5
	call	dcgettext
	mov	r15, rax
	mov	rsi, qword ptr [r14 + 0x38]
	mov	edi, 4
	call	quotearg_style
	mov	rcx, rax
	xor	edi, edi
	xor	eax, eax
	mov	esi, ebp
	mov	rdx, r15
	call	error
	mov	rax, qword ptr [r14 + 8]
	jmp	.label_683
	.section	.text
	.align	16
	#Procedure 0x407343
	.globl sub_407343
	.type sub_407343, @function
sub_407343:

	nop	word ptr cs:[rax + rax]
.label_695:
	mov	qword ptr [rax + 0x20], 1
	mov	rax, qword ptr [rax + 8]
.label_683:
	cmp	qword ptr [rax + 0x58], 0
	js	.label_667
	cmp	qword ptr [rax + 0x20], 0
	je	.label_695
	jmp	.label_667
.label_704:
	mov	rbp, rbx
.label_699:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_710
	mov	edx, 5
	call	dcgettext
	mov	r15, rax
	xor	edi, edi
	mov	esi, 4
	mov	rdx, rbp
	call	quotearg_n_style
	mov	r13, rax
	mov	rdx, qword ptr [r14 + 0x30]
	mov	edi, 1
	mov	esi, 4
	call	quotearg_n_style
	mov	r8, rax
	xor	edi, edi
	xor	esi, esi
	xor	eax, eax
	mov	rdx, r15
	mov	rcx, r13
	call	error
	mov	rdi, rbp
	call	free
	jmp	.label_667
.label_708:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_692
	mov	edx, 5
	call	dcgettext
	mov	rbp, rax
	mov	rsi, qword ptr [r14 + 0x38]
	mov	edi, 4
	call	quotearg_style
	mov	rcx, rax
	xor	edi, edi
	xor	esi, esi
	xor	eax, eax
	mov	rdx, rbp
	call	error
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_674
	jmp	.label_675
.label_681:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_669
	mov	edx, 5
	call	dcgettext
	mov	qword ptr [rsp + 8], rax
	mov	r13d, 4
	xor	edi, edi
	mov	esi, 4
	mov	edx, OFFSET FLAT:label_709
	call	quotearg_n_style
	mov	rbx, rax
	mov	edi, 1
	mov	esi, 4
	mov	edx, OFFSET FLAT:label_696
	call	quotearg_n_style
	mov	r15, rax
	mov	rdx, qword ptr [r14 + 0x38]
	mov	edi, 2
	mov	esi, 4
	call	quotearg_n_style
	mov	rbp, rax
	xor	edi, edi
	xor	esi, esi
	xor	eax, eax
	mov	rdx, qword ptr [rsp + 8]
	mov	rcx, rbx
	mov	r8, r15
	mov	r9, rbp
	call	error
	jmp	.label_693
.label_680:
	mov	rax, qword ptr [r14 + 0x38]
	cmp	byte ptr [rax], 0x2f
	jne	.label_700
	cmp	byte ptr [rax + 1], 0
	je	.label_697
.label_700:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_702
	mov	edx, 5
	call	dcgettext
	mov	r15, rax
	mov	rdx, qword ptr [r14 + 0x38]
	xor	edi, edi
	mov	esi, 4
	call	quotearg_n_style
	mov	r13, rax
	mov	edi, 1
	mov	esi, 4
	mov	edx, OFFSET FLAT:label_281
	call	quotearg_n_style
	mov	rbp, rax
	xor	edi, edi
	xor	esi, esi
	xor	eax, eax
	mov	rdx, r15
	mov	rcx, r13
	mov	r8, rbp
	call	error
.label_686:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_719
.label_675:
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	xor	edi, edi
	xor	esi, esi
	xor	eax, eax
	mov	rdx, rcx
	call	error
	jmp	.label_667
.label_697:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_670
	mov	edx, 5
	call	dcgettext
	mov	rbp, rax
	mov	rsi, qword ptr [r14 + 0x38]
	mov	edi, 4
	call	quotearg_style
	mov	rcx, rax
	xor	edi, edi
	xor	esi, esi
	xor	eax, eax
	mov	rdx, rbp
	call	error
	jmp	.label_686
.label_707:
	call	__errno_location
	mov	rbx, rax
	mov	ebp, dword ptr [rbx]
	test	ebp, ebp
	je	.label_689
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_691
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	xor	edi, edi
	xor	eax, eax
	mov	esi, ebp
	mov	rdx, rcx
	call	error
	mov	dword ptr [rsp + 8], 4
.label_689:
	mov	rdi, r12
	call	rpl_fts_close
	test	eax, eax
	mov	eax, dword ptr [rsp + 8]
	je	.label_684
	mov	ebx, dword ptr [rbx]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_701
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	xor	edi, edi
	xor	eax, eax
	mov	esi, ebx
	mov	rdx, rcx
	call	error
	mov	eax, 4
.label_684:
	add	rsp, 0xa8
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_678:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_711
	mov	edx, 5
	call	dcgettext
	mov	r15, rax
	movzx	ebp, word ptr [r14 + 0x70]
	mov	rdx, qword ptr [r14 + 0x38]
	xor	edi, edi
	mov	esi, 3
	call	quotearg_n_style_colon
	mov	rbx, rax
	xor	edi, edi
	xor	esi, esi
	mov	r9d, OFFSET FLAT:label_720
	xor	eax, eax
	mov	rdx, r15
	mov	ecx, ebp
	mov	r8, rbx
	call	error
	call	abort
.label_677:
	mov	edi, OFFSET FLAT:label_671
	mov	esi, OFFSET FLAT:label_672
	mov	edx, 0x261
	mov	ecx, OFFSET FLAT:label_673
	call	__assert_fail
	.section	.text
	.align	16
	#Procedure 0x40762d
	.globl sub_40762d
	.type sub_40762d, @function
sub_40762d:

	nop	dword ptr [rax]
.label_723:
	mov	r15, qword ptr [rbx]
.label_722:
	mov	rax, r15
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	ret	
	.section	.text
	.align	16
	#Procedure 0x407642

	.globl hash_lookup
	.type hash_lookup, @function
hash_lookup:
	push	r15
	push	r14
	push	r12
	push	rbx
	push	rax
	mov	r12, rsi
	mov	r14, rdi
	mov	rsi, qword ptr [r14 + 0x10]
	mov	rdi, r12
	call	qword ptr [r14 + 0x30]
	cmp	rax, qword ptr [r14 + 0x10]
	jae	.label_726
	mov	rbx, qword ptr [r14]
	shl	rax, 4
	mov	rsi, qword ptr [rbx + rax]
	xor	r15d, r15d
	test	rsi, rsi
	je	.label_722
	add	rbx, rax
	je	.label_722
	cmp	rsi, r12
	je	.label_725
	xor	r15d, r15d
	nop	
.label_724:
	mov	rdi, r12
	call	qword ptr [r14 + 0x38]
	test	al, al
	jne	.label_723
	mov	rbx, qword ptr [rbx + 8]
	test	rbx, rbx
	je	.label_722
	mov	rsi, qword ptr [rbx]
	cmp	rsi, r12
	jne	.label_724
.label_725:
	mov	r15, r12
	jmp	.label_722
.label_726:
	call	abort
	.section	.text
	.align	16
	#Procedure 0x4076a8
	.globl sub_4076a8
	.type sub_4076a8, @function
sub_4076a8:

	nop	dword ptr [rax + rax]
.label_727:
	call	__errno_location
	mov	rbx, rax
	mov	r14d, dword ptr [rbx]
	mov	edi, ebp
	call	close
	mov	dword ptr [rbx], r14d
	xor	ebx, ebx
.label_728:
	mov	rax, rbx
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x4076cf
	.globl sub_4076cf
	.type sub_4076cf, @function
sub_4076cf:

	nop	
	.section	.text
	.align	16
	#Procedure 0x4076d0

	.globl opendirat
	.type opendirat, @function
opendirat:
	push	rbp
	push	r14
	push	rbx
	mov	r14, rcx
	or	edx, 0x90900
	xor	ebx, ebx
	xor	eax, eax
	call	openat_safer
	mov	ebp, eax
	test	ebp, ebp
	js	.label_728
	mov	edi, ebp
	call	fdopendir
	mov	rbx, rax
	test	rbx, rbx
	je	.label_727
	mov	dword ptr [r14], ebp
	jmp	.label_728
	.section	.text
	.align	16
	#Procedure 0x407700

	.globl version_etc
	.type version_etc, @function
version_etc:
	sub	rsp, 0xd8
	test	al, al
	je	.label_729
	movaps	xmmword ptr [rsp + 0x50], xmm0
	movaps	xmmword ptr [rsp + 0x60], xmm1
	movaps	xmmword ptr [rsp + 0x70], xmm2
	movaps	xmmword ptr [rsp + 0x80], xmm3
	movaps	xmmword ptr [rsp + 0x90], xmm4
	movaps	xmmword ptr [rsp + 0xa0], xmm5
	movaps	xmmword ptr [rsp + 0xb0], xmm6
	movaps	xmmword ptr [rsp + 0xc0], xmm7
.label_729:
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
	#Procedure 0x407783
	.globl sub_407783
	.type sub_407783, @function
sub_407783:

	nop	word ptr cs:[rax + rax]
.label_730:
	call	abort
	.section	.text
	.align	16
	#Procedure 0x407795
	.globl sub_407795
	.type sub_407795, @function
sub_407795:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40779b
	.globl quotearg_n_custom_mem
	.type quotearg_n_custom_mem, @function
quotearg_n_custom_mem:

	sub	rsp, 0x38
	mov	rax, qword ptr [rip + label_143]
	mov	qword ptr [rsp + 0x30], rax
	movups	xmm0, xmmword ptr [rip + label_144]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0, xmmword ptr [rip + label_145]
	movaps	xmmword ptr [rsp + 0x10], xmm0
	movups	xmm0, xmmword ptr [rip + default_quoting_options]
	movaps	xmmword ptr [rsp], xmm0
	mov	dword ptr [rsp], 0xa
	test	rsi, rsi
	je	.label_730
	test	rdx, rdx
	je	.label_730
	mov	qword ptr [rsp + 0x28], rsi
	mov	qword ptr [rsp + 0x30], rdx
	lea	rax, [rsp]
	mov	rsi, rcx
	mov	rdx, r8
	mov	rcx, rax
	call	quotearg_n_options
	add	rsp, 0x38
	ret	
	.section	.text
	.align	16
	#Procedure 0x407800

	.globl fts_stat
	.type fts_stat, @function
fts_stat:
	push	r15
	push	r14
	push	rbx
	mov	r15, rsi
	mov	r14, rdi
	mov	eax, dword ptr [r14 + 0x48]
	cmp	qword ptr [r15 + 0x58], 0
	jne	.label_731
	test	al, 1
	je	.label_731
	mov	dl, 1
.label_731:
	lea	rbx, [r15 + 0x78]
	test	dl, dl
	jne	.label_738
	and	eax, 2
	jne	.label_738
	mov	esi, dword ptr [r14 + 0x2c]
	mov	rdx, qword ptr [r15 + 0x30]
	mov	edi, 1
	mov	r8d, 0x100
	mov	rcx, rbx
	call	__fxstatat
	test	eax, eax
	je	.label_732
	call	__errno_location
	mov	eax, dword ptr [rax]
	jmp	.label_736
.label_738:
	mov	rsi, qword ptr [r15 + 0x30]
	mov	edi, 1
	mov	rdx, rbx
	call	__xstat
	test	eax, eax
	je	.label_732
	call	__errno_location
	mov	r14, rax
	mov	eax, dword ptr [r14]
	cmp	eax, 2
	jne	.label_736
	mov	rsi, qword ptr [r15 + 0x30]
	mov	edi, 1
	mov	rdx, rbx
	call	__lxstat
	test	eax, eax
	je	.label_734
	mov	eax, dword ptr [r14]
.label_736:
	mov	dword ptr [r15 + 0x40], eax
	xorps	xmm0, xmm0
	movups	xmmword ptr [rbx + 0x80], xmm0
	movups	xmmword ptr [rbx + 0x70], xmm0
	movups	xmmword ptr [rbx + 0x60], xmm0
	movups	xmmword ptr [rbx + 0x50], xmm0
	movups	xmmword ptr [rbx + 0x40], xmm0
	movups	xmmword ptr [rbx + 0x30], xmm0
	movups	xmmword ptr [rbx + 0x20], xmm0
	movups	xmmword ptr [rbx + 0x10], xmm0
	movups	xmmword ptr [rbx], xmm0
	mov	ax, 0xa
.label_733:
	pop	rbx
	pop	r14
	pop	r15
	ret	
.label_732:
	movzx	ecx, word ptr [r15 + 0x90]
	and	ecx, 0xf000
	cmp	ecx, 0x8000
	je	.label_735
	mov	ax, 0xc
	movzx	ecx, cx
	cmp	ecx, 0xa000
	je	.label_733
	cmp	ecx, 0x4000
	jne	.label_739
	mov	rax, qword ptr [r15 + 0x88]
	mov	rcx, -1
	cmp	rax, 2
	jb	.label_737
	cmp	qword ptr [r15 + 0x58], 0
	jle	.label_737
	mov	ecx, dword ptr [r14 + 0x48]
	shr	ecx, 4
	not	ecx
	and	ecx, 2
	sub	rax, rcx
	mov	rcx, rax
.label_737:
	mov	qword ptr [r15 + 0x68], rcx
	mov	ecx, dword ptr [r15 + 0x108]
	mov	ax, 1
	cmp	cl, 0x2e
	jne	.label_733
	mov	edx, ecx
	shr	edx, 8
	test	dl, dl
	je	.label_740
	cmp	dl, 0x2e
	jne	.label_733
	test	ecx, 0xff0000
	jne	.label_733
.label_740:
	cmp	qword ptr [r15 + 0x58], 0
	mov	cx, 1
	mov	ax, 5
	cmove	ax, cx
	jmp	.label_733
.label_735:
	mov	ax, 8
	jmp	.label_733
.label_739:
	mov	ax, 3
	jmp	.label_733
.label_734:
	mov	dword ptr [r14], 0
	mov	ax, 0xd
	jmp	.label_733
	.section	.text
	.align	16
	#Procedure 0x407995
	.globl sub_407995
	.type sub_407995, @function
sub_407995:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4079a0
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
	#Procedure 0x4079af
	.globl sub_4079af
	.type sub_4079af, @function
sub_4079af:

	nop	
	.section	.text
	.align	16
	#Procedure 0x4079b0
	.globl rpl_fts_children
	.type rpl_fts_children, @function
rpl_fts_children:

	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	push	rax
	mov	r12d, esi
	mov	r13, rdi
	mov	eax, r12d
	or	eax, 0x1000
	cmp	eax, 0x1000
	jne	.label_755
	mov	r15, qword ptr [r13]
	call	__errno_location
	mov	r14, rax
	mov	dword ptr [r14], 0
	xor	eax, eax
	test	byte ptr [r13 + 0x49], 0x20
	jne	.label_741
	movzx	ecx, word ptr [r15 + 0x70]
	xor	eax, eax
	cmp	ecx, 1
	je	.label_749
	movzx	ecx, cx
	cmp	ecx, 9
	jne	.label_741
	mov	rax, qword ptr [r15 + 0x10]
	jmp	.label_741
.label_755:
	call	__errno_location
	mov	dword ptr [rax], 0x16
	xor	eax, eax
	jmp	.label_741
.label_749:
	mov	rbx, qword ptr [r13 + 8]
	test	rbx, rbx
	je	.label_751
	nop	dword ptr [rax]
.label_742:
	mov	rbp, qword ptr [rbx + 0x10]
	mov	rdi, qword ptr [rbx + 0x18]
	test	rdi, rdi
	je	.label_756
	call	closedir
.label_756:
	mov	rdi, rbx
	call	free
	test	rbp, rbp
	mov	rbx, rbp
	jne	.label_742
.label_751:
	mov	ebx, 1
	cmp	r12d, 0x1000
	jne	.label_746
	or	byte ptr [r13 + 0x49], 0x10
	mov	ebx, 2
.label_746:
	cmp	qword ptr [r15 + 0x58], 0
	jne	.label_753
	mov	rax, qword ptr [r15 + 0x30]
	cmp	byte ptr [rax], 0x2f
	je	.label_753
	mov	eax, dword ptr [r13 + 0x48]
	test	al, 4
	jne	.label_753
	mov	edx, eax
	and	edx, 0x10
	shl	edx, 0xd
	or	edx, 0x90900
	test	ah, 2
	jne	.label_745
	mov	edi, OFFSET FLAT:label_709
	xor	eax, eax
	mov	esi, edx
	call	open_safer
	jmp	.label_747
.label_753:
	mov	rdi, r13
	mov	esi, ebx
	call	fts_build
	mov	qword ptr [r13 + 8], rax
.label_741:
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_745:
	mov	edi, dword ptr [r13 + 0x2c]
	mov	esi, OFFSET FLAT:label_709
	xor	eax, eax
	call	openat_safer
.label_747:
	mov	r15d, eax
	test	r15d, r15d
	js	.label_754
	mov	rdi, r13
	mov	esi, ebx
	call	fts_build
	mov	qword ptr [r13 + 8], rax
	test	byte ptr [r13 + 0x49], 2
	jne	.label_752
	mov	edi, r15d
	call	fchdir
	test	eax, eax
	je	.label_743
	mov	ebx, dword ptr [r14]
	mov	edi, r15d
	call	close
	mov	dword ptr [r14], ebx
	xor	eax, eax
	jmp	.label_741
.label_754:
	mov	qword ptr [r13 + 8], 0
	xor	eax, eax
	jmp	.label_741
.label_752:
	mov	esi, dword ptr [r13 + 0x2c]
	cmp	esi, r15d
	jne	.label_748
	cmp	esi, -0x64
	jne	.label_750
.label_748:
	lea	rdi, [r13 + 0x60]
	call	i_ring_push
	test	eax, eax
	js	.label_757
	mov	edi, eax
	call	close
.label_757:
	mov	dword ptr [r13 + 0x2c], r15d
	jmp	.label_744
.label_743:
	mov	edi, r15d
	call	close
.label_744:
	mov	rax, qword ptr [r13 + 8]
	jmp	.label_741
.label_750:
	call	abort
	.section	.text
	.align	16
	#Procedure 0x407b57
	.globl sub_407b57
	.type sub_407b57, @function
sub_407b57:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x407b60
	.globl quote_n_mem
	.type quote_n_mem, @function
quote_n_mem:

	mov	ecx, OFFSET FLAT:quote_quoting_options
	jmp	quotearg_n_options
	.section	.text
	.align	16
	#Procedure 0x407b6a
	.globl sub_407b6a
	.type sub_407b6a, @function
sub_407b6a:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x407b70

	.globl __xargmatch_internal
	.type __xargmatch_internal, @function
__xargmatch_internal:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	push	rax
	mov	r14, r9
	mov	r15, r8
	mov	r12, rcx
	mov	r13, rdx
	mov	rbx, rsi
	mov	rbp, rdi
	mov	rdi, rbx
	mov	rsi, r13
	mov	rdx, r12
	mov	rcx, r15
	call	argmatch
	test	rax, rax
	jns	.label_758
	mov	rdi, rbp
	mov	rsi, rbx
	mov	rdx, rax
	call	argmatch_invalid
	mov	rdi, r13
	mov	rsi, r12
	mov	rdx, r15
	call	argmatch_valid
	call	r14
	mov	rax, -1
.label_758:
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
	#Procedure 0x407bd8
	.globl sub_407bd8
	.type sub_407bd8, @function
sub_407bd8:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x407be0
	.globl close_stdout_set_file_name
	.type close_stdout_set_file_name, @function
close_stdout_set_file_name:

	mov	qword ptr [rip + file_name_0],  rdi
	ret	
	.section	.text
	.align	16
	#Procedure 0x407be8
	.globl sub_407be8
	.type sub_407be8, @function
sub_407be8:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x407bf0
	.globl hash_reset_tuning
	.type hash_reset_tuning, @function
hash_reset_tuning:

	mov	eax, dword ptr [rip + label_759]
	mov	dword ptr [rdi + 0x10], eax
	movups	xmm0, xmmword ptr [rip + default_tuning]
	movups	xmmword ptr [rdi], xmm0
	ret	
	.section	.text
	.align	16
	#Procedure 0x407c04
	.globl sub_407c04
	.type sub_407c04, @function
sub_407c04:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x407c10
	.globl hash_get_n_buckets_used
	.type hash_get_n_buckets_used, @function
hash_get_n_buckets_used:

	mov	rax, qword ptr [rdi + 0x18]
	ret	
	.section	.text
	.align	16
	#Procedure 0x407c15
	.globl sub_407c15
	.type sub_407c15, @function
sub_407c15:

	nop	word ptr cs:[rax + rax]
.label_762:
	mov	rsi, rbx
	call	realloc
	test	rbx, rbx
	je	.label_760
	test	rax, rax
	je	.label_761
.label_760:
	pop	rbx
	ret	
.label_761:
	call	xalloc_die
.label_766:
	test	rcx, rcx
	jne	.label_765
	mov	eax, 0x80
	xor	edx, edx
	div	rbx
	xor	ecx, ecx
	cmp	rbx, 0x80
	seta	cl
	add	rcx, rax
.label_765:
	movabs	rax, 0x7fffffffffffffff
	xor	edx, edx
	div	rbx
	cmp	rax, rcx
	jb	.label_764
.label_763:
	mov	qword ptr [rsi], rcx
	imul	rbx, rcx
	test	rdi, rdi
	je	.label_762
	test	rbx, rbx
	jne	.label_762
	call	free
	xor	eax, eax
	pop	rbx
	ret	
	.section	.text
	.align	16
	#Procedure 0x407c85
	.globl x2nrealloc
	.type x2nrealloc, @function
x2nrealloc:

	push	rbx
	mov	rbx, rdx
	mov	rcx, qword ptr [rsi]
	test	rdi, rdi
	je	.label_766
	movabs	rax, 0x5555555555555554
	xor	edx, edx
	div	rbx
	cmp	rax, rcx
	jbe	.label_761
	mov	rax, rcx
	shr	rax, 1
	lea	rcx, [rcx + rax + 1]
	jmp	.label_763
.label_764:
	call	xalloc_die
	.section	.text
	.align	16
	#Procedure 0x407cb7
	.globl sub_407cb7
	.type sub_407cb7, @function
sub_407cb7:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x407cc0

	.globl quotearg_colon
	.type quotearg_colon, @function
quotearg_colon:
	sub	rsp, 0x38
	mov	rax, rdi
	mov	rcx, qword ptr [rip + label_143]
	mov	qword ptr [rsp + 0x30], rcx
	movups	xmm0, xmmword ptr [rip + label_144]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0, xmmword ptr [rip + label_145]
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
	#Procedure 0x407d15
	.globl sub_407d15
	.type sub_407d15, @function
sub_407d15:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x407d20

	.globl fts_build
	.type fts_build, @function
fts_build:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0xa8
	mov	r14d, esi
	mov	r15, rdi
	mov	rbp, qword ptr [r15]
	mov	rbx, qword ptr [rbp + 0x18]
	test	rbx, rbx
	mov	qword ptr [rsp + 0x10], r15
	je	.label_813
	mov	rdi, rbx
	call	dirfd
	mov	dword ptr [rsp + 8], eax
	test	eax, eax
	js	.label_817
	mov	qword ptr [rsp + 0x68], rbx
	lea	rax, [r15 + 0x40]
	mov	qword ptr [rsp + 0x40], rax
	cmp	qword ptr [r15 + 0x40], 1
	sbb	rax, rax
	not	rax
	or	rax, 0x186a0
	mov	qword ptr [rsp + 0x70], rax
	lea	r12, [r15 + 0x48]
	mov	al, 1
	mov	dword ptr [rsp + 0xc], eax
	jmp	.label_821
.label_813:
	mov	eax, dword ptr [r15 + 0x48]
	mov	ecx, eax
	and	ecx, 0x204
	mov	edi, 0xffffff9c
	cmp	ecx, 0x200
	jne	.label_829
	mov	edi, dword ptr [r15 + 0x2c]
.label_829:
	mov	rsi, qword ptr [rbp + 0x30]
	xor	edx, edx
	test	al, 0x10
	je	.label_832
	test	al, 1
	je	.label_835
	cmp	qword ptr [rbp + 0x58], 0
	je	.label_832
.label_835:
	mov	edx, 0x20000
.label_832:
	lea	rcx, [rsp + 8]
	call	opendirat
	mov	qword ptr [rbp + 0x18], rax
	test	rax, rax
	je	.label_837
	mov	qword ptr [rsp + 0x68], rbx
	lea	r12, [r15 + 0x48]
	movzx	eax, word ptr [rbp + 0x70]
	cmp	eax, 0xb
	jne	.label_840
	xor	edx, edx
	mov	rdi, r15
	mov	rsi, rbp
	call	fts_stat
	mov	word ptr [rbp + 0x70], ax
	jmp	.label_773
.label_817:
	mov	rdi, qword ptr [rbp + 0x18]
	call	closedir
	mov	qword ptr [rbp + 0x18], 0
.label_837:
	xor	ebx, ebx
	cmp	r14d, 3
	jne	.label_768
	mov	word ptr [rbp + 0x70], 4
	call	__errno_location
	mov	eax, dword ptr [rax]
	mov	dword ptr [rbp + 0x40], eax
	jmp	.label_771
.label_840:
	test	byte ptr [r12 + 1], 1
	je	.label_773
	mov	rdi, r15
	mov	rsi, rbp
	call	leave_dir
	xor	edx, edx
	mov	rdi, r15
	mov	rsi, rbp
	call	fts_stat
	mov	rdi, r15
	mov	rsi, rbp
	call	enter_dir
	test	al, al
	je	.label_780
.label_773:
	lea	rax, [r15 + 0x40]
	mov	qword ptr [rsp + 0x40], rax
	cmp	qword ptr [r15 + 0x40], 1
	sbb	rax, rax
	not	rax
	or	rax, 0x186a0
	mov	qword ptr [rsp + 0x70], rax
	cmp	r14d, 2
	je	.label_781
	mov	eax, dword ptr [r12]
	and	eax, 0x38
	cmp	eax, 0x18
	jne	.label_777
	cmp	qword ptr [rbp + 0x88], 2
	jne	.label_777
	mov	esi, dword ptr [rsp + 8]
	mov	rdi, rbp
	call	filesystem_type
	cmp	rax, 0x9f9f
	jle	.label_789
	cmp	rax, 0x9fa0
	je	.label_777
	mov	ecx, 0xff534d42
	cmp	rax, rcx
	je	.label_777
	cmp	rax, 0x5346414f
	je	.label_777
	jmp	.label_781
.label_780:
	call	__errno_location
	mov	dword ptr [rax], 0xc
	jmp	.label_771
.label_789:
	test	rax, rax
	je	.label_777
	cmp	rax, 0x6969
	jne	.label_781
.label_777:
	mov	rax, rbp
	mov	r13d, r14d
	cmp	r14d, 3
	sete	bpl
	mov	r14b, 1
	jmp	.label_824
.label_781:
	mov	rax, rbp
	mov	r13d, r14d
	cmp	r14d, 3
	sete	bpl
	mov	r14d, 0
	jne	.label_805
.label_824:
	mov	r15, rax
	test	byte ptr [r12 + 1], 2
	mov	ebx, dword ptr [rsp + 8]
	je	.label_809
	mov	esi, 0x406
	mov	edx, 3
	xor	eax, eax
	mov	edi, ebx
	call	rpl_fcntl
	mov	ebx, eax
	mov	dword ptr [rsp + 8], ebx
.label_809:
	test	ebx, ebx
	js	.label_814
	xor	ecx, ecx
	mov	rdi, qword ptr [rsp + 0x10]
	mov	rsi, r15
	mov	edx, ebx
	call	fts_safe_changedir
	test	eax, eax
	je	.label_818
.label_814:
	and	bpl, r14b
	cmp	bpl, 1
	jne	.label_819
	call	__errno_location
	mov	eax, dword ptr [rax]
	mov	dword ptr [r15 + 0x40], eax
.label_819:
	or	byte ptr [r15 + 0x72], 1
	mov	rdi, qword ptr [r15 + 0x18]
	call	closedir
	mov	rbx, r15
	mov	qword ptr [r15 + 0x18], 0
	mov	eax, dword ptr [r12]
	test	ah, 2
	mov	r15, qword ptr [rsp + 0x10]
	mov	r14d, r13d
	je	.label_826
	mov	edi, dword ptr [rsp + 8]
	test	edi, edi
	js	.label_826
	call	close
.label_826:
	mov	rbp, rbx
	mov	qword ptr [rbp + 0x18], 0
	mov	dword ptr [rsp + 0xc], 0
	jmp	.label_821
.label_805:
	mov	dword ptr [rsp + 0xc], 0
	jmp	.label_834
.label_818:
	mov	al, 1
	mov	dword ptr [rsp + 0xc], eax
	mov	rax, r15
	mov	r15, qword ptr [rsp + 0x10]
.label_834:
	mov	r14d, r13d
	mov	rbp, rax
.label_821:
	mov	dword ptr [rsp + 0x54], r14d
	mov	rax, qword ptr [rbp + 0x38]
	mov	rcx, qword ptr [rbp + 0x48]
	lea	rdx, [rcx - 1]
	cmp	byte ptr [rax + rcx - 1], 0x2f
	cmovne	rdx, rcx
	xor	eax, eax
	mov	qword ptr [rsp + 0x48], rax
	test	byte ptr [r12], 4
	je	.label_839
	mov	rax, qword ptr [r15 + 0x20]
	lea	rcx, [rax + rdx + 1]
	mov	qword ptr [rsp + 0x48], rcx
	mov	byte ptr [rax + rdx], 0x2f
.label_839:
	lea	rax, [rdx + 1]
	mov	qword ptr [rsp + 0x58], rax
	mov	rcx, qword ptr [r15 + 0x30]
	sub	rcx, rax
	mov	qword ptr [rsp + 0x88], rcx
	mov	rax, qword ptr [rbp + 0x58]
	inc	rax
	mov	qword ptr [rsp + 0x98], rax
	add	rdx, 0x102
	mov	qword ptr [rsp + 0x90], rdx
	xor	eax, eax
	mov	qword ptr [rsp + 0x60], rax
	xor	eax, eax
	mov	qword ptr [rsp + 0x78], rax
	mov	dword ptr [rsp + 0x1c], 0
	xor	eax, eax
	xor	ebx, ebx
	xor	r14d, r14d
	mov	qword ptr [rsp + 0x38], rbp
	mov	qword ptr [rsp + 0x30], r12
.label_795:
	mov	qword ptr [rsp + 0x28], rbx
	mov	rbx, qword ptr [rbp + 0x18]
	test	rbx, rbx
	je	.label_783
	mov	qword ptr [rsp + 0xa0], rax
	mov	qword ptr [rsp + 0x20], r14
	nop	dword ptr [rax]
.label_800:
	call	__errno_location
	mov	r15, rax
	mov	dword ptr [r15], 0
	mov	rdi, rbx
	call	readdir
	mov	r14, rax
	test	r14, r14
	je	.label_790
	mov	r13, r14
	add	r13, 0x13
	test	byte ptr [r12], 0x20
	jne	.label_792
	cmp	byte ptr [r13], 0x2e
	jne	.label_792
	movzx	eax, byte ptr [r14 + 0x14]
	cmp	al, 0x2e
	je	.label_796
	test	al, al
	je	.label_797
	jmp	.label_792
	.section	.text
	.align	16
	#Procedure 0x4080d7
	.globl sub_4080d7
	.type sub_4080d7, @function
sub_4080d7:

	nop	word ptr [rax + rax]
.label_796:
	cmp	byte ptr [r14 + 0x15], 0
	jne	.label_792
.label_797:
	mov	rbx, qword ptr [rbp + 0x18]
	test	rbx, rbx
	jne	.label_800
	jmp	.label_802
	.section	.text
	.align	16
	#Procedure 0x4080f5
	.globl sub_4080f5
	.type sub_4080f5, @function
sub_4080f5:

	nop	word ptr cs:[rax + rax]
.label_792:
	mov	rdi, r13
	call	strlen
	mov	rbx, rax
	lea	rdi, [rbx + 0x110]
	and	rdi, 0xfffffffffffffff8
	call	malloc
	mov	r12, rax
	test	r12, r12
	je	.label_811
	mov	rdi, r12
	add	rdi, 0x108
	mov	qword ptr [rsp + 0x80], rdi
	mov	rsi, r13
	mov	rdx, rbx
	call	memcpy
	mov	byte ptr [r12 + rbx + 0x108], 0
	mov	qword ptr [r12 + 0x60], rbx
	mov	rbp, qword ptr [rsp + 0x10]
	mov	qword ptr [r12 + 0x50], rbp
	mov	r13, qword ptr [rbp + 0x20]
	mov	qword ptr [r12 + 0x38], r13
	mov	dword ptr [r12 + 0x40], 0
	mov	qword ptr [r12 + 0x18], 0
	mov	word ptr [r12 + 0x72], 0
	mov	word ptr [r12 + 0x74], 3
	xorps	xmm0, xmm0
	movups	xmmword ptr [r12 + 0x20], xmm0
	cmp	rbx, qword ptr [rsp + 0x88]
	jae	.label_816
	mov	rbp, qword ptr [rsp + 0x38]
	mov	rax, qword ptr [rsp + 0x58]
	jmp	.label_830
	.section	.text
	.align	16
	#Procedure 0x4081a9
	.globl sub_4081a9
	.type sub_4081a9, @function
sub_4081a9:

	nop	dword ptr [rax]
.label_816:
	mov	rax, qword ptr [rsp + 0x90]
	lea	rsi, [rax + rbx]
	add	rsi, qword ptr [rbp + 0x30]
	jb	.label_833
	mov	qword ptr [rbp + 0x30], rsi
	mov	rdi, r13
	call	realloc
	test	rax, rax
	je	.label_838
	mov	qword ptr [rbp + 0x20], rax
	cmp	r13, rax
	je	.label_841
	mov	rdx, qword ptr [rsp + 0x58]
	add	rax, rdx
	mov	rcx, qword ptr [rsp + 0x30]
	test	byte ptr [rcx], 4
	mov	rcx, qword ptr [rsp + 0x48]
	cmovne	rcx, rax
	mov	qword ptr [rsp + 0x48], rcx
	mov	al, 1
	mov	qword ptr [rsp + 0x78], rax
	mov	rbp, qword ptr [rsp + 0x38]
	jmp	.label_843
.label_841:
	mov	rbp, qword ptr [rsp + 0x38]
	mov	rdx, qword ptr [rsp + 0x58]
.label_843:
	mov	rax, qword ptr [rsp + 0x10]
	mov	rax, qword ptr [rax + 0x30]
	sub	rax, rdx
	mov	qword ptr [rsp + 0x88], rax
	mov	rax, rdx
.label_830:
	add	rbx, rax
	jb	.label_774
	mov	rax, qword ptr [rsp + 0x98]
	mov	qword ptr [r12 + 0x58], rax
	mov	r15, qword ptr [rsp + 0x10]
	mov	rax, qword ptr [r15]
	mov	qword ptr [r12 + 8], rax
	mov	qword ptr [r12 + 0x48], rbx
	mov	rax, qword ptr [r14]
	mov	qword ptr [r12 + 0x80], rax
	mov	rax, qword ptr [rsp + 0x30]
	test	byte ptr [rax], 4
	jne	.label_822
	mov	rax, qword ptr [rsp + 0x80]
	mov	qword ptr [r12 + 0x30], rax
	jmp	.label_785
	.section	.text
	.align	16
	#Procedure 0x40827d
	.globl sub_40827d
	.type sub_40827d, @function
sub_40827d:

	nop	dword ptr [rax]
.label_822:
	mov	rax, qword ptr [r12 + 0x38]
	mov	qword ptr [r12 + 0x30], rax
	mov	rdx, qword ptr [r12 + 0x60]
	inc	rdx
	mov	rdi, qword ptr [rsp + 0x48]
	mov	rsi, qword ptr [rsp + 0x80]
	call	memmove
.label_785:
	mov	rbx, qword ptr [rsp + 0x28]
	mov	rax, qword ptr [rsp + 0x30]
	mov	edx, dword ptr [rax]
	mov	rax, qword ptr [rsp + 0x40]
	cmp	qword ptr [rax], 0
	je	.label_788
	mov	eax, edx
	and	eax, 0x400
	jne	.label_788
	xor	edx, edx
	mov	rdi, r15
	mov	rsi, r12
	call	fts_stat
	mov	word ptr [r12 + 0x70], ax
	mov	rsi, qword ptr [rsp + 0x20]
	jmp	.label_799
	.section	.text
	.align	16
	#Procedure 0x4082de
	.globl sub_4082de
	.type sub_4082de, @function
sub_4082de:

	nop	
.label_788:
	and	edx, 0x18
	movzx	ecx, byte ptr [r14 + 0x12]
	xor	eax, eax
	cmp	edx, 0x18
	mov	edx, 0
	jne	.label_798
	cmp	cl, 4
	setne	bl
	test	cl, cl
	setne	dl
	and	dl, bl
	mov	rbx, qword ptr [rsp + 0x28]
.label_798:
	mov	word ptr [r12 + 0x70], 0xb
	lea	esi, [rcx - 1]
	cmp	esi, 0xb
	mov	rsi, qword ptr [rsp + 0x20]
	ja	.label_808
	mov	eax, dword ptr [(rcx * 4) + label_786]
.label_808:
	mov	dword ptr [r12 + 0x90], eax
	cmp	dl, 1
	mov	eax, 1
	adc	rax, 0
	mov	qword ptr [r12 + 0xa8], rax
.label_799:
	mov	qword ptr [r12 + 0x10], 0
	test	rsi, rsi
	mov	rax, r12
	je	.label_827
	mov	rax, qword ptr [rsp + 0xa0]
	mov	qword ptr [rax + 0x10], r12
	mov	rax, rsi
.label_827:
	mov	r14, rax
	cmp	rbx, 0x2710
	jne	.label_775
	mov	rax, qword ptr [rsp + 0x40]
	cmp	qword ptr [rax], 0
	jne	.label_775
	mov	esi, dword ptr [rsp + 8]
	mov	rdi, rbp
	call	filesystem_type
	mov	dword ptr [rsp + 0x1c], 0
	cmp	rax, 0x6969
	je	.label_775
	cmp	rax, 0x1021994
	je	.label_775
	mov	ecx, 0xff534d42
	cmp	rax, rcx
	je	.label_775
	mov	al, 1
	mov	dword ptr [rsp + 0x1c], eax
	nop	dword ptr [rax]
.label_775:
	inc	rbx
	cmp	qword ptr [rsp + 0x70], rbx
	mov	rax, r12
	mov	r12, qword ptr [rsp + 0x30]
	ja	.label_795
	jmp	.label_804
.label_790:
	mov	eax, dword ptr [r15]
	test	eax, eax
	mov	rbx, qword ptr [rsp + 0x28]
	je	.label_836
	mov	dword ptr [rbp + 0x40], eax
	mov	rax, qword ptr [rsp + 0x68]
	or	rax, rbx
	mov	ax, 7
	mov	cx, 4
	cmovne	cx, ax
	mov	word ptr [rbp + 0x70], cx
.label_836:
	mov	rdi, qword ptr [rbp + 0x18]
	test	rdi, rdi
	mov	r15, qword ptr [rsp + 0x10]
	mov	r14, qword ptr [rsp + 0x20]
	je	.label_804
	call	closedir
	mov	qword ptr [rbp + 0x18], 0
	jmp	.label_804
.label_802:
	mov	r15, qword ptr [rsp + 0x10]
	mov	r14, qword ptr [rsp + 0x20]
.label_783:
	mov	rbx, qword ptr [rsp + 0x28]
.label_804:
	mov	rax, qword ptr [rsp + 0x78]
	test	al, 1
	je	.label_769
	mov	rcx, qword ptr [r15 + 8]
	mov	rax, qword ptr [r15 + 0x20]
	jmp	.label_772
	.section	.text
	.align	16
	#Procedure 0x408437
	.globl sub_408437
	.type sub_408437, @function
sub_408437:

	nop	word ptr [rax + rax]
.label_779:
	mov	qword ptr [rcx + 0x38], rax
	mov	rcx, qword ptr [rcx + 0x10]
.label_772:
	test	rcx, rcx
	je	.label_778
	mov	rdx, qword ptr [rcx + 0x30]
	lea	rsi, [rcx + 0x108]
	cmp	rdx, rsi
	je	.label_779
	sub	rdx, qword ptr [rcx + 0x38]
	add	rdx, rax
	mov	qword ptr [rcx + 0x30], rdx
	jmp	.label_779
.label_778:
	cmp	qword ptr [r14 + 0x58], 0
	js	.label_769
	mov	rcx, r14
	nop	word ptr cs:[rax + rax]
.label_791:
	mov	rdx, qword ptr [rcx + 0x30]
	lea	rsi, [rcx + 0x108]
	cmp	rdx, rsi
	je	.label_807
	sub	rdx, qword ptr [rcx + 0x38]
	add	rdx, rax
	mov	qword ptr [rcx + 0x30], rdx
.label_807:
	mov	qword ptr [rcx + 0x38], rax
	mov	rdx, qword ptr [rcx + 0x10]
	test	rdx, rdx
	jne	.label_787
	mov	rdx, qword ptr [rcx + 8]
.label_787:
	cmp	qword ptr [rdx + 0x58], 0
	mov	rcx, rdx
	jns	.label_791
.label_769:
	test	byte ptr [r12], 4
	je	.label_794
	mov	rax, qword ptr [rsp + 0x48]
	mov	rcx, rax
	lea	rax, [rcx - 1]
	mov	rdx, qword ptr [rsp + 0x58]
	cmp	rdx, qword ptr [r15 + 0x30]
	cmove	rcx, rax
	test	rbx, rbx
	cmove	rcx, rax
	mov	byte ptr [rcx], 0
.label_794:
	cmp	qword ptr [rsp + 0x68], 0
	mov	eax, dword ptr [rsp + 0xc]
	jne	.label_784
	test	al, al
	je	.label_784
	cmp	dword ptr [rsp + 0x54], 1
	je	.label_831
	test	rbx, rbx
	jne	.label_784
.label_831:
	cmp	qword ptr [rbp + 0x58], 0
	je	.label_806
	mov	rsi, qword ptr [rbp + 8]
	mov	edx, 0xffffffff
	mov	ecx, OFFSET FLAT:label_696
	mov	rdi, r15
	call	fts_safe_changedir
	jmp	.label_810
.label_806:
	mov	rdi, r15
	call	restore_initial_cwd
.label_810:
	test	eax, eax
	je	.label_784
	mov	word ptr [rbp + 0x70], 7
	or	byte ptr [r12 + 1], 0x20
	xor	ebx, ebx
	test	r14, r14
	je	.label_768
	xor	ebx, ebx
.label_820:
	mov	rbp, qword ptr [r14 + 0x10]
	mov	rdi, qword ptr [r14 + 0x18]
	test	rdi, rdi
	je	.label_815
	call	closedir
.label_815:
	mov	rdi, r14
	call	free
	test	rbp, rbp
	mov	r14, rbp
	jne	.label_820
	jmp	.label_768
.label_784:
	test	rbx, rbx
	je	.label_823
	mov	eax, dword ptr [rsp + 0x1c]
	test	al, 1
	jne	.label_825
	cmp	rbx, 2
	jb	.label_828
	mov	rax, qword ptr [rsp + 0x40]
	mov	rax, qword ptr [rax]
	test	rax, rax
	je	.label_828
	mov	rdi, r15
	mov	rsi, r14
	mov	rdx, rbx
	call	fts_sort
	mov	rbx, rax
	jmp	.label_768
.label_823:
	cmp	dword ptr [rsp + 0x54], 3
	jne	.label_770
	movzx	eax, word ptr [rbp + 0x70]
	cmp	eax, 4
	je	.label_770
	movzx	eax, ax
	cmp	eax, 7
	je	.label_770
	mov	word ptr [rbp + 0x70], 6
.label_770:
	xor	ebx, ebx
	test	r14, r14
	je	.label_768
	xor	ebx, ebx
	nop	word ptr cs:[rax + rax]
.label_844:
	mov	rbp, qword ptr [r14 + 0x10]
	mov	rdi, qword ptr [r14 + 0x18]
	test	rdi, rdi
	je	.label_842
	call	closedir
.label_842:
	mov	rdi, r14
	call	free
	test	rbp, rbp
	mov	r14, rbp
	jne	.label_844
	jmp	.label_768
.label_825:
	mov	rbp, qword ptr [rsp + 0x40]
	mov	qword ptr [rbp], OFFSET FLAT:fts_compare_ino
	mov	rdi, r15
	mov	rsi, r14
	mov	rdx, rbx
	call	fts_sort
	mov	rbx, rax
	mov	qword ptr [rbp], 0
	jmp	.label_768
.label_828:
	mov	rbx, r14
	jmp	.label_768
.label_774:
	mov	rdi, r12
	call	free
	mov	rax, qword ptr [rsp + 0x20]
	test	rax, rax
	mov	r14, qword ptr [rsp + 0x30]
	je	.label_776
	nop	word ptr cs:[rax + rax]
.label_801:
	mov	rbx, qword ptr [rax + 0x10]
	mov	r12, rax
	mov	rdi, qword ptr [rax + 0x18]
	test	rdi, rdi
	je	.label_782
	call	closedir
.label_782:
	mov	rdi, r12
	call	free
	test	rbx, rbx
	mov	rax, rbx
	jne	.label_801
.label_776:
	mov	rdi, qword ptr [rbp + 0x18]
	call	closedir
	mov	qword ptr [rbp + 0x18], 0
	mov	word ptr [rbp + 0x70], 7
	or	byte ptr [r14 + 1], 0x20
	mov	dword ptr [r15], 0x24
	jmp	.label_771
.label_833:
	mov	rdi, r13
	call	free
	mov	qword ptr [rbp + 0x20], 0
	mov	dword ptr [r15], 0x24
	jmp	.label_793
.label_838:
	mov	rdi, qword ptr [rbp + 0x20]
	call	free
	mov	qword ptr [rbp + 0x20], 0
.label_793:
	mov	qword ptr [rsp + 0x60], r12
	mov	rbp, qword ptr [rsp + 0x38]
.label_811:
	mov	r13, rbp
	mov	r14d, dword ptr [r15]
	mov	rdi, qword ptr [rsp + 0x60]
	call	free
	mov	rax, qword ptr [rsp + 0x20]
	test	rax, rax
	mov	r12, qword ptr [rsp + 0x30]
	je	.label_803
.label_812:
	mov	rbp, qword ptr [rax + 0x10]
	mov	rbx, rax
	mov	rdi, qword ptr [rax + 0x18]
	test	rdi, rdi
	je	.label_767
	call	closedir
.label_767:
	mov	rdi, rbx
	call	free
	test	rbp, rbp
	mov	rax, rbp
	jne	.label_812
.label_803:
	mov	rbx, r13
	mov	rdi, qword ptr [rbx + 0x18]
	call	closedir
	mov	qword ptr [rbx + 0x18], 0
	mov	word ptr [rbx + 0x70], 7
	or	byte ptr [r12 + 1], 0x20
	mov	dword ptr [r15], r14d
.label_771:
	xor	ebx, ebx
.label_768:
	mov	rax, rbx
	add	rsp, 0xa8
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40875f
	.globl sub_40875f
	.type sub_40875f, @function
sub_40875f:

	nop	
	.section	.text
	.align	16
	#Procedure 0x408760
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
	#Procedure 0x408778
	.globl sub_408778
	.type sub_408778, @function
sub_408778:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x408780

	.globl rpl_fts_open
	.type rpl_fts_open, @function
rpl_fts_open:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x48
	mov	r13, rdx
	mov	r12d, esi
	mov	r14, rdi
	cmp	r12d, 0x1000
	jae	.label_845
	mov	eax, r12d
	and	eax, 0x204
	cmp	eax, 0x204
	je	.label_845
	test	r12b, 0x12
	je	.label_845
	mov	edi, 0x80
	call	malloc
	mov	rbx, rax
	xor	eax, eax
	test	rbx, rbx
	je	.label_861
	xorps	xmm0, xmm0
	movups	xmmword ptr [rbx + 0x70], xmm0
	movups	xmmword ptr [rbx + 0x60], xmm0
	movups	xmmword ptr [rbx + 0x50], xmm0
	movups	xmmword ptr [rbx + 0x40], xmm0
	movups	xmmword ptr [rbx + 0x30], xmm0
	movups	xmmword ptr [rbx + 0x20], xmm0
	movups	xmmword ptr [rbx + 0x10], xmm0
	movups	xmmword ptr [rbx], xmm0
	mov	qword ptr [rbx + 0x40], r13
	mov	eax, r12d
	and	eax, 0xfffffdfb
	or	eax, 4
	test	r12b, 2
	cmove	eax, r12d
	mov	dword ptr [rbx + 0x48], eax
	mov	dword ptr [rbx + 0x2c], 0xffffff9c
	mov	rdi, qword ptr [r14]
	mov	ebp, 1
	test	rdi, rdi
	je	.label_867
	mov	rax, r14
	mov	r14, rbx
	mov	r15, rax
	lea	rbx, [rax + 8]
	xor	ebp, ebp
	nop	dword ptr [rax + rax]
.label_863:
	call	strlen
	cmp	rax, rbp
	cmova	rbp, rax
	mov	rdi, qword ptr [rbx]
	add	rbx, 8
	test	rdi, rdi
	jne	.label_863
	inc	rbp
	mov	rbx, r14
	mov	r14, r15
.label_867:
	cmp	rbp, 0x1000
	mov	esi, 0x1000
	cmova	rsi, rbp
	add	rsi, 0x100
	mov	qword ptr [rbx + 0x30], rsi
	xor	edi, edi
	call	realloc
	mov	rbp, rax
	test	rbp, rbp
	je	.label_847
	mov	qword ptr [rsp + 0x10], rbx
	mov	qword ptr [rbx + 0x20], rbp
	mov	qword ptr [rsp + 0x38], r14
	mov	r15, qword ptr [r14]
	xor	r14d, r14d
	test	r15, r15
	je	.label_848
	mov	edi, 0x110
	call	malloc
	mov	r14, rax
	test	r14, r14
	je	.label_860
	mov	byte ptr [r14 + 0x108], 0
	mov	qword ptr [r14 + 0x60], 0
	mov	rax, qword ptr [rsp + 0x10]
	mov	qword ptr [r14 + 0x50], rax
	mov	qword ptr [r14 + 0x38], rbp
	mov	dword ptr [r14 + 0x40], 0
	mov	qword ptr [r14 + 0x18], 0
	mov	word ptr [r14 + 0x72], 0
	mov	word ptr [r14 + 0x74], 3
	xorps	xmm0, xmm0
	movups	xmmword ptr [r14 + 0x20], xmm0
	mov	qword ptr [r14 + 0x58], -1
	mov	qword ptr [r14 + 0x68], -1
.label_848:
	mov	byte ptr [rsp + 0xf], 1
	test	r13, r13
	je	.label_850
	mov	rax, qword ptr [rsp + 0x10]
	mov	al, byte ptr [rax + 0x49]
	and	al, 4
	shr	al, 2
	mov	byte ptr [rsp + 0xf], al
.label_850:
	xor	ebp, ebp
	test	r15, r15
	mov	qword ptr [rsp + 0x28], r14
	je	.label_859
	and	r12d, 0x800
	xor	ebp, ebp
	xor	eax, eax
	mov	qword ptr [rsp + 0x18], rax
	xor	ebx, ebx
	mov	qword ptr [rsp + 0x20], r13
	nop	word ptr cs:[rax + rax]
.label_864:
	mov	qword ptr [rsp + 0x30], rbp
	mov	rdi, r15
	call	strlen
	mov	rbp, rax
	test	r12d, r12d
	jne	.label_849
	cmp	rbp, 3
	jb	.label_849
	cmp	byte ptr [r15 + rbp - 1], 0x2f
	jne	.label_849
	nop	word ptr cs:[rax + rax]
.label_852:
	cmp	byte ptr [r15 + rbp - 2], 0x2f
	jne	.label_849
	dec	rbp
	cmp	rbp, 1
	ja	.label_852
	nop	word ptr cs:[rax + rax]
.label_849:
	mov	r14d, r12d
	lea	rdi, [rbp + 0x110]
	and	rdi, 0xfffffffffffffff8
	call	malloc
	mov	r12, rax
	test	r12, r12
	je	.label_851
	mov	qword ptr [rsp + 0x40], rbx
	mov	r13, r12
	add	r13, 0x108
	mov	rdi, r13
	mov	rsi, r15
	mov	rdx, rbp
	call	memcpy
	mov	byte ptr [r12 + rbp + 0x108], 0
	mov	qword ptr [r12 + 0x60], rbp
	mov	rdi, qword ptr [rsp + 0x10]
	mov	qword ptr [r12 + 0x50], rdi
	mov	rax, qword ptr [rdi + 0x20]
	mov	qword ptr [r12 + 0x38], rax
	mov	dword ptr [r12 + 0x40], 0
	mov	qword ptr [r12 + 0x18], 0
	mov	word ptr [r12 + 0x72], 0
	mov	word ptr [r12 + 0x74], 3
	xorps	xmm0, xmm0
	movups	xmmword ptr [r12 + 0x20], xmm0
	mov	qword ptr [r12 + 0x58], 0
	mov	rax, qword ptr [rsp + 0x28]
	mov	qword ptr [r12 + 8], rax
	mov	qword ptr [r12 + 0x30], r13
	mov	rbx, qword ptr [rsp + 0x30]
	test	rbx, rbx
	setne	al
	and	al, byte ptr [rsp + 0xf]
	cmp	al, 1
	jne	.label_874
	mov	word ptr [r12 + 0x70], 0xb
	mov	qword ptr [r12 + 0xa8], 2
	jmp	.label_869
	.section	.text
	.align	16
	#Procedure 0x408a79
	.globl sub_408a79
	.type sub_408a79, @function
sub_408a79:

	nop	dword ptr [rax]
.label_874:
	xor	edx, edx
	mov	rsi, r12
	call	fts_stat
	mov	word ptr [r12 + 0x70], ax
.label_869:
	mov	r13, qword ptr [rsp + 0x20]
	test	r13, r13
	je	.label_872
	mov	rbp, r12
	mov	qword ptr [r12 + 0x10], rbx
	mov	r12, qword ptr [rsp + 0x18]
	jmp	.label_855
.label_872:
	mov	qword ptr [r12 + 0x10], 0
	test	rbx, rbx
	mov	rbp, r12
	je	.label_855
	mov	rax, qword ptr [rsp + 0x18]
	mov	qword ptr [rax + 0x10], r12
	mov	rbp, rbx
.label_855:
	mov	rbx, qword ptr [rsp + 0x40]
	inc	rbx
	mov	rax, qword ptr [rsp + 0x38]
	mov	r15, qword ptr [rax + 8]
	add	rax, 8
	mov	qword ptr [rsp + 0x38], rax
	test	r15, r15
	mov	qword ptr [rsp + 0x18], r12
	mov	r12d, r14d
	jne	.label_864
	test	r13, r13
	je	.label_859
	cmp	rbx, 2
	jb	.label_859
	mov	rdi, qword ptr [rsp + 0x10]
	mov	rsi, rbp
	mov	rdx, rbx
	call	fts_sort
	mov	rbp, rax
.label_859:
	mov	edi, 0x110
	call	malloc
	test	rax, rax
	je	.label_853
	mov	byte ptr [rax + 0x108], 0
	mov	qword ptr [rax + 0x60], 0
	mov	rbx, qword ptr [rsp + 0x10]
	mov	qword ptr [rax + 0x50], rbx
	mov	rcx, qword ptr [rbx + 0x20]
	mov	qword ptr [rax + 0x38], rcx
	mov	dword ptr [rax + 0x40], 0
	mov	qword ptr [rax + 0x18], 0
	mov	word ptr [rax + 0x72], 0
	mov	word ptr [rax + 0x74], 3
	xorps	xmm0, xmm0
	movups	xmmword ptr [rax + 0x20], xmm0
	mov	qword ptr [rbx], rax
	mov	qword ptr [rax + 0x10], rbp
	mov	word ptr [rax + 0x70], 9
	mov	qword ptr [rax + 0x58], 1
	movzx	eax, word ptr [rbx + 0x48]
	test	ax, 0x102
	je	.label_865
	mov	edi, 0x1f
	xor	esi, esi
	mov	edx, OFFSET FLAT:AD_hash
	mov	ecx, OFFSET FLAT:AD_compare
	mov	r8d, OFFSET FLAT:free
	call	hash_initialize
	mov	qword ptr [rbx + 0x58], rax
	test	rax, rax
	jne	.label_858
	jmp	.label_857
.label_845:
	call	__errno_location
	mov	dword ptr [rax], 0x16
.label_862:
	xor	eax, eax
.label_861:
	add	rsp, 0x48
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_847:
	mov	rdi, qword ptr [rbx + 0x20]
	jmp	.label_866
.label_851:
	mov	rbp, qword ptr [rsp + 0x30]
	mov	rbx, qword ptr [rsp + 0x10]
	jmp	.label_857
.label_860:
	mov	rbx, qword ptr [rsp + 0x10]
	jmp	.label_868
.label_853:
	mov	rbx, qword ptr [rsp + 0x10]
	mov	qword ptr [rbx], 0
.label_857:
	mov	r14, rbx
	test	rbp, rbp
	je	.label_873
	nop	dword ptr [rax + rax]
.label_854:
	mov	rbx, qword ptr [rbp + 0x10]
	mov	rdi, qword ptr [rbp + 0x18]
	test	rdi, rdi
	je	.label_846
	call	closedir
.label_846:
	mov	rdi, rbp
	call	free
	test	rbx, rbx
	mov	rbp, rbx
	jne	.label_854
.label_873:
	mov	rdi, qword ptr [rsp + 0x28]
	call	free
	mov	rbx, r14
	mov	rbp, qword ptr [rbx + 0x20]
.label_868:
	mov	rdi, rbp
.label_866:
	call	free
	mov	rdi, rbx
	call	free
	jmp	.label_862
.label_865:
	mov	edi, 0x20
	call	malloc
	mov	qword ptr [rbx + 0x58], rax
	test	rax, rax
	je	.label_857
	mov	rdi, rax
	call	cycle_check_init
.label_858:
	mov	eax, dword ptr [rbx + 0x48]
	test	ax, 0x204
	jne	.label_856
	mov	edx, eax
	and	edx, 0x10
	shl	edx, 0xd
	or	edx, 0x90900
	test	ah, 2
	jne	.label_870
	mov	edi, OFFSET FLAT:label_709
	xor	eax, eax
	mov	esi, edx
	call	open_safer
	jmp	.label_871
.label_870:
	mov	edi, dword ptr [rbx + 0x2c]
	mov	esi, OFFSET FLAT:label_709
	xor	eax, eax
	call	openat_safer
.label_871:
	mov	dword ptr [rbx + 0x28], eax
	test	eax, eax
	jns	.label_856
	or	byte ptr [rbx + 0x48], 4
.label_856:
	mov	rdi, rbx
	add	rdi, 0x60
	mov	esi, 0xffffffff
	call	i_ring_init
	mov	rax, rbx
	jmp	.label_861
	.section	.text
	.align	16
	#Procedure 0x408cc2
	.globl sub_408cc2
	.type sub_408cc2, @function
sub_408cc2:

	nop	word ptr cs:[rax + rax]
.label_877:
	mov	rsi, rbx
	call	realloc
	test	rbx, rbx
	je	.label_875
	test	rax, rax
	je	.label_876
.label_875:
	pop	rbx
	ret	
.label_876:
	call	xalloc_die
	.section	.text
	.align	16
	#Procedure 0x408ce9

	.globl xrealloc
	.type xrealloc, @function
xrealloc:
	push	rbx
	mov	rbx, rsi
	test	rdi, rdi
	je	.label_877
	test	rbx, rbx
	jne	.label_877
	call	free
	xor	eax, eax
	pop	rbx
	ret	
	.section	.text
	.align	16
	#Procedure 0x408d00
	.globl emit_bug_reporting_address
	.type emit_bug_reporting_address, @function
emit_bug_reporting_address:

	push	rax
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_878
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:label_720
	xor	eax, eax
	mov	rsi, rcx
	call	__printf_chk
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_880
	mov	edx, 5
	call	dcgettext
	mov	rsi, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:label_224
	mov	ecx, OFFSET FLAT:label_215
	xor	eax, eax
	call	__printf_chk
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_879
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	pop	rax
	jmp	fputs_unlocked
	.section	.text
	.align	16
	#Procedure 0x408d74
	.globl sub_408d74
	.type sub_408d74, @function
sub_408d74:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x408d80
	.globl close_stdout_set_ignore_EPIPE
	.type close_stdout_set_ignore_EPIPE, @function
close_stdout_set_ignore_EPIPE:

	mov	byte ptr [rip + ignore_EPIPE],  dil
	ret	
	.section	.text
	.align	16
	#Procedure 0x408d88
	.globl sub_408d88
	.type sub_408d88, @function
sub_408d88:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x408d90
	.globl hash_get_first
	.type hash_get_first, @function
hash_get_first:

	xor	eax, eax
	cmp	qword ptr [rdi + 0x20], 0
	je	.label_881
	mov	rcx, qword ptr [rdi]
	mov	rdx, qword ptr [rdi + 8]
	jmp	.label_884
	.section	.text
	.align	16
	#Procedure 0x408da2
	.globl sub_408da2
	.type sub_408da2, @function
sub_408da2:

	nop	word ptr cs:[rax + rax]
.label_882:
	push	rax
	call	abort
	.section	.text
	.align	16
	#Procedure 0x408db6
	.globl sub_408db6
	.type sub_408db6, @function
sub_408db6:

	nop	dword ptr [rax + rax]
.label_883:
	add	rcx, 0x10
.label_884:
	cmp	rcx, rdx
	jae	.label_882
	mov	rax, qword ptr [rcx]
	test	rax, rax
	je	.label_883
.label_881:
	ret	
	.section	.text
	.align	16
	#Procedure 0x408dd0

	.globl rpl_fflush
	.type rpl_fflush, @function
rpl_fflush:
	push	rbx
	mov	rbx, rdi
	test	rbx, rbx
	je	.label_885
	mov	rdi, rbx
	call	__freading
	test	eax, eax
	je	.label_885
	test	byte ptr [rbx + 1], 1
	je	.label_885
	xor	esi, esi
	mov	edx, 1
	mov	rdi, rbx
	call	rpl_fseeko
.label_885:
	mov	rdi, rbx
	pop	rbx
	jmp	fflush
	.section	.text
	.align	16
	#Procedure 0x408e03
	.globl sub_408e03
	.type sub_408e03, @function
sub_408e03:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x408e10

	.globl base_len
	.type base_len, @function
base_len:
	push	rbx
	mov	rbx, rdi
	call	strlen
	mov	rcx, rax
	nop	dword ptr [rax]
.label_886:
	mov	rax, rcx
	cmp	rax, 2
	jb	.label_887
	lea	rcx, [rax - 1]
	cmp	byte ptr [rbx + rax - 1], 0x2f
	je	.label_886
.label_887:
	pop	rbx
	ret	
	.section	.text
	.align	16
	#Procedure 0x408e36
	.globl sub_408e36
	.type sub_408e36, @function
sub_408e36:

	nop	
	nop	dword ptr [rax + rax]
.label_892:
	call	__errno_location
	cmp	dword ptr [rax], 0x16
	jne	.label_891
	mov	edi, OFFSET FLAT:label_888
	mov	esi, OFFSET FLAT:label_889
	mov	edx, 0x29
	mov	ecx, OFFSET FLAT:label_890
	call	__assert_fail
	.section	.text
	.align	16
	#Procedure 0x408e63

	.globl xfts_open
	.type xfts_open, @function
xfts_open:
	push	rax
	or	esi, 0x200
	call	rpl_fts_open
	test	rax, rax
	je	.label_892
	pop	rcx
	ret	
.label_891:
	call	xalloc_die
	.section	.text
	.align	16
	#Procedure 0x408e7b
	.globl sub_408e7b
	.type sub_408e7b, @function
sub_408e7b:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x408e80

	.globl get_root_dev_ino
	.type get_root_dev_ino, @function
get_root_dev_ino:
	push	rbx
	sub	rsp, 0x90
	mov	rbx, rdi
	lea	rdx, [rsp]
	mov	edi, 1
	mov	esi, OFFSET FLAT:label_281
	call	__lxstat
	mov	ecx, eax
	xor	eax, eax
	test	ecx, ecx
	jne	.label_893
	mov	rax, qword ptr [rsp + 8]
	mov	qword ptr [rbx], rax
	mov	rax, qword ptr [rsp]
	mov	qword ptr [rbx + 8], rax
	mov	rax, rbx
.label_893:
	add	rsp, 0x90
	pop	rbx
	ret	
	.section	.text
	.align	16
	#Procedure 0x408ec2
	.globl sub_408ec2
	.type sub_408ec2, @function
sub_408ec2:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x408ed0
	.globl hash_print_statistics
	.type hash_print_statistics, @function
hash_print_statistics:

	push	r15
	push	r14
	push	r12
	push	rbx
	push	rax
	mov	r15, rsi
	mov	rcx, qword ptr [rdi + 0x20]
	mov	r12, qword ptr [rdi + 0x10]
	mov	r14, qword ptr [rdi + 0x18]
	mov	rax, qword ptr [rdi]
	mov	rdi, qword ptr [rdi + 8]
	xor	ebx, ebx
	cmp	rax, rdi
	jae	.label_899
	mov	rdx, rax
	not	rdx
	add	rdi, rdx
	shr	rdi, 4
	lea	rsi, [rdi + 1]
	mov	r8d, esi
	and	r8d, 1
	xor	ebx, ebx
	test	rdi, rdi
	je	.label_901
	sub	rsi, r8
	xor	ebx, ebx
	nop	dword ptr [rax]
.label_902:
	cmp	qword ptr [rax], 0
	je	.label_894
	xor	edi, edi
	mov	rdx, rax
	nop	dword ptr [rax + rax]
.label_908:
	mov	rdx, qword ptr [rdx + 8]
	inc	rdi
	test	rdx, rdx
	jne	.label_908
	cmp	rdi, rbx
	cmova	rbx, rdi
.label_894:
	cmp	qword ptr [rax + 0x10], 0
	je	.label_896
	lea	rdx, [rax + 0x10]
	xor	edi, edi
.label_897:
	mov	rdx, qword ptr [rdx + 8]
	inc	rdi
	test	rdx, rdx
	jne	.label_897
	cmp	rdi, rbx
	cmova	rbx, rdi
.label_896:
	add	rax, 0x20
	add	rsi, -2
	jne	.label_902
.label_901:
	test	r8, r8
	je	.label_899
	cmp	qword ptr [rax], 0
	je	.label_899
	xor	edx, edx
	nop	word ptr [rax + rax]
.label_895:
	mov	rax, qword ptr [rax + 8]
	inc	rdx
	test	rax, rax
	jne	.label_895
	cmp	rdx, rbx
	cmova	rbx, rdx
.label_899:
	mov	esi, 1
	mov	edx, OFFSET FLAT:label_900
	xor	eax, eax
	mov	rdi, r15
	call	__fprintf_chk
	mov	esi, 1
	mov	edx, OFFSET FLAT:label_898
	xor	eax, eax
	mov	rdi, r15
	mov	rcx, r12
	call	__fprintf_chk
	movq	xmm1, r14
	movdqa	xmm2, xmmword ptr [rip + label_904]
	punpckldq	xmm1, xmm2
	movapd	xmm3, xmmword ptr [rip + label_905]
	subpd	xmm1, xmm3
	pshufd	xmm0, xmm1, 0x4e
	addpd	xmm0, xmm1
	mulsd	xmm0, qword ptr [rip + label_906]
	movq	xmm1, r12
	punpckldq	xmm1, xmm2
	subpd	xmm1, xmm3
	pshufd	xmm2, xmm1, 0x4e
	addpd	xmm2, xmm1
	divsd	xmm0, xmm2
	mov	esi, 1
	mov	edx, OFFSET FLAT:label_907
	mov	al, 1
	mov	rdi, r15
	mov	rcx, r14
	call	__fprintf_chk
	mov	esi, 1
	mov	edx, OFFSET FLAT:label_903
	xor	eax, eax
	mov	rdi, r15
	mov	rcx, rbx
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	jmp	__fprintf_chk
	.section	.text
	.align	16
	#Procedure 0x40903f
	.globl sub_40903f
	.type sub_40903f, @function
sub_40903f:

	nop	
.label_909:
	push	rax
	call	geteuid
	test	eax, eax
	sete	al
	sete	byte ptr [rip + can_write_any_file.can_write]
	mov	byte ptr [rip + can_write_any_file.initialized],  1
	add	rsp, 8
	ret	
	.section	.text
	.align	16
	#Procedure 0x40905e
	.globl sub_40905e
	.type sub_40905e, @function
sub_40905e:

	nop	
	.section	.text
	.align	16
	#Procedure 0x409060

	.globl can_write_any_file
	.type can_write_any_file, @function
can_write_any_file:
	cmp	byte ptr [rip + can_write_any_file.initialized],  1
	jne	.label_909
	mov	al, byte ptr [rip + can_write_any_file.can_write]
	ret	
	.section	.text
	.align	16
	#Procedure 0x409070

	.globl freadahead
	.type freadahead, @function
freadahead:
	mov	rcx, qword ptr [rdi + 0x28]
	xor	eax, eax
	cmp	rcx, qword ptr [rdi + 0x20]
	ja	.label_910
	mov	rax, qword ptr [rdi + 0x10]
	sub	rax, qword ptr [rdi + 8]
	xor	ecx, ecx
	test	byte ptr [rdi + 1], 1
	je	.label_911
	mov	rcx, qword ptr [rdi + 0x58]
	sub	rcx, qword ptr [rdi + 0x48]
.label_911:
	add	rax, rcx
.label_910:
	ret	
	.section	.text
	.align	16
	#Procedure 0x409098
	.globl sub_409098
	.type sub_409098, @function
sub_409098:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4090a0
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
	#Procedure 0x4090b9
	.globl sub_4090b9
	.type sub_4090b9, @function
sub_4090b9:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x4090c0

	.globl AD_compare
	.type AD_compare, @function
AD_compare:
	mov	rax, qword ptr [rdi + 8]
	cmp	rax, qword ptr [rsi + 8]
	jne	.label_912
	mov	rax, qword ptr [rdi]
	cmp	rax, qword ptr [rsi]
	sete	al
	ret	
.label_912:
	xor	eax, eax
	ret	
	.section	.text
	.align	16
	#Procedure 0x4090d7
	.globl sub_4090d7
	.type sub_4090d7, @function
sub_4090d7:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4090e0

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
	mov	rbp, rdi
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_913
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stderr]
	mov	rdi, rax
	call	fputs_unlocked
	mov	rbx, qword ptr [rbp]
	test	rbx, rbx
	je	.label_920
	xor	r13d, r13d
	xor	r15d, r15d
	mov	qword ptr [rsp], rbp
	nop	dword ptr [rax + rax]
.label_919:
	test	r15, r15
	je	.label_918
	mov	rdi, r13
	mov	rsi, r12
	mov	rdx, r14
	call	memcmp
	test	eax, eax
	je	.label_914
.label_918:
	mov	r13, qword ptr [rip + stderr]
	mov	rdi, rbx
	call	quote
	mov	rcx, rax
	mov	esi, 1
	mov	edx, OFFSET FLAT:label_915
	xor	eax, eax
	mov	rdi, r13
	call	__fprintf_chk
	mov	r13, r12
	jmp	.label_917
	.section	.text
	.align	16
	#Procedure 0x409172
	.globl sub_409172
	.type sub_409172, @function
sub_409172:

	nop	word ptr cs:[rax + rax]
.label_921:
	mov	esi, 0xa
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	jmp	__overflow
	.section	.text
	.align	16
	#Procedure 0x409198
	.globl sub_409198
	.type sub_409198, @function
sub_409198:

	nop	word ptr cs:[rax + rax]
.label_914:
	mov	rbp, qword ptr [rip + stderr]
	mov	rdi, rbx
	call	quote
	mov	rcx, rax
	mov	esi, 1
	mov	edx, OFFSET FLAT:label_916
	xor	eax, eax
	mov	rdi, rbp
	mov	rbp, qword ptr [rsp]
	call	__fprintf_chk
.label_917:
	mov	rbx, qword ptr [rbp + r15*8 + 8]
	inc	r15
	add	r12, r14
	test	rbx, rbx
	jne	.label_919
.label_920:
	mov	rdi, qword ptr [rip + stderr]
	mov	rax, qword ptr [rdi + 0x28]
	cmp	rax, qword ptr [rdi + 0x30]
	jae	.label_921
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
	.section	.text
	.align	16
	#Procedure 0x409210

	.globl locale_charset
	.type locale_charset, @function
locale_charset:
	push	rax
	mov	edi, 0xe
	call	rpl_nl_langinfo
	test	rax, rax
	mov	ecx, OFFSET FLAT:label_292
	cmovne	rcx, rax
	cmp	byte ptr [rcx], 0
	mov	eax, OFFSET FLAT:label_922
	cmovne	rax, rcx
	pop	rcx
	ret	
	.section	.text
	.align	16
	#Procedure 0x409235
	.globl sub_409235
	.type sub_409235, @function
sub_409235:

	nop	word ptr cs:[rax + rax]
.label_924:
	mov	rdi, rbx
	call	fileno
	mov	edi, eax
	mov	rsi, rbp
	mov	edx, r14d
	call	lseek
	mov	rcx, rax
	mov	eax, 0xffffffff
	cmp	rcx, -1
	je	.label_923
	and	byte ptr [rbx], 0xef
	mov	qword ptr [rbx + 0x90], rcx
	xor	eax, eax
.label_923:
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x409274
	.globl sub_409274
	.type sub_409274, @function
sub_409274:

	nop	
	.section	.text
	.align	16
	#Procedure 0x409276

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
	jne	.label_925
	mov	rax, qword ptr [rbx + 0x28]
	cmp	rax, qword ptr [rbx + 0x20]
	jne	.label_925
	cmp	qword ptr [rbx + 0x48], 0
	je	.label_924
.label_925:
	mov	rdi, rbx
	mov	rsi, rbp
	mov	edx, r14d
	pop	rbx
	pop	r14
	pop	rbp
	jmp	fseeko
	.section	.text
	.align	16
	#Procedure 0x4092b0

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
	jne	.label_927
	call	locale_charset
	movsx	ecx, byte ptr [rax]
	and	ecx, 0xffffffdf
	cmp	ecx, 0x47
	je	.label_932
	cmp	ecx, 0x55
	jne	.label_926
	movsx	ecx, byte ptr [rax + 1]
	and	ecx, 0xffffffdf
	cmp	ecx, 0x54
	jne	.label_926
	movsx	ecx, byte ptr [rax + 2]
	and	ecx, 0xffffffdf
	cmp	ecx, 0x46
	jne	.label_926
	cmp	byte ptr [rax + 3], 0x2d
	jne	.label_926
	cmp	byte ptr [rax + 4], 0x38
	jne	.label_926
	cmp	byte ptr [rax + 5], 0
	jne	.label_926
	cmp	byte ptr [rbx], 0x60
	mov	ecx, OFFSET FLAT:label_929
	mov	eax, OFFSET FLAT:label_930
	jmp	.label_931
.label_932:
	movsx	ecx, byte ptr [rax + 1]
	and	ecx, 0xffffffdf
	cmp	ecx, 0x42
	jne	.label_926
	cmp	byte ptr [rax + 2], 0x31
	jne	.label_926
	cmp	byte ptr [rax + 3], 0x38
	jne	.label_926
	cmp	byte ptr [rax + 4], 0x30
	jne	.label_926
	cmp	byte ptr [rax + 5], 0x33
	jne	.label_926
	cmp	byte ptr [rax + 6], 0x30
	jne	.label_926
	cmp	byte ptr [rax + 7], 0
	je	.label_928
.label_926:
	cmp	ebp, 9
	mov	ecx, OFFSET FLAT:label_611
	mov	eax, OFFSET FLAT:label_544
.label_931:
	cmove	rax, rcx
.label_927:
	add	rsp, 8
	pop	rbx
	pop	rbp
	ret	
.label_928:
	cmp	byte ptr [rbx], 0x60
	mov	ecx, OFFSET FLAT:label_933
	mov	eax, OFFSET FLAT:label_934
	jmp	.label_931
	.section	.text
	.align	16
	#Procedure 0x409375
	.globl sub_409375
	.type sub_409375, @function
sub_409375:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x409380
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
	#Procedure 0x409393
	.globl sub_409393
	.type sub_409393, @function
sub_409393:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4093a0

	.globl raw_hasher
	.type raw_hasher, @function
raw_hasher:
	rol	rdi, 0x3d
	xor	edx, edx
	mov	rax, rdi
	div	rsi
	mov	rax, rdx
	ret	
	.section	.text
	.align	16
	#Procedure 0x4093b0

	.globl xalloc_die
	.type xalloc_die, @function
xalloc_die:
	push	rbx
	mov	ebx, dword ptr [rip + exit_failure]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_935
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	xor	esi, esi
	mov	edx, OFFSET FLAT:label_81
	xor	eax, eax
	mov	edi, ebx
	call	error
	call	abort
	.section	.text
	.align	16
	#Procedure 0x4093e0

	.globl quote_n
	.type quote_n, @function
quote_n:
	mov	rdx, -1
	mov	ecx, OFFSET FLAT:quote_quoting_options
	jmp	quotearg_n_options
	.section	.text
	.align	16
	#Procedure 0x4093f1
	.globl sub_4093f1
	.type sub_4093f1, @function
sub_4093f1:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x409400

	.globl i_ring_empty
	.type i_ring_empty, @function
i_ring_empty:
	mov	al, byte ptr [rdi + 0x1c]
	ret	
	.section	.text
	.align	16
	#Procedure 0x409404
	.globl sub_409404
	.type sub_409404, @function
sub_409404:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x409410

	.globl excise
	.type excise, @function
excise:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x98
	mov	ebp, ecx
	mov	r13, rdx
	mov	r15, rsi
	mov	rbx, rdi
	movzx	edx, bpl
	shl	edx, 9
	mov	edi, dword ptr [rbx + 0x2c]
	mov	rsi, qword ptr [r15 + 0x30]
	call	unlinkat
	test	eax, eax
	je	.label_950
	call	__errno_location
	mov	r12, rax
	mov	ebp, dword ptr [r12]
	cmp	ebp, 0x1e
	jne	.label_940
	mov	esi, dword ptr [rbx + 0x2c]
	mov	rdx, qword ptr [r15 + 0x30]
	lea	rcx, [rsp + 8]
	mov	edi, 1
	mov	r8d, 0x100
	call	__fxstatat
	test	eax, eax
	je	.label_948
	cmp	dword ptr [r12], 2
	je	.label_949
.label_948:
	mov	dword ptr [r12], 0x1e
.label_949:
	mov	ebp, dword ptr [r12]
.label_940:
	cmp	byte ptr [r13], 0
	je	.label_939
	mov	r14d, 2
	cmp	ebp, 0x16
	ja	.label_941
	mov	eax, 0x500004
	bt	eax, ebp
	jb	.label_938
.label_941:
	cmp	ebp, 0x54
	je	.label_938
.label_939:
	movzx	eax, word ptr [r15 + 0x70]
	cmp	eax, 4
	jne	.label_937
	mov	eax, ebp
	cmp	ebp, 0x27
	ja	.label_937
	movabs	rcx, 0x8000320000
	bt	rcx, rax
	jae	.label_937
	mov	eax, dword ptr [r15 + 0x40]
	cmp	eax, 0xd
	je	.label_942
	cmp	eax, 1
	jne	.label_937
.label_942:
	mov	dword ptr [r12], eax
	mov	ebp, eax
.label_937:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_322
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
	mov	rsi, qword ptr [r15 + 0x38]
	mov	r14d, 4
	mov	edi, 4
	call	quotearg_style
	mov	rcx, rax
	xor	edi, edi
	xor	eax, eax
	mov	esi, ebp
	mov	rdx, rbx
	call	error
	mov	rax, qword ptr [r15 + 8]
	jmp	.label_946
	.section	.text
	.align	16
	#Procedure 0x409528
	.globl sub_409528
	.type sub_409528, @function
sub_409528:

	nop	dword ptr [rax + rax]
.label_936:
	mov	qword ptr [rax + 0x20], 1
	mov	rax, qword ptr [rax + 8]
.label_946:
	cmp	qword ptr [rax + 0x58], 0
	js	.label_938
	cmp	qword ptr [rax + 0x20], 0
	je	.label_936
	jmp	.label_938
.label_950:
	mov	r14d, 2
	cmp	byte ptr [r13 + 0x1a], 0
	je	.label_938
	xor	edi, edi
	test	bpl, bpl
	je	.label_943
	mov	esi, OFFSET FLAT:label_944
	jmp	.label_945
.label_943:
	mov	esi, OFFSET FLAT:label_947
.label_945:
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
	mov	rsi, qword ptr [r15 + 0x38]
	mov	edi, 4
	call	quotearg_style
	mov	rcx, rax
	mov	edi, 1
	xor	eax, eax
	mov	rsi, rbx
	mov	rdx, rcx
	call	__printf_chk
.label_938:
	mov	eax, r14d
	add	rsp, 0x98
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x4095b1
	.globl sub_4095b1
	.type sub_4095b1, @function
sub_4095b1:

	nop	dword ptr [rax]
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4095c0

	.globl hard_locale
	.type hard_locale, @function
hard_locale:
	push	rbx
	xor	esi, esi
	call	setlocale
	mov	bl, 1
	test	rax, rax
	je	.label_952
	cmp	byte ptr [rax], 0x43
	jne	.label_954
	cmp	byte ptr [rax + 1], 0
	je	.label_951
.label_954:
	mov	esi, OFFSET FLAT:label_953
	mov	rdi, rax
	call	strcmp
	test	eax, eax
	jne	.label_952
.label_951:
	xor	ebx, ebx
.label_952:
	mov	eax, ebx
	pop	rbx
	ret	
	.section	.text
	.align	16
	#Procedure 0x4095f1
	.globl sub_4095f1
	.type sub_4095f1, @function
sub_4095f1:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x409600

	.globl open_safer
	.type open_safer, @function
open_safer:
	sub	rsp, 0xd8
	test	al, al
	je	.label_955
	movaps	xmmword ptr [rsp + 0x50], xmm0
	movaps	xmmword ptr [rsp + 0x60], xmm1
	movaps	xmmword ptr [rsp + 0x70], xmm2
	movaps	xmmword ptr [rsp + 0x80], xmm3
	movaps	xmmword ptr [rsp + 0x90], xmm4
	movaps	xmmword ptr [rsp + 0xa0], xmm5
	movaps	xmmword ptr [rsp + 0xb0], xmm6
	movaps	xmmword ptr [rsp + 0xc0], xmm7
.label_955:
	mov	qword ptr [rsp + 0x48], r9
	mov	qword ptr [rsp + 0x40], r8
	mov	qword ptr [rsp + 0x38], rcx
	mov	qword ptr [rsp + 0x30], rdx
	xor	edx, edx
	test	sil, 0x40
	je	.label_956
	lea	rax, [rsp + 0x20]
	mov	qword ptr [rsp + 0x10], rax
	lea	rax, [rsp + 0xe0]
	mov	qword ptr [rsp + 8], rax
	mov	dword ptr [rsp + 4], 0x30
	mov	dword ptr [rsp], 0x10
	movsxd	rcx, dword ptr [rsp]
	cmp	rcx, 0x28
	ja	.label_958
	mov	rax, rcx
	add	rax, qword ptr [rsp + 0x10]
	lea	ecx, [rcx + 8]
	mov	dword ptr [rsp], ecx
	jmp	.label_957
.label_958:
	mov	rax, qword ptr [rsp + 8]
	lea	rcx, [rax + 8]
	mov	qword ptr [rsp + 8], rcx
.label_957:
	mov	edx, dword ptr [rax]
.label_956:
	xor	eax, eax
	call	open
	mov	edi, eax
	call	fd_safer
	add	rsp, 0xd8
	ret	
	.section	.text
	.align	16
	#Procedure 0x4096c4
	.globl sub_4096c4
	.type sub_4096c4, @function
sub_4096c4:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4096d0

	.globl AD_hash
	.type AD_hash, @function
AD_hash:
	mov	rax, qword ptr [rdi + 8]
	xor	edx, edx
	div	rsi
	mov	rax, rdx
	ret	
	.section	.text
	.align	16
	#Procedure 0x4096dd
	.globl sub_4096dd
	.type sub_4096dd, @function
sub_4096dd:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x4096e0
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
	#Procedure 0x4096ef
	.globl sub_4096ef
	.type sub_4096ef, @function
sub_4096ef:

	nop	
	.section	.text
	.align	16
	#Procedure 0x4096f0

	.globl rpl_fts_read
	.type rpl_fts_read, @function
rpl_fts_read:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	push	rax
	mov	r14, rdi
	mov	r12, qword ptr [r14]
	xor	r15d, r15d
	test	r12, r12
	je	.label_961
	mov	eax, dword ptr [r14 + 0x48]
	xor	r15d, r15d
	test	ah, 0x20
	jne	.label_961
	movzx	ecx, word ptr [r12 + 0x74]
	mov	word ptr [r12 + 0x74], 3
	cmp	ecx, 1
	je	.label_966
	movzx	edx, cx
	cmp	edx, 2
	jne	.label_972
	mov	ecx, dword ptr [r12 + 0x70]
	mov	esi, ecx
	and	esi, 0xfffe
	cmp	esi, 0xc
	jne	.label_977
	mov	edx, 1
	mov	rdi, r14
	mov	rsi, r12
	call	fts_stat
	mov	word ptr [r12 + 0x70], ax
	movzx	eax, ax
	cmp	eax, 1
	jne	.label_985
	mov	eax, dword ptr [r14 + 0x48]
	test	al, 4
	jne	.label_991
	mov	edx, eax
	and	edx, 0x10
	shl	edx, 0xd
	or	edx, 0x90900
	test	ah, 2
	jne	.label_994
	mov	edi, OFFSET FLAT:label_709
	xor	eax, eax
	mov	esi, edx
	call	open_safer
	jmp	.label_999
.label_966:
	xor	edx, edx
	mov	rdi, r14
	mov	rsi, r12
	call	fts_stat
	mov	word ptr [r12 + 0x70], ax
	mov	r15, r12
	jmp	.label_961
.label_972:
	lea	r13, [r12 + 0x70]
	mov	ecx, dword ptr [r12 + 0x70]
	jmp	.label_1005
.label_977:
	lea	r13, [r12 + 0x70]
.label_1005:
	movzx	esi, cx
	cmp	esi, 1
	jne	.label_992
	cmp	edx, 4
	je	.label_1008
	test	al, 0x40
	je	.label_984
	mov	rdx, qword ptr [r12 + 0x78]
	cmp	rdx, qword ptr [r14 + 0x18]
	jne	.label_1008
.label_984:
	mov	rbx, qword ptr [r14 + 8]
	test	rbx, rbx
	je	.label_1014
	test	ah, 0x10
	jne	.label_959
	mov	rcx, qword ptr [r12 + 0x30]
	mov	edx, 0xffffffff
	mov	rdi, r14
	mov	rsi, r12
	call	fts_safe_changedir
	test	eax, eax
	je	.label_968
	call	__errno_location
	mov	eax, dword ptr [rax]
	mov	dword ptr [r12 + 0x40], eax
	or	byte ptr [r12 + 0x72], 1
	mov	rax, qword ptr [r14 + 8]
	jmp	.label_971
	.section	.text
	.align	16
	#Procedure 0x409844
	.globl sub_409844
	.type sub_409844, @function
sub_409844:

	nop	word ptr cs:[rax + rax]
.label_992:
	mov	r15, qword ptr [r12 + 0x10]
	test	r15, r15
	je	.label_1011
	mov	qword ptr [r14], r15
	mov	rdi, r12
	call	free
	cmp	qword ptr [r15 + 0x58], 0
	je	.label_989
	movzx	eax, word ptr [r15 + 0x74]
	cmp	eax, 4
	mov	r12, r15
	je	.label_992
	movzx	eax, ax
	cmp	eax, 2
	jne	.label_983
	mov	edx, 1
	mov	rdi, r14
	mov	rsi, r15
	call	fts_stat
	mov	word ptr [r15 + 0x70], ax
	movzx	eax, ax
	cmp	eax, 1
	jne	.label_964
	mov	eax, dword ptr [r14 + 0x48]
	test	al, 4
	jne	.label_964
	mov	edx, eax
	and	edx, 0x10
	shl	edx, 0xd
	or	edx, 0x90900
	test	ah, 2
	jne	.label_998
	mov	edi, OFFSET FLAT:label_709
	xor	eax, eax
	mov	esi, edx
	call	open_safer
	jmp	.label_976
.label_1013:
	mov	rcx, qword ptr [rax + 8]
	mov	rcx, qword ptr [rcx + 0x30]
	mov	qword ptr [rax + 0x30], rcx
	mov	rax, qword ptr [rax + 0x10]
.label_971:
	test	rax, rax
	jne	.label_1013
	jmp	.label_968
.label_1008:
	test	ecx, 0x20000
	je	.label_1015
	mov	edi, dword ptr [r12 + 0x44]
	call	close
.label_1015:
	mov	rbx, qword ptr [r14 + 8]
	test	rbx, rbx
	je	.label_987
	nop	dword ptr [rax]
.label_975:
	mov	rbp, qword ptr [rbx + 0x10]
	mov	rdi, qword ptr [rbx + 0x18]
	test	rdi, rdi
	je	.label_967
	call	closedir
.label_967:
	mov	rdi, rbx
	call	free
	test	rbp, rbp
	mov	rbx, rbp
	jne	.label_975
	mov	qword ptr [r14 + 8], 0
.label_987:
	mov	word ptr [r12 + 0x70], 6
.label_990:
	mov	rdi, r14
	mov	rsi, r12
	call	leave_dir
	mov	r15, r12
	jmp	.label_961
.label_1011:
	mov	r15, qword ptr [r12 + 8]
	cmp	qword ptr [r15 + 0x18], 0
	je	.label_988
	mov	qword ptr [r14], r15
	mov	rax, qword ptr [r15 + 0x48]
	mov	rcx, qword ptr [r14 + 0x20]
	mov	byte ptr [rcx + rax], 0
	mov	esi, 3
	mov	rdi, r14
	call	fts_build
	mov	r15, rax
	test	r15, r15
	je	.label_996
	mov	rdi, r12
	call	free
	jmp	.label_983
.label_985:
	mov	r15, r12
	jmp	.label_978
.label_989:
	mov	rdi, r14
	call	restore_initial_cwd
	test	eax, eax
	mov	eax, dword ptr [r14 + 0x48]
	je	.label_1004
	or	eax, 0x2000
	mov	dword ptr [r14 + 0x48], eax
	xor	r15d, r15d
	jmp	.label_961
.label_991:
	mov	r15, r12
	jmp	.label_978
.label_1004:
	test	ax, 0x102
	je	.label_1009
	mov	rdi, qword ptr [r14 + 0x58]
	test	rdi, rdi
	je	.label_986
	call	hash_free
	jmp	.label_986
.label_959:
	and	eax, 0xffffefff
	mov	dword ptr [r14 + 0x48], eax
	nop	word ptr cs:[rax + rax]
.label_969:
	mov	rbp, qword ptr [rbx + 0x10]
	mov	rdi, qword ptr [rbx + 0x18]
	test	rdi, rdi
	je	.label_963
	call	closedir
.label_963:
	mov	rdi, rbx
	call	free
	test	rbp, rbp
	mov	rbx, rbp
	jne	.label_969
	mov	qword ptr [r14 + 8], 0
.label_1014:
	mov	esi, 3
	mov	rdi, r14
	call	fts_build
	mov	qword ptr [r14 + 8], rax
	test	rax, rax
	je	.label_980
.label_968:
	mov	r15, qword ptr [r14 + 8]
	mov	qword ptr [r14 + 8], 0
	jmp	.label_983
.label_980:
	xor	r15d, r15d
	test	byte ptr [r14 + 0x49], 0x20
	jne	.label_961
	cmp	dword ptr [r12 + 0x40], 0
	je	.label_990
	movzx	eax, word ptr [r13]
	cmp	eax, 4
	je	.label_990
	mov	word ptr [r13], 7
	jmp	.label_990
.label_994:
	mov	edi, dword ptr [r14 + 0x2c]
	mov	esi, OFFSET FLAT:label_709
	xor	eax, eax
	call	openat_safer
.label_999:
	mov	dword ptr [r12 + 0x44], eax
	test	eax, eax
	js	.label_1000
	or	byte ptr [r12 + 0x72], 2
	mov	r15, r12
	jmp	.label_978
.label_996:
	xor	r15d, r15d
	test	byte ptr [r14 + 0x49], 0x20
	jne	.label_961
	mov	r15, qword ptr [r12 + 8]
.label_988:
	mov	qword ptr [r14], r15
	mov	rdi, r12
	call	free
	cmp	qword ptr [r15 + 0x58], -1
	je	.label_1010
	movzx	eax, word ptr [r15 + 0x70]
	cmp	eax, 0xb
	je	.label_974
	mov	rax, qword ptr [r15 + 0x48]
	mov	rcx, qword ptr [r14 + 0x20]
	mov	byte ptr [rcx + rax], 0
	cmp	qword ptr [r15 + 0x58], 0
	je	.label_1012
	movzx	eax, word ptr [r15 + 0x72]
	test	al, 2
	jne	.label_960
	test	al, 1
	jne	.label_981
	mov	rsi, qword ptr [r15 + 8]
	mov	edx, 0xffffffff
	mov	ecx, OFFSET FLAT:label_696
	mov	rdi, r14
	call	fts_safe_changedir
	jmp	.label_995
.label_1010:
	mov	rdi, r15
	call	free
	call	__errno_location
	mov	dword ptr [rax], 0
	mov	qword ptr [r14], 0
	xor	r15d, r15d
	jmp	.label_961
.label_1000:
	call	__errno_location
	mov	eax, dword ptr [rax]
	mov	dword ptr [r12 + 0x40], eax
	mov	word ptr [r12 + 0x70], 7
	mov	r15, r12
	jmp	.label_978
.label_1009:
	mov	rdi, qword ptr [r14 + 0x58]
	call	free
.label_986:
	mov	rdx, qword ptr [r15 + 0x60]
	mov	qword ptr [r15 + 0x48], rdx
	mov	rdi, qword ptr [r14 + 0x20]
	lea	r12, [r15 + 0x108]
	inc	rdx
	mov	rsi, r12
	call	memmove
	mov	esi, 0x2f
	mov	rdi, r12
	call	strrchr
	mov	rbx, rax
	test	rbx, rbx
	je	.label_1001
	cmp	rbx, r12
	jne	.label_1002
	cmp	byte ptr [r15 + 0x109], 0
	je	.label_1001
.label_1002:
	inc	rbx
	mov	rdi, rbx
	call	strlen
	mov	r13, rax
	lea	rdx, [r13 + 1]
	mov	rdi, r12
	mov	rsi, rbx
	call	memmove
	mov	qword ptr [r15 + 0x60], r13
.label_1001:
	mov	rax, qword ptr [r14 + 0x20]
	mov	qword ptr [r15 + 0x38], rax
	mov	qword ptr [r15 + 0x30], rax
	movzx	eax, word ptr [r14 + 0x48]
	test	ax, 0x102
	je	.label_973
	mov	edi, 0x1f
	xor	esi, esi
	mov	edx, OFFSET FLAT:AD_hash
	mov	ecx, OFFSET FLAT:AD_compare
	mov	r8d, OFFSET FLAT:free
	call	hash_initialize
	mov	qword ptr [r14 + 0x58], rax
	jmp	.label_978
.label_973:
	mov	edi, 0x20
	call	malloc
	mov	qword ptr [r14 + 0x58], rax
	test	rax, rax
	je	.label_978
	mov	rdi, rax
	call	cycle_check_init
	jmp	.label_978
.label_1012:
	mov	rdi, r14
	call	restore_initial_cwd
.label_995:
	test	eax, eax
	je	.label_981
	call	__errno_location
	mov	eax, dword ptr [rax]
	mov	dword ptr [r15 + 0x40], eax
	or	byte ptr [r14 + 0x49], 0x20
	jmp	.label_981
.label_960:
	mov	eax, dword ptr [r14 + 0x48]
	lea	rbx, [r15 + 0x44]
	test	al, 4
	jne	.label_982
	test	ah, 2
	mov	ebp, dword ptr [r15 + 0x44]
	jne	.label_993
	mov	edi, ebp
	call	fchdir
	test	eax, eax
	je	.label_982
	call	__errno_location
	mov	eax, dword ptr [rax]
	mov	dword ptr [r15 + 0x40], eax
	or	byte ptr [r14 + 0x49], 0x20
	jmp	.label_982
.label_998:
	mov	edi, dword ptr [r14 + 0x2c]
	mov	esi, OFFSET FLAT:label_709
	xor	eax, eax
	call	openat_safer
.label_976:
	mov	dword ptr [r15 + 0x44], eax
	test	eax, eax
	js	.label_1003
	or	byte ptr [r15 + 0x72], 2
	jmp	.label_964
.label_1003:
	call	__errno_location
	mov	eax, dword ptr [rax]
	mov	dword ptr [r15 + 0x40], eax
	mov	word ptr [r15 + 0x70], 7
.label_964:
	mov	word ptr [r15 + 0x74], 3
.label_983:
	mov	rax, qword ptr [r14 + 0x20]
	mov	rcx, qword ptr [r15 + 8]
	mov	rdx, qword ptr [rcx + 0x38]
	mov	rcx, qword ptr [rcx + 0x48]
	lea	rsi, [rcx - 1]
	cmp	byte ptr [rdx + rcx - 1], 0x2f
	cmovne	rsi, rcx
	lea	rdi, [rax + rsi + 1]
	mov	byte ptr [rax + rsi], 0x2f
	lea	rsi, [r15 + 0x108]
	mov	rdx, qword ptr [r15 + 0x60]
	inc	rdx
	call	memmove
.label_978:
	mov	qword ptr [r14], r15
	movzx	eax, word ptr [r15 + 0x70]
	cmp	eax, 0xb
	jne	.label_965
	mov	rax, qword ptr [r15 + 0xa8]
	cmp	rax, 1
	je	.label_970
	cmp	rax, 2
	jne	.label_974
	mov	rbx, qword ptr [r15 + 8]
	cmp	qword ptr [rbx + 0x68], 0
	jne	.label_979
	mov	eax, dword ptr [r14 + 0x48]
	and	eax, 0x18
	cmp	eax, 0x18
	jne	.label_979
	mov	esi, dword ptr [r14 + 0x2c]
	mov	rdi, rbx
	call	filesystem_type
	cmp	rax, 0x52654973
	je	.label_970
	cmp	rax, 0x58465342
	je	.label_970
.label_979:
	xor	edx, edx
	mov	rdi, r14
	mov	rsi, r15
	call	fts_stat
	mov	word ptr [r15 + 0x70], ax
	mov	ecx, 0xf000
	and	ecx, dword ptr [r15 + 0x90]
	cmp	ecx, 0x4000
	jne	.label_965
	cmp	qword ptr [r15 + 0x58], 0
	je	.label_970
	mov	rax, qword ptr [rbx + 0x68]
	lea	rcx, [rax + 1]
	cmp	rcx, 2
	jb	.label_970
	dec	rax
	mov	qword ptr [rbx + 0x68], rax
.label_970:
	mov	ax, word ptr [r15 + 0x70]
.label_965:
	movzx	eax, ax
	cmp	eax, 1
	jne	.label_961
	cmp	qword ptr [r15 + 0x58], 0
	jne	.label_1006
	mov	rax, qword ptr [r15 + 0x78]
	mov	qword ptr [r14 + 0x18], rax
.label_1006:
	mov	rdi, r14
	mov	rsi, r15
	call	enter_dir
	test	al, al
	jne	.label_961
	call	__errno_location
	mov	dword ptr [rax], 0xc
	xor	r15d, r15d
	jmp	.label_961
.label_993:
	mov	esi, dword ptr [r14 + 0x2c]
	cmp	esi, ebp
	jne	.label_1007
	cmp	esi, -0x64
	jne	.label_974
.label_1007:
	lea	rdi, [r14 + 0x60]
	call	i_ring_push
	test	eax, eax
	js	.label_997
	mov	edi, eax
	call	close
.label_997:
	mov	dword ptr [r14 + 0x2c], ebp
.label_982:
	mov	edi, dword ptr [rbx]
	call	close
.label_981:
	movzx	eax, word ptr [r15 + 0x70]
	cmp	eax, 2
	je	.label_962
	mov	eax, dword ptr [r15 + 0x40]
	xor	ecx, ecx
	cmp	eax, 0
	setne	cl
	or	ecx, 6
	cmp	eax, 0
	mov	word ptr [r15 + 0x70], cx
	jne	.label_962
	mov	rdi, r14
	mov	rsi, r15
	call	leave_dir
.label_962:
	xor	eax, eax
	test	byte ptr [r14 + 0x49], 0x20
	cmovne	r15, rax
.label_961:
	mov	rax, r15
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_974:
	call	abort
	.section	.text
	.align	16
	#Procedure 0x409e73
	.globl sub_409e73
	.type sub_409e73, @function
sub_409e73:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x409ee5
	.globl sub_409ee5
	.type sub_409ee5, @function
sub_409ee5:

	nop	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x409ef2
	.globl sub_409ef2
	.type sub_409ef2, @function
sub_409ef2:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x409f16
	.globl sub_409f16
	.type sub_409f16, @function
sub_409f16:

	nop	word ptr cs:[rax + rax]
