	.section	.text
	.align	16
	#Procedure 0x401599
	.globl sub_401599
	.type sub_401599, @function
sub_401599:

	hlt	
	.section	.text
	.align	16
	#Procedure 0x40159a
	.globl sub_40159a
	.type sub_40159a, @function
sub_40159a:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4015d2
	.globl sub_4015d2
	.type sub_4015d2, @function
sub_4015d2:

	nop	dword ptr [rax]
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40161a
	.globl sub_40161a
	.type sub_40161a, @function
sub_40161a:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40163c
	.globl sub_40163c
	.type sub_40163c, @function
sub_40163c:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x40164d
	.globl sub_40164d
	.type sub_40164d, @function
sub_40164d:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x401666
	.globl sub_401666
	.type sub_401666, @function
sub_401666:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x401670

	.globl rpl_fclose
	.type rpl_fclose, @function
rpl_fclose:
	push	rbp
	push	r14
	push	rbx
	mov	rbx, rdi
	call	fileno
	test	eax, eax
	js	.label_9
	mov	rdi, rbx
	call	__freading
	test	eax, eax
	je	.label_11
	mov	rdi, rbx
	call	fileno
	xor	esi, esi
	mov	edx, 1
	mov	edi, eax
	call	lseek
	cmp	rax, -1
	je	.label_9
.label_11:
	mov	rdi, rbx
	call	rpl_fflush
	test	eax, eax
	je	.label_9
	call	__errno_location
	mov	r14, rax
	mov	ebp, dword ptr [r14]
	mov	rdi, rbx
	call	fclose
	test	ebp, ebp
	je	.label_10
	mov	dword ptr [r14], ebp
	mov	eax, 0xffffffff
.label_10:
	pop	rbx
	pop	r14
	pop	rbp
	ret	
.label_9:
	mov	rdi, rbx
	pop	rbx
	pop	r14
	pop	rbp
	jmp	fclose
	.section	.text
	.align	16
	#Procedure 0x4016e4
	.globl sub_4016e4
	.type sub_4016e4, @function
sub_4016e4:

	nop	word ptr cs:[rax + rax]
.label_14:
	call	xalloc_die
	.section	.text
	.align	16
	#Procedure 0x4016f5

	.globl xrealloc
	.type xrealloc, @function
xrealloc:
	push	rbx
	mov	rbx, rsi
	test	rdi, rdi
	je	.label_13
	test	rbx, rbx
	jne	.label_13
	call	free
	xor	eax, eax
	pop	rbx
	ret	
.label_13:
	mov	rsi, rbx
	call	realloc
	test	rbx, rbx
	je	.label_12
	test	rax, rax
	je	.label_14
.label_12:
	pop	rbx
	ret	
.label_19:
	test	rax, rax
	mov	ebx, 0x80
	cmovne	rbx, rax
	test	rbx, rbx
	js	.label_15
	mov	qword ptr [rsi], rbx
.label_18:
	mov	rsi, rbx
	call	realloc
	test	rbx, rbx
	je	.label_17
	test	rax, rax
	je	.label_15
.label_17:
	pop	rbx
	ret	
.label_16:
	call	xalloc_die
	.section	.text
	.align	16
	#Procedure 0x40174d
	.globl sub_40174d
	.type sub_40174d, @function
sub_40174d:

	nop	word ptr cs:[rax + rax]
.label_15:
	call	xalloc_die
	.section	.text
	.align	16
	#Procedure 0x40175e
	.globl x2realloc
	.type x2realloc, @function
x2realloc:

	push	rbx
	mov	rax, qword ptr [rsi]
	test	rdi, rdi
	je	.label_19
	movabs	rcx, 0x5555555555555554
	cmp	rax, rcx
	jae	.label_16
	mov	rbx, rax
	shr	rbx, 1
	add	rbx, rax
	inc	rbx
	mov	qword ptr [rsi], rbx
	jne	.label_18
	call	free
	xor	eax, eax
	jmp	.label_17
	.section	.text
	.align	16
	#Procedure 0x401790

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
	je	.label_20
	test	r15, r15
	je	.label_21
.label_20:
	mov	rdi, r15
	mov	rsi, r14
	mov	rdx, rbx
	call	memcpy
	mov	rax, r15
	pop	rbx
	pop	r14
	pop	r15
	ret	
.label_21:
	call	xalloc_die
	.section	.text
	.align	16
	#Procedure 0x4017cc
	.globl sub_4017cc
	.type sub_4017cc, @function
sub_4017cc:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x4017d0
	.globl quotearg_free
	.type quotearg_free, @function
quotearg_free:

	push	r15
	push	r14
	push	rbx
	mov	r14, qword ptr [rip + slotvec]
	cmp	dword ptr [rip + nslots],  2
	jl	.label_22
	lea	r15, [r14 + 0x18]
	mov	ebx, 1
	nop	
.label_24:
	mov	rdi, qword ptr [r15]
	call	free
	inc	rbx
	movsxd	rax, dword ptr [rip + nslots]
	add	r15, 0x10
	cmp	rbx, rax
	jl	.label_24
.label_22:
	mov	rdi, qword ptr [r14 + 8]
	mov	eax, OFFSET FLAT:slot0
	cmp	rdi, rax
	je	.label_26
	call	free
	mov	qword ptr [rip + slotvec0],  0x100
	mov	qword ptr [rip + label_25], OFFSET FLAT:slot0
.label_26:
	mov	eax, OFFSET FLAT:slotvec0
	cmp	r14, rax
	je	.label_23
	mov	rdi, r14
	call	free
	mov	qword ptr [rip + slotvec], OFFSET FLAT:slotvec0
.label_23:
	mov	dword ptr [rip + nslots],  1
	pop	rbx
	pop	r14
	pop	r15
	ret	
	.section	.text
	.align	16
	#Procedure 0x401861
	.globl sub_401861
	.type sub_401861, @function
sub_401861:

	nop	word ptr cs:[rax + rax]
.label_31:
	cmp	byte ptr [rbx], 0x60
	mov	ecx, OFFSET FLAT:label_27
	mov	eax, OFFSET FLAT:label_28
	jmp	.label_29
	.section	.text
	.align	16
	#Procedure 0x40187f
	.globl sub_40187f
	.type sub_40187f, @function
sub_40187f:

	nop	word ptr cs:[rax + rax]
.label_36:
	movsx	ecx, byte ptr [rax + 1]
	and	ecx, 0xffffffdf
	cmp	ecx, 0x42
	jne	.label_30
	cmp	byte ptr [rax + 2], 0x31
	jne	.label_30
	cmp	byte ptr [rax + 3], 0x38
	jne	.label_30
	cmp	byte ptr [rax + 4], 0x30
	jne	.label_30
	cmp	byte ptr [rax + 5], 0x33
	jne	.label_30
	cmp	byte ptr [rax + 6], 0x30
	jne	.label_30
	cmp	byte ptr [rax + 7], 0
	je	.label_31
.label_30:
	cmp	ebp, 9
	mov	ecx, OFFSET FLAT:label_32
	mov	eax, OFFSET FLAT:label_33
.label_29:
	cmove	rax, rcx
.label_37:
	add	rsp, 8
	pop	rbx
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x4018d2

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
	jne	.label_37
	call	locale_charset
	movsx	ecx, byte ptr [rax]
	and	ecx, 0xffffffdf
	cmp	ecx, 0x47
	je	.label_36
	cmp	ecx, 0x55
	jne	.label_30
	movsx	ecx, byte ptr [rax + 1]
	and	ecx, 0xffffffdf
	cmp	ecx, 0x54
	jne	.label_30
	movsx	ecx, byte ptr [rax + 2]
	and	ecx, 0xffffffdf
	cmp	ecx, 0x46
	jne	.label_30
	cmp	byte ptr [rax + 3], 0x2d
	jne	.label_30
	cmp	byte ptr [rax + 4], 0x38
	jne	.label_30
	cmp	byte ptr [rax + 5], 0
	jne	.label_30
	cmp	byte ptr [rbx], 0x60
	mov	ecx, OFFSET FLAT:label_34
	mov	eax, OFFSET FLAT:label_35
	jmp	.label_29
	.section	.text
	.align	16
	#Procedure 0x401940
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
	#Procedure 0x401958
	.globl sub_401958
	.type sub_401958, @function
sub_401958:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x401960

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
	#Procedure 0x401977
	.globl sub_401977
	.type sub_401977, @function
sub_401977:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x401980
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
	je	.label_38
	mov	qword ptr [rax], rbx
.label_38:
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
	#Procedure 0x401a6c
	.globl sub_401a6c
	.type sub_401a6c, @function
sub_401a6c:

	nop	dword ptr [rax]
.label_39:
	call	xalloc_die
	.section	.text
	.align	16
	#Procedure 0x401a75
	.globl sub_401a75
	.type sub_401a75, @function
sub_401a75:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x401a80
	.globl xnmalloc
	.type xnmalloc, @function
xnmalloc:

	push	rbx
	mov	rbx, rsi
	movabs	rax, 0x7fffffffffffffff
	xor	edx, edx
	div	rbx
	cmp	rax, rdi
	jb	.label_39
	imul	rbx, rdi
	mov	rdi, rbx
	call	malloc
	test	rbx, rbx
	je	.label_40
	test	rax, rax
	je	.label_39
.label_40:
	pop	rbx
	ret	
	.section	.text
	.align	16
	#Procedure 0x401ab0

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
	#Procedure 0x401ac9
	.globl sub_401ac9
	.type sub_401ac9, @function
sub_401ac9:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x401ad0
	.globl close_stdout_set_file_name
	.type close_stdout_set_file_name, @function
close_stdout_set_file_name:

	mov	qword ptr [rip + file_name],  rdi
	ret	
	.section	.text
	.align	16
	#Procedure 0x401ad8
	.globl sub_401ad8
	.type sub_401ad8, @function
sub_401ad8:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x401ae0

	.globl fmt_paragraph
	.type fmt_paragraph, @function
fmt_paragraph:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	mov	rsi, qword ptr [rip + word_limit]
	mov	qword ptr [rsi + 0x18], 0
	mov	eax, dword ptr [rsi + 8]
	mov	dword ptr [rsp - 0x14], eax
	mov	edi, dword ptr [rip + max_width]
	mov	dword ptr [rsi + 8], edi
	lea	rax, [rsi - 0x28]
	mov	ecx, OFFSET FLAT:unused_word_type
	cmp	rax, rcx
	jb	.label_47
	mov	ecx, dword ptr [rip + first_indent]
	mov	dword ptr [rsp - 0xc], ecx
	mov	ecx, dword ptr [rip + other_indent]
	mov	dword ptr [rsp - 0x10], ecx
	mov	r11d, dword ptr [rip + last_line_length]
	movsxd	r12, dword ptr [rip + goal_width]
	xor	r14d, r14d
	mov	ebp, OFFSET FLAT:unused_word_type
	mov	r8, rsi
	nop	dword ptr [rax + rax]
.label_52:
	mov	r13, r8
	mov	r8, rax
	test	r11d, r11d
	setg	dl
	cmp	r8, rbp
	sete	al
	mov	ecx, dword ptr [rsp - 0x10]
	cmove	ecx, dword ptr [rsp - 0xc]
	movsxd	rbp, dword ptr [r13 - 0x20]
	mov	qword ptr [rsp - 8], rbp
	lea	ecx, [rbp + rcx]
	and	al, dl
	mov	rdx, r14
	movabs	r9, 0x7fffffffffffffff
	nop	word ptr [rax + rax]
.label_42:
	test	rdx, rdx
	mov	ebp, 0
	je	.label_45
	movsxd	r10, ecx
	mov	rbp, r12
	sub	rbp, r10
	add	rbp, rbp
	lea	rbp, [rbp + rbp*4]
	imul	rbp, rbp
	cmp	qword ptr [rsi + rdx + 0x20], rsi
	je	.label_45
	movsxd	r15, dword ptr [rsi + rdx + 0x14]
	sub	r10, r15
	add	r10, r10
	lea	rbx, [r10 + r10*4]
	imul	rbx, rbx
	shr	rbx, 1
	add	rbp, rbx
.label_45:
	add	rbp, qword ptr [rsi + rdx + 0x18]
	test	al, al
	je	.label_44
	mov	ebx, ecx
	sub	ebx, r11d
	add	ebx, ebx
	lea	ebx, [rbx + rbx*4]
	movsxd	rbx, ebx
	imul	rbx, rbx
	shr	rbx, 1
	add	rbp, rbx
.label_44:
	cmp	rbp, r9
	jge	.label_50
	lea	rbx, [rsi + rdx]
	mov	qword ptr [r13 - 8], rbx
	mov	dword ptr [r13 - 0x14], ecx
	mov	r9, rbp
.label_50:
	test	rdx, rdx
	je	.label_41
	add	ecx, dword ptr [rsi + rdx - 0x1c]
	add	ecx, dword ptr [rsi + rdx + 8]
	add	rdx, 0x28
	cmp	ecx, edi
	jl	.label_42
.label_41:
	mov	ebp, OFFSET FLAT:unused_word_type
	cmp	r8, rbp
	mov	ecx, 0x1324
	jbe	.label_43
	mov	al, byte ptr [r13 - 0x40]
	test	al, 2
	jne	.label_49
	test	al, 4
	mov	ecx, 0xce4
	jne	.label_43
	mov	eax, OFFSET FLAT:label_51
	cmp	r8, rax
	mov	ecx, 0x1324
	jbe	.label_43
	test	byte ptr [r13 - 0x68], 8
	mov	ecx, 0x1324
	je	.label_43
	movsxd	rcx, dword ptr [r13 - 0x48]
	add	rcx, 2
	mov	eax, 0x9c40
	xor	edx, edx
	idiv	rcx
	mov	rcx, rax
	add	rcx, 0x1324
	jmp	.label_43
	.section	.text
	.align	16
	#Procedure 0x401c75
	.globl sub_401c75
	.type sub_401c75, @function
sub_401c75:

	nop	word ptr cs:[rax + rax]
.label_49:
	test	al, 8
	mov	ecx, 0x960
	mov	eax, 0x59164
	cmove	rcx, rax
.label_43:
	mov	al, byte ptr [r13 - 0x18]
	test	al, 1
	jne	.label_48
	test	al, 8
	je	.label_46
	mov	rbx, qword ptr [rsp - 8]
	add	rbx, 2
	mov	eax, 0x57e4
	xor	edx, edx
	idiv	rbx
	add	rcx, rax
	jmp	.label_46
	.section	.text
	.align	16
	#Procedure 0x401cb4
	.globl sub_401cb4
	.type sub_401cb4, @function
sub_401cb4:

	nop	word ptr cs:[rax + rax]
.label_48:
	add	rcx, -0x640
.label_46:
	add	rcx, r9
	mov	qword ptr [r13 - 0x10], rcx
	lea	rax, [r8 - 0x28]
	add	r14, -0x28
	cmp	rax, rbp
	jae	.label_52
.label_47:
	mov	eax, dword ptr [rsp - 0x14]
	mov	dword ptr [rsi + 8], eax
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x401cf1
	.globl sub_401cf1
	.type sub_401cf1, @function
sub_401cf1:

	nop	word ptr cs:[rax + rax]
.label_53:
	call	abort
	.section	.text
	.align	16
	#Procedure 0x401d05
	.globl sub_401d05
	.type sub_401d05, @function
sub_401d05:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x401d0b
	.globl quotearg_n_custom_mem
	.type quotearg_n_custom_mem, @function
quotearg_n_custom_mem:

	sub	rsp, 0x38
	mov	rax, qword ptr [rip + label_54]
	mov	qword ptr [rsp + 0x30], rax
	movups	xmm0, xmmword ptr [rip + label_55]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0, xmmword ptr [rip + label_56]
	movaps	xmmword ptr [rsp + 0x10], xmm0
	movups	xmm0, xmmword ptr [rip + default_quoting_options]
	movaps	xmmword ptr [rsp], xmm0
	mov	dword ptr [rsp], 0xa
	test	rsi, rsi
	je	.label_53
	test	rdx, rdx
	je	.label_53
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
	#Procedure 0x401d70

	.globl version_etc_va
	.type version_etc_va, @function
version_etc_va:
	movsxd	r10, dword ptr [r8]
	cmp	r10, 0x28
	ja	.label_67
	mov	r9, r10
	add	r9, qword ptr [r8 + 0x10]
	lea	r10d, [r10 + 8]
	mov	dword ptr [r8], r10d
	jmp	.label_69
.label_67:
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
.label_69:
	sub	rsp, 0x58
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp], rax
	xor	r9d, r9d
	test	rax, rax
	je	.label_57
	cmp	r10d, 0x29
	jae	.label_66
	movsxd	r9, r10d
	add	r9, qword ptr [r8 + 0x10]
	add	r10d, 8
	mov	dword ptr [r8], r10d
	jmp	.label_68
.label_66:
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
.label_68:
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp + 8], rax
	mov	r9d, 1
	test	rax, rax
	je	.label_57
	cmp	r10d, 0x29
	jae	.label_64
	movsxd	r9, r10d
	add	r9, qword ptr [r8 + 0x10]
	add	r10d, 8
	mov	dword ptr [r8], r10d
	jmp	.label_65
.label_64:
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
.label_65:
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp + 0x10], rax
	mov	r9d, 2
	test	rax, rax
	je	.label_57
	cmp	r10d, 0x29
	jae	.label_62
	movsxd	r9, r10d
	add	r9, qword ptr [r8 + 0x10]
	add	r10d, 8
	mov	dword ptr [r8], r10d
	jmp	.label_63
.label_62:
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
.label_63:
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp + 0x18], rax
	mov	r9d, 3
	test	rax, rax
	je	.label_57
	cmp	r10d, 0x29
	jae	.label_60
	movsxd	r9, r10d
	add	r9, qword ptr [r8 + 0x10]
	add	r10d, 8
	mov	dword ptr [r8], r10d
	jmp	.label_61
.label_60:
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
.label_61:
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp + 0x20], rax
	mov	r9d, 4
	test	rax, rax
	je	.label_57
	cmp	r10d, 0x29
	jae	.label_58
	movsxd	r9, r10d
	add	r9, qword ptr [r8 + 0x10]
	add	r10d, 8
	mov	dword ptr [r8], r10d
	jmp	.label_59
.label_58:
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
.label_59:
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp + 0x28], rax
	mov	r9d, 5
	test	rax, rax
	je	.label_57
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp + 0x30], rax
	mov	r9d, 6
	test	rax, rax
	je	.label_57
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp + 0x38], rax
	mov	r9d, 7
	test	rax, rax
	je	.label_57
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp + 0x40], rax
	mov	r9d, 8
	test	rax, rax
	je	.label_57
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp + 0x48], rax
	cmp	rax, 1
	mov	r9d, 9
	sbb	r9, -1
.label_57:
	lea	r8, [rsp]
	call	version_etc_arn
	add	rsp, 0x58
	ret	
	.section	.text
	.align	16
	#Procedure 0x401f52
	.globl sub_401f52
	.type sub_401f52, @function
sub_401f52:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x401f60
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
	je	.label_70
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
.label_70:
	call	abort
	.section	.text
	.align	16
	#Procedure 0x401fcc
	.globl sub_401fcc
	.type sub_401fcc, @function
sub_401fcc:

	nop	dword ptr [rax]
.label_71:
	push	rax
	call	abort
	.section	.text
	.align	16
	#Procedure 0x401fd6
	.globl sub_401fd6
	.type sub_401fd6, @function
sub_401fd6:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x401fdb
	.globl set_custom_quoting
	.type set_custom_quoting, @function
set_custom_quoting:

	test	rdi, rdi
	mov	eax, OFFSET FLAT:default_quoting_options
	cmovne	rax, rdi
	mov	dword ptr [rax], 0xa
	test	rsi, rsi
	je	.label_71
	test	rdx, rdx
	je	.label_71
	mov	qword ptr [rax + 0x28], rsi
	mov	qword ptr [rax + 0x30], rdx
	ret	
	.section	.text
	.align	16
	#Procedure 0x402000

	.globl xmalloc
	.type xmalloc, @function
xmalloc:
	push	rbx
	mov	rbx, rdi
	call	malloc
	test	rbx, rbx
	je	.label_72
	test	rax, rax
	je	.label_73
.label_72:
	pop	rbx
	ret	
.label_73:
	call	xalloc_die
	.section	.text
	.align	16
	#Procedure 0x40201a
	.globl sub_40201a
	.type sub_40201a, @function
sub_40201a:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x402020
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
	#Procedure 0x402056
	.globl sub_402056
	.type sub_402056, @function
sub_402056:

	nop	word ptr cs:[rax + rax]
.label_75:
	call	xalloc_die
	.section	.text
	.align	16
	#Procedure 0x402065
	.globl sub_402065
	.type sub_402065, @function
sub_402065:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40206f
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
	je	.label_74
	test	r14, r14
	je	.label_75
.label_74:
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
	#Procedure 0x4020a0

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
.label_160:
	mov	r11, rbp
	xor	r14d, r14d
	mov	ecx, r15d
	cmp	r15d, 0xa
	ja	.label_157
	mov	edi, 7
	mov	r13b, 1
	xor	esi, esi
	mov	r8, qword ptr [rsp + 0x30]
	jmp	qword ptr [(rcx * 8) + label_85]
.label_585:
	mov	byte ptr [rsp + 7], r10b
	mov	edi, OFFSET FLAT:label_167
	mov	esi, r15d
	mov	rbx, r11
	mov	ebp, r9d
	call	gettext_quote
	mov	qword ptr [rsp + 0x78], rax
	mov	edi, OFFSET FLAT:label_33
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
	jne	.label_91
	mov	al, byte ptr [rcx]
	test	al, al
	mov	r14d, 0
	je	.label_91
	xor	r14d, r14d
	nop	word ptr cs:[rax + rax]
.label_193:
	cmp	r14, r11
	jae	.label_156
	mov	rdx, qword ptr [rsp + 8]
	mov	byte ptr [rdx + r14], al
.label_156:
	movzx	eax, byte ptr [rcx + r14 + 1]
	inc	r14
	test	al, al
	jne	.label_193
.label_91:
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
	jmp	.label_79
.label_578:
	xor	edi, edi
	xor	r14d, r14d
	mov	r13d, eax
	xor	esi, esi
	jmp	.label_79
.label_581:
	mov	al, 1
.label_579:
	mov	r12b, 1
.label_582:
	test	r12b, 1
	mov	cl, 1
	je	.label_98
	mov	ecx, eax
.label_98:
	mov	al, cl
.label_580:
	test	r12b, 1
	jne	.label_102
	test	r11, r11
	je	.label_88
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx], 0x27
.label_88:
	mov	r14d, 1
	jmp	.label_105
.label_102:
	xor	r14d, r14d
.label_105:
	mov	ecx, OFFSET FLAT:label_33
	mov	qword ptr [rsp + 0x48], rcx
	mov	ecx, 1
	mov	qword ptr [rsp + 0x40], rcx
	mov	r13d, eax
	mov	sil, r12b
	mov	edi, 2
	jmp	.label_79
.label_583:
	test	r12b, 1
	jne	.label_116
	test	r11, r11
	je	.label_119
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax], 0x22
.label_119:
	mov	r14d, 1
	jmp	.label_123
.label_584:
	mov	r13b, 1
	mov	edi, 5
	xor	r14d, r14d
	mov	eax, OFFSET FLAT:label_32
	mov	qword ptr [rsp + 0x48], rax
	mov	eax, 1
	mov	qword ptr [rsp + 0x40], rax
	mov	sil, 1
	jmp	.label_79
.label_116:
	xor	r14d, r14d
.label_123:
	mov	eax, OFFSET FLAT:label_32
	mov	qword ptr [rsp + 0x48], rax
	mov	eax, 1
	mov	qword ptr [rsp + 0x40], rax
	mov	r13b, 1
	mov	sil, r12b
	mov	edi, 5
	nop	word ptr cs:[rax + rax]
.label_79:
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
	jmp	.label_138
	.section	.text
	.align	16
	#Procedure 0x40238d
	.globl sub_40238d
	.type sub_40238d, @function
sub_40238d:

	nop	dword ptr [rax]
.label_104:
	inc	rsi
.label_138:
	cmp	rbp, -1
	je	.label_175
	cmp	rsi, rbp
	jne	.label_176
	jmp	.label_178
	.section	.text
	.align	16
	#Procedure 0x4023a3
	.globl sub_4023a3
	.type sub_4023a3, @function
sub_4023a3:

	nop	word ptr cs:[rax + rax]
.label_175:
	mov	rcx, -1
	cmp	byte ptr [rdi + rsi], 0
	je	.label_182
.label_176:
	cmp	byte ptr [rsp + 0x2f], 0
	je	.label_187
	mov	rax, qword ptr [rsp + 0x40]
	lea	rbx, [rsi + rax]
	cmp	rax, 2
	jb	.label_188
	cmp	rbp, -1
	jne	.label_188
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
.label_188:
	cmp	rbx, rbp
	jbe	.label_81
.label_187:
	xor	r8d, r8d
.label_112:
	movzx	r15d, byte ptr [rdi + rsi]
	cmp	r15, 0x7e
	ja	.label_83
	xor	edx, edx
	mov	r13b, 1
	mov	cl, 0x6e
	mov	bl, 0x61
	xor	eax, eax
	jmp	qword ptr [(r15 * 8) + label_89]
.label_604:
	test	rsi, rsi
	jne	.label_77
	jmp	.label_96
	.section	.text
	.align	16
	#Procedure 0x402445
	.globl sub_402445
	.type sub_402445, @function
sub_402445:

	nop	word ptr cs:[rax + rax]
.label_81:
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
	jne	.label_109
	cmp	byte ptr [rsp + 6], 0
	mov	rdi, qword ptr [rsp + 0x30]
	mov	r11, rbx
	mov	r10d, r15d
	mov	rax, qword ptr [rsp + 0x38]
	mov	r9d, ebp
	mov	rsi, r12
	mov	r12, rax
	mov	rbp, qword ptr [rsp + 0x20]
	je	.label_112
	jmp	.label_122
.label_109:
	mov	rdi, qword ptr [rsp + 0x30]
	mov	r11, rbx
	mov	r10d, r15d
	mov	rax, qword ptr [rsp + 0x38]
	mov	r9d, ebp
	mov	rsi, r12
	mov	r12, rax
	mov	rbp, qword ptr [rsp + 0x20]
	jmp	.label_112
.label_608:
	xor	eax, eax
	cmp	rbp, -1
	je	.label_130
	test	rsi, rsi
	jne	.label_131
	cmp	rbp, 1
	je	.label_96
	xor	r13d, r13d
	jmp	.label_92
.label_597:
	cmp	byte ptr [rsp + 0x17], 0
	je	.label_135
	cmp	byte ptr [rsp + 6], 0
	jne	.label_137
	cmp	r12d, 2
	jne	.label_142
	mov	eax, r9d
	and	al, 1
	jne	.label_142
	cmp	r14, r11
	jae	.label_144
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], 0x27
.label_144:
	lea	rax, [r14 + 1]
	cmp	rax, r11
	jae	.label_148
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + rax], 0x24
.label_148:
	lea	rax, [r14 + 2]
	cmp	rax, r11
	jae	.label_185
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + rax], 0x27
.label_185:
	add	r14, 3
	mov	r9b, 1
.label_142:
	mov	rcx, r14
	cmp	rcx, r11
	jae	.label_161
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + rcx], 0x5c
.label_161:
	lea	r14, [rcx + 1]
	mov	al, 1
	mov	r15b, 0x30
	cmp	r12d, 2
	je	.label_165
	lea	rdx, [rsi + 1]
	cmp	rdx, rbp
	jae	.label_165
	mov	dl, byte ptr [rdi + rdx]
	add	dl, 0xd0
	cmp	dl, 9
	ja	.label_165
	cmp	r14, r11
	jae	.label_93
	mov	rdx, qword ptr [rsp + 8]
	mov	byte ptr [rdx + r14], 0x30
.label_93:
	lea	rdx, [rcx + 2]
	cmp	rdx, r11
	jae	.label_194
	mov	rbx, qword ptr [rsp + 8]
	mov	byte ptr [rbx + rdx], 0x30
.label_194:
	add	rcx, 3
	xor	r13d, r13d
	mov	r14, rcx
	jmp	.label_92
.label_598:
	mov	bl, 0x62
	jmp	.label_114
.label_599:
	mov	cl, 0x74
	jmp	.label_97
.label_600:
	mov	bl, 0x76
	jmp	.label_114
.label_601:
	mov	bl, 0x66
	jmp	.label_114
.label_602:
	mov	cl, 0x72
	jmp	.label_97
.label_605:
	mov	r15b, 0x27
	mov	al, 1
	mov	qword ptr [rsp + 0xa0], rax
	cmp	r12d, 2
	jne	.label_192
	cmp	byte ptr [rsp + 6], 0
	jne	.label_87
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
	jae	.label_76
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], 0x27
.label_76:
	lea	rax, [r14 + 1]
	cmp	rax, r11
	jae	.label_94
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + rax], 0x5c
.label_94:
	lea	rax, [r14 + 2]
	cmp	rax, r11
	jae	.label_99
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + rax], 0x27
.label_99:
	add	r14, 3
	xor	r9d, r9d
.label_192:
	xor	eax, eax
	mov	r13b, 1
	jmp	.label_92
.label_606:
	mov	r15b, 0x3f
	cmp	r12d, 5
	je	.label_106
	cmp	r12d, 2
	jne	.label_77
	cmp	byte ptr [rsp + 6], 0
	je	.label_77
	jmp	.label_87
.label_607:
	cmp	r12d, 2
	jne	.label_117
	cmp	byte ptr [rsp + 6], 0
	jne	.label_87
	mov	r15b, 0x5c
	xor	eax, eax
	xor	r13d, r13d
	jmp	.label_82
.label_83:
	mov	dword ptr [rsp + 0x54], r8d
	mov	dword ptr [rsp + 0x50], r9d
	mov	byte ptr [rsp + 7], r10b
	mov	qword ptr [rsp + 0x98], r11
	cmp	qword ptr [rsp + 0xa8], 1
	jne	.label_126
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
.label_127:
	and	r13b, 1
	mov	r8d, r13d
	or	r8b, byte ptr [rsp + 0x2a]
	mov	qword ptr [rsp + 0x60], r12
	cmp	r12, 1
	mov	r11, qword ptr [rsp + 0x98]
	mov	r10b, byte ptr [rsp + 7]
	mov	r12, qword ptr [rsp + 0x38]
	mov	r9d, dword ptr [rsp + 0x50]
	ja	.label_141
	test	r8b, r8b
	je	.label_141
	xor	eax, eax
	mov	rbp, qword ptr [rsp + 0x20]
	mov	r8d, dword ptr [rsp + 0x54]
	jmp	.label_92
.label_130:
	test	rsi, rsi
	jne	.label_163
	mov	cl, byte ptr [rdi + 1]
	test	cl, cl
	jne	.label_163
.label_96:
	mov	dl, 1
.label_603:
	cmp	byte ptr [rsp + 0x1f], 0
	je	.label_87
	xor	eax, eax
	mov	r13b, dl
	nop	word ptr [rax + rax]
.label_92:
	cmp	byte ptr [rsp + 0x2e], 0
	je	.label_169
	cmp	qword ptr [rsp + 0xf0], 0
	jne	.label_171
	jmp	.label_174
	.section	.text
	.align	16
	#Procedure 0x402794
	.globl sub_402794
	.type sub_402794, @function
sub_402794:

	nop	word ptr cs:[rax + rax]
.label_169:
	cmp	byte ptr [rsp + 0x2d], 0
	je	.label_174
.label_171:
	mov	ebx, r8d
	mov	r8, rsi
	mov	ecx, r15d
	shr	cl, 5
	movzx	edx, cl
	mov	esi, 1
	mov	ecx, r15d
	shl	esi, cl
	test	bl, bl
	jne	.label_179
	mov	rcx, qword ptr [rsp + 0xf0]
	and	esi, dword ptr [rcx + rdx*4]
	mov	ebx, r15d
	mov	rsi, r8
	je	.label_82
	jmp	.label_191
	.section	.text
	.align	16
	#Procedure 0x4027dd
	.globl sub_4027dd
	.type sub_4027dd, @function
sub_4027dd:

	nop	dword ptr [rax]
.label_174:
	test	r8b, r8b
	mov	ebx, r15d
	jne	.label_191
	jmp	.label_82
.label_179:
	mov	ebx, r15d
	mov	rsi, r8
	jmp	.label_191
.label_135:
	cmp	dword ptr [rsp + 0x90], 0
	jne	.label_104
	xor	r15d, r15d
	jmp	.label_77
.label_117:
	mov	cl, 0x5c
	cmp	byte ptr [rsp + 0x29], 0
	je	.label_97
	xor	eax, eax
	mov	r15b, 0x5c
	xor	r13d, r13d
	jmp	.label_82
.label_97:
	cmp	byte ptr [rsp + 0x1f], 0
	mov	ebx, ecx
	je	.label_87
.label_114:
	xor	eax, eax
	cmp	byte ptr [rsp + 0x17], 0
	mov	r13d, 0
	je	.label_92
	nop	word ptr cs:[rax + rax]
.label_191:
	cmp	byte ptr [rsp + 6], 0
	jne	.label_137
	cmp	r12d, 2
	jne	.label_103
	mov	eax, r9d
	and	al, 1
	jne	.label_103
	cmp	r14, r11
	jae	.label_107
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], 0x27
.label_107:
	lea	rax, [r14 + 1]
	cmp	rax, r11
	jae	.label_110
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + rax], 0x24
.label_110:
	lea	rax, [r14 + 2]
	cmp	rax, r11
	jae	.label_152
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + rax], 0x27
.label_152:
	add	r14, 3
	mov	r9b, 1
.label_103:
	cmp	r14, r11
	jae	.label_120
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], 0x5c
.label_120:
	inc	r14
	jmp	.label_90
.label_126:
	mov	qword ptr [rsp + 0x80], 0
	cmp	rbp, -1
	jne	.label_128
	mov	rbx, rsi
	call	strlen
	mov	rsi, rbx
	mov	rdi, qword ptr [rsp + 0x30]
	mov	rbp, rax
.label_128:
	lea	rax, [rdi + rsi]
	mov	qword ptr [rsp + 0x60], rax
	mov	r13b, 1
	xor	r12d, r12d
	lea	rax, [rsp + 0x80]
	mov	rcx, rax
	mov	qword ptr [rsp + 0x20], rbp
	mov	qword ptr [rsp + 0x58], rsi
.label_100:
	lea	rbx, [r12 + rsi]
	lea	rsi, [rdi + rbx]
	mov	rdx, rbp
	sub	rdx, rbx
	lea	rdi, [rsp + 0x94]
	call	rpl_mbrtowc
	mov	rbp, rax
	test	rbp, rbp
	je	.label_147
	cmp	rbp, -1
	movabs	rsi, 0x20000002b
	je	.label_150
	cmp	rbp, -2
	je	.label_154
	cmp	rbp, 1
	seta	al
	and	al, byte ptr [rsp + 0x2b]
	cmp	al, 1
	mov	rdi, qword ptr [rsp + 0x30]
	mov	r11, qword ptr [rsp + 0x98]
	jne	.label_181
	mov	rax, qword ptr [rsp + 0x60]
	lea	rax, [rax + r12]
	mov	ecx, 1
	nop	word ptr cs:[rax + rax]
.label_170:
	movsx	edx, byte ptr [rax + rcx]
	add	edx, -0x5b
	cmp	edx, 0x21
	ja	.label_139
	bt	rsi, rdx
	jb	.label_158
.label_139:
	inc	rcx
	cmp	rcx, rbp
	jb	.label_170
.label_181:
	mov	edi, dword ptr [rsp + 0x94]
	call	iswprint
	test	eax, eax
	jne	.label_155
	xor	r13d, r13d
.label_155:
	lea	rdi, [rsp + 0x80]
	add	r12, rbp
	mov	rbx, rdi
	call	mbsinit
	mov	rcx, rbx
	test	eax, eax
	mov	rdi, qword ptr [rsp + 0x30]
	mov	rbp, qword ptr [rsp + 0x20]
	mov	rsi, qword ptr [rsp + 0x58]
	je	.label_100
	jmp	.label_127
.label_165:
	xor	r13d, r13d
	jmp	.label_92
.label_163:
	mov	rbp, -1
	xor	r13d, r13d
	jmp	.label_92
.label_106:
	cmp	dword ptr [rsp + 0x8c], 0
	je	.label_77
	lea	rcx, [rsi + 2]
	cmp	rcx, rbp
	jae	.label_77
	cmp	byte ptr [rdi + rsi + 1], 0x3f
	jne	.label_77
	movsx	edx, byte ptr [rdi + rcx]
	xor	eax, eax
	cmp	edx, 0x3e
	ja	.label_129
	mov	rbx, rsi
	movabs	rsi, 0x7000a38200000000
	bt	rsi, rdx
	jae	.label_146
	cmp	byte ptr [rsp + 6], 0
	jne	.label_173
	cmp	r14, r11
	jae	.label_84
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], 0x3f
.label_84:
	lea	rax, [r14 + 1]
	cmp	rax, r11
	jae	.label_177
	mov	rsi, qword ptr [rsp + 8]
	mov	byte ptr [rsi + rax], 0x22
.label_177:
	lea	rax, [r14 + 2]
	cmp	rax, r11
	jae	.label_108
	mov	rsi, qword ptr [rsp + 8]
	mov	byte ptr [rsi + rax], 0x22
.label_108:
	lea	rax, [r14 + 3]
	cmp	rax, r11
	jae	.label_145
	mov	rsi, qword ptr [rsp + 8]
	mov	byte ptr [rsi + rax], 0x3f
.label_145:
	add	r14, 4
	xor	eax, eax
	mov	rsi, rcx
	mov	r15b, dl
	xor	r13d, r13d
	jmp	.label_92
.label_77:
	xor	eax, eax
.label_131:
	xor	r13d, r13d
	jmp	.label_92
.label_141:
	add	qword ptr [rsp + 0x60], rsi
	xor	eax, eax
	mov	rbp, qword ptr [rsp + 0x20]
	jmp	.label_125
	.section	.text
	.align	16
	#Procedure 0x402ac2
	.globl sub_402ac2
	.type sub_402ac2, @function
sub_402ac2:

	nop	word ptr cs:[rax + rax]
.label_78:
	inc	r14
	mov	r15b, byte ptr [rdi + rsi + 1]
	mov	rsi, rdx
.label_125:
	test	r8b, r8b
	je	.label_132
	mov	ecx, dword ptr [rsp + 0x54]
	test	cl, 1
	je	.label_133
	cmp	r14, r11
	jae	.label_134
	mov	rdx, qword ptr [rsp + 8]
	mov	byte ptr [rdx + r14], 0x5c
.label_134:
	inc	r14
	mov	dword ptr [rsp + 0x54], 0
	jmp	.label_133
	.section	.text
	.align	16
	#Procedure 0x402b0c
	.globl sub_402b0c
	.type sub_402b0c, @function
sub_402b0c:

	nop	dword ptr [rax]
.label_132:
	cmp	byte ptr [rsp + 6], 0
	jne	.label_122
	cmp	r12d, 2
	jne	.label_121
	mov	eax, r9d
	and	al, 1
	jne	.label_121
	cmp	r14, r11
	jae	.label_149
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], 0x27
.label_149:
	lea	rax, [r14 + 1]
	cmp	rax, r11
	jae	.label_159
	mov	rdx, qword ptr [rsp + 8]
	mov	byte ptr [rdx + rax], 0x24
.label_159:
	lea	rax, [r14 + 2]
	cmp	rax, r11
	jae	.label_184
	mov	rdx, qword ptr [rsp + 8]
	mov	byte ptr [rdx + rax], 0x27
.label_184:
	add	r14, 3
	mov	r9b, 1
.label_121:
	cmp	r14, r11
	jae	.label_101
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], 0x5c
.label_101:
	lea	rax, [r14 + 1]
	cmp	rax, r11
	jae	.label_168
	mov	edx, r15d
	shr	dl, 6
	or	dl, 0x30
	mov	rbx, qword ptr [rsp + 8]
	mov	byte ptr [rbx + rax], dl
.label_168:
	lea	rax, [r14 + 2]
	cmp	rax, r11
	jae	.label_172
	mov	edx, r15d
	shr	dl, 3
	and	dl, 7
	or	dl, 0x30
	mov	rbx, qword ptr [rsp + 8]
	mov	byte ptr [rbx + rax], dl
.label_172:
	add	r14, 3
	and	r15b, 7
	or	r15b, 0x30
	mov	al, 1
.label_133:
	lea	rdx, [rsi + 1]
	cmp	qword ptr [rsp + 0x60], rdx
	jbe	.label_82
	test	r9b, 1
	je	.label_118
	mov	ebx, eax
	and	bl, 1
	jne	.label_118
	mov	rbx, rsi
	cmp	r14, r11
	jae	.label_189
	mov	rsi, qword ptr [rsp + 8]
	mov	byte ptr [rsi + r14], 0x27
.label_189:
	lea	rsi, [r14 + 1]
	cmp	rsi, r11
	jae	.label_190
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + rsi], 0x27
.label_190:
	add	r14, 2
	xor	r9d, r9d
	mov	rsi, rbx
.label_118:
	cmp	r14, r11
	jae	.label_78
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + r14], r15b
	jmp	.label_78
	.section	.text
	.align	16
	#Procedure 0x402c13
	.globl sub_402c13
	.type sub_402c13, @function
sub_402c13:

	nop	word ptr cs:[rax + rax]
.label_82:
	test	r9b, 1
	je	.label_86
	and	al, 1
	jne	.label_86
	cmp	r14, r11
	jae	.label_136
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], 0x27
.label_136:
	lea	rax, [r14 + 1]
	cmp	rax, r11
	jae	.label_162
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + rax], 0x27
.label_162:
	add	r14, 2
	xor	r9d, r9d
.label_86:
	mov	ebx, r15d
.label_90:
	cmp	r14, r11
	jae	.label_195
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], bl
.label_195:
	inc	r14
	shl	r13b, 7
	sar	r13b, 7
	and	r13b, r10b
	mov	r10d, r13d
	jmp	.label_104
.label_150:
	xor	r13d, r13d
.label_147:
	mov	rdi, qword ptr [rsp + 0x30]
	mov	rsi, qword ptr [rsp + 0x58]
	jmp	.label_127
.label_154:
	mov	rbp, qword ptr [rsp + 0x20]
	cmp	rbp, rbx
	mov	rdi, qword ptr [rsp + 0x30]
	jbe	.label_115
	mov	rsi, qword ptr [rsp + 0x58]
.label_124:
	mov	rax, qword ptr [rsp + 0x60]
	cmp	byte ptr [rax + r12], 0
	je	.label_80
	lea	rax, [rsi + r12 + 1]
	inc	r12
	cmp	rax, rbp
	jb	.label_124
	xor	r13d, r13d
	jmp	.label_127
.label_115:
	xor	r13d, r13d
	mov	rsi, qword ptr [rsp + 0x58]
	jmp	.label_127
.label_80:
	xor	r13d, r13d
	jmp	.label_127
.label_129:
	xor	r13d, r13d
	jmp	.label_92
.label_146:
	xor	r13d, r13d
	mov	rsi, rbx
	jmp	.label_92
	.section	.text
	.align	16
	#Procedure 0x402ce8
	.globl sub_402ce8
	.type sub_402ce8, @function
sub_402ce8:

	nop	dword ptr [rax + rax]
.label_178:
	mov	rcx, rsi
.label_182:
	cmp	r12d, 2
	setne	al
	test	r14, r14
	setne	dl
	cmp	byte ptr [rsp + 6], 0
	je	.label_183
	or	al, dl
	je	.label_140
.label_183:
	cmp	r12d, 2
	setne	al
	cmp	byte ptr [rsp + 6], 0
	setne	dl
	mov	rsi, qword ptr [rsp + 0xa0]
	test	sil, 1
	mov	bl, byte ptr [rsp + 0x2c]
	mov	rsi, qword ptr [rsp + 0xb0]
	je	.label_143
	or	al, dl
	jne	.label_143
	test	r10b, 1
	jne	.label_153
	cmp	qword ptr [rsp + 0x68], 0
	je	.label_143
	test	r11, r11
	mov	r15d, r12d
	mov	al, bl
	mov	qword ptr [rsp + 0x20], rcx
	mov	r12d, esi
	mov	rbp, qword ptr [rsp + 0x68]
	je	.label_160
.label_143:
	mov	rdx, qword ptr [rsp + 0x48]
	test	rdx, rdx
	je	.label_166
	cmp	byte ptr [rsp + 6], 0
	mov	rcx, qword ptr [rsp + 8]
	jne	.label_151
	mov	al, byte ptr [rdx]
	test	al, al
	je	.label_151
	inc	rdx
	nop	word ptr cs:[rax + rax]
.label_180:
	cmp	r14, r11
	jae	.label_186
	mov	byte ptr [rcx + r14], al
.label_186:
	inc	r14
	movzx	eax, byte ptr [rdx]
	inc	rdx
	test	al, al
	jne	.label_180
	jmp	.label_151
.label_137:
	mov	qword ptr [rsp + 0x20], rbp
.label_122:
	mov	rdx, rdi
	jmp	.label_95
.label_87:
	mov	qword ptr [rsp + 0x20], rbp
.label_158:
	mov	rdx, rdi
	mov	eax, 2
.label_164:
	mov	qword ptr [rsp + 0x38], rax
.label_95:
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
.label_111:
	mov	r14, rax
.label_113:
	mov	rax, r14
	add	rsp, 0xb8
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_140:
	mov	rdx, rdi
	mov	qword ptr [rsp + 0x20], rcx
	jmp	.label_95
.label_153:
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
	jmp	.label_111
.label_166:
	mov	rcx, qword ptr [rsp + 8]
.label_151:
	cmp	r14, r11
	jae	.label_113
	mov	byte ptr [rcx + r14], 0
	jmp	.label_113
.label_173:
	mov	qword ptr [rsp + 0x20], rbp
	mov	rdx, rdi
	mov	eax, 5
	jmp	.label_164
.label_157:
	call	abort
	.section	.text
	.align	16
	#Procedure 0x402ea7
	.globl sub_402ea7
	.type sub_402ea7, @function
sub_402ea7:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x402eb0
	.globl quotearg_char_mem
	.type quotearg_char_mem, @function
quotearg_char_mem:

	sub	rsp, 0x38
	mov	ecx, edx
	mov	r8, rsi
	mov	rdx, rdi
	mov	rsi, qword ptr [rip + label_54]
	mov	qword ptr [rsp + 0x30], rsi
	movups	xmm0, xmmword ptr [rip + label_55]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0, xmmword ptr [rip + label_56]
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
	#Procedure 0x402f1e
	.globl sub_402f1e
	.type sub_402f1e, @function
sub_402f1e:

	nop	
	.section	.text
	.align	16
	#Procedure 0x402f20

	.globl hard_locale
	.type hard_locale, @function
hard_locale:
	push	rbx
	xor	esi, esi
	call	setlocale
	mov	bl, 1
	test	rax, rax
	je	.label_197
	cmp	byte ptr [rax], 0x43
	jne	.label_199
	cmp	byte ptr [rax + 1], 0
	je	.label_196
.label_199:
	mov	esi, OFFSET FLAT:label_198
	mov	rdi, rax
	call	strcmp
	test	eax, eax
	jne	.label_197
.label_196:
	xor	ebx, ebx
.label_197:
	mov	eax, ebx
	pop	rbx
	ret	
	.section	.text
	.align	16
	#Procedure 0x402f51
	.globl sub_402f51
	.type sub_402f51, @function
sub_402f51:

	nop	word ptr cs:[rax + rax]
.label_200:
	call	xalloc_die
	.section	.text
	.align	16
	#Procedure 0x402f65
	.globl sub_402f65
	.type sub_402f65, @function
sub_402f65:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x402f73
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
	je	.label_201
	test	r15, r15
	je	.label_200
.label_201:
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
	#Procedure 0x402fb0

	.globl locale_charset
	.type locale_charset, @function
locale_charset:
	push	rax
	mov	edi, 0xe
	call	rpl_nl_langinfo
	test	rax, rax
	mov	ecx, OFFSET FLAT:label_202
	cmovne	rcx, rax
	cmp	byte ptr [rcx], 0
	mov	eax, OFFSET FLAT:label_203
	cmovne	rax, rcx
	pop	rcx
	ret	
	.section	.text
	.align	16
	#Procedure 0x402fd5
	.globl sub_402fd5
	.type sub_402fd5, @function
sub_402fd5:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x402fe0

	.globl set_program_name
	.type set_program_name, @function
set_program_name:
	push	r14
	push	rbx
	push	rax
	mov	rbx, rdi
	test	rbx, rbx
	je	.label_204
	mov	esi, 0x2f
	mov	rdi, rbx
	call	strrchr
	test	rax, rax
	lea	r14, [rax + 1]
	cmove	r14, rbx
	mov	rax, r14
	sub	rax, rbx
	cmp	rax, 7
	jl	.label_206
	lea	rdi, [r14 - 7]
	mov	esi, OFFSET FLAT:label_208
	mov	edx, 7
	call	strncmp
	test	eax, eax
	jne	.label_206
	mov	esi, OFFSET FLAT:label_207
	mov	edx, 3
	mov	rdi, r14
	call	strncmp
	test	eax, eax
	jne	.label_209
	add	r14, 3
	mov	qword ptr [rip + __progname],  r14
.label_209:
	mov	rbx, r14
.label_206:
	mov	qword ptr [rip + program_name],  rbx
	mov	qword ptr [rip + __progname_full],  rbx
	add	rsp, 8
	pop	rbx
	pop	r14
	ret	
.label_204:
	mov	rcx, qword ptr [rip + stderr]
	mov	edi, OFFSET FLAT:label_205
	mov	esi, 0x37
	mov	edx, 1
	call	fwrite
	call	abort
	.section	.text
	.align	16
	#Procedure 0x403081
	.globl sub_403081
	.type sub_403081, @function
sub_403081:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x403090
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
	#Procedure 0x403151
	.globl sub_403151
	.type sub_403151, @function
sub_403151:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x403160

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
	mov	r13, rdx
	mov	eax, esi
	mov	r12, rdi
	lea	rcx, [rsp]
	xor	esi, esi
	mov	edx, eax
	call	xstrtoumax
	test	eax, eax
	je	.label_211
	cmp	eax, 1
	je	.label_213
	cmp	eax, 3
	jne	.label_215
	call	__errno_location
	mov	dword ptr [rax], 0
	jmp	.label_210
.label_213:
	call	__errno_location
	mov	dword ptr [rax], 0x4b
	jmp	.label_210
.label_211:
	mov	rbx, qword ptr [rsp]
	cmp	rbx, r13
	jb	.label_214
	cmp	rbx, r15
	jbe	.label_216
.label_214:
	call	__errno_location
	cmp	rbx, 0x40000000
	jb	.label_212
	mov	dword ptr [rax], 0x4b
	jmp	.label_210
.label_215:
	call	__errno_location
	jmp	.label_210
.label_212:
	mov	dword ptr [rax], 0x22
.label_210:
	mov	ecx, dword ptr [rsp + 0x40]
	test	ecx, ecx
	mov	ebx, 1
	cmovne	ebx, ecx
	mov	ebp, dword ptr [rax]
	xor	eax, eax
	cmp	ebp, 0x16
	cmove	ebp, eax
	mov	rdi, r12
	call	quote
	mov	r8, rax
	mov	edx, OFFSET FLAT:label_217
	xor	eax, eax
	mov	edi, ebx
	mov	esi, ebp
	mov	rcx, r14
	call	error
	mov	rbx, qword ptr [rsp]
.label_216:
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
	#Procedure 0x40322b
	.globl sub_40322b
	.type sub_40322b, @function
sub_40322b:

	nop	dword ptr [rax + rax]
.label_218:
	call	abort
	.section	.text
	.align	16
	#Procedure 0x403235
	.globl sub_403235
	.type sub_403235, @function
sub_403235:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x403240

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
	je	.label_218
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
	#Procedure 0x4032d0

	.globl rpl_fflush
	.type rpl_fflush, @function
rpl_fflush:
	push	rbx
	mov	rbx, rdi
	test	rbx, rbx
	je	.label_219
	mov	rdi, rbx
	call	__freading
	test	eax, eax
	je	.label_219
	test	byte ptr [rbx + 1], 1
	je	.label_219
	xor	esi, esi
	mov	edx, 1
	mov	rdi, rbx
	call	rpl_fseeko
.label_219:
	mov	rdi, rbx
	pop	rbx
	jmp	fflush
	.section	.text
	.align	16
	#Procedure 0x403303
	.globl sub_403303
	.type sub_403303, @function
sub_403303:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x403310
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
	#Procedure 0x403385
	.globl sub_403385
	.type sub_403385, @function
sub_403385:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x403390

	.globl get_prefix
	.type get_prefix, @function
get_prefix:
	push	r14
	push	rbx
	push	rax
	mov	rbx, rdi
	mov	dword ptr [rip + in_column],  0
	jmp	.label_225
	.section	.text
	.align	16
	#Procedure 0x4033a3
	.globl sub_4033a3
	.type sub_4033a3, @function
sub_4033a3:

	nop	word ptr cs:[rax + rax]
.label_226:
	mov	eax, dword ptr [rip + in_column]
	inc	eax
	mov	dword ptr [rip + in_column],  eax
.label_225:
	mov	rax, qword ptr [rbx + 8]
	cmp	rax, qword ptr [rbx + 0x10]
	jae	.label_234
	lea	rcx, [rax + 1]
	mov	qword ptr [rbx + 8], rcx
	movzx	eax, byte ptr [rax]
.label_223:
	cmp	eax, 9
	je	.label_227
	cmp	eax, 0x20
	je	.label_226
	jmp	.label_232
	.section	.text
	.align	16
	#Procedure 0x4033df
	.globl sub_4033df
	.type sub_4033df, @function
sub_4033df:

	nop	
.label_227:
	mov	byte ptr [rip + tabs],  1
	mov	ecx, dword ptr [rip + in_column]
	mov	eax, ecx
	sar	eax, 0x1f
	shr	eax, 0x1d
	add	eax, ecx
	and	eax, 0xfffffff8
	add	eax, 8
	mov	dword ptr [rip + in_column],  eax
	jmp	.label_225
.label_234:
	mov	rdi, rbx
	call	__uflow
	jmp	.label_223
.label_232:
	cmp	dword ptr [rip + prefix_length],  0
	je	.label_224
	mov	ecx, dword ptr [rip + in_column]
	mov	dword ptr [rip + next_prefix_indent],  ecx
	mov	r14, qword ptr [rip + prefix]
	mov	cl, byte ptr [r14]
	test	cl, cl
	je	.label_228
	inc	r14
	jmp	.label_222
.label_224:
	mov	ecx, dword ptr [rip + prefix_lead_space]
	mov	edx, dword ptr [rip + in_column]
	cmp	ecx, edx
	cmovle	edx, ecx
	mov	dword ptr [rip + next_prefix_indent],  edx
	jmp	.label_220
.label_221:
	mov	rdi, rbx
	call	__uflow
	jmp	.label_229
	.section	.text
	.align	16
	#Procedure 0x40345d
	.globl sub_40345d
	.type sub_40345d, @function
sub_40345d:

	nop	dword ptr [rax]
.label_222:
	movzx	ecx, cl
	cmp	eax, ecx
	jne	.label_220
	inc	dword ptr [rip + in_column]
	mov	rax, qword ptr [rbx + 8]
	cmp	rax, qword ptr [rbx + 0x10]
	jae	.label_221
	lea	rcx, [rax + 1]
	mov	qword ptr [rbx + 8], rcx
	movzx	eax, byte ptr [rax]
.label_229:
	movzx	ecx, byte ptr [r14]
	inc	r14
	test	cl, cl
	jne	.label_222
	jmp	.label_228
	.section	.text
	.align	16
	#Procedure 0x403493
	.globl sub_403493
	.type sub_403493, @function
sub_403493:

	nop	word ptr cs:[rax + rax]
.label_230:
	lea	rcx, [rax + 1]
	mov	qword ptr [rbx + 8], rcx
	movzx	eax, byte ptr [rax]
.label_228:
	cmp	eax, 9
	je	.label_231
	cmp	eax, 0x20
	jne	.label_220
	mov	eax, dword ptr [rip + in_column]
	inc	eax
	jmp	.label_233
	.section	.text
	.align	16
	#Procedure 0x4034bf
	.globl sub_4034bf
	.type sub_4034bf, @function
sub_4034bf:

	nop	
.label_231:
	mov	byte ptr [rip + tabs],  1
	mov	ecx, dword ptr [rip + in_column]
	mov	eax, ecx
	sar	eax, 0x1f
	shr	eax, 0x1d
	add	eax, ecx
	and	eax, 0xfffffff8
	add	eax, 8
.label_233:
	mov	dword ptr [rip + in_column],  eax
	mov	rax, qword ptr [rbx + 8]
	cmp	rax, qword ptr [rbx + 0x10]
	jb	.label_230
	mov	rdi, rbx
	call	__uflow
	jmp	.label_228
.label_220:
	add	rsp, 8
	pop	rbx
	pop	r14
	ret	
	.section	.text
	.align	16
	#Procedure 0x4034ff
	.globl sub_4034ff
	.type sub_4034ff, @function
sub_4034ff:

	nop	
	.section	.text
	.align	16
	#Procedure 0x403500

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
	jne	.label_236
	test	eax, eax
	sete	cl
	neg	eax
	sbb	ebx, ebx
	test	r14, r14
	jne	.label_235
	test	cl, cl
	jne	.label_235
	call	__errno_location
	xor	ecx, ecx
	cmp	dword ptr [rax], 9
	mov	ebx, 0xffffffff
	cmove	ebx, ecx
	jmp	.label_235
.label_236:
	mov	ebx, 0xffffffff
	test	eax, eax
	jne	.label_235
	call	__errno_location
	mov	dword ptr [rax], 0
.label_235:
	mov	eax, ebx
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x403560
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
	#Procedure 0x40356f
	.globl sub_40356f
	.type sub_40356f, @function
sub_40356f:

	nop	
	.section	.text
	.align	16
	#Procedure 0x403570

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
	je	.label_237
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
.label_237:
	call	abort
	.section	.text
	.align	16
	#Procedure 0x4035d8
	.globl sub_4035d8
	.type sub_4035d8, @function
sub_4035d8:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4035e0

	.globl fmt
	.type fmt, @function
fmt:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	push	rax
	mov	rbx, rdi
	mov	esi, 2
	call	fadvise
	mov	byte ptr [rip + tabs],  0
	mov	dword ptr [rip + other_indent],  0
	mov	rdi, rbx
	call	get_prefix
	mov	r14d, eax
	mov	dword ptr [rip + next_char],  r14d
	mov	r15d, OFFSET FLAT:unused_word_type
	mov	r12d, OFFSET FLAT:in_column
	jmp	.label_244
.label_258:
	mov	r14d, dword ptr [rip + next_char]
.label_244:
	mov	dword ptr [rip + last_line_length],  0
	jmp	.label_252
	.section	.text
	.align	16
	#Procedure 0x40363c
	.globl sub_40363c
	.type sub_40363c, @function
sub_40363c:

	nop	dword ptr [rax]
.label_278:
	mov	rdi, rbx
	call	get_prefix
	mov	r14d, eax
.label_252:
	cmp	r14d, -1
	je	.label_259
	cmp	r14d, 0xa
	je	.label_259
	mov	eax, dword ptr [rip + next_prefix_indent]
	cmp	eax, dword ptr [rip + prefix_lead_space]
	jl	.label_259
	mov	ecx, dword ptr [rip + in_column]
	mov	edx, dword ptr [rip + prefix_full_length]
	add	edx, eax
	cmp	ecx, edx
	jge	.label_265
	nop	dword ptr [rax + rax]
.label_259:
	mov	dword ptr [rip + out_column],  0
	mov	ebp, dword ptr [rip + next_prefix_indent]
	cmp	dword ptr [rip + in_column],  ebp
	jg	.label_239
	cmp	r14d, -1
	je	.label_274
	cmp	r14d, 0xa
	jne	.label_239
	mov	ebp, r14d
	jmp	.label_249
	.section	.text
	.align	16
	#Procedure 0x4036ac
	.globl sub_4036ac
	.type sub_4036ac, @function
sub_4036ac:

	nop	dword ptr [rax]
.label_239:
	xor	eax, eax
	cmp	byte ptr [rip + tabs],  1
	jne	.label_250
	cmp	ebp, 8
	jl	.label_250
	mov	r13d, ebp
	sar	r13d, 0x1f
	shr	r13d, 0x1d
	add	r13d, ebp
	and	r13d, 0xfffffff8
	cmp	r13d, 2
	jl	.label_250
	xor	ecx, ecx
	jmp	.label_246
.label_274:
	mov	ebp, r14d
	jmp	.label_249
.label_238:
	mov	esi, 9
	call	__overflow
	mov	ecx, dword ptr [rip + out_column]
	jmp	.label_283
	.section	.text
	.align	16
	#Procedure 0x4036fe
	.globl sub_4036fe
	.type sub_4036fe, @function
sub_4036fe:

	nop	
.label_246:
	mov	rdi, qword ptr [rip + stdout]
	mov	rax, qword ptr [rdi + 0x28]
	cmp	rax, qword ptr [rdi + 0x30]
	jae	.label_238
	lea	rdx, [rax + 1]
	mov	qword ptr [rdi + 0x28], rdx
	mov	byte ptr [rax], 9
.label_283:
	mov	eax, ecx
	sar	eax, 0x1f
	shr	eax, 0x1d
	add	eax, ecx
	and	eax, 0xfffffff8
	add	eax, 8
	mov	dword ptr [rip + out_column],  eax
	cmp	eax, r13d
	mov	ecx, eax
	jl	.label_246
	jmp	.label_250
	.section	.text
	.align	16
	#Procedure 0x40373b
	.globl sub_40373b
	.type sub_40373b, @function
sub_40373b:

	nop	dword ptr [rax + rax]
.label_264:
	inc	eax
	mov	dword ptr [rip + out_column],  eax
.label_250:
	cmp	eax, ebp
	jge	.label_296
	mov	rdi, qword ptr [rip + stdout]
	mov	rcx, qword ptr [rdi + 0x28]
	cmp	rcx, qword ptr [rdi + 0x30]
	jae	.label_286
	lea	rdx, [rcx + 1]
	mov	qword ptr [rdi + 0x28], rdx
	mov	byte ptr [rcx], 0x20
	jmp	.label_264
.label_286:
	mov	esi, 0x20
	call	__overflow
	mov	eax, dword ptr [rip + out_column]
	jmp	.label_264
	.section	.text
	.align	16
	#Procedure 0x40377c
	.globl sub_40377c
	.type sub_40377c, @function
sub_40377c:

	nop	dword ptr [rax]
.label_296:
	mov	r13d, dword ptr [rip + in_column]
	cmp	eax, r13d
	jne	.label_269
	mov	ecx, eax
	mov	r13d, eax
	jmp	.label_271
	.section	.text
	.align	16
	#Procedure 0x403793
	.globl sub_403793
	.type sub_403793, @function
sub_403793:

	nop	word ptr cs:[rax + rax]
.label_269:
	mov	rbp, qword ptr [rip + prefix]
	jmp	.label_275
.label_285:
	call	__overflow
	mov	eax, dword ptr [rip + out_column]
	mov	r13d, dword ptr [rip + in_column]
	jmp	.label_277
	.section	.text
	.align	16
	#Procedure 0x4037bd
	.globl sub_4037bd
	.type sub_4037bd, @function
sub_4037bd:

	nop	dword ptr [rax]
.label_275:
	movzx	esi, byte ptr [rbp]
	test	esi, esi
	je	.label_280
	mov	rdi, qword ptr [rip + stdout]
	mov	rcx, qword ptr [rdi + 0x28]
	cmp	rcx, qword ptr [rdi + 0x30]
	jae	.label_285
	lea	rdx, [rcx + 1]
	mov	qword ptr [rdi + 0x28], rdx
	mov	byte ptr [rcx], sil
.label_277:
	inc	rbp
	inc	eax
	mov	dword ptr [rip + out_column],  eax
	cmp	eax, r13d
	mov	ecx, r13d
	jne	.label_275
	jmp	.label_271
.label_280:
	mov	ecx, eax
.label_271:
	cmp	r14d, -1
	je	.label_294
	mov	ebp, 0xa
	cmp	r14d, 0xa
	je	.label_249
	cmp	byte ptr [rip + tabs],  1
	jne	.label_243
	mov	ebp, r13d
	sar	ebp, 0x1f
	shr	ebp, 0x1d
	add	ebp, r13d
	and	ebp, 0xfffffff8
	lea	eax, [rcx + 1]
	cmp	eax, ebp
	jge	.label_243
	cmp	ecx, ebp
	jl	.label_251
	mov	eax, ecx
	jmp	.label_253
	.section	.text
	.align	16
	#Procedure 0x40383a
	.globl sub_40383a
	.type sub_40383a, @function
sub_40383a:

	nop	word ptr [rax + rax]
.label_294:
	mov	eax, dword ptr [rip + prefix_length]
	add	eax, dword ptr [rip + next_prefix_indent]
	mov	ebp, 0xffffffff
	cmp	r13d, eax
	jl	.label_249
	mov	rdi, qword ptr [rip + stdout]
	mov	rax, qword ptr [rdi + 0x28]
	cmp	rax, qword ptr [rdi + 0x30]
	jae	.label_263
	lea	rcx, [rax + 1]
	mov	qword ptr [rdi + 0x28], rcx
	mov	byte ptr [rax], 0xa
	jmp	.label_249
.label_243:
	mov	eax, ecx
	jmp	.label_253
.label_284:
	mov	esi, 9
	call	__overflow
	mov	ecx, dword ptr [rip + out_column]
	jmp	.label_272
	.section	.text
	.align	16
	#Procedure 0x403895
	.globl sub_403895
	.type sub_403895, @function
sub_403895:

	nop	word ptr cs:[rax + rax]
.label_251:
	mov	rdi, qword ptr [rip + stdout]
	mov	rax, qword ptr [rdi + 0x28]
	cmp	rax, qword ptr [rdi + 0x30]
	jae	.label_284
	lea	rdx, [rax + 1]
	mov	qword ptr [rdi + 0x28], rdx
	mov	byte ptr [rax], 9
.label_272:
	mov	eax, ecx
	sar	eax, 0x1f
	shr	eax, 0x1d
	add	eax, ecx
	and	eax, 0xfffffff8
	add	eax, 8
	mov	dword ptr [rip + out_column],  eax
	cmp	eax, ebp
	mov	ecx, eax
	jl	.label_251
.label_253:
	cmp	eax, r13d
	jl	.label_245
	mov	ebp, r14d
	jmp	.label_249
.label_287:
	mov	esi, 0x20
	call	__overflow
	mov	eax, dword ptr [rip + out_column]
	jmp	.label_270
	.section	.text
	.align	16
	#Procedure 0x4038f4
	.globl sub_4038f4
	.type sub_4038f4, @function
sub_4038f4:

	nop	word ptr cs:[rax + rax]
.label_245:
	mov	rdi, qword ptr [rip + stdout]
	mov	rcx, qword ptr [rdi + 0x28]
	cmp	rcx, qword ptr [rdi + 0x30]
	jae	.label_287
	lea	rdx, [rcx + 1]
	mov	qword ptr [rdi + 0x28], rdx
	mov	byte ptr [rcx], 0x20
.label_270:
	inc	eax
	mov	dword ptr [rip + out_column],  eax
	cmp	eax, r13d
	jl	.label_245
	mov	ebp, r14d
	jmp	.label_249
.label_263:
	mov	esi, 0xa
	call	__overflow
	jmp	.label_249
	.section	.text
	.align	16
	#Procedure 0x40393a
	.globl sub_40393a
	.type sub_40393a, @function
sub_40393a:

	nop	word ptr [rax + rax]
.label_279:
	lea	rcx, [rax + 1]
	mov	qword ptr [rbx + 8], rcx
	movzx	ebp, byte ptr [rax]
.label_249:
	cmp	ebp, -1
	je	.label_282
	cmp	ebp, 0xa
	je	.label_261
	mov	rdi, qword ptr [rip + stdout]
	mov	rax, qword ptr [rdi + 0x28]
	cmp	rax, qword ptr [rdi + 0x30]
	jae	.label_262
	lea	rcx, [rax + 1]
	mov	qword ptr [rdi + 0x28], rcx
	mov	byte ptr [rax], bpl
.label_273:
	mov	rax, qword ptr [rbx + 8]
	cmp	rax, qword ptr [rbx + 0x10]
	jb	.label_279
	mov	rdi, rbx
	call	__uflow
	mov	ebp, eax
	jmp	.label_249
.label_262:
	movzx	esi, bpl
	call	__overflow
	jmp	.label_273
	.section	.text
	.align	16
	#Procedure 0x403996
	.globl sub_403996
	.type sub_403996, @function
sub_403996:

	nop	word ptr cs:[rax + rax]
.label_261:
	mov	rdi, qword ptr [rip + stdout]
	mov	rax, qword ptr [rdi + 0x28]
	cmp	rax, qword ptr [rdi + 0x30]
	jae	.label_281
	lea	rcx, [rax + 1]
	mov	qword ptr [rdi + 0x28], rcx
	mov	byte ptr [rax], 0xa
	jmp	.label_278
.label_281:
	mov	esi, 0xa
	call	__overflow
	jmp	.label_278
.label_265:
	mov	dword ptr [rip + prefix_indent],  eax
	mov	dword ptr [rip + first_indent],  ecx
	mov	qword ptr [rip + wptr], OFFSET FLAT:parabuf
	mov	qword ptr [rip + word_limit], OFFSET FLAT:unused_word_type
	mov	rdi, rbx
	mov	esi, r14d
	call	get_line
	mov	ecx, dword ptr [rip + next_prefix_indent]
	mov	ebp, dword ptr [rip + prefix_indent]
	cmp	ecx, ebp
	jne	.label_295
	mov	esi, dword ptr [rip + prefix_full_length]
	add	esi, ecx
	cmp	dword ptr [rip + in_column],  esi
	setge	dil
	cmp	eax, 0xa
	setne	dl
	cmp	eax, -1
	setne	sil
	and	sil, dl
	and	sil, dil
	jmp	.label_241
.label_295:
	xor	esi, esi
.label_241:
	cmp	byte ptr [rip + split],  1
	jne	.label_254
	mov	ecx, dword ptr [rip + first_indent]
	mov	dword ptr [rip + other_indent],  ecx
	jmp	.label_255
.label_254:
	mov	dl, byte ptr [rip + crown]
	test	dl, dl
	je	.label_260
	test	sil, sil
	mov	edx, OFFSET FLAT:first_indent
	cmovne	rdx, r12
	mov	edx, dword ptr [rdx]
	mov	dword ptr [rip + other_indent],  edx
	cmp	ecx, ebp
	jne	.label_255
	add	ecx, dword ptr [rip + prefix_full_length]
	cmp	dword ptr [rip + in_column],  ecx
	jl	.label_255
	cmp	eax, -1
	je	.label_255
	cmp	eax, 0xa
	je	.label_255
.label_276:
	mov	rdi, rbx
	mov	esi, eax
	call	get_line
	mov	edx, dword ptr [rip + next_prefix_indent]
	cmp	edx, dword ptr [rip + prefix_indent]
	jne	.label_255
	mov	ecx, dword ptr [rip + in_column]
	add	edx, dword ptr [rip + prefix_full_length]
	cmp	ecx, edx
	jl	.label_255
	cmp	eax, -1
	je	.label_255
	cmp	eax, 0xa
	je	.label_255
	cmp	ecx, dword ptr [rip + other_indent]
	je	.label_276
	jmp	.label_255
.label_260:
	cmp	byte ptr [rip + tagged],  1
	jne	.label_291
	test	sil, sil
	je	.label_293
	mov	edi, dword ptr [rip + in_column]
	mov	esi, dword ptr [rip + first_indent]
	cmp	edi, esi
	jne	.label_289
	mov	esi, edi
	jmp	.label_240
.label_291:
	mov	esi, dword ptr [rip + first_indent]
	mov	dword ptr [rip + other_indent],  esi
	jmp	.label_242
.label_293:
	mov	esi, dword ptr [rip + first_indent]
.label_240:
	cmp	dword ptr [rip + other_indent],  esi
	jne	.label_242
	xor	edx, edx
	test	esi, esi
	sete	dl
	lea	edx, [rdx + rdx*2]
	mov	dword ptr [rip + other_indent],  edx
	jmp	.label_242
.label_289:
	mov	dword ptr [rip + other_indent],  edi
.label_242:
	mov	dl, byte ptr [rip + tagged]
	test	dl, dl
	je	.label_257
	cmp	ecx, ebp
	jne	.label_255
	mov	edx, dword ptr [rip + in_column]
	add	ecx, dword ptr [rip + prefix_full_length]
	cmp	edx, ecx
	jl	.label_255
	cmp	eax, -1
	je	.label_255
	cmp	eax, 0xa
	je	.label_255
	cmp	edx, esi
	je	.label_255
.label_288:
	mov	rdi, rbx
	mov	esi, eax
	call	get_line
	mov	edx, dword ptr [rip + next_prefix_indent]
	cmp	edx, dword ptr [rip + prefix_indent]
	jne	.label_255
	mov	ecx, dword ptr [rip + in_column]
	add	edx, dword ptr [rip + prefix_full_length]
	cmp	ecx, edx
	jl	.label_255
	cmp	eax, -1
	je	.label_255
	cmp	eax, 0xa
	je	.label_255
	cmp	ecx, dword ptr [rip + other_indent]
	je	.label_288
	jmp	.label_255
.label_257:
	cmp	ecx, ebp
	jne	.label_255
.label_290:
	mov	edx, dword ptr [rip + in_column]
	add	ecx, dword ptr [rip + prefix_full_length]
	cmp	edx, ecx
	jl	.label_255
	cmp	eax, -1
	je	.label_255
	cmp	eax, 0xa
	je	.label_255
	cmp	edx, dword ptr [rip + other_indent]
	jne	.label_255
	mov	rdi, rbx
	mov	esi, eax
	call	get_line
	mov	ecx, dword ptr [rip + next_prefix_indent]
	cmp	ecx, dword ptr [rip + prefix_indent]
	je	.label_290
.label_255:
	mov	r14, qword ptr [rip + word_limit]
	cmp	r14, r15
	jbe	.label_292
	or	byte ptr [r14 - 0x18], 0xa
	mov	dword ptr [rip + next_char],  eax
	call	fmt_paragraph
	mov	esi, dword ptr [rip + first_indent]
	mov	edi, OFFSET FLAT:unused_word_type
	call	put_line
	mov	rbp, qword ptr [rip + label_247]
	jmp	.label_248
	.section	.text
	.align	16
	#Procedure 0x403c2a
	.globl sub_403c2a
	.type sub_403c2a, @function
sub_403c2a:

	nop	word ptr [rax + rax]
.label_256:
	mov	esi, dword ptr [rip + other_indent]
	mov	rdi, rbp
	call	put_line
	mov	rbp, qword ptr [rbp + 0x20]
.label_248:
	cmp	rbp, r14
	jne	.label_256
	jmp	.label_258
.label_282:
	mov	dword ptr [rip + next_char],  0xffffffff
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_292:
	mov	edi, OFFSET FLAT:label_266
	mov	esi, OFFSET FLAT:label_267
	mov	edx, 0x25e
	mov	ecx, OFFSET FLAT:label_268
	call	__assert_fail
	.section	.text
	.align	16
	#Procedure 0x403c7e
	.globl sub_403c7e
	.type sub_403c7e, @function
sub_403c7e:

	nop	
	.section	.text
	.align	16
	#Procedure 0x403c80

	.globl xstrtoumax
	.type xstrtoumax, @function
xstrtoumax:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x28
	mov	r14, r8
	mov	r12d, edx
	mov	rbp, rsi
	mov	rbx, rdi
	cmp	r12d, 0x25
	jae	.label_297
	mov	qword ptr [rsp + 8], rcx
	call	__errno_location
	mov	r15, rax
	mov	dword ptr [r15], 0
	call	__ctype_b_loc
	mov	rcx, qword ptr [rax]
	mov	rdx, rbx
	nop	word ptr cs:[rax + rax]
.label_314:
	movzx	eax, byte ptr [rdx]
	inc	rdx
	test	byte ptr [rcx + rax*2 + 1], 0x20
	jne	.label_314
	test	rbp, rbp
	lea	rsi, [rsp + 0x20]
	cmovne	rsi, rbp
	mov	r13d, 4
	cmp	al, 0x2d
	je	.label_310
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
	je	.label_300
	mov	eax, dword ptr [r15]
	test	eax, eax
	je	.label_308
	cmp	eax, 0x22
	jne	.label_310
	mov	ebp, 1
.label_308:
	test	r14, r14
	mov	r15d, ebp
	jne	.label_309
	jmp	.label_317
.label_300:
	test	r14, r14
	je	.label_310
	movsx	esi, byte ptr [rbx]
	test	esi, esi
	je	.label_310
	mov	rdi, r14
	mov	rbx, rcx
	call	strchr
	mov	rcx, rbx
	xor	r15d, r15d
	mov	r12d, 1
	test	rax, rax
	je	.label_310
.label_309:
	movsx	r13d, byte ptr [rcx]
	test	r13d, r13d
	je	.label_317
	mov	qword ptr [rsp + 0x10], rcx
	mov	rdi, r14
	mov	esi, r13d
	call	strchr
	test	rax, rax
	je	.label_301
	mov	ecx, 1
	mov	esi, 0x400
	lea	eax, [r13 - 0x45]
	cmp	eax, 0x2f
	ja	.label_304
	movabs	rdx, 0x814400308945
	bt	rdx, rax
	jae	.label_304
	mov	esi, 0x30
	mov	rdi, r14
	call	strchr
	mov	ecx, 1
	mov	esi, 0x400
	test	rax, rax
	je	.label_304
	mov	rax, qword ptr [rsp + 0x10]
	movsx	eax, byte ptr [rax + 1]
	mov	ecx, 1
	mov	esi, 0x400
	cmp	eax, 0x42
	je	.label_315
	cmp	eax, 0x44
	je	.label_315
	cmp	eax, 0x69
	jne	.label_304
	xor	eax, eax
	mov	rcx, qword ptr [rsp + 0x10]
	cmp	byte ptr [rcx + 2], 0x42
	sete	al
	lea	rcx, [rax + rax + 1]
	mov	esi, 0x400
	jmp	.label_304
.label_315:
	mov	ecx, 2
	mov	esi, 0x3e8
.label_304:
	add	r13d, -0x42
	cmp	r13d, 0x35
	ja	.label_301
	xor	eax, eax
	jmp	qword ptr [(r13 * 8) + label_311]
.label_556:
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
	jmp	.label_312
.label_301:
	mov	rax, qword ptr [rsp + 8]
	mov	qword ptr [rax], r12
	or	r15d, 2
	jmp	.label_298
.label_557:
	mov	rdi, -1
	mov	rax, -1
	xor	edx, edx
	div	rsi
	imul	rsi, r12
	cmp	rax, r12
	cmovb	rsi, rdi
	sbb	eax, eax
	jmp	.label_302
.label_558:
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
	jmp	.label_313
.label_560:
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
	jmp	.label_318
.label_554:
	xor	eax, eax
	mov	rdx, r12
	shr	rdx, 0x36
	setne	al
	shl	r12, 0xa
	jmp	.label_316
.label_555:
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
	jmp	.label_313
.label_559:
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
.label_318:
	or	dl, r10b
.label_312:
	or	dl, bl
.label_313:
	and	dl, 1
	movzx	eax, dl
	mov	r12, rsi
	jmp	.label_299
.label_561:
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
	jmp	.label_303
.label_562:
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
.label_303:
	movzx	eax, dl
.label_302:
	and	eax, 1
	mov	r12, rsi
	jmp	.label_299
.label_563:
	xor	eax, eax
	mov	rdx, r12
	shr	rdx, 0x37
	setne	al
	shl	r12, 9
.label_316:
	cmp	rdx, 1
	sbb	rdx, rdx
	not	rdx
	or	r12, rdx
	jmp	.label_299
.label_564:
	lea	rax, [r12 + r12]
	test	r12, r12
	mov	rdx, -1
	cmovns	rdx, rax
	shr	r12, 0x3f
	mov	eax, r12d
	mov	r12, rdx
.label_299:
	or	eax, r15d
	mov	rdi, qword ptr [rsp + 0x10]
	lea	rdx, [rdi + rcx]
	mov	rsi, qword ptr [rsp + 0x18]
	mov	qword ptr [rsi], rdx
	lea	r15d, [rax + 2]
	cmp	byte ptr [rdi + rcx], 0
	cmove	r15d, eax
.label_317:
	mov	rax, qword ptr [rsp + 8]
	mov	qword ptr [rax], r12
.label_298:
	mov	r13d, r15d
.label_310:
	mov	eax, r13d
	add	rsp, 0x28
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_297:
	mov	edi, OFFSET FLAT:label_305
	mov	esi, OFFSET FLAT:label_306
	mov	edx, 0x54
	mov	ecx, OFFSET FLAT:label_307
	call	__assert_fail
	.section	.text
	.align	16
	#Procedure 0x4042b1
	.globl sub_4042b1
	.type sub_4042b1, @function
sub_4042b1:

	nop	word ptr cs:[rax + rax]
.label_319:
	call	xalloc_die
	.section	.text
	.align	16
	#Procedure 0x4042c5
	.globl sub_4042c5
	.type sub_4042c5, @function
sub_4042c5:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4042cf
	.globl xcalloc
	.type xcalloc, @function
xcalloc:

	push	rax
	movabs	rax, 0x7fffffffffffffff
	xor	edx, edx
	div	rsi
	cmp	rax, rdi
	jb	.label_319
	call	rpl_calloc
	test	rax, rax
	je	.label_319
	pop	rcx
	ret	
	.section	.text
	.align	16
	#Procedure 0x4042f0
	.globl quotearg_colon_mem
	.type quotearg_colon_mem, @function
quotearg_colon_mem:

	sub	rsp, 0x38
	mov	rax, rsi
	mov	rdx, rdi
	mov	rcx, qword ptr [rip + label_54]
	mov	qword ptr [rsp + 0x30], rcx
	movups	xmm0, xmmword ptr [rip + label_55]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0, xmmword ptr [rip + label_56]
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
	#Procedure 0x404344
	.globl sub_404344
	.type sub_404344, @function
sub_404344:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404350

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
	je	.label_320
	cmp	r15, -2
	jb	.label_320
	xor	edi, edi
	call	hard_locale
	test	al, al
	jne	.label_320
	movzx	eax, byte ptr [r14]
	mov	dword ptr [rbx], eax
	mov	r15d, 1
.label_320:
	mov	rax, r15
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	ret	
	.section	.text
	.align	16
	#Procedure 0x4043a6
	.globl sub_4043a6
	.type sub_4043a6, @function
sub_4043a6:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4043b0
	.globl emit_bug_reporting_address
	.type emit_bug_reporting_address, @function
emit_bug_reporting_address:

	push	rax
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_321
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:label_322
	xor	eax, eax
	mov	rsi, rcx
	call	__printf_chk
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_324
	mov	edx, 5
	call	dcgettext
	mov	rsi, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:label_325
	mov	ecx, OFFSET FLAT:label_326
	xor	eax, eax
	call	__printf_chk
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_323
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	pop	rax
	jmp	fputs_unlocked
	.section	.text
	.align	16
	#Procedure 0x404424
	.globl sub_404424
	.type sub_404424, @function
sub_404424:

	nop	word ptr cs:[rax + rax]
.label_327:
	call	abort
	.section	.text
	.align	16
	#Procedure 0x404435
	.globl quotearg_custom
	.type quotearg_custom, @function
quotearg_custom:

	sub	rsp, 0x38
	mov	rax, rdx
	mov	rcx, qword ptr [rip + label_54]
	mov	qword ptr [rsp + 0x30], rcx
	movups	xmm0, xmmword ptr [rip + label_55]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0, xmmword ptr [rip + label_56]
	movaps	xmmword ptr [rsp + 0x10], xmm0
	movups	xmm0, xmmword ptr [rip + default_quoting_options]
	movaps	xmmword ptr [rsp], xmm0
	mov	dword ptr [rsp], 0xa
	test	rdi, rdi
	je	.label_327
	test	rsi, rsi
	je	.label_327
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
	#Procedure 0x4044a0
	.globl quotearg_n
	.type quotearg_n, @function
quotearg_n:

	mov	rdx, -1
	mov	ecx, OFFSET FLAT:default_quoting_options
	jmp	quotearg_n_options
	.section	.text
	.align	16
	#Procedure 0x4044ae
	.globl sub_4044ae
	.type sub_4044ae, @function
sub_4044ae:

	nop	
	.section	.text
	.align	16
	#Procedure 0x4044b0

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
	js	.label_331
	mov	eax, dword ptr [r13]
	mov	rbp, qword ptr [rip + slotvec]
	cmp	dword ptr [rip + nslots],  r12d
	mov	qword ptr [rsp + 0x18], r13
	mov	dword ptr [rsp], eax
	mov	qword ptr [rsp + 0x10], rbx
	mov	qword ptr [rsp + 8], r15
	jg	.label_334
	cmp	r12d, 0x7fffffff
	je	.label_329
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
	jne	.label_332
	movups	xmm0, xmmword ptr [rip + slotvec0]
	movups	xmmword ptr [r14], xmm0
.label_332:
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
.label_334:
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
	jbe	.label_330
	mov	rax, qword ptr [rsp + 0x18]
	mov	ebp, dword ptr [rsp]
	jmp	.label_333
.label_330:
	lea	rax, [rbp + r13]
	lea	r12, [rbp + r13 + 8]
	inc	r15
	mov	qword ptr [rax], r15
	mov	eax, OFFSET FLAT:slot0
	cmp	r14, rax
	mov	ebp, dword ptr [rsp]
	je	.label_328
	mov	rdi, r14
	call	free
.label_328:
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
.label_333:
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
.label_331:
	call	abort
.label_329:
	call	xalloc_die
	.section	.text
	.align	16
	#Procedure 0x40466d
	.globl sub_40466d
	.type sub_40466d, @function
sub_40466d:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x404670

	.globl version_etc
	.type version_etc, @function
version_etc:
	sub	rsp, 0xd8
	test	al, al
	je	.label_335
	movaps	xmmword ptr [rsp + 0x50], xmm0
	movaps	xmmword ptr [rsp + 0x60], xmm1
	movaps	xmmword ptr [rsp + 0x70], xmm2
	movaps	xmmword ptr [rsp + 0x80], xmm3
	movaps	xmmword ptr [rsp + 0x90], xmm4
	movaps	xmmword ptr [rsp + 0xa0], xmm5
	movaps	xmmword ptr [rsp + 0xb0], xmm6
	movaps	xmmword ptr [rsp + 0xc0], xmm7
.label_335:
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
	#Procedure 0x4046f3
	.globl sub_4046f3
	.type sub_4046f3, @function
sub_4046f3:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404700

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
	#Procedure 0x404723
	.globl sub_404723
	.type sub_404723, @function
sub_404723:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404730

	.globl fadvise
	.type fadvise, @function
fadvise:
	push	rbx
	mov	ebx, esi
	test	rdi, rdi
	je	.label_336
	call	fileno
	xor	esi, esi
	xor	edx, edx
	mov	edi, eax
	mov	ecx, ebx
	pop	rbx
	jmp	posix_fadvise
.label_336:
	pop	rbx
	ret	
	.section	.text
	.align	16
	#Procedure 0x40474d
	.globl sub_40474d
	.type sub_40474d, @function
sub_40474d:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x404750
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
	#Procedure 0x40475f
	.globl sub_40475f
	.type sub_40475f, @function
sub_40475f:

	nop	
	.section	.text
	.align	16
	#Procedure 0x404760
	.globl close_stdout_set_ignore_EPIPE
	.type close_stdout_set_ignore_EPIPE, @function
close_stdout_set_ignore_EPIPE:

	mov	byte ptr [rip + ignore_EPIPE],  dil
	ret	
	.section	.text
	.align	16
	#Procedure 0x404768
	.globl sub_404768
	.type sub_404768, @function
sub_404768:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404770

	.globl close_stdout
	.type close_stdout, @function
close_stdout:
	push	rbp
	push	rbx
	push	rax
	mov	rdi, qword ptr [rip + stdout]
	call	close_stream
	test	eax, eax
	je	.label_342
	mov	bl, byte ptr [rip + ignore_EPIPE]
	call	__errno_location
	mov	rbp, rax
	cmp	bl, 0
	je	.label_339
	cmp	dword ptr [rbp], 0x20
	jne	.label_339
.label_342:
	mov	rdi, qword ptr [rip + stderr]
	call	close_stream
	test	eax, eax
	jne	.label_338
	add	rsp, 8
	pop	rbx
	pop	rbp
	ret	
.label_337:
	call	quotearg_colon
	mov	rcx, rax
	xor	edi, edi
	mov	edx, OFFSET FLAT:label_217
	xor	eax, eax
	mov	esi, ebp
	mov	r8, rbx
	call	error
	mov	edi, dword ptr [rip + exit_failure]
	call	_exit
	nop	dword ptr [rax]
	nop	dword ptr [rax + rax]
.label_338:
	mov	edi, dword ptr [rip + exit_failure]
	call	_exit
.label_339:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_340
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
	mov	rdi, qword ptr [rip + file_name]
	test	rdi, rdi
	mov	ebp, dword ptr [rbp]
	jne	.label_337
	xor	edi, edi
	mov	edx, OFFSET FLAT:label_341
	xor	eax, eax
	mov	esi, ebp
	mov	rcx, rbx
	call	error
	mov	edi, dword ptr [rip + exit_failure]
	call	_exit
.label_344:
	mov	ecx, 1
.label_343:
	mov	rdi, rcx
	mov	rsi, rax
	jmp	calloc
	.section	.text
	.align	16
	#Procedure 0x404840
	.globl sub_404840
	.type sub_404840, @function
sub_404840:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404845

	.globl rpl_calloc
	.type rpl_calloc, @function
rpl_calloc:
	test	rdi, rdi
	mov	eax, 1
	je	.label_344
	test	rsi, rsi
	mov	ecx, 1
	je	.label_343
	mov	rax, rsi
	imul	rax, rdi
	xor	edx, edx
	div	rsi
	cmp	rax, rdi
	mov	rax, rsi
	mov	rcx, rdi
	je	.label_343
	push	rax
	call	__errno_location
	mov	dword ptr [rax], 0xc
	xor	eax, eax
	pop	rcx
	ret	
	.section	.text
	.align	16
	#Procedure 0x404880
	.globl quotearg_custom_mem
	.type quotearg_custom_mem, @function
quotearg_custom_mem:

	sub	rsp, 0x38
	mov	rax, qword ptr [rip + label_54]
	mov	qword ptr [rsp + 0x30], rax
	movups	xmm0, xmmword ptr [rip + label_55]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0, xmmword ptr [rip + label_56]
	movaps	xmmword ptr [rsp + 0x10], xmm0
	movups	xmm0, xmmword ptr [rip + default_quoting_options]
	movaps	xmmword ptr [rsp], xmm0
	mov	dword ptr [rsp], 0xa
	test	rdi, rdi
	je	.label_345
	test	rsi, rsi
	je	.label_345
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
.label_345:
	call	abort
	.section	.text
	.align	16
	#Procedure 0x4048ec
	.globl sub_4048ec
	.type sub_4048ec, @function
sub_4048ec:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x4048f0
	.globl fdadvise
	.type fdadvise, @function
fdadvise:

	jmp	posix_fadvise
	.section	.text
	.align	16
	#Procedure 0x4048f5
	.globl sub_4048f5
	.type sub_4048f5, @function
sub_4048f5:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404900

	.globl put_line
	.type put_line, @function
put_line:
	push	rbp
	push	r15
	push	r14
	push	rbx
	push	rax
	mov	r14d, esi
	mov	r15, rdi
	mov	dword ptr [rip + out_column],  0
	mov	ebp, dword ptr [rip + prefix_indent]
	xor	eax, eax
	cmp	byte ptr [rip + tabs],  1
	jne	.label_346
	cmp	ebp, 8
	jl	.label_346
	mov	ebx, ebp
	sar	ebx, 0x1f
	shr	ebx, 0x1d
	add	ebx, ebp
	and	ebx, 0xfffffff8
	cmp	ebx, 2
	jl	.label_346
	xor	ecx, ecx
	jmp	.label_366
.label_372:
	mov	esi, 9
	call	__overflow
	mov	ecx, dword ptr [rip + out_column]
	jmp	.label_369
	.section	.text
	.align	16
	#Procedure 0x404959
	.globl sub_404959
	.type sub_404959, @function
sub_404959:

	nop	dword ptr [rax]
.label_366:
	mov	rdi, qword ptr [rip + stdout]
	mov	rax, qword ptr [rdi + 0x28]
	cmp	rax, qword ptr [rdi + 0x30]
	jae	.label_372
	lea	rdx, [rax + 1]
	mov	qword ptr [rdi + 0x28], rdx
	mov	byte ptr [rax], 9
.label_369:
	mov	eax, ecx
	sar	eax, 0x1f
	shr	eax, 0x1d
	add	eax, ecx
	and	eax, 0xfffffff8
	add	eax, 8
	mov	dword ptr [rip + out_column],  eax
	cmp	eax, ebx
	mov	ecx, eax
	jl	.label_366
	jmp	.label_346
	.section	.text
	.align	16
	#Procedure 0x40499a
	.globl sub_40499a
	.type sub_40499a, @function
sub_40499a:

	nop	word ptr [rax + rax]
.label_364:
	inc	eax
	mov	dword ptr [rip + out_column],  eax
.label_346:
	cmp	eax, ebp
	jge	.label_348
	mov	rdi, qword ptr [rip + stdout]
	mov	rcx, qword ptr [rdi + 0x28]
	cmp	rcx, qword ptr [rdi + 0x30]
	jae	.label_359
	lea	rdx, [rcx + 1]
	mov	qword ptr [rdi + 0x28], rdx
	mov	byte ptr [rcx], 0x20
	jmp	.label_364
.label_359:
	mov	esi, 0x20
	call	__overflow
	mov	eax, dword ptr [rip + out_column]
	jmp	.label_364
.label_348:
	mov	rdi, qword ptr [rip + prefix]
	mov	rsi, qword ptr [rip + stdout]
	call	fputs_unlocked
	mov	ecx, dword ptr [rip + out_column]
	add	ecx, dword ptr [rip + prefix_length]
	mov	dword ptr [rip + out_column],  ecx
	cmp	byte ptr [rip + tabs],  1
	jne	.label_376
	mov	ebp, r14d
	sar	ebp, 0x1f
	shr	ebp, 0x1d
	add	ebp, r14d
	and	ebp, 0xfffffff8
	cmp	ecx, ebp
	jge	.label_351
	lea	eax, [rcx + 1]
	cmp	eax, ebp
	jl	.label_361
	mov	eax, ecx
	jmp	.label_350
.label_376:
	mov	eax, ecx
	jmp	.label_350
.label_351:
	mov	eax, ecx
	jmp	.label_350
.label_368:
	mov	esi, 9
	call	__overflow
	mov	ecx, dword ptr [rip + out_column]
	jmp	.label_371
	.section	.text
	.align	16
	#Procedure 0x404a42
	.globl sub_404a42
	.type sub_404a42, @function
sub_404a42:

	nop	word ptr cs:[rax + rax]
.label_361:
	mov	rdi, qword ptr [rip + stdout]
	mov	rax, qword ptr [rdi + 0x28]
	cmp	rax, qword ptr [rdi + 0x30]
	jae	.label_368
	lea	rdx, [rax + 1]
	mov	qword ptr [rdi + 0x28], rdx
	mov	byte ptr [rax], 9
.label_371:
	mov	eax, ecx
	sar	eax, 0x1f
	shr	eax, 0x1d
	add	eax, ecx
	and	eax, 0xfffffff8
	add	eax, 8
	mov	dword ptr [rip + out_column],  eax
	cmp	eax, ebp
	mov	ecx, eax
	jl	.label_361
	jmp	.label_350
	.section	.text
	.align	16
	#Procedure 0x404a8a
	.globl sub_404a8a
	.type sub_404a8a, @function
sub_404a8a:

	nop	word ptr [rax + rax]
.label_360:
	inc	eax
	mov	dword ptr [rip + out_column],  eax
.label_350:
	cmp	eax, r14d
	jge	.label_355
	mov	rdi, qword ptr [rip + stdout]
	mov	rcx, qword ptr [rdi + 0x28]
	cmp	rcx, qword ptr [rdi + 0x30]
	jae	.label_356
	lea	rdx, [rcx + 1]
	mov	qword ptr [rdi + 0x28], rdx
	mov	byte ptr [rcx], 0x20
	jmp	.label_360
.label_356:
	mov	esi, 0x20
	call	__overflow
	mov	eax, dword ptr [rip + out_column]
	jmp	.label_360
.label_355:
	mov	r14, qword ptr [r15 + 0x20]
	add	r14, -0x28
	jmp	.label_367
	.section	.text
	.align	16
	#Procedure 0x404ad7
	.globl sub_404ad7
	.type sub_404ad7, @function
sub_404ad7:

	nop	word ptr [rax + rax]
.label_375:
	add	r15, 0x28
	mov	eax, ecx
.label_367:
	mov	rbp, qword ptr [r15 + 8]
	xor	ecx, ecx
	test	ebp, ebp
	je	.label_374
	mov	rbx, qword ptr [r15]
	neg	ebp
	jmp	.label_354
.label_352:
	movzx	esi, al
	call	__overflow
	jmp	.label_377
	.section	.text
	.align	16
	#Procedure 0x404b01
	.globl sub_404b01
	.type sub_404b01, @function
sub_404b01:

	nop	word ptr cs:[rax + rax]
.label_354:
	movzx	eax, byte ptr [rbx]
	mov	rdi, qword ptr [rip + stdout]
	mov	rcx, qword ptr [rdi + 0x28]
	cmp	rcx, qword ptr [rdi + 0x30]
	jae	.label_352
	lea	rdx, [rcx + 1]
	mov	qword ptr [rdi + 0x28], rdx
	mov	byte ptr [rcx], al
.label_377:
	inc	rbx
	inc	ebp
	jne	.label_354
	mov	rbp, qword ptr [r15 + 8]
	mov	eax, dword ptr [rip + out_column]
	mov	ecx, ebp
.label_374:
	add	eax, ecx
	cmp	r15, r14
	mov	dword ptr [rip + out_column],  eax
	je	.label_349
	shr	rbp, 0x20
	add	ebp, eax
	cmp	byte ptr [rip + tabs],  1
	jne	.label_370
	mov	ebx, ebp
	sar	ebx, 0x1f
	shr	ebx, 0x1d
	add	ebx, ebp
	and	ebx, 0xfffffff8
	lea	ecx, [rax + 1]
	cmp	ecx, ebx
	jge	.label_373
	cmp	eax, ebx
	jl	.label_363
	mov	ecx, eax
	jmp	.label_347
	.section	.text
	.align	16
	#Procedure 0x404b7d
	.globl sub_404b7d
	.type sub_404b7d, @function
sub_404b7d:

	nop	dword ptr [rax]
.label_370:
	mov	ecx, eax
	jmp	.label_347
.label_373:
	mov	ecx, eax
	jmp	.label_347
.label_358:
	mov	esi, 9
	call	__overflow
	mov	eax, dword ptr [rip + out_column]
	jmp	.label_353
	.section	.text
	.align	16
	#Procedure 0x404b9a
	.globl sub_404b9a
	.type sub_404b9a, @function
sub_404b9a:

	nop	word ptr [rax + rax]
.label_363:
	mov	rdi, qword ptr [rip + stdout]
	mov	rcx, qword ptr [rdi + 0x28]
	cmp	rcx, qword ptr [rdi + 0x30]
	jae	.label_358
	lea	rdx, [rcx + 1]
	mov	qword ptr [rdi + 0x28], rdx
	mov	byte ptr [rcx], 9
.label_353:
	mov	ecx, eax
	sar	ecx, 0x1f
	shr	ecx, 0x1d
	add	ecx, eax
	and	ecx, 0xfffffff8
	add	ecx, 8
	mov	dword ptr [rip + out_column],  ecx
	cmp	ecx, ebx
	mov	eax, ecx
	jl	.label_363
	jmp	.label_347
	.section	.text
	.align	16
	#Procedure 0x404bda
	.globl sub_404bda
	.type sub_404bda, @function
sub_404bda:

	nop	word ptr [rax + rax]
.label_362:
	inc	ecx
	mov	dword ptr [rip + out_column],  ecx
.label_347:
	cmp	ecx, ebp
	jge	.label_375
	mov	rdi, qword ptr [rip + stdout]
	mov	rax, qword ptr [rdi + 0x28]
	cmp	rax, qword ptr [rdi + 0x30]
	jae	.label_357
	lea	rdx, [rax + 1]
	mov	qword ptr [rdi + 0x28], rdx
	mov	byte ptr [rax], 0x20
	jmp	.label_362
.label_357:
	mov	esi, 0x20
	call	__overflow
	mov	ecx, dword ptr [rip + out_column]
	jmp	.label_362
.label_349:
	mov	dword ptr [rip + last_line_length],  eax
	mov	rdi, qword ptr [rip + stdout]
	mov	rax, qword ptr [rdi + 0x28]
	cmp	rax, qword ptr [rdi + 0x30]
	jae	.label_365
	lea	rcx, [rax + 1]
	mov	qword ptr [rdi + 0x28], rcx
	mov	byte ptr [rax], 0xa
	add	rsp, 8
	pop	rbx
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_365:
	mov	esi, 0xa
	add	rsp, 8
	pop	rbx
	pop	r14
	pop	r15
	pop	rbp
	jmp	__overflow
	.section	.text
	.align	16
	#Procedure 0x404c61
	.globl sub_404c61
	.type sub_404c61, @function
sub_404c61:

	nop	dword ptr [rax]
	nop	word ptr cs:[rax + rax]
.label_380:
	mov	rsi, rbx
	call	realloc
	test	rbx, rbx
	je	.label_378
	test	rax, rax
	je	.label_379
.label_378:
	pop	rbx
	ret	
.label_379:
	call	xalloc_die
	.section	.text
	.align	16
	#Procedure 0x404c89
	.globl sub_404c89
	.type sub_404c89, @function
sub_404c89:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404c91
	.globl xnrealloc
	.type xnrealloc, @function
xnrealloc:

	push	rbx
	mov	rbx, rdx
	movabs	rax, 0x7fffffffffffffff
	xor	edx, edx
	div	rbx
	cmp	rax, rsi
	jb	.label_379
	imul	rbx, rsi
	test	rdi, rdi
	je	.label_380
	test	rbx, rbx
	jne	.label_380
	call	free
	xor	eax, eax
	pop	rbx
	ret	
	.section	.text
	.align	16
	#Procedure 0x404cc0

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
	jne	.label_381
	mov	rax, qword ptr [rbx + 0x28]
	cmp	rax, qword ptr [rbx + 0x20]
	jne	.label_381
	cmp	qword ptr [rbx + 0x48], 0
	je	.label_382
.label_381:
	mov	rdi, rbx
	mov	rsi, rbp
	mov	edx, r14d
	pop	rbx
	pop	r14
	pop	rbp
	jmp	fseeko
.label_382:
	mov	rdi, rbx
	call	fileno
	mov	edi, eax
	mov	rsi, rbp
	mov	edx, r14d
	call	lseek
	mov	rcx, rax
	mov	eax, 0xffffffff
	cmp	rcx, -1
	je	.label_383
	and	byte ptr [rbx], 0xef
	mov	qword ptr [rbx + 0x90], rcx
	xor	eax, eax
.label_383:
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x404d2e
	.globl sub_404d2e
	.type sub_404d2e, @function
sub_404d2e:

	nop	
	.section	.text
	.align	16
	#Procedure 0x404d30
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
	#Procedure 0x404d49
	.globl sub_404d49
	.type sub_404d49, @function
sub_404d49:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x404d50
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
	#Procedure 0x404d68
	.globl sub_404d68
	.type sub_404d68, @function
sub_404d68:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404d70
	.globl version_etc_ar
	.type version_etc_ar, @function
version_etc_ar:

	mov	r9, -1
	nop	word ptr [rax + rax]
.label_384:
	cmp	qword ptr [r8 + r9*8 + 8], 0
	lea	r9, [r9 + 1]
	jne	.label_384
	jmp	version_etc_arn
	.section	.text
	.align	16
	#Procedure 0x404d91
	.globl sub_404d91
	.type sub_404d91, @function
sub_404d91:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404da0
	.globl quotearg_n_mem
	.type quotearg_n_mem, @function
quotearg_n_mem:

	mov	ecx, OFFSET FLAT:default_quoting_options
	jmp	quotearg_n_options
	.section	.text
	.align	16
	#Procedure 0x404daa
	.globl sub_404daa
	.type sub_404daa, @function
sub_404daa:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404db0

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
	je	.label_401
	mov	edx, OFFSET FLAT:label_390
	xor	eax, eax
	mov	rdi, r14
	mov	r8, rbx
	call	__fprintf_chk
	jmp	.label_398
.label_401:
	mov	edx, OFFSET FLAT:label_399
	xor	eax, eax
	mov	rdi, r14
	mov	rcx, rbx
	mov	r8, r9
	call	__fprintf_chk
.label_398:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_403
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
	mov	esi, OFFSET FLAT:label_400
	mov	edx, 5
	call	dcgettext
	mov	rdi, rax
	mov	rsi, r14
	call	fputs_unlocked
	cmp	r12, 9
	ja	.label_386
	jmp	qword ptr [(r12 * 8) + label_387]
.label_531:
	add	rsp, 8
	jmp	.label_385
.label_386:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_395
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
	jmp	.label_385
.label_532:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_396
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
.label_533:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_394
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
.label_534:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_392
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
.label_535:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_388
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
	jmp	.label_385
.label_536:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_391
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
	jmp	.label_385
.label_537:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_389
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
	jmp	.label_385
.label_538:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_393
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
	jmp	.label_385
.label_540:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_397
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
	jmp	.label_385
.label_539:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_402
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
.label_385:
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	ret	
	.section	.text
	.align	16
	#Procedure 0x405108
	.globl sub_405108
	.type sub_405108, @function
sub_405108:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x405110

	.globl xalloc_die
	.type xalloc_die, @function
xalloc_die:
	push	rbx
	mov	ebx, dword ptr [rip + exit_failure]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_404
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	xor	esi, esi
	mov	edx, OFFSET FLAT:label_341
	xor	eax, eax
	mov	edi, ebx
	call	error
	call	abort
.label_422:
	mov	rbx, qword ptr [rip + stderr]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_405
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
	#Procedure 0x405178
	.globl sub_405178
	.type sub_405178, @function
sub_405178:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40517d

	.globl usage
	.type usage, @function
usage:
	push	rbp
	push	rbx
	push	rax
	mov	ebp, edi
	test	ebp, ebp
	jne	.label_422
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_409
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	mov	rdx, qword ptr [rip + program_name]
	mov	edi, 1
	xor	eax, eax
	mov	rsi, rcx
	call	__printf_chk
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_413
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_411
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_419
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_421
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_418
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_415
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_417
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_416
	mov	edx, 5
	call	dcgettext
	mov	rsi, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:label_325
	mov	ecx, OFFSET FLAT:label_326
	xor	eax, eax
	call	__printf_chk
	mov	edi, 5
	xor	esi, esi
	call	setlocale
	test	rax, rax
	je	.label_408
	mov	esi, OFFSET FLAT:label_410
	mov	edx, 3
	mov	rdi, rax
	call	strncmp
	test	eax, eax
	je	.label_408
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_420
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	call	fputs_unlocked
.label_408:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_412
	mov	edx, 5
	call	dcgettext
	mov	rsi, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:label_326
	mov	ecx, OFFSET FLAT:label_406
	xor	eax, eax
	call	__printf_chk
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_414
	mov	edx, 5
	call	dcgettext
	mov	rsi, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:label_406
	mov	ecx, OFFSET FLAT:label_407
	xor	eax, eax
	call	__printf_chk
	mov	edi, ebp
	call	exit
	.section	.text
	.align	16
	#Procedure 0x405360

	.globl flush_paragraph
	.type flush_paragraph, @function
flush_paragraph:
	push	r15
	push	r14
	push	rbx
	mov	rbx, qword ptr [rip + word_limit]
	mov	eax, OFFSET FLAT:unused_word_type
	cmp	rbx, rax
	je	.label_423
	call	fmt_paragraph
	mov	rsi, qword ptr [rip + label_247]
	cmp	rsi, rbx
	je	.label_431
	movabs	r8, 0x7ffffffffffffff7
	mov	rcx, qword ptr [rsi + 0x18]
	lea	rdx, [r8 + 8]
	mov	r14, rbx
	nop	dword ptr [rax]
.label_424:
	mov	rdi, qword ptr [rsi + 0x20]
	mov	rax, qword ptr [rdi + 0x18]
	sub	rcx, rax
	cmp	rcx, rdx
	cmovl	r14, rsi
	cmovg	rcx, rdx
	lea	rdx, [rcx + 9]
	cmp	rcx, r8
	cmovge	rdx, rcx
	cmp	rdi, rbx
	mov	rcx, rax
	mov	rsi, rdi
	jne	.label_424
	jmp	.label_428
.label_423:
	mov	rdx, qword ptr [rip + wptr]
	mov	eax, OFFSET FLAT:parabuf
	sub	rdx, rax
	mov	rcx, qword ptr [rip + stdout]
	mov	edi, OFFSET FLAT:parabuf
	mov	esi, 1
	call	fwrite_unlocked
	mov	qword ptr [rip + wptr], OFFSET FLAT:parabuf
	jmp	.label_430
.label_431:
	mov	r14, rbx
.label_428:
	mov	esi, dword ptr [rip + first_indent]
	mov	edi, OFFSET FLAT:unused_word_type
	call	put_line
	mov	rbx, qword ptr [rip + label_247]
	jmp	.label_425
	.section	.text
	.align	16
	#Procedure 0x40541f
	.globl sub_40541f
	.type sub_40541f, @function
sub_40541f:

	nop	
.label_429:
	mov	esi, dword ptr [rip + other_indent]
	mov	rdi, rbx
	call	put_line
	mov	rbx, qword ptr [rbx + 0x20]
.label_425:
	cmp	rbx, r14
	jne	.label_429
	mov	rsi, qword ptr [r14]
	mov	rbx, qword ptr [rip + wptr]
	mov	rdx, rbx
	sub	rdx, rsi
	mov	r15d, OFFSET FLAT:parabuf
	mov	edi, OFFSET FLAT:parabuf
	call	memmove
	mov	eax, dword ptr [r14]
	sub	eax, r15d
	cdqe	
	sub	rbx, rax
	mov	qword ptr [rip + wptr],  rbx
	mov	rbx, qword ptr [rip + word_limit]
	cmp	r14, rbx
	ja	.label_427
	neg	rax
	mov	rcx, r14
	nop	dword ptr [rax + rax]
.label_426:
	add	qword ptr [rcx], rax
	add	rcx, 0x28
	mov	rbx, qword ptr [rip + word_limit]
	cmp	rcx, rbx
	jbe	.label_426
.label_427:
	mov	edx, 0x28
	sub	rdx, r14
	add	rdx, rbx
	mov	r15d, OFFSET FLAT:unused_word_type
	mov	edi, OFFSET FLAT:unused_word_type
	mov	rsi, r14
	call	memmove
	sub	r14, r15
	movabs	rcx, 0x9999999999999999
	mov	rax, r14
	imul	rcx
	mov	rax, rdx
	shr	rax, 0x3f
	sar	rdx, 4
	add	rdx, rax
	lea	rax, [rdx + rdx*4]
	lea	rax, [rbx + rax*8]
	mov	qword ptr [rip + word_limit],  rax
.label_430:
	pop	rbx
	pop	r14
	pop	r15
	ret	
	.section	.text
	.align	16
	#Procedure 0x4054e7
	.globl sub_4054e7
	.type sub_4054e7, @function
sub_4054e7:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4054f0

	.globl quotearg_colon
	.type quotearg_colon, @function
quotearg_colon:
	sub	rsp, 0x38
	mov	rax, rdi
	mov	rcx, qword ptr [rip + label_54]
	mov	qword ptr [rsp + 0x30], rcx
	movups	xmm0, xmmword ptr [rip + label_55]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0, xmmword ptr [rip + label_56]
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
	#Procedure 0x405545
	.globl sub_405545
	.type sub_405545, @function
sub_405545:

	nop	word ptr cs:[rax + rax]
.label_432:
	call	abort
	.section	.text
	.align	16
	#Procedure 0x405555
	.globl sub_405555
	.type sub_405555, @function
sub_405555:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x405564
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
	je	.label_432
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
	#Procedure 0x4055c0
	.globl quote_n_mem
	.type quote_n_mem, @function
quote_n_mem:

	mov	ecx, OFFSET FLAT:quote_quoting_options
	jmp	quotearg_n_options
	.section	.text
	.align	16
	#Procedure 0x4055ca
	.globl sub_4055ca
	.type sub_4055ca, @function
sub_4055ca:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4055d0
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
	je	.label_433
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
.label_433:
	call	abort
	.section	.text
	.align	16
	#Procedure 0x405638
	.globl sub_405638
	.type sub_405638, @function
sub_405638:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x405640

	.globl get_line
	.type get_line, @function
get_line:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x18
	mov	r13d, esi
	mov	r14, rdi
	mov	rax, qword ptr [rip + word_limit]
	mov	r15d, OFFSET FLAT:wptr
	nop	word ptr cs:[rax + rax]
.label_461:
	mov	rcx, qword ptr [rip + wptr]
	mov	qword ptr [rax], rcx
	nop	word ptr [rax + rax]
.label_455:
	mov	rax, qword ptr [rip + wptr]
	cmp	rax, r15
	jne	.label_434
	cmp	byte ptr [rip + split],  1
	je	.label_438
	cmp	byte ptr [rip + crown],  1
	jne	.label_439
	mov	eax, dword ptr [rip + in_column]
	jmp	.label_443
.label_439:
	cmp	byte ptr [rip + tagged],  1
	jne	.label_438
	mov	eax, dword ptr [rip + in_column]
	cmp	eax, dword ptr [rip + first_indent]
	jne	.label_443
	cmp	dword ptr [rip + other_indent],  eax
	jne	.label_462
	xor	ecx, ecx
	test	eax, eax
	sete	cl
	lea	eax, [rcx + rcx*2]
	jmp	.label_443
	.section	.text
	.align	16
	#Procedure 0x4056d1
	.globl sub_4056d1
	.type sub_4056d1, @function
sub_4056d1:

	nop	word ptr cs:[rax + rax]
.label_438:
	mov	eax, dword ptr [rip + first_indent]
.label_443:
	mov	dword ptr [rip + other_indent],  eax
.label_462:
	call	flush_paragraph
	mov	rax, qword ptr [rip + wptr]
.label_434:
	lea	rcx, [rax + 1]
	mov	qword ptr [rip + wptr],  rcx
	mov	byte ptr [rax], r13b
	mov	rax, qword ptr [r14 + 8]
	cmp	rax, qword ptr [r14 + 0x10]
	jae	.label_463
	lea	rcx, [rax + 1]
	mov	qword ptr [r14 + 8], rcx
	movzx	r13d, byte ptr [rax]
.label_453:
	movsxd	rbp, r13d
	call	__ctype_b_loc
	mov	rbx, rax
	mov	rax, qword ptr [rbx]
	test	byte ptr [rax + rbp*2 + 1], 0x20
	je	.label_455
	jmp	.label_449
.label_463:
	mov	rdi, r14
	call	__uflow
	mov	r13d, eax
	cmp	r13d, -1
	jne	.label_453
	mov	r13d, 0xffffffff
	call	__ctype_b_loc
	mov	rbx, rax
	nop	word ptr cs:[rax + rax]
.label_449:
	mov	rcx, qword ptr [rip + wptr]
	mov	rax, qword ptr [rip + word_limit]
	mov	rbp, qword ptr [rax]
	sub	rcx, rbp
	mov	qword ptr [rsp + 0x10], rcx
	mov	dword ptr [rax + 8], ecx
	mov	r15, rax
	mov	eax, dword ptr [rip + in_column]
	add	eax, ecx
	mov	dword ptr [rsp + 4], eax
	mov	dword ptr [rip + in_column],  eax
	mov	rax, rcx
	shl	rax, 0x20
	movabs	rcx, 0xffffffff00000000
	add	rax, rcx
	sar	rax, 0x20
	lea	r12, [rbp + rax]
	movsx	esi, byte ptr [rbp]
	movzx	eax, byte ptr [rbp + rax]
	mov	qword ptr [rsp + 8], rax
	mov	edi, OFFSET FLAT:label_454
	mov	edx, 6
	call	memchr
	test	rax, rax
	setne	al
	mov	rcx, r15
	mov	r15b, byte ptr [rcx + 0x10]
	and	r15b, 0xfe
	or	r15b, al
	mov	byte ptr [rcx + 0x10], r15b
	mov	rax, qword ptr [rbx]
	mov	rdx, qword ptr [rsp + 8]
	mov	al, byte ptr [rax + rdx*2]
	and	al, 4
	and	r15b, 0xfb
	or	r15b, al
	mov	rbx, rcx
	mov	byte ptr [rcx + 0x10], r15b
	mov	rax, qword ptr [rsp + 0x10]
	cmp	eax, 2
	jl	.label_445
	nop	dword ptr [rax + rax]
.label_446:
	movsx	esi, byte ptr [r12]
	mov	edi, OFFSET FLAT:label_459
	mov	edx, 5
	call	memchr
	test	rax, rax
	je	.label_445
	dec	r12
	cmp	rbp, r12
	jb	.label_446
.label_445:
	movsx	rax, byte ptr [r12]
	mov	eax, eax
	cmp	rax, 0x40
	sbb	cl, cl
	movabs	rdx, 0x8000400200000001
	bt	rdx, rax
	sbb	al, al
	and	al, cl
	and	al, 1
	add	al, al
	and	r15b, 0xfd
	or	r15b, al
	mov	byte ptr [rbx + 0x10], r15b
	mov	r15d, OFFSET FLAT:wptr
	jmp	.label_448
	.section	.text
	.align	16
	#Procedure 0x405867
	.globl sub_405867
	.type sub_405867, @function
sub_405867:

	nop	word ptr [rax + rax]
.label_452:
	lea	rcx, [rax + 1]
	mov	qword ptr [r14 + 8], rcx
	movzx	r13d, byte ptr [rax]
.label_448:
	cmp	r13d, 9
	je	.label_464
	cmp	r13d, 0x20
	jne	.label_435
	mov	eax, dword ptr [rip + in_column]
	inc	eax
	jmp	.label_451
	.section	.text
	.align	16
	#Procedure 0x405892
	.globl sub_405892
	.type sub_405892, @function
sub_405892:

	nop	word ptr cs:[rax + rax]
.label_464:
	mov	byte ptr [rip + tabs],  1
	mov	ecx, dword ptr [rip + in_column]
	mov	eax, ecx
	sar	eax, 0x1f
	shr	eax, 0x1d
	add	eax, ecx
	and	eax, 0xfffffff8
	add	eax, 8
.label_451:
	mov	dword ptr [rip + in_column],  eax
	mov	rax, qword ptr [r14 + 8]
	cmp	rax, qword ptr [r14 + 0x10]
	jb	.label_452
	mov	rdi, r14
	call	__uflow
	mov	r13d, eax
	jmp	.label_448
	.section	.text
	.align	16
	#Procedure 0x4058da
	.globl sub_4058da
	.type sub_4058da, @function
sub_4058da:

	nop	word ptr [rax + rax]
.label_435:
	mov	ecx, dword ptr [rip + in_column]
	mov	esi, ecx
	sub	esi, dword ptr [rsp + 4]
	mov	rax, qword ptr [rip + word_limit]
	mov	dword ptr [rax + 0xc], esi
	cmp	r13d, -1
	mov	dl, byte ptr [rax + 0x10]
	je	.label_458
	test	dl, 2
	jne	.label_465
	xor	esi, esi
	jmp	.label_436
	.section	.text
	.align	16
	#Procedure 0x405908
	.globl sub_405908
	.type sub_405908, @function
sub_405908:

	nop	dword ptr [rax + rax]
.label_465:
	cmp	r13d, 0xa
	jne	.label_447
.label_458:
	or	dl, 8
	mov	byte ptr [rax + 0x10], dl
	jmp	.label_440
.label_447:
	cmp	esi, 1
	setg	sil
.label_436:
	shl	sil, 3
	and	dl, 0xf7
	or	dl, sil
	mov	byte ptr [rax + 0x10], dl
	cmp	r13d, 0xa
	je	.label_440
	cmp	byte ptr [rip + uniform],  1
	jne	.label_450
	nop	word ptr cs:[rax + rax]
.label_440:
	and	dl, 8
	movzx	edx, dl
	shr	edx, 3
	inc	edx
	mov	dword ptr [rax + 0xc], edx
.label_450:
	mov	edx, OFFSET FLAT:label_456
	cmp	rax, rdx
	jne	.label_457
	cmp	byte ptr [rip + split],  1
	jne	.label_460
	mov	eax, dword ptr [rip + first_indent]
.label_442:
	mov	dword ptr [rip + other_indent],  eax
	jmp	.label_444
.label_460:
	cmp	byte ptr [rip + crown],  1
	je	.label_441
	mov	eax, dword ptr [rip + first_indent]
	cmp	byte ptr [rip + tagged],  1
	jne	.label_442
	cmp	ecx, eax
	jne	.label_441
	cmp	dword ptr [rip + other_indent],  ecx
	jne	.label_444
	xor	eax, eax
	test	ecx, ecx
	sete	al
	lea	eax, [rax + rax*2]
	jmp	.label_442
.label_441:
	mov	dword ptr [rip + other_indent],  ecx
.label_444:
	call	flush_paragraph
	mov	rax, qword ptr [rip + word_limit]
.label_457:
	add	rax, 0x28
	mov	qword ptr [rip + word_limit],  rax
	cmp	r13d, 0xa
	je	.label_437
	cmp	r13d, -1
	jne	.label_461
.label_437:
	mov	rdi, r14
	add	rsp, 0x18
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	jmp	get_prefix
	.section	.text
	.align	16
	#Procedure 0x4059f2
	.globl sub_4059f2
	.type sub_4059f2, @function
sub_4059f2:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x405a00
	.globl xcharalloc
	.type xcharalloc, @function
xcharalloc:

	push	rbx
	mov	rbx, rdi
	call	malloc
	test	rbx, rbx
	je	.label_466
	test	rax, rax
	je	.label_467
.label_466:
	pop	rbx
	ret	
.label_467:
	call	xalloc_die
	.section	.text
	.align	16
	#Procedure 0x405a1a
	.globl sub_405a1a
	.type sub_405a1a, @function
sub_405a1a:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x405a20
	.globl x2nrealloc
	.type x2nrealloc, @function
x2nrealloc:

	push	rbx
	mov	rbx, rdx
	mov	rcx, qword ptr [rsi]
	test	rdi, rdi
	je	.label_468
	movabs	rax, 0x5555555555555554
	xor	edx, edx
	div	rbx
	cmp	rax, rcx
	jbe	.label_471
	mov	rax, rcx
	shr	rax, 1
	lea	rcx, [rcx + rax + 1]
	jmp	.label_469
.label_468:
	test	rcx, rcx
	jne	.label_474
	mov	eax, 0x80
	xor	edx, edx
	div	rbx
	xor	ecx, ecx
	cmp	rbx, 0x80
	seta	cl
	add	rcx, rax
.label_474:
	movabs	rax, 0x7fffffffffffffff
	xor	edx, edx
	div	rbx
	cmp	rax, rcx
	jb	.label_470
.label_469:
	mov	qword ptr [rsi], rcx
	imul	rbx, rcx
	test	rdi, rdi
	je	.label_473
	test	rbx, rbx
	jne	.label_473
	call	free
	xor	eax, eax
	pop	rbx
	ret	
.label_471:
	call	xalloc_die
.label_473:
	mov	rsi, rbx
	call	realloc
	test	rbx, rbx
	je	.label_472
	test	rax, rax
	je	.label_471
.label_472:
	pop	rbx
	ret	
.label_470:
	call	xalloc_die
	.section	.text
	.align	16
	#Procedure 0x405ab7
	.globl sub_405ab7
	.type sub_405ab7, @function
sub_405ab7:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x405ac0
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
	#Procedure 0x405ad3
	.globl sub_405ad3
	.type sub_405ad3, @function
sub_405ad3:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x405ae0
	.globl quotearg_n_custom
	.type quotearg_n_custom, @function
quotearg_n_custom:

	sub	rsp, 0x38
	mov	rax, qword ptr [rip + label_54]
	mov	qword ptr [rsp + 0x30], rax
	movups	xmm0, xmmword ptr [rip + label_55]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0, xmmword ptr [rip + label_56]
	movaps	xmmword ptr [rsp + 0x10], xmm0
	movups	xmm0, xmmword ptr [rip + default_quoting_options]
	movaps	xmmword ptr [rsp], xmm0
	mov	dword ptr [rsp], 0xa
	test	rsi, rsi
	je	.label_475
	test	rdx, rdx
	je	.label_475
	mov	qword ptr [rsp + 0x28], rsi
	mov	qword ptr [rsp + 0x30], rdx
	lea	rax, [rsp]
	mov	rdx, -1
	mov	rsi, rcx
	mov	rcx, rax
	call	quotearg_n_options
	add	rsp, 0x38
	ret	
.label_475:
	call	abort
	.section	.text
	.align	16
	#Procedure 0x405b4e
	.globl sub_405b4e
	.type sub_405b4e, @function
sub_405b4e:

	nop	
	.section	.text
	.align	16
	#Procedure 0x405b50
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
	#Procedure 0x405b83
	.globl sub_405b83
	.type sub_405b83, @function
sub_405b83:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x405b90

	.globl main
	.type main, @function
main:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	push	rax
	mov	r12, rsi
	mov	r13d, edi
	mov	rdi, qword ptr [r12]
	call	set_program_name
	mov	edi, 6
	mov	esi, OFFSET FLAT:label_202
	call	setlocale
	mov	edi, OFFSET FLAT:label_495
	mov	esi, OFFSET FLAT:label_498
	call	bindtextdomain
	mov	edi, OFFSET FLAT:label_495
	call	textdomain
	mov	edi, OFFSET FLAT:close_stdout
	call	atexit
	mov	byte ptr [rip + uniform],  0
	mov	byte ptr [rip + split],  0
	mov	byte ptr [rip + tagged],  0
	mov	byte ptr [rip + crown],  0
	mov	dword ptr [rip + max_width],  0x4b
	mov	qword ptr [rip + prefix], OFFSET FLAT:label_202
	mov	dword ptr [rip + prefix_full_length],  0
	mov	dword ptr [rip + prefix_lead_space],  0
	mov	dword ptr [rip + prefix_length],  0
	xor	r14d, r14d
	cmp	r13d, 2
	jl	.label_489
	mov	rax, qword ptr [r12 + 8]
	xor	r14d, r14d
	cmp	byte ptr [rax], 0x2d
	jne	.label_489
	movsx	ecx, byte ptr [rax + 1]
	add	ecx, -0x30
	xor	r14d, r14d
	cmp	ecx, 9
	ja	.label_489
	inc	rax
	mov	rcx, qword ptr [r12]
	mov	qword ptr [r12 + 8], rcx
	lea	r12, [r12 + 8]
	dec	r13d
	mov	r14, rax
.label_489:
	xor	r15d, r15d
	jmp	.label_485
.label_483:
	mov	byte ptr [rax], 0
	sub	eax, ebx
	mov	dword ptr [rip + prefix_length],  eax
	nop	word ptr [rax + rax]
.label_485:
	mov	edx, OFFSET FLAT:label_476
	mov	ecx, OFFSET FLAT:long_options
	xor	r8d, r8d
	mov	edi, r13d
	mov	rsi, r12
	call	getopt_long
	mov	ebx, eax
	cmp	ebx, 0x62
	jle	.label_480
	lea	eax, [rbx - 0x63]
	cmp	eax, 0x14
	ja	.label_491
	jmp	qword ptr [(rax * 8) + label_487]
.label_547:
	mov	byte ptr [rip + crown],  1
	jmp	.label_485
.label_548:
	mov	r15, qword ptr [rip + optarg]
	jmp	.label_485
.label_549:
	mov	rbx, qword ptr [rip + optarg]
	mov	dword ptr [rip + prefix_lead_space],  0
	cmp	byte ptr [rbx], 0x20
	jne	.label_505
	xor	eax, eax
.label_501:
	cmp	byte ptr [rbx + rax + 1], 0x20
	lea	rax, [rax + 1]
	je	.label_501
	mov	dword ptr [rip + prefix_lead_space],  eax
	add	rbx, rax
.label_505:
	mov	qword ptr [rip + prefix],  rbx
	mov	rdi, rbx
	call	strlen
	mov	dword ptr [rip + prefix_full_length],  eax
	movsxd	rcx, eax
	add	rcx, rbx
	nop	
.label_481:
	mov	rax, rcx
	cmp	rax, rbx
	jbe	.label_483
	lea	rcx, [rax - 1]
	cmp	byte ptr [rax - 1], 0x20
	je	.label_481
	jmp	.label_483
.label_550:
	mov	byte ptr [rip + split],  1
	jmp	.label_485
.label_551:
	mov	byte ptr [rip + tagged],  1
	jmp	.label_485
.label_552:
	mov	byte ptr [rip + uniform],  1
	jmp	.label_485
.label_553:
	mov	r14, qword ptr [rip + optarg]
	jmp	.label_485
.label_480:
	cmp	ebx, -1
	jne	.label_499
	test	r14, r14
	je	.label_503
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_504
	mov	edx, 5
	call	dcgettext
	mov	esi, 0
	mov	edx, 0x9c4
	mov	ecx, OFFSET FLAT:label_202
	xor	r9d, r9d
	mov	rdi, r14
	mov	r8, rax
	call	xdectoumax
	mov	dword ptr [rip + max_width],  eax
	jmp	.label_479
.label_503:
	mov	eax, dword ptr [rip + max_width]
.label_479:
	test	r15, r15
	je	.label_482
	movsxd	rbx, eax
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_504
	mov	edx, 5
	call	dcgettext
	xor	esi, esi
	mov	ecx, OFFSET FLAT:label_202
	xor	r9d, r9d
	mov	rdi, r15
	mov	rdx, rbx
	mov	r8, rax
	call	xdectoumax
	mov	dword ptr [rip + goal_width],  eax
	test	r14, r14
	jne	.label_494
	add	eax, 0xa
	mov	dword ptr [rip + max_width],  eax
	jmp	.label_494
.label_482:
	imul	eax, eax, 0xbb
	cdqe	
	imul	rax, rax, 0x51eb851f
	mov	rcx, rax
	shr	rcx, 0x3f
	sar	rax, 0x26
	add	eax, ecx
	mov	dword ptr [rip + goal_width],  eax
.label_494:
	mov	eax, dword ptr [rip + optind]
	cmp	eax, r13d
	jne	.label_478
	mov	rdi, qword ptr [rip + stdin]
	call	fmt
	mov	r15b, 1
	jmp	.label_486
.label_478:
	mov	r15b, 1
	jge	.label_486
	mov	r15b, 1
	nop	dword ptr [rax]
.label_477:
	cdqe	
	mov	rbx, qword ptr [r12 + rax*8]
	cmp	byte ptr [rbx], 0x2d
	jne	.label_492
	cmp	byte ptr [rbx + 1], 0
	je	.label_496
.label_492:
	mov	esi, OFFSET FLAT:label_497
	mov	rdi, rbx
	call	fopen
	mov	rbp, rax
	test	rbp, rbp
	je	.label_502
	mov	rdi, rbp
	call	fmt
	mov	rdi, rbp
	call	rpl_fclose
	cmp	eax, -1
	jne	.label_500
	call	__errno_location
	mov	ebp, dword ptr [rax]
	xor	r15d, r15d
	xor	edi, edi
	mov	esi, 3
	mov	rdx, rbx
	call	quotearg_n_style_colon
	mov	rcx, rax
	xor	edi, edi
	mov	edx, OFFSET FLAT:label_341
	xor	eax, eax
	mov	esi, ebp
	jmp	.label_493
	.section	.text
	.align	16
	#Procedure 0x405eac
	.globl sub_405eac
	.type sub_405eac, @function
sub_405eac:

	nop	dword ptr [rax]
.label_502:
	call	__errno_location
	mov	r14d, dword ptr [rax]
	xor	r15d, r15d
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_490
	mov	edx, 5
	call	dcgettext
	mov	rbp, rax
	mov	edi, 4
	mov	rsi, rbx
	call	quotearg_style
	mov	rcx, rax
	xor	edi, edi
	xor	eax, eax
	mov	esi, r14d
	mov	rdx, rbp
.label_493:
	call	error
	jmp	.label_500
.label_496:
	mov	rdi, qword ptr [rip + stdin]
	call	fmt
	nop	dword ptr [rax]
.label_500:
	mov	eax, dword ptr [rip + optind]
	inc	eax
	mov	dword ptr [rip + optind],  eax
	cmp	eax, r13d
	jl	.label_477
.label_486:
	not	r15b
	and	r15b, 1
	movzx	eax, r15b
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_499:
	cmp	ebx, 0xffffff7d
	je	.label_484
	cmp	ebx, 0xffffff7e
	jne	.label_491
	xor	edi, edi
	call	usage
.label_484:
	mov	rdi, qword ptr [rip + stdout]
	mov	rcx, qword ptr [rip + Version]
	mov	esi, OFFSET FLAT:label_406
	mov	edx, OFFSET FLAT:label_325
	mov	r8d, OFFSET FLAT:label_488
	xor	r9d, r9d
	xor	eax, eax
	call	version_etc
	xor	edi, edi
	call	exit
.label_491:
	lea	eax, [rbx - 0x30]
	cmp	eax, 9
	ja	.label_506
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_507
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	xor	edi, edi
	xor	esi, esi
	xor	eax, eax
	mov	rdx, rcx
	mov	ecx, ebx
	call	error
.label_506:
	mov	edi, 1
	call	usage
	.section	.text
	.align	16
	#Procedure 0x405fad
	.globl sub_405fad
	.type sub_405fad, @function
sub_405fad:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x405fb0
	.globl quote_n
	.type quote_n, @function
quote_n:

	mov	rdx, -1
	mov	ecx, OFFSET FLAT:quote_quoting_options
	jmp	quotearg_n_options
	.section	.text
	.align	16
	#Procedure 0x405fc1
	.globl sub_405fc1
	.type sub_405fc1, @function
sub_405fc1:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x405fd0
	.globl quotearg_char
	.type quotearg_char, @function
quotearg_char:

	sub	rsp, 0x38
	mov	ecx, esi
	mov	rax, rdi
	mov	rdx, qword ptr [rip + label_54]
	mov	qword ptr [rsp + 0x30], rdx
	movups	xmm0, xmmword ptr [rip + label_55]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0, xmmword ptr [rip + label_56]
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
	#Procedure 0x40603f
	.globl sub_40603f
	.type sub_40603f, @function
sub_40603f:

	nop
	nop	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4060b2
	.globl sub_4060b2
	.type sub_4060b2, @function
sub_4060b2:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4060d6
	.globl sub_4060d6
	.type sub_4060d6, @function
sub_4060d6:

	nop	word ptr cs:[rax + rax]
