	.section	.text
	.align	16
	#Procedure 0x401279
	.globl sub_401279
	.type sub_401279, @function
sub_401279:

	hlt	
	.section	.text
	.align	16
	#Procedure 0x40127a
	.globl sub_40127a
	.type sub_40127a, @function
sub_40127a:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4012b2
	.globl sub_4012b2
	.type sub_4012b2, @function
sub_4012b2:

	nop	dword ptr [rax]
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4012fa
	.globl sub_4012fa
	.type sub_4012fa, @function
sub_4012fa:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40131c
	.globl sub_40131c
	.type sub_40131c, @function
sub_40131c:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x40132d
	.globl sub_40132d
	.type sub_40132d, @function
sub_40132d:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x401346
	.globl sub_401346
	.type sub_401346, @function
sub_401346:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x401350
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
	#Procedure 0x401368
	.globl sub_401368
	.type sub_401368, @function
sub_401368:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x401370

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
	#Procedure 0x401387
	.globl sub_401387
	.type sub_401387, @function
sub_401387:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x401390
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
	je	.label_9
	mov	qword ptr [rax], rbx
.label_9:
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
	#Procedure 0x40147c
	.globl sub_40147c
	.type sub_40147c, @function
sub_40147c:

	nop	dword ptr [rax]
.label_12:
	mov	rsi, rbx
	call	realloc
	test	rbx, rbx
	je	.label_10
	test	rax, rax
	je	.label_11
.label_10:
	pop	rbx
	ret	
	.section	.text
	.align	16
	#Procedure 0x401494
	.globl xnrealloc
	.type xnrealloc, @function
xnrealloc:

	push	rbx
	mov	rbx, rdx
	movabs	rax, 0x7fffffffffffffff
	xor	edx, edx
	div	rbx
	cmp	rax, rsi
	jb	.label_11
	imul	rbx, rsi
	test	rdi, rdi
	je	.label_12
	test	rbx, rbx
	jne	.label_12
	call	free
	xor	eax, eax
	pop	rbx
	ret	
.label_11:
	call	xalloc_die
	.section	.text
	.align	16
	#Procedure 0x4014c8
	.globl sub_4014c8
	.type sub_4014c8, @function
sub_4014c8:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4014d0
	.globl quote_n_mem
	.type quote_n_mem, @function
quote_n_mem:

	mov	ecx, OFFSET FLAT:quote_quoting_options
	jmp	quotearg_n_options
	.section	.text
	.align	16
	#Procedure 0x4014da
	.globl sub_4014da
	.type sub_4014da, @function
sub_4014da:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4014e0
	.globl close_stdout_set_file_name
	.type close_stdout_set_file_name, @function
close_stdout_set_file_name:

	mov	qword ptr [rip + file_name],  rdi
	ret	
	.section	.text
	.align	16
	#Procedure 0x4014e8
	.globl sub_4014e8
	.type sub_4014e8, @function
sub_4014e8:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4014f0

	.globl xalloc_die
	.type xalloc_die, @function
xalloc_die:
	push	rbx
	mov	ebx, dword ptr [rip + exit_failure]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_13
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	xor	esi, esi
	mov	edx, OFFSET FLAT:label_14
	xor	eax, eax
	mov	edi, ebx
	call	error
	call	abort
	.section	.text
	.align	16
	#Procedure 0x401520
	.globl quotearg_free
	.type quotearg_free, @function
quotearg_free:

	push	r15
	push	r14
	push	rbx
	mov	r14, qword ptr [rip + slotvec]
	cmp	dword ptr [rip + nslots],  2
	jl	.label_15
	lea	r15, [r14 + 0x18]
	mov	ebx, 1
	nop	
.label_17:
	mov	rdi, qword ptr [r15]
	call	free
	inc	rbx
	movsxd	rax, dword ptr [rip + nslots]
	add	r15, 0x10
	cmp	rbx, rax
	jl	.label_17
.label_15:
	mov	rdi, qword ptr [r14 + 8]
	mov	eax, OFFSET FLAT:slot0
	cmp	rdi, rax
	je	.label_18
	call	free
	mov	qword ptr [rip + slotvec0],  0x100
	mov	qword ptr [rip + label_19], OFFSET FLAT:slot0
.label_18:
	mov	eax, OFFSET FLAT:slotvec0
	cmp	r14, rax
	je	.label_16
	mov	rdi, r14
	call	free
	mov	qword ptr [rip + slotvec], OFFSET FLAT:slotvec0
.label_16:
	mov	dword ptr [rip + nslots],  1
	pop	rbx
	pop	r14
	pop	r15
	ret	
	.section	.text
	.align	16
	#Procedure 0x4015b1
	.globl sub_4015b1
	.type sub_4015b1, @function
sub_4015b1:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4015c0
	.globl version_etc_ar
	.type version_etc_ar, @function
version_etc_ar:

	mov	r9, -1
	nop	word ptr [rax + rax]
.label_20:
	cmp	qword ptr [r8 + r9*8 + 8], 0
	lea	r9, [r9 + 1]
	jne	.label_20
	jmp	version_etc_arn
	.section	.text
	.align	16
	#Procedure 0x4015e1
	.globl sub_4015e1
	.type sub_4015e1, @function
sub_4015e1:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4015f0
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
	je	.label_21
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
.label_21:
	call	abort
	.section	.text
	.align	16
	#Procedure 0x401658
	.globl sub_401658
	.type sub_401658, @function
sub_401658:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x401660

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
	jne	.label_22
	mov	rax, qword ptr [rbx + 0x28]
	cmp	rax, qword ptr [rbx + 0x20]
	jne	.label_22
	cmp	qword ptr [rbx + 0x48], 0
	je	.label_23
.label_22:
	mov	rdi, rbx
	mov	rsi, rbp
	mov	edx, r14d
	pop	rbx
	pop	r14
	pop	rbp
	jmp	fseeko
.label_23:
	mov	rdi, rbx
	call	fileno
	mov	edi, eax
	mov	rsi, rbp
	mov	edx, r14d
	call	lseek
	mov	rcx, rax
	mov	eax, 0xffffffff
	cmp	rcx, -1
	je	.label_24
	and	byte ptr [rbx], 0xef
	mov	qword ptr [rbx + 0x90], rcx
	xor	eax, eax
.label_24:
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x4016ce
	.globl sub_4016ce
	.type sub_4016ce, @function
sub_4016ce:

	nop	
	.section	.text
	.align	16
	#Procedure 0x4016d0

	.globl quotearg_colon
	.type quotearg_colon, @function
quotearg_colon:
	sub	rsp, 0x38
	mov	rax, rdi
	mov	rcx, qword ptr [rip + label_25]
	mov	qword ptr [rsp + 0x30], rcx
	movups	xmm0, xmmword ptr [rip + label_26]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0, xmmword ptr [rip + label_27]
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
	#Procedure 0x401725
	.globl sub_401725
	.type sub_401725, @function
sub_401725:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x401730
	.globl quotearg_n_custom
	.type quotearg_n_custom, @function
quotearg_n_custom:

	sub	rsp, 0x38
	mov	rax, qword ptr [rip + label_25]
	mov	qword ptr [rsp + 0x30], rax
	movups	xmm0, xmmword ptr [rip + label_26]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0, xmmword ptr [rip + label_27]
	movaps	xmmword ptr [rsp + 0x10], xmm0
	movups	xmm0, xmmword ptr [rip + default_quoting_options]
	movaps	xmmword ptr [rsp], xmm0
	mov	dword ptr [rsp], 0xa
	test	rsi, rsi
	je	.label_28
	test	rdx, rdx
	je	.label_28
	mov	qword ptr [rsp + 0x28], rsi
	mov	qword ptr [rsp + 0x30], rdx
	lea	rax, [rsp]
	mov	rdx, -1
	mov	rsi, rcx
	mov	rcx, rax
	call	quotearg_n_options
	add	rsp, 0x38
	ret	
.label_28:
	call	abort
	.section	.text
	.align	16
	#Procedure 0x40179e
	.globl sub_40179e
	.type sub_40179e, @function
sub_40179e:

	nop	
	.section	.text
	.align	16
	#Procedure 0x4017a0
	.globl set_custom_quoting
	.type set_custom_quoting, @function
set_custom_quoting:

	test	rdi, rdi
	mov	eax, OFFSET FLAT:default_quoting_options
	cmovne	rax, rdi
	mov	dword ptr [rax], 0xa
	test	rsi, rsi
	je	.label_29
	test	rdx, rdx
	je	.label_29
	mov	qword ptr [rax + 0x28], rsi
	mov	qword ptr [rax + 0x30], rdx
	ret	
.label_29:
	push	rax
	call	abort
	.section	.text
	.align	16
	#Procedure 0x4017cb
	.globl sub_4017cb
	.type sub_4017cb, @function
sub_4017cb:

	nop	dword ptr [rax + rax]
.label_31:
	mov	ecx, 1
.label_30:
	mov	rdi, rcx
	mov	rsi, rax
	jmp	calloc
	.section	.text
	.align	16
	#Procedure 0x4017e0
	.globl sub_4017e0
	.type sub_4017e0, @function
sub_4017e0:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4017e5

	.globl rpl_calloc
	.type rpl_calloc, @function
rpl_calloc:
	test	rdi, rdi
	mov	eax, 1
	je	.label_31
	test	rsi, rsi
	mov	ecx, 1
	je	.label_30
	mov	rax, rsi
	imul	rax, rdi
	xor	edx, edx
	div	rsi
	cmp	rax, rdi
	mov	rax, rsi
	mov	rcx, rdi
	je	.label_30
	push	rax
	call	__errno_location
	mov	dword ptr [rax], 0xc
	xor	eax, eax
	pop	rcx
	ret	
	.section	.text
	.align	16
	#Procedure 0x401820
	.globl xnmalloc
	.type xnmalloc, @function
xnmalloc:

	push	rbx
	mov	rbx, rsi
	movabs	rax, 0x7fffffffffffffff
	xor	edx, edx
	div	rbx
	cmp	rax, rdi
	jb	.label_32
	imul	rbx, rdi
	mov	rdi, rbx
	call	malloc
	test	rbx, rbx
	je	.label_33
	test	rax, rax
	je	.label_32
.label_33:
	pop	rbx
	ret	
.label_32:
	call	xalloc_die
	.section	.text
	.align	16
	#Procedure 0x401855
	.globl sub_401855
	.type sub_401855, @function
sub_401855:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x401860
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
	je	.label_34
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
.label_34:
	call	abort
	.section	.text
	.align	16
	#Procedure 0x4018c1
	.globl sub_4018c1
	.type sub_4018c1, @function
sub_4018c1:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4018d0

	.globl xmalloc
	.type xmalloc, @function
xmalloc:
	push	rbx
	mov	rbx, rdi
	call	malloc
	test	rbx, rbx
	je	.label_35
	test	rax, rax
	je	.label_36
.label_35:
	pop	rbx
	ret	
.label_36:
	call	xalloc_die
	.section	.text
	.align	16
	#Procedure 0x4018ea
	.globl sub_4018ea
	.type sub_4018ea, @function
sub_4018ea:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4018f0
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
	#Procedure 0x401923
	.globl sub_401923
	.type sub_401923, @function
sub_401923:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x401930
	.globl quotearg_n
	.type quotearg_n, @function
quotearg_n:

	mov	rdx, -1
	mov	ecx, OFFSET FLAT:default_quoting_options
	jmp	quotearg_n_options
	.section	.text
	.align	16
	#Procedure 0x40193e
	.globl sub_40193e
	.type sub_40193e, @function
sub_40193e:

	nop	
	.section	.text
	.align	16
	#Procedure 0x401940

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
	js	.label_37
	mov	eax, dword ptr [r13]
	mov	rbp, qword ptr [rip + slotvec]
	cmp	dword ptr [rip + nslots],  r12d
	mov	qword ptr [rsp + 0x18], r13
	mov	dword ptr [rsp], eax
	mov	qword ptr [rsp + 0x10], rbx
	mov	qword ptr [rsp + 8], r15
	jg	.label_40
	cmp	r12d, 0x7fffffff
	je	.label_42
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
	jne	.label_38
	movups	xmm0, xmmword ptr [rip + slotvec0]
	movups	xmmword ptr [r14], xmm0
.label_38:
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
.label_40:
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
	jbe	.label_43
	mov	rax, qword ptr [rsp + 0x18]
	mov	ebp, dword ptr [rsp]
	jmp	.label_39
.label_43:
	lea	rax, [rbp + r13]
	lea	r12, [rbp + r13 + 8]
	inc	r15
	mov	qword ptr [rax], r15
	mov	eax, OFFSET FLAT:slot0
	cmp	r14, rax
	mov	ebp, dword ptr [rsp]
	je	.label_41
	mov	rdi, r14
	call	free
.label_41:
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
.label_39:
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
.label_37:
	call	abort
.label_42:
	call	xalloc_die
	.section	.text
	.align	16
	#Procedure 0x401afd
	.globl sub_401afd
	.type sub_401afd, @function
sub_401afd:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x401b00

	.globl version_etc
	.type version_etc, @function
version_etc:
	sub	rsp, 0xd8
	test	al, al
	je	.label_44
	movaps	xmmword ptr [rsp + 0x50], xmm0
	movaps	xmmword ptr [rsp + 0x60], xmm1
	movaps	xmmword ptr [rsp + 0x70], xmm2
	movaps	xmmword ptr [rsp + 0x80], xmm3
	movaps	xmmword ptr [rsp + 0x90], xmm4
	movaps	xmmword ptr [rsp + 0xa0], xmm5
	movaps	xmmword ptr [rsp + 0xb0], xmm6
	movaps	xmmword ptr [rsp + 0xc0], xmm7
.label_44:
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
	#Procedure 0x401b83
	.globl sub_401b83
	.type sub_401b83, @function
sub_401b83:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x401b90
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
	#Procedure 0x401ba9
	.globl sub_401ba9
	.type sub_401ba9, @function
sub_401ba9:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x401bb0

	.globl rpl_fflush
	.type rpl_fflush, @function
rpl_fflush:
	push	rbx
	mov	rbx, rdi
	test	rbx, rbx
	je	.label_45
	mov	rdi, rbx
	call	__freading
	test	eax, eax
	je	.label_45
	test	byte ptr [rbx + 1], 1
	je	.label_45
	xor	esi, esi
	mov	edx, 1
	mov	rdi, rbx
	call	rpl_fseeko
.label_45:
	mov	rdi, rbx
	pop	rbx
	jmp	fflush
	.section	.text
	.align	16
	#Procedure 0x401be3
	.globl sub_401be3
	.type sub_401be3, @function
sub_401be3:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x401bf0

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
	mov	eax, OFFSET FLAT:label_47
	cmovne	rax, rcx
	pop	rcx
	ret	
	.section	.text
	.align	16
	#Procedure 0x401c15
	.globl sub_401c15
	.type sub_401c15, @function
sub_401c15:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x401c20
	.globl quotearg_colon_mem
	.type quotearg_colon_mem, @function
quotearg_colon_mem:

	sub	rsp, 0x38
	mov	rax, rsi
	mov	rdx, rdi
	mov	rcx, qword ptr [rip + label_25]
	mov	qword ptr [rsp + 0x30], rcx
	movups	xmm0, xmmword ptr [rip + label_26]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0, xmmword ptr [rip + label_27]
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
	#Procedure 0x401c74
	.globl sub_401c74
	.type sub_401c74, @function
sub_401c74:

	nop	word ptr cs:[rax + rax]
.label_52:
	call	xalloc_die
	.section	.text
	.align	16
	#Procedure 0x401c85
	.globl x2realloc
	.type x2realloc, @function
x2realloc:

	push	rbx
	mov	rax, qword ptr [rsi]
	test	rdi, rdi
	je	.label_48
	movabs	rcx, 0x5555555555555554
	cmp	rax, rcx
	jae	.label_51
	mov	rbx, rax
	shr	rbx, 1
	add	rbx, rax
	inc	rbx
	mov	qword ptr [rsi], rbx
	jne	.label_50
	call	free
	xor	eax, eax
	jmp	.label_49
.label_48:
	test	rax, rax
	mov	ebx, 0x80
	cmovne	rbx, rax
	test	rbx, rbx
	js	.label_52
	mov	qword ptr [rsi], rbx
.label_50:
	mov	rsi, rbx
	call	realloc
	test	rbx, rbx
	je	.label_49
	test	rax, rax
	je	.label_52
.label_49:
	pop	rbx
	ret	
.label_51:
	call	xalloc_die
	.section	.text
	.align	16
	#Procedure 0x401ce4
	.globl sub_401ce4
	.type sub_401ce4, @function
sub_401ce4:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x401cf0
	.globl quotearg_n_mem
	.type quotearg_n_mem, @function
quotearg_n_mem:

	mov	ecx, OFFSET FLAT:default_quoting_options
	jmp	quotearg_n_options
	.section	.text
	.align	16
	#Procedure 0x401cfa
	.globl sub_401cfa
	.type sub_401cfa, @function
sub_401cfa:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x401d00
	.globl quotearg_char_mem
	.type quotearg_char_mem, @function
quotearg_char_mem:

	sub	rsp, 0x38
	mov	ecx, edx
	mov	r8, rsi
	mov	rdx, rdi
	mov	rsi, qword ptr [rip + label_25]
	mov	qword ptr [rsp + 0x30], rsi
	movups	xmm0, xmmword ptr [rip + label_26]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0, xmmword ptr [rip + label_27]
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
	#Procedure 0x401d6e
	.globl sub_401d6e
	.type sub_401d6e, @function
sub_401d6e:

	nop	
	.section	.text
	.align	16
	#Procedure 0x401d70
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
	#Procedure 0x401e31
	.globl sub_401e31
	.type sub_401e31, @function
sub_401e31:

	nop	word ptr cs:[rax + rax]
.label_57:
	mov	rcx, qword ptr [rip + stderr]
	mov	edi, OFFSET FLAT:label_53
	mov	esi, 0x37
	mov	edx, 1
	call	fwrite
	call	abort
	.section	.text
	.align	16
	#Procedure 0x401e60
	.globl sub_401e60
	.type sub_401e60, @function
sub_401e60:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x401e6f

	.globl set_program_name
	.type set_program_name, @function
set_program_name:
	push	r14
	push	rbx
	push	rax
	mov	rbx, rdi
	test	rbx, rbx
	je	.label_57
	mov	esi, 0x2f
	mov	rdi, rbx
	call	strrchr
	test	rax, rax
	lea	r14, [rax + 1]
	cmove	r14, rbx
	mov	rax, r14
	sub	rax, rbx
	cmp	rax, 7
	jl	.label_55
	lea	rdi, [r14 - 7]
	mov	esi, OFFSET FLAT:label_58
	mov	edx, 7
	call	strncmp
	test	eax, eax
	jne	.label_55
	mov	esi, OFFSET FLAT:label_56
	mov	edx, 3
	mov	rdi, r14
	call	strncmp
	test	eax, eax
	jne	.label_54
	add	r14, 3
	mov	qword ptr [rip + __progname],  r14
.label_54:
	mov	rbx, r14
.label_55:
	mov	qword ptr [rip + program_name],  rbx
	mov	qword ptr [rip + __progname_full],  rbx
	add	rsp, 8
	pop	rbx
	pop	r14
	ret	
.label_59:
	call	abort
	.section	.text
	.align	16
	#Procedure 0x401ef5
	.globl sub_401ef5
	.type sub_401ef5, @function
sub_401ef5:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x401efb
	.globl quotearg_n_custom_mem
	.type quotearg_n_custom_mem, @function
quotearg_n_custom_mem:

	sub	rsp, 0x38
	mov	rax, qword ptr [rip + label_25]
	mov	qword ptr [rsp + 0x30], rax
	movups	xmm0, xmmword ptr [rip + label_26]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0, xmmword ptr [rip + label_27]
	movaps	xmmword ptr [rsp + 0x10], xmm0
	movups	xmm0, xmmword ptr [rip + default_quoting_options]
	movaps	xmmword ptr [rsp], xmm0
	mov	dword ptr [rsp], 0xa
	test	rsi, rsi
	je	.label_59
	test	rdx, rdx
	je	.label_59
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
	#Procedure 0x401f60
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
	je	.label_60
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
.label_60:
	call	abort
	.section	.text
	.align	16
	#Procedure 0x401ff5
	.globl sub_401ff5
	.type sub_401ff5, @function
sub_401ff5:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x402000
	.globl emit_bug_reporting_address
	.type emit_bug_reporting_address, @function
emit_bug_reporting_address:

	push	rax
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_61
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:label_62
	xor	eax, eax
	mov	rsi, rcx
	call	__printf_chk
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_64
	mov	edx, 5
	call	dcgettext
	mov	rsi, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:label_65
	mov	ecx, OFFSET FLAT:label_66
	xor	eax, eax
	call	__printf_chk
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_63
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	pop	rax
	jmp	fputs_unlocked
	.section	.text
	.align	16
	#Procedure 0x402074
	.globl sub_402074
	.type sub_402074, @function
sub_402074:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x402080
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
	#Procedure 0x402098
	.globl sub_402098
	.type sub_402098, @function
sub_402098:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4020a0

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
	je	.label_79
	mov	edx, OFFSET FLAT:label_70
	xor	eax, eax
	mov	rdi, r14
	mov	r8, rbx
	call	__fprintf_chk
	jmp	.label_76
.label_79:
	mov	edx, OFFSET FLAT:label_77
	xor	eax, eax
	mov	rdi, r14
	mov	rcx, rbx
	mov	r8, r9
	call	__fprintf_chk
.label_76:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_81
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
	mov	esi, OFFSET FLAT:label_78
	mov	edx, 5
	call	dcgettext
	mov	rdi, rax
	mov	rsi, r14
	call	fputs_unlocked
	cmp	r12, 9
	ja	.label_82
	jmp	qword ptr [(r12 * 8) + label_83]
.label_385:
	add	rsp, 8
	jmp	.label_69
.label_82:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_73
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
	jmp	.label_69
.label_386:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_68
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
.label_387:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_74
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
.label_388:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_71
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
.label_389:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_85
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
	jmp	.label_69
.label_390:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_84
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
	jmp	.label_69
.label_391:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_67
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
	jmp	.label_69
.label_392:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_72
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
	jmp	.label_69
.label_394:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_75
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
	jmp	.label_69
.label_393:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_80
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
.label_69:
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	ret	
	.section	.text
	.align	16
	#Procedure 0x4023f8
	.globl sub_4023f8
	.type sub_4023f8, @function
sub_4023f8:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x402400
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
	#Procedure 0x40240f
	.globl sub_40240f
	.type sub_40240f, @function
sub_40240f:

	nop	
.label_86:
	call	abort
	.section	.text
	.align	16
	#Procedure 0x402415
	.globl sub_402415
	.type sub_402415, @function
sub_402415:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x402419
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
	je	.label_86
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
.label_99:
	mov	edi, OFFSET FLAT:label_87
	mov	esi, OFFSET FLAT:label_88
	mov	edx, 0x28
	mov	ecx, OFFSET FLAT:label_89
	call	__assert_fail
	.section	.text
	.align	16
	#Procedure 0x402499
	.globl sub_402499
	.type sub_402499, @function
sub_402499:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4024a6

	.globl usage
	.type usage, @function
usage:
	push	rax
	test	edi, edi
	jne	.label_99
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_102
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
	mov	esi, OFFSET FLAT:label_100
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_92
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_95
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_96
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_103
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_104
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_105
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_107
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:label_90
	xor	eax, eax
	mov	rsi, rcx
	call	__printf_chk
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_98
	mov	edx, 5
	call	dcgettext
	mov	rsi, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:label_65
	mov	ecx, OFFSET FLAT:label_66
	xor	eax, eax
	call	__printf_chk
	mov	edi, 5
	xor	esi, esi
	call	setlocale
	test	rax, rax
	je	.label_94
	mov	esi, OFFSET FLAT:label_97
	mov	edx, 3
	mov	rdi, rax
	call	strncmp
	test	eax, eax
	je	.label_94
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_101
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	call	fputs_unlocked
.label_94:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_93
	mov	edx, 5
	call	dcgettext
	mov	rsi, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:label_66
	mov	ecx, OFFSET FLAT:label_90
	xor	eax, eax
	call	__printf_chk
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_106
	mov	edx, 5
	call	dcgettext
	mov	rsi, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:label_90
	mov	ecx, OFFSET FLAT:label_91
	xor	eax, eax
	call	__printf_chk
	xor	edi, edi
	call	exit
.label_109:
	mov	rdi, rbx
	pop	rbx
	pop	r14
	pop	rbp
	jmp	fclose
	.section	.text
	.align	16
	#Procedure 0x4026bc
	.globl sub_4026bc
	.type sub_4026bc, @function
sub_4026bc:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4026c8

	.globl rpl_fclose
	.type rpl_fclose, @function
rpl_fclose:
	push	rbp
	push	r14
	push	rbx
	mov	rbx, rdi
	call	fileno
	test	eax, eax
	js	.label_109
	mov	rdi, rbx
	call	__freading
	test	eax, eax
	je	.label_108
	mov	rdi, rbx
	call	fileno
	xor	esi, esi
	mov	edx, 1
	mov	edi, eax
	call	lseek
	cmp	rax, -1
	je	.label_109
.label_108:
	mov	rdi, rbx
	call	rpl_fflush
	test	eax, eax
	je	.label_109
	call	__errno_location
	mov	r14, rax
	mov	ebp, dword ptr [r14]
	mov	rdi, rbx
	call	fclose
	test	ebp, ebp
	je	.label_110
	mov	dword ptr [r14], ebp
	mov	eax, 0xffffffff
.label_110:
	pop	rbx
	pop	r14
	pop	rbp
	ret	
.label_111:
	call	xalloc_die
	.section	.text
	.align	16
	#Procedure 0x402735
	.globl sub_402735
	.type sub_402735, @function
sub_402735:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40273f
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
	je	.label_112
	test	r14, r14
	je	.label_111
.label_112:
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
	#Procedure 0x402770

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
.label_123:
	mov	r11, rbp
	xor	r14d, r14d
	mov	ecx, r15d
	cmp	r15d, 0xa
	ja	.label_121
	mov	edi, 7
	mov	r13b, 1
	xor	esi, esi
	mov	r8, qword ptr [rsp + 0x30]
	jmp	qword ptr [(rcx * 8) + label_125]
.label_419:
	mov	byte ptr [rsp + 7], r10b
	mov	edi, OFFSET FLAT:label_132
	mov	esi, r15d
	mov	rbx, r11
	mov	ebp, r9d
	call	gettext_quote
	mov	qword ptr [rsp + 0x78], rax
	mov	edi, OFFSET FLAT:label_136
	mov	esi, r15d
	call	gettext_quote
	mov	r9d, ebp
	mov	r10b, byte ptr [rsp + 7]
	mov	r11, rbx
	mov	qword ptr [rsp + 0x70], rax
.label_420:
	mov	dword ptr [rsp + 0x50], r9d
	mov	byte ptr [rsp + 7], r10b
	test	r12b, 1
	mov	r14d, 0
	mov	rcx, qword ptr [rsp + 0x78]
	jne	.label_148
	mov	al, byte ptr [rcx]
	test	al, al
	mov	r14d, 0
	je	.label_148
	xor	r14d, r14d
	nop	word ptr cs:[rax + rax]
.label_146:
	cmp	r14, r11
	jae	.label_227
	mov	rdx, qword ptr [rsp + 8]
	mov	byte ptr [rdx + r14], al
.label_227:
	movzx	eax, byte ptr [rcx + r14 + 1]
	inc	r14
	test	al, al
	jne	.label_146
.label_148:
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
	jmp	.label_175
.label_412:
	xor	edi, edi
	xor	r14d, r14d
	mov	r13d, eax
	xor	esi, esi
	jmp	.label_175
.label_415:
	mov	al, 1
.label_413:
	mov	r12b, 1
.label_416:
	test	r12b, 1
	mov	cl, 1
	je	.label_180
	mov	ecx, eax
.label_180:
	mov	al, cl
.label_414:
	test	r12b, 1
	jne	.label_182
	test	r11, r11
	je	.label_177
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx], 0x27
.label_177:
	mov	r14d, 1
	jmp	.label_186
.label_182:
	xor	r14d, r14d
.label_186:
	mov	ecx, OFFSET FLAT:label_136
	mov	qword ptr [rsp + 0x48], rcx
	mov	ecx, 1
	mov	qword ptr [rsp + 0x40], rcx
	mov	r13d, eax
	mov	sil, r12b
	mov	edi, 2
	jmp	.label_175
.label_417:
	test	r12b, 1
	jne	.label_198
	test	r11, r11
	je	.label_202
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax], 0x22
.label_202:
	mov	r14d, 1
	jmp	.label_205
.label_418:
	mov	r13b, 1
	mov	edi, 5
	xor	r14d, r14d
	mov	eax, OFFSET FLAT:label_208
	mov	qword ptr [rsp + 0x48], rax
	mov	eax, 1
	mov	qword ptr [rsp + 0x40], rax
	mov	sil, 1
	jmp	.label_175
.label_198:
	xor	r14d, r14d
.label_205:
	mov	eax, OFFSET FLAT:label_208
	mov	qword ptr [rsp + 0x48], rax
	mov	eax, 1
	mov	qword ptr [rsp + 0x40], rax
	mov	r13b, 1
	mov	sil, r12b
	mov	edi, 5
	nop	word ptr cs:[rax + rax]
.label_175:
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
	jmp	.label_221
	.section	.text
	.align	16
	#Procedure 0x402a5d
	.globl sub_402a5d
	.type sub_402a5d, @function
sub_402a5d:

	nop	dword ptr [rax]
.label_163:
	inc	rsi
.label_221:
	cmp	rbp, -1
	je	.label_141
	cmp	rsi, rbp
	jne	.label_143
	jmp	.label_144
	.section	.text
	.align	16
	#Procedure 0x402a73
	.globl sub_402a73
	.type sub_402a73, @function
sub_402a73:

	nop	word ptr cs:[rax + rax]
.label_141:
	mov	rcx, -1
	cmp	byte ptr [rdi + rsi], 0
	je	.label_149
.label_143:
	cmp	byte ptr [rsp + 0x2f], 0
	je	.label_200
	mov	rax, qword ptr [rsp + 0x40]
	lea	rbx, [rsi + rax]
	cmp	rax, 2
	jb	.label_157
	cmp	rbp, -1
	jne	.label_157
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
.label_157:
	cmp	rbx, rbp
	jbe	.label_184
.label_200:
	xor	r8d, r8d
.label_171:
	movzx	r15d, byte ptr [rdi + rsi]
	cmp	r15, 0x7e
	ja	.label_197
	xor	edx, edx
	mov	r13b, 1
	mov	cl, 0x6e
	mov	bl, 0x61
	xor	eax, eax
	jmp	qword ptr [(r15 * 8) + label_174]
.label_436:
	test	rsi, rsi
	jne	.label_166
	jmp	.label_179
	.section	.text
	.align	16
	#Procedure 0x402b15
	.globl sub_402b15
	.type sub_402b15, @function
sub_402b15:

	nop	word ptr cs:[rax + rax]
.label_184:
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
	jne	.label_191
	cmp	byte ptr [rsp + 6], 0
	mov	rdi, qword ptr [rsp + 0x30]
	mov	r11, rbx
	mov	r10d, r15d
	mov	rax, qword ptr [rsp + 0x38]
	mov	r9d, ebp
	mov	rsi, r12
	mov	r12, rax
	mov	rbp, qword ptr [rsp + 0x20]
	je	.label_171
	jmp	.label_189
.label_191:
	mov	rdi, qword ptr [rsp + 0x30]
	mov	r11, rbx
	mov	r10d, r15d
	mov	rax, qword ptr [rsp + 0x38]
	mov	r9d, ebp
	mov	rsi, r12
	mov	r12, rax
	mov	rbp, qword ptr [rsp + 0x20]
	jmp	.label_171
.label_440:
	xor	eax, eax
	cmp	rbp, -1
	je	.label_214
	test	rsi, rsi
	jne	.label_216
	cmp	rbp, 1
	je	.label_179
	xor	r13d, r13d
	jmp	.label_120
.label_429:
	cmp	byte ptr [rsp + 0x17], 0
	je	.label_220
	cmp	byte ptr [rsp + 6], 0
	jne	.label_162
	cmp	r12d, 2
	jne	.label_224
	mov	eax, r9d
	and	al, 1
	jne	.label_224
	cmp	r14, r11
	jae	.label_226
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], 0x27
.label_226:
	lea	rax, [r14 + 1]
	cmp	rax, r11
	jae	.label_231
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + rax], 0x24
.label_231:
	lea	rax, [r14 + 2]
	cmp	rax, r11
	jae	.label_126
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + rax], 0x27
.label_126:
	add	r14, 3
	mov	r9b, 1
.label_224:
	mov	rcx, r14
	cmp	rcx, r11
	jae	.label_124
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + rcx], 0x5c
.label_124:
	lea	r14, [rcx + 1]
	mov	al, 1
	mov	r15b, 0x30
	cmp	r12d, 2
	je	.label_127
	lea	rdx, [rsi + 1]
	cmp	rdx, rbp
	jae	.label_127
	mov	dl, byte ptr [rdi + rdx]
	add	dl, 0xd0
	cmp	dl, 9
	ja	.label_127
	cmp	r14, r11
	jae	.label_230
	mov	rdx, qword ptr [rsp + 8]
	mov	byte ptr [rdx + r14], 0x30
.label_230:
	lea	rdx, [rcx + 2]
	cmp	rdx, r11
	jae	.label_151
	mov	rbx, qword ptr [rsp + 8]
	mov	byte ptr [rbx + rdx], 0x30
.label_151:
	add	rcx, 3
	xor	r13d, r13d
	mov	r14, rcx
	jmp	.label_120
.label_430:
	mov	bl, 0x62
	jmp	.label_153
.label_431:
	mov	cl, 0x74
	jmp	.label_119
.label_432:
	mov	bl, 0x76
	jmp	.label_153
.label_433:
	mov	bl, 0x66
	jmp	.label_153
.label_434:
	mov	cl, 0x72
	jmp	.label_119
.label_437:
	mov	r15b, 0x27
	mov	al, 1
	mov	qword ptr [rsp + 0xa0], rax
	cmp	r12d, 2
	jne	.label_161
	cmp	byte ptr [rsp + 6], 0
	jne	.label_128
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
	jae	.label_169
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], 0x27
.label_169:
	lea	rax, [r14 + 1]
	cmp	rax, r11
	jae	.label_178
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + rax], 0x5c
.label_178:
	lea	rax, [r14 + 2]
	cmp	rax, r11
	jae	.label_181
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + rax], 0x27
.label_181:
	add	r14, 3
	xor	r9d, r9d
.label_161:
	xor	eax, eax
	mov	r13b, 1
	jmp	.label_120
.label_438:
	mov	r15b, 0x3f
	cmp	r12d, 5
	je	.label_188
	cmp	r12d, 2
	jne	.label_166
	cmp	byte ptr [rsp + 6], 0
	je	.label_166
	jmp	.label_128
.label_439:
	cmp	r12d, 2
	jne	.label_199
	cmp	byte ptr [rsp + 6], 0
	jne	.label_128
	mov	r15b, 0x5c
	xor	eax, eax
	xor	r13d, r13d
	jmp	.label_154
.label_197:
	mov	dword ptr [rsp + 0x54], r8d
	mov	dword ptr [rsp + 0x50], r9d
	mov	byte ptr [rsp + 7], r10b
	mov	qword ptr [rsp + 0x98], r11
	cmp	qword ptr [rsp + 0xa8], 1
	jne	.label_212
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
.label_160:
	and	r13b, 1
	mov	r8d, r13d
	or	r8b, byte ptr [rsp + 0x2a]
	mov	qword ptr [rsp + 0x60], r12
	cmp	r12, 1
	mov	r11, qword ptr [rsp + 0x98]
	mov	r10b, byte ptr [rsp + 7]
	mov	r12, qword ptr [rsp + 0x38]
	mov	r9d, dword ptr [rsp + 0x50]
	ja	.label_115
	test	r8b, r8b
	je	.label_115
	xor	eax, eax
	mov	rbp, qword ptr [rsp + 0x20]
	mov	r8d, dword ptr [rsp + 0x54]
	jmp	.label_120
.label_214:
	test	rsi, rsi
	jne	.label_164
	mov	cl, byte ptr [rdi + 1]
	test	cl, cl
	jne	.label_164
.label_179:
	mov	dl, 1
.label_435:
	cmp	byte ptr [rsp + 0x1f], 0
	je	.label_128
	xor	eax, eax
	mov	r13b, dl
	nop	word ptr [rax + rax]
.label_120:
	cmp	byte ptr [rsp + 0x2e], 0
	je	.label_134
	cmp	qword ptr [rsp + 0xf0], 0
	jne	.label_135
	jmp	.label_140
	.section	.text
	.align	16
	#Procedure 0x402e64
	.globl sub_402e64
	.type sub_402e64, @function
sub_402e64:

	nop	word ptr cs:[rax + rax]
.label_134:
	cmp	byte ptr [rsp + 0x2d], 0
	je	.label_140
.label_135:
	mov	ebx, r8d
	mov	r8, rsi
	mov	ecx, r15d
	shr	cl, 5
	movzx	edx, cl
	mov	esi, 1
	mov	ecx, r15d
	shl	esi, cl
	test	bl, bl
	jne	.label_147
	mov	rcx, qword ptr [rsp + 0xf0]
	and	esi, dword ptr [rcx + rdx*4]
	mov	ebx, r15d
	mov	rsi, r8
	je	.label_154
	jmp	.label_158
	.section	.text
	.align	16
	#Procedure 0x402ead
	.globl sub_402ead
	.type sub_402ead, @function
sub_402ead:

	nop	dword ptr [rax]
.label_140:
	test	r8b, r8b
	mov	ebx, r15d
	jne	.label_158
	jmp	.label_154
.label_147:
	mov	ebx, r15d
	mov	rsi, r8
	jmp	.label_158
.label_220:
	cmp	dword ptr [rsp + 0x90], 0
	jne	.label_163
	xor	r15d, r15d
	jmp	.label_166
.label_199:
	mov	cl, 0x5c
	cmp	byte ptr [rsp + 0x29], 0
	je	.label_119
	xor	eax, eax
	mov	r15b, 0x5c
	xor	r13d, r13d
	jmp	.label_154
.label_119:
	cmp	byte ptr [rsp + 0x1f], 0
	mov	ebx, ecx
	je	.label_128
.label_153:
	xor	eax, eax
	cmp	byte ptr [rsp + 0x17], 0
	mov	r13d, 0
	je	.label_120
	nop	word ptr cs:[rax + rax]
.label_158:
	cmp	byte ptr [rsp + 6], 0
	jne	.label_162
	cmp	r12d, 2
	jne	.label_183
	mov	eax, r9d
	and	al, 1
	jne	.label_183
	cmp	r14, r11
	jae	.label_194
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], 0x27
.label_194:
	lea	rax, [r14 + 1]
	cmp	rax, r11
	jae	.label_192
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + rax], 0x24
.label_192:
	lea	rax, [r14 + 2]
	cmp	rax, r11
	jae	.label_229
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + rax], 0x27
.label_229:
	add	r14, 3
	mov	r9b, 1
.label_183:
	cmp	r14, r11
	jae	.label_204
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], 0x5c
.label_204:
	inc	r14
	jmp	.label_209
.label_212:
	mov	qword ptr [rsp + 0x80], 0
	cmp	rbp, -1
	jne	.label_213
	mov	rbx, rsi
	call	strlen
	mov	rsi, rbx
	mov	rdi, qword ptr [rsp + 0x30]
	mov	rbp, rax
.label_213:
	lea	rax, [rdi + rsi]
	mov	qword ptr [rsp + 0x60], rax
	mov	r13b, 1
	xor	r12d, r12d
	lea	rax, [rsp + 0x80]
	mov	rcx, rax
	mov	qword ptr [rsp + 0x20], rbp
	mov	qword ptr [rsp + 0x58], rsi
.label_206:
	lea	rbx, [r12 + rsi]
	lea	rsi, [rdi + rbx]
	mov	rdx, rbp
	sub	rdx, rbx
	lea	rdi, [rsp + 0x94]
	call	rpl_mbrtowc
	mov	rbp, rax
	test	rbp, rbp
	je	.label_228
	cmp	rbp, -1
	movabs	rsi, 0x20000002b
	je	.label_233
	cmp	rbp, -2
	je	.label_118
	cmp	rbp, 1
	seta	al
	and	al, byte ptr [rsp + 0x2b]
	cmp	al, 1
	mov	rdi, qword ptr [rsp + 0x30]
	mov	r11, qword ptr [rsp + 0x98]
	jne	.label_129
	mov	rax, qword ptr [rsp + 0x60]
	lea	rax, [rax + r12]
	mov	ecx, 1
	nop	word ptr cs:[rax + rax]
.label_142:
	movsx	edx, byte ptr [rax + rcx]
	add	edx, -0x5b
	cmp	edx, 0x21
	ja	.label_225
	bt	rsi, rdx
	jb	.label_139
.label_225:
	inc	rcx
	cmp	rcx, rbp
	jb	.label_142
.label_129:
	mov	edi, dword ptr [rsp + 0x94]
	call	iswprint
	test	eax, eax
	jne	.label_222
	xor	r13d, r13d
.label_222:
	lea	rdi, [rsp + 0x80]
	add	r12, rbp
	mov	rbx, rdi
	call	mbsinit
	mov	rcx, rbx
	test	eax, eax
	mov	rdi, qword ptr [rsp + 0x30]
	mov	rbp, qword ptr [rsp + 0x20]
	mov	rsi, qword ptr [rsp + 0x58]
	je	.label_206
	jmp	.label_160
.label_127:
	xor	r13d, r13d
	jmp	.label_120
.label_164:
	mov	rbp, -1
	xor	r13d, r13d
	jmp	.label_120
.label_188:
	cmp	dword ptr [rsp + 0x8c], 0
	je	.label_166
	lea	rcx, [rsi + 2]
	cmp	rcx, rbp
	jae	.label_166
	cmp	byte ptr [rdi + rsi + 1], 0x3f
	jne	.label_166
	movsx	edx, byte ptr [rdi + rcx]
	xor	eax, eax
	cmp	edx, 0x3e
	ja	.label_173
	mov	rbx, rsi
	movabs	rsi, 0x7000a38200000000
	bt	rsi, rdx
	jae	.label_234
	cmp	byte ptr [rsp + 6], 0
	jne	.label_150
	cmp	r14, r11
	jae	.label_203
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], 0x3f
.label_203:
	lea	rax, [r14 + 1]
	cmp	rax, r11
	jae	.label_137
	mov	rsi, qword ptr [rsp + 8]
	mov	byte ptr [rsi + rax], 0x22
.label_137:
	lea	rax, [r14 + 2]
	cmp	rax, r11
	jae	.label_190
	mov	rsi, qword ptr [rsp + 8]
	mov	byte ptr [rsi + rax], 0x22
.label_190:
	lea	rax, [r14 + 3]
	cmp	rax, r11
	jae	.label_201
	mov	rsi, qword ptr [rsp + 8]
	mov	byte ptr [rsi + rax], 0x3f
.label_201:
	add	r14, 4
	xor	eax, eax
	mov	rsi, rcx
	mov	r15b, dl
	xor	r13d, r13d
	jmp	.label_120
.label_166:
	xor	eax, eax
.label_216:
	xor	r13d, r13d
	jmp	.label_120
.label_115:
	add	qword ptr [rsp + 0x60], rsi
	xor	eax, eax
	mov	rbp, qword ptr [rsp + 0x20]
	jmp	.label_211
	.section	.text
	.align	16
	#Procedure 0x403192
	.globl sub_403192
	.type sub_403192, @function
sub_403192:

	nop	word ptr cs:[rax + rax]
.label_167:
	inc	r14
	mov	r15b, byte ptr [rdi + rsi + 1]
	mov	rsi, rdx
.label_211:
	test	r8b, r8b
	je	.label_217
	mov	ecx, dword ptr [rsp + 0x54]
	test	cl, 1
	je	.label_218
	cmp	r14, r11
	jae	.label_145
	mov	rdx, qword ptr [rsp + 8]
	mov	byte ptr [rdx + r14], 0x5c
.label_145:
	inc	r14
	mov	dword ptr [rsp + 0x54], 0
	jmp	.label_218
	.section	.text
	.align	16
	#Procedure 0x4031dc
	.globl sub_4031dc
	.type sub_4031dc, @function
sub_4031dc:

	nop	dword ptr [rax]
.label_217:
	cmp	byte ptr [rsp + 6], 0
	jne	.label_189
	cmp	r12d, 2
	jne	.label_210
	mov	eax, r9d
	and	al, 1
	jne	.label_210
	cmp	r14, r11
	jae	.label_232
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], 0x27
.label_232:
	lea	rax, [r14 + 1]
	cmp	rax, r11
	jae	.label_113
	mov	rdx, qword ptr [rsp + 8]
	mov	byte ptr [rdx + rax], 0x24
.label_113:
	lea	rax, [r14 + 2]
	cmp	rax, r11
	jae	.label_122
	mov	rdx, qword ptr [rsp + 8]
	mov	byte ptr [rdx + rax], 0x27
.label_122:
	add	r14, 3
	mov	r9b, 1
.label_210:
	cmp	r14, r11
	jae	.label_168
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], 0x5c
.label_168:
	lea	rax, [r14 + 1]
	cmp	rax, r11
	jae	.label_185
	mov	edx, r15d
	shr	dl, 6
	or	dl, 0x30
	mov	rbx, qword ptr [rsp + 8]
	mov	byte ptr [rbx + rax], dl
.label_185:
	lea	rax, [r14 + 2]
	cmp	rax, r11
	jae	.label_138
	mov	edx, r15d
	shr	dl, 3
	and	dl, 7
	or	dl, 0x30
	mov	rbx, qword ptr [rsp + 8]
	mov	byte ptr [rbx + rax], dl
.label_138:
	add	r14, 3
	and	r15b, 7
	or	r15b, 0x30
	mov	al, 1
.label_218:
	lea	rdx, [rsi + 1]
	cmp	qword ptr [rsp + 0x60], rdx
	jbe	.label_154
	test	r9b, 1
	je	.label_155
	mov	ebx, eax
	and	bl, 1
	jne	.label_155
	mov	rbx, rsi
	cmp	r14, r11
	jae	.label_156
	mov	rsi, qword ptr [rsp + 8]
	mov	byte ptr [rsi + r14], 0x27
.label_156:
	lea	rsi, [r14 + 1]
	cmp	rsi, r11
	jae	.label_131
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + rsi], 0x27
.label_131:
	add	r14, 2
	xor	r9d, r9d
	mov	rsi, rbx
.label_155:
	cmp	r14, r11
	jae	.label_167
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + r14], r15b
	jmp	.label_167
	.section	.text
	.align	16
	#Procedure 0x4032e3
	.globl sub_4032e3
	.type sub_4032e3, @function
sub_4032e3:

	nop	word ptr cs:[rax + rax]
.label_154:
	test	r9b, 1
	je	.label_215
	and	al, 1
	jne	.label_215
	cmp	r14, r11
	jae	.label_176
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], 0x27
.label_176:
	lea	rax, [r14 + 1]
	cmp	rax, r11
	jae	.label_159
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + rax], 0x27
.label_159:
	add	r14, 2
	xor	r9d, r9d
.label_215:
	mov	ebx, r15d
.label_209:
	cmp	r14, r11
	jae	.label_172
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], bl
.label_172:
	inc	r14
	shl	r13b, 7
	sar	r13b, 7
	and	r13b, r10b
	mov	r10d, r13d
	jmp	.label_163
.label_233:
	xor	r13d, r13d
.label_228:
	mov	rdi, qword ptr [rsp + 0x30]
	mov	rsi, qword ptr [rsp + 0x58]
	jmp	.label_160
.label_118:
	mov	rbp, qword ptr [rsp + 0x20]
	cmp	rbp, rbx
	mov	rdi, qword ptr [rsp + 0x30]
	jbe	.label_196
	mov	rsi, qword ptr [rsp + 0x58]
.label_207:
	mov	rax, qword ptr [rsp + 0x60]
	cmp	byte ptr [rax + r12], 0
	je	.label_187
	lea	rax, [rsi + r12 + 1]
	inc	r12
	cmp	rax, rbp
	jb	.label_207
	xor	r13d, r13d
	jmp	.label_160
.label_196:
	xor	r13d, r13d
	mov	rsi, qword ptr [rsp + 0x58]
	jmp	.label_160
.label_187:
	xor	r13d, r13d
	jmp	.label_160
.label_173:
	xor	r13d, r13d
	jmp	.label_120
.label_234:
	xor	r13d, r13d
	mov	rsi, rbx
	jmp	.label_120
	.section	.text
	.align	16
	#Procedure 0x4033b8
	.globl sub_4033b8
	.type sub_4033b8, @function
sub_4033b8:

	nop	dword ptr [rax + rax]
.label_144:
	mov	rcx, rsi
.label_149:
	cmp	r12d, 2
	setne	al
	test	r14, r14
	setne	dl
	cmp	byte ptr [rsp + 6], 0
	je	.label_219
	or	al, dl
	je	.label_223
.label_219:
	cmp	r12d, 2
	setne	al
	cmp	byte ptr [rsp + 6], 0
	setne	dl
	mov	rsi, qword ptr [rsp + 0xa0]
	test	sil, 1
	mov	bl, byte ptr [rsp + 0x2c]
	mov	rsi, qword ptr [rsp + 0xb0]
	je	.label_114
	or	al, dl
	jne	.label_114
	test	r10b, 1
	jne	.label_117
	cmp	qword ptr [rsp + 0x68], 0
	je	.label_114
	test	r11, r11
	mov	r15d, r12d
	mov	al, bl
	mov	qword ptr [rsp + 0x20], rcx
	mov	r12d, esi
	mov	rbp, qword ptr [rsp + 0x68]
	je	.label_123
.label_114:
	mov	rdx, qword ptr [rsp + 0x48]
	test	rdx, rdx
	je	.label_130
	cmp	byte ptr [rsp + 6], 0
	mov	rcx, qword ptr [rsp + 8]
	jne	.label_116
	mov	al, byte ptr [rdx]
	test	al, al
	je	.label_116
	inc	rdx
	nop	word ptr cs:[rax + rax]
.label_170:
	cmp	r14, r11
	jae	.label_165
	mov	byte ptr [rcx + r14], al
.label_165:
	inc	r14
	movzx	eax, byte ptr [rdx]
	inc	rdx
	test	al, al
	jne	.label_170
	jmp	.label_116
.label_162:
	mov	qword ptr [rsp + 0x20], rbp
.label_189:
	mov	rdx, rdi
	jmp	.label_152
.label_128:
	mov	qword ptr [rsp + 0x20], rbp
.label_139:
	mov	rdx, rdi
	mov	eax, 2
.label_133:
	mov	qword ptr [rsp + 0x38], rax
.label_152:
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
.label_193:
	mov	r14, rax
.label_195:
	mov	rax, r14
	add	rsp, 0xb8
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_223:
	mov	rdx, rdi
	mov	qword ptr [rsp + 0x20], rcx
	jmp	.label_152
.label_117:
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
	jmp	.label_193
.label_130:
	mov	rcx, qword ptr [rsp + 8]
.label_116:
	cmp	r14, r11
	jae	.label_195
	mov	byte ptr [rcx + r14], 0
	jmp	.label_195
.label_150:
	mov	qword ptr [rsp + 0x20], rbp
	mov	rdx, rdi
	mov	eax, 5
	jmp	.label_133
.label_121:
	call	abort
	.section	.text
	.align	16
	#Procedure 0x403577
	.globl sub_403577
	.type sub_403577, @function
sub_403577:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x403580

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
	je	.label_235
	test	r15, r15
	je	.label_236
.label_235:
	mov	rdi, r15
	mov	rsi, r14
	mov	rdx, rbx
	call	memcpy
	mov	rax, r15
	pop	rbx
	pop	r14
	pop	r15
	ret	
.label_236:
	call	xalloc_die
	.section	.text
	.align	16
	#Procedure 0x4035bc
	.globl sub_4035bc
	.type sub_4035bc, @function
sub_4035bc:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x4035c0
	.globl quotearg_custom_mem
	.type quotearg_custom_mem, @function
quotearg_custom_mem:

	sub	rsp, 0x38
	mov	rax, qword ptr [rip + label_25]
	mov	qword ptr [rsp + 0x30], rax
	movups	xmm0, xmmword ptr [rip + label_26]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0, xmmword ptr [rip + label_27]
	movaps	xmmword ptr [rsp + 0x10], xmm0
	movups	xmm0, xmmword ptr [rip + default_quoting_options]
	movaps	xmmword ptr [rsp], xmm0
	mov	dword ptr [rsp], 0xa
	test	rdi, rdi
	je	.label_237
	test	rsi, rsi
	je	.label_237
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
.label_237:
	call	abort
	.section	.text
	.align	16
	#Procedure 0x40362c
	.globl sub_40362c
	.type sub_40362c, @function
sub_40362c:

	nop	dword ptr [rax]
.label_239:
	mov	ebx, 0xffffffff
	test	eax, eax
	jne	.label_238
	call	__errno_location
	mov	dword ptr [rax], 0
.label_238:
	mov	eax, ebx
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40364b

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
	jne	.label_239
	test	eax, eax
	sete	cl
	neg	eax
	sbb	ebx, ebx
	test	r14, r14
	jne	.label_238
	test	cl, cl
	jne	.label_238
	call	__errno_location
	xor	ecx, ecx
	cmp	dword ptr [rax], 9
	mov	ebx, 0xffffffff
	cmove	ebx, ecx
	jmp	.label_238
	.section	.text
	.align	16
	#Procedure 0x403690
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
	#Procedure 0x40369f
	.globl sub_40369f
	.type sub_40369f, @function
sub_40369f:

	nop	
.label_244:
	cmp	byte ptr [rbx], 0x60
	mov	ecx, OFFSET FLAT:label_240
	mov	eax, OFFSET FLAT:label_241
	jmp	.label_242
	.section	.text
	.align	16
	#Procedure 0x4036af
	.globl sub_4036af
	.type sub_4036af, @function
sub_4036af:

	nop	word ptr cs:[rax + rax]
.label_245:
	movsx	ecx, byte ptr [rax + 1]
	and	ecx, 0xffffffdf
	cmp	ecx, 0x42
	jne	.label_243
	cmp	byte ptr [rax + 2], 0x31
	jne	.label_243
	cmp	byte ptr [rax + 3], 0x38
	jne	.label_243
	cmp	byte ptr [rax + 4], 0x30
	jne	.label_243
	cmp	byte ptr [rax + 5], 0x33
	jne	.label_243
	cmp	byte ptr [rax + 6], 0x30
	jne	.label_243
	cmp	byte ptr [rax + 7], 0
	je	.label_244
.label_243:
	cmp	ebp, 9
	mov	ecx, OFFSET FLAT:label_208
	mov	eax, OFFSET FLAT:label_136
.label_242:
	cmove	rax, rcx
.label_246:
	add	rsp, 8
	pop	rbx
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x403702

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
	jne	.label_246
	call	locale_charset
	movsx	ecx, byte ptr [rax]
	and	ecx, 0xffffffdf
	cmp	ecx, 0x47
	je	.label_245
	cmp	ecx, 0x55
	jne	.label_243
	movsx	ecx, byte ptr [rax + 1]
	and	ecx, 0xffffffdf
	cmp	ecx, 0x54
	jne	.label_243
	movsx	ecx, byte ptr [rax + 2]
	and	ecx, 0xffffffdf
	cmp	ecx, 0x46
	jne	.label_243
	cmp	byte ptr [rax + 3], 0x2d
	jne	.label_243
	cmp	byte ptr [rax + 4], 0x38
	jne	.label_243
	cmp	byte ptr [rax + 5], 0
	jne	.label_243
	cmp	byte ptr [rbx], 0x60
	mov	ecx, OFFSET FLAT:label_247
	mov	eax, OFFSET FLAT:label_248
	jmp	.label_242
	.section	.text
	.align	16
	#Procedure 0x403770
	.globl quote_n
	.type quote_n, @function
quote_n:

	mov	rdx, -1
	mov	ecx, OFFSET FLAT:quote_quoting_options
	jmp	quotearg_n_options
	.section	.text
	.align	16
	#Procedure 0x403781
	.globl sub_403781
	.type sub_403781, @function
sub_403781:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x403790
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
	je	.label_249
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
.label_249:
	call	abort
	.section	.text
	.align	16
	#Procedure 0x4037f8
	.globl sub_4037f8
	.type sub_4037f8, @function
sub_4037f8:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x403800

	.globl hard_locale
	.type hard_locale, @function
hard_locale:
	push	rbx
	xor	esi, esi
	call	setlocale
	mov	bl, 1
	test	rax, rax
	je	.label_251
	cmp	byte ptr [rax], 0x43
	jne	.label_253
	cmp	byte ptr [rax + 1], 0
	je	.label_250
.label_253:
	mov	esi, OFFSET FLAT:label_252
	mov	rdi, rax
	call	strcmp
	test	eax, eax
	jne	.label_251
.label_250:
	xor	ebx, ebx
.label_251:
	mov	eax, ebx
	pop	rbx
	ret	
	.section	.text
	.align	16
	#Procedure 0x403831
	.globl sub_403831
	.type sub_403831, @function
sub_403831:

	nop	word ptr cs:[rax + rax]
.label_259:
	test	rcx, rcx
	jne	.label_254
	mov	eax, 0x80
	xor	edx, edx
	div	rbx
	xor	ecx, ecx
	cmp	rbx, 0x80
	seta	cl
	add	rcx, rax
.label_254:
	movabs	rax, 0x7fffffffffffffff
	xor	edx, edx
	div	rbx
	cmp	rax, rcx
	jb	.label_257
.label_260:
	mov	qword ptr [rsi], rcx
	imul	rbx, rcx
	test	rdi, rdi
	je	.label_256
	test	rbx, rbx
	jne	.label_256
	call	free
	xor	eax, eax
	pop	rbx
	ret	
.label_255:
	call	xalloc_die
.label_256:
	mov	rsi, rbx
	call	realloc
	test	rbx, rbx
	je	.label_258
	test	rax, rax
	je	.label_255
.label_258:
	pop	rbx
	ret	
.label_257:
	call	xalloc_die
	.section	.text
	.align	16
	#Procedure 0x4038aa
	.globl sub_4038aa
	.type sub_4038aa, @function
sub_4038aa:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4038b3
	.globl x2nrealloc
	.type x2nrealloc, @function
x2nrealloc:

	push	rbx
	mov	rbx, rdx
	mov	rcx, qword ptr [rsi]
	test	rdi, rdi
	je	.label_259
	movabs	rax, 0x5555555555555554
	xor	edx, edx
	div	rbx
	cmp	rax, rcx
	jbe	.label_255
	mov	rax, rcx
	shr	rax, 1
	lea	rcx, [rcx + rax + 1]
	jmp	.label_260
	.section	.text
	.align	16
	#Procedure 0x4038e0
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
	#Procedure 0x403916
	.globl sub_403916
	.type sub_403916, @function
sub_403916:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x403920
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
	#Procedure 0x403995
	.globl sub_403995
	.type sub_403995, @function
sub_403995:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4039a0
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
	#Procedure 0x4039b9
	.globl sub_4039b9
	.type sub_4039b9, @function
sub_4039b9:

	nop	dword ptr [rax]
.label_261:
	call	xalloc_die
.label_262:
	mov	rsi, rbx
	call	realloc
	test	rbx, rbx
	je	.label_263
	test	rax, rax
	je	.label_261
.label_263:
	pop	rbx
	ret	
	.section	.text
	.align	16
	#Procedure 0x4039d9

	.globl xrealloc
	.type xrealloc, @function
xrealloc:
	push	rbx
	mov	rbx, rsi
	test	rdi, rdi
	je	.label_262
	test	rbx, rbx
	jne	.label_262
	call	free
	xor	eax, eax
	pop	rbx
	ret	
	.section	.text
	.align	16
	#Procedure 0x4039f0

	.globl close_stdout
	.type close_stdout, @function
close_stdout:
	push	rbp
	push	rbx
	push	rax
	mov	rdi, qword ptr [rip + stdout]
	call	close_stream
	test	eax, eax
	je	.label_269
	mov	bl, byte ptr [rip + ignore_EPIPE]
	call	__errno_location
	mov	rbp, rax
	cmp	bl, 0
	je	.label_266
	cmp	dword ptr [rbp], 0x20
	jne	.label_266
.label_269:
	mov	rdi, qword ptr [rip + stderr]
	call	close_stream
	test	eax, eax
	jne	.label_265
	add	rsp, 8
	pop	rbx
	pop	rbp
	ret	
.label_267:
	call	quotearg_colon
	mov	rcx, rax
	xor	edi, edi
	mov	edx, OFFSET FLAT:label_268
	xor	eax, eax
	mov	esi, ebp
	mov	r8, rbx
	call	error
	mov	edi, dword ptr [rip + exit_failure]
	call	_exit
	nop	dword ptr [rax]
	nop	dword ptr [rax + rax]
.label_266:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_264
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
	mov	rdi, qword ptr [rip + file_name]
	test	rdi, rdi
	mov	ebp, dword ptr [rbp]
	jne	.label_267
	xor	edi, edi
	mov	edx, OFFSET FLAT:label_14
	xor	eax, eax
	mov	esi, ebp
	mov	rcx, rbx
	call	error
	mov	edi, dword ptr [rip + exit_failure]
	call	_exit
.label_265:
	mov	edi, dword ptr [rip + exit_failure]
	call	_exit
.label_270:
	call	xalloc_die
	.section	.text
	.align	16
	#Procedure 0x403ab5
	.globl sub_403ab5
	.type sub_403ab5, @function
sub_403ab5:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x403abf
	.globl xcalloc
	.type xcalloc, @function
xcalloc:

	push	rax
	movabs	rax, 0x7fffffffffffffff
	xor	edx, edx
	div	rsi
	cmp	rax, rdi
	jb	.label_270
	call	rpl_calloc
	test	rax, rax
	je	.label_270
	pop	rcx
	ret	
	.section	.text
	.align	16
	#Procedure 0x403ae0

	.globl main
	.type main, @function
main:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x18
	mov	r13, rsi
	mov	r15d, edi
	mov	edi, OFFSET FLAT:label_312
	call	getenv
	mov	r14, rax
	mov	bl, 1
	test	r14, r14
	je	.label_286
	cmp	r15d, 2
	jl	.label_275
	mov	rcx, qword ptr [r13 + 8]
	movzx	edx, byte ptr [rcx]
	mov	eax, 0x2d
	sub	eax, edx
	jne	.label_277
	movzx	edx, byte ptr [rcx + 1]
	mov	eax, 0x6e
	sub	eax, edx
	jne	.label_277
	movzx	eax, byte ptr [rcx + 2]
	neg	eax
.label_277:
	test	eax, eax
	sete	bl
	jmp	.label_286
.label_275:
	xor	ebx, ebx
.label_286:
	mov	rdi, qword ptr [r13]
	call	set_program_name
	mov	edi, 6
	mov	esi, OFFSET FLAT:label_46
	call	setlocale
	mov	edi, OFFSET FLAT:label_294
	mov	esi, OFFSET FLAT:label_295
	call	bindtextdomain
	mov	edi, OFFSET FLAT:label_294
	call	textdomain
	mov	edi, OFFSET FLAT:close_stdout
	call	atexit
	add	r13, 8
	cmp	r15d, 2
	jne	.label_300
	test	bl, bl
	je	.label_300
	mov	r12, qword ptr [r13]
	mov	esi, OFFSET FLAT:label_303
	mov	rdi, r12
	call	strcmp
	test	eax, eax
	je	.label_307
	mov	esi, OFFSET FLAT:label_309
	mov	rdi, r12
	call	strcmp
	test	eax, eax
	je	.label_315
.label_300:
	lea	r12d, [r15 - 1]
	cmp	r15d, 1
	setg	al
	and	al, bl
	mov	r15b, 1
	cmp	al, 1
	jne	.label_317
	xor	eax, eax
	movabs	rdx, 0x20100000001
	mov	ecx, r12d
.label_292:
	mov	rdi, qword ptr [r13]
	cmp	byte ptr [rdi], 0x2d
	jne	.label_271
	mov	bl, byte ptr [rdi + 1]
	test	bl, bl
	je	.label_271
	lea	rsi, [rdi + 1]
	xor	ebp, ebp
	nop	word ptr cs:[rax + rax]
.label_278:
	movsx	ebx, bl
	add	ebx, -0x45
	cmp	ebx, 0x29
	ja	.label_271
	bt	rdx, rbx
	jae	.label_271
	movzx	ebx, byte ptr [rdi + rbp + 2]
	inc	rbp
	test	bl, bl
	jne	.label_278
	test	rbp, rbp
	jne	.label_280
	jmp	.label_271
.label_290:
	mov	al, 1
	nop	word ptr cs:[rax + rax]
.label_280:
	movsx	edi, byte ptr [rsi]
	test	edi, edi
	je	.label_285
	inc	rsi
	cmp	edi, 0x6e
	je	.label_287
	cmp	edi, 0x65
	je	.label_290
	cmp	edi, 0x45
	jne	.label_280
	xor	eax, eax
	jmp	.label_280
.label_287:
	xor	r15d, r15d
	jmp	.label_280
	.section	.text
	.align	16
	#Procedure 0x403c52
	.globl sub_403c52
	.type sub_403c52, @function
sub_403c52:

	nop	word ptr cs:[rax + rax]
.label_285:
	lea	r12d, [rcx - 1]
	add	r13, 8
	cmp	ecx, 1
	mov	ecx, r12d
	jg	.label_292
	jmp	.label_299
.label_317:
	xor	eax, eax
	jmp	.label_299
.label_271:
	mov	r12d, ecx
.label_299:
	test	r14, r14
	jne	.label_301
	and	al, 1
	jne	.label_301
	test	r12d, r12d
	jle	.label_302
	inc	r12d
	jmp	.label_306
	.section	.text
	.align	16
	#Procedure 0x403c94
	.globl sub_403c94
	.type sub_403c94, @function
sub_403c94:

	nop	word ptr cs:[rax + rax]
.label_324:
	mov	rdi, qword ptr [rip + stdout]
	mov	rax, qword ptr [rdi + 0x28]
	cmp	rax, qword ptr [rdi + 0x30]
	jae	.label_311
	lea	rcx, [rax + 1]
	mov	qword ptr [rdi + 0x28], rcx
	mov	byte ptr [rax], 0x20
.label_321:
	add	r13, 8
	dec	r12d
	cmp	r12d, 1
	jg	.label_306
	jmp	.label_302
.label_311:
	mov	esi, 0x20
	call	__overflow
	jmp	.label_321
	.section	.text
	.align	16
	#Procedure 0x403cda
	.globl sub_403cda
	.type sub_403cda, @function
sub_403cda:

	nop	word ptr [rax + rax]
.label_306:
	mov	rdi, qword ptr [r13]
	mov	rsi, qword ptr [rip + stdout]
	call	fputs_unlocked
	cmp	r12d, 2
	jne	.label_324
	jmp	.label_302
.label_301:
	test	r12d, r12d
	jle	.label_302
	mov	dword ptr [rsp + 0x14], r15d
	jmp	.label_274
	.section	.text
	.align	16
	#Procedure 0x403d0b
	.globl sub_403d0b
	.type sub_403d0b, @function
sub_403d0b:

	nop	dword ptr [rax + rax]
.label_282:
	lea	rcx, [rax + 1]
	mov	qword ptr [rdi + 0x28], rcx
	mov	byte ptr [rax], 0x20
.label_274:
	mov	rbx, qword ptr [r13]
	jmp	.label_279
	.section	.text
	.align	16
	#Procedure 0x403d21
	.globl sub_403d21
	.type sub_403d21, @function
sub_403d21:

	nop	word ptr cs:[rax + rax]
.label_291:
	lea	rdx, [rcx + 1]
	mov	qword ptr [rdi + 0x28], rdx
	mov	byte ptr [rcx], al
	mov	rbx, rbp
.label_279:
	lea	rbp, [rbx + 1]
	mov	al, byte ptr [rbx]
	cmp	al, 0x5c
	je	.label_289
	test	al, al
	jne	.label_273
	jmp	.label_293
	.section	.text
	.align	16
	#Procedure 0x403d54
	.globl sub_403d54
	.type sub_403d54, @function
sub_403d54:

	nop	word ptr cs:[rax + rax]
.label_289:
	mov	r14b, byte ptr [rbp]
	mov	al, 0x5c
	test	r14b, r14b
	je	.label_273
	lea	rbp, [rbx + 2]
	mov	ecx, r14d
	add	cl, 0xd0
	movzx	ecx, cl
	cmp	cl, 0x48
	ja	.label_308
	jmp	qword ptr [(rcx * 8) + label_304]
.label_366:
	mov	r14b, byte ptr [rbp]
	mov	eax, r14d
	and	al, 0xf8
	cmp	al, 0x30
	jne	.label_305
	add	rbx, 3
	mov	rbp, rbx
.label_367:
	mov	al, r14b
	add	al, 0xd0
	movzx	ecx, byte ptr [rbp]
	mov	edx, ecx
	and	dl, 0xf8
	cmp	dl, 0x30
	jne	.label_310
	shl	al, 3
	add	cl, al
	mov	al, cl
	add	al, 0xd0
	movzx	ecx, byte ptr [rbp + 1]
	inc	rbp
.label_310:
	mov	edx, ecx
	and	dl, 0xf8
	cmp	dl, 0x30
	jne	.label_273
	shl	al, 3
	inc	rbp
	add	cl, al
	add	cl, 0xd0
	mov	al, cl
	jmp	.label_273
.label_368:
	mov	al, 7
	jmp	.label_273
.label_369:
	mov	al, 8
	jmp	.label_273
.label_370:
	mov	al, 0x1b
	jmp	.label_273
.label_371:
	mov	al, 0xc
	jmp	.label_273
.label_372:
	mov	al, 0xa
	jmp	.label_273
.label_373:
	mov	al, 0xd
	jmp	.label_273
.label_374:
	mov	al, 9
	jmp	.label_273
.label_375:
	mov	al, 0xb
	jmp	.label_273
.label_376:
	movzx	r15d, byte ptr [rbp]
	call	__ctype_b_loc
	mov	rax, qword ptr [rax]
	test	byte ptr [rax + r15*2 + 1], 0x10
	jne	.label_283
	mov	r14b, 0x78
	mov	eax, 0x11
	mov	r15d, dword ptr [rsp + 0x14]
	jmp	.label_288
.label_305:
	xor	eax, eax
	jmp	.label_273
.label_283:
	lea	rbp, [rbx + 3]
	mov	ecx, r15d
	add	cl, 0xbf
	movzx	ecx, cl
	cmp	cl, 0x25
	ja	.label_320
	mov	r14d, 0xa
	jmp	qword ptr [(rcx * 8) + label_296]
.label_422:
	mov	r14d, 0xb
	jmp	.label_297
.label_423:
	mov	r14d, 0xc
	jmp	.label_297
.label_424:
	mov	r14d, 0xd
	jmp	.label_297
.label_425:
	mov	r14d, 0xe
	jmp	.label_297
.label_426:
	mov	r14d, 0xf
	jmp	.label_297
.label_320:
	add	r15d, -0x30
	mov	r14d, r15d
.label_297:
	movzx	ecx, byte ptr [rbp]
	test	byte ptr [rax + rcx*2 + 1], 0x10
	jne	.label_313
	mov	r15d, dword ptr [rsp + 0x14]
	jmp	.label_314
.label_313:
	shl	r14d, 4
	mov	eax, ecx
	add	al, 0xbf
	movzx	edx, al
	cmp	dl, 0x25
	mov	r15d, dword ptr [rsp + 0x14]
	ja	.label_316
	mov	eax, 0xa
	jmp	qword ptr [(rdx * 8) + label_319]
.label_352:
	mov	eax, 0xb
	jmp	.label_281
.label_353:
	mov	eax, 0xc
	jmp	.label_281
.label_354:
	mov	eax, 0xd
	jmp	.label_281
.label_355:
	mov	eax, 0xe
	jmp	.label_281
.label_356:
	mov	eax, 0xf
	jmp	.label_281
.label_316:
	add	ecx, -0x30
	mov	eax, ecx
.label_281:
	add	rbx, 4
	add	r14d, eax
	mov	rbp, rbx
.label_314:
	xor	eax, eax
.label_288:
	mov	ecx, eax
	and	cl, 0x1f
	je	.label_272
	cmp	cl, 0x11
	jne	.label_276
.label_308:
	mov	rdi, qword ptr [rip + stdout]
	mov	rax, qword ptr [rdi + 0x28]
	cmp	rax, qword ptr [rdi + 0x30]
	jae	.label_298
	lea	rcx, [rax + 1]
	mov	qword ptr [rdi + 0x28], rcx
	mov	byte ptr [rax], 0x5c
.label_272:
	mov	al, r14b
	nop	word ptr cs:[rax + rax]
.label_273:
	mov	rdi, qword ptr [rip + stdout]
	mov	rcx, qword ptr [rdi + 0x28]
	cmp	rcx, qword ptr [rdi + 0x30]
	jb	.label_291
	movzx	esi, al
	call	__overflow
	mov	rbx, rbp
	jmp	.label_279
.label_298:
	mov	esi, 0x5c
	call	__overflow
	jmp	.label_272
	nop	word ptr cs:[rax + rax]
.label_293:
	cmp	r12d, 2
	jl	.label_302
	dec	r12d
	add	r13, 8
	mov	rdi, qword ptr [rip + stdout]
	mov	rax, qword ptr [rdi + 0x28]
	cmp	rax, qword ptr [rdi + 0x30]
	jb	.label_282
	mov	esi, 0x20
	call	__overflow
	jmp	.label_274
.label_276:
	test	eax, eax
	je	.label_274
	jmp	.label_284
.label_302:
	test	r15b, 1
	je	.label_284
	mov	rdi, qword ptr [rip + stdout]
	mov	rax, qword ptr [rdi + 0x28]
	cmp	rax, qword ptr [rdi + 0x30]
	jae	.label_318
	lea	rcx, [rax + 1]
	mov	qword ptr [rdi + 0x28], rcx
	mov	byte ptr [rax], 0xa
	jmp	.label_284
.label_315:
	mov	rdi, qword ptr [rip + stdout]
	mov	rcx, qword ptr [rip + Version]
	mov	qword ptr [rsp], 0
	mov	esi, OFFSET FLAT:label_90
	mov	edx, OFFSET FLAT:label_65
	mov	r8d, OFFSET FLAT:label_322
	mov	r9d, OFFSET FLAT:label_323
	xor	eax, eax
	call	version_etc
.label_284:
	xor	eax, eax
	add	rsp, 0x18
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_318:
	mov	esi, 0xa
	call	__overflow
	jmp	.label_284
.label_307:
	xor	edi, edi
	call	usage
	.section	.text
	.align	16
	#Procedure 0x404036
	.globl sub_404036
	.type sub_404036, @function
sub_404036:

	nop	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404040
	.globl close_stdout_set_ignore_EPIPE
	.type close_stdout_set_ignore_EPIPE, @function
close_stdout_set_ignore_EPIPE:

	mov	byte ptr [rip + ignore_EPIPE],  dil
	ret	
	.section	.text
	.align	16
	#Procedure 0x404048
	.globl sub_404048
	.type sub_404048, @function
sub_404048:

	nop	dword ptr [rax + rax]
.label_325:
	call	abort
	.section	.text
	.align	16
	#Procedure 0x404055
	.globl quotearg_custom
	.type quotearg_custom, @function
quotearg_custom:

	sub	rsp, 0x38
	mov	rax, rdx
	mov	rcx, qword ptr [rip + label_25]
	mov	qword ptr [rsp + 0x30], rcx
	movups	xmm0, xmmword ptr [rip + label_26]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0, xmmword ptr [rip + label_27]
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
	.section	.text
	.align	16
	#Procedure 0x4040c0
	.globl quotearg_char
	.type quotearg_char, @function
quotearg_char:

	sub	rsp, 0x38
	mov	ecx, esi
	mov	rax, rdi
	mov	rdx, qword ptr [rip + label_25]
	mov	qword ptr [rsp + 0x30], rdx
	movups	xmm0, xmmword ptr [rip + label_26]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0, xmmword ptr [rip + label_27]
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
	#Procedure 0x40412f
	.globl sub_40412f
	.type sub_40412f, @function
sub_40412f:

	nop	
	.section	.text
	.align	16
	#Procedure 0x404130
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
	je	.label_327
	test	r15, r15
	je	.label_326
.label_327:
	mov	rdi, r15
	mov	rsi, r14
	mov	rdx, rbx
	call	memcpy
	mov	rax, r15
	pop	rbx
	pop	r14
	pop	r15
	ret	
.label_326:
	call	xalloc_die
	.section	.text
	.align	16
	#Procedure 0x404172
	.globl sub_404172
	.type sub_404172, @function
sub_404172:

	nop	word ptr cs:[rax + rax]
.label_328:
	call	xalloc_die
	.section	.text
	.align	16
	#Procedure 0x404185
	.globl sub_404185
	.type sub_404185, @function
sub_404185:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40418b
	.globl xcharalloc
	.type xcharalloc, @function
xcharalloc:

	push	rbx
	mov	rbx, rdi
	call	malloc
	test	rbx, rbx
	je	.label_329
	test	rax, rax
	je	.label_328
.label_329:
	pop	rbx
	ret	
	.section	.text
	.align	16
	#Procedure 0x4041a0
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
	#Procedure 0x4041b3
	.globl sub_4041b3
	.type sub_4041b3, @function
sub_4041b3:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4041c0

	.globl version_etc_va
	.type version_etc_va, @function
version_etc_va:
	movsxd	r10, dword ptr [r8]
	cmp	r10, 0x28
	ja	.label_330
	mov	r9, r10
	add	r9, qword ptr [r8 + 0x10]
	lea	r10d, [r10 + 8]
	mov	dword ptr [r8], r10d
	jmp	.label_332
.label_330:
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
.label_332:
	sub	rsp, 0x58
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp], rax
	xor	r9d, r9d
	test	rax, rax
	je	.label_333
	cmp	r10d, 0x29
	jae	.label_342
	movsxd	r9, r10d
	add	r9, qword ptr [r8 + 0x10]
	add	r10d, 8
	mov	dword ptr [r8], r10d
	jmp	.label_331
.label_342:
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
.label_331:
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp + 8], rax
	mov	r9d, 1
	test	rax, rax
	je	.label_333
	cmp	r10d, 0x29
	jae	.label_340
	movsxd	r9, r10d
	add	r9, qword ptr [r8 + 0x10]
	add	r10d, 8
	mov	dword ptr [r8], r10d
	jmp	.label_341
.label_340:
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
.label_341:
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp + 0x10], rax
	mov	r9d, 2
	test	rax, rax
	je	.label_333
	cmp	r10d, 0x29
	jae	.label_338
	movsxd	r9, r10d
	add	r9, qword ptr [r8 + 0x10]
	add	r10d, 8
	mov	dword ptr [r8], r10d
	jmp	.label_339
.label_338:
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
.label_339:
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp + 0x18], rax
	mov	r9d, 3
	test	rax, rax
	je	.label_333
	cmp	r10d, 0x29
	jae	.label_336
	movsxd	r9, r10d
	add	r9, qword ptr [r8 + 0x10]
	add	r10d, 8
	mov	dword ptr [r8], r10d
	jmp	.label_337
.label_336:
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
.label_337:
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp + 0x20], rax
	mov	r9d, 4
	test	rax, rax
	je	.label_333
	cmp	r10d, 0x29
	jae	.label_334
	movsxd	r9, r10d
	add	r9, qword ptr [r8 + 0x10]
	add	r10d, 8
	mov	dword ptr [r8], r10d
	jmp	.label_335
.label_334:
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
.label_335:
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp + 0x28], rax
	mov	r9d, 5
	test	rax, rax
	je	.label_333
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp + 0x30], rax
	mov	r9d, 6
	test	rax, rax
	je	.label_333
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp + 0x38], rax
	mov	r9d, 7
	test	rax, rax
	je	.label_333
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp + 0x40], rax
	mov	r9d, 8
	test	rax, rax
	je	.label_333
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp + 0x48], rax
	cmp	rax, 1
	mov	r9d, 9
	sbb	r9, -1
.label_333:
	lea	r8, [rsp]
	call	version_etc_arn
	add	rsp, 0x58
	ret	
	.section	.text
	.align	16
	#Procedure 0x4043a2
	.globl sub_4043a2
	.type sub_4043a2, @function
sub_4043a2:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4043b0

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
	je	.label_343
	cmp	r15, -2
	jb	.label_343
	xor	edi, edi
	call	hard_locale
	test	al, al
	jne	.label_343
	movzx	eax, byte ptr [r14]
	mov	dword ptr [rbx], eax
	mov	r15d, 1
.label_343:
	mov	rax, r15
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	ret	
	.section	.text
	.align	16
	#Procedure 0x404406
	.globl sub_404406
	.type sub_404406, @function
sub_404406:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404475
	.globl sub_404475
	.type sub_404475, @function
sub_404475:

	nop	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404482
	.globl sub_404482
	.type sub_404482, @function
sub_404482:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4044a6
	.globl sub_4044a6
	.type sub_4044a6, @function
sub_4044a6:

	nop	word ptr cs:[rax + rax]
