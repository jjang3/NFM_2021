	.section	.text
	.align	32
	#Procedure 0x401ac9
	.globl sub_401ac9
	.type sub_401ac9, @function
sub_401ac9:

	hlt	
	.section	.text
	.align	32
	#Procedure 0x401aca
	.globl sub_401aca
	.type sub_401aca, @function
sub_401aca:

	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x401b02
	.globl sub_401b02
	.type sub_401b02, @function
sub_401b02:

	nop	dword ptr [rax]
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x401b4a
	.globl sub_401b4a
	.type sub_401b4a, @function
sub_401b4a:

	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x401b6c
	.globl sub_401b6c
	.type sub_401b6c, @function
sub_401b6c:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x401b7d
	.globl sub_401b7d
	.type sub_401b7d, @function
sub_401b7d:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x401b96
	.globl sub_401b96
	.type sub_401b96, @function
sub_401b96:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x401ba0

	.globl usage
	.type usage, @function
usage:
	push	rbp
	push	r15
	push	r14
	push	rbx
	push	rax
	mov	rbx, rdi
	test	rbx, rbx
	je	.label_9
	mov	r14d, dword ptr [rip + exit_failure]
	call	__errno_location
	mov	r15d, dword ptr [rax]
	xor	edi, edi
	test	r15d, r15d
	jne	.label_12
	mov	esi, OFFSET FLAT:label_10
	jmp	.label_11
.label_12:
	mov	esi, OFFSET FLAT:label_13
.label_11:
	mov	edx, 5
	call	dcgettext
	mov	rbp, rax
	mov	rdi, rbx
	call	sub_408a50
	mov	rcx, rax
	xor	eax, eax
	mov	edi, r14d
	mov	esi, r15d
	mov	rdx, rbp
	call	error
.label_9:
	call	abort
	.section	.text
	.align	32
	#Procedure 0x401bfe
	.globl sub_401bfe
	.type sub_401bfe, @function
sub_401bfe:

	nop
push	rbp
	push	r14
	push	rbx
	mov	rbx, rdi
	call	fileno
	test	eax, eax
	js	.label_14
	mov	rdi, rbx
	call	__freading
	test	eax, eax
	je	.label_16
	mov	rdi, rbx
	call	fileno
	xor	esi, esi
	mov	edx, 1
	mov	edi, eax
	call	lseek
	cmp	rax, -1
	je	.label_14
.label_16:
	mov	rdi, rbx
	call	sub_402690
	test	eax, eax
	je	.label_14
	call	__errno_location
	mov	r14, rax
	mov	ebp, dword ptr [r14]
	mov	rdi, rbx
	call	fclose
	test	ebp, ebp
	je	.label_15
	mov	dword ptr [r14], ebp
	mov	eax, 0xffffffff
.label_15:
	pop	rbx
	pop	r14
	pop	rbp
	ret	
.label_14:
	mov	rdi, rbx
	pop	rbx
	pop	r14
	pop	rbp
	jmp	fclose
	.section	.text
	.align	32
	#Procedure 0x401c74
	.globl sub_401c74
	.type sub_401c74, @function
sub_401c74:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x401c80
	.globl sub_401c80
	.type sub_401c80, @function
sub_401c80:

	mov	rax, qword ptr [rdi]
	ret	
	.section	.text
	.align	32
	#Procedure 0x401c84
	.globl sub_401c84
	.type sub_401c84, @function
sub_401c84:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x401c90
	.globl sub_401c90
	.type sub_401c90, @function
sub_401c90:

	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	push	rax
	mov	r13, rsi
	mov	r14, rdi
	xor	eax, eax
	test	byte ptr [r13], 0x10
	jne	.label_20
	mov	r15, qword ptr [r14 + 0x10]
	mov	r12, qword ptr [r14]
	add	r12, r15
	mov	rbx, r15
	nop	dword ptr [rax + rax]
.label_22:
	mov	rax, qword ptr [r13 + 8]
	cmp	rax, qword ptr [r13 + 0x10]
	jae	.label_17
	lea	rcx, [rax + 1]
	mov	qword ptr [r13 + 8], rcx
	movzx	ebp, byte ptr [rax]
.label_19:
	cmp	rbx, r12
	jne	.label_21
	mov	rbx, qword ptr [r14]
	mov	rdi, r15
	mov	rsi, r14
	call	sub_4087ee
	.section	.text
	.align	32
	#Procedure 0x401ce8
	.globl sub_401ce8
	.type sub_401ce8, @function
sub_401ce8:

	mov	r15, rax
	add	rbx, r15
	mov	qword ptr [r14 + 0x10], r15
	mov	r12, r15
	add	r12, qword ptr [r14]
.label_21:
	mov	byte ptr [rbx], bpl
	inc	rbx
	cmp	ebp, 0xa
	jne	.label_22
	jmp	.label_18
.label_17:
	mov	rdi, r13
	call	__uflow
	mov	ebp, eax
	cmp	ebp, -1
	jne	.label_19
	cmp	rbx, r15
	mov	eax, 0
	je	.label_20
	test	byte ptr [r13], 0x20
	jne	.label_20
	mov	ebp, 0xa
	cmp	byte ptr [rbx - 1], 0xa
	jne	.label_19
.label_18:
	sub	rbx, r15
	mov	qword ptr [r14 + 8], rbx
	mov	rax, r14
.label_20:
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x401d49
	.globl sub_401d49
	.type sub_401d49, @function
sub_401d49:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x401d50
	.globl sub_401d50
	.type sub_401d50, @function
sub_401d50:

	test	rdi, rdi
	mov	ecx, OFFSET FLAT:default_quoting_options
	cmovne	rcx, rdi
	mov	eax, dword ptr [rcx + 4]
	mov	dword ptr [rcx + 4], esi
	ret	
	.section	.text
	.align	32
	#Procedure 0x401d63
	.globl sub_401d63
	.type sub_401d63, @function
sub_401d63:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x401d70
	.globl sub_401d70
	.type sub_401d70, @function
sub_401d70:

	sub	rsp, 0x38
	mov	ecx, esi
	mov	rax, rdi
	mov	rdx, qword ptr [rip + label_23]
	mov	qword ptr [rsp + 0x30], rdx
	movups	xmm0, xmmword ptr [rip + label_24]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0, xmmword ptr [rip + label_25]
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
	.section	.text
	.align	32
	#Procedure 0x401dcd
	.globl sub_401dcd
	.type sub_401dcd, @function
sub_401dcd:

	ret	0xffff
	.section	.text
	.align	32
	#Procedure 0x401dd5
	.globl sub_401dd5
	.type sub_401dd5, @function
sub_401dd5:

	call	sub_4042b0
	add	rsp, 0x38
	ret	
	.section	.text
	.align	32
	#Procedure 0x401ddf
	.globl sub_401ddf
	.type sub_401ddf, @function
sub_401ddf:

	nop
push	rbx
	sub	rsp, 0x10
	mov	rbx, rsi
	lea	rdx, [rsp + 8]
	call	sub_407490
	mov	ecx, eax
	xor	eax, eax
	cmp	ecx, -1
	je	.label_26
	test	ecx, ecx
	cmove	rbx, qword ptr [rsp + 8]
	mov	rax, rbx
.label_26:
	add	rsp, 0x10
	pop	rbx
	ret	
	.section	.text
	.align	32
	#Procedure 0x401e0c
	.globl sub_401e0c
	.type sub_401e0c, @function
sub_401e0c:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x401e10
	.globl sub_401e10
	.type sub_401e10, @function
sub_401e10:

	mov	rax, qword ptr [rdi + 0x18]
	ret	
	.section	.text
	.align	32
	#Procedure 0x401e15
	.globl sub_401e15
	.type sub_401e15, @function
sub_401e15:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x401e20

	.globl sub_401e20
	.type sub_401e20, @function
sub_401e20:
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
	jae	.label_39
	mov	rbp, qword ptr [r15]
	shl	rbx, 4
	mov	rsi, qword ptr [rbp + rbx]
	xor	r12d, r12d
	test	rsi, rsi
	je	.label_32
	lea	r13, [rbp + rbx]
	cmp	rsi, r14
	je	.label_48
	mov	rdi, r14
	call	qword ptr [r15 + 0x38]
	test	al, al
	je	.label_50
	mov	r14, qword ptr [r13]
.label_48:
	mov	rax, qword ptr [rbp + rbx + 8]
	test	rax, rax
	je	.label_41
	movups	xmm0, xmmword ptr [rax]
	movups	xmmword ptr [r13], xmm0
	mov	qword ptr [rax], 0
	mov	rcx, qword ptr [r15 + 0x48]
	mov	qword ptr [rax + 8], rcx
	mov	qword ptr [r15 + 0x48], rax
	jmp	.label_28
.label_50:
	mov	rax, qword ptr [rbp + rbx + 8]
	xor	r12d, r12d
	test	rax, rax
	je	.label_32
	lea	rbx, [rbp + rbx + 8]
	xor	r12d, r12d
	nop	word ptr [rax + rax]
.label_46:
	mov	rsi, qword ptr [rax]
	cmp	rsi, r14
	je	.label_40
	mov	rdi, r14
	call	qword ptr [r15 + 0x38]
	mov	rcx, qword ptr [rbx]
	test	al, al
	jne	.label_44
	mov	rax, qword ptr [rcx + 8]
	add	rcx, 8
	test	rax, rax
	mov	rbx, rcx
	jne	.label_46
	jmp	.label_32
.label_41:
	mov	qword ptr [r13], 0
	jmp	.label_28
.label_40:
	mov	rcx, rax
	jmp	.label_52
.label_44:
	mov	r14, qword ptr [rcx]
.label_52:
	mov	rax, qword ptr [rcx + 8]
	mov	qword ptr [rbx], rax
	mov	qword ptr [rcx], 0
	mov	rax, qword ptr [r15 + 0x48]
	mov	qword ptr [rcx + 8], rax
	mov	qword ptr [r15 + 0x48], rcx
.label_28:
	xor	r12d, r12d
	test	r14, r14
	je	.label_32
	dec	qword ptr [r15 + 0x20]
	cmp	qword ptr [r13], 0
	jne	.label_30
	mov	rax, qword ptr [r15 + 0x18]
	dec	rax
	mov	qword ptr [r15 + 0x18], rax
	mov	ecx, eax
	and	ecx, 1
	test	rax, rax
	js	.label_37
	cvtsi2ss	xmm1, rax
	jmp	.label_42
.label_37:
	shr	rax, 1
	or	rcx, rax
	cvtsi2ss	xmm1, rcx
	addss	xmm1, xmm1
.label_42:
	mov	rcx, qword ptr [r15 + 0x10]
	mov	rax, qword ptr [r15 + 0x28]
	movss	xmm2, dword ptr [rax]
	mov	edx, ecx
	and	edx, 1
	test	rcx, rcx
	js	.label_47
	xorps	xmm0, xmm0
	cvtsi2ss	xmm0, rcx
	jmp	.label_51
.label_47:
	shr	rcx, 1
	or	rdx, rcx
	xorps	xmm0, xmm0
	cvtsi2ss	xmm0, rdx
	addss	xmm0, xmm0
.label_51:
	movaps	xmm3, xmm2
	mulss	xmm3, xmm0
	ucomiss	xmm3, xmm1
	jbe	.label_30
	mov	ecx, OFFSET FLAT:default_tuning
	cmp	rax, rcx
	je	.label_33
	movss	xmm3, dword ptr [rax + 8]
	ucomiss	xmm3, dword ptr [rip + label_35]
	jbe	.label_36
	movss	xmm4, dword ptr [rip + label_38]
	ucomiss	xmm4, xmm3
	jbe	.label_36
	xorps	xmm4, xmm4
	ucomiss	xmm2, xmm4
	jb	.label_36
	movss	xmm4, dword ptr [rax + 0xc]
	ucomiss	xmm4, dword ptr [rip + label_43]
	jbe	.label_36
	movss	xmm4, dword ptr [rip + label_35]
	addss	xmm4, xmm2
	ucomiss	xmm3, xmm4
	jbe	.label_36
	movss	xmm3, dword ptr [rax + 4]
	movss	xmm5, dword ptr [rip + label_45]
	ucomiss	xmm5, xmm3
	jb	.label_36
	ucomiss	xmm3, xmm4
	ja	.label_27
.label_36:
	mov	qword ptr [r15 + 40], OFFSET FLAT:default_tuning
	mov	eax, OFFSET FLAT:default_tuning
	xorps	xmm2, xmm2
	jmp	.label_27
.label_33:
	mov	eax, OFFSET FLAT:default_tuning
.label_27:
	mulss	xmm2, xmm0
	ucomiss	xmm2, xmm1
	jbe	.label_30
	mulss	xmm0, dword ptr [rax + 4]
	cmp	byte ptr [rax + 0x10], 0
	jne	.label_34
	mulss	xmm0, dword ptr [rax + 8]
.label_34:
	movss	xmm1, dword ptr [rip + label_49]
	movaps	xmm2, xmm0
	subss	xmm2, xmm1
	cvttss2si	rax, xmm2
	movabs	rcx, 0x8000000000000000
	xor	rcx, rax
	cvttss2si	rsi, xmm0
	ucomiss	xmm0, xmm1
	cmovae	rsi, rcx
	mov	rdi, r15
	call	sub_402180
	test	al, al
	jne	.label_30
	mov	rdi, qword ptr [r15 + 0x48]
	test	rdi, rdi
	je	.label_31
	nop	word ptr cs:[rax + rax]
.label_29:
	mov	rbx, qword ptr [rdi + 8]
	call	free
	test	rbx, rbx
	mov	rdi, rbx
	jne	.label_29
.label_31:
	mov	qword ptr [r15 + 0x48], 0
.label_30:
	mov	r12, r14
.label_32:
	mov	rax, r12
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_39:
	call	abort
	.section	.text
	.align	32
	#Procedure 0x4020b3
	.globl sub_4020b3
	.type sub_4020b3, @function
sub_4020b3:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4020c0
	.globl sub_4020c0
	.type sub_4020c0, @function
sub_4020c0:

	sub	rsp, 0x78
	mov	rax, rdx
	xorps	xmm0, xmm0
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movaps	xmmword ptr [rsp + 0x10], xmm0
	movaps	xmmword ptr [rsp], xmm0
	mov	dword ptr [rsp + 0x30], 0
	cmp	esi, 0xa
	je	.label_53
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
	call	sub_4042b0
	add	rsp, 0x78
	ret	
.label_53:
	call	abort
	.section	.text
	.align	32
	#Procedure 0x40212c
	.globl sub_40212c
	.type sub_40212c, @function
sub_40212c:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x402130
	.globl sub_402130
	.type sub_402130, @function
sub_402130:

	mov	r9, qword ptr [rdi]
	mov	r8, qword ptr [rdi + 8]
	xor	eax, eax
	cmp	r9, r8
	jae	.label_54
	xor	eax, eax
.label_56:
	cmp	qword ptr [r9], 0
	je	.label_55
	test	r9, r9
	je	.label_55
	mov	r8, r9
	nop	
.label_57:
	cmp	rax, rdx
	jae	.label_54
	mov	rcx, qword ptr [r8]
	mov	qword ptr [rsi + rax*8], rcx
	inc	rax
	mov	r8, qword ptr [r8 + 8]
	test	r8, r8
	jne	.label_57
	mov	r8, qword ptr [rdi + 8]
.label_55:
	add	r9, 0x10
	cmp	r9, r8
	jb	.label_56
.label_54:
	ret	
	.section	.text
	.align	32
	#Procedure 0x402176
	.globl sub_402176
	.type sub_402176, @function
sub_402176:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x402180

	.globl sub_402180
	.type sub_402180, @function
sub_402180:
	push	rbp
	push	r15
	push	r14
	push	r12
	push	rbx
	sub	rsp, 0x50
	mov	r14, rdi
	mov	rax, qword ptr [r14 + 0x28]
	cmp	byte ptr [rax + 0x10], 0
	jne	.label_58
	mov	ecx, esi
	and	ecx, 1
	test	rsi, rsi
	js	.label_67
	cvtsi2ss	xmm0, rsi
	jmp	.label_71
.label_67:
	shr	rsi, 1
	or	rcx, rsi
	cvtsi2ss	xmm0, rcx
	addss	xmm0, xmm0
.label_71:
	divss	xmm0, dword ptr [rax + 8]
	movss	xmm1, dword ptr [rip + label_49]
	movaps	xmm2, xmm0
	subss	xmm2, xmm1
	cvttss2si	rax, xmm2
	movabs	rcx, 0x8000000000000000
	xor	rcx, rax
	cvttss2si	rsi, xmm0
	ucomiss	xmm0, xmm1
	cmovae	rsi, rcx
	ucomiss	xmm0, dword ptr [rip + label_76]
	jae	.label_66
.label_58:
	cmp	rsi, 0xa
	mov	ebx, 0xa
	cmovae	rbx, rsi
	or	rbx, 1
	jmp	.label_75
	.section	.text
	.align	32
	#Procedure 0x40220b
	.globl sub_40220b
	.type sub_40220b, @function
sub_40220b:

	nop	dword ptr [rax + rax]
.label_69:
	add	rbx, 2
.label_75:
	cmp	rbx, -1
	je	.label_66
	cmp	rbx, 0xa
	mov	ecx, 3
	jb	.label_59
	mov	esi, 0xc
	mov	edi, 9
	mov	ecx, 3
	nop	dword ptr [rax + rax]
.label_64:
	xor	edx, edx
	mov	rax, rbx
	div	rcx
	test	rdx, rdx
	je	.label_59
	lea	rdi, [rdi + rsi + 4]
	add	rcx, 2
	add	rsi, 8
	cmp	rdi, rbx
	jb	.label_64
.label_59:
	xor	edx, edx
	mov	rax, rbx
	div	rcx
	test	rdx, rdx
	je	.label_69
	lea	rax, [rbx - 1]
	movabs	rcx, 0xffffffffffffffe
	cmp	rax, rcx
	ja	.label_66
	mov	bpl, 1
	cmp	rbx, qword ptr [r14 + 0x10]
	je	.label_60
	mov	esi, 0x10
	mov	rdi, rbx
	call	sub_407b15
	mov	qword ptr [rsp], rax
	test	rax, rax
	je	.label_66
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
	call	sub_4077d0
	test	al, al
	je	.label_73
	mov	rdi, qword ptr [r14]
	call	free
	movaps	xmm0, xmmword ptr [rsp]
	movups	xmmword ptr [r14], xmm0
	movaps	xmm0, xmmword ptr [rsp + 0x10]
	movups	xmmword ptr [r14 + 0x10], xmm0
	mov	rax, qword ptr [rsp + 0x48]
	mov	qword ptr [r14 + 0x48], rax
	jmp	.label_60
.label_73:
	mov	rax, qword ptr [rsp + 0x48]
	mov	qword ptr [r14 + 0x48], rax
	mov	r12, qword ptr [rsp]
	mov	r15, qword ptr [rsp + 8]
	jmp	.label_68
	.section	.text
	.align	32
	#Procedure 0x40232e
	.globl sub_40232e
	.type sub_40232e, @function
sub_40232e:

	nop	
.label_62:
	add	r12, 0x10
.label_68:
	cmp	r12, r15
	jae	.label_74
	cmp	qword ptr [r12], 0
	je	.label_62
	mov	rbp, qword ptr [r12 + 8]
	test	rbp, rbp
	je	.label_61
	mov	rsi, qword ptr [r14 + 0x10]
	nop	word ptr cs:[rax + rax]
.label_77:
	mov	rbx, qword ptr [rbp]
	mov	rdi, rbx
	call	qword ptr [r14 + 0x30]
	mov	rsi, qword ptr [r14 + 0x10]
	cmp	rax, rsi
	jae	.label_72
	mov	rdx, qword ptr [r14]
	mov	rcx, qword ptr [rbp + 8]
	shl	rax, 4
	cmp	qword ptr [rdx + rax], 0
	je	.label_65
	mov	rdi, qword ptr [rdx + rax + 8]
	mov	qword ptr [rbp + 8], rdi
	mov	qword ptr [rdx + rax + 8], rbp
	jmp	.label_63
	.section	.text
	.align	32
	#Procedure 0x40239a
	.globl sub_40239a
	.type sub_40239a, @function
sub_40239a:

	nop	word ptr [rax + rax]
.label_65:
	add	rdx, rax
	mov	qword ptr [rdx], rbx
	inc	qword ptr [r14 + 0x18]
	mov	qword ptr [rbp], 0
	mov	rax, qword ptr [r14 + 0x48]
	mov	qword ptr [rbp + 8], rax
	mov	qword ptr [r14 + 0x48], rbp
.label_63:
	test	rcx, rcx
	mov	rbp, rcx
	jne	.label_77
.label_61:
	mov	qword ptr [r12 + 8], 0
	jmp	.label_62
.label_74:
	lea	rsi, [rsp]
	xor	edx, edx
	mov	rdi, r14
	call	sub_4077d0
	test	al, al
	je	.label_70
	mov	rdi, qword ptr [rsp]
	call	free
.label_66:
	xor	ebp, ebp
.label_60:
	mov	eax, ebp
	add	rsp, 0x50
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_72:
	call	abort
.label_70:
	call	abort
	.section	.text
	.align	32
	#Procedure 0x40240a
	.globl sub_40240a
	.type sub_40240a, @function
sub_40240a:

	nop	word ptr [rax + rax]
.label_78:
	call	abort
	.section	.text
	.align	32
	#Procedure 0x402415
	.globl sub_402415
	.type sub_402415, @function
sub_402415:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x402424
	.globl sub_402424
	.type sub_402424, @function
sub_402424:

	sub	rsp, 0x78
	xorps	xmm0, xmm0
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movaps	xmmword ptr [rsp + 0x10], xmm0
	movaps	xmmword ptr [rsp], xmm0
	mov	dword ptr [rsp + 0x30], 0
	cmp	edi, 0xa
	je	.label_78
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
	call	sub_4042b0
	add	rsp, 0x78
	ret	
	.section	.text
	.align	32
	#Procedure 0x402480

	.globl sub_402480
	.type sub_402480, @function
sub_402480:
	mov	rsi, rbx
	call	realloc
	test	rbx, rbx
	je	.label_79
	test	rax, rax
	je	.label_80
.label_79:
	pop	rbx
	ret	
.label_80:
	call	sub_405290
	.section	.text
	.align	32
	#Procedure 0x402499
	.globl sub_402499
	.type sub_402499, @function
sub_402499:

	nop	dword ptr [rax + rax]
	push	rbx
	mov	rbx, rdx
	movabs	rax, 0x7fffffffffffffff
	xor	edx, edx
	div	rbx
	cmp	rax, rsi
	jb	.label_80
	imul	rbx, rsi
	test	rdi, rdi
	je	sub_402480
	test	rbx, rbx
	jne	sub_402480
	call	free
	xor	eax, eax
	pop	rbx
	ret	
	.section	.text
	.align	32
	#Procedure 0x4024d0
	.globl sub_4024d0
	.type sub_4024d0, @function
sub_4024d0:

	push	r14
	push	rbx
	push	rax
	mov	rbx, rsi
	mov	r14, rdi
	mov	rsi, qword ptr [r14 + 0x10]
	mov	rdi, rbx
	call	qword ptr [r14 + 0x30]
	cmp	rax, qword ptr [r14 + 0x10]
	jae	.label_83
	mov	rcx, qword ptr [r14]
	shl	rax, 4
	lea	rdx, [rcx + rax]
	nop	word ptr cs:[rax + rax]
.label_85:
	cmp	qword ptr [rdx], rbx
	mov	rdx, qword ptr [rdx + 8]
	je	.label_81
	test	rdx, rdx
	jne	.label_85
	jmp	.label_82
.label_83:
	call	abort
	.section	.text
	.align	32
	#Procedure 0x402515
	.globl sub_402515
	.type sub_402515, @function
sub_402515:

	nop	word ptr cs:[rax + rax]
.label_81:
	test	rdx, rdx
	je	.label_82
	mov	rax, qword ptr [rdx]
	jmp	.label_84
.label_82:
	mov	rdx, qword ptr [r14 + 8]
	lea	rcx, [rcx + rax + 0x10]
	nop	word ptr cs:[rax + rax]
.label_86:
	cmp	rcx, rdx
	mov	eax, 0
	jae	.label_84
	mov	rax, qword ptr [rcx]
	add	rcx, 0x10
	test	rax, rax
	je	.label_86
.label_84:
	add	rsp, 8
	pop	rbx
	pop	r14
	ret	
	.section	.text
	.align	32
	#Procedure 0x402560
	.globl sub_402560
	.type sub_402560, @function
sub_402560:

	push	rbp
	push	r15
	push	r14
	push	rbx
	push	rax
	mov	r14, rsi
	mov	esi, OFFSET FLAT:label_87
	call	fopen
	mov	rbx, rax
	xor	r15d, r15d
	test	rbx, rbx
	je	.label_88
	mov	rdi, rbx
	mov	rsi, r14
	call	sub_408580
	mov	r15, rax
	call	__errno_location
	mov	r14, rax
	mov	ebp, dword ptr [r14]
	mov	rdi, rbx
	call	sub_401c00
	test	eax, eax
	je	.label_88
	test	r15, r15
	je	.label_89
	mov	ebp, dword ptr [r14]
	mov	rdi, r15
	call	free
.label_89:
	mov	dword ptr [r14], ebp
	xor	r15d, r15d
.label_88:
	mov	rax, r15
	add	rsp, 8
	pop	rbx
	pop	r14
	pop	r15
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x4025c8
	.globl sub_4025c8
	.type sub_4025c8, @function
sub_4025c8:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4025d0
	.globl sub_4025d0
	.type sub_4025d0, @function
sub_4025d0:

	mov	qword ptr [rdi + 8], rsi
	ret	
	.section	.text
	.align	32
	#Procedure 0x4025d5
	.globl sub_4025d5
	.type sub_4025d5, @function
sub_4025d5:

	nop	word ptr cs:[rax + rax]
.label_96:
	xorps	xmm0, xmm0
	movups	xmmword ptr [r15 + 0x18], xmm0
	pop	rbx
	pop	r14
	pop	r15
	ret	
	.section	.text
	.align	32
	#Procedure 0x4025ee
	.globl sub_4025ee
	.type sub_4025ee, @function
sub_4025ee:

	nop	word ptr [rax + rax]
	push	r15
	push	r14
	push	rbx
	mov	r15, rdi
	mov	r14, qword ptr [r15]
	mov	rax, qword ptr [r15 + 8]
	jmp	.label_93
	.section	.text
	.align	32
	#Procedure 0x402608
	.globl sub_402608
	.type sub_402608, @function
sub_402608:

	nop	word ptr cs:[rax + rax]
.label_90:
	add	r14, 0x10
.label_93:
	cmp	r14, rax
	jae	.label_96
	cmp	qword ptr [r14], 0
	je	.label_90
	mov	rbx, qword ptr [r14 + 8]
	mov	rax, qword ptr [r15 + 0x40]
	test	rax, rax
	setne	cl
	test	rbx, rbx
	je	.label_91
	nop	word ptr cs:[rax + rax]
.label_94:
	test	cl, 1
	je	.label_92
	mov	rdi, qword ptr [rbx]
	call	rax
	mov	rax, qword ptr [r15 + 0x40]
.label_92:
	mov	qword ptr [rbx], 0
	mov	rdx, qword ptr [rbx + 8]
	mov	rcx, qword ptr [r15 + 0x48]
	mov	qword ptr [rbx + 8], rcx
	mov	qword ptr [r15 + 0x48], rbx
	test	rax, rax
	setne	cl
	test	rdx, rdx
	mov	rbx, rdx
	jne	.label_94
.label_91:
	test	cl, cl
	je	.label_95
	mov	rdi, qword ptr [r14]
	call	rax
.label_95:
	xorps	xmm0, xmm0
	movups	xmmword ptr [r14], xmm0
	mov	rax, qword ptr [r15 + 8]
	jmp	.label_90
	.section	.text
	.align	32
	#Procedure 0x402690

	.globl sub_402690
	.type sub_402690, @function
sub_402690:
	push	rbx
	mov	rbx, rdi
	test	rbx, rbx
	je	.label_97
	mov	rdi, rbx
	call	__freading
	test	eax, eax
	je	.label_97
	test	byte ptr [rbx + 1], 1
	je	.label_97
	xor	esi, esi
	mov	edx, 1
	mov	rdi, rbx
	call	sub_407020
.label_97:
	mov	rdi, rbx
	pop	rbx
	jmp	fflush
	.section	.text
	.align	32
	#Procedure 0x4026c3
	.globl sub_4026c3
	.type sub_4026c3, @function
sub_4026c3:

	nop	word ptr cs:[rax + rax]
.label_102:
	call	__errno_location
	jmp	.label_98
	.section	.text
	.align	32
	#Procedure 0x4026d7

	.globl sub_4026d7
	.type sub_4026d7, @function
sub_4026d7:
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
	call	raw_comparator
	.section	.text
	.align	32
	#Procedure 0x4026fd
	.globl sub_4026fd
	.type sub_4026fd, @function
sub_4026fd:

	test	eax, eax
	je	.label_104
	cmp	eax, 1
	je	.label_100
	cmp	eax, 3
	jne	.label_102
	call	__errno_location
	mov	dword ptr [rax], 0
	jmp	.label_98
.label_100:
	call	__errno_location
	mov	dword ptr [rax], 0x4b
	jmp	.label_98
.label_104:
	mov	rbx, qword ptr [rsp]
	cmp	rbx, r13
	jb	.label_101
	cmp	rbx, r15
	jbe	.label_103
.label_101:
	call	__errno_location
	cmp	rbx, 0x40000000
	jb	.label_105
	mov	dword ptr [rax], 0x4b
	jmp	.label_98
.label_105:
	mov	dword ptr [rax], 0x22
.label_98:
	mov	ecx, dword ptr [rsp + 0x40]
	test	ecx, ecx
	mov	ebx, 1
	cmovne	ebx, ecx
	mov	ebp, dword ptr [rax]
	xor	eax, eax
	cmp	ebp, 0x16
	cmove	ebp, eax
	mov	rdi, r12
	call	sub_408a50
	mov	r8, rax
	mov	edx, OFFSET FLAT:label_99
	xor	eax, eax
	mov	edi, ebx
	mov	esi, ebp
	mov	rcx, r14
	call	error
	mov	rbx, qword ptr [rsp]
.label_103:
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
	.align	32
	#Procedure 0x40279b
	.globl sub_40279b
	.type sub_40279b, @function
sub_40279b:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4027a0

	.globl sub_4027a0
	.type sub_4027a0, @function
sub_4027a0:
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
	je	.label_117
	mov	edx, OFFSET FLAT:label_108
	xor	eax, eax
	mov	rdi, r14
	mov	r8, rbx
	call	__fprintf_chk
	jmp	.label_114
.label_117:
	mov	edx, OFFSET FLAT:label_115
	xor	eax, eax
	mov	rdi, r14
	mov	rcx, rbx
	mov	r8, r9
	call	__fprintf_chk
.label_114:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_119
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
	mov	esi, OFFSET FLAT:label_116
	mov	edx, 5
	call	dcgettext
	mov	rdi, rax
	mov	rsi, r14
	call	fputs_unlocked
	cmp	r12, 9
	ja	.label_120
	jmp	qword ptr [(r12 * 8) + label_121]
.label_752:
	add	rsp, 8
	jmp	freopen_safer
.label_120:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_111
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
	jmp	freopen_safer
.label_753:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_107
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
.label_754:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_112
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
.label_755:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_109
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
.label_756:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_123
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
	jmp	freopen_safer
.label_757:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_122
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
	jmp	freopen_safer
.label_758:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_106
	mov	edx, 5
	call	dcgettext
	mov	rdx, rax
	mov	rcx, qword ptr [r15]
	mov	r8, qword ptr [r15 + 8]
	mov	r9, qword ptr [r15 + 0x10]
	.section	.text
	.align	32
	#Procedure 0x4029e0
	.globl close_stdout_set_file_name
	.type close_stdout_set_file_name, @function
close_stdout_set_file_name:

	sub	esp, 8
	mov	esi, 1
	mov	eax, 0
	mov	rdi, r14
	push	qword ptr [r15 + 0x28]
	push	qword ptr [r15 + 0x20]
	push	qword ptr [r15 + 0x18]
	call	__fprintf_chk
	add	rsp, 0x28
	jmp	freopen_safer
	.section	.text
	.align	32
	#Procedure 0x402a04
	.globl sub_402a04
	.type sub_402a04, @function
sub_402a04:

	sub	cl, ch
	out	0, al
	add	byte ptr [rax], al
.label_759:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_110
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
	jmp	freopen_safer
.label_761:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_113
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
	jmp	freopen_safer
.label_760:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_118
	mov	edx, 5
	call	dcgettext
	mov	rdx, rax
	mov	rcx, qword ptr [r15]
	mov	r8, qword ptr [r15 + 8]
	.section	.text
	.align	32
	#Procedure 0x402ac0
	.globl fdadvise
	.type fdadvise, @function
fdadvise:

	adc	byte ptr [r8 - 0x7d], r9b
	in	al, dx
	or	byte ptr [rsi + 1], bh
	mov	eax, 0
	mov	rdi, r14
	push	qword ptr [r15 + 0x38]
	push	qword ptr [r15 + 0x30]
	push	qword ptr [r15 + 0x28]
	push	qword ptr [r15 + 0x20]
	push	qword ptr [r15 + 0x18]
	call	__fprintf_chk
	add	rsp, 0x38
	.section	.text
	.align	32
	#Procedure 0x402af0

	.globl freopen_safer
	.type freopen_safer, @function
freopen_safer:
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	ret	
	.section	.text
	.align	32
	#Procedure 0x402af8
	.globl sub_402af8
	.type sub_402af8, @function
sub_402af8:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x402b00
	.globl sub_402b00
	.type sub_402b00, @function
sub_402b00:

	push	rbx
	mov	rbx, rdi
	mov	esi, 0x18
	call	sub_406b70
	mov	rdi, rbx
	pop	rbx
	jmp	free
	.section	.text
	.align	32
	#Procedure 0x402b17
	.globl sub_402b17
	.type sub_402b17, @function
sub_402b17:

	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x402b20
	.globl sub_402b20
	.type sub_402b20, @function
sub_402b20:

	mov	al, byte ptr [rdi]
	xor	edx, edx
	test	al, al
	je	.label_124
	inc	rdi
	xor	edx, edx
	nop	dword ptr [rax]
.label_125:
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
	jne	.label_125
.label_124:
	mov	rax, rdx
	ret	
	.section	.text
	.align	32
	#Procedure 0x402b53
	.globl sub_402b53
	.type sub_402b53, @function
sub_402b53:

	nop	word ptr cs:[rax + rax]
.label_126:
	call	sub_405290
	.section	.text
	.align	32
	#Procedure 0x402b65
	.globl sub_402b65
	.type sub_402b65, @function
sub_402b65:

	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x402b6b

	.globl sub_402b6b
	.type sub_402b6b, @function
sub_402b6b:
	push	rbx
	mov	rbx, rdi
	call	malloc
	test	rbx, rbx
	je	.label_127
	test	rax, rax
	je	.label_126
.label_127:
	pop	rbx
	ret	
	.section	.text
	.align	32
	#Procedure 0x402b80
	.globl sub_402b80
	.type sub_402b80, @function
sub_402b80:

	mov	rax, rsi
	mov	rdx, rdi
	xor	edi, edi
	mov	ecx, OFFSET FLAT:default_quoting_options
	mov	rsi, rdx
	mov	rdx, rax
	jmp	sub_4042b0
	.section	.text
	.align	32
	#Procedure 0x402b98
	.globl sub_402b98
	.type sub_402b98, @function
sub_402b98:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x402ba0
	.globl sub_402ba0
	.type sub_402ba0, @function
sub_402ba0:

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
	.section	.text
	.align	32
	#Procedure 0x402bdc
	.globl sub_402bdc
	.type sub_402bdc, @function
sub_402bdc:

	sub	rsp, 8
	mov	rdi, r13
	mov	rsi, r12
	mov	rdx, r15
	mov	rcx, r14
	push	qword ptr [rbp + 0x30]
	push	qword ptr [rbp + 0x28]
	lea	rax, [rbp + 8]
	push	rax
	call	sub_4058a0
	.section	.text
	.align	32
	#Procedure 0x402bfc
	.globl sub_402bfc
	.type sub_402bfc, @function
sub_402bfc:

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
	.align	32
	#Procedure 0x402c15
	.globl sub_402c15
	.type sub_402c15, @function
sub_402c15:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x402c20
	.globl sub_402c20
	.type sub_402c20, @function
sub_402c20:

	push	rbp
	push	r15
	push	r14
	push	rbx
	push	rax
	mov	r14, rsi
	mov	esi, OFFSET FLAT:label_128
	call	fopen
	mov	rbx, rax
	xor	r15d, r15d
	test	rbx, rbx
	je	.label_129
	.section	.text
	.align	32
	#Procedure 0x402c40
	.globl initbuffer
	.type initbuffer, @function
initbuffer:

	mov	edi, ebx
	mov	rsi, r14
	call	sub_408580
	mov	r15, rax
	.section	.text
	.align	32
	#Procedure 0x402c51
	.globl sub_402c51
	.type sub_402c51, @function
sub_402c51:

	dec	dword ptr [rcx - 0x77]
	mov	byte ptr [rcx - 0x75], 0x2e
	mov	rdi, rbx
	call	sub_401c00
	test	eax, eax
	je	.label_129
	test	r15, r15
	je	.label_130
	mov	ebp, dword ptr [r14]
	mov	rdi, r15
	call	free
.label_130:
	mov	dword ptr [r14], ebp
	xor	r15d, r15d
.label_129:
	mov	rax, r15
	add	rsp, 8
	pop	rbx
	pop	r14
	pop	r15
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x402c88
	.globl sub_402c88
	.type sub_402c88, @function
sub_402c88:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x402c90
	.globl sub_402c90
	.type sub_402c90, @function
sub_402c90:

	mov	ecx, OFFSET FLAT:default_quoting_options
	jmp	sub_4042b0
	.section	.text
	.align	32
	#Procedure 0x402c9a
	.globl sub_402c9a
	.type sub_402c9a, @function
sub_402c9a:

	nop	word ptr [rax + rax]
.label_707:
	push	rbp
	push	r14
	push	rbx
	sub	rsp, 0xd0
	mov	ebx, edi
	test	al, al
	je	.label_131
	movaps	xmmword ptr [rsp + 0x50], xmm0
	movaps	xmmword ptr [rsp + 0x60], xmm1
	movaps	xmmword ptr [rsp + 0x70], xmm2
	movaps	xmmword ptr [rsp + 0x80], xmm3
	movaps	xmmword ptr [rsp + 0x90], xmm4
	movaps	xmmword ptr [rsp + 0xa0], xmm5
	movaps	xmmword ptr [rsp + 0xb0], xmm6
	movaps	xmmword ptr [rsp + 0xc0], xmm7
.label_131:
	mov	qword ptr [rsp + 0x48], r9
	mov	qword ptr [rsp + 0x40], r8
	mov	qword ptr [rsp + 0x38], rcx
	mov	qword ptr [rsp + 0x30], rdx
	lea	rax, [rsp + 0x20]
	mov	qword ptr [rsp + 0x10], rax
	lea	rax, [rsp + 0xf0]
	.section	.text
	.align	32
	#Procedure 0x402d10
	.globl readlinebuffer_delim
	.type readlinebuffer_delim, @function
readlinebuffer_delim:

	and	al, 8
	mov	dword ptr [rsp + 4], 0x30
	mov	dword ptr [rsp], 0x10
	cmp	esi, 0xb
	ja	.label_137
	mov	eax, 0xa0a
	bt	eax, esi
	jb	.label_141
	mov	eax, 0x514
	bt	eax, esi
	jb	.label_142
	test	esi, esi
	jne	.label_137
	movsxd	rcx, dword ptr [rsp]
	cmp	rcx, 0x28
	ja	.label_146
	mov	rax, rcx
	add	rax, qword ptr [rsp + 0x10]
	lea	ecx, [rcx + 8]
	mov	dword ptr [rsp], ecx
	jmp	.label_135
.label_137:
	lea	eax, [rsi - 0x400]
	cmp	eax, 8
	ja	set_program_name
	mov	ecx, 0x85
	bt	ecx, eax
	jb	.label_142
	mov	ecx, 0x102
	bt	ecx, eax
	jae	.label_145
.label_141:
	xor	eax, eax
	mov	edi, ebx
	call	fcntl
	jmp	.label_134
.label_142:
	movsxd	rcx, dword ptr [rsp]
	cmp	rcx, 0x28
	ja	.label_136
	mov	rax, rcx
	add	rax, qword ptr [rsp + 0x10]
	lea	ecx, [rcx + 8]
	mov	dword ptr [rsp], ecx
	jmp	.label_139
.label_136:
	mov	rax, qword ptr [rsp + 8]
	lea	rcx, [rax + 8]
	mov	qword ptr [rsp + 8], rcx
.label_139:
	mov	edx, dword ptr [rax]
	xor	eax, eax
	mov	edi, ebx
.label_140:
	call	fcntl
.label_134:
	mov	ebp, eax
.label_133:
	mov	eax, ebp
	add	rsp, 0xd0
	pop	rbx
	pop	r14
	pop	rbp
	ret	
.label_145:
	cmp	eax, 6
	jne	set_program_name
	movsxd	rcx, dword ptr [rsp]
	cmp	rcx, 0x28
	ja	.label_138
	.section	.text
	.align	32
	#Procedure 0x402de0
	.globl freebuffer
	.type freebuffer, @function
freebuffer:

	mov	rax, rcx
	add	rax, qword ptr [rsp + 0x10]
	lea	ecx, [rcx + 8]
	mov	dword ptr [rsp], ecx
	jmp	.label_147
	.section	.text
	.align	32
	#Procedure 0x402df0

	.globl set_program_name
	.type set_program_name, @function
set_program_name:
	movsxd	rcx, dword ptr [rsp]
	cmp	rcx, 0x28
	ja	.label_148
	mov	rax, rcx
	add	rax, qword ptr [rsp + 0x10]
	lea	ecx, [rcx + 8]
	mov	dword ptr [rsp], ecx
	jmp	.label_149
.label_146:
	mov	rax, qword ptr [rsp + 8]
	lea	rcx, [rax + 8]
	mov	qword ptr [rsp + 8], rcx
.label_135:
	mov	edx, dword ptr [rax]
	xor	esi, esi
	xor	eax, eax
	mov	edi, ebx
	jmp	.label_140
.label_138:
	mov	rax, qword ptr [rsp + 8]
	lea	rcx, [rax + 8]
	mov	qword ptr [rsp + 8], rcx
.label_147:
	mov	r14d, dword ptr [rax]
	cmp	dword ptr [rip + rpl_fcntl_DUPFD_CLOEXEC.have_dupfd_cloexec],  0
	js	.label_144
	mov	esi, 0x406
	xor	eax, eax
	mov	edi, ebx
	mov	edx, r14d
	call	fcntl
	mov	ebp, eax
	test	ebp, ebp
	jns	.label_132
	call	__errno_location
	cmp	dword ptr [rax], 0x16
	jne	.label_132
	xor	esi, esi
	xor	eax, eax
	mov	edi, ebx
	mov	edx, r14d
	call	fcntl
	mov	ebp, eax
	test	ebp, ebp
	js	.label_133
	mov	dword ptr [rip + rpl_fcntl_DUPFD_CLOEXEC.have_dupfd_cloexec],  0xffffffff
	mov	al, 1
	jmp	.label_143
.label_132:
	mov	dword ptr [rip + rpl_fcntl_DUPFD_CLOEXEC.have_dupfd_cloexec],  1
	jmp	.label_133
.label_148:
	mov	rax, qword ptr [rsp + 8]
	.section	.text
	.align	32
	#Procedure 0x402ea0
	.globl clone_quoting_options
	.type clone_quoting_options, @function
clone_quoting_options:

	or	byte ptr [rax - 0x77], cl
	and	al, 8
.label_149:
	mov	rdx, qword ptr [rax]
	xor	eax, eax
	mov	edi, ebx
	call	fcntl
	jmp	.label_134
.label_144:
	xor	esi, esi
	xor	eax, eax
	mov	edi, ebx
	mov	edx, r14d
	call	fcntl
	mov	ebp, eax
	cmp	dword ptr [rip + rpl_fcntl_DUPFD_CLOEXEC.have_dupfd_cloexec],  -1
	sete	al
.label_143:
	test	al, al
	je	.label_133
	test	ebp, ebp
	.section	.text
	.align	32
	#Procedure 0x402ee2
	.globl sub_402ee2
	.type sub_402ee2, @function
sub_402ee2:

	mov	esi, 1
	xor	eax, eax
	mov	edi, ebp
	call	fcntl
	.section	.text
	.align	32
	#Procedure 0x402ef0
	.globl set_quoting_style
	.type set_quoting_style, @function
set_quoting_style:

	mov	ecx, eax
	test	ecx, ecx
	js	.label_150
	or	ecx, 1
	mov	esi, 2
	xor	eax, eax
	.section	.text
	.align	32
	#Procedure 0x402f00
	.globl set_char_quoting
	.type set_char_quoting, @function
set_char_quoting:

	mov	edi, ebp
	mov	edx, ecx
	call	fcntl
	cmp	eax, -1
	jne	.label_133
.label_150:
	call	__errno_location
	mov	rbx, rax
	mov	r14d, dword ptr [rbx]
	mov	edi, ebp
	call	close
	mov	dword ptr [rbx], r14d
	mov	ebp, 0xffffffff
	jmp	.label_133
	.section	.text
	.align	32
	#Procedure 0x402f31
	.globl sub_402f31
	.type sub_402f31, @function
sub_402f31:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x402f40

	.globl set_quoting_flags
	.type set_quoting_flags, @function
set_quoting_flags:
	mov	ebx, 0xffffffff
	test	eax, eax
	jne	.label_151
	call	__errno_location
	mov	dword ptr [rax], 0
.label_151:
	mov	eax, ebx
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x402f5b

	.globl sub_402f5b
	.type sub_402f5b, @function
sub_402f5b:
	push	rbp
	push	r14
	push	rbx
	.section	.text
	.align	32
	#Procedure 0x402f60
	.globl set_custom_quoting
	.type set_custom_quoting, @function
set_custom_quoting:

	mov	ebx, edi
	call	__fpending
	mov	r14, rax
	mov	ebp, dword ptr [rbx]
	mov	rdi, rbx
	call	sub_401c00
	test	bpl, 0x20
	jne	set_quoting_flags
	test	eax, eax
	sete	cl
	neg	eax
	sbb	ebx, ebx
	test	r14, r14
	jne	.label_151
	test	cl, cl
	jne	.label_151
	.section	.text
	.align	32
	#Procedure 0x402f8d
	.globl sub_402f8d
	.type sub_402f8d, @function
sub_402f8d:

	psubsb	mm7, mm7
	push	qword ptr [rcx]
	leave	
	cmp	dword ptr [rax], 9
	mov	ebx, 0xffffffff
	cmove	ebx, ecx
	jmp	.label_151
	.section	.text
	.align	32
	#Procedure 0x402fa0
	.globl sub_402fa0
	.type sub_402fa0, @function
sub_402fa0:

	push	r15
	push	r14
	push	rbx
	mov	r14, qword ptr [rip + slotvec]
	cmp	dword ptr [rip + nslots],  2
	jl	.label_152
	lea	r15, [r14 + 0x18]
	mov	ebx, 1
	nop	
.label_154:
	mov	rdi, qword ptr [r15]
	call	free
	inc	rbx
	movsxd	rax, dword ptr [rip + nslots]
	add	r15, 0x10
	cmp	rbx, rax
	jl	.label_154
.label_152:
	mov	rdi, qword ptr [r14 + 8]
	mov	eax, OFFSET FLAT:slot0
	cmp	rdi, rax
	je	.label_156
	call	free
	mov	qword ptr [rip + slotvec0],  0x100
	mov	qword ptr [rip + label_155], OFFSET FLAT:slot0
.label_156:
	mov	eax, OFFSET FLAT:slotvec0
	cmp	r14, rax
	je	.label_153
	mov	rdi, r14
	.section	.text
	.align	32
	#Procedure 0x403015
	.globl sub_403015
	.type sub_403015, @function
sub_403015:

	dec	dword ptr [rax - 0x39]
	add	eax, 0xa227
	pop	rax
	rol	byte ptr [rax], cl
.label_153:
	mov	dword ptr [rip + nslots],  1
	pop	rbx
	pop	r14
	pop	r15
	ret	
	.section	.text
	.align	32
	#Procedure 0x403031
	.globl sub_403031
	.type sub_403031, @function
sub_403031:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x403040

	.globl sub_403040
	.type sub_403040, @function
sub_403040:
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
	je	.label_157
	cmp	r15, -2
	jb	.label_157
	xor	edi, edi
	call	sub_406fe0
	test	al, al
	jne	.label_157
	movzx	eax, byte ptr [r14]
	mov	dword ptr [rbx], eax
	mov	r15d, 1
.label_157:
	mov	rax, r15
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	ret	
	.section	.text
	.align	32
	#Procedure 0x403096
	.globl sub_403096
	.type sub_403096, @function
sub_403096:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4030a0

	.globl sub_4030a0
	.type sub_4030a0, @function
sub_4030a0:
	rol	rdi, 0x3d
	xor	edx, edx
	mov	rax, rdi
	div	rsi
	mov	rax, rdx
	ret	
	.section	.text
	.align	32
	#Procedure 0x4030b0
	.globl sub_4030b0
	.type sub_4030b0, @function
sub_4030b0:

	test	rdi, rdi
	mov	eax, OFFSET FLAT:default_quoting_options
	cmovne	rax, rdi
	mov	dword ptr [rax], 0xa
	test	rsi, rsi
	je	.label_158
	test	rdx, rdx
	je	.label_158
	mov	qword ptr [rax + 0x28], rsi
	mov	qword ptr [rax + 0x30], rdx
	ret	
.label_158:
	push	rax
	call	abort
	.section	.text
	.align	32
	#Procedure 0x4030db
	.globl sub_4030db
	.type sub_4030db, @function
sub_4030db:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4030e0

	.globl sub_4030e0
	.type sub_4030e0, @function
sub_4030e0:
	movsxd	r10, dword ptr [r8]
	cmp	r10, 0x28
	ja	.label_169
	mov	r9, r10
	add	r9, qword ptr [r8 + 0x10]
	lea	r10d, [r10 + 8]
	mov	dword ptr [r8], r10d
	jmp	.label_171
.label_169:
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
.label_171:
	sub	rsp, 0x58
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp], rax
	xor	r9d, r9d
	test	rax, rax
	je	.label_160
	cmp	r10d, 0x29
	jae	.label_168
	movsxd	r9, r10d
	add	r9, qword ptr [r8 + 0x10]
	add	r10d, 8
	mov	dword ptr [r8], r10d
	jmp	.label_170
.label_168:
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
.label_170:
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp + 8], rax
	mov	r9d, 1
	test	rax, rax
	je	.label_160
	cmp	r10d, 0x29
	jae	.label_166
	movsxd	r9, r10d
	add	r9, qword ptr [r8 + 0x10]
	add	r10d, 8
	mov	dword ptr [r8], r10d
	jmp	.label_167
.label_166:
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
.label_167:
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp + 0x10], rax
	mov	r9d, 2
	test	rax, rax
	je	.label_160
	cmp	r10d, 0x29
	jae	.label_164
	movsxd	r9, r10d
	add	r9, qword ptr [r8 + 0x10]
	add	r10d, 8
	mov	dword ptr [r8], r10d
	jmp	.label_165
.label_164:
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
.label_165:
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp + 0x18], rax
	mov	r9d, 3
	test	rax, rax
	je	.label_160
	cmp	r10d, 0x29
	jae	.label_162
	movsxd	r9, r10d
	add	r9, qword ptr [r8 + 0x10]
	add	r10d, 8
	mov	dword ptr [r8], r10d
	jmp	.label_163
.label_162:
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
.label_163:
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp + 0x20], rax
	mov	r9d, 4
	test	rax, rax
	je	.label_160
	cmp	r10d, 0x29
	jae	.label_159
	movsxd	r9, r10d
	add	r9, qword ptr [r8 + 0x10]
	add	r10d, 8
	mov	dword ptr [r8], r10d
	jmp	.label_161
.label_159:
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
.label_161:
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp + 0x28], rax
	mov	r9d, 5
	test	rax, rax
	je	.label_160
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp + 0x30], rax
	mov	r9d, 6
	test	rax, rax
	je	.label_160
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp + 0x38], rax
	mov	r9d, 7
	test	rax, rax
	je	.label_160
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp + 0x40], rax
	mov	r9d, 8
	test	rax, rax
	je	.label_160
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp + 0x48], rax
	cmp	rax, 1
	mov	r9d, 9
	sbb	r9, -1
.label_160:
	lea	r8, [rsp]
	call	sub_4027a0
	add	rsp, 0x58
	ret	
	.section	.text
	.align	32
	#Procedure 0x4032c2
	.globl sub_4032c2
	.type sub_4032c2, @function
sub_4032c2:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4032d0
	.globl sub_4032d0
	.type sub_4032d0, @function
sub_4032d0:

	mov	ecx, OFFSET FLAT:quote_quoting_options
	jmp	sub_4042b0
	.section	.text
	.align	32
	#Procedure 0x4032da
	.globl sub_4032da
	.type sub_4032da, @function
sub_4032da:

	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4032e0
	.globl sub_4032e0
	.type sub_4032e0, @function
sub_4032e0:

	xorps	xmm0, xmm0
	movups	xmmword ptr [rdi], xmm0
	mov	qword ptr [rdi + 0x10], 0
	ret	
	.section	.text
	.align	32
	#Procedure 0x4032ef
	.globl sub_4032ef
	.type sub_4032ef, @function
sub_4032ef:

	nop	
.label_172:
	call	abort
	.section	.text
	.align	32
	#Procedure 0x4032f5
	.globl sub_4032f5
	.type sub_4032f5, @function
sub_4032f5:

	nop
	sub	rsp, 0x38
	mov	rax, qword ptr [rip + label_23]
	mov	qword ptr [rsp + 0x30], rax
	movups	xmm0, xmmword ptr [rip + label_24]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0, xmmword ptr [rip + label_25]
	movaps	xmmword ptr [rsp + 0x10], xmm0
	movups	xmm0, xmmword ptr [rip + default_quoting_options]
	movaps	xmmword ptr [rsp], xmm0
	mov	dword ptr [rsp], 0xa
	test	rsi, rsi
	je	.label_172
	test	rdx, rdx
	je	.label_172
	mov	qword ptr [rsp + 0x28], rsi
	mov	qword ptr [rsp + 0x30], rdx
	lea	rax, [rsp]
	mov	rdx, -1
	mov	rsi, rcx
	mov	rcx, rax
	call	sub_4042b0
	add	rsp, 0x38
	ret	
	.section	.text
	.align	32
	#Procedure 0x403360

	.globl sub_403360
	.type sub_403360, @function
sub_403360:
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
	jae	.label_185
	mov	qword ptr [rsp], rcx
	call	__errno_location
	mov	r15, rax
	mov	dword ptr [r15], 0
	call	__ctype_b_loc
	mov	rcx, qword ptr [rax]
	mov	rdx, rbx
	nop	word ptr cs:[rax + rax]
.label_179:
	movzx	eax, byte ptr [rdx]
	inc	rdx
	test	byte ptr [rcx + rax*2 + 1], 0x20
	jne	.label_179
	test	rbp, rbp
	lea	rsi, [rsp + 0x10]
	cmovne	rsi, rbp
	mov	r13d, 4
	cmp	al, 0x2d
	je	.label_173
	mov	rdi, rbx
	mov	edx, r12d
	mov	qword ptr [rsp + 8], rsi
	call	strtoul
	mov	rbp, rax
	mov	rax, qword ptr [rsp + 8]
	mov	r12, qword ptr [rax]
	cmp	r12, rbx
	je	.label_190
	mov	eax, dword ptr [r15]
	xor	ebx, ebx
	test	eax, eax
	je	.label_193
	cmp	eax, 0x22
	jne	.label_173
	mov	ebx, 1
.label_193:
	test	r14, r14
	jne	.label_175
	jmp	.label_176
.label_190:
	test	r14, r14
	je	.label_173
	movsx	esi, byte ptr [rbx]
	test	esi, esi
	je	.label_173
	mov	rdi, r14
	call	strchr
	xor	ebx, ebx
	mov	ebp, 1
	test	rax, rax
	je	.label_173
.label_175:
	movsx	r13d, byte ptr [r12]
	test	r13d, r13d
	je	.label_176
	mov	rdi, r14
	mov	esi, r13d
	call	strchr
	test	rax, rax
	je	.label_184
	mov	r15d, 1
	mov	esi, 0x400
	lea	eax, [r13 - 0x45]
	cmp	eax, 0x2f
	ja	.label_177
	movabs	rdx, 0x814400308945
	bt	rdx, rax
	jae	.label_177
	mov	esi, 0x30
	mov	rdi, r14
	call	strchr
	mov	r15d, 1
	mov	esi, 0x400
	test	rax, rax
	je	.label_177
	movsx	eax, byte ptr [r12 + 1]
	mov	r15d, 1
	mov	esi, 0x400
	cmp	eax, 0x42
	je	.label_181
	cmp	eax, 0x44
	je	.label_181
	cmp	eax, 0x69
	jne	.label_177
	xor	eax, eax
	cmp	byte ptr [r12 + 2], 0x42
	sete	al
	lea	r15, [rax + rax + 1]
	mov	esi, 0x400
	jmp	.label_177
.label_181:
	mov	r15d, 2
	mov	esi, 0x3e8
.label_177:
	add	r13d, -0x42
	cmp	r13d, 0x35
	ja	.label_184
	xor	eax, eax
	jmp	qword ptr [(r13 * 8) + label_192]
.label_840:
	mov	r8, -1
	mov	rax, -1
	xor	edx, edx
	div	rsi
	cmp	rax, rbp
	sbb	r9b, r9b
	mov	rdi, rbp
	imul	rdi, rsi
	cmp	rax, rbp
	cmovb	rdi, r8
	cmp	rax, rdi
	sbb	dl, dl
	mov	rbp, rdi
	imul	rbp, rsi
	cmp	rax, rdi
	cmovb	rbp, r8
	cmp	rax, rbp
	sbb	dil, dil
	imul	rsi, rbp
	cmp	rax, rbp
	cmovb	rsi, r8
	or	dl, r9b
	or	dl, dil
	jmp	.label_174
.label_184:
	mov	rax, qword ptr [rsp]
	mov	qword ptr [rax], rbp
	or	ebx, 2
	jmp	.label_182
.label_841:
	mov	rdi, -1
	mov	rax, -1
	xor	edx, edx
	div	rsi
	imul	rsi, rbp
	cmp	rax, rbp
	cmovb	rsi, rdi
	sbb	eax, eax
	jmp	.label_186
.label_842:
	mov	r8, -1
	mov	rax, -1
	xor	edx, edx
	div	rsi
	cmp	rax, rbp
	sbb	r9b, r9b
	mov	rdi, rbp
	imul	rdi, rsi
	cmp	rax, rbp
	cmovb	rdi, r8
	cmp	rax, rdi
	sbb	dl, dl
	imul	rsi, rdi
	cmp	rax, rdi
	cmovb	rsi, r8
	or	dl, r9b
	jmp	.label_174
.label_844:
	mov	r9, -1
	mov	rax, -1
	xor	edx, edx
	div	rsi
	cmp	rax, rbp
	sbb	r8b, r8b
	mov	rdi, rbp
	imul	rdi, rsi
	cmp	rax, rbp
	cmovb	rdi, r9
	cmp	rax, rdi
	sbb	dl, dl
	mov	rbp, rdi
	imul	rbp, rsi
	cmp	rax, rdi
	cmovb	rbp, r9
	cmp	rax, rbp
	sbb	r10b, r10b
	mov	rdi, rbp
	imul	rdi, rsi
	cmp	rax, rbp
	cmovb	rdi, r9
	cmp	rax, rdi
	sbb	cl, cl
	imul	rsi, rdi
	cmp	rax, rdi
	cmovb	rsi, r9
	or	dl, r8b
	or	dl, r10b
	or	dl, cl
	jmp	.label_174
.label_838:
	xor	eax, eax
	mov	rdx, rbp
	shr	rdx, 0x36
	setne	al
	shl	rbp, 0xa
	jmp	.label_180
.label_839:
	mov	r9, -1
	mov	rax, -1
	xor	edx, edx
	div	rsi
	cmp	rax, rbp
	sbb	r8b, r8b
	mov	rdi, rbp
	imul	rdi, rsi
	cmp	rax, rbp
	cmovb	rdi, r9
	cmp	rax, rdi
	sbb	dl, dl
	mov	rbp, rdi
	imul	rbp, rsi
	cmp	rax, rdi
	cmovb	rbp, r9
	cmp	rax, rbp
	sbb	r10b, r10b
	mov	rdi, rbp
	imul	rdi, rsi
	cmp	rax, rbp
	cmovb	rdi, r9
	cmp	rax, rdi
	sbb	r11b, r11b
	mov	rbp, rdi
	imul	rbp, rsi
	cmp	rax, rdi
	cmovb	rbp, r9
	cmp	rax, rbp
	sbb	r14b, r14b
	mov	rdi, rbp
	imul	rdi, rsi
	cmp	rax, rbp
	cmovb	rdi, r9
	cmp	rax, rdi
	sbb	bpl, bpl
	imul	rsi, rdi
	cmp	rax, rdi
	cmovb	rsi, r9
	or	dl, r8b
	or	dl, r10b
	or	dl, r11b
	or	dl, r14b
	or	dl, bpl
.label_174:
	and	dl, 1
	movzx	eax, dl
	jmp	.label_183
.label_843:
	mov	rdi, -1
	mov	rax, -1
	xor	edx, edx
	div	rsi
	cmp	rax, rbp
	sbb	r8b, r8b
	mov	rdx, rbp
	imul	rdx, rsi
	cmp	rax, rbp
	cmovb	rdx, rdi
	cmp	rax, rdx
	sbb	cl, cl
	mov	rbp, rdx
	imul	rbp, rsi
	cmp	rax, rdx
	cmovb	rbp, rdi
	cmp	rax, rbp
	sbb	r9b, r9b
	mov	rdx, rbp
	imul	rdx, rsi
	cmp	rax, rbp
	cmovb	rdx, rdi
	cmp	rax, rdx
	sbb	r10b, r10b
	mov	rbp, rdx
	imul	rbp, rsi
	cmp	rax, rdx
	cmovb	rbp, rdi
	cmp	rax, rbp
	sbb	dl, dl
	imul	rsi, rbp
	cmp	rax, rbp
	cmovb	rsi, rdi
	or	cl, r8b
	or	cl, r9b
	or	cl, r10b
	or	cl, dl
	and	cl, 1
	movzx	eax, cl
	jmp	.label_183
.label_845:
	mov	rdi, -1
	mov	rax, -1
	xor	edx, edx
	div	rsi
	cmp	rax, rbp
	sbb	r8b, r8b
	mov	rcx, rbp
	imul	rcx, rsi
	cmp	rax, rbp
	cmovb	rcx, rdi
	cmp	rax, rcx
	sbb	dl, dl
	mov	rbp, rcx
	imul	rbp, rsi
	cmp	rax, rcx
	cmovb	rbp, rdi
	cmp	rax, rbp
	sbb	r9b, r9b
	mov	rcx, rbp
	imul	rcx, rsi
	cmp	rax, rbp
	cmovb	rcx, rdi
	cmp	rax, rcx
	sbb	r10b, r10b
	mov	rbp, rcx
	imul	rbp, rsi
	cmp	rax, rcx
	cmovb	rbp, rdi
	cmp	rax, rbp
	sbb	r11b, r11b
	mov	rcx, rbp
	imul	rcx, rsi
	cmp	rax, rbp
	cmovb	rcx, rdi
	cmp	rax, rcx
	sbb	r14b, r14b
	mov	rbp, rcx
	imul	rbp, rsi
	cmp	rax, rcx
	cmovb	rbp, rdi
	cmp	rax, rbp
	sbb	r13b, r13b
	mov	rcx, rbp
	imul	rcx, rsi
	cmp	rax, rbp
	cmovb	rcx, rdi
	cmp	rax, rcx
	sbb	bpl, bpl
	imul	rsi, rcx
	cmp	rax, rcx
	cmovb	rsi, rdi
	or	dl, r8b
	or	dl, r9b
	or	dl, r10b
	or	dl, r11b
	and	dl, 1
	or	dl, r14b
	or	dl, r13b
	or	dl, bpl
	jmp	.label_191
.label_846:
	mov	rdi, -1
	mov	rax, -1
	xor	edx, edx
	div	rsi
	cmp	rax, rbp
	sbb	r8b, r8b
	mov	rcx, rbp
	imul	rcx, rsi
	cmp	rax, rbp
	cmovb	rcx, rdi
	cmp	rax, rcx
	sbb	dl, dl
	mov	rbp, rcx
	imul	rbp, rsi
	cmp	rax, rcx
	cmovb	rbp, rdi
	cmp	rax, rbp
	sbb	r9b, r9b
	mov	rcx, rbp
	imul	rcx, rsi
	cmp	rax, rbp
	cmovb	rcx, rdi
	cmp	rax, rcx
	sbb	r10b, r10b
	mov	rbp, rcx
	imul	rbp, rsi
	cmp	rax, rcx
	cmovb	rbp, rdi
	cmp	rax, rbp
	sbb	r11b, r11b
	mov	rcx, rbp
	imul	rcx, rsi
	cmp	rax, rbp
	cmovb	rcx, rdi
	cmp	rax, rcx
	sbb	r14b, r14b
	mov	rbp, rcx
	imul	rbp, rsi
	cmp	rax, rcx
	cmovb	rbp, rdi
	cmp	rax, rbp
	sbb	cl, cl
	imul	rsi, rbp
	cmp	rax, rbp
	cmovb	rsi, rdi
	or	dl, r8b
	or	dl, r9b
	or	dl, r10b
	and	dl, 1
	or	dl, r11b
	or	dl, r14b
	or	dl, cl
.label_191:
	movzx	eax, dl
.label_186:
	and	eax, 1
.label_183:
	mov	rbp, rsi
.label_178:
	or	eax, ebx
	lea	rcx, [r12 + r15]
	mov	rdx, qword ptr [rsp + 8]
	mov	qword ptr [rdx], rcx
	lea	ebx, [rax + 2]
	cmp	byte ptr [r12 + r15], 0
	cmove	ebx, eax
.label_176:
	mov	rax, qword ptr [rsp]
	mov	qword ptr [rax], rbp
.label_182:
	mov	r13d, ebx
.label_173:
	mov	eax, r13d
	add	rsp, 0x18
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_847:
	xor	eax, eax
	mov	rdx, rbp
	shr	rdx, 0x37
	setne	al
	shl	rbp, 9
.label_180:
	cmp	rdx, 1
	sbb	rdx, rdx
	not	rdx
	or	rbp, rdx
	jmp	.label_178
.label_848:
	lea	rax, [rbp + rbp]
	test	rbp, rbp
	mov	rcx, -1
	cmovns	rcx, rax
	shr	rbp, 0x3f
	mov	eax, ebp
	mov	rbp, rcx
	jmp	.label_178
.label_185:
	mov	edi, OFFSET FLAT:label_187
	mov	esi, OFFSET FLAT:label_188
	mov	edx, 0x54
	mov	ecx, OFFSET FLAT:label_189
	call	__assert_fail
	.section	.text
	.align	32
	#Procedure 0x40397d
	.globl sub_40397d
	.type sub_40397d, @function
sub_40397d:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x403980

	.globl sub_403980
	.type sub_403980, @function
sub_403980:
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
.label_194:
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
	jl	.label_194
	xor	ebx, ebx
	nop	dword ptr [rax + rax]
.label_195:
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
	jl	.label_195
	xorps	xmm0, xmm0
	movups	xmmword ptr [rdi + 0x800], xmm0
	mov	qword ptr [rdi + 0x810], 0
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	ret	
	.section	.text
	.align	32
	#Procedure 0x403bd8
	.globl sub_403bd8
	.type sub_403bd8, @function
sub_403bd8:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x403be0
	.globl sub_403be0
	.type sub_403be0, @function
sub_403be0:

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
	.align	32
	#Procedure 0x403c16
	.globl sub_403c16
	.type sub_403c16, @function
sub_403c16:

	nop	word ptr cs:[rax + rax]
.label_196:
	xor	eax, eax
	add	rsp, 8
	pop	rbx
	pop	r14
	ret	
	.section	.text
	.align	32
	#Procedure 0x403c2a
	.globl sub_403c2a
	.type sub_403c2a, @function
sub_403c2a:

	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x403c30

	.globl sub_403c30
	.type sub_403c30, @function
sub_403c30:
	push	r14
	push	rbx
	push	rax
	mov	rbx, rdi
	mov	r14, qword ptr [rbx]
	mov	esi, 0x1038
	call	sub_406b70
	mov	rdi, rbx
	call	free
	test	r14, r14
	je	.label_196
	mov	rdi, r14
	add	rsp, 8
	pop	rbx
	pop	r14
	jmp	sub_401c00
	.section	.text
	.align	32
	#Procedure 0x403c60
	.globl sub_403c60
	.type sub_403c60, @function
sub_403c60:

	mov	rcx, qword ptr [rdi]
	mov	rdi, qword ptr [rdi + 8]
	xor	eax, eax
	cmp	rcx, rdi
	jae	.label_197
	mov	rax, rcx
	not	rax
	add	rdi, rax
	shr	rdi, 4
	lea	rsi, [rdi + 1]
	mov	r8d, esi
	and	r8d, 1
	xor	eax, eax
	test	rdi, rdi
	je	.label_203
	sub	rsi, r8
	xor	eax, eax
	nop	word ptr cs:[rax + rax]
.label_200:
	cmp	qword ptr [rcx], 0
	je	.label_198
	xor	edi, edi
	mov	rdx, rcx
	nop	dword ptr [rax + rax]
.label_202:
	mov	rdx, qword ptr [rdx + 8]
	inc	rdi
	test	rdx, rdx
	jne	.label_202
	cmp	rdi, rax
	cmova	rax, rdi
.label_198:
	cmp	qword ptr [rcx + 0x10], 0
	je	.label_199
	lea	rdx, [rcx + 0x10]
	xor	edi, edi
.label_204:
	mov	rdx, qword ptr [rdx + 8]
	inc	rdi
	test	rdx, rdx
	jne	.label_204
	cmp	rdi, rax
	cmova	rax, rdi
.label_199:
	add	rcx, 0x20
	add	rsi, -2
	jne	.label_200
.label_203:
	test	r8, r8
	je	.label_197
	cmp	qword ptr [rcx], 0
	je	.label_197
	xor	edx, edx
	nop	word ptr [rax + rax]
.label_201:
	mov	rcx, qword ptr [rcx + 8]
	inc	rdx
	test	rcx, rcx
	jne	.label_201
	cmp	rdx, rax
	cmova	rax, rdx
.label_197:
	ret	
	.section	.text
	.align	32
	#Procedure 0x403d14
	.globl sub_403d14
	.type sub_403d14, @function
sub_403d14:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x403d20

	.globl sub_403d20
	.type sub_403d20, @function
sub_403d20:
	cmp	rdi, rsi
	sete	al
	ret	
	.section	.text
	.align	32
	#Procedure 0x403d27
	.globl sub_403d27
	.type sub_403d27, @function
sub_403d27:

	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x403d30

	.globl sub_403d30
	.type sub_403d30, @function
sub_403d30:
	sub	rsp, 0xd8
	test	al, al
	je	.label_205
	movaps	xmmword ptr [rsp + 0x50], xmm0
	movaps	xmmword ptr [rsp + 0x60], xmm1
	movaps	xmmword ptr [rsp + 0x70], xmm2
	movaps	xmmword ptr [rsp + 0x80], xmm3
	movaps	xmmword ptr [rsp + 0x90], xmm4
	movaps	xmmword ptr [rsp + 0xa0], xmm5
	movaps	xmmword ptr [rsp + 0xb0], xmm6
	movaps	xmmword ptr [rsp + 0xc0], xmm7
.label_205:
	mov	qword ptr [rsp + 0x48], r9
	mov	qword ptr [rsp + 0x40], r8
	lea	rax, [rsp + 0x20]
	mov	qword ptr [rsp + 0x10], rax
	lea	rax, [rsp + 0xe0]
	mov	qword ptr [rsp + 8], rax
	mov	dword ptr [rsp + 4], 0x30
	mov	dword ptr [rsp], 0x20
	lea	r8, [rsp]
	call	sub_4030e0
	add	rsp, 0xd8
	ret	
	.section	.text
	.align	32
	#Procedure 0x403db3
	.globl sub_403db3
	.type sub_403db3, @function
sub_403db3:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x403dc0

	.globl sub_403dc0
	.type sub_403dc0, @function
sub_403dc0:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x38
	mov	r12, rdx
	mov	r13, rsi
	mov	qword ptr [rsp], rdi
	xor	ebp, ebp
	test	r13, r13
	je	.label_206
	cmp	r13, 1
	jne	.label_213
	mov	edi, 8
	call	sub_402b6b
	mov	rbp, rax
	dec	r12
	mov	rdi, qword ptr [rsp]
	mov	rsi, r12
	call	sub_408b30
	mov	qword ptr [rbp], rax
	jmp	.label_206
.label_213:
	movabs	r14, 0xfffffffffffffff
	cmp	r12, 0x20000
	jb	.label_209
	xor	edx, edx
	mov	rax, r12
	div	r13
	cmp	rax, 0x20
	jb	.label_214
	lea	rdi, [r13 + r13]
	xor	esi, esi
	.section	.text
	.align	32
	#Procedure 0x403e40
	.globl quotearg_alloc
	.type quotearg_alloc, @function
quotearg_alloc:

	pop	rax
	add	byte ptr [rcx + sub_405840],  dil
	mov	r8d, OFFSET FLAT:free
	call	sub_406940
	mov	rbx, rax
	test	rbx, rbx
	je	.label_216
	cmp	r13, r14
	ja	.label_219
	mov	qword ptr [rsp + 0x10], r13
	lea	rdi, [r13*8]
	call	sub_402b6b
	mov	rbp, rax
	dec	r12
	xor	r13d, r13d
	mov	qword ptr [rsp + 8], rbp
	nop	dword ptr [rax + rax]
.label_217:
	mov	rdi, qword ptr [rsp]
	mov	rsi, r12
	call	sub_408b30
	mov	r14, rax
	add	r14, r13
	mov	qword ptr [rsp + 0x28], r13
	mov	qword ptr [rsp + 0x30], 0
	mov	rdi, rbx
	lea	rsi, [rsp + 0x28]
	call	sub_401e20
	mov	rbp, rax
	mov	qword ptr [rsp + 0x18], r14
	mov	qword ptr [rsp + 0x20], 0
	mov	rdi, rbx
	lea	rsi, [rsp + 0x18]
	call	sub_401e20
	mov	r15, rax
	test	rbp, rbp
	jne	.label_218
	mov	edi, 0x10
	call	sub_402b6b
	mov	rbp, rax
	mov	qword ptr [rbp + 8], r13
	mov	qword ptr [rbp], r13
.label_218:
	test	r15, r15
	je	quotearg_alloc_mem
	mov	r14, qword ptr [r15 + 8]
	jmp	.label_220
	.section	.text
	.align	32
	#Procedure 0x403f03
	.globl sub_403f03
	.type sub_403f03, @function
sub_403f03:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x403f10

	.globl quotearg_alloc_mem
	.type quotearg_alloc_mem, @function
quotearg_alloc_mem:
	mov	edi, 0x10
	call	sub_402b6b
	mov	r15, rax
	mov	qword ptr [r15 + 8], r14
	mov	qword ptr [r15], r14
.label_220:
	mov	rax, qword ptr [rbp + 8]
	mov	qword ptr [rbp + 8], r14
	mov	qword ptr [r15 + 8], rax
	mov	rdi, rbx
	mov	rsi, rbp
	call	sub_401de0
	test	rax, rax
	je	.label_216
	mov	rdi, rbx
	mov	rsi, r15
	call	sub_401de0
	test	rax, rax
	je	.label_216
	mov	rax, qword ptr [rbp + 8]
	mov	rbp, qword ptr [rsp + 8]
	mov	qword ptr [rbp + r13*8], rax
	inc	r13
	dec	r12
	cmp	r13, qword ptr [rsp + 0x10]
	jb	.label_217
	mov	rdi, rbx
	call	sub_4084b0
	jmp	.label_206
.label_209:
	lea	rdi, [r12*8]
	call	sub_402b6b
	mov	r15, rax
	mov	rbp, -1
	test	r12, r12
	jne	.label_210
	jmp	.label_207
.label_214:
	cmp	r12, r14
	ja	.label_212
	lea	rdi, [r12*8]
	call	sub_402b6b
	mov	r15, rax
.label_210:
	xor	ecx, ecx
	cmp	r12, 4
	jb	.label_208
	xor	ecx, ecx
	mov	rax, r12
	and	rax, 0xfffffffffffffffc
	je	.label_208
	lea	rdi, [rax - 4]
	mov	rsi, rdi
	shr	rsi, 2
	lea	ecx, [rsi + 1]
	and	ecx, 3
	mov	edx, 1
	cmp	rdi, 0xc
	jae	.label_211
	movq	xmm0, rdx
	pslldq	xmm0, 8
	jmp	.label_215
.label_211:
	lea	rdx, [rcx - 1]
	.section	.text
	.align	32
	#Procedure 0x40400b
	.globl sub_40400b
	.type sub_40400b, @function
sub_40400b:

	mov	esi, 1
	movq	xmm0, rsi
	pslldq	xmm0, 8
	movdqa	xmm8, xmmword ptr [rip + label_221]
	movdqa	xmm9, xmmword ptr [rip + label_222]
	movdqa	xmm10, xmmword ptr [rip + label_223]
	movdqa	xmm11, xmmword ptr [rip + label_224]
	movdqa	xmm5, xmmword ptr [rip + label_225]
	movdqa	xmm6, xmmword ptr [rip + label_226]
	movdqa	xmm7, xmmword ptr [rip + label_227]
	movdqa	xmm1, xmmword ptr [rip + label_228]
	nop	
.label_229:
	movdqa	xmm2, xmm0
	paddq	xmm2, xmm8
	movdqa	xmm3, xmm0
	paddq	xmm3, xmm9
	movq	rsi, xmm0
	movdqu	xmmword ptr [r15 + rsi*8], xmm0
	movdqu	xmmword ptr [r15 + rsi*8 + 0x10], xmm2
	movdqa	xmm2, xmm0
	paddq	xmm2, xmm10
	movdqa	xmm4, xmm0
	paddq	xmm4, xmm11
	movq	rsi, xmm3
	.section	.text
	.align	32
	#Procedure 0x40409e
	.globl sub_40409e
	.type sub_40409e, @function
sub_40409e:

	jg	.label_230
	.section	.text
	.align	32
	#Procedure 0x4040a0
	.globl quotearg_n
	.type quotearg_n, @function
quotearg_n:

	div	ebx
	movq	qword ptr [r15 + rsi*8 + 0x10], mm2
	movdqa	xmm2, xmm0
	paddq	xmm2, xmm5
	movdqa	xmm3, xmm0
	paddq	xmm3, xmm6
.label_230:
	out	0xf3, al
	movq	qword ptr [r15 + rsi*8], mm4
	movdqu	xmmword ptr [r15 + rsi*8 + 0x10], xmm2
	movdqa	xmm2, xmm0
	paddq	xmm2, xmm7
	paddq	xmm0, xmm1
	movq	rsi, xmm3
	movdqu	xmmword ptr [r15 + rsi*8], xmm3
	movdqu	xmmword ptr [r15 + rsi*8 + 0x10], xmm2
	add	rdx, 4
	jne	.label_229
.label_215:
	test	rcx, rcx
	je	.label_235
	neg	rcx
	movdqa	xmm1, xmmword ptr [rip + label_221]
	movdqa	xmm2, xmmword ptr [rip + label_222]
	nop	word ptr [rax + rax]
.label_234:
	movdqa	xmm3, xmm0
	movq	rdx, xmm0
	movdqu	xmmword ptr [r15 + rdx*8], xmm0
	paddq	xmm0, xmm1
	paddq	xmm3, xmm2
	movdqu	xmmword ptr [r15 + rdx*8 + 0x10], xmm0
	inc	rcx
	movdqa	xmm0, xmm3
	jne	.label_234
.label_235:
	cmp	rax, r12
	mov	rcx, rax
	je	.label_236
	nop	
.label_208:
	mov	qword ptr [r15 + rcx*8], rcx
	inc	rcx
	cmp	r12, rcx
	jne	.label_208
.label_236:
	test	r13, r13
	je	.label_233
	dec	r12
	mov	rbp, r12
.label_207:
	xor	ebx, ebx
	mov	r12, qword ptr [rsp]
	nop	dword ptr [rax]
.label_232:
	mov	rdi, r12
	mov	rsi, rbp
	call	sub_408b30
	add	rax, rbx
	mov	rcx, qword ptr [r15 + rbx*8]
	mov	rdx, qword ptr [r15 + rax*8]
	mov	qword ptr [r15 + rbx*8], rdx
	mov	qword ptr [r15 + rax*8], rcx
	inc	rbx
	dec	rbp
	cmp	r13, rbx
	jne	.label_232
	cmp	r13, r14
	ja	.label_231
.label_233:
	shl	r13, 3
	mov	rdi, r15
	mov	rsi, r13
	call	sub_4079f0
	mov	rbp, rax
.label_206:
	mov	rax, rbp
	add	rsp, 0x38
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_216:
	call	sub_405290
.label_231:
	call	sub_405290
.label_219:
	call	sub_405290
.label_212:
	call	sub_405290
	.section	.text
	.align	32
	#Procedure 0x4041c6
	.globl sub_4041c6
	.type sub_4041c6, @function
sub_4041c6:

	nop	word ptr cs:[rax + rax]
.label_241:
	cmp	byte ptr [rbx], 0x60
	mov	ecx, OFFSET FLAT:label_237
	mov	eax, OFFSET FLAT:label_238
	jmp	.label_239
	.section	.text
	.align	32
	#Procedure 0x4041df
	.globl sub_4041df
	.type sub_4041df, @function
sub_4041df:

	nop	word ptr cs:[rax + rax]
.label_242:
	movsx	ecx, byte ptr [rax + 1]
	and	ecx, 0xffffffdf
	cmp	ecx, 0x42
	jne	.label_240
	cmp	byte ptr [rax + 2], 0x31
	jne	.label_240
	cmp	byte ptr [rax + 3], 0x38
	jne	.label_240
	cmp	byte ptr [rax + 4], 0x30
	jne	.label_240
	cmp	byte ptr [rax + 5], 0x33
	jne	.label_240
	cmp	byte ptr [rax + 6], 0x30
	jne	.label_240
	cmp	byte ptr [rax + 7], 0
	je	.label_241
.label_240:
	cmp	ebp, 9
	mov	ecx, OFFSET FLAT:label_244
	mov	eax, OFFSET FLAT:label_245
.label_239:
	cmove	rax, rcx
.label_243:
	add	rsp, 8
	pop	rbx
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x404232

	.globl sub_404232
	.type sub_404232, @function
sub_404232:
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
	jne	.label_243
	call	sub_4052c0
	movsx	ecx, byte ptr [rax]
	and	ecx, 0xffffffdf
	cmp	ecx, 0x47
	je	.label_242
	cmp	ecx, 0x55
	jne	.label_240
	movsx	ecx, byte ptr [rax + 1]
	and	ecx, 0xffffffdf
	.section	.text
	.align	32
	#Procedure 0x40426f
	.globl sub_40426f
	.type sub_40426f, @function
sub_40426f:

	stc	
	push	rsp
	jne	.label_240
	movsx	ecx, byte ptr [rax + 2]
	and	ecx, 0xffffffdf
	cmp	ecx, 0x46
	jne	.label_240
	.section	.text
	.align	32
	#Procedure 0x404280
	.globl quotearg
	.type quotearg, @function
quotearg:

	js	.label_246

.label_246:
	cmp	byte ptr [rax + 4], 0x38
	jne	.label_240
	cmp	byte ptr [rax + 5], 0
	jne	.label_240
	cmp	byte ptr [rbx], 0x60
	mov	ecx, OFFSET FLAT:label_247
	mov	eax, OFFSET FLAT:label_248
	jmp	.label_239
	.section	.text
	.align	32
	#Procedure 0x4042a0
	.globl quotearg_mem
	.type quotearg_mem, @function
quotearg_mem:

	mov	rdx, -1
	mov	ecx, OFFSET FLAT:default_quoting_options
	jmp	sub_4042b0
	.section	.text
	.align	32
	#Procedure 0x4042ae
	.globl sub_4042ae
	.type sub_4042ae, @function
sub_4042ae:

	nop
push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x28
	.section	.text
	.align	32
	#Procedure 0x4042c1
	.globl sub_4042c1
	.type sub_4042c1, @function
sub_4042c1:

	mov	r15, rdx
	mov	qword ptr [rsp + 0x20], rsi
	mov	r12d, edi
	call	__errno_location
	mov	r13, rax
	test	r12d, r12d
	js	.label_250
	mov	eax, dword ptr [r13]
	mov	rbp, qword ptr [rip + slotvec]
	cmp	dword ptr [rip + nslots],  r12d
	mov	qword ptr [rsp + 0x18], r13
	mov	dword ptr [rsp], eax
	mov	qword ptr [rsp + 0x10], rbx
	mov	qword ptr [rsp + 8], r15
	jg	.label_251
	cmp	r12d, 0x7fffffff
	je	.label_249
	mov	ebx, OFFSET FLAT:slotvec0
	xor	edi, edi
	cmp	rbp, rbx
	cmovne	rdi, rbp
	lea	r15d, [r12 + 1]
	movsxd	rsi, r12d
	shl	rsi, 4
	.section	.text
	.align	32
	#Procedure 0x404331
	.globl sub_404331
	.type sub_404331, @function
sub_404331:

	adc	al, ch
	mov	ecx, 0x49000036
	mov	esi, eax
	cmp	rbp, rbx
	mov	qword ptr [rip + slotvec],  r14
	jne	.label_252
	movups	xmm0, xmmword ptr [rip + slotvec0]
	movups	xmmword ptr [r14], xmm0
.label_252:
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
.label_251:
	movsxd	r13, r12d
	shl	r13, 4
	mov	r12, qword ptr [rbp + r13]
	mov	r14, qword ptr [rbp + r13 + 8]
	mov	r8d, dword ptr [rbx]
	.section	.text
	.align	32
	#Procedure 0x4043a0
	.globl quotearg_style
	.type quotearg_style, @function
quotearg_style:

	add	al, 0x41
	or	ecx, 1
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
	call	sub_4058a0
	.section	.text
	.align	32
	#Procedure 0x4043cf
	.globl sub_4043cf
	.type sub_4043cf, @function
sub_4043cf:

	add	rsp, 0x20
	mov	r15, rax
	cmp	r12, r15
	jbe	.label_255
	mov	rax, qword ptr [rsp + 0x18]
	mov	ebp, dword ptr [rsp]
	jmp	.label_254
.label_255:
	lea	rax, [rbp + r13]
	lea	r12, [rbp + r13 + 8]
	inc	r15
	mov	qword ptr [rax], r15
	mov	eax, OFFSET FLAT:slot0
	cmp	r14, rax
	mov	ebp, dword ptr [rsp]
	je	.label_253
	mov	rdi, r14
	call	free
.label_253:
	mov	rdi, r15
	.section	.text
	.align	32
	#Procedure 0x40440e
	.globl sub_40440e
	.type sub_40440e, @function
sub_40440e:

	pop	rcx
	.section	.text
	.align	32
	#Procedure 0x404415
	.globl sub_404415
	.type sub_404415, @function
sub_404415:

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
	call	sub_4058a0
	.section	.text
	.align	32
	#Procedure 0x404446
	.globl sub_404446
	.type sub_404446, @function
sub_404446:

	add	rsp, 0x20
	mov	rax, qword ptr [rsp + 0x18]
.label_254:
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
.label_250:
	call	abort
.label_249:
	call	sub_405290
	.section	.text
	.align	32
	#Procedure 0x40446d
	.globl sub_40446d
	.type sub_40446d, @function
sub_40446d:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x404470
	.globl sub_404470
	.type sub_404470, @function
sub_404470:

	mov	eax, dword ptr [rip + label_256]
	mov	dword ptr [rdi + 0x10], eax
	movups	xmm0, xmmword ptr [rip + default_tuning]
	movups	xmmword ptr [rdi], xmm0
	ret	
	.section	.text
	.align	32
	#Procedure 0x404484
	.globl sub_404484
	.type sub_404484, @function
sub_404484:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x404490

	.globl sub_404490
	.type sub_404490, @function
sub_404490:
	sub	rsp, 0x78
	mov	rax, rdx
	xorps	xmm0, xmm0
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movaps	xmmword ptr [rsp + 0x10], xmm0
	movaps	xmmword ptr [rsp], xmm0
	mov	dword ptr [rsp + 0x30], 0
	cmp	esi, 0xa
	je	.label_257
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
	.section	.text
	.align	32
	#Procedure 0x4044f0
	.globl quotearg_char
	.type quotearg_char, @function
quotearg_char:

	sub	byte ptr [rsp + 0x60], dl
	movups	xmmword ptr [rsp + 0x24], xmm2
	movups	xmmword ptr [rsp + 0x14], xmm1
	movups	xmmword ptr [rsp + 4], xmm0
	or	byte ptr [rsp + 0xf], 4
	lea	rcx, [rsp]
	mov	rdx, -1
	mov	rsi, rax
	call	sub_4042b0
	add	rsp, 0x78
	ret	
.label_257:
	call	abort
	.section	.text
	.align	32
	#Procedure 0x404525
	.globl sub_404525
	.type sub_404525, @function
sub_404525:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x404530
	.globl sub_404530
	.type sub_404530, @function
sub_404530:

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
	call	sub_406d20
	mov	dword ptr [r14], ebp
	pop	rbx
	.section	.text
	.align	32
	#Procedure 0x404560
	.globl quotearg_colon
	.type quotearg_colon, @function
quotearg_colon:

	pop	rsi
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x404563
	.globl sub_404563
	.type sub_404563, @function
sub_404563:

	nop	word ptr cs:[rax + rax]
.label_258:
	call	sub_405290
	.section	.text
	.align	32
	#Procedure 0x404575
	.globl sub_404575
	.type sub_404575, @function
sub_404575:

	push	rbx
	mov	rbx, rdx
	mov	rcx, qword ptr [rsi]
	test	rdi, rdi
	je	.label_260
	movabs	rax, 0x5555555555555554
	xor	edx, edx
	div	rbx
	cmp	rax, rcx
	jbe	.label_258
	mov	rax, rcx
	shr	rax, 1
	lea	rcx, [rcx + rax + 1]
	jmp	.label_261
.label_263:
	mov	rsi, rbx
	call	realloc
	test	rbx, rbx
	je	.label_264
	test	rax, rax
	je	.label_258
.label_264:
	pop	rbx
	ret	
.label_262:
	call	sub_405290
	.section	.text
	.align	32
	#Procedure 0x4045be
	.globl sub_4045be
	.type sub_4045be, @function
sub_4045be:

	test	byte ptr [rax], al
	add	byte ptr [rax], al
	add	byte ptr [rax], al
.label_260:
	test	rcx, rcx
	jne	.label_259
	mov	eax, 0x80
	xor	edx, edx
	div	rbx
	xor	ecx, ecx
	cmp	rbx, 0x80
	seta	cl
	add	rcx, rax
.label_259:
	movabs	rax, 0x7fffffffffffffff
	xor	edx, edx
	div	rbx
	cmp	rax, rcx
	jb	.label_262
.label_261:
	mov	qword ptr [rsi], rcx
	imul	rbx, rcx
	test	rdi, rdi
	je	.label_263
	test	rbx, rbx
	jne	.label_263
	call	free
	xor	eax, eax
	pop	rbx
	ret	
	.section	.text
	.align	32
	#Procedure 0x404610

	.globl sub_404610
	.type sub_404610, @function
sub_404610:
	mov	rdi, qword ptr [rdi + 0x10]
	jmp	free
	.section	.text
	.align	32
	#Procedure 0x404619
	.globl sub_404619
	.type sub_404619, @function
sub_404619:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x404620

	.globl quotearg_n_style_colon
	.type quotearg_n_style_colon, @function
quotearg_n_style_colon:
	call	sub_405290
	.section	.text
	.align	32
	#Procedure 0x404625
	.globl sub_404625
	.type sub_404625, @function
sub_404625:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x404630
	.globl sub_404630
	.type sub_404630, @function
sub_404630:

	push	rbx
	mov	rbx, rsi
	movabs	rax, 0x7fffffffffffffff
	xor	edx, edx
	div	rbx
	cmp	rax, rdi
	jb	quotearg_n_style_colon
	imul	rbx, rdi
	mov	rdi, rbx
	call	malloc
	test	rbx, rbx
	je	.label_265
	test	rax, rax
	je	quotearg_n_style_colon
.label_265:
	pop	rbx
	ret	
	.section	.text
	.align	32
	#Procedure 0x404660

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
	mov	rdi, qword ptr [rbp]
	call	sub_408cc0
	mov	edi, 6
	mov	esi, OFFSET FLAT:label_266
	call	setlocale
	mov	edi, OFFSET FLAT:label_268
	mov	esi, OFFSET FLAT:label_269
	call	bindtextdomain
	mov	edi, OFFSET FLAT:label_268
	call	textdomain
	mov	edi, OFFSET FLAT:.label_267
	call	atexit
	mov	qword ptr [rsp + 0x18], -1
	mov	byte ptr [rsp + 7], 0xa
	.section	.text
	.align	32
	#Procedure 0x4046c0
	.globl quotearg_n_custom
	.type quotearg_n_custom, @function
quotearg_n_custom:

	xor	ecx, ecx
	mov	r14d, 0
	mov	r13d, 0
	xor	eax, eax
	mov	qword ptr [rsp + 0x38], rax
	mov	qword ptr [rsp + 0x30], -1
	xor	eax, eax
	mov	qword ptr [rsp + 0x20], rax
	xor	r12d, r12d
.label_887:
	mov	qword ptr [rsp + 0x28], rcx
	mov	al, byte ptr [rsp + 7]
	mov	bl, al
.label_888:
	mov	eax, ebx
	mov	byte ptr [rsp + 7], al
	mov	rbx, r14
.label_293:
	mov	r14, rbx
	mov	rbx, r13
.label_290:
	mov	r13, rbx
	jmp	.label_270
.label_284:
	mov	rax, qword ptr [rsp + 0x58]
	mov	rcx, qword ptr [rsp + 0x18]
	cmp	rcx, rax
	cmovae	rcx, rax
	mov	qword ptr [rsp + 0x18], rcx
	nop	dword ptr [rax]
.label_270:
	mov	cl, r12b
.label_883:
	mov	r12b, cl
	xor	ebx, ebx
	mov	edx, OFFSET FLAT:label_271
	.section	.text
	.align	32
	#Procedure 0x404730
	.globl quotearg_n_custom_mem
	.type quotearg_n_custom_mem, @function
quotearg_n_custom_mem:

	add	byte ptr [rbp + 0x31], al
	rol	byte ptr [rcx + rcx*4 - 1], 0x48
	mov	esi, ebp
	call	getopt_long
	cmp	eax, 0x64
	jle	.label_272
	add	eax, -0x65
	cmp	eax, 0x1b
	ja	.label_277
	mov	cl, 1
	jmp	qword ptr [(rax * 8) + label_280]
.label_884:
	mov	dword ptr [rsp + 8], r15d
	mov	qword ptr [rsp + 0x10], rbp
	mov	r15, r14
	mov	r14, r12
	mov	rbp, qword ptr [rip + optarg]
	mov	esi, 0x2d
	mov	rdi, rbp
	call	strchr
	mov	rbx, rax
	mov	rax, qword ptr [rsp + 0x20]
	test	al, al
	jne	.label_274
	test	rbx, rbx
	je	.label_279
	mov	byte ptr [rbx], 0
	mov	rbp, qword ptr [rip + optarg]
	.section	.text
	.align	32
	#Procedure 0x4047a3
	.globl sub_4047a3
	.type sub_4047a3, @function
sub_4047a3:

	mov	esi, OFFSET FLAT:label_278
	mov	edx, 5
	call	dcgettext
	xor	esi, esi
	mov	rdx, -1
	mov	ecx, OFFSET FLAT:label_266
	xor	r9d, r9d
	mov	rdi, rbp
	mov	r8, rax
	call	sub_406fb0
	.section	.text
	.align	32
	#Procedure 0x4047ce
	.globl sub_4047ce
	.type sub_4047ce, @function
sub_4047ce:

	mov	qword ptr [rsp + 0x30], rax
	mov	byte ptr [rbx], 0x2d
	lea	rbp, [rbx + 1]
.label_279:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_278
	mov	edx, 5
	call	dcgettext
	xor	esi, esi
	mov	rdx, -1
	mov	ecx, OFFSET FLAT:label_266
	xor	r9d, r9d
	mov	rdi, rbp
	mov	r8, rax
	call	sub_406fb0
	mov	rcx, rax
	mov	qword ptr [rsp + 0x38], rcx
	.section	.text
	.align	32
	#Procedure 0x404810
	.globl quotearg_custom_mem
	.type quotearg_custom_mem, @function
quotearg_custom_mem:

	sub	ecx, dword ptr [rsp + 0x30]
	setae	al
	cmp	rcx, -1
	sete	cl
	test	rbx, rbx
	mov	r12, r14
	mov	r14, r15
	mov	rbp, qword ptr [rsp + 0x10]
	mov	r15d, dword ptr [rsp + 8]
	je	.label_289
	xor	al, cl
	mov	al, 1
	mov	qword ptr [rsp + 0x20], rax
	jne	.label_270
	jmp	.label_289
.label_885:
	mov	rdi, qword ptr [rip + optarg]
	xor	esi, esi
	mov	edx, 0xa
	xor	r8d, r8d
	lea	rcx, [rsp + 0x58]
	call	sub_403360
	cmp	eax, 1
	je	.label_270
	test	eax, eax
	je	.label_284
	jmp	.label_288
.label_886:
	test	r13, r13
	.section	.text
	.align	32
	#Procedure 0x404880
	.globl quote_n_mem
	.type quote_n_mem, @function
quote_n_mem:

	mov	ebx, dword ptr [rip + optarg]
	je	.label_290
	mov	rdi, r13
	.section	.text
	.align	32
	#Procedure 0x404890
	.globl quote_mem
	.type quote_mem, @function
quote_mem:

	mov	esi, ebx
	call	strcmp
	test	eax, eax
	je	.label_290
	jmp	.label_291
	.section	.text
	.align	32
	#Procedure 0x4048a4
	.globl sub_4048a4
	.type sub_4048a4, @function
sub_4048a4:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4048b0

	.globl quote_n
	.type quote_n, @function
quote_n:
	test	r14, r14
	mov	rbx, qword ptr [rip + optarg]
	je	.label_293
	mov	rdi, r14
	mov	rsi, rbx
	call	strcmp
	test	eax, eax
	.section	.text
	.align	32
	#Procedure 0x4048ce
	.globl sub_4048ce
	.type sub_4048ce, @function
sub_4048ce:

	test	byte ptr [rcx], ch
	.section	.text
	.align	32
	#Procedure 0x4048d5
	.globl sub_4048d5
	.type sub_4048d5, @function
sub_4048d5:

	mov	esi, OFFSET FLAT:label_294
	jmp	.label_276
.label_272:
	cmp	eax, -1
	jne	.label_282
	mov	qword ptr [rsp + 0x50], r13
	.section	.text
	.align	32
	#Procedure 0x4048f0
	.globl gettext_quote
	.type gettext_quote, @function
gettext_quote:

	pop	rsp
	mov	eax, dword ptr [rax]
	add	byte ptr [rbp - 0x7c], al
	in	al, 0xf
	xchg	eax, esp
	ror	byte ptr [rax - 0x75], 0x5c
	and	al, 0x20
	test	bl, bl
	je	.label_325
	test	al, al
	je	.label_296
.label_325:
	movsxd	r13, r15d
	sub	r13, rcx
	lea	rdx, [rbp + rcx*8]
	test	bl, bl
	je	.label_298
	test	r13d, r13d
	mov	rax, qword ptr [rsp + 0x30]
	mov	r15b, byte ptr [rsp + 7]
	jle	.label_302
	jmp	.label_307
.label_298:
	cmp	r13d, 1
	setg	cl
	and	cl, al
	cmp	cl, 1
	mov	rax, qword ptr [rsp + 0x30]
	mov	r15b, byte ptr [rsp + 7]
	je	.label_307
.label_302:
	test	r12b, r12b
	mov	qword ptr [rsp + 0x48], r12
	je	.label_317
	mov	qword ptr [rsp + 8], r14
	test	r13d, r13d
	mov	qword ptr [rsp + 0x10], rdx
	jle	.label_326
	mov	rbp, rdx
	mov	ebx, r13d
	mov	r14, r13
	nop	dword ptr [rax]
.label_319:
	mov	rdi, qword ptr [rbp]
	call	strlen
	add	r14, rax
	add	rbp, 8
	dec	ebx
	jne	.label_319
	mov	rdi, r14
	call	sub_402b6b
	mov	r14, rax
	mov	rbp, qword ptr [rsp + 0x10]
	mov	ebx, r13d
	nop	word ptr [rax + rax]
	mov	rsi, qword ptr [rbp]
	mov	rdi, r14
	call	stpcpy
	mov	qword ptr [rbp], r14
	mov	byte ptr [rax], r15b
	inc	rax
	add	rbp, 8
	dec	ebx
	mov	r14, rax
	.section	.text
	.align	32
	#Procedure 0x4049c0
	.globl randint_new
	.type randint_new, @function
randint_new:

	fucomip	st(3)
.label_317:
	test	bl, bl
	je	.label_314
	mov	rcx, qword ptr [rsp + 0x38]
	lea	r13, [rcx + 1]
	sub	r13, rax
	xor	ecx, ecx
	jmp	.label_318
.label_326:
	mov	rdi, r13
	.section	.text
	.align	32
	#Procedure 0x4049e0
	.globl randint_all_new
	.type randint_all_new, @function
randint_all_new:

	loope	0x4049e1
	dec	dword ptr [rax - 0x75]
	and	al, 0x10
	mov	qword ptr [rcx + r13*8], rax
.label_305:
	mov	rbx, qword ptr [rsp + 0x20]
	mov	r14, qword ptr [rsp + 8]
.label_318:
	mov	qword ptr [rsp + 0x10], rcx
	mov	rcx, qword ptr [rsp + 0x18]
	cmp	rcx, r13
	mov	rax, r13
	cmovb	rax, rcx
	mov	rdx, qword ptr [rsp + 0x28]
	.section	.text
	.align	32
	#Procedure 0x404a10
	.globl randint_get_source
	.type randint_get_source, @function
randint_get_source:

	ror	byte ptr [rcx - 0x77], cl
	int3	
	.section	.text
	.align	32
	#Procedure 0x404a14
	.globl sub_404a14
	.type sub_404a14, @function
sub_404a14:

	cmove	r12, rax
	je	.label_329
	xor	ebp, ebp
	.section	.text
	.align	32
	#Procedure 0x404a22
	.globl sub_404a22
	.type sub_404a22, @function
sub_404a22:

	push	qword ptr [rax + 0x44894801]
	and	al, 8
	jmp	.label_313
.label_329:
	mov	rdi, r12
	mov	rsi, r13
	call	sub_408d70
	mov	rsi, rax
	xor	eax, eax
	mov	qword ptr [rsp + 8], rax
	xor	ebp, ebp
.label_313:
	mov	rdi, r14
	call	sub_408820
	mov	qword ptr [rsp + 0x18], rax
	test	rax, rax
	je	.label_304
	xor	r14d, r14d
	test	bpl, bpl
	je	.label_320
	mov	dword ptr [rsp + 0x44], ebp
	mov	rax, qword ptr [rip + stdin]
	mov	qword ptr [rsp + 0x28], rax
	cmp	r12, 0x400
	mov	ebx, 0x400
	mov	rbp, r12
	cmovb	rbx, r12
	mov	esi, 0x18
	mov	rdi, rbx
	call	sub_408a20
	mov	r14, rax
	xor	r12d, r12d
	xor	r13d, r13d
	jmp	.label_300
	.section	.text
	.align	32
	#Procedure 0x404aa0
	.globl sub_404aa0
	.type sub_404aa0, @function
sub_404aa0:

	lea	rax, [rbx*8]
	lea	rsi, [rax + rax*2]
	mov	rdi, r14
	call	sub_4079f0
	mov	r14, rax
	add	r15, r14
	xor	esi, esi
	mov	edx, 0x6000
	mov	rdi, r15
	call	memset
.label_300:
	lea	rax, [r13*8]
	lea	r15, [rax + rax*2]
	nop	word ptr cs:[rax + rax]
.label_316:
	cmp	r13, rbp
	jae	.label_323
	lea	rdi, [r14 + r15]
	movsx	edx, byte ptr [rsp + 7]
	mov	rsi, qword ptr [rsp + 0x28]
	call	sub_407a20
	mov	r12, rax
	test	r12, r12
	je	.label_309
	inc	r13
	add	r15, 0x18
	cmp	r13, rbx
	jb	.label_316
	add	rbx, 0x400
	movabs	rax, 0x555555555555556
	cmp	rbx, rax
	.section	.text
	.align	32
	#Procedure 0x404b26
	.globl sub_404b26
	.type sub_404b26, @function
sub_404b26:

	jbe	0x404b27
.label_324:
	call	sub_405290
.label_323:
	test	r12, r12
	je	.label_309
	lea	r15, [rsp + 0x58]
	mov	rdi, r15
	.section	.text
	.align	32
	#Procedure 0x404b3d
	.globl sub_404b3d
	.type sub_404b3d, @function
sub_404b3d:

	lahf	
	out	0xff, eax
	dec	dword ptr [rdi]
	mov	esi, 0x6607245c
	nop	dword ptr cs:[rax + rax]
.label_332:
	mov	rdi, qword ptr [rsp + 0x18]
	mov	rsi, r13
	call	sub_408b30
	cmp	rax, rbp
	lea	rax, [rax + rax*2]
	lea	rdi, [r14 + rax*8]
	cmovae	rdi, r15
	mov	rsi, qword ptr [rsp + 0x28]
	mov	edx, ebx
	call	sub_407a20
	test	rax, rax
	je	.label_333
	inc	r13
	cmp	r13, 1
	jne	.label_332
.label_333:
	test	r13, r13
	je	.label_331
	.section	.text
	.align	32
	#Procedure 0x404b90
	.globl randperm_bound
	.type randperm_bound, @function
randperm_bound:

	lea	edi, [rsp + 0x58]
	call	sub_404610
.label_309:
	mov	rax, qword ptr [rsp + 0x28]
	test	byte ptr [rax], 0x20
	jne	.label_301
	cmp	r13, rbp
	cmova	r13, rbp
	mov	r12, r13
	mov	rbx, qword ptr [rsp + 0x20]
	mov	ebp, dword ptr [rsp + 0x44]
.label_320:
	mov	rax, qword ptr [rsp + 0x48]
	.section	.text
	.align	32
	#Procedure 0x404bc0
	.globl randperm_new
	.type randperm_new, @function
randperm_new:

	fdiv	dword ptr [rbp + 0x14]
	mov	rdi, qword ptr [rip + stdin]
	call	sub_401c00
	test	eax, eax
	jne	.label_301
	mov	ebx, ebp
	xor	r15d, r15d
	mov	rax, qword ptr [rsp + 8]
	test	al, al
	jne	.label_348
	mov	rdi, qword ptr [rsp + 0x18]
	mov	rsi, r12
	mov	rdx, r13
	call	sub_403dc0
	mov	r15, rax
.label_348:
	mov	rbp, qword ptr [rsp + 0x50]
	test	rbp, rbp
	je	.label_347
	mov	rdx, qword ptr [rip + stdout]
	mov	esi, OFFSET FLAT:label_335
	mov	rdi, rbp
	call	sub_407b50
	test	rax, rax
	je	.label_340
.label_347:
	mov	rax, qword ptr [rsp + 8]
	test	al, al
	mov	rax, qword ptr [rsp + 0x20]
	je	.label_343
	test	r12, r12
	mov	r14, qword ptr [rsp + 0x30]
	mov	r15, qword ptr [rsp + 0x38]
	je	.label_339
	test	r13, r13
	je	.label_334
	test	al, al
	mov	al, byte ptr [rsp + 7]
	je	.label_346
	sub	r15, r14
	movzx	ebx, al
	xor	ebp, ebp
	nop	dword ptr [rax]
.label_337:
	mov	rdi, qword ptr [rsp + 0x18]
	mov	rsi, r15
	call	sub_408b30
	lea	rdx, [rax + r14]
	mov	edi, 1
	mov	esi, OFFSET FLAT:label_338
	xor	eax, eax
	mov	ecx, ebx
	call	__printf_chk
	test	eax, eax
	js	.label_336
	inc	rbp
	cmp	rbp, r12
	jb	.label_337
	jmp	.label_339
.label_343:
	test	bl, bl
	je	.label_341
	test	r13, r13
	je	.label_339
	xor	ebp, ebp
	nop	dword ptr [rax + rax]
.label_349:
	mov	rax, qword ptr [r15 + rbp*8]
	lea	rbx, [rax + rax*2]
	mov	rdi, qword ptr [r14 + rbx*8 + 0x10]
	mov	rdx, qword ptr [r14 + rbx*8 + 8]
	mov	rcx, qword ptr [rip + stdout]
	mov	esi, 1
	call	fwrite_unlocked
	cmp	rax, qword ptr [r14 + rbx*8 + 8]
	jne	.label_336
	inc	rbp
	cmp	rbp, r13
	jb	.label_349
	jmp	.label_339
.label_341:
	test	al, al
	mov	r14, qword ptr [rsp + 0x30]
	je	.label_351
	test	r12, r12
	je	.label_339
	movzx	ebx, byte ptr [rsp + 7]
	xor	ebp, ebp
	nop	dword ptr [rax + rax]
.label_344:
	mov	rdx, qword ptr [r15 + rbp*8]
	add	rdx, r14
	mov	edi, 1
	mov	esi, OFFSET FLAT:label_338
	xor	eax, eax
	mov	ecx, ebx
	call	__printf_chk
	test	eax, eax
	js	.label_336
	inc	rbp
	cmp	rbp, r12
	jb	.label_344
	jmp	.label_339
.label_314:
	cmp	r13d, 1
	jne	.label_321
	mov	rdi, qword ptr [rdx]
	movzx	ecx, byte ptr [rdi]
	mov	eax, 0x2d
	sub	eax, ecx
	jne	.label_315
	movzx	eax, byte ptr [rdi + 1]
	neg	eax
.label_315:
	cmp	qword ptr [rsp + 0x18], 0
	je	.label_321
	test	eax, eax
	je	.label_321
	mov	rbx, rdx
	mov	rdx, qword ptr [rip + stdin]
	mov	esi, OFFSET FLAT:label_87
	call	sub_407b50
	test	rax, rax
	je	.label_327
.label_321:
	mov	rdi, qword ptr [rip + stdin]
	mov	esi, 2
	call	sub_406d65
	mov	rax, qword ptr [rsp + 0x28]
	test	al, al
	jne	.label_299
	cmp	qword ptr [rsp + 0x18], -1
	je	.label_299
	mov	r13, -1
	mov	bpl, 1
	mov	r12, qword ptr [rsp + 0x18]
	test	r12, r12
	je	.label_308
	lea	rdx, [rsp + 0x58]
	mov	edi, 1
	xor	esi, esi
	call	__fxstat
	test	eax, eax
	jne	.label_297
	movzx	eax, word ptr [rsp + 0x70]
	or	eax, 0x2000
	and	eax, 0xf000
	cmp	eax, 0xa000
	jne	.label_297
	mov	rbx, qword ptr [rsp + 0x88]
	xor	edi, edi
	xor	esi, esi
	mov	edx, 1
	call	lseek
	test	rax, rax
	js	.label_297
	sub	rbx, rax
	xor	eax, eax
	mov	qword ptr [rsp + 8], rax
	cmp	rbx, 0x800000
	mov	eax, 0
	mov	qword ptr [rsp + 0x28], rax
	jle	.label_299
	xor	eax, eax
	mov	qword ptr [rsp + 0x10], rax
	mov	rsi, -1
	mov	r12, qword ptr [rsp + 0x18]
	mov	rbx, qword ptr [rsp + 0x20]
	jmp	.label_313
.label_346:
	dec	r13
	xor	ebp, ebp
	nop	word ptr [rax + rax]
.label_342:
	mov	rdi, qword ptr [rsp + 0x18]
	mov	rsi, r13
	call	sub_408b30
	mov	rcx, qword ptr [rsp + 0x10]
	mov	rbx, qword ptr [rcx + rax*8 + 8]
	mov	rdi, qword ptr [rcx + rax*8]
	sub	rbx, rdi
	mov	rcx, qword ptr [rip + stdout]
	mov	esi, 1
	mov	rdx, rbx
	call	fwrite_unlocked
	cmp	rax, rbx
	jne	.label_336
	inc	rbp
	cmp	rbp, r12
	jb	.label_342
	jmp	.label_339
.label_351:
	test	r12, r12
	je	.label_339
	xor	ebp, ebp
	nop	dword ptr [rax]
.label_350:
	mov	rax, qword ptr [r15 + rbp*8]
	mov	rcx, qword ptr [rsp + 0x10]
	mov	rbx, qword ptr [rcx + rax*8 + 8]
	mov	rdi, qword ptr [rcx + rax*8]
	sub	rbx, rdi
	mov	rcx, qword ptr [rip + stdout]
	mov	esi, 1
	mov	rdx, rbx
	call	fwrite_unlocked
	cmp	rax, rbx
	jne	.label_336
	inc	rbp
	cmp	rbp, r12
	jb	.label_350
.label_339:
	xor	eax, eax
	add	rsp, 0xe8
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_299:
	mov	qword ptr [rsp + 8], r14
	mov	rdi, qword ptr [rip + stdin]
	lea	rsi, [rsp + 0x58]
	call	sub_408580
	mov	rbp, rax
	test	rbp, rbp
	je	.label_301
	mov	rbx, rbp
	mov	rax, qword ptr [rsp + 0x58]
	xor	r13d, r13d
	mov	edi, 1
	test	rax, rax
	je	.label_303
	cmp	byte ptr [rbx + rax - 1], r15b
	je	.label_310
	lea	rcx, [rax + 1]
	mov	qword ptr [rsp + 0x58], rcx
	mov	byte ptr [rbx + rax], r15b
	mov	rax, qword ptr [rsp + 0x58]
.label_310:
	add	rbp, rax
	xor	r13d, r13d
	mov	edi, 1
	test	rax, rax
	jle	.label_303
	movzx	r14d, r15b
	xor	r13d, r13d
	mov	rax, rbx
	nop	dword ptr [rax + rax]
.label_295:
	mov	rdx, rbp
	sub	rdx, rax
	mov	rdi, rax
	mov	esi, r14d
	call	memchr
	inc	rax
	inc	r13
	cmp	rax, rbp
	jb	.label_295
	lea	rdi, [r13 + 1]
	mov	rax, rdi
	shr	rax, 0x3c
	jne	.label_324
.label_303:
	shl	rdi, 3
	call	sub_402b6b
	mov	rcx, rax
	mov	qword ptr [rcx], rbx
	test	r13, r13
	mov	r15, rbp
	je	.label_305
	movzx	eax, byte ptr [rsp + 7]
	mov	dword ptr [rsp + 0x10], eax
	mov	ebp, 1
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x404fd0

	.globl sparse_hash_
	.type sparse_hash_, @function
sparse_hash_:
	mov	r14, rcx
	mov	rdx, r15
	sub	rdx, rbx
	mov	rdi, rbx
	mov	esi, dword ptr [rsp + 0x10]
	call	memchr
	mov	rcx, r14
	mov	rbx, rax
	inc	rbx
	.section	.text
	.align	32
	#Procedure 0x404ff0
	.globl randread_new
	.type randread_new, @function
randread_new:

	sbb	al, 0xe9
	inc	rbp
	cmp	rbp, r13
	jbe	sparse_hash_
	jmp	.label_305
.label_297:
	xor	eax, eax
	mov	qword ptr [rsp + 8], rax
	xor	eax, eax
	mov	qword ptr [rsp + 0x10], rax
	jmp	.label_328
.label_308:
	xor	eax, eax
	mov	qword ptr [rsp + 0x10], rax
	xor	r12d, r12d
	xor	eax, eax
	mov	qword ptr [rsp + 8], rax
.label_328:
	mov	rsi, -1
	mov	rbx, qword ptr [rsp + 0x20]
	jmp	.label_313
.label_336:
	call	__errno_location
	mov	ebx, dword ptr [rax]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_345
.label_312:
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	mov	edi, 1
	xor	eax, eax
	mov	esi, ebx
	mov	rdx, rcx
	call	error
.label_282:
	cmp	eax, 0xffffff7d
	je	.label_281
	cmp	eax, 0xffffff7e
	jne	.label_277
	xor	edi, edi
	call	sub_4053b7
.label_281:
	mov	rdi, qword ptr [rip + stdout]
	mov	rcx, qword ptr [rip + Version]
	mov	esi, OFFSET FLAT:label_285
	mov	edx, OFFSET FLAT:label_286
	mov	r8d, OFFSET FLAT:label_287
	xor	r9d, r9d
	xor	eax, eax
	call	sub_403d30
	xor	edi, edi
	call	exit
.label_277:
	mov	edi, 1
	call	sub_4053b7
.label_274:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_275
	jmp	.label_276
.label_289:
	call	__errno_location
	mov	r14d, dword ptr [rax]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_278
	mov	edx, 5
	call	dcgettext
	mov	rbp, rax
	mov	rdi, qword ptr [rip + optarg]
	call	sub_408a50
	mov	rbx, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:label_99
	xor	eax, eax
	mov	esi, r14d
	mov	rcx, rbp
	mov	r8, rbx
	call	error
.label_288:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_283
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
	mov	rdi, qword ptr [rip + optarg]
	call	sub_408a50
	mov	rcx, rax
	mov	edi, 1
	xor	esi, esi
	xor	eax, eax
	mov	rdx, rbx
	call	error
.label_296:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_273
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	xor	edi, edi
	xor	esi, esi
	xor	eax, eax
	mov	rdx, rcx
	call	error
	mov	edi, 1
	call	sub_4053b7
.label_307:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_322
	mov	rbp, rdx
	mov	edx, 5
	call	dcgettext
	mov	rcx, rbx
	mov	rbx, rax
	movzx	eax, cl
	xor	rax, 1
	mov	rdi, qword ptr [rbp + rax*8]
	call	sub_408a50
	mov	rcx, rax
	xor	edi, edi
	xor	esi, esi
	xor	eax, eax
	mov	rdx, rbx
	call	error
	mov	edi, 1
	call	sub_4053b7
.label_304:
	call	__errno_location
	mov	ebx, dword ptr [rax]
	xor	edi, edi
	mov	esi, 3
	mov	rdx, r14
	jmp	.label_306
.label_301:
	call	__errno_location
	mov	ebx, dword ptr [rax]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_311
	jmp	.label_312
.label_340:
	call	__errno_location
	mov	ebx, dword ptr [rax]
	xor	edi, edi
	mov	esi, 3
	mov	rdx, rbp
.label_306:
	call	sub_404490
	.section	.text
	.align	32
	#Procedure 0x4051de
	.globl sub_4051de
	.type sub_4051de, @function
sub_4051de:

	mov	rcx, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:label_353
	xor	eax, eax
	mov	esi, ebx
	call	error
.label_291:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_292
	jmp	.label_276
.label_334:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_352
.label_276:
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	mov	edi, 1
	xor	esi, esi
.label_354:
	xor	eax, eax
	mov	rdx, rcx
	call	error
.label_331:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_330
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	mov	edi, 1
	mov	esi, 0x4b
	.section	.text
	.align	32
	#Procedure 0x405240
	.globl randread_set_handler
	.type randread_set_handler, @function
randread_set_handler:

	jmp	.label_354
.label_327:
	call	__errno_location
	mov	ebp, dword ptr [rax]
	mov	rdx, qword ptr [rbx]
	xor	edi, edi
	mov	esi, 3
	.section	.text
	.align	32
	#Procedure 0x405257
	.globl sub_405257
	.type sub_405257, @function
sub_405257:

	dec	dword ptr [rax - 0x77]
	.section	.text
	.align	32
	#Procedure 0x40525b
	.globl sub_40525b
	.type sub_40525b, @function
sub_40525b:

	mov	edi, 1
	mov	edx, OFFSET FLAT:label_353
	xor	eax, eax
	mov	esi, ebp
	call	error
	nop	
	jmp	posix_fadvise
	.section	.text
	.align	32
	#Procedure 0x405275
	.globl sub_405275
	.type sub_405275, @function
sub_405275:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x405280
	.globl sub_405280
	.type sub_405280, @function
sub_405280:

	mov	qword ptr [rdi + 0x10], rsi
	ret	
	.section	.text
	.align	32
	#Procedure 0x405285
	.globl sub_405285
	.type sub_405285, @function
sub_405285:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x405290

	.globl sub_405290
	.type sub_405290, @function
sub_405290:
	push	rbx
	mov	ebx, dword ptr [rip + exit_failure]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_355
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	xor	esi, esi
	mov	edx, OFFSET FLAT:label_353
	xor	eax, eax
	mov	edi, ebx
	call	error
	call	abort
	.section	.text
	.align	32
	#Procedure 0x4052c0

	.globl sub_4052c0
	.type sub_4052c0, @function
sub_4052c0:
	push	rax
	mov	edi, 0xe
	call	sub_406d80
	test	rax, rax
	mov	ecx, OFFSET FLAT:label_266
	cmovne	rcx, rax
	cmp	byte ptr [rcx], 0
	mov	eax, OFFSET FLAT:label_356
	cmovne	rax, rcx
	pop	rcx
	ret	
	.section	.text
	.align	32
	#Procedure 0x4052e5
	.globl sub_4052e5
	.type sub_4052e5, @function
sub_4052e5:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4052f0
	.globl sub_4052f0
	.type sub_4052f0, @function
sub_4052f0:

	mov	rax, qword ptr [rdi + 0x20]
	ret	
	.section	.text
	.align	32
	#Procedure 0x4052f5
	.globl sub_4052f5
	.type sub_4052f5, @function
sub_4052f5:

	nop	word ptr cs:[rax + rax]
.label_357:
	call	abort
	.section	.text
	.align	32
	#Procedure 0x405305
	.globl sub_405305
	.type sub_405305, @function
sub_405305:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x405309
	.globl sub_405309
	.type sub_405309, @function
sub_405309:

	sub	rsp, 0x38
	mov	rax, qword ptr [rip + label_23]
	mov	qword ptr [rsp + 0x30], rax
	movups	xmm0, xmmword ptr [rip + label_24]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0, xmmword ptr [rip + label_25]
	movaps	xmmword ptr [rsp + 0x10], xmm0
	movups	xmm0, xmmword ptr [rip + default_quoting_options]
	movaps	xmmword ptr [rsp], xmm0
	mov	dword ptr [rsp], 0xa
	test	rdi, rdi
	je	.label_357
	test	rsi, rsi
	je	.label_357
	mov	qword ptr [rsp + 0x28], rdi
	mov	qword ptr [rsp + 0x30], rsi
	lea	rax, [rsp]
	xor	edi, edi
	mov	rsi, rdx
	mov	rdx, rcx
	mov	rcx, rax
	call	sub_4042b0
	add	rsp, 0x38
	ret	
	.section	.text
	.align	32
	#Procedure 0x405370
	.globl sub_405370
	.type sub_405370, @function
sub_405370:

	mov	rbx, qword ptr [rip + stderr]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_358
	.section	.text
	.align	32
	#Procedure 0x405380
	.globl randread_free
	.type randread_free, @function
randread_free:

	add	byte ptr [rax], al
	add	al, ch
	call	0x4940534b
	mov	edx, eax
	mov	rcx, qword ptr [rip + program_name]
	mov	esi, 1
	xor	eax, eax
	mov	rdi, rbx
	call	__fprintf_chk
	mov	edi, ebp
	call	exit
	.section	.text
	.align	32
	#Procedure 0x4053a8
	.globl sub_4053a8
	.type sub_4053a8, @function
sub_4053a8:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4053b7

	.globl sub_4053b7
	.type sub_4053b7, @function
sub_4053b7:
	push	rbp
	push	rbx
	push	rax
	mov	ebp, edi
	test	ebp, ebp
	.section	.text
	.align	32
	#Procedure 0x4053c6
	.globl sub_4053c6
	.type sub_4053c6, @function
sub_4053c6:

	mov	esi, OFFSET FLAT:label_361
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
	mov	esi, OFFSET FLAT:label_360
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_359
	mov	edx, 5
	.section	.text
	.align	32
	#Procedure 0x405420
	.globl isaac_refill
	.type isaac_refill, @function
isaac_refill:

	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_373
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_371
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_362
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_374
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_363
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_367
	mov	edx, 5
	call	dcgettext
	mov	rsi, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:label_286
	mov	ecx, OFFSET FLAT:label_368
	xor	eax, eax
	call	__printf_chk
	mov	edi, 5
	xor	esi, esi
	call	setlocale
	test	rax, rax
	je	.label_365
	mov	esi, OFFSET FLAT:label_366
	mov	edx, 3
	mov	rdi, rax
	call	strncmp
	test	eax, eax
	je	.label_365
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_370
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	call	fputs_unlocked
.label_365:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_364
	mov	edx, 5
	call	dcgettext
	mov	rsi, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:label_368
	mov	ecx, OFFSET FLAT:label_285
	xor	eax, eax
	call	__printf_chk
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_369
	mov	edx, 5
	call	dcgettext
	mov	rsi, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:label_285
	mov	ecx, OFFSET FLAT:label_372
	xor	eax, eax
	call	__printf_chk
	mov	edi, ebp
	call	exit
	.section	.text
	.align	32
	#Procedure 0x4055a0
	.globl sub_4055a0
	.type sub_4055a0, @function
sub_4055a0:

	test	rdi, rdi
	mov	eax, OFFSET FLAT:default_quoting_options
	cmovne	rax, rdi
	mov	dword ptr [rax], esi
	ret	
	.section	.text
	.align	32
	#Procedure 0x4055af
	.globl sub_4055af
	.type sub_4055af, @function
sub_4055af:

	nop
push	r14
	push	rbx
	mov	rdx, qword ptr [rdi + 0x800]
	mov	rax, qword ptr [rdi + 0x810]
	inc	rax
	mov	rcx, qword ptr [rdi + 0x808]
	add	rcx, rax
	mov	qword ptr [rdi + 0x810], rax
	lea	r9, [rdi + 0x400]
	lea	r8, [rdi + 0x20]
	cmp	r9, r8
	cmova	r8, r9
	mov	rax, rdi
	not	rax
	add	rax, r8
	shr	rax, 5
	lea	r8, [rax*4]
	shl	rax, 5
	lea	r10, [rsi + rax + 0x20]
	mov	r11, rdi
	nop	dword ptr [rax + rax]
.label_375:
	mov	rax, rdx
	shl	rax, 0x15
	xor	rax, rdx
	not	rax
	add	rax, qword ptr [r11 + 0x400]
	mov	rdx, qword ptr [r11]
	mov	ebx, edx
	and	ebx, 0x7f8
	add	rcx, qword ptr [rdi + rbx]
	add	rcx, rax
	mov	qword ptr [r11], rcx
	shr	rcx, 8
	and	ecx, 0x7f8
	add	rdx, qword ptr [rdi + rcx]
	mov	qword ptr [rsi], rdx
	mov	rbx, rax
	shr	rbx, 5
	xor	rbx, rax
	add	rbx, qword ptr [r11 + 0x408]
	mov	rcx, qword ptr [r11 + 8]
	mov	eax, ecx
	and	eax, 0x7f8
	add	rdx, rbx
	add	rdx, qword ptr [rdi + rax]
	mov	qword ptr [r11 + 8], rdx
	shr	rdx, 8
	and	edx, 0x7f8
	add	rcx, qword ptr [rdi + rdx]
	mov	qword ptr [rsi + 8], rcx
	mov	r14, rbx
	shl	r14, 0xc
	xor	r14, rbx
	add	r14, qword ptr [r11 + 0x410]
	mov	rax, qword ptr [r11 + 0x10]
	mov	edx, eax
	and	edx, 0x7f8
	.section	.text
	.align	32
	#Procedure 0x4056a0
	.globl isaac_seed
	.type isaac_seed, @function
isaac_seed:

	add	rcx, r14
	add	rcx, qword ptr [rdi + rdx]
	mov	qword ptr [r11 + 0x10], rcx
	shr	rcx, 8
	and	ecx, 0x7f8
	add	rax, qword ptr [rdi + rcx]
	mov	qword ptr [rsi + 0x10], rax
	mov	rdx, r14
	shr	rdx, 0x21
	xor	rdx, r14
	add	rdx, qword ptr [r11 + 0x418]
	mov	rcx, qword ptr [r11 + 0x18]
	mov	ebx, ecx
	and	ebx, 0x7f8
	add	rax, rdx
	add	rax, qword ptr [rdi + rbx]
	mov	qword ptr [r11 + 0x18], rax
	shr	rax, 8
	and	eax, 0x7f8
	add	rcx, qword ptr [rdi + rax]
	mov	qword ptr [rsi + 0x18], rcx
	add	r11, 0x20
	add	rsi, 0x20
	cmp	r11, r9
	jb	.label_375
	lea	r9, [rdi + 0x800]
	lea	rsi, [rdi + r8*8 + 0x38]
	nop	word ptr cs:[rax + rax]
.label_376:
	mov	rbx, rdx
	shl	rbx, 0x15
	xor	rbx, rdx
	not	rbx
	add	rbx, qword ptr [rsi - 0x418]
	mov	rax, qword ptr [rsi - 0x18]
	mov	edx, eax
	and	edx, 0x7f8
	add	rcx, qword ptr [rdi + rdx]
	add	rcx, rbx
	mov	qword ptr [rsi - 0x18], rcx
	shr	rcx, 8
	and	ecx, 0x7f8
	add	rax, qword ptr [rdi + rcx]
	mov	qword ptr [r10], rax
	mov	rdx, rbx
	shr	rdx, 5
	xor	rdx, rbx
	add	rdx, qword ptr [rsi - 0x410]
	mov	rcx, qword ptr [rsi - 0x10]
	mov	ebx, ecx
	and	ebx, 0x7f8
	add	rax, rdx
	add	rax, qword ptr [rdi + rbx]
	mov	qword ptr [rsi - 0x10], rax
	shr	rax, 8
	and	eax, 0x7f8
	add	rcx, qword ptr [rdi + rax]
	mov	qword ptr [r10 + 8], rcx
	mov	rbx, rdx
	shl	rbx, 0xc
	xor	rbx, rdx
	add	rbx, qword ptr [rsi - 0x408]
	mov	rax, qword ptr [rsi - 8]
	mov	edx, eax
	and	edx, 0x7f8
	add	rcx, rbx
	add	rcx, qword ptr [rdi + rdx]
	mov	qword ptr [rsi - 8], rcx
	shr	rcx, 8
	and	ecx, 0x7f8
	add	rax, qword ptr [rdi + rcx]
	mov	qword ptr [r10 + 0x10], rax
	mov	rdx, rbx
	shr	rdx, 0x21
	xor	rdx, rbx
	add	rdx, qword ptr [rsi - 0x400]
	mov	rcx, qword ptr [rsi]
	mov	ebx, ecx
	and	ebx, 0x7f8
	add	rax, rdx
	add	rax, qword ptr [rdi + rbx]
	mov	qword ptr [rsi], rax
	shr	rax, 8
	and	eax, 0x7f8
	add	rcx, qword ptr [rdi + rax]
	mov	qword ptr [r10 + 0x18], rcx
	lea	rax, [rsi + 0x20]
	add	rsi, 8
	add	r10, 0x20
	cmp	rsi, r9
	mov	rsi, rax
	jb	.label_376
	mov	qword ptr [rdi + 0x800], rdx
	mov	qword ptr [rdi + 0x808], rcx
	pop	rbx
	pop	r14
	ret	
	.section	.text
	.align	32
	#Procedure 0x405830
	.globl sub_405830
	.type sub_405830, @function
sub_405830:

	mov	rax, qword ptr [rdi]
	xor	edx, edx
	div	rsi
	mov	rax, rdx
	ret	
	.section	.text
	.align	32
	#Procedure 0x40583c
	.globl sub_40583c
	.type sub_40583c, @function
sub_40583c:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x405840

	.globl sub_405840
	.type sub_405840, @function
sub_405840:
	mov	rax, qword ptr [rdi]
	cmp	rax, qword ptr [rsi]
	sete	al
	ret	
	.section	.text
	.align	32
	#Procedure 0x40584a
	.globl sub_40584a
	.type sub_40584a, @function
sub_40584a:

	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x405850
	.globl sub_405850
	.type sub_405850, @function
sub_405850:

	mov	rax, rsi
	mov	rdx, rdi
	xor	edi, edi
	mov	ecx, OFFSET FLAT:quote_quoting_options
	mov	rsi, rdx
	mov	rdx, rax
	jmp	sub_4042b0
	.section	.text
	.align	32
	#Procedure 0x405868
	.globl sub_405868
	.type sub_405868, @function
sub_405868:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x405870
	.globl sub_405870
	.type sub_405870, @function
sub_405870:

	mov	r9, -1
	nop	word ptr [rax + rax]
.label_377:
	cmp	qword ptr [r8 + r9*8 + 8], 0
	lea	r9, [r9 + 1]
	jne	.label_377
	jmp	sub_4027a0
	.section	.text
	.align	32
	#Procedure 0x405891
	.globl sub_405891
	.type sub_405891, @function
sub_405891:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4058a0

	.globl sub_4058a0
	.type sub_4058a0, @function
sub_4058a0:
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
	.section	.text
	.align	32
	#Procedure 0x405900
	.globl fread_file
	.type fread_file, @function
fread_file:

	loopne	.label_378
.label_378:
	test	byte ptr [rsp + rbx*4], ah
	add	byte ptr [rax], al
	add	byte ptr [rcx - 0x7cdfdba4], cl
	jrcxz	.label_379
.label_379:
	add	byte ptr [rax], al
	add	byte ptr [rax - 0x49], al
	add	dword ptr [rax], edi
	mov	qword ptr [rsp + 0x68], rax
	mov	eax, 0
	mov	qword ptr [rsp + 0x58], rax
	mov	eax, 0
	mov	qword ptr [rsp + 0x50], rax
	mov	eax, 0
	xor	r9d, r9d
	xor	ecx, ecx
	mov	qword ptr [rsp + 0xa8], rcx
	jmp	.label_384
	.section	.text
	.align	32
	#Procedure 0x40594f
	.globl sub_40594f
	.type sub_40594f, @function
sub_40594f:

	nop	
.label_436:
	cmp	r8d, 2
	setne	al
	cmp	byte ptr [rsp + 0xf], 0
	setne	dl
	mov	rsi, qword ptr [rsp + 0xa8]
	test	sil, 1
	mov	bl, byte ptr [rsp + 0x34]
	mov	rsi, qword ptr [rsp + 0xc0]
	je	.label_395
	or	al, dl
	jne	.label_395
	test	dil, 1
	jne	.label_393
	cmp	qword ptr [rsp + 0x68], 0
	je	.label_395
	test	rbp, rbp
	mov	r15d, r8d
	mov	al, bl
	mov	qword ptr [rsp + 0x48], rcx
	mov	r12d, esi
	mov	r13, qword ptr [rsp + 0x68]
	je	.label_384
	jmp	.label_395
.label_808:
	mov	r8d, 5
	test	r12b, 1
	jne	.label_391
	test	rbp, rbp
	je	.label_383
	mov	rax, qword ptr [rsp + 0x10]
	mov	byte ptr [rax], 0x22
.label_383:
	mov	r14d, 1
	jmp	.label_387
.label_809:
	mov	r13b, 1
	mov	r8d, 5
	xor	r14d, r14d
	mov	eax, OFFSET FLAT:label_244
	mov	qword ptr [rsp + 0x58], rax
	mov	eax, 1
	mov	qword ptr [rsp + 0x50], rax
	mov	sil, 1
	jmp	.label_380
.label_391:
	xor	r14d, r14d
.label_387:
	mov	eax, OFFSET FLAT:label_244
	mov	qword ptr [rsp + 0x58], rax
	mov	eax, 1
	mov	qword ptr [rsp + 0x50], rax
	mov	r13b, 1
	jmp	.label_389
	.section	.text
	.align	32
	#Procedure 0x405a1f
	.globl sub_405a1f
	.type sub_405a1f, @function
sub_405a1f:

	nop	
.label_384:
	mov	rbp, r13
	xor	r14d, r14d
	mov	ecx, r15d
	cmp	r15d, 0xa
	ja	.label_386
	mov	r8d, 7
	mov	r13b, 1
	xor	esi, esi
	mov	r10, qword ptr [rsp + 0x28]
	mov	r11, qword ptr [rsp + 0x48]
	jmp	qword ptr [(rcx * 8) + label_390]
.label_810:
	mov	r14d, edi
	mov	edi, OFFSET FLAT:label_382
	mov	esi, r15d
	mov	ebx, r9d
	call	sub_404232
	mov	qword ptr [rsp + 0x80], rax
	mov	edi, OFFSET FLAT:label_245
	mov	esi, r15d
	call	sub_404232
	mov	r9d, ebx
	mov	edi, r14d
	mov	qword ptr [rsp + 0x78], rax
.label_811:
	mov	byte ptr [rsp + 0x1e], dil
	mov	dword ptr [rsp + 0x60], r9d
	test	r12b, 1
	.section	.text
	.align	32
	#Procedure 0x405a90
	.globl read_file
	.type read_file, @function
read_file:

	mov	r14d, 0
	mov	rcx, qword ptr [rsp + 0x80]
	jne	.label_398
	mov	al, byte ptr [rcx]
	test	al, al
	mov	r14d, 0
	je	.label_398
	xor	r14d, r14d
	nop	
.label_399:
	cmp	r14, rbp
	jae	.label_400
	mov	rdx, qword ptr [rsp + 0x10]
	mov	byte ptr [rdx + r14], al
.label_400:
	movzx	eax, byte ptr [rcx + r14 + 1]
	inc	r14
	test	al, al
	jne	.label_399
.label_398:
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
	.section	.text
	.align	32
	#Procedure 0x405b00
	.globl read_binary_file
	.type read_binary_file, @function
read_binary_file:

	pop	rsp
.label_803:
	xor	r8d, r8d
	xor	r14d, r14d
	mov	r13d, eax
	xor	esi, esi
	jmp	.label_380
.label_806:
	mov	al, 1
.label_804:
	mov	r12b, 1
.label_807:
	test	r12b, 1
	mov	cl, 1
	je	.label_381
	mov	ecx, eax
.label_381:
	mov	al, cl
.label_805:
	mov	r8d, 2
	test	r12b, 1
	jne	.label_385
	test	rbp, rbp
	je	.label_388
	mov	rcx, qword ptr [rsp + 0x10]
	mov	byte ptr [rcx], 0x27
.label_388:
	mov	r14d, 1
	jmp	.label_392
.label_385:
	xor	r14d, r14d
.label_392:
	mov	ecx, OFFSET FLAT:label_245
	mov	qword ptr [rsp + 0x58], rcx
	mov	ecx, 1
	mov	qword ptr [rsp + 0x50], rcx
	mov	r13d, eax
.label_389:
	mov	sil, r12b
.label_380:
	cmp	qword ptr [rsp + 0x100], 0
	setne	r12b
	cmp	r8d, 2
	.section	.text
	.align	32
	#Procedure 0x405b72
	.globl sub_405b72
	.type sub_405b72, @function
sub_405b72:

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
	jmp	.label_442
	.section	.text
	.align	32
	#Procedure 0x405be1
	.globl sub_405be1
	.type sub_405be1, @function
sub_405be1:

	nop	word ptr cs:[rax + rax]
.label_419:
	inc	r12
.label_442:
	cmp	r11, -1
	je	.label_450
	cmp	r12, r11
	jne	.label_451
	jmp	.label_453
	.section	.text
	.align	32
	#Procedure 0x405c03
	.globl sub_405c03
	.type sub_405c03, @function
sub_405c03:

	nop	word ptr cs:[rax + rax]
.label_450:
	mov	rcx, -1
	cmp	byte ptr [r10 + r12], 0
	je	.label_445
.label_451:
	cmp	byte ptr [rsp + 0x37], 0
	je	.label_446
	mov	rax, qword ptr [rsp + 0x50]
	lea	rbx, [r12 + rax]
	cmp	rax, 2
	jb	.label_410
	cmp	r11, -1
	jne	.label_410
	mov	r15d, edi
	mov	rdi, r10
	mov	r13d, r9d
	call	strlen
	mov	r9d, r13d
	mov	r8, qword ptr [rsp + 0x38]
	mov	edi, r15d
	mov	r10, qword ptr [rsp + 0x28]
	mov	r11, rax
.label_410:
	cmp	rbx, r11
	jbe	.label_422
.label_446:
	xor	esi, esi
.label_437:
	movzx	r15d, byte ptr [r10 + r12]
	cmp	r15, 0x7e
	ja	.label_427
	xor	edx, edx
	mov	r13b, 1
	mov	cl, 0x6e
	mov	bl, 0x61
	xor	eax, eax
	jmp	qword ptr [(r15 * 8) + label_444]
.label_823:
	test	r12, r12
	jne	.label_434
	jmp	.label_424
	.section	.text
	.align	32
	#Procedure 0x405c96
	.globl sub_405c96
	.type sub_405c96, @function
sub_405c96:

	nop	word ptr cs:[rax + rax]
.label_422:
	mov	r13d, r9d
	mov	r15d, edi
	mov	rbx, r11
	lea	rdi, [r10 + r12]
	mov	rsi, qword ptr [rsp + 0x58]
	mov	rdx, qword ptr [rsp + 0x50]
	call	memcmp
	test	eax, eax
	sete	sil
	jne	.label_443
	cmp	byte ptr [rsp + 0xf], 0
	mov	r10, qword ptr [rsp + 0x28]
	mov	r11, rbx
	mov	edi, r15d
	mov	r8, qword ptr [rsp + 0x38]
	mov	r9d, r13d
	je	.label_437
	jmp	.label_403
.label_443:
	mov	r10, qword ptr [rsp + 0x28]
	mov	r11, rbx
	mov	edi, r15d
	mov	r8, qword ptr [rsp + 0x38]
	mov	r9d, r13d
	jmp	.label_437
.label_827:
	xor	eax, eax
	cmp	r11, -1
	je	.label_452
	test	r12, r12
	jne	.label_402
	cmp	r11, 1
	je	.label_424
	xor	r13d, r13d
	jmp	.label_406
.label_816:
	cmp	byte ptr [rsp + 0x1f], 0
	je	.label_408
	cmp	byte ptr [rsp + 0xf], 0
	jne	.label_403
	cmp	r8d, 2
	jne	.label_418
	mov	eax, r9d
	and	al, 1
	jne	.label_418
	cmp	r14, rbp
	jae	.label_416
	mov	rax, qword ptr [rsp + 0x10]
	mov	byte ptr [rax + r14], 0x27
.label_416:
	lea	rax, [r14 + 1]
	cmp	rax, rbp
	jae	.label_420
	mov	rcx, qword ptr [rsp + 0x10]
	mov	byte ptr [rcx + rax], 0x24
.label_420:
	lea	rax, [r14 + 2]
	cmp	rax, rbp
	jae	.label_426
	mov	rcx, qword ptr [rsp + 0x10]
	mov	byte ptr [rcx + rax], 0x27
.label_426:
	add	r14, 3
	mov	r9b, 1
.label_418:
	mov	rcx, r14
	cmp	rcx, rbp
	jae	.label_448
	mov	rax, qword ptr [rsp + 0x10]
	mov	byte ptr [rax + rcx], 0x5c
.label_448:
	lea	r14, [rcx + 1]
	mov	al, 1
	mov	r15b, 0x30
	cmp	r8d, 2
	je	.label_440
	lea	rdx, [r12 + 1]
	cmp	rdx, r11
	jae	.label_440
	mov	dl, byte ptr [r10 + rdx]
	add	dl, 0xd0
	cmp	dl, 9
	ja	.label_440
	cmp	r14, rbp
	jae	.label_435
	mov	rdx, qword ptr [rsp + 0x10]
	mov	byte ptr [rdx + r14], 0x30
.label_435:
	lea	rdx, [rcx + 2]
	cmp	rdx, rbp
	jae	.label_447
	mov	ebx, esi
	mov	rsi, qword ptr [rsp + 0x10]
	mov	byte ptr [rsi + rdx], 0x30
	mov	esi, ebx
.label_447:
	add	rcx, 3
	xor	r13d, r13d
	mov	r14, rcx
	jmp	.label_406
.label_817:
	mov	bl, 0x62
	jmp	.label_401
.label_818:
	mov	cl, 0x74
	jmp	.label_404
.label_819:
	mov	bl, 0x76
	jmp	.label_401
.label_820:
	mov	bl, 0x66
	jmp	.label_401
.label_821:
	mov	cl, 0x72
	jmp	.label_404
.label_824:
	mov	r15b, 0x27
	mov	al, 1
	mov	qword ptr [rsp + 0xa8], rax
	cmp	r8d, 2
	jne	.label_405
	cmp	byte ptr [rsp + 0xf], 0
	jne	.label_411
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
	jae	.label_413
	mov	rax, qword ptr [rsp + 0x10]
	mov	byte ptr [rax + r14], 0x27
.label_413:
	lea	rax, [r14 + 1]
	cmp	rax, rbp
	jae	.label_430
	mov	rcx, qword ptr [rsp + 0x10]
	mov	byte ptr [rcx + rax], 0x5c
.label_430:
	lea	rax, [r14 + 2]
	cmp	rax, rbp
	jae	.label_433
	mov	rcx, qword ptr [rsp + 0x10]
	mov	byte ptr [rcx + rax], 0x27
.label_433:
	add	r14, 3
	xor	r9d, r9d
.label_405:
	xor	eax, eax
	mov	r13b, 1
	jmp	.label_406
.label_825:
	mov	r15b, 0x3f
	cmp	r8d, 5
	je	.label_439
	cmp	r8d, 2
	jne	.label_434
	cmp	byte ptr [rsp + 0xf], 0
	je	.label_434
	jmp	.label_411
.label_826:
	cmp	r8d, 2
	.section	.text
	.align	32
	#Procedure 0x405ece
	.globl sub_405ece
	.type sub_405ece, @function
sub_405ece:

	test	dword ptr [rsi], eax
	add	dword ptr [rax], eax
	add	byte ptr [rax + 0xf247c], al
	jne	.label_411
	mov	r15b, 0x5c
	xor	eax, eax
	jmp	.label_454
.label_427:
	cmp	qword ptr [rsp + 0xb8], 1
	mov	qword ptr [rsp + 0xa0], rbp
	mov	byte ptr [rsp + 0x1e], dil
	.section	.text
	.align	32
	#Procedure 0x405f00
	.globl version_etc_va
	.type version_etc_va, @function
version_etc_va:

	and	al, 0x60
	mov	dword ptr [rsp + 0x94], esi
	jne	.label_455
	mov	qword ptr [rsp + 0x48], r11
	call	__ctype_b_loc
	mov	r10, qword ptr [rsp + 0x28]
	mov	rax, qword ptr [rax]
	movzx	r13d, word ptr [rax + r15*2]
	shr	r13d, 0xe
	and	r13b, 1
	mov	ebx, 1
	jmp	.label_458
.label_452:
	test	r12, r12
	jne	.label_415
	mov	cl, byte ptr [r10 + 1]
	test	cl, cl
	jne	.label_415
.label_424:
	mov	dl, 1
.label_822:
	cmp	byte ptr [rsp + 0x27], 0
	je	.label_411
	xor	eax, eax
	mov	r13b, dl
.label_406:
	cmp	byte ptr [rsp + 0x36], 0
	je	.label_423
	cmp	qword ptr [rsp + 0x100], 0
	jne	.label_428
	jmp	.label_431
	.section	.text
	.align	32
	#Procedure 0x405f74
	.globl sub_405f74
	.type sub_405f74, @function
sub_405f74:

	nop	word ptr cs:[rax + rax]
.label_423:
	cmp	byte ptr [rsp + 0x35], 0
	je	.label_431
.label_428:
	mov	ecx, r15d
	shr	cl, 5
	movzx	edx, cl
	mov	ebx, esi
	mov	esi, 1
	mov	ecx, r15d
	shl	esi, cl
	test	bl, bl
	jne	.label_449
	mov	rcx, qword ptr [rsp + 0x100]
	and	esi, dword ptr [rcx + rdx*4]
	jmp	.label_438
	.section	.text
	.align	32
	#Procedure 0x405fad
	.globl sub_405fad
	.type sub_405fad, @function
sub_405fad:

	nop	dword ptr [rax]
.label_431:
	test	sil, sil
.label_438:
	mov	ebx, r15d
	je	.label_412
	jmp	.label_429
.label_449:
	mov	ebx, r15d
	jmp	.label_429
.label_408:
	cmp	dword ptr [rsp + 0x9c], 0
	jne	.label_419
	xor	r15d, r15d
	jmp	.label_434
	.section	.text
	.align	32
	#Procedure 0x405fd9
	.globl sub_405fd9
	.type sub_405fd9, @function
sub_405fd9:

	mov	cl, 0x5c
	cmp	byte ptr [rsp + 0x32], 0
	je	.label_404
	xor	eax, eax
	mov	r15b, 0x5c
.label_454:
	xor	r13d, r13d
	jmp	.label_412
.label_404:
	cmp	byte ptr [rsp + 0x27], 0
	mov	ebx, ecx
	je	.label_411
.label_401:
	xor	eax, eax
	cmp	byte ptr [rsp + 0x1f], 0
	mov	r13d, 0
	je	.label_406
	nop	
.label_429:
	cmp	byte ptr [rsp + 0xf], 0
	jne	.label_403
	cmp	r8d, 2
	jne	.label_407
	mov	eax, r9d
	and	al, 1
	jne	.label_407
	cmp	r14, rbp
	jae	.label_409
	mov	rax, qword ptr [rsp + 0x10]
	mov	byte ptr [rax + r14], 0x27
.label_409:
	lea	rax, [r14 + 1]
	cmp	rax, rbp
	jae	.label_414
	mov	rcx, qword ptr [rsp + 0x10]
	mov	byte ptr [rcx + rax], 0x24
.label_414:
	lea	rax, [r14 + 2]
	cmp	rax, rbp
	jae	.label_417
	mov	rcx, qword ptr [rsp + 0x10]
	mov	byte ptr [rcx + rax], 0x27
.label_417:
	add	r14, 3
	mov	r9b, 1
.label_407:
	cmp	r14, rbp
	jae	.label_425
	mov	rax, qword ptr [rsp + 0x10]
	mov	byte ptr [rax + r14], 0x5c
.label_425:
	inc	r14
	jmp	.label_441
.label_455:
	mov	qword ptr [rsp + 0x70], 0
	cmp	r11, -1
	jne	.label_457
	mov	rdi, r10
	call	strlen
	mov	r10, qword ptr [rsp + 0x28]
	mov	r11, rax
.label_457:
	cmp	byte ptr [rsp + 0x31], 0
	mov	qword ptr [rsp + 0x48], r11
	mov	qword ptr [rsp + 0x88], r12
	je	.label_456
	lea	rax, [r10 + r12]
	mov	qword ptr [rsp + 0xb0], rax
	mov	r13b, 1
	xor	r12d, r12d
	lea	rbp, [rsp + 0x70]
.label_467:
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
	.section	.text
	.align	32
	#Procedure 0x4060f0
	.globl version_etc
	.type version_etc, @function
version_etc:

	call	sub_403040
	mov	rbx, rax
	cmp	rbx, -2
	je	.label_464
	cmp	rbx, -1
	mov	r10, qword ptr [rsp + 0x28]
	movabs	rsi, 0x20000002b
	je	.label_460
	test	rbx, rbx
	mov	r11, qword ptr [rsp + 0x48]
	je	.label_466
	cmp	rbx, 2
	mov	rbp, qword ptr [rsp + 0xa0]
	jb	.label_463
	mov	rax, qword ptr [rsp + 0x40]
	mov	rcx, qword ptr [rsp + 0xb0]
	lea	rax, [rcx + rax]
	mov	ecx, 1
	nop	dword ptr [rax]
.label_462:
	movsx	edx, byte ptr [rax + rcx]
	add	edx, -0x5b
	cmp	edx, 0x21
	ja	.label_459
	bt	rsi, rdx
	jb	.label_411
.label_459:
	inc	rcx
	cmp	rcx, rbx
	jb	.label_462
.label_463:
	mov	edi, dword ptr [rsp + 0x64]
	call	iswprint
	test	eax, eax
	jne	0x40617e
	xor	r13d, r13d
	.section	.text
	.align	32
	#Procedure 0x406181
	.globl sub_406181
	.type sub_406181, @function
sub_406181:

	and	al, 0x70
	mov	r12, qword ptr [rsp + 0x40]
	add	r12, rbx
	mov	rdi, rbp
	call	mbsinit
	test	eax, eax
	mov	r10, qword ptr [rsp + 0x28]
	mov	r11, qword ptr [rsp + 0x48]
	je	.label_467
	jmp	.label_468
.label_440:
	xor	r13d, r13d
	jmp	.label_406
.label_415:
	mov	r11, -1
	xor	r13d, r13d
	jmp	.label_406
.label_439:
	cmp	dword ptr [rsp + 0x98], 0
	je	.label_434
	lea	rcx, [r12 + 2]
	cmp	rcx, r11
	jae	.label_434
	cmp	byte ptr [r10 + r12 + 1], 0x3f
	jne	.label_434
	movsx	edx, byte ptr [r10 + rcx]
	xor	eax, eax
	cmp	edx, 0x3e
	ja	.label_432
	mov	ebx, esi
	.section	.text
	.align	32
	#Procedure 0x4061fd
	.globl sub_4061fd
	.type sub_4061fd, @function
sub_4061fd:

	add	byte ptr [rax], al
	.section	.text
	.align	32
	#Procedure 0x406200
	.globl xnmalloc
	.type xnmalloc, @function
xnmalloc:

	add	byte ptr [rdx + 0x487000a3], al
	bt	esi, edx
	jae	.label_469
	cmp	byte ptr [rsp + 0xf], 0
	jne	.label_473
	cmp	r14, rbp
	jae	.label_474
	mov	rax, qword ptr [rsp + 0x10]
	mov	byte ptr [rax + r14], 0x3f
.label_474:
	lea	rax, [r14 + 1]
	cmp	rax, rbp
	jae	.label_471
	mov	rsi, qword ptr [rsp + 0x10]
	mov	byte ptr [rsi + rax], 0x22
.label_471:
	lea	rax, [r14 + 2]
	cmp	rax, rbp
	jae	.label_475
	.section	.text
	.align	32
	#Procedure 0x406240
	.globl xmalloc
	.type xmalloc, @function
xmalloc:

	mov	rsi, qword ptr [rsp + 0x10]
	mov	byte ptr [rsi + rax], 0x22
.label_475:
	lea	rax, [r14 + 3]
	cmp	rax, rbp
	jae	.label_472
	mov	rsi, qword ptr [rsp + 0x10]
	mov	byte ptr [rsi + rax], 0x3f
.label_472:
	add	r14, 4
	.section	.text
	.align	32
	#Procedure 0x406260
	.globl xnrealloc
	.type xnrealloc, @function
xnrealloc:

	ror	byte ptr [rcx - 0x77], 0xcc
	mov	r15b, dl
.label_469:
	xor	r13d, r13d
	mov	esi, ebx
	jmp	.label_406
.label_434:
	xor	eax, eax
.label_402:
	xor	r13d, r13d
	jmp	.label_406
.label_456:
	mov	r13b, 1
	xor	r12d, r12d
	lea	rbx, [rsp + 0x70]
	nop	word ptr cs:[rax + rax]
.label_479:
	mov	rax, r12
	mov	qword ptr [rsp + 0x40], rax
	mov	rcx, qword ptr [rsp + 0x88]
	lea	rax, [r12 + rcx]
	mov	r12, rcx
	lea	rsi, [r10 + rax]
	mov	rdx, r11
	.section	.text
	.align	32
	#Procedure 0x4062b0
	.globl xrealloc
	.type xrealloc, @function
xrealloc:

	ret	0x8d48
	.section	.text
	.align	32
	#Procedure 0x4062b3
	.globl sub_4062b3
	.type sub_4062b3, @function
sub_4062b3:

	jl	0x4062d9
	mov	rcx, rbx
	call	sub_403040
	mov	rbp, rax
	test	rbp, rbp
	je	.label_477
	cmp	rbp, -1
	je	.label_476
	cmp	rbp, -2
	je	.label_464
	mov	edi, dword ptr [rsp + 0x64]
	.section	.text
	.align	32
	#Procedure 0x4062da
	.globl sub_4062da
	.type sub_4062da, @function
sub_4062da:

	inc	dword ptr [rbp + 0x648b4cc0]
	and	al, 0x40
	jne	.label_478
	xor	r13d, r13d
.label_478:
	add	r12, rbp
	lea	rbx, [rsp + 0x70]
	mov	rdi, rbx
	call	mbsinit
	test	eax, eax
	mov	r10, qword ptr [rsp + 0x28]
	mov	r11, qword ptr [rsp + 0x48]
	je	.label_479
	jmp	.label_468
.label_464:
	mov	r10, qword ptr [rsp + 0x28]
	mov	rsi, qword ptr [rsp + 0x40]
	lea	rax, [rsi + r12]
	mov	rdx, qword ptr [rsp + 0x48]
	cmp	rax, rdx
	jae	.label_461
	lea	rax, [r10 + r12]
.label_465:
	cmp	byte ptr [rax + rsi], 0
	je	.label_461
	lea	rcx, [r12 + rsi + 1]
	inc	rsi
	cmp	rcx, rdx
	jb	.label_465
.label_461:
	mov	qword ptr [rsp + 0x40], rsi
.label_460:
	xor	r13d, r13d
	jmp	.label_466
.label_476:
	xor	r13d, r13d
.label_477:
	mov	r10, qword ptr [rsp + 0x28]
.label_466:
	mov	r12, qword ptr [rsp + 0x40]
.label_468:
	mov	rbx, r12
	mov	r12, qword ptr [rsp + 0x88]
.label_458:
	and	r13b, 1
	mov	eax, r13d
	or	al, byte ptr [rsp + 0x33]
	cmp	rbx, 1
	mov	rbp, qword ptr [rsp + 0xa0]
	mov	dil, byte ptr [rsp + 0x1e]
	mov	r8, qword ptr [rsp + 0x38]
	mov	r9d, dword ptr [rsp + 0x60]
	.section	.text
	.align	32
	#Procedure 0x406380
	.globl xcharalloc
	.type xcharalloc, @function
xcharalloc:

	and	al, 0x94
	add	byte ptr [rax], al
	add	byte ptr [rdi + 0x10], dh
	test	al, al
	je	.label_480
	xor	eax, eax
	mov	r11, qword ptr [rsp + 0x48]
	jmp	.label_406
.label_480:
	mov	byte ptr [rsp + 0x40], al
	add	rbx, r12
	xor	eax, eax
	.section	.text
	.align	32
	#Procedure 0x4063a0
	.globl x2realloc
	.type x2realloc, @function
x2realloc:

	mov	r11, qword ptr [rsp + 0x48]
	jmp	.label_481
	.section	.text
	.align	32
	#Procedure 0x4063a7
	.globl sub_4063a7
	.type sub_4063a7, @function
sub_4063a7:

	nop	word ptr [rax + rax]
.label_492:
	inc	r14
	mov	r15b, byte ptr [r10 + r12 + 1]
	mov	r12, rdx
.label_481:
	cmp	byte ptr [rsp + 0x40], 0
	je	.label_484
	test	sil, 1
	je	.label_483
	cmp	r14, rbp
	jae	.label_488
	mov	rdx, qword ptr [rsp + 0x10]
	mov	byte ptr [rdx + r14], 0x5c
.label_488:
	inc	r14
	xor	esi, esi
	jmp	.label_483
	.section	.text
	.align	32
	#Procedure 0x4063e5
	.globl sub_4063e5
	.type sub_4063e5, @function
sub_4063e5:

	nop	word ptr cs:[rax + rax]
.label_484:
	cmp	byte ptr [rsp + 0xf], 0
	jne	.label_403
	cmp	r8d, 2
	jne	.label_482
	mov	eax, r9d
	and	al, 1
	jne	.label_482
	cmp	r14, rbp
	jae	.label_486
	.section	.text
	.align	32
	#Procedure 0x406410
	.globl xzalloc
	.type xzalloc, @function
xzalloc:

	and	al, 0x10
	mov	byte ptr [rax + r14], 0x27
.label_486:
	lea	rax, [r14 + 1]
	cmp	rax, rbp
	jae	.label_490
	mov	rdx, qword ptr [rsp + 0x10]
	mov	byte ptr [rdx + rax], 0x24
.label_490:
	lea	rax, [r14 + 2]
	cmp	rax, rbp
	jae	.label_487
	mov	rdx, qword ptr [rsp + 0x10]
	mov	byte ptr [rdx + rax], 0x27
.label_487:
	add	r14, 3
	mov	r9b, 1
.label_482:
	cmp	r14, rbp
	jae	.label_489
	mov	rax, qword ptr [rsp + 0x10]
	.section	.text
	.align	32
	#Procedure 0x40644e
	.globl sub_40644e
	.type sub_40644e, @function
sub_40644e:

	add	al, 0x30
	pop	rsp
.label_489:
	lea	rax, [r14 + 1]
	cmp	rax, rbp
	jae	.label_485
	mov	edx, r15d
	shr	dl, 6
	or	dl, 0x30
	mov	ecx, esi
	mov	rsi, qword ptr [rsp + 0x10]
	mov	byte ptr [rsi + rax], dl
	mov	esi, ecx
.label_485:
	lea	rax, [r14 + 2]
	cmp	rax, rbp
	jae	.label_496
	mov	edx, r15d
	shr	dl, 3
	.section	.text
	.align	32
	#Procedure 0x406481
	.globl sub_406481
	.type sub_406481, @function
sub_406481:

	or	dl, 0x30
	mov	ecx, esi
	mov	rsi, qword ptr [rsp + 0x10]
	mov	byte ptr [rsi + rax], dl
	mov	esi, ecx
.label_496:
	add	r14, 3
	and	r15b, 7
	or	r15b, 0x30
	mov	al, 1
.label_483:
	lea	rdx, [r12 + 1]
	cmp	rbx, rdx
	jbe	.label_412
	test	r9b, 1
	je	.label_493
	mov	rcx, rbx
	mov	ebx, eax
	and	bl, 1
	jne	.label_495
	mov	r8, r12
	mov	r12d, esi
	.section	.text
	.align	32
	#Procedure 0x4064c0
	.globl xstrdup
	.type xstrdup, @function
xstrdup:

	out	dx, al
	jae	.label_497
	mov	rsi, qword ptr [rsp + 0x10]
	mov	byte ptr [rsi + r14], 0x27
.label_497:
	lea	rsi, [r14 + 1]
	cmp	rsi, rbp
	jae	.label_498
	mov	rbx, qword ptr [rsp + 0x10]
	mov	byte ptr [rbx + rsi], 0x27
.label_498:
	add	r14, 2
	xor	r9d, r9d
	mov	esi, r12d
	mov	rbx, rcx
	mov	r12, r8
	mov	r8, qword ptr [rsp + 0x38]
	jmp	.label_493
	.section	.text
	.align	32
	#Procedure 0x4064f6
	.globl sub_4064f6
	.type sub_4064f6, @function
sub_4064f6:

	nop	word ptr cs:[rax + rax]
.label_495:
	mov	rbx, rcx
.label_493:
	cmp	r14, rbp
	jae	.label_492
	mov	ecx, esi
	.section	.text
	.align	32
	#Procedure 0x406510
	.globl xalloc_die
	.type xalloc_die, @function
xalloc_die:

	je	0x406536
	adc	byte ptr [rsi - 0x78], al
	cmp	al, 0x36
	mov	esi, ecx
	jmp	.label_492
	.section	.text
	.align	32
	#Procedure 0x40651e
	.globl sub_40651e
	.type sub_40651e, @function
sub_40651e:

	nop	
.label_412:
	test	r9b, 1
	je	.label_491
	and	al, 1
	jne	.label_491
	cmp	r14, rbp
	jae	.label_494
	mov	rax, qword ptr [rsp + 0x10]
.label_494:
	lea	rax, [r14 + 1]
	cmp	rax, rbp
	.section	.text
	.align	32
	#Procedure 0x406540
	.globl xnumtoumax
	.type xnumtoumax, @function
xnumtoumax:

	jae	.label_499
	mov	rcx, qword ptr [rsp + 0x10]
	mov	byte ptr [rcx + rax], 0x27
.label_499:
	add	r14, 2
	xor	r9d, r9d
.label_491:
	mov	ebx, r15d
.label_441:
	cmp	r14, rbp
	jae	.label_421
	mov	rax, qword ptr [rsp + 0x10]
	mov	byte ptr [rax + r14], bl
.label_421:
	inc	r14
	shl	r13b, 7
	sar	r13b, 7
	and	r13b, dil
	mov	edi, r13d
	jmp	.label_419
.label_432:
	xor	r13d, r13d
	jmp	.label_406
	.section	.text
	.align	32
	#Procedure 0x406581
	.globl sub_406581
	.type sub_406581, @function
sub_406581:

	nop	word ptr cs:[rax + rax]
.label_453:
	mov	rcx, r12
.label_445:
	cmp	r8d, 2
	setne	al
	test	r14, r14
	setne	dl
	cmp	byte ptr [rsp + 0xf], 0
	je	.label_436
	or	al, dl
	jne	.label_436
	mov	r11, rcx
	jmp	.label_403
.label_411:
	mov	eax, 2
.label_470:
	mov	qword ptr [rsp + 0x38], rax
.label_403:
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
	call	sub_4058a0
	.section	.text
	.align	32
	#Procedure 0x40660d
	.globl sub_40660d
	.type sub_40660d, @function
sub_40660d:

	add	rsp, 0x20
.label_394:
	mov	rax, r14
	add	rsp, 0xc8
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_395:
	mov	rdx, qword ptr [rsp + 0x58]
	test	rdx, rdx
	je	.label_397
	cmp	byte ptr [rsp + 0xf], 0
	mov	rcx, qword ptr [rsp + 0x10]
	jne	.label_396
	.section	.text
	.align	32
	#Procedure 0x406640
	.globl xstrtoul
	.type xstrtoul, @function
xstrtoul:

	add	al, byte ptr [rax + rax*8 - 0xb7968c]
	ret	0x1f0f
	.section	.text
	.align	32
	#Procedure 0x40664a
	.globl sub_40664a
	.type sub_40664a, @function
sub_40664a:

	test	byte ptr [rax], al
	add	byte ptr [rax], al
	add	byte ptr [rax], al
.label_501:
	cmp	r14, rbp
	jae	.label_500
	mov	byte ptr [rcx + r14], al
.label_500:
	inc	r14
	movzx	eax, byte ptr [rdx]
	inc	rdx
	test	al, al
	jne	.label_501
	jmp	.label_396
.label_393:
	sub	rsp, 8
	mov	r8d, 5
	mov	rdi, qword ptr [rsp + 0x18]
	mov	rsi, qword ptr [rsp + 0x70]
	mov	rdx, qword ptr [rsp + 0x30]
	mov	r9d, dword ptr [rsp + 0x28]
	push	qword ptr [rsp + 0x80]
	push	qword ptr [rsp + 0x90]
	push	qword ptr [rsp + 0x118]
	call	sub_4058a0
	.section	.text
	.align	32
	#Procedure 0x4066a0
	.globl sub_4066a0
	.type sub_4066a0, @function
sub_4066a0:

	add	rsp, 0x20
	jmp	0x406611
.label_397:
	mov	rcx, qword ptr [rsp + 0x10]
.label_396:
	cmp	r14, rbp
	jae	.label_394
	mov	byte ptr [rcx + r14], 0
	jmp	.label_394
.label_473:
	mov	eax, 5
	jmp	.label_470
.label_386:
	call	abort
	.section	.text
	.align	32
	#Procedure 0x4066d0

	.globl sub_4066d0
	.type sub_4066d0, @function
sub_4066d0:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	push	rax
	mov	r15, rdx
	mov	rbx, rsi
	mov	r14, rdi
	mov	rcx, qword ptr [r14]
	test	rcx, rcx
	je	.label_507
	mov	esi, 1
	mov	rdi, rbx
	mov	rdx, r15
	call	fread_unlocked
	mov	rbp, rax
	call	__errno_location
	mov	r12, rax
	jmp	.label_503
	.section	.text
	.align	32
	#Procedure 0x406709
	.globl sub_406709
	.type sub_406709, @function
sub_406709:

	nop	dword ptr [rax]
.label_502:
	add	rbx, rbp
	mov	rax, qword ptr [r14]
	mov	eax, dword ptr [rax]
	and	eax, 0x20
	cmovne	eax, dword ptr [r12]
	mov	dword ptr [r12], eax
	mov	rdi, qword ptr [r14 + 0x10]
	call	qword ptr [r14 + 8]
	mov	rcx, qword ptr [r14]
	mov	esi, 1
	mov	rdi, rbx
	mov	rdx, r15
	call	fread_unlocked
	mov	rbp, rax
.label_503:
	sub	r15, rbp
	jne	.label_502
	jmp	.label_504
.label_507:
	mov	r12, qword ptr [r14 + 0x18]
	lea	r13, [r14 + 0x838]
	mov	rsi, r13
	sub	rsi, r12
	add	rsi, 0x800
	cmp	r12, r15
	jae	.label_505
	lea	rbp, [r14 + 0x20]
	mov	rdi, rbx
	mov	rdx, r12
	call	memcpy
	add	rbx, r12
	sub	r15, r12
	xor	r12d, r12d
	nop	word ptr cs:[rax + rax]
.label_508:
	cmp	r15, 0x800
	jb	.label_506
	mov	rdi, rbp
	mov	rsi, rbx
	call	sub_4055b0
	add	rbx, 0x800
	add	r15, -0x800
	jne	.label_508
	jmp	.label_509
.label_506:
	mov	rdi, rbp
	mov	rsi, r13
	call	sub_4055b0
	mov	r12d, 0x800
	mov	rsi, r13
.label_505:
	mov	rdi, rbx
	mov	rdx, r15
	call	memcpy
	sub	r12, r15
.label_509:
	mov	qword ptr [r14 + 0x18], r12
.label_504:
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x4067eb
	.globl sub_4067eb
	.type sub_4067eb, @function
sub_4067eb:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4067f0

	.globl sub_4067f0
	.type sub_4067f0, @function
sub_4067f0:
	push	rbp
	push	r15
	push	r14
	push	r12
	push	rbx
	mov	r14, rsi
	mov	r15, rdi
	call	freopen
	mov	rbx, rax
	test	r15, r15
	je	.label_511
	test	rbx, rbx
	je	.label_511
	mov	rdi, rbx
	call	fileno
	mov	ebp, eax
	mov	edi, ebp
	mov	esi, ebp
	call	dup2
	test	eax, eax
	jns	.label_511
	call	__errno_location
	cmp	dword ptr [rax], 9
	jne	.label_511
	mov	edi, OFFSET FLAT:label_512
	mov	esi, 0x80000
	xor	eax, eax
	call	open
	mov	r12d, eax
	cmp	r12d, ebp
	je	.label_510
	mov	edi, r12d
	mov	esi, ebp
	call	dup2
	mov	ebp, eax
	mov	edi, r12d
	call	close
	test	ebp, ebp
	js	.label_511
.label_510:
	mov	rdi, r15
	mov	rsi, r14
	mov	rdx, rbx
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	pop	rbp
	jmp	freopen
.label_511:
	mov	rax, rbx
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x406884
	.globl sub_406884
	.type sub_406884, @function
sub_406884:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x406890
	.globl sub_406890
	.type sub_406890, @function
sub_406890:

	push	rbp
	push	r15
	push	r14
	push	rbx
	push	rax
	mov	rbx, rdi
	mov	rdi, qword ptr [rbx]
	call	sub_403c30
	.section	.text
	.align	32
	#Procedure 0x4068a2
	.globl sub_4068a2
	.type sub_4068a2, @function
sub_4068a2:

	mov	r14d, eax
	call	__errno_location
	mov	rbp, rax
	mov	r15d, dword ptr [rbp]
	mov	esi, 0x18
	mov	rdi, rbx
	call	sub_406b70
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
	.section	.text
	.align	32
	#Procedure 0x4068d8
	.globl sub_4068d8
	.type sub_4068d8, @function
sub_4068d8:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4068e0
	.globl sub_4068e0
	.type sub_4068e0, @function
sub_4068e0:

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
	call	sub_405290
	.section	.text
	.align	32
	#Procedure 0x406922
	.globl sub_406922
	.type sub_406922, @function
sub_406922:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x406930
	.globl sub_406930
	.type sub_406930, @function
sub_406930:

	mov	qword ptr [rip + file_name],  rdi
	ret	
	.section	.text
	.align	32
	#Procedure 0x406938
	.globl sub_406938
	.type sub_406938, @function
sub_406938:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x406940

	.globl sub_406940
	.type sub_406940, @function
sub_406940:
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
	mov	r13d, OFFSET FLAT:sub_4030a0
	cmovne	r13, rdx
	test	rcx, rcx
	mov	ebp, OFFSET FLAT:sub_403d20
	cmovne	rbp, rcx
	mov	edi, 0x50
	call	malloc
	mov	r15, rax
	xor	eax, eax
	test	r15, r15
	je	.label_520
	test	rbx, rbx
	mov	eax, OFFSET FLAT:default_tuning
	cmove	rbx, rax
	mov	qword ptr [r15 + 0x28], rbx
	cmp	rbx, rax
	je	.label_516
	movss	xmm0, dword ptr [rbx + 8]
	ucomiss	xmm0, dword ptr [rip + label_35]
	jbe	.label_517
	movss	xmm1, dword ptr [rip + label_38]
	ucomiss	xmm1, xmm0
	jbe	.label_517
	movss	xmm1, dword ptr [rbx + 0xc]
	ucomiss	xmm1, dword ptr [rip + label_43]
	jbe	.label_517
	movss	xmm1, dword ptr [rbx]
	xorps	xmm2, xmm2
	ucomiss	xmm1, xmm2
	jb	.label_517
	addss	xmm1, dword ptr [rip + label_35]
	ucomiss	xmm0, xmm1
	jbe	.label_517
	movss	xmm0, dword ptr [rbx + 4]
	movss	xmm2, dword ptr [rip + label_45]
	ucomiss	xmm2, xmm0
	jb	.label_517
	ucomiss	xmm0, xmm1
	jbe	.label_517
.label_516:
	cmp	byte ptr [rbx + 0x10], 0
	jne	.label_519
	mov	eax, r12d
	and	eax, 1
	test	r12, r12
	js	.label_521
	xorps	xmm0, xmm0
	cvtsi2ss	xmm0, r12
	jmp	.label_522
.label_521:
	shr	r12, 1
	or	rax, r12
	xorps	xmm0, xmm0
	cvtsi2ss	xmm0, rax
	addss	xmm0, xmm0
.label_522:
	divss	xmm0, dword ptr [rbx + 8]
	movss	xmm1, dword ptr [rip + label_49]
	movaps	xmm2, xmm0
	subss	xmm2, xmm1
	cvttss2si	rax, xmm2
	movabs	rcx, 0x8000000000000000
	xor	rcx, rax
	cvttss2si	r12, xmm0
	ucomiss	xmm0, xmm1
	cmovae	r12, rcx
	ucomiss	xmm0, dword ptr [rip + label_76]
	jae	.label_517
.label_519:
	cmp	r12, 0xa
	mov	ebx, 0xa
	cmovae	rbx, r12
	or	rbx, 1
	jmp	.label_523
	.section	.text
	.align	32
	#Procedure 0x406a8e
	.globl sub_406a8e
	.type sub_406a8e, @function
sub_406a8e:

	nop	
.label_524:
	add	rbx, 2
.label_523:
	cmp	rbx, -1
	je	.label_517
	cmp	rbx, 0xa
	mov	ecx, 3
	jb	.label_515
	mov	esi, 0xc
	mov	edi, 9
	mov	ecx, 3
	nop	dword ptr [rax + rax]
.label_518:
	xor	edx, edx
	mov	rax, rbx
	div	rcx
	test	rdx, rdx
	je	.label_515
	lea	rdi, [rdi + rsi + 4]
	add	rcx, 2
	add	rsi, 8
	cmp	rdi, rbx
	jb	.label_518
.label_515:
	xor	edx, edx
	mov	rax, rbx
	div	rcx
	test	rdx, rdx
	je	.label_524
	mov	rax, rbx
	shr	rax, 0x3c
	jne	.label_517
	mov	qword ptr [r15 + 0x10], rbx
	test	rbx, rbx
	je	.label_517
	mov	esi, 0x10
	mov	rdi, rbx
	call	sub_407b15
	mov	qword ptr [r15], rax
	test	rax, rax
	je	.label_517
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
	jmp	.label_520
.label_517:
	mov	rdi, r15
	call	free
	xor	eax, eax
.label_520:
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x406b58
	.globl sub_406b58
	.type sub_406b58, @function
sub_406b58:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x406b60
	.globl sub_406b60
	.type sub_406b60, @function
sub_406b60:

	test	rdi, rdi
	mov	eax, OFFSET FLAT:default_quoting_options
	cmovne	rax, rdi
	mov	eax, dword ptr [rax]
	ret	
	.section	.text
	.align	32
	#Procedure 0x406b6f
	.globl sub_406b6f
	.type sub_406b6f, @function
sub_406b6f:

	nop
mov	rax, rsi
	xor	esi, esi
	mov	rdx, rax
	jmp	memset
	.section	.text
	.align	32
	#Procedure 0x406b7d
	.globl sub_406b7d
	.type sub_406b7d, @function
sub_406b7d:

	nop	dword ptr [rax]
.label_525:
	call	abort
	.section	.text
	.align	32
	#Procedure 0x406b85
	.globl sub_406b85
	.type sub_406b85, @function
sub_406b85:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x406b8d
	.globl sub_406b8d
	.type sub_406b8d, @function
sub_406b8d:

	sub	rsp, 0x78
	xorps	xmm0, xmm0
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movaps	xmmword ptr [rsp + 0x10], xmm0
	movaps	xmmword ptr [rsp], xmm0
	mov	dword ptr [rsp + 0x30], 0
	cmp	esi, 0xa
	je	.label_525
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
	call	sub_4042b0
	add	rsp, 0x78
	ret	
	.section	.text
	.align	32
	#Procedure 0x406bf0
	.globl sub_406bf0
	.type sub_406bf0, @function
sub_406bf0:

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
	.section	.text
	.align	32
	#Procedure 0x406c60
	.globl xstrtoumax
	.type xstrtoumax, @function
xstrtoumax:

	push	qword ptr [r12 + 0x28]
	push	r13
	call	sub_4058a0
	.section	.text
	.align	32
	#Procedure 0x406c6c
	.globl sub_406c6c
	.type sub_406c6c, @function
sub_406c6c:

	add	rsp, 0x20
	mov	rbx, rax
	lea	r15, [rbx + 1]
	mov	rdi, r15
	call	sub_402b6b
	mov	r14, rax
	mov	r8d, dword ptr [r12]
	.section	.text
	.align	32
	#Procedure 0x406c86
	.globl sub_406c86
	.type sub_406c86, @function
sub_406c86:

	sub	rsp, 8
	mov	rdi, r14
	mov	rsi, r15
	mov	rdx, qword ptr [rsp + 0x10]
	mov	rcx, qword ptr [rsp + 0x18]
	mov	r9d, ebp
	push	qword ptr [r12 + 0x30]
	push	qword ptr [r12 + 0x28]
	push	r13
	call	sub_4058a0
	.section	.text
	.align	32
	#Procedure 0x406cae
	.globl sub_406cae
	.type sub_406cae, @function
sub_406cae:

	mov	rax, qword ptr [rsp + 0x38]
	add	rsp, 0x20
	test	rax, rax
	mov	ecx, dword ptr [rsp + 4]
	mov	rdx, qword ptr [rsp + 0x20]
	mov	dword ptr [rdx], ecx
	je	.label_526
	mov	qword ptr [rax], rbx
.label_526:
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
	.align	32
	#Procedure 0x406cdc
	.globl sub_406cdc
	.type sub_406cdc, @function
sub_406cdc:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x406ce0
	.globl sub_406ce0
	.type sub_406ce0, @function
sub_406ce0:

	push	r14
	push	rbx
	push	rax
	mov	rbx, rdi
	call	malloc
	mov	r14, rax
	test	rbx, rbx
	je	.label_528
	test	r14, r14
	je	.label_527
.label_528:
	xor	esi, esi
	mov	rdi, r14
	mov	rdx, rbx
	call	memset
	mov	rax, r14
	add	rsp, 8
	pop	rbx
	pop	r14
	ret	
.label_527:
	call	sub_405290
	.section	.text
	.align	32
	#Procedure 0x406d16
	.globl sub_406d16
	.type sub_406d16, @function
sub_406d16:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x406d20

	.globl sub_406d20
	.type sub_406d20, @function
sub_406d20:
	push	r15
	push	r14
	push	rbx
	mov	rbx, rsi
	mov	r14, rdi
	mov	rdi, rbx
	call	malloc
	mov	r15, rax
	test	rbx, rbx
	je	.label_529
	test	r15, r15
	je	.label_530
.label_529:
	mov	rdi, r15
	mov	rsi, r14
	mov	rdx, rbx
	call	memcpy
	mov	rax, r15
	pop	rbx
	pop	r14
	pop	r15
	ret	
.label_530:
	call	sub_405290
	.section	.text
	.align	32
	#Procedure 0x406d5c
	.globl sub_406d5c
	.type sub_406d5c, @function
sub_406d5c:

	nop	dword ptr [rax]
.label_531:
	pop	rbx
	ret	
	.section	.text
	.align	32
	#Procedure 0x406d62
	.globl sub_406d62
	.type sub_406d62, @function
sub_406d62:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x406d65

	.globl sub_406d65
	.type sub_406d65, @function
sub_406d65:
	push	rbx
	mov	ebx, esi
	test	rdi, rdi
	je	.label_531
	call	fileno
	xor	esi, esi
	xor	edx, edx
	mov	edi, eax
	mov	ecx, ebx
	pop	rbx
	jmp	posix_fadvise
	.section	.text
	.align	32
	#Procedure 0x406d80

	.globl sub_406d80
	.type sub_406d80, @function
sub_406d80:
	lea	eax, [rdi - 0x27d8]
	lea	ecx, [rdi + 0x1d842]
	cmp	eax, 0xc
	cmovb	edi, ecx
	jmp	nl_langinfo
	.section	.text
	.align	32
	#Procedure 0x406d97
	.globl sub_406d97
	.type sub_406d97, @function
sub_406d97:

	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x406da0
	.globl sub_406da0
	.type sub_406da0, @function
sub_406da0:

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
	call	sub_4058a0
	.section	.text
	.align	32
	#Procedure 0x406e04
	.globl sub_406e04
	.type sub_406e04, @function
sub_406e04:

	add	rsp, 0x20
	mov	rbx, rax
	inc	rbx
	mov	rdi, rbx
	call	sub_402b6b
	mov	r13, rax
	mov	r8d, dword ptr [r14]
	.section	.text
	.align	32
	#Procedure 0x406e1c
	.globl sub_406e1c
	.type sub_406e1c, @function
sub_406e1c:

	sub	rsp, 8
	mov	rdi, r13
	mov	rsi, rbx
	mov	rdx, r12
	mov	rcx, qword ptr [rsp + 0x10]
	mov	r9d, ebp
	push	qword ptr [r14 + 0x30]
	push	qword ptr [r14 + 0x28]
	push	r15
	call	sub_4058a0
	.section	.text
	.align	32
	#Procedure 0x406e40
	.globl sub_406e40
	.type sub_406e40, @function
sub_406e40:

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
	.align	32
	#Procedure 0x406e61
	.globl sub_406e61
	.type sub_406e61, @function
sub_406e61:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x406e70
	.globl sub_406e70
	.type sub_406e70, @function
sub_406e70:

	push	rax
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_532
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:label_533
	xor	eax, eax
	mov	rsi, rcx
	call	__printf_chk
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_535
	mov	edx, 5
	call	dcgettext
	mov	rsi, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:label_286
	mov	ecx, OFFSET FLAT:label_368
	xor	eax, eax
	call	__printf_chk
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_534
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	pop	rax
	jmp	fputs_unlocked
	.section	.text
	.align	32
	#Procedure 0x406ee4
	.globl sub_406ee4
	.type sub_406ee4, @function
sub_406ee4:

	nop	word ptr cs:[rax + rax]
.label_538:
	mov	r15, qword ptr [rbx]
.label_537:
	mov	rax, r15
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	ret	
	.section	.text
	.align	32
	#Procedure 0x406f02

	.globl sub_406f02
	.type sub_406f02, @function
sub_406f02:
	call	abort
	.section	.text
	.align	32
	#Procedure 0x406f07
	.globl sub_406f07
	.type sub_406f07, @function
sub_406f07:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x406f0f
	.globl sub_406f0f
	.type sub_406f0f, @function
sub_406f0f:

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
	jae	sub_406f02
	mov	rbx, qword ptr [r14]
	shl	rax, 4
	mov	rsi, qword ptr [rbx + rax]
	xor	r15d, r15d
	test	rsi, rsi
	je	.label_537
	add	rbx, rax
	je	.label_537
	cmp	rsi, r12
	je	.label_539
	xor	r15d, r15d
	nop	
.label_536:
	mov	rdi, r12
	call	qword ptr [r14 + 0x38]
	test	al, al
	jne	.label_538
	mov	rbx, qword ptr [rbx + 8]
	test	rbx, rbx
	je	.label_537
	mov	rsi, qword ptr [rbx]
	cmp	rsi, r12
	jne	.label_536
.label_539:
	mov	r15, r12
	jmp	.label_537
	.section	.text
	.align	32
	#Procedure 0x406f70
	.globl sub_406f70
	.type sub_406f70, @function
sub_406f70:

	mov	rdx, -1
	mov	ecx, OFFSET FLAT:quote_quoting_options
	jmp	sub_4042b0
	.section	.text
	.align	32
	#Procedure 0x406f81
	.globl sub_406f81
	.type sub_406f81, @function
sub_406f81:

	nop	word ptr cs:[rax + rax]
.label_540:
	call	sub_405290
	.section	.text
	.align	32
	#Procedure 0x406f95
	.globl sub_406f95
	.type sub_406f95, @function
sub_406f95:

	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x406f9b
	.globl sub_406f9b
	.type sub_406f9b, @function
sub_406f9b:

	push	rbx
	mov	rbx, rdi
	call	malloc
	test	rbx, rbx
	je	.label_541
	test	rax, rax
	je	.label_540
.label_541:
	pop	rbx
	ret	
	.section	.text
	.align	32
	#Procedure 0x406fb0

	.globl sub_406fb0
	.type sub_406fb0, @function
sub_406fb0:
	push	rax
	mov	r10, r8
	mov	rax, rcx
	mov	rcx, rdx
	mov	rdx, rsi
	mov	dword ptr [rsp], r9d
	mov	esi, 0xa
	mov	r8, rax
	mov	r9, r10
	call	sub_4026d7
	.section	.text
	.align	32
	#Procedure 0x406fd1
	.globl sub_406fd1
	.type sub_406fd1, @function
sub_406fd1:

	pop	rcx
	ret	
	.section	.text
	.align	32
	#Procedure 0x406fd3
	.globl sub_406fd3
	.type sub_406fd3, @function
sub_406fd3:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x406fe0

	.globl sub_406fe0
	.type sub_406fe0, @function
sub_406fe0:
	push	rbx
	xor	esi, esi
	call	setlocale
	mov	bl, 1
	test	rax, rax
	je	.label_543
	cmp	byte ptr [rax], 0x43
	jne	.label_545
	cmp	byte ptr [rax + 1], 0
	je	.label_542
.label_545:
	mov	esi, OFFSET FLAT:label_544
	mov	rdi, rax
	call	strcmp
	test	eax, eax
	jne	.label_543
.label_542:
	xor	ebx, ebx
.label_543:
	mov	eax, ebx
	pop	rbx
	ret	
	.section	.text
	.align	32
	#Procedure 0x407011
	.globl sub_407011
	.type sub_407011, @function
sub_407011:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x407020

	.globl sub_407020
	.type sub_407020, @function
sub_407020:
	push	rbp
	push	r14
	push	rbx
	mov	r14d, edx
	mov	rbp, rsi
	mov	rbx, rdi
	mov	rax, qword ptr [rbx + 0x10]
	cmp	rax, qword ptr [rbx + 8]
	jne	.label_546
	mov	rax, qword ptr [rbx + 0x28]
	cmp	rax, qword ptr [rbx + 0x20]
	jne	.label_546
	cmp	qword ptr [rbx + 0x48], 0
	je	.label_547
.label_546:
	mov	rdi, rbx
	mov	rsi, rbp
	mov	edx, r14d
	pop	rbx
	pop	r14
	pop	rbp
	jmp	fseeko
.label_547:
	mov	rdi, rbx
	call	fileno
	mov	edi, eax
	mov	rsi, rbp
	mov	edx, r14d
	call	lseek
	mov	rcx, rax
	mov	eax, 0xffffffff
	cmp	rcx, -1
	je	.label_548
	and	byte ptr [rbx], 0xef
	mov	qword ptr [rbx + 0x90], rcx
	xor	eax, eax
.label_548:
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40708e
	.globl sub_40708e
	.type sub_40708e, @function
sub_40708e:

	nop
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
	jae	.label_554
	mov	rdx, rax
	not	rdx
	add	rdi, rdx
	shr	rdi, 4
	lea	rsi, [rdi + 1]
	mov	r8d, esi
	and	r8d, 1
	xor	ebx, ebx
	test	rdi, rdi
	je	.label_558
	sub	rsi, r8
	xor	ebx, ebx
	nop	dword ptr [rax]
.label_553:
	cmp	qword ptr [rax], 0
	je	.label_549
	xor	edi, edi
	mov	rdx, rax
	nop	dword ptr [rax + rax]
.label_557:
	mov	rdx, qword ptr [rdx + 8]
	inc	rdi
	test	rdx, rdx
	jne	.label_557
	cmp	rdi, rbx
	cmova	rbx, rdi
.label_549:
	cmp	qword ptr [rax + 0x10], 0
	je	.label_551
	lea	rdx, [rax + 0x10]
	xor	edi, edi
.label_555:
	mov	rdx, qword ptr [rdx + 8]
	inc	rdi
	test	rdx, rdx
	jne	.label_555
	cmp	rdi, rbx
	cmova	rbx, rdi
.label_551:
	add	rax, 0x20
	add	rsi, -2
	jne	.label_553
.label_558:
	test	r8, r8
	je	.label_554
	cmp	qword ptr [rax], 0
	je	.label_554
	xor	edx, edx
	nop	word ptr [rax + rax]
.label_550:
	mov	rax, qword ptr [rax + 8]
	inc	rdx
	test	rax, rax
	jne	.label_550
	cmp	rdx, rbx
	cmova	rbx, rdx
.label_554:
	mov	esi, 1
	mov	edx, OFFSET FLAT:label_556
	xor	eax, eax
	mov	rdi, r15
	call	__fprintf_chk
	mov	esi, 1
	mov	edx, OFFSET FLAT:label_552
	xor	eax, eax
	mov	rdi, r15
	mov	rcx, r12
	call	__fprintf_chk
	movq	xmm1, r14
	movdqa	xmm2, xmmword ptr [rip + label_560]
	punpckldq	xmm1, xmm2
	movapd	xmm3, xmmword ptr [rip + label_561]
	subpd	xmm1, xmm3
	pshufd	xmm0, xmm1, 0x4e
	addpd	xmm0, xmm1
	mulsd	xmm0, qword ptr [rip + label_562]
	movq	xmm1, r12
	punpckldq	xmm1, xmm2
	subpd	xmm1, xmm3
	pshufd	xmm2, xmm1, 0x4e
	addpd	xmm2, xmm1
	divsd	xmm0, xmm2
	mov	esi, 1
	mov	edx, OFFSET FLAT:label_563
	mov	al, 1
	mov	rdi, r15
	mov	rcx, r14
	call	__fprintf_chk
	mov	esi, 1
	mov	edx, OFFSET FLAT:label_559
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
	.align	32
	#Procedure 0x4071ff
	.globl sub_4071ff
	.type sub_4071ff, @function
sub_4071ff:

	nop	
.label_565:
	add	rcx, 0x10
.label_567:
	cmp	rcx, rdx
	jae	.label_564
	mov	rax, qword ptr [rcx]
	test	rax, rax
	je	.label_565
.label_566:
	ret	
.label_564:
	push	rax
	call	abort
	.section	.text
	.align	32
	#Procedure 0x407218
	.globl sub_407218
	.type sub_407218, @function
sub_407218:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x407220
	.globl sub_407220
	.type sub_407220, @function
sub_407220:

	xor	eax, eax
	cmp	qword ptr [rdi + 0x20], 0
	je	.label_566
	mov	rcx, qword ptr [rdi]
	mov	rdx, qword ptr [rdi + 8]
	jmp	.label_567
	.section	.text
	.align	32
	#Procedure 0x407232
	.globl sub_407232
	.type sub_407232, @function
sub_407232:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x407240

	.globl sub_407240
	.type sub_407240, @function
sub_407240:
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x10
	mov	r12, rsi
	mov	r14, rdi
	test	r12, r12
	je	.label_568
	xor	ebx, ebx
	test	r14, r14
	je	.label_570
	mov	esi, OFFSET FLAT:label_128
	mov	rdi, r14
	call	sub_408c30
	mov	rbx, rax
	xor	r15d, r15d
	test	rbx, rbx
	je	.label_571
.label_570:
	mov	edi, 0x1038
	call	sub_402b6b
	mov	r15, rax
	mov	qword ptr [r15], rbx
	mov	qword ptr [r15 + 8], OFFSET FLAT:usage
	mov	qword ptr [r15 + 0x10], r14
	test	rbx, rbx
	je	.label_569
	mov	rsi, r15
	.section	.text
	.align	32
	#Procedure 0x4072a0
	.globl rpl_calloc
	.type rpl_calloc, @function
rpl_calloc:

	add	esi, 0x18
	cmp	r12, 0x1000
	mov	ecx, 0x1000
	cmovbe	rcx, r12
	xor	edx, edx
	mov	rdi, rbx
	call	setvbuf
	jmp	.label_571
.label_568:
	mov	edi, 0x1038
	call	sub_402b6b
	mov	r15, rax
	mov	qword ptr [r15], 0
	mov	qword ptr [r15 + 8], OFFSET FLAT:usage
	mov	qword ptr [r15 + 0x10], 0
	jmp	.label_571
.label_569:
	mov	qword ptr [r15 + 0x18], 0
	mov	r14, r15
	.section	.text
	.align	32
	#Procedure 0x4072f9
	.globl sub_4072f9
	.type sub_4072f9, @function
sub_4072f9:

	and	byte ptr [rbp + 0x31], al
	in	eax, dx
	mov	edi, OFFSET FLAT:label_572
	xor	esi, esi
	xor	eax, eax
	.section	.text
	.align	32
	#Procedure 0x40730a
	.globl sub_40730a
	.type sub_40730a, @function
sub_40730a:

	dec	dword ptr [rcx + 0x78db85c3]
	cmp	al, 0x49
	cmp	esp, 0x800
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
	js	.label_574
	cmp	r12, 0x7ff
	mov	r13, r12
	ja	.label_573
.label_574:
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
	ja	.label_573
	.section	.text
	.align	32
	#Procedure 0x407380
	.globl rpl_fflush
	.type rpl_fflush, @function
rpl_fflush:

	add	ebx, ebp
	cmp	rbx, 0x7ff
	ja	.label_573
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
	.section	.text
	.align	32
	#Procedure 0x4073c0
	.globl rpl_freopen
	.type rpl_freopen, @function
rpl_freopen:

	cmp	r12, 0x7ff
	ja	.label_573
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
	ja	.label_573
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
	ja	.label_573
	mov	eax, 0x800
	sub	rax, r12
	cmp	rax, 4
	mov	ebx, 4
	cmovbe	rbx, rax
	call	getgid
	mov	dword ptr [rsp], eax
	add	r12, r14
	.section	.text
	.align	32
	#Procedure 0x407460
	.globl rpl_fseeko
	.type rpl_fseeko, @function
rpl_fseeko:

	lea	rsi, [rsp]
	mov	rdi, r12
	mov	rdx, rbx
	call	memcpy
.label_573:
	mov	rdi, r14
	call	sub_403980
.label_571:
	mov	rax, r15
	add	rsp, 0x10
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	ret	
	.section	.text
	.align	32
	#Procedure 0x407488
	.globl sub_407488
	.type sub_407488, @function
sub_407488:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x407490

	.globl sub_407490
	.type sub_407490, @function
sub_407490:
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
	je	.label_575
	mov	rsi, qword ptr [r13 + 0x10]
	mov	rdi, r14
	call	qword ptr [r13 + 0x30]
	mov	rbp, rax
	cmp	rbp, qword ptr [r13 + 0x10]
	jae	.label_575
	mov	rbx, qword ptr [r13]
	shl	rbp, 4
	.section	.text
	.align	32
	#Procedure 0x4074d0
	.globl rpl_mbrtowc
	.type rpl_mbrtowc, @function
rpl_mbrtowc:

	sub	ecx, dword ptr [rax - 0x75]
	xor	al, 0x2b
	test	rsi, rsi
	je	.label_581
	cmp	rsi, r14
	je	.label_591
	mov	rdi, r14
	call	qword ptr [r13 + 0x38]
	test	al, al
	je	.label_593
	mov	rax, qword ptr [r12]
.label_590:
	test	rax, rax
	jne	.label_595
	jmp	.label_581
.label_591:
	mov	rax, r14
.label_595:
	xor	ebp, ebp
	test	r15, r15
	je	.label_578
	mov	qword ptr [r15], rax
	jmp	.label_578
.label_593:
	mov	rax, qword ptr [rbx + rbp + 8]
	test	rax, rax
	je	.label_581
	lea	rbp, [rbx + rbp + 8]
	nop	word ptr [rax + rax]
.label_598:
	mov	rsi, qword ptr [rax]
	cmp	rsi, r14
	je	.label_584
	mov	rdi, r14
	.section	.text
	.align	32
	#Procedure 0x407530
	.globl close_stream
	.type close_stream, @function
close_stream:

	call	qword ptr [rbp + 0x38]
	mov	rbp, qword ptr [rbp]
	test	al, al
	jne	.label_597
	mov	rax, qword ptr [rbp + 8]
	add	rbp, 8
	test	rax, rax
	jne	.label_598
.label_581:
	mov	rcx, qword ptr [r13 + 0x10]
	mov	rax, qword ptr [r13 + 0x18]
	mov	edx, eax
	and	edx, 1
	test	rax, rax
	js	.label_589
	cvtsi2ss	xmm1, rax
	jmp	.label_592
.label_589:
	shr	rax, 1
	or	rdx, rax
	cvtsi2ss	xmm1, rdx
	addss	xmm1, xmm1
.label_592:
	mov	rax, qword ptr [r13 + 0x28]
	movss	xmm2, dword ptr [rax + 8]
	mov	edx, ecx
	and	edx, 1
	test	rcx, rcx
	js	0x40758e
	cvtsi2ss	xmm0, rcx
	jmp	.label_580
	.section	.text
	.align	32
	#Procedure 0x407590
	.globl fopen_safer
	.type fopen_safer, @function
fopen_safer:

	jmp	0xfffffffff40a7edd
	.section	.text
	.align	32
	#Procedure 0x407596
	.globl sub_407596
	.type sub_407596, @function
sub_407596:

	cvtpi2ps	xmm0, mm2
	addss	xmm0, xmm0
.label_580:
	movaps	xmm3, xmm2
	mulss	xmm3, xmm0
	ucomiss	xmm1, xmm3
	jbe	.label_582
	mov	ecx, OFFSET FLAT:default_tuning
	cmp	rax, rcx
	je	.label_585
	ucomiss	xmm2, dword ptr [rip + label_35]
	jbe	.label_588
	movss	xmm3, dword ptr [rip + label_38]
	ucomiss	xmm3, xmm2
	jbe	.label_588
	movss	xmm3, dword ptr [rax + 0xc]
	ucomiss	xmm3, dword ptr [rip + label_43]
	jbe	.label_588
	movss	xmm3, dword ptr [rax]
	xorps	xmm4, xmm4
	ucomiss	xmm3, xmm4
	jb	.label_588
	addss	xmm3, dword ptr [rip + label_35]
	ucomiss	xmm2, xmm3
	jbe	.label_588
	movss	xmm4, dword ptr [rax + 4]
	movss	xmm5, dword ptr [rip + label_45]
	ucomiss	xmm5, xmm4
	jb	.label_588
	ucomiss	xmm4, xmm3
	ja	.label_579
.label_588:
	mov	qword ptr [r13 + 40], OFFSET FLAT:default_tuning
	mov	eax, OFFSET FLAT:default_tuning
	movss	xmm2, dword ptr [rip + label_583]
	.section	.text
	.align	32
	#Procedure 0x407620
	.globl hard_locale
	.type hard_locale, @function
hard_locale:

	jmp	.label_579
.label_585:
	mov	eax, OFFSET FLAT:default_tuning
.label_579:
	movaps	xmm3, xmm2
	mulss	xmm3, xmm0
	ucomiss	xmm1, xmm3
	jbe	.label_582
	cmp	byte ptr [rax + 0x10], 0
	mulss	xmm0, dword ptr [rax + 0xc]
	jne	.label_587
	mulss	xmm0, xmm2
.label_587:
	mov	ebp, 0xffffffff
	ucomiss	xmm0, dword ptr [rip + label_76]
	jae	.label_578
	movss	xmm1, dword ptr [rip + label_49]
	.section	.text
	.align	32
	#Procedure 0x407660
	.globl hash_get_n_buckets
	.type hash_get_n_buckets, @function
hash_get_n_buckets:

	movaps	xmm2, xmm0
	subss	xmm2, xmm1
	cvttss2si	rax, xmm2
	movabs	rcx, 0x8000000000000000
	xor	rcx, rax
	.section	.text
	.align	32
	#Procedure 0x40767b
	.globl sub_40767b
	.type sub_40767b, @function
sub_40767b:

	cvttps2pi	mm6, xmm0
	ucomiss	xmm0, xmm1
	.section	.text
	.align	32
	#Procedure 0x407685
	.globl sub_407685
	.type sub_407685, @function
sub_407685:

	mov	rdi, r13
	call	sub_402180
	test	al, al
	.section	.text
	.align	32
	#Procedure 0x407690
	.globl hash_get_max_bucket_length
	.type hash_get_max_bucket_length, @function
hash_get_max_bucket_length:

	test	byte ptr [rbx + 0x49000000], dh
	mov	esi, dword ptr [rbp + 0x10]
	mov	rdi, r14
	call	qword ptr [r13 + 0x30]
	mov	rbp, rax
	cmp	rbp, qword ptr [r13 + 0x10]
	jae	.label_575
	mov	rbx, qword ptr [r13]
	shl	rbp, 4
	lea	r12, [rbx + rbp]
	mov	rsi, qword ptr [rbx + rbp]
	test	rsi, rsi
	je	.label_582
	cmp	rsi, r14
	mov	rax, r14
	je	.label_599
	mov	rdi, r14
	call	qword ptr [r13 + 0x38]
	test	al, al
	je	.label_603
	mov	rax, qword ptr [r12]
.label_599:
	test	rax, rax
	jne	.label_602
.label_582:
	cmp	qword ptr [r12], 0
	je	.label_586
	mov	rax, qword ptr [r13 + 0x48]
	test	rax, rax
	je	.label_594
	mov	rcx, qword ptr [rax + 8]
	mov	qword ptr [r13 + 0x48], rcx
	jmp	.label_596
.label_586:
	mov	qword ptr [r12], r14
	movdqu	xmm0, xmmword ptr [r13 + 0x18]
	paddq	xmm0, xmmword ptr [rip + label_576]
	movdqu	xmmword ptr [r13 + 0x18], xmm0
	jmp	.label_577
.label_594:
	mov	edi, 0x10
	call	malloc
	mov	ebp, 0xffffffff
	test	rax, rax
	je	.label_578
.label_596:
	mov	qword ptr [rax], r14
	mov	rcx, qword ptr [r12 + 8]
	mov	qword ptr [rax + 8], rcx
	mov	qword ptr [r12 + 8], rax
	inc	qword ptr [r13 + 0x20]
.label_577:
	mov	ebp, 1
.label_578:
	mov	eax, ebp
	add	rsp, 8
	pop	rbx
	.section	.text
	.align	32
	#Procedure 0x407750
	.globl hash_table_ok
	.type hash_table_ok, @function
hash_table_ok:

	pop	rsp
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_584:
	mov	rax, r14
	jmp	.label_590
.label_597:
	mov	rax, qword ptr [rbp]
	jmp	.label_590
.label_603:
	mov	rax, qword ptr [rbx + rbp + 8]
	test	rax, rax
	je	.label_582
	lea	rbp, [rbx + rbp + 8]
.label_604:
	mov	rsi, qword ptr [rax]
	cmp	rsi, r14
	je	.label_600
	mov	rdi, r14
	call	qword ptr [r13 + 0x38]
	mov	rbp, qword ptr [rbp]
	test	al, al
	jne	.label_601
	mov	rax, qword ptr [rbp + 8]
	add	rbp, 8
	test	rax, rax
	jne	.label_604
	jmp	.label_582
.label_600:
	mov	rax, r14
	jmp	.label_599
.label_601:
	mov	rax, qword ptr [rbp]
	jmp	.label_599
.label_575:
	call	abort
.label_602:
	call	abort
	.section	.text
	.align	32
	#Procedure 0x4077c1
	.globl sub_4077c1
	.type sub_4077c1, @function
sub_4077c1:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4077d0

	.globl sub_4077d0
	.type sub_4077d0, @function
sub_4077d0:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	push	rax
	mov	r15, rsi
	mov	r14, rdi
	mov	r13, qword ptr [r15]
	mov	rax, qword ptr [r15 + 8]
	cmp	r13, rax
	jae	.label_607
	test	dl, dl
	je	.label_617
	nop	dword ptr [rax]
.label_608:
	cmp	qword ptr [r13], 0
	je	.label_605
	mov	rbp, qword ptr [r13 + 8]
	.section	.text
	.align	32
	#Procedure 0x407810
	.globl hash_print_statistics
	.type hash_print_statistics, @function
hash_print_statistics:

	test	ebp, ebp
	je	.label_620
	mov	rsi, qword ptr [r14 + 0x10]
	nop	dword ptr [rax + rax]
.label_623:
	mov	rbx, qword ptr [rbp]
	mov	rdi, rbx
	call	qword ptr [r14 + 0x30]
	mov	rsi, qword ptr [r14 + 0x10]
	cmp	rax, rsi
	jae	.label_611
	mov	rdx, qword ptr [r14]
	mov	rcx, qword ptr [rbp + 8]
	shl	rax, 4
	cmp	qword ptr [rdx + rax], 0
	je	.label_621
	mov	rdi, qword ptr [rdx + rax + 8]
	mov	qword ptr [rbp + 8], rdi
	mov	qword ptr [rdx + rax + 8], rbp
	jmp	.label_622
	.section	.text
	.align	32
	#Procedure 0x40785a
	.globl sub_40785a
	.type sub_40785a, @function
sub_40785a:

	nop	word ptr [rax + rax]
.label_621:
	add	rdx, rax
	mov	qword ptr [rdx], rbx
	inc	qword ptr [r14 + 0x18]
	mov	qword ptr [rbp], 0
	mov	rax, qword ptr [r14 + 0x48]
	mov	qword ptr [rbp + 8], rax
	mov	qword ptr [r14 + 0x48], rbp
.label_622:
	test	rcx, rcx
	mov	rbp, rcx
	jne	.label_623
	mov	rax, qword ptr [r15 + 8]
.label_620:
	mov	qword ptr [r13 + 8], 0
.label_605:
	add	r13, 0x10
	cmp	r13, rax
	jb	.label_608
	jmp	.label_607
	.section	.text
	.align	32
	#Procedure 0x4078a4
	.globl sub_4078a4
	.type sub_4078a4, @function
sub_4078a4:

	nop	word ptr cs:[rax + rax]
.label_617:
	mov	r12, qword ptr [r13]
	test	r12, r12
	je	.label_618
	mov	rbp, qword ptr [r13 + 8]
	test	rbp, rbp
	mov	rsi, qword ptr [r14 + 0x10]
	je	.label_619
	nop	word ptr [rax + rax]
.label_609:
	mov	rbx, qword ptr [rbp]
	mov	rdi, rbx
	call	qword ptr [r14 + 0x30]
	mov	rsi, qword ptr [r14 + 0x10]
	cmp	rax, rsi
	jae	.label_611
	mov	rdx, qword ptr [r14]
	mov	rcx, qword ptr [rbp + 8]
	shl	rax, 4
	cmp	qword ptr [rdx + rax], 0
	je	.label_615
	mov	rdi, qword ptr [rdx + rax + 8]
	mov	qword ptr [rbp + 8], rdi
	mov	qword ptr [rdx + rax + 8], rbp
	jmp	.label_612
	.section	.text
	.align	32
	#Procedure 0x40790a
	.globl sub_40790a
	.type sub_40790a, @function
sub_40790a:

	nop	word ptr [rax + rax]
.label_615:
	add	rdx, rax
	mov	qword ptr [rdx], rbx
	inc	qword ptr [r14 + 0x18]
	mov	qword ptr [rbp], 0
	mov	rax, qword ptr [r14 + 0x48]
	mov	qword ptr [rbp + 8], rax
	mov	qword ptr [r14 + 0x48], rbp
.label_612:
	test	rcx, rcx
	mov	rbp, rcx
	jne	.label_609
	mov	r12, qword ptr [r13]
.label_619:
	mov	qword ptr [r13 + 8], 0
	mov	rdi, r12
	call	qword ptr [r14 + 0x30]
	mov	rbx, rax
	cmp	rbx, qword ptr [r14 + 0x10]
	jae	.label_606
	mov	rbp, qword ptr [r14]
	shl	rbx, 4
	cmp	qword ptr [rbp + rbx], 0
	je	hash_lookup
	mov	rax, qword ptr [r14 + 0x48]
	test	rax, rax
	je	.label_614
	mov	rcx, qword ptr [rax + 8]
	mov	qword ptr [r14 + 0x48], rcx
	jmp	.label_616
	.section	.text
	.align	32
	#Procedure 0x407978
	.globl sub_407978
	.type sub_407978, @function
sub_407978:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x407980

	.globl hash_lookup
	.type hash_lookup, @function
hash_lookup:
	add	rbp, rbx
	mov	qword ptr [rbp], r12
	inc	qword ptr [r14 + 0x18]
	jmp	.label_624
.label_614:
	mov	edi, 0x10
	call	malloc
	test	rax, rax
	je	.label_610
.label_616:
	mov	qword ptr [rax], r12
	mov	rcx, qword ptr [rbp + rbx + 8]
	mov	qword ptr [rax + 8], rcx
	mov	qword ptr [rbp + rbx + 8], rax
.label_624:
	mov	qword ptr [r13], 0
	dec	qword ptr [r15 + 0x18]
	mov	rax, qword ptr [r15 + 8]
.label_618:
	add	r13, 0x10
	cmp	r13, rax
	jb	.label_617
.label_607:
	mov	al, 1
.label_613:
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_610:
	xor	eax, eax
	jmp	.label_613
.label_611:
	call	abort
.label_606:
	call	abort
	.section	.text
	.align	32
	#Procedure 0x4079e9
	.globl sub_4079e9
	.type sub_4079e9, @function
sub_4079e9:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x4079f0

	.globl sub_4079f0
	.type sub_4079f0, @function
sub_4079f0:
	push	rbx
	mov	rbx, rsi
	test	rdi, rdi
	je	.label_625
	test	rbx, rbx
	jne	.label_625
	.section	.text
	.align	32
	#Procedure 0x407a02
	.globl sub_407a02
	.type sub_407a02, @function
sub_407a02:

	push	qword ptr [rcx]
.label_625:
	mov	rsi, rbx
	call	realloc
	test	rbx, rbx
	je	.label_627
	test	rax, rax
	je	.label_626
.label_627:
	pop	rbx
	ret	
.label_626:
	call	sub_405290
	.section	.text
	.align	32
	#Procedure 0x407a20

	.globl sub_407a20
	.type sub_407a20, @function
sub_407a20:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	push	rax
	mov	rbp, rsi
	mov	r15, rdi
	xor	eax, eax
	test	byte ptr [rbp], 0x10
	jne	.label_628
	mov	r12, qword ptr [r15 + 0x10]
	.section	.text
	.align	32
	#Procedure 0x407a44
	.globl sub_407a44
	.type sub_407a44, @function
sub_407a44:

	add	r14, r12
	mov	dword ptr [rsp + 4], edx
	movsx	edx, dl
	mov	r13, r12
	mov	dword ptr [rsp], edx
	nop	word ptr cs:[rax + rax]
.label_633:
	mov	rax, qword ptr [rbp + 8]
	cmp	rax, qword ptr [rbp + 0x10]
	jae	.label_629
	lea	rcx, [rax + 1]
	mov	qword ptr [rbp + 8], rcx
	movzx	ebx, byte ptr [rax]
.label_631:
	cmp	r13, r14
	jne	.label_632
	mov	r13, qword ptr [r15]
	mov	rdi, r12
	mov	rsi, r15
	call	sub_4087ee
	.section	.text
	.align	32
	#Procedure 0x407a88
	.globl sub_407a88
	.type sub_407a88, @function
sub_407a88:

	mov	edx, dword ptr [rsp]
	mov	r12, rax
	add	r13, r12
	mov	qword ptr [r15 + 0x10], r12
	mov	r14, r12
	add	r14, qword ptr [r15]
.label_632:
	mov	byte ptr [r13], bl
	inc	r13
	cmp	ebx, edx
	jne	.label_633
	jmp	.label_630
.label_629:
	mov	rdi, rbp
	call	__uflow
	mov	edx, dword ptr [rsp]
	mov	ebx, eax
	cmp	ebx, -1
	jne	.label_631
	cmp	r13, r12
	mov	ecx, dword ptr [rsp + 4]
	mov	eax, 0
	je	.label_628
	test	byte ptr [rbp], 0x20
	jne	.label_628
	.section	.text
	.align	32
	#Procedure 0x407ad0
	.globl hash_get_entries
	.type hash_get_entries, @function
hash_get_entries:


.label_630:
	sub	r13, r12
	mov	qword ptr [r15 + 8], r13
	mov	rax, r15
.label_628:
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x407aef
	.globl sub_407aef
	.type sub_407aef, @function
sub_407aef:

	nop
	mov	rax, qword ptr [rdi + 0x10]
	ret	
	.section	.text
	.align	32
	#Procedure 0x407af5
	.globl sub_407af5
	.type sub_407af5, @function
sub_407af5:

	nop	word ptr cs:[rax + rax]
.label_634:
	mov	ecx, 1
.label_635:
	mov	rdi, rcx
	mov	rsi, rax
	jmp	calloc
	.section	.text
	.align	32
	#Procedure 0x407b10
	.globl sub_407b10
	.type sub_407b10, @function
sub_407b10:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x407b15

	.globl sub_407b15
	.type sub_407b15, @function
sub_407b15:
	test	rdi, rdi
	mov	eax, 1
	je	.label_634
	.section	.text
	.align	32
	#Procedure 0x407b20
	.globl hash_do_for_each
	.type hash_do_for_each, @function
hash_do_for_each:

	test	esi, esi
	mov	ecx, 1
	je	.label_635
	mov	rax, rsi
	imul	rax, rdi
	xor	edx, edx
	div	rsi
	cmp	rax, rdi
	mov	rax, rsi
	mov	rcx, rdi
	je	.label_635
	push	rax
	call	__errno_location
	mov	dword ptr [rax], 0xc
	xor	eax, eax
	pop	rcx
	ret	
	.section	.text
	.align	32
	#Procedure 0x407b50

	.globl sub_407b50
	.type sub_407b50, @function
sub_407b50:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	push	rax
	mov	rbx, rdx
	mov	r14, rsi
	mov	rbp, rdi
	mov	rdi, rbx
	call	fileno
	xor	r12d, r12d
	test	eax, eax
	je	.label_638
	cmp	eax, 1
	je	.label_641
	cmp	eax, 2
	je	.label_640
	mov	edi, 2
	mov	esi, 2
	call	dup2
	cmp	eax, 2
	setne	r12b
.label_640:
	mov	r15b, r12b
	mov	edi, 1
	mov	esi, 1
	call	dup2
	cmp	eax, 1
	setne	r12b
	jmp	.label_637
.label_638:
	xor	r15d, r15d
	xor	r13d, r13d
	jmp	.label_639
.label_641:
	xor	r15d, r15d
.label_637:
	xor	r13d, r13d
	xor	edi, edi
	xor	esi, esi
	.section	.text
	.align	32
	#Procedure 0x407bc0
	.globl hash_string
	.type hash_string, @function
hash_string:

	call	dup2
	test	eax, eax
	je	.label_642
	mov	edi, OFFSET FLAT:label_512
	xor	esi, esi
	xor	eax, eax
	call	open
	mov	r13b, 1
	test	eax, eax
	je	.label_642
	mov	r13b, 1
	jmp	.label_647
.label_642:
	test	r12b, r12b
	je	.label_645
	mov	edi, OFFSET FLAT:label_512
	xor	esi, esi
	xor	eax, eax
	call	open
	cmp	eax, 1
	jne	.label_648
.label_645:
	test	r15b, r15b
	je	.label_639
	.section	.text
	.align	32
	#Procedure 0x407c00
	.globl hash_reset_tuning
	.type hash_reset_tuning, @function
hash_reset_tuning:

	mov	edi, OFFSET FLAT:label_512
	xor	esi, esi
	xor	eax, eax
	call	open
	cmp	eax, 2
	jne	.label_647
.label_639:
	mov	rdi, rbp
	mov	rsi, r14
	mov	rdx, rbx
	call	sub_4067f0
	mov	r14, rax
	jmp	.label_636
	.section	.text
	.align	32
	#Procedure 0x407c24
	.globl sub_407c24
	.type sub_407c24, @function
sub_407c24:

	jmp	.label_636
.label_648:
	mov	r12b, 1
.label_647:
	xor	r14d, r14d
	test	eax, eax
	js	.label_636
	mov	edi, eax
	call	close
	call	__errno_location
	mov	dword ptr [rax], 9
	xor	r14d, r14d
.label_636:
	call	__errno_location
	mov	rbx, rax
	mov	ebp, dword ptr [rbx]
	test	r15b, r15b
	je	.label_643
	mov	edi, 2
	call	close
.label_643:
	test	r12b, r12b
	je	.label_644
	mov	edi, 1
	call	close
.label_644:
	test	r13b, r13b
	je	.label_646
	xor	edi, edi
	call	close
.label_646:
	test	r14, r14
	jne	.label_649
	mov	dword ptr [rbx], ebp
.label_649:
	mov	rax, r14
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x407c92
	.globl sub_407c92
	.type sub_407c92, @function
sub_407c92:

	nop	word ptr cs:[rax + rax]
.label_651:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_345
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
	mov	rdi, qword ptr [rip + file_name]
	test	rdi, rdi
	mov	ebp, dword ptr [rbp]
	jne	.label_650
	xor	edi, edi
	mov	edx, OFFSET FLAT:label_353
	xor	eax, eax
	mov	esi, ebp
	mov	rcx, rbx
	call	error
	mov	edi, dword ptr [rip + exit_failure]
	call	_exit
.label_653:
	mov	edi, dword ptr [rip + exit_failure]
	call	_exit
.label_267:
	push	rbp
	push	rbx
	push	rax
	mov	rdi, qword ptr [rip + stdout]
	call	sub_402f5b
	.section	.text
	.align	32
	#Procedure 0x407cfb
	.globl sub_407cfb
	.type sub_407cfb, @function
sub_407cfb:

	test	eax, eax
	je	.label_652
	mov	bl, byte ptr [rip + ignore_EPIPE]
	call	__errno_location
	mov	rbp, rax
	cmp	bl, 0
	je	.label_651
	cmp	dword ptr [rbp], 0x20
	jne	.label_651
.label_652:
	mov	rdi, qword ptr [rip + stderr]
	call	sub_402f5b
	.section	.text
	.align	32
	#Procedure 0x407d24
	.globl sub_407d24
	.type sub_407d24, @function
sub_407d24:

	test	eax, eax
	jne	.label_653
	add	rsp, 8
	pop	rbx
	pop	rbp
	ret	
.label_650:
	call	sub_408940
	mov	rcx, rax
	xor	edi, edi
	mov	edx, OFFSET FLAT:label_99
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
	#Procedure 0x407d60
	.globl sub_407d60
	.type sub_407d60, @function
sub_407d60:

	sub	rsp, 0x38
	mov	rax, rsi
	mov	rdx, rdi
	mov	rcx, qword ptr [rip + label_23]
	mov	qword ptr [rsp + 0x30], rcx
	movups	xmm0, xmmword ptr [rip + label_24]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0, xmmword ptr [rip + label_25]
	movaps	xmmword ptr [rsp + 0x10], xmm0
	movups	xmm0, xmmword ptr [rip + default_quoting_options]
	movaps	xmmword ptr [rsp], xmm0
	or	byte ptr [rsp + 0xf], 4
	lea	rcx, [rsp]
	xor	edi, edi
	mov	rsi, rdx
	mov	rdx, rax
	call	sub_4042b0
	add	rsp, 0x38
	ret	
	.section	.text
	.align	32
	#Procedure 0x407db4
	.globl sub_407db4
	.type sub_407db4, @function
sub_407db4:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x407dc0
	.globl sub_407dc0
	.type sub_407dc0, @function
sub_407dc0:

	push	rbx
	mov	rbx, rdi
	mov	edi, 0x18
	call	sub_402b6b
	mov	qword ptr [rax], rbx
	xorps	xmm0, xmm0
	movups	xmmword ptr [rax + 8], xmm0
	pop	rbx
	ret	
	.section	.text
	.align	32
	#Procedure 0x407dda
	.globl sub_407dda
	.type sub_407dda, @function
sub_407dda:

	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x407de0
	.globl sub_407de0
	.type sub_407de0, @function
sub_407de0:

	sub	rsp, 0x38
	mov	ecx, edx
	mov	r8, rsi
	mov	rdx, rdi
	mov	rsi, qword ptr [rip + label_23]
	mov	qword ptr [rsp + 0x30], rsi
	movups	xmm0, xmmword ptr [rip + label_24]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0, xmmword ptr [rip + label_25]
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
	.section	.text
	.align	32
	#Procedure 0x407e41
	.globl sub_407e41
	.type sub_407e41, @function
sub_407e41:

	mov	rdx, r8
	call	sub_4042b0
	add	rsp, 0x38
	ret	
	.section	.text
	.align	32
	#Procedure 0x407e4e
	.globl sub_407e4e
	.type sub_407e4e, @function
sub_407e4e:

	nop	
	.section	.text
	.align	32
	#Procedure 0x407e50

	.globl raw_comparator
	.type raw_comparator, @function
raw_comparator:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x28
	.section	.text
	.align	32
	#Procedure 0x407e60
	.globl hash_clear
	.type hash_clear, @function
hash_clear:

	mov	byte ptr [rcx - 0x77], 0xd4
	mov	rbp, rsi
	mov	rbx, rdi
	cmp	r12d, 0x25
	jae	.label_667
	mov	qword ptr [rsp + 8], rcx
	call	__errno_location
	mov	r15, rax
	mov	dword ptr [r15], 0
	call	__ctype_b_loc
	mov	rcx, qword ptr [rax]
	mov	rdx, rbx
	nop	word ptr cs:[rax + rax]
.label_658:
	movzx	eax, byte ptr [rdx]
	inc	rdx
	test	byte ptr [rcx + rax*2 + 1], 0x20
	jne	.label_658
	test	rbp, rbp
	lea	rsi, [rsp + 0x20]
	cmovne	rsi, rbp
	mov	r13d, 4
	cmp	al, 0x2d
	je	.label_663
	xor	ebp, ebp
	xor	ecx, ecx
	mov	rdi, rbx
	mov	qword ptr [rsp + 0x18], rsi
	mov	edx, r12d
	call	__strtoul_internal
	mov	r12, rax
	mov	rax, qword ptr [rsp + 0x18]
	mov	rcx, qword ptr [rax]
	cmp	rcx, rbx
	je	.label_665
	mov	eax, dword ptr [r15]
	test	eax, eax
	je	.label_670
	cmp	eax, 0x22
	jne	.label_663
	mov	ebp, 1
.label_670:
	test	r14, r14
	mov	r15d, ebp
	jne	.label_654
	jmp	.label_656
.label_665:
	test	r14, r14
	.section	.text
	.align	32
	#Procedure 0x407f10
	.globl hash_free
	.type hash_free, @function
hash_free:

	je	.label_663
	movsx	esi, byte ptr [rbx]
	test	esi, esi
	je	.label_663
	mov	rdi, r14
	mov	rbx, rcx
	call	strchr
	mov	rcx, rbx
	xor	r15d, r15d
	mov	r12d, 1
	test	rax, rax
	je	.label_663
.label_654:
	movsx	r13d, byte ptr [rcx]
	test	r13d, r13d
	je	.label_656
	mov	qword ptr [rsp + 0x10], rcx
	mov	rdi, r14
	mov	esi, r13d
	call	strchr
	test	rax, rax
	je	.label_666
	mov	ecx, 1
	mov	esi, 0x400
	lea	eax, [r13 - 0x45]
	cmp	eax, 0x2f
	ja	.label_657
	movabs	rdx, 0x814400308945
	bt	rdx, rax
	jae	.label_657
	mov	esi, 0x30
	mov	rdi, r14
	call	strchr
	mov	ecx, 1
	mov	esi, 0x400
	test	rax, rax
	je	.label_657
	mov	rax, qword ptr [rsp + 0x10]
	movsx	eax, byte ptr [rax + 1]
	mov	ecx, 1
	mov	esi, 0x400
	cmp	eax, 0x42
	je	.label_662
	cmp	eax, 0x44
	je	.label_662
	cmp	eax, 0x69
	jne	.label_657
	xor	eax, eax
	mov	rcx, qword ptr [rsp + 0x10]
	cmp	byte ptr [rcx + 2], 0x42
	sete	al
	lea	rcx, [rax + rax + 1]
	mov	esi, 0x400
	.section	.text
	.align	32
	#Procedure 0x407fe0
	.globl hash_rehash
	.type hash_rehash, @function
hash_rehash:

	jmp	.label_657
.label_662:
	mov	ecx, 2
	mov	esi, 0x3e8
.label_657:
	add	r13d, -0x42
	cmp	r13d, 0x35
	ja	.label_666
	xor	eax, eax
	jmp	qword ptr [(r13 * 8) + label_671]
.label_769:
	mov	rdi, -1
	mov	rax, -1
	xor	edx, edx
	div	rsi
	cmp	rax, r12
	sbb	r8b, r8b
	mov	rbx, r12
	imul	rbx, rsi
	cmp	rax, r12
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
	jmp	.label_655
.label_666:
	mov	rax, qword ptr [rsp + 8]
	mov	qword ptr [rax], r12
	or	r15d, 2
	jmp	.label_664
.label_770:
	mov	rdi, -1
	mov	rax, -1
	xor	edx, edx
	div	rsi
	imul	rsi, r12
	cmp	rax, r12
	cmovb	rsi, rdi
	sbb	eax, eax
	jmp	.label_668
.label_771:
	mov	rdi, -1
	mov	rax, -1
	xor	edx, edx
	div	rsi
	cmp	rax, r12
	sbb	r8b, r8b
	mov	rbx, r12
	imul	rbx, rsi
	cmp	rax, r12
	cmovb	rbx, rdi
	cmp	rax, rbx
	sbb	dl, dl
	imul	rsi, rbx
	cmp	rax, rbx
	cmovb	rsi, rdi
	or	dl, r8b
	jmp	.label_661
.label_773:
	mov	r9, -1
	mov	rax, -1
	xor	edx, edx
	div	rsi
	cmp	rax, r12
	sbb	r8b, r8b
	mov	rbx, r12
	imul	rbx, rsi
	cmp	rax, r12
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
	jmp	.label_672
.label_767:
	xor	eax, eax
	mov	rdx, r12
	shr	rdx, 0x36
	setne	al
	shl	r12, 0xa
	jmp	.label_660
.label_768:
	mov	rdi, -1
	mov	rax, -1
	xor	edx, edx
	div	rsi
	cmp	rax, r12
	sbb	r8b, r8b
	mov	rbx, r12
	imul	rbx, rsi
	cmp	rax, r12
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
	jmp	.label_661
.label_772:
	mov	rdi, -1
	mov	rax, -1
	xor	edx, edx
	div	rsi
	cmp	rax, r12
	sbb	r8b, r8b
	mov	rbx, r12
	imul	rbx, rsi
	cmp	rax, r12
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
.label_672:
	or	dl, r10b
.label_655:
	or	dl, bl
.label_661:
	and	dl, 1
	movzx	eax, dl
	mov	r12, rsi
	jmp	.label_659
.label_774:
	mov	rdi, -1
	.section	.text
	.align	32
	#Procedure 0x408278
	.globl sub_408278
	.type sub_408278, @function
sub_408278:

	cmp	rax, r12
	sbb	r8b, r8b
	mov	rbx, r12
	imul	rbx, rsi
	cmp	rax, r12
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
	mov	r13d, r15d
	sbb	r15b, r15b
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
	or	dl, r15b
	mov	r15d, r13d
	or	dl, bpl
	jmp	.label_673
.label_775:
	mov	rdi, -1
	mov	rax, -1
	xor	edx, edx
	div	rsi
	cmp	rax, r12
	sbb	r8b, r8b
	mov	rbx, r12
	imul	rbx, rsi
	cmp	rax, r12
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
.label_673:
	movzx	eax, dl
.label_668:
	and	eax, 1
	mov	r12, rsi
	jmp	.label_659
.label_776:
	xor	eax, eax
	mov	rdx, r12
	shr	rdx, 0x37
	setne	al
	shl	r12, 9
.label_660:
	cmp	rdx, 1
	sbb	rdx, rdx
	not	rdx
	or	r12, rdx
	jmp	.label_659
.label_777:
	lea	rax, [r12 + r12]
	test	r12, r12
	mov	rdx, -1
	cmovns	rdx, rax
	shr	r12, 0x3f
	mov	eax, r12d
	mov	r12, rdx
.label_659:
	or	eax, r15d
	mov	rdi, qword ptr [rsp + 0x10]
	lea	rdx, [rdi + rcx]
	mov	rsi, qword ptr [rsp + 0x18]
	mov	qword ptr [rsi], rdx
	lea	r15d, [rax + 2]
	cmp	byte ptr [rdi + rcx], 0
	cmove	r15d, eax
.label_656:
	mov	rax, qword ptr [rsp + 8]
	mov	qword ptr [rax], r12
.label_664:
	mov	r13d, r15d
.label_663:
	mov	eax, r13d
	add	rsp, 0x28
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_667:
	mov	edi, OFFSET FLAT:label_187
	mov	esi, OFFSET FLAT:label_188
	mov	edx, 0x54
	mov	ecx, OFFSET FLAT:label_669
	call	__assert_fail
	.section	.text
	.align	32
	#Procedure 0x408481
	.globl sub_408481
	.type sub_408481, @function
sub_408481:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x408490
	.globl hash_insert_if_absent
	.type hash_insert_if_absent, @function
hash_insert_if_absent:

	mov	rax, rdi
	xor	edi, edi
	mov	rdx, -1
	mov	ecx, OFFSET FLAT:default_quoting_options
	mov	rsi, rax
	jmp	sub_4042b0
	.section	.text
	.align	32
	#Procedure 0x4084a9
	.globl sub_4084a9
	.type sub_4084a9, @function
sub_4084a9:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x4084b0

	.globl sub_4084b0
	.type sub_4084b0, @function
sub_4084b0:
	push	r15
	push	r14
	push	rbx
	mov	r14, rdi
	cmp	qword ptr [r14 + 0x40], 0
	je	.label_679
	cmp	qword ptr [r14 + 0x20], 0
	je	.label_679
	mov	r15, qword ptr [r14]
	mov	rax, qword ptr [r14 + 8]
	jmp	.label_676
	.section	.text
	.align	32
	#Procedure 0x4084cf
	.globl sub_4084cf
	.type sub_4084cf, @function
sub_4084cf:

	nop	
.label_674:
	add	r15, 0x10
.label_676:
	cmp	r15, rax
	jae	.label_679
	mov	rdi, qword ptr [r15]
	test	rdi, rdi
	je	.label_674
	test	r15, r15
	je	.label_674
	call	qword ptr [r14 + 0x40]
	mov	rbx, qword ptr [r15 + 8]
	jmp	.label_683
.label_684:
	mov	rdi, qword ptr [rbx]
	call	qword ptr [r14 + 0x40]
	mov	rbx, qword ptr [rbx + 8]
.label_683:
	test	rbx, rbx
	jne	.label_684
	mov	rax, qword ptr [r14 + 8]
	jmp	.label_674
.label_679:
	mov	r15, qword ptr [r14]
	mov	rax, qword ptr [r14 + 8]
	jmp	.label_682
	.section	.text
	.align	32
	#Procedure 0x40850f
	.globl sub_40850f
	.type sub_40850f, @function
sub_40850f:

	nop	
.label_675:
	add	r15, 0x10
.label_682:
	cmp	r15, rax
	jae	.label_678
	mov	rdi, qword ptr [r15 + 8]
	test	rdi, rdi
	je	.label_675
	nop	word ptr cs:[rax + rax]
.label_680:
	mov	rbx, qword ptr [rdi + 8]
	call	free
	test	rbx, rbx
	mov	rdi, rbx
	jne	.label_680
	mov	rax, qword ptr [r14 + 8]
	jmp	.label_675
.label_678:
	mov	rdi, qword ptr [r14 + 0x48]
	test	rdi, rdi
	je	.label_677
.label_681:
	mov	rbx, qword ptr [rdi + 8]
	call	free
	test	rbx, rbx
	mov	rdi, rbx
	jne	.label_681
.label_677:
	mov	rdi, qword ptr [r14]
	call	free
	mov	rdi, r14
	pop	rbx
	pop	r14
	pop	r15
	jmp	free
	.section	.text
	.align	32
	#Procedure 0x408576
	.globl sub_408576
	.type sub_408576, @function
sub_408576:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x408580

	.globl sub_408580
	.type sub_408580, @function
sub_408580:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x98
	mov	rbx, rsi
	mov	r15, rdi
	call	fileno
	lea	rdx, [rsp + 8]
	mov	edi, 1
	mov	esi, eax
	call	__fxstat
	mov	ebp, 0x2000
	test	eax, eax
	js	.label_687
	mov	eax, 0xf000
	and	eax, dword ptr [rsp + 0x20]
	mov	ebp, 0x2000
	cmp	eax, 0x8000
	jne	.label_687
	mov	rdi, r15
	call	ftello
	mov	ebp, 0x2000
	test	rax, rax
	js	.label_687
	mov	rcx, qword ptr [rsp + 0x38]
	mov	ebp, 0x2000
	sub	rcx, rax
	jle	.label_687
	cmp	rcx, -1
	je	.label_691
	inc	rcx
	mov	rbp, rcx
.label_687:
	mov	rdi, rbp
	call	malloc
	xor	r12d, r12d
	test	rax, rax
	je	.label_685
	mov	qword ptr [rsp], rbx
	xor	r14d, r14d
	mov	r13, -1
	nop	
.label_688:
	mov	r12, rax
	mov	rbx, rbp
	sub	rbx, r14
	lea	rdi, [r12 + r14]
	mov	esi, 1
	mov	rdx, rbx
	mov	rcx, r15
	call	fread
	add	r14, rax
	cmp	rax, rbx
	jne	.label_693
	cmp	rbp, -1
	je	.label_686
	mov	rbx, rbp
	shr	rbx, 1
	mov	rax, rbx
	not	rax
	add	rbx, rbp
	cmp	rbp, rax
	cmovae	rbx, r13
	mov	rdi, r12
	mov	rsi, rbx
	call	realloc
	test	rax, rax
	mov	rbp, rbx
	jne	.label_688
	call	__errno_location
	mov	r13, rax
	mov	ebx, dword ptr [r13]
	jmp	.label_689
.label_693:
	call	__errno_location
	mov	r13, rax
	mov	ebx, dword ptr [r13]
	mov	rdi, r15
	call	ferror
	test	eax, eax
	jne	.label_689
	dec	rbp
	cmp	r14, rbp
	jae	.label_690
	lea	rsi, [r14 + 1]
	mov	rdi, r12
	call	realloc
	test	rax, rax
	cmovne	r12, rax
.label_690:
	mov	rax, qword ptr [rsp]
	mov	byte ptr [r12 + r14], 0
	mov	qword ptr [rax], r14
	jmp	.label_685
.label_686:
	mov	ebx, 0xc
	call	__errno_location
	mov	r13, rax
.label_689:
	mov	rdi, r12
	call	free
	mov	dword ptr [r13], ebx
.label_692:
	xor	r12d, r12d
.label_685:
	mov	rax, r12
	add	rsp, 0x98
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_691:
	call	__errno_location
	mov	dword ptr [rax], 0xc
	jmp	.label_692
	.section	.text
	.align	32
	#Procedure 0x408701
	.globl sub_408701
	.type sub_408701, @function
sub_408701:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x408710
	.globl sub_408710
	.type sub_408710, @function
sub_408710:

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
	jae	.label_697
	xor	ebx, ebx
.label_696:
	mov	rdi, qword ptr [r13]
	test	rdi, rdi
	je	.label_698
	test	r13, r13
	je	.label_698
	mov	rsi, r14
	call	r15
	test	al, al
	je	.label_697
	mov	rbp, r13
	nop	word ptr cs:[rax + rax]
.label_695:
	mov	rbp, qword ptr [rbp + 8]
	test	rbp, rbp
	je	.label_694
	inc	rbx
	mov	rdi, qword ptr [rbp]
	mov	rsi, r14
	call	r15
	test	al, al
	jne	.label_695
	jmp	.label_697
	.section	.text
	.align	32
	#Procedure 0x40877c
	.globl sub_40877c
	.type sub_40877c, @function
sub_40877c:

	nop	dword ptr [rax]
.label_694:
	mov	rax, qword ptr [r12 + 8]
	inc	rbx
.label_698:
	add	r13, 0x10
	cmp	r13, rax
	jb	.label_696
.label_697:
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
	.align	32
	#Procedure 0x4087a3
	.globl sub_4087a3
	.type sub_4087a3, @function
sub_4087a3:

	nop	word ptr cs:[rax + rax]
.label_700:
	test	rax, rax
	mov	ebx, 0x80
	cmovne	rbx, rax
	test	rbx, rbx
	js	.label_699
	mov	qword ptr [rsi], rbx
.label_701:
	mov	rsi, rbx
	call	realloc
	test	rbx, rbx
	.section	.text
	.align	32
	#Procedure 0x4087d0
	.globl hash_insert
	.type hash_insert, @function
hash_insert:

	add	eax, 0x74c08548
.label_703:
	pop	rbx
	ret	
.label_699:
	call	sub_405290
.label_702:
	call	sub_405290
	.section	.text
	.align	32
	#Procedure 0x4087e2
	.globl sub_4087e2
	.type sub_4087e2, @function
sub_4087e2:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4087ee

	.globl sub_4087ee
	.type sub_4087ee, @function
sub_4087ee:
	push	rbx
	mov	rax, qword ptr [rsi]
	test	rdi, rdi
	je	.label_700
	.section	.text
	.align	32
	#Procedure 0x4087f8
	.globl sub_4087f8
	.type sub_4087f8, @function
sub_4087f8:

	mov	ecx, 0x55555554
	push	rbp
	push	rbp
	push	rbp
	push	rbp
	cmp	rax, rcx
	jae	.label_702
	mov	rbx, rax
	shr	rbx, 1
	add	rbx, rax
	inc	rbx
	mov	qword ptr [rsi], rbx
	jne	.label_701
	call	free
	xor	eax, eax
	jmp	.label_703
	.section	.text
	.align	32
	#Procedure 0x408820

	.globl sub_408820
	.type sub_408820, @function
sub_408820:
	push	rbx
	call	sub_407240
	mov	rbx, rax
	xor	eax, eax
	test	rbx, rbx
	je	.label_704
	mov	edi, 0x18
	call	sub_402b6b
	mov	qword ptr [rax], rbx
	xorps	xmm0, xmm0
	movups	xmmword ptr [rax + 8], xmm0
.label_704:
	pop	rbx
	ret	
	.section	.text
	.align	32
	#Procedure 0x408846
	.globl sub_408846
	.type sub_408846, @function
sub_408846:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x408850
	.globl sub_408850
	.type sub_408850, @function
sub_408850:

	mov	byte ptr [rip + ignore_EPIPE],  dil
	ret	
	.section	.text
	.align	32
	#Procedure 0x408858
	.globl sub_408858
	.type sub_408858, @function
sub_408858:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x408860
	.globl sub_408860
	.type sub_408860, @function
sub_408860:

	sub	rsp, 0x38
	mov	rax, qword ptr [rip + label_23]
	mov	qword ptr [rsp + 0x30], rax
	movups	xmm0, xmmword ptr [rip + label_24]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0, xmmword ptr [rip + label_25]
	movaps	xmmword ptr [rsp + 0x10], xmm0
	movups	xmm0, xmmword ptr [rip + default_quoting_options]
	movaps	xmmword ptr [rsp], xmm0
	mov	dword ptr [rsp], 0xa
	test	rsi, rsi
	je	.label_705
	test	rdx, rdx
	je	.label_705
	mov	qword ptr [rsp + 0x28], rsi
	mov	qword ptr [rsp + 0x30], rdx
	lea	rax, [rsp]
	mov	rsi, rcx
	mov	rdx, r8
	mov	rcx, rax
	call	sub_4042b0
	add	rsp, 0x38
	ret	
.label_705:
	call	abort
	.section	.text
	.align	32
	#Procedure 0x4088ca
	.globl sub_4088ca
	.type sub_4088ca, @function
sub_4088ca:

	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4088d0
	.globl sub_4088d0
	.type sub_4088d0, @function
sub_4088d0:

	sub	rsp, 0x38
	mov	rax, rdx
	mov	rcx, qword ptr [rip + label_23]
	mov	qword ptr [rsp + 0x30], rcx
	movups	xmm0, xmmword ptr [rip + label_24]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0, xmmword ptr [rip + label_25]
	movaps	xmmword ptr [rsp + 0x10], xmm0
	movups	xmm0, xmmword ptr [rip + default_quoting_options]
	movaps	xmmword ptr [rsp], xmm0
	mov	dword ptr [rsp], 0xa
	test	rdi, rdi
	je	.label_706
	test	rsi, rsi
	je	.label_706
	mov	qword ptr [rsp + 0x28], rdi
	mov	qword ptr [rsp + 0x30], rsi
	lea	rcx, [rsp]
	xor	edi, edi
	mov	rdx, -1
	mov	rsi, rax
	call	sub_4042b0
	add	rsp, 0x38
	ret	
.label_706:
	call	abort
	.section	.text
	.align	32
	#Procedure 0x408940

	.globl sub_408940
	.type sub_408940, @function
sub_408940:
	sub	rsp, 0x38
	mov	rax, rdi
	mov	rcx, qword ptr [rip + label_23]
	mov	qword ptr [rsp + 0x30], rcx
	movups	xmm0, xmmword ptr [rip + label_24]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0, xmmword ptr [rip + label_25]
	movaps	xmmword ptr [rsp + 0x10], xmm0
	movups	xmm0, xmmword ptr [rip + default_quoting_options]
	movaps	xmmword ptr [rsp], xmm0
	or	byte ptr [rsp + 0xf], 4
	lea	rcx, [rsp]
	xor	edi, edi
	mov	rdx, -1
	mov	rsi, rax
	call	sub_4042b0
	add	rsp, 0x38
	ret	
	.section	.text
	.align	32
	#Procedure 0x408995
	.globl sub_408995
	.type sub_408995, @function
sub_408995:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4089a0

	.globl sub_4089a0
	.type sub_4089a0, @function
sub_4089a0:
	xor	esi, esi
	mov	edx, 3
	xor	eax, eax
	jmp	.label_707
	.section	.text
	.align	32
	#Procedure 0x4089ae
	.globl sub_4089ae
	.type sub_4089ae, @function
sub_4089ae:

	nop
	sub	rsp, 0x78
	xorps	xmm0, xmm0
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movaps	xmmword ptr [rsp + 0x10], xmm0
	movaps	xmmword ptr [rsp], xmm0
	mov	dword ptr [rsp + 0x30], 0
	cmp	edi, 0xa
	je	.label_708
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
	call	sub_4042b0
	add	rsp, 0x78
	ret	
.label_708:
	call	abort
	.section	.text
	.align	32
	#Procedure 0x408a18
	.globl sub_408a18
	.type sub_408a18, @function
sub_408a18:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x408a20

	.globl sub_408a20
	.type sub_408a20, @function
sub_408a20:
	push	rax
	movabs	rax, 0x7fffffffffffffff
	xor	edx, edx
	div	rsi
	cmp	rax, rdi
	jb	.label_709
	call	sub_407b15
	test	rax, rax
	je	.label_709
	pop	rcx
	ret	
.label_709:
	call	sub_405290
	.section	.text
	.align	32
	#Procedure 0x408a46
	.globl sub_408a46
	.type sub_408a46, @function
sub_408a46:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x408a50

	.globl sub_408a50
	.type sub_408a50, @function
sub_408a50:
	mov	rax, rdi
	xor	edi, edi
	mov	rdx, -1
	mov	ecx, OFFSET FLAT:quote_quoting_options
	mov	rsi, rax
	jmp	sub_4042b0
	.section	.text
	.align	32
	#Procedure 0x408a69
	.globl sub_408a69
	.type sub_408a69, @function
sub_408a69:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x408a70
	.globl sub_408a70
	.type sub_408a70, @function
sub_408a70:

	mov	rax, qword ptr [rdi]
	mov	r9, qword ptr [rdi + 8]
	xor	r10d, r10d
	cmp	rax, r9
	mov	ecx, 0
	jae	.label_710
	mov	rcx, rax
	not	rcx
	add	r9, rcx
	shr	r9, 4
	lea	rsi, [r9 + 1]
	mov	r8d, esi
	and	r8d, 1
	.section	.text
	.align	32
	#Procedure 0x408aa0
	.globl locale_charset
	.type locale_charset, @function
locale_charset:

	xor	ecx, ecx
	test	r9, r9
	je	.label_713
	sub	rsi, r8
	xor	ecx, ecx
	xor	r10d, r10d
	nop	
.label_718:
	cmp	qword ptr [rax], 0
	je	0x408acf
	mov	rdx, rax
	nop	dword ptr [rax]
.label_714:
	inc	rcx
	mov	rdx, qword ptr [rdx + 8]
	test	rdx, rdx
	jne	.label_714
	inc	r10
	.section	.text
	.align	32
	#Procedure 0x408ad0
	.globl dup_safer
	.type dup_safer, @function
dup_safer:

	cmp	dword ptr [rax + 0x10], 0
	je	.label_716
	lea	rdx, [rax + 0x10]
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x408ae0

	.globl rpl_fcntl
	.type rpl_fcntl, @function
rpl_fcntl:
	inc	rcx
	mov	rdx, qword ptr [rdx + 8]
	test	rdx, rdx
	jne	rpl_fcntl
	inc	r10
.label_716:
	add	rax, 0x20
	add	rsi, -2
	jne	.label_718
	jmp	.label_717
.label_713:
	xor	r10d, r10d
.label_717:
	test	r8, r8
	je	.label_710
	cmp	qword ptr [rax], 0
	je	.label_710
	nop	dword ptr [rax]
.label_715:
	inc	rcx
	mov	rax, qword ptr [rax + 8]
	test	rax, rax
	jne	.label_715
	inc	r10
.label_710:
	cmp	r10, qword ptr [rdi + 0x18]
	jne	.label_712
	mov	al, 1
	cmp	rcx, qword ptr [rdi + 0x20]
	je	.label_711
.label_712:
	xor	eax, eax
.label_711:
	ret	
	.section	.text
	.align	32
	#Procedure 0x408b30

	.globl sub_408b30
	.type sub_408b30, @function
sub_408b30:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x18
	mov	r13, rsi
	mov	r15, qword ptr [rdi]
	mov	rbx, qword ptr [rdi + 8]
	lea	rax, [rdi + 8]
	mov	qword ptr [rsp], rax
	mov	qword ptr [rsp + 8], rdi
	mov	r14, qword ptr [rdi + 0x10]
	lea	rbp, [r13 + 1]
	lea	r12, [rsp + 0x10]
	nop	word ptr cs:[rax + rax]
.label_723:
	cmp	r14, r13
	jae	.label_720
	mov	rax, r14
	xor	edx, edx
	nop	word ptr [rax + rax]
.label_719:
	shl	rax, 8
	or	rax, 0xff
	inc	rdx
	cmp	rax, r13
	jb	.label_719
	mov	rdi, r15
	mov	rsi, r12
	call	sub_4066d0
	mov	rax, r12
.label_721:
	mov	rcx, rbx
	shl	rcx, 8
	movzx	ebx, byte ptr [rax]
	or	rbx, rcx
	shl	r14, 8
	or	r14, 0xff
	inc	rax
	cmp	r14, r13
	jb	.label_721
.label_720:
	mov	rcx, rbx
	mov	rsi, r14
	sub	rsi, r13
	je	.label_722
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
	ja	.label_723
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
	jmp	.label_724
.label_722:
	xorps	xmm0, xmm0
	mov	rax, qword ptr [rsp]
	movups	xmmword ptr [rax], xmm0
.label_724:
	mov	rax, rcx
	add	rsp, 0x18
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x408c2d
	.globl sub_408c2d
	.type sub_408c2d, @function
sub_408c2d:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x408c30

	.globl sub_408c30
	.type sub_408c30, @function
sub_408c30:
	push	rbp
	push	r14
	push	rbx
	mov	r14, rsi
	call	fopen
	mov	rbx, rax
	xor	eax, eax
	test	rbx, rbx
	je	.label_725
	mov	rdi, rbx
	call	fileno
	cmp	eax, 2
	ja	.label_726
	mov	edi, eax
	call	sub_4089a0
	.section	.text
	.align	32
	#Procedure 0x408c5a
	.globl sub_408c5a
	.type sub_408c5a, @function
sub_408c5a:

	mov	ebp, eax
	test	ebp, ebp
	js	.label_729
	mov	rdi, rbx
	call	sub_401c00
	test	eax, eax
	jne	.label_727
	mov	edi, ebp
	mov	rsi, r14
	call	fdopen
	test	rax, rax
	jne	.label_725
.label_727:
	call	__errno_location
	mov	rbx, rax
	mov	r14d, dword ptr [rbx]
	mov	edi, ebp
	call	close
	mov	dword ptr [rbx], r14d
	jmp	.label_728
.label_726:
	mov	rax, rbx
	jmp	.label_725
.label_729:
	call	__errno_location
	mov	rbp, rax
	mov	r14d, dword ptr [rbp]
	mov	rdi, rbx
	call	sub_401c00
	mov	dword ptr [rbp], r14d
.label_728:
	xor	eax, eax
.label_725:
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x408cb6
	.globl sub_408cb6
	.type sub_408cb6, @function
sub_408cb6:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x408cc0

	.globl sub_408cc0
	.type sub_408cc0, @function
sub_408cc0:
	push	r14
	push	rbx
	push	rax
	mov	rbx, rdi
	test	rbx, rbx
	je	.label_730
	mov	esi, 0x2f
	mov	rdi, rbx
	call	strrchr
	test	rax, rax
	lea	r14, [rax + 1]
	cmove	r14, rbx
	mov	rax, r14
	sub	rax, rbx
	cmp	rax, 7
	jl	.label_732
	lea	rdi, [r14 - 7]
	mov	esi, OFFSET FLAT:label_734
	mov	edx, 7
	call	strncmp
	test	eax, eax
	jne	.label_732
	mov	esi, OFFSET FLAT:label_733
	mov	edx, 3
	mov	rdi, r14
	call	strncmp
	test	eax, eax
	jne	.label_735
	add	r14, 3
	mov	qword ptr [rip + __progname],  r14
.label_735:
	mov	rbx, r14
.label_732:
	mov	qword ptr [rip + program_name],  rbx
	mov	qword ptr [rip + __progname_full],  rbx
	add	rsp, 8
	pop	rbx
	pop	r14
	ret	
.label_730:
	mov	rcx, qword ptr [rip + stderr]
	mov	edi, OFFSET FLAT:label_731
	mov	esi, 0x37
	mov	edx, 1
	call	fwrite
	call	abort
	.section	.text
	.align	32
	#Procedure 0x408d61
	.globl sub_408d61
	.type sub_408d61, @function
sub_408d61:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x408d70

	.globl sub_408d70
	.type sub_408d70, @function
sub_408d70:
	xor	eax, eax
	dec	rsi
	je	.label_736
	xor	eax, eax
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x408d80

	.globl rpl_nl_langinfo
	.type rpl_nl_langinfo, @function
rpl_nl_langinfo:
	inc	rax
	shr	rsi, 1
	jne	rpl_nl_langinfo
.label_736:
	imul	rax, rdi
	add	rax, 7
	shr	rax, 3
	ret	
	.section	.text
	.align	32
	#Procedure 0x408d95
	.globl sub_408d95
	.type sub_408d95, @function
sub_408d95:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x408e05
	.globl sub_408e05
	.type sub_408e05, @function
sub_408e05:

	nop	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x408e12
	.globl sub_408e12
	.type sub_408e12, @function
sub_408e12:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x408e36
	.globl sub_408e36
	.type sub_408e36, @function
sub_408e36:

	nop	word ptr cs:[rax + rax]
