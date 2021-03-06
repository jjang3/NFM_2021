	.section	.text
	.align	32
	#Procedure 0x401509
	.globl sub_401509
	.type sub_401509, @function
sub_401509:

	hlt	
	.section	.text
	.align	32
	#Procedure 0x40150a
	.globl sub_40150a
	.type sub_40150a, @function
sub_40150a:

	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x401542
	.globl sub_401542
	.type sub_401542, @function
sub_401542:

	nop	dword ptr [rax]
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40158a
	.globl sub_40158a
	.type sub_40158a, @function
sub_40158a:

	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4015ac
	.globl sub_4015ac
	.type sub_4015ac, @function
sub_4015ac:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x4015bd
	.globl sub_4015bd
	.type sub_4015bd, @function
sub_4015bd:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x4015d6
	.globl sub_4015d6
	.type sub_4015d6, @function
sub_4015d6:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4015e0

	.globl rpl_fflush
	.type rpl_fflush, @function
rpl_fflush:
	push	rbx
	mov	rbx, rdi
	test	rbx, rbx
	je	.label_9
	mov	rdi, rbx
	call	__freading
	test	eax, eax
	je	.label_9
	test	byte ptr [rbx + 1], 1
	je	.label_9
	xor	esi, esi
	mov	edx, 1
	mov	rdi, rbx
	call	rpl_fseeko
.label_9:
	mov	rdi, rbx
	pop	rbx
	jmp	fflush
	.section	.text
	.align	32
	#Procedure 0x401613
	.globl sub_401613
	.type sub_401613, @function
sub_401613:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x401620

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
	je	.label_10
	cmp	r15, -2
	jb	.label_10
	xor	edi, edi
	call	hard_locale
	test	al, al
	jne	.label_10
	movzx	eax, byte ptr [r14]
	mov	dword ptr [rbx], eax
	mov	r15d, 1
.label_10:
	mov	rax, r15
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	ret	
	.section	.text
	.align	32
	#Procedure 0x401676
	.globl sub_401676
	.type sub_401676, @function
sub_401676:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x401680
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
	#Procedure 0x40168f
	.globl sub_40168f
	.type sub_40168f, @function
sub_40168f:

	nop	
	.section	.text
	.align	32
	#Procedure 0x401690
	.globl quote_n
	.type quote_n, @function
quote_n:

	mov	rdx, -1
	mov	ecx, OFFSET FLAT:quote_quoting_options
	jmp	quotearg_n_options
	.section	.text
	.align	32
	#Procedure 0x4016a1
	.globl sub_4016a1
	.type sub_4016a1, @function
sub_4016a1:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4016b0
	.globl fdadvise
	.type fdadvise, @function
fdadvise:

	jmp	posix_fadvise
	.section	.text
	.align	32
	#Procedure 0x4016b5
	.globl sub_4016b5
	.type sub_4016b5, @function
sub_4016b5:

	nop	word ptr cs:[rax + rax]
.label_11:
	mov	qword ptr [rip + tab_size],  0
	pop	rax
	ret	
	.section	.text
	.align	32
	#Procedure 0x4016cd

	.globl finalize_tab_stops
	.type finalize_tab_stops, @function
finalize_tab_stops:
	push	rax
	mov	rax, qword ptr [rip + tab_list]
	mov	rcx, qword ptr [rip + first_free_tab]
	test	rcx, rcx
	je	.label_15
	xor	edx, edx
	xor	edi, edi
	nop	dword ptr [rax + rax]
.label_21:
	mov	rsi, qword ptr [rax + rdx*8]
	test	rsi, rsi
	je	.label_16
	cmp	rsi, rdi
	jbe	.label_18
	inc	rdx
	cmp	rdx, rcx
	mov	rdi, rsi
	jb	.label_21
.label_15:
	mov	rsi, qword ptr [rip + increment_size]
	mov	rdx, qword ptr [rip + extend_size]
	test	rsi, rsi
	je	.label_12
	test	rdx, rdx
	jne	.label_19
.label_12:
	test	rcx, rcx
	je	.label_22
	or	rdx, rsi
	jne	.label_11
	cmp	rcx, 1
	jne	.label_11
	mov	rax, qword ptr [rax]
	mov	qword ptr [rip + tab_size],  rax
	pop	rax
	ret	
.label_16:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_20
	jmp	.label_14
.label_18:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_17
.label_14:
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	mov	edi, 1
	xor	esi, esi
	xor	eax, eax
	mov	rdx, rcx
	call	error
.label_19:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_13
	jmp	.label_14
	.section	.text
	.align	32
	#Procedure 0x401771
	.globl sub_401771
	.type sub_401771, @function
sub_401771:

	nop	word ptr cs:[rax + rax]
.label_22:
	test	rsi, rsi
	mov	eax, 8
	cmovne	rax, rsi
	test	rdx, rdx
	cmovne	rax, rdx
	mov	qword ptr [rip + max_column_width],  rax
	mov	qword ptr [rip + tab_size],  rax
	pop	rax
	ret	
.label_24:
	mov	byte ptr [rdx], 1
	xor	ecx, ecx
.label_28:
	mov	rax, rcx
	ret	
	.section	.text
	.align	32
	#Procedure 0x4017a9
	.globl sub_4017a9
	.type sub_4017a9, @function
sub_4017a9:

	nop	word ptr [rax + rax]
.label_25:
	mov	rcx, qword ptr [rip + increment_size]
	test	rcx, rcx
	je	.label_24
	mov	rdx, qword ptr [rip + tab_list]
	mov	rax, rdi
	sub	rax, qword ptr [rdx + r8*8 - 8]
	xor	edx, edx
	jmp	.label_23
	.section	.text
	.align	32
	#Procedure 0x4017ce

	.globl get_next_tab_column
	.type get_next_tab_column, @function
get_next_tab_column:
	mov	byte ptr [rdx], 0
	mov	rcx, qword ptr [rip + tab_size]
	test	rcx, rcx
	jne	.label_26
	mov	rax, qword ptr [rsi]
	mov	r8, qword ptr [rip + first_free_tab]
	cmp	rax, r8
	jae	.label_29
	mov	r9, qword ptr [rip + tab_list]
	nop	word ptr cs:[rax + rax]
.label_27:
	mov	rcx, qword ptr [r9 + rax*8]
	cmp	rcx, rdi
	ja	.label_28
	inc	rax
	mov	qword ptr [rsi], rax
	cmp	rax, r8
	jb	.label_27
.label_29:
	mov	rcx, qword ptr [rip + extend_size]
	test	rcx, rcx
	je	.label_25
.label_26:
	xor	edx, edx
	mov	rax, rdi
.label_23:
	div	rcx
	add	rcx, rdi
	sub	rcx, rdx
	mov	rax, rcx
	ret	
	.section	.text
	.align	32
	#Procedure 0x401830

	.globl hard_locale
	.type hard_locale, @function
hard_locale:
	push	rbx
	xor	esi, esi
	call	setlocale
	mov	bl, 1
	test	rax, rax
	je	.label_31
	cmp	byte ptr [rax], 0x43
	jne	.label_33
	cmp	byte ptr [rax + 1], 0
	je	.label_30
.label_33:
	mov	esi, OFFSET FLAT:label_32
	mov	rdi, rax
	call	strcmp
	test	eax, eax
	jne	.label_31
.label_30:
	xor	ebx, ebx
.label_31:
	mov	eax, ebx
	pop	rbx
	ret	
	.section	.text
	.align	32
	#Procedure 0x401861
	.globl sub_401861
	.type sub_401861, @function
sub_401861:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x401870
	.globl version_etc_ar
	.type version_etc_ar, @function
version_etc_ar:

	mov	r9, -1
	nop	word ptr [rax + rax]
.label_34:
	cmp	qword ptr [r8 + r9*8 + 8], 0
	lea	r9, [r9 + 1]
	jne	.label_34
	jmp	version_etc_arn
	.section	.text
	.align	32
	#Procedure 0x401891
	.globl sub_401891
	.type sub_401891, @function
sub_401891:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4018a0

	.globl version_etc_va
	.type version_etc_va, @function
version_etc_va:
	movsxd	r10, dword ptr [r8]
	cmp	r10, 0x28
	ja	.label_45
	mov	r9, r10
	add	r9, qword ptr [r8 + 0x10]
	lea	r10d, [r10 + 8]
	mov	dword ptr [r8], r10d
	jmp	.label_47
.label_45:
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
.label_47:
	sub	rsp, 0x58
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp], rax
	xor	r9d, r9d
	test	rax, rax
	je	.label_36
	cmp	r10d, 0x29
	jae	.label_44
	movsxd	r9, r10d
	add	r9, qword ptr [r8 + 0x10]
	add	r10d, 8
	mov	dword ptr [r8], r10d
	jmp	.label_46
.label_44:
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
.label_46:
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp + 8], rax
	mov	r9d, 1
	test	rax, rax
	je	.label_36
	cmp	r10d, 0x29
	jae	.label_42
	movsxd	r9, r10d
	add	r9, qword ptr [r8 + 0x10]
	add	r10d, 8
	mov	dword ptr [r8], r10d
	jmp	.label_43
.label_42:
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
.label_43:
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp + 0x10], rax
	mov	r9d, 2
	test	rax, rax
	je	.label_36
	cmp	r10d, 0x29
	jae	.label_40
	movsxd	r9, r10d
	add	r9, qword ptr [r8 + 0x10]
	add	r10d, 8
	mov	dword ptr [r8], r10d
	jmp	.label_41
.label_40:
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
.label_41:
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp + 0x18], rax
	mov	r9d, 3
	test	rax, rax
	je	.label_36
	cmp	r10d, 0x29
	jae	.label_38
	movsxd	r9, r10d
	add	r9, qword ptr [r8 + 0x10]
	add	r10d, 8
	mov	dword ptr [r8], r10d
	jmp	.label_39
.label_38:
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
.label_39:
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp + 0x20], rax
	mov	r9d, 4
	test	rax, rax
	je	.label_36
	cmp	r10d, 0x29
	jae	.label_35
	movsxd	r9, r10d
	add	r9, qword ptr [r8 + 0x10]
	add	r10d, 8
	mov	dword ptr [r8], r10d
	jmp	.label_37
.label_35:
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
.label_37:
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp + 0x28], rax
	mov	r9d, 5
	test	rax, rax
	je	.label_36
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp + 0x30], rax
	mov	r9d, 6
	test	rax, rax
	je	.label_36
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp + 0x38], rax
	mov	r9d, 7
	test	rax, rax
	je	.label_36
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp + 0x40], rax
	mov	r9d, 8
	test	rax, rax
	je	.label_36
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp + 0x48], rax
	cmp	rax, 1
	mov	r9d, 9
	sbb	r9, -1
.label_36:
	lea	r8, [rsp]
	call	version_etc_arn
	add	rsp, 0x58
	ret	
	.section	.text
	.align	32
	#Procedure 0x401a82
	.globl sub_401a82
	.type sub_401a82, @function
sub_401a82:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x401a90

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
	#Procedure 0x401aa9
	.globl sub_401aa9
	.type sub_401aa9, @function
sub_401aa9:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x401ab0

	.globl version_etc
	.type version_etc, @function
version_etc:
	sub	rsp, 0xd8
	test	al, al
	je	.label_48
	movaps	xmmword ptr [rsp + 0x50], xmm0
	movaps	xmmword ptr [rsp + 0x60], xmm1
	movaps	xmmword ptr [rsp + 0x70], xmm2
	movaps	xmmword ptr [rsp + 0x80], xmm3
	movaps	xmmword ptr [rsp + 0x90], xmm4
	movaps	xmmword ptr [rsp + 0xa0], xmm5
	movaps	xmmword ptr [rsp + 0xb0], xmm6
	movaps	xmmword ptr [rsp + 0xc0], xmm7
.label_48:
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
	#Procedure 0x401b33
	.globl sub_401b33
	.type sub_401b33, @function
sub_401b33:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x401b40
	.globl close_stdout_set_file_name
	.type close_stdout_set_file_name, @function
close_stdout_set_file_name:

	mov	qword ptr [rip + file_name],  rdi
	ret	
	.section	.text
	.align	32
	#Procedure 0x401b48
	.globl sub_401b48
	.type sub_401b48, @function
sub_401b48:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x401b50
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
.label_50:
	mov	rsi, rbx
	call	realloc
	test	rbx, rbx
	je	.label_51
	test	rax, rax
	je	.label_49
.label_51:
	pop	rbx
	ret	
.label_49:
	call	xalloc_die
	.section	.text
	.align	32
	#Procedure 0x401b98
	.globl sub_401b98
	.type sub_401b98, @function
sub_401b98:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x401ba0
	.globl quotearg_n_mem
	.type quotearg_n_mem, @function
quotearg_n_mem:

	mov	ecx, OFFSET FLAT:default_quoting_options
	jmp	quotearg_n_options
	.section	.text
	.align	32
	#Procedure 0x401baa
	.globl sub_401baa
	.type sub_401baa, @function
sub_401baa:

	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x401bb0
	.globl quotearg_n
	.type quotearg_n, @function
quotearg_n:

	mov	rdx, -1
	mov	ecx, OFFSET FLAT:default_quoting_options
	jmp	quotearg_n_options
	.section	.text
	.align	32
	#Procedure 0x401bbe
	.globl sub_401bbe
	.type sub_401bbe, @function
sub_401bbe:

	nop	
	.section	.text
	.align	32
	#Procedure 0x401bc0

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
	js	.label_52
	mov	eax, dword ptr [r13]
	mov	rbp, qword ptr [rip + slotvec]
	cmp	dword ptr [rip + nslots],  r12d
	mov	qword ptr [rsp + 0x18], r13
	mov	dword ptr [rsp], eax
	mov	qword ptr [rsp + 0x10], rbx
	mov	qword ptr [rsp + 8], r15
	jg	.label_55
	cmp	r12d, 0x7fffffff
	je	.label_57
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
	jne	.label_53
	movups	xmm0, xmmword ptr [rip + slotvec0]
	movups	xmmword ptr [r14], xmm0
.label_53:
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
.label_55:
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
	jbe	.label_58
	mov	rax, qword ptr [rsp + 0x18]
	mov	ebp, dword ptr [rsp]
	jmp	.label_54
.label_58:
	lea	rax, [rbp + r13]
	lea	r12, [rbp + r13 + 8]
	inc	r15
	mov	qword ptr [rax], r15
	mov	eax, OFFSET FLAT:slot0
	cmp	r14, rax
	mov	ebp, dword ptr [rsp]
	je	.label_56
	mov	rdi, r14
	call	free
.label_56:
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
.label_54:
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
.label_52:
	call	abort
.label_57:
	call	xalloc_die
	.section	.text
	.align	32
	#Procedure 0x401d7d
	.globl sub_401d7d
	.type sub_401d7d, @function
sub_401d7d:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x401d80

	.globl parse_tab_stops
	.type parse_tab_stops, @function
parse_tab_stops:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x28
	mov	r13, rdi
	mov	al, 1
	mov	qword ptr [rsp + 0x10], rax
	mov	r12d, 0
	xor	eax, eax
	mov	qword ptr [rsp + 0x18], rax
	mov	dword ptr [rsp + 0xc], 0
	xor	r14d, r14d
	xor	ebp, ebp
	jmp	.label_59
	.section	.text
	.align	32
	#Procedure 0x401db4
	.globl sub_401db4
	.type sub_401db4, @function
sub_401db4:

	nop	word ptr cs:[rax + rax]
.label_65:
	inc	r13
	mov	bpl, r15b
.label_59:
	movzx	ebx, byte ptr [r13]
	cmp	rbx, 0x2c
	je	.label_73
	test	bl, bl
	je	.label_76
	call	__ctype_b_loc
	mov	rax, qword ptr [rax]
	test	byte ptr [rax + rbx*2], 1
	jne	.label_73
	cmp	bl, 0x2b
	je	.label_84
	cmp	bl, 0x2f
	jne	.label_85
	mov	r14b, 1
	test	bpl, 1
	je	.label_88
	xor	eax, eax
	mov	qword ptr [rsp + 0x10], rax
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_60
	mov	edx, 5
	call	dcgettext
	mov	rbx, r12
	mov	r12, rax
	mov	rdi, r13
	call	quote
	mov	rcx, rax
	xor	edi, edi
	xor	esi, esi
	xor	eax, eax
	mov	rdx, r12
	mov	r12, rbx
	call	error
.label_88:
	mov	dword ptr [rsp + 0xc], 0
	mov	r15b, bpl
	jmp	.label_65
	.section	.text
	.align	32
	#Procedure 0x401e4c
	.globl sub_401e4c
	.type sub_401e4c, @function
sub_401e4c:

	nop	dword ptr [rax]
.label_73:
	test	bpl, 1
	je	.label_75
	test	r14b, 1
	jne	.label_77
	mov	eax, dword ptr [rsp + 0xc]
	test	al, 1
	jne	.label_80
	mov	rdi, r12
	call	add_tab_stop
	jmp	.label_75
.label_77:
	cmp	qword ptr [rip + extend_size],  0
	jne	.label_63
	mov	qword ptr [rip + extend_size],  r12
	jmp	.label_75
.label_80:
	cmp	qword ptr [rip + increment_size],  0
	jne	.label_61
	mov	qword ptr [rip + increment_size],  r12
	nop	word ptr [rax + rax]
.label_75:
	xor	r15d, r15d
	jmp	.label_65
.label_84:
	mov	al, 1
	mov	dword ptr [rsp + 0xc], eax
	test	bpl, 1
	je	.label_67
	xor	eax, eax
	mov	qword ptr [rsp + 0x10], rax
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_72
	mov	edx, 5
	call	dcgettext
	mov	rbx, r12
	mov	r12, rax
	mov	rdi, r13
	call	quote
	mov	rcx, rax
	xor	edi, edi
	xor	esi, esi
	xor	eax, eax
	mov	rdx, r12
	mov	r12, rbx
	call	error
.label_67:
	xor	r14d, r14d
	mov	r15b, bpl
	jmp	.label_65
.label_85:
	movsx	eax, bl
	add	eax, -0x30
	cmp	eax, 9
	ja	.label_78
	mov	eax, ebp
	and	al, 1
	mov	ecx, 0
	cmove	r12, rcx
	mov	r15b, 1
	je	.label_70
	mov	r15b, bpl
.label_70:
	test	al, al
	mov	rax, qword ptr [rsp + 0x18]
	cmove	rax, r13
	mov	qword ptr [rsp + 0x18], rax
	movabs	rax, 0x1999999999999999
	cmp	r12, rax
	ja	.label_64
	lea	rax, [r12 + r12*4]
	movsx	rcx, bl
	lea	rax, [rcx + rax*2 - 0x30]
	cmp	rax, r12
	jae	.label_62
.label_64:
	mov	esi, OFFSET FLAT:label_74
	mov	rbp, qword ptr [rsp + 0x18]
	mov	rdi, rbp
	call	strspn
	mov	qword ptr [rsp + 0x20], r12
	mov	r12, rax
	mov	rdi, rbp
	mov	rsi, r12
	call	xstrndup
	mov	rbx, rax
	xor	eax, eax
	mov	qword ptr [rsp + 0x10], rax
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_71
	mov	edx, 5
	call	dcgettext
	mov	r13, rax
	mov	rdi, rbx
	call	quote
	mov	rcx, rax
	xor	edi, edi
	xor	esi, esi
	xor	eax, eax
	mov	rdx, r13
	call	error
	mov	rdi, rbx
	call	free
	lea	r13, [rbp + r12 - 1]
	mov	r12, qword ptr [rsp + 0x20]
	jmp	.label_65
.label_62:
	mov	r12, rax
	jmp	.label_65
.label_76:
	mov	rbx, qword ptr [rsp + 0x10]
	and	bpl, bl
	test	bpl, 1
	je	.label_66
	test	r14b, 1
	jne	.label_79
	mov	eax, dword ptr [rsp + 0xc]
	test	al, 1
	jne	.label_82
	mov	rdi, r12
	call	add_tab_stop
	jmp	.label_66
.label_79:
	mov	bl, 1
	cmp	qword ptr [rip + extend_size],  0
	je	.label_86
	xor	ebx, ebx
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_87
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	xor	edi, edi
	xor	esi, esi
	xor	eax, eax
	mov	rdx, rcx
	call	error
.label_86:
	mov	qword ptr [rip + extend_size],  r12
	jmp	.label_66
.label_82:
	mov	bl, 1
	cmp	qword ptr [rip + increment_size],  0
	je	.label_69
	xor	ebx, ebx
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_68
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	xor	edi, edi
	xor	esi, esi
	xor	eax, eax
	mov	rdx, rcx
	call	error
.label_69:
	mov	qword ptr [rip + increment_size],  r12
.label_66:
	test	bl, 1
	je	.label_83
	add	rsp, 0x28
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_63:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_87
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	xor	edi, edi
	xor	esi, esi
	xor	eax, eax
	mov	rdx, rcx
	call	error
	mov	qword ptr [rip + extend_size],  r12
.label_83:
	mov	edi, 1
	call	exit
.label_61:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_68
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	xor	edi, edi
	xor	esi, esi
	xor	eax, eax
	mov	rdx, rcx
	call	error
	mov	qword ptr [rip + increment_size],  r12
	mov	edi, 1
	call	exit
.label_78:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_81
	mov	edx, 5
	call	dcgettext
	mov	r14, rax
	mov	rdi, r13
	call	quote
	mov	rcx, rax
	xor	edi, edi
	xor	esi, esi
	xor	eax, eax
	mov	rdx, r14
	call	error
	mov	edi, 1
	call	exit
	.section	.text
	.align	32
	#Procedure 0x402114
	.globl sub_402114
	.type sub_402114, @function
sub_402114:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x402120
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
	#Procedure 0x402138
	.globl sub_402138
	.type sub_402138, @function
sub_402138:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x402140
	.globl x2nrealloc
	.type x2nrealloc, @function
x2nrealloc:

	push	rbx
	mov	rbx, rdx
	mov	rcx, qword ptr [rsi]
	test	rdi, rdi
	je	.label_89
	movabs	rax, 0x5555555555555554
	xor	edx, edx
	div	rbx
	cmp	rax, rcx
	jbe	.label_93
	mov	rax, rcx
	shr	rax, 1
	lea	rcx, [rcx + rax + 1]
	jmp	.label_90
.label_93:
	call	xalloc_die
.label_94:
	call	xalloc_die
	.section	.text
	.align	32
	#Procedure 0x402177
	.globl sub_402177
	.type sub_402177, @function
sub_402177:

	nop	word ptr [rax + rax]
.label_91:
	mov	rsi, rbx
	call	realloc
	test	rbx, rbx
	je	.label_92
	test	rax, rax
	je	.label_93
.label_92:
	pop	rbx
	ret	
.label_89:
	test	rcx, rcx
	jne	.label_95
	mov	eax, 0x80
	xor	edx, edx
	div	rbx
	xor	ecx, ecx
	cmp	rbx, 0x80
	seta	cl
	add	rcx, rax
.label_95:
	movabs	rax, 0x7fffffffffffffff
	xor	edx, edx
	div	rbx
	cmp	rax, rcx
	jb	.label_94
.label_90:
	mov	qword ptr [rsi], rcx
	imul	rbx, rcx
	test	rdi, rdi
	je	.label_91
	test	rbx, rbx
	jne	.label_91
	call	free
	xor	eax, eax
	pop	rbx
	ret	
.label_96:
	call	xalloc_die
	.section	.text
	.align	32
	#Procedure 0x4021e5
	.globl sub_4021e5
	.type sub_4021e5, @function
sub_4021e5:

	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4021eb
	.globl xcharalloc
	.type xcharalloc, @function
xcharalloc:

	push	rbx
	mov	rbx, rdi
	call	malloc
	test	rbx, rbx
	je	.label_97
	test	rax, rax
	je	.label_96
.label_97:
	pop	rbx
	ret	
.label_98:
	call	xalloc_die
	.section	.text
	.align	32
	#Procedure 0x402205
	.globl sub_402205
	.type sub_402205, @function
sub_402205:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x402209

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
	je	.label_99
	test	r15, r15
	je	.label_98
.label_99:
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
	#Procedure 0x402240
	.globl x2realloc
	.type x2realloc, @function
x2realloc:

	push	rbx
	mov	rax, qword ptr [rsi]
	test	rdi, rdi
	je	.label_100
	movabs	rcx, 0x5555555555555554
	cmp	rax, rcx
	jae	.label_102
	mov	rbx, rax
	shr	rbx, 1
	add	rbx, rax
	inc	rbx
	mov	qword ptr [rsi], rbx
	jne	.label_104
	call	free
	xor	eax, eax
	jmp	.label_103
.label_102:
	call	xalloc_die
	.section	.text
	.align	32
	#Procedure 0x402277
	.globl sub_402277
	.type sub_402277, @function
sub_402277:

	nop	word ptr cs:[rax + rax]
.label_100:
	test	rax, rax
	mov	ebx, 0x80
	cmovne	rbx, rax
	test	rbx, rbx
	js	.label_101
	mov	qword ptr [rsi], rbx
.label_104:
	mov	rsi, rbx
	call	realloc
	test	rbx, rbx
	je	.label_103
	test	rax, rax
	je	.label_101
.label_103:
	pop	rbx
	ret	
.label_101:
	call	xalloc_die
	.section	.text
	.align	32
	#Procedure 0x4022b0

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
	mov	rbx, rsi
	mov	ebp, edi
	mov	rdi, qword ptr [rbx]
	call	set_program_name
	mov	edi, 6
	mov	esi, OFFSET FLAT:label_125
	call	setlocale
	mov	edi, OFFSET FLAT:label_128
	mov	esi, OFFSET FLAT:label_129
	call	bindtextdomain
	mov	edi, OFFSET FLAT:label_128
	call	textdomain
	mov	edi, OFFSET FLAT:close_stdout
	call	atexit
	mov	byte ptr [rip + convert_entire_line],  1
	lea	r14, [rsp + 0xe]
	jmp	.label_114
	.section	.text
	.align	32
	#Procedure 0x40230b
	.globl sub_40230b
	.type sub_40230b, @function
sub_40230b:

	nop	dword ptr [rax + rax]
.label_122:
	dec	rdi
	call	parse_tab_stops
.label_114:
	mov	edx, OFFSET FLAT:shortopts
	mov	ecx, OFFSET FLAT:longopts
	xor	r8d, r8d
	mov	edi, ebp
	mov	rsi, rbx
	call	getopt_long
	lea	ecx, [rax + 1]
	cmp	ecx, 0x75
	ja	.label_119
	jmp	qword ptr [(rcx * 8) + label_121]
.label_470:
	mov	rdi, qword ptr [rip + optarg]
	test	rdi, rdi
	jne	.label_122
	mov	byte ptr [rsp + 0xe], al
	mov	byte ptr [rsp + 0xf], 0
	mov	rdi, r14
	call	parse_tab_stops
	jmp	.label_114
.label_472:
	mov	rdi, qword ptr [rip + optarg]
	call	parse_tab_stops
	jmp	.label_114
.label_471:
	mov	byte ptr [rip + convert_entire_line],  0
	jmp	.label_114
.label_469:
	call	finalize_tab_stops
	movsxd	rax, dword ptr [rip + optind]
	xor	ecx, ecx
	cmp	eax, ebp
	lea	rdi, [rbx + rax*8]
	cmovge	rdi, rcx
	call	set_file_list
	xor	edi, edi
	call	next_file
	mov	r12, rax
	test	r12, r12
	je	.label_111
	lea	r15, [rsp + 0xd]
.label_107:
	mov	qword ptr [rsp + 0x10], 0
	mov	r14b, 1
	xor	r13d, r13d
	nop	dword ptr [rax]
.label_105:
	mov	rbx, r12
.label_131:
	mov	rax, qword ptr [rbx + 8]
	cmp	rax, qword ptr [rbx + 0x10]
	jb	.label_123
	mov	rdi, rbx
	call	__uflow
	mov	ebp, eax
	test	ebp, ebp
	jns	.label_127
	mov	rdi, rbx
	call	next_file
	mov	rbx, rax
	test	rbx, rbx
	mov	r12d, 0
	jne	.label_131
	jmp	.label_134
	.section	.text
	.align	32
	#Procedure 0x4023f3
	.globl sub_4023f3
	.type sub_4023f3, @function
sub_4023f3:

	nop	word ptr cs:[rax + rax]
.label_123:
	lea	rcx, [rax + 1]
	mov	qword ptr [rbx + 8], rcx
	movzx	ebp, byte ptr [rax]
.label_127:
	mov	r12, rbx
.label_134:
	test	r14b, 1
	je	.label_108
	cmp	ebp, 8
	je	.label_110
	cmp	ebp, 9
	jne	.label_112
	mov	rdi, r13
	lea	rsi, [rsp + 0x10]
	mov	rdx, r15
	call	get_next_tab_column
	mov	rbp, rax
	lea	rbx, [r13 + 1]
	cmp	byte ptr [rsp + 0xd], 0
	cmovne	rbp, rbx
	cmp	rbp, r13
	jae	.label_106
	jmp	.label_120
.label_126:
	lea	rcx, [rax + 1]
	mov	qword ptr [rdi + 0x28], rcx
	mov	byte ptr [rax], 0x20
	inc	rbx
.label_106:
	cmp	rbx, rbp
	jae	.label_130
	mov	rdi, qword ptr [rip + stdout]
	mov	rax, qword ptr [rdi + 0x28]
	cmp	rax, qword ptr [rdi + 0x30]
	jb	.label_126
	mov	esi, 0x20
	call	__overflow
	test	eax, eax
	js	.label_136
	inc	rbx
	jmp	.label_106
.label_110:
	cmp	r13, 1
	adc	r13, -1
	mov	rax, qword ptr [rsp + 0x10]
	cmp	rax, 1
	adc	rax, -1
	mov	qword ptr [rsp + 0x10], rax
	mov	ebp, 8
	jmp	.label_118
.label_112:
	inc	r13
	jne	.label_118
	jmp	.label_120
.label_130:
	mov	ebp, 0x20
	mov	r13, rbx
.label_118:
	mov	r14b, 1
	cmp	byte ptr [rip + convert_entire_line],  0
	jne	.label_108
	movsxd	rbx, ebp
	call	__ctype_b_loc
	mov	rax, qword ptr [rax]
	mov	r14b, byte ptr [rax + rbx*2]
	and	r14b, 1
	nop	dword ptr [rax]
.label_108:
	test	ebp, ebp
	js	.label_111
	mov	rdi, qword ptr [rip + stdout]
	mov	rax, qword ptr [rdi + 0x28]
	cmp	rax, qword ptr [rdi + 0x30]
	jae	.label_132
	lea	rcx, [rax + 1]
	mov	qword ptr [rdi + 0x28], rcx
	mov	byte ptr [rax], bpl
.label_109:
	cmp	ebp, 0xa
	jne	.label_105
	jmp	.label_107
.label_132:
	movzx	esi, bpl
	call	__overflow
	test	eax, eax
	jns	.label_109
.label_136:
	call	__errno_location
	mov	ebx, dword ptr [rax]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_113
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	mov	edi, 1
	xor	eax, eax
	mov	esi, ebx
	mov	rdx, rcx
	call	error
.label_111:
	call	cleanup_file_list_stdin
	mov	eax, dword ptr [rip + exit_status]
	add	rsp, 0x18
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_119:
	cmp	eax, 0xffffff7d
	je	.label_124
	cmp	eax, 0xffffff7e
	jne	.label_133
	xor	edi, edi
	call	usage
.label_120:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_135
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	mov	edi, 1
	xor	esi, esi
	xor	eax, eax
	mov	rdx, rcx
	call	error
.label_133:
	mov	edi, 1
	call	usage
.label_124:
	mov	rdi, qword ptr [rip + stdout]
	mov	rcx, qword ptr [rip + Version]
	mov	esi, OFFSET FLAT:label_115
	mov	edx, OFFSET FLAT:label_116
	mov	r8d, OFFSET FLAT:label_117
	xor	r9d, r9d
	xor	eax, eax
	call	version_etc
	xor	edi, edi
	call	exit
	.section	.text
	.align	32
	#Procedure 0x4025d4
	.globl sub_4025d4
	.type sub_4025d4, @function
sub_4025d4:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4025e0
	.globl quotearg_char_mem
	.type quotearg_char_mem, @function
quotearg_char_mem:

	sub	rsp, 0x38
	mov	ecx, edx
	mov	r8, rsi
	mov	rdx, rdi
	mov	rsi, qword ptr [rip + label_137]
	mov	qword ptr [rsp + 0x30], rsi
	movups	xmm0, xmmword ptr [rip + label_138]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0, xmmword ptr [rip + label_139]
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
	#Procedure 0x40264e
	.globl sub_40264e
	.type sub_40264e, @function
sub_40264e:

	nop	
	.section	.text
	.align	32
	#Procedure 0x402650
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
	je	.label_140
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
.label_140:
	call	abort
	.section	.text
	.align	32
	#Procedure 0x4026b8
	.globl sub_4026b8
	.type sub_4026b8, @function
sub_4026b8:

	nop	dword ptr [rax + rax]
.label_142:
	mov	ecx, 1
.label_141:
	mov	rdi, rcx
	mov	rsi, rax
	jmp	calloc
	.section	.text
	.align	32
	#Procedure 0x4026d0
	.globl sub_4026d0
	.type sub_4026d0, @function
sub_4026d0:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4026d5

	.globl rpl_calloc
	.type rpl_calloc, @function
rpl_calloc:
	test	rdi, rdi
	mov	eax, 1
	je	.label_142
	test	rsi, rsi
	mov	ecx, 1
	je	.label_141
	mov	rax, rsi
	imul	rax, rdi
	xor	edx, edx
	div	rsi
	cmp	rax, rdi
	mov	rax, rsi
	mov	rcx, rdi
	je	.label_141
	push	rax
	call	__errno_location
	mov	dword ptr [rax], 0xc
	xor	eax, eax
	pop	rcx
	ret	
	.section	.text
	.align	32
	#Procedure 0x402710
	.globl quotearg_custom
	.type quotearg_custom, @function
quotearg_custom:

	sub	rsp, 0x38
	mov	rax, rdx
	mov	rcx, qword ptr [rip + label_137]
	mov	qword ptr [rsp + 0x30], rcx
	movups	xmm0, xmmword ptr [rip + label_138]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0, xmmword ptr [rip + label_139]
	movaps	xmmword ptr [rsp + 0x10], xmm0
	movups	xmm0, xmmword ptr [rip + default_quoting_options]
	movaps	xmmword ptr [rsp], xmm0
	mov	dword ptr [rsp], 0xa
	test	rdi, rdi
	je	.label_143
	test	rsi, rsi
	je	.label_143
	mov	qword ptr [rsp + 0x28], rdi
	mov	qword ptr [rsp + 0x30], rsi
	lea	rcx, [rsp]
	xor	edi, edi
	mov	rdx, -1
	mov	rsi, rax
	call	quotearg_n_options
	add	rsp, 0x38
	ret	
.label_143:
	call	abort
	.section	.text
	.align	32
	#Procedure 0x402780

	.globl xalloc_die
	.type xalloc_die, @function
xalloc_die:
	push	rbx
	mov	ebx, dword ptr [rip + exit_failure]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_144
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	xor	esi, esi
	mov	edx, OFFSET FLAT:label_145
	xor	eax, eax
	mov	edi, ebx
	call	error
	call	abort
	.section	.text
	.align	32
	#Procedure 0x4027b0

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
	#Procedure 0x4027c7
	.globl sub_4027c7
	.type sub_4027c7, @function
sub_4027c7:

	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4027d0
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
	je	.label_146
	mov	qword ptr [rax], rbx
.label_146:
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
	#Procedure 0x4028bc
	.globl sub_4028bc
	.type sub_4028bc, @function
sub_4028bc:

	nop	dword ptr [rax]
.label_147:
	call	abort
	.section	.text
	.align	32
	#Procedure 0x4028c5
	.globl sub_4028c5
	.type sub_4028c5, @function
sub_4028c5:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4028cd
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
	je	.label_147
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
.label_148:
	call	abort
	.section	.text
	.align	32
	#Procedure 0x402935
	.globl sub_402935
	.type sub_402935, @function
sub_402935:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x402940

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
	je	.label_148
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
.label_154:
	mov	rcx, qword ptr [rip + stderr]
	mov	edi, OFFSET FLAT:label_152
	mov	esi, 0x37
	mov	edx, 1
	call	fwrite
	call	abort
	.section	.text
	.align	32
	#Procedure 0x4029f0
	.globl sub_4029f0
	.type sub_4029f0, @function
sub_4029f0:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4029ff

	.globl set_program_name
	.type set_program_name, @function
set_program_name:
	push	r14
	push	rbx
	push	rax
	mov	rbx, rdi
	test	rbx, rbx
	je	.label_154
	mov	esi, 0x2f
	mov	rdi, rbx
	call	strrchr
	test	rax, rax
	lea	r14, [rax + 1]
	cmove	r14, rbx
	mov	rax, r14
	sub	rax, rbx
	cmp	rax, 7
	jl	.label_149
	lea	rdi, [r14 - 7]
	mov	esi, OFFSET FLAT:label_151
	mov	edx, 7
	call	strncmp
	test	eax, eax
	jne	.label_149
	mov	esi, OFFSET FLAT:label_150
	mov	edx, 3
	mov	rdi, r14
	call	strncmp
	test	eax, eax
	jne	.label_153
	add	r14, 3
	mov	qword ptr [rip + __progname],  r14
.label_153:
	mov	rbx, r14
.label_149:
	mov	qword ptr [rip + program_name],  rbx
	mov	qword ptr [rip + __progname_full],  rbx
	add	rsp, 8
	pop	rbx
	pop	r14
	ret	
	.section	.text
	.align	32
	#Procedure 0x402a80

	.globl next_file
	.type next_file, @function
next_file:
	push	rbp
	push	r15
	push	r14
	push	rbx
	push	rax
	mov	r14, rdi
	test	r14, r14
	je	.label_155
	mov	rbx, qword ptr [rip + next_file.prev_file]
	test	rbx, rbx
	je	.label_157
	test	byte ptr [r14], 0x20
	je	.label_164
	call	__errno_location
	mov	ebp, dword ptr [rax]
	xor	edi, edi
	mov	esi, 3
	mov	rdx, rbx
	call	quotearg_n_style_colon
	mov	rcx, rax
	xor	edi, edi
	mov	edx, OFFSET FLAT:label_145
	xor	eax, eax
	mov	esi, ebp
	call	error
	mov	dword ptr [rip + exit_status],  1
	mov	rbx, qword ptr [rip + next_file.prev_file]
.label_164:
	cmp	byte ptr [rbx], 0x2d
	jne	.label_168
	cmp	byte ptr [rbx + 1], 0
	je	.label_165
.label_168:
	mov	rdi, r14
	call	rpl_fclose
	test	eax, eax
	je	.label_155
	call	__errno_location
	mov	ebx, dword ptr [rax]
	mov	rdx, qword ptr [rip + next_file.prev_file]
	xor	edi, edi
	mov	esi, 3
	call	quotearg_n_style_colon
	mov	rcx, rax
	xor	edi, edi
	mov	edx, OFFSET FLAT:label_145
	xor	eax, eax
	mov	esi, ebx
	call	error
	mov	dword ptr [rip + exit_status],  1
	jmp	.label_155
.label_165:
	mov	rdi, r14
	call	clearerr_unlocked
.label_155:
	mov	rax, qword ptr [rip + file_list]
	lea	rcx, [rax + 8]
	mov	qword ptr [rip + file_list],  rcx
	mov	rbx, qword ptr [rax]
	xor	r14d, r14d
	test	rbx, rbx
	je	.label_167
	xor	r14d, r14d
	jmp	.label_161
	.section	.text
	.align	32
	#Procedure 0x402b61
	.globl sub_402b61
	.type sub_402b61, @function
sub_402b61:

	nop	word ptr cs:[rax + rax]
.label_166:
	call	__errno_location
	mov	ebp, dword ptr [rax]
	xor	edi, edi
	mov	esi, 3
	mov	rdx, rbx
	call	quotearg_n_style_colon
	mov	rcx, rax
	xor	edi, edi
	mov	edx, OFFSET FLAT:label_145
	xor	eax, eax
	mov	esi, ebp
	call	error
	mov	dword ptr [rip + exit_status],  1
	mov	rax, qword ptr [rip + file_list]
	lea	rcx, [rax + 8]
	mov	qword ptr [rip + file_list],  rcx
	mov	rbx, qword ptr [rax]
	test	rbx, rbx
	jne	.label_161
	jmp	.label_167
.label_162:
	mov	byte ptr [rip + have_read_stdin],  1
	mov	r15, qword ptr [rip + stdin]
	jmp	.label_169
	.section	.text
	.align	32
	#Procedure 0x402bcf
	.globl sub_402bcf
	.type sub_402bcf, @function
sub_402bcf:

	nop	
.label_161:
	cmp	byte ptr [rbx], 0x2d
	jne	.label_156
	cmp	byte ptr [rbx + 1], 0
	je	.label_162
.label_156:
	mov	esi, OFFSET FLAT:label_163
	mov	rdi, rbx
	call	fopen
	mov	r15, rax
.label_169:
	test	r15, r15
	je	.label_166
	mov	qword ptr [rip + next_file.prev_file],  rbx
	mov	esi, 2
	mov	rdi, r15
	call	fadvise
	mov	r14, r15
.label_167:
	mov	rax, r14
	add	rsp, 8
	pop	rbx
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_157:
	mov	edi, OFFSET FLAT:label_158
	mov	esi, OFFSET FLAT:label_159
	mov	edx, 0x155
	mov	ecx, OFFSET FLAT:label_160
	call	__assert_fail
	.section	.text
	.align	32
	#Procedure 0x402c2e
	.globl sub_402c2e
	.type sub_402c2e, @function
sub_402c2e:

	nop	
	.section	.text
	.align	32
	#Procedure 0x402c30

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
.label_238:
	mov	r11, rbp
	xor	r14d, r14d
	mov	ecx, r15d
	cmp	r15d, 0xa
	ja	.label_236
	mov	edi, 7
	mov	r13b, 1
	xor	esi, esi
	mov	r8, qword ptr [rsp + 0x30]
	jmp	qword ptr [(rcx * 8) + label_268]
.label_439:
	mov	byte ptr [rsp + 7], r10b
	mov	edi, OFFSET FLAT:label_243
	mov	esi, r15d
	mov	rbx, r11
	mov	ebp, r9d
	call	gettext_quote
	mov	qword ptr [rsp + 0x78], rax
	mov	edi, OFFSET FLAT:label_171
	mov	esi, r15d
	call	gettext_quote
	mov	r9d, ebp
	mov	r10b, byte ptr [rsp + 7]
	mov	r11, rbx
	mov	qword ptr [rsp + 0x70], rax
.label_440:
	mov	dword ptr [rsp + 0x50], r9d
	mov	byte ptr [rsp + 7], r10b
	test	r12b, 1
	mov	r14d, 0
	mov	rcx, qword ptr [rsp + 0x78]
	jne	.label_258
	mov	al, byte ptr [rcx]
	test	al, al
	mov	r14d, 0
	je	.label_258
	xor	r14d, r14d
	nop	word ptr cs:[rax + rax]
.label_269:
	cmp	r14, r11
	jae	.label_266
	mov	rdx, qword ptr [rsp + 8]
	mov	byte ptr [rdx + r14], al
.label_266:
	movzx	eax, byte ptr [rcx + r14 + 1]
	inc	r14
	test	al, al
	jne	.label_269
.label_258:
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
	jmp	.label_172
.label_432:
	xor	edi, edi
	xor	r14d, r14d
	mov	r13d, eax
	xor	esi, esi
	jmp	.label_172
.label_435:
	mov	al, 1
.label_433:
	mov	r12b, 1
.label_436:
	test	r12b, 1
	mov	cl, 1
	je	.label_284
	mov	ecx, eax
.label_284:
	mov	al, cl
.label_434:
	test	r12b, 1
	jne	.label_286
	test	r11, r11
	je	.label_270
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx], 0x27
.label_270:
	mov	r14d, 1
	jmp	.label_290
.label_286:
	xor	r14d, r14d
.label_290:
	mov	ecx, OFFSET FLAT:label_171
	mov	qword ptr [rsp + 0x48], rcx
	mov	ecx, 1
	mov	qword ptr [rsp + 0x40], rcx
	mov	r13d, eax
	mov	sil, r12b
	mov	edi, 2
	jmp	.label_172
.label_437:
	test	r12b, 1
	jne	.label_184
	test	r11, r11
	je	.label_188
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax], 0x22
.label_188:
	mov	r14d, 1
	jmp	.label_191
.label_438:
	mov	r13b, 1
	mov	edi, 5
	xor	r14d, r14d
	mov	eax, OFFSET FLAT:label_194
	mov	qword ptr [rsp + 0x48], rax
	mov	eax, 1
	mov	qword ptr [rsp + 0x40], rax
	mov	sil, 1
	jmp	.label_172
.label_184:
	xor	r14d, r14d
.label_191:
	mov	eax, OFFSET FLAT:label_194
	mov	qword ptr [rsp + 0x48], rax
	mov	eax, 1
	mov	qword ptr [rsp + 0x40], rax
	mov	r13b, 1
	mov	sil, r12b
	mov	edi, 5
	nop	word ptr cs:[rax + rax]
.label_172:
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
	jmp	.label_216
	.section	.text
	.align	32
	#Procedure 0x402f1d
	.globl sub_402f1d
	.type sub_402f1d, @function
sub_402f1d:

	nop	dword ptr [rax]
.label_271:
	inc	rsi
.label_216:
	cmp	rbp, -1
	je	.label_252
	cmp	rsi, rbp
	jne	.label_253
	jmp	.label_254
	.section	.text
	.align	32
	#Procedure 0x402f33
	.globl sub_402f33
	.type sub_402f33, @function
sub_402f33:

	nop	word ptr cs:[rax + rax]
.label_252:
	mov	rcx, -1
	cmp	byte ptr [rdi + rsi], 0
	je	.label_260
.label_253:
	cmp	byte ptr [rsp + 0x2f], 0
	je	.label_287
	mov	rax, qword ptr [rsp + 0x40]
	lea	rbx, [rsi + rax]
	cmp	rax, 2
	jb	.label_264
	cmp	rbp, -1
	jne	.label_264
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
.label_264:
	cmp	rbx, rbp
	jbe	.label_275
.label_287:
	xor	r8d, r8d
.label_177:
	movzx	r15d, byte ptr [rdi + rsi]
	cmp	r15, 0x7e
	ja	.label_277
	xor	edx, edx
	mov	r13b, 1
	mov	cl, 0x6e
	mov	bl, 0x61
	xor	eax, eax
	jmp	qword ptr [(r15 * 8) + label_280]
.label_451:
	test	rsi, rsi
	jne	.label_176
	jmp	.label_206
	.section	.text
	.align	32
	#Procedure 0x402fd5
	.globl sub_402fd5
	.type sub_402fd5, @function
sub_402fd5:

	nop	word ptr cs:[rax + rax]
.label_275:
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
	jne	.label_173
	cmp	byte ptr [rsp + 6], 0
	mov	rdi, qword ptr [rsp + 0x30]
	mov	r11, rbx
	mov	r10d, r15d
	mov	rax, qword ptr [rsp + 0x38]
	mov	r9d, ebp
	mov	rsi, r12
	mov	r12, rax
	mov	rbp, qword ptr [rsp + 0x20]
	je	.label_177
	jmp	.label_190
.label_173:
	mov	rdi, qword ptr [rsp + 0x30]
	mov	r11, rbx
	mov	r10d, r15d
	mov	rax, qword ptr [rsp + 0x38]
	mov	r9d, ebp
	mov	rsi, r12
	mov	r12, rax
	mov	rbp, qword ptr [rsp + 0x20]
	jmp	.label_177
.label_455:
	xor	eax, eax
	cmp	rbp, -1
	je	.label_200
	test	rsi, rsi
	jne	.label_203
	cmp	rbp, 1
	je	.label_206
	xor	r13d, r13d
	jmp	.label_186
.label_444:
	cmp	byte ptr [rsp + 0x17], 0
	je	.label_213
	cmp	byte ptr [rsp + 6], 0
	jne	.label_215
	cmp	r12d, 2
	jne	.label_220
	mov	eax, r9d
	and	al, 1
	jne	.label_220
	cmp	r14, r11
	jae	.label_225
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], 0x27
.label_225:
	lea	rax, [r14 + 1]
	cmp	rax, r11
	jae	.label_229
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + rax], 0x24
.label_229:
	lea	rax, [r14 + 2]
	cmp	rax, r11
	jae	.label_227
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + rax], 0x27
.label_227:
	add	r14, 3
	mov	r9b, 1
.label_220:
	mov	rcx, r14
	cmp	rcx, r11
	jae	.label_239
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + rcx], 0x5c
.label_239:
	lea	r14, [rcx + 1]
	mov	al, 1
	mov	r15b, 0x30
	cmp	r12d, 2
	je	.label_242
	lea	rdx, [rsi + 1]
	cmp	rdx, rbp
	jae	.label_242
	mov	dl, byte ptr [rdi + rdx]
	add	dl, 0xd0
	cmp	dl, 9
	ja	.label_242
	cmp	r14, r11
	jae	.label_202
	mov	rdx, qword ptr [rsp + 8]
	mov	byte ptr [rdx + r14], 0x30
.label_202:
	lea	rdx, [rcx + 2]
	cmp	rdx, r11
	jae	.label_255
	mov	rbx, qword ptr [rsp + 8]
	mov	byte ptr [rbx + rdx], 0x30
.label_255:
	add	rcx, 3
	xor	r13d, r13d
	mov	r14, rcx
	jmp	.label_186
.label_445:
	mov	bl, 0x62
	jmp	.label_263
.label_446:
	mov	cl, 0x74
	jmp	.label_178
.label_447:
	mov	bl, 0x76
	jmp	.label_263
.label_448:
	mov	bl, 0x66
	jmp	.label_263
.label_449:
	mov	cl, 0x72
	jmp	.label_178
.label_452:
	mov	r15b, 0x27
	mov	al, 1
	mov	qword ptr [rsp + 0xa0], rax
	cmp	r12d, 2
	jne	.label_267
	cmp	byte ptr [rsp + 6], 0
	jne	.label_182
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
	jae	.label_274
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], 0x27
.label_274:
	lea	rax, [r14 + 1]
	cmp	rax, r11
	jae	.label_282
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + rax], 0x5c
.label_282:
	lea	rax, [r14 + 2]
	cmp	rax, r11
	jae	.label_285
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + rax], 0x27
.label_285:
	add	r14, 3
	xor	r9d, r9d
.label_267:
	xor	eax, eax
	mov	r13b, 1
	jmp	.label_186
.label_453:
	mov	r15b, 0x3f
	cmp	r12d, 5
	je	.label_291
	cmp	r12d, 2
	jne	.label_176
	cmp	byte ptr [rsp + 6], 0
	je	.label_176
	jmp	.label_182
.label_454:
	cmp	r12d, 2
	jne	.label_185
	cmp	byte ptr [rsp + 6], 0
	jne	.label_182
	mov	r15b, 0x5c
	xor	eax, eax
	xor	r13d, r13d
	jmp	.label_193
.label_277:
	mov	dword ptr [rsp + 0x54], r8d
	mov	dword ptr [rsp + 0x50], r9d
	mov	byte ptr [rsp + 7], r10b
	mov	qword ptr [rsp + 0x98], r11
	cmp	qword ptr [rsp + 0xa8], 1
	jne	.label_197
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
.label_198:
	and	r13b, 1
	mov	r8d, r13d
	or	r8b, byte ptr [rsp + 0x2a]
	mov	qword ptr [rsp + 0x60], r12
	cmp	r12, 1
	mov	r11, qword ptr [rsp + 0x98]
	mov	r10b, byte ptr [rsp + 7]
	mov	r12, qword ptr [rsp + 0x38]
	mov	r9d, dword ptr [rsp + 0x50]
	ja	.label_219
	test	r8b, r8b
	je	.label_219
	xor	eax, eax
	mov	rbp, qword ptr [rsp + 0x20]
	mov	r8d, dword ptr [rsp + 0x54]
	jmp	.label_186
.label_200:
	test	rsi, rsi
	jne	.label_241
	mov	cl, byte ptr [rdi + 1]
	test	cl, cl
	jne	.label_241
.label_206:
	mov	dl, 1
.label_450:
	cmp	byte ptr [rsp + 0x1f], 0
	je	.label_182
	xor	eax, eax
	mov	r13b, dl
	nop	word ptr [rax + rax]
.label_186:
	cmp	byte ptr [rsp + 0x2e], 0
	je	.label_248
	cmp	qword ptr [rsp + 0xf0], 0
	jne	.label_214
	jmp	.label_251
	.section	.text
	.align	32
	#Procedure 0x403324
	.globl sub_403324
	.type sub_403324, @function
sub_403324:

	nop	word ptr cs:[rax + rax]
.label_248:
	cmp	byte ptr [rsp + 0x2d], 0
	je	.label_251
.label_214:
	mov	ebx, r8d
	mov	r8, rsi
	mov	ecx, r15d
	shr	cl, 5
	movzx	edx, cl
	mov	esi, 1
	mov	ecx, r15d
	shl	esi, cl
	test	bl, bl
	jne	.label_256
	mov	rcx, qword ptr [rsp + 0xf0]
	and	esi, dword ptr [rcx + rdx*4]
	mov	ebx, r15d
	mov	rsi, r8
	je	.label_193
	jmp	.label_223
	.section	.text
	.align	32
	#Procedure 0x40336d
	.globl sub_40336d
	.type sub_40336d, @function
sub_40336d:

	nop	dword ptr [rax]
.label_251:
	test	r8b, r8b
	mov	ebx, r15d
	jne	.label_223
	jmp	.label_193
.label_256:
	mov	ebx, r15d
	mov	rsi, r8
	jmp	.label_223
.label_213:
	cmp	dword ptr [rsp + 0x90], 0
	jne	.label_271
	xor	r15d, r15d
	jmp	.label_176
.label_185:
	mov	cl, 0x5c
	cmp	byte ptr [rsp + 0x29], 0
	je	.label_178
	xor	eax, eax
	mov	r15b, 0x5c
	xor	r13d, r13d
	jmp	.label_193
.label_178:
	cmp	byte ptr [rsp + 0x1f], 0
	mov	ebx, ecx
	je	.label_182
.label_263:
	xor	eax, eax
	cmp	byte ptr [rsp + 0x17], 0
	mov	r13d, 0
	je	.label_186
	nop	word ptr cs:[rax + rax]
.label_223:
	cmp	byte ptr [rsp + 6], 0
	jne	.label_215
	cmp	r12d, 2
	jne	.label_288
	mov	eax, r9d
	and	al, 1
	jne	.label_288
	cmp	r14, r11
	jae	.label_228
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], 0x27
.label_228:
	lea	rax, [r14 + 1]
	cmp	rax, r11
	jae	.label_174
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + rax], 0x24
.label_174:
	lea	rax, [r14 + 2]
	cmp	rax, r11
	jae	.label_217
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + rax], 0x27
.label_217:
	add	r14, 3
	mov	r9b, 1
.label_288:
	cmp	r14, r11
	jae	.label_189
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], 0x5c
.label_189:
	inc	r14
	jmp	.label_195
.label_197:
	mov	qword ptr [rsp + 0x80], 0
	cmp	rbp, -1
	jne	.label_199
	mov	rbx, rsi
	call	strlen
	mov	rsi, rbx
	mov	rdi, qword ptr [rsp + 0x30]
	mov	rbp, rax
.label_199:
	lea	rax, [rdi + rsi]
	mov	qword ptr [rsp + 0x60], rax
	mov	r13b, 1
	xor	r12d, r12d
	lea	rax, [rsp + 0x80]
	mov	rcx, rax
	mov	qword ptr [rsp + 0x20], rbp
	mov	qword ptr [rsp + 0x58], rsi
.label_272:
	lea	rbx, [r12 + rsi]
	lea	rsi, [rdi + rbx]
	mov	rdx, rbp
	sub	rdx, rbx
	lea	rdi, [rsp + 0x94]
	call	rpl_mbrtowc
	mov	rbp, rax
	test	rbp, rbp
	je	.label_226
	cmp	rbp, -1
	movabs	rsi, 0x20000002b
	je	.label_232
	cmp	rbp, -2
	je	.label_235
	cmp	rbp, 1
	seta	al
	and	al, byte ptr [rsp + 0x2b]
	cmp	al, 1
	mov	rdi, qword ptr [rsp + 0x30]
	mov	r11, qword ptr [rsp + 0x98]
	jne	.label_246
	mov	rax, qword ptr [rsp + 0x60]
	lea	rax, [rax + r12]
	mov	ecx, 1
	nop	word ptr cs:[rax + rax]
.label_240:
	movsx	edx, byte ptr [rax + rcx]
	add	edx, -0x5b
	cmp	edx, 0x21
	ja	.label_201
	bt	rsi, rdx
	jb	.label_249
.label_201:
	inc	rcx
	cmp	rcx, rbp
	jb	.label_240
.label_246:
	mov	edi, dword ptr [rsp + 0x94]
	call	iswprint
	test	eax, eax
	jne	.label_208
	xor	r13d, r13d
.label_208:
	lea	rdi, [rsp + 0x80]
	add	r12, rbp
	mov	rbx, rdi
	call	mbsinit
	mov	rcx, rbx
	test	eax, eax
	mov	rdi, qword ptr [rsp + 0x30]
	mov	rbp, qword ptr [rsp + 0x20]
	mov	rsi, qword ptr [rsp + 0x58]
	je	.label_272
	jmp	.label_198
.label_242:
	xor	r13d, r13d
	jmp	.label_186
.label_241:
	mov	rbp, -1
	xor	r13d, r13d
	jmp	.label_186
.label_291:
	cmp	dword ptr [rsp + 0x8c], 0
	je	.label_176
	lea	rcx, [rsi + 2]
	cmp	rcx, rbp
	jae	.label_176
	cmp	byte ptr [rdi + rsi + 1], 0x3f
	jne	.label_176
	movsx	edx, byte ptr [rdi + rcx]
	xor	eax, eax
	cmp	edx, 0x3e
	ja	.label_279
	mov	rbx, rsi
	movabs	rsi, 0x7000a38200000000
	bt	rsi, rdx
	jae	.label_210
	cmp	byte ptr [rsp + 6], 0
	jne	.label_289
	cmp	r14, r11
	jae	.label_179
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], 0x3f
.label_179:
	lea	rax, [r14 + 1]
	cmp	rax, r11
	jae	.label_276
	mov	rsi, qword ptr [rsp + 8]
	mov	byte ptr [rsi + rax], 0x22
.label_276:
	lea	rax, [r14 + 2]
	cmp	rax, r11
	jae	.label_170
	mov	rsi, qword ptr [rsp + 8]
	mov	byte ptr [rsi + rax], 0x22
.label_170:
	lea	rax, [r14 + 3]
	cmp	rax, r11
	jae	.label_209
	mov	rsi, qword ptr [rsp + 8]
	mov	byte ptr [rsi + rax], 0x3f
.label_209:
	add	r14, 4
	xor	eax, eax
	mov	rsi, rcx
	mov	r15b, dl
	xor	r13d, r13d
	jmp	.label_186
.label_176:
	xor	eax, eax
.label_203:
	xor	r13d, r13d
	jmp	.label_186
.label_219:
	add	qword ptr [rsp + 0x60], rsi
	xor	eax, eax
	mov	rbp, qword ptr [rsp + 0x20]
	jmp	.label_196
	.section	.text
	.align	32
	#Procedure 0x403652
	.globl sub_403652
	.type sub_403652, @function
sub_403652:

	nop	word ptr cs:[rax + rax]
.label_273:
	inc	r14
	mov	r15b, byte ptr [rdi + rsi + 1]
	mov	rsi, rdx
.label_196:
	test	r8b, r8b
	je	.label_204
	mov	ecx, dword ptr [rsp + 0x54]
	test	cl, 1
	je	.label_205
	cmp	r14, r11
	jae	.label_211
	mov	rdx, qword ptr [rsp + 8]
	mov	byte ptr [rdx + r14], 0x5c
.label_211:
	inc	r14
	mov	dword ptr [rsp + 0x54], 0
	jmp	.label_205
	.section	.text
	.align	32
	#Procedure 0x40369c
	.globl sub_40369c
	.type sub_40369c, @function
sub_40369c:

	nop	dword ptr [rax]
.label_204:
	cmp	byte ptr [rsp + 6], 0
	jne	.label_190
	cmp	r12d, 2
	jne	.label_187
	mov	eax, r9d
	and	al, 1
	jne	.label_187
	cmp	r14, r11
	jae	.label_231
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], 0x27
.label_231:
	lea	rax, [r14 + 1]
	cmp	rax, r11
	jae	.label_247
	mov	rdx, qword ptr [rsp + 8]
	mov	byte ptr [rdx + rax], 0x24
.label_247:
	lea	rax, [r14 + 2]
	cmp	rax, r11
	jae	.label_237
	mov	rdx, qword ptr [rsp + 8]
	mov	byte ptr [rdx + rax], 0x27
.label_237:
	add	r14, 3
	mov	r9b, 1
.label_187:
	cmp	r14, r11
	jae	.label_278
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], 0x5c
.label_278:
	lea	rax, [r14 + 1]
	cmp	rax, r11
	jae	.label_244
	mov	edx, r15d
	shr	dl, 6
	or	dl, 0x30
	mov	rbx, qword ptr [rsp + 8]
	mov	byte ptr [rbx + rax], dl
.label_244:
	lea	rax, [r14 + 2]
	cmp	rax, r11
	jae	.label_224
	mov	edx, r15d
	shr	dl, 3
	and	dl, 7
	or	dl, 0x30
	mov	rbx, qword ptr [rsp + 8]
	mov	byte ptr [rbx + rax], dl
.label_224:
	add	r14, 3
	and	r15b, 7
	or	r15b, 0x30
	mov	al, 1
.label_205:
	lea	rdx, [rsi + 1]
	cmp	qword ptr [rsp + 0x60], rdx
	jbe	.label_193
	test	r9b, 1
	je	.label_259
	mov	ebx, eax
	and	bl, 1
	jne	.label_259
	mov	rbx, rsi
	cmp	r14, r11
	jae	.label_265
	mov	rsi, qword ptr [rsp + 8]
	mov	byte ptr [rsi + r14], 0x27
.label_265:
	lea	rsi, [r14 + 1]
	cmp	rsi, r11
	jae	.label_207
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + rsi], 0x27
.label_207:
	add	r14, 2
	xor	r9d, r9d
	mov	rsi, rbx
.label_259:
	cmp	r14, r11
	jae	.label_273
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + r14], r15b
	jmp	.label_273
	.section	.text
	.align	32
	#Procedure 0x4037a3
	.globl sub_4037a3
	.type sub_4037a3, @function
sub_4037a3:

	nop	word ptr cs:[rax + rax]
.label_193:
	test	r9b, 1
	je	.label_183
	and	al, 1
	jne	.label_183
	cmp	r14, r11
	jae	.label_281
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], 0x27
.label_281:
	lea	rax, [r14 + 1]
	cmp	rax, r11
	jae	.label_230
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + rax], 0x27
.label_230:
	add	r14, 2
	xor	r9d, r9d
.label_183:
	mov	ebx, r15d
.label_195:
	cmp	r14, r11
	jae	.label_221
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], bl
.label_221:
	inc	r14
	shl	r13b, 7
	sar	r13b, 7
	and	r13b, r10b
	mov	r10d, r13d
	jmp	.label_271
.label_232:
	xor	r13d, r13d
.label_226:
	mov	rdi, qword ptr [rsp + 0x30]
	mov	rsi, qword ptr [rsp + 0x58]
	jmp	.label_198
.label_235:
	mov	rbp, qword ptr [rsp + 0x20]
	cmp	rbp, rbx
	mov	rdi, qword ptr [rsp + 0x30]
	jbe	.label_181
	mov	rsi, qword ptr [rsp + 0x58]
.label_192:
	mov	rax, qword ptr [rsp + 0x60]
	cmp	byte ptr [rax + r12], 0
	je	.label_261
	lea	rax, [rsi + r12 + 1]
	inc	r12
	cmp	rax, rbp
	jb	.label_192
	xor	r13d, r13d
	jmp	.label_198
.label_181:
	xor	r13d, r13d
	mov	rsi, qword ptr [rsp + 0x58]
	jmp	.label_198
.label_261:
	xor	r13d, r13d
	jmp	.label_198
.label_279:
	xor	r13d, r13d
	jmp	.label_186
.label_210:
	xor	r13d, r13d
	mov	rsi, rbx
	jmp	.label_186
	.section	.text
	.align	32
	#Procedure 0x403878
	.globl sub_403878
	.type sub_403878, @function
sub_403878:

	nop	dword ptr [rax + rax]
.label_254:
	mov	rcx, rsi
.label_260:
	cmp	r12d, 2
	setne	al
	test	r14, r14
	setne	dl
	cmp	byte ptr [rsp + 6], 0
	je	.label_212
	or	al, dl
	je	.label_218
.label_212:
	cmp	r12d, 2
	setne	al
	cmp	byte ptr [rsp + 6], 0
	setne	dl
	mov	rsi, qword ptr [rsp + 0xa0]
	test	sil, 1
	mov	bl, byte ptr [rsp + 0x2c]
	mov	rsi, qword ptr [rsp + 0xb0]
	je	.label_222
	or	al, dl
	jne	.label_222
	test	r10b, 1
	jne	.label_234
	cmp	qword ptr [rsp + 0x68], 0
	je	.label_222
	test	r11, r11
	mov	r15d, r12d
	mov	al, bl
	mov	qword ptr [rsp + 0x20], rcx
	mov	r12d, esi
	mov	rbp, qword ptr [rsp + 0x68]
	je	.label_238
.label_222:
	mov	rdx, qword ptr [rsp + 0x48]
	test	rdx, rdx
	je	.label_283
	cmp	byte ptr [rsp + 6], 0
	mov	rcx, qword ptr [rsp + 8]
	jne	.label_245
	mov	al, byte ptr [rdx]
	test	al, al
	je	.label_245
	inc	rdx
	nop	word ptr cs:[rax + rax]
.label_257:
	cmp	r14, r11
	jae	.label_250
	mov	byte ptr [rcx + r14], al
.label_250:
	inc	r14
	movzx	eax, byte ptr [rdx]
	inc	rdx
	test	al, al
	jne	.label_257
	jmp	.label_245
.label_215:
	mov	qword ptr [rsp + 0x20], rbp
.label_190:
	mov	rdx, rdi
	jmp	.label_262
.label_182:
	mov	qword ptr [rsp + 0x20], rbp
.label_249:
	mov	rdx, rdi
	mov	eax, 2
.label_233:
	mov	qword ptr [rsp + 0x38], rax
.label_262:
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
.label_175:
	mov	r14, rax
.label_180:
	mov	rax, r14
	add	rsp, 0xb8
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_218:
	mov	rdx, rdi
	mov	qword ptr [rsp + 0x20], rcx
	jmp	.label_262
.label_234:
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
	jmp	.label_175
.label_283:
	mov	rcx, qword ptr [rsp + 8]
.label_245:
	cmp	r14, r11
	jae	.label_180
	mov	byte ptr [rcx + r14], 0
	jmp	.label_180
.label_289:
	mov	qword ptr [rsp + 0x20], rbp
	mov	rdx, rdi
	mov	eax, 5
	jmp	.label_233
.label_236:
	call	abort
	.section	.text
	.align	32
	#Procedure 0x403a37
	.globl sub_403a37
	.type sub_403a37, @function
sub_403a37:

	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x403a40
	.globl xnmalloc
	.type xnmalloc, @function
xnmalloc:

	push	rbx
	mov	rbx, rsi
	movabs	rax, 0x7fffffffffffffff
	xor	edx, edx
	div	rbx
	cmp	rax, rdi
	jb	.label_292
	imul	rbx, rdi
	mov	rdi, rbx
	call	malloc
	test	rbx, rbx
	je	.label_293
	test	rax, rax
	je	.label_292
.label_293:
	pop	rbx
	ret	
.label_292:
	call	xalloc_die
	.section	.text
	.align	32
	#Procedure 0x403a75
	.globl sub_403a75
	.type sub_403a75, @function
sub_403a75:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x403a80
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
	#Procedure 0x403ab6
	.globl sub_403ab6
	.type sub_403ab6, @function
sub_403ab6:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x403ac0

	.globl emit_tab_list_info
	.type emit_tab_list_info, @function
emit_tab_list_info:
	push	rax
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_294
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_295
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	pop	rax
	jmp	fputs_unlocked
	.section	.text
	.align	32
	#Procedure 0x403b02
	.globl sub_403b02
	.type sub_403b02, @function
sub_403b02:

	nop	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x403b10
	.globl quote_n_mem
	.type quote_n_mem, @function
quote_n_mem:

	mov	ecx, OFFSET FLAT:quote_quoting_options
	jmp	quotearg_n_options
	.section	.text
	.align	32
	#Procedure 0x403b1a
	.globl sub_403b1a
	.type sub_403b1a, @function
sub_403b1a:

	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x403b20

	.globl close_stdout
	.type close_stdout, @function
close_stdout:
	push	rbp
	push	rbx
	push	rax
	mov	rdi, qword ptr [rip + stdout]
	call	close_stream
	test	eax, eax
	je	.label_297
	mov	bl, byte ptr [rip + ignore_EPIPE]
	call	__errno_location
	mov	rbp, rax
	cmp	bl, 0
	je	.label_296
	cmp	dword ptr [rbp], 0x20
	jne	.label_296
.label_297:
	mov	rdi, qword ptr [rip + stderr]
	call	close_stream
	test	eax, eax
	jne	.label_299
	add	rsp, 8
	pop	rbx
	pop	rbp
	ret	
.label_299:
	mov	edi, dword ptr [rip + exit_failure]
	call	_exit
.label_296:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_113
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
	mov	rdi, qword ptr [rip + file_name]
	test	rdi, rdi
	mov	ebp, dword ptr [rbp]
	jne	.label_300
	xor	edi, edi
	mov	edx, OFFSET FLAT:label_145
	xor	eax, eax
	mov	esi, ebp
	mov	rcx, rbx
	call	error
	mov	edi, dword ptr [rip + exit_failure]
	call	_exit
.label_300:
	call	quotearg_colon
	mov	rcx, rax
	xor	edi, edi
	mov	edx, OFFSET FLAT:label_298
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
	#Procedure 0x403be0
	.globl quotearg_char
	.type quotearg_char, @function
quotearg_char:

	sub	rsp, 0x38
	mov	ecx, esi
	mov	rax, rdi
	mov	rdx, qword ptr [rip + label_137]
	mov	qword ptr [rsp + 0x30], rdx
	movups	xmm0, xmmword ptr [rip + label_138]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0, xmmword ptr [rip + label_139]
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
	#Procedure 0x403c4f
	.globl sub_403c4f
	.type sub_403c4f, @function
sub_403c4f:

	nop	
.label_301:
	call	xalloc_die
	.section	.text
	.align	32
	#Procedure 0x403c55
	.globl sub_403c55
	.type sub_403c55, @function
sub_403c55:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x403c5f
	.globl xcalloc
	.type xcalloc, @function
xcalloc:

	push	rax
	movabs	rax, 0x7fffffffffffffff
	xor	edx, edx
	div	rsi
	cmp	rax, rdi
	jb	.label_301
	call	rpl_calloc
	test	rax, rax
	je	.label_301
	pop	rcx
	ret	
	.section	.text
	.align	32
	#Procedure 0x403c80
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
	#Procedure 0x403c93
	.globl sub_403c93
	.type sub_403c93, @function
sub_403c93:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x403ca0

	.globl xstrndup
	.type xstrndup, @function
xstrndup:
	push	rax
	call	__strndup
	test	rax, rax
	je	.label_302
	pop	rcx
	ret	
.label_302:
	call	xalloc_die
	.section	.text
	.align	32
	#Procedure 0x403cb2
	.globl sub_403cb2
	.type sub_403cb2, @function
sub_403cb2:

	nop	word ptr cs:[rax + rax]
.label_307:
	cmp	byte ptr [rbx], 0x60
	mov	ecx, OFFSET FLAT:label_303
	mov	eax, OFFSET FLAT:label_304
	jmp	.label_305
	.section	.text
	.align	32
	#Procedure 0x403ccf
	.globl sub_403ccf
	.type sub_403ccf, @function
sub_403ccf:

	nop	word ptr cs:[rax + rax]
.label_310:
	movsx	ecx, byte ptr [rax + 1]
	and	ecx, 0xffffffdf
	cmp	ecx, 0x42
	jne	.label_306
	cmp	byte ptr [rax + 2], 0x31
	jne	.label_306
	cmp	byte ptr [rax + 3], 0x38
	jne	.label_306
	cmp	byte ptr [rax + 4], 0x30
	jne	.label_306
	cmp	byte ptr [rax + 5], 0x33
	jne	.label_306
	cmp	byte ptr [rax + 6], 0x30
	jne	.label_306
	cmp	byte ptr [rax + 7], 0
	je	.label_307
.label_306:
	cmp	ebp, 9
	mov	ecx, OFFSET FLAT:label_194
	mov	eax, OFFSET FLAT:label_171
.label_305:
	cmove	rax, rcx
.label_311:
	add	rsp, 8
	pop	rbx
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x403d22

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
	jne	.label_311
	call	locale_charset
	movsx	ecx, byte ptr [rax]
	and	ecx, 0xffffffdf
	cmp	ecx, 0x47
	je	.label_310
	cmp	ecx, 0x55
	jne	.label_306
	movsx	ecx, byte ptr [rax + 1]
	and	ecx, 0xffffffdf
	cmp	ecx, 0x54
	jne	.label_306
	movsx	ecx, byte ptr [rax + 2]
	and	ecx, 0xffffffdf
	cmp	ecx, 0x46
	jne	.label_306
	cmp	byte ptr [rax + 3], 0x2d
	jne	.label_306
	cmp	byte ptr [rax + 4], 0x38
	jne	.label_306
	cmp	byte ptr [rax + 5], 0
	jne	.label_306
	cmp	byte ptr [rbx], 0x60
	mov	ecx, OFFSET FLAT:label_308
	mov	eax, OFFSET FLAT:label_309
	jmp	.label_305
.label_312:
	call	abort
	.section	.text
	.align	32
	#Procedure 0x403d95
	.globl sub_403d95
	.type sub_403d95, @function
sub_403d95:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x403da4
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
	je	.label_312
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
	.align	32
	#Procedure 0x403e00
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
	#Procedure 0x403e19
	.globl sub_403e19
	.type sub_403e19, @function
sub_403e19:

	nop	dword ptr [rax]
.label_313:
	call	abort
	.section	.text
	.align	32
	#Procedure 0x403e25
	.globl sub_403e25
	.type sub_403e25, @function
sub_403e25:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x403e29
	.globl quotearg_custom_mem
	.type quotearg_custom_mem, @function
quotearg_custom_mem:

	sub	rsp, 0x38
	mov	rax, qword ptr [rip + label_137]
	mov	qword ptr [rsp + 0x30], rax
	movups	xmm0, xmmword ptr [rip + label_138]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0, xmmword ptr [rip + label_139]
	movaps	xmmword ptr [rsp + 0x10], xmm0
	movups	xmm0, xmmword ptr [rip + default_quoting_options]
	movaps	xmmword ptr [rsp], xmm0
	mov	dword ptr [rsp], 0xa
	test	rdi, rdi
	je	.label_313
	test	rsi, rsi
	je	.label_313
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
	#Procedure 0x403e90
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
	#Procedure 0x403ea8
	.globl sub_403ea8
	.type sub_403ea8, @function
sub_403ea8:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x403eb0

	.globl rpl_fclose
	.type rpl_fclose, @function
rpl_fclose:
	push	rbp
	push	r14
	push	rbx
	mov	rbx, rdi
	call	fileno
	test	eax, eax
	js	.label_314
	mov	rdi, rbx
	call	__freading
	test	eax, eax
	je	.label_316
	mov	rdi, rbx
	call	fileno
	xor	esi, esi
	mov	edx, 1
	mov	edi, eax
	call	lseek
	cmp	rax, -1
	je	.label_314
.label_316:
	mov	rdi, rbx
	call	rpl_fflush
	test	eax, eax
	je	.label_314
	call	__errno_location
	mov	r14, rax
	mov	ebp, dword ptr [r14]
	mov	rdi, rbx
	call	fclose
	test	ebp, ebp
	je	.label_315
	mov	dword ptr [r14], ebp
	mov	eax, 0xffffffff
.label_315:
	pop	rbx
	pop	r14
	pop	rbp
	ret	
.label_314:
	mov	rdi, rbx
	pop	rbx
	pop	r14
	pop	rbp
	jmp	fclose
	.section	.text
	.align	32
	#Procedure 0x403f24
	.globl sub_403f24
	.type sub_403f24, @function
sub_403f24:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x403f30
	.globl quotearg_colon_mem
	.type quotearg_colon_mem, @function
quotearg_colon_mem:

	sub	rsp, 0x38
	mov	rax, rsi
	mov	rdx, rdi
	mov	rcx, qword ptr [rip + label_137]
	mov	qword ptr [rsp + 0x30], rcx
	movups	xmm0, xmmword ptr [rip + label_138]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0, xmmword ptr [rip + label_139]
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
	#Procedure 0x403f84
	.globl sub_403f84
	.type sub_403f84, @function
sub_403f84:

	nop	word ptr cs:[rax + rax]
.label_317:
	push	rax
	call	abort
	.section	.text
	.align	32
	#Procedure 0x403f96
	.globl sub_403f96
	.type sub_403f96, @function
sub_403f96:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x403f9b
	.globl set_custom_quoting
	.type set_custom_quoting, @function
set_custom_quoting:

	test	rdi, rdi
	mov	eax, OFFSET FLAT:default_quoting_options
	cmovne	rax, rdi
	mov	dword ptr [rax], 0xa
	test	rsi, rsi
	je	.label_317
	test	rdx, rdx
	je	.label_317
	mov	qword ptr [rax + 0x28], rsi
	mov	qword ptr [rax + 0x30], rdx
	ret	
.label_318:
	call	xalloc_die
	.section	.text
	.align	32
	#Procedure 0x403fc5
	.globl sub_403fc5
	.type sub_403fc5, @function
sub_403fc5:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x403fcf
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
	je	.label_319
	test	r14, r14
	je	.label_318
.label_319:
	xor	esi, esi
	mov	rdi, r14
	mov	rdx, rbx
	call	memset
	mov	rax, r14
	add	rsp, 8
	pop	rbx
	pop	r14
	ret	
.label_322:
	mov	rdi, rbx
	call	fileno
	mov	edi, eax
	mov	rsi, rbp
	mov	edx, r14d
	call	lseek
	mov	rcx, rax
	mov	eax, 0xffffffff
	cmp	rcx, -1
	je	.label_320
	and	byte ptr [rbx], 0xef
	mov	qword ptr [rbx + 0x90], rcx
	xor	eax, eax
.label_320:
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x404034
	.globl sub_404034
	.type sub_404034, @function
sub_404034:

	nop	
	.section	.text
	.align	32
	#Procedure 0x404036

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
	jne	.label_321
	mov	rax, qword ptr [rbx + 0x28]
	cmp	rax, qword ptr [rbx + 0x20]
	jne	.label_321
	cmp	qword ptr [rbx + 0x48], 0
	je	.label_322
.label_321:
	mov	rdi, rbx
	mov	rsi, rbp
	mov	edx, r14d
	pop	rbx
	pop	r14
	pop	rbp
	jmp	fseeko
.label_323:
	pop	rbx
	ret	
	.section	.text
	.align	32
	#Procedure 0x404072
	.globl sub_404072
	.type sub_404072, @function
sub_404072:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x404075

	.globl fadvise
	.type fadvise, @function
fadvise:
	push	rbx
	mov	ebx, esi
	test	rdi, rdi
	je	.label_323
	call	fileno
	xor	esi, esi
	xor	edx, edx
	mov	edi, eax
	mov	ecx, ebx
	pop	rbx
	jmp	posix_fadvise
	.section	.text
	.align	32
	#Procedure 0x404090
	.globl quotearg_free
	.type quotearg_free, @function
quotearg_free:

	push	r15
	push	r14
	push	rbx
	mov	r14, qword ptr [rip + slotvec]
	cmp	dword ptr [rip + nslots],  2
	jl	.label_324
	lea	r15, [r14 + 0x18]
	mov	ebx, 1
	nop	
.label_327:
	mov	rdi, qword ptr [r15]
	call	free
	inc	rbx
	movsxd	rax, dword ptr [rip + nslots]
	add	r15, 0x10
	cmp	rbx, rax
	jl	.label_327
.label_324:
	mov	rdi, qword ptr [r14 + 8]
	mov	eax, OFFSET FLAT:slot0
	cmp	rdi, rax
	je	.label_328
	call	free
	mov	qword ptr [rip + slotvec0],  0x100
	mov	qword ptr [rip + label_326], OFFSET FLAT:slot0
.label_328:
	mov	eax, OFFSET FLAT:slotvec0
	cmp	r14, rax
	je	.label_325
	mov	rdi, r14
	call	free
	mov	qword ptr [rip + slotvec], OFFSET FLAT:slotvec0
.label_325:
	mov	dword ptr [rip + nslots],  1
	pop	rbx
	pop	r14
	pop	r15
	ret	
	.section	.text
	.align	32
	#Procedure 0x404121
	.globl sub_404121
	.type sub_404121, @function
sub_404121:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x404130
	.globl quotearg_n_custom_mem
	.type quotearg_n_custom_mem, @function
quotearg_n_custom_mem:

	sub	rsp, 0x38
	mov	rax, qword ptr [rip + label_137]
	mov	qword ptr [rsp + 0x30], rax
	movups	xmm0, xmmword ptr [rip + label_138]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0, xmmword ptr [rip + label_139]
	movaps	xmmword ptr [rsp + 0x10], xmm0
	movups	xmm0, xmmword ptr [rip + default_quoting_options]
	movaps	xmmword ptr [rsp], xmm0
	mov	dword ptr [rsp], 0xa
	test	rsi, rsi
	je	.label_329
	test	rdx, rdx
	je	.label_329
	mov	qword ptr [rsp + 0x28], rsi
	mov	qword ptr [rsp + 0x30], rdx
	lea	rax, [rsp]
	mov	rsi, rcx
	mov	rdx, r8
	mov	rcx, rax
	call	quotearg_n_options
	add	rsp, 0x38
	ret	
.label_329:
	call	abort
	.section	.text
	.align	32
	#Procedure 0x40419a
	.globl sub_40419a
	.type sub_40419a, @function
sub_40419a:

	nop	word ptr [rax + rax]
	.section	.text
	.align	32
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
	je	.label_342
	mov	edx, OFFSET FLAT:label_333
	xor	eax, eax
	mov	rdi, r14
	mov	r8, rbx
	call	__fprintf_chk
	jmp	.label_339
.label_342:
	mov	edx, OFFSET FLAT:label_340
	xor	eax, eax
	mov	rdi, r14
	mov	rcx, rbx
	mov	r8, r9
	call	__fprintf_chk
.label_339:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_344
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
	mov	esi, OFFSET FLAT:label_341
	mov	edx, 5
	call	dcgettext
	mov	rdi, rax
	mov	rsi, r14
	call	fputs_unlocked
	cmp	r12, 9
	ja	.label_345
	jmp	qword ptr [(r12 * 8) + label_346]
.label_406:
	add	rsp, 8
	jmp	.label_332
.label_345:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_336
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
	jmp	.label_332
.label_407:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_331
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
.label_408:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_337
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
.label_409:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_334
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
.label_410:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_348
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
	jmp	.label_332
.label_411:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_347
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
	jmp	.label_332
.label_412:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_330
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
	jmp	.label_332
.label_413:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_335
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
	jmp	.label_332
.label_415:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_338
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
	jmp	.label_332
.label_414:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_343
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
.label_332:
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	ret	
	.section	.text
	.align	32
	#Procedure 0x4044f8
	.globl sub_4044f8
	.type sub_4044f8, @function
sub_4044f8:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x404500

	.globl locale_charset
	.type locale_charset, @function
locale_charset:
	push	rax
	mov	edi, 0xe
	call	rpl_nl_langinfo
	test	rax, rax
	mov	ecx, OFFSET FLAT:label_125
	cmovne	rcx, rax
	cmp	byte ptr [rcx], 0
	mov	eax, OFFSET FLAT:label_349
	cmovne	rax, rcx
	pop	rcx
	ret	
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

	.globl cleanup_file_list_stdin
	.type cleanup_file_list_stdin, @function
cleanup_file_list_stdin:
	push	rax
	cmp	byte ptr [rip + have_read_stdin],  1
	jne	.label_350
	mov	rdi, qword ptr [rip + stdin]
	call	rpl_fclose
	test	eax, eax
	jne	.label_352
.label_350:
	pop	rax
	ret	
.label_352:
	call	__errno_location
	mov	esi, dword ptr [rax]
	mov	edi, 1
	mov	edx, OFFSET FLAT:label_351
	xor	eax, eax
	call	error
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x404570
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
	#Procedure 0x40457f
	.globl sub_40457f
	.type sub_40457f, @function
sub_40457f:

	nop	
	.section	.text
	.align	32
	#Procedure 0x404580

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
	jne	.label_354
	test	eax, eax
	sete	cl
	neg	eax
	sbb	ebx, ebx
	test	r14, r14
	jne	.label_353
	test	cl, cl
	jne	.label_353
	call	__errno_location
	xor	ecx, ecx
	cmp	dword ptr [rax], 9
	mov	ebx, 0xffffffff
	cmove	ebx, ecx
	jmp	.label_353
.label_354:
	mov	ebx, 0xffffffff
	test	eax, eax
	jne	.label_353
	call	__errno_location
	mov	dword ptr [rax], 0
.label_353:
	mov	eax, ebx
	pop	rbx
	pop	r14
	pop	rbp
	ret	
.label_355:
	call	xalloc_die
.label_356:
	mov	rsi, rbx
	call	realloc
	test	rbx, rbx
	je	.label_357
	test	rax, rax
	je	.label_355
.label_357:
	pop	rbx
	ret	
	.section	.text
	.align	32
	#Procedure 0x4045f9

	.globl xrealloc
	.type xrealloc, @function
xrealloc:
	push	rbx
	mov	rbx, rsi
	test	rdi, rdi
	je	.label_356
	test	rbx, rbx
	jne	.label_356
	call	free
	xor	eax, eax
	pop	rbx
	ret	
	.section	.text
	.align	32
	#Procedure 0x404610
	.globl quotearg_n_custom
	.type quotearg_n_custom, @function
quotearg_n_custom:

	sub	rsp, 0x38
	mov	rax, qword ptr [rip + label_137]
	mov	qword ptr [rsp + 0x30], rax
	movups	xmm0, xmmword ptr [rip + label_138]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0, xmmword ptr [rip + label_139]
	movaps	xmmword ptr [rsp + 0x10], xmm0
	movups	xmm0, xmmword ptr [rip + default_quoting_options]
	movaps	xmmword ptr [rsp], xmm0
	mov	dword ptr [rsp], 0xa
	test	rsi, rsi
	je	.label_358
	test	rdx, rdx
	je	.label_358
	mov	qword ptr [rsp + 0x28], rsi
	mov	qword ptr [rsp + 0x30], rdx
	lea	rax, [rsp]
	mov	rdx, -1
	mov	rsi, rcx
	mov	rcx, rax
	call	quotearg_n_options
	add	rsp, 0x38
	ret	
.label_358:
	call	abort
	.section	.text
	.align	32
	#Procedure 0x40467e
	.globl sub_40467e
	.type sub_40467e, @function
sub_40467e:

	nop	
	.section	.text
	.align	32
	#Procedure 0x404680
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
	#Procedure 0x404741
	.globl sub_404741
	.type sub_404741, @function
sub_404741:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x404750

	.globl set_file_list
	.type set_file_list, @function
set_file_list:
	mov	byte ptr [rip + have_read_stdin],  0
	test	rdi, rdi
	mov	eax, OFFSET FLAT:stdin_argv
	cmovne	rax, rdi
	mov	qword ptr [rip + file_list],  rax
	ret	
	.section	.text
	.align	32
	#Procedure 0x40476b
	.globl sub_40476b
	.type sub_40476b, @function
sub_40476b:

	nop	dword ptr [rax + rax]
.label_359:
	call	xalloc_die
	.section	.text
	.align	32
	#Procedure 0x404775
	.globl sub_404775
	.type sub_404775, @function
sub_404775:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x404783
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
	je	.label_360
	test	r15, r15
	je	.label_359
.label_360:
	mov	rdi, r15
	mov	rsi, r14
	mov	rdx, rbx
	call	memcpy
	mov	rax, r15
	pop	rbx
	pop	r14
	pop	r15
	ret	
.label_361:
	call	xalloc_die
	.section	.text
	.align	32
	#Procedure 0x4047c5
	.globl sub_4047c5
	.type sub_4047c5, @function
sub_4047c5:

	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4047cb

	.globl xmalloc
	.type xmalloc, @function
xmalloc:
	push	rbx
	mov	rbx, rdi
	call	malloc
	test	rbx, rbx
	je	.label_362
	test	rax, rax
	je	.label_361
.label_362:
	pop	rbx
	ret	
.label_369:
	mov	rbx, qword ptr [rip + stderr]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_371
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
	#Procedure 0x404818

	.globl usage
	.type usage, @function
usage:
	push	rbp
	push	rbx
	push	rax
	mov	ebp, edi
	test	ebp, ebp
	jne	.label_369
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_373
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	mov	rdx, qword ptr [rip + program_name]
	mov	edi, 1
	xor	eax, eax
	mov	rsi, rcx
	call	__printf_chk
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_364
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_370
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
	mov	esi, OFFSET FLAT:label_376
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	call	fputs_unlocked
	call	emit_tab_list_info
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_379
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_377
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_366
	mov	edx, 5
	call	dcgettext
	mov	rsi, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:label_116
	mov	ecx, OFFSET FLAT:label_368
	xor	eax, eax
	call	__printf_chk
	mov	edi, 5
	xor	esi, esi
	call	setlocale
	test	rax, rax
	je	.label_372
	mov	esi, OFFSET FLAT:label_365
	mov	edx, 3
	mov	rdi, rax
	call	strncmp
	test	eax, eax
	je	.label_372
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_374
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	call	fputs_unlocked
.label_372:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_375
	mov	edx, 5
	call	dcgettext
	mov	rsi, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:label_368
	mov	ecx, OFFSET FLAT:label_115
	xor	eax, eax
	call	__printf_chk
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_367
	mov	edx, 5
	call	dcgettext
	mov	rsi, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:label_115
	mov	ecx, OFFSET FLAT:label_378
	xor	eax, eax
	call	__printf_chk
	mov	edi, ebp
	call	exit
	.section	.text
	.align	32
	#Procedure 0x4049e0
	.globl emit_bug_reporting_address
	.type emit_bug_reporting_address, @function
emit_bug_reporting_address:

	push	rax
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_380
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:label_381
	xor	eax, eax
	mov	rsi, rcx
	call	__printf_chk
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_383
	mov	edx, 5
	call	dcgettext
	mov	rsi, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:label_116
	mov	ecx, OFFSET FLAT:label_368
	xor	eax, eax
	call	__printf_chk
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_382
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	pop	rax
	jmp	fputs_unlocked
	.section	.text
	.align	32
	#Procedure 0x404a54
	.globl sub_404a54
	.type sub_404a54, @function
sub_404a54:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x404a60
	.globl close_stdout_set_ignore_EPIPE
	.type close_stdout_set_ignore_EPIPE, @function
close_stdout_set_ignore_EPIPE:

	mov	byte ptr [rip + ignore_EPIPE],  dil
	ret	
	.section	.text
	.align	32
	#Procedure 0x404a68
	.globl sub_404a68
	.type sub_404a68, @function
sub_404a68:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x404a70
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
	#Procedure 0x404ae5
	.globl sub_404ae5
	.type sub_404ae5, @function
sub_404ae5:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x404af0
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
	#Procedure 0x404b23
	.globl sub_404b23
	.type sub_404b23, @function
sub_404b23:

	nop	word ptr cs:[rax + rax]
.label_384:
	call	abort
	.section	.text
	.align	32
	#Procedure 0x404b35
	.globl sub_404b35
	.type sub_404b35, @function
sub_404b35:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x404b39
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
	je	.label_384
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
	#Procedure 0x404ba0

	.globl add_tab_stop
	.type add_tab_stop, @function
add_tab_stop:
	push	r14
	push	rbx
	push	rax
	mov	r14, rdi
	mov	rcx, qword ptr [rip + first_free_tab]
	xor	eax, eax
	test	rcx, rcx
	je	.label_385
	mov	rax, qword ptr [rip + tab_list]
	mov	rax, qword ptr [rax + rcx*8 - 8]
.label_385:
	xor	ebx, ebx
	mov	rdx, r14
	sub	rdx, rax
	cmovae	rbx, rdx
	cmp	rcx, qword ptr [rip + n_tabs_allocated]
	jne	.label_386
	mov	rdi, qword ptr [rip + tab_list]
	test	rdi, rdi
	je	.label_392
	movabs	rax, 0xaaaaaaaaaaaaaaa
	cmp	rcx, rax
	jae	.label_387
	mov	rax, rcx
	shr	rax, 1
	lea	rsi, [rcx + rax + 1]
	jmp	.label_391
.label_387:
	call	xalloc_die
.label_386:
	mov	rax, qword ptr [rip + tab_list]
	jmp	.label_388
.label_389:
	call	xalloc_die
	.section	.text
	.align	32
	#Procedure 0x404c11
	.globl sub_404c11
	.type sub_404c11, @function
sub_404c11:

	nop	dword ptr [rax + rax]
.label_392:
	test	rcx, rcx
	mov	esi, 0x10
	cmovne	rsi, rcx
	mov	rax, rsi
	shr	rax, 0x3c
	jne	.label_389
.label_391:
	mov	qword ptr [rip + n_tabs_allocated],  rsi
	shl	rsi, 3
	call	xrealloc
	mov	qword ptr [rip + tab_list],  rax
	mov	rcx, qword ptr [rip + first_free_tab]
.label_388:
	lea	rdx, [rcx + 1]
	mov	qword ptr [rip + first_free_tab],  rdx
	mov	qword ptr [rax + rcx*8], r14
	cmp	qword ptr [rip + max_column_width],  rbx
	jae	.label_390
	mov	qword ptr [rip + max_column_width],  rbx
.label_390:
	add	rsp, 8
	pop	rbx
	pop	r14
	ret	
	.section	.text
	.align	32
	#Procedure 0x404c70

	.globl quotearg_colon
	.type quotearg_colon, @function
quotearg_colon:
	sub	rsp, 0x38
	mov	rax, rdi
	mov	rcx, qword ptr [rip + label_137]
	mov	qword ptr [rsp + 0x30], rcx
	movups	xmm0, xmmword ptr [rip + label_138]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0, xmmword ptr [rip + label_139]
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
	#Procedure 0x404cc5
	.globl sub_404cc5
	.type sub_404cc5, @function
sub_404cc5:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x404d35
	.globl sub_404d35
	.type sub_404d35, @function
sub_404d35:

	nop	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x404d42
	.globl sub_404d42
	.type sub_404d42, @function
sub_404d42:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x404d66
	.globl sub_404d66
	.type sub_404d66, @function
sub_404d66:

	nop	word ptr cs:[rax + rax]
