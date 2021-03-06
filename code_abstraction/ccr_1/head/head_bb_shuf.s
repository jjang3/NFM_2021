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
	.globl x2realloc
	.type x2realloc, @function
x2realloc:

	mov	edx, 1
	jmp	x2nrealloc
	.section	.text
	.align	16
	#Procedure 0x4016da
	.globl sub_4016da
	.type sub_4016da, @function
sub_4016da:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4016e0

	.globl elide_tail_bytes_pipe
	.type elide_tail_bytes_pipe, @function
elide_tail_bytes_pipe:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x88
	mov	rbx, rcx
	mov	dword ptr [rsp + 0x1c], esi
	mov	qword ptr [rsp + 0x28], rdi
	cmp	rdx, 0x100000
	mov	qword ptr [rsp + 0x70], rbx
	ja	.label_28
	mov	qword ptr [rsp + 0x20], rdx
	lea	r15, [rdx + 0x2000]
	mov	edi, 2
	mov	rsi, r15
	call	xnmalloc
	mov	qword ptr [rsp + 0x30], rax
	add	rax, r15
	mov	qword ptr [rsp + 0x38], rax
	mov	r12b, 1
	mov	qword ptr [rsp + 8], rbx
	xor	r13d, r13d
	xor	ebx, ebx
	nop	word ptr cs:[rax + rax]
.label_27:
	movzx	ebx, bl
	mov	rsi, qword ptr [rsp + rbx*8 + 0x30]
	mov	edi, dword ptr [rsp + 0x1c]
	mov	rdx, r15
	call	full_read
	mov	rbp, rax
	cmp	rbp, r15
	mov	eax, 0
	mov	r14, qword ptr [rsp + 0x20]
	jae	.label_30
	call	__errno_location
	mov	r13d, dword ptr [rax]
	test	r13d, r13d
	jne	.label_35
	mov	rax, r14
	sub	rax, rbp
	mov	ecx, 0
	cmovb	rax, rcx
	test	r12b, r12b
	cmovne	rax, rcx
	mov	r13b, 1
.label_30:
	test	r12b, r12b
	jne	.label_16
	mov	rsi, r14
	sub	rsi, rax
	add	qword ptr [rsp + 8], rsi
	mov	rax, rbx
	xor	rax, 1
	mov	rdi, qword ptr [rsp + rax*8 + 0x30]
	add	rdi, 0x2000
	call	xwrite_stdout
.label_16:
	sub	rbp, r14
	jbe	.label_22
	add	qword ptr [rsp + 8], rbp
	mov	rdi, qword ptr [rsp + rbx*8 + 0x30]
	mov	rsi, rbp
	call	xwrite_stdout
.label_22:
	xor	bl, 1
	mov	r14b, 1
	xor	r12d, r12d
	test	r13b, 1
	je	.label_27
	mov	rdi, qword ptr [rsp + 0x30]
	jmp	.label_17
.label_28:
	mov	ecx, edx
	and	ecx, 0x1fff
	mov	eax, 0x2000
	mov	qword ptr [rsp + 0x60], rcx
	sub	rax, rcx
	mov	qword ptr [rsp + 0x68], rax
	add	rdx, rax
	shr	rdx, 0xd
	mov	qword ptr [rsp + 0x20], rdx
	lea	rax, [rdx + 1]
	cmp	rax, 0x10
	mov	ecx, 0x10
	cmovb	rcx, rax
	mov	qword ptr [rsp + 0x80], rcx
	mov	qword ptr [rsp + 0x40], rax
	shr	rax, 1
	mov	qword ptr [rsp + 0x78], rax
	xor	edx, edx
	mov	r12d, 1
	mov	qword ptr [rsp + 8], rbx
	mov	r13d, 0
	xor	eax, eax
	mov	qword ptr [rsp + 0x10], rax
	xor	ebx, ebx
	xor	r14d, r14d
	xor	eax, eax
	mov	qword ptr [rsp + 0x48], rax
	nop	
.label_23:
	mov	qword ptr [rsp + 0x58], r12
	cmp	rdx, rbx
	jne	.label_32
	test	rdx, rdx
	mov	rbp, qword ptr [rsp + 0x80]
	mov	rdi, qword ptr [rsp + 0x10]
	je	.label_26
	cmp	rdx, qword ptr [rsp + 0x78]
	lea	rbp, [rdx + rdx]
	cmova	rbp, qword ptr [rsp + 0x40]
.label_26:
	mov	edx, 8
	mov	rsi, rbp
	call	xnrealloc
	mov	r12, rax
	mov	qword ptr [rsp + 0x50], rbp
	jmp	.label_33
	.section	.text
	.align	16
	#Procedure 0x4018b2
	.globl sub_4018b2
	.type sub_4018b2, @function
sub_4018b2:

	nop	word ptr cs:[rax + rax]
.label_32:
	mov	qword ptr [rsp + 0x50], rdx
	mov	r12, qword ptr [rsp + 0x10]
.label_33:
	test	r14b, 1
	jne	.label_24
	mov	edi, 0x2000
	call	xmalloc
	mov	qword ptr [r12 + rbx*8], rax
	lea	r13, [rbx + 1]
.label_24:
	mov	rsi, qword ptr [r12 + rbx*8]
	mov	edx, 0x2000
	mov	edi, dword ptr [rsp + 0x1c]
	call	full_read
	mov	r15, rax
	cmp	r15, 0x1fff
	ja	.label_34
	call	__errno_location
	mov	ebp, dword ptr [rax]
	mov	al, 1
	mov	qword ptr [rsp + 0x48], rax
	test	ebp, ebp
	jne	.label_11
.label_34:
	cmp	rbx, qword ptr [rsp + 0x20]
	mov	bpl, 1
	je	.label_14
	mov	ebp, r14d
.label_14:
	test	bpl, 1
	mov	rcx, qword ptr [rsp + 0x58]
	mov	qword ptr [rsp + 0x10], r12
	je	.label_18
	add	qword ptr [rsp + 8], r15
	mov	rdi, qword ptr [r12 + rcx*8]
	mov	rsi, r15
	call	xwrite_stdout
	mov	rcx, qword ptr [rsp + 0x58]
.label_18:
	lea	rax, [rcx + 1]
	xor	edx, edx
	div	qword ptr [rsp + 0x40]
	mov	r12, rdx
	mov	rax, qword ptr [rsp + 0x48]
	test	al, 1
	mov	rbx, rcx
	mov	r14b, bpl
	mov	rdx, qword ptr [rsp + 0x50]
	je	.label_23
	mov	r14b, 1
	mov	rax, qword ptr [rsp + 0x68]
	test	rax, rax
	je	.label_31
	test	bpl, 1
	jne	.label_9
	cmp	rcx, qword ptr [rsp + 0x20]
	jne	.label_13
	sub	r15, qword ptr [rsp + 0x60]
	add	qword ptr [rsp + 8], r15
	mov	rax, qword ptr [rsp + 0x10]
	mov	rdi, qword ptr [rax + r12*8]
	mov	r12, rax
	mov	rsi, r15
	call	xwrite_stdout
	jmp	.label_12
.label_35:
	xor	r14d, r14d
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_20
	mov	edx, 5
	call	dcgettext
	mov	rbp, rax
	mov	edi, 4
	mov	rsi, qword ptr [rsp + 0x28]
	call	quotearg_style
	mov	rcx, rax
	xor	edi, edi
	xor	eax, eax
	mov	esi, r13d
	mov	rdx, rbp
	call	error
	mov	rdi, qword ptr [rsp + 0x30]
	jmp	.label_17
.label_11:
	xor	r14d, r14d
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_20
	mov	edx, 5
	call	dcgettext
	mov	r15, rax
	mov	edi, 4
	mov	rsi, qword ptr [rsp + 0x28]
	call	quotearg_style
	mov	rcx, rax
	xor	edi, edi
	xor	eax, eax
	mov	esi, ebp
	mov	rdx, r15
	call	error
	jmp	.label_12
.label_31:
	mov	r12, qword ptr [rsp + 0x10]
	jmp	.label_12
.label_9:
	mov	esi, 0x2000
	sub	rsi, r15
	add	qword ptr [rsp + 8], rax
	mov	rbx, qword ptr [rsp + 0x10]
	mov	rdi, qword ptr [rbx + rcx*8]
	add	rdi, r15
	mov	rbp, rax
	sub	rbp, rsi
	jae	.label_21
	mov	rsi, rax
	jmp	.label_25
.label_13:
	mov	r12, qword ptr [rsp + 0x10]
	jmp	.label_12
.label_21:
	call	xwrite_stdout
	mov	rdi, qword ptr [rbx + r12*8]
	mov	rsi, rbp
.label_25:
	call	xwrite_stdout
	mov	r12, rbx
.label_12:
	test	r13, r13
	je	.label_29
	mov	rbx, r12
	nop	word ptr cs:[rax + rax]
.label_15:
	mov	rdi, qword ptr [rbx]
	call	free
	add	rbx, 8
	dec	r13
	jne	.label_15
.label_29:
	mov	rdi, r12
.label_17:
	call	free
	cmp	qword ptr [rsp + 0x70], 0
	js	.label_19
	xor	ebx, ebx
	xor	edx, edx
	mov	edi, dword ptr [rsp + 0x1c]
	mov	rsi, qword ptr [rsp + 8]
	mov	rcx, qword ptr [rsp + 0x28]
	call	elseek
	test	rax, rax
	js	.label_10
	mov	bl, r14b
.label_10:
	mov	r14b, bl
.label_19:
	and	r14b, 1
	mov	eax, r14d
	add	rsp, 0x88
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x401aec
	.globl sub_401aec
	.type sub_401aec, @function
sub_401aec:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x401af0

	.globl quote_n_mem
	.type quote_n_mem, @function
quote_n_mem:
	mov	ecx, OFFSET FLAT:quote_quoting_options
	jmp	quotearg_n_options
	.section	.text
	.align	16
	#Procedure 0x401afa
	.globl sub_401afa
	.type sub_401afa, @function
sub_401afa:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x401b00
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
	.align	16
	#Procedure 0x401b10

	.globl quote_n
	.type quote_n, @function
quote_n:
	mov	rdx, -1
	jmp	quote_n_mem
	.section	.text
	.align	16
	#Procedure 0x401b19
	.globl sub_401b19
	.type sub_401b19, @function
sub_401b19:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x401b20

	.globl quote
	.type quote, @function
quote:
	mov	rax, rdi
	xor	edi, edi
	mov	rsi, rax
	jmp	quote_n
	.section	.text
	.align	16
	#Procedure 0x401b2a
	.globl sub_401b2a
	.type sub_401b2a, @function
sub_401b2a:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x401b30
	.globl quotearg_colon_mem
	.type quotearg_colon_mem, @function
quotearg_colon_mem:

	mov	edx, 0x3a
	jmp	quotearg_char_mem
	.section	.text
	.align	16
	#Procedure 0x401b3a
	.globl sub_401b3a
	.type sub_401b3a, @function
sub_401b3a:

	nop	word ptr [rax + rax]
.label_36:
	push	rax
	call	abort
	.section	.text
	.align	16
	#Procedure 0x401b46
	.globl sub_401b46
	.type sub_401b46, @function
sub_401b46:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x401b4b

	.globl set_custom_quoting
	.type set_custom_quoting, @function
set_custom_quoting:
	test	rdi, rdi
	mov	eax, OFFSET FLAT:default_quoting_options
	cmovne	rax, rdi
	mov	dword ptr [rax], 0xa
	test	rsi, rsi
	je	.label_36
	test	rdx, rdx
	je	.label_36
	mov	qword ptr [rax + 0x28], rsi
	mov	qword ptr [rax + 0x30], rdx
	ret	
	.section	.text
	.align	16
	#Procedure 0x401b70

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
	je	.label_39
	and	ecx, 0xffffffdf
	xor	eax, eax
	cmp	ecx, ebp
	je	.label_37
	jmp	.label_38
.label_39:
	xor	eax, eax
	cmp	cl, bpl
	jne	.label_38
.label_37:
	mov	eax, 1
	test	bpl, bpl
	je	.label_38
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
.label_38:
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
	#Procedure 0x401bf8
	.globl sub_401bf8
	.type sub_401bf8, @function
sub_401bf8:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x401c00

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
	je	.label_40
	and	ecx, 0xffffffdf
	xor	eax, eax
	cmp	ecx, ebp
	je	.label_42
	jmp	.label_41
.label_40:
	xor	eax, eax
	cmp	cl, bpl
	jne	.label_41
.label_42:
	mov	eax, 1
	test	bpl, bpl
	je	.label_41
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
.label_41:
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
	#Procedure 0x401c79
	.globl sub_401c79
	.type sub_401c79, @function
sub_401c79:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x401c80

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
	je	.label_45
	and	ecx, 0xffffffdf
	xor	eax, eax
	cmp	ecx, ebp
	je	.label_44
	jmp	.label_43
.label_45:
	xor	eax, eax
	cmp	cl, bpl
	jne	.label_43
.label_44:
	mov	eax, 1
	test	bpl, bpl
	je	.label_43
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
.label_43:
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x401ce3
	.globl sub_401ce3
	.type sub_401ce3, @function
sub_401ce3:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x401cf0

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
	je	.label_48
	and	ecx, 0xffffffdf
	xor	eax, eax
	cmp	ecx, ebp
	je	.label_46
	jmp	.label_47
.label_48:
	xor	eax, eax
	cmp	cl, bpl
	jne	.label_47
.label_46:
	mov	eax, 1
	test	bpl, bpl
	je	.label_47
	movsx	esi, r15b
	movsx	edx, r14b
	mov	rdi, rbx
	add	rsp, 8
	pop	rbx
	pop	r14
	pop	r15
	pop	rbp
	jmp	strcaseeq5
.label_47:
	add	rsp, 8
	pop	rbx
	pop	r14
	pop	r15
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x401d4f
	.globl sub_401d4f
	.type sub_401d4f, @function
sub_401d4f:

	nop	
	.section	.text
	.align	16
	#Procedure 0x401d50

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
	je	.label_49
	and	ecx, 0xffffffdf
	xor	eax, eax
	cmp	ecx, ebp
	je	.label_51
	jmp	.label_50
.label_49:
	xor	eax, eax
	cmp	cl, bpl
	jne	.label_50
.label_51:
	mov	eax, 1
	test	bpl, bpl
	je	.label_50
	movsx	esi, r14b
	mov	rdi, rbx
	pop	rbx
	pop	r14
	pop	rbp
	jmp	strcaseeq6
.label_50:
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x401d99
	.globl sub_401d99
	.type sub_401d99, @function
sub_401d99:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x401da0

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
	je	.label_54
	and	ecx, 0xffffffdf
	xor	eax, eax
	cmp	ecx, ebp
	je	.label_53
	jmp	.label_52
.label_54:
	xor	eax, eax
	cmp	cl, bpl
	jne	.label_52
.label_53:
	mov	eax, 1
	test	bpl, bpl
	je	.label_52
	mov	rdi, rbx
	add	rsp, 8
	pop	rbx
	pop	rbp
	jmp	strcaseeq7
.label_52:
	add	rsp, 8
	pop	rbx
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x401de5
	.globl sub_401de5
	.type sub_401de5, @function
sub_401de5:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x401df0

	.globl strcaseeq7
	.type strcaseeq7, @function
strcaseeq7:
	push	rbx
	mov	rbx, rdi
	xor	edi, edi
	call	c_isupper
	movsx	ecx, byte ptr [rbx + 7]
	test	al, al
	je	.label_57
	mov	eax, 1
	test	ecx, 0xffffffdf
	jne	.label_56
	jmp	.label_55
.label_57:
	mov	eax, 1
	test	cl, cl
	je	.label_55
.label_56:
	xor	eax, eax
.label_55:
	pop	rbx
	ret	
	.section	.text
	.align	16
	#Procedure 0x401e1f
	.globl sub_401e1f
	.type sub_401e1f, @function
sub_401e1f:

	nop	
.label_58:
	xor	eax, eax
	ret	
	.section	.text
	.align	16
	#Procedure 0x401e23
	.globl sub_401e23
	.type sub_401e23, @function
sub_401e23:

	nop	
	.section	.text
	.align	16
	#Procedure 0x401e25
	.globl c_isalpha
	.type c_isalpha, @function
c_isalpha:

	add	edi, -0x41
	cmp	edi, 0x39
	ja	.label_58
	movabs	rax, 0x3ffffff03ffffff
	mov	ecx, edi
	shr	rax, cl
	and	eax, 1
	ret	
.label_62:
	call	abort
	.section	.text
	.align	16
	#Procedure 0x401e45
	.globl sub_401e45
	.type sub_401e45, @function
sub_401e45:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x401e53

	.globl diagnose_copy_fd_failure
	.type diagnose_copy_fd_failure, @function
diagnose_copy_fd_failure:
	push	rbp
	push	r14
	push	rbx
	mov	rbx, rsi
	cmp	edi, 2
	je	.label_60
	cmp	edi, 1
	jne	.label_62
	call	__errno_location
	mov	r14d, dword ptr [rax]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_20
	mov	edx, 5
	call	dcgettext
	mov	rbp, rax
	mov	edi, 4
	mov	rsi, rbx
	call	quotearg_style
	jmp	.label_59
.label_60:
	call	__errno_location
	mov	r14d, dword ptr [rax]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_61
	mov	edx, 5
	call	dcgettext
	mov	rbp, rax
	xor	edi, edi
	mov	esi, 3
	mov	rdx, rbx
	call	quotearg_n_style_colon
.label_59:
	mov	rcx, rax
	xor	edi, edi
	xor	eax, eax
	mov	esi, r14d
	mov	rdx, rbp
	pop	rbx
	pop	r14
	pop	rbp
	jmp	error
	.section	.text
	.align	16
	#Procedure 0x401ed0

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
	#Procedure 0x401ee7
	.globl sub_401ee7
	.type sub_401ee7, @function
sub_401ee7:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x401ef0
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
	.align	16
	#Procedure 0x401f62
	.globl sub_401f62
	.type sub_401f62, @function
sub_401f62:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x401f70
	.globl version_etc_ar
	.type version_etc_ar, @function
version_etc_ar:

	mov	r9, -1
	nop	word ptr [rax + rax]
.label_63:
	cmp	qword ptr [r8 + r9*8 + 8], 0
	lea	r9, [r9 + 1]
	jne	.label_63
	jmp	version_etc_arn
	.section	.text
	.align	16
	#Procedure 0x401f91
	.globl sub_401f91
	.type sub_401f91, @function
sub_401f91:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x401fa0
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
	#Procedure 0x401faf
	.globl sub_401faf
	.type sub_401faf, @function
sub_401faf:

	nop	
	.section	.text
	.align	16
	#Procedure 0x401fb0

	.globl set_binary_mode
	.type set_binary_mode, @function
set_binary_mode:
	xor	eax, eax
	ret	
	.section	.text
	.align	16
	#Procedure 0x401fb3
	.globl sub_401fb3
	.type sub_401fb3, @function
sub_401fb3:

	nop	word ptr cs:[rax + rax]
.label_64:
	xor	eax, eax
	ret	
	.section	.text
	.align	16
	#Procedure 0x401fc3
	.globl sub_401fc3
	.type sub_401fc3, @function
sub_401fc3:

	nop	
	.section	.text
	.align	16
	#Procedure 0x401fc5
	.globl c_isxdigit
	.type c_isxdigit, @function
c_isxdigit:

	add	edi, -0x30
	cmp	edi, 0x36
	ja	.label_64
	movabs	rax, 0x7e0000007e03ff
	mov	ecx, edi
	shr	rax, cl
	and	eax, 1
	ret	
	.section	.text
	.align	16
	#Procedure 0x401fe0
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
	.align	16
	#Procedure 0x402007
	.globl sub_402007
	.type sub_402007, @function
sub_402007:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x402010

	.globl head_bytes
	.type head_bytes, @function
head_bytes:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x2018
	mov	rbx, rdx
	mov	r12d, esi
	mov	r15b, 1
	test	rbx, rbx
	je	.label_65
	mov	qword ptr [rsp + 8], rdi
	mov	ebp, 0x2000
	lea	r13, [rsp + 0x10]
	nop	word ptr cs:[rax + rax]
.label_67:
	cmp	rbx, rbp
	cmovb	rbp, rbx
	mov	edi, r12d
	mov	rsi, r13
	mov	rdx, rbp
	call	safe_read
	mov	r14, rax
	test	r14, r14
	je	.label_65
	cmp	r14, -1
	je	.label_66
	mov	rdi, r13
	mov	rsi, r14
	call	xwrite_stdout
	sub	rbx, r14
	jne	.label_67
	jmp	.label_65
.label_66:
	call	__errno_location
	mov	ebx, dword ptr [rax]
	xor	r15d, r15d
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_20
	mov	edx, 5
	call	dcgettext
	mov	rbp, rax
	mov	edi, 4
	mov	rsi, qword ptr [rsp + 8]
	call	quotearg_style
	mov	rcx, rax
	xor	edi, edi
	xor	eax, eax
	mov	esi, ebx
	mov	rdx, rbp
	call	error
.label_65:
	mov	eax, r15d
	add	rsp, 0x2018
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x4020d8
	.globl sub_4020d8
	.type sub_4020d8, @function
sub_4020d8:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4020e0

	.globl elide_tail_lines_seekable
	.type elide_tail_lines_seekable, @function
elide_tail_lines_seekable:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x2028
	mov	r13, rdx
	mov	r12d, esi
	mov	rbp, rdi
	mov	rax, r8
	mov	qword ptr [rsp + 0x18], rcx
	sub	rax, rcx
	mov	rcx, rax
	sar	rcx, 0x3f
	shr	rcx, 0x33
	add	rcx, rax
	and	rcx, 0xffffffffffffe000
	sub	rax, rcx
	mov	ebx, 0x2000
	cmovne	rbx, rax
	sub	r8, rbx
	xor	r15d, r15d
	xor	edx, edx
	mov	edi, r12d
	mov	qword ptr [rsp + 0x10], r8
	mov	rsi, r8
	mov	qword ptr [rsp], rbp
	mov	rcx, rbp
	call	elseek
	test	rax, rax
	js	.label_69
	lea	r14, [rsp + 0x20]
	mov	edi, r12d
	mov	rsi, r14
	mov	rdx, rbx
	call	safe_read
	mov	rbx, rax
	cmp	rbx, -1
	je	.label_71
	mov	dword ptr [rsp + 0xc], r12d
	test	r13, r13
	mov	r12, r13
	je	.label_75
	test	rbx, rbx
	mov	r12, r13
	je	.label_75
	movsx	eax, byte ptr [rsp + rbx + 0x1f]
	mov	cl,  byte ptr [byte ptr [rip + line_end]]
	xor	edx, edx
	test	cl, cl
	mov	ecx, 0xa
	cmove	ecx, edx
	xor	edx, edx
	cmp	eax, ecx
	setne	dl
	mov	r12, r13
	sub	r12, rdx
.label_75:
	mov	ecx, 0xa
.label_74:
	mov	al,  byte ptr [byte ptr [rip + line_end]]
	test	al, al
	mov	ebp, 0
	cmovne	ebp, ecx
	neg	r12
	nop	
.label_76:
	test	rbx, rbx
	je	.label_68
	test	r13, r13
	je	.label_70
	mov	rdi, r14
	mov	esi, ebp
	mov	rdx, rbx
	call	memrchr
	mov	rbx, rax
	test	rbx, rbx
	je	.label_68
	sub	rbx, r14
	jmp	.label_77
	.section	.text
	.align	16
	#Procedure 0x4021e4
	.globl sub_4021e4
	.type sub_4021e4, @function
sub_4021e4:

	nop	word ptr cs:[rax + rax]
.label_70:
	dec	rbx
.label_77:
	inc	r12
	cmp	r12, 1
	jne	.label_76
	jmp	.label_73
	.section	.text
	.align	16
	#Procedure 0x402201
	.globl sub_402201
	.type sub_402201, @function
sub_402201:

	nop	word ptr cs:[rax + rax]
.label_68:
	mov	rsi, qword ptr [rsp + 0x10]
	cmp	rsi, qword ptr [rsp + 0x18]
	mov	r15b, 1
	je	.label_69
	add	rsi, -0x2000
	xor	r15d, r15d
	xor	edx, edx
	mov	ebx, dword ptr [rsp + 0xc]
	mov	edi, ebx
	mov	qword ptr [rsp + 0x10], rsi
	mov	rcx, qword ptr [rsp]
	call	elseek
	test	rax, rax
	js	.label_69
	mov	edx, 0x2000
	mov	edi, ebx
	mov	rsi, r14
	call	safe_read
	mov	rbx, rax
	test	rbx, rbx
	mov	r15b, 1
	je	.label_69
	neg	r12
	cmp	rbx, -1
	mov	ecx, 0xa
	jne	.label_74
.label_71:
	call	__errno_location
	mov	ebx, dword ptr [rax]
	xor	r15d, r15d
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_20
	mov	edx, 5
	call	dcgettext
	mov	rbp, rax
	mov	edi, 4
	mov	rsi, qword ptr [rsp]
	call	quotearg_style
	mov	rcx, rax
	xor	edi, edi
	xor	eax, eax
	mov	esi, ebx
	mov	rdx, rbp
	call	error
	jmp	.label_69
.label_73:
	mov	rbp, qword ptr [rsp + 0x10]
	mov	rsi, qword ptr [rsp + 0x18]
	sub	rbp, rsi
	mov	r14d, dword ptr [rsp + 0xc]
	jle	.label_72
	xor	r15d, r15d
	xor	edx, edx
	mov	edi, r14d
	mov	rcx, qword ptr [rsp]
	call	elseek
	test	rax, rax
	js	.label_69
	mov	edi, r14d
	mov	rsi, rbp
	call	copy_fd
	test	eax, eax
	je	.label_72
	mov	edi, eax
	mov	rsi, qword ptr [rsp]
	call	diagnose_copy_fd_failure
	xor	r15d, r15d
	jmp	.label_69
.label_72:
	lea	rsi, [rbx + 1]
	lea	rdi, [rsp + 0x20]
	call	xwrite_stdout
	mov	rax, qword ptr [rsp + 0x10]
	lea	rsi, [rax + rbx + 1]
	xor	edx, edx
	mov	edi, r14d
	mov	rcx, qword ptr [rsp]
	call	elseek
	test	rax, rax
	setns	r15b
.label_69:
	mov	eax, r15d
	add	rsp, 0x2028
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x402346
	.globl sub_402346
	.type sub_402346, @function
sub_402346:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x402350

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
	mov	rcx,  qword ptr [word ptr [rip + label_78]]
	mov	qword ptr [rsp + 0x30], rcx
	movups	xmm0,  xmmword ptr [word ptr [rip + label_79]]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0,  xmmword ptr [word ptr [rip + label_80]]
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
	.align	16
	#Procedure 0x4023bd
	.globl sub_4023bd
	.type sub_4023bd, @function
sub_4023bd:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x4023c0

	.globl quotearg_char
	.type quotearg_char, @function
quotearg_char:
	mov	eax, esi
	mov	rsi, -1
	mov	edx, eax
	jmp	quotearg_char_mem
	.section	.text
	.align	16
	#Procedure 0x4023cd
	.globl sub_4023cd
	.type sub_4023cd, @function
sub_4023cd:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x4023d0

	.globl quotearg_colon
	.type quotearg_colon, @function
quotearg_colon:
	mov	esi, 0x3a
	jmp	quotearg_char
	.section	.text
	.align	16
	#Procedure 0x4023d7
	.globl sub_4023d7
	.type sub_4023d7, @function
sub_4023d7:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4023e0

	.globl head
	.type head, @function
head:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x98
	mov	ebx, r8d
	mov	r15d, ecx
	mov	r14, rdx
	mov	ebp, esi
	mov	r12, rdi
	cmp	byte ptr [byte ptr [rip + print_headers]],  1
	jne	.label_86
	mov	rdi, r12
	call	write_header
.label_86:
	test	bl, bl
	je	.label_83
	lea	rsi, [rsp + 8]
	mov	edi, ebp
	call	fstat
	test	eax, eax
	je	.label_81
	call	__errno_location
	mov	r14d, dword ptr [rax]
	xor	ebx, ebx
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_88
	mov	edx, 5
	call	dcgettext
	mov	rbp, rax
	mov	edi, 4
	mov	rsi, r12
	call	quotearg_style
	mov	rcx, rax
	xor	edi, edi
	xor	eax, eax
	mov	esi, r14d
	mov	rdx, rbp
	call	error
	jmp	.label_82
.label_83:
	mov	rdi, r12
	mov	esi, ebp
	mov	rdx, r14
	test	r15b, r15b
	je	.label_87
	call	head_lines
	jmp	.label_84
.label_89:
	call	elide_tail_bytes_file
.label_84:
	mov	bl, al
.label_82:
	mov	eax, ebx
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
	#Procedure 0x402492
	.globl sub_402492
	.type sub_402492, @function
sub_402492:

	nop	
.label_87:
	call	head_bytes
	jmp	.label_84
.label_81:
	mov	r13, -1
	mov	al,  byte ptr [byte ptr [rip + presume_input_pipe]]
	test	al, al
	jne	.label_85
	lea	rdi, [rsp + 8]
	call	usable_st_size
	test	al, al
	je	.label_85
	xor	ebx, ebx
	xor	esi, esi
	mov	edx, 1
	mov	edi, ebp
	mov	rcx, r12
	call	elseek
	mov	r13, rax
	test	r13, r13
	js	.label_82
.label_85:
	lea	rcx, [rsp + 8]
	mov	rdi, r12
	mov	esi, ebp
	mov	rdx, r14
	mov	r8, r13
	test	r15b, r15b
	je	.label_89
	call	elide_tail_lines_file
	jmp	.label_84
	.section	.text
	.align	16
	#Procedure 0x4024f0

	.globl write_header
	.type write_header, @function
write_header:
	push	rax
	mov	rcx, rdi
	mov	al,  byte ptr [byte ptr [rip + write_header.first_file]]
	mov	esi, OFFSET FLAT:label_90
	mov	edx, OFFSET FLAT:label_91
	test	al, al
	cmovne	rdx, rsi
	mov	edi, 1
	mov	esi, OFFSET FLAT:label_92
	xor	eax, eax
	call	__printf_chk
	mov	byte ptr [byte ptr [rip + write_header.first_file]],  1
	pop	rax
	ret	
	.section	.text
	.align	16
	#Procedure 0x402524
	.globl sub_402524
	.type sub_402524, @function
sub_402524:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x402530
	.globl quotearg_free
	.type quotearg_free, @function
quotearg_free:

	push	r15
	push	r14
	push	rbx
	mov	r14,  qword ptr [word ptr [rip + slotvec]]
	cmp	dword ptr [dword ptr [rip + nslots]],  2
	jl	.label_93
	lea	r15, [r14 + 0x18]
	mov	ebx, 1
	nop	
.label_96:
	mov	rdi, qword ptr [r15]
	call	free
	inc	rbx
	movsxd	rax,  dword ptr [dword ptr [rip + nslots]]
	add	r15, 0x10
	cmp	rbx, rax
	jl	.label_96
.label_93:
	mov	rdi, qword ptr [r14 + 8]
	mov	eax, OFFSET FLAT:slot0
	cmp	rdi, rax
	je	.label_97
	call	free
	mov	qword ptr [word ptr [rip + slotvec0]],  0x100
	mov	qword ptr [word ptr [rip + label_94]], OFFSET FLAT:slot0
.label_97:
	mov	eax, OFFSET FLAT:slotvec0
	cmp	r14, rax
	je	.label_95
	mov	rdi, r14
	call	free
	mov	qword ptr [word ptr [rip + slotvec]], OFFSET FLAT:slotvec0
.label_95:
	mov	dword ptr [dword ptr [rip + nslots]],  1
	pop	rbx
	pop	r14
	pop	r15
	ret	
	.section	.text
	.align	16
	#Procedure 0x4025c1
	.globl sub_4025c1
	.type sub_4025c1, @function
sub_4025c1:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4025d0
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
	.align	16
	#Procedure 0x4025e9
	.globl sub_4025e9
	.type sub_4025e9, @function
sub_4025e9:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x4025f0

	.globl elide_tail_lines_file
	.type elide_tail_lines_file, @function
elide_tail_lines_file:
	push	rax
	test	r8, r8
	js	.label_98
	test	byte ptr [byte ptr [rip + presume_input_pipe]],  1
	jne	.label_98
	mov	r9, qword ptr [rcx + 0x30]
	mov	rax, qword ptr [rcx + 0x38]
	movabs	rcx, 0x2000000000000001
	cmp	rax, rcx
	mov	r10d, 0x200
	mov	ecx, 0x200
	cmovb	rcx, rax
	test	rax, rax
	cmovle	rcx, r10
	cmp	r9, rcx
	jle	.label_98
	mov	al, 1
	cmp	r9, r8
	jle	.label_99
	mov	rcx, r8
	mov	r8, r9
	call	elide_tail_lines_seekable
.label_99:
	pop	rcx
	ret	
.label_98:
	mov	rcx, r8
	call	elide_tail_lines_pipe
	pop	rcx
	ret	
	.section	.text
	.align	16
	#Procedure 0x40264d
	.globl sub_40264d
	.type sub_40264d, @function
sub_40264d:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x402650
	.globl quotearg_alloc
	.type quotearg_alloc, @function
quotearg_alloc:

	mov	rax, rdx
	xor	edx, edx
	mov	rcx, rax
	jmp	quotearg_alloc_mem
	.section	.text
	.align	16
	#Procedure 0x40265a
	.globl sub_40265a
	.type sub_40265a, @function
sub_40265a:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x402660

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
	je	.label_100
	mov	qword ptr [rax], rbx
.label_100:
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
	#Procedure 0x40274c
	.globl sub_40274c
	.type sub_40274c, @function
sub_40274c:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x402750
	.globl __gl_setmode
	.type __gl_setmode, @function
__gl_setmode:

	xor	eax, eax
	ret	
	.section	.text
	.align	16
	#Procedure 0x402753
	.globl sub_402753
	.type sub_402753, @function
sub_402753:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x402760

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
	jae	.label_112
	mov	qword ptr [rsp + 8], rcx
	call	__errno_location
	mov	r12, rax
	mov	dword ptr [r12], 0
	call	__ctype_b_loc
	mov	rcx, qword ptr [rax]
	mov	rdx, rbx
	nop	word ptr cs:[rax + rax]
.label_108:
	movzx	eax, byte ptr [rdx]
	inc	rdx
	test	byte ptr [rcx + rax*2 + 1], 0x20
	jne	.label_108
	test	rbp, rbp
	lea	rsi, [rsp + 0x10]
	cmovne	rsi, rbp
	mov	r15d, 4
	cmp	al, 0x2d
	je	.label_101
	mov	rdi, rbx
	mov	edx, r14d
	mov	r14, rsi
	call	strtoumax
	mov	rcx, r14
	mov	qword ptr [rsp], rax
	mov	rax, qword ptr [rcx]
	cmp	rax, rbx
	je	.label_113
	mov	eax, dword ptr [r12]
	xor	r12d, r12d
	test	eax, eax
	mov	rbp, r13
	je	.label_117
	cmp	eax, 0x22
	jne	.label_101
	mov	r12d, 1
.label_117:
	test	rbp, rbp
	jne	.label_105
	jmp	.label_102
.label_113:
	mov	rbp, r13
	test	rbp, rbp
	je	.label_101
	movsx	esi, byte ptr [rax]
	test	esi, esi
	je	.label_101
	mov	rdi, rbp
	call	strchr
	mov	rcx, r14
	test	rax, rax
	je	.label_101
	mov	qword ptr [rsp], 1
	xor	r12d, r12d
.label_105:
	mov	rax, qword ptr [rcx]
	movsx	ebx, byte ptr [rax]
	test	ebx, ebx
	je	.label_102
	mov	rdi, rbp
	mov	esi, ebx
	call	strchr
	test	rax, rax
	je	.label_107
	mov	r15d, 0x400
	mov	r13d, 1
	add	ebx, -0x45
	cmp	ebx, 0x2f
	ja	.label_103
	movabs	rax, 0x814400308945
	bt	rax, rbx
	jae	.label_103
	mov	esi, 0x30
	mov	rdi, rbp
	call	strchr
	mov	r13d, 1
	mov	rsi, r14
	test	rax, rax
	je	.label_109
	mov	rax, qword ptr [rsi]
	movsx	ecx, byte ptr [rax + 1]
	mov	r13d, 1
	cmp	ecx, 0x42
	je	.label_106
	cmp	ecx, 0x44
	je	.label_106
	cmp	ecx, 0x69
	jne	.label_109
	xor	ecx, ecx
	cmp	byte ptr [rax + 2], 0x42
	sete	cl
	lea	r13, [rcx + rcx + 1]
	jmp	.label_109
.label_106:
	mov	r15d, 0x3e8
	mov	r13d, 2
	jmp	.label_109
.label_103:
	mov	rsi, r14
.label_109:
	mov	rax, qword ptr [rsi]
	movsx	ecx, byte ptr [rax]
	add	ecx, -0x42
	cmp	ecx, 0x35
	ja	.label_107
	xor	eax, eax
	jmp	qword ptr [word ptr [+ (rcx * 8) + label_118]]
.label_535:
	lea	rdi, [rsp]
	mov	edx, 3
	jmp	.label_110
.label_107:
	mov	rax, qword ptr [rsp]
	mov	rcx, qword ptr [rsp + 8]
	mov	qword ptr [rcx], rax
	or	r12d, 2
	jmp	.label_104
.label_536:
	lea	rdi, [rsp]
	mov	edx, 1
	jmp	.label_110
.label_537:
	lea	rdi, [rsp]
	mov	edx, 2
	jmp	.label_110
.label_539:
	lea	rdi, [rsp]
	mov	edx, 4
	jmp	.label_110
.label_533:
	lea	rdi, [rsp]
	mov	esi, 0x400
	call	bkm_scale
	jmp	.label_111
.label_534:
	lea	rdi, [rsp]
	mov	edx, 6
	jmp	.label_110
.label_538:
	lea	rdi, [rsp]
	mov	edx, 5
	jmp	.label_110
.label_540:
	lea	rdi, [rsp]
	mov	edx, 8
	jmp	.label_110
.label_541:
	lea	rdi, [rsp]
	mov	edx, 7
.label_110:
	mov	esi, r15d
	call	bkm_scale_by_power
.label_111:
	mov	rsi, r14
.label_543:
	or	eax, r12d
	mov	rcx, qword ptr [rsi]
	lea	rdx, [rcx + r13]
	mov	qword ptr [rsi], rdx
	mov	r12d, eax
	or	r12d, 2
	cmp	byte ptr [rcx + r13], 0
	cmove	r12d, eax
.label_102:
	mov	rax, qword ptr [rsp]
	mov	rcx, qword ptr [rsp + 8]
	mov	qword ptr [rcx], rax
.label_104:
	mov	r15d, r12d
.label_101:
	mov	eax, r15d
	add	rsp, 0x18
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_542:
	lea	rdi, [rsp]
	mov	esi, 0x200
	call	bkm_scale
	jmp	.label_111
.label_544:
	lea	rdi, [rsp]
	mov	esi, 2
	call	bkm_scale
	jmp	.label_111
.label_112:
	mov	edi, OFFSET FLAT:label_114
	mov	esi, OFFSET FLAT:label_115
	mov	edx, 0x54
	mov	ecx, OFFSET FLAT:label_116
	call	__assert_fail
	.section	.text
	.align	16
	#Procedure 0x402a02
	.globl sub_402a02
	.type sub_402a02, @function
sub_402a02:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x402a10

	.globl rpl_fflush
	.type rpl_fflush, @function
rpl_fflush:
	push	rbx
	mov	rbx, rdi
	test	rbx, rbx
	je	.label_119
	mov	rdi, rbx
	call	__freading
	test	eax, eax
	je	.label_119
	mov	rdi, rbx
	call	clear_ungetc_buffer_preserving_position
.label_119:
	mov	rdi, rbx
	pop	rbx
	jmp	fflush
	.section	.text
	.align	16
	#Procedure 0x402a36
	.globl sub_402a36
	.type sub_402a36, @function
sub_402a36:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x402a40

	.globl xset_binary_mode
	.type xset_binary_mode, @function
xset_binary_mode:
	jmp	set_binary_mode
	.section	.text
	.align	16
	#Procedure 0x402a45
	.globl sub_402a45
	.type sub_402a45, @function
sub_402a45:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x402a50
	.globl xset_binary_mode_error
	.type xset_binary_mode_error, @function
xset_binary_mode_error:

	ret	
	.section	.text
	.align	16
	#Procedure 0x402a51
	.globl sub_402a51
	.type sub_402a51, @function
sub_402a51:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x402a60

	.globl usable_st_size
	.type usable_st_size, @function
usable_st_size:
	movzx	eax, word ptr [rdi + 0x18]
	or	eax, 0x2000
	and	eax, 0xf000
	cmp	eax, 0xa000
	jne	.label_120
	mov	al, 1
	ret	
.label_120:
	xor	eax, eax
	ret	
	.section	.text
	.align	16
	#Procedure 0x402a7b
	.globl sub_402a7b
	.type sub_402a7b, @function
sub_402a7b:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x402a80
	.globl c_islower
	.type c_islower, @function
c_islower:

	add	edi, -0x61
	cmp	edi, 0x1a
	setb	al
	ret	
	.section	.text
	.align	16
	#Procedure 0x402a8a
	.globl sub_402a8a
	.type sub_402a8a, @function
sub_402a8a:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
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
	.align	16
	#Procedure 0x402aa6
	.globl sub_402aa6
	.type sub_402aa6, @function
sub_402aa6:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x402ab0
	.globl c_tolower
	.type c_tolower, @function
c_tolower:

	lea	ecx, [rdi - 0x41]
	lea	eax, [rdi + 0x20]
	cmp	ecx, 0x1a
	cmovae	eax, edi
	ret	
	.section	.text
	.align	16
	#Procedure 0x402abd
	.globl sub_402abd
	.type sub_402abd, @function
sub_402abd:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x402ac0

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
	.align	16
	#Procedure 0x402b09
	.globl sub_402b09
	.type sub_402b09, @function
sub_402b09:

	nop	dword ptr [rax]
.label_122:
	cmp	edi, 0x7f
	je	.label_121
	xor	eax, eax
	jmp	.label_121
	.section	.text
	.align	16
	#Procedure 0x402b19
	.globl sub_402b19
	.type sub_402b19, @function
sub_402b19:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x402b28
	.globl c_iscntrl
	.type c_iscntrl, @function
c_iscntrl:

	mov	al, 1
	cmp	edi, 0x20
	jae	.label_122
.label_121:
	ret	
	.section	.text
	.align	16
	#Procedure 0x402b30

	.globl umaxtostr
	.type umaxtostr, @function
umaxtostr:
	mov	rcx, rdi
	mov	byte ptr [rsi + 0x14], 0
	add	rsi, 0x14
	movabs	r8, 0xcccccccccccccccd
	nop	word ptr cs:[rax + rax]
.label_123:
	mov	rax, rcx
	mul	r8
	shr	rdx, 3
	lea	eax, [rdx + rdx]
	lea	eax, [rax + rax*4]
	mov	edi, ecx
	sub	edi, eax
	or	edi, 0x30
	mov	byte ptr [rsi - 1], dil
	dec	rsi
	cmp	rcx, 9
	mov	rcx, rdx
	ja	.label_123
	mov	rax, rsi
	ret	
	.section	.text
	.align	16
	#Procedure 0x402b7b
	.globl sub_402b7b
	.type sub_402b7b, @function
sub_402b7b:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x402b80
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
	#Procedure 0x402bb3
	.globl sub_402bb3
	.type sub_402bb3, @function
sub_402bb3:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x402bc0

	.globl quotearg_n_custom
	.type quotearg_n_custom, @function
quotearg_n_custom:
	mov	r8, -1
	jmp	quotearg_n_custom_mem
	.section	.text
	.align	16
	#Procedure 0x402bc9
	.globl sub_402bc9
	.type sub_402bc9, @function
sub_402bc9:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x402bd0

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
	mov	rax,  qword ptr [word ptr [rip + label_78]]
	mov	qword ptr [rsp + 0x30], rax
	movups	xmm0,  xmmword ptr [word ptr [rip + label_79]]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0,  xmmword ptr [word ptr [rip + label_80]]
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
	.align	16
	#Procedure 0x402c38
	.globl sub_402c38
	.type sub_402c38, @function
sub_402c38:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x402c40

	.globl xnrealloc
	.type xnrealloc, @function
xnrealloc:
	mov	rcx, rdx
	movabs	rax, 0x7fffffffffffffff
	xor	edx, edx
	div	rcx
	cmp	rax, rsi
	jb	.label_124
	imul	rcx, rsi
	mov	rsi, rcx
	jmp	xrealloc
.label_124:
	push	rax
	call	xalloc_die
	.section	.text
	.align	16
	#Procedure 0x402c66
	.globl sub_402c66
	.type sub_402c66, @function
sub_402c66:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x402c70

	.globl xrealloc
	.type xrealloc, @function
xrealloc:
	push	rbx
	mov	rbx, rsi
	test	rdi, rdi
	je	.label_125
	test	rbx, rbx
	jne	.label_125
	call	free
	xor	eax, eax
	pop	rbx
	ret	
.label_125:
	mov	rsi, rbx
	call	realloc
	test	rbx, rbx
	je	.label_127
	test	rax, rax
	je	.label_126
.label_127:
	pop	rbx
	ret	
.label_126:
	call	xalloc_die
	.section	.text
	.align	16
	#Procedure 0x402ca0
	.globl c_isdigit
	.type c_isdigit, @function
c_isdigit:

	add	edi, -0x30
	cmp	edi, 0xa
	setb	al
	ret	
	.section	.text
	.align	16
	#Procedure 0x402caa
	.globl sub_402caa
	.type sub_402caa, @function
sub_402caa:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x402cb0
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
	.align	16
	#Procedure 0x402cbf
	.globl sub_402cbf
	.type sub_402cbf, @function
sub_402cbf:

	nop	
	.section	.text
	.align	16
	#Procedure 0x402cc0

	.globl close_stdout
	.type close_stdout, @function
close_stdout:
	push	rbp
	push	r14
	push	rbx
	mov	rdi,  qword ptr [word ptr [rip + stdout]]
	call	close_stream
	test	eax, eax
	je	.label_132
	cmp	byte ptr [byte ptr [rip + ignore_EPIPE]],  0
	je	.label_128
	call	__errno_location
	cmp	dword ptr [rax], 0x20
	jne	.label_128
.label_132:
	mov	rdi,  qword ptr [word ptr [rip + stderr]]
	call	close_stream
	test	eax, eax
	jne	.label_133
	pop	rbx
	pop	r14
	pop	rbp
	ret	
.label_134:
	mov	rdi, rbx
	call	quotearg_colon
	mov	rcx, rax
	xor	edi, edi
	mov	edx, OFFSET FLAT:label_129
	xor	eax, eax
	mov	esi, ebp
	mov	r8, r14
	call	error
	mov	edi,  dword ptr [dword ptr [rip + exit_failure]]
	call	_exit
	nop	dword ptr [rax]
	nop	dword ptr [rax + rax]
.label_128:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_131
	mov	edx, 5
	call	dcgettext
	mov	r14, rax
	mov	rbx,  qword ptr [word ptr [rip + file_name]]
	call	__errno_location
	test	rbx, rbx
	mov	ebp, dword ptr [rax]
	jne	.label_134
	xor	edi, edi
	mov	edx, OFFSET FLAT:label_130
	xor	eax, eax
	mov	esi, ebp
	mov	rcx, r14
	call	error
	mov	edi,  dword ptr [dword ptr [rip + exit_failure]]
	call	_exit
.label_133:
	mov	edi,  dword ptr [dword ptr [rip + exit_failure]]
	call	_exit
.label_137:
	call	xalloc_die
	.section	.text
	.align	16
	#Procedure 0x402d85
	.globl sub_402d85
	.type sub_402d85, @function
sub_402d85:

	nop	dword ptr [rax]
.label_138:
	call	xalloc_die
.label_136:
	test	rcx, rcx
	jne	.label_135
	mov	eax, 0x80
	xor	edx, edx
	div	r8
	xor	ecx, ecx
	cmp	r8, 0x80
	seta	cl
	add	rcx, rax
.label_135:
	movabs	rax, 0x7fffffffffffffff
	xor	edx, edx
	div	r8
	cmp	rax, rcx
	jb	.label_137
.label_139:
	mov	qword ptr [rsi], rcx
	imul	r8, rcx
	mov	rsi, r8
	pop	rax
	jmp	xrealloc
	.section	.text
	.align	16
	#Procedure 0x402dd3

	.globl x2nrealloc
	.type x2nrealloc, @function
x2nrealloc:
	push	rax
	mov	r8, rdx
	mov	rcx, qword ptr [rsi]
	test	rdi, rdi
	je	.label_136
	movabs	rax, 0x5555555555555554
	xor	edx, edx
	div	r8
	cmp	rax, rcx
	jbe	.label_138
	mov	rax, rcx
	shr	rax, 1
	lea	rcx, [rcx + rax + 1]
	jmp	.label_139
	.section	.text
	.align	16
	#Procedure 0x402e00

	.globl c_isupper
	.type c_isupper, @function
c_isupper:
	add	edi, -0x41
	cmp	edi, 0x1a
	setb	al
	ret	
	.section	.text
	.align	16
	#Procedure 0x402e0a
	.globl sub_402e0a
	.type sub_402e0a, @function
sub_402e0a:

	nop	word ptr [rax + rax]
.label_140:
	call	abort
	.section	.text
	.align	16
	#Procedure 0x402e15
	.globl sub_402e15
	.type sub_402e15, @function
sub_402e15:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x402e23

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
	je	.label_140
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
.label_143:
	xor	eax, eax
	cmp	cl, bpl
	jne	.label_141
.label_142:
	mov	eax, 1
	test	bpl, bpl
	je	.label_141
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
.label_141:
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
	#Procedure 0x402eb8
	.globl sub_402eb8
	.type sub_402eb8, @function
sub_402eb8:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x402ebb

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
	je	.label_143
	and	ecx, 0xffffffdf
	xor	eax, eax
	cmp	ecx, ebp
	je	.label_142
	jmp	.label_141
	.section	.text
	.align	16
	#Procedure 0x402ef0

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
	je	.label_144
	xor	ebp, ebp
	nop	word ptr [rax + rax]
.label_145:
	mov	rdi, r15
	mov	esi, r14d
	call	bkm_scale
	or	ebp, eax
	dec	ebx
	jne	.label_145
.label_144:
	mov	eax, ebp
	add	rsp, 8
	pop	rbx
	pop	r14
	pop	r15
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x402f2e
	.globl sub_402f2e
	.type sub_402f2e, @function
sub_402f2e:

	nop	
	.section	.text
	.align	16
	#Procedure 0x402f30

	.globl offtostr
	.type offtostr, @function
offtostr:
	mov	rcx, rdi
	mov	byte ptr [rsi + 0x14], 0
	test	rcx, rcx
	js	.label_146
	add	rsi, 0x14
	movabs	r8, 0x6666666666666667
	nop	word ptr [rax + rax]
.label_147:
	mov	rax, rcx
	imul	r8
	mov	rax, rdx
	shr	rax, 0x3f
	sar	rdx, 2
	lea	edi, [rdx + rax]
	add	edi, edi
	lea	r9d, [rdi + rdi*4]
	mov	edi, ecx
	sub	edi, r9d
	add	edi, 0x30
	mov	byte ptr [rsi - 1], dil
	dec	rsi
	add	rdx, rax
	add	rcx, 9
	cmp	rcx, 0x12
	mov	rcx, rdx
	ja	.label_147
	jmp	.label_149
.label_146:
	add	rsi, 0x13
	movabs	r8, 0x6666666666666667
	nop	dword ptr [rax]
.label_148:
	mov	rax, rcx
	imul	r8
	mov	r10, rdx
	shr	r10, 0x3f
	sar	rdx, 2
	lea	edi, [rdx + r10]
	add	edi, edi
	lea	r9d, [rdi + rdi*4]
	mov	edi, ecx
	sub	edi, r9d
	mov	eax, 0x30
	sub	eax, edi
	mov	byte ptr [rsi], al
	add	rdx, r10
	add	rcx, 9
	dec	rsi
	cmp	rcx, 0x12
	mov	rcx, rdx
	ja	.label_148
	mov	byte ptr [rsi], 0x2d
.label_149:
	mov	rax, rsi
	ret	
	.section	.text
	.align	16
	#Procedure 0x402fe3
	.globl sub_402fe3
	.type sub_402fe3, @function
sub_402fe3:

	nop	word ptr cs:[rax + rax]
.label_152:
	mov	rdi,  qword ptr [word ptr [rip + stdout]]
	call	clearerr_unlocked
	call	__errno_location
	mov	ebp, dword ptr [rax]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_150
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
	mov	edi, 4
	mov	esi, OFFSET FLAT:label_151
	call	quotearg_style
	mov	rcx, rax
	mov	edi, 1
	xor	eax, eax
	mov	esi, ebp
	mov	rdx, rbx
	call	error
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x403045

	.globl xwrite_stdout
	.type xwrite_stdout, @function
xwrite_stdout:
	push	rbp
	push	rbx
	push	rax
	mov	rbx, rsi
	test	rbx, rbx
	je	.label_153
	mov	rcx,  qword ptr [word ptr [rip + stdout]]
	mov	esi, 1
	mov	rdx, rbx
	call	fwrite_unlocked
	cmp	rax, rbx
	jb	.label_152
.label_153:
	add	rsp, 8
	pop	rbx
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x403070

	.globl elseek
	.type elseek, @function
elseek:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x18
	mov	r15, rcx
	mov	ebp, edx
	mov	r14, rsi
	call	lseek
	mov	rbx, rax
	test	rbx, rbx
	jns	.label_156
	call	__errno_location
	mov	r12d, dword ptr [rax]
	test	ebp, ebp
	mov	eax, OFFSET FLAT:label_154
	mov	esi, OFFSET FLAT:label_155
	cmove	rsi, rax
	xor	edi, edi
	mov	edx, 5
	call	dcgettext
	mov	r13, rax
	xor	edi, edi
	mov	esi, 3
	mov	rdx, r15
	call	quotearg_n_style_colon
	mov	r15, rax
	lea	rsi, [rsp]
	mov	rdi, r14
	call	offtostr
	mov	rbp, rax
	xor	edi, edi
	xor	eax, eax
	mov	esi, r12d
	mov	rdx, r13
	mov	rcx, r15
	mov	r8, rbp
	call	error
.label_156:
	mov	rax, rbx
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
	#Procedure 0x403102
	.globl sub_403102
	.type sub_403102, @function
sub_403102:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x403110

	.globl quotearg_n
	.type quotearg_n, @function
quotearg_n:
	mov	rdx, -1
	mov	ecx, OFFSET FLAT:default_quoting_options
	jmp	quotearg_n_options
	.section	.text
	.align	16
	#Procedure 0x40311e
	.globl sub_40311e
	.type sub_40311e, @function
sub_40311e:

	nop	
	.section	.text
	.align	16
	#Procedure 0x403120

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
	js	.label_157
	mov	eax, dword ptr [r13]
	mov	rbp,  qword ptr [word ptr [rip + slotvec]]
	cmp	dword ptr [dword ptr [rip + nslots]],  r12d
	mov	qword ptr [rsp + 0x18], r13
	mov	dword ptr [rsp], eax
	mov	qword ptr [rsp + 0x10], rbx
	mov	qword ptr [rsp + 8], r15
	jg	.label_160
	cmp	r12d, 0x7fffffff
	je	.label_162
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
	jne	.label_158
	movups	xmm0,  xmmword ptr [word ptr [rip + slotvec0]]
	movups	xmmword ptr [r14], xmm0
.label_158:
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
.label_160:
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
	jbe	.label_163
	mov	rax, qword ptr [rsp + 0x18]
	mov	ebp, dword ptr [rsp]
	jmp	.label_159
.label_163:
	lea	rax, [rbp + r13]
	lea	r12, [rbp + r13 + 8]
	inc	r15
	mov	qword ptr [rax], r15
	mov	eax, OFFSET FLAT:slot0
	cmp	r14, rax
	mov	ebp, dword ptr [rsp]
	je	.label_161
	mov	rdi, r14
	call	free
.label_161:
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
.label_159:
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
.label_157:
	call	abort
.label_162:
	call	xalloc_die
	.section	.text
	.align	16
	#Procedure 0x4032dd
	.globl sub_4032dd
	.type sub_4032dd, @function
sub_4032dd:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x4032e0
	.globl c_toupper
	.type c_toupper, @function
c_toupper:

	lea	ecx, [rdi - 0x61]
	lea	eax, [rdi - 0x20]
	cmp	ecx, 0x1a
	cmovae	eax, edi
	ret	
	.section	.text
	.align	16
	#Procedure 0x4032ed
	.globl sub_4032ed
	.type sub_4032ed, @function
sub_4032ed:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x4032f0

	.globl copy_fd
	.type copy_fd, @function
copy_fd:
	push	rbp
	push	r15
	push	r14
	push	rbx
	sub	rsp, 0x2008
	mov	rbx, rsi
	mov	ebp, edi
	test	rbx, rbx
	je	.label_164
	mov	r15d, 0x2000
	lea	r14, [rsp]
	nop	word ptr cs:[rax + rax]
.label_165:
	cmp	rbx, 0x2000
	mov	rdx, rbx
	cmova	rdx, r15
	mov	edi, ebp
	mov	rsi, r14
	call	safe_read
	mov	ecx, 1
	cmp	rax, -1
	je	.label_167
	sub	rbx, rax
	test	rax, rax
	jne	.label_166
	mov	ecx, 2
	test	rbx, rbx
	jne	.label_167
.label_166:
	mov	rdi, r14
	mov	rsi, rax
	call	xwrite_stdout
	test	rbx, rbx
	jne	.label_165
.label_164:
	xor	ecx, ecx
.label_167:
	mov	eax, ecx
	add	rsp, 0x2008
	pop	rbx
	pop	r14
	pop	r15
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x403377
	.globl sub_403377
	.type sub_403377, @function
sub_403377:

	nop	word ptr [rax + rax]
.label_170:
	xor	eax, eax
	jmp	.label_168
	.section	.text
	.align	16
	#Procedure 0x403384
	.globl sub_403384
	.type sub_403384, @function
sub_403384:

	nop	word ptr cs:[rax + rax]
.label_168:
	ret	
	.section	.text
	.align	16
	#Procedure 0x40338f
	.globl c_ispunct
	.type c_ispunct, @function
c_ispunct:

	add	edi, -0x21
	cmp	edi, 0x5d
	ja	.label_170
	mov	al, 1
	jmp	qword ptr [word ptr [+ (rdi * 8) + label_169]]
	.section	.text
	.align	16
	#Procedure 0x4033a0

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
	jne	.label_171
	mov	rax, qword ptr [rbx + 0x28]
	cmp	rax, qword ptr [rbx + 0x20]
	jne	.label_171
	cmp	qword ptr [rbx + 0x48], 0
	je	.label_172
.label_171:
	mov	rdi, rbx
	mov	rsi, rbp
	mov	edx, r14d
	pop	rbx
	pop	r14
	pop	rbp
	jmp	fseeko
.label_172:
	mov	rdi, rbx
	call	fileno
	mov	edi, eax
	mov	rsi, rbp
	mov	edx, r14d
	call	lseek
	mov	rcx, rax
	mov	eax, 0xffffffff
	cmp	rcx, -1
	je	.label_173
	and	byte ptr [rbx], 0xef
	mov	qword ptr [rbx + 0x90], rcx
	xor	eax, eax
.label_173:
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40340e
	.globl sub_40340e
	.type sub_40340e, @function
sub_40340e:

	nop	
.label_175:
	add	edi, -0x30
	cmp	edi, 0xa
	jb	.label_174
	xor	eax, eax
	ret	
	.section	.text
	.align	16
	#Procedure 0x40341b
	.globl sub_40341b
	.type sub_40341b, @function
sub_40341b:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x403425
	.globl c_isalnum
	.type c_isalnum, @function
c_isalnum:

	mov	al, 1
	lea	ecx, [rdi - 0x41]
	cmp	ecx, 0x39
	ja	.label_175
	movabs	rdx, 0x3ffffff03ffffff
	bt	rdx, rcx
	jae	.label_175
.label_174:
	ret	
	.section	.text
	.align	16
	#Procedure 0x403440

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
	je	.label_176
	cmp	r15, -2
	jb	.label_176
	xor	edi, edi
	call	hard_locale
	test	al, al
	jne	.label_176
	movzx	eax, byte ptr [r14]
	mov	dword ptr [rbx], eax
	mov	r15d, 1
.label_176:
	mov	rax, r15
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	ret	
	.section	.text
	.align	16
	#Procedure 0x403496
	.globl sub_403496
	.type sub_403496, @function
sub_403496:

	nop	word ptr cs:[rax + rax]
.label_177:
	call	xalloc_die
	.section	.text
	.align	16
	#Procedure 0x4034a5
	.globl sub_4034a5
	.type sub_4034a5, @function
sub_4034a5:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4034af
	.globl xcalloc
	.type xcalloc, @function
xcalloc:

	push	rax
	movabs	rax, 0x7fffffffffffffff
	xor	edx, edx
	div	rsi
	cmp	rax, rdi
	jb	.label_177
	call	rpl_calloc
	test	rax, rax
	je	.label_177
	pop	rcx
	ret	
	.section	.text
	.align	16
	#Procedure 0x4034d0
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
	#Procedure 0x4034df
	.globl sub_4034df
	.type sub_4034df, @function
sub_4034df:

	nop	
	.section	.text
	.align	16
	#Procedure 0x4034e0

	.globl xdectoumax
	.type xdectoumax, @function
xdectoumax:
	push	rax
	mov	r10, r8
	mov	rax, rcx
	mov	rcx, rdx
	mov	rdx, rsi
	mov	dword ptr [rsp], r9d
	mov	esi, 0xa
	mov	r8, rax
	mov	r9, r10
	call	xnumtoumax
	pop	rcx
	ret	
	.section	.text
	.align	16
	#Procedure 0x403503
	.globl sub_403503
	.type sub_403503, @function
sub_403503:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x403510

	.globl safe_read
	.type safe_read, @function
safe_read:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	push	rax
	mov	rbx, rdx
	mov	r14, rsi
	mov	r15d, edi
	mov	r12d, 0x7ff00000
	nop	word ptr [rax + rax]
.label_179:
	mov	edi, r15d
	mov	rsi, r14
	mov	rdx, rbx
	call	read
	mov	rbp, rax
	test	rbp, rbp
	jns	.label_178
	call	__errno_location
	mov	eax, dword ptr [rax]
	cmp	eax, 4
	je	.label_179
	cmp	eax, 0x16
	sete	cl
	cmp	rbx, 0x7ff00000
	seta	dl
	and	dl, cl
	mov	rcx, rbx
	cmovne	rcx, r12
	test	dl, dl
	cmovne	rbp, r13
	cmp	rbx, 0x7ff00001
	jb	.label_178
	cmp	eax, 0x16
	mov	rbx, rcx
	mov	r13, rbp
	je	.label_179
.label_178:
	mov	rax, rbp
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
	#Procedure 0x403597
	.globl sub_403597
	.type sub_403597, @function
sub_403597:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4035a0

	.globl set_program_name
	.type set_program_name, @function
set_program_name:
	push	r14
	push	rbx
	push	rax
	mov	rbx, rdi
	test	rbx, rbx
	je	.label_180
	mov	esi, 0x2f
	mov	rdi, rbx
	call	strrchr
	test	rax, rax
	lea	r14, [rax + 1]
	cmove	r14, rbx
	mov	rax, r14
	sub	rax, rbx
	cmp	rax, 7
	jl	.label_182
	lea	rdi, [r14 - 7]
	mov	esi, OFFSET FLAT:label_184
	mov	edx, 7
	call	strncmp
	test	eax, eax
	jne	.label_182
	mov	esi, OFFSET FLAT:label_183
	mov	edx, 3
	mov	rdi, r14
	call	strncmp
	test	eax, eax
	jne	.label_185
	add	r14, 3
	mov	qword ptr [word ptr [rip + __progname]],  r14
.label_185:
	mov	rbx, r14
.label_182:
	mov	qword ptr [word ptr [rip + program_name]],  rbx
	mov	qword ptr [word ptr [rip + __progname_full]],  rbx
	add	rsp, 8
	pop	rbx
	pop	r14
	ret	
.label_180:
	mov	rcx,  qword ptr [word ptr [rip + stderr]]
	mov	edi, OFFSET FLAT:label_181
	mov	esi, 0x37
	mov	edx, 1
	call	fwrite
	call	abort
	.section	.text
	.align	16
	#Procedure 0x403641
	.globl sub_403641
	.type sub_403641, @function
sub_403641:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x403650

	.globl full_read
	.type full_read, @function
full_read:
	push	rbp
	push	r15
	push	r14
	push	rbx
	push	rax
	mov	r15, rdx
	mov	rbx, rsi
	mov	ebp, edi
	xor	r14d, r14d
	test	r15, r15
	je	.label_186
	xor	r14d, r14d
	nop	word ptr [rax + rax]
.label_188:
	mov	edi, ebp
	mov	rsi, rbx
	mov	rdx, r15
	call	safe_read
	cmp	rax, -1
	je	.label_186
	test	rax, rax
	je	.label_187
	add	r14, rax
	add	rbx, rax
	sub	r15, rax
	jne	.label_188
	jmp	.label_186
.label_187:
	call	__errno_location
	mov	dword ptr [rax], 0
.label_186:
	mov	rax, r14
	add	rsp, 8
	pop	rbx
	pop	r14
	pop	r15
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x4036ae
	.globl sub_4036ae
	.type sub_4036ae, @function
sub_4036ae:

	nop	
	.section	.text
	.align	16
	#Procedure 0x4036b0
	.globl close_stdout_set_ignore_EPIPE
	.type close_stdout_set_ignore_EPIPE, @function
close_stdout_set_ignore_EPIPE:

	mov	byte ptr [byte ptr [rip + ignore_EPIPE]],  dil
	ret	
	.section	.text
	.align	16
	#Procedure 0x4036b8
	.globl sub_4036b8
	.type sub_4036b8, @function
sub_4036b8:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4036c0

	.globl usage
	.type usage, @function
usage:
	push	rbp
	push	rbx
	push	rax
	mov	ebp, edi
	test	ebp, ebp
	jne	.label_189
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_191
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	mov	rdx,  qword ptr [word ptr [rip + program_name]]
	mov	edi, 1
	xor	eax, eax
	mov	rsi, rcx
	call	__printf_chk
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_197
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	mov	edi, 1
	mov	edx, 0xa
	xor	eax, eax
	mov	rsi, rcx
	call	__printf_chk
	call	emit_stdin_note
	call	emit_mandatory_arg_note
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_195
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	mov	edi, 1
	mov	edx, 0xa
	xor	eax, eax
	mov	rsi, rcx
	call	__printf_chk
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_192
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_194
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_190
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_196
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_193
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	call	emit_ancillary_info
	mov	edi, ebp
	call	exit
.label_189:
	mov	rbx,  qword ptr [word ptr [rip + stderr]]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_198
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
	.align	16
	#Procedure 0x403835
	.globl sub_403835
	.type sub_403835, @function
sub_403835:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x403840
	.globl c_isascii
	.type c_isascii, @function
c_isascii:

	cmp	edi, 0x80
	setb	al
	ret	
	.section	.text
	.align	16
	#Procedure 0x40384a
	.globl sub_40384a
	.type sub_40384a, @function
sub_40384a:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x403850
	.globl c_isgraph
	.type c_isgraph, @function
c_isgraph:

	add	edi, -0x21
	cmp	edi, 0x5e
	setb	al
	ret	
	.section	.text
	.align	16
	#Procedure 0x40385a
	.globl sub_40385a
	.type sub_40385a, @function
sub_40385a:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x403860

	.globl rpl_fclose
	.type rpl_fclose, @function
rpl_fclose:
	push	rbp
	push	rbx
	push	rax
	mov	rbx, rdi
	call	fileno
	test	eax, eax
	js	.label_199
	mov	rdi, rbx
	call	__freading
	test	eax, eax
	je	.label_201
	mov	rdi, rbx
	call	fileno
	xor	esi, esi
	mov	edx, 1
	mov	edi, eax
	call	lseek
	cmp	rax, -1
	je	.label_199
.label_201:
	mov	rdi, rbx
	call	rpl_fflush
	test	eax, eax
	je	.label_199
	call	__errno_location
	mov	ebp, dword ptr [rax]
	mov	rdi, rbx
	call	fclose
	test	ebp, ebp
	je	.label_200
	call	__errno_location
	mov	dword ptr [rax], ebp
	mov	eax, 0xffffffff
.label_200:
	add	rsp, 8
	pop	rbx
	pop	rbp
	ret	
.label_199:
	mov	rdi, rbx
	add	rsp, 8
	pop	rbx
	pop	rbp
	jmp	fclose
	.section	.text
	.align	16
	#Procedure 0x4038d7
	.globl sub_4038d7
	.type sub_4038d7, @function
sub_4038d7:

	nop	word ptr [rax + rax]
.label_204:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_202
.label_206:
	mov	edx, 5
	call	dcgettext
	xor	esi, esi
	mov	rdx, -1
	mov	ecx, OFFSET FLAT:label_203
	xor	r9d, r9d
	mov	rdi, rbx
	mov	r8, rax
	pop	rbx
	jmp	xdectoumax
	.section	.text
	.align	16
	#Procedure 0x40390e

	.globl string_to_integer
	.type string_to_integer, @function
string_to_integer:
	push	rbx
	mov	rbx, rsi
	test	dil, dil
	je	.label_204
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_205
	jmp	.label_206
	.section	.text
	.align	16
	#Procedure 0x403920

	.globl version_etc
	.type version_etc, @function
version_etc:
	sub	rsp, 0xd8
	test	al, al
	je	.label_207
	movaps	xmmword ptr [rsp + 0x50], xmm0
	movaps	xmmword ptr [rsp + 0x60], xmm1
	movaps	xmmword ptr [rsp + 0x70], xmm2
	movaps	xmmword ptr [rsp + 0x80], xmm3
	movaps	xmmword ptr [rsp + 0x90], xmm4
	movaps	xmmword ptr [rsp + 0xa0], xmm5
	movaps	xmmword ptr [rsp + 0xb0], xmm6
	movaps	xmmword ptr [rsp + 0xc0], xmm7
.label_207:
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
	#Procedure 0x4039a3
	.globl sub_4039a3
	.type sub_4039a3, @function
sub_4039a3:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4039b0
	.globl c_isspace
	.type c_isspace, @function
c_isspace:

	add	edi, -9
	cmp	edi, 0x17
	ja	.label_208
	mov	eax, 0x80001f
	mov	ecx, edi
	shr	eax, cl
	and	eax, 1
	ret	
.label_208:
	xor	eax, eax
	ret	
	.section	.text
	.align	16
	#Procedure 0x4039c8
	.globl sub_4039c8
	.type sub_4039c8, @function
sub_4039c8:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4039d0

	.globl elide_tail_bytes_file
	.type elide_tail_bytes_file, @function
elide_tail_bytes_file:
	push	rbp
	push	rbx
	push	rax
	mov	rbx, rdi
	test	r8, r8
	js	.label_209
	test	byte ptr [byte ptr [rip + presume_input_pipe]],  1
	jne	.label_209
	mov	rdi, qword ptr [rcx + 0x30]
	mov	rax, qword ptr [rcx + 0x38]
	movabs	rcx, 0x2000000000000001
	cmp	rax, rcx
	mov	ecx, 0x200
	mov	ebp, 0x200
	cmovb	rbp, rax
	test	rax, rax
	cmovle	rbp, rcx
	cmp	rdi, rbp
	jle	.label_209
	xor	eax, eax
	sub	rdi, r8
	cmovns	rax, rdi
	mov	bpl, 1
	sub	rax, rdx
	jbe	.label_210
	mov	edi, esi
	mov	rsi, rax
	call	copy_fd
	test	eax, eax
	je	.label_210
	mov	edi, eax
	mov	rsi, rbx
	call	diagnose_copy_fd_failure
	xor	ebp, ebp
	jmp	.label_210
.label_209:
	mov	rdi, rbx
	mov	rcx, r8
	call	elide_tail_bytes_pipe
	mov	bpl, al
.label_210:
	mov	eax, ebp
	add	rsp, 8
	pop	rbx
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x403a57
	.globl sub_403a57
	.type sub_403a57, @function
sub_403a57:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x403a60

	.globl locale_charset
	.type locale_charset, @function
locale_charset:
	push	rax
	mov	edi, 0xe
	call	rpl_nl_langinfo
	test	rax, rax
	mov	ecx, OFFSET FLAT:label_91
	cmovne	rcx, rax
	cmp	byte ptr [rcx], 0
	mov	eax, OFFSET FLAT:label_211
	cmovne	rax, rcx
	pop	rcx
	ret	
	.section	.text
	.align	16
	#Procedure 0x403a85
	.globl sub_403a85
	.type sub_403a85, @function
sub_403a85:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x403a90

	.globl version_etc_va
	.type version_etc_va, @function
version_etc_va:
	sub	rsp, 0x58
	xor	r9d, r9d
	nop	word ptr [rax + rax]
.label_213:
	movsxd	r10, dword ptr [r8]
	cmp	r10, 0x28
	ja	.label_212
	mov	r11, r10
	add	r11, qword ptr [r8 + 0x10]
	lea	eax, [r10 + 8]
	mov	dword ptr [r8], eax
	jmp	.label_214
	.section	.text
	.align	16
	#Procedure 0x403ab9
	.globl sub_403ab9
	.type sub_403ab9, @function
sub_403ab9:

	nop	dword ptr [rax]
.label_212:
	mov	r11, qword ptr [r8 + 8]
	lea	rax, [r11 + 8]
	mov	qword ptr [r8 + 8], rax
.label_214:
	mov	rax, qword ptr [r11]
	mov	qword ptr [rsp + r9*8], rax
	test	rax, rax
	je	.label_215
	inc	r9
	cmp	r9, 0xa
	jb	.label_213
.label_215:
	lea	r8, [rsp]
	call	version_etc_arn
	add	rsp, 0x58
	ret	
	.section	.text
	.align	16
	#Procedure 0x403aef
	.globl sub_403aef
	.type sub_403aef, @function
sub_403aef:

	nop	
	.section	.text
	.align	16
	#Procedure 0x403af0
	.globl __gl_setmode_check
	.type __gl_setmode_check, @function
__gl_setmode_check:

	xor	eax, eax
	ret	
	.section	.text
	.align	16
	#Procedure 0x403af3
	.globl sub_403af3
	.type sub_403af3, @function
sub_403af3:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x403b00

	.globl quotearg_n_mem
	.type quotearg_n_mem, @function
quotearg_n_mem:
	mov	ecx, OFFSET FLAT:default_quoting_options
	jmp	quotearg_n_options
	.section	.text
	.align	16
	#Procedure 0x403b0a
	.globl sub_403b0a
	.type sub_403b0a, @function
sub_403b0a:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x403b10
	.globl quotearg
	.type quotearg, @function
quotearg:

	mov	rax, rdi
	xor	edi, edi
	mov	rsi, rax
	jmp	quotearg_n
	.section	.text
	.align	16
	#Procedure 0x403b1d
	.globl sub_403b1d
	.type sub_403b1d, @function
sub_403b1d:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x403b20
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
	.align	16
	#Procedure 0x403b30
	.globl close_stdout_set_file_name
	.type close_stdout_set_file_name, @function
close_stdout_set_file_name:

	mov	qword ptr [word ptr [rip + file_name]],  rdi
	ret	
	.section	.text
	.align	16
	#Procedure 0x403b38
	.globl sub_403b38
	.type sub_403b38, @function
sub_403b38:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x403b40

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
	je	.label_216
	mov	ebx, 0xffffffff
	test	eax, eax
	jne	.label_217
	call	__errno_location
	mov	dword ptr [rax], 0
	jmp	.label_217
.label_216:
	test	eax, eax
	sete	cl
	neg	eax
	sbb	ebx, ebx
	test	r14, r14
	jne	.label_217
	test	cl, cl
	jne	.label_217
	call	__errno_location
	xor	ecx, ecx
	cmp	dword ptr [rax], 9
	mov	ebx, 0xffffffff
	cmove	ebx, ecx
.label_217:
	mov	eax, ebx
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x403ba6
	.globl sub_403ba6
	.type sub_403ba6, @function
sub_403ba6:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x403bb0

	.globl xcharalloc
	.type xcharalloc, @function
xcharalloc:
	jmp	xmalloc
	.section	.text
	.align	16
	#Procedure 0x403bb5
	.globl sub_403bb5
	.type sub_403bb5, @function
sub_403bb5:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x403bc0

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
	.align	16
	#Procedure 0x403bf7
	.globl sub_403bf7
	.type sub_403bf7, @function
sub_403bf7:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x403c00

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
	jne	.label_225
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
	je	.label_224
	cmp	byte ptr [rbx], 0x60
	mov	ecx, OFFSET FLAT:label_226
	mov	eax, OFFSET FLAT:label_227
	jmp	.label_222
.label_223:
	cmp	r14d, 9
	mov	ecx, OFFSET FLAT:label_218
	mov	eax, OFFSET FLAT:label_219
.label_222:
	cmove	rax, rcx
.label_225:
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x403c7f
	.globl sub_403c7f
	.type sub_403c7f, @function
sub_403c7f:

	nop	dword ptr [rax]
.label_224:
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
	je	.label_223
	cmp	byte ptr [rbx], 0x60
	mov	ecx, OFFSET FLAT:label_220
	mov	eax, OFFSET FLAT:label_221
	jmp	.label_222
	.section	.text
	.align	16
	#Procedure 0x403cc0

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
	.align	16
	#Procedure 0x403ced
	.globl sub_403ced
	.type sub_403ced, @function
sub_403ced:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x403cf0
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
	.align	16
	#Procedure 0x403d03
	.globl sub_403d03
	.type sub_403d03, @function
sub_403d03:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x403d10

	.globl main
	.type main, @function
main:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x38
	mov	r12, rsi
	mov	ebx, edi
	mov	rdi, qword ptr [r12]
	call	set_program_name
	mov	edi, 6
	mov	esi, OFFSET FLAT:label_91
	call	setlocale
	mov	edi, OFFSET FLAT:label_249
	mov	esi, OFFSET FLAT:label_261
	call	bindtextdomain
	mov	edi, OFFSET FLAT:label_249
	call	textdomain
	mov	edi, OFFSET FLAT:close_stdout
	call	atexit
	mov	byte ptr [byte ptr [rip + have_read_stdin]],  0
	mov	byte ptr [byte ptr [rip + print_headers]],  0
	mov	byte ptr [byte ptr [rip + line_end]],  1
	mov	r15b, 1
	xor	r14d, r14d
	mov	r13d, 0xa
	mov	qword ptr [rsp + 0x18], rbx
	cmp	ebx, 2
	jl	.label_231
	mov	rax, qword ptr [r12 + 8]
	mov	r13d, 0xa
	cmp	byte ptr [rax], 0x2d
	jne	.label_231
	movsx	ecx, byte ptr [rax + 1]
	add	ecx, -0x30
	mov	r13d, 0xa
	cmp	ecx, 9
	ja	.label_231
	lea	rcx, [r12 + 8]
	mov	qword ptr [rsp + 0x10], rcx
	lea	rsi, [rax + 1]
	add	rax, 2
	nop	dword ptr [rax]
.label_250:
	movsx	ecx, byte ptr [rax]
	add	ecx, -0x30
	inc	rax
	cmp	ecx, 0xa
	jb	.label_250
	mov	dl, byte ptr [rax - 1]
	test	dl, dl
	je	.label_257
	xor	ecx, ecx
	mov	r15b, 1
	mov	rbx, rax
	xor	r14d, r14d
	nop	word ptr cs:[rax + rax]
.label_247:
	mov	r8d, r15d
	mov	edi, ecx
	movsx	edx, dl
	add	edx, -0x62
	cmp	edx, 0x18
	ja	.label_228
	xor	r15d, r15d
	xor	ecx, ecx
	jmp	qword ptr [word ptr [+ (rdx * 8) + label_232]]
.label_524:
	mov	cl, byte ptr [rbx - 1]
	xor	r15d, r15d
	jmp	.label_239
.label_525:
	mov	r15b, 1
	jmp	.label_240
.label_526:
	mov	r14d, 2
	jmp	.label_241
.label_527:
	mov	r14d, 1
	jmp	.label_241
.label_528:
	mov	byte ptr [byte ptr [rip + line_end]],  0
.label_241:
	mov	r15b, r8b
.label_240:
	mov	cl, dil
.label_239:
	movzx	edx, byte ptr [rbx]
	inc	rbx
	test	dl, dl
	jne	.label_247
	mov	byte ptr [rax - 1], cl
	test	cl, cl
	je	.label_258
	mov	byte ptr [rax], 0
	jmp	.label_258
.label_231:
	mov	qword ptr [rsp + 0x10], r12
.label_244:
	xor	r12d, r12d
	jmp	.label_262
	.section	.text
	.align	16
	#Procedure 0x403e71
	.globl sub_403e71
	.type sub_403e71, @function
sub_403e71:

	nop	word ptr cs:[rax + rax]
.label_568:
	mov	r14d, 1
.label_262:
	mov	ebp, r14d
	jmp	.label_229
.label_569:
	mov	byte ptr [byte ptr [rip + line_end]],  0
	nop	word ptr cs:[rax + rax]
.label_229:
	mov	edx, OFFSET FLAT:label_238
	mov	ecx, OFFSET FLAT:long_options
	xor	r8d, r8d
	mov	rdi, qword ptr [rsp + 0x18]
	mov	rsi, qword ptr [rsp + 0x10]
	call	getopt_long
	mov	ebx, eax
	cmp	ebx, 0x62
	jle	.label_245
	lea	eax, [rbx - 0x63]
	cmp	eax, 0x1d
	ja	.label_248
	mov	r14d, 2
	jmp	qword ptr [word ptr [+ (rax * 8) + label_252]]
.label_566:
	mov	rax,  qword ptr [word ptr [rip + optarg]]
	cmp	byte ptr [rax], 0x2d
	sete	r12b
	jne	.label_246
	inc	rax
	mov	qword ptr [word ptr [rip + optarg]],  rax
.label_246:
	mov	rsi,  qword ptr [word ptr [rip + optarg]]
	xor	r15d, r15d
	xor	edi, edi
	call	string_to_integer
	mov	r13, rax
	jmp	.label_229
.label_567:
	mov	rax,  qword ptr [word ptr [rip + optarg]]
	cmp	byte ptr [rax], 0x2d
	sete	r12b
	jne	.label_260
	inc	rax
	mov	qword ptr [word ptr [rip + optarg]],  rax
.label_260:
	mov	rsi,  qword ptr [word ptr [rip + optarg]]
	mov	edi, 1
	call	string_to_integer
	mov	r13, rax
	mov	r15b, 1
	jmp	.label_229
.label_570:
	mov	byte ptr [byte ptr [rip + presume_input_pipe]],  1
	jmp	.label_229
.label_245:
	cmp	ebx, -1
	jne	.label_251
	cmp	ebp, 1
	je	.label_256
	test	ebp, ebp
	jne	.label_259
	mov	rax, qword ptr [rsp + 0x18]
	lea	eax, [rax - 1]
	cmp	dword ptr [dword ptr [rip + optind]],  eax
	jge	.label_259
.label_256:
	mov	byte ptr [byte ptr [rip + print_headers]],  1
.label_259:
	and	r15b, 1
	jne	.label_230
	test	r13, r13
	jns	.label_230
	test	r12b, r12b
	jne	.label_243
.label_230:
	movsxd	rax,  dword ptr [dword ptr [rip + optind]]
	mov	rcx, qword ptr [rsp + 0x18]
	cmp	eax, ecx
	mov	rcx, qword ptr [rsp + 0x10]
	lea	rax, [rcx + rax*8]
	mov	ebp, OFFSET FLAT:main.default_file_list
	cmovl	rbp, rax
	mov	edi, 1
	xor	esi, esi
	call	xset_binary_mode
	mov	rdi, qword ptr [rbp]
	mov	bl, 1
	test	rdi, rdi
	je	.label_242
	add	rbp, 8
	mov	bl, 1
	nop	dword ptr [rax]
.label_264:
	xor	ecx, ecx
	test	r12b, r12b
	setne	cl
	xor	edx, edx
	test	r15b, r15b
	setne	dl
	mov	rsi, r13
	call	head_file
	and	bl, al
	mov	rdi, qword ptr [rbp]
	add	rbp, 8
	test	rdi, rdi
	jne	.label_264
.label_242:
	cmp	byte ptr [byte ptr [rip + have_read_stdin]],  1
	jne	.label_265
	xor	edi, edi
	call	close
	test	eax, eax
	js	.label_263
.label_265:
	movzx	eax, bl
	xor	eax, 1
	add	rsp, 0x38
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_257:
	mov	byte ptr [rax - 1], 0
	xor	r14d, r14d
	mov	r15b, 1
.label_258:
	mov	eax, r15d
	and	al, 1
	movzx	edi, al
	call	string_to_integer
	mov	r13, rax
	mov	rax, qword ptr [r12]
	mov	qword ptr [r12 + 8], rax
	mov	rax, qword ptr [rsp + 0x18]
	dec	eax
	mov	qword ptr [rsp + 0x18], rax
	jmp	.label_244
.label_251:
	cmp	ebx, 0xffffff7d
	je	.label_254
	cmp	ebx, 0xffffff7e
	jne	.label_248
	xor	edi, edi
	call	usage
.label_228:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_233
	mov	edx, 5
	call	dcgettext
	mov	rdx, rax
	movsx	ecx, byte ptr [rbx - 1]
	xor	edi, edi
	xor	esi, esi
	xor	eax, eax
	call	error
	mov	edi, 1
	call	usage
.label_254:
	mov	rdi,  qword ptr [word ptr [rip + stdout]]
	mov	rcx,  qword ptr [word ptr [rip + Version]]
	mov	qword ptr [rsp], 0
	mov	esi, OFFSET FLAT:label_234
	mov	edx, OFFSET FLAT:label_235
	mov	r8d, OFFSET FLAT:label_236
	mov	r9d, OFFSET FLAT:label_237
	xor	eax, eax
	call	version_etc
	xor	edi, edi
	call	exit
.label_248:
	lea	eax, [rbx - 0x30]
	cmp	eax, 9
	ja	.label_253
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_233
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	xor	edi, edi
	xor	esi, esi
	xor	eax, eax
	mov	rdx, rcx
	mov	ecx, ebx
	call	error
.label_253:
	mov	edi, 1
	call	usage
.label_243:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_202
	mov	edx, 5
	call	dcgettext
	mov	r14, rax
	lea	rsi, [rsp + 0x20]
	mov	rdi, r13
	call	umaxtostr
	mov	rdi, rax
	call	quote
	mov	rbx, rax
	mov	edi, 1
	mov	esi, 0x4b
	mov	edx, OFFSET FLAT:label_129
	xor	eax, eax
	mov	rcx, r14
	mov	r8, rbx
	call	error
.label_263:
	call	__errno_location
	mov	esi, dword ptr [rax]
	mov	edi, 1
	mov	edx, OFFSET FLAT:label_255
	xor	eax, eax
	call	error
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x404170

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
	.align	16
	#Procedure 0x40419d
	.globl sub_40419d
	.type sub_40419d, @function
sub_40419d:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x4041a0

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
	je	.label_278
	mov	edx, OFFSET FLAT:label_269
	xor	eax, eax
	mov	rdi, r14
	mov	r8, rbx
	call	__fprintf_chk
	jmp	.label_275
.label_278:
	mov	edx, OFFSET FLAT:label_276
	xor	eax, eax
	mov	rdi, r14
	mov	rcx, rbx
	mov	r8, r9
	call	__fprintf_chk
.label_275:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_280
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
	mov	esi, OFFSET FLAT:label_277
	mov	edx, 5
	call	dcgettext
	mov	rdi, rax
	mov	rsi, r14
	call	fputs_unlocked
	cmp	r12, 9
	ja	.label_281
	jmp	qword ptr [word ptr [+ (r12 * 8) + label_282]]
.label_555:
	add	rsp, 8
	jmp	.label_268
.label_281:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_272
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
	jmp	.label_268
.label_556:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_267
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
.label_557:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_273
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
.label_558:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_270
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
.label_559:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_284
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
	jmp	.label_268
.label_560:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_283
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
	jmp	.label_268
.label_561:
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
	jmp	.label_268
.label_562:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_271
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
	jmp	.label_268
.label_564:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_274
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
	jmp	.label_268
.label_563:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_279
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
.label_268:
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	ret	
	.section	.text
	.align	16
	#Procedure 0x4044f8
	.globl sub_4044f8
	.type sub_4044f8, @function
sub_4044f8:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404500

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
.label_379:
	mov	r11, rbp
	xor	r14d, r14d
	mov	ecx, r15d
	cmp	r15d, 0xa
	ja	.label_381
	mov	edi, 7
	mov	r13b, 1
	xor	esi, esi
	mov	r8, qword ptr [rsp + 0x30]
	jmp	qword ptr [word ptr [+ (rcx * 8) + label_385]]
.label_591:
	mov	r14d, r10d
	mov	edi, OFFSET FLAT:label_389
	mov	esi, r15d
	mov	rbx, r11
	mov	ebp, r9d
	call	gettext_quote
	mov	qword ptr [rsp + 0x78], rax
	mov	edi, OFFSET FLAT:label_219
	mov	esi, r15d
	call	gettext_quote
	mov	r9d, ebp
	mov	r10d, r14d
	mov	r11, rbx
	mov	qword ptr [rsp + 0x70], rax
.label_592:
	mov	dword ptr [rsp + 0x48], r9d
	mov	byte ptr [rsp + 0x17], r10b
	test	r12b, 1
	mov	r14d, 0
	mov	rcx, qword ptr [rsp + 0x78]
	jne	.label_289
	mov	al, byte ptr [rcx]
	test	al, al
	mov	r14d, 0
	je	.label_289
	xor	r14d, r14d
.label_306:
	cmp	r14, r11
	jae	.label_303
	mov	rdx, qword ptr [rsp + 8]
	mov	byte ptr [rdx + r14], al
.label_303:
	movzx	eax, byte ptr [rcx + r14 + 1]
	inc	r14
	test	al, al
	jne	.label_306
.label_289:
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
	jmp	.label_312
.label_584:
	xor	edi, edi
	xor	r14d, r14d
	mov	r13d, eax
	xor	esi, esi
	jmp	.label_312
.label_587:
	mov	al, 1
.label_585:
	mov	r12b, 1
.label_588:
	test	r12b, 1
	mov	cl, 1
	je	.label_326
	mov	ecx, eax
.label_326:
	mov	al, cl
.label_586:
	test	r12b, 1
	jne	.label_330
	test	r11, r11
	je	.label_287
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx], 0x27
.label_287:
	mov	r14d, 1
	jmp	.label_336
.label_330:
	xor	r14d, r14d
.label_336:
	mov	ecx, OFFSET FLAT:label_219
	mov	qword ptr [rsp + 0x40], rcx
	mov	ecx, 1
	mov	qword ptr [rsp + 0x38], rcx
	mov	r13d, eax
	mov	sil, r12b
	mov	edi, 2
	jmp	.label_312
.label_589:
	test	r12b, 1
	jne	.label_344
	test	r11, r11
	je	.label_315
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax], 0x22
.label_315:
	mov	r14d, 1
	jmp	.label_349
.label_590:
	mov	r13b, 1
	mov	edi, 5
	xor	r14d, r14d
	mov	eax, OFFSET FLAT:label_218
	mov	qword ptr [rsp + 0x40], rax
	mov	eax, 1
	mov	qword ptr [rsp + 0x38], rax
	mov	sil, 1
	jmp	.label_312
.label_344:
	xor	r14d, r14d
.label_349:
	mov	eax, OFFSET FLAT:label_218
	mov	qword ptr [rsp + 0x40], rax
	mov	eax, 1
	mov	qword ptr [rsp + 0x38], rax
	mov	r13b, 1
	mov	sil, r12b
	mov	edi, 5
	nop	word ptr cs:[rax + rax]
.label_312:
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
	jmp	.label_393
	.section	.text
	.align	16
	#Procedure 0x4047dc
	.globl sub_4047dc
	.type sub_4047dc, @function
sub_4047dc:

	nop	dword ptr [rax]
.label_328:
	inc	rsi
.label_393:
	cmp	rbp, -1
	je	.label_394
	cmp	rsi, rbp
	jne	.label_370
	jmp	.label_285
	.section	.text
	.align	16
	#Procedure 0x4047f3
	.globl sub_4047f3
	.type sub_4047f3, @function
sub_4047f3:

	nop	word ptr cs:[rax + rax]
.label_394:
	cmp	byte ptr [rdi + rsi], 0
	je	.label_285
.label_370:
	cmp	byte ptr [rsp + 0x2f], 0
	je	.label_292
	mov	rax, qword ptr [rsp + 0x38]
	lea	rbx, [rsi + rax]
	cmp	rax, 2
	jb	.label_295
	cmp	rbp, -1
	jne	.label_295
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
.label_295:
	cmp	rbx, rbp
	jbe	.label_311
.label_292:
	xor	r8d, r8d
.label_337:
	movzx	r15d, byte ptr [rdi + rsi]
	cmp	r15, 0x7e
	ja	.label_314
	xor	edx, edx
	mov	r13b, 1
	mov	cl, 0x6e
	mov	bl, 0x61
	xor	eax, eax
	jmp	qword ptr [word ptr [+ (r15 * 8) + label_318]]
.label_504:
	test	rsi, rsi
	jne	.label_309
	jmp	.label_322
	.section	.text
	.align	16
	#Procedure 0x40488e
	.globl sub_40488e
	.type sub_40488e, @function
sub_40488e:

	nop	
.label_311:
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
	jne	.label_334
	cmp	byte ptr [rsp + 7], 0
	mov	rdi, qword ptr [rsp + 0x30]
	mov	r11, rbx
	mov	r10d, r15d
	mov	rax, qword ptr [rsp + 0x68]
	mov	r9d, ebp
	mov	rsi, r12
	mov	r12, rax
	mov	rbp, qword ptr [rsp + 0x20]
	je	.label_337
	jmp	.label_313
.label_334:
	mov	rdi, qword ptr [rsp + 0x30]
	mov	r11, rbx
	mov	r10d, r15d
	mov	rax, qword ptr [rsp + 0x68]
	mov	r9d, ebp
	mov	rsi, r12
	mov	r12, rax
	mov	rbp, qword ptr [rsp + 0x20]
	jmp	.label_337
.label_508:
	xor	eax, eax
	cmp	rbp, -1
	je	.label_353
	test	rsi, rsi
	jne	.label_354
	cmp	rbp, 1
	je	.label_322
	xor	r13d, r13d
	jmp	.label_302
.label_497:
	cmp	byte ptr [rsp + 0x1e], 0
	je	.label_359
	cmp	byte ptr [rsp + 7], 0
	jne	.label_304
	cmp	r12d, 2
	jne	.label_362
	mov	eax, r9d
	and	al, 1
	jne	.label_362
	cmp	r14, r11
	jae	.label_293
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], 0x27
.label_293:
	lea	rax, [r14 + 1]
	cmp	rax, r11
	jae	.label_366
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + rax], 0x24
.label_366:
	lea	rax, [r14 + 2]
	cmp	rax, r11
	jae	.label_371
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + rax], 0x27
.label_371:
	add	r14, 3
	mov	r9b, 1
.label_362:
	mov	rcx, r14
	cmp	rcx, r11
	jae	.label_378
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + rcx], 0x5c
.label_378:
	lea	r14, [rcx + 1]
	mov	al, 1
	mov	r15b, 0x30
	cmp	r12d, 2
	je	.label_380
	lea	rdx, [rsi + 1]
	cmp	rdx, rbp
	jae	.label_380
	mov	dl, byte ptr [rdi + rdx]
	add	dl, 0xd0
	cmp	dl, 9
	ja	.label_380
	cmp	r14, r11
	jae	.label_390
	mov	rdx, qword ptr [rsp + 8]
	mov	byte ptr [rdx + r14], 0x30
.label_390:
	lea	rdx, [rcx + 2]
	cmp	rdx, r11
	jae	.label_351
	mov	rbx, qword ptr [rsp + 8]
	mov	byte ptr [rbx + rdx], 0x30
.label_351:
	add	rcx, 3
	xor	r13d, r13d
	mov	r14, rcx
	jmp	.label_302
.label_498:
	mov	bl, 0x62
	jmp	.label_286
.label_499:
	mov	cl, 0x74
	jmp	.label_291
.label_500:
	mov	bl, 0x76
	jmp	.label_286
.label_501:
	mov	bl, 0x66
	jmp	.label_286
.label_502:
	mov	cl, 0x72
	jmp	.label_291
.label_505:
	mov	r15b, 0x27
	mov	al, 1
	mov	qword ptr [rsp + 0xa0], rax
	cmp	r12d, 2
	jne	.label_300
	cmp	byte ptr [rsp + 7], 0
	jne	.label_304
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
	jae	.label_308
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], 0x27
.label_308:
	lea	rax, [r14 + 1]
	cmp	rax, r11
	jae	.label_320
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + rax], 0x5c
.label_320:
	lea	rax, [r14 + 2]
	cmp	rax, r11
	jae	.label_323
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + rax], 0x27
.label_323:
	add	r14, 3
	xor	r9d, r9d
.label_300:
	xor	eax, eax
	mov	r13b, 1
	jmp	.label_302
.label_506:
	mov	r15b, 0x3f
	cmp	r12d, 5
	je	.label_333
	cmp	r12d, 2
	jne	.label_309
	cmp	byte ptr [rsp + 7], 0
	je	.label_309
	jmp	.label_304
.label_507:
	cmp	r12d, 2
	jne	.label_341
	cmp	byte ptr [rsp + 7], 0
	jne	.label_304
	mov	r15b, 0x5c
	xor	eax, eax
	xor	r13d, r13d
	jmp	.label_288
.label_314:
	mov	dword ptr [rsp + 0x4c], r8d
	mov	dword ptr [rsp + 0x48], r9d
	mov	byte ptr [rsp + 0x17], r10b
	mov	qword ptr [rsp + 0x98], r11
	cmp	qword ptr [rsp + 0xb0], 1
	jne	.label_387
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
.label_299:
	and	r13b, 1
	mov	r8d, r13d
	or	r8b, byte ptr [rsp + 0x2b]
	mov	qword ptr [rsp + 0x58], r12
	cmp	r12, 1
	mov	r11, qword ptr [rsp + 0x98]
	mov	r10b, byte ptr [rsp + 0x17]
	mov	r12, qword ptr [rsp + 0x68]
	mov	r9d, dword ptr [rsp + 0x48]
	ja	.label_372
	test	r8b, r8b
	je	.label_372
	xor	eax, eax
	mov	rbp, qword ptr [rsp + 0x20]
	mov	r8d, dword ptr [rsp + 0x4c]
	jmp	.label_302
.label_353:
	test	rsi, rsi
	jne	.label_367
	mov	cl, byte ptr [rdi + 1]
	test	cl, cl
	jne	.label_367
.label_322:
	mov	dl, 1
.label_503:
	cmp	byte ptr [rsp + 0x1f], 0
	je	.label_304
	xor	eax, eax
	mov	r13b, dl
	nop	word ptr [rax + rax]
.label_302:
	cmp	byte ptr [rsp + 0x2e], 0
	je	.label_386
	cmp	qword ptr [rsp + 0xf0], 0
	jne	.label_383
	jmp	.label_363
	.section	.text
	.align	16
	#Procedure 0x404bd4
	.globl sub_404bd4
	.type sub_404bd4, @function
sub_404bd4:

	nop	word ptr cs:[rax + rax]
.label_386:
	cmp	byte ptr [rsp + 0x2d], 0
	je	.label_363
.label_383:
	mov	ebx, r8d
	mov	r8, rsi
	mov	ecx, r15d
	shr	cl, 5
	movzx	edx, cl
	mov	esi, 1
	mov	ecx, r15d
	shl	esi, cl
	test	bl, bl
	jne	.label_395
	mov	rcx, qword ptr [rsp + 0xf0]
	and	esi, dword ptr [rcx + rdx*4]
	mov	ebx, r15d
	mov	rsi, r8
	je	.label_288
	jmp	.label_298
	.section	.text
	.align	16
	#Procedure 0x404c1d
	.globl sub_404c1d
	.type sub_404c1d, @function
sub_404c1d:

	nop	dword ptr [rax]
.label_363:
	test	r8b, r8b
	mov	ebx, r15d
	jne	.label_298
	jmp	.label_288
.label_395:
	mov	ebx, r15d
	mov	rsi, r8
	jmp	.label_298
.label_359:
	cmp	dword ptr [rsp + 0x90], 0
	jne	.label_328
	xor	r15d, r15d
	jmp	.label_309
.label_341:
	mov	cl, 0x5c
	cmp	byte ptr [rsp + 0x2a], 0
	je	.label_291
	xor	eax, eax
	mov	r15b, 0x5c
	xor	r13d, r13d
	jmp	.label_288
.label_291:
	cmp	byte ptr [rsp + 0x1f], 0
	mov	ebx, ecx
	je	.label_304
.label_286:
	xor	eax, eax
	cmp	byte ptr [rsp + 0x1e], 0
	mov	r13d, 0
	je	.label_302
	nop	word ptr cs:[rax + rax]
.label_298:
	cmp	byte ptr [rsp + 7], 0
	jne	.label_304
	cmp	r12d, 2
	jne	.label_327
	mov	eax, r9d
	and	al, 1
	jne	.label_327
	cmp	r14, r11
	jae	.label_331
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], 0x27
.label_331:
	lea	rax, [r14 + 1]
	cmp	rax, r11
	jae	.label_392
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + rax], 0x24
.label_392:
	lea	rax, [r14 + 2]
	cmp	rax, r11
	jae	.label_339
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + rax], 0x27
.label_339:
	add	r14, 3
	mov	r9b, 1
.label_327:
	cmp	r14, r11
	jae	.label_343
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], 0x5c
.label_343:
	inc	r14
	jmp	.label_346
.label_387:
	mov	qword ptr [rsp + 0x80], 0
	cmp	rbp, -1
	jne	.label_350
	mov	rbx, rsi
	call	strlen
	mov	rsi, rbx
	mov	rdi, qword ptr [rsp + 0x30]
	mov	rbp, rax
.label_350:
	lea	rax, [rdi + rsi]
	mov	qword ptr [rsp + 0x58], rax
	mov	r13b, 1
	xor	r12d, r12d
	lea	rax, [rsp + 0x80]
	mov	rcx, rax
	mov	qword ptr [rsp + 0x20], rbp
	mov	qword ptr [rsp + 0x50], rsi
.label_297:
	lea	rbx, [r12 + rsi]
	lea	rsi, [rdi + rbx]
	mov	rdx, rbp
	sub	rdx, rbx
	lea	rdi, [rsp + 0x94]
	call	rpl_mbrtowc
	mov	rbp, rax
	test	rbp, rbp
	je	.label_365
	cmp	rbp, -1
	movabs	rsi, 0x20000002b
	je	.label_369
	cmp	rbp, -2
	je	.label_374
	cmp	rbp, 1
	seta	al
	and	al, byte ptr [rsp + 0x2c]
	cmp	al, 1
	mov	rdi, qword ptr [rsp + 0x30]
	mov	r11, qword ptr [rsp + 0x98]
	jne	.label_376
	mov	rax, qword ptr [rsp + 0x58]
	lea	rax, [rax + r12]
	mov	ecx, 1
	nop	word ptr cs:[rax + rax]
.label_352:
	movsx	edx, byte ptr [rax + rcx]
	add	edx, -0x5b
	cmp	edx, 0x21
	ja	.label_347
	bt	rsi, rdx
	jb	.label_313
.label_347:
	inc	rcx
	cmp	rcx, rbp
	jb	.label_352
.label_376:
	mov	edi, dword ptr [rsp + 0x94]
	call	iswprint
	test	eax, eax
	jne	.label_397
	xor	r13d, r13d
.label_397:
	lea	rdi, [rsp + 0x80]
	add	r12, rbp
	mov	rbx, rdi
	call	mbsinit
	mov	rcx, rbx
	test	eax, eax
	mov	rdi, qword ptr [rsp + 0x30]
	mov	rbp, qword ptr [rsp + 0x20]
	mov	rsi, qword ptr [rsp + 0x50]
	je	.label_297
	jmp	.label_299
.label_380:
	xor	r13d, r13d
	jmp	.label_302
.label_367:
	mov	rbp, -1
	xor	r13d, r13d
	jmp	.label_302
.label_333:
	cmp	dword ptr [rsp + 0x8c], 0
	je	.label_309
	lea	rcx, [rsi + 2]
	cmp	rcx, rbp
	jae	.label_309
	cmp	byte ptr [rdi + rsi + 1], 0x3f
	jne	.label_309
	movsx	edx, byte ptr [rdi + rcx]
	xor	eax, eax
	cmp	edx, 0x3e
	ja	.label_307
	mov	rbx, rsi
	movabs	rsi, 0x7000a38200000000
	bt	rsi, rdx
	jae	.label_373
	cmp	byte ptr [rsp + 7], 0
	jne	.label_304
	mov	r15b, byte ptr [rdi + rcx]
	cmp	r14, r11
	jae	.label_324
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], 0x3f
.label_324:
	lea	rax, [r14 + 1]
	cmp	rax, r11
	jae	.label_391
	mov	rdx, qword ptr [rsp + 8]
	mov	byte ptr [rdx + rax], 0x22
.label_391:
	lea	rax, [r14 + 2]
	cmp	rax, r11
	jae	.label_335
	mov	rdx, qword ptr [rsp + 8]
	mov	byte ptr [rdx + rax], 0x22
.label_335:
	lea	rax, [r14 + 3]
	cmp	rax, r11
	jae	.label_338
	mov	rdx, qword ptr [rsp + 8]
	mov	byte ptr [rdx + rax], 0x3f
.label_338:
	add	r14, 4
	xor	eax, eax
	mov	rsi, rcx
	xor	r13d, r13d
	jmp	.label_302
.label_309:
	xor	eax, eax
.label_354:
	xor	r13d, r13d
	jmp	.label_302
.label_372:
	add	qword ptr [rsp + 0x58], rsi
	xor	eax, eax
	mov	rbp, qword ptr [rsp + 0x20]
	jmp	.label_348
	.section	.text
	.align	16
	#Procedure 0x404f03
	.globl sub_404f03
	.type sub_404f03, @function
sub_404f03:

	nop	word ptr cs:[rax + rax]
.label_305:
	inc	r14
	mov	r15b, byte ptr [rdi + rsi + 1]
	mov	rsi, rdx
.label_348:
	test	r8b, r8b
	je	.label_355
	mov	ecx, dword ptr [rsp + 0x4c]
	test	cl, 1
	je	.label_356
	cmp	r14, r11
	jae	.label_357
	mov	rdx, qword ptr [rsp + 8]
	mov	byte ptr [rdx + r14], 0x5c
.label_357:
	inc	r14
	mov	dword ptr [rsp + 0x4c], 0
	jmp	.label_356
	.section	.text
	.align	16
	#Procedure 0x404f4c
	.globl sub_404f4c
	.type sub_404f4c, @function
sub_404f4c:

	nop	dword ptr [rax]
.label_355:
	cmp	byte ptr [rsp + 7], 0
	jne	.label_313
	cmp	r12d, 2
	jne	.label_310
	mov	eax, r9d
	and	al, 1
	jne	.label_310
	cmp	r14, r11
	jae	.label_368
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], 0x27
.label_368:
	lea	rax, [r14 + 1]
	cmp	rax, r11
	jae	.label_319
	mov	rdx, qword ptr [rsp + 8]
	mov	byte ptr [rdx + rax], 0x24
.label_319:
	lea	rax, [r14 + 2]
	cmp	rax, r11
	jae	.label_377
	mov	rdx, qword ptr [rsp + 8]
	mov	byte ptr [rdx + rax], 0x27
.label_377:
	add	r14, 3
	mov	r9b, 1
.label_310:
	cmp	r14, r11
	jae	.label_388
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], 0x5c
.label_388:
	lea	rax, [r14 + 1]
	cmp	rax, r11
	jae	.label_301
	mov	edx, r15d
	shr	dl, 6
	or	dl, 0x30
	mov	rbx, qword ptr [rsp + 8]
	mov	byte ptr [rbx + rax], dl
.label_301:
	lea	rax, [r14 + 2]
	cmp	rax, r11
	jae	.label_321
	mov	edx, r15d
	shr	dl, 3
	and	dl, 7
	or	dl, 0x30
	mov	rbx, qword ptr [rsp + 8]
	mov	byte ptr [rbx + rax], dl
.label_321:
	add	r14, 3
	and	r15b, 7
	or	r15b, 0x30
	mov	al, 1
.label_356:
	lea	rdx, [rsi + 1]
	cmp	qword ptr [rsp + 0x58], rdx
	jbe	.label_288
	test	r9b, 1
	je	.label_290
	mov	ebx, eax
	and	bl, 1
	jne	.label_290
	mov	rbx, rsi
	cmp	r14, r11
	jae	.label_294
	mov	rsi, qword ptr [rsp + 8]
	mov	byte ptr [rsi + r14], 0x27
.label_294:
	lea	rsi, [r14 + 1]
	cmp	rsi, r11
	jae	.label_364
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + rsi], 0x27
.label_364:
	add	r14, 2
	xor	r9d, r9d
	mov	rsi, rbx
.label_290:
	cmp	r14, r11
	jae	.label_305
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + r14], r15b
	jmp	.label_305
	.section	.text
	.align	16
	#Procedure 0x405053
	.globl sub_405053
	.type sub_405053, @function
sub_405053:

	nop	word ptr cs:[rax + rax]
.label_288:
	test	r9b, 1
	je	.label_316
	and	al, 1
	jne	.label_316
	cmp	r14, r11
	jae	.label_317
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], 0x27
.label_317:
	lea	rax, [r14 + 1]
	cmp	rax, r11
	jae	.label_342
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + rax], 0x27
.label_342:
	add	r14, 2
	xor	r9d, r9d
.label_316:
	mov	ebx, r15d
.label_346:
	cmp	r14, r11
	jae	.label_325
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], bl
.label_325:
	inc	r14
	shl	r13b, 7
	sar	r13b, 7
	and	r13b, r10b
	mov	r10d, r13d
	jmp	.label_328
.label_369:
	xor	r13d, r13d
.label_365:
	mov	rdi, qword ptr [rsp + 0x30]
	mov	rsi, qword ptr [rsp + 0x50]
	jmp	.label_299
.label_374:
	mov	rbp, qword ptr [rsp + 0x20]
	cmp	rbx, rbp
	mov	rdi, qword ptr [rsp + 0x30]
	jae	.label_340
	mov	rsi, qword ptr [rsp + 0x50]
.label_296:
	mov	rax, qword ptr [rsp + 0x58]
	cmp	byte ptr [rax + r12], 0
	je	.label_360
	lea	rax, [rsi + r12 + 1]
	inc	r12
	cmp	rax, rbp
	jb	.label_296
	xor	r13d, r13d
	jmp	.label_299
.label_340:
	xor	r13d, r13d
	mov	rsi, qword ptr [rsp + 0x50]
	jmp	.label_299
.label_360:
	xor	r13d, r13d
	jmp	.label_299
.label_307:
	xor	r13d, r13d
	jmp	.label_302
.label_373:
	xor	r13d, r13d
	mov	rsi, rbx
	jmp	.label_302
	.section	.text
	.align	16
	#Procedure 0x405128
	.globl sub_405128
	.type sub_405128, @function
sub_405128:

	nop	dword ptr [rax + rax]
.label_285:
	test	r14, r14
	setne	al
	cmp	r12d, 2
	setne	dl
	mov	rcx, qword ptr [rsp + 0xa8]
	and	cl, 1
	mov	qword ptr [rsp + 0x20], rbp
	je	.label_358
	or	dl, al
	je	.label_313
.label_358:
	test	cl, cl
	setne	al
	cmp	r12d, 2
	setne	dl
	mov	rsi, qword ptr [rsp + 0xa0]
	test	sil, 1
	mov	bl, byte ptr [rsp + 0x1d]
	mov	rsi, qword ptr [rsp + 0xa8]
	je	.label_345
	or	dl, al
	jne	.label_345
	test	r10b, 1
	jne	.label_375
	cmp	qword ptr [rsp + 0x60], 0
	je	.label_345
	test	r11, r11
	mov	r15d, r12d
	mov	al, bl
	mov	r12d, esi
	mov	rbp, qword ptr [rsp + 0x60]
	je	.label_379
.label_345:
	mov	rdx, qword ptr [rsp + 0x40]
	test	rdx, rdx
	je	.label_382
	test	cl, cl
	mov	rcx, qword ptr [rsp + 8]
	jne	.label_384
	mov	al, byte ptr [rdx]
	test	al, al
	je	.label_384
	inc	rdx
	nop	word ptr cs:[rax + rax]
.label_396:
	cmp	r14, r11
	jae	.label_361
	mov	byte ptr [rcx + r14], al
.label_361:
	inc	r14
	movzx	eax, byte ptr [rdx]
	inc	rdx
	test	al, al
	jne	.label_396
	jmp	.label_384
.label_304:
	mov	qword ptr [rsp + 0x20], rbp
.label_313:
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
.label_329:
	mov	r14, rax
.label_332:
	mov	rax, r14
	add	rsp, 0xb8
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_375:
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
	jmp	.label_329
.label_382:
	mov	rcx, qword ptr [rsp + 8]
.label_384:
	cmp	r14, r11
	jae	.label_332
	mov	byte ptr [rcx + r14], 0
	jmp	.label_332
.label_381:
	call	abort
	.section	.text
	.align	16
	#Procedure 0x4052bc
	.globl sub_4052bc
	.type sub_4052bc, @function
sub_4052bc:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x4052c0
	.globl c_isprint
	.type c_isprint, @function
c_isprint:

	add	edi, -0x20
	cmp	edi, 0x5f
	setb	al
	ret	
	.section	.text
	.align	16
	#Procedure 0x4052ca
	.globl sub_4052ca
	.type sub_4052ca, @function
sub_4052ca:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4052d0

	.globl head_lines
	.type head_lines, @function
head_lines:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x20a8
	mov	rbp, rdx
	mov	r12d, esi
	mov	r15b, 1
	test	rbp, rbp
	je	.label_398
	mov	qword ptr [rsp + 8], rdi
	lea	r13, [rsp + 0xa0]
	mov	r14d, 0xa
	nop	word ptr cs:[rax + rax]
.label_405:
	mov	edx, 0x2000
	mov	edi, r12d
	mov	rsi, r13
	call	safe_read
	cmp	rax, -1
	je	.label_399
	test	rax, rax
	je	.label_398
	mov	cl,  byte ptr [byte ptr [rip + line_end]]
	test	cl, cl
	mov	ecx, 0
	cmovne	ecx, r14d
	xor	ebx, ebx
	nop	word ptr cs:[rax + rax]
.label_403:
	cmp	rbx, rax
	jae	.label_401
	movsx	edx, byte ptr [rsp + rbx + 0xa0]
	inc	rbx
	cmp	edx, ecx
	jne	.label_403
	dec	rbp
	jne	.label_403
	jmp	.label_404
	.section	.text
	.align	16
	#Procedure 0x40536b
	.globl sub_40536b
	.type sub_40536b, @function
sub_40536b:

	nop	dword ptr [rax + rax]
.label_401:
	mov	rdi, r13
	mov	rsi, rbx
	call	xwrite_stdout
	test	rbp, rbp
	jne	.label_405
	jmp	.label_398
.label_399:
	call	__errno_location
	mov	ebx, dword ptr [rax]
	xor	r15d, r15d
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_20
	mov	edx, 5
	call	dcgettext
	mov	rbp, rax
	mov	edi, 4
	mov	rsi, qword ptr [rsp + 8]
	call	quotearg_style
	mov	rcx, rax
	xor	edi, edi
	xor	eax, eax
	mov	esi, ebx
	mov	rdx, rbp
	call	error
.label_398:
	mov	eax, r15d
	add	rsp, 0x20a8
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x4053d8
	.globl sub_4053d8
	.type sub_4053d8, @function
sub_4053d8:

	nop	dword ptr [rax + rax]
.label_404:
	mov	rbp, rbx
	sub	rbp, rax
	mov	edx, 1
	mov	edi, r12d
	mov	rsi, rbp
	call	lseek
	test	rax, rax
	jns	.label_400
	lea	rsi, [rsp + 0x10]
	mov	edi, r12d
	call	fstat
	test	eax, eax
	jne	.label_402
	mov	eax, 0xf000
	and	eax, dword ptr [rsp + 0x28]
	cmp	eax, 0x8000
	jne	.label_400
.label_402:
	mov	edx, 1
	mov	edi, r12d
	mov	rsi, rbp
	mov	rcx, qword ptr [rsp + 8]
	call	elseek
.label_400:
	lea	rdi, [rsp + 0xa0]
	mov	rsi, rbx
	call	xwrite_stdout
	jmp	.label_398
.label_408:
	call	__errno_location
	mov	dword ptr [rax], 0x4b
	jmp	.label_407
	.section	.text
	.align	16
	#Procedure 0x40544d

	.globl xnumtoumax
	.type xnumtoumax, @function
xnumtoumax:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	push	rax
	mov	r14, r9
	mov	r15, rcx
	mov	r12, rdx
	mov	eax, esi
	mov	r13, rdi
	lea	rcx, [rsp]
	xor	esi, esi
	mov	edx, eax
	call	xstrtoumax
	cmp	eax, 3
	je	.label_409
	cmp	eax, 1
	je	.label_408
	test	eax, eax
	jne	.label_407
	mov	rbx, qword ptr [rsp]
	cmp	rbx, r12
	jb	.label_406
	cmp	rbx, r15
	jbe	.label_411
.label_406:
	call	__errno_location
	cmp	rbx, 0x40000000
	jb	.label_410
	mov	dword ptr [rax], 0x4b
	jmp	.label_407
.label_409:
	call	__errno_location
	mov	dword ptr [rax], 0
	jmp	.label_407
.label_410:
	mov	dword ptr [rax], 0x22
.label_407:
	mov	eax, dword ptr [rsp + 0x40]
	test	eax, eax
	mov	ebp, 1
	cmovne	ebp, eax
	call	__errno_location
	mov	ebx, dword ptr [rax]
	xor	eax, eax
	cmp	ebx, 0x16
	cmove	ebx, eax
	mov	rdi, r13
	call	quote
	mov	r8, rax
	mov	edx, OFFSET FLAT:label_129
	xor	eax, eax
	mov	edi, ebp
	mov	esi, ebx
	mov	rcx, r14
	call	error
.label_411:
	mov	rax, qword ptr [rsp]
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
	#Procedure 0x405506
	.globl sub_405506
	.type sub_405506, @function
sub_405506:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x405510

	.globl emit_ancillary_info
	.type emit_ancillary_info, @function
emit_ancillary_info:
	push	r14
	push	rbx
	push	rax
	mov	ebx, OFFSET FLAT:emit_ancillary_info.infomap
	mov	esi, OFFSET FLAT:label_418
	nop	
.label_417:
	mov	edi, OFFSET FLAT:label_234
	call	strcmp
	test	eax, eax
	je	.label_415
	mov	rsi, qword ptr [rbx + 0x10]
	add	rbx, 0x10
	test	rsi, rsi
	jne	.label_417
.label_415:
	mov	rax, qword ptr [rbx + 8]
	test	rax, rax
	mov	ebx, OFFSET FLAT:label_234
	cmovne	rbx, rax
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_420
	mov	edx, 5
	call	dcgettext
	mov	rsi, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:label_235
	mov	ecx, OFFSET FLAT:label_414
	xor	eax, eax
	call	__printf_chk
	mov	edi, 5
	xor	esi, esi
	call	setlocale
	test	rax, rax
	je	.label_412
	mov	esi, OFFSET FLAT:label_413
	mov	edx, 3
	mov	rdi, rax
	call	strncmp
	test	eax, eax
	je	.label_412
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_419
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	call	fputs_unlocked
.label_412:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_421
	mov	edx, 5
	call	dcgettext
	mov	rsi, rax
	mov	r14d, OFFSET FLAT:label_234
	mov	edi, 1
	mov	edx, OFFSET FLAT:label_414
	mov	ecx, OFFSET FLAT:label_234
	xor	eax, eax
	call	__printf_chk
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_416
	mov	edx, 5
	call	dcgettext
	mov	rdx, rax
	cmp	rbx, r14
	mov	eax, OFFSET FLAT:label_422
	mov	ecx, OFFSET FLAT:label_91
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
	.align	16
	#Procedure 0x40562a
	.globl sub_40562a
	.type sub_40562a, @function
sub_40562a:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x405630

	.globl xalloc_die
	.type xalloc_die, @function
xalloc_die:
	push	rbx
	mov	ebx,  dword ptr [dword ptr [rip + exit_failure]]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_423
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	xor	esi, esi
	mov	edx, OFFSET FLAT:label_130
	xor	eax, eax
	mov	edi, ebx
	call	error
	call	abort
	.section	.text
	.align	16
	#Procedure 0x405660

	.globl emit_mandatory_arg_note
	.type emit_mandatory_arg_note, @function
emit_mandatory_arg_note:
	push	rax
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_424
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	pop	rax
	jmp	fputs_unlocked
	.section	.text
	.align	16
	#Procedure 0x405682
	.globl sub_405682
	.type sub_405682, @function
sub_405682:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x405690

	.globl head_file
	.type head_file, @function
head_file:
	push	rbp
	push	r15
	push	r14
	push	r12
	push	rbx
	mov	r15d, ecx
	mov	r12d, edx
	mov	r14, rsi
	mov	rbx, rdi
	cmp	byte ptr [rbx], 0x2d
	jne	.label_428
	cmp	byte ptr [rbx + 1], 0
	je	.label_427
.label_428:
	xor	esi, esi
	xor	eax, eax
	mov	rdi, rbx
	call	open
	mov	ebp, eax
	test	ebp, ebp
	js	.label_432
	movzx	ecx, r12b
	movzx	r8d, r15b
	mov	rdi, rbx
	mov	esi, ebp
	mov	rdx, r14
	call	head
	mov	r14b, al
	mov	edi, ebp
	call	close
	test	eax, eax
	je	.label_431
	call	__errno_location
	mov	r15d, dword ptr [rax]
	xor	r14d, r14d
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_429
	jmp	.label_430
.label_432:
	call	__errno_location
	mov	r15d, dword ptr [rax]
	xor	r14d, r14d
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_426
.label_430:
	mov	edx, 5
	call	dcgettext
	mov	rbp, rax
	mov	edi, 4
	mov	rsi, rbx
	call	quotearg_style
	mov	rcx, rax
	xor	edi, edi
	xor	eax, eax
	mov	esi, r15d
	mov	rdx, rbp
	call	error
	jmp	.label_431
.label_427:
	mov	byte ptr [byte ptr [rip + have_read_stdin]],  1
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_425
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
	xor	edi, edi
	xor	esi, esi
	call	xset_binary_mode
	movzx	ecx, r12b
	movzx	r8d, r15b
	xor	esi, esi
	mov	rdi, rbx
	mov	rdx, r14
	call	head
	mov	r14b, al
.label_431:
	mov	eax, r14d
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x405788
	.globl sub_405788
	.type sub_405788, @function
sub_405788:

	nop	dword ptr [rax + rax]
.label_434:
	mov	ecx, 1
.label_433:
	mov	rdi, rcx
	mov	rsi, rax
	jmp	calloc
	.section	.text
	.align	16
	#Procedure 0x4057a0
	.globl sub_4057a0
	.type sub_4057a0, @function
sub_4057a0:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4057a5

	.globl rpl_calloc
	.type rpl_calloc, @function
rpl_calloc:
	test	rdi, rdi
	mov	eax, 1
	je	.label_434
	test	rsi, rsi
	mov	ecx, 1
	je	.label_433
	mov	rax, rsi
	imul	rax, rdi
	xor	edx, edx
	div	rsi
	cmp	rax, rdi
	mov	rax, rsi
	mov	rcx, rdi
	je	.label_433
	push	rax
	call	__errno_location
	mov	dword ptr [rax], 0xc
	xor	eax, eax
	pop	rcx
	ret	
	.section	.text
	.align	16
	#Procedure 0x4057e0
	.globl emit_bug_reporting_address
	.type emit_bug_reporting_address, @function
emit_bug_reporting_address:

	push	rax
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_435
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:label_436
	xor	eax, eax
	mov	rsi, rcx
	call	__printf_chk
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_438
	mov	edx, 5
	call	dcgettext
	mov	rsi, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:label_235
	mov	ecx, OFFSET FLAT:label_414
	xor	eax, eax
	call	__printf_chk
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_437
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	pop	rax
	jmp	fputs_unlocked
	.section	.text
	.align	16
	#Procedure 0x405854
	.globl sub_405854
	.type sub_405854, @function
sub_405854:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x405860

	.globl xnmalloc
	.type xnmalloc, @function
xnmalloc:
	movabs	rax, 0x7fffffffffffffff
	xor	edx, edx
	div	rsi
	cmp	rax, rdi
	jb	.label_439
	imul	rsi, rdi
	mov	rdi, rsi
	jmp	xmalloc
.label_439:
	push	rax
	call	xalloc_die
	.section	.text
	.align	16
	#Procedure 0x405883
	.globl sub_405883
	.type sub_405883, @function
sub_405883:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x405890

	.globl xmalloc
	.type xmalloc, @function
xmalloc:
	push	rbx
	mov	rbx, rdi
	call	malloc
	test	rbx, rbx
	je	.label_440
	test	rax, rax
	je	.label_441
.label_440:
	pop	rbx
	ret	
.label_441:
	call	xalloc_die
	.section	.text
	.align	16
	#Procedure 0x4058aa
	.globl sub_4058aa
	.type sub_4058aa, @function
sub_4058aa:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4058b0

	.globl emit_stdin_note
	.type emit_stdin_note, @function
emit_stdin_note:
	push	rax
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_442
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	pop	rax
	jmp	fputs_unlocked
	.section	.text
	.align	16
	#Procedure 0x4058d2
	.globl sub_4058d2
	.type sub_4058d2, @function
sub_4058d2:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4058e0

	.globl elide_tail_lines_pipe
	.type elide_tail_lines_pipe, @function
elide_tail_lines_pipe:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x38
	mov	rbx, rcx
	mov	qword ptr [rsp + 8], rdx
	mov	dword ptr [rsp + 0x14], esi
	mov	qword ptr [rsp + 0x20], rdi
	mov	edi, 0x2018
	call	xmalloc
	mov	r14, rax
	xorps	xmm0, xmm0
	movups	xmmword ptr [r14 + 0x2000], xmm0
	mov	qword ptr [r14 + 0x2010], 0
	mov	edi, 0x2018
	call	xmalloc
	xor	r13d, r13d
	mov	r12, r14
	mov	qword ptr [rsp + 0x18], rbx
	jmp	.label_449
.label_445:
	mov	edi, 0x2018
	call	xmalloc
	nop	word ptr cs:[rax + rax]
.label_449:
	mov	r15, r14
	mov	r14, rax
	lea	rax, [r14 + 0x2008]
	mov	qword ptr [rsp + 0x30], rax
	jmp	.label_459
	.section	.text
	.align	16
	#Procedure 0x405964
	.globl sub_405964
	.type sub_405964, @function
sub_405964:

	nop	word ptr cs:[rax + rax]
.label_448:
	add	rbx, rbp
	mov	rdi, r14
	mov	rsi, rbp
	call	xwrite_stdout
.label_459:
	mov	edx, 0x2000
	mov	edi, dword ptr [rsp + 0x14]
	mov	rsi, r14
	call	safe_read
	mov	rbp, rax
	lea	rax, [rbp + 1]
	cmp	rax, 2
	jb	.label_443
	cmp	qword ptr [rsp + 8], 0
	je	.label_448
	mov	qword ptr [rsp + 0x28], r15
	mov	qword ptr [r14 + 0x2000], rbp
	xorps	xmm0, xmm0
	mov	r15, qword ptr [rsp + 0x30]
	movups	xmmword ptr [r15], xmm0
	mov	al,  byte ptr [byte ptr [rip + line_end]]
	test	al, al
	mov	esi, 0
	mov	eax, 0xa
	cmovne	esi, eax
	mov	rdi, r14
	mov	rdx, rbp
	call	memchr
	test	rax, rax
	je	.label_461
	add	rbp, r14
	nop	dword ptr [rax + rax]
.label_446:
	inc	rax
	inc	qword ptr [r15]
	movzx	ecx,  byte ptr [byte ptr [rip + line_end]]
	test	cl, cl
	mov	esi, 0
	mov	ecx, 0xa
	cmovne	esi, ecx
	mov	rdx, rbp
	sub	rdx, rax
	mov	rdi, rax
	call	memchr
	test	rax, rax
	jne	.label_446
.label_461:
	add	r13, qword ptr [r14 + 0x2008]
	mov	rdx, qword ptr [r14 + 0x2000]
	mov	r15, qword ptr [rsp + 0x28]
	mov	rdi, qword ptr [r15 + 0x2000]
	lea	rax, [rdi + rdx]
	cmp	rax, 0x1fff
	ja	.label_447
	add	rdi, r15
	mov	rsi, r14
	call	memcpy
	mov	rax, qword ptr [r14 + 0x2000]
	add	qword ptr [r15 + 0x2000], rax
	mov	rax, qword ptr [r14 + 0x2008]
	add	qword ptr [r15 + 0x2008], rax
	jmp	.label_459
.label_447:
	mov	qword ptr [r15 + 0x2010], r14
	mov	rax, r13
	sub	rax, qword ptr [r12 + 0x2008]
	cmp	rax, qword ptr [rsp + 8]
	jbe	.label_445
	mov	rsi, qword ptr [r12 + 0x2000]
	add	rbx, rsi
	mov	rdi, r12
	call	xwrite_stdout
	sub	r13, qword ptr [r12 + 0x2008]
	mov	rax, r12
	mov	r12, qword ptr [r12 + 0x2010]
	jmp	.label_449
.label_443:
	mov	rdi, r14
	call	free
	cmp	rbp, -1
	je	.label_454
	mov	rax, qword ptr [r15 + 0x2000]
	test	rax, rax
	je	.label_457
	movsx	eax, byte ptr [r15 + rax - 1]
	mov	cl,  byte ptr [byte ptr [rip + line_end]]
	xor	edx, edx
	test	cl, cl
	mov	ecx, 0xa
	cmove	ecx, edx
	cmp	eax, ecx
	je	.label_457
	inc	qword ptr [r15 + 0x2008]
	inc	r13
.label_457:
	mov	r14, qword ptr [rsp + 8]
	lea	rbp, [r12 + 0x2008]
	mov	rax, r13
	sub	rax, qword ptr [r12 + 0x2008]
	mov	r15, r12
	jmp	.label_462
	.section	.text
	.align	16
	#Procedure 0x405b1a
	.globl sub_405b1a
	.type sub_405b1a, @function
sub_405b1a:

	nop	word ptr [rax + rax]
.label_458:
	mov	rsi, qword ptr [r15 + 0x2000]
	add	rbx, rsi
	mov	rdi, r15
	call	xwrite_stdout
	sub	r13, qword ptr [rbp]
	mov	r15, qword ptr [r15 + 0x2010]
	lea	rbp, [r15 + 0x2008]
	mov	rax, r13
	sub	rax, qword ptr [r15 + 0x2008]
.label_462:
	cmp	rax, r14
	ja	.label_458
	cmp	r13, r14
	jbe	.label_460
	mov	rsi, r15
	je	.label_444
	mov	r14, qword ptr [r15 + 0x2000]
	add	r14, r15
	sub	qword ptr [rsp + 8], r13
	mov	r13d, 0xa
	mov	rax, r15
	nop	word ptr cs:[rax + rax]
.label_452:
	movzx	ecx,  byte ptr [byte ptr [rip + line_end]]
	test	cl, cl
	mov	esi, 0
	cmovne	esi, r13d
	mov	rdx, r14
	sub	rdx, rax
	mov	rdi, rax
	call	memchr
	test	rax, rax
	mov	esi, 0
	je	.label_444
	inc	rax
	inc	qword ptr [rbp]
	inc	qword ptr [rsp + 8]
	mov	rsi, rax
	jne	.label_452
.label_444:
	sub	rsi, r15
	add	rbx, rsi
	mov	rdi, r15
	call	xwrite_stdout
.label_460:
	mov	r14, qword ptr [rsp + 0x20]
	mov	r15, qword ptr [rsp + 0x18]
	mov	r13b, 1
	jmp	.label_456
.label_454:
	call	__errno_location
	mov	r15d, dword ptr [rax]
	xor	r13d, r13d
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_20
	mov	edx, 5
	call	dcgettext
	mov	rbp, rax
	mov	edi, 4
	mov	r14, qword ptr [rsp + 0x20]
	mov	rsi, r14
	call	quotearg_style
	mov	rcx, rax
	xor	edi, edi
	xor	eax, eax
	mov	esi, r15d
	mov	rdx, rbp
	call	error
	mov	r15, qword ptr [rsp + 0x18]
.label_456:
	test	r12, r12
	je	.label_450
	nop	word ptr cs:[rax + rax]
.label_453:
	mov	rbp, qword ptr [r12 + 0x2010]
	mov	rdi, r12
	call	free
	test	rbp, rbp
	mov	r12, rbp
	jne	.label_453
.label_450:
	test	r15, r15
	js	.label_455
	xor	ebp, ebp
	xor	edx, edx
	mov	edi, dword ptr [rsp + 0x14]
	mov	rsi, rbx
	mov	rcx, r14
	call	elseek
	test	rax, rax
	js	.label_451
	mov	bpl, r13b
.label_451:
	mov	r13b, bpl
.label_455:
	and	r13b, 1
	mov	eax, r13d
	add	rsp, 0x38
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x405c81
	.globl sub_405c81
	.type sub_405c81, @function
sub_405c81:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x405c90

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
	.align	16
	#Procedure 0x405cc9
	.globl sub_405cc9
	.type sub_405cc9, @function
sub_405cc9:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x405cd0

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
	.align	16
	#Procedure 0x405ce1
	.globl sub_405ce1
	.type sub_405ce1, @function
sub_405ce1:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x405cf0
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
	.align	16
	#Procedure 0x405d04
	.globl sub_405d04
	.type sub_405d04, @function
sub_405d04:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x405d10
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
	#Procedure 0x405d23
	.globl sub_405d23
	.type sub_405d23, @function
sub_405d23:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x405d30

	.globl clear_ungetc_buffer_preserving_position
	.type clear_ungetc_buffer_preserving_position, @function
clear_ungetc_buffer_preserving_position:
	test	byte ptr [rdi + 1], 1
	jne	.label_463
	ret	
.label_463:
	xor	esi, esi
	mov	edx, 1
	jmp	rpl_fseeko
	.section	.text
	.align	16
	#Procedure 0x405d43
	.globl sub_405d43
	.type sub_405d43, @function
sub_405d43:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x405d50

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
	#Procedure 0x405d86
	.globl sub_405d86
	.type sub_405d86, @function
sub_405d86:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x405d90

	.globl hard_locale
	.type hard_locale, @function
hard_locale:
	push	rbx
	xor	esi, esi
	call	setlocale
	mov	bl, 1
	test	rax, rax
	je	.label_465
	cmp	byte ptr [rax], 0x43
	jne	.label_467
	cmp	byte ptr [rax + 1], 0
	je	.label_464
.label_467:
	mov	esi, OFFSET FLAT:label_466
	mov	rdi, rax
	call	strcmp
	test	eax, eax
	jne	.label_465
.label_464:
	xor	ebx, ebx
.label_465:
	mov	eax, ebx
	pop	rbx
	ret	
	.section	.text
	.align	16
	#Procedure 0x405dc1
	.globl sub_405dc1
	.type sub_405dc1, @function
sub_405dc1:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x405e35
	.globl sub_405e35
	.type sub_405e35, @function
sub_405e35:

	nop	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x405e42
	.globl sub_405e42
	.type sub_405e42, @function
sub_405e42:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x405e66
	.globl sub_405e66
	.type sub_405e66, @function
sub_405e66:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x405e79
	.globl sub_405e79
	.type sub_405e79, @function
sub_405e79:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x405e80

	.globl fstat
	.type fstat, @function
fstat:
	mov	rdx, rsi
	mov	esi, edi
	mov	edi, 1
	jmp	__fxstat
