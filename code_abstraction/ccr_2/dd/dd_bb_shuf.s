	.section	.text
	.align	32
	#Procedure 0x401d69
	.globl sub_401d69
	.type sub_401d69, @function
sub_401d69:

	hlt	
	.section	.text
	.align	32
	#Procedure 0x401d6a
	.globl sub_401d6a
	.type sub_401d6a, @function
sub_401d6a:

	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x401da2
	.globl sub_401da2
	.type sub_401da2, @function
sub_401da2:

	nop	dword ptr [rax]
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x401dea
	.globl sub_401dea
	.type sub_401dea, @function
sub_401dea:

	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x401e0c
	.globl sub_401e0c
	.type sub_401e0c, @function
sub_401e0c:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x401e1d
	.globl sub_401e1d
	.type sub_401e1d, @function
sub_401e1d:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x401e36
	.globl sub_401e36
	.type sub_401e36, @function
sub_401e36:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x401e40

	.globl human_readable
	.type human_readable, @function
human_readable:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x98
	mov	r14, r8
	mov	r15, rcx
	mov	r12, rsi
	mov	r13, rdi
	mov	eax, edx
	and	eax, 3
	mov	dword ptr [rsp + 0x3c], eax
	mov	dword ptr [rsp + 0x1c], edx
	mov	eax, edx
	and	eax, 0x20
	mov	dword ptr [rsp + 0x38], eax
	mov	eax, 0x400
	mov	ecx, 0x3e8
	cmovne	ecx, eax
	mov	dword ptr [rsp + 0x34], ecx
	call	localeconv
	mov	rbp, rax
	mov	rbx, qword ptr [rbp]
	mov	rdi, rbx
	call	strlen
	lea	rcx, [rax - 1]
	cmp	rcx, 0x10
	mov	ecx, 1
	cmovb	rcx, rax
	mov	qword ptr [rsp + 0x50], rcx
	mov	eax, OFFSET FLAT:label_29
	cmovb	rax, rbx
	mov	qword ptr [rsp + 0x40], rax
	mov	rbx, qword ptr [rbp + 8]
	mov	rbp, qword ptr [rbp + 0x10]
	mov	rdi, rbx
	call	strlen
	mov	rsi, r14
	cmp	rax, 0x11
	mov	r14d, OFFSET FLAT:label_40
	cmovb	r14, rbx
	mov	qword ptr [rsp + 0x20], r12
	lea	rax, [r12 + 0x287]
	mov	qword ptr [rsp + 0x28], rax
	cmp	rsi, r15
	mov	qword ptr [rsp + 0x60], rsi
	mov	qword ptr [rsp + 0x70], rbp
	mov	qword ptr [rsp + 0x68], r14
	jbe	.label_41
	test	r15, r15
	mov	r8d, dword ptr [rsp + 0x34]
	je	.label_9
	xor	edx, edx
	mov	rax, rsi
	div	r15
	test	rdx, rdx
	jne	.label_9
	xor	edx, edx
	mov	rax, rsi
	div	r15
	mov	rsi, rax
	xor	edx, edx
	mov	rax, r13
	div	rsi
	mov	r12, rax
	add	rdx, rdx
	lea	rax, [rdx + rdx*4]
	xor	edx, edx
	div	rsi
	mov	rcx, rax
	xor	ebp, ebp
	add	rdx, rdx
	setne	bpl
	cmp	rsi, rdx
	sbb	eax, eax
	and	eax, 1
	or	eax, 2
	cmp	rdx, rsi
	cmovae	ebp, eax
	jmp	.label_16
.label_41:
	xor	edx, edx
	mov	rax, r15
	div	rsi
	test	rdx, rdx
	mov	r8d, dword ptr [rsp + 0x34]
	jne	.label_9
	xor	ebp, ebp
	xor	edx, edx
	mov	rax, r15
	div	rsi
	mov	rcx, rax
	mov	r12, rcx
	imul	r12, r13
	xor	edx, edx
	mov	rax, r12
	div	rcx
	cmp	rax, r13
	mov	ecx, 0
	jne	.label_9
.label_16:
	mov	r15d, dword ptr [rsp + 0x1c]
	and	r15d, 0x10
	mov	ebx, 0xffffffff
	je	.label_30
	mov	esi, r8d
	xor	ebx, ebx
	cmp	rsi, r12
	mov	rax, qword ptr [rsp + 0x28]
	jbe	.label_33
	mov	r14, rax
	jmp	.label_13
.label_9:
	mov	qword ptr [rsp + 0x80], rsi
	xor	eax, eax
	test	rsi, rsi
	setns	al
	fild	qword ptr [rsp + 0x80]
	fadd	dword ptr [dword ptr [+ (rax * 4) + label_38]]
	mov	qword ptr [rsp + 0x88], r13
	xor	eax, eax
	test	r13, r13
	setns	al
	fild	qword ptr [rsp + 0x88]
	fadd	dword ptr [dword ptr [+ (rax * 4) + label_38]]
	mov	qword ptr [rsp + 0x90], r15
	xor	eax, eax
	test	r15, r15
	setns	al
	fild	qword ptr [rsp + 0x90]
	fadd	dword ptr [dword ptr [+ (rax * 4) + label_38]]
	fdivrp	st(2)
	fmulp	st(1)
	mov	r12d, dword ptr [rsp + 0x1c]
	test	r12b, 0x10
	jne	.label_39
	fstp	xword ptr [rsp]
	mov	edi, dword ptr [rsp + 0x3c]
	call	adjust_value
	fstp	xword ptr [rsp]
	xor	r13d, r13d
	mov	esi, 1
	mov	rdx, -1
	mov	ecx, OFFSET FLAT:label_18
	xor	eax, eax
	mov	r15, qword ptr [rsp + 0x20]
	mov	rdi, r15
	call	__sprintf_chk
	mov	rdi, r15
	call	strlen
	mov	ebx, 0xffffffff
	jmp	.label_11
.label_39:
	mov	eax, r8d
	mov	qword ptr [rsp + 0x78], rax
	fld1	
	xor	ebx, ebx
	fild	qword ptr [rsp + 0x78]
	fldz	
	nop	dword ptr [rax]
.label_31:
	fstp	st(0)
	fmul	st(1), st(0)
	inc	ebx
	fld	st(0)
	fmul	st(2)
	cmp	ebx, 7
	jg	.label_26
	fxch	st(3)
	fucomi	st(3)
	fstp	st(3)
	fldz	
	jae	.label_31
.label_26:
	fstp	st(1)
	fstp	st(0)
	fdivp	st(1)
	fld	st(0)
	fstp	xword ptr [rsp + 0x40]
	fstp	xword ptr [rsp]
	mov	ebp, dword ptr [rsp + 0x3c]
	mov	edi, ebp
	call	adjust_value
	fstp	xword ptr [rsp]
	mov	esi, 1
	mov	rdx, -1
	mov	ecx, OFFSET FLAT:label_27
	xor	eax, eax
	mov	r15, qword ptr [rsp + 0x20]
	mov	rdi, r15
	call	__sprintf_chk
	mov	rdi, r15
	call	strlen
	mov	ecx, dword ptr [rsp + 0x38]
	shr	ecx, 5
	xor	ecx, 1
	or	rcx, 2
	mov	r13, qword ptr [rsp + 0x50]
	add	rcx, r13
	cmp	rcx, rax
	jb	.label_44
	fld	xword ptr [rsp + 0x40]
	fstp	st(0)
	inc	r13
	test	r12b, 8
	je	.label_11
	cmp	byte ptr [r15 + rax - 1], 0x30
	jne	.label_11
.label_44:
	fld	dword ptr [dword ptr [rip + label_35]]
	fld	st(0)
	fstp	xword ptr [rsp + 0x50]
	fld	xword ptr [rsp + 0x40]
	fmulp	st(1)
	fstp	xword ptr [rsp]
	mov	edi, ebp
	call	adjust_value
	fld	xword ptr [rsp + 0x50]
	fdivp	st(1)
	fstp	xword ptr [rsp]
	xor	r13d, r13d
	mov	esi, 1
	mov	rdx, -1
	mov	ecx, OFFSET FLAT:label_18
	xor	eax, eax
	mov	rdi, r15
	call	__sprintf_chk
	mov	rdi, r15
	call	strlen
.label_11:
	mov	r14, qword ptr [rsp + 0x28]
	mov	rbp, r14
	sub	rbp, rax
	mov	rdi, rbp
	mov	rsi, r15
	mov	rdx, rax
	call	memmove
	sub	r14, r13
	jmp	.label_22
.label_30:
	mov	r14, qword ptr [rsp + 0x28]
	jmp	.label_13
.label_33:
	xor	ebx, ebx
	mov	r9d, dword ptr [rsp + 0x3c]
	nop	dword ptr [rax]
.label_46:
	xor	edx, edx
	mov	rax, r12
	div	rsi
	lea	edx, [rdx + rdx*4]
	lea	ecx, [rcx + rdx*2]
	mov	edi, ebp
	sar	edi, 1
	xor	edx, edx
	mov	r12, rax
	mov	eax, ecx
	div	r8d
	lea	edx, [rdi + rdx*2]
	cmp	edx, r8d
	mov	ecx, eax
	jae	.label_32
	xor	eax, eax
	add	edx, ebp
	setne	al
	mov	ebp, eax
	jmp	.label_36
	.section	.text
	.align	32
	#Procedure 0x4021d1
	.globl sub_4021d1
	.type sub_4021d1, @function
sub_4021d1:

	nop	word ptr cs:[rax + rax]
.label_32:
	add	edx, ebp
	cmp	r8d, edx
	sbb	ebp, ebp
	and	ebp, 1
	or	ebp, 2
.label_36:
	inc	ebx
	cmp	ebx, 7
	jg	.label_25
	cmp	rsi, r12
	jbe	.label_46
.label_25:
	cmp	r12, 9
	ja	.label_48
	cmp	r9d, 1
	jne	.label_49
	mov	eax, ecx
	and	eax, 1
	add	eax, ebp
	cmp	eax, 2
	ja	.label_10
	jmp	.label_14
.label_48:
	mov	r14, qword ptr [rsp + 0x28]
	jmp	.label_13
.label_49:
	test	r9d, r9d
	jne	.label_14
	test	ebp, ebp
	je	.label_14
.label_10:
	inc	ecx
	xor	ebp, ebp
	cmp	ecx, 0xa
	jne	.label_14
	inc	r12
	xor	ecx, ecx
	cmp	r12, 9
	mov	ebp, 0
	ja	.label_17
.label_14:
	mov	eax, dword ptr [rsp + 0x1c]
	test	al, 8
	je	.label_19
	test	ecx, ecx
	jne	.label_19
	mov	r14, qword ptr [rsp + 0x28]
	jmp	.label_13
.label_19:
	add	ecx, 0x30
	mov	rax, qword ptr [rsp + 0x20]
	lea	r14, [rax + 0x286]
	mov	byte ptr [rax + 0x286], cl
	mov	rdx, qword ptr [rsp + 0x50]
	sub	r14, rdx
	mov	rdi, r14
	mov	rsi, qword ptr [rsp + 0x40]
	call	memcpy
	xor	ebp, ebp
	xor	ecx, ecx
	jmp	.label_13
.label_17:
	xor	ebp, ebp
	mov	r14, qword ptr [rsp + 0x28]
	mov	r12d, 0xa
.label_13:
	mov	eax, dword ptr [rsp + 0x1c]
	and	al, 3
	je	.label_23
	cmp	al, 1
	jne	.label_28
	movsxd	rax, ebp
	mov	edx, r12d
	and	edx, 1
	xor	esi, esi
	add	rdx, rax
	setne	sil
	add	esi, ecx
	cmp	esi, 5
	jg	.label_42
	jmp	.label_28
.label_23:
	add	ecx, ebp
	jle	.label_28
.label_42:
	inc	r12
	mov	eax, dword ptr [rsp + 0x34]
	cmp	ebx, 7
	jg	.label_28
	test	r15d, r15d
	je	.label_28
	cmp	r12, rax
	jne	.label_28
	inc	ebx
	mov	r12d, 1
	mov	eax, dword ptr [rsp + 0x1c]
	test	al, 8
	jne	.label_28
	mov	byte ptr [r14 - 1], 0x30
	dec	r14
	mov	rdx, qword ptr [rsp + 0x50]
	sub	r14, rdx
	mov	rdi, r14
	mov	rsi, qword ptr [rsp + 0x40]
	call	memcpy
	mov	r12d, 1
.label_28:
	mov	r15, qword ptr [rsp + 0x20]
	movabs	rcx, 0xcccccccccccccccd
	mov	rbp, r14
	nop	word ptr cs:[rax + rax]
.label_15:
	mov	rax, r12
	mul	rcx
	mov	eax, edx
	shr	eax, 2
	and	eax, 0x3ffffffe
	lea	eax, [rax + rax*4]
	mov	esi, r12d
	sub	esi, eax
	or	sil, 0x30
	mov	byte ptr [rbp - 1], sil
	dec	rbp
	shr	rdx, 3
	cmp	r12, 9
	mov	r12, rdx
	ja	.label_15
	mov	r12d, dword ptr [rsp + 0x1c]
.label_22:
	test	r12b, 4
	je	.label_20
	sub	r14, rbp
	mov	rdi, rbp
	mov	rsi, r14
	mov	rdx, qword ptr [rsp + 0x70]
	mov	rcx, qword ptr [rsp + 0x68]
	call	group_number
	mov	rbp, rax
.label_20:
	mov	rsi, qword ptr [rsp + 0x60]
	mov	eax, dword ptr [rsp + 0x34]
	mov	rdi, qword ptr [rsp + 0x28]
	test	r12b, r12b
	jns	.label_12
	test	ebx, ebx
	jns	.label_24
	xor	ebx, ebx
	cmp	rsi, 2
	jb	.label_24
	mov	eax, eax
	xor	ecx, ecx
	mov	edx, 1
	nop	word ptr cs:[rax + rax]
.label_34:
	mov	ebx, 8
	cmp	ecx, 7
	je	.label_24
	inc	ecx
	imul	rdx, rax
	cmp	rdx, rsi
	mov	ebx, ecx
	jb	.label_34
.label_24:
	mov	eax, r12d
	and	eax, 0x100
	test	r12b, 0x40
	je	.label_37
	mov	ecx, ebx
	or	ecx, eax
	je	.label_37
	mov	byte ptr [r15 + 0x287], 0x20
	add	r15, 0x288
	mov	rdi, r15
.label_37:
	test	ebx, ebx
	je	.label_43
	cmp	dword ptr [rsp + 0x38], 0
	jne	.label_45
	mov	cl, 0x6b
	cmp	ebx, 1
	je	.label_47
.label_45:
	movsxd	rcx, ebx
	mov	cl,  byte ptr [byte ptr [rcx + power_letter]]
.label_47:
	mov	byte ptr [rdi], cl
	inc	rdi
.label_43:
	test	eax, eax
	je	.label_12
	cmp	dword ptr [rsp + 0x38], 0
	je	.label_21
	test	ebx, ebx
	je	.label_21
	mov	byte ptr [rdi], 0x69
	inc	rdi
.label_21:
	mov	byte ptr [rdi], 0x42
	inc	rdi
.label_12:
	mov	byte ptr [rdi], 0
	mov	rax, rbp
	add	rsp, 0x98
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x402440

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
	.align	32
	#Procedure 0x402476
	.globl sub_402476
	.type sub_402476, @function
sub_402476:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x402480

	.globl rpl_calloc
	.type rpl_calloc, @function
rpl_calloc:
	test	rdi, rdi
	mov	eax, 1
	je	.label_50
	test	rsi, rsi
	mov	ecx, 1
	je	.label_51
	mov	rax, rsi
	imul	rax, rdi
	xor	edx, edx
	div	rsi
	cmp	rax, rdi
	mov	rax, rsi
	mov	rcx, rdi
	je	.label_51
	push	rax
	call	__errno_location
	mov	dword ptr [rax], 0xc
	xor	eax, eax
	pop	rcx
	ret	
.label_50:
	mov	ecx, 1
.label_51:
	mov	rdi, rcx
	mov	rsi, rax
	jmp	calloc
	.section	.text
	.align	32
	#Procedure 0x4024cb
	.globl sub_4024cb
	.type sub_4024cb, @function
sub_4024cb:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4024d0

	.globl rpl_fflush
	.type rpl_fflush, @function
rpl_fflush:
	push	rbx
	mov	rbx, rdi
	test	rbx, rbx
	je	.label_52
	mov	rdi, rbx
	call	__freading
	test	eax, eax
	je	.label_52
	mov	rdi, rbx
	call	clear_ungetc_buffer_preserving_position
.label_52:
	mov	rdi, rbx
	pop	rbx
	jmp	fflush
	.section	.text
	.align	32
	#Procedure 0x4024f6
	.globl sub_4024f6
	.type sub_4024f6, @function
sub_4024f6:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x402500

	.globl ifd_reopen
	.type ifd_reopen, @function
ifd_reopen:
	push	rbp
	push	r15
	push	r14
	push	r12
	push	rbx
	mov	r14d, ecx
	mov	r15d, edx
	mov	r12, rsi
	mov	ebp, edi
	nop	word ptr cs:[rax + rax]
.label_54:
	call	process_signals
	mov	edi, ebp
	mov	rsi, r12
	mov	edx, r15d
	mov	ecx, r14d
	call	fd_reopen
	mov	ebx, eax
	test	ebx, ebx
	jns	.label_53
	call	__errno_location
	cmp	dword ptr [rax], 4
	je	.label_54
.label_53:
	mov	eax, ebx
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x402550

	.globl bkm_scale
	.type bkm_scale, @function
bkm_scale:
	movsxd	rcx, esi
	mov	rsi, -1
	mov	rax, -1
	xor	edx, edx
	div	rcx
	mov	rdx, qword ptr [rdi]
	imul	rcx, rdx
	cmp	rax, rdx
	cmovb	rcx, rsi
	sbb	eax, eax
	and	eax, 1
	mov	qword ptr [rdi], rcx
	ret	
	.section	.text
	.align	32
	#Procedure 0x40257d
	.globl sub_40257d
	.type sub_40257d, @function
sub_40257d:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x402580
	.globl c_islower
	.type c_islower, @function
c_islower:

	add	edi, -0x61
	cmp	edi, 0x1a
	setb	al
	ret	
	.section	.text
	.align	32
	#Procedure 0x40258a
	.globl sub_40258a
	.type sub_40258a, @function
sub_40258a:

	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x402590

	.globl version_etc_va
	.type version_etc_va, @function
version_etc_va:
	sub	rsp, 0x58
	xor	r9d, r9d
	nop	word ptr [rax + rax]
.label_56:
	movsxd	r10, dword ptr [r8]
	cmp	r10, 0x28
	ja	.label_55
	mov	r11, r10
	add	r11, qword ptr [r8 + 0x10]
	lea	eax, [r10 + 8]
	mov	dword ptr [r8], eax
	jmp	.label_57
	.section	.text
	.align	32
	#Procedure 0x4025b9
	.globl sub_4025b9
	.type sub_4025b9, @function
sub_4025b9:

	nop	dword ptr [rax]
.label_55:
	mov	r11, qword ptr [r8 + 8]
	lea	rax, [r11 + 8]
	mov	qword ptr [r8 + 8], rax
.label_57:
	mov	rax, qword ptr [r11]
	mov	qword ptr [rsp + r9*8], rax
	test	rax, rax
	je	.label_58
	inc	r9
	cmp	r9, 0xa
	jb	.label_56
.label_58:
	lea	r8, [rsp]
	call	version_etc_arn
	add	rsp, 0x58
	ret	
	.section	.text
	.align	32
	#Procedure 0x4025ef
	.globl sub_4025ef
	.type sub_4025ef, @function
sub_4025ef:

	nop	
	.section	.text
	.align	32
	#Procedure 0x4025f0

	.globl operand_matches
	.type operand_matches, @function
operand_matches:
	movzx	eax, byte ptr [rsi]
	test	al, al
	je	.label_59
	inc	rsi
	cmp	byte ptr [rdi], al
	lea	rdi, [rdi + 1]
	je	operand_matches
	xor	eax, eax
	ret	
.label_59:
	mov	al, byte ptr [rdi]
	test	al, al
	sete	cl
	cmp	al, dl
	sete	al
	or	al, cl
	ret	
	.section	.text
	.align	32
	#Procedure 0x402614
	.globl sub_402614
	.type sub_402614, @function
sub_402614:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x402620
	.globl human_options
	.type human_options, @function
human_options:

	push	rbx
	mov	rbx, rdx
	mov	rax, rsi
	mov	rsi, rbx
	mov	rdx, rax
	call	humblock
	cmp	qword ptr [rbx], 0
	jne	.label_60
	call	default_block_size
	mov	qword ptr [rbx], rax
	mov	eax, 4
.label_60:
	pop	rbx
	ret	
	.section	.text
	.align	32
	#Procedure 0x402647
	.globl sub_402647
	.type sub_402647, @function
sub_402647:

	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x402650

	.globl apply_translations
	.type apply_translations, @function
apply_translations:
	push	rax
	test	byte ptr [byte ptr [rip + conversions_mask]],  1
	je	.label_68
	mov	edi, OFFSET FLAT:ebcdic_to_ascii
	call	translate_charset
.label_68:
	mov	eax,  dword ptr [dword ptr [rip + conversions_mask]]
	test	al, 0x40
	jne	.label_63
	test	al, 0x20
	je	.label_67
	call	__ctype_tolower_loc
	mov	rax, qword ptr [rax]
	mov	rcx, -0x100
	nop	word ptr cs:[rax + rax]
.label_62:
	movzx	edx,  byte ptr [byte ptr [rcx + input_file]]
	movzx	edx, byte ptr [rax + rdx*4]
	mov	byte ptr [byte ptr [rcx + input_file]],  dl
	inc	rcx
	jne	.label_62
	jmp	.label_64
.label_63:
	call	__ctype_toupper_loc
	mov	rax, qword ptr [rax]
	mov	rcx, -0x100
	nop	word ptr [rax + rax]
.label_61:
	movzx	edx,  byte ptr [byte ptr [rcx + input_file]]
	movzx	edx, byte ptr [rax + rdx*4]
	mov	byte ptr [byte ptr [rcx + input_file]],  dl
	inc	rcx
	jne	.label_61
.label_64:
	mov	byte ptr [byte ptr [rip + translation_needed]],  1
.label_67:
	mov	eax,  dword ptr [dword ptr [rip + conversions_mask]]
	test	al, 2
	jne	.label_69
	test	al, 4
	je	.label_65
	mov	edi, OFFSET FLAT:ascii_to_ibm
	jmp	.label_66
.label_69:
	mov	edi, OFFSET FLAT:ascii_to_ebcdic
.label_66:
	call	translate_charset
	mov	byte ptr [byte ptr [rip + newline_character]],  1
	mov	byte ptr [byte ptr [rip + space_character]],  1
.label_65:
	pop	rax
	ret	
	.section	.text
	.align	32
	#Procedure 0x40270c
	.globl sub_40270c
	.type sub_40270c, @function
sub_40270c:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x402710

	.globl swab_buffer
	.type swab_buffer, @function
swab_buffer:
	cmp	byte ptr [byte ptr [rip + char_is_saved]],  1
	jne	.label_70
	mov	al,  byte ptr [byte ptr [rip + saved_char]]
	mov	byte ptr [rdi - 1], al
	dec	rdi
	inc	qword ptr [rsi]
	mov	byte ptr [byte ptr [rip + char_is_saved]],  0
.label_70:
	mov	rax, qword ptr [rsi]
	test	al, 1
	je	.label_73
	lea	rcx, [rax - 1]
	mov	qword ptr [rsi], rcx
	mov	al, byte ptr [rdi + rax - 1]
	mov	byte ptr [byte ptr [rip + saved_char]],  al
	mov	byte ptr [byte ptr [rip + char_is_saved]],  1
.label_73:
	mov	rax, qword ptr [rsi]
	mov	rcx, rax
	shr	rcx, 1
	je	.label_72
	add	rax, rdi
	neg	rcx
	nop	
.label_71:
	movzx	edx, byte ptr [rax - 2]
	mov	byte ptr [rax], dl
	lea	rax, [rax - 2]
	inc	rcx
	jne	.label_71
.label_72:
	inc	rdi
	mov	rax, rdi
	ret	
	.section	.text
	.align	32
	#Procedure 0x402776
	.globl sub_402776
	.type sub_402776, @function
sub_402776:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x402780

	.globl interrupt_handler
	.type interrupt_handler, @function
interrupt_handler:
	mov	dword ptr [dword ptr [rip + interrupt_signal]],  edi
	ret	
	.section	.text
	.align	32
	#Procedure 0x402787
	.globl sub_402787
	.type sub_402787, @function
sub_402787:

	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x402790

	.globl quotearg_n_style
	.type quotearg_n_style, @function
quotearg_n_style:
	push	rbp
	push	r14
	push	rbx
	sub	rsp, 0x40
	mov	rbx, rdx
	mov	ebp, edi
	lea	r14, [rsp + 8]
	mov	rdi, r14
	call	quoting_options_from_style
	mov	rdx, -1
	mov	edi, ebp
	mov	rsi, rbx
	mov	rcx, r14
	call	quotearg_n_options
	add	rsp, 0x40
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x4027c7
	.globl sub_4027c7
	.type sub_4027c7, @function
sub_4027c7:

	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4027d0
	.globl xnmalloc
	.type xnmalloc, @function
xnmalloc:

	movabs	rax, 0x7fffffffffffffff
	xor	edx, edx
	div	rsi
	cmp	rax, rdi
	jb	.label_74
	imul	rsi, rdi
	mov	rdi, rsi
	jmp	xmalloc
.label_74:
	push	rax
	call	xalloc_die
	.section	.text
	.align	32
	#Procedure 0x4027f3
	.globl sub_4027f3
	.type sub_4027f3, @function
sub_4027f3:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x402800

	.globl xmalloc
	.type xmalloc, @function
xmalloc:
	push	rbx
	mov	rbx, rdi
	call	malloc
	test	rbx, rbx
	je	.label_75
	test	rax, rax
	je	.label_76
.label_75:
	pop	rbx
	ret	
.label_76:
	call	xalloc_die
	.section	.text
	.align	32
	#Procedure 0x40281a
	.globl sub_40281a
	.type sub_40281a, @function
sub_40281a:

	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x402820

	.globl multiple_bits_set
	.type multiple_bits_set, @function
multiple_bits_set:
	lea	eax, [rdi - 1]
	test	eax, edi
	setne	al
	ret	
	.section	.text
	.align	32
	#Procedure 0x402829
	.globl sub_402829
	.type sub_402829, @function
sub_402829:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x402830

	.globl nl_error
	.type nl_error, @function
nl_error:
	push	rbp
	push	r14
	push	rbx
	sub	rsp, 0xd0
	mov	r14, rdx
	mov	ebp, esi
	mov	ebx, edi
	test	al, al
	je	.label_77
	movaps	xmmword ptr [rsp + 0x50], xmm0
	movaps	xmmword ptr [rsp + 0x60], xmm1
	movaps	xmmword ptr [rsp + 0x70], xmm2
	movaps	xmmword ptr [rsp + 0x80], xmm3
	movaps	xmmword ptr [rsp + 0x90], xmm4
	movaps	xmmword ptr [rsp + 0xa0], xmm5
	movaps	xmmword ptr [rsp + 0xb0], xmm6
	movaps	xmmword ptr [rsp + 0xc0], xmm7
.label_77:
	mov	qword ptr [rsp + 0x48], r9
	mov	qword ptr [rsp + 0x40], r8
	mov	qword ptr [rsp + 0x38], rcx
	cmp	dword ptr [dword ptr [rip + progress_len]],  0
	jle	.label_78
	mov	rsi,  qword ptr [word ptr [rip + stderr]]
	mov	edi, 0xa
	call	fputc_unlocked
	mov	dword ptr [dword ptr [rip + progress_len]],  0
.label_78:
	lea	rax, [rsp + 0x20]
	mov	qword ptr [rsp + 0x10], rax
	lea	rax, [rsp + 0xf0]
	mov	qword ptr [rsp + 8], rax
	mov	dword ptr [rsp + 4], 0x30
	mov	dword ptr [rsp], 0x18
	lea	rcx, [rsp]
	mov	edi, ebx
	mov	esi, ebp
	mov	rdx, r14
	call	verror
	add	rsp, 0xd0
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x4028f2
	.globl sub_4028f2
	.type sub_4028f2, @function
sub_4028f2:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x402900

	.globl __argmatch_die
	.type __argmatch_die, @function
__argmatch_die:
	mov	edi, 1
	jmp	usage
	.section	.text
	.align	32
	#Procedure 0x40290a
	.globl sub_40290a
	.type sub_40290a, @function
sub_40290a:

	nop	word ptr [rax + rax]
.label_81:
	call	cleanup
	call	print_stats
	mov	edi, ebp
	call	raise
.label_82:
	cmp	dword ptr [dword ptr [rip + interrupt_signal]],  0
	jne	.label_79
	cmp	dword ptr [dword ptr [rip + info_signal_count]],  0
	je	.label_83
.label_79:
	xor	edi, edi
	mov	esi, OFFSET FLAT:caught_signals
	mov	rdx, rbx
	call	sigprocmask
	mov	ebp,  dword ptr [dword ptr [rip + interrupt_signal]]
	mov	eax,  dword ptr [dword ptr [rip + info_signal_count]]
	test	eax, eax
	je	.label_80
	dec	eax
	mov	dword ptr [dword ptr [rip + info_signal_count]],  eax
.label_80:
	mov	edi, 2
	xor	edx, edx
	mov	rsi, rbx
	call	sigprocmask
	test	ebp, ebp
	jne	.label_81
	call	print_stats
	jmp	.label_82
	.section	.text
	.align	32
	#Procedure 0x402974

	.globl process_signals
	.type process_signals, @function
process_signals:
	push	rbp
	push	rbx
	sub	rsp, 0x88
	lea	rbx, [rsp + 8]
	jmp	.label_82
.label_83:
	add	rsp, 0x88
	pop	rbx
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40298e
	.globl sub_40298e
	.type sub_40298e, @function
sub_40298e:

	nop	
	.section	.text
	.align	32
	#Procedure 0x402990

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
	je	.label_87
	mov	qword ptr [rsp + 8], -1
	xor	eax, eax
	mov	qword ptr [rsp + 0x10], rax
	mov	qword ptr [rsp + 0x18], r14
	xor	ebp, ebp
	nop	dword ptr [rax + rax]
.label_84:
	mov	rdi, r15
	mov	rsi, r12
	mov	rdx, rbx
	call	strncmp
	test	eax, eax
	jne	.label_85
	mov	rdi, r15
	call	strlen
	cmp	rax, rbx
	je	.label_89
	cmp	qword ptr [rsp + 8], -1
	je	.label_90
	mov	rax, qword ptr [rsp + 0x18]
	test	rax, rax
	je	.label_86
	mov	rdi, qword ptr [rsp + 8]
	imul	rdi, r13
	add	rdi, rax
	mov	rsi, r14
	mov	rdx, r13
	call	memcmp
	test	eax, eax
	je	.label_85
.label_86:
	mov	al, 1
	mov	qword ptr [rsp + 0x10], rax
	jmp	.label_85
.label_90:
	mov	qword ptr [rsp + 8], rbp
	nop	word ptr [rax + rax]
.label_85:
	mov	rax, qword ptr [rsp + 0x20]
	mov	r15, qword ptr [rax + rbp*8 + 8]
	inc	rbp
	add	r14, r13
	test	r15, r15
	jne	.label_84
	jmp	.label_88
.label_87:
	mov	qword ptr [rsp + 8], -1
	xor	eax, eax
	mov	qword ptr [rsp + 0x10], rax
.label_88:
	mov	rax, qword ptr [rsp + 0x10]
	test	al, 1
	mov	rbp, -2
	cmove	rbp, qword ptr [rsp + 8]
.label_89:
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
	.align	32
	#Procedure 0x402a8d
	.globl sub_402a8d
	.type sub_402a8d, @function
sub_402a8d:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x402a90
	.globl quotearg_custom_mem
	.type quotearg_custom_mem, @function
quotearg_custom_mem:

	mov	rax, rcx
	mov	rcx, rdx
	mov	rdx, rsi
	mov	rsi, rdi
	xor	edi, edi
	mov	r8, rax
	jmp	quotearg_n_custom_mem
	.section	.text
	.align	32
	#Procedure 0x402aa6
	.globl sub_402aa6
	.type sub_402aa6, @function
sub_402aa6:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x402ab0

	.globl main
	.type main, @function
main:
	push	rbp
	push	r14
	push	rbx
	sub	rsp, 0x90
	mov	rbx, rsi
	mov	r14d, edi
	call	install_signal_handlers
	mov	rdi, qword ptr [rbx]
	call	set_program_name
	mov	edi, 6
	mov	esi, OFFSET FLAT:label_40
	call	setlocale
	mov	edi, OFFSET FLAT:label_94
	mov	esi, OFFSET FLAT:label_118
	call	bindtextdomain
	mov	edi, OFFSET FLAT:label_94
	call	textdomain
	mov	edi, OFFSET FLAT:maybe_close_stdout
	call	atexit
	call	getpagesize
	cdqe	
	mov	qword ptr [word ptr [rip + page_size]],  rax
	mov	r8,  qword ptr [word ptr [rip + Version]]
	sub	rsp, 8
	xor	ebp, ebp
	mov	edx, OFFSET FLAT:label_93
	mov	ecx, OFFSET FLAT:label_94
	mov	r9d, 1
	mov	eax, 0
	mov	edi, r14d
	mov	rsi, rbx
	push	0
	push	OFFSET FLAT:label_95
	push	OFFSET FLAT:label_96
	push	OFFSET FLAT:label_97
	push	OFFSET FLAT:usage
	call	parse_gnu_standard_options_only
	add	rsp, 0x30
	mov	byte ptr [byte ptr [rip + close_stdout_required]],  1
	nop	dword ptr [rax]
.label_119:
	mov	byte ptr [byte ptr [rbp + trans_table]],  bpl
	inc	rbp
	cmp	rbp, 0x100
	jne	.label_119
	mov	edi, r14d
	mov	rsi, rbx
	call	scanargs
	call	apply_translations
	mov	rsi,  qword ptr [word ptr [rip + input_file]]
	test	rsi, rsi
	je	.label_92
	mov	edx,  dword ptr [dword ptr [rip + input_flags]]
	xor	edi, edi
	xor	ecx, ecx
	call	ifd_reopen
	test	eax, eax
	jns	.label_104
	call	__errno_location
	mov	ebx, dword ptr [rax]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_106
	mov	edx, 5
	call	dcgettext
	mov	rbp, rax
	mov	rsi,  qword ptr [word ptr [rip + input_file]]
	jmp	.label_113
.label_92:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_112
	mov	edx, 5
	call	dcgettext
	mov	qword ptr [word ptr [rip + input_file]],  rax
	mov	esi,  dword ptr [dword ptr [rip + input_flags]]
	xor	edi, edi
	mov	rdx, rax
	call	set_fd_flags
.label_104:
	xor	ebp, ebp
	xor	edi, edi
	xor	esi, esi
	mov	edx, 1
	call	lseek
	test	rax, rax
	setns	byte ptr [byte ptr [rip + input_seekable]]
	cmovs	rax, rbp
	mov	qword ptr [word ptr [rip + input_offset]],  rax
	call	__errno_location
	mov	r14, rax
	mov	eax, dword ptr [r14]
	mov	dword ptr [dword ptr [rip + input_seek_errno]],  eax
	mov	rsi,  qword ptr [word ptr [rip + output_file]]
	test	rsi, rsi
	je	.label_103
	mov	eax,  dword ptr [dword ptr [rip + conversions_mask]]
	mov	ecx, eax
	shr	ecx, 6
	mov	edx, ecx
	not	edx
	and	edx, 0x40
	and	ecx, 0x80
	mov	rdi,  qword ptr [word ptr [rip + seek_records]]
	xor	ebx, ebx
	cmp	rdi, 0
	sete	bl
	shl	ebx, 9
	test	ah, 2
	cmovne	ebx, ebp
	or	ecx,  dword ptr [dword ptr [rip + output_flags]]
	or	ebx, edx
	or	ebx, ecx
	cmp	rdi, 0
	je	.label_109
	mov	edx, ebx
	or	edx, 2
	mov	edi, 1
	mov	ecx, 0x1b6
	call	ifd_reopen
	test	eax, eax
	jns	.label_99
.label_109:
	mov	rsi,  qword ptr [word ptr [rip + output_file]]
	or	ebx, 1
	mov	edi, 1
	mov	ecx, 0x1b6
	mov	edx, ebx
	call	ifd_reopen
	test	eax, eax
	js	.label_107
.label_99:
	mov	rcx,  qword ptr [word ptr [rip + seek_records]]
	test	rcx, rcx
	je	.label_91
	test	byte ptr [byte ptr [rip + label_100]],  2
	jne	.label_91
	mov	rbx,  qword ptr [word ptr [rip + output_blocksize]]
	movabs	rax, 0x7fffffffffffffff
	xor	edx, edx
	div	rbx
	cmp	rax, rcx
	jb	.label_114
	imul	rbx, rcx
	add	rbx,  qword ptr [word ptr [rip + seek_bytes]]
	mov	rdi, rbx
	call	iftruncate
	test	eax, eax
	je	.label_91
	mov	ebp, dword ptr [r14]
	lea	rsi, [rsp]
	mov	edi, 1
	call	fstat
	test	eax, eax
	jne	.label_105
	movzx	eax, word ptr [rsp + 0x18]
	and	eax, 0xf000
	cmp	eax, 0x4000
	je	.label_115
	movzx	eax, ax
	cmp	eax, 0x8000
	jne	.label_91
.label_115:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_110
	mov	edx, 5
	call	dcgettext
	mov	r14, rax
	mov	rsi,  qword ptr [word ptr [rip + output_file]]
	mov	edi, 4
	call	quotearg_style
	mov	r8, rax
	mov	edi, 1
	xor	eax, eax
	mov	esi, ebp
	mov	rdx, r14
	mov	rcx, rbx
	call	nl_error
.label_103:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_123
	mov	edx, 5
	call	dcgettext
	mov	qword ptr [word ptr [rip + output_file]],  rax
	mov	esi,  dword ptr [dword ptr [rip + output_flags]]
	mov	edi, 1
	mov	rdx, rax
	call	set_fd_flags
.label_91:
	call	gethrxtime
	mov	qword ptr [word ptr [rip + start_time]],  rax
	add	rax, 0x3b9aca00
	mov	qword ptr [word ptr [rip + next_time]],  rax
	call	dd_copy
	mov	ebx, eax
	mov	rcx,  qword ptr [word ptr [rip + max_bytes]]
	mov	al,  byte ptr [byte ptr [rip + i_nocache]]
	or	rcx,  qword ptr [word ptr [rip + max_records]]
	je	.label_111
	cmp	byte ptr [byte ptr [rip + i_nocache_eof]],  0
	jne	.label_117
	xor	al, 1
	test	al, 1
	jne	.label_120
.label_117:
	xor	edi, edi
	xor	esi, esi
	call	invalidate_cache
.label_120:
	cmp	byte ptr [byte ptr [rip + o_nocache_eof]],  0
	jne	.label_101
	mov	al,  byte ptr [byte ptr [rip + o_nocache]]
	xor	al, 1
	test	al, 1
	jne	.label_102
.label_101:
	mov	edi, 1
	xor	esi, esi
	call	invalidate_cache
	jmp	.label_102
.label_111:
	test	al, 1
	je	.label_108
	xor	edi, edi
	xor	esi, esi
	call	invalidate_cache
	test	al, al
	jne	.label_108
	mov	ebx, dword ptr [r14]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_98
	mov	edx, 5
	call	dcgettext
	mov	rbp, rax
	mov	rdx,  qword ptr [word ptr [rip + input_file]]
	xor	edi, edi
	mov	esi, 3
	call	quotearg_n_style_colon
	mov	rcx, rax
	xor	edi, edi
	xor	eax, eax
	mov	esi, ebx
	mov	rdx, rbp
	call	nl_error
	mov	ebx, 1
.label_108:
	cmp	byte ptr [byte ptr [rip + o_nocache]],  1
	jne	.label_102
	mov	edi, 1
	xor	esi, esi
	call	invalidate_cache
	test	al, al
	jne	.label_102
	mov	ebx, dword ptr [r14]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_98
	mov	edx, 5
	call	dcgettext
	mov	rbp, rax
	mov	rdx,  qword ptr [word ptr [rip + output_file]]
	xor	edi, edi
	mov	esi, 3
	call	quotearg_n_style_colon
	mov	rcx, rax
	xor	edi, edi
	xor	eax, eax
	mov	esi, ebx
	mov	rdx, rbp
	call	nl_error
	mov	ebx, 1
.label_102:
	call	finish_up
	mov	eax, ebx
	add	rsp, 0x90
	pop	rbx
	pop	r14
	pop	rbp
	ret	
.label_107:
	mov	ebx, dword ptr [r14]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_106
	jmp	.label_116
.label_114:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_121
	mov	edx, 5
	call	dcgettext
	mov	rdx, rax
	mov	rcx,  qword ptr [word ptr [rip + seek_records]]
	mov	edi, 1
	xor	esi, esi
	xor	eax, eax
	mov	r8, rbx
	call	nl_error
.label_105:
	mov	ebx, dword ptr [r14]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_122
.label_116:
	mov	edx, 5
	call	dcgettext
	mov	rbp, rax
	mov	rsi,  qword ptr [word ptr [rip + output_file]]
.label_113:
	mov	edi, 4
	call	quotearg_style
	mov	rcx, rax
	mov	edi, 1
	xor	eax, eax
	mov	esi, ebx
	mov	rdx, rbp
	call	nl_error
	nop	
	.section	.text
	.align	32
	#Procedure 0x402f50

	.globl rpl_fclose
	.type rpl_fclose, @function
rpl_fclose:
	push	rbp
	push	rbx
	push	rax
	mov	rbx, rdi
	call	fileno
	test	eax, eax
	js	.label_124
	mov	rdi, rbx
	call	__freading
	test	eax, eax
	je	.label_126
	mov	rdi, rbx
	call	fileno
	xor	esi, esi
	mov	edx, 1
	mov	edi, eax
	call	lseek
	cmp	rax, -1
	je	.label_124
.label_126:
	mov	rdi, rbx
	call	rpl_fflush
	test	eax, eax
	je	.label_124
	call	__errno_location
	mov	ebp, dword ptr [rax]
	mov	rdi, rbx
	call	fclose
	test	ebp, ebp
	je	.label_125
	call	__errno_location
	mov	dword ptr [rax], ebp
	mov	eax, 0xffffffff
.label_125:
	add	rsp, 8
	pop	rbx
	pop	rbp
	ret	
.label_124:
	mov	rdi, rbx
	add	rsp, 8
	pop	rbx
	pop	rbp
	jmp	fclose
	.section	.text
	.align	32
	#Procedure 0x402fc7
	.globl sub_402fc7
	.type sub_402fc7, @function
sub_402fc7:

	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x402fd0

	.globl translate_buffer
	.type translate_buffer, @function
translate_buffer:
	push	r14
	push	rbx
	push	rax
	mov	r14, rsi
	mov	rbx, rdi
	test	r14, r14
	je	.label_127
	nop	
.label_128:
	movsx	edi, byte ptr [rbx]
	call	to_uchar
	movzx	eax, al
	movzx	eax,  byte ptr [byte ptr [rax + trans_table]]
	mov	byte ptr [rbx], al
	inc	rbx
	dec	r14
	jne	.label_128
.label_127:
	add	rsp, 8
	pop	rbx
	pop	r14
	ret	
	.section	.text
	.align	32
	#Procedure 0x403004
	.globl sub_403004
	.type sub_403004, @function
sub_403004:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x403010
	.globl c_isdigit
	.type c_isdigit, @function
c_isdigit:

	add	edi, -0x30
	cmp	edi, 0xa
	setb	al
	ret	
	.section	.text
	.align	32
	#Procedure 0x40301a
	.globl sub_40301a
	.type sub_40301a, @function
sub_40301a:

	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x403020
	.globl c_isxdigit
	.type c_isxdigit, @function
c_isxdigit:

	add	edi, -0x30
	cmp	edi, 0x36
	ja	.label_129
	movabs	rax, 0x7e0000007e03ff
	mov	ecx, edi
	shr	rax, cl
	and	eax, 1
	ret	
.label_129:
	xor	eax, eax
	ret	
	.section	.text
	.align	32
	#Procedure 0x40303e
	.globl sub_40303e
	.type sub_40303e, @function
sub_40303e:

	nop	
	.section	.text
	.align	32
	#Procedure 0x403040

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
	je	.label_130
	mov	esi, OFFSET FLAT:label_131
	jmp	.label_132
.label_130:
	mov	esi, OFFSET FLAT:label_133
.label_132:
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
	.align	32
	#Procedure 0x4030b0
	.globl quotearg_custom
	.type quotearg_custom, @function
quotearg_custom:

	mov	rax, rdx
	mov	rcx, rsi
	mov	rdx, rdi
	xor	edi, edi
	mov	rsi, rdx
	mov	rdx, rcx
	mov	rcx, rax
	jmp	quotearg_n_custom
	.section	.text
	.align	32
	#Procedure 0x4030c9
	.globl sub_4030c9
	.type sub_4030c9, @function
sub_4030c9:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x4030d0

	.globl print_stats
	.type print_stats, @function
print_stats:
	cmp	dword ptr [dword ptr [rip + status_level]],  1
	je	.label_138
	push	rbx
	sub	rsp, 0x10
	cmp	dword ptr [dword ptr [rip + progress_len]],  0
	jle	.label_140
	mov	rsi,  qword ptr [word ptr [rip + stderr]]
	mov	edi, 0xa
	call	fputc_unlocked
	mov	dword ptr [dword ptr [rip + progress_len]],  0
.label_140:
	mov	rbx,  qword ptr [word ptr [rip + stderr]]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_135
	mov	edx, 5
	call	dcgettext
	mov	rdx, rax
	mov	rcx,  qword ptr [word ptr [rip + r_full]]
	mov	r8,  qword ptr [word ptr [rip + r_partial]]
	mov	r9,  qword ptr [word ptr [rip + w_full]]
	mov	rax,  qword ptr [word ptr [rip + w_partial]]
	mov	qword ptr [rsp], rax
	mov	esi, 1
	xor	eax, eax
	mov	rdi, rbx
	call	__fprintf_chk
	mov	rdi,  qword ptr [word ptr [rip + r_truncate]]
	test	rdi, rdi
	je	.label_134
	mov	rbx,  qword ptr [word ptr [rip + stderr]]
	call	select_plural
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_136
	mov	edx, OFFSET FLAT:label_137
	mov	r8d, 5
	mov	rcx, rax
	call	dcngettext
	mov	rdx, rax
	mov	rcx,  qword ptr [word ptr [rip + r_truncate]]
	mov	esi, 1
	xor	eax, eax
	mov	rdi, rbx
	call	__fprintf_chk
.label_134:
	cmp	dword ptr [dword ptr [rip + status_level]],  2
	lea	rsp, [rsp + 0x10]
	pop	rbx
	jne	.label_139
.label_138:
	ret	
.label_139:
	xor	edi, edi
	jmp	print_xfer_stats
	.section	.text
	.align	32
	#Procedure 0x4031af
	.globl sub_4031af
	.type sub_4031af, @function
sub_4031af:

	nop	
	.section	.text
	.align	32
	#Procedure 0x4031b0

	.globl print_xfer_stats
	.type print_xfer_stats, @function
print_xfer_stats:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x7e8
	mov	r14, rdi
	test	r14, r14
	mov	rbx, r14
	jne	.label_154
	call	gethrxtime
	mov	rbx, rax
.label_154:
	mov	rdi,  qword ptr [word ptr [rip + w_bytes]]
	lea	rsi, [rsp + 0x30]
	mov	edx, 0x1d1
	mov	ecx, 1
	mov	r8d, 1
	call	human_readable
	mov	r15, rax
	mov	rdi,  qword ptr [word ptr [rip + w_bytes]]
	lea	rsi, [rsp + 0x2be]
	mov	edx, 0x1f1
	mov	ecx, 1
	mov	r8d, 1
	call	human_readable
	mov	r12, rax
	lea	r13, [rsp + 0x54c]
	sub	rbx,  qword ptr [word ptr [rip + start_time]]
	jle	.label_151
	movq	xmm0, rbx
	punpckldq	xmm0,  xmmword ptr [word ptr [rip + label_159]]
	subpd	xmm0,  xmmword ptr [word ptr [rip + label_160]]
	pshufd	xmm1, xmm0, 0x4e
	addpd	xmm1, xmm0
	divsd	xmm1,  qword ptr [word ptr [rip + label_161]]
	movapd	xmmword ptr [rsp], xmm1
	mov	rdi,  qword ptr [word ptr [rip + w_bytes]]
	mov	edx, 0x1d1
	mov	ecx, 0x3b9aca00
	mov	rsi, r13
	mov	r8, rbx
	call	human_readable
	mov	r13, rax
	mov	rdi, r13
	call	strlen
	mov	byte ptr [r13 + rax + 2], 0
	mov	word ptr [r13 + rax], 0x732f
	jmp	.label_141
.label_151:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_158
	mov	edx, 5
	call	dcgettext
	mov	rbp, rax
	mov	esi, 0x28e
	mov	edx, 1
	mov	ecx, 0x28e
	mov	r8d, OFFSET FLAT:label_155
	xor	eax, eax
	mov	rdi, r13
	mov	r9, rbp
	call	__snprintf_chk
	xorpd	xmm0, xmm0
	movapd	xmmword ptr [rsp], xmm0
.label_141:
	test	r14, r14
	je	.label_148
	mov	rsi,  qword ptr [word ptr [rip + stderr]]
	mov	edi, 0xd
	call	fputc_unlocked
.label_148:
	test	r14, r14
	mov	eax, OFFSET FLAT:label_156
	mov	r8d, OFFSET FLAT:label_157
	cmovne	r8, rax
	lea	rbx, [rsp + 0x10]
	mov	esi, 0x18
	mov	edx, 1
	mov	ecx, 0x18
	mov	al, 1
	mov	rdi, rbx
	movaps	xmm0, xmmword ptr [rsp]
	call	__snprintf_chk
	mov	rdi, r15
	call	abbreviation_lacks_prefix
	test	al, al
	je	.label_149
	mov	rbx,  qword ptr [word ptr [rip + stderr]]
	mov	rdi,  qword ptr [word ptr [rip + w_bytes]]
	call	select_plural
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_152
	mov	edx, OFFSET FLAT:label_153
	mov	r8d, 5
	mov	rcx, rax
	call	dcngettext
	mov	rdx, rax
	mov	rcx,  qword ptr [word ptr [rip + w_bytes]]
	lea	r8, [rsp + 0x10]
	mov	esi, 1
	xor	eax, eax
	mov	rdi, rbx
	mov	r9, r13
	call	__fprintf_chk
	jmp	.label_143
.label_149:
	mov	rdi, r12
	call	abbreviation_lacks_prefix
	mov	rbp,  qword ptr [word ptr [rip + stderr]]
	xor	edi, edi
	test	al, al
	je	.label_146
	mov	esi, OFFSET FLAT:label_147
	mov	edx, 5
	call	dcgettext
	mov	rdx, rax
	mov	rcx,  qword ptr [word ptr [rip + w_bytes]]
	sub	rsp, 8
	lea	r9, [rsp + 0x18]
	mov	esi, 1
	xor	eax, eax
	mov	rdi, rbp
	mov	r8, r15
	push	r13
	call	__fprintf_chk
	add	rsp, 0x10
	jmp	.label_143
.label_146:
	mov	esi, OFFSET FLAT:label_145
	mov	edx, 5
	call	dcgettext
	mov	rdx, rax
	mov	rcx,  qword ptr [word ptr [rip + w_bytes]]
	mov	esi, 1
	mov	eax, 0
	mov	rdi, rbp
	mov	r8, r15
	mov	r9, r12
	push	r13
	push	rbx
	call	__fprintf_chk
	add	rsp, 0x10
.label_143:
	mov	ebx, eax
	test	r14, r14
	je	.label_142
	test	ebx, ebx
	js	.label_144
	mov	ecx,  dword ptr [dword ptr [rip + progress_len]]
	sub	ecx, ebx
	jle	.label_144
	mov	rdi,  qword ptr [word ptr [rip + stderr]]
	mov	esi, 1
	mov	edx, OFFSET FLAT:label_150
	mov	r8d, OFFSET FLAT:label_40
	xor	eax, eax
	call	__fprintf_chk
.label_144:
	mov	dword ptr [dword ptr [rip + progress_len]],  ebx
	jmp	.label_162
.label_142:
	mov	rsi,  qword ptr [word ptr [rip + stderr]]
	mov	edi, 0xa
	call	fputc_unlocked
.label_162:
	add	rsp, 0x7e8
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x403461
	.globl sub_403461
	.type sub_403461, @function
sub_403461:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x403470

	.globl copy_simple
	.type copy_simple, @function
copy_simple:
	push	r15
	push	r14
	push	rbx
	mov	r14, rsi
	mov	r15, rdi
	nop	dword ptr [rax + rax]
.label_164:
	mov	rbx,  qword ptr [word ptr [rip + output_blocksize]]
	mov	rdi,  qword ptr [word ptr [rip + oc]]
	sub	rbx, rdi
	cmp	r14, rbx
	cmovb	rbx, r14
	add	rdi,  qword ptr [word ptr [rip + obuf]]
	mov	rsi, r15
	mov	rdx, rbx
	call	memcpy
	sub	r14, rbx
	mov	rax,  qword ptr [word ptr [rip + oc]]
	add	rax, rbx
	mov	qword ptr [word ptr [rip + oc]],  rax
	cmp	rax,  qword ptr [word ptr [rip + output_blocksize]]
	jb	.label_163
	call	write_output
.label_163:
	add	r15, rbx
	test	r14, r14
	jne	.label_164
	pop	rbx
	pop	r14
	pop	r15
	ret	
	.section	.text
	.align	32
	#Procedure 0x4034da
	.globl sub_4034da
	.type sub_4034da, @function
sub_4034da:

	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4034e0
	.globl xtime_nsec
	.type xtime_nsec, @function
xtime_nsec:

	mov	rcx, rdi
	movabs	rdx, 0x112e0be826d694b3
	mov	rax, rcx
	imul	rdx
	mov	rax, rdx
	shr	rax, 0x3f
	sar	rdx, 0x1a
	add	rdx, rax
	imul	rax, rdx, 0x3b9aca00
	mov	rdx, rcx
	sub	rdx, rax
	add	rdx, 0x3b9aca00
	sub	rcx, rax
	cmovs	rcx, rdx
	mov	rax, rcx
	ret	
	.section	.text
	.align	32
	#Procedure 0x403520

	.globl xalloc_die
	.type xalloc_die, @function
xalloc_die:
	push	rbx
	mov	ebx,  dword ptr [dword ptr [rip + exit_failure]]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_165
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	xor	esi, esi
	mov	edx, OFFSET FLAT:label_166
	xor	eax, eax
	mov	edi, ebx
	call	error
	call	abort
	.section	.text
	.align	32
	#Procedure 0x403550

	.globl copy_with_unblock
	.type copy_with_unblock, @function
copy_with_unblock:
	push	rbp
	push	r15
	push	r14
	push	r12
	push	rbx
	mov	r15, rsi
	mov	r14, rdi
	test	r15, r15
	je	.label_174
	xor	ebx, ebx
	mov	ebp, 0x40
	nop	
.label_172:
	mov	r12b, byte ptr [r14 + rbx]
	mov	rax,  qword ptr [word ptr [rip + col]]
	lea	rcx, [rax + 1]
	mov	qword ptr [word ptr [rip + col]],  rcx
	cmp	rax,  qword ptr [word ptr [rip + conversion_blocksize]]
	jae	.label_168
	movsx	eax, r12b
	mov	cl,  byte ptr [byte ptr [rip + space_character]]
	test	cl, cl
	mov	ecx, 0x20
	cmovne	ecx, ebp
	cmp	eax, ecx
	mov	rax,  qword ptr [word ptr [rip + copy_with_unblock.pending_spaces]]
	jne	.label_173
	inc	rax
	mov	qword ptr [word ptr [rip + copy_with_unblock.pending_spaces]],  rax
	jmp	.label_171
	.section	.text
	.align	32
	#Procedure 0x4035bd
	.globl sub_4035bd
	.type sub_4035bd, @function
sub_4035bd:

	nop	dword ptr [rax]
.label_168:
	mov	qword ptr [word ptr [rip + copy_with_unblock.pending_spaces]],  0
	mov	qword ptr [word ptr [rip + col]],  0
	mov	al,  byte ptr [byte ptr [rip + newline_character]]
	test	al, al
	mov	al, 0x25
	jne	.label_167
	mov	al, 0xa
.label_167:
	dec	rbx
	mov	rcx,  qword ptr [word ptr [rip + oc]]
	lea	rdx, [rcx + 1]
	mov	qword ptr [word ptr [rip + oc]],  rdx
	mov	rsi,  qword ptr [word ptr [rip + obuf]]
	mov	byte ptr [rsi + rcx], al
	cmp	rdx,  qword ptr [word ptr [rip + output_blocksize]]
	jae	.label_169
	jmp	.label_171
	.section	.text
	.align	32
	#Procedure 0x40360e
	.globl sub_40360e
	.type sub_40360e, @function
sub_40360e:

	nop	
.label_173:
	test	rax, rax
	je	.label_176
	nop	word ptr cs:[rax + rax]
.label_175:
	movzx	eax,  byte ptr [byte ptr [rip + space_character]]
	test	al, al
	mov	al, 0x40
	jne	.label_170
	mov	al, 0x20
.label_170:
	mov	rcx,  qword ptr [word ptr [rip + oc]]
	lea	rdx, [rcx + 1]
	mov	qword ptr [word ptr [rip + oc]],  rdx
	mov	rsi,  qword ptr [word ptr [rip + obuf]]
	mov	byte ptr [rsi + rcx], al
	cmp	rdx,  qword ptr [word ptr [rip + output_blocksize]]
	jb	.label_177
	call	write_output
.label_177:
	dec	qword ptr [word ptr [rip + copy_with_unblock.pending_spaces]]
	jne	.label_175
.label_176:
	mov	rax,  qword ptr [word ptr [rip + oc]]
	lea	rcx, [rax + 1]
	mov	qword ptr [word ptr [rip + oc]],  rcx
	mov	rdx,  qword ptr [word ptr [rip + obuf]]
	mov	byte ptr [rdx + rax], r12b
	cmp	rcx,  qword ptr [word ptr [rip + output_blocksize]]
	jb	.label_171
.label_169:
	call	write_output
.label_171:
	inc	rbx
	cmp	rbx, r15
	jb	.label_172
.label_174:
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x4036a2
	.globl sub_4036a2
	.type sub_4036a2, @function
sub_4036a2:

	nop	word ptr cs:[rax + rax]
.label_178:
	xor	eax, eax
	ret	
	.section	.text
	.align	32
	#Procedure 0x4036b3
	.globl sub_4036b3
	.type sub_4036b3, @function
sub_4036b3:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4036bb
	.globl c_isspace
	.type c_isspace, @function
c_isspace:

	add	edi, -9
	cmp	edi, 0x17
	ja	.label_178
	mov	eax, 0x80001f
	mov	ecx, edi
	shr	eax, cl
	and	eax, 1
	ret	
	.section	.text
	.align	32
	#Procedure 0x4036d0
	.globl quotearg_colon_mem
	.type quotearg_colon_mem, @function
quotearg_colon_mem:

	mov	edx, 0x3a
	jmp	quotearg_char_mem
	.section	.text
	.align	32
	#Procedure 0x4036da
	.globl sub_4036da
	.type sub_4036da, @function
sub_4036da:

	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4036e0

	.globl quotearg_n_mem
	.type quotearg_n_mem, @function
quotearg_n_mem:
	mov	ecx, OFFSET FLAT:default_quoting_options
	jmp	quotearg_n_options
	.section	.text
	.align	32
	#Procedure 0x4036ea
	.globl sub_4036ea
	.type sub_4036ea, @function
sub_4036ea:

	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4036f0
	.globl quotearg
	.type quotearg, @function
quotearg:

	mov	rax, rdi
	xor	edi, edi
	mov	rsi, rax
	jmp	quotearg_n
	.section	.text
	.align	32
	#Procedure 0x4036fd
	.globl sub_4036fd
	.type sub_4036fd, @function
sub_4036fd:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x403700
	.globl quotearg_mem
	.type quotearg_mem, @function
quotearg_mem:

	mov	rax, rsi
	mov	rcx, rdi
	xor	edi, edi
	mov	rsi, rcx
	mov	rdx, rax
	jmp	quotearg_n_mem
	.section	.text
	.align	32
	#Procedure 0x403710

	.globl xsum
	.type xsum, @function
xsum:
	add	rsi, rdi
	cmp	rsi, rdi
	mov	rax, -1
	cmovae	rax, rsi
	ret	
	.section	.text
	.align	32
	#Procedure 0x403722
	.globl sub_403722
	.type sub_403722, @function
sub_403722:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x403730
	.globl xsum3
	.type xsum3, @function
xsum3:

	push	rbx
	mov	rbx, rdx
	call	xsum
	mov	rdi, rax
	mov	rsi, rbx
	pop	rbx
	jmp	xsum
	.section	.text
	.align	32
	#Procedure 0x403742
	.globl sub_403742
	.type sub_403742, @function
sub_403742:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x403750
	.globl xsum4
	.type xsum4, @function
xsum4:

	push	r14
	push	rbx
	push	rax
	mov	r14, rcx
	mov	rbx, rdx
	call	xsum
	mov	rdi, rax
	mov	rsi, rbx
	call	xsum
	mov	rdi, rax
	mov	rsi, r14
	add	rsp, 8
	pop	rbx
	pop	r14
	jmp	xsum
	.section	.text
	.align	32
	#Procedure 0x403779
	.globl sub_403779
	.type sub_403779, @function
sub_403779:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x403780
	.globl version_etc_ar
	.type version_etc_ar, @function
version_etc_ar:

	mov	r9, -1
	nop	word ptr [rax + rax]
.label_179:
	cmp	qword ptr [r8 + r9*8 + 8], 0
	lea	r9, [r9 + 1]
	jne	.label_179
	jmp	version_etc_arn
	.section	.text
	.align	32
	#Procedure 0x4037a1
	.globl sub_4037a1
	.type sub_4037a1, @function
sub_4037a1:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4037b0

	.globl write_output
	.type write_output, @function
write_output:
	push	rbp
	push	r14
	push	rbx
	mov	rdi,  qword ptr [word ptr [rip + obuf]]
	mov	rsi,  qword ptr [word ptr [rip + output_blocksize]]
	call	iwrite
	mov	rbx, rax
	add	qword ptr [word ptr [rip + w_bytes]],  rbx
	cmp	rbx,  qword ptr [word ptr [rip + output_blocksize]]
	jne	.label_182
	inc	qword ptr [word ptr [rip + w_full]]
	mov	qword ptr [word ptr [rip + oc]],  0
	pop	rbx
	pop	r14
	pop	rbp
	ret	
.label_182:
	call	__errno_location
	mov	r14d, dword ptr [rax]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_181
	mov	edx, 5
	call	dcgettext
	mov	rbp, rax
	mov	rsi,  qword ptr [word ptr [rip + output_file]]
	mov	edi, 4
	call	quotearg_style
	mov	rcx, rax
	xor	edi, edi
	xor	eax, eax
	mov	esi, r14d
	mov	rdx, rbp
	call	nl_error
	test	rbx, rbx
	je	.label_180
	inc	qword ptr [word ptr [rip + w_partial]]
.label_180:
	call	quit
	.section	.text
	.align	32
	#Procedure 0x403841
	.globl sub_403841
	.type sub_403841, @function
sub_403841:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x403850

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
	mov	r13, rsi
	mov	r15, rdi
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_187
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stderr]]
	mov	rdi, rax
	call	fputs_unlocked
	mov	rbx, qword ptr [r15]
	test	rbx, rbx
	je	.label_185
	xor	r12d, r12d
	xor	ebp, ebp
	nop	word ptr cs:[rax + rax]
.label_189:
	test	rbp, rbp
	je	.label_183
	mov	rdi, r12
	mov	rsi, r13
	mov	rdx, r14
	call	memcmp
	test	eax, eax
	je	.label_188
.label_183:
	mov	rbx,  qword ptr [word ptr [rip + stderr]]
	mov	rdi, qword ptr [r15 + rbp*8]
	call	quote
	mov	rcx, rax
	mov	esi, 1
	mov	edx, OFFSET FLAT:label_186
	xor	eax, eax
	mov	rdi, rbx
	call	__fprintf_chk
	mov	r12, r13
	jmp	.label_190
	.section	.text
	.align	32
	#Procedure 0x4038e3
	.globl sub_4038e3
	.type sub_4038e3, @function
sub_4038e3:

	nop	word ptr cs:[rax + rax]
.label_188:
	mov	rax,  qword ptr [word ptr [rip + stderr]]
	mov	qword ptr [rsp], rax
	mov	rdi, rbx
	call	quote
	mov	rcx, rax
	mov	esi, 1
	mov	edx, OFFSET FLAT:label_184
	xor	eax, eax
	mov	rdi, qword ptr [rsp]
	call	__fprintf_chk
.label_190:
	mov	rbx, qword ptr [r15 + rbp*8 + 8]
	inc	rbp
	add	r13, r14
	test	rbx, rbx
	jne	.label_189
.label_185:
	mov	rsi,  qword ptr [word ptr [rip + stderr]]
	mov	edi, 0xa
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	jmp	putc_unlocked
	.section	.text
	.align	32
	#Procedure 0x40394e
	.globl sub_40394e
	.type sub_40394e, @function
sub_40394e:

	nop	
	.section	.text
	.align	32
	#Procedure 0x403950

	.globl skip_via_lseek
	.type skip_via_lseek, @function
skip_via_lseek:
	push	rbp
	push	r15
	push	r14
	push	r12
	push	rbx
	sub	rsp, 0x60
	mov	r15d, ecx
	mov	r12, rdx
	mov	ebp, esi
	mov	r14, rdi
	lea	rdx, [rsp + 0x30]
	mov	esi, 0x80306d02
	xor	eax, eax
	mov	edi, ebp
	call	ioctl
	mov	ebx, eax
	mov	edi, ebp
	mov	rsi, r12
	mov	edx, r15d
	call	lseek
	mov	r15, rax
	test	ebx, ebx
	jne	.label_191
	test	r15, r15
	js	.label_191
	lea	rdx, [rsp]
	mov	esi, 0x80306d02
	xor	eax, eax
	mov	edi, ebp
	call	ioctl
	test	eax, eax
	jne	.label_191
	mov	rax, qword ptr [rsp + 0x38]
	cmp	rax, qword ptr [rsp + 8]
	jne	.label_191
	mov	eax, dword ptr [rsp + 0x58]
	cmp	eax, dword ptr [rsp + 0x28]
	jne	.label_191
	mov	eax, dword ptr [rsp + 0x5c]
	cmp	eax, dword ptr [rsp + 0x2c]
	jne	.label_191
	cmp	dword ptr [dword ptr [rip + status_level]],  1
	je	.label_192
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_193
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	mov	r8, qword ptr [rsp]
	xor	edi, edi
	xor	esi, esi
	xor	eax, eax
	mov	rdx, rcx
	mov	rcx, r14
	call	nl_error
.label_192:
	call	__errno_location
	mov	dword ptr [rax], 0
	mov	r15, -1
.label_191:
	mov	rax, r15
	add	rsp, 0x60
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x403a1f
	.globl sub_403a1f
	.type sub_403a1f, @function
sub_403a1f:

	nop	
	.section	.text
	.align	32
	#Procedure 0x403a20

	.globl invalidate_cache
	.type invalidate_cache, @function
invalidate_cache:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	push	rax
	mov	rbp, rsi
	mov	r14d, edi
	mov	r12b,  byte ptr [byte ptr [rip + i_nocache_eof]]
	mov	bl,  byte ptr [byte ptr [rip + o_nocache_eof]]
	call	cache_round
	mov	r13, rax
	test	rbp, rbp
	mov	al, 1
	je	.label_194
	test	r13, r13
	je	.label_198
.label_194:
	test	r14d, r14d
	je	.label_199
	mov	r12d, ebx
.label_199:
	test	r12b, r12b
	jne	.label_201
	mov	rcx, r13
	or	rcx, rbp
	je	.label_198
.label_201:
	xor	r15d, r15d
	test	rbp, rbp
	je	.label_203
	xor	esi, esi
	mov	edi, r14d
	call	cache_round
	mov	r15, rax
.label_203:
	test	r14d, r14d
	je	.label_195
	mov	eax, OFFSET FLAT:invalidate_cache.output_offset
	mov	rcx,  qword ptr [word ptr [rip + invalidate_cache.output_offset]]
	cmp	rcx, -1
	je	.label_197
	test	rcx, rcx
	js	.label_200
	mov	eax, OFFSET FLAT:invalidate_cache.output_offset
	test	rbp, rbp
	je	.label_197
	lea	rax, [r15 + r13]
	add	rax, rcx
	jmp	.label_202
.label_195:
	mov	eax, OFFSET FLAT:input_offset
	cmp	byte ptr [byte ptr [rip + input_seekable]],  0
	jne	.label_197
	call	__errno_location
	mov	dword ptr [rax], 0x1d
	jmp	.label_196
.label_200:
	xor	esi, esi
	mov	edx, 1
	mov	edi, r14d
	call	lseek
.label_202:
	mov	qword ptr [word ptr [rip + invalidate_cache.output_offset]],  rax
	mov	eax, OFFSET FLAT:invalidate_cache.output_offset
.label_197:
	mov	rsi, qword ptr [rax]
	test	rsi, rsi
	js	.label_196
	test	r12b, r12b
	sete	al
	test	r13, r13
	sete	cl
	test	rbp, rbp
	setne	dl
	or	dl, cl
	xor	ebp, ebp
	or	dl, al
	cmovne	rbp, r13
	cmove	r15, r13
	sub	rsi, rbp
	sub	rsi, r15
	test	rbp, rbp
	jne	.label_204
	xor	edx, edx
	mov	rax, rsi
	div	qword ptr [word ptr [rip + page_size]]
	sub	rsi, rdx
.label_204:
	mov	ecx, 4
	mov	edi, r14d
	mov	rdx, rbp
	call	posix_fadvise
	cmp	eax, -1
	setne	al
	jmp	.label_198
.label_196:
	xor	eax, eax
.label_198:
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
	#Procedure 0x403b54
	.globl sub_403b54
	.type sub_403b54, @function
sub_403b54:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x403b60

	.globl scanargs
	.type scanargs, @function
scanargs:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x38
	mov	rbx, rsi
	movsxd	r14,  dword ptr [dword ptr [rip + optind]]
	mov	r12, -1
	xor	esi, esi
	cmp	r14d, edi
	mov	eax, 0
	jge	.label_233
	movsxd	r15, edi
	mov	r12, -1
	xor	eax, eax
	mov	qword ptr [rsp + 0x30], rax
	xor	eax, eax
	mov	qword ptr [rsp + 0x18], rax
	xor	eax, eax
	mov	qword ptr [rsp + 0x20], rax
	nop	
.label_245:
	mov	r13, qword ptr [rbx + r14*8]
	mov	esi, 0x3d
	mov	rdi, r13
	call	strchr
	mov	rbp, rax
	test	rbp, rbp
	je	.label_227
	inc	rbp
	mov	esi, OFFSET FLAT:label_266
	mov	rdi, r13
	call	operand_is
	test	al, al
	je	.label_270
	mov	qword ptr [word ptr [rip + input_file]],  rbp
	jmp	.label_205
	.section	.text
	.align	32
	#Procedure 0x403bed
	.globl sub_403bed
	.type sub_403bed, @function
sub_403bed:

	nop	dword ptr [rax]
.label_270:
	mov	esi, OFFSET FLAT:label_274
	mov	rdi, r13
	call	operand_is
	test	al, al
	je	.label_279
	mov	qword ptr [word ptr [rip + output_file]],  rbp
	jmp	.label_205
	.section	.text
	.align	32
	#Procedure 0x403c0d
	.globl sub_403c0d
	.type sub_403c0d, @function
sub_403c0d:

	nop	dword ptr [rax]
.label_279:
	mov	esi, OFFSET FLAT:label_209
	mov	rdi, r13
	call	operand_is
	test	al, al
	je	.label_213
	mov	esi, OFFSET FLAT:conversions
	xor	edx, edx
	mov	ecx, OFFSET FLAT:label_215
	mov	rdi, rbp
	call	parse_symbols
	or	dword ptr [dword ptr [rip + conversions_mask]],  eax
	jmp	.label_205
.label_213:
	mov	esi, OFFSET FLAT:label_222
	mov	rdi, r13
	call	operand_is
	test	al, al
	je	.label_226
	mov	esi, OFFSET FLAT:flags
	xor	edx, edx
	mov	ecx, OFFSET FLAT:label_228
	mov	rdi, rbp
	call	parse_symbols
	or	dword ptr [dword ptr [rip + input_flags]],  eax
	jmp	.label_205
.label_226:
	mov	esi, OFFSET FLAT:label_254
	mov	rdi, r13
	call	operand_is
	test	al, al
	je	.label_239
	mov	esi, OFFSET FLAT:flags
	xor	edx, edx
	mov	ecx, OFFSET FLAT:label_241
	mov	rdi, rbp
	call	parse_symbols
	or	dword ptr [dword ptr [rip + output_flags]],  eax
	jmp	.label_205
.label_239:
	mov	esi, OFFSET FLAT:label_253
	mov	rdi, r13
	call	operand_is
	test	al, al
	je	.label_257
	mov	esi, OFFSET FLAT:statuses
	mov	edx, 1
	mov	ecx, OFFSET FLAT:label_258
	mov	rdi, rbp
	call	parse_symbols
	mov	dword ptr [dword ptr [rip + status_level]],  eax
	jmp	.label_205
.label_257:
	mov	dword ptr [rsp + 0xc], 0
	mov	rdi, rbp
	lea	rsi, [rsp + 0xc]
	call	parse_integer
	mov	qword ptr [rsp + 0x10], rax
	mov	esi, OFFSET FLAT:label_271
	mov	rdi, r13
	call	operand_is
	test	al, al
	mov	qword ptr [rsp + 0x28], r12
	je	.label_277
	mov	rax,  qword ptr [word ptr [rip + page_size]]
	add	rax, rax
	mov	r12, -4
	sub	r12, rax
	movabs	rax, 0x7fffffffffffffff
	cmp	r12, rax
	cmovae	r12, rax
	mov	rcx, qword ptr [rsp + 0x10]
	mov	qword ptr [word ptr [rip + input_blocksize]],  rcx
	mov	eax, 1
	jmp	.label_207
.label_277:
	mov	esi, OFFSET FLAT:label_221
	mov	rdi, r13
	call	operand_is
	test	al, al
	je	.label_225
	mov	r12,  qword ptr [word ptr [rip + page_size]]
	neg	r12
	movabs	rax, 0x7fffffffffffffff
	cmp	r12, rax
	cmovae	r12, rax
	mov	rcx, qword ptr [rsp + 0x10]
	mov	qword ptr [word ptr [rip + output_blocksize]],  rcx
	mov	eax, 1
	jmp	.label_207
.label_225:
	mov	esi, OFFSET FLAT:label_240
	mov	rdi, r13
	call	operand_is
	test	al, al
	je	.label_236
	mov	rax,  qword ptr [word ptr [rip + page_size]]
	add	rax, rax
	mov	r12, -4
	sub	r12, rax
	movabs	rax, 0x7fffffffffffffff
	cmp	r12, rax
	cmovae	r12, rax
	mov	rcx, qword ptr [rsp + 0x10]
	mov	rax, rcx
	mov	qword ptr [rsp + 0x30], rax
	mov	eax, 1
	jmp	.label_207
.label_236:
	mov	esi, OFFSET FLAT:label_275
	mov	rdi, r13
	call	operand_is
	test	al, al
	je	.label_269
	mov	rcx, qword ptr [rsp + 0x10]
	mov	qword ptr [word ptr [rip + conversion_blocksize]],  rcx
	mov	r12, -1
	mov	eax, 1
	jmp	.label_207
.label_269:
	mov	esi, OFFSET FLAT:label_276
	mov	rdi, r13
	call	operand_is
	mov	r12, -1
	test	al, al
	je	.label_214
	mov	rcx, qword ptr [rsp + 0x10]
	mov	rax, rcx
	mov	qword ptr [rsp + 0x20], rax
	xor	eax, eax
	jmp	.label_207
.label_214:
	mov	esi, OFFSET FLAT:label_264
	mov	rdi, r13
	call	operand_is
	test	al, al
	je	.label_219
	mov	rcx, qword ptr [rsp + 0x10]
	mov	rax, rcx
	mov	qword ptr [rsp + 0x18], rax
	xor	eax, eax
	jmp	.label_207
.label_219:
	mov	esi, OFFSET FLAT:label_246
	mov	rdi, r13
	call	operand_is
	test	al, al
	mov	rcx, qword ptr [rsp + 0x10]
	mov	qword ptr [rsp + 0x28], rcx
	mov	eax, 0
	je	.label_227
.label_207:
	cmp	rcx, rax
	jb	.label_234
	cmp	r12, rcx
	jb	.label_212
	mov	eax, dword ptr [rsp + 0xc]
	test	eax, eax
	mov	r12, qword ptr [rsp + 0x28]
	jne	.label_237
	nop	word ptr [rax + rax]
.label_205:
	inc	r14
	cmp	r14, r15
	jl	.label_245
	mov	rax, qword ptr [rsp + 0x30]
	test	rax, rax
	je	.label_251
	mov	qword ptr [word ptr [rip + output_blocksize]],  rax
	mov	qword ptr [word ptr [rip + input_blocksize]],  rax
	mov	rsi, qword ptr [rsp + 0x18]
	mov	rax, qword ptr [rsp + 0x20]
	jmp	.label_255
.label_251:
	mov	rsi, qword ptr [rsp + 0x18]
	mov	rax, qword ptr [rsp + 0x20]
.label_233:
	or	byte ptr [byte ptr [rip + label_100]],  8
	cmp	qword ptr [word ptr [rip + input_blocksize]],  0
	jne	.label_265
	mov	qword ptr [word ptr [rip + input_blocksize]],  0x200
.label_265:
	cmp	qword ptr [word ptr [rip + output_blocksize]],  0
	jne	.label_255
	mov	qword ptr [word ptr [rip + output_blocksize]],  0x200
.label_255:
	cmp	qword ptr [word ptr [rip + conversion_blocksize]],  0
	jne	.label_278
	and	byte ptr [byte ptr [rip + conversions_mask]],  0xe7
.label_278:
	mov	ecx,  dword ptr [dword ptr [rip + input_flags]]
	test	ecx, 0x101000
	je	.label_208
	or	ecx, 0x101000
	mov	dword ptr [dword ptr [rip + input_flags]],  ecx
.label_208:
	mov	ecx,  dword ptr [dword ptr [rip + output_flags]]
	test	cl, 1
	jne	.label_217
	mov	edx,  dword ptr [dword ptr [rip + input_flags]]
	test	dl, 0x10
	jne	.label_220
	test	cl, 0xc
	jne	.label_223
	test	rax, rax
	je	.label_229
	and	edx, 8
	je	.label_229
	xor	edx, edx
	div	qword ptr [word ptr [rip + input_blocksize]]
	mov	qword ptr [word ptr [rip + skip_records]],  rax
	mov	qword ptr [word ptr [rip + skip_bytes]],  rdx
	jmp	.label_230
.label_229:
	test	rax, rax
	je	.label_230
	mov	qword ptr [word ptr [rip + skip_records]],  rax
.label_230:
	cmp	r12, -1
	je	.label_238
	mov	eax,  dword ptr [dword ptr [rip + input_flags]]
	and	eax, 4
	je	.label_238
	xor	edx, edx
	mov	rax, r12
	div	qword ptr [word ptr [rip + input_blocksize]]
	mov	qword ptr [word ptr [rip + max_records]],  rax
	mov	qword ptr [word ptr [rip + max_bytes]],  rdx
	jmp	.label_244
.label_238:
	cmp	r12, -1
	je	.label_244
	mov	qword ptr [word ptr [rip + max_records]],  r12
.label_244:
	test	rsi, rsi
	je	.label_260
	mov	eax,  dword ptr [dword ptr [rip + output_flags]]
	and	eax, 0x10
	je	.label_260
	xor	edx, edx
	mov	rax, rsi
	div	qword ptr [word ptr [rip + output_blocksize]]
	mov	qword ptr [word ptr [rip + seek_records]],  rax
	mov	qword ptr [word ptr [rip + seek_bytes]],  rdx
	jmp	.label_263
.label_260:
	test	rsi, rsi
	je	.label_263
	mov	qword ptr [word ptr [rip + seek_records]],  rsi
.label_263:
	test	byte ptr [byte ptr [rip + label_100]],  8
	jne	.label_272
	mov	ecx,  dword ptr [dword ptr [rip + input_flags]]
	test	cl, 1
	jne	.label_272
	mov	al, 1
	cmp	qword ptr [word ptr [rip + skip_records]],  0
	jne	.label_206
	mov	rdx,  qword ptr [word ptr [rip + max_records]]
	inc	rdx
	cmp	rdx, 1
	ja	.label_206
	or	ecx,  dword ptr [dword ptr [rip + output_flags]]
	and	ecx, 0x4000
	shr	ecx, 0xe
	mov	al, cl
	jmp	.label_206
.label_272:
	xor	eax, eax
.label_206:
	mov	byte ptr [byte ptr [rip + warn_partial_read]],  al
	mov	ebp,  dword ptr [dword ptr [rip + input_flags]]
	mov	eax, OFFSET FLAT:iread_fullblock
	mov	ecx, OFFSET FLAT:iread
	test	bpl, 1
	cmovne	rcx, rax
	mov	qword ptr [word ptr [rip + iread_fnc]],  rcx
	mov	eax, ebp
	and	eax, 0xfffffffe
	mov	dword ptr [dword ptr [rip + input_flags]],  eax
	mov	ebx,  dword ptr [dword ptr [rip + conversions_mask]]
	mov	edi, ebx
	and	edi, 7
	call	multiple_bits_set
	test	al, al
	jne	.label_235
	mov	edi, ebx
	and	edi, 0x18
	call	multiple_bits_set
	test	al, al
	jne	.label_242
	mov	edi, ebx
	and	edi, 0x60
	call	multiple_bits_set
	test	al, al
	jne	.label_248
	and	ebx, 0x3000
	mov	edi, ebx
	call	multiple_bits_set
	test	al, al
	jne	.label_256
	mov	edi, ebp
	and	edi, 0x4002
	call	multiple_bits_set
	test	al, al
	jne	.label_243
	mov	edi,  dword ptr [dword ptr [rip + output_flags]]
	and	edi, 0x4002
	call	multiple_bits_set
	test	al, al
	jne	.label_243
	test	bpl, 2
	je	.label_262
	mov	byte ptr [byte ptr [rip + i_nocache]],  1
	mov	rax,  qword ptr [word ptr [rip + max_bytes]]
	or	rax,  qword ptr [word ptr [rip + max_records]]
	sete	byte ptr [byte ptr [rip + i_nocache_eof]]
	and	byte ptr [byte ptr [rip + input_flags]],  0xfd
.label_262:
	test	byte ptr [byte ptr [rip + output_flags]],  2
	je	.label_231
	mov	byte ptr [byte ptr [rip + o_nocache]],  1
	mov	rax,  qword ptr [word ptr [rip + max_bytes]]
	or	rax,  qword ptr [word ptr [rip + max_records]]
	sete	byte ptr [byte ptr [rip + o_nocache_eof]]
	and	byte ptr [byte ptr [rip + output_flags]],  0xfd
.label_231:
	add	rsp, 0x38
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_227:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_224
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
	mov	rdi, r13
	call	quote
	mov	rcx, rax
	xor	edi, edi
	xor	esi, esi
	xor	eax, eax
	mov	rdx, rbx
	call	nl_error
	mov	edi, 1
	call	usage
.label_243:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_261
	jmp	.label_211
.label_217:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_241
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
	mov	edi, OFFSET FLAT:label_249
	jmp	.label_250
.label_220:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_228
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
	mov	edi, OFFSET FLAT:label_259
	jmp	.label_250
.label_223:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_241
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
	mov	eax,  dword ptr [dword ptr [rip + output_flags]]
	mov	ecx, OFFSET FLAT:label_267
	mov	edi, OFFSET FLAT:label_268
	test	al, 4
	cmovne	rdi, rcx
.label_250:
	call	quote
	mov	rbp, rax
	xor	edi, edi
	xor	esi, esi
	mov	edx, OFFSET FLAT:label_247
	xor	eax, eax
	mov	rcx, rbx
	mov	r8, rbp
	call	nl_error
	mov	edi, 1
	call	usage
.label_235:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_210
	jmp	.label_211
.label_242:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_252
	jmp	.label_211
.label_248:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_216
	jmp	.label_211
.label_256:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_218
.label_211:
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	mov	edi, 1
	xor	esi, esi
	xor	eax, eax
	mov	rdx, rcx
	call	nl_error
.label_234:
	mov	dword ptr [rsp + 0xc], 4
	xor	r14d, r14d
	jmp	.label_232
.label_212:
	mov	dword ptr [rsp + 0xc], 1
	mov	r14d, 0x4b
	jmp	.label_232
.label_237:
	xor	ecx, ecx
	cmp	eax, 1
	mov	r14d, 0x4b
	cmovne	r14d, ecx
.label_232:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_273
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
	mov	rdi, rbp
	call	quote
	mov	rbp, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:label_247
	xor	eax, eax
	mov	esi, r14d
	mov	rcx, rbx
	mov	r8, rbp
	call	nl_error
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4042c0
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
	je	.label_280
	add	rbx, 8
	nop	word ptr cs:[rax + rax]
.label_281:
	mov	rdi, r12
	mov	rsi, r15
	mov	rdx, r14
	call	memcmp
	test	eax, eax
	mov	rax, r13
	je	.label_280
	mov	r13, qword ptr [rbx]
	add	rbx, 8
	add	r15, r14
	test	r13, r13
	mov	eax, 0
	jne	.label_281
.label_280:
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	ret	
	.section	.text
	.align	32
	#Procedure 0x404323
	.globl sub_404323
	.type sub_404323, @function
sub_404323:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x404330
	.globl x2realloc
	.type x2realloc, @function
x2realloc:

	mov	edx, 1
	jmp	x2nrealloc
	.section	.text
	.align	32
	#Procedure 0x40433a
	.globl sub_40433a
	.type sub_40433a, @function
sub_40433a:

	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x404340

	.globl quotearg_char_mem
	.type quotearg_char_mem, @function
quotearg_char_mem:
	push	r15
	push	r14
	push	rbx
	sub	rsp, 0x40
	mov	eax, edx
	mov	r14, rsi
	mov	rbx, rdi
	mov	rcx,  qword ptr [word ptr [rip + label_282]]
	mov	qword ptr [rsp + 0x30], rcx
	movups	xmm0,  xmmword ptr [word ptr [rip + label_283]]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0,  xmmword ptr [word ptr [rip + label_284]]
	movaps	xmmword ptr [rsp + 0x10], xmm0
	movups	xmm0,  xmmword ptr [word ptr [rip + default_quoting_options]]
	movaps	xmmword ptr [rsp], xmm0
	lea	r15, [rsp]
	mov	edx, 1
	mov	rdi, r15
	mov	esi, eax
	call	set_char_quoting
	xor	edi, edi
	mov	rsi, rbx
	mov	rdx, r14
	mov	rcx, r15
	call	quotearg_n_options
	add	rsp, 0x40
	pop	rbx
	pop	r14
	pop	r15
	ret	
	.section	.text
	.align	32
	#Procedure 0x4043ad
	.globl sub_4043ad
	.type sub_4043ad, @function
sub_4043ad:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x4043b0

	.globl quotearg_char
	.type quotearg_char, @function
quotearg_char:
	mov	eax, esi
	mov	rsi, -1
	mov	edx, eax
	jmp	quotearg_char_mem
	.section	.text
	.align	32
	#Procedure 0x4043bd
	.globl sub_4043bd
	.type sub_4043bd, @function
sub_4043bd:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x4043c0

	.globl quotearg_colon
	.type quotearg_colon, @function
quotearg_colon:
	mov	esi, 0x3a
	jmp	quotearg_char
	.section	.text
	.align	32
	#Procedure 0x4043c7
	.globl sub_4043c7
	.type sub_4043c7, @function
sub_4043c7:

	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4043d0
	.globl c_isalnum
	.type c_isalnum, @function
c_isalnum:

	mov	al, 1
	lea	ecx, [rdi - 0x41]
	cmp	ecx, 0x39
	ja	.label_285
	movabs	rdx, 0x3ffffff03ffffff
	bt	rdx, rcx
	jae	.label_285
.label_286:
	ret	
.label_285:
	add	edi, -0x30
	cmp	edi, 0xa
	jb	.label_286
	xor	eax, eax
	ret	
	.section	.text
	.align	32
	#Procedure 0x4043f6
	.globl sub_4043f6
	.type sub_4043f6, @function
sub_4043f6:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x404400

	.globl gettime
	.type gettime, @function
gettime:
	mov	rax, rdi
	xor	edi, edi
	mov	rsi, rax
	jmp	clock_gettime
	.section	.text
	.align	32
	#Procedure 0x40440d
	.globl sub_40440d
	.type sub_40440d, @function
sub_40440d:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x404410

	.globl copy_with_block
	.type copy_with_block, @function
copy_with_block:
	push	rbp
	push	r15
	push	r14
	push	rbx
	push	rax
	mov	r14, rsi
	mov	rbx, rdi
	test	r14, r14
	je	.label_291
	mov	r15d, 0x25
	nop	dword ptr [rax]
.label_290:
	movsx	eax, byte ptr [rbx]
	mov	cl,  byte ptr [byte ptr [rip + newline_character]]
	test	cl, cl
	mov	edx, 0xa
	cmovne	edx, r15d
	mov	rbp,  qword ptr [word ptr [rip + col]]
	mov	rcx,  qword ptr [word ptr [rip + conversion_blocksize]]
	cmp	eax, edx
	jne	.label_288
	cmp	rbp, rcx
	jb	.label_294
	xor	eax, eax
	jmp	.label_292
	.section	.text
	.align	32
	#Procedure 0x404462
	.globl sub_404462
	.type sub_404462, @function
sub_404462:

	nop	word ptr cs:[rax + rax]
.label_293:
	inc	rbp
.label_294:
	cmp	rbp,  qword ptr [word ptr [rip + conversion_blocksize]]
	mov	eax, 0
	jae	.label_292
	movzx	eax,  byte ptr [byte ptr [rip + space_character]]
	test	al, al
	mov	al, 0x40
	jne	.label_295
	mov	al, 0x20
.label_295:
	mov	rcx,  qword ptr [word ptr [rip + oc]]
	lea	rdx, [rcx + 1]
	mov	qword ptr [word ptr [rip + oc]],  rdx
	mov	rsi,  qword ptr [word ptr [rip + obuf]]
	mov	byte ptr [rsi + rcx], al
	cmp	rdx,  qword ptr [word ptr [rip + output_blocksize]]
	jb	.label_293
	call	write_output
	jmp	.label_293
.label_288:
	cmp	rbp, rcx
	jne	.label_287
	inc	qword ptr [word ptr [rip + r_truncate]]
	jmp	.label_289
	.section	.text
	.align	32
	#Procedure 0x4044ce
	.globl sub_4044ce
	.type sub_4044ce, @function
sub_4044ce:

	nop	
.label_287:
	jae	.label_289
	mov	rcx,  qword ptr [word ptr [rip + oc]]
	lea	rdx, [rcx + 1]
	mov	qword ptr [word ptr [rip + oc]],  rdx
	mov	rsi,  qword ptr [word ptr [rip + obuf]]
	mov	byte ptr [rsi + rcx], al
	cmp	rdx,  qword ptr [word ptr [rip + output_blocksize]]
	jb	.label_289
	call	write_output
	nop	dword ptr [rax]
.label_289:
	mov	rax,  qword ptr [word ptr [rip + col]]
	inc	rax
.label_292:
	mov	qword ptr [word ptr [rip + col]],  rax
	inc	rbx
	dec	r14
	jne	.label_290
.label_291:
	add	rsp, 8
	pop	rbx
	pop	r14
	pop	r15
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x404528
	.globl sub_404528
	.type sub_404528, @function
sub_404528:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x404530

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
	jne	.label_296
	mov	rax, qword ptr [rbx + 0x28]
	cmp	rax, qword ptr [rbx + 0x20]
	jne	.label_296
	cmp	qword ptr [rbx + 0x48], 0
	je	.label_297
.label_296:
	mov	rdi, rbx
	mov	rsi, rbp
	mov	edx, r14d
	pop	rbx
	pop	r14
	pop	rbp
	jmp	fseeko
.label_297:
	mov	rdi, rbx
	call	fileno
	mov	edi, eax
	mov	rsi, rbp
	mov	edx, r14d
	call	lseek
	mov	rcx, rax
	mov	eax, 0xffffffff
	cmp	rcx, -1
	je	.label_298
	and	byte ptr [rbx], 0xef
	mov	qword ptr [rbx + 0x90], rcx
	xor	eax, eax
.label_298:
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40459e
	.globl sub_40459e
	.type sub_40459e, @function
sub_40459e:

	nop	
	.section	.text
	.align	32
	#Procedure 0x4045a0

	.globl adjust_value
	.type adjust_value, @function
adjust_value:
	fld	xword ptr [rsp + 8]
	cmp	edi, 1
	je	.label_299
	fld	xword ptr [word ptr [rip + label_301]]
	fucomip	st(1)
	jbe	.label_299
	fld	dword ptr [dword ptr [rip + label_300]]
	fld	st(1)
	fsub	st(1)
	fnstcw	word ptr [rsp - 0x22]
	movzx	eax, word ptr [rsp - 0x22]
	mov	word ptr [rsp - 0x22], 0xc7f
	fldcw	word ptr [rsp - 0x22]
	mov	word ptr [rsp - 0x22], ax
	fistp	qword ptr [rsp - 0x18]
	fldcw	word ptr [rsp - 0x22]
	fnstcw	word ptr [rsp - 0x24]
	movzx	eax, word ptr [rsp - 0x24]
	mov	word ptr [rsp - 0x24], 0xc7f
	fldcw	word ptr [rsp - 0x24]
	mov	word ptr [rsp - 0x24], ax
	fld	st(1)
	fistp	qword ptr [rsp - 0x20]
	fldcw	word ptr [rsp - 0x24]
	movabs	rax, 0x8000000000000000
	xor	rax, qword ptr [rsp - 0x18]
	fxch	st(1)
	fucomi	st(1)
	fstp	st(1)
	cmovb	rax, qword ptr [rsp - 0x20]
	test	edi, edi
	sete	sil
	mov	qword ptr [rsp - 0x10], rax
	xor	edx, edx
	test	rax, rax
	setns	dl
	fild	qword ptr [rsp - 0x10]
	fadd	dword ptr [dword ptr [+ (rdx * 4) + label_38]]
	fucomip	st(1)
	fstp	st(0)
	setp	dl
	setne	cl
	or	cl, dl
	and	cl, sil
	movzx	ecx, cl
	xor	edx, edx
	add	rcx, rax
	mov	qword ptr [rsp - 8], rcx
	setns	dl
	fild	qword ptr [rsp - 8]
	fadd	dword ptr [dword ptr [+ (rdx * 4) + label_38]]
.label_299:
	ret	
	.section	.text
	.align	32
	#Procedure 0x40466d
	.globl sub_40466d
	.type sub_40466d, @function
sub_40466d:

	nop	dword ptr [rax]
.label_306:
	call	xalloc_die
.label_305:
	test	rcx, rcx
	jne	.label_304
	mov	eax, 0x80
	xor	edx, edx
	div	r8
	xor	ecx, ecx
	cmp	r8, 0x80
	seta	cl
	add	rcx, rax
.label_304:
	movabs	rax, 0x7fffffffffffffff
	xor	edx, edx
	div	r8
	cmp	rax, rcx
	jb	.label_303
.label_302:
	mov	qword ptr [rsi], rcx
	imul	r8, rcx
	mov	rsi, r8
	pop	rax
	jmp	xrealloc
.label_303:
	call	xalloc_die
	.section	.text
	.align	32
	#Procedure 0x4046bc
	.globl sub_4046bc
	.type sub_4046bc, @function
sub_4046bc:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x4046c3

	.globl x2nrealloc
	.type x2nrealloc, @function
x2nrealloc:
	push	rax
	mov	r8, rdx
	mov	rcx, qword ptr [rsi]
	test	rdi, rdi
	je	.label_305
	movabs	rax, 0x5555555555555554
	xor	edx, edx
	div	r8
	cmp	rax, rcx
	jbe	.label_306
	mov	rax, rcx
	shr	rax, 1
	lea	rcx, [rcx + rax + 1]
	jmp	.label_302
	.section	.text
	.align	32
	#Procedure 0x4046f0

	.globl xtime_make
	.type xtime_make, @function
xtime_make:
	movabs	rcx, 0x112e0be826d694b3
	mov	rax, rsi
	imul	rcx
	mov	rax, rdx
	shr	rax, 0x3f
	sar	rdx, 0x1a
	add	rdx, rax
	add	rdi, rdx
	imul	rax, rdx, 0x3b9aca00
	sub	rsi, rax
	imul	rax, rdi, 0x3b9aca00
	add	rax, rsi
	ret	
	.section	.text
	.align	32
	#Procedure 0x404726
	.globl sub_404726
	.type sub_404726, @function
sub_404726:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x404730

	.globl quotearg_n
	.type quotearg_n, @function
quotearg_n:
	mov	rdx, -1
	mov	ecx, OFFSET FLAT:default_quoting_options
	jmp	quotearg_n_options
	.section	.text
	.align	32
	#Procedure 0x40473e
	.globl sub_40473e
	.type sub_40473e, @function
sub_40473e:

	nop	
	.section	.text
	.align	32
	#Procedure 0x404740

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
	js	.label_307
	mov	eax, dword ptr [r13]
	mov	rbp,  qword ptr [word ptr [rip + slotvec]]
	cmp	dword ptr [dword ptr [rip + nslots]],  r12d
	mov	qword ptr [rsp + 0x18], r13
	mov	dword ptr [rsp], eax
	mov	qword ptr [rsp + 0x10], rbx
	mov	qword ptr [rsp + 8], r15
	jg	.label_310
	cmp	r12d, 0x7fffffff
	je	.label_312
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
	mov	qword ptr [word ptr [rip + slotvec]],  r14
	jne	.label_308
	movups	xmm0,  xmmword ptr [word ptr [rip + slotvec0]]
	movups	xmmword ptr [r14], xmm0
.label_308:
	movsxd	rax,  dword ptr [dword ptr [rip + nslots]]
	movsxd	rbp, r15d
	mov	rdx, rbp
	sub	rdx, rax
	shl	rax, 4
	mov	rdi, r14
	add	rdi, rax
	shl	rdx, 4
	xor	esi, esi
	call	memset
	mov	dword ptr [dword ptr [rip + nslots]],  ebp
	mov	rbp, r14
	mov	rbx, qword ptr [rsp + 0x10]
	mov	r15, qword ptr [rsp + 8]
.label_310:
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
	jbe	.label_313
	mov	rax, qword ptr [rsp + 0x18]
	mov	ebp, dword ptr [rsp]
	jmp	.label_309
.label_313:
	lea	rax, [rbp + r13]
	lea	r12, [rbp + r13 + 8]
	inc	r15
	mov	qword ptr [rax], r15
	mov	eax, OFFSET FLAT:slot0
	cmp	r14, rax
	mov	ebp, dword ptr [rsp]
	je	.label_311
	mov	rdi, r14
	call	free
.label_311:
	mov	rdi, r15
	call	xcharalloc
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
.label_309:
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
.label_307:
	call	abort
.label_312:
	call	xalloc_die
	.section	.text
	.align	32
	#Procedure 0x4048fd
	.globl sub_4048fd
	.type sub_4048fd, @function
sub_4048fd:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x404900

	.globl translate_charset
	.type translate_charset, @function
translate_charset:
	mov	rax, -0x100
	nop	word ptr [rax + rax]
.label_314:
	movzx	ecx,  byte ptr [byte ptr [rax + input_file]]
	movzx	ecx, byte ptr [rdi + rcx]
	mov	byte ptr [byte ptr [rax + input_file]],  cl
	inc	rax
	jne	.label_314
	mov	byte ptr [byte ptr [rip + translation_needed]],  1
	ret	
	.section	.text
	.align	32
	#Procedure 0x40492e
	.globl sub_40492e
	.type sub_40492e, @function
sub_40492e:

	nop	
	.section	.text
	.align	32
	#Procedure 0x404930

	.globl rpl_nl_langinfo
	.type rpl_nl_langinfo, @function
rpl_nl_langinfo:
	lea	eax, [rdi - 0x27d8]
	lea	ecx, [rdi + 0x1d842]
	cmp	eax, 0xc
	cmovb	edi, ecx
	jmp	nl_langinfo
	.section	.text
	.align	32
	#Procedure 0x404947
	.globl sub_404947
	.type sub_404947, @function
sub_404947:

	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x404950

	.globl iread
	.type iread, @function
iread:
	push	rbp
	push	r15
	push	r14
	push	rbx
	push	rax
	mov	r14, rdx
	mov	r15, rsi
	mov	ebp, edi
	nop	
.label_316:
	call	process_signals
	mov	edi, ebp
	mov	rsi, r15
	mov	rdx, r14
	call	read
	mov	rbx, rax
	cmp	rbx, -1
	je	.label_326
	test	rbx, rbx
	js	.label_318
	jmp	.label_315
	.section	.text
	.align	32
	#Procedure 0x404982
	.globl sub_404982
	.type sub_404982, @function
sub_404982:

	nop	word ptr cs:[rax + rax]
.label_326:
	call	__errno_location
	mov	rcx,  qword ptr [word ptr [rip + iread.prev_nread]]
	mov	rbx, -1
	cmp	rcx, r14
	jae	.label_318
	cmp	dword ptr [rax], 0x16
	jne	.label_318
	test	rcx, rcx
	jle	.label_318
	test	byte ptr [byte ptr [rip + label_324]],  0x40
	jne	.label_325
	nop	
.label_318:
	call	__errno_location
	cmp	dword ptr [rax], 4
	mov	rax, rbx
	je	.label_316
	jmp	.label_317
.label_315:
	je	.label_321
	cmp	rbx, r14
	jae	.label_321
	call	process_signals
.label_321:
	xor	eax, eax
	test	rbx, rbx
	je	.label_317
	mov	rbp,  qword ptr [word ptr [rip + iread.prev_nread]]
	cmp	rbp, r14
	jae	.label_323
	mov	al,  byte ptr [byte ptr [rip + warn_partial_read]]
	test	al, al
	je	.label_323
	test	rbp, rbp
	jle	.label_323
	cmp	dword ptr [dword ptr [rip + status_level]],  1
	je	.label_322
	mov	rdi, rbp
	call	select_plural
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_319
	mov	edx, OFFSET FLAT:label_320
	mov	r8d, 5
	mov	rcx, rax
	call	dcngettext
	mov	rcx, rax
	xor	edi, edi
	xor	esi, esi
	xor	eax, eax
	mov	rdx, rcx
	mov	rcx, rbp
	call	nl_error
.label_322:
	mov	byte ptr [byte ptr [rip + warn_partial_read]],  0
.label_323:
	mov	rax, rbx
	jmp	.label_317
.label_325:
	mov	dword ptr [rax], 0
	xor	eax, eax
.label_317:
	mov	qword ptr [word ptr [rip + iread.prev_nread]],  rax
	add	rsp, 8
	pop	rbx
	pop	r14
	pop	r15
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x404a65
	.globl sub_404a65
	.type sub_404a65, @function
sub_404a65:

	nop	word ptr cs:[rax + rax]
.label_329:
	xor	eax, eax
	ret	
	.section	.text
	.align	32
	#Procedure 0x404a73

	.globl is_nul
	.type is_nul, @function
is_nul:
	mov	rcx, rsi
	mov	al, 1
	test	rcx, rcx
	je	.label_328
	dec	rcx
	mov	rsi, rdi
.label_327:
	cmp	byte ptr [rsi], 0
	jne	.label_329
	test	rcx, rcx
	je	.label_328
	inc	rsi
	mov	edx, ecx
	dec	rcx
	test	dl, 0xf
	jne	.label_327
	push	rax
	inc	rcx
	mov	rdx, rcx
	call	memcmp
	test	eax, eax
	sete	al
	add	rsp, 8
.label_328:
	ret	
.label_332:
	xor	eax, eax
	jmp	.label_330
	.section	.text
	.align	32
	#Procedure 0x404ab4
	.globl sub_404ab4
	.type sub_404ab4, @function
sub_404ab4:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x404abe
	.globl c_ispunct
	.type c_ispunct, @function
c_ispunct:

	add	edi, -0x21
	cmp	edi, 0x5d
	ja	.label_332
	mov	al, 1
	jmp	qword ptr [word ptr [+ (rdi * 8) + label_331]]
.label_330:
	ret	
	.section	.text
	.align	32
	#Procedure 0x404ad0

	.globl group_number
	.type group_number, @function
group_number:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x48
	mov	r15, rdx
	mov	r12, rsi
	mov	rbx, rdi
	mov	qword ptr [rsp + 8], rcx
	mov	rdi, rcx
	call	strlen
	mov	r14, rax
	lea	rdi, [rsp + 0x10]
	mov	rsi, rbx
	mov	rdx, r12
	call	memcpy
	add	rbx, r12
	mov	r13, r14
	neg	r13
	mov	rbp, -1
	jmp	.label_335
	.section	.text
	.align	32
	#Procedure 0x404b19
	.globl sub_404b19
	.type sub_404b19, @function
sub_404b19:

	nop	dword ptr [rax]
.label_333:
	add	rbx, r13
	mov	rdi, rbx
	mov	rsi, qword ptr [rsp + 8]
	mov	rdx, r14
	call	memcpy
.label_335:
	movzx	eax, byte ptr [r15]
	test	rax, rax
	je	.label_334
	cmp	al, 0x7f
	cmovae	rax, r12
	inc	r15
	mov	rbp, rax
.label_334:
	cmp	r12, rbp
	cmovb	rbp, r12
	sub	rbx, rbp
	mov	rax, r12
	sub	rax, rbp
	lea	rsi, [rsp + rax + 0x10]
	mov	rdi, rbx
	mov	rdx, rbp
	call	memcpy
	sub	r12, rbp
	jne	.label_333
	mov	rax, rbx
	add	rsp, 0x48
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x404b7f
	.globl sub_404b7f
	.type sub_404b7f, @function
sub_404b7f:

	nop	
	.section	.text
	.align	32
	#Procedure 0x404b80
	.globl c_toupper
	.type c_toupper, @function
c_toupper:

	lea	ecx, [rdi - 0x61]
	lea	eax, [rdi - 0x20]
	cmp	ecx, 0x1a
	cmovae	eax, edi
	ret	
	.section	.text
	.align	32
	#Procedure 0x404b8d
	.globl sub_404b8d
	.type sub_404b8d, @function
sub_404b8d:

	nop	dword ptr [rax]
.label_337:
	call	__errno_location
	mov	rcx, rax
	xor	eax, eax
	cmp	dword ptr [rcx], 0xc
	je	.label_336
.label_338:
	pop	rcx
	ret	
.label_336:
	call	xalloc_die
	.section	.text
	.align	32
	#Procedure 0x404ba6
	.globl sub_404ba6
	.type sub_404ba6, @function
sub_404ba6:

	nop	word ptr [rax + rax]
.label_341:
	test	dl, dl
	jne	.label_339
	mov	rsi, rax
	call	xstrcat
	pop	rcx
	ret	
.label_339:
	lea	rdi, [rsp]
	mov	esi, 1
	mov	rdx, rcx
	mov	rcx, rax
	call	__vasprintf_chk
	test	eax, eax
	js	.label_337
	mov	rax, qword ptr [rsp]
	jmp	.label_338
	.section	.text
	.align	32
	#Procedure 0x404bdb

	.globl xvasprintf
	.type xvasprintf, @function
xvasprintf:
	push	rax
	mov	rax, rsi
	mov	rcx, rdi
	xor	edi, edi
	jmp	.label_340
	.section	.text
	.align	32
	#Procedure 0x404be6
	.globl sub_404be6
	.type sub_404be6, @function
sub_404be6:

	nop	dword ptr [rax + rax]
.label_342:
	inc	rdi
.label_340:
	movzx	edx, byte ptr [rcx + rdi*2]
	cmp	dl, 0x25
	jne	.label_341
	cmp	byte ptr [rcx + rdi*2 + 1], 0x73
	je	.label_342
	jmp	.label_339
	.section	.text
	.align	32
	#Procedure 0x404c00

	.globl advance_input_offset
	.type advance_input_offset, @function
advance_input_offset:
	add	rdi,  qword ptr [word ptr [rip + input_offset]]
	mov	qword ptr [word ptr [rip + input_offset]],  rdi
	jae	.label_343
	mov	byte ptr [byte ptr [rip + input_offset_overflow]],  1
.label_343:
	ret	
	.section	.text
	.align	32
	#Procedure 0x404c18
	.globl sub_404c18
	.type sub_404c18, @function
sub_404c18:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x404c20

	.globl finish_up
	.type finish_up, @function
finish_up:
	push	rax
	call	cleanup
	call	print_stats
	pop	rax
	jmp	process_signals
	.section	.text
	.align	32
	#Procedure 0x404c31
	.globl sub_404c31
	.type sub_404c31, @function
sub_404c31:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x404c40

	.globl set_fd_flags
	.type set_fd_flags, @function
set_fd_flags:
	push	rbp
	push	r15
	push	r14
	push	r12
	push	rbx
	sub	rsp, 0x90
	mov	r14, rdx
	mov	ebp, esi
	mov	r15d, edi
	and	ebp, 0xfffdfeff
	je	.label_344
	mov	esi, 3
	xor	eax, eax
	mov	edi, r15d
	call	rpl_fcntl
	mov	ebx, eax
	test	ebx, ebx
	js	.label_351
	or	ebp, ebx
	cmp	ebx, ebp
	je	.label_344
	mov	r12b, 1
	test	ebp, 0x10000
	je	.label_345
	lea	rsi, [rsp]
	mov	edi, r15d
	call	fstat
	test	eax, eax
	jne	.label_348
	mov	eax, 0xf000
	and	eax, dword ptr [rsp + 0x18]
	mov	r12b, 1
	cmp	eax, 0x4000
	je	.label_349
	call	__errno_location
	mov	dword ptr [rax], 0x14
.label_348:
	xor	r12d, r12d
.label_349:
	and	ebp, 0xfffeffff
.label_345:
	cmp	ebx, ebp
	je	.label_346
	test	r12b, r12b
	je	.label_346
	xor	ebx, ebx
	mov	esi, 4
	xor	eax, eax
	mov	edi, r15d
	mov	edx, ebp
	call	rpl_fcntl
	cmp	eax, -1
	je	.label_350
	mov	bl, r12b
.label_350:
	mov	r12b, bl
.label_346:
	test	r12b, 1
	je	.label_351
.label_344:
	add	rsp, 0x90
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_351:
	call	__errno_location
	mov	ebx, dword ptr [rax]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_347
	mov	edx, 5
	call	dcgettext
	mov	rbp, rax
	mov	edi, 4
	mov	rsi, r14
	call	quotearg_style
	mov	rcx, rax
	mov	edi, 1
	xor	eax, eax
	mov	esi, ebx
	mov	rdx, rbp
	call	nl_error
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x404d40
	.globl c_tolower
	.type c_tolower, @function
c_tolower:

	lea	ecx, [rdi - 0x41]
	lea	eax, [rdi + 0x20]
	cmp	ecx, 0x1a
	cmovae	eax, edi
	ret	
	.section	.text
	.align	32
	#Procedure 0x404d4d
	.globl sub_404d4d
	.type sub_404d4d, @function
sub_404d4d:

	nop	dword ptr [rax]
.label_356:
	mov	rax,  qword ptr [word ptr [rip + output_blocksize]]
	mov	rcx,  qword ptr [word ptr [rip + page_size]]
	lea	rdi, [rax + rcx - 1]
	call	malloc
	test	rax, rax
	je	.label_352
	mov	rsi,  qword ptr [word ptr [rip + page_size]]
	mov	rdi, rax
	call	ptr_align
.label_355:
	mov	qword ptr [word ptr [rip + obuf]],  rax
.label_354:
	add	rsp, 0x290
	pop	rbx
	pop	r14
	pop	r15
	ret	
	.section	.text
	.align	32
	#Procedure 0x404d90

	.globl alloc_obuf
	.type alloc_obuf, @function
alloc_obuf:
	push	r15
	push	r14
	push	rbx
	sub	rsp, 0x290
	cmp	qword ptr [word ptr [rip + obuf]],  0
	jne	.label_354
	test	byte ptr [byte ptr [rip + label_100]],  8
	jne	.label_356
	call	alloc_ibuf
	mov	rax,  qword ptr [word ptr [rip + ibuf]]
	jmp	.label_355
.label_352:
	mov	r14,  qword ptr [word ptr [rip + output_blocksize]]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_353
	mov	edx, 5
	call	dcgettext
	mov	r15, rax
	mov	rdi,  qword ptr [word ptr [rip + output_blocksize]]
	lea	rsi, [rsp]
	mov	edx, 0x1f1
	mov	ecx, 1
	mov	r8d, 1
	call	human_readable
	mov	rbx, rax
	mov	edi, 1
	xor	esi, esi
	xor	eax, eax
	mov	rdx, r15
	mov	rcx, r14
	mov	r8, rbx
	call	nl_error
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x404e20

	.globl cache_round
	.type cache_round, @function
cache_round:
	test	edi, edi
	mov	eax, OFFSET FLAT:cache_round.i_pending
	mov	ecx, OFFSET FLAT:cache_round.o_pending
	cmove	rcx, rax
	test	rsi, rsi
	mov	rax, qword ptr [rcx]
	je	.label_357
	add	rax, rsi
	mov	edx, eax
	and	edx, 0x1ffff
	mov	qword ptr [rcx], rdx
	xor	ecx, ecx
	sub	rax, rdx
	cmovbe	rax, rcx
.label_357:
	ret	
	.section	.text
	.align	32
	#Procedure 0x404e50
	.globl c_isblank
	.type c_isblank, @function
c_isblank:

	cmp	edi, 0x20
	sete	cl
	cmp	edi, 9
	sete	al
	or	al, cl
	ret	
	.section	.text
	.align	32
	#Procedure 0x404e5f
	.globl sub_404e5f
	.type sub_404e5f, @function
sub_404e5f:

	nop	
	.section	.text
	.align	32
	#Procedure 0x404e60
	.globl xnrealloc
	.type xnrealloc, @function
xnrealloc:

	mov	rcx, rdx
	movabs	rax, 0x7fffffffffffffff
	xor	edx, edx
	div	rcx
	cmp	rax, rsi
	jb	.label_358
	imul	rcx, rsi
	mov	rsi, rcx
	jmp	xrealloc
.label_358:
	push	rax
	call	xalloc_die
	.section	.text
	.align	32
	#Procedure 0x404e86
	.globl sub_404e86
	.type sub_404e86, @function
sub_404e86:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x404e90

	.globl xrealloc
	.type xrealloc, @function
xrealloc:
	push	rbx
	mov	rbx, rsi
	test	rdi, rdi
	je	.label_359
	test	rbx, rbx
	jne	.label_359
	call	free
	xor	eax, eax
	pop	rbx
	ret	
.label_359:
	mov	rsi, rbx
	call	realloc
	test	rbx, rbx
	je	.label_361
	test	rax, rax
	je	.label_360
.label_361:
	pop	rbx
	ret	
.label_360:
	call	xalloc_die
	.section	.text
	.align	32
	#Procedure 0x404ec0
	.globl emit_bug_reporting_address
	.type emit_bug_reporting_address, @function
emit_bug_reporting_address:

	push	rax
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_362
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:label_363
	xor	eax, eax
	mov	rsi, rcx
	call	__printf_chk
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_365
	mov	edx, 5
	call	dcgettext
	mov	rsi, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:label_366
	mov	ecx, OFFSET FLAT:label_367
	xor	eax, eax
	call	__printf_chk
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_364
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	pop	rax
	jmp	fputs_unlocked
	.section	.text
	.align	32
	#Procedure 0x404f34
	.globl sub_404f34
	.type sub_404f34, @function
sub_404f34:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x404f40

	.globl dd_copy
	.type dd_copy, @function
dd_copy:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x98
	mov	rbx,  qword ptr [word ptr [rip + skip_records]]
	mov	rbp,  qword ptr [word ptr [rip + skip_bytes]]
	mov	rax, rbp
	or	rax, rbx
	je	.label_385
	mov	r15,  qword ptr [word ptr [rip + input_offset]]
	mov	r14,  qword ptr [word ptr [rip + input_blocksize]]
	mov	rsi,  qword ptr [word ptr [rip + input_file]]
	xor	edi, edi
	mov	r8d, OFFSET FLAT:skip_bytes
	mov	rdx, rbx
	mov	rcx, r14
	call	skip
	test	rax, rax
	jne	.label_403
	imul	r14, rbx
	add	r15, rbp
	add	r15, r14
	cmp	r15,  qword ptr [word ptr [rip + input_offset]]
	je	.label_385
	mov	al,  byte ptr [byte ptr [rip + input_offset_overflow]]
	test	al, al
	jne	.label_385
.label_403:
	cmp	dword ptr [dword ptr [rip + status_level]],  1
	je	.label_385
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_412
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
	mov	rdx,  qword ptr [word ptr [rip + input_file]]
	xor	edi, edi
	mov	esi, 3
	call	quotearg_n_style_colon
	mov	rcx, rax
	xor	edi, edi
	xor	esi, esi
	xor	eax, eax
	mov	rdx, rbx
	call	nl_error
.label_385:
	mov	rax,  qword ptr [word ptr [rip + seek_bytes]]
	or	rax,  qword ptr [word ptr [rip + seek_records]]
	je	.label_384
	mov	rax,  qword ptr [word ptr [rip + seek_bytes]]
	mov	qword ptr [rsp + 8], rax
	mov	rsi,  qword ptr [word ptr [rip + output_file]]
	mov	rdx,  qword ptr [word ptr [rip + seek_records]]
	mov	rcx,  qword ptr [word ptr [rip + output_blocksize]]
	lea	r14, [rsp + 8]
	mov	edi, 1
	mov	r8, r14
	call	skip
	mov	rbp, rax
	mov	rdx, qword ptr [rsp + 8]
	mov	rax, rdx
	or	rax, rbp
	je	.label_384
	test	rbp, rbp
	mov	rdi,  qword ptr [word ptr [rip + obuf]]
	cmovne	rdx,  qword ptr [word ptr [rip + output_blocksize]]
	xor	esi, esi
	call	memset
	mov	r15d, OFFSET FLAT:output_blocksize
	nop	dword ptr [rax]
.label_369:
	test	rbp, rbp
	mov	rax, r14
	cmovne	rax, r15
	mov	rbx, qword ptr [rax]
	mov	rdi,  qword ptr [word ptr [rip + obuf]]
	mov	rsi, rbx
	call	iwrite
	cmp	rax, rbx
	jne	.label_402
	test	rbp, rbp
	je	.label_405
	dec	rbp
	jmp	.label_406
	.section	.text
	.align	32
	#Procedure 0x40509f
	.globl sub_40509f
	.type sub_40509f, @function
sub_40509f:

	nop	
.label_405:
	mov	qword ptr [rsp + 8], 0
	xor	ebp, ebp
.label_406:
	mov	rax, qword ptr [rsp + 8]
	or	rax, rbp
	jne	.label_369
.label_384:
	mov	rax,  qword ptr [word ptr [rip + max_bytes]]
	xor	ebp, ebp
	or	rax,  qword ptr [word ptr [rip + max_records]]
	je	.label_392
	call	alloc_ibuf
	call	alloc_obuf
	mov	r13d, 0x400
	xor	r12d, r12d
	xor	r14d, r14d
	jmp	.label_393
.label_389:
	mov	rsi, qword ptr [rsp]
	call	copy_with_block
	nop	dword ptr [rax]
.label_393:
	cmp	dword ptr [dword ptr [rip + status_level]],  4
	jne	.label_422
	call	gethrxtime
	cmp	qword ptr [word ptr [rip + next_time]],  rax
	jg	.label_422
	mov	rdi, rax
	call	print_xfer_stats
	add	qword ptr [word ptr [rip + next_time]],  0x3b9aca00
.label_422:
	mov	rax,  qword ptr [word ptr [rip + r_full]]
	add	rax,  qword ptr [word ptr [rip + r_partial]]
	mov	rcx,  qword ptr [word ptr [rip + max_records]]
	cmp	qword ptr [word ptr [rip + max_bytes]],  1
	sbb	rcx, -1
	cmp	rax, rcx
	jae	.label_374
	mov	eax,  dword ptr [dword ptr [rip + conversions_mask]]
	mov	ecx, eax
	and	ecx, 0x500
	cmp	ecx, 0x500
	jne	.label_386
	mov	rdi,  qword ptr [word ptr [rip + ibuf]]
	test	al, 0x18
	setne	al
	shl	al, 5
	mov	rdx,  qword ptr [word ptr [rip + input_blocksize]]
	movzx	esi, al
	call	memset
.label_386:
	mov	rax,  qword ptr [word ptr [rip + r_full]]
	add	rax,  qword ptr [word ptr [rip + r_partial]]
	cmp	rax,  qword ptr [word ptr [rip + max_records]]
	mov	rax,  qword ptr [word ptr [rip + iread_fnc]]
	mov	rsi,  qword ptr [word ptr [rip + ibuf]]
	jae	.label_397
	mov	rdx,  qword ptr [word ptr [rip + input_blocksize]]
	jmp	.label_407
	.section	.text
	.align	32
	#Procedure 0x4051a6
	.globl sub_4051a6
	.type sub_4051a6, @function
sub_4051a6:

	nop	word ptr cs:[rax + rax]
.label_397:
	mov	rdx,  qword ptr [word ptr [rip + max_bytes]]
.label_407:
	xor	edi, edi
	call	rax
	mov	r15, rax
	test	r15, r15
	jg	.label_411
	je	.label_415
	test	byte ptr [byte ptr [rip + label_100]],  1
	je	.label_417
	cmp	dword ptr [dword ptr [rip + status_level]],  1
	je	.label_419
.label_417:
	call	__errno_location
	mov	ebp, dword ptr [rax]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_421
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
	mov	rsi,  qword ptr [word ptr [rip + input_file]]
	mov	edi, 4
	call	quotearg_style
	mov	rcx, rax
	xor	edi, edi
	xor	eax, eax
	mov	esi, ebp
	mov	rdx, rbx
	call	nl_error
.label_419:
	mov	ebp, 1
	test	byte ptr [byte ptr [rip + label_100]],  1
	je	.label_409
	call	print_stats
	mov	rbx,  qword ptr [word ptr [rip + input_blocksize]]
	sub	rbx, r14
	xor	edi, edi
	mov	rsi, rbx
	call	invalidate_cache
	mov	rdi, rbx
	call	advance_input_after_read_error
	test	al, al
	jne	.label_387
	mov	byte ptr [byte ptr [rip + input_seekable]],  0
	mov	dword ptr [dword ptr [rip + input_seek_errno]],  0x1d
	mov	r12d, 1
.label_387:
	test	r14, r14
	jne	.label_393
	mov	eax,  dword ptr [dword ptr [rip + conversions_mask]]
	and	eax, r13d
	test	eax, eax
	je	.label_393
	mov	eax, 0
	cmove	rax, r15
	test	r14, r14
	cmove	r15, rax
	jmp	.label_371
.label_411:
	mov	rdi, r15
	call	advance_input_offset
	cmp	byte ptr [byte ptr [rip + i_nocache]],  1
	jne	.label_371
	xor	edi, edi
	mov	rsi, r15
	call	invalidate_cache
.label_371:
	mov	qword ptr [rsp], r15
	cmp	r15,  qword ptr [word ptr [rip + input_blocksize]]
	jae	.label_410
	inc	qword ptr [word ptr [rip + r_partial]]
	mov	r14, qword ptr [rsp]
	mov	eax,  dword ptr [dword ptr [rip + conversions_mask]]
	test	ah, 4
	je	.label_398
	test	ah, 1
	jne	.label_395
	mov	rdi,  qword ptr [word ptr [rip + ibuf]]
	add	rdi, r14
	test	al, 0x18
	setne	al
	shl	al, 5
	mov	rdx,  qword ptr [word ptr [rip + input_blocksize]]
	sub	rdx, r14
	movzx	esi, al
	call	memset
.label_395:
	mov	rax,  qword ptr [word ptr [rip + input_blocksize]]
	mov	qword ptr [rsp], rax
	jmp	.label_398
.label_410:
	inc	qword ptr [word ptr [rip + r_full]]
	xor	r14d, r14d
.label_398:
	mov	rdi,  qword ptr [word ptr [rip + ibuf]]
	mov	rax,  qword ptr [word ptr [rip + obuf]]
	cmp	rdi, rax
	je	.label_372
	cmp	byte ptr [byte ptr [rip + translation_needed]],  1
	jne	.label_377
	mov	rsi, qword ptr [rsp]
	call	translate_buffer
.label_377:
	mov	rdi,  qword ptr [word ptr [rip + ibuf]]
	cmp	byte ptr [byte ptr [rip + conversions_mask]],  0
	jns	.label_383
	lea	rsi, [rsp]
	call	swab_buffer
	mov	rdi, rax
.label_383:
	mov	eax,  dword ptr [dword ptr [rip + conversions_mask]]
	test	al, 8
	jne	.label_389
	test	al, 0x10
	mov	rsi, qword ptr [rsp]
	jne	.label_390
	call	copy_simple
	jmp	.label_393
.label_372:
	mov	rbx, qword ptr [rsp]
	mov	rdi, rax
	mov	rsi, rbx
	call	iwrite
	add	qword ptr [word ptr [rip + w_bytes]],  rax
	cmp	rax, rbx
	jne	.label_381
	cmp	rbx,  qword ptr [word ptr [rip + input_blocksize]]
	jne	.label_404
	inc	qword ptr [word ptr [rip + w_full]]
	jmp	.label_393
.label_404:
	inc	qword ptr [word ptr [rip + w_partial]]
	jmp	.label_393
.label_390:
	call	copy_with_unblock
	jmp	.label_393
.label_415:
	mov	al,  byte ptr [byte ptr [rip + i_nocache]]
	or	byte ptr [byte ptr [rip + i_nocache_eof]],  al
	cmp	byte ptr [byte ptr [rip + o_nocache]],  1
	jne	.label_413
	test	byte ptr [byte ptr [rip + label_100]],  2
	sete	al
	jmp	.label_418
.label_413:
	xor	eax, eax
.label_418:
	or	byte ptr [byte ptr [rip + o_nocache_eof]],  al
.label_374:
	mov	ebp, r12d
.label_409:
	cmp	byte ptr [byte ptr [rip + char_is_saved]],  1
	jne	.label_368
	mov	eax,  dword ptr [dword ptr [rip + conversions_mask]]
	test	al, 8
	jne	.label_423
	test	al, 0x10
	jne	.label_426
	mov	al,  byte ptr [byte ptr [rip + saved_char]]
	mov	rcx,  qword ptr [word ptr [rip + oc]]
	lea	rdx, [rcx + 1]
	mov	qword ptr [word ptr [rip + oc]],  rdx
	mov	rsi,  qword ptr [word ptr [rip + obuf]]
	mov	byte ptr [rsi + rcx], al
	cmp	rdx,  qword ptr [word ptr [rip + output_blocksize]]
	jb	.label_368
	call	write_output
	jmp	.label_368
.label_423:
	mov	edi, OFFSET FLAT:saved_char
	mov	esi, 1
	call	copy_with_block
	jmp	.label_368
.label_426:
	mov	edi, OFFSET FLAT:saved_char
	mov	esi, 1
	call	copy_with_unblock
.label_368:
	mov	eax,  dword ptr [dword ptr [rip + conversions_mask]]
	mov	rbx,  qword ptr [word ptr [rip + col]]
	test	al, 8
	je	.label_388
	test	rbx, rbx
	jne	.label_391
	jmp	.label_388
	.section	.text
	.align	32
	#Procedure 0x40546c
	.globl sub_40546c
	.type sub_40546c, @function
sub_40546c:

	nop	dword ptr [rax]
.label_401:
	inc	rbx
.label_391:
	cmp	rbx,  qword ptr [word ptr [rip + conversion_blocksize]]
	jae	.label_394
	movzx	eax,  byte ptr [byte ptr [rip + space_character]]
	test	al, al
	mov	al, 0x40
	jne	.label_399
	mov	al, 0x20
.label_399:
	mov	rcx,  qword ptr [word ptr [rip + oc]]
	lea	rdx, [rcx + 1]
	mov	qword ptr [word ptr [rip + oc]],  rdx
	mov	rsi,  qword ptr [word ptr [rip + obuf]]
	mov	byte ptr [rsi + rcx], al
	cmp	rdx,  qword ptr [word ptr [rip + output_blocksize]]
	jb	.label_401
	call	write_output
	jmp	.label_401
.label_394:
	mov	rbx,  qword ptr [word ptr [rip + col]]
.label_388:
	test	rbx, rbx
	je	.label_396
	test	byte ptr [byte ptr [rip + conversions_mask]],  0x10
	je	.label_396
	mov	al,  byte ptr [byte ptr [rip + newline_character]]
	test	al, al
	mov	al, 0x25
	jne	.label_416
	mov	al, 0xa
.label_416:
	mov	rcx,  qword ptr [word ptr [rip + oc]]
	lea	rsi, [rcx + 1]
	mov	qword ptr [word ptr [rip + oc]],  rsi
	mov	rdx,  qword ptr [word ptr [rip + obuf]]
	mov	byte ptr [rdx + rcx], al
	cmp	rsi,  qword ptr [word ptr [rip + output_blocksize]]
	jb	.label_420
	call	write_output
.label_396:
	mov	rsi,  qword ptr [word ptr [rip + oc]]
.label_420:
	test	rsi, rsi
	je	.label_370
	mov	rdi,  qword ptr [word ptr [rip + obuf]]
	call	iwrite
	add	qword ptr [word ptr [rip + w_bytes]],  rax
	test	rax, rax
	je	.label_375
	inc	qword ptr [word ptr [rip + w_partial]]
.label_375:
	cmp	rax,  qword ptr [word ptr [rip + oc]]
	jne	.label_381
.label_370:
	cmp	byte ptr [byte ptr [rip + final_op_was_seek]],  1
	jne	.label_382
	lea	rsi, [rsp + 8]
	mov	edi, 1
	call	fstat
	test	eax, eax
	je	.label_400
	call	__errno_location
	mov	ebx, dword ptr [rax]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_122
	jmp	.label_379
.label_381:
	call	__errno_location
	mov	ebx, dword ptr [rax]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_378
	jmp	.label_379
.label_400:
	mov	eax, 0xf000
	and	eax, dword ptr [rsp + 0x20]
	cmp	eax, 0x8000
	jne	.label_382
	mov	edi, 1
	xor	esi, esi
	mov	edx, 1
	call	lseek
	mov	rbx, rax
	test	rbx, rbx
	js	.label_382
	cmp	qword ptr [rsp + 0x38], rbx
	jge	.label_382
	mov	rdi, rbx
	call	iftruncate
	test	eax, eax
	je	.label_382
	call	__errno_location
	mov	r14d, dword ptr [rax]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_425
	mov	edx, 5
	call	dcgettext
	mov	r15, rax
	mov	rsi,  qword ptr [word ptr [rip + output_file]]
	mov	edi, 4
	call	quotearg_style
	mov	rbp, rax
	xor	edi, edi
	xor	eax, eax
	mov	esi, r14d
	mov	rdx, r15
	mov	rcx, rbx
	mov	r8, rbp
	call	nl_error
	jmp	.label_424
.label_382:
	test	byte ptr [byte ptr [rip + label_100]],  0x40
	je	.label_373
	mov	edi, 1
	call	fdatasync
	test	eax, eax
	je	.label_373
	call	__errno_location
	mov	ebx, dword ptr [rax]
	cmp	ebx, 0x16
	je	.label_376
	cmp	ebx, 0x26
	je	.label_376
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_380
	mov	edx, 5
	call	dcgettext
	mov	rbp, rax
	mov	rsi,  qword ptr [word ptr [rip + output_file]]
	mov	edi, 4
	call	quotearg_style
	mov	rcx, rax
	xor	edi, edi
	xor	eax, eax
	mov	esi, ebx
	mov	rdx, rbp
	call	nl_error
	mov	ebp, 1
.label_376:
	or	byte ptr [byte ptr [rip + label_100]],  0x80
.label_373:
	cmp	word ptr [word ptr [rip + conversions_mask]],  0
	jns	.label_392
	nop	dword ptr [rax + rax]
.label_408:
	mov	edi, 1
	call	fsync
	test	eax, eax
	je	.label_392
	call	__errno_location
	mov	ebx, dword ptr [rax]
	cmp	ebx, 4
	je	.label_408
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_414
.label_379:
	mov	edx, 5
	call	dcgettext
	mov	rbp, rax
	mov	rsi,  qword ptr [word ptr [rip + output_file]]
	mov	edi, 4
	call	quotearg_style
	mov	rcx, rax
	xor	edi, edi
	xor	eax, eax
	mov	esi, ebx
	mov	rdx, rbp
	call	nl_error
.label_424:
	mov	ebp, 1
.label_392:
	mov	eax, ebp
	add	rsp, 0x98
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_402:
	call	__errno_location
	mov	ebx, dword ptr [rax]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_181
	mov	edx, 5
	call	dcgettext
	mov	rbp, rax
	mov	rsi,  qword ptr [word ptr [rip + output_file]]
	mov	edi, 4
	call	quotearg_style
	mov	rcx, rax
	xor	edi, edi
	xor	eax, eax
	mov	esi, ebx
	mov	rdx, rbp
	call	nl_error
	call	quit
	.section	.text
	.align	32
	#Procedure 0x40572b
	.globl sub_40572b
	.type sub_40572b, @function
sub_40572b:

	nop	dword ptr [rax + rax]
.label_428:
	sub	r15, rbx
.label_427:
	xor	edi, edi
	mov	edx, 5
	mov	rsi, qword ptr [rsp]
	call	dcgettext
	mov	rbp, rax
	xor	edi, edi
	mov	esi, 8
	mov	rdx, rbx
	mov	rcx, r15
	call	quotearg_n_style_mem
	mov	rbx, rax
	xor	edi, edi
	xor	esi, esi
	mov	edx, OFFSET FLAT:label_247
	xor	eax, eax
	mov	rcx, rbp
	mov	r8, rbx
	call	nl_error
	mov	edi, 1
	call	usage
	.section	.text
	.align	32
	#Procedure 0x40577b
	.globl sub_40577b
	.type sub_40577b, @function
sub_40577b:

	nop	word ptr cs:[rax + rax]
.label_433:
	test	r15, r15
	jne	.label_428
	mov	rdi, rbx
	call	strlen
	mov	r15, rax
	jmp	.label_427
	.section	.text
	.align	32
	#Procedure 0x405799

	.globl parse_symbols
	.type parse_symbols, @function
parse_symbols:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	push	rax
	mov	qword ptr [rsp], rcx
	mov	r12d, edx
	mov	r13, rsi
	mov	rbx, rdi
	xor	ebp, ebp
	nop	word ptr [rax + rax]
.label_430:
	mov	esi, 0x2c
	mov	rdi, rbx
	call	strchr
	mov	r15, rax
	mov	r14, r13
	nop	word ptr cs:[rax + rax]
.label_431:
	mov	edx, 0x2c
	mov	rdi, rbx
	mov	rsi, r14
	call	operand_matches
	test	al, al
	je	.label_429
	mov	eax, dword ptr [r14 + 0xc]
	test	eax, eax
	jne	.label_432
.label_429:
	cmp	byte ptr [r14], 0
	lea	r14, [r14 + 0x10]
	jne	.label_431
	jmp	.label_433
	.section	.text
	.align	32
	#Procedure 0x405801
	.globl sub_405801
	.type sub_405801, @function
sub_405801:

	nop	dword ptr [rax + rax]
.label_432:
	test	r12b, r12b
	mov	ecx, 0
	cmovne	ebp, ecx
	or	ebp, eax
	test	r15, r15
	lea	rbx, [r15 + 1]
	jne	.label_430
	mov	eax, ebp
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
	#Procedure 0x405830

	.globl select_plural
	.type select_plural, @function
select_plural:
	mov	rax, rdi
	ret	
	.section	.text
	.align	32
	#Procedure 0x405834
	.globl sub_405834
	.type sub_405834, @function
sub_405834:

	nop	word ptr cs:[rax + rax]
.label_434:
	xor	esi, esi
	mov	edx, 1
	jmp	rpl_fseeko
	.section	.text
	.align	32
	#Procedure 0x40584c
	.globl sub_40584c
	.type sub_40584c, @function
sub_40584c:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x405859

	.globl clear_ungetc_buffer_preserving_position
	.type clear_ungetc_buffer_preserving_position, @function
clear_ungetc_buffer_preserving_position:
	test	byte ptr [rdi + 1], 1
	jne	.label_434
	ret	
	.section	.text
	.align	32
	#Procedure 0x405860
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
	mov	r8d, dword ptr [rbp]
	mov	r9d, dword ptr [rbp + 4]
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
	.align	32
	#Procedure 0x4058d2
	.globl sub_4058d2
	.type sub_4058d2, @function
sub_4058d2:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4058e0

	.globl strcaseeq1
	.type strcaseeq1, @function
strcaseeq1:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	push	rax
	mov	dword ptr [rsp + 4], r9d
	mov	r15d, r8d
	mov	r12d, ecx
	mov	r13d, edx
	mov	ebp, esi
	mov	rbx, rdi
	mov	r14b, byte ptr [rsp + 0x40]
	mov	edi, ebp
	call	c_isupper
	movsx	ecx, byte ptr [rbx + 1]
	test	al, al
	je	.label_437
	and	ecx, 0xffffffdf
	xor	eax, eax
	cmp	ecx, ebp
	je	.label_435
	jmp	.label_436
.label_437:
	xor	eax, eax
	cmp	cl, bpl
	jne	.label_436
.label_435:
	mov	eax, 1
	test	bpl, bpl
	je	.label_436
	movsx	esi, r13b
	movsx	edx, r12b
	movsx	ecx, r15b
	mov	eax, dword ptr [rsp + 4]
	movsx	r8d, al
	movsx	r9d, r14b
	mov	rdi, rbx
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	jmp	strcaseeq2
.label_436:
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
	#Procedure 0x405968
	.globl sub_405968
	.type sub_405968, @function
sub_405968:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x405970

	.globl strcaseeq2
	.type strcaseeq2, @function
strcaseeq2:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	push	rax
	mov	r14d, r9d
	mov	r15d, r8d
	mov	r12d, ecx
	mov	r13d, edx
	mov	ebp, esi
	mov	rbx, rdi
	mov	edi, ebp
	call	c_isupper
	movsx	ecx, byte ptr [rbx + 2]
	test	al, al
	je	.label_438
	and	ecx, 0xffffffdf
	xor	eax, eax
	cmp	ecx, ebp
	je	.label_440
	jmp	.label_439
.label_438:
	xor	eax, eax
	cmp	cl, bpl
	jne	.label_439
.label_440:
	mov	eax, 1
	test	bpl, bpl
	je	.label_439
	movsx	esi, r13b
	movsx	edx, r12b
	movsx	ecx, r15b
	movsx	r8d, r14b
	mov	rdi, rbx
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	jmp	strcaseeq3
.label_439:
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
	#Procedure 0x4059e9
	.globl sub_4059e9
	.type sub_4059e9, @function
sub_4059e9:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x4059f0

	.globl strcaseeq3
	.type strcaseeq3, @function
strcaseeq3:
	push	rbp
	push	r15
	push	r14
	push	r12
	push	rbx
	mov	r14d, r8d
	mov	r15d, ecx
	mov	r12d, edx
	mov	ebp, esi
	mov	rbx, rdi
	mov	edi, ebp
	call	c_isupper
	movsx	ecx, byte ptr [rbx + 3]
	test	al, al
	je	.label_443
	and	ecx, 0xffffffdf
	xor	eax, eax
	cmp	ecx, ebp
	je	.label_442
	jmp	.label_441
.label_443:
	xor	eax, eax
	cmp	cl, bpl
	jne	.label_441
.label_442:
	mov	eax, 1
	test	bpl, bpl
	je	.label_441
	movsx	esi, r12b
	movsx	edx, r15b
	movsx	ecx, r14b
	mov	rdi, rbx
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	pop	rbp
	jmp	strcaseeq4
.label_441:
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x405a53
	.globl sub_405a53
	.type sub_405a53, @function
sub_405a53:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x405a60

	.globl strcaseeq4
	.type strcaseeq4, @function
strcaseeq4:
	push	rbp
	push	r15
	push	r14
	push	rbx
	push	rax
	mov	r14d, ecx
	mov	r15d, edx
	mov	ebp, esi
	mov	rbx, rdi
	mov	edi, ebp
	call	c_isupper
	movsx	ecx, byte ptr [rbx + 4]
	test	al, al
	je	.label_446
	and	ecx, 0xffffffdf
	xor	eax, eax
	cmp	ecx, ebp
	je	.label_444
	jmp	.label_445
.label_446:
	xor	eax, eax
	cmp	cl, bpl
	jne	.label_445
.label_444:
	mov	eax, 1
	test	bpl, bpl
	je	.label_445
	movsx	esi, r15b
	movsx	edx, r14b
	mov	rdi, rbx
	add	rsp, 8
	pop	rbx
	pop	r14
	pop	r15
	pop	rbp
	jmp	strcaseeq5
.label_445:
	add	rsp, 8
	pop	rbx
	pop	r14
	pop	r15
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x405abf
	.globl sub_405abf
	.type sub_405abf, @function
sub_405abf:

	nop	
	.section	.text
	.align	32
	#Procedure 0x405ac0

	.globl strcaseeq5
	.type strcaseeq5, @function
strcaseeq5:
	push	rbp
	push	r14
	push	rbx
	mov	r14d, edx
	mov	ebp, esi
	mov	rbx, rdi
	mov	edi, ebp
	call	c_isupper
	movsx	ecx, byte ptr [rbx + 5]
	test	al, al
	je	.label_447
	and	ecx, 0xffffffdf
	xor	eax, eax
	cmp	ecx, ebp
	je	.label_449
	jmp	.label_448
.label_447:
	xor	eax, eax
	cmp	cl, bpl
	jne	.label_448
.label_449:
	mov	eax, 1
	test	bpl, bpl
	je	.label_448
	movsx	esi, r14b
	mov	rdi, rbx
	pop	rbx
	pop	r14
	pop	rbp
	jmp	strcaseeq6
.label_448:
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x405b09
	.globl sub_405b09
	.type sub_405b09, @function
sub_405b09:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x405b10

	.globl strcaseeq6
	.type strcaseeq6, @function
strcaseeq6:
	push	rbp
	push	rbx
	push	rax
	mov	ebp, esi
	mov	rbx, rdi
	mov	edi, ebp
	call	c_isupper
	movsx	ecx, byte ptr [rbx + 6]
	test	al, al
	je	.label_452
	and	ecx, 0xffffffdf
	xor	eax, eax
	cmp	ecx, ebp
	je	.label_451
	jmp	.label_450
.label_452:
	xor	eax, eax
	cmp	cl, bpl
	jne	.label_450
.label_451:
	mov	eax, 1
	test	bpl, bpl
	je	.label_450
	mov	rdi, rbx
	add	rsp, 8
	pop	rbx
	pop	rbp
	jmp	strcaseeq7
.label_450:
	add	rsp, 8
	pop	rbx
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x405b55
	.globl sub_405b55
	.type sub_405b55, @function
sub_405b55:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x405b60

	.globl strcaseeq7
	.type strcaseeq7, @function
strcaseeq7:
	push	rbx
	mov	rbx, rdi
	xor	edi, edi
	call	c_isupper
	movsx	ecx, byte ptr [rbx + 7]
	test	al, al
	je	.label_454
	mov	eax, 1
	test	ecx, 0xffffffdf
	jne	.label_455
	jmp	.label_453
.label_454:
	mov	eax, 1
	test	cl, cl
	je	.label_453
.label_455:
	xor	eax, eax
.label_453:
	pop	rbx
	ret	
	.section	.text
	.align	32
	#Procedure 0x405b8f
	.globl sub_405b8f
	.type sub_405b8f, @function
sub_405b8f:

	nop	
	.section	.text
	.align	32
	#Procedure 0x405b90

	.globl set_custom_quoting
	.type set_custom_quoting, @function
set_custom_quoting:
	test	rdi, rdi
	mov	eax, OFFSET FLAT:default_quoting_options
	cmovne	rax, rdi
	mov	dword ptr [rax], 0xa
	test	rsi, rsi
	je	.label_456
	test	rdx, rdx
	je	.label_456
	mov	qword ptr [rax + 0x28], rsi
	mov	qword ptr [rax + 0x30], rdx
	ret	
.label_456:
	push	rax
	call	abort
	.section	.text
	.align	32
	#Procedure 0x405bbb
	.globl sub_405bbb
	.type sub_405bbb, @function
sub_405bbb:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x405bc0

	.globl rpl_fcntl_DUPFD_CLOEXEC
	.type rpl_fcntl_DUPFD_CLOEXEC, @function
rpl_fcntl_DUPFD_CLOEXEC:
	push	rbp
	push	r14
	push	rbx
	mov	r14d, esi
	mov	ebp, edi
	cmp	dword ptr [dword ptr [rip + rpl_fcntl_DUPFD_CLOEXEC.have_dupfd_cloexec]],  0
	js	.label_457
	mov	esi, 0x406
	xor	eax, eax
	mov	edi, ebp
	mov	edx, r14d
	call	fcntl
	mov	ebx, eax
	test	ebx, ebx
	jns	.label_459
	call	__errno_location
	cmp	dword ptr [rax], 0x16
	jne	.label_459
	mov	edi, ebp
	mov	esi, r14d
	call	rpl_fcntl_DUPFD
	mov	ebx, eax
	test	ebx, ebx
	js	.label_460
	mov	dword ptr [dword ptr [rip + rpl_fcntl_DUPFD_CLOEXEC.have_dupfd_cloexec]],  0xffffffff
	jmp	.label_461
.label_459:
	mov	dword ptr [dword ptr [rip + rpl_fcntl_DUPFD_CLOEXEC.have_dupfd_cloexec]],  1
	jmp	.label_461
.label_457:
	mov	edi, ebp
	mov	esi, r14d
	call	rpl_fcntl_DUPFD
	mov	ebx, eax
.label_461:
	test	ebx, ebx
	js	.label_460
	cmp	dword ptr [dword ptr [rip + rpl_fcntl_DUPFD_CLOEXEC.have_dupfd_cloexec]],  -1
	jne	.label_460
	mov	esi, 1
	xor	eax, eax
	mov	edi, ebx
	call	fcntl
	mov	ecx, eax
	test	ecx, ecx
	js	.label_458
	or	ecx, 1
	mov	esi, 2
	xor	eax, eax
	mov	edi, ebx
	mov	edx, ecx
	call	fcntl
	cmp	eax, -1
	jne	.label_460
.label_458:
	call	__errno_location
	mov	rbp, rax
	mov	r14d, dword ptr [rbp]
	mov	edi, ebx
	call	close
	mov	dword ptr [rbp], r14d
	mov	ebx, 0xffffffff
.label_460:
	mov	eax, ebx
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x405c83
	.globl sub_405c83
	.type sub_405c83, @function
sub_405c83:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x405c90

	.globl install_signal_handlers
	.type install_signal_handlers, @function
install_signal_handlers:
	push	rbx
	sub	rsp, 0xa0
	mov	edi, OFFSET FLAT:label_470
	call	getenv
	mov	rbx, rax
	mov	edi, OFFSET FLAT:caught_signals
	call	sigemptyset
	test	rbx, rbx
	jne	.label_469
	mov	edi, OFFSET FLAT:caught_signals
	mov	esi, 0xa
	call	sigaddset
.label_469:
	lea	rdx, [rsp + 8]
	mov	edi, 2
	xor	esi, esi
	call	sigaction
	cmp	qword ptr [rsp + 8], 1
	je	.label_472
	mov	edi, OFFSET FLAT:caught_signals
	mov	esi, 2
	call	sigaddset
.label_472:
	movups	xmm0,  xmmword ptr [word ptr [rip + label_462]]
	movups	xmmword ptr [rsp + 0x80], xmm0
	movups	xmm0,  xmmword ptr [word ptr [rip + label_463]]
	movups	xmmword ptr [rsp + 0x70], xmm0
	movups	xmm0,  xmmword ptr [word ptr [rip + label_464]]
	movups	xmmword ptr [rsp + 0x60], xmm0
	movups	xmm0,  xmmword ptr [word ptr [rip + label_465]]
	movups	xmmword ptr [rsp + 0x50], xmm0
	movups	xmm0,  xmmword ptr [word ptr [rip + label_466]]
	movups	xmmword ptr [rsp + 0x40], xmm0
	movups	xmm0,  xmmword ptr [word ptr [rip + label_467]]
	movups	xmmword ptr [rsp + 0x30], xmm0
	movups	xmm0,  xmmword ptr [word ptr [rip + label_468]]
	movups	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0,  xmmword ptr [word ptr [rip + caught_signals]]
	movups	xmmword ptr [rsp + 0x10], xmm0
	mov	edi, OFFSET FLAT:caught_signals
	mov	esi, 0xa
	call	sigismember
	test	eax, eax
	je	.label_473
	mov	qword ptr [word ptr [rsp + 8]], OFFSET FLAT:siginfo_handler
	mov	dword ptr [rsp + 0x90], 0
	lea	rsi, [rsp + 8]
	mov	edi, 0xa
	xor	edx, edx
	call	sigaction
.label_473:
	mov	edi, OFFSET FLAT:caught_signals
	mov	esi, 2
	call	sigismember
	test	eax, eax
	je	.label_471
	mov	qword ptr [word ptr [rsp + 8]], OFFSET FLAT:interrupt_handler
	mov	dword ptr [rsp + 0x90], 0xc0000000
	lea	rsi, [rsp + 8]
	mov	edi, 2
	xor	edx, edx
	call	sigaction
.label_471:
	add	rsp, 0xa0
	pop	rbx
	ret	
	.section	.text
	.align	32
	#Procedure 0x405dc7
	.globl sub_405dc7
	.type sub_405dc7, @function
sub_405dc7:

	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x405dd0

	.globl c_isupper
	.type c_isupper, @function
c_isupper:
	add	edi, -0x41
	cmp	edi, 0x1a
	setb	al
	ret	
	.section	.text
	.align	32
	#Procedure 0x405dda
	.globl sub_405dda
	.type sub_405dda, @function
sub_405dda:

	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x405de0

	.globl siginfo_handler
	.type siginfo_handler, @function
siginfo_handler:
	inc	dword ptr [dword ptr [rip + info_signal_count]]
	ret	
	.section	.text
	.align	32
	#Procedure 0x405de7
	.globl sub_405de7
	.type sub_405de7, @function
sub_405de7:

	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x405df0
	.globl c_isgraph
	.type c_isgraph, @function
c_isgraph:

	add	edi, -0x21
	cmp	edi, 0x5e
	setb	al
	ret	
	.section	.text
	.align	32
	#Procedure 0x405dfa
	.globl sub_405dfa
	.type sub_405dfa, @function
sub_405dfa:

	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x405e00

	.globl set_program_name
	.type set_program_name, @function
set_program_name:
	push	r14
	push	rbx
	push	rax
	mov	rbx, rdi
	test	rbx, rbx
	je	.label_474
	mov	esi, 0x2f
	mov	rdi, rbx
	call	strrchr
	test	rax, rax
	lea	r14, [rax + 1]
	cmove	r14, rbx
	mov	rax, r14
	sub	rax, rbx
	cmp	rax, 7
	jl	.label_476
	lea	rdi, [r14 - 7]
	mov	esi, OFFSET FLAT:label_478
	mov	edx, 7
	call	strncmp
	test	eax, eax
	jne	.label_476
	mov	esi, OFFSET FLAT:label_477
	mov	edx, 3
	mov	rdi, r14
	call	strncmp
	test	eax, eax
	jne	.label_479
	add	r14, 3
	mov	qword ptr [word ptr [rip + __progname]],  r14
.label_479:
	mov	rbx, r14
.label_476:
	mov	qword ptr [word ptr [rip + program_name]],  rbx
	mov	qword ptr [word ptr [rip + __progname_full]],  rbx
	add	rsp, 8
	pop	rbx
	pop	r14
	ret	
.label_474:
	mov	rcx,  qword ptr [word ptr [rip + stderr]]
	mov	edi, OFFSET FLAT:label_475
	mov	esi, 0x37
	mov	edx, 1
	call	fwrite
	call	abort
	.section	.text
	.align	32
	#Procedure 0x405ea1
	.globl sub_405ea1
	.type sub_405ea1, @function
sub_405ea1:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x405eb0

	.globl skip
	.type skip, @function
skip:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0xa8
	mov	r13, r8
	mov	r12, rcx
	mov	rbx, rdx
	mov	r14, rsi
	mov	ebp, edi
	mov	r15, qword ptr [r13]
	call	__errno_location
	mov	qword ptr [rsp], rax
	mov	dword ptr [rax], 0
	movabs	rax, 0x7fffffffffffffff
	xor	edx, edx
	div	r12
	cmp	rax, rbx
	jb	.label_484
	mov	rax, r12
	imul	rax, rbx
	add	r15, rax
	mov	ecx, 1
	mov	rdi, r14
	mov	esi, ebp
	mov	rdx, r15
	call	skip_via_lseek
	test	rax, rax
	js	.label_484
	test	ebp, ebp
	jne	.label_486
	lea	rsi, [rsp + 0x18]
	xor	edi, edi
	call	fstat
	test	eax, eax
	jne	.label_487
	lea	rdi, [rsp + 0x18]
	call	usable_st_size
	xor	r14d, r14d
	test	al, al
	je	.label_480
	mov	rcx, qword ptr [rsp + 0x48]
	mov	rsi,  qword ptr [word ptr [rip + input_offset]]
	lea	rax, [rsi + r15]
	xor	r14d, r14d
	cmp	rcx, rax
	jae	.label_480
	sub	r15, rcx
	xor	edx, edx
	mov	rax, r15
	div	r12
	mov	r14, rax
	sub	rcx, rsi
	mov	r15, rcx
.label_480:
	mov	rdi, r15
	call	advance_input_offset
	jmp	.label_483
.label_484:
	mov	rax, qword ptr [rsp]
	mov	r15d, dword ptr [rax]
	xor	edx, edx
	mov	ecx, 2
	mov	rdi, r14
	mov	esi, ebp
	call	skip_via_lseek
	test	rax, rax
	jns	.label_485
	test	ebp, ebp
	mov	qword ptr [rsp + 0x10], r14
	mov	dword ptr [rsp + 0xc], r15d
	je	.label_491
	call	alloc_obuf
	mov	eax, OFFSET FLAT:obuf
	jmp	.label_488
.label_491:
	call	alloc_ibuf
	mov	eax, OFFSET FLAT:ibuf
.label_488:
	mov	r15, qword ptr [rax]
	xor	r14d, r14d
	nop	dword ptr [rax]
.label_482:
	mov	rax,  qword ptr [word ptr [rip + iread_fnc]]
	test	rbx, rbx
	mov	rdx, r12
	jne	.label_492
	mov	rdx, qword ptr [r13]
.label_492:
	mov	edi, ebp
	mov	rsi, r15
	call	rax
	test	rax, rax
	js	.label_495
	je	.label_496
	test	ebp, ebp
	jne	.label_497
	mov	rdi, rax
	call	advance_input_offset
.label_497:
	test	rbx, rbx
	je	.label_486
	dec	rbx
	jne	.label_482
	cmp	qword ptr [r13], 0
	mov	ebx, 0
	jne	.label_482
	jmp	.label_483
.label_486:
	mov	qword ptr [r13], 0
	xor	r14d, r14d
	jmp	.label_483
.label_496:
	mov	r14, rbx
.label_483:
	mov	rax, r14
	add	rsp, 0xa8
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_495:
	test	ebp, ebp
	jne	.label_489
	mov	rax, qword ptr [rsp]
	mov	ebx, dword ptr [rax]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_421
	mov	edx, 5
	call	dcgettext
	mov	rbp, rax
	mov	edi, 4
	mov	rsi, qword ptr [rsp + 0x10]
	call	quotearg_style
	mov	rcx, rax
	xor	edi, edi
	xor	eax, eax
	mov	esi, ebx
	mov	rdx, rbp
	call	nl_error
	test	byte ptr [byte ptr [rip + label_100]],  1
	je	.label_498
	call	print_stats
	call	quit
.label_489:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_481
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
	xor	edi, edi
	mov	esi, 3
	mov	rdx, qword ptr [rsp + 0x10]
	call	quotearg_n_style_colon
	mov	rcx, rax
	xor	edi, edi
	xor	eax, eax
	mov	esi, dword ptr [rsp + 0xc]
	mov	rdx, rbx
	call	nl_error
.label_498:
	call	quit
.label_485:
	test	r15d, r15d
	mov	ebx, 0x4b
	cmovne	ebx, r15d
	xor	edi, edi
	test	ebp, ebp
	jne	.label_490
	mov	esi, OFFSET FLAT:label_493
	jmp	.label_494
.label_490:
	mov	esi, OFFSET FLAT:label_481
.label_494:
	mov	edx, 5
	call	dcgettext
	mov	rbp, rax
	xor	edi, edi
	mov	esi, 3
	mov	rdx, r14
	call	quotearg_n_style_colon
	mov	rcx, rax
	xor	edi, edi
	xor	eax, eax
	mov	esi, ebx
	mov	rdx, rbp
	call	nl_error
	call	quit
.label_487:
	mov	rax, qword ptr [rsp]
	mov	ebx, dword ptr [rax]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_122
	mov	edx, 5
	call	dcgettext
	mov	rbp, rax
	mov	edi, 4
	mov	rsi, r14
	call	quotearg_style
	mov	rcx, rax
	mov	edi, 1
	xor	eax, eax
	mov	esi, ebx
	mov	rdx, rbp
	call	nl_error
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x406160
	.globl current_timespec
	.type current_timespec, @function
current_timespec:

	sub	rsp, 0x18
	lea	rdi, [rsp + 8]
	call	gettime
	mov	rax, qword ptr [rsp + 8]
	mov	rdx, qword ptr [rsp + 0x10]
	add	rsp, 0x18
	ret	
	.section	.text
	.align	32
	#Procedure 0x40617d
	.globl sub_40617d
	.type sub_40617d, @function
sub_40617d:

	nop	dword ptr [rax]
.label_500:
	cmp	edi, 0x7f
	je	.label_499
	xor	eax, eax
	jmp	.label_499
	.section	.text
	.align	32
	#Procedure 0x406189
	.globl sub_406189
	.type sub_406189, @function
sub_406189:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x406198
	.globl c_iscntrl
	.type c_iscntrl, @function
c_iscntrl:

	mov	al, 1
	cmp	edi, 0x20
	jae	.label_500
.label_499:
	ret	
	.section	.text
	.align	32
	#Procedure 0x4061a0

	.globl operand_is
	.type operand_is, @function
operand_is:
	mov	edx, 0x3d
	jmp	operand_matches
	.section	.text
	.align	32
	#Procedure 0x4061aa
	.globl sub_4061aa
	.type sub_4061aa, @function
sub_4061aa:

	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4061b0

	.globl abbreviation_lacks_prefix
	.type abbreviation_lacks_prefix, @function
abbreviation_lacks_prefix:
	push	rbx
	mov	rbx, rdi
	call	strlen
	cmp	byte ptr [rbx + rax - 2], 0x20
	sete	al
	pop	rbx
	ret	
	.section	.text
	.align	32
	#Procedure 0x4061c3
	.globl sub_4061c3
	.type sub_4061c3, @function
sub_4061c3:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4061d0
	.globl xcalloc
	.type xcalloc, @function
xcalloc:

	push	rax
	movabs	rax, 0x7fffffffffffffff
	xor	edx, edx
	div	rsi
	cmp	rax, rdi
	jb	.label_501
	call	rpl_calloc
	test	rax, rax
	je	.label_501
	pop	rcx
	ret	
.label_501:
	call	xalloc_die
	.section	.text
	.align	32
	#Procedure 0x4061f6
	.globl sub_4061f6
	.type sub_4061f6, @function
sub_4061f6:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x406200
	.globl c_isascii
	.type c_isascii, @function
c_isascii:

	cmp	edi, 0x80
	setb	al
	ret	
	.section	.text
	.align	32
	#Procedure 0x40620a
	.globl sub_40620a
	.type sub_40620a, @function
sub_40620a:

	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x406210

	.globl close_stdout
	.type close_stdout, @function
close_stdout:
	push	rbp
	push	r14
	push	rbx
	mov	rdi,  qword ptr [word ptr [rip + stdout]]
	call	close_stream
	test	eax, eax
	je	.label_502
	cmp	byte ptr [byte ptr [rip + ignore_EPIPE]],  0
	je	.label_504
	call	__errno_location
	cmp	dword ptr [rax], 0x20
	jne	.label_504
.label_502:
	mov	rdi,  qword ptr [word ptr [rip + stderr]]
	call	close_stream
	test	eax, eax
	jne	.label_503
	pop	rbx
	pop	r14
	pop	rbp
	ret	
.label_503:
	mov	edi,  dword ptr [dword ptr [rip + exit_failure]]
	call	_exit
.label_505:
	mov	rdi, rbx
	call	quotearg_colon
	mov	rcx, rax
	xor	edi, edi
	mov	edx, OFFSET FLAT:label_247
	xor	eax, eax
	mov	esi, ebp
	mov	r8, r14
	call	error
	mov	edi,  dword ptr [dword ptr [rip + exit_failure]]
	call	_exit
	nop	dword ptr [rax]
	nop	dword ptr [rax + rax]
.label_504:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_506
	mov	edx, 5
	call	dcgettext
	mov	r14, rax
	mov	rbx,  qword ptr [word ptr [rip + file_name]]
	call	__errno_location
	test	rbx, rbx
	mov	ebp, dword ptr [rax]
	jne	.label_505
	xor	edi, edi
	mov	edx, OFFSET FLAT:label_166
	xor	eax, eax
	mov	esi, ebp
	mov	rcx, r14
	call	error
	mov	edi,  dword ptr [dword ptr [rip + exit_failure]]
	call	_exit
	.section	.text
	.align	32
	#Procedure 0x4062d0
	.globl quotearg_free
	.type quotearg_free, @function
quotearg_free:

	push	r15
	push	r14
	push	rbx
	mov	r14,  qword ptr [word ptr [rip + slotvec]]
	cmp	dword ptr [dword ptr [rip + nslots]],  2
	jl	.label_507
	lea	r15, [r14 + 0x18]
	mov	ebx, 1
	nop	
.label_510:
	mov	rdi, qword ptr [r15]
	call	free
	inc	rbx
	movsxd	rax,  dword ptr [dword ptr [rip + nslots]]
	add	r15, 0x10
	cmp	rbx, rax
	jl	.label_510
.label_507:
	mov	rdi, qword ptr [r14 + 8]
	mov	eax, OFFSET FLAT:slot0
	cmp	rdi, rax
	je	.label_511
	call	free
	mov	qword ptr [word ptr [rip + slotvec0]],  0x100
	mov	qword ptr [word ptr [rip + label_508]], OFFSET FLAT:slot0
.label_511:
	mov	eax, OFFSET FLAT:slotvec0
	cmp	r14, rax
	je	.label_509
	mov	rdi, r14
	call	free
	mov	qword ptr [word ptr [rip + slotvec]], OFFSET FLAT:slotvec0
.label_509:
	mov	dword ptr [dword ptr [rip + nslots]],  1
	pop	rbx
	pop	r14
	pop	r15
	ret	
	.section	.text
	.align	32
	#Procedure 0x406361
	.globl sub_406361
	.type sub_406361, @function
sub_406361:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x406370
	.globl version_etc
	.type version_etc, @function
version_etc:

	sub	rsp, 0xd8
	test	al, al
	je	.label_512
	movaps	xmmword ptr [rsp + 0x50], xmm0
	movaps	xmmword ptr [rsp + 0x60], xmm1
	movaps	xmmword ptr [rsp + 0x70], xmm2
	movaps	xmmword ptr [rsp + 0x80], xmm3
	movaps	xmmword ptr [rsp + 0x90], xmm4
	movaps	xmmword ptr [rsp + 0xa0], xmm5
	movaps	xmmword ptr [rsp + 0xb0], xmm6
	movaps	xmmword ptr [rsp + 0xc0], xmm7
.label_512:
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
	.align	32
	#Procedure 0x4063f3
	.globl sub_4063f3
	.type sub_4063f3, @function
sub_4063f3:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x406400

	.globl gettext_quote
	.type gettext_quote, @function
gettext_quote:
	push	rbp
	push	r14
	push	rbx
	mov	r14d, esi
	mov	rbx, rdi
	xor	edi, edi
	mov	edx, 5
	mov	rsi, rbx
	call	dcgettext
	cmp	rax, rbx
	jne	.label_520
	call	locale_charset
	mov	rbp, rax
	mov	esi, 0x55
	mov	edx, 0x54
	mov	ecx, 0x46
	mov	r8d, 0x2d
	mov	r9d, 0x38
	mov	rdi, rbp
	push	0
	push	0
	call	strcaseeq0
	add	rsp, 0x10
	test	eax, eax
	je	.label_519
	cmp	byte ptr [rbx], 0x60
	mov	ecx, OFFSET FLAT:label_521
	mov	eax, OFFSET FLAT:label_522
	jmp	.label_515
.label_518:
	cmp	r14d, 9
	mov	ecx, OFFSET FLAT:label_516
	mov	eax, OFFSET FLAT:label_517
.label_515:
	cmove	rax, rcx
.label_520:
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40647f
	.globl sub_40647f
	.type sub_40647f, @function
sub_40647f:

	nop	dword ptr [rax]
.label_519:
	mov	esi, 0x47
	mov	edx, 0x42
	mov	ecx, 0x31
	mov	r8d, 0x38
	mov	r9d, 0x30
	mov	rdi, rbp
	push	0x30
	push	0x33
	call	strcaseeq0
	add	rsp, 0x10
	test	eax, eax
	je	.label_518
	cmp	byte ptr [rbx], 0x60
	mov	ecx, OFFSET FLAT:label_513
	mov	eax, OFFSET FLAT:label_514
	jmp	.label_515
	.section	.text
	.align	32
	#Procedure 0x4064c0

	.globl quit
	.type quit, @function
quit:
	push	rax
	call	finish_up
	mov	edi, 1
	call	exit
	.section	.text
	.align	32
	#Procedure 0x4064d0

	.globl rpl_fcntl_DUPFD
	.type rpl_fcntl_DUPFD, @function
rpl_fcntl_DUPFD:
	mov	ecx, esi
	xor	esi, esi
	xor	eax, eax
	mov	edx, ecx
	jmp	fcntl
	.section	.text
	.align	32
	#Procedure 0x4064dd
	.globl sub_4064dd
	.type sub_4064dd, @function
sub_4064dd:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x4064e0

	.globl quote_n_mem
	.type quote_n_mem, @function
quote_n_mem:
	mov	ecx, OFFSET FLAT:quote_quoting_options
	jmp	quotearg_n_options
	.section	.text
	.align	32
	#Procedure 0x4064ea
	.globl sub_4064ea
	.type sub_4064ea, @function
sub_4064ea:

	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4064f0
	.globl quote_mem
	.type quote_mem, @function
quote_mem:

	mov	rax, rsi
	mov	rcx, rdi
	xor	edi, edi
	mov	rsi, rcx
	mov	rdx, rax
	jmp	quote_n_mem
	.section	.text
	.align	32
	#Procedure 0x406500

	.globl quote_n
	.type quote_n, @function
quote_n:
	mov	rdx, -1
	jmp	quote_n_mem
	.section	.text
	.align	32
	#Procedure 0x406509
	.globl sub_406509
	.type sub_406509, @function
sub_406509:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x406510

	.globl quote
	.type quote, @function
quote:
	mov	rax, rdi
	xor	edi, edi
	mov	rsi, rax
	jmp	quote_n
	.section	.text
	.align	32
	#Procedure 0x40651a
	.globl sub_40651a
	.type sub_40651a, @function
sub_40651a:

	nop	word ptr [rax + rax]
.label_525:
	xor	eax, eax
	cmp	cl, bpl
	jne	.label_523
.label_524:
	mov	eax, 1
	test	bpl, bpl
	je	.label_523
	mov	al, byte ptr [rsp + 0x40]
	movsx	ecx, byte ptr [rsp + 0x48]
	mov	dword ptr [rsp], ecx
	movsx	esi, r13b
	movsx	edx, r12b
	movsx	ecx, r15b
	movsx	r8d, r14b
	movsx	r9d, al
	mov	rdi, rbx
	call	strcaseeq1
.label_523:
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
	#Procedure 0x406568
	.globl sub_406568
	.type sub_406568, @function
sub_406568:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x40656b

	.globl strcaseeq0
	.type strcaseeq0, @function
strcaseeq0:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	push	rax
	mov	r14d, r9d
	mov	r15d, r8d
	mov	r12d, ecx
	mov	r13d, edx
	mov	ebp, esi
	mov	rbx, rdi
	mov	edi, ebp
	call	c_isupper
	movsx	ecx, byte ptr [rbx]
	test	al, al
	je	.label_525
	and	ecx, 0xffffffdf
	xor	eax, eax
	cmp	ecx, ebp
	je	.label_524
	jmp	.label_523
.label_526:
	call	abort
	.section	.text
	.align	32
	#Procedure 0x4065a5
	.globl sub_4065a5
	.type sub_4065a5, @function
sub_4065a5:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4065b3

	.globl quoting_options_from_style
	.type quoting_options_from_style, @function
quoting_options_from_style:
	sub	rsp, 0x38
	xorps	xmm0, xmm0
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movaps	xmmword ptr [rsp + 0x10], xmm0
	movaps	xmmword ptr [rsp], xmm0
	mov	dword ptr [rsp + 0x30], 0
	cmp	esi, 0xa
	je	.label_526
	mov	dword ptr [rdi], esi
	mov	eax, dword ptr [rsp + 0x30]
	mov	dword ptr [rdi + 0x34], eax
	movaps	xmm0, xmmword ptr [rsp]
	movaps	xmm1, xmmword ptr [rsp + 0x10]
	movaps	xmm2, xmmword ptr [rsp + 0x20]
	movups	xmmword ptr [rdi + 0x24], xmm2
	movups	xmmword ptr [rdi + 0x14], xmm1
	movups	xmmword ptr [rdi + 4], xmm0
	mov	rax, rdi
	add	rsp, 0x38
	ret	
	.section	.text
	.align	32
	#Procedure 0x406600
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
	.align	32
	#Procedure 0x406613
	.globl sub_406613
	.type sub_406613, @function
sub_406613:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x406620

	.globl quotearg_n_style_mem
	.type quotearg_n_style_mem, @function
quotearg_n_style_mem:
	push	rbp
	push	r15
	push	r14
	push	rbx
	sub	rsp, 0x38
	mov	r14, rcx
	mov	rbx, rdx
	mov	ebp, edi
	lea	r15, [rsp]
	mov	rdi, r15
	call	quoting_options_from_style
	mov	edi, ebp
	mov	rsi, rbx
	mov	rdx, r14
	mov	rcx, r15
	call	quotearg_n_options
	add	rsp, 0x38
	pop	rbx
	pop	r14
	pop	r15
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x406659
	.globl sub_406659
	.type sub_406659, @function
sub_406659:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x406660

	.globl quotearg_style
	.type quotearg_style, @function
quotearg_style:
	mov	rax, rsi
	mov	ecx, edi
	xor	edi, edi
	mov	esi, ecx
	mov	rdx, rax
	jmp	quotearg_n_style
	.section	.text
	.align	32
	#Procedure 0x406671
	.globl sub_406671
	.type sub_406671, @function
sub_406671:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x406680
	.globl quotearg_style_mem
	.type quotearg_style_mem, @function
quotearg_style_mem:

	mov	rax, rdx
	mov	rcx, rsi
	mov	edx, edi
	xor	edi, edi
	mov	esi, edx
	mov	rdx, rcx
	mov	rcx, rax
	jmp	quotearg_n_style_mem
	.section	.text
	.align	32
	#Procedure 0x406694
	.globl sub_406694
	.type sub_406694, @function
sub_406694:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4066a0

	.globl verror
	.type verror, @function
verror:
	mov	r9, rcx
	mov	rax, rdx
	xor	edx, edx
	xor	ecx, ecx
	mov	r8, rax
	jmp	verror_at_line
	.section	.text
	.align	32
	#Procedure 0x4066af
	.globl sub_4066af
	.type sub_4066af, @function
sub_4066af:

	nop	
	.section	.text
	.align	32
	#Procedure 0x4066b0

	.globl verror_at_line
	.type verror_at_line, @function
verror_at_line:
	push	rbp
	push	r15
	push	r14
	push	r12
	push	rbx
	mov	r15d, ecx
	mov	rbp, rdx
	mov	r14d, esi
	mov	r12d, edi
	mov	rdi, r8
	mov	rsi, r9
	call	xvasprintf
	mov	rbx, rax
	test	rbx, rbx
	je	.label_530
	test	rbp, rbp
	je	.label_528
	mov	r8d, OFFSET FLAT:label_166
	xor	eax, eax
	mov	edi, r12d
	mov	esi, r14d
	mov	rdx, rbp
	mov	ecx, r15d
	mov	r9, rbx
	call	error_at_line
	jmp	.label_529
.label_528:
	mov	edx, OFFSET FLAT:label_166
	xor	eax, eax
	mov	edi, r12d
	mov	esi, r14d
	mov	rcx, rbx
	call	error
.label_529:
	mov	rdi, rbx
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	pop	rbp
	jmp	free
.label_530:
	call	__errno_location
	mov	ebx, dword ptr [rax]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_527
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	xor	edi, edi
	xor	eax, eax
	mov	esi, ebx
	mov	rdx, rcx
	call	error
	call	abort
	.section	.text
	.align	32
	#Procedure 0x40674d
	.globl sub_40674d
	.type sub_40674d, @function
sub_40674d:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x406750
	.globl get_quoting_style
	.type get_quoting_style, @function
get_quoting_style:

	test	rdi, rdi
	mov	eax, OFFSET FLAT:default_quoting_options
	cmovne	rax, rdi
	mov	eax, dword ptr [rax]
	ret	
	.section	.text
	.align	32
	#Procedure 0x40675f
	.globl sub_40675f
	.type sub_40675f, @function
sub_40675f:

	nop	
	.section	.text
	.align	32
	#Procedure 0x406760

	.globl bkm_scale_by_power
	.type bkm_scale_by_power, @function
bkm_scale_by_power:
	push	rbp
	push	r15
	push	r14
	push	rbx
	push	rax
	mov	ebx, edx
	mov	r14d, esi
	mov	r15, rdi
	xor	ebp, ebp
	test	ebx, ebx
	je	.label_531
	xor	ebp, ebp
	nop	word ptr [rax + rax]
.label_532:
	mov	rdi, r15
	mov	esi, r14d
	call	bkm_scale
	or	ebp, eax
	dec	ebx
	jne	.label_532
.label_531:
	mov	eax, ebp
	add	rsp, 8
	pop	rbx
	pop	r14
	pop	r15
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40679e
	.globl sub_40679e
	.type sub_40679e, @function
sub_40679e:

	nop	
	.section	.text
	.align	32
	#Procedure 0x4067a0

	.globl xcharalloc
	.type xcharalloc, @function
xcharalloc:
	jmp	xmalloc
	.section	.text
	.align	32
	#Procedure 0x4067a5
	.globl sub_4067a5
	.type sub_4067a5, @function
sub_4067a5:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4067b0
	.globl close_stdout_set_ignore_EPIPE
	.type close_stdout_set_ignore_EPIPE, @function
close_stdout_set_ignore_EPIPE:

	mov	byte ptr [byte ptr [rip + ignore_EPIPE]],  dil
	ret	
	.section	.text
	.align	32
	#Procedure 0x4067b8
	.globl sub_4067b8
	.type sub_4067b8, @function
sub_4067b8:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4067c0

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
	je	.label_533
	cmp	r15, -2
	jb	.label_533
	xor	edi, edi
	call	hard_locale
	test	al, al
	jne	.label_533
	movzx	eax, byte ptr [r14]
	mov	dword ptr [rbx], eax
	mov	r15d, 1
.label_533:
	mov	rax, r15
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	ret	
	.section	.text
	.align	32
	#Procedure 0x406816
	.globl sub_406816
	.type sub_406816, @function
sub_406816:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x406820

	.globl advance_input_after_read_error
	.type advance_input_after_read_error, @function
advance_input_after_read_error:
	push	rbp
	push	r15
	push	r14
	push	rbx
	push	rax
	mov	rbx, rdi
	cmp	byte ptr [byte ptr [rip + input_seekable]],  0
	je	.label_538
	mov	rdi, rbx
	call	advance_input_offset
	mov	rax,  qword ptr [word ptr [rip + input_offset]]
	shr	rax, 0x3f
	or	al,  byte ptr [byte ptr [rip + input_offset_overflow]]
	mov	byte ptr [byte ptr [rip + input_offset_overflow]],  al
	je	.label_542
	xor	r15d, r15d
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_536
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
	mov	rsi,  qword ptr [word ptr [rip + input_file]]
	mov	edi, 4
	call	quotearg_style
	mov	rcx, rax
	xor	edi, edi
	xor	esi, esi
	xor	eax, eax
	jmp	.label_543
.label_538:
	mov	ebx,  dword ptr [dword ptr [rip + input_seek_errno]]
	mov	r15b, 1
	cmp	ebx, 0x1d
	je	.label_534
	call	__errno_location
	mov	dword ptr [rax], ebx
	jmp	.label_539
.label_542:
	xor	edi, edi
	xor	esi, esi
	mov	edx, 1
	call	lseek
	test	rax, rax
	js	.label_539
	mov	r14,  qword ptr [word ptr [rip + input_offset]]
	mov	r15b, 1
	sub	r14, rax
	je	.label_534
	js	.label_535
	cmp	r14, rbx
	jbe	.label_537
.label_535:
	cmp	dword ptr [dword ptr [rip + status_level]],  1
	je	.label_537
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_540
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	xor	edi, edi
	xor	esi, esi
	xor	eax, eax
	mov	rdx, rcx
	call	nl_error
.label_537:
	mov	rdi,  qword ptr [word ptr [rip + input_file]]
	xor	esi, esi
	mov	ecx, 1
	mov	rdx, r14
	call	skip_via_lseek
	test	rax, rax
	jns	.label_534
	call	__errno_location
	cmp	dword ptr [rax], 0
	jne	.label_539
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_541
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	xor	edi, edi
	xor	esi, esi
	xor	eax, eax
	mov	rdx, rcx
	call	nl_error
.label_539:
	call	__errno_location
	mov	ebp, dword ptr [rax]
	xor	r15d, r15d
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_481
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
	mov	rdx,  qword ptr [word ptr [rip + input_file]]
	xor	edi, edi
	mov	esi, 3
	call	quotearg_n_style_colon
	mov	rcx, rax
	xor	edi, edi
	xor	eax, eax
	mov	esi, ebp
.label_543:
	mov	rdx, rbx
	call	nl_error
.label_534:
	mov	eax, r15d
	add	rsp, 8
	pop	rbx
	pop	r14
	pop	r15
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40699b
	.globl sub_40699b
	.type sub_40699b, @function
sub_40699b:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4069a0
	.globl close_stdout_set_file_name
	.type close_stdout_set_file_name, @function
close_stdout_set_file_name:

	mov	qword ptr [word ptr [rip + file_name]],  rdi
	ret	
	.section	.text
	.align	32
	#Procedure 0x4069a8
	.globl sub_4069a8
	.type sub_4069a8, @function
sub_4069a8:

	nop	dword ptr [rax + rax]
.label_544:
	mov	edi, 1
	call	_exit
	nop	dword ptr [rax]
.label_545:
	pop	rax
	jmp	close_stdout
	.section	.text
	.align	32
	#Procedure 0x4069c3

	.globl maybe_close_stdout
	.type maybe_close_stdout, @function
maybe_close_stdout:
	push	rax
	mov	al,  byte ptr [byte ptr [rip + close_stdout_required]]
	test	al, al
	je	.label_545
	mov	rdi,  qword ptr [word ptr [rip + stderr]]
	call	close_stream
	test	eax, eax
	jne	.label_544
	pop	rax
	ret	
	.section	.text
	.align	32
	#Procedure 0x4069e0

	.globl xtime_nonnegative_sec
	.type xtime_nonnegative_sec, @function
xtime_nonnegative_sec:
	movabs	rcx, 0x112e0be826d694b3
	mov	rax, rdi
	imul	rcx
	mov	rax, rdx
	shr	rax, 0x3f
	sar	rdx, 0x1a
	lea	rax, [rdx + rax]
	ret	
	.section	.text
	.align	32
	#Procedure 0x406a00
	.globl xtime_sec
	.type xtime_sec, @function
xtime_sec:

	test	rdi, rdi
	js	.label_546
	jmp	xtime_nonnegative_sec
.label_546:
	add	rdi, 0x3b9ac9ff
	movabs	rcx, 0x112e0be826d694b3
	mov	rax, rdi
	imul	rcx
	mov	rax, rdx
	shr	rax, 0x3f
	sar	rdx, 0x1a
	lea	rax, [rdx + rax - 1]
	ret	
	.section	.text
	.align	32
	#Procedure 0x406a2f
	.globl sub_406a2f
	.type sub_406a2f, @function
sub_406a2f:

	nop	
	.section	.text
	.align	32
	#Procedure 0x406a30
	.globl xzalloc
	.type xzalloc, @function
xzalloc:

	push	r14
	push	rbx
	push	rax
	mov	r14, rdi
	call	xmalloc
	mov	rbx, rax
	xor	esi, esi
	mov	rdi, rbx
	mov	rdx, r14
	call	memset
	mov	rax, rbx
	add	rsp, 8
	pop	rbx
	pop	r14
	ret	
	.section	.text
	.align	32
	#Procedure 0x406a57
	.globl sub_406a57
	.type sub_406a57, @function
sub_406a57:

	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x406a60

	.globl xstrtoumax
	.type xstrtoumax, @function
xstrtoumax:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x18
	mov	r13, r8
	mov	r14d, edx
	mov	rbp, rsi
	mov	rbx, rdi
	cmp	r14d, 0x25
	jae	.label_558
	mov	qword ptr [rsp + 8], rcx
	call	__errno_location
	mov	r12, rax
	mov	dword ptr [r12], 0
	call	__ctype_b_loc
	mov	rcx, qword ptr [rax]
	mov	rdx, rbx
	nop	word ptr cs:[rax + rax]
.label_553:
	movzx	eax, byte ptr [rdx]
	inc	rdx
	test	byte ptr [rcx + rax*2 + 1], 0x20
	jne	.label_553
	test	rbp, rbp
	lea	rsi, [rsp + 0x10]
	cmovne	rsi, rbp
	mov	r15d, 4
	cmp	al, 0x2d
	je	.label_547
	mov	rdi, rbx
	mov	edx, r14d
	mov	r14, rsi
	call	strtoumax
	mov	rcx, r14
	mov	qword ptr [rsp], rax
	mov	rax, qword ptr [rcx]
	cmp	rax, rbx
	je	.label_559
	mov	eax, dword ptr [r12]
	xor	r12d, r12d
	test	eax, eax
	mov	rbp, r13
	je	.label_563
	cmp	eax, 0x22
	jne	.label_547
	mov	r12d, 1
.label_563:
	test	rbp, rbp
	jne	.label_551
	jmp	.label_556
.label_559:
	mov	rbp, r13
	test	rbp, rbp
	je	.label_547
	movsx	esi, byte ptr [rax]
	test	esi, esi
	je	.label_547
	mov	rdi, rbp
	call	strchr
	mov	rcx, r14
	test	rax, rax
	je	.label_547
	mov	qword ptr [rsp], 1
	xor	r12d, r12d
.label_551:
	mov	rax, qword ptr [rcx]
	movsx	ebx, byte ptr [rax]
	test	ebx, ebx
	je	.label_556
	mov	rdi, rbp
	mov	esi, ebx
	call	strchr
	test	rax, rax
	je	.label_555
	mov	r15d, 0x400
	mov	r13d, 1
	add	ebx, -0x45
	cmp	ebx, 0x2f
	ja	.label_549
	movabs	rax, 0x814400308945
	bt	rax, rbx
	jae	.label_549
	mov	esi, 0x30
	mov	rdi, rbp
	call	strchr
	mov	r13d, 1
	mov	rsi, r14
	test	rax, rax
	je	.label_554
	mov	rax, qword ptr [rsi]
	movsx	ecx, byte ptr [rax + 1]
	mov	r13d, 1
	cmp	ecx, 0x42
	je	.label_552
	cmp	ecx, 0x44
	je	.label_552
	cmp	ecx, 0x69
	jne	.label_554
	xor	ecx, ecx
	cmp	byte ptr [rax + 2], 0x42
	sete	cl
	lea	r13, [rcx + rcx + 1]
	jmp	.label_554
.label_552:
	mov	r15d, 0x3e8
	mov	r13d, 2
	jmp	.label_554
.label_549:
	mov	rsi, r14
.label_554:
	mov	rax, qword ptr [rsi]
	movsx	ecx, byte ptr [rax]
	add	ecx, -0x42
	cmp	ecx, 0x35
	ja	.label_555
	xor	eax, eax
	jmp	qword ptr [word ptr [+ (rcx * 8) + label_564]]
.label_929:
	lea	rdi, [rsp]
	mov	edx, 3
	jmp	.label_548
.label_555:
	mov	rax, qword ptr [rsp]
	mov	rcx, qword ptr [rsp + 8]
	mov	qword ptr [rcx], rax
	or	r12d, 2
	jmp	.label_550
.label_930:
	lea	rdi, [rsp]
	mov	edx, 1
	jmp	.label_548
.label_931:
	lea	rdi, [rsp]
	mov	edx, 2
	jmp	.label_548
.label_933:
	lea	rdi, [rsp]
	mov	edx, 4
	jmp	.label_548
.label_927:
	lea	rdi, [rsp]
	mov	esi, 0x400
	call	bkm_scale
	jmp	.label_557
.label_928:
	lea	rdi, [rsp]
	mov	edx, 6
	jmp	.label_548
.label_932:
	lea	rdi, [rsp]
	mov	edx, 5
	jmp	.label_548
.label_934:
	lea	rdi, [rsp]
	mov	edx, 8
	jmp	.label_548
.label_935:
	lea	rdi, [rsp]
	mov	edx, 7
.label_548:
	mov	esi, r15d
	call	bkm_scale_by_power
.label_557:
	mov	rsi, r14
.label_937:
	or	eax, r12d
	mov	rcx, qword ptr [rsi]
	lea	rdx, [rcx + r13]
	mov	qword ptr [rsi], rdx
	mov	r12d, eax
	or	r12d, 2
	cmp	byte ptr [rcx + r13], 0
	cmove	r12d, eax
.label_556:
	mov	rax, qword ptr [rsp]
	mov	rcx, qword ptr [rsp + 8]
	mov	qword ptr [rcx], rax
.label_550:
	mov	r15d, r12d
.label_547:
	mov	eax, r15d
	add	rsp, 0x18
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_936:
	lea	rdi, [rsp]
	mov	esi, 0x200
	call	bkm_scale
	jmp	.label_557
.label_938:
	lea	rdi, [rsp]
	mov	esi, 2
	call	bkm_scale
	jmp	.label_557
.label_558:
	mov	edi, OFFSET FLAT:label_560
	mov	esi, OFFSET FLAT:label_561
	mov	edx, 0x54
	mov	ecx, OFFSET FLAT:label_562
	call	__assert_fail
	.section	.text
	.align	32
	#Procedure 0x406d02
	.globl sub_406d02
	.type sub_406d02, @function
sub_406d02:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x406d10

	.globl gethrxtime
	.type gethrxtime, @function
gethrxtime:
	sub	rsp, 0x18
	lea	rsi, [rsp + 8]
	mov	edi, 1
	call	clock_gettime
	test	eax, eax
	je	.label_565
	lea	rdi, [rsp + 8]
	call	gettime
.label_565:
	mov	rdi, qword ptr [rsp + 8]
	mov	rsi, qword ptr [rsp + 0x10]
	call	xtime_make
	add	rsp, 0x18
	ret	
	.section	.text
	.align	32
	#Procedure 0x406d45
	.globl sub_406d45
	.type sub_406d45, @function
sub_406d45:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x406d50

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
	mov	qword ptr [rsp + 0xb0], rax
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
	mov	qword ptr [rsp + 0x60], rax
	mov	eax, 0
	mov	qword ptr [rsp + 0x40], rax
	mov	eax, 0
	mov	qword ptr [rsp + 0x38], rax
	mov	eax, 0
	xor	r9d, r9d
	xor	ecx, ecx
	mov	qword ptr [rsp + 0xa0], rcx
.label_673:
	mov	r11, rbp
	xor	r14d, r14d
	mov	ecx, r15d
	cmp	r15d, 0xa
	ja	.label_677
	mov	edi, 7
	mov	r13b, 1
	xor	esi, esi
	mov	r8, qword ptr [rsp + 0x30]
	jmp	qword ptr [word ptr [+ (rcx * 8) + label_570]]
.label_866:
	mov	r14d, r10d
	mov	edi, OFFSET FLAT:label_577
	mov	esi, r15d
	mov	rbx, r11
	mov	ebp, r9d
	call	gettext_quote
	mov	qword ptr [rsp + 0x78], rax
	mov	edi, OFFSET FLAT:label_517
	mov	esi, r15d
	call	gettext_quote
	mov	r9d, ebp
	mov	r10d, r14d
	mov	r11, rbx
	mov	qword ptr [rsp + 0x70], rax
.label_867:
	mov	dword ptr [rsp + 0x48], r9d
	mov	byte ptr [rsp + 0x17], r10b
	test	r12b, 1
	mov	r14d, 0
	mov	rcx, qword ptr [rsp + 0x78]
	jne	.label_592
	mov	al, byte ptr [rcx]
	test	al, al
	mov	r14d, 0
	je	.label_592
	xor	r14d, r14d
.label_606:
	cmp	r14, r11
	jae	.label_600
	mov	rdx, qword ptr [rsp + 8]
	mov	byte ptr [rdx + r14], al
.label_600:
	movzx	eax, byte ptr [rcx + r14 + 1]
	inc	r14
	test	al, al
	jne	.label_606
.label_592:
	mov	rbp, qword ptr [rsp + 0x70]
	mov	rdi, rbp
	mov	rbx, r11
	call	strlen
	mov	r11, rbx
	mov	qword ptr [rsp + 0x38], rax
	mov	edi, r15d
	mov	qword ptr [rsp + 0x40], rbp
	mov	r13b, 1
	mov	sil, r12b
	mov	r8, qword ptr [rsp + 0x30]
	mov	r10b, byte ptr [rsp + 0x17]
	mov	r9d, dword ptr [rsp + 0x48]
	jmp	.label_567
.label_859:
	xor	edi, edi
	xor	r14d, r14d
	mov	r13d, eax
	xor	esi, esi
	jmp	.label_567
.label_862:
	mov	al, 1
.label_860:
	mov	r12b, 1
.label_863:
	test	r12b, 1
	mov	cl, 1
	je	.label_624
	mov	ecx, eax
.label_624:
	mov	al, cl
.label_861:
	test	r12b, 1
	jne	.label_627
	test	r11, r11
	je	.label_629
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx], 0x27
.label_629:
	mov	r14d, 1
	jmp	.label_633
.label_627:
	xor	r14d, r14d
.label_633:
	mov	ecx, OFFSET FLAT:label_517
	mov	qword ptr [rsp + 0x40], rcx
	mov	ecx, 1
	mov	qword ptr [rsp + 0x38], rcx
	mov	r13d, eax
	mov	sil, r12b
	mov	edi, 2
	jmp	.label_567
.label_864:
	test	r12b, 1
	jne	.label_639
	test	r11, r11
	je	.label_640
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax], 0x22
.label_640:
	mov	r14d, 1
	jmp	.label_642
.label_865:
	mov	r13b, 1
	mov	edi, 5
	xor	r14d, r14d
	mov	eax, OFFSET FLAT:label_516
	mov	qword ptr [rsp + 0x40], rax
	mov	eax, 1
	mov	qword ptr [rsp + 0x38], rax
	mov	sil, 1
	jmp	.label_567
.label_639:
	xor	r14d, r14d
.label_642:
	mov	eax, OFFSET FLAT:label_516
	mov	qword ptr [rsp + 0x40], rax
	mov	eax, 1
	mov	qword ptr [rsp + 0x38], rax
	mov	r13b, 1
	mov	sil, r12b
	mov	edi, 5
	nop	word ptr cs:[rax + rax]
.label_567:
	cmp	qword ptr [rsp + 0xf0], 0
	setne	r12b
	cmp	edi, 2
	setne	r15b
	sete	bl
	mov	ecx, r13d
	and	cl, 1
	sete	byte ptr [rsp + 0x2b]
	mov	eax, r15d
	mov	byte ptr [rsp + 0x1e], cl
	and	al, cl
	cmp	qword ptr [rsp + 0x38], 0
	setne	cl
	mov	edx, ecx
	mov	byte ptr [rsp + 0x2e], al
	and	dl, al
	mov	byte ptr [rsp + 0x2f], dl
	mov	eax, esi
	and	al, 1
	sete	dl
	and	bl, al
	mov	byte ptr [rsp + 0x2c], bl
	mov	byte ptr [rsp + 7], al
	and	r12b, al
	mov	byte ptr [rsp + 0x2d], r12b
	or	dl, r15b
	mov	byte ptr [rsp + 0x1f], dl
	mov	byte ptr [rsp + 0x1d], r13b
	mov	qword ptr [rsp + 0xa8], rsi
	and	r13b, sil
	and	r13b, cl
	mov	byte ptr [rsp + 0x2a], r13b
	xor	esi, esi
	mov	qword ptr [rsp + 0x68], rdi
	mov	rbp, qword ptr [rsp + 0x20]
	mov	r12, rdi
	mov	rdi, r8
	jmp	.label_661
	.section	.text
	.align	32
	#Procedure 0x40702c
	.globl sub_40702c
	.type sub_40702c, @function
sub_40702c:

	nop	dword ptr [rax]
.label_602:
	inc	rsi
.label_661:
	cmp	rbp, -1
	je	.label_581
	cmp	rsi, rbp
	jne	.label_584
	jmp	.label_586
	.section	.text
	.align	32
	#Procedure 0x407043
	.globl sub_407043
	.type sub_407043, @function
sub_407043:

	nop	word ptr cs:[rax + rax]
.label_581:
	cmp	byte ptr [rdi + rsi], 0
	je	.label_586
.label_584:
	cmp	byte ptr [rsp + 0x2f], 0
	je	.label_595
	mov	rax, qword ptr [rsp + 0x38]
	lea	rbx, [rsi + rax]
	cmp	rax, 2
	jb	.label_598
	cmp	rbp, -1
	jne	.label_598
	mov	r15d, r10d
	mov	rbp, r11
	mov	r13d, r9d
	mov	r12, r14
	mov	r14, rsi
	call	strlen
	mov	rsi, r14
	mov	r14, r12
	mov	r9d, r13d
	mov	r12, qword ptr [rsp + 0x68]
	mov	r10d, r15d
	mov	r11, rbp
	mov	rdi, qword ptr [rsp + 0x30]
	mov	rbp, rax
.label_598:
	cmp	rbx, rbp
	jbe	.label_608
.label_595:
	xor	r8d, r8d
.label_596:
	movzx	r15d, byte ptr [rdi + rsi]
	cmp	r15, 0x7e
	ja	.label_610
	xor	edx, edx
	mov	r13b, 1
	mov	cl, 0x6e
	mov	bl, 0x61
	xor	eax, eax
	jmp	qword ptr [word ptr [+ (r15 * 8) + label_614]]
.label_966:
	test	rsi, rsi
	jne	.label_604
	jmp	.label_619
	.section	.text
	.align	32
	#Procedure 0x4070de
	.globl sub_4070de
	.type sub_4070de, @function
sub_4070de:

	nop	
.label_608:
	mov	qword ptr [rsp + 0x20], rbp
	mov	ebp, r9d
	mov	r15d, r10d
	mov	rbx, r11
	mov	r12, rsi
	lea	rdi, [rdi + rsi]
	mov	rsi, qword ptr [rsp + 0x40]
	mov	rdx, qword ptr [rsp + 0x38]
	call	memcmp
	test	eax, eax
	sete	r8b
	jne	.label_631
	cmp	byte ptr [rsp + 7], 0
	mov	rdi, qword ptr [rsp + 0x30]
	mov	r11, rbx
	mov	r10d, r15d
	mov	rax, qword ptr [rsp + 0x68]
	mov	r9d, ebp
	mov	rsi, r12
	mov	r12, rax
	mov	rbp, qword ptr [rsp + 0x20]
	je	.label_596
	jmp	.label_601
.label_631:
	mov	rdi, qword ptr [rsp + 0x30]
	mov	r11, rbx
	mov	r10d, r15d
	mov	rax, qword ptr [rsp + 0x68]
	mov	r9d, ebp
	mov	rsi, r12
	mov	r12, rax
	mov	rbp, qword ptr [rsp + 0x20]
	jmp	.label_596
.label_970:
	xor	eax, eax
	cmp	rbp, -1
	je	.label_647
	test	rsi, rsi
	jne	.label_648
	cmp	rbp, 1
	je	.label_619
	xor	r13d, r13d
	jmp	.label_587
.label_959:
	cmp	byte ptr [rsp + 0x1e], 0
	je	.label_655
	cmp	byte ptr [rsp + 7], 0
	jne	.label_603
	cmp	r12d, 2
	jne	.label_660
	mov	eax, r9d
	and	al, 1
	jne	.label_660
	cmp	r14, r11
	jae	.label_675
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], 0x27
.label_675:
	lea	rax, [r14 + 1]
	cmp	rax, r11
	jae	.label_623
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + rax], 0x24
.label_623:
	lea	rax, [r14 + 2]
	cmp	rax, r11
	jae	.label_668
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + rax], 0x27
.label_668:
	add	r14, 3
	mov	r9b, 1
.label_660:
	mov	rcx, r14
	cmp	rcx, r11
	jae	.label_676
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + rcx], 0x5c
.label_676:
	lea	r14, [rcx + 1]
	mov	al, 1
	mov	r15b, 0x30
	cmp	r12d, 2
	je	.label_568
	lea	rdx, [rsi + 1]
	cmp	rdx, rbp
	jae	.label_568
	mov	dl, byte ptr [rdi + rdx]
	add	dl, 0xd0
	cmp	dl, 9
	ja	.label_568
	cmp	r14, r11
	jae	.label_616
	mov	rdx, qword ptr [rsp + 8]
	mov	byte ptr [rdx + r14], 0x30
.label_616:
	lea	rdx, [rcx + 2]
	cmp	rdx, r11
	jae	.label_651
	mov	rbx, qword ptr [rsp + 8]
	mov	byte ptr [rbx + rdx], 0x30
.label_651:
	add	rcx, 3
	xor	r13d, r13d
	mov	r14, rcx
	jmp	.label_587
.label_960:
	mov	bl, 0x62
	jmp	.label_590
.label_961:
	mov	cl, 0x74
	jmp	.label_594
.label_962:
	mov	bl, 0x76
	jmp	.label_590
.label_963:
	mov	bl, 0x66
	jmp	.label_590
.label_964:
	mov	cl, 0x72
	jmp	.label_594
.label_967:
	mov	r15b, 0x27
	mov	al, 1
	mov	qword ptr [rsp + 0xa0], rax
	cmp	r12d, 2
	jne	.label_599
	cmp	byte ptr [rsp + 7], 0
	jne	.label_603
	test	r11, r11
	sete	al
	mov	rcx, qword ptr [rsp + 0x60]
	mov	rdx, rcx
	test	rdx, rdx
	setne	cl
	or	cl, al
	cmove	rdx, r11
	mov	qword ptr [rsp + 0x60], rdx
	mov	eax, 0
	cmove	r11, rax
	cmp	r14, r11
	jae	.label_607
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], 0x27
.label_607:
	lea	rax, [r14 + 1]
	cmp	rax, r11
	jae	.label_617
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + rax], 0x5c
.label_617:
	lea	rax, [r14 + 2]
	cmp	rax, r11
	jae	.label_620
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + rax], 0x27
.label_620:
	add	r14, 3
	xor	r9d, r9d
.label_599:
	xor	eax, eax
	mov	r13b, 1
	jmp	.label_587
.label_968:
	mov	r15b, 0x3f
	cmp	r12d, 5
	je	.label_630
	cmp	r12d, 2
	jne	.label_604
	cmp	byte ptr [rsp + 7], 0
	je	.label_604
	jmp	.label_603
.label_969:
	cmp	r12d, 2
	jne	.label_637
	cmp	byte ptr [rsp + 7], 0
	jne	.label_603
	mov	r15b, 0x5c
	xor	eax, eax
	xor	r13d, r13d
	jmp	.label_582
.label_610:
	mov	dword ptr [rsp + 0x4c], r8d
	mov	dword ptr [rsp + 0x48], r9d
	mov	byte ptr [rsp + 0x17], r10b
	mov	qword ptr [rsp + 0x98], r11
	cmp	qword ptr [rsp + 0xb0], 1
	jne	.label_663
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
.label_589:
	and	r13b, 1
	mov	r8d, r13d
	or	r8b, byte ptr [rsp + 0x2b]
	mov	qword ptr [rsp + 0x58], r12
	cmp	r12, 1
	mov	r11, qword ptr [rsp + 0x98]
	mov	r10b, byte ptr [rsp + 0x17]
	mov	r12, qword ptr [rsp + 0x68]
	mov	r9d, dword ptr [rsp + 0x48]
	ja	.label_659
	test	r8b, r8b
	je	.label_659
	xor	eax, eax
	mov	rbp, qword ptr [rsp + 0x20]
	mov	r8d, dword ptr [rsp + 0x4c]
	jmp	.label_587
.label_647:
	test	rsi, rsi
	jne	.label_672
	mov	cl, byte ptr [rdi + 1]
	test	cl, cl
	jne	.label_672
.label_619:
	mov	dl, 1
.label_965:
	cmp	byte ptr [rsp + 0x1f], 0
	je	.label_603
	xor	eax, eax
	mov	r13b, dl
	nop	word ptr [rax + rax]
.label_587:
	cmp	byte ptr [rsp + 0x2e], 0
	je	.label_572
	cmp	qword ptr [rsp + 0xf0], 0
	jne	.label_573
	jmp	.label_579
	.section	.text
	.align	32
	#Procedure 0x407424
	.globl sub_407424
	.type sub_407424, @function
sub_407424:

	nop	word ptr cs:[rax + rax]
.label_572:
	cmp	byte ptr [rsp + 0x2d], 0
	je	.label_579
.label_573:
	mov	ebx, r8d
	mov	r8, rsi
	mov	ecx, r15d
	shr	cl, 5
	movzx	edx, cl
	mov	esi, 1
	mov	ecx, r15d
	shl	esi, cl
	test	bl, bl
	jne	.label_583
	mov	rcx, qword ptr [rsp + 0xf0]
	and	esi, dword ptr [rcx + rdx*4]
	mov	ebx, r15d
	mov	rsi, r8
	je	.label_582
	jmp	.label_571
	.section	.text
	.align	32
	#Procedure 0x40746d
	.globl sub_40746d
	.type sub_40746d, @function
sub_40746d:

	nop	dword ptr [rax]
.label_579:
	test	r8b, r8b
	mov	ebx, r15d
	jne	.label_571
	jmp	.label_582
.label_583:
	mov	ebx, r15d
	mov	rsi, r8
	jmp	.label_571
.label_655:
	cmp	dword ptr [rsp + 0x90], 0
	jne	.label_602
	xor	r15d, r15d
	jmp	.label_604
.label_637:
	mov	cl, 0x5c
	cmp	byte ptr [rsp + 0x2a], 0
	je	.label_594
	xor	eax, eax
	mov	r15b, 0x5c
	xor	r13d, r13d
	jmp	.label_582
.label_594:
	cmp	byte ptr [rsp + 0x1f], 0
	mov	ebx, ecx
	je	.label_603
.label_590:
	xor	eax, eax
	cmp	byte ptr [rsp + 0x1e], 0
	mov	r13d, 0
	je	.label_587
	nop	word ptr cs:[rax + rax]
.label_571:
	cmp	byte ptr [rsp + 7], 0
	jne	.label_603
	cmp	r12d, 2
	jne	.label_625
	mov	eax, r9d
	and	al, 1
	jne	.label_625
	cmp	r14, r11
	jae	.label_628
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], 0x27
.label_628:
	lea	rax, [r14 + 1]
	cmp	rax, r11
	jae	.label_580
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + rax], 0x24
.label_580:
	lea	rax, [r14 + 2]
	cmp	rax, r11
	jae	.label_635
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + rax], 0x27
.label_635:
	add	r14, 3
	mov	r9b, 1
.label_625:
	cmp	r14, r11
	jae	.label_638
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], 0x5c
.label_638:
	inc	r14
	jmp	.label_656
.label_663:
	mov	qword ptr [rsp + 0x80], 0
	cmp	rbp, -1
	jne	.label_643
	mov	rbx, rsi
	call	strlen
	mov	rsi, rbx
	mov	rdi, qword ptr [rsp + 0x30]
	mov	rbp, rax
.label_643:
	lea	rax, [rdi + rsi]
	mov	qword ptr [rsp + 0x58], rax
	mov	r13b, 1
	xor	r12d, r12d
	lea	rax, [rsp + 0x80]
	mov	rcx, rax
	mov	qword ptr [rsp + 0x20], rbp
	mov	qword ptr [rsp + 0x50], rsi
.label_657:
	lea	rbx, [r12 + rsi]
	lea	rsi, [rdi + rbx]
	mov	rdx, rbp
	sub	rdx, rbx
	lea	rdi, [rsp + 0x94]
	call	rpl_mbrtowc
	mov	rbp, rax
	test	rbp, rbp
	je	.label_664
	cmp	rbp, -1
	movabs	rsi, 0x20000002b
	je	.label_666
	cmp	rbp, -2
	je	.label_618
	cmp	rbp, 1
	seta	al
	and	al, byte ptr [rsp + 0x2c]
	cmp	al, 1
	mov	rdi, qword ptr [rsp + 0x30]
	mov	r11, qword ptr [rsp + 0x98]
	jne	.label_670
	mov	rax, qword ptr [rsp + 0x58]
	lea	rax, [rax + r12]
	mov	ecx, 1
	nop	word ptr cs:[rax + rax]
.label_644:
	movsx	edx, byte ptr [rax + rcx]
	add	edx, -0x5b
	cmp	edx, 0x21
	ja	.label_658
	bt	rsi, rdx
	jb	.label_601
.label_658:
	inc	rcx
	cmp	rcx, rbp
	jb	.label_644
.label_670:
	mov	edi, dword ptr [rsp + 0x94]
	call	iswprint
	test	eax, eax
	jne	.label_585
	xor	r13d, r13d
.label_585:
	lea	rdi, [rsp + 0x80]
	add	r12, rbp
	mov	rbx, rdi
	call	mbsinit
	mov	rcx, rbx
	test	eax, eax
	mov	rdi, qword ptr [rsp + 0x30]
	mov	rbp, qword ptr [rsp + 0x20]
	mov	rsi, qword ptr [rsp + 0x50]
	je	.label_657
	jmp	.label_589
.label_568:
	xor	r13d, r13d
	jmp	.label_587
.label_672:
	mov	rbp, -1
	xor	r13d, r13d
	jmp	.label_587
.label_630:
	cmp	dword ptr [rsp + 0x8c], 0
	je	.label_604
	lea	rcx, [rsi + 2]
	cmp	rcx, rbp
	jae	.label_604
	cmp	byte ptr [rdi + rsi + 1], 0x3f
	jne	.label_604
	movsx	edx, byte ptr [rdi + rcx]
	xor	eax, eax
	cmp	edx, 0x3e
	ja	.label_578
	mov	rbx, rsi
	movabs	rsi, 0x7000a38200000000
	bt	rsi, rdx
	jae	.label_576
	cmp	byte ptr [rsp + 7], 0
	jne	.label_603
	mov	r15b, byte ptr [rdi + rcx]
	cmp	r14, r11
	jae	.label_621
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], 0x3f
.label_621:
	lea	rax, [r14 + 1]
	cmp	rax, r11
	jae	.label_591
	mov	rdx, qword ptr [rsp + 8]
	mov	byte ptr [rdx + rax], 0x22
.label_591:
	lea	rax, [r14 + 2]
	cmp	rax, r11
	jae	.label_632
	mov	rdx, qword ptr [rsp + 8]
	mov	byte ptr [rdx + rax], 0x22
.label_632:
	lea	rax, [r14 + 3]
	cmp	rax, r11
	jae	.label_634
	mov	rdx, qword ptr [rsp + 8]
	mov	byte ptr [rdx + rax], 0x3f
.label_634:
	add	r14, 4
	xor	eax, eax
	mov	rsi, rcx
	xor	r13d, r13d
	jmp	.label_587
.label_604:
	xor	eax, eax
.label_648:
	xor	r13d, r13d
	jmp	.label_587
.label_659:
	add	qword ptr [rsp + 0x58], rsi
	xor	eax, eax
	mov	rbp, qword ptr [rsp + 0x20]
	jmp	.label_641
	.section	.text
	.align	32
	#Procedure 0x407753
	.globl sub_407753
	.type sub_407753, @function
sub_407753:

	nop	word ptr cs:[rax + rax]
.label_605:
	inc	r14
	mov	r15b, byte ptr [rdi + rsi + 1]
	mov	rsi, rdx
.label_641:
	test	r8b, r8b
	je	.label_649
	mov	ecx, dword ptr [rsp + 0x4c]
	test	cl, 1
	je	.label_650
	cmp	r14, r11
	jae	.label_653
	mov	rdx, qword ptr [rsp + 8]
	mov	byte ptr [rdx + r14], 0x5c
.label_653:
	inc	r14
	mov	dword ptr [rsp + 0x4c], 0
	jmp	.label_650
	.section	.text
	.align	32
	#Procedure 0x40779c
	.globl sub_40779c
	.type sub_40779c, @function
sub_40779c:

	nop	dword ptr [rax]
.label_649:
	cmp	byte ptr [rsp + 7], 0
	jne	.label_601
	cmp	r12d, 2
	jne	.label_575
	mov	eax, r9d
	and	al, 1
	jne	.label_575
	cmp	r14, r11
	jae	.label_665
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], 0x27
.label_665:
	lea	rax, [r14 + 1]
	cmp	rax, r11
	jae	.label_667
	mov	rdx, qword ptr [rsp + 8]
	mov	byte ptr [rdx + rax], 0x24
.label_667:
	lea	rax, [r14 + 2]
	cmp	rax, r11
	jae	.label_671
	mov	rdx, qword ptr [rsp + 8]
	mov	byte ptr [rdx + rax], 0x27
.label_671:
	add	r14, 3
	mov	r9b, 1
.label_575:
	cmp	r14, r11
	jae	.label_615
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], 0x5c
.label_615:
	lea	rax, [r14 + 1]
	cmp	rax, r11
	jae	.label_674
	mov	edx, r15d
	shr	dl, 6
	or	dl, 0x30
	mov	rbx, qword ptr [rsp + 8]
	mov	byte ptr [rbx + rax], dl
.label_674:
	lea	rax, [r14 + 2]
	cmp	rax, r11
	jae	.label_574
	mov	edx, r15d
	shr	dl, 3
	and	dl, 7
	or	dl, 0x30
	mov	rbx, qword ptr [rsp + 8]
	mov	byte ptr [rbx + rax], dl
.label_574:
	add	r14, 3
	and	r15b, 7
	or	r15b, 0x30
	mov	al, 1
.label_650:
	lea	rdx, [rsi + 1]
	cmp	qword ptr [rsp + 0x58], rdx
	jbe	.label_582
	test	r9b, 1
	je	.label_593
	mov	ebx, eax
	and	bl, 1
	jne	.label_593
	mov	rbx, rsi
	cmp	r14, r11
	jae	.label_597
	mov	rsi, qword ptr [rsp + 8]
	mov	byte ptr [rsi + r14], 0x27
.label_597:
	lea	rsi, [r14 + 1]
	cmp	rsi, r11
	jae	.label_609
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + rsi], 0x27
.label_609:
	add	r14, 2
	xor	r9d, r9d
	mov	rsi, rbx
.label_593:
	cmp	r14, r11
	jae	.label_605
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + r14], r15b
	jmp	.label_605
	.section	.text
	.align	32
	#Procedure 0x4078a3
	.globl sub_4078a3
	.type sub_4078a3, @function
sub_4078a3:

	nop	word ptr cs:[rax + rax]
.label_582:
	test	r9b, 1
	je	.label_588
	and	al, 1
	jne	.label_588
	cmp	r14, r11
	jae	.label_613
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], 0x27
.label_613:
	lea	rax, [r14 + 1]
	cmp	rax, r11
	jae	.label_611
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + rax], 0x27
.label_611:
	add	r14, 2
	xor	r9d, r9d
.label_588:
	mov	ebx, r15d
.label_656:
	cmp	r14, r11
	jae	.label_622
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], bl
.label_622:
	inc	r14
	shl	r13b, 7
	sar	r13b, 7
	and	r13b, r10b
	mov	r10d, r13d
	jmp	.label_602
.label_666:
	xor	r13d, r13d
.label_664:
	mov	rdi, qword ptr [rsp + 0x30]
	mov	rsi, qword ptr [rsp + 0x50]
	jmp	.label_589
.label_618:
	mov	rbp, qword ptr [rsp + 0x20]
	cmp	rbx, rbp
	mov	rdi, qword ptr [rsp + 0x30]
	jae	.label_636
	mov	rsi, qword ptr [rsp + 0x50]
.label_612:
	mov	rax, qword ptr [rsp + 0x58]
	cmp	byte ptr [rax + r12], 0
	je	.label_645
	lea	rax, [rsi + r12 + 1]
	inc	r12
	cmp	rax, rbp
	jb	.label_612
	xor	r13d, r13d
	jmp	.label_589
.label_636:
	xor	r13d, r13d
	mov	rsi, qword ptr [rsp + 0x50]
	jmp	.label_589
.label_645:
	xor	r13d, r13d
	jmp	.label_589
.label_578:
	xor	r13d, r13d
	jmp	.label_587
.label_576:
	xor	r13d, r13d
	mov	rsi, rbx
	jmp	.label_587
	.section	.text
	.align	32
	#Procedure 0x407978
	.globl sub_407978
	.type sub_407978, @function
sub_407978:

	nop	dword ptr [rax + rax]
.label_586:
	test	r14, r14
	setne	al
	cmp	r12d, 2
	setne	dl
	mov	rcx, qword ptr [rsp + 0xa8]
	and	cl, 1
	mov	qword ptr [rsp + 0x20], rbp
	je	.label_654
	or	dl, al
	je	.label_601
.label_654:
	test	cl, cl
	setne	al
	cmp	r12d, 2
	setne	dl
	mov	rsi, qword ptr [rsp + 0xa0]
	test	sil, 1
	mov	bl, byte ptr [rsp + 0x1d]
	mov	rsi, qword ptr [rsp + 0xa8]
	je	.label_662
	or	dl, al
	jne	.label_662
	test	r10b, 1
	jne	.label_669
	cmp	qword ptr [rsp + 0x60], 0
	je	.label_662
	test	r11, r11
	mov	r15d, r12d
	mov	al, bl
	mov	r12d, esi
	mov	rbp, qword ptr [rsp + 0x60]
	je	.label_673
.label_662:
	mov	rdx, qword ptr [rsp + 0x40]
	test	rdx, rdx
	je	.label_678
	test	cl, cl
	mov	rcx, qword ptr [rsp + 8]
	jne	.label_569
	mov	al, byte ptr [rdx]
	test	al, al
	je	.label_569
	inc	rdx
	nop	word ptr cs:[rax + rax]
.label_646:
	cmp	r14, r11
	jae	.label_652
	mov	byte ptr [rcx + r14], al
.label_652:
	inc	r14
	movzx	eax, byte ptr [rdx]
	inc	rdx
	test	al, al
	jne	.label_646
	jmp	.label_569
.label_603:
	mov	qword ptr [rsp + 0x20], rbp
.label_601:
	mov	rdx, rdi
	mov	r9d, dword ptr [rsp + 0x18]
	test	byte ptr [rsp + 0x1d], 1
	mov	r8d, 4
	mov	rax, qword ptr [rsp + 0x68]
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
.label_626:
	mov	r14, rax
.label_566:
	mov	rax, r14
	add	rsp, 0xb8
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_669:
	sub	rsp, 8
	mov	r8d, 5
	mov	rdi, qword ptr [rsp + 0x10]
	mov	rsi, qword ptr [rsp + 0x68]
	mov	rdx, qword ptr [rsp + 0x38]
	mov	rcx, qword ptr [rsp + 0x28]
	mov	r9d, dword ptr [rsp + 0x20]
	push	qword ptr [rsp + 0x78]
	push	qword ptr [rsp + 0x88]
	push	qword ptr [rsp + 0x108]
	call	quotearg_buffer_restyled
	add	rsp, 0x20
	jmp	.label_626
.label_678:
	mov	rcx, qword ptr [rsp + 8]
.label_569:
	cmp	r14, r11
	jae	.label_566
	mov	byte ptr [rcx + r14], 0
	jmp	.label_566
.label_677:
	call	abort
	.section	.text
	.align	32
	#Procedure 0x407b0c
	.globl sub_407b0c
	.type sub_407b0c, @function
sub_407b0c:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x407b10
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
	jns	.label_679
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
.label_679:
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
	#Procedure 0x407b78
	.globl sub_407b78
	.type sub_407b78, @function
sub_407b78:

	nop	dword ptr [rax + rax]
.label_683:
	call	__errno_location
	mov	ebp, dword ptr [rax]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_680
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
	mov	rsi,  qword ptr [word ptr [rip + input_file]]
	mov	edi, 4
	call	quotearg_style
	mov	rcx, rax
	mov	edi, 1
	xor	eax, eax
	mov	esi, ebp
	mov	rdx, rbx
	call	nl_error
	.section	.text
	.align	32
	#Procedure 0x407bc0

	.globl cleanup
	.type cleanup, @function
cleanup:
	push	rbp
	push	rbx
	push	rax
	xor	edi, edi
	call	close
	test	eax, eax
	js	.label_683
	mov	edi, 1
	call	close
	test	eax, eax
	js	.label_682
	add	rsp, 8
	pop	rbx
	pop	rbp
	ret	
.label_682:
	call	__errno_location
	mov	ebx, dword ptr [rax]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_681
	mov	edx, 5
	call	dcgettext
	mov	rbp, rax
	mov	rsi,  qword ptr [word ptr [rip + output_file]]
	mov	edi, 4
	call	quotearg_style
	mov	rcx, rax
	mov	edi, 1
	xor	eax, eax
	mov	esi, ebx
	mov	rdx, rbp
	call	nl_error
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x407c30

	.globl hard_locale
	.type hard_locale, @function
hard_locale:
	push	rbx
	xor	esi, esi
	call	setlocale
	mov	bl, 1
	test	rax, rax
	je	.label_685
	cmp	byte ptr [rax], 0x43
	jne	.label_687
	cmp	byte ptr [rax + 1], 0
	je	.label_684
.label_687:
	mov	esi, OFFSET FLAT:label_686
	mov	rdi, rax
	call	strcmp
	test	eax, eax
	jne	.label_685
.label_684:
	xor	ebx, ebx
.label_685:
	mov	eax, ebx
	pop	rbx
	ret	
	.section	.text
	.align	32
	#Procedure 0x407c61
	.globl sub_407c61
	.type sub_407c61, @function
sub_407c61:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x407c70

	.globl default_block_size
	.type default_block_size, @function
default_block_size:
	push	rax
	mov	edi, OFFSET FLAT:label_470
	call	getenv
	test	rax, rax
	mov	ecx, 0x200
	mov	eax, 0x400
	cmovne	rax, rcx
	pop	rcx
	ret	
	.section	.text
	.align	32
	#Procedure 0x407c8e
	.globl sub_407c8e
	.type sub_407c8e, @function
sub_407c8e:

	nop	
	.section	.text
	.align	32
	#Procedure 0x407c90

	.globl fd_reopen
	.type fd_reopen, @function
fd_reopen:
	push	rbp
	push	r15
	push	r14
	push	rbx
	push	rax
	mov	ebp, edi
	xor	eax, eax
	mov	rdi, rsi
	mov	esi, edx
	mov	edx, ecx
	call	open
	mov	ebx, eax
	cmp	ebx, ebp
	je	.label_688
	test	ebx, ebx
	js	.label_688
	mov	edi, ebx
	mov	esi, ebp
	call	dup2
	mov	r14d, eax
	call	__errno_location
	mov	rbp, rax
	mov	r15d, dword ptr [rbp]
	mov	edi, ebx
	call	close
	mov	dword ptr [rbp], r15d
	mov	eax, r14d
	jmp	.label_689
.label_688:
	mov	eax, ebx
.label_689:
	add	rsp, 8
	pop	rbx
	pop	r14
	pop	r15
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x407ce6
	.globl sub_407ce6
	.type sub_407ce6, @function
sub_407ce6:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x407cf0

	.globl locale_charset
	.type locale_charset, @function
locale_charset:
	push	rax
	mov	edi, 0xe
	call	rpl_nl_langinfo
	test	rax, rax
	mov	ecx, OFFSET FLAT:label_40
	cmovne	rcx, rax
	cmp	byte ptr [rcx], 0
	mov	eax, OFFSET FLAT:label_690
	cmovne	rax, rcx
	pop	rcx
	ret	
	.section	.text
	.align	32
	#Procedure 0x407d15
	.globl sub_407d15
	.type sub_407d15, @function
sub_407d15:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x407d20
	.globl quotearg_alloc
	.type quotearg_alloc, @function
quotearg_alloc:

	mov	rax, rdx
	xor	edx, edx
	mov	rcx, rax
	jmp	quotearg_alloc_mem
	.section	.text
	.align	32
	#Procedure 0x407d2a
	.globl sub_407d2a
	.type sub_407d2a, @function
sub_407d2a:

	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x407d30

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
	call	xcharalloc
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
	je	.label_691
	mov	qword ptr [rax], rbx
.label_691:
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
	#Procedure 0x407e1c
	.globl sub_407e1c
	.type sub_407e1c, @function
sub_407e1c:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x407e20

	.globl xstrcat
	.type xstrcat, @function
xstrcat:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x18
	mov	r14, rsi
	mov	r12, rdi
	mov	rax, qword ptr [r14 + 0x10]
	mov	qword ptr [rsp + 0x10], rax
	movups	xmm0, xmmword ptr [r14]
	movaps	xmmword ptr [rsp], xmm0
	test	r12, r12
	je	.label_698
	xor	ebx, ebx
	mov	rbp, r12
	nop	
.label_694:
	movsxd	rcx, dword ptr [rsp]
	cmp	rcx, 0x28
	ja	.label_693
	mov	rax, rcx
	add	rax, qword ptr [rsp + 0x10]
	lea	ecx, [rcx + 8]
	mov	dword ptr [rsp], ecx
	jmp	.label_697
	.section	.text
	.align	32
	#Procedure 0x407e6a
	.globl sub_407e6a
	.type sub_407e6a, @function
sub_407e6a:

	nop	word ptr [rax + rax]
.label_693:
	mov	rax, qword ptr [rsp + 8]
	lea	rcx, [rax + 8]
	mov	qword ptr [rsp + 8], rcx
.label_697:
	mov	rdi, qword ptr [rax]
	call	strlen
	mov	rdi, rbx
	mov	rsi, rax
	call	xsum
	mov	rbx, rax
	dec	rbp
	jne	.label_694
	test	rbx, -0x80000000
	je	.label_696
	call	__errno_location
	mov	dword ptr [rax], 0x4b
	xor	r15d, r15d
	jmp	.label_699
.label_698:
	mov	edi, 1
	call	xmalloc
	mov	r15, rax
	mov	rbx, r15
	jmp	.label_695
.label_696:
	inc	rbx
	mov	rdi, rbx
	call	xmalloc
	mov	r15, rax
	mov	rbx, r15
	test	r12, r12
	je	.label_695
	nop	dword ptr [rax]
.label_700:
	movsxd	rcx, dword ptr [r14]
	cmp	rcx, 0x28
	ja	.label_692
	mov	rax, rcx
	add	rax, qword ptr [r14 + 0x10]
	lea	ecx, [rcx + 8]
	mov	dword ptr [r14], ecx
	jmp	.label_701
	.section	.text
	.align	32
	#Procedure 0x407ef8
	.globl sub_407ef8
	.type sub_407ef8, @function
sub_407ef8:

	nop	dword ptr [rax + rax]
.label_692:
	mov	rax, qword ptr [r14 + 8]
	lea	rcx, [rax + 8]
	mov	qword ptr [r14 + 8], rcx
.label_701:
	mov	r13, qword ptr [rax]
	mov	rdi, r13
	call	strlen
	mov	rbp, rax
	mov	rdi, rbx
	mov	rsi, r13
	mov	rdx, rbp
	call	memcpy
	add	rbx, rbp
	dec	r12
	jne	.label_700
.label_695:
	mov	byte ptr [rbx], 0
.label_699:
	mov	rax, r15
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
	#Procedure 0x407f45
	.globl sub_407f45
	.type sub_407f45, @function
sub_407f45:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x407f50

	.globl to_uchar
	.type to_uchar, @function
to_uchar:
	mov	eax, edi
	ret	
	.section	.text
	.align	32
	#Procedure 0x407f53
	.globl sub_407f53
	.type sub_407f53, @function
sub_407f53:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x407f60
	.globl xmax
	.type xmax, @function
xmax:

	cmp	rdi, rsi
	cmovae	rsi, rdi
	mov	rax, rsi
	ret	
	.section	.text
	.align	32
	#Procedure 0x407f6b
	.globl sub_407f6b
	.type sub_407f6b, @function
sub_407f6b:

	nop	dword ptr [rax + rax]
.label_712:
	mov	rbx,  qword ptr [word ptr [rip + stderr]]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_717
	mov	edx, 5
	call	dcgettext
	mov	rdx, rax
	mov	rcx,  qword ptr [word ptr [rip + program_name]]
	mov	esi, 1
	xor	eax, eax
	mov	rdi, rbx
	call	__fprintf_chk
	mov	edi, ebp
	call	exit
	.section	.text
	.align	32
	#Procedure 0x407fa8
	.globl sub_407fa8
	.type sub_407fa8, @function
sub_407fa8:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x407fb2

	.globl usage
	.type usage, @function
usage:
	push	rbp
	push	rbx
	push	rax
	mov	ebp, edi
	test	ebp, ebp
	jne	.label_712
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_716
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	mov	rdx,  qword ptr [word ptr [rip + program_name]]
	mov	edi, 1
	xor	eax, eax
	mov	rsi, rcx
	mov	rcx, rdx
	call	__printf_chk
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_711
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_704
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_715
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_719
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_723
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_718
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_708
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_721
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_709
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_722
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_713
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_724
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_714
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_725
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_710
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_726
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_720
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_727
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_703
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_702
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:label_707
	xor	eax, eax
	mov	rsi, rcx
	call	__printf_chk
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_706
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_705
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	call	emit_ancillary_info
	mov	edi, ebp
	call	exit
	.section	.text
	.align	32
	#Procedure 0x4082c0
	.globl xtime_nonnegative_nsec
	.type xtime_nonnegative_nsec, @function
xtime_nonnegative_nsec:

	mov	rcx, rdi
	movabs	rdx, 0x112e0be826d694b3
	mov	rax, rcx
	imul	rdx
	mov	rax, rdx
	shr	rax, 0x3f
	sar	rdx, 0x1a
	add	rdx, rax
	imul	rax, rdx, 0x3b9aca00
	sub	rcx, rax
	mov	rax, rcx
	ret	
	.section	.text
	.align	32
	#Procedure 0x4082ef
	.globl sub_4082ef
	.type sub_4082ef, @function
sub_4082ef:

	nop	
.label_734:
	call	default_block_size
	mov	qword ptr [r15], rax
	xor	ebp, ebp
	jmp	.label_729
	.section	.text
	.align	32
	#Procedure 0x4082fc

	.globl humblock
	.type humblock, @function
humblock:
	push	rbp
	push	r15
	push	r14
	push	rbx
	push	rax
	mov	r14, rdx
	mov	r15, rsi
	test	rdi, rdi
	jne	.label_733
	mov	edi, OFFSET FLAT:label_736
	call	getenv
	mov	rdi, rax
	test	rdi, rdi
	jne	.label_733
	mov	edi, OFFSET FLAT:label_730
	call	getenv
	mov	rdi, rax
	test	rdi, rdi
	je	.label_734
.label_733:
	xor	ebp, ebp
	cmp	byte ptr [rdi], 0x27
	lea	rbx, [rdi + 1]
	sete	bpl
	cmovne	rbx, rdi
	shl	ebp, 2
	mov	esi, OFFSET FLAT:block_size_args
	mov	edx, OFFSET FLAT:block_size_opts
	mov	ecx, 4
	mov	rdi, rbx
	call	argmatch
	test	eax, eax
	js	.label_731
	cdqe	
	or	ebp,  dword ptr [dword ptr [+ (rax * 4) + block_size_opts]]
	mov	qword ptr [r15], 1
.label_729:
	mov	dword ptr [r14], ebp
	xor	eax, eax
	jmp	.label_728
.label_731:
	lea	rsi, [rsp]
	xor	edx, edx
	mov	r8d, OFFSET FLAT:label_739
	mov	rdi, rbx
	mov	rcx, r15
	call	xstrtoumax
	test	eax, eax
	je	.label_738
	mov	dword ptr [r14], 0
.label_728:
	add	rsp, 8
	pop	rbx
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_738:
	mov	al, byte ptr [rbx]
	add	al, 0xd0
	cmp	al, 0xa
	jb	.label_729
	mov	rax, qword ptr [rsp]
	nop	dword ptr [rax]
.label_732:
	cmp	rax, rbx
	je	.label_735
	movzx	ecx, byte ptr [rbx + 1]
	inc	rbx
	add	cl, 0xd0
	cmp	cl, 0xa
	jae	.label_732
	jmp	.label_729
.label_735:
	mov	ecx, ebp
	or	ecx, 0x80
	or	ebp, 0x180
	cmp	byte ptr [rax - 1], 0x42
	cmove	ecx, ebp
	jne	.label_737
	cmp	byte ptr [rax - 2], 0x69
	jne	.label_729
.label_737:
	or	ecx, 0x20
	mov	ebp, ecx
	jmp	.label_729
	.section	.text
	.align	32
	#Procedure 0x4083fd
	.globl sub_4083fd
	.type sub_4083fd, @function
sub_4083fd:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x408400

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
	je	.label_740
	movaps	xmmword ptr [rsp + 0x50], xmm0
	movaps	xmmword ptr [rsp + 0x60], xmm1
	movaps	xmmword ptr [rsp + 0x70], xmm2
	movaps	xmmword ptr [rsp + 0x80], xmm3
	movaps	xmmword ptr [rsp + 0x90], xmm4
	movaps	xmmword ptr [rsp + 0xa0], xmm5
	movaps	xmmword ptr [rsp + 0xb0], xmm6
	movaps	xmmword ptr [rsp + 0xc0], xmm7
.label_740:
	mov	ebp,  dword ptr [dword ptr [rip + opterr]]
	mov	dword ptr [dword ptr [rip + opterr]],  1
	mov	eax, OFFSET FLAT:label_40
	mov	edx, OFFSET FLAT:label_743
	test	r9b, r9b
	cmovne	rdx, rax
	mov	ecx, OFFSET FLAT:long_options
	xor	r8d, r8d
	call	getopt_long
	cmp	eax, -1
	je	.label_745
	mov	rcx, qword ptr [rsp + 0x100]
	cmp	eax, 0x68
	je	.label_741
	cmp	eax, 0x76
	je	.label_742
	mov	edi,  dword ptr [dword ptr [rip + exit_failure]]
	jmp	.label_744
.label_742:
	lea	rax, [rsp + 0x20]
	mov	qword ptr [rsp + 0x10], rax
	lea	rax, [rsp + 0x108]
	mov	qword ptr [rsp + 8], rax
	mov	dword ptr [rsp + 4], 0x30
	mov	dword ptr [rsp], 0x30
	mov	rdi,  qword ptr [word ptr [rip + stdout]]
	lea	r8, [rsp]
	mov	rsi, rbx
	mov	rdx, r15
	mov	rcx, r14
	call	version_etc_va
	xor	edi, edi
	call	exit
	.section	.text
	.align	32
	#Procedure 0x4084e4
	.globl sub_4084e4
	.type sub_4084e4, @function
sub_4084e4:

	nop	dword ptr [rax]
.label_741:
	xor	edi, edi
.label_744:
	call	rcx
.label_745:
	mov	dword ptr [dword ptr [rip + opterr]],  ebp
	add	rsp, 0xd8
	pop	rbx
	pop	r14
	pop	r15
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x408500

	.globl emit_ancillary_info
	.type emit_ancillary_info, @function
emit_ancillary_info:
	push	r14
	push	rbx
	push	rax
	mov	ebx, OFFSET FLAT:emit_ancillary_info.infomap
	mov	esi, OFFSET FLAT:label_746
	nop	
.label_755:
	mov	edi, OFFSET FLAT:label_93
	call	strcmp
	test	eax, eax
	je	.label_753
	mov	rsi, qword ptr [rbx + 0x10]
	add	rbx, 0x10
	test	rsi, rsi
	jne	.label_755
.label_753:
	mov	rax, qword ptr [rbx + 8]
	test	rax, rax
	mov	ebx, OFFSET FLAT:label_93
	cmovne	rbx, rax
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_749
	mov	edx, 5
	call	dcgettext
	mov	rsi, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:label_366
	mov	ecx, OFFSET FLAT:label_367
	xor	eax, eax
	call	__printf_chk
	mov	edi, 5
	xor	esi, esi
	call	setlocale
	test	rax, rax
	je	.label_748
	mov	esi, OFFSET FLAT:label_752
	mov	edx, 3
	mov	rdi, rax
	call	strncmp
	test	eax, eax
	je	.label_748
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_747
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	call	fputs_unlocked
.label_748:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_750
	mov	edx, 5
	call	dcgettext
	mov	rsi, rax
	mov	r14d, OFFSET FLAT:label_93
	mov	edi, 1
	mov	edx, OFFSET FLAT:label_367
	mov	ecx, OFFSET FLAT:label_93
	xor	eax, eax
	call	__printf_chk
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_754
	mov	edx, 5
	call	dcgettext
	mov	rdx, rax
	cmp	rbx, r14
	mov	eax, OFFSET FLAT:label_751
	mov	ecx, OFFSET FLAT:label_40
	cmove	rcx, rax
	mov	edi, 1
	xor	eax, eax
	mov	rsi, rdx
	mov	rdx, rbx
	add	rsp, 8
	pop	rbx
	pop	r14
	jmp	__printf_chk
	.section	.text
	.align	32
	#Procedure 0x40861a
	.globl sub_40861a
	.type sub_40861a, @function
sub_40861a:

	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x408620

	.globl rpl_fcntl
	.type rpl_fcntl, @function
rpl_fcntl:
	sub	rsp, 0xd8
	test	al, al
	je	.label_764
	movaps	xmmword ptr [rsp + 0x50], xmm0
	movaps	xmmword ptr [rsp + 0x60], xmm1
	movaps	xmmword ptr [rsp + 0x70], xmm2
	movaps	xmmword ptr [rsp + 0x80], xmm3
	movaps	xmmword ptr [rsp + 0x90], xmm4
	movaps	xmmword ptr [rsp + 0xa0], xmm5
	movaps	xmmword ptr [rsp + 0xb0], xmm6
	movaps	xmmword ptr [rsp + 0xc0], xmm7
.label_764:
	mov	qword ptr [rsp + 0x48], r9
	mov	qword ptr [rsp + 0x40], r8
	mov	qword ptr [rsp + 0x38], rcx
	mov	qword ptr [rsp + 0x30], rdx
	lea	rax, [rsp + 0x20]
	mov	qword ptr [rsp + 0x10], rax
	lea	rax, [rsp + 0xe0]
	mov	qword ptr [rsp + 8], rax
	mov	dword ptr [rsp + 4], 0x30
	mov	dword ptr [rsp], 0x10
	cmp	esi, 0xb
	ja	.label_766
	mov	eax, 0xa0a
	bt	eax, esi
	jb	.label_765
	mov	eax, 0x514
	bt	eax, esi
	jb	.label_757
	test	esi, esi
	jne	.label_766
	movsxd	rcx, dword ptr [rsp]
	cmp	rcx, 0x28
	ja	.label_769
	mov	rax, rcx
	add	rax, qword ptr [rsp + 0x10]
	lea	ecx, [rcx + 8]
	mov	dword ptr [rsp], ecx
	jmp	.label_761
.label_766:
	lea	eax, [rsi - 0x400]
	cmp	eax, 8
	ja	.label_759
	mov	ecx, 0x85
	bt	ecx, eax
	jb	.label_757
	mov	ecx, 0x102
	bt	ecx, eax
	jae	.label_768
.label_765:
	xor	eax, eax
	call	fcntl
	add	rsp, 0xd8
	ret	
.label_757:
	movsxd	rcx, dword ptr [rsp]
	cmp	rcx, 0x28
	ja	.label_760
	mov	rax, rcx
	add	rax, qword ptr [rsp + 0x10]
	lea	ecx, [rcx + 8]
	mov	dword ptr [rsp], ecx
	jmp	.label_763
.label_760:
	mov	rax, qword ptr [rsp + 8]
	lea	rcx, [rax + 8]
	mov	qword ptr [rsp + 8], rcx
.label_763:
	mov	edx, dword ptr [rax]
	xor	eax, eax
	call	fcntl
	add	rsp, 0xd8
	ret	
.label_768:
	cmp	eax, 6
	jne	.label_759
	movsxd	rcx, dword ptr [rsp]
	cmp	rcx, 0x28
	ja	.label_758
	mov	rax, rcx
	add	rax, qword ptr [rsp + 0x10]
	lea	ecx, [rcx + 8]
	mov	dword ptr [rsp], ecx
	jmp	.label_762
.label_759:
	movsxd	rcx, dword ptr [rsp]
	cmp	rcx, 0x28
	ja	.label_756
	mov	rax, rcx
	add	rax, qword ptr [rsp + 0x10]
	lea	ecx, [rcx + 8]
	mov	dword ptr [rsp], ecx
	jmp	.label_767
.label_769:
	mov	rax, qword ptr [rsp + 8]
	lea	rcx, [rax + 8]
	mov	qword ptr [rsp + 8], rcx
.label_761:
	mov	esi, dword ptr [rax]
	call	rpl_fcntl_DUPFD
	add	rsp, 0xd8
	ret	
.label_758:
	mov	rax, qword ptr [rsp + 8]
	lea	rcx, [rax + 8]
	mov	qword ptr [rsp + 8], rcx
.label_762:
	mov	esi, dword ptr [rax]
	call	rpl_fcntl_DUPFD_CLOEXEC
	add	rsp, 0xd8
	ret	
.label_756:
	mov	rax, qword ptr [rsp + 8]
	lea	rcx, [rax + 8]
	mov	qword ptr [rsp + 8], rcx
.label_767:
	mov	rdx, qword ptr [rax]
	xor	eax, eax
	call	fcntl
	add	rsp, 0xd8
	ret	
	.section	.text
	.align	32
	#Procedure 0x4087d4
	.globl sub_4087d4
	.type sub_4087d4, @function
sub_4087d4:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4087e0

	.globl quotearg_n_custom
	.type quotearg_n_custom, @function
quotearg_n_custom:
	mov	r8, -1
	jmp	quotearg_n_custom_mem
	.section	.text
	.align	32
	#Procedure 0x4087e9
	.globl sub_4087e9
	.type sub_4087e9, @function
sub_4087e9:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x4087f0

	.globl quotearg_n_custom_mem
	.type quotearg_n_custom_mem, @function
quotearg_n_custom_mem:
	push	rbp
	push	r15
	push	r14
	push	rbx
	sub	rsp, 0x38
	mov	r14, r8
	mov	rbx, rcx
	mov	ebp, edi
	mov	rax,  qword ptr [word ptr [rip + label_282]]
	mov	qword ptr [rsp + 0x30], rax
	movups	xmm0,  xmmword ptr [word ptr [rip + label_283]]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0,  xmmword ptr [word ptr [rip + label_284]]
	movaps	xmmword ptr [rsp + 0x10], xmm0
	movups	xmm0,  xmmword ptr [word ptr [rip + default_quoting_options]]
	movaps	xmmword ptr [rsp], xmm0
	lea	r15, [rsp]
	mov	rdi, r15
	call	set_custom_quoting
	mov	edi, ebp
	mov	rsi, rbx
	mov	rdx, r14
	mov	rcx, r15
	call	quotearg_n_options
	add	rsp, 0x38
	pop	rbx
	pop	r14
	pop	r15
	pop	rbp
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

	.globl iftruncate
	.type iftruncate, @function
iftruncate:
	push	rbp
	push	rbx
	push	rax
	mov	rbx, rdi
	nop	word ptr cs:[rax + rax]
.label_771:
	call	process_signals
	mov	edi, 1
	mov	rsi, rbx
	call	ftruncate
	mov	ebp, eax
	test	ebp, ebp
	jns	.label_770
	call	__errno_location
	cmp	dword ptr [rax], 4
	je	.label_771
.label_770:
	mov	eax, ebp
	add	rsp, 8
	pop	rbx
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40889b
	.globl sub_40889b
	.type sub_40889b, @function
sub_40889b:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4088a0

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
	je	.label_784
	mov	edx, OFFSET FLAT:label_775
	xor	eax, eax
	mov	rdi, r14
	mov	r8, rbx
	call	__fprintf_chk
	jmp	.label_781
.label_784:
	mov	edx, OFFSET FLAT:label_782
	xor	eax, eax
	mov	rdi, r14
	mov	rcx, rbx
	mov	r8, r9
	call	__fprintf_chk
.label_781:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_786
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
	mov	esi, OFFSET FLAT:label_783
	mov	edx, 5
	call	dcgettext
	mov	rdi, rax
	mov	rsi, r14
	call	fputs_unlocked
	cmp	r12, 9
	ja	.label_787
	jmp	qword ptr [word ptr [+ (r12 * 8) + label_788]]
.label_916:
	add	rsp, 8
	jmp	.label_774
.label_787:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_778
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
	jmp	.label_774
.label_917:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_773
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
.label_918:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_779
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
.label_919:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_776
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
.label_920:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_790
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
	jmp	.label_774
.label_921:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_789
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
	jmp	.label_774
.label_922:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_772
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
	jmp	.label_774
.label_923:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_777
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
	jmp	.label_774
.label_925:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_780
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
	jmp	.label_774
.label_924:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_785
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
.label_774:
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	ret	
	.section	.text
	.align	32
	#Procedure 0x408bf8
	.globl sub_408bf8
	.type sub_408bf8, @function
sub_408bf8:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x408c00

	.globl xmemdup
	.type xmemdup, @function
xmemdup:
	push	r15
	push	r14
	push	rbx
	mov	r15, rsi
	mov	r14, rdi
	mov	rdi, r15
	call	xmalloc
	mov	rbx, rax
	mov	rdi, rbx
	mov	rsi, r14
	mov	rdx, r15
	call	memcpy
	mov	rax, rbx
	pop	rbx
	pop	r14
	pop	r15
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
	.globl xstrdup
	.type xstrdup, @function
xstrdup:

	push	rbx
	mov	rbx, rdi
	call	strlen
	lea	rsi, [rax + 1]
	mov	rdi, rbx
	pop	rbx
	jmp	xmemdup
	.section	.text
	.align	32
	#Procedure 0x408c43
	.globl sub_408c43
	.type sub_408c43, @function
sub_408c43:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x408c50

	.globl iwrite
	.type iwrite, @function
iwrite:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	push	rax
	mov	r12, rsi
	mov	r14, rdi
	mov	eax,  dword ptr [dword ptr [rip + output_flags]]
	test	ah, 0x40
	je	.label_792
	cmp	qword ptr [word ptr [rip + output_blocksize]],  r12
	jbe	.label_792
	mov	edi, 1
	mov	esi, 3
	xor	eax, eax
	call	rpl_fcntl
	mov	ecx, eax
	and	ecx, 0xffffbfff
	mov	edi, 1
	mov	esi, 4
	xor	eax, eax
	mov	edx, ecx
	call	rpl_fcntl
	test	eax, eax
	je	.label_797
	cmp	dword ptr [dword ptr [rip + status_level]],  1
	je	.label_797
	call	__errno_location
	mov	ebp, dword ptr [rax]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_802
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
	mov	rdx,  qword ptr [word ptr [rip + output_file]]
	xor	edi, edi
	mov	esi, 3
	call	quotearg_n_style_colon
	mov	rcx, rax
	xor	edi, edi
	xor	eax, eax
	mov	esi, ebp
	mov	rdx, rbx
	call	nl_error
.label_797:
	mov	byte ptr [byte ptr [rip + o_nocache_eof]],  1
	mov	edi, 1
	xor	esi, esi
	call	invalidate_cache
	or	byte ptr [byte ptr [rip + label_100]],  0x80
.label_792:
	xor	eax, eax
.label_791:
	mov	r15, rax
	lea	r13, [r14 + r15]
	mov	rbx, r12
	sub	rbx, r15
	cmp	r15, r12
	jae	.label_793
	setae	bpl
	nop	dword ptr [rax + rax]
.label_798:
	call	process_signals
	mov	byte ptr [byte ptr [rip + final_op_was_seek]],  0
	test	byte ptr [byte ptr [rip + label_801]],  1
	je	.label_800
	mov	rdi, r14
	mov	rsi, r12
	call	is_nul
	test	al, al
	je	.label_800
	mov	edi, 1
	mov	edx, 1
	mov	rsi, r12
	call	lseek
	test	rax, rax
	js	.label_794
	mov	byte ptr [byte ptr [rip + final_op_was_seek]],  1
	test	r12, r12
	mov	rax, r12
	jne	.label_799
	jmp	.label_800
.label_794:
	and	byte ptr [byte ptr [rip + label_801]],  0xfe
	nop	word ptr cs:[rax + rax]
.label_800:
	mov	edi, 1
	mov	rsi, r13
	mov	rdx, rbx
	call	write
.label_799:
	test	rax, rax
	jns	.label_796
	call	__errno_location
	cmp	dword ptr [rax], 4
	setne	al
	or	al, bpl
	je	.label_798
	jmp	.label_793
	.section	.text
	.align	32
	#Procedure 0x408dbb
	.globl sub_408dbb
	.type sub_408dbb, @function
sub_408dbb:

	nop	dword ptr [rax + rax]
.label_796:
	test	rax, rax
	lea	rax, [rax + r15]
	jne	.label_791
	call	__errno_location
	mov	dword ptr [rax], 0x1c
.label_793:
	test	r15, r15
	je	.label_795
	test	byte ptr [byte ptr [rip + o_nocache]],  1
	je	.label_795
	mov	edi, 1
	mov	rsi, r15
	call	invalidate_cache
.label_795:
	mov	rax, r15
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
	#Procedure 0x408e05
	.globl sub_408e05
	.type sub_408e05, @function
sub_408e05:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x408e10

	.globl alloc_ibuf
	.type alloc_ibuf, @function
alloc_ibuf:
	push	r15
	push	r14
	push	rbx
	sub	rsp, 0x290
	cmp	qword ptr [word ptr [rip + ibuf]],  0
	jne	.label_803
	mov	rax,  qword ptr [word ptr [rip + input_blocksize]]
	mov	rcx,  qword ptr [word ptr [rip + page_size]]
	lea	rdi, [rax + rcx*2 + 3]
	call	malloc
	test	rax, rax
	je	.label_805
	add	rax, 2
	mov	rsi,  qword ptr [word ptr [rip + page_size]]
	mov	rdi, rax
	call	ptr_align
	mov	qword ptr [word ptr [rip + ibuf]],  rax
.label_803:
	add	rsp, 0x290
	pop	rbx
	pop	r14
	pop	r15
	ret	
.label_805:
	mov	r14,  qword ptr [word ptr [rip + input_blocksize]]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_804
	mov	edx, 5
	call	dcgettext
	mov	r15, rax
	mov	rdi,  qword ptr [word ptr [rip + input_blocksize]]
	lea	rsi, [rsp]
	mov	edx, 0x1f1
	mov	ecx, 1
	mov	r8d, 1
	call	human_readable
	mov	rbx, rax
	mov	edi, 1
	xor	esi, esi
	xor	eax, eax
	mov	rdx, r15
	mov	rcx, r14
	mov	r8, rbx
	call	nl_error
	nop	
	.section	.text
	.align	32
	#Procedure 0x408ec0
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
	je	.label_806
	movaps	xmmword ptr [rsp + 0x50], xmm0
	movaps	xmmword ptr [rsp + 0x60], xmm1
	movaps	xmmword ptr [rsp + 0x70], xmm2
	movaps	xmmword ptr [rsp + 0x80], xmm3
	movaps	xmmword ptr [rsp + 0x90], xmm4
	movaps	xmmword ptr [rsp + 0xa0], xmm5
	movaps	xmmword ptr [rsp + 0xb0], xmm6
	movaps	xmmword ptr [rsp + 0xc0], xmm7
.label_806:
	mov	ebp,  dword ptr [dword ptr [rip + opterr]]
	mov	dword ptr [dword ptr [rip + opterr]],  0
	cmp	edi, 2
	jne	.label_807
	mov	edx, OFFSET FLAT:label_743
	mov	ecx, OFFSET FLAT:long_options
	xor	r8d, r8d
	call	getopt_long
	cmp	eax, 0x68
	je	.label_808
	cmp	eax, 0x76
	jne	.label_807
	lea	rax, [rsp + 0x20]
	mov	qword ptr [rsp + 0x10], rax
	lea	rax, [rsp + 0x100]
	mov	qword ptr [rsp + 8], rax
	mov	dword ptr [rsp + 4], 0x30
	mov	dword ptr [rsp], 0x30
	mov	rdi,  qword ptr [word ptr [rip + stdout]]
	lea	r8, [rsp]
	mov	rsi, r12
	mov	rdx, r15
	mov	rcx, r14
	call	version_etc_va
	xor	edi, edi
	call	exit
.label_808:
	xor	edi, edi
	call	rbx
.label_807:
	mov	dword ptr [dword ptr [rip + opterr]],  ebp
	mov	dword ptr [dword ptr [rip + optind]],  0
	add	rsp, 0xd0
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x408fb1
	.globl sub_408fb1
	.type sub_408fb1, @function
sub_408fb1:

	nop	word ptr cs:[rax + rax]
.label_810:
	test	eax, eax
	sete	cl
	neg	eax
	sbb	ebx, ebx
	test	r14, r14
	jne	.label_809
	test	cl, cl
	jne	.label_809
	call	__errno_location
	xor	ecx, ecx
	cmp	dword ptr [rax], 9
	mov	ebx, 0xffffffff
	cmove	ebx, ecx
.label_809:
	mov	eax, ebx
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x408feb
	.globl sub_408feb
	.type sub_408feb, @function
sub_408feb:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x408ff5

	.globl close_stream
	.type close_stream, @function
close_stream:
	push	rbp
	push	r14
	push	rbx
	mov	rbx, rdi
	call	__fpending
	mov	r14, rax
	mov	rdi, rbx
	call	ferror_unlocked
	mov	ebp, eax
	mov	rdi, rbx
	call	rpl_fclose
	test	ebp, ebp
	je	.label_810
	mov	ebx, 0xffffffff
	test	eax, eax
	jne	.label_809
	call	__errno_location
	mov	dword ptr [rax], 0
	jmp	.label_809
	.section	.text
	.align	32
	#Procedure 0x409030
	.globl set_quoting_style
	.type set_quoting_style, @function
set_quoting_style:

	test	rdi, rdi
	mov	eax, OFFSET FLAT:default_quoting_options
	cmovne	rax, rdi
	mov	dword ptr [rax], esi
	ret	
	.section	.text
	.align	32
	#Procedure 0x40903f
	.globl sub_40903f
	.type sub_40903f, @function
sub_40903f:

	nop	
	.section	.text
	.align	32
	#Procedure 0x409040

	.globl iread_fullblock
	.type iread_fullblock, @function
iread_fullblock:
	push	rbp
	push	r15
	push	r14
	push	rbx
	push	rax
	mov	rbx, rdx
	mov	r14, rsi
	mov	r15d, edi
	xor	eax, eax
	test	rbx, rbx
	je	.label_811
	xor	ebp, ebp
	nop	dword ptr [rax]
.label_813:
	mov	edi, r15d
	mov	rsi, r14
	mov	rdx, rbx
	call	iread
	test	rax, rax
	js	.label_811
	je	.label_812
	add	rbp, rax
	add	r14, rax
	sub	rbx, rax
	mov	rax, rbp
	jne	.label_813
	jmp	.label_811
.label_812:
	mov	rax, rbp
.label_811:
	add	rsp, 8
	pop	rbx
	pop	r14
	pop	r15
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x409093
	.globl sub_409093
	.type sub_409093, @function
sub_409093:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4090a0
	.globl c_isprint
	.type c_isprint, @function
c_isprint:

	add	edi, -0x20
	cmp	edi, 0x5f
	setb	al
	ret	
	.section	.text
	.align	32
	#Procedure 0x4090aa
	.globl sub_4090aa
	.type sub_4090aa, @function
sub_4090aa:

	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4090b0

	.globl ptr_align
	.type ptr_align, @function
ptr_align:
	lea	rcx, [rdi + rsi - 1]
	xor	edx, edx
	mov	rax, rcx
	div	rsi
	sub	rcx, rdx
	mov	rax, rcx
	ret	
	.section	.text
	.align	32
	#Procedure 0x4090c4
	.globl sub_4090c4
	.type sub_4090c4, @function
sub_4090c4:

	nop	word ptr cs:[rax + rax]
.label_814:
	xor	eax, eax
	ret	
	.section	.text
	.align	32
	#Procedure 0x4090d3
	.globl sub_4090d3
	.type sub_4090d3, @function
sub_4090d3:

	nop	
	.section	.text
	.align	32
	#Procedure 0x4090d5
	.globl c_isalpha
	.type c_isalpha, @function
c_isalpha:

	add	edi, -0x41
	cmp	edi, 0x39
	ja	.label_814
	movabs	rax, 0x3ffffff03ffffff
	mov	ecx, edi
	shr	rax, cl
	and	eax, 1
	ret	
	.section	.text
	.align	32
	#Procedure 0x4090f0

	.globl usable_st_size
	.type usable_st_size, @function
usable_st_size:
	movzx	eax, word ptr [rdi + 0x18]
	or	eax, 0x2000
	and	eax, 0xf000
	cmp	eax, 0xa000
	jne	.label_815
	mov	al, 1
	ret	
.label_815:
	xor	eax, eax
	ret	
	.section	.text
	.align	32
	#Procedure 0x40910b
	.globl sub_40910b
	.type sub_40910b, @function
sub_40910b:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x409110
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
	.align	32
	#Procedure 0x409143
	.globl sub_409143
	.type sub_409143, @function
sub_409143:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x409150

	.globl parse_integer
	.type parse_integer, @function
parse_integer:
	push	r15
	push	r14
	push	r12
	push	rbx
	sub	rsp, 0x18
	mov	r15, rsi
	mov	rbx, rdi
	lea	rsi, [rsp + 0x10]
	lea	rcx, [rsp + 8]
	mov	edx, 0xa
	mov	r8d, OFFSET FLAT:label_823
	call	xstrtoumax
	test	eax, eax
	je	.label_825
	cmp	eax, 2
	jne	.label_818
	mov	rdi, qword ptr [rsp + 0x10]
	cmp	byte ptr [rdi], 0x78
	jne	.label_818
	inc	rdi
	mov	rsi, r15
	call	parse_integer
	mov	r14, rax
	test	r14, r14
	mov	rcx, qword ptr [rsp + 8]
	je	.label_819
	mov	rax, r14
	imul	rax, rcx
	xor	edx, edx
	div	r14
	cmp	rax, rcx
	jne	.label_822
.label_819:
	test	rcx, rcx
	jne	.label_820
	mov	esi, OFFSET FLAT:label_821
	mov	edx, 2
	mov	rdi, rbx
	call	strncmp
	test	eax, eax
	jne	.label_820
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_817
	mov	edx, 5
	call	dcgettext
	mov	r15, rax
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_821
	call	quote_n
	mov	r12, rax
	mov	edi, 1
	mov	esi, OFFSET FLAT:label_826
	call	quote_n
	mov	rbx, rax
	xor	edi, edi
	xor	esi, esi
	xor	eax, eax
	mov	rdx, r15
	mov	rcx, r12
	mov	r8, rbx
	call	nl_error
.label_820:
	mov	rax, qword ptr [rsp + 8]
	imul	rax, r14
	mov	qword ptr [rsp + 8], rax
.label_825:
	mov	rax, qword ptr [rsp + 8]
	jmp	.label_824
.label_822:
	mov	dword ptr [r15], 1
	jmp	.label_816
	.section	.text
	.align	32
	#Procedure 0x409249
	.globl sub_409249
	.type sub_409249, @function
sub_409249:

	nop	word ptr [rax + rax]
.label_818:
	mov	dword ptr [r15], eax
.label_816:
	xor	eax, eax
.label_824:
	add	rsp, 0x18
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	ret	
	.section	.text
	.align	32
	#Procedure 0x409260

	.globl quotearg_n_style_colon
	.type quotearg_n_style_colon, @function
quotearg_n_style_colon:
	push	rbp
	push	r14
	push	rbx
	sub	rsp, 0x40
	mov	r14, rdx
	mov	ebp, edi
	lea	rbx, [rsp + 8]
	mov	rdi, rbx
	call	quoting_options_from_style
	mov	esi, 0x3a
	mov	edx, 1
	mov	rdi, rbx
	call	set_char_quoting
	mov	rdx, -1
	mov	edi, ebp
	mov	rsi, r14
	mov	rcx, rbx
	call	quotearg_n_options
	add	rsp, 0x40
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x4092a9
	.globl sub_4092a9
	.type sub_4092a9, @function
sub_4092a9:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x409315
	.globl sub_409315
	.type sub_409315, @function
sub_409315:

	nop	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x409322
	.globl sub_409322
	.type sub_409322, @function
sub_409322:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x409346
	.globl sub_409346
	.type sub_409346, @function
sub_409346:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x409359
	.globl sub_409359
	.type sub_409359, @function
sub_409359:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x409360

	.globl fstat
	.type fstat, @function
fstat:
	mov	rdx, rsi
	mov	esi, edi
	mov	edi, 1
	jmp	__fxstat
