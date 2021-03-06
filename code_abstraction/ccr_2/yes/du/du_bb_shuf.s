	.section	.text
	.align	32
	#Procedure 0x402689
	.globl sub_402689
	.type sub_402689, @function
sub_402689:

	hlt	
	.section	.text
	.align	32
	#Procedure 0x40268a
	.globl sub_40268a
	.type sub_40268a, @function
sub_40268a:

	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4026c2
	.globl sub_4026c2
	.type sub_4026c2, @function
sub_4026c2:

	nop	dword ptr [rax]
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40270a
	.globl sub_40270a
	.type sub_40270a, @function
sub_40270a:

	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40272c
	.globl sub_40272c
	.type sub_40272c, @function
sub_40272c:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x40273d
	.globl sub_40273d
	.type sub_40273d, @function
sub_40273d:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x402756
	.globl sub_402756
	.type sub_402756, @function
sub_402756:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x402760

	.globl build_equiv_class
	.type build_equiv_class, @function
build_equiv_class:
	push	r14
	push	rbx
	push	rax
	mov	rbx, rsi
	mov	r14, rdi
	mov	rdi, rbx
	call	strlen
	mov	rcx, rax
	mov	eax, 3
	cmp	rcx, 1
	jne	.label_9
	movzx	esi, byte ptr [rbx]
	mov	rdi, r14
	call	bitset_set
	xor	eax, eax
.label_9:
	add	rsp, 8
	pop	rbx
	pop	r14
	ret	
	.section	.text
	.align	32
	#Procedure 0x402795
	.globl sub_402795
	.type sub_402795, @function
sub_402795:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4027a0

	.globl rpl_fts_close
	.type rpl_fts_close, @function
rpl_fts_close:
	push	r14
	push	rbx
	push	rax
	mov	r14, rdi
	mov	rdi, qword ptr [r14]
	test	rdi, rdi
	je	.label_14
	cmp	qword ptr [rdi + 0x58], 0
	js	.label_18
	nop	word ptr cs:[rax + rax]
.label_17:
	mov	rbx, qword ptr [rdi + 0x10]
	test	rbx, rbx
	jne	.label_10
	mov	rbx, qword ptr [rdi + 8]
.label_10:
	call	free
	cmp	qword ptr [rbx + 0x58], 0
	mov	rdi, rbx
	jns	.label_17
	jmp	.label_13
.label_18:
	mov	rbx, rdi
.label_13:
	mov	rdi, rbx
	call	free
.label_14:
	mov	rdi, qword ptr [r14 + 8]
	test	rdi, rdi
	je	.label_16
	call	fts_lfree
.label_16:
	mov	rdi, qword ptr [r14 + 0x10]
	call	free
	mov	rdi, qword ptr [r14 + 0x20]
	call	free
	mov	eax, dword ptr [r14 + 0x48]
	test	ah, 2
	jne	.label_11
	xor	ebx, ebx
	test	al, 4
	jne	.label_12
	mov	edi, dword ptr [r14 + 0x28]
	call	fchdir
	xor	ebx, ebx
	test	eax, eax
	je	.label_15
	call	__errno_location
	mov	ebx, dword ptr [rax]
.label_15:
	mov	edi, dword ptr [r14 + 0x28]
	call	close
	test	ebx, ebx
	je	.label_21
	jmp	.label_12
.label_11:
	mov	edi, dword ptr [r14 + 0x2c]
	xor	ebx, ebx
	test	edi, edi
	js	.label_12
	call	close
.label_21:
	test	eax, eax
	je	.label_12
	call	__errno_location
	mov	ebx, dword ptr [rax]
.label_12:
	lea	rdi, [r14 + 0x60]
	call	fd_ring_clear
	mov	rdi, qword ptr [r14 + 0x50]
	test	rdi, rdi
	je	.label_20
	call	hash_free
.label_20:
	mov	rdi, r14
	call	free_dir
	mov	rdi, r14
	call	free
	xor	eax, eax
	test	ebx, ebx
	je	.label_19
	call	__errno_location
	mov	dword ptr [rax], ebx
	mov	eax, 0xffffffff
.label_19:
	add	rsp, 8
	pop	rbx
	pop	r14
	ret	
	.section	.text
	.align	32
	#Procedure 0x402898
	.globl sub_402898
	.type sub_402898, @function
sub_402898:

	nop	dword ptr [rax + rax]
.label_24:
	pop	rbx
	pop	r14
	pop	r15
	ret	
	.section	.text
	.align	32
	#Procedure 0x4028a6
	.globl sub_4028a6
	.type sub_4028a6, @function
sub_4028a6:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x4028aa

	.globl free_fail_stack_return
	.type free_fail_stack_return, @function
free_fail_stack_return:
	push	r15
	push	r14
	push	rbx
	mov	r14, rdi
	test	r14, r14
	je	.label_24
	cmp	qword ptr [r14], 0
	jle	.label_23
	xor	ebx, ebx
	xor	r15d, r15d
	nop	dword ptr [rax + rax]
.label_22:
	mov	rax, qword ptr [r14 + 0x10]
	mov	rdi, qword ptr [rax + rbx + 0x28]
	call	free
	mov	rax, qword ptr [r14 + 0x10]
	mov	rdi, qword ptr [rax + rbx + 0x10]
	call	free
	inc	r15
	add	rbx, 0x30
	cmp	r15, qword ptr [r14]
	jl	.label_22
.label_23:
	mov	rdi, qword ptr [r14 + 0x10]
	pop	rbx
	pop	r14
	pop	r15
	jmp	free
.label_25:
	mov	rdi, rbx
	add	rsp, 8
	pop	rbx
	pop	rbp
	jmp	fclose
	.section	.text
	.align	32
	#Procedure 0x40290e
	.globl sub_40290e
	.type sub_40290e, @function
sub_40290e:

	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x402917

	.globl rpl_fclose
	.type rpl_fclose, @function
rpl_fclose:
	push	rbp
	push	rbx
	push	rax
	mov	rbx, rdi
	call	fileno
	test	eax, eax
	js	.label_25
	mov	rdi, rbx
	call	__freading
	test	eax, eax
	je	.label_27
	mov	rdi, rbx
	call	fileno
	xor	esi, esi
	mov	edx, 1
	mov	edi, eax
	call	lseek
	cmp	rax, -1
	je	.label_25
.label_27:
	mov	rdi, rbx
	call	rpl_fflush
	test	eax, eax
	je	.label_25
	call	__errno_location
	mov	ebp, dword ptr [rax]
	mov	rdi, rbx
	call	fclose
	test	ebp, ebp
	je	.label_26
	call	__errno_location
	mov	dword ptr [rax], ebp
	mov	eax, 0xffffffff
.label_26:
	add	rsp, 8
	pop	rbx
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x402980

	.globl add_exclude_fp
	.type add_exclude_fp, @function
add_exclude_fp:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x38
	mov	qword ptr [rsp + 0x30], r9
	mov	r15d, r8d
	mov	dword ptr [rsp + 0xc], ecx
	mov	rbx, rdx
	mov	qword ptr [rsp + 0x18], rsi
	mov	qword ptr [rsp + 0x28], rdi
	mov	qword ptr [rsp + 0x20], 0
	mov	rdi, rbx
	call	getc_unlocked
	mov	ebp, eax
	xor	eax, eax
	mov	qword ptr [rsp + 0x10], rax
	cmp	ebp, -1
	mov	r13d, 0
	mov	r14d, 0
	je	.label_38
	xor	r14d, r14d
	lea	r12, [rsp + 0x20]
	xor	r13d, r13d
	nop	dword ptr [rax]
.label_29:
	cmp	r13, qword ptr [rsp + 0x20]
	jne	.label_35
	mov	rdi, r14
	mov	rsi, r12
	call	x2realloc
	mov	r14, rax
.label_35:
	mov	byte ptr [r14 + r13], bpl
	inc	r13
	mov	rdi, rbx
	call	getc_unlocked
	mov	ebp, eax
	cmp	ebp, -1
	jne	.label_29
.label_38:
	mov	rdi, rbx
	call	ferror_unlocked
	test	eax, eax
	je	.label_31
	call	__errno_location
	mov	eax, dword ptr [rax]
	mov	qword ptr [rsp + 0x10], rax
.label_31:
	lea	rsi, [r13 + 1]
	mov	rdi, r14
	call	xrealloc
	mov	rbx, rax
	lea	rbp, [rbx + r13]
	mov	byte ptr [rbx + r13], r15b
	test	r13, r13
	je	.label_37
	cmp	byte ptr [rbx + r13 - 1], r15b
	setne	al
	jmp	.label_39
.label_37:
	xor	eax, eax
.label_39:
	movzx	r12d, al
	add	rbp, r12
	mov	rdi, qword ptr [rsp + 0x18]
	mov	rsi, rbx
	call	exclude_add_pattern_buffer
	cmp	rbx, rbp
	jae	.label_34
	movzx	r14d, r15b
	add	r13, r12
	mov	r12, rbx
	add	r12, r13
	mov	rbp, rbx
	nop	word ptr cs:[rax + rax]
.label_32:
	cmp	byte ptr [rbx], r15b
	jne	.label_28
	call	__ctype_b_loc
	mov	rcx, qword ptr [rax]
	test	byte ptr [rcx + r14*2 + 1], 0x20
	mov	rcx, rbx
	je	.label_30
	mov	rcx, rbx
	nop	dword ptr [rax + rax]
.label_36:
	cmp	rbp, rcx
	je	.label_33
	movzx	edx, byte ptr [rcx - 1]
	dec	rcx
	mov	rsi, qword ptr [rax]
	test	byte ptr [rsi + rdx*2 + 1], 0x20
	jne	.label_36
	inc	rcx
.label_30:
	mov	byte ptr [rcx], 0
	mov	rdi, qword ptr [rsp + 0x18]
	mov	rsi, rbp
	mov	edx, dword ptr [rsp + 0xc]
	mov	rcx, qword ptr [rsp + 0x30]
	call	qword ptr [rsp + 0x28]
.label_33:
	lea	rbp, [rbx + 1]
.label_28:
	inc	rbx
	cmp	rbx, r12
	jne	.label_32
.label_34:
	call	__errno_location
	mov	rcx, qword ptr [rsp + 0x10]
	mov	dword ptr [rax], ecx
	neg	ecx
	sbb	eax, eax
	add	rsp, 0x38
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x402afc
	.globl sub_402afc
	.type sub_402afc, @function
sub_402afc:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x402b00

	.globl ino_compare
	.type ino_compare, @function
ino_compare:
	mov	rax, qword ptr [rdi]
	cmp	rax, qword ptr [rsi]
	sete	al
	ret	
	.section	.text
	.align	32
	#Procedure 0x402b0a
	.globl sub_402b0a
	.type sub_402b0a, @function
sub_402b0a:

	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x402b10
	.globl get_stat_atime_ns
	.type get_stat_atime_ns, @function
get_stat_atime_ns:

	mov	rax, qword ptr [rdi + 0x50]
	ret	
	.section	.text
	.align	32
	#Procedure 0x402b15
	.globl sub_402b15
	.type sub_402b15, @function
sub_402b15:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x402b20
	.globl rpl_re_search
	.type rpl_re_search, @function
rpl_re_search:

	push	rax
	mov	rax, r9
	mov	r9, rdx
	push	0
	push	rax
	call	re_search_stub
	add	rsp, 0x10
	pop	rcx
	ret	
	.section	.text
	.align	32
	#Procedure 0x402b35
	.globl sub_402b35
	.type sub_402b35, @function
sub_402b35:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x402b40

	.globl is_zero_or_power_of_two
	.type is_zero_or_power_of_two, @function
is_zero_or_power_of_two:
	lea	rax, [rdi - 1]
	test	rax, rdi
	sete	al
	ret	
	.section	.text
	.align	32
	#Procedure 0x402b4b
	.globl sub_402b4b
	.type sub_402b4b, @function
sub_402b4b:

	nop	dword ptr [rax + rax]
.label_44:
	mov	edi, 0x10
	call	malloc
	mov	rbx, rax
	mov	qword ptr [r14 + 0x10], rbx
	mov	rax, -1
	test	rbx, rbx
	je	.label_40
.label_43:
	mov	qword ptr [rbx], r15
	mov	rdi, qword ptr [r14]
	mov	rsi, rbx
	call	hash_insert
	mov	rcx, rax
	mov	rax, -1
	test	rcx, rcx
	je	.label_40
	cmp	rcx, rbx
	je	.label_41
	mov	rax, qword ptr [rcx + 8]
	jmp	.label_42
	.section	.text
	.align	32
	#Procedure 0x402b95

	.globl ino_map_insert
	.type ino_map_insert, @function
ino_map_insert:
	push	r15
	push	r14
	push	rbx
	mov	r15, rsi
	mov	r14, rdi
	mov	rbx, qword ptr [r14 + 0x10]
	test	rbx, rbx
	je	.label_44
	cmp	qword ptr [rbx], r15
	jne	.label_43
	jmp	.label_45
.label_41:
	mov	qword ptr [r14 + 0x10], 0
	mov	rax, qword ptr [r14 + 8]
	lea	rcx, [rax + 1]
	mov	qword ptr [r14 + 8], rcx
.label_42:
	mov	qword ptr [rbx + 8], rax
.label_45:
	mov	rax, qword ptr [rbx + 8]
.label_40:
	pop	rbx
	pop	r14
	pop	r15
	ret	
	.section	.text
	.align	32
	#Procedure 0x402bd2
	.globl sub_402bd2
	.type sub_402bd2, @function
sub_402bd2:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x402be0

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
	mov	rcx,  qword ptr [word ptr [rip + label_46]]
	mov	qword ptr [rsp + 0x30], rcx
	movups	xmm0,  xmmword ptr [word ptr [rip + label_47]]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0,  xmmword ptr [word ptr [rip + label_48]]
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
	#Procedure 0x402c4d
	.globl sub_402c4d
	.type sub_402c4d, @function
sub_402c4d:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x402c50

	.globl quotearg_char
	.type quotearg_char, @function
quotearg_char:
	mov	eax, esi
	mov	rsi, -1
	mov	edx, eax
	jmp	quotearg_char_mem
	.section	.text
	.align	32
	#Procedure 0x402c5d
	.globl sub_402c5d
	.type sub_402c5d, @function
sub_402c5d:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x402c60

	.globl quotearg_colon
	.type quotearg_colon, @function
quotearg_colon:
	mov	esi, 0x3a
	jmp	quotearg_char
	.section	.text
	.align	32
	#Procedure 0x402c67
	.globl sub_402c67
	.type sub_402c67, @function
sub_402c67:

	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x402c70

	.globl bitset_merge
	.type bitset_merge, @function
bitset_merge:
	xor	eax, eax
	nop	word ptr cs:[rax + rax]
.label_49:
	mov	rcx, qword ptr [rsi + rax*8]
	or	qword ptr [rdi + rax*8], rcx
	inc	rax
	cmp	rax, 4
	jne	.label_49
	ret	
	.section	.text
	.align	32
	#Procedure 0x402c92
	.globl sub_402c92
	.type sub_402c92, @function
sub_402c92:

	nop	word ptr cs:[rax + rax]
.label_62:
	movzx	edi, byte ptr [rcx]
	mov	rax, qword ptr [rsp]
	mov	byte ptr [rax + rdi], 1
	test	r14b, r14b
	je	.label_61
	call	tolower
	cdqe	
	mov	rcx, qword ptr [rsp]
	mov	byte ptr [rcx + rax], 1
.label_61:
	mov	rax, qword ptr [rsp + 0x10]
	test	byte ptr [rax + 0x1a], 0x40
	je	.label_51
	cmp	dword ptr [r15 + 0xb4], 2
	jl	.label_51
	mov	rax, qword ptr [r15]
	mov	al, byte ptr [rax + rbp]
	mov	byte ptr [rsp + 0x40], al
	inc	rbx
	cmp	rbx, qword ptr [r15 + 0x10]
	lea	r13, [rsp + 0x41]
	jae	.label_50
	add	rbp, 0x18
	lea	r13, [rsp + 0x41]
	nop	dword ptr [rax]
.label_56:
	mov	rax, qword ptr [r15]
	mov	ecx, dword ptr [rax + rbp]
	mov	edx, 0x2000ff
	and	ecx, edx
	cmp	ecx, 0x200001
	jne	.label_50
	movzx	eax, byte ptr [rax + rbp - 8]
	mov	byte ptr [r13], al
	inc	r13
	inc	rbx
	add	rbp, 0x10
	cmp	rbx, qword ptr [r15 + 0x10]
	jb	.label_56
.label_50:
	mov	qword ptr [rsp + 8], 0
	lea	rbx, [rsp + 0x40]
	sub	r13, rbx
	lea	rdi, [rsp + 0x1c]
	mov	rsi, rbx
	mov	rdx, r13
	lea	rbp, [rsp + 8]
	mov	rcx, rbp
	call	rpl_mbrtowc
	cmp	rax, r13
	jne	.label_51
	mov	edi, dword ptr [rsp + 0x1c]
	call	towlower
	mov	rdi, rbx
	mov	esi, eax
	mov	rdx, rbp
	call	wcrtomb
	cmp	rax, -1
	je	.label_51
	movzx	eax, byte ptr [rsp + 0x40]
	mov	rcx, qword ptr [rsp]
	mov	byte ptr [rcx + rax], 1
	jmp	.label_51
	.section	.text
	.align	32
	#Procedure 0x402d92
	.globl sub_402d92
	.type sub_402d92, @function
sub_402d92:

	nop	word ptr cs:[rax + rax]
.label_64:
	mov	r12, qword ptr [rcx]
	cmp	dword ptr [r15 + 0xb4], 1
	jle	.label_53
	cmp	qword ptr [r12 + 0x48], 0
	jne	.label_60
	test	byte ptr [r12 + 0x20], 1
	jne	.label_60
	cmp	qword ptr [r12 + 0x40], 0
	je	.label_53
.label_60:
	mov	byte ptr [rsp + 8], 0
	lea	rbx, [rsp + 0x40]
	lea	rbp, [rsp + 8]
	nop	dword ptr [rax + rax]
.label_55:
	mov	qword ptr [rsp + 0x40], 0
	xor	edi, edi
	mov	edx, 1
	mov	rsi, rbp
	mov	rcx, rbx
	call	rpl_mbrtowc
	cmp	rax, -2
	jne	.label_70
	movzx	eax, byte ptr [rsp + 8]
	mov	rcx, qword ptr [rsp]
	mov	byte ptr [rcx + rax], 1
.label_70:
	inc	byte ptr [rsp + 8]
	jne	.label_55
	jmp	.label_51
	.section	.text
	.align	32
	#Procedure 0x402e19
	.globl sub_402e19
	.type sub_402e19, @function
sub_402e19:

	nop	dword ptr [rax]
.label_53:
	cmp	qword ptr [r12 + 0x28], 0
	jle	.label_51
	xor	ebp, ebp
	nop	dword ptr [rax]
.label_58:
	mov	qword ptr [rsp + 8], 0
	mov	rax, qword ptr [r12]
	mov	esi, dword ptr [rax + rbp*4]
	lea	rdi, [rsp + 0x40]
	lea	rdx, [rsp + 8]
	call	wcrtomb
	cmp	rax, -1
	je	.label_54
	movzx	edi, byte ptr [rsp + 0x40]
	mov	rax, qword ptr [rsp]
	mov	byte ptr [rax + rdi], 1
	test	r14b, r14b
	je	.label_54
	call	tolower
	cdqe	
	mov	rcx, qword ptr [rsp]
	mov	byte ptr [rcx + rax], 1
.label_54:
	mov	rax, qword ptr [rsp + 0x10]
	test	byte ptr [rax + 0x1a], 0x40
	je	.label_52
	cmp	dword ptr [r15 + 0xb4], 2
	jl	.label_52
	mov	rax, qword ptr [r12]
	mov	edi, dword ptr [rax + rbp*4]
	call	towlower
	lea	rdi, [rsp + 0x40]
	mov	esi, eax
	lea	rdx, [rsp + 8]
	call	wcrtomb
	cmp	rax, -1
	je	.label_52
	movzx	eax, byte ptr [rsp + 0x40]
	mov	rcx, qword ptr [rsp]
	mov	byte ptr [rcx + rax], 1
	nop	dword ptr [rax + rax]
.label_52:
	inc	rbp
	cmp	rbp, qword ptr [r12 + 0x28]
	jl	.label_58
	nop	
.label_51:
	mov	rdx, qword ptr [rsp + 0x28]
	inc	rdx
	mov	rsi, qword ptr [rsp + 0x20]
	cmp	rdx, qword ptr [rsi + 0x10]
	jl	.label_63
.label_67:
	add	rsp, 0x148
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_57:
	movaps	xmm0,  xmmword ptr [word ptr [rip + label_68]]
	mov	rcx, qword ptr [rsp]
	movups	xmmword ptr [rcx + 0xf0], xmm0
	movups	xmmword ptr [rcx + 0xe0], xmm0
	movups	xmmword ptr [rcx + 0xd0], xmm0
	movups	xmmword ptr [rcx + 0xc0], xmm0
	movups	xmmword ptr [rcx + 0xb0], xmm0
	movups	xmmword ptr [rcx + 0xa0], xmm0
	movups	xmmword ptr [rcx + 0x90], xmm0
	movups	xmmword ptr [rcx + 0x80], xmm0
	movups	xmmword ptr [rcx + 0x70], xmm0
	movups	xmmword ptr [rcx + 0x60], xmm0
	movups	xmmword ptr [rcx + 0x50], xmm0
	movups	xmmword ptr [rcx + 0x40], xmm0
	movups	xmmword ptr [rcx + 0x30], xmm0
	movups	xmmword ptr [rcx + 0x20], xmm0
	movups	xmmword ptr [rcx + 0x10], xmm0
	movups	xmmword ptr [rcx], xmm0
	cmp	eax, 2
	jne	.label_67
	mov	rax, qword ptr [rsp + 0x10]
	or	byte ptr [rax + 0x38], 1
	jmp	.label_67
	.section	.text
	.align	32
	#Procedure 0x402f70
	.globl sub_402f70
	.type sub_402f70, @function
sub_402f70:

	nop	
	.section	.text
	.align	32
	#Procedure 0x402f72

	.globl re_compile_fastmap_iter
	.type re_compile_fastmap_iter, @function
re_compile_fastmap_iter:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x148
	mov	qword ptr [rsp], rdx
	mov	r15, qword ptr [rdi]
	cmp	dword ptr [r15 + 0xb4], 1
	mov	qword ptr [rsp + 0x10], rdi
	jne	.label_72
	mov	r14b, byte ptr [rdi + 0x1a]
	and	r14b, 0x40
	shr	r14b, 6
	jmp	.label_71
.label_72:
	xor	r14d, r14d
.label_71:
	cmp	qword ptr [rsi + 0x10], 0
	jle	.label_67
	xor	edx, edx
	mov	qword ptr [rsp + 0x20], rsi
	mov	qword ptr [rsp + 0x30], r15
	nop	
.label_63:
	mov	rax, qword ptr [rsi + 0x18]
	mov	rbx, qword ptr [rax + rdx*8]
	mov	rcx, qword ptr [r15]
	mov	rbp, rbx
	shl	rbp, 4
	movzx	eax, byte ptr [rcx + rbp + 8]
	add	rcx, rbp
	cmp	al, 1
	mov	qword ptr [rsp + 0x28], rdx
	je	.label_62
	cmp	al, 6
	je	.label_64
	cmp	al, 3
	jne	.label_69
	xor	r13d, r13d
	xor	ebx, ebx
	mov	qword ptr [rsp + 0x38], rbp
	nop	word ptr cs:[rax + rax]
.label_66:
	mov	rax, qword ptr [r15]
	mov	rax, qword ptr [rax + rbp]
	mov	rbp, qword ptr [rax + r13*8]
	mov	rax, qword ptr [rsp]
	lea	r12, [rax + rbx]
	xor	r15d, r15d
	nop	word ptr cs:[rax + rax]
.label_65:
	bt	rbp, r15
	jae	.label_59
	mov	byte ptr [r12 + r15], 1
	test	r14b, r14b
	je	.label_59
	lea	edi, [rbx + r15]
	call	tolower
	cdqe	
	mov	rcx, qword ptr [rsp]
	mov	byte ptr [rcx + rax], 1
.label_59:
	inc	r15
	cmp	r15, 0x40
	jne	.label_65
	inc	r13
	add	rbx, 0x40
	cmp	r13, 4
	mov	r15, qword ptr [rsp + 0x30]
	mov	rbp, qword ptr [rsp + 0x38]
	jne	.label_66
	jmp	.label_51
	.section	.text
	.align	32
	#Procedure 0x40307a
	.globl sub_40307a
	.type sub_40307a, @function
sub_40307a:

	nop	dword ptr [rax + rax]
.label_69:
	cmp	al, 7
	ja	.label_51
	movzx	ecx, al
	mov	edx, 0xa4
	bt	edx, ecx
	jae	.label_51
	jmp	.label_57
	.section	.text
	.align	32
	#Procedure 0x4030a0

	.globl cycle_check_init
	.type cycle_check_init, @function
cycle_check_init:
	mov	qword ptr [rdi + 0x10], 0
	mov	dword ptr [rdi + 0x18], 0x95f616
	ret	
	.section	.text
	.align	32
	#Procedure 0x4030b0

	.globl hash_find_entry
	.type hash_find_entry, @function
hash_find_entry:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	push	rax
	mov	r12d, ecx
	mov	rbp, rdx
	mov	r13, rsi
	mov	r14, rdi
	call	safe_hasher
	mov	rbx, rax
	mov	qword ptr [rbp], rbx
	mov	rsi, qword ptr [rbx]
	xor	r15d, r15d
	test	rsi, rsi
	je	.label_76
	cmp	rsi, r13
	je	.label_74
	mov	rdi, r13
	call	qword ptr [r14 + 0x38]
	test	al, al
	je	.label_77
.label_74:
	mov	r15, qword ptr [rbx]
	test	r12b, r12b
	je	.label_76
	mov	rsi, qword ptr [rbx + 8]
	test	rsi, rsi
	je	.label_79
	movups	xmm0, xmmword ptr [rsi]
	movups	xmmword ptr [rbx], xmm0
	jmp	.label_75
.label_77:
	mov	rax, qword ptr [rbx + 8]
	xor	r15d, r15d
	test	rax, rax
	je	.label_76
	add	rbx, 8
	xor	r15d, r15d
	nop	
.label_78:
	mov	rsi, qword ptr [rax]
	cmp	rsi, r13
	je	.label_73
	mov	rdi, r13
	call	qword ptr [r14 + 0x38]
	test	al, al
	jne	.label_73
	mov	rbx, qword ptr [rbx]
	mov	rax, qword ptr [rbx + 8]
	add	rbx, 8
	test	rax, rax
	jne	.label_78
	jmp	.label_76
.label_73:
	mov	rsi, qword ptr [rbx]
	mov	r15, qword ptr [rsi]
	test	r12b, r12b
	je	.label_76
	mov	rax, qword ptr [rsi + 8]
	mov	qword ptr [rbx], rax
.label_75:
	mov	rdi, r14
	call	free_entry
.label_76:
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
	#Procedure 0x403171
	.globl sub_403171
	.type sub_403171, @function
sub_403171:

	nop	word ptr [rax + rax]
.label_79:
	mov	qword ptr [rbx], 0
	jmp	.label_76
	.section	.text
	.align	32
	#Procedure 0x403180
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
	#Procedure 0x403193
	.globl sub_403193
	.type sub_403193, @function
sub_403193:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4031a0

	.globl rpl_regfree
	.type rpl_regfree, @function
rpl_regfree:
	push	rbx
	mov	rbx, rdi
	mov	rdi, qword ptr [rbx]
	test	rdi, rdi
	je	.label_80
	call	free_dfa_content
.label_80:
	xorps	xmm0, xmm0
	movups	xmmword ptr [rbx], xmm0
	mov	rdi, qword ptr [rbx + 0x20]
	call	free
	mov	qword ptr [rbx + 0x20], 0
	mov	rdi, qword ptr [rbx + 0x28]
	call	free
	mov	qword ptr [rbx + 0x28], 0
	pop	rbx
	ret	
	.section	.text
	.align	32
	#Procedure 0x4031db
	.globl sub_4031db
	.type sub_4031db, @function
sub_4031db:

	nop	dword ptr [rax + rax]
.label_85:
	xorps	xmm0, xmm0
	movups	xmmword ptr [r15 + 0x18], xmm0
	pop	rbx
	pop	r14
	pop	r15
	ret	
	.section	.text
	.align	32
	#Procedure 0x4031ee
	.globl sub_4031ee
	.type sub_4031ee, @function
sub_4031ee:

	nop	word ptr cs:[rax + rax]
.label_82:
	add	r14, 0x10
.label_87:
	cmp	r14, qword ptr [r15 + 8]
	jae	.label_85
	cmp	qword ptr [r14], 0
	je	.label_82
	mov	rbx, qword ptr [r14 + 8]
	mov	rax, qword ptr [r15 + 0x40]
	test	rax, rax
	setne	cl
	test	rbx, rbx
	je	.label_81
	nop	word ptr cs:[rax + rax]
.label_86:
	test	cl, 1
	je	.label_83
	mov	rdi, qword ptr [rbx]
	call	rax
.label_83:
	mov	qword ptr [rbx], 0
	mov	rdx, qword ptr [rbx + 8]
	mov	rax, qword ptr [r15 + 0x48]
	mov	qword ptr [rbx + 8], rax
	mov	qword ptr [r15 + 0x48], rbx
	mov	rax, qword ptr [r15 + 0x40]
	test	rax, rax
	setne	cl
	test	rdx, rdx
	mov	rbx, rdx
	jne	.label_86
.label_81:
	test	cl, cl
	je	.label_84
	mov	rdi, qword ptr [r14]
	call	rax
.label_84:
	xorps	xmm0, xmm0
	movups	xmmword ptr [r14], xmm0
	jmp	.label_82
	.section	.text
	.align	32
	#Procedure 0x403270
	.globl hash_clear
	.type hash_clear, @function
hash_clear:

	push	r15
	push	r14
	push	rbx
	mov	r15, rdi
	mov	r14, qword ptr [r15]
	jmp	.label_87
	.section	.text
	.align	32
	#Procedure 0x40327d
	.globl sub_40327d
	.type sub_40327d, @function
sub_40327d:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x403280

	.globl duinfo_init
	.type duinfo_init, @function
duinfo_init:
	xorps	xmm0, xmm0
	movups	xmmword ptr [rdi], xmm0
	movabs	rax, 0x8000000000000000
	mov	qword ptr [rdi + 0x10], rax
	mov	qword ptr [rdi + 0x18], -1
	ret	
	.section	.text
	.align	32
	#Procedure 0x40329d
	.globl sub_40329d
	.type sub_40329d, @function
sub_40329d:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x4032a0

	.globl emit_ancillary_info
	.type emit_ancillary_info, @function
emit_ancillary_info:
	push	r14
	push	rbx
	push	rax
	mov	ebx, OFFSET FLAT:emit_ancillary_info.infomap
	mov	esi, OFFSET FLAT:label_88
	nop	
.label_101:
	mov	edi, OFFSET FLAT:label_93
	call	strcmp
	test	eax, eax
	je	.label_99
	mov	rsi, qword ptr [rbx + 0x10]
	add	rbx, 0x10
	test	rsi, rsi
	jne	.label_101
.label_99:
	mov	rax, qword ptr [rbx + 8]
	test	rax, rax
	mov	ebx, OFFSET FLAT:label_93
	cmovne	rbx, rax
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_94
	mov	edx, 5
	call	dcgettext
	mov	rsi, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:label_91
	mov	ecx, OFFSET FLAT:label_92
	xor	eax, eax
	call	__printf_chk
	mov	edi, 5
	xor	esi, esi
	call	setlocale
	test	rax, rax
	je	.label_90
	mov	esi, OFFSET FLAT:label_98
	mov	edx, 3
	mov	rdi, rax
	call	strncmp
	test	eax, eax
	je	.label_90
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_89
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	call	fputs_unlocked
.label_90:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_95
	mov	edx, 5
	call	dcgettext
	mov	rsi, rax
	mov	r14d, OFFSET FLAT:label_93
	mov	edi, 1
	mov	edx, OFFSET FLAT:label_92
	mov	ecx, OFFSET FLAT:label_93
	xor	eax, eax
	call	__printf_chk
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_100
	mov	edx, 5
	call	dcgettext
	mov	rdx, rax
	cmp	rbx, r14
	mov	eax, OFFSET FLAT:label_96
	mov	ecx, OFFSET FLAT:label_97
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
	#Procedure 0x4033ba
	.globl sub_4033ba
	.type sub_4033ba, @function
sub_4033ba:

	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4033c0
	.globl rpl_re_match_2
	.type rpl_re_match_2, @function
rpl_re_match_2:

	push	rax
	push	1
	push	qword ptr [rsp + 0x20]
	push	qword ptr [rsp + 0x20]
	push	0
	call	re_search_2_stub
	add	rsp, 0x20
	pop	rcx
	ret	
	.section	.text
	.align	32
	#Procedure 0x4033d8
	.globl sub_4033d8
	.type sub_4033d8, @function
sub_4033d8:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4033e0

	.globl fts_set_stat_required
	.type fts_set_stat_required, @function
fts_set_stat_required:
	movzx	eax, word ptr [rdi + 0x70]
	cmp	eax, 0xb
	jne	.label_102
	movzx	eax, sil
	inc	rax
	mov	qword ptr [rdi + 0xa8], rax
	ret	
.label_102:
	push	rax
	call	abort
	.section	.text
	.align	32
	#Procedure 0x4033fe
	.globl sub_4033fe
	.type sub_4033fe, @function
sub_4033fe:

	nop	
	.section	.text
	.align	32
	#Procedure 0x403400

	.globl hash_string
	.type hash_string, @function
hash_string:
	mov	al, byte ptr [rdi]
	xor	edx, edx
	test	al, al
	je	.label_103
	inc	rdi
	xor	edx, edx
	nop	dword ptr [rax]
.label_104:
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
	jne	.label_104
.label_103:
	mov	rax, rdx
	ret	
	.section	.text
	.align	32
	#Procedure 0x403433
	.globl sub_403433
	.type sub_403433, @function
sub_403433:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x403440

	.globl quotearg_n
	.type quotearg_n, @function
quotearg_n:
	mov	rdx, -1
	mov	ecx, OFFSET FLAT:default_quoting_options
	jmp	quotearg_n_options
	.section	.text
	.align	32
	#Procedure 0x40344e
	.globl sub_40344e
	.type sub_40344e, @function
sub_40344e:

	nop	
	.section	.text
	.align	32
	#Procedure 0x403450

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
	js	.label_108
	mov	eax, dword ptr [r13]
	mov	rbp,  qword ptr [word ptr [rip + slotvec]]
	cmp	dword ptr [dword ptr [rip + nslots]],  r12d
	mov	qword ptr [rsp + 0x18], r13
	mov	dword ptr [rsp], eax
	mov	qword ptr [rsp + 0x10], rbx
	mov	qword ptr [rsp + 8], r15
	jg	.label_111
	cmp	r12d, 0x7fffffff
	je	.label_106
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
	jne	.label_109
	movups	xmm0,  xmmword ptr [word ptr [rip + slotvec0]]
	movups	xmmword ptr [r14], xmm0
.label_109:
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
.label_111:
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
	jbe	.label_107
	mov	rax, qword ptr [rsp + 0x18]
	mov	ebp, dword ptr [rsp]
	jmp	.label_110
.label_107:
	lea	rax, [rbp + r13]
	lea	r12, [rbp + r13 + 8]
	inc	r15
	mov	qword ptr [rax], r15
	mov	eax, OFFSET FLAT:slot0
	cmp	r14, rax
	mov	ebp, dword ptr [rsp]
	je	.label_105
	mov	rdi, r14
	call	free
.label_105:
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
.label_110:
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
.label_108:
	call	abort
.label_106:
	call	xalloc_die
	.section	.text
	.align	32
	#Procedure 0x40360d
	.globl sub_40360d
	.type sub_40360d, @function
sub_40360d:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x403610

	.globl exclude_fnmatch
	.type exclude_fnmatch, @function
exclude_fnmatch:
	push	rbp
	push	r15
	push	r14
	push	rbx
	push	rax
	mov	r15d, edx
	mov	rbx, rsi
	mov	r14, rdi
	mov	eax, OFFSET FLAT:fnmatch
	mov	ebp, OFFSET FLAT:fnmatch_no_wildcards
	test	r15d, 0x10000000
	cmovne	rbp, rax
	call	rbp
	mov	ecx, eax
	test	ecx, ecx
	sete	al
	test	r15d, 0x40000000
	jne	.label_113
	mov	dl, byte ptr [rbx]
	test	ecx, ecx
	setne	cl
	test	dl, dl
	je	.label_113
	test	cl, cl
	je	.label_113
	inc	rbx
	nop	dword ptr [rax]
.label_114:
	cmp	dl, 0x2f
	jne	.label_112
	cmp	byte ptr [rbx], 0x2f
	je	.label_112
	mov	rdi, r14
	mov	rsi, rbx
	mov	edx, r15d
	call	rbp
	test	eax, eax
	sete	al
.label_112:
	test	al, 1
	jne	.label_113
	movzx	edx, byte ptr [rbx]
	inc	rbx
	test	dl, dl
	jne	.label_114
.label_113:
	and	al, 1
	add	rsp, 8
	pop	rbx
	pop	r14
	pop	r15
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x403695
	.globl sub_403695
	.type sub_403695, @function
sub_403695:

	nop	word ptr cs:[rax + rax]
.label_115:
	call	xalloc_die
	.section	.text
	.align	32
	#Procedure 0x4036a5
	.globl sub_4036a5
	.type sub_4036a5, @function
sub_4036a5:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4036af

	.globl xcalloc
	.type xcalloc, @function
xcalloc:
	push	rax
	movabs	rax, 0x7fffffffffffffff
	xor	edx, edx
	div	rsi
	cmp	rax, rdi
	jb	.label_115
	call	rpl_calloc
	test	rax, rax
	je	.label_115
	pop	rcx
	ret	
	.section	.text
	.align	32
	#Procedure 0x4036d0

	.globl i_ring_pop
	.type i_ring_pop, @function
i_ring_pop:
	push	rbx
	mov	rbx, rdi
	call	i_ring_empty
	test	al, al
	jne	.label_116
	mov	ecx, dword ptr [rbx + 0x10]
	mov	edx, dword ptr [rbx + 0x14]
	mov	eax, dword ptr [rbx + rdx*4]
	mov	dword ptr [rbx + rdx*4], ecx
	mov	ecx, dword ptr [rbx + 0x14]
	cmp	ecx, dword ptr [rbx + 0x18]
	jne	.label_117
	mov	byte ptr [rbx + 0x1c], 1
	pop	rbx
	ret	
.label_116:
	call	abort
	.section	.text
	.align	32
	#Procedure 0x4036fc
	.globl sub_4036fc
	.type sub_4036fc, @function
sub_4036fc:

	nop	word ptr [rax + rax]
.label_117:
	add	ecx, 3
	and	ecx, 3
	mov	dword ptr [rbx + 0x14], ecx
	pop	rbx
	ret	
	.section	.text
	.align	32
	#Procedure 0x403710

	.globl di_ent_hash
	.type di_ent_hash, @function
di_ent_hash:
	mov	rax, qword ptr [rdi]
	xor	edx, edx
	div	rsi
	mov	rax, rdx
	ret	
	.section	.text
	.align	32
	#Procedure 0x40371c
	.globl sub_40371c
	.type sub_40371c, @function
sub_40371c:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x403720

	.globl map_inode_number
	.type map_inode_number, @function
map_inode_number:
	push	r14
	push	rbx
	push	rax
	mov	rbx, rsi
	mov	r14, rdi
	movabs	rdi, 0x7ffffffffffffffe
	lea	rax, [rbx - 1]
	cmp	rax, rdi
	jae	.label_118
	mov	rax, rbx
.label_119:
	add	rsp, 8
	pop	rbx
	pop	r14
	ret	
.label_118:
	cmp	qword ptr [r14 + 8], 0
	jne	.label_120
	inc	rdi
	call	ino_map_alloc
	mov	rcx, rax
	mov	qword ptr [r14 + 8], rcx
	mov	rax, -1
	test	rcx, rcx
	je	.label_119
.label_120:
	mov	rdi, qword ptr [r14 + 8]
	mov	rsi, rbx
	add	rsp, 8
	pop	rbx
	pop	r14
	jmp	ino_map_insert
	.section	.text
	.align	32
	#Procedure 0x40377d
	.globl sub_40377d
	.type sub_40377d, @function
sub_40377d:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x403780
	.globl rotl8
	.type rotl8, @function
rotl8:

	mov	eax, edi
	mov	ecx, esi
	shl	eax, cl
	mov	ecx, 8
	sub	ecx, esi
	shr	edi, cl
	or	edi, eax
	mov	eax, edi
	ret	
	.section	.text
	.align	32
	#Procedure 0x403794
	.globl sub_403794
	.type sub_403794, @function
sub_403794:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4037a0

	.globl hard_locale
	.type hard_locale, @function
hard_locale:
	push	rbx
	xor	esi, esi
	call	setlocale
	mov	bl, 1
	test	rax, rax
	je	.label_122
	cmp	byte ptr [rax], 0x43
	jne	.label_124
	cmp	byte ptr [rax + 1], 0
	je	.label_121
.label_124:
	mov	esi, OFFSET FLAT:label_123
	mov	rdi, rax
	call	strcmp
	test	eax, eax
	jne	.label_122
.label_121:
	xor	ebx, ebx
.label_122:
	mov	eax, ebx
	pop	rbx
	ret	
	.section	.text
	.align	32
	#Procedure 0x4037d1
	.globl sub_4037d1
	.type sub_4037d1, @function
sub_4037d1:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4037e0

	.globl check_arrival
	.type check_arrival, @function
check_arrival:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x68
	mov	qword ptr [rsp + 0x48], r8
	mov	r13, rcx
	mov	r14, rdx
	mov	rax, qword ptr [rdi + 0x98]
	mov	dword ptr [rsp + 4], 0
	mov	qword ptr [rsp + 0x30], rax
	mov	rax, qword ptr [rax]
	mov	rcx, r14
	shl	rcx, 4
	mov	rax, qword ptr [rax + rcx]
	mov	qword ptr [rsp + 0x38], rax
	mov	rbp, qword ptr [rsi + 8]
	mov	qword ptr [rsp + 8], rdi
	movsxd	rax, dword ptr [rdi + 0xe0]
	mov	qword ptr [rsp + 0x28], r9
	lea	rcx, [rax + r9]
	cmp	rbp, rcx
	mov	qword ptr [rsp + 0x40], rsi
	jle	.label_141
.label_143:
	mov	rbx, qword ptr [rsi]
	mov	rax, qword ptr [rsi + 0x10]
	test	rbx, rbx
	cmove	rbx, r13
	mov	rdi, qword ptr [rsp + 8]
	mov	rcx, qword ptr [rdi + 0x48]
	mov	qword ptr [rsp + 0x58], rcx
	mov	rcx, qword ptr [rdi + 0xb8]
	mov	qword ptr [rsp + 0x50], rcx
	mov	qword ptr [rdi + 0xb8], rax
	mov	qword ptr [rdi + 0x48], rbx
	lea	rsi, [rbx - 1]
	mov	edx, dword ptr [rdi + 0xa0]
	call	re_string_context_at
	mov	ebp, eax
	cmp	rbx, r13
	jne	.label_127
	lea	rdi, [rsp + 0x10]
	mov	rsi, r14
	call	re_node_set_init_1
	mov	r15d, eax
	mov	dword ptr [rsp + 4], r15d
	test	r15d, r15d
	jne	.label_128
	lea	rsi, [rsp + 0x10]
	mov	rdi, qword ptr [rsp + 0x30]
	mov	rdx, qword ptr [rsp + 0x38]
	mov	ecx, dword ptr [rsp + 0xa0]
	call	check_arrival_expand_ecl
	mov	dword ptr [rsp + 4], eax
	test	eax, eax
	je	.label_137
	jmp	.label_130
.label_127:
	mov	rax, qword ptr [rsp + 8]
	mov	rax, qword ptr [rax + 0xb8]
	mov	r14, qword ptr [rax + rbx*8]
	test	r14, r14
	je	.label_139
	test	byte ptr [r14 + 0x68], 0x40
	jne	.label_125
	xorps	xmm0, xmm0
	movaps	xmmword ptr [rsp + 0x10], xmm0
	mov	qword ptr [rsp + 0x20], 0
	jmp	.label_142
.label_139:
	xorps	xmm0, xmm0
	movaps	xmmword ptr [rsp + 0x10], xmm0
	mov	qword ptr [rsp + 0x20], 0
	xor	r14d, r14d
	jmp	.label_126
.label_125:
	lea	rsi, [r14 + 8]
	lea	rdi, [rsp + 0x10]
	call	re_node_set_init_copy
	mov	r15d, eax
	mov	dword ptr [rsp + 4], r15d
	test	r15d, r15d
	jne	.label_128
.label_142:
	test	byte ptr [r14 + 0x68], 0x40
	je	.label_126
.label_137:
	cmp	qword ptr [rsp + 0x18], 0
	je	.label_136
	lea	rsi, [rsp + 0x10]
	mov	rdi, qword ptr [rsp + 8]
	mov	rdx, rbx
	mov	rcx, qword ptr [rsp + 0x38]
	mov	r8d, dword ptr [rsp + 0xa0]
	call	expand_bkref_cache
	mov	dword ptr [rsp + 4], eax
	test	eax, eax
	jne	.label_130
.label_136:
	lea	rdi, [rsp + 4]
	lea	rdx, [rsp + 0x10]
	mov	rsi, qword ptr [rsp + 0x30]
	mov	ecx, ebp
	call	re_acquire_state_context
	mov	r14, rax
	test	r14, r14
	jne	.label_129
	mov	eax, dword ptr [rsp + 4]
	test	eax, eax
	jne	.label_130
.label_129:
	mov	rax, qword ptr [rsp + 8]
	mov	rax, qword ptr [rax + 0xb8]
	mov	qword ptr [rax + rbx*8], r14
.label_126:
	cmp	rbx, qword ptr [rsp + 0x28]
	jge	.label_135
	inc	rbx
	lea	r12, [rsp + 0x10]
	mov	r15, rbx
	xor	r13d, r13d
	mov	rbp, qword ptr [rsp + 0x38]
	nop	
.label_140:
	lea	rbx, [r15 - 1]
	mov	rax, qword ptr [rsp + 8]
	movsxd	rax, dword ptr [rax + 0xe0]
	cmp	r13, rax
	jg	.label_135
	mov	qword ptr [rsp + 0x18], 0
	mov	rax, qword ptr [rsp + 8]
	mov	rax, qword ptr [rax + 0xb8]
	mov	rsi, qword ptr [rax + r15*8]
	test	rsi, rsi
	je	.label_133
	add	rsi, 8
	mov	rdi, r12
	call	re_node_set_merge
	mov	dword ptr [rsp + 4], eax
	test	eax, eax
	jne	.label_130
.label_133:
	test	r14, r14
	je	.label_132
	add	r14, 0x20
	mov	rdi, qword ptr [rsp + 8]
	mov	rsi, rbx
	mov	rdx, r14
	mov	rcx, r12
	call	check_arrival_add_next_nodes
	mov	dword ptr [rsp + 4], eax
	test	eax, eax
	jne	.label_130
.label_132:
	cmp	qword ptr [rsp + 0x18], 0
	je	.label_134
	mov	qword ptr [rsp + 0x60], rbx
	mov	r14, qword ptr [rsp + 8]
	mov	rdi, qword ptr [rsp + 0x30]
	mov	rsi, r12
	mov	rdx, rbp
	mov	ebx, dword ptr [rsp + 0xa0]
	mov	ecx, ebx
	call	check_arrival_expand_ecl
	mov	dword ptr [rsp + 4], eax
	test	eax, eax
	jne	.label_130
	mov	rdi, r14
	mov	rsi, r12
	mov	rdx, r15
	mov	rcx, rbp
	mov	r8d, ebx
	call	expand_bkref_cache
	mov	dword ptr [rsp + 4], eax
	test	eax, eax
	mov	rbx, qword ptr [rsp + 0x60]
	jne	.label_130
.label_134:
	mov	rdi, qword ptr [rsp + 8]
	mov	edx, dword ptr [rdi + 0xa0]
	mov	rsi, rbx
	call	re_string_context_at
	lea	rdi, [rsp + 4]
	mov	rsi, qword ptr [rsp + 0x30]
	mov	rdx, r12
	mov	ecx, eax
	call	re_acquire_state_context
	mov	r14, rax
	test	r14, r14
	jne	.label_138
	mov	eax, dword ptr [rsp + 4]
	test	eax, eax
	jne	.label_130
.label_138:
	inc	r13
	test	r14, r14
	mov	rax, qword ptr [rsp + 8]
	mov	rax, qword ptr [rax + 0xb8]
	mov	qword ptr [rax + r15*8], r14
	mov	eax, 0
	cmovne	r13, rax
	cmp	r15, qword ptr [rsp + 0x28]
	lea	r15, [r15 + 1]
	jl	.label_140
	dec	r15
	mov	rbx, r15
.label_135:
	mov	rdi, qword ptr [rsp + 0x20]
	call	free
	mov	rdx, qword ptr [rsp + 8]
	mov	rax, qword ptr [rdx + 0xb8]
	mov	rcx, qword ptr [rsp + 0x28]
	mov	rdi, qword ptr [rax + rcx*8]
	test	rdi, rdi
	mov	rax, qword ptr [rsp + 0x40]
	mov	qword ptr [rax], rbx
	mov	rax, qword ptr [rsp + 0x50]
	mov	qword ptr [rdx + 0xb8], rax
	mov	rax, qword ptr [rsp + 0x58]
	mov	qword ptr [rdx + 0x48], rax
	je	.label_131
	add	rdi, 8
	mov	rsi, qword ptr [rsp + 0x48]
	call	re_node_set_contains
	xor	r15d, r15d
	test	rax, rax
	jne	.label_128
.label_131:
	mov	r15d, 1
.label_128:
	mov	eax, r15d
	add	rsp, 0x68
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_130:
	mov	rdi, qword ptr [rsp + 0x20]
	call	free
	mov	r15d, dword ptr [rsp + 4]
	jmp	.label_128
.label_141:
	movabs	rdx, 0x7fffffffffffffff
	sub	rdx, rbp
	mov	r15d, 0xc
	cmp	rdx, rcx
	jle	.label_128
	mov	rcx, qword ptr [rsp + 0x28]
	lea	r12, [rax + rcx + 1]
	lea	rbx, [r12 + rbp]
	mov	rax, rbx
	shr	rax, 0x3d
	jne	.label_128
	mov	rdi, qword ptr [rsi + 0x10]
	lea	rsi, [rbx*8]
	call	realloc
	test	rax, rax
	je	.label_128
	mov	r15, qword ptr [rsp + 0x40]
	mov	qword ptr [r15 + 0x10], rax
	mov	qword ptr [r15 + 8], rbx
	lea	rdi, [rax + rbp*8]
	shl	r12, 3
	xor	esi, esi
	mov	rdx, r12
	call	memset
	mov	rsi, r15
	jmp	.label_143
	.section	.text
	.align	32
	#Procedure 0x403bfe
	.globl sub_403bfe
	.type sub_403bfe, @function
sub_403bfe:

	nop	
	.section	.text
	.align	32
	#Procedure 0x403c00

	.globl re_node_set_alloc
	.type re_node_set_alloc, @function
re_node_set_alloc:
	push	rbx
	mov	rbx, rdi
	mov	qword ptr [rbx], rsi
	mov	qword ptr [rbx + 8], 0
	lea	rdi, [rsi*8]
	call	malloc
	mov	rcx, rax
	mov	qword ptr [rbx + 0x10], rcx
	mov	eax, 0xc
	test	rcx, rcx
	je	.label_144
	xor	eax, eax
.label_144:
	pop	rbx
	ret	
	.section	.text
	.align	32
	#Procedure 0x403c31
	.globl sub_403c31
	.type sub_403c31, @function
sub_403c31:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x403c40

	.globl check_subexp_limits
	.type check_subexp_limits, @function
check_subexp_limits:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x28
	mov	qword ptr [rsp + 0x18], r9
	mov	qword ptr [rsp + 0x10], r8
	mov	qword ptr [rsp], rdx
	mov	r12, rsi
	mov	r13, rdi
	xor	eax, eax
	mov	qword ptr [rsp + 0x20], rcx
	cmp	qword ptr [rcx + 8], 0
	jle	.label_145
	xor	r15d, r15d
	nop	word ptr [rax + rax]
.label_156:
	mov	rax, qword ptr [rsp + 0x20]
	mov	rax, qword ptr [rax + 0x10]
	mov	rax, qword ptr [rax + r15*8]
	lea	rax, [rax + rax*4]
	mov	rcx, qword ptr [rsp + 0x18]
	mov	rdx, qword ptr [rsp + 0x10]
	cmp	qword ptr [rdx + rax*8 + 0x10], rcx
	jge	.label_146
	mov	rcx, qword ptr [rsp + 0x18]
	mov	rdx, qword ptr [rsp + 0x10]
	cmp	qword ptr [rdx + rax*8 + 8], rcx
	jl	.label_146
	mov	rsi, qword ptr [rsp + 0x10]
	mov	rcx, qword ptr [rsi + rax*8]
	mov	rdx, qword ptr [r13]
	shl	rcx, 4
	mov	r14, qword ptr [rdx + rcx]
	mov	rcx, qword ptr [rsp + 0x18]
	cmp	qword ptr [rsi + rax*8 + 0x18], rcx
	jne	.label_159
	cmp	qword ptr [r12 + 8], 0
	jle	.label_146
	mov	r8, qword ptr [r12 + 8]
	mov	rcx, qword ptr [r12 + 0x10]
	mov	rdx, qword ptr [r13]
	mov	r9, -1
	xor	edi, edi
	mov	rsi, -1
	nop	word ptr [rax + rax]
.label_149:
	mov	rbx, qword ptr [rcx + rdi*8]
	mov	rbp, rbx
	shl	rbp, 4
	movzx	eax, byte ptr [rdx + rbp + 8]
	cmp	al, 9
	je	.label_150
	cmp	al, 8
	jne	.label_155
	cmp	r14, qword ptr [rdx + rbp]
	cmove	rsi, rbx
	jmp	.label_155
	.section	.text
	.align	32
	#Procedure 0x403d32
	.globl sub_403d32
	.type sub_403d32, @function
sub_403d32:

	nop	word ptr cs:[rax + rax]
.label_150:
	mov	rax, qword ptr [r13]
	cmp	r14, qword ptr [rax + rbp]
	cmove	r9, rbx
.label_155:
	inc	rdi
	cmp	rdi, r8
	jl	.label_149
	test	rsi, rsi
	js	.label_153
	mov	rdi, r13
	mov	rdx, r12
	mov	rcx, qword ptr [rsp]
	mov	rbx, r9
	call	sub_epsilon_src_nodes
	mov	r9, rbx
	test	eax, eax
	jne	.label_145
.label_153:
	test	r9, r9
	js	.label_146
	cmp	qword ptr [r12 + 8], 0
	jle	.label_146
	xor	ebp, ebp
	mov	qword ptr [rsp + 8], r12
	jmp	.label_147
.label_159:
	cmp	qword ptr [r12 + 8], 0
	jle	.label_146
	xor	ebp, ebp
	nop	word ptr cs:[rax + rax]
.label_158:
	mov	rax, qword ptr [r12 + 0x10]
	mov	rsi, qword ptr [rax + rbp*8]
	mov	rax, qword ptr [r13]
	mov	rcx, rsi
	shl	rcx, 4
	mov	edx, dword ptr [rax + rcx + 8]
	mov	edi, 0xfe
	and	edx, edi
	or	edx, 1
	cmp	edx, 9
	jne	.label_152
	cmp	r14, qword ptr [rax + rcx]
	jne	.label_152
	mov	rdi, r13
	mov	rdx, r12
	mov	rcx, qword ptr [rsp]
	call	sub_epsilon_src_nodes
	test	eax, eax
	jne	.label_145
.label_152:
	inc	rbp
	cmp	rbp, qword ptr [r12 + 8]
	jl	.label_158
	jmp	.label_146
.label_151:
	mov	rdi, r12
	mov	rsi, r14
	mov	r14, qword ptr [rsp + 8]
	mov	rdx, r14
	mov	rcx, qword ptr [rsp]
	call	sub_epsilon_src_nodes
	test	eax, eax
	mov	r9, rbx
	mov	r13, r12
	mov	r12, r14
	jne	.label_145
	dec	rbp
	jmp	.label_148
.label_147:
	mov	rax, qword ptr [r12 + 0x10]
	mov	r14, qword ptr [rax + rbp*8]
	mov	rax, qword ptr [r13 + 0x38]
	lea	rbx, [r14 + r14*2]
	lea	rdi, [rax + rbx*8]
	mov	rsi, r9
	mov	r12, r13
	mov	r13, r9
	call	re_node_set_contains
	test	rax, rax
	je	.label_157
	mov	r9, r13
	jmp	.label_154
	.section	.text
	.align	32
	#Procedure 0x403e5d
	.globl sub_403e5d
	.type sub_403e5d, @function
sub_403e5d:

	nop	dword ptr [rax]
.label_157:
	mov	rax, qword ptr [r12 + 0x30]
	lea	rdi, [rax + rbx*8]
	mov	rbx, r13
	mov	rsi, r13
	call	re_node_set_contains
	test	rax, rax
	je	.label_151
	mov	r9, rbx
.label_154:
	mov	r13, r12
	mov	r12, qword ptr [rsp + 8]
.label_148:
	inc	rbp
	cmp	rbp, qword ptr [r12 + 8]
	jl	.label_147
	nop	
.label_146:
	inc	r15
	xor	eax, eax
	mov	rcx, qword ptr [rsp + 0x20]
	cmp	r15, qword ptr [rcx + 8]
	jl	.label_156
.label_145:
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
	#Procedure 0x403eb3
	.globl sub_403eb3
	.type sub_403eb3, @function
sub_403eb3:

	nop	word ptr cs:[rax + rax]
.label_160:
	call	xalloc_die
.label_164:
	xor	eax, eax
.label_162:
	add	rsp, 8
	pop	rbx
	pop	r14
	ret	
	.section	.text
	.align	32
	#Procedure 0x403ecf

	.globl mount_point_in_fts_cycle
	.type mount_point_in_fts_cycle, @function
mount_point_in_fts_cycle:
	push	r14
	push	rbx
	push	rax
	mov	rbx, rdi
	mov	r14, qword ptr [rbx]
	cmp	qword ptr [word ptr [rip + di_mnt]],  0
	jne	.label_163
	call	di_set_alloc
	mov	qword ptr [word ptr [rip + di_mnt]],  rax
	test	rax, rax
	je	.label_160
	call	fill_mount_table
.label_163:
	cmp	r14, rbx
	je	.label_164
	nop	
.label_161:
	mov	rdi,  qword ptr [word ptr [rip + di_mnt]]
	mov	rsi, qword ptr [rbx + 0x78]
	mov	rdx, qword ptr [rbx + 0x80]
	call	di_set_lookup
	mov	ecx, eax
	mov	al, 1
	test	ecx, ecx
	jg	.label_162
	mov	rbx, qword ptr [rbx + 8]
	xor	eax, eax
	test	rbx, rbx
	je	.label_162
	cmp	rbx, r14
	jne	.label_161
	jmp	.label_162
.label_166:
	add	edi, -0x30
	cmp	edi, 0xa
	jb	.label_165
	xor	eax, eax
	ret	
	.section	.text
	.align	32
	#Procedure 0x403f3b
	.globl sub_403f3b
	.type sub_403f3b, @function
sub_403f3b:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x403f45
	.globl c_isalnum
	.type c_isalnum, @function
c_isalnum:

	mov	al, 1
	lea	ecx, [rdi - 0x41]
	cmp	ecx, 0x39
	ja	.label_166
	movabs	rdx, 0x3ffffff03ffffff
	bt	rdx, rcx
	jae	.label_166
.label_165:
	ret	
	.section	.text
	.align	32
	#Procedure 0x403f60

	.globl re_acquire_state
	.type re_acquire_state, @function
re_acquire_state:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x18
	mov	r12, rdx
	mov	rbx, rsi
	cmp	qword ptr [r12 + 8], 0
	je	.label_167
	mov	qword ptr [rsp + 8], rdi
	xor	esi, esi
	mov	rdi, r12
	call	calc_state_hash
	mov	r13, rax
	mov	rax, qword ptr [rbx + 0x40]
	mov	rcx, r13
	mov	qword ptr [rsp + 0x10], rbx
	and	rcx, qword ptr [rbx + 0x88]
	lea	rcx, [rcx + rcx*2]
	cmp	qword ptr [rax + rcx*8], 0
	jle	.label_170
	lea	rbp, [rax + rcx*8]
	mov	r14, qword ptr [rax + rcx*8 + 0x10]
	xor	r15d, r15d
	nop	dword ptr [rax]
.label_173:
	mov	rbx, qword ptr [r14 + r15*8]
	cmp	r13, qword ptr [rbx]
	jne	.label_168
	lea	rdi, [rbx + 8]
	mov	rsi, r12
	call	re_node_set_compare
	test	al, al
	jne	.label_172
.label_168:
	inc	r15
	cmp	r15, qword ptr [rbp]
	jl	.label_173
.label_170:
	mov	rdi, qword ptr [rsp + 0x10]
	mov	rsi, r12
	mov	rdx, r13
	call	create_ci_newstate
	mov	rbx, rax
	test	rbx, rbx
	je	.label_171
.label_172:
	mov	rax, rbx
	add	rsp, 0x18
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_171:
	mov	rax, qword ptr [rsp + 8]
	mov	dword ptr [rax], 0xc
.label_169:
	xor	ebx, ebx
	jmp	.label_172
	.section	.text
	.align	32
	#Procedure 0x40401b
	.globl sub_40401b
	.type sub_40401b, @function
sub_40401b:

	nop	word ptr cs:[rax + rax]
.label_167:
	mov	dword ptr [rdi], 0
	jmp	.label_169
	.section	.text
	.align	32
	#Procedure 0x404030

	.globl i_ring_init
	.type i_ring_init, @function
i_ring_init:
	mov	byte ptr [rdi + 0x1c], 1
	mov	qword ptr [rdi + 0x14], 0
	xor	eax, eax
	nop	
.label_174:
	mov	dword ptr [rdi + rax*4], esi
	inc	rax
	cmp	rax, 4
	jne	.label_174
	mov	dword ptr [rdi + 0x10], esi
	ret	
	.section	.text
	.align	32
	#Procedure 0x404050

	.globl xstrtoimax
	.type xstrtoimax, @function
xstrtoimax:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x18
	mov	r13, r8
	mov	r14, rcx
	mov	ebx, edx
	mov	r12, rdi
	cmp	ebx, 0x25
	jae	.label_190
	test	rsi, rsi
	lea	r15, [rsp + 0x10]
	cmovne	r15, rsi
	call	__errno_location
	mov	rbp, rax
	mov	dword ptr [rbp], 0
	mov	rdi, r12
	mov	rsi, r15
	mov	edx, ebx
	call	strtoimax
	mov	qword ptr [rsp + 8], rax
	mov	rax, qword ptr [r15]
	cmp	rax, r12
	je	.label_179
	mov	eax, dword ptr [rbp]
	xor	r12d, r12d
	test	eax, eax
	je	.label_181
	mov	r12d, 4
	cmp	eax, 0x22
	jne	.label_183
	mov	r12d, 1
.label_181:
	test	r13, r13
	jne	.label_187
	jmp	.label_177
.label_179:
	mov	r12d, 4
	test	r13, r13
	je	.label_183
	movsx	esi, byte ptr [rax]
	test	esi, esi
	je	.label_183
	mov	rdi, r13
	call	strchr
	test	rax, rax
	je	.label_183
	mov	qword ptr [rsp + 8], 1
	xor	r12d, r12d
.label_187:
	mov	rax, qword ptr [r15]
	movsx	ebp, byte ptr [rax]
	test	ebp, ebp
	je	.label_177
	mov	rdi, r13
	mov	esi, ebp
	call	strchr
	test	rax, rax
	je	.label_180
	mov	esi, 0x400
	mov	ebx, 1
	add	ebp, -0x45
	cmp	ebp, 0x2f
	ja	.label_176
	movabs	rax, 0x814400308945
	bt	rax, rbp
	jae	.label_176
	mov	esi, 0x30
	mov	rdi, r13
	call	strchr
	mov	ebx, 1
	test	rax, rax
	je	.label_189
	mov	rax, qword ptr [r15]
	movsx	ecx, byte ptr [rax + 1]
	mov	ebx, 1
	cmp	ecx, 0x42
	mov	esi, 0x400
	je	.label_188
	cmp	ecx, 0x44
	je	.label_188
	cmp	ecx, 0x69
	jne	.label_176
	xor	ecx, ecx
	cmp	byte ptr [rax + 2], 0x42
	sete	cl
	lea	rbx, [rcx + rcx + 1]
	jmp	.label_176
.label_189:
	mov	esi, 0x400
	jmp	.label_176
.label_188:
	mov	esi, 0x3e8
	mov	ebx, 2
.label_176:
	mov	rax, qword ptr [r15]
	movsx	ecx, byte ptr [rax]
	add	ecx, -0x42
	cmp	ecx, 0x35
	ja	.label_180
	xor	eax, eax
	jmp	qword ptr [word ptr [+ (rcx * 8) + label_182]]
.label_3123:
	lea	rdi, [rsp + 8]
	mov	edx, 3
	call	bkm_scale_by_power
	jmp	.label_175
.label_180:
	mov	rax, qword ptr [rsp + 8]
	mov	qword ptr [r14], rax
	or	r12d, 2
	jmp	.label_183
.label_3124:
	lea	rdi, [rsp + 8]
	mov	edx, 1
	call	bkm_scale_by_power
	jmp	.label_175
.label_3125:
	lea	rdi, [rsp + 8]
	mov	edx, 2
	call	bkm_scale_by_power
	jmp	.label_175
.label_3127:
	lea	rdi, [rsp + 8]
	mov	edx, 4
	call	bkm_scale_by_power
	jmp	.label_175
.label_3121:
	lea	rdi, [rsp + 8]
	mov	esi, 0x400
	jmp	.label_178
.label_3122:
	lea	rdi, [rsp + 8]
	mov	edx, 6
	call	bkm_scale_by_power
	jmp	.label_175
.label_3126:
	lea	rdi, [rsp + 8]
	mov	edx, 5
	call	bkm_scale_by_power
	jmp	.label_175
.label_3128:
	lea	rdi, [rsp + 8]
	mov	edx, 8
	call	bkm_scale_by_power
	jmp	.label_175
.label_3129:
	lea	rdi, [rsp + 8]
	mov	edx, 7
	call	bkm_scale_by_power
	jmp	.label_175
.label_3130:
	lea	rdi, [rsp + 8]
	mov	esi, 0x200
	jmp	.label_178
.label_3131:
	lea	rdi, [rsp + 8]
	mov	esi, 2
.label_178:
	call	bkm_scale
.label_175:
	or	eax, r12d
	mov	rcx, qword ptr [r15]
	lea	rdx, [rcx + rbx]
	mov	qword ptr [r15], rdx
	mov	r12d, eax
	or	r12d, 2
	cmp	byte ptr [rcx + rbx], 0
	cmove	r12d, eax
.label_177:
	mov	rax, qword ptr [rsp + 8]
	mov	qword ptr [r14], rax
.label_183:
	mov	eax, r12d
	add	rsp, 0x18
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_190:
	mov	edi, OFFSET FLAT:label_184
	mov	esi, OFFSET FLAT:label_185
	mov	edx, 0x54
	mov	ecx, OFFSET FLAT:label_186
	call	__assert_fail
	.section	.text
	.align	32
	#Procedure 0x4042ce
	.globl sub_4042ce
	.type sub_4042ce, @function
sub_4042ce:

	nop	
	.section	.text
	.align	32
	#Procedure 0x4042d0

	.globl timetostr
	.type timetostr, @function
timetostr:
	jmp	imaxtostr
	.section	.text
	.align	32
	#Procedure 0x4042d5
	.globl sub_4042d5
	.type sub_4042d5, @function
sub_4042d5:

	nop	dword ptr [rax]
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4042e0

	.globl re_string_allocate
	.type re_string_allocate, @function
re_string_allocate:
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	mov	r14, rdx
	mov	r12, rsi
	mov	r13, rdi
	mov	r15, qword ptr [rsp + 0x30]
	movsxd	rax, dword ptr [r15 + 0xb4]
	cmp	rax, rcx
	cmovge	rcx, rax
	lea	rbx, [r14 + 1]
	cmp	rbx, rcx
	cmovg	rbx, rcx
	movzx	eax, r9b
	mov	rdi, r12
	mov	rsi, r14
	mov	rdx, r13
	mov	rcx, r8
	mov	r8d, eax
	mov	r9, r15
	call	re_string_construct_common
	mov	rdi, r13
	mov	rsi, rbx
	call	re_string_realloc_buffers
	test	eax, eax
	jne	.label_191
	lea	rax, [r15 + 0xb8]
	mov	qword ptr [r13 + 0x80], rax
	mov	al, byte ptr [r15 + 0xb0]
	shr	al, 4
	and	al, 1
	mov	byte ptr [r13 + 0x8e], al
	cmp	byte ptr [r13 + 0x8b], 0
	je	.label_193
	mov	r12, qword ptr [r13 + 8]
.label_193:
	mov	qword ptr [r13 + 8], r12
	xor	eax, eax
	cmp	byte ptr [r13 + 0x8b], 0
	mov	ecx, 0
	jne	.label_192
	xor	ecx, ecx
	cmp	dword ptr [r15 + 0xb4], 1
	cmovg	r14, rcx
	mov	rcx, r14
.label_192:
	mov	qword ptr [r13 + 0x30], rcx
	mov	qword ptr [r13 + 0x38], rcx
.label_191:
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	ret	
	.section	.text
	.align	32
	#Procedure 0x4043a1
	.globl sub_4043a1
	.type sub_4043a1, @function
sub_4043a1:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4043b0

	.globl argv_iter_free
	.type argv_iter_free, @function
argv_iter_free:
	push	rbx
	mov	rbx, rdi
	cmp	qword ptr [rbx], 0
	je	.label_194
	mov	rdi, qword ptr [rbx + 0x10]
	call	free
.label_194:
	mov	rdi, rbx
	pop	rbx
	jmp	free
	.section	.text
	.align	32
	#Procedure 0x4043cc
	.globl sub_4043cc
	.type sub_4043cc, @function
sub_4043cc:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x4043d0

	.globl link_nfa_nodes
	.type link_nfa_nodes, @function
link_nfa_nodes:
	push	rax
	mov	rcx, qword ptr [rsi + 0x38]
	mov	eax, dword ptr [rsi + 0x30]
	mov	edx, eax
	add	dl, 0xfe
	movzx	edx, dl
	cmp	dl, 0xe
	ja	.label_202
	jmp	qword ptr [word ptr [+ (rdx * 8) + label_203]]
.label_3099:
	or	byte ptr [rdi + 0xb0], 1
	mov	rax, qword ptr [rsi + 8]
	mov	rdx, qword ptr [rsi + 0x10]
	add	rsi, 0x20
	test	rax, rax
	lea	rax, [rax + 0x18]
	cmove	rax, rsi
	mov	rax, qword ptr [rax]
	mov	rax, qword ptr [rax + 0x38]
	test	rdx, rdx
	lea	rdx, [rdx + 0x18]
	cmove	rdx, rsi
	test	rax, rax
	js	.label_198
	mov	rdx, qword ptr [rdx]
	mov	rdx, qword ptr [rdx + 0x38]
	test	rdx, rdx
	js	.label_200
	lea	rcx, [rcx + rcx*2]
	shl	rcx, 3
	add	rcx, qword ptr [rdi + 0x28]
	mov	rdi, rcx
	mov	rsi, rax
	pop	rax
	jmp	re_node_set_init_2
.label_3098:
	lea	rax, [rcx + rcx*2]
	shl	rax, 3
	add	rax, qword ptr [rdi + 0x28]
	mov	rcx, qword ptr [rsi + 0x20]
	mov	rsi, qword ptr [rcx + 0x38]
.label_2649:
	mov	rdi, rax
	pop	rax
	jmp	re_node_set_init_1
.label_3096:
	cmp	qword ptr [rsi + 0x20], 0
	je	.label_2655
	mov	edi, OFFSET FLAT:label_2652
	mov	esi, OFFSET FLAT:label_196
	mov	edx, 0x59f
	mov	ecx, OFFSET FLAT:label_197
	call	__assert_fail
.label_204:
	mov	edi, OFFSET FLAT:label_201
	mov	esi, OFFSET FLAT:label_196
	mov	edx, 0x5c2
	mov	ecx, OFFSET FLAT:label_197
	call	__assert_fail
.label_200:
	mov	edi, OFFSET FLAT:label_199
	mov	esi, OFFSET FLAT:label_196
	mov	edx, 0x5b0
	mov	ecx, OFFSET FLAT:label_197
	call	__assert_fail
.label_198:
	mov	edi, OFFSET FLAT:label_195
	mov	esi, OFFSET FLAT:label_196
	mov	edx, 0x5af
	mov	ecx, OFFSET FLAT:label_197
	call	__assert_fail
.label_202:
	test	al, 8
	jne	.label_204
	mov	rax, qword ptr [rsi + 0x20]
	mov	rax, qword ptr [rax + 0x38]
	mov	rdx, qword ptr [rdi + 0x18]
	mov	qword ptr [rdx + rcx*8], rax
.label_2655:
	xor	eax, eax
	pop	rcx
	ret	
.label_3097:
	mov	rax, qword ptr [rsi + 0x20]
	mov	rax, qword ptr [rax + 0x38]
	mov	rdx, qword ptr [rdi + 0x18]
	mov	qword ptr [rdx + rcx*8], rax
	cmp	byte ptr [rsi + 0x30], 4
	jne	.label_2655
	lea	rax, [rcx + rcx*2]
	shl	rax, 3
	add	rax, qword ptr [rdi + 0x28]
	mov	rdx, qword ptr [rdi + 0x18]
	mov	rsi, qword ptr [rdx + rcx*8]
	jmp	.label_2649
.label_206:
	mov	qword ptr [rdi + 4], 0
.label_205:
	mov	al, byte ptr [rsi + 0xc]
	mov	byte ptr [rdi + 0xc], al
	add	rdi, 0x10
	add	rsi, 0x10
	jmp	mb_copy
	.section	.text
	.align	32
	#Procedure 0x40453b
	.globl sub_40453b
	.type sub_40453b, @function
sub_40453b:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x40453e
	.globl mbuiter_multi_copy
	.type mbuiter_multi_copy, @function
mbuiter_multi_copy:

	mov	al, byte ptr [rsi]
	test	al, al
	mov	byte ptr [rdi], al
	je	.label_206
	mov	rax, qword ptr [rsi + 4]
	mov	qword ptr [rdi + 4], rax
	jmp	.label_205
	.section	.text
	.align	32
	#Procedure 0x404550

	.globl di_set_alloc
	.type di_set_alloc, @function
di_set_alloc:
	push	rbx
	mov	edi, 0x18
	call	malloc
	mov	rbx, rax
	test	rbx, rbx
	je	.label_207
	mov	edi, 0xb
	xor	esi, esi
	mov	edx, OFFSET FLAT:di_ent_hash
	mov	ecx, OFFSET FLAT:di_ent_compare
	mov	r8d, OFFSET FLAT:di_ent_free
	call	hash_initialize
	mov	qword ptr [rbx], rax
	test	rax, rax
	je	.label_208
	xorps	xmm0, xmm0
	movups	xmmword ptr [rbx + 8], xmm0
	jmp	.label_207
.label_208:
	mov	rdi, rbx
	call	free
	xor	ebx, ebx
.label_207:
	mov	rax, rbx
	pop	rbx
	ret	
	.section	.text
	.align	32
	#Procedure 0x40459f
	.globl sub_40459f
	.type sub_40459f, @function
sub_40459f:

	nop	
	.section	.text
	.align	32
	#Procedure 0x4045a0

	.globl parse_expression
	.type parse_expression, @function
parse_expression:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x28
	mov	qword ptr [rsp + 8], r9
	mov	qword ptr [rsp + 0x20], r8
	mov	r13, rdx
	mov	r12, rsi
	mov	qword ptr [rsp + 0x10], rdi
	mov	r15d, ecx
	and	r15d, 0x1000000
	mov	ebx, ecx
	and	ebx, 0x20
	mov	rax, rcx
	mov	qword ptr [rsp + 0x18], rax
	mov	ebp, ecx
	and	ebp, 0x10
	xor	eax, eax
	mov	qword ptr [rsp], rax
	jmp	.label_209
	.section	.text
	.align	32
	#Procedure 0x4045e7
	.globl sub_4045e7
	.type sub_4045e7, @function
sub_4045e7:

	nop	word ptr [rax + rax]
.label_2251:
	mov	rdi, r13
	mov	rsi, qword ptr [rsp + 0x10]
	mov	rdx, qword ptr [rsp + 0x18]
	call	fetch_token
.label_209:
	movzx	eax, byte ptr [r13 + 8]
	dec	al
	movzx	eax, al
	cmp	al, 0x23
	ja	.label_210
	mov	r14, qword ptr [r12]
	jmp	qword ptr [word ptr [+ (rax * 8) + label_211]]
.label_2951:
	test	r15, r15
	jne	.label_2249
.label_2948:
	test	rbx, rbx
	jne	.label_2249
	test	rbp, rbp
	jne	.label_2251
.label_2947:
	mov	rax, qword ptr [rsp + 0x18]
	test	eax, 0x20000
	jne	.label_2253
	movzx	eax, byte ptr [r13 + 8]
	cmp	eax, 9
	jne	.label_2253
	mov	rax, qword ptr [rsp + 8]
	mov	dword ptr [rax], 0x10
	jmp	.label_2255
.label_2249:
	mov	rax, qword ptr [rsp + 8]
	mov	dword ptr [rax], 0xd
	jmp	.label_2255
.label_2253:
	mov	byte ptr [r13 + 8], 1
	xor	esi, esi
	xor	edx, edx
	mov	rdi, r14
	mov	rcx, r13
	call	create_token_tree
	mov	rbp, rax
	test	rbp, rbp
	jne	.label_2259
	jmp	.label_2260
.label_2952:
	mov	rax, qword ptr [rsp + 0x10]
	mov	rsi, qword ptr [rax + 0x78]
	xor	r8d, r8d
	cmp	byte ptr [r13 + 8], 0x21
	sete	r8b
	mov	edx, OFFSET FLAT:label_2279
	mov	ecx, OFFSET FLAT:label_2280
	jmp	.label_2281
.label_2953:
	mov	rax, qword ptr [rsp + 0x10]
	mov	rsi, qword ptr [rax + 0x78]
	xor	r8d, r8d
	cmp	byte ptr [r13 + 8], 0x23
	sete	r8b
	mov	edx, OFFSET FLAT:label_2265
	mov	ecx, OFFSET FLAT:label_97
.label_2281:
	mov	rdi, r14
	mov	rbx, qword ptr [rsp + 8]
	mov	r9, rbx
	call	build_charclass_op
	jmp	.label_2250
.label_2943:
	xor	esi, esi
	xor	edx, edx
	mov	rdi, r14
	mov	rcx, r13
	call	create_token_tree
	mov	rbp, rax
	test	rbp, rbp
	je	.label_2260
	cmp	dword ptr [r14 + 0xb4], 2
	jl	.label_2259
	mov	r15, qword ptr [rsp + 0x10]
.label_2288:
	mov	rax, qword ptr [r15 + 0x48]
	cmp	qword ptr [r15 + 0x68], rax
	jle	.label_2259
	cmp	rax, qword ptr [r15 + 0x30]
	je	.label_2259
	mov	rcx, qword ptr [r15 + 0x10]
	cmp	dword ptr [rcx + rax*4], -1
	jne	.label_2259
	mov	rdi, r13
	mov	rsi, r15
	mov	rdx, qword ptr [rsp + 0x18]
	call	fetch_token
	xor	esi, esi
	xor	edx, edx
	mov	rdi, r14
	mov	rcx, r13
	call	create_token_tree
	mov	rbx, rax
	mov	ecx, 0x10
	mov	rdi, r14
	mov	rsi, rbp
	mov	rdx, rbx
	call	create_tree
	mov	rbp, rax
	test	rbx, rbx
	je	.label_2260
	test	rbp, rbp
	jne	.label_2288
	jmp	.label_2260
.label_2944:
	mov	cl, byte ptr [r13]
	mov	eax, 1
	shl	eax, cl
	cdqe	
	test	qword ptr [r14 + 0xa8], rax
	je	.label_2272
	or	qword ptr [r14 + 0xa0], rax
	xor	esi, esi
	xor	edx, edx
	mov	rdi, r14
	mov	rcx, r13
	call	create_token_tree
	mov	rbp, rax
	test	rbp, rbp
	je	.label_2260
	inc	qword ptr [r14 + 0x98]
	or	byte ptr [r14 + 0xb0], 2
	jmp	.label_2259
.label_2945:
	xor	esi, esi
	xor	edx, edx
	mov	rdi, r14
	mov	rcx, r13
	call	create_token_tree
	mov	rbp, rax
	test	rbp, rbp
	je	.label_2260
	cmp	dword ptr [r14 + 0xb4], 2
	jl	.label_2259
	or	byte ptr [r14 + 0xb0], 2
	jmp	.label_2259
.label_2946:
	mov	r8, qword ptr [rsp + 0x20]
	inc	r8
	mov	rdi, qword ptr [rsp + 0x10]
	mov	rsi, r12
	mov	rdx, r13
	mov	rcx, qword ptr [rsp + 0x18]
	mov	rbx, qword ptr [rsp + 8]
	mov	r9, rbx
	call	parse_sub_exp
	jmp	.label_2250
.label_2949:
	mov	eax, dword ptr [r13]
	test	ax, 0x30f
	mov	r15, qword ptr [rsp + 0x10]
	je	.label_2252
	test	byte ptr [r14 + 0xb0], 0x10
	jne	.label_2254
	mov	rdi, r14
	call	init_word_char
.label_2254:
	mov	eax, dword ptr [r13]
.label_2252:
	cmp	eax, 0x200
	je	.label_2256
	cmp	eax, 0x100
	jne	.label_2267
.label_2256:
	cmp	dword ptr [r13], 0x100
	jne	.label_2257
	mov	dword ptr [r13], 6
	xor	esi, esi
	xor	edx, edx
	mov	rdi, r14
	mov	rcx, r13
	call	create_token_tree
	mov	rbx, rax
	mov	eax, 9
	jmp	.label_2261
.label_2950:
	mov	rdi, qword ptr [rsp + 0x10]
	mov	rsi, r14
	mov	rdx, r13
	mov	rcx, qword ptr [rsp + 0x18]
	mov	rbx, qword ptr [rsp + 8]
	mov	r8, rbx
	call	parse_bracket_exp
.label_2250:
	mov	rbp, rax
	test	rbp, rbp
	jne	.label_2259
	xor	eax, eax
	mov	qword ptr [rsp], rax
	mov	eax, dword ptr [rbx]
	test	eax, eax
	jne	.label_210
.label_2259:
	mov	rdi, r13
	mov	rsi, qword ptr [rsp + 0x10]
	mov	rbx, qword ptr [rsp + 0x18]
	mov	rdx, rbx
	call	fetch_token
	mov	r15d, ebx
	and	r15d, 0x1000000
	mov	r12d, 0x8c0800
	mov	rbx, qword ptr [rsp + 8]
	nop	word ptr cs:[rax + rax]
.label_2282:
	movzx	eax, byte ptr [r13 + 8]
	cmp	rax, 0x17
	ja	.label_2273
	bt	r12, rax
	jae	.label_2273
	mov	rdi, rbp
	mov	rsi, qword ptr [rsp + 0x10]
	mov	rdx, r14
	mov	rcx, r13
	mov	r8, qword ptr [rsp + 0x18]
	mov	r9, rbx
	call	parse_dup_op
	test	rax, rax
	jne	.label_2277
	mov	ecx, dword ptr [rbx]
	test	ecx, ecx
	jne	.label_2278
.label_2277:
	test	r15, r15
	mov	rbp, rax
	je	.label_2282
	movzx	ecx, byte ptr [r13 + 8]
	cmp	cl, 0x17
	je	.label_2283
	cmp	cl, 0xb
	mov	rbp, rax
	jne	.label_2282
.label_2283:
	test	rax, rax
	je	.label_2292
	mov	esi, OFFSET FLAT:free_tree
	xor	edx, edx
	mov	rdi, rax
	call	postorder
.label_2292:
	mov	dword ptr [rbx], 0xd
.label_2255:
	xor	eax, eax
	mov	qword ptr [rsp], rax
	jmp	.label_210
.label_2273:
	mov	qword ptr [rsp], rbp
.label_210:
	mov	rax, qword ptr [rsp]
	add	rsp, 0x28
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_2954:
	mov	rax, qword ptr [rsp + 8]
	mov	dword ptr [rax], 5
	jmp	.label_2255
.label_2267:
	xor	esi, esi
	xor	edx, edx
	mov	rdi, r14
	mov	rcx, r13
	call	create_token_tree
	jmp	.label_2290
.label_2257:
	mov	dword ptr [r13], 5
	xor	esi, esi
	xor	edx, edx
	mov	rdi, r14
	mov	rcx, r13
	call	create_token_tree
	mov	rbx, rax
	mov	eax, 0xa
.label_2261:
	mov	dword ptr [r13], eax
	xor	esi, esi
	xor	edx, edx
	mov	rdi, r14
	mov	rcx, r13
	call	create_token_tree
	mov	rbp, rax
	mov	ecx, 0xa
	mov	rdi, r14
	mov	rsi, rbx
	mov	rdx, rbp
	call	create_tree
	test	rbx, rbx
	je	.label_2260
	test	rbp, rbp
	je	.label_2260
.label_2290:
	test	rax, rax
	je	.label_2260
	mov	qword ptr [rsp], rax
	mov	rdi, r13
	mov	rsi, r15
	mov	rdx, qword ptr [rsp + 0x18]
	call	fetch_token
	jmp	.label_210
.label_2278:
	xor	eax, eax
	mov	qword ptr [rsp], rax
	test	rbp, rbp
	je	.label_210
	xor	eax, eax
	mov	qword ptr [rsp], rax
	mov	esi, OFFSET FLAT:free_tree
	xor	edx, edx
	mov	rdi, rbp
	call	postorder
	jmp	.label_210
.label_2260:
	mov	rax, qword ptr [rsp + 8]
	mov	dword ptr [rax], 0xc
	jmp	.label_2255
.label_2272:
	mov	rax, qword ptr [rsp + 8]
	mov	dword ptr [rax], 6
	jmp	.label_2255
	.section	.text
	.align	32
	#Procedure 0x404a65
	.globl sub_404a65
	.type sub_404a65, @function
sub_404a65:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x404a70

	.globl i_ring_push
	.type i_ring_push, @function
i_ring_push:
	mov	al, byte ptr [rdi + 0x1c]
	xor	al, 1
	movzx	edx, al
	add	edx, dword ptr [rdi + 0x14]
	and	edx, 3
	mov	eax, dword ptr [rdi + rdx*4]
	mov	dword ptr [rdi + rdx*4], esi
	mov	dword ptr [rdi + 0x14], edx
	mov	ecx, dword ptr [rdi + 0x18]
	cmp	edx, ecx
	jne	.label_212
	mov	dl, byte ptr [rdi + 0x1c]
	xor	dl, 1
	movzx	edx, dl
	add	edx, ecx
	and	edx, 3
	mov	dword ptr [rdi + 0x18], edx
.label_212:
	mov	byte ptr [rdi + 0x1c], 0
	ret	
	.section	.text
	.align	32
	#Procedure 0x404aa4
	.globl sub_404aa4
	.type sub_404aa4, @function
sub_404aa4:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x404ab0

	.globl setenv_TZ
	.type setenv_TZ, @function
setenv_TZ:
	mov	rax, rdi
	mov	edi, OFFSET FLAT:label_213
	test	rax, rax
	je	.label_214
	mov	edx, 1
	mov	rsi, rax
	jmp	setenv
.label_214:
	jmp	unsetenv
	.section	.text
	.align	32
	#Procedure 0x404acf
	.globl sub_404acf
	.type sub_404acf, @function
sub_404acf:

	nop	
	.section	.text
	.align	32
	#Procedure 0x404ad0

	.globl lower_subexp
	.type lower_subexp, @function
lower_subexp:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	push	rax
	mov	r15, rdx
	mov	r12, qword ptr [rsi]
	mov	rbp, qword ptr [r15 + 8]
	test	rbp, rbp
	je	.label_218
	mov	al, byte ptr [rsi + 0x38]
	and	al, 0x10
	je	.label_218
	mov	rax, qword ptr [r15 + 0x28]
	cmp	rax, 0x3f
	jg	.label_216
	mov	rcx, qword ptr [r12 + 0xa0]
	bt	rcx, rax
	jae	.label_216
.label_218:
	mov	qword ptr [rsp], rdi
	xor	esi, esi
	xor	edx, edx
	mov	ecx, 8
	mov	rdi, r12
	call	create_tree
	mov	r13, rax
	xor	esi, esi
	xor	edx, edx
	mov	ecx, 9
	mov	rdi, r12
	call	create_tree
	mov	rbx, rax
	test	rbp, rbp
	mov	r14, rbx
	je	.label_219
	mov	ecx, 0x10
	mov	rdi, r12
	mov	rsi, rbp
	mov	rdx, rbx
	call	create_tree
	mov	r14, rax
.label_219:
	mov	ecx, 0x10
	mov	rdi, r12
	mov	rsi, r13
	mov	rdx, r14
	call	create_tree
	test	rbx, rbx
	je	.label_217
	test	r13, r13
	je	.label_217
	test	r14, r14
	je	.label_217
	test	rax, rax
	je	.label_217
	mov	rcx, qword ptr [r15 + 0x28]
	mov	qword ptr [rbx + 0x28], rcx
	mov	qword ptr [r13 + 0x28], rcx
	mov	ecx, 0x80000
	and	ecx, dword ptr [r15 + 0x30]
	mov	edx, 0xfff7ffff
	mov	esi, dword ptr [rbx + 0x30]
	and	esi, edx
	or	esi, ecx
	mov	dword ptr [rbx + 0x30], esi
	and	edx, dword ptr [r13 + 0x30]
	or	edx, ecx
	mov	dword ptr [r13 + 0x30], edx
	jmp	.label_215
.label_216:
	mov	rax, qword ptr [r15 + 8]
.label_215:
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_217:
	mov	rax, qword ptr [rsp]
	mov	dword ptr [rax], 0xc
	xor	eax, eax
	jmp	.label_215
	.section	.text
	.align	32
	#Procedure 0x404bd3
	.globl sub_404bd3
	.type sub_404bd3, @function
sub_404bd3:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x404be0

	.globl ino_hash
	.type ino_hash, @function
ino_hash:
	mov	rax, qword ptr [rdi]
	xor	edx, edx
	div	rsi
	mov	rax, rdx
	ret	
	.section	.text
	.align	32
	#Procedure 0x404bec
	.globl sub_404bec
	.type sub_404bec, @function
sub_404bec:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x404bf0
	.globl get_stat_ctime_ns
	.type get_stat_ctime_ns, @function
get_stat_ctime_ns:

	mov	rax, qword ptr [rdi + 0x70]
	ret	
	.section	.text
	.align	32
	#Procedure 0x404bf5
	.globl sub_404bf5
	.type sub_404bf5, @function
sub_404bf5:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x404c00

	.globl mbscasecmp
	.type mbscasecmp, @function
mbscasecmp:
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x80
	mov	r14, rsi
	mov	rbx, rdi
	xor	r12d, r12d
	cmp	rbx, r14
	je	.label_220
	call	__ctype_get_mb_cur_max
	cmp	rax, 1
	jbe	.label_225
	mov	qword ptr [rsp + 0x10], rbx
	mov	byte ptr [rsp], 0
	mov	qword ptr [rsp + 4], 0
	mov	byte ptr [rsp + 0xc], 0
	mov	qword ptr [rsp + 0x50], r14
	mov	byte ptr [rsp + 0x40], 0
	mov	qword ptr [rsp + 0x44], 0
	mov	byte ptr [rsp + 0x4c], 0
	lea	rdi, [rsp]
	call	mbuiter_multi_next
	cmp	byte ptr [rsp + 0x20], 0
	je	.label_231
	mov	eax, dword ptr [rsp + 0x24]
	test	eax, eax
	je	.label_224
.label_231:
	lea	r14, [rsp + 0x40]
	lea	r15, [rsp]
	nop	word ptr cs:[rax + rax]
.label_221:
	mov	rdi, r14
	call	mbuiter_multi_next
	movzx	eax, byte ptr [rsp + 0x60]
	test	al, al
	je	.label_222
	mov	ecx, dword ptr [rsp + 0x64]
	test	ecx, ecx
	je	.label_224
.label_222:
	cmp	byte ptr [rsp + 0x20], 0
	je	.label_227
	mov	r12d, 0xffffffff
	test	al, al
	je	.label_220
	mov	edi, dword ptr [rsp + 0x24]
	call	towlower
	mov	r12d, eax
	mov	edi, dword ptr [rsp + 0x64]
	call	towlower
	sub	r12d, eax
	jmp	.label_229
	.section	.text
	.align	32
	#Procedure 0x404cdc
	.globl sub_404cdc
	.type sub_404cdc, @function
sub_404cdc:

	nop	dword ptr [rax]
.label_227:
	mov	r12d, 1
	test	al, al
	jne	.label_220
	mov	rdx, qword ptr [rsp + 0x18]
	mov	rax, qword ptr [rsp + 0x58]
	cmp	rdx, rax
	jne	.label_232
	mov	rdi, qword ptr [rsp + 0x10]
	mov	rsi, qword ptr [rsp + 0x50]
	call	memcmp
	mov	r12d, eax
.label_229:
	test	r12d, r12d
	jne	.label_220
	mov	rax, qword ptr [rsp + 0x18]
	add	qword ptr [rsp + 0x10], rax
	mov	byte ptr [rsp + 0xc], 0
	mov	rax, qword ptr [rsp + 0x58]
	add	qword ptr [rsp + 0x50], rax
	mov	byte ptr [rsp + 0x4c], 0
	mov	rdi, r15
	call	mbuiter_multi_next
	cmp	byte ptr [rsp + 0x20], 0
	je	.label_221
	mov	eax, dword ptr [rsp + 0x24]
	test	eax, eax
	jne	.label_221
.label_224:
	lea	rdi, [rsp]
	call	mbuiter_multi_next
	cmp	byte ptr [rsp + 0x20], 0
	mov	r12d, 1
	je	.label_220
	mov	eax, dword ptr [rsp + 0x24]
	test	eax, eax
	jne	.label_220
	lea	rdi, [rsp + 0x40]
	call	mbuiter_multi_next
	cmp	byte ptr [rsp + 0x60], 0
	sete	al
	cmp	dword ptr [rsp + 0x64], 0
	setne	cl
	or	cl, al
	movzx	r12d, cl
	shl	r12d, 0x1f
	sar	r12d, 0x1f
	jmp	.label_220
.label_225:
	call	__ctype_b_loc
	mov	r15, qword ptr [rax]
	nop	word ptr cs:[rax + rax]
.label_234:
	movzx	r12d, byte ptr [rbx]
	test	byte ptr [r15 + r12*2 + 1], 1
	je	.label_228
	call	__ctype_tolower_loc
	mov	rax, qword ptr [rax]
	movzx	r12d, byte ptr [rax + r12*4]
.label_228:
	movzx	r13d, byte ptr [r14]
	test	byte ptr [r15 + r13*2 + 1], 1
	je	.label_230
	call	__ctype_tolower_loc
	mov	rax, qword ptr [rax]
	movzx	r13d, byte ptr [rax + r13*4]
.label_230:
	test	r12d, r12d
	je	.label_233
	inc	rbx
	inc	r14
	cmp	r12d, r13d
	je	.label_234
.label_233:
	sub	r12d, r13d
.label_220:
	mov	eax, r12d
	add	rsp, 0x80
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	ret	
.label_232:
	mov	rdi, qword ptr [rsp + 0x10]
	mov	rsi, qword ptr [rsp + 0x50]
	jae	.label_223
	call	memcmp
	test	eax, eax
	setg	al
	jmp	.label_226
.label_223:
	mov	rdx, rax
	call	memcmp
	test	eax, eax
	setns	al
.label_226:
	movzx	eax, al
	lea	r12d, [rax + rax - 1]
	jmp	.label_220
	.section	.text
	.align	32
	#Procedure 0x404e48
	.globl sub_404e48
	.type sub_404e48, @function
sub_404e48:

	nop	dword ptr [rax + rax]
.label_235:
	add	rbx, 2
.label_237:
	cmp	rbx, -1
	je	.label_236
	mov	rdi, rbx
	call	is_prime
	test	al, al
	je	.label_235
	mov	r14, rbx
.label_236:
	mov	rax, r14
	add	rsp, 8
	pop	rbx
	pop	r14
	ret	
	.section	.text
	.align	32
	#Procedure 0x404e74
	.globl sub_404e74
	.type sub_404e74, @function
sub_404e74:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x404e80

	.globl next_prime
	.type next_prime, @function
next_prime:
	push	r14
	push	rbx
	push	rax
	cmp	rdi, 0xa
	mov	ebx, 0xa
	cmovae	rbx, rdi
	or	rbx, 1
	mov	r14, -1
	jmp	.label_237
	.section	.text
	.align	32
	#Procedure 0x404e9e
	.globl sub_404e9e
	.type sub_404e9e, @function
sub_404e9e:

	nop	
	.section	.text
	.align	32
	#Procedure 0x404ea0

	.globl open_safer
	.type open_safer, @function
open_safer:
	sub	rsp, 0xd8
	test	al, al
	je	.label_238
	movaps	xmmword ptr [rsp + 0x50], xmm0
	movaps	xmmword ptr [rsp + 0x60], xmm1
	movaps	xmmword ptr [rsp + 0x70], xmm2
	movaps	xmmword ptr [rsp + 0x80], xmm3
	movaps	xmmword ptr [rsp + 0x90], xmm4
	movaps	xmmword ptr [rsp + 0xa0], xmm5
	movaps	xmmword ptr [rsp + 0xb0], xmm6
	movaps	xmmword ptr [rsp + 0xc0], xmm7
.label_238:
	mov	qword ptr [rsp + 0x48], r9
	mov	qword ptr [rsp + 0x40], r8
	mov	qword ptr [rsp + 0x38], rcx
	mov	qword ptr [rsp + 0x30], rdx
	xor	edx, edx
	test	sil, 0x40
	je	.label_239
	lea	rax, [rsp + 0x20]
	mov	qword ptr [rsp + 0x10], rax
	lea	rax, [rsp + 0xe0]
	mov	qword ptr [rsp + 8], rax
	mov	dword ptr [rsp + 4], 0x30
	mov	dword ptr [rsp], 0x10
	movsxd	rcx, dword ptr [rsp]
	cmp	rcx, 0x28
	ja	.label_241
	mov	rax, rcx
	add	rax, qword ptr [rsp + 0x10]
	lea	ecx, [rcx + 8]
	mov	dword ptr [rsp], ecx
	jmp	.label_240
.label_241:
	mov	rax, qword ptr [rsp + 8]
	lea	rcx, [rax + 8]
	mov	qword ptr [rsp + 8], rcx
.label_240:
	mov	edx, dword ptr [rax]
.label_239:
	xor	eax, eax
	call	open
	mov	edi, eax
	call	fd_safer
	add	rsp, 0xd8
	ret	
	.section	.text
	.align	32
	#Procedure 0x404f64
	.globl sub_404f64
	.type sub_404f64, @function
sub_404f64:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x404f70

	.globl fprintftime
	.type fprintftime, @function
fprintftime:
	push	rax
	mov	eax, r8d
	mov	r10, rcx
	mov	ecx, 0
	mov	r8d, 0
	mov	r9d, 0xffffffff
	push	rax
	push	r10
	call	__strftime_internal
	add	rsp, 0x10
	pop	rcx
	ret	
	.section	.text
	.align	32
	#Procedure 0x404f96
	.globl sub_404f96
	.type sub_404f96, @function
sub_404f96:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x404fa0

	.globl check_arrival_expand_ecl_sub
	.type check_arrival_expand_ecl_sub, @function
check_arrival_expand_ecl_sub:
	push	rbp
	push	r15
	push	r14
	push	r12
	push	rbx
	mov	r15d, r8d
	mov	r14, rcx
	mov	rbx, rdx
	mov	r12, rsi
	mov	rbp, rdi
	jmp	.label_242
	.section	.text
	.align	32
	#Procedure 0x404fb9
	.globl sub_404fb9
	.type sub_404fb9, @function
sub_404fb9:

	nop	dword ptr [rax]
.label_244:
	mov	rax, qword ptr [rbp + 0x28]
	mov	rax, qword ptr [rax + rbx*8 + 0x10]
	mov	rbx, qword ptr [rax]
.label_242:
	mov	rdi, r12
	mov	rsi, rbx
	call	re_node_set_contains
	test	rax, rax
	jne	.label_246
	mov	rax, qword ptr [rbp]
	mov	rcx, rbx
	shl	rcx, 4
	movzx	edx, byte ptr [rax + rcx + 8]
	cmp	edx, r15d
	jne	.label_243
	cmp	qword ptr [rax + rcx], r14
	je	.label_248
.label_243:
	mov	rdi, r12
	mov	rsi, rbx
	call	re_node_set_insert
	mov	ecx, eax
	mov	eax, 0xc
	test	cl, cl
	je	.label_245
	mov	rax, qword ptr [rbp + 0x28]
	lea	rbx, [rbx + rbx*2]
	mov	rcx, qword ptr [rax + rbx*8 + 8]
	cmp	rcx, 2
	je	.label_247
	test	rcx, rcx
	jne	.label_244
	jmp	.label_246
	.section	.text
	.align	32
	#Procedure 0x40502b
	.globl sub_40502b
	.type sub_40502b, @function
sub_40502b:

	nop	dword ptr [rax + rax]
.label_247:
	mov	rax, qword ptr [rax + rbx*8 + 0x10]
	mov	rdx, qword ptr [rax + 8]
	mov	rdi, rbp
	mov	rsi, r12
	mov	rcx, r14
	mov	r8d, r15d
	call	check_arrival_expand_ecl_sub
	test	eax, eax
	je	.label_244
	jmp	.label_245
.label_248:
	cmp	r15d, 9
	jne	.label_246
	mov	rdi, r12
	mov	rsi, rbx
	call	re_node_set_insert
	mov	ecx, eax
	mov	eax, 0xc
	test	cl, cl
	je	.label_245
.label_246:
	xor	eax, eax
.label_245:
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40507b
	.globl sub_40507b
	.type sub_40507b, @function
sub_40507b:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x405080

	.globl bitset_contain
	.type bitset_contain, @function
bitset_contain:
	mov	rax, rsi
	sar	rax, 0x3f
	shr	rax, 0x3a
	add	rax, rsi
	sar	rax, 6
	mov	rax, qword ptr [rdi + rax*8]
	bt	rax, rsi
	setb	al
	ret	
	.section	.text
	.align	32
	#Procedure 0x40509e
	.globl sub_40509e
	.type sub_40509e, @function
sub_40509e:

	nop	
.label_249:
	xor	eax, eax
	ret	
	.section	.text
	.align	32
	#Procedure 0x4050a3
	.globl sub_4050a3
	.type sub_4050a3, @function
sub_4050a3:

	nop	
	.section	.text
	.align	32
	#Procedure 0x4050a5

	.globl cycle_warning_required
	.type cycle_warning_required, @function
cycle_warning_required:
	mov	ecx, dword ptr [rdi + 0x48]
	and	ecx, 0x11
	mov	al, 1
	cmp	ecx, 0x10
	je	.label_250
	cmp	ecx, 0x11
	jne	.label_249
	cmp	qword ptr [rsi + 0x58], 0
	setne	al
.label_250:
	ret	
	.section	.text
	.align	32
	#Procedure 0x4050c0

	.globl print_size
	.type print_size, @function
print_size:
	push	r14
	push	rbx
	push	rax
	mov	r14, rsi
	mov	rbx, rdi
	mov	al,  byte ptr [byte ptr [rip + opt_inodes]]
	lea	rcx, [rbx + 8]
	test	al, al
	cmove	rcx, rbx
	mov	rdi, qword ptr [rcx]
	call	print_only_size
	cmp	byte ptr [byte ptr [rip + opt_time]],  1
	jne	.label_252
	mov	edi, 9
	call	putchar_unlocked
	mov	rdi,  qword ptr [word ptr [rip + time_format]]
	mov	rcx,  qword ptr [word ptr [rip + localtz]]
	mov	rsi, qword ptr [rbx + 0x10]
	mov	rdx, qword ptr [rbx + 0x18]
	call	show_date
.label_252:
	mov	al,  byte ptr [byte ptr [rip + opt_nul_terminate_output]]
	xor	edx, edx
	test	al, al
	mov	ecx, 0xa
	cmovne	ecx, edx
	mov	edi, 1
	mov	esi, OFFSET FLAT:label_251
	xor	eax, eax
	mov	rdx, r14
	call	__printf_chk
	mov	rdi,  qword ptr [word ptr [rip + stdout]]
	add	rsp, 8
	pop	rbx
	pop	r14
	jmp	fflush_unlocked
	.section	.text
	.align	32
	#Procedure 0x405149
	.globl sub_405149
	.type sub_405149, @function
sub_405149:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x405150

	.globl check_dst_limits_calc_pos
	.type check_dst_limits_calc_pos, @function
check_dst_limits_calc_pos:
	mov	r10, qword ptr [rdi + 0xd8]
	lea	rsi, [rsi + rsi*4]
	mov	r11, qword ptr [r10 + rsi*8 + 0x10]
	mov	eax, 0xffffffff
	cmp	r11, r8
	jg	.label_253
	mov	r10, qword ptr [r10 + rsi*8 + 0x18]
	mov	eax, 1
	cmp	r10, r8
	jl	.label_253
	push	rbx
	xor	ebx, ebx
	cmp	r11, r8
	sete	bl
	xor	esi, esi
	cmp	r10, r8
	sete	sil
	add	esi, esi
	xor	eax, eax
	or	esi, ebx
	pop	rbx
	je	.label_253
	mov	r8, r9
	jmp	check_dst_limits_calc_pos_1
.label_253:
	ret	
	.section	.text
	.align	32
	#Procedure 0x40519a
	.globl sub_40519a
	.type sub_40519a, @function
sub_40519a:

	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4051a0

	.globl check_dst_limits_calc_pos_1
	.type check_dst_limits_calc_pos_1, @function
check_dst_limits_calc_pos_1:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x58
	mov	r15, rcx
	mov	dword ptr [rsp + 0xc], esi
	mov	qword ptr [rsp + 0x20], rdi
	mov	r10, qword ptr [rdi + 0x98]
	mov	rax, qword ptr [r10 + 0x30]
	lea	rcx, [r15 + r15*2]
	cmp	qword ptr [rax + rcx*8 + 8], 0
	jle	.label_261
	lea	r11, [rax + rcx*8 + 8]
	mov	esi, 1
	mov	ecx, edx
	shl	rsi, cl
	mov	eax, dword ptr [rsp + 0xc]
	mov	ecx, eax
	shl	ecx, 0x1f
	sar	ecx, 0x1f
	mov	dword ptr [rsp + 0x1c], ecx
	mov	qword ptr [rsp + 0x50], rsi
	xor	rsi, 0xffff
	mov	qword ptr [rsp + 0x28], rsi
	mov	ecx, eax
	and	ecx, 2
	mov	dword ptr [rsp + 0x10], ecx
	shr	ecx, 1
	cmp	rdx, 0x3f
	setg	bl
	mov	dword ptr [rsp + 0x14], ecx
	or	bl, cl
	mov	byte ptr [rsp + 0xb], bl
	and	eax, 1
	mov	dword ptr [rsp + 0x18], eax
	xor	ebx, ebx
	mov	qword ptr [rsp + 0x38], r10
	mov	qword ptr [rsp + 0x30], rdx
	nop	word ptr cs:[rax + rax]
.label_259:
	mov	rax, qword ptr [r11 + 8]
	mov	r14, qword ptr [rax + rbx*8]
	mov	rax, qword ptr [r10]
	mov	rsi, r14
	shl	rsi, 4
	lea	rdi, [rax + rsi]
	mov	al, byte ptr [rax + rsi + 8]
	cmp	al, 9
	je	.label_254
	cmp	al, 8
	je	.label_262
	cmp	al, 4
	jne	.label_255
	cmp	r8, -1
	je	.label_255
	lea	r13, [r8 + r8*4]
	shl	r13, 3
	mov	rax, qword ptr [rsp + 0x20]
	add	r13, qword ptr [rax + 0xd8]
	mov	r12d, ecx
	mov	qword ptr [rsp + 0x48], rbx
	mov	qword ptr [rsp + 0x40], r14
	nop	dword ptr [rax]
.label_269:
	mov	ebp, 7
	cmp	qword ptr [r13], r14
	jne	.label_260
	cmp	rdx, 0x3f
	jg	.label_266
	movzx	eax, word ptr [r13 + 0x22]
	test	qword ptr [rsp + 0x50], rax
	je	.label_260
.label_266:
	mov	rax, qword ptr [r10 + 0x28]
	lea	rcx, [r14 + r14*2]
	mov	rax, qword ptr [rax + rcx*8 + 0x10]
	mov	rcx, qword ptr [rax]
	mov	ebp, 1
	cmp	rcx, r15
	jne	.label_258
	mov	ecx, dword ptr [rsp + 0x1c]
	jmp	.label_257
	.section	.text
	.align	32
	#Procedure 0x4052e8
	.globl sub_4052e8
	.type sub_4052e8, @function
sub_4052e8:

	nop	dword ptr [rax + rax]
.label_258:
	mov	rdi, qword ptr [rsp + 0x20]
	mov	esi, dword ptr [rsp + 0xc]
	mov	rbx, r8
	mov	r14, r11
	call	check_dst_limits_calc_pos_1
	mov	r11, r14
	mov	r14, qword ptr [rsp + 0x40]
	mov	r10, qword ptr [rsp + 0x38]
	mov	rdx, qword ptr [rsp + 0x30]
	mov	r8, rbx
	mov	rbx, qword ptr [rsp + 0x48]
	mov	ecx, 0xffffffff
	cmp	eax, -1
	je	.label_257
	test	eax, eax
	jne	.label_264
	cmp	dword ptr [rsp + 0x10], 0
	mov	ecx, r12d
	mov	eax, 0
	cmovne	ecx, eax
	cmp	byte ptr [rsp + 0xb], 0
	mov	ebp, dword ptr [rsp + 0x14]
	je	.label_265
	jmp	.label_257
.label_264:
	xor	ebp, ebp
	cmp	rdx, 0x3f
	jg	.label_260
.label_265:
	movzx	eax, word ptr [r13 + 0x22]
	mov	rcx, qword ptr [rsp + 0x28]
	and	eax, ecx
	mov	word ptr [r13 + 0x22], ax
	xor	ebp, ebp
	nop	word ptr cs:[rax + rax]
.label_260:
	mov	ecx, r12d
.label_257:
	mov	eax, ebp
	and	al, 7
	cmp	al, 7
	je	.label_267
	test	al, al
	jne	.label_268
.label_267:
	cmp	byte ptr [r13 + 0x20], 0
	lea	r13, [r13 + 0x28]
	mov	r12d, ecx
	jne	.label_269
	jmp	.label_255
	.section	.text
	.align	32
	#Procedure 0x405393
	.globl sub_405393
	.type sub_405393, @function
sub_405393:

	nop	word ptr cs:[rax + rax]
.label_254:
	cmp	dword ptr [rsp + 0x10], 0
	je	.label_255
	xor	eax, eax
	jmp	.label_263
	.section	.text
	.align	32
	#Procedure 0x4053ab
	.globl sub_4053ab
	.type sub_4053ab, @function
sub_4053ab:

	nop	dword ptr [rax + rax]
.label_262:
	cmp	dword ptr [rsp + 0x18], 0
	je	.label_255
	mov	eax, 0xffffffff
.label_263:
	cmp	qword ptr [rdi], rdx
	jne	.label_255
	jmp	.label_256
.label_268:
	test	ebp, ebp
	mov	eax, ecx
	jne	.label_256
	nop	dword ptr [rax]
.label_255:
	inc	rbx
	cmp	rbx, qword ptr [r11]
	jl	.label_259
.label_261:
	mov	eax, dword ptr [rsp + 0xc]
	shr	eax, 1
	and	eax, 1
.label_256:
	add	rsp, 0x58
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x4053f4
	.globl sub_4053f4
	.type sub_4053f4, @function
sub_4053f4:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x405400

	.globl preorder
	.type preorder, @function
preorder:
	push	r15
	push	r14
	push	r12
	push	rbx
	push	rax
	mov	r14, rdx
	mov	r15, rsi
	mov	rbx, rdi
	mov	rdi, r14
	mov	rsi, rbx
	call	r15
	test	eax, eax
	jne	.label_272
	nop	
.label_273:
	mov	r12, qword ptr [rbx + 8]
	test	r12, r12
	jne	.label_271
	xor	ecx, ecx
	nop	dword ptr [rax + rax]
.label_270:
	mov	rax, rcx
	mov	rcx, rbx
	mov	r12, qword ptr [rcx + 0x10]
	cmp	r12, rax
	je	.label_274
	test	r12, r12
	jne	.label_271
.label_274:
	mov	rbx, qword ptr [rcx]
	xor	eax, eax
	test	rbx, rbx
	jne	.label_270
	jmp	.label_272
.label_271:
	mov	rdi, r14
	mov	rsi, r12
	call	r15
	test	eax, eax
	mov	rbx, r12
	je	.label_273
.label_272:
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	ret	
	.section	.text
	.align	32
	#Procedure 0x40546c
	.globl sub_40546c
	.type sub_40546c, @function
sub_40546c:

	nop	dword ptr [rax]
.label_276:
	mov	rdi, rbx
	call	free
	xor	ebx, ebx
.label_275:
	mov	rax, rbx
	add	rsp, 8
	pop	rbx
	pop	r14
	ret	
	.section	.text
	.align	32
	#Procedure 0x405485

	.globl ino_map_alloc
	.type ino_map_alloc, @function
ino_map_alloc:
	push	r14
	push	rbx
	push	rax
	mov	r14, rdi
	mov	edi, 0x18
	call	malloc
	mov	rbx, rax
	test	rbx, rbx
	je	.label_275
	mov	edi, 0x3fd
	xor	esi, esi
	mov	edx, OFFSET FLAT:ino_hash
	mov	ecx, OFFSET FLAT:ino_compare
	mov	r8d, OFFSET FLAT:free
	call	hash_initialize
	mov	qword ptr [rbx], rax
	test	rax, rax
	je	.label_276
	mov	qword ptr [rbx + 8], r14
	mov	qword ptr [rbx + 0x10], 0
	jmp	.label_275
	.section	.text
	.align	32
	#Procedure 0x4054d0
	.globl rotl_sz
	.type rotl_sz, @function
rotl_sz:

	mov	ecx, esi
	rol	rdi, cl
	mov	rax, rdi
	ret	
	.section	.text
	.align	32
	#Procedure 0x4054d9
	.globl sub_4054d9
	.type sub_4054d9, @function
sub_4054d9:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x4054e0

	.globl rpl_calloc
	.type rpl_calloc, @function
rpl_calloc:
	test	rdi, rdi
	mov	eax, 1
	je	.label_277
	test	rsi, rsi
	mov	ecx, 1
	je	.label_278
	mov	rax, rsi
	imul	rax, rdi
	xor	edx, edx
	div	rsi
	cmp	rax, rdi
	mov	rax, rsi
	mov	rcx, rdi
	je	.label_278
	push	rax
	call	__errno_location
	mov	dword ptr [rax], 0xc
	xor	eax, eax
	pop	rcx
	ret	
.label_277:
	mov	ecx, 1
.label_278:
	mov	rdi, rcx
	mov	rsi, rax
	jmp	calloc
	.section	.text
	.align	32
	#Procedure 0x40552b
	.globl sub_40552b
	.type sub_40552b, @function
sub_40552b:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x405530

	.globl string_hasher_ci
	.type string_hasher_ci, @function
string_hasher_ci:
	push	r15
	push	r14
	push	rbx
	sub	rsp, 0x40
	mov	r14, rsi
	mov	qword ptr [rsp + 0x10], rdi
	mov	byte ptr [rsp], 0
	mov	qword ptr [rsp + 4], 0
	mov	byte ptr [rsp + 0xc], 0
	lea	rdi, [rsp]
	call	mbuiter_multi_next
	mov	al, byte ptr [rsp + 0x20]
	mov	edi, dword ptr [rsp + 0x24]
	xor	ebx, ebx
	test	al, al
	je	.label_283
	test	edi, edi
	je	.label_282
.label_283:
	xor	ebx, ebx
	lea	r15, [rsp]
	nop	word ptr cs:[rax + rax]
.label_280:
	test	al, al
	je	.label_279
	call	towlower
	jmp	.label_281
	.section	.text
	.align	32
	#Procedure 0x40558b
	.globl sub_40558b
	.type sub_40558b, @function
sub_40558b:

	nop	dword ptr [rax + rax]
.label_279:
	mov	rax, qword ptr [rsp + 0x10]
	movsx	eax, byte ptr [rax]
.label_281:
	mov	rcx, rbx
	shl	rcx, 5
	sub	rcx, rbx
	cdqe	
	add	rax, rcx
	xor	edx, edx
	div	r14
	mov	rax, qword ptr [rsp + 0x18]
	add	qword ptr [rsp + 0x10], rax
	mov	byte ptr [rsp + 0xc], 0
	mov	rbx, rdx
	mov	rdi, r15
	call	mbuiter_multi_next
	movzx	eax, byte ptr [rsp + 0x20]
	mov	edi, dword ptr [rsp + 0x24]
	test	al, al
	je	.label_280
	test	edi, edi
	jne	.label_280
.label_282:
	mov	rax, rbx
	add	rsp, 0x40
	pop	rbx
	pop	r14
	pop	r15
	ret	
	.section	.text
	.align	32
	#Procedure 0x4055e4
	.globl sub_4055e4
	.type sub_4055e4, @function
sub_4055e4:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4055f0

	.globl re_dfa_add_node
	.type re_dfa_add_node, @function
re_dfa_add_node:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x18
	mov	r15, rdx
	mov	r12, rsi
	mov	rbx, rdi
	mov	rbp, qword ptr [rbx + 8]
	cmp	qword ptr [rbx + 0x10], rbp
	jae	.label_288
.label_289:
	mov	rax, qword ptr [rbx]
	mov	rcx, qword ptr [rbx + 0x10]
	shl	rcx, 4
	mov	qword ptr [rax + rcx], r12
	mov	qword ptr [rax + rcx + 8], r15
	mov	rax, qword ptr [rbx]
	mov	rcx, qword ptr [rbx + 0x10]
	shl	rcx, 4
	and	dword ptr [rax + rcx + 8], 0xfffc00ff
	movzx	eax, r15b
	cmp	eax, 5
	jne	.label_286
	mov	cl, 1
	cmp	dword ptr [rbx + 0xb4], 1
	jg	.label_284
.label_286:
	cmp	eax, 6
	sete	cl
.label_284:
	movzx	eax, cl
	mov	rcx, qword ptr [rbx]
	mov	rdx, qword ptr [rbx + 0x10]
	shl	rdx, 4
	shl	eax, 0x14
	mov	esi, 0xffefffff
	and	esi, dword ptr [rcx + rdx + 8]
	or	esi, eax
	mov	dword ptr [rcx + rdx + 8], esi
	mov	rax, qword ptr [rbx + 0x10]
	mov	rcx, qword ptr [rbx + 0x18]
	mov	qword ptr [rcx + rax*8], -1
	mov	rax, qword ptr [rbx + 0x10]
	mov	rcx, qword ptr [rbx + 0x28]
	lea	rax, [rax + rax*2]
	xorps	xmm0, xmm0
	movups	xmmword ptr [rcx + rax*8], xmm0
	mov	qword ptr [rcx + rax*8 + 0x10], 0
	mov	rax, qword ptr [rbx + 0x10]
	mov	rcx, qword ptr [rbx + 0x30]
	lea	rax, [rax + rax*2]
	movups	xmmword ptr [rcx + rax*8], xmm0
	mov	qword ptr [rcx + rax*8 + 0x10], 0
	mov	r14, qword ptr [rbx + 0x10]
	lea	rax, [r14 + 1]
	mov	qword ptr [rbx + 0x10], rax
.label_285:
	mov	rax, r14
	add	rsp, 0x18
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_288:
	lea	rcx, [rbp + rbp]
	mov	r14, -1
	movabs	rax, 0xaaaaaaaaaaaaaaa
	cmp	rcx, rax
	ja	.label_285
	mov	qword ptr [rsp + 0x10], rcx
	mov	rdi, qword ptr [rbx]
	mov	rsi, rbp
	shl	rsi, 5
	call	realloc
	test	rax, rax
	je	.label_285
	mov	qword ptr [rbx], rax
	mov	rdi, qword ptr [rbx + 0x18]
	shl	rbp, 4
	mov	rsi, rbp
	call	realloc
	mov	qword ptr [rsp + 8], rax
	mov	rdi, qword ptr [rbx + 0x20]
	mov	rsi, rbp
	call	realloc
	mov	qword ptr [rsp], rax
	mov	rdi, qword ptr [rbx + 0x28]
	lea	rbp, [rbp + rbp*2]
	mov	rsi, rbp
	call	realloc
	mov	r13, rax
	mov	rdi, qword ptr [rbx + 0x30]
	mov	rsi, rbp
	mov	rbp, qword ptr [rsp]
	call	realloc
	mov	rdi, qword ptr [rsp + 8]
	test	rdi, rdi
	je	.label_287
	test	rbp, rbp
	je	.label_287
	test	r13, r13
	je	.label_287
	test	rax, rax
	je	.label_287
	mov	qword ptr [rbx + 0x18], rdi
	mov	qword ptr [rbx + 0x20], rbp
	mov	qword ptr [rbx + 0x28], r13
	mov	qword ptr [rbx + 0x30], rax
	mov	rax, qword ptr [rsp + 0x10]
	mov	qword ptr [rbx + 8], rax
	jmp	.label_289
.label_287:
	mov	r15, rax
	call	free
	mov	rdi, rbp
	call	free
	mov	rdi, r13
	call	free
	mov	rdi, r15
	call	free
	jmp	.label_285
	.section	.text
	.align	32
	#Procedure 0x4057b5
	.globl sub_4057b5
	.type sub_4057b5, @function
sub_4057b5:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4057c0

	.globl fts_palloc
	.type fts_palloc, @function
fts_palloc:
	push	rbx
	mov	rbx, rdi
	add	rsi, 0x100
	add	rsi, qword ptr [rbx + 0x30]
	jae	.label_290
	mov	rdi, qword ptr [rbx + 0x20]
	call	free
	mov	qword ptr [rbx + 0x20], 0
	call	__errno_location
	mov	dword ptr [rax], 0x24
	jmp	.label_292
.label_290:
	mov	qword ptr [rbx + 0x30], rsi
	mov	rdi, qword ptr [rbx + 0x20]
	call	realloc
	test	rax, rax
	je	.label_293
	mov	qword ptr [rbx + 0x20], rax
	mov	al, 1
	jmp	.label_291
.label_293:
	mov	rdi, qword ptr [rbx + 0x20]
	call	free
	mov	qword ptr [rbx + 0x20], 0
.label_292:
	xor	eax, eax
.label_291:
	pop	rbx
	ret	
	.section	.text
	.align	32
	#Procedure 0x40581e
	.globl sub_40581e
	.type sub_40581e, @function
sub_40581e:

	nop	
	.section	.text
	.align	32
	#Procedure 0x405820

	.globl excluded_file_name
	.type excluded_file_name, @function
excluded_file_name:
	push	rbp
	push	r15
	push	r14
	push	rbx
	push	rax
	mov	r14, rsi
	mov	rax, qword ptr [rdi]
	test	rax, rax
	je	.label_294
	xor	r15d, r15d
	nop	dword ptr [rax]
.label_299:
	mov	rbx, rax
	cmp	dword ptr [rbx + 8], 0
	je	.label_295
	mov	rdi, rbx
	mov	rsi, r14
	call	file_pattern_matches
	jmp	.label_300
	.section	.text
	.align	32
	#Procedure 0x405856
	.globl sub_405856
	.type sub_405856, @function
sub_405856:

	nop	word ptr cs:[rax + rax]
.label_295:
	test	r15, r15
	jne	.label_297
	mov	rdi, r14
	call	strlen
	lea	rdi, [rax + 1]
	call	xmalloc
	mov	r15, rax
.label_297:
	mov	rdi, rbx
	mov	rsi, r14
	mov	rdx, r15
	call	file_name_matches
.label_300:
	xor	ebp, ebp
	test	al, al
	jne	.label_298
	mov	rax, qword ptr [rbx]
	mov	ebp, 1
	test	rax, rax
	jne	.label_299
.label_298:
	mov	rdi, r15
	call	free
	mov	eax, dword ptr [rbx + 0xc]
	shr	eax, 0x1d
	not	eax
	and	eax, 1
	cmp	ebp, eax
	setne	al
	jmp	.label_296
.label_294:
	xor	eax, eax
.label_296:
	add	rsp, 8
	pop	rbx
	pop	r14
	pop	r15
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x4058c1
	.globl sub_4058c1
	.type sub_4058c1, @function
sub_4058c1:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4058d0

	.globl check_matching
	.type check_matching, @function
check_matching:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x28
	mov	r13, rdx
	mov	dword ptr [rsp + 8], esi
	mov	rbp, rdi
	mov	r15, qword ptr [rbp + 0x98]
	mov	r12, qword ptr [rbp + 0x48]
	test	r13, r13
	setne	al
	mov	dword ptr [rsp + 0xc], eax
	mov	dword ptr [rsp + 4], 0
	mov	r14, qword ptr [rbp + 0x98]
	mov	rbx, qword ptr [r14 + 0x48]
	cmp	byte ptr [rbx + 0x68], 0
	jns	.label_316
	lea	rsi, [r12 - 1]
	mov	edx, dword ptr [rbp + 0xa0]
	mov	rdi, rbp
	call	re_string_context_at
	test	al, 1
	jne	.label_315
	test	eax, eax
	je	.label_316
	mov	ecx, eax
	and	ecx, 4
	sete	sil
	mov	edx, eax
	and	edx, 2
	je	.label_317
	test	sil, sil
	jne	.label_317
	mov	rbx, qword ptr [r14 + 0x60]
	jmp	.label_316
.label_315:
	mov	rbx, qword ptr [r14 + 0x50]
.label_316:
	test	rbx, rbx
	je	.label_324
	mov	rax, qword ptr [rbp + 0xb8]
	test	rax, rax
	je	.label_305
	mov	qword ptr [rax + r12*8], rbx
	cmp	qword ptr [r15 + 0x98], 0
	jne	.label_329
.label_305:
	mov	al, byte ptr [rbx + 0x68]
	mov	rdx, -1
	xor	ecx, ecx
	test	al, 0x10
	jne	.label_333
.label_314:
	mov	qword ptr [rsp + 0x18], rdx
	mov	qword ptr [rsp + 0x20], r13
	mov	qword ptr [rsp + 0x10], r12
	lea	r13, [rsp + 4]
.label_330:
	mov	rsi, qword ptr [rbp + 0x48]
	cmp	qword ptr [rbp + 0x68], rsi
	jle	.label_304
	test	rcx, rcx
	sete	r12b
	mov	eax, dword ptr [rsp + 8]
	or	r12b, al
	mov	r14, rbx
	nop	word ptr cs:[rax + rax]
.label_303:
	lea	r15, [rsi + 1]
	mov	rax, qword ptr [rbp + 0x40]
	cmp	r15, rax
	jge	.label_322
.label_308:
	mov	rax, qword ptr [rbp + 0x30]
	cmp	r15, rax
	jge	.label_327
.label_323:
	mov	rdi, r13
	mov	rsi, rbp
	mov	rdx, r14
	call	transit_state
	mov	rbx, rax
	cmp	qword ptr [rbp + 0xb8], 0
	je	.label_332
	mov	rdi, r13
	mov	rsi, rbp
	mov	rdx, rbx
	call	merge_state_with_log
	mov	rbx, rax
.label_332:
	test	rbx, rbx
	jne	.label_309
	mov	rax, -2
	cmp	dword ptr [rsp + 4], 0
	jne	.label_306
	cmp	qword ptr [rbp + 0xb8], 0
	setne	al
	and	al, r12b
	cmp	al, 1
	jne	.label_304
	mov	rdi, r13
	mov	rsi, rbp
	call	find_recover_state
	mov	rbx, rax
	test	rbx, rbx
	je	.label_304
.label_309:
	mov	eax, dword ptr [rsp + 0xc]
	test	al, 1
	jne	.label_325
.label_326:
	movzx	eax, byte ptr [rbx + 0x68]
	test	al, 0x10
	je	.label_328
	test	al, al
	jns	.label_301
	mov	rdx, qword ptr [rbp + 0x48]
	mov	rdi, rbp
	mov	rsi, rbx
	call	check_halt_state_context
	test	rax, rax
	jne	.label_301
.label_328:
	mov	rsi, qword ptr [rbp + 0x48]
	cmp	qword ptr [rbp + 0x68], rsi
	mov	r14, rbx
	jg	.label_303
	jmp	.label_304
.label_322:
	cmp	rax, qword ptr [rbp + 0x58]
	jge	.label_308
	jmp	.label_313
.label_327:
	cmp	rax, qword ptr [rbp + 0x58]
	jge	.label_323
.label_313:
	add	esi, 2
	mov	rdi, rbp
	call	extend_buffers
	mov	ecx, eax
	mov	dword ptr [rsp + 4], ecx
	test	ecx, ecx
	jne	.label_320
	jmp	.label_323
.label_325:
	cmp	r14, rbx
	je	.label_319
	mov	dword ptr [rsp + 0xc], 0
.label_319:
	mov	rax, qword ptr [rsp + 0x10]
	cmove	rax, r15
	mov	qword ptr [rsp + 0x10], rax
	jmp	.label_326
.label_301:
	mov	rdx, qword ptr [rbp + 0x48]
	mov	eax, dword ptr [rsp + 8]
	test	al, al
	mov	ecx, 1
	mov	eax, 0
	mov	qword ptr [rsp + 0x20], rax
	mov	qword ptr [rsp + 0x18], rdx
	mov	rax, rdx
	jne	.label_330
	jmp	.label_306
.label_304:
	mov	rcx, qword ptr [rsp + 0x20]
	test	rcx, rcx
	je	.label_307
	mov	rax, qword ptr [rsp + 0x10]
	add	qword ptr [rcx], rax
.label_307:
	mov	rax, qword ptr [rsp + 0x18]
.label_306:
	add	rsp, 0x28
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_317:
	test	edx, edx
	jne	.label_321
	test	ecx, ecx
	je	.label_316
	mov	rdx, qword ptr [rbx + 0x50]
	lea	rdi, [rsp + 4]
	mov	rsi, r14
	mov	ecx, eax
	call	re_acquire_state_context
	mov	rbx, rax
	jmp	.label_316
.label_321:
	mov	rbx, qword ptr [r14 + 0x58]
	jmp	.label_316
.label_320:
	mov	rax, -2
	cmp	ecx, 0xc
	je	.label_306
	mov	edi, OFFSET FLAT:label_310
	mov	esi, OFFSET FLAT:label_311
	mov	edx, 0x46c
	mov	ecx, OFFSET FLAT:label_312
	call	__assert_fail
.label_324:
	mov	rax, -2
	cmp	dword ptr [rsp + 4], 0xc
	je	.label_306
	mov	edi, OFFSET FLAT:label_310
	mov	esi, OFFSET FLAT:label_311
	mov	edx, 0x435
	mov	ecx, OFFSET FLAT:label_312
	call	__assert_fail
.label_333:
	test	al, al
	js	.label_318
	mov	ecx, 1
	mov	eax, dword ptr [rsp + 8]
	test	al, al
	mov	rdx, r12
	jne	.label_314
	mov	rax, r12
	jmp	.label_306
.label_329:
	lea	r14, [rbx + 8]
	xor	edx, edx
	mov	rdi, rbp
	mov	rsi, r14
	call	check_subexp_matching_top
	mov	dword ptr [rsp + 4], eax
	test	eax, eax
	jne	.label_302
	test	byte ptr [rbx + 0x68], 0x40
	je	.label_331
	mov	rdi, rbp
	mov	rsi, r14
	call	transit_state_bkref
	mov	dword ptr [rsp + 4], eax
	test	eax, eax
	jne	.label_302
.label_331:
	mov	dword ptr [rsp + 0xc], 0
	jmp	.label_305
.label_318:
	mov	rdi, rbp
	mov	rsi, rbx
	mov	rdx, r12
	call	check_halt_state_context
	cmp	rax, 1
	sbb	rdx, rdx
	or	rdx, r12
	xor	ecx, ecx
	test	rax, rax
	setne	cl
	je	.label_314
	mov	eax, dword ptr [rsp + 8]
	test	al, al
	jne	.label_314
	mov	rax, r12
	jmp	.label_306
.label_302:
	cdqe	
	jmp	.label_306
	.section	.text
	.align	32
	#Procedure 0x405c5b
	.globl sub_405c5b
	.type sub_405c5b, @function
sub_405c5b:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x405c60

	.globl re_acquire_state_context
	.type re_acquire_state_context, @function
re_acquire_state_context:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x18
	mov	r13d, ecx
	mov	rbp, rsi
	cmp	qword ptr [rdx + 8], 0
	je	.label_334
	mov	qword ptr [rsp + 8], rdi
	mov	qword ptr [rsp], rdx
	mov	rdi, rdx
	mov	esi, r13d
	call	calc_state_hash
	mov	rbx, rax
	mov	rax, qword ptr [rbp + 0x40]
	mov	qword ptr [rsp + 0x10], rbp
	mov	rcx, qword ptr [rbp + 0x88]
	and	rcx, rbx
	lea	rcx, [rcx + rcx*2]
	cmp	qword ptr [rax + rcx*8], 0
	jle	.label_339
	lea	r14, [rax + rcx*8]
	mov	r15, qword ptr [rax + rcx*8 + 0x10]
	xor	r12d, r12d
.label_336:
	mov	rbp, qword ptr [r15 + r12*8]
	cmp	qword ptr [rbp], rbx
	jne	.label_337
	movzx	eax, byte ptr [rbp + 0x68]
	and	eax, 0xf
	cmp	eax, r13d
	jne	.label_337
	mov	rdi, qword ptr [rbp + 0x50]
	mov	rsi, qword ptr [rsp]
	call	re_node_set_compare
	test	al, al
	jne	.label_335
.label_337:
	inc	r12
	cmp	r12, qword ptr [r14]
	jl	.label_336
.label_339:
	mov	rdi, qword ptr [rsp + 0x10]
	mov	rsi, qword ptr [rsp]
	mov	edx, r13d
	mov	rcx, rbx
	call	create_cd_newstate
	mov	rbp, rax
	test	rbp, rbp
	jne	.label_335
	mov	rax, qword ptr [rsp + 8]
	mov	dword ptr [rax], 0xc
	jmp	.label_338
.label_334:
	mov	dword ptr [rdi], 0
.label_338:
	xor	ebp, ebp
.label_335:
	mov	rax, rbp
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
	#Procedure 0x405d32
	.globl sub_405d32
	.type sub_405d32, @function
sub_405d32:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x405d40

	.globl match_ctx_add_subtop
	.type match_ctx_add_subtop, @function
match_ctx_add_subtop:
	push	r15
	push	r14
	push	r12
	push	rbx
	push	rax
	mov	r14, rdx
	mov	r15, rsi
	mov	rbx, rdi
	mov	r12, qword ptr [rbx + 0xf0]
	cmp	qword ptr [rbx + 0xe8], r12
	je	.label_340
.label_342:
	mov	edi, 1
	mov	esi, 0x30
	call	rpl_calloc
	mov	rcx, qword ptr [rbx + 0xe8]
	mov	rdx, qword ptr [rbx + 0xf8]
	mov	qword ptr [rdx + rcx*8], rax
	mov	rax, qword ptr [rbx + 0xe8]
	mov	rcx, qword ptr [rbx + 0xf8]
	mov	rcx, qword ptr [rcx + rax*8]
	mov	eax, 0xc
	test	rcx, rcx
	je	.label_341
	mov	qword ptr [rcx + 8], r15
	mov	rax, qword ptr [rbx + 0xe8]
	lea	rcx, [rax + 1]
	mov	qword ptr [rbx + 0xe8], rcx
	mov	rcx, qword ptr [rbx + 0xf8]
	mov	rax, qword ptr [rcx + rax*8]
	mov	qword ptr [rax], r14
	xor	eax, eax
.label_341:
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	ret	
.label_340:
	mov	rdi, qword ptr [rbx + 0xf8]
	mov	rsi, r12
	shl	rsi, 4
	call	realloc
	mov	rcx, rax
	mov	eax, 0xc
	test	rcx, rcx
	je	.label_341
	add	r12, r12
	mov	qword ptr [rbx + 0xf8], rcx
	mov	qword ptr [rbx + 0xf0], r12
	jmp	.label_342
	.section	.text
	.align	32
	#Procedure 0x405e06
	.globl sub_405e06
	.type sub_405e06, @function
sub_405e06:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x405e10
	.globl rotl32
	.type rotl32, @function
rotl32:

	mov	ecx, esi
	rol	edi, cl
	mov	eax, edi
	ret	
	.section	.text
	.align	32
	#Procedure 0x405e17
	.globl sub_405e17
	.type sub_405e17, @function
sub_405e17:

	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x405e20

	.globl re_search_internal
	.type re_search_internal, @function
re_search_internal:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x188
	mov	r12, rdi
	mov	rdi, qword ptr [rsp + 0x1c0]
	mov	r10, qword ptr [r12]
	xorps	xmm0, xmm0
	movaps	xmmword ptr [rsp + 0x170], xmm0
	movaps	xmmword ptr [rsp + 0x160], xmm0
	movaps	xmmword ptr [rsp + 0x150], xmm0
	movaps	xmmword ptr [rsp + 0x140], xmm0
	movaps	xmmword ptr [rsp + 0x130], xmm0
	movaps	xmmword ptr [rsp + 0x120], xmm0
	movaps	xmmword ptr [rsp + 0x110], xmm0
	movaps	xmmword ptr [rsp + 0x100], xmm0
	movaps	xmmword ptr [rsp + 0xf0], xmm0
	movaps	xmmword ptr [rsp + 0xe0], xmm0
	movaps	xmmword ptr [rsp + 0xd0], xmm0
	movaps	xmmword ptr [rsp + 0xc0], xmm0
	movaps	xmmword ptr [rsp + 0xb0], xmm0
	movaps	xmmword ptr [rsp + 0xa0], xmm0
	movaps	xmmword ptr [rsp + 0x90], xmm0
	movaps	xmmword ptr [rsp + 0x80], xmm0
	mov	qword ptr [rsp + 0x118], r10
	mov	rax, qword ptr [r12 + 0x20]
	xor	r14d, r14d
	test	rax, rax
	je	.label_351
	mov	bl, byte ptr [r12 + 0x38]
	and	bl, 9
	xor	ebp, ebp
	cmp	bl, 8
	cmovne	rax, rbp
	cmp	rcx, r8
	cmove	rax, rbp
	mov	r14, rax
.label_351:
	mov	rax, qword ptr [r12 + 0x30]
	lea	r15, [rdi - 1]
	mov	rbp, r15
	sub	rbp, rax
	xor	ebx, ebx
	cmp	rax, rdi
	cmovb	rbx, rbp
	mov	r13d, 1
	cmp	qword ptr [r12 + 0x10], 0
	je	.label_350
	mov	rax, qword ptr [r10 + 0x48]
	test	rax, rax
	je	.label_350
	mov	r11, qword ptr [r10 + 0x50]
	test	r11, r11
	je	.label_350
	mov	qword ptr [rsp + 0x38], r9
	mov	r9, qword ptr [r10 + 0x58]
	test	r9, r9
	je	.label_350
	mov	qword ptr [rsp + 0x30], rcx
	cmp	qword ptr [r10 + 0x60], 0
	je	.label_350
	mov	rcx, qword ptr [r12 + 0x28]
	cmp	qword ptr [rax + 0x10], 0
	jne	.label_366
	cmp	qword ptr [r11 + 0x10], 0
	jne	.label_366
	cmp	qword ptr [r9 + 0x10], 0
	je	.label_369
	cmp	byte ptr [r12 + 0x38], 0
	js	.label_366
.label_369:
	xor	ebp, ebp
	cmp	qword ptr [rsp + 0x30], 0
	je	.label_372
	test	r8, r8
	mov	eax, 0
	mov	qword ptr [rsp + 0x30], rax
	jne	.label_350
	jmp	.label_378
.label_366:
	mov	rbp, r8
.label_378:
	mov	qword ptr [rsp + 0x40], rcx
	mov	qword ptr [rsp + 0x50], r15
	mov	qword ptr [rsp + 0x68], rbx
	sub	rdi, rbx
	mov	qword ptr [rsp + 0x28], rdi
	mov	byte ptr [rsp + 0x17], 1
	jne	.label_379
	cmp	qword ptr [r10 + 0x98], 0
	setne	byte ptr [rsp + 0x17]
.label_379:
	mov	rcx, qword ptr [r10 + 0x10]
	inc	rcx
	mov	r8, qword ptr [r12 + 0x28]
	mov	r9d, 0x400000
	and	r9, qword ptr [r12 + 0x18]
	shr	r9, 0x16
	mov	qword ptr [rsp + 0x20], r10
	mov	qword ptr [rsp], r10
	lea	rdi, [rsp + 0x80]
	mov	qword ptr [rsp + 0x58], rsi
	mov	qword ptr [rsp + 0x60], rdx
	call	re_string_allocate
	mov	r13d, eax
	test	r13d, r13d
	jne	.label_345
	mov	esi, dword ptr [rsp + 0x1d0]
	mov	rax, qword ptr [rsp + 0x38]
	mov	qword ptr [rsp + 0xe8], rax
	mov	qword ptr [rsp + 0xe0], rax
	mov	al, byte ptr [r12 + 0x38]
	shr	al, 7
	mov	byte ptr [rsp + 0x10d], al
	mov	rax, qword ptr [rsp + 0x20]
	mov	rdx, qword ptr [rax + 0x98]
	add	rdx, rdx
	lea	rdi, [rsp + 0x80]
	call	match_ctx_init
	mov	r13d, eax
	test	r13d, r13d
	jne	.label_345
	cmp	qword ptr [rsp + 0x28], 1
	ja	.label_370
	mov	rax, qword ptr [rsp + 0x20]
	test	byte ptr [rax + 0xb0], 2
	jne	.label_370
	mov	qword ptr [rsp + 0x138], 0
	jmp	.label_373
.label_370:
	mov	rax, qword ptr [rsp + 0xc0]
	mov	r13d, 0xc
	movabs	rcx, 0x1ffffffffffffffe
	cmp	rax, rcx
	ja	.label_345
	lea	rdi, [rax*8 + 8]
	call	malloc
	mov	qword ptr [rsp + 0x138], rax
	test	rax, rax
	je	.label_345
.label_373:
	mov	rdi, qword ptr [rsp + 0x30]
	mov	qword ptr [rsp + 0x18], rdi
	mov	eax, dword ptr [rsp + 0x1d0]
	lea	eax, [rax + rax]
	and	eax, 2
	xor	eax, 6
	mov	dword ptr [rsp + 0xf0], eax
	mov	rax, rbp
	cmp	rax, rdi
	mov	r9d, 0xffffffff
	mov	ecx, 1
	cmovge	r9d, ecx
	mov	r13, rdi
	cmovle	r13, rax
	mov	r15, rax
	cmovl	r15, rdi
	mov	rcx, qword ptr [rsp + 0x20]
	mov	ecx, dword ptr [rcx + 0xb4]
	mov	dword ptr [rsp + 0x38], ecx
	mov	edx, 8
	test	r14, r14
	mov	r8, qword ptr [rsp + 0x60]
	mov	rbp, qword ptr [rsp + 0x58]
	mov	rbx, qword ptr [rsp + 0x40]
	je	.label_392
	cmp	dword ptr [rsp + 0x38], 1
	je	.label_356
	mov	edx, 0x400000
	xor	ecx, ecx
	test	rbx, rbx
	jne	.label_358
	and	rdx, qword ptr [r12 + 0x18]
	jne	.label_358
.label_356:
	mov	ecx, 4
.label_358:
	xor	edx, edx
	cmp	rdi, rax
	setle	dl
	xor	esi, esi
	test	rbx, rbx
	setne	sil
	lea	edx, [rsi + rdx*2]
	or	edx, ecx
.label_392:
	mov	rcx, qword ptr [rsp + 0x18]
	cmp	rcx, r13
	jl	.label_368
	cmp	r15, rcx
	jl	.label_368
	xor	ecx, ecx
	cmp	rdi, rax
	lea	rsi, [rsp + 0x18]
	cmovg	rsi, rcx
	mov	qword ptr [rsp + 0x30], rsi
	movsxd	rdi, r9d
	add	edx, -4
	mov	qword ptr [rsp + 0x48], r13
	mov	qword ptr [rsp + 0x78], rdx
	mov	qword ptr [rsp + 0x70], rdi
.label_386:
	cmp	edx, 4
	ja	.label_353
	jmp	qword ptr [word ptr [+ (rdx * 8) + label_385]]
.label_2772:
	mov	rcx, qword ptr [rsp + 0x18]
	cmp	rcx, r13
	jl	.label_387
	nop	word ptr cs:[rax + rax]
.label_389:
	xor	eax, eax
	cmp	rcx, r8
	jge	.label_394
	movzx	eax, byte ptr [rbp + rcx]
.label_394:
	test	rbx, rbx
	je	.label_397
	movzx	eax, byte ptr [rbx + rax]
.label_397:
	cmp	byte ptr [r14 + rax], 0
	jne	.label_387
	mov	rax, qword ptr [rsp + 0x18]
	lea	rcx, [rax - 1]
	mov	qword ptr [rsp + 0x18], rcx
	cmp	rax, r13
	jg	.label_389
.label_387:
	cmp	qword ptr [rsp + 0x18], r13
	jge	.label_382
	jmp	.label_346
	.section	.text
	.align	32
	#Procedure 0x40620f
	.globl sub_40620f
	.type sub_40620f, @function
sub_40620f:

	nop	
.label_380:
	mov	rax, qword ptr [rsp + 0x18]
	add	rax, rdi
	mov	qword ptr [rsp + 0x18], rax
	cmp	rax, r13
	jl	.label_348
	cmp	rax, r15
	jle	.label_353
	jmp	.label_348
.label_371:
	lea	rdi, [rsp + 0x80]
	mov	edx, dword ptr [rsp + 0x1d0]
	call	re_string_reconstruct
	mov	r13d, eax
	test	r13d, r13d
	jne	.label_345
	mov	rax, qword ptr [rsp + 0x18]
	sub	rax, qword ptr [rsp + 0xa8]
	mov	r8, qword ptr [rsp + 0x60]
	mov	r13, qword ptr [rsp + 0x48]
	mov	rdi, qword ptr [rsp + 0x70]
	jmp	.label_363
	.section	.text
	.align	32
	#Procedure 0x40626e
	.globl sub_40626e
	.type sub_40626e, @function
sub_40626e:

	nop	
.label_353:
	mov	rsi, qword ptr [rsp + 0x18]
	mov	rax, rsi
	sub	rax, qword ptr [rsp + 0xa8]
	cmp	rax, qword ptr [rsp + 0xb8]
	jae	.label_371
.label_363:
	cmp	qword ptr [rsp + 0x18], r8
	mov	ecx, 0
	jge	.label_359
	mov	rcx, qword ptr [rsp + 0x88]
	movzx	ecx, byte ptr [rcx + rax]
.label_359:
	cmp	byte ptr [r14 + rcx], 0
	je	.label_380
	jmp	.label_382
.label_2773:
	mov	rax, qword ptr [rsp + 0x18]
	jmp	.label_383
	.section	.text
	.align	32
	#Procedure 0x4062b6
	.globl sub_4062b6
	.type sub_4062b6, @function
sub_4062b6:

	nop	word ptr cs:[rax + rax]
.label_393:
	inc	rax
	mov	qword ptr [rsp + 0x18], rax
.label_383:
	cmp	rax, r15
	jge	.label_391
	movzx	ecx, byte ptr [rbp + rax]
	cmp	byte ptr [r14 + rcx], 0
	je	.label_393
	jmp	.label_391
.label_2774:
	mov	rax, qword ptr [rsp + 0x18]
	jmp	.label_396
	.section	.text
	.align	32
	#Procedure 0x4062e2
	.globl sub_4062e2
	.type sub_4062e2, @function
sub_4062e2:

	nop	word ptr cs:[rax + rax]
.label_400:
	inc	rax
	mov	qword ptr [rsp + 0x18], rax
.label_396:
	cmp	rax, r15
	jge	.label_391
	movzx	ecx, byte ptr [rbp + rax]
	movzx	ecx, byte ptr [rbx + rcx]
	cmp	byte ptr [r14 + rcx], 0
	je	.label_400
.label_391:
	mov	rcx, qword ptr [rsp + 0x18]
	cmp	rcx, r15
	je	.label_347
.label_382:
	mov	rsi, qword ptr [rsp + 0x18]
	lea	rbx, [rsp + 0x80]
	mov	rdi, rbx
	mov	edx, dword ptr [rsp + 0x1d0]
	call	re_string_reconstruct
	mov	ebp, eax
	test	ebp, ebp
	jne	.label_354
	cmp	dword ptr [rsp + 0x38], 1
	je	.label_360
	mov	rax, qword ptr [rsp + 0xb0]
	test	rax, rax
	je	.label_360
	mov	rax, qword ptr [rsp + 0x90]
	cmp	dword ptr [rax], -1
	je	.label_365
.label_360:
	mov	dword ptr [rsp + 0x160], 0
	lea	rax, [rsp + 0x140]
	xorps	xmm0, xmm0
	movups	xmmword ptr [rax], xmm0
	movzx	esi, byte ptr [rsp + 0x17]
	mov	rdi, rbx
	mov	rdx, qword ptr [rsp + 0x30]
	call	check_matching
	cmp	rax, -1
	je	.label_375
	mov	r13d, 0xc
	cmp	rax, -2
	je	.label_345
	mov	qword ptr [rsp + 0x128], rax
	mov	rdx, qword ptr [rsp + 0x28]
	cmp	rdx, 2
	jb	.label_344
	mov	cl, byte ptr [r12 + 0x38]
	and	cl, 0x10
	je	.label_390
.label_344:
	mov	rcx, qword ptr [rsp + 0x20]
	cmp	qword ptr [rcx + 0x98], 0
	je	.label_376
.label_390:
	mov	rcx, qword ptr [rsp + 0x138]
	mov	rsi, qword ptr [rcx + rax*8]
	mov	rdi, rbx
	mov	rdx, rax
	call	check_halt_state_context
	mov	rdx, qword ptr [rsp + 0x28]
	mov	qword ptr [rsp + 0x130], rax
.label_376:
	cmp	rdx, 2
	jb	.label_343
	mov	al, byte ptr [r12 + 0x38]
	and	al, 0x10
	jne	.label_343
	mov	rax, qword ptr [rsp + 0x20]
	test	byte ptr [rax + 0xb0], 1
	jne	.label_364
.label_343:
	mov	rax, qword ptr [rsp + 0x20]
	cmp	qword ptr [rax + 0x98], 0
	je	.label_349
.label_364:
	mov	rdi, rbx
	call	prune_impossible_nodes
	mov	r13d, eax
	xor	ebp, ebp
	test	r13d, r13d
	je	.label_349
	cmp	r13d, 1
	jne	.label_345
.label_375:
	mov	rdi, rbx
	call	match_ctx_clean
	mov	r13, qword ptr [rsp + 0x48]
.label_365:
	mov	rax, qword ptr [rsp + 0x18]
	mov	rdi, qword ptr [rsp + 0x70]
	add	rax, rdi
	mov	qword ptr [rsp + 0x18], rax
	cmp	rax, r13
	jl	.label_346
	cmp	r15, rax
	mov	r8, qword ptr [rsp + 0x60]
	mov	rbp, qword ptr [rsp + 0x58]
	mov	rbx, qword ptr [rsp + 0x40]
	mov	rdx, qword ptr [rsp + 0x78]
	jge	.label_386
	jmp	.label_346
.label_347:
	xor	eax, eax
	cmp	rcx, r8
	jge	.label_377
	mov	rax, qword ptr [rsp + 0x58]
	movzx	eax, byte ptr [rax + rcx]
.label_377:
	cmp	qword ptr [rsp + 0x40], 0
	je	.label_381
	mov	rcx, qword ptr [rsp + 0x40]
	movzx	eax, byte ptr [rcx + rax]
.label_381:
	cmp	byte ptr [r14 + rax], 0
	mov	r13, qword ptr [rsp + 0x48]
	jne	.label_382
	mov	r13d, 1
	jmp	.label_345
.label_368:
	mov	r13d, 1
	jmp	.label_345
.label_349:
	mov	rcx, qword ptr [rsp + 0x28]
	test	rcx, rcx
	je	.label_354
	cmp	rcx, 1
	mov	r14, qword ptr [rsp + 0x1c8]
	je	.label_399
	lea	rdi, [r14 + 0x10]
	cmp	rcx, 2
	mov	edx, 2
	cmova	rdx, rcx
	shl	rdx, 4
	add	rdx, -0x10
	mov	esi, 0xff
	call	memset
	mov	rcx, qword ptr [rsp + 0x28]
.label_399:
	mov	qword ptr [r14], 0
	mov	rax, qword ptr [rsp + 0x128]
	mov	qword ptr [r14 + 8], rax
	cmp	rcx, 2
	mov	r8, qword ptr [rsp + 0x20]
	mov	r10, qword ptr [rsp + 0x50]
	jb	.label_361
	mov	al, byte ptr [r12 + 0x38]
	and	al, 0x10
	jne	.label_361
	test	byte ptr [r8 + 0xb0], 1
	jne	.label_367
	xor	eax, eax
	jmp	.label_388
.label_348:
	mov	r13d, 1
	jmp	.label_345
.label_346:
	mov	r13d, 1
	jmp	.label_345
.label_367:
	cmp	qword ptr [r8 + 0x98], 0
	setg	al
.label_388:
	movzx	r8d, al
	lea	rsi, [rsp + 0x80]
	mov	rdi, r12
	mov	rdx, rcx
	mov	rcx, r14
	call	set_regs
	mov	r13d, eax
	test	r13d, r13d
	jne	.label_345
	xor	ebp, ebp
	mov	rcx, qword ptr [rsp + 0x28]
	test	rcx, rcx
	mov	r8, qword ptr [rsp + 0x20]
	mov	r10, qword ptr [rsp + 0x50]
	mov	r14, qword ptr [rsp + 0x1c8]
	je	.label_398
.label_361:
	mov	al, byte ptr [rsp + 0x10c]
	lea	r9, [rsp + 0xb8]
	mov	rdx, qword ptr [rsp + 0x98]
	lea	rsi, [r14 + 8]
	mov	rdi, rcx
	jmp	.label_362
.label_372:
	xor	eax, eax
	mov	qword ptr [rsp + 0x30], rax
	jmp	.label_378
.label_357:
	cmp	rbx, qword ptr [rsp + 0xb0]
	lea	rbx, [rdx + rbx*8]
	cmove	rbx, r9
	mov	rbx, qword ptr [rbx]
	mov	qword ptr [rsi - 8], rbx
	mov	rbx, qword ptr [rsi]
	cmp	rbx, qword ptr [rsp + 0xb0]
	lea	rbx, [rdx + rbx*8]
	cmove	rbx, r9
	mov	rbx, qword ptr [rbx]
	mov	qword ptr [rsi], rbx
	jmp	.label_374
	.section	.text
	.align	32
	#Procedure 0x406625
	.globl sub_406625
	.type sub_406625, @function
sub_406625:

	nop	word ptr cs:[rax + rax]
.label_362:
	mov	rbx, qword ptr [rsi - 8]
	cmp	rbx, -1
	je	.label_352
	test	al, al
	jne	.label_357
.label_374:
	mov	rbx, qword ptr [rsp + 0x18]
	add	qword ptr [rsi - 8], rbx
	add	qword ptr [rsi], rbx
.label_352:
	add	rsi, 0x10
	dec	rdi
	jne	.label_362
.label_398:
	mov	rdx, qword ptr [rsp + 0x68]
	test	rdx, rdx
	jle	.label_395
	mov	rdi, rcx
	shl	rdi, 4
	add	rdi, r14
	shl	rdx, 4
	mov	esi, 0xff
	call	memset
	mov	rdx, qword ptr [rsp + 0x68]
	mov	r10, qword ptr [rsp + 0x50]
	mov	rcx, qword ptr [rsp + 0x28]
	mov	r8, qword ptr [rsp + 0x20]
.label_395:
	cmp	qword ptr [r8 + 0xe0], 0
	je	.label_354
	cmp	rcx, 2
	jb	.label_354
	mov	rax, qword ptr [r8 + 0xe0]
	sub	r10, rdx
	lea	rcx, [r14 + 0x18]
	xor	edx, edx
	nop	dword ptr [rax]
.label_355:
	mov	rsi, qword ptr [rax + rdx*8]
	cmp	rdx, rsi
	je	.label_384
	shl	rsi, 4
	mov	rsi, qword ptr [r14 + rsi + 0x10]
	mov	qword ptr [rcx - 8], rsi
	mov	rsi, qword ptr [r8 + 0xe0]
	mov	rsi, qword ptr [rsi + rdx*8]
	shl	rsi, 4
	mov	rsi, qword ptr [r14 + rsi + 0x18]
	mov	qword ptr [rcx], rsi
.label_384:
	inc	rdx
	add	rcx, 0x10
	cmp	r10, rdx
	jne	.label_355
.label_354:
	mov	r13d, ebp
.label_345:
	mov	rdi, qword ptr [rsp + 0x138]
	call	free
	mov	rax, qword ptr [rsp + 0x20]
	cmp	qword ptr [rax + 0x98], 0
	je	.label_401
	lea	rdi, [rsp + 0x80]
	call	match_ctx_free
.label_401:
	lea	rdi, [rsp + 0x80]
	call	re_string_destruct
.label_350:
	mov	eax, r13d
	add	rsp, 0x188
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x406737
	.globl sub_406737
	.type sub_406737, @function
sub_406737:

	nop	word ptr [rax + rax]
.label_404:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_402
	mov	edx, 5
	call	dcgettext
.label_403:
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	add	rsp, 0x298
	ret	
	.section	.text
	.align	32
	#Procedure 0x406768
	.globl sub_406768
	.type sub_406768, @function
sub_406768:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x406776

	.globl print_only_size
	.type print_only_size, @function
print_only_size:
	sub	rsp, 0x298
	cmp	rdi, -1
	je	.label_404
	mov	edx,  dword ptr [dword ptr [rip + human_output_opts]]
	mov	r8,  qword ptr [word ptr [rip + output_block_size]]
	lea	rsi, [rsp]
	mov	ecx, 1
	call	human_readable
	jmp	.label_403
	.section	.text
	.align	32
	#Procedure 0x4067a0

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
	je	.label_411
	mov	qword ptr [rsp + 8], -1
	xor	eax, eax
	mov	qword ptr [rsp + 0x10], rax
	mov	qword ptr [rsp + 0x18], r14
	xor	ebp, ebp
	nop	dword ptr [rax + rax]
.label_405:
	mov	rdi, r15
	mov	rsi, r12
	mov	rdx, rbx
	call	strncmp
	test	eax, eax
	jne	.label_408
	mov	rdi, r15
	call	strlen
	cmp	rax, rbx
	je	.label_407
	cmp	qword ptr [rsp + 8], -1
	je	.label_409
	mov	rax, qword ptr [rsp + 0x18]
	test	rax, rax
	je	.label_410
	mov	rdi, qword ptr [rsp + 8]
	imul	rdi, r13
	add	rdi, rax
	mov	rsi, r14
	mov	rdx, r13
	call	memcmp
	test	eax, eax
	je	.label_408
.label_410:
	mov	al, 1
	mov	qword ptr [rsp + 0x10], rax
	jmp	.label_408
.label_409:
	mov	qword ptr [rsp + 8], rbp
	nop	word ptr [rax + rax]
.label_408:
	mov	rax, qword ptr [rsp + 0x20]
	mov	r15, qword ptr [rax + rbp*8 + 8]
	inc	rbp
	add	r14, r13
	test	r15, r15
	jne	.label_405
	jmp	.label_406
.label_411:
	mov	qword ptr [rsp + 8], -1
	xor	eax, eax
	mov	qword ptr [rsp + 0x10], rax
.label_406:
	mov	rax, qword ptr [rsp + 0x10]
	test	al, 1
	mov	rbp, -2
	cmove	rbp, qword ptr [rsp + 8]
.label_407:
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
	#Procedure 0x40689d
	.globl sub_40689d
	.type sub_40689d, @function
sub_40689d:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x4068a0

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
	#Procedure 0x4068d7
	.globl sub_4068d7
	.type sub_4068d7, @function
sub_4068d7:

	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4068e0
	.globl rpl_re_set_syntax
	.type rpl_re_set_syntax, @function
rpl_re_set_syntax:

	mov	rax,  qword ptr [word ptr [rip + rpl_re_syntax_options]]
	mov	qword ptr [word ptr [rip + rpl_re_syntax_options]],  rdi
	ret	
	.section	.text
	.align	32
	#Procedure 0x4068ef
	.globl sub_4068ef
	.type sub_4068ef, @function
sub_4068ef:

	nop	
	.section	.text
	.align	32
	#Procedure 0x4068f0

	.globl sift_states_backward
	.type sift_states_backward, @function
sift_states_backward:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x18
	mov	r14, rsi
	mov	r15, rdi
	mov	rbx, qword ptr [r14 + 0x18]
	mov	rsi, qword ptr [r14 + 0x10]
	lea	rdi, [rsp]
	call	re_node_set_init_1
	mov	ebp, eax
	test	ebp, ebp
	jne	.label_415
	lea	rcx, [rsp]
	mov	rdi, r15
	mov	rsi, r14
	mov	rdx, rbx
	call	update_cur_sifted_state
	mov	ebp, eax
	test	ebp, ebp
	jne	.label_413
	lea	r12, [rsp]
	xor	r13d, r13d
	nop	word ptr cs:[rax + rax]
.label_416:
	test	rbx, rbx
	jle	.label_412
	mov	rdi, qword ptr [r14]
	inc	r13d
	cmp	qword ptr [rdi + rbx*8], 0
	mov	eax, 0
	cmovne	r13d, eax
	cmp	r13d, dword ptr [r15 + 0xe0]
	jg	.label_417
	mov	qword ptr [rsp + 8], 0
	mov	rax, qword ptr [r15 + 0xb8]
	cmp	qword ptr [rax + rbx*8 - 8], 0
	lea	rbx, [rbx - 1]
	je	.label_414
	mov	rdi, r15
	mov	rsi, r14
	mov	rdx, rbx
	mov	rcx, r12
	call	build_sifted_states
	mov	ebp, eax
	test	ebp, ebp
	jne	.label_413
.label_414:
	mov	rdi, r15
	mov	rsi, r14
	mov	rdx, rbx
	mov	rcx, r12
	call	update_cur_sifted_state
	mov	ebp, eax
	test	ebp, ebp
	je	.label_416
	jmp	.label_413
.label_412:
	xor	ebp, ebp
	jmp	.label_413
.label_417:
	shl	rbx, 3
	xor	ebp, ebp
	xor	esi, esi
	mov	rdx, rbx
	call	memset
.label_413:
	mov	rdi, qword ptr [rsp + 0x10]
	call	free
.label_415:
	mov	eax, ebp
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
	#Procedure 0x4069ed
	.globl sub_4069ed
	.type sub_4069ed, @function
sub_4069ed:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x4069f0

	.globl locale_charset
	.type locale_charset, @function
locale_charset:
	push	rax
	mov	edi, 0xe
	call	rpl_nl_langinfo
	test	rax, rax
	mov	ecx, OFFSET FLAT:label_97
	cmovne	rcx, rax
	cmp	byte ptr [rcx], 0
	mov	eax, OFFSET FLAT:label_418
	cmovne	rax, rcx
	pop	rcx
	ret	
	.section	.text
	.align	32
	#Procedure 0x406a15
	.globl sub_406a15
	.type sub_406a15, @function
sub_406a15:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x406a20
	.globl stat_time_normalize
	.type stat_time_normalize, @function
stat_time_normalize:

	mov	eax, edi
	ret	
	.section	.text
	.align	32
	#Procedure 0x406a23
	.globl sub_406a23
	.type sub_406a23, @function
sub_406a23:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x406a30

	.globl duplicate_node
	.type duplicate_node, @function
duplicate_node:
	push	rbp
	push	r15
	push	r14
	push	rbx
	push	rax
	mov	r15d, edx
	mov	r14, rsi
	mov	rbx, rdi
	mov	rax, qword ptr [rbx]
	mov	rbp, r14
	shl	rbp, 4
	mov	rsi, qword ptr [rax + rbp]
	mov	rdx, qword ptr [rax + rbp + 8]
	call	re_dfa_add_node
	cmp	rax, -1
	je	.label_419
	mov	rcx, qword ptr [rbx]
	mov	rdx, rax
	shl	rdx, 4
	shl	r15d, 8
	and	r15d, 0x3ff00
	mov	esi, 0xfffc00ff
	and	esi, dword ptr [rcx + rdx + 8]
	or	esi, r15d
	mov	dword ptr [rcx + rdx + 8], esi
	mov	rcx, qword ptr [rbx]
	mov	esi, 0x3ff00
	and	esi, dword ptr [rcx + rbp + 8]
	or	dword ptr [rcx + rdx + 8], esi
	mov	rcx, qword ptr [rbx]
	or	dword ptr [rcx + rdx + 8], 0x40000
	mov	rcx, qword ptr [rbx + 0x20]
	mov	qword ptr [rcx + rax*8], r14
.label_419:
	add	rsp, 8
	pop	rbx
	pop	r14
	pop	r15
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x406ab1
	.globl sub_406ab1
	.type sub_406ab1, @function
sub_406ab1:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x406ac0

	.globl change_env
	.type change_env, @function
change_env:
	push	rbx
	xor	ebx, ebx
	cmp	byte ptr [rdi + 8], 0
	lea	rdi, [rdi + 9]
	cmove	rdi, rbx
	call	setenv_TZ
	test	eax, eax
	jne	.label_420
	call	tzset
	mov	bl, 1
.label_420:
	mov	eax, ebx
	pop	rbx
	ret	
	.section	.text
	.align	32
	#Procedure 0x406ae3
	.globl sub_406ae3
	.type sub_406ae3, @function
sub_406ae3:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x406af0

	.globl fts_padjust
	.type fts_padjust, @function
fts_padjust:
	mov	rcx, qword ptr [rdi + 8]
	mov	rax, qword ptr [rdi + 0x20]
	jmp	.label_426
	.section	.text
	.align	32
	#Procedure 0x406afa
	.globl sub_406afa
	.type sub_406afa, @function
sub_406afa:

	nop	word ptr [rax + rax]
.label_425:
	mov	qword ptr [rcx + 0x38], rax
	mov	rcx, qword ptr [rcx + 0x10]
.label_426:
	test	rcx, rcx
	je	.label_421
	mov	rdx, qword ptr [rcx + 0x30]
	lea	rdi, [rcx + 0x108]
	cmp	rdx, rdi
	je	.label_425
	sub	rdx, qword ptr [rcx + 0x38]
	add	rdx, rax
	mov	qword ptr [rcx + 0x30], rdx
	jmp	.label_425
.label_421:
	cmp	qword ptr [rsi + 0x58], 0
	js	.label_422
	nop	word ptr cs:[rax + rax]
.label_423:
	mov	rcx, qword ptr [rsi + 0x30]
	lea	rdx, [rsi + 0x108]
	cmp	rcx, rdx
	je	.label_424
	sub	rcx, qword ptr [rsi + 0x38]
	add	rcx, rax
	mov	qword ptr [rsi + 0x30], rcx
.label_424:
	mov	qword ptr [rsi + 0x38], rax
	mov	rcx, qword ptr [rsi + 0x10]
	test	rcx, rcx
	jne	.label_427
	mov	rcx, qword ptr [rsi + 8]
.label_427:
	cmp	qword ptr [rcx + 0x58], 0
	mov	rsi, rcx
	jns	.label_423
.label_422:
	ret	
	.section	.text
	.align	32
	#Procedure 0x406b77
	.globl sub_406b77
	.type sub_406b77, @function
sub_406b77:

	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x406b80
	.globl c_islower
	.type c_islower, @function
c_islower:

	add	edi, -0x61
	cmp	edi, 0x1a
	setb	al
	ret	
	.section	.text
	.align	32
	#Procedure 0x406b8a
	.globl sub_406b8a
	.type sub_406b8a, @function
sub_406b8a:

	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x406b90

	.globl dirent_inode_sort_may_be_useful
	.type dirent_inode_sort_may_be_useful, @function
dirent_inode_sort_may_be_useful:
	push	rax
	call	filesystem_type
	mov	rcx, rax
	xor	eax, eax
	cmp	rcx, 0x6969
	je	.label_428
	cmp	rcx, 0x1021994
	je	.label_428
	mov	edx, 0xff534d42
	cmp	rcx, rdx
	je	.label_428
	mov	al, 1
.label_428:
	pop	rcx
	ret	
	.section	.text
	.align	32
	#Procedure 0x406bbb
	.globl sub_406bbb
	.type sub_406bbb, @function
sub_406bbb:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x406bc0
	.globl hash_print_statistics
	.type hash_print_statistics, @function
hash_print_statistics:

	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	push	rax
	mov	r13, rsi
	mov	rbx, rdi
	call	hash_get_n_entries
	mov	rbp, rax
	mov	rdi, rbx
	call	hash_get_n_buckets
	mov	r12, rax
	mov	rdi, rbx
	call	hash_get_n_buckets_used
	mov	r15, rax
	mov	rdi, rbx
	call	hash_get_max_bucket_length
	mov	r14, rax
	mov	esi, 1
	mov	edx, OFFSET FLAT:label_430
	xor	eax, eax
	mov	rdi, r13
	mov	rcx, rbp
	call	__fprintf_chk
	mov	esi, 1
	mov	edx, OFFSET FLAT:label_429
	xor	eax, eax
	mov	rdi, r13
	mov	rcx, r12
	call	__fprintf_chk
	movq	xmm1, r15
	movdqa	xmm2,  xmmword ptr [word ptr [rip + label_431]]
	punpckldq	xmm1, xmm2
	movapd	xmm3,  xmmword ptr [word ptr [rip + label_432]]
	subpd	xmm1, xmm3
	pshufd	xmm0, xmm1, 0x4e
	addpd	xmm0, xmm1
	mulsd	xmm0,  qword ptr [word ptr [rip + label_433]]
	movq	xmm1, r12
	punpckldq	xmm1, xmm2
	subpd	xmm1, xmm3
	pshufd	xmm2, xmm1, 0x4e
	addpd	xmm2, xmm1
	divsd	xmm0, xmm2
	mov	esi, 1
	mov	edx, OFFSET FLAT:label_434
	mov	al, 1
	mov	rdi, r13
	mov	rcx, r15
	call	__fprintf_chk
	mov	esi, 1
	mov	edx, OFFSET FLAT:label_435
	xor	eax, eax
	mov	rdi, r13
	mov	rcx, r14
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	jmp	__fprintf_chk
	.section	.text
	.align	32
	#Procedure 0x406cac
	.globl sub_406cac
	.type sub_406cac, @function
sub_406cac:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x406cb0

	.globl x2realloc
	.type x2realloc, @function
x2realloc:
	mov	edx, 1
	jmp	x2nrealloc
	.section	.text
	.align	32
	#Procedure 0x406cba
	.globl sub_406cba
	.type sub_406cba, @function
sub_406cba:

	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x406cc0

	.globl exclude_add_pattern_buffer
	.type exclude_add_pattern_buffer, @function
exclude_add_pattern_buffer:
	push	r14
	push	rbx
	push	rax
	mov	r14, rsi
	mov	rbx, rdi
	mov	edi, 0x10
	call	xmalloc
	mov	qword ptr [rax + 8], r14
	mov	rcx, qword ptr [rbx + 8]
	mov	qword ptr [rax], rcx
	mov	qword ptr [rbx + 8], rax
	add	rsp, 8
	pop	rbx
	pop	r14
	ret	
	.section	.text
	.align	32
	#Procedure 0x406ceb
	.globl sub_406ceb
	.type sub_406ceb, @function
sub_406ceb:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x406cf0

	.globl hash_insert_if_absent
	.type hash_insert_if_absent, @function
hash_insert_if_absent:
	push	rbp
	push	r15
	push	r14
	push	rbx
	push	rax
	mov	rbx, rdx
	mov	r14, rsi
	mov	r15, rdi
	test	r14, r14
	je	.label_445
	lea	rdx, [rsp]
	xor	ebp, ebp
	xor	ecx, ecx
	mov	rdi, r15
	mov	rsi, r14
	call	hash_find_entry
	test	rax, rax
	je	.label_444
	test	rbx, rbx
	je	.label_439
	mov	qword ptr [rbx], rax
	jmp	.label_439
.label_444:
	mov	rax, qword ptr [r15 + 0x10]
	mov	rcx, qword ptr [r15 + 0x18]
	mov	edx, ecx
	and	edx, 1
	test	rcx, rcx
	js	.label_449
	cvtsi2ss	xmm0, rcx
	jmp	.label_437
.label_449:
	shr	rcx, 1
	or	rdx, rcx
	cvtsi2ss	xmm0, rdx
	addss	xmm0, xmm0
.label_437:
	mov	rcx, qword ptr [r15 + 0x28]
	mov	edx, eax
	and	edx, 1
	test	rax, rax
	js	.label_443
	cvtsi2ss	xmm1, rax
	jmp	.label_448
.label_443:
	shr	rax, 1
	or	rdx, rax
	cvtsi2ss	xmm1, rdx
	addss	xmm1, xmm1
.label_448:
	mulss	xmm1, dword ptr [rcx + 8]
	ucomiss	xmm0, xmm1
	jbe	.label_452
	mov	rdi, r15
	call	check_tuning
	mov	rax, qword ptr [r15 + 0x10]
	mov	rcx, qword ptr [r15 + 0x18]
	mov	edx, ecx
	and	edx, 1
	test	rcx, rcx
	js	.label_441
	cvtsi2ss	xmm2, rcx
	jmp	.label_446
.label_441:
	shr	rcx, 1
	or	rdx, rcx
	cvtsi2ss	xmm2, rdx
	addss	xmm2, xmm2
.label_446:
	mov	rcx, qword ptr [r15 + 0x28]
	movss	xmm1, dword ptr [rcx + 8]
	mov	edx, eax
	and	edx, 1
	test	rax, rax
	js	.label_451
	xorps	xmm0, xmm0
	cvtsi2ss	xmm0, rax
	jmp	.label_440
.label_451:
	shr	rax, 1
	or	rdx, rax
	xorps	xmm0, xmm0
	cvtsi2ss	xmm0, rdx
	addss	xmm0, xmm0
.label_440:
	movaps	xmm3, xmm1
	mulss	xmm3, xmm0
	ucomiss	xmm2, xmm3
	jbe	.label_452
	cmp	byte ptr [rcx + 0x10], 0
	mulss	xmm0, dword ptr [rcx + 0xc]
	jne	.label_450
	mulss	xmm0, xmm1
.label_450:
	mov	ebp, 0xffffffff
	ucomiss	xmm0,  dword ptr [dword ptr [rip + label_438]]
	jae	.label_439
	movss	xmm1,  dword ptr [dword ptr [rip + label_442]]
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
	je	.label_439
	lea	rdx, [rsp]
	xor	ecx, ecx
	mov	rdi, r15
	mov	rsi, r14
	call	hash_find_entry
	test	rax, rax
	jne	.label_445
.label_452:
	mov	rax, qword ptr [rsp]
	cmp	qword ptr [rax], 0
	je	.label_447
	mov	rdi, r15
	call	allocate_entry
	mov	ebp, 0xffffffff
	test	rax, rax
	je	.label_439
	mov	qword ptr [rax], r14
	mov	rcx, qword ptr [rsp]
	mov	rcx, qword ptr [rcx + 8]
	mov	qword ptr [rax + 8], rcx
	mov	rcx, qword ptr [rsp]
	mov	qword ptr [rcx + 8], rax
	inc	qword ptr [r15 + 0x20]
	jmp	.label_436
.label_447:
	mov	qword ptr [rax], r14
	inc	qword ptr [r15 + 0x20]
	inc	qword ptr [r15 + 0x18]
.label_436:
	mov	ebp, 1
.label_439:
	mov	eax, ebp
	add	rsp, 8
	pop	rbx
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_445:
	call	abort
	.section	.text
	.align	32
	#Procedure 0x406ec2
	.globl sub_406ec2
	.type sub_406ec2, @function
sub_406ec2:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x406ed0

	.globl dev_type_compare
	.type dev_type_compare, @function
dev_type_compare:
	mov	rax, qword ptr [rdi]
	cmp	rax, qword ptr [rsi]
	sete	al
	ret	
	.section	.text
	.align	32
	#Procedure 0x406eda
	.globl sub_406eda
	.type sub_406eda, @function
sub_406eda:

	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x406ee0
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
	#Procedure 0x406f13
	.globl sub_406f13
	.type sub_406f13, @function
sub_406f13:

	nop	word ptr cs:[rax + rax]
.label_455:
	mov	rcx,  qword ptr [word ptr [rip + stderr]]
	mov	edi, OFFSET FLAT:label_453
	mov	esi, 0x37
	mov	edx, 1
	call	fwrite
	call	abort
	.section	.text
	.align	32
	#Procedure 0x406f40
	.globl sub_406f40
	.type sub_406f40, @function
sub_406f40:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x406f4f

	.globl set_program_name
	.type set_program_name, @function
set_program_name:
	push	r14
	push	rbx
	push	rax
	mov	rbx, rdi
	test	rbx, rbx
	je	.label_455
	mov	esi, 0x2f
	mov	rdi, rbx
	call	strrchr
	test	rax, rax
	lea	r14, [rax + 1]
	cmove	r14, rbx
	mov	rax, r14
	sub	rax, rbx
	cmp	rax, 7
	jl	.label_457
	lea	rdi, [r14 - 7]
	mov	esi, OFFSET FLAT:label_458
	mov	edx, 7
	call	strncmp
	test	eax, eax
	jne	.label_457
	mov	esi, OFFSET FLAT:label_456
	mov	edx, 3
	mov	rdi, r14
	call	strncmp
	test	eax, eax
	jne	.label_454
	add	r14, 3
	mov	qword ptr [word ptr [rip + __progname]],  r14
.label_454:
	mov	rbx, r14
.label_457:
	mov	qword ptr [word ptr [rip + program_name]],  rbx
	mov	qword ptr [word ptr [rip + __progname_full]],  rbx
	add	rsp, 8
	pop	rbx
	pop	r14
	ret	
	.section	.text
	.align	32
	#Procedure 0x406fd0

	.globl rpl_regcomp
	.type rpl_regcomp, @function
rpl_regcomp:
	push	rbp
	push	r15
	push	r14
	push	rbx
	push	rax
	mov	ebp, edx
	mov	r14, rsi
	mov	r15, rdi
	xorps	xmm0, xmm0
	movups	xmmword ptr [r15], xmm0
	mov	qword ptr [r15 + 0x10], 0
	mov	edi, 0x100
	call	malloc
	mov	qword ptr [r15 + 0x20], rax
	mov	ebx, 0xc
	test	rax, rax
	je	.label_461
	test	bpl, 1
	mov	eax, 0x3b2fc
	mov	ecx, 0x10102c6
	cmovne	rcx, rax
	mov	ebx, ebp
	and	ebx, 2
	shl	rbx, 0x15
	or	rbx, rcx
	test	bpl, 4
	jne	.label_459
	and	byte ptr [r15 + 0x38], 0x7f
	jmp	.label_460
.label_462:
	mov	rdi, qword ptr [r15 + 0x20]
	call	free
	mov	qword ptr [r15 + 0x20], 0
	jmp	.label_461
	.section	.text
	.align	32
	#Procedure 0x407048
	.globl sub_407048
	.type sub_407048, @function
sub_407048:

	nop	word ptr cs:[rax + rax]
.label_459:
	and	ebx, 0x143b2be
	or	rbx, 0x100
	or	byte ptr [r15 + 0x38], 0x80
.label_460:
	mov	al, byte ptr [r15 + 0x38]
	add	bpl, bpl
	and	bpl, 0x10
	and	al, 0xef
	or	al, bpl
	mov	byte ptr [r15 + 0x38], al
	mov	qword ptr [r15 + 0x28], 0
	mov	rdi, r14
	call	strlen
	mov	rdi, r15
	mov	rsi, r14
	mov	rdx, rax
	mov	rcx, rbx
	call	re_compile_internal
	cmp	eax, 0x10
	mov	ebx, 8
	cmovne	ebx, eax
	test	ebx, ebx
	jne	.label_462
	mov	rdi, r15
	call	rpl_re_compile_fastmap
	xor	ebx, ebx
.label_461:
	mov	eax, ebx
	add	rsp, 8
	pop	rbx
	pop	r14
	pop	r15
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x4070c0

	.globl sift_states_bkref
	.type sift_states_bkref, @function
sift_states_bkref:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x98
	mov	rbx, rcx
	mov	qword ptr [rsp + 8], rsi
	mov	rax, qword ptr [rdi + 0x98]
	mov	qword ptr [rsp + 0x20], rax
	mov	qword ptr [rsp + 0x18], rdi
	mov	rax, rdx
	mov	qword ptr [rsp + 0x10], rax
	mov	rsi, rdx
	call	search_cur_bkref_entry
	xor	r12d, r12d
	mov	rcx, rax
	mov	qword ptr [rsp + 0x30], rcx
	cmp	rax, -1
	je	.label_465
	mov	qword ptr [rsp + 0x40], 0
	cmp	qword ptr [rbx + 8], 0
	jle	.label_465
	mov	rax, qword ptr [rsp + 8]
	lea	rax, [rax + 0x20]
	mov	qword ptr [rsp + 0x38], rax
	mov	rax, qword ptr [rsp + 0x10]
	lea	rax, [rax + 1]
	mov	qword ptr [rsp + 0x80], rax
	mov	rax, qword ptr [rsp + 0x30]
	lea	rax, [rax*8]
	lea	rax, [rax + rax*4]
	mov	qword ptr [rsp + 0x88], rax
	xor	eax, eax
	mov	qword ptr [rsp + 0x28], rax
	mov	qword ptr [rsp + 0x90], rbx
	nop	word ptr [rax + rax]
.label_474:
	mov	rax, qword ptr [rbx + 0x10]
	mov	rcx, qword ptr [rsp + 0x28]
	mov	r15, qword ptr [rax + rcx*8]
	mov	rax, qword ptr [rsp + 0x20]
	mov	rax, qword ptr [rax]
	mov	rcx, r15
	shl	rcx, 4
	movzx	eax, byte ptr [rax + rcx + 8]
	mov	rdx, qword ptr [rsp + 8]
	cmp	r15, qword ptr [rdx + 0x10]
	jne	.label_471
	cmp	eax, 4
	jne	.label_463
	mov	rax, qword ptr [rsp + 0x10]
	cmp	qword ptr [rdx + 0x18], rax
	jne	.label_472
	jmp	.label_463
	.section	.text
	.align	32
	#Procedure 0x4071b5
	.globl sub_4071b5
	.type sub_4071b5, @function
sub_4071b5:

	nop	word ptr cs:[rax + rax]
.label_471:
	cmp	eax, 4
	jne	.label_463
.label_472:
	mov	r14, qword ptr [rsp + 0x30]
	lea	rbp, [r14 + r14*4]
	shl	rbp, 3
	mov	rax, qword ptr [rsp + 0x18]
	add	rbp, qword ptr [rax + 0xd8]
	mov	r13, qword ptr [rsp + 0x88]
	nop	word ptr [rax + rax]
.label_470:
	cmp	qword ptr [rbp], r15
	jne	.label_464
	mov	rax, qword ptr [rbp + 0x18]
	mov	rcx, qword ptr [rbp + 0x10]
	mov	rbx, rax
	sub	rbx, rcx
	add	rbx, qword ptr [rsp + 0x10]
	cmp	rax, rcx
	je	.label_475
	lea	rax, [r15*8]
	mov	rcx, qword ptr [rsp + 0x20]
	add	rax, qword ptr [rcx + 0x18]
	jmp	.label_466
.label_475:
	mov	rax, qword ptr [rsp + 0x20]
	mov	rax, qword ptr [rax + 0x28]
	lea	rcx, [r15 + r15*2]
	mov	rax, qword ptr [rax + rcx*8 + 0x10]
.label_466:
	cmp	rbx, qword ptr [rdx + 0x18]
	jg	.label_464
	mov	rcx, qword ptr [rdx]
	mov	rdi, qword ptr [rcx + rbx*8]
	test	rdi, rdi
	je	.label_464
	mov	r12, qword ptr [rax]
	add	rdi, 8
	mov	rsi, r12
	call	re_node_set_contains
	test	rax, rax
	je	.label_469
	mov	rdi, qword ptr [rsp + 0x18]
	mov	rsi, qword ptr [rsp + 0x38]
	mov	rdx, r15
	mov	rcx, qword ptr [rsp + 0x10]
	mov	r8, r12
	mov	r9, rbx
	call	check_dst_limits
	test	al, al
	mov	rdx, qword ptr [rsp + 8]
	jne	.label_464
	cmp	qword ptr [rsp + 0x40], 0
	jne	.label_467
	mov	rcx, qword ptr [rsp + 8]
	mov	rax, qword ptr [rcx + 0x30]
	mov	qword ptr [rsp + 0x70], rax
	movups	xmm0, xmmword ptr [rcx]
	movups	xmm1, xmmword ptr [rcx + 0x10]
	movups	xmm2, xmmword ptr [rcx + 0x20]
	movaps	xmmword ptr [rsp + 0x60], xmm2
	movaps	xmmword ptr [rsp + 0x50], xmm1
	movaps	xmmword ptr [rsp + 0x40], xmm0
	lea	rdi, [rsp + 0x60]
	mov	rsi, qword ptr [rsp + 0x38]
	call	re_node_set_init_copy
	mov	r12d, eax
	test	r12d, r12d
	jne	.label_468
.label_467:
	mov	qword ptr [rsp + 0x50], r15
	mov	rax, qword ptr [rsp + 0x10]
	mov	qword ptr [rsp + 0x58], rax
	lea	rdi, [rsp + 0x60]
	mov	rsi, r14
	call	re_node_set_insert
	mov	r12d, 0xc
	test	al, al
	je	.label_468
	mov	rax, qword ptr [rsp + 0x40]
	mov	rcx, qword ptr [rsp + 0x10]
	mov	rbx, qword ptr [rax + rcx*8]
	mov	rdi, qword ptr [rsp + 0x18]
	lea	rsi, [rsp + 0x40]
	call	sift_states_backward
	mov	r12d, eax
	test	r12d, r12d
	jne	.label_468
	mov	rax, qword ptr [rsp + 8]
	mov	rsi, qword ptr [rax + 8]
	test	rsi, rsi
	je	.label_473
	mov	rdx, qword ptr [rsp + 0x40]
	mov	rdi, qword ptr [rsp + 0x20]
	mov	rcx, qword ptr [rsp + 0x80]
	call	merge_state_array
	mov	r12d, eax
	test	r12d, r12d
	jne	.label_468
.label_473:
	mov	rax, qword ptr [rsp + 0x40]
	mov	rcx, qword ptr [rsp + 0x10]
	mov	qword ptr [rax + rcx*8], rbx
	lea	rbx, [rsp + 0x60]
	mov	rdi, rbx
	mov	rsi, r14
	call	re_node_set_contains
	lea	rsi, [rax - 1]
	mov	rdi, rbx
	call	re_node_set_remove_at
	mov	rax, qword ptr [rsp + 0x18]
	mov	rbp, qword ptr [rax + 0xd8]
	add	rbp, r13
.label_469:
	mov	rdx, qword ptr [rsp + 8]
	nop	dword ptr [rax]
.label_464:
	inc	r14
	add	r13, 0x28
	cmp	byte ptr [rbp + 0x20], 0
	lea	rbp, [rbp + 0x28]
	jne	.label_470
.label_463:
	mov	rax, qword ptr [rsp + 0x28]
	mov	rcx, rax
	inc	rcx
	xor	r12d, r12d
	mov	rbx, qword ptr [rsp + 0x90]
	mov	rax, rcx
	mov	qword ptr [rsp + 0x28], rax
	cmp	rcx, qword ptr [rbx + 8]
	jl	.label_474
.label_468:
	cmp	qword ptr [rsp + 0x40], 0
	je	.label_465
	mov	rdi, qword ptr [rsp + 0x70]
	call	free
.label_465:
	mov	eax, r12d
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
	#Procedure 0x407404
	.globl sub_407404
	.type sub_407404, @function
sub_407404:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x407410

	.globl quotearg_n_mem
	.type quotearg_n_mem, @function
quotearg_n_mem:
	mov	ecx, OFFSET FLAT:default_quoting_options
	jmp	quotearg_n_options
	.section	.text
	.align	32
	#Procedure 0x40741a
	.globl sub_40741a
	.type sub_40741a, @function
sub_40741a:

	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x407420
	.globl quotearg
	.type quotearg, @function
quotearg:

	mov	rax, rdi
	xor	edi, edi
	mov	rsi, rax
	jmp	quotearg_n
	.section	.text
	.align	32
	#Procedure 0x40742d
	.globl sub_40742d
	.type sub_40742d, @function
sub_40742d:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x407430
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
	#Procedure 0x407440

	.globl check_tuning
	.type check_tuning, @function
check_tuning:
	mov	rcx, qword ptr [rdi + 0x28]
	mov	edx, OFFSET FLAT:default_tuning
	mov	al, 1
	cmp	rcx, rdx
	je	.label_476
	movss	xmm0, dword ptr [rcx + 8]
	ucomiss	xmm0,  dword ptr [dword ptr [rip + label_477]]
	jbe	.label_478
	movss	xmm1,  dword ptr [dword ptr [rip + label_481]]
	ucomiss	xmm1, xmm0
	jbe	.label_478
	movss	xmm1, dword ptr [rcx + 0xc]
	ucomiss	xmm1,  dword ptr [dword ptr [rip + label_480]]
	jbe	.label_478
	movss	xmm1, dword ptr [rcx]
	xorps	xmm2, xmm2
	ucomiss	xmm1, xmm2
	jb	.label_478
	addss	xmm1,  dword ptr [dword ptr [rip + label_477]]
	ucomiss	xmm0, xmm1
	jbe	.label_478
	movss	xmm0, dword ptr [rcx + 4]
	movss	xmm2,  dword ptr [dword ptr [rip + label_479]]
	ucomiss	xmm2, xmm0
	jb	.label_478
	ucomiss	xmm0, xmm1
	ja	.label_476
.label_478:
	mov	qword ptr [word ptr [rdi + 40]], OFFSET FLAT:default_tuning
	xor	eax, eax
.label_476:
	ret	
	.section	.text
	.align	32
	#Procedure 0x4074b4
	.globl sub_4074b4
	.type sub_4074b4, @function
sub_4074b4:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4074c0

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
	je	.label_482
	cmp	r15, -2
	jb	.label_482
	xor	edi, edi
	call	hard_locale
	test	al, al
	jne	.label_482
	movzx	eax, byte ptr [r14]
	mov	dword ptr [rbx], eax
	mov	r15d, 1
.label_482:
	mov	rax, r15
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	ret	
	.section	.text
	.align	32
	#Procedure 0x407516
	.globl sub_407516
	.type sub_407516, @function
sub_407516:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x407520

	.globl extend_buffers
	.type extend_buffers, @function
extend_buffers:
	push	rbx
	mov	ecx, esi
	mov	rbx, rdi
	mov	rsi, qword ptr [rbx + 0x40]
	mov	eax, 0xc
	movabs	rdx, 0xffffffffffffffe
	cmp	rsi, rdx
	ja	.label_483
	movsxd	rax, ecx
	mov	rcx, qword ptr [rbx + 0x58]
	add	rsi, rsi
	cmp	rcx, rsi
	cmovle	rsi, rcx
	cmp	rax, rsi
	cmovge	rsi, rax
	mov	rdi, rbx
	call	re_string_realloc_buffers
	test	eax, eax
	jne	.label_483
	mov	rdi, qword ptr [rbx + 0xb8]
	test	rdi, rdi
	je	.label_484
	mov	rax, qword ptr [rbx + 0x40]
	lea	rsi, [rax*8 + 8]
	call	realloc
	mov	rcx, rax
	test	rcx, rcx
	mov	eax, 0xc
	je	.label_483
	mov	qword ptr [rbx + 0xb8], rcx
.label_484:
	cmp	byte ptr [rbx + 0x88], 0
	mov	eax, dword ptr [rbx + 0x90]
	je	.label_487
	mov	rdi, rbx
	cmp	eax, 2
	jl	.label_485
	call	build_wcs_upper_buffer
	test	eax, eax
	je	.label_486
	jmp	.label_483
.label_487:
	cmp	eax, 2
	jl	.label_488
	mov	rdi, rbx
	call	build_wcs_buffer
	jmp	.label_486
.label_488:
	cmp	qword ptr [rbx + 0x78], 0
	je	.label_486
	mov	rdi, rbx
	call	re_string_translate_buffer
.label_486:
	xor	eax, eax
.label_483:
	pop	rbx
	ret	
	.section	.text
	.align	32
	#Procedure 0x4075db
	.globl sub_4075db
	.type sub_4075db, @function
sub_4075db:

	nop	word ptr cs:[rax + rax]
.label_485:
	call	build_upper_buffer
	jmp	.label_486
	.section	.text
	.align	32
	#Procedure 0x4075f0
	.globl emit_bug_reporting_address
	.type emit_bug_reporting_address, @function
emit_bug_reporting_address:

	push	rax
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_489
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:label_490
	xor	eax, eax
	mov	rsi, rcx
	call	__printf_chk
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_492
	mov	edx, 5
	call	dcgettext
	mov	rsi, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:label_91
	mov	ecx, OFFSET FLAT:label_92
	xor	eax, eax
	call	__printf_chk
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_491
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	pop	rax
	jmp	fputs_unlocked
	.section	.text
	.align	32
	#Procedure 0x407664
	.globl sub_407664
	.type sub_407664, @function
sub_407664:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x407670

	.globl openat_safer
	.type openat_safer, @function
openat_safer:
	sub	rsp, 0xd8
	test	al, al
	je	.label_493
	movaps	xmmword ptr [rsp + 0x50], xmm0
	movaps	xmmword ptr [rsp + 0x60], xmm1
	movaps	xmmword ptr [rsp + 0x70], xmm2
	movaps	xmmword ptr [rsp + 0x80], xmm3
	movaps	xmmword ptr [rsp + 0x90], xmm4
	movaps	xmmword ptr [rsp + 0xa0], xmm5
	movaps	xmmword ptr [rsp + 0xb0], xmm6
	movaps	xmmword ptr [rsp + 0xc0], xmm7
.label_493:
	mov	qword ptr [rsp + 0x48], r9
	mov	qword ptr [rsp + 0x40], r8
	mov	qword ptr [rsp + 0x38], rcx
	xor	ecx, ecx
	test	dl, 0x40
	je	.label_494
	lea	rax, [rsp + 0x20]
	mov	qword ptr [rsp + 0x10], rax
	lea	rax, [rsp + 0xe0]
	mov	qword ptr [rsp + 8], rax
	mov	dword ptr [rsp + 4], 0x30
	mov	dword ptr [rsp], 0x18
	movsxd	rcx, dword ptr [rsp]
	cmp	rcx, 0x28
	ja	.label_495
	mov	rax, rcx
	add	rax, qword ptr [rsp + 0x10]
	lea	ecx, [rcx + 8]
	mov	dword ptr [rsp], ecx
	jmp	.label_496
.label_495:
	mov	rax, qword ptr [rsp + 8]
	lea	rcx, [rax + 8]
	mov	qword ptr [rsp + 8], rcx
.label_496:
	mov	ecx, dword ptr [rax]
.label_494:
	xor	eax, eax
	call	openat
	mov	edi, eax
	call	fd_safer
	add	rsp, 0xd8
	ret	
	.section	.text
	.align	32
	#Procedure 0x40772e
	.globl sub_40772e
	.type sub_40772e, @function
sub_40772e:

	nop	
	.section	.text
	.align	32
	#Procedure 0x407730

	.globl build_trtable
	.type build_trtable, @function
build_trtable:
	push	rbp
	mov	rbp, rsp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x98
	mov	r15, rsi
	mov	rbx, rdi
	mov	edi, 0x3800
	call	malloc
	mov	r14, rax
	test	r14, r14
	je	.label_516
	lea	r12, [r14 + 0x1800]
	lea	r13, [r15 + 0x58]
	xorps	xmm0, xmm0
	movups	xmmword ptr [r15 + 0x58], xmm0
	mov	rdi, rbx
	mov	qword ptr [rbp - 0x90], r15
	mov	rsi, r15
	mov	rdx, r14
	mov	rcx, r12
	call	group_nodes_into_DFAstates
	mov	r15, rax
	test	r15, r15
	jle	.label_525
	lea	rsi, [r15 + 1]
	lea	rdi, [rbp - 0x88]
	call	re_node_set_alloc
	mov	dword ptr [rbp - 0x2c], eax
	movabs	rcx, 0xaaaaaaaaaaaa855
	cmp	r15, rcx
	ja	.label_500
	test	eax, eax
	jne	.label_500
	lea	rax, [r15*8]
	lea	rdi, [rax + rax*2]
	lea	rax, [rax + rax*2 + 0x3800]
	cmp	rax, 0xfbf
	mov	qword ptr [rbp - 0x98], r13
	ja	.label_532
	mov	rax, rsp
	add	rdi, 0xf
	and	rdi, 0xfffffffffffffff0
	sub	rax, rdi
	mov	rsp, rax
	mov	dword ptr [rbp - 0x44], 0
	jmp	.label_536
.label_532:
	call	malloc
	test	rax, rax
	je	.label_500
	mov	cl, 1
	mov	dword ptr [rbp - 0x44], ecx
.label_536:
	mov	qword ptr [rbp - 0x40], rax
	lea	rax, [rax + r15*8]
	mov	qword ptr [rbp - 0x58], r15
	mov	qword ptr [rbp - 0x38], rax
	lea	rax, [rax + r15*8]
	mov	qword ptr [rbp - 0x70], rax
	lea	rdi, [rbp - 0xc0]
	call	bitset_empty
	xor	r15d, r15d
	xor	eax, eax
	mov	qword ptr [rbp - 0x50], rax
	mov	qword ptr [rbp - 0x60], r14
	mov	qword ptr [rbp - 0x68], r12
	nop	word ptr [rax + rax]
.label_527:
	mov	qword ptr [rbp - 0x80], 0
	lea	rax, [r15 + r15*2]
	cmp	qword ptr [r14 + rax*8 + 8], 0
	jle	.label_514
	mov	rcx, qword ptr [rbp - 0x60]
	lea	r12, [rcx + rax*8 + 8]
	mov	r13, qword ptr [rcx + rax*8 + 0x10]
	xor	r14d, r14d
	nop	word ptr cs:[rax + rax]
.label_529:
	mov	rax, qword ptr [r13 + r14*8]
	mov	rcx, qword ptr [rbx + 0x18]
	mov	rax, qword ptr [rcx + rax*8]
	cmp	rax, -1
	je	.label_498
	mov	rcx, qword ptr [rbx + 0x30]
	lea	rax, [rax + rax*2]
	lea	rsi, [rcx + rax*8]
	lea	rdi, [rbp - 0x88]
	call	re_node_set_merge
	mov	dword ptr [rbp - 0x2c], eax
	test	eax, eax
	jne	.label_508
.label_498:
	inc	r14
	cmp	r14, qword ptr [r12]
	jl	.label_529
.label_514:
	xor	ecx, ecx
	lea	rdi, [rbp - 0x2c]
	mov	rsi, rbx
	lea	rdx, [rbp - 0x88]
	call	re_acquire_state_context
	mov	rcx, qword ptr [rbp - 0x40]
	mov	qword ptr [rcx + r15*8], rax
	test	rax, rax
	jne	.label_534
	mov	ecx, dword ptr [rbp - 0x2c]
	test	ecx, ecx
	jne	.label_508
.label_534:
	cmp	byte ptr [rax + 0x68], 0
	js	.label_537
	mov	rcx, qword ptr [rbp - 0x38]
	mov	qword ptr [rcx + r15*8], rax
	mov	rax, qword ptr [rbp - 0x40]
	mov	rax, qword ptr [rax + r15*8]
	mov	rcx, qword ptr [rbp - 0x70]
	mov	qword ptr [rcx + r15*8], rax
	jmp	.label_524
	.section	.text
	.align	32
	#Procedure 0x40790f
	.globl sub_40790f
	.type sub_40790f, @function
sub_40790f:

	nop	
.label_537:
	mov	ecx, 1
	lea	rdi, [rbp - 0x2c]
	mov	rsi, rbx
	lea	rdx, [rbp - 0x88]
	call	re_acquire_state_context
	mov	rcx, qword ptr [rbp - 0x38]
	mov	qword ptr [rcx + r15*8], rax
	test	rax, rax
	jne	.label_506
	mov	ecx, dword ptr [rbp - 0x2c]
	test	ecx, ecx
	jne	.label_508
.label_506:
	mov	rcx, qword ptr [rbp - 0x40]
	cmp	qword ptr [rcx + r15*8], rax
	je	.label_510
	cmp	dword ptr [rbx + 0xb4], 1
	mov	al, 1
	jg	.label_512
	mov	rax, qword ptr [rbp - 0x50]
.label_512:
	mov	qword ptr [rbp - 0x50], rax
.label_510:
	mov	ecx, 2
	lea	rdi, [rbp - 0x2c]
	mov	rsi, rbx
	lea	rdx, [rbp - 0x88]
	call	re_acquire_state_context
	mov	rcx, qword ptr [rbp - 0x70]
	mov	qword ptr [rcx + r15*8], rax
	test	rax, rax
	jne	.label_524
	mov	eax, dword ptr [rbp - 0x2c]
	test	eax, eax
	jne	.label_508
	nop	dword ptr [rax]
.label_524:
	mov	rsi, r15
	shl	rsi, 5
	mov	r12, qword ptr [rbp - 0x68]
	add	rsi, r12
	lea	rdi, [rbp - 0xc0]
	call	bitset_merge
	inc	r15
	cmp	r15, qword ptr [rbp - 0x58]
	mov	r14, qword ptr [rbp - 0x60]
	jl	.label_527
	mov	rax, qword ptr [rbp - 0x50]
	and	al, 1
	mov	qword ptr [rbp - 0x50], rax
	mov	edi, 8
	jne	.label_530
	mov	esi, 0x100
	call	rpl_calloc
	mov	rcx, rax
	mov	rax, qword ptr [rbp - 0x98]
	mov	qword ptr [rax], rcx
	mov	qword ptr [rbp - 0x38], rcx
	test	rcx, rcx
	je	.label_508
	mov	rax, qword ptr [rbp - 0x40]
	lea	r8, [rax - 8]
	xor	r14d, r14d
	mov	r12, qword ptr [rbp - 0x68]
	mov	r9, r12
	xor	r13d, r13d
	mov	r15, qword ptr [rbp - 0x58]
	nop	dword ptr [rax]
.label_523:
	mov	rdi, qword ptr [rbp + r13*8 - 0xc0]
	test	rdi, rdi
	je	.label_519
	mov	rcx, r14
	mov	edx, 1
	jmp	.label_503
.label_518:
	mov	r11, r9
	mov	r10, r8
	nop	dword ptr [rax]
.label_507:
	add	r10, 8
	test	qword ptr [r11], rdx
	lea	r11, [r11 + 0x20]
	je	.label_507
	test	qword ptr [rbx + r13*8 + 0xb8], rdx
	je	.label_522
	mov	rax, qword ptr [r10 + r15*8]
	jmp	.label_511
.label_522:
	mov	rax, qword ptr [r10]
.label_511:
	mov	rsi, qword ptr [rbp - 0x38]
	mov	qword ptr [rsi + rcx*8], rax
	jmp	.label_509
	.section	.text
	.align	32
	#Procedure 0x407a5a
	.globl sub_407a5a
	.type sub_407a5a, @function
sub_407a5a:

	nop	word ptr [rax + rax]
.label_503:
	test	dil, 1
	jne	.label_518
.label_509:
	add	rdx, rdx
	shr	rdi, 1
	inc	rcx
	test	rdi, rdi
	jne	.label_503
.label_519:
	inc	r13
	add	r14, 0x40
	add	r9, 8
	cmp	r13, 4
	jne	.label_523
.label_505:
	lea	rdi, [rbp - 0xc0]
	mov	esi, 0xa
	call	bitset_contain
	test	al, al
	mov	r14, qword ptr [rbp - 0x60]
	je	.label_526
	test	r15, r15
	jle	.label_526
	xor	ebx, ebx
	nop	word ptr cs:[rax + rax]
.label_531:
	mov	esi, 0xa
	mov	rdi, r12
	call	bitset_contain
	test	al, al
	jne	.label_504
	inc	rbx
	add	r12, 0x20
	cmp	rbx, r15
	jl	.label_531
	jmp	.label_526
.label_504:
	mov	rax, r15
	shl	rax, 4
	add	rax, qword ptr [rbp - 0x40]
	mov	rcx, qword ptr [rbp - 0x50]
	test	cl, cl
	mov	rcx, qword ptr [rax + rbx*8]
	mov	rdx, qword ptr [rbp - 0x38]
	mov	qword ptr [rdx + 0x50], rcx
	je	.label_526
	mov	rax, qword ptr [rax + rbx*8]
	mov	rcx, qword ptr [rbp - 0x38]
	mov	qword ptr [rcx + 0x850], rax
.label_526:
	mov	eax, dword ptr [rbp - 0x44]
	test	al, al
	je	.label_538
	mov	rdi, qword ptr [rbp - 0x40]
	call	free
.label_538:
	mov	rdi, qword ptr [rbp - 0x78]
	call	free
	test	r15, r15
	jle	.label_502
	mov	rbx, r14
	add	rbx, 0x10
	nop	word ptr cs:[rax + rax]
.label_515:
	mov	rdi, qword ptr [rbx]
	call	free
	add	rbx, 0x18
	dec	r15
	jne	.label_515
.label_502:
	mov	rdi, r14
	call	free
	mov	al, 1
.label_517:
	lea	rsp, [rbp - 0x28]
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_516:
	xor	eax, eax
	jmp	.label_517
.label_525:
	mov	rdi, r14
	call	free
	test	r15, r15
	je	.label_520
	xor	eax, eax
	jmp	.label_517
.label_530:
	mov	esi, 0x200
	call	rpl_calloc
	mov	rcx, rax
	mov	rax, qword ptr [rbp - 0x90]
	mov	qword ptr [rax + 0x60], rcx
	mov	qword ptr [rbp - 0x38], rcx
	test	rcx, rcx
	je	.label_508
	mov	rax, qword ptr [rbp - 0x40]
	lea	r8, [rax - 8]
	xor	ebx, ebx
	mov	r12, qword ptr [rbp - 0x68]
	mov	r11, r12
	xor	esi, esi
	mov	r15, qword ptr [rbp - 0x58]
.label_501:
	mov	rdi, qword ptr [rbp + rsi*8 - 0xc0]
	test	rdi, rdi
	je	.label_528
	mov	rcx, rbx
	mov	eax, 1
	jmp	.label_499
.label_497:
	mov	r10, r11
	mov	r9, r8
.label_533:
	add	r9, 8
	test	qword ptr [r10], rax
	lea	r10, [r10 + 0x20]
	je	.label_533
	mov	rdx, qword ptr [r9]
	mov	r10, qword ptr [rbp - 0x38]
	mov	qword ptr [r10 + rcx*8], rdx
	mov	rdx, qword ptr [r9 + r15*8]
	mov	qword ptr [r10 + rcx*8 + 0x800], rdx
	jmp	.label_535
	.section	.text
	.align	32
	#Procedure 0x407bf2
	.globl sub_407bf2
	.type sub_407bf2, @function
sub_407bf2:

	nop	word ptr cs:[rax + rax]
.label_499:
	test	dil, 1
	jne	.label_497
.label_535:
	add	rax, rax
	shr	rdi, 1
	inc	rcx
	test	rdi, rdi
	jne	.label_499
.label_528:
	inc	rsi
	add	rbx, 0x40
	add	r11, 8
	cmp	rsi, 4
	jne	.label_501
	jmp	.label_505
.label_508:
	mov	eax, dword ptr [rbp - 0x44]
	test	al, al
	mov	r14, qword ptr [rbp - 0x60]
	mov	r15, qword ptr [rbp - 0x58]
	mov	rdi, qword ptr [rbp - 0x40]
	je	.label_500
	call	free
.label_500:
	mov	rdi, qword ptr [rbp - 0x78]
	call	free
	test	r15, r15
	jle	.label_513
	mov	rbx, r14
	add	rbx, 0x10
	nop	word ptr [rax + rax]
.label_521:
	mov	rdi, qword ptr [rbx]
	call	free
	add	rbx, 0x18
	dec	r15
	jne	.label_521
.label_513:
	mov	rdi, r14
	call	free
	xor	eax, eax
	jmp	.label_517
.label_520:
	mov	edi, 8
	mov	esi, 0x100
	call	rpl_calloc
	mov	qword ptr [r13], rax
	test	rax, rax
	setne	al
	jmp	.label_517
	.section	.text
	.align	32
	#Procedure 0x407c9e
	.globl sub_407c9e
	.type sub_407c9e, @function
sub_407c9e:

	nop	
	.section	.text
	.align	32
	#Procedure 0x407ca0

	.globl free_exclude_segment
	.type free_exclude_segment, @function
free_exclude_segment:
	push	r15
	push	r14
	push	rbx
	mov	r14, rdi
	mov	eax, dword ptr [r14 + 8]
	test	eax, eax
	je	.label_539
	cmp	eax, 1
	jne	.label_540
	cmp	qword ptr [r14 + 0x20], 0
	je	.label_541
	xor	r15d, r15d
	mov	ebx, 8
	nop	word ptr cs:[rax + rax]
.label_543:
	mov	rdi, qword ptr [r14 + 0x10]
	test	byte ptr [rdi + rbx - 5], 8
	je	.label_542
	add	rdi, rbx
	call	rpl_regfree
.label_542:
	inc	r15
	add	rbx, 0x48
	cmp	r15, qword ptr [r14 + 0x20]
	jb	.label_543
.label_541:
	mov	rdi, qword ptr [r14 + 0x10]
	call	free
	jmp	.label_540
.label_539:
	mov	rdi, qword ptr [r14 + 0x10]
	call	hash_free
.label_540:
	mov	rdi, r14
	pop	rbx
	pop	r14
	pop	r15
	jmp	free
	.section	.text
	.align	32
	#Procedure 0x407d11
	.globl sub_407d11
	.type sub_407d11, @function
sub_407d11:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x407d20

	.globl analyze
	.type analyze, @function
analyze:
	push	r14
	push	rbx
	push	rax
	mov	r14, rdi
	mov	rbx, qword ptr [r14]
	mov	rdi, qword ptr [rbx + 8]
	shl	rdi, 3
	call	malloc
	mov	qword ptr [rbx + 0x18], rax
	mov	rdi, qword ptr [rbx + 8]
	shl	rdi, 3
	call	malloc
	mov	qword ptr [rbx + 0x20], rax
	mov	rax, qword ptr [rbx + 8]
	shl	rax, 3
	lea	rdi, [rax + rax*2]
	call	malloc
	mov	qword ptr [rbx + 0x28], rax
	mov	rax, qword ptr [rbx + 8]
	shl	rax, 3
	lea	rdi, [rax + rax*2]
	call	malloc
	mov	rcx, rax
	mov	qword ptr [rbx + 0x30], rcx
	mov	eax, 0xc
	cmp	qword ptr [rbx + 0x18], 0
	je	.label_546
	cmp	qword ptr [rbx + 0x20], 0
	je	.label_546
	test	rcx, rcx
	je	.label_546
	mov	rcx, qword ptr [rbx + 0x28]
	test	rcx, rcx
	je	.label_546
	mov	rdi, qword ptr [r14 + 0x30]
	shl	rdi, 3
	call	malloc
	mov	qword ptr [rbx + 0xe0], rax
	test	rax, rax
	je	.label_549
	cmp	qword ptr [r14 + 0x30], 0
	je	.label_545
	mov	rax, qword ptr [rbx + 0xe0]
	xor	ecx, ecx
	nop	word ptr cs:[rax + rax]
.label_544:
	mov	qword ptr [rax + rcx*8], rcx
	inc	rcx
	cmp	rcx, qword ptr [r14 + 0x30]
	jb	.label_544
.label_545:
	mov	rdi, qword ptr [rbx + 0x68]
	mov	esi, OFFSET FLAT:optimize_subexps
	mov	rdx, rbx
	call	preorder
	xor	eax, eax
	cmp	qword ptr [r14 + 0x30], 0
	je	.label_547
	mov	rcx, qword ptr [rbx + 0xe0]
	xor	eax, eax
.label_548:
	cmp	rax, qword ptr [rcx + rax*8]
	jne	.label_547
	inc	rax
	cmp	rax, qword ptr [r14 + 0x30]
	jb	.label_548
.label_547:
	cmp	rax, qword ptr [r14 + 0x30]
	jne	.label_549
	mov	rdi, qword ptr [rbx + 0xe0]
	call	free
	mov	qword ptr [rbx + 0xe0], 0
.label_549:
	mov	rdi, qword ptr [rbx + 0x68]
	mov	esi, OFFSET FLAT:lower_subexps
	mov	rdx, r14
	call	postorder
	test	eax, eax
	jne	.label_546
	mov	rdi, qword ptr [rbx + 0x68]
	mov	esi, OFFSET FLAT:calc_first
	mov	rdx, rbx
	call	postorder
	test	eax, eax
	jne	.label_546
	mov	rdi, qword ptr [rbx + 0x68]
	mov	esi, OFFSET FLAT:calc_next
	mov	rdx, rbx
	call	preorder
	mov	rdi, qword ptr [rbx + 0x68]
	mov	esi, OFFSET FLAT:link_nfa_nodes
	mov	rdx, rbx
	call	preorder
	test	eax, eax
	jne	.label_546
	mov	rdi, rbx
	call	calc_eclosure
	test	eax, eax
	jne	.label_546
	test	byte ptr [r14 + 0x38], 0x10
	jne	.label_551
	cmp	qword ptr [r14 + 0x30], 0
	je	.label_551
	test	byte ptr [rbx + 0xb0], 1
	jne	.label_550
.label_551:
	xor	eax, eax
	cmp	qword ptr [rbx + 0x98], 0
	je	.label_546
.label_550:
	mov	rax, qword ptr [rbx + 0x10]
	shl	rax, 3
	lea	rdi, [rax + rax*2]
	call	malloc
	mov	qword ptr [rbx + 0x38], rax
	test	rax, rax
	mov	eax, 0xc
	je	.label_546
	mov	rdi, rbx
	add	rsp, 8
	pop	rbx
	pop	r14
	jmp	calc_inveclosure
.label_546:
	add	rsp, 8
	pop	rbx
	pop	r14
	ret	
	.section	.text
	.align	32
	#Procedure 0x407ef9
	.globl sub_407ef9
	.type sub_407ef9, @function
sub_407ef9:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x407f00

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
	mov	r15, rsi
	mov	r13d, edi
	mov	qword ptr [word ptr [rsp + 48]], OFFSET FLAT:label_595
	mov	qword ptr [rsp + 0x38], 0
	mov	rdi, qword ptr [r15]
	call	set_program_name
	mov	edi, 6
	mov	esi, OFFSET FLAT:label_97
	call	setlocale
	mov	edi, OFFSET FLAT:label_608
	mov	esi, OFFSET FLAT:label_609
	call	bindtextdomain
	mov	edi, OFFSET FLAT:label_608
	call	textdomain
	mov	edi, OFFSET FLAT:close_stdout
	call	atexit
	call	new_exclude
	mov	qword ptr [word ptr [rip + exclude]],  rax
	mov	edi, OFFSET FLAT:label_616
	call	getenv
	mov	esi, OFFSET FLAT:human_output_opts
	mov	edx, OFFSET FLAT:output_block_size
	mov	rdi, rax
	call	human_options
	mov	al, 1
	mov	qword ptr [rsp + 0x18], rax
	mov	dword ptr [rsp + 0x10], 8
	mov	dword ptr [rsp + 0xc], 0x10
	xor	ebp, ebp
	lea	r12, [rsp + 0x14]
	xor	r14d, r14d
	xor	eax, eax
	mov	qword ptr [rsp + 0x28], rax
	jmp	.label_606
	.section	.text
	.align	32
	#Procedure 0x407fb2
	.globl sub_407fb2
	.type sub_407fb2, @function
sub_407fb2:

	nop	word ptr cs:[rax + rax]
.label_592:
	mov	bpl, cl
.label_606:
	mov	dword ptr [rsp + 0x14], 0xffffffff
	mov	edx, OFFSET FLAT:label_631
	mov	ecx, OFFSET FLAT:long_options
	mov	edi, r13d
	mov	rsi, r15
	mov	r8, r12
	call	getopt_long
	mov	ebx, eax
	lea	eax, [rbx + 0x83]
	cmp	eax, 0x10a
	ja	.label_635
	mov	cl, 1
	jmp	qword ptr [word ptr [+ (rax * 8) + label_570]]
.label_2854:
	mov	dword ptr [rsp + 0xc], 0x11
	jmp	.label_552
.label_635:
	xor	eax, eax
	mov	qword ptr [rsp + 0x18], rax
	jmp	.label_552
.label_2852:
	mov	byte ptr [byte ptr [rip + opt_nul_terminate_output]],  1
	jmp	.label_552
.label_2853:
	mov	rdi,  qword ptr [word ptr [rip + optarg]]
	mov	esi, OFFSET FLAT:human_output_opts
	mov	edx, OFFSET FLAT:output_block_size
	call	human_options
	test	eax, eax
	mov	ecx, ebp
	je	.label_592
	jmp	.label_566
.label_2855:
	mov	dword ptr [rsp + 0xc], 2
	jmp	.label_552
.label_2856:
	mov	dword ptr [rsp + 0xc], 0x10
	jmp	.label_552
.label_2857:
	mov	byte ptr [byte ptr [rip + opt_separate_dirs]],  1
	jmp	.label_552
.label_2858:
	mov	rsi,  qword ptr [word ptr [rip + exclude]]
	mov	rdx,  qword ptr [word ptr [rip + optarg]]
	mov	edi, OFFSET FLAT:add_exclude
	mov	ecx, 0x10000000
	mov	r8d, 0xa
	call	add_exclude_file
	test	eax, eax
	je	.label_552
	call	__errno_location
	mov	ebx, dword ptr [rax]
	mov	rdx,  qword ptr [word ptr [rip + optarg]]
	xor	eax, eax
	mov	qword ptr [rsp + 0x18], rax
	xor	edi, edi
	mov	esi, 3
	call	quotearg_n_style_colon
	mov	rcx, rax
	xor	edi, edi
	mov	edx, OFFSET FLAT:label_582
	xor	eax, eax
	mov	esi, ebx
	call	error
	jmp	.label_552
.label_2859:
	mov	byte ptr [byte ptr [rip + opt_all]],  1
	jmp	.label_552
.label_2860:
	mov	byte ptr [byte ptr [rip + apparent_size]],  1
	mov	dword ptr [dword ptr [rip + human_output_opts]],  0
	mov	qword ptr [word ptr [rip + output_block_size]],  1
	jmp	.label_552
.label_2861:
	mov	byte ptr [byte ptr [rip + print_grand_total]],  1
	jmp	.label_552
.label_2862:
	mov	rdi,  qword ptr [word ptr [rip + optarg]]
	lea	rcx, [rsp + 0x20]
	xor	esi, esi
	xor	edx, edx
	xor	r8d, r8d
	call	xstrtoul
	test	eax, eax
	je	.label_599
	xor	eax, eax
	mov	qword ptr [rsp + 0x18], rax
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_604
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
	mov	rdi,  qword ptr [word ptr [rip + optarg]]
	call	quote
	mov	rcx, rax
	xor	edi, edi
	xor	esi, esi
	xor	eax, eax
	mov	rdx, rbx
	call	error
	jmp	.label_552
.label_2863:
	mov	dword ptr [dword ptr [rip + human_output_opts]],  0xb0
	mov	qword ptr [word ptr [rip + output_block_size]],  1
	jmp	.label_552
.label_2864:
	mov	dword ptr [dword ptr [rip + human_output_opts]],  0
	mov	qword ptr [word ptr [rip + output_block_size]],  0x400
	jmp	.label_552
.label_2865:
	mov	byte ptr [byte ptr [rip + opt_count_all]],  1
	jmp	.label_552
.label_2866:
	mov	dword ptr [dword ptr [rip + human_output_opts]],  0
	mov	qword ptr [word ptr [rip + output_block_size]],  0x100000
	jmp	.label_552
.label_2867:
	mov	rdi,  qword ptr [word ptr [rip + optarg]]
	xor	esi, esi
	xor	edx, edx
	mov	ecx, OFFSET FLAT:opt_threshold
	mov	r8d, OFFSET FLAT:label_627
	call	xstrtoimax
	test	eax, eax
	jne	.label_566
	cmp	qword ptr [word ptr [rip + opt_threshold]],  0
	jne	.label_552
	mov	rax,  qword ptr [word ptr [rip + optarg]]
	cmp	byte ptr [rax], 0x2d
	mov	ecx, ebp
	jne	.label_592
	jmp	.label_642
.label_2868:
	or	dword ptr [rsp + 0x10], 0x40
	jmp	.label_552
.label_2869:
	mov	byte ptr [byte ptr [rip + apparent_size]],  1
	jmp	.label_552
.label_2870:
	mov	rdi,  qword ptr [word ptr [rip + exclude]]
	mov	rsi,  qword ptr [word ptr [rip + optarg]]
	mov	edx, 0x10000000
	call	add_exclude
	jmp	.label_552
.label_2871:
	mov	r14,  qword ptr [word ptr [rip + optarg]]
	jmp	.label_552
.label_2872:
	mov	dword ptr [dword ptr [rip + human_output_opts]],  0x90
	mov	qword ptr [word ptr [rip + output_block_size]],  1
	jmp	.label_552
.label_2873:
	mov	byte ptr [byte ptr [rip + opt_time]],  1
	mov	rsi,  qword ptr [word ptr [rip + optarg]]
	xor	eax, eax
	test	rsi, rsi
	je	.label_569
	mov	r9,  qword ptr [word ptr [rip + argmatch_die]]
	mov	edi, OFFSET FLAT:label_575
	mov	edx, OFFSET FLAT:time_args
	mov	ecx, OFFSET FLAT:time_types
	mov	r8d, 4
	call	__xargmatch_internal
	mov	eax,  dword ptr [dword ptr [+ (rax * 4) + time_types]]
.label_569:
	mov	dword ptr [dword ptr [rip + time_type]],  eax
	mov	edi, OFFSET FLAT:label_213
	call	getenv
	mov	rdi, rax
	call	tzalloc
	mov	qword ptr [word ptr [rip + localtz]],  rax
	jmp	.label_552
.label_2874:
	mov	rax,  qword ptr [word ptr [rip + optarg]]
	mov	qword ptr [word ptr [rip + time_style]],  rax
	jmp	.label_552
.label_2875:
	mov	byte ptr [byte ptr [rip + opt_inodes]],  1
	jmp	.label_552
.label_599:
	mov	rax, qword ptr [rsp + 0x20]
	mov	qword ptr [word ptr [rip + max_depth]],  rax
	mov	al, 1
	mov	qword ptr [rsp + 0x28], rax
	nop	word ptr cs:[rax + rax]
.label_552:
	mov	ecx, ebp
	jmp	.label_592
.label_2851:
	mov	rax, qword ptr [rsp + 0x18]
	test	al, 1
	je	.label_593
	and	bpl, 1
	je	.label_561
	mov	al,  byte ptr [byte ptr [rip + opt_all]]
	xor	al, 1
	test	al, 1
	je	.label_597
.label_561:
	test	bpl, bpl
	je	.label_598
	mov	rbx, qword ptr [rsp + 0x28]
	and	bl, 1
	je	.label_600
	mov	rax,  qword ptr [word ptr [rip + max_depth]]
	test	rax, rax
	jne	.label_600
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_607
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	xor	edi, edi
	xor	esi, esi
	xor	eax, eax
	mov	rdx, rcx
	call	error
.label_600:
	test	bl, bl
	je	.label_558
	mov	rbx,  qword ptr [word ptr [rip + max_depth]]
	test	rbx, rbx
	jne	.label_614
.label_558:
	mov	qword ptr [word ptr [rip + max_depth]],  0
.label_598:
	cmp	byte ptr [byte ptr [rip + opt_inodes]],  1
	jne	.label_618
	cmp	byte ptr [byte ptr [rip + apparent_size]],  1
	jne	.label_620
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_622
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	xor	edi, edi
	xor	esi, esi
	xor	eax, eax
	mov	rdx, rcx
	call	error
.label_620:
	mov	qword ptr [word ptr [rip + output_block_size]],  1
.label_618:
	cmp	byte ptr [byte ptr [rip + opt_time]],  1
	jne	.label_563
	cmp	qword ptr [word ptr [rip + time_style]],  0
	jne	.label_557
	mov	edi, OFFSET FLAT:label_632
	call	getenv
	mov	rbx, rax
	mov	qword ptr [word ptr [rip + time_style]],  rbx
	test	rbx, rbx
	je	.label_626
	mov	esi, OFFSET FLAT:label_636
	mov	rdi, rbx
	call	strcmp
	test	eax, eax
	je	.label_626
	cmp	byte ptr [rbx], 0x2b
	jne	.label_639
	mov	esi, 0xa
	mov	rdi, rbx
	call	strchr
	test	rax, rax
	je	.label_557
	mov	byte ptr [rax], 0
	jmp	.label_557
.label_626:
	mov	qword ptr [word ptr [rip + time_style]], OFFSET FLAT:label_560
.label_557:
	mov	rsi,  qword ptr [word ptr [rip + time_style]]
	cmp	byte ptr [rsi], 0x2b
	jne	.label_562
	inc	rsi
	mov	qword ptr [word ptr [rip + time_format]],  rsi
	jmp	.label_563
.label_562:
	mov	r9,  qword ptr [word ptr [rip + argmatch_die]]
	mov	edi, OFFSET FLAT:label_565
	mov	edx, OFFSET FLAT:time_style_args
	mov	ecx, OFFSET FLAT:time_style_types
	mov	r8d, 4
	call	__xargmatch_internal
	mov	eax,  dword ptr [dword ptr [+ (rax * 4) + time_style_types]]
	cmp	eax, 2
	je	.label_568
	cmp	eax, 1
	je	.label_573
	test	eax, eax
	jne	.label_563
	mov	qword ptr [word ptr [rip + time_format]], OFFSET FLAT:label_574
	jmp	.label_563
.label_568:
	mov	qword ptr [word ptr [rip + time_format]], OFFSET FLAT:label_577
	jmp	.label_563
.label_573:
	mov	qword ptr [word ptr [rip + time_format]], OFFSET FLAT:label_578
.label_563:
	movsxd	rax,  dword ptr [dword ptr [rip + optind]]
	test	r14, r14
	je	.label_579
	cmp	eax, r13d
	jl	.label_580
	cmp	byte ptr [r14], 0x2d
	mov	r13, qword ptr [rsp + 0x18]
	jne	.label_640
	cmp	byte ptr [r14 + 1], 0
	je	.label_583
.label_640:
	mov	rdx,  qword ptr [word ptr [rip + stdin]]
	mov	esi, OFFSET FLAT:label_584
	mov	rdi, r14
	call	freopen_safer
	test	rax, rax
	je	.label_586
.label_583:
	mov	rdi,  qword ptr [word ptr [rip + stdin]]
	call	argv_iter_init_stream
	mov	r12, rax
	mov	al, 1
	jmp	.label_590
.label_579:
	cmp	eax, r13d
	lea	rax, [r15 + rax*8]
	lea	rdi, [rsp + 0x30]
	cmovl	rdi, rax
	call	argv_iter_init_argv
	mov	r12, rax
	mov	eax,  dword ptr [dword ptr [rip + optind]]
	inc	eax
	cmp	eax, r13d
	setl	cl
	cmp	dword ptr [rsp + 0xc], 2
	sete	al
	or	al, cl
	mov	r13, qword ptr [rsp + 0x18]
.label_590:
	mov	ebp, dword ptr [rsp + 0x10]
	mov	byte ptr [byte ptr [rip + hash_all]],  al
	test	r12, r12
	je	.label_601
	call	di_set_alloc
	mov	qword ptr [word ptr [rip + di_files]],  rax
	test	rax, rax
	je	.label_601
	mov	eax, ebp
	or	eax, 0x100
	cmp	byte ptr [byte ptr [rip + hash_all]],  0
	mov	cl,  byte ptr [byte ptr [rip + opt_count_all]]
	cmove	ebp, eax
	test	cl, cl
	cmovne	ebp, eax
	lea	rsi, [rsp + 0x20]
	mov	rdi, r12
	call	argv_iter
	mov	rbx, rax
	test	rbx, rbx
	je	.label_617
	or	ebp, dword ptr [rsp + 0xc]
	mov	dword ptr [rsp + 0x10], ebp
	lea	r15, [rsp + 0x20]
	jmp	.label_572
.label_634:
	xor	eax, eax
	jmp	.label_624
.label_637:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_625
	mov	edx, 5
	call	dcgettext
	mov	rbp, rax
	mov	edi, 4
	mov	rsi, rbx
	call	quotearg_style
	mov	rcx, rax
	xor	edi, edi
	xor	esi, esi
	xor	eax, eax
	mov	rdx, rbp
	call	error
	mov	al, 1
	jmp	.label_588
	.section	.text
	.align	32
	#Procedure 0x4085c6
	.globl sub_4085c6
	.type sub_4085c6, @function
sub_4085c6:

	nop	word ptr cs:[rax + rax]
.label_572:
	test	r14, r14
	je	.label_594
	cmp	byte ptr [r14], 0x2d
	jne	.label_594
	cmp	byte ptr [r14 + 1], 0
	jne	.label_594
	movzx	ecx, byte ptr [rbx]
	cmp	cl, 0x2d
	jne	.label_634
	cmp	byte ptr [rbx + 1], 0
	je	.label_637
.label_594:
	xor	eax, eax
.label_588:
	movzx	ecx, byte ptr [rbx]
.label_624:
	test	cl, cl
	je	.label_638
	test	al, al
	je	.label_633
	xor	r13d, r13d
	jmp	.label_571
	.section	.text
	.align	32
	#Procedure 0x408605
	.globl sub_408605
	.type sub_408605, @function
sub_408605:

	nop	word ptr cs:[rax + rax]
.label_638:
	test	r14, r14
	je	.label_559
	mov	rdi, r12
	call	argv_iter_n_args
	mov	r13, rax
	xor	edi, edi
	mov	esi, 3
	mov	rdx, r14
	call	quotearg_n_style_colon
	mov	rbp, rax
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_564
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
	xor	edi, edi
	xor	esi, esi
	mov	edx, OFFSET FLAT:label_567
	xor	eax, eax
	mov	rcx, rbp
	mov	r8, r13
	xor	r13d, r13d
	mov	r9, rbx
	call	error
	jmp	.label_571
	.section	.text
	.align	32
	#Procedure 0x408664
	.globl sub_408664
	.type sub_408664, @function
sub_408664:

	nop	word ptr cs:[rax + rax]
.label_633:
	mov	qword ptr [word ptr [rip + main.temp_argv]],  rbx
	mov	edi, dword ptr [rsp + 0x10]
	call	du_files
	and	al, r13b
	mov	r13b, al
	jmp	.label_571
.label_559:
	xor	r13d, r13d
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_564
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	xor	edi, edi
	xor	esi, esi
	mov	edx, OFFSET FLAT:label_582
	xor	eax, eax
	call	error
	nop	
.label_571:
	mov	rdi, r12
	mov	rsi, r15
	call	argv_iter
	mov	rbx, rax
	test	rbx, rbx
	jne	.label_572
.label_617:
	mov	eax, dword ptr [rsp + 0x20]
	cmp	eax, 2
	je	.label_585
	cmp	eax, 4
	jne	.label_587
	call	__errno_location
	mov	r15d, dword ptr [rax]
	xor	r13d, r13d
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_589
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
	xor	edi, edi
	mov	esi, 3
	mov	rdx, r14
	call	quotearg_n_style_colon
	mov	rcx, rax
	xor	edi, edi
	xor	eax, eax
	mov	esi, r15d
	mov	rdx, rbx
	call	error
.label_585:
	mov	rdi, r12
	call	argv_iter_free
	mov	rdi,  qword ptr [word ptr [rip + di_files]]
	call	di_set_free
	mov	rdi,  qword ptr [word ptr [rip + di_mnt]]
	test	rdi, rdi
	je	.label_605
	call	di_set_free
.label_605:
	test	r14, r14
	je	.label_610
	mov	rdi,  qword ptr [word ptr [rip + stdin]]
	call	ferror_unlocked
	test	eax, eax
	je	.label_611
	test	r13b, 1
	je	.label_610
	jmp	.label_613
.label_611:
	mov	rdi,  qword ptr [word ptr [rip + stdin]]
	call	rpl_fclose
	test	r13b, 1
	je	.label_610
	test	eax, eax
	jne	.label_613
.label_610:
	cmp	byte ptr [byte ptr [rip + print_grand_total]],  1
	jne	.label_619
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_621
	mov	edx, 5
	call	dcgettext
	mov	edi, OFFSET FLAT:tot_dui
	mov	rsi, rax
	call	print_size
.label_619:
	not	r13b
	and	r13b, 1
	movzx	eax, r13b
	add	rsp, 0x48
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_639:
	mov	rbx,  qword ptr [word ptr [rip + time_style]]
	mov	esi, OFFSET FLAT:main.posix_prefix
	mov	edx, 6
	mov	rdi, rbx
	call	strncmp
	test	eax, eax
	jne	.label_557
	add	rbx, 6
	nop	
.label_641:
	mov	qword ptr [word ptr [rip + time_style]],  rbx
	mov	esi, OFFSET FLAT:main.posix_prefix
	mov	edx, 6
	mov	rdi, rbx
	call	strncmp
	add	rbx, 6
	test	eax, eax
	je	.label_641
	jmp	.label_557
.label_2849:
	mov	rdi,  qword ptr [word ptr [rip + stdout]]
	mov	rcx,  qword ptr [word ptr [rip + Version]]
	sub	rsp, 8
	mov	esi, OFFSET FLAT:label_93
	mov	edx, OFFSET FLAT:label_91
	mov	r8d, OFFSET FLAT:label_553
	mov	r9d, OFFSET FLAT:label_554
	mov	eax, 0
	push	0
	push	OFFSET FLAT:label_555
	push	OFFSET FLAT:label_556
	call	version_etc
	add	rsp, 0x20
	xor	edi, edi
	call	exit
.label_2850:
	xor	edi, edi
	call	usage
.label_566:
	mov	esi, dword ptr [rsp + 0x14]
	mov	r8,  qword ptr [word ptr [rip + optarg]]
	movsx	edx, bl
	mov	ecx, OFFSET FLAT:long_options
	mov	edi, eax
	call	xstrtol_fatal
.label_593:
	mov	edi, 1
	call	usage
.label_597:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_576
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
.label_587:
	cmp	eax, 3
	jne	.label_581
.label_601:
	call	xalloc_die
.label_580:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_615
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
	movsxd	rax,  dword ptr [dword ptr [rip + optind]]
	mov	rdi, qword ptr [r15 + rax*8]
	call	quote
	mov	rcx, rax
	xor	edi, edi
	xor	esi, esi
	xor	eax, eax
	mov	rdx, rbx
	call	error
	mov	rbx,  qword ptr [word ptr [rip + stderr]]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_591
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	mov	esi, 1
	mov	edx, OFFSET FLAT:label_596
	xor	eax, eax
	mov	rdi, rbx
	call	__fprintf_chk
	mov	edi, 1
	call	usage
.label_613:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_602
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
	mov	edi, 4
	mov	rsi, r14
	call	quotearg_style
	mov	rcx, rax
	mov	edi, 1
	xor	esi, esi
	xor	eax, eax
	mov	rdx, rbx
	call	error
.label_614:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_612
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	xor	edi, edi
	xor	esi, esi
	xor	eax, eax
	mov	rdx, rcx
	mov	rcx, rbx
	call	error
	mov	edi, 1
	call	usage
.label_586:
	call	__errno_location
	mov	ebx, dword ptr [rax]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_623
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
	call	error
.label_581:
	mov	edi, OFFSET FLAT:label_628
	mov	esi, OFFSET FLAT:label_629
	mov	edx, 0x438
	mov	ecx, OFFSET FLAT:label_630
	call	__assert_fail
.label_642:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_603
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	mov	edi, 1
	xor	esi, esi
	xor	eax, eax
	mov	rdx, rcx
	call	error
	.section	.text
	.align	32
	#Procedure 0x408a00
	.globl ino_map_free
	.type ino_map_free, @function
ino_map_free:

	push	rbx
	mov	rbx, rdi
	mov	rdi, qword ptr [rbx]
	call	hash_free
	mov	rdi, qword ptr [rbx + 0x10]
	call	free
	mov	rdi, rbx
	pop	rbx
	jmp	free
	.section	.text
	.align	32
	#Procedure 0x408a1e
	.globl sub_408a1e
	.type sub_408a1e, @function
sub_408a1e:

	nop	
	.section	.text
	.align	32
	#Procedure 0x408a20
	.globl version_etc_ar
	.type version_etc_ar, @function
version_etc_ar:

	mov	r9, -1
	nop	word ptr [rax + rax]
.label_643:
	cmp	qword ptr [r8 + r9*8 + 8], 0
	lea	r9, [r9 + 1]
	jne	.label_643
	jmp	version_etc_arn
	.section	.text
	.align	32
	#Procedure 0x408a41
	.globl sub_408a41
	.type sub_408a41, @function
sub_408a41:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x408a50

	.globl hash_rehash
	.type hash_rehash, @function
hash_rehash:
	push	rbp
	push	r14
	push	rbx
	sub	rsp, 0x50
	mov	rbx, rdi
	mov	rax, qword ptr [rbx + 0x28]
	mov	rdi, rsi
	mov	rsi, rax
	call	compute_bucket_size
	mov	rbp, rax
	test	rbp, rbp
	je	.label_644
	mov	r14b, 1
	cmp	rbp, qword ptr [rbx + 0x10]
	je	.label_645
	mov	esi, 0x10
	mov	rdi, rbp
	call	rpl_calloc
	mov	qword ptr [rsp], rax
	test	rax, rax
	je	.label_644
	mov	qword ptr [rsp + 0x10], rbp
	shl	rbp, 4
	add	rbp, qword ptr [rsp]
	mov	qword ptr [rsp + 8], rbp
	xorps	xmm0, xmm0
	movups	xmmword ptr [rsp + 0x18], xmm0
	mov	rax, qword ptr [rbx + 0x28]
	mov	qword ptr [rsp + 0x28], rax
	mov	rax, qword ptr [rbx + 0x30]
	mov	qword ptr [rsp + 0x30], rax
	mov	rax, qword ptr [rbx + 0x38]
	mov	qword ptr [rsp + 0x38], rax
	mov	rax, qword ptr [rbx + 0x40]
	mov	qword ptr [rsp + 0x40], rax
	mov	rax, qword ptr [rbx + 0x48]
	mov	qword ptr [rsp + 0x48], rax
	lea	rdi, [rsp]
	xor	edx, edx
	mov	rsi, rbx
	call	transfer_entries
	test	al, al
	je	.label_646
	mov	rdi, qword ptr [rbx]
	call	free
	mov	rax, qword ptr [rsp]
	mov	qword ptr [rbx], rax
	mov	rax, qword ptr [rsp + 8]
	mov	qword ptr [rbx + 8], rax
	mov	rax, qword ptr [rsp + 0x10]
	mov	qword ptr [rbx + 0x10], rax
	mov	rax, qword ptr [rsp + 0x18]
	mov	qword ptr [rbx + 0x18], rax
	mov	rax, qword ptr [rsp + 0x48]
	mov	qword ptr [rbx + 0x48], rax
	jmp	.label_645
.label_646:
	mov	rax, qword ptr [rsp + 0x48]
	mov	qword ptr [rbx + 0x48], rax
	lea	rsi, [rsp]
	mov	edx, 1
	mov	rdi, rbx
	call	transfer_entries
	test	al, al
	je	.label_647
	lea	rsi, [rsp]
	xor	edx, edx
	mov	rdi, rbx
	call	transfer_entries
	test	al, al
	je	.label_647
	mov	rdi, qword ptr [rsp]
	call	free
.label_644:
	xor	r14d, r14d
.label_645:
	mov	eax, r14d
	add	rsp, 0x50
	pop	rbx
	pop	r14
	pop	rbp
	ret	
.label_647:
	call	abort
	.section	.text
	.align	32
	#Procedure 0x408b78
	.globl sub_408b78
	.type sub_408b78, @function
sub_408b78:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x408b80

	.globl du_files
	.type du_files, @function
du_files:
	push	rbp
	push	r15
	push	r14
	push	rbx
	push	rax
	mov	eax, edi
	mov	bl, 1
	cmp	qword ptr [word ptr [rip + main.temp_argv]],  0
	je	.label_648
	mov	edi, OFFSET FLAT:main.temp_argv
	xor	edx, edx
	mov	esi, eax
	call	xfts_open
	mov	r14, rax
	mov	rdi, r14
	call	rpl_fts_read
	mov	bl, 1
	test	rax, rax
	je	.label_651
	mov	bl, 1
	nop	dword ptr [rax + rax]
.label_652:
	mov	rdi, r14
	mov	rsi, rax
	call	process_file
	and	bl, al
	mov	rdi, r14
	call	rpl_fts_read
	test	rax, rax
	jne	.label_652
.label_651:
	call	__errno_location
	mov	ebp, dword ptr [rax]
	test	ebp, ebp
	je	.label_653
	xor	ebx, ebx
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_649
	mov	edx, 5
	call	dcgettext
	mov	r15, rax
	mov	rdx, qword ptr [r14 + 0x20]
	xor	edi, edi
	mov	esi, 3
	call	quotearg_n_style_colon
	mov	rcx, rax
	xor	edi, edi
	xor	eax, eax
	mov	esi, ebp
	mov	rdx, r15
	call	error
.label_653:
	mov	qword ptr [word ptr [rip + prev_level]],  0
	mov	rdi, r14
	call	rpl_fts_close
	test	eax, eax
	je	.label_648
	call	__errno_location
	mov	ebp, dword ptr [rax]
	xor	ebx, ebx
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_650
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	xor	edi, edi
	xor	eax, eax
	mov	esi, ebp
	mov	rdx, rcx
	call	error
.label_648:
	mov	eax, ebx
	add	rsp, 8
	pop	rbx
	pop	r14
	pop	r15
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x408c6b
	.globl sub_408c6b
	.type sub_408c6b, @function
sub_408c6b:

	nop	dword ptr [rax + rax]
.label_654:
	mov	rax, qword ptr [rdi + 0x10]
	mov	eax, dword ptr [rax + rsi*4]
	ret	
	.section	.text
	.align	32
	#Procedure 0x408c78
	.globl sub_408c78
	.type sub_408c78, @function
sub_408c78:

	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x408c7e

	.globl re_string_wchar_at
	.type re_string_wchar_at, @function
re_string_wchar_at:
	cmp	dword ptr [rdi + 0x90], 1
	jne	.label_654
	mov	rax, qword ptr [rdi + 8]
	movzx	eax, byte ptr [rax + rsi]
	ret	
	.section	.text
	.align	32
	#Procedure 0x408c90

	.globl version_etc_va
	.type version_etc_va, @function
version_etc_va:
	sub	rsp, 0x58
	xor	r9d, r9d
	nop	word ptr [rax + rax]
.label_656:
	movsxd	r10, dword ptr [r8]
	cmp	r10, 0x28
	ja	.label_655
	mov	r11, r10
	add	r11, qword ptr [r8 + 0x10]
	lea	eax, [r10 + 8]
	mov	dword ptr [r8], eax
	jmp	.label_657
	.section	.text
	.align	32
	#Procedure 0x408cb9
	.globl sub_408cb9
	.type sub_408cb9, @function
sub_408cb9:

	nop	dword ptr [rax]
.label_655:
	mov	r11, qword ptr [r8 + 8]
	lea	rax, [r11 + 8]
	mov	qword ptr [r8 + 8], rax
.label_657:
	mov	rax, qword ptr [r11]
	mov	qword ptr [rsp + r9*8], rax
	test	rax, rax
	je	.label_658
	inc	r9
	cmp	r9, 0xa
	jb	.label_656
.label_658:
	lea	r8, [rsp]
	call	version_etc_arn
	add	rsp, 0x58
	ret	
	.section	.text
	.align	32
	#Procedure 0x408cef
	.globl sub_408cef
	.type sub_408cef, @function
sub_408cef:

	nop	
.label_670:
	xor	edx, edx
	test	rax, rax
	jle	.label_665
	mov	rdx, r14
.label_665:
	mov	r13d, 1
	test	rax, rax
	jle	.label_663
	mov	r13, rax
	jmp	.label_663
	.section	.text
	.align	32
	#Procedure 0x408d11

	.globl re_search_stub
	.type re_search_stub, @function
re_search_stub:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x28
	mov	rbx, rdx
	test	rcx, rcx
	mov	r14, -1
	js	.label_666
	mov	qword ptr [rsp + 0x18], rsi
	mov	qword ptr [rsp + 0x20], r9
	cmp	rcx, rbx
	jg	.label_666
	xor	ebp, ebp
	add	r8, rcx
	js	.label_669
	mov	rbp, r8
.label_669:
	mov	r14, qword ptr [rsp + 0x60]
	cmp	r8, rbx
	cmovg	rbp, rbx
	movzx	r12d, byte ptr [rdi + 0x38]
	cmp	rbp, rcx
	mov	qword ptr [rsp + 8], rcx
	mov	qword ptr [rsp], rdi
	jle	.label_671
	test	r12b, 8
	jne	.label_671
	mov	rax, qword ptr [rdi + 0x20]
	test	rax, rax
	je	.label_671
	mov	rdi, qword ptr [rsp]
	call	rpl_re_compile_fastmap
	mov	rdi, qword ptr [rsp]
.label_671:
	xor	edx, edx
	test	r14, r14
	mov	r13d, 1
	je	.label_663
	mov	al, byte ptr [rdi + 0x38]
	mov	ecx, eax
	and	cl, 0x10
	jne	.label_663
	and	al, 6
	cmp	al, 4
	jne	.label_668
	mov	rax, qword ptr [r14]
	cmp	rax, qword ptr [rdi + 0x30]
	jbe	.label_670
.label_668:
	mov	r13, qword ptr [rdi + 0x30]
	inc	r13
	mov	rdx, r14
.label_663:
	mov	qword ptr [rsp + 0x10], rdx
	mov	rdi, r13
	shl	rdi, 4
	call	malloc
	mov	rdx, qword ptr [rsp]
	mov	r15, rax
	mov	r14, -2
	test	r15, r15
	mov	rcx, qword ptr [rsp + 8]
	je	.label_666
	mov	eax, r12d
	shr	al, 5
	and	al, 1
	and	r12d, 0x40
	movzx	eax, al
	shr	r12d, 5
	or	r12d, eax
	sub	rsp, 8
	mov	rdi, rdx
	mov	rsi, qword ptr [rsp + 0x20]
	mov	rdx, rbx
	mov	r8, rbp
	mov	r9, qword ptr [rsp + 0x28]
	push	r12
	push	r15
	push	r13
	call	re_search_internal
	add	rsp, 0x20
	test	eax, eax
	je	.label_667
	xor	r14d, r14d
	cmp	eax, 1
	sete	r14b
	or	r14, 0xfffffffffffffffe
.label_661:
	mov	rdi, r15
	call	free
.label_666:
	mov	rax, r14
	add	rsp, 0x28
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_667:
	mov	rdi, qword ptr [rsp + 0x10]
	test	rdi, rdi
	je	.label_664
	mov	rbx, qword ptr [rsp]
	mov	al, byte ptr [rbx + 0x38]
	shr	al, 1
	and	al, 3
	movzx	ecx, al
	mov	rsi, r15
	mov	rdx, r13
	call	re_copy_regs
	mov	cl, byte ptr [rbx + 0x38]
	add	al, al
	and	cl, 0xf9
	mov	edx, eax
	and	dl, 6
	or	dl, cl
	and	al, 6
	mov	byte ptr [rbx + 0x38], dl
	mov	r14, -2
	je	.label_661
.label_664:
	mov	al, byte ptr [rsp + 0x68]
	mov	r14, qword ptr [r15]
	test	al, al
	je	.label_661
	mov	rax, qword ptr [rsp + 8]
	cmp	r14, rax
	jne	.label_662
	mov	r14, qword ptr [r15 + 8]
	sub	r14, rax
	jmp	.label_661
.label_662:
	mov	edi, OFFSET FLAT:label_659
	mov	esi, OFFSET FLAT:label_311
	mov	edx, 0x1be
	mov	ecx, OFFSET FLAT:label_660
	call	__assert_fail
	.section	.text
	.align	32
	#Procedure 0x408ec6
	.globl sub_408ec6
	.type sub_408ec6, @function
sub_408ec6:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x408ed0
	.globl rpl_re_set_registers
	.type rpl_re_set_registers, @function
rpl_re_set_registers:

	mov	al, byte ptr [rdi + 0x38]
	and	al, 0xf9
	test	rdx, rdx
	je	.label_672
	or	al, 2
	mov	byte ptr [rdi + 0x38], al
	mov	qword ptr [rsi], rdx
	mov	qword ptr [rsi + 8], rcx
	mov	qword ptr [rsi + 0x10], r8
	ret	
.label_672:
	mov	byte ptr [rdi + 0x38], al
	xorps	xmm0, xmm0
	movups	xmmword ptr [rsi], xmm0
	mov	qword ptr [rsi + 0x10], 0
	ret	
	.section	.text
	.align	32
	#Procedure 0x408efd
	.globl sub_408efd
	.type sub_408efd, @function
sub_408efd:

	nop	dword ptr [rax]
.label_673:
	mov	rax, qword ptr [rdi + 0x28]
	sub	rax, qword ptr [rdi + 0x20]
	sar	rax, 3
	ret	
	.section	.text
	.align	32
	#Procedure 0x408f0d
	.globl sub_408f0d
	.type sub_408f0d, @function
sub_408f0d:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x408f15

	.globl argv_iter_n_args
	.type argv_iter_n_args, @function
argv_iter_n_args:
	cmp	qword ptr [rdi], 0
	je	.label_673
	mov	rax, qword ptr [rdi + 8]
	ret	
	.section	.text
	.align	32
	#Procedure 0x408f20

	.globl set_stat_type
	.type set_stat_type, @function
set_stat_type:
	dec	esi
	xor	eax, eax
	cmp	esi, 0xb
	ja	.label_674
	movsxd	rax, esi
	mov	eax,  dword ptr [dword ptr [+ (rax * 4) + label_675]]
.label_674:
	mov	dword ptr [rdi + 0x18], eax
	ret	
	.section	.text
	.align	32
	#Procedure 0x408f37
	.globl sub_408f37
	.type sub_408f37, @function
sub_408f37:

	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x408f40

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
	call	orig_freopen
	mov	rbx, rax
	test	r15, r15
	je	.label_676
	test	rbx, rbx
	je	.label_676
	mov	rdi, rbx
	call	fileno
	mov	ebp, eax
	mov	edi, ebp
	mov	esi, ebp
	call	dup2
	test	eax, eax
	jns	.label_676
	call	__errno_location
	cmp	dword ptr [rax], 9
	jne	.label_676
	mov	edi, OFFSET FLAT:label_677
	mov	esi, 0x80000
	xor	eax, eax
	call	open
	mov	r12d, eax
	cmp	r12d, ebp
	je	.label_678
	mov	edi, r12d
	mov	esi, ebp
	call	dup2
	mov	ebp, eax
	mov	edi, r12d
	call	close
	test	ebp, ebp
	js	.label_676
.label_678:
	mov	rdi, r15
	mov	rsi, r14
	mov	rdx, rbx
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	pop	rbp
	jmp	orig_freopen
.label_676:
	mov	rax, rbx
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x408fd1
	.globl sub_408fd1
	.type sub_408fd1, @function
sub_408fd1:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x408fe0

	.globl orig_freopen
	.type orig_freopen, @function
orig_freopen:
	jmp	freopen
	.section	.text
	.align	32
	#Procedure 0x408fe5
	.globl sub_408fe5
	.type sub_408fe5, @function
sub_408fe5:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x408ff0
	.globl quotearg_colon_mem
	.type quotearg_colon_mem, @function
quotearg_colon_mem:

	mov	edx, 0x3a
	jmp	quotearg_char_mem
	.section	.text
	.align	32
	#Procedure 0x408ffa
	.globl sub_408ffa
	.type sub_408ffa, @function
sub_408ffa:

	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x409000
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
	je	.label_679
	add	rbx, 8
	nop	word ptr cs:[rax + rax]
.label_680:
	mov	rdi, r12
	mov	rsi, r15
	mov	rdx, r14
	call	memcmp
	test	eax, eax
	mov	rax, r13
	je	.label_679
	mov	r13, qword ptr [rbx]
	add	rbx, 8
	add	r15, r14
	test	r13, r13
	mov	eax, 0
	jne	.label_680
.label_679:
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	ret	
	.section	.text
	.align	32
	#Procedure 0x409063
	.globl sub_409063
	.type sub_409063, @function
sub_409063:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x409070

	.globl timespec_cmp
	.type timespec_cmp, @function
timespec_cmp:
	mov	eax, 0xffffffff
	cmp	rdi, rdx
	jl	.label_681
	mov	eax, 1
	jg	.label_681
	sub	esi, ecx
	mov	eax, esi
.label_681:
	ret	
	.section	.text
	.align	32
	#Procedure 0x409086
	.globl sub_409086
	.type sub_409086, @function
sub_409086:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x409090
	.globl rotl16
	.type rotl16, @function
rotl16:

	mov	eax, edi
	mov	ecx, esi
	shl	eax, cl
	mov	ecx, 0x10
	sub	ecx, esi
	shr	edi, cl
	or	edi, eax
	mov	eax, edi
	ret	
	.section	.text
	.align	32
	#Procedure 0x4090a4
	.globl sub_4090a4
	.type sub_4090a4, @function
sub_4090a4:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4090b0

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
	jns	.label_682
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
.label_682:
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
	#Procedure 0x409118
	.globl sub_409118
	.type sub_409118, @function
sub_409118:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x409120

	.globl iso_week_days
	.type iso_week_days, @function
iso_week_days:
	lea	eax, [rdi + 0x17e]
	sub	eax, esi
	cdqe	
	imul	rcx, rax, -0x6db6db6d
	shr	rcx, 0x20
	add	ecx, eax
	mov	edx, ecx
	shr	edx, 0x1f
	sar	ecx, 2
	add	ecx, edx
	lea	edx, [rcx*8]
	sub	edx, ecx
	sub	eax, edx
	neg	eax
	lea	eax, [rdi + rax + 3]
	ret	
	.section	.text
	.align	32
	#Procedure 0x409153
	.globl sub_409153
	.type sub_409153, @function
sub_409153:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x409160

	.globl get_stat_mtime
	.type get_stat_mtime, @function
get_stat_mtime:
	mov	rax, qword ptr [rdi + 0x58]
	mov	rdx, qword ptr [rdi + 0x60]
	ret	
	.section	.text
	.align	32
	#Procedure 0x409169
	.globl sub_409169
	.type sub_409169, @function
sub_409169:

	nop	dword ptr [rax]
.label_687:
	call	__errno_location
	cmp	dword ptr [rax], 0x16
	jne	.label_686
	mov	edi, OFFSET FLAT:label_683
	mov	esi, OFFSET FLAT:label_684
	mov	edx, 0x29
	mov	ecx, OFFSET FLAT:label_685
	call	__assert_fail
.label_686:
	call	xalloc_die
	.section	.text
	.align	32
	#Procedure 0x409198
	.globl sub_409198
	.type sub_409198, @function
sub_409198:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40919d

	.globl xfts_open
	.type xfts_open, @function
xfts_open:
	push	rax
	or	esi, 0x200
	call	rpl_fts_open
	test	rax, rax
	je	.label_687
	pop	rcx
	ret	
	.section	.text
	.align	32
	#Procedure 0x4091b0

	.globl is_prime
	.type is_prime, @function
is_prime:
	mov	r8, rdi
	mov	esi, 3
	cmp	r8, 0xa
	jb	.label_688
	mov	esi, 3
	mov	edi, 9
	mov	ecx, 0x10
	nop	dword ptr [rax]
.label_689:
	xor	edx, edx
	mov	rax, r8
	div	rsi
	test	rdx, rdx
	je	.label_688
	add	rdi, rcx
	add	rsi, 2
	add	rcx, 8
	cmp	rdi, r8
	jb	.label_689
.label_688:
	xor	edx, edx
	mov	rax, r8
	div	rsi
	test	rdx, rdx
	setne	al
	ret	
	.section	.text
	.align	32
	#Procedure 0x4091fc
	.globl sub_4091fc
	.type sub_4091fc, @function
sub_4091fc:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x409200

	.globl xcharalloc
	.type xcharalloc, @function
xcharalloc:
	jmp	xmalloc
	.section	.text
	.align	32
	#Procedure 0x409205
	.globl sub_409205
	.type sub_409205, @function
sub_409205:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x409210

	.globl rpl_fcntl_DUPFD_CLOEXEC
	.type rpl_fcntl_DUPFD_CLOEXEC, @function
rpl_fcntl_DUPFD_CLOEXEC:
	push	rbp
	push	r14
	push	rbx
	mov	r14d, esi
	mov	ebp, edi
	cmp	dword ptr [dword ptr [rip + rpl_fcntl_DUPFD_CLOEXEC.have_dupfd_cloexec]],  0
	js	.label_691
	mov	esi, 0x406
	xor	eax, eax
	mov	edi, ebp
	mov	edx, r14d
	call	fcntl
	mov	ebx, eax
	test	ebx, ebx
	jns	.label_693
	call	__errno_location
	cmp	dword ptr [rax], 0x16
	jne	.label_693
	mov	edi, ebp
	mov	esi, r14d
	call	rpl_fcntl_DUPFD
	mov	ebx, eax
	test	ebx, ebx
	js	.label_690
	mov	dword ptr [dword ptr [rip + rpl_fcntl_DUPFD_CLOEXEC.have_dupfd_cloexec]],  0xffffffff
	jmp	.label_694
.label_693:
	mov	dword ptr [dword ptr [rip + rpl_fcntl_DUPFD_CLOEXEC.have_dupfd_cloexec]],  1
	jmp	.label_694
.label_691:
	mov	edi, ebp
	mov	esi, r14d
	call	rpl_fcntl_DUPFD
	mov	ebx, eax
.label_694:
	test	ebx, ebx
	js	.label_690
	cmp	dword ptr [dword ptr [rip + rpl_fcntl_DUPFD_CLOEXEC.have_dupfd_cloexec]],  -1
	jne	.label_690
	mov	esi, 1
	xor	eax, eax
	mov	edi, ebx
	call	fcntl
	mov	ecx, eax
	test	ecx, ecx
	js	.label_692
	or	ecx, 1
	mov	esi, 2
	xor	eax, eax
	mov	edi, ebx
	mov	edx, ecx
	call	fcntl
	cmp	eax, -1
	jne	.label_690
.label_692:
	call	__errno_location
	mov	rbp, rax
	mov	r14d, dword ptr [rbp]
	mov	edi, ebx
	call	close
	mov	dword ptr [rbp], r14d
	mov	ebx, 0xffffffff
.label_690:
	mov	eax, ebx
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x4092d3
	.globl sub_4092d3
	.type sub_4092d3, @function
sub_4092d3:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4092e0
	.globl get_stat_mtime_ns
	.type get_stat_mtime_ns, @function
get_stat_mtime_ns:

	mov	rax, qword ptr [rdi + 0x60]
	ret	
	.section	.text
	.align	32
	#Procedure 0x4092e5
	.globl sub_4092e5
	.type sub_4092e5, @function
sub_4092e5:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4092f0

	.globl register_state
	.type register_state, @function
register_state:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	push	rax
	mov	r15, rdx
	mov	rbx, rsi
	mov	r13, rdi
	mov	qword ptr [rbx], r15
	lea	r12, [rbx + 0x20]
	mov	rsi, qword ptr [rbx + 0x10]
	mov	rdi, r12
	call	re_node_set_alloc
	mov	r14d, 0xc
	test	eax, eax
	jne	.label_698
	cmp	qword ptr [rbx + 0x10], 0
	jle	.label_696
	xor	ebp, ebp
	nop	word ptr [rax + rax]
.label_699:
	mov	rax, qword ptr [rbx + 0x18]
	mov	rsi, qword ptr [rax + rbp*8]
	mov	rax, qword ptr [r13]
	mov	rcx, rsi
	shl	rcx, 4
	test	byte ptr [rax + rcx + 8], 8
	jne	.label_700
	mov	rdi, r12
	call	re_node_set_insert_last
	test	al, al
	je	.label_698
.label_700:
	inc	rbp
	cmp	rbp, qword ptr [rbx + 0x10]
	jl	.label_699
.label_696:
	mov	r12, qword ptr [r13 + 0x40]
	and	r15, qword ptr [r13 + 0x88]
	lea	rbp, [r15 + r15*2]
	mov	r15, qword ptr [r12 + rbp*8]
	cmp	qword ptr [r12 + rbp*8 + 8], r15
	jle	.label_697
.label_695:
	lea	rax, [r12 + rbp*8]
	mov	rcx, qword ptr [rax]
	lea	rdx, [rcx + 1]
	mov	qword ptr [rax], rdx
	mov	rax, qword ptr [r12 + rbp*8 + 0x10]
	mov	qword ptr [rax + rcx*8], rbx
	xor	r14d, r14d
.label_698:
	mov	eax, r14d
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_697:
	lea	rax, [r15 + r15]
	mov	rdi, qword ptr [r12 + rbp*8 + 0x10]
	lea	rsi, [rax*8 + 0x10]
	call	realloc
	test	rax, rax
	je	.label_698
	lea	rcx, [r12 + rbp*8 + 8]
	lea	rdx, [r15 + r15 + 2]
	mov	qword ptr [rcx + 8], rax
	mov	qword ptr [rcx], rdx
	jmp	.label_695
	.section	.text
	.align	32
	#Procedure 0x4093d3
	.globl sub_4093d3
	.type sub_4093d3, @function
sub_4093d3:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4093e0
	.globl free_exclude
	.type free_exclude, @function
free_exclude:

	push	r15
	push	r14
	push	rbx
	mov	r14, rdi
	mov	rdi, qword ptr [r14]
	test	rdi, rdi
	je	.label_701
.label_703:
	mov	rbx, qword ptr [rdi]
	call	free_exclude_segment
	test	rbx, rbx
	mov	rdi, rbx
	jne	.label_703
.label_701:
	mov	rbx, qword ptr [r14 + 8]
	test	rbx, rbx
	je	.label_702
	nop	dword ptr [rax]
.label_704:
	mov	r15, qword ptr [rbx]
	mov	rdi, qword ptr [rbx + 8]
	call	free
	mov	rdi, rbx
	call	free
	test	r15, r15
	mov	rbx, r15
	jne	.label_704
.label_702:
	mov	rdi, r14
	pop	rbx
	pop	r14
	pop	r15
	jmp	free
	.section	.text
	.align	32
	#Procedure 0x409439
	.globl sub_409439
	.type sub_409439, @function
sub_409439:

	nop	dword ptr [rax]
.label_706:
	test	esi, esi
	js	.label_705
	mov	eax, dword ptr [rbx + 0x48]
	and	eax, 4
	jne	.label_705
	mov	edi, esi
.label_707:
	call	close
.label_705:
	mov	dword ptr [rbx + 0x2c], ebp
	add	rsp, 8
	pop	rbx
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40945d

	.globl cwd_advance_fd
	.type cwd_advance_fd, @function
cwd_advance_fd:
	push	rbp
	push	rbx
	push	rax
	mov	ebp, esi
	mov	rbx, rdi
	mov	esi, dword ptr [rbx + 0x2c]
	cmp	esi, ebp
	jne	.label_709
	cmp	esi, -0x64
	jne	.label_708
.label_709:
	test	dl, dl
	je	.label_706
	lea	rdi, [rbx + 0x60]
	call	i_ring_push
	test	eax, eax
	js	.label_705
	mov	edi, eax
	jmp	.label_707
.label_708:
	call	abort
	.section	.text
	.align	32
	#Procedure 0x40948b
	.globl sub_40948b
	.type sub_40948b, @function
sub_40948b:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x409490

	.globl clear_ungetc_buffer_preserving_position
	.type clear_ungetc_buffer_preserving_position, @function
clear_ungetc_buffer_preserving_position:
	test	byte ptr [rdi + 1], 1
	jne	.label_710
	ret	
.label_710:
	xor	esi, esi
	mov	edx, 1
	jmp	rpl_fseeko
	.section	.text
	.align	32
	#Procedure 0x4094a3
	.globl sub_4094a3
	.type sub_4094a3, @function
sub_4094a3:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4094b0

	.globl usage
	.type usage, @function
usage:
	push	rbp
	push	rbx
	push	rax
	mov	ebp, edi
	test	ebp, ebp
	jne	.label_719
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_723
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
	mov	esi, OFFSET FLAT:label_714
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	call	emit_mandatory_arg_note
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_713
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
	mov	esi, OFFSET FLAT:label_715
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_716
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_717
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
	mov	esi, OFFSET FLAT:label_712
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
	mov	esi, OFFSET FLAT:label_722
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	call	emit_blocksize_note
	call	emit_size_note
	call	emit_ancillary_info
	mov	edi, ebp
	call	exit
.label_719:
	mov	rbx,  qword ptr [word ptr [rip + stderr]]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_711
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
	#Procedure 0x40967d
	.globl sub_40967d
	.type sub_40967d, @function
sub_40967d:

	nop	dword ptr [rax]
.label_724:
	mov	qword ptr [rsi + rax + 8], r8
.label_725:
	ret	
	.section	.text
	.align	32
	#Procedure 0x409686
	.globl sub_409686
	.type sub_409686, @function
sub_409686:

	nop	word ptr cs:[rax + rax]
.label_727:
	test	ecx, 0x80000
	je	.label_724
	cmp	qword ptr [rdx + rax], -1
	je	.label_724
	shl	r9, 4
	mov	rdi, rsi
	mov	rsi, rdx
	mov	rdx, r9
	jmp	memcpy
.label_726:
	mov	rax, qword ptr [rax]
	inc	rax
	cmp	rax, r9
	jge	.label_725
	shl	rax, 4
	cmp	qword ptr [rsi + rax], r8
	jge	.label_727
	mov	qword ptr [rsi + rax + 8], r8
	shl	r9, 4
	mov	rdi, rdx
	mov	rdx, r9
	jmp	memcpy
	.section	.text
	.align	32
	#Procedure 0x4096da

	.globl update_regs
	.type update_regs, @function
update_regs:
	mov	rdi, qword ptr [rdi]
	shl	rcx, 4
	lea	rax, [rdi + rcx]
	mov	ecx, dword ptr [rdi + rcx + 8]
	cmp	cl, 9
	je	.label_726
	cmp	cl, 8
	jne	.label_725
	mov	rax, qword ptr [rax]
	inc	rax
	cmp	rax, r9
	jge	.label_725
	shl	rax, 4
	mov	qword ptr [rsi + rax], r8
	mov	qword ptr [rsi + rax + 8], -1
	ret	
	.section	.text
	.align	32
	#Procedure 0x409710

	.globl re_string_realloc_buffers
	.type re_string_realloc_buffers, @function
re_string_realloc_buffers:
	push	rbp
	push	r14
	push	rbx
	mov	r14, rsi
	mov	rbx, rdi
	cmp	dword ptr [rbx + 0x90], 2
	jl	.label_729
	mov	rax, r14
	shr	rax, 0x3d
	mov	ebp, 0xc
	jne	.label_728
	mov	rdi, qword ptr [rbx + 0x10]
	lea	rsi, [r14*4]
	call	realloc
	test	rax, rax
	je	.label_728
	mov	qword ptr [rbx + 0x10], rax
	mov	rdi, qword ptr [rbx + 0x18]
	test	rdi, rdi
	je	.label_729
	lea	rsi, [r14*8]
	call	realloc
	test	rax, rax
	je	.label_728
	mov	qword ptr [rbx + 0x18], rax
.label_729:
	cmp	byte ptr [rbx + 0x8b], 0
	je	.label_730
	mov	rdi, qword ptr [rbx + 8]
	mov	rsi, r14
	call	realloc
	mov	ebp, 0xc
	test	rax, rax
	je	.label_728
	mov	qword ptr [rbx + 8], rax
.label_730:
	mov	qword ptr [rbx + 0x40], r14
	xor	ebp, ebp
.label_728:
	mov	eax, ebp
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40979a
	.globl sub_40979a
	.type sub_40979a, @function
sub_40979a:

	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4097a0

	.globl re_node_set_insert_last
	.type re_node_set_insert_last, @function
re_node_set_insert_last:
	push	r14
	push	rbx
	push	rax
	mov	r14, rsi
	mov	rbx, rdi
	mov	rax, qword ptr [rbx]
	cmp	rax, qword ptr [rbx + 8]
	jne	.label_731
	lea	rcx, [rax + rax + 2]
	lea	rax, [rax + rax]
	mov	qword ptr [rbx], rcx
	mov	rdi, qword ptr [rbx + 0x10]
	lea	rsi, [rax*8 + 0x10]
	call	realloc
	test	rax, rax
	je	.label_732
	mov	qword ptr [rbx + 0x10], rax
.label_731:
	mov	rax, qword ptr [rbx + 8]
	lea	rcx, [rax + 1]
	mov	qword ptr [rbx + 8], rcx
	mov	rcx, qword ptr [rbx + 0x10]
	mov	qword ptr [rcx + rax*8], r14
	mov	al, 1
.label_733:
	add	rsp, 8
	pop	rbx
	pop	r14
	ret	
.label_732:
	xor	eax, eax
	jmp	.label_733
	.section	.text
	.align	32
	#Procedure 0x4097fb
	.globl sub_4097fb
	.type sub_4097fb, @function
sub_4097fb:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x409800

	.globl check_halt_node_context
	.type check_halt_node_context, @function
check_halt_node_context:
	mov	rax, qword ptr [rdi]
	shl	rsi, 4
	mov	ecx, dword ptr [rax + rsi + 8]
	cmp	cl, 2
	jne	.label_734
	shr	ecx, 8
	mov	al, 1
	test	cx, 0x3ff
	je	.label_735
	mov	eax, edx
	and	eax, 1
	jne	.label_737
	mov	esi, ecx
	and	esi, 4
	jne	.label_734
.label_737:
	test	eax, eax
	je	.label_736
	mov	eax, ecx
	and	eax, 8
	jne	.label_734
.label_736:
	test	dl, 2
	jne	.label_738
	mov	eax, ecx
	and	eax, 0x20
	je	.label_738
.label_734:
	xor	eax, eax
.label_735:
	ret	
.label_738:
	and	edx, 8
	test	cl, cl
	setns	al
	shr	edx, 3
	or	dl, al
	mov	eax, edx
	ret	
	.section	.text
	.align	32
	#Procedure 0x409854
	.globl sub_409854
	.type sub_409854, @function
sub_409854:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x409860

	.globl prune_impossible_nodes
	.type prune_impossible_nodes, @function
prune_impossible_nodes:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x58
	mov	rbx, qword ptr [rdi + 0xa8]
	mov	r13d, 0xc
	movabs	rax, 0x1ffffffffffffffe
	cmp	rbx, rax
	ja	.label_745
	mov	r14, qword ptr [rdi + 0x98]
	mov	qword ptr [rsp + 0x10], rdi
	mov	rax, qword ptr [rdi + 0xb0]
	mov	qword ptr [rsp + 8], rax
	lea	rbp, [rbx*8 + 8]
	mov	rdi, rbp
	call	malloc
	mov	r13d, 0xc
	xor	r15d, r15d
	mov	qword ptr [rsp], rax
	test	rax, rax
	je	.label_749
	cmp	qword ptr [r14 + 0x98], 0
	je	.label_742
	mov	qword ptr [rsp + 0x18], r14
	mov	rdi, rbp
	call	malloc
	mov	r15, rax
	test	r15, r15
	je	.label_747
	lea	rbp, [rsp + 0x20]
	mov	r13, qword ptr [rsp + 8]
	mov	r14, qword ptr [rsp]
	jmp	.label_748
.label_742:
	xor	r15d, r15d
	lea	r14, [rsp + 0x20]
	xor	edx, edx
	mov	rdi, r14
	mov	r12, qword ptr [rsp]
	mov	rsi, r12
	mov	rcx, qword ptr [rsp + 8]
	mov	r8, rbx
	call	sift_ctx_init
	mov	rbp, qword ptr [rsp + 0x10]
	mov	rdi, rbp
	mov	rsi, r14
	call	sift_states_backward
	mov	r13d, eax
	mov	rdi, qword ptr [rsp + 0x50]
	call	free
	test	r13d, r13d
	jne	.label_741
	xor	r15d, r15d
	cmp	qword ptr [r12], 0
	jne	.label_740
	mov	r13d, 1
	jmp	.label_741
	.section	.text
	.align	32
	#Procedure 0x40995f
	.globl sub_40995f
	.type sub_40995f, @function
sub_40995f:

	nop	
.label_743:
	mov	rdi, rbp
	mov	rdx, rbx
	call	check_halt_state_context
	lea	rbp, [rsp + 0x20]
	mov	r14, qword ptr [rsp]
	mov	r13, rax
.label_748:
	lea	rdx, [rbx*8 + 8]
	xor	esi, esi
	mov	rdi, r15
	call	memset
	mov	rdi, rbp
	mov	rsi, r14
	mov	rdx, r15
	mov	r12, r13
	mov	rcx, r13
	mov	r8, rbx
	call	sift_ctx_init
	mov	rdi, qword ptr [rsp + 0x10]
	mov	rsi, rbp
	call	sift_states_backward
	mov	r13d, eax
	mov	rdi, qword ptr [rsp + 0x50]
	call	free
	test	r13d, r13d
	jne	.label_750
	mov	rbp, qword ptr [rsp + 0x10]
	cmp	qword ptr [r14], 0
	jne	.label_739
	cmp	qword ptr [r15], 0
	jne	.label_739
	mov	r13d, 1
	test	rbx, rbx
	jle	.label_749
	mov	rax, qword ptr [rbp + 0xb8]
	dec	rbx
	nop	dword ptr [rax]
.label_744:
	mov	rsi, qword ptr [rax + rbx*8]
	test	rsi, rsi
	je	.label_746
	test	byte ptr [rsi + 0x68], 0x10
	jne	.label_743
.label_746:
	lea	rcx, [rbx - 1]
	inc	rbx
	cmp	rbx, 2
	mov	rbx, rcx
	jge	.label_744
	mov	r12, qword ptr [rsp]
	jmp	.label_741
.label_739:
	mov	qword ptr [rsp + 8], r12
	lea	rcx, [rbx + 1]
	mov	rdi, qword ptr [rsp + 0x18]
	mov	r12, qword ptr [rsp]
	mov	rsi, r12
	mov	rdx, r15
	call	merge_state_array
	mov	r13d, eax
	mov	rdi, r15
	call	free
	xor	r15d, r15d
	test	r13d, r13d
	jne	.label_741
.label_740:
	mov	rdi, qword ptr [rbp + 0xb8]
	call	free
	mov	qword ptr [rbp + 0xb8], r12
	mov	rax, qword ptr [rsp + 8]
	mov	qword ptr [rbp + 0xb0], rax
	mov	qword ptr [rbp + 0xa8], rbx
	xor	r13d, r13d
	xor	r12d, r12d
	xor	r15d, r15d
.label_741:
	mov	rdi, r12
	call	free
	mov	rdi, r15
	call	free
.label_745:
	mov	eax, r13d
	add	rsp, 0x58
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_749:
	mov	r12, qword ptr [rsp]
	jmp	.label_741
.label_750:
	mov	r12, r14
	jmp	.label_741
.label_747:
	mov	r12, qword ptr [rsp]
	jmp	.label_741
	.section	.text
	.align	32
	#Procedure 0x409aab
	.globl sub_409aab
	.type sub_409aab, @function
sub_409aab:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x409ab0

	.globl rpl_fflush
	.type rpl_fflush, @function
rpl_fflush:
	push	rbx
	mov	rbx, rdi
	test	rbx, rbx
	je	.label_751
	mov	rdi, rbx
	call	__freading
	test	eax, eax
	je	.label_751
	mov	rdi, rbx
	call	clear_ungetc_buffer_preserving_position
.label_751:
	mov	rdi, rbx
	pop	rbx
	jmp	fflush
	.section	.text
	.align	32
	#Procedure 0x409ad6
	.globl sub_409ad6
	.type sub_409ad6, @function
sub_409ad6:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x409ae0

	.globl string_compare
	.type string_compare, @function
string_compare:
	push	rax
	call	strcmp
	test	eax, eax
	sete	al
	pop	rcx
	ret	
	.section	.text
	.align	32
	#Procedure 0x409aed
	.globl sub_409aed
	.type sub_409aed, @function
sub_409aed:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x409af0

	.globl duplicate_node_closure
	.type duplicate_node_closure, @function
duplicate_node_closure:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x18
	mov	dword ptr [rsp + 0xc], r8d
	mov	qword ptr [rsp + 0x10], rcx
	mov	rbx, rdx
	mov	r14, rsi
	mov	r15, rdi
	jmp	.label_761
	.section	.text
	.align	32
	#Procedure 0x409b16
	.globl sub_409b16
	.type sub_409b16, @function
sub_409b16:

	nop	word ptr cs:[rax + rax]
.label_753:
	mov	rsi, qword ptr [rcx + r13*8 + 0x10]
	mov	rbp, qword ptr [rsi]
	lea	rsi, [rbx + rbx*2]
	mov	r12, rsi
	mov	qword ptr [rcx + rsi*8 + 8], 0
	cmp	rdx, 1
	je	.label_759
	mov	rdi, r15
	mov	rsi, rbp
	mov	edx, dword ptr [rsp + 0xc]
	call	search_duplicated_node
	cmp	rax, -1
	je	.label_756
	mov	rcx, qword ptr [r15 + 0x28]
	lea	rdi, [rcx + r12*8]
	mov	rsi, rax
	call	re_node_set_insert
	mov	ebp, 0xc
	test	al, al
	jne	.label_762
	jmp	.label_752
.label_756:
	mov	rdi, r15
	mov	rbx, rbp
	mov	rsi, rbp
	mov	edx, dword ptr [rsp + 0xc]
	call	duplicate_node
	mov	r14, rax
	mov	ebp, 0xc
	cmp	r14, -1
	je	.label_752
	mov	rax, qword ptr [r15 + 0x28]
	lea	rdi, [rax + r12*8]
	mov	rsi, r14
	call	re_node_set_insert
	test	al, al
	je	.label_752
	mov	rdi, r15
	mov	rsi, rbx
	mov	rdx, r14
	mov	rcx, qword ptr [rsp + 0x10]
	mov	r8d, dword ptr [rsp + 0xc]
	call	duplicate_node_closure
	mov	ebp, eax
	test	ebp, ebp
	jne	.label_752
.label_762:
	mov	rax, qword ptr [r15 + 0x28]
	mov	rax, qword ptr [rax + r13*8 + 0x10]
	mov	r14, qword ptr [rax + 8]
	mov	rdi, r15
	mov	rsi, r14
	mov	edx, dword ptr [rsp + 0xc]
.label_763:
	call	duplicate_node
	mov	ebp, 0xc
	cmp	rax, -1
	je	.label_752
	mov	rcx, qword ptr [r15 + 0x28]
	lea	rdi, [rcx + r12*8]
	mov	rsi, rax
	mov	rbx, rax
	call	re_node_set_insert
	test	al, al
	jne	.label_761
	jmp	.label_752
.label_759:
	cmp	r14, qword ptr [rsp + 0x10]
	jne	.label_758
	cmp	rbx, r14
	jne	.label_760
.label_758:
	mov	rcx, qword ptr [r15]
	mov	eax, dword ptr [rcx + rax + 8]
	shr	eax, 8
	and	eax, 0x3ff
	mov	edx, dword ptr [rsp + 0xc]
	or	edx, eax
	mov	rdi, r15
	mov	r14, rbp
	mov	rsi, rbp
	mov	dword ptr [rsp + 0xc], edx
	jmp	.label_763
	.section	.text
	.align	32
	#Procedure 0x409c4e
	.globl sub_409c4e
	.type sub_409c4e, @function
sub_409c4e:

	nop	
.label_761:
	mov	rcx, qword ptr [r15]
	mov	rax, r14
	shl	rax, 4
	cmp	byte ptr [rcx + rax + 8], 4
	jne	.label_755
	mov	rax, qword ptr [r15 + 0x18]
	mov	rcx, qword ptr [r15 + 0x28]
	mov	rbp, qword ptr [rax + r14*8]
	lea	r12, [rbx + rbx*2]
	mov	qword ptr [rcx + r12*8 + 8], 0
	mov	rdi, r15
	mov	rsi, rbp
	mov	r13, r15
	mov	edx, dword ptr [rsp + 0xc]
	mov	r15, rbx
	call	duplicate_node
	mov	rbx, rax
	cmp	rbx, -1
	je	.label_754
	mov	rax, qword ptr [r13 + 0x18]
	mov	rcx, qword ptr [rax + r14*8]
	mov	qword ptr [rax + r15*8], rcx
	mov	rax, qword ptr [r13 + 0x28]
	lea	rdi, [rax + r12*8]
	mov	rsi, rbx
	call	re_node_set_insert
	test	al, al
	mov	r14, rbp
	mov	r15, r13
	mov	ebp, 0xc
	jne	.label_761
	jmp	.label_752
	.section	.text
	.align	32
	#Procedure 0x409cc9
	.globl sub_409cc9
	.type sub_409cc9, @function
sub_409cc9:

	nop	dword ptr [rax]
.label_755:
	mov	rcx, qword ptr [r15 + 0x28]
	lea	r13, [r14 + r14*2]
	mov	rdx, qword ptr [rcx + r13*8 + 8]
	test	rdx, rdx
	jne	.label_753
	mov	rax, qword ptr [r15 + 0x18]
	mov	rcx, qword ptr [rax + r14*8]
	mov	qword ptr [rax + rbx*8], rcx
.label_757:
	xor	ebp, ebp
.label_752:
	mov	eax, ebp
	add	rsp, 0x18
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_760:
	mov	rax, qword ptr [r15 + 0x28]
	lea	rdi, [rax + r12*8]
	mov	rsi, rbp
	call	re_node_set_insert
	mov	ebp, 0xc
	test	al, al
	jne	.label_757
	jmp	.label_752
.label_754:
	mov	ebp, 0xc
	jmp	.label_752
	.section	.text
	.align	32
	#Procedure 0x409d27
	.globl sub_409d27
	.type sub_409d27, @function
sub_409d27:

	nop	word ptr [rax + rax]
.label_764:
	xor	eax, eax
	pop	rcx
	ret	
	.section	.text
	.align	32
	#Procedure 0x409d34
	.globl sub_409d34
	.type sub_409d34, @function
sub_409d34:

	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x409d3d
	.globl rpl_re_compile_pattern
	.type rpl_re_compile_pattern, @function
rpl_re_compile_pattern:

	push	rax
	mov	r8, rsi
	mov	rsi, rdi
	mov	rcx,  qword ptr [word ptr [rip + rpl_re_syntax_options]]
	mov	al, byte ptr [rdx + 0x38]
	shr	rcx, 0x15
	and	cl, 0x10
	and	al, 0x6f
	or	al, cl
	or	al, 0x80
	mov	byte ptr [rdx + 0x38], al
	mov	rcx,  qword ptr [word ptr [rip + rpl_re_syntax_options]]
	mov	rdi, rdx
	mov	rdx, r8
	call	re_compile_internal
	test	eax, eax
	je	.label_764
	cdqe	
	mov	esi, OFFSET FLAT:__re_error_msgid
	add	rsi,  qword ptr [word ptr [+ (rax * 8) + __re_error_msgid_idx]]
	xor	edi, edi
	mov	edx, 5
	pop	rax
	jmp	dcgettext
	.section	.text
	.align	32
	#Procedure 0x409d90

	.globl calc_first
	.type calc_first, @function
calc_first:
	push	r14
	push	rbx
	push	rax
	mov	rbx, rsi
	mov	r14, rdi
	cmp	byte ptr [rbx + 0x30], 0x10
	jne	.label_765
	mov	rax, qword ptr [rbx + 8]
	mov	rax, qword ptr [rax + 0x18]
	mov	qword ptr [rbx + 0x18], rax
	mov	rax, qword ptr [rbx + 8]
	mov	rax, qword ptr [rax + 0x38]
	mov	qword ptr [rbx + 0x38], rax
	xor	eax, eax
	jmp	.label_766
.label_765:
	mov	qword ptr [rbx + 0x18], rbx
	mov	rsi, qword ptr [rbx + 0x28]
	mov	rdx, qword ptr [rbx + 0x30]
	mov	rdi, r14
	call	re_dfa_add_node
	mov	rcx, rax
	mov	qword ptr [rbx + 0x38], rcx
	mov	eax, 0xc
	cmp	rcx, -1
	je	.label_766
	xor	eax, eax
	cmp	byte ptr [rbx + 0x30], 0xc
	jne	.label_766
	mov	edx, dword ptr [rbx + 0x28]
	mov	rsi, qword ptr [r14]
	shl	rcx, 4
	shl	edx, 8
	and	edx, 0x3ff00
	mov	edi, 0xfffc00ff
	and	edi, dword ptr [rsi + rcx + 8]
	or	edi, edx
	mov	dword ptr [rsi + rcx + 8], edi
.label_766:
	add	rsp, 8
	pop	rbx
	pop	r14
	ret	
	.section	.text
	.align	32
	#Procedure 0x409e14
	.globl sub_409e14
	.type sub_409e14, @function
sub_409e14:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x409e20
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
	#Procedure 0x409e39
	.globl sub_409e39
	.type sub_409e39, @function
sub_409e39:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x409e40
	.globl hash_get_entries
	.type hash_get_entries, @function
hash_get_entries:

	mov	r8, qword ptr [rdi]
	xor	eax, eax
	cmp	r8, qword ptr [rdi + 8]
	jae	.label_767
	xor	eax, eax
.label_770:
	cmp	qword ptr [r8], 0
	je	.label_768
	test	r8, r8
	je	.label_768
	mov	r9, r8
	nop	dword ptr [rax + rax]
.label_769:
	cmp	rax, rdx
	jae	.label_767
	mov	rcx, qword ptr [r9]
	mov	qword ptr [rsi + rax*8], rcx
	inc	rax
	mov	r9, qword ptr [r9 + 8]
	test	r9, r9
	jne	.label_769
.label_768:
	add	r8, 0x10
	cmp	r8, qword ptr [rdi + 8]
	jb	.label_770
.label_767:
	ret	
	.section	.text
	.align	32
	#Procedure 0x409e83
	.globl sub_409e83
	.type sub_409e83, @function
sub_409e83:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x409e90

	.globl extend_abbrs
	.type extend_abbrs, @function
extend_abbrs:
	push	r14
	push	rbx
	push	rax
	mov	r14, rdx
	mov	rbx, rdi
	call	memcpy
	mov	byte ptr [rbx + r14], 0
	add	rsp, 8
	pop	rbx
	pop	r14
	ret	
	.section	.text
	.align	32
	#Procedure 0x409eac
	.globl sub_409eac
	.type sub_409eac, @function
sub_409eac:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x409eb0

	.globl build_upper_buffer
	.type build_upper_buffer, @function
build_upper_buffer:
	push	r15
	push	r14
	push	rbx
	mov	r14, rdi
	mov	rbx, qword ptr [r14 + 0x30]
	mov	r15, qword ptr [r14 + 0x40]
	mov	rax, qword ptr [r14 + 0x58]
	cmp	r15, rax
	cmovg	r15, rax
	cmp	rbx, r15
	jl	.label_771
	jmp	.label_772
.label_771:
	mov	rcx, qword ptr [r14]
	mov	rax, qword ptr [r14 + 0x78]
	add	rcx, qword ptr [r14 + 0x28]
	movzx	ecx, byte ptr [rbx + rcx]
	movzx	edx, cl
	test	rax, rax
	jne	.label_773
.label_774:
	movzx	edi, cl
	call	toupper
	mov	rcx, qword ptr [r14 + 8]
	mov	byte ptr [rcx + rbx], al
	inc	rbx
	cmp	rbx, r15
	jl	.label_771
	mov	rbx, r15
.label_772:
	mov	qword ptr [r14 + 0x30], rbx
	mov	qword ptr [r14 + 0x38], rbx
	pop	rbx
	pop	r14
	pop	r15
	ret	
	.section	.text
	.align	32
	#Procedure 0x409f11
	.globl sub_409f11
	.type sub_409f11, @function
sub_409f11:

	nop	
.label_773:
	movzx	ecx, byte ptr [rax + rdx]
	jmp	.label_774
	.section	.text
	.align	32
	#Procedure 0x409f18
	.globl sub_409f18
	.type sub_409f18, @function
sub_409f18:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x409f20

	.globl re_string_construct_common
	.type re_string_construct_common, @function
re_string_construct_common:
	mov	qword ptr [rdx], rdi
	mov	qword ptr [rdx + 0x58], rsi
	mov	qword ptr [rdx + 0x50], rsi
	mov	qword ptr [rdx + 0x78], rcx
	mov	byte ptr [rdx + 0x88], r8b
	test	rcx, rcx
	setne	al
	or	al, r8b
	mov	byte ptr [rdx + 0x8b], al
	mov	eax, dword ptr [r9 + 0xb4]
	mov	dword ptr [rdx + 0x90], eax
	mov	al, byte ptr [r9 + 0xb0]
	shr	al, 2
	and	al, 1
	mov	byte ptr [rdx + 0x89], al
	mov	al, byte ptr [r9 + 0xb0]
	shr	al, 3
	and	al, 1
	mov	byte ptr [rdx + 0x8a], al
	mov	rax, qword ptr [rdx + 0x58]
	mov	qword ptr [rdx + 0x68], rax
	mov	qword ptr [rdx + 0x60], rax
	ret	
	.section	.text
	.align	32
	#Procedure 0x409f83
	.globl sub_409f83
	.type sub_409f83, @function
sub_409f83:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x409f90

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
	#Procedure 0x409fc6
	.globl sub_409fc6
	.type sub_409fc6, @function
sub_409fc6:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x409fd0

	.globl build_charclass_op
	.type build_charclass_op, @function
build_charclass_op:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x28
	mov	r12, r9
	mov	r13d, r8d
	mov	rbp, rcx
	mov	qword ptr [rsp + 0x18], rdx
	mov	r14, rsi
	mov	r15, rdi
	mov	qword ptr [rsp + 0x20], 0
	mov	edi, 0x20
	mov	esi, 1
	call	rpl_calloc
	mov	rbx, rax
	test	rbx, rbx
	je	.label_776
	mov	qword ptr [rsp], r12
	mov	edi, 0x50
	mov	esi, 1
	call	rpl_calloc
	mov	r12, rax
	test	r12, r12
	je	.label_784
	mov	al, byte ptr [r12 + 0x20]
	and	al, 0xfe
	or	al, r13b
	mov	byte ptr [r12 + 0x20], al
	lea	rcx, [rsp + 0x20]
	xor	r9d, r9d
	mov	rdi, r14
	mov	rsi, rbx
	mov	rdx, r12
	mov	r8, qword ptr [rsp + 0x18]
	call	build_charclass
	mov	r14d, eax
	test	r14d, r14d
	jne	.label_781
	mov	al, byte ptr [rbp]
	test	al, al
	je	.label_785
	inc	rbp
	nop	word ptr cs:[rax + rax]
.label_778:
	movsx	rsi, al
	mov	rdi, rbx
	call	bitset_set
	movzx	eax, byte ptr [rbp]
	inc	rbp
	test	al, al
	jne	.label_778
.label_785:
	test	r13b, r13b
	je	.label_779
	mov	rdi, rbx
	call	bitset_not
.label_779:
	cmp	dword ptr [r15 + 0xb4], 2
	jl	.label_783
	mov	rsi, qword ptr [r15 + 0x78]
	mov	rdi, rbx
	call	bitset_mask
.label_783:
	mov	byte ptr [rsp + 0x10], 3
	mov	qword ptr [rsp + 8], rbx
	lea	rcx, [rsp + 8]
	xor	esi, esi
	xor	edx, edx
	mov	rdi, r15
	call	create_token_tree
	mov	rbp, rax
	test	rbp, rbp
	je	.label_786
	cmp	dword ptr [r15 + 0xb4], 2
	jl	.label_780
	mov	byte ptr [rsp + 0x10], 6
	mov	qword ptr [rsp + 8], r12
	or	byte ptr [r15 + 0xb0], 2
	lea	rcx, [rsp + 8]
	xor	esi, esi
	xor	edx, edx
	mov	rdi, r15
	call	create_token_tree
	test	rax, rax
	je	.label_786
	mov	ecx, 0xa
	mov	rdi, r15
	mov	rsi, rbp
	mov	rdx, rax
	call	create_tree
	mov	rbp, rax
	jmp	.label_782
.label_786:
	mov	rdi, rbx
	call	free
	mov	rdi, r12
	call	free_charset
	jmp	.label_777
.label_784:
	mov	rdi, rbx
	call	free
.label_777:
	mov	rax, qword ptr [rsp]
	mov	dword ptr [rax], 0xc
	jmp	.label_775
.label_780:
	mov	rdi, r12
	call	free_charset
.label_782:
	mov	rax, rbp
	add	rsp, 0x28
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_781:
	mov	rdi, rbx
	call	free
	mov	rdi, r12
	call	free_charset
	mov	rax, qword ptr [rsp]
	mov	dword ptr [rax], r14d
.label_775:
	xor	ebp, ebp
	jmp	.label_782
	.section	.text
	.align	32
	#Procedure 0x40a182
	.globl sub_40a182
	.type sub_40a182, @function
sub_40a182:

	nop	dword ptr [rax]
.label_776:
	mov	dword ptr [r12], 0xc
	jmp	.label_775
	.section	.text
	.align	32
	#Procedure 0x40a190

	.globl optimize_subexps
	.type optimize_subexps, @function
optimize_subexps:
	cmp	byte ptr [rsi + 0x30], 4
	jne	.label_787
	mov	rax, qword ptr [rdi + 0xe0]
	test	rax, rax
	je	.label_787
	movsxd	rcx, dword ptr [rsi + 0x28]
	mov	rcx, qword ptr [rax + rcx*8]
	mov	qword ptr [rsi + 0x28], rcx
	mov	eax, 1
	shl	eax, cl
	cdqe	
	or	qword ptr [rdi + 0xa0], rax
	xor	eax, eax
	ret	
.label_787:
	cmp	byte ptr [rsi + 0x30], 0x11
	jne	.label_788
	mov	rax, qword ptr [rsi + 8]
	test	rax, rax
	je	.label_788
	cmp	byte ptr [rax + 0x30], 0x11
	jne	.label_788
	mov	rdx, qword ptr [rax + 8]
	mov	rcx, qword ptr [rax + 0x28]
	mov	qword ptr [rsi + 8], rdx
	test	rdx, rdx
	je	.label_789
	mov	qword ptr [rdx], rsi
.label_789:
	mov	rax, qword ptr [rsi + 0x28]
	mov	rdx, qword ptr [rdi + 0xe0]
	mov	rax, qword ptr [rdx + rax*8]
	mov	qword ptr [rdx + rcx*8], rax
	cmp	rcx, 0x3f
	jg	.label_788
	mov	rax, -2
	rol	rax, cl
	and	qword ptr [rdi + 0xa0], rax
.label_788:
	xor	eax, eax
	ret	
	.section	.text
	.align	32
	#Procedure 0x40a217
	.globl sub_40a217
	.type sub_40a217, @function
sub_40a217:

	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40a220

	.globl search_duplicated_node
	.type search_duplicated_node, @function
search_duplicated_node:
	mov	r8, qword ptr [rdi + 0x10]
	lea	r10, [r8 - 1]
	mov	rax, -1
	test	r10, r10
	jle	.label_790
	mov	r9, qword ptr [rdi]
	mov	rcx, r10
	shl	rcx, 4
	mov	r11d, dword ptr [r9 + rcx + 8]
	mov	ecx, r11d
	and	ecx, 0x40000
	je	.label_790
	mov	r9, qword ptr [rdi + 0x20]
	shl	r8, 4
	add	r8, -0x18
	nop	word ptr [rax + rax]
.label_793:
	cmp	qword ptr [r9 + r10*8], rsi
	jne	.label_791
	shr	r11d, 8
	and	r11d, 0x3ff
	cmp	r11d, edx
	je	.label_792
.label_791:
	dec	r10
	test	r10, r10
	jle	.label_790
	mov	rcx, qword ptr [rdi]
	mov	r11d, dword ptr [rcx + r8]
	mov	ecx, r11d
	and	ecx, 0x40000
	add	r8, -0x10
	test	ecx, ecx
	jne	.label_793
	jmp	.label_790
.label_792:
	mov	rax, r10
.label_790:
	ret	
	.section	.text
	.align	32
	#Procedure 0x40a29c
	.globl sub_40a29c
	.type sub_40a29c, @function
sub_40a29c:

	nop	dword ptr [rax]
.label_796:
	mov	edi, 0x20
	call	malloc
	mov	qword ptr [rbx + 0x58], rax
	test	rax, rax
	je	.label_795
	mov	rdi, rax
	call	cycle_check_init
.label_797:
	mov	r14b, 1
.label_794:
	mov	eax, r14d
	add	rsp, 8
	pop	rbx
	pop	r14
	ret	
	.section	.text
	.align	32
	#Procedure 0x40a2c9

	.globl setup_dir
	.type setup_dir, @function
setup_dir:
	push	r14
	push	rbx
	push	rax
	mov	rbx, rdi
	movzx	eax, word ptr [rbx + 0x48]
	test	ax, 0x102
	je	.label_796
	xor	r14d, r14d
	mov	edi, 0x1f
	xor	esi, esi
	mov	edx, OFFSET FLAT:AD_hash
	mov	ecx, OFFSET FLAT:AD_compare
	mov	r8d, OFFSET FLAT:free
	call	hash_initialize
	mov	qword ptr [rbx + 0x58], rax
	test	rax, rax
	jne	.label_797
	jmp	.label_794
.label_795:
	xor	r14d, r14d
	jmp	.label_794
	.section	.text
	.align	32
	#Procedure 0x40a309
	.globl sub_40a309
	.type sub_40a309, @function
sub_40a309:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x40a310

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
	je	.label_808
	mov	edx, OFFSET FLAT:label_813
	xor	eax, eax
	mov	rdi, r14
	mov	r8, rbx
	call	__fprintf_chk
	jmp	.label_800
.label_808:
	mov	edx, OFFSET FLAT:label_802
	xor	eax, eax
	mov	rdi, r14
	mov	rcx, rbx
	mov	r8, r9
	call	__fprintf_chk
.label_800:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_807
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
	mov	esi, OFFSET FLAT:label_803
	mov	edx, 5
	call	dcgettext
	mov	rdi, rax
	mov	rsi, r14
	call	fputs_unlocked
	cmp	r12, 9
	ja	.label_809
	jmp	qword ptr [word ptr [+ (r12 * 8) + label_810]]
.label_3014:
	add	rsp, 8
	jmp	.label_801
.label_809:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_816
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
	jmp	.label_801
.label_3015:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_804
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
.label_3016:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_798
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
.label_3017:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_814
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
.label_3018:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_811
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
	jmp	.label_801
.label_3019:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_806
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
	jmp	.label_801
.label_3020:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_812
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
	jmp	.label_801
.label_3021:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_815
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
	jmp	.label_801
.label_3023:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_799
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
	jmp	.label_801
.label_3022:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_805
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
.label_801:
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	ret	
	.section	.text
	.align	32
	#Procedure 0x40a668
	.globl sub_40a668
	.type sub_40a668, @function
sub_40a668:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40a670

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
	je	.label_817
	test	ecx, ecx
	cmove	rbx, qword ptr [rsp + 8]
	mov	rax, rbx
.label_817:
	add	rsp, 0x10
	pop	rbx
	ret	
	.section	.text
	.align	32
	#Procedure 0x40a69c
	.globl sub_40a69c
	.type sub_40a69c, @function
sub_40a69c:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x40a6a0
	.globl c_isascii
	.type c_isascii, @function
c_isascii:

	cmp	edi, 0x80
	setb	al
	ret	
	.section	.text
	.align	32
	#Procedure 0x40a6aa
	.globl sub_40a6aa
	.type sub_40a6aa, @function
sub_40a6aa:

	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40a6b0

	.globl update_cur_sifted_state
	.type update_cur_sifted_state, @function
update_cur_sifted_state:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x18
	mov	r13, rcx
	mov	r15, rdx
	mov	rbx, rdi
	mov	rbp, qword ptr [rbx + 0x98]
	mov	dword ptr [rsp + 0xc], 0
	mov	rax, qword ptr [rbx + 0xb8]
	mov	r14, qword ptr [rax + r15*8]
	lea	r12, [r14 + 8]
	test	r14, r14
	cmove	r12, r14
	cmp	qword ptr [r13 + 8], 0
	je	.label_819
	test	r14, r14
	mov	qword ptr [rsp + 0x10], rsi
	je	.label_820
	mov	rdi, rbp
	mov	rsi, r13
	mov	rdx, r12
	call	add_epsilon_src_nodes
	mov	rcx, qword ptr [rsp + 0x10]
	mov	dword ptr [rsp + 0xc], eax
	test	eax, eax
	jne	.label_818
	cmp	qword ptr [rcx + 0x28], 0
	je	.label_820
	lea	rcx, [rcx + 0x20]
	mov	r8, qword ptr [rbx + 0xd8]
	mov	rdi, rbp
	mov	rsi, r13
	mov	rdx, r12
	mov	r9, r15
	call	check_subexp_limits
	mov	dword ptr [rsp + 0xc], eax
	test	eax, eax
	jne	.label_818
.label_820:
	lea	rdi, [rsp + 0xc]
	mov	rsi, rbp
	mov	rdx, r13
	call	re_acquire_state
	mov	rsi, qword ptr [rsp + 0x10]
	mov	rcx, qword ptr [rsi]
	mov	qword ptr [rcx + r15*8], rax
	mov	eax, dword ptr [rsp + 0xc]
	test	eax, eax
	je	.label_821
	jmp	.label_818
.label_819:
	mov	rax, qword ptr [rsi]
	mov	qword ptr [rax + r15*8], 0
.label_821:
	test	r14, r14
	je	.label_822
	mov	rax, qword ptr [rbx + 0xb8]
	mov	rax, qword ptr [rax + r15*8]
	test	byte ptr [rax + 0x68], 0x40
	je	.label_822
	mov	rdi, rbx
	mov	rdx, r15
	mov	rcx, r12
	call	sift_states_bkref
	mov	dword ptr [rsp + 0xc], eax
	test	eax, eax
	jne	.label_818
.label_822:
	xor	eax, eax
.label_818:
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
	#Procedure 0x40a7b5
	.globl sub_40a7b5
	.type sub_40a7b5, @function
sub_40a7b5:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40a7c0

	.globl fwrite_uppcase
	.type fwrite_uppcase, @function
fwrite_uppcase:
	push	r15
	push	r14
	push	r12
	push	rbx
	push	rax
	mov	r14, rdx
	mov	rbx, rsi
	mov	r15, rdi
	test	r14, r14
	je	.label_823
	nop	word ptr cs:[rax + rax]
.label_824:
	movzx	r12d, byte ptr [rbx]
	call	__ctype_toupper_loc
	mov	rax, qword ptr [rax]
	mov	edi, dword ptr [rax + r12*4]
	mov	rsi, r15
	call	fputc
	inc	rbx
	dec	r14
	jne	.label_824
.label_823:
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	ret	
	.section	.text
	.align	32
	#Procedure 0x40a80c
	.globl sub_40a80c
	.type sub_40a80c, @function
sub_40a80c:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x40a810

	.globl exclude_patopts
	.type exclude_patopts, @function
exclude_patopts:
	push	rax
	mov	edx, dword ptr [rdi]
	add	rdi, 8
	test	edx, 0x8000000
	jne	.label_825
	mov	rdi, qword ptr [rdi]
	call	exclude_fnmatch
	pop	rcx
	ret	
.label_825:
	xor	edx, edx
	xor	ecx, ecx
	xor	r8d, r8d
	call	rpl_regexec
	test	eax, eax
	sete	al
	pop	rcx
	ret	
	.section	.text
	.align	32
	#Procedure 0x40a83c
	.globl sub_40a83c
	.type sub_40a83c, @function
sub_40a83c:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x40a840

	.globl check_halt_state_context
	.type check_halt_state_context, @function
check_halt_state_context:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	push	rax
	mov	r14, rsi
	mov	rbx, rdi
	mov	eax, dword ptr [rbx + 0xa0]
	mov	rsi, rdx
	mov	edx, eax
	call	re_string_context_at
	mov	r15d, eax
	xor	ebp, ebp
	cmp	qword ptr [r14 + 0x10], 0
	jle	.label_826
	mov	r12, qword ptr [rbx + 0x98]
	mov	r13, qword ptr [r14 + 0x18]
	xor	ebx, ebx
	nop	word ptr [rax + rax]
.label_827:
	mov	rbp, qword ptr [r13 + rbx*8]
	mov	rdi, r12
	mov	rsi, rbp
	mov	edx, r15d
	call	check_halt_node_context
	test	al, al
	jne	.label_826
	inc	rbx
	cmp	rbx, qword ptr [r14 + 0x10]
	mov	ebp, 0
	jl	.label_827
.label_826:
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
	.align	32
	#Procedure 0x40a8b7
	.globl sub_40a8b7
	.type sub_40a8b7, @function
sub_40a8b7:

	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40a8c0

	.globl re_node_set_add_intersect
	.type re_node_set_add_intersect, @function
re_node_set_add_intersect:
	push	r15
	push	r14
	push	r12
	push	rbx
	push	rax
	mov	r15, rdx
	mov	r12, rsi
	mov	r14, rdi
	mov	rdx, qword ptr [r12 + 8]
	xor	eax, eax
	test	rdx, rdx
	je	.label_828
	mov	rcx, qword ptr [r15 + 8]
	test	rcx, rcx
	je	.label_828
	add	rcx, rdx
	mov	rax, qword ptr [r14 + 8]
	add	rax, rcx
	mov	rbx, qword ptr [r14]
	cmp	rax, rbx
	jle	.label_840
	add	rbx, rcx
	mov	rdi, qword ptr [r14 + 0x10]
	lea	rsi, [rbx*8]
	call	realloc
	mov	rcx, rax
	mov	eax, 0xc
	test	rcx, rcx
	je	.label_828
	mov	qword ptr [r14 + 0x10], rcx
	mov	qword ptr [r14], rbx
.label_840:
	mov	rcx, qword ptr [r14 + 8]
	mov	rdx, qword ptr [r12 + 8]
	mov	rsi, qword ptr [r12 + 0x10]
	lea	r9, [rdx + rcx]
	mov	r10, qword ptr [r15 + 8]
	mov	r8, qword ptr [r15 + 0x10]
	add	r9, r10
	dec	rcx
.label_844:
	dec	rdx
	mov	rdi, r10
.label_830:
	lea	r10, [rdi - 1]
	mov	rbx, qword ptr [r8 + rdi*8 - 8]
	nop	dword ptr [rax + rax]
.label_839:
	cmp	qword ptr [rsi + rdx*8], rbx
	je	.label_835
	jl	.label_838
	test	rdx, rdx
	lea	rdx, [rdx - 1]
	jg	.label_839
	jmp	.label_833
	.section	.text
	.align	32
	#Procedure 0x40a976
	.globl sub_40a976
	.type sub_40a976, @function
sub_40a976:

	nop	word ptr cs:[rax + rax]
.label_838:
	cmp	rdi, 2
	mov	rdi, r10
	jge	.label_830
	jmp	.label_833
	.section	.text
	.align	32
	#Procedure 0x40a98b
	.globl sub_40a98b
	.type sub_40a98b, @function
sub_40a98b:

	nop	dword ptr [rax + rax]
.label_835:
	test	rcx, rcx
	js	.label_834
	mov	rbx, qword ptr [r14 + 0x10]
	mov	rax, qword ptr [r12 + 0x10]
	mov	rax, qword ptr [rax + rdx*8]
	nop	word ptr cs:[rax + rax]
.label_842:
	cmp	qword ptr [rbx + rcx*8], rax
	jle	.label_841
	test	rcx, rcx
	lea	rcx, [rcx - 1]
	jg	.label_842
	jmp	.label_834
.label_841:
	mov	rax, qword ptr [r14 + 0x10]
	mov	rax, qword ptr [rax + rcx*8]
	mov	rbx, qword ptr [r12 + 0x10]
	cmp	rax, qword ptr [rbx + rdx*8]
	je	.label_831
	nop	word ptr cs:[rax + rax]
.label_834:
	mov	rax, qword ptr [r12 + 0x10]
	mov	rax, qword ptr [rax + rdx*8]
	mov	rbx, qword ptr [r14 + 0x10]
	mov	qword ptr [rbx + r9*8 - 8], rax
	dec	r9
.label_831:
	test	rdx, rdx
	jle	.label_833
	cmp	rdi, 2
	jge	.label_844
.label_833:
	mov	rax, qword ptr [r14 + 8]
	mov	rcx, qword ptr [r15 + 8]
	mov	rdx, qword ptr [r12 + 8]
	add	rdx, rax
	lea	r10, [rcx + rdx - 1]
	mov	rcx, r10
	sub	rcx, r9
	lea	r8, [rcx + 1]
	lea	rdx, [rcx + rax + 1]
	mov	qword ptr [r14 + 8], rdx
	test	rax, rax
	jle	.label_829
	test	rcx, rcx
	js	.label_829
	dec	rax
	mov	rdi, qword ptr [r14 + 0x10]
	xor	edx, edx
.label_832:
	lea	rcx, [rax + r8]
	lea	rbx, [rdi + rcx*8]
	nop	word ptr [rax + rax]
.label_836:
	mov	rcx, qword ptr [rdi + r10*8]
	mov	rsi, qword ptr [rdi + rax*8]
	cmp	rcx, rsi
	jg	.label_843
	mov	qword ptr [rbx], rsi
	add	rbx, -8
	test	rax, rax
	lea	rax, [rax - 1]
	jg	.label_836
	jmp	.label_829
	.section	.text
	.align	32
	#Procedure 0x40aa6f
	.globl sub_40aa6f
	.type sub_40aa6f, @function
sub_40aa6f:

	nop	
.label_843:
	dec	r10
	dec	r8
	mov	qword ptr [rbx], rcx
	jne	.label_832
	jmp	.label_837
.label_829:
	mov	rdx, r8
.label_837:
	mov	rdi, qword ptr [r14 + 0x10]
	lea	rsi, [rdi + r9*8]
	shl	rdx, 3
	call	memcpy
	xor	eax, eax
.label_828:
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	ret	
	.section	.text
	.align	32
	#Procedure 0x40aa9f
	.globl sub_40aa9f
	.type sub_40aa9f, @function
sub_40aa9f:

	nop	
.label_847:
	inc	rax
.label_848:
	add	rax, qword ptr [rdi + 0x28]
	mov	rcx, qword ptr [rdi]
	mov	al, byte ptr [rcx + rax]
	test	al, al
	jns	.label_846
	mov	cl, byte ptr [rdi + 0x8c]
	test	cl, cl
	jne	.label_845
	jmp	.label_846
	.section	.text
	.align	32
	#Procedure 0x40aabd
	.globl sub_40aabd
	.type sub_40aabd, @function
sub_40aabd:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40aac9

	.globl re_string_peek_byte_case
	.type re_string_peek_byte_case, @function
re_string_peek_byte_case:
	cmp	byte ptr [rdi + 0x8b], 0
	jne	.label_850
.label_845:
	mov	rax, qword ptr [rdi + 8]
	mov	rcx, qword ptr [rdi + 0x48]
	mov	al, byte ptr [rax + rcx + 1]
.label_846:
	ret	
.label_850:
	cmp	dword ptr [rdi + 0x90], 2
	jl	.label_849
	mov	rax, qword ptr [rdi + 0x10]
	mov	rcx, qword ptr [rdi + 0x48]
	cmp	dword ptr [rax + rcx*4 + 4], -1
	je	.label_845
	lea	rdx, [rcx + 2]
	cmp	qword ptr [rdi + 0x30], rdx
	je	.label_849
	cmp	dword ptr [rax + rcx*4 + 8], -1
	je	.label_845
.label_849:
	mov	rax, qword ptr [rdi + 0x48]
	cmp	byte ptr [rdi + 0x8c], 0
	je	.label_847
	mov	rcx, qword ptr [rdi + 0x18]
	mov	rax, qword ptr [rcx + rax*8 + 8]
	jmp	.label_848
	.section	.text
	.align	32
	#Procedure 0x40ab20

	.globl check_node_accept
	.type check_node_accept, @function
check_node_accept:
	push	rbp
	push	r15
	push	r14
	push	rbx
	push	rax
	mov	r14, rdx
	mov	rbx, rsi
	mov	r15, rdi
	mov	rax, qword ptr [r15 + 8]
	movzx	esi, byte ptr [rax + r14]
	mov	cl, byte ptr [rbx + 8]
	xor	eax, eax
	dec	cl
	movzx	ecx, cl
	cmp	cl, 6
	ja	.label_855
	jmp	qword ptr [word ptr [+ (rcx * 8) + label_854]]
.label_3132:
	cmp	byte ptr [rbx], sil
	je	.label_851
	xor	eax, eax
	jmp	.label_855
.label_3133:
	mov	rdi, qword ptr [rbx]
	call	bitset_contain
	test	al, al
	jne	.label_851
	xor	eax, eax
	jmp	.label_855
.label_3135:
	test	sil, sil
	js	.label_859
.label_3134:
	test	sil, sil
	je	.label_852
	cmp	sil, 0xa
	jne	.label_851
	mov	rax, qword ptr [r15 + 0x98]
	test	byte ptr [rax + 0xd8], 0x40
	jne	.label_851
	xor	eax, eax
	jmp	.label_855
.label_852:
	mov	rax, qword ptr [r15 + 0x98]
	cmp	byte ptr [rax + 0xd8], 0
	js	.label_856
.label_851:
	mov	ecx, dword ptr [rbx + 8]
	mov	ebx, ecx
	shr	ebx, 8
	mov	al, 1
	test	bx, 0x3ff
	je	.label_855
	mov	ebp, ecx
	mov	edx, dword ptr [r15 + 0xa0]
	mov	rdi, r15
	mov	rsi, r14
	call	re_string_context_at
	mov	ecx, eax
	and	ecx, 1
	test	bl, 4
	je	.label_853
	test	ecx, ecx
	jne	.label_853
	xor	eax, eax
	jmp	.label_855
.label_853:
	mov	edx, ebp
	test	dh, 8
	je	.label_857
	test	ecx, ecx
	je	.label_857
.label_859:
	xor	eax, eax
	jmp	.label_855
.label_857:
	test	dh, 0x20
	je	.label_858
	mov	ecx, eax
	and	ecx, 2
	jne	.label_858
.label_856:
	xor	eax, eax
	jmp	.label_855
.label_858:
	and	eax, 8
	test	bl, bl
	setns	cl
	shr	eax, 3
	or	al, cl
.label_855:
	add	rsp, 8
	pop	rbx
	pop	r14
	pop	r15
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40ac14
	.globl sub_40ac14
	.type sub_40ac14, @function
sub_40ac14:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40ac20

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
	mov	r12d, edx
	mov	rbp, rsi
	mov	r14, rdi
	mov	r15, qword ptr [rbp]
	mov	al, 1
	cmp	r15, qword ptr [rbp + 8]
	jae	.label_860
	mov	qword ptr [rsp], rbp
	nop	dword ptr [rax + rax]
.label_866:
	cmp	qword ptr [r15], 0
	je	.label_862
	mov	rbx, qword ptr [r15 + 8]
	test	rbx, rbx
	je	.label_864
	nop	word ptr cs:[rax + rax]
.label_868:
	mov	r13, qword ptr [rbx]
	mov	rdi, r14
	mov	rsi, r13
	call	safe_hasher
	mov	rbp, qword ptr [rbx + 8]
	cmp	qword ptr [rax], 0
	je	.label_869
	mov	rcx, qword ptr [rax + 8]
	mov	qword ptr [rbx + 8], rcx
	mov	qword ptr [rax + 8], rbx
	jmp	.label_861
	.section	.text
	.align	32
	#Procedure 0x40ac96
	.globl sub_40ac96
	.type sub_40ac96, @function
sub_40ac96:

	nop	word ptr cs:[rax + rax]
.label_869:
	mov	qword ptr [rax], r13
	inc	qword ptr [r14 + 0x18]
	mov	rdi, r14
	mov	rsi, rbx
	call	free_entry
.label_861:
	test	rbp, rbp
	mov	rbx, rbp
	jne	.label_868
.label_864:
	mov	r13, qword ptr [r15]
	mov	qword ptr [r15 + 8], 0
	test	r12b, r12b
	mov	rbp, qword ptr [rsp]
	jne	.label_862
	mov	rdi, r14
	mov	rsi, r13
	call	safe_hasher
	mov	rbx, rax
	cmp	qword ptr [rbx], 0
	je	.label_863
	mov	rdi, r14
	call	allocate_entry
	test	rax, rax
	je	.label_867
	mov	qword ptr [rax], r13
	mov	rcx, qword ptr [rbx + 8]
	mov	qword ptr [rax + 8], rcx
	mov	qword ptr [rbx + 8], rax
	jmp	.label_865
.label_867:
	xor	eax, eax
	jmp	.label_860
	.section	.text
	.align	32
	#Procedure 0x40ad04
	.globl sub_40ad04
	.type sub_40ad04, @function
sub_40ad04:

	nop	word ptr cs:[rax + rax]
.label_863:
	mov	qword ptr [rbx], r13
	inc	qword ptr [r14 + 0x18]
.label_865:
	mov	qword ptr [r15], 0
	dec	qword ptr [rbp + 0x18]
.label_862:
	add	r15, 0x10
	cmp	r15, qword ptr [rbp + 8]
	jb	.label_866
	mov	al, 1
.label_860:
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
	#Procedure 0x40ad40

	.globl parse_byte
	.type parse_byte, @function
parse_byte:
	test	rsi, rsi
	je	.label_870
	jmp	btowc
.label_870:
	mov	eax, edi
	ret	
	.section	.text
	.align	32
	#Procedure 0x40ad4d
	.globl sub_40ad4d
	.type sub_40ad4d, @function
sub_40ad4d:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x40ad50

	.globl get_subexp
	.type get_subexp, @function
get_subexp:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x58
	mov	qword ptr [rsp + 0x30], rsi
	mov	rbx, rdi
	mov	rax, qword ptr [rbx + 8]
	mov	qword ptr [rsp + 0x28], rax
	mov	rax, qword ptr [rbx + 0x98]
	mov	qword ptr [rsp + 0x38], rax
	mov	qword ptr [rsp + 0x20], rdx
	mov	rsi, rdx
	call	search_cur_bkref_entry
	mov	r8, rbx
	cmp	rax, -1
	je	.label_875
	lea	rax, [rax + rax*4]
	shl	rax, 3
	add	rax, qword ptr [r8 + 0xd8]
.label_892:
	mov	dword ptr [rsp + 0xc], 0
	mov	rcx, qword ptr [rsp + 0x30]
	cmp	qword ptr [rax], rcx
	je	.label_893
	cmp	byte ptr [rax + 0x20], 0
	lea	rax, [rax + 0x28]
	jne	.label_892
.label_875:
	mov	dword ptr [rsp + 0xc], 0
	cmp	qword ptr [r8 + 0xe8], 0
	jle	.label_893
	mov	rax, qword ptr [rsp + 0x38]
	mov	rax, qword ptr [rax]
	mov	rcx, qword ptr [rsp + 0x30]
	shl	rcx, 4
	mov	rax, qword ptr [rax + rcx]
	mov	qword ptr [rsp + 0x50], rax
	xor	eax, eax
	xor	ecx, ecx
	mov	qword ptr [rsp + 0x40], rcx
	mov	qword ptr [rsp + 0x18], r8
	nop	
.label_886:
	mov	rcx, qword ptr [r8 + 0xf8]
	mov	rdx, qword ptr [rsp + 0x40]
	mov	rbp, qword ptr [rcx + rdx*8]
	mov	rcx, qword ptr [rbp + 8]
	mov	rdx, qword ptr [rsp + 0x38]
	mov	rdx, qword ptr [rdx]
	shl	rcx, 4
	mov	rsi, qword ptr [rsp + 0x50]
	cmp	qword ptr [rdx + rcx], rsi
	jne	.label_906
	mov	r13, qword ptr [rbp]
	cmp	qword ptr [rbp + 0x20], 0
	mov	qword ptr [rsp + 0x10], rbp
	jle	.label_890
	mov	dword ptr [rsp + 0xc], eax
	mov	rdx, qword ptr [rsp + 0x20]
	xor	r15d, r15d
	jmp	.label_874
	.section	.text
	.align	32
	#Procedure 0x40ae4c
	.globl sub_40ae4c
	.type sub_40ae4c, @function
sub_40ae4c:

	nop	dword ptr [rax]
.label_906:
	mov	dword ptr [rsp + 0xc], eax
	jmp	.label_872
.label_890:
	xor	r15d, r15d
	mov	rdx, qword ptr [rsp + 0x20]
	mov	dword ptr [rsp + 0xc], eax
	jmp	.label_881
.label_901:
	mov	edi, 7
	cmp	rsi, qword ptr [r8 + 0x58]
	jle	.label_902
	mov	rbp, qword ptr [rsp + 0x10]
	jmp	.label_885
.label_902:
	mov	qword ptr [rsp + 0x48], rdx
	mov	rdi, r8
	mov	rbx, rdi
	call	clean_state_log_if_needed
	test	eax, eax
	jne	.label_878
	mov	rax, qword ptr [rbx + 8]
	mov	qword ptr [rsp + 0x28], rax
	mov	rdx, qword ptr [rsp + 0x48]
	jmp	.label_880
.label_903:
	mov	edi, 1
	mov	r13, r12
	mov	dword ptr [rsp + 0xc], eax
	jmp	.label_887
.label_878:
	mov	edi, 1
	mov	dword ptr [rsp + 0xc], eax
	mov	r8, rbx
	mov	rbp, qword ptr [rsp + 0x10]
	mov	rdx, qword ptr [rsp + 0x48]
	jmp	.label_885
	.section	.text
	.align	32
	#Procedure 0x40aecf
	.globl sub_40aecf
	.type sub_40aecf, @function
sub_40aecf:

	nop	
.label_874:
	mov	rax, qword ptr [rbp + 0x28]
	mov	r14, qword ptr [rax + r15*8]
	mov	r12, qword ptr [r14 + 8]
	mov	rbp, r12
	sub	rbp, r13
	jle	.label_877
	lea	rsi, [rbp + rdx]
	cmp	rsi, qword ptr [r8 + 0x30]
	jg	.label_901
.label_880:
	mov	rax, qword ptr [rsp + 0x28]
	lea	rdi, [rax + rdx]
	lea	rsi, [rax + r13]
	mov	rbx, rdx
	mov	rdx, rbp
	call	memcmp
	mov	rdx, rbx
	mov	edi, 7
	test	eax, eax
	mov	r8, qword ptr [rsp + 0x18]
	je	.label_877
	mov	rbp, qword ptr [rsp + 0x10]
	jmp	.label_885
	.section	.text
	.align	32
	#Procedure 0x40af23
	.globl sub_40af23
	.type sub_40af23, @function
sub_40af23:

	nop	word ptr cs:[rax + rax]
.label_877:
	add	rdx, rbp
	mov	rbx, rdx
	mov	rdi, qword ptr [rsp + 0x18]
	mov	rbp, qword ptr [rsp + 0x10]
	mov	rsi, rbp
	mov	rdx, r14
	mov	rcx, qword ptr [rsp + 0x30]
	mov	r8, qword ptr [rsp + 0x20]
	call	get_subexp_sub
	mov	r8, qword ptr [rsp + 0x18]
	mov	rcx, qword ptr [r8 + 8]
	mov	qword ptr [rsp + 0x28], rcx
	mov	edi, 9
	cmp	eax, 1
	je	.label_898
	test	eax, eax
	jne	.label_903
	xor	edi, edi
.label_898:
	mov	r13, r12
.label_887:
	mov	rdx, rbx
.label_885:
	mov	eax, edi
	and	al, 0xf
	je	.label_908
	cmp	al, 9
	jne	.label_873
.label_908:
	inc	r15
	cmp	r15, qword ptr [rbp + 0x20]
	jl	.label_874
	jmp	.label_881
.label_873:
	cmp	al, 7
	jne	.label_882
	nop	
.label_881:
	cmp	r15, qword ptr [rbp + 0x20]
	jl	.label_872
	xor	eax, eax
	test	r15, r15
	setg	al
	add	r13, rax
	cmp	r13, qword ptr [rsp + 0x20]
	jle	.label_889
	jmp	.label_872
.label_879:
	test	eax, eax
	jne	.label_896
	mov	r14, qword ptr [rsp + 0x10]
	mov	rdi, r14
	mov	rsi, r15
	mov	rdx, r13
	call	match_ctx_add_sublast
	mov	edi, 1
	test	rax, rax
	je	.label_900
	mov	rbp, qword ptr [rsp + 0x18]
	mov	rdi, rbp
	mov	rsi, r14
	mov	rdx, rax
	mov	rcx, qword ptr [rsp + 0x30]
	mov	r8, qword ptr [rsp + 0x20]
	call	get_subexp_sub
	mov	r8, rbp
	mov	rcx, qword ptr [r8 + 8]
	mov	qword ptr [rsp + 0x28], rcx
	cmp	eax, 1
	jne	.label_894
	mov	edi, 0xc
.label_884:
	mov	rbp, qword ptr [rsp + 0x10]
	mov	rdx, r12
	jmp	.label_871
.label_894:
	test	eax, eax
	mov	rdx, r12
	jne	.label_891
	xor	edi, edi
	mov	rbp, qword ptr [rsp + 0x10]
	jmp	.label_871
.label_876:
	mov	dword ptr [rsp + 0xc], 0xc
	mov	edi, 1
	mov	r8, qword ptr [rsp + 0x18]
	mov	rdx, r12
	jmp	.label_871
.label_905:
	mov	edi, 0xa
	cmp	rdx, qword ptr [r8 + 0x58]
	jge	.label_871
	mov	rbx, rdx
	lea	esi, [rdx + 1]
	mov	rbp, r8
	mov	rdi, rbp
	call	extend_buffers
	test	eax, eax
	jne	.label_907
	mov	rax, qword ptr [rbp + 8]
	mov	qword ptr [rsp + 0x28], rax
	mov	r8, rbp
	mov	rbp, qword ptr [rsp + 0x10]
	mov	rdx, rbx
	jmp	.label_888
.label_896:
	mov	edi, 1
	mov	dword ptr [rsp + 0xc], eax
	mov	r8, qword ptr [rsp + 0x18]
	jmp	.label_884
.label_900:
	mov	dword ptr [rsp + 0xc], 0xc
	mov	r8, qword ptr [rsp + 0x18]
	mov	rbp, r14
	mov	rdx, r12
	jmp	.label_871
.label_891:
	mov	dword ptr [rsp + 0xc], eax
	mov	rbp, qword ptr [rsp + 0x10]
	mov	edi, 1
	jmp	.label_871
.label_907:
	mov	edi, 1
	mov	dword ptr [rsp + 0xc], eax
	mov	r8, rbp
	mov	rbp, qword ptr [rsp + 0x10]
	mov	rdx, rbx
	jmp	.label_871
.label_889:
	cmp	r13, qword ptr [rbp]
	jle	.label_904
	cmp	rdx, qword ptr [r8 + 0x30]
	jge	.label_905
.label_888:
	mov	rcx, qword ptr [rsp + 0x28]
	movzx	eax, byte ptr [rcx + rdx]
	inc	rdx
	mov	edi, 0xa
	cmp	al, byte ptr [rcx + r13 - 1]
	jne	.label_871
.label_904:
	mov	rax, qword ptr [r8 + 0xb8]
	mov	rsi, qword ptr [rax + r13*8]
	mov	edi, 0xc
	test	rsi, rsi
	je	.label_871
	mov	r12, rdx
	add	rsi, 8
	mov	ecx, 9
	mov	rdi, qword ptr [rsp + 0x38]
	mov	rdx, qword ptr [rsp + 0x50]
	call	find_subexp_node
	mov	r15, rax
	cmp	r15, -1
	je	.label_899
	mov	rbp, qword ptr [rsp + 0x10]
	cmp	qword ptr [rbp + 0x10], 0
	jne	.label_883
	mov	rsi, r13
	sub	rsi, qword ptr [rbp]
	inc	rsi
	mov	edi, 0x18
	call	rpl_calloc
	mov	qword ptr [rbp + 0x10], rax
	test	rax, rax
	je	.label_876
.label_883:
	mov	rsi, qword ptr [rbp + 0x10]
	mov	rcx, qword ptr [rbp]
	mov	rdx, qword ptr [rbp + 8]
	mov	dword ptr [rsp], 9
	mov	rdi, qword ptr [rsp + 0x18]
	mov	r8, r15
	mov	r9, r13
	call	check_arrival
	cmp	eax, 1
	jne	.label_879
.label_899:
	mov	r8, qword ptr [rsp + 0x18]
	mov	rbp, qword ptr [rsp + 0x10]
	mov	rdx, r12
	mov	edi, 0xc
.label_871:
	mov	eax, edi
	and	al, 0xf
	je	.label_895
	cmp	al, 0xc
	jne	.label_897
.label_895:
	cmp	r13, qword ptr [rsp + 0x20]
	lea	r13, [r13 + 1]
	jl	.label_889
	jmp	.label_872
.label_897:
	cmp	al, 0xa
	je	.label_872
.label_882:
	cmp	edi, 6
	je	.label_872
	test	edi, edi
	jne	.label_893
	nop	dword ptr [rax]
.label_872:
	mov	rax, qword ptr [rsp + 0x40]
	mov	rcx, rax
	inc	rcx
	mov	rax, rcx
	mov	qword ptr [rsp + 0x40], rax
	cmp	rcx, qword ptr [r8 + 0xe8]
	mov	eax, dword ptr [rsp + 0xc]
	mov	dword ptr [rsp + 0xc], 0
	jl	.label_886
.label_893:
	mov	eax, dword ptr [rsp + 0xc]
	add	rsp, 0x58
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40b22f
	.globl sub_40b22f
	.type sub_40b22f, @function
sub_40b22f:

	nop	
	.section	.text
	.align	32
	#Procedure 0x40b230

	.globl find_recover_state
	.type find_recover_state, @function
find_recover_state:
	push	r14
	push	rbx
	push	rax
	mov	rbx, rsi
	mov	r14, rdi
.label_910:
	mov	rcx, qword ptr [rbx + 0x48]
	mov	rdx, qword ptr [rbx + 0xc0]
	nop	word ptr cs:[rax + rax]
.label_911:
	cmp	rcx, rdx
	mov	eax, 0
	jge	.label_909
	inc	qword ptr [rbx + 0x48]
	mov	rax, qword ptr [rbx + 0xb8]
	cmp	qword ptr [rax + rcx*8 + 8], 0
	lea	rcx, [rcx + 1]
	je	.label_911
	xor	edx, edx
	mov	rdi, r14
	mov	rsi, rbx
	call	merge_state_with_log
	test	rax, rax
	jne	.label_909
	mov	ecx, dword ptr [r14]
	test	ecx, ecx
	je	.label_910
.label_909:
	add	rsp, 8
	pop	rbx
	pop	r14
	ret	
	.section	.text
	.align	32
	#Procedure 0x40b292
	.globl sub_40b292
	.type sub_40b292, @function
sub_40b292:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40b2a0

	.globl re_search_2_stub
	.type re_search_2_stub, @function
re_search_2_stub:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x28
	mov	rbx, r8
	mov	r15, rcx
	mov	r14, rdx
	mov	r13, rsi
	mov	rbp, qword ptr [rsp + 0x70]
	mov	rax, rbx
	or	rax, r14
	or	rax, rbp
	js	.label_912
	movabs	rax, 0x7fffffffffffffff
	test	rbx, rbx
	js	.label_915
	sub	rax, rbx
	cmp	rax, r14
	jl	.label_912
	lea	rdx, [rbx + r14]
	xor	r12d, r12d
	test	rbx, rbx
	jle	.label_914
	xor	r12d, r12d
	test	r14, r14
	jle	.label_916
	mov	qword ptr [rsp + 0x18], rdi
	mov	qword ptr [rsp + 0x10], rdx
	mov	rdi, rdx
	mov	qword ptr [rsp + 0x20], r9
	call	malloc
	mov	r12, rax
	test	r12, r12
	je	.label_912
	mov	rdi, r12
	mov	rsi, r13
	mov	rdx, r14
	call	memcpy
	mov	rdi, r12
	add	rdi, r14
	mov	rsi, r15
	mov	rdx, rbx
	call	memcpy
	mov	rdi, qword ptr [rsp + 0x18]
	mov	r9, qword ptr [rsp + 0x20]
	mov	r13, r12
	mov	rdx, qword ptr [rsp + 0x10]
	jmp	.label_914
.label_917:
	add	rbx, r14
	xor	r12d, r12d
	mov	rdx, rbx
	jmp	.label_914
.label_915:
	inc	rax
	sub	rax, rbx
	cmp	rax, r14
	jle	.label_917
.label_912:
	mov	rax, -2
	jmp	.label_913
.label_916:
	mov	r13, r15
.label_914:
	mov	rax, qword ptr [rsp + 0x68]
	mov	r8, qword ptr [rsp + 0x60]
	movzx	ecx, byte ptr [rsp + 0x78]
	mov	dword ptr [rsp + 8], ecx
	mov	qword ptr [rsp], rax
	mov	rsi, r13
	mov	rcx, r9
	mov	r9, rbp
	call	re_search_stub
	mov	rbx, rax
	mov	rdi, r12
	call	free
	mov	rax, rbx
.label_913:
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
	#Procedure 0x40b3af
	.globl sub_40b3af
	.type sub_40b3af, @function
sub_40b3af:

	nop	
	.section	.text
	.align	32
	#Procedure 0x40b3b0

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
	mov	r14, rdi
	test	rbx, rbx
	je	.label_926
	movzx	edx, byte ptr [rbx]
	mov	ecx, 0x2e
	mov	eax, 0x2e
	sub	eax, edx
	jne	.label_925
	movzx	eax, byte ptr [rbx + 1]
	sub	ecx, eax
	mov	eax, ecx
	jne	.label_925
	movzx	eax, byte ptr [rbx + 2]
	neg	eax
.label_925:
	test	eax, eax
	sete	r15b
	jmp	.label_927
.label_926:
	xor	r15d, r15d
.label_927:
	mov	eax, dword ptr [r14 + 0x48]
	test	al, 4
	jne	.label_929
	test	r13d, r13d
	mov	qword ptr [rsp], rsi
	jns	.label_919
	mov	ecx, r15d
	xor	cl, 1
	jne	.label_919
	and	eax, 0x200
	je	.label_919
	lea	rbp, [r14 + 0x60]
	mov	rdi, rbp
	call	i_ring_empty
	test	al, al
	jne	.label_919
	mov	rdi, rbp
	call	i_ring_pop
	xor	ecx, ecx
	test	eax, eax
	cmovns	rbx, rcx
	cmovns	r13d, eax
	mov	r15b, 1
.label_919:
	test	r13d, r13d
	mov	r12d, r13d
	jns	.label_921
	mov	rdi, r14
	mov	rsi, rbx
	call	diropen
	mov	r12d, eax
	mov	ebp, 0xffffffff
	test	r12d, r12d
	js	.label_918
.label_921:
	test	byte ptr [r14 + 0x48], 2
	jne	.label_930
	test	rbx, rbx
	je	.label_922
	cmp	byte ptr [rbx], 0x2e
	jne	.label_922
	cmp	byte ptr [rbx + 1], 0x2e
	jne	.label_922
	cmp	byte ptr [rbx + 2], 0
	jne	.label_922
.label_930:
	lea	rsi, [rsp + 8]
	mov	edi, r12d
	call	fstat
	test	eax, eax
	jne	.label_924
	mov	rcx, qword ptr [rsp]
	mov	rax, qword ptr [rcx + 0x78]
	cmp	rax, qword ptr [rsp + 8]
	jne	.label_923
	mov	rax, qword ptr [rcx + 0x80]
	cmp	rax, qword ptr [rsp + 0x10]
	jne	.label_923
.label_922:
	test	byte ptr [r14 + 0x49], 2
	jne	.label_928
	mov	edi, r12d
	call	fchdir
	mov	ebp, eax
	jmp	.label_920
.label_929:
	xor	ebp, ebp
	test	r13d, r13d
	js	.label_918
	and	eax, 0x200
	je	.label_918
	mov	edi, r13d
	call	close
	jmp	.label_918
.label_928:
	xor	edx, edx
	test	r15b, r15b
	sete	dl
	mov	rdi, r14
	mov	esi, r12d
	call	cwd_advance_fd
	xor	ebp, ebp
	jmp	.label_918
.label_923:
	call	__errno_location
	mov	dword ptr [rax], 2
.label_924:
	mov	ebp, 0xffffffff
.label_920:
	test	r13d, r13d
	jns	.label_918
	call	__errno_location
	mov	rbx, rax
	mov	r14d, dword ptr [rbx]
	mov	edi, r12d
	call	close
	mov	dword ptr [rbx], r14d
.label_918:
	mov	eax, ebp
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
	#Procedure 0x40b536
	.globl sub_40b536
	.type sub_40b536, @function
sub_40b536:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40b540

	.globl di_set_lookup
	.type di_set_lookup, @function
di_set_lookup:
	push	rbp
	push	r15
	push	r14
	push	rbx
	push	rax
	mov	r15, rdx
	mov	rbx, rdi
	call	map_device
	mov	r14, rax
	mov	ebp, 0xffffffff
	test	r14, r14
	je	.label_931
	mov	rdi, rbx
	mov	rsi, r15
	call	map_inode_number
	cmp	rax, -1
	je	.label_931
	mov	rdi, r14
	mov	rsi, rax
	call	hash_lookup
	xor	ebp, ebp
	test	rax, rax
	setne	bpl
.label_931:
	mov	eax, ebp
	add	rsp, 8
	pop	rbx
	pop	r14
	pop	r15
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40b591
	.globl sub_40b591
	.type sub_40b591, @function
sub_40b591:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40b5a0
	.globl quotearg_free
	.type quotearg_free, @function
quotearg_free:

	push	r15
	push	r14
	push	rbx
	mov	r14,  qword ptr [word ptr [rip + slotvec]]
	cmp	dword ptr [dword ptr [rip + nslots]],  2
	jl	.label_932
	lea	r15, [r14 + 0x18]
	mov	ebx, 1
	nop	
.label_935:
	mov	rdi, qword ptr [r15]
	call	free
	inc	rbx
	movsxd	rax,  dword ptr [dword ptr [rip + nslots]]
	add	r15, 0x10
	cmp	rbx, rax
	jl	.label_935
.label_932:
	mov	rdi, qword ptr [r14 + 8]
	mov	eax, OFFSET FLAT:slot0
	cmp	rdi, rax
	je	.label_936
	call	free
	mov	qword ptr [word ptr [rip + slotvec0]],  0x100
	mov	qword ptr [word ptr [rip + label_933]], OFFSET FLAT:slot0
.label_936:
	mov	eax, OFFSET FLAT:slotvec0
	cmp	r14, rax
	je	.label_934
	mov	rdi, r14
	call	free
	mov	qword ptr [word ptr [rip + slotvec]], OFFSET FLAT:slotvec0
.label_934:
	mov	dword ptr [dword ptr [rip + nslots]],  1
	pop	rbx
	pop	r14
	pop	r15
	ret	
	.section	.text
	.align	32
	#Procedure 0x40b631
	.globl sub_40b631
	.type sub_40b631, @function
sub_40b631:

	nop	word ptr cs:[rax + rax]
.label_938:
	mov	rdi, qword ptr [rbp + 0x58]
	lea	rsi, [r14 + 0x78]
	call	cycle_check
	mov	bpl, 1
	test	al, al
	je	.label_937
	mov	qword ptr [r14], r14
.label_940:
	mov	word ptr [r14 + 0x70], 2
	jmp	.label_937
	.section	.text
	.align	32
	#Procedure 0x40b660

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
	je	.label_938
	mov	edi, 0x18
	call	malloc
	mov	rbx, rax
	test	rbx, rbx
	je	.label_939
	mov	rax, qword ptr [r14 + 0x78]
	mov	qword ptr [rbx], rax
	mov	rax, qword ptr [r14 + 0x80]
	mov	qword ptr [rbx + 8], rax
	mov	qword ptr [rbx + 0x10], r14
	mov	rdi, qword ptr [rbp + 0x58]
	mov	rsi, rbx
	call	hash_insert
	mov	r15, rax
	mov	bpl, 1
	cmp	r15, rbx
	je	.label_937
	mov	rdi, rbx
	call	free
	test	r15, r15
	je	.label_939
	mov	rax, qword ptr [r15 + 0x10]
	mov	qword ptr [r14], rax
	jmp	.label_940
.label_939:
	xor	ebp, ebp
.label_937:
	mov	eax, ebp
	add	rsp, 8
	pop	rbx
	pop	r14
	pop	r15
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40b6db
	.globl sub_40b6db
	.type sub_40b6db, @function
sub_40b6db:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40b6e0

	.globl create_cd_newstate
	.type create_cd_newstate, @function
create_cd_newstate:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x38
	mov	qword ptr [rsp + 0x28], rcx
	mov	r14d, edx
	mov	rbp, rsi
	mov	qword ptr [rsp + 0x18], rdi
	mov	edi, 0x70
	mov	esi, 1
	call	rpl_calloc
	mov	r15, rax
	xor	eax, eax
	mov	qword ptr [rsp + 8], rax
	test	r15, r15
	je	.label_945
	mov	rbx, r15
	add	rbx, 8
	mov	rdi, rbx
	mov	rsi, rbp
	call	re_node_set_init_copy
	test	eax, eax
	jne	.label_953
	mov	al, byte ptr [r15 + 0x68]
	mov	ecx, r14d
	and	cl, 0xf
	and	al, 0xf0
	or	al, cl
	mov	byte ptr [r15 + 0x68], al
	mov	qword ptr [rsp + 0x30], rbx
	mov	qword ptr [r15 + 0x50], rbx
	cmp	qword ptr [rbp + 8], 0
	mov	rdi, qword ptr [rsp + 0x18]
	jle	.label_955
	mov	ebx, r14d
	mov	eax, ebx
	and	eax, 1
	mov	dword ptr [rsp + 0x14], eax
	mov	eax, ebx
	and	eax, 2
	mov	dword ptr [rsp + 0x24], eax
	and	ebx, 4
	mov	dword ptr [rsp + 0x20], ebx
	xor	eax, eax
	mov	qword ptr [rsp + 8], rax
	xor	r14d, r14d
	xor	r12d, r12d
	nop	
.label_947:
	mov	rax, qword ptr [rdi]
	mov	rcx, qword ptr [rbp + 0x10]
	mov	rcx, qword ptr [rcx + r14*8]
	shl	rcx, 4
	mov	ecx, dword ptr [rax + rcx + 8]
	mov	r13d, ecx
	shr	r13d, 8
	mov	eax, r13d
	and	eax, 0x3ff
	cmp	cl, 1
	jne	.label_950
	test	eax, eax
	je	.label_954
.label_950:
	mov	esi, ecx
	shr	esi, 0x14
	movzx	ebx, byte ptr [r15 + 0x68]
	mov	edx, ebx
	shr	dl, 5
	movzx	edx, dl
	or	edx, esi
	shl	dl, 5
	and	dl, 0x20
	and	bl, 0xdf
	or	bl, dl
	mov	byte ptr [r15 + 0x68], bl
	cmp	cl, 4
	je	.label_957
	cmp	cl, 2
	jne	.label_951
	or	bl, 0x10
	jmp	.label_952
.label_957:
	or	bl, 0x40
.label_952:
	mov	byte ptr [r15 + 0x68], bl
.label_951:
	test	eax, eax
	je	.label_954
	mov	rbx, qword ptr [rsp + 0x30]
	cmp	qword ptr [r15 + 0x50], rbx
	jne	.label_941
	mov	edi, 0x18
	call	malloc
	mov	qword ptr [r15 + 0x50], rax
	test	rax, rax
	je	.label_946
	mov	rdi, rax
	mov	rsi, rbp
	call	re_node_set_init_copy
	test	eax, eax
	jne	.label_945
	or	byte ptr [r15 + 0x68], 0x80
	xor	r12d, r12d
.label_941:
	cmp	dword ptr [rsp + 0x14], 0
	jne	.label_956
	mov	eax, r13d
	and	eax, 1
	jne	.label_942
.label_956:
	cmp	dword ptr [rsp + 0x14], 0
	je	.label_944
	mov	eax, r13d
	and	eax, 2
	jne	.label_942
.label_944:
	cmp	dword ptr [rsp + 0x24], 0
	jne	.label_949
	mov	eax, r13d
	and	eax, 0x10
	jne	.label_942
.label_949:
	cmp	dword ptr [rsp + 0x20], 0
	jne	.label_943
	and	r13d, 0x40
	je	.label_943
	nop	word ptr [rax + rax]
.label_942:
	mov	rsi, r14
	sub	rsi, r12
	mov	rdi, rbx
	call	re_node_set_remove_at
	inc	r12
.label_943:
	mov	rdi, qword ptr [rsp + 0x18]
.label_954:
	inc	r14
	cmp	r14, qword ptr [rbp + 8]
	jl	.label_947
.label_955:
	mov	rsi, r15
	mov	rdx, qword ptr [rsp + 0x28]
	call	register_state
	test	eax, eax
	mov	rax, r15
	mov	qword ptr [rsp + 8], rax
	jne	.label_946
.label_945:
	mov	rax, qword ptr [rsp + 8]
	add	rsp, 0x38
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_946:
	mov	rdi, r15
	call	free_state
	jmp	.label_948
.label_953:
	mov	rdi, r15
	call	free
.label_948:
	xor	eax, eax
	mov	qword ptr [rsp + 8], rax
	jmp	.label_945
	.section	.text
	.align	32
	#Procedure 0x40b8eb
	.globl sub_40b8eb
	.type sub_40b8eb, @function
sub_40b8eb:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40b8f0

	.globl build_collating_symbol
	.type build_collating_symbol, @function
build_collating_symbol:
	push	r14
	push	rbx
	push	rax
	mov	rbx, rsi
	mov	r14, rdi
	mov	rdi, rbx
	call	strlen
	mov	rcx, rax
	mov	eax, 3
	cmp	rcx, 1
	jne	.label_958
	movzx	esi, byte ptr [rbx]
	mov	rdi, r14
	call	bitset_set
	xor	eax, eax
.label_958:
	add	rsp, 8
	pop	rbx
	pop	r14
	ret	
	.section	.text
	.align	32
	#Procedure 0x40b925
	.globl sub_40b925
	.type sub_40b925, @function
sub_40b925:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40b930

	.globl fill_mount_table
	.type fill_mount_table, @function
fill_mount_table:
	push	r15
	push	r14
	push	rbx
	sub	rsp, 0x90
	xor	edi, edi
	call	read_file_system_list
	mov	rbx, rax
	test	rbx, rbx
	je	.label_960
	lea	r14, [rsp]
	nop	
.label_961:
	test	byte ptr [rbx + 0x28], 3
	jne	.label_959
	mov	rdi, qword ptr [rbx + 8]
	mov	rsi, r14
	call	stat
	test	eax, eax
	jne	.label_959
	mov	rdi,  qword ptr [word ptr [rip + di_mnt]]
	mov	rdx, qword ptr [rsp]
	mov	rsi, qword ptr [rsp + 8]
	call	hash_ins
	nop	dword ptr [rax + rax]
.label_959:
	mov	r15, qword ptr [rbx + 0x30]
	mov	rdi, rbx
	call	free_mount_entry
	test	r15, r15
	mov	rbx, r15
	jne	.label_961
.label_960:
	add	rsp, 0x90
	pop	rbx
	pop	r14
	pop	r15
	ret	
	.section	.text
	.align	32
	#Procedure 0x40b9a1
	.globl sub_40b9a1
	.type sub_40b9a1, @function
sub_40b9a1:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40b9b0

	.globl match_ctx_add_entry
	.type match_ctx_add_entry, @function
match_ctx_add_entry:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	push	rax
	mov	r14, r8
	mov	r15, rcx
	mov	r12, rdx
	mov	r13, rsi
	mov	rbx, rdi
	mov	rax, qword ptr [rbx + 0xc8]
	mov	rcx, qword ptr [rbx + 0xd0]
	cmp	rax, rcx
	jl	.label_964
	mov	rdi, qword ptr [rbx + 0xd8]
	shl	rcx, 4
	lea	rsi, [rcx + rcx*4]
	call	realloc
	test	rax, rax
	je	.label_965
	mov	qword ptr [rbx + 0xd8], rax
	mov	rcx, qword ptr [rbx + 0xc8]
	mov	rbp, qword ptr [rbx + 0xd0]
	lea	rcx, [rcx + rcx*4]
	lea	rdi, [rax + rcx*8]
	lea	rax, [rbp*8]
	lea	rdx, [rax + rax*4]
	xor	esi, esi
	call	memset
	add	rbp, rbp
	mov	qword ptr [rbx + 0xd0], rbp
	mov	rax, qword ptr [rbx + 0xc8]
.label_964:
	test	rax, rax
	jle	.label_962
	dec	rax
	mov	rcx, qword ptr [rbx + 0xd8]
	lea	rax, [rax + rax*4]
	cmp	qword ptr [rcx + rax*8 + 8], r12
	jne	.label_962
	mov	byte ptr [rcx + rax*8 + 0x20], 1
.label_962:
	mov	rax, qword ptr [rbx + 0xc8]
	mov	rcx, qword ptr [rbx + 0xd8]
	lea	rax, [rax + rax*4]
	mov	qword ptr [rcx + rax*8], r13
	mov	rax, qword ptr [rbx + 0xc8]
	mov	rcx, qword ptr [rbx + 0xd8]
	lea	rax, [rax + rax*4]
	mov	qword ptr [rcx + rax*8 + 8], r12
	mov	rax, qword ptr [rbx + 0xc8]
	mov	rcx, qword ptr [rbx + 0xd8]
	lea	rax, [rax + rax*4]
	mov	qword ptr [rcx + rax*8 + 0x10], r15
	mov	rax, qword ptr [rbx + 0xc8]
	mov	rcx, qword ptr [rbx + 0xd8]
	lea	rax, [rax + rax*4]
	mov	qword ptr [rcx + rax*8 + 0x18], r14
	xor	eax, eax
	sub	r14, r15
	mov	cx, 0xffff
	cmovne	cx, ax
	mov	rdx, qword ptr [rbx + 0xc8]
	mov	rsi, qword ptr [rbx + 0xd8]
	lea	rdx, [rdx + rdx*4]
	mov	word ptr [rsi + rdx*8 + 0x22], cx
	mov	rcx, qword ptr [rbx + 0xc8]
	lea	rdx, [rcx + 1]
	mov	qword ptr [rbx + 0xc8], rdx
	mov	rdx, qword ptr [rbx + 0xd8]
	lea	rcx, [rcx + rcx*4]
	mov	byte ptr [rdx + rcx*8 + 0x20], 0
	movsxd	rcx, dword ptr [rbx + 0xe0]
	cmp	rcx, r14
	jge	.label_963
	mov	dword ptr [rbx + 0xe0], r14d
.label_963:
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_965:
	mov	rdi, qword ptr [rbx + 0xd8]
	call	free
	mov	eax, 0xc
	jmp	.label_963
	.section	.text
	.align	32
	#Procedure 0x40bb30

	.globl mb_copy
	.type mb_copy, @function
mb_copy:
	push	r15
	push	r14
	push	rbx
	mov	rbx, rsi
	mov	r14, rdi
	mov	rax, qword ptr [rbx]
	lea	rsi, [rbx + 0x18]
	cmp	rax, rsi
	je	.label_966
	mov	qword ptr [r14], rax
	jmp	.label_967
.label_966:
	lea	r15, [r14 + 0x18]
	mov	rdx, qword ptr [rbx + 8]
	mov	rdi, r15
	call	memcpy
	mov	qword ptr [r14], r15
.label_967:
	mov	rax, qword ptr [rbx + 8]
	mov	qword ptr [r14 + 8], rax
	mov	al, byte ptr [rbx + 0x10]
	test	al, al
	mov	byte ptr [r14 + 0x10], al
	je	.label_968
	mov	eax, dword ptr [rbx + 0x14]
	mov	dword ptr [r14 + 0x14], eax
.label_968:
	pop	rbx
	pop	r14
	pop	r15
	ret	
	.section	.text
	.align	32
	#Procedure 0x40bb7f
	.globl sub_40bb7f
	.type sub_40bb7f, @function
sub_40bb7f:

	nop	
	.section	.text
	.align	32
	#Procedure 0x40bb80

	.globl merge_state_with_log
	.type merge_state_with_log, @function
merge_state_with_log:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x18
	mov	rbx, rdx
	mov	r13, rsi
	mov	r15, rdi
	mov	r14, qword ptr [r13 + 0x48]
	mov	r12, qword ptr [r13 + 0x98]
	mov	rax, qword ptr [r13 + 0xb8]
	cmp	r14, qword ptr [r13 + 0xc0]
	jle	.label_969
	mov	qword ptr [rax + r14*8], rbx
	mov	qword ptr [r13 + 0xc0], r14
	jmp	.label_974
.label_969:
	cmp	qword ptr [rax + r14*8], 0
	je	.label_970
	mov	rax, qword ptr [r13 + 0xb8]
	mov	rax, qword ptr [rax + r14*8]
	mov	rdx, qword ptr [rax + 0x50]
	test	rbx, rbx
	je	.label_972
	mov	rbp, qword ptr [rbx + 0x50]
	lea	rdi, [rsp]
	mov	rsi, rbp
	call	re_node_set_init_union
	mov	dword ptr [r15], eax
	test	eax, eax
	je	.label_975
	xor	eax, eax
	jmp	.label_971
.label_970:
	mov	qword ptr [rax + r14*8], rbx
	jmp	.label_974
.label_972:
	mov	rax, qword ptr [rdx + 0x10]
	mov	qword ptr [rsp + 0x10], rax
	movups	xmm0, xmmword ptr [rdx]
	movaps	xmmword ptr [rsp], xmm0
	xor	ebp, ebp
.label_975:
	mov	rsi, qword ptr [r13 + 0x48]
	dec	rsi
	mov	edx, dword ptr [r13 + 0xa0]
	mov	rdi, r13
	call	re_string_context_at
	lea	rdx, [rsp]
	mov	rdi, r15
	mov	rsi, r12
	mov	ecx, eax
	call	re_acquire_state_context
	mov	rbx, rax
	mov	rax, qword ptr [r13 + 0xb8]
	mov	qword ptr [rax + r14*8], rbx
	test	rbp, rbp
	je	.label_974
	mov	rdi, qword ptr [rsp + 0x10]
	call	free
.label_974:
	test	rbx, rbx
	je	.label_973
	mov	rax, qword ptr [r12 + 0x98]
	test	rax, rax
	je	.label_973
	lea	rbp, [rbx + 8]
	mov	rdi, r13
	mov	rsi, rbp
	mov	rdx, r14
	call	check_subexp_matching_top
	mov	ecx, eax
	mov	dword ptr [r15], ecx
	xor	eax, eax
	test	ecx, ecx
	jne	.label_971
	test	byte ptr [rbx + 0x68], 0x40
	mov	rax, rbx
	je	.label_971
	mov	rdi, r13
	mov	rsi, rbp
	call	transit_state_bkref
	mov	ecx, eax
	mov	dword ptr [r15], ecx
	xor	eax, eax
	test	ecx, ecx
	jne	.label_971
	mov	rax, qword ptr [r13 + 0xb8]
	mov	rax, qword ptr [rax + r14*8]
	jmp	.label_971
.label_973:
	mov	rax, rbx
.label_971:
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
	#Procedure 0x40bcc4
	.globl sub_40bcc4
	.type sub_40bcc4, @function
sub_40bcc4:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40bcd0

	.globl hash_get_max_bucket_length
	.type hash_get_max_bucket_length, @function
hash_get_max_bucket_length:
	mov	rcx, qword ptr [rdi]
	xor	eax, eax
	cmp	rcx, qword ptr [rdi + 8]
	jae	.label_976
	mov	rdx, qword ptr [rdi + 8]
	xor	eax, eax
	nop	word ptr cs:[rax + rax]
.label_978:
	cmp	qword ptr [rcx], 0
	je	.label_977
	xor	esi, esi
	mov	rdi, rcx
	nop	dword ptr [rax + rax]
.label_979:
	mov	rdi, qword ptr [rdi + 8]
	inc	rsi
	test	rdi, rdi
	jne	.label_979
	cmp	rsi, rax
	cmova	rax, rsi
.label_977:
	add	rcx, 0x10
	cmp	rcx, rdx
	jb	.label_978
.label_976:
	ret	
	.section	.text
	.align	32
	#Procedure 0x40bd1d
	.globl sub_40bd1d
	.type sub_40bd1d, @function
sub_40bd1d:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x40bd20
	.globl c_isprint
	.type c_isprint, @function
c_isprint:

	add	edi, -0x20
	cmp	edi, 0x5f
	setb	al
	ret	
	.section	.text
	.align	32
	#Procedure 0x40bd2a
	.globl sub_40bd2a
	.type sub_40bd2a, @function
sub_40bd2a:

	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40bd30

	.globl search_cur_bkref_entry
	.type search_cur_bkref_entry, @function
search_cur_bkref_entry:
	mov	r8, qword ptr [rdi + 0xc8]
	xor	eax, eax
	test	r8, r8
	jle	.label_980
	mov	r9, qword ptr [rdi + 0xd8]
	xor	eax, eax
	mov	r11, r8
	nop	word ptr [rax + rax]
.label_981:
	lea	r10, [rax + r11]
	mov	rdx, r10
	shr	rdx, 0x3f
	add	rdx, r10
	sar	rdx, 1
	lea	rcx, [rdx + rdx*4]
	cmp	qword ptr [r9 + rcx*8 + 8], rsi
	cmovge	r11, rdx
	lea	rcx, [rdx + 1]
	cmovl	rax, rcx
	cmp	rax, r11
	jl	.label_981
.label_980:
	cmp	rax, r8
	jge	.label_983
	mov	rcx, qword ptr [rdi + 0xd8]
	lea	rdx, [rax + rax*4]
	cmp	qword ptr [rcx + rdx*8 + 8], rsi
	je	.label_982
.label_983:
	mov	rax, -1
.label_982:
	ret	
	.section	.text
	.align	32
	#Procedure 0x40bd9a
	.globl sub_40bd9a
	.type sub_40bd9a, @function
sub_40bd9a:

	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40bda0

	.globl fts_build
	.type fts_build, @function
fts_build:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x88
	mov	ebp, esi
	mov	rbx, rdi
	mov	r14, qword ptr [rbx]
	mov	r13, qword ptr [r14 + 0x18]
	test	r13, r13
	je	.label_1016
	mov	rdi, r13
	call	dirfd
	mov	dword ptr [rsp], eax
	test	eax, eax
	js	.label_1027
	lea	rax, [rbx + 0x40]
	mov	qword ptr [rsp + 0x20], rax
	cmp	qword ptr [rbx + 0x40], 1
	sbb	rax, rax
	not	rax
	or	rax, 0x186a0
	mov	qword ptr [rsp + 0x58], rax
	mov	al, 1
	mov	dword ptr [rsp + 4], eax
	jmp	.label_1004
.label_1016:
	mov	eax, 0x204
	and	eax, dword ptr [rbx + 0x48]
	mov	edi, 0xffffff9c
	cmp	eax, 0x200
	jne	.label_1039
	mov	edi, dword ptr [rbx + 0x2c]
.label_1039:
	mov	rsi, qword ptr [r14 + 0x30]
	mov	eax, dword ptr [rbx + 0x48]
	xor	edx, edx
	test	al, 0x10
	je	.label_993
	test	al, 1
	je	.label_991
	cmp	qword ptr [r14 + 0x58], 0
	je	.label_993
.label_991:
	mov	edx, 0x20000
.label_993:
	lea	rcx, [rsp]
	call	opendirat
	mov	qword ptr [r14 + 0x18], rax
	test	rax, rax
	je	.label_1000
	movzx	eax, word ptr [r14 + 0x70]
	cmp	eax, 0xb
	jne	.label_1001
	xor	edx, edx
	mov	rdi, rbx
	mov	rsi, r14
	call	fts_stat
	mov	word ptr [r14 + 0x70], ax
	jmp	.label_1006
.label_1027:
	mov	rdi, qword ptr [r14 + 0x18]
	call	closedir
	mov	qword ptr [r14 + 0x18], 0
.label_1000:
	cmp	ebp, 3
	mov	ebp, 0
	jne	.label_1003
	mov	word ptr [r14 + 0x70], 4
	call	__errno_location
	mov	eax, dword ptr [rax]
	mov	dword ptr [r14 + 0x40], eax
	jmp	.label_987
.label_1001:
	test	byte ptr [rbx + 0x49], 1
	je	.label_1006
	mov	rdi, rbx
	mov	rsi, r14
	call	leave_dir
	xor	edx, edx
	mov	rdi, rbx
	mov	rsi, r14
	call	fts_stat
	mov	rdi, rbx
	mov	rsi, r14
	call	enter_dir
	test	al, al
	je	.label_1023
.label_1006:
	lea	rax, [rbx + 0x40]
	mov	qword ptr [rsp + 0x20], rax
	cmp	qword ptr [rbx + 0x40], 1
	sbb	rax, rax
	not	rax
	or	rax, 0x186a0
	mov	qword ptr [rsp + 0x58], rax
	test	r13, r13
	mov	al, 1
	mov	dword ptr [rsp + 4], eax
	jne	.label_1004
	cmp	ebp, 2
	jne	.label_1036
	mov	r15, rbx
	xor	r12d, r12d
	jmp	.label_1037
.label_1036:
	mov	eax, dword ptr [rbx + 0x48]
	and	eax, 0x38
	cmp	eax, 0x18
	jne	.label_984
	cmp	qword ptr [r14 + 0x88], 2
	jne	.label_984
	mov	r15, rbx
	mov	esi, dword ptr [rsp]
	mov	rdi, r14
	call	leaf_optimization
	test	eax, eax
	setne	r12b
	jmp	.label_997
.label_1023:
	call	__errno_location
	mov	dword ptr [rax], 0xc
	jmp	.label_987
.label_984:
	mov	r15, rbx
	xor	r12d, r12d
.label_997:
	xor	r12b, 1
.label_1037:
	cmp	ebp, 3
	je	.label_1002
	test	r12b, r12b
	jne	.label_1002
	mov	dword ptr [rsp + 4], r12d
.label_1013:
	mov	rbx, r15
	jmp	.label_1004
.label_1002:
	test	byte ptr [r15 + 0x49], 2
	mov	ebx, dword ptr [rsp]
	je	.label_1007
	mov	esi, 0x406
	mov	edx, 3
	xor	eax, eax
	mov	edi, ebx
	call	rpl_fcntl
	mov	ebx, eax
	mov	dword ptr [rsp], ebx
.label_1007:
	test	ebx, ebx
	js	.label_1012
	xor	ecx, ecx
	mov	rdi, r15
	mov	rsi, r14
	mov	edx, ebx
	call	fts_safe_changedir
	test	eax, eax
	je	.label_1013
.label_1012:
	cmp	ebp, 3
	jne	.label_1014
	test	r12b, r12b
	je	.label_1014
	call	__errno_location
	mov	eax, dword ptr [rax]
	mov	dword ptr [r14 + 0x40], eax
.label_1014:
	or	byte ptr [r14 + 0x72], 1
	mov	rdi, qword ptr [r14 + 0x18]
	call	closedir
	mov	qword ptr [r14 + 0x18], 0
	mov	rbx, r15
	mov	eax, dword ptr [rbx + 0x48]
	test	ah, 2
	je	.label_1020
	mov	edi, dword ptr [rsp]
	test	edi, edi
	js	.label_1020
	call	close
.label_1020:
	mov	qword ptr [r14 + 0x18], 0
	mov	dword ptr [rsp + 4], 0
.label_1004:
	mov	dword ptr [rsp + 0x4c], ebp
	mov	rax, qword ptr [r14 + 0x38]
	mov	rcx, qword ptr [r14 + 0x48]
	lea	rdx, [rcx - 1]
	cmp	byte ptr [rax + rcx - 1], 0x2f
	cmovne	rdx, rcx
	xor	eax, eax
	mov	qword ptr [rsp + 0x18], rax
	test	byte ptr [rbx + 0x48], 4
	je	.label_1034
	mov	rax, qword ptr [rbx + 0x20]
	lea	rcx, [rax + rdx + 1]
	mov	qword ptr [rsp + 0x18], rcx
	mov	byte ptr [rax + rdx], 0x2f
.label_1034:
	lea	rax, [rdx + 1]
	mov	rcx, qword ptr [rbx + 0x30]
	mov	qword ptr [rsp + 0x30], rax
	sub	rcx, rax
	mov	qword ptr [rsp + 0x68], rcx
	mov	rax, qword ptr [r14 + 0x58]
	inc	rax
	mov	qword ptr [rsp + 0x80], rax
	add	rdx, 2
	mov	qword ptr [rsp + 0x70], rdx
	xor	eax, eax
	mov	qword ptr [rsp + 0x60], rax
	xor	eax, eax
	mov	qword ptr [rsp + 0x50], rax
	xor	r12d, r12d
	xor	edx, edx
	xor	ebp, ebp
	mov	qword ptr [rsp + 0x40], rbx
	mov	qword ptr [rsp + 0x28], r14
	mov	qword ptr [rsp + 0x38], r13
.label_1008:
	cmp	qword ptr [r14 + 0x18], 0
	je	.label_989
	mov	qword ptr [rsp + 0x10], rdx
	mov	qword ptr [rsp + 8], rbp
	nop	word ptr cs:[rax + rax]
.label_1033:
	call	__errno_location
	mov	r13, rax
	mov	dword ptr [r13], 0
	mov	rdi, qword ptr [r14 + 0x18]
	call	readdir
	mov	r15, rax
	test	r15, r15
	je	.label_1017
	test	byte ptr [rbx + 0x48], 0x20
	jne	.label_1019
	cmp	byte ptr [r15 + 0x13], 0x2e
	jne	.label_1019
	movzx	eax, byte ptr [r15 + 0x14]
	cmp	al, 0x2e
	je	.label_1025
	test	al, al
	je	.label_1024
	jmp	.label_1019
	.section	.text
	.align	32
	#Procedure 0x40c0d1
	.globl sub_40c0d1
	.type sub_40c0d1, @function
sub_40c0d1:

	nop	word ptr cs:[rax + rax]
.label_1025:
	cmp	byte ptr [r15 + 0x15], 0
	jne	.label_1019
.label_1024:
	cmp	qword ptr [r14 + 0x18], 0
	jne	.label_1033
	jmp	.label_1035
	.section	.text
	.align	32
	#Procedure 0x40c0f3
	.globl sub_40c0f3
	.type sub_40c0f3, @function
sub_40c0f3:

	nop	word ptr cs:[rax + rax]
.label_1019:
	mov	qword ptr [rsp + 0x78], r12
	mov	r14, rbx
	mov	rbx, r15
	add	rbx, 0x13
	mov	rdi, rbx
	call	strlen
	mov	rbp, rax
	mov	rdi, r14
	mov	rsi, rbx
	mov	rdx, rbp
	call	fts_alloc
	mov	r12, rax
	test	r12, r12
	je	.label_994
	cmp	rbp, qword ptr [rsp + 0x68]
	jae	.label_996
	mov	rbx, qword ptr [rsp + 0x40]
	mov	r14, qword ptr [rsp + 0x28]
	mov	rdx, qword ptr [rsp + 0x30]
	jmp	.label_999
	.section	.text
	.align	32
	#Procedure 0x40c14c
	.globl sub_40c14c
	.type sub_40c14c, @function
sub_40c14c:

	nop	dword ptr [rax]
.label_996:
	mov	r14, qword ptr [rsp + 0x40]
	mov	rbx, qword ptr [r14 + 0x20]
	mov	rax, qword ptr [rsp + 0x70]
	lea	rsi, [rax + rbp]
	mov	rdi, r14
	call	fts_palloc
	test	al, al
	je	.label_994
	mov	rax, qword ptr [r14 + 0x20]
	cmp	rbx, rax
	je	.label_1018
	mov	rdx, qword ptr [rsp + 0x30]
	add	rax, rdx
	test	byte ptr [r14 + 0x48], 4
	mov	rcx, qword ptr [rsp + 0x18]
	cmovne	rcx, rax
	mov	qword ptr [rsp + 0x18], rcx
	mov	al, 1
	mov	qword ptr [rsp + 0x60], rax
	mov	rbx, r14
	mov	r14, qword ptr [rsp + 0x28]
	jmp	.label_1010
.label_1018:
	mov	rbx, r14
	mov	r14, qword ptr [rsp + 0x28]
	mov	rdx, qword ptr [rsp + 0x30]
.label_1010:
	mov	rax, qword ptr [rbx + 0x30]
	sub	rax, rdx
	mov	qword ptr [rsp + 0x68], rax
.label_999:
	add	rbp, rdx
	jb	.label_1021
	mov	rax, qword ptr [rsp + 0x80]
	mov	qword ptr [r12 + 0x58], rax
	mov	rax, qword ptr [rbx]
	mov	qword ptr [r12 + 8], rax
	mov	qword ptr [r12 + 0x48], rbp
	mov	rax, qword ptr [r15]
	mov	qword ptr [r12 + 0x80], rax
	test	byte ptr [rbx + 0x48], 4
	jne	.label_1026
	lea	rax, [r12 + 0x108]
	mov	qword ptr [r12 + 0x30], rax
	jmp	.label_1028
	.section	.text
	.align	32
	#Procedure 0x40c203
	.globl sub_40c203
	.type sub_40c203, @function
sub_40c203:

	nop	word ptr cs:[rax + rax]
.label_1026:
	mov	rax, qword ptr [r12 + 0x38]
	mov	qword ptr [r12 + 0x30], rax
	lea	rsi, [r12 + 0x108]
	mov	rdx, qword ptr [r12 + 0x60]
	inc	rdx
	mov	rdi, qword ptr [rsp + 0x18]
	call	memmove
.label_1028:
	mov	r13, qword ptr [rsp + 0x38]
	mov	rbp, qword ptr [rsp + 8]
	mov	rax, qword ptr [rsp + 0x20]
	cmp	qword ptr [rax], 0
	je	.label_998
	test	byte ptr [rbx + 0x49], 4
	jne	.label_998
	xor	edx, edx
	mov	rdi, rbx
	mov	rsi, r12
	call	fts_stat
	mov	word ptr [r12 + 0x70], ax
	jmp	.label_995
	.section	.text
	.align	32
	#Procedure 0x40c264
	.globl sub_40c264
	.type sub_40c264, @function
sub_40c264:

	nop	word ptr cs:[rax + rax]
.label_998:
	mov	rdi, r12
	add	rdi, 0x78
	mov	eax, dword ptr [rbx + 0x48]
	and	eax, 0x18
	cmp	eax, 0x18
	jne	.label_1009
	mov	al, byte ptr [r15 + 0x12]
	cmp	al, 4
	setne	cl
	test	al, al
	setne	bl
	and	bl, cl
	jmp	.label_1005
.label_1009:
	xor	ebx, ebx
.label_1005:
	mov	word ptr [r12 + 0x70], 0xb
	movzx	esi, byte ptr [r15 + 0x12]
	call	set_stat_type
	xor	bl, 1
	movzx	esi, bl
	mov	rdi, r12
	call	fts_set_stat_required
	mov	rbx, qword ptr [rsp + 0x40]
.label_995:
	mov	rdx, qword ptr [rsp + 0x10]
	mov	qword ptr [r12 + 0x10], 0
	test	rbp, rbp
	mov	rax, r12
	je	.label_985
	mov	rax, qword ptr [rsp + 0x78]
	mov	qword ptr [rax + 0x10], r12
	mov	rax, rbp
.label_985:
	mov	rbp, rax
	cmp	rdx, 0x2710
	jne	.label_1030
	mov	rax, qword ptr [rsp + 0x20]
	cmp	qword ptr [rax], 0
	jne	.label_1030
	mov	esi, dword ptr [rsp]
	mov	rdi, r14
	call	dirent_inode_sort_may_be_useful
	mov	rdx, qword ptr [rsp + 0x10]
	mov	qword ptr [rsp + 0x50], rax
	nop	dword ptr [rax]
.label_1030:
	inc	rdx
	cmp	qword ptr [rsp + 0x58], rdx
	ja	.label_1008
	jmp	.label_989
.label_1017:
	mov	eax, dword ptr [r13]
	test	eax, eax
	mov	r13, qword ptr [rsp + 0x38]
	mov	rdx, qword ptr [rsp + 0x10]
	je	.label_1022
	mov	dword ptr [r14 + 0x40], eax
	mov	rax, r13
	or	rax, rdx
	mov	ax, 7
	mov	cx, 4
	cmovne	cx, ax
	mov	word ptr [r14 + 0x70], cx
.label_1022:
	mov	rdi, qword ptr [r14 + 0x18]
	test	rdi, rdi
	mov	rbp, qword ptr [rsp + 8]
	je	.label_989
	call	closedir
	mov	rdx, qword ptr [rsp + 0x10]
	mov	qword ptr [r14 + 0x18], 0
	jmp	.label_989
.label_1035:
	mov	r13, qword ptr [rsp + 0x38]
	mov	rbp, qword ptr [rsp + 8]
	mov	rdx, qword ptr [rsp + 0x10]
.label_989:
	mov	rax, qword ptr [rsp + 0x60]
	test	al, 1
	mov	r15d, dword ptr [rsp + 0x4c]
	je	.label_1011
	mov	rdi, rbx
	mov	rsi, rbp
	mov	r12, rdx
	call	fts_padjust
	mov	rdx, r12
.label_1011:
	test	byte ptr [rbx + 0x48], 4
	je	.label_1015
	mov	rax, qword ptr [rsp + 0x18]
	mov	rcx, rax
	lea	rax, [rcx - 1]
	mov	rsi, qword ptr [rsp + 0x30]
	cmp	rsi, qword ptr [rbx + 0x30]
	cmove	rcx, rax
	test	rdx, rdx
	cmove	rcx, rax
	mov	byte ptr [rcx], 0
.label_1015:
	test	r13, r13
	jne	.label_986
	mov	eax, dword ptr [rsp + 4]
	test	al, al
	je	.label_986
	cmp	r15d, 1
	je	.label_1029
	test	rdx, rdx
	jne	.label_986
.label_1029:
	cmp	qword ptr [r14 + 0x58], 0
	je	.label_1031
	mov	rsi, qword ptr [r14 + 8]
	mov	r12, rdx
	mov	edx, 0xffffffff
	mov	ecx, OFFSET FLAT:label_1032
	mov	rdi, rbx
	call	fts_safe_changedir
	jmp	.label_1038
.label_1031:
	mov	rdi, rbx
	mov	r12, rdx
	call	restore_initial_cwd
.label_1038:
	mov	rdx, r12
	test	eax, eax
	je	.label_986
	mov	word ptr [r14 + 0x70], 7
	or	byte ptr [rbx + 0x49], 0x20
	jmp	.label_988
.label_986:
	test	rdx, rdx
	je	.label_990
	mov	rax, qword ptr [rsp + 0x50]
	test	al, 1
	je	.label_992
	mov	r14, qword ptr [rsp + 0x20]
	mov	qword ptr [word ptr [r14]], OFFSET FLAT:fts_compare_ino
	mov	rdi, rbx
	mov	rsi, rbp
	mov	rbp, rdx
	call	fts_sort
	mov	rdx, rbp
	mov	rbp, rax
	mov	qword ptr [r14], 0
.label_992:
	cmp	rdx, 2
	jb	.label_1003
	mov	rax, qword ptr [rsp + 0x20]
	mov	rax, qword ptr [rax]
	test	rax, rax
	je	.label_1003
	mov	rdi, rbx
	mov	rsi, rbp
	call	fts_sort
	mov	rbp, rax
	jmp	.label_1003
.label_990:
	cmp	r15d, 3
	jne	.label_988
	movzx	eax, word ptr [r14 + 0x70]
	cmp	eax, 4
	je	.label_988
	movzx	eax, ax
	cmp	eax, 7
	je	.label_988
	mov	word ptr [r14 + 0x70], 6
.label_988:
	mov	rdi, rbp
	call	fts_lfree
.label_987:
	xor	ebp, ebp
.label_1003:
	mov	rax, rbp
	add	rsp, 0x88
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_994:
	mov	ebx, dword ptr [r13]
	mov	rdi, r12
	call	free
	mov	rdi, qword ptr [rsp + 8]
	call	fts_lfree
	mov	rbp, qword ptr [rsp + 0x28]
	mov	rdi, qword ptr [rbp + 0x18]
	call	closedir
	mov	qword ptr [rbp + 0x18], 0
	mov	word ptr [rbp + 0x70], 7
	or	byte ptr [r14 + 0x49], 0x20
	mov	dword ptr [r13], ebx
	jmp	.label_987
.label_1021:
	mov	rdi, r12
	call	free
	mov	rdi, qword ptr [rsp + 8]
	call	fts_lfree
	mov	rdi, qword ptr [r14 + 0x18]
	call	closedir
	mov	qword ptr [r14 + 0x18], 0
	mov	word ptr [r14 + 0x70], 7
	or	byte ptr [rbx + 0x49], 0x20
	mov	dword ptr [r13], 0x24
	jmp	.label_987
	.section	.text
	.align	32
	#Procedure 0x40c52d
	.globl sub_40c52d
	.type sub_40c52d, @function
sub_40c52d:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x40c530

	.globl parse_bracket_symbol
	.type parse_bracket_symbol, @function
parse_bracket_symbol:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	push	rax
	mov	r12, rdx
	mov	rbx, rsi
	mov	r15, rdi
	mov	rax, qword ptr [rbx + 0x68]
	mov	r14d, 7
	cmp	rax, qword ptr [rbx + 0x48]
	jle	.label_1042
	mov	r13b, byte ptr [r12]
	mov	rbp, -1
	nop	
.label_1046:
	cmp	byte ptr [r12 + 8], 0x1e
	jne	.label_1040
	mov	rdi, rbx
	call	re_string_fetch_byte_case
	jmp	.label_1041
	.section	.text
	.align	32
	#Procedure 0x40c572
	.globl sub_40c572
	.type sub_40c572, @function
sub_40c572:

	nop	word ptr cs:[rax + rax]
.label_1045:
	mov	dword ptr [r15], 2
	jmp	.label_1042
	.section	.text
	.align	32
	#Procedure 0x40c589
	.globl sub_40c589
	.type sub_40c589, @function
sub_40c589:

	nop	
.label_1040:
	mov	rax, qword ptr [rbx + 0x48]
	lea	rcx, [rax + 1]
	mov	qword ptr [rbx + 0x48], rcx
	mov	rcx, qword ptr [rbx + 8]
	movzx	eax, byte ptr [rcx + rax]
.label_1041:
	mov	rcx, qword ptr [rbx + 0x48]
	cmp	qword ptr [rbx + 0x68], rcx
	jle	.label_1042
	cmp	al, r13b
	jne	.label_1043
	mov	rdx, qword ptr [rbx + 8]
	cmp	byte ptr [rdx + rcx], 0x5d
	je	.label_1044
.label_1043:
	mov	rcx, qword ptr [r15 + 8]
	mov	byte ptr [rcx + rbp + 1], al
	inc	rbp
	cmp	rbp, 0x1e
	jle	.label_1046
.label_1042:
	mov	eax, r14d
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_1044:
	inc	rcx
	mov	qword ptr [rbx + 0x48], rcx
	mov	rax, qword ptr [r15 + 8]
	mov	byte ptr [rax + rbp + 1], 0
	mov	al, byte ptr [r12 + 8]
	xor	r14d, r14d
	cmp	al, 0x1e
	je	.label_1047
	cmp	al, 0x1c
	je	.label_1045
	cmp	al, 0x1a
	jne	.label_1042
	mov	dword ptr [r15], 3
	jmp	.label_1042
.label_1047:
	mov	dword ptr [r15], 4
	jmp	.label_1042
	.section	.text
	.align	32
	#Procedure 0x40c610

	.globl create_initial_state
	.type create_initial_state, @function
create_initial_state:
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x20
	mov	r15, rdi
	mov	rax, qword ptr [r15 + 0x68]
	mov	rax, qword ptr [rax + 0x18]
	mov	rax, qword ptr [rax + 0x38]
	mov	qword ptr [r15 + 0x90], rax
	mov	rcx, qword ptr [r15 + 0x30]
	lea	rax, [rax + rax*2]
	lea	rsi, [rcx + rax*8]
	lea	rdi, [rsp + 8]
	call	re_node_set_init_copy
	mov	dword ptr [rsp + 4], eax
	test	eax, eax
	jne	.label_1050
	cmp	qword ptr [r15 + 0x98], 0
	jle	.label_1053
	cmp	qword ptr [rsp + 0x10], 0
	jle	.label_1053
	xor	r13d, r13d
	lea	r14, [rsp + 8]
	nop	word ptr [rax + rax]
.label_1051:
	mov	rax, qword ptr [rsp + 0x18]
	mov	r8, qword ptr [rax + r13*8]
	mov	rax, qword ptr [r15]
	mov	rdx, r8
	shl	rdx, 4
	movzx	r9d, byte ptr [rax + rdx + 8]
	cmp	r9d, 4
	jne	.label_1048
	cmp	qword ptr [rsp + 0x10], 0
	mov	esi, 0
	jle	.label_1052
	mov	rdi, qword ptr [r15]
	mov	rax, qword ptr [rsp + 0x10]
	mov	rcx, qword ptr [rsp + 0x18]
	add	rdx, rdi
	xor	esi, esi
	nop	word ptr cs:[rax + rax]
.label_1055:
	mov	rbx, qword ptr [rcx + rsi*8]
	shl	rbx, 4
	cmp	byte ptr [rdi + rbx + 8], 9
	jne	.label_1054
	mov	rbx, qword ptr [rdi + rbx]
	cmp	rbx, qword ptr [rdx]
	je	.label_1052
.label_1054:
	inc	rsi
	cmp	rsi, rax
	jl	.label_1055
.label_1052:
	cmp	r9d, 4
	setne	al
	cmp	rsi, qword ptr [rsp + 0x10]
	je	.label_1048
	test	al, al
	jne	.label_1048
	mov	rax, qword ptr [r15 + 0x28]
	lea	rcx, [r8 + r8*2]
	mov	rax, qword ptr [rax + rcx*8 + 0x10]
	mov	r12, qword ptr [rax]
	mov	rdi, r14
	mov	rsi, r12
	call	re_node_set_contains
	test	rax, rax
	jne	.label_1048
	mov	rax, qword ptr [r15 + 0x30]
	lea	rcx, [r12 + r12*2]
	lea	rsi, [rax + rcx*8]
	mov	rdi, r14
	call	re_node_set_merge
	test	eax, eax
	mov	r13d, 0
	jne	.label_1050
	nop	word ptr cs:[rax + rax]
.label_1048:
	inc	r13
	cmp	r13, qword ptr [rsp + 0x10]
	jl	.label_1051
.label_1053:
	lea	rdi, [rsp + 4]
	lea	rdx, [rsp + 8]
	xor	ecx, ecx
	mov	rsi, r15
	call	re_acquire_state_context
	mov	qword ptr [r15 + 0x48], rax
	test	rax, rax
	je	.label_1056
	cmp	byte ptr [rax + 0x68], 0
	js	.label_1057
	mov	qword ptr [r15 + 0x60], rax
	mov	qword ptr [r15 + 0x58], rax
	mov	qword ptr [r15 + 0x50], rax
	jmp	.label_1049
.label_1057:
	lea	rbx, [rsp + 4]
	lea	r14, [rsp + 8]
	mov	ecx, 1
	mov	rdi, rbx
	mov	rsi, r15
	mov	rdx, r14
	call	re_acquire_state_context
	mov	qword ptr [r15 + 0x50], rax
	mov	ecx, 2
	mov	rdi, rbx
	mov	rsi, r15
	mov	rdx, r14
	call	re_acquire_state_context
	mov	qword ptr [r15 + 0x58], rax
	mov	ecx, 6
	mov	rdi, rbx
	mov	rsi, r15
	mov	rdx, r14
	call	re_acquire_state_context
	mov	qword ptr [r15 + 0x60], rax
	cmp	qword ptr [r15 + 0x50], 0
	je	.label_1056
	test	rax, rax
	je	.label_1056
	mov	rax, qword ptr [r15 + 0x58]
	test	rax, rax
	je	.label_1056
.label_1049:
	mov	rdi, qword ptr [rsp + 0x18]
	call	free
	xor	eax, eax
.label_1050:
	add	rsp, 0x20
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	ret	
.label_1056:
	mov	eax, dword ptr [rsp + 4]
	jmp	.label_1050
	.section	.text
	.align	32
	#Procedure 0x40c817
	.globl sub_40c817
	.type sub_40c817, @function
sub_40c817:

	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40c820

	.globl re_string_char_size_at
	.type re_string_char_size_at, @function
re_string_char_size_at:
	mov	eax, 1
	cmp	dword ptr [rdi + 0x90], 1
	je	.label_1058
	lea	rcx, [rsi + 1]
	cmp	rcx, qword ptr [rdi + 0x30]
	jge	.label_1058
	lea	rcx, [rsi*4]
	add	rcx, qword ptr [rdi + 0x10]
	mov	eax, 1
	nop	dword ptr [rax]
.label_1059:
	cmp	dword ptr [rcx + rax*4], -1
	jne	.label_1058
	lea	rdx, [rsi + rax + 1]
	inc	rax
	cmp	rdx, qword ptr [rdi + 0x30]
	jl	.label_1059
.label_1058:
	ret	
	.section	.text
	.align	32
	#Procedure 0x40c865
	.globl sub_40c865
	.type sub_40c865, @function
sub_40c865:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40c870

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
	#Procedure 0x40c887
	.globl sub_40c887
	.type sub_40c887, @function
sub_40c887:

	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40c890

	.globl duinfo_add
	.type duinfo_add, @function
duinfo_add:
	push	r14
	push	rbx
	push	rax
	mov	r14, rsi
	mov	rbx, rdi
	mov	rax, qword ptr [rbx]
	mov	rcx, qword ptr [r14]
	add	rcx, rax
	cmp	rax, rcx
	mov	rax, -1
	cmovbe	rax, rcx
	mov	qword ptr [rbx], rax
	mov	rax, qword ptr [r14 + 8]
	add	qword ptr [rbx + 8], rax
	mov	rdi, qword ptr [rbx + 0x10]
	mov	rsi, qword ptr [rbx + 0x18]
	mov	rdx, qword ptr [r14 + 0x10]
	mov	rcx, qword ptr [r14 + 0x18]
	call	timespec_cmp
	test	eax, eax
	jns	.label_1060
	add	rbx, 0x10
	add	r14, 0x10
	movups	xmm0, xmmword ptr [r14]
	movups	xmmword ptr [rbx], xmm0
.label_1060:
	add	rsp, 8
	pop	rbx
	pop	r14
	ret	
	.section	.text
	.align	32
	#Procedure 0x40c8ec
	.globl sub_40c8ec
	.type sub_40c8ec, @function
sub_40c8ec:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x40c8f0

	.globl isdst_differ
	.type isdst_differ, @function
isdst_differ:
	test	edi, edi
	sete	al
	test	esi, esi
	sete	cl
	xor	cl, al
	or	esi, edi
	setns	al
	and	al, cl
	ret	
	.section	.text
	.align	32
	#Procedure 0x40c904
	.globl sub_40c904
	.type sub_40c904, @function
sub_40c904:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40c910

	.globl merge_state_array
	.type merge_state_array, @function
merge_state_array:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x28
	mov	r14, rcx
	mov	r15, rdx
	mov	rbx, rsi
	mov	r12, rdi
	xor	eax, eax
	test	r14, r14
	jle	.label_1064
	xor	ebp, ebp
	lea	r13, [rsp + 0x10]
	nop	dword ptr [rax + rax]
.label_1062:
	mov	rax, qword ptr [r15 + rbp*8]
	cmp	qword ptr [rbx + rbp*8], 0
	je	.label_1061
	test	rax, rax
	je	.label_1063
	mov	rsi, qword ptr [rbx + rbp*8]
	add	rsi, 8
	mov	rdx, qword ptr [r15 + rbp*8]
	add	rdx, 8
	mov	rdi, r13
	call	re_node_set_init_union
	mov	dword ptr [rsp + 0xc], eax
	test	eax, eax
	jne	.label_1064
	lea	rdi, [rsp + 0xc]
	mov	rsi, r12
	mov	rdx, r13
	call	re_acquire_state
	mov	qword ptr [rbx + rbp*8], rax
	mov	rdi, qword ptr [rsp + 0x20]
	call	free
	mov	eax, dword ptr [rsp + 0xc]
	test	eax, eax
	je	.label_1063
	jmp	.label_1064
	.section	.text
	.align	32
	#Procedure 0x40c998
	.globl sub_40c998
	.type sub_40c998, @function
sub_40c998:

	nop	dword ptr [rax + rax]
.label_1061:
	mov	qword ptr [rbx + rbp*8], rax
.label_1063:
	inc	rbp
	xor	eax, eax
	cmp	rbp, r14
	jl	.label_1062
.label_1064:
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
	#Procedure 0x40c9bd
	.globl sub_40c9bd
	.type sub_40c9bd, @function
sub_40c9bd:

	nop	dword ptr [rax]
.label_1068:
	lea	rbx, [rsp + 6]
	mov	ebp, OFFSET FLAT:label_1065
	sub	rbp, rax
	mov	byte ptr [rsp + 6], dl
	mov	byte ptr [rsp + 7], 0
.label_1069:
	xor	edi, edi
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	xor	esi, esi
	xor	eax, eax
	mov	edi, r15d
	mov	rdx, rcx
	mov	rcx, rbp
	mov	r8, rbx
	mov	r9, r14
	call	error
	add	rsp, 8
	pop	rbx
	pop	r14
	pop	r15
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40ca08

	.globl xstrtol_error
	.type xstrtol_error, @function
xstrtol_error:
	push	rbp
	push	r15
	push	r14
	push	rbx
	push	rax
	mov	r15d, r9d
	mov	r14, r8
	mov	eax, esi
	dec	edi
	cmp	edi, 4
	jae	.label_1066
	movsxd	rsi, edi
	mov	rsi,  qword ptr [word ptr [+ (rsi * 8) + label_1067]]
	cdqe	
	test	eax, eax
	js	.label_1068
	shl	rax, 5
	mov	rbx, qword ptr [rcx + rax]
	mov	ebp, OFFSET FLAT:label_1065
	jmp	.label_1069
.label_1066:
	call	abort
	.section	.text
	.align	32
	#Procedure 0x40ca43
	.globl sub_40ca43
	.type sub_40ca43, @function
sub_40ca43:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40ca50

	.globl xstrtol_fatal
	.type xstrtol_fatal, @function
xstrtol_fatal:
	push	rax
	mov	r9d,  dword ptr [dword ptr [rip + exit_failure]]
	call	xstrtol_error
	call	abort
	.section	.text
	.align	32
	#Procedure 0x40ca62
	.globl sub_40ca62
	.type sub_40ca62, @function
sub_40ca62:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40ca70

	.globl dup_safer
	.type dup_safer, @function
dup_safer:
	xor	esi, esi
	mov	edx, 3
	xor	eax, eax
	jmp	rpl_fcntl
	.section	.text
	.align	32
	#Procedure 0x40ca7e
	.globl sub_40ca7e
	.type sub_40ca7e, @function
sub_40ca7e:

	nop	
	.section	.text
	.align	32
	#Procedure 0x40ca80
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
	#Procedure 0x40ca8d
	.globl sub_40ca8d
	.type sub_40ca8d, @function
sub_40ca8d:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x40ca90

	.globl bkm_scale_by_power_0
	.type bkm_scale_by_power_0, @function
bkm_scale_by_power_0:
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
	je	.label_1070
	xor	ebp, ebp
	nop	word ptr [rax + rax]
.label_1071:
	mov	rdi, r15
	mov	esi, r14d
	call	bkm_scale_0
	or	ebp, eax
	dec	ebx
	jne	.label_1071
.label_1070:
	mov	eax, ebp
	add	rsp, 8
	pop	rbx
	pop	r14
	pop	r15
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40cace
	.globl sub_40cace
	.type sub_40cace, @function
sub_40cace:

	nop	
	.section	.text
	.align	32
	#Procedure 0x40cad0

	.globl re_node_set_contains
	.type re_node_set_contains, @function
re_node_set_contains:
	mov	r9, qword ptr [rdi + 8]
	xor	eax, eax
	test	r9, r9
	jle	.label_1072
	xor	edx, edx
	dec	r9
	je	.label_1074
	mov	r8, qword ptr [rdi + 0x10]
	xor	edx, edx
	nop	dword ptr [rax + rax]
.label_1073:
	lea	rax, [r9 + rdx]
	shr	rax, 1
	cmp	qword ptr [r8 + rax*8], rsi
	lea	rcx, [rax + 1]
	cmovl	rdx, rcx
	cmovge	r9, rax
	cmp	rdx, r9
	jb	.label_1073
.label_1074:
	mov	rcx, qword ptr [rdi + 0x10]
	xor	eax, eax
	cmp	qword ptr [rcx + rdx*8], rsi
	lea	rcx, [rdx + 1]
	cmove	rax, rcx
.label_1072:
	ret	
	.section	.text
	.align	32
	#Procedure 0x40cb1f
	.globl sub_40cb1f
	.type sub_40cb1f, @function
sub_40cb1f:

	nop	
	.section	.text
	.align	32
	#Procedure 0x40cb20

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
	jne	.label_1075
	call	default_block_size
	mov	qword ptr [rbx], rax
	mov	eax, 4
.label_1075:
	pop	rbx
	ret	
	.section	.text
	.align	32
	#Procedure 0x40cb47
	.globl sub_40cb47
	.type sub_40cb47, @function
sub_40cb47:

	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40cb50

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
.label_1187:
	mov	r11, rbp
	xor	r14d, r14d
	mov	ecx, r15d
	cmp	r15d, 0xa
	ja	.label_1189
	mov	edi, 7
	mov	r13b, 1
	xor	esi, esi
	mov	r8, qword ptr [rsp + 0x30]
	jmp	qword ptr [word ptr [+ (rcx * 8) + label_1079]]
.label_3087:
	mov	r14d, r10d
	mov	edi, OFFSET FLAT:label_1084
	mov	esi, r15d
	mov	rbx, r11
	mov	ebp, r9d
	call	gettext_quote
	mov	qword ptr [rsp + 0x78], rax
	mov	edi, OFFSET FLAT:label_1091
	mov	esi, r15d
	call	gettext_quote
	mov	r9d, ebp
	mov	r10d, r14d
	mov	r11, rbx
	mov	qword ptr [rsp + 0x70], rax
.label_3088:
	mov	dword ptr [rsp + 0x48], r9d
	mov	byte ptr [rsp + 0x17], r10b
	test	r12b, 1
	mov	r14d, 0
	mov	rcx, qword ptr [rsp + 0x78]
	jne	.label_1102
	mov	al, byte ptr [rcx]
	test	al, al
	mov	r14d, 0
	je	.label_1102
	xor	r14d, r14d
.label_1117:
	cmp	r14, r11
	jae	.label_1111
	mov	rdx, qword ptr [rsp + 8]
	mov	byte ptr [rdx + r14], al
.label_1111:
	movzx	eax, byte ptr [rcx + r14 + 1]
	inc	r14
	test	al, al
	jne	.label_1117
.label_1102:
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
	jmp	.label_1119
.label_3080:
	xor	edi, edi
	xor	r14d, r14d
	mov	r13d, eax
	xor	esi, esi
	jmp	.label_1119
.label_3083:
	mov	al, 1
.label_3081:
	mov	r12b, 1
.label_3084:
	test	r12b, 1
	mov	cl, 1
	je	.label_1133
	mov	ecx, eax
.label_1133:
	mov	al, cl
.label_3082:
	test	r12b, 1
	jne	.label_1136
	test	r11, r11
	je	.label_1138
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx], 0x27
.label_1138:
	mov	r14d, 1
	jmp	.label_1142
.label_1136:
	xor	r14d, r14d
.label_1142:
	mov	ecx, OFFSET FLAT:label_1091
	mov	qword ptr [rsp + 0x40], rcx
	mov	ecx, 1
	mov	qword ptr [rsp + 0x38], rcx
	mov	r13d, eax
	mov	sil, r12b
	mov	edi, 2
	jmp	.label_1119
.label_3085:
	test	r12b, 1
	jne	.label_1153
	test	r11, r11
	je	.label_1154
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax], 0x22
.label_1154:
	mov	r14d, 1
	jmp	.label_1157
.label_3086:
	mov	r13b, 1
	mov	edi, 5
	xor	r14d, r14d
	mov	eax, OFFSET FLAT:label_1160
	mov	qword ptr [rsp + 0x40], rax
	mov	eax, 1
	mov	qword ptr [rsp + 0x38], rax
	mov	sil, 1
	jmp	.label_1119
.label_1153:
	xor	r14d, r14d
.label_1157:
	mov	eax, OFFSET FLAT:label_1160
	mov	qword ptr [rsp + 0x40], rax
	mov	eax, 1
	mov	qword ptr [rsp + 0x38], rax
	mov	r13b, 1
	mov	sil, r12b
	mov	edi, 5
	nop	word ptr cs:[rax + rax]
.label_1119:
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
	jmp	.label_1179
	.section	.text
	.align	32
	#Procedure 0x40ce2c
	.globl sub_40ce2c
	.type sub_40ce2c, @function
sub_40ce2c:

	nop	dword ptr [rax]
.label_1112:
	inc	rsi
.label_1179:
	cmp	rbp, -1
	je	.label_1090
	cmp	rsi, rbp
	jne	.label_1093
	jmp	.label_1095
	.section	.text
	.align	32
	#Procedure 0x40ce43
	.globl sub_40ce43
	.type sub_40ce43, @function
sub_40ce43:

	nop	word ptr cs:[rax + rax]
.label_1090:
	cmp	byte ptr [rdi + rsi], 0
	je	.label_1095
.label_1093:
	cmp	byte ptr [rsp + 0x2f], 0
	je	.label_1105
	mov	rax, qword ptr [rsp + 0x38]
	lea	rbx, [rsi + rax]
	cmp	rax, 2
	jb	.label_1107
	cmp	rbp, -1
	jne	.label_1107
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
.label_1107:
	cmp	rbx, rbp
	jbe	.label_1188
.label_1105:
	xor	r8d, r8d
.label_1143:
	movzx	r15d, byte ptr [rdi + rsi]
	cmp	r15, 0x7e
	ja	.label_1120
	xor	edx, edx
	mov	r13b, 1
	mov	cl, 0x6e
	mov	bl, 0x61
	xor	eax, eax
	jmp	qword ptr [word ptr [+ (r15 * 8) + label_1124]]
.label_2793:
	test	rsi, rsi
	jne	.label_1115
	jmp	.label_1129
	.section	.text
	.align	32
	#Procedure 0x40cede
	.globl sub_40cede
	.type sub_40cede, @function
sub_40cede:

	nop	
.label_1188:
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
	jne	.label_1140
	cmp	byte ptr [rsp + 7], 0
	mov	rdi, qword ptr [rsp + 0x30]
	mov	r11, rbx
	mov	r10d, r15d
	mov	rax, qword ptr [rsp + 0x68]
	mov	r9d, ebp
	mov	rsi, r12
	mov	r12, rax
	mov	rbp, qword ptr [rsp + 0x20]
	je	.label_1143
	jmp	.label_1083
.label_1140:
	mov	rdi, qword ptr [rsp + 0x30]
	mov	r11, rbx
	mov	r10d, r15d
	mov	rax, qword ptr [rsp + 0x68]
	mov	r9d, ebp
	mov	rsi, r12
	mov	r12, rax
	mov	rbp, qword ptr [rsp + 0x20]
	jmp	.label_1143
.label_2797:
	xor	eax, eax
	cmp	rbp, -1
	je	.label_1089
	test	rsi, rsi
	jne	.label_1162
	cmp	rbp, 1
	je	.label_1129
	xor	r13d, r13d
	jmp	.label_1098
.label_2786:
	cmp	byte ptr [rsp + 0x1e], 0
	je	.label_1167
	cmp	byte ptr [rsp + 7], 0
	jne	.label_1114
	cmp	r12d, 2
	jne	.label_1170
	mov	eax, r9d
	and	al, 1
	jne	.label_1170
	cmp	r14, r11
	jae	.label_1171
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], 0x27
.label_1171:
	lea	rax, [r14 + 1]
	cmp	rax, r11
	jae	.label_1176
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + rax], 0x24
.label_1176:
	lea	rax, [r14 + 2]
	cmp	rax, r11
	jae	.label_1181
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + rax], 0x27
.label_1181:
	add	r14, 3
	mov	r9b, 1
.label_1170:
	mov	rcx, r14
	cmp	rcx, r11
	jae	.label_1186
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + rcx], 0x5c
.label_1186:
	lea	r14, [rcx + 1]
	mov	al, 1
	mov	r15b, 0x30
	cmp	r12d, 2
	je	.label_1077
	lea	rdx, [rsi + 1]
	cmp	rdx, rbp
	jae	.label_1077
	mov	dl, byte ptr [rdi + rdx]
	add	dl, 0xd0
	cmp	dl, 9
	ja	.label_1077
	cmp	r14, r11
	jae	.label_1125
	mov	rdx, qword ptr [rsp + 8]
	mov	byte ptr [rdx + r14], 0x30
.label_1125:
	lea	rdx, [rcx + 2]
	cmp	rdx, r11
	jae	.label_1087
	mov	rbx, qword ptr [rsp + 8]
	mov	byte ptr [rbx + rdx], 0x30
.label_1087:
	add	rcx, 3
	xor	r13d, r13d
	mov	r14, rcx
	jmp	.label_1098
.label_2787:
	mov	bl, 0x62
	jmp	.label_1099
.label_2788:
	mov	cl, 0x74
	jmp	.label_1104
.label_2789:
	mov	bl, 0x76
	jmp	.label_1099
.label_2790:
	mov	bl, 0x66
	jmp	.label_1099
.label_2791:
	mov	cl, 0x72
	jmp	.label_1104
.label_2794:
	mov	r15b, 0x27
	mov	al, 1
	mov	qword ptr [rsp + 0xa0], rax
	cmp	r12d, 2
	jne	.label_1110
	cmp	byte ptr [rsp + 7], 0
	jne	.label_1114
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
	jae	.label_1118
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], 0x27
.label_1118:
	lea	rax, [r14 + 1]
	cmp	rax, r11
	jae	.label_1126
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + rax], 0x5c
.label_1126:
	lea	rax, [r14 + 2]
	cmp	rax, r11
	jae	.label_1130
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + rax], 0x27
.label_1130:
	add	r14, 3
	xor	r9d, r9d
.label_1110:
	xor	eax, eax
	mov	r13b, 1
	jmp	.label_1098
.label_2795:
	mov	r15b, 0x3f
	cmp	r12d, 5
	je	.label_1139
	cmp	r12d, 2
	jne	.label_1115
	cmp	byte ptr [rsp + 7], 0
	je	.label_1115
	jmp	.label_1114
.label_2796:
	cmp	r12d, 2
	jne	.label_1150
	cmp	byte ptr [rsp + 7], 0
	jne	.label_1114
	mov	r15b, 0x5c
	xor	eax, eax
	xor	r13d, r13d
	jmp	.label_1100
.label_1120:
	mov	dword ptr [rsp + 0x4c], r8d
	mov	dword ptr [rsp + 0x48], r9d
	mov	byte ptr [rsp + 0x17], r10b
	mov	qword ptr [rsp + 0x98], r11
	cmp	qword ptr [rsp + 0xb0], 1
	jne	.label_1173
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
.label_1096:
	and	r13b, 1
	mov	r8d, r13d
	or	r8b, byte ptr [rsp + 0x2b]
	mov	qword ptr [rsp + 0x58], r12
	cmp	r12, 1
	mov	r11, qword ptr [rsp + 0x98]
	mov	r10b, byte ptr [rsp + 0x17]
	mov	r12, qword ptr [rsp + 0x68]
	mov	r9d, dword ptr [rsp + 0x48]
	ja	.label_1169
	test	r8b, r8b
	je	.label_1169
	xor	eax, eax
	mov	rbp, qword ptr [rsp + 0x20]
	mov	r8d, dword ptr [rsp + 0x4c]
	jmp	.label_1098
.label_1089:
	test	rsi, rsi
	jne	.label_1156
	mov	cl, byte ptr [rdi + 1]
	test	cl, cl
	jne	.label_1156
.label_1129:
	mov	dl, 1
.label_2792:
	cmp	byte ptr [rsp + 0x1f], 0
	je	.label_1114
	xor	eax, eax
	mov	r13b, dl
	nop	word ptr [rax + rax]
.label_1098:
	cmp	byte ptr [rsp + 0x2e], 0
	je	.label_1080
	cmp	qword ptr [rsp + 0xf0], 0
	jne	.label_1081
	jmp	.label_1086
	.section	.text
	.align	32
	#Procedure 0x40d224
	.globl sub_40d224
	.type sub_40d224, @function
sub_40d224:

	nop	word ptr cs:[rax + rax]
.label_1080:
	cmp	byte ptr [rsp + 0x2d], 0
	je	.label_1086
.label_1081:
	mov	ebx, r8d
	mov	r8, rsi
	mov	ecx, r15d
	shr	cl, 5
	movzx	edx, cl
	mov	esi, 1
	mov	ecx, r15d
	shl	esi, cl
	test	bl, bl
	jne	.label_1092
	mov	rcx, qword ptr [rsp + 0xf0]
	and	esi, dword ptr [rcx + rdx*4]
	mov	ebx, r15d
	mov	rsi, r8
	je	.label_1100
	jmp	.label_1109
	.section	.text
	.align	32
	#Procedure 0x40d26d
	.globl sub_40d26d
	.type sub_40d26d, @function
sub_40d26d:

	nop	dword ptr [rax]
.label_1086:
	test	r8b, r8b
	mov	ebx, r15d
	jne	.label_1109
	jmp	.label_1100
.label_1092:
	mov	ebx, r15d
	mov	rsi, r8
	jmp	.label_1109
.label_1167:
	cmp	dword ptr [rsp + 0x90], 0
	jne	.label_1112
	xor	r15d, r15d
	jmp	.label_1115
.label_1150:
	mov	cl, 0x5c
	cmp	byte ptr [rsp + 0x2a], 0
	je	.label_1104
	xor	eax, eax
	mov	r15b, 0x5c
	xor	r13d, r13d
	jmp	.label_1100
.label_1104:
	cmp	byte ptr [rsp + 0x1f], 0
	mov	ebx, ecx
	je	.label_1114
.label_1099:
	xor	eax, eax
	cmp	byte ptr [rsp + 0x1e], 0
	mov	r13d, 0
	je	.label_1098
	nop	word ptr cs:[rax + rax]
.label_1109:
	cmp	byte ptr [rsp + 7], 0
	jne	.label_1114
	cmp	r12d, 2
	jne	.label_1134
	mov	eax, r9d
	and	al, 1
	jne	.label_1134
	cmp	r14, r11
	jae	.label_1137
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], 0x27
.label_1137:
	lea	rax, [r14 + 1]
	cmp	rax, r11
	jae	.label_1088
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + rax], 0x24
.label_1088:
	lea	rax, [r14 + 2]
	cmp	rax, r11
	jae	.label_1148
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + rax], 0x27
.label_1148:
	add	r14, 3
	mov	r9b, 1
.label_1134:
	cmp	r14, r11
	jae	.label_1151
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], 0x5c
.label_1151:
	inc	r14
	jmp	.label_1168
.label_1173:
	mov	qword ptr [rsp + 0x80], 0
	cmp	rbp, -1
	jne	.label_1158
	mov	rbx, rsi
	call	strlen
	mov	rsi, rbx
	mov	rdi, qword ptr [rsp + 0x30]
	mov	rbp, rax
.label_1158:
	lea	rax, [rdi + rsi]
	mov	qword ptr [rsp + 0x58], rax
	mov	r13b, 1
	xor	r12d, r12d
	lea	rax, [rsp + 0x80]
	mov	rcx, rax
	mov	qword ptr [rsp + 0x20], rbp
	mov	qword ptr [rsp + 0x50], rsi
.label_1101:
	lea	rbx, [r12 + rsi]
	lea	rsi, [rdi + rbx]
	mov	rdx, rbp
	sub	rdx, rbx
	lea	rdi, [rsp + 0x94]
	call	rpl_mbrtowc
	mov	rbp, rax
	test	rbp, rbp
	je	.label_1174
	cmp	rbp, -1
	movabs	rsi, 0x20000002b
	je	.label_1178
	cmp	rbp, -2
	je	.label_1127
	cmp	rbp, 1
	seta	al
	and	al, byte ptr [rsp + 0x2c]
	cmp	al, 1
	mov	rdi, qword ptr [rsp + 0x30]
	mov	r11, qword ptr [rsp + 0x98]
	jne	.label_1184
	mov	rax, qword ptr [rsp + 0x58]
	lea	rax, [rax + r12]
	mov	ecx, 1
	nop	word ptr cs:[rax + rax]
.label_1152:
	movsx	edx, byte ptr [rax + rcx]
	add	edx, -0x5b
	cmp	edx, 0x21
	ja	.label_1113
	bt	rsi, rdx
	jb	.label_1083
.label_1113:
	inc	rcx
	cmp	rcx, rbp
	jb	.label_1152
.label_1184:
	mov	edi, dword ptr [rsp + 0x94]
	call	iswprint
	test	eax, eax
	jne	.label_1094
	xor	r13d, r13d
.label_1094:
	lea	rdi, [rsp + 0x80]
	add	r12, rbp
	mov	rbx, rdi
	call	mbsinit
	mov	rcx, rbx
	test	eax, eax
	mov	rdi, qword ptr [rsp + 0x30]
	mov	rbp, qword ptr [rsp + 0x20]
	mov	rsi, qword ptr [rsp + 0x50]
	je	.label_1101
	jmp	.label_1096
.label_1077:
	xor	r13d, r13d
	jmp	.label_1098
.label_1156:
	mov	rbp, -1
	xor	r13d, r13d
	jmp	.label_1098
.label_1139:
	cmp	dword ptr [rsp + 0x8c], 0
	je	.label_1115
	lea	rcx, [rsi + 2]
	cmp	rcx, rbp
	jae	.label_1115
	cmp	byte ptr [rdi + rsi + 1], 0x3f
	jne	.label_1115
	movsx	edx, byte ptr [rdi + rcx]
	xor	eax, eax
	cmp	edx, 0x3e
	ja	.label_1085
	mov	rbx, rsi
	movabs	rsi, 0x7000a38200000000
	bt	rsi, rdx
	jae	.label_1144
	cmp	byte ptr [rsp + 7], 0
	jne	.label_1114
	mov	r15b, byte ptr [rdi + rcx]
	cmp	r14, r11
	jae	.label_1131
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], 0x3f
.label_1131:
	lea	rax, [r14 + 1]
	cmp	rax, r11
	jae	.label_1159
	mov	rdx, qword ptr [rsp + 8]
	mov	byte ptr [rdx + rax], 0x22
.label_1159:
	lea	rax, [r14 + 2]
	cmp	rax, r11
	jae	.label_1141
	mov	rdx, qword ptr [rsp + 8]
	mov	byte ptr [rdx + rax], 0x22
.label_1141:
	lea	rax, [r14 + 3]
	cmp	rax, r11
	jae	.label_1147
	mov	rdx, qword ptr [rsp + 8]
	mov	byte ptr [rdx + rax], 0x3f
.label_1147:
	add	r14, 4
	xor	eax, eax
	mov	rsi, rcx
	xor	r13d, r13d
	jmp	.label_1098
.label_1115:
	xor	eax, eax
.label_1162:
	xor	r13d, r13d
	jmp	.label_1098
.label_1169:
	add	qword ptr [rsp + 0x58], rsi
	xor	eax, eax
	mov	rbp, qword ptr [rsp + 0x20]
	jmp	.label_1155
	.section	.text
	.align	32
	#Procedure 0x40d553
	.globl sub_40d553
	.type sub_40d553, @function
sub_40d553:

	nop	word ptr cs:[rax + rax]
.label_1116:
	inc	r14
	mov	r15b, byte ptr [rdi + rsi + 1]
	mov	rsi, rdx
.label_1155:
	test	r8b, r8b
	je	.label_1163
	mov	ecx, dword ptr [rsp + 0x4c]
	test	cl, 1
	je	.label_1164
	cmp	r14, r11
	jae	.label_1165
	mov	rdx, qword ptr [rsp + 8]
	mov	byte ptr [rdx + r14], 0x5c
.label_1165:
	inc	r14
	mov	dword ptr [rsp + 0x4c], 0
	jmp	.label_1164
	.section	.text
	.align	32
	#Procedure 0x40d59c
	.globl sub_40d59c
	.type sub_40d59c, @function
sub_40d59c:

	nop	dword ptr [rax]
.label_1163:
	cmp	byte ptr [rsp + 7], 0
	jne	.label_1083
	cmp	r12d, 2
	jne	.label_1175
	mov	eax, r9d
	and	al, 1
	jne	.label_1175
	cmp	r14, r11
	jae	.label_1177
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], 0x27
.label_1177:
	lea	rax, [r14 + 1]
	cmp	rax, r11
	jae	.label_1180
	mov	rdx, qword ptr [rsp + 8]
	mov	byte ptr [rdx + rax], 0x24
.label_1180:
	lea	rax, [r14 + 2]
	cmp	rax, r11
	jae	.label_1146
	mov	rdx, qword ptr [rsp + 8]
	mov	byte ptr [rdx + rax], 0x27
.label_1146:
	add	r14, 3
	mov	r9b, 1
.label_1175:
	cmp	r14, r11
	jae	.label_1145
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], 0x5c
.label_1145:
	lea	rax, [r14 + 1]
	cmp	rax, r11
	jae	.label_1128
	mov	edx, r15d
	shr	dl, 6
	or	dl, 0x30
	mov	rbx, qword ptr [rsp + 8]
	mov	byte ptr [rbx + rax], dl
.label_1128:
	lea	rax, [r14 + 2]
	cmp	rax, r11
	jae	.label_1082
	mov	edx, r15d
	shr	dl, 3
	and	dl, 7
	or	dl, 0x30
	mov	rbx, qword ptr [rsp + 8]
	mov	byte ptr [rbx + rax], dl
.label_1082:
	add	r14, 3
	and	r15b, 7
	or	r15b, 0x30
	mov	al, 1
.label_1164:
	lea	rdx, [rsi + 1]
	cmp	qword ptr [rsp + 0x58], rdx
	jbe	.label_1100
	test	r9b, 1
	je	.label_1103
	mov	ebx, eax
	and	bl, 1
	jne	.label_1103
	mov	rbx, rsi
	cmp	r14, r11
	jae	.label_1106
	mov	rsi, qword ptr [rsp + 8]
	mov	byte ptr [rsi + r14], 0x27
.label_1106:
	lea	rsi, [r14 + 1]
	cmp	rsi, r11
	jae	.label_1185
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + rsi], 0x27
.label_1185:
	add	r14, 2
	xor	r9d, r9d
	mov	rsi, rbx
.label_1103:
	cmp	r14, r11
	jae	.label_1116
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + r14], r15b
	jmp	.label_1116
	.section	.text
	.align	32
	#Procedure 0x40d6a3
	.globl sub_40d6a3
	.type sub_40d6a3, @function
sub_40d6a3:

	nop	word ptr cs:[rax + rax]
.label_1100:
	test	r9b, 1
	je	.label_1121
	and	al, 1
	jne	.label_1121
	cmp	r14, r11
	jae	.label_1123
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], 0x27
.label_1123:
	lea	rax, [r14 + 1]
	cmp	rax, r11
	jae	.label_1122
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + rax], 0x27
.label_1122:
	add	r14, 2
	xor	r9d, r9d
.label_1121:
	mov	ebx, r15d
.label_1168:
	cmp	r14, r11
	jae	.label_1132
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], bl
.label_1132:
	inc	r14
	shl	r13b, 7
	sar	r13b, 7
	and	r13b, r10b
	mov	r10d, r13d
	jmp	.label_1112
.label_1178:
	xor	r13d, r13d
.label_1174:
	mov	rdi, qword ptr [rsp + 0x30]
	mov	rsi, qword ptr [rsp + 0x50]
	jmp	.label_1096
.label_1127:
	mov	rbp, qword ptr [rsp + 0x20]
	cmp	rbx, rbp
	mov	rdi, qword ptr [rsp + 0x30]
	jae	.label_1149
	mov	rsi, qword ptr [rsp + 0x50]
.label_1172:
	mov	rax, qword ptr [rsp + 0x58]
	cmp	byte ptr [rax + r12], 0
	je	.label_1097
	lea	rax, [rsi + r12 + 1]
	inc	r12
	cmp	rax, rbp
	jb	.label_1172
	xor	r13d, r13d
	jmp	.label_1096
.label_1149:
	xor	r13d, r13d
	mov	rsi, qword ptr [rsp + 0x50]
	jmp	.label_1096
.label_1097:
	xor	r13d, r13d
	jmp	.label_1096
.label_1085:
	xor	r13d, r13d
	jmp	.label_1098
.label_1144:
	xor	r13d, r13d
	mov	rsi, rbx
	jmp	.label_1098
	.section	.text
	.align	32
	#Procedure 0x40d778
	.globl sub_40d778
	.type sub_40d778, @function
sub_40d778:

	nop	dword ptr [rax + rax]
.label_1095:
	test	r14, r14
	setne	al
	cmp	r12d, 2
	setne	dl
	mov	rcx, qword ptr [rsp + 0xa8]
	and	cl, 1
	mov	qword ptr [rsp + 0x20], rbp
	je	.label_1166
	or	dl, al
	je	.label_1083
.label_1166:
	test	cl, cl
	setne	al
	cmp	r12d, 2
	setne	dl
	mov	rsi, qword ptr [rsp + 0xa0]
	test	sil, 1
	mov	bl, byte ptr [rsp + 0x1d]
	mov	rsi, qword ptr [rsp + 0xa8]
	je	.label_1182
	or	dl, al
	jne	.label_1182
	test	r10b, 1
	jne	.label_1183
	cmp	qword ptr [rsp + 0x60], 0
	je	.label_1182
	test	r11, r11
	mov	r15d, r12d
	mov	al, bl
	mov	r12d, esi
	mov	rbp, qword ptr [rsp + 0x60]
	je	.label_1187
.label_1182:
	mov	rdx, qword ptr [rsp + 0x40]
	test	rdx, rdx
	je	.label_1190
	test	cl, cl
	mov	rcx, qword ptr [rsp + 8]
	jne	.label_1078
	mov	al, byte ptr [rdx]
	test	al, al
	je	.label_1078
	inc	rdx
	nop	word ptr cs:[rax + rax]
.label_1161:
	cmp	r14, r11
	jae	.label_1108
	mov	byte ptr [rcx + r14], al
.label_1108:
	inc	r14
	movzx	eax, byte ptr [rdx]
	inc	rdx
	test	al, al
	jne	.label_1161
	jmp	.label_1078
.label_1114:
	mov	qword ptr [rsp + 0x20], rbp
.label_1083:
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
.label_1135:
	mov	r14, rax
.label_1076:
	mov	rax, r14
	add	rsp, 0xb8
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_1183:
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
	jmp	.label_1135
.label_1190:
	mov	rcx, qword ptr [rsp + 8]
.label_1078:
	cmp	r14, r11
	jae	.label_1076
	mov	byte ptr [rcx + r14], 0
	jmp	.label_1076
.label_1189:
	call	abort
	.section	.text
	.align	32
	#Procedure 0x40d90c
	.globl sub_40d90c
	.type sub_40d90c, @function
sub_40d90c:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x40d910

	.globl parse_sub_exp
	.type parse_sub_exp, @function
parse_sub_exp:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x18
	mov	r13, r9
	mov	qword ptr [rsp + 8], r8
	mov	rbp, rcx
	mov	rbx, rdx
	mov	r14, rsi
	mov	r15, rdi
	mov	rax, qword ptr [r14]
	mov	qword ptr [rsp + 0x10], rax
	mov	r12, qword ptr [r14 + 0x30]
	lea	rax, [r12 + 1]
	mov	qword ptr [r14 + 0x30], rax
	mov	rdx, rbp
	or	rdx, 0x800000
	mov	rdi, rbx
	mov	rsi, r15
	call	fetch_token
	xor	r8d, r8d
	cmp	byte ptr [rbx + 8], 9
	je	.label_1195
	mov	rdi, r15
	mov	rsi, r14
	mov	rdx, rbx
	mov	rcx, rbp
	mov	r8, qword ptr [rsp + 8]
	mov	r9, r13
	call	parse_reg_exp
	mov	r8, rax
	xor	eax, eax
	cmp	dword ptr [r13], 0
	jne	.label_1191
	cmp	byte ptr [rbx + 8], 9
	jne	.label_1193
	xor	eax, eax
	cmp	dword ptr [r13], 0
	jne	.label_1191
.label_1195:
	cmp	r12, 8
	mov	rdi, qword ptr [rsp + 0x10]
	ja	.label_1194
	mov	eax, 1
	mov	ecx, r12d
	shl	eax, cl
	cdqe	
	or	qword ptr [rdi + 0xa8], rax
.label_1194:
	xor	edx, edx
	mov	ecx, 0x11
	mov	rsi, r8
	call	create_tree
	test	rax, rax
	je	.label_1192
	mov	qword ptr [rax + 0x28], r12
.label_1191:
	add	rsp, 0x18
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_1192:
	mov	dword ptr [r13], 0xc
	xor	eax, eax
	jmp	.label_1191
.label_1193:
	test	r8, r8
	je	.label_1196
	mov	esi, OFFSET FLAT:free_tree
	xor	edx, edx
	mov	rdi, r8
	call	postorder
.label_1196:
	mov	dword ptr [r13], 8
	xor	eax, eax
	jmp	.label_1191
	.section	.text
	.align	32
	#Procedure 0x40da0a
	.globl sub_40da0a
	.type sub_40da0a, @function
sub_40da0a:

	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40da10

	.globl equal_tm
	.type equal_tm, @function
equal_tm:
	push	rbx
	mov	eax, dword ptr [rsi]
	mov	ecx, dword ptr [rsi + 4]
	xor	eax, dword ptr [rdi]
	xor	ecx, dword ptr [rdi + 4]
	or	ecx, eax
	mov	eax, dword ptr [rsi + 8]
	xor	eax, dword ptr [rdi + 8]
	mov	edx, dword ptr [rsi + 0xc]
	xor	edx, dword ptr [rdi + 0xc]
	or	edx, eax
	or	edx, ecx
	mov	eax, dword ptr [rsi + 0x10]
	xor	eax, dword ptr [rdi + 0x10]
	mov	ebx, dword ptr [rsi + 0x14]
	xor	ebx, dword ptr [rdi + 0x14]
	or	ebx, eax
	or	ebx, edx
	mov	edi, dword ptr [rdi + 0x20]
	mov	esi, dword ptr [rsi + 0x20]
	call	isdst_differ
	movzx	ecx, al
	xor	eax, eax
	or	ecx, ebx
	sete	al
	pop	rbx
	ret	
	.section	.text
	.align	32
	#Procedure 0x40da54
	.globl sub_40da54
	.type sub_40da54, @function
sub_40da54:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40da60

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
	jmp	.label_1199
	.section	.text
	.align	32
	#Procedure 0x40daa9
	.globl sub_40daa9
	.type sub_40daa9, @function
sub_40daa9:

	nop	dword ptr [rax]
.label_1197:
	add	rbx, r13
	mov	rdi, rbx
	mov	rsi, qword ptr [rsp + 8]
	mov	rdx, r14
	call	memcpy
.label_1199:
	movzx	eax, byte ptr [r15]
	test	rax, rax
	je	.label_1198
	cmp	al, 0x7f
	cmovae	rax, r12
	inc	r15
	mov	rbp, rax
.label_1198:
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
	jne	.label_1197
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
	#Procedure 0x40db0f
	.globl sub_40db0f
	.type sub_40db0f, @function
sub_40db0f:

	nop	
	.section	.text
	.align	32
	#Procedure 0x40db10
	.globl c_isxdigit
	.type c_isxdigit, @function
c_isxdigit:

	add	edi, -0x30
	cmp	edi, 0x36
	ja	.label_1200
	movabs	rax, 0x7e0000007e03ff
	mov	ecx, edi
	shr	rax, cl
	and	eax, 1
	ret	
.label_1200:
	xor	eax, eax
	ret	
	.section	.text
	.align	32
	#Procedure 0x40db2e
	.globl sub_40db2e
	.type sub_40db2e, @function
sub_40db2e:

	nop	
.label_1201:
	mov	word ptr [rsi + 0x74], dx
	xor	eax, eax
	ret	
	.section	.text
	.align	32
	#Procedure 0x40db37
	.globl sub_40db37
	.type sub_40db37, @function
sub_40db37:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40db45

	.globl rpl_fts_set
	.type rpl_fts_set, @function
rpl_fts_set:
	cmp	edx, 5
	jb	.label_1201
	push	rax
	call	__errno_location
	mov	dword ptr [rax], 0x16
	mov	eax, 1
	add	rsp, 8
	ret	
	.section	.text
	.align	32
	#Procedure 0x40db60

	.globl sub_epsilon_src_nodes
	.type sub_epsilon_src_nodes, @function
sub_epsilon_src_nodes:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x38
	mov	qword ptr [rsp + 0x30], rcx
	mov	rbx, rsi
	mov	qword ptr [rsp + 8], rdi
	mov	rax, qword ptr [rdi + 0x38]
	lea	rcx, [rbx + rbx*2]
	xorps	xmm0, xmm0
	movaps	xmmword ptr [rsp + 0x10], xmm0
	mov	qword ptr [rsp + 0x20], 0
	cmp	qword ptr [rax + rcx*8 + 8], 0
	jle	.label_1204
	mov	qword ptr [rsp], rdx
	lea	r12, [rax + rcx*8]
	xor	r14d, r14d
	nop	dword ptr [rax + rax]
.label_1208:
	mov	rax, qword ptr [r12 + 0x10]
	mov	rax, qword ptr [rax + r14*8]
	cmp	rax, rbx
	je	.label_1202
	mov	rcx, qword ptr [rsp + 8]
	mov	rcx, qword ptr [rcx]
	mov	rdx, rax
	shl	rdx, 4
	test	byte ptr [rcx + rdx + 8], 8
	je	.label_1202
	mov	rcx, qword ptr [rsp + 8]
	mov	rcx, qword ptr [rcx + 0x28]
	lea	r13, [rax + rax*2]
	mov	rax, qword ptr [rcx + r13*8 + 0x10]
	mov	r15, qword ptr [rax]
	mov	rbp, -1
	cmp	qword ptr [rcx + r13*8 + 8], 2
	jl	.label_1206
	mov	rbp, qword ptr [rax + 8]
.label_1206:
	mov	rdi, r12
	mov	rsi, r15
	call	re_node_set_contains
	test	rax, rax
	jne	.label_1203
	mov	rdi, qword ptr [rsp]
	mov	rsi, r15
	call	re_node_set_contains
	test	rax, rax
	jne	.label_1207
.label_1203:
	test	rbp, rbp
	jle	.label_1202
	mov	rdi, r12
	mov	rsi, rbp
	call	re_node_set_contains
	test	rax, rax
	jne	.label_1202
	mov	rdi, qword ptr [rsp]
	mov	rsi, rbp
	call	re_node_set_contains
	test	rax, rax
	je	.label_1202
.label_1207:
	mov	rax, qword ptr [rsp + 8]
	mov	rax, qword ptr [rax + 0x38]
	lea	rdx, [rax + r13*8]
	lea	rdi, [rsp + 0x10]
	mov	rsi, qword ptr [rsp + 0x30]
	call	re_node_set_add_intersect
	mov	ebp, eax
	test	ebp, ebp
	jne	.label_1209
	nop	word ptr cs:[rax + rax]
.label_1202:
	inc	r14
	mov	rax, qword ptr [r12 + 8]
	cmp	r14, rax
	jl	.label_1208
	test	rax, rax
	mov	r14, qword ptr [rsp]
	jle	.label_1204
	xor	ebx, ebx
	lea	r15, [rsp + 0x10]
	nop	word ptr cs:[rax + rax]
.label_1211:
	mov	rax, qword ptr [r12 + 0x10]
	mov	rbp, qword ptr [rax + rbx*8]
	mov	rdi, r15
	mov	rsi, rbp
	call	re_node_set_contains
	test	rax, rax
	jne	.label_1205
	mov	rdi, r14
	mov	rsi, rbp
	call	re_node_set_contains
	lea	rsi, [rax - 1]
	mov	rdi, r14
	call	re_node_set_remove_at
.label_1205:
	inc	rbx
	cmp	rbx, qword ptr [r12 + 8]
	jl	.label_1211
.label_1204:
	mov	rdi, qword ptr [rsp + 0x20]
	call	free
	xor	ebp, ebp
.label_1210:
	mov	eax, ebp
	add	rsp, 0x38
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_1209:
	mov	rdi, qword ptr [rsp + 0x20]
	call	free
	jmp	.label_1210
	.section	.text
	.align	32
	#Procedure 0x40dd13
	.globl sub_40dd13
	.type sub_40dd13, @function
sub_40dd13:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40dd20

	.globl new_exclude
	.type new_exclude, @function
new_exclude:
	mov	edi, 0x10
	jmp	xzalloc
	.section	.text
	.align	32
	#Procedure 0x40dd2a
	.globl sub_40dd2a
	.type sub_40dd2a, @function
sub_40dd2a:

	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40dd30

	.globl sift_ctx_init
	.type sift_ctx_init, @function
sift_ctx_init:
	mov	qword ptr [rdi], rsi
	mov	qword ptr [rdi + 8], rdx
	mov	qword ptr [rdi + 0x10], rcx
	mov	qword ptr [rdi + 0x18], r8
	xorps	xmm0, xmm0
	movups	xmmword ptr [rdi + 0x20], xmm0
	mov	qword ptr [rdi + 0x30], 0
	ret	
	.section	.text
	.align	32
	#Procedure 0x40dd4f
	.globl sub_40dd4f
	.type sub_40dd4f, @function
sub_40dd4f:

	nop	
	.section	.text
	.align	32
	#Procedure 0x40dd50

	.globl bkm_scale_0
	.type bkm_scale_0, @function
bkm_scale_0:
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
	#Procedure 0x40dd7d
	.globl sub_40dd7d
	.type sub_40dd7d, @function
sub_40dd7d:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x40dd80

	.globl parse
	.type parse, @function
parse:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x18
	mov	r14, rcx
	mov	rbx, rdx
	mov	r13, rsi
	mov	rbp, rdi
	mov	r15, qword ptr [r13]
	mov	qword ptr [r15 + 0xd8], rbx
	or	rdx, 0x800000
	lea	rdi, [rsp + 8]
	mov	rsi, rbp
	call	fetch_token
	xor	r12d, r12d
	xor	r8d, r8d
	mov	rdi, rbp
	mov	rsi, r13
	lea	rdx, [rsp + 8]
	mov	rcx, rbx
	mov	r9, r14
	call	parse_reg_exp
	mov	r13, rax
	test	r13, r13
	jne	.label_1215
	mov	eax, dword ptr [r14]
	test	eax, eax
	jne	.label_1213
.label_1215:
	xor	esi, esi
	xor	edx, edx
	mov	ecx, 2
	mov	rdi, r15
	call	create_tree
	mov	rbx, rax
	test	r13, r13
	je	.label_1216
	mov	ecx, 0x10
	mov	rdi, r15
	mov	rsi, r13
	mov	rdx, rbx
	call	create_tree
	mov	r12, rax
	jmp	.label_1214
.label_1212:
	mov	dword ptr [r14], 0xc
	xor	r12d, r12d
	jmp	.label_1213
.label_1216:
	mov	r12, rbx
.label_1214:
	test	rbx, rbx
	je	.label_1212
	test	r12, r12
	je	.label_1212
.label_1213:
	mov	rax, r12
	add	rsp, 0x18
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_1217:
	imul	rcx, r9
	mov	qword ptr [rdi], rcx
	xor	eax, eax
	ret	
	.section	.text
	.align	32
	#Procedure 0x40de4a
	.globl sub_40de4a
	.type sub_40de4a, @function
sub_40de4a:

	nop	word ptr [rax + rax]
.label_1218:
	mov	rax, r8
	cqo	
	idiv	r9
	cmp	rax, rcx
	jge	.label_1217
	mov	qword ptr [rdi], r8
	mov	eax, 1
	ret	
	.section	.text
	.align	32
	#Procedure 0x40de66

	.globl bkm_scale
	.type bkm_scale, @function
bkm_scale:
	movabs	r8, 0x7fffffffffffffff
	mov	rcx, qword ptr [rdi]
	movsxd	r9, esi
	lea	rsi, [r8 + 1]
	mov	rax, rsi
	cqo	
	idiv	r9
	cmp	rcx, rax
	jge	.label_1218
	mov	qword ptr [rdi], rsi
	mov	eax, 1
	ret	
	.section	.text
	.align	32
	#Procedure 0x40de90

	.globl di_ino_hash
	.type di_ino_hash, @function
di_ino_hash:
	xor	edx, edx
	mov	rax, rdi
	div	rsi
	mov	rax, rdx
	ret	
	.section	.text
	.align	32
	#Procedure 0x40de9c
	.globl sub_40de9c
	.type sub_40de9c, @function
sub_40de9c:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x40dea0

	.globl c_isupper
	.type c_isupper, @function
c_isupper:
	add	edi, -0x41
	cmp	edi, 0x1a
	setb	al
	ret	
	.section	.text
	.align	32
	#Procedure 0x40deaa
	.globl sub_40deaa
	.type sub_40deaa, @function
sub_40deaa:

	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40deb0

	.globl protect_fd
	.type protect_fd, @function
protect_fd:
	push	rbx
	mov	ebx, edi
	mov	edi, OFFSET FLAT:label_677
	xor	esi, esi
	xor	eax, eax
	call	open
	mov	ecx, eax
	mov	al, 1
	cmp	ecx, ebx
	je	.label_1219
	test	ecx, ecx
	js	.label_1220
	mov	edi, ecx
	call	close
	call	__errno_location
	mov	dword ptr [rax], 9
.label_1220:
	xor	eax, eax
.label_1219:
	pop	rbx
	ret	
	.section	.text
	.align	32
	#Procedure 0x40dee3
	.globl sub_40dee3
	.type sub_40dee3, @function
sub_40dee3:

	nop	word ptr cs:[rax + rax]
.label_1222:
	mov	r15, qword ptr [rbx]
.label_1221:
	mov	rax, r15
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	ret	
	.section	.text
	.align	32
	#Procedure 0x40df02

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
	call	safe_hasher
	mov	rbx, rax
	xor	r15d, r15d
	cmp	qword ptr [rbx], 0
	je	.label_1221
	test	rbx, rbx
	je	.label_1221
	xor	r15d, r15d
	nop	word ptr [rax + rax]
.label_1223:
	mov	rsi, qword ptr [rbx]
	cmp	rsi, r12
	je	.label_1222
	mov	rdi, r12
	call	qword ptr [r14 + 0x38]
	test	al, al
	jne	.label_1222
	mov	rbx, qword ptr [rbx + 8]
	test	rbx, rbx
	jne	.label_1223
	jmp	.label_1221
	.section	.text
	.align	32
	#Procedure 0x40df50
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
	xor	ebx, ebx
	cmp	r13, qword ptr [r12 + 8]
	jae	.label_1224
	xor	ebx, ebx
.label_1227:
	cmp	qword ptr [r13], 0
	je	.label_1225
	test	r13, r13
	je	.label_1225
	mov	rbp, r13
	nop	word ptr cs:[rax + rax]
.label_1226:
	mov	rdi, qword ptr [rbp]
	mov	rsi, r14
	call	r15
	test	al, al
	je	.label_1224
	inc	rbx
	mov	rbp, qword ptr [rbp + 8]
	test	rbp, rbp
	jne	.label_1226
.label_1225:
	add	r13, 0x10
	cmp	r13, qword ptr [r12 + 8]
	jb	.label_1227
.label_1224:
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
	#Procedure 0x40dfc7
	.globl sub_40dfc7
	.type sub_40dfc7, @function
sub_40dfc7:

	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40dfd0

	.globl clean_state_log_if_needed
	.type clean_state_log_if_needed, @function
clean_state_log_if_needed:
	push	rbp
	push	r15
	push	r14
	push	rbx
	push	rax
	mov	r14, rsi
	mov	rbx, rdi
	mov	rax, qword ptr [rbx + 0x40]
	mov	r15, qword ptr [rbx + 0xc0]
	cmp	rax, r14
	jg	.label_1228
	cmp	rax, qword ptr [rbx + 0x58]
	jl	.label_1231
.label_1228:
	mov	rax, qword ptr [rbx + 0x30]
	cmp	rax, r14
	jg	.label_1229
	cmp	rax, qword ptr [rbx + 0x58]
	jge	.label_1229
.label_1231:
	lea	esi, [r14 + 1]
	mov	rdi, rbx
	call	extend_buffers
	mov	ebp, eax
	test	ebp, ebp
	jne	.label_1230
.label_1229:
	xor	ebp, ebp
	cmp	r15, r14
	jge	.label_1230
	mov	rax, qword ptr [rbx + 0xb8]
	lea	rdi, [rax + r15*8 + 8]
	mov	rdx, r14
	sub	rdx, r15
	shl	rdx, 3
	xor	ebp, ebp
	xor	esi, esi
	call	memset
	mov	qword ptr [rbx + 0xc0], r14
.label_1230:
	mov	eax, ebp
	add	rsp, 8
	pop	rbx
	pop	r14
	pop	r15
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40e04e
	.globl sub_40e04e
	.type sub_40e04e, @function
sub_40e04e:

	nop	
	.section	.text
	.align	32
	#Procedure 0x40e050

	.globl parse_bracket_exp
	.type parse_bracket_exp, @function
parse_bracket_exp:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0xc8
	mov	qword ptr [rsp], r8
	mov	qword ptr [rsp + 0x28], rcx
	mov	r12, rdx
	mov	r13, rsi
	mov	rbp, rdi
	mov	qword ptr [rsp + 0x88], 0
	mov	qword ptr [rsp + 0x48], 0
	mov	edi, 0x20
	mov	esi, 1
	call	rpl_calloc
	mov	r15, rax
	mov	edi, 0x50
	mov	esi, 1
	call	rpl_calloc
	mov	r14, rax
	test	r15, r15
	je	.label_1258
	test	r14, r14
	je	.label_1258
	mov	rsi, rbp
	mov	rdi, r12
	mov	qword ptr [rsp + 0x40], rsi
	mov	rbx, qword ptr [rsp + 0x28]
	mov	rdx, rbx
	call	peek_token_bracket
	mov	ebp, eax
	mov	al, byte ptr [r12 + 8]
	cmp	al, 0x19
	je	.label_1262
	cmp	al, 2
	je	.label_1238
	mov	dword ptr [rsp + 0x24], 0
	jmp	.label_1264
.label_1262:
	or	byte ptr [r14 + 0x20], 1
	test	bh, 1
	je	.label_1265
	mov	esi, 0xa
	mov	rdi, r15
	call	bitset_set
.label_1265:
	movsxd	rax, ebp
	mov	rsi, qword ptr [rsp + 0x40]
	add	qword ptr [rsi + 0x48], rax
	mov	rdi, r12
	mov	rdx, qword ptr [rsp + 0x28]
	call	peek_token_bracket
	mov	ebp, eax
	cmp	byte ptr [r12 + 8], 2
	je	.label_1238
	mov	al, 1
	mov	dword ptr [rsp + 0x24], eax
.label_1264:
	mov	qword ptr [rsp + 0x18], r14
	mov	qword ptr [rsp + 0x38], r13
	mov	eax, dword ptr [r12 + 8]
	cmp	al, 0x15
	jne	.label_1241
	and	eax, 0xffffff00
	or	eax, 1
	mov	dword ptr [r12 + 8], eax
.label_1241:
	lea	rax, [rsp + 0x50]
	mov	qword ptr [rsp + 0x10], rax
	mov	dword ptr [rsp + 8], 3
	lea	rdi, [rsp + 8]
	mov	r9d, 1
	mov	r13, qword ptr [rsp + 0x40]
	mov	rsi, r13
	mov	rdx, r12
	mov	ecx, ebp
	mov	rbx, qword ptr [rsp + 0x28]
	mov	r8, rbx
	call	parse_bracket_element
	test	eax, eax
	jne	.label_1255
	xor	eax, eax
	mov	qword ptr [rsp + 0x30], rax
	lea	rbp, [rsp + 0x48]
	jmp	.label_1256
	.section	.text
	.align	32
	#Procedure 0x40e1a4
	.globl sub_40e1a4
	.type sub_40e1a4, @function
sub_40e1a4:

	nop	word ptr cs:[rax + rax]
.label_1261:
	cmp	al, 2
	je	.label_1250
	lea	rax, [rsp + 0x50]
	mov	qword ptr [rsp + 0x10], rax
	mov	dword ptr [rsp + 8], 3
	xor	r9d, r9d
	lea	rdi, [rsp + 8]
	mov	rsi, r13
	mov	rdx, r12
	mov	ecx, r14d
	mov	r8, rbx
	call	parse_bracket_element
	test	eax, eax
	je	.label_1256
	jmp	.label_1255
.label_1248:
	lea	rax, [rbx + rbx]
	mov	rdi, qword ptr [rbp]
	lea	rsi, [rax*4 + 4]
	call	realloc
	test	rax, rax
	je	.label_1232
	lea	rcx, [rbx + rbx + 1]
	mov	qword ptr [rsp + 0x30], rcx
	mov	qword ptr [rbp], rax
	jmp	.label_1243
	.section	.text
	.align	32
	#Procedure 0x40e21d
	.globl sub_40e21d
	.type sub_40e21d, @function
sub_40e21d:

	nop	dword ptr [rax]
.label_1256:
	mov	rdi, r12
	mov	rsi, r13
	mov	rdx, rbx
	call	peek_token_bracket
	mov	r14d, eax
	mov	eax, dword ptr [rsp + 8]
	cmp	eax, 2
	je	.label_1239
	cmp	eax, 4
	je	.label_1239
	movzx	eax, byte ptr [r12 + 8]
	cmp	al, 0x16
	je	.label_1245
	cmp	al, 2
	jne	.label_1246
	jmp	.label_1250
.label_1245:
	movsxd	rax, r14d
	add	qword ptr [r13 + 0x48], rax
	lea	rdi, [rsp + 0x90]
	mov	rsi, r13
	mov	rdx, rbx
	call	peek_token_bracket
	movzx	ecx, byte ptr [rsp + 0x98]
	cmp	cl, 0x15
	je	.label_1254
	cmp	cl, 2
	lea	rdx, [rsp + 0x78]
	je	.label_1250
	lea	rcx, [rsp + 0xa0]
	mov	qword ptr [rsp + 0x80], rcx
	mov	dword ptr [rsp + 0x78], 3
	mov	r9d, 1
	mov	rdi, rdx
	mov	rsi, r13
	lea	rdx, [rsp + 0x90]
	mov	ecx, eax
	mov	r8, rbx
	call	parse_bracket_element
	test	eax, eax
	jne	.label_1255
	mov	rdi, r12
	mov	rsi, r13
	mov	rdx, rbx
	call	peek_token_bracket
	mov	r14d, eax
	mov	rax, qword ptr [rsp + 0x38]
	cmp	dword ptr [rax + 0xb4], 1
	mov	edx, 0
	cmovg	rdx, qword ptr [rsp + 0x18]
	mov	rdi, rbx
	mov	rsi, r15
	lea	rcx, [rsp + 0x88]
	lea	r8, [rsp + 8]
	lea	r9, [rsp + 0x78]
	call	build_range_exp
	jmp	.label_1235
.label_1254:
	mov	eax, r14d
	neg	eax
	cdqe	
	add	qword ptr [r13 + 0x48], rax
	mov	byte ptr [r12 + 8], 1
.label_1246:
	mov	eax, dword ptr [rsp + 8]
.label_1239:
	mov	ecx, eax
	cmp	eax, 4
	ja	.label_1240
	jmp	qword ptr [word ptr [+ (rcx * 8) + label_1244]]
.label_2894:
	movzx	esi, byte ptr [rsp + 0x10]
	mov	rdi, r15
	call	bitset_set
	jmp	.label_1247
.label_2895:
	mov	rbp, qword ptr [rsp + 0x18]
	mov	rbx, qword ptr [rbp + 0x28]
	cmp	qword ptr [rsp + 0x30], rbx
	je	.label_1248
.label_1243:
	mov	eax, dword ptr [rsp + 0x10]
	mov	rcx, qword ptr [rbp + 0x28]
	lea	rdx, [rcx + 1]
	mov	qword ptr [rbp + 0x28], rdx
	mov	rdx, qword ptr [rbp]
	mov	dword ptr [rdx + rcx*4], eax
	mov	rbx, qword ptr [rsp + 0x28]
	lea	rbp, [rsp + 0x48]
	jmp	.label_1247
.label_2896:
	mov	rsi, qword ptr [rsp + 0x10]
	mov	rdi, r15
	call	build_equiv_class
	jmp	.label_1235
.label_2897:
	mov	rsi, qword ptr [rsp + 0x10]
	mov	rdi, r15
	call	build_collating_symbol
	jmp	.label_1235
.label_2898:
	mov	rdi, qword ptr [r13 + 0x78]
	mov	r8, qword ptr [rsp + 0x10]
	mov	rsi, r15
	mov	rdx, qword ptr [rsp + 0x18]
	mov	rcx, rbp
	mov	r9, rbx
	call	build_charclass
.label_1235:
	mov	rcx, qword ptr [rsp]
	mov	dword ptr [rcx], eax
	test	eax, eax
	jne	.label_1260
.label_1247:
	movzx	eax, byte ptr [r12 + 8]
	cmp	al, 0x15
	jne	.label_1261
	movsxd	rax, r14d
	add	qword ptr [r13 + 0x48], rax
	mov	eax, dword ptr [rsp + 0x24]
	test	al, al
	je	.label_1263
	mov	rdi, r15
	call	bitset_not
.label_1263:
	mov	rbx, qword ptr [rsp + 0x38]
	cmp	dword ptr [rbx + 0xb4], 2
	mov	r14, qword ptr [rsp + 0x18]
	jl	.label_1266
	mov	rsi, qword ptr [rbx + 0x78]
	mov	rdi, r15
	call	bitset_mask
.label_1266:
	cmp	qword ptr [r14 + 0x28], 0
	jne	.label_1234
	cmp	qword ptr [r14 + 0x30], 0
	jne	.label_1234
	cmp	qword ptr [r14 + 0x38], 0
	jne	.label_1234
	cmp	qword ptr [r14 + 0x40], 0
	jne	.label_1234
	cmp	dword ptr [rbx + 0xb4], 2
	jl	.label_1242
	cmp	qword ptr [r14 + 0x48], 0
	jne	.label_1234
	test	byte ptr [r14 + 0x20], 1
	jne	.label_1234
.label_1242:
	mov	rdi, r14
	call	free_charset
	mov	byte ptr [rsp + 0x58], 3
	mov	qword ptr [rsp + 0x50], r15
	lea	rcx, [rsp + 0x50]
	xor	esi, esi
	xor	edx, edx
	mov	rdi, rbx
	call	create_token_tree
	jmp	.label_1253
.label_1234:
	or	byte ptr [rbx + 0xb0], 2
	mov	byte ptr [rsp + 0x58], 6
	mov	qword ptr [rsp + 0x50], r14
	lea	rcx, [rsp + 0x50]
	xor	esi, esi
	xor	edx, edx
	mov	rdi, rbx
	call	create_token_tree
	mov	rbp, rax
	test	rbp, rbp
	je	.label_1233
	xor	eax, eax
	nop	word ptr cs:[rax + rax]
.label_1259:
	cmp	qword ptr [r15 + rax*8], 0
	jne	.label_1237
	inc	rax
	cmp	rax, 3
	jle	.label_1259
	mov	rdi, r15
	call	free
	jmp	.label_1257
.label_1237:
	mov	byte ptr [rsp + 0x58], 3
	mov	qword ptr [rsp + 0x50], r15
	lea	rcx, [rsp + 0x50]
	xor	esi, esi
	xor	edx, edx
	mov	rdi, rbx
	call	create_token_tree
	test	rax, rax
	je	.label_1233
	mov	ecx, 0xa
	mov	rdi, rbx
	mov	rsi, rax
	mov	rdx, rbp
	call	create_tree
.label_1253:
	mov	rbp, rax
	test	rbp, rbp
	je	.label_1233
.label_1257:
	mov	rax, rbp
	add	rsp, 0xc8
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_1250:
	mov	rax, qword ptr [rsp]
	mov	dword ptr [rax], 7
	mov	r14, qword ptr [rsp + 0x18]
	jmp	.label_1236
.label_1255:
	mov	rcx, qword ptr [rsp]
	mov	dword ptr [rcx], eax
.label_1260:
	mov	r14, qword ptr [rsp + 0x18]
	jmp	.label_1236
.label_1238:
	mov	rax, qword ptr [rsp]
	mov	dword ptr [rax], 2
	jmp	.label_1236
.label_1258:
	mov	rdi, r15
	call	free
	mov	rdi, r14
	call	free
	mov	rax, qword ptr [rsp]
	mov	dword ptr [rax], 0xc
	jmp	.label_1249
.label_1240:
	mov	edi, OFFSET FLAT:label_1251
	mov	esi, OFFSET FLAT:label_196
	mov	edx, 0xced
	mov	ecx, OFFSET FLAT:label_1252
	call	__assert_fail
.label_1232:
	mov	r14, rbp
.label_1233:
	mov	rax, qword ptr [rsp]
	mov	dword ptr [rax], 0xc
.label_1236:
	mov	rdi, r15
	call	free
	mov	rdi, r14
	call	free_charset
.label_1249:
	xor	ebp, ebp
	jmp	.label_1257
	.section	.text
	.align	32
	#Procedure 0x40e5a1
	.globl sub_40e5a1
	.type sub_40e5a1, @function
sub_40e5a1:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40e5b0

	.globl bkm_scale_1
	.type bkm_scale_1, @function
bkm_scale_1:
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
	#Procedure 0x40e5dd
	.globl sub_40e5dd
	.type sub_40e5dd, @function
sub_40e5dd:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x40e5e0

	.globl process_file
	.type process_file, @function
process_file:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x58
	mov	rbp, rsi
	mov	r13, rdi
	mov	rax, qword ptr [rbp + 0x38]
	mov	qword ptr [rsp + 8], rax
	lea	r12, [rbp + 0x78]
	movzx	r14d, word ptr [rbp + 0x70]
	cmp	r14d, 6
	mov	r15b, 1
	je	.label_1283
	movzx	eax, r14w
	cmp	eax, 4
	jne	.label_1272
	mov	r13d, dword ptr [rbp + 0x40]
	xor	r15d, r15d
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_1278
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
	mov	edi, 4
	mov	rsi, qword ptr [rsp + 8]
	call	quotearg_style
	mov	rcx, rax
	xor	edi, edi
	xor	eax, eax
	mov	esi, r13d
	mov	rdx, rbx
	call	error
.label_1283:
	cmp	byte ptr [byte ptr [rip + apparent_size]],  1
	jne	.label_1286
	mov	rax, qword ptr [rbp + 0xa8]
	xor	ebx, ebx
	test	rax, rax
	cmovns	rbx, rax
	jmp	.label_1289
.label_1286:
	mov	rbx, qword ptr [rbp + 0xb8]
	shl	rbx, 9
.label_1289:
	mov	eax,  dword ptr [dword ptr [rip + time_type]]
	mov	rdi, r12
	cmp	eax, 2
	je	.label_1290
	test	eax, eax
	jne	.label_1292
	call	get_stat_mtime
	jmp	.label_1282
.label_1272:
	mov	rdi,  qword ptr [word ptr [rip + exclude]]
	mov	rsi, qword ptr [rsp + 8]
	call	excluded_file_name
	test	al, al
	jne	.label_1294
	cmp	r14d, 0xb
	jne	.label_1298
	mov	edx, 1
	mov	rdi, r13
	mov	rsi, rbp
	call	rpl_fts_set
	mov	rdi, r13
	call	rpl_fts_read
	cmp	rax, rbp
	jne	.label_1276
	movzx	r14d, word ptr [rbp + 0x70]
.label_1298:
	cmp	r14d, 0xd
	je	.label_1302
	movzx	eax, r14w
	cmp	eax, 0xa
	jne	.label_1303
.label_1302:
	mov	ebx, dword ptr [rbp + 0x40]
	xor	r15d, r15d
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_1301
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
	jmp	.label_1284
.label_1290:
	call	get_stat_atime
	jmp	.label_1282
.label_1292:
	call	get_stat_ctime
.label_1282:
	mov	rcx, rdx
	lea	rdi, [rsp + 0x38]
	mov	rsi, rbx
	mov	rdx, rax
	call	duinfo_set
	mov	r12, qword ptr [rbp + 0x58]
	movups	xmm0, xmmword ptr [rsp + 0x38]
	movups	xmm1, xmmword ptr [rsp + 0x48]
	movaps	xmmword ptr [rsp + 0x20], xmm1
	movaps	xmmword ptr [rsp + 0x10], xmm0
	mov	rax,  qword ptr [word ptr [rip + process_file.n_alloc]]
	test	rax, rax
	je	.label_1270
	mov	rsi,  qword ptr [word ptr [rip + prev_level]]
	cmp	r12, rsi
	je	.label_1271
	jbe	.label_1279
	cmp	rax, r12
	ja	.label_1291
	mov	rdi,  qword ptr [word ptr [rip + process_file.dulvl]]
	mov	edx, 0x80
	mov	rsi, r12
	call	xnrealloc
	mov	qword ptr [word ptr [rip + process_file.dulvl]],  rax
	lea	rax, [r12 + r12]
	mov	qword ptr [word ptr [rip + process_file.n_alloc]],  rax
.label_1291:
	mov	rbx,  qword ptr [word ptr [rip + prev_level]]
	inc	rbx
	cmp	rbx, r12
	ja	.label_1271
	mov	rbp, rbx
	shl	rbp, 6
	add	rbp,  qword ptr [word ptr [rip + process_file.dulvl]]
	nop	word ptr cs:[rax + rax]
.label_1267:
	mov	rdi, rbp
	call	duinfo_init
	lea	rdi, [rbp + 0x20]
	call	duinfo_init
	inc	rbx
	add	rbp, 0x40
	cmp	rbx, r12
	jbe	.label_1267
	jmp	.label_1271
.label_1270:
	lea	rdi, [r12 + 0xa]
	mov	qword ptr [word ptr [rip + process_file.n_alloc]],  rdi
	mov	esi, 0x40
	call	xcalloc
	mov	qword ptr [word ptr [rip + process_file.dulvl]],  rax
	jmp	.label_1271
.label_1279:
	lea	rax, [rsi - 1]
	cmp	r12, rax
	jne	.label_1288
	shl	rsi, 6
	add	rsi,  qword ptr [word ptr [rip + process_file.dulvl]]
	lea	rdi, [rsp + 0x10]
	call	duinfo_add
	mov	al,  byte ptr [byte ptr [rip + opt_separate_dirs]]
	test	al, al
	jne	.label_1285
	mov	rax,  qword ptr [word ptr [rip + prev_level]]
	mov	rcx,  qword ptr [word ptr [rip + process_file.dulvl]]
	shl	rax, 6
	lea	rsi, [rcx + rax + 0x20]
	lea	rdi, [rsp + 0x10]
	call	duinfo_add
.label_1285:
	mov	rax,  qword ptr [word ptr [rip + process_file.dulvl]]
	mov	rbx, r12
	shl	rbx, 6
	lea	rdi, [rax + rbx + 0x20]
	mov	rsi,  qword ptr [word ptr [rip + prev_level]]
	shl	rsi, 6
	add	rsi, rax
	call	duinfo_add
	mov	rax,  qword ptr [word ptr [rip + process_file.dulvl]]
	lea	rdi, [rax + rbx + 0x20]
	mov	rcx,  qword ptr [word ptr [rip + prev_level]]
	shl	rcx, 6
	lea	rsi, [rax + rcx + 0x20]
	call	duinfo_add
.label_1271:
	mov	qword ptr [word ptr [rip + prev_level]],  r12
	or	r14d, 2
	cmp	r14d, 6
	jne	.label_1299
	test	byte ptr [byte ptr [rip + opt_separate_dirs]],  1
	jne	.label_1300
.label_1299:
	mov	rdi, r12
	shl	rdi, 6
	add	rdi,  qword ptr [word ptr [rip + process_file.dulvl]]
	lea	rsi, [rsp + 0x38]
	call	duinfo_add
.label_1300:
	lea	rsi, [rsp + 0x38]
	mov	edi, OFFSET FLAT:tot_dui
	call	duinfo_add
	cmp	r14d, 6
	mov	rax,  qword ptr [word ptr [rip + max_depth]]
	jne	.label_1269
	cmp	r12, rax
	jbe	.label_1275
.label_1269:
	cmp	byte ptr [byte ptr [rip + opt_all]],  1
	jne	.label_1277
	test	r12, r12
	je	.label_1275
	cmp	r12, rax
	ja	.label_1280
	jmp	.label_1275
.label_1277:
	test	r12, r12
	jne	.label_1280
.label_1275:
	mov	al,  byte ptr [byte ptr [rip + opt_inodes]]
	lea	rcx, [rsp + 0x18]
	test	al, al
	lea	rax, [rsp + 0x10]
	cmovne	rax, rcx
	mov	rax, qword ptr [rax]
	mov	rcx,  qword ptr [word ptr [rip + opt_threshold]]
	test	rcx, rcx
	js	.label_1281
	cmp	rax, rcx
	jae	.label_1287
	jmp	.label_1280
.label_1281:
	neg	rcx
	cmp	rax, rcx
	ja	.label_1280
.label_1287:
	lea	rdi, [rsp + 0x10]
	mov	rsi, qword ptr [rsp + 8]
	call	print_size
.label_1280:
	test	r15b, r15b
	setne	r15b
.label_1284:
	mov	eax, r15d
	add	rsp, 0x58
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_1303:
	test	byte ptr [r13 + 0x48], 0x40
	je	.label_1293
	cmp	qword ptr [rbp + 0x58], 0
	jle	.label_1293
	mov	rax, qword ptr [r13 + 0x18]
	cmp	rax, qword ptr [r12]
	jne	.label_1294
.label_1293:
	mov	al,  byte ptr [byte ptr [rip + opt_count_all]]
	test	al, al
	jne	.label_1295
	cmp	byte ptr [byte ptr [rip + hash_all]],  0
	jne	.label_1296
	mov	eax, 0xf000
	and	eax, dword ptr [rbp + 0x90]
	cmp	eax, 0x4000
	je	.label_1295
	cmp	qword ptr [rbp + 0x88], 2
	jb	.label_1295
.label_1296:
	mov	rdi,  qword ptr [word ptr [rip + di_files]]
	mov	rdx, qword ptr [rbp + 0x78]
	mov	rsi, qword ptr [rbp + 0x80]
	call	hash_ins
	test	al, al
	je	.label_1294
.label_1295:
	mov	r15b, 1
	cmp	r14d, 1
	je	.label_1284
	movzx	eax, r14w
	cmp	eax, 2
	je	.label_1268
	cmp	eax, 7
	jne	.label_1283
	mov	ebx, dword ptr [rbp + 0x40]
	xor	r15d, r15d
	xor	edi, edi
	mov	esi, 3
	mov	rdx, qword ptr [rsp + 8]
	call	quotearg_n_style_colon
	mov	rcx, rax
	xor	edi, edi
	mov	edx, OFFSET FLAT:label_582
	xor	eax, eax
	mov	esi, ebx
	call	error
	mov	r14d, 7
	jmp	.label_1283
.label_1294:
	mov	r15b, 1
	cmp	r14d, 1
	jne	.label_1284
	mov	edx, 4
	mov	rdi, r13
	mov	rsi, rbp
	call	rpl_fts_set
	mov	rdi, r13
	call	rpl_fts_read
	cmp	rax, rbp
	je	.label_1284
	mov	edi, OFFSET FLAT:label_1273
	mov	esi, OFFSET FLAT:label_629
	mov	edx, 0x22f
	mov	ecx, OFFSET FLAT:label_1274
	call	__assert_fail
.label_1268:
	mov	rdi, r13
	mov	rsi, rbp
	call	cycle_warning_required
	test	al, al
	je	.label_1284
	mov	rdi, rbp
	call	mount_point_in_fts_cycle
	test	al, al
	jne	.label_1284
	xor	r15d, r15d
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_1297
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
	xor	edi, edi
	mov	esi, 3
	mov	rdx, qword ptr [rsp + 8]
	call	quotearg_n_style_colon
	mov	rcx, rax
	xor	edi, edi
	xor	esi, esi
	xor	eax, eax
	mov	rdx, rbx
	call	error
	jmp	.label_1284
.label_1288:
	mov	edi, OFFSET FLAT:label_1304
	mov	esi, OFFSET FLAT:label_629
	mov	edx, 0x27d
	mov	ecx, OFFSET FLAT:label_1274
	call	__assert_fail
.label_1276:
	mov	edi, OFFSET FLAT:label_1273
	mov	esi, OFFSET FLAT:label_629
	mov	edx, 0x20e
	mov	ecx, OFFSET FLAT:label_1274
	call	__assert_fail
	.section	.text
	.align	32
	#Procedure 0x40eb29
	.globl sub_40eb29
	.type sub_40eb29, @function
sub_40eb29:

	nop	dword ptr [rax]
.label_1305:
	call	abort
	.section	.text
	.align	32
	#Procedure 0x40eb35
	.globl sub_40eb35
	.type sub_40eb35, @function
sub_40eb35:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40eb40

	.globl safe_hasher
	.type safe_hasher, @function
safe_hasher:
	push	rbx
	mov	rbx, rdi
	mov	rax, qword ptr [rbx + 0x10]
	mov	rdi, rsi
	mov	rsi, rax
	call	qword ptr [rbx + 0x30]
	cmp	rax, qword ptr [rbx + 0x10]
	jae	.label_1305
	shl	rax, 4
	add	rax, qword ptr [rbx]
	pop	rbx
	ret	
	.section	.text
	.align	32
	#Procedure 0x40eb60

	.globl revert_tz
	.type revert_tz, @function
revert_tz:
	push	rbp
	push	r15
	push	r14
	push	rbx
	push	rax
	mov	r14, rdi
	mov	bl, 1
	cmp	r14, 1
	je	.label_1306
	call	__errno_location
	mov	r15, rax
	mov	ebp, dword ptr [r15]
	mov	rdi, r14
	call	change_env
	mov	ebx, eax
	test	bl, bl
	jne	.label_1307
	mov	ebp, dword ptr [r15]
.label_1307:
	mov	rdi, r14
	call	tzfree
	mov	dword ptr [r15], ebp
.label_1306:
	mov	eax, ebx
	add	rsp, 8
	pop	rbx
	pop	r14
	pop	r15
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40eba6
	.globl sub_40eba6
	.type sub_40eba6, @function
sub_40eba6:

	nop	word ptr cs:[rax + rax]
.label_1314:
	cmp	byte ptr [rbx + 0x8c], 0
	je	.label_1310
	mov	rax, qword ptr [rbx + 0x48]
	cmp	rax, qword ptr [rbx + 0x30]
	je	.label_1311
	mov	rcx, qword ptr [rbx + 0x10]
	cmp	dword ptr [rcx + rax*4], -1
	je	.label_1308
.label_1311:
	mov	r14, qword ptr [rbx + 0x48]
	mov	rax, qword ptr [rbx]
	mov	rcx, qword ptr [rbx + 0x18]
	mov	rdx, qword ptr [rbx + 0x28]
	add	rdx, qword ptr [rcx + r14*8]
	mov	bpl, byte ptr [rax + rdx]
	test	bpl, bpl
	js	.label_1309
	mov	rdi, rbx
	mov	rsi, r14
	call	re_string_char_size_at
	cdqe	
	add	rax, r14
	mov	qword ptr [rbx + 0x48], rax
	jmp	.label_1313
.label_1310:
	mov	rax, qword ptr [rbx + 0x48]
	lea	rcx, [rax + 1]
	add	rax, qword ptr [rbx + 0x28]
	mov	qword ptr [rbx + 0x48], rcx
	mov	rcx, qword ptr [rbx]
	jmp	.label_1312
	.section	.text
	.align	32
	#Procedure 0x40ec14

	.globl re_string_fetch_byte_case
	.type re_string_fetch_byte_case, @function
re_string_fetch_byte_case:
	push	rbp
	push	r14
	push	rbx
	mov	rbx, rdi
	cmp	byte ptr [rbx + 0x8b], 0
	jne	.label_1314
	mov	rax, qword ptr [rbx + 0x48]
.label_1308:
	lea	rcx, [rax + 1]
	mov	qword ptr [rbx + 0x48], rcx
	mov	rcx, qword ptr [rbx + 8]
.label_1312:
	mov	bpl, byte ptr [rcx + rax]
.label_1313:
	mov	eax, ebp
	pop	rbx
	pop	r14
	pop	rbp
	ret	
.label_1309:
	lea	rax, [r14 + 1]
	mov	qword ptr [rbx + 0x48], rax
	mov	rax, qword ptr [rbx + 8]
	mov	bpl, byte ptr [rax + r14]
	jmp	.label_1313
	.section	.text
	.align	32
	#Procedure 0x40ec51
	.globl sub_40ec51
	.type sub_40ec51, @function
sub_40ec51:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40ec60

	.globl rpl_fts_open
	.type rpl_fts_open, @function
rpl_fts_open:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x38
	mov	rbp, rdx
	mov	r14d, esi
	mov	r15, rdi
	cmp	r14d, 0x1000
	jae	.label_1317
	mov	eax, r14d
	and	eax, 0x204
	cmp	eax, 0x204
	je	.label_1317
	test	r14b, 0x12
	je	.label_1317
	mov	edi, 0x80
	call	malloc
	mov	r13, rax
	xor	eax, eax
	test	r13, r13
	je	.label_1316
	xorps	xmm0, xmm0
	movups	xmmword ptr [r13 + 0x70], xmm0
	movups	xmmword ptr [r13 + 0x60], xmm0
	movups	xmmword ptr [r13 + 0x50], xmm0
	movups	xmmword ptr [r13 + 0x40], xmm0
	movups	xmmword ptr [r13 + 0x30], xmm0
	movups	xmmword ptr [r13 + 0x20], xmm0
	movups	xmmword ptr [r13 + 0x10], xmm0
	movups	xmmword ptr [r13], xmm0
	mov	qword ptr [r13 + 0x40], rbp
	mov	eax, r14d
	and	eax, 0xfffffdfb
	or	eax, 4
	test	r14b, 2
	cmove	eax, r14d
	mov	dword ptr [r13 + 0x48], eax
	mov	dword ptr [r13 + 0x2c], 0xffffff9c
	mov	rdi, r15
	call	fts_maxarglen
	cmp	rax, 0x1000
	mov	esi, 0x1000
	cmova	rsi, rax
	mov	rdi, r13
	call	fts_palloc
	test	al, al
	je	.label_1322
	xor	r12d, r12d
	cmp	qword ptr [r15], 0
	je	.label_1319
	mov	esi, OFFSET FLAT:label_97
	xor	edx, edx
	mov	rdi, r13
	call	fts_alloc
	mov	r12, rax
	test	r12, r12
	je	.label_1326
	mov	qword ptr [r12 + 0x58], -1
	mov	qword ptr [r12 + 0x68], -1
.label_1319:
	mov	byte ptr [rsp + 0xf], 1
	test	rbp, rbp
	je	.label_1332
	mov	al, byte ptr [r13 + 0x49]
	and	al, 4
	shr	al, 2
	mov	byte ptr [rsp + 0xf], al
.label_1332:
	mov	qword ptr [rsp + 0x28], r13
	mov	r13, qword ptr [r15]
	xor	eax, eax
	mov	qword ptr [rsp + 0x10], rax
	test	r13, r13
	je	.label_1337
	mov	qword ptr [rsp + 0x18], r12
	mov	qword ptr [rsp + 0x30], rbp
	and	r14d, 0x800
	xor	eax, eax
	mov	qword ptr [rsp + 0x10], rax
	xor	eax, eax
	mov	qword ptr [rsp + 0x20], rax
	xor	r12d, r12d
	jmp	.label_1318
.label_1317:
	call	__errno_location
	mov	dword ptr [rax], 0x16
.label_1328:
	xor	eax, eax
.label_1316:
	add	rsp, 0x38
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40edd6
	.globl sub_40edd6
	.type sub_40edd6, @function
sub_40edd6:

	nop	word ptr cs:[rax + rax]
.label_1331:
	mov	qword ptr [rbp + 0x58], 0
	mov	rax, qword ptr [rsp + 0x18]
	mov	qword ptr [rbp + 8], rax
	mov	rax, rbp
	add	rax, 0x108
	mov	qword ptr [rbp + 0x30], rax
	mov	rbx, qword ptr [rsp + 0x10]
	test	rbx, rbx
	setne	al
	and	al, byte ptr [rsp + 0xf]
	cmp	al, 1
	jne	.label_1330
	mov	word ptr [rbp + 0x70], 0xb
	mov	esi, 1
	mov	rdi, rbp
	call	fts_set_stat_required
	jmp	.label_1321
.label_1330:
	xor	edx, edx
	mov	rdi, r13
	mov	rsi, rbp
	call	fts_stat
	mov	word ptr [rbp + 0x70], ax
.label_1321:
	cmp	qword ptr [rsp + 0x30], 0
	je	.label_1334
	mov	qword ptr [rbp + 0x10], rbx
.label_1336:
	mov	qword ptr [rsp + 0x10], rbp
	jmp	.label_1325
.label_1334:
	mov	qword ptr [rbp + 0x10], 0
	test	rbx, rbx
	je	.label_1327
	mov	rax, qword ptr [rsp + 0x20]
	mov	qword ptr [rax + 0x10], rbp
	mov	qword ptr [rsp + 0x20], rbp
.label_1325:
	inc	r12
	mov	r13, qword ptr [r15 + 8]
	add	r15, 8
	test	r13, r13
	jne	.label_1318
	jmp	.label_1335
.label_1327:
	mov	rax, rbp
	mov	qword ptr [rsp + 0x20], rax
	jmp	.label_1336
	.section	.text
	.align	32
	#Procedure 0x40ee84
	.globl sub_40ee84
	.type sub_40ee84, @function
sub_40ee84:

	nop	word ptr cs:[rax + rax]
.label_1318:
	mov	rdi, r13
	call	strlen
	test	r14d, r14d
	jne	.label_1320
	cmp	rax, 3
	jb	.label_1320
	cmp	byte ptr [r13 + rax - 1], 0x2f
	jne	.label_1320
	nop	dword ptr [rax + rax]
.label_1324:
	cmp	byte ptr [r13 + rax - 2], 0x2f
	jne	.label_1320
	dec	rax
	cmp	rax, 1
	ja	.label_1324
	nop	word ptr cs:[rax + rax]
.label_1320:
	mov	rsi, qword ptr [r15]
	mov	r13, qword ptr [rsp + 0x28]
	mov	rdi, r13
	mov	rdx, rax
	call	fts_alloc
	mov	rbp, rax
	test	rbp, rbp
	jne	.label_1331
	mov	r12, qword ptr [rsp + 0x18]
	jmp	.label_1323
.label_1335:
	cmp	qword ptr [rsp + 0x30], 0
	je	.label_1315
	cmp	r12, 2
	jb	.label_1315
	mov	rdi, qword ptr [rsp + 0x28]
	mov	rsi, qword ptr [rsp + 0x10]
	mov	rdx, r12
	call	fts_sort
	mov	qword ptr [rsp + 0x10], rax
.label_1315:
	mov	r12, qword ptr [rsp + 0x18]
.label_1337:
	mov	esi, OFFSET FLAT:label_97
	xor	edx, edx
	mov	r13, qword ptr [rsp + 0x28]
	mov	rdi, r13
	call	fts_alloc
	mov	qword ptr [r13], rax
	test	rax, rax
	je	.label_1323
	mov	rbx, qword ptr [rsp + 0x10]
	mov	qword ptr [rax + 0x10], rbx
	mov	rax, qword ptr [r13]
	mov	word ptr [rax + 0x70], 9
	mov	rax, qword ptr [r13]
	mov	qword ptr [rax + 0x58], 1
	mov	rdi, r13
	call	setup_dir
	test	al, al
	je	.label_1333
	movzx	eax, word ptr [r13 + 0x48]
	test	ax, 0x204
	jne	.label_1329
	mov	esi, OFFSET FLAT:label_595
	mov	rdi, r13
	call	diropen
	mov	dword ptr [r13 + 0x28], eax
	test	eax, eax
	jns	.label_1329
	or	byte ptr [r13 + 0x48], 4
.label_1329:
	mov	rdi, r13
	add	rdi, 0x60
	mov	esi, 0xffffffff
	call	i_ring_init
	mov	rax, r13
	jmp	.label_1316
.label_1323:
	mov	rbx, qword ptr [rsp + 0x10]
.label_1333:
	mov	rdi, rbx
	call	fts_lfree
	mov	rdi, r12
	call	free
.label_1326:
	mov	rdi, qword ptr [r13 + 0x20]
	call	free
.label_1322:
	mov	rdi, r13
	call	free
	jmp	.label_1328
	.section	.text
	.align	32
	#Procedure 0x40efd4
	.globl sub_40efd4
	.type sub_40efd4, @function
sub_40efd4:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40efe0

	.globl transit_state_mb
	.type transit_state_mb, @function
transit_state_mb:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x28
	mov	r12, rsi
	mov	r15, rdi
	xor	eax, eax
	cmp	qword ptr [r12 + 0x10], 0
	jle	.label_1342
	mov	rax, qword ptr [r15 + 0x98]
	mov	qword ptr [rsp + 8], rax
	xor	r13d, r13d
	nop	word ptr cs:[rax + rax]
.label_1338:
	mov	rax, qword ptr [r12 + 0x18]
	mov	r14, qword ptr [rax + r13*8]
	mov	rax, qword ptr [rsp + 8]
	mov	rax, qword ptr [rax]
	mov	rcx, r14
	shl	rcx, 4
	mov	ebx, dword ptr [rax + rcx + 8]
	test	ebx, 0x100000
	je	.label_1340
	mov	ebp, ebx
	shr	ebp, 8
	test	bp, 0x3ff
	je	.label_1341
	mov	rsi, qword ptr [r15 + 0x48]
	mov	edx, dword ptr [r15 + 0xa0]
	mov	rdi, r15
	call	re_string_context_at
	mov	ecx, eax
	and	ecx, 1
	test	bpl, 4
	je	.label_1343
	test	ecx, ecx
	je	.label_1340
.label_1343:
	test	bh, 8
	je	.label_1347
	test	ecx, ecx
	jne	.label_1340
.label_1347:
	test	bh, 0x20
	je	.label_1344
	mov	ecx, eax
	and	ecx, 2
	je	.label_1340
.label_1344:
	test	bpl, bpl
	jns	.label_1341
	and	eax, 8
	je	.label_1340
	nop	word ptr cs:[rax + rax]
.label_1341:
	mov	rcx, qword ptr [r15 + 0x48]
	mov	rdi, qword ptr [rsp + 8]
	mov	rsi, r14
	mov	rdx, r15
	call	check_node_accept_bytes
	test	eax, eax
	je	.label_1340
	mov	rbp, r12
	movsxd	r12, eax
	add	r12, qword ptr [r15 + 0x48]
	mov	ecx, dword ptr [r15 + 0xe0]
	cmp	ecx, eax
	cmovl	ecx, eax
	mov	dword ptr [r15 + 0xe0], ecx
	mov	rdi, r15
	mov	rsi, r12
	call	clean_state_log_if_needed
	mov	dword ptr [rsp + 4], eax
	test	eax, eax
	jne	.label_1342
	mov	rcx, qword ptr [rsp + 8]
	mov	rax, qword ptr [rcx + 0x18]
	mov	rax, qword ptr [rax + r14*8]
	lea	rdx, [rax + rax*2]
	shl	rdx, 3
	add	rdx, qword ptr [rcx + 0x30]
	mov	rax, qword ptr [r15 + 0xb8]
	mov	rbx, qword ptr [rax + r12*8]
	test	rbx, rbx
	je	.label_1339
	mov	rsi, qword ptr [rbx + 0x50]
	lea	rdi, [rsp + 0x10]
	call	re_node_set_init_union
	mov	dword ptr [rsp + 4], eax
	test	eax, eax
	je	.label_1346
	jmp	.label_1342
.label_1339:
	mov	rax, qword ptr [rdx + 0x10]
	mov	qword ptr [rsp + 0x20], rax
	movups	xmm0, xmmword ptr [rdx]
	movaps	xmmword ptr [rsp + 0x10], xmm0
.label_1346:
	lea	rsi, [r12 - 1]
	mov	edx, dword ptr [r15 + 0xa0]
	mov	rdi, r15
	call	re_string_context_at
	lea	rdi, [rsp + 4]
	mov	rsi, qword ptr [rsp + 8]
	lea	rdx, [rsp + 0x10]
	mov	ecx, eax
	call	re_acquire_state_context
	test	rbx, rbx
	mov	rcx, qword ptr [r15 + 0xb8]
	mov	qword ptr [rcx + r12*8], rax
	je	.label_1345
	mov	rdi, qword ptr [rsp + 0x20]
	call	free
.label_1345:
	mov	rax, qword ptr [r15 + 0xb8]
	cmp	qword ptr [rax + r12*8], 0
	mov	r12, rbp
	jne	.label_1340
	mov	eax, dword ptr [rsp + 4]
	test	eax, eax
	jne	.label_1342
	nop	word ptr cs:[rax + rax]
.label_1340:
	inc	r13
	xor	eax, eax
	cmp	r13, qword ptr [r12 + 0x10]
	jl	.label_1338
.label_1342:
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
	#Procedure 0x40f1df
	.globl sub_40f1df
	.type sub_40f1df, @function
sub_40f1df:

	nop	
	.section	.text
	.align	32
	#Procedure 0x40f1e0

	.globl adjust_value
	.type adjust_value, @function
adjust_value:
	fld	xword ptr [rsp + 8]
	cmp	edi, 1
	je	.label_1348
	fld	xword ptr [word ptr [rip + label_1350]]
	fucomip	st(1)
	jbe	.label_1348
	fld	dword ptr [dword ptr [rip + label_442]]
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
	fadd	dword ptr [dword ptr [+ (rdx * 4) + label_1349]]
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
	fadd	dword ptr [dword ptr [+ (rdx * 4) + label_1349]]
.label_1348:
	ret	
	.section	.text
	.align	32
	#Procedure 0x40f2ad
	.globl sub_40f2ad
	.type sub_40f2ad, @function
sub_40f2ad:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x40f2b0

	.globl bitset_set
	.type bitset_set, @function
bitset_set:
	mov	eax, 1
	mov	ecx, esi
	shl	rax, cl
	mov	rcx, rsi
	sar	rcx, 0x3f
	shr	rcx, 0x3a
	add	rcx, rsi
	sar	rcx, 6
	or	qword ptr [rdi + rcx*8], rax
	ret	
	.section	.text
	.align	32
	#Procedure 0x40f2d1
	.globl sub_40f2d1
	.type sub_40f2d1, @function
sub_40f2d1:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40f2e0

	.globl re_string_destruct
	.type re_string_destruct, @function
re_string_destruct:
	push	rbx
	mov	rbx, rdi
	mov	rdi, qword ptr [rbx + 0x10]
	call	free
	mov	rdi, qword ptr [rbx + 0x18]
	call	free
	cmp	byte ptr [rbx + 0x8b], 0
	je	.label_1351
	mov	rdi, qword ptr [rbx + 8]
	pop	rbx
	jmp	free
.label_1351:
	pop	rbx
	ret	
	.section	.text
	.align	32
	#Procedure 0x40f30b
	.globl sub_40f30b
	.type sub_40f30b, @function
sub_40f30b:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40f310

	.globl expand_bkref_cache
	.type expand_bkref_cache, @function
expand_bkref_cache:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x58
	mov	dword ptr [rsp + 0x2c], r8d
	mov	qword ptr [rsp + 0x38], rcx
	mov	r12, rdx
	mov	r13, rsi
	mov	r14, qword ptr [rdi + 0x98]
	mov	qword ptr [rsp + 0x20], rdi
	mov	rsi, r12
	call	search_cur_bkref_entry
	cmp	rax, -1
	je	.label_1353
	lea	rcx, [rax + rax*4]
	mov	qword ptr [rsp + 0x10], r14
	mov	qword ptr [rsp + 0x18], r13
	mov	qword ptr [rsp + 0x30], rcx
.label_1359:
	mov	dword ptr [rsp + 0xc], eax
	mov	rax, qword ptr [rsp + 0x20]
	mov	rax, qword ptr [rax + 0xd8]
	lea	r15, [rax + rcx*8 + 0x20]
	nop	word ptr cs:[rax + rax]
.label_1355:
	mov	rsi, qword ptr [r15 - 0x20]
	mov	rdi, r13
	call	re_node_set_contains
	test	rax, rax
	je	.label_1357
	mov	rbp, qword ptr [r15 - 8]
	add	rbp, r12
	sub	rbp, qword ptr [r15 - 0x10]
	cmp	rbp, r12
	jne	.label_1361
	mov	rax, qword ptr [r15 - 0x20]
	mov	rcx, qword ptr [r14 + 0x28]
	lea	rax, [rax + rax*2]
	mov	rax, qword ptr [rcx + rax*8 + 0x10]
	mov	rbx, qword ptr [rax]
	mov	rdi, r13
	mov	rsi, rbx
	call	re_node_set_contains
	mov	ecx, 4
	test	rax, rax
	mov	rbp, r14
	jne	.label_1356
	lea	r13, [rsp + 0x40]
	mov	rdi, r13
	mov	rsi, rbx
	call	re_node_set_init_1
	mov	r14d, eax
	mov	dword ptr [rsp + 8], r14d
	mov	rdi, rbp
	mov	rsi, r13
	mov	rdx, qword ptr [rsp + 0x38]
	mov	ecx, dword ptr [rsp + 0x2c]
	call	check_arrival_expand_ecl
	mov	ebx, eax
	mov	rdi, qword ptr [rsp + 0x18]
	mov	rsi, r13
	mov	r13, qword ptr [rsp + 0x18]
	call	re_node_set_merge
	mov	ebp, eax
	mov	rdi, qword ptr [rsp + 0x50]
	call	free
	mov	eax, ebp
	or	eax, ebx
	mov	ecx, 2
	or	eax, r14d
	jne	.label_1354
.label_1356:
	mov	r14, qword ptr [rsp + 0x10]
	jmp	.label_1363
	.section	.text
	.align	32
	#Procedure 0x40f43d
	.globl sub_40f43d
	.type sub_40f43d, @function
sub_40f43d:

	nop	dword ptr [rax]
.label_1361:
	mov	rax, qword ptr [r15 - 0x20]
	mov	rcx, qword ptr [r14 + 0x18]
	mov	r14, qword ptr [rcx + rax*8]
	mov	rax, qword ptr [rsp + 0x20]
	mov	rax, qword ptr [rax + 0xb8]
	mov	rbx, qword ptr [rax + rbp*8]
	test	rbx, rbx
	je	.label_1352
	add	rbx, 8
	mov	rdi, rbx
	mov	rsi, r14
	call	re_node_set_contains
	mov	ecx, 4
	test	rax, rax
	je	.label_1366
	mov	r14, qword ptr [rsp + 0x10]
	jmp	.label_1363
.label_1352:
	lea	rbx, [rsp + 0x40]
	mov	rdi, rbx
	mov	rsi, r14
	call	re_node_set_init_1
	mov	dword ptr [rsp + 8], eax
	test	eax, eax
	je	.label_1360
	mov	ecx, 1
	mov	dword ptr [rsp + 0xc], eax
	mov	r14, qword ptr [rsp + 0x10]
	jmp	.label_1363
.label_1366:
	lea	r13, [rsp + 0x40]
	mov	rdi, r13
	mov	rsi, rbx
	call	re_node_set_init_copy
	mov	ebx, eax
	mov	dword ptr [rsp + 8], ebx
	mov	rdi, r13
	mov	rsi, r14
	call	re_node_set_insert
	test	ebx, ebx
	mov	rbx, r13
	mov	r13, qword ptr [rsp + 0x18]
	jne	.label_1364
	xor	al, 1
	jne	.label_1364
.label_1360:
	lea	rdi, [rsp + 8]
	mov	r14, qword ptr [rsp + 0x10]
	mov	rsi, r14
	mov	rdx, rbx
	call	re_acquire_state
	mov	rbx, qword ptr [rsp + 0x20]
	mov	rcx, qword ptr [rbx + 0xb8]
	mov	qword ptr [rcx + rbp*8], rax
	mov	rdi, qword ptr [rsp + 0x50]
	call	free
	mov	rax, qword ptr [rbx + 0xb8]
	cmp	qword ptr [rax + rbp*8], 0
	sete	dl
	mov	eax, dword ptr [rsp + 8]
	test	eax, eax
	setne	cl
	and	cl, dl
	jne	.label_1362
	mov	eax, dword ptr [rsp + 0xc]
.label_1362:
	movzx	ecx, cl
	mov	dword ptr [rsp + 0xc], eax
.label_1363:
	test	ecx, ecx
	je	.label_1357
	cmp	ecx, 4
	jne	.label_1358
.label_1357:
	cmp	byte ptr [r15], 0
	lea	r15, [r15 + 0x28]
	jne	.label_1355
	jmp	.label_1353
.label_1354:
	test	ebx, ebx
	cmovne	ebp, ebx
	test	r14d, r14d
	cmovne	ebp, r14d
	mov	dword ptr [rsp + 8], ebp
	mov	ecx, 1
	mov	dword ptr [rsp + 0xc], ebp
	jmp	.label_1356
.label_1364:
	mov	rdi, qword ptr [rsp + 0x50]
	call	free
	mov	ecx, dword ptr [rsp + 8]
	test	ecx, ecx
	mov	eax, 0xc
	cmove	ecx, eax
	mov	dword ptr [rsp + 0xc], ecx
	mov	dword ptr [rsp + 8], ecx
	mov	ecx, 1
	mov	r14, qword ptr [rsp + 0x10]
	jmp	.label_1363
	.section	.text
	.align	32
	#Procedure 0x40f5a1
	.globl sub_40f5a1
	.type sub_40f5a1, @function
sub_40f5a1:

	nop	word ptr cs:[rax + rax]
.label_1358:
	cmp	ecx, 2
	mov	rcx, qword ptr [rsp + 0x30]
	mov	eax, dword ptr [rsp + 0xc]
	je	.label_1359
	jmp	.label_1365
.label_1353:
	xor	eax, eax
.label_1365:
	add	rsp, 0x58
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40f5d5
	.globl sub_40f5d5
	.type sub_40f5d5, @function
sub_40f5d5:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40f5e0
	.globl re_string_elem_size_at
	.type re_string_elem_size_at, @function
re_string_elem_size_at:

	ret	
	.section	.text
	.align	32
	#Procedure 0x40f5e1
	.globl sub_40f5e1
	.type sub_40f5e1, @function
sub_40f5e1:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40f5f0

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
	mov	rbx, r8
	mov	r12, rsi
	mov	r15, rdi
	test	rdx, rdx
	mov	ebp, OFFSET FLAT:raw_hasher
	cmovne	rbp, rdx
	test	rcx, rcx
	mov	r14d, OFFSET FLAT:raw_comparator
	cmovne	r14, rcx
	mov	edi, 0x50
	call	malloc
	mov	r13, rax
	xor	eax, eax
	test	r13, r13
	je	.label_1368
	mov	qword ptr [rsp], rbx
	test	r12, r12
	mov	ebx, OFFSET FLAT:default_tuning
	cmovne	rbx, r12
	mov	qword ptr [r13 + 0x28], rbx
	mov	rdi, r13
	call	check_tuning
	test	al, al
	je	.label_1367
	mov	rdi, r15
	mov	rsi, rbx
	call	compute_bucket_size
	mov	qword ptr [r13 + 0x10], rax
	test	rax, rax
	je	.label_1367
	mov	esi, 0x10
	mov	rdi, rax
	call	rpl_calloc
	mov	qword ptr [r13], rax
	test	rax, rax
	je	.label_1367
	mov	rcx, qword ptr [r13 + 0x10]
	shl	rcx, 4
	add	rax, rcx
	mov	qword ptr [r13 + 8], rax
	xorps	xmm0, xmm0
	movups	xmmword ptr [r13 + 0x18], xmm0
	mov	qword ptr [r13 + 0x30], rbp
	mov	qword ptr [r13 + 0x38], r14
	mov	rax, qword ptr [rsp]
	mov	qword ptr [r13 + 0x40], rax
	mov	qword ptr [r13 + 0x48], 0
	mov	rax, r13
	jmp	.label_1368
.label_1367:
	mov	rdi, r13
	call	free
	xor	eax, eax
.label_1368:
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
	#Procedure 0x40f6cc
	.globl sub_40f6cc
	.type sub_40f6cc, @function
sub_40f6cc:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x40f6d0

	.globl __argmatch_die
	.type __argmatch_die, @function
__argmatch_die:
	mov	edi, 1
	jmp	usage
	.section	.text
	.align	32
	#Procedure 0x40f6da
	.globl sub_40f6da
	.type sub_40f6da, @function
sub_40f6da:

	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40f6e0

	.globl check_node_accept_bytes
	.type check_node_accept_bytes, @function
check_node_accept_bytes:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	push	rax
	mov	r13, rdx
	mov	rbx, rsi
	mov	rbp, rdi
	mov	r14, qword ptr [rbp]
	shl	rbx, 4
	movzx	r15d, byte ptr [r14 + rbx + 8]
	cmp	r15d, 7
	je	.label_1389
	mov	rdi, r13
	mov	r12, rcx
	mov	rsi, rcx
	call	re_string_char_size_at
	mov	esi, eax
	cmp	r15d, 5
	jne	.label_1375
	xor	eax, eax
	cmp	esi, 2
	jl	.label_1370
	test	byte ptr [rbp + 0xd8], 0x40
	jne	.label_1388
	mov	rcx, qword ptr [r13 + 8]
	cmp	byte ptr [rcx + r12], 0xa
	je	.label_1370
.label_1388:
	cmp	byte ptr [rbp + 0xd8], 0
	js	.label_1386
	mov	eax, esi
	jmp	.label_1370
.label_1375:
	cmp	esi, 1
	setg	cl
	xor	eax, eax
	cmp	r15d, 6
	jne	.label_1370
	test	cl, cl
	je	.label_1370
	mov	rbx, qword ptr [r14 + rbx]
	cmp	qword ptr [rbx + 0x40], 0
	jne	.label_1392
	cmp	qword ptr [rbx + 0x48], 0
	jne	.label_1392
	xor	r14d, r14d
	cmp	qword ptr [rbx + 0x28], 0
	je	.label_1378
.label_1392:
	mov	rdi, r13
	mov	ebp, esi
	mov	rsi, r12
	call	re_string_wchar_at
	mov	esi, ebp
	mov	r14d, eax
.label_1378:
	cmp	qword ptr [rbx + 0x28], 0
	jle	.label_1379
	mov	rax, qword ptr [rbx]
	xor	ecx, ecx
	nop	dword ptr [rax]
.label_1373:
	cmp	r14d, dword ptr [rax + rcx*4]
	je	.label_1371
	inc	rcx
	cmp	rcx, qword ptr [rbx + 0x28]
	jl	.label_1373
.label_1379:
	mov	r15d, esi
	cmp	qword ptr [rbx + 0x48], 0
	jle	.label_1384
	xor	ebp, ebp
	nop	dword ptr [rax + rax]
.label_1380:
	mov	rax, qword ptr [rbx + 0x18]
	mov	rsi, qword ptr [rax + rbp*8]
	mov	edi, r14d
	call	iswctype
	test	eax, eax
	jne	.label_1385
	inc	rbp
	cmp	rbp, qword ptr [rbx + 0x48]
	jl	.label_1380
.label_1384:
	xor	ecx, ecx
	cmp	qword ptr [rbx + 0x40], 0
	mov	esi, r15d
	jle	.label_1391
	mov	rax, qword ptr [rbx + 8]
	xor	edx, edx
	nop	
.label_1372:
	cmp	dword ptr [rax + rdx*4], r14d
	jg	.label_1369
	mov	rcx, qword ptr [rbx + 0x10]
	cmp	r14d, dword ptr [rcx + rdx*4]
	jle	.label_1371
.label_1369:
	inc	rdx
	xor	ecx, ecx
	cmp	rdx, qword ptr [rbx + 0x40]
	jl	.label_1372
	jmp	.label_1391
.label_1386:
	mov	rcx, qword ptr [r13 + 8]
	cmp	byte ptr [rcx + r12], 0
	je	.label_1370
	mov	eax, esi
	jmp	.label_1370
.label_1385:
	mov	esi, r15d
.label_1371:
	mov	ecx, esi
.label_1391:
	test	byte ptr [rbx + 0x20], 1
	jne	.label_1381
	mov	eax, ecx
	jmp	.label_1370
.label_1381:
	test	ecx, ecx
	mov	eax, 0
	jg	.label_1370
	test	esi, esi
	mov	eax, 1
	cmovg	eax, esi
.label_1370:
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_1389:
	mov	rsi, qword ptr [r13 + 8]
	mov	dl, byte ptr [rsi + rcx]
	xor	eax, eax
	cmp	dl, 0xc2
	jb	.label_1370
	mov	rdi, rcx
	lea	rcx, [rcx + 2]
	cmp	rcx, qword ptr [r13 + 0x58]
	jle	.label_1390
	xor	eax, eax
	jmp	.label_1370
.label_1390:
	mov	cl, byte ptr [rsi + rdi + 1]
	cmp	dl, 0xdf
	ja	.label_1393
	cmp	cl, 0xc0
	sbb	edx, edx
	and	edx, 2
	test	cl, cl
	mov	eax, 0
	cmovs	eax, edx
	jmp	.label_1370
.label_1393:
	cmp	dl, 0xef
	ja	.label_1374
	mov	eax, 3
	cmp	dl, 0xe0
	jne	.label_1377
	cmp	cl, 0xa0
	jae	.label_1377
	xor	eax, eax
	jmp	.label_1370
.label_1374:
	cmp	dl, 0xf7
	ja	.label_1382
	mov	eax, 4
	cmp	dl, 0xf0
	jne	.label_1377
	cmp	cl, 0x90
	jae	.label_1377
	xor	eax, eax
	jmp	.label_1370
.label_1382:
	cmp	dl, 0xfb
	ja	.label_1387
	mov	eax, 5
	cmp	dl, 0xf8
	jne	.label_1377
	cmp	cl, 0x88
	jae	.label_1377
	xor	eax, eax
	jmp	.label_1370
.label_1387:
	cmp	dl, 0xfd
	ja	.label_1376
	mov	eax, 6
	cmp	dl, 0xfc
	jne	.label_1377
	cmp	cl, 0x84
	jae	.label_1377
	xor	eax, eax
	jmp	.label_1370
.label_1377:
	mov	ecx, eax
	lea	rdx, [rcx + rdi]
	cmp	rdx, qword ptr [r13 + 0x58]
	jle	.label_1394
	xor	eax, eax
	jmp	.label_1370
.label_1394:
	add	rdi, qword ptr [r13 + 8]
	mov	edx, 1
.label_1383:
	movzx	ebx, byte ptr [rdi + rdx]
	test	bl, bl
	jns	.label_1376
	cmp	bl, 0xbf
	ja	.label_1376
	inc	rdx
	cmp	rdx, rcx
	jl	.label_1383
	jmp	.label_1370
.label_1376:
	xor	eax, eax
	jmp	.label_1370
	.section	.text
	.align	32
	#Procedure 0x40f93c
	.globl sub_40f93c
	.type sub_40f93c, @function
sub_40f93c:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x40f940

	.globl re_node_set_init_1
	.type re_node_set_init_1, @function
re_node_set_init_1:
	push	r14
	push	rbx
	push	rax
	mov	r14, rsi
	mov	rbx, rdi
	mov	qword ptr [rbx], 1
	mov	qword ptr [rbx + 8], 1
	mov	edi, 8
	call	malloc
	mov	qword ptr [rbx + 0x10], rax
	test	rax, rax
	je	.label_1396
	mov	qword ptr [rax], r14
	xor	eax, eax
.label_1395:
	add	rsp, 8
	pop	rbx
	pop	r14
	ret	
.label_1396:
	xorps	xmm0, xmm0
	movups	xmmword ptr [rbx], xmm0
	mov	eax, 0xc
	jmp	.label_1395
	.section	.text
	.align	32
	#Procedure 0x40f986
	.globl sub_40f986
	.type sub_40f986, @function
sub_40f986:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40f990

	.globl re_node_set_remove_at
	.type re_node_set_remove_at, @function
re_node_set_remove_at:
	test	rsi, rsi
	js	.label_1397
	mov	rax, qword ptr [rdi + 8]
	cmp	rax, rsi
	jle	.label_1397
	dec	rax
	mov	qword ptr [rdi + 8], rax
	cmp	rax, rsi
	jle	.label_1397
	mov	rax, qword ptr [rdi + 0x10]
	nop	
.label_1398:
	mov	rcx, qword ptr [rax + rsi*8 + 8]
	mov	qword ptr [rax + rsi*8], rcx
	inc	rsi
	cmp	rsi, qword ptr [rdi + 8]
	jl	.label_1398
.label_1397:
	ret	
	.section	.text
	.align	32
	#Procedure 0x40f9c3
	.globl sub_40f9c3
	.type sub_40f9c3, @function
sub_40f9c3:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40f9d0

	.globl re_node_set_compare
	.type re_node_set_compare, @function
re_node_set_compare:
	xor	eax, eax
	test	rdi, rdi
	je	.label_1399
	test	rsi, rsi
	je	.label_1399
	mov	rcx, qword ptr [rdi + 8]
	cmp	rcx, qword ptr [rsi + 8]
	jne	.label_1401
	nop	word ptr cs:[rax + rax]
.label_1400:
	mov	al, 1
	test	rcx, rcx
	jle	.label_1399
	mov	rax, qword ptr [rdi + 0x10]
	mov	rax, qword ptr [rax + rcx*8 - 8]
	mov	rdx, qword ptr [rsi + 0x10]
	cmp	rax, qword ptr [rdx + rcx*8 - 8]
	lea	rcx, [rcx - 1]
	je	.label_1400
.label_1401:
	xor	eax, eax
.label_1399:
	ret	
	.section	.text
	.align	32
	#Procedure 0x40fa12
	.globl sub_40fa12
	.type sub_40fa12, @function
sub_40fa12:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40fa20

	.globl build_wcs_buffer
	.type build_wcs_buffer, @function
build_wcs_buffer:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x58
	mov	r13, rdi
	mov	rbx, qword ptr [r13 + 0x30]
	mov	r12, qword ptr [r13 + 0x40]
	mov	rax, qword ptr [r13 + 0x58]
	cmp	r12, rax
	cmovg	r12, rax
	cmp	r12, rbx
	jle	.label_1409
	lea	r14, [r13 + 0x20]
	lea	r15, [rsp + 0xc]
	jmp	.label_1405
	.section	.text
	.align	32
	#Procedure 0x40fa5b
	.globl sub_40fa5b
	.type sub_40fa5b, @function
sub_40fa5b:

	nop	dword ptr [rax + rax]
.label_1406:
	mov	rax, qword ptr [r13 + 0x28]
	add	rax, rbx
	mov	rcx, qword ptr [r13]
	movzx	eax, byte ptr [rcx + rax]
	mov	dword ptr [rsp + 0xc], eax
	mov	rcx, qword ptr [r13 + 0x78]
	test	rcx, rcx
	jne	.label_1407
.label_1408:
	mov	qword ptr [r14], rbp
	mov	eax, 1
.label_1412:
	mov	ecx, dword ptr [rsp + 0xc]
	mov	rdx, qword ptr [r13 + 0x10]
	mov	dword ptr [rdx + rbx*4], ecx
	lea	rbp, [rax + rbx]
	lea	rcx, [rbx + 1]
	cmp	rcx, rbp
	jge	.label_1403
	mov	rcx, qword ptr [r13 + 0x10]
	lea	rdi, [rcx + rbx*4 + 4]
	lea	rdx, [rax*4 - 4]
	mov	esi, 0xff
	call	memset
	mov	rcx, rbp
.label_1403:
	cmp	r12, rcx
	mov	rbx, rcx
	jg	.label_1405
	jmp	.label_1402
.label_1413:
	cmp	dword ptr [r13 + 0x90], 0
	lea	rsi, [rsp + 0x10]
	jle	.label_1404
	xor	eax, eax
.label_1410:
	cmp	rax, rdx
	jge	.label_1411
	mov	rcx, qword ptr [r13]
	mov	rsi, qword ptr [r13 + 0x78]
	add	rcx, qword ptr [r13 + 0x28]
	add	rcx, rbx
	movzx	ecx, byte ptr [rax + rcx]
	movzx	ecx, byte ptr [rsi + rcx]
	mov	rsi, qword ptr [r13 + 8]
	add	rsi, rbx
	mov	byte ptr [rax + rsi], cl
	mov	byte ptr [rsp + rax + 0x10], cl
	inc	rax
	movsxd	rcx, dword ptr [r13 + 0x90]
	cmp	rax, rcx
	jl	.label_1410
	lea	rsi, [rsp + 0x10]
	jmp	.label_1404
.label_1407:
	movzx	eax, byte ptr [rcx + rax]
	mov	dword ptr [rsp + 0xc], eax
	jmp	.label_1408
.label_1411:
	lea	rsi, [rsp + 0x10]
	jmp	.label_1404
.label_1405:
	mov	rdx, r12
	sub	rdx, rbx
	mov	rbp, qword ptr [r13 + 0x20]
	cmp	qword ptr [r13 + 0x78], 0
	jne	.label_1413
	mov	rsi, qword ptr [r13]
	add	rsi, qword ptr [r13 + 0x28]
	add	rsi, rbx
.label_1404:
	mov	rdi, r15
	mov	rcx, r14
	call	rpl_mbrtowc
	lea	rcx, [rax + 1]
	cmp	rcx, 2
	jb	.label_1406
	cmp	rax, -2
	jne	.label_1412
	mov	rax, qword ptr [r13 + 0x40]
	cmp	rax, qword ptr [r13 + 0x58]
	jge	.label_1406
	mov	qword ptr [r14], rbp
.label_1409:
	mov	rcx, rbx
.label_1402:
	mov	qword ptr [r13 + 0x30], rcx
	mov	qword ptr [r13 + 0x38], rcx
	add	rsp, 0x58
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40fb9a
	.globl sub_40fb9a
	.type sub_40fb9a, @function
sub_40fb9a:

	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40fba0
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
	#Procedure 0x40fbad
	.globl sub_40fbad
	.type sub_40fbad, @function
sub_40fbad:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x40fbb0

	.globl __strftime_internal
	.type __strftime_internal, @function
__strftime_internal:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x498
	mov	ebp, r9d
	mov	dword ptr [rsp + 0x68], r8d
	mov	dword ptr [rsp + 0x6c], ecx
	mov	r13, rsi
	mov	r12, rdi
	mov	eax, dword ptr [rdx + 8]
	mov	qword ptr [rsp + 0x18], rdx
	mov	rcx, qword ptr [rdx + 0x30]
	test	rcx, rcx
	mov	edx, OFFSET FLAT:label_97
	cmovne	rdx, rcx
	mov	qword ptr [rsp + 0x50], rdx
	lea	ecx, [rax - 0xc]
	test	eax, eax
	mov	edx, 0xc
	cmovne	edx, eax
	cmp	eax, 0xc
	cmovg	edx, ecx
	mov	dword ptr [rsp + 0x5c], edx
	cmp	byte ptr [r13], 0
	mov	eax, 0
	je	.label_1466
	movabs	r8, 0x100000000
	xor	r9d, r9d
	mov	qword ptr [rsp + 0x40], rax
	mov	dword ptr [rsp + 0x24], eax
	mov	qword ptr [rsp], r12
	jmp	.label_1420
.label_1556:
	test	rbp, rbp
	je	.label_1502
.label_1431:
	mov	edi, 0x20
	mov	rsi, r12
	call	fputc
	dec	rbp
	jne	.label_1431
.label_1502:
	movsx	edi, byte ptr [r13]
	mov	rsi, r12
	call	fputc
	movabs	r8, 0x100000000
	mov	r9, r15
.label_1551:
	add	r9, rbx
	jmp	.label_1435
.label_1496:
	mov	qword ptr [rsp + 0x40], rbx
	mov	esi, 3
	jmp	.label_1442
	.section	.text
	.align	32
	#Procedure 0x40fc7b
	.globl sub_40fc7b
	.type sub_40fc7b, @function
sub_40fc7b:

	nop	dword ptr [rax + rax]
.label_1420:
	cmp	byte ptr [r13], 0x25
	jne	.label_1544
	xor	eax, eax
	mov	ecx, dword ptr [rsp + 0x6c]
	mov	bl, cl
	xor	r14d, r14d
.label_3025:
	mov	r15d, eax
	mov	eax, ebx
	jmp	.label_1443
	.section	.text
	.align	32
	#Procedure 0x40fc99
	.globl sub_40fc99
	.type sub_40fc99, @function
sub_40fc99:

	nop	dword ptr [rax]
.label_1456:
	movsx	r14d, byte ptr [r13]
.label_1443:
	inc	r13
	movsx	ecx, byte ptr [r13]
	mov	al, 1
	lea	edx, [rcx - 0x23]
	cmp	edx, 0xd
	ja	.label_1449
	jmp	qword ptr [word ptr [+ (rdx * 8) + label_1452]]
	.section	.text
	.align	32
	#Procedure 0x40fcbe
	.globl sub_40fcbe
	.type sub_40fcbe, @function
sub_40fcbe:

	nop	
.label_1449:
	cmp	ecx, 0x5f
	je	.label_1456
	cmp	ecx, 0x5e
	jne	.label_1458
	mov	bl, al
	jmp	.label_1443
	.section	.text
	.align	32
	#Procedure 0x40fcd2
	.globl sub_40fcd2
	.type sub_40fcd2, @function
sub_40fcd2:

	nop	word ptr cs:[rax + rax]
.label_1544:
	test	ebp, ebp
	mov	eax, ebp
	mov	ecx, 0
	cmovs	eax, ecx
	movsxd	rbx, eax
	cmp	ebx, 1
	mov	ecx, 1
	cmovbe	rbx, rcx
	mov	rdx, r9
	not	rdx
	mov	ecx, 1
	cmp	rbx, rdx
	jae	.label_1516
	test	r12, r12
	je	.label_1467
	mov	r14, r9
	cmp	eax, 2
	jb	.label_1523
	movsxd	rbp, ebp
	jmp	.label_1471
	.section	.text
	.align	32
	#Procedure 0x40fd1d
	.globl sub_40fd1d
	.type sub_40fd1d, @function
sub_40fd1d:

	nop	dword ptr [rax]
.label_1475:
	mov	edi, 0x20
	mov	rsi, r12
	call	fputc
.label_1471:
	dec	rbp
	jne	.label_1475
.label_1523:
	movsx	edi, byte ptr [r13]
	mov	rsi, r12
	call	fputc
	movabs	r8, 0x100000000
	mov	r9, r14
.label_1467:
	add	r9, rbx
	xor	ecx, ecx
.label_1516:
	test	ecx, ecx
	mov	eax, 4
	cmove	ecx, eax
.label_1510:
	or	ecx, 4
	cmp	ecx, 4
	mov	eax, 0
	je	.label_1435
	jmp	.label_1466
	.section	.text
	.align	32
	#Procedure 0x40fd71
	.globl sub_40fd71
	.type sub_40fd71, @function
sub_40fd71:

	nop	word ptr cs:[rax + rax]
.label_1458:
	add	ecx, -0x30
	cmp	ecx, 9
	ja	.label_1487
	xor	eax, eax
	nop	word ptr [rax + rax]
.label_1495:
	mov	ebp, 0x7fffffff
	cmp	eax, 0xccccccc
	jg	.label_1489
	jne	.label_1491
	movsx	ecx, byte ptr [r13]
	add	ecx, -0x30
	cmp	ecx, 7
	jg	.label_1489
.label_1491:
	lea	eax, [rax + rax*4]
	movsx	ecx, byte ptr [r13]
	lea	ebp, [rcx + rax*2 - 0x30]
.label_1489:
	movsx	eax, byte ptr [r13 + 1]
	inc	r13
	add	eax, -0x30
	cmp	eax, 0xa
	mov	eax, ebp
	jb	.label_1495
.label_1487:
	movsx	eax, byte ptr [r13]
	cmp	eax, 0x4f
	je	.label_1498
	xor	r10d, r10d
	cmp	eax, 0x45
	jne	.label_1499
.label_1498:
	movsx	r10d, byte ptr [r13]
	inc	r13
.label_1499:
	movsx	edx, byte ptr [r13]
	mov	esi, OFFSET FLAT:label_1503
	xor	r11d, r11d
	cmp	edx, 0x7a
	ja	.label_1417
	mov	al, 0x72
	mov	r12d, 0xffffffff
	xor	edi, edi
	xor	ecx, ecx
	jmp	qword ptr [word ptr [+ (rdx * 8) + label_1507]]
.label_3042:
	cmp	r10d, 0x45
	je	.label_1417
	mov	qword ptr [rsp + 0x28], rdx
	mov	dword ptr [rsp + 0x30], r10d
	mov	qword ptr [rsp + 0x38], rbx
	mov	qword ptr [rsp + 8], r9
	mov	rdx, qword ptr [rsp + 0x18]
	mov	eax, dword ptr [rdx + 0x14]
	mov	esi, dword ptr [rdx + 0x18]
	mov	ecx, eax
	sar	ecx, 0x1f
	and	ecx, 0x190
	lea	r12d, [rax + rcx - 0x64]
	mov	r15d, dword ptr [rdx + 0x1c]
	mov	edi, r15d
	call	iso_week_days
	mov	ebx, eax
	test	ebx, ebx
	js	.label_1520
	mov	eax, 0x16d
	test	r12b, 3
	jne	.label_1522
	movsxd	rax, r12d
	imul	rax, rax, 0x51eb851f
	mov	rcx, rax
	sar	rcx, 0x25
	mov	rdx, rax
	shr	rdx, 0x3f
	add	ecx, edx
	imul	ecx, ecx, 0x64
	sar	rax, 0x27
	add	eax, edx
	imul	eax, eax, 0x190
	xor	edx, edx
	cmp	r12d, eax
	sete	dl
	add	edx, 0x16d
	cmp	r12d, ecx
	mov	eax, 0x16e
	cmove	eax, edx
.label_1522:
	sub	r15d, eax
	mov	rax, qword ptr [rsp + 0x18]
	mov	esi, dword ptr [rax + 0x18]
	mov	edi, r15d
	call	iso_week_days
	mov	ecx, eax
	shr	ecx, 0x1f
	xor	ecx, 1
	test	eax, eax
	cmovns	ebx, eax
	jmp	.label_1537
.label_3056:
	test	r15b, r15b
	je	.label_1540
	mov	bl, 1
.label_1540:
	xor	edi, edi
	cmp	r10d, 0x45
	jne	.label_1541
	xor	r11d, r11d
	jmp	.label_1417
.label_3034:
	dec	r13
	jmp	.label_1417
.label_3035:
	test	r10d, r10d
	jne	.label_1417
	xor	eax, eax
	test	ebp, ebp
	cmovns	eax, ebp
	movsxd	rcx, eax
	cmp	ecx, 1
	mov	ebx, 1
	cmova	rbx, rcx
	mov	rcx, r9
	not	rcx
	cmp	rbx, rcx
	jae	.label_1416
	mov	r12, qword ptr [rsp]
	test	r12, r12
	je	.label_1551
	mov	r15, r9
	cmp	eax, 2
	jb	.label_1502
	movsxd	rbp, ebp
	dec	rbp
	cmp	r14d, 0x30
	je	.label_1558
	cmp	r14d, 0x2b
	jne	.label_1556
.label_1558:
	test	rbp, rbp
	je	.label_1502
.label_1560:
	mov	edi, 0x30
	mov	rsi, r12
	call	fputc
	dec	rbp
	jne	.label_1560
	jmp	.label_1502
.label_3036:
	mov	eax, 1
	jmp	.label_1562
	.section	.text
	.align	32
	#Procedure 0x40ff74
	.globl sub_40ff74
	.type sub_40ff74, @function
sub_40ff74:

	nop	word ptr cs:[rax + rax]
.label_1565:
	inc	rax
.label_1562:
	movzx	ecx, byte ptr [r13 + rax]
	cmp	cl, 0x3a
	je	.label_1565
	cmp	cl, 0x7a
	jne	.label_1417
	add	r13, rax
	mov	r11, rax
.label_3073:
	mov	rax, qword ptr [rsp + 0x18]
	cmp	dword ptr [rax + 0x20], 0
	js	.label_1554
	mov	rsi, r11
	mov	eax, dword ptr [rax + 0x28]
	mov	r11b, 1
	test	eax, eax
	mov	r12, qword ptr [rsp]
	js	.label_1573
	test	eax, eax
	je	.label_1528
	xor	r11d, r11d
	jmp	.label_1573
.label_3037:
	test	r10d, r10d
	jne	.label_1417
	test	r15b, r15b
	je	.label_1579
	mov	bl, 1
.label_1579:
	xor	edi, edi
	mov	al, 0x41
	jmp	.label_1418
.label_3038:
	cmp	r10d, 0x45
	je	.label_1417
	test	r15b, r15b
	je	.label_1585
	mov	bl, 1
.label_1585:
	xor	edi, edi
	mov	al, 0x42
	jmp	.label_1418
.label_2910:
	cmp	r10d, 0x45
	jne	.label_1415
	xor	edi, edi
	mov	al, 0x43
	jmp	.label_1418
.label_3040:
	mov	esi, OFFSET FLAT:label_1535
	test	r10d, r10d
	jne	.label_1417
	jmp	.label_1423
.label_3041:
	test	r10d, r10d
	jne	.label_1417
	mov	esi, OFFSET FLAT:label_577
	test	r14d, r14d
	jne	.label_1427
	test	ebp, ebp
	jns	.label_1427
	mov	r14d, 0x2b
	mov	r12d, 4
	jmp	.label_1423
.label_3043:
	cmp	r10d, 0x45
	je	.label_1417
	mov	rax, qword ptr [rsp + 0x18]
	mov	esi, dword ptr [rax + 8]
	jmp	.label_1444
.label_3044:
	mov	ecx, 2
	cmp	r10d, 0x45
	je	.label_1417
	mov	eax, dword ptr [rsp + 0x5c]
	mov	esi, eax
	jmp	.label_1424
.label_3045:
	cmp	r10d, 0x45
	je	.label_1417
	mov	rax, qword ptr [rsp + 0x18]
	mov	esi, dword ptr [rax + 4]
	jmp	.label_1444
.label_3046:
	cmp	r10d, 0x45
	je	.label_1417
	mov	ecx, 9
	cmp	ebp, -1
	je	.label_1450
	cmp	ebp, 8
	jg	.label_1453
	mov	eax, 9
	mov	ecx, dword ptr [rsp + 0x4d8]
	mov	esi, ecx
	nop	word ptr cs:[rax + rax]
.label_1461:
	movsxd	rcx, esi
	imul	rsi, rcx, 0x66666667
	mov	rcx, rsi
	shr	rcx, 0x3f
	sar	rsi, 0x22
	add	esi, ecx
	dec	eax
	cmp	ebp, eax
	jne	.label_1461
	jmp	.label_1506
.label_3047:
	mov	cl, 1
.label_3065:
	xor	r11d, r11d
	test	r15b, r15b
	je	.label_1512
	mov	ebx, 0
.label_1512:
	je	.label_1469
	mov	cl, 1
.label_1469:
	mov	al, 0x70
	mov	dil, cl
	jmp	.label_1462
.label_3048:
	cmp	r10d, 0x45
	je	.label_1417
	mov	rax, qword ptr [rsp + 0x18]
	mov	esi, dword ptr [rax]
	jmp	.label_1444
.label_3049:
	mov	esi, OFFSET FLAT:label_1476
.label_1423:
	xor	ecx, ecx
	mov	qword ptr [rsp + 0x38], rbx
	test	bl, bl
	setne	cl
	xor	ebx, ebx
	xor	edi, edi
	mov	qword ptr [rsp + 0x10], rsi
	mov	rdx, qword ptr [rsp + 0x18]
	mov	r8d, r14d
	mov	qword ptr [rsp + 8], r9
	mov	r9d, r12d
	mov	eax, dword ptr [rsp + 0x4d8]
	push	rax
	push	qword ptr [rsp + 0x4d8]
	call	__strftime_internal
	mov	r9, qword ptr [rsp + 0x18]
	movabs	r8, 0x100000000
	add	rsp, 0x10
	test	ebp, ebp
	cmovns	ebx, ebp
	movsxd	rcx, ebx
	cmp	rax, rcx
	mov	r15, rax
	cmovb	r15, rcx
	mov	rdx, r9
	not	rdx
	cmp	r15, rdx
	jae	.label_1416
	cmp	qword ptr [rsp], 0
	je	.label_1492
	cmp	rax, rcx
	mov	rbx, qword ptr [rsp]
	jae	.label_1433
	movsxd	rbp, ebp
	sub	rbp, rax
	cmp	r14d, 0x30
	je	.label_1497
	cmp	r14d, 0x2b
	jne	.label_1539
.label_1497:
	test	rbp, rbp
	mov	rbx, qword ptr [rsp]
	je	.label_1433
	nop	word ptr cs:[rax + rax]
.label_1508:
	mov	edi, 0x30
	mov	rsi, rbx
	call	fputc
	dec	rbp
	jne	.label_1508
	jmp	.label_1433
.label_3050:
	cmp	r10d, 0x45
	je	.label_1417
	mov	rcx, qword ptr [rsp + 0x18]
	mov	eax, dword ptr [rcx + 0x1c]
	add	eax, 7
	sub	eax, dword ptr [rcx + 0x18]
	movsxd	rsi, eax
	jmp	.label_1511
.label_3051:
	cmp	r10d, 0x45
	je	.label_1417
	mov	rcx, qword ptr [rsp + 0x18]
	mov	eax, dword ptr [rcx + 0x18]
	mov	ecx, dword ptr [rcx + 0x1c]
	mov	rdi, rdx
	lea	edx, [rax + 6]
	movsxd	rdx, edx
	imul	rsi, rdx, -0x6db6db6d
	shr	rsi, 0x20
	lea	eax, [rsi + rax + 6]
	mov	esi, eax
	shr	esi, 0x1f
	sar	eax, 2
	add	eax, esi
	lea	esi, [rax*8]
	sub	esi, eax
	sub	edx, esi
	add	ecx, 7
	sub	ecx, edx
	mov	rdx, rdi
	movsxd	rsi, ecx
.label_1511:
	imul	rax, rsi, -0x6db6db6d
	shr	rax, 0x20
	add	esi, eax
	mov	eax, esi
	shr	eax, 0x1f
	sar	esi, 2
	add	esi, eax
	jmp	.label_1444
.label_3052:
	xor	r11d, r11d
	cmp	r10d, 0x4f
	je	.label_1417
	mov	al, 0x58
	xor	edi, edi
	jmp	.label_1462
.label_3053:
	xor	r11d, r11d
	cmp	r10d, 0x45
	je	.label_1531
	cmp	r10d, 0x4f
	je	.label_1417
	mov	qword ptr [rsp + 0x28], rdx
	mov	dword ptr [rsp + 0x30], r10d
	mov	rax, qword ptr [rsp + 0x18]
	mov	edi, dword ptr [rax + 0x14]
	cmp	edi, 0xfffff894
	setl	r11b
	add	edi, 0x76c
	mov	eax, 4
	jmp	.label_1536
.label_3054:
	mov	qword ptr [rsp + 0x38], rbx
	mov	rdi, qword ptr [rsp + 0x50]
	mov	qword ptr [rsp + 8], r9
	call	strlen
	mov	r9, qword ptr [rsp + 8]
	movabs	r8, 0x100000000
	xor	ecx, ecx
	test	ebp, ebp
	cmovns	ecx, ebp
	movsxd	rdx, ecx
	cmp	rax, rdx
	mov	r12, rax
	cmovb	r12, rdx
	mov	rcx, r9
	not	rcx
	cmp	r12, rcx
	jae	.label_1416
	cmp	qword ptr [rsp], 0
	je	.label_1426
	mov	qword ptr [rsp + 0x10], rax
	cmp	rax, rdx
	jae	.label_1446
	movsxd	rbp, ebp
	sub	rbp, qword ptr [rsp + 0x10]
	cmp	r14d, 0x30
	je	.label_1557
	cmp	r14d, 0x2b
	jne	.label_1559
.label_1557:
	test	rbp, rbp
	mov	rbx, qword ptr [rsp]
	je	.label_1446
	nop	word ptr [rax + rax]
.label_1564:
	mov	edi, 0x30
	mov	rsi, rbx
	call	fputc
	dec	rbp
	jne	.label_1564
	jmp	.label_1446
.label_3055:
	test	r10d, r10d
	jne	.label_1417
	test	r15b, r15b
	je	.label_1569
	mov	bl, 1
.label_1569:
	xor	edi, edi
	mov	al, 0x61
	jmp	.label_1418
.label_3057:
	xor	r11d, r11d
	cmp	r10d, 0x4f
	je	.label_1417
	mov	al, 0x63
	xor	edi, edi
	jmp	.label_1462
.label_3058:
	cmp	r10d, 0x45
	je	.label_1417
	mov	rax, qword ptr [rsp + 0x18]
	mov	esi, dword ptr [rax + 0xc]
.label_1444:
	mov	ecx, 2
	jmp	.label_1424
.label_3059:
	cmp	r10d, 0x45
	je	.label_1417
	mov	rax, qword ptr [rsp + 0x18]
	mov	eax, dword ptr [rax + 0xc]
	jmp	.label_1542
.label_3060:
	cmp	r10d, 0x45
	je	.label_1417
	mov	rax, qword ptr [rsp + 0x18]
	mov	eax, dword ptr [rax + 0x1c]
	cmp	eax, -1
	setl	r11b
	inc	eax
	mov	qword ptr [rsp + 0x40], rax
	mov	eax, 3
	jmp	.label_1584
.label_3061:
	cmp	r10d, 0x45
	je	.label_1417
	mov	rax, qword ptr [rsp + 0x18]
	mov	eax, dword ptr [rax + 8]
	jmp	.label_1542
.label_3062:
	cmp	r10d, 0x45
	mov	eax, dword ptr [rsp + 0x5c]
	je	.label_1417
.label_1542:
	test	r14d, r14d
	mov	ecx, 0x5f
	cmove	r14d, ecx
	mov	ecx, 2
	mov	esi, eax
	jmp	.label_1424
.label_3063:
	cmp	r10d, 0x45
	je	.label_1417
	mov	rax, qword ptr [rsp + 0x18]
	mov	eax, dword ptr [rax + 0x10]
	cmp	eax, -1
	setl	r11b
	inc	eax
	mov	qword ptr [rsp + 0x40], rax
	mov	eax, 2
.label_1584:
	mov	qword ptr [rsp + 0x10], rax
	mov	dword ptr [rsp + 0x24], 0
	xor	eax, eax
	jmp	.label_1436
.label_3064:
	xor	eax, eax
	test	ebp, ebp
	cmovns	eax, ebp
	movsxd	rcx, eax
	cmp	ecx, 1
	mov	ebx, 1
	cmova	rbx, rcx
	mov	rcx, r9
	not	rcx
	cmp	rbx, rcx
	jae	.label_1416
	mov	r12, qword ptr [rsp]
	test	r12, r12
	je	.label_1582
	mov	r15, r9
	cmp	eax, 2
	jb	.label_1451
	movsxd	rbp, ebp
	dec	rbp
	cmp	r14d, 0x30
	je	.label_1455
	cmp	r14d, 0x2b
	jne	.label_1459
.label_1455:
	test	rbp, rbp
	je	.label_1451
	nop	dword ptr [rax]
.label_1463:
	mov	edi, 0x30
	mov	rsi, r12
	call	fputc
	dec	rbp
	jne	.label_1463
	jmp	.label_1451
.label_3066:
	mov	rax, qword ptr [rsp + 0x18]
	imul	eax, dword ptr [rax + 0x10], 0xb
	sar	eax, 5
	inc	eax
	mov	qword ptr [rsp + 0x40], rax
	mov	eax, 1
	mov	qword ptr [rsp + 0x10], rax
	mov	dword ptr [rsp + 0x24], 0
	xor	eax, eax
	xor	r11d, r11d
	jmp	.label_1436
.label_3067:
	mov	qword ptr [rsp + 0x38], rbx
	mov	r12, r9
	mov	rcx, qword ptr [rsp + 0x18]
	mov	rax, qword ptr [rcx + 0x30]
	mov	qword ptr [rsp + 0xc0], rax
	movups	xmm0, xmmword ptr [rcx]
	movups	xmm1, xmmword ptr [rcx + 0x10]
	movups	xmm2, xmmword ptr [rcx + 0x20]
	movaps	xmmword ptr [rsp + 0xb0], xmm2
	movaps	xmmword ptr [rsp + 0xa0], xmm1
	movaps	xmmword ptr [rsp + 0x90], xmm0
	lea	rsi, [rsp + 0x90]
	mov	rdi, qword ptr [rsp + 0x4d0]
	call	mktime_z
	mov	rcx, rax
	mov	r11, rcx
	shr	r11, 0x3f
	lea	r15, [rsp + 0x87]
	nop	dword ptr [rax]
.label_1483:
	movabs	rdx, 0x6666666666666667
	mov	rax, rcx
	imul	rdx
	mov	rax, rdx
	shr	rax, 0x3f
	sar	rdx, 2
	lea	edi, [rdx + rax]
	add	edi, edi
	lea	edi, [rdi + rdi*4]
	mov	ebx, ecx
	sub	ebx, edi
	add	rdx, rax
	mov	eax, ebx
	neg	eax
	test	r11, r11
	cmove	eax, ebx
	add	eax, 0x30
	mov	byte ptr [r15 - 1], al
	dec	r15
	add	rcx, 9
	cmp	rcx, 0x12
	mov	rcx, rdx
	ja	.label_1483
	mov	eax, 1
	mov	qword ptr [rsp + 0x10], rax
	xor	eax, eax
	movabs	r8, 0x100000000
	mov	r9, r12
	mov	rbx, qword ptr [rsp + 0x40]
	mov	esi, dword ptr [rsp + 0x24]
	jmp	.label_1581
.label_3068:
	xor	eax, eax
	test	ebp, ebp
	cmovns	eax, ebp
	movsxd	rcx, eax
	cmp	ecx, 1
	mov	ebx, 1
	cmova	rbx, rcx
	mov	rcx, r9
	not	rcx
	cmp	rbx, rcx
	jae	.label_1416
	mov	r12, qword ptr [rsp]
	test	r12, r12
	je	.label_1515
	mov	r15, r9
	cmp	eax, 2
	jb	.label_1478
	movsxd	rbp, ebp
	dec	rbp
	cmp	r14d, 0x30
	je	.label_1517
	cmp	r14d, 0x2b
	jne	.label_1519
.label_1517:
	test	rbp, rbp
	je	.label_1478
	nop	
.label_1525:
	mov	edi, 0x30
	mov	rsi, r12
	call	fputc
	dec	rbp
	jne	.label_1525
	jmp	.label_1478
.label_3069:
	mov	rax, qword ptr [rsp + 0x18]
	mov	eax, dword ptr [rax + 0x18]
	lea	ecx, [rax + 6]
	movsxd	rsi, ecx
	imul	rcx, rsi, -0x6db6db6d
	shr	rcx, 0x20
	lea	eax, [rcx + rax + 6]
	mov	ecx, eax
	shr	ecx, 0x1f
	sar	eax, 2
	add	eax, ecx
	lea	ecx, [rax*8]
	sub	ecx, eax
	sub	esi, ecx
	inc	esi
	mov	ecx, 1
	jmp	.label_1424
.label_3070:
	cmp	r10d, 0x45
	je	.label_1417
	mov	rax, qword ptr [rsp + 0x18]
	mov	esi, dword ptr [rax + 0x18]
	mov	ecx, 1
	jmp	.label_1424
.label_3071:
	xor	r11d, r11d
	cmp	r10d, 0x4f
	je	.label_1417
	mov	al, 0x78
	xor	edi, edi
	jmp	.label_1462
.label_3072:
	cmp	r10d, 0x45
	jne	.label_1543
	xor	edi, edi
	mov	al, 0x79
	jmp	.label_1418
.label_1541:
	mov	eax, edx
.label_1418:
	xor	r11d, r11d
	jmp	.label_1462
.label_1520:
	dec	r12d
	mov	edi, 0x16d
	test	r12b, 3
	jne	.label_1548
	movsxd	rax, r12d
	imul	rax, rax, 0x51eb851f
	mov	rcx, rax
	sar	rcx, 0x25
	mov	rdx, rax
	shr	rdx, 0x3f
	add	ecx, edx
	imul	ecx, ecx, 0x64
	sar	rax, 0x27
	add	eax, edx
	imul	eax, eax, 0x190
	xor	edx, edx
	cmp	r12d, eax
	sete	dl
	add	edx, 0x16d
	cmp	r12d, ecx
	mov	edi, 0x16e
	cmove	edi, edx
.label_1548:
	add	edi, r15d
	mov	rax, qword ptr [rsp + 0x18]
	mov	esi, dword ptr [rax + 0x18]
	call	iso_week_days
	mov	ebx, eax
	mov	ecx, 0xffffffff
.label_1537:
	movabs	r8, 0x100000000
	mov	r9, qword ptr [rsp + 8]
	movsx	eax, byte ptr [r13]
	cmp	eax, 0x47
	je	.label_1439
	cmp	eax, 0x67
	jne	.label_1567
	mov	rax, qword ptr [rsp + 0x18]
	movsxd	rax, dword ptr [rax + 0x14]
	imul	rdx, rax, 0x51eb851f
	mov	rsi, rdx
	shr	rsi, 0x3f
	sar	rdx, 0x25
	add	edx, esi
	imul	edx, edx, 0x64
	mov	esi, eax
	sub	esi, edx
	add	esi, ecx
	movsxd	rdi, esi
	imul	rdx, rdi, 0x51eb851f
	mov	rsi, rdx
	shr	rsi, 0x3f
	sar	rdx, 0x25
	add	edx, esi
	imul	edx, edx, 0x64
	sub	edi, edx
	js	.label_1568
	mov	eax, 2
	mov	qword ptr [rsp + 0x10], rax
	jmp	.label_1578
.label_1415:
	mov	qword ptr [rsp + 0x28], rdx
	mov	dword ptr [rsp + 0x30], r10d
	mov	rax, qword ptr [rsp + 0x18]
	movsxd	rax, dword ptr [rax + 0x14]
	cmp	rax, -0x76c
	setl	r11b
	setg	cl
	imul	rdi, rax, 0x51eb851f
	mov	rdx, rdi
	shr	rdx, 0x3f
	sar	rdi, 0x25
	add	edi, edx
	imul	edx, edi, 0x64
	cmp	eax, edx
	sets	al
	and	al, cl
	movzx	eax, al
	sub	edi, eax
	add	edi, 0x13
	mov	eax, 2
.label_1536:
	mov	qword ptr [rsp + 0x10], rax
	jmp	.label_1425
.label_1543:
	mov	qword ptr [rsp + 0x28], rdx
	mov	dword ptr [rsp + 0x30], r10d
	mov	rax, qword ptr [rsp + 0x18]
	movsxd	rax, dword ptr [rax + 0x14]
	imul	rcx, rax, 0x51eb851f
	mov	rdx, rcx
	shr	rdx, 0x3f
	sar	rcx, 0x25
	add	ecx, edx
	imul	ecx, ecx, 0x64
	mov	edi, eax
	sub	edi, ecx
	js	.label_1428
	mov	eax, 2
	mov	qword ptr [rsp + 0x10], rax
	jmp	.label_1437
.label_1439:
	mov	rax, qword ptr [rsp + 0x18]
	mov	eax, dword ptr [rax + 0x14]
	mov	edx, 0xfffff894
	sub	edx, ecx
	cmp	eax, edx
	setl	r11b
	lea	edi, [rcx + rax + 0x76c]
	mov	eax, 4
	mov	qword ptr [rsp + 0x10], rax
	mov	rbx, qword ptr [rsp + 0x38]
	jmp	.label_1425
.label_1567:
	movsxd	rax, ebx
	imul	rcx, rax, -0x6db6db6d
	shr	rcx, 0x20
	add	eax, ecx
	mov	ecx, eax
	sar	ecx, 2
	shr	eax, 0x1f
	lea	esi, [rcx + rax + 1]
	mov	ecx, 2
	mov	rbx, qword ptr [rsp + 0x38]
	mov	r10d, dword ptr [rsp + 0x30]
	mov	rdx, qword ptr [rsp + 0x28]
	jmp	.label_1424
.label_1531:
	mov	al, 0x59
	xor	edi, edi
	jmp	.label_1462
.label_1539:
	test	rbp, rbp
	mov	rbx, qword ptr [rsp]
	je	.label_1433
	nop	word ptr cs:[rax + rax]
.label_1468:
	mov	edi, 0x20
	mov	rsi, rbx
	call	fputc
	dec	rbp
	jne	.label_1468
.label_1433:
	xor	ecx, ecx
	mov	rax, qword ptr [rsp + 0x38]
	test	al, al
	setne	cl
	mov	rdi, rbx
	mov	rsi, qword ptr [rsp + 0x10]
	mov	rdx, qword ptr [rsp + 0x18]
	mov	r8d, r14d
	mov	r9d, r12d
	mov	eax, dword ptr [rsp + 0x4d8]
	push	rax
	push	qword ptr [rsp + 0x4d8]
	call	__strftime_internal
	add	rsp, 0x10
	jmp	.label_1479
.label_1528:
	mov	rcx, qword ptr [rsp + 0x50]
	cmp	byte ptr [rcx], 0x2d
	sete	r11b
.label_1573:
	cmp	rsi, 3
	mov	qword ptr [rsp + 0x28], rdx
	ja	.label_1481
	mov	r15d, r10d
	mov	r10, rbx
	movsxd	rcx, eax
	imul	rdx, rcx, -0x77777777
	shr	rdx, 0x20
	add	edx, eax
	mov	edi, edx
	shr	edi, 0x1f
	sar	edx, 5
	add	edx, edi
	imul	rbx, rcx, -0x6e5d4c3b
	shr	rbx, 0x20
	add	ebx, eax
	mov	ecx, ebx
	shr	ecx, 0x1f
	sar	ebx, 0xb
	add	ebx, ecx
	movsxd	rcx, edx
	imul	rdx, rcx, -0x77777777
	shr	rdx, 0x20
	add	edx, ecx
	mov	edi, edx
	shr	edi, 0x1f
	sar	edx, 5
	add	edx, edi
	imul	edx, edx, 0x3c
	imul	edi, ecx, 0x3c
	sub	ecx, edx
	sub	eax, edi
	jmp	qword ptr [word ptr [+ (rsi * 8) + label_1486]]
.label_2776:
	imul	ebx, ebx, 0x64
	add	ebx, ecx
	mov	qword ptr [rsp + 0x40], rbx
	mov	esi, 5
.label_1442:
	mov	dword ptr [rsp + 0x24], 0
	jmp	.label_1500
.label_1427:
	xor	eax, eax
	mov	r12d, ebp
	add	r12d, -6
	cmovs	r12d, eax
	mov	esi, OFFSET FLAT:label_577
	jmp	.label_1423
.label_1450:
	mov	eax, dword ptr [rsp + 0x4d8]
	mov	esi, eax
	mov	ebp, 9
	jmp	.label_1424
.label_1568:
	mov	edx, 2
	mov	qword ptr [rsp + 0x10], rdx
	mov	edx, 0xfffff894
	sub	edx, ecx
	mov	ecx, edi
	neg	ecx
	add	edi, 0x64
	cmp	eax, edx
	cmovl	edi, ecx
.label_1578:
	xor	r11d, r11d
	mov	rbx, qword ptr [rsp + 0x38]
	jmp	.label_1425
.label_1428:
	mov	ecx, 2
	mov	qword ptr [rsp + 0x10], rcx
	mov	ecx, edi
	neg	ecx
	add	edi, 0x64
	cmp	eax, 0xfffff894
	cmovl	edi, ecx
.label_1437:
	xor	r11d, r11d
.label_1425:
	test	r14d, r14d
	cmove	r14d, dword ptr [rsp + 0x68]
	mov	dword ptr [rsp + 0x24], 0
	cmp	r14d, 0x2b
	mov	eax, 0
	jne	.label_1521
	mov	rdx, qword ptr [rsp + 0x10]
	cmp	edx, 2
	mov	eax, 0x63
	mov	ecx, 0x270f
	cmove	ecx, eax
	cmp	ecx, edi
	setb	cl
	cmp	edx, ebp
	setl	al
	or	al, cl
.label_1521:
	mov	qword ptr [rsp + 0x40], rdi
	mov	r10d, dword ptr [rsp + 0x30]
	mov	rdx, qword ptr [rsp + 0x28]
	jmp	.label_1436
.label_1481:
	xor	esi, esi
	mov	ecx, 0x18
	jmp	.label_1530
.label_2779:
	test	eax, eax
	je	.label_1533
.label_2778:
	imul	ebx, ebx, 0x2710
	imul	ecx, ecx, 0x64
	add	ebx, eax
	add	ebx, ecx
	mov	qword ptr [rsp + 0x40], rbx
	mov	esi, 9
	mov	dword ptr [rsp + 0x24], 0x14
	jmp	.label_1500
.label_1453:
	mov	eax, dword ptr [rsp + 0x4d8]
	mov	esi, eax
.label_1506:
	mov	ecx, ebp
.label_1424:
	mov	qword ptr [rsp + 0x40], rsi
	mov	r11d, esi
	shr	r11d, 0x1f
	mov	dword ptr [rsp + 0x24], 0
	xor	eax, eax
	mov	qword ptr [rsp + 0x10], rcx
.label_1436:
	cmp	r10d, 0x4f
	jne	.label_1509
	test	r11b, r11b
	jne	.label_1509
	xor	edi, edi
	mov	eax, edx
	mov	r11, qword ptr [rsp + 0x10]
.label_1462:
	mov	dword ptr [rsp + 0x28], edi
	mov	qword ptr [rsp + 0x10], r11
	mov	qword ptr [rsp + 0x38], rbx
	mov	qword ptr [rsp + 8], r9
	mov	word ptr [rsp + 0x4b], 0x2520
	test	r10d, r10d
	lea	rcx, [rsp + 0x4d]
	je	.label_1550
	mov	byte ptr [rsp + 0x4d], r10b
	lea	rcx, [rsp + 0x4e]
.label_1550:
	mov	byte ptr [rcx], al
	mov	byte ptr [rcx + 1], 0
	lea	rdi, [rsp + 0x90]
	lea	rdx, [rsp + 0x4b]
	mov	esi, 0x400
	mov	rcx, qword ptr [rsp + 0x18]
	call	strftime
	mov	rbx, rax
	test	rbx, rbx
	mov	r12, qword ptr [rsp]
	je	.label_1561
	dec	rbx
	xor	eax, eax
	test	ebp, ebp
	cmovns	eax, ebp
	cdqe	
	cmp	rbx, rax
	mov	r15, rbx
	cmovb	r15, rax
	mov	r9, qword ptr [rsp + 8]
	mov	rcx, r9
	not	rcx
	cmp	r15, rcx
	mov	rcx, qword ptr [rsp + 0x10]
	jae	.label_1416
	test	r12, r12
	je	.label_1572
	cmp	rbx, rax
	setae	al
	test	ecx, ecx
	jne	.label_1414
	test	al, al
	jne	.label_1414
	movsxd	rbp, ebp
	sub	rbp, rbx
	cmp	r14d, 0x30
	je	.label_1575
	cmp	r14d, 0x2b
	jne	.label_1549
.label_1575:
	test	rbp, rbp
	je	.label_1414
	nop	dword ptr [rax]
.label_1586:
	mov	edi, 0x30
	mov	rsi, r12
	call	fputc
	dec	rbp
	jne	.label_1586
	jmp	.label_1414
.label_1509:
	mov	qword ptr [rsp + 0x38], rbx
	mov	rdx, qword ptr [rsp + 0x40]
	mov	ecx, edx
	neg	ecx
	test	r11b, r11b
	cmove	ecx, edx
	lea	r15, [rsp + 0x87]
	mov	esi, dword ptr [rsp + 0x24]
	nop	word ptr [rax + rax]
.label_1430:
	test	sil, 1
	je	.label_1474
	mov	byte ptr [r15 - 1], 0x3a
	dec	r15
.label_1474:
	sar	esi, 1
	mov	edx, ecx
	mov	ebx, 0xcccccccd
	imul	rbx, rdx
	shr	rbx, 0x23
	lea	edx, [rbx + rbx]
	lea	edx, [rdx + rdx*4]
	mov	edi, ecx
	sub	edi, edx
	or	edi, 0x30
	mov	byte ptr [r15 - 1], dil
	dec	r15
	cmp	ecx, 9
	mov	ecx, ebx
	ja	.label_1430
	test	esi, esi
	mov	ecx, ebx
	jne	.label_1430
.label_1581:
	mov	rcx, qword ptr [rsp + 0x10]
	cmp	ecx, ebp
	cmovl	ecx, ebp
	test	al, al
	je	.label_1438
	mov	al, 0x2b
.label_1438:
	test	r11b, r11b
	mov	dil, 0x2d
	jne	.label_1480
	mov	edi, eax
.label_1480:
	cmp	r14d, 0x2d
	mov	r10, rcx
	mov	qword ptr [rsp + 0x40], rbx
	mov	dword ptr [rsp + 0x24], esi
	jne	.label_1440
	test	dil, dil
	je	.label_1448
	xor	eax, eax
	test	ebp, ebp
	cmovns	eax, ebp
	movsxd	rcx, eax
	cmp	ecx, 1
	mov	edx, 1
	cmova	rdx, rcx
	mov	rcx, r9
	not	rcx
	cmp	rdx, rcx
	jae	.label_1416
	cmp	qword ptr [rsp], 0
	je	.label_1460
	mov	qword ptr [rsp + 0x30], rdx
	mov	byte ptr [rsp + 0x28], dil
	mov	qword ptr [rsp + 8], r9
	cmp	eax, 2
	setb	al
	mov	qword ptr [rsp + 0x10], r10
	test	r10d, r10d
	mov	r12, qword ptr [rsp]
	jne	.label_1464
	test	al, al
	jne	.label_1464
	movsxd	rbx, ebp
	jmp	.label_1465
	.section	.text
	.align	32
	#Procedure 0x410d01
	.globl sub_410d01
	.type sub_410d01, @function
sub_410d01:

	nop	word ptr cs:[rax + rax]
.label_1534:
	mov	edi, 0x20
	mov	rsi, r12
	call	fputc
.label_1465:
	dec	rbx
	jne	.label_1534
.label_1464:
	movzx	edi, byte ptr [rsp + 0x28]
	mov	rsi, r12
	call	fputc
	movabs	r8, 0x100000000
	mov	r9, qword ptr [rsp + 8]
	mov	r10, qword ptr [rsp + 0x10]
	mov	rdx, qword ptr [rsp + 0x30]
.label_1460:
	add	r9, rdx
	jmp	.label_1448
.label_1561:
	movabs	r8, 0x100000000
	mov	r9, qword ptr [rsp + 8]
	jmp	.label_1435
.label_1440:
	movsxd	rax, r10d
	mov	rcx, r15
	lea	rdx, [rsp + 0x87]
	sub	rcx, rdx
	mov	edx, edi
	neg	dl
	sbb	rdx, rdx
	add	rdx, rcx
	add	rdx, rax
	test	edx, edx
	jle	.label_1484
	cmp	r14d, 0x5f
	mov	qword ptr [rsp + 0x10], r10
	mov	qword ptr [rsp + 0x30], rdx
	jne	.label_1488
	movsxd	rcx, edx
	mov	rax, r9
	not	rax
	cmp	rcx, rax
	jae	.label_1416
	mov	dword ptr [rsp + 0x60], ebp
	mov	byte ptr [rsp + 0x28], dil
	mov	qword ptr [rsp + 8], r9
	mov	rbx, qword ptr [rsp]
	test	rbx, rbx
	je	.label_1494
	test	rcx, rcx
	je	.label_1494
	xor	r12d, r12d
	nop	
.label_1501:
	mov	edi, 0x20
	mov	rsi, rbx
	mov	rbp, rcx
	call	fputc
	mov	rcx, rbp
	inc	r12
	cmp	r12, rcx
	jb	.label_1501
.label_1494:
	mov	r9, qword ptr [rsp + 8]
	add	r9, rcx
	xor	eax, eax
	mov	rcx, qword ptr [rsp + 0x30]
	mov	ebp, dword ptr [rsp + 0x60]
	sub	ebp, ecx
	cmovle	ebp, eax
	cmp	byte ptr [rsp + 0x28], 0
	je	.label_1505
	test	ebp, ebp
	cmovns	eax, ebp
	movsxd	rcx, eax
	cmp	ecx, 1
	mov	edx, 1
	cmova	rdx, rcx
	mov	rcx, r9
	not	rcx
	cmp	rdx, rcx
	movabs	r8, 0x100000000
	mov	r10, qword ptr [rsp + 0x10]
	jae	.label_1416
	cmp	qword ptr [rsp], 0
	je	.label_1460
	mov	qword ptr [rsp + 0x60], rdx
	mov	qword ptr [rsp + 8], r9
	cmp	eax, 2
	setb	al
	test	r10d, r10d
	mov	rsi, qword ptr [rsp]
	jne	.label_1518
	test	al, al
	jne	.label_1518
	movsxd	rax, ebp
	dec	rax
	cmp	r14d, 0x30
	mov	qword ptr [rsp + 0x30], rax
	je	.label_1490
	cmp	r14d, 0x2b
	jne	.label_1527
.label_1490:
	test	rax, rax
	mov	rsi, qword ptr [rsp]
	je	.label_1518
	xor	r12d, r12d
	nop	dword ptr [rax + rax]
.label_1532:
	mov	edi, 0x30
	mov	rbx, rsi
	call	fputc
	mov	rsi, rbx
	inc	r12
	cmp	r12, qword ptr [rsp + 0x30]
	jb	.label_1532
	jmp	.label_1518
.label_1484:
	test	dil, dil
	je	.label_1448
	xor	eax, eax
	test	ebp, ebp
	cmovns	eax, ebp
	movsxd	rcx, eax
	cmp	ecx, 1
	mov	edx, 1
	cmova	rdx, rcx
	mov	rcx, r9
	not	rcx
	cmp	rdx, rcx
	jae	.label_1416
	cmp	qword ptr [rsp], 0
	je	.label_1460
	mov	qword ptr [rsp + 0x30], rdx
	mov	byte ptr [rsp + 0x28], dil
	mov	qword ptr [rsp + 8], r9
	cmp	eax, 2
	setb	al
	mov	qword ptr [rsp + 0x10], r10
	test	r10d, r10d
	mov	r12, qword ptr [rsp]
	jne	.label_1464
	test	al, al
	jne	.label_1464
	movsxd	rbx, ebp
	dec	rbx
	cmp	r14d, 0x30
	je	.label_1552
	cmp	r14d, 0x2b
	jne	.label_1555
.label_1552:
	test	rbx, rbx
	mov	r12, qword ptr [rsp]
	je	.label_1464
	nop	word ptr [rax + rax]
.label_1485:
	mov	edi, 0x30
	mov	rsi, r12
	call	fputc
	dec	rbx
	jne	.label_1485
	jmp	.label_1464
.label_1488:
	mov	rcx, r9
	not	rcx
	cmp	rax, rcx
	jae	.label_1416
	test	dil, dil
	je	.label_1563
	xor	eax, eax
	test	ebp, ebp
	cmovns	eax, ebp
	movsxd	rsi, eax
	cmp	esi, 1
	mov	ebx, 1
	cmova	rbx, rsi
	cmp	rbx, rcx
	jae	.label_1416
	mov	r12, qword ptr [rsp]
	test	r12, r12
	je	.label_1571
	mov	byte ptr [rsp + 0x28], dil
	mov	qword ptr [rsp + 8], r9
	cmp	eax, 2
	setb	al
	mov	rcx, qword ptr [rsp + 0x10]
	test	ecx, ecx
	jne	.label_1419
	test	al, al
	jne	.label_1419
	movsxd	rbp, ebp
	dec	rbp
	cmp	r14d, 0x30
	je	.label_1577
	cmp	r14d, 0x2b
	jne	.label_1553
.label_1577:
	test	rbp, rbp
	je	.label_1419
	nop	
.label_1472:
	mov	edi, 0x30
	mov	rsi, r12
	call	fputc
	dec	rbp
	jne	.label_1472
	jmp	.label_1419
.label_1549:
	test	rbp, rbp
	je	.label_1414
	nop	dword ptr [rax]
.label_1421:
	mov	edi, 0x20
	mov	rsi, r12
	call	fputc
	dec	rbp
	jne	.label_1421
.label_1414:
	mov	eax, dword ptr [rsp + 0x28]
	test	al, 1
	jne	.label_1422
	mov	rax, qword ptr [rsp + 0x38]
	test	al, 1
	jne	.label_1566
	mov	edx, 1
	lea	rdi, [rsp + 0x91]
	mov	rsi, rbx
	mov	rcx, r12
	call	fwrite
	jmp	.label_1432
.label_1422:
	mov	rdi, r12
	lea	rsi, [rsp + 0x91]
	mov	rdx, rbx
	call	fwrite_lowcase
	jmp	.label_1432
.label_1566:
	mov	rdi, r12
	lea	rsi, [rsp + 0x91]
	mov	rdx, rbx
	call	fwrite_uppcase
.label_1432:
	mov	r9, qword ptr [rsp + 8]
.label_1572:
	add	r9, r15
	movabs	r8, 0x100000000
	jmp	.label_1435
.label_1563:
	mov	qword ptr [rsp + 8], r9
	mov	r12, qword ptr [rsp]
	jmp	.label_1441
.label_1559:
	test	rbp, rbp
	mov	rbx, qword ptr [rsp]
	je	.label_1446
	nop	word ptr cs:[rax + rax]
.label_1454:
	mov	edi, 0x20
	mov	rsi, rbx
	call	fputc
	dec	rbp
	jne	.label_1454
.label_1446:
	test	r15b, r15b
	je	.label_1457
	mov	rdi, qword ptr [rsp]
	mov	rsi, qword ptr [rsp + 0x50]
	mov	rdx, qword ptr [rsp + 0x10]
	call	fwrite_lowcase
	jmp	.label_1445
.label_1457:
	mov	rax, qword ptr [rsp + 0x38]
	test	al, al
	je	.label_1477
	mov	rdi, qword ptr [rsp]
	mov	rsi, qword ptr [rsp + 0x50]
	mov	rdx, qword ptr [rsp + 0x10]
	call	fwrite_uppcase
	jmp	.label_1445
.label_1459:
	test	rbp, rbp
	je	.label_1451
	nop	dword ptr [rax]
.label_1473:
	mov	edi, 0x20
	mov	rsi, r12
	call	fputc
	dec	rbp
	jne	.label_1473
.label_1451:
	mov	edi, 0xa
	mov	rsi, r12
	call	fputc
	movabs	r8, 0x100000000
	mov	r9, r15
.label_1582:
	add	r9, rbx
	jmp	.label_1435
.label_1519:
	test	rbp, rbp
	je	.label_1478
	nop	dword ptr [rax]
.label_1482:
	mov	edi, 0x20
	mov	rsi, r12
	call	fputc
	dec	rbp
	jne	.label_1482
.label_1478:
	mov	edi, 9
	mov	rsi, r12
	call	fputc
	movabs	r8, 0x100000000
	mov	r9, r15
.label_1515:
	add	r9, rbx
	jmp	.label_1435
.label_1555:
	test	rbx, rbx
	mov	r12, qword ptr [rsp]
	je	.label_1464
.label_1470:
	mov	edi, 0x20
	mov	rsi, r12
	call	fputc
	dec	rbx
	jne	.label_1470
	jmp	.label_1464
.label_1477:
	mov	edx, 1
	mov	rdi, qword ptr [rsp + 0x50]
	mov	rsi, qword ptr [rsp + 0x10]
	jmp	.label_1493
.label_1533:
	test	ecx, ecx
	je	.label_1496
.label_2777:
	imul	ebx, ebx, 0x64
	add	ebx, ecx
	mov	qword ptr [rsp + 0x40], rbx
	mov	esi, 6
	mov	dword ptr [rsp + 0x24], 4
.label_1500:
	mov	ecx, 0x4b
	mov	rbx, r10
	mov	r10d, r15d
.label_1530:
	mov	edx, ecx
	and	dl, 0x7f
	cmp	dl, 0x18
	je	.label_1504
	mov	al, 1
	cmp	dl, 0x4b
	mov	qword ptr [rsp + 0x10], rsi
	mov	rdx, qword ptr [rsp + 0x28]
	je	.label_1436
	jmp	.label_1510
.label_1504:
	mov	r11, rsi
.label_1417:
	mov	qword ptr [rsp + 0x38], rbx
	xor	r12d, r12d
	xor	ebx, ebx
	nop	word ptr [rax + rax]
.label_1513:
	mov	rax, r12
	add	rbx, r8
	lea	r12, [rax - 1]
	cmp	byte ptr [r13 + rax], 0x25
	jne	.label_1513
	mov	rcx, r12
	neg	rcx
	test	ebp, ebp
	mov	edx, ebp
	mov	esi, 0
	cmovs	edx, esi
	cmp	ecx, edx
	mov	esi, edx
	cmova	esi, ecx
	movsxd	r15, esi
	mov	rsi, r9
	not	rsi
	cmp	r15, rsi
	jae	.label_1416
	cmp	qword ptr [rsp], 0
	je	.label_1492
	mov	qword ptr [rsp + 8], r9
	sar	rbx, 0x20
	test	r11d, r11d
	jne	.label_1524
	cmp	ecx, edx
	jae	.label_1524
	movsxd	rbp, ebp
	mov	rcx, rbp
	sub	rcx, rbx
	cmp	r14d, 0x30
	je	.label_1526
	cmp	r14d, 0x2b
	jne	.label_1529
.label_1526:
	test	rcx, rcx
	mov	r14, qword ptr [rsp]
	je	.label_1524
	mov	ecx, 1
	sub	ecx, eax
	movsxd	rax, ecx
	sub	rbp, rax
	nop	word ptr cs:[rax + rax]
.label_1538:
	mov	edi, 0x30
	mov	rsi, r14
	call	fputc
	dec	rbp
	jne	.label_1538
	jmp	.label_1524
.label_1529:
	test	rcx, rcx
	mov	r14, qword ptr [rsp]
	je	.label_1524
	mov	ecx, 1
	sub	ecx, eax
	movsxd	rax, ecx
	sub	rbp, rax
	nop	word ptr [rax + rax]
.label_1545:
	mov	edi, 0x20
	mov	rsi, r14
	call	fputc
	dec	rbp
	jne	.label_1545
.label_1524:
	lea	rsi, [r13 + r12 + 1]
	mov	rax, qword ptr [rsp + 0x38]
	test	al, 1
	jne	.label_1547
	mov	edx, 1
	mov	rdi, rsi
	mov	rsi, rbx
	mov	rcx, qword ptr [rsp]
	call	fwrite
	jmp	.label_1479
.label_1547:
	mov	rdi, qword ptr [rsp]
	mov	rdx, rbx
	call	fwrite_uppcase
.label_1479:
	movabs	r8, 0x100000000
	mov	r9, qword ptr [rsp + 8]
.label_1492:
	add	r9, r15
	jmp	.label_1554
.label_1527:
	test	rax, rax
	mov	rsi, qword ptr [rsp]
	je	.label_1518
	xor	ebx, ebx
.label_1583:
	mov	edi, 0x20
	mov	r12, rsi
	call	fputc
	mov	rsi, r12
	inc	rbx
	cmp	rbx, qword ptr [rsp + 0x30]
	jb	.label_1583
.label_1518:
	movzx	edi, byte ptr [rsp + 0x28]
	call	fputc
	movabs	r8, 0x100000000
	mov	r9, qword ptr [rsp + 8]
	mov	r10, qword ptr [rsp + 0x10]
	mov	rdx, qword ptr [rsp + 0x60]
	jmp	.label_1460
.label_1553:
	test	rbp, rbp
	je	.label_1419
.label_1570:
	mov	edi, 0x20
	mov	rsi, r12
	call	fputc
	dec	rbp
	jne	.label_1570
.label_1419:
	movzx	edi, byte ptr [rsp + 0x28]
	mov	rsi, r12
	call	fputc
	mov	r9, qword ptr [rsp + 8]
.label_1571:
	add	r9, rbx
	mov	qword ptr [rsp + 8], r9
.label_1441:
	test	r12, r12
	je	.label_1574
	mov	rax, qword ptr [rsp + 0x30]
	test	eax, eax
	je	.label_1574
	mov	rax, qword ptr [rsp + 0x30]
	movsxd	rbx, eax
	xor	ebp, ebp
	nop	
.label_1580:
	mov	edi, 0x30
	mov	rsi, r12
	call	fputc
	inc	rbp
	cmp	rbp, rbx
	jb	.label_1580
.label_1574:
	mov	rax, qword ptr [rsp + 0x30]
	cdqe	
	mov	r9, qword ptr [rsp + 8]
	add	r9, rax
	xor	ebp, ebp
.label_1505:
	movabs	r8, 0x100000000
	mov	r10, qword ptr [rsp + 0x10]
.label_1448:
	lea	rbx, [rsp + 0x87]
	sub	rbx, r15
	xor	eax, eax
	test	ebp, ebp
	cmovns	eax, ebp
	cdqe	
	cmp	rbx, rax
	mov	r12, rbx
	cmovb	r12, rax
	mov	rcx, r9
	not	rcx
	cmp	r12, rcx
	jae	.label_1416
	cmp	qword ptr [rsp], 0
	je	.label_1426
	mov	qword ptr [rsp + 8], r9
	cmp	rbx, rax
	setae	al
	test	r10d, r10d
	jne	.label_1429
	test	al, al
	jne	.label_1429
	movsxd	rbp, ebp
	sub	rbp, rbx
	cmp	r14d, 0x30
	je	.label_1514
	cmp	r14d, 0x2b
	jne	.label_1434
.label_1514:
	test	rbp, rbp
	mov	r14, qword ptr [rsp]
	je	.label_1429
	nop	dword ptr [rax]
.label_1546:
	mov	edi, 0x30
	mov	rsi, r14
	call	fputc
	dec	rbp
	jne	.label_1546
	jmp	.label_1429
.label_1434:
	test	rbp, rbp
	mov	r14, qword ptr [rsp]
	je	.label_1429
	nop	dword ptr [rax]
.label_1447:
	mov	edi, 0x20
	mov	rsi, r14
	call	fputc
	dec	rbp
	jne	.label_1447
.label_1429:
	mov	rax, qword ptr [rsp + 0x38]
	test	al, al
	je	.label_1576
	mov	rdi, qword ptr [rsp]
	mov	rsi, r15
	mov	rdx, rbx
	call	fwrite_uppcase
	jmp	.label_1445
.label_1576:
	mov	edx, 1
	mov	rdi, r15
	mov	rsi, rbx
.label_1493:
	mov	rcx, qword ptr [rsp]
	call	fwrite
.label_1445:
	movabs	r8, 0x100000000
	mov	r9, qword ptr [rsp + 8]
.label_1426:
	add	r9, r12
.label_1554:
	mov	r12, qword ptr [rsp]
.label_1435:
	mov	ebp, 0xffffffff
	cmp	byte ptr [r13 + 1], 0
	lea	r13, [r13 + 1]
	mov	rax, r9
	jne	.label_1420
	jmp	.label_1466
.label_1416:
	xor	eax, eax
.label_1466:
	add	rsp, 0x498
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x411513
	.globl sub_411513
	.type sub_411513, @function
sub_411513:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x411520

	.globl quote_n_mem
	.type quote_n_mem, @function
quote_n_mem:
	mov	ecx, OFFSET FLAT:quote_quoting_options
	jmp	quotearg_n_options
	.section	.text
	.align	32
	#Procedure 0x41152a
	.globl sub_41152a
	.type sub_41152a, @function
sub_41152a:

	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x411530
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
	#Procedure 0x411540

	.globl quote_n
	.type quote_n, @function
quote_n:
	mov	rdx, -1
	jmp	quote_n_mem
	.section	.text
	.align	32
	#Procedure 0x411549
	.globl sub_411549
	.type sub_411549, @function
sub_411549:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x411550

	.globl quote
	.type quote, @function
quote:
	mov	rax, rdi
	xor	edi, edi
	mov	rsi, rax
	jmp	quote_n
	.section	.text
	.align	32
	#Procedure 0x41155a
	.globl sub_41155a
	.type sub_41155a, @function
sub_41155a:

	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x411560

	.globl parse_reg_exp
	.type parse_reg_exp, @function
parse_reg_exp:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x28
	mov	r12, r9
	mov	r13, rdx
	mov	r15, rdi
	mov	rbp, qword ptr [rsi]
	mov	rax, qword ptr [rbp + 0xa8]
	mov	qword ptr [rsp + 0x10], rax
	mov	qword ptr [rsp + 0x18], rsi
	mov	qword ptr [rsp], rcx
	mov	qword ptr [rsp + 8], r8
	call	parse_branch
	mov	rbx, rax
	xor	r14d, r14d
	test	rbx, rbx
	jne	.label_1589
	mov	eax, dword ptr [r12]
	test	eax, eax
	jne	.label_1588
.label_1589:
	mov	r14, qword ptr [rsp]
	or	r14, 0x800000
	nop	dword ptr [rax + rax]
.label_1587:
	cmp	byte ptr [r13 + 8], 0xa
	jne	.label_1592
	mov	rdi, r13
	mov	rsi, r15
	mov	rdx, r14
	call	fetch_token
	movzx	eax, byte ptr [r13 + 8]
	mov	ecx, eax
	or	cl, 8
	cmp	cl, 0xa
	mov	edx, 0
	je	.label_1593
	cmp	qword ptr [rsp + 8], 0
	je	.label_1590
	cmp	eax, 9
	mov	edx, 0
	je	.label_1593
.label_1590:
	mov	rax, qword ptr [rbp + 0xa8]
	mov	qword ptr [rsp + 0x20], rax
	mov	rax, qword ptr [rsp + 0x10]
	mov	qword ptr [rbp + 0xa8], rax
	mov	rdi, r15
	mov	rsi, qword ptr [rsp + 0x18]
	mov	rdx, r13
	mov	rcx, qword ptr [rsp]
	mov	r8, qword ptr [rsp + 8]
	mov	r9, r12
	call	parse_branch
	mov	rdx, rax
	test	rdx, rdx
	jne	.label_1591
	mov	eax, dword ptr [r12]
	test	eax, eax
	jne	.label_1594
.label_1591:
	mov	rax, qword ptr [rsp + 0x20]
	or	qword ptr [rbp + 0xa8], rax
	nop	
.label_1593:
	mov	ecx, 0xa
	mov	rdi, rbp
	mov	rsi, rbx
	call	create_tree
	mov	rbx, rax
	test	rbx, rbx
	jne	.label_1587
	mov	dword ptr [r12], 0xc
	xor	r14d, r14d
	jmp	.label_1588
.label_1592:
	mov	r14, rbx
.label_1588:
	mov	rax, r14
	add	rsp, 0x28
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_1594:
	xor	r14d, r14d
	test	rbx, rbx
	je	.label_1588
	xor	r14d, r14d
	mov	esi, OFFSET FLAT:free_tree
	xor	edx, edx
	mov	rdi, rbx
	call	postorder
	jmp	.label_1588
	.section	.text
	.align	32
	#Procedure 0x4116aa
	.globl sub_4116aa
	.type sub_4116aa, @function
sub_4116aa:

	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4116b0

	.globl re_node_set_init_2
	.type re_node_set_init_2, @function
re_node_set_init_2:
	push	r15
	push	r14
	push	rbx
	mov	r15, rdx
	mov	r14, rsi
	mov	rbx, rdi
	mov	qword ptr [rbx], 2
	mov	edi, 0x10
	call	malloc
	mov	rcx, rax
	mov	qword ptr [rbx + 0x10], rcx
	mov	eax, 0xc
	test	rcx, rcx
	je	.label_1598
	cmp	r14, r15
	jne	.label_1595
	mov	qword ptr [rbx + 8], 1
	mov	rax, qword ptr [rbx + 0x10]
	mov	qword ptr [rax], r14
	jmp	.label_1596
.label_1595:
	mov	qword ptr [rbx + 8], 2
	mov	rax, qword ptr [rbx + 0x10]
	jge	.label_1597
	mov	qword ptr [rax], r14
	mov	rax, qword ptr [rbx + 0x10]
	mov	qword ptr [rax + 8], r15
	jmp	.label_1596
.label_1597:
	mov	qword ptr [rax], r15
	mov	rax, qword ptr [rbx + 0x10]
	mov	qword ptr [rax + 8], r14
.label_1596:
	xor	eax, eax
.label_1598:
	pop	rbx
	pop	r14
	pop	r15
	ret	
	.section	.text
	.align	32
	#Procedure 0x411724
	.globl sub_411724
	.type sub_411724, @function
sub_411724:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x411730

	.globl fts_lfree
	.type fts_lfree, @function
fts_lfree:
	push	r14
	push	rbx
	push	rax
	mov	rbx, rdi
	test	rbx, rbx
	je	.label_1599
	nop	dword ptr [rax]
.label_1601:
	mov	r14, qword ptr [rbx + 0x10]
	mov	rdi, qword ptr [rbx + 0x18]
	test	rdi, rdi
	je	.label_1600
	call	closedir
.label_1600:
	mov	rdi, rbx
	call	free
	test	r14, r14
	mov	rbx, r14
	jne	.label_1601
.label_1599:
	add	rsp, 8
	pop	rbx
	pop	r14
	ret	
	.section	.text
	.align	32
	#Procedure 0x41176a
	.globl sub_41176a
	.type sub_41176a, @function
sub_41176a:

	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x411770

	.globl argv_iter_init_argv
	.type argv_iter_init_argv, @function
argv_iter_init_argv:
	push	rbx
	mov	rbx, rdi
	mov	edi, 0x30
	call	malloc
	xor	ecx, ecx
	test	rax, rax
	je	.label_1602
	mov	qword ptr [rax], 0
	mov	qword ptr [rax + 0x20], rbx
	mov	qword ptr [rax + 0x28], rbx
	mov	rcx, rax
.label_1602:
	mov	rax, rcx
	pop	rbx
	ret	
	.section	.text
	.align	32
	#Procedure 0x41179c
	.globl sub_41179c
	.type sub_41179c, @function
sub_41179c:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x4117a0

	.globl re_node_set_init_union
	.type re_node_set_init_union, @function
re_node_set_init_union:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	push	rax
	mov	r15, rdx
	mov	r12, rsi
	mov	r14, rdi
	test	r12, r12
	je	.label_1610
	mov	rax, qword ptr [r12 + 8]
	test	r15, r15
	je	.label_1606
	test	rax, rax
	jle	.label_1606
	mov	rdi, qword ptr [r15 + 8]
	test	rdi, rdi
	jle	.label_1611
	add	rdi, rax
	mov	qword ptr [r14], rdi
	shl	rdi, 3
	call	malloc
	mov	rcx, rax
	mov	qword ptr [r14 + 0x10], rcx
	mov	eax, 0xc
	test	rcx, rcx
	je	.label_1614
	xor	r13d, r13d
	cmp	qword ptr [r12 + 8], 0
	mov	ebp, 0
	mov	ebx, 0
	jle	.label_1604
	xor	esi, esi
	xor	edx, edx
	xor	r13d, r13d
.label_1603:
	mov	rbx, rsi
	mov	rbp, rdx
	nop	word ptr [rax + rax]
.label_1607:
	cmp	rbp, qword ptr [r15 + 8]
	jge	.label_1604
	mov	rax, qword ptr [r12 + 0x10]
	mov	rcx, qword ptr [rax + r13*8]
	mov	rax, qword ptr [r15 + 0x10]
	mov	rax, qword ptr [rax + rbp*8]
	cmp	rcx, rax
	jle	.label_1615
	inc	rbp
	mov	rcx, qword ptr [r14 + 0x10]
	mov	qword ptr [rcx + rbx*8], rax
	inc	rbx
	cmp	r13, qword ptr [r12 + 8]
	jl	.label_1607
	jmp	.label_1604
.label_1615:
	sete	dl
	movzx	edx, dl
	add	rdx, rbp
	inc	r13
	lea	rsi, [rbx + 1]
	mov	rdi, qword ptr [r14 + 0x10]
	mov	qword ptr [rdi + rbx*8], rcx
	cmp	r13, qword ptr [r12 + 8]
	jl	.label_1603
	xor	edx, edx
	cmp	rcx, rax
	sete	dl
	inc	rbx
	add	rbp, rdx
.label_1604:
	mov	rdx, qword ptr [r12 + 8]
	sub	rdx, r13
	jle	.label_1608
	lea	rdi, [rbx*8]
	add	rdi, qword ptr [r14 + 0x10]
	lea	rsi, [r13*8]
	add	rsi, qword ptr [r12 + 0x10]
	shl	rdx, 3
	call	memcpy
	sub	rbx, r13
	add	rbx, qword ptr [r12 + 8]
	jmp	.label_1605
.label_1608:
	mov	rdx, qword ptr [r15 + 8]
	sub	rdx, rbp
	jle	.label_1605
	lea	rdi, [rbx*8]
	add	rdi, qword ptr [r14 + 0x10]
	lea	rsi, [rbp*8]
	add	rsi, qword ptr [r15 + 0x10]
	shl	rdx, 3
	call	memcpy
	sub	rbx, rbp
	add	rbx, qword ptr [r15 + 8]
.label_1605:
	mov	qword ptr [r14 + 8], rbx
.label_1612:
	xor	eax, eax
.label_1614:
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
	#Procedure 0x41190c
	.globl sub_41190c
	.type sub_41190c, @function
sub_41190c:

	nop	word ptr cs:[rax + rax]
.label_1613:
	xorps	xmm0, xmm0
	movups	xmmword ptr [r14], xmm0
	mov	qword ptr [r14 + 0x10], 0
	jmp	.label_1612
.label_1610:
	test	r15, r15
	je	.label_1613
	cmp	qword ptr [r15 + 8], 0
	jle	.label_1613
	mov	rdi, r14
	mov	rsi, r15
.label_1609:
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	jmp	re_node_set_init_copy
.label_1611:
	mov	rax, qword ptr [r12 + 8]
.label_1606:
	test	rax, rax
	jle	.label_1610
	mov	rdi, r14
	mov	rsi, r12
	jmp	.label_1609
	.section	.text
	.align	32
	#Procedure 0x411960

	.globl bitset_not
	.type bitset_not, @function
bitset_not:
	xor	eax, eax
	nop	word ptr cs:[rax + rax]
.label_1616:
	not	qword ptr [rdi + rax*8]
	inc	rax
	cmp	rax, 4
	jne	.label_1616
	ret	
	.section	.text
	.align	32
	#Procedure 0x41197e
	.globl sub_41197e
	.type sub_41197e, @function
sub_41197e:

	nop	
.label_1617:
	xor	eax, eax
	ret	
	.section	.text
	.align	32
	#Procedure 0x411983
	.globl sub_411983
	.type sub_411983, @function
sub_411983:

	nop	
	.section	.text
	.align	32
	#Procedure 0x411985
	.globl c_isalpha
	.type c_isalpha, @function
c_isalpha:

	add	edi, -0x41
	cmp	edi, 0x39
	ja	.label_1617
	movabs	rax, 0x3ffffff03ffffff
	mov	ecx, edi
	shr	rax, cl
	and	eax, 1
	ret	
	.section	.text
	.align	32
	#Procedure 0x4119a0
	.globl rpl_fts_children
	.type rpl_fts_children, @function
rpl_fts_children:

	push	rbp
	push	r15
	push	r14
	push	r12
	push	rbx
	mov	ebp, esi
	mov	rbx, rdi
	mov	eax, ebp
	or	eax, 0x1000
	cmp	eax, 0x1000
	jne	.label_1625
	mov	r12, qword ptr [rbx]
	call	__errno_location
	mov	r14, rax
	mov	dword ptr [r14], 0
	xor	eax, eax
	test	byte ptr [rbx + 0x49], 0x20
	jne	.label_1618
	movzx	ecx, word ptr [r12 + 0x70]
	xor	eax, eax
	cmp	ecx, 1
	je	.label_1619
	movzx	ecx, cx
	cmp	ecx, 9
	jne	.label_1618
	mov	rax, qword ptr [r12 + 0x10]
	jmp	.label_1618
.label_1625:
	call	__errno_location
	mov	dword ptr [rax], 0x16
	xor	eax, eax
	jmp	.label_1618
.label_1619:
	mov	rdi, qword ptr [rbx + 8]
	test	rdi, rdi
	je	.label_1621
	call	fts_lfree
.label_1621:
	mov	r15d, 1
	cmp	ebp, 0x1000
	jne	.label_1624
	or	byte ptr [rbx + 0x49], 0x10
	mov	r15d, 2
.label_1624:
	cmp	qword ptr [r12 + 0x58], 0
	jne	.label_1620
	mov	rax, qword ptr [r12 + 0x30]
	cmp	byte ptr [rax], 0x2f
	je	.label_1620
	test	byte ptr [rbx + 0x48], 4
	jne	.label_1620
	mov	esi, OFFSET FLAT:label_595
	mov	rdi, rbx
	call	diropen
	mov	ebp, eax
	test	ebp, ebp
	js	.label_1623
	mov	rdi, rbx
	mov	esi, r15d
	call	fts_build
	mov	qword ptr [rbx + 8], rax
	test	byte ptr [rbx + 0x49], 2
	jne	.label_1627
	mov	edi, ebp
	call	fchdir
	test	eax, eax
	je	.label_1626
	mov	ebx, dword ptr [r14]
	mov	edi, ebp
	call	close
	mov	dword ptr [r14], ebx
	xor	eax, eax
	jmp	.label_1618
.label_1620:
	mov	rdi, rbx
	mov	esi, r15d
	call	fts_build
	mov	qword ptr [rbx + 8], rax
.label_1618:
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_1623:
	mov	qword ptr [rbx + 8], 0
	xor	eax, eax
	jmp	.label_1618
.label_1627:
	mov	edx, 1
	mov	rdi, rbx
	mov	esi, ebp
	call	cwd_advance_fd
	jmp	.label_1622
.label_1626:
	mov	edi, ebp
	call	close
.label_1622:
	mov	rax, qword ptr [rbx + 8]
	jmp	.label_1618
	.section	.text
	.align	32
	#Procedure 0x411ad2
	.globl sub_411ad2
	.type sub_411ad2, @function
sub_411ad2:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x411ae0

	.globl diropen
	.type diropen, @function
diropen:
	mov	eax, dword ptr [rdi + 0x48]
	mov	edx, eax
	and	edx, 0x10
	shl	edx, 0xd
	or	edx, 0x90900
	test	ah, 2
	jne	.label_1628
	xor	eax, eax
	mov	rdi, rsi
	mov	esi, edx
	jmp	open_safer
.label_1628:
	mov	edi, dword ptr [rdi + 0x2c]
	xor	eax, eax
	jmp	openat_safer
	.section	.text
	.align	32
	#Procedure 0x411b0c
	.globl sub_411b0c
	.type sub_411b0c, @function
sub_411b0c:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x411b10

	.globl tzfree
	.type tzfree, @function
tzfree:
	push	rbx
	cmp	rdi, 2
	jb	.label_1629
	nop	word ptr [rax + rax]
.label_1630:
	mov	rbx, qword ptr [rdi]
	call	free
	test	rbx, rbx
	mov	rdi, rbx
	jne	.label_1630
.label_1629:
	pop	rbx
	ret	
	.section	.text
	.align	32
	#Procedure 0x411b32
	.globl sub_411b32
	.type sub_411b32, @function
sub_411b32:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x411b40

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
	mov	r13, r8
	mov	r14d, edx
	mov	rbp, rsi
	mov	rbx, rdi
	cmp	r14d, 0x25
	jae	.label_1639
	mov	qword ptr [rsp + 8], rcx
	call	__errno_location
	mov	r12, rax
	mov	dword ptr [r12], 0
	call	__ctype_b_loc
	mov	rcx, qword ptr [rax]
	mov	rdx, rbx
	nop	word ptr cs:[rax + rax]
.label_1634:
	movzx	eax, byte ptr [rdx]
	inc	rdx
	test	byte ptr [rcx + rax*2 + 1], 0x20
	jne	.label_1634
	test	rbp, rbp
	lea	rsi, [rsp + 0x10]
	cmovne	rsi, rbp
	mov	r15d, 4
	cmp	al, 0x2d
	je	.label_1633
	mov	rdi, rbx
	mov	edx, r14d
	mov	r14, rsi
	call	strtoul
	mov	rcx, r14
	mov	qword ptr [rsp], rax
	mov	rax, qword ptr [rcx]
	cmp	rax, rbx
	je	.label_1640
	mov	eax, dword ptr [r12]
	xor	r12d, r12d
	test	eax, eax
	mov	rbp, r13
	je	.label_1643
	cmp	eax, 0x22
	jne	.label_1633
	mov	r12d, 1
.label_1643:
	test	rbp, rbp
	jne	.label_1646
	jmp	.label_1636
.label_1640:
	mov	rbp, r13
	test	rbp, rbp
	je	.label_1633
	movsx	esi, byte ptr [rax]
	test	esi, esi
	je	.label_1633
	mov	rdi, rbp
	call	strchr
	mov	rcx, r14
	test	rax, rax
	je	.label_1633
	mov	qword ptr [rsp], 1
	xor	r12d, r12d
.label_1646:
	mov	rax, qword ptr [rcx]
	movsx	ebx, byte ptr [rax]
	test	ebx, ebx
	je	.label_1636
	mov	rdi, rbp
	mov	esi, ebx
	call	strchr
	test	rax, rax
	je	.label_1638
	mov	r15d, 0x400
	mov	r13d, 1
	add	ebx, -0x45
	cmp	ebx, 0x2f
	ja	.label_1642
	movabs	rax, 0x814400308945
	bt	rax, rbx
	jae	.label_1642
	mov	esi, 0x30
	mov	rdi, rbp
	call	strchr
	mov	r13d, 1
	mov	rsi, r14
	test	rax, rax
	je	.label_1631
	mov	rax, qword ptr [rsi]
	movsx	ecx, byte ptr [rax + 1]
	mov	r13d, 1
	cmp	ecx, 0x42
	je	.label_1635
	cmp	ecx, 0x44
	je	.label_1635
	cmp	ecx, 0x69
	jne	.label_1631
	xor	ecx, ecx
	cmp	byte ptr [rax + 2], 0x42
	sete	cl
	lea	r13, [rcx + rcx + 1]
	jmp	.label_1631
.label_1635:
	mov	r15d, 0x3e8
	mov	r13d, 2
	jmp	.label_1631
.label_1642:
	mov	rsi, r14
.label_1631:
	mov	rax, qword ptr [rsi]
	movsx	ecx, byte ptr [rax]
	add	ecx, -0x42
	cmp	ecx, 0x35
	ja	.label_1638
	xor	eax, eax
	jmp	qword ptr [word ptr [+ (rcx * 8) + label_1644]]
.label_2963:
	lea	rdi, [rsp]
	mov	edx, 3
	jmp	.label_1632
.label_1638:
	mov	rax, qword ptr [rsp]
	mov	rcx, qword ptr [rsp + 8]
	mov	qword ptr [rcx], rax
	or	r12d, 2
	jmp	.label_1645
.label_2964:
	lea	rdi, [rsp]
	mov	edx, 1
	jmp	.label_1632
.label_2965:
	lea	rdi, [rsp]
	mov	edx, 2
	jmp	.label_1632
.label_2967:
	lea	rdi, [rsp]
	mov	edx, 4
	jmp	.label_1632
.label_2961:
	lea	rdi, [rsp]
	mov	esi, 0x400
	call	bkm_scale_0
	jmp	.label_1637
.label_2962:
	lea	rdi, [rsp]
	mov	edx, 6
	jmp	.label_1632
.label_2966:
	lea	rdi, [rsp]
	mov	edx, 5
	jmp	.label_1632
.label_2968:
	lea	rdi, [rsp]
	mov	edx, 8
	jmp	.label_1632
.label_2969:
	lea	rdi, [rsp]
	mov	edx, 7
.label_1632:
	mov	esi, r15d
	call	bkm_scale_by_power_0
.label_1637:
	mov	rsi, r14
.label_2971:
	or	eax, r12d
	mov	rcx, qword ptr [rsi]
	lea	rdx, [rcx + r13]
	mov	qword ptr [rsi], rdx
	mov	r12d, eax
	or	r12d, 2
	cmp	byte ptr [rcx + r13], 0
	cmove	r12d, eax
.label_1636:
	mov	rax, qword ptr [rsp]
	mov	rcx, qword ptr [rsp + 8]
	mov	qword ptr [rcx], rax
.label_1645:
	mov	r15d, r12d
.label_1633:
	mov	eax, r15d
	add	rsp, 0x18
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_2970:
	lea	rdi, [rsp]
	mov	esi, 0x200
	call	bkm_scale_0
	jmp	.label_1637
.label_2972:
	lea	rdi, [rsp]
	mov	esi, 2
	call	bkm_scale_0
	jmp	.label_1637
.label_1639:
	mov	edi, OFFSET FLAT:label_184
	mov	esi, OFFSET FLAT:label_185
	mov	edx, 0x54
	mov	ecx, OFFSET FLAT:label_1641
	call	__assert_fail
	.section	.text
	.align	32
	#Procedure 0x411de2
	.globl sub_411de2
	.type sub_411de2, @function
sub_411de2:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x411df0

	.globl re_node_set_init_copy
	.type re_node_set_init_copy, @function
re_node_set_init_copy:
	push	r14
	push	rbx
	push	rax
	mov	rbx, rsi
	mov	r14, rdi
	mov	rdi, qword ptr [rbx + 8]
	mov	qword ptr [r14 + 8], rdi
	cmp	qword ptr [rbx + 8], 0
	jle	.label_1647
	mov	qword ptr [r14], rdi
	shl	rdi, 3
	call	malloc
	mov	qword ptr [r14 + 0x10], rax
	test	rax, rax
	je	.label_1650
	mov	rdx, qword ptr [rbx + 8]
	mov	rsi, qword ptr [rbx + 0x10]
	shl	rdx, 3
	mov	rdi, rax
	call	memcpy
	jmp	.label_1648
.label_1650:
	xorps	xmm0, xmm0
	movups	xmmword ptr [r14], xmm0
	mov	eax, 0xc
	jmp	.label_1649
	.section	.text
	.align	32
	#Procedure 0x411e42
	.globl sub_411e42
	.type sub_411e42, @function
sub_411e42:

	nop	dword ptr [rax + rax]
.label_1647:
	xorps	xmm0, xmm0
	movups	xmmword ptr [r14], xmm0
	mov	qword ptr [r14 + 0x10], 0
.label_1648:
	xor	eax, eax
.label_1649:
	add	rsp, 8
	pop	rbx
	pop	r14
	ret	
.label_1653:
	mov	ebx, eax
.label_1651:
	mov	eax, ebx
	add	rsp, 0x20
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	ret	
	.section	.text
	.align	32
	#Procedure 0x411e72
	.globl sub_411e72
	.type sub_411e72, @function
sub_411e72:

	nop	dword ptr [rax + rax]
.label_1652:
	inc	rbx
.label_1655:
	cmp	rbx, qword ptr [r14 + 0x10]
	jne	.label_1654
	xor	ebx, ebx
	test	r12b, 1
	mov	r12d, 0
	je	.label_1651
.label_1654:
	mov	rax, qword ptr [r14 + 0x30]
	lea	r13, [rbx + rbx*2]
	cmp	qword ptr [rax + r13*8 + 8], 0
	jne	.label_1652
	mov	ecx, 1
	mov	rdi, r15
	mov	rsi, r14
	mov	rdx, rbx
	call	calc_eclosure_iter
	test	eax, eax
	jne	.label_1653
	mov	rax, qword ptr [r14 + 0x30]
	cmp	qword ptr [rax + r13*8 + 8], 0
	jne	.label_1652
	mov	rdi, qword ptr [rsp + 0x18]
	call	free
	mov	r12b, 1
	jmp	.label_1652
	.section	.text
	.align	32
	#Procedure 0x411ed0

	.globl calc_eclosure
	.type calc_eclosure, @function
calc_eclosure:
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x20
	mov	r14, rdi
	xor	ebx, ebx
	lea	r15, [rsp + 8]
	xor	r12d, r12d
	jmp	.label_1655
	.section	.text
	.align	32
	#Procedure 0x411eec
	.globl sub_411eec
	.type sub_411eec, @function
sub_411eec:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x411ef0
	.globl get_stat_birthtime_ns
	.type get_stat_birthtime_ns, @function
get_stat_birthtime_ns:

	xor	eax, eax
	ret	
	.section	.text
	.align	32
	#Procedure 0x411ef3
	.globl sub_411ef3
	.type sub_411ef3, @function
sub_411ef3:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x411f00
	.globl c_ispunct
	.type c_ispunct, @function
c_ispunct:

	add	edi, -0x21
	cmp	edi, 0x5d
	ja	.label_1656
	mov	al, 1
	jmp	qword ptr [word ptr [+ (rdi * 8) + label_1658]]
.label_1656:
	xor	eax, eax
	jmp	.label_1657
	.section	.text
	.align	32
	#Procedure 0x411f15
	.globl sub_411f15
	.type sub_411f15, @function
sub_411f15:

	nop	word ptr cs:[rax + rax]
.label_1657:
	ret	
	.section	.text
	.align	32
	#Procedure 0x411f20

	.globl rotr_sz
	.type rotr_sz, @function
rotr_sz:
	mov	ecx, esi
	ror	rdi, cl
	mov	rax, rdi
	ret	
	.section	.text
	.align	32
	#Procedure 0x411f29
	.globl sub_411f29
	.type sub_411f29, @function
sub_411f29:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x411f30

	.globl lower_subexps
	.type lower_subexps, @function
lower_subexps:
	push	r14
	push	rbx
	push	rax
	mov	rbx, rsi
	mov	r14, rdi
	mov	dword ptr [rsp + 4], 0
	mov	rdx, qword ptr [rbx + 8]
	test	rdx, rdx
	je	.label_1659
	cmp	byte ptr [rdx + 0x30], 0x11
	jne	.label_1659
	lea	rdi, [rsp + 4]
	mov	rsi, r14
	call	lower_subexp
	mov	qword ptr [rbx + 8], rax
	test	rax, rax
	je	.label_1659
	mov	qword ptr [rax], rbx
.label_1659:
	mov	rdx, qword ptr [rbx + 0x10]
	test	rdx, rdx
	je	.label_1660
	cmp	byte ptr [rdx + 0x30], 0x11
	jne	.label_1660
	lea	rdi, [rsp + 4]
	mov	rsi, r14
	call	lower_subexp
	mov	qword ptr [rbx + 0x10], rax
	test	rax, rax
	je	.label_1660
	mov	qword ptr [rax], rbx
.label_1660:
	mov	eax, dword ptr [rsp + 4]
	add	rsp, 8
	pop	rbx
	pop	r14
	ret	
	.section	.text
	.align	32
	#Procedure 0x411f9e
	.globl sub_411f9e
	.type sub_411f9e, @function
sub_411f9e:

	nop	
	.section	.text
	.align	32
	#Procedure 0x411fa0

	.globl call_addfn
	.type call_addfn, @function
call_addfn:
	mov	rax, qword ptr [rcx]
	jmp	rax
	.section	.text
	.align	32
	#Procedure 0x411fa5
	.globl sub_411fa5
	.type sub_411fa5, @function
sub_411fa5:

	nop	word ptr cs:[rax + rax]
.label_1666:
	mov	edi, OFFSET FLAT:label_1661
	mov	esi, OFFSET FLAT:label_1662
	mov	edx, 0x3c
	mov	ecx, OFFSET FLAT:label_1663
	call	__assert_fail
	.section	.text
	.align	32
	#Procedure 0x411fc9
	.globl sub_411fc9
	.type sub_411fc9, @function
sub_411fc9:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x411fcc

	.globl cycle_check
	.type cycle_check, @function
cycle_check:
	push	r15
	push	r14
	push	rbx
	mov	r14, rsi
	mov	r15, rdi
	cmp	dword ptr [r15 + 0x18], 0x95f616
	jne	.label_1666
	cmp	qword ptr [r15 + 0x10], 0
	je	.label_1664
	mov	rax, qword ptr [r14 + 8]
	cmp	rax, qword ptr [r15]
	jne	.label_1664
	mov	rcx, qword ptr [r14]
	mov	al, 1
	cmp	rcx, qword ptr [r15 + 8]
	je	.label_1665
.label_1664:
	mov	rbx, qword ptr [r15 + 0x10]
	inc	rbx
	mov	qword ptr [r15 + 0x10], rbx
	mov	rdi, rbx
	call	is_zero_or_power_of_two
	test	al, al
	je	.label_1667
	mov	al, 1
	test	rbx, rbx
	je	.label_1665
	mov	rax, qword ptr [r14]
	mov	qword ptr [r15 + 8], rax
	mov	rax, qword ptr [r14 + 8]
	mov	qword ptr [r15], rax
.label_1667:
	xor	eax, eax
.label_1665:
	pop	rbx
	pop	r14
	pop	r15
	ret	
	.section	.text
	.align	32
	#Procedure 0x412030

	.globl add_epsilon_src_nodes
	.type add_epsilon_src_nodes, @function
add_epsilon_src_nodes:
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
	mov	dword ptr [rsp + 4], 0
	lea	rdi, [rsp + 4]
	mov	rsi, r15
	mov	rdx, rbx
	call	re_acquire_state
	mov	r12, rax
	mov	r13d, dword ptr [rsp + 4]
	test	r13d, r13d
	jne	.label_1668
	mov	rax, r12
	add	r12, 0x38
	cmp	qword ptr [rax + 0x38], 0
	jne	.label_1670
	mov	rsi, qword ptr [rbx + 8]
	mov	rdi, r12
	call	re_node_set_alloc
	mov	dword ptr [rsp + 4], eax
	mov	r13d, 0xc
	test	eax, eax
	jne	.label_1668
	cmp	qword ptr [rbx + 8], 0
	jle	.label_1670
	xor	ebp, ebp
	nop	word ptr [rax + rax]
.label_1669:
	mov	rax, qword ptr [r15 + 0x38]
	mov	rcx, qword ptr [rbx + 0x10]
	mov	rcx, qword ptr [rcx + rbp*8]
	lea	rcx, [rcx + rcx*2]
	lea	rsi, [rax + rcx*8]
	mov	rdi, r12
	call	re_node_set_merge
	mov	dword ptr [rsp + 4], eax
	test	eax, eax
	jne	.label_1668
	inc	rbp
	cmp	rbp, qword ptr [rbx + 8]
	jl	.label_1669
.label_1670:
	mov	rdi, rbx
	mov	rsi, r14
	mov	rdx, r12
	call	re_node_set_add_intersect
	mov	r13d, eax
.label_1668:
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
	.align	32
	#Procedure 0x4120f0

	.globl bitset_copy
	.type bitset_copy, @function
bitset_copy:
	movups	xmm0, xmmword ptr [rsi]
	movups	xmm1, xmmword ptr [rsi + 0x10]
	movups	xmmword ptr [rdi + 0x10], xmm1
	movups	xmmword ptr [rdi], xmm0
	ret	
	.section	.text
	.align	32
	#Procedure 0x4120ff
	.globl sub_4120ff
	.type sub_4120ff, @function
sub_4120ff:

	nop	
	.section	.text
	.align	32
	#Procedure 0x412100

	.globl fts_load
	.type fts_load, @function
fts_load:
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	mov	r12, rsi
	mov	r14, rdi
	mov	rdx, qword ptr [r12 + 0x60]
	mov	qword ptr [r12 + 0x48], rdx
	mov	rdi, qword ptr [r14 + 0x20]
	lea	r15, [r12 + 0x108]
	inc	rdx
	mov	rsi, r15
	call	memmove
	mov	esi, 0x2f
	mov	rdi, r15
	call	strrchr
	mov	rbx, rax
	test	rbx, rbx
	je	.label_1672
	cmp	rbx, r15
	jne	.label_1671
	cmp	byte ptr [rbx + 1], 0
	je	.label_1672
.label_1671:
	inc	rbx
	mov	rdi, rbx
	call	strlen
	mov	r13, rax
	lea	rdx, [r13 + 1]
	mov	rdi, r15
	mov	rsi, rbx
	call	memmove
	mov	qword ptr [r12 + 0x60], r13
.label_1672:
	mov	rax, qword ptr [r14 + 0x20]
	mov	qword ptr [r12 + 0x38], rax
	mov	qword ptr [r12 + 0x30], rax
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	ret	
	.section	.text
	.align	32
	#Procedure 0x41218a
	.globl sub_41218a
	.type sub_41218a, @function
sub_41218a:

	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x412190

	.globl init_dfa
	.type init_dfa, @function
init_dfa:
	push	rbp
	push	r15
	push	r14
	push	r12
	push	rbx
	mov	rbp, rsi
	mov	r15, rdi
	xorps	xmm0, xmm0
	movups	xmmword ptr [r15 + 0xd0], xmm0
	movups	xmmword ptr [r15 + 0xc0], xmm0
	movups	xmmword ptr [r15 + 0xb0], xmm0
	movups	xmmword ptr [r15 + 0xa0], xmm0
	movups	xmmword ptr [r15 + 0x90], xmm0
	movups	xmmword ptr [r15 + 0x80], xmm0
	movups	xmmword ptr [r15 + 0x70], xmm0
	movups	xmmword ptr [r15 + 0x60], xmm0
	movups	xmmword ptr [r15 + 0x50], xmm0
	movups	xmmword ptr [r15 + 0x40], xmm0
	movups	xmmword ptr [r15 + 0x30], xmm0
	movups	xmmword ptr [r15 + 0x20], xmm0
	movups	xmmword ptr [r15 + 0x10], xmm0
	movups	xmmword ptr [r15], xmm0
	mov	qword ptr [r15 + 0xe0], 0
	mov	dword ptr [r15 + 0x80], 0xf
	mov	r14d, 0xc
	movabs	rax, 0x555555555555554
	cmp	rbp, rax
	ja	.label_1677
	lea	rdi, [rbp + 1]
	mov	qword ptr [r15 + 8], rdi
	shl	rdi, 4
	call	malloc
	mov	qword ptr [r15], rax
	mov	eax, 1
.label_1673:
	mov	rbx, rax
	lea	rax, [rbx + rbx]
	cmp	rbx, rbp
	jbe	.label_1673
	mov	edi, 0x18
	mov	rsi, rbx
	call	rpl_calloc
	mov	qword ptr [r15 + 0x40], rax
	dec	rbx
	mov	qword ptr [r15 + 0x88], rbx
	call	__ctype_get_mb_cur_max
	mov	dword ptr [r15 + 0xb4], eax
	mov	edi, 0xe
	call	rpl_nl_langinfo
	mov	cl, byte ptr [rax]
	or	cl, 0x20
	cmp	cl, 0x75
	jne	.label_1675
	mov	cl, byte ptr [rax + 1]
	or	cl, 0x20
	cmp	cl, 0x74
	jne	.label_1675
	mov	cl, byte ptr [rax + 2]
	or	cl, 0x20
	cmp	cl, 0x66
	jne	.label_1675
	xor	ecx, ecx
	cmp	byte ptr [rax + 3], 0x2d
	sete	cl
	cmp	byte ptr [rax + rcx + 3], 0x38
	jne	.label_1675
	cmp	byte ptr [rax + rcx + 4], 0
	jne	.label_1675
	or	byte ptr [r15 + 0xb0], 4
.label_1675:
	mov	al, byte ptr [r15 + 0xb0]
	mov	ecx, eax
	and	cl, 0xf7
	mov	byte ptr [r15 + 0xb0], cl
	cmp	dword ptr [r15 + 0xb4], 2
	jl	.label_1681
	test	al, 4
	jne	.label_1679
	mov	edi, 0x20
	mov	esi, 1
	call	rpl_calloc
	mov	qword ptr [r15 + 0x78], rax
	test	rax, rax
	je	.label_1677
	xor	r14d, r14d
	xor	r12d, r12d
	nop	word ptr [rax + rax]
.label_1678:
	xor	ebp, ebp
	mov	ebx, r12d
	nop	word ptr cs:[rax + rax]
.label_1676:
	mov	edi, ebx
	call	btowc
	cmp	eax, -1
	je	.label_1682
	mov	edx, 1
	mov	ecx, ebp
	shl	rdx, cl
	mov	rcx, qword ptr [r15 + 0x78]
	or	qword ptr [rcx + r14*8], rdx
.label_1682:
	cmp	ebx, 0x7f
	ja	.label_1674
	cmp	ebx, eax
	je	.label_1674
	or	byte ptr [r15 + 0xb0], 8
.label_1674:
	inc	rbp
	inc	ebx
	cmp	rbp, 0x40
	jne	.label_1676
	add	r12d, 0x40
	inc	r14
	cmp	r14, 4
	jne	.label_1678
	jmp	.label_1681
.label_1679:
	mov	qword ptr [word ptr [r15 + 120]], OFFSET FLAT:utf8_sb_map
.label_1681:
	cmp	qword ptr [r15], 0
	je	.label_1680
	xor	r14d, r14d
	cmp	qword ptr [r15 + 0x40], 0
	jne	.label_1677
.label_1680:
	mov	r14d, 0xc
.label_1677:
	mov	eax, r14d
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x412393
	.globl sub_412393
	.type sub_412393, @function
sub_412393:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4123a0
	.globl get_stat_birthtime
	.type get_stat_birthtime, @function
get_stat_birthtime:

	mov	rax, -1
	mov	rdx, -1
	ret	
	.section	.text
	.align	32
	#Procedure 0x4123af
	.globl sub_4123af
	.type sub_4123af, @function
sub_4123af:

	nop	
	.section	.text
	.align	32
	#Procedure 0x4123b0

	.globl transit_state_bkref
	.type transit_state_bkref, @function
transit_state_bkref:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x68
	mov	r13, rsi
	mov	r14, rdi
	cmp	qword ptr [r13 + 8], 0
	jle	.label_1690
	mov	r8, qword ptr [r14 + 0x98]
	mov	rax, qword ptr [r14 + 0x48]
	mov	qword ptr [rsp + 0x10], rax
	xor	ebx, ebx
	mov	qword ptr [rsp + 0x28], r13
	mov	qword ptr [rsp + 8], r8
	nop	dword ptr [rax + rax]
.label_1689:
	mov	rax, qword ptr [r13 + 0x10]
	mov	rsi, qword ptr [rax + rbx*8]
	mov	rax, qword ptr [r8]
	mov	rcx, rsi
	shl	rcx, 4
	mov	eax, dword ptr [rax + rcx + 8]
	mov	r15d, eax
	cmp	al, 4
	jne	.label_1688
	mov	eax, r15d
	mov	ebp, eax
	shr	ebp, 8
	test	bp, 0x3ff
	mov	qword ptr [rsp + 0x18], rsi
	je	.label_1687
	mov	edx, dword ptr [r14 + 0xa0]
	mov	rdi, r14
	mov	rsi, qword ptr [rsp + 0x10]
	call	re_string_context_at
	mov	r8, qword ptr [rsp + 8]
	mov	ecx, eax
	and	ecx, 1
	test	bpl, 4
	je	.label_1691
	test	ecx, ecx
	je	.label_1688
.label_1691:
	mov	edx, r15d
	test	dh, 8
	je	.label_1694
	test	ecx, ecx
	jne	.label_1688
.label_1694:
	mov	ecx, r15d
	test	ch, 0x20
	je	.label_1698
	mov	ecx, eax
	and	ecx, 2
	je	.label_1688
.label_1698:
	test	bpl, bpl
	jns	.label_1687
	and	eax, 8
	je	.label_1688
	nop	word ptr cs:[rax + rax]
.label_1687:
	mov	r12, qword ptr [r14 + 0xc8]
	mov	rdi, r14
	mov	rsi, qword ptr [rsp + 0x18]
	mov	rdx, qword ptr [rsp + 0x10]
	call	get_subexp
	mov	rsi, qword ptr [rsp + 0x18]
	mov	r8, qword ptr [rsp + 8]
	mov	dword ptr [rsp + 4], eax
	test	eax, eax
	jne	.label_1684
	cmp	r12, qword ptr [r14 + 0xc8]
	jge	.label_1688
	lea	rax, [r12 + r12*4]
	lea	rbp, [rax*8 + 0x18]
	mov	qword ptr [rsp + 0x30], rbx
	nop	dword ptr [rax]
.label_1693:
	mov	rax, qword ptr [r14 + 0xd8]
	cmp	qword ptr [rax + rbp - 0x18], rsi
	jne	.label_1697
	mov	rcx, qword ptr [rsp + 0x10]
	cmp	qword ptr [rax + rbp - 0x10], rcx
	jne	.label_1697
	mov	rcx, qword ptr [rax + rbp - 8]
	mov	rdi, qword ptr [rax + rbp]
	mov	rbx, qword ptr [r8 + 0x30]
	mov	qword ptr [rsp + 0x20], rbx
	mov	qword ptr [rsp + 0x48], rcx
	mov	qword ptr [rsp + 0x40], rdi
	cmp	rdi, rcx
	jne	.label_1686
	mov	rcx, qword ptr [r8 + 0x28]
	lea	rdx, [rsi + rsi*2]
	mov	rcx, qword ptr [rcx + rdx*8 + 0x10]
	jmp	.label_1695
.label_1686:
	lea	rcx, [rsi*8]
	add	rcx, qword ptr [r8 + 0x18]
.label_1695:
	mov	rcx, qword ptr [rcx]
	lea	rbx, [rcx + rcx*2]
	mov	r13, qword ptr [rax + rbp]
	mov	r15, qword ptr [rsp + 0x10]
	add	r13, r15
	sub	r13, qword ptr [rax + rbp - 8]
	lea	rsi, [r13 - 1]
	mov	edx, dword ptr [r14 + 0xa0]
	mov	rdi, r14
	call	re_string_context_at
	mov	rcx, qword ptr [r14 + 0xb8]
	mov	rsi, qword ptr [rcx + r13*8]
	mov	rcx, qword ptr [rcx + r15*8]
	test	rcx, rcx
	mov	edx, 0
	je	.label_1699
	mov	rdx, qword ptr [rcx + 0x10]
.label_1699:
	mov	qword ptr [rsp + 0x38], rdx
	mov	rcx, qword ptr [rsp + 0x20]
	lea	rcx, [rcx + rbx*8]
	test	rsi, rsi
	mov	rbx, qword ptr [rsp + 0x30]
	mov	qword ptr [rsp + 0x20], rcx
	je	.label_1683
	mov	r15d, eax
	mov	rsi, qword ptr [rsi + 0x50]
	lea	rbx, [rsp + 0x50]
	mov	rdi, rbx
	mov	rdx, rcx
	call	re_node_set_init_union
	mov	dword ptr [rsp + 4], eax
	test	eax, eax
	jne	.label_1692
	lea	rdi, [rsp + 4]
	mov	rsi, qword ptr [rsp + 8]
	mov	rdx, rbx
	mov	ecx, r15d
	call	re_acquire_state_context
	mov	rcx, qword ptr [r14 + 0xb8]
	mov	qword ptr [rcx + r13*8], rax
	mov	rdi, qword ptr [rsp + 0x60]
	call	free
	mov	rax, qword ptr [r14 + 0xb8]
	cmp	qword ptr [rax + r13*8], 0
	jne	.label_1696
	mov	eax, dword ptr [rsp + 4]
	test	eax, eax
	jne	.label_1684
.label_1696:
	mov	r13, qword ptr [rsp + 0x28]
	mov	r8, qword ptr [rsp + 8]
	mov	rsi, qword ptr [rsp + 0x18]
	mov	rbx, qword ptr [rsp + 0x30]
	jmp	.label_1685
.label_1683:
	lea	rdi, [rsp + 4]
	mov	r15, qword ptr [rsp + 8]
	mov	rsi, r15
	mov	rdx, rcx
	mov	ecx, eax
	call	re_acquire_state_context
	mov	r8, r15
	mov	rcx, qword ptr [r14 + 0xb8]
	mov	qword ptr [rcx + r13*8], rax
	mov	rax, qword ptr [r14 + 0xb8]
	cmp	qword ptr [rax + r13*8], 0
	mov	r13, qword ptr [rsp + 0x28]
	mov	rsi, qword ptr [rsp + 0x18]
	jne	.label_1685
	mov	eax, dword ptr [rsp + 4]
	test	eax, eax
	jne	.label_1684
	nop	dword ptr [rax]
.label_1685:
	mov	rax, qword ptr [rsp + 0x40]
	cmp	rax, qword ptr [rsp + 0x48]
	jne	.label_1697
	mov	rax, qword ptr [r14 + 0xb8]
	mov	rcx, qword ptr [rsp + 0x10]
	mov	rax, qword ptr [rax + rcx*8]
	mov	rcx, qword ptr [rsp + 0x38]
	cmp	qword ptr [rax + 0x10], rcx
	jle	.label_1697
	mov	rdi, r14
	mov	rsi, qword ptr [rsp + 0x20]
	mov	rdx, qword ptr [rsp + 0x10]
	call	check_subexp_matching_top
	mov	dword ptr [rsp + 4], eax
	test	eax, eax
	jne	.label_1684
	mov	rdi, r14
	mov	rsi, qword ptr [rsp + 0x20]
	call	transit_state_bkref
	mov	rsi, qword ptr [rsp + 0x18]
	mov	r8, qword ptr [rsp + 8]
	mov	dword ptr [rsp + 4], eax
	test	eax, eax
	jne	.label_1684
.label_1697:
	inc	r12
	add	rbp, 0x28
	cmp	r12, qword ptr [r14 + 0xc8]
	jl	.label_1693
	nop	word ptr cs:[rax + rax]
.label_1688:
	inc	rbx
	cmp	rbx, qword ptr [r13 + 8]
	jl	.label_1689
.label_1690:
	mov	dword ptr [rsp + 4], 0
.label_1684:
	mov	eax, dword ptr [rsp + 4]
	add	rsp, 0x68
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_1692:
	mov	rdi, qword ptr [rsp + 0x60]
	call	free
	jmp	.label_1684
	.section	.text
	.align	32
	#Procedure 0x412724
	.globl sub_412724
	.type sub_412724, @function
sub_412724:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x412730

	.globl quotearg_n_custom
	.type quotearg_n_custom, @function
quotearg_n_custom:
	mov	r8, -1
	jmp	quotearg_n_custom_mem
	.section	.text
	.align	32
	#Procedure 0x412739
	.globl sub_412739
	.type sub_412739, @function
sub_412739:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x412740

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
	mov	rax,  qword ptr [word ptr [rip + label_46]]
	mov	qword ptr [rsp + 0x30], rax
	movups	xmm0,  xmmword ptr [word ptr [rip + label_47]]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0,  xmmword ptr [word ptr [rip + label_48]]
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
	#Procedure 0x4127a8
	.globl sub_4127a8
	.type sub_4127a8, @function
sub_4127a8:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4127b0

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
	#Procedure 0x4127bd
	.globl sub_4127bd
	.type sub_4127bd, @function
sub_4127bd:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x4127c0
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
	#Procedure 0x412832
	.globl sub_412832
	.type sub_412832, @function
sub_412832:

	nop	word ptr cs:[rax + rax]
.label_1700:
	call	__errno_location
	mov	rbx, rax
	mov	r14d, dword ptr [rbx]
	mov	edi, ebp
	call	close
	mov	dword ptr [rbx], r14d
	xor	ebx, ebx
.label_1701:
	mov	rax, rbx
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x41285f
	.globl sub_41285f
	.type sub_41285f, @function
sub_41285f:

	nop	
	.section	.text
	.align	32
	#Procedure 0x412860

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
	js	.label_1701
	mov	edi, ebp
	call	fdopendir
	mov	rbx, rax
	test	rbx, rbx
	je	.label_1700
	mov	dword ptr [r14], ebp
	jmp	.label_1701
	.section	.text
	.align	32
	#Procedure 0x412890
	.globl timespec_sign
	.type timespec_sign, @function
timespec_sign:

	xor	ecx, ecx
	or	rsi, rdi
	setne	cl
	test	rdi, rdi
	mov	eax, 0xffffffff
	cmovns	eax, ecx
	ret	
	.section	.text
	.align	32
	#Procedure 0x4128a4
	.globl sub_4128a4
	.type sub_4128a4, @function
sub_4128a4:

	nop	word ptr cs:[rax + rax]
.label_1704:
	mov	eax, 1
	test	cl, cl
	je	.label_1702
.label_1705:
	mov	rdi, rbx
	call	tzalloc
	mov	rbx, rax
	xor	eax, eax
	test	rbx, rbx
	je	.label_1702
	mov	rdi, r14
	call	change_env
	test	al, al
	je	.label_1703
	mov	rax, rbx
	jmp	.label_1702
.label_1703:
	call	__errno_location
	mov	r14, rax
	mov	ebp, dword ptr [r14]
	mov	rdi, rbx
	call	tzfree
	mov	dword ptr [r14], ebp
	xor	eax, eax
.label_1702:
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x4128f9
	.globl sub_4128f9
	.type sub_4128f9, @function
sub_4128f9:

	nop	
	.section	.text
	.align	32
	#Procedure 0x4128fb

	.globl set_tz
	.type set_tz, @function
set_tz:
	push	rbp
	push	r14
	push	rbx
	mov	r14, rdi
	call	getenv_TZ
	mov	rbx, rax
	test	rbx, rbx
	mov	cl, byte ptr [r14 + 8]
	je	.label_1704
	test	cl, cl
	je	.label_1705
	lea	rdi, [r14 + 9]
	mov	rsi, rbx
	call	strcmp
	mov	ecx, eax
	mov	eax, 1
	test	ecx, ecx
	jne	.label_1705
	jmp	.label_1702
	.section	.text
	.align	32
	#Procedure 0x412930

	.globl string_hasher
	.type string_hasher, @function
string_hasher:
	jmp	hash_string
	.section	.text
	.align	32
	#Procedure 0x412935
	.globl sub_412935
	.type sub_412935, @function
sub_412935:

	nop	word ptr cs:[rax + rax]
.label_1707:
	mov	esi, 0xffffff9c
	mov	edx, 1
	mov	rdi, rbx
	call	cwd_advance_fd
.label_1708:
	xor	eax, eax
.label_1706:
	movzx	ebp, al
	add	rbx, 0x60
	mov	rdi, rbx
	call	fd_ring_clear
	mov	eax, ebp
	add	rsp, 8
	pop	rbx
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x41296c
	.globl sub_41296c
	.type sub_41296c, @function
sub_41296c:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x41296f

	.globl restore_initial_cwd
	.type restore_initial_cwd, @function
restore_initial_cwd:
	push	rbp
	push	rbx
	push	rax
	mov	rbx, rdi
	mov	eax, dword ptr [rbx + 0x48]
	test	al, 4
	jne	.label_1708
	test	ah, 2
	jne	.label_1707
	mov	edi, dword ptr [rbx + 0x28]
	call	fchdir
	test	eax, eax
	setne	al
	jmp	.label_1706
	.section	.text
	.align	32
	#Procedure 0x412990

	.globl save_abbr
	.type save_abbr, @function
save_abbr:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	push	rax
	mov	r15, rsi
	mov	r12, rdi
	mov	rbx, qword ptr [r15 + 0x30]
	mov	al, 1
	test	rbx, rbx
	je	.label_1711
	cmp	r15, rbx
	ja	.label_1717
	lea	rcx, [r15 + 0x38]
	cmp	rbx, rcx
	jb	.label_1711
.label_1717:
	mov	r14d, OFFSET FLAT:label_97
	cmp	byte ptr [rbx], 0
	je	.label_1709
	lea	r14, [r12 + 9]
	jmp	.label_1714
.label_1713:
	mov	rax, qword ptr [r12]
	lea	r14, [rax + 9]
	test	rax, rax
	cmove	r14, rcx
	cmovne	r12, rax
.label_1714:
	lea	r13, [r12 + 9]
.label_1716:
	mov	rdi, r14
	mov	rsi, rbx
	call	strcmp
	test	eax, eax
	je	.label_1719
	cmp	byte ptr [r14], 0
	jne	.label_1720
	mov	rbp, r14
	sub	rbp, r13
	jne	.label_1710
	cmp	byte ptr [r12 + 8], 0
	je	.label_1710
.label_1720:
	mov	rdi, r14
	call	strlen
	lea	rcx, [r14 + rax + 1]
	cmp	byte ptr [r14 + rax + 1], 0
	mov	r14, rcx
	jne	.label_1716
	jmp	.label_1713
.label_1710:
	mov	rdi, rbx
	call	strlen
	inc	rax
	mov	rcx, rbp
	not	rcx
	cmp	rax, rcx
	jbe	.label_1718
	call	__errno_location
	mov	dword ptr [rax], 0xc
	xor	eax, eax
	jmp	.label_1711
.label_1718:
	add	rbp, rax
	cmp	rbp, 0x76
	ja	.label_1715
	mov	rdi, r14
	mov	rsi, rbx
	mov	rdx, rax
	call	extend_abbrs
.label_1719:
	mov	al, 1
.label_1709:
	mov	qword ptr [r15 + 0x30], r14
.label_1711:
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_1715:
	mov	rdi, rbx
	call	tzalloc
	mov	r14, rax
	mov	qword ptr [r12], r14
	test	r14, r14
	mov	al, 1
	je	.label_1712
	mov	byte ptr [r14 + 8], 0
	add	r14, 9
	jmp	.label_1709
.label_1712:
	xor	eax, eax
	jmp	.label_1711
	.section	.text
	.align	32
	#Procedure 0x412aa5
	.globl sub_412aa5
	.type sub_412aa5, @function
sub_412aa5:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x412ab0

	.globl free_mount_entry
	.type free_mount_entry, @function
free_mount_entry:
	push	rbx
	mov	rbx, rdi
	mov	rdi, qword ptr [rbx]
	call	free
	mov	rdi, qword ptr [rbx + 8]
	call	free
	mov	rdi, qword ptr [rbx + 0x10]
	call	free
	test	byte ptr [rbx + 0x28], 4
	je	.label_1721
	mov	rdi, qword ptr [rbx + 0x18]
	call	free
.label_1721:
	mov	rdi, rbx
	pop	rbx
	jmp	free
	.section	.text
	.align	32
	#Procedure 0x412ae6
	.globl sub_412ae6
	.type sub_412ae6, @function
sub_412ae6:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x412af0

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
	je	.label_1723
	mov	ebx, 0xffffffff
	test	eax, eax
	jne	.label_1722
	call	__errno_location
	mov	dword ptr [rax], 0
	jmp	.label_1722
.label_1723:
	test	eax, eax
	sete	cl
	neg	eax
	sbb	ebx, ebx
	test	r14, r14
	jne	.label_1722
	test	cl, cl
	jne	.label_1722
	call	__errno_location
	xor	ecx, ecx
	cmp	dword ptr [rax], 9
	mov	ebx, 0xffffffff
	cmove	ebx, ecx
.label_1722:
	mov	eax, ebx
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x412b56
	.globl sub_412b56
	.type sub_412b56, @function
sub_412b56:

	nop	word ptr cs:[rax + rax]
.label_1726:
	mov	edi, OFFSET FLAT:label_1724
	mov	esi, OFFSET FLAT:label_311
	mov	edx, 0x555
	mov	ecx, OFFSET FLAT:label_1725
	call	__assert_fail
	.section	.text
	.align	32
	#Procedure 0x412b79
	.globl sub_412b79
	.type sub_412b79, @function
sub_412b79:

	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x412b82

	.globl pop_fail_stack
	.type pop_fail_stack, @function
pop_fail_stack:
	push	r15
	push	r14
	push	rbx
	mov	r14, r8
	mov	r15, rdi
	mov	rdi, qword ptr [r15]
	lea	rax, [rdi - 1]
	mov	qword ptr [r15], rax
	test	rdi, rdi
	jle	.label_1726
	mov	rdi, qword ptr [r15 + 0x10]
	shl	rax, 4
	lea	rbx, [rax + rax*2]
	mov	rax, qword ptr [rdi + rbx]
	mov	qword ptr [rsi], rax
	mov	rax, qword ptr [r15 + 0x10]
	mov	rsi, qword ptr [rax + rbx + 0x10]
	shl	rdx, 4
	mov	rdi, rcx
	call	memcpy
	mov	rdi, qword ptr [r14 + 0x10]
	call	free
	mov	rax, qword ptr [r15 + 0x10]
	mov	rdi, qword ptr [rax + rbx + 0x10]
	call	free
	mov	rax, qword ptr [r15 + 0x10]
	mov	rcx, qword ptr [rax + rbx + 0x28]
	mov	qword ptr [r14 + 0x10], rcx
	movups	xmm0, xmmword ptr [rax + rbx + 0x18]
	movups	xmmword ptr [r14], xmm0
	mov	rax, qword ptr [r15 + 0x10]
	mov	rax, qword ptr [rax + rbx + 8]
	pop	rbx
	pop	r14
	pop	r15
	ret	
	.section	.text
	.align	32
	#Procedure 0x412c00

	.globl i_ring_empty
	.type i_ring_empty, @function
i_ring_empty:
	mov	al, byte ptr [rdi + 0x1c]
	ret	
	.section	.text
	.align	32
	#Procedure 0x412c04
	.globl sub_412c04
	.type sub_412c04, @function
sub_412c04:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x412c10

	.globl getenv_TZ
	.type getenv_TZ, @function
getenv_TZ:
	mov	edi, OFFSET FLAT:label_213
	jmp	getenv
	.section	.text
	.align	32
	#Procedure 0x412c1a
	.globl sub_412c1a
	.type sub_412c1a, @function
sub_412c1a:

	nop	word ptr [rax + rax]
.label_1733:
	mov	rax, qword ptr [rbx]
	test	rax, rax
	je	.label_1727
	cmp	dword ptr [rax + 8], 0
	jne	.label_1727
	mov	eax, dword ptr [rax + 0xc]
	xor	eax, ebp
	test	eax, 0x60000018
	je	.label_1728
.label_1727:
	xor	esi, esi
	mov	rdi, rbx
	mov	edx, ebp
	call	new_exclude_segment
.label_1728:
	mov	r15, qword ptr [rbx]
	mov	rdi, r14
	call	xstrdup
	mov	rbx, rax
	and	ebp, 0x10000002
	cmp	ebp, 0x10000000
	jne	.label_1729
	mov	rdi, rbx
	call	unescape_pattern
.label_1729:
	mov	rdi, qword ptr [r15 + 0x10]
	mov	rsi, rbx
	call	hash_insert
	cmp	rax, rbx
	je	.label_1730
	mov	rdi, rbx
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	jmp	free
.label_1734:
	mov	ebx, ebp
	shr	ebx, 3
	and	ebx, 2
	or	ebx, 9
	test	bpl, 8
	jne	.label_1736
	lea	rdi, [r13 + r15*8 + 8]
	mov	rsi, r14
	mov	edx, ebx
	call	rpl_regcomp
	mov	ebx, eax
	jmp	.label_1739
.label_1736:
	mov	rdi, r14
	call	strlen
	mov	rbp, rax
	add	rbp, 8
	nop	word ptr [rax + rax]
.label_1735:
	cmp	rbp, 8
	je	.label_1737
	cmp	byte ptr [r14 + rbp - 9], 0x2f
	lea	rbp, [rbp - 1]
	je	.label_1735
	mov	rdi, rbp
	call	xmalloc
	mov	qword ptr [rsp], rax
	lea	rdx, [rbp - 7]
	mov	rdi, rax
	mov	rsi, r14
	call	memcpy
	mov	rsi, qword ptr [rsp]
	mov	byte ptr [rsi + rbp - 1], 0
	mov	word ptr [rsi + rbp - 3], 0x3f29
	mov	dword ptr [rsi + rbp - 7], 0x2a2e2f28
	lea	rdi, [r13 + r15*8 + 8]
	mov	rbp, rsi
	mov	edx, ebx
	call	rpl_regcomp
	mov	ebx, eax
	mov	rdi, rbp
	call	free
.label_1739:
	test	ebx, ebx
	je	.label_1730
.label_1737:
	dec	qword ptr [r12 + 0x20]
.label_1730:
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
	#Procedure 0x412d44
	.globl sub_412d44
	.type sub_412d44, @function
sub_412d44:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x412d4e

	.globl add_exclude
	.type add_exclude, @function
add_exclude:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	push	rax
	mov	ebp, edx
	mov	r14, rsi
	mov	rbx, rdi
	test	ebp, 0x18000000
	je	.label_1733
	mov	rdi, r14
	mov	esi, ebp
	call	fnmatch_pattern_has_wildcards
	test	al, al
	je	.label_1733
	mov	rax, qword ptr [rbx]
	test	rax, rax
	je	.label_1731
	cmp	dword ptr [rax + 8], 1
	jne	.label_1731
	mov	eax, dword ptr [rax + 0xc]
	xor	eax, ebp
	test	eax, 0x20000000
	je	.label_1732
.label_1731:
	mov	esi, 1
	mov	rdi, rbx
	mov	edx, ebp
	call	new_exclude_segment
.label_1732:
	mov	r12, qword ptr [rbx]
	mov	rax, qword ptr [r12 + 0x20]
	cmp	rax, qword ptr [r12 + 0x18]
	jne	.label_1738
	lea	rsi, [r12 + 0x18]
	mov	rdi, qword ptr [r12 + 0x10]
	mov	edx, 0x48
	call	x2nrealloc
	mov	qword ptr [r12 + 0x10], rax
.label_1738:
	mov	rax, qword ptr [r12 + 0x20]
	lea	rcx, [rax + 1]
	mov	qword ptr [r12 + 0x20], rcx
	mov	r13, qword ptr [r12 + 0x10]
	lea	r15, [rax + rax*8]
	mov	dword ptr [r13 + r15*8], ebp
	test	ebp, 0x8000000
	jne	.label_1734
	test	ebp, 0x4000000
	je	.label_1740
	mov	rdi, r14
	call	xstrdup
	mov	r14, rax
	mov	rdi, rbx
	mov	rsi, r14
	call	exclude_add_pattern_buffer
.label_1740:
	mov	qword ptr [r13 + r15*8 + 8], r14
	jmp	.label_1730
	.section	.text
	.align	32
	#Procedure 0x412e20
	.globl rotr64
	.type rotr64, @function
rotr64:

	mov	ecx, esi
	ror	rdi, cl
	mov	rax, rdi
	ret	
	.section	.text
	.align	32
	#Procedure 0x412e29
	.globl sub_412e29
	.type sub_412e29, @function
sub_412e29:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x412e30
	.globl c_isgraph
	.type c_isgraph, @function
c_isgraph:

	add	edi, -0x21
	cmp	edi, 0x5e
	setb	al
	ret	
	.section	.text
	.align	32
	#Procedure 0x412e3a
	.globl sub_412e3a
	.type sub_412e3a, @function
sub_412e3a:

	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x412e40

	.globl bitset_mask
	.type bitset_mask, @function
bitset_mask:
	xor	eax, eax
	nop	word ptr cs:[rax + rax]
.label_1741:
	mov	rcx, qword ptr [rsi + rax*8]
	and	qword ptr [rdi + rax*8], rcx
	inc	rax
	cmp	rax, 4
	jne	.label_1741
	ret	
	.section	.text
	.align	32
	#Procedure 0x412e62
	.globl sub_412e62
	.type sub_412e62, @function
sub_412e62:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x412e70

	.globl check_subexp_matching_top
	.type check_subexp_matching_top, @function
check_subexp_matching_top:
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	mov	r14, rdx
	mov	r13, rsi
	mov	r15, rdi
	xor	eax, eax
	cmp	qword ptr [r13 + 8], 0
	jle	.label_1742
	mov	r12, qword ptr [r15 + 0x98]
	xor	ebx, ebx
	nop	word ptr cs:[rax + rax]
.label_1744:
	mov	rax, qword ptr [r13 + 0x10]
	mov	rsi, qword ptr [rax + rbx*8]
	mov	rax, qword ptr [r12]
	mov	rcx, rsi
	shl	rcx, 4
	cmp	byte ptr [rax + rcx + 8], 8
	jne	.label_1743
	mov	rax, qword ptr [rax + rcx]
	cmp	rax, 0x3f
	jg	.label_1743
	mov	rcx, qword ptr [r12 + 0xa0]
	bt	rcx, rax
	jae	.label_1743
	mov	rdi, r15
	mov	rdx, r14
	call	match_ctx_add_subtop
	test	eax, eax
	jne	.label_1742
	nop	word ptr cs:[rax + rax]
.label_1743:
	inc	rbx
	xor	eax, eax
	cmp	rbx, qword ptr [r13 + 8]
	jl	.label_1744
.label_1742:
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	ret	
	.section	.text
	.align	32
	#Procedure 0x412f05
	.globl sub_412f05
	.type sub_412f05, @function
sub_412f05:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x412f10
	.globl fts_compar
	.type fts_compar, @function
fts_compar:

	push	rax
	mov	rax, qword ptr [rdi]
	mov	rax, qword ptr [rax + 0x50]
	call	qword ptr [rax + 0x40]
	pop	rcx
	ret	
	.section	.text
	.align	32
	#Procedure 0x412f1d
	.globl sub_412f1d
	.type sub_412f1d, @function
sub_412f1d:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x412f20

	.globl string_free
	.type string_free, @function
string_free:
	jmp	free
	.section	.text
	.align	32
	#Procedure 0x412f25
	.globl sub_412f25
	.type sub_412f25, @function
sub_412f25:

	nop	dword ptr [rax]
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x412f30

	.globl unescape_tab
	.type unescape_tab, @function
unescape_tab:
	push	r14
	push	rbx
	push	rax
	mov	r14, rdi
	call	strlen
	inc	rax
	je	.label_1748
	xor	ecx, ecx
	mov	rdx, r14
	nop	word ptr [rax + rax]
.label_1747:
	lea	rsi, [rcx + 4]
	cmp	rsi, rax
	jae	.label_1745
	cmp	byte ptr [r14 + rcx], 0x5c
	jne	.label_1745
	movzx	esi, byte ptr [r14 + rcx + 1]
	mov	ebx, esi
	and	bl, 0xfc
	cmp	bl, 0x30
	jne	.label_1745
	movzx	edi, byte ptr [r14 + rcx + 2]
	mov	ebx, edi
	and	bl, 0xf8
	cmp	bl, 0x30
	jne	.label_1745
	movzx	r8d, byte ptr [r14 + rcx + 3]
	mov	ebx, r8d
	and	bl, 0xf8
	cmp	bl, 0x30
	jne	.label_1745
	add	rcx, 3
	shl	sil, 6
	shl	dil, 3
	add	dil, sil
	add	dil, r8b
	add	dil, 0x50
	mov	byte ptr [rdx], dil
	jmp	.label_1746
	.section	.text
	.align	32
	#Procedure 0x412fac
	.globl sub_412fac
	.type sub_412fac, @function
sub_412fac:

	nop	dword ptr [rax]
.label_1745:
	movzx	ebx, byte ptr [r14 + rcx]
	mov	byte ptr [rdx], bl
.label_1746:
	inc	rcx
	inc	rdx
	cmp	rcx, rax
	jb	.label_1747
.label_1748:
	add	rsp, 8
	pop	rbx
	pop	r14
	ret	
	.section	.text
	.align	32
	#Procedure 0x412fca
	.globl sub_412fca
	.type sub_412fca, @function
sub_412fca:

	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x412fd0
	.globl mbuiter_multi_reloc
	.type mbuiter_multi_reloc, @function
mbuiter_multi_reloc:

	add	qword ptr [rdi + 0x10], rsi
	ret	
	.section	.text
	.align	32
	#Procedure 0x412fd5
	.globl sub_412fd5
	.type sub_412fd5, @function
sub_412fd5:

	nop	word ptr cs:[rax + rax]
.label_1749:
	xor	ecx, ecx
.label_1751:
	movzx	ecx, cl
	movzx	edx, byte ptr [rax + rcx]
	lea	rax, [rax + rcx + 1]
	mov	byte ptr [rdi], dl
	inc	rdi
	test	dl, dl
	jne	.label_1750
	ret	
	.section	.text
	.align	32
	#Procedure 0x412ff8
	.globl sub_412ff8
	.type sub_412ff8, @function
sub_412ff8:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x413000

	.globl unescape_pattern
	.type unescape_pattern, @function
unescape_pattern:
	mov	rax, rdi
	nop	word ptr cs:[rax + rax]
.label_1750:
	cmp	byte ptr [rax], 0x5c
	jne	.label_1749
	cmp	byte ptr [rax + 1], 0
	setne	cl
	jmp	.label_1751
	.section	.text
	.align	32
	#Procedure 0x41301e
	.globl sub_41301e
	.type sub_41301e, @function
sub_41301e:

	nop	
	.section	.text
	.align	32
	#Procedure 0x413020

	.globl re_copy_regs
	.type re_copy_regs, @function
re_copy_regs:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x18
	mov	r14, rdx
	mov	rbx, rsi
	mov	r15, rdi
	cmp	ecx, 2
	je	.label_1762
	lea	r13, [r14 + 1]
	cmp	ecx, 1
	je	.label_1763
	test	ecx, ecx
	jne	.label_1753
	lea	r12, [r13*8]
	mov	rdi, r12
	call	malloc
	mov	qword ptr [r15 + 8], rax
	xor	ebp, ebp
	test	rax, rax
	je	.label_1757
	mov	rdi, r12
	call	malloc
	mov	qword ptr [r15 + 0x10], rax
	test	rax, rax
	je	.label_1765
	mov	qword ptr [r15], r13
	mov	r12d, 1
	jmp	.label_1754
.label_1762:
	mov	r12d, 2
	cmp	qword ptr [r15], r14
	jae	.label_1754
	mov	edi, OFFSET FLAT:label_1761
	mov	esi, OFFSET FLAT:label_311
	mov	edx, 0x1fb
	mov	ecx, OFFSET FLAT:label_1760
	call	__assert_fail
.label_1763:
	mov	r12d, 1
	cmp	r13, qword ptr [r15]
	ja	.label_1764
.label_1754:
	xor	eax, eax
	test	r14, r14
	jle	.label_1766
	mov	rax, qword ptr [r15 + 8]
	mov	rcx, qword ptr [r15 + 0x10]
	add	rbx, 8
	mov	rdx, r14
	nop	word ptr cs:[rax + rax]
.label_1756:
	mov	rsi, qword ptr [rbx - 8]
	mov	qword ptr [rax], rsi
	mov	rsi, qword ptr [rbx]
	mov	qword ptr [rcx], rsi
	add	rax, 8
	add	rcx, 8
	add	rbx, 0x10
	dec	rdx
	jne	.label_1756
	mov	rax, r14
.label_1766:
	cmp	rax, qword ptr [r15]
	jae	.label_1752
	mov	rcx, qword ptr [r15 + 8]
	mov	rdx, qword ptr [r15 + 0x10]
	nop	
.label_1758:
	mov	qword ptr [rdx + rax*8], -1
	mov	qword ptr [rcx + rax*8], -1
	inc	rax
	cmp	rax, qword ptr [r15]
	jb	.label_1758
.label_1752:
	mov	ebp, r12d
.label_1757:
	mov	eax, ebp
	add	rsp, 0x18
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_1764:
	mov	rdi, qword ptr [r15 + 8]
	lea	rsi, [r13*8]
	mov	qword ptr [rsp + 0x10], rsi
	call	realloc
	xor	ebp, ebp
	mov	qword ptr [rsp + 8], rax
	test	rax, rax
	je	.label_1757
	mov	rdi, qword ptr [r15 + 0x10]
	mov	rsi, qword ptr [rsp + 0x10]
	call	realloc
	test	rax, rax
	je	.label_1755
	mov	rcx, qword ptr [rsp + 8]
	mov	qword ptr [r15 + 8], rcx
	mov	qword ptr [r15 + 0x10], rax
	mov	qword ptr [r15], r13
	jmp	.label_1754
.label_1765:
	mov	rdi, qword ptr [r15 + 8]
	call	free
	jmp	.label_1757
.label_1753:
	mov	edi, OFFSET FLAT:label_1759
	mov	esi, OFFSET FLAT:label_311
	mov	edx, 0x1f9
	mov	ecx, OFFSET FLAT:label_1760
	call	__assert_fail
.label_1755:
	mov	rdi, qword ptr [rsp + 8]
	call	free
	jmp	.label_1757
	.section	.text
	.align	32
	#Procedure 0x4131b9
	.globl sub_4131b9
	.type sub_4131b9, @function
sub_4131b9:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x4131c0

	.globl emit_mandatory_arg_note
	.type emit_mandatory_arg_note, @function
emit_mandatory_arg_note:
	push	rax
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_1767
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	pop	rax
	jmp	fputs_unlocked
	.section	.text
	.align	32
	#Procedure 0x4131e2
	.globl sub_4131e2
	.type sub_4131e2, @function
sub_4131e2:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4131f0

	.globl build_range_exp
	.type build_range_exp, @function
build_range_exp:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x18
	mov	rbx, r9
	mov	rbp, r8
	mov	r15, rcx
	mov	r14, rdx
	mov	r13, rsi
	mov	r12, rdi
	mov	ecx, dword ptr [rbp]
	mov	eax, 0xb
	cmp	ecx, 2
	je	.label_1775
	cmp	ecx, 4
	je	.label_1775
	mov	edx, dword ptr [rbx]
	cmp	edx, 2
	je	.label_1775
	cmp	edx, 4
	je	.label_1775
	cmp	ecx, 3
	jne	.label_1781
	mov	rdi, qword ptr [rbp + 8]
	call	strlen
	mov	rcx, rax
	mov	eax, 3
	cmp	rcx, 1
	ja	.label_1775
.label_1781:
	cmp	dword ptr [rbx], 3
	jne	.label_1786
	mov	rdi, qword ptr [rbx + 8]
	call	strlen
	mov	rcx, rax
	mov	eax, 3
	cmp	rcx, 1
	ja	.label_1775
.label_1786:
	mov	eax, dword ptr [rbp]
	cmp	eax, 3
	je	.label_1789
	test	eax, eax
	jne	.label_1769
	mov	al, byte ptr [rbp + 8]
	jmp	.label_1770
.label_1789:
	mov	rax, qword ptr [rbp + 8]
	mov	al, byte ptr [rax]
	jmp	.label_1770
.label_1769:
	xor	eax, eax
.label_1770:
	mov	ecx, dword ptr [rbx]
	cmp	ecx, 3
	je	.label_1773
	test	ecx, ecx
	jne	.label_1774
	mov	dl, byte ptr [rbx + 8]
	jmp	.label_1776
.label_1773:
	mov	rcx, qword ptr [rbx + 8]
	mov	dl, byte ptr [rcx]
	jmp	.label_1776
.label_1774:
	xor	edx, edx
.label_1776:
	mov	ecx, dword ptr [rbp]
	cmp	ecx, 3
	je	.label_1778
	test	ecx, ecx
	jne	.label_1780
.label_1778:
	movzx	edi, al
	mov	rsi, r14
	mov	ebp, edx
	call	parse_byte
	mov	edx, ebp
	mov	ebp, eax
	jmp	.label_1782
.label_1780:
	mov	ebp, dword ptr [rbp + 8]
.label_1782:
	mov	eax, dword ptr [rbx]
	cmp	eax, 3
	je	.label_1784
	test	eax, eax
	jne	.label_1785
.label_1784:
	movzx	edi, dl
	mov	rsi, r14
	call	parse_byte
	mov	ebx, eax
	jmp	.label_1788
.label_1785:
	mov	ebx, dword ptr [rbx + 8]
.label_1788:
	cmp	ebp, -1
	mov	eax, 3
	je	.label_1775
	cmp	ebx, -1
	je	.label_1775
	test	r12d, 0x10000
	je	.label_1768
	cmp	ebp, ebx
	mov	eax, 0xb
	ja	.label_1775
.label_1768:
	test	r14, r14
	je	.label_1771
	mov	r12, qword ptr [r14 + 0x40]
	cmp	qword ptr [r15], r12
	je	.label_1772
.label_1779:
	mov	rax, qword ptr [r14 + 8]
	mov	rcx, qword ptr [r14 + 0x40]
	mov	dword ptr [rax + rcx*4], ebp
	mov	rax, qword ptr [r14 + 0x40]
	lea	rcx, [rax + 1]
	mov	qword ptr [r14 + 0x40], rcx
	mov	rcx, qword ptr [r14 + 0x10]
	mov	dword ptr [rcx + rax*4], ebx
.label_1771:
	mov	r14d, ebx
	mov	ebp, ebp
	xor	ebx, ebx
	nop	word ptr cs:[rax + rax]
.label_1787:
	cmp	rbp, rbx
	ja	.label_1783
	cmp	rbx, r14
	ja	.label_1783
	mov	rdi, r13
	mov	rsi, rbx
	call	bitset_set
.label_1783:
	inc	rbx
	xor	eax, eax
	cmp	rbx, 0x100
	jne	.label_1787
.label_1775:
	add	rsp, 0x18
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_1772:
	lea	rax, [r12 + r12]
	mov	rdi, qword ptr [r14 + 8]
	lea	rsi, [rax*4 + 4]
	mov	qword ptr [rsp + 8], rsi
	call	realloc
	mov	qword ptr [rsp + 0x10], rax
	mov	rdi, qword ptr [r14 + 0x10]
	mov	rsi, qword ptr [rsp + 8]
	call	realloc
	mov	qword ptr [rsp + 8], rax
	mov	rax, qword ptr [rsp + 0x10]
	mov	rdi, rax
	test	rax, rax
	je	.label_1777
	cmp	qword ptr [rsp + 8], 0
	je	.label_1777
	lea	rax, [r12 + r12 + 1]
	mov	qword ptr [r14 + 8], rdi
	mov	rcx, qword ptr [rsp + 8]
	mov	qword ptr [r14 + 0x10], rcx
	mov	qword ptr [r15], rax
	jmp	.label_1779
.label_1777:
	call	free
	mov	rdi, qword ptr [rsp + 8]
	call	free
	mov	eax, 0xc
	jmp	.label_1775
	.section	.text
	.align	32
	#Procedure 0x4133fc
	.globl sub_4133fc
	.type sub_4133fc, @function
sub_4133fc:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x413400
	.globl xnmalloc
	.type xnmalloc, @function
xnmalloc:

	movabs	rax, 0x7fffffffffffffff
	xor	edx, edx
	div	rsi
	cmp	rax, rdi
	jb	.label_1790
	imul	rsi, rdi
	mov	rdi, rsi
	jmp	xmalloc
.label_1790:
	push	rax
	call	xalloc_die
	.section	.text
	.align	32
	#Procedure 0x413423
	.globl sub_413423
	.type sub_413423, @function
sub_413423:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x413430

	.globl xmalloc
	.type xmalloc, @function
xmalloc:
	push	rbx
	mov	rbx, rdi
	call	malloc
	test	rbx, rbx
	je	.label_1791
	test	rax, rax
	je	.label_1792
.label_1791:
	pop	rbx
	ret	
.label_1792:
	call	xalloc_die
	.section	.text
	.align	32
	#Procedure 0x41344a
	.globl sub_41344a
	.type sub_41344a, @function
sub_41344a:

	nop	word ptr [rax + rax]
.label_1794:
	ret	
	.section	.text
	.align	32
	#Procedure 0x413451
	.globl sub_413451
	.type sub_413451, @function
sub_413451:

	nop	word ptr cs:[rax + rax]
.label_1793:
	mov	rdi, qword ptr [rdi + 0x58]
	jmp	free
	.section	.text
	.align	32
	#Procedure 0x413468

	.globl free_dir
	.type free_dir, @function
free_dir:
	movzx	eax, word ptr [rdi + 0x48]
	test	ax, 0x102
	je	.label_1793
	mov	rdi, qword ptr [rdi + 0x58]
	test	rdi, rdi
	je	.label_1794
	jmp	hash_free
	.section	.text
	.align	32
	#Procedure 0x413480

	.globl create_ci_newstate
	.type create_ci_newstate, @function
create_ci_newstate:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	push	rax
	mov	rbx, rdx
	mov	r14, rsi
	mov	r15, rdi
	mov	edi, 0x70
	mov	esi, 1
	call	rpl_calloc
	mov	r12, rax
	xor	eax, eax
	test	r12, r12
	je	.label_1798
	mov	r13, r12
	add	r13, 8
	mov	rdi, r13
	mov	rsi, r14
	call	re_node_set_init_copy
	test	eax, eax
	jne	.label_1796
	mov	rdx, rbx
	mov	qword ptr [r12 + 0x50], r13
	cmp	qword ptr [r14 + 8], 0
	jle	.label_1799
	xor	eax, eax
.label_1803:
	mov	r8, qword ptr [r15]
	mov	rcx, qword ptr [r14 + 0x10]
	mov	rbp, qword ptr [rcx + rax*8]
	shl	rbp, 4
	mov	esi, dword ptr [r8 + rbp + 8]
	mov	edi, esi
	and	edi, 0x3ffff
	cmp	edi, 1
	je	.label_1800
	mov	edi, esi
	shr	edi, 0x14
	movzx	ecx, byte ptr [r12 + 0x68]
	mov	ebx, ecx
	shr	bl, 5
	movzx	ebx, bl
	or	ebx, edi
	shl	bl, 5
	and	bl, 0x20
	and	cl, 0xdf
	or	cl, bl
	mov	byte ptr [r12 + 0x68], cl
	cmp	sil, 0xc
	je	.label_1795
	cmp	sil, 4
	je	.label_1802
	cmp	sil, 2
	jne	.label_1804
	or	cl, 0x10
	mov	byte ptr [r12 + 0x68], cl
	jmp	.label_1800
.label_1797:
	mov	rdi, r12
	call	free_state
.label_1801:
	xor	eax, eax
	jmp	.label_1798
	.section	.text
	.align	32
	#Procedure 0x41354e
	.globl sub_41354e
	.type sub_41354e, @function
sub_41354e:

	nop	word ptr cs:[rax + rax]
.label_1804:
	lea	rcx, [r8 + rbp + 8]
	test	dword ptr [rcx], 0x3ff00
	je	.label_1800
.label_1795:
	or	byte ptr [r12 + 0x68], 0x80
.label_1800:
	inc	rax
	cmp	rax, qword ptr [r14 + 8]
	jl	.label_1803
.label_1799:
	mov	rdi, r15
	mov	rsi, r12
	call	register_state
	test	eax, eax
	mov	rax, r12
	jne	.label_1797
.label_1798:
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_1796:
	mov	rdi, r12
	call	free
	jmp	.label_1801
.label_1802:
	or	cl, 0x40
	mov	byte ptr [r12 + 0x68], cl
	jmp	.label_1800
	.section	.text
	.align	32
	#Procedure 0x4135b0

	.globl hash_ins
	.type hash_ins, @function
hash_ins:
	push	rax
	mov	rax, rsi
	mov	rsi, rdx
	mov	rdx, rax
	call	di_set_insert
	test	eax, eax
	js	.label_1805
	setne	al
	pop	rcx
	ret	
.label_1805:
	call	xalloc_die
	.section	.text
	.align	32
	#Procedure 0x4135cd
	.globl sub_4135cd
	.type sub_4135cd, @function
sub_4135cd:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x4135d0

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
	jne	.label_1806
	mov	rax, qword ptr [rbx + 0x28]
	cmp	rax, qword ptr [rbx + 0x20]
	jne	.label_1806
	cmp	qword ptr [rbx + 0x48], 0
	je	.label_1807
.label_1806:
	mov	rdi, rbx
	mov	rsi, rbp
	mov	edx, r14d
	pop	rbx
	pop	r14
	pop	rbp
	jmp	fseeko
.label_1807:
	mov	rdi, rbx
	call	fileno
	mov	edi, eax
	mov	rsi, rbp
	mov	edx, r14d
	call	lseek
	mov	rcx, rax
	mov	eax, 0xffffffff
	cmp	rcx, -1
	je	.label_1808
	and	byte ptr [rbx], 0xef
	mov	qword ptr [rbx + 0x90], rcx
	xor	eax, eax
.label_1808:
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x41363e
	.globl sub_41363e
	.type sub_41363e, @function
sub_41363e:

	nop	
	.section	.text
	.align	32
	#Procedure 0x413640

	.globl calc_inveclosure
	.type calc_inveclosure, @function
calc_inveclosure:
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	mov	r13, rdi
	xor	eax, eax
	cmp	qword ptr [r13 + 0x10], 0
	je	.label_1809
	xor	eax, eax
	xorps	xmm0, xmm0
	xor	ecx, ecx
.label_1810:
	mov	rdx, qword ptr [r13 + 0x38]
	movups	xmmword ptr [rdx + rax], xmm0
	mov	qword ptr [rdx + rax + 0x10], 0
	inc	rcx
	mov	rdx, qword ptr [r13 + 0x10]
	add	rax, 0x18
	cmp	rcx, rdx
	jb	.label_1810
	xor	eax, eax
	test	rdx, rdx
	je	.label_1809
	xor	r14d, r14d
	nop	dword ptr [rax + rax]
.label_1812:
	mov	rax, qword ptr [r13 + 0x30]
	lea	r15, [r14 + r14*2]
	cmp	qword ptr [rax + r15*8 + 8], 0
	jle	.label_1813
	mov	r12, qword ptr [rax + r15*8 + 0x10]
	xor	ebx, ebx
	nop	word ptr [rax + rax]
.label_1811:
	mov	rax, qword ptr [r13 + 0x38]
	mov	rcx, qword ptr [r12 + rbx*8]
	lea	rcx, [rcx + rcx*2]
	lea	rdi, [rax + rcx*8]
	mov	rsi, r14
	call	re_node_set_insert_last
	mov	ecx, eax
	mov	eax, 0xc
	test	cl, cl
	je	.label_1809
	inc	rbx
	mov	rax, qword ptr [r13 + 0x30]
	cmp	rbx, qword ptr [rax + r15*8 + 8]
	jl	.label_1811
.label_1813:
	inc	r14
	xor	eax, eax
	cmp	r14, qword ptr [r13 + 0x10]
	jb	.label_1812
.label_1809:
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	ret	
	.section	.text
	.align	32
	#Procedure 0x4136f6
	.globl sub_4136f6
	.type sub_4136f6, @function
sub_4136f6:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x413700

	.globl match_ctx_free
	.type match_ctx_free, @function
match_ctx_free:
	push	rbx
	mov	rbx, rdi
	call	match_ctx_clean
	mov	rdi, qword ptr [rbx + 0xf8]
	call	free
	mov	rdi, qword ptr [rbx + 0xd8]
	pop	rbx
	jmp	free
	.section	.text
	.align	32
	#Procedure 0x413722
	.globl sub_413722
	.type sub_413722, @function
sub_413722:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x413730

	.globl fetch_token
	.type fetch_token, @function
fetch_token:
	push	rbx
	mov	rbx, rsi
	call	peek_token
	cdqe	
	add	qword ptr [rbx + 0x48], rax
	pop	rbx
	ret	
	.section	.text
	.align	32
	#Procedure 0x413741
	.globl sub_413741
	.type sub_413741, @function
sub_413741:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x413750

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
	jne	.label_1818
	mov	edi, OFFSET FLAT:label_1820
	call	getenv
	mov	rdi, rax
	test	rdi, rdi
	jne	.label_1818
	mov	edi, OFFSET FLAT:label_1823
	call	getenv
	mov	rdi, rax
	test	rdi, rdi
	je	.label_1825
.label_1818:
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
	js	.label_1824
	cdqe	
	or	ebp,  dword ptr [dword ptr [+ (rax * 4) + block_size_opts]]
	mov	qword ptr [r15], 1
.label_1816:
	mov	dword ptr [r14], ebp
	xor	eax, eax
	jmp	.label_1814
.label_1824:
	lea	rsi, [rsp]
	xor	edx, edx
	mov	r8d, OFFSET FLAT:label_1815
	mov	rdi, rbx
	mov	rcx, r15
	call	xstrtoumax
	test	eax, eax
	je	.label_1821
	mov	dword ptr [r14], 0
.label_1814:
	add	rsp, 8
	pop	rbx
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_1821:
	mov	al, byte ptr [rbx]
	add	al, 0xd0
	cmp	al, 0xa
	jb	.label_1816
	mov	rax, qword ptr [rsp]
	nop	dword ptr [rax]
.label_1817:
	cmp	rax, rbx
	je	.label_1819
	movzx	ecx, byte ptr [rbx + 1]
	inc	rbx
	add	cl, 0xd0
	cmp	cl, 0xa
	jae	.label_1817
	jmp	.label_1816
.label_1825:
	call	default_block_size
	mov	qword ptr [r15], rax
	xor	ebp, ebp
	jmp	.label_1816
.label_1819:
	mov	ecx, ebp
	or	ecx, 0x80
	or	ebp, 0x180
	cmp	byte ptr [rax - 1], 0x42
	cmove	ecx, ebp
	jne	.label_1822
	cmp	byte ptr [rax - 2], 0x69
	jne	.label_1816
.label_1822:
	or	ecx, 0x20
	mov	ebp, ecx
	jmp	.label_1816
	.section	.text
	.align	32
	#Procedure 0x41385d
	.globl sub_41385d
	.type sub_41385d, @function
sub_41385d:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x413860

	.globl build_sifted_states
	.type build_sifted_states, @function
build_sifted_states:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x28
	mov	qword ptr [rsp + 0x20], rcx
	mov	rbx, rdx
	mov	qword ptr [rsp + 8], rsi
	mov	qword ptr [rsp + 0x10], rdi
	mov	rax, qword ptr [rdi + 0xb8]
	mov	r14, qword ptr [rax + rbx*8]
	xor	eax, eax
	cmp	qword ptr [r14 + 0x28], 0
	jle	.label_1826
	mov	rax, qword ptr [rsp + 0x10]
	mov	r12, qword ptr [rax + 0x98]
	mov	rax, qword ptr [rsp + 8]
	lea	rax, [rax + 0x20]
	mov	qword ptr [rsp + 0x18], rax
	xor	r15d, r15d
	nop	word ptr cs:[rax + rax]
.label_1827:
	mov	rax, qword ptr [r14 + 0x30]
	mov	rbp, qword ptr [rax + r15*8]
	mov	rax, qword ptr [r12]
	mov	r13, rbp
	shl	r13, 4
	test	byte ptr [rax + r13 + 0xa], 0x10
	je	.label_1829
	mov	rsi, qword ptr [rsp + 8]
	mov	r8, qword ptr [rsi + 0x18]
	mov	rdi, qword ptr [rsp + 0x10]
	mov	rdx, rbp
	mov	rcx, rbx
	call	sift_states_iter_mb
	test	eax, eax
	jne	.label_1831
.label_1829:
	add	r13, qword ptr [r12]
	mov	rdi, qword ptr [rsp + 0x10]
	mov	rsi, r13
	mov	rdx, rbx
	call	check_node_accept
	test	al, al
	je	.label_1830
	mov	rax, qword ptr [rsp + 8]
	mov	rax, qword ptr [rax]
	mov	rdi, qword ptr [rax + rbx*8 + 8]
	test	rdi, rdi
	je	.label_1830
	add	rdi, 8
	mov	rax, qword ptr [r12 + 0x18]
	mov	rsi, qword ptr [rax + rbp*8]
	call	re_node_set_contains
	mov	rcx, rax
	mov	eax, 1
	test	rcx, rcx
	je	.label_1830
.label_1831:
	mov	rcx, qword ptr [rsp + 8]
	cmp	qword ptr [rcx + 0x28], 0
	je	.label_1828
	movsxd	rcx, eax
	add	rcx, rbx
	mov	rax, qword ptr [r12 + 0x18]
	mov	rdx, qword ptr [rax + rbp*8]
	mov	rdi, qword ptr [rsp + 0x10]
	mov	rsi, qword ptr [rsp + 0x18]
	mov	r8, rbp
	mov	r9, rbx
	call	check_dst_limits
	mov	ecx, 4
	test	al, al
	jne	.label_1832
.label_1828:
	mov	rdi, qword ptr [rsp + 0x20]
	mov	rsi, rbp
	call	re_node_set_insert
	movzx	ecx, al
	xor	ecx, 1
.label_1832:
	or	cl, 4
	mov	eax, 0xc
	and	cl, 7
	cmp	cl, 4
	jne	.label_1826
.label_1830:
	inc	r15
	xor	eax, eax
	cmp	r15, qword ptr [r14 + 0x28]
	jl	.label_1827
.label_1826:
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
	#Procedure 0x4139bf
	.globl sub_4139bf
	.type sub_4139bf, @function
sub_4139bf:

	nop	
.label_1837:
	mov	rax, qword ptr [rsi + 8]
	mov	rcx, qword ptr [rsi + 0x10]
	mov	rcx, qword ptr [rcx + 0x18]
	mov	qword ptr [rax + 0x20], rcx
	mov	rax, qword ptr [rsi + 0x10]
	jmp	.label_1833
.label_1834:
	mov	rax, qword ptr [rsi + 8]
	test	rax, rax
	je	.label_1835
	mov	rcx, qword ptr [rsi + 0x20]
	mov	qword ptr [rax + 0x20], rcx
.label_1835:
	mov	rax, qword ptr [rsi + 0x10]
	test	rax, rax
	je	.label_1836
.label_1833:
	mov	rcx, qword ptr [rsi + 0x20]
	mov	qword ptr [rax + 0x20], rcx
.label_1836:
	xor	eax, eax
	ret	
	.section	.text
	.align	32
	#Procedure 0x4139fb
	.globl sub_4139fb
	.type sub_4139fb, @function
sub_4139fb:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x413a0a

	.globl calc_next
	.type calc_next, @function
calc_next:
	mov	al, byte ptr [rsi + 0x30]
	cmp	al, 0x10
	je	.label_1837
	cmp	al, 0xb
	jne	.label_1834
	mov	rax, qword ptr [rsi + 8]
	mov	qword ptr [rax + 0x20], rsi
	xor	eax, eax
	ret	
	.section	.text
	.align	32
	#Procedure 0x413a20

	.globl parse_bracket_element
	.type parse_bracket_element, @function
parse_bracket_element:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x28
	mov	dword ptr [rsp + 0xc], r9d
	mov	qword ptr [rsp + 0x10], r8
	mov	ebp, ecx
	mov	r14, rdx
	mov	rbx, rsi
	mov	r15, rdi
	mov	r13, qword ptr [rbx + 0x48]
	mov	rdi, rbx
	mov	rsi, r13
	call	re_string_char_size_at
	mov	r12d, eax
	cmp	r12d, 2
	jl	.label_1839
	mov	dword ptr [r15], 1
	mov	rsi, qword ptr [rbx + 0x48]
	mov	rdi, rbx
	call	re_string_wchar_at
	mov	dword ptr [r15 + 8], eax
	movsxd	rax, r12d
	add	qword ptr [rbx + 0x48], rax
.label_1838:
	xor	eax, eax
.label_2651:
	add	rsp, 0x28
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_2835:
	mov	eax, dword ptr [rsp + 0xc]
	test	al, al
	jne	.label_1840
	lea	rdi, [rsp + 0x18]
	mov	rsi, rbx
	mov	rdx, qword ptr [rsp + 0x10]
	call	peek_token_bracket
	mov	eax, 0xb
	cmp	byte ptr [rsp + 0x20], 0x15
	jne	.label_2651
.label_1840:
	mov	dword ptr [r15], 0
	mov	al, byte ptr [r14]
	mov	byte ptr [r15 + 8], al
	jmp	.label_1838
	.section	.text
	.align	32
	#Procedure 0x413ac3
	.globl sub_413ac3
	.type sub_413ac3, @function
sub_413ac3:

	nop	dword ptr [rax]
.label_1839:
	movsxd	rax, ebp
	add	r13, rax
	mov	qword ptr [rbx + 0x48], r13
	mov	al, byte ptr [r14 + 8]
	add	al, 0xea
	movzx	eax, al
	cmp	al, 8
	ja	.label_1840
	jmp	qword ptr [word ptr [+ (rax * 8) + label_1841]]
.label_2836:
	mov	rdi, r15
	mov	rsi, rbx
	mov	rdx, r14
	add	rsp, 0x28
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	jmp	parse_bracket_symbol
	.section	.text
	.align	32
	#Procedure 0x413b00

	.globl build_wcs_upper_buffer
	.type build_wcs_upper_buffer, @function
build_wcs_upper_buffer:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x78
	mov	rbx, rdi
	mov	r15, qword ptr [rbx + 0x30]
	mov	r13, qword ptr [rbx + 0x40]
	mov	rax, qword ptr [rbx + 0x58]
	cmp	r13, rax
	cmovg	r13, rax
	cmp	byte ptr [rbx + 0x8a], 0
	jne	.label_1842
	cmp	qword ptr [rbx + 0x78], 0
	jne	.label_1842
	cmp	byte ptr [rbx + 0x8c], 0
	je	.label_1852
.label_1842:
	mov	rdi, qword ptr [rbx + 0x38]
	jmp	.label_1843
.label_1852:
	cmp	r13, r15
	jle	.label_1856
	lea	r14, [rbx + 0x20]
	mov	qword ptr [rsp + 0x10], r13
	jmp	.label_1859
.label_1848:
	lea	rax, [r12 + 1]
	cmp	rax, 2
	jb	.label_1845
	cmp	r12, -2
	jne	.label_1867
	mov	rax, qword ptr [rbx + 0x40]
	cmp	rax, qword ptr [rbx + 0x58]
	jl	.label_1867
.label_1845:
	mov	rax, qword ptr [rbx + 0x28]
	add	rax, r15
	mov	rcx, qword ptr [rbx]
	mov	rdx, qword ptr [rbx + 8]
	movzx	eax, byte ptr [rcx + rax]
	mov	byte ptr [rdx + r15], al
	mov	rcx, qword ptr [rbx + 0x10]
	mov	dword ptr [rcx + r15*4], eax
	inc	r15
	cmp	r12, -1
	jne	.label_1858
	mov	rax, qword ptr [rsp + 0x18]
	mov	qword ptr [r14], rax
	jmp	.label_1858
	.section	.text
	.align	32
	#Procedure 0x413bae
	.globl sub_413bae
	.type sub_413bae, @function
sub_413bae:

	nop	
.label_1859:
	mov	rax, qword ptr [rbx + 0x28]
	add	rax, r15
	mov	rcx, qword ptr [rbx]
	movzx	ebp, byte ptr [rcx + rax]
	test	bpl, bpl
	js	.label_1876
	mov	rdi, r14
	call	mbsinit
	test	eax, eax
	je	.label_1876
	call	__ctype_toupper_loc
	mov	rax, qword ptr [rax]
	movzx	eax, byte ptr [rax + rbp*4]
	mov	rcx, qword ptr [rbx + 8]
	mov	byte ptr [rcx + r15], al
	mov	rax, qword ptr [rbx + 8]
	mov	rcx, qword ptr [rbx + 0x10]
	movzx	eax, byte ptr [rax + r15]
	mov	dword ptr [rcx + r15*4], eax
	inc	r15
.label_1858:
	mov	rax, r15
	jmp	.label_1872
	.section	.text
	.align	32
	#Procedure 0x413bff
	.globl sub_413bff
	.type sub_413bff, @function
sub_413bff:

	nop	
.label_1876:
	mov	rdx, r13
	sub	rdx, r15
	mov	rax, qword ptr [rbx + 0x20]
	mov	qword ptr [rsp + 0x18], rax
	mov	rsi, qword ptr [rbx]
	add	rsi, qword ptr [rbx + 0x28]
	add	rsi, r15
	lea	rdi, [rsp + 0xc]
	mov	rcx, r14
	call	rpl_mbrtowc
	mov	r12, rax
	lea	rax, [r12 - 1]
	cmp	rax, -4
	ja	.label_1848
	mov	edi, dword ptr [rsp + 0xc]
	call	towupper
	mov	r13d, eax
	cmp	r13d, dword ptr [rsp + 0xc]
	lea	rbp, [rsp + 0x30]
	jne	.label_1855
	mov	rdi, qword ptr [rbx + 8]
	add	rdi, r15
	mov	rsi, qword ptr [rbx]
	add	rsi, qword ptr [rbx + 0x28]
	add	rsi, r15
	jmp	.label_1860
	.section	.text
	.align	32
	#Procedure 0x413c63
	.globl sub_413c63
	.type sub_413c63, @function
sub_413c63:

	nop	word ptr cs:[rax + rax]
.label_1855:
	mov	rdi, rbp
	mov	esi, r13d
	lea	rdx, [rsp + 0x18]
	call	wcrtomb
	cmp	r12, rax
	jne	.label_1870
	mov	rdi, qword ptr [rbx + 8]
	add	rdi, r15
	mov	rsi, rbp
.label_1860:
	mov	rdx, r12
	call	memcpy
	mov	rax, qword ptr [rbx + 0x10]
	mov	dword ptr [rax + r15*4], r13d
	lea	rbp, [r12 + r15]
	lea	rax, [r15 + 1]
	cmp	rax, rbp
	mov	r13, qword ptr [rsp + 0x10]
	jge	.label_1872
	mov	rax, qword ptr [rbx + 0x10]
	lea	rdi, [rax + r15*4 + 4]
	lea	rdx, [r12*4 - 4]
	mov	esi, 0xff
	call	memset
	mov	rax, rbp
.label_1872:
	cmp	r13, rax
	mov	r15, rax
	jg	.label_1859
	jmp	.label_1881
.label_1870:
	mov	rdi, r15
	mov	r13, qword ptr [rsp + 0x10]
	jmp	.label_1882
.label_1867:
	mov	rax, qword ptr [rsp + 0x18]
	mov	qword ptr [r14], rax
.label_1856:
	mov	rax, r15
.label_1881:
	mov	qword ptr [rbx + 0x30], rax
	mov	qword ptr [rbx + 0x38], rax
	jmp	.label_1884
.label_1843:
	cmp	r15, r13
	jge	.label_1887
.label_1882:
	mov	rdx, r13
	sub	rdx, r15
	lea	r12, [rbx + 0x20]
	mov	rax, qword ptr [rbx + 0x20]
	mov	qword ptr [rsp + 0x18], rax
	cmp	qword ptr [rbx + 0x78], 0
	mov	qword ptr [rsp + 0x10], r13
	mov	qword ptr [rsp + 0x28], rdi
	jne	.label_1844
	mov	rbp, qword ptr [rbx]
	add	rbp, qword ptr [rbx + 0x28]
	add	rbp, rdi
.label_1873:
	lea	rdi, [rsp + 0xc]
	mov	rsi, rbp
	mov	rcx, r12
	call	rpl_mbrtowc
	mov	r14, rax
	lea	r13, [r14 - 1]
	cmp	r13, -4
	ja	.label_1875
	mov	edi, dword ptr [rsp + 0xc]
	call	towupper
	cmp	eax, dword ptr [rsp + 0xc]
	mov	dword ptr [rsp + 0x24], eax
	je	.label_1863
	lea	rdi, [rsp + 0x30]
	lea	rdx, [rsp + 0x18]
	mov	esi, eax
	call	wcrtomb
	mov	rcx, rax
	sub	rax, r14
	jne	.label_1869
	mov	rdi, qword ptr [rbx + 8]
	add	rdi, r15
	lea	rsi, [rsp + 0x30]
	jmp	.label_1871
.label_1844:
	lea	rbp, [rsp + 0x30]
	cmp	dword ptr [rbx + 0x90], 0
	jle	.label_1873
	xor	eax, eax
.label_1878:
	cmp	rax, rdx
	jge	.label_1873
	mov	rcx, qword ptr [rbx]
	mov	rsi, qword ptr [rbx + 0x78]
	add	rcx, qword ptr [rbx + 0x28]
	add	rcx, rdi
	movzx	ecx, byte ptr [rax + rcx]
	movzx	ecx, byte ptr [rsi + rcx]
	mov	byte ptr [rsp + rax + 0x30], cl
	inc	rax
	movsxd	rcx, dword ptr [rbx + 0x90]
	cmp	rax, rcx
	jl	.label_1878
	jmp	.label_1873
.label_1875:
	mov	rsi, r12
	lea	rax, [r14 + 1]
	cmp	rax, 2
	jb	.label_1853
	cmp	r14, -2
	jne	.label_1879
	mov	rax, qword ptr [rbx + 0x40]
	cmp	rax, qword ptr [rbx + 0x58]
	jl	.label_1879
.label_1853:
	mov	rax, qword ptr [rbx + 0x28]
	mov	rdi, qword ptr [rsp + 0x28]
	add	rax, rdi
	mov	rdx, qword ptr [rbx]
	mov	rcx, qword ptr [rbx + 0x78]
	mov	al, byte ptr [rdx + rax]
	movzx	edx, al
	test	rcx, rcx
	jne	.label_1885
.label_1850:
	movzx	eax, al
	mov	rcx, qword ptr [rbx + 8]
	mov	byte ptr [rcx + r15], al
	cmp	byte ptr [rbx + 0x8c], 0
	mov	r13, qword ptr [rsp + 0x10]
	jne	.label_1847
.label_1861:
	inc	rdi
	mov	rcx, qword ptr [rbx + 0x10]
	mov	dword ptr [rcx + r15*4], eax
	inc	r15
	cmp	r14, -1
	je	.label_1854
	mov	r12, r15
	jmp	.label_1843
.label_1869:
	cmp	rcx, -1
	je	.label_1863
	mov	rsi, r12
	lea	r12, [rcx + r15]
	mov	rdi, qword ptr [rbx + 0x40]
	cmp	r12, rdi
	jbe	.label_1865
.label_1879:
	mov	rax, qword ptr [rsp + 0x18]
	mov	qword ptr [rsi], rax
	mov	rdi, qword ptr [rsp + 0x28]
.label_1887:
	mov	qword ptr [rbx + 0x30], r15
	mov	qword ptr [rbx + 0x38], rdi
.label_1884:
	xor	eax, eax
.label_1883:
	add	rsp, 0x78
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_1863:
	mov	rdi, qword ptr [rbx + 8]
	add	rdi, r15
	mov	rsi, rbp
.label_1871:
	mov	rdx, r14
	call	memcpy
	cmp	byte ptr [rbx + 0x8c], 0
	mov	r13, qword ptr [rsp + 0x10]
	mov	rdi, qword ptr [rsp + 0x28]
	jne	.label_1849
.label_1866:
	add	rdi, r14
	mov	rax, qword ptr [rbx + 0x10]
	mov	ecx, dword ptr [rsp + 0x24]
	mov	dword ptr [rax + r15*4], ecx
	lea	r12, [r14 + r15]
	inc	r15
	cmp	r15, r12
	jge	.label_1877
	mov	rax, qword ptr [rbx + 0x10]
	mov	rbp, rdi
	lea	rdi, [rax + r15*4]
	lea	rdx, [r14*4 - 4]
	mov	esi, 0xff
	call	memset
	mov	rdi, rbp
	mov	r15, r12
	jmp	.label_1843
.label_1877:
	mov	r12, r15
	jmp	.label_1843
.label_1849:
	lea	rax, [r15*8]
	add	rax, qword ptr [rbx + 0x18]
	mov	rcx, rdi
	mov	rdx, r14
.label_1846:
	mov	qword ptr [rax], rcx
	inc	rcx
	add	rax, 8
	dec	rdx
	jne	.label_1846
	jmp	.label_1866
.label_1865:
	mov	qword ptr [rsp + 0x10], rax
	cmp	qword ptr [rbx + 0x18], 0
	jne	.label_1851
	shl	rdi, 3
	mov	rbp, rcx
	call	malloc
	mov	rcx, rbp
	mov	qword ptr [rbx + 0x18], rax
	test	rax, rax
	je	.label_1857
.label_1851:
	cmp	byte ptr [rbx + 0x8c], 0
	jne	.label_1862
	mov	rdx, rcx
	test	r15, r15
	je	.label_1864
	mov	rax, qword ptr [rbx + 0x18]
	xor	ecx, ecx
.label_1868:
	mov	qword ptr [rax + rcx*8], rcx
	inc	rcx
	cmp	r15, rcx
	jne	.label_1868
.label_1864:
	mov	byte ptr [rbx + 0x8c], 1
	mov	rcx, rdx
.label_1862:
	mov	rdi, qword ptr [rbx + 8]
	add	rdi, r15
	lea	rsi, [rsp + 0x30]
	mov	rdx, rcx
	mov	rbp, rcx
	call	memcpy
	mov	rsi, rbp
	mov	rax, qword ptr [rbx + 0x10]
	mov	ecx, dword ptr [rsp + 0x24]
	mov	dword ptr [rax + r15*4], ecx
	mov	rax, qword ptr [rbx + 0x18]
	mov	rdi, qword ptr [rsp + 0x28]
	mov	qword ptr [rax + r15*8], rdi
	cmp	rsi, 2
	jb	.label_1874
	lea	rax, [r15*4]
	add	rax, qword ptr [rbx + 0x10]
	shl	r15, 3
	add	r15, qword ptr [rbx + 0x18]
	mov	ecx, 1
.label_1880:
	cmp	rcx, r14
	mov	rdx, r13
	cmovb	rdx, rcx
	add	rdx, rdi
	mov	qword ptr [r15 + rcx*8], rdx
	mov	dword ptr [rax + rcx*4], 0xffffffff
	inc	rcx
	cmp	rsi, rcx
	jne	.label_1880
.label_1874:
	mov	rbp, qword ptr [rsp + 0x10]
	add	qword ptr [rbx + 0x58], rbp
	cmp	qword ptr [rbx + 0x60], rdi
	jle	.label_1886
	add	qword ptr [rbx + 0x68], rbp
.label_1886:
	mov	r13, qword ptr [rbx + 0x40]
	mov	rax, qword ptr [rbx + 0x58]
	cmp	r13, rax
	cmovg	r13, rax
	add	rdi, r14
	mov	r15, r12
	jmp	.label_1843
.label_1857:
	mov	eax, 0xc
	jmp	.label_1883
.label_1885:
	mov	al, byte ptr [rcx + rdx]
	jmp	.label_1850
.label_1847:
	mov	rcx, qword ptr [rbx + 0x18]
	mov	qword ptr [rcx + r15*8], rdi
	jmp	.label_1861
.label_1854:
	mov	rax, qword ptr [rsp + 0x18]
	mov	qword ptr [rsi], rax
	mov	r12, r15
	jmp	.label_1843
	.section	.text
	.align	32
	#Procedure 0x414055
	.globl sub_414055
	.type sub_414055, @function
sub_414055:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x414060

	.globl add_exclude_file
	.type add_exclude_file, @function
add_exclude_file:
	push	rbp
	push	r15
	push	r14
	push	rbx
	push	rax
	mov	ebp, r8d
	mov	r14d, ecx
	mov	r15, rsi
	mov	qword ptr [rsp], rdi
	cmp	byte ptr [rdx], 0x2d
	jne	.label_1888
	cmp	byte ptr [rdx + 1], 0
	je	.label_1889
.label_1888:
	mov	esi, OFFSET FLAT:label_584
	mov	rdi, rdx
	call	fopen
	mov	rbx, rax
	mov	eax, 0xffffffff
	test	rbx, rbx
	je	.label_1890
	movsx	r8d, bpl
	lea	r9, [rsp]
	mov	edi, OFFSET FLAT:call_addfn
	mov	rsi, r15
	mov	rdx, rbx
	mov	ecx, r14d
	call	add_exclude_fp
	mov	ebp, eax
	mov	rdi, rbx
	call	rpl_fclose
	cmp	eax, 1
	sbb	eax, eax
	not	eax
	or	ebp, eax
	mov	eax, ebp
	jmp	.label_1890
.label_1889:
	mov	rdx,  qword ptr [word ptr [rip + stdin]]
	movsx	r8d, bpl
	lea	r9, [rsp]
	mov	edi, OFFSET FLAT:call_addfn
	mov	rsi, r15
	mov	ecx, r14d
	call	add_exclude_fp
.label_1890:
	add	rsp, 8
	pop	rbx
	pop	r14
	pop	r15
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x4140f5
	.globl sub_4140f5
	.type sub_4140f5, @function
sub_4140f5:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x414100
	.globl hash_get_next
	.type hash_get_next, @function
hash_get_next:

	push	r14
	push	rbx
	push	rax
	mov	rbx, rsi
	mov	r14, rdi
	call	safe_hasher
	mov	rcx, rax
	nop	word ptr cs:[rax + rax]
.label_1895:
	cmp	qword ptr [rcx], rbx
	jne	.label_1891
	mov	rdx, qword ptr [rcx + 8]
	test	rdx, rdx
	jne	.label_1892
.label_1891:
	mov	rcx, qword ptr [rcx + 8]
	test	rcx, rcx
	jne	.label_1895
	mov	rdx, qword ptr [r14 + 8]
	add	rax, 0x10
	nop	
.label_1894:
	cmp	rax, rdx
	mov	ecx, 0
	jae	.label_1893
	mov	rcx, qword ptr [rax]
	add	rax, 0x10
	test	rcx, rcx
	je	.label_1894
	jmp	.label_1893
.label_1892:
	mov	rcx, qword ptr [rdx]
.label_1893:
	mov	rax, rcx
	add	rsp, 8
	pop	rbx
	pop	r14
	ret	
	.section	.text
	.align	32
	#Procedure 0x414166
	.globl sub_414166
	.type sub_414166, @function
sub_414166:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x414170

	.globl calc_state_hash
	.type calc_state_hash, @function
calc_state_hash:
	mov	rcx, qword ptr [rdi + 8]
	mov	eax, esi
	add	rax, rcx
	test	rcx, rcx
	jle	.label_1896
	mov	rcx, qword ptr [rdi + 8]
	mov	rdx, qword ptr [rdi + 0x10]
	xor	esi, esi
	nop	dword ptr [rax + rax]
.label_1897:
	add	rax, qword ptr [rdx + rsi*8]
	inc	rsi
	cmp	rsi, rcx
	jl	.label_1897
.label_1896:
	ret	
	.section	.text
	.align	32
	#Procedure 0x41419d
	.globl sub_41419d
	.type sub_41419d, @function
sub_41419d:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x4141a0

	.globl peek_token_bracket
	.type peek_token_bracket, @function
peek_token_bracket:
	mov	rax, qword ptr [rsi + 0x48]
	cmp	qword ptr [rsi + 0x68], rax
	jle	.label_1904
	mov	rcx, qword ptr [rsi + 8]
	mov	al, byte ptr [rcx + rax]
	mov	byte ptr [rdi], al
	cmp	dword ptr [rsi + 0x90], 2
	jl	.label_1906
	mov	r8, qword ptr [rsi + 0x48]
	cmp	r8, qword ptr [rsi + 0x30]
	je	.label_1906
	mov	rcx, qword ptr [rsi + 0x10]
	cmp	dword ptr [rcx + r8*4], -1
	je	.label_1900
.label_1906:
	test	dl, 1
	je	.label_1899
	cmp	al, 0x5c
	jne	.label_1899
	mov	rcx, qword ptr [rsi + 0x48]
	inc	rcx
	cmp	rcx, qword ptr [rsi + 0x58]
	jge	.label_1899
	mov	qword ptr [rsi + 0x48], rcx
	mov	rax, qword ptr [rsi + 8]
	mov	al, byte ptr [rax + rcx]
	mov	byte ptr [rdi], al
	jmp	.label_1900
.label_1904:
	mov	byte ptr [rdi + 8], 2
	xor	eax, eax
	ret	
.label_1899:
	cmp	al, 0x5c
	jg	.label_1908
	cmp	al, 0x2d
	je	.label_1898
	cmp	al, 0x5b
	jne	.label_1900
	mov	rcx, qword ptr [rsi + 0x48]
	inc	rcx
	cmp	rcx, qword ptr [rsi + 0x58]
	jge	.label_1902
	mov	rsi, qword ptr [rsi + 8]
	mov	cl, byte ptr [rsi + rcx]
	mov	byte ptr [rdi], cl
	cmp	cl, 0x3d
	je	.label_1903
	cmp	cl, 0x3a
	je	.label_1905
	cmp	cl, 0x2e
	jne	.label_1901
	mov	byte ptr [rdi + 8], 0x1a
	mov	eax, 2
	ret	
.label_1908:
	cmp	al, 0x5d
	je	.label_1907
	cmp	al, 0x5e
	jne	.label_1900
	mov	byte ptr [rdi + 8], 0x19
	mov	eax, 1
	ret	
.label_1900:
	mov	byte ptr [rdi + 8], 1
	mov	eax, 1
	ret	
.label_1898:
	mov	byte ptr [rdi + 8], 0x16
	mov	eax, 1
	ret	
.label_1907:
	mov	byte ptr [rdi + 8], 0x15
	mov	eax, 1
	ret	
.label_1902:
	mov	byte ptr [rdi], 0
.label_1901:
	mov	byte ptr [rdi + 8], 1
	mov	byte ptr [rdi], al
	mov	eax, 1
	ret	
.label_1903:
	mov	byte ptr [rdi + 8], 0x1c
	mov	eax, 2
	ret	
.label_1905:
	test	dl, 4
	je	.label_1901
	mov	byte ptr [rdi + 8], 0x1e
	mov	eax, 2
	ret	
	.section	.text
	.align	32
	#Procedure 0x414290

	.globl bitset_empty
	.type bitset_empty, @function
bitset_empty:
	xorps	xmm0, xmm0
	movups	xmmword ptr [rdi + 0x10], xmm0
	movups	xmmword ptr [rdi], xmm0
	ret	
	.section	.text
	.align	32
	#Procedure 0x41429b
	.globl sub_41429b
	.type sub_41429b, @function
sub_41429b:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4142a0

	.globl emit_size_note
	.type emit_size_note, @function
emit_size_note:
	push	rax
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_1909
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	pop	rax
	jmp	fputs_unlocked
	.section	.text
	.align	32
	#Procedure 0x4142c2
	.globl sub_4142c2
	.type sub_4142c2, @function
sub_4142c2:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4142d0

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
	mov	esi, OFFSET FLAT:label_1914
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stderr]]
	mov	rdi, rax
	call	fputs_unlocked
	mov	rbx, qword ptr [r15]
	test	rbx, rbx
	je	.label_1912
	xor	r12d, r12d
	xor	ebp, ebp
	nop	word ptr cs:[rax + rax]
.label_1916:
	test	rbp, rbp
	je	.label_1910
	mov	rdi, r12
	mov	rsi, r13
	mov	rdx, r14
	call	memcmp
	test	eax, eax
	je	.label_1915
.label_1910:
	mov	rbx,  qword ptr [word ptr [rip + stderr]]
	mov	rdi, qword ptr [r15 + rbp*8]
	call	quote
	mov	rcx, rax
	mov	esi, 1
	mov	edx, OFFSET FLAT:label_1913
	xor	eax, eax
	mov	rdi, rbx
	call	__fprintf_chk
	mov	r12, r13
	jmp	.label_1917
	.section	.text
	.align	32
	#Procedure 0x414363
	.globl sub_414363
	.type sub_414363, @function
sub_414363:

	nop	word ptr cs:[rax + rax]
.label_1915:
	mov	rax,  qword ptr [word ptr [rip + stderr]]
	mov	qword ptr [rsp], rax
	mov	rdi, rbx
	call	quote
	mov	rcx, rax
	mov	esi, 1
	mov	edx, OFFSET FLAT:label_1911
	xor	eax, eax
	mov	rdi, qword ptr [rsp]
	call	__fprintf_chk
.label_1917:
	mov	rbx, qword ptr [r15 + rbp*8 + 8]
	inc	rbp
	add	r13, r14
	test	rbx, rbx
	jne	.label_1916
.label_1912:
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
	#Procedure 0x4143ce
	.globl sub_4143ce
	.type sub_4143ce, @function
sub_4143ce:

	nop	
	.section	.text
	.align	32
	#Procedure 0x4143d0

	.globl x2nrealloc
	.type x2nrealloc, @function
x2nrealloc:
	push	rax
	mov	r8, rdx
	mov	rcx, qword ptr [rsi]
	test	rdi, rdi
	je	.label_1918
	movabs	rax, 0x5555555555555554
	xor	edx, edx
	div	r8
	cmp	rax, rcx
	jbe	.label_1920
	mov	rax, rcx
	shr	rax, 1
	lea	rcx, [rcx + rax + 1]
	jmp	.label_1919
.label_1921:
	call	xalloc_die
	.section	.text
	.align	32
	#Procedure 0x414402
	.globl sub_414402
	.type sub_414402, @function
sub_414402:

	nop	dword ptr [rax]
.label_1920:
	call	xalloc_die
.label_1918:
	test	rcx, rcx
	jne	.label_1922
	mov	eax, 0x80
	xor	edx, edx
	div	r8
	xor	ecx, ecx
	cmp	r8, 0x80
	seta	cl
	add	rcx, rax
.label_1922:
	movabs	rax, 0x7fffffffffffffff
	xor	edx, edx
	div	r8
	cmp	rax, rcx
	jb	.label_1921
.label_1919:
	mov	qword ptr [rsi], rcx
	imul	r8, rcx
	mov	rsi, r8
	pop	rax
	jmp	xrealloc
	.section	.text
	.align	32
	#Procedure 0x414450

	.globl check_arrival_add_next_nodes
	.type check_arrival_add_next_nodes, @function
check_arrival_add_next_nodes:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x48
	mov	qword ptr [rsp + 0x40], rcx
	mov	rbp, rdx
	mov	rcx, rsi
	mov	r12, rdi
	mov	r13, qword ptr [r12 + 0x98]
	mov	dword ptr [rsp + 0xc], 0
	xorps	xmm0, xmm0
	movaps	xmmword ptr [rsp + 0x10], xmm0
	mov	qword ptr [rsp + 0x20], 0
	cmp	qword ptr [rbp + 8], 0
	jle	.label_1925
	xor	r14d, r14d
	mov	qword ptr [rsp + 0x30], rcx
	mov	qword ptr [rsp + 0x38], r13
	mov	qword ptr [rsp + 0x28], rbp
	nop	word ptr [rax + rax]
.label_1932:
	mov	rax, qword ptr [rbp + 0x10]
	mov	r15, qword ptr [rax + r14*8]
	mov	rax, qword ptr [r13]
	mov	rbx, r15
	shl	rbx, 4
	test	byte ptr [rax + rbx + 0xa], 0x10
	je	.label_1931
	mov	rdi, r13
	mov	rsi, r15
	mov	rdx, r12
	mov	rbp, r12
	mov	r12, rcx
	call	check_node_accept_bytes
	cmp	eax, 2
	jl	.label_1927
	mov	rcx, qword ptr [r13 + 0x18]
	mov	r13, qword ptr [rcx + r15*8]
	movsxd	rbx, eax
	add	rbx, r12
	mov	rax, qword ptr [rbp + 0xb8]
	mov	rsi, qword ptr [rax + rbx*8]
	mov	qword ptr [rsp + 0x18], 0
	test	rsi, rsi
	mov	r12, rbp
	lea	rbp, [rsp + 0x10]
	je	.label_1928
	add	rsi, 8
	mov	rdi, rbp
	call	re_node_set_merge
	mov	dword ptr [rsp + 0xc], eax
	test	eax, eax
	jne	.label_1924
.label_1928:
	mov	rdi, rbp
	mov	rsi, r13
	call	re_node_set_insert
	test	al, al
	je	.label_1930
	lea	rdi, [rsp + 0xc]
	mov	r13, qword ptr [rsp + 0x38]
	mov	rsi, r13
	mov	rdx, rbp
	call	re_acquire_state
	mov	rcx, qword ptr [r12 + 0xb8]
	mov	qword ptr [rcx + rbx*8], rax
	mov	rax, qword ptr [r12 + 0xb8]
	cmp	qword ptr [rax + rbx*8], 0
	mov	rbp, qword ptr [rsp + 0x28]
	jne	.label_1929
	mov	eax, dword ptr [rsp + 0xc]
	test	eax, eax
	je	.label_1929
	jmp	.label_1924
	.section	.text
	.align	32
	#Procedure 0x414587
	.globl sub_414587
	.type sub_414587, @function
sub_414587:

	nop	word ptr [rax + rax]
.label_1924:
	mov	rdi, qword ptr [rsp + 0x20]
	call	free
	mov	eax, dword ptr [rsp + 0xc]
	jmp	.label_1923
	.section	.text
	.align	32
	#Procedure 0x4145a0
	.globl sub_4145a0
	.type sub_4145a0, @function
sub_4145a0:

	nop	
.label_1930:
	mov	rdi, qword ptr [rsp + 0x20]
	call	free
	mov	eax, 0xc
	jmp	.label_1923
.label_1927:
	test	eax, eax
	mov	rcx, r12
	mov	r12, rbp
	mov	rbp, qword ptr [rsp + 0x28]
	jne	.label_1929
	nop	
.label_1931:
	add	rbx, qword ptr [r13]
	mov	rdi, r12
	mov	rsi, rbx
	mov	rdx, rcx
	call	check_node_accept
	mov	rcx, qword ptr [rsp + 0x30]
	test	al, al
	je	.label_1926
.label_1929:
	mov	rax, qword ptr [r13 + 0x18]
	mov	rsi, qword ptr [rax + r15*8]
	mov	rdi, qword ptr [rsp + 0x40]
	call	re_node_set_insert
	mov	rcx, qword ptr [rsp + 0x30]
	test	al, al
	je	.label_1930
.label_1926:
	inc	r14
	cmp	r14, qword ptr [rbp + 8]
	jl	.label_1932
.label_1925:
	mov	rdi, qword ptr [rsp + 0x20]
	call	free
	xor	eax, eax
.label_1923:
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
	#Procedure 0x414620

	.globl xnrealloc
	.type xnrealloc, @function
xnrealloc:
	mov	rcx, rdx
	movabs	rax, 0x7fffffffffffffff
	xor	edx, edx
	div	rcx
	cmp	rax, rsi
	jb	.label_1933
	imul	rcx, rsi
	mov	rsi, rcx
	jmp	xrealloc
.label_1933:
	push	rax
	call	xalloc_die
	.section	.text
	.align	32
	#Procedure 0x414646
	.globl sub_414646
	.type sub_414646, @function
sub_414646:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x414650

	.globl xrealloc
	.type xrealloc, @function
xrealloc:
	push	rbx
	mov	rbx, rsi
	test	rdi, rdi
	je	.label_1934
	test	rbx, rbx
	jne	.label_1934
	call	free
	xor	eax, eax
	pop	rbx
	ret	
.label_1934:
	mov	rsi, rbx
	call	realloc
	test	rbx, rbx
	je	.label_1936
	test	rax, rax
	je	.label_1935
.label_1936:
	pop	rbx
	ret	
.label_1935:
	call	xalloc_die
.label_1938:
	mov	edi, eax
	call	close
.label_1937:
	mov	rdi, rbx
	call	i_ring_empty
	test	al, al
	jne	.label_1939
	mov	rdi, rbx
	call	i_ring_pop
	test	eax, eax
	jns	.label_1938
	jmp	.label_1937
.label_1939:
	pop	rbx
	ret	
	.section	.text
	.align	32
	#Procedure 0x4146a3
	.globl sub_4146a3
	.type sub_4146a3, @function
sub_4146a3:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4146b0

	.globl fd_ring_clear
	.type fd_ring_clear, @function
fd_ring_clear:
	push	rbx
	mov	rbx, rdi
	jmp	.label_1937
	.section	.text
	.align	32
	#Procedure 0x4146b6
	.globl sub_4146b6
	.type sub_4146b6, @function
sub_4146b6:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4146c0
	.globl rpl_re_search_2
	.type rpl_re_search_2, @function
rpl_re_search_2:

	push	rax
	push	0
	push	qword ptr [rsp + 0x28]
	push	qword ptr [rsp + 0x28]
	push	qword ptr [rsp + 0x28]
	call	re_search_2_stub
	add	rsp, 0x20
	pop	rcx
	ret	
	.section	.text
	.align	32
	#Procedure 0x4146da
	.globl sub_4146da
	.type sub_4146da, @function
sub_4146da:

	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4146e0

	.globl hash_get_n_buckets_used
	.type hash_get_n_buckets_used, @function
hash_get_n_buckets_used:
	mov	rax, qword ptr [rdi + 0x18]
	ret	
	.section	.text
	.align	32
	#Procedure 0x4146e5
	.globl sub_4146e5
	.type sub_4146e5, @function
sub_4146e5:

	nop	word ptr cs:[rax + rax]
.label_1942:
	lea	rax, [r12 + r12]
	mov	rdi, qword ptr [rbx + 0x28]
	lea	rsi, [rax*8 + 8]
	call	realloc
	mov	rcx, rax
	xor	eax, eax
	test	rcx, rcx
	je	.label_1940
	lea	rax, [r12 + r12 + 1]
	mov	qword ptr [rbx + 0x28], rcx
	mov	qword ptr [rbx + 0x18], rax
	jmp	.label_1941
	.section	.text
	.align	32
	#Procedure 0x41471e

	.globl match_ctx_add_sublast
	.type match_ctx_add_sublast, @function
match_ctx_add_sublast:
	push	r15
	push	r14
	push	r12
	push	rbx
	push	rax
	mov	r14, rdx
	mov	r15, rsi
	mov	rbx, rdi
	mov	r12, qword ptr [rbx + 0x18]
	cmp	qword ptr [rbx + 0x20], r12
	je	.label_1942
.label_1941:
	mov	edi, 1
	mov	esi, 0x28
	call	rpl_calloc
	test	rax, rax
	je	.label_1940
	mov	rcx, qword ptr [rbx + 0x20]
	mov	rdx, qword ptr [rbx + 0x28]
	mov	qword ptr [rdx + rcx*8], rax
	mov	qword ptr [rax], r15
	mov	qword ptr [rax + 8], r14
	inc	qword ptr [rbx + 0x20]
.label_1940:
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	ret	
	.section	.text
	.align	32
	#Procedure 0x414770

	.globl show_date
	.type show_date, @function
show_date:
	push	r14
	push	rbx
	sub	rsp, 0x68
	mov	rbx, rcx
	mov	r14, rdi
	mov	qword ptr [rsp], rsi
	mov	qword ptr [rsp + 8], rdx
	lea	rsi, [rsp]
	lea	rdx, [rsp + 0x30]
	mov	rdi, rbx
	call	localtime_rz
	test	rax, rax
	je	.label_1944
	mov	rdi,  qword ptr [word ptr [rip + stdout]]
	mov	r8d, dword ptr [rsp + 8]
	lea	rdx, [rsp + 0x30]
	mov	rsi, r14
	mov	rcx, rbx
	call	fprintftime
	jmp	.label_1945
.label_1944:
	mov	rdi, qword ptr [rsp]
	lea	rsi, [rsp + 0x10]
	call	timetostr
	mov	rbx, rax
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_1943
	mov	edx, 5
	call	dcgettext
	mov	r14, rax
	mov	rdi, rbx
	call	quote
	mov	rcx, rax
	xor	edi, edi
	xor	esi, esi
	xor	eax, eax
	mov	rdx, r14
	call	error
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rbx
	call	fputs_unlocked
.label_1945:
	add	rsp, 0x68
	pop	rbx
	pop	r14
	ret	
	.section	.text
	.align	32
	#Procedure 0x41480f
	.globl sub_41480f
	.type sub_41480f, @function
sub_41480f:

	nop	
.label_1951:
	mov	rdi, rbx
	mov	rsi, r14
	call	transit_state_mb
	mov	ecx, eax
	mov	dword ptr [r15], ecx
	xor	eax, eax
	test	ecx, ecx
	je	.label_1950
	jmp	.label_1947
.label_1949:
	mov	rsi, qword ptr [rbx + 0x48]
	dec	rsi
	mov	edx, dword ptr [rbx + 0xa0]
	mov	rdi, rbx
	call	re_string_context_at
	and	eax, 1
	shl	rax, 8
	or	rax, r12
	mov	rax, qword ptr [r13 + rax*8]
	jmp	.label_1947
	.section	.text
	.align	32
	#Procedure 0x41484e
	.globl sub_41484e
	.type sub_41484e, @function
sub_41484e:

	nop	word ptr [rax + rax]
.label_1946:
	mov	rax, qword ptr [rax + r12*8]
.label_1947:
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	ret	
	.section	.text
	.align	32
	#Procedure 0x414862

	.globl transit_state
	.type transit_state, @function
transit_state:
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	mov	r14, rdx
	mov	rbx, rsi
	mov	r15, rdi
	test	byte ptr [r14 + 0x68], 0x20
	jne	.label_1951
.label_1950:
	mov	rax, qword ptr [rbx + 0x48]
	lea	rcx, [rax + 1]
	mov	qword ptr [rbx + 0x48], rcx
	mov	rcx, qword ptr [rbx + 8]
	movzx	r12d, byte ptr [rcx + rax]
.label_1948:
	mov	rax, qword ptr [r14 + 0x58]
	test	rax, rax
	jne	.label_1946
	mov	r13, qword ptr [r14 + 0x60]
	test	r13, r13
	jne	.label_1949
	mov	rdi, qword ptr [rbx + 0x98]
	mov	rsi, r14
	call	build_trtable
	test	al, al
	jne	.label_1948
	mov	dword ptr [r15], 0xc
	xor	eax, eax
	jmp	.label_1947
	.section	.text
	.align	32
	#Procedure 0x4148c0

	.globl re_node_set_insert
	.type re_node_set_insert, @function
re_node_set_insert:
	push	r14
	push	rbx
	push	rax
	mov	r14, rsi
	mov	rbx, rdi
	mov	rsi, qword ptr [rbx]
	test	rsi, rsi
	je	.label_1952
	mov	rax, qword ptr [rbx + 8]
	test	rax, rax
	je	.label_1959
	cmp	rsi, rax
	jne	.label_1961
	lea	rax, [rsi + rsi]
	mov	qword ptr [rbx], rax
	mov	rdi, qword ptr [rbx + 0x10]
	shl	rsi, 4
	call	realloc
	test	rax, rax
	je	.label_1960
	mov	qword ptr [rbx + 0x10], rax
.label_1961:
	mov	rax, qword ptr [rbx + 8]
	mov	rcx, qword ptr [rbx + 0x10]
	cmp	qword ptr [rcx], r14
	jle	.label_1957
	test	rax, rax
	jle	.label_1954
	mov	rcx, qword ptr [rbx + 0x10]
	nop	word ptr [rax + rax]
.label_1958:
	mov	rdx, qword ptr [rcx + rax*8 - 8]
	mov	qword ptr [rcx + rax*8], rdx
	cmp	rax, 1
	lea	rax, [rax - 1]
	jg	.label_1958
	jmp	.label_1954
.label_1952:
	mov	rdi, rbx
	mov	rsi, r14
	call	re_node_set_init_1
	test	eax, eax
	sete	al
	jmp	.label_1953
.label_1959:
	mov	rax, qword ptr [rbx + 0x10]
	mov	qword ptr [rax], r14
	jmp	.label_1956
.label_1960:
	xor	eax, eax
	jmp	.label_1953
	.section	.text
	.align	32
	#Procedure 0x414954
	.globl sub_414954
	.type sub_414954, @function
sub_414954:

	nop	
.label_1957:
	mov	rsi, qword ptr [rbx + 0x10]
	mov	rcx, qword ptr [rsi + rax*8 - 8]
	cmp	rcx, r14
	jle	.label_1954
	mov	rdx, qword ptr [rbx + 0x10]
	nop	word ptr cs:[rax + rax]
.label_1955:
	mov	qword ptr [rsi + rax*8], rcx
	mov	rcx, qword ptr [rdx + rax*8 - 0x10]
	dec	rax
	cmp	rcx, r14
	mov	rsi, rdx
	jg	.label_1955
.label_1954:
	mov	rcx, qword ptr [rbx + 0x10]
	mov	qword ptr [rcx + rax*8], r14
.label_1956:
	inc	qword ptr [rbx + 8]
	mov	al, 1
.label_1953:
	add	rsp, 8
	pop	rbx
	pop	r14
	ret	
	.section	.text
	.align	32
	#Procedure 0x4149a0
	.globl rotr32
	.type rotr32, @function
rotr32:

	mov	ecx, esi
	ror	edi, cl
	mov	eax, edi
	ret	
	.section	.text
	.align	32
	#Procedure 0x4149a7
	.globl sub_4149a7
	.type sub_4149a7, @function
sub_4149a7:

	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4149b0

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
	#Procedure 0x4149dd
	.globl sub_4149dd
	.type sub_4149dd, @function
sub_4149dd:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x4149e0

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
	#Procedure 0x4149f3
	.globl sub_4149f3
	.type sub_4149f3, @function
sub_4149f3:

	nop	word ptr cs:[rax + rax]
.label_1965:
	mov	edi, 0x10
	call	malloc
	mov	rbx, rax
	mov	qword ptr [r14 + 0x10], rbx
	xor	eax, eax
	test	rbx, rbx
	je	.label_1963
.label_1967:
	mov	qword ptr [rbx], r15
	mov	rdi, qword ptr [r14]
	mov	rsi, rbx
	call	hash_insert
	mov	rcx, rax
	xor	eax, eax
	test	rcx, rcx
	je	.label_1963
	cmp	rcx, rbx
	je	.label_1962
	mov	rax, qword ptr [rcx + 8]
	jmp	.label_1964
	.section	.text
	.align	32
	#Procedure 0x414a3b

	.globl map_device
	.type map_device, @function
map_device:
	push	r15
	push	r14
	push	rbx
	mov	r15, rsi
	mov	r14, rdi
	mov	rbx, qword ptr [r14 + 0x10]
	test	rbx, rbx
	je	.label_1965
	cmp	qword ptr [rbx], r15
	jne	.label_1967
	jmp	.label_1966
.label_1962:
	mov	qword ptr [r14 + 0x10], 0
	mov	edi, 0x3fd
	xor	esi, esi
	mov	edx, OFFSET FLAT:di_ino_hash
	xor	ecx, ecx
	xor	r8d, r8d
	call	hash_initialize
.label_1964:
	mov	qword ptr [rbx + 8], rax
.label_1966:
	mov	rax, qword ptr [rbx + 8]
.label_1963:
	pop	rbx
	pop	r14
	pop	r15
	ret	
	.section	.text
	.align	32
	#Procedure 0x414a82
	.globl sub_414a82
	.type sub_414a82, @function
sub_414a82:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x414a90
	.globl mb_width_aux
	.type mb_width_aux, @function
mb_width_aux:

	push	rbx
	mov	ebx, edi
	call	wcwidth
	test	eax, eax
	jns	.label_1968
	mov	edi, ebx
	call	iswcntrl
	mov	ecx, eax
	xor	eax, eax
	test	ecx, ecx
	sete	al
.label_1968:
	pop	rbx
	ret	
	.section	.text
	.align	32
	#Procedure 0x414aae
	.globl sub_414aae
	.type sub_414aae, @function
sub_414aae:

	nop	
.label_1970:
	cmp	edi, 0x7f
	je	.label_1969
	xor	eax, eax
	jmp	.label_1969
	.section	.text
	.align	32
	#Procedure 0x414ab9
	.globl sub_414ab9
	.type sub_414ab9, @function
sub_414ab9:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x414ac8
	.globl c_iscntrl
	.type c_iscntrl, @function
c_iscntrl:

	mov	al, 1
	cmp	edi, 0x20
	jae	.label_1970
.label_1969:
	ret	
	.section	.text
	.align	32
	#Procedure 0x414ad0

	.globl check_arrival_expand_ecl
	.type check_arrival_expand_ecl, @function
check_arrival_expand_ecl:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x38
	mov	r14d, ecx
	mov	rbp, rdx
	mov	rbx, rsi
	mov	r13, rdi
	mov	rsi, qword ptr [rbx + 8]
	lea	rdi, [rsp + 0x10]
	call	re_node_set_alloc
	mov	r15d, eax
	test	r15d, r15d
	jne	.label_1972
	mov	dword ptr [rsp + 0xc], r14d
	cmp	qword ptr [rbx + 8], 0
	jle	.label_1971
	xor	r14d, r14d
	mov	qword ptr [rsp + 0x30], rbp
	mov	qword ptr [rsp + 0x28], rbx
	nop	word ptr cs:[rax + rax]
.label_1974:
	mov	rax, qword ptr [rbx + 0x10]
	mov	rbx, qword ptr [rax + r14*8]
	mov	rax, qword ptr [r13 + 0x30]
	lea	rcx, [rbx + rbx*2]
	lea	r12, [rax + rcx*8]
	mov	rdi, r13
	mov	rsi, r12
	mov	rdx, rbp
	mov	r15d, dword ptr [rsp + 0xc]
	mov	ecx, r15d
	call	find_subexp_node
	cmp	rax, -1
	je	.label_1976
	mov	rdi, r13
	lea	rsi, [rsp + 0x10]
	mov	rdx, rbx
	mov	rcx, rbp
	mov	r8d, r15d
	call	check_arrival_expand_ecl_sub
	jmp	.label_1975
	.section	.text
	.align	32
	#Procedure 0x414b78
	.globl sub_414b78
	.type sub_414b78, @function
sub_414b78:

	nop	dword ptr [rax + rax]
.label_1976:
	lea	rdi, [rsp + 0x10]
	mov	rsi, r12
	call	re_node_set_merge
.label_1975:
	mov	r15d, eax
	test	r15d, r15d
	jne	.label_1973
	inc	r14
	mov	rbx, qword ptr [rsp + 0x28]
	cmp	r14, qword ptr [rbx + 8]
	mov	rbp, qword ptr [rsp + 0x30]
	jl	.label_1974
.label_1971:
	mov	rdi, qword ptr [rbx + 0x10]
	call	free
	mov	rax, qword ptr [rsp + 0x20]
	mov	qword ptr [rbx + 0x10], rax
	movups	xmm0, xmmword ptr [rsp + 0x10]
	movups	xmmword ptr [rbx], xmm0
	xor	r15d, r15d
.label_1972:
	mov	eax, r15d
	add	rsp, 0x38
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_1973:
	mov	rdi, qword ptr [rsp + 0x20]
	call	free
	jmp	.label_1972
	.section	.text
	.align	32
	#Procedure 0x414be3
	.globl sub_414be3
	.type sub_414be3, @function
sub_414be3:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x414bf0

	.globl mbuiter_multi_next
	.type mbuiter_multi_next, @function
mbuiter_multi_next:
	push	r15
	push	r14
	push	r12
	push	rbx
	push	rax
	mov	rbx, rdi
	cmp	byte ptr [rbx + 0xc], 0
	jne	.label_1986
	cmp	byte ptr [rbx], 0
	jne	.label_1978
	mov	rax, qword ptr [rbx + 0x10]
	movsx	edi, byte ptr [rax]
	call	is_basic
	test	al, al
	je	.label_1988
	mov	qword ptr [rbx + 0x18], 1
	mov	rax, qword ptr [rbx + 0x10]
	movsx	eax, byte ptr [rax]
	mov	dword ptr [rbx + 0x24], eax
	mov	byte ptr [rbx + 0x20], 1
	jmp	.label_1979
.label_1988:
	lea	rdi, [rbx + 4]
	call	mbsinit
	test	eax, eax
	je	.label_1990
	mov	byte ptr [rbx], 1
.label_1978:
	lea	r14, [rbx + 0x24]
	mov	r12, qword ptr [rbx + 0x10]
	call	__ctype_get_mb_cur_max
	mov	rdi, r12
	mov	rsi, rax
	call	strnlen1
	lea	r15, [rbx + 4]
	mov	rdi, r14
	mov	rsi, r12
	mov	rdx, rax
	mov	rcx, r15
	call	rpl_mbrtowc
	mov	qword ptr [rbx + 0x18], rax
	cmp	rax, -2
	je	.label_1987
	test	rax, rax
	je	.label_1977
	cmp	rax, -1
	jne	.label_1983
	mov	qword ptr [rbx + 0x18], 1
	mov	byte ptr [rbx + 0x20], 0
	jmp	.label_1979
.label_1987:
	mov	rdi, qword ptr [rbx + 0x10]
	call	strlen
	mov	qword ptr [rbx + 0x18], rax
	mov	byte ptr [rbx + 0x20], 0
	jmp	.label_1979
.label_1977:
	mov	qword ptr [rbx + 0x18], 1
	mov	rax, qword ptr [rbx + 0x10]
	cmp	byte ptr [rax], 0
	jne	.label_1985
	cmp	dword ptr [r14], 0
	jne	.label_1989
.label_1983:
	mov	byte ptr [rbx + 0x20], 1
	mov	rdi, r15
	call	mbsinit
	test	eax, eax
	je	.label_1979
	mov	byte ptr [rbx], 0
.label_1979:
	mov	byte ptr [rbx + 0xc], 1
.label_1986:
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	ret	
.label_1990:
	mov	edi, OFFSET FLAT:label_1984
	mov	esi, OFFSET FLAT:label_1981
	mov	edx, 0x96
	mov	ecx, OFFSET FLAT:label_1982
	call	__assert_fail
.label_1985:
	mov	edi, OFFSET FLAT:label_1991
	mov	esi, OFFSET FLAT:label_1981
	mov	edx, 0xb2
	mov	ecx, OFFSET FLAT:label_1982
	call	__assert_fail
.label_1989:
	mov	edi, OFFSET FLAT:label_1980
	mov	esi, OFFSET FLAT:label_1981
	mov	edx, 0xb3
	mov	ecx, OFFSET FLAT:label_1982
	call	__assert_fail
	.section	.text
	.align	32
	#Procedure 0x414d31
	.globl sub_414d31
	.type sub_414d31, @function
sub_414d31:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x414d40

	.globl fwrite_lowcase
	.type fwrite_lowcase, @function
fwrite_lowcase:
	push	r15
	push	r14
	push	r12
	push	rbx
	push	rax
	mov	r14, rdx
	mov	rbx, rsi
	mov	r15, rdi
	test	r14, r14
	je	.label_1992
	nop	word ptr cs:[rax + rax]
.label_1993:
	movzx	r12d, byte ptr [rbx]
	call	__ctype_tolower_loc
	mov	rax, qword ptr [rax]
	mov	edi, dword ptr [rax + r12*4]
	mov	rsi, r15
	call	fputc
	inc	rbx
	dec	r14
	jne	.label_1993
.label_1992:
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	ret	
	.section	.text
	.align	32
	#Procedure 0x414d8c
	.globl sub_414d8c
	.type sub_414d8c, @function
sub_414d8c:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x414d90

	.globl duplicate_tree
	.type duplicate_tree, @function
duplicate_tree:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	push	rax
	mov	r15, rsi
	mov	rbx, rdi
	mov	r12, qword ptr [rbx]
	lea	rcx, [rbx + 0x28]
	xor	r14d, r14d
	xor	esi, esi
	xor	edx, edx
	mov	rdi, r15
	call	create_token_tree
	mov	qword ptr [rsp], rax
	test	rax, rax
	je	.label_1999
	lea	r13, [rsp]
	xor	r14d, r14d
.label_2001:
	mov	qword ptr [rax], r12
	mov	rax, qword ptr [r13]
	or	dword ptr [rax + 0x30], 0x40000
	mov	r12, qword ptr [r13]
	mov	rbp, qword ptr [rbx + 8]
	test	rbp, rbp
	je	.label_1997
	lea	r13, [r12 + 8]
	jmp	.label_1995
	.section	.text
	.align	32
	#Procedure 0x414ded
	.globl sub_414ded
	.type sub_414ded, @function
sub_414ded:

	nop	dword ptr [rax]
.label_1997:
	xor	eax, eax
	nop	word ptr cs:[rax + rax]
.label_2000:
	mov	rcx, rax
	mov	rax, rbx
	mov	rbp, qword ptr [rax + 0x10]
	cmp	rbp, rcx
	je	.label_1994
	test	rbp, rbp
	jne	.label_1998
.label_1994:
	mov	rbx, qword ptr [rax]
	mov	r12, qword ptr [r12]
	test	rbx, rbx
	jne	.label_2000
	jmp	.label_1996
	.section	.text
	.align	32
	#Procedure 0x414e22
	.globl sub_414e22
	.type sub_414e22, @function
sub_414e22:

	nop	word ptr cs:[rax + rax]
.label_1996:
	mov	r14, qword ptr [rsp]
.label_1999:
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
	#Procedure 0x414e46
	.globl sub_414e46
	.type sub_414e46, @function
sub_414e46:

	nop	dword ptr [rax]
.label_1998:
	lea	r13, [r12 + 0x10]
.label_1995:
	lea	rcx, [rbp + 0x28]
	xor	esi, esi
	xor	edx, edx
	mov	rdi, r15
	call	create_token_tree
	mov	qword ptr [r13], rax
	test	rax, rax
	mov	rbx, rbp
	jne	.label_2001
	jmp	.label_1999
	.section	.text
	.align	32
	#Procedure 0x414e70

	.globl free_workarea_compile
	.type free_workarea_compile, @function
free_workarea_compile:
	push	r14
	push	rbx
	push	rax
	mov	r14, qword ptr [rdi]
	mov	rdi, qword ptr [r14 + 0x70]
	test	rdi, rdi
	je	.label_2002
.label_2003:
	mov	rbx, qword ptr [rdi]
	call	free
	test	rbx, rbx
	mov	rdi, rbx
	jne	.label_2003
.label_2002:
	mov	qword ptr [r14 + 0x70], 0
	mov	dword ptr [r14 + 0x80], 0xf
	mov	qword ptr [r14 + 0x68], 0
	mov	rdi, qword ptr [r14 + 0x20]
	call	free
	mov	qword ptr [r14 + 0x20], 0
	add	rsp, 8
	pop	rbx
	pop	r14
	ret	
	.section	.text
	.align	32
	#Procedure 0x414ec4
	.globl sub_414ec4
	.type sub_414ec4, @function
sub_414ec4:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x414ed0

	.globl leave_dir
	.type leave_dir, @function
leave_dir:
	sub	rsp, 0x18
	movzx	eax, word ptr [rdi + 0x48]
	test	ax, 0x102
	je	.label_2005
	mov	rax, qword ptr [rsi + 0x78]
	mov	qword ptr [rsp], rax
	mov	rax, qword ptr [rsi + 0x80]
	mov	qword ptr [rsp + 8], rax
	mov	rdi, qword ptr [rdi + 0x58]
	lea	rsi, [rsp]
	call	hash_delete
	test	rax, rax
	je	.label_2006
	mov	rdi, rax
	call	free
	add	rsp, 0x18
	ret	
.label_2006:
	call	abort
	.section	.text
	.align	32
	#Procedure 0x414f16
	.globl sub_414f16
	.type sub_414f16, @function
sub_414f16:

	nop	word ptr cs:[rax + rax]
.label_2005:
	mov	rax, qword ptr [rsi + 8]
	test	rax, rax
	je	.label_2004
	cmp	qword ptr [rax + 0x58], 0
	js	.label_2004
	mov	rcx, qword ptr [rdi + 0x58]
	cmp	qword ptr [rcx + 0x10], 0
	je	.label_2006
	mov	rdx, qword ptr [rcx]
	cmp	rdx, qword ptr [rsi + 0x80]
	jne	.label_2004
	mov	rdx, qword ptr [rcx + 8]
	cmp	rdx, qword ptr [rsi + 0x78]
	jne	.label_2004
	mov	rdx, qword ptr [rax + 0x78]
	mov	qword ptr [rcx + 8], rdx
	mov	rax, qword ptr [rax + 0x80]
	mov	rcx, qword ptr [rdi + 0x58]
	mov	qword ptr [rcx], rax
.label_2004:
	add	rsp, 0x18
	ret	
.label_2010:
	mov	rdi, qword ptr [rbx + 0x10]
.label_2007:
	mov	rbx, rdi
	mov	rdi, qword ptr [rbx + 8]
	test	rdi, rdi
	jne	.label_2007
	cmp	qword ptr [rbx + 0x10], 0
	je	.label_2008
	mov	rdi, qword ptr [rbx + 8]
	test	rdi, rdi
	jne	.label_2007
	jmp	.label_2010
	.section	.text
	.align	32
	#Procedure 0x414f92
	.globl sub_414f92
	.type sub_414f92, @function
sub_414f92:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x414fa0

	.globl postorder
	.type postorder, @function
postorder:
	push	r15
	push	r14
	push	rbx
	mov	r14, rdx
	mov	r15, rsi
	jmp	.label_2007
	.section	.text
	.align	32
	#Procedure 0x414fad
	.globl sub_414fad
	.type sub_414fad, @function
sub_414fad:

	nop	dword ptr [rax]
.label_2009:
	pop	rbx
	pop	r14
	pop	r15
	ret	
	.section	.text
	.align	32
	#Procedure 0x414fb6
	.globl sub_414fb6
	.type sub_414fb6, @function
sub_414fb6:

	nop	word ptr cs:[rax + rax]
.label_2008:
	mov	rdi, r14
	mov	rsi, rbx
	call	r15
	test	eax, eax
	jne	.label_2009
	mov	rcx, qword ptr [rbx]
	xor	eax, eax
	test	rcx, rcx
	je	.label_2009
	mov	rdi, qword ptr [rcx + 0x10]
	cmp	rdi, rbx
	mov	rbx, rcx
	je	.label_2008
	test	rdi, rdi
	mov	rbx, rcx
	je	.label_2008
	jmp	.label_2007
	.section	.text
	.align	32
	#Procedure 0x414ff0

	.globl AD_compare
	.type AD_compare, @function
AD_compare:
	mov	rax, qword ptr [rdi + 8]
	cmp	rax, qword ptr [rsi + 8]
	jne	.label_2011
	mov	rax, qword ptr [rdi]
	cmp	rax, qword ptr [rsi]
	sete	al
	ret	
.label_2011:
	xor	eax, eax
	ret	
	.section	.text
	.align	32
	#Procedure 0x415007
	.globl sub_415007
	.type sub_415007, @function
sub_415007:

	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x415010

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
	.align	32
	#Procedure 0x415038
	.globl sub_415038
	.type sub_415038, @function
sub_415038:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x415040

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
	mov	eax, OFFSET FLAT:label_595
	cmovb	rax, rbx
	mov	qword ptr [rsp + 0x40], rax
	mov	rbx, qword ptr [rbp + 8]
	mov	rbp, qword ptr [rbp + 0x10]
	mov	rdi, rbx
	call	strlen
	mov	rsi, r14
	cmp	rax, 0x11
	mov	r14d, OFFSET FLAT:label_97
	cmovb	r14, rbx
	mov	qword ptr [rsp + 0x20], r12
	lea	rax, [r12 + 0x287]
	mov	qword ptr [rsp + 0x28], rax
	cmp	rsi, r15
	mov	qword ptr [rsp + 0x60], rsi
	mov	qword ptr [rsp + 0x70], rbp
	mov	qword ptr [rsp + 0x68], r14
	jbe	.label_2042
	test	r15, r15
	mov	r8d, dword ptr [rsp + 0x34]
	je	.label_2012
	xor	edx, edx
	mov	rax, rsi
	div	r15
	test	rdx, rdx
	jne	.label_2012
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
	jmp	.label_2019
.label_2042:
	xor	edx, edx
	mov	rax, r15
	div	rsi
	test	rdx, rdx
	mov	r8d, dword ptr [rsp + 0x34]
	jne	.label_2012
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
	jne	.label_2012
.label_2019:
	mov	r15d, dword ptr [rsp + 0x1c]
	and	r15d, 0x10
	mov	ebx, 0xffffffff
	je	.label_2032
	mov	esi, r8d
	xor	ebx, ebx
	cmp	rsi, r12
	mov	rax, qword ptr [rsp + 0x28]
	jbe	.label_2035
	mov	r14, rax
	jmp	.label_2016
.label_2012:
	mov	qword ptr [rsp + 0x80], rsi
	xor	eax, eax
	test	rsi, rsi
	setns	al
	fild	qword ptr [rsp + 0x80]
	fadd	dword ptr [dword ptr [+ (rax * 4) + label_1349]]
	mov	qword ptr [rsp + 0x88], r13
	xor	eax, eax
	test	r13, r13
	setns	al
	fild	qword ptr [rsp + 0x88]
	fadd	dword ptr [dword ptr [+ (rax * 4) + label_1349]]
	mov	qword ptr [rsp + 0x90], r15
	xor	eax, eax
	test	r15, r15
	setns	al
	fild	qword ptr [rsp + 0x90]
	fadd	dword ptr [dword ptr [+ (rax * 4) + label_1349]]
	fdivrp	st(2)
	fmulp	st(1)
	mov	r12d, dword ptr [rsp + 0x1c]
	test	r12b, 0x10
	jne	.label_2041
	fstp	xword ptr [rsp]
	mov	edi, dword ptr [rsp + 0x3c]
	call	adjust_value
	fstp	xword ptr [rsp]
	xor	r13d, r13d
	mov	esi, 1
	mov	rdx, -1
	mov	ecx, OFFSET FLAT:label_2021
	xor	eax, eax
	mov	r15, qword ptr [rsp + 0x20]
	mov	rdi, r15
	call	__sprintf_chk
	mov	rdi, r15
	call	strlen
	mov	ebx, 0xffffffff
	jmp	.label_2014
.label_2041:
	mov	eax, r8d
	mov	qword ptr [rsp + 0x78], rax
	fld1	
	xor	ebx, ebx
	fild	qword ptr [rsp + 0x78]
	fldz	
	nop	dword ptr [rax]
.label_2033:
	fstp	st(0)
	fmul	st(1), st(0)
	inc	ebx
	fld	st(0)
	fmul	st(2)
	cmp	ebx, 7
	jg	.label_2030
	fxch	st(3)
	fucomi	st(3)
	fstp	st(3)
	fldz	
	jae	.label_2033
.label_2030:
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
	mov	ecx, OFFSET FLAT:label_2038
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
	jb	.label_2044
	fld	xword ptr [rsp + 0x40]
	fstp	st(0)
	inc	r13
	test	r12b, 8
	je	.label_2014
	cmp	byte ptr [r15 + rax - 1], 0x30
	jne	.label_2014
.label_2044:
	fld	dword ptr [dword ptr [rip + label_2037]]
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
	mov	ecx, OFFSET FLAT:label_2021
	xor	eax, eax
	mov	rdi, r15
	call	__sprintf_chk
	mov	rdi, r15
	call	strlen
.label_2014:
	mov	r14, qword ptr [rsp + 0x28]
	mov	rbp, r14
	sub	rbp, rax
	mov	rdi, rbp
	mov	rsi, r15
	mov	rdx, rax
	call	memmove
	sub	r14, r13
	jmp	.label_2026
.label_2032:
	mov	r14, qword ptr [rsp + 0x28]
	jmp	.label_2016
.label_2035:
	xor	ebx, ebx
	mov	r9d, dword ptr [rsp + 0x3c]
	nop	dword ptr [rax]
.label_2046:
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
	jae	.label_2034
	xor	eax, eax
	add	edx, ebp
	setne	al
	mov	ebp, eax
	jmp	.label_2039
	.section	.text
	.align	32
	#Procedure 0x4153d1
	.globl sub_4153d1
	.type sub_4153d1, @function
sub_4153d1:

	nop	word ptr cs:[rax + rax]
.label_2034:
	add	edx, ebp
	cmp	r8d, edx
	sbb	ebp, ebp
	and	ebp, 1
	or	ebp, 2
.label_2039:
	inc	ebx
	cmp	ebx, 7
	jg	.label_2029
	cmp	rsi, r12
	jbe	.label_2046
.label_2029:
	cmp	r12, 9
	ja	.label_2048
	cmp	r9d, 1
	jne	.label_2049
	mov	eax, ecx
	and	eax, 1
	add	eax, ebp
	cmp	eax, 2
	ja	.label_2013
	jmp	.label_2017
.label_2048:
	mov	r14, qword ptr [rsp + 0x28]
	jmp	.label_2016
.label_2049:
	test	r9d, r9d
	jne	.label_2017
	test	ebp, ebp
	je	.label_2017
.label_2013:
	inc	ecx
	xor	ebp, ebp
	cmp	ecx, 0xa
	jne	.label_2017
	inc	r12
	xor	ecx, ecx
	cmp	r12, 9
	mov	ebp, 0
	ja	.label_2020
.label_2017:
	mov	eax, dword ptr [rsp + 0x1c]
	test	al, 8
	je	.label_2022
	test	ecx, ecx
	jne	.label_2022
	mov	r14, qword ptr [rsp + 0x28]
	jmp	.label_2016
.label_2022:
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
	jmp	.label_2016
.label_2020:
	xor	ebp, ebp
	mov	r14, qword ptr [rsp + 0x28]
	mov	r12d, 0xa
.label_2016:
	mov	eax, dword ptr [rsp + 0x1c]
	and	al, 3
	je	.label_2023
	cmp	al, 1
	jne	.label_2031
	movsxd	rax, ebp
	mov	edx, r12d
	and	edx, 1
	xor	esi, esi
	add	rdx, rax
	setne	sil
	add	esi, ecx
	cmp	esi, 5
	jg	.label_2025
	jmp	.label_2031
.label_2023:
	add	ecx, ebp
	jle	.label_2031
.label_2025:
	inc	r12
	mov	eax, dword ptr [rsp + 0x34]
	cmp	ebx, 7
	jg	.label_2031
	test	r15d, r15d
	je	.label_2031
	cmp	r12, rax
	jne	.label_2031
	inc	ebx
	mov	r12d, 1
	mov	eax, dword ptr [rsp + 0x1c]
	test	al, 8
	jne	.label_2031
	mov	byte ptr [r14 - 1], 0x30
	dec	r14
	mov	rdx, qword ptr [rsp + 0x50]
	sub	r14, rdx
	mov	rdi, r14
	mov	rsi, qword ptr [rsp + 0x40]
	call	memcpy
	mov	r12d, 1
.label_2031:
	mov	r15, qword ptr [rsp + 0x20]
	movabs	rcx, 0xcccccccccccccccd
	mov	rbp, r14
	nop	word ptr cs:[rax + rax]
.label_2018:
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
	ja	.label_2018
	mov	r12d, dword ptr [rsp + 0x1c]
.label_2026:
	test	r12b, 4
	je	.label_2024
	sub	r14, rbp
	mov	rdi, rbp
	mov	rsi, r14
	mov	rdx, qword ptr [rsp + 0x70]
	mov	rcx, qword ptr [rsp + 0x68]
	call	group_number
	mov	rbp, rax
.label_2024:
	mov	rsi, qword ptr [rsp + 0x60]
	mov	eax, dword ptr [rsp + 0x34]
	mov	rdi, qword ptr [rsp + 0x28]
	test	r12b, r12b
	jns	.label_2015
	test	ebx, ebx
	jns	.label_2028
	xor	ebx, ebx
	cmp	rsi, 2
	jb	.label_2028
	mov	eax, eax
	xor	ecx, ecx
	mov	edx, 1
	nop	word ptr cs:[rax + rax]
.label_2036:
	mov	ebx, 8
	cmp	ecx, 7
	je	.label_2028
	inc	ecx
	imul	rdx, rax
	cmp	rdx, rsi
	mov	ebx, ecx
	jb	.label_2036
.label_2028:
	mov	eax, r12d
	and	eax, 0x100
	test	r12b, 0x40
	je	.label_2040
	mov	ecx, ebx
	or	ecx, eax
	je	.label_2040
	mov	byte ptr [r15 + 0x287], 0x20
	add	r15, 0x288
	mov	rdi, r15
.label_2040:
	test	ebx, ebx
	je	.label_2043
	cmp	dword ptr [rsp + 0x38], 0
	jne	.label_2045
	mov	cl, 0x6b
	cmp	ebx, 1
	je	.label_2047
.label_2045:
	movsxd	rcx, ebx
	mov	cl,  byte ptr [byte ptr [rcx + power_letter]]
.label_2047:
	mov	byte ptr [rdi], cl
	inc	rdi
.label_2043:
	test	eax, eax
	je	.label_2015
	cmp	dword ptr [rsp + 0x38], 0
	je	.label_2027
	test	ebx, ebx
	je	.label_2027
	mov	byte ptr [rdi], 0x69
	inc	rdi
.label_2027:
	mov	byte ptr [rdi], 0x42
	inc	rdi
.label_2015:
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
	#Procedure 0x415640

	.globl check_dst_limits
	.type check_dst_limits, @function
check_dst_limits:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x38
	mov	r14, r9
	mov	qword ptr [rsp + 0x28], r8
	mov	qword ptr [rsp + 0x18], rdx
	mov	rbx, rsi
	mov	rbp, rdi
	mov	qword ptr [rsp + 0x20], rcx
	mov	rsi, rcx
	call	search_cur_bkref_entry
	mov	qword ptr [rsp + 0x10], rax
	mov	rdi, rbp
	mov	qword ptr [rsp + 0x30], r14
	mov	rsi, r14
	call	search_cur_bkref_entry
	mov	qword ptr [rsp + 8], rax
	cmp	qword ptr [rbx + 8], 0
	jle	.label_2050
	mov	r14, qword ptr [rbp + 0x98]
	xor	r12d, r12d
	nop	dword ptr [rax]
.label_2052:
	mov	rax, qword ptr [rbp + 0xd8]
	mov	rcx, qword ptr [rbx + 0x10]
	mov	rsi, qword ptr [rcx + r12*8]
	lea	rcx, [rsi + rsi*4]
	mov	rax, qword ptr [rax + rcx*8]
	mov	rcx, qword ptr [r14]
	shl	rax, 4
	mov	r15, qword ptr [rcx + rax]
	mov	rdi, rbp
	mov	rdx, r15
	mov	rcx, qword ptr [rsp + 0x18]
	mov	r8, qword ptr [rsp + 0x20]
	mov	r9, qword ptr [rsp + 0x10]
	call	check_dst_limits_calc_pos
	mov	r13d, eax
	mov	rax, qword ptr [rbx + 0x10]
	mov	rsi, qword ptr [rax + r12*8]
	mov	rdi, rbp
	mov	rdx, r15
	mov	rcx, qword ptr [rsp + 0x28]
	mov	r8, qword ptr [rsp + 0x30]
	mov	r9, qword ptr [rsp + 8]
	call	check_dst_limits_calc_pos
	cmp	eax, r13d
	mov	al, 1
	jne	.label_2051
	inc	r12
	cmp	r12, qword ptr [rbx + 8]
	jl	.label_2052
.label_2050:
	xor	eax, eax
.label_2051:
	add	rsp, 0x38
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x415722
	.globl sub_415722
	.type sub_415722, @function
sub_415722:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x415730

	.globl allocate_entry
	.type allocate_entry, @function
allocate_entry:
	mov	rax, qword ptr [rdi + 0x48]
	test	rax, rax
	je	.label_2053
	mov	rcx, qword ptr [rax + 8]
	mov	qword ptr [rdi + 0x48], rcx
	ret	
.label_2053:
	push	rax
	mov	edi, 0x10
	call	malloc
	add	rsp, 8
	ret	
	.section	.text
	.align	32
	#Procedure 0x415752
	.globl sub_415752
	.type sub_415752, @function
sub_415752:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x415760

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
	jne	.label_2061
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
	je	.label_2058
	cmp	byte ptr [rbx], 0x60
	mov	ecx, OFFSET FLAT:label_2059
	mov	eax, OFFSET FLAT:label_2060
	jmp	.label_2056
.label_2057:
	cmp	r14d, 9
	mov	ecx, OFFSET FLAT:label_1160
	mov	eax, OFFSET FLAT:label_1091
.label_2056:
	cmove	rax, rcx
.label_2061:
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x4157df
	.globl sub_4157df
	.type sub_4157df, @function
sub_4157df:

	nop	dword ptr [rax]
.label_2058:
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
	je	.label_2057
	cmp	byte ptr [rbx], 0x60
	mov	ecx, OFFSET FLAT:label_2054
	mov	eax, OFFSET FLAT:label_2055
	jmp	.label_2056
.label_2066:
	add	r14, 0x10
.label_2071:
	cmp	r14, qword ptr [r15 + 8]
	jae	.label_2068
	cmp	qword ptr [r14], 0
	je	.label_2066
	test	r14, r14
	je	.label_2066
	mov	rbx, r14
	nop	dword ptr [rax + rax]
.label_2063:
	mov	rdi, qword ptr [rbx]
	call	qword ptr [r15 + 0x40]
	mov	rbx, qword ptr [rbx + 8]
	test	rbx, rbx
	jne	.label_2063
	jmp	.label_2066
.label_2068:
	mov	r14, qword ptr [r15]
	jmp	.label_2067
	.section	.text
	.align	32
	#Procedure 0x415857
	.globl sub_415857
	.type sub_415857, @function
sub_415857:

	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x415860

	.globl hash_free
	.type hash_free, @function
hash_free:
	push	r15
	push	r14
	push	rbx
	mov	r15, rdi
	cmp	qword ptr [r15 + 0x40], 0
	je	.label_2068
	cmp	qword ptr [r15 + 0x20], 0
	je	.label_2068
	mov	r14, qword ptr [r15]
	jmp	.label_2071
	.section	.text
	.align	32
	#Procedure 0x41587b
	.globl sub_41587b
	.type sub_41587b, @function
sub_41587b:

	nop	dword ptr [rax + rax]
.label_2065:
	add	r14, 0x10
.label_2067:
	cmp	r14, qword ptr [r15 + 8]
	jae	.label_2062
	mov	rdi, qword ptr [r14 + 8]
	test	rdi, rdi
	je	.label_2065
	nop	word ptr cs:[rax + rax]
.label_2069:
	mov	rbx, qword ptr [rdi + 8]
	call	free
	test	rbx, rbx
	mov	rdi, rbx
	jne	.label_2069
	jmp	.label_2065
.label_2062:
	mov	rdi, qword ptr [r15 + 0x48]
	test	rdi, rdi
	je	.label_2070
	nop	dword ptr [rax]
.label_2064:
	mov	rbx, qword ptr [rdi + 8]
	call	free
	test	rbx, rbx
	mov	rdi, rbx
	jne	.label_2064
.label_2070:
	mov	rdi, qword ptr [r15]
	call	free
	mov	rdi, r15
	pop	rbx
	pop	r14
	pop	r15
	jmp	free
	.section	.text
	.align	32
	#Procedure 0x4158e6
	.globl sub_4158e6
	.type sub_4158e6, @function
sub_4158e6:

	nop	word ptr cs:[rax + rax]
.label_2075:
	call	abort
	.section	.text
	.align	32
	#Procedure 0x4158f5
	.globl sub_4158f5
	.type sub_4158f5, @function
sub_4158f5:

	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4158fb
	.globl rpl_regerror
	.type rpl_regerror, @function
rpl_regerror:

	push	r15
	push	r14
	push	r12
	push	rbx
	push	rax
	mov	r15, rcx
	mov	r14, rdx
	cmp	edi, 0x11
	jae	.label_2075
	movsxd	rax, edi
	mov	esi, OFFSET FLAT:__re_error_msgid
	add	rsi,  qword ptr [word ptr [+ (rax * 8) + __re_error_msgid_idx]]
	xor	edi, edi
	mov	edx, 5
	call	dcgettext
	mov	r12, rax
	mov	rdi, r12
	call	strlen
	mov	rbx, rax
	inc	rbx
	test	r15, r15
	je	.label_2074
	cmp	rbx, r15
	mov	rdx, rbx
	ja	.label_2072
.label_2073:
	mov	rdi, r14
	mov	rsi, r12
	call	memcpy
.label_2074:
	mov	rax, rbx
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	ret	
.label_2072:
	mov	byte ptr [r14 + r15 - 1], 0
	dec	r15
	mov	rdx, r15
	jmp	.label_2073
.label_2077:
	mov	rbx, -2
.label_2078:
	mov	rax, rbx
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	ret	
	.section	.text
	.align	32
	#Procedure 0x415984
	.globl sub_415984
	.type sub_415984, @function
sub_415984:

	nop	word ptr [rax + rax]
.label_2079:
	lea	rcx, [rbx + rbx*4]
	lea	rcx, [rax + rcx*2 - 0x30]
	cmp	rcx, 0x8000
	cmovg	rcx, r13
	nop	word ptr cs:[rax + rax]
.label_2076:
	mov	rbx, rcx
	mov	rdi, r12
	mov	rsi, r15
	mov	rdx, r14
	call	fetch_token
	movzx	eax, byte ptr [r12]
	movzx	edx, byte ptr [r12 + 8]
	cmp	dl, 0x18
	je	.label_2078
	cmp	dl, 2
	je	.label_2077
	cmp	al, 0x2c
	je	.label_2078
	cmp	al, 0x30
	mov	rcx, -2
	jb	.label_2076
	cmp	edx, 1
	jne	.label_2076
	cmp	rbx, -2
	je	.label_2076
	cmp	al, 0x39
	ja	.label_2076
	cmp	rbx, -1
	jne	.label_2079
	add	rax, -0x30
	mov	rcx, rax
	jmp	.label_2076
	.section	.text
	.align	32
	#Procedure 0x4159ff

	.globl fetch_number
	.type fetch_number, @function
fetch_number:
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	mov	r14, rdx
	mov	r12, rsi
	mov	r15, rdi
	mov	rcx, -1
	mov	r13d, 0x8000
	jmp	.label_2076
	.section	.text
	.align	32
	#Procedure 0x415a20

	.globl rpl_regexec
	.type rpl_regexec, @function
rpl_regexec:
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	mov	ebx, r8d
	mov	r15, rcx
	mov	r14, rdx
	mov	r12, rsi
	mov	r13, rdi
	mov	eax, 2
	cmp	ebx, 7
	ja	.label_2080
	test	bl, 4
	jne	.label_2081
	mov	rdi, r12
	call	strlen
	mov	rdx, rax
	xor	ecx, ecx
	jmp	.label_2082
.label_2081:
	mov	rcx, qword ptr [r15]
	mov	rdx, qword ptr [r15 + 8]
.label_2082:
	test	byte ptr [r13 + 0x38], 0x10
	jne	.label_2083
	sub	rsp, 8
	mov	rdi, r13
	mov	rsi, r12
	mov	r8, rdx
	mov	r9, rdx
	push	rbx
	push	r15
	push	r14
	call	re_search_internal
	add	rsp, 0x20
	jmp	.label_2084
.label_2083:
	sub	rsp, 8
	mov	rdi, r13
	mov	rsi, r12
	mov	r8, rdx
	mov	r9, rdx
	push	rbx
	push	0
	push	0
	call	re_search_internal
	add	rsp, 0x20
.label_2084:
	mov	ecx, eax
	xor	eax, eax
	test	ecx, ecx
	setne	al
.label_2080:
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	ret	
	.section	.text
	.align	32
	#Procedure 0x415ab5
	.globl sub_415ab5
	.type sub_415ab5, @function
sub_415ab5:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x415ac0

	.globl strnlen1
	.type strnlen1, @function
strnlen1:
	push	r14
	push	rbx
	push	rax
	mov	r14, rsi
	mov	rbx, rdi
	xor	esi, esi
	mov	rdx, r14
	call	memchr
	mov	ecx, 1
	sub	rcx, rbx
	add	rcx, rax
	test	rax, rax
	cmove	rcx, r14
	mov	rax, rcx
	add	rsp, 8
	pop	rbx
	pop	r14
	ret	
	.section	.text
	.align	32
	#Procedure 0x415af1
	.globl sub_415af1
	.type sub_415af1, @function
sub_415af1:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x415b00

	.globl fts_maxarglen
	.type fts_maxarglen, @function
fts_maxarglen:
	push	r14
	push	rbx
	push	rax
	mov	rbx, rdi
	mov	rdi, qword ptr [rbx]
	mov	r14d, 1
	test	rdi, rdi
	je	.label_2085
	add	rbx, 8
	xor	r14d, r14d
	nop	dword ptr [rax]
.label_2086:
	call	strlen
	cmp	rax, r14
	cmova	r14, rax
	mov	rdi, qword ptr [rbx]
	add	rbx, 8
	test	rdi, rdi
	jne	.label_2086
	inc	r14
.label_2085:
	mov	rax, r14
	add	rsp, 8
	pop	rbx
	pop	r14
	ret	
	.section	.text
	.align	32
	#Procedure 0x415b46
	.globl sub_415b46
	.type sub_415b46, @function
sub_415b46:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x415b50
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
	#Procedure 0x415b5f
	.globl sub_415b5f
	.type sub_415b5f, @function
sub_415b5f:

	nop	
	.section	.text
	.align	32
	#Procedure 0x415b60

	.globl free_dfa_content
	.type free_dfa_content, @function
free_dfa_content:
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	mov	r14, rdi
	cmp	qword ptr [r14], 0
	je	.label_2094
	cmp	qword ptr [r14 + 0x10], 0
	je	.label_2094
	xor	r15d, r15d
	xor	ebx, ebx
	nop	
.label_2089:
	mov	rdi, qword ptr [r14]
	add	rdi, r15
	call	free_token
	inc	rbx
	add	r15, 0x10
	cmp	rbx, qword ptr [r14 + 0x10]
	jb	.label_2089
.label_2094:
	mov	rdi, qword ptr [r14 + 0x18]
	call	free
	cmp	qword ptr [r14 + 0x10], 0
	je	.label_2095
	xor	r15d, r15d
	mov	ebx, 0x10
.label_2096:
	mov	rax, qword ptr [r14 + 0x30]
	test	rax, rax
	je	.label_2097
	mov	rdi, qword ptr [rax + rbx]
	call	free
.label_2097:
	mov	rax, qword ptr [r14 + 0x38]
	test	rax, rax
	je	.label_2088
	mov	rdi, qword ptr [rax + rbx]
	call	free
.label_2088:
	mov	rax, qword ptr [r14 + 0x28]
	test	rax, rax
	je	.label_2091
	mov	rdi, qword ptr [rax + rbx]
	call	free
.label_2091:
	inc	r15
	add	rbx, 0x18
	cmp	r15, qword ptr [r14 + 0x10]
	jb	.label_2096
.label_2095:
	mov	rdi, qword ptr [r14 + 0x28]
	call	free
	mov	rdi, qword ptr [r14 + 0x30]
	call	free
	mov	rdi, qword ptr [r14 + 0x38]
	call	free
	mov	rdi, qword ptr [r14]
	call	free
	cmp	qword ptr [r14 + 0x40], 0
	je	.label_2092
	xor	r15d, r15d
.label_2093:
	mov	rax, qword ptr [r14 + 0x40]
	lea	rcx, [r15 + r15*2]
	lea	r12, [rax + rcx*8 + 0x10]
	cmp	qword ptr [rax + rcx*8], 0
	jle	.label_2087
	lea	r13, [rax + rcx*8]
	xor	ebx, ebx
	nop	word ptr [rax + rax]
.label_2090:
	mov	rax, qword ptr [r12]
	mov	rdi, qword ptr [rax + rbx*8]
	call	free_state
	inc	rbx
	cmp	rbx, qword ptr [r13]
	jl	.label_2090
.label_2087:
	mov	rdi, qword ptr [r12]
	call	free
	inc	r15
	cmp	r15, qword ptr [r14 + 0x88]
	jbe	.label_2093
.label_2092:
	mov	rdi, qword ptr [r14 + 0x40]
	call	free
	mov	rdi, qword ptr [r14 + 0x78]
	mov	eax, OFFSET FLAT:utf8_sb_map
	cmp	rdi, rax
	je	.label_2098
	call	free
.label_2098:
	mov	rdi, qword ptr [r14 + 0xe0]
	call	free
	mov	rdi, r14
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	jmp	free
	.section	.text
	.align	32
	#Procedure 0x415ca4
	.globl sub_415ca4
	.type sub_415ca4, @function
sub_415ca4:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x415cb0

	.globl group_nodes_into_DFAstates
	.type group_nodes_into_DFAstates, @function
group_nodes_into_DFAstates:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0xa8
	mov	qword ptr [rsp + 0x50], rcx
	mov	rbx, rdx
	mov	r13, rsi
	mov	rbp, rdi
	lea	rdi, [rsp + 0x20]
	call	bitset_empty
	xor	r12d, r12d
	cmp	qword ptr [r13 + 0x10], 0
	jle	.label_2120
	xor	r15d, r15d
	mov	qword ptr [rsp + 0x48], rbx
	mov	qword ptr [rsp], rbp
	mov	qword ptr [rsp + 0x58], r13
	nop	dword ptr [rax + rax]
.label_2133:
	mov	rax, qword ptr [r13 + 0x18]
	mov	qword ptr [rsp + 8], r15
	mov	rbx, qword ptr [rax + r15*8]
	mov	r14, qword ptr [rbp]
	shl	rbx, 4
	lea	rbp, [r14 + rbx]
	mov	r15d, dword ptr [r14 + rbx + 8]
	movzx	eax, r15b
	mov	dword ptr [rsp + 0x14], eax
	cmp	eax, 1
	mov	qword ptr [rsp + 0x18], rbp
	jne	.label_2099
	movzx	esi, byte ptr [rbp]
	lea	rdi, [rsp + 0x20]
	call	bitset_set
.label_2111:
	shr	r15d, 8
	mov	eax, r15d
	and	eax, 0x3ff
	je	.label_2105
	test	r15b, 0x20
	je	.label_2116
	mov	esi, 0xa
	lea	rbp, [rsp + 0x20]
	mov	rdi, rbp
	call	bitset_contain
	mov	r13d, eax
	mov	rdi, rbp
	call	bitset_empty
	test	r13b, r13b
	je	.label_2124
	mov	esi, 0xa
	mov	rdi, rbp
	call	bitset_set
	mov	r13, qword ptr [rsp + 0x58]
	mov	rbp, qword ptr [rsp + 0x18]
.label_2116:
	test	r15b, r15b
	js	.label_2127
	lea	rax, [r14 + rbx + 8]
	test	r15b, 4
	je	.label_2129
	cmp	dword ptr [rsp + 0x14], 1
	jne	.label_2132
	test	byte ptr [rax + 2], 0x40
	je	.label_2127
.label_2132:
	mov	rbp, qword ptr [rsp]
	cmp	dword ptr [rbp + 0xb4], 1
	jle	.label_2135
	mov	rdx, qword ptr [rbp + 0x78]
	xor	ecx, ecx
	xor	esi, esi
	nop	dword ptr [rax]
.label_2140:
	mov	rdi, qword ptr [rdx + rsi*8]
	not	rdi
	or	rdi, qword ptr [rbp + rsi*8 + 0xb8]
	and	rdi, qword ptr [rsp + rsi*8 + 0x20]
	mov	qword ptr [rsp + rsi*8 + 0x20], rdi
	or	rcx, rdi
	inc	rsi
	cmp	rsi, 4
	jne	.label_2140
	jmp	.label_2101
	.section	.text
	.align	32
	#Procedure 0x415e0a
	.globl sub_415e0a
	.type sub_415e0a, @function
sub_415e0a:

	nop	word ptr [rax + rax]
.label_2099:
	cmp	r15b, 7
	je	.label_2103
	cmp	r15b, 5
	je	.label_2104
	cmp	r15b, 3
	jne	.label_2102
	mov	rsi, qword ptr [rbp]
	lea	rdi, [rsp + 0x20]
	call	bitset_merge
	jmp	.label_2111
.label_2124:
	mov	rbp, qword ptr [rsp]
	mov	r15, qword ptr [rsp + 8]
	mov	r13, qword ptr [rsp + 0x58]
	jmp	.label_2118
.label_2103:
	pcmpeqd	xmm0, xmm0
	movdqa	xmmword ptr [rsp + 0x20], xmm0
	mov	rax, qword ptr [rsp]
	test	byte ptr [rax + 0xd8], 0x40
	jne	.label_2114
	mov	esi, 0xa
	lea	rdi, [rsp + 0x20]
	call	bitset_clear
.label_2114:
	mov	rax, qword ptr [rsp]
	cmp	byte ptr [rax + 0xd8], 0
	jns	.label_2111
	jmp	.label_2125
.label_2104:
	mov	rbp, qword ptr [rsp]
	cmp	dword ptr [rbp + 0xb4], 2
	jl	.label_2126
	mov	rsi, qword ptr [rbp + 0x78]
	lea	rdi, [rsp + 0x20]
	call	bitset_merge
	jmp	.label_2134
.label_2126:
	lea	rdi, [rsp + 0x20]
	call	bitset_set_all
.label_2134:
	test	byte ptr [rbp + 0xd8], 0x40
	jne	.label_2131
	mov	esi, 0xa
	lea	rdi, [rsp + 0x20]
	call	bitset_clear
.label_2131:
	mov	rax, qword ptr [rsp]
	cmp	byte ptr [rax + 0xd8], 0
	mov	rbp, qword ptr [rsp + 0x18]
	jns	.label_2111
.label_2125:
	xor	esi, esi
	lea	rdi, [rsp + 0x20]
	call	bitset_clear
	jmp	.label_2111
.label_2135:
	xor	ecx, ecx
	xor	edx, edx
	nop	
.label_2143:
	mov	rsi, qword ptr [rsp + rdx*8 + 0x20]
	and	rsi, qword ptr [rbp + rdx*8 + 0xb8]
	mov	qword ptr [rsp + rdx*8 + 0x20], rsi
	or	rcx, rsi
	inc	rdx
	cmp	rdx, 4
	jne	.label_2143
.label_2101:
	test	rcx, rcx
	mov	rbp, qword ptr [rsp + 0x18]
	je	.label_2102
.label_2129:
	test	r15b, 8
	je	.label_2105
	cmp	dword ptr [rsp + 0x14], 1
	jne	.label_2108
	test	byte ptr [rax + 2], 0x40
	jne	.label_2127
.label_2108:
	mov	rdi, qword ptr [rsp]
	cmp	dword ptr [rdi + 0xb4], 1
	jle	.label_2109
	mov	rcx, qword ptr [rdi + 0x78]
	xor	eax, eax
	xor	edx, edx
	nop	word ptr cs:[rax + rax]
.label_2115:
	mov	rsi, qword ptr [rcx + rdx*8]
	and	rsi, qword ptr [rdi + rdx*8 + 0xb8]
	not	rsi
	and	rsi, qword ptr [rsp + rdx*8 + 0x20]
	mov	qword ptr [rsp + rdx*8 + 0x20], rsi
	or	rax, rsi
	inc	rdx
	cmp	rdx, 4
	jne	.label_2115
	jmp	.label_2123
	.section	.text
	.align	32
	#Procedure 0x415f77
	.globl sub_415f77
	.type sub_415f77, @function
sub_415f77:

	nop	word ptr [rax + rax]
.label_2127:
	lea	rdi, [rsp + 0x20]
	call	bitset_empty
.label_2102:
	mov	rbp, qword ptr [rsp]
	mov	r15, qword ptr [rsp + 8]
	jmp	.label_2118
.label_2109:
	xor	eax, eax
	xor	ecx, ecx
	nop	dword ptr [rax]
.label_2136:
	mov	rdx, qword ptr [rdi + rcx*8 + 0xb8]
	not	rdx
	and	rdx, qword ptr [rsp + rcx*8 + 0x20]
	mov	qword ptr [rsp + rcx*8 + 0x20], rdx
	or	rax, rdx
	inc	rcx
	cmp	rcx, 4
	jne	.label_2136
.label_2123:
	test	rax, rax
	je	.label_2102
	nop	word ptr cs:[rax + rax]
.label_2105:
	test	r12, r12
	jle	.label_2139
	mov	rbx, qword ptr [rsp + 0x50]
	xor	r14d, r14d
	mov	r15, qword ptr [rsp + 8]
	jmp	.label_2113
.label_2139:
	xor	r14d, r14d
	mov	r15, qword ptr [rsp + 8]
	jmp	.label_2117
.label_2142:
	mov	r15, qword ptr [rsp + 8]
	jmp	.label_2106
	.section	.text
	.align	32
	#Procedure 0x415ffb
	.globl sub_415ffb
	.type sub_415ffb, @function
sub_415ffb:

	nop	dword ptr [rax + rax]
.label_2113:
	cmp	dword ptr [rsp + 0x14], 1
	jne	.label_2100
	mov	rdi, r14
	shl	rdi, 5
	add	rdi, qword ptr [rsp + 0x50]
	movzx	esi, byte ptr [rbp]
	call	bitset_contain
	mov	ecx, 0x13
	test	al, al
	je	.label_2130
.label_2100:
	mov	rcx, rbx
	xor	eax, eax
	xor	edx, edx
.label_2110:
	mov	rsi, qword ptr [rcx]
	and	rsi, qword ptr [rsp + rdx*8 + 0x20]
	mov	qword ptr [rsp + rdx*8 + 0x80], rsi
	or	rax, rsi
	inc	rdx
	add	rcx, 8
	cmp	rdx, 4
	jne	.label_2110
	mov	ecx, 0x13
	test	rax, rax
	je	.label_2130
	xor	ebp, ebp
	xor	eax, eax
	xor	ecx, ecx
	nop	word ptr cs:[rax + rax]
.label_2122:
	mov	rdx, qword ptr [rsp + rcx*8 + 0x20]
	not	rdx
	mov	rsi, qword ptr [rbx + rcx*8]
	and	rdx, rsi
	mov	qword ptr [rsp + rcx*8 + 0x60], rdx
	or	rax, rdx
	not	rsi
	and	rsi, qword ptr [rsp + rcx*8 + 0x20]
	mov	qword ptr [rsp + rcx*8 + 0x20], rsi
	or	rbp, rsi
	inc	rcx
	cmp	rcx, 4
	jne	.label_2122
	test	rax, rax
	je	.label_2137
	mov	rdi, r12
	shl	rdi, 5
	mov	r15, qword ptr [rsp + 0x50]
	add	rdi, r15
	lea	rsi, [rsp + 0x60]
	call	bitset_copy
	mov	rdi, r14
	shl	rdi, 5
	add	rdi, r15
	lea	rsi, [rsp + 0x80]
	call	bitset_copy
	lea	rax, [r12 + r12*2]
	mov	rcx, qword ptr [rsp + 0x48]
	lea	rdi, [rcx + rax*8]
	lea	rax, [r14 + r14*2]
	lea	rsi, [rcx + rax*8]
	call	re_node_set_init_copy
	mov	ecx, 0x1a
	test	eax, eax
	jne	.label_2142
	inc	r12
	mov	r15, qword ptr [rsp + 8]
.label_2137:
	lea	rax, [r14 + r14*2]
	mov	rcx, qword ptr [rsp + 0x48]
	lea	rdi, [rcx + rax*8]
	mov	rax, qword ptr [r13 + 0x18]
	mov	rsi, qword ptr [rax + r15*8]
	call	re_node_set_insert
	mov	ecx, 0x1a
	test	al, al
	je	.label_2106
	test	rbp, rbp
	mov	ecx, 0
	mov	eax, 0x11
	cmove	ecx, eax
.label_2106:
	mov	rbp, qword ptr [rsp + 0x18]
.label_2130:
	mov	eax, ecx
	and	al, 0x1f
	je	.label_2112
	cmp	al, 0x13
	jne	.label_2138
.label_2112:
	inc	r14
	add	rbx, 0x20
	cmp	r14, r12
	jl	.label_2113
	jmp	.label_2117
.label_2138:
	cmp	al, 0x11
	jne	.label_2119
	nop	dword ptr [rax]
.label_2117:
	cmp	r14, r12
	jne	.label_2121
	mov	rdi, r12
	shl	rdi, 5
	add	rdi, qword ptr [rsp + 0x50]
	lea	rbx, [rsp + 0x20]
	mov	r14, rbx
	mov	rsi, r14
	call	bitset_copy
	lea	rax, [r12 + r12*2]
	mov	rbx, qword ptr [rsp + 0x48]
	lea	rdi, [rbx + rax*8]
	mov	rax, qword ptr [r13 + 0x18]
	mov	rsi, qword ptr [rax + r15*8]
	call	re_node_set_init_1
	test	eax, eax
	mov	rbp, qword ptr [rsp]
	jne	.label_2128
	inc	r12
	mov	rdi, r14
	call	bitset_empty
	jmp	.label_2118
.label_2119:
	and	cl, 0x1f
	jne	.label_2107
.label_2121:
	mov	rbp, qword ptr [rsp]
.label_2118:
	inc	r15
	cmp	r15, qword ptr [r13 + 0x10]
	jl	.label_2133
.label_2120:
	mov	rax, r12
	add	rsp, 0xa8
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_2107:
	cmp	cl, 0x1a
	mov	rbx, qword ptr [rsp + 0x48]
	jne	.label_2120
.label_2128:
	test	r12, r12
	jle	.label_2141
	add	rbx, 0x10
	nop	
.label_2144:
	mov	rdi, qword ptr [rbx]
	call	free
	add	rbx, 0x18
	dec	r12
	jne	.label_2144
.label_2141:
	mov	r12, -1
	jmp	.label_2120
	.section	.text
	.align	32
	#Procedure 0x41620a
	.globl sub_41620a
	.type sub_41620a, @function
sub_41620a:

	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x416210

	.globl raw_hasher
	.type raw_hasher, @function
raw_hasher:
	push	rbx
	mov	rbx, rsi
	mov	esi, 3
	call	rotr_sz
	xor	edx, edx
	div	rbx
	mov	rax, rdx
	pop	rbx
	ret	
	.section	.text
	.align	32
	#Procedure 0x416228
	.globl sub_416228
	.type sub_416228, @function
sub_416228:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x416230

	.globl sift_states_iter_mb
	.type sift_states_iter_mb, @function
sift_states_iter_mb:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	push	rax
	mov	r13, r8
	mov	rbp, rcx
	mov	r14, rdx
	mov	r12, rsi
	mov	rax, rdi
	mov	r15, qword ptr [rax + 0x98]
	mov	rdi, r15
	mov	rsi, r14
	mov	rdx, rax
	call	check_node_accept_bytes
	mov	ebx, eax
	test	ebx, ebx
	jle	.label_2146
	movsxd	rax, ebx
	add	rax, rbp
	cmp	rax, r13
	jg	.label_2146
	mov	rcx, qword ptr [r12]
	mov	rdi, qword ptr [rcx + rax*8]
	test	rdi, rdi
	je	.label_2145
	add	rdi, 8
	mov	rax, qword ptr [r15 + 0x18]
	mov	rsi, qword ptr [rax + r14*8]
	call	re_node_set_contains
	test	rax, rax
	jne	.label_2146
.label_2145:
	xor	ebx, ebx
.label_2146:
	mov	eax, ebx
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
	#Procedure 0x4162a6
	.globl sub_4162a6
	.type sub_4162a6, @function
sub_4162a6:

	nop	word ptr cs:[rax + rax]
.label_2147:
	push	rax
	call	abort
	.section	.text
	.align	32
	#Procedure 0x4162b6
	.globl sub_4162b6
	.type sub_4162b6, @function
sub_4162b6:

	nop	dword ptr [rax]
.label_2148:
	add	rcx, 0x10
.label_2150:
	cmp	rcx, qword ptr [rdi + 8]
	jae	.label_2147
	mov	rax, qword ptr [rcx]
	test	rax, rax
	je	.label_2148
.label_2149:
	ret	
	.section	.text
	.align	32
	#Procedure 0x4162d0
	.globl hash_get_first
	.type hash_get_first, @function
hash_get_first:

	xor	eax, eax
	cmp	qword ptr [rdi + 0x20], 0
	je	.label_2149
	mov	rcx, qword ptr [rdi]
	jmp	.label_2150
	.section	.text
	.align	32
	#Procedure 0x4162de
	.globl sub_4162de
	.type sub_4162de, @function
sub_4162de:

	nop	
	.section	.text
	.align	32
	#Procedure 0x4162e0

	.globl rpl_re_compile_fastmap
	.type rpl_re_compile_fastmap, @function
rpl_re_compile_fastmap:
	push	r15
	push	r14
	push	rbx
	mov	r14, rdi
	mov	r15, qword ptr [r14]
	mov	rbx, qword ptr [r14 + 0x20]
	xorps	xmm0, xmm0
	movups	xmmword ptr [rbx + 0xf0], xmm0
	movups	xmmword ptr [rbx + 0xe0], xmm0
	movups	xmmword ptr [rbx + 0xd0], xmm0
	movups	xmmword ptr [rbx + 0xc0], xmm0
	movups	xmmword ptr [rbx + 0xb0], xmm0
	movups	xmmword ptr [rbx + 0xa0], xmm0
	movups	xmmword ptr [rbx + 0x90], xmm0
	movups	xmmword ptr [rbx + 0x80], xmm0
	movups	xmmword ptr [rbx + 0x70], xmm0
	movups	xmmword ptr [rbx + 0x60], xmm0
	movups	xmmword ptr [rbx + 0x50], xmm0
	movups	xmmword ptr [rbx + 0x40], xmm0
	movups	xmmword ptr [rbx + 0x30], xmm0
	movups	xmmword ptr [rbx + 0x20], xmm0
	movups	xmmword ptr [rbx + 0x10], xmm0
	movups	xmmword ptr [rbx], xmm0
	mov	rsi, qword ptr [r15 + 0x48]
	mov	rdx, rbx
	call	re_compile_fastmap_iter
	mov	rsi, qword ptr [r15 + 0x50]
	cmp	qword ptr [r15 + 0x48], rsi
	je	.label_2151
	mov	rdi, r14
	mov	rdx, rbx
	call	re_compile_fastmap_iter
.label_2151:
	mov	rsi, qword ptr [r15 + 0x58]
	cmp	qword ptr [r15 + 0x48], rsi
	je	.label_2152
	mov	rdi, r14
	mov	rdx, rbx
	call	re_compile_fastmap_iter
.label_2152:
	mov	rsi, qword ptr [r15 + 0x60]
	cmp	qword ptr [r15 + 0x48], rsi
	je	.label_2153
	mov	rdi, r14
	mov	rdx, rbx
	call	re_compile_fastmap_iter
.label_2153:
	or	byte ptr [r14 + 0x38], 8
	xor	eax, eax
	pop	rbx
	pop	r14
	pop	r15
	ret	
	.section	.text
	.align	32
	#Procedure 0x4163a1
	.globl sub_4163a1
	.type sub_4163a1, @function
sub_4163a1:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4163b0

	.globl re_string_translate_buffer
	.type re_string_translate_buffer, @function
re_string_translate_buffer:
	mov	rax, qword ptr [rdi + 0x30]
	mov	r8, qword ptr [rdi + 0x40]
	mov	rdx, qword ptr [rdi + 0x58]
	cmp	r8, rdx
	cmovg	r8, rdx
	cmp	rax, r8
	jge	.label_2154
	nop	dword ptr [rax + rax]
.label_2155:
	mov	rdx, qword ptr [rdi]
	mov	rsi, qword ptr [rdi + 8]
	add	rdx, qword ptr [rdi + 0x28]
	movzx	edx, byte ptr [rax + rdx]
	mov	rcx, qword ptr [rdi + 0x78]
	movzx	ecx, byte ptr [rcx + rdx]
	mov	byte ptr [rsi + rax], cl
	inc	rax
	cmp	rax, r8
	jl	.label_2155
	mov	rax, r8
.label_2154:
	mov	qword ptr [rdi + 0x30], rax
	mov	qword ptr [rdi + 0x38], rax
	ret	
	.section	.text
	.align	32
	#Procedure 0x4163fe
	.globl sub_4163fe
	.type sub_4163fe, @function
sub_4163fe:

	nop	
	.section	.text
	.align	32
	#Procedure 0x416400

	.globl duinfo_set
	.type duinfo_set, @function
duinfo_set:
	mov	qword ptr [rdi], rsi
	mov	qword ptr [rdi + 8], 1
	mov	qword ptr [rdi + 0x10], rdx
	mov	qword ptr [rdi + 0x18], rcx
	ret	
	.section	.text
	.align	32
	#Procedure 0x416414
	.globl sub_416414
	.type sub_416414, @function
sub_416414:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x416420

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
	#Procedure 0x416447
	.globl sub_416447
	.type sub_416447, @function
sub_416447:

	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x416450

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
	je	.label_2158
	mov	rbp, qword ptr [rbx + 0x50]
	test	rbp, rbp
	jne	.label_2160
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
	je	.label_2161
.label_2160:
	mov	rax, qword ptr [r13 + 0x78]
	mov	qword ptr [rsp], rax
	lea	rsi, [rsp]
	mov	rdi, rbp
	call	hash_lookup
	test	rax, rax
	je	.label_2157
	mov	rax, qword ptr [rax + 8]
	jmp	.label_2158
.label_2157:
	mov	r12b, 1
	mov	r14, rbp
.label_2161:
	xor	eax, eax
	test	r15d, r15d
	js	.label_2158
	lea	rsi, [rsp]
	mov	edi, r15d
	call	fstatfs
	mov	ecx, eax
	xor	eax, eax
	test	ecx, ecx
	jne	.label_2158
	test	r12b, r12b
	je	.label_2159
	mov	edi, 0x10
	call	malloc
	mov	rbp, rax
	test	rbp, rbp
	je	.label_2159
	mov	rax, qword ptr [r13 + 0x78]
	mov	qword ptr [rbp], rax
	mov	rax, qword ptr [rsp]
	mov	qword ptr [rbp + 8], rax
	mov	rdi, r14
	mov	rsi, rbp
	call	hash_insert
	test	rax, rax
	je	.label_2156
	cmp	rax, rbp
	je	.label_2159
	call	abort
.label_2156:
	mov	rdi, rbp
	call	free
.label_2159:
	mov	rax, qword ptr [rsp]
.label_2158:
	add	rsp, 0x78
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x41654a
	.globl sub_41654a
	.type sub_41654a, @function
sub_41654a:

	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x416550

	.globl file_name_matches
	.type file_name_matches, @function
file_name_matches:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	push	rax
	mov	rbx, rdx
	mov	r15, rsi
	mov	r12d, dword ptr [rdi + 0xc]
	mov	r14, qword ptr [rdi + 0x10]
	mov	r13d, r12d
	and	r13d, 8
	and	r12d, 0x40000000
.label_2164:
	mov	rdi, rbx
	mov	rsi, r15
	call	strcpy
	mov	rdi, r14
	mov	rsi, rbx
	call	hash_lookup
	mov	bpl, 1
	test	rax, rax
	jne	.label_2163
	test	r13d, r13d
	je	.label_2166
	nop	word ptr [rax + rax]
.label_2165:
	mov	esi, 0x2f
	mov	rdi, rbx
	call	strrchr
	test	rax, rax
	je	.label_2166
	mov	byte ptr [rax], 0
	mov	rdi, r14
	mov	rsi, rbx
	call	hash_lookup
	test	rax, rax
	je	.label_2165
	jmp	.label_2163
	.section	.text
	.align	32
	#Procedure 0x4165c7
	.globl sub_4165c7
	.type sub_4165c7, @function
sub_4165c7:

	nop	word ptr [rax + rax]
.label_2166:
	test	r12d, r12d
	jne	.label_2162
	mov	esi, 0x2f
	mov	rdi, r15
	call	strchr
	test	rax, rax
	lea	r15, [rax + 1]
	jne	.label_2164
.label_2162:
	xor	ebp, ebp
.label_2163:
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
	#Procedure 0x4165fe
	.globl sub_4165fe
	.type sub_4165fe, @function
sub_4165fe:

	nop	
.label_2168:
	mov	rdi, rbp
	mov	rsi, r15
	add	rsp, 8
	pop	rbx
	pop	r14
	pop	r15
	pop	rbp
	jmp	gmtime_r
	.section	.text
	.align	32
	#Procedure 0x416615

	.globl localtime_rz
	.type localtime_rz, @function
localtime_rz:
	push	rbp
	push	r15
	push	r14
	push	rbx
	push	rax
	mov	r15, rdx
	mov	rbp, rsi
	mov	rbx, rdi
	test	rbx, rbx
	je	.label_2168
	mov	rdi, rbx
	call	set_tz
	mov	r14, rax
	test	r14, r14
	je	.label_2167
	mov	rdi, rbp
	mov	rsi, r15
	call	localtime_r
	mov	bpl, 1
	test	rax, rax
	je	.label_2170
	mov	rdi, rbx
	mov	rsi, r15
	call	save_abbr
	mov	ebp, eax
	xor	bpl, 1
.label_2170:
	mov	rdi, r14
	call	revert_tz
	xor	ecx, ecx
	xor	al, 1
	cmovne	r15, rcx
	test	bpl, bpl
	cmovne	r15, rcx
	mov	rax, r15
	jmp	.label_2169
.label_2167:
	xor	eax, eax
.label_2169:
	add	rsp, 8
	pop	rbx
	pop	r14
	pop	r15
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x416687
	.globl sub_416687
	.type sub_416687, @function
sub_416687:

	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x416690

	.globl emit_blocksize_note
	.type emit_blocksize_note, @function
emit_blocksize_note:
	push	rax
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_2171
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:label_2172
	xor	eax, eax
	mov	rsi, rcx
	pop	rcx
	jmp	__printf_chk
	.section	.text
	.align	32
	#Procedure 0x4166ba
	.globl sub_4166ba
	.type sub_4166ba, @function
sub_4166ba:

	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4166c0

	.globl set_custom_quoting
	.type set_custom_quoting, @function
set_custom_quoting:
	test	rdi, rdi
	mov	eax, OFFSET FLAT:default_quoting_options
	cmovne	rax, rdi
	mov	dword ptr [rax], 0xa
	test	rsi, rsi
	je	.label_2173
	test	rdx, rdx
	je	.label_2173
	mov	qword ptr [rax + 0x28], rsi
	mov	qword ptr [rax + 0x30], rdx
	ret	
.label_2173:
	push	rax
	call	abort
	.section	.text
	.align	32
	#Procedure 0x4166eb
	.globl sub_4166eb
	.type sub_4166eb, @function
sub_4166eb:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4166f0

	.globl re_string_reconstruct
	.type re_string_reconstruct, @function
re_string_reconstruct:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x28
	mov	r15d, edx
	mov	r14, rsi
	mov	rbx, rdi
	mov	rax, qword ptr [rbx + 0x28]
	cmp	rax, r14
	jle	.label_2218
	lea	rax, [rbx + 0x28]
	cmp	dword ptr [rbx + 0x90], 2
	jl	.label_2179
	mov	qword ptr [rbx + 0x20], 0
.label_2179:
	mov	rcx, qword ptr [rbx + 0x50]
	mov	qword ptr [rbx + 0x58], rcx
	mov	rcx, qword ptr [rbx + 0x60]
	mov	qword ptr [rbx + 0x68], rcx
	mov	byte ptr [rbx + 0x8c], 0
	lea	ecx, [r15 + r15]
	and	ecx, 2
	xor	ecx, 6
	xorps	xmm0, xmm0
	movups	xmmword ptr [rax], xmm0
	mov	qword ptr [rax + 0x10], 0
	mov	dword ptr [rbx + 0x70], ecx
	cmp	byte ptr [rbx + 0x8b], 0
	mov	r13, r14
	jne	.label_2183
	mov	rax, qword ptr [rbx]
	mov	qword ptr [rbx + 8], rax
	mov	r13, r14
.label_2183:
	test	r13, r13
	je	.label_2200
	cmp	r13, qword ptr [rbx + 0x38]
	jge	.label_2198
	cmp	byte ptr [rbx + 0x8c], 0
	jne	.label_2201
	lea	rsi, [r13 - 1]
	mov	rdi, rbx
	mov	edx, r15d
	call	re_string_context_at
	mov	dword ptr [rbx + 0x70], eax
	cmp	dword ptr [rbx + 0x90], 2
	jl	.label_2205
	mov	rdi, qword ptr [rbx + 0x10]
	mov	rdx, qword ptr [rbx + 0x30]
	lea	rsi, [rdi + r13*4]
	sub	rdx, r13
	shl	rdx, 2
	call	memmove
.label_2205:
	cmp	byte ptr [rbx + 0x8b], 0
	jne	.label_2210
.label_2197:
	sub	qword ptr [rbx + 0x30], r13
	sub	qword ptr [rbx + 0x38], r13
.label_2180:
	cmp	byte ptr [rbx + 0x8b], 0
	jne	.label_2200
	add	qword ptr [rbx + 8], r13
.label_2200:
	mov	qword ptr [rbx + 0x28], r14
	sub	qword ptr [rbx + 0x58], r13
	sub	qword ptr [rbx + 0x68], r13
	cmp	dword ptr [rbx + 0x90], 2
	jl	.label_2191
	cmp	byte ptr [rbx + 0x88], 0
	je	.label_2219
	mov	rdi, rbx
	call	build_wcs_upper_buffer
	test	eax, eax
	jne	.label_2176
	jmp	.label_2177
.label_2191:
	cmp	byte ptr [rbx + 0x8b], 0
	jne	.label_2178
	mov	rax, qword ptr [rbx + 0x58]
	mov	qword ptr [rbx + 0x30], rax
	jmp	.label_2177
.label_2219:
	mov	rdi, rbx
	call	build_wcs_buffer
.label_2177:
	mov	qword ptr [rbx + 0x48], 0
	xor	eax, eax
.label_2176:
	add	rsp, 0x28
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_2218:
	mov	r13, r14
	sub	r13, rax
	jmp	.label_2183
.label_2198:
	mov	rdx, qword ptr [rbx + 0x30]
	cmp	byte ptr [rbx + 0x8c], 0
	jne	.label_2193
.label_2185:
	mov	qword ptr [rbx + 0x30], 0
	cmp	dword ptr [rbx + 0x90], 2
	jl	.label_2195
	mov	qword ptr [rsp + 0x18], rdx
	mov	dword ptr [rsp + 8], 0xffffffff
	cmp	byte ptr [rbx + 0x89], 0
	je	.label_2199
	mov	rcx, qword ptr [rbx]
	mov	rdx, qword ptr [rbx + 0x28]
	add	rdx, rcx
	movsxd	rsi, dword ptr [rbx + 0x90]
	mov	rax, r13
	sub	rax, rsi
	add	rax, rdx
	cmp	rax, rcx
	cmovb	rax, rcx
	lea	r12, [rdx + r13]
	mov	rbp, r12
.label_2211:
	dec	rbp
	cmp	rbp, rax
	jb	.label_2175
	movzx	ecx, byte ptr [rbp]
	and	cl, 0xc0
	cmp	cl, 0x80
	je	.label_2211
	add	rdx, qword ptr [rbx + 0x58]
	sub	rdx, rbp
	cmp	qword ptr [rbx + 0x78], 0
	mov	rsi, rbp
	jne	.label_2213
.label_2194:
	mov	qword ptr [rsp + 0x20], 0
	lea	rdi, [rsp + 0xc]
	lea	rcx, [rsp + 0x20]
	call	rpl_mbrtowc
	sub	r12, rbp
	mov	rcx, rax
	sub	rcx, r12
	jb	.label_2175
	cmp	rax, -3
	ja	.label_2175
	mov	qword ptr [rbx + 0x20], 0
	mov	qword ptr [rbx + 0x30], rcx
	mov	eax, dword ptr [rsp + 0xc]
	mov	dword ptr [rsp + 8], eax
.label_2175:
	mov	edi, dword ptr [rsp + 8]
	cmp	edi, -1
	jne	.label_2181
.label_2199:
	lea	rdx, [rsp + 8]
	mov	rdi, rbx
	mov	rsi, r14
	call	re_string_skip_chars
	sub	rax, r14
	mov	qword ptr [rbx + 0x30], rax
	mov	edi, dword ptr [rsp + 8]
	cmp	edi, -1
	je	.label_2186
.label_2181:
	cmp	byte ptr [rbx + 0x8e], 0
	jne	.label_2190
	mov	ecx, dword ptr [rsp + 8]
.label_2192:
	xor	eax, eax
	cmp	ecx, 0xa
	jne	.label_2189
	xor	eax, eax
	cmp	byte ptr [rbx + 0x8d], 0
	setne	al
	add	eax, eax
	jmp	.label_2189
.label_2201:
	mov	rax, qword ptr [rbx + 0x18]
	mov	rsi, qword ptr [rbx + 0x30]
	xor	edx, edx
.label_2208:
	lea	rdi, [rdx + rsi]
	mov	rcx, rdi
	shr	rcx, 0x3f
	add	rcx, rdi
	sar	rcx, 1
	cmp	qword ptr [rax + rcx*8], r13
	mov	rdi, rcx
	jg	.label_2202
	jge	.label_2206
	lea	rdx, [rcx + 1]
	mov	rdi, rsi
.label_2202:
	cmp	rdx, rdi
	mov	rsi, rdi
	jl	.label_2208
.label_2206:
	mov	rax, qword ptr [rbx + 0x18]
	xor	edx, edx
	cmp	qword ptr [rax + rcx*8], r13
	setl	dl
	lea	rbp, [rdx + rcx]
	lea	rsi, [rdx + rcx - 1]
	mov	rdi, rbx
	mov	edx, r15d
	call	re_string_context_at
	mov	dword ptr [rbx + 0x70], eax
	mov	rdx, qword ptr [rbx + 0x30]
	sub	rdx, r13
	jle	.label_2214
	cmp	rbp, r13
	jne	.label_2214
	mov	rax, qword ptr [rbx + 0x18]
	cmp	qword ptr [rax + rbp*8], r13
	jne	.label_2214
	mov	rdi, qword ptr [rbx + 0x10]
	lea	rsi, [rdi + r13*4]
	shl	rdx, 2
	call	memmove
	mov	rdi, qword ptr [rbx + 8]
	mov	rdx, qword ptr [rbx + 0x30]
	sub	rdx, r13
	lea	rsi, [rdi + r13]
	call	memmove
	mov	rax, qword ptr [rbx + 0x30]
	sub	rax, r13
	mov	qword ptr [rbx + 0x30], rax
	sub	qword ptr [rbx + 0x38], r13
	test	rax, rax
	jle	.label_2180
	mov	rax, qword ptr [rbx + 0x18]
	lea	rcx, [rax + r13*8]
	xor	edx, edx
.label_2196:
	mov	rsi, qword ptr [rcx + rdx*8]
	sub	rsi, r13
	mov	qword ptr [rax + rdx*8], rsi
	inc	rdx
	cmp	rdx, qword ptr [rbx + 0x30]
	jl	.label_2196
	jmp	.label_2180
.label_2210:
	mov	rdi, qword ptr [rbx + 8]
	mov	rdx, qword ptr [rbx + 0x30]
	sub	rdx, r13
	lea	rsi, [rdi + r13]
	call	memmove
	jmp	.label_2197
.label_2214:
	mov	rax, r13
	sub	rax, r14
	mov	rcx, qword ptr [rbx + 0x50]
	add	rcx, rax
	mov	qword ptr [rbx + 0x58], rcx
	add	rax, qword ptr [rbx + 0x60]
	mov	qword ptr [rbx + 0x68], rax
	mov	byte ptr [rbx + 0x8c], 0
.label_2203:
	mov	rax, rbp
	test	rax, rax
	jle	.label_2216
	lea	rbp, [rax - 1]
	mov	rcx, qword ptr [rbx + 0x18]
	cmp	qword ptr [rcx + rax*8 - 8], r13
	je	.label_2203
.label_2216:
	cmp	rax, qword ptr [rbx + 0x30]
	jge	.label_2207
	mov	rcx, qword ptr [rbx + 0x10]
.label_2187:
	cmp	dword ptr [rcx + rax*4], -1
	jne	.label_2207
	inc	rax
	cmp	rax, qword ptr [rbx + 0x30]
	jl	.label_2187
.label_2207:
	cmp	rax, qword ptr [rbx + 0x30]
	jne	.label_2209
	mov	qword ptr [rbx + 0x30], 0
	jmp	.label_2188
.label_2178:
	cmp	byte ptr [rbx + 0x88], 0
	je	.label_2215
	mov	rdi, rbx
	call	build_upper_buffer
	jmp	.label_2177
.label_2195:
	mov	rax, qword ptr [rbx + 0x28]
	add	rax, r13
	mov	rcx, qword ptr [rbx]
	mov	bpl, byte ptr [rcx + rax - 1]
	movzx	eax, bpl
	mov	qword ptr [rbx + 0x38], 0
	mov	rcx, qword ptr [rbx + 0x78]
	test	rcx, rcx
	je	.label_2217
	mov	bpl, byte ptr [rcx + rax]
.label_2217:
	mov	rdi, qword ptr [rbx + 0x80]
	movzx	esi, bpl
	call	bitset_contain
	mov	ecx, 1
	test	al, al
	jne	.label_2182
	xor	ecx, ecx
	cmp	bpl, 0xa
	jne	.label_2182
	xor	ecx, ecx
	cmp	byte ptr [rbx + 0x8d], 0
	setne	cl
	add	ecx, ecx
.label_2182:
	mov	dword ptr [rbx + 0x70], ecx
	jmp	.label_2180
.label_2209:
	mov	rcx, qword ptr [rbx + 0x18]
	mov	rax, qword ptr [rcx + rax*8]
	sub	rax, r13
	mov	qword ptr [rbx + 0x30], rax
	je	.label_2188
	mov	r15, qword ptr [rbx + 0x30]
	test	r15, r15
	jle	.label_2184
	mov	rdi, qword ptr [rbx + 0x10]
	mov	r15, qword ptr [rbx + 0x30]
	test	r15, r15
	mov	edx, 1
	cmovg	rdx, r15
	shl	rdx, 2
	mov	esi, 0xff
	call	memset
.label_2184:
	mov	rdi, qword ptr [rbx + 8]
	mov	esi, 0xff
	mov	rdx, r15
	call	memset
	jmp	.label_2188
.label_2215:
	cmp	qword ptr [rbx + 0x78], 0
	je	.label_2177
	mov	rdi, rbx
	call	re_string_translate_buffer
	jmp	.label_2177
.label_2186:
	mov	rsi, qword ptr [rsp + 0x18]
	dec	rsi
	mov	rdi, rbx
	mov	edx, r15d
	call	re_string_context_at
.label_2189:
	mov	dword ptr [rbx + 0x70], eax
	cmp	qword ptr [rbx + 0x30], 0
	jne	.label_2212
.label_2188:
	mov	rax, qword ptr [rbx + 0x30]
	mov	qword ptr [rbx + 0x38], rax
	jmp	.label_2180
.label_2193:
	mov	rax, r13
	sub	rax, r14
	mov	rcx, qword ptr [rbx + 0x50]
	add	rcx, rax
	mov	qword ptr [rbx + 0x58], rcx
	add	rax, qword ptr [rbx + 0x60]
	mov	qword ptr [rbx + 0x68], rax
	mov	byte ptr [rbx + 0x8c], 0
	jmp	.label_2185
.label_2212:
	mov	r15, qword ptr [rbx + 0x30]
	test	r15, r15
	jle	.label_2174
	mov	rdi, qword ptr [rbx + 0x10]
	mov	r15, qword ptr [rbx + 0x30]
	test	r15, r15
	mov	edx, 1
	cmovg	rdx, r15
	shl	rdx, 2
	mov	esi, 0xff
	call	memset
.label_2174:
	cmp	byte ptr [rbx + 0x8b], 0
	jne	.label_2184
	jmp	.label_2188
.label_2190:
	call	iswalnum
	test	eax, eax
	mov	eax, 1
	jne	.label_2189
	mov	ecx, dword ptr [rsp + 8]
	cmp	ecx, 0x5f
	jne	.label_2192
	jmp	.label_2189
.label_2213:
	lea	rsi, [rsp + 0x12]
	cmp	rdx, 7
	mov	eax, 6
	cmovl	rax, rdx
	cmp	rdx, 6
	mov	ecx, 6
	cmovl	ecx, edx
	test	ecx, ecx
	jle	.label_2194
	movsxd	r10, eax
	lea	r8, [rsp + r10 + 0x11]
	lea	r9, [rbp + r10 - 1]
	xor	ecx, ecx
.label_2204:
	movzx	edi, byte ptr [r9 + rcx]
	mov	rax, qword ptr [rbx + 0x78]
	movzx	eax, byte ptr [rax + rdi]
	mov	byte ptr [r8 + rcx], al
	lea	rax, [r10 + rcx - 1]
	dec	rcx
	inc	rax
	cmp	rax, 1
	jg	.label_2204
	jmp	.label_2194
	.section	.text
	.align	32
	#Procedure 0x416cbd
	.globl sub_416cbd
	.type sub_416cbd, @function
sub_416cbd:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x416cc0

	.globl re_node_set_merge
	.type re_node_set_merge, @function
re_node_set_merge:
	push	r15
	push	r14
	push	r12
	push	rbx
	push	rax
	mov	r15, rsi
	mov	r14, rdi
	test	r15, r15
	je	.label_2220
	mov	rax, qword ptr [r15 + 8]
	test	rax, rax
	je	.label_2220
	mov	rbx, qword ptr [r14]
	mov	rcx, qword ptr [r14 + 8]
	lea	rdx, [rcx + rax*2]
	cmp	rbx, rdx
	jge	.label_2227
	add	rbx, rax
	mov	rdi, qword ptr [r14 + 0x10]
	mov	rsi, rbx
	shl	rsi, 4
	call	realloc
	mov	rcx, rax
	mov	eax, 0xc
	test	rcx, rcx
	je	.label_2222
	add	rbx, rbx
	mov	qword ptr [r14 + 0x10], rcx
	mov	qword ptr [r14], rbx
	mov	rcx, qword ptr [r14 + 8]
.label_2227:
	mov	rax, qword ptr [r15 + 8]
	test	rcx, rcx
	je	.label_2228
	lea	r12, [rcx + rax*2]
	dec	rax
	dec	rcx
	mov	rdx, rax
	or	rdx, rcx
	js	.label_2230
	mov	rdx, qword ptr [r14 + 0x10]
	mov	rsi, qword ptr [r15 + 0x10]
	jmp	.label_2221
.label_2226:
	dec	rax
.label_2232:
	dec	rcx
	jmp	.label_2224
	.section	.text
	.align	32
	#Procedure 0x416d57
	.globl sub_416d57
	.type sub_416d57, @function
sub_416d57:

	nop	word ptr [rax + rax]
.label_2221:
	mov	rdi, qword ptr [rsi + rax*8]
	cmp	qword ptr [rdx + rcx*8], rdi
	je	.label_2226
	jge	.label_2232
	dec	rax
	mov	qword ptr [rdx + r12*8 - 8], rdi
	dec	r12
.label_2224:
	mov	rdi, rax
	or	rdi, rcx
	jns	.label_2221
.label_2230:
	test	rax, rax
	js	.label_2233
	lea	rcx, [rax + 1]
	sub	r12, rcx
	lea	rdi, [r12*8]
	add	rdi, qword ptr [r14 + 0x10]
	mov	rsi, qword ptr [r15 + 0x10]
	lea	rdx, [rax*8 + 8]
	call	memcpy
.label_2233:
	mov	r9, qword ptr [r14 + 8]
	mov	rax, qword ptr [r15 + 8]
	lea	rcx, [r9 + rax*2 - 1]
	mov	rsi, rcx
	sub	rsi, r12
	inc	rsi
	je	.label_2220
	lea	rax, [rsi + r9]
	mov	qword ptr [r14 + 8], rax
	mov	rdi, qword ptr [r14 + 0x10]
.label_2223:
	lea	r8, [r9 - 1]
	lea	rdx, [rsi*8]
	nop	dword ptr [rax + rax]
.label_2229:
	mov	rax, qword ptr [rdi + rcx*8]
	mov	rbx, qword ptr [rdi + r9*8 - 8]
	cmp	rax, rbx
	jle	.label_2231
	dec	rcx
	lea	rbx, [rdi + rdx]
	add	rdx, -8
	dec	rsi
	mov	qword ptr [rbx + r9*8 - 8], rax
	jne	.label_2229
	jmp	.label_2220
	.section	.text
	.align	32
	#Procedure 0x416e05
	.globl sub_416e05
	.type sub_416e05, @function
sub_416e05:

	nop	word ptr cs:[rax + rax]
.label_2231:
	lea	rax, [rdi + rdx]
	mov	qword ptr [rax + r9*8 - 8], rbx
	cmp	r9, 1
	mov	r9, r8
	jg	.label_2223
	mov	rdi, qword ptr [r14 + 0x10]
	lea	rsi, [rdi + r12*8]
.label_2225:
	call	memcpy
.label_2220:
	xor	eax, eax
.label_2222:
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	ret	
.label_2228:
	mov	qword ptr [r14 + 8], rax
	mov	rdi, qword ptr [r14 + 0x10]
	mov	rdx, qword ptr [r15 + 8]
	mov	rsi, qword ptr [r15 + 0x10]
	shl	rdx, 3
	jmp	.label_2225
	.section	.text
	.align	32
	#Procedure 0x416e53
	.globl sub_416e53
	.type sub_416e53, @function
sub_416e53:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x416e60

	.globl is_basic
	.type is_basic, @function
is_basic:
	mov	eax, edi
	shr	eax, 3
	and	eax, 0x1c
	mov	eax,  dword ptr [dword ptr [rax + is_basic_table]]
	bt	eax, edi
	setb	al
	ret	
	.section	.text
	.align	32
	#Procedure 0x416e75
	.globl sub_416e75
	.type sub_416e75, @function
sub_416e75:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x416e80

	.globl default_block_size
	.type default_block_size, @function
default_block_size:
	push	rax
	mov	edi, OFFSET FLAT:label_2234
	call	getenv
	test	rax, rax
	mov	ecx, 0x200
	mov	eax, 0x400
	cmovne	rax, rcx
	pop	rcx
	ret	
	.section	.text
	.align	32
	#Procedure 0x416e9e
	.globl sub_416e9e
	.type sub_416e9e, @function
sub_416e9e:

	nop	
	.section	.text
	.align	32
	#Procedure 0x416ea0

	.globl version_etc
	.type version_etc, @function
version_etc:
	sub	rsp, 0xd8
	test	al, al
	je	.label_2235
	movaps	xmmword ptr [rsp + 0x50], xmm0
	movaps	xmmword ptr [rsp + 0x60], xmm1
	movaps	xmmword ptr [rsp + 0x70], xmm2
	movaps	xmmword ptr [rsp + 0x80], xmm3
	movaps	xmmword ptr [rsp + 0x90], xmm4
	movaps	xmmword ptr [rsp + 0xa0], xmm5
	movaps	xmmword ptr [rsp + 0xb0], xmm6
	movaps	xmmword ptr [rsp + 0xc0], xmm7
.label_2235:
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
	#Procedure 0x416f23
	.globl sub_416f23
	.type sub_416f23, @function
sub_416f23:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x416f30

	.globl proceed_next_node
	.type proceed_next_node, @function
proceed_next_node:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x28
	mov	rbx, r8
	mov	rbp, rdi
	mov	r15, qword ptr [rbp + 0x98]
	mov	rax, qword ptr [r15]
	mov	r14, rbx
	shl	r14, 4
	mov	edi, dword ptr [rax + r14 + 8]
	test	dil, 8
	mov	qword ptr [rsp + 0x10], r9
	mov	qword ptr [rsp + 8], rcx
	jne	.label_2242
	test	edi, 0x100000
	jne	.label_2245
	movzx	ecx, dil
	cmp	ecx, 4
	jne	.label_2241
	mov	rax, qword ptr [rax + r14]
	shl	rax, 4
	mov	rdi, qword ptr [rdx + rax + 0x10]
	mov	rax, qword ptr [rdx + rax + 0x18]
	mov	r12, rax
	sub	r12, rdi
	cmp	qword ptr [rsp + 0x60], 0
	je	.label_2239
	cmp	rax, -1
	mov	r13, -1
	je	.label_2237
	cmp	rdi, -1
	je	.label_2237
	test	r12, r12
	je	.label_2243
	mov	rax, qword ptr [rbp + 0x30]
	mov	rcx, qword ptr [rsp + 8]
	mov	rsi, qword ptr [rcx]
	sub	rax, rsi
	cmp	rax, r12
	jl	.label_2237
	mov	rax, qword ptr [rbp + 8]
	add	rdi, rax
	add	rsi, rax
	mov	rdx, r12
	call	memcmp
	test	eax, eax
	jne	.label_2237
	jmp	.label_2236
.label_2242:
	mov	qword ptr [rsp + 0x18], rsi
	mov	qword ptr [rsp + 0x20], rdx
	mov	rax, qword ptr [rcx]
	mov	rcx, qword ptr [rbp + 0xb8]
	mov	r14, qword ptr [rcx + rax*8]
	mov	rbp, qword ptr [r15 + 0x28]
	mov	rdi, r9
	mov	rsi, rbx
	call	re_node_set_insert
	mov	r13, -2
	test	al, al
	je	.label_2237
	lea	rax, [rbx + rbx*2]
	mov	r13, -1
	cmp	qword ptr [rbp + rax*8 + 8], 0
	jle	.label_2237
	add	r14, 8
	lea	r15, [rbp + rax*8 + 8]
	mov	r12, qword ptr [rbp + rax*8 + 0x10]
	mov	r13, -1
	xor	ebp, ebp
	nop	word ptr [rax + rax]
.label_2240:
	mov	rbx, qword ptr [r12 + rbp*8]
	mov	rdi, r14
	mov	rsi, rbx
	call	re_node_set_contains
	test	rax, rax
	je	.label_2247
	cmp	r13, -1
	jne	.label_2238
	mov	r13, rbx
.label_2247:
	inc	rbp
	cmp	rbp, qword ptr [r15]
	jl	.label_2240
	jmp	.label_2237
.label_2245:
	mov	rcx, qword ptr [rcx]
	mov	rdi, r15
	mov	rsi, rbx
	mov	rdx, rbp
	call	check_node_accept_bytes
	test	eax, eax
	je	.label_2241
	movsxd	r12, eax
	jmp	.label_2236
.label_2238:
	mov	rbp, qword ptr [rsp + 0x10]
	mov	rdi, rbp
	mov	rsi, r13
	call	re_node_set_contains
	test	rax, rax
	jne	.label_2244
	mov	rdi, qword ptr [rsp + 0x60]
	test	rdi, rdi
	je	.label_2237
	mov	rax, qword ptr [rsp + 8]
	mov	rsi, qword ptr [rax]
	mov	rdx, rbx
	mov	rcx, qword ptr [rsp + 0x18]
	mov	r8, qword ptr [rsp + 0x20]
	mov	r9, rbp
	call	push_fail_stack
	mov	rbx, -2
	test	eax, eax
	jne	.label_2244
	jmp	.label_2237
.label_2239:
	test	r12, r12
	jne	.label_2236
.label_2243:
	mov	rdi, qword ptr [rsp + 0x10]
	mov	rsi, rbx
	call	re_node_set_insert
	mov	r13, -2
	test	al, al
	je	.label_2237
	mov	rax, qword ptr [r15 + 0x28]
	lea	rcx, [rbx + rbx*2]
	mov	rax, qword ptr [rax + rcx*8 + 0x10]
	mov	r13, qword ptr [rax]
	mov	rax, qword ptr [rsp + 8]
	mov	rax, qword ptr [rax]
	mov	rcx, qword ptr [rbp + 0xb8]
	mov	rdi, qword ptr [rcx + rax*8]
	add	rdi, 8
	mov	rsi, r13
	call	re_node_set_contains
	test	rax, rax
	jne	.label_2237
.label_2241:
	add	r14, qword ptr [r15]
	mov	rax, qword ptr [rsp + 8]
	mov	rdx, qword ptr [rax]
	mov	rdi, rbp
	mov	rsi, r14
	call	check_node_accept
	mov	r13, -1
	mov	r12d, 1
	test	al, al
	je	.label_2237
.label_2236:
	mov	rax, qword ptr [r15 + 0x18]
	mov	rbx, qword ptr [rax + rbx*8]
	mov	rax, qword ptr [rsp + 8]
	add	r12, qword ptr [rax]
	mov	qword ptr [rax], r12
	cmp	qword ptr [rsp + 0x60], 0
	je	.label_2246
	mov	r13, -1
	cmp	r12, qword ptr [rbp + 0xa8]
	jg	.label_2237
	mov	rax, qword ptr [rbp + 0xb8]
	mov	rdi, qword ptr [rax + r12*8]
	test	rdi, rdi
	je	.label_2237
	add	rdi, 8
	mov	rsi, rbx
	call	re_node_set_contains
	test	rax, rax
	je	.label_2237
.label_2246:
	mov	rax, qword ptr [rsp + 0x10]
	mov	qword ptr [rax + 8], 0
.label_2244:
	mov	r13, rbx
.label_2237:
	mov	rax, r13
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
	#Procedure 0x417201
	.globl sub_417201
	.type sub_417201, @function
sub_417201:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x417210

	.globl string_compare_ci
	.type string_compare_ci, @function
string_compare_ci:
	push	rax
	call	mbscasecmp
	test	eax, eax
	sete	al
	pop	rcx
	ret	
	.section	.text
	.align	32
	#Procedure 0x41721d
	.globl sub_41721d
	.type sub_41721d, @function
sub_41721d:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x417220
	.globl rotl64
	.type rotl64, @function
rotl64:

	mov	ecx, esi
	rol	rdi, cl
	mov	rax, rdi
	ret	
	.section	.text
	.align	32
	#Procedure 0x417229
	.globl sub_417229
	.type sub_417229, @function
sub_417229:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x417230

	.globl get_stat_ctime
	.type get_stat_ctime, @function
get_stat_ctime:
	mov	rax, qword ptr [rdi + 0x68]
	mov	rdx, qword ptr [rdi + 0x70]
	ret	
	.section	.text
	.align	32
	#Procedure 0x417239
	.globl sub_417239
	.type sub_417239, @function
sub_417239:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x417240

	.globl hash_get_n_entries
	.type hash_get_n_entries, @function
hash_get_n_entries:
	mov	rax, qword ptr [rdi + 0x20]
	ret	
	.section	.text
	.align	32
	#Procedure 0x417245
	.globl sub_417245
	.type sub_417245, @function
sub_417245:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x417250

	.globl di_ent_free
	.type di_ent_free, @function
di_ent_free:
	push	rbx
	mov	rbx, rdi
	mov	rdi, qword ptr [rbx + 8]
	call	hash_free
	mov	rdi, rbx
	pop	rbx
	jmp	free
	.section	.text
	.align	32
	#Procedure 0x417266
	.globl sub_417266
	.type sub_417266, @function
sub_417266:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x417270

	.globl optimize_utf8
	.type optimize_utf8, @function
optimize_utf8:
	cmp	qword ptr [rdi + 0x10], 0
	je	.label_2264
	mov	r11, qword ptr [rdi]
	xor	r9d, r9d
	movabs	r8, 0x1000000010001
	xor	r10d, r10d
	xor	eax, eax
.label_2274:
	mov	rsi, rax
	shl	rsi, 4
	mov	cl, byte ptr [r11 + rsi + 8]
	dec	cl
	movzx	ecx, cl
	cmp	cl, 0xb
	ja	.label_2262
	lea	rdx, [r11 + rsi]
	jmp	qword ptr [word ptr [+ (rcx * 8) + label_2291]]
.label_3026:
	cmp	byte ptr [rdx], 0
	mov	cl, 1
	js	.label_2266
	mov	ecx, r10d
.label_2266:
	mov	r10b, cl
	jmp	.label_2268
.label_3027:
	mov	rcx, qword ptr [rdi]
	mov	rsi, qword ptr [rcx + rsi]
	mov	ecx, 2
.label_2270:
	cmp	qword ptr [rsi + rcx*8], 0
	jne	.label_2269
	inc	rcx
	cmp	rcx, 3
	jle	.label_2270
	jmp	.label_2268
.label_3028:
	mov	r9b, 1
	jmp	.label_2268
.label_3029:
	mov	ecx, dword ptr [rdx]
	lea	edx, [rcx - 0x10]
	cmp	edx, 0x30
	ja	.label_2271
	bt	r8, rdx
	jb	.label_2268
.label_2271:
	cmp	ecx, 0x80
	jne	.label_2269
	nop	word ptr [rax + rax]
.label_2268:
	inc	rax
	cmp	rax, qword ptr [rdi + 0x10]
	jb	.label_2274
	jmp	.label_2275
.label_2264:
	xor	r10d, r10d
	xor	r9d, r9d
.label_2275:
	mov	r8d, r9d
	and	r8b, 1
	or	r10b, r9b
	test	r10b, 1
	je	.label_2276
	cmp	qword ptr [rdi + 0x10], 0
	je	.label_2276
	xor	eax, eax
	mov	ecx, 8
	nop	word ptr cs:[rax + rax]
.label_2289:
	mov	rsi, qword ptr [rdi]
	mov	edx, dword ptr [rsi + rcx]
	cmp	dl, 1
	jne	.label_2284
	cmp	byte ptr [rsi + rcx - 8], 0
	js	.label_2286
.label_2284:
	mov	rdx, qword ptr [rdi]
	mov	esi, dword ptr [rdx + rcx]
	cmp	sil, 5
	jne	.label_2287
	and	esi, 0xffffff00
	or	esi, 7
	mov	dword ptr [rdx + rcx], esi
	jmp	.label_2287
.label_2286:
	and	edx, 0xffdfffff
	mov	dword ptr [rsi + rcx], edx
	nop	word ptr cs:[rax + rax]
.label_2287:
	inc	rax
	add	rcx, 0x10
	cmp	rax, qword ptr [rdi + 0x10]
	jb	.label_2289
.label_2276:
	mov	dword ptr [rdi + 0xb4], 1
	mov	al, byte ptr [rdi + 0xb0]
	cmp	qword ptr [rdi + 0x98], 0
	setg	cl
	or	cl, r8b
	add	cl, cl
	and	al, 0xf9
	or	al, cl
	mov	byte ptr [rdi + 0xb0], al
.label_2269:
	ret	
.label_2262:
	push	rax
	call	abort
	.section	.text
	.align	32
	#Procedure 0x4173ce
	.globl sub_4173ce
	.type sub_4173ce, @function
sub_4173ce:

	nop	
	.section	.text
	.align	32
	#Procedure 0x4173d0

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
	je	.label_2293
	mov	esi, OFFSET FLAT:label_2294
	jmp	.label_2295
.label_2293:
	mov	esi, OFFSET FLAT:label_2296
.label_2295:
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
	#Procedure 0x417440
	.globl quotearg_alloc
	.type quotearg_alloc, @function
quotearg_alloc:

	mov	rax, rdx
	xor	edx, edx
	mov	rcx, rax
	jmp	quotearg_alloc_mem
	.section	.text
	.align	32
	#Procedure 0x41744a
	.globl sub_41744a
	.type sub_41744a, @function
sub_41744a:

	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x417450

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
	je	.label_2297
	mov	qword ptr [rax], rbx
.label_2297:
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
	#Procedure 0x41753c
	.globl sub_41753c
	.type sub_41753c, @function
sub_41753c:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x417540

	.globl hash_get_n_buckets
	.type hash_get_n_buckets, @function
hash_get_n_buckets:
	mov	rax, qword ptr [rdi + 0x10]
	ret	
	.section	.text
	.align	32
	#Procedure 0x417545
	.globl sub_417545
	.type sub_417545, @function
sub_417545:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x417550

	.globl compute_bucket_size
	.type compute_bucket_size, @function
compute_bucket_size:
	cmp	byte ptr [rsi + 0x10], 0
	jne	.label_2298
	mov	eax, edi
	and	eax, 1
	test	rdi, rdi
	js	.label_2301
	cvtsi2ss	xmm0, rdi
	jmp	.label_2299
.label_2301:
	shr	rdi, 1
	or	rax, rdi
	cvtsi2ss	xmm0, rax
	addss	xmm0, xmm0
.label_2299:
	divss	xmm0, dword ptr [rsi + 8]
	movss	xmm1,  dword ptr [dword ptr [rip + label_442]]
	movaps	xmm2, xmm0
	subss	xmm2, xmm1
	cvttss2si	rax, xmm2
	movabs	rcx, 0x8000000000000000
	xor	rcx, rax
	cvttss2si	rdi, xmm0
	ucomiss	xmm0, xmm1
	cmovae	rdi, rcx
	xor	eax, eax
	ucomiss	xmm0,  dword ptr [dword ptr [rip + label_438]]
	jae	.label_2300
.label_2298:
	push	rax
	call	next_prime
	mov	rcx, rax
	xor	eax, eax
	mov	rdx, rcx
	shr	rdx, 0x3c
	cmove	rax, rcx
	add	rsp, 8
.label_2300:
	ret	
	.section	.text
	.align	32
	#Procedure 0x4175ce
	.globl sub_4175ce
	.type sub_4175ce, @function
sub_4175ce:

	nop	
	.section	.text
	.align	32
	#Procedure 0x4175d0

	.globl re_string_construct
	.type re_string_construct, @function
re_string_construct:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	push	rax
	mov	r14, r9
	mov	r13d, r8d
	mov	r12, rcx
	mov	r15, rdx
	mov	rbp, rsi
	mov	rbx, rdi
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
	mov	qword ptr [rbx + 0x90], 0
	movzx	r8d, r13b
	mov	rdi, rbp
	mov	rsi, r15
	mov	rdx, rbx
	call	re_string_construct_common
	test	r15, r15
	jle	.label_2310
	lea	rsi, [r15 + 1]
	mov	rdi, rbx
	call	re_string_realloc_buffers
	test	eax, eax
	jne	.label_2302
.label_2310:
	cmp	byte ptr [rbx + 0x8b], 0
	je	.label_2303
	mov	rbp, qword ptr [rbx + 8]
.label_2303:
	mov	qword ptr [rbx + 8], rbp
	mov	eax, dword ptr [r14 + 0xb4]
	test	r13b, r13b
	je	.label_2305
	cmp	eax, 2
	jl	.label_2309
	nop	
.label_2308:
	mov	rdi, rbx
	call	build_wcs_upper_buffer
	test	eax, eax
	jne	.label_2302
	xor	eax, eax
	cmp	qword ptr [rbx + 0x38], r15
	jge	.label_2302
	mov	rsi, qword ptr [rbx + 0x40]
	movsxd	rcx, dword ptr [r14 + 0xb4]
	add	rcx, qword ptr [rbx + 0x30]
	cmp	rsi, rcx
	jg	.label_2302
	add	rsi, rsi
	mov	rdi, rbx
	call	re_string_realloc_buffers
	test	eax, eax
	je	.label_2308
	jmp	.label_2302
.label_2307:
	mov	rax, qword ptr [rbx + 0x40]
	mov	qword ptr [rbx + 0x30], rax
	mov	qword ptr [rbx + 0x38], rax
.label_2306:
	xor	eax, eax
.label_2302:
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
	#Procedure 0x4176c6
	.globl sub_4176c6
	.type sub_4176c6, @function
sub_4176c6:

	nop	
.label_2309:
	mov	rdi, rbx
	call	build_upper_buffer
	jmp	.label_2306
.label_2305:
	cmp	eax, 2
	jl	.label_2304
	mov	rdi, rbx
	call	build_wcs_buffer
	jmp	.label_2306
.label_2304:
	test	r12, r12
	je	.label_2307
	mov	rdi, rbx
	call	re_string_translate_buffer
	jmp	.label_2306
	.section	.text
	.align	32
	#Procedure 0x4176f0

	.globl build_charclass
	.type build_charclass, @function
build_charclass:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	push	rax
	mov	r12, r8
	mov	r13, rcx
	mov	rbx, rdx
	mov	r15, rsi
	mov	r14, rdi
	test	r9d, 0x400000
	je	.label_2331
	mov	esi, OFFSET FLAT:label_2315
	mov	rdi, r12
	call	strcmp
	test	eax, eax
	je	.label_2322
	mov	esi, OFFSET FLAT:label_2324
	mov	rdi, r12
	call	strcmp
	test	eax, eax
	jne	.label_2331
.label_2322:
	mov	r12d, OFFSET FLAT:label_2333
.label_2331:
	mov	rbp, qword ptr [rbx + 0x48]
	cmp	qword ptr [r13], rbp
	je	.label_2335
.label_2358:
	mov	rdi, r12
	call	wctype
	mov	rcx, qword ptr [rbx + 0x48]
	lea	rdx, [rcx + 1]
	mov	qword ptr [rbx + 0x48], rdx
	mov	rdx, qword ptr [rbx + 0x18]
	mov	qword ptr [rdx + rcx*8], rax
	mov	esi, OFFSET FLAT:label_2279
	mov	rdi, r12
	call	strcmp
	test	eax, eax
	je	.label_2349
	mov	esi, OFFSET FLAT:label_2351
	mov	rdi, r12
	call	strcmp
	test	eax, eax
	je	.label_2360
	mov	esi, OFFSET FLAT:label_2324
	mov	rdi, r12
	call	strcmp
	test	eax, eax
	je	.label_2363
	mov	esi, OFFSET FLAT:label_2265
	mov	rdi, r12
	call	strcmp
	test	eax, eax
	je	.label_2366
	mov	esi, OFFSET FLAT:label_2333
	mov	rdi, r12
	call	strcmp
	test	eax, eax
	je	.label_2371
	mov	esi, OFFSET FLAT:label_2373
	mov	rdi, r12
	call	strcmp
	test	eax, eax
	je	.label_2378
	mov	esi, OFFSET FLAT:label_2380
	mov	rdi, r12
	call	strcmp
	test	eax, eax
	je	.label_2383
	mov	esi, OFFSET FLAT:label_2315
	mov	rdi, r12
	call	strcmp
	test	eax, eax
	je	.label_2345
	mov	esi, OFFSET FLAT:label_2342
	mov	rdi, r12
	call	strcmp
	test	eax, eax
	je	.label_2319
	mov	esi, OFFSET FLAT:label_2323
	mov	rdi, r12
	call	strcmp
	test	eax, eax
	je	.label_2330
	mov	esi, OFFSET FLAT:label_2334
	mov	rdi, r12
	call	strcmp
	test	eax, eax
	je	.label_2339
	mov	esi, OFFSET FLAT:label_2341
	mov	rdi, r12
	call	strcmp
	mov	ecx, eax
	mov	eax, 4
	test	ecx, ecx
	jne	.label_2313
	call	__ctype_b_loc
	mov	r12, rax
	xor	ebx, ebx
	test	r14, r14
	jne	.label_2326
.label_2347:
	mov	rax, qword ptr [r12]
	test	byte ptr [rax + rbx*2 + 1], 0x10
	je	.label_2352
	mov	rdi, r15
	mov	rsi, rbx
	call	bitset_set
.label_2352:
	inc	rbx
	xor	eax, eax
	cmp	rbx, 0x100
	jne	.label_2347
	jmp	.label_2313
.label_2349:
	call	__ctype_b_loc
	mov	r12, rax
	xor	ebx, ebx
	test	r14, r14
	jne	.label_2384
	nop	word ptr [rax + rax]
.label_2375:
	mov	rax, qword ptr [r12]
	test	byte ptr [rax + rbx*2], 8
	je	.label_2369
	mov	rdi, r15
	mov	rsi, rbx
	call	bitset_set
.label_2369:
	inc	rbx
	xor	eax, eax
	cmp	rbx, 0x100
	jne	.label_2375
	jmp	.label_2313
.label_2360:
	call	__ctype_b_loc
	mov	r12, rax
	xor	ebx, ebx
	test	r14, r14
	jne	.label_2346
	nop	dword ptr [rax + rax]
.label_2316:
	mov	rax, qword ptr [r12]
	test	byte ptr [rax + rbx*2], 2
	je	.label_2311
	mov	rdi, r15
	mov	rsi, rbx
	call	bitset_set
.label_2311:
	inc	rbx
	xor	eax, eax
	cmp	rbx, 0x100
	jne	.label_2316
	jmp	.label_2313
.label_2363:
	call	__ctype_b_loc
	mov	r12, rax
	xor	ebx, ebx
	test	r14, r14
	jne	.label_2328
	nop	dword ptr [rax + rax]
.label_2343:
	mov	rax, qword ptr [r12]
	test	byte ptr [rax + rbx*2 + 1], 2
	je	.label_2337
	mov	rdi, r15
	mov	rsi, rbx
	call	bitset_set
.label_2337:
	inc	rbx
	xor	eax, eax
	cmp	rbx, 0x100
	jne	.label_2343
	jmp	.label_2313
.label_2366:
	call	__ctype_b_loc
	mov	r12, rax
	xor	ebx, ebx
	test	r14, r14
	jne	.label_2348
	nop	dword ptr [rax]
.label_2361:
	mov	rax, qword ptr [r12]
	test	byte ptr [rax + rbx*2 + 1], 0x20
	je	.label_2354
	mov	rdi, r15
	mov	rsi, rbx
	call	bitset_set
.label_2354:
	inc	rbx
	xor	eax, eax
	cmp	rbx, 0x100
	jne	.label_2361
	jmp	.label_2313
.label_2371:
	call	__ctype_b_loc
	mov	r12, rax
	xor	ebx, ebx
	test	r14, r14
	jne	.label_2321
	nop	dword ptr [rax]
.label_2376:
	mov	rax, qword ptr [r12]
	test	byte ptr [rax + rbx*2 + 1], 4
	je	.label_2355
	mov	rdi, r15
	mov	rsi, rbx
	call	bitset_set
.label_2355:
	inc	rbx
	xor	eax, eax
	cmp	rbx, 0x100
	jne	.label_2376
	jmp	.label_2313
.label_2378:
	call	__ctype_b_loc
	mov	r12, rax
	xor	ebx, ebx
	test	r14, r14
	jne	.label_2340
	nop	dword ptr [rax]
.label_2317:
	mov	rax, qword ptr [r12]
	test	byte ptr [rax + rbx*2 + 1], 8
	je	.label_2312
	mov	rdi, r15
	mov	rsi, rbx
	call	bitset_set
.label_2312:
	inc	rbx
	xor	eax, eax
	cmp	rbx, 0x100
	jne	.label_2317
	jmp	.label_2313
.label_2383:
	call	__ctype_b_loc
	mov	r12, rax
	xor	ebx, ebx
	test	r14, r14
	jne	.label_2329
	nop	dword ptr [rax]
.label_2382:
	mov	rax, qword ptr [r12]
	test	byte ptr [rax + rbx*2 + 1], 0x40
	je	.label_2318
	mov	rdi, r15
	mov	rsi, rbx
	call	bitset_set
.label_2318:
	inc	rbx
	xor	eax, eax
	cmp	rbx, 0x100
	jne	.label_2382
	jmp	.label_2313
.label_2345:
	call	__ctype_b_loc
	mov	r12, rax
	xor	ebx, ebx
	test	r14, r14
	jne	.label_2344
	nop	dword ptr [rax]
.label_2320:
	mov	rax, qword ptr [r12]
	test	byte ptr [rax + rbx*2 + 1], 1
	je	.label_2377
	mov	rdi, r15
	mov	rsi, rbx
	call	bitset_set
.label_2377:
	inc	rbx
	xor	eax, eax
	cmp	rbx, 0x100
	jne	.label_2320
	jmp	.label_2313
.label_2319:
	call	__ctype_b_loc
	mov	r12, rax
	xor	ebx, ebx
	test	r14, r14
	jne	.label_2336
	nop	dword ptr [rax]
.label_2374:
	mov	rax, qword ptr [r12]
	test	byte ptr [rax + rbx*2], 1
	je	.label_2327
	mov	rdi, r15
	mov	rsi, rbx
	call	bitset_set
.label_2327:
	inc	rbx
	xor	eax, eax
	cmp	rbx, 0x100
	jne	.label_2374
	jmp	.label_2313
.label_2384:
	mov	rax, qword ptr [r12]
	test	byte ptr [rax + rbx*2], 8
	je	.label_2381
	movzx	esi, byte ptr [r14 + rbx]
	mov	rdi, r15
	call	bitset_set
.label_2381:
	inc	rbx
	xor	eax, eax
	cmp	rbx, 0x100
	jne	.label_2384
	jmp	.label_2313
.label_2330:
	call	__ctype_b_loc
	mov	r12, rax
	xor	ebx, ebx
	test	r14, r14
	jne	.label_2353
.label_2372:
	mov	rax, qword ptr [r12]
	cmp	word ptr [rax + rbx*2], 0
	jns	.label_2325
	mov	rdi, r15
	mov	rsi, rbx
	call	bitset_set
.label_2325:
	inc	rbx
	xor	eax, eax
	cmp	rbx, 0x100
	jne	.label_2372
	jmp	.label_2313
.label_2346:
	mov	rax, qword ptr [r12]
	test	byte ptr [rax + rbx*2], 2
	je	.label_2365
	movzx	esi, byte ptr [r14 + rbx]
	mov	rdi, r15
	call	bitset_set
.label_2365:
	inc	rbx
	xor	eax, eax
	cmp	rbx, 0x100
	jne	.label_2346
	jmp	.label_2313
.label_2339:
	call	__ctype_b_loc
	mov	r12, rax
	xor	ebx, ebx
	test	r14, r14
	jne	.label_2364
.label_2362:
	mov	rax, qword ptr [r12]
	test	byte ptr [rax + rbx*2], 4
	je	.label_2350
	mov	rdi, r15
	mov	rsi, rbx
	call	bitset_set
.label_2350:
	inc	rbx
	xor	eax, eax
	cmp	rbx, 0x100
	jne	.label_2362
.label_2313:
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_2328:
	mov	rax, qword ptr [r12]
	test	byte ptr [rax + rbx*2 + 1], 2
	je	.label_2368
	movzx	esi, byte ptr [r14 + rbx]
	mov	rdi, r15
	call	bitset_set
.label_2368:
	inc	rbx
	xor	eax, eax
	cmp	rbx, 0x100
	jne	.label_2328
	jmp	.label_2313
.label_2348:
	mov	rax, qword ptr [r12]
	test	byte ptr [rax + rbx*2 + 1], 0x20
	je	.label_2379
	movzx	esi, byte ptr [r14 + rbx]
	mov	rdi, r15
	call	bitset_set
.label_2379:
	inc	rbx
	xor	eax, eax
	cmp	rbx, 0x100
	jne	.label_2348
	jmp	.label_2313
.label_2321:
	mov	rax, qword ptr [r12]
	test	byte ptr [rax + rbx*2 + 1], 4
	je	.label_2314
	movzx	esi, byte ptr [r14 + rbx]
	mov	rdi, r15
	call	bitset_set
.label_2314:
	inc	rbx
	xor	eax, eax
	cmp	rbx, 0x100
	jne	.label_2321
	jmp	.label_2313
.label_2340:
	mov	rax, qword ptr [r12]
	test	byte ptr [rax + rbx*2 + 1], 8
	je	.label_2332
	movzx	esi, byte ptr [r14 + rbx]
	mov	rdi, r15
	call	bitset_set
.label_2332:
	inc	rbx
	xor	eax, eax
	cmp	rbx, 0x100
	jne	.label_2340
	jmp	.label_2313
.label_2335:
	lea	rax, [rbp + rbp]
	mov	rdi, qword ptr [rbx + 0x18]
	lea	rsi, [rax*8 + 8]
	call	realloc
	mov	rcx, rax
	mov	eax, 0xc
	test	rcx, rcx
	je	.label_2313
	lea	rax, [rbp + rbp + 1]
	mov	qword ptr [rbx + 0x18], rcx
	mov	qword ptr [r13], rax
	jmp	.label_2358
.label_2329:
	mov	rax, qword ptr [r12]
	test	byte ptr [rax + rbx*2 + 1], 0x40
	je	.label_2359
	movzx	esi, byte ptr [r14 + rbx]
	mov	rdi, r15
	call	bitset_set
.label_2359:
	inc	rbx
	xor	eax, eax
	cmp	rbx, 0x100
	jne	.label_2329
	jmp	.label_2313
.label_2344:
	mov	rax, qword ptr [r12]
	test	byte ptr [rax + rbx*2 + 1], 1
	je	.label_2370
	movzx	esi, byte ptr [r14 + rbx]
	mov	rdi, r15
	call	bitset_set
.label_2370:
	inc	rbx
	xor	eax, eax
	cmp	rbx, 0x100
	jne	.label_2344
	jmp	.label_2313
.label_2336:
	mov	rax, qword ptr [r12]
	test	byte ptr [rax + rbx*2], 1
	je	.label_2367
	movzx	esi, byte ptr [r14 + rbx]
	mov	rdi, r15
	call	bitset_set
.label_2367:
	inc	rbx
	xor	eax, eax
	cmp	rbx, 0x100
	jne	.label_2336
	jmp	.label_2313
.label_2353:
	mov	rax, qword ptr [r12]
	cmp	word ptr [rax + rbx*2], 0
	jns	.label_2356
	movzx	esi, byte ptr [r14 + rbx]
	mov	rdi, r15
	call	bitset_set
.label_2356:
	inc	rbx
	xor	eax, eax
	cmp	rbx, 0x100
	jne	.label_2353
	jmp	.label_2313
.label_2364:
	mov	rax, qword ptr [r12]
	test	byte ptr [rax + rbx*2], 4
	je	.label_2338
	movzx	esi, byte ptr [r14 + rbx]
	mov	rdi, r15
	call	bitset_set
.label_2338:
	inc	rbx
	xor	eax, eax
	cmp	rbx, 0x100
	jne	.label_2364
	jmp	.label_2313
.label_2326:
	mov	rax, qword ptr [r12]
	test	byte ptr [rax + rbx*2 + 1], 0x10
	je	.label_2357
	movzx	esi, byte ptr [r14 + rbx]
	mov	rdi, r15
	call	bitset_set
.label_2357:
	inc	rbx
	xor	eax, eax
	cmp	rbx, 0x100
	jne	.label_2326
	jmp	.label_2313
	.section	.text
	.align	32
	#Procedure 0x417d96
	.globl sub_417d96
	.type sub_417d96, @function
sub_417d96:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x417da0

	.globl bkm_scale_by_power_1
	.type bkm_scale_by_power_1, @function
bkm_scale_by_power_1:
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
	je	.label_2385
	xor	ebp, ebp
	nop	word ptr [rax + rax]
.label_2386:
	mov	rdi, r15
	mov	esi, r14d
	call	bkm_scale_1
	or	ebp, eax
	dec	ebx
	jne	.label_2386
.label_2385:
	mov	eax, ebp
	add	rsp, 8
	pop	rbx
	pop	r14
	pop	r15
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x417dde
	.globl sub_417dde
	.type sub_417dde, @function
sub_417dde:

	nop	
.label_2387:
	mov	eax, 0xffffffff
	pop	rbx
	pop	r14
	pop	r15
	ret	
	.section	.text
	.align	32
	#Procedure 0x417deb
	.globl sub_417deb
	.type sub_417deb, @function
sub_417deb:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x417df5

	.globl di_set_insert
	.type di_set_insert, @function
di_set_insert:
	push	r15
	push	r14
	push	rbx
	mov	r14, rdx
	mov	rbx, rdi
	call	map_device
	mov	r15, rax
	test	r15, r15
	je	.label_2387
	mov	rdi, rbx
	mov	rsi, r14
	call	map_inode_number
	cmp	rax, -1
	je	.label_2387
	xor	edx, edx
	mov	rdi, r15
	mov	rsi, rax
	pop	rbx
	pop	r14
	pop	r15
	jmp	hash_insert_if_absent
	.section	.text
	.align	32
	#Procedure 0x417e30

	.globl re_string_skip_chars
	.type re_string_skip_chars, @function
re_string_skip_chars:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x18
	mov	qword ptr [rsp + 0x10], rdx
	mov	r15, rsi
	mov	r12, rdi
	mov	rbx, qword ptr [r12 + 0x38]
	add	rbx, qword ptr [r12 + 0x28]
	mov	ecx, 0xffffffff
	cmp	rbx, r15
	jge	.label_2388
	lea	r13, [r12 + 0x20]
	jmp	.label_2389
.label_2390:
	xor	ecx, ecx
	test	r14, r14
	je	.label_2392
	test	rax, rax
	je	.label_2392
	mov	rax, qword ptr [r12]
	movzx	ecx, byte ptr [rax + rbx]
.label_2392:
	mov	qword ptr [r13], rbp
	mov	eax, 1
	jmp	.label_2391
	.section	.text
	.align	32
	#Procedure 0x417e83
	.globl sub_417e83
	.type sub_417e83, @function
sub_417e83:

	nop	word ptr cs:[rax + rax]
.label_2389:
	mov	rbp, qword ptr [r12 + 0x20]
	mov	r14, qword ptr [r12 + 0x50]
	sub	r14, rbx
	mov	rsi, qword ptr [r12]
	add	rsi, rbx
	lea	rdi, [rsp + 0xc]
	mov	rdx, r14
	mov	rcx, r13
	call	rpl_mbrtowc
	lea	rcx, [rax - 1]
	cmp	rcx, -3
	jae	.label_2390
	mov	ecx, dword ptr [rsp + 0xc]
.label_2391:
	add	rbx, rax
	cmp	rbx, r15
	jl	.label_2389
.label_2388:
	mov	rax, qword ptr [rsp + 0x10]
	mov	dword ptr [rax], ecx
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
	.align	32
	#Procedure 0x417ee3
	.globl sub_417ee3
	.type sub_417ee3, @function
sub_417ee3:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x417ef0

	.globl di_ent_compare
	.type di_ent_compare, @function
di_ent_compare:
	mov	rax, qword ptr [rdi]
	cmp	rax, qword ptr [rsi]
	sete	al
	ret	
	.section	.text
	.align	32
	#Procedure 0x417efa
	.globl sub_417efa
	.type sub_417efa, @function
sub_417efa:

	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x417f00

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
	je	.label_2395
	and	ecx, 0xffffffdf
	xor	eax, eax
	cmp	ecx, ebp
	je	.label_2393
	jmp	.label_2394
.label_2395:
	xor	eax, eax
	cmp	cl, bpl
	jne	.label_2394
.label_2393:
	mov	eax, 1
	test	bpl, bpl
	je	.label_2394
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
.label_2394:
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
	#Procedure 0x417f88
	.globl sub_417f88
	.type sub_417f88, @function
sub_417f88:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x417f90

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
	je	.label_2396
	and	ecx, 0xffffffdf
	xor	eax, eax
	cmp	ecx, ebp
	je	.label_2398
	jmp	.label_2397
.label_2396:
	xor	eax, eax
	cmp	cl, bpl
	jne	.label_2397
.label_2398:
	mov	eax, 1
	test	bpl, bpl
	je	.label_2397
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
.label_2397:
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
	#Procedure 0x418009
	.globl sub_418009
	.type sub_418009, @function
sub_418009:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x418010

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
	je	.label_2401
	and	ecx, 0xffffffdf
	xor	eax, eax
	cmp	ecx, ebp
	je	.label_2400
	jmp	.label_2399
.label_2401:
	xor	eax, eax
	cmp	cl, bpl
	jne	.label_2399
.label_2400:
	mov	eax, 1
	test	bpl, bpl
	je	.label_2399
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
.label_2399:
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x418073
	.globl sub_418073
	.type sub_418073, @function
sub_418073:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x418080

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
	je	.label_2404
	and	ecx, 0xffffffdf
	xor	eax, eax
	cmp	ecx, ebp
	je	.label_2402
	jmp	.label_2403
.label_2404:
	xor	eax, eax
	cmp	cl, bpl
	jne	.label_2403
.label_2402:
	mov	eax, 1
	test	bpl, bpl
	je	.label_2403
	movsx	esi, r15b
	movsx	edx, r14b
	mov	rdi, rbx
	add	rsp, 8
	pop	rbx
	pop	r14
	pop	r15
	pop	rbp
	jmp	strcaseeq5
.label_2403:
	add	rsp, 8
	pop	rbx
	pop	r14
	pop	r15
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x4180df
	.globl sub_4180df
	.type sub_4180df, @function
sub_4180df:

	nop	
	.section	.text
	.align	32
	#Procedure 0x4180e0

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
	je	.label_2405
	and	ecx, 0xffffffdf
	xor	eax, eax
	cmp	ecx, ebp
	je	.label_2407
	jmp	.label_2406
.label_2405:
	xor	eax, eax
	cmp	cl, bpl
	jne	.label_2406
.label_2407:
	mov	eax, 1
	test	bpl, bpl
	je	.label_2406
	movsx	esi, r14b
	mov	rdi, rbx
	pop	rbx
	pop	r14
	pop	rbp
	jmp	strcaseeq6
.label_2406:
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x418129
	.globl sub_418129
	.type sub_418129, @function
sub_418129:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x418130

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
	je	.label_2410
	and	ecx, 0xffffffdf
	xor	eax, eax
	cmp	ecx, ebp
	je	.label_2409
	jmp	.label_2408
.label_2410:
	xor	eax, eax
	cmp	cl, bpl
	jne	.label_2408
.label_2409:
	mov	eax, 1
	test	bpl, bpl
	je	.label_2408
	mov	rdi, rbx
	add	rsp, 8
	pop	rbx
	pop	rbp
	jmp	strcaseeq7
.label_2408:
	add	rsp, 8
	pop	rbx
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x418175
	.globl sub_418175
	.type sub_418175, @function
sub_418175:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x418180

	.globl strcaseeq7
	.type strcaseeq7, @function
strcaseeq7:
	push	rbx
	mov	rbx, rdi
	xor	edi, edi
	call	c_isupper
	movsx	ecx, byte ptr [rbx + 7]
	test	al, al
	je	.label_2413
	mov	eax, 1
	test	ecx, 0xffffffdf
	jne	.label_2412
	jmp	.label_2411
.label_2413:
	mov	eax, 1
	test	cl, cl
	je	.label_2411
.label_2412:
	xor	eax, eax
.label_2411:
	pop	rbx
	ret	
	.section	.text
	.align	32
	#Procedure 0x4181af
	.globl sub_4181af
	.type sub_4181af, @function
sub_4181af:

	nop	
	.section	.text
	.align	32
	#Procedure 0x4181b0

	.globl find_subexp_node
	.type find_subexp_node, @function
find_subexp_node:
	cmp	qword ptr [rsi + 8], 0
	jle	.label_2414
	mov	r8, qword ptr [rsi + 0x10]
	mov	r9, qword ptr [rdi]
	xor	r11d, r11d
	nop	word ptr cs:[rax + rax]
.label_2416:
	mov	rax, qword ptr [r8 + r11*8]
	mov	r10, rax
	shl	r10, 4
	movzx	edi, byte ptr [r9 + r10 + 8]
	cmp	edi, ecx
	jne	.label_2415
	cmp	qword ptr [r9 + r10], rdx
	je	.label_2417
.label_2415:
	inc	r11
	cmp	r11, qword ptr [rsi + 8]
	jl	.label_2416
.label_2414:
	mov	rax, -1
.label_2417:
	ret	
	.section	.text
	.align	32
	#Procedure 0x4181fc
	.globl sub_4181fc
	.type sub_4181fc, @function
sub_4181fc:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x418200

	.globl re_string_context_at
	.type re_string_context_at, @function
re_string_context_at:
	push	rbp
	push	rbx
	push	rax
	mov	rbx, rdi
	test	rsi, rsi
	js	.label_2418
	cmp	qword ptr [rbx + 0x58], rsi
	je	.label_2422
	cmp	dword ptr [rbx + 0x90], 2
	jl	.label_2425
	mov	rax, qword ptr [rbx + 0x10]
	inc	rsi
	nop	dword ptr [rax]
.label_2424:
	mov	ebp, dword ptr [rax + rsi*4 - 4]
	cmp	ebp, -1
	jne	.label_2419
	dec	rsi
	test	rsi, rsi
	jg	.label_2424
	mov	edx, dword ptr [rbx + 0x70]
	jmp	.label_2420
.label_2422:
	and	edx, 2
	xor	edx, 0xa
	jmp	.label_2420
.label_2421:
	mov	edi, ebp
	call	iswalnum
	cmp	ebp, 0x5f
	mov	edx, 1
	je	.label_2420
	test	eax, eax
	je	.label_2426
	jmp	.label_2420
	.section	.text
	.align	32
	#Procedure 0x418265
	.globl sub_418265
	.type sub_418265, @function
sub_418265:

	nop	dword ptr [rax]
.label_2419:
	cmp	byte ptr [rbx + 0x8e], 0
	jne	.label_2421
.label_2426:
	xor	edx, edx
	cmp	ebp, 0xa
	jne	.label_2420
.label_2423:
	xor	edx, edx
	cmp	byte ptr [rbx + 0x8d], 0
	setne	dl
	add	edx, edx
.label_2420:
	mov	eax, edx
	add	rsp, 8
	pop	rbx
	pop	rbp
	ret	
.label_2425:
	mov	rax, qword ptr [rbx + 8]
	mov	rdi, qword ptr [rbx + 0x80]
	mov	bpl, byte ptr [rax + rsi]
	movzx	esi, bpl
	call	bitset_contain
	mov	edx, 1
	test	al, al
	jne	.label_2420
	xor	edx, edx
	cmp	bpl, 0xa
	je	.label_2423
	jmp	.label_2420
.label_2418:
	mov	edx, dword ptr [rbx + 0x70]
	jmp	.label_2420
	.section	.text
	.align	32
	#Procedure 0x4182c0

	.globl create_token_tree
	.type create_token_tree, @function
create_token_tree:
	push	r15
	push	r14
	push	r12
	push	rbx
	push	rax
	mov	r15, rcx
	mov	r14, rdx
	mov	r12, rsi
	mov	rbx, rdi
	cmp	dword ptr [rbx + 0x80], 0xf
	je	.label_2427
.label_2429:
	movsxd	rcx, dword ptr [rbx + 0x80]
	lea	eax, [rcx + 1]
	mov	dword ptr [rbx + 0x80], eax
	mov	rdx, qword ptr [rbx + 0x70]
	shl	rcx, 6
	lea	rax, [rdx + rcx + 8]
	mov	qword ptr [rdx + rcx + 8], 0
	mov	qword ptr [rdx + rcx + 0x10], r12
	mov	qword ptr [rdx + rcx + 0x18], r14
	movups	xmm0, xmmword ptr [r15]
	movups	xmmword ptr [rdx + rcx + 0x30], xmm0
	and	byte ptr [rdx + rcx + 0x3a], 0xf3
	xorps	xmm0, xmm0
	movups	xmmword ptr [rdx + rcx + 0x20], xmm0
	mov	qword ptr [rdx + rcx + 0x40], -1
	test	r12, r12
	je	.label_2430
	mov	qword ptr [r12], rax
.label_2430:
	test	r14, r14
	je	.label_2428
	mov	qword ptr [r14], rax
.label_2428:
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	ret	
.label_2427:
	mov	edi, 0x3c8
	call	malloc
	mov	rcx, rax
	xor	eax, eax
	test	rcx, rcx
	je	.label_2428
	mov	rax, qword ptr [rbx + 0x70]
	mov	qword ptr [rcx], rax
	mov	qword ptr [rbx + 0x70], rcx
	mov	dword ptr [rbx + 0x80], 0
	jmp	.label_2429
	.section	.text
	.align	32
	#Procedure 0x418377
	.globl sub_418377
	.type sub_418377, @function
sub_418377:

	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x418380

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
	je	.label_2431
	xor	ebp, ebp
	nop	word ptr [rax + rax]
.label_2432:
	mov	rdi, r15
	mov	esi, r14d
	call	bkm_scale
	or	ebp, eax
	dec	ebx
	jne	.label_2432
.label_2431:
	mov	eax, ebp
	add	rsp, 8
	pop	rbx
	pop	r14
	pop	r15
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x4183be
	.globl sub_4183be
	.type sub_4183be, @function
sub_4183be:

	nop	
	.section	.text
	.align	32
	#Procedure 0x4183c0

	.globl tzalloc
	.type tzalloc, @function
tzalloc:
	push	r15
	push	r14
	push	rbx
	mov	r14, rdi
	xor	r15d, r15d
	test	r14, r14
	je	.label_2433
	mov	rdi, r14
	call	strlen
	mov	r15, rax
	inc	r15
.label_2433:
	lea	rax, [r15 + 0x11]
	and	rax, 0xfffffffffffffff8
	cmp	r15, 0x77
	mov	edi, 0x80
	cmovae	rdi, rax
	call	malloc
	mov	rbx, rax
	test	rbx, rbx
	je	.label_2434
	mov	qword ptr [rbx], 0
	test	r14, r14
	setne	byte ptr [rbx + 8]
	mov	byte ptr [rbx + 9], 0
	je	.label_2434
	mov	rdi, rbx
	add	rdi, 9
	mov	rsi, r14
	mov	rdx, r15
	call	extend_abbrs
.label_2434:
	mov	rax, rbx
	pop	rbx
	pop	r14
	pop	r15
	ret	
	.section	.text
	.align	32
	#Procedure 0x41842f
	.globl sub_41842f
	.type sub_41842f, @function
sub_41842f:

	nop	
	.section	.text
	.align	32
	#Procedure 0x418430

	.globl bitset_clear
	.type bitset_clear, @function
bitset_clear:
	mov	rax, -2
	mov	ecx, esi
	rol	rax, cl
	mov	rcx, rsi
	sar	rcx, 0x3f
	shr	rcx, 0x3a
	add	rcx, rsi
	sar	rcx, 6
	and	qword ptr [rdi + rcx*8], rax
	ret	
	.section	.text
	.align	32
	#Procedure 0x418453
	.globl sub_418453
	.type sub_418453, @function
sub_418453:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x418460
	.globl close_stdout_set_ignore_EPIPE
	.type close_stdout_set_ignore_EPIPE, @function
close_stdout_set_ignore_EPIPE:

	mov	byte ptr [byte ptr [rip + ignore_EPIPE]],  dil
	ret	
	.section	.text
	.align	32
	#Procedure 0x418468
	.globl sub_418468
	.type sub_418468, @function
sub_418468:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x418470
	.globl close_stdout_set_file_name
	.type close_stdout_set_file_name, @function
close_stdout_set_file_name:

	mov	qword ptr [word ptr [rip + file_name]],  rdi
	ret	
	.section	.text
	.align	32
	#Procedure 0x418478
	.globl sub_418478
	.type sub_418478, @function
sub_418478:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x418480

	.globl fnmatch_no_wildcards
	.type fnmatch_no_wildcards, @function
fnmatch_no_wildcards:
	push	rbp
	push	r15
	push	r14
	push	rbx
	push	rax
	mov	r14, rsi
	mov	r15, rdi
	mov	eax, edx
	and	eax, 0x10
	test	dl, 8
	jne	.label_2435
	mov	rdi, r15
	mov	rsi, r14
	add	rsp, 8
	test	eax, eax
	je	.label_2441
	pop	rbx
	pop	r14
	pop	r15
	pop	rbp
	jmp	mbscasecmp
.label_2439:
	mov	rdi, r15
	call	strlen
	mov	rbx, rax
	mov	rdi, r15
	mov	rsi, r14
	mov	rdx, rbx
	call	strncmp
	mov	ebp, eax
	test	ebp, ebp
	jne	.label_2437
	movsx	eax, byte ptr [r14 + rbx]
	xor	ebp, ebp
	cmp	eax, 0x2f
	cmovne	ebp, eax
	jmp	.label_2437
.label_2436:
	mov	rdi, r15
	mov	rsi, r14
	call	mbscasecmp
	mov	ebp, eax
.label_2440:
	mov	rdi, r14
	call	free
.label_2437:
	mov	eax, ebp
	add	rsp, 8
	pop	rbx
	pop	r14
	pop	r15
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x418500
	.globl sub_418500
	.type sub_418500, @function
sub_418500:

	nop	dword ptr [rax]
.label_2441:
	pop	rbx
	pop	r14
	pop	r15
	pop	rbp
	jmp	strcmp
.label_2435:
	test	eax, eax
	je	.label_2439
	mov	rdi, r14
	call	xstrdup
	mov	r14, rax
	mov	esi, 0x2f
	mov	rdi, r14
	jmp	.label_2442
	.section	.text
	.align	32
	#Procedure 0x418528
	.globl sub_418528
	.type sub_418528, @function
sub_418528:

	nop	dword ptr [rax]
.label_2438:
	mov	byte ptr [rbx], 0x2f
	inc	rbx
	mov	esi, 0x2f
	mov	rdi, rbx
.label_2442:
	call	strchr
	mov	rbx, rax
	test	rbx, rbx
	je	.label_2436
	mov	byte ptr [rbx], 0
	mov	rdi, r15
	mov	rsi, r14
	call	mbscasecmp
	mov	ebp, eax
	test	ebp, ebp
	jg	.label_2438
	jmp	.label_2440
.label_2447:
	mov	ax, 3
	jmp	.label_2445
	.section	.text
	.align	32
	#Procedure 0x418569

	.globl fts_stat
	.type fts_stat, @function
fts_stat:
	push	r15
	push	r14
	push	rbx
	mov	r15, rsi
	mov	r14, rdi
	cmp	qword ptr [r15 + 0x58], 0
	jne	.label_2452
	test	byte ptr [r14 + 0x48], 1
	je	.label_2452
	mov	dl, 1
.label_2452:
	lea	rbx, [r15 + 0x78]
	test	dl, dl
	jne	.label_2444
	mov	eax, dword ptr [r14 + 0x48]
	and	eax, 2
	jne	.label_2444
	mov	edi, dword ptr [r14 + 0x2c]
	mov	rsi, qword ptr [r15 + 0x30]
	mov	ecx, 0x100
	mov	rdx, rbx
	call	fstatat
	test	eax, eax
	je	.label_2443
	call	__errno_location
	mov	eax, dword ptr [rax]
	jmp	.label_2453
.label_2444:
	mov	rdi, qword ptr [r15 + 0x30]
	mov	rsi, rbx
	call	stat
	test	eax, eax
	je	.label_2443
	call	__errno_location
	mov	r14, rax
	cmp	dword ptr [r14], 2
	jne	.label_2449
	mov	rdi, qword ptr [r15 + 0x30]
	mov	rsi, rbx
	call	lstat
	test	eax, eax
	je	.label_2450
.label_2449:
	mov	eax, dword ptr [r14]
.label_2453:
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
.label_2445:
	pop	rbx
	pop	r14
	pop	r15
	ret	
.label_2443:
	movzx	ecx, word ptr [r15 + 0x90]
	and	ecx, 0xf000
	cmp	ecx, 0x8000
	je	.label_2451
	mov	ax, 0xc
	movzx	ecx, cx
	cmp	ecx, 0xa000
	je	.label_2445
	cmp	ecx, 0x4000
	jne	.label_2447
	mov	rax, qword ptr [r15 + 0x88]
	mov	rcx, -1
	cmp	rax, 2
	jb	.label_2446
	cmp	qword ptr [r15 + 0x58], 0
	jle	.label_2446
	mov	ecx, dword ptr [r14 + 0x48]
	shr	ecx, 4
	not	ecx
	and	ecx, 2
	sub	rax, rcx
	mov	rcx, rax
.label_2446:
	mov	qword ptr [r15 + 0x68], rcx
	mov	ax, 1
	cmp	byte ptr [r15 + 0x108], 0x2e
	jne	.label_2445
	mov	cl, byte ptr [r15 + 0x109]
	test	cl, cl
	je	.label_2448
	cmp	cl, 0x2e
	jne	.label_2445
	cmp	byte ptr [r15 + 0x10a], 0
	jne	.label_2445
.label_2448:
	cmp	qword ptr [r15 + 0x58], 0
	mov	cx, 1
	mov	ax, 5
	cmove	ax, cx
	jmp	.label_2445
.label_2450:
	mov	dword ptr [r14], 0
	mov	ax, 0xd
	jmp	.label_2445
	.section	.text
	.align	32
	#Procedure 0x4186df
	.globl sub_4186df
	.type sub_4186df, @function
sub_4186df:

	nop	dword ptr [rax + rax]
.label_2451:
	mov	ax, 8
	jmp	.label_2445
	.section	.text
	.align	32
	#Procedure 0x4186f0
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
	#Procedure 0x4186ff
	.globl sub_4186ff
	.type sub_4186ff, @function
sub_4186ff:

	nop	
	.section	.text
	.align	32
	#Procedure 0x418700

	.globl free_tree
	.type free_tree, @function
free_tree:
	push	rax
	lea	rdi, [rsi + 0x28]
	call	free_token
	xor	eax, eax
	pop	rcx
	ret	
	.section	.text
	.align	32
	#Procedure 0x41870e
	.globl sub_41870e
	.type sub_41870e, @function
sub_41870e:

	nop	
	.section	.text
	.align	32
	#Procedure 0x418710

	.globl xalloc_die
	.type xalloc_die, @function
xalloc_die:
	push	rbx
	mov	ebx,  dword ptr [dword ptr [rip + exit_failure]]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_2454
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	xor	esi, esi
	mov	edx, OFFSET FLAT:label_582
	xor	eax, eax
	mov	edi, ebx
	call	error
	call	abort
.label_2455:
	xor	eax, eax
	ret	
	.section	.text
	.align	32
	#Procedure 0x418743
	.globl sub_418743
	.type sub_418743, @function
sub_418743:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x41874b
	.globl c_isspace
	.type c_isspace, @function
c_isspace:

	add	edi, -9
	cmp	edi, 0x17
	ja	.label_2455
	mov	eax, 0x80001f
	mov	ecx, edi
	shr	eax, cl
	and	eax, 1
	ret	
	.section	.text
	.align	32
	#Procedure 0x418760

	.globl init_word_char
	.type init_word_char, @function
init_word_char:
	push	r15
	push	r14
	push	rbx
	mov	rbx, rdi
	mov	al, byte ptr [rbx + 0xb0]
	mov	ecx, eax
	or	cl, 0x10
	mov	byte ptr [rbx + 0xb0], cl
	xor	r14d, r14d
	test	al, 8
	mov	r15d, 0
	jne	.label_2456
	movabs	rax, 0x3ff000000000000
	mov	qword ptr [rbx + 0xb8], rax
	movabs	rax, 0x7fffffe87fffffe
	mov	qword ptr [rbx + 0xc0], rax
	mov	r15d, 2
	mov	r14d, 0x80
	test	byte ptr [rbx + 0xb0], 4
	je	.label_2456
	xorps	xmm0, xmm0
	movups	xmmword ptr [rbx + 0xc8], xmm0
.label_2458:
	pop	rbx
	pop	r14
	pop	r15
	ret	
.label_2456:
	call	__ctype_b_loc
	lea	rdx, [r14 + r14]
	add	rdx, qword ptr [rax]
.label_2461:
	mov	rax, rdx
	xor	ecx, ecx
	nop	
.label_2459:
	lea	esi, [r14 + rcx]
	cmp	esi, 0x5f
	je	.label_2457
	movzx	esi, word ptr [rax]
	and	esi, 8
	test	si, si
	je	.label_2460
.label_2457:
	mov	esi, 1
	shl	rsi, cl
	or	qword ptr [rbx + r15*8 + 0xb8], rsi
.label_2460:
	inc	rcx
	add	rax, 2
	cmp	rcx, 0x40
	jne	.label_2459
	inc	r15
	add	r14, 0x40
	sub	rdx, -0x80
	cmp	r15d, 4
	jne	.label_2461
	jmp	.label_2458
	.section	.text
	.align	32
	#Procedure 0x418824
	.globl sub_418824
	.type sub_418824, @function
sub_418824:

	nop	word ptr cs:[rax + rax]
.label_2466:
	mov	rdi, r15
	add	rsp, 0x40
	pop	rbx
	pop	r14
	pop	r15
	jmp	timegm
	.section	.text
	.align	32
	#Procedure 0x418841
	.globl sub_418841
	.type sub_418841, @function
sub_418841:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x418848

	.globl mktime_z
	.type mktime_z, @function
mktime_z:
	push	r15
	push	r14
	push	rbx
	sub	rsp, 0x40
	mov	r15, rsi
	mov	rbx, rdi
	test	rbx, rbx
	je	.label_2466
	mov	rdi, rbx
	call	set_tz
	mov	r14, rax
	test	r14, r14
	je	.label_2463
	mov	rdi, r15
	call	mktime
	mov	qword ptr [rsp], rax
	cmp	rax, -1
	jne	.label_2465
	lea	rdi, [rsp]
	lea	rsi, [rsp + 8]
	call	localtime_r
	test	rax, rax
	je	.label_2462
	lea	rsi, [rsp + 8]
	mov	rdi, r15
	call	equal_tm
	test	eax, eax
	je	.label_2462
.label_2465:
	mov	rdi, rbx
	mov	rsi, r15
	call	save_abbr
	test	al, al
	jne	.label_2462
	mov	qword ptr [rsp], -1
.label_2462:
	mov	rdi, r14
	call	revert_tz
	test	al, al
	je	.label_2463
	mov	rax, qword ptr [rsp]
	jmp	.label_2464
.label_2463:
	mov	rax, -1
.label_2464:
	add	rsp, 0x40
	pop	rbx
	pop	r14
	pop	r15
	ret	
	.section	.text
	.align	32
	#Procedure 0x4188e0

	.globl argv_iter_init_stream
	.type argv_iter_init_stream, @function
argv_iter_init_stream:
	push	rbx
	mov	rbx, rdi
	mov	edi, 0x30
	call	malloc
	xor	ecx, ecx
	test	rax, rax
	je	.label_2467
	mov	qword ptr [rax], rbx
	xorps	xmm0, xmm0
	movups	xmmword ptr [rax + 0x18], xmm0
	movups	xmmword ptr [rax + 8], xmm0
	mov	rcx, rax
.label_2467:
	mov	rax, rcx
	pop	rbx
	ret	
	.section	.text
	.align	32
	#Procedure 0x41890b
	.globl sub_41890b
	.type sub_41890b, @function
sub_41890b:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x418910

	.globl fts_alloc
	.type fts_alloc, @function
fts_alloc:
	push	r15
	push	r14
	push	r12
	push	rbx
	push	rax
	mov	r15, rdx
	mov	r12, rsi
	mov	r14, rdi
	lea	rdi, [r15 + 0x110]
	and	rdi, 0xfffffffffffffff8
	call	malloc
	mov	rbx, rax
	xor	eax, eax
	test	rbx, rbx
	je	.label_2468
	mov	rdi, rbx
	add	rdi, 0x108
	mov	rsi, r12
	mov	rdx, r15
	call	memcpy
	mov	byte ptr [rbx + r15 + 0x108], 0
	mov	qword ptr [rbx + 0x60], r15
	mov	qword ptr [rbx + 0x50], r14
	mov	rax, qword ptr [r14 + 0x20]
	mov	qword ptr [rbx + 0x38], rax
	mov	dword ptr [rbx + 0x40], 0
	mov	qword ptr [rbx + 0x18], 0
	mov	word ptr [rbx + 0x72], 0
	mov	word ptr [rbx + 0x74], 3
	xorps	xmm0, xmm0
	movups	xmmword ptr [rbx + 0x20], xmm0
	mov	rax, rbx
.label_2468:
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	ret	
	.section	.text
	.align	32
	#Procedure 0x41899a
	.globl sub_41899a
	.type sub_41899a, @function
sub_41899a:

	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4189a0

	.globl fts_sort
	.type fts_sort, @function
fts_sort:
	push	r15
	push	r14
	push	r12
	push	rbx
	push	rax
	mov	r14, rdx
	mov	rbx, rsi
	mov	r15, rdi
	mov	r12, qword ptr [r15 + 0x40]
	cmp	qword ptr [r15 + 0x38], r14
	jae	.label_2469
	lea	rsi, [r14 + 0x28]
	mov	qword ptr [r15 + 0x38], rsi
	mov	rax, rsi
	shr	rax, 0x3d
	jne	.label_2475
	mov	rdi, qword ptr [r15 + 0x10]
	shl	rsi, 3
	call	realloc
	test	rax, rax
	je	.label_2475
	mov	qword ptr [r15 + 0x10], rax
.label_2469:
	test	rbx, rbx
	je	.label_2470
	mov	rax, qword ptr [r15 + 0x10]
	nop	
.label_2472:
	mov	qword ptr [rax], rbx
	add	rax, 8
	mov	rbx, qword ptr [rbx + 0x10]
	test	rbx, rbx
	jne	.label_2472
.label_2470:
	mov	rdi, qword ptr [r15 + 0x10]
	mov	edx, 8
	mov	rsi, r14
	mov	rcx, r12
	call	qsort
	mov	rax, qword ptr [r15 + 0x10]
	mov	rbx, qword ptr [rax]
	mov	r8, r14
	dec	r8
	je	.label_2473
	mov	edx, 1
	sub	rdx, r14
	lea	rsi, [rax + 8]
	nop	
.label_2474:
	mov	rdi, qword ptr [rsi - 8]
	mov	rcx, qword ptr [rsi]
	mov	qword ptr [rdi + 0x10], rcx
	add	rsi, 8
	inc	rdx
	jne	.label_2474
	lea	rax, [rax + r8*8]
.label_2473:
	mov	rax, qword ptr [rax]
	mov	qword ptr [rax + 0x10], 0
	jmp	.label_2471
.label_2475:
	mov	rdi, qword ptr [r15 + 0x10]
	call	free
	mov	qword ptr [r15 + 0x10], 0
	mov	qword ptr [r15 + 0x38], 0
.label_2471:
	mov	rax, rbx
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	ret	
	.section	.text
	.align	32
	#Procedure 0x418a7d
	.globl sub_418a7d
	.type sub_418a7d, @function
sub_418a7d:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x418a80

	.globl free_entry
	.type free_entry, @function
free_entry:
	mov	qword ptr [rsi], 0
	mov	rax, qword ptr [rdi + 0x48]
	mov	qword ptr [rsi + 8], rax
	mov	qword ptr [rdi + 0x48], rsi
	ret	
	.section	.text
	.align	32
	#Procedure 0x418a94
	.globl sub_418a94
	.type sub_418a94, @function
sub_418a94:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x418aa0

	.globl bitset_set_all
	.type bitset_set_all, @function
bitset_set_all:
	pcmpeqd	xmm0, xmm0
	movdqu	xmmword ptr [rdi + 0x10], xmm0
	movdqu	xmmword ptr [rdi], xmm0
	ret	
	.section	.text
	.align	32
	#Procedure 0x418aae
	.globl sub_418aae
	.type sub_418aae, @function
sub_418aae:

	nop	
	.section	.text
	.align	32
	#Procedure 0x418ab0
	.globl rotr16
	.type rotr16, @function
rotr16:

	mov	eax, edi
	mov	ecx, esi
	shr	eax, cl
	mov	ecx, 0x10
	sub	ecx, esi
	shl	edi, cl
	or	edi, eax
	mov	eax, edi
	ret	
	.section	.text
	.align	32
	#Procedure 0x418ac4
	.globl sub_418ac4
	.type sub_418ac4, @function
sub_418ac4:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x418ad0

	.globl match_ctx_clean
	.type match_ctx_clean, @function
match_ctx_clean:
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	mov	r14, rdi
	cmp	qword ptr [r14 + 0xe8], 0
	jle	.label_2478
	xor	r12d, r12d
	nop	dword ptr [rax]
.label_2479:
	mov	rax, qword ptr [r14 + 0xf8]
	mov	r15, qword ptr [rax + r12*8]
	cmp	qword ptr [r15 + 0x20], 0
	jle	.label_2476
	xor	ebx, ebx
	nop	word ptr cs:[rax + rax]
.label_2477:
	mov	rax, qword ptr [r15 + 0x28]
	mov	r13, qword ptr [rax + rbx*8]
	mov	rdi, qword ptr [r13 + 0x20]
	call	free
	mov	rdi, r13
	call	free
	inc	rbx
	cmp	rbx, qword ptr [r15 + 0x20]
	jl	.label_2477
.label_2476:
	mov	rdi, qword ptr [r15 + 0x28]
	call	free
	mov	rax, qword ptr [r15 + 0x10]
	test	rax, rax
	je	.label_2480
	mov	rdi, qword ptr [rax + 0x10]
	call	free
	mov	rdi, qword ptr [r15 + 0x10]
	call	free
.label_2480:
	mov	rdi, r15
	call	free
	inc	r12
	cmp	r12, qword ptr [r14 + 0xe8]
	jl	.label_2479
.label_2478:
	mov	qword ptr [r14 + 0xe8], 0
	mov	qword ptr [r14 + 0xc8], 0
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	ret	
	.section	.text
	.align	32
	#Procedure 0x418b8a
	.globl sub_418b8a
	.type sub_418b8a, @function
sub_418b8a:

	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x418b90

	.globl re_compile_internal
	.type re_compile_internal, @function
re_compile_internal:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0xa8
	mov	r15, rcx
	mov	r12, rdx
	mov	r13, rsi
	mov	rbx, rdi
	mov	dword ptr [rsp + 0xc], 0
	mov	al, byte ptr [rbx + 0x38]
	mov	qword ptr [rbx + 0x18], r15
	mov	qword ptr [rbx + 0x10], 0
	mov	qword ptr [rbx + 0x30], 0
	and	al, 0x90
	mov	byte ptr [rbx + 0x38], al
	mov	r14, qword ptr [rbx]
	cmp	qword ptr [rbx + 8], 0xe7
	jbe	.label_2483
.label_2481:
	mov	qword ptr [rbx + 0x10], 0xe8
	mov	rdi, r14
	mov	rsi, r12
	call	init_dfa
	mov	dword ptr [rsp + 0xc], eax
	test	eax, eax
	jne	.label_2486
	mov	rcx, qword ptr [rbx + 0x28]
	mov	ebp, r15d
	and	ebp, 0x400000
	mov	r8, rbp
	shr	r8, 0x16
	lea	rdi, [rsp + 0x10]
	mov	rsi, r13
	mov	rdx, r12
	mov	r9, r14
	call	re_string_construct
	mov	dword ptr [rsp + 0xc], eax
	test	eax, eax
	jne	.label_2482
	mov	qword ptr [rbx + 0x30], 0
	lea	rdi, [rsp + 0x10]
	lea	rcx, [rsp + 0xc]
	mov	rsi, rbx
	mov	rdx, r15
	call	parse
	mov	qword ptr [r14 + 0x68], rax
	test	rax, rax
	je	.label_2482
	mov	rdi, rbx
	call	analyze
	mov	dword ptr [rsp + 0xc], eax
	test	eax, eax
	jne	.label_2482
	test	rbp, rbp
	jne	.label_2485
	mov	al, byte ptr [r14 + 0xb0]
	and	al, 4
	je	.label_2485
	cmp	qword ptr [rbx + 0x28], 0
	jne	.label_2485
	mov	rdi, r14
	call	optimize_utf8
.label_2485:
	mov	rdi, r14
	call	create_initial_state
	mov	dword ptr [rsp + 0xc], eax
	mov	rdi, rbx
	call	free_workarea_compile
	lea	rdi, [rsp + 0x10]
	call	re_string_destruct
	cmp	dword ptr [rsp + 0xc], 0
	jne	.label_2486
.label_2484:
	mov	eax, dword ptr [rsp + 0xc]
.label_2487:
	add	rsp, 0xa8
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_2482:
	mov	rdi, rbx
	call	free_workarea_compile
	lea	rdi, [rsp + 0x10]
	call	re_string_destruct
.label_2486:
	mov	rdi, r14
	call	free_dfa_content
	xorps	xmm0, xmm0
	movups	xmmword ptr [rbx], xmm0
	jmp	.label_2484
.label_2483:
	mov	esi, 0xe8
	mov	rdi, r14
	call	realloc
	mov	r14, rax
	mov	eax, 0xc
	test	r14, r14
	je	.label_2487
	mov	qword ptr [rbx + 8], 0xe8
	mov	qword ptr [rbx], r14
	jmp	.label_2481
	.section	.text
	.align	32
	#Procedure 0x418d10
	.globl hash_reset_tuning
	.type hash_reset_tuning, @function
hash_reset_tuning:

	mov	eax,  dword ptr [dword ptr [rip + label_2488]]
	mov	dword ptr [rdi + 0x10], eax
	movups	xmm0,  xmmword ptr [word ptr [rip + default_tuning]]
	movups	xmmword ptr [rdi], xmm0
	ret	
	.section	.text
	.align	32
	#Procedure 0x418d24
	.globl sub_418d24
	.type sub_418d24, @function
sub_418d24:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x418d30

	.globl hash_delete
	.type hash_delete, @function
hash_delete:
	push	r15
	push	r14
	push	rbx
	sub	rsp, 0x10
	mov	r15, rdi
	lea	rdx, [rsp + 8]
	mov	ecx, 1
	call	hash_find_entry
	mov	r14, rax
	xor	eax, eax
	test	r14, r14
	je	.label_2491
	dec	qword ptr [r15 + 0x20]
	mov	rax, qword ptr [rsp + 8]
	cmp	qword ptr [rax], 0
	jne	.label_2497
	mov	rax, qword ptr [r15 + 0x18]
	dec	rax
	mov	qword ptr [r15 + 0x18], rax
	mov	ecx, eax
	and	ecx, 1
	test	rax, rax
	js	.label_2496
	cvtsi2ss	xmm0, rax
	jmp	.label_2489
.label_2496:
	shr	rax, 1
	or	rcx, rax
	cvtsi2ss	xmm0, rcx
	addss	xmm0, xmm0
.label_2489:
	mov	rcx, qword ptr [r15 + 0x10]
	mov	rax, qword ptr [r15 + 0x28]
	mov	edx, ecx
	and	edx, 1
	test	rcx, rcx
	js	.label_2495
	cvtsi2ss	xmm1, rcx
	jmp	.label_2500
.label_2495:
	shr	rcx, 1
	or	rdx, rcx
	cvtsi2ss	xmm1, rdx
	addss	xmm1, xmm1
.label_2500:
	mulss	xmm1, dword ptr [rax]
	ucomiss	xmm1, xmm0
	jbe	.label_2497
	mov	rdi, r15
	call	check_tuning
	mov	rax, qword ptr [r15 + 0x10]
	mov	rcx, qword ptr [r15 + 0x18]
	mov	edx, ecx
	and	edx, 1
	test	rcx, rcx
	js	.label_2494
	xorps	xmm1, xmm1
	cvtsi2ss	xmm1, rcx
	jmp	.label_2498
.label_2494:
	shr	rcx, 1
	or	rdx, rcx
	xorps	xmm1, xmm1
	cvtsi2ss	xmm1, rdx
	addss	xmm1, xmm1
.label_2498:
	mov	rcx, qword ptr [r15 + 0x28]
	mov	edx, eax
	and	edx, 1
	test	rax, rax
	js	.label_2490
	xorps	xmm0, xmm0
	cvtsi2ss	xmm0, rax
	jmp	.label_2493
.label_2490:
	shr	rax, 1
	or	rdx, rax
	xorps	xmm0, xmm0
	cvtsi2ss	xmm0, rdx
	addss	xmm0, xmm0
.label_2493:
	movss	xmm2, dword ptr [rcx]
	mulss	xmm2, xmm0
	ucomiss	xmm2, xmm1
	jbe	.label_2497
	mulss	xmm0, dword ptr [rcx + 4]
	cmp	byte ptr [rcx + 0x10], 0
	jne	.label_2501
	mulss	xmm0, dword ptr [rcx + 8]
.label_2501:
	movss	xmm1,  dword ptr [dword ptr [rip + label_442]]
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
	jne	.label_2497
	mov	rdi, qword ptr [r15 + 0x48]
	test	rdi, rdi
	je	.label_2492
	nop	dword ptr [rax + rax]
.label_2499:
	mov	rbx, qword ptr [rdi + 8]
	call	free
	test	rbx, rbx
	mov	rdi, rbx
	jne	.label_2499
.label_2492:
	mov	qword ptr [r15 + 0x48], 0
.label_2497:
	mov	rax, r14
.label_2491:
	add	rsp, 0x10
	pop	rbx
	pop	r14
	pop	r15
	ret	
	.section	.text
	.align	32
	#Procedure 0x418eb6
	.globl sub_418eb6
	.type sub_418eb6, @function
sub_418eb6:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x418ec0

	.globl file_pattern_matches
	.type file_pattern_matches, @function
file_pattern_matches:
	push	r15
	push	r14
	push	r12
	push	rbx
	push	rax
	mov	r14, rsi
	mov	r15, qword ptr [rdi + 0x20]
	test	r15, r15
	je	.label_2502
	mov	r12, qword ptr [rdi + 0x10]
	xor	ebx, ebx
	nop	word ptr [rax + rax]
.label_2503:
	mov	rdi, r12
	mov	rsi, r14
	call	exclude_patopts
	mov	ecx, eax
	mov	al, 1
	test	cl, cl
	jne	.label_2504
	inc	rbx
	add	r12, 0x48
	cmp	rbx, r15
	jb	.label_2503
.label_2502:
	xor	eax, eax
.label_2504:
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	ret	
	.section	.text
	.align	32
	#Procedure 0x418f0d
	.globl sub_418f0d
	.type sub_418f0d, @function
sub_418f0d:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x418f10

	.globl di_set_free
	.type di_set_free, @function
di_set_free:
	push	rbx
	mov	rbx, rdi
	mov	rdi, qword ptr [rbx]
	call	hash_free
	mov	rdi, qword ptr [rbx + 8]
	call	free
	mov	rdi, qword ptr [rbx + 0x10]
	call	free
	mov	rdi, rbx
	pop	rbx
	jmp	free
	.section	.text
	.align	32
	#Procedure 0x418f37
	.globl sub_418f37
	.type sub_418f37, @function
sub_418f37:

	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x418f40

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
	jae	.label_2513
	mov	qword ptr [rsp + 8], rcx
	call	__errno_location
	mov	r12, rax
	mov	dword ptr [r12], 0
	call	__ctype_b_loc
	mov	rcx, qword ptr [rax]
	mov	rdx, rbx
	nop	word ptr cs:[rax + rax]
.label_2508:
	movzx	eax, byte ptr [rdx]
	inc	rdx
	test	byte ptr [rcx + rax*2 + 1], 0x20
	jne	.label_2508
	test	rbp, rbp
	lea	rsi, [rsp + 0x10]
	cmovne	rsi, rbp
	mov	r15d, 4
	cmp	al, 0x2d
	je	.label_2507
	mov	rdi, rbx
	mov	edx, r14d
	mov	r14, rsi
	call	strtoumax
	mov	rcx, r14
	mov	qword ptr [rsp], rax
	mov	rax, qword ptr [rcx]
	cmp	rax, rbx
	je	.label_2514
	mov	eax, dword ptr [r12]
	xor	r12d, r12d
	test	eax, eax
	mov	rbp, r13
	je	.label_2517
	cmp	eax, 0x22
	jne	.label_2507
	mov	r12d, 1
.label_2517:
	test	rbp, rbp
	jne	.label_2520
	jmp	.label_2510
.label_2514:
	mov	rbp, r13
	test	rbp, rbp
	je	.label_2507
	movsx	esi, byte ptr [rax]
	test	esi, esi
	je	.label_2507
	mov	rdi, rbp
	call	strchr
	mov	rcx, r14
	test	rax, rax
	je	.label_2507
	mov	qword ptr [rsp], 1
	xor	r12d, r12d
.label_2520:
	mov	rax, qword ptr [rcx]
	movsx	ebx, byte ptr [rax]
	test	ebx, ebx
	je	.label_2510
	mov	rdi, rbp
	mov	esi, ebx
	call	strchr
	test	rax, rax
	je	.label_2512
	mov	r15d, 0x400
	mov	r13d, 1
	add	ebx, -0x45
	cmp	ebx, 0x2f
	ja	.label_2516
	movabs	rax, 0x814400308945
	bt	rax, rbx
	jae	.label_2516
	mov	esi, 0x30
	mov	rdi, rbp
	call	strchr
	mov	r13d, 1
	mov	rsi, r14
	test	rax, rax
	je	.label_2505
	mov	rax, qword ptr [rsi]
	movsx	ecx, byte ptr [rax + 1]
	mov	r13d, 1
	cmp	ecx, 0x42
	je	.label_2509
	cmp	ecx, 0x44
	je	.label_2509
	cmp	ecx, 0x69
	jne	.label_2505
	xor	ecx, ecx
	cmp	byte ptr [rax + 2], 0x42
	sete	cl
	lea	r13, [rcx + rcx + 1]
	jmp	.label_2505
.label_2509:
	mov	r15d, 0x3e8
	mov	r13d, 2
	jmp	.label_2505
.label_2516:
	mov	rsi, r14
.label_2505:
	mov	rax, qword ptr [rsi]
	movsx	ecx, byte ptr [rax]
	add	ecx, -0x42
	cmp	ecx, 0x35
	ja	.label_2512
	xor	eax, eax
	jmp	qword ptr [word ptr [+ (rcx * 8) + label_2518]]
.label_2815:
	lea	rdi, [rsp]
	mov	edx, 3
	jmp	.label_2506
.label_2512:
	mov	rax, qword ptr [rsp]
	mov	rcx, qword ptr [rsp + 8]
	mov	qword ptr [rcx], rax
	or	r12d, 2
	jmp	.label_2519
.label_2816:
	lea	rdi, [rsp]
	mov	edx, 1
	jmp	.label_2506
.label_2817:
	lea	rdi, [rsp]
	mov	edx, 2
	jmp	.label_2506
.label_2819:
	lea	rdi, [rsp]
	mov	edx, 4
	jmp	.label_2506
.label_2813:
	lea	rdi, [rsp]
	mov	esi, 0x400
	call	bkm_scale_1
	jmp	.label_2511
.label_2814:
	lea	rdi, [rsp]
	mov	edx, 6
	jmp	.label_2506
.label_2818:
	lea	rdi, [rsp]
	mov	edx, 5
	jmp	.label_2506
.label_2820:
	lea	rdi, [rsp]
	mov	edx, 8
	jmp	.label_2506
.label_2821:
	lea	rdi, [rsp]
	mov	edx, 7
.label_2506:
	mov	esi, r15d
	call	bkm_scale_by_power_1
.label_2511:
	mov	rsi, r14
.label_2823:
	or	eax, r12d
	mov	rcx, qword ptr [rsi]
	lea	rdx, [rcx + r13]
	mov	qword ptr [rsi], rdx
	mov	r12d, eax
	or	r12d, 2
	cmp	byte ptr [rcx + r13], 0
	cmove	r12d, eax
.label_2510:
	mov	rax, qword ptr [rsp]
	mov	rcx, qword ptr [rsp + 8]
	mov	qword ptr [rcx], rax
.label_2519:
	mov	r15d, r12d
.label_2507:
	mov	eax, r15d
	add	rsp, 0x18
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_2822:
	lea	rdi, [rsp]
	mov	esi, 0x200
	call	bkm_scale_1
	jmp	.label_2511
.label_2824:
	lea	rdi, [rsp]
	mov	esi, 2
	call	bkm_scale_1
	jmp	.label_2511
.label_2513:
	mov	edi, OFFSET FLAT:label_184
	mov	esi, OFFSET FLAT:label_185
	mov	edx, 0x54
	mov	ecx, OFFSET FLAT:label_2515
	call	__assert_fail
	.section	.text
	.align	32
	#Procedure 0x4191e2
	.globl sub_4191e2
	.type sub_4191e2, @function
sub_4191e2:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4191f0

	.globl parse_dup_op
	.type parse_dup_op, @function
parse_dup_op:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x38
	mov	rbp, r8
	mov	r14, rcx
	mov	r15, rdx
	mov	r12, rdi
	mov	rcx, qword ptr [rsi + 0x48]
	movups	xmm0, xmmword ptr [r14]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movzx	eax, byte ptr [r14 + 8]
	cmp	eax, 0x17
	mov	qword ptr [rsp], r9
	jne	.label_2526
	mov	qword ptr [rsp + 0x18], rcx
	mov	qword ptr [rsp + 0x10], rsi
	mov	rdi, rsi
	mov	rsi, r14
	mov	rax, rbp
	mov	qword ptr [rsp + 8], rax
	mov	rdx, rbp
	call	fetch_number
	mov	rbx, rax
	cmp	rbx, -1
	jne	.label_2532
	cmp	byte ptr [r14 + 8], 1
	mov	rsi, qword ptr [rsp + 0x10]
	jne	.label_2535
	xor	ebx, ebx
	cmp	byte ptr [r14], 0x2c
	je	.label_2538
	jmp	.label_2535
.label_2526:
	xor	ebx, ebx
	cmp	eax, 0x12
	sete	bl
	cmp	eax, 0x13
	mov	eax, 1
	mov	r13, -1
	cmove	r13, rax
.label_2537:
	mov	rdi, r14
	mov	rdx, rbp
	call	fetch_token
	xor	r14d, r14d
	test	r12, r12
	je	.label_2521
	mov	rax, r13
	xor	r14d, r14d
	or	rax, rbx
	je	.label_2527
	test	rbx, rbx
	jg	.label_2530
.label_2533:
	cmp	byte ptr [r12 + 0x30], 0x11
	jne	.label_2531
	mov	rdx, qword ptr [r12 + 0x28]
	mov	esi, OFFSET FLAT:mark_opt_subexp
	mov	rdi, r12
	call	postorder
.label_2531:
	xor	ecx, ecx
	cmp	r13, -1
	sete	cl
	or	ecx, 0xa
	xor	edx, edx
	mov	rdi, r15
	mov	rsi, r12
	call	create_tree
	mov	rbp, rax
	test	rbp, rbp
	je	.label_2528
	lea	rax, [rbx + 2]
	cmp	rax, r13
	jg	.label_2541
	inc	rbx
	nop	dword ptr [rax + rax]
.label_2536:
	mov	rdi, r12
	mov	rsi, r15
	call	duplicate_tree
	mov	r12, rax
	mov	ecx, 0x10
	mov	rdi, r15
	mov	rsi, rbp
	mov	rdx, r12
	call	create_tree
	test	r12, r12
	je	.label_2528
	test	rax, rax
	je	.label_2528
	xor	edx, edx
	mov	ecx, 0xa
	mov	rdi, r15
	mov	rsi, rax
	call	create_tree
	mov	rbp, rax
	test	rbp, rbp
	je	.label_2528
	inc	rbx
	cmp	rbx, r13
	jl	.label_2536
.label_2541:
	test	r14, r14
	je	.label_2539
	mov	ecx, 0x10
	mov	rdi, r15
	mov	rsi, r14
	mov	rdx, rbp
	call	create_tree
	mov	r14, rax
	jmp	.label_2521
.label_2532:
	cmp	rbx, -2
	mov	rsi, qword ptr [rsp + 0x10]
	je	.label_2522
.label_2538:
	mov	al, byte ptr [r14 + 8]
	cmp	al, 0x18
	mov	r13, rbx
	je	.label_2524
	cmp	al, 1
	jne	.label_2522
	cmp	byte ptr [r14], 0x2c
	jne	.label_2522
	mov	rdi, rsi
	mov	rsi, r14
	mov	rdx, qword ptr [rsp + 8]
	call	fetch_number
	mov	rsi, qword ptr [rsp + 0x10]
	mov	r13, rax
	cmp	r13, -2
	je	.label_2522
.label_2524:
	cmp	r13, -1
	je	.label_2534
	cmp	rbx, r13
	jg	.label_2535
.label_2534:
	cmp	byte ptr [r14 + 8], 0x18
	jne	.label_2535
	cmp	r13, -1
	mov	rax, r13
	cmove	rax, rbx
	cmp	rax, 0x8000
	mov	rbp, qword ptr [rsp + 8]
	jl	.label_2537
	mov	rax, qword ptr [rsp]
	mov	dword ptr [rax], 0xf
	xor	r14d, r14d
	jmp	.label_2521
.label_2535:
	mov	rax, qword ptr [rsp]
	mov	dword ptr [rax], 0xa
	xor	r14d, r14d
	jmp	.label_2521
.label_2539:
	mov	r14, rbp
	jmp	.label_2521
.label_2522:
	mov	rax, qword ptr [rsp + 8]
	test	eax, 0x200000
	je	.label_2525
	mov	rax, qword ptr [rsp + 0x18]
	mov	qword ptr [rsi + 0x48], rax
	movaps	xmm0, xmmword ptr [rsp + 0x20]
	movups	xmmword ptr [r14], xmm0
	mov	byte ptr [r14 + 8], 1
	mov	r14, r12
.label_2521:
	mov	rax, r14
	add	rsp, 0x38
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_2527:
	mov	esi, OFFSET FLAT:free_tree
	xor	edx, edx
	mov	rdi, r12
	call	postorder
	jmp	.label_2521
.label_2530:
	cmp	rbx, 1
	jne	.label_2523
	mov	r14, r12
	jmp	.label_2540
.label_2523:
	mov	ebp, 1
	mov	r14, r12
.label_2529:
	mov	rdi, r12
	mov	rsi, r15
	call	duplicate_tree
	mov	r12, rax
	mov	ecx, 0x10
	mov	rdi, r15
	mov	rsi, r14
	mov	rdx, r12
	call	create_tree
	mov	r14, rax
	test	r12, r12
	je	.label_2528
	test	r14, r14
	je	.label_2528
	inc	rbp
	cmp	rbp, rbx
	jl	.label_2529
.label_2540:
	cmp	rbx, r13
	je	.label_2521
	mov	rdi, r12
	mov	rsi, r15
	call	duplicate_tree
	mov	r12, rax
	test	r12, r12
	jne	.label_2533
.label_2528:
	mov	rax, qword ptr [rsp]
	mov	dword ptr [rax], 0xc
	xor	r14d, r14d
	jmp	.label_2521
.label_2525:
	xor	eax, eax
	cmp	byte ptr [r14 + 8], 2
	setne	al
	add	eax, 9
	mov	rcx, qword ptr [rsp]
	mov	dword ptr [rcx], eax
	xor	r14d, r14d
	jmp	.label_2521
	.section	.text
	.align	32
	#Procedure 0x4194ff
	.globl sub_4194ff
	.type sub_4194ff, @function
sub_4194ff:

	nop	
	.section	.text
	.align	32
	#Procedure 0x419500

	.globl rpl_fts_read
	.type rpl_fts_read, @function
rpl_fts_read:
	push	r15
	push	r14
	push	rbx
	mov	r14, rdi
	mov	rbx, qword ptr [r14]
	xor	r15d, r15d
	test	rbx, rbx
	je	.label_2542
	xor	r15d, r15d
	test	byte ptr [r14 + 0x49], 0x20
	jne	.label_2542
	movzx	eax, word ptr [rbx + 0x74]
	mov	word ptr [rbx + 0x74], 3
	cmp	eax, 2
	je	.label_2549
	movzx	ecx, ax
	cmp	ecx, 1
	jne	.label_2552
	xor	edx, edx
	mov	rdi, r14
	mov	rsi, rbx
	call	fts_stat
	mov	word ptr [rbx + 0x70], ax
	mov	r15, rbx
	jmp	.label_2542
.label_2549:
	movzx	ecx, word ptr [rbx + 0x70]
	and	ecx, 0xfffe
	cmp	ecx, 0xc
	jne	.label_2552
	mov	edx, 1
	mov	rdi, r14
	mov	rsi, rbx
	call	fts_stat
	mov	word ptr [rbx + 0x70], ax
	movzx	eax, ax
	cmp	eax, 1
	jne	.label_2564
	test	byte ptr [r14 + 0x48], 4
	jne	.label_2564
	mov	esi, OFFSET FLAT:label_595
	mov	rdi, r14
	call	diropen
	mov	dword ptr [rbx + 0x44], eax
	test	eax, eax
	js	.label_2571
	or	byte ptr [rbx + 0x72], 2
	mov	r15, rbx
	jmp	.label_2550
.label_2552:
	movzx	ecx, word ptr [rbx + 0x70]
	cmp	ecx, 1
	jne	.label_2566
	movzx	eax, ax
	cmp	eax, 4
	je	.label_2573
	test	byte ptr [r14 + 0x48], 0x40
	je	.label_2574
	mov	rax, qword ptr [rbx + 0x78]
	cmp	rax, qword ptr [r14 + 0x18]
	jne	.label_2573
.label_2574:
	cmp	qword ptr [r14 + 8], 0
	je	.label_2579
	mov	eax, dword ptr [r14 + 0x48]
	test	ah, 0x10
	jne	.label_2580
	cmp	qword ptr [r14 + 8], 0
	je	.label_2579
	mov	rcx, qword ptr [rbx + 0x30]
	mov	edx, 0xffffffff
	mov	rdi, r14
	mov	rsi, rbx
	call	fts_safe_changedir
	test	eax, eax
	je	.label_2547
	call	__errno_location
	mov	eax, dword ptr [rax]
	mov	dword ptr [rbx + 0x40], eax
	or	byte ptr [rbx + 0x72], 1
	mov	rax, qword ptr [r14 + 8]
	jmp	.label_2578
	.section	.text
	.align	32
	#Procedure 0x419637
	.globl sub_419637
	.type sub_419637, @function
sub_419637:

	nop	word ptr [rax + rax]
.label_2566:
	mov	r15, qword ptr [rbx + 0x10]
	test	r15, r15
	jne	.label_2554
	mov	rax, qword ptr [rbx + 8]
	cmp	qword ptr [rax + 0x18], 0
	jne	.label_2572
	mov	r15, qword ptr [rbx + 0x10]
	test	r15, r15
	je	.label_2558
.label_2554:
	mov	qword ptr [r14], r15
	mov	rdi, rbx
	call	free
	cmp	qword ptr [r15 + 0x58], 0
	je	.label_2562
	movzx	eax, word ptr [r15 + 0x74]
	cmp	eax, 4
	mov	rbx, r15
	je	.label_2566
	movzx	eax, ax
	cmp	eax, 2
	jne	.label_2555
	mov	edx, 1
	mov	rdi, r14
	mov	rsi, r15
	call	fts_stat
	mov	word ptr [r15 + 0x70], ax
	movzx	eax, ax
	cmp	eax, 1
	jne	.label_2551
	test	byte ptr [r14 + 0x48], 4
	jne	.label_2551
	mov	esi, OFFSET FLAT:label_595
	mov	rdi, r14
	call	diropen
	mov	dword ptr [r15 + 0x44], eax
	test	eax, eax
	js	.label_2575
	or	byte ptr [r15 + 0x72], 2
	jmp	.label_2551
.label_2553:
	mov	rcx, qword ptr [rax + 8]
	mov	rcx, qword ptr [rcx + 0x30]
	mov	qword ptr [rax + 0x30], rcx
	mov	rax, qword ptr [rax + 0x10]
.label_2578:
	test	rax, rax
	jne	.label_2553
	jmp	.label_2547
.label_2573:
	test	byte ptr [rbx + 0x72], 2
	je	.label_2581
	mov	edi, dword ptr [rbx + 0x44]
	call	close
.label_2581:
	mov	rdi, qword ptr [r14 + 8]
	test	rdi, rdi
	je	.label_2544
	call	fts_lfree
	mov	qword ptr [r14 + 8], 0
.label_2544:
	mov	word ptr [rbx + 0x70], 6
.label_2543:
	mov	rdi, r14
	mov	rsi, rbx
	call	leave_dir
	mov	r15, rbx
	jmp	.label_2542
.label_2564:
	mov	r15, rbx
	jmp	.label_2550
.label_2562:
	mov	rdi, r14
	call	restore_initial_cwd
	test	eax, eax
	je	.label_2556
	or	byte ptr [r14 + 0x49], 0x20
	xor	r15d, r15d
	jmp	.label_2542
.label_2572:
	mov	qword ptr [r14], rax
	mov	rax, qword ptr [rax + 0x48]
	mov	rcx, qword ptr [r14 + 0x20]
	mov	byte ptr [rcx + rax], 0
	mov	esi, 3
	mov	rdi, r14
	call	fts_build
	mov	r15, rax
	test	r15, r15
	je	.label_2565
	mov	rdi, rbx
	call	free
	jmp	.label_2555
.label_2556:
	mov	rdi, r14
	call	free_dir
	mov	rdi, r14
	mov	rsi, r15
	call	fts_load
	mov	rdi, r14
	call	setup_dir
	jmp	.label_2550
.label_2580:
	and	eax, 0xffffefff
	mov	dword ptr [r14 + 0x48], eax
	mov	rdi, qword ptr [r14 + 8]
	call	fts_lfree
	mov	qword ptr [r14 + 8], 0
.label_2579:
	mov	esi, 3
	mov	rdi, r14
	call	fts_build
	mov	qword ptr [r14 + 8], rax
	test	rax, rax
	je	.label_2576
.label_2547:
	mov	r15, qword ptr [r14 + 8]
	mov	qword ptr [r14 + 8], 0
	jmp	.label_2555
.label_2576:
	xor	r15d, r15d
	test	byte ptr [r14 + 0x49], 0x20
	jne	.label_2542
	cmp	dword ptr [rbx + 0x40], 0
	je	.label_2543
	movzx	eax, word ptr [rbx + 0x70]
	cmp	eax, 4
	je	.label_2543
	mov	word ptr [rbx + 0x70], 7
	jmp	.label_2543
.label_2571:
	call	__errno_location
	mov	eax, dword ptr [rax]
	mov	dword ptr [rbx + 0x40], eax
	mov	word ptr [rbx + 0x70], 7
	mov	r15, rbx
	jmp	.label_2550
.label_2565:
	xor	r15d, r15d
	test	byte ptr [r14 + 0x49], 0x20
	jne	.label_2542
.label_2558:
	mov	r15, qword ptr [rbx + 8]
	mov	qword ptr [r14], r15
	mov	rdi, rbx
	call	free
	cmp	qword ptr [r15 + 0x58], -1
	je	.label_2557
	movzx	eax, word ptr [r15 + 0x70]
	cmp	eax, 0xb
	je	.label_2559
	mov	rax, qword ptr [r15 + 0x48]
	mov	rcx, qword ptr [r14 + 0x20]
	mov	byte ptr [rcx + rax], 0
	cmp	qword ptr [r15 + 0x58], 0
	je	.label_2561
	movzx	eax, word ptr [r15 + 0x72]
	test	al, 2
	jne	.label_2568
	test	al, 1
	jne	.label_2569
	mov	rsi, qword ptr [r15 + 8]
	mov	edx, 0xffffffff
	mov	ecx, OFFSET FLAT:label_1032
	mov	rdi, r14
	call	fts_safe_changedir
	jmp	.label_2545
.label_2557:
	mov	rdi, r15
	call	free
	call	__errno_location
	mov	dword ptr [rax], 0
	mov	qword ptr [r14], 0
	xor	r15d, r15d
	jmp	.label_2542
.label_2561:
	mov	rdi, r14
	call	restore_initial_cwd
.label_2545:
	test	eax, eax
	je	.label_2569
	call	__errno_location
	mov	eax, dword ptr [rax]
	mov	dword ptr [r15 + 0x40], eax
	or	byte ptr [r14 + 0x49], 0x20
	jmp	.label_2569
.label_2568:
	mov	eax, dword ptr [r14 + 0x48]
	test	al, 4
	jne	.label_2546
	test	ah, 2
	mov	esi, dword ptr [r15 + 0x44]
	jne	.label_2577
	mov	edi, esi
	call	fchdir
	test	eax, eax
	je	.label_2546
	call	__errno_location
	mov	eax, dword ptr [rax]
	mov	dword ptr [r15 + 0x40], eax
	or	byte ptr [r14 + 0x49], 0x20
	jmp	.label_2546
.label_2575:
	call	__errno_location
	mov	eax, dword ptr [rax]
	mov	dword ptr [r15 + 0x40], eax
	mov	word ptr [r15 + 0x70], 7
.label_2551:
	mov	word ptr [r15 + 0x74], 3
.label_2555:
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
.label_2550:
	mov	qword ptr [r14], r15
	movzx	eax, word ptr [r15 + 0x70]
	cmp	eax, 0xb
	jne	.label_2567
	mov	rax, qword ptr [r15 + 0xa8]
	cmp	rax, 1
	je	.label_2570
	cmp	rax, 2
	jne	.label_2559
	mov	rbx, qword ptr [r15 + 8]
	cmp	qword ptr [rbx + 0x68], 0
	jne	.label_2563
	mov	eax, dword ptr [r14 + 0x48]
	and	eax, 0x18
	cmp	eax, 0x18
	jne	.label_2563
	mov	esi, dword ptr [r14 + 0x2c]
	mov	rdi, rbx
	call	leaf_optimization
	cmp	eax, 2
	je	.label_2570
.label_2563:
	xor	edx, edx
	mov	rdi, r14
	mov	rsi, r15
	call	fts_stat
	mov	word ptr [r15 + 0x70], ax
	mov	ecx, 0xf000
	and	ecx, dword ptr [r15 + 0x90]
	cmp	ecx, 0x4000
	jne	.label_2567
	cmp	qword ptr [r15 + 0x58], 0
	je	.label_2570
	mov	rax, qword ptr [rbx + 0x68]
	lea	rcx, [rax + 1]
	cmp	rcx, 2
	jb	.label_2570
	dec	rax
	mov	qword ptr [rbx + 0x68], rax
.label_2570:
	mov	ax, word ptr [r15 + 0x70]
.label_2567:
	movzx	eax, ax
	cmp	eax, 1
	jne	.label_2542
	cmp	qword ptr [r15 + 0x58], 0
	jne	.label_2548
	mov	rax, qword ptr [r15 + 0x78]
	mov	qword ptr [r14 + 0x18], rax
.label_2548:
	mov	rdi, r14
	mov	rsi, r15
	call	enter_dir
	test	al, al
	jne	.label_2542
	call	__errno_location
	mov	dword ptr [rax], 0xc
	xor	r15d, r15d
	jmp	.label_2542
.label_2577:
	mov	edx, 1
	mov	rdi, r14
	call	cwd_advance_fd
.label_2546:
	mov	edi, dword ptr [r15 + 0x44]
	call	close
.label_2569:
	movzx	eax, word ptr [r15 + 0x70]
	cmp	eax, 2
	je	.label_2560
	mov	eax, dword ptr [r15 + 0x40]
	xor	ecx, ecx
	cmp	eax, 0
	setne	cl
	or	ecx, 6
	cmp	eax, 0
	mov	word ptr [r15 + 0x70], cx
	jne	.label_2560
	mov	rdi, r14
	mov	rsi, r15
	call	leave_dir
.label_2560:
	xor	eax, eax
	test	byte ptr [r14 + 0x49], 0x20
	cmovne	r15, rax
.label_2542:
	mov	rax, r15
	pop	rbx
	pop	r14
	pop	r15
	ret	
.label_2559:
	call	abort
	.section	.text
	.align	32
	#Procedure 0x419aa7
	.globl sub_419aa7
	.type sub_419aa7, @function
sub_419aa7:

	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x419ab0

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
	#Procedure 0x419ae9
	.globl sub_419ae9
	.type sub_419ae9, @function
sub_419ae9:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x419af0

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
	#Procedure 0x419b01
	.globl sub_419b01
	.type sub_419b01, @function
sub_419b01:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x419b10
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
	#Procedure 0x419b24
	.globl sub_419b24
	.type sub_419b24, @function
sub_419b24:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x419b30

	.globl parse_branch
	.type parse_branch, @function
parse_branch:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x18
	mov	r14, r9
	mov	r12, r8
	mov	r13, rdx
	mov	rbp, rsi
	mov	rax, qword ptr [rbp]
	mov	qword ptr [rsp], rax
	mov	qword ptr [rsp + 8], rdi
	mov	qword ptr [rsp + 0x10], rcx
	call	parse_expression
	xor	r15d, r15d
	test	rax, rax
	jne	.label_2588
	mov	ecx, dword ptr [r14]
	test	ecx, ecx
	je	.label_2588
	jmp	.label_2585
	.section	.text
	.align	32
	#Procedure 0x419b75
	.globl sub_419b75
	.type sub_419b75, @function
sub_419b75:

	nop	word ptr cs:[rax + rax]
.label_2586:
	test	rbx, rbx
	cmovne	r15, rbx
	mov	rax, r15
.label_2588:
	mov	rbx, rax
	movzx	eax, byte ptr [r13 + 8]
	mov	ecx, eax
	or	cl, 8
	cmp	cl, 0xa
	je	.label_2583
	test	r12, r12
	je	.label_2587
	cmp	eax, 9
	je	.label_2583
.label_2587:
	mov	rdi, qword ptr [rsp + 8]
	mov	rsi, rbp
	mov	rdx, r13
	mov	rcx, qword ptr [rsp + 0x10]
	mov	r8, r12
	mov	r9, r14
	call	parse_expression
	mov	r15, rax
	test	r15, r15
	jne	.label_2582
	mov	eax, dword ptr [r14]
	test	eax, eax
	jne	.label_2584
.label_2582:
	test	rbx, rbx
	je	.label_2586
	test	r15, r15
	je	.label_2586
	mov	ecx, 0x10
	mov	rdi, qword ptr [rsp]
	mov	rsi, rbx
	mov	rdx, r15
	call	create_tree
	test	rax, rax
	jne	.label_2588
	mov	esi, OFFSET FLAT:free_tree
	xor	edx, edx
	mov	rdi, r15
	xor	r15d, r15d
	call	postorder
	mov	esi, OFFSET FLAT:free_tree
	xor	edx, edx
	mov	rdi, rbx
	call	postorder
	mov	dword ptr [r14], 0xc
	jmp	.label_2585
.label_2583:
	mov	r15, rbx
.label_2585:
	mov	rax, r15
	add	rsp, 0x18
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_2584:
	xor	r15d, r15d
	test	rbx, rbx
	je	.label_2585
	xor	r15d, r15d
	mov	esi, OFFSET FLAT:free_tree
	xor	edx, edx
	mov	rdi, rbx
	call	postorder
	jmp	.label_2585
	.section	.text
	.align	32
	#Procedure 0x419c52
	.globl sub_419c52
	.type sub_419c52, @function
sub_419c52:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x419c60

	.globl free_token
	.type free_token, @function
free_token:
	mov	eax, dword ptr [rdi + 8]
	and	eax, 0x400ff
	cmp	eax, 6
	jne	.label_2589
	mov	rdi, qword ptr [rdi]
	jmp	free_charset
.label_2589:
	cmp	eax, 3
	jne	.label_2590
	mov	rdi, qword ptr [rdi]
	jmp	free
.label_2590:
	ret	
	.section	.text
	.align	32
	#Procedure 0x419c80

	.globl free_state
	.type free_state, @function
free_state:
	push	rbx
	mov	rbx, rdi
	mov	rdi, qword ptr [rbx + 0x30]
	call	free
	mov	rdi, qword ptr [rbx + 0x48]
	call	free
	mov	rax, qword ptr [rbx + 0x50]
	lea	rcx, [rbx + 8]
	cmp	rax, rcx
	je	.label_2591
	mov	rdi, qword ptr [rax + 0x10]
	call	free
	mov	rdi, qword ptr [rbx + 0x50]
	call	free
.label_2591:
	mov	rdi, qword ptr [rbx + 0x18]
	call	free
	mov	rdi, qword ptr [rbx + 0x60]
	call	free
	mov	rdi, qword ptr [rbx + 0x58]
	call	free
	mov	rdi, rbx
	pop	rbx
	jmp	free
	.section	.text
	.align	32
	#Procedure 0x419cd9
	.globl sub_419cd9
	.type sub_419cd9, @function
sub_419cd9:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x419ce0

	.globl free_charset
	.type free_charset, @function
free_charset:
	push	rbx
	mov	rbx, rdi
	mov	rdi, qword ptr [rbx]
	call	free
	mov	rdi, qword ptr [rbx + 8]
	call	free
	mov	rdi, qword ptr [rbx + 0x10]
	call	free
	mov	rdi, qword ptr [rbx + 0x18]
	call	free
	mov	rdi, rbx
	pop	rbx
	jmp	free
	.section	.text
	.align	32
	#Procedure 0x419d10

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
	je	.label_2592
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
.label_2592:
	call	abort
	.section	.text
	.align	32
	#Procedure 0x419d62
	.globl sub_419d62
	.type sub_419d62, @function
sub_419d62:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x419d70

	.globl close_stdout
	.type close_stdout, @function
close_stdout:
	push	rbp
	push	r14
	push	rbx
	mov	rdi,  qword ptr [word ptr [rip + stdout]]
	call	close_stream
	test	eax, eax
	je	.label_2593
	cmp	byte ptr [byte ptr [rip + ignore_EPIPE]],  0
	je	.label_2595
	call	__errno_location
	cmp	dword ptr [rax], 0x20
	jne	.label_2595
.label_2593:
	mov	rdi,  qword ptr [word ptr [rip + stderr]]
	call	close_stream
	test	eax, eax
	jne	.label_2594
	pop	rbx
	pop	r14
	pop	rbp
	ret	
.label_2594:
	mov	edi,  dword ptr [dword ptr [rip + exit_failure]]
	call	_exit
.label_2595:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_2597
	mov	edx, 5
	call	dcgettext
	mov	r14, rax
	mov	rbx,  qword ptr [word ptr [rip + file_name]]
	call	__errno_location
	test	rbx, rbx
	mov	ebp, dword ptr [rax]
	jne	.label_2596
	xor	edi, edi
	mov	edx, OFFSET FLAT:label_582
	xor	eax, eax
	mov	esi, ebp
	mov	rcx, r14
	call	error
	mov	edi,  dword ptr [dword ptr [rip + exit_failure]]
	call	_exit
.label_2596:
	mov	rdi, rbx
	call	quotearg_colon
	mov	rcx, rax
	xor	edi, edi
	mov	edx, OFFSET FLAT:label_2598
	xor	eax, eax
	mov	esi, ebp
	mov	r8, r14
	call	error
	mov	edi,  dword ptr [dword ptr [rip + exit_failure]]
	call	_exit
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x419e30

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
	#Procedure 0x419e79
	.globl sub_419e79
	.type sub_419e79, @function
sub_419e79:

	nop	dword ptr [rax]
.label_2637:
	mov	edi, OFFSET FLAT:label_2599
	mov	esi, OFFSET FLAT:label_584
	call	setmntent
	mov	rbx, rax
	xor	eax, eax
	test	rbx, rbx
	je	.label_2604
	mov	rdi, rbx
	call	getmntent
	mov	rbp, rax
	test	rbp, rbp
	je	.label_2610
	lea	r15, [rsp + 0x18]
	nop	word ptr [rax + rax]
.label_2623:
	mov	esi, OFFSET FLAT:label_2619
	mov	rdi, rbp
	call	hasmntopt
	mov	qword ptr [rsp + 0x50], rax
	mov	edi, 0x38
	call	xmalloc
	mov	r12, rax
	mov	rdi, qword ptr [rbp]
	call	xstrdup
	mov	qword ptr [r12], rax
	mov	rdi, qword ptr [rbp + 8]
	call	xstrdup
	mov	qword ptr [r12 + 8], rax
	mov	qword ptr [r12 + 0x10], 0
	mov	rdi, qword ptr [rbp + 0x10]
	call	xstrdup
	mov	rbp, rax
	mov	qword ptr [r12 + 0x18], rbp
	or	byte ptr [r12 + 0x28], 4
	mov	esi, OFFSET FLAT:label_2603
	mov	rdi, rbp
	call	strcmp
	mov	r13b, 1
	test	eax, eax
	mov	r14b, 1
	je	.label_2602
	mov	esi, OFFSET FLAT:label_2613
	mov	rdi, rbp
	call	strcmp
	test	eax, eax
	mov	r14b, 1
	je	.label_2602
	mov	esi, OFFSET FLAT:label_2617
	mov	rdi, rbp
	call	strcmp
	test	eax, eax
	mov	r14b, 1
	je	.label_2602
	mov	esi, OFFSET FLAT:label_2621
	mov	rdi, rbp
	call	strcmp
	test	eax, eax
	mov	r14b, 1
	je	.label_2602
	mov	esi, OFFSET FLAT:label_2625
	mov	rdi, rbp
	call	strcmp
	test	eax, eax
	mov	r14b, 1
	je	.label_2602
	mov	esi, OFFSET FLAT:label_2606
	mov	rdi, rbp
	call	strcmp
	test	eax, eax
	mov	r14b, 1
	je	.label_2602
	mov	esi, OFFSET FLAT:label_2611
	mov	rdi, rbp
	call	strcmp
	test	eax, eax
	mov	r14b, 1
	je	.label_2602
	mov	esi, OFFSET FLAT:label_2615
	mov	rdi, rbp
	call	strcmp
	test	eax, eax
	mov	r14b, 1
	je	.label_2602
	mov	esi, OFFSET FLAT:label_2618
	mov	rdi, rbp
	call	strcmp
	test	eax, eax
	mov	r14b, 1
	je	.label_2602
	mov	esi, OFFSET FLAT:label_2622
	mov	rdi, rbp
	call	strcmp
	test	eax, eax
	mov	r14b, 1
	je	.label_2602
	mov	esi, OFFSET FLAT:label_2601
	mov	rdi, rbp
	call	strcmp
	test	eax, eax
	mov	r14b, 1
	je	.label_2602
	mov	esi, OFFSET FLAT:label_2620
	mov	rdi, rbp
	call	strcmp
	test	eax, eax
	mov	r14b, 1
	je	.label_2602
	cmp	qword ptr [rsp + 0x50], 0
	sete	r14b
	mov	esi, OFFSET FLAT:label_2614
	mov	rdi, rbp
	call	strcmp
	test	eax, eax
	je	.label_2602
	xor	r14d, r14d
	nop	word ptr [rax + rax]
.label_2602:
	movzx	eax, byte ptr [r12 + 0x28]
	and	al, 0xfe
	or	al, r14b
	mov	byte ptr [r12 + 0x28], al
	mov	rbp, qword ptr [r12]
	mov	esi, 0x3a
	mov	rdi, rbp
	call	strchr
	test	rax, rax
	jne	.label_2605
	cmp	byte ptr [rbp], 0x2f
	jne	.label_2624
	cmp	byte ptr [rbp + 1], 0x2f
	jne	.label_2624
	mov	rbp, qword ptr [r12 + 0x18]
	mov	esi, OFFSET FLAT:label_2600
	mov	rdi, rbp
	call	strcmp
	test	eax, eax
	je	.label_2605
	mov	esi, OFFSET FLAT:label_2607
	mov	rdi, rbp
	call	strcmp
	test	eax, eax
	je	.label_2605
	nop	dword ptr [rax]
.label_2624:
	mov	rsi, qword ptr [r12]
	mov	edi, OFFSET FLAT:label_2612
	call	strcmp
	test	eax, eax
	sete	r13b
.label_2605:
	movzx	eax, byte ptr [r12 + 0x28]
	add	r13b, r13b
	and	al, 0xfd
	or	al, r13b
	mov	byte ptr [r12 + 0x28], al
	mov	qword ptr [r12 + 0x20], -1
	mov	qword ptr [r15], r12
	add	r12, 0x30
	mov	rdi, rbx
	call	getmntent
	mov	rbp, rax
	test	rbp, rbp
	mov	r15, r12
	jne	.label_2623
	jmp	.label_2626
.label_2638:
	mov	rdi, r14
	call	rpl_fclose
	cmp	eax, -1
	jne	.label_2629
	jmp	.label_2608
.label_2610:
	lea	r12, [rsp + 0x18]
.label_2626:
	mov	rdi, rbx
	call	endmntent
	test	eax, eax
	je	.label_2608
.label_2629:
	mov	qword ptr [r12], 0
	mov	rax, qword ptr [rsp + 0x18]
.label_2604:
	add	rsp, 0x58
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x41a142
	.globl sub_41a142
	.type sub_41a142, @function
sub_41a142:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x41a14f

	.globl read_file_system_list
	.type read_file_system_list, @function
read_file_system_list:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x58
	mov	edi, OFFSET FLAT:label_2634
	mov	esi, OFFSET FLAT:label_584
	call	fopen
	mov	r14, rax
	test	r14, r14
	je	.label_2637
	mov	qword ptr [rsp + 8], 0
	mov	qword ptr [rsp + 0x48], 0
	lea	rdi, [rsp + 8]
	lea	rsi, [rsp + 0x48]
	mov	rdx, r14
	call	getline
	lea	r12, [rsp + 0x18]
	cmp	rax, -1
	je	.label_2632
	lea	rbx, [rsp + 7]
	lea	r15, [rsp + 0x2c]
	lea	r13, [rsp + 0x14]
	nop	dword ptr [rax + rax]
.label_2635:
	mov	rdi, qword ptr [rsp + 8]
	sub	rsp, 8
	mov	esi, OFFSET FLAT:label_2639
	mov	eax, 0
	lea	rdx, [rsp + 0x4c]
	lea	rcx, [rsp + 0x48]
	lea	r8, [rsp + 0x2c]
	lea	r9, [rsp + 0x38]
	push	rbx
	push	r15
	push	r13
	call	sscanf
	add	rsp, 0x20
	or	eax, 4
	cmp	eax, 7
	jne	.label_2631
	movsxd	rdi, dword ptr [rsp + 0x2c]
	add	rdi, qword ptr [rsp + 8]
	mov	esi, OFFSET FLAT:label_2627
	call	strstr
	mov	rbp, rax
	test	rbp, rbp
	je	.label_2631
	sub	rsp, 8
	mov	esi, OFFSET FLAT:label_2633
	xor	eax, eax
	mov	rdi, rbp
	lea	rdx, [rsp + 0x44]
	lea	rcx, [rsp + 0x40]
	lea	r8, [rsp + 0x30]
	lea	r9, [rsp + 0x3c]
	push	rbx
	call	sscanf
	add	rsp, 0x10
	or	eax, 4
	cmp	eax, 5
	jne	.label_2631
	movsxd	rax, dword ptr [rsp + 0x30]
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + rax], 0
	movsxd	rax, dword ptr [rsp + 0x2c]
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + rax], 0
	movsxd	rax, dword ptr [rsp + 0x38]
	mov	byte ptr [rbp + rax], 0
	movsxd	rax, dword ptr [rsp + 0x34]
	mov	byte ptr [rbp + rax], 0
	movsxd	rdi, dword ptr [rsp + 0x28]
	add	rdi, rbp
	call	unescape_tab
	movsxd	rdi, dword ptr [rsp + 0x14]
	add	rdi, qword ptr [rsp + 8]
	call	unescape_tab
	movsxd	rdi, dword ptr [rsp + 0x24]
	add	rdi, qword ptr [rsp + 8]
	call	unescape_tab
	mov	edi, 0x38
	call	xmalloc
	mov	r13, rax
	movsxd	rdi, dword ptr [rsp + 0x28]
	add	rdi, rbp
	call	xstrdup
	mov	qword ptr [r13], rax
	movsxd	rdi, dword ptr [rsp + 0x14]
	add	rdi, qword ptr [rsp + 8]
	call	xstrdup
	mov	qword ptr [r13 + 8], rax
	movsxd	rdi, dword ptr [rsp + 0x24]
	add	rdi, qword ptr [rsp + 8]
	call	xstrdup
	mov	qword ptr [r13 + 0x10], rax
	movsxd	rdi, dword ptr [rsp + 0x3c]
	add	rdi, rbp
	call	xstrdup
	mov	qword ptr [r13 + 0x18], rax
	or	byte ptr [r13 + 0x28], 4
	mov	edi, dword ptr [rsp + 0x44]
	mov	esi, dword ptr [rsp + 0x40]
	call	gnu_dev_makedev
	mov	qword ptr [r13 + 0x20], rax
	mov	rbp, qword ptr [r13 + 0x18]
	mov	esi, OFFSET FLAT:label_2603
	mov	rdi, rbp
	call	strcmp
	mov	bl, 1
	test	eax, eax
	mov	al, 1
	je	.label_2630
	mov	esi, OFFSET FLAT:label_2613
	mov	rdi, rbp
	call	strcmp
	test	eax, eax
	mov	al, 1
	je	.label_2630
	mov	esi, OFFSET FLAT:label_2617
	mov	rdi, rbp
	call	strcmp
	test	eax, eax
	mov	al, 1
	je	.label_2630
	mov	esi, OFFSET FLAT:label_2621
	mov	rdi, rbp
	call	strcmp
	test	eax, eax
	mov	al, 1
	je	.label_2630
	mov	esi, OFFSET FLAT:label_2625
	mov	rdi, rbp
	call	strcmp
	test	eax, eax
	mov	al, 1
	je	.label_2630
	mov	esi, OFFSET FLAT:label_2606
	mov	rdi, rbp
	call	strcmp
	test	eax, eax
	mov	al, 1
	je	.label_2630
	mov	esi, OFFSET FLAT:label_2611
	mov	rdi, rbp
	call	strcmp
	test	eax, eax
	mov	al, 1
	je	.label_2630
	mov	esi, OFFSET FLAT:label_2615
	mov	rdi, rbp
	call	strcmp
	test	eax, eax
	mov	al, 1
	je	.label_2630
	mov	esi, OFFSET FLAT:label_2618
	mov	rdi, rbp
	call	strcmp
	test	eax, eax
	mov	al, 1
	je	.label_2630
	mov	esi, OFFSET FLAT:label_2622
	mov	rdi, rbp
	call	strcmp
	test	eax, eax
	mov	al, 1
	je	.label_2630
	mov	esi, OFFSET FLAT:label_2601
	mov	rdi, rbp
	call	strcmp
	test	eax, eax
	mov	al, 1
	je	.label_2630
	mov	esi, OFFSET FLAT:label_2620
	mov	rdi, rbp
	call	strcmp
	test	eax, eax
	mov	al, 1
	je	.label_2630
	mov	esi, OFFSET FLAT:label_2614
	mov	rdi, rbp
	call	strcmp
	test	eax, eax
	sete	al
	nop	word ptr cs:[rax + rax]
.label_2630:
	movzx	ecx, byte ptr [r13 + 0x28]
	and	cl, 0xfe
	or	cl, al
	mov	byte ptr [r13 + 0x28], cl
	mov	rbp, qword ptr [r13]
	mov	esi, 0x3a
	mov	rdi, rbp
	call	strchr
	test	rax, rax
	jne	.label_2628
	cmp	byte ptr [rbp], 0x2f
	jne	.label_2636
	cmp	byte ptr [rbp + 1], 0x2f
	jne	.label_2636
	mov	rbp, qword ptr [r13 + 0x18]
	mov	esi, OFFSET FLAT:label_2600
	mov	rdi, rbp
	call	strcmp
	test	eax, eax
	je	.label_2628
	mov	esi, OFFSET FLAT:label_2607
	mov	rdi, rbp
	call	strcmp
	test	eax, eax
	je	.label_2628
.label_2636:
	mov	rsi, qword ptr [r13]
	mov	edi, OFFSET FLAT:label_2612
	call	strcmp
	test	eax, eax
	sete	bl
.label_2628:
	movzx	eax, byte ptr [r13 + 0x28]
	add	bl, bl
	and	al, 0xfd
	or	al, bl
	mov	byte ptr [r13 + 0x28], al
	mov	qword ptr [r12], r13
	add	r13, 0x30
	mov	r12, r13
	lea	rbx, [rsp + 7]
	lea	r13, [rsp + 0x14]
.label_2631:
	lea	rdi, [rsp + 8]
	lea	rsi, [rsp + 0x48]
	mov	rdx, r14
	call	getline
	cmp	rax, -1
	jne	.label_2635
.label_2632:
	mov	rdi, qword ptr [rsp + 8]
	call	free
	mov	rdi, r14
	call	ferror_unlocked
	test	eax, eax
	je	.label_2638
	call	__errno_location
	mov	rbp, rax
	mov	r15d, dword ptr [rbp]
	mov	rdi, r14
	call	rpl_fclose
	mov	dword ptr [rbp], r15d
.label_2608:
	call	__errno_location
	mov	rbp, rax
	mov	r14d, dword ptr [rbp]
	mov	qword ptr [r12], 0
	mov	rdi, qword ptr [rsp + 0x18]
	test	rdi, rdi
	je	.label_2609
	nop	dword ptr [rax]
.label_2616:
	mov	rbx, qword ptr [rdi + 0x30]
	call	free_mount_entry
	mov	qword ptr [rsp + 0x18], rbx
	test	rbx, rbx
	mov	rdi, rbx
	jne	.label_2616
.label_2609:
	mov	dword ptr [rbp], r14d
	xor	eax, eax
	jmp	.label_2604
	.section	.text
	.align	32
	#Procedure 0x41a560

	.globl get_subexp_sub
	.type get_subexp_sub, @function
get_subexp_sub:
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x10
	mov	r12, r8
	mov	r13, rcx
	mov	rbx, rdx
	mov	r15, rsi
	mov	r14, rdi
	lea	rsi, [rbx + 0x10]
	mov	rdx, qword ptr [rbx]
	mov	rcx, qword ptr [rbx + 8]
	mov	dword ptr [rsp], 8
	mov	r8, r13
	mov	r9, r12
	call	check_arrival
	test	eax, eax
	jne	.label_2640
	mov	rcx, qword ptr [r15]
	mov	r8, qword ptr [rbx + 8]
	mov	rdi, r14
	mov	rsi, r13
	mov	rdx, r12
	call	match_ctx_add_entry
	test	eax, eax
	jne	.label_2640
	add	r12, qword ptr [rbx + 8]
	sub	r12, qword ptr [r15]
	mov	rdi, r14
	mov	rsi, r12
	add	rsp, 0x10
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	jmp	clean_state_log_if_needed
.label_2640:
	add	rsp, 0x10
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	ret	
	.section	.text
	.align	32
	#Procedure 0x41a5e3
	.globl sub_41a5e3
	.type sub_41a5e3, @function
sub_41a5e3:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x41a5f0

	.globl push_fail_stack
	.type push_fail_stack, @function
push_fail_stack:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x18
	mov	qword ptr [rsp + 0x10], r9
	mov	qword ptr [rsp + 8], r8
	mov	r15, rcx
	mov	r13, rdx
	mov	rbp, rsi
	mov	rbx, rdi
	mov	r14, qword ptr [rbx]
	lea	rcx, [r14 + 1]
	mov	qword ptr [rbx], rcx
	mov	rax, qword ptr [rbx + 8]
	cmp	rcx, rax
	jne	.label_2641
	mov	rdi, qword ptr [rbx + 0x10]
	shl	rax, 5
	lea	rsi, [rax + rax*2]
	call	realloc
	test	rax, rax
	je	.label_2642
	shl	qword ptr [rbx + 8], 1
	mov	qword ptr [rbx + 0x10], rax
.label_2641:
	mov	rax, qword ptr [rbx + 0x10]
	mov	rcx, r14
	shl	rcx, 4
	lea	r12, [rcx + rcx*2]
	mov	qword ptr [rax + r12], rbp
	mov	rax, qword ptr [rbx + 0x10]
	mov	qword ptr [rax + r12 + 8], r13
	shl	r15, 4
	mov	rdi, r15
	call	malloc
	mov	rcx, qword ptr [rbx + 0x10]
	mov	qword ptr [rcx + r12 + 0x10], rax
	mov	rax, qword ptr [rbx + 0x10]
	mov	rdi, qword ptr [rax + r12 + 0x10]
	test	rdi, rdi
	je	.label_2642
	mov	rsi, qword ptr [rsp + 8]
	mov	rdx, r15
	call	memcpy
	mov	rax, qword ptr [rbx + 0x10]
	lea	rcx, [r14 + r14*2]
	shl	rcx, 4
	lea	rdi, [rax + rcx + 0x18]
	mov	rsi, qword ptr [rsp + 0x10]
	add	rsp, 0x18
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	jmp	re_node_set_init_copy
.label_2642:
	mov	eax, 0xc
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
	#Procedure 0x41a6ce
	.globl sub_41a6ce
	.type sub_41a6ce, @function
sub_41a6ce:

	nop	
	.section	.text
	.align	32
	#Procedure 0x41a6d0

	.globl mark_opt_subexp
	.type mark_opt_subexp, @function
mark_opt_subexp:
	mov	eax, dword ptr [rsi + 0x30]
	cmp	al, 0x11
	jne	.label_2643
	cmp	qword ptr [rsi + 0x28], rdi
	jne	.label_2643
	or	eax, 0x80000
	mov	dword ptr [rsi + 0x30], eax
.label_2643:
	xor	eax, eax
	ret	
	.section	.text
	.align	32
	#Procedure 0x41a6e8
	.globl sub_41a6e8
	.type sub_41a6e8, @function
sub_41a6e8:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x41a6f0
	.globl make_timespec
	.type make_timespec, @function
make_timespec:

	mov	rax, rdi
	mov	rdx, rsi
	ret	
	.section	.text
	.align	32
	#Procedure 0x41a6f7
	.globl sub_41a6f7
	.type sub_41a6f7, @function
sub_41a6f7:

	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x41a700

	.globl peek_token
	.type peek_token, @function
peek_token:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x18
	mov	rbp, rsi
	mov	r12, rdi
	mov	rax, qword ptr [rbp + 0x48]
	cmp	qword ptr [rbp + 0x68], rax
	jle	.label_2644
	mov	qword ptr [rsp], rdx
	mov	rcx, qword ptr [rbp + 8]
	mov	bl, byte ptr [rcx + rax]
	mov	byte ptr [r12], bl
	mov	eax, dword ptr [r12 + 8]
	mov	ecx, eax
	and	ecx, 0xff9fffff
	mov	dword ptr [r12 + 8], ecx
	cmp	dword ptr [rbp + 0x90], 2
	jl	.label_2650
	mov	rcx, qword ptr [rbp + 0x48]
	cmp	rcx, qword ptr [rbp + 0x30]
	je	.label_2650
	mov	rdx, qword ptr [rbp + 0x10]
	cmp	dword ptr [rdx + rcx*4], -1
	je	.label_2647
.label_2650:
	cmp	bl, 0x5c
	jne	.label_2653
	mov	rax, qword ptr [rbp + 0x48]
	inc	rax
	cmp	rax, qword ptr [rbp + 0x58]
	jge	.label_2654
	mov	rdi, rbp
	call	re_string_peek_byte_case
	mov	r15d, eax
	mov	byte ptr [r12], r15b
	mov	ebx, 0xffffff00
	and	ebx, dword ptr [r12 + 8]
	or	ebx, 1
	mov	dword ptr [r12 + 8], ebx
	cmp	dword ptr [rbp + 0x90], 2
	jl	.label_2648
	mov	rsi, qword ptr [rbp + 0x48]
	inc	rsi
	mov	rdi, rbp
	call	re_string_wchar_at
	mov	ebp, eax
	mov	edi, ebp
	call	iswalnum
	test	eax, eax
	setne	al
	cmp	ebp, 0x5f
	sete	cl
	or	cl, al
	movzx	eax, cl
	shl	eax, 0x16
	mov	ebx, 0xffbfffff
	and	ebx, dword ptr [r12 + 8]
	jmp	.label_2646
.label_2644:
	mov	byte ptr [r12 + 8], 2
	xor	r14d, r14d
.label_2248:
	mov	eax, r14d
	add	rsp, 0x18
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_2653:
	mov	r15d, 0xffffff00
	and	r15d, dword ptr [r12 + 8]
	or	r15d, 1
	mov	dword ptr [r12 + 8], r15d
	cmp	dword ptr [rbp + 0x90], 2
	jl	.label_2645
	mov	rsi, qword ptr [rbp + 0x48]
	mov	rdi, rbp
	call	re_string_wchar_at
	mov	r14d, eax
	mov	edi, r14d
	call	iswalnum
	test	eax, eax
	setne	al
	cmp	r14d, 0x5f
	sete	cl
	or	cl, al
	movzx	eax, cl
	shl	eax, 0x16
	mov	r15d, 0xffbfffff
	and	r15d, dword ptr [r12 + 8]
	jmp	.label_2657
.label_2654:
	mov	byte ptr [r12 + 8], 0x24
	mov	r14d, 1
	jmp	.label_2248
.label_2645:
	movzx	r14d, byte ptr [r12]
	xor	r13d, r13d
	cmp	r14, 0x5f
	sete	r13b
	call	__ctype_b_loc
	mov	rax, qword ptr [rax]
	movzx	eax, word ptr [rax + r14*2]
	shr	eax, 3
	and	eax, 1
	or	eax, r13d
	shl	eax, 0x16
	and	r15d, 0xffbfff01
.label_2657:
	or	r15d, eax
	mov	dword ptr [r12 + 8], r15d
	mov	r14d, 1
	add	bl, 0xf6
	movzx	eax, bl
	cmp	al, 0x73
	ja	.label_2248
	jmp	qword ptr [word ptr [+ (rax * 8) + label_2656]]
.label_2764:
	mov	rax, qword ptr [rsp]
	test	ah, 8
	je	.label_2248
	jmp	.label_2263
.label_2648:
	movzx	ebp, r15b
	call	__ctype_b_loc
	mov	rax, qword ptr [rax]
	movzx	eax, word ptr [rax + rbp*2]
	xor	ecx, ecx
	cmp	r15b, 0x5f
	sete	cl
	shr	eax, 3
	and	eax, 1
	or	eax, ecx
	shl	eax, 0x16
	and	ebx, 0xffbfff01
.label_2646:
	or	ebx, eax
	mov	dword ptr [r12 + 8], ebx
	movzx	eax, r15b
	mov	r14d, 2
	add	r15b, 0xd9
	movzx	ecx, r15b
	cmp	cl, 0x56
	ja	.label_2248
	jmp	qword ptr [word ptr [+ (rcx * 8) + label_2658]]
.label_2924:
	mov	rcx, qword ptr [rsp]
	test	ch, 0x40
	jne	.label_2248
	mov	byte ptr [r12 + 8], 4
	add	rax, -0x31
	mov	qword ptr [r12], rax
	jmp	.label_2248
.label_2647:
	and	eax, 0xff9fff00
	or	eax, 0x200001
	mov	dword ptr [r12 + 8], eax
	mov	r14d, 1
	jmp	.label_2248
.label_2765:
	mov	rdx, qword ptr [rsp]
	test	dl, 8
	jne	.label_2285
	mov	rax, qword ptr [rbp + 0x48]
	inc	rax
	cmp	rax, qword ptr [rbp + 0x58]
	je	.label_2285
	inc	qword ptr [rbp + 0x48]
	lea	rdi, [rsp + 8]
	mov	rsi, rbp
	call	peek_token
	dec	qword ptr [rbp + 0x48]
	movzx	eax, byte ptr [rsp + 0x10]
	add	eax, -9
	cmp	eax, 1
	ja	.label_2248
.label_2285:
	mov	byte ptr [r12 + 8], 0xc
	mov	dword ptr [r12], 0x20
	jmp	.label_2248
.label_2766:
	mov	rax, qword ptr [rsp]
	test	ah, 0x20
	je	.label_2248
	and	r15d, 0xffffff00
	or	r15d, 8
	mov	dword ptr [r12 + 8], r15d
	jmp	.label_2248
.label_2767:
	mov	rax, qword ptr [rsp]
	test	ah, 0x20
	je	.label_2248
	and	r15d, 0xffffff00
	or	r15d, 9
	mov	dword ptr [r12 + 8], r15d
	jmp	.label_2248
.label_2768:
	and	r15d, 0xffffff00
	or	r15d, 0xb
	mov	dword ptr [r12 + 8], r15d
	jmp	.label_2248
.label_2769:
	mov	rax, qword ptr [rsp]
	test	ax, 0x402
	jne	.label_2248
	and	r15d, 0xffffff00
	or	r15d, 0x12
	mov	dword ptr [r12 + 8], r15d
	jmp	.label_2248
.label_2770:
	and	r15d, 0xffffff00
	or	r15d, 5
	mov	dword ptr [r12 + 8], r15d
	jmp	.label_2248
.label_2771:
	mov	rax, qword ptr [rsp]
	test	ax, 0x402
	jne	.label_2248
	and	r15d, 0xffffff00
	or	r15d, 0x13
	mov	dword ptr [r12 + 8], r15d
	jmp	.label_2248
.label_2759:
	and	r15d, 0xffffff00
	or	r15d, 0x14
	mov	dword ptr [r12 + 8], r15d
	jmp	.label_2248
.label_2760:
	mov	rcx, qword ptr [rsp]
	test	ecx, 0x800008
	jne	.label_2258
	mov	rax, qword ptr [rbp + 0x48]
	test	rax, rax
	je	.label_2258
	test	ch, 8
	je	.label_2248
	mov	rcx, qword ptr [rbp + 8]
	cmp	byte ptr [rcx + rax - 1], 0xa
	jne	.label_2248
.label_2258:
	mov	byte ptr [r12 + 8], 0xc
	mov	dword ptr [r12], 0x10
	jmp	.label_2248
.label_2761:
	mov	rax, qword ptr [rsp]
	and	eax, 0x1200
	cmp	rax, 0x1200
	jne	.label_2248
	and	r15d, 0xffffff00
	or	r15d, 0x17
	mov	dword ptr [r12 + 8], r15d
	jmp	.label_2248
.label_2762:
	mov	rax, qword ptr [rsp]
	test	ah, 4
	jne	.label_2248
	test	ax, ax
	jns	.label_2248
.label_2263:
	and	r15d, 0xffffff00
	or	r15d, 0xa
	mov	dword ptr [r12 + 8], r15d
	jmp	.label_2248
.label_2763:
	mov	rax, qword ptr [rsp]
	and	eax, 0x1200
	cmp	rax, 0x1200
	jne	.label_2248
	and	r15d, 0xffffff00
	or	r15d, 0x18
	mov	dword ptr [r12 + 8], r15d
	jmp	.label_2248
.label_2920:
	mov	rax, qword ptr [rsp]
	test	eax, 0x80000
	jne	.label_2248
	and	ebx, 0xffffff00
	or	ebx, 0xc
	mov	dword ptr [r12 + 8], ebx
	mov	dword ptr [r12], 0x80
	jmp	.label_2248
.label_2921:
	mov	rax, qword ptr [rsp]
	test	ah, 0x20
	jne	.label_2248
	and	ebx, 0xffffff00
	or	ebx, 8
	mov	dword ptr [r12 + 8], ebx
	jmp	.label_2248
.label_2922:
	mov	rax, qword ptr [rsp]
	test	ah, 0x20
	jne	.label_2248
	and	ebx, 0xffffff00
	or	ebx, 9
	mov	dword ptr [r12 + 8], ebx
	jmp	.label_2248
.label_2923:
	mov	rax, qword ptr [rsp]
	and	eax, 0x402
	cmp	rax, 2
	jne	.label_2248
	and	ebx, 0xffffff00
	or	ebx, 0x12
	mov	dword ptr [r12 + 8], ebx
	jmp	.label_2248
.label_2925:
	mov	rax, qword ptr [rsp]
	test	eax, 0x80000
	jne	.label_2248
	and	ebx, 0xffffff00
	or	ebx, 0xc
	mov	dword ptr [r12 + 8], ebx
	mov	dword ptr [r12], 6
	jmp	.label_2248
.label_2926:
	mov	rax, qword ptr [rsp]
	test	eax, 0x80000
	jne	.label_2248
	and	ebx, 0xffffff00
	or	ebx, 0xc
	mov	dword ptr [r12 + 8], ebx
	mov	dword ptr [r12], 9
	jmp	.label_2248
.label_2927:
	mov	rax, qword ptr [rsp]
	and	eax, 0x402
	cmp	rax, 2
	jne	.label_2248
	and	ebx, 0xffffff00
	or	ebx, 0x13
	mov	dword ptr [r12 + 8], ebx
	jmp	.label_2248
.label_2928:
	mov	rax, qword ptr [rsp]
	test	eax, 0x80000
	jne	.label_2248
	and	ebx, 0xffffff00
	or	ebx, 0xc
	mov	dword ptr [r12 + 8], ebx
	mov	dword ptr [r12], 0x200
	jmp	.label_2248
.label_2929:
	mov	rax, qword ptr [rsp]
	test	eax, 0x80000
	jne	.label_2248
	and	ebx, 0xffffff00
	or	ebx, 0x23
	mov	dword ptr [r12 + 8], ebx
	jmp	.label_2248
.label_2930:
	mov	rax, qword ptr [rsp]
	test	eax, 0x80000
	jne	.label_2248
	and	ebx, 0xffffff00
	or	ebx, 0x21
	mov	dword ptr [r12 + 8], ebx
	jmp	.label_2248
.label_2931:
	mov	rax, qword ptr [rsp]
	test	eax, 0x80000
	jne	.label_2248
	and	ebx, 0xffffff00
	or	ebx, 0xc
	mov	dword ptr [r12 + 8], ebx
	mov	dword ptr [r12], 0x40
	jmp	.label_2248
.label_2932:
	mov	rax, qword ptr [rsp]
	test	eax, 0x80000
	jne	.label_2248
	and	ebx, 0xffffff00
	or	ebx, 0xc
	mov	dword ptr [r12 + 8], ebx
	mov	dword ptr [r12], 0x100
	jmp	.label_2248
.label_2933:
	mov	rax, qword ptr [rsp]
	test	eax, 0x80000
	jne	.label_2248
	and	ebx, 0xffffff00
	or	ebx, 0x22
	mov	dword ptr [r12 + 8], ebx
	jmp	.label_2248
.label_2934:
	mov	rax, qword ptr [rsp]
	test	eax, 0x80000
	jne	.label_2248
	and	ebx, 0xffffff00
	or	ebx, 0x20
	mov	dword ptr [r12 + 8], ebx
	jmp	.label_2248
.label_2935:
	mov	rax, qword ptr [rsp]
	and	eax, 0x1200
	cmp	rax, 0x200
	jne	.label_2248
	and	ebx, 0xffffff00
	or	ebx, 0x17
	mov	dword ptr [r12 + 8], ebx
	jmp	.label_2248
.label_2936:
	mov	rax, qword ptr [rsp]
	test	ah, 4
	jne	.label_2248
	test	ax, ax
	js	.label_2248
	and	ebx, 0xffffff00
	or	ebx, 0xa
	mov	dword ptr [r12 + 8], ebx
	jmp	.label_2248
.label_2937:
	mov	rax, qword ptr [rsp]
	and	eax, 0x1200
	cmp	rax, 0x200
	jne	.label_2248
	and	ebx, 0xffffff00
	or	ebx, 0x18
	mov	dword ptr [r12 + 8], ebx
	jmp	.label_2248
	.section	.text
	.align	32
	#Procedure 0x41adb6
	.globl sub_41adb6
	.type sub_41adb6, @function
sub_41adb6:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x41adc0

	.globl calc_eclosure_iter
	.type calc_eclosure_iter, @function
calc_eclosure_iter:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x48
	mov	dword ptr [rsp + 4], ecx
	mov	r12, rdx
	mov	rbp, rsi
	mov	r15, rdi
	mov	rax, qword ptr [rbp + 0x28]
	lea	r14, [r12 + r12*2]
	mov	rsi, qword ptr [rax + r14*8 + 8]
	inc	rsi
	lea	rdi, [rsp + 8]
	call	re_node_set_alloc
	test	eax, eax
	jne	.label_2660
	mov	rax, qword ptr [rbp + 0x30]
	mov	qword ptr [rax + r14*8 + 8], -1
	mov	rax, qword ptr [rbp]
	mov	rbx, r12
	shl	rbx, 4
	mov	r8d, dword ptr [rax + rbx + 8]
	shr	r8d, 8
	and	r8d, 0x3ff
	je	.label_2667
	mov	rcx, qword ptr [rbp + 0x28]
	cmp	qword ptr [rcx + r14*8 + 8], 0
	je	.label_2667
	mov	rcx, qword ptr [rcx + r14*8 + 0x10]
	mov	rcx, qword ptr [rcx]
	shl	rcx, 4
	test	byte ptr [rax + rcx + 0xa], 4
	jne	.label_2667
	mov	rdi, rbp
	mov	rsi, r12
	mov	rdx, r12
	mov	rcx, r12
	call	duplicate_node_closure
	test	eax, eax
	jne	.label_2660
.label_2667:
	mov	rax, qword ptr [rbp]
	test	byte ptr [rax + rbx + 8], 8
	mov	qword ptr [rsp + 0x28], r15
	mov	qword ptr [rsp + 0x20], r12
	je	.label_2668
	mov	rax, qword ptr [rbp + 0x28]
	cmp	qword ptr [rax + r14*8 + 8], 0
	jle	.label_2668
	xor	r15d, r15d
	lea	rbx, [rsp + 0x30]
	xor	r12d, r12d
	nop	word ptr cs:[rax + rax]
.label_2665:
	mov	rcx, qword ptr [rbp + 0x28]
	mov	rax, qword ptr [rbp + 0x30]
	mov	rcx, qword ptr [rcx + r14*8 + 0x10]
	mov	rdx, qword ptr [rcx + r12*8]
	lea	r13, [rdx + rdx*2]
	mov	rcx, qword ptr [rax + r13*8 + 8]
	cmp	rcx, -1
	je	.label_2664
	test	rcx, rcx
	jne	.label_2659
	xor	ecx, ecx
	mov	rdi, rbx
	mov	rsi, rbp
	call	calc_eclosure_iter
	test	eax, eax
	je	.label_2662
	jmp	.label_2660
	.section	.text
	.align	32
	#Procedure 0x41aedb
	.globl sub_41aedb
	.type sub_41aedb, @function
sub_41aedb:

	nop	dword ptr [rax + rax]
.label_2659:
	mov	rcx, qword ptr [rax + r13*8 + 0x10]
	mov	qword ptr [rsp + 0x40], rcx
	movups	xmm0, xmmword ptr [rax + r13*8]
	movaps	xmmword ptr [rsp + 0x30], xmm0
.label_2662:
	lea	rdi, [rsp + 8]
	mov	rsi, rbx
	call	re_node_set_merge
	test	eax, eax
	jne	.label_2660
	mov	rax, qword ptr [rbp + 0x30]
	cmp	qword ptr [rax + r13*8 + 8], 0
	jne	.label_2661
	mov	rdi, qword ptr [rsp + 0x40]
	call	free
.label_2664:
	mov	r15b, 1
.label_2661:
	inc	r12
	mov	rax, qword ptr [rbp + 0x28]
	cmp	r12, qword ptr [rax + r14*8 + 8]
	jl	.label_2665
	jmp	.label_2669
.label_2663:
	mov	rcx, qword ptr [rsp + 0x18]
	mov	qword ptr [rax + r14*8 + 0x10], rcx
	movups	xmm0, xmmword ptr [rsp + 8]
	movups	xmmword ptr [rax + r14*8], xmm0
.label_2666:
	mov	rax, qword ptr [rsp + 0x18]
	mov	qword ptr [rdx + 0x10], rax
	movups	xmm0, xmmword ptr [rsp + 8]
	movups	xmmword ptr [rdx], xmm0
	xor	eax, eax
.label_2660:
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
	#Procedure 0x41af6c
	.globl sub_41af6c
	.type sub_41af6c, @function
sub_41af6c:

	nop	dword ptr [rax + rax]
.label_2668:
	xor	r15d, r15d
.label_2669:
	lea	rdi, [rsp + 8]
	mov	rsi, qword ptr [rsp + 0x20]
	call	re_node_set_insert
	mov	ecx, eax
	mov	eax, 0xc
	test	cl, cl
	mov	rdx, qword ptr [rsp + 0x28]
	je	.label_2660
	test	r15b, 1
	mov	rax, qword ptr [rbp + 0x30]
	je	.label_2663
	mov	ecx, dword ptr [rsp + 4]
	test	cl, cl
	jne	.label_2663
	mov	qword ptr [rax + r14*8 + 8], 0
	jmp	.label_2666
	.section	.text
	.align	32
	#Procedure 0x41afb0
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
	#Procedure 0x41afc6
	.globl sub_41afc6
	.type sub_41afc6, @function
sub_41afc6:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x41afd0

	.globl rpl_fcntl
	.type rpl_fcntl, @function
rpl_fcntl:
	sub	rsp, 0xd8
	test	al, al
	je	.label_2679
	movaps	xmmword ptr [rsp + 0x50], xmm0
	movaps	xmmword ptr [rsp + 0x60], xmm1
	movaps	xmmword ptr [rsp + 0x70], xmm2
	movaps	xmmword ptr [rsp + 0x80], xmm3
	movaps	xmmword ptr [rsp + 0x90], xmm4
	movaps	xmmword ptr [rsp + 0xa0], xmm5
	movaps	xmmword ptr [rsp + 0xb0], xmm6
	movaps	xmmword ptr [rsp + 0xc0], xmm7
.label_2679:
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
	ja	.label_2680
	mov	eax, 0xa0a
	bt	eax, esi
	jb	.label_2675
	mov	eax, 0x514
	bt	eax, esi
	jb	.label_2676
	test	esi, esi
	jne	.label_2680
	movsxd	rcx, dword ptr [rsp]
	cmp	rcx, 0x28
	ja	.label_2682
	mov	rax, rcx
	add	rax, qword ptr [rsp + 0x10]
	lea	ecx, [rcx + 8]
	mov	dword ptr [rsp], ecx
	jmp	.label_2673
.label_2680:
	lea	eax, [rsi - 0x400]
	cmp	eax, 8
	ja	.label_2672
	mov	ecx, 0x85
	bt	ecx, eax
	jb	.label_2676
	mov	ecx, 0x102
	bt	ecx, eax
	jae	.label_2678
.label_2675:
	xor	eax, eax
	call	fcntl
	add	rsp, 0xd8
	ret	
.label_2676:
	movsxd	rcx, dword ptr [rsp]
	cmp	rcx, 0x28
	ja	.label_2683
	mov	rax, rcx
	add	rax, qword ptr [rsp + 0x10]
	lea	ecx, [rcx + 8]
	mov	dword ptr [rsp], ecx
	jmp	.label_2671
.label_2683:
	mov	rax, qword ptr [rsp + 8]
	lea	rcx, [rax + 8]
	mov	qword ptr [rsp + 8], rcx
.label_2671:
	mov	edx, dword ptr [rax]
	xor	eax, eax
	call	fcntl
	add	rsp, 0xd8
	ret	
.label_2678:
	cmp	eax, 6
	jne	.label_2672
	movsxd	rcx, dword ptr [rsp]
	cmp	rcx, 0x28
	ja	.label_2681
	mov	rax, rcx
	add	rax, qword ptr [rsp + 0x10]
	lea	ecx, [rcx + 8]
	mov	dword ptr [rsp], ecx
	jmp	.label_2670
.label_2672:
	movsxd	rcx, dword ptr [rsp]
	cmp	rcx, 0x28
	ja	.label_2674
	mov	rax, rcx
	add	rax, qword ptr [rsp + 0x10]
	lea	ecx, [rcx + 8]
	mov	dword ptr [rsp], ecx
	jmp	.label_2677
.label_2682:
	mov	rax, qword ptr [rsp + 8]
	lea	rcx, [rax + 8]
	mov	qword ptr [rsp + 8], rcx
.label_2673:
	mov	esi, dword ptr [rax]
	call	rpl_fcntl_DUPFD
	add	rsp, 0xd8
	ret	
.label_2681:
	mov	rax, qword ptr [rsp + 8]
	lea	rcx, [rax + 8]
	mov	qword ptr [rsp + 8], rcx
.label_2670:
	mov	esi, dword ptr [rax]
	call	rpl_fcntl_DUPFD_CLOEXEC
	add	rsp, 0xd8
	ret	
.label_2674:
	mov	rax, qword ptr [rsp + 8]
	lea	rcx, [rax + 8]
	mov	qword ptr [rsp + 8], rcx
.label_2677:
	mov	rdx, qword ptr [rax]
	xor	eax, eax
	call	fcntl
	add	rsp, 0xd8
	ret	
	.section	.text
	.align	32
	#Procedure 0x41b184
	.globl sub_41b184
	.type sub_41b184, @function
sub_41b184:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x41b190
	.globl rotr8
	.type rotr8, @function
rotr8:

	mov	eax, edi
	mov	ecx, esi
	shr	eax, cl
	mov	ecx, 8
	sub	ecx, esi
	shl	edi, cl
	or	edi, eax
	mov	eax, edi
	ret	
	.section	.text
	.align	32
	#Procedure 0x41b1a4
	.globl sub_41b1a4
	.type sub_41b1a4, @function
sub_41b1a4:

	nop	word ptr cs:[rax + rax]
.label_2686:
	mov	rax, qword ptr [rbx + 0x28]
	cmp	qword ptr [rax], 0
	je	.label_2684
	mov	dword ptr [r14], 1
	mov	rax, qword ptr [rbx + 0x28]
	lea	rcx, [rax + 8]
	mov	qword ptr [rbx + 0x28], rcx
	mov	rax, qword ptr [rax]
	jmp	.label_2685
.label_2687:
	mov	rdi, qword ptr [rbx]
	call	feof
	xor	ecx, ecx
	test	eax, eax
	sete	cl
	lea	eax, [rcx + rcx + 2]
	mov	dword ptr [r14], eax
	jmp	.label_2688
.label_2684:
	mov	dword ptr [r14], 2
.label_2688:
	xor	eax, eax
.label_2685:
	add	rsp, 8
	pop	rbx
	pop	r14
	ret	
	.section	.text
	.align	32
	#Procedure 0x41b1fb
	.globl sub_41b1fb
	.type sub_41b1fb, @function
sub_41b1fb:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x41b209

	.globl argv_iter
	.type argv_iter, @function
argv_iter:
	push	r14
	push	rbx
	push	rax
	mov	r14, rsi
	mov	rbx, rdi
	mov	rcx, qword ptr [rbx]
	test	rcx, rcx
	je	.label_2686
	lea	rdi, [rbx + 0x10]
	lea	rsi, [rbx + 0x18]
	xor	edx, edx
	call	getdelim
	test	rax, rax
	js	.label_2687
	mov	dword ptr [r14], 1
	inc	qword ptr [rbx + 8]
	mov	rax, qword ptr [rbx + 0x10]
	jmp	.label_2685
	.section	.text
	.align	32
	#Procedure 0x41b240

	.globl match_ctx_init
	.type match_ctx_init, @function
match_ctx_init:
	push	rbp
	push	r15
	push	r14
	push	r12
	push	rbx
	mov	r14, rdx
	mov	rbx, rdi
	mov	dword ptr [rbx + 0xa0], esi
	mov	qword ptr [rbx + 0xa8], -1
	test	r14, r14
	jle	.label_2689
	mov	r15d, 0xc
	movabs	rax, 0x666666666666666
	cmp	r14, rax
	ja	.label_2690
	lea	r12, [r14*8]
	lea	rdi, [r12 + r12*4]
	call	malloc
	mov	rbp, rax
	mov	qword ptr [rbx + 0xd8], rbp
	mov	rdi, r12
	call	malloc
	mov	qword ptr [rbx + 0xf8], rax
	test	rbp, rbp
	je	.label_2690
	test	rax, rax
	je	.label_2690
.label_2689:
	mov	qword ptr [rbx + 0xd0], r14
	mov	dword ptr [rbx + 0xe0], 1
	mov	qword ptr [rbx + 0xf0], r14
	xor	r15d, r15d
.label_2690:
	mov	eax, r15d
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x41b2d4
	.globl sub_41b2d4
	.type sub_41b2d4, @function
sub_41b2d4:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x41b2e0

	.globl leaf_optimization
	.type leaf_optimization, @function
leaf_optimization:
	push	rax
	call	filesystem_type
	cmp	rax, 0x52654972
	jle	.label_2694
	mov	ecx, 2
	cmp	rax, 0x58465341
	jg	.label_2695
	cmp	rax, 0x52654973
	je	.label_2691
	cmp	rax, 0x5346414f
	je	.label_2692
	jmp	.label_2693
.label_2693:
	mov	ecx, 1
	jmp	.label_2691
	.section	.text
	.align	32
	#Procedure 0x41b314
	.globl sub_41b314
	.type sub_41b314, @function
sub_41b314:

	nop	word ptr cs:[rax + rax]
.label_2695:
	cmp	rax, 0x58465342
	je	.label_2691
	mov	ecx, 0xff534d42
	cmp	rax, rcx
	jne	.label_2693
.label_2692:
	xor	ecx, ecx
.label_2691:
	mov	eax, ecx
	pop	rcx
	ret	
.label_2694:
	test	rax, rax
	je	.label_2692
	cmp	rax, 0x6969
	je	.label_2692
	cmp	rax, 0x9fa0
	je	.label_2692
	jmp	.label_2693
	.section	.text
	.align	32
	#Procedure 0x41b350

	.globl new_exclude_segment
	.type new_exclude_segment, @function
new_exclude_segment:
	push	rbp
	push	r15
	push	r14
	push	rbx
	push	rax
	mov	r15d, edx
	mov	ebp, esi
	mov	r14, rdi
	mov	edi, 0x28
	call	xzalloc
	mov	rbx, rax
	mov	dword ptr [rbx + 8], ebp
	mov	dword ptr [rbx + 0xc], r15d
	test	ebp, ebp
	jne	.label_2696
	and	r15d, 0x10
	shr	r15d, 4
	mov	eax, OFFSET FLAT:string_hasher_ci
	mov	edx, OFFSET FLAT:string_hasher
	cmovne	rdx, rax
	mov	eax, OFFSET FLAT:string_compare_ci
	mov	ecx, OFFSET FLAT:string_compare
	cmovne	rcx, rax
	xor	edi, edi
	xor	esi, esi
	mov	r8d, OFFSET FLAT:string_free
	call	hash_initialize
	mov	qword ptr [rbx + 0x10], rax
.label_2696:
	mov	rax, qword ptr [r14]
	mov	qword ptr [rbx], rax
	mov	qword ptr [r14], rbx
	add	rsp, 8
	pop	rbx
	pop	r14
	pop	r15
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x41b3c2
	.globl sub_41b3c2
	.type sub_41b3c2, @function
sub_41b3c2:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x41b3d0
	.globl c_isdigit
	.type c_isdigit, @function
c_isdigit:

	add	edi, -0x30
	cmp	edi, 0xa
	setb	al
	ret	
	.section	.text
	.align	32
	#Procedure 0x41b3da
	.globl sub_41b3da
	.type sub_41b3da, @function
sub_41b3da:

	nop	word ptr [rax + rax]
.label_2959:
	test	ecx, ecx
	jne	.label_2697
	test	r8d, r8d
	jne	.label_2698
	cmp	byte ptr [rdi], 0
	setne	al
	jmp	.label_2699
.label_2698:
	xor	eax, eax
	jmp	.label_2699
.label_2699:
	movzx	eax, al
	add	rdi, rax
	nop	word ptr [rax + rax]
.label_2697:
	movsx	edx, byte ptr [rdi]
	inc	rdi
	xor	eax, eax
	cmp	edx, 0x7d
	ja	.label_2697
	jmp	qword ptr [word ptr [+ (rdx * 8) + label_2700]]
.label_2958:
	test	ecx, ecx
	je	.label_2697
	jmp	.label_2701
.label_2701:
	mov	al, 1
.label_2956:
	ret	
	.section	.text
	.align	32
	#Procedure 0x41b41e
	.globl sub_41b41e
	.type sub_41b41e, @function
sub_41b41e:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x41b421

	.globl fnmatch_pattern_has_wildcards
	.type fnmatch_pattern_has_wildcards, @function
fnmatch_pattern_has_wildcards:
	mov	ecx, esi
	and	ecx, 0x8000000
	mov	r8d, esi
	and	r8d, 2
	and	esi, 0x20
	jmp	.label_2697
.label_2957:
	test	esi, esi
	je	.label_2697
	cmp	byte ptr [rdi], 0x28
	jne	.label_2697
	jmp	.label_2701
	.section	.text
	.align	32
	#Procedure 0x41b440

	.globl get_stat_atime
	.type get_stat_atime, @function
get_stat_atime:
	mov	rax, qword ptr [rdi + 0x48]
	mov	rdx, qword ptr [rdi + 0x50]
	ret	
	.section	.text
	.align	32
	#Procedure 0x41b449
	.globl sub_41b449
	.type sub_41b449, @function
sub_41b449:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x41b450
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
	#Procedure 0x41b45f
	.globl sub_41b45f
	.type sub_41b45f, @function
sub_41b45f:

	nop	
.label_2703:
	mov	eax, ebx
.label_2702:
	add	rsp, 8
	pop	rbx
	pop	r14
	pop	r15
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x41b46d
	.globl sub_41b46d
	.type sub_41b46d, @function
sub_41b46d:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x41b47c

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
	ja	.label_2703
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
	jmp	.label_2702
	.section	.text
	.align	32
	#Procedure 0x41b4b0

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
	mov	r12, rdx
	mov	rbx, rsi
	mov	rbp, rdi
	mov	rdi, r12
	call	fileno
	xor	r14d, r14d
	test	eax, eax
	mov	qword ptr [rsp], rbp
	je	.label_2708
	cmp	eax, 1
	je	.label_2710
	cmp	eax, 2
	je	.label_2711
	mov	edi, 2
	mov	esi, 2
	call	dup2
	cmp	eax, 2
	setne	r14b
.label_2711:
	mov	bpl, r14b
	mov	edi, 1
	mov	esi, 1
	call	dup2
	cmp	eax, 1
	setne	r14b
	jmp	.label_2707
.label_2708:
	xor	ebp, ebp
	xor	r15d, r15d
	jmp	.label_2709
.label_2710:
	xor	ebp, ebp
.label_2707:
	xor	r15d, r15d
	xor	edi, edi
	xor	esi, esi
	call	dup2
	test	eax, eax
	je	.label_2713
	xor	r13d, r13d
	xor	edi, edi
	call	protect_fd
	mov	r15b, 1
	test	al, al
	je	.label_2706
.label_2713:
	test	r14b, r14b
	je	.label_2716
	mov	edi, 1
	call	protect_fd
	xor	r13d, r13d
	test	al, al
	je	.label_2704
.label_2716:
	test	bpl, bpl
	je	.label_2709
	mov	edi, 2
	call	protect_fd
	xor	r13d, r13d
	test	al, al
	je	.label_2706
.label_2709:
	mov	rdi, qword ptr [rsp]
	mov	rsi, rbx
	mov	rdx, r12
	call	rpl_freopen
	mov	r13, rax
	jmp	.label_2706
.label_2704:
	mov	r14b, 1
.label_2706:
	call	__errno_location
	mov	rbx, rax
	mov	r12d, dword ptr [rbx]
	test	bpl, bpl
	je	.label_2705
	mov	edi, 2
	call	close
.label_2705:
	test	r14b, r14b
	je	.label_2712
	mov	edi, 1
	call	close
.label_2712:
	test	r15b, r15b
	je	.label_2714
	xor	edi, edi
	call	close
.label_2714:
	test	r13, r13
	jne	.label_2715
	mov	dword ptr [rbx], r12d
.label_2715:
	mov	rax, r13
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
	#Procedure 0x41b5ce
	.globl sub_41b5ce
	.type sub_41b5ce, @function
sub_41b5ce:

	nop	
	.section	.text
	.align	32
	#Procedure 0x41b5d0
	.globl rpl_re_match
	.type rpl_re_match, @function
rpl_re_match:

	push	rax
	mov	rax, r8
	mov	r8d, 0
	mov	r9, rdx
	push	1
	push	rax
	call	re_search_stub
	add	rsp, 0x10
	pop	rcx
	ret	
	.section	.text
	.align	32
	#Procedure 0x41b5eb
	.globl sub_41b5eb
	.type sub_41b5eb, @function
sub_41b5eb:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x41b5f0

	.globl dev_type_hash
	.type dev_type_hash, @function
dev_type_hash:
	mov	rax, qword ptr [rdi]
	xor	edx, edx
	div	rsi
	mov	rax, rdx
	ret	
	.section	.text
	.align	32
	#Procedure 0x41b5fc
	.globl sub_41b5fc
	.type sub_41b5fc, @function
sub_41b5fc:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x41b600

	.globl AD_hash
	.type AD_hash, @function
AD_hash:
	mov	rax, qword ptr [rdi + 8]
	xor	edx, edx
	div	rsi
	mov	rax, rdx
	ret	
	.section	.text
	.align	32
	#Procedure 0x41b60d
	.globl sub_41b60d
	.type sub_41b60d, @function
sub_41b60d:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x41b610

	.globl set_regs
	.type set_regs, @function
set_regs:
	push	rbp
	mov	rbp, rsp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x58
	mov	r12, rcx
	mov	rbx, rdx
	mov	r13, rsi
	mov	r15, qword ptr [rdi]
	mov	rax,  qword ptr [word ptr [rip + label_2732]]
	mov	qword ptr [rbp - 0x70], rax
	movups	xmm0,  xmmword ptr [word ptr [rip + label_2733]]
	movaps	xmmword ptr [rbp - 0x80], xmm0
	xor	eax, eax
	test	r8b, r8b
	je	.label_2734
	mov	rax, qword ptr [rbp - 0x78]
	shl	rax, 4
	lea	rdi, [rax + rax*2]
	call	malloc
	mov	qword ptr [rbp - 0x70], rax
	mov	r14d, 0xc
	test	rax, rax
	je	.label_2722
	lea	rax, [rbp - 0x80]
.label_2734:
	mov	qword ptr [rbp - 0x40], rax
	mov	qword ptr [rbp - 0x68], r15
	mov	r15, qword ptr [r15 + 0x90]
	xorps	xmm0, xmm0
	movaps	xmmword ptr [rbp - 0x60], xmm0
	mov	qword ptr [rbp - 0x50], 0
	mov	r14, rbx
	shl	r14, 4
	cmp	r14, 0xfbf
	ja	.label_2738
	mov	rdi, rsp
	lea	rax, [r14 + 0xf]
	and	rax, 0xfffffffffffffff0
	sub	rdi, rax
	mov	rsp, rdi
	mov	dword ptr [rbp - 0x2c], 0
	jmp	.label_2723
.label_2738:
	mov	rdi, r14
	call	malloc
	mov	rdi, rax
	test	rdi, rdi
	je	.label_2727
	mov	al, 1
	mov	dword ptr [rbp - 0x2c], eax
.label_2723:
	mov	qword ptr [rbp - 0x38], rdi
	mov	rsi, r12
	mov	rdx, r14
	call	memcpy
	mov	r8, qword ptr [r12]
	mov	qword ptr [rbp - 0x48], r8
	cmp	r8, qword ptr [r12 + 8]
	jg	.label_2735
	lea	r14, [r12 + 8]
	jmp	.label_2737
.label_2724:
	cmp	r15, -2
	je	.label_2739
	mov	rdi, qword ptr [rbp - 0x40]
	test	rdi, rdi
	je	.label_2719
	lea	rsi, [rbp - 0x48]
	mov	rdx, rbx
	mov	rcx, r12
	lea	r8, [rbp - 0x60]
	call	pop_fail_stack
	mov	r15, rax
	jmp	.label_2725
	.section	.text
	.align	32
	#Procedure 0x41b72e
	.globl sub_41b72e
	.type sub_41b72e, @function
sub_41b72e:

	nop	
.label_2737:
	mov	rdi, qword ptr [rbp - 0x68]
	mov	rsi, r12
	mov	rdx, qword ptr [rbp - 0x38]
	mov	rcx, r15
	mov	r9, rbx
	call	update_regs
	mov	rax, qword ptr [rbp - 0x48]
	cmp	rax, qword ptr [r12 + 8]
	jne	.label_2728
	cmp	r15, qword ptr [r13 + 0xb0]
	jne	.label_2728
	mov	r15, qword ptr [rbp - 0x40]
	test	r15, r15
	je	.label_2731
	test	rbx, rbx
	mov	eax, 0
	je	.label_2726
	mov	rcx, r14
	xor	eax, eax
	nop	word ptr cs:[rax + rax]
.label_2720:
	cmp	qword ptr [rcx - 8], 0
	js	.label_2717
	cmp	qword ptr [rcx], -1
	je	.label_2726
.label_2717:
	inc	rax
	add	rcx, 0x10
	cmp	rax, rbx
	jb	.label_2720
.label_2726:
	cmp	rax, rbx
	je	.label_2721
	mov	rdi, r15
	lea	rsi, [rbp - 0x48]
	mov	rdx, rbx
	mov	rcx, r12
	lea	r8, [rbp - 0x60]
	call	pop_fail_stack
	mov	r15, rax
.label_2728:
	sub	rsp, 8
	mov	rdi, r13
	mov	rsi, rbx
	mov	rdx, r12
	lea	rcx, [rbp - 0x48]
	mov	r8, r15
	lea	r9, [rbp - 0x60]
	push	qword ptr [rbp - 0x40]
	call	proceed_next_node
	add	rsp, 0x10
	mov	r15, rax
	test	r15, r15
	js	.label_2724
.label_2725:
	mov	r8, qword ptr [rbp - 0x48]
	cmp	r8, qword ptr [r12 + 8]
	jle	.label_2737
.label_2735:
	mov	rdi, qword ptr [rbp - 0x50]
	call	free
	mov	eax, dword ptr [rbp - 0x2c]
	test	al, al
	je	.label_2718
	mov	rdi, qword ptr [rbp - 0x38]
	call	free
.label_2718:
	mov	rdi, qword ptr [rbp - 0x40]
.label_2730:
	call	free_fail_stack_return
	xor	r14d, r14d
	jmp	.label_2722
.label_2731:
	mov	rdi, qword ptr [rbp - 0x50]
	call	free
	xor	r14d, r14d
.label_2736:
	mov	eax, dword ptr [rbp - 0x2c]
	test	al, al
	je	.label_2722
	mov	rdi, qword ptr [rbp - 0x38]
	call	free
	jmp	.label_2722
.label_2721:
	mov	rdi, qword ptr [rbp - 0x50]
	call	free
	mov	eax, dword ptr [rbp - 0x2c]
	test	al, al
	je	.label_2729
	mov	rdi, qword ptr [rbp - 0x38]
	call	free
.label_2729:
	mov	rdi, r15
	jmp	.label_2730
.label_2719:
	mov	rdi, qword ptr [rbp - 0x50]
	call	free
	mov	r14d, 1
	jmp	.label_2736
.label_2739:
	mov	rdi, qword ptr [rbp - 0x50]
	call	free
	mov	eax, dword ptr [rbp - 0x2c]
	test	al, al
	je	.label_2727
	mov	rdi, qword ptr [rbp - 0x38]
	call	free
.label_2727:
	mov	rdi, qword ptr [rbp - 0x40]
	call	free_fail_stack_return
	mov	r14d, 0xc
.label_2722:
	mov	eax, r14d
	lea	rsp, [rbp - 0x28]
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x41b8a8
	.globl sub_41b8a8
	.type sub_41b8a8, @function
sub_41b8a8:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x41b8b0
	.globl hash_table_ok
	.type hash_table_ok, @function
hash_table_ok:

	mov	rsi, qword ptr [rdi]
	xor	edx, edx
	cmp	rsi, qword ptr [rdi + 8]
	mov	ecx, 0
	jae	.label_2740
	mov	r8, qword ptr [rdi + 8]
	xor	ecx, ecx
	xor	edx, edx
	nop	dword ptr [rax + rax]
.label_2745:
	cmp	qword ptr [rsi], 0
	je	.label_2743
	mov	rax, rsi
	nop	dword ptr [rax]
.label_2741:
	inc	rcx
	mov	rax, qword ptr [rax + 8]
	test	rax, rax
	jne	.label_2741
	inc	rdx
.label_2743:
	add	rsi, 0x10
	cmp	rsi, r8
	jb	.label_2745
.label_2740:
	cmp	rdx, qword ptr [rdi + 0x18]
	jne	.label_2742
	mov	al, 1
	cmp	rcx, qword ptr [rdi + 0x20]
	je	.label_2744
.label_2742:
	xor	eax, eax
.label_2744:
	ret	
	.section	.text
	.align	32
	#Procedure 0x41b909
	.globl sub_41b909
	.type sub_41b909, @function
sub_41b909:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x41b910
	.globl timespectod
	.type timespectod, @function
timespectod:

	cvtsi2sd	xmm1, rdi
	cvtsi2sd	xmm0, rsi
	divsd	xmm0,  qword ptr [word ptr [rip + label_2746]]
	addsd	xmm0, xmm1
	ret	
	.section	.text
	.align	32
	#Procedure 0x41b927
	.globl sub_41b927
	.type sub_41b927, @function
sub_41b927:

	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x41b930

	.globl create_tree
	.type create_tree, @function
create_tree:
	sub	rsp, 0x18
	mov	byte ptr [rsp + 0x10], cl
	lea	rcx, [rsp + 8]
	call	create_token_tree
	add	rsp, 0x18
	ret	
	.section	.text
	.align	32
	#Procedure 0x41b947
	.globl sub_41b947
	.type sub_41b947, @function
sub_41b947:

	nop	word ptr [rax + rax]
.label_2750:
	add	rsi, 0x13
	movabs	r8, 0x6666666666666667
	nop	dword ptr [rax]
.label_2747:
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
	ja	.label_2747
	mov	byte ptr [rsi], 0x2d
.label_2749:
	mov	rax, rsi
	ret	
	.section	.text
	.align	32
	#Procedure 0x41b9a8
	.globl sub_41b9a8
	.type sub_41b9a8, @function
sub_41b9a8:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x41b9b5

	.globl imaxtostr
	.type imaxtostr, @function
imaxtostr:
	mov	rcx, rdi
	mov	byte ptr [rsi + 0x14], 0
	test	rcx, rcx
	js	.label_2750
	add	rsi, 0x14
	movabs	r8, 0x6666666666666667
	nop	word ptr [rax + rax]
.label_2748:
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
	ja	.label_2748
	jmp	.label_2749
	.section	.text
	.align	32
	#Procedure 0x41ba10

	.globl raw_comparator
	.type raw_comparator, @function
raw_comparator:
	cmp	rdi, rsi
	sete	al
	ret	
	.section	.text
	.align	32
	#Procedure 0x41ba17
	.globl sub_41ba17
	.type sub_41ba17, @function
sub_41ba17:

	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x41ba20

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
	je	.label_2752
	and	ecx, 0xffffffdf
	xor	eax, eax
	cmp	ecx, ebp
	je	.label_2753
	jmp	.label_2751
.label_2752:
	xor	eax, eax
	cmp	cl, bpl
	jne	.label_2751
.label_2753:
	mov	eax, 1
	test	bpl, bpl
	je	.label_2751
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
.label_2751:
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
	#Procedure 0x41ba9d
	.globl sub_41ba9d
	.type sub_41ba9d, @function
sub_41ba9d:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x41bb05
	.globl sub_41bb05
	.type sub_41bb05, @function
sub_41bb05:

	nop	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x41bb12
	.globl sub_41bb12
	.type sub_41bb12, @function
sub_41bb12:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x41bb36
	.globl sub_41bb36
	.type sub_41bb36, @function
sub_41bb36:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x41bb49
	.globl sub_41bb49
	.type sub_41bb49, @function
sub_41bb49:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x41bb50

	.globl stat
	.type stat, @function
stat:
	mov	rdx, rsi
	mov	rsi, rdi
	mov	edi, 1
	jmp	__xstat
	.section	.text
	.align	32
	#Procedure 0x41bb60

	.globl fstat
	.type fstat, @function
fstat:
	mov	rdx, rsi
	mov	esi, edi
	mov	edi, 1
	jmp	__fxstat
	.section	.text
	.align	32
	#Procedure 0x41bb6f
	.globl sub_41bb6f
	.type sub_41bb6f, @function
sub_41bb6f:

	nop	
	.section	.text
	.align	32
	#Procedure 0x41bb70

	.globl lstat
	.type lstat, @function
lstat:
	mov	rdx, rsi
	mov	rsi, rdi
	mov	edi, 1
	jmp	__lxstat
	.section	.text
	.align	32
	#Procedure 0x41bb80

	.globl fstatat
	.type fstatat, @function
fstatat:
	mov	r8d, ecx
	mov	rcx, rdx
	mov	rdx, rsi
	mov	esi, edi
	mov	edi, 1
	jmp	__fxstatat
