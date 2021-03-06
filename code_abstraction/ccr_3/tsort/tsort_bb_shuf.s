	.section	.text
	.align	32
	#Procedure 0x4014e9
	.globl sub_4014e9
	.type sub_4014e9, @function
sub_4014e9:

	hlt	
	.section	.text
	.align	32
	#Procedure 0x4014ea
	.globl sub_4014ea
	.type sub_4014ea, @function
sub_4014ea:

	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x401522
	.globl sub_401522
	.type sub_401522, @function
sub_401522:

	nop	dword ptr [rax]
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40156a
	.globl sub_40156a
	.type sub_40156a, @function
sub_40156a:

	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40158c
	.globl sub_40158c
	.type sub_40158c, @function
sub_40158c:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x40159d
	.globl sub_40159d
	.type sub_40159d, @function
sub_40159d:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x4015b6
	.globl sub_4015b6
	.type sub_4015b6, @function
sub_4015b6:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4015c0

	.globl rpl_calloc
	.type rpl_calloc, @function
rpl_calloc:
	test	rdi, rdi
	mov	eax, 1
	je	.label_9
	test	rsi, rsi
	mov	ecx, 1
	je	.label_10
	mov	rax, rsi
	imul	rax, rdi
	xor	edx, edx
	div	rsi
	cmp	rax, rdi
	mov	rax, rsi
	mov	rcx, rdi
	je	.label_10
	push	rax
	call	__errno_location
	mov	dword ptr [rax], 0xc
	xor	eax, eax
	pop	rcx
	ret	
.label_9:
	mov	ecx, 1
.label_10:
	mov	rdi, rcx
	mov	rsi, rax
	jmp	calloc
	.section	.text
	.align	32
	#Procedure 0x40160b
	.globl sub_40160b
	.type sub_40160b, @function
sub_40160b:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x401610

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
	je	.label_11
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
.label_11:
	call	abort
	.section	.text
	.align	32
	#Procedure 0x4016a5
	.globl sub_4016a5
	.type sub_4016a5, @function
sub_4016a5:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4016b0
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
	je	.label_12
	mov	qword ptr [rax], rbx
.label_12:
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
	#Procedure 0x40179c
	.globl sub_40179c
	.type sub_40179c, @function
sub_40179c:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x4017a0

	.globl freopen_safer
	.type freopen_safer, @function
freopen_safer:
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
	je	.label_26
	cmp	eax, 1
	je	.label_13
	cmp	eax, 2
	je	.label_14
	mov	edi, 2
	mov	esi, 2
	call	dup2
	cmp	eax, 2
	setne	r12b
.label_14:
	mov	r15b, r12b
	mov	edi, 1
	mov	esi, 1
	call	dup2
	cmp	eax, 1
	setne	r12b
	jmp	.label_24
.label_26:
	xor	r15d, r15d
	xor	r13d, r13d
	jmp	.label_15
.label_13:
	xor	r15d, r15d
.label_24:
	xor	r13d, r13d
	xor	edi, edi
	xor	esi, esi
	call	dup2
	test	eax, eax
	je	.label_17
	mov	edi, OFFSET FLAT:label_16
	xor	esi, esi
	xor	eax, eax
	call	open
	mov	r13b, 1
	test	eax, eax
	je	.label_17
	mov	r13b, 1
	jmp	.label_19
.label_17:
	test	r12b, r12b
	je	.label_23
	mov	edi, OFFSET FLAT:label_16
	xor	esi, esi
	xor	eax, eax
	call	open
	cmp	eax, 1
	jne	.label_20
.label_23:
	test	r15b, r15b
	je	.label_15
	mov	edi, OFFSET FLAT:label_16
	xor	esi, esi
	xor	eax, eax
	call	open
	cmp	eax, 2
	jne	.label_19
.label_15:
	mov	rdi, rbp
	mov	rsi, r14
	mov	rdx, rbx
	call	rpl_freopen
	mov	r14, rax
	jmp	.label_22
.label_20:
	mov	r12b, 1
.label_19:
	xor	r14d, r14d
	test	eax, eax
	js	.label_22
	mov	edi, eax
	call	close
	call	__errno_location
	mov	dword ptr [rax], 9
	xor	r14d, r14d
.label_22:
	call	__errno_location
	mov	rbx, rax
	mov	ebp, dword ptr [rbx]
	test	r15b, r15b
	je	.label_18
	mov	edi, 2
	call	close
.label_18:
	test	r12b, r12b
	je	.label_21
	mov	edi, 1
	call	close
.label_21:
	test	r13b, r13b
	je	.label_27
	xor	edi, edi
	call	close
.label_27:
	test	r14, r14
	jne	.label_25
	mov	dword ptr [rbx], ebp
.label_25:
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
	#Procedure 0x4018e2
	.globl sub_4018e2
	.type sub_4018e2, @function
sub_4018e2:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4018f0
	.globl version_etc_ar
	.type version_etc_ar, @function
version_etc_ar:

	mov	r9, -1
	nop	word ptr [rax + rax]
.label_28:
	cmp	qword ptr [r8 + r9*8 + 8], 0
	lea	r9, [r9 + 1]
	jne	.label_28
	jmp	version_etc_arn
	.section	.text
	.align	32
	#Procedure 0x401911
	.globl sub_401911
	.type sub_401911, @function
sub_401911:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x401920

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
	.align	32
	#Procedure 0x401939
	.globl sub_401939
	.type sub_401939, @function
sub_401939:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x401940
	.globl fdadvise
	.type fdadvise, @function
fdadvise:

	jmp	posix_fadvise
	.section	.text
	.align	32
	#Procedure 0x401945
	.globl sub_401945
	.type sub_401945, @function
sub_401945:

	nop	word ptr cs:[rax + rax]
.label_30:
	mov	rdi, rbx
	pop	rbx
	pop	r14
	pop	rbp
	jmp	fclose
	.section	.text
	.align	32
	#Procedure 0x40195c
	.globl sub_40195c
	.type sub_40195c, @function
sub_40195c:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x401968

	.globl rpl_fclose
	.type rpl_fclose, @function
rpl_fclose:
	push	rbp
	push	r14
	push	rbx
	mov	rbx, rdi
	call	fileno
	test	eax, eax
	js	.label_30
	mov	rdi, rbx
	call	__freading
	test	eax, eax
	je	.label_29
	mov	rdi, rbx
	call	fileno
	xor	esi, esi
	mov	edx, 1
	mov	edi, eax
	call	lseek
	cmp	rax, -1
	je	.label_30
.label_29:
	mov	rdi, rbx
	call	rpl_fflush
	test	eax, eax
	je	.label_30
	call	__errno_location
	mov	r14, rax
	mov	ebp, dword ptr [r14]
	mov	rdi, rbx
	call	fclose
	test	ebp, ebp
	je	.label_31
	mov	dword ptr [r14], ebp
	mov	eax, 0xffffffff
.label_31:
	pop	rbx
	pop	r14
	pop	rbp
	ret	
.label_32:
	call	xalloc_die
	.section	.text
	.align	32
	#Procedure 0x4019d5
	.globl sub_4019d5
	.type sub_4019d5, @function
sub_4019d5:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4019df
	.globl xcalloc
	.type xcalloc, @function
xcalloc:

	push	rax
	movabs	rax, 0x7fffffffffffffff
	xor	edx, edx
	div	rsi
	cmp	rax, rdi
	jb	.label_32
	call	rpl_calloc
	test	rax, rax
	je	.label_32
	pop	rcx
	ret	
	.section	.text
	.align	32
	#Procedure 0x401a00
	.globl x2nrealloc
	.type x2nrealloc, @function
x2nrealloc:

	push	rbx
	mov	rbx, rdx
	mov	rcx, qword ptr [rsi]
	test	rdi, rdi
	je	.label_33
	movabs	rax, 0x5555555555555554
	xor	edx, edx
	div	rbx
	cmp	rax, rcx
	jbe	.label_36
	mov	rax, rcx
	shr	rax, 1
	lea	rcx, [rcx + rax + 1]
	jmp	.label_34
.label_36:
	call	xalloc_die
.label_33:
	test	rcx, rcx
	jne	.label_37
	mov	eax, 0x80
	xor	edx, edx
	div	rbx
	xor	ecx, ecx
	cmp	rbx, 0x80
	seta	cl
	add	rcx, rax
.label_37:
	movabs	rax, 0x7fffffffffffffff
	xor	edx, edx
	div	rbx
	cmp	rax, rcx
	jb	.label_39
.label_34:
	mov	qword ptr [rsi], rcx
	imul	rbx, rcx
	test	rdi, rdi
	je	.label_35
	test	rbx, rbx
	jne	.label_35
	call	free
	xor	eax, eax
	pop	rbx
	ret	
.label_39:
	call	xalloc_die
	.section	.text
	.align	32
	#Procedure 0x401a83
	.globl sub_401a83
	.type sub_401a83, @function
sub_401a83:

	nop	word ptr [rax + rax]
.label_35:
	mov	rsi, rbx
	call	realloc
	test	rbx, rbx
	je	.label_38
	test	rax, rax
	je	.label_36
.label_38:
	pop	rbx
	ret	
	.section	.text
	.align	32
	#Procedure 0x401aa0

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
	je	.label_40
	test	r15, r15
	je	.label_41
.label_40:
	mov	rdi, r15
	mov	rsi, r14
	mov	rdx, rbx
	call	memcpy
	mov	rax, r15
	pop	rbx
	pop	r14
	pop	r15
	ret	
.label_41:
	call	xalloc_die
	.section	.text
	.align	32
	#Procedure 0x401adc
	.globl sub_401adc
	.type sub_401adc, @function
sub_401adc:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x401ae0

	.globl version_etc_va
	.type version_etc_va, @function
version_etc_va:
	movsxd	r10, dword ptr [r8]
	cmp	r10, 0x28
	ja	.label_52
	mov	r9, r10
	add	r9, qword ptr [r8 + 0x10]
	lea	r10d, [r10 + 8]
	mov	dword ptr [r8], r10d
	jmp	.label_54
.label_52:
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
.label_54:
	sub	rsp, 0x58
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp], rax
	xor	r9d, r9d
	test	rax, rax
	je	.label_43
	cmp	r10d, 0x29
	jae	.label_51
	movsxd	r9, r10d
	add	r9, qword ptr [r8 + 0x10]
	add	r10d, 8
	mov	dword ptr [r8], r10d
	jmp	.label_53
.label_51:
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
.label_53:
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp + 8], rax
	mov	r9d, 1
	test	rax, rax
	je	.label_43
	cmp	r10d, 0x29
	jae	.label_49
	movsxd	r9, r10d
	add	r9, qword ptr [r8 + 0x10]
	add	r10d, 8
	mov	dword ptr [r8], r10d
	jmp	.label_50
.label_49:
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
.label_50:
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp + 0x10], rax
	mov	r9d, 2
	test	rax, rax
	je	.label_43
	cmp	r10d, 0x29
	jae	.label_47
	movsxd	r9, r10d
	add	r9, qword ptr [r8 + 0x10]
	add	r10d, 8
	mov	dword ptr [r8], r10d
	jmp	.label_48
.label_47:
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
.label_48:
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp + 0x18], rax
	mov	r9d, 3
	test	rax, rax
	je	.label_43
	cmp	r10d, 0x29
	jae	.label_45
	movsxd	r9, r10d
	add	r9, qword ptr [r8 + 0x10]
	add	r10d, 8
	mov	dword ptr [r8], r10d
	jmp	.label_46
.label_45:
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
.label_46:
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp + 0x20], rax
	mov	r9d, 4
	test	rax, rax
	je	.label_43
	cmp	r10d, 0x29
	jae	.label_42
	movsxd	r9, r10d
	add	r9, qword ptr [r8 + 0x10]
	add	r10d, 8
	mov	dword ptr [r8], r10d
	jmp	.label_44
.label_42:
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
.label_44:
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp + 0x28], rax
	mov	r9d, 5
	test	rax, rax
	je	.label_43
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp + 0x30], rax
	mov	r9d, 6
	test	rax, rax
	je	.label_43
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp + 0x38], rax
	mov	r9d, 7
	test	rax, rax
	je	.label_43
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp + 0x40], rax
	mov	r9d, 8
	test	rax, rax
	je	.label_43
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp + 0x48], rax
	cmp	rax, 1
	mov	r9d, 9
	sbb	r9, -1
.label_43:
	lea	r8, [rsp]
	call	version_etc_arn
	add	rsp, 0x58
	ret	
	.section	.text
	.align	32
	#Procedure 0x401cc2
	.globl sub_401cc2
	.type sub_401cc2, @function
sub_401cc2:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x401cd0

	.globl readtoken
	.type readtoken, @function
readtoken:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x38
	mov	qword ptr [rsp + 8], rcx
	mov	r15, rdi
	xorps	xmm0, xmm0
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movaps	xmmword ptr [rsp + 0x10], xmm0
	test	rdx, rdx
	je	.label_55
	mov	eax, edx
	and	eax, 1
	xor	edi, edi
	cmp	rdx, 1
	je	.label_68
	sub	rdx, rax
	xor	edi, edi
	nop	word ptr [rax + rax]
.label_58:
	movzx	ecx, byte ptr [rsi + rdi]
	mov	ebp, 1
	shl	rbp, cl
	shr	rcx, 6
	or	qword ptr [rsp + rcx*8 + 0x10], rbp
	movzx	ecx, byte ptr [rsi + rdi + 1]
	mov	ebp, 1
	shl	rbp, cl
	shr	rcx, 6
	or	qword ptr [rsp + rcx*8 + 0x10], rbp
	add	rdi, 2
	cmp	rdx, rdi
	jne	.label_58
.label_68:
	test	rax, rax
	je	.label_55
	movzx	ecx, byte ptr [rsi + rdi]
	mov	eax, 1
	shl	rax, cl
	shr	rcx, 6
	or	qword ptr [rsp + rcx*8 + 0x10], rax
	nop	
.label_55:
	mov	rax, qword ptr [r15 + 8]
	cmp	rax, qword ptr [r15 + 0x10]
	jae	.label_65
	lea	rcx, [rax + 1]
	mov	qword ptr [r15 + 8], rcx
	movzx	ebx, byte ptr [rax]
.label_59:
	movsxd	rax, ebx
	shr	rax, 6
	mov	rax, qword ptr [rsp + rax*8 + 0x10]
	bt	rax, rbx
	jb	.label_55
	jmp	.label_56
.label_65:
	mov	rdi, r15
	call	__uflow
	mov	ebx, eax
	mov	rax, -1
	test	ebx, ebx
	jns	.label_59
	jmp	.label_63
.label_56:
	mov	rax, qword ptr [rsp + 8]
	mov	r13, qword ptr [rax]
	mov	r12, qword ptr [rax + 8]
	xor	ecx, ecx
	xor	ebp, ebp
	jmp	.label_64
	.section	.text
	.align	32
	#Procedure 0x401db5
	.globl sub_401db5
	.type sub_401db5, @function
sub_401db5:

	nop	word ptr cs:[rax + rax]
.label_61:
	lea	rcx, [rax + 1]
	mov	qword ptr [r15 + 8], rcx
	movzx	ebx, byte ptr [rax]
	xor	ecx, ecx
.label_64:
	mov	r14, rbp
	cmp	r14, r13
	jne	.label_57
	test	r12, r12
	je	.label_60
	movabs	rax, 0x5555555555555554
	cmp	r14, rax
	jae	.label_62
	mov	rbp, rcx
	mov	r13, r14
	shr	r13, 1
	inc	r13
	add	r13, r14
	jmp	.label_66
.label_60:
	mov	rbp, rcx
	test	r14, r14
	mov	r13, r14
	mov	eax, 0x80
	cmove	r13, rax
	test	r13, r13
	js	.label_69
.label_66:
	mov	rdi, r12
	mov	rsi, r13
	call	xrealloc
	mov	r12, rax
	mov	rcx, rbp
.label_57:
	test	cl, 1
	jne	.label_67
	movsxd	rax, ebx
	shr	rax, 6
	mov	rax, qword ptr [rsp + rax*8 + 0x10]
	bt	rax, rbx
	jb	.label_67
	lea	rbp, [r14 + 1]
	mov	byte ptr [r12 + r14], bl
	mov	rax, qword ptr [r15 + 8]
	cmp	rax, qword ptr [r15 + 0x10]
	jb	.label_61
	mov	rdi, r15
	call	__uflow
	mov	ebx, eax
	mov	ecx, ebx
	shr	ecx, 0x1f
	test	ebx, ebx
	jns	.label_64
	mov	rax, -1
	cmp	r14, -1
	jne	.label_64
	jmp	.label_63
.label_67:
	mov	byte ptr [r12 + r14], 0
	mov	rax, qword ptr [rsp + 8]
	mov	qword ptr [rax + 8], r12
	mov	qword ptr [rax], r13
	mov	rax, r14
.label_63:
	add	rsp, 0x38
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_62:
	call	xalloc_die
.label_69:
	call	xalloc_die
	.section	.text
	.align	32
	#Procedure 0x401eae
	.globl sub_401eae
	.type sub_401eae, @function
sub_401eae:

	nop	
	.section	.text
	.align	32
	#Procedure 0x401eb0
	.globl close_stdout_set_file_name
	.type close_stdout_set_file_name, @function
close_stdout_set_file_name:

	mov	qword ptr [rip + file_name],  rdi
	ret	
	.section	.text
	.align	32
	#Procedure 0x401eb8
	.globl sub_401eb8
	.type sub_401eb8, @function
sub_401eb8:

	nop	dword ptr [rax + rax]
.label_71:
	mov	rdi, rbx
	call	fileno
	mov	edi, eax
	mov	rsi, rbp
	mov	edx, r14d
	call	lseek
	mov	rcx, rax
	mov	eax, 0xffffffff
	cmp	rcx, -1
	je	.label_70
	and	byte ptr [rbx], 0xef
	mov	qword ptr [rbx + 0x90], rcx
	xor	eax, eax
.label_70:
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x401ef4
	.globl sub_401ef4
	.type sub_401ef4, @function
sub_401ef4:

	nop	
	.section	.text
	.align	32
	#Procedure 0x401ef6

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
	jne	.label_72
	mov	rax, qword ptr [rbx + 0x28]
	cmp	rax, qword ptr [rbx + 0x20]
	jne	.label_72
	cmp	qword ptr [rbx + 0x48], 0
	je	.label_71
.label_72:
	mov	rdi, rbx
	mov	rsi, rbp
	mov	edx, r14d
	pop	rbx
	pop	r14
	pop	rbp
	jmp	fseeko
	.section	.text
	.align	32
	#Procedure 0x401f30
	.globl quote_n
	.type quote_n, @function
quote_n:

	mov	rdx, -1
	mov	ecx, OFFSET FLAT:quote_quoting_options
	jmp	quotearg_n_options
	.section	.text
	.align	32
	#Procedure 0x401f41
	.globl sub_401f41
	.type sub_401f41, @function
sub_401f41:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x401f50
	.globl xnrealloc
	.type xnrealloc, @function
xnrealloc:

	push	rbx
	mov	rbx, rdx
	movabs	rax, 0x7fffffffffffffff
	xor	edx, edx
	div	rbx
	cmp	rax, rsi
	jb	.label_73
	imul	rbx, rsi
	test	rdi, rdi
	je	.label_74
	test	rbx, rbx
	jne	.label_74
	call	free
	xor	eax, eax
	pop	rbx
	ret	
.label_74:
	mov	rsi, rbx
	call	realloc
	test	rbx, rbx
	je	.label_75
	test	rax, rax
	je	.label_73
.label_75:
	pop	rbx
	ret	
.label_73:
	call	xalloc_die
	.section	.text
	.align	32
	#Procedure 0x401f98
	.globl sub_401f98
	.type sub_401f98, @function
sub_401f98:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x401fa0
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
	#Procedure 0x401fd3
	.globl sub_401fd3
	.type sub_401fd3, @function
sub_401fd3:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x401fe0
	.globl quotearg_colon_mem
	.type quotearg_colon_mem, @function
quotearg_colon_mem:

	sub	rsp, 0x38
	mov	rax, rsi
	mov	rdx, rdi
	mov	rcx, qword ptr [rip + label_76]
	mov	qword ptr [rsp + 0x30], rcx
	movups	xmm0, xmmword ptr [rip + label_77]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0, xmmword ptr [rip + label_78]
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
	.align	32
	#Procedure 0x402034
	.globl sub_402034
	.type sub_402034, @function
sub_402034:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x402040
	.globl quote_n_mem
	.type quote_n_mem, @function
quote_n_mem:

	mov	ecx, OFFSET FLAT:quote_quoting_options
	jmp	quotearg_n_options
	.section	.text
	.align	32
	#Procedure 0x40204a
	.globl sub_40204a
	.type sub_40204a, @function
sub_40204a:

	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x402050
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
	#Procedure 0x402063
	.globl sub_402063
	.type sub_402063, @function
sub_402063:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x402070
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
	.align	32
	#Procedure 0x402089
	.globl sub_402089
	.type sub_402089, @function
sub_402089:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x402090
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
	.align	32
	#Procedure 0x4020a8
	.globl sub_4020a8
	.type sub_4020a8, @function
sub_4020a8:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4020b0

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
	jne	.label_80
	call	locale_charset
	movsx	ecx, byte ptr [rax]
	and	ecx, 0xffffffdf
	cmp	ecx, 0x47
	je	.label_87
	cmp	ecx, 0x55
	jne	.label_79
	movsx	ecx, byte ptr [rax + 1]
	and	ecx, 0xffffffdf
	cmp	ecx, 0x54
	jne	.label_79
	movsx	ecx, byte ptr [rax + 2]
	and	ecx, 0xffffffdf
	cmp	ecx, 0x46
	jne	.label_79
	cmp	byte ptr [rax + 3], 0x2d
	jne	.label_79
	cmp	byte ptr [rax + 4], 0x38
	jne	.label_79
	cmp	byte ptr [rax + 5], 0
	jne	.label_79
	cmp	byte ptr [rbx], 0x60
	mov	ecx, OFFSET FLAT:label_84
	mov	eax, OFFSET FLAT:label_85
	jmp	.label_86
.label_87:
	movsx	ecx, byte ptr [rax + 1]
	and	ecx, 0xffffffdf
	cmp	ecx, 0x42
	jne	.label_79
	cmp	byte ptr [rax + 2], 0x31
	jne	.label_79
	cmp	byte ptr [rax + 3], 0x38
	jne	.label_79
	cmp	byte ptr [rax + 4], 0x30
	jne	.label_79
	cmp	byte ptr [rax + 5], 0x33
	jne	.label_79
	cmp	byte ptr [rax + 6], 0x30
	jne	.label_79
	cmp	byte ptr [rax + 7], 0
	je	.label_81
.label_79:
	cmp	ebp, 9
	mov	ecx, OFFSET FLAT:label_82
	mov	eax, OFFSET FLAT:label_83
.label_86:
	cmove	rax, rcx
.label_80:
	add	rsp, 8
	pop	rbx
	pop	rbp
	ret	
.label_81:
	cmp	byte ptr [rbx], 0x60
	mov	ecx, OFFSET FLAT:label_88
	mov	eax, OFFSET FLAT:label_89
	jmp	.label_86
	.section	.text
	.align	32
	#Procedure 0x402175
	.globl sub_402175
	.type sub_402175, @function
sub_402175:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x402180
	.globl quotearg_char_mem
	.type quotearg_char_mem, @function
quotearg_char_mem:

	sub	rsp, 0x38
	mov	ecx, edx
	mov	r8, rsi
	mov	rdx, rdi
	mov	rsi, qword ptr [rip + label_76]
	mov	qword ptr [rsp + 0x30], rsi
	movups	xmm0, xmmword ptr [rip + label_77]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0, xmmword ptr [rip + label_78]
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
	.align	32
	#Procedure 0x4021ee
	.globl sub_4021ee
	.type sub_4021ee, @function
sub_4021ee:

	nop	
.label_90:
	call	abort
	.section	.text
	.align	32
	#Procedure 0x4021f5
	.globl sub_4021f5
	.type sub_4021f5, @function
sub_4021f5:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x4021f9
	.globl quotearg_custom_mem
	.type quotearg_custom_mem, @function
quotearg_custom_mem:

	sub	rsp, 0x38
	mov	rax, qword ptr [rip + label_76]
	mov	qword ptr [rsp + 0x30], rax
	movups	xmm0, xmmword ptr [rip + label_77]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0, xmmword ptr [rip + label_78]
	movaps	xmmword ptr [rsp + 0x10], xmm0
	movups	xmm0, xmmword ptr [rip + default_quoting_options]
	movaps	xmmword ptr [rsp], xmm0
	mov	dword ptr [rsp], 0xa
	test	rdi, rdi
	je	.label_90
	test	rsi, rsi
	je	.label_90
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
	.section	.text
	.align	32
	#Procedure 0x402260
	.globl quotearg_free
	.type quotearg_free, @function
quotearg_free:

	push	r15
	push	r14
	push	rbx
	mov	r14, qword ptr [rip + slotvec]
	cmp	dword ptr [rip + nslots],  2
	jl	.label_91
	lea	r15, [r14 + 0x18]
	mov	ebx, 1
	nop	
.label_93:
	mov	rdi, qword ptr [r15]
	call	free
	inc	rbx
	movsxd	rax, dword ptr [rip + nslots]
	add	r15, 0x10
	cmp	rbx, rax
	jl	.label_93
.label_91:
	mov	rdi, qword ptr [r14 + 8]
	mov	eax, OFFSET FLAT:slot0
	cmp	rdi, rax
	je	.label_94
	call	free
	mov	qword ptr [rip + slotvec0],  0x100
	mov	qword ptr [rip + label_95], OFFSET FLAT:slot0
.label_94:
	mov	eax, OFFSET FLAT:slotvec0
	cmp	r14, rax
	je	.label_92
	mov	rdi, r14
	call	free
	mov	qword ptr [rip + slotvec], OFFSET FLAT:slotvec0
.label_92:
	mov	dword ptr [rip + nslots],  1
	pop	rbx
	pop	r14
	pop	r15
	ret	
	.section	.text
	.align	32
	#Procedure 0x4022f1
	.globl sub_4022f1
	.type sub_4022f1, @function
sub_4022f1:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x402300

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
	#Procedure 0x402317
	.globl sub_402317
	.type sub_402317, @function
sub_402317:

	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x402320

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
	je	.label_108
	mov	edx, OFFSET FLAT:label_99
	xor	eax, eax
	mov	rdi, r14
	mov	r8, rbx
	call	__fprintf_chk
	jmp	.label_105
.label_108:
	mov	edx, OFFSET FLAT:label_106
	xor	eax, eax
	mov	rdi, r14
	mov	rcx, rbx
	mov	r8, r9
	call	__fprintf_chk
.label_105:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_110
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
	mov	esi, OFFSET FLAT:label_107
	mov	edx, 5
	call	dcgettext
	mov	rdi, rax
	mov	rsi, r14
	call	fputs_unlocked
	cmp	r12, 9
	ja	.label_111
	jmp	qword ptr [(r12 * 8) + label_112]
.label_500:
	add	rsp, 8
	jmp	.label_98
.label_111:
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
	push	qword ptr [r15 + 0x40]
	push	qword ptr [r15 + 0x38]
	push	qword ptr [r15 + 0x30]
	push	qword ptr [r15 + 0x28]
	push	qword ptr [r15 + 0x20]
	push	qword ptr [r15 + 0x18]
	call	__fprintf_chk
	add	rsp, 0x38
	jmp	.label_98
.label_501:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_97
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
.label_502:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_103
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
.label_503:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_100
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
.label_504:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_114
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
	jmp	.label_98
.label_505:
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
	push	qword ptr [r15 + 0x20]
	push	qword ptr [r15 + 0x18]
	call	__fprintf_chk
	add	rsp, 0x18
	jmp	.label_98
.label_506:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_96
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
	jmp	.label_98
.label_507:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_101
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
	jmp	.label_98
.label_509:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_104
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
	jmp	.label_98
.label_508:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_109
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
.label_98:
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	ret	
	.section	.text
	.align	32
	#Procedure 0x402678
	.globl sub_402678
	.type sub_402678, @function
sub_402678:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x402680
	.globl set_custom_quoting
	.type set_custom_quoting, @function
set_custom_quoting:

	test	rdi, rdi
	mov	eax, OFFSET FLAT:default_quoting_options
	cmovne	rax, rdi
	mov	dword ptr [rax], 0xa
	test	rsi, rsi
	je	.label_115
	test	rdx, rdx
	je	.label_115
	mov	qword ptr [rax + 0x28], rsi
	mov	qword ptr [rax + 0x30], rdx
	ret	
.label_115:
	push	rax
	call	abort
	.section	.text
	.align	32
	#Procedure 0x4026ab
	.globl sub_4026ab
	.type sub_4026ab, @function
sub_4026ab:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4026b0
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
	#Procedure 0x4026bf
	.globl sub_4026bf
	.type sub_4026bf, @function
sub_4026bf:

	nop	
	.section	.text
	.align	32
	#Procedure 0x4026c0

	.globl hard_locale
	.type hard_locale, @function
hard_locale:
	push	rbx
	xor	esi, esi
	call	setlocale
	mov	bl, 1
	test	rax, rax
	je	.label_117
	cmp	byte ptr [rax], 0x43
	jne	.label_119
	cmp	byte ptr [rax + 1], 0
	je	.label_116
.label_119:
	mov	esi, OFFSET FLAT:label_118
	mov	rdi, rax
	call	strcmp
	test	eax, eax
	jne	.label_117
.label_116:
	xor	ebx, ebx
.label_117:
	mov	eax, ebx
	pop	rbx
	ret	
	.section	.text
	.align	32
	#Procedure 0x4026f1
	.globl sub_4026f1
	.type sub_4026f1, @function
sub_4026f1:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x402700
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
	.align	32
	#Procedure 0x402775
	.globl sub_402775
	.type sub_402775, @function
sub_402775:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x402780

	.globl rpl_fflush
	.type rpl_fflush, @function
rpl_fflush:
	push	rbx
	mov	rbx, rdi
	test	rbx, rbx
	je	.label_120
	mov	rdi, rbx
	call	__freading
	test	eax, eax
	je	.label_120
	test	byte ptr [rbx + 1], 1
	je	.label_120
	xor	esi, esi
	mov	edx, 1
	mov	rdi, rbx
	call	rpl_fseeko
.label_120:
	mov	rdi, rbx
	pop	rbx
	jmp	fflush
	.section	.text
	.align	32
	#Procedure 0x4027b3
	.globl sub_4027b3
	.type sub_4027b3, @function
sub_4027b3:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4027c0
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
	.align	32
	#Procedure 0x4027d8
	.globl sub_4027d8
	.type sub_4027d8, @function
sub_4027d8:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4027e0
	.globl quotearg_n_custom
	.type quotearg_n_custom, @function
quotearg_n_custom:

	sub	rsp, 0x38
	mov	rax, qword ptr [rip + label_76]
	mov	qword ptr [rsp + 0x30], rax
	movups	xmm0, xmmword ptr [rip + label_77]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0, xmmword ptr [rip + label_78]
	movaps	xmmword ptr [rsp + 0x10], xmm0
	movups	xmm0, xmmword ptr [rip + default_quoting_options]
	movaps	xmmword ptr [rsp], xmm0
	mov	dword ptr [rsp], 0xa
	test	rsi, rsi
	je	.label_121
	test	rdx, rdx
	je	.label_121
	mov	qword ptr [rsp + 0x28], rsi
	mov	qword ptr [rsp + 0x30], rdx
	lea	rax, [rsp]
	mov	rdx, -1
	mov	rsi, rcx
	mov	rcx, rax
	call	quotearg_n_options
	add	rsp, 0x38
	ret	
.label_121:
	call	abort
	.section	.text
	.align	32
	#Procedure 0x40284e
	.globl sub_40284e
	.type sub_40284e, @function
sub_40284e:

	nop	
.label_122:
	call	abort
	.section	.text
	.align	32
	#Procedure 0x402855
	.globl sub_402855
	.type sub_402855, @function
sub_402855:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x402864
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
	je	.label_122
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
.label_125:
	call	xalloc_die
	.section	.text
	.align	32
	#Procedure 0x4028c5

	.globl xrealloc
	.type xrealloc, @function
xrealloc:
	push	rbx
	mov	rbx, rsi
	test	rdi, rdi
	je	.label_124
	test	rbx, rbx
	jne	.label_124
	call	free
	xor	eax, eax
	pop	rbx
	ret	
.label_124:
	mov	rsi, rbx
	call	realloc
	test	rbx, rbx
	je	.label_123
	test	rax, rax
	je	.label_125
.label_123:
	pop	rbx
	ret	
	.section	.text
	.align	32
	#Procedure 0x4028f0

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
	mov	ebp, dword ptr [rip + opterr]
	mov	dword ptr [rip + opterr],  1
	mov	eax, OFFSET FLAT:label_126
	mov	edx, OFFSET FLAT:label_127
	test	r9b, r9b
	cmovne	rdx, rax
	mov	ecx, OFFSET FLAT:long_options
	xor	r8d, r8d
	call	getopt_long
	cmp	eax, -1
	je	.label_130
	mov	rcx, qword ptr [rsp + 0x100]
	cmp	eax, 0x68
	je	.label_132
	cmp	eax, 0x76
	je	.label_128
	mov	edi, dword ptr [rip + exit_failure]
	jmp	.label_129
.label_132:
	xor	edi, edi
.label_129:
	call	rcx
.label_130:
	mov	dword ptr [rip + opterr],  ebp
	add	rsp, 0xd8
	pop	rbx
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_128:
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
	.section	.text
	.align	32
	#Procedure 0x4029ec
	.globl sub_4029ec
	.type sub_4029ec, @function
sub_4029ec:

	nop	dword ptr [rax]
.label_136:
	mov	rcx, qword ptr [rip + stderr]
	mov	edi, OFFSET FLAT:label_133
	mov	esi, 0x37
	mov	edx, 1
	call	fwrite
	call	abort
	.section	.text
	.align	32
	#Procedure 0x402a10
	.globl sub_402a10
	.type sub_402a10, @function
sub_402a10:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x402a1f

	.globl set_program_name
	.type set_program_name, @function
set_program_name:
	push	r14
	push	rbx
	push	rax
	mov	rbx, rdi
	test	rbx, rbx
	je	.label_136
	mov	esi, 0x2f
	mov	rdi, rbx
	call	strrchr
	test	rax, rax
	lea	r14, [rax + 1]
	cmove	r14, rbx
	mov	rax, r14
	sub	rax, rbx
	cmp	rax, 7
	jl	.label_135
	lea	rdi, [r14 - 7]
	mov	esi, OFFSET FLAT:label_138
	mov	edx, 7
	call	strncmp
	test	eax, eax
	jne	.label_135
	mov	esi, OFFSET FLAT:label_137
	mov	edx, 3
	mov	rdi, r14
	call	strncmp
	test	eax, eax
	jne	.label_134
	add	r14, 3
	mov	qword ptr [rip + __progname],  r14
.label_134:
	mov	rbx, r14
.label_135:
	mov	qword ptr [rip + program_name],  rbx
	mov	qword ptr [rip + __progname_full],  rbx
	add	rsp, 8
	pop	rbx
	pop	r14
	ret	
.label_139:
	call	xalloc_die
	.section	.text
	.align	32
	#Procedure 0x402aa5
	.globl sub_402aa5
	.type sub_402aa5, @function
sub_402aa5:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x402ab3

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
	je	.label_140
	test	r15, r15
	je	.label_139
.label_140:
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
	.align	32
	#Procedure 0x402af0

	.globl close_stdout
	.type close_stdout, @function
close_stdout:
	push	rbp
	push	rbx
	push	rax
	mov	rdi, qword ptr [rip + stdout]
	call	close_stream
	test	eax, eax
	je	.label_147
	mov	bl, byte ptr [rip + ignore_EPIPE]
	call	__errno_location
	mov	rbp, rax
	cmp	bl, 0
	je	.label_144
	cmp	dword ptr [rbp], 0x20
	jne	.label_144
.label_147:
	mov	rdi, qword ptr [rip + stderr]
	call	close_stream
	test	eax, eax
	jne	.label_143
	add	rsp, 8
	pop	rbx
	pop	rbp
	ret	
.label_144:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_145
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
	mov	rdi, qword ptr [rip + file_name]
	test	rdi, rdi
	mov	ebp, dword ptr [rbp]
	jne	.label_141
	xor	edi, edi
	mov	edx, OFFSET FLAT:label_142
	xor	eax, eax
	mov	esi, ebp
	mov	rcx, rbx
	call	error
	mov	edi, dword ptr [rip + exit_failure]
	call	_exit
.label_143:
	mov	edi, dword ptr [rip + exit_failure]
	call	_exit
.label_141:
	call	quotearg_colon
	mov	rcx, rax
	xor	edi, edi
	mov	edx, OFFSET FLAT:label_146
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
	#Procedure 0x402bb0
	.globl close_stdout_set_ignore_EPIPE
	.type close_stdout_set_ignore_EPIPE, @function
close_stdout_set_ignore_EPIPE:

	mov	byte ptr [rip + ignore_EPIPE],  dil
	ret	
	.section	.text
	.align	32
	#Procedure 0x402bb8
	.globl sub_402bb8
	.type sub_402bb8, @function
sub_402bb8:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x402bc0

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
	jne	.label_149
	test	eax, eax
	sete	cl
	neg	eax
	sbb	ebx, ebx
	test	r14, r14
	jne	.label_148
	test	cl, cl
	jne	.label_148
	call	__errno_location
	xor	ecx, ecx
	cmp	dword ptr [rax], 9
	mov	ebx, 0xffffffff
	cmove	ebx, ecx
	jmp	.label_148
.label_149:
	mov	ebx, 0xffffffff
	test	eax, eax
	jne	.label_148
	call	__errno_location
	mov	dword ptr [rax], 0
.label_148:
	mov	eax, ebx
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x402c20
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
	je	.label_150
	movaps	xmmword ptr [rsp + 0x50], xmm0
	movaps	xmmword ptr [rsp + 0x60], xmm1
	movaps	xmmword ptr [rsp + 0x70], xmm2
	movaps	xmmword ptr [rsp + 0x80], xmm3
	movaps	xmmword ptr [rsp + 0x90], xmm4
	movaps	xmmword ptr [rsp + 0xa0], xmm5
	movaps	xmmword ptr [rsp + 0xb0], xmm6
	movaps	xmmword ptr [rsp + 0xc0], xmm7
.label_150:
	mov	ebp, dword ptr [rip + opterr]
	mov	dword ptr [rip + opterr],  0
	cmp	edi, 2
	jne	.label_152
	mov	edi, 2
	mov	edx, OFFSET FLAT:label_127
	mov	ecx, OFFSET FLAT:long_options
	xor	r8d, r8d
	call	getopt_long
	cmp	eax, 0x68
	je	.label_151
	cmp	eax, 0x76
	jne	.label_152
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
.label_151:
	xor	edi, edi
	call	rbx
.label_152:
	mov	dword ptr [rip + opterr],  ebp
	mov	dword ptr [rip + optind],  0
	add	rsp, 0xd0
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x402d16
	.globl sub_402d16
	.type sub_402d16, @function
sub_402d16:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x402d20
	.globl quotearg_n
	.type quotearg_n, @function
quotearg_n:

	mov	rdx, -1
	mov	ecx, OFFSET FLAT:default_quoting_options
	jmp	quotearg_n_options
	.section	.text
	.align	32
	#Procedure 0x402d2e
	.globl sub_402d2e
	.type sub_402d2e, @function
sub_402d2e:

	nop	
	.section	.text
	.align	32
	#Procedure 0x402d30

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
	js	.label_156
	mov	eax, dword ptr [r13]
	mov	rbp, qword ptr [rip + slotvec]
	cmp	dword ptr [rip + nslots],  r12d
	mov	qword ptr [rsp + 0x18], r13
	mov	dword ptr [rsp], eax
	mov	qword ptr [rsp + 0x10], rbx
	mov	qword ptr [rsp + 8], r15
	jg	.label_159
	cmp	r12d, 0x7fffffff
	je	.label_154
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
	jne	.label_157
	movups	xmm0, xmmword ptr [rip + slotvec0]
	movups	xmmword ptr [r14], xmm0
.label_157:
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
.label_159:
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
	jbe	.label_155
	mov	rax, qword ptr [rsp + 0x18]
	mov	ebp, dword ptr [rsp]
	jmp	.label_158
.label_155:
	lea	rax, [rbp + r13]
	lea	r12, [rbp + r13 + 8]
	inc	r15
	mov	qword ptr [rax], r15
	mov	eax, OFFSET FLAT:slot0
	cmp	r14, rax
	mov	ebp, dword ptr [rsp]
	je	.label_153
	mov	rdi, r14
	call	free
.label_153:
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
.label_158:
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
.label_156:
	call	abort
.label_154:
	call	xalloc_die
	.section	.text
	.align	32
	#Procedure 0x402eed
	.globl sub_402eed
	.type sub_402eed, @function
sub_402eed:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x402ef0

	.globl xmalloc
	.type xmalloc, @function
xmalloc:
	push	rbx
	mov	rbx, rdi
	call	malloc
	test	rbx, rbx
	je	.label_160
	test	rax, rax
	je	.label_161
.label_160:
	pop	rbx
	ret	
.label_161:
	call	xalloc_die
	.section	.text
	.align	32
	#Procedure 0x402f0a
	.globl sub_402f0a
	.type sub_402f0a, @function
sub_402f0a:

	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x402f10

	.globl init_tokenbuffer
	.type init_tokenbuffer, @function
init_tokenbuffer:
	xorps	xmm0, xmm0
	movups	xmmword ptr [rdi], xmm0
	ret	
	.section	.text
	.align	32
	#Procedure 0x402f17
	.globl sub_402f17
	.type sub_402f17, @function
sub_402f17:

	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x402f20

	.globl detect_loop
	.type detect_loop, @function
detect_loop:
	push	r15
	push	r14
	push	rbx
	mov	r14, rdi
	cmp	qword ptr [r14 + 0x20], 0
	je	.label_162
	mov	r15, qword ptr [rip + loop]
	test	r15, r15
	je	.label_167
	mov	rax, qword ptr [r14 + 0x30]
	test	rax, rax
	je	.label_162
	lea	rbx, [r14 + 0x30]
	nop	dword ptr [rax]
.label_168:
	cmp	qword ptr [rax], r15
	je	.label_166
	mov	rbx, rax
	add	rbx, 8
	mov	rax, qword ptr [rbx]
	test	rax, rax
	jne	.label_168
	jmp	.label_162
.label_166:
	cmp	qword ptr [r14 + 0x28], 0
	je	.label_163
	nop	dword ptr [rax]
.label_170:
	mov	rcx, qword ptr [r15]
	mov	r15, qword ptr [r15 + 0x28]
	xor	edi, edi
	xor	esi, esi
	mov	edx, OFFSET FLAT:label_142
	xor	eax, eax
	call	error
	mov	rax, qword ptr [rip + loop]
	cmp	rax, r14
	je	.label_164
	mov	qword ptr [rax + 0x28], 0
	mov	qword ptr [rip + loop],  r15
	test	r15, r15
	mov	al, 1
	jne	.label_170
	jmp	.label_165
.label_163:
	mov	qword ptr [r14 + 0x28], r15
.label_167:
	mov	qword ptr [rip + loop],  r14
.label_162:
	xor	eax, eax
.label_165:
	pop	rbx
	pop	r14
	pop	r15
	ret	
.label_164:
	mov	rax, qword ptr [rbx]
	mov	rcx, qword ptr [rax]
	dec	qword ptr [rcx + 0x20]
	mov	rax, qword ptr [rax + 8]
	mov	qword ptr [rbx], rax
	mov	al, 1
	test	r14, r14
	je	.label_165
	nop	word ptr cs:[rax + rax]
.label_169:
	mov	rcx, qword ptr [r14 + 0x28]
	mov	qword ptr [r14 + 0x28], 0
	test	rcx, rcx
	mov	r14, rcx
	jne	.label_169
	mov	qword ptr [rip + loop],  0
	jmp	.label_165
	.section	.text
	.align	32
	#Procedure 0x403001
	.globl sub_403001
	.type sub_403001, @function
sub_403001:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x403010

	.globl rpl_freopen
	.type rpl_freopen, @function
rpl_freopen:
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
	je	.label_172
	test	rbx, rbx
	je	.label_172
	mov	rdi, rbx
	call	fileno
	mov	ebp, eax
	mov	edi, ebp
	mov	esi, ebp
	call	dup2
	test	eax, eax
	jns	.label_172
	call	__errno_location
	cmp	dword ptr [rax], 9
	jne	.label_172
	mov	edi, OFFSET FLAT:label_16
	mov	esi, 0x80000
	xor	eax, eax
	call	open
	mov	r12d, eax
	cmp	r12d, ebp
	je	.label_171
	mov	edi, r12d
	mov	esi, ebp
	call	dup2
	mov	ebp, eax
	mov	edi, r12d
	call	close
	test	ebp, ebp
	js	.label_172
.label_171:
	mov	rdi, r15
	mov	rsi, r14
	mov	rdx, rbx
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	pop	rbp
	jmp	freopen
.label_172:
	mov	rax, rbx
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x4030a4
	.globl sub_4030a4
	.type sub_4030a4, @function
sub_4030a4:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4030b0

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
	je	.label_173
	cmp	r15, -2
	jb	.label_173
	xor	edi, edi
	call	hard_locale
	test	al, al
	jne	.label_173
	movzx	eax, byte ptr [r14]
	mov	dword ptr [rbx], eax
	mov	r15d, 1
.label_173:
	mov	rax, r15
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	ret	
	.section	.text
	.align	32
	#Procedure 0x403106
	.globl sub_403106
	.type sub_403106, @function
sub_403106:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x403110
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
	je	.label_174
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
.label_174:
	call	abort
	.section	.text
	.align	32
	#Procedure 0x403178
	.globl sub_403178
	.type sub_403178, @function
sub_403178:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x403180
	.globl readtokens
	.type readtokens, @function
readtokens:

	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x58
	mov	qword ptr [rsp + 0x30], r9
	mov	qword ptr [rsp + 0x28], r8
	mov	rbx, rcx
	mov	qword ptr [rsp + 0x48], rdx
	mov	qword ptr [rsp + 0x40], rdi
	test	rsi, rsi
	lea	rax, [rsi + 1]
	mov	ebp, 0x40
	cmovne	rbp, rax
	mov	rax, rbp
	shr	rax, 0x3c
	jne	.label_175
	lea	r14, [rbp*8]
	mov	rdi, r14
	call	xmalloc
	mov	qword ptr [rsp], rax
	mov	rdi, r14
	call	xmalloc
	mov	qword ptr [rsp + 8], rax
	xorps	xmm0, xmm0
	movaps	xmmword ptr [rsp + 0x10], xmm0
	xor	r14d, r14d
	mov	qword ptr [rsp + 0x38], rbx
	jmp	.label_182
	.section	.text
	.align	32
	#Procedure 0x4031f5
	.globl sub_4031f5
	.type sub_4031f5, @function
sub_4031f5:

	nop	word ptr cs:[rax + rax]
.label_176:
	mov	rdi, rbx
	call	xmalloc
	mov	r13, rax
	mov	rax, qword ptr [rsp + 8]
	mov	qword ptr [rax + r14*8], r12
	mov	rsi, qword ptr [rsp + 0x18]
	mov	rdi, r13
	mov	rdx, rbx
	call	memcpy
	mov	qword ptr [rbp + r14*8], r13
	inc	r14
	mov	rbx, r15
	mov	rbp, qword ptr [rsp + 0x50]
.label_182:
	mov	rdi, qword ptr [rsp + 0x40]
	mov	rsi, qword ptr [rsp + 0x48]
	mov	rdx, rbx
	lea	rcx, [rsp + 0x10]
	call	readtoken
	cmp	r14, rbp
	jb	.label_178
	mov	r15, rax
	cmp	qword ptr [rsp], 0
	je	.label_179
	movabs	rax, 0xaaaaaaaaaaaaaaa
	cmp	rbp, rax
	jae	.label_175
	mov	rax, rbp
	shr	rax, 1
	lea	rcx, [rbp + rax]
	lea	rbp, [rbp + rax + 1]
	lea	r13, [rcx*8 + 8]
	mov	rdi, qword ptr [rsp]
	mov	rsi, r13
	call	xrealloc
	mov	qword ptr [rsp], rax
	movabs	rax, 0xfffffffffffffff
	cmp	rbp, rax
	jbe	.label_180
	jmp	.label_175
.label_179:
	test	rbp, rbp
	mov	eax, 0x10
	cmove	rbp, rax
	movabs	rax, 0xfffffffffffffff
	cmp	rbp, rax
	ja	.label_183
	lea	r13, [rbp*8]
	mov	rdi, qword ptr [rsp]
	mov	rsi, r13
	call	xrealloc
	mov	qword ptr [rsp], rax
.label_180:
	mov	rdi, qword ptr [rsp + 8]
	mov	rsi, r13
	call	xrealloc
	mov	qword ptr [rsp + 8], rax
	mov	rbx, qword ptr [rsp + 0x38]
	mov	rax, r15
.label_178:
	cmp	rax, -1
	je	.label_184
	mov	qword ptr [rsp + 0x50], rbp
	mov	r15, rbx
	mov	rbp, qword ptr [rsp]
	mov	rbx, rax
	inc	rbx
	mov	r12, rax
	jns	.label_176
.label_175:
	call	xalloc_die
.label_184:
	mov	rbp, qword ptr [rsp]
	mov	qword ptr [rbp + r14*8], 0
	mov	rbx, qword ptr [rsp + 8]
	mov	qword ptr [rbx + r14*8], 0
	mov	rdi, qword ptr [rsp + 0x18]
	call	free
	mov	rax, qword ptr [rsp + 0x28]
	mov	qword ptr [rax], rbp
	mov	rax, qword ptr [rsp + 0x30]
	test	rax, rax
	je	.label_177
	mov	qword ptr [rax], rbx
	jmp	.label_181
.label_177:
	mov	rdi, rbx
	call	free
.label_181:
	mov	rax, r14
	add	rsp, 0x58
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_183:
	call	xalloc_die
	.section	.text
	.align	32
	#Procedure 0x40337b
	.globl sub_40337b
	.type sub_40337b, @function
sub_40337b:

	nop	dword ptr [rax + rax]
.label_185:
	call	abort
	.section	.text
	.align	32
	#Procedure 0x403385
	.globl sub_403385
	.type sub_403385, @function
sub_403385:

	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40338b
	.globl quotearg_n_custom_mem
	.type quotearg_n_custom_mem, @function
quotearg_n_custom_mem:

	sub	rsp, 0x38
	mov	rax, qword ptr [rip + label_76]
	mov	qword ptr [rsp + 0x30], rax
	movups	xmm0, xmmword ptr [rip + label_77]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0, xmmword ptr [rip + label_78]
	movaps	xmmword ptr [rsp + 0x10], xmm0
	movups	xmm0, xmmword ptr [rip + default_quoting_options]
	movaps	xmmword ptr [rsp], xmm0
	mov	dword ptr [rsp], 0xa
	test	rsi, rsi
	je	.label_185
	test	rdx, rdx
	je	.label_185
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
	.align	32
	#Procedure 0x4033f0
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
	#Procedure 0x4033ff
	.globl sub_4033ff
	.type sub_4033ff, @function
sub_4033ff:

	nop	
	.section	.text
	.align	32
	#Procedure 0x403400
	.globl quotearg_char
	.type quotearg_char, @function
quotearg_char:

	sub	rsp, 0x38
	mov	ecx, esi
	mov	rax, rdi
	mov	rdx, qword ptr [rip + label_76]
	mov	qword ptr [rsp + 0x30], rdx
	movups	xmm0, xmmword ptr [rip + label_77]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0, xmmword ptr [rip + label_78]
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
	.align	32
	#Procedure 0x40346f
	.globl sub_40346f
	.type sub_40346f, @function
sub_40346f:

	nop	
	.section	.text
	.align	32
	#Procedure 0x403470
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
	#Procedure 0x4034a6
	.globl sub_4034a6
	.type sub_4034a6, @function
sub_4034a6:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4034b0

	.globl main
	.type main, @function
main:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x48
	mov	rbx, rsi
	mov	ebp, edi
	mov	rdi, qword ptr [rbx]
	call	set_program_name
	mov	edi, 6
	mov	esi, OFFSET FLAT:label_126
	call	setlocale
	mov	edi, OFFSET FLAT:label_198
	mov	esi, OFFSET FLAT:label_199
	call	bindtextdomain
	mov	edi, OFFSET FLAT:label_198
	call	textdomain
	mov	edi, OFFSET FLAT:close_stdout
	call	atexit
	mov	r8, qword ptr [rip + Version]
	sub	rsp, 8
	mov	edx, OFFSET FLAT:label_264
	mov	ecx, OFFSET FLAT:label_265
	mov	r9d, 1
	mov	eax, 0
	mov	edi, ebp
	mov	rsi, rbx
	push	0
	push	OFFSET FLAT:label_266
	push	OFFSET FLAT:usage
	call	parse_gnu_standard_options_only
	add	rsp, 0x20
	movsxd	rax, dword ptr [rip + optind]
	mov	ecx, ebp
	sub	ecx, eax
	cmp	ecx, 2
	jge	.label_209
	mov	r15d, OFFSET FLAT:label_220
	cmp	eax, ebp
	je	.label_221
	mov	r15, qword ptr [rbx + rax*8]
.label_221:
	movzx	eax, byte ptr [r15]
	mov	ebx, 0x2d
	sub	ebx, eax
	jne	.label_224
	movzx	ebx, byte ptr [r15 + 1]
	neg	ebx
.label_224:
	mov	edi, 0x38
	call	xmalloc
	mov	r12, rax
	mov	dword ptr [rsp + 0x1c], ebx
	test	ebx, ebx
	xorps	xmm0, xmm0
	movups	xmmword ptr [r12 + 0x20], xmm0
	mov	qword ptr [r12 + 0x30], 0
	movups	xmmword ptr [r12 + 0xc], xmm0
	movups	xmmword ptr [r12], xmm0
	je	.label_233
	mov	rdx, qword ptr [rip + stdin]
	mov	esi, OFFSET FLAT:label_241
	mov	rdi, r15
	call	freopen_safer
	test	rax, rax
	je	.label_248
.label_233:
	mov	rdi, qword ptr [rip + stdin]
	mov	esi, 2
	call	fadvise
	lea	rbx, [rsp + 0x38]
	mov	rdi, rbx
	call	init_tokenbuffer
	jmp	.label_257
.label_202:
	inc	qword ptr [r13 + 0x20]
	mov	edi, 0x10
	call	xmalloc
	mov	qword ptr [rax], r13
	mov	rcx, qword ptr [rbp + 0x30]
	mov	qword ptr [rax + 8], rcx
	mov	qword ptr [rbp + 0x30], rax
	nop	dword ptr [rax]
.label_257:
	xor	eax, eax
.label_193:
	mov	rbp, rax
	mov	rdi, qword ptr [rip + stdin]
	mov	esi, OFFSET FLAT:label_187
	mov	edx, 3
	mov	rcx, rbx
	call	readtoken
	cmp	rax, -1
	je	.label_194
	test	rax, rax
	je	.label_201
	test	r12, r12
	je	.label_208
	mov	qword ptr [rsp + 0x20], rbp
	mov	rbx, qword ptr [rsp + 0x40]
	mov	rbp, qword ptr [r12 + 0x10]
	test	rbp, rbp
	mov	qword ptr [rsp + 0x30], r15
	mov	qword ptr [rsp + 0x28], r12
	je	.label_214
	mov	rsi, qword ptr [rbp]
	mov	rdi, rbx
	call	strcmp
	test	eax, eax
	je	.label_227
	mov	qword ptr [rsp + 0x10], rbx
	mov	r14, rbp
	mov	r15, r12
	nop	word ptr [rax + rax]
.label_247:
	lea	r13, [rbp + 8]
	lea	r12, [rbp + 0x10]
	test	eax, eax
	mov	rcx, r12
	cmovs	rcx, r13
	mov	rbx, qword ptr [rcx]
	test	rbx, rbx
	je	.label_186
	cmp	dword ptr [rbx + 0x18], 0
	cmovne	r15, rbp
	cmovne	r14, rbx
	mov	rsi, qword ptr [rbx]
	mov	rdi, qword ptr [rsp + 0x10]
	call	strcmp
	test	eax, eax
	mov	rbp, rbx
	mov	r13, rbx
	jne	.label_247
	jmp	.label_189
.label_214:
	mov	edi, 0x38
	call	xmalloc
	mov	r13, rax
	test	rbx, rbx
	mov	eax, 0
	je	.label_253
	mov	rdi, rbx
	call	xstrdup
.label_253:
	mov	qword ptr [r13], rax
	xorps	xmm0, xmm0
	movups	xmmword ptr [r13 + 8], xmm0
	mov	dword ptr [r13 + 0x18], 0
	movups	xmmword ptr [r13 + 0x20], xmm0
	mov	qword ptr [r13 + 0x30], 0
	mov	qword ptr [r12 + 0x10], r13
	jmp	.label_189
.label_227:
	mov	r13, rbp
	jmp	.label_189
.label_186:
	mov	ebp, eax
	mov	edi, 0x38
	call	xmalloc
	mov	rbx, rax
	mov	rdi, qword ptr [rsp + 0x10]
	test	rdi, rdi
	mov	eax, 0
	je	.label_195
	call	xstrdup
.label_195:
	mov	qword ptr [rbx], rax
	xorps	xmm0, xmm0
	movups	xmmword ptr [rbx + 8], xmm0
	mov	dword ptr [rbx + 0x18], 0
	movups	xmmword ptr [rbx + 0x20], xmm0
	mov	qword ptr [rbx + 0x30], 0
	test	ebp, ebp
	mov	qword ptr [rsp + 8], r15
	js	.label_211
	mov	qword ptr [r12], rbx
	jmp	.label_226
.label_211:
	mov	qword ptr [r13], rbx
.label_226:
	mov	r13, rbx
	mov	r15, r14
	mov	rsi, qword ptr [r15]
	mov	rbp, qword ptr [rsp + 0x10]
	mov	rdi, rbp
	call	strcmp
	mov	r14d, eax
	test	r14d, r14d
	je	.label_234
	lea	rax, [r15 + 0x10]
	lea	rcx, [r15 + 8]
	test	r14d, r14d
	cmovs	rax, rcx
	mov	rax, qword ptr [rax]
	mov	r12, rax
	cmp	rax, r13
	je	.label_238
	mov	rbx, r12
	nop	word ptr cs:[rax + rax]
.label_260:
	mov	rsi, qword ptr [rbx]
	mov	rdi, rbp
	call	strcmp
	test	eax, eax
	je	.label_251
	js	.label_240
	mov	dword ptr [rbx + 0x18], 1
	add	rbx, 0x10
	jmp	.label_252
	.section	.text
	.align	32
	#Procedure 0x4037d2
	.globl sub_4037d2
	.type sub_4037d2, @function
sub_4037d2:

	nop	word ptr cs:[rax + rax]
.label_240:
	mov	dword ptr [rbx + 0x18], 0xffffffff
	add	rbx, 8
.label_252:
	mov	rbx, qword ptr [rbx]
	cmp	rbx, r13
	jne	.label_260
.label_238:
	sar	r14d, 0x1f
	or	r14d, 1
	mov	eax, dword ptr [r15 + 0x18]
	test	eax, eax
	je	.label_261
	mov	ecx, r14d
	neg	ecx
	cmp	eax, ecx
	jne	.label_188
.label_261:
	add	eax, r14d
	mov	dword ptr [r15 + 0x18], eax
	jmp	.label_189
.label_188:
	cmp	dword ptr [r12 + 0x18], r14d
	jne	.label_192
	test	r14d, r14d
	js	.label_229
	mov	rax, qword ptr [r12 + 8]
	mov	qword ptr [r15 + 0x10], rax
	mov	qword ptr [r12 + 8], r15
	jmp	.label_197
.label_192:
	test	r14d, r14d
	js	.label_210
	mov	rax, qword ptr [r12 + 8]
	mov	rdx, qword ptr [rax + 0x10]
	mov	qword ptr [r12 + 8], rdx
	mov	qword ptr [rax + 0x10], r12
	mov	rdx, qword ptr [rax + 8]
	mov	qword ptr [r15 + 0x10], rdx
	mov	qword ptr [rax + 8], r15
	jmp	.label_213
.label_229:
	mov	rax, qword ptr [r12 + 0x10]
	mov	qword ptr [r15 + 8], rax
	mov	qword ptr [r12 + 0x10], r15
.label_197:
	mov	rcx, qword ptr [rsp + 8]
	mov	dword ptr [r12 + 0x18], 0
	mov	dword ptr [r15 + 0x18], 0
	mov	rax, r12
	jmp	.label_228
.label_210:
	mov	rax, qword ptr [r12 + 0x10]
	mov	rdx, qword ptr [rax + 8]
	mov	qword ptr [r12 + 0x10], rdx
	mov	qword ptr [rax + 8], r12
	mov	rdx, qword ptr [rax + 0x10]
	mov	qword ptr [r15 + 8], rdx
	mov	qword ptr [rax + 0x10], r15
.label_213:
	mov	dword ptr [r15 + 0x18], 0
	mov	dword ptr [r12 + 0x18], 0
	mov	edx, dword ptr [rax + 0x18]
	cmp	edx, r14d
	jne	.label_239
	mov	dword ptr [r15 + 0x18], ecx
	jmp	.label_223
.label_239:
	cmp	edx, ecx
	jne	.label_223
	mov	dword ptr [r12 + 0x18], r14d
.label_223:
	mov	dword ptr [rax + 0x18], 0
	mov	rcx, qword ptr [rsp + 8]
.label_228:
	cmp	r15, qword ptr [rcx + 0x10]
	je	.label_218
	mov	qword ptr [rcx + 8], rax
	jmp	.label_189
.label_218:
	mov	qword ptr [rcx + 0x10], rax
	nop	word ptr cs:[rax + rax]
.label_189:
	mov	rbp, qword ptr [rsp + 0x20]
	test	rbp, rbp
	mov	rax, r13
	mov	r15, qword ptr [rsp + 0x30]
	mov	r12, qword ptr [rsp + 0x28]
	lea	rbx, [rsp + 0x38]
	je	.label_193
	mov	rdi, qword ptr [rbp]
	mov	rsi, qword ptr [r13]
	call	strcmp
	test	eax, eax
	mov	eax, 0
	je	.label_193
	jmp	.label_202
.label_194:
	test	rbp, rbp
	jne	.label_207
	mov	r14, qword ptr [r12 + 0x10]
	test	r14, r14
	je	.label_212
	mov	esi, OFFSET FLAT:count_items
	mov	rdi, r14
	call	recurse_tree
.label_212:
	xor	ebp, ebp
.label_215:
	test	r14, r14
	mov	rax, qword ptr [rip + n_strings]
	je	.label_222
	nop	word ptr cs:[rax + rax]
.label_200:
	test	rax, rax
	je	.label_217
	mov	esi, OFFSET FLAT:scan_zeros
	mov	rdi, r14
	call	recurse_tree
	mov	rcx, qword ptr [rip + head]
	test	rcx, rcx
	je	.label_237
	nop	word ptr cs:[rax + rax]
.label_255:
	mov	rdi, qword ptr [rcx]
	mov	rbx, qword ptr [rcx + 0x30]
	call	puts
	mov	rcx, qword ptr [rip + head]
	mov	qword ptr [rcx], 0
	mov	rax, qword ptr [rip + n_strings]
	dec	rax
	mov	qword ptr [rip + n_strings],  rax
	jmp	.label_246
	.section	.text
	.align	32
	#Procedure 0x4039cd
	.globl sub_4039cd
	.type sub_4039cd, @function
sub_4039cd:

	nop	dword ptr [rax]
.label_256:
	mov	rbx, qword ptr [rbx + 8]
.label_246:
	test	rbx, rbx
	je	.label_254
	mov	rdx, qword ptr [rbx]
	dec	qword ptr [rdx + 0x20]
	jne	.label_256
	mov	rsi, qword ptr [rip + zeros]
	mov	qword ptr [rsi + 0x28], rdx
	mov	qword ptr [rip + zeros],  rdx
	jmp	.label_256
	.section	.text
	.align	32
	#Procedure 0x4039f6
	.globl sub_4039f6
	.type sub_4039f6, @function
sub_4039f6:

	nop	word ptr cs:[rax + rax]
.label_254:
	mov	rcx, qword ptr [rcx + 0x28]
	mov	qword ptr [rip + head],  rcx
	test	rcx, rcx
	jne	.label_255
	jmp	.label_249
	.section	.text
	.align	32
	#Procedure 0x403a12
	.globl sub_403a12
	.type sub_403a12, @function
sub_403a12:

	nop	word ptr cs:[rax + rax]
.label_237:
	mov	rax, qword ptr [rip + n_strings]
.label_249:
	test	rax, rax
	mov	eax, 0
	je	.label_200
	jmp	.label_216
	.section	.text
	.align	32
	#Procedure 0x403a3a
	.globl sub_403a3a
	.type sub_403a3a, @function
sub_403a3a:

	nop	word ptr [rax + rax]
.label_222:
	test	rax, rax
	je	.label_217
	mov	rcx, qword ptr [rip + head]
	jmp	.label_219
	.section	.text
	.align	32
	#Procedure 0x403a52
	.globl sub_403a52
	.type sub_403a52, @function
sub_403a52:

	nop	word ptr cs:[rax + rax]
.label_244:
	mov	rcx, qword ptr [rcx + 0x28]
	mov	qword ptr [rip + head],  rcx
.label_219:
	test	rcx, rcx
	je	.label_236
	mov	rdi, qword ptr [rcx]
	mov	rbx, qword ptr [rcx + 0x30]
	call	puts
	mov	rcx, qword ptr [rip + head]
	mov	qword ptr [rcx], 0
	mov	rax, qword ptr [rip + n_strings]
	dec	rax
	mov	qword ptr [rip + n_strings],  rax
	jmp	.label_235
	.section	.text
	.align	32
	#Procedure 0x403a9d
	.globl sub_403a9d
	.type sub_403a9d, @function
sub_403a9d:

	nop	dword ptr [rax]
.label_206:
	mov	rbx, qword ptr [rbx + 8]
.label_235:
	test	rbx, rbx
	je	.label_244
	mov	rdx, qword ptr [rbx]
	dec	qword ptr [rdx + 0x20]
	jne	.label_206
	mov	rsi, qword ptr [rip + zeros]
	mov	qword ptr [rsi + 0x28], rdx
	mov	qword ptr [rip + zeros],  rdx
	jmp	.label_206
	.section	.text
	.align	32
	#Procedure 0x403ac6
	.globl sub_403ac6
	.type sub_403ac6, @function
sub_403ac6:

	nop	word ptr cs:[rax + rax]
.label_236:
	test	rax, rax
	mov	eax, 0
	je	.label_222
.label_216:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_258
	mov	edx, 5
	call	dcgettext
	mov	rbp, rax
	xor	edi, edi
	mov	esi, 3
	mov	rdx, r15
	call	quotearg_n_style_colon
	mov	rcx, rax
	xor	edi, edi
	xor	esi, esi
	xor	eax, eax
	mov	rdx, rbp
	call	error
	test	r14, r14
	je	.label_263
	nop	word ptr [rax + rax]
.label_190:
	mov	esi, OFFSET FLAT:detect_loop
	mov	rdi, r14
	call	recurse_tree
	mov	ebp, 1
	cmp	qword ptr [rip + loop],  0
	jne	.label_190
	jmp	.label_215
.label_263:
	mov	ebp, 1
	cmp	qword ptr [rip + loop],  0
	je	.label_215
	nop	word ptr cs:[rax + rax]
.label_196:
	jmp	.label_196
.label_217:
	mov	rdi, qword ptr [rip + stdin]
	call	rpl_fclose
	test	eax, eax
	jne	.label_231
	mov	eax, ebp
	add	rsp, 0x48
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_251:
	mov	edi, OFFSET FLAT:label_203
	mov	esi, OFFSET FLAT:label_204
	mov	edx, 0xb6
	mov	ecx, OFFSET FLAT:label_205
	call	__assert_fail
.label_201:
	mov	edi, OFFSET FLAT:label_242
	mov	esi, OFFSET FLAT:label_204
	mov	edx, 0x1cd
	mov	ecx, OFFSET FLAT:label_243
	call	__assert_fail
.label_209:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_250
	mov	edx, 5
	call	dcgettext
	mov	rbp, rax
	movsxd	rax, dword ptr [rip + optind]
	mov	rdi, qword ptr [rbx + rax*8 + 8]
	call	quote
	mov	rcx, rax
	xor	edi, edi
	xor	esi, esi
	xor	eax, eax
	mov	rdx, rbp
	call	error
	mov	edi, 1
	call	usage
.label_208:
	mov	edi, OFFSET FLAT:label_262
	mov	esi, OFFSET FLAT:label_204
	mov	edx, 0x84
	mov	ecx, OFFSET FLAT:label_205
	call	__assert_fail
.label_207:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_191
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
	xor	edi, edi
	mov	esi, 3
	mov	rdx, r15
	call	quotearg_n_style_colon
	mov	rcx, rax
	mov	edi, 1
	xor	esi, esi
	xor	eax, eax
	mov	rdx, rbx
	call	error
.label_231:
	mov	rbp, r15
	call	__errno_location
	mov	ebx, dword ptr [rax]
	cmp	dword ptr [rsp + 0x1c], 0
	jne	.label_259
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_225
	mov	edx, 5
	call	dcgettext
	jmp	.label_230
.label_248:
	call	__errno_location
	mov	ebx, dword ptr [rax]
	xor	edi, edi
	mov	esi, 3
	mov	rdx, r15
	jmp	.label_232
.label_259:
	xor	edi, edi
	mov	esi, 3
	mov	rdx, rbp
.label_232:
	call	quotearg_n_style_colon
.label_230:
	mov	rcx, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:label_142
	xor	eax, eax
	mov	esi, ebx
	call	error
.label_234:
	mov	edi, OFFSET FLAT:label_245
	mov	esi, OFFSET FLAT:label_204
	mov	edx, 0xa8
	mov	ecx, OFFSET FLAT:label_205
	call	__assert_fail
	.section	.text
	.align	32
	#Procedure 0x403cbe
	.globl sub_403cbe
	.type sub_403cbe, @function
sub_403cbe:

	nop	
	.section	.text
	.align	32
	#Procedure 0x403cc0
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
	je	.label_267
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
.label_267:
	call	abort
	.section	.text
	.align	32
	#Procedure 0x403d28
	.globl sub_403d28
	.type sub_403d28, @function
sub_403d28:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x403d30
	.globl quotearg_n_mem
	.type quotearg_n_mem, @function
quotearg_n_mem:

	mov	ecx, OFFSET FLAT:default_quoting_options
	jmp	quotearg_n_options
	.section	.text
	.align	32
	#Procedure 0x403d3a
	.globl sub_403d3a
	.type sub_403d3a, @function
sub_403d3a:

	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x403d40

	.globl locale_charset
	.type locale_charset, @function
locale_charset:
	push	rax
	mov	edi, 0xe
	call	rpl_nl_langinfo
	test	rax, rax
	mov	ecx, OFFSET FLAT:label_126
	cmovne	rcx, rax
	cmp	byte ptr [rcx], 0
	mov	eax, OFFSET FLAT:label_268
	cmovne	rax, rcx
	pop	rcx
	ret	
	.section	.text
	.align	32
	#Procedure 0x403d65
	.globl sub_403d65
	.type sub_403d65, @function
sub_403d65:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x403d70

	.globl xalloc_die
	.type xalloc_die, @function
xalloc_die:
	push	rbx
	mov	ebx, dword ptr [rip + exit_failure]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_269
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	xor	esi, esi
	mov	edx, OFFSET FLAT:label_142
	xor	eax, eax
	mov	edi, ebx
	call	error
	call	abort
	.section	.text
	.align	32
	#Procedure 0x403da0
	.globl quotearg_custom
	.type quotearg_custom, @function
quotearg_custom:

	sub	rsp, 0x38
	mov	rax, rdx
	mov	rcx, qword ptr [rip + label_76]
	mov	qword ptr [rsp + 0x30], rcx
	movups	xmm0, xmmword ptr [rip + label_77]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0, xmmword ptr [rip + label_78]
	movaps	xmmword ptr [rsp + 0x10], xmm0
	movups	xmm0, xmmword ptr [rip + default_quoting_options]
	movaps	xmmword ptr [rsp], xmm0
	mov	dword ptr [rsp], 0xa
	test	rdi, rdi
	je	.label_270
	test	rsi, rsi
	je	.label_270
	mov	qword ptr [rsp + 0x28], rdi
	mov	qword ptr [rsp + 0x30], rsi
	lea	rcx, [rsp]
	xor	edi, edi
	mov	rdx, -1
	mov	rsi, rax
	call	quotearg_n_options
	add	rsp, 0x38
	ret	
.label_270:
	call	abort
	.section	.text
	.align	32
	#Procedure 0x403e10
	.globl xcharalloc
	.type xcharalloc, @function
xcharalloc:

	push	rbx
	mov	rbx, rdi
	call	malloc
	test	rbx, rbx
	je	.label_271
	test	rax, rax
	je	.label_272
.label_271:
	pop	rbx
	ret	
.label_272:
	call	xalloc_die
	.section	.text
	.align	32
	#Procedure 0x403e2a
	.globl sub_403e2a
	.type sub_403e2a, @function
sub_403e2a:

	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x403e30
	.globl emit_bug_reporting_address
	.type emit_bug_reporting_address, @function
emit_bug_reporting_address:

	push	rax
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_273
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:label_274
	xor	eax, eax
	mov	rsi, rcx
	call	__printf_chk
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_276
	mov	edx, 5
	call	dcgettext
	mov	rsi, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:label_265
	mov	ecx, OFFSET FLAT:label_277
	xor	eax, eax
	call	__printf_chk
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_275
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	pop	rax
	jmp	fputs_unlocked
	.section	.text
	.align	32
	#Procedure 0x403ea4
	.globl sub_403ea4
	.type sub_403ea4, @function
sub_403ea4:

	nop	word ptr cs:[rax + rax]
.label_279:
	call	xalloc_die
	.section	.text
	.align	32
	#Procedure 0x403eb5
	.globl sub_403eb5
	.type sub_403eb5, @function
sub_403eb5:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x403ebf
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
	je	.label_278
	test	r14, r14
	je	.label_279
.label_278:
	xor	esi, esi
	mov	rdi, r14
	mov	rdx, rbx
	call	memset
	mov	rax, r14
	add	rsp, 8
	pop	rbx
	pop	r14
	ret	
.label_284:
	call	xalloc_die
	.section	.text
	.align	32
	#Procedure 0x403ef5
	.globl sub_403ef5
	.type sub_403ef5, @function
sub_403ef5:

	nop	word ptr cs:[rax + rax]
.label_283:
	call	xalloc_die
	.section	.text
	.align	32
	#Procedure 0x403f06
	.globl x2realloc
	.type x2realloc, @function
x2realloc:

	push	rbx
	mov	rax, qword ptr [rsi]
	test	rdi, rdi
	je	.label_280
	movabs	rcx, 0x5555555555555554
	cmp	rax, rcx
	jae	.label_284
	mov	rbx, rax
	shr	rbx, 1
	add	rbx, rax
	inc	rbx
	mov	qword ptr [rsi], rbx
	jne	.label_282
	call	free
	xor	eax, eax
	jmp	.label_281
.label_280:
	test	rax, rax
	mov	ebx, 0x80
	cmovne	rbx, rax
	test	rbx, rbx
	js	.label_283
	mov	qword ptr [rsi], rbx
.label_282:
	mov	rsi, rbx
	call	realloc
	test	rbx, rbx
	je	.label_281
	test	rax, rax
	je	.label_283
.label_281:
	pop	rbx
	ret	
	.section	.text
	.align	32
	#Procedure 0x403f60

	.globl recurse_tree
	.type recurse_tree, @function
recurse_tree:
	push	rbp
	push	r14
	push	rbx
	mov	r14, rsi
	mov	rbx, rdi
	mov	rdi, qword ptr [rbx + 8]
	test	rdi, rdi
	je	.label_285
	mov	rsi, r14
	call	recurse_tree
	mov	bpl, 1
	test	al, al
	je	.label_289
	jmp	.label_286
.label_287:
	mov	rdi, rbx
	call	r14
	mov	bpl, al
.label_286:
	mov	eax, ebp
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x403f94
	.globl sub_403f94
	.type sub_403f94, @function
sub_403f94:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x403f97
	.globl sub_403f97
	.type sub_403f97, @function
sub_403f97:

	nop	word ptr cs:[rax + rax]
.label_285:
	cmp	qword ptr [rbx + 0x10], 0
	je	.label_287
.label_289:
	mov	rdi, rbx
	call	r14
	mov	bpl, 1
	test	al, al
	jne	.label_286
	mov	rdi, qword ptr [rbx + 0x10]
	test	rdi, rdi
	je	.label_288
	mov	rsi, r14
	call	recurse_tree
	test	al, al
	jne	.label_286
.label_288:
	xor	ebp, ebp
	jmp	.label_286
.label_291:
	mov	qword ptr [rip + head],  rdi
.label_290:
	mov	qword ptr [rip + zeros],  rdi
.label_292:
	xor	eax, eax
	ret	
	.section	.text
	.align	32
	#Procedure 0x403fe1
	.globl sub_403fe1
	.type sub_403fe1, @function
sub_403fe1:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x403fec

	.globl scan_zeros
	.type scan_zeros, @function
scan_zeros:
	cmp	qword ptr [rdi + 0x20], 0
	jne	.label_292
	cmp	qword ptr [rdi], 0
	je	.label_292
	cmp	qword ptr [rip + head],  0
	je	.label_291
	mov	rax, qword ptr [rip + zeros]
	mov	qword ptr [rax + 0x28], rdi
	jmp	.label_290
	.section	.text
	.align	32
	#Procedure 0x404010

	.globl quotearg_colon
	.type quotearg_colon, @function
quotearg_colon:
	sub	rsp, 0x38
	mov	rax, rdi
	mov	rcx, qword ptr [rip + label_76]
	mov	qword ptr [rsp + 0x30], rcx
	movups	xmm0, xmmword ptr [rip + label_77]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0, xmmword ptr [rip + label_78]
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
	.align	32
	#Procedure 0x404065
	.globl sub_404065
	.type sub_404065, @function
sub_404065:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x404070
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
	.align	32
	#Procedure 0x404131
	.globl sub_404131
	.type sub_404131, @function
sub_404131:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x404140
	.globl xnmalloc
	.type xnmalloc, @function
xnmalloc:

	push	rbx
	mov	rbx, rsi
	movabs	rax, 0x7fffffffffffffff
	xor	edx, edx
	div	rbx
	cmp	rax, rdi
	jb	.label_293
	imul	rbx, rdi
	mov	rdi, rbx
	call	malloc
	test	rbx, rbx
	je	.label_294
	test	rax, rax
	je	.label_293
.label_294:
	pop	rbx
	ret	
.label_293:
	call	xalloc_die
	.section	.text
	.align	32
	#Procedure 0x404175
	.globl sub_404175
	.type sub_404175, @function
sub_404175:

	nop	word ptr cs:[rax + rax]
.label_295:
	call	abort
	.section	.text
	.align	32
	#Procedure 0x404185
	.globl sub_404185
	.type sub_404185, @function
sub_404185:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x404189
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
	je	.label_295
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
	.section	.text
	.align	32
	#Procedure 0x4041f0

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
	jmp	.label_318
	.section	.text
	.align	32
	#Procedure 0x40429f
	.globl sub_40429f
	.type sub_40429f, @function
sub_40429f:

	nop	
.label_363:
	cmp	r8d, 2
	setne	al
	cmp	byte ptr [rsp + 0xf], 0
	setne	dl
	mov	rsi, qword ptr [rsp + 0xa8]
	test	sil, 1
	mov	bl, byte ptr [rsp + 0x34]
	mov	rsi, qword ptr [rsp + 0xc0]
	je	.label_302
	or	al, dl
	jne	.label_302
	test	dil, 1
	jne	.label_361
	cmp	qword ptr [rsp + 0x68], 0
	je	.label_302
	test	rbp, rbp
	mov	r15d, r8d
	mov	al, bl
	mov	qword ptr [rsp + 0x48], rcx
	mov	r12d, esi
	mov	r13, qword ptr [rsp + 0x68]
	je	.label_318
	jmp	.label_302
.label_494:
	mov	r8d, 5
	test	r12b, 1
	jne	.label_369
	test	rbp, rbp
	je	.label_372
	mov	rax, qword ptr [rsp + 0x10]
	mov	byte ptr [rax], 0x22
.label_372:
	mov	r14d, 1
	jmp	.label_376
.label_495:
	mov	r13b, 1
	mov	r8d, 5
	xor	r14d, r14d
	mov	eax, OFFSET FLAT:label_82
	mov	qword ptr [rsp + 0x58], rax
	mov	eax, 1
	mov	qword ptr [rsp + 0x50], rax
	mov	sil, 1
	jmp	.label_313
.label_369:
	xor	r14d, r14d
.label_376:
	mov	eax, OFFSET FLAT:label_82
	mov	qword ptr [rsp + 0x58], rax
	mov	eax, 1
	mov	qword ptr [rsp + 0x50], rax
	mov	r13b, 1
	jmp	.label_384
	.section	.text
	.align	32
	#Procedure 0x40436f
	.globl sub_40436f
	.type sub_40436f, @function
sub_40436f:

	nop	
.label_318:
	mov	rbp, r13
	xor	r14d, r14d
	mov	ecx, r15d
	cmp	r15d, 0xa
	ja	.label_393
	mov	r8d, 7
	mov	r13b, 1
	xor	esi, esi
	mov	r10, qword ptr [rsp + 0x28]
	mov	r11, qword ptr [rsp + 0x48]
	jmp	qword ptr [(rcx * 8) + label_397]
.label_496:
	mov	r14d, edi
	mov	edi, OFFSET FLAT:label_403
	mov	esi, r15d
	mov	ebx, r9d
	call	gettext_quote
	mov	qword ptr [rsp + 0x80], rax
	mov	edi, OFFSET FLAT:label_83
	mov	esi, r15d
	call	gettext_quote
	mov	r9d, ebx
	mov	edi, r14d
	mov	qword ptr [rsp + 0x78], rax
.label_497:
	mov	byte ptr [rsp + 0x1e], dil
	mov	dword ptr [rsp + 0x60], r9d
	test	r12b, 1
	mov	r14d, 0
	mov	rcx, qword ptr [rsp + 0x80]
	jne	.label_415
	mov	al, byte ptr [rcx]
	test	al, al
	mov	r14d, 0
	je	.label_415
	xor	r14d, r14d
	nop	
.label_303:
	cmp	r14, rbp
	jae	.label_296
	mov	rdx, qword ptr [rsp + 0x10]
	mov	byte ptr [rdx + r14], al
.label_296:
	movzx	eax, byte ptr [rcx + r14 + 1]
	inc	r14
	test	al, al
	jne	.label_303
.label_415:
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
	jmp	.label_313
.label_489:
	xor	r8d, r8d
	xor	r14d, r14d
	mov	r13d, eax
	xor	esi, esi
	jmp	.label_313
.label_492:
	mov	al, 1
.label_490:
	mov	r12b, 1
.label_493:
	test	r12b, 1
	mov	cl, 1
	je	.label_329
	mov	ecx, eax
.label_329:
	mov	al, cl
.label_491:
	mov	r8d, 2
	test	r12b, 1
	jne	.label_332
	test	rbp, rbp
	je	.label_337
	mov	rcx, qword ptr [rsp + 0x10]
	mov	byte ptr [rcx], 0x27
.label_337:
	mov	r14d, 1
	jmp	.label_377
.label_332:
	xor	r14d, r14d
.label_377:
	mov	ecx, OFFSET FLAT:label_83
	mov	qword ptr [rsp + 0x58], rcx
	mov	ecx, 1
	mov	qword ptr [rsp + 0x50], rcx
	mov	r13d, eax
.label_384:
	mov	sil, r12b
.label_313:
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
	jmp	.label_351
	.section	.text
	.align	32
	#Procedure 0x404531
	.globl sub_404531
	.type sub_404531, @function
sub_404531:

	nop	word ptr cs:[rax + rax]
.label_335:
	inc	r12
.label_351:
	cmp	r11, -1
	je	.label_380
	cmp	r12, r11
	jne	.label_382
	jmp	.label_383
	.section	.text
	.align	32
	#Procedure 0x404553
	.globl sub_404553
	.type sub_404553, @function
sub_404553:

	nop	word ptr cs:[rax + rax]
.label_380:
	mov	rcx, -1
	cmp	byte ptr [r10 + r12], 0
	je	.label_387
.label_382:
	cmp	byte ptr [rsp + 0x37], 0
	je	.label_394
	mov	rax, qword ptr [rsp + 0x50]
	lea	rbx, [r12 + rax]
	cmp	rax, 2
	jb	.label_328
	cmp	r11, -1
	jne	.label_328
	mov	r15d, edi
	mov	rdi, r10
	mov	r13d, r9d
	call	strlen
	mov	r9d, r13d
	mov	r8, qword ptr [rsp + 0x38]
	mov	edi, r15d
	mov	r10, qword ptr [rsp + 0x28]
	mov	r11, rax
.label_328:
	cmp	rbx, r11
	jbe	.label_407
.label_394:
	xor	esi, esi
.label_306:
	movzx	r15d, byte ptr [r10 + r12]
	cmp	r15, 0x7e
	ja	.label_409
	xor	edx, edx
	mov	r13b, 1
	mov	cl, 0x6e
	mov	bl, 0x61
	xor	eax, eax
	jmp	qword ptr [(r15 * 8) + label_412]
.label_518:
	test	r12, r12
	jne	.label_299
	jmp	.label_392
	.section	.text
	.align	32
	#Procedure 0x4045e6
	.globl sub_4045e6
	.type sub_4045e6, @function
sub_4045e6:

	nop	word ptr cs:[rax + rax]
.label_407:
	mov	r13d, r9d
	mov	r15d, edi
	mov	rbx, r11
	lea	rdi, [r10 + r12]
	mov	rsi, qword ptr [rsp + 0x58]
	mov	rdx, qword ptr [rsp + 0x50]
	call	memcmp
	test	eax, eax
	sete	sil
	jne	.label_301
	cmp	byte ptr [rsp + 0xf], 0
	mov	r10, qword ptr [rsp + 0x28]
	mov	r11, rbx
	mov	edi, r15d
	mov	r8, qword ptr [rsp + 0x38]
	mov	r9d, r13d
	je	.label_306
	jmp	.label_315
.label_301:
	mov	r10, qword ptr [rsp + 0x28]
	mov	r11, rbx
	mov	edi, r15d
	mov	r8, qword ptr [rsp + 0x38]
	mov	r9d, r13d
	jmp	.label_306
.label_522:
	xor	eax, eax
	cmp	r11, -1
	je	.label_322
	test	r12, r12
	jne	.label_327
	cmp	r11, 1
	je	.label_392
	xor	r13d, r13d
	jmp	.label_359
.label_511:
	cmp	byte ptr [rsp + 0x1f], 0
	je	.label_334
	cmp	byte ptr [rsp + 0xf], 0
	jne	.label_315
	cmp	r8d, 2
	jne	.label_341
	mov	eax, r9d
	and	al, 1
	jne	.label_341
	cmp	r14, rbp
	jae	.label_344
	mov	rax, qword ptr [rsp + 0x10]
	mov	byte ptr [rax + r14], 0x27
.label_344:
	lea	rax, [r14 + 1]
	cmp	rax, rbp
	jae	.label_347
	mov	rcx, qword ptr [rsp + 0x10]
	mov	byte ptr [rcx + rax], 0x24
.label_347:
	lea	rax, [r14 + 2]
	cmp	rax, rbp
	jae	.label_353
	mov	rcx, qword ptr [rsp + 0x10]
	mov	byte ptr [rcx + rax], 0x27
.label_353:
	add	r14, 3
	mov	r9b, 1
.label_341:
	mov	rcx, r14
	cmp	rcx, rbp
	jae	.label_360
	mov	rax, qword ptr [rsp + 0x10]
	mov	byte ptr [rax + rcx], 0x5c
.label_360:
	lea	r14, [rcx + 1]
	mov	al, 1
	mov	r15b, 0x30
	cmp	r8d, 2
	je	.label_362
	lea	rdx, [r12 + 1]
	cmp	rdx, r11
	jae	.label_362
	mov	dl, byte ptr [r10 + rdx]
	add	dl, 0xd0
	cmp	dl, 9
	ja	.label_362
	cmp	r14, rbp
	jae	.label_330
	mov	rdx, qword ptr [rsp + 0x10]
	mov	byte ptr [rdx + r14], 0x30
.label_330:
	lea	rdx, [rcx + 2]
	cmp	rdx, rbp
	jae	.label_357
	mov	ebx, esi
	mov	rsi, qword ptr [rsp + 0x10]
	mov	byte ptr [rsi + rdx], 0x30
	mov	esi, ebx
.label_357:
	add	rcx, 3
	xor	r13d, r13d
	mov	r14, rcx
	jmp	.label_359
.label_512:
	mov	bl, 0x62
	jmp	.label_381
.label_513:
	mov	cl, 0x74
	jmp	.label_321
.label_514:
	mov	bl, 0x76
	jmp	.label_381
.label_515:
	mov	bl, 0x66
	jmp	.label_381
.label_516:
	mov	cl, 0x72
	jmp	.label_321
.label_519:
	mov	r15b, 0x27
	mov	al, 1
	mov	qword ptr [rsp + 0xa8], rax
	cmp	r8d, 2
	jne	.label_390
	cmp	byte ptr [rsp + 0xf], 0
	jne	.label_312
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
	jae	.label_399
	mov	rax, qword ptr [rsp + 0x10]
	mov	byte ptr [rax + r14], 0x27
.label_399:
	lea	rax, [r14 + 1]
	cmp	rax, rbp
	jae	.label_410
	mov	rcx, qword ptr [rsp + 0x10]
	mov	byte ptr [rcx + rax], 0x5c
.label_410:
	lea	rax, [r14 + 2]
	cmp	rax, rbp
	jae	.label_414
	mov	rcx, qword ptr [rsp + 0x10]
	mov	byte ptr [rcx + rax], 0x27
.label_414:
	add	r14, 3
	xor	r9d, r9d
.label_390:
	xor	eax, eax
	mov	r13b, 1
	jmp	.label_359
.label_520:
	mov	r15b, 0x3f
	cmp	r8d, 5
	je	.label_419
	cmp	r8d, 2
	jne	.label_299
	cmp	byte ptr [rsp + 0xf], 0
	je	.label_299
	jmp	.label_312
.label_521:
	cmp	r8d, 2
	jne	.label_308
	cmp	byte ptr [rsp + 0xf], 0
	jne	.label_312
	mov	r15b, 0x5c
	xor	eax, eax
	jmp	.label_373
.label_409:
	cmp	qword ptr [rsp + 0xb8], 1
	mov	qword ptr [rsp + 0xa0], rbp
	mov	byte ptr [rsp + 0x1e], dil
	mov	dword ptr [rsp + 0x60], r9d
	mov	dword ptr [rsp + 0x94], esi
	jne	.label_317
	mov	qword ptr [rsp + 0x48], r11
	call	__ctype_b_loc
	mov	r10, qword ptr [rsp + 0x28]
	mov	rax, qword ptr [rax]
	movzx	r13d, word ptr [rax + r15*2]
	shr	r13d, 0xe
	and	r13b, 1
	mov	ebx, 1
	jmp	.label_331
.label_322:
	test	r12, r12
	jne	.label_342
	mov	cl, byte ptr [r10 + 1]
	test	cl, cl
	jne	.label_342
.label_392:
	mov	dl, 1
.label_517:
	cmp	byte ptr [rsp + 0x27], 0
	je	.label_312
	xor	eax, eax
	mov	r13b, dl
.label_359:
	cmp	byte ptr [rsp + 0x36], 0
	je	.label_352
	cmp	qword ptr [rsp + 0x100], 0
	jne	.label_354
	jmp	.label_358
	.section	.text
	.align	32
	#Procedure 0x4048c4
	.globl sub_4048c4
	.type sub_4048c4, @function
sub_4048c4:

	nop	word ptr cs:[rax + rax]
.label_352:
	cmp	byte ptr [rsp + 0x35], 0
	je	.label_358
.label_354:
	mov	ecx, r15d
	shr	cl, 5
	movzx	edx, cl
	mov	ebx, esi
	mov	esi, 1
	mov	ecx, r15d
	shl	esi, cl
	test	bl, bl
	jne	.label_370
	mov	rcx, qword ptr [rsp + 0x100]
	and	esi, dword ptr [rcx + rdx*4]
	jmp	.label_367
	.section	.text
	.align	32
	#Procedure 0x4048fd
	.globl sub_4048fd
	.type sub_4048fd, @function
sub_4048fd:

	nop	dword ptr [rax]
.label_358:
	test	sil, sil
.label_367:
	mov	ebx, r15d
	je	.label_305
	jmp	.label_371
.label_370:
	mov	ebx, r15d
	jmp	.label_371
.label_334:
	cmp	dword ptr [rsp + 0x9c], 0
	jne	.label_335
	xor	r15d, r15d
	jmp	.label_299
.label_308:
	mov	cl, 0x5c
	cmp	byte ptr [rsp + 0x32], 0
	je	.label_321
	xor	eax, eax
	mov	r15b, 0x5c
.label_373:
	xor	r13d, r13d
	jmp	.label_305
.label_321:
	cmp	byte ptr [rsp + 0x27], 0
	mov	ebx, ecx
	je	.label_312
.label_381:
	xor	eax, eax
	cmp	byte ptr [rsp + 0x1f], 0
	mov	r13d, 0
	je	.label_359
	nop	
.label_371:
	cmp	byte ptr [rsp + 0xf], 0
	jne	.label_315
	cmp	r8d, 2
	jne	.label_391
	mov	eax, r9d
	and	al, 1
	jne	.label_391
	cmp	r14, rbp
	jae	.label_395
	mov	rax, qword ptr [rsp + 0x10]
	mov	byte ptr [rax + r14], 0x27
.label_395:
	lea	rax, [r14 + 1]
	cmp	rax, rbp
	jae	.label_400
	mov	rcx, qword ptr [rsp + 0x10]
	mov	byte ptr [rcx + rax], 0x24
.label_400:
	lea	rax, [r14 + 2]
	cmp	rax, rbp
	jae	.label_402
	mov	rcx, qword ptr [rsp + 0x10]
	mov	byte ptr [rcx + rax], 0x27
.label_402:
	add	r14, 3
	mov	r9b, 1
.label_391:
	cmp	r14, rbp
	jae	.label_408
	mov	rax, qword ptr [rsp + 0x10]
	mov	byte ptr [rax + r14], 0x5c
.label_408:
	inc	r14
	jmp	.label_340
.label_317:
	mov	qword ptr [rsp + 0x70], 0
	cmp	r11, -1
	jne	.label_413
	mov	rdi, r10
	call	strlen
	mov	r10, qword ptr [rsp + 0x28]
	mov	r11, rax
.label_413:
	cmp	byte ptr [rsp + 0x31], 0
	mov	qword ptr [rsp + 0x48], r11
	mov	qword ptr [rsp + 0x88], r12
	je	.label_417
	lea	rax, [r10 + r12]
	mov	qword ptr [rsp + 0xb0], rax
	mov	r13b, 1
	xor	r12d, r12d
	lea	rbp, [rsp + 0x70]
.label_364:
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
	je	.label_309
	cmp	rbx, -1
	mov	r10, qword ptr [rsp + 0x28]
	movabs	rsi, 0x20000002b
	je	.label_324
	test	rbx, rbx
	mov	r11, qword ptr [rsp + 0x48]
	je	.label_339
	cmp	rbx, 2
	mov	rbp, qword ptr [rsp + 0xa0]
	jb	.label_323
	mov	rax, qword ptr [rsp + 0x40]
	mov	rcx, qword ptr [rsp + 0xb0]
	lea	rax, [rcx + rax]
	mov	ecx, 1
	nop	dword ptr [rax]
.label_338:
	movsx	edx, byte ptr [rax + rcx]
	add	edx, -0x5b
	cmp	edx, 0x21
	ja	.label_374
	bt	rsi, rdx
	jb	.label_312
.label_374:
	inc	rcx
	cmp	rcx, rbx
	jb	.label_338
.label_323:
	mov	edi, dword ptr [rsp + 0x64]
	call	iswprint
	test	eax, eax
	jne	.label_406
	xor	r13d, r13d
.label_406:
	lea	rbp, [rsp + 0x70]
	mov	r12, qword ptr [rsp + 0x40]
	add	r12, rbx
	mov	rdi, rbp
	call	mbsinit
	test	eax, eax
	mov	r10, qword ptr [rsp + 0x28]
	mov	r11, qword ptr [rsp + 0x48]
	je	.label_364
	jmp	.label_368
.label_362:
	xor	r13d, r13d
	jmp	.label_359
.label_342:
	mov	r11, -1
	xor	r13d, r13d
	jmp	.label_359
.label_419:
	cmp	dword ptr [rsp + 0x98], 0
	je	.label_299
	lea	rcx, [r12 + 2]
	cmp	rcx, r11
	jae	.label_299
	cmp	byte ptr [r10 + r12 + 1], 0x3f
	jne	.label_299
	movsx	edx, byte ptr [r10 + rcx]
	xor	eax, eax
	cmp	edx, 0x3e
	ja	.label_378
	mov	ebx, esi
	movabs	rsi, 0x7000a38200000000
	bt	rsi, rdx
	jae	.label_366
	cmp	byte ptr [rsp + 0xf], 0
	jne	.label_386
	cmp	r14, rbp
	jae	.label_388
	mov	rax, qword ptr [rsp + 0x10]
	mov	byte ptr [rax + r14], 0x3f
.label_388:
	lea	rax, [r14 + 1]
	cmp	rax, rbp
	jae	.label_311
	mov	rsi, qword ptr [rsp + 0x10]
	mov	byte ptr [rsi + rax], 0x22
.label_311:
	lea	rax, [r14 + 2]
	cmp	rax, rbp
	jae	.label_316
	mov	rsi, qword ptr [rsp + 0x10]
	mov	byte ptr [rsi + rax], 0x22
.label_316:
	lea	rax, [r14 + 3]
	cmp	rax, rbp
	jae	.label_319
	mov	rsi, qword ptr [rsp + 0x10]
	mov	byte ptr [rsi + rax], 0x3f
.label_319:
	add	r14, 4
	xor	eax, eax
	mov	r12, rcx
	mov	r15b, dl
.label_366:
	xor	r13d, r13d
	mov	esi, ebx
	jmp	.label_359
.label_299:
	xor	eax, eax
.label_327:
	xor	r13d, r13d
	jmp	.label_359
.label_417:
	mov	r13b, 1
	xor	r12d, r12d
	lea	rbx, [rsp + 0x70]
	nop	word ptr cs:[rax + rax]
.label_355:
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
	je	.label_326
	cmp	rbp, -1
	je	.label_307
	cmp	rbp, -2
	je	.label_309
	mov	edi, dword ptr [rsp + 0x64]
	call	iswprint
	test	eax, eax
	mov	r12, qword ptr [rsp + 0x40]
	jne	.label_314
	xor	r13d, r13d
.label_314:
	add	r12, rbp
	lea	rbx, [rsp + 0x70]
	mov	rdi, rbx
	call	mbsinit
	test	eax, eax
	mov	r10, qword ptr [rsp + 0x28]
	mov	r11, qword ptr [rsp + 0x48]
	je	.label_355
	jmp	.label_368
.label_309:
	mov	r10, qword ptr [rsp + 0x28]
	mov	rsi, qword ptr [rsp + 0x40]
	lea	rax, [rsi + r12]
	mov	rdx, qword ptr [rsp + 0x48]
	cmp	rax, rdx
	jae	.label_300
	lea	rax, [r10 + r12]
.label_345:
	cmp	byte ptr [rax + rsi], 0
	je	.label_300
	lea	rcx, [r12 + rsi + 1]
	inc	rsi
	cmp	rcx, rdx
	jb	.label_345
.label_300:
	mov	qword ptr [rsp + 0x40], rsi
.label_324:
	xor	r13d, r13d
	jmp	.label_339
.label_307:
	xor	r13d, r13d
.label_326:
	mov	r10, qword ptr [rsp + 0x28]
.label_339:
	mov	r12, qword ptr [rsp + 0x40]
.label_368:
	mov	rbx, r12
	mov	r12, qword ptr [rsp + 0x88]
.label_331:
	and	r13b, 1
	mov	eax, r13d
	or	al, byte ptr [rsp + 0x33]
	cmp	rbx, 1
	mov	rbp, qword ptr [rsp + 0xa0]
	mov	dil, byte ptr [rsp + 0x1e]
	mov	r8, qword ptr [rsp + 0x38]
	mov	r9d, dword ptr [rsp + 0x60]
	mov	esi, dword ptr [rsp + 0x94]
	ja	.label_349
	test	al, al
	je	.label_349
	xor	eax, eax
	mov	r11, qword ptr [rsp + 0x48]
	jmp	.label_359
.label_349:
	mov	byte ptr [rsp + 0x40], al
	add	rbx, r12
	xor	eax, eax
	mov	r11, qword ptr [rsp + 0x48]
	jmp	.label_365
	.section	.text
	.align	32
	#Procedure 0x404cf7
	.globl sub_404cf7
	.type sub_404cf7, @function
sub_404cf7:

	nop	word ptr [rax + rax]
.label_325:
	inc	r14
	mov	r15b, byte ptr [r10 + r12 + 1]
	mov	r12, rdx
.label_365:
	cmp	byte ptr [rsp + 0x40], 0
	je	.label_320
	test	sil, 1
	je	.label_343
	cmp	r14, rbp
	jae	.label_375
	mov	rdx, qword ptr [rsp + 0x10]
	mov	byte ptr [rdx + r14], 0x5c
.label_375:
	inc	r14
	xor	esi, esi
	jmp	.label_343
	.section	.text
	.align	32
	#Procedure 0x404d35
	.globl sub_404d35
	.type sub_404d35, @function
sub_404d35:

	nop	word ptr cs:[rax + rax]
.label_320:
	cmp	byte ptr [rsp + 0xf], 0
	jne	.label_315
	cmp	r8d, 2
	jne	.label_379
	mov	eax, r9d
	and	al, 1
	jne	.label_379
	cmp	r14, rbp
	jae	.label_385
	mov	rax, qword ptr [rsp + 0x10]
	mov	byte ptr [rax + r14], 0x27
.label_385:
	lea	rax, [r14 + 1]
	cmp	rax, rbp
	jae	.label_389
	mov	rdx, qword ptr [rsp + 0x10]
	mov	byte ptr [rdx + rax], 0x24
.label_389:
	lea	rax, [r14 + 2]
	cmp	rax, rbp
	jae	.label_346
	mov	rdx, qword ptr [rsp + 0x10]
	mov	byte ptr [rdx + rax], 0x27
.label_346:
	add	r14, 3
	mov	r9b, 1
.label_379:
	cmp	r14, rbp
	jae	.label_401
	mov	rax, qword ptr [rsp + 0x10]
	mov	byte ptr [rax + r14], 0x5c
.label_401:
	lea	rax, [r14 + 1]
	cmp	rax, rbp
	jae	.label_350
	mov	edx, r15d
	shr	dl, 6
	or	dl, 0x30
	mov	ecx, esi
	mov	rsi, qword ptr [rsp + 0x10]
	mov	byte ptr [rsi + rax], dl
	mov	esi, ecx
.label_350:
	lea	rax, [r14 + 2]
	cmp	rax, rbp
	jae	.label_411
	mov	edx, r15d
	shr	dl, 3
	and	dl, 7
	or	dl, 0x30
	mov	ecx, esi
	mov	rsi, qword ptr [rsp + 0x10]
	mov	byte ptr [rsi + rax], dl
	mov	esi, ecx
.label_411:
	add	r14, 3
	and	r15b, 7
	or	r15b, 0x30
	mov	al, 1
.label_343:
	lea	rdx, [r12 + 1]
	cmp	rbx, rdx
	jbe	.label_305
	test	r9b, 1
	je	.label_418
	mov	rcx, rbx
	mov	ebx, eax
	and	bl, 1
	jne	.label_420
	mov	r8, r12
	mov	r12d, esi
	cmp	r14, rbp
	jae	.label_298
	mov	rsi, qword ptr [rsp + 0x10]
	mov	byte ptr [rsi + r14], 0x27
.label_298:
	lea	rsi, [r14 + 1]
	cmp	rsi, rbp
	jae	.label_310
	mov	rbx, qword ptr [rsp + 0x10]
	mov	byte ptr [rbx + rsi], 0x27
.label_310:
	add	r14, 2
	xor	r9d, r9d
	mov	esi, r12d
	mov	rbx, rcx
	mov	r12, r8
	mov	r8, qword ptr [rsp + 0x38]
	jmp	.label_418
	.section	.text
	.align	32
	#Procedure 0x404e46
	.globl sub_404e46
	.type sub_404e46, @function
sub_404e46:

	nop	word ptr cs:[rax + rax]
.label_420:
	mov	rbx, rcx
.label_418:
	cmp	r14, rbp
	jae	.label_325
	mov	ecx, esi
	mov	rsi, qword ptr [rsp + 0x10]
	mov	byte ptr [rsi + r14], r15b
	mov	esi, ecx
	jmp	.label_325
	.section	.text
	.align	32
	#Procedure 0x404e6e
	.globl sub_404e6e
	.type sub_404e6e, @function
sub_404e6e:

	nop	
.label_305:
	test	r9b, 1
	je	.label_333
	and	al, 1
	jne	.label_333
	cmp	r14, rbp
	jae	.label_336
	mov	rax, qword ptr [rsp + 0x10]
	mov	byte ptr [rax + r14], 0x27
.label_336:
	lea	rax, [r14 + 1]
	cmp	rax, rbp
	jae	.label_356
	mov	rcx, qword ptr [rsp + 0x10]
	mov	byte ptr [rcx + rax], 0x27
.label_356:
	add	r14, 2
	xor	r9d, r9d
.label_333:
	mov	ebx, r15d
.label_340:
	cmp	r14, rbp
	jae	.label_416
	mov	rax, qword ptr [rsp + 0x10]
	mov	byte ptr [rax + r14], bl
.label_416:
	inc	r14
	shl	r13b, 7
	sar	r13b, 7
	and	r13b, dil
	mov	edi, r13d
	jmp	.label_335
.label_378:
	xor	r13d, r13d
	jmp	.label_359
	.section	.text
	.align	32
	#Procedure 0x404ed1
	.globl sub_404ed1
	.type sub_404ed1, @function
sub_404ed1:

	nop	word ptr cs:[rax + rax]
.label_383:
	mov	rcx, r12
.label_387:
	cmp	r8d, 2
	setne	al
	test	r14, r14
	setne	dl
	cmp	byte ptr [rsp + 0xf], 0
	je	.label_363
	or	al, dl
	jne	.label_363
	mov	r11, rcx
	jmp	.label_315
.label_312:
	mov	eax, 2
.label_304:
	mov	qword ptr [rsp + 0x38], rax
.label_315:
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
.label_348:
	mov	r14, rax
.label_297:
	mov	rax, r14
	add	rsp, 0xc8
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_302:
	mov	rdx, qword ptr [rsp + 0x58]
	test	rdx, rdx
	je	.label_396
	cmp	byte ptr [rsp + 0xf], 0
	mov	rcx, qword ptr [rsp + 0x10]
	jne	.label_398
	mov	al, byte ptr [rdx]
	test	al, al
	je	.label_398
	inc	rdx
	nop	dword ptr [rax + rax]
.label_405:
	cmp	r14, rbp
	jae	.label_404
	mov	byte ptr [rcx + r14], al
.label_404:
	inc	r14
	movzx	eax, byte ptr [rdx]
	inc	rdx
	test	al, al
	jne	.label_405
	jmp	.label_398
.label_361:
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
	jmp	.label_348
.label_396:
	mov	rcx, qword ptr [rsp + 0x10]
.label_398:
	cmp	r14, rbp
	jae	.label_297
	mov	byte ptr [rcx + r14], 0
	jmp	.label_297
.label_386:
	mov	eax, 5
	jmp	.label_304
.label_393:
	call	abort
	.section	.text
	.align	32
	#Procedure 0x405020

	.globl count_items
	.type count_items, @function
count_items:
	inc	qword ptr [rip + n_strings]
	xor	eax, eax
	ret	
	.section	.text
	.align	32
	#Procedure 0x40502a
	.globl sub_40502a
	.type sub_40502a, @function
sub_40502a:

	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x405030
	.globl version_etc
	.type version_etc, @function
version_etc:

	sub	rsp, 0xd8
	test	al, al
	je	.label_421
	movaps	xmmword ptr [rsp + 0x50], xmm0
	movaps	xmmword ptr [rsp + 0x60], xmm1
	movaps	xmmword ptr [rsp + 0x70], xmm2
	movaps	xmmword ptr [rsp + 0x80], xmm3
	movaps	xmmword ptr [rsp + 0x90], xmm4
	movaps	xmmword ptr [rsp + 0xa0], xmm5
	movaps	xmmword ptr [rsp + 0xb0], xmm6
	movaps	xmmword ptr [rsp + 0xc0], xmm7
.label_421:
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
	#Procedure 0x4050b3
	.globl sub_4050b3
	.type sub_4050b3, @function
sub_4050b3:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4050c0

	.globl fadvise
	.type fadvise, @function
fadvise:
	push	rbx
	mov	ebx, esi
	test	rdi, rdi
	je	.label_422
	call	fileno
	xor	esi, esi
	xor	edx, edx
	mov	edi, eax
	mov	ecx, ebx
	pop	rbx
	jmp	posix_fadvise
.label_422:
	pop	rbx
	ret	
	.section	.text
	.align	32
	#Procedure 0x4050dd
	.globl sub_4050dd
	.type sub_4050dd, @function
sub_4050dd:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x4050e0

	.globl usage
	.type usage, @function
usage:
	push	rbp
	push	rbx
	push	rax
	mov	ebp, edi
	test	ebp, ebp
	jne	.label_431
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_433
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	mov	rdx, qword ptr [rip + program_name]
	mov	edi, 1
	xor	eax, eax
	mov	rsi, rcx
	call	__printf_chk
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_428
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_430
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_424
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_436
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_429
	mov	edx, 5
	call	dcgettext
	mov	rsi, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:label_265
	mov	ecx, OFFSET FLAT:label_277
	xor	eax, eax
	call	__printf_chk
	mov	edi, 5
	xor	esi, esi
	call	setlocale
	test	rax, rax
	je	.label_425
	mov	esi, OFFSET FLAT:label_426
	mov	edx, 3
	mov	rdi, rax
	call	strncmp
	test	eax, eax
	je	.label_425
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_423
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	call	fputs_unlocked
.label_425:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_434
	mov	edx, 5
	call	dcgettext
	mov	rsi, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:label_277
	mov	ecx, OFFSET FLAT:label_264
	xor	eax, eax
	call	__printf_chk
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_435
	mov	edx, 5
	call	dcgettext
	mov	rsi, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:label_264
	mov	ecx, OFFSET FLAT:label_427
	xor	eax, eax
	call	__printf_chk
	mov	edi, ebp
	call	exit
.label_431:
	mov	rbx, qword ptr [rip + stderr]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_432
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
	.align	32
	#Procedure 0x40529b
	.globl sub_40529b
	.type sub_40529b, @function
sub_40529b:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x405305
	.globl sub_405305
	.type sub_405305, @function
sub_405305:

	nop	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x405312
	.globl sub_405312
	.type sub_405312, @function
sub_405312:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x405336
	.globl sub_405336
	.type sub_405336, @function
sub_405336:

	nop	word ptr cs:[rax + rax]
