	.section	.text
	.align	16
	#Procedure 0x401759
	.globl sub_401759
	.type sub_401759, @function
sub_401759:

	hlt	
	.section	.text
	.align	16
	#Procedure 0x40175a
	.globl sub_40175a
	.type sub_40175a, @function
sub_40175a:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x401792
	.globl sub_401792
	.type sub_401792, @function
sub_401792:

	nop	dword ptr [rax]
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4017da
	.globl sub_4017da
	.type sub_4017da, @function
sub_4017da:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4017fc
	.globl sub_4017fc
	.type sub_4017fc, @function
sub_4017fc:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x40180d
	.globl sub_40180d
	.type sub_40180d, @function
sub_40180d:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x401826
	.globl sub_401826
	.type sub_401826, @function
sub_401826:

	nop	word ptr cs:[rax + rax]
.label_9:
	call	xalloc_die
	.section	.text
	.align	16
	#Procedure 0x401835
	.globl sub_401835
	.type sub_401835, @function
sub_401835:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40183b
	.globl xcharalloc
	.type xcharalloc, @function
xcharalloc:

	push	rbx
	mov	rbx, rdi
	call	malloc
	test	rbx, rbx
	je	.label_10
	test	rax, rax
	je	.label_9
.label_10:
	pop	rbx
	ret	
	.section	.text
	.align	16
	#Procedure 0x401850
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
	#Procedure 0x401868
	.globl sub_401868
	.type sub_401868, @function
sub_401868:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x401870

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
	je	.label_11
	cmp	r15, -2
	jb	.label_11
	xor	edi, edi
	call	hard_locale
	test	al, al
	jne	.label_11
	movzx	eax, byte ptr [r14]
	mov	dword ptr [rbx], eax
	mov	r15d, 1
.label_11:
	mov	rax, r15
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	ret	
	.section	.text
	.align	16
	#Procedure 0x4018c6
	.globl sub_4018c6
	.type sub_4018c6, @function
sub_4018c6:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4018d0
	.globl quotearg_custom
	.type quotearg_custom, @function
quotearg_custom:

	sub	rsp, 0x38
	mov	rax, rdx
	mov	rcx, qword ptr [rip + label_12]
	mov	qword ptr [rsp + 0x30], rcx
	movups	xmm0, xmmword ptr [rip + label_13]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0, xmmword ptr [rip + label_14]
	movaps	xmmword ptr [rsp + 0x10], xmm0
	movups	xmm0, xmmword ptr [rip + default_quoting_options]
	movaps	xmmword ptr [rsp], xmm0
	mov	dword ptr [rsp], 0xa
	test	rdi, rdi
	je	.label_15
	test	rsi, rsi
	je	.label_15
	mov	qword ptr [rsp + 0x28], rdi
	mov	qword ptr [rsp + 0x30], rsi
	lea	rcx, [rsp]
	xor	edi, edi
	mov	rdx, -1
	mov	rsi, rax
	call	quotearg_n_options
	add	rsp, 0x38
	ret	
.label_15:
	call	abort
.label_16:
	call	abort
	.section	.text
	.align	16
	#Procedure 0x401945
	.globl sub_401945
	.type sub_401945, @function
sub_401945:

	nop	
	.section	.text
	.align	16
	#Procedure 0x401947
	.globl quotearg_n_custom
	.type quotearg_n_custom, @function
quotearg_n_custom:

	sub	rsp, 0x38
	mov	rax, qword ptr [rip + label_12]
	mov	qword ptr [rsp + 0x30], rax
	movups	xmm0, xmmword ptr [rip + label_13]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0, xmmword ptr [rip + label_14]
	movaps	xmmword ptr [rsp + 0x10], xmm0
	movups	xmm0, xmmword ptr [rip + default_quoting_options]
	movaps	xmmword ptr [rsp], xmm0
	mov	dword ptr [rsp], 0xa
	test	rsi, rsi
	je	.label_16
	test	rdx, rdx
	je	.label_16
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
	#Procedure 0x4019b0
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
	#Procedure 0x4019c9
	.globl sub_4019c9
	.type sub_4019c9, @function
sub_4019c9:

	nop	dword ptr [rax]
.label_19:
	mov	rsi, rbx
	call	realloc
	test	rbx, rbx
	je	.label_17
	test	rax, rax
	je	.label_18
.label_17:
	pop	rbx
	ret	
.label_18:
	call	xalloc_die
	.section	.text
	.align	16
	#Procedure 0x4019e9
	.globl sub_4019e9
	.type sub_4019e9, @function
sub_4019e9:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4019f1
	.globl xnrealloc
	.type xnrealloc, @function
xnrealloc:

	push	rbx
	mov	rbx, rdx
	movabs	rax, 0x7fffffffffffffff
	xor	edx, edx
	div	rbx
	cmp	rax, rsi
	jb	.label_18
	imul	rbx, rsi
	test	rdi, rdi
	je	.label_19
	test	rbx, rbx
	jne	.label_19
	call	free
	xor	eax, eax
	pop	rbx
	ret	
	.section	.text
	.align	16
	#Procedure 0x401a20
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
	#Procedure 0x401a38
	.globl sub_401a38
	.type sub_401a38, @function
sub_401a38:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x401a40

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
	jne	.label_20
	mov	rax, qword ptr [rbx + 0x28]
	cmp	rax, qword ptr [rbx + 0x20]
	jne	.label_20
	cmp	qword ptr [rbx + 0x48], 0
	je	.label_21
.label_20:
	mov	rdi, rbx
	mov	rsi, rbp
	mov	edx, r14d
	pop	rbx
	pop	r14
	pop	rbp
	jmp	fseeko
.label_21:
	mov	rdi, rbx
	call	fileno
	mov	edi, eax
	mov	rsi, rbp
	mov	edx, r14d
	call	lseek
	mov	rcx, rax
	mov	eax, 0xffffffff
	cmp	rcx, -1
	je	.label_22
	and	byte ptr [rbx], 0xef
	mov	qword ptr [rbx + 0x90], rcx
	xor	eax, eax
.label_22:
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x401aae
	.globl sub_401aae
	.type sub_401aae, @function
sub_401aae:

	nop	
	.section	.text
	.align	16
	#Procedure 0x401ab0
	.globl quotearg_custom_mem
	.type quotearg_custom_mem, @function
quotearg_custom_mem:

	sub	rsp, 0x38
	mov	rax, qword ptr [rip + label_12]
	mov	qword ptr [rsp + 0x30], rax
	movups	xmm0, xmmword ptr [rip + label_13]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0, xmmword ptr [rip + label_14]
	movaps	xmmword ptr [rsp + 0x10], xmm0
	movups	xmm0, xmmword ptr [rip + default_quoting_options]
	movaps	xmmword ptr [rsp], xmm0
	mov	dword ptr [rsp], 0xa
	test	rdi, rdi
	je	.label_23
	test	rsi, rsi
	je	.label_23
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
.label_23:
	call	abort
	.section	.text
	.align	16
	#Procedure 0x401b1c
	.globl sub_401b1c
	.type sub_401b1c, @function
sub_401b1c:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x401b20
	.globl quote_n_mem
	.type quote_n_mem, @function
quote_n_mem:

	mov	ecx, OFFSET FLAT:quote_quoting_options
	jmp	quotearg_n_options
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

	.globl version_etc_va
	.type version_etc_va, @function
version_etc_va:
	movsxd	r10, dword ptr [r8]
	cmp	r10, 0x28
	ja	.label_34
	mov	r9, r10
	add	r9, qword ptr [r8 + 0x10]
	lea	r10d, [r10 + 8]
	mov	dword ptr [r8], r10d
	jmp	.label_36
.label_34:
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
.label_36:
	sub	rsp, 0x58
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp], rax
	xor	r9d, r9d
	test	rax, rax
	je	.label_24
	cmp	r10d, 0x29
	jae	.label_33
	movsxd	r9, r10d
	add	r9, qword ptr [r8 + 0x10]
	add	r10d, 8
	mov	dword ptr [r8], r10d
	jmp	.label_35
.label_33:
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
.label_35:
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp + 8], rax
	mov	r9d, 1
	test	rax, rax
	je	.label_24
	cmp	r10d, 0x29
	jae	.label_31
	movsxd	r9, r10d
	add	r9, qword ptr [r8 + 0x10]
	add	r10d, 8
	mov	dword ptr [r8], r10d
	jmp	.label_32
.label_31:
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
.label_32:
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp + 0x10], rax
	mov	r9d, 2
	test	rax, rax
	je	.label_24
	cmp	r10d, 0x29
	jae	.label_29
	movsxd	r9, r10d
	add	r9, qword ptr [r8 + 0x10]
	add	r10d, 8
	mov	dword ptr [r8], r10d
	jmp	.label_30
.label_29:
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
.label_30:
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp + 0x18], rax
	mov	r9d, 3
	test	rax, rax
	je	.label_24
	cmp	r10d, 0x29
	jae	.label_27
	movsxd	r9, r10d
	add	r9, qword ptr [r8 + 0x10]
	add	r10d, 8
	mov	dword ptr [r8], r10d
	jmp	.label_28
.label_27:
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
.label_28:
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp + 0x20], rax
	mov	r9d, 4
	test	rax, rax
	je	.label_24
	cmp	r10d, 0x29
	jae	.label_25
	movsxd	r9, r10d
	add	r9, qword ptr [r8 + 0x10]
	add	r10d, 8
	mov	dword ptr [r8], r10d
	jmp	.label_26
.label_25:
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
.label_26:
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp + 0x28], rax
	mov	r9d, 5
	test	rax, rax
	je	.label_24
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp + 0x30], rax
	mov	r9d, 6
	test	rax, rax
	je	.label_24
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp + 0x38], rax
	mov	r9d, 7
	test	rax, rax
	je	.label_24
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp + 0x40], rax
	mov	r9d, 8
	test	rax, rax
	je	.label_24
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp + 0x48], rax
	cmp	rax, 1
	mov	r9d, 9
	sbb	r9, -1
.label_24:
	lea	r8, [rsp]
	call	version_etc_arn
	add	rsp, 0x58
	ret	
	.section	.text
	.align	16
	#Procedure 0x401d12
	.globl sub_401d12
	.type sub_401d12, @function
sub_401d12:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x401d20
	.globl xcalloc
	.type xcalloc, @function
xcalloc:

	push	rax
	movabs	rax, 0x7fffffffffffffff
	xor	edx, edx
	div	rsi
	cmp	rax, rdi
	jb	.label_37
	call	rpl_calloc
	test	rax, rax
	je	.label_37
	pop	rcx
	ret	
.label_37:
	call	xalloc_die
	.section	.text
	.align	16
	#Procedure 0x401d46
	.globl sub_401d46
	.type sub_401d46, @function
sub_401d46:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x401d50

	.globl quotearg_colon
	.type quotearg_colon, @function
quotearg_colon:
	sub	rsp, 0x38
	mov	rax, rdi
	mov	rcx, qword ptr [rip + label_12]
	mov	qword ptr [rsp + 0x30], rcx
	movups	xmm0, xmmword ptr [rip + label_13]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0, xmmword ptr [rip + label_14]
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
	#Procedure 0x401da5
	.globl sub_401da5
	.type sub_401da5, @function
sub_401da5:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x401db0

	.globl version_etc
	.type version_etc, @function
version_etc:
	sub	rsp, 0xd8
	test	al, al
	je	.label_38
	movaps	xmmword ptr [rsp + 0x50], xmm0
	movaps	xmmword ptr [rsp + 0x60], xmm1
	movaps	xmmword ptr [rsp + 0x70], xmm2
	movaps	xmmword ptr [rsp + 0x80], xmm3
	movaps	xmmword ptr [rsp + 0x90], xmm4
	movaps	xmmword ptr [rsp + 0xa0], xmm5
	movaps	xmmword ptr [rsp + 0xb0], xmm6
	movaps	xmmword ptr [rsp + 0xc0], xmm7
.label_38:
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
	#Procedure 0x401e33
	.globl sub_401e33
	.type sub_401e33, @function
sub_401e33:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x401e40

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
	je	.label_39
	test	r15, r15
	je	.label_40
.label_39:
	mov	rdi, r15
	mov	rsi, r14
	mov	rdx, rbx
	call	memcpy
	mov	rax, r15
	pop	rbx
	pop	r14
	pop	r15
	ret	
.label_40:
	call	xalloc_die
	.section	.text
	.align	16
	#Procedure 0x401e7c
	.globl sub_401e7c
	.type sub_401e7c, @function
sub_401e7c:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x401e80
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
	je	.label_41
	mov	qword ptr [rax], rbx
.label_41:
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
	#Procedure 0x401f6c
	.globl sub_401f6c
	.type sub_401f6c, @function
sub_401f6c:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x401f70

	.globl locale_charset
	.type locale_charset, @function
locale_charset:
	push	rax
	mov	edi, 0xe
	call	rpl_nl_langinfo
	test	rax, rax
	mov	ecx, OFFSET FLAT:label_42
	cmovne	rcx, rax
	cmp	byte ptr [rcx], 0
	mov	eax, OFFSET FLAT:label_43
	cmovne	rax, rcx
	pop	rcx
	ret	
	.section	.text
	.align	16
	#Procedure 0x401f95
	.globl sub_401f95
	.type sub_401f95, @function
sub_401f95:

	nop	word ptr cs:[rax + rax]
.label_45:
	call	xalloc_die
	.section	.text
	.align	16
	#Procedure 0x401fa5
	.globl sub_401fa5
	.type sub_401fa5, @function
sub_401fa5:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x401faf
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
	je	.label_44
	test	r14, r14
	je	.label_45
.label_44:
	xor	esi, esi
	mov	rdi, r14
	mov	rdx, rbx
	call	memset
	mov	rax, r14
	add	rsp, 8
	pop	rbx
	pop	r14
	ret	
.label_46:
	call	abort
	.section	.text
	.align	16
	#Procedure 0x401fe5
	.globl sub_401fe5
	.type sub_401fe5, @function
sub_401fe5:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x401feb
	.globl quotearg_n_custom_mem
	.type quotearg_n_custom_mem, @function
quotearg_n_custom_mem:

	sub	rsp, 0x38
	mov	rax, qword ptr [rip + label_12]
	mov	qword ptr [rsp + 0x30], rax
	movups	xmm0, xmmword ptr [rip + label_13]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0, xmmword ptr [rip + label_14]
	movaps	xmmword ptr [rsp + 0x10], xmm0
	movups	xmm0, xmmword ptr [rip + default_quoting_options]
	movaps	xmmword ptr [rsp], xmm0
	mov	dword ptr [rsp], 0xa
	test	rsi, rsi
	je	.label_46
	test	rdx, rdx
	je	.label_46
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
	#Procedure 0x402050
	.globl close_stdout_set_ignore_EPIPE
	.type close_stdout_set_ignore_EPIPE, @function
close_stdout_set_ignore_EPIPE:

	mov	byte ptr [rip + ignore_EPIPE],  dil
	ret	
	.section	.text
	.align	16
	#Procedure 0x402058
	.globl sub_402058
	.type sub_402058, @function
sub_402058:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x402060

	.globl memchr2
	.type memchr2, @function
memchr2:
	push	r14
	push	rbx
	movzx	esi, sil
	movzx	r8d, dl
	cmp	esi, r8d
	jne	.label_47
	mov	rdx, rcx
	pop	rbx
	pop	r14
	jmp	memchr
.label_47:
	mov	eax, edi
	and	eax, 7
	test	rcx, rcx
	je	.label_48
	nop	word ptr cs:[rax + rax]
.label_53:
	test	rax, rax
	je	.label_48
	movzx	eax, byte ptr [rdi]
	cmp	eax, esi
	je	.label_51
	cmp	eax, r8d
	je	.label_51
	inc	rdi
	mov	eax, edi
	and	eax, 7
	cmp	rcx, 1
	lea	rcx, [rcx - 1]
	jne	.label_53
.label_48:
	mov	eax, esi
	shl	eax, 8
	or	eax, esi
	mov	edx, r8d
	shl	edx, 8
	or	edx, r8d
	cmp	rcx, 8
	jb	.label_49
	mov	r10, rax
	shl	r10, 0x10
	or	r10, rax
	mov	rax, rdx
	shl	rax, 0x10
	or	rax, rdx
	mov	r9, r10
	shl	r9, 0x20
	or	r9, r10
	mov	r11, rax
	shl	r11, 0x20
	or	r11, rax
	movabs	r14, 0x8080808080808080
	movabs	r10, 0xfefefefefefefeff
	nop	word ptr cs:[rax + rax]
.label_52:
	mov	rdx, rcx
	mov	rbx, rdi
	mov	rax, qword ptr [rbx]
	mov	rcx, rax
	xor	rcx, r9
	xor	rax, r11
	lea	rdi, [rcx + r10]
	xor	rcx, r14
	and	rcx, rdi
	lea	rdi, [rax + r10]
	xor	rax, r14
	and	rax, rdi
	or	rax, rcx
	lea	rdi, [rbx + 8]
	lea	rcx, [rdx - 8]
	and	rax, r14
	cmovne	rdi, rbx
	cmovne	rcx, rdx
	test	rax, rax
	jne	.label_49
	cmp	rcx, 7
	ja	.label_52
.label_49:
	xor	eax, eax
	test	rcx, rcx
	je	.label_50
	xor	eax, eax
.label_54:
	movzx	edx, byte ptr [rdi]
	cmp	edx, esi
	je	.label_51
	cmp	edx, r8d
	je	.label_51
	inc	rdi
	dec	rcx
	jne	.label_54
	jmp	.label_50
.label_51:
	mov	rax, rdi
.label_50:
	pop	rbx
	pop	r14
	ret	
	.section	.text
	.align	16
	#Procedure 0x40218d
	.globl sub_40218d
	.type sub_40218d, @function
sub_40218d:

	nop	dword ptr [rax]
.label_55:
	call	abort
	.section	.text
	.align	16
	#Procedure 0x402195
	.globl sub_402195
	.type sub_402195, @function
sub_402195:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4021a4
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
	je	.label_55
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
	#Procedure 0x402200
	.globl quotearg_free
	.type quotearg_free, @function
quotearg_free:

	push	r15
	push	r14
	push	rbx
	mov	r14, qword ptr [rip + slotvec]
	cmp	dword ptr [rip + nslots],  2
	jl	.label_56
	lea	r15, [r14 + 0x18]
	mov	ebx, 1
	nop	
.label_58:
	mov	rdi, qword ptr [r15]
	call	free
	inc	rbx
	movsxd	rax, dword ptr [rip + nslots]
	add	r15, 0x10
	cmp	rbx, rax
	jl	.label_58
.label_56:
	mov	rdi, qword ptr [r14 + 8]
	mov	eax, OFFSET FLAT:slot0
	cmp	rdi, rax
	je	.label_59
	call	free
	mov	qword ptr [rip + slotvec0],  0x100
	mov	qword ptr [rip + label_60], OFFSET FLAT:slot0
.label_59:
	mov	eax, OFFSET FLAT:slotvec0
	cmp	r14, rax
	je	.label_57
	mov	rdi, r14
	call	free
	mov	qword ptr [rip + slotvec], OFFSET FLAT:slotvec0
.label_57:
	mov	dword ptr [rip + nslots],  1
	pop	rbx
	pop	r14
	pop	r15
	ret	
	.section	.text
	.align	16
	#Procedure 0x402291
	.globl sub_402291
	.type sub_402291, @function
sub_402291:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4022a0
	.globl set_custom_quoting
	.type set_custom_quoting, @function
set_custom_quoting:

	test	rdi, rdi
	mov	eax, OFFSET FLAT:default_quoting_options
	cmovne	rax, rdi
	mov	dword ptr [rax], 0xa
	test	rsi, rsi
	je	.label_61
	test	rdx, rdx
	je	.label_61
	mov	qword ptr [rax + 0x28], rsi
	mov	qword ptr [rax + 0x30], rdx
	ret	
.label_61:
	push	rax
	call	abort
	.section	.text
	.align	16
	#Procedure 0x4022cb
	.globl sub_4022cb
	.type sub_4022cb, @function
sub_4022cb:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4022d0

	.globl xrealloc
	.type xrealloc, @function
xrealloc:
	push	rbx
	mov	rbx, rsi
	test	rdi, rdi
	je	.label_62
	test	rbx, rbx
	jne	.label_62
	call	free
	xor	eax, eax
	pop	rbx
	ret	
.label_64:
	call	xalloc_die
.label_62:
	mov	rsi, rbx
	call	realloc
	test	rbx, rbx
	je	.label_63
	test	rax, rax
	je	.label_64
.label_63:
	pop	rbx
	ret	
	.section	.text
	.align	16
	#Procedure 0x402300

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
	#Procedure 0x402319
	.globl sub_402319
	.type sub_402319, @function
sub_402319:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x402320

	.globl rpl_fclose
	.type rpl_fclose, @function
rpl_fclose:
	push	rbp
	push	r14
	push	rbx
	mov	rbx, rdi
	call	fileno
	test	eax, eax
	js	.label_65
	mov	rdi, rbx
	call	__freading
	test	eax, eax
	je	.label_66
	mov	rdi, rbx
	call	fileno
	xor	esi, esi
	mov	edx, 1
	mov	edi, eax
	call	lseek
	cmp	rax, -1
	je	.label_65
.label_66:
	mov	rdi, rbx
	call	rpl_fflush
	test	eax, eax
	je	.label_65
	call	__errno_location
	mov	r14, rax
	mov	ebp, dword ptr [r14]
	mov	rdi, rbx
	call	fclose
	test	ebp, ebp
	je	.label_67
	mov	dword ptr [r14], ebp
	mov	eax, 0xffffffff
.label_67:
	pop	rbx
	pop	r14
	pop	rbp
	ret	
.label_65:
	mov	rdi, rbx
	pop	rbx
	pop	r14
	pop	rbp
	jmp	fclose
	.section	.text
	.align	16
	#Procedure 0x402394
	.globl sub_402394
	.type sub_402394, @function
sub_402394:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4023a0
	.globl fdadvise
	.type fdadvise, @function
fdadvise:

	jmp	posix_fadvise
	.section	.text
	.align	16
	#Procedure 0x4023a5
	.globl sub_4023a5
	.type sub_4023a5, @function
sub_4023a5:

	nop	word ptr cs:[rax + rax]
.label_68:
	call	abort
	.section	.text
	.align	16
	#Procedure 0x4023b5
	.globl sub_4023b5
	.type sub_4023b5, @function
sub_4023b5:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4023bd
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
	je	.label_68
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
	#Procedure 0x402420

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
	jne	.label_70
	test	eax, eax
	sete	cl
	neg	eax
	sbb	ebx, ebx
	test	r14, r14
	jne	.label_69
	test	cl, cl
	jne	.label_69
	call	__errno_location
	xor	ecx, ecx
	cmp	dword ptr [rax], 9
	mov	ebx, 0xffffffff
	cmove	ebx, ecx
	jmp	.label_69
.label_70:
	mov	ebx, 0xffffffff
	test	eax, eax
	jne	.label_69
	call	__errno_location
	mov	dword ptr [rax], 0
.label_69:
	mov	eax, ebx
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x402480
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
	#Procedure 0x4024b6
	.globl sub_4024b6
	.type sub_4024b6, @function
sub_4024b6:

	nop	word ptr cs:[rax + rax]
.label_71:
	call	abort
	.section	.text
	.align	16
	#Procedure 0x4024c5
	.globl sub_4024c5
	.type sub_4024c5, @function
sub_4024c5:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4024cd
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
	je	.label_71
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
	#Procedure 0x402530
	.globl quote_n
	.type quote_n, @function
quote_n:

	mov	rdx, -1
	mov	ecx, OFFSET FLAT:quote_quoting_options
	jmp	quotearg_n_options
	.section	.text
	.align	16
	#Procedure 0x402541
	.globl sub_402541
	.type sub_402541, @function
sub_402541:

	nop	word ptr cs:[rax + rax]
.label_73:
	call	xalloc_die
	.section	.text
	.align	16
	#Procedure 0x402555
	.globl x2realloc
	.type x2realloc, @function
x2realloc:

	push	rbx
	mov	rax, qword ptr [rsi]
	test	rdi, rdi
	je	.label_76
	movabs	rcx, 0x5555555555555554
	cmp	rax, rcx
	jae	.label_75
	mov	rbx, rax
	shr	rbx, 1
	add	rbx, rax
	inc	rbx
	mov	qword ptr [rsi], rbx
	jne	.label_74
	call	free
	xor	eax, eax
	jmp	.label_72
.label_76:
	test	rax, rax
	mov	ebx, 0x80
	cmovne	rbx, rax
	test	rbx, rbx
	js	.label_73
	mov	qword ptr [rsi], rbx
.label_74:
	mov	rsi, rbx
	call	realloc
	test	rbx, rbx
	je	.label_72
	test	rax, rax
	je	.label_73
.label_72:
	pop	rbx
	ret	
.label_75:
	call	xalloc_die
	.section	.text
	.align	16
	#Procedure 0x4025b4
	.globl sub_4025b4
	.type sub_4025b4, @function
sub_4025b4:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4025c0
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
	#Procedure 0x4025cf
	.globl sub_4025cf
	.type sub_4025cf, @function
sub_4025cf:

	nop	
	.section	.text
	.align	16
	#Procedure 0x4025d0
	.globl quotearg_char
	.type quotearg_char, @function
quotearg_char:

	sub	rsp, 0x38
	mov	ecx, esi
	mov	rax, rdi
	mov	rdx, qword ptr [rip + label_12]
	mov	qword ptr [rsp + 0x30], rdx
	movups	xmm0, xmmword ptr [rip + label_13]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0, xmmword ptr [rip + label_14]
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
	#Procedure 0x40263f
	.globl sub_40263f
	.type sub_40263f, @function
sub_40263f:

	nop	
	.section	.text
	.align	16
	#Procedure 0x402640

	.globl set_fields
	.type set_fields, @function
set_fields:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x28
	mov	rbx, rdi
	xor	r12d, r12d
	mov	dword ptr [rsp + 0xc], esi
	and	esi, 1
	mov	dword ptr [rsp + 0x20], esi
	je	.label_93
	movzx	edx, byte ptr [rbx]
	lea	rax, [rbx + 1]
	mov	ecx, 0x2d
	sub	ecx, edx
	jne	.label_104
	movzx	ecx, byte ptr [rax]
	neg	ecx
.label_104:
	xor	r12d, r12d
	test	ecx, ecx
	sete	r12b
	cmove	rbx, rax
.label_93:
	xor	eax, eax
	mov	qword ptr [rsp + 0x18], rax
	mov	bpl, r12b
	mov	r13b, r12b
	mov	eax, 1
	mov	qword ptr [rsp + 0x10], rax
	jmp	.label_117
	.section	.text
	.align	16
	#Procedure 0x40269c
	.globl sub_40269c
	.type sub_40269c, @function
sub_40269c:

	nop	dword ptr [rax]
.label_114:
	inc	rbx
	xor	r12d, r12d
.label_117:
	mov	dword ptr [rsp + 0x24], ebp
	mov	r15d, ebp
	and	r15b, 1
	xor	r14d, r14d
	jmp	.label_151
	.section	.text
	.align	16
	#Procedure 0x4026b6
	.globl sub_4026b6
	.type sub_4026b6, @function
sub_4026b6:

	nop	word ptr cs:[rax + rax]
.label_155:
	inc	rbx
	mov	r14b, 1
.label_151:
	movzx	ebp, byte ptr [rbx]
	cmp	rbp, 0x2c
	je	.label_129
	cmp	bpl, 0x2d
	je	.label_146
	call	__ctype_b_loc
	test	bpl, bpl
	je	.label_129
	mov	rax, qword ptr [rax]
	movzx	eax, word ptr [rax + rbp*2]
	and	eax, 1
	test	ax, ax
	jne	.label_129
	movsx	eax, bpl
	add	eax, -0x30
	cmp	eax, 9
	ja	.label_160
	mov	rbp, qword ptr [rip + set_fields.num_start]
	test	rbp, rbp
	setne	al
	test	r14b, al
	jne	.label_82
	mov	qword ptr [rip + set_fields.num_start],  rbx
	mov	rbp, rbx
.label_82:
	test	r15b, r15b
	je	.label_87
	mov	al, 1
	mov	qword ptr [rsp + 0x18], rax
	jmp	.label_89
	.section	.text
	.align	16
	#Procedure 0x402738
	.globl sub_402738
	.type sub_402738, @function
sub_402738:

	nop	dword ptr [rax + rax]
.label_87:
	mov	r13b, 1
.label_89:
	movabs	rax, 0x1999999999999999
	cmp	r12, rax
	ja	.label_95
	lea	rax, [r12 + r12*4]
	movsx	rcx, byte ptr [rbx]
	lea	rax, [rcx + rax*2 - 0x30]
	cmp	rax, r12
	cmovae	r12, rax
	jb	.label_95
	cmp	r12, -1
	jne	.label_155
	jmp	.label_95
	.section	.text
	.align	16
	#Procedure 0x40277f
	.globl sub_40277f
	.type sub_40277f, @function
sub_40277f:

	nop	
.label_129:
	test	r15b, r15b
	jne	.label_115
	test	r12, r12
	je	.label_118
	mov	rsi, qword ptr [rip + n_frp]
	cmp	rsi, qword ptr [rip + n_frp_allocated]
	mov	ebp, dword ptr [rsp + 0x24]
	jne	.label_120
	mov	rdi, qword ptr [rip + frp]
	test	rdi, rdi
	je	.label_130
	movabs	rax, 0x555555555555555
	cmp	rsi, rax
	jae	.label_77
	mov	rax, rsi
	shr	rax, 1
	lea	rsi, [rsi + rax + 1]
	jmp	.label_143
	.section	.text
	.align	16
	#Procedure 0x4027d9
	.globl sub_4027d9
	.type sub_4027d9, @function
sub_4027d9:

	nop	dword ptr [rax]
.label_115:
	mov	rdx, qword ptr [rsp + 0x18]
	or	r13b, dl
	and	r13b, 1
	mov	eax, 1
	mov	rcx, qword ptr [rsp + 0x10]
	cmove	rcx, rax
	mov	qword ptr [rsp + 0x10], rcx
	cmp	dword ptr [rsp + 0x20], 0
	jne	.label_94
	test	r13b, r13b
	je	.label_79
.label_94:
	test	dl, 1
	jne	.label_83
	mov	rcx, qword ptr [rip + n_frp]
	cmp	rcx, qword ptr [rip + n_frp_allocated]
	jne	.label_85
	mov	rdi, qword ptr [rip + frp]
	test	rdi, rdi
	je	.label_88
	movabs	rax, 0x555555555555555
	cmp	rcx, rax
	jae	.label_77
	mov	rax, rcx
	shr	rax, 1
	lea	rsi, [rcx + rax + 1]
	jmp	.label_99
	.section	.text
	.align	16
	#Procedure 0x40285f
	.globl sub_40285f
	.type sub_40285f, @function
sub_40285f:

	nop	
.label_146:
	test	r15b, r15b
	jne	.label_103
	mov	eax, r13d
	and	al, 1
	sete	cl
	test	r12, r12
	jne	.label_106
	test	cl, cl
	je	.label_140
.label_106:
	test	al, al
	mov	eax, 1
	cmove	r12, rax
	mov	bpl, 1
	mov	qword ptr [rsp + 0x10], r12
	jmp	.label_114
.label_120:
	mov	rax, qword ptr [rip + frp]
	jmp	.label_125
.label_83:
	cmp	r12, qword ptr [rsp + 0x10]
	jb	.label_128
	mov	rcx, qword ptr [rip + n_frp]
	cmp	rcx, qword ptr [rip + n_frp_allocated]
	jne	.label_134
	mov	rdi, qword ptr [rip + frp]
	test	rdi, rdi
	je	.label_137
	movabs	rax, 0x555555555555555
	cmp	rcx, rax
	jae	.label_77
	mov	rax, rcx
	shr	rax, 1
	lea	rsi, [rcx + rax + 1]
	jmp	.label_148
.label_85:
	mov	rax, qword ptr [rip + frp]
	jmp	.label_156
.label_134:
	mov	rax, qword ptr [rip + frp]
	jmp	.label_159
.label_130:
	test	rsi, rsi
	mov	eax, 8
	cmove	rsi, rax
	movabs	rax, 0x7ffffffffffffff
	cmp	rsi, rax
	ja	.label_80
.label_143:
	mov	qword ptr [rip + n_frp_allocated],  rsi
	shl	rsi, 4
	call	xrealloc
	mov	qword ptr [rip + frp],  rax
	mov	rsi, qword ptr [rip + n_frp]
.label_125:
	shl	rsi, 4
	mov	qword ptr [rax + rsi], r12
	mov	rsi, qword ptr [rip + n_frp]
	mov	rcx, rsi
	shl	rcx, 4
	mov	qword ptr [rax + rcx + 8], r12
	inc	rsi
	mov	qword ptr [rip + n_frp],  rsi
	jmp	.label_96
.label_88:
	test	rcx, rcx
	mov	esi, 8
	cmovne	rsi, rcx
	movabs	rax, 0x7ffffffffffffff
	cmp	rsi, rax
	ja	.label_109
.label_99:
	mov	qword ptr [rip + n_frp_allocated],  rsi
	shl	rsi, 4
	call	xrealloc
	mov	qword ptr [rip + frp],  rax
	mov	rcx, qword ptr [rip + n_frp]
.label_156:
	shl	rcx, 4
	mov	rdx, qword ptr [rsp + 0x10]
	mov	qword ptr [rax + rcx], rdx
	mov	rsi, qword ptr [rip + n_frp]
	mov	rcx, rsi
	shl	rcx, 4
	mov	qword ptr [rax + rcx + 8], -1
	jmp	.label_133
.label_137:
	test	rcx, rcx
	mov	esi, 8
	cmovne	rsi, rcx
	movabs	rax, 0x7ffffffffffffff
	cmp	rsi, rax
	ja	.label_145
.label_148:
	mov	qword ptr [rip + n_frp_allocated],  rsi
	shl	rsi, 4
	call	xrealloc
	mov	qword ptr [rip + frp],  rax
	mov	rcx, qword ptr [rip + n_frp]
.label_159:
	shl	rcx, 4
	mov	rdx, qword ptr [rsp + 0x10]
	mov	qword ptr [rax + rcx], rdx
	mov	rsi, qword ptr [rip + n_frp]
	mov	rcx, rsi
	shl	rcx, 4
	mov	qword ptr [rax + rcx + 8], r12
.label_133:
	inc	rsi
	mov	qword ptr [rip + n_frp],  rsi
	xor	ebp, ebp
.label_96:
	cmp	byte ptr [rbx], 0
	je	.label_91
	xor	eax, eax
	mov	qword ptr [rsp + 0x18], rax
	xor	r13d, r13d
	jmp	.label_114
.label_91:
	test	rsi, rsi
	je	.label_147
	mov	edx, 0x10
	mov	ecx, OFFSET FLAT:compare_ranges
	mov	rdi, rax
	call	qsort
	mov	rax, qword ptr [rip + n_frp]
	xor	ebx, ebx
	test	rax, rax
	je	.label_107
	xor	r15d, r15d
	mov	rbx, rax
	nop	word ptr cs:[rax + rax]
.label_84:
	mov	r14, r15
	lea	r15, [r14 + 1]
	jmp	.label_121
	.section	.text
	.align	16
	#Procedure 0x402a99
	.globl sub_402a99
	.type sub_402a99, @function
sub_402a99:

	nop	dword ptr [rax]
.label_152:
	lea	rsi, [rax + rsi + 8]
	lea	rdi, [rax + rcx]
	mov	rbp, qword ptr [rax + rcx + 8]
	cmp	rbp, rdx
	cmova	rdx, rbp
	mov	qword ptr [rsi], rdx
	lea	rsi, [rax + rcx + 0x10]
	sub	rbx, r15
	shl	rbx, 4
	add	rbx, -0x10
	mov	rdx, rbx
	call	memmove
	mov	rbx, qword ptr [rip + n_frp]
	dec	rbx
	mov	qword ptr [rip + n_frp],  rbx
.label_121:
	cmp	r15, rbx
	jae	.label_149
	mov	rax, qword ptr [rip + frp]
	mov	rcx, r15
	shl	rcx, 4
	mov	rsi, r14
	shl	rsi, 4
	mov	rdx, qword ptr [rax + rsi + 8]
	cmp	qword ptr [rax + rcx], rdx
	jbe	.label_152
	cmp	rbx, r15
	ja	.label_84
	jmp	.label_107
	.section	.text
	.align	16
	#Procedure 0x402b0d
	.globl sub_402b0d
	.type sub_402b0d, @function
sub_402b0d:

	nop	dword ptr [rax]
.label_149:
	cmp	r15, rbx
	jb	.label_84
.label_107:
	mov	eax, dword ptr [rsp + 0xc]
	test	al, 2
	je	.label_86
	mov	r14, qword ptr [rip + frp]
	mov	qword ptr [rip + frp],  0
	mov	qword ptr [rip + n_frp],  0
	mov	qword ptr [rip + n_frp_allocated],  0
	mov	rbp, qword ptr [r14]
	xor	esi, esi
	cmp	rbp, 2
	jb	.label_123
	dec	rbp
	mov	qword ptr [rip + n_frp_allocated],  8
	xor	edi, edi
	mov	esi, 0x80
	call	xrealloc
	mov	qword ptr [rip + frp],  rax
	mov	rcx, qword ptr [rip + n_frp]
	shl	rcx, 4
	mov	qword ptr [rax + rcx], 1
	mov	rsi, qword ptr [rip + n_frp]
	mov	rcx, rsi
	shl	rcx, 4
	mov	qword ptr [rax + rcx + 8], rbp
	inc	rsi
	mov	qword ptr [rip + n_frp],  rsi
	jmp	.label_111
.label_123:
	xor	eax, eax
.label_111:
	cmp	rbx, 2
	jb	.label_90
	lea	rbp, [r14 + 0x10]
	mov	r15d, 1
	nop	word ptr cs:[rax + rax]
.label_124:
	mov	r12, qword ptr [rbp - 8]
	mov	r13, qword ptr [rbp]
	inc	r12
	cmp	r12, r13
	je	.label_139
	cmp	rsi, qword ptr [rip + n_frp_allocated]
	jne	.label_101
	test	rax, rax
	je	.label_153
	movabs	rcx, 0x555555555555555
	cmp	rsi, rcx
	jae	.label_77
	mov	rcx, rsi
	shr	rcx, 1
	lea	rsi, [rsi + rcx + 1]
	jmp	.label_78
.label_153:
	test	rsi, rsi
	mov	ecx, 8
	cmove	rsi, rcx
	movabs	rcx, 0x7ffffffffffffff
	cmp	rsi, rcx
	ja	.label_108
.label_78:
	mov	qword ptr [rip + n_frp_allocated],  rsi
	shl	rsi, 4
	mov	rdi, rax
	call	xrealloc
	mov	qword ptr [rip + frp],  rax
	mov	rsi, qword ptr [rip + n_frp]
.label_101:
	dec	r13
	shl	rsi, 4
	mov	qword ptr [rax + rsi], r12
	mov	rsi, qword ptr [rip + n_frp]
	mov	rcx, rsi
	shl	rcx, 4
	mov	qword ptr [rax + rcx + 8], r13
	inc	rsi
	mov	qword ptr [rip + n_frp],  rsi
.label_139:
	inc	r15
	add	rbp, 0x10
	cmp	r15, rbx
	jb	.label_124
.label_90:
	shl	rbx, 4
	mov	rbx, qword ptr [r14 + rbx - 8]
	cmp	rbx, -1
	je	.label_92
	cmp	rsi, qword ptr [rip + n_frp_allocated]
	jne	.label_127
	test	rax, rax
	je	.label_105
	movabs	rcx, 0x555555555555555
	cmp	rsi, rcx
	jae	.label_77
	mov	rcx, rsi
	shr	rcx, 1
	lea	rcx, [rsi + rcx + 1]
	jmp	.label_136
.label_105:
	test	rsi, rsi
	mov	ecx, 8
	cmovne	rcx, rsi
	movabs	rdx, 0x7ffffffffffffff
	cmp	rcx, rdx
	ja	.label_138
.label_136:
	mov	qword ptr [rip + n_frp_allocated],  rcx
	shl	rcx, 4
	mov	rdi, rax
	mov	rsi, rcx
	call	xrealloc
	mov	qword ptr [rip + frp],  rax
	mov	rsi, qword ptr [rip + n_frp]
.label_127:
	inc	rbx
	shl	rsi, 4
	mov	qword ptr [rax + rsi], rbx
	mov	rcx, qword ptr [rip + n_frp]
	mov	rdx, rcx
	shl	rdx, 4
	mov	qword ptr [rax + rdx + 8], -1
	inc	rcx
	mov	qword ptr [rip + n_frp],  rcx
.label_92:
	mov	rdi, r14
	call	free
	mov	rbx, qword ptr [rip + n_frp]
.label_86:
	inc	rbx
	mov	qword ptr [rip + n_frp],  rbx
	mov	rdi, qword ptr [rip + frp]
	shl	rbx, 4
	mov	rsi, rbx
	call	xrealloc
	mov	qword ptr [rip + frp],  rax
	mov	rcx, qword ptr [rip + n_frp]
	shl	rcx, 4
	pcmpeqd	xmm0, xmm0
	movdqu	xmmword ptr [rax + rcx - 0x10], xmm0
	add	rsp, 0x28
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_95:
	mov	esi, OFFSET FLAT:label_122
	mov	rdi, rbp
	call	strspn
	mov	rdi, rbp
	mov	rsi, rax
	call	xstrndup
	mov	rbx, rax
	mov	eax, dword ptr [rsp + 0xc]
	xor	edi, edi
	test	al, 4
	jne	.label_132
	mov	esi, OFFSET FLAT:label_161
	jmp	.label_162
.label_160:
	mov	eax, dword ptr [rsp + 0xc]
	xor	edi, edi
	test	al, 4
	jne	.label_135
	mov	esi, OFFSET FLAT:label_141
	jmp	.label_142
.label_132:
	mov	esi, OFFSET FLAT:label_144
.label_162:
	mov	edx, 5
	call	dcgettext
	mov	rbp, rax
	mov	rdi, rbx
	call	quote
	mov	rcx, rax
	xor	edi, edi
	xor	esi, esi
	xor	eax, eax
	mov	rdx, rbp
	call	error
	mov	rdi, rbx
	call	free
	mov	edi, 1
	call	usage
.label_135:
	mov	esi, OFFSET FLAT:label_81
.label_142:
	mov	edx, 5
	call	dcgettext
	mov	rbp, rax
	mov	rdi, rbx
	call	quote
	mov	rcx, rax
	xor	edi, edi
	xor	esi, esi
	xor	eax, eax
	mov	rdx, rbp
	call	error
	mov	edi, 1
	call	usage
.label_118:
	mov	eax, dword ptr [rsp + 0xc]
	xor	edi, edi
	test	al, 4
	jne	.label_157
	mov	esi, OFFSET FLAT:label_97
	jmp	.label_98
.label_79:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_100
	jmp	.label_98
.label_77:
	call	xalloc_die
.label_103:
	mov	eax, dword ptr [rsp + 0xc]
	xor	edi, edi
	test	al, 4
	jne	.label_102
	mov	esi, OFFSET FLAT:label_112
	jmp	.label_113
.label_140:
	mov	eax, dword ptr [rsp + 0xc]
	xor	edi, edi
	test	al, 4
	jne	.label_110
	mov	esi, OFFSET FLAT:label_97
	jmp	.label_113
.label_128:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_116
	jmp	.label_98
.label_157:
	mov	esi, OFFSET FLAT:label_119
.label_98:
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	xor	edi, edi
	xor	esi, esi
	xor	eax, eax
	mov	rdx, rcx
	jmp	.label_126
.label_102:
	mov	esi, OFFSET FLAT:label_131
	jmp	.label_113
.label_110:
	mov	esi, OFFSET FLAT:label_119
.label_113:
	mov	edx, 5
	call	dcgettext
	mov	rdx, rax
	xor	edi, edi
	xor	esi, esi
	xor	eax, eax
.label_126:
	call	error
	mov	edi, 1
	call	usage
.label_80:
	call	xalloc_die
.label_109:
	call	xalloc_die
.label_145:
	call	xalloc_die
.label_147:
	mov	eax, dword ptr [rsp + 0xc]
	xor	edi, edi
	test	al, 4
	jne	.label_150
	mov	esi, OFFSET FLAT:label_154
	jmp	.label_98
.label_108:
	call	xalloc_die
.label_150:
	mov	esi, OFFSET FLAT:label_158
	jmp	.label_98
.label_138:
	call	xalloc_die
	.section	.text
	.align	16
	#Procedure 0x402f06
	.globl sub_402f06
	.type sub_402f06, @function
sub_402f06:

	nop	word ptr cs:[rax + rax]
.label_168:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_163
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
	mov	rdi, qword ptr [rip + file_name]
	test	rdi, rdi
	mov	ebp, dword ptr [rbp]
	jne	.label_164
	xor	edi, edi
	mov	edx, OFFSET FLAT:label_165
	xor	eax, eax
	mov	esi, ebp
	mov	rcx, rbx
	call	error
	mov	edi, dword ptr [rip + exit_failure]
	call	_exit
	.section	.text
	.align	16
	#Procedure 0x402f51

	.globl close_stdout
	.type close_stdout, @function
close_stdout:
	push	rbp
	push	rbx
	push	rax
	mov	rdi, qword ptr [rip + stdout]
	call	close_stream
	test	eax, eax
	je	.label_167
	mov	bl, byte ptr [rip + ignore_EPIPE]
	call	__errno_location
	mov	rbp, rax
	cmp	bl, 0
	je	.label_168
	cmp	dword ptr [rbp], 0x20
	jne	.label_168
.label_167:
	mov	rdi, qword ptr [rip + stderr]
	call	close_stream
	test	eax, eax
	jne	.label_169
	add	rsp, 8
	pop	rbx
	pop	rbp
	ret	
.label_169:
	mov	edi, dword ptr [rip + exit_failure]
	call	_exit
.label_164:
	call	quotearg_colon
	mov	rcx, rax
	xor	edi, edi
	mov	edx, OFFSET FLAT:label_166
	xor	eax, eax
	mov	esi, ebp
	mov	r8, rbx
	call	error
	mov	edi, dword ptr [rip + exit_failure]
	call	_exit
	nop	dword ptr [rax]
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x402fd0

	.globl compare_ranges
	.type compare_ranges, @function
compare_ranges:
	mov	eax, dword ptr [rdi]
	xor	ecx, ecx
	cmp	eax, dword ptr [rsi]
	setg	cl
	mov	eax, 0xffffffff
	cmovge	eax, ecx
	ret	
	.section	.text
	.align	16
	#Procedure 0x402fe2
	.globl sub_402fe2
	.type sub_402fe2, @function
sub_402fe2:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x402ff0

	.globl set_program_name
	.type set_program_name, @function
set_program_name:
	push	r14
	push	rbx
	push	rax
	mov	rbx, rdi
	test	rbx, rbx
	je	.label_172
	mov	esi, 0x2f
	mov	rdi, rbx
	call	strrchr
	test	rax, rax
	lea	r14, [rax + 1]
	cmove	r14, rbx
	mov	rax, r14
	sub	rax, rbx
	cmp	rax, 7
	jl	.label_174
	lea	rdi, [r14 - 7]
	mov	esi, OFFSET FLAT:label_170
	mov	edx, 7
	call	strncmp
	test	eax, eax
	jne	.label_174
	mov	esi, OFFSET FLAT:label_175
	mov	edx, 3
	mov	rdi, r14
	call	strncmp
	test	eax, eax
	jne	.label_171
	add	r14, 3
	mov	qword ptr [rip + __progname],  r14
.label_171:
	mov	rbx, r14
.label_174:
	mov	qword ptr [rip + program_name],  rbx
	mov	qword ptr [rip + __progname_full],  rbx
	add	rsp, 8
	pop	rbx
	pop	r14
	ret	
.label_172:
	mov	rcx, qword ptr [rip + stderr]
	mov	edi, OFFSET FLAT:label_173
	mov	esi, 0x37
	mov	edx, 1
	call	fwrite
	call	abort
	.section	.text
	.align	16
	#Procedure 0x403091
	.globl sub_403091
	.type sub_403091, @function
sub_403091:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4030a0

	.globl hard_locale
	.type hard_locale, @function
hard_locale:
	push	rbx
	xor	esi, esi
	call	setlocale
	mov	bl, 1
	test	rax, rax
	je	.label_177
	cmp	byte ptr [rax], 0x43
	jne	.label_179
	cmp	byte ptr [rax + 1], 0
	je	.label_176
.label_179:
	mov	esi, OFFSET FLAT:label_178
	mov	rdi, rax
	call	strcmp
	test	eax, eax
	jne	.label_177
.label_176:
	xor	ebx, ebx
.label_177:
	mov	eax, ebx
	pop	rbx
	ret	
	.section	.text
	.align	16
	#Procedure 0x4030d1
	.globl sub_4030d1
	.type sub_4030d1, @function
sub_4030d1:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4030e0
	.globl xnmalloc
	.type xnmalloc, @function
xnmalloc:

	push	rbx
	mov	rbx, rsi
	movabs	rax, 0x7fffffffffffffff
	xor	edx, edx
	div	rbx
	cmp	rax, rdi
	jb	.label_180
	imul	rbx, rdi
	mov	rdi, rbx
	call	malloc
	test	rbx, rbx
	je	.label_181
	test	rax, rax
	je	.label_180
.label_181:
	pop	rbx
	ret	
.label_180:
	call	xalloc_die
	.section	.text
	.align	16
	#Procedure 0x403115
	.globl sub_403115
	.type sub_403115, @function
sub_403115:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x403120
	.globl emit_bug_reporting_address
	.type emit_bug_reporting_address, @function
emit_bug_reporting_address:

	push	rax
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_182
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:label_183
	xor	eax, eax
	mov	rsi, rcx
	call	__printf_chk
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_185
	mov	edx, 5
	call	dcgettext
	mov	rsi, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:label_186
	mov	ecx, OFFSET FLAT:label_187
	xor	eax, eax
	call	__printf_chk
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_184
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	pop	rax
	jmp	fputs_unlocked
	.section	.text
	.align	16
	#Procedure 0x403194
	.globl sub_403194
	.type sub_403194, @function
sub_403194:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4031a0
	.globl reset_fields
	.type reset_fields, @function
reset_fields:

	push	rax
	mov	qword ptr [rip + n_frp],  0
	mov	qword ptr [rip + n_frp_allocated],  0
	mov	rdi, qword ptr [rip + frp]
	call	free
	mov	qword ptr [rip + frp],  0
	pop	rax
	ret	
.label_194:
	mov	rbx, qword ptr [rip + stderr]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_195
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
	#Procedure 0x403208
	.globl sub_403208
	.type sub_403208, @function
sub_403208:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40320d

	.globl usage
	.type usage, @function
usage:
	push	rbp
	push	rbx
	push	rax
	mov	ebp, edi
	test	ebp, ebp
	jne	.label_194
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_201
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	mov	rdx, qword ptr [rip + program_name]
	mov	edi, 1
	xor	eax, eax
	mov	rsi, rcx
	call	__printf_chk
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_204
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_205
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_190
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_200
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_196
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_210
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_197
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_198
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_199
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_192
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_193
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_202
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_203
	mov	edx, 5
	call	dcgettext
	mov	rsi, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:label_186
	mov	ecx, OFFSET FLAT:label_187
	xor	eax, eax
	call	__printf_chk
	mov	edi, 5
	xor	esi, esi
	call	setlocale
	test	rax, rax
	je	.label_207
	mov	esi, OFFSET FLAT:label_191
	mov	edx, 3
	mov	rdi, rax
	call	strncmp
	test	eax, eax
	je	.label_207
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_189
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	call	fputs_unlocked
.label_207:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_208
	mov	edx, 5
	call	dcgettext
	mov	rsi, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:label_187
	mov	ecx, OFFSET FLAT:label_206
	xor	eax, eax
	call	__printf_chk
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_188
	mov	edx, 5
	call	dcgettext
	mov	rsi, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:label_206
	mov	ecx, OFFSET FLAT:label_209
	xor	eax, eax
	call	__printf_chk
	mov	edi, ebp
	call	exit
	.section	.text
	.align	16
	#Procedure 0x403490
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
	#Procedure 0x40349f
	.globl sub_40349f
	.type sub_40349f, @function
sub_40349f:

	nop	
	.section	.text
	.align	16
	#Procedure 0x4034a0
	.globl close_stdout_set_file_name
	.type close_stdout_set_file_name, @function
close_stdout_set_file_name:

	mov	qword ptr [rip + file_name],  rdi
	ret	
	.section	.text
	.align	16
	#Procedure 0x4034a8
	.globl sub_4034a8
	.type sub_4034a8, @function
sub_4034a8:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4034b0
	.globl quotearg_colon_mem
	.type quotearg_colon_mem, @function
quotearg_colon_mem:

	sub	rsp, 0x38
	mov	rax, rsi
	mov	rdx, rdi
	mov	rcx, qword ptr [rip + label_12]
	mov	qword ptr [rsp + 0x30], rcx
	movups	xmm0, xmmword ptr [rip + label_13]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0, xmmword ptr [rip + label_14]
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
	#Procedure 0x403504
	.globl sub_403504
	.type sub_403504, @function
sub_403504:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x403510

	.globl rpl_fflush
	.type rpl_fflush, @function
rpl_fflush:
	push	rbx
	mov	rbx, rdi
	test	rbx, rbx
	je	.label_211
	mov	rdi, rbx
	call	__freading
	test	eax, eax
	je	.label_211
	test	byte ptr [rbx + 1], 1
	je	.label_211
	xor	esi, esi
	mov	edx, 1
	mov	rdi, rbx
	call	rpl_fseeko
.label_211:
	mov	rdi, rbx
	pop	rbx
	jmp	fflush
	.section	.text
	.align	16
	#Procedure 0x403543
	.globl sub_403543
	.type sub_403543, @function
sub_403543:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x403550

	.globl rpl_calloc
	.type rpl_calloc, @function
rpl_calloc:
	test	rdi, rdi
	mov	eax, 1
	je	.label_212
	test	rsi, rsi
	mov	ecx, 1
	je	.label_213
	mov	rax, rsi
	imul	rax, rdi
	xor	edx, edx
	div	rsi
	cmp	rax, rdi
	mov	rax, rsi
	mov	rcx, rdi
	je	.label_213
	push	rax
	call	__errno_location
	mov	dword ptr [rax], 0xc
	xor	eax, eax
	pop	rcx
	ret	
.label_212:
	mov	ecx, 1
.label_213:
	mov	rdi, rcx
	mov	rsi, rax
	jmp	calloc
	.section	.text
	.align	16
	#Procedure 0x40359b
	.globl sub_40359b
	.type sub_40359b, @function
sub_40359b:

	nop	dword ptr [rax + rax]
.label_214:
	call	xalloc_die
	.section	.text
	.align	16
	#Procedure 0x4035a5
	.globl sub_4035a5
	.type sub_4035a5, @function
sub_4035a5:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4035b3

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
	je	.label_215
	test	r15, r15
	je	.label_214
.label_215:
	mov	rdi, r15
	mov	rsi, r14
	mov	rdx, rbx
	call	memcpy
	mov	rax, r15
	pop	rbx
	pop	r14
	pop	r15
	ret	
.label_220:
	cmp	byte ptr [rbx], 0x60
	mov	ecx, OFFSET FLAT:label_217
	mov	eax, OFFSET FLAT:label_218
	jmp	.label_219
	.section	.text
	.align	16
	#Procedure 0x4035ff
	.globl sub_4035ff
	.type sub_4035ff, @function
sub_4035ff:

	nop	word ptr cs:[rax + rax]
.label_225:
	movsx	ecx, byte ptr [rax + 1]
	and	ecx, 0xffffffdf
	cmp	ecx, 0x42
	jne	.label_216
	cmp	byte ptr [rax + 2], 0x31
	jne	.label_216
	cmp	byte ptr [rax + 3], 0x38
	jne	.label_216
	cmp	byte ptr [rax + 4], 0x30
	jne	.label_216
	cmp	byte ptr [rax + 5], 0x33
	jne	.label_216
	cmp	byte ptr [rax + 6], 0x30
	jne	.label_216
	cmp	byte ptr [rax + 7], 0
	je	.label_220
.label_216:
	cmp	ebp, 9
	mov	ecx, OFFSET FLAT:label_221
	mov	eax, OFFSET FLAT:label_222
.label_219:
	cmove	rax, rcx
.label_226:
	add	rsp, 8
	pop	rbx
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x403652

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
	jne	.label_226
	call	locale_charset
	movsx	ecx, byte ptr [rax]
	and	ecx, 0xffffffdf
	cmp	ecx, 0x47
	je	.label_225
	cmp	ecx, 0x55
	jne	.label_216
	movsx	ecx, byte ptr [rax + 1]
	and	ecx, 0xffffffdf
	cmp	ecx, 0x54
	jne	.label_216
	movsx	ecx, byte ptr [rax + 2]
	and	ecx, 0xffffffdf
	cmp	ecx, 0x46
	jne	.label_216
	cmp	byte ptr [rax + 3], 0x2d
	jne	.label_216
	cmp	byte ptr [rax + 4], 0x38
	jne	.label_216
	cmp	byte ptr [rax + 5], 0
	jne	.label_216
	cmp	byte ptr [rbx], 0x60
	mov	ecx, OFFSET FLAT:label_223
	mov	eax, OFFSET FLAT:label_224
	jmp	.label_219
	.section	.text
	.align	16
	#Procedure 0x4036c0
	.globl x2nrealloc
	.type x2nrealloc, @function
x2nrealloc:

	push	rbx
	mov	rbx, rdx
	mov	rcx, qword ptr [rsi]
	test	rdi, rdi
	je	.label_227
	movabs	rax, 0x5555555555555554
	xor	edx, edx
	div	rbx
	cmp	rax, rcx
	jbe	.label_231
	mov	rax, rcx
	shr	rax, 1
	lea	rcx, [rcx + rax + 1]
	jmp	.label_228
.label_231:
	call	xalloc_die
.label_232:
	mov	rsi, rbx
	call	realloc
	test	rbx, rbx
	je	.label_233
	test	rax, rax
	je	.label_231
.label_233:
	pop	rbx
	ret	
.label_227:
	test	rcx, rcx
	jne	.label_230
	mov	eax, 0x80
	xor	edx, edx
	div	rbx
	xor	ecx, ecx
	cmp	rbx, 0x80
	seta	cl
	add	rcx, rax
.label_230:
	movabs	rax, 0x7fffffffffffffff
	xor	edx, edx
	div	rbx
	cmp	rax, rcx
	jb	.label_229
.label_228:
	mov	qword ptr [rsi], rcx
	imul	rbx, rcx
	test	rdi, rdi
	je	.label_232
	test	rbx, rbx
	jne	.label_232
	call	free
	xor	eax, eax
	pop	rbx
	ret	
.label_229:
	call	xalloc_die
	.section	.text
	.align	16
	#Procedure 0x403757
	.globl sub_403757
	.type sub_403757, @function
sub_403757:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x403760
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
	#Procedure 0x403821
	.globl sub_403821
	.type sub_403821, @function
sub_403821:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x403830
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
	#Procedure 0x403863
	.globl sub_403863
	.type sub_403863, @function
sub_403863:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x403870

	.globl main
	.type main, @function
main:
	push	rbp
	push	r15
	push	r14
	push	r12
	push	rbx
	mov	r15, rsi
	mov	ebp, edi
	mov	rdi, qword ptr [r15]
	call	set_program_name
	mov	edi, 6
	mov	esi, OFFSET FLAT:label_42
	call	setlocale
	mov	edi, OFFSET FLAT:label_244
	mov	esi, OFFSET FLAT:label_245
	call	bindtextdomain
	mov	edi, OFFSET FLAT:label_244
	call	textdomain
	mov	edi, OFFSET FLAT:close_stdout
	call	atexit
	mov	dword ptr [rip + operating_mode],  0
	mov	byte ptr [rip + suppress_non_delimited],  0
	mov	byte ptr [rip + delim],  0
	mov	byte ptr [rip + have_read_stdin],  0
	xor	r12d, r12d
	jmp	.label_236
.label_248:
	mov	dword ptr [rip + operating_mode],  1
	mov	r14, qword ptr [rip + optarg]
	nop	dword ptr [rax]
.label_236:
	mov	edx, OFFSET FLAT:label_247
	mov	ecx, OFFSET FLAT:longopts
	xor	r8d, r8d
	mov	edi, ebp
	mov	rsi, r15
	call	getopt_long
	cmp	eax, 0x61
	jle	.label_241
	add	eax, -0x62
	cmp	eax, 0x1f
	ja	.label_243
	jmp	qword ptr [(rax * 8) + label_246]
.label_597:
	cmp	dword ptr [rip + operating_mode],  0
	je	.label_248
	jmp	.label_250
.label_598:
	mov	rcx, qword ptr [rip + optarg]
	movzx	eax, byte ptr [rcx]
	test	al, al
	je	.label_251
	cmp	byte ptr [rcx + 1], 0
	jne	.label_253
.label_251:
	mov	byte ptr [rip + delim],  al
	mov	r12b, 1
	jmp	.label_236
.label_599:
	cmp	dword ptr [rip + operating_mode],  0
	jne	.label_250
	mov	dword ptr [rip + operating_mode],  2
	mov	r14, qword ptr [rip + optarg]
	jmp	.label_236
.label_600:
	mov	byte ptr [rip + suppress_non_delimited],  1
	jmp	.label_236
.label_601:
	mov	byte ptr [rip + line_delim],  1
	jmp	.label_236
.label_602:
	mov	byte ptr [rip + output_delimiter_specified],  1
	mov	rbx, qword ptr [rip + optarg]
	cmp	byte ptr [rbx], 0
	mov	eax, 1
	je	.label_242
	mov	rdi, rbx
	call	strlen
.label_242:
	mov	qword ptr [rip + output_delimiter_length],  rax
	mov	rdi, rbx
	call	xstrdup
	mov	qword ptr [rip + output_delimiter_string],  rax
	jmp	.label_236
.label_603:
	mov	byte ptr [rip + complement],  1
	jmp	.label_236
.label_241:
	cmp	eax, -1
	jne	.label_259
	mov	eax, dword ptr [rip + operating_mode]
	test	eax, eax
	je	.label_261
	test	r12b, r12b
	je	.label_266
	cmp	eax, 2
	jne	.label_268
.label_266:
	cmp	eax, 2
	je	.label_263
	test	byte ptr [rip + suppress_non_delimited],  1
	jne	.label_234
.label_263:
	xor	ecx, ecx
	cmp	eax, 2
	setne	cl
	shl	ecx, 2
	movzx	eax, byte ptr [rip + complement]
	lea	esi, [rcx + rax*2]
	mov	rdi, r14
	call	set_fields
	test	r12b, r12b
	jne	.label_249
	mov	byte ptr [rip + delim],  9
.label_249:
	cmp	qword ptr [rip + output_delimiter_string],  0
	jne	.label_252
	mov	al, byte ptr [rip + delim]
	mov	byte ptr [rip + main.dummy],  al
	mov	byte ptr [rip + label_254],  0
	mov	qword ptr [rip + output_delimiter_string], OFFSET FLAT:main.dummy
	mov	qword ptr [rip + output_delimiter_length],  1
.label_252:
	mov	eax, dword ptr [rip + optind]
	cmp	eax, ebp
	jne	.label_264
	mov	edi, OFFSET FLAT:label_256
	call	cut_file
	mov	bl, al
	jmp	.label_235
.label_264:
	mov	bl, 1
	jge	.label_235
	mov	bl, 1
	nop	word ptr [rax + rax]
.label_237:
	cdqe	
	mov	rdi, qword ptr [r15 + rax*8]
	call	cut_file
	and	bl, al
	mov	eax, dword ptr [rip + optind]
	inc	eax
	mov	dword ptr [rip + optind],  eax
	cmp	eax, ebp
	jl	.label_237
.label_235:
	cmp	byte ptr [rip + have_read_stdin],  1
	jne	.label_255
	mov	rdi, qword ptr [rip + stdin]
	call	rpl_fclose
	cmp	eax, -1
	jne	.label_255
	call	__errno_location
	mov	esi, dword ptr [rax]
	xor	ebx, ebx
	xor	edi, edi
	mov	edx, OFFSET FLAT:label_256
	xor	eax, eax
	call	error
.label_255:
	not	bl
	and	bl, 1
	movzx	eax, bl
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_259:
	cmp	eax, 0xffffff7d
	je	.label_267
	cmp	eax, 0xffffff7e
	jne	.label_243
	xor	edi, edi
	call	usage
.label_267:
	mov	rdi, qword ptr [rip + stdout]
	mov	rcx, qword ptr [rip + Version]
	mov	esi, OFFSET FLAT:label_206
	mov	edx, OFFSET FLAT:label_186
	mov	r8d, OFFSET FLAT:label_238
	mov	r9d, OFFSET FLAT:label_239
	mov	eax, 0
	push	0
	push	OFFSET FLAT:label_240
	call	version_etc
	add	rsp, 0x10
	xor	edi, edi
	call	exit
.label_243:
	mov	edi, 1
	call	usage
.label_250:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_257
	jmp	.label_258
.label_261:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_260
	jmp	.label_258
.label_268:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_262
	jmp	.label_258
.label_234:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_265
	jmp	.label_258
.label_253:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_269
.label_258:
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
	.section	.text
	.align	16
	#Procedure 0x403ba0
	.globl quotearg_char_mem
	.type quotearg_char_mem, @function
quotearg_char_mem:

	sub	rsp, 0x38
	mov	ecx, edx
	mov	r8, rsi
	mov	rdx, rdi
	mov	rsi, qword ptr [rip + label_12]
	mov	qword ptr [rsp + 0x30], rsi
	movups	xmm0, xmmword ptr [rip + label_13]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0, xmmword ptr [rip + label_14]
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
	#Procedure 0x403c0e
	.globl sub_403c0e
	.type sub_403c0e, @function
sub_403c0e:

	nop	
	.section	.text
	.align	16
	#Procedure 0x403c10

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
	je	.label_270
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
.label_270:
	call	abort
	.section	.text
	.align	16
	#Procedure 0x403ca5
	.globl sub_403ca5
	.type sub_403ca5, @function
sub_403ca5:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x403cb0

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
.label_355:
	mov	r11, rbp
	xor	r14d, r14d
	mov	ecx, r15d
	cmp	r15d, 0xa
	ja	.label_353
	mov	edi, 7
	mov	r13b, 1
	xor	esi, esi
	mov	r8, qword ptr [rsp + 0x30]
	jmp	qword ptr [(rcx * 8) + label_357]
.label_585:
	mov	byte ptr [rsp + 7], r10b
	mov	edi, OFFSET FLAT:label_362
	mov	esi, r15d
	mov	rbx, r11
	mov	ebp, r9d
	call	gettext_quote
	mov	qword ptr [rsp + 0x78], rax
	mov	edi, OFFSET FLAT:label_222
	mov	esi, r15d
	call	gettext_quote
	mov	r9d, ebp
	mov	r10b, byte ptr [rsp + 7]
	mov	r11, rbx
	mov	qword ptr [rsp + 0x70], rax
.label_586:
	mov	dword ptr [rsp + 0x50], r9d
	mov	byte ptr [rsp + 7], r10b
	test	r12b, 1
	mov	r14d, 0
	mov	rcx, qword ptr [rsp + 0x78]
	jne	.label_377
	mov	al, byte ptr [rcx]
	test	al, al
	mov	r14d, 0
	je	.label_377
	xor	r14d, r14d
	nop	word ptr cs:[rax + rax]
.label_389:
	cmp	r14, r11
	jae	.label_276
	mov	rdx, qword ptr [rsp + 8]
	mov	byte ptr [rdx + r14], al
.label_276:
	movzx	eax, byte ptr [rcx + r14 + 1]
	inc	r14
	test	al, al
	jne	.label_389
.label_377:
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
	jmp	.label_277
.label_578:
	xor	edi, edi
	xor	r14d, r14d
	mov	r13d, eax
	xor	esi, esi
	jmp	.label_277
.label_581:
	mov	al, 1
.label_579:
	mov	r12b, 1
.label_582:
	test	r12b, 1
	mov	cl, 1
	je	.label_290
	mov	ecx, eax
.label_290:
	mov	al, cl
.label_580:
	test	r12b, 1
	jne	.label_295
	test	r11, r11
	je	.label_296
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx], 0x27
.label_296:
	mov	r14d, 1
	jmp	.label_299
.label_295:
	xor	r14d, r14d
.label_299:
	mov	ecx, OFFSET FLAT:label_222
	mov	qword ptr [rsp + 0x48], rcx
	mov	ecx, 1
	mov	qword ptr [rsp + 0x40], rcx
	mov	r13d, eax
	mov	sil, r12b
	mov	edi, 2
	jmp	.label_277
.label_583:
	test	r12b, 1
	jne	.label_313
	test	r11, r11
	je	.label_315
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax], 0x22
.label_315:
	mov	r14d, 1
	jmp	.label_319
.label_584:
	mov	r13b, 1
	mov	edi, 5
	xor	r14d, r14d
	mov	eax, OFFSET FLAT:label_221
	mov	qword ptr [rsp + 0x48], rax
	mov	eax, 1
	mov	qword ptr [rsp + 0x40], rax
	mov	sil, 1
	jmp	.label_277
.label_313:
	xor	r14d, r14d
.label_319:
	mov	eax, OFFSET FLAT:label_221
	mov	qword ptr [rsp + 0x48], rax
	mov	eax, 1
	mov	qword ptr [rsp + 0x40], rax
	mov	r13b, 1
	mov	sil, r12b
	mov	edi, 5
	nop	word ptr cs:[rax + rax]
.label_277:
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
	jmp	.label_338
	.section	.text
	.align	16
	#Procedure 0x403f9d
	.globl sub_403f9d
	.type sub_403f9d, @function
sub_403f9d:

	nop	dword ptr [rax]
.label_271:
	inc	rsi
.label_338:
	cmp	rbp, -1
	je	.label_371
	cmp	rsi, rbp
	jne	.label_372
	jmp	.label_373
	.section	.text
	.align	16
	#Procedure 0x403fb3
	.globl sub_403fb3
	.type sub_403fb3, @function
sub_403fb3:

	nop	word ptr cs:[rax + rax]
.label_371:
	mov	rcx, -1
	cmp	byte ptr [rdi + rsi], 0
	je	.label_378
.label_372:
	cmp	byte ptr [rsp + 0x2f], 0
	je	.label_381
	mov	rax, qword ptr [rsp + 0x40]
	lea	rbx, [rsi + rax]
	cmp	rax, 2
	jb	.label_382
	cmp	rbp, -1
	jne	.label_382
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
.label_382:
	cmp	rbx, rbp
	jbe	.label_278
.label_381:
	xor	r8d, r8d
.label_292:
	movzx	r15d, byte ptr [rdi + rsi]
	cmp	r15, 0x7e
	ja	.label_281
	xor	edx, edx
	mov	r13b, 1
	mov	cl, 0x6e
	mov	bl, 0x61
	xor	eax, eax
	jmp	qword ptr [(r15 * 8) + label_283]
.label_612:
	test	rsi, rsi
	jne	.label_273
	jmp	.label_289
	.section	.text
	.align	16
	#Procedure 0x404055
	.globl sub_404055
	.type sub_404055, @function
sub_404055:

	nop	word ptr cs:[rax + rax]
.label_278:
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
	jne	.label_303
	cmp	byte ptr [rsp + 6], 0
	mov	rdi, qword ptr [rsp + 0x30]
	mov	r11, rbx
	mov	r10d, r15d
	mov	rax, qword ptr [rsp + 0x38]
	mov	r9d, ebp
	mov	rsi, r12
	mov	r12, rax
	mov	rbp, qword ptr [rsp + 0x20]
	je	.label_292
	jmp	.label_318
.label_303:
	mov	rdi, qword ptr [rsp + 0x30]
	mov	r11, rbx
	mov	r10d, r15d
	mov	rax, qword ptr [rsp + 0x38]
	mov	r9d, ebp
	mov	rsi, r12
	mov	r12, rax
	mov	rbp, qword ptr [rsp + 0x20]
	jmp	.label_292
.label_616:
	xor	eax, eax
	cmp	rbp, -1
	je	.label_329
	test	rsi, rsi
	jne	.label_331
	cmp	rbp, 1
	je	.label_289
	xor	r13d, r13d
	jmp	.label_285
.label_605:
	cmp	byte ptr [rsp + 0x17], 0
	je	.label_337
	cmp	byte ptr [rsp + 6], 0
	jne	.label_294
	cmp	r12d, 2
	jne	.label_341
	mov	eax, r9d
	and	al, 1
	jne	.label_341
	cmp	r14, r11
	jae	.label_344
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], 0x27
.label_344:
	lea	rax, [r14 + 1]
	cmp	rax, r11
	jae	.label_347
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + rax], 0x24
.label_347:
	lea	rax, [r14 + 2]
	cmp	rax, r11
	jae	.label_374
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + rax], 0x27
.label_374:
	add	r14, 3
	mov	r9b, 1
.label_341:
	mov	rcx, r14
	cmp	rcx, r11
	jae	.label_356
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + rcx], 0x5c
.label_356:
	lea	r14, [rcx + 1]
	mov	al, 1
	mov	r15b, 0x30
	cmp	r12d, 2
	je	.label_359
	lea	rdx, [rsi + 1]
	cmp	rdx, rbp
	jae	.label_359
	mov	dl, byte ptr [rdi + rdx]
	add	dl, 0xd0
	cmp	dl, 9
	ja	.label_359
	cmp	r14, r11
	jae	.label_380
	mov	rdx, qword ptr [rsp + 8]
	mov	byte ptr [rdx + r14], 0x30
.label_380:
	lea	rdx, [rcx + 2]
	cmp	rdx, r11
	jae	.label_367
	mov	rbx, qword ptr [rsp + 8]
	mov	byte ptr [rbx + rdx], 0x30
.label_367:
	add	rcx, 3
	xor	r13d, r13d
	mov	r14, rcx
	jmp	.label_285
.label_606:
	mov	bl, 0x62
	jmp	.label_330
.label_607:
	mov	cl, 0x74
	jmp	.label_312
.label_608:
	mov	bl, 0x76
	jmp	.label_330
.label_609:
	mov	bl, 0x66
	jmp	.label_330
.label_610:
	mov	cl, 0x72
	jmp	.label_312
.label_613:
	mov	r15b, 0x27
	mov	al, 1
	mov	qword ptr [rsp + 0xa0], rax
	cmp	r12d, 2
	jne	.label_387
	cmp	byte ptr [rsp + 6], 0
	jne	.label_272
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
	jae	.label_275
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], 0x27
.label_275:
	lea	rax, [r14 + 1]
	cmp	rax, r11
	jae	.label_286
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + rax], 0x5c
.label_286:
	lea	rax, [r14 + 2]
	cmp	rax, r11
	jae	.label_291
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + rax], 0x27
.label_291:
	add	r14, 3
	xor	r9d, r9d
.label_387:
	xor	eax, eax
	mov	r13b, 1
	jmp	.label_285
.label_614:
	mov	r15b, 0x3f
	cmp	r12d, 5
	je	.label_301
	cmp	r12d, 2
	jne	.label_273
	cmp	byte ptr [rsp + 6], 0
	je	.label_273
	jmp	.label_272
.label_615:
	cmp	r12d, 2
	jne	.label_314
	cmp	byte ptr [rsp + 6], 0
	jne	.label_272
	mov	r15b, 0x5c
	xor	eax, eax
	xor	r13d, r13d
	jmp	.label_280
.label_281:
	mov	dword ptr [rsp + 0x54], r8d
	mov	dword ptr [rsp + 0x50], r9d
	mov	byte ptr [rsp + 7], r10b
	mov	qword ptr [rsp + 0x98], r11
	cmp	qword ptr [rsp + 0xa8], 1
	jne	.label_324
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
.label_307:
	and	r13b, 1
	mov	r8d, r13d
	or	r8b, byte ptr [rsp + 0x2a]
	mov	qword ptr [rsp + 0x60], r12
	cmp	r12, 1
	mov	r11, qword ptr [rsp + 0x98]
	mov	r10b, byte ptr [rsp + 7]
	mov	r12, qword ptr [rsp + 0x38]
	mov	r9d, dword ptr [rsp + 0x50]
	ja	.label_340
	test	r8b, r8b
	je	.label_340
	xor	eax, eax
	mov	rbp, qword ptr [rsp + 0x20]
	mov	r8d, dword ptr [rsp + 0x54]
	jmp	.label_285
.label_329:
	test	rsi, rsi
	jne	.label_300
	mov	cl, byte ptr [rdi + 1]
	test	cl, cl
	jne	.label_300
.label_289:
	mov	dl, 1
.label_611:
	cmp	byte ptr [rsp + 0x1f], 0
	je	.label_272
	xor	eax, eax
	mov	r13b, dl
	nop	word ptr [rax + rax]
.label_285:
	cmp	byte ptr [rsp + 0x2e], 0
	je	.label_365
	cmp	qword ptr [rsp + 0xf0], 0
	jne	.label_366
	jmp	.label_370
	.section	.text
	.align	16
	#Procedure 0x4043a4
	.globl sub_4043a4
	.type sub_4043a4, @function
sub_4043a4:

	nop	word ptr cs:[rax + rax]
.label_365:
	cmp	byte ptr [rsp + 0x2d], 0
	je	.label_370
.label_366:
	mov	ebx, r8d
	mov	r8, rsi
	mov	ecx, r15d
	shr	cl, 5
	movzx	edx, cl
	mov	esi, 1
	mov	ecx, r15d
	shl	esi, cl
	test	bl, bl
	jne	.label_375
	mov	rcx, qword ptr [rsp + 0xf0]
	and	esi, dword ptr [rcx + rdx*4]
	mov	ebx, r15d
	mov	rsi, r8
	je	.label_280
	jmp	.label_385
	.section	.text
	.align	16
	#Procedure 0x4043ed
	.globl sub_4043ed
	.type sub_4043ed, @function
sub_4043ed:

	nop	dword ptr [rax]
.label_370:
	test	r8b, r8b
	mov	ebx, r15d
	jne	.label_385
	jmp	.label_280
.label_375:
	mov	ebx, r15d
	mov	rsi, r8
	jmp	.label_385
.label_337:
	cmp	dword ptr [rsp + 0x90], 0
	jne	.label_271
	xor	r15d, r15d
	jmp	.label_273
.label_314:
	mov	cl, 0x5c
	cmp	byte ptr [rsp + 0x29], 0
	je	.label_312
	xor	eax, eax
	mov	r15b, 0x5c
	xor	r13d, r13d
	jmp	.label_280
.label_312:
	cmp	byte ptr [rsp + 0x1f], 0
	mov	ebx, ecx
	je	.label_272
.label_330:
	xor	eax, eax
	cmp	byte ptr [rsp + 0x17], 0
	mov	r13d, 0
	je	.label_285
	nop	word ptr cs:[rax + rax]
.label_385:
	cmp	byte ptr [rsp + 6], 0
	jne	.label_294
	cmp	r12d, 2
	jne	.label_297
	mov	eax, r9d
	and	al, 1
	jne	.label_297
	cmp	r14, r11
	jae	.label_327
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], 0x27
.label_327:
	lea	rax, [r14 + 1]
	cmp	rax, r11
	jae	.label_298
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + rax], 0x24
.label_298:
	lea	rax, [r14 + 2]
	cmp	rax, r11
	jae	.label_306
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + rax], 0x27
.label_306:
	add	r14, 3
	mov	r9b, 1
.label_297:
	cmp	r14, r11
	jae	.label_317
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], 0x5c
.label_317:
	inc	r14
	jmp	.label_304
.label_324:
	mov	qword ptr [rsp + 0x80], 0
	cmp	rbp, -1
	jne	.label_325
	mov	rbx, rsi
	call	strlen
	mov	rsi, rbx
	mov	rdi, qword ptr [rsp + 0x30]
	mov	rbp, rax
.label_325:
	lea	rax, [rdi + rsi]
	mov	qword ptr [rsp + 0x60], rax
	mov	r13b, 1
	xor	r12d, r12d
	lea	rax, [rsp + 0x80]
	mov	rcx, rax
	mov	qword ptr [rsp + 0x20], rbp
	mov	qword ptr [rsp + 0x58], rsi
.label_334:
	lea	rbx, [r12 + rsi]
	lea	rsi, [rdi + rbx]
	mov	rdx, rbp
	sub	rdx, rbx
	lea	rdi, [rsp + 0x94]
	call	rpl_mbrtowc
	mov	rbp, rax
	test	rbp, rbp
	je	.label_346
	cmp	rbp, -1
	movabs	rsi, 0x20000002b
	je	.label_349
	cmp	rbp, -2
	je	.label_352
	cmp	rbp, 1
	seta	al
	and	al, byte ptr [rsp + 0x2b]
	cmp	al, 1
	mov	rdi, qword ptr [rsp + 0x30]
	mov	r11, qword ptr [rsp + 0x98]
	jne	.label_388
	mov	rax, qword ptr [rsp + 0x60]
	lea	rax, [rax + r12]
	mov	ecx, 1
	nop	word ptr cs:[rax + rax]
.label_384:
	movsx	edx, byte ptr [rax + rcx]
	add	edx, -0x5b
	cmp	edx, 0x21
	ja	.label_358
	bt	rsi, rdx
	jb	.label_369
.label_358:
	inc	rcx
	cmp	rcx, rbp
	jb	.label_384
.label_388:
	mov	edi, dword ptr [rsp + 0x94]
	call	iswprint
	test	eax, eax
	jne	.label_390
	xor	r13d, r13d
.label_390:
	lea	rdi, [rsp + 0x80]
	add	r12, rbp
	mov	rbx, rdi
	call	mbsinit
	mov	rcx, rbx
	test	eax, eax
	mov	rdi, qword ptr [rsp + 0x30]
	mov	rbp, qword ptr [rsp + 0x20]
	mov	rsi, qword ptr [rsp + 0x58]
	je	.label_334
	jmp	.label_307
.label_359:
	xor	r13d, r13d
	jmp	.label_285
.label_300:
	mov	rbp, -1
	xor	r13d, r13d
	jmp	.label_285
.label_301:
	cmp	dword ptr [rsp + 0x8c], 0
	je	.label_273
	lea	rcx, [rsi + 2]
	cmp	rcx, rbp
	jae	.label_273
	cmp	byte ptr [rdi + rsi + 1], 0x3f
	jne	.label_273
	movsx	edx, byte ptr [rdi + rcx]
	xor	eax, eax
	cmp	edx, 0x3e
	ja	.label_343
	mov	rbx, rsi
	movabs	rsi, 0x7000a38200000000
	bt	rsi, rdx
	jae	.label_361
	cmp	byte ptr [rsp + 6], 0
	jne	.label_288
	cmp	r14, r11
	jae	.label_309
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], 0x3f
.label_309:
	lea	rax, [r14 + 1]
	cmp	rax, r11
	jae	.label_311
	mov	rsi, qword ptr [rsp + 8]
	mov	byte ptr [rsi + rax], 0x22
.label_311:
	lea	rax, [r14 + 2]
	cmp	rax, r11
	jae	.label_302
	mov	rsi, qword ptr [rsp + 8]
	mov	byte ptr [rsi + rax], 0x22
.label_302:
	lea	rax, [r14 + 3]
	cmp	rax, r11
	jae	.label_386
	mov	rsi, qword ptr [rsp + 8]
	mov	byte ptr [rsi + rax], 0x3f
.label_386:
	add	r14, 4
	xor	eax, eax
	mov	rsi, rcx
	mov	r15b, dl
	xor	r13d, r13d
	jmp	.label_285
.label_273:
	xor	eax, eax
.label_331:
	xor	r13d, r13d
	jmp	.label_285
.label_340:
	add	qword ptr [rsp + 0x60], rsi
	xor	eax, eax
	mov	rbp, qword ptr [rsp + 0x20]
	jmp	.label_323
	.section	.text
	.align	16
	#Procedure 0x4046d2
	.globl sub_4046d2
	.type sub_4046d2, @function
sub_4046d2:

	nop	word ptr cs:[rax + rax]
.label_274:
	inc	r14
	mov	r15b, byte ptr [rdi + rsi + 1]
	mov	rsi, rdx
.label_323:
	test	r8b, r8b
	je	.label_332
	mov	ecx, dword ptr [rsp + 0x54]
	test	cl, 1
	je	.label_333
	cmp	r14, r11
	jae	.label_335
	mov	rdx, qword ptr [rsp + 8]
	mov	byte ptr [rdx + r14], 0x5c
.label_335:
	inc	r14
	mov	dword ptr [rsp + 0x54], 0
	jmp	.label_333
	.section	.text
	.align	16
	#Procedure 0x40471c
	.globl sub_40471c
	.type sub_40471c, @function
sub_40471c:

	nop	dword ptr [rax]
.label_332:
	cmp	byte ptr [rsp + 6], 0
	jne	.label_318
	cmp	r12d, 2
	jne	.label_345
	mov	eax, r9d
	and	al, 1
	jne	.label_345
	cmp	r14, r11
	jae	.label_348
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], 0x27
.label_348:
	lea	rax, [r14 + 1]
	cmp	rax, r11
	jae	.label_350
	mov	rdx, qword ptr [rsp + 8]
	mov	byte ptr [rdx + rax], 0x24
.label_350:
	lea	rax, [r14 + 2]
	cmp	rax, r11
	jae	.label_354
	mov	rdx, qword ptr [rsp + 8]
	mov	byte ptr [rdx + rax], 0x27
.label_354:
	add	r14, 3
	mov	r9b, 1
.label_345:
	cmp	r14, r11
	jae	.label_316
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], 0x5c
.label_316:
	lea	rax, [r14 + 1]
	cmp	rax, r11
	jae	.label_363
	mov	edx, r15d
	shr	dl, 6
	or	dl, 0x30
	mov	rbx, qword ptr [rsp + 8]
	mov	byte ptr [rbx + rax], dl
.label_363:
	lea	rax, [r14 + 2]
	cmp	rax, r11
	jae	.label_368
	mov	edx, r15d
	shr	dl, 3
	and	dl, 7
	or	dl, 0x30
	mov	rbx, qword ptr [rsp + 8]
	mov	byte ptr [rbx + rax], dl
.label_368:
	add	r14, 3
	and	r15b, 7
	or	r15b, 0x30
	mov	al, 1
.label_333:
	lea	rdx, [rsi + 1]
	cmp	qword ptr [rsp + 0x60], rdx
	jbe	.label_280
	test	r9b, 1
	je	.label_322
	mov	ebx, eax
	and	bl, 1
	jne	.label_322
	mov	rbx, rsi
	cmp	r14, r11
	jae	.label_383
	mov	rsi, qword ptr [rsp + 8]
	mov	byte ptr [rsi + r14], 0x27
.label_383:
	lea	rsi, [r14 + 1]
	cmp	rsi, r11
	jae	.label_320
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + rsi], 0x27
.label_320:
	add	r14, 2
	xor	r9d, r9d
	mov	rsi, rbx
.label_322:
	cmp	r14, r11
	jae	.label_274
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + r14], r15b
	jmp	.label_274
	.section	.text
	.align	16
	#Procedure 0x404823
	.globl sub_404823
	.type sub_404823, @function
sub_404823:

	nop	word ptr cs:[rax + rax]
.label_280:
	test	r9b, 1
	je	.label_282
	and	al, 1
	jne	.label_282
	cmp	r14, r11
	jae	.label_284
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], 0x27
.label_284:
	lea	rax, [r14 + 1]
	cmp	rax, r11
	jae	.label_328
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + rax], 0x27
.label_328:
	add	r14, 2
	xor	r9d, r9d
.label_282:
	mov	ebx, r15d
.label_304:
	cmp	r14, r11
	jae	.label_293
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], bl
.label_293:
	inc	r14
	shl	r13b, 7
	sar	r13b, 7
	and	r13b, r10b
	mov	r10d, r13d
	jmp	.label_271
.label_349:
	xor	r13d, r13d
.label_346:
	mov	rdi, qword ptr [rsp + 0x30]
	mov	rsi, qword ptr [rsp + 0x58]
	jmp	.label_307
.label_352:
	mov	rbp, qword ptr [rsp + 0x20]
	cmp	rbp, rbx
	mov	rdi, qword ptr [rsp + 0x30]
	jbe	.label_310
	mov	rsi, qword ptr [rsp + 0x58]
.label_321:
	mov	rax, qword ptr [rsp + 0x60]
	cmp	byte ptr [rax + r12], 0
	je	.label_326
	lea	rax, [rsi + r12 + 1]
	inc	r12
	cmp	rax, rbp
	jb	.label_321
	xor	r13d, r13d
	jmp	.label_307
.label_310:
	xor	r13d, r13d
	mov	rsi, qword ptr [rsp + 0x58]
	jmp	.label_307
.label_326:
	xor	r13d, r13d
	jmp	.label_307
.label_343:
	xor	r13d, r13d
	jmp	.label_285
.label_361:
	xor	r13d, r13d
	mov	rsi, rbx
	jmp	.label_285
	.section	.text
	.align	16
	#Procedure 0x4048f8
	.globl sub_4048f8
	.type sub_4048f8, @function
sub_4048f8:

	nop	dword ptr [rax + rax]
.label_373:
	mov	rcx, rsi
.label_378:
	cmp	r12d, 2
	setne	al
	test	r14, r14
	setne	dl
	cmp	byte ptr [rsp + 6], 0
	je	.label_336
	or	al, dl
	je	.label_339
.label_336:
	cmp	r12d, 2
	setne	al
	cmp	byte ptr [rsp + 6], 0
	setne	dl
	mov	rsi, qword ptr [rsp + 0xa0]
	test	sil, 1
	mov	bl, byte ptr [rsp + 0x2c]
	mov	rsi, qword ptr [rsp + 0xb0]
	je	.label_342
	or	al, dl
	jne	.label_342
	test	r10b, 1
	jne	.label_351
	cmp	qword ptr [rsp + 0x68], 0
	je	.label_342
	test	r11, r11
	mov	r15d, r12d
	mov	al, bl
	mov	qword ptr [rsp + 0x20], rcx
	mov	r12d, esi
	mov	rbp, qword ptr [rsp + 0x68]
	je	.label_355
.label_342:
	mov	rdx, qword ptr [rsp + 0x48]
	test	rdx, rdx
	je	.label_360
	cmp	byte ptr [rsp + 6], 0
	mov	rcx, qword ptr [rsp + 8]
	jne	.label_364
	mov	al, byte ptr [rdx]
	test	al, al
	je	.label_364
	inc	rdx
	nop	word ptr cs:[rax + rax]
.label_376:
	cmp	r14, r11
	jae	.label_279
	mov	byte ptr [rcx + r14], al
.label_279:
	inc	r14
	movzx	eax, byte ptr [rdx]
	inc	rdx
	test	al, al
	jne	.label_376
	jmp	.label_364
.label_294:
	mov	qword ptr [rsp + 0x20], rbp
.label_318:
	mov	rdx, rdi
	jmp	.label_287
.label_272:
	mov	qword ptr [rsp + 0x20], rbp
.label_369:
	mov	rdx, rdi
	mov	eax, 2
.label_379:
	mov	qword ptr [rsp + 0x38], rax
.label_287:
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
.label_305:
	mov	r14, rax
.label_308:
	mov	rax, r14
	add	rsp, 0xb8
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_339:
	mov	rdx, rdi
	mov	qword ptr [rsp + 0x20], rcx
	jmp	.label_287
.label_351:
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
	jmp	.label_305
.label_360:
	mov	rcx, qword ptr [rsp + 8]
.label_364:
	cmp	r14, r11
	jae	.label_308
	mov	byte ptr [rcx + r14], 0
	jmp	.label_308
.label_288:
	mov	qword ptr [rsp + 0x20], rbp
	mov	rdx, rdi
	mov	eax, 5
	jmp	.label_379
.label_353:
	call	abort
	.section	.text
	.align	16
	#Procedure 0x404ab7
	.globl sub_404ab7
	.type sub_404ab7, @function
sub_404ab7:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404ac0
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
	#Procedure 0x404b35
	.globl sub_404b35
	.type sub_404b35, @function
sub_404b35:

	nop	word ptr cs:[rax + rax]
.label_391:
	call	xalloc_die
	.section	.text
	.align	16
	#Procedure 0x404b45
	.globl sub_404b45
	.type sub_404b45, @function
sub_404b45:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404b53

	.globl xstrndup
	.type xstrndup, @function
xstrndup:
	push	rax
	call	__strndup
	test	rax, rax
	je	.label_391
	pop	rcx
	ret	
	.section	.text
	.align	16
	#Procedure 0x404b60

	.globl freadseek
	.type freadseek, @function
freadseek:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x1008
	mov	rbx, rsi
	mov	r14, rdi
	xor	r15d, r15d
	test	rbx, rbx
	je	.label_393
	mov	rdi, r14
	call	freadahead
	mov	rbp, rax
	lea	r12, [rsp]
	nop	word ptr cs:[rax + rax]
.label_396:
	test	rbp, rbp
	je	.label_392
	mov	rdi, r14
	mov	rsi, r12
	call	freadptr
	test	rax, rax
	je	.label_398
	mov	rax, qword ptr [rsp]
	test	rax, rax
	je	.label_398
	cmp	rax, rbx
	cmovae	rax, rbx
	add	qword ptr [r14 + 8], rax
	sub	rbx, rax
	je	.label_393
	sub	rbp, rax
	je	.label_392
.label_398:
	mov	rdi, r14
	call	fgetc
	cmp	eax, -1
	je	.label_395
	xor	eax, eax
	mov	rcx, rbx
	dec	rcx
	setne	al
	sub	rbp, rax
	dec	rbx
	jne	.label_396
	jmp	.label_393
.label_392:
	mov	rdi, r14
	call	fileno
	test	eax, eax
	js	.label_394
	xor	esi, esi
	mov	edx, 1
	mov	edi, eax
	call	lseek
	test	rax, rax
	js	.label_394
	mov	edx, 1
	mov	rdi, r14
	mov	rsi, rbx
	call	rpl_fseeko
	mov	r15d, eax
	jmp	.label_393
.label_394:
	mov	r12d, 0x1000
	lea	r15, [rsp]
	xor	r13d, r13d
	nop	word ptr cs:[rax + rax]
.label_397:
	cmp	rbx, 0x1000
	mov	rbp, rbx
	cmova	rbp, r12
	mov	esi, 1
	mov	rdi, r15
	mov	rdx, rbp
	mov	rcx, r14
	call	fread
	cmp	rax, rbp
	mov	rcx, rbp
	cmovb	rcx, r13
	cmp	rax, rbp
	jb	.label_395
	sub	rbx, rcx
	jne	.label_397
	xor	r15d, r15d
	jmp	.label_393
.label_395:
	mov	rdi, r14
	call	ferror
	neg	eax
	sbb	r15d, r15d
.label_393:
	mov	eax, r15d
	add	rsp, 0x1008
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x404cac
	.globl sub_404cac
	.type sub_404cac, @function
sub_404cac:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x404cb0

	.globl getndelim2
	.type getndelim2, @function
getndelim2:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x58
	mov	r13d, r9d
	mov	dword ptr [rsp + 4], r8d
	mov	rbx, rcx
	mov	qword ptr [rsp + 0x28], rdx
	mov	r15, rsi
	mov	rbp, rdi
	mov	rcx, qword ptr [rbp]
	test	rcx, rcx
	je	.label_408
	mov	r14, qword ptr [r15]
	jmp	.label_407
.label_408:
	cmp	rbx, 0x40
	mov	r14d, 0x40
	cmovb	r14, rbx
	mov	rdi, r14
	call	malloc
	mov	rcx, rax
	mov	rax, -1
	test	rcx, rcx
	je	.label_419
.label_407:
	mov	qword ptr [rsp + 0x10], rcx
	mov	qword ptr [rsp + 0x48], rbp
	mov	r12, r14
	sub	r12, qword ptr [rsp + 0x28]
	mov	qword ptr [rsp + 0x50], r15
	jae	.label_401
	mov	qword ptr [rsp + 0x30], -1
	jmp	.label_404
.label_401:
	mov	qword ptr [rsp + 0x30], -1
	cmp	r14, rbx
	jb	.label_409
	test	r12, r12
	je	.label_404
.label_409:
	mov	qword ptr [rsp + 0x40], rbx
	mov	rbx, qword ptr [rsp + 0x90]
	mov	rax, qword ptr [rsp + 0x10]
	mov	rcx, qword ptr [rsp + 0x28]
	lea	r15, [rax + rcx]
	cmp	r13d, -1
	mov	eax, r13d
	mov	ebp, dword ptr [rsp + 4]
	cmove	eax, ebp
	cmp	ebp, -1
	cmove	eax, r13d
	mov	dword ptr [rsp + 0x24], eax
	cmove	ebp, r13d
	movabs	rax, 0x8000000000000000
	xor	rax, rcx
	mov	qword ptr [rsp + 0x38], rax
	mov	dword ptr [rsp + 8], 0
	mov	dword ptr [rsp + 0xc], eax
	mov	dword ptr [rsp + 4], ebp
	nop	word ptr cs:[rax + rax]
.label_410:
	mov	rdi, rbx
	lea	rsi, [rsp + 0x18]
	call	freadptr
	mov	rdi, rbx
	mov	r13, rax
	test	r13, r13
	je	.label_411
	cmp	ebp, -1
	mov	esi, ebp
	mov	rbp, qword ptr [rsp + 0x18]
	mov	rbx, qword ptr [rsp + 0x40]
	je	.label_413
	mov	rdi, r13
	mov	edx, dword ptr [rsp + 0x24]
	mov	rcx, rbp
	call	memchr2
	test	rax, rax
	je	.label_413
	mov	ebp, 1
	sub	rbp, r13
	add	rbp, rax
	mov	qword ptr [rsp + 0x18], rbp
	mov	al, 1
	jmp	.label_418
	.section	.text
	.align	16
	#Procedure 0x404e05
	.globl sub_404e05
	.type sub_404e05, @function
sub_404e05:

	nop	word ptr cs:[rax + rax]
.label_411:
	mov	rax, qword ptr [rdi + 8]
	cmp	rax, qword ptr [rdi + 0x10]
	mov	rbx, qword ptr [rsp + 0x40]
	jae	.label_402
	lea	rcx, [rax + 1]
	mov	qword ptr [rdi + 8], rcx
	movzx	eax, byte ptr [rax]
.label_414:
	mov	dword ptr [rsp + 0xc], eax
	cmp	eax, dword ptr [rsp + 0x24]
	mov	al, 1
	mov	cl, 1
	je	.label_406
	mov	ecx, dword ptr [rsp + 8]
.label_406:
	cmp	dword ptr [rsp + 0xc], ebp
	je	.label_399
	mov	eax, ecx
.label_399:
	mov	qword ptr [rsp + 0x18], 1
	mov	ebp, 1
.label_418:
	mov	dword ptr [rsp + 8], eax
.label_413:
	cmp	r14, rbx
	jae	.label_415
	lea	rax, [rbp + 1]
	cmp	r12, rax
	jae	.label_415
	lea	rcx, [r14 + 0x40]
	lea	rdx, [r14 + r14]
	cmp	r14, 0x40
	cmovb	rdx, rcx
	mov	rdi, qword ptr [rsp + 0x10]
	sub	r15, rdi
	mov	rcx, rdx
	sub	rcx, r15
	cmp	rcx, rax
	lea	rax, [r15 + rbp + 1]
	cmovae	rax, rdx
	cmp	rax, rbx
	mov	rbp, rax
	cmova	rbp, rbx
	cmp	r14, rax
	cmovae	rbp, rbx
	cmp	rbp, qword ptr [rsp + 0x28]
	jns	.label_417
	mov	rax, qword ptr [rsp + 0x38]
	cmp	r14, rax
	mov	rbp, rax
	je	.label_405
.label_417:
	mov	rsi, rbp
	call	realloc
	test	rax, rax
	je	.label_404
	mov	r12, rbp
	sub	r12, r15
	add	r15, rax
	mov	qword ptr [rsp + 0x10], rax
	mov	r14, rbp
.label_415:
	cmp	r12, 2
	jb	.label_420
	lea	rbp, [r12 - 1]
	mov	rax, qword ptr [rsp + 0x18]
	cmp	rax, rbp
	cmovb	rbp, rax
	test	r13, r13
	je	.label_416
	mov	rdi, r15
	mov	rsi, r13
	mov	rdx, rbp
	call	memcpy
	jmp	.label_400
.label_416:
	mov	eax, dword ptr [rsp + 0xc]
	mov	byte ptr [r15], al
.label_400:
	add	r15, rbp
	sub	r12, rbp
.label_420:
	mov	ebp, dword ptr [rsp + 4]
	test	r13, r13
	mov	rbx, qword ptr [rsp + 0x90]
	je	.label_403
	mov	rsi, qword ptr [rsp + 0x18]
	mov	rdi, rbx
	call	freadseek
	test	eax, eax
	jne	.label_404
.label_403:
	mov	eax, dword ptr [rsp + 8]
	test	al, 1
	je	.label_410
	jmp	.label_412
.label_402:
	call	__uflow
	cmp	eax, -1
	jne	.label_414
	cmp	r15, qword ptr [rsp + 0x10]
	je	.label_404
.label_412:
	mov	byte ptr [r15], 0
	mov	rax, qword ptr [rsp + 0x28]
	add	rax, qword ptr [rsp + 0x10]
	sub	r15, rax
	mov	qword ptr [rsp + 0x30], r15
.label_404:
	mov	rax, qword ptr [rsp + 0x48]
	mov	rcx, qword ptr [rsp + 0x10]
	mov	qword ptr [rax], rcx
	mov	rax, qword ptr [rsp + 0x50]
	mov	qword ptr [rax], r14
	mov	rcx, qword ptr [rsp + 0x30]
	cmp	rcx, 1
	sbb	rax, rax
	or	rax, rcx
.label_419:
	add	rsp, 0x58
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_405:
	mov	r14, qword ptr [rsp + 0x38]
	jmp	.label_404
	.section	.text
	.align	16
	#Procedure 0x404fab
	.globl sub_404fab
	.type sub_404fab, @function
sub_404fab:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404fb0

	.globl freadahead
	.type freadahead, @function
freadahead:
	mov	rcx, qword ptr [rdi + 0x28]
	xor	eax, eax
	cmp	rcx, qword ptr [rdi + 0x20]
	ja	.label_421
	mov	rax, qword ptr [rdi + 0x10]
	sub	rax, qword ptr [rdi + 8]
	xor	ecx, ecx
	test	byte ptr [rdi + 1], 1
	je	.label_422
	mov	rcx, qword ptr [rdi + 0x58]
	sub	rcx, qword ptr [rdi + 0x48]
.label_422:
	add	rax, rcx
.label_421:
	ret	
	.section	.text
	.align	16
	#Procedure 0x404fd8
	.globl sub_404fd8
	.type sub_404fd8, @function
sub_404fd8:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404fe0

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
	#Procedure 0x404ff7
	.globl sub_404ff7
	.type sub_404ff7, @function
sub_404ff7:

	nop	word ptr [rax + rax]
.label_423:
	call	abort
	.section	.text
	.align	16
	#Procedure 0x405005
	.globl sub_405005
	.type sub_405005, @function
sub_405005:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x405009
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
	je	.label_423
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
	.align	16
	#Procedure 0x405070

	.globl cut_file
	.type cut_file, @function
cut_file:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x28
	mov	rbx, rdi
	cmp	byte ptr [rbx], 0x2d
	jne	.label_450
	cmp	byte ptr [rbx + 1], 0
	je	.label_457
.label_450:
	mov	esi, OFFSET FLAT:label_460
	mov	rdi, rbx
	call	fopen
	mov	r15, rax
	test	r15, r15
	jne	.label_463
	jmp	.label_465
.label_457:
	mov	byte ptr [rip + have_read_stdin],  1
	mov	r15, qword ptr [rip + stdin]
.label_463:
	mov	esi, 2
	mov	rdi, r15
	call	fadvise
	mov	eax, dword ptr [rip + operating_mode]
	mov	rcx, qword ptr [rip + frp]
	mov	qword ptr [rip + current_rp],  rcx
	cmp	eax, 1
	mov	qword ptr [rsp + 0x20], rbx
	jne	.label_470
	xor	r14d, r14d
	jmp	.label_478
	.section	.text
	.align	16
	#Procedure 0x4050e8
	.globl sub_4050e8
	.type sub_4050e8, @function
sub_4050e8:

	nop	dword ptr [rax + rax]
.label_425:
	mov	rax, qword ptr [rip + frp]
	mov	qword ptr [rip + current_rp],  rax
.label_478:
	xor	ebx, ebx
	xor	r12d, r12d
	jmp	.label_451
.label_468:
	lea	rcx, [rax + 1]
	mov	qword ptr [rdi + 0x28], rcx
	mov	byte ptr [rax], bpl
	mov	r12b, r13b
	nop	word ptr cs:[rax + rax]
.label_451:
	mov	rax, qword ptr [r15 + 8]
	cmp	rax, qword ptr [r15 + 0x10]
	jae	.label_433
	lea	rcx, [rax + 1]
	mov	qword ptr [r15 + 8], rcx
	movzx	ebp, byte ptr [rax]
.label_479:
	movzx	eax, byte ptr [rip + line_delim]
	test	al, al
	mov	esi, 0xa
	cmovne	esi, r14d
	cmp	ebp, esi
	je	.label_439
	cmp	ebp, -1
	je	.label_481
	inc	rbx
	mov	rax, qword ptr [rip + current_rp]
	cmp	rbx, qword ptr [rax + 8]
	jbe	.label_446
	add	rax, 0x10
	mov	qword ptr [rip + current_rp],  rax
.label_446:
	mov	rax, qword ptr [rax]
	cmp	rax, rbx
	ja	.label_451
	cmp	byte ptr [rip + output_delimiter_specified],  1
	jne	.label_454
	mov	r13b, 1
	test	r12b, 1
	je	.label_459
	cmp	rbx, rax
	jne	.label_459
	mov	rdi, qword ptr [rip + output_delimiter_string]
	mov	rdx, qword ptr [rip + output_delimiter_length]
	mov	rcx, qword ptr [rip + stdout]
	mov	esi, 1
	call	fwrite_unlocked
	jmp	.label_459
.label_454:
	mov	r13d, r12d
.label_459:
	mov	rdi, qword ptr [rip + stdout]
	mov	rax, qword ptr [rdi + 0x28]
	cmp	rax, qword ptr [rdi + 0x30]
	jb	.label_468
	movzx	esi, bpl
	call	__overflow
	mov	r12b, r13b
	jmp	.label_451
.label_433:
	mov	rdi, r15
	call	__uflow
	mov	ebp, eax
	jmp	.label_479
	.section	.text
	.align	16
	#Procedure 0x4051ef
	.globl sub_4051ef
	.type sub_4051ef, @function
sub_4051ef:

	nop	
.label_439:
	mov	rdi, qword ptr [rip + stdout]
	mov	rax, qword ptr [rdi + 0x28]
	cmp	rax, qword ptr [rdi + 0x30]
	jae	.label_480
	lea	rcx, [rax + 1]
	mov	qword ptr [rdi + 0x28], rcx
	mov	byte ptr [rax], bpl
	jmp	.label_425
.label_480:
	movzx	esi, bpl
	call	__overflow
	jmp	.label_425
.label_470:
	mov	rax, qword ptr [r15 + 8]
	cmp	rax, qword ptr [r15 + 0x10]
	jae	.label_432
	lea	rcx, [rax + 1]
	mov	qword ptr [r15 + 8], rcx
	movzx	edi, byte ptr [rax]
.label_438:
	mov	rsi, r15
	call	ungetc
	mov	rax, qword ptr [rip + current_rp]
	cmp	qword ptr [rax], 1
	seta	al
	xor	al, byte ptr [rip + suppress_non_delimited]
	xor	al, 1
	mov	byte ptr [rsp + 0x17], al
	xor	r13d, r13d
	mov	ebx, 1
	xor	r14d, r14d
	xor	ebp, ebp
	jmp	.label_442
.label_481:
	test	rbx, rbx
	mov	rbx, qword ptr [rsp + 0x20]
	je	.label_441
	mov	rdi, qword ptr [rip + stdout]
	mov	rax, qword ptr [rdi + 0x28]
	cmp	rax, qword ptr [rdi + 0x30]
	jae	.label_474
	lea	rcx, [rax + 1]
	mov	qword ptr [rdi + 0x28], rcx
	mov	byte ptr [rax], sil
	jmp	.label_441
.label_464:
	add	rax, 0x10
	mov	qword ptr [rip + current_rp],  rax
	nop	word ptr [rax + rax]
.label_442:
	cmp	rbx, 1
	setne	al
	or	al, byte ptr [rsp + 0x17]
	test	al, 1
	je	.label_440
	mov	rax, qword ptr [rip + current_rp]
	jmp	.label_469
	.section	.text
	.align	16
	#Procedure 0x4052cb
	.globl sub_4052cb
	.type sub_4052cb, @function
sub_4052cb:

	nop	dword ptr [rax + rax]
.label_453:
	lea	rcx, [rax + 1]
	mov	qword ptr [rdi + 0x28], rcx
	mov	byte ptr [rax], sil
.label_440:
	movzx	r8d, byte ptr [rip + delim]
	movzx	eax, byte ptr [rip + line_delim]
	test	al, al
	mov	r9d, 0xa
	cmovne	r9d, r13d
	mov	qword ptr [rsp], r15
	mov	edi, OFFSET FLAT:field_1_buffer
	mov	esi, OFFSET FLAT:field_1_bufsize
	xor	edx, edx
	mov	rcx, -1
	call	getndelim2
	mov	rbx, rax
	test	rbx, rbx
	js	.label_428
	test	rbx, rbx
	je	.label_431
	mov	rdi, qword ptr [rip + field_1_buffer]
	movzx	eax, byte ptr [rdi + rbx - 1]
	cmp	al, byte ptr [rip + delim]
	je	.label_436
	cmp	byte ptr [rip + suppress_non_delimited],  1
	je	.label_440
	mov	rcx, qword ptr [rip + stdout]
	mov	esi, 1
	mov	rdx, rbx
	call	fwrite_unlocked
	mov	rax, qword ptr [rip + field_1_buffer]
	movsx	eax, byte ptr [rax + rbx - 1]
	movzx	ecx, byte ptr [rip + line_delim]
	test	cl, cl
	mov	esi, 0xa
	cmovne	esi, r13d
	cmp	eax, esi
	je	.label_440
	mov	rdi, qword ptr [rip + stdout]
	mov	rax, qword ptr [rdi + 0x28]
	cmp	rax, qword ptr [rdi + 0x30]
	jb	.label_453
	call	__overflow
	jmp	.label_440
	.section	.text
	.align	16
	#Procedure 0x40539d
	.globl sub_40539d
	.type sub_40539d, @function
sub_40539d:

	nop	dword ptr [rax]
.label_436:
	mov	rax, qword ptr [rip + current_rp]
	cmp	qword ptr [rax], 1
	ja	.label_449
	dec	rbx
	mov	rcx, qword ptr [rip + stdout]
	mov	esi, 1
	mov	rdx, rbx
	call	fwrite_unlocked
	movzx	eax, byte ptr [rip + delim]
	mov	cl, byte ptr [rip + line_delim]
	test	cl, cl
	mov	ecx, 0xa
	cmovne	ecx, r13d
	cmp	eax, ecx
	jne	.label_472
	mov	rax, qword ptr [r15 + 8]
	cmp	rax, qword ptr [r15 + 0x10]
	jae	.label_461
	lea	rcx, [rax + 1]
	mov	qword ptr [r15 + 8], rcx
	movzx	edi, byte ptr [rax]
.label_458:
	mov	rsi, r15
	call	ungetc
.label_472:
	mov	r14b, 1
.label_449:
	mov	rax, qword ptr [rip + current_rp]
	xor	ebp, ebp
	cmp	qword ptr [rax + 8], 1
	ja	.label_426
	add	rax, 0x10
	mov	qword ptr [rip + current_rp],  rax
.label_426:
	mov	ebx, 2
.label_469:
	cmp	qword ptr [rax], rbx
	ja	.label_435
	mov	qword ptr [rsp + 0x18], rbx
	test	r14b, 1
	je	.label_427
	mov	rdi, qword ptr [rip + output_delimiter_string]
	mov	rdx, qword ptr [rip + output_delimiter_length]
	mov	rcx, qword ptr [rip + stdout]
	mov	esi, 1
	call	fwrite_unlocked
	jmp	.label_427
	.section	.text
	.align	16
	#Procedure 0x405459
	.globl sub_405459
	.type sub_405459, @function
sub_405459:

	nop	dword ptr [rax]
.label_467:
	lea	rcx, [rax + 1]
	mov	qword ptr [rdi + 0x28], rcx
	mov	byte ptr [rax], bl
	mov	ebp, ebx
.label_427:
	mov	rax, qword ptr [r15 + 8]
	cmp	rax, qword ptr [r15 + 0x10]
	jae	.label_448
	lea	rcx, [rax + 1]
	mov	qword ptr [r15 + 8], rcx
	movzx	ebx, byte ptr [rax]
.label_475:
	movzx	eax, byte ptr [rip + delim]
	mov	r14b, 1
	cmp	ebx, eax
	je	.label_455
	movzx	ecx, byte ptr [rip + line_delim]
	test	cl, cl
	mov	ecx, 0xa
	cmovne	ecx, r13d
	cmp	ebx, -1
	je	.label_455
	cmp	ebx, ecx
	je	.label_455
	mov	rdi, qword ptr [rip + stdout]
	mov	rax, qword ptr [rdi + 0x28]
	cmp	rax, qword ptr [rdi + 0x30]
	jb	.label_467
	movzx	esi, bl
	call	__overflow
	mov	ebp, ebx
	jmp	.label_427
.label_448:
	mov	rdi, r15
	call	__uflow
	mov	ebx, eax
	jmp	.label_475
	.section	.text
	.align	16
	#Procedure 0x4054d3
	.globl sub_4054d3
	.type sub_4054d3, @function
sub_4054d3:

	nop	word ptr cs:[rax + rax]
.label_455:
	mov	r12d, ebp
	mov	ebp, ebx
	mov	rbx, qword ptr [rsp + 0x18]
	jmp	.label_430
.label_424:
	mov	rdi, r15
	call	__uflow
	mov	ebp, eax
	jmp	.label_482
	.section	.text
	.align	16
	#Procedure 0x4054f8
	.globl sub_4054f8
	.type sub_4054f8, @function
sub_4054f8:

	nop	dword ptr [rax + rax]
.label_435:
	mov	r12d, ebp
	mov	rax, qword ptr [r15 + 8]
	cmp	rax, qword ptr [r15 + 0x10]
	jae	.label_424
	lea	rcx, [rax + 1]
	mov	qword ptr [r15 + 8], rcx
	movzx	ebp, byte ptr [rax]
.label_482:
	movzx	eax, byte ptr [rip + delim]
	cmp	ebp, eax
	je	.label_430
	movzx	ecx, byte ptr [rip + line_delim]
	test	cl, cl
	mov	ecx, 0xa
	cmovne	ecx, r13d
	cmp	ebp, -1
	je	.label_430
	cmp	ebp, ecx
	jne	.label_435
	nop	
.label_430:
	movzx	ecx, al
	mov	dl, byte ptr [rip + line_delim]
	test	dl, dl
	mov	edx, 0xa
	cmovne	edx, r13d
	cmp	ebp, ecx
	jne	.label_437
	cmp	ecx, edx
	jne	.label_437
	mov	rax, qword ptr [r15 + 8]
	cmp	rax, qword ptr [r15 + 0x10]
	jae	.label_452
	lea	rcx, [rax + 1]
	mov	qword ptr [r15 + 8], rcx
	movzx	edi, byte ptr [rax]
.label_462:
	mov	rsi, r15
	call	ungetc
	mov	al, byte ptr [rip + delim]
.label_437:
	movzx	eax, al
	cmp	ebp, eax
	jne	.label_456
	inc	rbx
	mov	rax, qword ptr [rip + current_rp]
	cmp	rbx, qword ptr [rax + 8]
	jbe	.label_442
	jmp	.label_464
	.section	.text
	.align	16
	#Procedure 0x4055a3
	.globl sub_4055a3
	.type sub_4055a3, @function
sub_4055a3:

	nop	word ptr cs:[rax + rax]
.label_456:
	mov	cl, byte ptr [rip + line_delim]
	test	cl, cl
	mov	esi, 0xa
	cmovne	esi, r13d
	cmp	ebp, -1
	sete	dl
	je	.label_434
	cmp	ebp, esi
	jne	.label_442
.label_434:
	mov	rcx, rbx
	test	r14b, 1
	mov	rbx, qword ptr [rsp + 0x20]
	jne	.label_476
	cmp	rcx, 1
	jne	.label_476
	test	byte ptr [rip + suppress_non_delimited],  1
	jne	.label_447
.label_476:
	cmp	r12d, esi
	jne	.label_429
	cmp	ebp, esi
	je	.label_429
	cmp	eax, r12d
	jne	.label_447
.label_429:
	mov	rdi, qword ptr [rip + stdout]
	mov	rax, qword ptr [rdi + 0x28]
	cmp	rax, qword ptr [rdi + 0x30]
	jae	.label_483
	lea	rcx, [rax + 1]
	mov	qword ptr [rdi + 0x28], rcx
	mov	byte ptr [rax], sil
.label_447:
	test	dl, dl
	jne	.label_441
	mov	rax, qword ptr [rip + frp]
	mov	qword ptr [rip + current_rp],  rax
	xor	r14d, r14d
	mov	ebx, 1
	jmp	.label_442
.label_452:
	mov	rdi, r15
	call	__uflow
	mov	edi, eax
	cmp	edi, -1
	jne	.label_462
	movzx	eax, byte ptr [rip + delim]
	mov	cl, byte ptr [rip + line_delim]
	test	cl, cl
	mov	esi, 0xa
	cmovne	esi, r13d
	mov	ebp, 0xffffffff
	mov	dl, 1
	jmp	.label_434
.label_483:
	mov	r14d, edx
	call	__overflow
	mov	edx, r14d
	jmp	.label_447
.label_461:
	mov	rdi, r15
	call	__uflow
	mov	edi, eax
	cmp	edi, -1
	jne	.label_458
	jmp	.label_449
.label_428:
	mov	rdi, qword ptr [rip + field_1_buffer]
	call	free
	mov	qword ptr [rip + field_1_buffer],  0
	test	byte ptr [r15], 0x30
	mov	rbx, qword ptr [rsp + 0x20]
	je	.label_466
.label_441:
	test	byte ptr [r15], 0x20
	jne	.label_465
	cmp	byte ptr [rbx], 0x2d
	jne	.label_471
	cmp	byte ptr [rbx + 1], 0
	je	.label_473
.label_471:
	mov	rdi, r15
	call	rpl_fclose
	mov	bpl, 1
	cmp	eax, -1
	jne	.label_477
.label_465:
	call	__errno_location
	mov	r14d, dword ptr [rax]
	xor	ebp, ebp
	xor	edi, edi
	mov	esi, 3
	mov	rdx, rbx
	call	quotearg_n_style_colon
	mov	rcx, rax
	xor	edi, edi
	mov	edx, OFFSET FLAT:label_165
	xor	eax, eax
	mov	esi, r14d
	call	error
.label_477:
	mov	eax, ebp
	add	rsp, 0x28
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_473:
	mov	rdi, r15
	call	clearerr_unlocked
	mov	bpl, 1
	jmp	.label_477
.label_432:
	mov	rdi, r15
	call	__uflow
	mov	edi, eax
	cmp	edi, -1
	jne	.label_438
	jmp	.label_441
.label_474:
	call	__overflow
	jmp	.label_441
.label_431:
	mov	edi, OFFSET FLAT:label_443
	mov	esi, OFFSET FLAT:label_444
	mov	edx, 0x149
	mov	ecx, OFFSET FLAT:label_445
	call	__assert_fail
.label_466:
	call	xalloc_die
	.section	.text
	.align	16
	#Procedure 0x405769
	.globl sub_405769
	.type sub_405769, @function
sub_405769:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x405770
	.globl quotearg_n_mem
	.type quotearg_n_mem, @function
quotearg_n_mem:

	mov	ecx, OFFSET FLAT:default_quoting_options
	jmp	quotearg_n_options
	.section	.text
	.align	16
	#Procedure 0x40577a
	.globl sub_40577a
	.type sub_40577a, @function
sub_40577a:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x405780

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
	je	.label_484
	mov	edx, OFFSET FLAT:label_494
	xor	eax, eax
	mov	rdi, r14
	mov	r8, rbx
	call	__fprintf_chk
	jmp	.label_500
.label_484:
	mov	edx, OFFSET FLAT:label_501
	xor	eax, eax
	mov	rdi, r14
	mov	rcx, rbx
	mov	r8, r9
	call	__fprintf_chk
.label_500:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_488
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
	mov	esi, OFFSET FLAT:label_502
	mov	edx, 5
	call	dcgettext
	mov	rdi, rax
	mov	rsi, r14
	call	fputs_unlocked
	cmp	r12, 9
	ja	.label_489
	jmp	qword ptr [(r12 * 8) + label_490]
.label_566:
	add	rsp, 8
	jmp	.label_487
.label_489:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_497
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
	jmp	.label_487
.label_567:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_485
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
.label_568:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_498
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
.label_569:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_495
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
.label_570:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_492
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
	jmp	.label_487
.label_571:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_491
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
	jmp	.label_487
.label_572:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_493
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
	jmp	.label_487
.label_573:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_496
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
	jmp	.label_487
.label_575:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_499
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
	jmp	.label_487
.label_574:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_486
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
.label_487:
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	ret	
	.section	.text
	.align	16
	#Procedure 0x405ad8
	.globl sub_405ad8
	.type sub_405ad8, @function
sub_405ad8:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x405ae0
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
	#Procedure 0x405af3
	.globl sub_405af3
	.type sub_405af3, @function
sub_405af3:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x405b00

	.globl fadvise
	.type fadvise, @function
fadvise:
	push	rbx
	mov	ebx, esi
	test	rdi, rdi
	je	.label_503
	call	fileno
	xor	esi, esi
	xor	edx, edx
	mov	edi, eax
	mov	ecx, ebx
	pop	rbx
	jmp	posix_fadvise
.label_503:
	pop	rbx
	ret	
	.section	.text
	.align	16
	#Procedure 0x405b1d
	.globl sub_405b1d
	.type sub_405b1d, @function
sub_405b1d:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x405b20

	.globl xalloc_die
	.type xalloc_die, @function
xalloc_die:
	push	rbx
	mov	ebx, dword ptr [rip + exit_failure]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_504
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	xor	esi, esi
	mov	edx, OFFSET FLAT:label_165
	xor	eax, eax
	mov	edi, ebx
	call	error
	call	abort
	.section	.text
	.align	16
	#Procedure 0x405b50
	.globl quotearg_n
	.type quotearg_n, @function
quotearg_n:

	mov	rdx, -1
	mov	ecx, OFFSET FLAT:default_quoting_options
	jmp	quotearg_n_options
	.section	.text
	.align	16
	#Procedure 0x405b5e
	.globl sub_405b5e
	.type sub_405b5e, @function
sub_405b5e:

	nop	
	.section	.text
	.align	16
	#Procedure 0x405b60

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
	js	.label_505
	mov	eax, dword ptr [r13]
	mov	rbp, qword ptr [rip + slotvec]
	cmp	dword ptr [rip + nslots],  r12d
	mov	qword ptr [rsp + 0x18], r13
	mov	dword ptr [rsp], eax
	mov	qword ptr [rsp + 0x10], rbx
	mov	qword ptr [rsp + 8], r15
	jg	.label_508
	cmp	r12d, 0x7fffffff
	je	.label_510
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
	jne	.label_506
	movups	xmm0, xmmword ptr [rip + slotvec0]
	movups	xmmword ptr [r14], xmm0
.label_506:
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
.label_508:
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
	jbe	.label_511
	mov	rax, qword ptr [rsp + 0x18]
	mov	ebp, dword ptr [rsp]
	jmp	.label_507
.label_511:
	lea	rax, [rbp + r13]
	lea	r12, [rbp + r13 + 8]
	inc	r15
	mov	qword ptr [rax], r15
	mov	eax, OFFSET FLAT:slot0
	cmp	r14, rax
	mov	ebp, dword ptr [rsp]
	je	.label_509
	mov	rdi, r14
	call	free
.label_509:
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
.label_507:
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
.label_505:
	call	abort
.label_510:
	call	xalloc_die
	.section	.text
	.align	16
	#Procedure 0x405d1d
	.globl sub_405d1d
	.type sub_405d1d, @function
sub_405d1d:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x405d20

	.globl xmalloc
	.type xmalloc, @function
xmalloc:
	push	rbx
	mov	rbx, rdi
	call	malloc
	test	rbx, rbx
	je	.label_512
	test	rax, rax
	je	.label_513
.label_512:
	pop	rbx
	ret	
.label_513:
	call	xalloc_die
	.section	.text
	.align	16
	#Procedure 0x405d3a
	.globl sub_405d3a
	.type sub_405d3a, @function
sub_405d3a:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x405d40
	.globl version_etc_ar
	.type version_etc_ar, @function
version_etc_ar:

	mov	r9, -1
	nop	word ptr [rax + rax]
.label_514:
	cmp	qword ptr [r8 + r9*8 + 8], 0
	lea	r9, [r9 + 1]
	jne	.label_514
	jmp	version_etc_arn
	.section	.text
	.align	16
	#Procedure 0x405d61
	.globl sub_405d61
	.type sub_405d61, @function
sub_405d61:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x405d70

	.globl freadptr
	.type freadptr, @function
freadptr:
	mov	rcx, qword ptr [rdi + 0x28]
	xor	eax, eax
	cmp	rcx, qword ptr [rdi + 0x20]
	ja	.label_515
	mov	rcx, qword ptr [rdi + 8]
	mov	rdx, qword ptr [rdi + 0x10]
	xor	eax, eax
	sub	rdx, rcx
	je	.label_515
	mov	qword ptr [rsi], rdx
	mov	rax, rcx
.label_515:
	ret	
	.section	.text
	.align	16
	#Procedure 0x405d92
	.globl sub_405d92
	.type sub_405d92, @function
sub_405d92:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x405e05
	.globl sub_405e05
	.type sub_405e05, @function
sub_405e05:

	nop	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x405e12
	.globl sub_405e12
	.type sub_405e12, @function
sub_405e12:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x405e36
	.globl sub_405e36
	.type sub_405e36, @function
sub_405e36:

	nop	word ptr cs:[rax + rax]
