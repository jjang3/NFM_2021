	.section	.text
	.align	16
	#Procedure 0x401719
	.globl sub_401719
	.type sub_401719, @function
sub_401719:

	hlt	
	.section	.text
	.align	16
	#Procedure 0x40171a
	.globl sub_40171a
	.type sub_40171a, @function
sub_40171a:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x401752
	.globl sub_401752
	.type sub_401752, @function
sub_401752:

	nop	dword ptr [rax]
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40179a
	.globl sub_40179a
	.type sub_40179a, @function
sub_40179a:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4017bc
	.globl sub_4017bc
	.type sub_4017bc, @function
sub_4017bc:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x4017cd
	.globl sub_4017cd
	.type sub_4017cd, @function
sub_4017cd:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x4017e6
	.globl sub_4017e6
	.type sub_4017e6, @function
sub_4017e6:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4017f0
	.globl readlinebuffer
	.type readlinebuffer, @function
readlinebuffer:

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
	jne	.label_12
	mov	r15, qword ptr [r14 + 0x10]
	mov	r12, qword ptr [r14]
	add	r12, r15
	mov	rbx, r15
	nop	dword ptr [rax + rax]
.label_14:
	mov	rax, qword ptr [r13 + 8]
	cmp	rax, qword ptr [r13 + 0x10]
	jae	.label_9
	lea	rcx, [rax + 1]
	mov	qword ptr [r13 + 8], rcx
	movzx	ebp, byte ptr [rax]
.label_11:
	cmp	rbx, r12
	jne	.label_13
	mov	rbx, qword ptr [r14]
	mov	rdi, r15
	mov	rsi, r14
	call	x2realloc
	mov	r15, rax
	add	rbx, r15
	mov	qword ptr [r14 + 0x10], r15
	mov	r12, r15
	add	r12, qword ptr [r14]
.label_13:
	mov	byte ptr [rbx], bpl
	inc	rbx
	cmp	ebp, 0xa
	jne	.label_14
	jmp	.label_10
.label_9:
	mov	rdi, r13
	call	__uflow
	mov	ebp, eax
	cmp	ebp, -1
	jne	.label_11
	cmp	rbx, r15
	mov	eax, 0
	je	.label_12
	test	byte ptr [r13], 0x20
	jne	.label_12
	mov	ebp, 0xa
	cmp	byte ptr [rbx - 1], 0xa
	jne	.label_11
.label_10:
	sub	rbx, r15
	mov	qword ptr [r14 + 8], rbx
	mov	rax, r14
.label_12:
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
	#Procedure 0x4018a9
	.globl sub_4018a9
	.type sub_4018a9, @function
sub_4018a9:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x4018b0
	.globl close_stdout_set_file_name
	.type close_stdout_set_file_name, @function
close_stdout_set_file_name:

	mov	qword ptr [rip + file_name],  rdi
	ret	
	.section	.text
	.align	16
	#Procedure 0x4018b8
	.globl sub_4018b8
	.type sub_4018b8, @function
sub_4018b8:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4018c0
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
	#Procedure 0x401981
	.globl sub_401981
	.type sub_401981, @function
sub_401981:

	nop	word ptr cs:[rax + rax]
.label_17:
	mov	rdi, qword ptr [rip + empty_filler]
	test	rdi, rdi
	je	.label_15
	mov	rsi, qword ptr [rip + stdout]
	jmp	fputs_unlocked
	.section	.text
	.align	16
	#Procedure 0x4019a8

	.globl prfield
	.type prfield, @function
prfield:
	cmp	qword ptr [rsi + 0x18], rdi
	jbe	.label_16
	mov	rax, qword ptr [rsi + 0x28]
	shl	rdi, 4
	mov	rdx, qword ptr [rax + rdi + 8]
	test	rdx, rdx
	je	.label_17
	mov	rdi, qword ptr [rax + rdi]
	mov	rcx, qword ptr [rip + stdout]
	mov	esi, 1
	jmp	fwrite_unlocked
.label_15:
	ret	
	.section	.text
	.align	16
	#Procedure 0x4019d6
	.globl sub_4019d6
	.type sub_4019d6, @function
sub_4019d6:

	nop	
.label_16:
	mov	rdi, qword ptr [rip + empty_filler]
	test	rdi, rdi
	je	.label_15
	mov	rsi, qword ptr [rip + stdout]
	jmp	fputs_unlocked
.label_19:
	pop	rbx
	ret	
	.section	.text
	.align	16
	#Procedure 0x4019f2
	.globl sub_4019f2
	.type sub_4019f2, @function
sub_4019f2:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4019fa

	.globl free_spareline
	.type free_spareline, @function
free_spareline:
	push	rbx
	mov	rbx, qword ptr [rip + spareline]
	test	rbx, rbx
	je	.label_20
	mov	rdi, qword ptr [rbx + 0x28]
	call	free
	mov	qword ptr [rbx + 0x28], 0
	mov	rdi, qword ptr [rbx + 0x10]
	call	free
	mov	qword ptr [rbx + 0x10], 0
	mov	rdi, qword ptr [rip + spareline]
	call	free
.label_20:
	mov	rbx, qword ptr [rip + label_18]
	test	rbx, rbx
	je	.label_19
	mov	rdi, qword ptr [rbx + 0x28]
	call	free
	mov	qword ptr [rbx + 0x28], 0
	mov	rdi, qword ptr [rbx + 0x10]
	call	free
	mov	qword ptr [rbx + 0x10], 0
	mov	rdi, qword ptr [rip + label_18]
	pop	rbx
	jmp	free
	.section	.text
	.align	16
	#Procedure 0x401a70
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
	#Procedure 0x401aa6
	.globl sub_401aa6
	.type sub_401aa6, @function
sub_401aa6:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x401ab0
	.globl quotearg_free
	.type quotearg_free, @function
quotearg_free:

	push	r15
	push	r14
	push	rbx
	mov	r14, qword ptr [rip + slotvec]
	cmp	dword ptr [rip + nslots],  2
	jl	.label_21
	lea	r15, [r14 + 0x18]
	mov	ebx, 1
	nop	
.label_23:
	mov	rdi, qword ptr [r15]
	call	free
	inc	rbx
	movsxd	rax, dword ptr [rip + nslots]
	add	r15, 0x10
	cmp	rbx, rax
	jl	.label_23
.label_21:
	mov	rdi, qword ptr [r14 + 8]
	mov	eax, OFFSET FLAT:slot0
	cmp	rdi, rax
	je	.label_24
	call	free
	mov	qword ptr [rip + slotvec0],  0x100
	mov	qword ptr [rip + label_25], OFFSET FLAT:slot0
.label_24:
	mov	eax, OFFSET FLAT:slotvec0
	cmp	r14, rax
	je	.label_22
	mov	rdi, r14
	call	free
	mov	qword ptr [rip + slotvec], OFFSET FLAT:slotvec0
.label_22:
	mov	dword ptr [rip + nslots],  1
	pop	rbx
	pop	r14
	pop	r15
	ret	
	.section	.text
	.align	16
	#Procedure 0x401b41
	.globl sub_401b41
	.type sub_401b41, @function
sub_401b41:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x401b50

	.globl prfields
	.type prfields, @function
prfields:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	push	rax
	mov	r14, rdx
	mov	rbx, rsi
	mov	r15, rdi
	mov	al, byte ptr [rip + autoformat]
	test	al, al
	jne	.label_31
	mov	r14, qword ptr [r15 + 0x18]
.label_31:
	mov	eax, dword ptr [rip + tab]
	test	eax, eax
	mov	r13b, 0x20
	js	.label_32
	mov	r13d, eax
.label_32:
	test	rbx, rbx
	je	.label_27
	test	r14, r14
	je	.label_27
	movzx	r12d, r13b
	xor	ebp, ebp
	jmp	.label_28
	.section	.text
	.align	16
	#Procedure 0x401b94
	.globl sub_401b94
	.type sub_401b94, @function
sub_401b94:

	nop	word ptr cs:[rax + rax]
.label_28:
	mov	rdi, qword ptr [rip + stdout]
	mov	rax, qword ptr [rdi + 0x28]
	cmp	rax, qword ptr [rdi + 0x30]
	jae	.label_26
	lea	rcx, [rax + 1]
	mov	qword ptr [rdi + 0x28], rcx
	mov	byte ptr [rax], r13b
.label_34:
	mov	rdi, rbp
	mov	rsi, r15
	call	prfield
	inc	rbp
	cmp	rbp, rbx
	jb	.label_33
.label_27:
	inc	rbx
	cmp	rbx, r14
	jae	.label_30
	movsx	ebp, r13b
	nop	dword ptr [rax + rax]
.label_29:
	mov	edi, ebp
	call	putchar_unlocked
	mov	rdi, rbx
	mov	rsi, r15
	call	prfield
	inc	rbx
	cmp	r14, rbx
	jne	.label_29
.label_30:
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
	#Procedure 0x401c09
	.globl sub_401c09
	.type sub_401c09, @function
sub_401c09:

	nop	dword ptr [rax]
	nop	dword ptr [rax]
.label_33:
	cmp	rbp, r14
	jb	.label_28
	jmp	.label_27
.label_26:
	mov	esi, r12d
	call	__overflow
	jmp	.label_34
	.section	.text
	.align	16
	#Procedure 0x401c21
	.globl sub_401c21
	.type sub_401c21, @function
sub_401c21:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x401c30
	.globl quotearg_n
	.type quotearg_n, @function
quotearg_n:

	mov	rdx, -1
	mov	ecx, OFFSET FLAT:default_quoting_options
	jmp	quotearg_n_options
	.section	.text
	.align	16
	#Procedure 0x401c3e
	.globl sub_401c3e
	.type sub_401c3e, @function
sub_401c3e:

	nop	
	.section	.text
	.align	16
	#Procedure 0x401c40

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
	js	.label_35
	mov	eax, dword ptr [r13]
	mov	rbp, qword ptr [rip + slotvec]
	cmp	dword ptr [rip + nslots],  r12d
	mov	qword ptr [rsp + 0x18], r13
	mov	dword ptr [rsp], eax
	mov	qword ptr [rsp + 0x10], rbx
	mov	qword ptr [rsp + 8], r15
	jg	.label_38
	cmp	r12d, 0x7fffffff
	je	.label_40
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
	jne	.label_36
	movups	xmm0, xmmword ptr [rip + slotvec0]
	movups	xmmword ptr [r14], xmm0
.label_36:
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
.label_38:
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
	jbe	.label_41
	mov	rax, qword ptr [rsp + 0x18]
	mov	ebp, dword ptr [rsp]
	jmp	.label_37
.label_41:
	lea	rax, [rbp + r13]
	lea	r12, [rbp + r13 + 8]
	inc	r15
	mov	qword ptr [rax], r15
	mov	eax, OFFSET FLAT:slot0
	cmp	r14, rax
	mov	ebp, dword ptr [rsp]
	je	.label_39
	mov	rdi, r14
	call	free
.label_39:
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
.label_37:
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
.label_35:
	call	abort
.label_40:
	call	xalloc_die
	.section	.text
	.align	16
	#Procedure 0x401dfd
	.globl sub_401dfd
	.type sub_401dfd, @function
sub_401dfd:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x401e00
	.globl quotearg_custom_mem
	.type quotearg_custom_mem, @function
quotearg_custom_mem:

	sub	rsp, 0x38
	mov	rax, qword ptr [rip + label_42]
	mov	qword ptr [rsp + 0x30], rax
	movups	xmm0, xmmword ptr [rip + label_43]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0, xmmword ptr [rip + label_44]
	movaps	xmmword ptr [rsp + 0x10], xmm0
	movups	xmm0, xmmword ptr [rip + default_quoting_options]
	movaps	xmmword ptr [rsp], xmm0
	mov	dword ptr [rsp], 0xa
	test	rdi, rdi
	je	.label_45
	test	rsi, rsi
	je	.label_45
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
.label_45:
	call	abort
	.section	.text
	.align	16
	#Procedure 0x401e6c
	.globl sub_401e6c
	.type sub_401e6c, @function
sub_401e6c:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x401e70

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
	#Procedure 0x401e87
	.globl sub_401e87
	.type sub_401e87, @function
sub_401e87:

	nop	word ptr [rax + rax]
.label_46:
	call	abort
	.section	.text
	.align	16
	#Procedure 0x401e95
	.globl sub_401e95
	.type sub_401e95, @function
sub_401e95:

	nop	
	.section	.text
	.align	16
	#Procedure 0x401e97
	.globl quotearg_n_custom
	.type quotearg_n_custom, @function
quotearg_n_custom:

	sub	rsp, 0x38
	mov	rax, qword ptr [rip + label_42]
	mov	qword ptr [rsp + 0x30], rax
	movups	xmm0, xmmword ptr [rip + label_43]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0, xmmword ptr [rip + label_44]
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
	mov	rdx, -1
	mov	rsi, rcx
	mov	rcx, rax
	call	quotearg_n_options
	add	rsp, 0x38
	ret	
	.section	.text
	.align	16
	#Procedure 0x401f00
	.globl quote_n
	.type quote_n, @function
quote_n:

	mov	rdx, -1
	mov	ecx, OFFSET FLAT:quote_quoting_options
	jmp	quotearg_n_options
	.section	.text
	.align	16
	#Procedure 0x401f11
	.globl sub_401f11
	.type sub_401f11, @function
sub_401f11:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x401f20
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
	#Procedure 0x401f39
	.globl sub_401f39
	.type sub_401f39, @function
sub_401f39:

	nop	dword ptr [rax]
.label_48:
	mov	rdi, rbx
	call	fileno
	mov	edi, eax
	mov	rsi, rbp
	mov	edx, r14d
	call	lseek
	mov	rcx, rax
	mov	eax, 0xffffffff
	cmp	rcx, -1
	je	.label_47
	and	byte ptr [rbx], 0xef
	mov	qword ptr [rbx + 0x90], rcx
	xor	eax, eax
.label_47:
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x401f74
	.globl sub_401f74
	.type sub_401f74, @function
sub_401f74:

	nop	
	.section	.text
	.align	16
	#Procedure 0x401f76

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
	jne	.label_49
	mov	rax, qword ptr [rbx + 0x28]
	cmp	rax, qword ptr [rbx + 0x20]
	jne	.label_49
	cmp	qword ptr [rbx + 0x48], 0
	je	.label_48
.label_49:
	mov	rdi, rbx
	mov	rsi, rbp
	mov	edx, r14d
	pop	rbx
	pop	r14
	pop	rbp
	jmp	fseeko
.label_55:
	mov	rcx, qword ptr [rip + stderr]
	mov	edi, OFFSET FLAT:label_53
	mov	esi, 0x37
	mov	edx, 1
	call	fwrite
	call	abort
	.section	.text
	.align	16
	#Procedure 0x401fd0
	.globl sub_401fd0
	.type sub_401fd0, @function
sub_401fd0:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x401fdf

	.globl set_program_name
	.type set_program_name, @function
set_program_name:
	push	r14
	push	rbx
	push	rax
	mov	rbx, rdi
	test	rbx, rbx
	je	.label_55
	mov	esi, 0x2f
	mov	rdi, rbx
	call	strrchr
	test	rax, rax
	lea	r14, [rax + 1]
	cmove	r14, rbx
	mov	rax, r14
	sub	rax, rbx
	cmp	rax, 7
	jl	.label_50
	lea	rdi, [r14 - 7]
	mov	esi, OFFSET FLAT:label_52
	mov	edx, 7
	call	strncmp
	test	eax, eax
	jne	.label_50
	mov	esi, OFFSET FLAT:label_51
	mov	edx, 3
	mov	rdi, r14
	call	strncmp
	test	eax, eax
	jne	.label_54
	add	r14, 3
	mov	qword ptr [rip + __progname],  r14
.label_54:
	mov	rbx, r14
.label_50:
	mov	qword ptr [rip + program_name],  rbx
	mov	qword ptr [rip + __progname_full],  rbx
	add	rsp, 8
	pop	rbx
	pop	r14
	ret	
	.section	.text
	.align	16
	#Procedure 0x402060
	.globl xcharalloc
	.type xcharalloc, @function
xcharalloc:

	push	rbx
	mov	rbx, rdi
	call	malloc
	test	rbx, rbx
	je	.label_56
	test	rax, rax
	je	.label_57
.label_56:
	pop	rbx
	ret	
.label_57:
	call	xalloc_die
	.section	.text
	.align	16
	#Procedure 0x40207a
	.globl sub_40207a
	.type sub_40207a, @function
sub_40207a:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x402080

	.globl hard_locale
	.type hard_locale, @function
hard_locale:
	push	rbx
	xor	esi, esi
	call	setlocale
	mov	bl, 1
	test	rax, rax
	je	.label_59
	cmp	byte ptr [rax], 0x43
	jne	.label_61
	cmp	byte ptr [rax + 1], 0
	je	.label_58
.label_61:
	mov	esi, OFFSET FLAT:label_60
	mov	rdi, rax
	call	strcmp
	test	eax, eax
	jne	.label_59
.label_58:
	xor	ebx, ebx
.label_59:
	mov	eax, ebx
	pop	rbx
	ret	
	.section	.text
	.align	16
	#Procedure 0x4020b1
	.globl sub_4020b1
	.type sub_4020b1, @function
sub_4020b1:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4020c0

	.globl xmalloc
	.type xmalloc, @function
xmalloc:
	push	rbx
	mov	rbx, rdi
	call	malloc
	test	rbx, rbx
	je	.label_62
	test	rax, rax
	je	.label_63
.label_62:
	pop	rbx
	ret	
.label_63:
	call	xalloc_die
	.section	.text
	.align	16
	#Procedure 0x4020da
	.globl sub_4020da
	.type sub_4020da, @function
sub_4020da:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4020e0

	.globl keycmp
	.type keycmp, @function
keycmp:
	push	r14
	push	rbx
	push	rax
	mov	rax, rdi
	xor	edi, edi
	cmp	qword ptr [rax + 0x18], rdx
	mov	r14d, 0
	jbe	.label_64
	mov	rax, qword ptr [rax + 0x28]
	shl	rdx, 4
	mov	rdi, qword ptr [rax + rdx]
	mov	r14, qword ptr [rax + rdx + 8]
.label_64:
	xor	r8d, r8d
	cmp	qword ptr [rsi + 0x18], rcx
	mov	ebx, 0
	jbe	.label_66
	mov	rax, qword ptr [rsi + 0x28]
	shl	rcx, 4
	mov	r8, qword ptr [rax + rcx]
	mov	rbx, qword ptr [rax + rcx + 8]
.label_66:
	test	r14, r14
	je	.label_65
	mov	eax, 1
	test	rbx, rbx
	je	.label_67
	cmp	byte ptr [rip + ignore_case],  1
	jne	.label_69
	cmp	r14, rbx
	mov	rdx, rbx
	cmovb	rdx, r14
	mov	rsi, r8
	call	memcasecmp
	jmp	.label_70
.label_69:
	cmp	byte ptr [rip + hard_LC_COLLATE],  0
	je	.label_68
	mov	rsi, r14
	mov	rdx, r8
	mov	rcx, rbx
	add	rsp, 8
	pop	rbx
	pop	r14
	jmp	xmemcoll
.label_65:
	neg	rbx
	sbb	eax, eax
	jmp	.label_67
.label_68:
	cmp	r14, rbx
	mov	rdx, rbx
	cmovb	rdx, r14
	mov	rsi, r8
	call	memcmp
.label_70:
	test	eax, eax
	jne	.label_67
	xor	ecx, ecx
	cmp	r14, rbx
	setne	cl
	mov	eax, 0xffffffff
	cmovae	eax, ecx
.label_67:
	add	rsp, 8
	pop	rbx
	pop	r14
	ret	
	.section	.text
	.align	16
	#Procedure 0x4021a4
	.globl sub_4021a4
	.type sub_4021a4, @function
sub_4021a4:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4021b0

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
	#Procedure 0x4021c9
	.globl sub_4021c9
	.type sub_4021c9, @function
sub_4021c9:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x4021d0

	.globl memcoll0
	.type memcoll0, @function
memcoll0:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	push	rax
	mov	r14, rcx
	mov	r12, rdx
	mov	r15, rsi
	mov	rbx, rdi
	cmp	r15, r14
	jne	.label_73
	mov	rdi, rbx
	mov	rsi, r12
	mov	rdx, r15
	call	memcmp
	test	eax, eax
	je	.label_74
.label_73:
	call	__errno_location
	mov	r13, rax
	nop	word ptr cs:[rax + rax]
.label_72:
	mov	dword ptr [r13], 0
	mov	rdi, rbx
	mov	rsi, r12
	call	strcoll
	test	eax, eax
	jne	.label_71
	mov	rdi, rbx
	call	strlen
	mov	rbp, rax
	inc	rbp
	mov	rdi, r12
	call	strlen
	inc	rax
	sub	r14, rax
	sub	r15, rbp
	je	.label_75
	add	r12, rax
	add	rbx, rbp
	mov	eax, 1
	test	r14, r14
	jne	.label_72
	jmp	.label_71
.label_75:
	neg	r14
	sbb	eax, eax
	jmp	.label_71
.label_74:
	call	__errno_location
	mov	dword ptr [rax], 0
	xor	eax, eax
.label_71:
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
	#Procedure 0x40227d
	.globl sub_40227d
	.type sub_40227d, @function
sub_40227d:

	nop	dword ptr [rax]
.label_76:
	call	abort
	.section	.text
	.align	16
	#Procedure 0x402285
	.globl sub_402285
	.type sub_402285, @function
sub_402285:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x402290

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
	je	.label_76
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
	#Procedure 0x402320

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
	jmp	.label_86
	.section	.text
	.align	16
	#Procedure 0x4023cf
	.globl sub_4023cf
	.type sub_4023cf, @function
sub_4023cf:

	nop	
.label_83:
	cmp	r8d, 2
	setne	al
	cmp	byte ptr [rsp + 0xf], 0
	setne	dl
	mov	rsi, qword ptr [rsp + 0xa8]
	test	sil, 1
	mov	bl, byte ptr [rsp + 0x34]
	mov	rsi, qword ptr [rsp + 0xc0]
	je	.label_82
	or	al, dl
	jne	.label_82
	test	dil, 1
	jne	.label_78
	cmp	qword ptr [rsp + 0x68], 0
	je	.label_82
	test	rbp, rbp
	mov	r15d, r8d
	mov	al, bl
	mov	qword ptr [rsp + 0x48], rcx
	mov	r12d, esi
	mov	r13, qword ptr [rsp + 0x68]
	je	.label_86
	jmp	.label_82
.label_633:
	mov	r8d, 5
	test	r12b, 1
	jne	.label_93
	test	rbp, rbp
	je	.label_181
	mov	rax, qword ptr [rsp + 0x10]
	mov	byte ptr [rax], 0x22
.label_181:
	mov	r14d, 1
	jmp	.label_100
.label_634:
	mov	r13b, 1
	mov	r8d, 5
	xor	r14d, r14d
	mov	eax, OFFSET FLAT:label_103
	mov	qword ptr [rsp + 0x58], rax
	mov	eax, 1
	mov	qword ptr [rsp + 0x50], rax
	mov	sil, 1
	jmp	.label_104
.label_93:
	xor	r14d, r14d
.label_100:
	mov	eax, OFFSET FLAT:label_103
	mov	qword ptr [rsp + 0x58], rax
	mov	eax, 1
	mov	qword ptr [rsp + 0x50], rax
	mov	r13b, 1
	jmp	.label_118
	.section	.text
	.align	16
	#Procedure 0x40249f
	.globl sub_40249f
	.type sub_40249f, @function
sub_40249f:

	nop	
.label_86:
	mov	rbp, r13
	xor	r14d, r14d
	mov	ecx, r15d
	cmp	r15d, 0xa
	ja	.label_129
	mov	r8d, 7
	mov	r13b, 1
	xor	esi, esi
	mov	r10, qword ptr [rsp + 0x28]
	mov	r11, qword ptr [rsp + 0x48]
	jmp	qword ptr [(rcx * 8) + label_134]
.label_635:
	mov	r14d, edi
	mov	edi, OFFSET FLAT:label_140
	mov	esi, r15d
	mov	ebx, r9d
	call	gettext_quote
	mov	qword ptr [rsp + 0x80], rax
	mov	edi, OFFSET FLAT:label_167
	mov	esi, r15d
	call	gettext_quote
	mov	r9d, ebx
	mov	edi, r14d
	mov	qword ptr [rsp + 0x78], rax
.label_636:
	mov	byte ptr [rsp + 0x1e], dil
	mov	dword ptr [rsp + 0x60], r9d
	test	r12b, 1
	mov	r14d, 0
	mov	rcx, qword ptr [rsp + 0x80]
	jne	.label_150
	mov	al, byte ptr [rcx]
	test	al, al
	mov	r14d, 0
	je	.label_150
	xor	r14d, r14d
	nop	
.label_113:
	cmp	r14, rbp
	jae	.label_156
	mov	rdx, qword ptr [rsp + 0x10]
	mov	byte ptr [rdx + r14], al
.label_156:
	movzx	eax, byte ptr [rcx + r14 + 1]
	inc	r14
	test	al, al
	jne	.label_113
.label_150:
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
	jmp	.label_104
.label_628:
	xor	r8d, r8d
	xor	r14d, r14d
	mov	r13d, eax
	xor	esi, esi
	jmp	.label_104
.label_631:
	mov	al, 1
.label_629:
	mov	r12b, 1
.label_632:
	test	r12b, 1
	mov	cl, 1
	je	.label_111
	mov	ecx, eax
.label_111:
	mov	al, cl
.label_630:
	mov	r8d, 2
	test	r12b, 1
	jne	.label_183
	test	rbp, rbp
	je	.label_189
	mov	rcx, qword ptr [rsp + 0x10]
	mov	byte ptr [rcx], 0x27
.label_189:
	mov	r14d, 1
	jmp	.label_190
.label_183:
	xor	r14d, r14d
.label_190:
	mov	ecx, OFFSET FLAT:label_167
	mov	qword ptr [rsp + 0x58], rcx
	mov	ecx, 1
	mov	qword ptr [rsp + 0x50], rcx
	mov	r13d, eax
.label_118:
	mov	sil, r12b
.label_104:
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
	jmp	.label_197
	.section	.text
	.align	16
	#Procedure 0x402661
	.globl sub_402661
	.type sub_402661, @function
sub_402661:

	nop	word ptr cs:[rax + rax]
.label_97:
	inc	r12
.label_197:
	cmp	r11, -1
	je	.label_180
	cmp	r12, r11
	jne	.label_115
	jmp	.label_117
	.section	.text
	.align	16
	#Procedure 0x402683
	.globl sub_402683
	.type sub_402683, @function
sub_402683:

	nop	word ptr cs:[rax + rax]
.label_180:
	mov	rcx, -1
	cmp	byte ptr [r10 + r12], 0
	je	.label_123
.label_115:
	cmp	byte ptr [rsp + 0x37], 0
	je	.label_130
	mov	rax, qword ptr [rsp + 0x50]
	lea	rbx, [r12 + rax]
	cmp	rax, 2
	jb	.label_133
	cmp	r11, -1
	jne	.label_133
	mov	r15d, edi
	mov	rdi, r10
	mov	r13d, r9d
	call	strlen
	mov	r9d, r13d
	mov	r8, qword ptr [rsp + 0x38]
	mov	edi, r15d
	mov	r10, qword ptr [rsp + 0x28]
	mov	r11, rax
.label_133:
	cmp	rbx, r11
	jbe	.label_146
.label_130:
	xor	esi, esi
.label_164:
	movzx	r15d, byte ptr [r10 + r12]
	cmp	r15, 0x7e
	ja	.label_148
	xor	edx, edx
	mov	r13b, 1
	mov	cl, 0x6e
	mov	bl, 0x61
	xor	eax, eax
	jmp	qword ptr [(r15 * 8) + label_151]
.label_665:
	test	r12, r12
	jne	.label_96
	jmp	.label_88
	.section	.text
	.align	16
	#Procedure 0x402716
	.globl sub_402716
	.type sub_402716, @function
sub_402716:

	nop	word ptr cs:[rax + rax]
.label_146:
	mov	r13d, r9d
	mov	r15d, edi
	mov	rbx, r11
	lea	rdi, [r10 + r12]
	mov	rsi, qword ptr [rsp + 0x58]
	mov	rdx, qword ptr [rsp + 0x50]
	call	memcmp
	test	eax, eax
	sete	sil
	jne	.label_162
	cmp	byte ptr [rsp + 0xf], 0
	mov	r10, qword ptr [rsp + 0x28]
	mov	r11, rbx
	mov	edi, r15d
	mov	r8, qword ptr [rsp + 0x38]
	mov	r9d, r13d
	je	.label_164
	jmp	.label_91
.label_162:
	mov	r10, qword ptr [rsp + 0x28]
	mov	r11, rbx
	mov	edi, r15d
	mov	r8, qword ptr [rsp + 0x38]
	mov	r9d, r13d
	jmp	.label_164
.label_669:
	xor	eax, eax
	cmp	r11, -1
	je	.label_174
	test	r12, r12
	jne	.label_179
	cmp	r11, 1
	je	.label_88
	xor	r13d, r13d
	jmp	.label_80
.label_658:
	cmp	byte ptr [rsp + 0x1f], 0
	je	.label_185
	cmp	byte ptr [rsp + 0xf], 0
	jne	.label_91
	cmp	r8d, 2
	jne	.label_101
	mov	eax, r9d
	and	al, 1
	jne	.label_101
	cmp	r14, rbp
	jae	.label_193
	mov	rax, qword ptr [rsp + 0x10]
	mov	byte ptr [rax + r14], 0x27
.label_193:
	lea	rax, [r14 + 1]
	cmp	rax, rbp
	jae	.label_195
	mov	rcx, qword ptr [rsp + 0x10]
	mov	byte ptr [rcx + rax], 0x24
.label_195:
	lea	rax, [r14 + 2]
	cmp	rax, rbp
	jae	.label_200
	mov	rcx, qword ptr [rsp + 0x10]
	mov	byte ptr [rcx + rax], 0x27
.label_200:
	add	r14, 3
	mov	r9b, 1
.label_101:
	mov	rcx, r14
	cmp	rcx, rbp
	jae	.label_203
	mov	rax, qword ptr [rsp + 0x10]
	mov	byte ptr [rax + rcx], 0x5c
.label_203:
	lea	r14, [rcx + 1]
	mov	al, 1
	mov	r15b, 0x30
	cmp	r8d, 2
	je	.label_89
	lea	rdx, [r12 + 1]
	cmp	rdx, r11
	jae	.label_89
	mov	dl, byte ptr [r10 + rdx]
	add	dl, 0xd0
	cmp	dl, 9
	ja	.label_89
	cmp	r14, rbp
	jae	.label_121
	mov	rdx, qword ptr [rsp + 0x10]
	mov	byte ptr [rdx + r14], 0x30
.label_121:
	lea	rdx, [rcx + 2]
	cmp	rdx, rbp
	jae	.label_199
	mov	ebx, esi
	mov	rsi, qword ptr [rsp + 0x10]
	mov	byte ptr [rsi + rdx], 0x30
	mov	esi, ebx
.label_199:
	add	rcx, 3
	xor	r13d, r13d
	mov	r14, rcx
	jmp	.label_80
.label_659:
	mov	bl, 0x62
	jmp	.label_114
.label_660:
	mov	cl, 0x74
	jmp	.label_105
.label_661:
	mov	bl, 0x76
	jmp	.label_114
.label_662:
	mov	bl, 0x66
	jmp	.label_114
.label_663:
	mov	cl, 0x72
	jmp	.label_105
.label_666:
	mov	r15b, 0x27
	mov	al, 1
	mov	qword ptr [rsp + 0xa8], rax
	cmp	r8d, 2
	jne	.label_127
	cmp	byte ptr [rsp + 0xf], 0
	jne	.label_112
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
	jae	.label_135
	mov	rax, qword ptr [rsp + 0x10]
	mov	byte ptr [rax + r14], 0x27
.label_135:
	lea	rax, [r14 + 1]
	cmp	rax, rbp
	jae	.label_149
	mov	rcx, qword ptr [rsp + 0x10]
	mov	byte ptr [rcx + rax], 0x5c
.label_149:
	lea	rax, [r14 + 2]
	cmp	rax, rbp
	jae	.label_154
	mov	rcx, qword ptr [rsp + 0x10]
	mov	byte ptr [rcx + rax], 0x27
.label_154:
	add	r14, 3
	xor	r9d, r9d
.label_127:
	xor	eax, eax
	mov	r13b, 1
	jmp	.label_80
.label_667:
	mov	r15b, 0x3f
	cmp	r8d, 5
	je	.label_157
	cmp	r8d, 2
	jne	.label_96
	cmp	byte ptr [rsp + 0xf], 0
	je	.label_96
	jmp	.label_112
.label_668:
	cmp	r8d, 2
	jne	.label_166
	cmp	byte ptr [rsp + 0xf], 0
	jne	.label_112
	mov	r15b, 0x5c
	xor	eax, eax
	jmp	.label_92
.label_148:
	cmp	qword ptr [rsp + 0xb8], 1
	mov	qword ptr [rsp + 0xa0], rbp
	mov	byte ptr [rsp + 0x1e], dil
	mov	dword ptr [rsp + 0x60], r9d
	mov	dword ptr [rsp + 0x94], esi
	jne	.label_169
	mov	qword ptr [rsp + 0x48], r11
	call	__ctype_b_loc
	mov	r10, qword ptr [rsp + 0x28]
	mov	rax, qword ptr [rax]
	movzx	r13d, word ptr [rax + r15*2]
	shr	r13d, 0xe
	and	r13b, 1
	mov	ebx, 1
	jmp	.label_182
.label_174:
	test	r12, r12
	jne	.label_191
	mov	cl, byte ptr [r10 + 1]
	test	cl, cl
	jne	.label_191
.label_88:
	mov	dl, 1
.label_664:
	cmp	byte ptr [rsp + 0x27], 0
	je	.label_112
	xor	eax, eax
	mov	r13b, dl
.label_80:
	cmp	byte ptr [rsp + 0x36], 0
	je	.label_198
	cmp	qword ptr [rsp + 0x100], 0
	jne	.label_81
	jmp	.label_77
	.section	.text
	.align	16
	#Procedure 0x4029f4
	.globl sub_4029f4
	.type sub_4029f4, @function
sub_4029f4:

	nop	word ptr cs:[rax + rax]
.label_198:
	cmp	byte ptr [rsp + 0x35], 0
	je	.label_77
.label_81:
	mov	ecx, r15d
	shr	cl, 5
	movzx	edx, cl
	mov	ebx, esi
	mov	esi, 1
	mov	ecx, r15d
	shl	esi, cl
	test	bl, bl
	jne	.label_79
	mov	rcx, qword ptr [rsp + 0x100]
	and	esi, dword ptr [rcx + rdx*4]
	jmp	.label_87
	.section	.text
	.align	16
	#Procedure 0x402a2d
	.globl sub_402a2d
	.type sub_402a2d, @function
sub_402a2d:

	nop	dword ptr [rax]
.label_77:
	test	sil, sil
.label_87:
	mov	ebx, r15d
	je	.label_109
	jmp	.label_95
.label_79:
	mov	ebx, r15d
	jmp	.label_95
.label_185:
	cmp	dword ptr [rsp + 0x9c], 0
	jne	.label_97
	xor	r15d, r15d
	jmp	.label_96
.label_166:
	mov	cl, 0x5c
	cmp	byte ptr [rsp + 0x32], 0
	je	.label_105
	xor	eax, eax
	mov	r15b, 0x5c
.label_92:
	xor	r13d, r13d
	jmp	.label_109
.label_105:
	cmp	byte ptr [rsp + 0x27], 0
	mov	ebx, ecx
	je	.label_112
.label_114:
	xor	eax, eax
	cmp	byte ptr [rsp + 0x1f], 0
	mov	r13d, 0
	je	.label_80
	nop	
.label_95:
	cmp	byte ptr [rsp + 0xf], 0
	jne	.label_91
	cmp	r8d, 2
	jne	.label_128
	mov	eax, r9d
	and	al, 1
	jne	.label_128
	cmp	r14, rbp
	jae	.label_132
	mov	rax, qword ptr [rsp + 0x10]
	mov	byte ptr [rax + r14], 0x27
.label_132:
	lea	rax, [r14 + 1]
	cmp	rax, rbp
	jae	.label_136
	mov	rcx, qword ptr [rsp + 0x10]
	mov	byte ptr [rcx + rax], 0x24
.label_136:
	lea	rax, [r14 + 2]
	cmp	rax, rbp
	jae	.label_139
	mov	rcx, qword ptr [rsp + 0x10]
	mov	byte ptr [rcx + rax], 0x27
.label_139:
	add	r14, 3
	mov	r9b, 1
.label_128:
	cmp	r14, rbp
	jae	.label_147
	mov	rax, qword ptr [rsp + 0x10]
	mov	byte ptr [rax + r14], 0x5c
.label_147:
	inc	r14
	jmp	.label_186
.label_169:
	mov	qword ptr [rsp + 0x70], 0
	cmp	r11, -1
	jne	.label_152
	mov	rdi, r10
	call	strlen
	mov	r10, qword ptr [rsp + 0x28]
	mov	r11, rax
.label_152:
	cmp	byte ptr [rsp + 0x31], 0
	mov	qword ptr [rsp + 0x48], r11
	mov	qword ptr [rsp + 0x88], r12
	je	.label_124
	lea	rax, [r10 + r12]
	mov	qword ptr [rsp + 0xb0], rax
	mov	r13b, 1
	xor	r12d, r12d
	lea	rbp, [rsp + 0x70]
.label_90:
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
	je	.label_172
	cmp	rbx, -1
	mov	r10, qword ptr [rsp + 0x28]
	movabs	rsi, 0x20000002b
	je	.label_176
	test	rbx, rbx
	mov	r11, qword ptr [rsp + 0x48]
	je	.label_108
	cmp	rbx, 2
	mov	rbp, qword ptr [rsp + 0xa0]
	jb	.label_187
	mov	rax, qword ptr [rsp + 0x40]
	mov	rcx, qword ptr [rsp + 0xb0]
	lea	rax, [rcx + rax]
	mov	ecx, 1
	nop	dword ptr [rax]
.label_170:
	movsx	edx, byte ptr [rax + rcx]
	add	edx, -0x5b
	cmp	edx, 0x21
	ja	.label_192
	bt	rsi, rdx
	jb	.label_112
.label_192:
	inc	rcx
	cmp	rcx, rbx
	jb	.label_170
.label_187:
	mov	edi, dword ptr [rsp + 0x64]
	call	iswprint
	test	eax, eax
	jne	.label_107
	xor	r13d, r13d
.label_107:
	lea	rbp, [rsp + 0x70]
	mov	r12, qword ptr [rsp + 0x40]
	add	r12, rbx
	mov	rdi, rbp
	call	mbsinit
	test	eax, eax
	mov	r10, qword ptr [rsp + 0x28]
	mov	r11, qword ptr [rsp + 0x48]
	je	.label_90
	jmp	.label_178
.label_89:
	xor	r13d, r13d
	jmp	.label_80
.label_191:
	mov	r11, -1
	xor	r13d, r13d
	jmp	.label_80
.label_157:
	cmp	dword ptr [rsp + 0x98], 0
	je	.label_96
	lea	rcx, [r12 + 2]
	cmp	rcx, r11
	jae	.label_96
	cmp	byte ptr [r10 + r12 + 1], 0x3f
	jne	.label_96
	movsx	edx, byte ptr [r10 + rcx]
	xor	eax, eax
	cmp	edx, 0x3e
	ja	.label_110
	mov	ebx, esi
	movabs	rsi, 0x7000a38200000000
	bt	rsi, rdx
	jae	.label_143
	cmp	byte ptr [rsp + 0xf], 0
	jne	.label_122
	cmp	r14, rbp
	jae	.label_125
	mov	rax, qword ptr [rsp + 0x10]
	mov	byte ptr [rax + r14], 0x3f
.label_125:
	lea	rax, [r14 + 1]
	cmp	rax, rbp
	jae	.label_131
	mov	rsi, qword ptr [rsp + 0x10]
	mov	byte ptr [rsi + rax], 0x22
.label_131:
	lea	rax, [r14 + 2]
	cmp	rax, rbp
	jae	.label_98
	mov	rsi, qword ptr [rsp + 0x10]
	mov	byte ptr [rsi + rax], 0x22
.label_98:
	lea	rax, [r14 + 3]
	cmp	rax, rbp
	jae	.label_153
	mov	rsi, qword ptr [rsp + 0x10]
	mov	byte ptr [rsi + rax], 0x3f
.label_153:
	add	r14, 4
	xor	eax, eax
	mov	r12, rcx
	mov	r15b, dl
.label_143:
	xor	r13d, r13d
	mov	esi, ebx
	jmp	.label_80
.label_96:
	xor	eax, eax
.label_179:
	xor	r13d, r13d
	jmp	.label_80
.label_124:
	mov	r13b, 1
	xor	r12d, r12d
	lea	rbx, [rsp + 0x70]
	nop	word ptr cs:[rax + rax]
.label_173:
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
	je	.label_163
	cmp	rbp, -1
	je	.label_165
	cmp	rbp, -2
	je	.label_172
	mov	edi, dword ptr [rsp + 0x64]
	call	iswprint
	test	eax, eax
	mov	r12, qword ptr [rsp + 0x40]
	jne	.label_168
	xor	r13d, r13d
.label_168:
	add	r12, rbp
	lea	rbx, [rsp + 0x70]
	mov	rdi, rbx
	call	mbsinit
	test	eax, eax
	mov	r10, qword ptr [rsp + 0x28]
	mov	r11, qword ptr [rsp + 0x48]
	je	.label_173
	jmp	.label_178
.label_172:
	mov	r10, qword ptr [rsp + 0x28]
	mov	rsi, qword ptr [rsp + 0x40]
	lea	rax, [rsi + r12]
	mov	rdx, qword ptr [rsp + 0x48]
	cmp	rax, rdx
	jae	.label_159
	lea	rax, [r10 + r12]
.label_84:
	cmp	byte ptr [rax + rsi], 0
	je	.label_159
	lea	rcx, [r12 + rsi + 1]
	inc	rsi
	cmp	rcx, rdx
	jb	.label_84
.label_159:
	mov	qword ptr [rsp + 0x40], rsi
.label_176:
	xor	r13d, r13d
	jmp	.label_108
.label_165:
	xor	r13d, r13d
.label_163:
	mov	r10, qword ptr [rsp + 0x28]
.label_108:
	mov	r12, qword ptr [rsp + 0x40]
.label_178:
	mov	rbx, r12
	mov	r12, qword ptr [rsp + 0x88]
.label_182:
	and	r13b, 1
	mov	eax, r13d
	or	al, byte ptr [rsp + 0x33]
	cmp	rbx, 1
	mov	rbp, qword ptr [rsp + 0xa0]
	mov	dil, byte ptr [rsp + 0x1e]
	mov	r8, qword ptr [rsp + 0x38]
	mov	r9d, dword ptr [rsp + 0x60]
	mov	esi, dword ptr [rsp + 0x94]
	ja	.label_171
	test	al, al
	je	.label_171
	xor	eax, eax
	mov	r11, qword ptr [rsp + 0x48]
	jmp	.label_80
.label_171:
	mov	byte ptr [rsp + 0x40], al
	add	rbx, r12
	xor	eax, eax
	mov	r11, qword ptr [rsp + 0x48]
	jmp	.label_85
	.section	.text
	.align	16
	#Procedure 0x402e27
	.globl sub_402e27
	.type sub_402e27, @function
sub_402e27:

	nop	word ptr [rax + rax]
.label_177:
	inc	r14
	mov	r15b, byte ptr [r10 + r12 + 1]
	mov	r12, rdx
.label_85:
	cmp	byte ptr [rsp + 0x40], 0
	je	.label_94
	test	sil, 1
	je	.label_106
	cmp	r14, rbp
	jae	.label_99
	mov	rdx, qword ptr [rsp + 0x10]
	mov	byte ptr [rdx + r14], 0x5c
.label_99:
	inc	r14
	xor	esi, esi
	jmp	.label_106
	.section	.text
	.align	16
	#Procedure 0x402e65
	.globl sub_402e65
	.type sub_402e65, @function
sub_402e65:

	nop	word ptr cs:[rax + rax]
.label_94:
	cmp	byte ptr [rsp + 0xf], 0
	jne	.label_91
	cmp	r8d, 2
	jne	.label_116
	mov	eax, r9d
	and	al, 1
	jne	.label_116
	cmp	r14, rbp
	jae	.label_120
	mov	rax, qword ptr [rsp + 0x10]
	mov	byte ptr [rax + r14], 0x27
.label_120:
	lea	rax, [r14 + 1]
	cmp	rax, rbp
	jae	.label_126
	mov	rdx, qword ptr [rsp + 0x10]
	mov	byte ptr [rdx + rax], 0x24
.label_126:
	lea	rax, [r14 + 2]
	cmp	rax, rbp
	jae	.label_145
	mov	rdx, qword ptr [rsp + 0x10]
	mov	byte ptr [rdx + rax], 0x27
.label_145:
	add	r14, 3
	mov	r9b, 1
.label_116:
	cmp	r14, rbp
	jae	.label_138
	mov	rax, qword ptr [rsp + 0x10]
	mov	byte ptr [rax + r14], 0x5c
.label_138:
	lea	rax, [r14 + 1]
	cmp	rax, rbp
	jae	.label_142
	mov	edx, r15d
	shr	dl, 6
	or	dl, 0x30
	mov	ecx, esi
	mov	rsi, qword ptr [rsp + 0x10]
	mov	byte ptr [rsi + rax], dl
	mov	esi, ecx
.label_142:
	lea	rax, [r14 + 2]
	cmp	rax, rbp
	jae	.label_175
	mov	edx, r15d
	shr	dl, 3
	and	dl, 7
	or	dl, 0x30
	mov	ecx, esi
	mov	rsi, qword ptr [rsp + 0x10]
	mov	byte ptr [rsi + rax], dl
	mov	esi, ecx
.label_175:
	add	r14, 3
	and	r15b, 7
	or	r15b, 0x30
	mov	al, 1
.label_106:
	lea	rdx, [r12 + 1]
	cmp	rbx, rdx
	jbe	.label_109
	test	r9b, 1
	je	.label_158
	mov	rcx, rbx
	mov	ebx, eax
	and	bl, 1
	jne	.label_155
	mov	r8, r12
	mov	r12d, esi
	cmp	r14, rbp
	jae	.label_161
	mov	rsi, qword ptr [rsp + 0x10]
	mov	byte ptr [rsi + r14], 0x27
.label_161:
	lea	rsi, [r14 + 1]
	cmp	rsi, rbp
	jae	.label_194
	mov	rbx, qword ptr [rsp + 0x10]
	mov	byte ptr [rbx + rsi], 0x27
.label_194:
	add	r14, 2
	xor	r9d, r9d
	mov	esi, r12d
	mov	rbx, rcx
	mov	r12, r8
	mov	r8, qword ptr [rsp + 0x38]
	jmp	.label_158
	.section	.text
	.align	16
	#Procedure 0x402f76
	.globl sub_402f76
	.type sub_402f76, @function
sub_402f76:

	nop	word ptr cs:[rax + rax]
.label_155:
	mov	rbx, rcx
.label_158:
	cmp	r14, rbp
	jae	.label_177
	mov	ecx, esi
	mov	rsi, qword ptr [rsp + 0x10]
	mov	byte ptr [rsi + r14], r15b
	mov	esi, ecx
	jmp	.label_177
	.section	.text
	.align	16
	#Procedure 0x402f9e
	.globl sub_402f9e
	.type sub_402f9e, @function
sub_402f9e:

	nop	
.label_109:
	test	r9b, 1
	je	.label_184
	and	al, 1
	jne	.label_184
	cmp	r14, rbp
	jae	.label_188
	mov	rax, qword ptr [rsp + 0x10]
	mov	byte ptr [rax + r14], 0x27
.label_188:
	lea	rax, [r14 + 1]
	cmp	rax, rbp
	jae	.label_102
	mov	rcx, qword ptr [rsp + 0x10]
	mov	byte ptr [rcx + rax], 0x27
.label_102:
	add	r14, 2
	xor	r9d, r9d
.label_184:
	mov	ebx, r15d
.label_186:
	cmp	r14, rbp
	jae	.label_196
	mov	rax, qword ptr [rsp + 0x10]
	mov	byte ptr [rax + r14], bl
.label_196:
	inc	r14
	shl	r13b, 7
	sar	r13b, 7
	and	r13b, dil
	mov	edi, r13d
	jmp	.label_97
.label_110:
	xor	r13d, r13d
	jmp	.label_80
	.section	.text
	.align	16
	#Procedure 0x403001
	.globl sub_403001
	.type sub_403001, @function
sub_403001:

	nop	word ptr cs:[rax + rax]
.label_117:
	mov	rcx, r12
.label_123:
	cmp	r8d, 2
	setne	al
	test	r14, r14
	setne	dl
	cmp	byte ptr [rsp + 0xf], 0
	je	.label_83
	or	al, dl
	jne	.label_83
	mov	r11, rcx
	jmp	.label_91
.label_112:
	mov	eax, 2
.label_201:
	mov	qword ptr [rsp + 0x38], rax
.label_91:
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
.label_137:
	mov	r14, rax
.label_160:
	mov	rax, r14
	add	rsp, 0xc8
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_82:
	mov	rdx, qword ptr [rsp + 0x58]
	test	rdx, rdx
	je	.label_202
	cmp	byte ptr [rsp + 0xf], 0
	mov	rcx, qword ptr [rsp + 0x10]
	jne	.label_119
	mov	al, byte ptr [rdx]
	test	al, al
	je	.label_119
	inc	rdx
	nop	dword ptr [rax + rax]
.label_144:
	cmp	r14, rbp
	jae	.label_141
	mov	byte ptr [rcx + r14], al
.label_141:
	inc	r14
	movzx	eax, byte ptr [rdx]
	inc	rdx
	test	al, al
	jne	.label_144
	jmp	.label_119
.label_78:
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
	jmp	.label_137
.label_202:
	mov	rcx, qword ptr [rsp + 0x10]
.label_119:
	cmp	r14, rbp
	jae	.label_160
	mov	byte ptr [rcx + r14], 0
	jmp	.label_160
.label_122:
	mov	eax, 5
	jmp	.label_201
.label_129:
	call	abort
	.section	.text
	.align	16
	#Procedure 0x403150

	.globl xalloc_die
	.type xalloc_die, @function
xalloc_die:
	push	rbx
	mov	ebx, dword ptr [rip + exit_failure]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_204
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	xor	esi, esi
	mov	edx, OFFSET FLAT:label_205
	xor	eax, eax
	mov	edi, ebx
	call	error
	call	abort
	.section	.text
	.align	16
	#Procedure 0x403180
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
	#Procedure 0x40318f
	.globl sub_40318f
	.type sub_40318f, @function
sub_40318f:

	nop	
	.section	.text
	.align	16
	#Procedure 0x403190

	.globl memcasecmp
	.type memcasecmp, @function
memcasecmp:
	push	r15
	push	r14
	push	rbx
	mov	rbx, rdx
	mov	r14, rsi
	mov	r15, rdi
	xor	eax, eax
	test	rbx, rbx
	je	.label_206
	call	__ctype_toupper_loc
	mov	rcx, qword ptr [rax]
	xor	edx, edx
	nop	
.label_207:
	movzx	eax, byte ptr [r15 + rdx]
	mov	eax, dword ptr [rcx + rax*4]
	movzx	esi, byte ptr [r14 + rdx]
	sub	eax, dword ptr [rcx + rsi*4]
	jne	.label_206
	inc	rdx
	xor	eax, eax
	cmp	rdx, rbx
	jb	.label_207
.label_206:
	pop	rbx
	pop	r14
	pop	r15
	ret	
	.section	.text
	.align	16
	#Procedure 0x4031d2
	.globl sub_4031d2
	.type sub_4031d2, @function
sub_4031d2:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4031e0

	.globl rpl_fflush
	.type rpl_fflush, @function
rpl_fflush:
	push	rbx
	mov	rbx, rdi
	test	rbx, rbx
	je	.label_208
	mov	rdi, rbx
	call	__freading
	test	eax, eax
	je	.label_208
	test	byte ptr [rbx + 1], 1
	je	.label_208
	xor	esi, esi
	mov	edx, 1
	mov	rdi, rbx
	call	rpl_fseeko
.label_208:
	mov	rdi, rbx
	pop	rbx
	jmp	fflush
	.section	.text
	.align	16
	#Procedure 0x403213
	.globl sub_403213
	.type sub_403213, @function
sub_403213:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x403220
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
	#Procedure 0x403233
	.globl sub_403233
	.type sub_403233, @function
sub_403233:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x403240

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
	jne	.label_210
	call	locale_charset
	movsx	ecx, byte ptr [rax]
	and	ecx, 0xffffffdf
	cmp	ecx, 0x47
	je	.label_215
	cmp	ecx, 0x55
	jne	.label_209
	movsx	ecx, byte ptr [rax + 1]
	and	ecx, 0xffffffdf
	cmp	ecx, 0x54
	jne	.label_209
	movsx	ecx, byte ptr [rax + 2]
	and	ecx, 0xffffffdf
	cmp	ecx, 0x46
	jne	.label_209
	cmp	byte ptr [rax + 3], 0x2d
	jne	.label_209
	cmp	byte ptr [rax + 4], 0x38
	jne	.label_209
	cmp	byte ptr [rax + 5], 0
	jne	.label_209
	cmp	byte ptr [rbx], 0x60
	mov	ecx, OFFSET FLAT:label_212
	mov	eax, OFFSET FLAT:label_213
	jmp	.label_214
.label_215:
	movsx	ecx, byte ptr [rax + 1]
	and	ecx, 0xffffffdf
	cmp	ecx, 0x42
	jne	.label_209
	cmp	byte ptr [rax + 2], 0x31
	jne	.label_209
	cmp	byte ptr [rax + 3], 0x38
	jne	.label_209
	cmp	byte ptr [rax + 4], 0x30
	jne	.label_209
	cmp	byte ptr [rax + 5], 0x33
	jne	.label_209
	cmp	byte ptr [rax + 6], 0x30
	jne	.label_209
	cmp	byte ptr [rax + 7], 0
	je	.label_211
.label_209:
	cmp	ebp, 9
	mov	ecx, OFFSET FLAT:label_103
	mov	eax, OFFSET FLAT:label_167
.label_214:
	cmove	rax, rcx
.label_210:
	add	rsp, 8
	pop	rbx
	pop	rbp
	ret	
.label_211:
	cmp	byte ptr [rbx], 0x60
	mov	ecx, OFFSET FLAT:label_216
	mov	eax, OFFSET FLAT:label_217
	jmp	.label_214
	.section	.text
	.align	16
	#Procedure 0x403305
	.globl sub_403305
	.type sub_403305, @function
sub_403305:

	nop	word ptr cs:[rax + rax]
.label_218:
	call	xalloc_die
	.section	.text
	.align	16
	#Procedure 0x403315
	.globl sub_403315
	.type sub_403315, @function
sub_403315:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40331f
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
	je	.label_219
	test	r14, r14
	je	.label_218
.label_219:
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
	#Procedure 0x403350

	.globl fadvise
	.type fadvise, @function
fadvise:
	push	rbx
	mov	ebx, esi
	test	rdi, rdi
	je	.label_220
	call	fileno
	xor	esi, esi
	xor	edx, edx
	mov	edi, eax
	mov	ecx, ebx
	pop	rbx
	jmp	posix_fadvise
.label_220:
	pop	rbx
	ret	
	.section	.text
	.align	16
	#Procedure 0x40336d
	.globl sub_40336d
	.type sub_40336d, @function
sub_40336d:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x403370

	.globl xmemcoll
	.type xmemcoll, @function
xmemcoll:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	push	rax
	mov	r13, rcx
	mov	r12, rdx
	mov	r14, rsi
	mov	r15, rdi
	call	memcoll
	mov	ebp, eax
	call	__errno_location
	mov	ebx, dword ptr [rax]
	test	ebx, ebx
	je	.label_222
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_223
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	xor	edi, edi
	xor	eax, eax
	mov	esi, ebx
	mov	rdx, rcx
	call	error
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_224
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	xor	edi, edi
	xor	esi, esi
	xor	eax, eax
	mov	rdx, rcx
	call	error
	mov	eax, dword ptr [rip + exit_failure]
	mov	dword ptr [rsp + 4], eax
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_221
	mov	edx, 5
	call	dcgettext
	mov	rbx, r13
	mov	r13, rax
	xor	edi, edi
	mov	esi, 8
	mov	rdx, r15
	mov	rcx, r14
	call	quotearg_n_style_mem
	mov	r14, rax
	mov	edi, 1
	mov	esi, 8
	mov	rdx, r12
	mov	rcx, rbx
	call	quotearg_n_style_mem
	mov	rbx, rax
	xor	esi, esi
	xor	eax, eax
	mov	edi, dword ptr [rsp + 4]
	mov	rdx, r13
	mov	rcx, r14
	mov	r8, rbx
	call	error
.label_222:
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
	.align	16
	#Procedure 0x403456
	.globl sub_403456
	.type sub_403456, @function
sub_403456:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x403460
	.globl quotearg_char
	.type quotearg_char, @function
quotearg_char:

	sub	rsp, 0x38
	mov	ecx, esi
	mov	rax, rdi
	mov	rdx, qword ptr [rip + label_42]
	mov	qword ptr [rsp + 0x30], rdx
	movups	xmm0, xmmword ptr [rip + label_43]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0, xmmword ptr [rip + label_44]
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
	#Procedure 0x4034cf
	.globl sub_4034cf
	.type sub_4034cf, @function
sub_4034cf:

	nop	
	.section	.text
	.align	16
	#Procedure 0x4034d0

	.globl xrealloc
	.type xrealloc, @function
xrealloc:
	push	rbx
	mov	rbx, rsi
	test	rdi, rdi
	je	.label_225
	test	rbx, rbx
	jne	.label_225
	call	free
	xor	eax, eax
	pop	rbx
	ret	
.label_227:
	call	xalloc_die
.label_225:
	mov	rsi, rbx
	call	realloc
	test	rbx, rbx
	je	.label_226
	test	rax, rax
	je	.label_227
.label_226:
	pop	rbx
	ret	
.label_229:
	mov	ecx, 1
.label_228:
	mov	rdi, rcx
	mov	rsi, rax
	jmp	calloc
	.section	.text
	.align	16
	#Procedure 0x403510
	.globl sub_403510
	.type sub_403510, @function
sub_403510:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x403515

	.globl rpl_calloc
	.type rpl_calloc, @function
rpl_calloc:
	test	rdi, rdi
	mov	eax, 1
	je	.label_229
	test	rsi, rsi
	mov	ecx, 1
	je	.label_228
	mov	rax, rsi
	imul	rax, rdi
	xor	edx, edx
	div	rsi
	cmp	rax, rdi
	mov	rax, rsi
	mov	rcx, rdi
	je	.label_228
	push	rax
	call	__errno_location
	mov	dword ptr [rax], 0xc
	xor	eax, eax
	pop	rcx
	ret	
	.section	.text
	.align	16
	#Procedure 0x403550
	.globl quotearg_n_custom_mem
	.type quotearg_n_custom_mem, @function
quotearg_n_custom_mem:

	sub	rsp, 0x38
	mov	rax, qword ptr [rip + label_42]
	mov	qword ptr [rsp + 0x30], rax
	movups	xmm0, xmmword ptr [rip + label_43]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0, xmmword ptr [rip + label_44]
	movaps	xmmword ptr [rsp + 0x10], xmm0
	movups	xmm0, xmmword ptr [rip + default_quoting_options]
	movaps	xmmword ptr [rsp], xmm0
	mov	dword ptr [rsp], 0xa
	test	rsi, rsi
	je	.label_230
	test	rdx, rdx
	je	.label_230
	mov	qword ptr [rsp + 0x28], rsi
	mov	qword ptr [rsp + 0x30], rdx
	lea	rax, [rsp]
	mov	rsi, rcx
	mov	rdx, r8
	mov	rcx, rax
	call	quotearg_n_options
	add	rsp, 0x38
	ret	
.label_230:
	call	abort
	.section	.text
	.align	16
	#Procedure 0x4035ba
	.globl sub_4035ba
	.type sub_4035ba, @function
sub_4035ba:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4035c0

	.globl rpl_fcntl
	.type rpl_fcntl, @function
rpl_fcntl:
	push	rbp
	push	r14
	push	rbx
	sub	rsp, 0xd0
	mov	ebx, edi
	test	al, al
	je	.label_245
	movaps	xmmword ptr [rsp + 0x50], xmm0
	movaps	xmmword ptr [rsp + 0x60], xmm1
	movaps	xmmword ptr [rsp + 0x70], xmm2
	movaps	xmmword ptr [rsp + 0x80], xmm3
	movaps	xmmword ptr [rsp + 0x90], xmm4
	movaps	xmmword ptr [rsp + 0xa0], xmm5
	movaps	xmmword ptr [rsp + 0xb0], xmm6
	movaps	xmmword ptr [rsp + 0xc0], xmm7
.label_245:
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
	ja	.label_233
	mov	eax, 0xa0a
	bt	eax, esi
	jb	.label_246
	mov	eax, 0x514
	bt	eax, esi
	jb	.label_234
	test	esi, esi
	jne	.label_233
	movsxd	rcx, dword ptr [rsp]
	cmp	rcx, 0x28
	ja	.label_248
	mov	rax, rcx
	add	rax, qword ptr [rsp + 0x10]
	lea	ecx, [rcx + 8]
	mov	dword ptr [rsp], ecx
	jmp	.label_249
.label_233:
	lea	eax, [rsi - 0x400]
	cmp	eax, 8
	ja	.label_231
	mov	ecx, 0x85
	bt	ecx, eax
	jb	.label_234
	mov	ecx, 0x102
	bt	ecx, eax
	jae	.label_237
.label_246:
	xor	eax, eax
	mov	edi, ebx
	call	fcntl
	jmp	.label_241
.label_234:
	movsxd	rcx, dword ptr [rsp]
	cmp	rcx, 0x28
	ja	.label_242
	mov	rax, rcx
	add	rax, qword ptr [rsp + 0x10]
	lea	ecx, [rcx + 8]
	mov	dword ptr [rsp], ecx
	jmp	.label_243
.label_242:
	mov	rax, qword ptr [rsp + 8]
	lea	rcx, [rax + 8]
	mov	qword ptr [rsp + 8], rcx
.label_243:
	mov	edx, dword ptr [rax]
	xor	eax, eax
	mov	edi, ebx
.label_244:
	call	fcntl
.label_241:
	mov	ebp, eax
.label_236:
	mov	eax, ebp
	add	rsp, 0xd0
	pop	rbx
	pop	r14
	pop	rbp
	ret	
.label_237:
	cmp	eax, 6
	jne	.label_231
	movsxd	rcx, dword ptr [rsp]
	cmp	rcx, 0x28
	ja	.label_251
	mov	rax, rcx
	add	rax, qword ptr [rsp + 0x10]
	lea	ecx, [rcx + 8]
	mov	dword ptr [rsp], ecx
	jmp	.label_232
.label_231:
	movsxd	rcx, dword ptr [rsp]
	cmp	rcx, 0x28
	ja	.label_235
	mov	rax, rcx
	add	rax, qword ptr [rsp + 0x10]
	lea	ecx, [rcx + 8]
	mov	dword ptr [rsp], ecx
	jmp	.label_239
.label_248:
	mov	rax, qword ptr [rsp + 8]
	lea	rcx, [rax + 8]
	mov	qword ptr [rsp + 8], rcx
.label_249:
	mov	edx, dword ptr [rax]
	xor	esi, esi
	xor	eax, eax
	mov	edi, ebx
	jmp	.label_244
.label_251:
	mov	rax, qword ptr [rsp + 8]
	lea	rcx, [rax + 8]
	mov	qword ptr [rsp + 8], rcx
.label_232:
	mov	r14d, dword ptr [rax]
	cmp	dword ptr [rip + rpl_fcntl_DUPFD_CLOEXEC.have_dupfd_cloexec],  0
	js	.label_247
	mov	esi, 0x406
	xor	eax, eax
	mov	edi, ebx
	mov	edx, r14d
	call	fcntl
	mov	ebp, eax
	test	ebp, ebp
	jns	.label_250
	call	__errno_location
	cmp	dword ptr [rax], 0x16
	jne	.label_250
	xor	esi, esi
	xor	eax, eax
	mov	edi, ebx
	mov	edx, r14d
	call	fcntl
	mov	ebp, eax
	test	ebp, ebp
	js	.label_236
	mov	dword ptr [rip + rpl_fcntl_DUPFD_CLOEXEC.have_dupfd_cloexec],  0xffffffff
	mov	al, 1
	jmp	.label_238
.label_250:
	mov	dword ptr [rip + rpl_fcntl_DUPFD_CLOEXEC.have_dupfd_cloexec],  1
	jmp	.label_236
.label_235:
	mov	rax, qword ptr [rsp + 8]
	lea	rcx, [rax + 8]
	mov	qword ptr [rsp + 8], rcx
.label_239:
	mov	rdx, qword ptr [rax]
	xor	eax, eax
	mov	edi, ebx
	call	fcntl
	jmp	.label_241
.label_247:
	xor	esi, esi
	xor	eax, eax
	mov	edi, ebx
	mov	edx, r14d
	call	fcntl
	mov	ebp, eax
	cmp	dword ptr [rip + rpl_fcntl_DUPFD_CLOEXEC.have_dupfd_cloexec],  -1
	sete	al
.label_238:
	test	al, al
	je	.label_236
	test	ebp, ebp
	js	.label_236
	mov	esi, 1
	xor	eax, eax
	mov	edi, ebp
	call	fcntl
	mov	ecx, eax
	test	ecx, ecx
	js	.label_240
	or	ecx, 1
	mov	esi, 2
	xor	eax, eax
	mov	edi, ebp
	mov	edx, ecx
	call	fcntl
	cmp	eax, -1
	jne	.label_236
.label_240:
	call	__errno_location
	mov	rbx, rax
	mov	r14d, dword ptr [rbx]
	mov	edi, ebp
	call	close
	mov	dword ptr [rbx], r14d
	mov	ebp, 0xffffffff
	jmp	.label_236
	.section	.text
	.align	16
	#Procedure 0x403851
	.globl sub_403851
	.type sub_403851, @function
sub_403851:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x403860

	.globl get_line
	.type get_line, @function
get_line:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x28
	mov	ebx, edx
	mov	rbp, rsi
	mov	r14, rdi
	mov	r12, qword ptr [rbp]
	movsxd	r13, ebx
	cmp	r12, qword ptr [(r13 * 8) + label_256]
	jne	.label_257
	mov	rax, qword ptr [(r13 * 8) + label_276]
	mov	qword ptr [(r13 * 8) + label_276],  r12
	mov	qword ptr [rbp], rax
	mov	r12, rax
.label_257:
	test	r12, r12
	je	.label_282
	mov	qword ptr [r12 + 0x18], 0
	jmp	.label_283
.label_282:
	mov	edi, 1
	mov	esi, 0x30
	call	xcalloc
	mov	r12, rax
	mov	qword ptr [rbp], r12
.label_283:
	mov	al, byte ptr [rip + eolchar]
	test	al, al
	jne	.label_289
	mov	al, 0xa
	jmp	.label_290
.label_289:
	xor	eax, eax
.label_290:
	movzx	edx, al
	mov	rdi, r12
	mov	rsi, r14
	call	readlinebuffer_delim
	test	rax, rax
	je	.label_294
	mov	dword ptr [rsp + 0x1c], ebx
	inc	qword ptr [(r13 * 8) + label_263]
	mov	rbp, qword ptr [r12 + 8]
	mov	r14, qword ptr [r12 + 0x10]
	lea	rax, [r14 + rbp - 1]
	mov	qword ptr [rsp + 0x10], rax
	cmp	r14, rax
	je	.label_253
	mov	r15d, dword ptr [rip + tab]
	test	r15d, r15d
	js	.label_260
	cmp	r15d, 0xa
	je	.label_260
	mov	rdx, qword ptr [rsp + 0x10]
	sub	rdx, r14
	mov	rdi, r14
	mov	esi, r15d
	call	memchr
	mov	rbx, rax
	test	rbx, rbx
	je	.label_264
	mov	rbp, qword ptr [r12 + 0x18]
	nop	word ptr cs:[rax + rax]
.label_287:
	mov	rsi, qword ptr [r12 + 0x20]
	cmp	rbp, rsi
	jae	.label_271
	mov	rax, qword ptr [r12 + 0x28]
	jmp	.label_273
	.section	.text
	.align	16
	#Procedure 0x403971
	.globl sub_403971
	.type sub_403971, @function
sub_403971:

	nop	word ptr cs:[rax + rax]
.label_271:
	mov	rdi, qword ptr [r12 + 0x28]
	test	rdi, rdi
	je	.label_274
	movabs	rax, 0x555555555555555
	cmp	rsi, rax
	jae	.label_258
	mov	rax, rsi
	shr	rax, 1
	lea	rsi, [rsi + rax + 1]
	jmp	.label_281
.label_274:
	test	rsi, rsi
	mov	eax, 8
	cmove	rsi, rax
	movabs	rax, 0x7ffffffffffffff
	cmp	rsi, rax
	ja	.label_285
.label_281:
	mov	qword ptr [r12 + 0x20], rsi
	shl	rsi, 4
	call	xrealloc
	mov	qword ptr [r12 + 0x28], rax
	mov	rbp, qword ptr [r12 + 0x18]
	mov	r15d, dword ptr [rip + tab]
.label_273:
	mov	rcx, rbx
	sub	rcx, r14
	mov	rdx, rbp
	shl	rdx, 4
	mov	qword ptr [rax + rdx], r14
	mov	qword ptr [rax + rdx + 8], rcx
	inc	rbp
	mov	qword ptr [r12 + 0x18], rbp
	mov	r14, rbx
	inc	r14
	mov	rdx, qword ptr [rsp + 0x10]
	sub	rdx, r14
	mov	rdi, r14
	mov	esi, r15d
	call	memchr
	mov	rbx, rax
	test	rbx, rbx
	jne	.label_287
	jmp	.label_264
.label_294:
	test	byte ptr [r14], 0x20
	jne	.label_266
	test	r12, r12
	je	.label_268
	mov	rdi, qword ptr [r12 + 0x28]
	call	free
	mov	qword ptr [r12 + 0x28], 0
	mov	rdi, qword ptr [r12 + 0x10]
	call	free
	mov	qword ptr [r12 + 0x10], 0
	xor	eax, eax
	jmp	.label_270
.label_260:
	test	r15d, r15d
	jns	.label_264
	lea	rbx, [r14 + rbp]
	call	__ctype_b_loc
	mov	r8, rax
	mov	rax, qword ptr [r8]
	dec	rbp
	nop	word ptr [rax + rax]
.label_284:
	movzx	ecx, byte ptr [r14]
	cmp	rcx, 0xa
	je	.label_278
	movzx	ecx, word ptr [rax + rcx*2]
	and	ecx, 1
	test	cx, cx
	je	.label_280
.label_278:
	inc	r14
	dec	rbp
	jne	.label_284
	jmp	.label_253
.label_268:
	xor	eax, eax
	jmp	.label_270
.label_280:
	mov	qword ptr [rsp + 0x20], r13
	jmp	.label_286
.label_272:
	add	r14, -2
.label_286:
	lea	r15, [r14 + 2]
	nop	dword ptr [rax]
.label_296:
	mov	r13b, 1
	cmp	rbx, r15
	je	.label_291
	movzx	ecx, byte ptr [r15 - 1]
	inc	r15
	cmp	rcx, 0xa
	je	.label_293
	movzx	ecx, word ptr [rax + rcx*2]
	and	ecx, 1
	test	cx, cx
	je	.label_296
.label_293:
	add	r15, -2
	xor	r13d, r13d
	jmp	.label_299
.label_291:
	mov	r15, qword ptr [rsp + 0x10]
.label_299:
	mov	rcx, qword ptr [r12 + 0x18]
	mov	rsi, qword ptr [r12 + 0x20]
	cmp	rcx, rsi
	jae	.label_252
	mov	rax, qword ptr [r12 + 0x28]
	jmp	.label_259
.label_252:
	mov	rdi, qword ptr [r12 + 0x28]
	test	rdi, rdi
	je	.label_261
	movabs	rax, 0x555555555555555
	cmp	rsi, rax
	jae	.label_258
	mov	rbp, r8
	mov	rax, rsi
	shr	rax, 1
	lea	rsi, [rsi + rax + 1]
	jmp	.label_267
.label_261:
	mov	rbp, r8
	test	rsi, rsi
	mov	eax, 8
	cmove	rsi, rax
	movabs	rax, 0x7ffffffffffffff
	cmp	rsi, rax
	ja	.label_269
.label_267:
	mov	qword ptr [r12 + 0x20], rsi
	shl	rsi, 4
	call	xrealloc
	mov	qword ptr [r12 + 0x28], rax
	mov	rcx, qword ptr [r12 + 0x18]
	mov	r8, rbp
.label_259:
	mov	rdx, r15
	sub	rdx, r14
	mov	rsi, rcx
	shl	rsi, 4
	mov	qword ptr [rax + rsi], r14
	mov	qword ptr [rax + rsi + 8], rdx
	inc	rcx
	mov	qword ptr [r12 + 0x18], rcx
	test	r13b, r13b
	mov	r13, qword ptr [rsp + 0x20]
	jne	.label_253
	add	r15, 2
	mov	r14, r15
	nop	word ptr cs:[rax + rax]
.label_292:
	cmp	rbx, r14
	je	.label_288
	movzx	ecx, byte ptr [r14 - 1]
	inc	r14
	cmp	rcx, 0xa
	je	.label_292
	mov	rax, qword ptr [r8]
	movzx	ecx, word ptr [rax + rcx*2]
	and	ecx, 1
	test	cx, cx
	jne	.label_292
	jmp	.label_272
.label_288:
	mov	r14, qword ptr [rsp + 0x10]
.label_264:
	mov	rcx, qword ptr [r12 + 0x18]
	mov	rax, qword ptr [r12 + 0x20]
	cmp	rcx, rax
	jae	.label_298
	mov	rax, qword ptr [r12 + 0x28]
	jmp	.label_295
.label_298:
	mov	rdi, qword ptr [r12 + 0x28]
	test	rdi, rdi
	je	.label_254
	movabs	rcx, 0x555555555555555
	cmp	rax, rcx
	jae	.label_258
	mov	rcx, rax
	shr	rcx, 1
	lea	rsi, [rax + rcx + 1]
	jmp	.label_262
.label_254:
	test	rax, rax
	mov	esi, 8
	cmovne	rsi, rax
	movabs	rax, 0x7ffffffffffffff
	cmp	rsi, rax
	ja	.label_265
.label_262:
	mov	qword ptr [r12 + 0x20], rsi
	shl	rsi, 4
	call	xrealloc
	mov	qword ptr [r12 + 0x28], rax
	mov	rcx, qword ptr [r12 + 0x18]
.label_295:
	mov	rsi, qword ptr [rsp + 0x10]
	sub	rsi, r14
	mov	rdx, rcx
	shl	rdx, 4
	mov	qword ptr [rax + rdx], r14
	mov	qword ptr [rax + rdx + 8], rsi
	inc	rcx
	mov	qword ptr [r12 + 0x18], rcx
.label_253:
	mov	rdi, qword ptr [(r13 * 8) + label_256]
	test	rdi, rdi
	je	.label_275
	mov	eax, dword ptr [rip + check_input_order]
	cmp	eax, 1
	je	.label_279
	cmp	eax, 2
	je	.label_275
	cmp	byte ptr [rip + seen_unpairable],  1
	jne	.label_275
.label_279:
	cmp	byte ptr [r13 + seen_unpairable],  0
	jne	.label_275
	cmp	dword ptr [rsp + 0x1c], 1
	mov	eax, OFFSET FLAT:join_field_1
	mov	ecx, OFFSET FLAT:join_field_2
	cmove	rcx, rax
	mov	rdx, qword ptr [rcx]
	mov	rsi, r12
	mov	rcx, rdx
	call	keycmp
	test	eax, eax
	jle	.label_275
	mov	rax, qword ptr [r12 + 8]
	xor	ebp, ebp
	test	rax, rax
	je	.label_297
	lea	rbp, [rax - 1]
	mov	rcx, qword ptr [r12 + 0x10]
	cmp	byte ptr [rcx + rax - 1], 0xa
	cmovne	rbp, rax
.label_297:
	xor	ebx, ebx
	cmp	dword ptr [rip + check_input_order],  1
	sete	bl
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_255
	mov	edx, 5
	call	dcgettext
	mov	rdx, rax
	cmp	rbp, 0x7fffffff
	mov	rcx, qword ptr [(r13 * 8) + ignore_case]
	mov	r8, qword ptr [(r13 * 8) + label_263]
	mov	r9d, 0x7fffffff
	cmovbe	r9d, ebp
	mov	rax, qword ptr [r12 + 0x10]
	mov	qword ptr [rsp], rax
	mov	esi, 0
	xor	eax, eax
	mov	edi, ebx
	call	error
	mov	byte ptr [r13 + seen_unpairable],  1
.label_275:
	mov	qword ptr [(r13 * 8) + label_256],  r12
	mov	al, 1
.label_270:
	add	rsp, 0x28
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_258:
	call	xalloc_die
.label_285:
	call	xalloc_die
.label_266:
	call	__errno_location
	mov	ebx, dword ptr [rax]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_277
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	mov	edi, 1
	xor	eax, eax
	mov	esi, ebx
	mov	rdx, rcx
	call	error
.label_265:
	call	xalloc_die
.label_269:
	call	xalloc_die
	.section	.text
	.align	16
	#Procedure 0x403dbf
	.globl sub_403dbf
	.type sub_403dbf, @function
sub_403dbf:

	nop	
	.section	.text
	.align	16
	#Procedure 0x403dc0
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
	je	.label_300
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
.label_300:
	call	abort
	.section	.text
	.align	16
	#Procedure 0x403e2c
	.globl sub_403e2c
	.type sub_403e2c, @function
sub_403e2c:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x403e30

	.globl rpl_fclose
	.type rpl_fclose, @function
rpl_fclose:
	push	rbp
	push	r14
	push	rbx
	mov	rbx, rdi
	call	fileno
	test	eax, eax
	js	.label_301
	mov	rdi, rbx
	call	__freading
	test	eax, eax
	je	.label_303
	mov	rdi, rbx
	call	fileno
	xor	esi, esi
	mov	edx, 1
	mov	edi, eax
	call	lseek
	cmp	rax, -1
	je	.label_301
.label_303:
	mov	rdi, rbx
	call	rpl_fflush
	test	eax, eax
	je	.label_301
	call	__errno_location
	mov	r14, rax
	mov	ebp, dword ptr [r14]
	mov	rdi, rbx
	call	fclose
	test	ebp, ebp
	je	.label_302
	mov	dword ptr [r14], ebp
	mov	eax, 0xffffffff
.label_302:
	pop	rbx
	pop	r14
	pop	rbp
	ret	
.label_301:
	mov	rdi, rbx
	pop	rbx
	pop	r14
	pop	rbp
	jmp	fclose
	.section	.text
	.align	16
	#Procedure 0x403ea4
	.globl sub_403ea4
	.type sub_403ea4, @function
sub_403ea4:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x403eb0
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
	#Procedure 0x403ec8
	.globl sub_403ec8
	.type sub_403ec8, @function
sub_403ec8:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x403ed0

	.globl x2realloc
	.type x2realloc, @function
x2realloc:
	push	rbx
	mov	rax, qword ptr [rsi]
	test	rdi, rdi
	je	.label_306
	movabs	rcx, 0x5555555555555554
	cmp	rax, rcx
	jae	.label_308
	mov	rbx, rax
	shr	rbx, 1
	add	rbx, rax
	inc	rbx
	mov	qword ptr [rsi], rbx
	jne	.label_304
	call	free
	xor	eax, eax
	jmp	.label_307
.label_305:
	call	xalloc_die
.label_308:
	call	xalloc_die
	.section	.text
	.align	16
	#Procedure 0x403f0c
	.globl sub_403f0c
	.type sub_403f0c, @function
sub_403f0c:

	nop	word ptr cs:[rax + rax]
.label_306:
	test	rax, rax
	mov	ebx, 0x80
	cmovne	rbx, rax
	test	rbx, rbx
	js	.label_305
	mov	qword ptr [rsi], rbx
.label_304:
	mov	rsi, rbx
	call	realloc
	test	rbx, rbx
	je	.label_307
	test	rax, rax
	je	.label_305
.label_307:
	pop	rbx
	ret	
	.section	.text
	.align	16
	#Procedure 0x403f40

	.globl add_file_name
	.type add_file_name, @function
add_file_name:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x18
	mov	r14, r9
	mov	r12, r8
	mov	r13, rcx
	mov	rbx, rsi
	mov	r15, rdi
	mov	eax, dword ptr [r13]
	cmp	eax, 2
	jne	.label_309
	mov	ebp, dword ptr [rbx]
	xor	eax, eax
	test	ebp, ebp
	sete	al
	mov	ecx, dword ptr [rbx + rax*4]
	cmp	rcx, 3
	ja	.label_311
	mov	rdi, qword ptr [(rax * 8) + g_names]
	jmp	qword ptr [(rcx * 8) + label_310]
.label_758:
	dec	dword ptr [rdx]
	lea	rcx, [rsp + 8]
	xor	esi, esi
	mov	edx, 0xa
	mov	r8d, OFFSET FLAT:label_314
	mov	qword ptr [rsp + 0x10], rdi
	call	xstrtoul
	cmp	eax, 1
	jne	.label_322
	mov	qword ptr [rsp + 8], -1
	mov	rcx, -1
	jmp	.label_324
.label_759:
	dec	dword ptr [rdx + 4]
	lea	rcx, [rsp + 8]
	xor	esi, esi
	mov	edx, 0xa
	mov	r8d, OFFSET FLAT:label_314
	mov	qword ptr [rsp + 0x10], rdi
	call	xstrtoul
	cmp	eax, 1
	jne	.label_325
	mov	qword ptr [rsp + 8], -1
	mov	rcx, -1
	jmp	.label_323
.label_760:
	call	add_field_list
	jmp	.label_311
.label_325:
	test	eax, eax
	jne	.label_313
	mov	rcx, qword ptr [rsp + 8]
	test	rcx, rcx
	je	.label_313
.label_323:
	lea	rax, [rcx - 1]
	mov	rdx, qword ptr [rip + join_field_2]
	cmp	rdx, -1
	je	.label_319
	cmp	rdx, rax
	jne	.label_318
.label_319:
	mov	qword ptr [rip + join_field_2],  rax
	jmp	.label_311
.label_322:
	test	eax, eax
	jne	.label_313
	mov	rcx, qword ptr [rsp + 8]
	test	rcx, rcx
	je	.label_313
.label_324:
	lea	rax, [rcx - 1]
	mov	rdx, qword ptr [rip + join_field_1]
	cmp	rdx, -1
	je	.label_317
	cmp	rdx, rax
	jne	.label_318
.label_317:
	mov	qword ptr [rip + join_field_1],  rax
.label_311:
	mov	eax, 1
	test	ebp, ebp
	je	.label_309
	mov	ecx, dword ptr [rbx + 4]
	mov	dword ptr [rbx], ecx
	mov	rcx, qword ptr [rip + label_320]
	mov	qword ptr [rip + g_names],  rcx
.label_309:
	mov	ecx, dword ptr [r12]
	cdqe	
	mov	dword ptr [rbx + rax*4], ecx
	mov	qword ptr [(rax * 8) + g_names],  r15
	inc	eax
	mov	dword ptr [r13], eax
	cmp	dword ptr [r12], 3
	jne	.label_316
	mov	dword ptr [r14], 3
.label_316:
	add	rsp, 0x18
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_757:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_312
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
	mov	edi, 4
	mov	rsi, r15
	call	quotearg_style
	mov	rcx, rax
	xor	edi, edi
	xor	esi, esi
	xor	eax, eax
	mov	rdx, rbx
	call	error
	mov	edi, 1
	call	usage
.label_318:
	inc	rdx
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_321
	mov	rbp, rdx
	mov	edx, 5
	mov	rbx, rcx
	call	dcgettext
	mov	rcx, rax
	mov	edi, 1
	xor	esi, esi
	xor	eax, eax
	mov	rdx, rcx
	mov	rcx, rbp
	mov	r8, rbx
	call	error
.label_313:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_315
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
	mov	rdi, qword ptr [rsp + 0x10]
	call	quote
	mov	rcx, rax
	mov	edi, 1
	xor	esi, esi
	xor	eax, eax
	mov	rdx, rbx
	call	error
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404170

	.globl locale_charset
	.type locale_charset, @function
locale_charset:
	push	rax
	mov	edi, 0xe
	call	rpl_nl_langinfo
	test	rax, rax
	mov	ecx, OFFSET FLAT:label_314
	cmovne	rcx, rax
	cmp	byte ptr [rcx], 0
	mov	eax, OFFSET FLAT:label_326
	cmovne	rax, rcx
	pop	rcx
	ret	
	.section	.text
	.align	16
	#Procedure 0x404195
	.globl sub_404195
	.type sub_404195, @function
sub_404195:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4041a0
	.globl version_etc_ar
	.type version_etc_ar, @function
version_etc_ar:

	mov	r9, -1
	nop	word ptr [rax + rax]
.label_327:
	cmp	qword ptr [r8 + r9*8 + 8], 0
	lea	r9, [r9 + 1]
	jne	.label_327
	jmp	version_etc_arn
	.section	.text
	.align	16
	#Procedure 0x4041c1
	.globl sub_4041c1
	.type sub_4041c1, @function
sub_4041c1:

	nop	word ptr cs:[rax + rax]
.label_328:
	call	xalloc_die
	.section	.text
	.align	16
	#Procedure 0x4041d5
	.globl sub_4041d5
	.type sub_4041d5, @function
sub_4041d5:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4041e3
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
	je	.label_329
	test	r15, r15
	je	.label_328
.label_329:
	mov	rdi, r15
	mov	rsi, r14
	mov	rdx, rbx
	call	memcpy
	mov	rax, r15
	pop	rbx
	pop	r14
	pop	r15
	ret	
.label_330:
	call	abort
	.section	.text
	.align	16
	#Procedure 0x404225
	.globl sub_404225
	.type sub_404225, @function
sub_404225:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404234
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
	je	.label_330
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
	#Procedure 0x404290
	.globl quotearg_colon_mem
	.type quotearg_colon_mem, @function
quotearg_colon_mem:

	sub	rsp, 0x38
	mov	rax, rsi
	mov	rdx, rdi
	mov	rcx, qword ptr [rip + label_42]
	mov	qword ptr [rsp + 0x30], rcx
	movups	xmm0, xmmword ptr [rip + label_43]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0, xmmword ptr [rip + label_44]
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
	#Procedure 0x4042e4
	.globl sub_4042e4
	.type sub_4042e4, @function
sub_4042e4:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4042f0
	.globl initbuffer
	.type initbuffer, @function
initbuffer:

	xorps	xmm0, xmm0
	movups	xmmword ptr [rdi], xmm0
	mov	qword ptr [rdi + 0x10], 0
	ret	
	.section	.text
	.align	16
	#Procedure 0x4042ff
	.globl sub_4042ff
	.type sub_4042ff, @function
sub_4042ff:

	nop	
	.section	.text
	.align	16
	#Procedure 0x404300
	.globl freebuffer
	.type freebuffer, @function
freebuffer:

	mov	rdi, qword ptr [rdi + 0x10]
	jmp	free
	.section	.text
	.align	16
	#Procedure 0x404309
	.globl sub_404309
	.type sub_404309, @function
sub_404309:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x404310

	.globl dup_safer
	.type dup_safer, @function
dup_safer:
	xor	esi, esi
	mov	edx, 3
	xor	eax, eax
	jmp	rpl_fcntl
	.section	.text
	.align	16
	#Procedure 0x40431e
	.globl sub_40431e
	.type sub_40431e, @function
sub_40431e:

	nop	
	.section	.text
	.align	16
	#Procedure 0x404320

	.globl prjoin
	.type prjoin, @function
prjoin:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	push	rax
	mov	r14, rsi
	mov	r12, rdi
	mov	rbp, qword ptr [rip + label_338]
	test	rbp, rbp
	je	.label_339
	mov	eax, dword ptr [rip + tab]
	mov	ecx, OFFSET FLAT:uni_blank
	cmp	r12, rcx
	mov	ecx, OFFSET FLAT:join_field_2
	mov	r13d, OFFSET FLAT:join_field_1
	cmove	r13, rcx
	mov	rbx, r12
	cmove	rbx, r14
	test	eax, eax
	movsx	edx, al
	mov	ecx, 0x20
	cmovns	ecx, edx
	mov	r15b, 0x20
	js	.label_331
	mov	r15d, eax
.label_331:
	movzx	eax, cl
	mov	dword ptr [rsp + 4], eax
	jmp	.label_341
	.section	.text
	.align	16
	#Procedure 0x404383
	.globl sub_404383
	.type sub_404383, @function
sub_404383:

	nop	word ptr cs:[rax + rax]
.label_335:
	lea	rcx, [rax + 1]
	mov	qword ptr [rdi + 0x28], rcx
	mov	byte ptr [rax], r15b
.label_341:
	mov	ecx, dword ptr [rbp]
	cmp	ecx, 1
	mov	rax, r14
	cmove	rax, r12
	lea	rdx, [rbp + 8]
	test	ecx, ecx
	cmove	rdx, r13
	cmove	rax, rbx
	mov	rcx, qword ptr [rdx]
	cmp	qword ptr [rax + 0x18], rcx
	jbe	.label_336
	mov	rax, qword ptr [rax + 0x28]
	shl	rcx, 4
	mov	rdx, qword ptr [rax + rcx + 8]
	test	rdx, rdx
	je	.label_336
	mov	rdi, qword ptr [rax + rcx]
	mov	rcx, qword ptr [rip + stdout]
	mov	esi, 1
	call	fwrite_unlocked
	jmp	.label_340
	.section	.text
	.align	16
	#Procedure 0x4043e8
	.globl sub_4043e8
	.type sub_4043e8, @function
sub_4043e8:

	nop	dword ptr [rax + rax]
.label_336:
	mov	rdi, qword ptr [rip + empty_filler]
	test	rdi, rdi
	je	.label_340
	mov	rsi, qword ptr [rip + stdout]
	call	fputs_unlocked
.label_340:
	mov	rbp, qword ptr [rbp + 0x10]
	test	rbp, rbp
	je	.label_333
	mov	rdi, qword ptr [rip + stdout]
	mov	rax, qword ptr [rdi + 0x28]
	cmp	rax, qword ptr [rdi + 0x30]
	jb	.label_335
	mov	esi, dword ptr [rsp + 4]
	call	__overflow
	jmp	.label_341
.label_339:
	mov	eax, OFFSET FLAT:uni_blank
	cmp	r12, rax
	mov	rax, r12
	cmove	rax, r14
	mov	ecx, OFFSET FLAT:join_field_2
	mov	edx, OFFSET FLAT:join_field_1
	cmove	rdx, rcx
	mov	rcx, qword ptr [rdx]
	cmp	qword ptr [rax + 0x18], rcx
	jbe	.label_337
	mov	rax, qword ptr [rax + 0x28]
	shl	rcx, 4
	mov	rdx, qword ptr [rax + rcx + 8]
	test	rdx, rdx
	je	.label_337
	mov	rdi, qword ptr [rax + rcx]
	mov	rcx, qword ptr [rip + stdout]
	mov	esi, 1
	call	fwrite_unlocked
	jmp	.label_332
.label_337:
	mov	rdi, qword ptr [rip + empty_filler]
	test	rdi, rdi
	je	.label_332
	mov	rsi, qword ptr [rip + stdout]
	call	fputs_unlocked
.label_332:
	mov	rsi, qword ptr [rip + join_field_1]
	mov	rdx, qword ptr [rip + autocount_1]
	mov	rdi, r12
	call	prfields
	mov	rsi, qword ptr [rip + join_field_2]
	mov	rdx, qword ptr [rip + autocount_2]
	mov	rdi, r14
	call	prfields
.label_333:
	mov	al, byte ptr [rip + eolchar]
	xor	ecx, ecx
	test	al, al
	mov	esi, 0xa
	cmovne	esi, ecx
	mov	rdi, qword ptr [rip + stdout]
	mov	rax, qword ptr [rdi + 0x28]
	cmp	rax, qword ptr [rdi + 0x30]
	jae	.label_334
	lea	rcx, [rax + 1]
	mov	qword ptr [rdi + 0x28], rcx
	mov	byte ptr [rax], sil
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_334:
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
	#Procedure 0x40451b
	.globl sub_40451b
	.type sub_40451b, @function
sub_40451b:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404520

	.globl memcoll
	.type memcoll, @function
memcoll:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x28
	mov	rbx, rcx
	mov	r14, rdx
	mov	rbp, rsi
	mov	r12, rdi
	cmp	rbp, rbx
	jne	.label_342
	mov	rdi, r12
	mov	rsi, r14
	mov	rdx, rbp
	call	memcmp
	test	eax, eax
	je	.label_346
.label_342:
	mov	al, byte ptr [r12 + rbp]
	mov	byte ptr [rsp + 7], al
	mov	al, byte ptr [r14 + rbx]
	mov	byte ptr [rsp + 6], al
	mov	byte ptr [r12 + rbp], 0
	mov	byte ptr [r14 + rbx], 0
	mov	qword ptr [rsp + 0x10], rbp
	lea	r13, [rbp + 1]
	mov	qword ptr [rsp + 0x20], rbx
	lea	r15, [rbx + 1]
	call	__errno_location
	mov	rbx, rax
	mov	qword ptr [rsp + 0x18], r14
	mov	rbp, r14
	mov	qword ptr [rsp + 8], r12
	mov	r14, r12
	nop	dword ptr [rax]
.label_343:
	mov	dword ptr [rbx], 0
	mov	rdi, r14
	mov	rsi, rbp
	call	strcoll
	test	eax, eax
	jne	.label_344
	mov	rdi, r14
	call	strlen
	mov	r12, rax
	inc	r12
	mov	rdi, rbp
	call	strlen
	inc	rax
	sub	r15, rax
	sub	r13, r12
	je	.label_345
	add	rbp, rax
	add	r14, r12
	mov	eax, 1
	test	r15, r15
	jne	.label_343
	jmp	.label_344
.label_345:
	neg	r15
	sbb	eax, eax
.label_344:
	mov	rcx, qword ptr [rsp + 0x10]
	mov	rdx, qword ptr [rsp + 8]
	mov	bl, byte ptr [rsp + 7]
	mov	byte ptr [rdx + rcx], bl
	mov	rcx, qword ptr [rsp + 0x20]
	mov	rdx, qword ptr [rsp + 0x18]
	mov	bl, byte ptr [rsp + 6]
	mov	byte ptr [rdx + rcx], bl
	jmp	.label_347
.label_346:
	call	__errno_location
	mov	dword ptr [rax], 0
	xor	eax, eax
.label_347:
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
	#Procedure 0x40462d
	.globl sub_40462d
	.type sub_40462d, @function
sub_40462d:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x404630
	.globl quote_n_mem
	.type quote_n_mem, @function
quote_n_mem:

	mov	ecx, OFFSET FLAT:quote_quoting_options
	jmp	quotearg_n_options
	.section	.text
	.align	16
	#Procedure 0x40463a
	.globl sub_40463a
	.type sub_40463a, @function
sub_40463a:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404640

	.globl version_etc_va
	.type version_etc_va, @function
version_etc_va:
	movsxd	r10, dword ptr [r8]
	cmp	r10, 0x28
	ja	.label_348
	mov	r9, r10
	add	r9, qword ptr [r8 + 0x10]
	lea	r10d, [r10 + 8]
	mov	dword ptr [r8], r10d
	jmp	.label_350
.label_348:
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
.label_350:
	sub	rsp, 0x58
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp], rax
	xor	r9d, r9d
	test	rax, rax
	je	.label_351
	cmp	r10d, 0x29
	jae	.label_360
	movsxd	r9, r10d
	add	r9, qword ptr [r8 + 0x10]
	add	r10d, 8
	mov	dword ptr [r8], r10d
	jmp	.label_349
.label_360:
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
.label_349:
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp + 8], rax
	mov	r9d, 1
	test	rax, rax
	je	.label_351
	cmp	r10d, 0x29
	jae	.label_358
	movsxd	r9, r10d
	add	r9, qword ptr [r8 + 0x10]
	add	r10d, 8
	mov	dword ptr [r8], r10d
	jmp	.label_359
.label_358:
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
.label_359:
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp + 0x10], rax
	mov	r9d, 2
	test	rax, rax
	je	.label_351
	cmp	r10d, 0x29
	jae	.label_356
	movsxd	r9, r10d
	add	r9, qword ptr [r8 + 0x10]
	add	r10d, 8
	mov	dword ptr [r8], r10d
	jmp	.label_357
.label_356:
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
.label_357:
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp + 0x18], rax
	mov	r9d, 3
	test	rax, rax
	je	.label_351
	cmp	r10d, 0x29
	jae	.label_354
	movsxd	r9, r10d
	add	r9, qword ptr [r8 + 0x10]
	add	r10d, 8
	mov	dword ptr [r8], r10d
	jmp	.label_355
.label_354:
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
.label_355:
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp + 0x20], rax
	mov	r9d, 4
	test	rax, rax
	je	.label_351
	cmp	r10d, 0x29
	jae	.label_352
	movsxd	r9, r10d
	add	r9, qword ptr [r8 + 0x10]
	add	r10d, 8
	mov	dword ptr [r8], r10d
	jmp	.label_353
.label_352:
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
.label_353:
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp + 0x28], rax
	mov	r9d, 5
	test	rax, rax
	je	.label_351
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp + 0x30], rax
	mov	r9d, 6
	test	rax, rax
	je	.label_351
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp + 0x38], rax
	mov	r9d, 7
	test	rax, rax
	je	.label_351
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp + 0x40], rax
	mov	r9d, 8
	test	rax, rax
	je	.label_351
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp + 0x48], rax
	cmp	rax, 1
	mov	r9d, 9
	sbb	r9, -1
.label_351:
	lea	r8, [rsp]
	call	version_etc_arn
	add	rsp, 0x58
	ret	
	.section	.text
	.align	16
	#Procedure 0x404822
	.globl sub_404822
	.type sub_404822, @function
sub_404822:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404830
	.globl fdadvise
	.type fdadvise, @function
fdadvise:

	jmp	posix_fadvise
	.section	.text
	.align	16
	#Procedure 0x404835
	.globl sub_404835
	.type sub_404835, @function
sub_404835:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404840

	.globl close_stdout
	.type close_stdout, @function
close_stdout:
	push	rbp
	push	rbx
	push	rax
	mov	rdi, qword ptr [rip + stdout]
	call	close_stream
	test	eax, eax
	je	.label_364
	mov	bl, byte ptr [rip + ignore_EPIPE]
	call	__errno_location
	mov	rbp, rax
	cmp	bl, 0
	je	.label_362
	cmp	dword ptr [rbp], 0x20
	jne	.label_362
.label_364:
	mov	rdi, qword ptr [rip + stderr]
	call	close_stream
	test	eax, eax
	jne	.label_366
	add	rsp, 8
	pop	rbx
	pop	rbp
	ret	
.label_361:
	call	quotearg_colon
	mov	rcx, rax
	xor	edi, edi
	mov	edx, OFFSET FLAT:label_363
	xor	eax, eax
	mov	esi, ebp
	mov	r8, rbx
	call	error
	mov	edi, dword ptr [rip + exit_failure]
	call	_exit
	nop	dword ptr [rax]
	nop	dword ptr [rax + rax]
.label_362:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_365
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
	mov	rdi, qword ptr [rip + file_name]
	test	rdi, rdi
	mov	ebp, dword ptr [rbp]
	jne	.label_361
	xor	edi, edi
	mov	edx, OFFSET FLAT:label_205
	xor	eax, eax
	mov	esi, ebp
	mov	rcx, rbx
	call	error
	mov	edi, dword ptr [rip + exit_failure]
	call	_exit
.label_366:
	mov	edi, dword ptr [rip + exit_failure]
	call	_exit
	.section	.text
	.align	16
	#Procedure 0x404900

	.globl quotearg_colon
	.type quotearg_colon, @function
quotearg_colon:
	sub	rsp, 0x38
	mov	rax, rdi
	mov	rcx, qword ptr [rip + label_42]
	mov	qword ptr [rsp + 0x30], rcx
	movups	xmm0, xmmword ptr [rip + label_43]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0, xmmword ptr [rip + label_44]
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
	#Procedure 0x404955
	.globl sub_404955
	.type sub_404955, @function
sub_404955:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404960
	.globl xmemcoll0
	.type xmemcoll0, @function
xmemcoll0:

	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	push	rax
	mov	r14, rcx
	mov	r15, rdx
	mov	rbp, rsi
	mov	r12, rdi
	call	memcoll0
	mov	r13d, eax
	call	__errno_location
	mov	ebx, dword ptr [rax]
	test	ebx, ebx
	je	.label_367
	dec	rbp
	dec	r14
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_223
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	xor	edi, edi
	xor	eax, eax
	mov	esi, ebx
	mov	rdx, rcx
	call	error
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_224
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	xor	edi, edi
	xor	esi, esi
	xor	eax, eax
	mov	rdx, rcx
	call	error
	mov	eax, dword ptr [rip + exit_failure]
	mov	dword ptr [rsp + 4], eax
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_221
	mov	edx, 5
	call	dcgettext
	mov	rbx, r15
	mov	r15d, r13d
	mov	r13, rax
	xor	edi, edi
	mov	esi, 8
	mov	rdx, r12
	mov	rcx, rbp
	call	quotearg_n_style_mem
	mov	rbp, rax
	mov	edi, 1
	mov	esi, 8
	mov	rdx, rbx
	mov	rcx, r14
	call	quotearg_n_style_mem
	mov	rbx, rax
	xor	esi, esi
	xor	eax, eax
	mov	edi, dword ptr [rsp + 4]
	mov	rdx, r13
	mov	r13d, r15d
	mov	rcx, rbp
	mov	r8, rbx
	call	error
.label_367:
	mov	eax, r13d
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
	#Procedure 0x404a54
	.globl sub_404a54
	.type sub_404a54, @function
sub_404a54:

	nop	word ptr cs:[rax + rax]
.label_368:
	call	abort
	.section	.text
	.align	16
	#Procedure 0x404a65
	.globl quotearg_custom
	.type quotearg_custom, @function
quotearg_custom:

	sub	rsp, 0x38
	mov	rax, rdx
	mov	rcx, qword ptr [rip + label_42]
	mov	qword ptr [rsp + 0x30], rcx
	movups	xmm0, xmmword ptr [rip + label_43]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0, xmmword ptr [rip + label_44]
	movaps	xmmword ptr [rsp + 0x10], xmm0
	movups	xmm0, xmmword ptr [rip + default_quoting_options]
	movaps	xmmword ptr [rsp], xmm0
	mov	dword ptr [rsp], 0xa
	test	rdi, rdi
	je	.label_368
	test	rsi, rsi
	je	.label_368
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
	#Procedure 0x404ad0

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
	je	.label_369
	cmp	r15, -2
	jb	.label_369
	xor	edi, edi
	call	hard_locale
	test	al, al
	jne	.label_369
	movzx	eax, byte ptr [r14]
	mov	dword ptr [rbx], eax
	mov	r15d, 1
.label_369:
	mov	rax, r15
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	ret	
	.section	.text
	.align	16
	#Procedure 0x404b26
	.globl sub_404b26
	.type sub_404b26, @function
sub_404b26:

	nop	word ptr cs:[rax + rax]
.label_370:
	push	rax
	call	abort
	.section	.text
	.align	16
	#Procedure 0x404b36
	.globl sub_404b36
	.type sub_404b36, @function
sub_404b36:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404b3b
	.globl set_custom_quoting
	.type set_custom_quoting, @function
set_custom_quoting:

	test	rdi, rdi
	mov	eax, OFFSET FLAT:default_quoting_options
	cmovne	rax, rdi
	mov	dword ptr [rax], 0xa
	test	rsi, rsi
	je	.label_370
	test	rdx, rdx
	je	.label_370
	mov	qword ptr [rax + 0x28], rsi
	mov	qword ptr [rax + 0x30], rdx
	ret	
	.section	.text
	.align	16
	#Procedure 0x404b60
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
	#Procedure 0x404b93
	.globl sub_404b93
	.type sub_404b93, @function
sub_404b93:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404ba0

	.globl version_etc
	.type version_etc, @function
version_etc:
	sub	rsp, 0xd8
	test	al, al
	je	.label_371
	movaps	xmmword ptr [rsp + 0x50], xmm0
	movaps	xmmword ptr [rsp + 0x60], xmm1
	movaps	xmmword ptr [rsp + 0x70], xmm2
	movaps	xmmword ptr [rsp + 0x80], xmm3
	movaps	xmmword ptr [rsp + 0x90], xmm4
	movaps	xmmword ptr [rsp + 0xa0], xmm5
	movaps	xmmword ptr [rsp + 0xb0], xmm6
	movaps	xmmword ptr [rsp + 0xc0], xmm7
.label_371:
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
	#Procedure 0x404c23
	.globl sub_404c23
	.type sub_404c23, @function
sub_404c23:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404c30
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
	#Procedure 0x404c48
	.globl sub_404c48
	.type sub_404c48, @function
sub_404c48:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404c50
	.globl quotearg_n_mem
	.type quotearg_n_mem, @function
quotearg_n_mem:

	mov	ecx, OFFSET FLAT:default_quoting_options
	jmp	quotearg_n_options
	.section	.text
	.align	16
	#Procedure 0x404c5a
	.globl sub_404c5a
	.type sub_404c5a, @function
sub_404c5a:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404c60
	.globl xnmalloc
	.type xnmalloc, @function
xnmalloc:

	push	rbx
	mov	rbx, rsi
	movabs	rax, 0x7fffffffffffffff
	xor	edx, edx
	div	rbx
	cmp	rax, rdi
	jb	.label_372
	imul	rbx, rdi
	mov	rdi, rbx
	call	malloc
	test	rbx, rbx
	je	.label_373
	test	rax, rax
	je	.label_372
.label_373:
	pop	rbx
	ret	
.label_372:
	call	xalloc_die
	.section	.text
	.align	16
	#Procedure 0x404c95
	.globl sub_404c95
	.type sub_404c95, @function
sub_404c95:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404ca0
	.globl quotearg_char_mem
	.type quotearg_char_mem, @function
quotearg_char_mem:

	sub	rsp, 0x38
	mov	ecx, edx
	mov	r8, rsi
	mov	rdx, rdi
	mov	rsi, qword ptr [rip + label_42]
	mov	qword ptr [rsp + 0x30], rsi
	movups	xmm0, xmmword ptr [rip + label_43]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0, xmmword ptr [rip + label_44]
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
	#Procedure 0x404d0e
	.globl sub_404d0e
	.type sub_404d0e, @function
sub_404d0e:

	nop	
.label_378:
	mov	rbx, qword ptr [rip + stderr]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_374
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
	#Procedure 0x404d48
	.globl sub_404d48
	.type sub_404d48, @function
sub_404d48:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404d4d

	.globl usage
	.type usage, @function
usage:
	push	rbp
	push	rbx
	push	rax
	mov	ebp, edi
	test	ebp, ebp
	jne	.label_378
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_383
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	mov	rdx, qword ptr [rip + program_name]
	mov	edi, 1
	xor	eax, eax
	mov	rsi, rcx
	call	__printf_chk
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_375
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_395
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_387
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_388
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_389
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_386
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_382
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_390
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_391
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_392
	mov	edx, 5
	call	dcgettext
	mov	rsi, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:label_376
	mov	ecx, OFFSET FLAT:label_377
	xor	eax, eax
	call	__printf_chk
	mov	edi, 5
	xor	esi, esi
	call	setlocale
	test	rax, rax
	je	.label_384
	mov	esi, OFFSET FLAT:label_385
	mov	edx, 3
	mov	rdi, rax
	call	strncmp
	test	eax, eax
	je	.label_384
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_381
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	call	fputs_unlocked
.label_384:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_393
	mov	edx, 5
	call	dcgettext
	mov	rsi, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:label_377
	mov	ecx, OFFSET FLAT:label_379
	xor	eax, eax
	call	__printf_chk
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_394
	mov	edx, 5
	call	dcgettext
	mov	rsi, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:label_379
	mov	ecx, OFFSET FLAT:label_380
	xor	eax, eax
	call	__printf_chk
	mov	edi, ebp
	call	exit
	.section	.text
	.align	16
	#Procedure 0x404f70

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
	je	.label_396
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
.label_396:
	call	abort
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

	.globl readlinebuffer_delim
	.type readlinebuffer_delim, @function
readlinebuffer_delim:
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
	jne	.label_397
	mov	r12, qword ptr [r15 + 0x10]
	mov	r14, qword ptr [r15]
	add	r14, r12
	mov	dword ptr [rsp + 4], edx
	movsx	edx, dl
	mov	r13, r12
	mov	dword ptr [rsp], edx
	nop	word ptr cs:[rax + rax]
.label_402:
	mov	rax, qword ptr [rbp + 8]
	cmp	rax, qword ptr [rbp + 0x10]
	jae	.label_399
	lea	rcx, [rax + 1]
	mov	qword ptr [rbp + 8], rcx
	movzx	ebx, byte ptr [rax]
.label_400:
	cmp	r13, r14
	jne	.label_401
	mov	r13, qword ptr [r15]
	mov	rdi, r12
	mov	rsi, r15
	call	x2realloc
	mov	edx, dword ptr [rsp]
	mov	r12, rax
	add	r13, r12
	mov	qword ptr [r15 + 0x10], r12
	mov	r14, r12
	add	r14, qword ptr [r15]
.label_401:
	mov	byte ptr [r13], bl
	inc	r13
	cmp	ebx, edx
	jne	.label_402
	jmp	.label_398
.label_399:
	mov	rdi, rbp
	call	__uflow
	mov	edx, dword ptr [rsp]
	mov	ebx, eax
	cmp	ebx, -1
	jne	.label_400
	cmp	r13, r12
	mov	ecx, dword ptr [rsp + 4]
	mov	eax, 0
	je	.label_397
	test	byte ptr [rbp], 0x20
	jne	.label_397
	cmp	byte ptr [r13 - 1], cl
	mov	ebx, edx
	jne	.label_400
.label_398:
	sub	r13, r12
	mov	qword ptr [r15 + 8], r13
	mov	rax, r15
.label_397:
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
	#Procedure 0x4050af
	.globl sub_4050af
	.type sub_4050af, @function
sub_4050af:

	nop	
.label_403:
	call	xalloc_die
	.section	.text
	.align	16
	#Procedure 0x4050b5
	.globl sub_4050b5
	.type sub_4050b5, @function
sub_4050b5:

	nop	dword ptr [rax + rax]
.label_405:
	mov	rsi, rbx
	call	realloc
	test	rbx, rbx
	je	.label_404
	test	rax, rax
	je	.label_403
.label_404:
	pop	rbx
	ret	
	.section	.text
	.align	16
	#Procedure 0x4050d1
	.globl xnrealloc
	.type xnrealloc, @function
xnrealloc:

	push	rbx
	mov	rbx, rdx
	movabs	rax, 0x7fffffffffffffff
	xor	edx, edx
	div	rbx
	cmp	rax, rsi
	jb	.label_403
	imul	rbx, rsi
	test	rdi, rdi
	je	.label_405
	test	rbx, rbx
	jne	.label_405
	call	free
	xor	eax, eax
	pop	rbx
	ret	
	.section	.text
	.align	16
	#Procedure 0x405100

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
	je	.label_406
	test	r15, r15
	je	.label_407
.label_406:
	mov	rdi, r15
	mov	rsi, r14
	mov	rdx, rbx
	call	memcpy
	mov	rax, r15
	pop	rbx
	pop	r14
	pop	r15
	ret	
.label_407:
	call	xalloc_die
	.section	.text
	.align	16
	#Procedure 0x40513c
	.globl sub_40513c
	.type sub_40513c, @function
sub_40513c:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x405140
	.globl x2nrealloc
	.type x2nrealloc, @function
x2nrealloc:

	push	rbx
	mov	rbx, rdx
	mov	rcx, qword ptr [rsi]
	test	rdi, rdi
	je	.label_408
	movabs	rax, 0x5555555555555554
	xor	edx, edx
	div	rbx
	cmp	rax, rcx
	jbe	.label_413
	mov	rax, rcx
	shr	rax, 1
	lea	rcx, [rcx + rax + 1]
	jmp	.label_409
.label_413:
	call	xalloc_die
.label_408:
	test	rcx, rcx
	jne	.label_414
	mov	eax, 0x80
	xor	edx, edx
	div	rbx
	xor	ecx, ecx
	cmp	rbx, 0x80
	seta	cl
	add	rcx, rax
.label_414:
	movabs	rax, 0x7fffffffffffffff
	xor	edx, edx
	div	rbx
	cmp	rax, rcx
	jb	.label_412
.label_409:
	mov	qword ptr [rsi], rcx
	imul	rbx, rcx
	test	rdi, rdi
	je	.label_410
	test	rbx, rbx
	jne	.label_410
	call	free
	xor	eax, eax
	pop	rbx
	ret	
.label_410:
	mov	rsi, rbx
	call	realloc
	test	rbx, rbx
	je	.label_411
	test	rax, rax
	je	.label_413
.label_411:
	pop	rbx
	ret	
.label_412:
	call	xalloc_die
	.section	.text
	.align	16
	#Procedure 0x4051d7
	.globl sub_4051d7
	.type sub_4051d7, @function
sub_4051d7:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4051e0
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
	#Procedure 0x4051ef
	.globl sub_4051ef
	.type sub_4051ef, @function
sub_4051ef:

	nop	
.label_415:
	call	xalloc_die
	.section	.text
	.align	16
	#Procedure 0x4051f5
	.globl sub_4051f5
	.type sub_4051f5, @function
sub_4051f5:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4051ff

	.globl xcalloc
	.type xcalloc, @function
xcalloc:
	push	rax
	movabs	rax, 0x7fffffffffffffff
	xor	edx, edx
	div	rsi
	cmp	rax, rdi
	jb	.label_415
	call	rpl_calloc
	test	rax, rax
	je	.label_415
	pop	rcx
	ret	
	.section	.text
	.align	16
	#Procedure 0x405220
	.globl close_stdout_set_ignore_EPIPE
	.type close_stdout_set_ignore_EPIPE, @function
close_stdout_set_ignore_EPIPE:

	mov	byte ptr [rip + ignore_EPIPE],  dil
	ret	
	.section	.text
	.align	16
	#Procedure 0x405228
	.globl sub_405228
	.type sub_405228, @function
sub_405228:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x405230
	.globl emit_bug_reporting_address
	.type emit_bug_reporting_address, @function
emit_bug_reporting_address:

	push	rax
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_416
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:label_417
	xor	eax, eax
	mov	rsi, rcx
	call	__printf_chk
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_419
	mov	edx, 5
	call	dcgettext
	mov	rsi, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:label_376
	mov	ecx, OFFSET FLAT:label_377
	xor	eax, eax
	call	__printf_chk
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_418
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	pop	rax
	jmp	fputs_unlocked
	.section	.text
	.align	16
	#Procedure 0x4052a4
	.globl sub_4052a4
	.type sub_4052a4, @function
sub_4052a4:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4052b0
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
	#Procedure 0x405325
	.globl sub_405325
	.type sub_405325, @function
sub_405325:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x405330

	.globl xstrtoul
	.type xstrtoul, @function
xstrtoul:
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
	jae	.label_430
	mov	qword ptr [rsp], rcx
	call	__errno_location
	mov	r15, rax
	mov	dword ptr [r15], 0
	call	__ctype_b_loc
	mov	rcx, qword ptr [rax]
	mov	rdx, rbx
	nop	word ptr cs:[rax + rax]
.label_420:
	movzx	eax, byte ptr [rdx]
	inc	rdx
	test	byte ptr [rcx + rax*2 + 1], 0x20
	jne	.label_420
	test	rbp, rbp
	lea	rsi, [rsp + 0x10]
	cmovne	rsi, rbp
	mov	r13d, 4
	cmp	al, 0x2d
	je	.label_422
	mov	rdi, rbx
	mov	edx, r12d
	mov	qword ptr [rsp + 8], rsi
	call	strtoul
	mov	rbp, rax
	mov	rax, qword ptr [rsp + 8]
	mov	r12, qword ptr [rax]
	cmp	r12, rbx
	je	.label_439
	mov	eax, dword ptr [r15]
	xor	ebx, ebx
	test	eax, eax
	je	.label_438
	cmp	eax, 0x22
	jne	.label_422
	mov	ebx, 1
.label_438:
	test	r14, r14
	jne	.label_440
	jmp	.label_425
.label_439:
	test	r14, r14
	je	.label_422
	movsx	esi, byte ptr [rbx]
	test	esi, esi
	je	.label_422
	mov	rdi, r14
	call	strchr
	xor	ebx, ebx
	mov	ebp, 1
	test	rax, rax
	je	.label_422
.label_440:
	movsx	r13d, byte ptr [r12]
	test	r13d, r13d
	je	.label_425
	mov	rdi, r14
	mov	esi, r13d
	call	strchr
	test	rax, rax
	je	.label_429
	mov	r15d, 1
	mov	esi, 0x400
	lea	eax, [r13 - 0x45]
	cmp	eax, 0x2f
	ja	.label_424
	movabs	rdx, 0x814400308945
	bt	rdx, rax
	jae	.label_424
	mov	esi, 0x30
	mov	rdi, r14
	call	strchr
	mov	r15d, 1
	mov	esi, 0x400
	test	rax, rax
	je	.label_424
	movsx	eax, byte ptr [r12 + 1]
	mov	r15d, 1
	mov	esi, 0x400
	cmp	eax, 0x42
	je	.label_426
	cmp	eax, 0x44
	je	.label_426
	cmp	eax, 0x69
	jne	.label_424
	xor	eax, eax
	cmp	byte ptr [r12 + 2], 0x42
	sete	al
	lea	r15, [rax + rax + 1]
	mov	esi, 0x400
	jmp	.label_424
.label_426:
	mov	r15d, 2
	mov	esi, 0x3e8
.label_424:
	add	r13d, -0x42
	cmp	r13d, 0x35
	ja	.label_429
	xor	eax, eax
	jmp	qword ptr [(r13 * 8) + label_436]
.label_708:
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
	jmp	.label_437
.label_429:
	mov	rax, qword ptr [rsp]
	mov	qword ptr [rax], rbp
	or	ebx, 2
	jmp	.label_427
.label_709:
	mov	rdi, -1
	mov	rax, -1
	xor	edx, edx
	div	rsi
	imul	rsi, rbp
	cmp	rax, rbp
	cmovb	rsi, rdi
	sbb	eax, eax
	jmp	.label_431
.label_710:
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
	jmp	.label_437
.label_712:
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
	jmp	.label_437
.label_706:
	xor	eax, eax
	mov	rdx, rbp
	shr	rdx, 0x36
	setne	al
	shl	rbp, 0xa
	jmp	.label_421
.label_707:
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
.label_437:
	and	dl, 1
	movzx	eax, dl
	jmp	.label_428
.label_711:
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
	jmp	.label_428
.label_713:
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
	jmp	.label_435
.label_714:
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
.label_435:
	movzx	eax, dl
.label_431:
	and	eax, 1
.label_428:
	mov	rbp, rsi
.label_423:
	or	eax, ebx
	lea	rcx, [r12 + r15]
	mov	rdx, qword ptr [rsp + 8]
	mov	qword ptr [rdx], rcx
	lea	ebx, [rax + 2]
	cmp	byte ptr [r12 + r15], 0
	cmove	ebx, eax
.label_425:
	mov	rax, qword ptr [rsp]
	mov	qword ptr [rax], rbp
.label_427:
	mov	r13d, ebx
.label_422:
	mov	eax, r13d
	add	rsp, 0x18
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_715:
	xor	eax, eax
	mov	rdx, rbp
	shr	rdx, 0x37
	setne	al
	shl	rbp, 9
.label_421:
	cmp	rdx, 1
	sbb	rdx, rdx
	not	rdx
	or	rbp, rdx
	jmp	.label_423
.label_716:
	lea	rax, [rbp + rbp]
	test	rbp, rbp
	mov	rcx, -1
	cmovns	rcx, rax
	shr	rbp, 0x3f
	mov	eax, ebp
	mov	rbp, rcx
	jmp	.label_423
.label_430:
	mov	edi, OFFSET FLAT:label_432
	mov	esi, OFFSET FLAT:label_433
	mov	edx, 0x54
	mov	ecx, OFFSET FLAT:label_434
	call	__assert_fail
	.section	.text
	.align	16
	#Procedure 0x40594d
	.globl sub_40594d
	.type sub_40594d, @function
sub_40594d:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x405950

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
	je	.label_447
	mov	edx, OFFSET FLAT:label_456
	xor	eax, eax
	mov	rdi, r14
	mov	r8, rbx
	call	__fprintf_chk
	jmp	.label_443
.label_447:
	mov	edx, OFFSET FLAT:label_445
	xor	eax, eax
	mov	rdi, r14
	mov	rcx, rbx
	mov	r8, r9
	call	__fprintf_chk
.label_443:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_449
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
	mov	esi, OFFSET FLAT:label_446
	mov	edx, 5
	call	dcgettext
	mov	rdi, rax
	mov	rsi, r14
	call	fputs_unlocked
	cmp	r12, 9
	ja	.label_451
	jmp	qword ptr [(r12 * 8) + label_452]
.label_693:
	add	rsp, 8
	jmp	.label_444
.label_451:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_459
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
	jmp	.label_444
.label_694:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_450
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
.label_695:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_441
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
.label_696:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_457
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
.label_697:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_454
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
	jmp	.label_444
.label_698:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_453
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
	jmp	.label_444
.label_699:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_455
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
	jmp	.label_444
.label_700:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_458
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
	jmp	.label_444
.label_702:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_442
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
	jmp	.label_444
.label_701:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_448
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
.label_444:
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	ret	
	.section	.text
	.align	16
	#Procedure 0x405ca8
	.globl sub_405ca8
	.type sub_405ca8, @function
sub_405ca8:

	nop	dword ptr [rax + rax]
.label_460:
	call	abort
	.section	.text
	.align	16
	#Procedure 0x405cb5
	.globl sub_405cb5
	.type sub_405cb5, @function
sub_405cb5:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x405cbd

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
	je	.label_460
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
	#Procedure 0x405d20

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
	jne	.label_462
	test	eax, eax
	sete	cl
	neg	eax
	sbb	ebx, ebx
	test	r14, r14
	jne	.label_461
	test	cl, cl
	jne	.label_461
	call	__errno_location
	xor	ecx, ecx
	cmp	dword ptr [rax], 9
	mov	ebx, 0xffffffff
	cmove	ebx, ecx
	jmp	.label_461
.label_462:
	mov	ebx, 0xffffffff
	test	eax, eax
	jne	.label_461
	call	__errno_location
	mov	dword ptr [rax], 0
.label_461:
	mov	eax, ebx
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x405d80

	.globl add_field_list
	.type add_field_list, @function
add_field_list:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	push	rax
	mov	r15, rdi
	movabs	r13, 0x100100000201
	lea	r14, [rsp]
	nop	dword ptr [rax]
.label_474:
	mov	r12, r15
	mov	rax, r12
	nop	word ptr cs:[rax + rax]
.label_470:
	movzx	ecx, byte ptr [rax]
	inc	rax
	cmp	rcx, 0x2c
	ja	.label_470
	bt	r13, rcx
	jae	.label_470
	cmp	rax, 1
	je	.label_463
	test	cl, cl
	mov	r15d, 0
	je	.label_465
	mov	byte ptr [rax - 1], 0
	mov	r15, rax
	jmp	.label_465
	.section	.text
	.align	16
	#Procedure 0x405ddb
	.globl sub_405ddb
	.type sub_405ddb, @function
sub_405ddb:

	nop	dword ptr [rax + rax]
.label_463:
	xor	r15d, r15d
.label_465:
	movsx	ebx, byte ptr [r12]
	lea	eax, [rbx - 0x31]
	cmp	eax, 2
	jae	.label_471
	cmp	byte ptr [r12 + 1], 0x2e
	jne	.label_464
	add	r12, 2
	xor	esi, esi
	mov	edx, 0xa
	mov	r8d, OFFSET FLAT:label_314
	mov	rdi, r12
	mov	rcx, r14
	call	xstrtoul
	cmp	eax, 1
	jne	.label_468
	mov	qword ptr [rsp], -1
	mov	rbp, -1
	jmp	.label_469
	.section	.text
	.align	16
	#Procedure 0x405e2e
	.globl sub_405e2e
	.type sub_405e2e, @function
sub_405e2e:

	nop	
.label_471:
	cmp	ebx, 0x30
	jne	.label_467
	xor	ebx, ebx
	cmp	byte ptr [r12 + 1], 0
	mov	ebp, 0
	je	.label_476
	jmp	.label_464
	.section	.text
	.align	16
	#Procedure 0x405e46
	.globl sub_405e46
	.type sub_405e46, @function
sub_405e46:

	nop	word ptr cs:[rax + rax]
.label_468:
	test	eax, eax
	jne	.label_466
	mov	rbp, qword ptr [rsp]
	test	rbp, rbp
	je	.label_466
.label_469:
	add	ebx, -0x30
	dec	rbp
.label_476:
	mov	edi, 0x18
	call	xmalloc
	mov	dword ptr [rax], ebx
	mov	qword ptr [rax + 8], rbp
	mov	qword ptr [rax + 0x10], 0
	mov	rcx, qword ptr [rip + outlist_end]
	mov	qword ptr [rcx + 0x10], rax
	mov	qword ptr [rip + outlist_end],  rax
	test	r15, r15
	jne	.label_474
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_467:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_472
	jmp	.label_473
.label_464:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_475
	jmp	.label_473
.label_466:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_315
.label_473:
	mov	edx, 5
	call	dcgettext
	mov	r14, rax
	mov	rdi, r12
	call	quote
	mov	rcx, rax
	mov	edi, 1
	xor	esi, esi
	xor	eax, eax
	mov	rdx, r14
	call	error
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x405ef0

	.globl main
	.type main, @function
main:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x68
	mov	r15, rsi
	mov	ebx, edi
	mov	dword ptr [rsp + 0x30], 0
	mov	qword ptr [rsp + 0x40], 0
	mov	dword ptr [rsp + 0x34], 0
	mov	rdi, qword ptr [r15]
	call	set_program_name
	mov	edi, 6
	mov	esi, OFFSET FLAT:label_314
	call	setlocale
	mov	edi, OFFSET FLAT:label_566
	mov	esi, OFFSET FLAT:label_567
	call	bindtextdomain
	mov	edi, OFFSET FLAT:label_566
	call	textdomain
	mov	edi, 3
	call	hard_locale
	mov	byte ptr [rip + hard_LC_COLLATE],  al
	mov	edi, OFFSET FLAT:close_stdout
	call	atexit
	mov	edi, OFFSET FLAT:free_spareline
	call	atexit
	mov	byte ptr [rip + print_pairables],  1
	mov	byte ptr [rip + seen_unpairable],  0
	mov	byte ptr [rip + label_555],  0
	mov	byte ptr [rip + issued_disorder_warning],  0
	mov	dword ptr [rip + check_input_order],  0
	mov	edx, OFFSET FLAT:label_572
	mov	ecx, OFFSET FLAT:longopts
	xor	r8d, r8d
	mov	edi, ebx
	mov	rsi, r15
	call	getopt_long
	cmp	eax, -1
	je	.label_485
	lea	r14, [rsp]
	jmp	.label_577
.label_545:
	xor	eax, eax
	cmp	cl, 0x32
	sete	al
	inc	dword ptr [rsp + rax*4 + 0x40]
	inc	eax
	mov	dword ptr [rsp + 0x1c], eax
	jmp	.label_490
	.section	.text
	.align	16
	#Procedure 0x405fd3
	.globl sub_405fd3
	.type sub_405fd3, @function
sub_405fd3:

	nop	word ptr cs:[rax + rax]
.label_577:
	mov	dword ptr [rsp + 0x1c], 0
	lea	ecx, [rax - 1]
	cmp	ecx, 0x81
	ja	.label_603
	jmp	qword ptr [(rcx * 8) + label_611]
.label_741:
	mov	rdi, qword ptr [rip + optarg]
	lea	rsi, [rsp + 0x60]
	lea	rdx, [rsp + 0x40]
	lea	rcx, [rsp + 0x34]
	lea	r8, [rsp + 0x30]
	lea	r9, [rsp + 0x1c]
	call	add_file_name
	mov	eax, dword ptr [rsp + 0x1c]
	jmp	.label_490
.label_742:
	mov	r12, qword ptr [rip + optarg]
	xor	esi, esi
	mov	edx, 0xa
	mov	r8d, OFFSET FLAT:label_314
	mov	rdi, r12
	mov	rcx, r14
	call	xstrtoul
	cmp	eax, 1
	jne	.label_503
	mov	qword ptr [rsp], -1
	mov	rbp, -1
	jmp	.label_506
.label_743:
	mov	r12, qword ptr [rip + optarg]
	xor	esi, esi
	mov	edx, 0xa
	mov	r8d, OFFSET FLAT:label_314
	mov	rdi, r12
	mov	rcx, r14
	call	xstrtoul
	cmp	eax, 1
	jne	.label_521
	mov	qword ptr [rsp], -1
	mov	rbp, -1
	jmp	.label_523
.label_745:
	mov	rdi, qword ptr [rip + empty_filler]
	test	rdi, rdi
	je	.label_525
	mov	rbp, qword ptr [rip + optarg]
	mov	rsi, rbp
	call	strcmp
	test	eax, eax
	je	.label_532
	jmp	.label_535
.label_746:
	mov	byte ptr [rip + ignore_case],  1
	jmp	.label_477
.label_747:
	mov	r13, qword ptr [rip + optarg]
	movzx	ecx, byte ptr [r13]
	mov	eax, ecx
	add	al, 0xcf
	cmp	al, 1
	ja	.label_541
	cmp	byte ptr [r13 + 1], 0
	jne	.label_541
	movsxd	rax, dword ptr [rip + optind]
	mov	rax, qword ptr [r15 + rax*8 - 8]
	add	rax, 2
	cmp	r13, rax
	je	.label_545
.label_541:
	xor	esi, esi
	mov	edx, 0xa
	mov	r8d, OFFSET FLAT:label_314
	mov	rdi, r13
	mov	rcx, r14
	call	xstrtoul
	cmp	eax, 1
	jne	.label_562
	mov	qword ptr [rsp], -1
	mov	r12, -1
	jmp	.label_565
.label_748:
	mov	rbp, qword ptr [rip + optarg]
	mov	esi, OFFSET FLAT:label_571
	mov	rdi, rbp
	call	strcmp
	test	eax, eax
	je	.label_573
	mov	rdi, rbp
	call	add_field_list
	mov	dword ptr [rsp + 0x1c], 3
	mov	eax, 3
	jmp	.label_490
.label_749:
	mov	rax, qword ptr [rip + optarg]
	movzx	edx, byte ptr [rax]
	mov	cl, 0xa
	test	dl, dl
	je	.label_581
	movzx	ecx, byte ptr [rax + 1]
	test	cl, cl
	je	.label_586
	cmp	dl, 0x5c
	jne	.label_587
	cmp	cl, 0x30
	jne	.label_587
	cmp	byte ptr [rax + 2], 0
	jne	.label_587
	xor	ecx, ecx
	jmp	.label_581
.label_750:
	mov	byte ptr [rip + print_pairables],  0
.label_744:
	mov	rdi, qword ptr [rip + optarg]
	xor	esi, esi
	mov	edx, 0xa
	mov	r8d, OFFSET FLAT:label_314
	mov	rcx, r14
	call	xstrtoul
	test	eax, eax
	jne	.label_604
	mov	rax, qword ptr [rsp]
	lea	rcx, [rax - 1]
	cmp	rcx, 2
	jae	.label_604
	cmp	rax, 1
	jne	.label_613
	mov	byte ptr [rip + print_unpairables_1],  1
	jmp	.label_477
.label_751:
	mov	byte ptr [rip + eolchar],  1
	jmp	.label_477
.label_752:
	mov	dword ptr [rip + check_input_order],  1
	jmp	.label_477
.label_753:
	mov	dword ptr [rip + check_input_order],  2
	jmp	.label_477
.label_754:
	mov	byte ptr [rip + join_header_lines],  1
	jmp	.label_477
.label_613:
	mov	byte ptr [rip + print_unpairables_2],  1
	jmp	.label_477
.label_503:
	test	eax, eax
	jne	.label_504
	mov	rbp, qword ptr [rsp]
	test	rbp, rbp
	je	.label_504
.label_506:
	lea	rax, [rbp - 1]
	mov	r12, qword ptr [rip + join_field_1]
	cmp	r12, -1
	je	.label_509
	cmp	r12, rax
	jne	.label_513
.label_509:
	mov	qword ptr [rip + join_field_1],  rax
	jmp	.label_477
.label_521:
	test	eax, eax
	jne	.label_504
	mov	rbp, qword ptr [rsp]
	test	rbp, rbp
	je	.label_504
.label_523:
	lea	rax, [rbp - 1]
	mov	r12, qword ptr [rip + join_field_2]
	cmp	r12, -1
	je	.label_528
	cmp	r12, rax
	je	.label_528
	jmp	.label_513
.label_562:
	test	eax, eax
	jne	.label_530
	mov	r12, qword ptr [rsp]
	test	r12, r12
	je	.label_530
.label_565:
	lea	rax, [r12 - 1]
	mov	rbp, qword ptr [rip + join_field_1]
	cmp	rbp, -1
	je	.label_540
	cmp	rbp, rax
	jne	.label_542
.label_540:
	mov	qword ptr [rip + join_field_1],  rax
	mov	rbp, qword ptr [rip + join_field_2]
	cmp	rbp, -1
	je	.label_528
	cmp	rbp, rax
	jne	.label_542
.label_528:
	mov	qword ptr [rip + join_field_2],  rax
	jmp	.label_477
.label_525:
	mov	rbp, qword ptr [rip + optarg]
.label_532:
	mov	qword ptr [rip + empty_filler],  rbp
	jmp	.label_477
.label_573:
	mov	byte ptr [rip + autoformat],  1
	jmp	.label_477
.label_586:
	mov	cl, dl
.label_581:
	mov	edx, dword ptr [rip + tab]
	test	edx, edx
	movzx	eax, cl
	js	.label_564
	cmp	edx, eax
	jne	.label_568
.label_564:
	mov	dword ptr [rip + tab],  eax
	nop	word ptr cs:[rax + rax]
.label_477:
	xor	eax, eax
.label_490:
	mov	dword ptr [rsp + 0x30], eax
	mov	edx, OFFSET FLAT:label_572
	mov	ecx, OFFSET FLAT:longopts
	xor	r8d, r8d
	mov	edi, ebx
	mov	rsi, r15
	call	getopt_long
	cmp	eax, -1
	jne	.label_577
.label_485:
	mov	dword ptr [rsp + 0x30], 0
	mov	eax, dword ptr [rip + optind]
	cmp	eax, ebx
	jge	.label_579
	lea	r13, [rsp + 0x40]
	lea	rbp, [rsp + 0x34]
	lea	r12, [rsp + 0x30]
	lea	r14, [rsp + 0x1c]
	nop	dword ptr [rax]
.label_595:
	lea	ecx, [rax + 1]
	mov	dword ptr [rip + optind],  ecx
	cdqe	
	mov	rdi, qword ptr [r15 + rax*8]
	lea	rsi, [rsp + 0x60]
	mov	rdx, r13
	mov	rcx, rbp
	mov	r8, r12
	mov	r9, r14
	call	add_file_name
	mov	eax, dword ptr [rip + optind]
	cmp	eax, ebx
	jl	.label_595
.label_579:
	mov	ebp, ebx
	mov	eax, dword ptr [rsp + 0x34]
	cmp	eax, 2
	jne	.label_597
	cmp	dword ptr [rsp + 0x40], 0
	je	.label_602
	mov	rbx, qword ptr [rip + join_field_1]
	mov	ebp, 1
	lea	rax, [rbx + 1]
	cmp	rax, 2
	jae	.label_502
	mov	qword ptr [rip + join_field_1],  0
	mov	ebx, 1
	mov	rbp, qword ptr [rip + join_field_2]
	lea	rax, [rbp + 1]
	cmp	rax, 2
	jae	.label_511
	mov	qword ptr [rip + join_field_2],  0
.label_602:
	cmp	dword ptr [rsp + 0x44], 0
	mov	rbx, qword ptr [rip + join_field_1]
	je	.label_492
	mov	ebp, 2
	cmp	rbx, 1
	je	.label_497
	cmp	rbx, -1
	jne	.label_502
.label_497:
	mov	qword ptr [rip + join_field_1],  1
	mov	ebx, 2
	mov	rbp, qword ptr [rip + join_field_2]
	cmp	rbp, 1
	je	.label_505
	cmp	rbp, -1
	jne	.label_511
.label_505:
	mov	qword ptr [rip + join_field_2],  1
	jmp	.label_515
.label_492:
	cmp	rbx, -1
	jne	.label_520
	mov	qword ptr [rip + join_field_1],  0
.label_520:
	cmp	qword ptr [rip + join_field_2],  -1
	jne	.label_515
	mov	qword ptr [rip + join_field_2],  0
.label_515:
	mov	rdi, qword ptr [rip + g_names]
	cmp	byte ptr [rdi], 0x2d
	jne	.label_526
	cmp	byte ptr [rdi + 1], 0
	je	.label_529
.label_526:
	mov	esi, OFFSET FLAT:label_522
	call	fopen_safer
	mov	r13, rax
.label_574:
	test	r13, r13
	je	.label_536
	mov	rdi, qword ptr [rip + label_320]
	cmp	byte ptr [rdi], 0x2d
	jne	.label_539
	cmp	byte ptr [rdi + 1], 0
	je	.label_543
.label_539:
	mov	esi, OFFSET FLAT:label_522
	call	fopen_safer
	mov	rbx, rax
.label_578:
	test	rbx, rbx
	je	.label_548
	cmp	r13, rbx
	je	.label_551
	mov	esi, 2
	mov	rdi, r13
	call	fadvise
	mov	esi, 2
	mov	rdi, rbx
	call	fadvise
	xor	edi, edi
	mov	esi, 0x80
	call	xrealloc
	mov	r14, rax
	xorps	xmm0, xmm0
	movups	xmmword ptr [r14 + 0x70], xmm0
	movups	xmmword ptr [r14 + 0x60], xmm0
	movups	xmmword ptr [r14 + 0x50], xmm0
	movups	xmmword ptr [r14 + 0x40], xmm0
	movups	xmmword ptr [r14 + 0x30], xmm0
	movups	xmmword ptr [r14 + 0x20], xmm0
	movups	xmmword ptr [r14 + 0x10], xmm0
	movups	xmmword ptr [r14], xmm0
	mov	edx, 1
	mov	rdi, r13
	mov	rsi, r14
	call	get_line
	mov	ebp, eax
	xor	edi, edi
	mov	esi, 0x80
	call	xrealloc
	xorps	xmm0, xmm0
	movups	xmmword ptr [rax + 0x70], xmm0
	movups	xmmword ptr [rax + 0x60], xmm0
	movups	xmmword ptr [rax + 0x50], xmm0
	movups	xmmword ptr [rax + 0x40], xmm0
	movups	xmmword ptr [rax + 0x30], xmm0
	movups	xmmword ptr [rax + 0x20], xmm0
	movups	xmmword ptr [rax + 0x10], xmm0
	movups	xmmword ptr [rax], xmm0
	movzx	r15d, bpl
	mov	rbp, rax
	mov	edx, 2
	mov	qword ptr [rsp + 0x28], rbx
	mov	rdi, rbx
	mov	rsi, rbp
	call	get_line
	movzx	r12d, al
	cmp	byte ptr [rip + autoformat],  1
	jne	.label_593
	xor	eax, eax
	test	r15, r15
	je	.label_596
	mov	rax, qword ptr [r14]
	mov	rax, qword ptr [rax + 0x18]
.label_596:
	mov	qword ptr [rip + autocount_1],  rax
	xor	eax, eax
	test	r12, r12
	je	.label_598
	mov	rax, qword ptr [rbp]
	mov	rax, qword ptr [rax + 0x18]
.label_598:
	mov	qword ptr [rip + autocount_2],  rax
.label_593:
	cmp	byte ptr [rip + join_header_lines],  1
	mov	qword ptr [rsp + 0x38], r13
	jne	.label_610
	test	r15, r15
	je	.label_478
	mov	rdi, qword ptr [r14]
	test	r12, r12
	jne	.label_481
	mov	esi, OFFSET FLAT:uni_blank
	call	prjoin
	xorps	xmm0, xmm0
	movaps	xmmword ptr [rip + prevline],  xmm0
	mov	edx, 1
	mov	rdi, r13
	mov	rsi, r14
	call	get_line
	movzx	eax, al
	jmp	.label_493
.label_610:
	mov	rax, r15
.label_493:
	mov	rbx, r12
	mov	r12, qword ptr [rsp + 0x28]
	jmp	.label_494
.label_478:
	mov	edi, OFFSET FLAT:uni_blank
	xor	eax, eax
	mov	qword ptr [rsp + 0x10], rax
	mov	r13d, 0x10
	test	r12, r12
	je	.label_589
.label_481:
	mov	rsi, qword ptr [rbp]
	call	prjoin
	xorps	xmm0, xmm0
	movaps	xmmword ptr [rip + prevline],  xmm0
	xor	r13d, r13d
	test	r15, r15
	mov	r12, qword ptr [rsp + 0x28]
	je	.label_583
	mov	edx, 1
	mov	rdi, qword ptr [rsp + 0x38]
	mov	rsi, r14
	call	get_line
	movzx	r13d, al
.label_583:
	mov	edx, 2
	mov	rdi, r12
	mov	rsi, rbp
	call	get_line
	movzx	ebx, al
	mov	rax, r13
.label_494:
	mov	r13d, 0x10
	mov	qword ptr [rsp + 0x10], rax
	test	rax, rax
	je	.label_482
	test	rbx, rbx
	je	.label_482
	mov	eax, 0x10
	mov	qword ptr [rsp + 8], rax
	mov	r13d, 0x10
	nop	dword ptr [rax]
.label_498:
	mov	rdi, qword ptr [r14]
	mov	rsi, qword ptr [rbp]
	mov	rdx, qword ptr [rip + join_field_1]
	mov	rcx, qword ptr [rip + join_field_2]
	call	keycmp
	test	eax, eax
	js	.label_547
	je	.label_550
	cmp	byte ptr [rip + print_unpairables_2],  1
	jne	.label_553
	mov	rsi, qword ptr [rbp]
	mov	edi, OFFSET FLAT:uni_blank
	call	prjoin
.label_553:
	mov	r15, r14
	cmp	qword ptr [rsp + 8], 0
	je	.label_558
	mov	r12, rbp
	jmp	.label_563
	.section	.text
	.align	16
	#Procedure 0x40672f
	.globl sub_40672f
	.type sub_40672f, @function
sub_40672f:

	nop	
.label_558:
	test	rbp, rbp
	mov	rbx, rbp
	mov	ebp, 8
	mov	eax, 0x80
	cmove	rbp, rax
	mov	rdi, rbx
	mov	rsi, rbp
	call	xrealloc
	mov	r14, rax
	test	rbx, rbx
	mov	qword ptr [r14], 0
	mov	r12, r14
	mov	eax, 1
	mov	qword ptr [rsp + 8], rax
	jne	.label_563
	mov	rdi, r14
	add	rdi, 8
	add	rbp, -8
	xor	esi, esi
	mov	rdx, rbp
	call	memset
	mov	r12, r14
	mov	eax, 0x10
	mov	qword ptr [rsp + 8], rax
	nop	dword ptr [rax]
.label_563:
	mov	edx, 2
	mov	rdi, qword ptr [rsp + 0x28]
	mov	rsi, r12
	call	get_line
	movzx	ebx, al
	mov	byte ptr [rip + seen_unpairable],  1
	test	bl, bl
	mov	r14, r15
	mov	rbp, r12
	jne	.label_498
	jmp	.label_592
.label_547:
	cmp	byte ptr [rip + print_unpairables_1],  1
	mov	r12, qword ptr [rsp + 0x28]
	jne	.label_594
	mov	rdi, qword ptr [r14]
	mov	esi, OFFSET FLAT:uni_blank
	call	prjoin
.label_594:
	test	r13, r13
	jne	.label_600
	mov	esi, 8
	mov	rdi, r14
	call	xrealloc
	mov	r14, rax
	mov	qword ptr [r14], 0
	mov	r13d, 1
.label_600:
	mov	edx, 1
	mov	rdi, qword ptr [rsp + 0x38]
	mov	rsi, r14
	call	get_line
	movzx	eax, al
	mov	byte ptr [rip + seen_unpairable],  1
	jmp	.label_484
.label_550:
	mov	qword ptr [rsp + 0x48], rbx
	mov	qword ptr [rsp + 0x20], rbp
	mov	rcx, qword ptr [rsp + 0x10]
	mov	r12, rcx
	movabs	rax, 0x1fffffffffffffff
	xor	r12, rax
	inc	r12
	lea	rbx, [rcx*8 + 8]
	mov	r15, r13
	mov	rbp, rcx
	mov	r13, qword ptr [rsp + 0x38]
	nop	word ptr cs:[rax + rax]
.label_527:
	mov	qword ptr [rsp + 0x50], rbp
	cmp	rbp, r15
	jne	.label_500
	mov	rbp, r13
	mov	rdi, r14
	movabs	rax, 0xaaaaaaaaaaaaaaa
	cmp	r15, rax
	jae	.label_518
	mov	r13, r15
	shr	r15, 1
	lea	r14, [r13 + r15 + 1]
	lea	rsi, [r14*8]
	call	xrealloc
	cmp	r13, r14
	jae	.label_524
	lea	rcx, [r13 + 1]
	mov	qword ptr [rax + r13*8], 0
	cmp	rcx, r14
	jae	.label_524
	mov	rdi, rax
	add	rdi, rbx
	add	r13, r15
	add	r13, r12
	shl	r13, 3
	xor	esi, esi
	mov	rdx, r13
	mov	r13, rax
	call	memset
	mov	r15, r14
	mov	r14, r13
	jmp	.label_537
	.section	.text
	.align	16
	#Procedure 0x4068d6
	.globl sub_4068d6
	.type sub_4068d6, @function
sub_4068d6:

	nop	word ptr cs:[rax + rax]
.label_524:
	mov	r15, r14
	mov	r14, rax
.label_537:
	mov	r13, rbp
.label_500:
	lea	rsi, [r14 + rbx - 8]
	mov	edx, 1
	mov	rdi, r13
	call	get_line
	mov	cl, 1
	test	al, al
	je	.label_605
	mov	rax, qword ptr [rsp + 0x50]
	lea	rbp, [rax + 1]
	mov	rdi, qword ptr [r14 + rax*8]
	mov	rax, qword ptr [rsp + 0x20]
	mov	rsi, qword ptr [rax]
	mov	rdx, qword ptr [rip + join_field_1]
	mov	rcx, qword ptr [rip + join_field_2]
	call	keycmp
	dec	r12
	add	rbx, 8
	test	eax, eax
	je	.label_527
	xor	ecx, ecx
.label_605:
	mov	dword ptr [rsp + 0x5c], ecx
	mov	r13, r15
	mov	qword ptr [rsp + 0x10], r14
	mov	rbx, qword ptr [rsp + 0x48]
	mov	r14, rbx
	movabs	rax, 0x1fffffffffffffff
	xor	r14, rax
	lea	r12, [rbx*8 + 8]
	mov	rbp, qword ptr [rsp + 0x20]
	nop	dword ptr [rax + rax]
.label_483:
	mov	r15, rbx
	cmp	r15, qword ptr [rsp + 8]
	jne	.label_479
	mov	rdi, rbp
	test	rbp, rbp
	je	.label_544
	mov	rbp, qword ptr [rsp + 8]
	movabs	rax, 0xaaaaaaaaaaaaaaa
	cmp	rbp, rax
	jae	.label_518
	mov	rax, rbp
	shr	rax, 1
	lea	rbx, [rbp + rax + 1]
	jmp	.label_588
.label_544:
	mov	rbp, qword ptr [rsp + 8]
	test	rbp, rbp
	mov	ebx, 0x10
	cmovne	rbx, rbp
	mov	rax, rbx
	shr	rax, 0x3c
	jne	.label_590
.label_588:
	lea	rsi, [rbx*8]
	call	xrealloc
	cmp	rbp, rbx
	jae	.label_552
	mov	qword ptr [rax + rbp*8], 0
	inc	rbp
	cmp	rbp, rbx
	jae	.label_552
	mov	rdi, rax
	add	rdi, r12
	lea	rdx, [r14 + rbx]
	shl	rdx, 3
	xor	esi, esi
	mov	rbp, rax
	call	memset
	mov	qword ptr [rsp + 8], rbx
	jmp	.label_479
	.section	.text
	.align	16
	#Procedure 0x406a0a
	.globl sub_406a0a
	.type sub_406a0a, @function
sub_406a0a:

	nop	word ptr [rax + rax]
.label_552:
	mov	qword ptr [rsp + 8], rbx
	mov	rbp, rax
.label_479:
	lea	rsi, [rbp + r12 - 8]
	mov	edx, 2
	mov	rdi, qword ptr [rsp + 0x28]
	call	get_line
	mov	dil, 1
	test	al, al
	je	.label_554
	lea	rbx, [r15 + 1]
	mov	rax, qword ptr [rsp + 0x10]
	mov	rdi, qword ptr [rax]
	mov	rsi, qword ptr [rbp + r15*8]
	mov	rdx, qword ptr [rip + join_field_1]
	mov	rcx, qword ptr [rip + join_field_2]
	call	keycmp
	dec	r14
	add	r12, 8
	test	eax, eax
	je	.label_483
	xor	edi, edi
.label_554:
	mov	rsi, qword ptr [rsp + 0x50]
	test	rsi, rsi
	je	.label_584
	test	byte ptr [rip + print_pairables],  1
	mov	r14, qword ptr [rsp + 0x10]
	je	.label_512
	test	r15, r15
	mov	eax, 0
	je	.label_507
	mov	dword ptr [rsp + 0x48], edi
	mov	qword ptr [rsp + 0x20], rbp
	xor	ebx, ebx
	nop	word ptr cs:[rax + rax]
.label_533:
	xor	ebp, ebp
	mov	r12, qword ptr [rsp + 0x20]
	nop	word ptr [rax + rax]
.label_531:
	mov	rdi, qword ptr [r14 + rbx*8]
	mov	rsi, qword ptr [r12 + rbp*8]
	call	prjoin
	inc	rbp
	cmp	r15, rbp
	jne	.label_531
	inc	rbx
	mov	rsi, qword ptr [rsp + 0x50]
	cmp	rbx, rsi
	jne	.label_533
	mov	rax, r15
	mov	rbp, qword ptr [rsp + 0x20]
	mov	edi, dword ptr [rsp + 0x48]
	jmp	.label_507
.label_584:
	mov	rax, r15
	mov	r14, qword ptr [rsp + 0x10]
	jmp	.label_507
.label_512:
	mov	rax, r15
.label_507:
	mov	ecx, dword ptr [rsp + 0x5c]
	test	cl, cl
	mov	ecx, 0
	mov	qword ptr [rsp + 0x10], rcx
	jne	.label_560
	mov	rcx, qword ptr [r14]
	mov	rdx, qword ptr [r14 + rsi*8]
	mov	qword ptr [r14], rdx
	mov	qword ptr [r14 + rsi*8], rcx
	mov	ecx, 1
	mov	qword ptr [rsp + 0x10], rcx
.label_560:
	test	dil, dil
	mov	r12, qword ptr [rsp + 0x28]
	jne	.label_510
	mov	rcx, qword ptr [rbp]
	mov	rdx, qword ptr [rbp + rax*8]
	mov	qword ptr [rbp], rdx
	mov	qword ptr [rbp + rax*8], rcx
	mov	ebx, 1
	mov	rax, qword ptr [rsp + 0x10]
.label_484:
	mov	qword ptr [rsp + 0x10], rax
	test	rax, rax
	je	.label_480
	test	rbx, rbx
	jne	.label_498
	jmp	.label_480
.label_482:
	mov	eax, 0x10
	mov	qword ptr [rsp + 8], rax
	jmp	.label_480
.label_529:
	mov	r13, qword ptr [rip + stdin]
	jmp	.label_574
.label_543:
	mov	rbx, qword ptr [rip + stdin]
	jmp	.label_578
.label_589:
	mov	eax, 0x10
	mov	qword ptr [rsp + 8], rax
	xor	ebx, ebx
.label_592:
	mov	r12, qword ptr [rsp + 0x28]
.label_480:
	mov	r15, rbx
	mov	qword ptr [rsp], 0
	cmp	dword ptr [rip + check_input_order],  2
	mov	qword ptr [rsp + 0x20], rbp
	jne	.label_585
	xor	ebx, ebx
	jmp	.label_599
.label_585:
	cmp	byte ptr [rip + issued_disorder_warning],  0
	sete	al
	cmp	byte ptr [rip + label_555],  0
	sete	bl
	or	bl, al
.label_599:
	cmp	qword ptr [rsp + 0x10], 0
	je	.label_499
	mov	al, byte ptr [rip + print_unpairables_1]
	mov	ecx, ebx
	or	cl, al
	xor	cl, 1
	test	cl, 1
	jne	.label_499
	test	al, 1
	je	.label_570
	mov	rdi, qword ptr [r14]
	mov	esi, OFFSET FLAT:uni_blank
	call	prjoin
.label_570:
	test	r15, r15
	je	.label_609
	mov	byte ptr [rip + seen_unpairable],  1
.label_609:
	lea	rsi, [rsp]
	mov	edx, 1
	mov	rdi, qword ptr [rsp + 0x38]
	call	get_line
	test	al, al
	je	.label_499
	lea	rbp, [rsp]
	nop	dword ptr [rax + rax]
.label_486:
	cmp	byte ptr [rip + print_unpairables_1],  1
	jne	.label_489
	mov	rdi, qword ptr [rsp]
	mov	esi, OFFSET FLAT:uni_blank
	call	prjoin
.label_489:
	cmp	byte ptr [rip + issued_disorder_warning],  0
	je	.label_569
	cmp	byte ptr [rip + print_unpairables_1],  1
	jne	.label_499
.label_569:
	mov	edx, 1
	mov	rdi, qword ptr [rsp + 0x38]
	mov	rsi, rbp
	call	get_line
	test	al, al
	jne	.label_486
.label_499:
	test	r15, r15
	je	.label_508
	mov	al, byte ptr [rip + print_unpairables_2]
	or	bl, al
	xor	bl, 1
	test	bl, 1
	jne	.label_508
	test	al, 1
	je	.label_517
	mov	rax, qword ptr [rsp + 0x20]
	mov	rsi, qword ptr [rax]
	mov	edi, OFFSET FLAT:uni_blank
	call	prjoin
.label_517:
	cmp	qword ptr [rsp + 0x10], 0
	je	.label_582
	mov	byte ptr [rip + seen_unpairable],  1
.label_582:
	lea	rsi, [rsp]
	mov	edx, 2
	mov	rdi, r12
	call	get_line
	test	al, al
	je	.label_508
	lea	rbp, [rsp]
	nop	word ptr [rax + rax]
.label_546:
	cmp	byte ptr [rip + print_unpairables_2],  1
	jne	.label_519
	mov	rsi, qword ptr [rsp]
	mov	edi, OFFSET FLAT:uni_blank
	call	prjoin
.label_519:
	cmp	byte ptr [rip + label_555],  0
	je	.label_556
	cmp	byte ptr [rip + print_unpairables_2],  1
	jne	.label_508
.label_556:
	mov	edx, 2
	mov	rdi, r12
	mov	rsi, rbp
	call	get_line
	test	al, al
	jne	.label_546
.label_508:
	mov	rbp, qword ptr [rsp]
	test	rbp, rbp
	je	.label_549
	mov	rdi, qword ptr [rbp + 0x28]
	call	free
	mov	qword ptr [rbp + 0x28], 0
	mov	rdi, qword ptr [rbp + 0x10]
	call	free
.label_549:
	mov	rdi, rbp
	call	free
	test	r13, r13
	je	.label_488
	mov	rbx, r14
.label_576:
	mov	rbp, qword ptr [rbx]
	test	rbp, rbp
	mov	edi, 0
	je	.label_559
	mov	rdi, qword ptr [rbp + 0x28]
	call	free
	mov	qword ptr [rbp + 0x28], 0
	mov	rdi, qword ptr [rbp + 0x10]
	call	free
	mov	qword ptr [rbp + 0x10], 0
	mov	rdi, qword ptr [rbx]
.label_559:
	call	free
	add	rbx, 8
	dec	r13
	jne	.label_576
.label_488:
	mov	rdi, r14
	call	free
	mov	r14, qword ptr [rsp + 8]
	test	r14, r14
	mov	r15, qword ptr [rsp + 0x38]
	je	.label_580
	mov	rbx, qword ptr [rsp + 0x20]
	nop	dword ptr [rax]
.label_534:
	mov	rbp, qword ptr [rbx]
	test	rbp, rbp
	mov	edi, 0
	je	.label_538
	mov	rdi, qword ptr [rbp + 0x28]
	call	free
	mov	qword ptr [rbp + 0x28], 0
	mov	rdi, qword ptr [rbp + 0x10]
	call	free
	mov	qword ptr [rbp + 0x10], 0
	mov	rdi, qword ptr [rbx]
.label_538:
	call	free
	add	rbx, 8
	dec	r14
	jne	.label_534
.label_580:
	mov	rdi, qword ptr [rsp + 0x20]
	call	free
	mov	rdi, r15
	call	rpl_fclose
	test	eax, eax
	jne	.label_536
	mov	rdi, r12
	call	rpl_fclose
	test	eax, eax
	jne	.label_548
	mov	al, byte ptr [rip + label_555]
	or	al, byte ptr [rip + issued_disorder_warning]
	jne	.label_612
	xor	eax, eax
	add	rsp, 0x68
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_510:
	xor	ebx, ebx
	jmp	.label_480
.label_603:
	cmp	eax, 0xffffff7d
	je	.label_591
	cmp	eax, 0xffffff7e
	jne	.label_491
	xor	edi, edi
	call	usage
.label_491:
	mov	edi, 1
	call	usage
.label_604:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_315
.label_607:
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
	mov	rdi, qword ptr [rip + optarg]
.label_516:
	call	quote
	mov	rcx, rax
	mov	edi, 1
	xor	esi, esi
	xor	eax, eax
	mov	rdx, rbx
	call	error
.label_591:
	mov	rdi, qword ptr [rip + stdout]
	mov	rcx, qword ptr [rip + Version]
	mov	esi, OFFSET FLAT:label_379
	mov	edx, OFFSET FLAT:label_376
	mov	r8d, OFFSET FLAT:label_514
	xor	r9d, r9d
	xor	eax, eax
	call	version_etc
	xor	edi, edi
	call	exit
.label_518:
	call	xalloc_die
.label_513:
	inc	r12
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_321
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	mov	edi, 1
	xor	esi, esi
	xor	eax, eax
	mov	rdx, rcx
	mov	rcx, r12
	mov	r8, rbp
	call	error
.label_542:
	inc	rbp
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_321
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	mov	edi, 1
	xor	esi, esi
	xor	eax, eax
	mov	rdx, rcx
	mov	rcx, rbp
	mov	r8, r12
	call	error
.label_536:
	call	__errno_location
	mov	ebx, dword ptr [rax]
	mov	rdx, qword ptr [rip + g_names]
	jmp	.label_557
.label_548:
	call	__errno_location
	mov	ebx, dword ptr [rax]
	mov	rdx, qword ptr [rip + label_320]
.label_557:
	xor	edi, edi
	mov	esi, 3
	call	quotearg_n_style_colon
	mov	rcx, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:label_205
	xor	eax, eax
	mov	esi, ebx
	call	error
.label_504:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_315
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
	mov	rdi, r12
	jmp	.label_516
.label_568:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_575
	jmp	.label_496
.label_590:
	call	xalloc_die
.label_502:
	inc	rbx
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_321
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	mov	edi, 1
	xor	esi, esi
	xor	eax, eax
	mov	rdx, rcx
	mov	rcx, rbx
	mov	r8, rbp
	call	error
.label_511:
	inc	rbp
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_321
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	mov	edi, 1
	xor	esi, esi
	xor	eax, eax
	mov	rdx, rcx
	mov	rcx, rbp
	mov	r8, rbx
	call	error
.label_587:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_606
	jmp	.label_607
.label_597:
	xor	edi, edi
	test	eax, eax
	jne	.label_601
	mov	esi, OFFSET FLAT:label_608
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
.label_551:
	call	__errno_location
	mov	ebx, dword ptr [rax]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_487
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	mov	edi, 1
	xor	eax, eax
	mov	esi, ebx
	mov	rdx, rcx
	call	error
.label_612:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_495
	jmp	.label_496
.label_535:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_501
.label_496:
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	mov	edi, 1
	xor	esi, esi
	xor	eax, eax
	mov	rdx, rcx
	call	error
.label_530:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_315
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
	mov	rdi, r13
	jmp	.label_516
.label_601:
	mov	esi, OFFSET FLAT:label_561
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
	movsxd	rax, ebp
	mov	rdi, qword ptr [r15 + rax*8 - 8]
	call	quote
	mov	rcx, rax
	xor	edi, edi
	xor	esi, esi
	xor	eax, eax
	mov	rdx, rbx
	call	error
	mov	edi, 1
	call	usage
	.section	.text
	.align	16
	#Procedure 0x4070c0
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
	je	.label_614
	mov	qword ptr [rax], rbx
.label_614:
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
	#Procedure 0x4071ac
	.globl sub_4071ac
	.type sub_4071ac, @function
sub_4071ac:

	nop	dword ptr [rax]
.label_616:
	call	__errno_location
	mov	rbp, rax
	mov	r14d, dword ptr [rbp]
	mov	rdi, rbx
	call	rpl_fclose
	mov	dword ptr [rbp], r14d
.label_618:
	xor	eax, eax
.label_615:
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x4071cf
	.globl sub_4071cf
	.type sub_4071cf, @function
sub_4071cf:

	nop	word ptr cs:[rax + rax]
.label_619:
	mov	rax, rbx
	jmp	.label_615
	.section	.text
	.align	16
	#Procedure 0x4071de

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
	je	.label_615
	mov	rdi, rbx
	call	fileno
	cmp	eax, 2
	ja	.label_619
	mov	edi, eax
	call	dup_safer
	mov	ebp, eax
	test	ebp, ebp
	js	.label_616
	mov	rdi, rbx
	call	rpl_fclose
	test	eax, eax
	jne	.label_617
	mov	edi, ebp
	mov	rsi, r14
	call	fdopen
	test	rax, rax
	jne	.label_615
.label_617:
	call	__errno_location
	mov	rbx, rax
	mov	r14d, dword ptr [rbx]
	mov	edi, ebp
	call	close
	mov	dword ptr [rbx], r14d
	jmp	.label_618
	.section	.text
	.align	16
	#Procedure 0x4072a5
	.globl sub_4072a5
	.type sub_4072a5, @function
sub_4072a5:

	nop	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4072b2
	.globl sub_4072b2
	.type sub_4072b2, @function
sub_4072b2:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4072d6
	.globl sub_4072d6
	.type sub_4072d6, @function
sub_4072d6:

	nop	word ptr cs:[rax + rax]
