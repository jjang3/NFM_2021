	.section	.text
	.align	32
	#Procedure 0x401dc9
	.globl sub_401dc9
	.type sub_401dc9, @function
sub_401dc9:

	hlt	
	.section	.text
	.align	32
	#Procedure 0x401dca
	.globl sub_401dca
	.type sub_401dca, @function
sub_401dca:

	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x401e02
	.globl sub_401e02
	.type sub_401e02, @function
sub_401e02:

	nop	dword ptr [rax]
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x401e4a
	.globl sub_401e4a
	.type sub_401e4a, @function
sub_401e4a:

	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x401e6c
	.globl sub_401e6c
	.type sub_401e6c, @function
sub_401e6c:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x401e7d
	.globl sub_401e7d
	.type sub_401e7d, @function
sub_401e7d:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x401e96
	.globl sub_401e96
	.type sub_401e96, @function
sub_401e96:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x401ea0

	.globl version_etc_va
	.type version_etc_va, @function
version_etc_va:
	sub	rsp, 0x58
	xor	r9d, r9d
	nop	word ptr [rax + rax]
.label_11:
	movsxd	r10, dword ptr [r8]
	cmp	r10, 0x28
	ja	.label_9
	mov	r11, r10
	add	r11, qword ptr [r8 + 0x10]
	lea	eax, [r10 + 8]
	mov	dword ptr [r8], eax
	jmp	.label_10
	.section	.text
	.align	32
	#Procedure 0x401ec9
	.globl sub_401ec9
	.type sub_401ec9, @function
sub_401ec9:

	nop	dword ptr [rax]
.label_9:
	mov	r11, qword ptr [r8 + 8]
	lea	rax, [r11 + 8]
	mov	qword ptr [r8 + 8], rax
.label_10:
	mov	rax, qword ptr [r11]
	mov	qword ptr [rsp + r9*8], rax
	test	rax, rax
	je	.label_12
	inc	r9
	cmp	r9, 0xa
	jb	.label_11
.label_12:
	lea	r8, [rsp]
	call	version_etc_arn
	add	rsp, 0x58
	ret	
	.section	.text
	.align	32
	#Procedure 0x401eff
	.globl sub_401eff
	.type sub_401eff, @function
sub_401eff:

	nop	
	.section	.text
	.align	32
	#Procedure 0x401f00

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
	je	.label_13
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
	jle	.label_16
	lea	rbp, [rax + rcx*8]
	mov	r14, qword ptr [rax + rcx*8 + 0x10]
	xor	r15d, r15d
	nop	dword ptr [rax]
.label_19:
	mov	rbx, qword ptr [r14 + r15*8]
	cmp	r13, qword ptr [rbx]
	jne	.label_15
	lea	rdi, [rbx + 8]
	mov	rsi, r12
	call	re_node_set_compare
	test	al, al
	jne	.label_18
.label_15:
	inc	r15
	cmp	r15, qword ptr [rbp]
	jl	.label_19
.label_16:
	mov	rdi, qword ptr [rsp + 0x10]
	mov	rsi, r12
	mov	rdx, r13
	call	create_ci_newstate
	mov	rbx, rax
	test	rbx, rbx
	je	.label_17
.label_18:
	mov	rax, rbx
	add	rsp, 0x18
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_13:
	mov	dword ptr [rdi], 0
	jmp	.label_14
.label_17:
	mov	rax, qword ptr [rsp + 8]
	mov	dword ptr [rax], 0xc
.label_14:
	xor	ebx, ebx
	jmp	.label_18
	.section	.text
	.align	32
	#Procedure 0x401fc3
	.globl sub_401fc3
	.type sub_401fc3, @function
sub_401fc3:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x401fd0
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
	je	.label_22
	test	bpl, 1
	mov	eax, 0x3b2fc
	mov	ecx, 0x10102c6
	cmovne	rcx, rax
	mov	ebx, ebp
	and	ebx, 2
	shl	rbx, 0x15
	or	rbx, rcx
	test	bpl, 4
	jne	.label_20
	and	byte ptr [r15 + 0x38], 0x7f
	jmp	.label_21
.label_20:
	and	ebx, 0x143b2be
	or	rbx, 0x100
	or	byte ptr [r15 + 0x38], 0x80
.label_21:
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
	jne	.label_23
	mov	rdi, r15
	call	rpl_re_compile_fastmap
	xor	ebx, ebx
.label_22:
	mov	eax, ebx
	add	rsp, 8
	pop	rbx
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_23:
	mov	rdi, qword ptr [r15 + 0x20]
	call	free
	mov	qword ptr [r15 + 0x20], 0
	jmp	.label_22
	.section	.text
	.align	32
	#Procedure 0x4020b5
	.globl sub_4020b5
	.type sub_4020b5, @function
sub_4020b5:

	nop	word ptr cs:[rax + rax]
.label_26:
	mov	rcx, qword ptr [r15]
	mov	rdx, qword ptr [r15 + 8]
.label_28:
	test	byte ptr [r13 + 0x38], 0x10
	jne	.label_24
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
	jmp	.label_25
	.section	.text
	.align	32
	#Procedure 0x4020ee
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
	ja	.label_27
	test	bl, 4
	jne	.label_26
	mov	rdi, r12
	call	strlen
	mov	rdx, rax
	xor	ecx, ecx
	jmp	.label_28
.label_24:
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
.label_25:
	mov	ecx, eax
	xor	eax, eax
	test	ecx, ecx
	setne	al
.label_27:
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	ret	
	.section	.text
	.align	32
	#Procedure 0x402155
	.globl sub_402155
	.type sub_402155, @function
sub_402155:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x402160

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
	jne	.label_30
	cmp	qword ptr [rbx + 0x10], 0
	jle	.label_34
	xor	ebp, ebp
	nop	word ptr [rax + rax]
.label_31:
	mov	rax, qword ptr [rbx + 0x18]
	mov	rsi, qword ptr [rax + rbp*8]
	mov	rax, qword ptr [r13]
	mov	rcx, rsi
	shl	rcx, 4
	test	byte ptr [rax + rcx + 8], 8
	jne	.label_29
	mov	rdi, r12
	call	re_node_set_insert_last
	test	al, al
	je	.label_30
.label_29:
	inc	rbp
	cmp	rbp, qword ptr [rbx + 0x10]
	jl	.label_31
.label_34:
	mov	r12, qword ptr [r13 + 0x40]
	and	r15, qword ptr [r13 + 0x88]
	lea	rbp, [r15 + r15*2]
	mov	r15, qword ptr [r12 + rbp*8]
	cmp	qword ptr [r12 + rbp*8 + 8], r15
	jle	.label_32
.label_33:
	lea	rax, [r12 + rbp*8]
	mov	rcx, qword ptr [rax]
	lea	rdx, [rcx + 1]
	mov	qword ptr [rax], rdx
	mov	rax, qword ptr [r12 + rbp*8 + 0x10]
	mov	qword ptr [rax + rcx*8], rbx
	xor	r14d, r14d
.label_30:
	mov	eax, r14d
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_32:
	lea	rax, [r15 + r15]
	mov	rdi, qword ptr [r12 + rbp*8 + 0x10]
	lea	rsi, [rax*8 + 0x10]
	call	realloc
	test	rax, rax
	je	.label_30
	lea	rcx, [r12 + rbp*8 + 8]
	lea	rdx, [r15 + r15 + 2]
	mov	qword ptr [rcx + 8], rax
	mov	qword ptr [rcx], rdx
	jmp	.label_33
	.section	.text
	.align	32
	#Procedure 0x402243
	.globl sub_402243
	.type sub_402243, @function
sub_402243:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x402250

	.globl eval4
	.type eval4, @function
eval4:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	push	rax
	movzx	r13d, dil
	mov	edi, r13d
	call	eval5
	mov	r14, rax
	mov	r15, r14
	add	r15, 8
	mov	r12d, OFFSET FLAT:__gmpz_tdiv_q
	jmp	.label_41
	.section	.text
	.align	32
	#Procedure 0x402279
	.globl sub_402279
	.type sub_402279, @function
sub_402279:

	nop	dword ptr [rax]
.label_35:
	mov	rdi, rbx
	call	freev
.label_41:
	mov	edi, OFFSET FLAT:label_36
	call	nextarg
	xor	ebp, ebp
	test	al, al
	jne	.label_38
	mov	edi, OFFSET FLAT:label_39
	call	nextarg
	mov	ebp, 1
	test	al, al
	jne	.label_38
	mov	edi, OFFSET FLAT:label_42
	call	nextarg
	mov	ebp, 2
	test	al, al
	je	.label_47
.label_38:
	mov	edi, r13d
	call	eval5
	mov	rbx, rax
	test	r13b, r13b
	je	.label_35
	mov	rdi, r14
	call	toarith
	test	al, al
	je	.label_37
	mov	rdi, rbx
	call	toarith
	test	al, al
	je	.label_37
	test	ebp, ebp
	mov	eax, OFFSET FLAT:__gmpz_mul
	je	.label_40
	cmp	dword ptr [rbx + 0xc], 0
	je	.label_43
	cmp	ebp, 1
	mov	eax, OFFSET FLAT:__gmpz_tdiv_r
	cmove	rax, r12
.label_40:
	mov	rdx, rbx
	add	rdx, 8
	mov	rdi, r15
	mov	rsi, r15
	call	rax
	jmp	.label_35
.label_47:
	mov	rax, r14
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_37:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_45
	jmp	.label_46
.label_43:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_44
.label_46:
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	mov	edi, 2
	xor	esi, esi
	xor	eax, eax
	mov	rdx, rcx
	call	error
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x402360
	.globl c_isascii
	.type c_isascii, @function
c_isascii:

	cmp	edi, 0x80
	setb	al
	ret	
	.section	.text
	.align	32
	#Procedure 0x40236a
	.globl sub_40236a
	.type sub_40236a, @function
sub_40236a:

	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x402370

	.globl postorder
	.type postorder, @function
postorder:
	push	r15
	push	r14
	push	rbx
	mov	r14, rdx
	mov	r15, rsi
	jmp	.label_49
	.section	.text
	.align	32
	#Procedure 0x40237d
	.globl sub_40237d
	.type sub_40237d, @function
sub_40237d:

	nop	dword ptr [rax]
.label_48:
	mov	rdi, r14
	mov	rsi, rbx
	call	r15
	test	eax, eax
	jne	.label_50
	mov	rcx, qword ptr [rbx]
	xor	eax, eax
	test	rcx, rcx
	je	.label_50
	mov	rdi, qword ptr [rcx + 0x10]
	cmp	rdi, rbx
	mov	rbx, rcx
	je	.label_48
	test	rdi, rdi
	mov	rbx, rcx
	je	.label_48
	jmp	.label_49
.label_51:
	mov	rdi, qword ptr [rbx + 0x10]
.label_49:
	mov	rbx, rdi
	mov	rdi, qword ptr [rbx + 8]
	test	rdi, rdi
	jne	.label_49
	cmp	qword ptr [rbx + 0x10], 0
	je	.label_48
	mov	rdi, qword ptr [rbx + 8]
	test	rdi, rdi
	jne	.label_49
	jmp	.label_51
	.section	.text
	.align	32
	#Procedure 0x4023cf
	.globl sub_4023cf
	.type sub_4023cf, @function
sub_4023cf:

	nop	word ptr cs:[rax + rax]
.label_50:
	pop	rbx
	pop	r14
	pop	r15
	ret	
	.section	.text
	.align	32
	#Procedure 0x4023e3
	.globl sub_4023e3
	.type sub_4023e3, @function
sub_4023e3:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4023f0

	.globl find_recover_state
	.type find_recover_state, @function
find_recover_state:
	push	r14
	push	rbx
	push	rax
	mov	rbx, rsi
	mov	r14, rdi
.label_54:
	mov	rcx, qword ptr [rbx + 0x48]
	mov	rdx, qword ptr [rbx + 0xc0]
	nop	word ptr cs:[rax + rax]
.label_53:
	cmp	rcx, rdx
	mov	eax, 0
	jge	.label_52
	inc	qword ptr [rbx + 0x48]
	mov	rax, qword ptr [rbx + 0xb8]
	cmp	qword ptr [rax + rcx*8 + 8], 0
	lea	rcx, [rcx + 1]
	je	.label_53
	xor	edx, edx
	mov	rdi, r14
	mov	rsi, rbx
	call	merge_state_with_log
	test	rax, rax
	jne	.label_52
	mov	ecx, dword ptr [r14]
	test	ecx, ecx
	je	.label_54
.label_52:
	add	rsp, 8
	pop	rbx
	pop	r14
	ret	
	.section	.text
	.align	32
	#Procedure 0x402452
	.globl sub_402452
	.type sub_402452, @function
sub_402452:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x402460

	.globl docolon
	.type docolon, @function
docolon:
	push	rbp
	push	r14
	push	rbx
	sub	rsp, 0x160
	mov	rbx, rsi
	mov	r14, rdi
	call	tostring
	mov	rdi, rbx
	call	tostring
	xorps	xmm0, xmm0
	movaps	xmmword ptr [rsp], xmm0
	mov	qword ptr [rsp + 0x10], 0
	movaps	xmmword ptr [rsp + 0x20], xmm0
	lea	rax, [rsp + 0x60]
	mov	qword ptr [rsp + 0x40], rax
	mov	qword ptr [rsp + 0x48], 0
	mov	qword ptr [word ptr [rip + rpl_re_syntax_options]],  0x2c6
	mov	rbx, qword ptr [rbx + 8]
	mov	rdi, rbx
	call	strlen
	lea	rdx, [rsp + 0x20]
	mov	rdi, rbx
	mov	rsi, rax
	call	rpl_re_compile_pattern
	mov	rcx, rax
	test	rcx, rcx
	jne	.label_59
	and	byte ptr [rsp + 0x58], 0x7f
	mov	rbx, qword ptr [r14 + 8]
	mov	rdi, rbx
	call	strlen
	lea	rdi, [rsp + 0x20]
	lea	r8, [rsp]
	xor	ecx, ecx
	mov	rsi, rbx
	mov	rdx, rax
	call	rpl_re_match
	mov	rbx, rax
	test	rbx, rbx
	js	.label_55
	cmp	qword ptr [rsp + 0x50], 0
	je	.label_57
	mov	rax, qword ptr [rsp + 0x10]
	mov	rax, qword ptr [rax + 8]
	mov	rcx, qword ptr [r14 + 8]
	mov	byte ptr [rcx + rax], 0
	mov	rdi, qword ptr [r14 + 8]
	mov	rax, qword ptr [rsp + 8]
	add	rdi, qword ptr [rax + 8]
	call	str_value
	jmp	.label_60
.label_55:
	cmp	rbx, -1
	jne	.label_65
	cmp	qword ptr [rsp + 0x50], 0
	je	.label_67
	mov	edi, OFFSET FLAT:label_56
	call	str_value
	jmp	.label_60
.label_57:
	call	__ctype_get_mb_cur_max
	cmp	rax, 1
	je	.label_61
	mov	rdi, qword ptr [r14 + 8]
	mov	rsi, rbx
	call	mbs_offset_to_chars
	mov	rbx, rax
.label_61:
	mov	rdi, rbx
	jmp	.label_64
.label_67:
	xor	edi, edi
.label_64:
	call	int_value
.label_60:
	mov	rbx, rax
	cmp	qword ptr [rsp], 0
	je	.label_63
	mov	rdi, qword ptr [rsp + 8]
	call	free
	mov	rdi, qword ptr [rsp + 0x10]
	call	free
.label_63:
	mov	qword ptr [rsp + 0x40], 0
	lea	rdi, [rsp + 0x20]
	call	rpl_regfree
	mov	rax, rbx
	add	rsp, 0x160
	pop	rbx
	pop	r14
	pop	rbp
	ret	
.label_59:
	mov	edi, 2
	xor	esi, esi
	mov	edx, OFFSET FLAT:label_66
	xor	eax, eax
	call	error
.label_65:
	mov	ebp, 0x4b
	cmp	rbx, -2
	jne	.label_58
	call	__errno_location
	mov	ebp, dword ptr [rax]
.label_58:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_62
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	mov	edi, 3
	xor	eax, eax
	mov	esi, ebp
	mov	rdx, rcx
	call	error
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x402610

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
	je	.label_68
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
.label_68:
	add	rsp, 8
	pop	rbx
	pop	r14
	pop	r15
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x402691
	.globl sub_402691
	.type sub_402691, @function
sub_402691:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4026a0

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
	#Procedure 0x4026bb
	.globl sub_4026bb
	.type sub_4026bb, @function
sub_4026bb:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4026c0

	.globl locale_charset
	.type locale_charset, @function
locale_charset:
	push	rax
	mov	edi, 0xe
	call	rpl_nl_langinfo
	test	rax, rax
	mov	ecx, OFFSET FLAT:label_56
	cmovne	rcx, rax
	cmp	byte ptr [rcx], 0
	mov	eax, OFFSET FLAT:label_69
	cmovne	rax, rcx
	pop	rcx
	ret	
	.section	.text
	.align	32
	#Procedure 0x4026e5
	.globl sub_4026e5
	.type sub_4026e5, @function
sub_4026e5:

	nop	word ptr cs:[rax + rax]
.label_70:
	xor	eax, eax
	ret	
	.section	.text
	.align	32
	#Procedure 0x4026f3
	.globl sub_4026f3
	.type sub_4026f3, @function
sub_4026f3:

	nop	
	.section	.text
	.align	32
	#Procedure 0x4026f5
	.globl c_isalpha
	.type c_isalpha, @function
c_isalpha:

	add	edi, -0x41
	cmp	edi, 0x39
	ja	.label_70
	movabs	rax, 0x3ffffff03ffffff
	mov	ecx, edi
	shr	rax, cl
	and	eax, 1
	ret	
	.section	.text
	.align	32
	#Procedure 0x402710

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
	je	.label_75
	mov	qword ptr [rsp + 0x40], 0
	cmp	qword ptr [rbx + 8], 0
	jle	.label_75
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
.label_73:
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
	jne	.label_71
	cmp	eax, 4
	jne	.label_72
	mov	rax, qword ptr [rsp + 0x10]
	cmp	qword ptr [rdx + 0x18], rax
	jne	.label_82
	jmp	.label_72
	.section	.text
	.align	32
	#Procedure 0x402805
	.globl sub_402805
	.type sub_402805, @function
sub_402805:

	nop	word ptr cs:[rax + rax]
.label_71:
	cmp	eax, 4
	jne	.label_72
.label_82:
	mov	r14, qword ptr [rsp + 0x30]
	lea	rbp, [r14 + r14*4]
	shl	rbp, 3
	mov	rax, qword ptr [rsp + 0x18]
	add	rbp, qword ptr [rax + 0xd8]
	mov	r13, qword ptr [rsp + 0x88]
	nop	word ptr [rax + rax]
.label_81:
	cmp	qword ptr [rbp], r15
	jne	.label_74
	mov	rax, qword ptr [rbp + 0x18]
	mov	rcx, qword ptr [rbp + 0x10]
	mov	rbx, rax
	sub	rbx, rcx
	add	rbx, qword ptr [rsp + 0x10]
	cmp	rax, rcx
	je	.label_83
	lea	rax, [r15*8]
	mov	rcx, qword ptr [rsp + 0x20]
	add	rax, qword ptr [rcx + 0x18]
	jmp	.label_77
.label_83:
	mov	rax, qword ptr [rsp + 0x20]
	mov	rax, qword ptr [rax + 0x28]
	lea	rcx, [r15 + r15*2]
	mov	rax, qword ptr [rax + rcx*8 + 0x10]
.label_77:
	cmp	rbx, qword ptr [rdx + 0x18]
	jg	.label_74
	mov	rcx, qword ptr [rdx]
	mov	rdi, qword ptr [rcx + rbx*8]
	test	rdi, rdi
	je	.label_74
	mov	r12, qword ptr [rax]
	add	rdi, 8
	mov	rsi, r12
	call	re_node_set_contains
	test	rax, rax
	je	.label_80
	mov	rdi, qword ptr [rsp + 0x18]
	mov	rsi, qword ptr [rsp + 0x38]
	mov	rdx, r15
	mov	rcx, qword ptr [rsp + 0x10]
	mov	r8, r12
	mov	r9, rbx
	call	check_dst_limits
	test	al, al
	mov	rdx, qword ptr [rsp + 8]
	jne	.label_74
	cmp	qword ptr [rsp + 0x40], 0
	jne	.label_78
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
	jne	.label_76
.label_78:
	mov	qword ptr [rsp + 0x50], r15
	mov	rax, qword ptr [rsp + 0x10]
	mov	qword ptr [rsp + 0x58], rax
	lea	rdi, [rsp + 0x60]
	mov	rsi, r14
	call	re_node_set_insert
	mov	r12d, 0xc
	test	al, al
	je	.label_76
	mov	rax, qword ptr [rsp + 0x40]
	mov	rcx, qword ptr [rsp + 0x10]
	mov	rbx, qword ptr [rax + rcx*8]
	mov	rdi, qword ptr [rsp + 0x18]
	lea	rsi, [rsp + 0x40]
	call	sift_states_backward
	mov	r12d, eax
	test	r12d, r12d
	jne	.label_76
	mov	rax, qword ptr [rsp + 8]
	mov	rsi, qword ptr [rax + 8]
	test	rsi, rsi
	je	.label_79
	mov	rdx, qword ptr [rsp + 0x40]
	mov	rdi, qword ptr [rsp + 0x20]
	mov	rcx, qword ptr [rsp + 0x80]
	call	merge_state_array
	mov	r12d, eax
	test	r12d, r12d
	jne	.label_76
.label_79:
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
.label_80:
	mov	rdx, qword ptr [rsp + 8]
	nop	dword ptr [rax]
.label_74:
	inc	r14
	add	r13, 0x28
	cmp	byte ptr [rbp + 0x20], 0
	lea	rbp, [rbp + 0x28]
	jne	.label_81
.label_72:
	mov	rax, qword ptr [rsp + 0x28]
	mov	rcx, rax
	inc	rcx
	xor	r12d, r12d
	mov	rbx, qword ptr [rsp + 0x90]
	mov	rax, rcx
	mov	qword ptr [rsp + 0x28], rax
	cmp	rcx, qword ptr [rbx + 8]
	jl	.label_73
.label_76:
	cmp	qword ptr [rsp + 0x40], 0
	je	.label_75
	mov	rdi, qword ptr [rsp + 0x70]
	call	free
.label_75:
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
	#Procedure 0x402a54
	.globl sub_402a54
	.type sub_402a54, @function
sub_402a54:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x402a60

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
	je	.label_85
	mov	r13, r12
	add	r13, 8
	mov	rdi, r13
	mov	rsi, r14
	call	re_node_set_init_copy
	test	eax, eax
	jne	.label_90
	mov	rdx, rbx
	mov	qword ptr [r12 + 0x50], r13
	cmp	qword ptr [r14 + 8], 0
	jle	.label_91
	xor	eax, eax
.label_93:
	mov	r8, qword ptr [r15]
	mov	rcx, qword ptr [r14 + 0x10]
	mov	rbp, qword ptr [rcx + rax*8]
	shl	rbp, 4
	mov	esi, dword ptr [r8 + rbp + 8]
	mov	edi, esi
	and	edi, 0x3ffff
	cmp	edi, 1
	je	.label_84
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
	je	.label_89
	cmp	sil, 4
	je	.label_86
	cmp	sil, 2
	jne	.label_87
	or	cl, 0x10
	mov	byte ptr [r12 + 0x68], cl
	jmp	.label_84
.label_86:
	or	cl, 0x40
	mov	byte ptr [r12 + 0x68], cl
	jmp	.label_84
.label_87:
	lea	rcx, [r8 + rbp + 8]
	test	dword ptr [rcx], 0x3ff00
	je	.label_84
.label_89:
	or	byte ptr [r12 + 0x68], 0x80
.label_84:
	inc	rax
	cmp	rax, qword ptr [r14 + 8]
	jl	.label_93
.label_91:
	mov	rdi, r15
	mov	rsi, r12
	call	register_state
	test	eax, eax
	mov	rax, r12
	jne	.label_88
.label_85:
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_90:
	mov	rdi, r12
	call	free
	jmp	.label_92
.label_88:
	mov	rdi, r12
	call	free_state
.label_92:
	xor	eax, eax
	jmp	.label_85
	.section	.text
	.align	32
	#Procedure 0x402b83
	.globl sub_402b83
	.type sub_402b83, @function
sub_402b83:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x402b90

	.globl re_string_wchar_at
	.type re_string_wchar_at, @function
re_string_wchar_at:
	cmp	dword ptr [rdi + 0x90], 1
	jne	.label_94
	mov	rax, qword ptr [rdi + 8]
	movzx	eax, byte ptr [rax + rsi]
	ret	
.label_94:
	mov	rax, qword ptr [rdi + 0x10]
	mov	eax, dword ptr [rax + rsi*4]
	ret	
	.section	.text
	.align	32
	#Procedure 0x402baa
	.globl sub_402baa
	.type sub_402baa, @function
sub_402baa:

	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x402bb0

	.globl re_node_set_remove_at
	.type re_node_set_remove_at, @function
re_node_set_remove_at:
	test	rsi, rsi
	js	.label_95
	mov	rax, qword ptr [rdi + 8]
	cmp	rax, rsi
	jle	.label_95
	dec	rax
	mov	qword ptr [rdi + 8], rax
	cmp	rax, rsi
	jle	.label_95
	mov	rax, qword ptr [rdi + 0x10]
	nop	
.label_96:
	mov	rcx, qword ptr [rax + rsi*8 + 8]
	mov	qword ptr [rax + rsi*8], rcx
	inc	rsi
	cmp	rsi, qword ptr [rdi + 8]
	jl	.label_96
.label_95:
	ret	
	.section	.text
	.align	32
	#Procedure 0x402be3
	.globl sub_402be3
	.type sub_402be3, @function
sub_402be3:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x402bf0

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
	jl	.label_97
	mov	dword ptr [r15], 1
	mov	rsi, qword ptr [rbx + 0x48]
	mov	rdi, rbx
	call	re_string_wchar_at
	mov	dword ptr [r15 + 8], eax
	movsxd	rax, r12d
	add	qword ptr [rbx + 0x48], rax
.label_99:
	xor	eax, eax
.label_1345:
	add	rsp, 0x28
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_2016:
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
.label_97:
	movsxd	rax, ebp
	add	r13, rax
	mov	qword ptr [rbx + 0x48], r13
	mov	al, byte ptr [r14 + 8]
	add	al, 0xea
	movzx	eax, al
	cmp	al, 8
	ja	.label_98
	jmp	qword ptr [word ptr [+ (rax * 8) + label_100]]
.label_2015:
	mov	eax, dword ptr [rsp + 0xc]
	test	al, al
	jne	.label_98
	lea	rdi, [rsp + 0x18]
	mov	rsi, rbx
	mov	rdx, qword ptr [rsp + 0x10]
	call	peek_token_bracket
	mov	eax, 0xb
	cmp	byte ptr [rsp + 0x20], 0x15
	jne	.label_1345
.label_98:
	mov	dword ptr [r15], 0
	mov	al, byte ptr [r14]
	mov	byte ptr [r15 + 8], al
	jmp	.label_99
	.section	.text
	.align	32
	#Procedure 0x402ccd
	.globl sub_402ccd
	.type sub_402ccd, @function
sub_402ccd:

	nop	dword ptr [rax]
.label_103:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_101
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	mov	edi, 2
	xor	esi, esi
	xor	eax, eax
	mov	rdx, rcx
	call	error
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x402cfb

	.globl eval7
	.type eval7, @function
eval7:
	push	rbx
	mov	ebx, edi
	call	require_more_args
	mov	edi, OFFSET FLAT:label_104
	call	nextarg
	test	al, al
	je	.label_107
	movzx	edi, bl
	call	eval
	mov	rbx, rax
	call	nomoreargs
	test	al, al
	jne	.label_102
	mov	edi, OFFSET FLAT:label_105
	call	nextarg
	test	al, al
	je	.label_108
	mov	rax, rbx
	pop	rbx
	ret	
.label_107:
	mov	edi, OFFSET FLAT:label_105
	call	nextarg
	test	al, al
	jne	.label_103
	mov	rax,  qword ptr [word ptr [rip + args]]
	lea	rcx, [rax + 8]
	mov	qword ptr [word ptr [rip + args]],  rcx
	mov	rdi, qword ptr [rax]
	pop	rbx
	jmp	str_value
.label_108:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_106
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
	mov	rax,  qword ptr [word ptr [rip + args]]
	mov	rdx, qword ptr [rax]
.label_109:
	xor	edi, edi
	mov	esi, 8
	call	quotearg_n_style
	mov	rcx, rax
	mov	edi, 2
	xor	esi, esi
	xor	eax, eax
	mov	rdx, rbx
	call	error
.label_102:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_110
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
	mov	rax,  qword ptr [word ptr [rip + args]]
	mov	rdx, qword ptr [rax - 8]
	jmp	.label_109
.label_111:
	xor	eax, eax
	pop	rcx
	ret	
	.section	.text
	.align	32
	#Procedure 0x402dc4
	.globl sub_402dc4
	.type sub_402dc4, @function
sub_402dc4:

	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x402dcd

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
	je	.label_111
	cdqe	
	mov	esi, OFFSET FLAT:__re_error_msgid
	add	rsi,  qword ptr [word ptr [+ (rax * 8) + __re_error_msgid_idx]]
	xor	edi, edi
	mov	edx, 5
	pop	rax
	jmp	dcgettext
	.section	.text
	.align	32
	#Procedure 0x402e20

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
	jle	.label_112
	mov	rax, qword ptr [rsp + 0x10]
	mov	r12, qword ptr [rax + 0x98]
	mov	rax, qword ptr [rsp + 8]
	lea	rax, [rax + 0x20]
	mov	qword ptr [rsp + 0x18], rax
	xor	r15d, r15d
	nop	word ptr cs:[rax + rax]
.label_115:
	mov	rax, qword ptr [r14 + 0x30]
	mov	rbp, qword ptr [rax + r15*8]
	mov	rax, qword ptr [r12]
	mov	r13, rbp
	shl	r13, 4
	test	byte ptr [rax + r13 + 0xa], 0x10
	je	.label_113
	mov	rsi, qword ptr [rsp + 8]
	mov	r8, qword ptr [rsi + 0x18]
	mov	rdi, qword ptr [rsp + 0x10]
	mov	rdx, rbp
	mov	rcx, rbx
	call	sift_states_iter_mb
	test	eax, eax
	jne	.label_117
.label_113:
	add	r13, qword ptr [r12]
	mov	rdi, qword ptr [rsp + 0x10]
	mov	rsi, r13
	mov	rdx, rbx
	call	check_node_accept
	test	al, al
	je	.label_116
	mov	rax, qword ptr [rsp + 8]
	mov	rax, qword ptr [rax]
	mov	rdi, qword ptr [rax + rbx*8 + 8]
	test	rdi, rdi
	je	.label_116
	add	rdi, 8
	mov	rax, qword ptr [r12 + 0x18]
	mov	rsi, qword ptr [rax + rbp*8]
	call	re_node_set_contains
	mov	rcx, rax
	mov	eax, 1
	test	rcx, rcx
	je	.label_116
.label_117:
	mov	rcx, qword ptr [rsp + 8]
	cmp	qword ptr [rcx + 0x28], 0
	je	.label_114
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
	jne	.label_118
.label_114:
	mov	rdi, qword ptr [rsp + 0x20]
	mov	rsi, rbp
	call	re_node_set_insert
	movzx	ecx, al
	xor	ecx, 1
.label_118:
	or	cl, 4
	mov	eax, 0xc
	and	cl, 7
	cmp	cl, 4
	jne	.label_112
.label_116:
	inc	r15
	xor	eax, eax
	cmp	r15, qword ptr [r14 + 0x28]
	jl	.label_115
.label_112:
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
	#Procedure 0x402f7f
	.globl sub_402f7f
	.type sub_402f7f, @function
sub_402f7f:

	nop	
	.section	.text
	.align	32
	#Procedure 0x402f80

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
	jne	.label_119
	cmp	byte ptr [rbx], 0
	jne	.label_127
	mov	rax, qword ptr [rbx + 0x10]
	movsx	edi, byte ptr [rax]
	call	is_basic
	test	al, al
	je	.label_129
	mov	qword ptr [rbx + 0x18], 1
	mov	rax, qword ptr [rbx + 0x10]
	movsx	eax, byte ptr [rax]
	mov	dword ptr [rbx + 0x24], eax
	mov	byte ptr [rbx + 0x20], 1
	jmp	.label_128
.label_129:
	lea	rdi, [rbx + 4]
	call	mbsinit
	test	eax, eax
	je	.label_122
	mov	byte ptr [rbx], 1
.label_127:
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
	je	.label_120
	test	rax, rax
	je	.label_126
	cmp	rax, -1
	jne	.label_133
	mov	qword ptr [rbx + 0x18], 1
	mov	byte ptr [rbx + 0x20], 0
	jmp	.label_128
.label_120:
	mov	rdi, qword ptr [rbx + 0x10]
	call	strlen
	mov	qword ptr [rbx + 0x18], rax
	mov	byte ptr [rbx + 0x20], 0
	jmp	.label_128
.label_126:
	mov	qword ptr [rbx + 0x18], 1
	mov	rax, qword ptr [rbx + 0x10]
	cmp	byte ptr [rax], 0
	jne	.label_132
	cmp	dword ptr [r14], 0
	jne	.label_121
.label_133:
	mov	byte ptr [rbx + 0x20], 1
	mov	rdi, r15
	call	mbsinit
	test	eax, eax
	je	.label_128
	mov	byte ptr [rbx], 0
.label_128:
	mov	byte ptr [rbx + 0xc], 1
.label_119:
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	ret	
.label_122:
	mov	edi, OFFSET FLAT:label_131
	mov	esi, OFFSET FLAT:label_124
	mov	edx, 0x96
	mov	ecx, OFFSET FLAT:label_125
	call	__assert_fail
.label_132:
	mov	edi, OFFSET FLAT:label_123
	mov	esi, OFFSET FLAT:label_124
	mov	edx, 0xb2
	mov	ecx, OFFSET FLAT:label_125
	call	__assert_fail
.label_121:
	mov	edi, OFFSET FLAT:label_130
	mov	esi, OFFSET FLAT:label_124
	mov	edx, 0xb3
	mov	ecx, OFFSET FLAT:label_125
	call	__assert_fail
	.section	.text
	.align	32
	#Procedure 0x4030c1
	.globl sub_4030c1
	.type sub_4030c1, @function
sub_4030c1:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4030d0

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
	jne	.label_137
	cmp	qword ptr [r15 + 0x98], 0
	jle	.label_140
	cmp	qword ptr [rsp + 0x10], 0
	jle	.label_140
	xor	r13d, r13d
	lea	r14, [rsp + 8]
	nop	word ptr [rax + rax]
.label_138:
	mov	rax, qword ptr [rsp + 0x18]
	mov	r8, qword ptr [rax + r13*8]
	mov	rax, qword ptr [r15]
	mov	rdx, r8
	shl	rdx, 4
	movzx	r9d, byte ptr [rax + rdx + 8]
	cmp	r9d, 4
	jne	.label_134
	cmp	qword ptr [rsp + 0x10], 0
	mov	esi, 0
	jle	.label_139
	mov	rdi, qword ptr [r15]
	mov	rax, qword ptr [rsp + 0x10]
	mov	rcx, qword ptr [rsp + 0x18]
	add	rdx, rdi
	xor	esi, esi
	nop	word ptr cs:[rax + rax]
.label_141:
	mov	rbx, qword ptr [rcx + rsi*8]
	shl	rbx, 4
	cmp	byte ptr [rdi + rbx + 8], 9
	jne	.label_136
	mov	rbx, qword ptr [rdi + rbx]
	cmp	rbx, qword ptr [rdx]
	je	.label_139
.label_136:
	inc	rsi
	cmp	rsi, rax
	jl	.label_141
.label_139:
	cmp	r9d, 4
	setne	al
	cmp	rsi, qword ptr [rsp + 0x10]
	je	.label_134
	test	al, al
	jne	.label_134
	mov	rax, qword ptr [r15 + 0x28]
	lea	rcx, [r8 + r8*2]
	mov	rax, qword ptr [rax + rcx*8 + 0x10]
	mov	r12, qword ptr [rax]
	mov	rdi, r14
	mov	rsi, r12
	call	re_node_set_contains
	test	rax, rax
	jne	.label_134
	mov	rax, qword ptr [r15 + 0x30]
	lea	rcx, [r12 + r12*2]
	lea	rsi, [rax + rcx*8]
	mov	rdi, r14
	call	re_node_set_merge
	test	eax, eax
	mov	r13d, 0
	jne	.label_137
	nop	word ptr cs:[rax + rax]
.label_134:
	inc	r13
	cmp	r13, qword ptr [rsp + 0x10]
	jl	.label_138
.label_140:
	lea	rdi, [rsp + 4]
	lea	rdx, [rsp + 8]
	xor	ecx, ecx
	mov	rsi, r15
	call	re_acquire_state_context
	mov	qword ptr [r15 + 0x48], rax
	test	rax, rax
	je	.label_142
	cmp	byte ptr [rax + 0x68], 0
	js	.label_143
	mov	qword ptr [r15 + 0x60], rax
	mov	qword ptr [r15 + 0x58], rax
	mov	qword ptr [r15 + 0x50], rax
	jmp	.label_135
.label_142:
	mov	eax, dword ptr [rsp + 4]
	jmp	.label_137
	.section	.text
	.align	32
	#Procedure 0x403259
	.globl sub_403259
	.type sub_403259, @function
sub_403259:

	nop	word ptr [rax + rax]
.label_143:
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
	je	.label_142
	test	rax, rax
	je	.label_142
	mov	rax, qword ptr [r15 + 0x58]
	test	rax, rax
	je	.label_142
.label_135:
	mov	rdi, qword ptr [rsp + 0x18]
	call	free
	xor	eax, eax
.label_137:
	add	rsp, 0x20
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	ret	
	.section	.text
	.align	32
	#Procedure 0x4032e0
	.globl c_isdigit
	.type c_isdigit, @function
c_isdigit:

	add	edi, -0x30
	cmp	edi, 0xa
	setb	al
	ret	
	.section	.text
	.align	32
	#Procedure 0x4032ea
	.globl sub_4032ea
	.type sub_4032ea, @function
sub_4032ea:

	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4032f0

	.globl eval3
	.type eval3, @function
eval3:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	push	rax
	movzx	r13d, dil
	mov	edi, r13d
	call	eval4
	mov	r14, rax
	mov	r15, r14
	add	r15, 8
	mov	r12d, OFFSET FLAT:__gmpz_add
	jmp	.label_146
	.section	.text
	.align	32
	#Procedure 0x403319
	.globl sub_403319
	.type sub_403319, @function
sub_403319:

	nop	dword ptr [rax]
.label_149:
	mov	rdi, rbx
	call	freev
.label_146:
	mov	edi, OFFSET FLAT:label_147
	call	nextarg
	xor	ebp, ebp
	test	al, al
	jne	.label_148
	mov	edi, OFFSET FLAT:label_150
	call	nextarg
	mov	ebp, 1
	test	al, al
	je	.label_144
.label_148:
	mov	edi, r13d
	call	eval4
	mov	rbx, rax
	test	r13b, r13b
	je	.label_149
	mov	rdi, r14
	call	toarith
	test	al, al
	je	.label_145
	mov	rdi, rbx
	call	toarith
	test	al, al
	je	.label_145
	test	ebp, ebp
	mov	eax, OFFSET FLAT:__gmpz_sub
	cmove	rax, r12
	mov	rdx, rbx
	add	rdx, 8
	mov	rdi, r15
	mov	rsi, r15
	call	rax
	jmp	.label_149
.label_144:
	mov	rax, r14
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_145:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_45
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	mov	edi, 2
	xor	esi, esi
	xor	eax, eax
	mov	rdx, rcx
	call	error
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4033d0

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
	jns	.label_152
	lea	rsi, [r12 - 1]
	mov	edx, dword ptr [rbp + 0xa0]
	mov	rdi, rbp
	call	re_string_context_at
	test	al, 1
	jne	.label_166
	test	eax, eax
	je	.label_152
	mov	ecx, eax
	and	ecx, 4
	sete	sil
	mov	edx, eax
	and	edx, 2
	je	.label_167
	test	sil, sil
	jne	.label_167
	mov	rbx, qword ptr [r14 + 0x60]
	jmp	.label_152
.label_166:
	mov	rbx, qword ptr [r14 + 0x50]
.label_152:
	test	rbx, rbx
	je	.label_172
	mov	rax, qword ptr [rbp + 0xb8]
	test	rax, rax
	je	.label_156
	mov	qword ptr [rax + r12*8], rbx
	cmp	qword ptr [r15 + 0x98], 0
	jne	.label_176
.label_156:
	mov	al, byte ptr [rbx + 0x68]
	mov	rdx, -1
	xor	ecx, ecx
	test	al, 0x10
	jne	.label_183
.label_165:
	mov	qword ptr [rsp + 0x18], rdx
	mov	qword ptr [rsp + 0x20], r13
	mov	qword ptr [rsp + 0x10], r12
	lea	r13, [rsp + 4]
.label_177:
	mov	rsi, qword ptr [rbp + 0x48]
	cmp	qword ptr [rbp + 0x68], rsi
	jle	.label_155
	test	rcx, rcx
	sete	r12b
	mov	eax, dword ptr [rsp + 8]
	or	r12b, al
	mov	r14, rbx
	nop	word ptr cs:[rax + rax]
.label_154:
	lea	r15, [rsi + 1]
	mov	rax, qword ptr [rbp + 0x40]
	cmp	r15, rax
	jge	.label_171
.label_159:
	mov	rax, qword ptr [rbp + 0x30]
	cmp	r15, rax
	jge	.label_174
.label_178:
	mov	rdi, r13
	mov	rsi, rbp
	mov	rdx, r14
	call	transit_state
	mov	rbx, rax
	cmp	qword ptr [rbp + 0xb8], 0
	je	.label_182
	mov	rdi, r13
	mov	rsi, rbp
	mov	rdx, rbx
	call	merge_state_with_log
	mov	rbx, rax
.label_182:
	test	rbx, rbx
	jne	.label_160
	mov	rax, -2
	cmp	dword ptr [rsp + 4], 0
	jne	.label_157
	cmp	qword ptr [rbp + 0xb8], 0
	setne	al
	and	al, r12b
	cmp	al, 1
	jne	.label_155
	mov	rdi, r13
	mov	rsi, rbp
	call	find_recover_state
	mov	rbx, rax
	test	rbx, rbx
	je	.label_155
.label_160:
	mov	eax, dword ptr [rsp + 0xc]
	test	al, 1
	jne	.label_168
.label_173:
	movzx	eax, byte ptr [rbx + 0x68]
	test	al, 0x10
	je	.label_175
	test	al, al
	jns	.label_151
	mov	rdx, qword ptr [rbp + 0x48]
	mov	rdi, rbp
	mov	rsi, rbx
	call	check_halt_state_context
	test	rax, rax
	jne	.label_151
.label_175:
	mov	rsi, qword ptr [rbp + 0x48]
	cmp	qword ptr [rbp + 0x68], rsi
	mov	r14, rbx
	jg	.label_154
	jmp	.label_155
.label_171:
	cmp	rax, qword ptr [rbp + 0x58]
	jge	.label_159
	jmp	.label_164
.label_174:
	cmp	rax, qword ptr [rbp + 0x58]
	jge	.label_178
.label_164:
	add	esi, 2
	mov	rdi, rbp
	call	extend_buffers
	mov	ecx, eax
	mov	dword ptr [rsp + 4], ecx
	test	ecx, ecx
	jne	.label_170
	jmp	.label_178
.label_168:
	cmp	r14, rbx
	je	.label_179
	mov	dword ptr [rsp + 0xc], 0
.label_179:
	mov	rax, qword ptr [rsp + 0x10]
	cmove	rax, r15
	mov	qword ptr [rsp + 0x10], rax
	jmp	.label_173
.label_151:
	mov	rdx, qword ptr [rbp + 0x48]
	mov	eax, dword ptr [rsp + 8]
	test	al, al
	mov	ecx, 1
	mov	eax, 0
	mov	qword ptr [rsp + 0x20], rax
	mov	qword ptr [rsp + 0x18], rdx
	mov	rax, rdx
	jne	.label_177
	jmp	.label_157
.label_155:
	mov	rcx, qword ptr [rsp + 0x20]
	test	rcx, rcx
	je	.label_158
	mov	rax, qword ptr [rsp + 0x10]
	add	qword ptr [rcx], rax
.label_158:
	mov	rax, qword ptr [rsp + 0x18]
.label_157:
	add	rsp, 0x28
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_167:
	test	edx, edx
	jne	.label_181
	test	ecx, ecx
	je	.label_152
	mov	rdx, qword ptr [rbx + 0x50]
	lea	rdi, [rsp + 4]
	mov	rsi, r14
	mov	ecx, eax
	call	re_acquire_state_context
	mov	rbx, rax
	jmp	.label_152
.label_181:
	mov	rbx, qword ptr [r14 + 0x58]
	jmp	.label_152
.label_170:
	mov	rax, -2
	cmp	ecx, 0xc
	je	.label_157
	mov	edi, OFFSET FLAT:label_161
	mov	esi, OFFSET FLAT:label_162
	mov	edx, 0x46c
	mov	ecx, OFFSET FLAT:label_163
	call	__assert_fail
.label_172:
	mov	rax, -2
	cmp	dword ptr [rsp + 4], 0xc
	je	.label_157
	mov	edi, OFFSET FLAT:label_161
	mov	esi, OFFSET FLAT:label_162
	mov	edx, 0x435
	mov	ecx, OFFSET FLAT:label_163
	call	__assert_fail
.label_183:
	test	al, al
	js	.label_169
	mov	ecx, 1
	mov	eax, dword ptr [rsp + 8]
	test	al, al
	mov	rdx, r12
	jne	.label_165
	mov	rax, r12
	jmp	.label_157
.label_176:
	lea	r14, [rbx + 8]
	xor	edx, edx
	mov	rdi, rbp
	mov	rsi, r14
	call	check_subexp_matching_top
	mov	dword ptr [rsp + 4], eax
	test	eax, eax
	jne	.label_153
	test	byte ptr [rbx + 0x68], 0x40
	je	.label_180
	mov	rdi, rbp
	mov	rsi, r14
	call	transit_state_bkref
	mov	dword ptr [rsp + 4], eax
	test	eax, eax
	jne	.label_153
.label_180:
	mov	dword ptr [rsp + 0xc], 0
	jmp	.label_156
.label_169:
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
	je	.label_165
	mov	eax, dword ptr [rsp + 8]
	test	al, al
	jne	.label_165
	mov	rax, r12
	jmp	.label_157
.label_153:
	cdqe	
	jmp	.label_157
	.section	.text
	.align	32
	#Procedure 0x40375b
	.globl sub_40375b
	.type sub_40375b, @function
sub_40375b:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x403760

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
	je	.label_184
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
	jle	.label_189
	lea	r14, [rax + rcx*8]
	mov	r15, qword ptr [rax + rcx*8 + 0x10]
	xor	r12d, r12d
.label_187:
	mov	rbp, qword ptr [r15 + r12*8]
	cmp	qword ptr [rbp], rbx
	jne	.label_186
	movzx	eax, byte ptr [rbp + 0x68]
	and	eax, 0xf
	cmp	eax, r13d
	jne	.label_186
	mov	rdi, qword ptr [rbp + 0x50]
	mov	rsi, qword ptr [rsp]
	call	re_node_set_compare
	test	al, al
	jne	.label_185
.label_186:
	inc	r12
	cmp	r12, qword ptr [r14]
	jl	.label_187
.label_189:
	mov	rdi, qword ptr [rsp + 0x10]
	mov	rsi, qword ptr [rsp]
	mov	edx, r13d
	mov	rcx, rbx
	call	create_cd_newstate
	mov	rbp, rax
	test	rbp, rbp
	jne	.label_185
	mov	rax, qword ptr [rsp + 8]
	mov	dword ptr [rax], 0xc
	jmp	.label_188
.label_184:
	mov	dword ptr [rdi], 0
.label_188:
	xor	ebp, ebp
.label_185:
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
	#Procedure 0x403832
	.globl sub_403832
	.type sub_403832, @function
sub_403832:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x403840

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
	#Procedure 0x403877
	.globl sub_403877
	.type sub_403877, @function
sub_403877:

	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x403880
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
	#Procedure 0x40388f
	.globl sub_40388f
	.type sub_40388f, @function
sub_40388f:

	nop	
	.section	.text
	.align	32
	#Procedure 0x403890

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
	#Procedure 0x4038af
	.globl sub_4038af
	.type sub_4038af, @function
sub_4038af:

	nop	
	.section	.text
	.align	32
	#Procedure 0x4038b0

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
	jne	.label_207
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
	jne	.label_191
	cmp	byte ptr [r14 + 8], 1
	mov	rsi, qword ptr [rsp + 0x10]
	jne	.label_194
	xor	ebx, ebx
	cmp	byte ptr [r14], 0x2c
	je	.label_196
	jmp	.label_194
.label_207:
	xor	ebx, ebx
	cmp	eax, 0x12
	sete	bl
	cmp	eax, 0x13
	mov	eax, 1
	mov	r13, -1
	cmove	r13, rax
.label_195:
	mov	rdi, r14
	mov	rdx, rbp
	call	fetch_token
	xor	r14d, r14d
	test	r12, r12
	je	.label_197
	mov	rax, r13
	xor	r14d, r14d
	or	rax, rbx
	je	.label_205
	test	rbx, rbx
	jg	.label_209
.label_192:
	cmp	byte ptr [r12 + 0x30], 0x11
	jne	.label_208
	mov	rdx, qword ptr [r12 + 0x28]
	mov	esi, OFFSET FLAT:mark_opt_subexp
	mov	rdi, r12
	call	postorder
.label_208:
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
	je	.label_198
	lea	rax, [rbx + 2]
	cmp	rax, r13
	jg	.label_201
	inc	rbx
	nop	dword ptr [rax + rax]
.label_202:
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
	je	.label_198
	test	rax, rax
	je	.label_198
	xor	edx, edx
	mov	ecx, 0xa
	mov	rdi, r15
	mov	rsi, rax
	call	create_tree
	mov	rbp, rax
	test	rbp, rbp
	je	.label_198
	inc	rbx
	cmp	rbx, r13
	jl	.label_202
.label_201:
	test	r14, r14
	je	.label_199
	mov	ecx, 0x10
	mov	rdi, r15
	mov	rsi, r14
	mov	rdx, rbp
	call	create_tree
	mov	r14, rax
	jmp	.label_197
.label_191:
	cmp	rbx, -2
	mov	rsi, qword ptr [rsp + 0x10]
	je	.label_190
.label_196:
	mov	al, byte ptr [r14 + 8]
	cmp	al, 0x18
	mov	r13, rbx
	je	.label_203
	cmp	al, 1
	jne	.label_190
	cmp	byte ptr [r14], 0x2c
	jne	.label_190
	mov	rdi, rsi
	mov	rsi, r14
	mov	rdx, qword ptr [rsp + 8]
	call	fetch_number
	mov	rsi, qword ptr [rsp + 0x10]
	mov	r13, rax
	cmp	r13, -2
	je	.label_190
.label_203:
	cmp	r13, -1
	je	.label_193
	cmp	rbx, r13
	jg	.label_194
.label_193:
	cmp	byte ptr [r14 + 8], 0x18
	jne	.label_194
	cmp	r13, -1
	mov	rax, r13
	cmove	rax, rbx
	cmp	rax, 0x8000
	mov	rbp, qword ptr [rsp + 8]
	jl	.label_195
	mov	rax, qword ptr [rsp]
	mov	dword ptr [rax], 0xf
	xor	r14d, r14d
	jmp	.label_197
.label_194:
	mov	rax, qword ptr [rsp]
	mov	dword ptr [rax], 0xa
	xor	r14d, r14d
	jmp	.label_197
.label_199:
	mov	r14, rbp
	jmp	.label_197
.label_190:
	mov	rax, qword ptr [rsp + 8]
	test	eax, 0x200000
	je	.label_204
	mov	rax, qword ptr [rsp + 0x18]
	mov	qword ptr [rsi + 0x48], rax
	movaps	xmm0, xmmword ptr [rsp + 0x20]
	movups	xmmword ptr [r14], xmm0
	mov	byte ptr [r14 + 8], 1
	mov	r14, r12
.label_197:
	mov	rax, r14
	add	rsp, 0x38
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_205:
	mov	esi, OFFSET FLAT:free_tree
	xor	edx, edx
	mov	rdi, r12
	call	postorder
	jmp	.label_197
.label_209:
	cmp	rbx, 1
	jne	.label_200
	mov	r14, r12
	jmp	.label_210
.label_200:
	mov	ebp, 1
	mov	r14, r12
.label_206:
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
	je	.label_198
	test	r14, r14
	je	.label_198
	inc	rbp
	cmp	rbp, rbx
	jl	.label_206
.label_210:
	cmp	rbx, r13
	je	.label_197
	mov	rdi, r12
	mov	rsi, r15
	call	duplicate_tree
	mov	r12, rax
	test	r12, r12
	jne	.label_192
.label_198:
	mov	rax, qword ptr [rsp]
	mov	dword ptr [rax], 0xc
	xor	r14d, r14d
	jmp	.label_197
.label_204:
	xor	eax, eax
	cmp	byte ptr [r14 + 8], 2
	setne	al
	add	eax, 9
	mov	rcx, qword ptr [rsp]
	mov	dword ptr [rcx], eax
	xor	r14d, r14d
	jmp	.label_197
	.section	.text
	.align	32
	#Procedure 0x403bbf
	.globl sub_403bbf
	.type sub_403bbf, @function
sub_403bbf:

	nop	
	.section	.text
	.align	32
	#Procedure 0x403bc0
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
	#Procedure 0x403c09
	.globl sub_403c09
	.type sub_403c09, @function
sub_403c09:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x403c10

	.globl quotearg_n_mem
	.type quotearg_n_mem, @function
quotearg_n_mem:
	mov	ecx, OFFSET FLAT:default_quoting_options
	jmp	quotearg_n_options
	.section	.text
	.align	32
	#Procedure 0x403c1a
	.globl sub_403c1a
	.type sub_403c1a, @function
sub_403c1a:

	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x403c20
	.globl quotearg
	.type quotearg, @function
quotearg:

	mov	rax, rdi
	xor	edi, edi
	mov	rsi, rax
	jmp	quotearg_n
	.section	.text
	.align	32
	#Procedure 0x403c2d
	.globl sub_403c2d
	.type sub_403c2d, @function
sub_403c2d:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x403c30
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
	#Procedure 0x403c40

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
	jle	.label_211
	mov	r12, qword ptr [r15 + 0x98]
	xor	ebx, ebx
	nop	word ptr cs:[rax + rax]
.label_213:
	mov	rax, qword ptr [r13 + 0x10]
	mov	rsi, qword ptr [rax + rbx*8]
	mov	rax, qword ptr [r12]
	mov	rcx, rsi
	shl	rcx, 4
	cmp	byte ptr [rax + rcx + 8], 8
	jne	.label_212
	mov	rax, qword ptr [rax + rcx]
	cmp	rax, 0x3f
	jg	.label_212
	mov	rcx, qword ptr [r12 + 0xa0]
	bt	rcx, rax
	jae	.label_212
	mov	rdi, r15
	mov	rdx, r14
	call	match_ctx_add_subtop
	test	eax, eax
	jne	.label_211
	nop	word ptr cs:[rax + rax]
.label_212:
	inc	rbx
	xor	eax, eax
	cmp	rbx, qword ptr [r13 + 8]
	jl	.label_213
.label_211:
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	ret	
	.section	.text
	.align	32
	#Procedure 0x403cd5
	.globl sub_403cd5
	.type sub_403cd5, @function
sub_403cd5:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x403ce0

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
	jle	.label_214
	mov	r12, qword ptr [rbx + 0x98]
	mov	r13, qword ptr [r14 + 0x18]
	xor	ebx, ebx
	nop	word ptr [rax + rax]
.label_215:
	mov	rbp, qword ptr [r13 + rbx*8]
	mov	rdi, r12
	mov	rsi, rbp
	mov	edx, r15d
	call	check_halt_node_context
	test	al, al
	jne	.label_214
	inc	rbx
	cmp	rbx, qword ptr [r14 + 0x10]
	mov	ebp, 0
	jl	.label_215
.label_214:
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
	#Procedure 0x403d57
	.globl sub_403d57
	.type sub_403d57, @function
sub_403d57:

	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x403d60
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
	#Procedure 0x403d79
	.globl sub_403d79
	.type sub_403d79, @function
sub_403d79:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x403d80

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
	mov	rax,  qword ptr [word ptr [rip + label_216]]
	mov	qword ptr [rbp - 0x70], rax
	movups	xmm0,  xmmword ptr [word ptr [rip + label_217]]
	movaps	xmmword ptr [rbp - 0x80], xmm0
	xor	eax, eax
	test	r8b, r8b
	je	.label_218
	mov	rax, qword ptr [rbp - 0x78]
	shl	rax, 4
	lea	rdi, [rax + rax*2]
	call	malloc
	mov	qword ptr [rbp - 0x70], rax
	mov	r14d, 0xc
	test	rax, rax
	je	.label_220
	lea	rax, [rbp - 0x80]
.label_218:
	mov	qword ptr [rbp - 0x40], rax
	mov	qword ptr [rbp - 0x68], r15
	mov	r15, qword ptr [r15 + 0x90]
	xorps	xmm0, xmm0
	movaps	xmmword ptr [rbp - 0x60], xmm0
	mov	qword ptr [rbp - 0x50], 0
	mov	r14, rbx
	shl	r14, 4
	cmp	r14, 0xfbf
	ja	.label_233
	mov	rdi, rsp
	lea	rax, [r14 + 0xf]
	and	rax, 0xfffffffffffffff0
	sub	rdi, rax
	mov	rsp, rdi
	mov	dword ptr [rbp - 0x2c], 0
	jmp	.label_221
.label_233:
	mov	rdi, r14
	call	malloc
	mov	rdi, rax
	test	rdi, rdi
	je	.label_223
	mov	al, 1
	mov	dword ptr [rbp - 0x2c], eax
.label_221:
	mov	qword ptr [rbp - 0x38], rdi
	mov	rsi, r12
	mov	rdx, r14
	call	memcpy
	mov	r8, qword ptr [r12]
	mov	qword ptr [rbp - 0x48], r8
	cmp	r8, qword ptr [r12 + 8]
	jg	.label_229
	lea	r14, [r12 + 8]
	jmp	.label_232
.label_228:
	cmp	r15, -2
	je	.label_234
	mov	rdi, qword ptr [rbp - 0x40]
	test	rdi, rdi
	je	.label_237
	lea	rsi, [rbp - 0x48]
	mov	rdx, rbx
	mov	rcx, r12
	lea	r8, [rbp - 0x60]
	call	pop_fail_stack
	mov	r15, rax
	jmp	.label_222
	.section	.text
	.align	32
	#Procedure 0x403e9e
	.globl sub_403e9e
	.type sub_403e9e, @function
sub_403e9e:

	nop	
.label_232:
	mov	rdi, qword ptr [rbp - 0x68]
	mov	rsi, r12
	mov	rdx, qword ptr [rbp - 0x38]
	mov	rcx, r15
	mov	r9, rbx
	call	update_regs
	mov	rax, qword ptr [rbp - 0x48]
	cmp	rax, qword ptr [r12 + 8]
	jne	.label_224
	cmp	r15, qword ptr [r13 + 0xb0]
	jne	.label_224
	mov	r15, qword ptr [rbp - 0x40]
	test	r15, r15
	je	.label_227
	test	rbx, rbx
	mov	eax, 0
	je	.label_231
	mov	rcx, r14
	xor	eax, eax
	nop	word ptr cs:[rax + rax]
.label_238:
	cmp	qword ptr [rcx - 8], 0
	js	.label_235
	cmp	qword ptr [rcx], -1
	je	.label_231
.label_235:
	inc	rax
	add	rcx, 0x10
	cmp	rax, rbx
	jb	.label_238
.label_231:
	cmp	rax, rbx
	je	.label_219
	mov	rdi, r15
	lea	rsi, [rbp - 0x48]
	mov	rdx, rbx
	mov	rcx, r12
	lea	r8, [rbp - 0x60]
	call	pop_fail_stack
	mov	r15, rax
.label_224:
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
	js	.label_228
.label_222:
	mov	r8, qword ptr [rbp - 0x48]
	cmp	r8, qword ptr [r12 + 8]
	jle	.label_232
.label_229:
	mov	rdi, qword ptr [rbp - 0x50]
	call	free
	mov	eax, dword ptr [rbp - 0x2c]
	test	al, al
	je	.label_236
	mov	rdi, qword ptr [rbp - 0x38]
	call	free
.label_236:
	mov	rdi, qword ptr [rbp - 0x40]
.label_226:
	call	free_fail_stack_return
	xor	r14d, r14d
	jmp	.label_220
.label_227:
	mov	rdi, qword ptr [rbp - 0x50]
	call	free
	xor	r14d, r14d
.label_230:
	mov	eax, dword ptr [rbp - 0x2c]
	test	al, al
	je	.label_220
	mov	rdi, qword ptr [rbp - 0x38]
	call	free
	jmp	.label_220
.label_219:
	mov	rdi, qword ptr [rbp - 0x50]
	call	free
	mov	eax, dword ptr [rbp - 0x2c]
	test	al, al
	je	.label_225
	mov	rdi, qword ptr [rbp - 0x38]
	call	free
.label_225:
	mov	rdi, r15
	jmp	.label_226
.label_237:
	mov	rdi, qword ptr [rbp - 0x50]
	call	free
	mov	r14d, 1
	jmp	.label_230
.label_234:
	mov	rdi, qword ptr [rbp - 0x50]
	call	free
	mov	eax, dword ptr [rbp - 0x2c]
	test	al, al
	je	.label_223
	mov	rdi, qword ptr [rbp - 0x38]
	call	free
.label_223:
	mov	rdi, qword ptr [rbp - 0x40]
	call	free_fail_stack_return
	mov	r14d, 0xc
.label_220:
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
	#Procedure 0x404018
	.globl sub_404018
	.type sub_404018, @function
sub_404018:

	nop	dword ptr [rax + rax]
.label_241:
	lea	r15, [r14 + 0x18]
	mov	rdx, qword ptr [rbx + 8]
	mov	rdi, r15
	call	memcpy
	mov	qword ptr [r14], r15
.label_240:
	mov	rax, qword ptr [rbx + 8]
	mov	qword ptr [r14 + 8], rax
	mov	al, byte ptr [rbx + 0x10]
	test	al, al
	mov	byte ptr [r14 + 0x10], al
	je	.label_239
	mov	eax, dword ptr [rbx + 0x14]
	mov	dword ptr [r14 + 0x14], eax
.label_239:
	pop	rbx
	pop	r14
	pop	r15
	ret	
	.section	.text
	.align	32
	#Procedure 0x404053
	.globl sub_404053
	.type sub_404053, @function
sub_404053:

	nop	
	.section	.text
	.align	32
	#Procedure 0x404054

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
	je	.label_241
	mov	qword ptr [r14], rax
	jmp	.label_240
	.section	.text
	.align	32
	#Procedure 0x404070
	.globl quotearg_alloc
	.type quotearg_alloc, @function
quotearg_alloc:

	mov	rax, rdx
	xor	edx, edx
	mov	rcx, rax
	jmp	quotearg_alloc_mem
	.section	.text
	.align	32
	#Procedure 0x40407a
	.globl sub_40407a
	.type sub_40407a, @function
sub_40407a:

	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x404080

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
	je	.label_242
	mov	qword ptr [rax], rbx
.label_242:
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
	#Procedure 0x40416c
	.globl sub_40416c
	.type sub_40416c, @function
sub_40416c:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x404170

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
	jle	.label_245
	xor	r12d, r12d
	nop	dword ptr [rax]
.label_247:
	mov	rax, qword ptr [r14 + 0xf8]
	mov	r15, qword ptr [rax + r12*8]
	cmp	qword ptr [r15 + 0x20], 0
	jle	.label_243
	xor	ebx, ebx
	nop	word ptr cs:[rax + rax]
.label_244:
	mov	rax, qword ptr [r15 + 0x28]
	mov	r13, qword ptr [rax + rbx*8]
	mov	rdi, qword ptr [r13 + 0x20]
	call	free
	mov	rdi, r13
	call	free
	inc	rbx
	cmp	rbx, qword ptr [r15 + 0x20]
	jl	.label_244
.label_243:
	mov	rdi, qword ptr [r15 + 0x28]
	call	free
	mov	rax, qword ptr [r15 + 0x10]
	test	rax, rax
	je	.label_246
	mov	rdi, qword ptr [rax + 0x10]
	call	free
	mov	rdi, qword ptr [r15 + 0x10]
	call	free
.label_246:
	mov	rdi, r15
	call	free
	inc	r12
	cmp	r12, qword ptr [r14 + 0xe8]
	jl	.label_247
.label_245:
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
	#Procedure 0x40422a
	.globl sub_40422a
	.type sub_40422a, @function
sub_40422a:

	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x404230

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
	je	.label_257
	mov	rdi, r13
	mov	r12, rcx
	mov	rsi, rcx
	call	re_string_char_size_at
	mov	esi, eax
	cmp	r15d, 5
	jne	.label_271
	xor	eax, eax
	cmp	esi, 2
	jl	.label_251
	test	byte ptr [rbp + 0xd8], 0x40
	jne	.label_272
	mov	rcx, qword ptr [r13 + 8]
	cmp	byte ptr [rcx + r12], 0xa
	je	.label_251
.label_272:
	cmp	byte ptr [rbp + 0xd8], 0
	js	.label_269
	mov	eax, esi
	jmp	.label_251
.label_271:
	cmp	esi, 1
	setg	cl
	xor	eax, eax
	cmp	r15d, 6
	jne	.label_251
	test	cl, cl
	je	.label_251
	mov	rbx, qword ptr [r14 + rbx]
	cmp	qword ptr [rbx + 0x40], 0
	jne	.label_262
	cmp	qword ptr [rbx + 0x48], 0
	jne	.label_262
	xor	r14d, r14d
	cmp	qword ptr [rbx + 0x28], 0
	je	.label_267
.label_262:
	mov	rdi, r13
	mov	ebp, esi
	mov	rsi, r12
	call	re_string_wchar_at
	mov	esi, ebp
	mov	r14d, eax
.label_267:
	cmp	qword ptr [rbx + 0x28], 0
	jle	.label_273
	mov	rax, qword ptr [rbx]
	xor	ecx, ecx
	nop	dword ptr [rax]
.label_266:
	cmp	r14d, dword ptr [rax + rcx*4]
	je	.label_248
	inc	rcx
	cmp	rcx, qword ptr [rbx + 0x28]
	jl	.label_266
.label_273:
	mov	r15d, esi
	cmp	qword ptr [rbx + 0x48], 0
	jle	.label_268
	xor	ebp, ebp
	nop	dword ptr [rax + rax]
.label_259:
	mov	rax, qword ptr [rbx + 0x18]
	mov	rsi, qword ptr [rax + rbp*8]
	mov	edi, r14d
	call	iswctype
	test	eax, eax
	jne	.label_255
	inc	rbp
	cmp	rbp, qword ptr [rbx + 0x48]
	jl	.label_259
.label_268:
	xor	ecx, ecx
	cmp	qword ptr [rbx + 0x40], 0
	mov	esi, r15d
	jle	.label_250
	mov	rax, qword ptr [rbx + 8]
	xor	edx, edx
	nop	
.label_261:
	cmp	dword ptr [rax + rdx*4], r14d
	jg	.label_265
	mov	rcx, qword ptr [rbx + 0x10]
	cmp	r14d, dword ptr [rcx + rdx*4]
	jle	.label_248
.label_265:
	inc	rdx
	xor	ecx, ecx
	cmp	rdx, qword ptr [rbx + 0x40]
	jl	.label_261
	jmp	.label_250
.label_269:
	mov	rcx, qword ptr [r13 + 8]
	cmp	byte ptr [rcx + r12], 0
	je	.label_251
	mov	eax, esi
	jmp	.label_251
.label_255:
	mov	esi, r15d
.label_248:
	mov	ecx, esi
.label_250:
	test	byte ptr [rbx + 0x20], 1
	jne	.label_252
	mov	eax, ecx
	jmp	.label_251
.label_252:
	test	ecx, ecx
	mov	eax, 0
	jg	.label_251
	test	esi, esi
	mov	eax, 1
	cmovg	eax, esi
.label_251:
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_257:
	mov	rsi, qword ptr [r13 + 8]
	mov	dl, byte ptr [rsi + rcx]
	xor	eax, eax
	cmp	dl, 0xc2
	jb	.label_251
	mov	rdi, rcx
	lea	rcx, [rcx + 2]
	cmp	rcx, qword ptr [r13 + 0x58]
	jle	.label_260
	xor	eax, eax
	jmp	.label_251
.label_260:
	mov	cl, byte ptr [rsi + rdi + 1]
	cmp	dl, 0xdf
	ja	.label_263
	cmp	cl, 0xc0
	sbb	edx, edx
	and	edx, 2
	test	cl, cl
	mov	eax, 0
	cmovs	eax, edx
	jmp	.label_251
.label_263:
	cmp	dl, 0xef
	ja	.label_270
	mov	eax, 3
	cmp	dl, 0xe0
	jne	.label_253
	cmp	cl, 0xa0
	jae	.label_253
	xor	eax, eax
	jmp	.label_251
.label_270:
	cmp	dl, 0xf7
	ja	.label_249
	mov	eax, 4
	cmp	dl, 0xf0
	jne	.label_253
	cmp	cl, 0x90
	jae	.label_253
	xor	eax, eax
	jmp	.label_251
.label_249:
	cmp	dl, 0xfb
	ja	.label_254
	mov	eax, 5
	cmp	dl, 0xf8
	jne	.label_253
	cmp	cl, 0x88
	jae	.label_253
	xor	eax, eax
	jmp	.label_251
.label_254:
	cmp	dl, 0xfd
	ja	.label_258
	mov	eax, 6
	cmp	dl, 0xfc
	jne	.label_253
	cmp	cl, 0x84
	jae	.label_253
	xor	eax, eax
	jmp	.label_251
.label_253:
	mov	ecx, eax
	lea	rdx, [rcx + rdi]
	cmp	rdx, qword ptr [r13 + 0x58]
	jle	.label_264
	xor	eax, eax
	jmp	.label_251
.label_264:
	add	rdi, qword ptr [r13 + 8]
	mov	edx, 1
.label_256:
	movzx	ebx, byte ptr [rdi + rdx]
	test	bl, bl
	jns	.label_258
	cmp	bl, 0xbf
	ja	.label_258
	inc	rdx
	cmp	rdx, rcx
	jl	.label_256
	jmp	.label_251
.label_258:
	xor	eax, eax
	jmp	.label_251
	.section	.text
	.align	32
	#Procedure 0x40448c
	.globl sub_40448c
	.type sub_40448c, @function
sub_40448c:

	nop	dword ptr [rax]
.label_275:
	mov	ecx, 1
.label_274:
	mov	rdi, rcx
	mov	rsi, rax
	jmp	calloc
	.section	.text
	.align	32
	#Procedure 0x4044a0
	.globl sub_4044a0
	.type sub_4044a0, @function
sub_4044a0:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4044a5

	.globl rpl_calloc
	.type rpl_calloc, @function
rpl_calloc:
	test	rdi, rdi
	mov	eax, 1
	je	.label_275
	test	rsi, rsi
	mov	ecx, 1
	je	.label_274
	mov	rax, rsi
	imul	rax, rdi
	xor	edx, edx
	div	rsi
	cmp	rax, rdi
	mov	rax, rsi
	mov	rcx, rdi
	je	.label_274
	push	rax
	call	__errno_location
	mov	dword ptr [rax], 0xc
	xor	eax, eax
	pop	rcx
	ret	
	.section	.text
	.align	32
	#Procedure 0x4044e0

	.globl quotearg_n
	.type quotearg_n, @function
quotearg_n:
	mov	rdx, -1
	mov	ecx, OFFSET FLAT:default_quoting_options
	jmp	quotearg_n_options
	.section	.text
	.align	32
	#Procedure 0x4044ee
	.globl sub_4044ee
	.type sub_4044ee, @function
sub_4044ee:

	nop	
	.section	.text
	.align	32
	#Procedure 0x4044f0

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
	js	.label_279
	mov	eax, dword ptr [r13]
	mov	rbp,  qword ptr [word ptr [rip + slotvec]]
	cmp	dword ptr [dword ptr [rip + nslots]],  r12d
	mov	qword ptr [rsp + 0x18], r13
	mov	dword ptr [rsp], eax
	mov	qword ptr [rsp + 0x10], rbx
	mov	qword ptr [rsp + 8], r15
	jg	.label_282
	cmp	r12d, 0x7fffffff
	je	.label_277
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
	jne	.label_280
	movups	xmm0,  xmmword ptr [word ptr [rip + slotvec0]]
	movups	xmmword ptr [r14], xmm0
.label_280:
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
.label_282:
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
	jbe	.label_278
	mov	rax, qword ptr [rsp + 0x18]
	mov	ebp, dword ptr [rsp]
	jmp	.label_281
.label_278:
	lea	rax, [rbp + r13]
	lea	r12, [rbp + r13 + 8]
	inc	r15
	mov	qword ptr [rax], r15
	mov	eax, OFFSET FLAT:slot0
	cmp	r14, rax
	mov	ebp, dword ptr [rsp]
	je	.label_276
	mov	rdi, r14
	call	free
.label_276:
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
.label_281:
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
.label_279:
	call	abort
.label_277:
	call	xalloc_die
	.section	.text
	.align	32
	#Procedure 0x4046ad
	.globl sub_4046ad
	.type sub_4046ad, @function
sub_4046ad:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x4046b0

	.globl re_string_realloc_buffers
	.type re_string_realloc_buffers, @function
re_string_realloc_buffers:
	push	rbp
	push	r14
	push	rbx
	mov	r14, rsi
	mov	rbx, rdi
	cmp	dword ptr [rbx + 0x90], 2
	jl	.label_284
	mov	rax, r14
	shr	rax, 0x3d
	mov	ebp, 0xc
	jne	.label_283
	mov	rdi, qword ptr [rbx + 0x10]
	lea	rsi, [r14*4]
	call	realloc
	test	rax, rax
	je	.label_283
	mov	qword ptr [rbx + 0x10], rax
	mov	rdi, qword ptr [rbx + 0x18]
	test	rdi, rdi
	je	.label_284
	lea	rsi, [r14*8]
	call	realloc
	test	rax, rax
	je	.label_283
	mov	qword ptr [rbx + 0x18], rax
.label_284:
	cmp	byte ptr [rbx + 0x8b], 0
	je	.label_285
	mov	rdi, qword ptr [rbx + 8]
	mov	rsi, r14
	call	realloc
	mov	ebp, 0xc
	test	rax, rax
	je	.label_283
	mov	qword ptr [rbx + 8], rax
.label_285:
	mov	qword ptr [rbx + 0x40], r14
	xor	ebp, ebp
.label_283:
	mov	eax, ebp
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40473a
	.globl sub_40473a
	.type sub_40473a, @function
sub_40473a:

	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x404740

	.globl emit_ancillary_info
	.type emit_ancillary_info, @function
emit_ancillary_info:
	push	r14
	push	rbx
	push	rax
	mov	ebx, OFFSET FLAT:emit_ancillary_info.infomap
	mov	esi, OFFSET FLAT:label_286
	nop	
.label_298:
	mov	edi, OFFSET FLAT:label_290
	call	strcmp
	test	eax, eax
	je	.label_296
	mov	rsi, qword ptr [rbx + 0x10]
	add	rbx, 0x10
	test	rsi, rsi
	jne	.label_298
.label_296:
	mov	rax, qword ptr [rbx + 8]
	test	rax, rax
	mov	ebx, OFFSET FLAT:label_290
	cmovne	rbx, rax
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_291
	mov	edx, 5
	call	dcgettext
	mov	rsi, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:label_288
	mov	ecx, OFFSET FLAT:label_289
	xor	eax, eax
	call	__printf_chk
	mov	edi, 5
	xor	esi, esi
	call	setlocale
	test	rax, rax
	je	.label_287
	mov	esi, OFFSET FLAT:label_295
	mov	edx, 3
	mov	rdi, rax
	call	strncmp
	test	eax, eax
	je	.label_287
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_294
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	call	fputs_unlocked
.label_287:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_292
	mov	edx, 5
	call	dcgettext
	mov	rsi, rax
	mov	r14d, OFFSET FLAT:label_290
	mov	edi, 1
	mov	edx, OFFSET FLAT:label_289
	mov	ecx, OFFSET FLAT:label_290
	xor	eax, eax
	call	__printf_chk
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_297
	mov	edx, 5
	call	dcgettext
	mov	rdx, rax
	cmp	rbx, r14
	mov	eax, OFFSET FLAT:label_293
	mov	ecx, OFFSET FLAT:label_56
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
	#Procedure 0x40485a
	.globl sub_40485a
	.type sub_40485a, @function
sub_40485a:

	nop	word ptr [rax + rax]
.label_302:
	mov	rbx, -2
.label_300:
	mov	rax, rbx
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	ret	
	.section	.text
	.align	32
	#Procedure 0x404874
	.globl sub_404874
	.type sub_404874, @function
sub_404874:

	nop	word ptr [rax + rax]
.label_299:
	lea	rcx, [rbx + rbx*4]
	lea	rcx, [rax + rcx*2 - 0x30]
	cmp	rcx, 0x8000
	cmovg	rcx, r13
	nop	word ptr cs:[rax + rax]
.label_301:
	mov	rbx, rcx
	mov	rdi, r12
	mov	rsi, r15
	mov	rdx, r14
	call	fetch_token
	movzx	eax, byte ptr [r12]
	movzx	edx, byte ptr [r12 + 8]
	cmp	dl, 0x18
	je	.label_300
	cmp	dl, 2
	je	.label_302
	cmp	al, 0x2c
	je	.label_300
	cmp	al, 0x30
	mov	rcx, -2
	jb	.label_301
	cmp	edx, 1
	jne	.label_301
	cmp	rbx, -2
	je	.label_301
	cmp	al, 0x39
	ja	.label_301
	cmp	rbx, -1
	jne	.label_299
	add	rax, -0x30
	mov	rcx, rax
	jmp	.label_301
	.section	.text
	.align	32
	#Procedure 0x4048ef

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
	jmp	.label_301
.label_304:
	mov	qword ptr [rbx + 0x18], rbx
	mov	rsi, qword ptr [rbx + 0x28]
	mov	rdx, qword ptr [rbx + 0x30]
	mov	rdi, r14
	call	re_dfa_add_node
	mov	rcx, rax
	mov	qword ptr [rbx + 0x38], rcx
	mov	eax, 0xc
	cmp	rcx, -1
	je	.label_303
	xor	eax, eax
	cmp	byte ptr [rbx + 0x30], 0xc
	jne	.label_303
	mov	edx, dword ptr [rbx + 0x28]
	mov	rsi, qword ptr [r14]
	shl	rcx, 4
	shl	edx, 8
	and	edx, 0x3ff00
	mov	edi, 0xfffc00ff
	and	edi, dword ptr [rsi + rcx + 8]
	or	edi, edx
	mov	dword ptr [rsi + rcx + 8], edi
.label_303:
	add	rsp, 8
	pop	rbx
	pop	r14
	ret	
	.section	.text
	.align	32
	#Procedure 0x404968
	.globl sub_404968
	.type sub_404968, @function
sub_404968:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x404974

	.globl calc_first
	.type calc_first, @function
calc_first:
	push	r14
	push	rbx
	push	rax
	mov	rbx, rsi
	mov	r14, rdi
	cmp	byte ptr [rbx + 0x30], 0x10
	jne	.label_304
	mov	rax, qword ptr [rbx + 8]
	mov	rax, qword ptr [rax + 0x18]
	mov	qword ptr [rbx + 0x18], rax
	mov	rax, qword ptr [rbx + 8]
	mov	rax, qword ptr [rax + 0x38]
	mov	qword ptr [rbx + 0x38], rax
	xor	eax, eax
	jmp	.label_303
	.section	.text
	.align	32
	#Procedure 0x4049a0

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
	jle	.label_314
.label_316:
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
	jne	.label_319
	lea	rdi, [rsp + 0x10]
	mov	rsi, r14
	call	re_node_set_init_1
	mov	r15d, eax
	mov	dword ptr [rsp + 4], r15d
	test	r15d, r15d
	jne	.label_311
	lea	rsi, [rsp + 0x10]
	mov	rdi, qword ptr [rsp + 0x30]
	mov	rdx, qword ptr [rsp + 0x38]
	mov	ecx, dword ptr [rsp + 0xa0]
	call	check_arrival_expand_ecl
	mov	dword ptr [rsp + 4], eax
	test	eax, eax
	je	.label_308
	jmp	.label_307
.label_319:
	mov	rax, qword ptr [rsp + 8]
	mov	rax, qword ptr [rax + 0xb8]
	mov	r14, qword ptr [rax + rbx*8]
	test	r14, r14
	je	.label_312
	test	byte ptr [r14 + 0x68], 0x40
	jne	.label_305
	xorps	xmm0, xmm0
	movaps	xmmword ptr [rsp + 0x10], xmm0
	mov	qword ptr [rsp + 0x20], 0
	jmp	.label_315
.label_312:
	xorps	xmm0, xmm0
	movaps	xmmword ptr [rsp + 0x10], xmm0
	mov	qword ptr [rsp + 0x20], 0
	xor	r14d, r14d
	jmp	.label_318
.label_305:
	lea	rsi, [r14 + 8]
	lea	rdi, [rsp + 0x10]
	call	re_node_set_init_copy
	mov	r15d, eax
	mov	dword ptr [rsp + 4], r15d
	test	r15d, r15d
	jne	.label_311
.label_315:
	test	byte ptr [r14 + 0x68], 0x40
	je	.label_318
.label_308:
	cmp	qword ptr [rsp + 0x18], 0
	je	.label_306
	lea	rsi, [rsp + 0x10]
	mov	rdi, qword ptr [rsp + 8]
	mov	rdx, rbx
	mov	rcx, qword ptr [rsp + 0x38]
	mov	r8d, dword ptr [rsp + 0xa0]
	call	expand_bkref_cache
	mov	dword ptr [rsp + 4], eax
	test	eax, eax
	jne	.label_307
.label_306:
	lea	rdi, [rsp + 4]
	lea	rdx, [rsp + 0x10]
	mov	rsi, qword ptr [rsp + 0x30]
	mov	ecx, ebp
	call	re_acquire_state_context
	mov	r14, rax
	test	r14, r14
	jne	.label_320
	mov	eax, dword ptr [rsp + 4]
	test	eax, eax
	jne	.label_307
.label_320:
	mov	rax, qword ptr [rsp + 8]
	mov	rax, qword ptr [rax + 0xb8]
	mov	qword ptr [rax + rbx*8], r14
.label_318:
	cmp	rbx, qword ptr [rsp + 0x28]
	jge	.label_310
	inc	rbx
	lea	r12, [rsp + 0x10]
	mov	r15, rbx
	xor	r13d, r13d
	mov	rbp, qword ptr [rsp + 0x38]
	nop	
.label_313:
	lea	rbx, [r15 - 1]
	mov	rax, qword ptr [rsp + 8]
	movsxd	rax, dword ptr [rax + 0xe0]
	cmp	r13, rax
	jg	.label_310
	mov	qword ptr [rsp + 0x18], 0
	mov	rax, qword ptr [rsp + 8]
	mov	rax, qword ptr [rax + 0xb8]
	mov	rsi, qword ptr [rax + r15*8]
	test	rsi, rsi
	je	.label_323
	add	rsi, 8
	mov	rdi, r12
	call	re_node_set_merge
	mov	dword ptr [rsp + 4], eax
	test	eax, eax
	jne	.label_307
.label_323:
	test	r14, r14
	je	.label_322
	add	r14, 0x20
	mov	rdi, qword ptr [rsp + 8]
	mov	rsi, rbx
	mov	rdx, r14
	mov	rcx, r12
	call	check_arrival_add_next_nodes
	mov	dword ptr [rsp + 4], eax
	test	eax, eax
	jne	.label_307
.label_322:
	cmp	qword ptr [rsp + 0x18], 0
	je	.label_317
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
	jne	.label_307
	mov	rdi, r14
	mov	rsi, r12
	mov	rdx, r15
	mov	rcx, rbp
	mov	r8d, ebx
	call	expand_bkref_cache
	mov	dword ptr [rsp + 4], eax
	test	eax, eax
	mov	rbx, qword ptr [rsp + 0x60]
	jne	.label_307
.label_317:
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
	jne	.label_309
	mov	eax, dword ptr [rsp + 4]
	test	eax, eax
	jne	.label_307
.label_309:
	inc	r13
	test	r14, r14
	mov	rax, qword ptr [rsp + 8]
	mov	rax, qword ptr [rax + 0xb8]
	mov	qword ptr [rax + r15*8], r14
	mov	eax, 0
	cmovne	r13, rax
	cmp	r15, qword ptr [rsp + 0x28]
	lea	r15, [r15 + 1]
	jl	.label_313
	dec	r15
	mov	rbx, r15
.label_310:
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
	je	.label_321
	add	rdi, 8
	mov	rsi, qword ptr [rsp + 0x48]
	call	re_node_set_contains
	xor	r15d, r15d
	test	rax, rax
	jne	.label_311
.label_321:
	mov	r15d, 1
.label_311:
	mov	eax, r15d
	add	rsp, 0x68
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_307:
	mov	rdi, qword ptr [rsp + 0x20]
	call	free
	mov	r15d, dword ptr [rsp + 4]
	jmp	.label_311
.label_314:
	movabs	rdx, 0x7fffffffffffffff
	sub	rdx, rbp
	mov	r15d, 0xc
	cmp	rdx, rcx
	jle	.label_311
	mov	rcx, qword ptr [rsp + 0x28]
	lea	r12, [rax + rcx + 1]
	lea	rbx, [r12 + rbp]
	mov	rax, rbx
	shr	rax, 0x3d
	jne	.label_311
	mov	rdi, qword ptr [rsi + 0x10]
	lea	rsi, [rbx*8]
	call	realloc
	test	rax, rax
	je	.label_311
	mov	r15, qword ptr [rsp + 0x40]
	mov	qword ptr [r15 + 0x10], rax
	mov	qword ptr [r15 + 8], rbx
	lea	rdi, [rax + rbp*8]
	shl	r12, 3
	xor	esi, esi
	mov	rdx, r12
	call	memset
	mov	rsi, r15
	jmp	.label_316
	.section	.text
	.align	32
	#Procedure 0x404dbe
	.globl sub_404dbe
	.type sub_404dbe, @function
sub_404dbe:

	nop	
	.section	.text
	.align	32
	#Procedure 0x404dc0

	.globl quote_n_mem
	.type quote_n_mem, @function
quote_n_mem:
	mov	ecx, OFFSET FLAT:quote_quoting_options
	jmp	quotearg_n_options
	.section	.text
	.align	32
	#Procedure 0x404dca
	.globl sub_404dca
	.type sub_404dca, @function
sub_404dca:

	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x404dd0
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
	#Procedure 0x404de0

	.globl quote_n
	.type quote_n, @function
quote_n:
	mov	rdx, -1
	jmp	quote_n_mem
	.section	.text
	.align	32
	#Procedure 0x404de9
	.globl sub_404de9
	.type sub_404de9, @function
sub_404de9:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x404df0
	.globl quote
	.type quote, @function
quote:

	mov	rax, rdi
	xor	edi, edi
	mov	rsi, rax
	jmp	quote_n
	.section	.text
	.align	32
	#Procedure 0x404dfa
	.globl sub_404dfa
	.type sub_404dfa, @function
sub_404dfa:

	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x404e00

	.globl mark_opt_subexp
	.type mark_opt_subexp, @function
mark_opt_subexp:
	mov	eax, dword ptr [rsi + 0x30]
	cmp	al, 0x11
	jne	.label_324
	cmp	qword ptr [rsi + 0x28], rdi
	jne	.label_324
	or	eax, 0x80000
	mov	dword ptr [rsi + 0x30], eax
.label_324:
	xor	eax, eax
	ret	
	.section	.text
	.align	32
	#Procedure 0x404e18
	.globl sub_404e18
	.type sub_404e18, @function
sub_404e18:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x404e20

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
	jle	.label_340
	xor	r15d, r15d
	mov	qword ptr [rsp + 0x48], rbx
	mov	qword ptr [rsp], rbp
	mov	qword ptr [rsp + 0x58], r13
	nop	dword ptr [rax + rax]
.label_332:
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
	jne	.label_349
	movzx	esi, byte ptr [rbp]
	lea	rdi, [rsp + 0x20]
	call	bitset_set
.label_336:
	shr	r15d, 8
	mov	eax, r15d
	and	eax, 0x3ff
	je	.label_333
	test	r15b, 0x20
	je	.label_363
	mov	esi, 0xa
	lea	rbp, [rsp + 0x20]
	mov	rdi, rbp
	call	bitset_contain
	mov	r13d, eax
	mov	rdi, rbp
	call	bitset_empty
	test	r13b, r13b
	je	.label_368
	mov	esi, 0xa
	mov	rdi, rbp
	call	bitset_set
	mov	r13, qword ptr [rsp + 0x58]
	mov	rbp, qword ptr [rsp + 0x18]
.label_363:
	test	r15b, r15b
	js	.label_325
	lea	rax, [r14 + rbx + 8]
	test	r15b, 4
	je	.label_328
	cmp	dword ptr [rsp + 0x14], 1
	jne	.label_331
	test	byte ptr [rax + 2], 0x40
	je	.label_325
.label_331:
	mov	rbp, qword ptr [rsp]
	cmp	dword ptr [rbp + 0xb4], 1
	jle	.label_334
	mov	rdx, qword ptr [rbp + 0x78]
	xor	ecx, ecx
	xor	esi, esi
	nop	dword ptr [rax]
.label_341:
	mov	rdi, qword ptr [rdx + rsi*8]
	not	rdi
	or	rdi, qword ptr [rbp + rsi*8 + 0xb8]
	and	rdi, qword ptr [rsp + rsi*8 + 0x20]
	mov	qword ptr [rsp + rsi*8 + 0x20], rdi
	or	rcx, rdi
	inc	rsi
	cmp	rsi, 4
	jne	.label_341
	jmp	.label_350
	.section	.text
	.align	32
	#Procedure 0x404f7a
	.globl sub_404f7a
	.type sub_404f7a, @function
sub_404f7a:

	nop	word ptr [rax + rax]
.label_349:
	cmp	r15b, 7
	je	.label_352
	cmp	r15b, 5
	je	.label_354
	cmp	r15b, 3
	jne	.label_335
	mov	rsi, qword ptr [rbp]
	lea	rdi, [rsp + 0x20]
	call	bitset_merge
	jmp	.label_336
.label_368:
	mov	rbp, qword ptr [rsp]
	mov	r15, qword ptr [rsp + 8]
	mov	r13, qword ptr [rsp + 0x58]
	jmp	.label_330
.label_352:
	pcmpeqd	xmm0, xmm0
	movdqa	xmmword ptr [rsp + 0x20], xmm0
	mov	rax, qword ptr [rsp]
	test	byte ptr [rax + 0xd8], 0x40
	jne	.label_360
	mov	esi, 0xa
	lea	rdi, [rsp + 0x20]
	call	bitset_clear
.label_360:
	mov	rax, qword ptr [rsp]
	cmp	byte ptr [rax + 0xd8], 0
	jns	.label_336
	jmp	.label_369
.label_354:
	mov	rbp, qword ptr [rsp]
	cmp	dword ptr [rbp + 0xb4], 2
	jl	.label_370
	mov	rsi, qword ptr [rbp + 0x78]
	lea	rdi, [rsp + 0x20]
	call	bitset_merge
	jmp	.label_346
.label_370:
	lea	rdi, [rsp + 0x20]
	call	bitset_set_all
.label_346:
	test	byte ptr [rbp + 0xd8], 0x40
	jne	.label_329
	mov	esi, 0xa
	lea	rdi, [rsp + 0x20]
	call	bitset_clear
.label_329:
	mov	rax, qword ptr [rsp]
	cmp	byte ptr [rax + 0xd8], 0
	mov	rbp, qword ptr [rsp + 0x18]
	jns	.label_336
.label_369:
	xor	esi, esi
	lea	rdi, [rsp + 0x20]
	call	bitset_clear
	jmp	.label_336
.label_334:
	xor	ecx, ecx
	xor	edx, edx
	nop	
.label_345:
	mov	rsi, qword ptr [rsp + rdx*8 + 0x20]
	and	rsi, qword ptr [rbp + rdx*8 + 0xb8]
	mov	qword ptr [rsp + rdx*8 + 0x20], rsi
	or	rcx, rsi
	inc	rdx
	cmp	rdx, 4
	jne	.label_345
.label_350:
	test	rcx, rcx
	mov	rbp, qword ptr [rsp + 0x18]
	je	.label_335
.label_328:
	test	r15b, 8
	je	.label_333
	cmp	dword ptr [rsp + 0x14], 1
	jne	.label_355
	test	byte ptr [rax + 2], 0x40
	jne	.label_325
.label_355:
	mov	rdi, qword ptr [rsp]
	cmp	dword ptr [rdi + 0xb4], 1
	jle	.label_356
	mov	rcx, qword ptr [rdi + 0x78]
	xor	eax, eax
	xor	edx, edx
	nop	word ptr cs:[rax + rax]
.label_353:
	mov	rsi, qword ptr [rcx + rdx*8]
	and	rsi, qword ptr [rdi + rdx*8 + 0xb8]
	not	rsi
	and	rsi, qword ptr [rsp + rdx*8 + 0x20]
	mov	qword ptr [rsp + rdx*8 + 0x20], rsi
	or	rax, rsi
	inc	rdx
	cmp	rdx, 4
	jne	.label_353
	jmp	.label_367
	.section	.text
	.align	32
	#Procedure 0x4050e7
	.globl sub_4050e7
	.type sub_4050e7, @function
sub_4050e7:

	nop	word ptr [rax + rax]
.label_325:
	lea	rdi, [rsp + 0x20]
	call	bitset_empty
.label_335:
	mov	rbp, qword ptr [rsp]
	mov	r15, qword ptr [rsp + 8]
	jmp	.label_330
.label_356:
	xor	eax, eax
	xor	ecx, ecx
	nop	dword ptr [rax]
.label_348:
	mov	rdx, qword ptr [rdi + rcx*8 + 0xb8]
	not	rdx
	and	rdx, qword ptr [rsp + rcx*8 + 0x20]
	mov	qword ptr [rsp + rcx*8 + 0x20], rdx
	or	rax, rdx
	inc	rcx
	cmp	rcx, 4
	jne	.label_348
.label_367:
	test	rax, rax
	je	.label_335
	nop	word ptr cs:[rax + rax]
.label_333:
	test	r12, r12
	jle	.label_337
	mov	rbx, qword ptr [rsp + 0x50]
	xor	r14d, r14d
	mov	r15, qword ptr [rsp + 8]
	jmp	.label_338
.label_337:
	xor	r14d, r14d
	mov	r15, qword ptr [rsp + 8]
	jmp	.label_342
.label_344:
	mov	r15, qword ptr [rsp + 8]
	jmp	.label_339
	.section	.text
	.align	32
	#Procedure 0x40516b
	.globl sub_40516b
	.type sub_40516b, @function
sub_40516b:

	nop	dword ptr [rax + rax]
.label_338:
	cmp	dword ptr [rsp + 0x14], 1
	jne	.label_358
	mov	rdi, r14
	shl	rdi, 5
	add	rdi, qword ptr [rsp + 0x50]
	movzx	esi, byte ptr [rbp]
	call	bitset_contain
	mov	ecx, 0x13
	test	al, al
	je	.label_361
.label_358:
	mov	rcx, rbx
	xor	eax, eax
	xor	edx, edx
.label_357:
	mov	rsi, qword ptr [rcx]
	and	rsi, qword ptr [rsp + rdx*8 + 0x20]
	mov	qword ptr [rsp + rdx*8 + 0x80], rsi
	or	rax, rsi
	inc	rdx
	add	rcx, 8
	cmp	rdx, 4
	jne	.label_357
	mov	ecx, 0x13
	test	rax, rax
	je	.label_361
	xor	ebp, ebp
	xor	eax, eax
	xor	ecx, ecx
	nop	word ptr cs:[rax + rax]
.label_366:
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
	jne	.label_366
	test	rax, rax
	je	.label_351
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
	jne	.label_344
	inc	r12
	mov	r15, qword ptr [rsp + 8]
.label_351:
	lea	rax, [r14 + r14*2]
	mov	rcx, qword ptr [rsp + 0x48]
	lea	rdi, [rcx + rax*8]
	mov	rax, qword ptr [r13 + 0x18]
	mov	rsi, qword ptr [rax + r15*8]
	call	re_node_set_insert
	mov	ecx, 0x1a
	test	al, al
	je	.label_339
	test	rbp, rbp
	mov	ecx, 0
	mov	eax, 0x11
	cmove	ecx, eax
.label_339:
	mov	rbp, qword ptr [rsp + 0x18]
.label_361:
	mov	eax, ecx
	and	al, 0x1f
	je	.label_326
	cmp	al, 0x13
	jne	.label_359
.label_326:
	inc	r14
	add	rbx, 0x20
	cmp	r14, r12
	jl	.label_338
	jmp	.label_342
.label_359:
	cmp	al, 0x11
	jne	.label_364
	nop	dword ptr [rax]
.label_342:
	cmp	r14, r12
	jne	.label_365
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
	jne	.label_327
	inc	r12
	mov	rdi, r14
	call	bitset_empty
	jmp	.label_330
.label_364:
	and	cl, 0x1f
	jne	.label_362
.label_365:
	mov	rbp, qword ptr [rsp]
.label_330:
	inc	r15
	cmp	r15, qword ptr [r13 + 0x10]
	jl	.label_332
.label_340:
	mov	rax, r12
	add	rsp, 0xa8
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_362:
	cmp	cl, 0x1a
	mov	rbx, qword ptr [rsp + 0x48]
	jne	.label_340
.label_327:
	test	r12, r12
	jle	.label_343
	add	rbx, 0x10
	nop	
.label_347:
	mov	rdi, qword ptr [rbx]
	call	free
	add	rbx, 0x18
	dec	r12
	jne	.label_347
.label_343:
	mov	r12, -1
	jmp	.label_340
	.section	.text
	.align	32
	#Procedure 0x40537a
	.globl sub_40537a
	.type sub_40537a, @function
sub_40537a:

	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x405380

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
	je	.label_371
	mov	ebx, 0xffffffff
	test	eax, eax
	jne	.label_372
	call	__errno_location
	mov	dword ptr [rax], 0
	jmp	.label_372
.label_371:
	test	eax, eax
	sete	cl
	neg	eax
	sbb	ebx, ebx
	test	r14, r14
	jne	.label_372
	test	cl, cl
	jne	.label_372
	call	__errno_location
	xor	ecx, ecx
	cmp	dword ptr [rax], 9
	mov	ebx, 0xffffffff
	cmove	ebx, ecx
.label_372:
	mov	eax, ebx
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x4053e6
	.globl sub_4053e6
	.type sub_4053e6, @function
sub_4053e6:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4053f0

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
	jle	.label_377
	lea	rsi, [r15 + 1]
	mov	rdi, rbx
	call	re_string_realloc_buffers
	test	eax, eax
	jne	.label_375
.label_377:
	cmp	byte ptr [rbx + 0x8b], 0
	je	.label_379
	mov	rbp, qword ptr [rbx + 8]
.label_379:
	mov	qword ptr [rbx + 8], rbp
	mov	eax, dword ptr [r14 + 0xb4]
	test	r13b, r13b
	je	.label_381
	cmp	eax, 2
	jl	.label_376
	nop	
.label_374:
	mov	rdi, rbx
	call	build_wcs_upper_buffer
	test	eax, eax
	jne	.label_375
	xor	eax, eax
	cmp	qword ptr [rbx + 0x38], r15
	jge	.label_375
	mov	rsi, qword ptr [rbx + 0x40]
	movsxd	rcx, dword ptr [r14 + 0xb4]
	add	rcx, qword ptr [rbx + 0x30]
	cmp	rsi, rcx
	jg	.label_375
	add	rsi, rsi
	mov	rdi, rbx
	call	re_string_realloc_buffers
	test	eax, eax
	je	.label_374
	jmp	.label_375
.label_373:
	test	r12, r12
	je	.label_380
	mov	rdi, rbx
	call	re_string_translate_buffer
	jmp	.label_378
.label_376:
	mov	rdi, rbx
	call	build_upper_buffer
	jmp	.label_378
.label_380:
	mov	rax, qword ptr [rbx + 0x40]
	mov	qword ptr [rbx + 0x30], rax
	mov	qword ptr [rbx + 0x38], rax
.label_378:
	xor	eax, eax
.label_375:
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
	#Procedure 0x4054ff
	.globl sub_4054ff
	.type sub_4054ff, @function
sub_4054ff:

	nop	
.label_381:
	cmp	eax, 2
	jl	.label_373
	mov	rdi, rbx
	call	build_wcs_buffer
	jmp	.label_378
	.section	.text
	.align	32
	#Procedure 0x405510

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
	ja	.label_382
	jmp	qword ptr [word ptr [+ (rcx * 8) + label_390]]
.label_2042:
	cmp	byte ptr [rbx], sil
	je	.label_383
	xor	eax, eax
	jmp	.label_382
.label_2043:
	mov	rdi, qword ptr [rbx]
	call	bitset_contain
	test	al, al
	jne	.label_383
	xor	eax, eax
	jmp	.label_382
.label_2045:
	test	sil, sil
	js	.label_388
.label_2044:
	test	sil, sil
	je	.label_389
	cmp	sil, 0xa
	jne	.label_383
	mov	rax, qword ptr [r15 + 0x98]
	test	byte ptr [rax + 0xd8], 0x40
	jne	.label_383
	xor	eax, eax
	jmp	.label_382
.label_389:
	mov	rax, qword ptr [r15 + 0x98]
	cmp	byte ptr [rax + 0xd8], 0
	js	.label_385
.label_383:
	mov	ecx, dword ptr [rbx + 8]
	mov	ebx, ecx
	shr	ebx, 8
	mov	al, 1
	test	bx, 0x3ff
	je	.label_382
	mov	ebp, ecx
	mov	edx, dword ptr [r15 + 0xa0]
	mov	rdi, r15
	mov	rsi, r14
	call	re_string_context_at
	mov	ecx, eax
	and	ecx, 1
	test	bl, 4
	je	.label_384
	test	ecx, ecx
	jne	.label_384
	xor	eax, eax
	jmp	.label_382
.label_384:
	mov	edx, ebp
	test	dh, 8
	je	.label_386
	test	ecx, ecx
	je	.label_386
.label_388:
	xor	eax, eax
	jmp	.label_382
.label_386:
	test	dh, 0x20
	je	.label_387
	mov	ecx, eax
	and	ecx, 2
	jne	.label_387
.label_385:
	xor	eax, eax
	jmp	.label_382
.label_387:
	and	eax, 8
	test	bl, bl
	setns	cl
	shr	eax, 3
	or	al, cl
.label_382:
	add	rsp, 8
	pop	rbx
	pop	r14
	pop	r15
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x405604
	.globl sub_405604
	.type sub_405604, @function
sub_405604:

	nop	word ptr cs:[rax + rax]
.label_393:
	call	abort
	.section	.text
	.align	32
	#Procedure 0x405615
	.globl sub_405615
	.type sub_405615, @function
sub_405615:

	nop	word ptr cs:[rax + rax]
.label_392:
	xor	r14d, r14d
.label_391:
	mov	eax, r14d
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40562a

	.globl toarith
	.type toarith, @function
toarith:
	push	rbp
	push	r14
	push	rbx
	mov	rbx, rdi
	mov	eax, dword ptr [rbx]
	mov	r14b, 1
	test	eax, eax
	je	.label_391
	cmp	eax, 1
	jne	.label_393
	mov	rbp, qword ptr [rbx + 8]
	mov	rdi, rbp
	call	looks_like_integer
	test	al, al
	je	.label_392
	lea	rdi, [rbx + 8]
	mov	edx, 0xa
	mov	rsi, rbp
	call	__gmpz_init_set_str
	mov	rdi, rbp
	call	free
	mov	dword ptr [rbx], 0
	jmp	.label_391
.label_394:
	call	xalloc_die
	.section	.text
	.align	32
	#Procedure 0x405675

	.globl x2nrealloc
	.type x2nrealloc, @function
x2nrealloc:
	push	rax
	mov	r8, rdx
	mov	rcx, qword ptr [rsi]
	test	rdi, rdi
	je	.label_395
	movabs	rax, 0x5555555555555554
	xor	edx, edx
	div	r8
	cmp	rax, rcx
	jbe	.label_394
	mov	rax, rcx
	shr	rax, 1
	lea	rcx, [rcx + rax + 1]
	jmp	.label_398
.label_396:
	call	xalloc_die
	.section	.text
	.align	32
	#Procedure 0x4056a7
	.globl sub_4056a7
	.type sub_4056a7, @function
sub_4056a7:

	nop	dword ptr [rax]
.label_395:
	test	rcx, rcx
	jne	.label_397
	mov	eax, 0x80
	xor	edx, edx
	div	r8
	xor	ecx, ecx
	cmp	r8, 0x80
	seta	cl
	add	rcx, rax
.label_397:
	movabs	rax, 0x7fffffffffffffff
	xor	edx, edx
	div	r8
	cmp	rax, rcx
	jb	.label_396
.label_398:
	mov	qword ptr [rsi], rcx
	imul	r8, rcx
	mov	rsi, r8
	pop	rax
	jmp	xrealloc
.label_401:
	mov	rdi, r14
	mov	rsi, r12
	call	r15
	test	eax, eax
	mov	rbx, r12
	je	.label_403
.label_400:
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	ret	
	.section	.text
	.align	32
	#Procedure 0x40570c
	.globl sub_40570c
	.type sub_40570c, @function
sub_40570c:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x405710

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
	jne	.label_400
	nop	
.label_403:
	mov	r12, qword ptr [rbx + 8]
	test	r12, r12
	jne	.label_401
	xor	ecx, ecx
	nop	dword ptr [rax + rax]
.label_402:
	mov	rax, rcx
	mov	rcx, rbx
	mov	r12, qword ptr [rcx + 0x10]
	cmp	r12, rax
	je	.label_399
	test	r12, r12
	jne	.label_401
.label_399:
	mov	rbx, qword ptr [rcx]
	xor	eax, eax
	test	rbx, rbx
	jne	.label_402
	jmp	.label_400
	.section	.text
	.align	32
	#Procedure 0x405760

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
	je	.label_416
	mov	edx, OFFSET FLAT:label_407
	xor	eax, eax
	mov	rdi, r14
	mov	r8, rbx
	call	__fprintf_chk
	jmp	.label_413
.label_416:
	mov	edx, OFFSET FLAT:label_414
	xor	eax, eax
	mov	rdi, r14
	mov	rcx, rbx
	mov	r8, r9
	call	__fprintf_chk
.label_413:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_418
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
	mov	esi, OFFSET FLAT:label_415
	mov	edx, 5
	call	dcgettext
	mov	rdi, rax
	mov	rsi, r14
	call	fputs_unlocked
	cmp	r12, 9
	ja	.label_419
	jmp	qword ptr [word ptr [+ (r12 * 8) + label_420]]
.label_1883:
	add	rsp, 8
	jmp	.label_406
.label_419:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_410
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
	jmp	.label_406
.label_1884:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_405
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
.label_1885:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_411
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
.label_1886:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_408
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
.label_1887:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_422
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
	jmp	.label_406
.label_1888:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_421
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
	jmp	.label_406
.label_1889:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_404
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
	jmp	.label_406
.label_1890:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_409
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
	jmp	.label_406
.label_1892:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_412
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
	jmp	.label_406
.label_1891:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_417
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
.label_406:
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	ret	
	.section	.text
	.align	32
	#Procedure 0x405ab8
	.globl sub_405ab8
	.type sub_405ab8, @function
sub_405ab8:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x405ac0
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
	#Procedure 0x405ad8
	.globl sub_405ad8
	.type sub_405ad8, @function
sub_405ad8:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x405ae0

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
	jne	.label_423
	movzx	esi, byte ptr [rbx]
	mov	rdi, r14
	call	bitset_set
	xor	eax, eax
.label_423:
	add	rsp, 8
	pop	rbx
	pop	r14
	ret	
	.section	.text
	.align	32
	#Procedure 0x405b15
	.globl sub_405b15
	.type sub_405b15, @function
sub_405b15:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x405b20

	.globl int_value
	.type int_value, @function
int_value:
	push	r14
	push	rbx
	push	rax
	mov	r14, rdi
	mov	edi, 0x18
	call	xmalloc
	mov	rbx, rax
	mov	dword ptr [rbx], 0
	lea	rdi, [rbx + 8]
	mov	rsi, r14
	call	__gmpz_init_set_ui
	mov	rax, rbx
	add	rsp, 8
	pop	rbx
	pop	r14
	ret	
	.section	.text
	.align	32
	#Procedure 0x405b51
	.globl sub_405b51
	.type sub_405b51, @function
sub_405b51:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x405b60

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
	#Procedure 0x405b7e
	.globl sub_405b7e
	.type sub_405b7e, @function
sub_405b7e:

	nop	
	.section	.text
	.align	32
	#Procedure 0x405b80

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
	#Procedure 0x405b8f
	.globl sub_405b8f
	.type sub_405b8f, @function
sub_405b8f:

	nop	
	.section	.text
	.align	32
	#Procedure 0x405b90

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
	jle	.label_430
	xor	r14d, r14d
	mov	qword ptr [rsp + 0x30], rcx
	mov	qword ptr [rsp + 0x38], r13
	mov	qword ptr [rsp + 0x28], rbp
	nop	word ptr [rax + rax]
.label_429:
	mov	rax, qword ptr [rbp + 0x10]
	mov	r15, qword ptr [rax + r14*8]
	mov	rax, qword ptr [r13]
	mov	rbx, r15
	shl	rbx, 4
	test	byte ptr [rax + rbx + 0xa], 0x10
	je	.label_433
	mov	rdi, r13
	mov	rsi, r15
	mov	rdx, r12
	mov	rbp, r12
	mov	r12, rcx
	call	check_node_accept_bytes
	cmp	eax, 2
	jl	.label_431
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
	je	.label_432
	add	rsi, 8
	mov	rdi, rbp
	call	re_node_set_merge
	mov	dword ptr [rsp + 0xc], eax
	test	eax, eax
	jne	.label_424
.label_432:
	mov	rdi, rbp
	mov	rsi, r13
	call	re_node_set_insert
	test	al, al
	je	.label_427
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
	jne	.label_428
	mov	eax, dword ptr [rsp + 0xc]
	test	eax, eax
	je	.label_428
	jmp	.label_424
	.section	.text
	.align	32
	#Procedure 0x405cc7
	.globl sub_405cc7
	.type sub_405cc7, @function
sub_405cc7:

	nop	word ptr [rax + rax]
.label_431:
	test	eax, eax
	mov	rcx, r12
	mov	r12, rbp
	mov	rbp, qword ptr [rsp + 0x28]
	jne	.label_428
	nop	
.label_433:
	add	rbx, qword ptr [r13]
	mov	rdi, r12
	mov	rsi, rbx
	mov	rdx, rcx
	call	check_node_accept
	mov	rcx, qword ptr [rsp + 0x30]
	test	al, al
	je	.label_426
.label_428:
	mov	rax, qword ptr [r13 + 0x18]
	mov	rsi, qword ptr [rax + r15*8]
	mov	rdi, qword ptr [rsp + 0x40]
	call	re_node_set_insert
	mov	rcx, qword ptr [rsp + 0x30]
	test	al, al
	je	.label_427
.label_426:
	inc	r14
	cmp	r14, qword ptr [rbp + 8]
	jl	.label_429
.label_430:
	mov	rdi, qword ptr [rsp + 0x20]
	call	free
	xor	eax, eax
.label_425:
	add	rsp, 0x48
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_424:
	mov	rdi, qword ptr [rsp + 0x20]
	call	free
	mov	eax, dword ptr [rsp + 0xc]
	jmp	.label_425
	.section	.text
	.align	32
	#Procedure 0x405d4e
	.globl sub_405d4e
	.type sub_405d4e, @function
sub_405d4e:

	nop	
.label_427:
	mov	rdi, qword ptr [rsp + 0x20]
	call	free
	mov	eax, 0xc
	jmp	.label_425
	.section	.text
	.align	32
	#Procedure 0x405d60

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
.label_548:
	mov	r11, rbp
	xor	r14d, r14d
	mov	ecx, r15d
	cmp	r15d, 0xa
	ja	.label_436
	mov	edi, 7
	mov	r13b, 1
	xor	esi, esi
	mov	r8, qword ptr [rsp + 0x30]
	jmp	qword ptr [word ptr [+ (rcx * 8) + label_445]]
.label_1858:
	mov	r14d, r10d
	mov	edi, OFFSET FLAT:label_451
	mov	esi, r15d
	mov	rbx, r11
	mov	ebp, r9d
	call	gettext_quote
	mov	qword ptr [rsp + 0x78], rax
	mov	edi, OFFSET FLAT:label_456
	mov	esi, r15d
	call	gettext_quote
	mov	r9d, ebp
	mov	r10d, r14d
	mov	r11, rbx
	mov	qword ptr [rsp + 0x70], rax
.label_1859:
	mov	dword ptr [rsp + 0x48], r9d
	mov	byte ptr [rsp + 0x17], r10b
	test	r12b, 1
	mov	r14d, 0
	mov	rcx, qword ptr [rsp + 0x78]
	jne	.label_467
	mov	al, byte ptr [rcx]
	test	al, al
	mov	r14d, 0
	je	.label_467
	xor	r14d, r14d
.label_477:
	cmp	r14, r11
	jae	.label_474
	mov	rdx, qword ptr [rsp + 8]
	mov	byte ptr [rdx + r14], al
.label_474:
	movzx	eax, byte ptr [rcx + r14 + 1]
	inc	r14
	test	al, al
	jne	.label_477
.label_467:
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
	jmp	.label_482
.label_1851:
	xor	edi, edi
	xor	r14d, r14d
	mov	r13d, eax
	xor	esi, esi
	jmp	.label_482
.label_1854:
	mov	al, 1
.label_1852:
	mov	r12b, 1
.label_1855:
	test	r12b, 1
	mov	cl, 1
	je	.label_498
	mov	ecx, eax
.label_498:
	mov	al, cl
.label_1853:
	test	r12b, 1
	jne	.label_501
	test	r11, r11
	je	.label_455
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx], 0x27
.label_455:
	mov	r14d, 1
	jmp	.label_506
.label_501:
	xor	r14d, r14d
.label_506:
	mov	ecx, OFFSET FLAT:label_456
	mov	qword ptr [rsp + 0x40], rcx
	mov	ecx, 1
	mov	qword ptr [rsp + 0x38], rcx
	mov	r13d, eax
	mov	sil, r12b
	mov	edi, 2
	jmp	.label_482
.label_1856:
	test	r12b, 1
	jne	.label_513
	test	r11, r11
	je	.label_514
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax], 0x22
.label_514:
	mov	r14d, 1
	jmp	.label_517
.label_1857:
	mov	r13b, 1
	mov	edi, 5
	xor	r14d, r14d
	mov	eax, OFFSET FLAT:label_519
	mov	qword ptr [rsp + 0x40], rax
	mov	eax, 1
	mov	qword ptr [rsp + 0x38], rax
	mov	sil, 1
	jmp	.label_482
.label_513:
	xor	r14d, r14d
.label_517:
	mov	eax, OFFSET FLAT:label_519
	mov	qword ptr [rsp + 0x40], rax
	mov	eax, 1
	mov	qword ptr [rsp + 0x38], rax
	mov	r13b, 1
	mov	sil, r12b
	mov	edi, 5
	nop	word ptr cs:[rax + rax]
.label_482:
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
	jmp	.label_447
	.section	.text
	.align	32
	#Procedure 0x40603c
	.globl sub_40603c
	.type sub_40603c, @function
sub_40603c:

	nop	dword ptr [rax]
.label_442:
	inc	rsi
.label_447:
	cmp	rbp, -1
	je	.label_527
	cmp	rsi, rbp
	jne	.label_458
	jmp	.label_461
	.section	.text
	.align	32
	#Procedure 0x406053
	.globl sub_406053
	.type sub_406053, @function
sub_406053:

	nop	word ptr cs:[rax + rax]
.label_527:
	cmp	byte ptr [rdi + rsi], 0
	je	.label_461
.label_458:
	cmp	byte ptr [rsp + 0x2f], 0
	je	.label_469
	mov	rax, qword ptr [rsp + 0x38]
	lea	rbx, [rsi + rax]
	cmp	rax, 2
	jb	.label_438
	cmp	rbp, -1
	jne	.label_438
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
.label_438:
	cmp	rbx, rbp
	jbe	.label_480
.label_469:
	xor	r8d, r8d
.label_507:
	movzx	r15d, byte ptr [rdi + rsi]
	cmp	r15, 0x7e
	ja	.label_483
	xor	edx, edx
	mov	r13b, 1
	mov	cl, 0x6e
	mov	bl, 0x61
	xor	eax, eax
	jmp	qword ptr [word ptr [+ (r15 * 8) + label_487]]
.label_1868:
	test	rsi, rsi
	jne	.label_479
	jmp	.label_493
	.section	.text
	.align	32
	#Procedure 0x4060ee
	.globl sub_4060ee
	.type sub_4060ee, @function
sub_4060ee:

	nop	
.label_480:
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
	jne	.label_504
	cmp	byte ptr [rsp + 7], 0
	mov	rdi, qword ptr [rsp + 0x30]
	mov	r11, rbx
	mov	r10d, r15d
	mov	rax, qword ptr [rsp + 0x68]
	mov	r9d, ebp
	mov	rsi, r12
	mov	r12, rax
	mov	rbp, qword ptr [rsp + 0x20]
	je	.label_507
	jmp	.label_450
.label_504:
	mov	rdi, qword ptr [rsp + 0x30]
	mov	r11, rbx
	mov	r10d, r15d
	mov	rax, qword ptr [rsp + 0x68]
	mov	r9d, ebp
	mov	rsi, r12
	mov	r12, rax
	mov	rbp, qword ptr [rsp + 0x20]
	jmp	.label_507
.label_1872:
	xor	eax, eax
	cmp	rbp, -1
	je	.label_520
	test	rsi, rsi
	jne	.label_521
	cmp	rbp, 1
	je	.label_493
	xor	r13d, r13d
	jmp	.label_463
.label_1861:
	cmp	byte ptr [rsp + 0x1e], 0
	je	.label_528
	cmp	byte ptr [rsp + 7], 0
	jne	.label_449
	cmp	r12d, 2
	jne	.label_531
	mov	eax, r9d
	and	al, 1
	jne	.label_531
	cmp	r14, r11
	jae	.label_533
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], 0x27
.label_533:
	lea	rax, [r14 + 1]
	cmp	rax, r11
	jae	.label_536
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + rax], 0x24
.label_536:
	lea	rax, [r14 + 2]
	cmp	rax, r11
	jae	.label_540
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + rax], 0x27
.label_540:
	add	r14, 3
	mov	r9b, 1
.label_531:
	mov	rcx, r14
	cmp	rcx, r11
	jae	.label_547
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + rcx], 0x5c
.label_547:
	lea	r14, [rcx + 1]
	mov	al, 1
	mov	r15b, 0x30
	cmp	r12d, 2
	je	.label_434
	lea	rdx, [rsi + 1]
	cmp	rdx, rbp
	jae	.label_434
	mov	dl, byte ptr [rdi + rdx]
	add	dl, 0xd0
	cmp	dl, 9
	ja	.label_434
	cmp	r14, r11
	jae	.label_452
	mov	rdx, qword ptr [rsp + 8]
	mov	byte ptr [rdx + r14], 0x30
.label_452:
	lea	rdx, [rcx + 2]
	cmp	rdx, r11
	jae	.label_475
	mov	rbx, qword ptr [rsp + 8]
	mov	byte ptr [rbx + rdx], 0x30
.label_475:
	add	rcx, 3
	xor	r13d, r13d
	mov	r14, rcx
	jmp	.label_463
.label_1862:
	mov	bl, 0x62
	jmp	.label_457
.label_1863:
	mov	cl, 0x74
	jmp	.label_435
.label_1864:
	mov	bl, 0x76
	jmp	.label_457
.label_1865:
	mov	bl, 0x66
	jmp	.label_457
.label_1866:
	mov	cl, 0x72
	jmp	.label_435
.label_1869:
	mov	r15b, 0x27
	mov	al, 1
	mov	qword ptr [rsp + 0xa0], rax
	cmp	r12d, 2
	jne	.label_473
	cmp	byte ptr [rsp + 7], 0
	jne	.label_449
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
	jae	.label_478
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], 0x27
.label_478:
	lea	rax, [r14 + 1]
	cmp	rax, r11
	jae	.label_491
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + rax], 0x5c
.label_491:
	lea	rax, [r14 + 2]
	cmp	rax, r11
	jae	.label_494
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + rax], 0x27
.label_494:
	add	r14, 3
	xor	r9d, r9d
.label_473:
	xor	eax, eax
	mov	r13b, 1
	jmp	.label_463
.label_1870:
	mov	r15b, 0x3f
	cmp	r12d, 5
	je	.label_503
	cmp	r12d, 2
	jne	.label_479
	cmp	byte ptr [rsp + 7], 0
	je	.label_479
	jmp	.label_449
.label_1871:
	cmp	r12d, 2
	jne	.label_511
	cmp	byte ptr [rsp + 7], 0
	jne	.label_449
	mov	r15b, 0x5c
	xor	eax, eax
	xor	r13d, r13d
	jmp	.label_466
.label_483:
	mov	dword ptr [rsp + 0x4c], r8d
	mov	dword ptr [rsp + 0x48], r9d
	mov	byte ptr [rsp + 0x17], r10b
	mov	qword ptr [rsp + 0x98], r11
	cmp	qword ptr [rsp + 0xb0], 1
	jne	.label_439
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
.label_472:
	and	r13b, 1
	mov	r8d, r13d
	or	r8b, byte ptr [rsp + 0x2b]
	mov	qword ptr [rsp + 0x58], r12
	cmp	r12, 1
	mov	r11, qword ptr [rsp + 0x98]
	mov	r10b, byte ptr [rsp + 0x17]
	mov	r12, qword ptr [rsp + 0x68]
	mov	r9d, dword ptr [rsp + 0x48]
	ja	.label_488
	test	r8b, r8b
	je	.label_488
	xor	eax, eax
	mov	rbp, qword ptr [rsp + 0x20]
	mov	r8d, dword ptr [rsp + 0x4c]
	jmp	.label_463
.label_520:
	test	rsi, rsi
	jne	.label_530
	mov	cl, byte ptr [rdi + 1]
	test	cl, cl
	jne	.label_530
.label_493:
	mov	dl, 1
.label_1867:
	cmp	byte ptr [rsp + 0x1f], 0
	je	.label_449
	xor	eax, eax
	mov	r13b, dl
	nop	word ptr [rax + rax]
.label_463:
	cmp	byte ptr [rsp + 0x2e], 0
	je	.label_446
	cmp	qword ptr [rsp + 0xf0], 0
	jne	.label_448
	jmp	.label_453
	.section	.text
	.align	32
	#Procedure 0x406434
	.globl sub_406434
	.type sub_406434, @function
sub_406434:

	nop	word ptr cs:[rax + rax]
.label_446:
	cmp	byte ptr [rsp + 0x2d], 0
	je	.label_453
.label_448:
	mov	ebx, r8d
	mov	r8, rsi
	mov	ecx, r15d
	shr	cl, 5
	movzx	edx, cl
	mov	esi, 1
	mov	ecx, r15d
	shl	esi, cl
	test	bl, bl
	jne	.label_532
	mov	rcx, qword ptr [rsp + 0xf0]
	and	esi, dword ptr [rcx + rdx*4]
	mov	ebx, r15d
	mov	rsi, r8
	je	.label_466
	jmp	.label_471
	.section	.text
	.align	32
	#Procedure 0x40647d
	.globl sub_40647d
	.type sub_40647d, @function
sub_40647d:

	nop	dword ptr [rax]
.label_453:
	test	r8b, r8b
	mov	ebx, r15d
	jne	.label_471
	jmp	.label_466
.label_532:
	mov	ebx, r15d
	mov	rsi, r8
	jmp	.label_471
.label_528:
	cmp	dword ptr [rsp + 0x90], 0
	jne	.label_442
	xor	r15d, r15d
	jmp	.label_479
.label_511:
	mov	cl, 0x5c
	cmp	byte ptr [rsp + 0x2a], 0
	je	.label_435
	xor	eax, eax
	mov	r15b, 0x5c
	xor	r13d, r13d
	jmp	.label_466
.label_435:
	cmp	byte ptr [rsp + 0x1f], 0
	mov	ebx, ecx
	je	.label_449
.label_457:
	xor	eax, eax
	cmp	byte ptr [rsp + 0x1e], 0
	mov	r13d, 0
	je	.label_463
	nop	word ptr cs:[rax + rax]
.label_471:
	cmp	byte ptr [rsp + 7], 0
	jne	.label_449
	cmp	r12d, 2
	jne	.label_499
	mov	eax, r9d
	and	al, 1
	jne	.label_499
	cmp	r14, r11
	jae	.label_502
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], 0x27
.label_502:
	lea	rax, [r14 + 1]
	cmp	rax, r11
	jae	.label_542
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + rax], 0x24
.label_542:
	lea	rax, [r14 + 2]
	cmp	rax, r11
	jae	.label_509
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + rax], 0x27
.label_509:
	add	r14, 3
	mov	r9b, 1
.label_499:
	cmp	r14, r11
	jae	.label_512
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], 0x5c
.label_512:
	inc	r14
	jmp	.label_515
.label_439:
	mov	qword ptr [rsp + 0x80], 0
	cmp	rbp, -1
	jne	.label_518
	mov	rbx, rsi
	call	strlen
	mov	rsi, rbx
	mov	rdi, qword ptr [rsp + 0x30]
	mov	rbp, rax
.label_518:
	lea	rax, [rdi + rsi]
	mov	qword ptr [rsp + 0x58], rax
	mov	r13b, 1
	xor	r12d, r12d
	lea	rax, [rsp + 0x80]
	mov	rcx, rax
	mov	qword ptr [rsp + 0x20], rbp
	mov	qword ptr [rsp + 0x50], rsi
.label_464:
	lea	rbx, [r12 + rsi]
	lea	rsi, [rdi + rbx]
	mov	rdx, rbp
	sub	rdx, rbx
	lea	rdi, [rsp + 0x94]
	call	rpl_mbrtowc
	mov	rbp, rax
	test	rbp, rbp
	je	.label_489
	cmp	rbp, -1
	movabs	rsi, 0x20000002b
	je	.label_538
	cmp	rbp, -2
	je	.label_541
	cmp	rbp, 1
	seta	al
	and	al, byte ptr [rsp + 0x2c]
	cmp	al, 1
	mov	rdi, qword ptr [rsp + 0x30]
	mov	r11, qword ptr [rsp + 0x98]
	jne	.label_545
	mov	rax, qword ptr [rsp + 0x58]
	lea	rax, [rax + r12]
	mov	ecx, 1
	nop	word ptr cs:[rax + rax]
.label_524:
	movsx	edx, byte ptr [rax + rcx]
	add	edx, -0x5b
	cmp	edx, 0x21
	ja	.label_497
	bt	rsi, rdx
	jb	.label_450
.label_497:
	inc	rcx
	cmp	rcx, rbp
	jb	.label_524
.label_545:
	mov	edi, dword ptr [rsp + 0x94]
	call	iswprint
	test	eax, eax
	jne	.label_459
	xor	r13d, r13d
.label_459:
	lea	rdi, [rsp + 0x80]
	add	r12, rbp
	mov	rbx, rdi
	call	mbsinit
	mov	rcx, rbx
	test	eax, eax
	mov	rdi, qword ptr [rsp + 0x30]
	mov	rbp, qword ptr [rsp + 0x20]
	mov	rsi, qword ptr [rsp + 0x50]
	je	.label_464
	jmp	.label_472
.label_434:
	xor	r13d, r13d
	jmp	.label_463
.label_530:
	mov	rbp, -1
	xor	r13d, r13d
	jmp	.label_463
.label_503:
	cmp	dword ptr [rsp + 0x8c], 0
	je	.label_479
	lea	rcx, [rsi + 2]
	cmp	rcx, rbp
	jae	.label_479
	cmp	byte ptr [rdi + rsi + 1], 0x3f
	jne	.label_479
	movsx	edx, byte ptr [rdi + rcx]
	xor	eax, eax
	cmp	edx, 0x3e
	ja	.label_484
	mov	rbx, rsi
	movabs	rsi, 0x7000a38200000000
	bt	rsi, rdx
	jae	.label_492
	cmp	byte ptr [rsp + 7], 0
	jne	.label_449
	mov	r15b, byte ptr [rdi + rcx]
	cmp	r14, r11
	jae	.label_495
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], 0x3f
.label_495:
	lea	rax, [r14 + 1]
	cmp	rax, r11
	jae	.label_444
	mov	rdx, qword ptr [rsp + 8]
	mov	byte ptr [rdx + rax], 0x22
.label_444:
	lea	rax, [r14 + 2]
	cmp	rax, r11
	jae	.label_505
	mov	rdx, qword ptr [rsp + 8]
	mov	byte ptr [rdx + rax], 0x22
.label_505:
	lea	rax, [r14 + 3]
	cmp	rax, r11
	jae	.label_508
	mov	rdx, qword ptr [rsp + 8]
	mov	byte ptr [rdx + rax], 0x3f
.label_508:
	add	r14, 4
	xor	eax, eax
	mov	rsi, rcx
	xor	r13d, r13d
	jmp	.label_463
.label_479:
	xor	eax, eax
.label_521:
	xor	r13d, r13d
	jmp	.label_463
.label_488:
	add	qword ptr [rsp + 0x58], rsi
	xor	eax, eax
	mov	rbp, qword ptr [rsp + 0x20]
	jmp	.label_516
	.section	.text
	.align	32
	#Procedure 0x406763
	.globl sub_406763
	.type sub_406763, @function
sub_406763:

	nop	word ptr cs:[rax + rax]
.label_476:
	inc	r14
	mov	r15b, byte ptr [rdi + rsi + 1]
	mov	rsi, rdx
.label_516:
	test	r8b, r8b
	je	.label_522
	mov	ecx, dword ptr [rsp + 0x4c]
	test	cl, 1
	je	.label_523
	cmp	r14, r11
	jae	.label_525
	mov	rdx, qword ptr [rsp + 8]
	mov	byte ptr [rdx + r14], 0x5c
.label_525:
	inc	r14
	mov	dword ptr [rsp + 0x4c], 0
	jmp	.label_523
	.section	.text
	.align	32
	#Procedure 0x4067ac
	.globl sub_4067ac
	.type sub_4067ac, @function
sub_4067ac:

	nop	dword ptr [rax]
.label_522:
	cmp	byte ptr [rsp + 7], 0
	jne	.label_450
	cmp	r12d, 2
	jne	.label_534
	mov	eax, r9d
	and	al, 1
	jne	.label_534
	cmp	r14, r11
	jae	.label_537
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], 0x27
.label_537:
	lea	rax, [r14 + 1]
	cmp	rax, r11
	jae	.label_539
	mov	rdx, qword ptr [rsp + 8]
	mov	byte ptr [rdx + rax], 0x24
.label_539:
	lea	rax, [r14 + 2]
	cmp	rax, r11
	jae	.label_546
	mov	rdx, qword ptr [rsp + 8]
	mov	byte ptr [rdx + rax], 0x27
.label_546:
	add	r14, 3
	mov	r9b, 1
.label_534:
	cmp	r14, r11
	jae	.label_440
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], 0x5c
.label_440:
	lea	rax, [r14 + 1]
	cmp	rax, r11
	jae	.label_441
	mov	edx, r15d
	shr	dl, 6
	or	dl, 0x30
	mov	rbx, qword ptr [rsp + 8]
	mov	byte ptr [rbx + rax], dl
.label_441:
	lea	rax, [r14 + 2]
	cmp	rax, r11
	jae	.label_529
	mov	edx, r15d
	shr	dl, 3
	and	dl, 7
	or	dl, 0x30
	mov	rbx, qword ptr [rsp + 8]
	mov	byte ptr [rbx + rax], dl
.label_529:
	add	r14, 3
	and	r15b, 7
	or	r15b, 0x30
	mov	al, 1
.label_523:
	lea	rdx, [rsi + 1]
	cmp	qword ptr [rsp + 0x58], rdx
	jbe	.label_466
	test	r9b, 1
	je	.label_468
	mov	ebx, eax
	and	bl, 1
	jne	.label_468
	mov	rbx, rsi
	cmp	r14, r11
	jae	.label_470
	mov	rsi, qword ptr [rsp + 8]
	mov	byte ptr [rsi + r14], 0x27
.label_470:
	lea	rsi, [r14 + 1]
	cmp	rsi, r11
	jae	.label_454
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + rsi], 0x27
.label_454:
	add	r14, 2
	xor	r9d, r9d
	mov	rsi, rbx
.label_468:
	cmp	r14, r11
	jae	.label_476
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + r14], r15b
	jmp	.label_476
	.section	.text
	.align	32
	#Procedure 0x4068b3
	.globl sub_4068b3
	.type sub_4068b3, @function
sub_4068b3:

	nop	word ptr cs:[rax + rax]
.label_466:
	test	r9b, 1
	je	.label_485
	and	al, 1
	jne	.label_485
	cmp	r14, r11
	jae	.label_486
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], 0x27
.label_486:
	lea	rax, [r14 + 1]
	cmp	rax, r11
	jae	.label_481
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + rax], 0x27
.label_481:
	add	r14, 2
	xor	r9d, r9d
.label_485:
	mov	ebx, r15d
.label_515:
	cmp	r14, r11
	jae	.label_496
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], bl
.label_496:
	inc	r14
	shl	r13b, 7
	sar	r13b, 7
	and	r13b, r10b
	mov	r10d, r13d
	jmp	.label_442
.label_538:
	xor	r13d, r13d
.label_489:
	mov	rdi, qword ptr [rsp + 0x30]
	mov	rsi, qword ptr [rsp + 0x50]
	jmp	.label_472
.label_541:
	mov	rbp, qword ptr [rsp + 0x20]
	cmp	rbx, rbp
	mov	rdi, qword ptr [rsp + 0x30]
	jae	.label_510
	mov	rsi, qword ptr [rsp + 0x50]
.label_535:
	mov	rax, qword ptr [rsp + 0x58]
	cmp	byte ptr [rax + r12], 0
	je	.label_462
	lea	rax, [rsi + r12 + 1]
	inc	r12
	cmp	rax, rbp
	jb	.label_535
	xor	r13d, r13d
	jmp	.label_472
.label_510:
	xor	r13d, r13d
	mov	rsi, qword ptr [rsp + 0x50]
	jmp	.label_472
.label_462:
	xor	r13d, r13d
	jmp	.label_472
.label_484:
	xor	r13d, r13d
	jmp	.label_463
.label_492:
	xor	r13d, r13d
	mov	rsi, rbx
	jmp	.label_463
	.section	.text
	.align	32
	#Procedure 0x406988
	.globl sub_406988
	.type sub_406988, @function
sub_406988:

	nop	dword ptr [rax + rax]
.label_461:
	test	r14, r14
	setne	al
	cmp	r12d, 2
	setne	dl
	mov	rcx, qword ptr [rsp + 0xa8]
	and	cl, 1
	mov	qword ptr [rsp + 0x20], rbp
	je	.label_526
	or	dl, al
	je	.label_450
.label_526:
	test	cl, cl
	setne	al
	cmp	r12d, 2
	setne	dl
	mov	rsi, qword ptr [rsp + 0xa0]
	test	sil, 1
	mov	bl, byte ptr [rsp + 0x1d]
	mov	rsi, qword ptr [rsp + 0xa8]
	je	.label_460
	or	dl, al
	jne	.label_460
	test	r10b, 1
	jne	.label_543
	cmp	qword ptr [rsp + 0x60], 0
	je	.label_460
	test	r11, r11
	mov	r15d, r12d
	mov	al, bl
	mov	r12d, esi
	mov	rbp, qword ptr [rsp + 0x60]
	je	.label_548
.label_460:
	mov	rdx, qword ptr [rsp + 0x40]
	test	rdx, rdx
	je	.label_437
	test	cl, cl
	mov	rcx, qword ptr [rsp + 8]
	jne	.label_443
	mov	al, byte ptr [rdx]
	test	al, al
	je	.label_443
	inc	rdx
	nop	word ptr cs:[rax + rax]
.label_544:
	cmp	r14, r11
	jae	.label_490
	mov	byte ptr [rcx + r14], al
.label_490:
	inc	r14
	movzx	eax, byte ptr [rdx]
	inc	rdx
	test	al, al
	jne	.label_544
	jmp	.label_443
.label_449:
	mov	qword ptr [rsp + 0x20], rbp
.label_450:
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
.label_500:
	mov	r14, rax
.label_465:
	mov	rax, r14
	add	rsp, 0xb8
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_543:
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
	jmp	.label_500
.label_437:
	mov	rcx, qword ptr [rsp + 8]
.label_443:
	cmp	r14, r11
	jae	.label_465
	mov	byte ptr [rcx + r14], 0
	jmp	.label_465
.label_436:
	call	abort
	.section	.text
	.align	32
	#Procedure 0x406b1c
	.globl sub_406b1c
	.type sub_406b1c, @function
sub_406b1c:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x406b20
	.globl c_isgraph
	.type c_isgraph, @function
c_isgraph:

	add	edi, -0x21
	cmp	edi, 0x5e
	setb	al
	ret	
	.section	.text
	.align	32
	#Procedure 0x406b2a
	.globl sub_406b2a
	.type sub_406b2a, @function
sub_406b2a:

	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x406b30

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
	je	.label_557
	cmp	ecx, 4
	je	.label_557
	mov	edx, dword ptr [rbx]
	cmp	edx, 2
	je	.label_557
	cmp	edx, 4
	je	.label_557
	cmp	ecx, 3
	jne	.label_569
	mov	rdi, qword ptr [rbp + 8]
	call	strlen
	mov	rcx, rax
	mov	eax, 3
	cmp	rcx, 1
	ja	.label_557
.label_569:
	cmp	dword ptr [rbx], 3
	jne	.label_554
	mov	rdi, qword ptr [rbx + 8]
	call	strlen
	mov	rcx, rax
	mov	eax, 3
	cmp	rcx, 1
	ja	.label_557
.label_554:
	mov	eax, dword ptr [rbp]
	cmp	eax, 3
	je	.label_559
	test	eax, eax
	jne	.label_561
	mov	al, byte ptr [rbp + 8]
	jmp	.label_562
.label_559:
	mov	rax, qword ptr [rbp + 8]
	mov	al, byte ptr [rax]
	jmp	.label_562
.label_561:
	xor	eax, eax
.label_562:
	mov	ecx, dword ptr [rbx]
	cmp	ecx, 3
	je	.label_565
	test	ecx, ecx
	jne	.label_566
	mov	dl, byte ptr [rbx + 8]
	jmp	.label_567
.label_565:
	mov	rcx, qword ptr [rbx + 8]
	mov	dl, byte ptr [rcx]
	jmp	.label_567
.label_566:
	xor	edx, edx
.label_567:
	mov	ecx, dword ptr [rbp]
	cmp	ecx, 3
	je	.label_568
	test	ecx, ecx
	jne	.label_570
.label_568:
	movzx	edi, al
	mov	rsi, r14
	mov	ebp, edx
	call	parse_byte
	mov	edx, ebp
	mov	ebp, eax
	jmp	.label_550
.label_570:
	mov	ebp, dword ptr [rbp + 8]
.label_550:
	mov	eax, dword ptr [rbx]
	cmp	eax, 3
	je	.label_552
	test	eax, eax
	jne	.label_553
.label_552:
	movzx	edi, dl
	mov	rsi, r14
	call	parse_byte
	mov	ebx, eax
	jmp	.label_556
.label_553:
	mov	ebx, dword ptr [rbx + 8]
.label_556:
	cmp	ebp, -1
	mov	eax, 3
	je	.label_557
	cmp	ebx, -1
	je	.label_557
	test	r12d, 0x10000
	je	.label_560
	cmp	ebp, ebx
	mov	eax, 0xb
	ja	.label_557
.label_560:
	test	r14, r14
	je	.label_563
	mov	r12, qword ptr [r14 + 0x40]
	cmp	qword ptr [r15], r12
	je	.label_564
.label_558:
	mov	rax, qword ptr [r14 + 8]
	mov	rcx, qword ptr [r14 + 0x40]
	mov	dword ptr [rax + rcx*4], ebp
	mov	rax, qword ptr [r14 + 0x40]
	lea	rcx, [rax + 1]
	mov	qword ptr [r14 + 0x40], rcx
	mov	rcx, qword ptr [r14 + 0x10]
	mov	dword ptr [rcx + rax*4], ebx
.label_563:
	mov	r14d, ebx
	mov	ebp, ebp
	xor	ebx, ebx
	nop	word ptr cs:[rax + rax]
.label_555:
	cmp	rbp, rbx
	ja	.label_551
	cmp	rbx, r14
	ja	.label_551
	mov	rdi, r13
	mov	rsi, rbx
	call	bitset_set
.label_551:
	inc	rbx
	xor	eax, eax
	cmp	rbx, 0x100
	jne	.label_555
.label_557:
	add	rsp, 0x18
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_564:
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
	je	.label_549
	cmp	qword ptr [rsp + 8], 0
	je	.label_549
	lea	rax, [r12 + r12 + 1]
	mov	qword ptr [r14 + 8], rdi
	mov	rcx, qword ptr [rsp + 8]
	mov	qword ptr [r14 + 0x10], rcx
	mov	qword ptr [r15], rax
	jmp	.label_558
.label_549:
	call	free
	mov	rdi, qword ptr [rsp + 8]
	call	free
	mov	eax, 0xc
	jmp	.label_557
	.section	.text
	.align	32
	#Procedure 0x406d3c
	.globl sub_406d3c
	.type sub_406d3c, @function
sub_406d3c:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x406d40

	.globl check_dst_limits_calc_pos
	.type check_dst_limits_calc_pos, @function
check_dst_limits_calc_pos:
	mov	r10, qword ptr [rdi + 0xd8]
	lea	rsi, [rsi + rsi*4]
	mov	r11, qword ptr [r10 + rsi*8 + 0x10]
	mov	eax, 0xffffffff
	cmp	r11, r8
	jg	.label_571
	mov	r10, qword ptr [r10 + rsi*8 + 0x18]
	mov	eax, 1
	cmp	r10, r8
	jl	.label_571
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
	je	.label_571
	mov	r8, r9
	jmp	check_dst_limits_calc_pos_1
.label_571:
	ret	
	.section	.text
	.align	32
	#Procedure 0x406d8a
	.globl sub_406d8a
	.type sub_406d8a, @function
sub_406d8a:

	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x406d90

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
	jle	.label_581
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
.label_572:
	mov	rax, qword ptr [r11 + 8]
	mov	r14, qword ptr [rax + rbx*8]
	mov	rax, qword ptr [r10]
	mov	rsi, r14
	shl	rsi, 4
	lea	rdi, [rax + rsi]
	mov	al, byte ptr [rax + rsi + 8]
	cmp	al, 9
	je	.label_585
	cmp	al, 8
	je	.label_575
	cmp	al, 4
	jne	.label_573
	cmp	r8, -1
	je	.label_573
	lea	r13, [r8 + r8*4]
	shl	r13, 3
	mov	rax, qword ptr [rsp + 0x20]
	add	r13, qword ptr [rax + 0xd8]
	mov	r12d, ecx
	mov	qword ptr [rsp + 0x48], rbx
	mov	qword ptr [rsp + 0x40], r14
	nop	dword ptr [rax]
.label_584:
	mov	ebp, 7
	cmp	qword ptr [r13], r14
	jne	.label_579
	cmp	rdx, 0x3f
	jg	.label_580
	movzx	eax, word ptr [r13 + 0x22]
	test	qword ptr [rsp + 0x50], rax
	je	.label_579
.label_580:
	mov	rax, qword ptr [r10 + 0x28]
	lea	rcx, [r14 + r14*2]
	mov	rax, qword ptr [rax + rcx*8 + 0x10]
	mov	rcx, qword ptr [rax]
	mov	ebp, 1
	cmp	rcx, r15
	jne	.label_587
	mov	ecx, dword ptr [rsp + 0x1c]
	jmp	.label_574
	.section	.text
	.align	32
	#Procedure 0x406ed8
	.globl sub_406ed8
	.type sub_406ed8, @function
sub_406ed8:

	nop	dword ptr [rax + rax]
.label_587:
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
	je	.label_574
	test	eax, eax
	jne	.label_577
	cmp	dword ptr [rsp + 0x10], 0
	mov	ecx, r12d
	mov	eax, 0
	cmovne	ecx, eax
	cmp	byte ptr [rsp + 0xb], 0
	mov	ebp, dword ptr [rsp + 0x14]
	je	.label_578
	jmp	.label_574
.label_577:
	xor	ebp, ebp
	cmp	rdx, 0x3f
	jg	.label_579
.label_578:
	movzx	eax, word ptr [r13 + 0x22]
	mov	rcx, qword ptr [rsp + 0x28]
	and	eax, ecx
	mov	word ptr [r13 + 0x22], ax
	xor	ebp, ebp
	nop	word ptr cs:[rax + rax]
.label_579:
	mov	ecx, r12d
.label_574:
	mov	eax, ebp
	and	al, 7
	cmp	al, 7
	je	.label_582
	test	al, al
	jne	.label_583
.label_582:
	cmp	byte ptr [r13 + 0x20], 0
	lea	r13, [r13 + 0x28]
	mov	r12d, ecx
	jne	.label_584
	jmp	.label_573
	.section	.text
	.align	32
	#Procedure 0x406f83
	.globl sub_406f83
	.type sub_406f83, @function
sub_406f83:

	nop	word ptr cs:[rax + rax]
.label_585:
	cmp	dword ptr [rsp + 0x10], 0
	je	.label_573
	xor	eax, eax
	jmp	.label_576
	.section	.text
	.align	32
	#Procedure 0x406f9b
	.globl sub_406f9b
	.type sub_406f9b, @function
sub_406f9b:

	nop	dword ptr [rax + rax]
.label_575:
	cmp	dword ptr [rsp + 0x18], 0
	je	.label_573
	mov	eax, 0xffffffff
.label_576:
	cmp	qword ptr [rdi], rdx
	jne	.label_573
	jmp	.label_586
.label_583:
	test	ebp, ebp
	mov	eax, ecx
	jne	.label_586
	nop	dword ptr [rax]
.label_573:
	inc	rbx
	cmp	rbx, qword ptr [r11]
	jl	.label_572
.label_581:
	mov	eax, dword ptr [rsp + 0xc]
	shr	eax, 1
	and	eax, 1
.label_586:
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
	#Procedure 0x406fe4
	.globl sub_406fe4
	.type sub_406fe4, @function
sub_406fe4:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x406ff0

	.globl find_subexp_node
	.type find_subexp_node, @function
find_subexp_node:
	cmp	qword ptr [rsi + 8], 0
	jle	.label_588
	mov	r8, qword ptr [rsi + 0x10]
	mov	r9, qword ptr [rdi]
	xor	r11d, r11d
	nop	word ptr cs:[rax + rax]
.label_590:
	mov	rax, qword ptr [r8 + r11*8]
	mov	r10, rax
	shl	r10, 4
	movzx	edi, byte ptr [r9 + r10 + 8]
	cmp	edi, ecx
	jne	.label_589
	cmp	qword ptr [r9 + r10], rdx
	je	.label_591
.label_589:
	inc	r11
	cmp	r11, qword ptr [rsi + 8]
	jl	.label_590
.label_588:
	mov	rax, -1
.label_591:
	ret	
	.section	.text
	.align	32
	#Procedure 0x40703c
	.globl sub_40703c
	.type sub_40703c, @function
sub_40703c:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x407040

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
	#Procedure 0x407062
	.globl sub_407062
	.type sub_407062, @function
sub_407062:

	nop	word ptr cs:[rax + rax]
.label_593:
	mov	qword ptr [rdi + 4], 0
.label_592:
	mov	al, byte ptr [rsi + 0xc]
	mov	byte ptr [rdi + 0xc], al
	add	rdi, 0x10
	add	rsi, 0x10
	jmp	mb_copy
	.section	.text
	.align	32
	#Procedure 0x40708b
	.globl sub_40708b
	.type sub_40708b, @function
sub_40708b:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x40708e
	.globl mbuiter_multi_copy
	.type mbuiter_multi_copy, @function
mbuiter_multi_copy:

	mov	al, byte ptr [rsi]
	test	al, al
	mov	byte ptr [rdi], al
	je	.label_593
	mov	rax, qword ptr [rsi + 4]
	mov	qword ptr [rdi + 4], rax
	jmp	.label_592
	.section	.text
	.align	32
	#Procedure 0x4070a0

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
	je	.label_601
	cmp	qword ptr [r14 + 0x10], 0
	je	.label_601
	xor	r15d, r15d
	xor	ebx, ebx
	nop	
.label_596:
	mov	rdi, qword ptr [r14]
	add	rdi, r15
	call	free_token
	inc	rbx
	add	r15, 0x10
	cmp	rbx, qword ptr [r14 + 0x10]
	jb	.label_596
.label_601:
	mov	rdi, qword ptr [r14 + 0x18]
	call	free
	cmp	qword ptr [r14 + 0x10], 0
	je	.label_602
	xor	r15d, r15d
	mov	ebx, 0x10
.label_603:
	mov	rax, qword ptr [r14 + 0x30]
	test	rax, rax
	je	.label_604
	mov	rdi, qword ptr [rax + rbx]
	call	free
.label_604:
	mov	rax, qword ptr [r14 + 0x38]
	test	rax, rax
	je	.label_595
	mov	rdi, qword ptr [rax + rbx]
	call	free
.label_595:
	mov	rax, qword ptr [r14 + 0x28]
	test	rax, rax
	je	.label_598
	mov	rdi, qword ptr [rax + rbx]
	call	free
.label_598:
	inc	r15
	add	rbx, 0x18
	cmp	r15, qword ptr [r14 + 0x10]
	jb	.label_603
.label_602:
	mov	rdi, qword ptr [r14 + 0x28]
	call	free
	mov	rdi, qword ptr [r14 + 0x30]
	call	free
	mov	rdi, qword ptr [r14 + 0x38]
	call	free
	mov	rdi, qword ptr [r14]
	call	free
	cmp	qword ptr [r14 + 0x40], 0
	je	.label_599
	xor	r15d, r15d
.label_600:
	mov	rax, qword ptr [r14 + 0x40]
	lea	rcx, [r15 + r15*2]
	lea	r12, [rax + rcx*8 + 0x10]
	cmp	qword ptr [rax + rcx*8], 0
	jle	.label_594
	lea	r13, [rax + rcx*8]
	xor	ebx, ebx
	nop	word ptr [rax + rax]
.label_597:
	mov	rax, qword ptr [r12]
	mov	rdi, qword ptr [rax + rbx*8]
	call	free_state
	inc	rbx
	cmp	rbx, qword ptr [r13]
	jl	.label_597
.label_594:
	mov	rdi, qword ptr [r12]
	call	free
	inc	r15
	cmp	r15, qword ptr [r14 + 0x88]
	jbe	.label_600
.label_599:
	mov	rdi, qword ptr [r14 + 0x40]
	call	free
	mov	rdi, qword ptr [r14 + 0x78]
	mov	eax, OFFSET FLAT:utf8_sb_map
	cmp	rdi, rax
	je	.label_605
	call	free
.label_605:
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
	#Procedure 0x4071e4
	.globl sub_4071e4
	.type sub_4071e4, @function
sub_4071e4:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4071f0
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
	#Procedure 0x40720a
	.globl sub_40720a
	.type sub_40720a, @function
sub_40720a:

	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x407210
	.globl close_stdout_set_ignore_EPIPE
	.type close_stdout_set_ignore_EPIPE, @function
close_stdout_set_ignore_EPIPE:

	mov	byte ptr [byte ptr [rip + ignore_EPIPE]],  dil
	ret	
	.section	.text
	.align	32
	#Procedure 0x407218
	.globl sub_407218
	.type sub_407218, @function
sub_407218:

	nop	dword ptr [rax + rax]
.label_609:
	inc	rax
.label_610:
	add	rax, qword ptr [rdi + 0x28]
	mov	rcx, qword ptr [rdi]
	mov	al, byte ptr [rcx + rax]
	test	al, al
	jns	.label_607
	mov	cl, byte ptr [rdi + 0x8c]
	test	cl, cl
	jne	.label_606
	jmp	.label_607
	.section	.text
	.align	32
	#Procedure 0x40723d
	.globl sub_40723d
	.type sub_40723d, @function
sub_40723d:

	nop	word ptr cs:[rax + rax]
.label_611:
	cmp	dword ptr [rdi + 0x90], 2
	jl	.label_608
	mov	rax, qword ptr [rdi + 0x10]
	mov	rcx, qword ptr [rdi + 0x48]
	cmp	dword ptr [rax + rcx*4 + 4], -1
	je	.label_606
	lea	rdx, [rcx + 2]
	cmp	qword ptr [rdi + 0x30], rdx
	je	.label_608
	cmp	dword ptr [rax + rcx*4 + 8], -1
	je	.label_606
.label_608:
	mov	rax, qword ptr [rdi + 0x48]
	cmp	byte ptr [rdi + 0x8c], 0
	je	.label_609
	mov	rcx, qword ptr [rdi + 0x18]
	mov	rax, qword ptr [rcx + rax*8 + 8]
	jmp	.label_610
	.section	.text
	.align	32
	#Procedure 0x40728a

	.globl re_string_peek_byte_case
	.type re_string_peek_byte_case, @function
re_string_peek_byte_case:
	cmp	byte ptr [rdi + 0x8b], 0
	jne	.label_611
.label_606:
	mov	rax, qword ptr [rdi + 8]
	mov	rcx, qword ptr [rdi + 0x48]
	mov	al, byte ptr [rax + rcx + 1]
.label_607:
	ret	
	.section	.text
	.align	32
	#Procedure 0x4072a0

	.globl rpl_fflush
	.type rpl_fflush, @function
rpl_fflush:
	push	rbx
	mov	rbx, rdi
	test	rbx, rbx
	je	.label_612
	mov	rdi, rbx
	call	__freading
	test	eax, eax
	je	.label_612
	mov	rdi, rbx
	call	clear_ungetc_buffer_preserving_position
.label_612:
	mov	rdi, rbx
	pop	rbx
	jmp	fflush
	.section	.text
	.align	32
	#Procedure 0x4072c6
	.globl sub_4072c6
	.type sub_4072c6, @function
sub_4072c6:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4072d0

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
	je	.label_618
	mov	rax, qword ptr [r15 + 8]
	test	rax, rax
	je	.label_618
	mov	rbx, qword ptr [r14]
	mov	rcx, qword ptr [r14 + 8]
	lea	rdx, [rcx + rax*2]
	cmp	rbx, rdx
	jge	.label_624
	add	rbx, rax
	mov	rdi, qword ptr [r14 + 0x10]
	mov	rsi, rbx
	shl	rsi, 4
	call	realloc
	mov	rcx, rax
	mov	eax, 0xc
	test	rcx, rcx
	je	.label_619
	add	rbx, rbx
	mov	qword ptr [r14 + 0x10], rcx
	mov	qword ptr [r14], rbx
	mov	rcx, qword ptr [r14 + 8]
.label_624:
	mov	rax, qword ptr [r15 + 8]
	test	rcx, rcx
	je	.label_625
	lea	r12, [rcx + rax*2]
	dec	rax
	dec	rcx
	mov	rdx, rax
	or	rdx, rcx
	js	.label_613
	mov	rdx, qword ptr [r14 + 0x10]
	mov	rsi, qword ptr [r15 + 0x10]
	jmp	.label_615
.label_623:
	dec	rax
.label_620:
	dec	rcx
	jmp	.label_622
	.section	.text
	.align	32
	#Procedure 0x407367
	.globl sub_407367
	.type sub_407367, @function
sub_407367:

	nop	word ptr [rax + rax]
.label_615:
	mov	rdi, qword ptr [rsi + rax*8]
	cmp	qword ptr [rdx + rcx*8], rdi
	je	.label_623
	jge	.label_620
	dec	rax
	mov	qword ptr [rdx + r12*8 - 8], rdi
	dec	r12
.label_622:
	mov	rdi, rax
	or	rdi, rcx
	jns	.label_615
.label_613:
	test	rax, rax
	js	.label_617
	lea	rcx, [rax + 1]
	sub	r12, rcx
	lea	rdi, [r12*8]
	add	rdi, qword ptr [r14 + 0x10]
	mov	rsi, qword ptr [r15 + 0x10]
	lea	rdx, [rax*8 + 8]
	call	memcpy
.label_617:
	mov	r9, qword ptr [r14 + 8]
	mov	rax, qword ptr [r15 + 8]
	lea	rcx, [r9 + rax*2 - 1]
	mov	rsi, rcx
	sub	rsi, r12
	inc	rsi
	je	.label_618
	lea	rax, [rsi + r9]
	mov	qword ptr [r14 + 8], rax
	mov	rdi, qword ptr [r14 + 0x10]
.label_621:
	lea	r8, [r9 - 1]
	lea	rdx, [rsi*8]
	nop	dword ptr [rax + rax]
.label_626:
	mov	rax, qword ptr [rdi + rcx*8]
	mov	rbx, qword ptr [rdi + r9*8 - 8]
	cmp	rax, rbx
	jle	.label_614
	dec	rcx
	lea	rbx, [rdi + rdx]
	add	rdx, -8
	dec	rsi
	mov	qword ptr [rbx + r9*8 - 8], rax
	jne	.label_626
	jmp	.label_618
	.section	.text
	.align	32
	#Procedure 0x407415
	.globl sub_407415
	.type sub_407415, @function
sub_407415:

	nop	word ptr cs:[rax + rax]
.label_614:
	lea	rax, [rdi + rdx]
	mov	qword ptr [rax + r9*8 - 8], rbx
	cmp	r9, 1
	mov	r9, r8
	jg	.label_621
	mov	rdi, qword ptr [r14 + 0x10]
	lea	rsi, [rdi + r12*8]
.label_616:
	call	memcpy
.label_618:
	xor	eax, eax
.label_619:
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	ret	
.label_625:
	mov	qword ptr [r14 + 8], rax
	mov	rdi, qword ptr [r14 + 0x10]
	mov	rdx, qword ptr [r15 + 8]
	mov	rsi, qword ptr [r15 + 0x10]
	shl	rdx, 3
	jmp	.label_616
	.section	.text
	.align	32
	#Procedure 0x407463
	.globl sub_407463
	.type sub_407463, @function
sub_407463:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x407470

	.globl strintcmp
	.type strintcmp, @function
strintcmp:
	jmp	numcompare
	.section	.text
	.align	32
	#Procedure 0x407472
	.globl sub_407472
	.type sub_407472, @function
sub_407472:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x407480

	.globl numcompare
	.type numcompare, @function
numcompare:
	mov	cl, byte ptr [rdi]
	mov	dl, byte ptr [rsi]
	cmp	cl, 0x2d
	jne	.label_627
	nop	dword ptr [rax]
.label_631:
	movzx	ecx, byte ptr [rdi + 1]
	inc	rdi
	cmp	ecx, 0x30
	je	.label_631
	cmp	dl, 0x2d
	jne	.label_633
	nop	word ptr cs:[rax + rax]
.label_638:
	movzx	r9d, byte ptr [rsi + 1]
	inc	rsi
	cmp	r9b, 0x30
	je	.label_638
	cmp	r9b, cl
	jne	.label_644
	lea	eax, [rcx - 0x30]
	cmp	eax, 9
	ja	.label_644
	xor	eax, eax
	nop	word ptr cs:[rax + rax]
.label_654:
	mov	cl, byte ptr [rdi + rax + 1]
	movzx	r9d, byte ptr [rsi + rax + 1]
	movzx	r8d, cl
	inc	rax
	cmp	r9b, r8b
	jne	.label_651
	lea	edx, [r8 - 0x30]
	cmp	edx, 0xa
	jb	.label_654
.label_651:
	add	rdi, rax
	add	rsi, rax
	jmp	.label_656
.label_627:
	cmp	dl, 0x2d
	jne	.label_629
	inc	rsi
	nop	word ptr cs:[rax + rax]
.label_635:
	movzx	edx, byte ptr [rsi]
	inc	rsi
	cmp	edx, 0x30
	je	.label_635
	add	edx, -0x30
	mov	eax, 1
	cmp	edx, 0xa
	jb	.label_637
	cmp	cl, 0x30
	jne	.label_643
	inc	rdi
	nop	word ptr cs:[rax + rax]
.label_652:
	movzx	ecx, byte ptr [rdi]
	inc	rdi
	cmp	cl, 0x30
	je	.label_652
.label_643:
	movzx	eax, cl
	add	eax, -0x30
	cmp	eax, 0xa
	sbb	eax, eax
	and	eax, 1
	ret	
	.section	.text
	.align	32
	#Procedure 0x40756a
	.globl sub_40756a
	.type sub_40756a, @function
sub_40756a:

	nop	word ptr [rax + rax]
.label_655:
	movzx	ecx, byte ptr [rdi + 1]
	inc	rdi
.label_629:
	cmp	cl, 0x30
	je	.label_655
	jmp	.label_657
	.section	.text
	.align	32
	#Procedure 0x40757e
	.globl sub_40757e
	.type sub_40757e, @function
sub_40757e:

	nop	
.label_628:
	movzx	edx, byte ptr [rsi + 1]
	inc	rsi
.label_657:
	cmp	dl, 0x30
	je	.label_628
	movzx	r8d, cl
	cmp	r8b, dl
	jne	.label_630
	lea	eax, [r8 - 0x30]
	cmp	eax, 9
	ja	.label_630
	nop	
.label_641:
	movzx	ecx, byte ptr [rdi + 1]
	inc	rdi
	movzx	edx, byte ptr [rsi + 1]
	inc	rsi
	movzx	r8d, cl
	cmp	r8b, dl
	jne	.label_630
	lea	eax, [r8 - 0x30]
	cmp	eax, 0xa
	jb	.label_641
.label_630:
	movzx	eax, dl
	movzx	edx, cl
	add	edx, -0x30
	xor	ecx, ecx
	cmp	edx, 9
	ja	.label_645
	xor	ecx, ecx
	nop	word ptr cs:[rax + rax]
.label_653:
	movzx	edx, byte ptr [rdi + rcx + 1]
	inc	rcx
	add	edx, -0x30
	cmp	edx, 0xa
	jb	.label_653
.label_645:
	lea	edi, [rax - 0x30]
	xor	edx, edx
	cmp	edi, 9
	ja	.label_646
	xor	edx, edx
	nop	dword ptr [rax]
.label_640:
	movzx	edi, byte ptr [rsi + rdx + 1]
	inc	rdx
	add	edi, -0x30
	cmp	edi, 0xa
	jb	.label_640
.label_646:
	cmp	rcx, rdx
	jne	.label_649
	sub	r8d, eax
	xor	eax, eax
	test	rcx, rcx
	cmovne	eax, r8d
	jmp	.label_637
.label_633:
	add	ecx, -0x30
	mov	eax, 0xffffffff
	cmp	ecx, 0xa
	jae	.label_636
.label_637:
	ret	
.label_644:
	mov	r8d, ecx
.label_656:
	movzx	edx, r9b
	movzx	eax, cl
	add	eax, -0x30
	xor	ecx, ecx
	cmp	eax, 9
	ja	.label_639
	xor	ecx, ecx
	nop	word ptr [rax + rax]
.label_632:
	movzx	eax, byte ptr [rdi + rcx + 1]
	inc	rcx
	add	eax, -0x30
	cmp	eax, 0xa
	jb	.label_632
.label_639:
	lea	edi, [rdx - 0x30]
	xor	eax, eax
	cmp	edi, 9
	ja	.label_648
	xor	eax, eax
	nop	dword ptr [rax]
.label_647:
	movzx	edi, byte ptr [rsi + rax + 1]
	inc	rax
	add	edi, -0x30
	cmp	edi, 0xa
	jb	.label_647
.label_648:
	cmp	rcx, rax
	jne	.label_642
	sub	edx, r8d
	xor	eax, eax
	test	rcx, rcx
	cmovne	eax, edx
	ret	
.label_649:
	mov	ecx, 0xffffffff
	mov	eax, 1
	cmovb	eax, ecx
	ret	
.label_636:
	cmp	dl, 0x30
	jne	.label_634
	inc	rsi
	nop	word ptr [rax + rax]
.label_650:
	movzx	edx, byte ptr [rsi]
	inc	rsi
	cmp	dl, 0x30
	je	.label_650
.label_634:
	movzx	eax, dl
	add	eax, -0x30
	cmp	eax, 0xa
	sbb	eax, eax
	ret	
.label_642:
	mov	ecx, 1
	mov	eax, 0xffffffff
	cmovb	eax, ecx
	ret	
	.section	.text
	.align	32
	#Procedure 0x4076d5
	.globl sub_4076d5
	.type sub_4076d5, @function
sub_4076d5:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4076e0
	.globl rpl_re_set_syntax
	.type rpl_re_set_syntax, @function
rpl_re_set_syntax:

	mov	rax,  qword ptr [word ptr [rip + rpl_re_syntax_options]]
	mov	qword ptr [word ptr [rip + rpl_re_syntax_options]],  rdi
	ret	
	.section	.text
	.align	32
	#Procedure 0x4076ef
	.globl sub_4076ef
	.type sub_4076ef, @function
sub_4076ef:

	nop	
	.section	.text
	.align	32
	#Procedure 0x4076f0

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
	je	.label_676
	mov	esi, OFFSET FLAT:label_664
	mov	rdi, r12
	call	strcmp
	test	eax, eax
	je	.label_670
	mov	esi, OFFSET FLAT:label_672
	mov	rdi, r12
	call	strcmp
	test	eax, eax
	jne	.label_676
.label_670:
	mov	r12d, OFFSET FLAT:label_678
.label_676:
	mov	rbp, qword ptr [rbx + 0x48]
	cmp	qword ptr [r13], rbp
	je	.label_680
.label_703:
	mov	rdi, r12
	call	wctype
	mov	rcx, qword ptr [rbx + 0x48]
	lea	rdx, [rcx + 1]
	mov	qword ptr [rbx + 0x48], rdx
	mov	rdx, qword ptr [rbx + 0x18]
	mov	qword ptr [rdx + rcx*8], rax
	mov	esi, OFFSET FLAT:label_689
	mov	rdi, r12
	call	strcmp
	test	eax, eax
	je	.label_695
	mov	esi, OFFSET FLAT:label_697
	mov	rdi, r12
	call	strcmp
	test	eax, eax
	je	.label_705
	mov	esi, OFFSET FLAT:label_672
	mov	rdi, r12
	call	strcmp
	test	eax, eax
	je	.label_711
	mov	esi, OFFSET FLAT:label_712
	mov	rdi, r12
	call	strcmp
	test	eax, eax
	je	.label_715
	mov	esi, OFFSET FLAT:label_678
	mov	rdi, r12
	call	strcmp
	test	eax, eax
	je	.label_719
	mov	esi, OFFSET FLAT:label_721
	mov	rdi, r12
	call	strcmp
	test	eax, eax
	je	.label_727
	mov	esi, OFFSET FLAT:label_729
	mov	rdi, r12
	call	strcmp
	test	eax, eax
	je	.label_733
	mov	esi, OFFSET FLAT:label_664
	mov	rdi, r12
	call	strcmp
	test	eax, eax
	je	.label_691
	mov	esi, OFFSET FLAT:label_688
	mov	rdi, r12
	call	strcmp
	test	eax, eax
	je	.label_668
	mov	esi, OFFSET FLAT:label_671
	mov	rdi, r12
	call	strcmp
	test	eax, eax
	je	.label_675
	mov	esi, OFFSET FLAT:label_679
	mov	rdi, r12
	call	strcmp
	test	eax, eax
	je	.label_684
	mov	esi, OFFSET FLAT:label_687
	mov	rdi, r12
	call	strcmp
	mov	ecx, eax
	mov	eax, 4
	test	ecx, ecx
	jne	.label_661
	call	__ctype_b_loc
	mov	r12, rax
	xor	ebx, ebx
	test	r14, r14
	jne	.label_702
.label_708:
	mov	rax, qword ptr [r12]
	test	byte ptr [rax + rbx*2 + 1], 0x10
	je	.label_698
	mov	rdi, r15
	mov	rsi, rbx
	call	bitset_set
.label_698:
	inc	rbx
	xor	eax, eax
	cmp	rbx, 0x100
	jne	.label_708
	jmp	.label_661
.label_695:
	call	__ctype_b_loc
	mov	r12, rax
	xor	ebx, ebx
	test	r14, r14
	jne	.label_713
	nop	word ptr [rax + rax]
.label_723:
	mov	rax, qword ptr [r12]
	test	byte ptr [rax + rbx*2], 8
	je	.label_717
	mov	rdi, r15
	mov	rsi, rbx
	call	bitset_set
.label_717:
	inc	rbx
	xor	eax, eax
	cmp	rbx, 0x100
	jne	.label_723
	jmp	.label_661
.label_705:
	call	__ctype_b_loc
	mov	r12, rax
	xor	ebx, ebx
	test	r14, r14
	jne	.label_692
	nop	dword ptr [rax + rax]
.label_665:
	mov	rax, qword ptr [r12]
	test	byte ptr [rax + rbx*2], 2
	je	.label_658
	mov	rdi, r15
	mov	rsi, rbx
	call	bitset_set
.label_658:
	inc	rbx
	xor	eax, eax
	cmp	rbx, 0x100
	jne	.label_665
	jmp	.label_661
.label_711:
	call	__ctype_b_loc
	mov	r12, rax
	xor	ebx, ebx
	test	r14, r14
	jne	.label_663
	nop	dword ptr [rax + rax]
.label_690:
	mov	rax, qword ptr [r12]
	test	byte ptr [rax + rbx*2 + 1], 2
	je	.label_682
	mov	rdi, r15
	mov	rsi, rbx
	call	bitset_set
.label_682:
	inc	rbx
	xor	eax, eax
	cmp	rbx, 0x100
	jne	.label_690
	jmp	.label_661
.label_715:
	call	__ctype_b_loc
	mov	r12, rax
	xor	ebx, ebx
	test	r14, r14
	jne	.label_694
	nop	dword ptr [rax]
.label_709:
	mov	rax, qword ptr [r12]
	test	byte ptr [rax + rbx*2 + 1], 0x20
	je	.label_699
	mov	rdi, r15
	mov	rsi, rbx
	call	bitset_set
.label_699:
	inc	rbx
	xor	eax, eax
	cmp	rbx, 0x100
	jne	.label_709
	jmp	.label_661
.label_719:
	call	__ctype_b_loc
	mov	r12, rax
	xor	ebx, ebx
	test	r14, r14
	jne	.label_669
	nop	dword ptr [rax]
.label_724:
	mov	rax, qword ptr [r12]
	test	byte ptr [rax + rbx*2 + 1], 4
	je	.label_700
	mov	rdi, r15
	mov	rsi, rbx
	call	bitset_set
.label_700:
	inc	rbx
	xor	eax, eax
	cmp	rbx, 0x100
	jne	.label_724
	jmp	.label_661
.label_727:
	call	__ctype_b_loc
	mov	r12, rax
	xor	ebx, ebx
	test	r14, r14
	jne	.label_686
	nop	dword ptr [rax]
.label_666:
	mov	rax, qword ptr [r12]
	test	byte ptr [rax + rbx*2 + 1], 8
	je	.label_659
	mov	rdi, r15
	mov	rsi, rbx
	call	bitset_set
.label_659:
	inc	rbx
	xor	eax, eax
	cmp	rbx, 0x100
	jne	.label_666
	jmp	.label_661
.label_733:
	call	__ctype_b_loc
	mov	r12, rax
	xor	ebx, ebx
	test	r14, r14
	jne	.label_674
	nop	dword ptr [rax]
.label_732:
	mov	rax, qword ptr [r12]
	test	byte ptr [rax + rbx*2 + 1], 0x40
	je	.label_725
	mov	rdi, r15
	mov	rsi, rbx
	call	bitset_set
.label_725:
	inc	rbx
	xor	eax, eax
	cmp	rbx, 0x100
	jne	.label_732
	jmp	.label_661
.label_691:
	call	__ctype_b_loc
	mov	r12, rax
	xor	ebx, ebx
	test	r14, r14
	jne	.label_667
	nop	dword ptr [rax]
.label_685:
	mov	rax, qword ptr [r12]
	test	byte ptr [rax + rbx*2 + 1], 1
	je	.label_726
	mov	rdi, r15
	mov	rsi, rbx
	call	bitset_set
.label_726:
	inc	rbx
	xor	eax, eax
	cmp	rbx, 0x100
	jne	.label_685
	jmp	.label_661
.label_668:
	call	__ctype_b_loc
	mov	r12, rax
	xor	ebx, ebx
	test	r14, r14
	jne	.label_660
	nop	dword ptr [rax]
.label_722:
	mov	rax, qword ptr [r12]
	test	byte ptr [rax + rbx*2], 1
	je	.label_731
	mov	rdi, r15
	mov	rsi, rbx
	call	bitset_set
.label_731:
	inc	rbx
	xor	eax, eax
	cmp	rbx, 0x100
	jne	.label_722
	jmp	.label_661
.label_713:
	mov	rax, qword ptr [r12]
	test	byte ptr [rax + rbx*2], 8
	je	.label_730
	movzx	esi, byte ptr [r14 + rbx]
	mov	rdi, r15
	call	bitset_set
.label_730:
	inc	rbx
	xor	eax, eax
	cmp	rbx, 0x100
	jne	.label_713
	jmp	.label_661
.label_675:
	call	__ctype_b_loc
	mov	r12, rax
	xor	ebx, ebx
	test	r14, r14
	jne	.label_707
.label_720:
	mov	rax, qword ptr [r12]
	cmp	word ptr [rax + rbx*2], 0
	jns	.label_673
	mov	rdi, r15
	mov	rsi, rbx
	call	bitset_set
.label_673:
	inc	rbx
	xor	eax, eax
	cmp	rbx, 0x100
	jne	.label_720
	jmp	.label_661
.label_692:
	mov	rax, qword ptr [r12]
	test	byte ptr [rax + rbx*2], 2
	je	.label_714
	movzx	esi, byte ptr [r14 + rbx]
	mov	rdi, r15
	call	bitset_set
.label_714:
	inc	rbx
	xor	eax, eax
	cmp	rbx, 0x100
	jne	.label_692
	jmp	.label_661
.label_684:
	call	__ctype_b_loc
	mov	r12, rax
	xor	ebx, ebx
	test	r14, r14
	jne	.label_681
.label_710:
	mov	rax, qword ptr [r12]
	test	byte ptr [rax + rbx*2], 4
	je	.label_696
	mov	rdi, r15
	mov	rsi, rbx
	call	bitset_set
.label_696:
	inc	rbx
	xor	eax, eax
	cmp	rbx, 0x100
	jne	.label_710
.label_661:
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_663:
	mov	rax, qword ptr [r12]
	test	byte ptr [rax + rbx*2 + 1], 2
	je	.label_716
	movzx	esi, byte ptr [r14 + rbx]
	mov	rdi, r15
	call	bitset_set
.label_716:
	inc	rbx
	xor	eax, eax
	cmp	rbx, 0x100
	jne	.label_663
	jmp	.label_661
.label_694:
	mov	rax, qword ptr [r12]
	test	byte ptr [rax + rbx*2 + 1], 0x20
	je	.label_728
	movzx	esi, byte ptr [r14 + rbx]
	mov	rdi, r15
	call	bitset_set
.label_728:
	inc	rbx
	xor	eax, eax
	cmp	rbx, 0x100
	jne	.label_694
	jmp	.label_661
.label_669:
	mov	rax, qword ptr [r12]
	test	byte ptr [rax + rbx*2 + 1], 4
	je	.label_662
	movzx	esi, byte ptr [r14 + rbx]
	mov	rdi, r15
	call	bitset_set
.label_662:
	inc	rbx
	xor	eax, eax
	cmp	rbx, 0x100
	jne	.label_669
	jmp	.label_661
.label_686:
	mov	rax, qword ptr [r12]
	test	byte ptr [rax + rbx*2 + 1], 8
	je	.label_677
	movzx	esi, byte ptr [r14 + rbx]
	mov	rdi, r15
	call	bitset_set
.label_677:
	inc	rbx
	xor	eax, eax
	cmp	rbx, 0x100
	jne	.label_686
	jmp	.label_661
.label_680:
	lea	rax, [rbp + rbp]
	mov	rdi, qword ptr [rbx + 0x18]
	lea	rsi, [rax*8 + 8]
	call	realloc
	mov	rcx, rax
	mov	eax, 0xc
	test	rcx, rcx
	je	.label_661
	lea	rax, [rbp + rbp + 1]
	mov	qword ptr [rbx + 0x18], rcx
	mov	qword ptr [r13], rax
	jmp	.label_703
.label_674:
	mov	rax, qword ptr [r12]
	test	byte ptr [rax + rbx*2 + 1], 0x40
	je	.label_704
	movzx	esi, byte ptr [r14 + rbx]
	mov	rdi, r15
	call	bitset_set
.label_704:
	inc	rbx
	xor	eax, eax
	cmp	rbx, 0x100
	jne	.label_674
	jmp	.label_661
.label_667:
	mov	rax, qword ptr [r12]
	test	byte ptr [rax + rbx*2 + 1], 1
	je	.label_718
	movzx	esi, byte ptr [r14 + rbx]
	mov	rdi, r15
	call	bitset_set
.label_718:
	inc	rbx
	xor	eax, eax
	cmp	rbx, 0x100
	jne	.label_667
	jmp	.label_661
.label_660:
	mov	rax, qword ptr [r12]
	test	byte ptr [rax + rbx*2], 1
	je	.label_706
	movzx	esi, byte ptr [r14 + rbx]
	mov	rdi, r15
	call	bitset_set
.label_706:
	inc	rbx
	xor	eax, eax
	cmp	rbx, 0x100
	jne	.label_660
	jmp	.label_661
.label_707:
	mov	rax, qword ptr [r12]
	cmp	word ptr [rax + rbx*2], 0
	jns	.label_701
	movzx	esi, byte ptr [r14 + rbx]
	mov	rdi, r15
	call	bitset_set
.label_701:
	inc	rbx
	xor	eax, eax
	cmp	rbx, 0x100
	jne	.label_707
	jmp	.label_661
.label_681:
	mov	rax, qword ptr [r12]
	test	byte ptr [rax + rbx*2], 4
	je	.label_683
	movzx	esi, byte ptr [r14 + rbx]
	mov	rdi, r15
	call	bitset_set
.label_683:
	inc	rbx
	xor	eax, eax
	cmp	rbx, 0x100
	jne	.label_681
	jmp	.label_661
.label_702:
	mov	rax, qword ptr [r12]
	test	byte ptr [rax + rbx*2 + 1], 0x10
	je	.label_693
	movzx	esi, byte ptr [r14 + rbx]
	mov	rdi, r15
	call	bitset_set
.label_693:
	inc	rbx
	xor	eax, eax
	cmp	rbx, 0x100
	jne	.label_702
	jmp	.label_661
	.section	.text
	.align	32
	#Procedure 0x407d96
	.globl sub_407d96
	.type sub_407d96, @function
sub_407d96:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x407da0

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
	#Procedure 0x407db5
	.globl sub_407db5
	.type sub_407db5, @function
sub_407db5:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x407dc0

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
	js	.label_734
	movabs	rax, 0x7fffffffffffffff
	test	rbx, rbx
	js	.label_737
	sub	rax, rbx
	cmp	rax, r14
	jl	.label_734
	lea	rdx, [rbx + r14]
	xor	r12d, r12d
	test	rbx, rbx
	jle	.label_736
	xor	r12d, r12d
	test	r14, r14
	jle	.label_738
	mov	qword ptr [rsp + 0x18], rdi
	mov	qword ptr [rsp + 0x10], rdx
	mov	rdi, rdx
	mov	qword ptr [rsp + 0x20], r9
	call	malloc
	mov	r12, rax
	test	r12, r12
	je	.label_734
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
	jmp	.label_736
.label_739:
	add	rbx, r14
	xor	r12d, r12d
	mov	rdx, rbx
	jmp	.label_736
.label_737:
	inc	rax
	sub	rax, rbx
	cmp	rax, r14
	jle	.label_739
.label_734:
	mov	rax, -2
	jmp	.label_735
.label_738:
	mov	r13, r15
.label_736:
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
.label_735:
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
	#Procedure 0x407ecf
	.globl sub_407ecf
	.type sub_407ecf, @function
sub_407ecf:

	nop	
	.section	.text
	.align	32
	#Procedure 0x407ed0

	.globl bitset_merge
	.type bitset_merge, @function
bitset_merge:
	xor	eax, eax
	nop	word ptr cs:[rax + rax]
.label_740:
	mov	rcx, qword ptr [rsi + rax*8]
	or	qword ptr [rdi + rax*8], rcx
	inc	rax
	cmp	rax, 4
	jne	.label_740
	ret	
	.section	.text
	.align	32
	#Procedure 0x407ef2
	.globl sub_407ef2
	.type sub_407ef2, @function
sub_407ef2:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x407f00

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
	jne	.label_742
	mov	ecx, dword ptr [r14]
	test	ecx, ecx
	je	.label_742
	jmp	.label_741
	.section	.text
	.align	32
	#Procedure 0x407f45
	.globl sub_407f45
	.type sub_407f45, @function
sub_407f45:

	nop	word ptr cs:[rax + rax]
.label_746:
	test	rbx, rbx
	cmovne	r15, rbx
	mov	rax, r15
.label_742:
	mov	rbx, rax
	movzx	eax, byte ptr [r13 + 8]
	mov	ecx, eax
	or	cl, 8
	cmp	cl, 0xa
	je	.label_744
	test	r12, r12
	je	.label_747
	cmp	eax, 9
	je	.label_744
.label_747:
	mov	rdi, qword ptr [rsp + 8]
	mov	rsi, rbp
	mov	rdx, r13
	mov	rcx, qword ptr [rsp + 0x10]
	mov	r8, r12
	mov	r9, r14
	call	parse_expression
	mov	r15, rax
	test	r15, r15
	jne	.label_743
	mov	eax, dword ptr [r14]
	test	eax, eax
	jne	.label_745
.label_743:
	test	rbx, rbx
	je	.label_746
	test	r15, r15
	je	.label_746
	mov	ecx, 0x10
	mov	rdi, qword ptr [rsp]
	mov	rsi, rbx
	mov	rdx, r15
	call	create_tree
	test	rax, rax
	jne	.label_742
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
	jmp	.label_741
.label_744:
	mov	r15, rbx
.label_741:
	mov	rax, r15
	add	rsp, 0x18
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_745:
	xor	r15d, r15d
	test	rbx, rbx
	je	.label_741
	xor	r15d, r15d
	mov	esi, OFFSET FLAT:free_tree
	xor	edx, edx
	mov	rdi, rbx
	call	postorder
	jmp	.label_741
	.section	.text
	.align	32
	#Procedure 0x408022
	.globl sub_408022
	.type sub_408022, @function
sub_408022:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x408030

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
	#Procedure 0x408069
	.globl sub_408069
	.type sub_408069, @function
sub_408069:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x408070
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
	#Procedure 0x408081
	.globl sub_408081
	.type sub_408081, @function
sub_408081:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x408090
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
	#Procedure 0x4080a4
	.globl sub_4080a4
	.type sub_4080a4, @function
sub_4080a4:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4080b0
	.globl rpl_re_set_registers
	.type rpl_re_set_registers, @function
rpl_re_set_registers:

	mov	al, byte ptr [rdi + 0x38]
	and	al, 0xf9
	test	rdx, rdx
	je	.label_748
	or	al, 2
	mov	byte ptr [rdi + 0x38], al
	mov	qword ptr [rsi], rdx
	mov	qword ptr [rsi + 8], rcx
	mov	qword ptr [rsi + 0x10], r8
	ret	
.label_748:
	mov	byte ptr [rdi + 0x38], al
	xorps	xmm0, xmm0
	movups	xmmword ptr [rsi], xmm0
	mov	qword ptr [rsi + 0x10], 0
	ret	
	.section	.text
	.align	32
	#Procedure 0x4080dd
	.globl sub_4080dd
	.type sub_4080dd, @function
sub_4080dd:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x4080e0

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
	jle	.label_751
	mov	r14, qword ptr [rbp + 0x98]
	xor	r12d, r12d
	nop	dword ptr [rax]
.label_750:
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
	jne	.label_749
	inc	r12
	cmp	r12, qword ptr [rbx + 8]
	jl	.label_750
.label_751:
	xor	eax, eax
.label_749:
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
	#Procedure 0x4081c2
	.globl sub_4081c2
	.type sub_4081c2, @function
sub_4081c2:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4081d0
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
	#Procedure 0x408242
	.globl sub_408242
	.type sub_408242, @function
sub_408242:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x408250

	.globl rpl_fclose
	.type rpl_fclose, @function
rpl_fclose:
	push	rbp
	push	rbx
	push	rax
	mov	rbx, rdi
	call	fileno
	test	eax, eax
	js	.label_752
	mov	rdi, rbx
	call	__freading
	test	eax, eax
	je	.label_754
	mov	rdi, rbx
	call	fileno
	xor	esi, esi
	mov	edx, 1
	mov	edi, eax
	call	lseek
	cmp	rax, -1
	je	.label_752
.label_754:
	mov	rdi, rbx
	call	rpl_fflush
	test	eax, eax
	je	.label_752
	call	__errno_location
	mov	ebp, dword ptr [rax]
	mov	rdi, rbx
	call	fclose
	test	ebp, ebp
	je	.label_753
	call	__errno_location
	mov	dword ptr [rax], ebp
	mov	eax, 0xffffffff
.label_753:
	add	rsp, 8
	pop	rbx
	pop	rbp
	ret	
.label_752:
	mov	rdi, rbx
	add	rsp, 8
	pop	rbx
	pop	rbp
	jmp	fclose
	.section	.text
	.align	32
	#Procedure 0x4082c7
	.globl sub_4082c7
	.type sub_4082c7, @function
sub_4082c7:

	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4082d0
	.globl x2realloc
	.type x2realloc, @function
x2realloc:

	mov	edx, 1
	jmp	x2nrealloc
	.section	.text
	.align	32
	#Procedure 0x4082da
	.globl sub_4082da
	.type sub_4082da, @function
sub_4082da:

	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4082e0

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
	je	.label_756
	cmp	qword ptr [rbx + 0x20], 0
	je	.label_756
	test	rcx, rcx
	je	.label_756
	mov	rcx, qword ptr [rbx + 0x28]
	test	rcx, rcx
	je	.label_756
	mov	rdi, qword ptr [r14 + 0x30]
	shl	rdi, 3
	call	malloc
	mov	qword ptr [rbx + 0xe0], rax
	test	rax, rax
	je	.label_760
	cmp	qword ptr [r14 + 0x30], 0
	je	.label_757
	mov	rax, qword ptr [rbx + 0xe0]
	xor	ecx, ecx
	nop	word ptr cs:[rax + rax]
.label_755:
	mov	qword ptr [rax + rcx*8], rcx
	inc	rcx
	cmp	rcx, qword ptr [r14 + 0x30]
	jb	.label_755
.label_757:
	mov	rdi, qword ptr [rbx + 0x68]
	mov	esi, OFFSET FLAT:optimize_subexps
	mov	rdx, rbx
	call	preorder
	xor	eax, eax
	cmp	qword ptr [r14 + 0x30], 0
	je	.label_758
	mov	rcx, qword ptr [rbx + 0xe0]
	xor	eax, eax
.label_759:
	cmp	rax, qword ptr [rcx + rax*8]
	jne	.label_758
	inc	rax
	cmp	rax, qword ptr [r14 + 0x30]
	jb	.label_759
.label_758:
	cmp	rax, qword ptr [r14 + 0x30]
	jne	.label_760
	mov	rdi, qword ptr [rbx + 0xe0]
	call	free
	mov	qword ptr [rbx + 0xe0], 0
.label_760:
	mov	rdi, qword ptr [rbx + 0x68]
	mov	esi, OFFSET FLAT:lower_subexps
	mov	rdx, r14
	call	postorder
	test	eax, eax
	jne	.label_756
	mov	rdi, qword ptr [rbx + 0x68]
	mov	esi, OFFSET FLAT:calc_first
	mov	rdx, rbx
	call	postorder
	test	eax, eax
	jne	.label_756
	mov	rdi, qword ptr [rbx + 0x68]
	mov	esi, OFFSET FLAT:calc_next
	mov	rdx, rbx
	call	preorder
	mov	rdi, qword ptr [rbx + 0x68]
	mov	esi, OFFSET FLAT:link_nfa_nodes
	mov	rdx, rbx
	call	preorder
	test	eax, eax
	jne	.label_756
	mov	rdi, rbx
	call	calc_eclosure
	test	eax, eax
	jne	.label_756
	test	byte ptr [r14 + 0x38], 0x10
	jne	.label_762
	cmp	qword ptr [r14 + 0x30], 0
	je	.label_762
	test	byte ptr [rbx + 0xb0], 1
	jne	.label_761
.label_762:
	xor	eax, eax
	cmp	qword ptr [rbx + 0x98], 0
	je	.label_756
.label_761:
	mov	rax, qword ptr [rbx + 0x10]
	shl	rax, 3
	lea	rdi, [rax + rax*2]
	call	malloc
	mov	qword ptr [rbx + 0x38], rax
	test	rax, rax
	mov	eax, 0xc
	je	.label_756
	mov	rdi, rbx
	add	rsp, 8
	pop	rbx
	pop	r14
	jmp	calc_inveclosure
.label_756:
	add	rsp, 8
	pop	rbx
	pop	r14
	ret	
	.section	.text
	.align	32
	#Procedure 0x4084b9
	.globl sub_4084b9
	.type sub_4084b9, @function
sub_4084b9:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x4084c0

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
	je	.label_763
	mov	rbx, r15
	add	rbx, 8
	mov	rdi, rbx
	mov	rsi, rbp
	call	re_node_set_init_copy
	test	eax, eax
	jne	.label_768
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
	jle	.label_770
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
.label_777:
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
	jne	.label_776
	test	eax, eax
	je	.label_769
.label_776:
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
	je	.label_772
	cmp	cl, 2
	jne	.label_764
	or	bl, 0x10
	jmp	.label_766
.label_772:
	or	bl, 0x40
.label_766:
	mov	byte ptr [r15 + 0x68], bl
.label_764:
	test	eax, eax
	je	.label_769
	mov	rbx, qword ptr [rsp + 0x30]
	cmp	qword ptr [r15 + 0x50], rbx
	jne	.label_773
	mov	edi, 0x18
	call	malloc
	mov	qword ptr [r15 + 0x50], rax
	test	rax, rax
	je	.label_767
	mov	rdi, rax
	mov	rsi, rbp
	call	re_node_set_init_copy
	test	eax, eax
	jne	.label_763
	or	byte ptr [r15 + 0x68], 0x80
	xor	r12d, r12d
.label_773:
	cmp	dword ptr [rsp + 0x14], 0
	jne	.label_771
	mov	eax, r13d
	and	eax, 1
	jne	.label_774
.label_771:
	cmp	dword ptr [rsp + 0x14], 0
	je	.label_775
	mov	eax, r13d
	and	eax, 2
	jne	.label_774
.label_775:
	cmp	dword ptr [rsp + 0x24], 0
	jne	.label_779
	mov	eax, r13d
	and	eax, 0x10
	jne	.label_774
.label_779:
	cmp	dword ptr [rsp + 0x20], 0
	jne	.label_765
	and	r13d, 0x40
	je	.label_765
	nop	word ptr [rax + rax]
.label_774:
	mov	rsi, r14
	sub	rsi, r12
	mov	rdi, rbx
	call	re_node_set_remove_at
	inc	r12
.label_765:
	mov	rdi, qword ptr [rsp + 0x18]
.label_769:
	inc	r14
	cmp	r14, qword ptr [rbp + 8]
	jl	.label_777
.label_770:
	mov	rsi, r15
	mov	rdx, qword ptr [rsp + 0x28]
	call	register_state
	test	eax, eax
	mov	rax, r15
	mov	qword ptr [rsp + 8], rax
	jne	.label_767
.label_763:
	mov	rax, qword ptr [rsp + 8]
	add	rsp, 0x38
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_767:
	mov	rdi, r15
	call	free_state
	jmp	.label_778
.label_768:
	mov	rdi, r15
	call	free
.label_778:
	xor	eax, eax
	mov	qword ptr [rsp + 8], rax
	jmp	.label_763
	.section	.text
	.align	32
	#Procedure 0x4086cb
	.globl sub_4086cb
	.type sub_4086cb, @function
sub_4086cb:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4086d0

	.globl require_more_args
	.type require_more_args, @function
require_more_args:
	push	rbx
	call	nomoreargs
	test	al, al
	jne	.label_780
	pop	rbx
	ret	
.label_780:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_781
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
	mov	rax,  qword ptr [word ptr [rip + args]]
	mov	rdx, qword ptr [rax - 8]
	xor	edi, edi
	mov	esi, 8
	call	quotearg_n_style
	mov	rcx, rax
	mov	edi, 2
	xor	esi, esi
	xor	eax, eax
	mov	rdx, rbx
	call	error
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x408720
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
	#Procedure 0x408735
	.globl sub_408735
	.type sub_408735, @function
sub_408735:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x408740
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
	#Procedure 0x40874d
	.globl sub_40874d
	.type sub_40874d, @function
sub_40874d:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x408750

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
	#Procedure 0x40875e
	.globl sub_40875e
	.type sub_40875e, @function
sub_40875e:

	nop	
.label_783:
	mov	byte ptr [r14 + r15 - 1], 0
	dec	r15
	mov	rdx, r15
	jmp	.label_782
	.section	.text
	.align	32
	#Procedure 0x40876e
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
	jae	.label_785
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
	je	.label_784
	cmp	rbx, r15
	mov	rdx, rbx
	ja	.label_783
.label_782:
	mov	rdi, r14
	mov	rsi, r12
	call	memcpy
.label_784:
	mov	rax, rbx
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	ret	
.label_785:
	call	abort
	.section	.text
	.align	32
	#Procedure 0x4087da
	.globl sub_4087da
	.type sub_4087da, @function
sub_4087da:

	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4087e0

	.globl nextarg
	.type nextarg, @function
nextarg:
	push	rbx
	mov	rax, rdi
	mov	rbx,  qword ptr [word ptr [rip + args]]
	mov	rdi, qword ptr [rbx]
	test	rdi, rdi
	je	.label_786
	mov	rsi, rax
	call	strcmp
	mov	ecx, eax
	xor	eax, eax
	test	ecx, ecx
	sete	al
	lea	rcx, [rbx + rax*8]
	mov	qword ptr [word ptr [rip + args]],  rcx
	jmp	.label_787
.label_786:
	xor	eax, eax
.label_787:
	pop	rbx
	ret	
	.section	.text
	.align	32
	#Procedure 0x408815
	.globl sub_408815
	.type sub_408815, @function
sub_408815:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x408820

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
	je	.label_812
	test	r14, r14
	je	.label_812
	mov	rsi, rbp
	mov	rdi, r12
	mov	qword ptr [rsp + 0x40], rsi
	mov	rbx, qword ptr [rsp + 0x28]
	mov	rdx, rbx
	call	peek_token_bracket
	mov	ebp, eax
	mov	al, byte ptr [r12 + 8]
	cmp	al, 0x19
	je	.label_817
	cmp	al, 2
	je	.label_818
	mov	dword ptr [rsp + 0x24], 0
	jmp	.label_820
.label_817:
	or	byte ptr [r14 + 0x20], 1
	test	bh, 1
	je	.label_821
	mov	esi, 0xa
	mov	rdi, r15
	call	bitset_set
.label_821:
	movsxd	rax, ebp
	mov	rsi, qword ptr [rsp + 0x40]
	add	qword ptr [rsi + 0x48], rax
	mov	rdi, r12
	mov	rdx, qword ptr [rsp + 0x28]
	call	peek_token_bracket
	mov	ebp, eax
	cmp	byte ptr [r12 + 8], 2
	je	.label_818
	mov	al, 1
	mov	dword ptr [rsp + 0x24], eax
.label_820:
	mov	qword ptr [rsp + 0x18], r14
	mov	qword ptr [rsp + 0x38], r13
	mov	eax, dword ptr [r12 + 8]
	cmp	al, 0x15
	jne	.label_790
	and	eax, 0xffffff00
	or	eax, 1
	mov	dword ptr [r12 + 8], eax
.label_790:
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
	jne	.label_807
	xor	eax, eax
	mov	qword ptr [rsp + 0x30], rax
	lea	rbp, [rsp + 0x48]
	jmp	.label_809
	.section	.text
	.align	32
	#Procedure 0x408974
	.globl sub_408974
	.type sub_408974, @function
sub_408974:

	nop	word ptr cs:[rax + rax]
.label_816:
	cmp	al, 2
	je	.label_801
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
	je	.label_809
	jmp	.label_807
.label_799:
	lea	rax, [rbx + rbx]
	mov	rdi, qword ptr [rbp]
	lea	rsi, [rax*4 + 4]
	call	realloc
	test	rax, rax
	je	.label_823
	lea	rcx, [rbx + rbx + 1]
	mov	qword ptr [rsp + 0x30], rcx
	mov	qword ptr [rbp], rax
	jmp	.label_796
	.section	.text
	.align	32
	#Procedure 0x4089ed
	.globl sub_4089ed
	.type sub_4089ed, @function
sub_4089ed:

	nop	dword ptr [rax]
.label_809:
	mov	rdi, r12
	mov	rsi, r13
	mov	rdx, rbx
	call	peek_token_bracket
	mov	r14d, eax
	mov	eax, dword ptr [rsp + 8]
	cmp	eax, 2
	je	.label_792
	cmp	eax, 4
	je	.label_792
	movzx	eax, byte ptr [r12 + 8]
	cmp	al, 0x16
	je	.label_794
	cmp	al, 2
	jne	.label_797
	jmp	.label_801
.label_794:
	movsxd	rax, r14d
	add	qword ptr [r13 + 0x48], rax
	lea	rdi, [rsp + 0x90]
	mov	rsi, r13
	mov	rdx, rbx
	call	peek_token_bracket
	movzx	ecx, byte ptr [rsp + 0x98]
	cmp	cl, 0x15
	je	.label_806
	cmp	cl, 2
	lea	rdx, [rsp + 0x78]
	je	.label_801
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
	jne	.label_807
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
	jmp	.label_810
.label_806:
	mov	eax, r14d
	neg	eax
	cdqe	
	add	qword ptr [r13 + 0x48], rax
	mov	byte ptr [r12 + 8], 1
.label_797:
	mov	eax, dword ptr [rsp + 8]
.label_792:
	mov	ecx, eax
	cmp	eax, 4
	ja	.label_788
	jmp	qword ptr [word ptr [+ (rcx * 8) + label_793]]
.label_2046:
	movzx	esi, byte ptr [rsp + 0x10]
	mov	rdi, r15
	call	bitset_set
	jmp	.label_798
.label_2047:
	mov	rbp, qword ptr [rsp + 0x18]
	mov	rbx, qword ptr [rbp + 0x28]
	cmp	qword ptr [rsp + 0x30], rbx
	je	.label_799
.label_796:
	mov	eax, dword ptr [rsp + 0x10]
	mov	rcx, qword ptr [rbp + 0x28]
	lea	rdx, [rcx + 1]
	mov	qword ptr [rbp + 0x28], rdx
	mov	rdx, qword ptr [rbp]
	mov	dword ptr [rdx + rcx*4], eax
	mov	rbx, qword ptr [rsp + 0x28]
	lea	rbp, [rsp + 0x48]
	jmp	.label_798
.label_2048:
	mov	rsi, qword ptr [rsp + 0x10]
	mov	rdi, r15
	call	build_equiv_class
	jmp	.label_810
.label_2049:
	mov	rsi, qword ptr [rsp + 0x10]
	mov	rdi, r15
	call	build_collating_symbol
	jmp	.label_810
.label_2050:
	mov	rdi, qword ptr [r13 + 0x78]
	mov	r8, qword ptr [rsp + 0x10]
	mov	rsi, r15
	mov	rdx, qword ptr [rsp + 0x18]
	mov	rcx, rbp
	mov	r9, rbx
	call	build_charclass
.label_810:
	mov	rcx, qword ptr [rsp]
	mov	dword ptr [rcx], eax
	test	eax, eax
	jne	.label_815
.label_798:
	movzx	eax, byte ptr [r12 + 8]
	cmp	al, 0x15
	jne	.label_816
	movsxd	rax, r14d
	add	qword ptr [r13 + 0x48], rax
	mov	eax, dword ptr [rsp + 0x24]
	test	al, al
	je	.label_819
	mov	rdi, r15
	call	bitset_not
.label_819:
	mov	rbx, qword ptr [rsp + 0x38]
	cmp	dword ptr [rbx + 0xb4], 2
	mov	r14, qword ptr [rsp + 0x18]
	jl	.label_822
	mov	rsi, qword ptr [rbx + 0x78]
	mov	rdi, r15
	call	bitset_mask
.label_822:
	cmp	qword ptr [r14 + 0x28], 0
	jne	.label_791
	cmp	qword ptr [r14 + 0x30], 0
	jne	.label_791
	cmp	qword ptr [r14 + 0x38], 0
	jne	.label_791
	cmp	qword ptr [r14 + 0x40], 0
	jne	.label_791
	cmp	dword ptr [rbx + 0xb4], 2
	jl	.label_795
	cmp	qword ptr [r14 + 0x48], 0
	jne	.label_791
	test	byte ptr [r14 + 0x20], 1
	jne	.label_791
.label_795:
	mov	rdi, r14
	call	free_charset
	mov	byte ptr [rsp + 0x58], 3
	mov	qword ptr [rsp + 0x50], r15
	lea	rcx, [rsp + 0x50]
	xor	esi, esi
	xor	edx, edx
	mov	rdi, rbx
	call	create_token_tree
	jmp	.label_805
.label_791:
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
	je	.label_808
	xor	eax, eax
	nop	word ptr cs:[rax + rax]
.label_814:
	cmp	qword ptr [r15 + rax*8], 0
	jne	.label_813
	inc	rax
	cmp	rax, 3
	jle	.label_814
	mov	rdi, r15
	call	free
	jmp	.label_811
.label_813:
	mov	byte ptr [rsp + 0x58], 3
	mov	qword ptr [rsp + 0x50], r15
	lea	rcx, [rsp + 0x50]
	xor	esi, esi
	xor	edx, edx
	mov	rdi, rbx
	call	create_token_tree
	test	rax, rax
	je	.label_808
	mov	ecx, 0xa
	mov	rdi, rbx
	mov	rsi, rax
	mov	rdx, rbp
	call	create_tree
.label_805:
	mov	rbp, rax
	test	rbp, rbp
	je	.label_808
.label_811:
	mov	rax, rbp
	add	rsp, 0xc8
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_801:
	mov	rax, qword ptr [rsp]
	mov	dword ptr [rax], 7
	mov	r14, qword ptr [rsp + 0x18]
	jmp	.label_789
.label_807:
	mov	rcx, qword ptr [rsp]
	mov	dword ptr [rcx], eax
.label_815:
	mov	r14, qword ptr [rsp + 0x18]
	jmp	.label_789
.label_818:
	mov	rax, qword ptr [rsp]
	mov	dword ptr [rax], 2
	jmp	.label_789
.label_812:
	mov	rdi, r15
	call	free
	mov	rdi, r14
	call	free
	mov	rax, qword ptr [rsp]
	mov	dword ptr [rax], 0xc
	jmp	.label_800
.label_788:
	mov	edi, OFFSET FLAT:label_802
	mov	esi, OFFSET FLAT:label_803
	mov	edx, 0xced
	mov	ecx, OFFSET FLAT:label_804
	call	__assert_fail
.label_823:
	mov	r14, rbp
.label_808:
	mov	rax, qword ptr [rsp]
	mov	dword ptr [rax], 0xc
.label_789:
	mov	rdi, r15
	call	free
	mov	rdi, r14
	call	free_charset
.label_800:
	xor	ebp, ebp
	jmp	.label_811
	.section	.text
	.align	32
	#Procedure 0x408d71
	.globl sub_408d71
	.type sub_408d71, @function
sub_408d71:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x408d80

	.globl search_duplicated_node
	.type search_duplicated_node, @function
search_duplicated_node:
	mov	r8, qword ptr [rdi + 0x10]
	lea	r10, [r8 - 1]
	mov	rax, -1
	test	r10, r10
	jle	.label_824
	mov	r9, qword ptr [rdi]
	mov	rcx, r10
	shl	rcx, 4
	mov	r11d, dword ptr [r9 + rcx + 8]
	mov	ecx, r11d
	and	ecx, 0x40000
	je	.label_824
	mov	r9, qword ptr [rdi + 0x20]
	shl	r8, 4
	add	r8, -0x18
	nop	word ptr [rax + rax]
.label_827:
	cmp	qword ptr [r9 + r10*8], rsi
	jne	.label_825
	shr	r11d, 8
	and	r11d, 0x3ff
	cmp	r11d, edx
	je	.label_826
.label_825:
	dec	r10
	test	r10, r10
	jle	.label_824
	mov	rcx, qword ptr [rdi]
	mov	r11d, dword ptr [rcx + r8]
	mov	ecx, r11d
	and	ecx, 0x40000
	add	r8, -0x10
	test	ecx, ecx
	jne	.label_827
	jmp	.label_824
.label_826:
	mov	rax, r10
.label_824:
	ret	
	.section	.text
	.align	32
	#Procedure 0x408dfc
	.globl sub_408dfc
	.type sub_408dfc, @function
sub_408dfc:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x408e00

	.globl nomoreargs
	.type nomoreargs, @function
nomoreargs:
	mov	rax,  qword ptr [word ptr [rip + args]]
	cmp	qword ptr [rax], 0
	sete	al
	ret	
	.section	.text
	.align	32
	#Procedure 0x408e0f
	.globl sub_408e0f
	.type sub_408e0f, @function
sub_408e0f:

	nop	
	.section	.text
	.align	32
	#Procedure 0x408e10

	.globl str_value
	.type str_value, @function
str_value:
	push	r14
	push	rbx
	push	rax
	mov	r14, rdi
	mov	edi, 0x18
	call	xmalloc
	mov	rbx, rax
	mov	dword ptr [rbx], 1
	mov	rdi, r14
	call	xstrdup
	mov	qword ptr [rbx + 8], rax
	mov	rax, rbx
	add	rsp, 8
	pop	rbx
	pop	r14
	ret	
	.section	.text
	.align	32
	#Procedure 0x408e41
	.globl sub_408e41
	.type sub_408e41, @function
sub_408e41:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x408e50

	.globl mbs_logical_cspn
	.type mbs_logical_cspn, @function
mbs_logical_cspn:
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x80
	mov	r14, rsi
	mov	rbx, rdi
	xor	r13d, r13d
	cmp	byte ptr [r14], 0
	je	.label_832
	call	__ctype_get_mb_cur_max
	cmp	rax, 2
	jb	.label_834
	mov	qword ptr [rsp + 0x10], rbx
	mov	byte ptr [rsp], 0
	mov	qword ptr [rsp + 4], 0
	mov	byte ptr [rsp + 0xc], 0
	lea	rdi, [rsp]
	call	mbuiter_multi_next
	xor	r13d, r13d
	cmp	byte ptr [rsp + 0x20], 0
	je	.label_836
	mov	eax, dword ptr [rsp + 0x24]
	test	eax, eax
	je	.label_832
.label_836:
	xor	r13d, r13d
	lea	r15, [rsp]
	lea	r12, [rsp + 0x40]
	xor	ebx, ebx
	nop	word ptr cs:[rax + rax]
.label_837:
	inc	rbx
	cmp	qword ptr [rsp + 0x18], 1
	jne	.label_833
	mov	rax, qword ptr [rsp + 0x10]
	movsx	esi, byte ptr [rax]
	mov	rdi, r14
	call	mbschr
	test	rax, rax
	je	.label_829
	jmp	.label_835
	.section	.text
	.align	32
	#Procedure 0x408ef9
	.globl sub_408ef9
	.type sub_408ef9, @function
sub_408ef9:

	nop	dword ptr [rax]
.label_833:
	mov	qword ptr [rsp + 0x50], r14
	mov	byte ptr [rsp + 0x40], 0
	mov	qword ptr [rsp + 0x44], 0
	jmp	.label_828
	.section	.text
	.align	32
	#Procedure 0x408f15
	.globl sub_408f15
	.type sub_408f15, @function
sub_408f15:

	nop	word ptr cs:[rax + rax]
.label_830:
	mov	rax, qword ptr [rsp + 0x58]
	add	qword ptr [rsp + 0x50], rax
.label_828:
	mov	byte ptr [rsp + 0x4c], 0
	mov	rdi, r12
	call	mbuiter_multi_next
	cmp	byte ptr [rsp + 0x60], 0
	setne	cl
	mov	eax, dword ptr [rsp + 0x64]
	je	.label_838
	test	eax, eax
	je	.label_829
.label_838:
	cmp	byte ptr [rsp + 0x20], 0
	je	.label_831
	xor	cl, 1
	test	cl, 1
	jne	.label_831
	cmp	eax, dword ptr [rsp + 0x24]
	jne	.label_830
	jmp	.label_835
.label_831:
	mov	rdx, qword ptr [rsp + 0x58]
	cmp	rdx, qword ptr [rsp + 0x18]
	jne	.label_830
	mov	rdi, qword ptr [rsp + 0x50]
	mov	rsi, qword ptr [rsp + 0x10]
	call	memcmp
	test	eax, eax
	jne	.label_830
	jmp	.label_835
	.section	.text
	.align	32
	#Procedure 0x408f81
	.globl sub_408f81
	.type sub_408f81, @function
sub_408f81:

	nop	word ptr cs:[rax + rax]
.label_829:
	mov	rax, qword ptr [rsp + 0x18]
	add	qword ptr [rsp + 0x10], rax
	mov	byte ptr [rsp + 0xc], 0
	mov	rdi, r15
	call	mbuiter_multi_next
	cmp	byte ptr [rsp + 0x20], 0
	je	.label_837
	mov	eax, dword ptr [rsp + 0x24]
	test	eax, eax
	jne	.label_837
	jmp	.label_832
.label_834:
	mov	rdi, rbx
	mov	rsi, r14
	call	strcspn
	xor	r13d, r13d
	cmp	byte ptr [rbx + rax], 0
	lea	rax, [rax + 1]
	cmovne	r13, rax
	jmp	.label_832
.label_835:
	mov	r13, rbx
.label_832:
	mov	rax, r13
	add	rsp, 0x80
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	ret	
	.section	.text
	.align	32
	#Procedure 0x408ff3
	.globl sub_408ff3
	.type sub_408ff3, @function
sub_408ff3:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x409000
	.globl c_islower
	.type c_islower, @function
c_islower:

	add	edi, -0x61
	cmp	edi, 0x1a
	setb	al
	ret	
	.section	.text
	.align	32
	#Procedure 0x40900a
	.globl sub_40900a
	.type sub_40900a, @function
sub_40900a:

	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x409010
	.globl quotearg_colon_mem
	.type quotearg_colon_mem, @function
quotearg_colon_mem:

	mov	edx, 0x3a
	jmp	quotearg_char_mem
	.section	.text
	.align	32
	#Procedure 0x40901a
	.globl sub_40901a
	.type sub_40901a, @function
sub_40901a:

	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x409020

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
	je	.label_839
	cmp	r15, -2
	jb	.label_839
	xor	edi, edi
	call	hard_locale
	test	al, al
	jne	.label_839
	movzx	eax, byte ptr [r14]
	mov	dword ptr [rbx], eax
	mov	r15d, 1
.label_839:
	mov	rax, r15
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	ret	
	.section	.text
	.align	32
	#Procedure 0x409076
	.globl sub_409076
	.type sub_409076, @function
sub_409076:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x409080

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
	jmp	.label_840
	.section	.text
	.align	32
	#Procedure 0x4090c7
	.globl sub_4090c7
	.type sub_4090c7, @function
sub_4090c7:

	nop	word ptr [rax + rax]
.label_954:
	mov	rdi, r13
	mov	rsi, qword ptr [rsp + 0x10]
	mov	rdx, qword ptr [rsp + 0x18]
	call	fetch_token
.label_840:
	movzx	eax, byte ptr [r13 + 8]
	dec	al
	movzx	eax, al
	cmp	al, 0x23
	ja	.label_841
	mov	r14, qword ptr [r12]
	jmp	qword ptr [word ptr [+ (rax * 8) + label_842]]
.label_1948:
	test	r15, r15
	jne	.label_952
.label_1945:
	test	rbx, rbx
	jne	.label_952
	test	rbp, rbp
	jne	.label_954
.label_1944:
	mov	rax, qword ptr [rsp + 0x18]
	test	eax, 0x20000
	jne	.label_956
	movzx	eax, byte ptr [r13 + 8]
	cmp	eax, 9
	jne	.label_956
	mov	rax, qword ptr [rsp + 8]
	mov	dword ptr [rax], 0x10
	jmp	.label_945
.label_952:
	mov	rax, qword ptr [rsp + 8]
	mov	dword ptr [rax], 0xd
	jmp	.label_945
.label_956:
	mov	byte ptr [r13 + 8], 1
	xor	esi, esi
	xor	edx, edx
	mov	rdi, r14
	mov	rcx, r13
	call	create_token_tree
	mov	rbp, rax
	test	rbp, rbp
	jne	.label_935
	jmp	.label_942
.label_1949:
	mov	rax, qword ptr [rsp + 0x10]
	mov	rsi, qword ptr [rax + 0x78]
	xor	r8d, r8d
	cmp	byte ptr [r13 + 8], 0x21
	sete	r8b
	mov	edx, OFFSET FLAT:label_689
	mov	ecx, OFFSET FLAT:label_966
	jmp	.label_967
.label_1950:
	mov	rax, qword ptr [rsp + 0x10]
	mov	rsi, qword ptr [rax + 0x78]
	xor	r8d, r8d
	cmp	byte ptr [r13 + 8], 0x23
	sete	r8b
	mov	edx, OFFSET FLAT:label_712
	mov	ecx, OFFSET FLAT:label_56
.label_967:
	mov	rdi, r14
	mov	rbx, qword ptr [rsp + 8]
	mov	r9, rbx
	call	build_charclass_op
	jmp	.label_953
.label_1940:
	xor	esi, esi
	xor	edx, edx
	mov	rdi, r14
	mov	rcx, r13
	call	create_token_tree
	mov	rbp, rax
	test	rbp, rbp
	je	.label_942
	cmp	dword ptr [r14 + 0xb4], 2
	jl	.label_935
	mov	r15, qword ptr [rsp + 0x10]
.label_943:
	mov	rax, qword ptr [r15 + 0x48]
	cmp	qword ptr [r15 + 0x68], rax
	jle	.label_935
	cmp	rax, qword ptr [r15 + 0x30]
	je	.label_935
	mov	rcx, qword ptr [r15 + 0x10]
	cmp	dword ptr [rcx + rax*4], -1
	jne	.label_935
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
	je	.label_942
	test	rbp, rbp
	jne	.label_943
	jmp	.label_942
.label_1941:
	mov	cl, byte ptr [r13]
	mov	eax, 1
	shl	eax, cl
	cdqe	
	test	qword ptr [r14 + 0xa8], rax
	je	.label_944
	or	qword ptr [r14 + 0xa0], rax
	xor	esi, esi
	xor	edx, edx
	mov	rdi, r14
	mov	rcx, r13
	call	create_token_tree
	mov	rbp, rax
	test	rbp, rbp
	je	.label_942
	inc	qword ptr [r14 + 0x98]
	or	byte ptr [r14 + 0xb0], 2
	jmp	.label_935
.label_1942:
	xor	esi, esi
	xor	edx, edx
	mov	rdi, r14
	mov	rcx, r13
	call	create_token_tree
	mov	rbp, rax
	test	rbp, rbp
	je	.label_942
	cmp	dword ptr [r14 + 0xb4], 2
	jl	.label_935
	or	byte ptr [r14 + 0xb0], 2
	jmp	.label_935
.label_1943:
	mov	r8, qword ptr [rsp + 0x20]
	inc	r8
	mov	rdi, qword ptr [rsp + 0x10]
	mov	rsi, r12
	mov	rdx, r13
	mov	rcx, qword ptr [rsp + 0x18]
	mov	rbx, qword ptr [rsp + 8]
	mov	r9, rbx
	call	parse_sub_exp
	jmp	.label_953
.label_1946:
	mov	eax, dword ptr [r13]
	test	ax, 0x30f
	mov	r15, qword ptr [rsp + 0x10]
	je	.label_955
	test	byte ptr [r14 + 0xb0], 0x10
	jne	.label_959
	mov	rdi, r14
	call	init_word_char
.label_959:
	mov	eax, dword ptr [r13]
.label_955:
	cmp	eax, 0x200
	je	.label_961
	cmp	eax, 0x100
	jne	.label_964
.label_961:
	cmp	dword ptr [r13], 0x100
	jne	.label_969
	mov	dword ptr [r13], 6
	xor	esi, esi
	xor	edx, edx
	mov	rdi, r14
	mov	rcx, r13
	call	create_token_tree
	mov	rbx, rax
	mov	eax, 9
	jmp	.label_950
.label_1947:
	mov	rdi, qword ptr [rsp + 0x10]
	mov	rsi, r14
	mov	rdx, r13
	mov	rcx, qword ptr [rsp + 0x18]
	mov	rbx, qword ptr [rsp + 8]
	mov	r8, rbx
	call	parse_bracket_exp
.label_953:
	mov	rbp, rax
	test	rbp, rbp
	jne	.label_935
	xor	eax, eax
	mov	qword ptr [rsp], rax
	mov	eax, dword ptr [rbx]
	test	eax, eax
	jne	.label_841
.label_935:
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
.label_938:
	movzx	eax, byte ptr [r13 + 8]
	cmp	rax, 0x17
	ja	.label_974
	bt	r12, rax
	jae	.label_974
	mov	rdi, rbp
	mov	rsi, qword ptr [rsp + 0x10]
	mov	rdx, r14
	mov	rcx, r13
	mov	r8, qword ptr [rsp + 0x18]
	mov	r9, rbx
	call	parse_dup_op
	test	rax, rax
	jne	.label_936
	mov	ecx, dword ptr [rbx]
	test	ecx, ecx
	jne	.label_937
.label_936:
	test	r15, r15
	mov	rbp, rax
	je	.label_938
	movzx	ecx, byte ptr [r13 + 8]
	cmp	cl, 0x17
	je	.label_939
	cmp	cl, 0xb
	mov	rbp, rax
	jne	.label_938
.label_939:
	test	rax, rax
	je	.label_941
	mov	esi, OFFSET FLAT:free_tree
	xor	edx, edx
	mov	rdi, rax
	call	postorder
.label_941:
	mov	dword ptr [rbx], 0xd
.label_945:
	xor	eax, eax
	mov	qword ptr [rsp], rax
	jmp	.label_841
.label_974:
	mov	qword ptr [rsp], rbp
.label_841:
	mov	rax, qword ptr [rsp]
	add	rsp, 0x28
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_1951:
	mov	rax, qword ptr [rsp + 8]
	mov	dword ptr [rax], 5
	jmp	.label_945
.label_964:
	xor	esi, esi
	xor	edx, edx
	mov	rdi, r14
	mov	rcx, r13
	call	create_token_tree
	jmp	.label_946
.label_969:
	mov	dword ptr [r13], 5
	xor	esi, esi
	xor	edx, edx
	mov	rdi, r14
	mov	rcx, r13
	call	create_token_tree
	mov	rbx, rax
	mov	eax, 0xa
.label_950:
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
	je	.label_942
	test	rbp, rbp
	je	.label_942
.label_946:
	test	rax, rax
	je	.label_942
	mov	qword ptr [rsp], rax
	mov	rdi, r13
	mov	rsi, r15
	mov	rdx, qword ptr [rsp + 0x18]
	call	fetch_token
	jmp	.label_841
.label_937:
	xor	eax, eax
	mov	qword ptr [rsp], rax
	test	rbp, rbp
	je	.label_841
	xor	eax, eax
	mov	qword ptr [rsp], rax
	mov	esi, OFFSET FLAT:free_tree
	xor	edx, edx
	mov	rdi, rbp
	call	postorder
	jmp	.label_841
.label_942:
	mov	rax, qword ptr [rsp + 8]
	mov	dword ptr [rax], 0xc
	jmp	.label_945
.label_944:
	mov	rax, qword ptr [rsp + 8]
	mov	dword ptr [rax], 6
	jmp	.label_945
	.section	.text
	.align	32
	#Procedure 0x409545
	.globl sub_409545
	.type sub_409545, @function
sub_409545:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x409550

	.globl hard_locale
	.type hard_locale, @function
hard_locale:
	push	rbx
	xor	esi, esi
	call	setlocale
	mov	bl, 1
	test	rax, rax
	je	.label_844
	cmp	byte ptr [rax], 0x43
	jne	.label_846
	cmp	byte ptr [rax + 1], 0
	je	.label_843
.label_846:
	mov	esi, OFFSET FLAT:label_845
	mov	rdi, rax
	call	strcmp
	test	eax, eax
	jne	.label_844
.label_843:
	xor	ebx, ebx
.label_844:
	mov	eax, ebx
	pop	rbx
	ret	
	.section	.text
	.align	32
	#Procedure 0x409581
	.globl sub_409581
	.type sub_409581, @function
sub_409581:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x409590
	.globl xcalloc
	.type xcalloc, @function
xcalloc:

	push	rax
	movabs	rax, 0x7fffffffffffffff
	xor	edx, edx
	div	rsi
	cmp	rax, rdi
	jb	.label_847
	call	rpl_calloc
	test	rax, rax
	je	.label_847
	pop	rcx
	ret	
.label_847:
	call	xalloc_die
	.section	.text
	.align	32
	#Procedure 0x4095b6
	.globl sub_4095b6
	.type sub_4095b6, @function
sub_4095b6:

	nop	word ptr cs:[rax + rax]
.label_848:
	call	abort
	.section	.text
	.align	32
	#Procedure 0x4095c5
	.globl sub_4095c5
	.type sub_4095c5, @function
sub_4095c5:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4095cf

	.globl tostring
	.type tostring, @function
tostring:
	push	r15
	push	r14
	push	rbx
	mov	rbx, rdi
	mov	eax, dword ptr [rbx]
	cmp	eax, 1
	je	.label_849
	test	eax, eax
	jne	.label_848
	lea	r14, [rbx + 8]
	xor	edi, edi
	mov	esi, 0xa
	mov	rdx, r14
	call	__gmpz_get_str
	mov	r15, rax
	mov	rdi, r14
	call	__gmpz_clear
	mov	qword ptr [rbx + 8], r15
	mov	dword ptr [rbx], 1
.label_849:
	pop	rbx
	pop	r14
	pop	r15
	ret	
	.section	.text
	.align	32
	#Procedure 0x409610

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
	#Procedure 0x409621
	.globl sub_409621
	.type sub_409621, @function
sub_409621:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x409630

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
	jne	.label_850
	movzx	esi, byte ptr [rbx]
	mov	rdi, r14
	call	bitset_set
	xor	eax, eax
.label_850:
	add	rsp, 8
	pop	rbx
	pop	r14
	ret	
	.section	.text
	.align	32
	#Procedure 0x409665
	.globl sub_409665
	.type sub_409665, @function
sub_409665:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x409670

	.globl free_workarea_compile
	.type free_workarea_compile, @function
free_workarea_compile:
	push	r14
	push	rbx
	push	rax
	mov	r14, qword ptr [rdi]
	mov	rdi, qword ptr [r14 + 0x70]
	test	rdi, rdi
	je	.label_851
.label_852:
	mov	rbx, qword ptr [rdi]
	call	free
	test	rbx, rbx
	mov	rdi, rbx
	jne	.label_852
.label_851:
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
	#Procedure 0x4096c4
	.globl sub_4096c4
	.type sub_4096c4, @function
sub_4096c4:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4096d0

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
	#Procedure 0x4096fd
	.globl sub_4096fd
	.type sub_4096fd, @function
sub_4096fd:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x409700

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
	#Procedure 0x409713
	.globl sub_409713
	.type sub_409713, @function
sub_409713:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x409720

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
	je	.label_853
	xor	eax, eax
	xorps	xmm0, xmm0
	xor	ecx, ecx
.label_854:
	mov	rdx, qword ptr [r13 + 0x38]
	movups	xmmword ptr [rdx + rax], xmm0
	mov	qword ptr [rdx + rax + 0x10], 0
	inc	rcx
	mov	rdx, qword ptr [r13 + 0x10]
	add	rax, 0x18
	cmp	rcx, rdx
	jb	.label_854
	xor	eax, eax
	test	rdx, rdx
	je	.label_853
	xor	r14d, r14d
	nop	dword ptr [rax + rax]
.label_855:
	mov	rax, qword ptr [r13 + 0x30]
	lea	r15, [r14 + r14*2]
	cmp	qword ptr [rax + r15*8 + 8], 0
	jle	.label_856
	mov	r12, qword ptr [rax + r15*8 + 0x10]
	xor	ebx, ebx
	nop	word ptr [rax + rax]
.label_857:
	mov	rax, qword ptr [r13 + 0x38]
	mov	rcx, qword ptr [r12 + rbx*8]
	lea	rcx, [rcx + rcx*2]
	lea	rdi, [rax + rcx*8]
	mov	rsi, r14
	call	re_node_set_insert_last
	mov	ecx, eax
	mov	eax, 0xc
	test	cl, cl
	je	.label_853
	inc	rbx
	mov	rax, qword ptr [r13 + 0x30]
	cmp	rbx, qword ptr [rax + r15*8 + 8]
	jl	.label_857
.label_856:
	inc	r14
	xor	eax, eax
	cmp	r14, qword ptr [r13 + 0x10]
	jb	.label_855
.label_853:
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	ret	
	.section	.text
	.align	32
	#Procedure 0x4097d6
	.globl sub_4097d6
	.type sub_4097d6, @function
sub_4097d6:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4097e0
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
	#Procedure 0x4097ed
	.globl sub_4097ed
	.type sub_4097ed, @function
sub_4097ed:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x4097f0

	.globl quotearg_n_custom
	.type quotearg_n_custom, @function
quotearg_n_custom:
	mov	r8, -1
	jmp	quotearg_n_custom_mem
	.section	.text
	.align	32
	#Procedure 0x4097f9
	.globl sub_4097f9
	.type sub_4097f9, @function
sub_4097f9:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x409800

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
	mov	rax,  qword ptr [word ptr [rip + label_858]]
	mov	qword ptr [rsp + 0x30], rax
	movups	xmm0,  xmmword ptr [word ptr [rip + label_859]]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0,  xmmword ptr [word ptr [rip + label_860]]
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
	#Procedure 0x409868
	.globl sub_409868
	.type sub_409868, @function
sub_409868:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x409870

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
	#Procedure 0x409893
	.globl sub_409893
	.type sub_409893, @function
sub_409893:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4098a0

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
	ja	.label_862
	lea	rdi, [rbp + 1]
	mov	qword ptr [r15 + 8], rdi
	shl	rdi, 4
	call	malloc
	mov	qword ptr [r15], rax
	mov	eax, 1
.label_867:
	mov	rbx, rax
	lea	rax, [rbx + rbx]
	cmp	rbx, rbp
	jbe	.label_867
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
	jne	.label_864
	mov	cl, byte ptr [rax + 1]
	or	cl, 0x20
	cmp	cl, 0x74
	jne	.label_864
	mov	cl, byte ptr [rax + 2]
	or	cl, 0x20
	cmp	cl, 0x66
	jne	.label_864
	xor	ecx, ecx
	cmp	byte ptr [rax + 3], 0x2d
	sete	cl
	cmp	byte ptr [rax + rcx + 3], 0x38
	jne	.label_864
	cmp	byte ptr [rax + rcx + 4], 0
	jne	.label_864
	or	byte ptr [r15 + 0xb0], 4
.label_864:
	mov	al, byte ptr [r15 + 0xb0]
	mov	ecx, eax
	and	cl, 0xf7
	mov	byte ptr [r15 + 0xb0], cl
	cmp	dword ptr [r15 + 0xb4], 2
	jl	.label_865
	test	al, 4
	jne	.label_869
	mov	edi, 0x20
	mov	esi, 1
	call	rpl_calloc
	mov	qword ptr [r15 + 0x78], rax
	test	rax, rax
	je	.label_862
	xor	r14d, r14d
	xor	r12d, r12d
	nop	word ptr [rax + rax]
.label_868:
	xor	ebp, ebp
	mov	ebx, r12d
	nop	word ptr cs:[rax + rax]
.label_870:
	mov	edi, ebx
	call	btowc
	cmp	eax, -1
	je	.label_863
	mov	edx, 1
	mov	ecx, ebp
	shl	rdx, cl
	mov	rcx, qword ptr [r15 + 0x78]
	or	qword ptr [rcx + r14*8], rdx
.label_863:
	cmp	ebx, 0x7f
	ja	.label_866
	cmp	ebx, eax
	je	.label_866
	or	byte ptr [r15 + 0xb0], 8
.label_866:
	inc	rbp
	inc	ebx
	cmp	rbp, 0x40
	jne	.label_870
	add	r12d, 0x40
	inc	r14
	cmp	r14, 4
	jne	.label_868
	jmp	.label_865
.label_869:
	mov	qword ptr [word ptr [r15 + 120]], OFFSET FLAT:utf8_sb_map
.label_865:
	cmp	qword ptr [r15], 0
	je	.label_861
	xor	r14d, r14d
	cmp	qword ptr [r15 + 0x40], 0
	jne	.label_862
.label_861:
	mov	r14d, 0xc
.label_862:
	mov	eax, r14d
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x409aa3
	.globl sub_409aa3
	.type sub_409aa3, @function
sub_409aa3:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x409ab0
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
	#Procedure 0x409ad7
	.globl sub_409ad7
	.type sub_409ad7, @function
sub_409ad7:

	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x409ae0

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
	jge	.label_871
	lea	r13, [r12 + 0x20]
	jmp	.label_872
.label_873:
	xor	ecx, ecx
	test	r14, r14
	je	.label_875
	test	rax, rax
	je	.label_875
	mov	rax, qword ptr [r12]
	movzx	ecx, byte ptr [rax + rbx]
.label_875:
	mov	qword ptr [r13], rbp
	mov	eax, 1
	jmp	.label_874
	.section	.text
	.align	32
	#Procedure 0x409b33
	.globl sub_409b33
	.type sub_409b33, @function
sub_409b33:

	nop	word ptr cs:[rax + rax]
.label_872:
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
	jae	.label_873
	mov	ecx, dword ptr [rsp + 0xc]
.label_874:
	add	rbx, rax
	cmp	rbx, r15
	jl	.label_872
.label_871:
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
	#Procedure 0x409b93
	.globl sub_409b93
	.type sub_409b93, @function
sub_409b93:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x409ba0

	.globl getsize
	.type getsize, @function
getsize:
	push	rbx
	mov	rbx, rdi
	mov	rax, -1
	cmp	dword ptr [rbx + 4], 0
	js	.label_876
	mov	rdi, rbx
	call	__gmpz_fits_ulong_p
	test	eax, eax
	je	.label_877
	mov	rdi, rbx
	call	__gmpz_get_ui
	cmp	rax, -1
	jne	.label_876
.label_877:
	mov	rax, -2
.label_876:
	pop	rbx
	ret	
	.section	.text
	.align	32
	#Procedure 0x409bd4
	.globl sub_409bd4
	.type sub_409bd4, @function
sub_409bd4:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x409be0

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
	jne	.label_883
	mov	rax, qword ptr [rbp + 0x30]
	mov	qword ptr [rax + r14*8 + 8], -1
	mov	rax, qword ptr [rbp]
	mov	rbx, r12
	shl	rbx, 4
	mov	r8d, dword ptr [rax + rbx + 8]
	shr	r8d, 8
	and	r8d, 0x3ff
	je	.label_882
	mov	rcx, qword ptr [rbp + 0x28]
	cmp	qword ptr [rcx + r14*8 + 8], 0
	je	.label_882
	mov	rcx, qword ptr [rcx + r14*8 + 0x10]
	mov	rcx, qword ptr [rcx]
	shl	rcx, 4
	test	byte ptr [rax + rcx + 0xa], 4
	jne	.label_882
	mov	rdi, rbp
	mov	rsi, r12
	mov	rdx, r12
	mov	rcx, r12
	call	duplicate_node_closure
	test	eax, eax
	jne	.label_883
.label_882:
	mov	rax, qword ptr [rbp]
	test	byte ptr [rax + rbx + 8], 8
	mov	qword ptr [rsp + 0x28], r15
	mov	qword ptr [rsp + 0x20], r12
	je	.label_884
	mov	rax, qword ptr [rbp + 0x28]
	cmp	qword ptr [rax + r14*8 + 8], 0
	jle	.label_884
	xor	r15d, r15d
	lea	rbx, [rsp + 0x30]
	xor	r12d, r12d
	nop	word ptr cs:[rax + rax]
.label_880:
	mov	rcx, qword ptr [rbp + 0x28]
	mov	rax, qword ptr [rbp + 0x30]
	mov	rcx, qword ptr [rcx + r14*8 + 0x10]
	mov	rdx, qword ptr [rcx + r12*8]
	lea	r13, [rdx + rdx*2]
	mov	rcx, qword ptr [rax + r13*8 + 8]
	cmp	rcx, -1
	je	.label_878
	test	rcx, rcx
	jne	.label_879
	xor	ecx, ecx
	mov	rdi, rbx
	mov	rsi, rbp
	call	calc_eclosure_iter
	test	eax, eax
	je	.label_887
	jmp	.label_883
	.section	.text
	.align	32
	#Procedure 0x409cfb
	.globl sub_409cfb
	.type sub_409cfb, @function
sub_409cfb:

	nop	dword ptr [rax + rax]
.label_879:
	mov	rcx, qword ptr [rax + r13*8 + 0x10]
	mov	qword ptr [rsp + 0x40], rcx
	movups	xmm0, xmmword ptr [rax + r13*8]
	movaps	xmmword ptr [rsp + 0x30], xmm0
.label_887:
	lea	rdi, [rsp + 8]
	mov	rsi, rbx
	call	re_node_set_merge
	test	eax, eax
	jne	.label_883
	mov	rax, qword ptr [rbp + 0x30]
	cmp	qword ptr [rax + r13*8 + 8], 0
	jne	.label_885
	mov	rdi, qword ptr [rsp + 0x40]
	call	free
.label_878:
	mov	r15b, 1
.label_885:
	inc	r12
	mov	rax, qword ptr [rbp + 0x28]
	cmp	r12, qword ptr [rax + r14*8 + 8]
	jl	.label_880
	jmp	.label_888
.label_886:
	mov	rcx, qword ptr [rsp + 0x18]
	mov	qword ptr [rax + r14*8 + 0x10], rcx
	movups	xmm0, xmmword ptr [rsp + 8]
	movups	xmmword ptr [rax + r14*8], xmm0
.label_881:
	mov	rax, qword ptr [rsp + 0x18]
	mov	qword ptr [rdx + 0x10], rax
	movups	xmm0, xmmword ptr [rsp + 8]
	movups	xmmword ptr [rdx], xmm0
	xor	eax, eax
.label_883:
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
	#Procedure 0x409d8c
	.globl sub_409d8c
	.type sub_409d8c, @function
sub_409d8c:

	nop	dword ptr [rax + rax]
.label_884:
	xor	r15d, r15d
.label_888:
	lea	rdi, [rsp + 8]
	mov	rsi, qword ptr [rsp + 0x20]
	call	re_node_set_insert
	mov	ecx, eax
	mov	eax, 0xc
	test	cl, cl
	mov	rdx, qword ptr [rsp + 0x28]
	je	.label_883
	test	r15b, 1
	mov	rax, qword ptr [rbp + 0x30]
	je	.label_886
	mov	ecx, dword ptr [rsp + 4]
	test	cl, cl
	jne	.label_886
	mov	qword ptr [rax + r14*8 + 8], 0
	jmp	.label_881
.label_892:
	mov	rdi, rbx
	call	freev
	mov	rdi, rbp
	call	freev
	xor	edi, edi
	call	int_value
.label_891:
	mov	rbx, rax
	jmp	.label_889
	.section	.text
	.align	32
	#Procedure 0x409dec
	.globl sub_409dec
	.type sub_409dec, @function
sub_409dec:

	nop	dword ptr [rax]
.label_893:
	mov	rax, rbx
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x409df8
	.globl sub_409df8
	.type sub_409df8, @function
sub_409df8:

	nop	
	.section	.text
	.align	32
	#Procedure 0x409df9

	.globl eval1
	.type eval1, @function
eval1:
	push	rbp
	push	r14
	push	rbx
	mov	r14d, edi
	movzx	edi, r14b
	call	eval2
	jmp	.label_891
	.section	.text
	.align	32
	#Procedure 0x409e0b
	.globl sub_409e0b
	.type sub_409e0b, @function
sub_409e0b:

	nop	word ptr cs:[rax + rax]
.label_895:
	xor	eax, eax
.label_894:
	movzx	edi, al
	call	eval2
	mov	rbp, rax
	mov	rdi, rbx
	call	null
	test	al, al
	jne	.label_892
	mov	rdi, rbp
	call	null
	test	al, al
	je	.label_896
	jmp	.label_892
.label_896:
	mov	rdi, rbp
	call	freev
.label_889:
	mov	edi, OFFSET FLAT:label_890
	call	nextarg
	test	al, al
	je	.label_893
	test	r14b, r14b
	je	.label_895
	mov	rdi, rbx
	call	null
	xor	al, 1
	jmp	.label_894
	.section	.text
	.align	32
	#Procedure 0x409e67
	.globl sub_409e67
	.type sub_409e67, @function
sub_409e67:

	nop	word ptr [rax + rax]
.label_900:
	mov	rax, qword ptr [rsi + 8]
	test	rax, rax
	je	.label_897
	mov	rcx, qword ptr [rsi + 0x20]
	mov	qword ptr [rax + 0x20], rcx
.label_897:
	mov	rax, qword ptr [rsi + 0x10]
	test	rax, rax
	je	.label_898
.label_899:
	mov	rcx, qword ptr [rsi + 0x20]
	mov	qword ptr [rax + 0x20], rcx
.label_898:
	xor	eax, eax
	ret	
	.section	.text
	.align	32
	#Procedure 0x409e95
	.globl sub_409e95
	.type sub_409e95, @function
sub_409e95:

	nop	word ptr cs:[rax + rax]
.label_901:
	mov	rax, qword ptr [rsi + 8]
	mov	rcx, qword ptr [rsi + 0x10]
	mov	rcx, qword ptr [rcx + 0x18]
	mov	qword ptr [rax + 0x20], rcx
	mov	rax, qword ptr [rsi + 0x10]
	jmp	.label_899
	.section	.text
	.align	32
	#Procedure 0x409eba

	.globl calc_next
	.type calc_next, @function
calc_next:
	mov	al, byte ptr [rsi + 0x30]
	cmp	al, 0x10
	je	.label_901
	cmp	al, 0xb
	jne	.label_900
	mov	rax, qword ptr [rsi + 8]
	mov	qword ptr [rax + 0x20], rsi
	xor	eax, eax
	ret	
	.section	.text
	.align	32
	#Procedure 0x409ed0

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
	jle	.label_912
	mov	r8, qword ptr [r14 + 0x98]
	mov	rax, qword ptr [r14 + 0x48]
	mov	qword ptr [rsp + 0x10], rax
	xor	ebx, ebx
	mov	qword ptr [rsp + 0x28], r13
	mov	qword ptr [rsp + 8], r8
	nop	dword ptr [rax + rax]
.label_918:
	mov	rax, qword ptr [r13 + 0x10]
	mov	rsi, qword ptr [rax + rbx*8]
	mov	rax, qword ptr [r8]
	mov	rcx, rsi
	shl	rcx, 4
	mov	eax, dword ptr [rax + rcx + 8]
	mov	r15d, eax
	cmp	al, 4
	jne	.label_904
	mov	eax, r15d
	mov	ebp, eax
	shr	ebp, 8
	test	bp, 0x3ff
	mov	qword ptr [rsp + 0x18], rsi
	je	.label_905
	mov	edx, dword ptr [r14 + 0xa0]
	mov	rdi, r14
	mov	rsi, qword ptr [rsp + 0x10]
	call	re_string_context_at
	mov	r8, qword ptr [rsp + 8]
	mov	ecx, eax
	and	ecx, 1
	test	bpl, 4
	je	.label_913
	test	ecx, ecx
	je	.label_904
.label_913:
	mov	edx, r15d
	test	dh, 8
	je	.label_917
	test	ecx, ecx
	jne	.label_904
.label_917:
	mov	ecx, r15d
	test	ch, 0x20
	je	.label_903
	mov	ecx, eax
	and	ecx, 2
	je	.label_904
.label_903:
	test	bpl, bpl
	jns	.label_905
	and	eax, 8
	je	.label_904
	nop	word ptr cs:[rax + rax]
.label_905:
	mov	r12, qword ptr [r14 + 0xc8]
	mov	rdi, r14
	mov	rsi, qword ptr [rsp + 0x18]
	mov	rdx, qword ptr [rsp + 0x10]
	call	get_subexp
	mov	rsi, qword ptr [rsp + 0x18]
	mov	r8, qword ptr [rsp + 8]
	mov	dword ptr [rsp + 4], eax
	test	eax, eax
	jne	.label_906
	cmp	r12, qword ptr [r14 + 0xc8]
	jge	.label_904
	lea	rax, [r12 + r12*4]
	lea	rbp, [rax*8 + 0x18]
	mov	qword ptr [rsp + 0x30], rbx
	nop	dword ptr [rax]
.label_916:
	mov	rax, qword ptr [r14 + 0xd8]
	cmp	qword ptr [rax + rbp - 0x18], rsi
	jne	.label_902
	mov	rcx, qword ptr [rsp + 0x10]
	cmp	qword ptr [rax + rbp - 0x10], rcx
	jne	.label_902
	mov	rcx, qword ptr [rax + rbp - 8]
	mov	rdi, qword ptr [rax + rbp]
	mov	rbx, qword ptr [r8 + 0x30]
	mov	qword ptr [rsp + 0x20], rbx
	mov	qword ptr [rsp + 0x48], rcx
	mov	qword ptr [rsp + 0x40], rdi
	cmp	rdi, rcx
	jne	.label_911
	mov	rcx, qword ptr [r8 + 0x28]
	lea	rdx, [rsi + rsi*2]
	mov	rcx, qword ptr [rcx + rdx*8 + 0x10]
	jmp	.label_910
.label_911:
	lea	rcx, [rsi*8]
	add	rcx, qword ptr [r8 + 0x18]
.label_910:
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
	je	.label_909
	mov	rdx, qword ptr [rcx + 0x10]
.label_909:
	mov	qword ptr [rsp + 0x38], rdx
	mov	rcx, qword ptr [rsp + 0x20]
	lea	rcx, [rcx + rbx*8]
	test	rsi, rsi
	mov	rbx, qword ptr [rsp + 0x30]
	mov	qword ptr [rsp + 0x20], rcx
	je	.label_907
	mov	r15d, eax
	mov	rsi, qword ptr [rsi + 0x50]
	lea	rbx, [rsp + 0x50]
	mov	rdi, rbx
	mov	rdx, rcx
	call	re_node_set_init_union
	mov	dword ptr [rsp + 4], eax
	test	eax, eax
	jne	.label_914
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
	jne	.label_915
	mov	eax, dword ptr [rsp + 4]
	test	eax, eax
	jne	.label_906
.label_915:
	mov	r13, qword ptr [rsp + 0x28]
	mov	r8, qword ptr [rsp + 8]
	mov	rsi, qword ptr [rsp + 0x18]
	mov	rbx, qword ptr [rsp + 0x30]
	jmp	.label_908
.label_907:
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
	jne	.label_908
	mov	eax, dword ptr [rsp + 4]
	test	eax, eax
	jne	.label_906
	nop	dword ptr [rax]
.label_908:
	mov	rax, qword ptr [rsp + 0x40]
	cmp	rax, qword ptr [rsp + 0x48]
	jne	.label_902
	mov	rax, qword ptr [r14 + 0xb8]
	mov	rcx, qword ptr [rsp + 0x10]
	mov	rax, qword ptr [rax + rcx*8]
	mov	rcx, qword ptr [rsp + 0x38]
	cmp	qword ptr [rax + 0x10], rcx
	jle	.label_902
	mov	rdi, r14
	mov	rsi, qword ptr [rsp + 0x20]
	mov	rdx, qword ptr [rsp + 0x10]
	call	check_subexp_matching_top
	mov	dword ptr [rsp + 4], eax
	test	eax, eax
	jne	.label_906
	mov	rdi, r14
	mov	rsi, qword ptr [rsp + 0x20]
	call	transit_state_bkref
	mov	rsi, qword ptr [rsp + 0x18]
	mov	r8, qword ptr [rsp + 8]
	mov	dword ptr [rsp + 4], eax
	test	eax, eax
	jne	.label_906
.label_902:
	inc	r12
	add	rbp, 0x28
	cmp	r12, qword ptr [r14 + 0xc8]
	jl	.label_916
	nop	word ptr cs:[rax + rax]
.label_904:
	inc	rbx
	cmp	rbx, qword ptr [r13 + 8]
	jl	.label_918
.label_912:
	mov	dword ptr [rsp + 4], 0
.label_906:
	mov	eax, dword ptr [rsp + 4]
	add	rsp, 0x68
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_914:
	mov	rdi, qword ptr [rsp + 0x60]
	call	free
	jmp	.label_906
	.section	.text
	.align	32
	#Procedure 0x40a244
	.globl sub_40a244
	.type sub_40a244, @function
sub_40a244:

	nop	word ptr cs:[rax + rax]
.label_921:
	pop	rbx
	pop	r14
	pop	r15
	ret	
	.section	.text
	.align	32
	#Procedure 0x40a256
	.globl sub_40a256
	.type sub_40a256, @function
sub_40a256:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x40a25a

	.globl free_fail_stack_return
	.type free_fail_stack_return, @function
free_fail_stack_return:
	push	r15
	push	r14
	push	rbx
	mov	r14, rdi
	test	r14, r14
	je	.label_921
	cmp	qword ptr [r14], 0
	jle	.label_920
	xor	ebx, ebx
	xor	r15d, r15d
	nop	dword ptr [rax + rax]
.label_919:
	mov	rax, qword ptr [r14 + 0x10]
	mov	rdi, qword ptr [rax + rbx + 0x28]
	call	free
	mov	rax, qword ptr [r14 + 0x10]
	mov	rdi, qword ptr [rax + rbx + 0x10]
	call	free
	inc	r15
	add	rbx, 0x30
	cmp	r15, qword ptr [r14]
	jl	.label_919
.label_920:
	mov	rdi, qword ptr [r14 + 0x10]
	pop	rbx
	pop	r14
	pop	r15
	jmp	free
.label_924:
	mov	rdi, r14
	mov	esi, ebx
	add	rsp, 0x48
	pop	rbx
	pop	r14
	jmp	strchr
	.section	.text
	.align	32
	#Procedure 0x40a2c1
	.globl sub_40a2c1
	.type sub_40a2c1, @function
sub_40a2c1:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40a2cc

	.globl mbschr
	.type mbschr, @function
mbschr:
	push	r14
	push	rbx
	sub	rsp, 0x48
	mov	ebx, esi
	mov	r14, rdi
	call	__ctype_get_mb_cur_max
	mov	ecx, ebx
	and	ecx, 0xf0
	cmp	ecx, 0x30
	jb	.label_924
	cmp	rax, 2
	jb	.label_924
	mov	qword ptr [rsp + 0x18], r14
	mov	byte ptr [rsp + 8], 0
	mov	qword ptr [rsp + 0xc], 0
	mov	byte ptr [rsp + 0x14], 0
	lea	rdi, [rsp + 8]
	call	mbuiter_multi_next
	xor	eax, eax
	cmp	byte ptr [rsp + 0x28], 0
	je	.label_925
	mov	ecx, dword ptr [rsp + 0x2c]
	test	ecx, ecx
	je	.label_923
.label_925:
	lea	r14, [rsp + 8]
	nop	word ptr cs:[rax + rax]
.label_922:
	cmp	qword ptr [rsp + 0x20], 1
	jne	.label_926
	mov	rax, qword ptr [rsp + 0x18]
	cmp	byte ptr [rax], bl
	je	.label_923
.label_926:
	mov	rax, qword ptr [rsp + 0x20]
	add	qword ptr [rsp + 0x18], rax
	mov	byte ptr [rsp + 0x14], 0
	mov	rdi, r14
	call	mbuiter_multi_next
	cmp	byte ptr [rsp + 0x28], 0
	je	.label_922
	mov	eax, dword ptr [rsp + 0x2c]
	test	eax, eax
	mov	eax, 0
	jne	.label_922
.label_923:
	add	rsp, 0x48
	pop	rbx
	pop	r14
	ret	
	.section	.text
	.align	32
	#Procedure 0x40a380

	.globl calc_state_hash
	.type calc_state_hash, @function
calc_state_hash:
	mov	rcx, qword ptr [rdi + 8]
	mov	eax, esi
	add	rax, rcx
	test	rcx, rcx
	jle	.label_927
	mov	rcx, qword ptr [rdi + 8]
	mov	rdx, qword ptr [rdi + 0x10]
	xor	esi, esi
	nop	dword ptr [rax + rax]
.label_928:
	add	rax, qword ptr [rdx + rsi*8]
	inc	rsi
	cmp	rsi, rcx
	jl	.label_928
.label_927:
	ret	
	.section	.text
	.align	32
	#Procedure 0x40a3ad
	.globl sub_40a3ad
	.type sub_40a3ad, @function
sub_40a3ad:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x40a3b0
	.globl c_isprint
	.type c_isprint, @function
c_isprint:

	add	edi, -0x20
	cmp	edi, 0x5f
	setb	al
	ret	
	.section	.text
	.align	32
	#Procedure 0x40a3ba
	.globl sub_40a3ba
	.type sub_40a3ba, @function
sub_40a3ba:

	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40a3c0

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
	je	.label_929
	mov	al, byte ptr [rsi + 0x38]
	and	al, 0x10
	je	.label_929
	mov	rax, qword ptr [r15 + 0x28]
	cmp	rax, 0x3f
	jg	.label_931
	mov	rcx, qword ptr [r12 + 0xa0]
	bt	rcx, rax
	jae	.label_931
.label_929:
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
	je	.label_932
	mov	ecx, 0x10
	mov	rdi, r12
	mov	rsi, rbp
	mov	rdx, rbx
	call	create_tree
	mov	r14, rax
.label_932:
	mov	ecx, 0x10
	mov	rdi, r12
	mov	rsi, r13
	mov	rdx, r14
	call	create_tree
	test	rbx, rbx
	je	.label_930
	test	r13, r13
	je	.label_930
	test	r14, r14
	je	.label_930
	test	rax, rax
	je	.label_930
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
	jmp	.label_933
.label_931:
	mov	rax, qword ptr [r15 + 8]
.label_933:
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_930:
	mov	rax, qword ptr [rsp]
	mov	dword ptr [rax], 0xc
	xor	eax, eax
	jmp	.label_933
	.section	.text
	.align	32
	#Procedure 0x40a4c3
	.globl sub_40a4c3
	.type sub_40a4c3, @function
sub_40a4c3:

	nop	word ptr cs:[rax + rax]
.label_1959:
	mov	r9b, 1
	jmp	.label_948
	.section	.text
	.align	32
	#Procedure 0x40a4d5

	.globl optimize_utf8
	.type optimize_utf8, @function
optimize_utf8:
	cmp	qword ptr [rdi + 0x10], 0
	je	.label_976
	mov	r11, qword ptr [rdi]
	xor	r9d, r9d
	movabs	r8, 0x1000000010001
	xor	r10d, r10d
	xor	eax, eax
.label_963:
	mov	rsi, rax
	shl	rsi, 4
	mov	cl, byte ptr [r11 + rsi + 8]
	dec	cl
	movzx	ecx, cl
	cmp	cl, 0xb
	ja	.label_951
	lea	rdx, [r11 + rsi]
	jmp	qword ptr [word ptr [+ (rcx * 8) + label_957]]
.label_1957:
	cmp	byte ptr [rdx], 0
	mov	cl, 1
	js	.label_958
	mov	ecx, r10d
.label_958:
	mov	r10b, cl
	jmp	.label_948
.label_1960:
	mov	ecx, dword ptr [rdx]
	lea	edx, [rcx - 0x10]
	cmp	edx, 0x30
	ja	.label_960
	bt	r8, rdx
	jb	.label_948
.label_960:
	cmp	ecx, 0x80
	jne	.label_962
	nop	word ptr [rax + rax]
.label_948:
	inc	rax
	cmp	rax, qword ptr [rdi + 0x10]
	jb	.label_963
	jmp	.label_965
.label_951:
	push	rax
	call	abort
	.section	.text
	.align	32
	#Procedure 0x40a563
	.globl sub_40a563
	.type sub_40a563, @function
sub_40a563:

	nop	
.label_1958:
	mov	rcx, qword ptr [rdi]
	mov	rsi, qword ptr [rcx + rsi]
	mov	ecx, 2
.label_949:
	cmp	qword ptr [rsi + rcx*8], 0
	jne	.label_962
	inc	rcx
	cmp	rcx, 3
	jle	.label_949
	jmp	.label_948
.label_976:
	xor	r10d, r10d
	xor	r9d, r9d
.label_965:
	mov	r8d, r9d
	and	r8b, 1
	or	r10b, r9b
	test	r10b, 1
	je	.label_968
	cmp	qword ptr [rdi + 0x10], 0
	je	.label_968
	xor	eax, eax
	mov	ecx, 8
	nop	word ptr cs:[rax + rax]
.label_975:
	mov	rsi, qword ptr [rdi]
	mov	edx, dword ptr [rsi + rcx]
	cmp	dl, 1
	jne	.label_970
	cmp	byte ptr [rsi + rcx - 8], 0
	js	.label_971
.label_970:
	mov	rdx, qword ptr [rdi]
	mov	esi, dword ptr [rdx + rcx]
	cmp	sil, 5
	jne	.label_972
	and	esi, 0xffffff00
	or	esi, 7
	mov	dword ptr [rdx + rcx], esi
	jmp	.label_972
.label_971:
	and	edx, 0xffdfffff
	mov	dword ptr [rsi + rcx], edx
	nop	word ptr cs:[rax + rax]
.label_972:
	inc	rax
	add	rcx, 0x10
	cmp	rax, qword ptr [rdi + 0x10]
	jb	.label_975
.label_968:
	mov	dword ptr [rdi + 0xb4], 1
	mov	al, byte ptr [rdi + 0xb0]
	cmp	qword ptr [rdi + 0x98], 0
	setg	cl
	or	cl, r8b
	add	cl, cl
	and	al, 0xf9
	or	al, cl
	mov	byte ptr [rdi + 0xb0], al
.label_962:
	ret	
	.section	.text
	.align	32
	#Procedure 0x40a630

	.globl re_string_char_size_at
	.type re_string_char_size_at, @function
re_string_char_size_at:
	mov	eax, 1
	cmp	dword ptr [rdi + 0x90], 1
	je	.label_977
	lea	rcx, [rsi + 1]
	cmp	rcx, qword ptr [rdi + 0x30]
	jge	.label_977
	lea	rcx, [rsi*4]
	add	rcx, qword ptr [rdi + 0x10]
	mov	eax, 1
	nop	dword ptr [rax]
.label_978:
	cmp	dword ptr [rcx + rax*4], -1
	jne	.label_977
	lea	rdx, [rsi + rax + 1]
	inc	rax
	cmp	rdx, qword ptr [rdi + 0x30]
	jl	.label_978
.label_977:
	ret	
	.section	.text
	.align	32
	#Procedure 0x40a675
	.globl sub_40a675
	.type sub_40a675, @function
sub_40a675:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40a680

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
	je	.label_987
	lea	rcx, [rax + rax*4]
	mov	qword ptr [rsp + 0x10], r14
	mov	qword ptr [rsp + 0x18], r13
	mov	qword ptr [rsp + 0x30], rcx
.label_979:
	mov	dword ptr [rsp + 0xc], eax
	mov	rax, qword ptr [rsp + 0x20]
	mov	rax, qword ptr [rax + 0xd8]
	lea	r15, [rax + rcx*8 + 0x20]
	nop	word ptr cs:[rax + rax]
.label_993:
	mov	rsi, qword ptr [r15 - 0x20]
	mov	rdi, r13
	call	re_node_set_contains
	test	rax, rax
	je	.label_989
	mov	rbp, qword ptr [r15 - 8]
	add	rbp, r12
	sub	rbp, qword ptr [r15 - 0x10]
	cmp	rbp, r12
	jne	.label_981
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
	jne	.label_985
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
	jne	.label_988
.label_985:
	mov	r14, qword ptr [rsp + 0x10]
	jmp	.label_984
	.section	.text
	.align	32
	#Procedure 0x40a7ad
	.globl sub_40a7ad
	.type sub_40a7ad, @function
sub_40a7ad:

	nop	dword ptr [rax]
.label_981:
	mov	rax, qword ptr [r15 - 0x20]
	mov	rcx, qword ptr [r14 + 0x18]
	mov	r14, qword ptr [rcx + rax*8]
	mov	rax, qword ptr [rsp + 0x20]
	mov	rax, qword ptr [rax + 0xb8]
	mov	rbx, qword ptr [rax + rbp*8]
	test	rbx, rbx
	je	.label_992
	add	rbx, 8
	mov	rdi, rbx
	mov	rsi, r14
	call	re_node_set_contains
	mov	ecx, 4
	test	rax, rax
	je	.label_986
	mov	r14, qword ptr [rsp + 0x10]
	jmp	.label_984
.label_992:
	lea	rbx, [rsp + 0x40]
	mov	rdi, rbx
	mov	rsi, r14
	call	re_node_set_init_1
	mov	dword ptr [rsp + 8], eax
	test	eax, eax
	je	.label_980
	mov	ecx, 1
	mov	dword ptr [rsp + 0xc], eax
	mov	r14, qword ptr [rsp + 0x10]
	jmp	.label_984
.label_986:
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
	jne	.label_983
	xor	al, 1
	jne	.label_983
.label_980:
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
	jne	.label_982
	mov	eax, dword ptr [rsp + 0xc]
.label_982:
	movzx	ecx, cl
	mov	dword ptr [rsp + 0xc], eax
.label_984:
	test	ecx, ecx
	je	.label_989
	cmp	ecx, 4
	jne	.label_991
.label_989:
	cmp	byte ptr [r15], 0
	lea	r15, [r15 + 0x28]
	jne	.label_993
	jmp	.label_987
.label_988:
	test	ebx, ebx
	cmovne	ebp, ebx
	test	r14d, r14d
	cmovne	ebp, r14d
	mov	dword ptr [rsp + 8], ebp
	mov	ecx, 1
	mov	dword ptr [rsp + 0xc], ebp
	jmp	.label_985
.label_983:
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
	jmp	.label_984
	.section	.text
	.align	32
	#Procedure 0x40a911
	.globl sub_40a911
	.type sub_40a911, @function
sub_40a911:

	nop	word ptr cs:[rax + rax]
.label_991:
	cmp	ecx, 2
	mov	rcx, qword ptr [rsp + 0x30]
	mov	eax, dword ptr [rsp + 0xc]
	je	.label_979
	jmp	.label_990
.label_987:
	xor	eax, eax
.label_990:
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
	#Procedure 0x40a945
	.globl sub_40a945
	.type sub_40a945, @function
sub_40a945:

	nop	word ptr cs:[rax + rax]
.label_994:
	xor	eax, eax
	ret	
	.section	.text
	.align	32
	#Procedure 0x40a953
	.globl sub_40a953
	.type sub_40a953, @function
sub_40a953:

	nop	
	.section	.text
	.align	32
	#Procedure 0x40a955
	.globl c_isxdigit
	.type c_isxdigit, @function
c_isxdigit:

	add	edi, -0x30
	cmp	edi, 0x36
	ja	.label_994
	movabs	rax, 0x7e0000007e03ff
	mov	ecx, edi
	shr	rax, cl
	and	eax, 1
	ret	
	.section	.text
	.align	32
	#Procedure 0x40a970

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
	je	.label_1026
	mov	bl, byte ptr [r12 + 0x38]
	and	bl, 9
	xor	ebp, ebp
	cmp	bl, 8
	cmovne	rax, rbp
	cmp	rcx, r8
	cmove	rax, rbp
	mov	r14, rax
.label_1026:
	mov	rax, qword ptr [r12 + 0x30]
	lea	r15, [rdi - 1]
	mov	rbp, r15
	sub	rbp, rax
	xor	ebx, ebx
	cmp	rax, rdi
	cmovb	rbx, rbp
	mov	r13d, 1
	cmp	qword ptr [r12 + 0x10], 0
	je	.label_1013
	mov	rax, qword ptr [r10 + 0x48]
	test	rax, rax
	je	.label_1013
	mov	r11, qword ptr [r10 + 0x50]
	test	r11, r11
	je	.label_1013
	mov	qword ptr [rsp + 0x38], r9
	mov	r9, qword ptr [r10 + 0x58]
	test	r9, r9
	je	.label_1013
	mov	qword ptr [rsp + 0x30], rcx
	cmp	qword ptr [r10 + 0x60], 0
	je	.label_1013
	mov	rcx, qword ptr [r12 + 0x28]
	cmp	qword ptr [rax + 0x10], 0
	jne	.label_1036
	cmp	qword ptr [r11 + 0x10], 0
	jne	.label_1036
	cmp	qword ptr [r9 + 0x10], 0
	je	.label_1039
	cmp	byte ptr [r12 + 0x38], 0
	js	.label_1036
.label_1039:
	xor	ebp, ebp
	cmp	qword ptr [rsp + 0x30], 0
	je	.label_1043
	test	r8, r8
	mov	eax, 0
	mov	qword ptr [rsp + 0x30], rax
	jne	.label_1013
	jmp	.label_1011
.label_1036:
	mov	rbp, r8
.label_1011:
	mov	qword ptr [rsp + 0x40], rcx
	mov	qword ptr [rsp + 0x50], r15
	mov	qword ptr [rsp + 0x68], rbx
	sub	rdi, rbx
	mov	qword ptr [rsp + 0x28], rdi
	mov	byte ptr [rsp + 0x17], 1
	jne	.label_1050
	cmp	qword ptr [r10 + 0x98], 0
	setne	byte ptr [rsp + 0x17]
.label_1050:
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
	jne	.label_999
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
	jne	.label_999
	cmp	qword ptr [rsp + 0x28], 1
	ja	.label_1037
	mov	rax, qword ptr [rsp + 0x20]
	test	byte ptr [rax + 0xb0], 2
	jne	.label_1037
	mov	qword ptr [rsp + 0x138], 0
	jmp	.label_1044
.label_1037:
	mov	rax, qword ptr [rsp + 0xc0]
	mov	r13d, 0xc
	movabs	rcx, 0x1ffffffffffffffe
	cmp	rax, rcx
	ja	.label_999
	lea	rdi, [rax*8 + 8]
	call	malloc
	mov	qword ptr [rsp + 0x138], rax
	test	rax, rax
	je	.label_999
.label_1044:
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
	je	.label_1005
	cmp	dword ptr [rsp + 0x38], 1
	je	.label_1029
	mov	edx, 0x400000
	xor	ecx, ecx
	test	rbx, rbx
	jne	.label_1031
	and	rdx, qword ptr [r12 + 0x18]
	jne	.label_1031
.label_1029:
	mov	ecx, 4
.label_1031:
	xor	edx, edx
	cmp	rdi, rax
	setle	dl
	xor	esi, esi
	test	rbx, rbx
	setne	sil
	lea	edx, [rsi + rdx*2]
	or	edx, ecx
.label_1005:
	mov	rcx, qword ptr [rsp + 0x18]
	cmp	rcx, r13
	jl	.label_1038
	cmp	r15, rcx
	jl	.label_1038
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
.label_1032:
	cmp	edx, 4
	ja	.label_1027
	jmp	qword ptr [word ptr [+ (rdx * 8) + label_997]]
.label_1953:
	mov	rcx, qword ptr [rsp + 0x18]
	cmp	rcx, r13
	jl	.label_1000
	nop	word ptr cs:[rax + rax]
.label_1024:
	xor	eax, eax
	cmp	rcx, r8
	jge	.label_1007
	movzx	eax, byte ptr [rbp + rcx]
.label_1007:
	test	rbx, rbx
	je	.label_1009
	movzx	eax, byte ptr [rbx + rax]
.label_1009:
	cmp	byte ptr [r14 + rax], 0
	jne	.label_1000
	mov	rax, qword ptr [rsp + 0x18]
	lea	rcx, [rax - 1]
	mov	qword ptr [rsp + 0x18], rcx
	cmp	rax, r13
	jg	.label_1024
.label_1000:
	cmp	qword ptr [rsp + 0x18], r13
	jge	.label_998
	jmp	.label_1019
	.section	.text
	.align	32
	#Procedure 0x40ad5f
	.globl sub_40ad5f
	.type sub_40ad5f, @function
sub_40ad5f:

	nop	
.label_1051:
	mov	rax, qword ptr [rsp + 0x18]
	add	rax, rdi
	mov	qword ptr [rsp + 0x18], rax
	cmp	rax, r13
	jl	.label_1021
	cmp	rax, r15
	jle	.label_1027
	jmp	.label_1021
.label_1041:
	lea	rdi, [rsp + 0x80]
	mov	edx, dword ptr [rsp + 0x1d0]
	call	re_string_reconstruct
	mov	r13d, eax
	test	r13d, r13d
	jne	.label_999
	mov	rax, qword ptr [rsp + 0x18]
	sub	rax, qword ptr [rsp + 0xa8]
	mov	r8, qword ptr [rsp + 0x60]
	mov	r13, qword ptr [rsp + 0x48]
	mov	rdi, qword ptr [rsp + 0x70]
	jmp	.label_1034
	.section	.text
	.align	32
	#Procedure 0x40adbe
	.globl sub_40adbe
	.type sub_40adbe, @function
sub_40adbe:

	nop	
.label_1027:
	mov	rsi, qword ptr [rsp + 0x18]
	mov	rax, rsi
	sub	rax, qword ptr [rsp + 0xa8]
	cmp	rax, qword ptr [rsp + 0xb8]
	jae	.label_1041
.label_1034:
	cmp	qword ptr [rsp + 0x18], r8
	mov	ecx, 0
	jge	.label_1046
	mov	rcx, qword ptr [rsp + 0x88]
	movzx	ecx, byte ptr [rcx + rax]
.label_1046:
	cmp	byte ptr [r14 + rcx], 0
	je	.label_1051
	jmp	.label_998
.label_1954:
	mov	rax, qword ptr [rsp + 0x18]
	jmp	.label_1053
	.section	.text
	.align	32
	#Procedure 0x40ae06
	.globl sub_40ae06
	.type sub_40ae06, @function
sub_40ae06:

	nop	word ptr cs:[rax + rax]
.label_1006:
	inc	rax
	mov	qword ptr [rsp + 0x18], rax
.label_1053:
	cmp	rax, r15
	jge	.label_1004
	movzx	ecx, byte ptr [rbp + rax]
	cmp	byte ptr [r14 + rcx], 0
	je	.label_1006
	jmp	.label_1004
.label_1955:
	mov	rax, qword ptr [rsp + 0x18]
	jmp	.label_1008
	.section	.text
	.align	32
	#Procedure 0x40ae32
	.globl sub_40ae32
	.type sub_40ae32, @function
sub_40ae32:

	nop	word ptr cs:[rax + rax]
.label_1017:
	inc	rax
	mov	qword ptr [rsp + 0x18], rax
.label_1008:
	cmp	rax, r15
	jge	.label_1004
	movzx	ecx, byte ptr [rbp + rax]
	movzx	ecx, byte ptr [rbx + rcx]
	cmp	byte ptr [r14 + rcx], 0
	je	.label_1017
.label_1004:
	mov	rcx, qword ptr [rsp + 0x18]
	cmp	rcx, r15
	je	.label_1020
.label_998:
	mov	rsi, qword ptr [rsp + 0x18]
	lea	rbx, [rsp + 0x80]
	mov	rdi, rbx
	mov	edx, dword ptr [rsp + 0x1d0]
	call	re_string_reconstruct
	mov	ebp, eax
	test	ebp, ebp
	jne	.label_1016
	cmp	dword ptr [rsp + 0x38], 1
	je	.label_1022
	mov	rax, qword ptr [rsp + 0xb0]
	test	rax, rax
	je	.label_1022
	mov	rax, qword ptr [rsp + 0x90]
	cmp	dword ptr [rax], -1
	je	.label_1035
.label_1022:
	mov	dword ptr [rsp + 0x160], 0
	lea	rax, [rsp + 0x140]
	xorps	xmm0, xmm0
	movups	xmmword ptr [rax], xmm0
	movzx	esi, byte ptr [rsp + 0x17]
	mov	rdi, rbx
	mov	rdx, qword ptr [rsp + 0x30]
	call	check_matching
	cmp	rax, -1
	je	.label_1047
	mov	r13d, 0xc
	cmp	rax, -2
	je	.label_999
	mov	qword ptr [rsp + 0x128], rax
	mov	rdx, qword ptr [rsp + 0x28]
	cmp	rdx, 2
	jb	.label_1048
	mov	cl, byte ptr [r12 + 0x38]
	and	cl, 0x10
	je	.label_1002
.label_1048:
	mov	rcx, qword ptr [rsp + 0x20]
	cmp	qword ptr [rcx + 0x98], 0
	je	.label_1018
.label_1002:
	mov	rcx, qword ptr [rsp + 0x138]
	mov	rsi, qword ptr [rcx + rax*8]
	mov	rdi, rbx
	mov	rdx, rax
	call	check_halt_state_context
	mov	rdx, qword ptr [rsp + 0x28]
	mov	qword ptr [rsp + 0x130], rax
.label_1018:
	cmp	rdx, 2
	jb	.label_1015
	mov	al, byte ptr [r12 + 0x38]
	and	al, 0x10
	jne	.label_1015
	mov	rax, qword ptr [rsp + 0x20]
	test	byte ptr [rax + 0xb0], 1
	jne	.label_1001
.label_1015:
	mov	rax, qword ptr [rsp + 0x20]
	cmp	qword ptr [rax + 0x98], 0
	je	.label_1023
.label_1001:
	mov	rdi, rbx
	call	prune_impossible_nodes
	mov	r13d, eax
	xor	ebp, ebp
	test	r13d, r13d
	je	.label_1023
	cmp	r13d, 1
	jne	.label_999
.label_1047:
	mov	rdi, rbx
	call	match_ctx_clean
	mov	r13, qword ptr [rsp + 0x48]
.label_1035:
	mov	rax, qword ptr [rsp + 0x18]
	mov	rdi, qword ptr [rsp + 0x70]
	add	rax, rdi
	mov	qword ptr [rsp + 0x18], rax
	cmp	rax, r13
	jl	.label_1019
	cmp	r15, rax
	mov	r8, qword ptr [rsp + 0x60]
	mov	rbp, qword ptr [rsp + 0x58]
	mov	rbx, qword ptr [rsp + 0x40]
	mov	rdx, qword ptr [rsp + 0x78]
	jge	.label_1032
	jmp	.label_1019
.label_1020:
	xor	eax, eax
	cmp	rcx, r8
	jge	.label_1049
	mov	rax, qword ptr [rsp + 0x58]
	movzx	eax, byte ptr [rax + rcx]
.label_1049:
	cmp	qword ptr [rsp + 0x40], 0
	je	.label_1052
	mov	rcx, qword ptr [rsp + 0x40]
	movzx	eax, byte ptr [rcx + rax]
.label_1052:
	cmp	byte ptr [r14 + rax], 0
	mov	r13, qword ptr [rsp + 0x48]
	jne	.label_998
	mov	r13d, 1
	jmp	.label_999
.label_1038:
	mov	r13d, 1
	jmp	.label_999
.label_1023:
	mov	rcx, qword ptr [rsp + 0x28]
	test	rcx, rcx
	je	.label_1016
	cmp	rcx, 1
	mov	r14, qword ptr [rsp + 0x1c8]
	je	.label_1012
	lea	rdi, [r14 + 0x10]
	cmp	rcx, 2
	mov	edx, 2
	cmova	rdx, rcx
	shl	rdx, 4
	add	rdx, -0x10
	mov	esi, 0xff
	call	memset
	mov	rcx, qword ptr [rsp + 0x28]
.label_1012:
	mov	qword ptr [r14], 0
	mov	rax, qword ptr [rsp + 0x128]
	mov	qword ptr [r14 + 8], rax
	cmp	rcx, 2
	mov	r8, qword ptr [rsp + 0x20]
	mov	r10, qword ptr [rsp + 0x50]
	jb	.label_1033
	mov	al, byte ptr [r12 + 0x38]
	and	al, 0x10
	jne	.label_1033
	test	byte ptr [r8 + 0xb0], 1
	jne	.label_1042
	xor	eax, eax
	jmp	.label_1028
.label_1021:
	mov	r13d, 1
	jmp	.label_999
.label_1019:
	mov	r13d, 1
	jmp	.label_999
.label_1042:
	cmp	qword ptr [r8 + 0x98], 0
	setg	al
.label_1028:
	movzx	r8d, al
	lea	rsi, [rsp + 0x80]
	mov	rdi, r12
	mov	rdx, rcx
	mov	rcx, r14
	call	set_regs
	mov	r13d, eax
	test	r13d, r13d
	jne	.label_999
	xor	ebp, ebp
	mov	rcx, qword ptr [rsp + 0x28]
	test	rcx, rcx
	mov	r8, qword ptr [rsp + 0x20]
	mov	r10, qword ptr [rsp + 0x50]
	mov	r14, qword ptr [rsp + 0x1c8]
	je	.label_1040
.label_1033:
	mov	al, byte ptr [rsp + 0x10c]
	lea	r9, [rsp + 0xb8]
	mov	rdx, qword ptr [rsp + 0x98]
	lea	rsi, [r14 + 8]
	mov	rdi, rcx
	jmp	.label_1003
.label_1043:
	xor	eax, eax
	mov	qword ptr [rsp + 0x30], rax
	jmp	.label_1011
.label_1030:
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
	jmp	.label_1025
	.section	.text
	.align	32
	#Procedure 0x40b175
	.globl sub_40b175
	.type sub_40b175, @function
sub_40b175:

	nop	word ptr cs:[rax + rax]
.label_1003:
	mov	rbx, qword ptr [rsi - 8]
	cmp	rbx, -1
	je	.label_996
	test	al, al
	jne	.label_1030
.label_1025:
	mov	rbx, qword ptr [rsp + 0x18]
	add	qword ptr [rsi - 8], rbx
	add	qword ptr [rsi], rbx
.label_996:
	add	rsi, 0x10
	dec	rdi
	jne	.label_1003
.label_1040:
	mov	rdx, qword ptr [rsp + 0x68]
	test	rdx, rdx
	jle	.label_1045
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
.label_1045:
	cmp	qword ptr [r8 + 0xe0], 0
	je	.label_1016
	cmp	rcx, 2
	jb	.label_1016
	mov	rax, qword ptr [r8 + 0xe0]
	sub	r10, rdx
	lea	rcx, [r14 + 0x18]
	xor	edx, edx
	nop	dword ptr [rax]
.label_1010:
	mov	rsi, qword ptr [rax + rdx*8]
	cmp	rdx, rsi
	je	.label_995
	shl	rsi, 4
	mov	rsi, qword ptr [r14 + rsi + 0x10]
	mov	qword ptr [rcx - 8], rsi
	mov	rsi, qword ptr [r8 + 0xe0]
	mov	rsi, qword ptr [rsi + rdx*8]
	shl	rsi, 4
	mov	rsi, qword ptr [r14 + rsi + 0x18]
	mov	qword ptr [rcx], rsi
.label_995:
	inc	rdx
	add	rcx, 0x10
	cmp	r10, rdx
	jne	.label_1010
.label_1016:
	mov	r13d, ebp
.label_999:
	mov	rdi, qword ptr [rsp + 0x138]
	call	free
	mov	rax, qword ptr [rsp + 0x20]
	cmp	qword ptr [rax + 0x98], 0
	je	.label_1014
	lea	rdi, [rsp + 0x80]
	call	match_ctx_free
.label_1014:
	lea	rdi, [rsp + 0x80]
	call	re_string_destruct
.label_1013:
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
	#Procedure 0x40b287
	.globl sub_40b287
	.type sub_40b287, @function
sub_40b287:

	nop	word ptr [rax + rax]
.label_1054:
	xor	eax, eax
	ret	
	.section	.text
	.align	32
	#Procedure 0x40b293
	.globl sub_40b293
	.type sub_40b293, @function
sub_40b293:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40b298

	.globl looks_like_integer
	.type looks_like_integer, @function
looks_like_integer:
	xor	eax, eax
	cmp	byte ptr [rdi], 0x2d
	sete	al
	lea	rcx, [rdi + rax + 1]
	nop	dword ptr [rax]
.label_1055:
	movsx	eax, byte ptr [rcx - 1]
	add	eax, -0x30
	cmp	eax, 9
	ja	.label_1054
	mov	al, 1
	cmp	byte ptr [rcx], 0
	lea	rcx, [rcx + 1]
	jne	.label_1055
	ret	
	.section	.text
	.align	32
	#Procedure 0x40b2c0

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
	jle	.label_1056
	mov	qword ptr [rax + r14*8], rbx
	mov	qword ptr [r13 + 0xc0], r14
	jmp	.label_1061
.label_1056:
	cmp	qword ptr [rax + r14*8], 0
	je	.label_1057
	mov	rax, qword ptr [r13 + 0xb8]
	mov	rax, qword ptr [rax + r14*8]
	mov	rdx, qword ptr [rax + 0x50]
	test	rbx, rbx
	je	.label_1059
	mov	rbp, qword ptr [rbx + 0x50]
	lea	rdi, [rsp]
	mov	rsi, rbp
	call	re_node_set_init_union
	mov	dword ptr [r15], eax
	test	eax, eax
	je	.label_1062
	xor	eax, eax
	jmp	.label_1058
.label_1057:
	mov	qword ptr [rax + r14*8], rbx
	jmp	.label_1061
.label_1059:
	mov	rax, qword ptr [rdx + 0x10]
	mov	qword ptr [rsp + 0x10], rax
	movups	xmm0, xmmword ptr [rdx]
	movaps	xmmword ptr [rsp], xmm0
	xor	ebp, ebp
.label_1062:
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
	je	.label_1061
	mov	rdi, qword ptr [rsp + 0x10]
	call	free
.label_1061:
	test	rbx, rbx
	je	.label_1060
	mov	rax, qword ptr [r12 + 0x98]
	test	rax, rax
	je	.label_1060
	lea	rbp, [rbx + 8]
	mov	rdi, r13
	mov	rsi, rbp
	mov	rdx, r14
	call	check_subexp_matching_top
	mov	ecx, eax
	mov	dword ptr [r15], ecx
	xor	eax, eax
	test	ecx, ecx
	jne	.label_1058
	test	byte ptr [rbx + 0x68], 0x40
	mov	rax, rbx
	je	.label_1058
	mov	rdi, r13
	mov	rsi, rbp
	call	transit_state_bkref
	mov	ecx, eax
	mov	dword ptr [r15], ecx
	xor	eax, eax
	test	ecx, ecx
	jne	.label_1058
	mov	rax, qword ptr [r13 + 0xb8]
	mov	rax, qword ptr [rax + r14*8]
	jmp	.label_1058
.label_1060:
	mov	rax, rbx
.label_1058:
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
	#Procedure 0x40b404
	.globl sub_40b404
	.type sub_40b404, @function
sub_40b404:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40b410

	.globl re_node_set_contains
	.type re_node_set_contains, @function
re_node_set_contains:
	mov	r9, qword ptr [rdi + 8]
	xor	eax, eax
	test	r9, r9
	jle	.label_1063
	xor	edx, edx
	dec	r9
	je	.label_1065
	mov	r8, qword ptr [rdi + 0x10]
	xor	edx, edx
	nop	dword ptr [rax + rax]
.label_1064:
	lea	rax, [r9 + rdx]
	shr	rax, 1
	cmp	qword ptr [r8 + rax*8], rsi
	lea	rcx, [rax + 1]
	cmovl	rdx, rcx
	cmovge	r9, rax
	cmp	rdx, r9
	jb	.label_1064
.label_1065:
	mov	rcx, qword ptr [rdi + 0x10]
	xor	eax, eax
	cmp	qword ptr [rcx + rdx*8], rsi
	lea	rcx, [rdx + 1]
	cmove	rax, rcx
.label_1063:
	ret	
	.section	.text
	.align	32
	#Procedure 0x40b45f
	.globl sub_40b45f
	.type sub_40b45f, @function
sub_40b45f:

	nop	
	.section	.text
	.align	32
	#Procedure 0x40b460

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
	jne	.label_1085
	mov	r14b, byte ptr [rdi + 0x1a]
	and	r14b, 0x40
	shr	r14b, 6
	jmp	.label_1067
.label_1085:
	xor	r14d, r14d
.label_1067:
	cmp	qword ptr [rsi + 0x10], 0
	jle	.label_1072
	xor	edx, edx
	mov	qword ptr [rsp + 0x20], rsi
	mov	qword ptr [rsp + 0x30], r15
	nop	
.label_1079:
	mov	rax, qword ptr [rsi + 0x18]
	mov	rbx, qword ptr [rax + rdx*8]
	mov	rcx, qword ptr [r15]
	mov	rbp, rbx
	shl	rbp, 4
	movzx	eax, byte ptr [rcx + rbp + 8]
	add	rcx, rbp
	cmp	al, 1
	mov	qword ptr [rsp + 0x28], rdx
	je	.label_1075
	cmp	al, 6
	je	.label_1068
	cmp	al, 3
	jne	.label_1084
	xor	r13d, r13d
	xor	ebx, ebx
	mov	qword ptr [rsp + 0x38], rbp
	nop	word ptr cs:[rax + rax]
.label_1082:
	mov	rax, qword ptr [r15]
	mov	rax, qword ptr [rax + rbp]
	mov	rbp, qword ptr [rax + r13*8]
	mov	rax, qword ptr [rsp]
	lea	r12, [rax + rbx]
	xor	r15d, r15d
	nop	word ptr cs:[rax + rax]
.label_1080:
	bt	rbp, r15
	jae	.label_1074
	mov	byte ptr [r12 + r15], 1
	test	r14b, r14b
	je	.label_1074
	lea	edi, [rbx + r15]
	call	tolower
	cdqe	
	mov	rcx, qword ptr [rsp]
	mov	byte ptr [rcx + rax], 1
.label_1074:
	inc	r15
	cmp	r15, 0x40
	jne	.label_1080
	inc	r13
	add	rbx, 0x40
	cmp	r13, 4
	mov	r15, qword ptr [rsp + 0x30]
	mov	rbp, qword ptr [rsp + 0x38]
	jne	.label_1082
	jmp	.label_1069
	.section	.text
	.align	32
	#Procedure 0x40b568
	.globl sub_40b568
	.type sub_40b568, @function
sub_40b568:

	nop	dword ptr [rax + rax]
.label_1075:
	movzx	edi, byte ptr [rcx]
	mov	rax, qword ptr [rsp]
	mov	byte ptr [rax + rdi], 1
	test	r14b, r14b
	je	.label_1088
	call	tolower
	cdqe	
	mov	rcx, qword ptr [rsp]
	mov	byte ptr [rcx + rax], 1
.label_1088:
	mov	rax, qword ptr [rsp + 0x10]
	test	byte ptr [rax + 0x1a], 0x40
	je	.label_1069
	cmp	dword ptr [r15 + 0xb4], 2
	jl	.label_1069
	mov	rax, qword ptr [r15]
	mov	al, byte ptr [rax + rbp]
	mov	byte ptr [rsp + 0x40], al
	inc	rbx
	cmp	rbx, qword ptr [r15 + 0x10]
	lea	r13, [rsp + 0x41]
	jae	.label_1076
	add	rbp, 0x18
	lea	r13, [rsp + 0x41]
	nop	dword ptr [rax]
.label_1086:
	mov	rax, qword ptr [r15]
	mov	ecx, dword ptr [rax + rbp]
	mov	edx, 0x2000ff
	and	ecx, edx
	cmp	ecx, 0x200001
	jne	.label_1076
	movzx	eax, byte ptr [rax + rbp - 8]
	mov	byte ptr [r13], al
	inc	r13
	inc	rbx
	add	rbp, 0x10
	cmp	rbx, qword ptr [r15 + 0x10]
	jb	.label_1086
.label_1076:
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
	jne	.label_1069
	mov	edi, dword ptr [rsp + 0x1c]
	call	towlower
	mov	rdi, rbx
	mov	esi, eax
	mov	rdx, rbp
	call	wcrtomb
	cmp	rax, -1
	je	.label_1069
	movzx	eax, byte ptr [rsp + 0x40]
	mov	rcx, qword ptr [rsp]
	mov	byte ptr [rcx + rax], 1
	jmp	.label_1069
	.section	.text
	.align	32
	#Procedure 0x40b662
	.globl sub_40b662
	.type sub_40b662, @function
sub_40b662:

	nop	word ptr cs:[rax + rax]
.label_1068:
	mov	r12, qword ptr [rcx]
	cmp	dword ptr [r15 + 0xb4], 1
	jle	.label_1070
	cmp	qword ptr [r12 + 0x48], 0
	jne	.label_1066
	test	byte ptr [r12 + 0x20], 1
	jne	.label_1066
	cmp	qword ptr [r12 + 0x40], 0
	je	.label_1070
.label_1066:
	mov	byte ptr [rsp + 8], 0
	lea	rbx, [rsp + 0x40]
	lea	rbp, [rsp + 8]
	nop	dword ptr [rax + rax]
.label_1083:
	mov	qword ptr [rsp + 0x40], 0
	xor	edi, edi
	mov	edx, 1
	mov	rsi, rbp
	mov	rcx, rbx
	call	rpl_mbrtowc
	cmp	rax, -2
	jne	.label_1081
	movzx	eax, byte ptr [rsp + 8]
	mov	rcx, qword ptr [rsp]
	mov	byte ptr [rcx + rax], 1
.label_1081:
	inc	byte ptr [rsp + 8]
	jne	.label_1083
	jmp	.label_1069
	.section	.text
	.align	32
	#Procedure 0x40b6e9
	.globl sub_40b6e9
	.type sub_40b6e9, @function
sub_40b6e9:

	nop	dword ptr [rax]
.label_1084:
	cmp	al, 7
	ja	.label_1069
	movzx	ecx, al
	mov	edx, 0xa4
	bt	edx, ecx
	jae	.label_1069
	jmp	.label_1077
.label_1070:
	cmp	qword ptr [r12 + 0x28], 0
	jle	.label_1069
	xor	ebp, ebp
	nop	dword ptr [rax]
.label_1073:
	mov	qword ptr [rsp + 8], 0
	mov	rax, qword ptr [r12]
	mov	esi, dword ptr [rax + rbp*4]
	lea	rdi, [rsp + 0x40]
	lea	rdx, [rsp + 8]
	call	wcrtomb
	cmp	rax, -1
	je	.label_1078
	movzx	edi, byte ptr [rsp + 0x40]
	mov	rax, qword ptr [rsp]
	mov	byte ptr [rax + rdi], 1
	test	r14b, r14b
	je	.label_1078
	call	tolower
	cdqe	
	mov	rcx, qword ptr [rsp]
	mov	byte ptr [rcx + rax], 1
.label_1078:
	mov	rax, qword ptr [rsp + 0x10]
	test	byte ptr [rax + 0x1a], 0x40
	je	.label_1071
	cmp	dword ptr [r15 + 0xb4], 2
	jl	.label_1071
	mov	rax, qword ptr [r12]
	mov	edi, dword ptr [rax + rbp*4]
	call	towlower
	lea	rdi, [rsp + 0x40]
	mov	esi, eax
	lea	rdx, [rsp + 8]
	call	wcrtomb
	cmp	rax, -1
	je	.label_1071
	movzx	eax, byte ptr [rsp + 0x40]
	mov	rcx, qword ptr [rsp]
	mov	byte ptr [rcx + rax], 1
	nop	dword ptr [rax + rax]
.label_1071:
	inc	rbp
	cmp	rbp, qword ptr [r12 + 0x28]
	jl	.label_1073
	nop	
.label_1069:
	mov	rdx, qword ptr [rsp + 0x28]
	inc	rdx
	mov	rsi, qword ptr [rsp + 0x20]
	cmp	rdx, qword ptr [rsi + 0x10]
	jl	.label_1079
.label_1072:
	add	rsp, 0x148
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_1077:
	movaps	xmm0,  xmmword ptr [word ptr [rip + label_1087]]
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
	jne	.label_1072
	mov	rax, qword ptr [rsp + 0x10]
	or	byte ptr [rax + 0x38], 1
	jmp	.label_1072
	.section	.text
	.align	32
	#Procedure 0x40b85e
	.globl sub_40b85e
	.type sub_40b85e, @function
sub_40b85e:

	nop	
	.section	.text
	.align	32
	#Procedure 0x40b860
	.globl close_stdout_set_file_name
	.type close_stdout_set_file_name, @function
close_stdout_set_file_name:

	mov	qword ptr [word ptr [rip + file_name]],  rdi
	ret	
	.section	.text
	.align	32
	#Procedure 0x40b868
	.globl sub_40b868
	.type sub_40b868, @function
sub_40b868:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40b870
	.globl c_isspace
	.type c_isspace, @function
c_isspace:

	add	edi, -9
	cmp	edi, 0x17
	ja	.label_1089
	mov	eax, 0x80001f
	mov	ecx, edi
	shr	eax, cl
	and	eax, 1
	ret	
.label_1089:
	xor	eax, eax
	ret	
	.section	.text
	.align	32
	#Procedure 0x40b888
	.globl sub_40b888
	.type sub_40b888, @function
sub_40b888:

	nop	dword ptr [rax + rax]
.label_1090:
	call	__gmpz_clear
.label_1091:
	mov	rdi, rbx
	pop	rbx
	jmp	free
	.section	.text
	.align	32
	#Procedure 0x40b89e
	.globl sub_40b89e
	.type sub_40b89e, @function
sub_40b89e:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40b8a9

	.globl freev
	.type freev, @function
freev:
	push	rbx
	mov	rbx, rdi
	lea	rdi, [rbx + 8]
	cmp	dword ptr [rbx], 1
	jne	.label_1090
	mov	rdi, qword ptr [rdi]
	call	free
	jmp	.label_1091
	.section	.text
	.align	32
	#Procedure 0x40b8c0

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
	je	.label_1092
	mov	rdi, r14
	mov	rdx, rbx
	call	re_compile_fastmap_iter
.label_1092:
	mov	rsi, qword ptr [r15 + 0x58]
	cmp	qword ptr [r15 + 0x48], rsi
	je	.label_1093
	mov	rdi, r14
	mov	rdx, rbx
	call	re_compile_fastmap_iter
.label_1093:
	mov	rsi, qword ptr [r15 + 0x60]
	cmp	qword ptr [r15 + 0x48], rsi
	je	.label_1094
	mov	rdi, r14
	mov	rdx, rbx
	call	re_compile_fastmap_iter
.label_1094:
	or	byte ptr [r14 + 0x38], 8
	xor	eax, eax
	pop	rbx
	pop	r14
	pop	r15
	ret	
	.section	.text
	.align	32
	#Procedure 0x40b981
	.globl sub_40b981
	.type sub_40b981, @function
sub_40b981:

	nop	word ptr cs:[rax + rax]
.label_1095:
	and	edx, 8
	test	cl, cl
	setns	al
	shr	edx, 3
	or	dl, al
	mov	eax, edx
	ret	
	.section	.text
	.align	32
	#Procedure 0x40b9a0
	.globl sub_40b9a0
	.type sub_40b9a0, @function
sub_40b9a0:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40b9ac

	.globl check_halt_node_context
	.type check_halt_node_context, @function
check_halt_node_context:
	mov	rax, qword ptr [rdi]
	shl	rsi, 4
	mov	ecx, dword ptr [rax + rsi + 8]
	cmp	cl, 2
	jne	.label_1098
	shr	ecx, 8
	mov	al, 1
	test	cx, 0x3ff
	je	.label_1099
	mov	eax, edx
	and	eax, 1
	jne	.label_1097
	mov	esi, ecx
	and	esi, 4
	jne	.label_1098
.label_1097:
	test	eax, eax
	je	.label_1096
	mov	eax, ecx
	and	eax, 8
	jne	.label_1098
.label_1096:
	test	dl, 2
	jne	.label_1095
	mov	eax, ecx
	and	eax, 0x20
	je	.label_1095
.label_1098:
	xor	eax, eax
.label_1099:
	ret	
.label_1102:
	xor	eax, eax
	cmp	cl, bpl
	jne	.label_1100
.label_1101:
	mov	eax, 1
	test	bpl, bpl
	je	.label_1100
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
.label_1100:
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
	#Procedure 0x40ba38
	.globl sub_40ba38
	.type sub_40ba38, @function
sub_40ba38:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x40ba3b

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
	je	.label_1102
	and	ecx, 0xffffffdf
	xor	eax, eax
	cmp	ecx, ebp
	je	.label_1101
	jmp	.label_1100
	.section	.text
	.align	32
	#Procedure 0x40ba70

	.globl sub_40ba70
	.type sub_40ba70, @function
sub_40ba70:
	lea	rax, [rcx + rcx*2]
	shl	rax, 3
	add	rax, qword ptr [rdi + 0x28]
	mov	rcx, qword ptr [rsi + 0x20]
	mov	rsi, qword ptr [rcx + 0x38]
.label_1348:
	mov	rdi, rax
	pop	rax
	jmp	re_node_set_init_1
	.section	.text
	.align	32
	#Procedure 0x40ba8d

	.globl sub_40ba8d
	.type sub_40ba8d, @function
sub_40ba8d:
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
	js	.label_1105
	mov	rdx, qword ptr [rdx]
	mov	rdx, qword ptr [rdx + 0x38]
	test	rdx, rdx
	js	.label_1106
	lea	rcx, [rcx + rcx*2]
	shl	rcx, 3
	add	rcx, qword ptr [rdi + 0x28]
	mov	rdi, rcx
	mov	rsi, rax
	pop	rax
	jmp	re_node_set_init_2
.label_1109:
	mov	edi, OFFSET FLAT:label_1111
	mov	esi, OFFSET FLAT:label_803
	mov	edx, 0x5c2
	mov	ecx, OFFSET FLAT:label_1104
	call	__assert_fail
.label_1105:
	mov	edi, OFFSET FLAT:label_1107
	mov	esi, OFFSET FLAT:label_803
	mov	edx, 0x5af
	mov	ecx, OFFSET FLAT:label_1104
	call	__assert_fail
.label_1108:
	test	al, 8
	jne	.label_1109
	mov	rax, qword ptr [rsi + 0x20]
	mov	rax, qword ptr [rax + 0x38]
	mov	rdx, qword ptr [rdi + 0x18]
	mov	qword ptr [rdx + rcx*8], rax
.label_1349:
	xor	eax, eax
	pop	rcx
	ret	
.label_2020:
	cmp	qword ptr [rsi + 0x20], 0
	je	.label_1349
	mov	edi, OFFSET FLAT:label_1358
	mov	esi, OFFSET FLAT:label_803
	mov	edx, 0x59f
	mov	ecx, OFFSET FLAT:label_1104
	call	__assert_fail
.label_2021:
	mov	rax, qword ptr [rsi + 0x20]
	mov	rax, qword ptr [rax + 0x38]
	mov	rdx, qword ptr [rdi + 0x18]
	mov	qword ptr [rdx + rcx*8], rax
	cmp	byte ptr [rsi + 0x30], 4
	jne	.label_1349
	lea	rax, [rcx + rcx*2]
	shl	rax, 3
	add	rax, qword ptr [rdi + 0x28]
	mov	rdx, qword ptr [rdi + 0x18]
	mov	rsi, qword ptr [rdx + rcx*8]
	jmp	.label_1348
.label_1106:
	mov	edi, OFFSET FLAT:label_1103
	mov	esi, OFFSET FLAT:label_803
	mov	edx, 0x5b0
	mov	ecx, OFFSET FLAT:label_1104
	call	__assert_fail
	.section	.text
	.align	32
	#Procedure 0x40bba0

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
	ja	.label_1108
	jmp	qword ptr [word ptr [+ (rdx * 8) + label_1110]]
	.section	.text
	.align	32
	#Procedure 0x40bbc0

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
	jne	.label_1112
	mov	rax, qword ptr [rbx + 0x28]
	cmp	rax, qword ptr [rbx + 0x20]
	jne	.label_1112
	cmp	qword ptr [rbx + 0x48], 0
	je	.label_1113
.label_1112:
	mov	rdi, rbx
	mov	rsi, rbp
	mov	edx, r14d
	pop	rbx
	pop	r14
	pop	rbp
	jmp	fseeko
.label_1113:
	mov	rdi, rbx
	call	fileno
	mov	edi, eax
	mov	rsi, rbp
	mov	edx, r14d
	call	lseek
	mov	rcx, rax
	mov	eax, 0xffffffff
	cmp	rcx, -1
	je	.label_1114
	and	byte ptr [rbx], 0xef
	mov	qword ptr [rbx + 0x90], rcx
	xor	eax, eax
.label_1114:
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40bc2e
	.globl sub_40bc2e
	.type sub_40bc2e, @function
sub_40bc2e:

	nop	
	.section	.text
	.align	32
	#Procedure 0x40bc30

	.globl clear_ungetc_buffer_preserving_position
	.type clear_ungetc_buffer_preserving_position, @function
clear_ungetc_buffer_preserving_position:
	test	byte ptr [rdi + 1], 1
	jne	.label_1115
	ret	
.label_1115:
	xor	esi, esi
	mov	edx, 1
	jmp	rpl_fseeko
	.section	.text
	.align	32
	#Procedure 0x40bc43
	.globl sub_40bc43
	.type sub_40bc43, @function
sub_40bc43:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40bc50

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
	jle	.label_1119
	xor	ebp, ebp
	lea	r13, [rsp + 0x10]
	nop	dword ptr [rax + rax]
.label_1118:
	mov	rax, qword ptr [r15 + rbp*8]
	cmp	qword ptr [rbx + rbp*8], 0
	je	.label_1116
	test	rax, rax
	je	.label_1117
	mov	rsi, qword ptr [rbx + rbp*8]
	add	rsi, 8
	mov	rdx, qword ptr [r15 + rbp*8]
	add	rdx, 8
	mov	rdi, r13
	call	re_node_set_init_union
	mov	dword ptr [rsp + 0xc], eax
	test	eax, eax
	jne	.label_1119
	lea	rdi, [rsp + 0xc]
	mov	rsi, r12
	mov	rdx, r13
	call	re_acquire_state
	mov	qword ptr [rbx + rbp*8], rax
	mov	rdi, qword ptr [rsp + 0x20]
	call	free
	mov	eax, dword ptr [rsp + 0xc]
	test	eax, eax
	je	.label_1117
	jmp	.label_1119
	.section	.text
	.align	32
	#Procedure 0x40bcd8
	.globl sub_40bcd8
	.type sub_40bcd8, @function
sub_40bcd8:

	nop	dword ptr [rax + rax]
.label_1116:
	mov	qword ptr [rbx + rbp*8], rax
.label_1117:
	inc	rbp
	xor	eax, eax
	cmp	rbp, r14
	jl	.label_1118
.label_1119:
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
	#Procedure 0x40bcfd
	.globl sub_40bcfd
	.type sub_40bcfd, @function
sub_40bcfd:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x40bd00

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
	jl	.label_1120
	mov	rdi, qword ptr [rbx + 0xd8]
	shl	rcx, 4
	lea	rsi, [rcx + rcx*4]
	call	realloc
	test	rax, rax
	je	.label_1121
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
.label_1120:
	test	rax, rax
	jle	.label_1123
	dec	rax
	mov	rcx, qword ptr [rbx + 0xd8]
	lea	rax, [rax + rax*4]
	cmp	qword ptr [rcx + rax*8 + 8], r12
	jne	.label_1123
	mov	byte ptr [rcx + rax*8 + 0x20], 1
.label_1123:
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
	jge	.label_1122
	mov	dword ptr [rbx + 0xe0], r14d
.label_1122:
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_1121:
	mov	rdi, qword ptr [rbx + 0xd8]
	call	free
	mov	eax, 0xc
	jmp	.label_1122
.label_1124:
	call	abort
	.section	.text
	.align	32
	#Procedure 0x40be85
	.globl sub_40be85
	.type sub_40be85, @function
sub_40be85:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40be93

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
	je	.label_1124
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
	#Procedure 0x40bee0
	.globl quotearg_free
	.type quotearg_free, @function
quotearg_free:

	push	r15
	push	r14
	push	rbx
	mov	r14,  qword ptr [word ptr [rip + slotvec]]
	cmp	dword ptr [dword ptr [rip + nslots]],  2
	jl	.label_1125
	lea	r15, [r14 + 0x18]
	mov	ebx, 1
	nop	
.label_1128:
	mov	rdi, qword ptr [r15]
	call	free
	inc	rbx
	movsxd	rax,  dword ptr [dword ptr [rip + nslots]]
	add	r15, 0x10
	cmp	rbx, rax
	jl	.label_1128
.label_1125:
	mov	rdi, qword ptr [r14 + 8]
	mov	eax, OFFSET FLAT:slot0
	cmp	rdi, rax
	je	.label_1129
	call	free
	mov	qword ptr [word ptr [rip + slotvec0]],  0x100
	mov	qword ptr [word ptr [rip + label_1126]], OFFSET FLAT:slot0
.label_1129:
	mov	eax, OFFSET FLAT:slotvec0
	cmp	r14, rax
	je	.label_1127
	mov	rdi, r14
	call	free
	mov	qword ptr [word ptr [rip + slotvec]], OFFSET FLAT:slotvec0
.label_1127:
	mov	dword ptr [dword ptr [rip + nslots]],  1
	pop	rbx
	pop	r14
	pop	r15
	ret	
	.section	.text
	.align	32
	#Procedure 0x40bf71
	.globl sub_40bf71
	.type sub_40bf71, @function
sub_40bf71:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40bf80

	.globl xcharalloc
	.type xcharalloc, @function
xcharalloc:
	jmp	xmalloc
	.section	.text
	.align	32
	#Procedure 0x40bf85
	.globl sub_40bf85
	.type sub_40bf85, @function
sub_40bf85:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40bf90

	.globl eval5
	.type eval5, @function
eval5:
	push	rbp
	push	r15
	push	r14
	push	rbx
	push	rax
	movzx	r15d, dil
	mov	edi, r15d
	call	eval6
	mov	r14, rax
	jmp	.label_1132
	.section	.text
	.align	32
	#Procedure 0x40bfa8
	.globl sub_40bfa8
	.type sub_40bfa8, @function
sub_40bfa8:

	nop	dword ptr [rax + rax]
.label_1130:
	mov	rax, r14
	add	rsp, 8
	pop	rbx
	pop	r14
	pop	r15
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40bfbe
	.globl sub_40bfbe
	.type sub_40bfbe, @function
sub_40bfbe:

	nop	
.label_1131:
	mov	rdi, rbx
	call	freev
.label_1132:
	mov	edi, OFFSET FLAT:label_1133
	call	nextarg
	test	al, al
	je	.label_1130
	mov	edi, r15d
	call	eval6
	mov	rbx, rax
	test	r15b, r15b
	je	.label_1131
	mov	rdi, r14
	mov	rsi, rbx
	call	docolon
	mov	rbp, rax
	mov	rdi, r14
	call	freev
	mov	r14, rbp
	jmp	.label_1131
	.section	.text
	.align	32
	#Procedure 0x40c000

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
	jne	.label_1135
	mov	rax, r12
	add	r12, 0x38
	cmp	qword ptr [rax + 0x38], 0
	jne	.label_1134
	mov	rsi, qword ptr [rbx + 8]
	mov	rdi, r12
	call	re_node_set_alloc
	mov	dword ptr [rsp + 4], eax
	mov	r13d, 0xc
	test	eax, eax
	jne	.label_1135
	cmp	qword ptr [rbx + 8], 0
	jle	.label_1134
	xor	ebp, ebp
	nop	word ptr [rax + rax]
.label_1136:
	mov	rax, qword ptr [r15 + 0x38]
	mov	rcx, qword ptr [rbx + 0x10]
	mov	rcx, qword ptr [rcx + rbp*8]
	lea	rcx, [rcx + rcx*2]
	lea	rsi, [rax + rcx*8]
	mov	rdi, r12
	call	re_node_set_merge
	mov	dword ptr [rsp + 4], eax
	test	eax, eax
	jne	.label_1135
	inc	rbp
	cmp	rbp, qword ptr [rbx + 8]
	jl	.label_1136
.label_1134:
	mov	rdi, rbx
	mov	rsi, r14
	mov	rdx, r12
	call	re_node_set_add_intersect
	mov	r13d, eax
.label_1135:
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
	#Procedure 0x40c0c0

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
	je	.label_1138
	mov	qword ptr [rax], r14
	xor	eax, eax
.label_1137:
	add	rsp, 8
	pop	rbx
	pop	r14
	ret	
.label_1138:
	xorps	xmm0, xmm0
	movups	xmmword ptr [rbx], xmm0
	mov	eax, 0xc
	jmp	.label_1137
	.section	.text
	.align	32
	#Procedure 0x40c106
	.globl sub_40c106
	.type sub_40c106, @function
sub_40c106:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40c110

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
	jle	.label_1139
	mov	qword ptr [r14], rdi
	shl	rdi, 3
	call	malloc
	mov	qword ptr [r14 + 0x10], rax
	test	rax, rax
	je	.label_1141
	mov	rdx, qword ptr [rbx + 8]
	mov	rsi, qword ptr [rbx + 0x10]
	shl	rdx, 3
	mov	rdi, rax
	call	memcpy
	jmp	.label_1140
.label_1139:
	xorps	xmm0, xmm0
	movups	xmmword ptr [r14], xmm0
	mov	qword ptr [r14 + 0x10], 0
.label_1140:
	xor	eax, eax
.label_1142:
	add	rsp, 8
	pop	rbx
	pop	r14
	ret	
.label_1141:
	xorps	xmm0, xmm0
	movups	xmmword ptr [r14], xmm0
	mov	eax, 0xc
	jmp	.label_1142
	.section	.text
	.align	32
	#Procedure 0x40c17b
	.globl sub_40c17b
	.type sub_40c17b, @function
sub_40c17b:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40c180

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
	je	.label_1145
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
	jne	.label_1143
	cmp	byte ptr [rbx + 8], 9
	jne	.label_1148
	xor	eax, eax
	cmp	dword ptr [r13], 0
	jne	.label_1143
.label_1145:
	cmp	r12, 8
	mov	rdi, qword ptr [rsp + 0x10]
	ja	.label_1144
	mov	eax, 1
	mov	ecx, r12d
	shl	eax, cl
	cdqe	
	or	qword ptr [rdi + 0xa8], rax
.label_1144:
	xor	edx, edx
	mov	ecx, 0x11
	mov	rsi, r8
	call	create_tree
	test	rax, rax
	je	.label_1147
	mov	qword ptr [rax + 0x28], r12
.label_1143:
	add	rsp, 0x18
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_1148:
	test	r8, r8
	je	.label_1146
	mov	esi, OFFSET FLAT:free_tree
	xor	edx, edx
	mov	rdi, r8
	call	postorder
.label_1146:
	mov	dword ptr [r13], 8
	xor	eax, eax
	jmp	.label_1143
	.section	.text
	.align	32
	#Procedure 0x40c26e
	.globl sub_40c26e
	.type sub_40c26e, @function
sub_40c26e:

	nop	word ptr [rax + rax]
.label_1147:
	mov	dword ptr [r13], 0xc
	xor	eax, eax
	jmp	.label_1143
	.section	.text
	.align	32
	#Procedure 0x40c280

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
	jne	.label_1156
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
	je	.label_1153
	cmp	byte ptr [rbx], 0x60
	mov	ecx, OFFSET FLAT:label_1154
	mov	eax, OFFSET FLAT:label_1155
	jmp	.label_1151
.label_1153:
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
	je	.label_1152
	cmp	byte ptr [rbx], 0x60
	mov	ecx, OFFSET FLAT:label_1149
	mov	eax, OFFSET FLAT:label_1150
	jmp	.label_1151
.label_1152:
	cmp	r14d, 9
	mov	ecx, OFFSET FLAT:label_519
	mov	eax, OFFSET FLAT:label_456
.label_1151:
	cmove	rax, rcx
.label_1156:
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40c33d
	.globl sub_40c33d
	.type sub_40c33d, @function
sub_40c33d:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x40c340

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
	je	.label_1157
	mov	rdi, qword ptr [rbx + 8]
	pop	rbx
	jmp	free
.label_1157:
	pop	rbx
	ret	
	.section	.text
	.align	32
	#Procedure 0x40c36b
	.globl sub_40c36b
	.type sub_40c36b, @function
sub_40c36b:

	nop	dword ptr [rax + rax]
.label_1161:
	mov	rax, qword ptr [rax]
	inc	rax
	cmp	rax, r9
	jge	.label_1158
	shl	rax, 4
	cmp	qword ptr [rsi + rax], r8
	jge	.label_1160
	mov	qword ptr [rsi + rax + 8], r8
	shl	r9, 4
	mov	rdi, rdx
	mov	rdx, r9
	jmp	memcpy
.label_1160:
	test	ecx, 0x80000
	je	.label_1159
	cmp	qword ptr [rdx + rax], -1
	je	.label_1159
	shl	r9, 4
	mov	rdi, rsi
	mov	rsi, rdx
	mov	rdx, r9
	jmp	memcpy
.label_1159:
	mov	qword ptr [rsi + rax + 8], r8
.label_1158:
	ret	
	.section	.text
	.align	32
	#Procedure 0x40c3c0
	.globl sub_40c3c0
	.type sub_40c3c0, @function
sub_40c3c0:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40c3ca

	.globl update_regs
	.type update_regs, @function
update_regs:
	mov	rdi, qword ptr [rdi]
	shl	rcx, 4
	lea	rax, [rdi + rcx]
	mov	ecx, dword ptr [rdi + rcx + 8]
	cmp	cl, 9
	je	.label_1161
	cmp	cl, 8
	jne	.label_1158
	mov	rax, qword ptr [rax]
	inc	rax
	cmp	rax, r9
	jge	.label_1158
	shl	rax, 4
	mov	qword ptr [rsi + rax], r8
	mov	qword ptr [rsi + rax + 8], -1
	ret	
	.section	.text
	.align	32
	#Procedure 0x40c400

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
	jae	.label_1162
.label_1163:
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
	jne	.label_1166
	mov	cl, 1
	cmp	dword ptr [rbx + 0xb4], 1
	jg	.label_1164
.label_1166:
	cmp	eax, 6
	sete	cl
.label_1164:
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
.label_1165:
	mov	rax, r14
	add	rsp, 0x18
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_1162:
	lea	rcx, [rbp + rbp]
	mov	r14, -1
	movabs	rax, 0xaaaaaaaaaaaaaaa
	cmp	rcx, rax
	ja	.label_1165
	mov	qword ptr [rsp + 0x10], rcx
	mov	rdi, qword ptr [rbx]
	mov	rsi, rbp
	shl	rsi, 5
	call	realloc
	test	rax, rax
	je	.label_1165
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
	je	.label_1167
	test	rbp, rbp
	je	.label_1167
	test	r13, r13
	je	.label_1167
	test	rax, rax
	je	.label_1167
	mov	qword ptr [rbx + 0x18], rdi
	mov	qword ptr [rbx + 0x20], rbp
	mov	qword ptr [rbx + 0x28], r13
	mov	qword ptr [rbx + 0x30], rax
	mov	rax, qword ptr [rsp + 0x10]
	mov	qword ptr [rbx + 8], rax
	jmp	.label_1163
.label_1167:
	mov	r15, rax
	call	free
	mov	rdi, rbp
	call	free
	mov	rdi, r13
	call	free
	mov	rdi, r15
	call	free
	jmp	.label_1165
	.section	.text
	.align	32
	#Procedure 0x40c5c5
	.globl sub_40c5c5
	.type sub_40c5c5, @function
sub_40c5c5:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40c5d0

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
	jg	.label_1168
	cmp	rax, qword ptr [rbx + 0x58]
	jl	.label_1171
.label_1168:
	mov	rax, qword ptr [rbx + 0x30]
	cmp	rax, r14
	jg	.label_1169
	cmp	rax, qword ptr [rbx + 0x58]
	jge	.label_1169
.label_1171:
	lea	esi, [r14 + 1]
	mov	rdi, rbx
	call	extend_buffers
	mov	ebp, eax
	test	ebp, ebp
	jne	.label_1170
.label_1169:
	xor	ebp, ebp
	cmp	r15, r14
	jge	.label_1170
	mov	rax, qword ptr [rbx + 0xb8]
	lea	rdi, [rax + r15*8 + 8]
	mov	rdx, r14
	sub	rdx, r15
	shl	rdx, 3
	xor	ebp, ebp
	xor	esi, esi
	call	memset
	mov	qword ptr [rbx + 0xc0], r14
.label_1170:
	mov	eax, ebp
	add	rsp, 8
	pop	rbx
	pop	r14
	pop	r15
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40c64e
	.globl sub_40c64e
	.type sub_40c64e, @function
sub_40c64e:

	nop	
	.section	.text
	.align	32
	#Procedure 0x40c650
	.globl version_etc
	.type version_etc, @function
version_etc:

	sub	rsp, 0xd8
	test	al, al
	je	.label_1172
	movaps	xmmword ptr [rsp + 0x50], xmm0
	movaps	xmmword ptr [rsp + 0x60], xmm1
	movaps	xmmword ptr [rsp + 0x70], xmm2
	movaps	xmmword ptr [rsp + 0x80], xmm3
	movaps	xmmword ptr [rsp + 0x90], xmm4
	movaps	xmmword ptr [rsp + 0xa0], xmm5
	movaps	xmmword ptr [rsp + 0xb0], xmm6
	movaps	xmmword ptr [rsp + 0xc0], xmm7
.label_1172:
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
	#Procedure 0x40c6d3
	.globl sub_40c6d3
	.type sub_40c6d3, @function
sub_40c6d3:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40c6e0
	.globl xnmalloc
	.type xnmalloc, @function
xnmalloc:

	movabs	rax, 0x7fffffffffffffff
	xor	edx, edx
	div	rsi
	cmp	rax, rdi
	jb	.label_1173
	imul	rsi, rdi
	mov	rdi, rsi
	jmp	xmalloc
.label_1173:
	push	rax
	call	xalloc_die
	.section	.text
	.align	32
	#Procedure 0x40c703
	.globl sub_40c703
	.type sub_40c703, @function
sub_40c703:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40c710

	.globl xmalloc
	.type xmalloc, @function
xmalloc:
	push	rbx
	mov	rbx, rdi
	call	malloc
	test	rbx, rbx
	je	.label_1174
	test	rax, rax
	je	.label_1175
.label_1174:
	pop	rbx
	ret	
.label_1175:
	call	xalloc_die
	.section	.text
	.align	32
	#Procedure 0x40c72a
	.globl sub_40c72a
	.type sub_40c72a, @function
sub_40c72a:

	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40c730

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
	mov	rcx,  qword ptr [word ptr [rip + label_858]]
	mov	qword ptr [rsp + 0x30], rcx
	movups	xmm0,  xmmword ptr [word ptr [rip + label_859]]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0,  xmmword ptr [word ptr [rip + label_860]]
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
	#Procedure 0x40c79d
	.globl sub_40c79d
	.type sub_40c79d, @function
sub_40c79d:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x40c7a0

	.globl quotearg_char
	.type quotearg_char, @function
quotearg_char:
	mov	eax, esi
	mov	rsi, -1
	mov	edx, eax
	jmp	quotearg_char_mem
	.section	.text
	.align	32
	#Procedure 0x40c7ad
	.globl sub_40c7ad
	.type sub_40c7ad, @function
sub_40c7ad:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x40c7b0

	.globl quotearg_colon
	.type quotearg_colon, @function
quotearg_colon:
	mov	esi, 0x3a
	jmp	quotearg_char
	.section	.text
	.align	32
	#Procedure 0x40c7b7
	.globl sub_40c7b7
	.type sub_40c7b7, @function
sub_40c7b7:

	nop	word ptr [rax + rax]
.label_1187:
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
	je	.label_1178
	lea	rax, [rbx + rbx*2]
	mov	r13, -1
	cmp	qword ptr [rbp + rax*8 + 8], 0
	jle	.label_1178
	add	r14, 8
	lea	r15, [rbp + rax*8 + 8]
	mov	r12, qword ptr [rbp + rax*8 + 0x10]
	mov	r13, -1
	xor	ebp, ebp
	nop	word ptr [rax + rax]
.label_1177:
	mov	rbx, qword ptr [r12 + rbp*8]
	mov	rdi, r14
	mov	rsi, rbx
	call	re_node_set_contains
	test	rax, rax
	je	.label_1179
	cmp	r13, -1
	jne	.label_1180
	mov	r13, rbx
.label_1179:
	inc	rbp
	cmp	rbp, qword ptr [r15]
	jl	.label_1177
	jmp	.label_1178
.label_1180:
	mov	rbp, qword ptr [rsp + 0x10]
	mov	rdi, rbp
	mov	rsi, r13
	call	re_node_set_contains
	test	rax, rax
	jne	.label_1176
	mov	rdi, qword ptr [rsp + 0x60]
	test	rdi, rdi
	je	.label_1178
	mov	rax, qword ptr [rsp + 8]
	mov	rsi, qword ptr [rax]
	mov	rdx, rbx
	mov	rcx, qword ptr [rsp + 0x18]
	mov	r8, qword ptr [rsp + 0x20]
	mov	r9, rbp
	call	push_fail_stack
	mov	rbx, -2
	test	eax, eax
	jne	.label_1176
	jmp	.label_1178
	.section	.text
	.align	32
	#Procedure 0x40c8ac

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
	jne	.label_1187
	test	edi, 0x100000
	jne	.label_1186
	movzx	ecx, dil
	cmp	ecx, 4
	jne	.label_1183
	mov	rax, qword ptr [rax + r14]
	shl	rax, 4
	mov	rdi, qword ptr [rdx + rax + 0x10]
	mov	rax, qword ptr [rdx + rax + 0x18]
	mov	r12, rax
	sub	r12, rdi
	cmp	qword ptr [rsp + 0x60], 0
	je	.label_1181
	cmp	rax, -1
	mov	r13, -1
	je	.label_1178
	cmp	rdi, -1
	je	.label_1178
	test	r12, r12
	je	.label_1182
	mov	rax, qword ptr [rbp + 0x30]
	mov	rcx, qword ptr [rsp + 8]
	mov	rsi, qword ptr [rcx]
	sub	rax, rsi
	cmp	rax, r12
	jl	.label_1178
	mov	rax, qword ptr [rbp + 8]
	add	rdi, rax
	add	rsi, rax
	mov	rdx, r12
	call	memcmp
	test	eax, eax
	jne	.label_1178
	jmp	.label_1184
.label_1186:
	mov	rcx, qword ptr [rcx]
	mov	rdi, r15
	mov	rsi, rbx
	mov	rdx, rbp
	call	check_node_accept_bytes
	test	eax, eax
	je	.label_1183
	movsxd	r12, eax
	jmp	.label_1184
.label_1181:
	test	r12, r12
	jne	.label_1184
.label_1182:
	mov	rdi, qword ptr [rsp + 0x10]
	mov	rsi, rbx
	call	re_node_set_insert
	mov	r13, -2
	test	al, al
	je	.label_1178
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
	jne	.label_1178
.label_1183:
	add	r14, qword ptr [r15]
	mov	rax, qword ptr [rsp + 8]
	mov	rdx, qword ptr [rax]
	mov	rdi, rbp
	mov	rsi, r14
	call	check_node_accept
	mov	r13, -1
	mov	r12d, 1
	test	al, al
	je	.label_1178
.label_1184:
	mov	rax, qword ptr [r15 + 0x18]
	mov	rbx, qword ptr [rax + rbx*8]
	mov	rax, qword ptr [rsp + 8]
	add	r12, qword ptr [rax]
	mov	qword ptr [rax], r12
	cmp	qword ptr [rsp + 0x60], 0
	je	.label_1185
	mov	r13, -1
	cmp	r12, qword ptr [rbp + 0xa8]
	jg	.label_1178
	mov	rax, qword ptr [rbp + 0xb8]
	mov	rdi, qword ptr [rax + r12*8]
	test	rdi, rdi
	je	.label_1178
	add	rdi, 8
	mov	rsi, rbx
	call	re_node_set_contains
	test	rax, rax
	je	.label_1178
.label_1185:
	mov	rax, qword ptr [rsp + 0x10]
	mov	qword ptr [rax + 8], 0
.label_1176:
	mov	r13, rbx
.label_1178:
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
	#Procedure 0x40ca91
	.globl sub_40ca91
	.type sub_40ca91, @function
sub_40ca91:

	nop	word ptr cs:[rax + rax]
.label_1193:
	mov	rdi, rbx
	mov	rsi, r14
	call	transit_state_mb
	mov	ecx, eax
	mov	dword ptr [r15], ecx
	xor	eax, eax
	test	ecx, ecx
	je	.label_1192
	jmp	.label_1189
.label_1191:
	mov	rsi, qword ptr [rbx + 0x48]
	dec	rsi
	mov	edx, dword ptr [rbx + 0xa0]
	mov	rdi, rbx
	call	re_string_context_at
	and	eax, 1
	shl	rax, 8
	or	rax, r12
	mov	rax, qword ptr [r13 + rax*8]
	jmp	.label_1189
	.section	.text
	.align	32
	#Procedure 0x40cade
	.globl sub_40cade
	.type sub_40cade, @function
sub_40cade:

	nop	word ptr [rax + rax]
.label_1188:
	mov	rax, qword ptr [rax + r12*8]
.label_1189:
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	ret	
	.section	.text
	.align	32
	#Procedure 0x40caf2

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
	jne	.label_1193
.label_1192:
	mov	rax, qword ptr [rbx + 0x48]
	lea	rcx, [rax + 1]
	mov	qword ptr [rbx + 0x48], rcx
	mov	rcx, qword ptr [rbx + 8]
	movzx	r12d, byte ptr [rcx + rax]
.label_1190:
	mov	rax, qword ptr [r14 + 0x58]
	test	rax, rax
	jne	.label_1188
	mov	r13, qword ptr [r14 + 0x60]
	test	r13, r13
	jne	.label_1191
	mov	rdi, qword ptr [rbx + 0x98]
	mov	rsi, r14
	call	build_trtable
	test	al, al
	jne	.label_1190
	mov	dword ptr [r15], 0xc
	xor	eax, eax
	jmp	.label_1189
	.section	.text
	.align	32
	#Procedure 0x40cb50

	.globl mbs_logical_substr
	.type mbs_logical_substr, @function
mbs_logical_substr:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x48
	mov	r13, rdx
	mov	r14, rsi
	mov	r12, rdi
	call	strlen
	mov	r15, rax
	call	__ctype_get_mb_cur_max
	cmp	rax, 2
	mov	rbx, r15
	jb	.label_1199
	mov	rdi, r12
	call	mbslen
	mov	rbx, rax
.label_1199:
	lea	rax, [r14 - 1]
	cmp	rax, rbx
	jae	.label_1194
	lea	rax, [r13 + 1]
	cmp	rax, 1
	ja	.label_1195
.label_1194:
	mov	edi, OFFSET FLAT:label_56
	add	rsp, 0x48
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	jmp	xstrdup
.label_1195:
	sub	rbx, r14
	inc	rbx
	cmp	rbx, r13
	cmova	rbx, r13
	call	__ctype_get_mb_cur_max
	cmp	rax, 1
	jne	.label_1200
	lea	rdi, [rbx + 1]
	call	xmalloc
	mov	r15, rax
	lea	rsi, [r12 + r14 - 1]
	mov	rcx, -1
	mov	rdi, r15
	mov	rdx, rbx
	call	__mempcpy_chk
	mov	r12, rax
	jmp	.label_1197
.label_1200:
	inc	r15
	mov	rdi, r15
	call	xmalloc
	mov	r15, rax
	mov	qword ptr [rsp + 0x18], r12
	mov	byte ptr [rsp + 8], 0
	mov	qword ptr [rsp + 0xc], 0
	mov	byte ptr [rsp + 0x14], 0
	lea	rdi, [rsp + 8]
	call	mbuiter_multi_next
	cmp	byte ptr [rsp + 0x28], 0
	sete	al
	cmp	dword ptr [rsp + 0x2c], 0
	setne	cl
	test	rbx, rbx
	mov	r12, r15
	je	.label_1197
	or	al, cl
	mov	r12, r15
	je	.label_1197
	mov	ebp, 1
	lea	r13, [rsp + 8]
	mov	r12, r15
	nop	word ptr cs:[rax + rax]
.label_1198:
	cmp	rbp, r14
	jb	.label_1196
	dec	rbx
	mov	rsi, qword ptr [rsp + 0x18]
	mov	rdx, qword ptr [rsp + 0x20]
	mov	rcx, -1
	mov	rdi, r12
	call	__mempcpy_chk
	mov	r12, rax
.label_1196:
	mov	rax, qword ptr [rsp + 0x20]
	add	qword ptr [rsp + 0x18], rax
	mov	byte ptr [rsp + 0x14], 0
	mov	rdi, r13
	call	mbuiter_multi_next
	cmp	byte ptr [rsp + 0x28], 0
	sete	al
	cmp	dword ptr [rsp + 0x2c], 0
	setne	cl
	test	rbx, rbx
	je	.label_1197
	inc	rbp
	or	al, cl
	jne	.label_1198
.label_1197:
	mov	byte ptr [r12], 0
	mov	rax, r15
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
	#Procedure 0x40ccce
	.globl sub_40ccce
	.type sub_40ccce, @function
sub_40ccce:

	nop	
.label_1203:
	mov	rax, qword ptr [rbx + 0x48]
	lea	rcx, [rax + 1]
	add	rax, qword ptr [rbx + 0x28]
	mov	qword ptr [rbx + 0x48], rcx
	mov	rcx, qword ptr [rbx]
	jmp	.label_1201
	.section	.text
	.align	32
	#Procedure 0x40cce5

	.globl re_string_fetch_byte_case
	.type re_string_fetch_byte_case, @function
re_string_fetch_byte_case:
	push	rbp
	push	r14
	push	rbx
	mov	rbx, rdi
	cmp	byte ptr [rbx + 0x8b], 0
	jne	.label_1205
	mov	rax, qword ptr [rbx + 0x48]
.label_1204:
	lea	rcx, [rax + 1]
	mov	qword ptr [rbx + 0x48], rcx
	mov	rcx, qword ptr [rbx + 8]
.label_1201:
	mov	bpl, byte ptr [rcx + rax]
.label_1202:
	mov	eax, ebp
	pop	rbx
	pop	r14
	pop	rbp
	ret	
.label_1207:
	lea	rax, [r14 + 1]
	mov	qword ptr [rbx + 0x48], rax
	mov	rax, qword ptr [rbx + 8]
	mov	bpl, byte ptr [rax + r14]
	jmp	.label_1202
	.section	.text
	.align	32
	#Procedure 0x40cd22
	.globl sub_40cd22
	.type sub_40cd22, @function
sub_40cd22:

	nop	word ptr cs:[rax + rax]
.label_1205:
	cmp	byte ptr [rbx + 0x8c], 0
	je	.label_1203
	mov	rax, qword ptr [rbx + 0x48]
	cmp	rax, qword ptr [rbx + 0x30]
	je	.label_1206
	mov	rcx, qword ptr [rbx + 0x10]
	cmp	dword ptr [rcx + rax*4], -1
	je	.label_1204
.label_1206:
	mov	r14, qword ptr [rbx + 0x48]
	mov	rax, qword ptr [rbx]
	mov	rcx, qword ptr [rbx + 0x18]
	mov	rdx, qword ptr [rbx + 0x28]
	add	rdx, qword ptr [rcx + r14*8]
	mov	bpl, byte ptr [rax + rdx]
	test	bpl, bpl
	js	.label_1207
	mov	rdi, rbx
	mov	rsi, r14
	call	re_string_char_size_at
	cdqe	
	add	rax, r14
	mov	qword ptr [rbx + 0x48], rax
	jmp	.label_1202
	.section	.text
	.align	32
	#Procedure 0x40cd80

	.globl c_isupper
	.type c_isupper, @function
c_isupper:
	add	edi, -0x41
	cmp	edi, 0x1a
	setb	al
	ret	
	.section	.text
	.align	32
	#Procedure 0x40cd8a
	.globl sub_40cd8a
	.type sub_40cd8a, @function
sub_40cd8a:

	nop	word ptr [rax + rax]
.label_1208:
	ret	
.label_1210:
	xor	eax, eax
	jmp	.label_1208
	.section	.text
	.align	32
	#Procedure 0x40cd95
	.globl sub_40cd95
	.type sub_40cd95, @function
sub_40cd95:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40cd9f
	.globl c_ispunct
	.type c_ispunct, @function
c_ispunct:

	add	edi, -0x21
	cmp	edi, 0x5d
	ja	.label_1210
	mov	al, 1
	jmp	qword ptr [word ptr [+ (rdi * 8) + label_1209]]
	.section	.text
	.align	32
	#Procedure 0x40cdb0

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
	je	.label_1211
	cmp	byte ptr [rdx + 0x30], 0x11
	jne	.label_1211
	lea	rdi, [rsp + 4]
	mov	rsi, r14
	call	lower_subexp
	mov	qword ptr [rbx + 8], rax
	test	rax, rax
	je	.label_1211
	mov	qword ptr [rax], rbx
.label_1211:
	mov	rdx, qword ptr [rbx + 0x10]
	test	rdx, rdx
	je	.label_1212
	cmp	byte ptr [rdx + 0x30], 0x11
	jne	.label_1212
	lea	rdi, [rsp + 4]
	mov	rsi, r14
	call	lower_subexp
	mov	qword ptr [rbx + 0x10], rax
	test	rax, rax
	je	.label_1212
	mov	qword ptr [rax], rbx
.label_1212:
	mov	eax, dword ptr [rsp + 4]
	add	rsp, 8
	pop	rbx
	pop	r14
	ret	
	.section	.text
	.align	32
	#Procedure 0x40ce1e
	.globl sub_40ce1e
	.type sub_40ce1e, @function
sub_40ce1e:

	nop	
.label_1215:
	lea	rax, [r12 + r12]
	mov	rdi, qword ptr [rbx + 0x28]
	lea	rsi, [rax*8 + 8]
	call	realloc
	mov	rcx, rax
	xor	eax, eax
	test	rcx, rcx
	je	.label_1213
	lea	rax, [r12 + r12 + 1]
	mov	qword ptr [rbx + 0x28], rcx
	mov	qword ptr [rbx + 0x18], rax
	jmp	.label_1214
	.section	.text
	.align	32
	#Procedure 0x40ce4e

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
	je	.label_1215
.label_1214:
	mov	edi, 1
	mov	esi, 0x28
	call	rpl_calloc
	test	rax, rax
	je	.label_1213
	mov	rcx, qword ptr [rbx + 0x20]
	mov	rdx, qword ptr [rbx + 0x28]
	mov	qword ptr [rdx + rcx*8], rax
	mov	qword ptr [rax], r15
	mov	qword ptr [rax + 8], r14
	inc	qword ptr [rbx + 0x20]
.label_1213:
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	ret	
	.section	.text
	.align	32
	#Procedure 0x40cea0

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
	je	.label_1225
	lea	r13, [r14 + 1]
	cmp	ecx, 1
	je	.label_1226
	test	ecx, ecx
	jne	.label_1217
	lea	r12, [r13*8]
	mov	rdi, r12
	call	malloc
	mov	qword ptr [r15 + 8], rax
	xor	ebp, ebp
	test	rax, rax
	je	.label_1220
	mov	rdi, r12
	call	malloc
	mov	qword ptr [r15 + 0x10], rax
	test	rax, rax
	je	.label_1228
	mov	qword ptr [r15], r13
	mov	r12d, 1
	jmp	.label_1218
.label_1225:
	mov	r12d, 2
	cmp	qword ptr [r15], r14
	jae	.label_1218
	mov	edi, OFFSET FLAT:label_1224
	mov	esi, OFFSET FLAT:label_162
	mov	edx, 0x1fb
	mov	ecx, OFFSET FLAT:label_1223
	call	__assert_fail
.label_1226:
	mov	r12d, 1
	cmp	r13, qword ptr [r15]
	ja	.label_1227
.label_1218:
	xor	eax, eax
	test	r14, r14
	jle	.label_1230
	mov	rax, qword ptr [r15 + 8]
	mov	rcx, qword ptr [r15 + 0x10]
	add	rbx, 8
	mov	rdx, r14
	nop	word ptr cs:[rax + rax]
.label_1229:
	mov	rsi, qword ptr [rbx - 8]
	mov	qword ptr [rax], rsi
	mov	rsi, qword ptr [rbx]
	mov	qword ptr [rcx], rsi
	add	rax, 8
	add	rcx, 8
	add	rbx, 0x10
	dec	rdx
	jne	.label_1229
	mov	rax, r14
.label_1230:
	cmp	rax, qword ptr [r15]
	jae	.label_1216
	mov	rcx, qword ptr [r15 + 8]
	mov	rdx, qword ptr [r15 + 0x10]
	nop	
.label_1221:
	mov	qword ptr [rdx + rax*8], -1
	mov	qword ptr [rcx + rax*8], -1
	inc	rax
	cmp	rax, qword ptr [r15]
	jb	.label_1221
.label_1216:
	mov	ebp, r12d
.label_1220:
	mov	eax, ebp
	add	rsp, 0x18
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_1227:
	mov	rdi, qword ptr [r15 + 8]
	lea	rsi, [r13*8]
	mov	qword ptr [rsp + 0x10], rsi
	call	realloc
	xor	ebp, ebp
	mov	qword ptr [rsp + 8], rax
	test	rax, rax
	je	.label_1220
	mov	rdi, qword ptr [r15 + 0x10]
	mov	rsi, qword ptr [rsp + 0x10]
	call	realloc
	test	rax, rax
	je	.label_1219
	mov	rcx, qword ptr [rsp + 8]
	mov	qword ptr [r15 + 8], rcx
	mov	qword ptr [r15 + 0x10], rax
	mov	qword ptr [r15], r13
	jmp	.label_1218
.label_1228:
	mov	rdi, qword ptr [r15 + 8]
	call	free
	jmp	.label_1220
.label_1217:
	mov	edi, OFFSET FLAT:label_1222
	mov	esi, OFFSET FLAT:label_162
	mov	edx, 0x1f9
	mov	ecx, OFFSET FLAT:label_1223
	call	__assert_fail
.label_1219:
	mov	rdi, qword ptr [rsp + 8]
	call	free
	jmp	.label_1220
	.section	.text
	.align	32
	#Procedure 0x40d039
	.globl sub_40d039
	.type sub_40d039, @function
sub_40d039:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x40d040

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
	jle	.label_1231
	mov	r15d, 0xc
	movabs	rax, 0x666666666666666
	cmp	r14, rax
	ja	.label_1232
	lea	r12, [r14*8]
	lea	rdi, [r12 + r12*4]
	call	malloc
	mov	rbp, rax
	mov	qword ptr [rbx + 0xd8], rbp
	mov	rdi, r12
	call	malloc
	mov	qword ptr [rbx + 0xf8], rax
	test	rbp, rbp
	je	.label_1232
	test	rax, rax
	je	.label_1232
.label_1231:
	mov	qword ptr [rbx + 0xd0], r14
	mov	dword ptr [rbx + 0xe0], 1
	mov	qword ptr [rbx + 0xf0], r14
	xor	r15d, r15d
.label_1232:
	mov	eax, r15d
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40d0d4
	.globl sub_40d0d4
	.type sub_40d0d4, @function
sub_40d0d4:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40d0e0

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
	je	.label_1242
	mov	rax, qword ptr [r12 + 8]
	test	r15, r15
	je	.label_1236
	test	rax, rax
	jle	.label_1236
	mov	rdi, qword ptr [r15 + 8]
	test	rdi, rdi
	jle	.label_1240
	add	rdi, rax
	mov	qword ptr [r14], rdi
	shl	rdi, 3
	call	malloc
	mov	rcx, rax
	mov	qword ptr [r14 + 0x10], rcx
	mov	eax, 0xc
	test	rcx, rcx
	je	.label_1243
	xor	r13d, r13d
	cmp	qword ptr [r12 + 8], 0
	mov	ebp, 0
	mov	ebx, 0
	jle	.label_1234
	xor	esi, esi
	xor	edx, edx
	xor	r13d, r13d
.label_1239:
	mov	rbx, rsi
	mov	rbp, rdx
	nop	word ptr [rax + rax]
.label_1237:
	cmp	rbp, qword ptr [r15 + 8]
	jge	.label_1234
	mov	rax, qword ptr [r12 + 0x10]
	mov	rcx, qword ptr [rax + r13*8]
	mov	rax, qword ptr [r15 + 0x10]
	mov	rax, qword ptr [rax + rbp*8]
	cmp	rcx, rax
	jle	.label_1245
	inc	rbp
	mov	rcx, qword ptr [r14 + 0x10]
	mov	qword ptr [rcx + rbx*8], rax
	inc	rbx
	cmp	r13, qword ptr [r12 + 8]
	jl	.label_1237
	jmp	.label_1234
.label_1245:
	sete	dl
	movzx	edx, dl
	add	rdx, rbp
	inc	r13
	lea	rsi, [rbx + 1]
	mov	rdi, qword ptr [r14 + 0x10]
	mov	qword ptr [rdi + rbx*8], rcx
	cmp	r13, qword ptr [r12 + 8]
	jl	.label_1239
	xor	edx, edx
	cmp	rcx, rax
	sete	dl
	inc	rbx
	add	rbp, rdx
.label_1234:
	mov	rdx, qword ptr [r12 + 8]
	sub	rdx, r13
	jle	.label_1238
	lea	rdi, [rbx*8]
	add	rdi, qword ptr [r14 + 0x10]
	lea	rsi, [r13*8]
	add	rsi, qword ptr [r12 + 0x10]
	shl	rdx, 3
	call	memcpy
	sub	rbx, r13
	add	rbx, qword ptr [r12 + 8]
	jmp	.label_1235
.label_1238:
	mov	rdx, qword ptr [r15 + 8]
	sub	rdx, rbp
	jle	.label_1235
	lea	rdi, [rbx*8]
	add	rdi, qword ptr [r14 + 0x10]
	lea	rsi, [rbp*8]
	add	rsi, qword ptr [r15 + 0x10]
	shl	rdx, 3
	call	memcpy
	sub	rbx, rbp
	add	rbx, qword ptr [r15 + 8]
.label_1235:
	mov	qword ptr [r14 + 8], rbx
.label_1241:
	xor	eax, eax
.label_1243:
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
	#Procedure 0x40d24c
	.globl sub_40d24c
	.type sub_40d24c, @function
sub_40d24c:

	nop	word ptr cs:[rax + rax]
.label_1233:
	xorps	xmm0, xmm0
	movups	xmmword ptr [r14], xmm0
	mov	qword ptr [r14 + 0x10], 0
	jmp	.label_1241
.label_1240:
	mov	rax, qword ptr [r12 + 8]
.label_1236:
	test	rax, rax
	jle	.label_1242
	mov	rdi, r14
	mov	rsi, r12
	jmp	.label_1244
.label_1242:
	test	r15, r15
	je	.label_1233
	cmp	qword ptr [r15 + 8], 0
	jle	.label_1233
	mov	rdi, r14
	mov	rsi, r15
.label_1244:
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	jmp	re_node_set_init_copy
	.section	.text
	.align	32
	#Procedure 0x40d2a0
	.globl c_iscntrl
	.type c_iscntrl, @function
c_iscntrl:

	mov	al, 1
	cmp	edi, 0x20
	jae	.label_1246
.label_1247:
	ret	
.label_1246:
	cmp	edi, 0x7f
	je	.label_1247
	xor	eax, eax
	jmp	.label_1247
	.section	.text
	.align	32
	#Procedure 0x40d2b1
	.globl sub_40d2b1
	.type sub_40d2b1, @function
sub_40d2b1:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40d2c0

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
	jle	.label_1249
	movsxd	rax, ebx
	add	rax, rbp
	cmp	rax, r13
	jg	.label_1249
	mov	rcx, qword ptr [r12]
	mov	rdi, qword ptr [rcx + rax*8]
	test	rdi, rdi
	je	.label_1248
	add	rdi, 8
	mov	rax, qword ptr [r15 + 0x18]
	mov	rsi, qword ptr [rax + r14*8]
	call	re_node_set_contains
	test	rax, rax
	jne	.label_1249
.label_1248:
	xor	ebx, ebx
.label_1249:
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
	#Procedure 0x40d336
	.globl sub_40d336
	.type sub_40d336, @function
sub_40d336:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40d340

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
	je	.label_1252
	and	ecx, 0xffffffdf
	xor	eax, eax
	cmp	ecx, ebp
	je	.label_1250
	jmp	.label_1251
.label_1252:
	xor	eax, eax
	cmp	cl, bpl
	jne	.label_1251
.label_1250:
	mov	eax, 1
	test	bpl, bpl
	je	.label_1251
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
.label_1251:
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
	#Procedure 0x40d3c8
	.globl sub_40d3c8
	.type sub_40d3c8, @function
sub_40d3c8:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40d3d0

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
	je	.label_1253
	and	ecx, 0xffffffdf
	xor	eax, eax
	cmp	ecx, ebp
	je	.label_1255
	jmp	.label_1254
.label_1253:
	xor	eax, eax
	cmp	cl, bpl
	jne	.label_1254
.label_1255:
	mov	eax, 1
	test	bpl, bpl
	je	.label_1254
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
.label_1254:
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
	#Procedure 0x40d449
	.globl sub_40d449
	.type sub_40d449, @function
sub_40d449:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x40d450

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
	je	.label_1258
	and	ecx, 0xffffffdf
	xor	eax, eax
	cmp	ecx, ebp
	je	.label_1257
	jmp	.label_1256
.label_1258:
	xor	eax, eax
	cmp	cl, bpl
	jne	.label_1256
.label_1257:
	mov	eax, 1
	test	bpl, bpl
	je	.label_1256
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
.label_1256:
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40d4b3
	.globl sub_40d4b3
	.type sub_40d4b3, @function
sub_40d4b3:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40d4c0

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
	je	.label_1261
	and	ecx, 0xffffffdf
	xor	eax, eax
	cmp	ecx, ebp
	je	.label_1259
	jmp	.label_1260
.label_1261:
	xor	eax, eax
	cmp	cl, bpl
	jne	.label_1260
.label_1259:
	mov	eax, 1
	test	bpl, bpl
	je	.label_1260
	movsx	esi, r15b
	movsx	edx, r14b
	mov	rdi, rbx
	add	rsp, 8
	pop	rbx
	pop	r14
	pop	r15
	pop	rbp
	jmp	strcaseeq5
.label_1260:
	add	rsp, 8
	pop	rbx
	pop	r14
	pop	r15
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40d51f
	.globl sub_40d51f
	.type sub_40d51f, @function
sub_40d51f:

	nop	
	.section	.text
	.align	32
	#Procedure 0x40d520

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
	je	.label_1262
	and	ecx, 0xffffffdf
	xor	eax, eax
	cmp	ecx, ebp
	je	.label_1264
	jmp	.label_1263
.label_1262:
	xor	eax, eax
	cmp	cl, bpl
	jne	.label_1263
.label_1264:
	mov	eax, 1
	test	bpl, bpl
	je	.label_1263
	movsx	esi, r14b
	mov	rdi, rbx
	pop	rbx
	pop	r14
	pop	rbp
	jmp	strcaseeq6
.label_1263:
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40d569
	.globl sub_40d569
	.type sub_40d569, @function
sub_40d569:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x40d570

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
	je	.label_1267
	and	ecx, 0xffffffdf
	xor	eax, eax
	cmp	ecx, ebp
	je	.label_1266
	jmp	.label_1265
.label_1267:
	xor	eax, eax
	cmp	cl, bpl
	jne	.label_1265
.label_1266:
	mov	eax, 1
	test	bpl, bpl
	je	.label_1265
	mov	rdi, rbx
	add	rsp, 8
	pop	rbx
	pop	rbp
	jmp	strcaseeq7
.label_1265:
	add	rsp, 8
	pop	rbx
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40d5b5
	.globl sub_40d5b5
	.type sub_40d5b5, @function
sub_40d5b5:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40d5c0

	.globl strcaseeq7
	.type strcaseeq7, @function
strcaseeq7:
	push	rbx
	mov	rbx, rdi
	xor	edi, edi
	call	c_isupper
	movsx	ecx, byte ptr [rbx + 7]
	test	al, al
	je	.label_1270
	mov	eax, 1
	test	ecx, 0xffffffdf
	jne	.label_1269
	jmp	.label_1268
.label_1270:
	mov	eax, 1
	test	cl, cl
	je	.label_1268
.label_1269:
	xor	eax, eax
.label_1268:
	pop	rbx
	ret	
	.section	.text
	.align	32
	#Procedure 0x40d5ef
	.globl sub_40d5ef
	.type sub_40d5ef, @function
sub_40d5ef:

	nop	
	.section	.text
	.align	32
	#Procedure 0x40d5f0

	.globl peek_token_bracket
	.type peek_token_bracket, @function
peek_token_bracket:
	mov	rax, qword ptr [rsi + 0x48]
	cmp	qword ptr [rsi + 0x68], rax
	jle	.label_1280
	mov	rcx, qword ptr [rsi + 8]
	mov	al, byte ptr [rcx + rax]
	mov	byte ptr [rdi], al
	cmp	dword ptr [rsi + 0x90], 2
	jl	.label_1272
	mov	r8, qword ptr [rsi + 0x48]
	cmp	r8, qword ptr [rsi + 0x30]
	je	.label_1272
	mov	rcx, qword ptr [rsi + 0x10]
	cmp	dword ptr [rcx + r8*4], -1
	je	.label_1273
.label_1272:
	test	dl, 1
	je	.label_1277
	cmp	al, 0x5c
	jne	.label_1277
	mov	rcx, qword ptr [rsi + 0x48]
	inc	rcx
	cmp	rcx, qword ptr [rsi + 0x58]
	jge	.label_1277
	mov	qword ptr [rsi + 0x48], rcx
	mov	rax, qword ptr [rsi + 8]
	mov	al, byte ptr [rax + rcx]
	mov	byte ptr [rdi], al
	jmp	.label_1273
.label_1280:
	mov	byte ptr [rdi + 8], 2
	xor	eax, eax
	ret	
.label_1277:
	cmp	al, 0x5c
	jg	.label_1274
	cmp	al, 0x2d
	je	.label_1275
	cmp	al, 0x5b
	jne	.label_1273
	mov	rcx, qword ptr [rsi + 0x48]
	inc	rcx
	cmp	rcx, qword ptr [rsi + 0x58]
	jge	.label_1276
	mov	rsi, qword ptr [rsi + 8]
	mov	cl, byte ptr [rsi + rcx]
	mov	byte ptr [rdi], cl
	cmp	cl, 0x3d
	je	.label_1278
	cmp	cl, 0x3a
	je	.label_1281
	cmp	cl, 0x2e
	jne	.label_1279
	mov	byte ptr [rdi + 8], 0x1a
	mov	eax, 2
	ret	
.label_1274:
	cmp	al, 0x5d
	je	.label_1271
	cmp	al, 0x5e
	jne	.label_1273
	mov	byte ptr [rdi + 8], 0x19
	mov	eax, 1
	ret	
.label_1273:
	mov	byte ptr [rdi + 8], 1
	mov	eax, 1
	ret	
.label_1275:
	mov	byte ptr [rdi + 8], 0x16
	mov	eax, 1
	ret	
.label_1271:
	mov	byte ptr [rdi + 8], 0x15
	mov	eax, 1
	ret	
.label_1276:
	mov	byte ptr [rdi], 0
.label_1279:
	mov	byte ptr [rdi + 8], 1
	mov	byte ptr [rdi], al
	mov	eax, 1
	ret	
.label_1278:
	mov	byte ptr [rdi + 8], 0x1c
	mov	eax, 2
	ret	
.label_1281:
	test	dl, 4
	je	.label_1279
	mov	byte ptr [rdi + 8], 0x1e
	mov	eax, 2
	ret	
	.section	.text
	.align	32
	#Procedure 0x40d6e0
	.globl re_string_elem_size_at
	.type re_string_elem_size_at, @function
re_string_elem_size_at:

	ret	
	.section	.text
	.align	32
	#Procedure 0x40d6e1
	.globl sub_40d6e1
	.type sub_40d6e1, @function
sub_40d6e1:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40d6f0

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
	jne	.label_1284
	movabs	rax, 0x3ff000000000000
	mov	qword ptr [rbx + 0xb8], rax
	movabs	rax, 0x7fffffe87fffffe
	mov	qword ptr [rbx + 0xc0], rax
	mov	r15d, 2
	mov	r14d, 0x80
	test	byte ptr [rbx + 0xb0], 4
	je	.label_1284
	xorps	xmm0, xmm0
	movups	xmmword ptr [rbx + 0xc8], xmm0
.label_1285:
	pop	rbx
	pop	r14
	pop	r15
	ret	
.label_1284:
	call	__ctype_b_loc
	lea	rdx, [r14 + r14]
	add	rdx, qword ptr [rax]
.label_1283:
	mov	rax, rdx
	xor	ecx, ecx
	nop	
.label_1286:
	lea	esi, [r14 + rcx]
	cmp	esi, 0x5f
	je	.label_1282
	movzx	esi, word ptr [rax]
	and	esi, 8
	test	si, si
	je	.label_1287
.label_1282:
	mov	esi, 1
	shl	rsi, cl
	or	qword ptr [rbx + r15*8 + 0xb8], rsi
.label_1287:
	inc	rcx
	add	rax, 2
	cmp	rcx, 0x40
	jne	.label_1286
	inc	r15
	add	r14, 0x40
	sub	rdx, -0x80
	cmp	r15d, 4
	jne	.label_1283
	jmp	.label_1285
	.section	.text
	.align	32
	#Procedure 0x40d7b4
	.globl sub_40d7b4
	.type sub_40d7b4, @function
sub_40d7b4:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40d7c0

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
	jne	.label_1292
	mov	eax, dword ptr [r14]
	test	eax, eax
	jne	.label_1290
.label_1292:
	xor	esi, esi
	xor	edx, edx
	mov	ecx, 2
	mov	rdi, r15
	call	create_tree
	mov	rbx, rax
	test	r13, r13
	je	.label_1288
	mov	ecx, 0x10
	mov	rdi, r15
	mov	rsi, r13
	mov	rdx, rbx
	call	create_tree
	mov	r12, rax
	jmp	.label_1291
.label_1288:
	mov	r12, rbx
.label_1291:
	test	rbx, rbx
	je	.label_1289
	test	r12, r12
	je	.label_1289
.label_1290:
	mov	rax, r12
	add	rsp, 0x18
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_1289:
	mov	dword ptr [r14], 0xc
	xor	r12d, r12d
	jmp	.label_1290
	.section	.text
	.align	32
	#Procedure 0x40d880

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
	je	.label_1293
	xor	eax, eax
.label_1293:
	pop	rbx
	ret	
	.section	.text
	.align	32
	#Procedure 0x40d8b1
	.globl sub_40d8b1
	.type sub_40d8b1, @function
sub_40d8b1:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40d8c0
	.globl xnrealloc
	.type xnrealloc, @function
xnrealloc:

	mov	rcx, rdx
	movabs	rax, 0x7fffffffffffffff
	xor	edx, edx
	div	rcx
	cmp	rax, rsi
	jb	.label_1294
	imul	rcx, rsi
	mov	rsi, rcx
	jmp	xrealloc
.label_1294:
	push	rax
	call	xalloc_die
	.section	.text
	.align	32
	#Procedure 0x40d8e6
	.globl sub_40d8e6
	.type sub_40d8e6, @function
sub_40d8e6:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40d8f0

	.globl xrealloc
	.type xrealloc, @function
xrealloc:
	push	rbx
	mov	rbx, rsi
	test	rdi, rdi
	je	.label_1295
	test	rbx, rbx
	jne	.label_1295
	call	free
	xor	eax, eax
	pop	rbx
	ret	
.label_1295:
	mov	rsi, rbx
	call	realloc
	test	rbx, rbx
	je	.label_1297
	test	rax, rax
	je	.label_1296
.label_1297:
	pop	rbx
	ret	
.label_1296:
	call	xalloc_die
	.section	.text
	.align	32
	#Procedure 0x40d920
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
	#Procedure 0x40d936
	.globl sub_40d936
	.type sub_40d936, @function
sub_40d936:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40d940

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
	je	.label_1298
	mov	rcx, qword ptr [r15 + 8]
	test	rcx, rcx
	je	.label_1298
	add	rcx, rdx
	mov	rax, qword ptr [r14 + 8]
	add	rax, rcx
	mov	rbx, qword ptr [r14]
	cmp	rax, rbx
	jle	.label_1310
	add	rbx, rcx
	mov	rdi, qword ptr [r14 + 0x10]
	lea	rsi, [rbx*8]
	call	realloc
	mov	rcx, rax
	mov	eax, 0xc
	test	rcx, rcx
	je	.label_1298
	mov	qword ptr [r14 + 0x10], rcx
	mov	qword ptr [r14], rbx
.label_1310:
	mov	rcx, qword ptr [r14 + 8]
	mov	rdx, qword ptr [r12 + 8]
	mov	rsi, qword ptr [r12 + 0x10]
	lea	r9, [rdx + rcx]
	mov	r10, qword ptr [r15 + 8]
	mov	r8, qword ptr [r15 + 0x10]
	add	r9, r10
	dec	rcx
.label_1313:
	dec	rdx
	mov	rdi, r10
.label_1304:
	lea	r10, [rdi - 1]
	mov	rbx, qword ptr [r8 + rdi*8 - 8]
	nop	dword ptr [rax + rax]
.label_1309:
	cmp	qword ptr [rsi + rdx*8], rbx
	je	.label_1306
	jl	.label_1308
	test	rdx, rdx
	lea	rdx, [rdx - 1]
	jg	.label_1309
	jmp	.label_1301
	.section	.text
	.align	32
	#Procedure 0x40d9f6
	.globl sub_40d9f6
	.type sub_40d9f6, @function
sub_40d9f6:

	nop	word ptr cs:[rax + rax]
.label_1308:
	cmp	rdi, 2
	mov	rdi, r10
	jge	.label_1304
	jmp	.label_1301
	.section	.text
	.align	32
	#Procedure 0x40da0b
	.globl sub_40da0b
	.type sub_40da0b, @function
sub_40da0b:

	nop	dword ptr [rax + rax]
.label_1306:
	test	rcx, rcx
	js	.label_1303
	mov	rbx, qword ptr [r14 + 0x10]
	mov	rax, qword ptr [r12 + 0x10]
	mov	rax, qword ptr [rax + rdx*8]
	nop	word ptr cs:[rax + rax]
.label_1312:
	cmp	qword ptr [rbx + rcx*8], rax
	jle	.label_1311
	test	rcx, rcx
	lea	rcx, [rcx - 1]
	jg	.label_1312
	jmp	.label_1303
.label_1311:
	mov	rax, qword ptr [r14 + 0x10]
	mov	rax, qword ptr [rax + rcx*8]
	mov	rbx, qword ptr [r12 + 0x10]
	cmp	rax, qword ptr [rbx + rdx*8]
	je	.label_1300
	nop	word ptr cs:[rax + rax]
.label_1303:
	mov	rax, qword ptr [r12 + 0x10]
	mov	rax, qword ptr [rax + rdx*8]
	mov	rbx, qword ptr [r14 + 0x10]
	mov	qword ptr [rbx + r9*8 - 8], rax
	dec	r9
.label_1300:
	test	rdx, rdx
	jle	.label_1301
	cmp	rdi, 2
	jge	.label_1313
.label_1301:
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
	jle	.label_1299
	test	rcx, rcx
	js	.label_1299
	dec	rax
	mov	rdi, qword ptr [r14 + 0x10]
	xor	edx, edx
.label_1302:
	lea	rcx, [rax + r8]
	lea	rbx, [rdi + rcx*8]
	nop	word ptr [rax + rax]
.label_1305:
	mov	rcx, qword ptr [rdi + r10*8]
	mov	rsi, qword ptr [rdi + rax*8]
	cmp	rcx, rsi
	jg	.label_1314
	mov	qword ptr [rbx], rsi
	add	rbx, -8
	test	rax, rax
	lea	rax, [rax - 1]
	jg	.label_1305
	jmp	.label_1299
	.section	.text
	.align	32
	#Procedure 0x40daef
	.globl sub_40daef
	.type sub_40daef, @function
sub_40daef:

	nop	
.label_1314:
	dec	r10
	dec	r8
	mov	qword ptr [rbx], rcx
	jne	.label_1302
	jmp	.label_1307
.label_1299:
	mov	rdx, r8
.label_1307:
	mov	rdi, qword ptr [r14 + 0x10]
	lea	rsi, [rdi + r9*8]
	shl	rdx, 3
	call	memcpy
	xor	eax, eax
.label_1298:
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	ret	
	.section	.text
	.align	32
	#Procedure 0x40db1f
	.globl sub_40db1f
	.type sub_40db1f, @function
sub_40db1f:

	nop	
	.section	.text
	.align	32
	#Procedure 0x40db20

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
	#Procedure 0x40db51
	.globl sub_40db51
	.type sub_40db51, @function
sub_40db51:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40db60

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
	jle	.label_1315
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
.label_1315:
	mov	edi, OFFSET FLAT:label_1316
	mov	esi, OFFSET FLAT:label_162
	mov	edx, 0x555
	mov	ecx, OFFSET FLAT:label_1317
	call	__assert_fail
	.section	.text
	.align	32
	#Procedure 0x40dbf7
	.globl sub_40dbf7
	.type sub_40dbf7, @function
sub_40dbf7:

	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40dc00

	.globl main
	.type main, @function
main:
	push	rbp
	push	rbx
	push	rax
	mov	rbx, rsi
	mov	ebp, edi
	mov	rdi, qword ptr [rbx]
	call	set_program_name
	mov	edi, 6
	mov	esi, OFFSET FLAT:label_56
	call	setlocale
	mov	edi, OFFSET FLAT:label_1326
	mov	esi, OFFSET FLAT:label_1327
	call	bindtextdomain
	mov	edi, OFFSET FLAT:label_1326
	call	textdomain
	call	initialize_exit_failure
	mov	edi, OFFSET FLAT:close_stdout
	call	atexit
	mov	edx, OFFSET FLAT:label_290
	mov	ecx, OFFSET FLAT:label_288
	mov	r8d, OFFSET FLAT:label_1319
	mov	r9d, OFFSET FLAT:usage
	mov	eax, 0
	mov	edi, ebp
	mov	rsi, rbx
	push	0
	push	OFFSET FLAT:label_1320
	push	OFFSET FLAT:label_1321
	push	OFFSET FLAT:label_1322
	call	parse_long_options
	add	rsp, 0x20
	cmp	ebp, 2
	jb	.label_1325
	mov	rax, qword ptr [rbx + 8]
	cmp	byte ptr [rax], 0x2d
	jne	.label_1318
	cmp	byte ptr [rax + 1], 0x2d
	jne	.label_1318
	cmp	byte ptr [rax + 2], 0
	jne	.label_1318
	dec	ebp
	cmp	ebp, 1
	jbe	.label_1325
	add	rbx, 8
.label_1318:
	add	rbx, 8
	mov	qword ptr [word ptr [rip + args]],  rbx
	mov	edi, 1
	call	eval
	mov	rbx, rax
	call	nomoreargs
	test	al, al
	je	.label_1324
	mov	rdi, rbx
	call	printv
	mov	rdi, rbx
	call	null
	movzx	eax, al
	add	rsp, 8
	pop	rbx
	pop	rbp
	ret	
.label_1325:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_1328
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	xor	edi, edi
	xor	esi, esi
	xor	eax, eax
	mov	rdx, rcx
	call	error
	mov	edi, 2
	call	usage
.label_1324:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_1323
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
	mov	rax,  qword ptr [word ptr [rip + args]]
	mov	rdx, qword ptr [rax]
	xor	edi, edi
	mov	esi, 8
	call	quotearg_n_style
	mov	rcx, rax
	mov	edi, 2
	xor	esi, esi
	xor	eax, eax
	mov	rdx, rbx
	call	error
	nop	dword ptr [rax + rax]
.label_1333:
	push	rax
	call	abort
	.section	.text
	.align	32
	#Procedure 0x40dd56
	.globl sub_40dd56
	.type sub_40dd56, @function
sub_40dd56:

	nop	dword ptr [rax]
.label_1330:
	xor	eax, eax
	ret	
	.section	.text
	.align	32
	#Procedure 0x40dd60

	.globl null
	.type null, @function
null:
	mov	eax, dword ptr [rdi]
	cmp	eax, 1
	je	.label_1329
	test	eax, eax
	jne	.label_1333
	cmp	dword ptr [rdi + 0xc], 0
	sete	al
	ret	
.label_1329:
	mov	rcx, qword ptr [rdi + 8]
	mov	dl, byte ptr [rcx]
	mov	al, 1
	test	dl, dl
	je	.label_1331
	xor	esi, esi
	cmp	dl, 0x2d
	sete	sil
	lea	rcx, [rcx + rsi + 1]
	nop	dword ptr [rax]
.label_1332:
	cmp	byte ptr [rcx - 1], 0x30
	jne	.label_1330
	cmp	byte ptr [rcx], 0
	lea	rcx, [rcx + 1]
	jne	.label_1332
.label_1331:
	ret	
.label_1337:
	movsx	eax, byte ptr [rdi]
	add	eax, -0x30
	cmp	eax, 0xa
	jb	.label_1334
	movsx	ecx, byte ptr [rsi]
	add	ecx, -0x30
	xor	eax, eax
	cmp	ecx, 0xa
	jb	.label_1335
	jmp	.label_1336
	.section	.text
	.align	32
	#Procedure 0x40ddbe
	.globl sub_40ddbe
	.type sub_40ddbe, @function
sub_40ddbe:

	nop	dword ptr [rax]
.label_1340:
	inc	rdi
	inc	rsi
	nop	dword ptr [rax]
.label_1339:
	movsx	eax, byte ptr [rdi]
	movsx	ecx, byte ptr [rsi]
	lea	edx, [rax - 0x30]
	cmp	al, cl
	jne	.label_1338
	inc	rdi
	inc	rsi
	xor	eax, eax
	cmp	edx, 0xa
	jb	.label_1339
.label_1336:
	ret	
.label_1338:
	cmp	edx, 9
	ja	.label_1337
	lea	edx, [rcx - 0x30]
	cmp	edx, 9
	ja	.label_1337
	sub	eax, ecx
	ret	
.label_1341:
	inc	rdi
	nop	dword ptr [rax + rax]
.label_1334:
	movsx	eax, byte ptr [rdi]
	inc	rdi
	cmp	eax, 0x30
	je	.label_1334
	add	eax, -0x30
	cmp	eax, 0xa
	sbb	eax, eax
	and	eax, 1
	ret	
	.section	.text
	.align	32
	#Procedure 0x40de1b
	.globl fraccompare
	.type fraccompare, @function
fraccompare:

	cmp	byte ptr [rdi], 0xff
	jne	.label_1342
	cmp	byte ptr [rsi], 0xff
	je	.label_1340
.label_1342:
	cmp	byte ptr [rdi], 0xff
	je	.label_1341
	xor	eax, eax
	cmp	byte ptr [rsi], 0xff
	jne	.label_1336
	inc	rsi
	nop	dword ptr [rax]
.label_1335:
	movsx	eax, byte ptr [rsi]
	inc	rsi
	cmp	eax, 0x30
	je	.label_1335
	add	eax, -0x30
	cmp	eax, 0xa
	sbb	eax, eax
	jmp	.label_1336
	.section	.text
	.align	32
	#Procedure 0x40de50

	.globl bitset_empty
	.type bitset_empty, @function
bitset_empty:
	xorps	xmm0, xmm0
	movups	xmmword ptr [rdi + 0x10], xmm0
	movups	xmmword ptr [rdi], xmm0
	ret	
	.section	.text
	.align	32
	#Procedure 0x40de5b
	.globl sub_40de5b
	.type sub_40de5b, @function
sub_40de5b:

	nop	dword ptr [rax + rax]
.label_1343:
	mov	eax, edi
	ret	
	.section	.text
	.align	32
	#Procedure 0x40de63
	.globl sub_40de63
	.type sub_40de63, @function
sub_40de63:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x40de66

	.globl parse_byte
	.type parse_byte, @function
parse_byte:
	test	rsi, rsi
	je	.label_1343
	jmp	btowc
	.section	.text
	.align	32
	#Procedure 0x40de70

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
	jle	.label_1354
	mov	qword ptr [rsp], rdx
	mov	rcx, qword ptr [rbp + 8]
	mov	bl, byte ptr [rcx + rax]
	mov	byte ptr [r12], bl
	mov	eax, dword ptr [r12 + 8]
	mov	ecx, eax
	and	ecx, 0xff9fffff
	mov	dword ptr [r12 + 8], ecx
	cmp	dword ptr [rbp + 0x90], 2
	jl	.label_1346
	mov	rcx, qword ptr [rbp + 0x48]
	cmp	rcx, qword ptr [rbp + 0x30]
	je	.label_1346
	mov	rdx, qword ptr [rbp + 0x10]
	cmp	dword ptr [rdx + rcx*4], -1
	je	.label_1353
.label_1346:
	cmp	bl, 0x5c
	jne	.label_1347
	mov	rax, qword ptr [rbp + 0x48]
	inc	rax
	cmp	rax, qword ptr [rbp + 0x58]
	jge	.label_1350
	mov	rdi, rbp
	call	re_string_peek_byte_case
	mov	r15d, eax
	mov	byte ptr [r12], r15b
	mov	ebx, 0xffffff00
	and	ebx, dword ptr [r12 + 8]
	or	ebx, 1
	mov	dword ptr [r12 + 8], ebx
	cmp	dword ptr [rbp + 0x90], 2
	jl	.label_1357
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
	jmp	.label_1356
.label_1354:
	mov	byte ptr [r12 + 8], 2
	xor	r14d, r14d
.label_934:
	mov	eax, r14d
	add	rsp, 0x18
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_1347:
	mov	r15d, 0xffffff00
	and	r15d, dword ptr [r12 + 8]
	or	r15d, 1
	mov	dword ptr [r12 + 8], r15d
	cmp	dword ptr [rbp + 0x90], 2
	jl	.label_1355
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
	jmp	.label_1351
.label_1350:
	mov	byte ptr [r12 + 8], 0x24
	mov	r14d, 1
	jmp	.label_934
.label_1355:
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
.label_1351:
	or	r15d, eax
	mov	dword ptr [r12 + 8], r15d
	mov	r14d, 1
	add	bl, 0xf6
	movzx	eax, bl
	cmp	al, 0x73
	ja	.label_934
	jmp	qword ptr [word ptr [+ (rax * 8) + label_1352]]
.label_1974:
	mov	rax, qword ptr [rsp]
	test	ah, 8
	je	.label_934
	jmp	.label_940
.label_1357:
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
.label_1356:
	or	ebx, eax
	mov	dword ptr [r12 + 8], ebx
	movzx	eax, r15b
	mov	r14d, 2
	add	r15b, 0xd9
	movzx	ecx, r15b
	cmp	cl, 0x56
	ja	.label_934
	jmp	qword ptr [word ptr [+ (rcx * 8) + label_1344]]
.label_2027:
	mov	rcx, qword ptr [rsp]
	test	ch, 0x40
	jne	.label_934
	mov	byte ptr [r12 + 8], 4
	add	rax, -0x31
	mov	qword ptr [r12], rax
	jmp	.label_934
.label_1353:
	and	eax, 0xff9fff00
	or	eax, 0x200001
	mov	dword ptr [r12 + 8], eax
	mov	r14d, 1
	jmp	.label_934
.label_1975:
	mov	rdx, qword ptr [rsp]
	test	dl, 8
	jne	.label_947
	mov	rax, qword ptr [rbp + 0x48]
	inc	rax
	cmp	rax, qword ptr [rbp + 0x58]
	je	.label_947
	inc	qword ptr [rbp + 0x48]
	lea	rdi, [rsp + 8]
	mov	rsi, rbp
	call	peek_token
	dec	qword ptr [rbp + 0x48]
	movzx	eax, byte ptr [rsp + 0x10]
	add	eax, -9
	cmp	eax, 1
	ja	.label_934
.label_947:
	mov	byte ptr [r12 + 8], 0xc
	mov	dword ptr [r12], 0x20
	jmp	.label_934
.label_1976:
	mov	rax, qword ptr [rsp]
	test	ah, 0x20
	je	.label_934
	and	r15d, 0xffffff00
	or	r15d, 8
	mov	dword ptr [r12 + 8], r15d
	jmp	.label_934
.label_1977:
	mov	rax, qword ptr [rsp]
	test	ah, 0x20
	je	.label_934
	and	r15d, 0xffffff00
	or	r15d, 9
	mov	dword ptr [r12 + 8], r15d
	jmp	.label_934
.label_1978:
	and	r15d, 0xffffff00
	or	r15d, 0xb
	mov	dword ptr [r12 + 8], r15d
	jmp	.label_934
.label_1979:
	mov	rax, qword ptr [rsp]
	test	ax, 0x402
	jne	.label_934
	and	r15d, 0xffffff00
	or	r15d, 0x12
	mov	dword ptr [r12 + 8], r15d
	jmp	.label_934
.label_1980:
	and	r15d, 0xffffff00
	or	r15d, 5
	mov	dword ptr [r12 + 8], r15d
	jmp	.label_934
.label_1981:
	mov	rax, qword ptr [rsp]
	test	ax, 0x402
	jne	.label_934
	and	r15d, 0xffffff00
	or	r15d, 0x13
	mov	dword ptr [r12 + 8], r15d
	jmp	.label_934
.label_1982:
	and	r15d, 0xffffff00
	or	r15d, 0x14
	mov	dword ptr [r12 + 8], r15d
	jmp	.label_934
.label_1983:
	mov	rcx, qword ptr [rsp]
	test	ecx, 0x800008
	jne	.label_973
	mov	rax, qword ptr [rbp + 0x48]
	test	rax, rax
	je	.label_973
	test	ch, 8
	je	.label_934
	mov	rcx, qword ptr [rbp + 8]
	cmp	byte ptr [rcx + rax - 1], 0xa
	jne	.label_934
.label_973:
	mov	byte ptr [r12 + 8], 0xc
	mov	dword ptr [r12], 0x10
	jmp	.label_934
.label_1984:
	mov	rax, qword ptr [rsp]
	and	eax, 0x1200
	cmp	rax, 0x1200
	jne	.label_934
	and	r15d, 0xffffff00
	or	r15d, 0x17
	mov	dword ptr [r12 + 8], r15d
	jmp	.label_934
.label_1985:
	mov	rax, qword ptr [rsp]
	test	ah, 4
	jne	.label_934
	test	ax, ax
	jns	.label_934
.label_940:
	and	r15d, 0xffffff00
	or	r15d, 0xa
	mov	dword ptr [r12 + 8], r15d
	jmp	.label_934
.label_1986:
	mov	rax, qword ptr [rsp]
	and	eax, 0x1200
	cmp	rax, 0x1200
	jne	.label_934
	and	r15d, 0xffffff00
	or	r15d, 0x18
	mov	dword ptr [r12 + 8], r15d
	jmp	.label_934
.label_2023:
	mov	rax, qword ptr [rsp]
	test	eax, 0x80000
	jne	.label_934
	and	ebx, 0xffffff00
	or	ebx, 0xc
	mov	dword ptr [r12 + 8], ebx
	mov	dword ptr [r12], 0x80
	jmp	.label_934
.label_2024:
	mov	rax, qword ptr [rsp]
	test	ah, 0x20
	jne	.label_934
	and	ebx, 0xffffff00
	or	ebx, 8
	mov	dword ptr [r12 + 8], ebx
	jmp	.label_934
.label_2025:
	mov	rax, qword ptr [rsp]
	test	ah, 0x20
	jne	.label_934
	and	ebx, 0xffffff00
	or	ebx, 9
	mov	dword ptr [r12 + 8], ebx
	jmp	.label_934
.label_2026:
	mov	rax, qword ptr [rsp]
	and	eax, 0x402
	cmp	rax, 2
	jne	.label_934
	and	ebx, 0xffffff00
	or	ebx, 0x12
	mov	dword ptr [r12 + 8], ebx
	jmp	.label_934
.label_2028:
	mov	rax, qword ptr [rsp]
	test	eax, 0x80000
	jne	.label_934
	and	ebx, 0xffffff00
	or	ebx, 0xc
	mov	dword ptr [r12 + 8], ebx
	mov	dword ptr [r12], 6
	jmp	.label_934
.label_2029:
	mov	rax, qword ptr [rsp]
	test	eax, 0x80000
	jne	.label_934
	and	ebx, 0xffffff00
	or	ebx, 0xc
	mov	dword ptr [r12 + 8], ebx
	mov	dword ptr [r12], 9
	jmp	.label_934
.label_2030:
	mov	rax, qword ptr [rsp]
	and	eax, 0x402
	cmp	rax, 2
	jne	.label_934
	and	ebx, 0xffffff00
	or	ebx, 0x13
	mov	dword ptr [r12 + 8], ebx
	jmp	.label_934
.label_2031:
	mov	rax, qword ptr [rsp]
	test	eax, 0x80000
	jne	.label_934
	and	ebx, 0xffffff00
	or	ebx, 0xc
	mov	dword ptr [r12 + 8], ebx
	mov	dword ptr [r12], 0x200
	jmp	.label_934
.label_2032:
	mov	rax, qword ptr [rsp]
	test	eax, 0x80000
	jne	.label_934
	and	ebx, 0xffffff00
	or	ebx, 0x23
	mov	dword ptr [r12 + 8], ebx
	jmp	.label_934
.label_2033:
	mov	rax, qword ptr [rsp]
	test	eax, 0x80000
	jne	.label_934
	and	ebx, 0xffffff00
	or	ebx, 0x21
	mov	dword ptr [r12 + 8], ebx
	jmp	.label_934
.label_2034:
	mov	rax, qword ptr [rsp]
	test	eax, 0x80000
	jne	.label_934
	and	ebx, 0xffffff00
	or	ebx, 0xc
	mov	dword ptr [r12 + 8], ebx
	mov	dword ptr [r12], 0x40
	jmp	.label_934
.label_2035:
	mov	rax, qword ptr [rsp]
	test	eax, 0x80000
	jne	.label_934
	and	ebx, 0xffffff00
	or	ebx, 0xc
	mov	dword ptr [r12 + 8], ebx
	mov	dword ptr [r12], 0x100
	jmp	.label_934
.label_2036:
	mov	rax, qword ptr [rsp]
	test	eax, 0x80000
	jne	.label_934
	and	ebx, 0xffffff00
	or	ebx, 0x22
	mov	dword ptr [r12 + 8], ebx
	jmp	.label_934
.label_2037:
	mov	rax, qword ptr [rsp]
	test	eax, 0x80000
	jne	.label_934
	and	ebx, 0xffffff00
	or	ebx, 0x20
	mov	dword ptr [r12 + 8], ebx
	jmp	.label_934
.label_2038:
	mov	rax, qword ptr [rsp]
	and	eax, 0x1200
	cmp	rax, 0x200
	jne	.label_934
	and	ebx, 0xffffff00
	or	ebx, 0x17
	mov	dword ptr [r12 + 8], ebx
	jmp	.label_934
.label_2039:
	mov	rax, qword ptr [rsp]
	test	ah, 4
	jne	.label_934
	test	ax, ax
	js	.label_934
	and	ebx, 0xffffff00
	or	ebx, 0xa
	mov	dword ptr [r12 + 8], ebx
	jmp	.label_934
.label_2040:
	mov	rax, qword ptr [rsp]
	and	eax, 0x1200
	cmp	rax, 0x200
	jne	.label_934
	and	ebx, 0xffffff00
	or	ebx, 0x18
	mov	dword ptr [r12 + 8], ebx
	jmp	.label_934
	.section	.text
	.align	32
	#Procedure 0x40e526
	.globl sub_40e526
	.type sub_40e526, @function
sub_40e526:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40e530
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
	#Procedure 0x40e543
	.globl sub_40e543
	.type sub_40e543, @function
sub_40e543:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40e550

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
	jle	.label_1362
	mov	r13b, byte ptr [r12]
	mov	rbp, -1
	nop	
.label_1364:
	cmp	byte ptr [r12 + 8], 0x1e
	jne	.label_1359
	mov	rdi, rbx
	call	re_string_fetch_byte_case
	jmp	.label_1360
	.section	.text
	.align	32
	#Procedure 0x40e592
	.globl sub_40e592
	.type sub_40e592, @function
sub_40e592:

	nop	word ptr cs:[rax + rax]
.label_1359:
	mov	rax, qword ptr [rbx + 0x48]
	lea	rcx, [rax + 1]
	mov	qword ptr [rbx + 0x48], rcx
	mov	rcx, qword ptr [rbx + 8]
	movzx	eax, byte ptr [rcx + rax]
.label_1360:
	mov	rcx, qword ptr [rbx + 0x48]
	cmp	qword ptr [rbx + 0x68], rcx
	jle	.label_1362
	cmp	al, r13b
	jne	.label_1365
	mov	rdx, qword ptr [rbx + 8]
	cmp	byte ptr [rdx + rcx], 0x5d
	je	.label_1361
.label_1365:
	mov	rcx, qword ptr [r15 + 8]
	mov	byte ptr [rcx + rbp + 1], al
	inc	rbp
	cmp	rbp, 0x1e
	jle	.label_1364
.label_1362:
	mov	eax, r14d
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_1366:
	mov	dword ptr [r15], 2
	jmp	.label_1362
	.section	.text
	.align	32
	#Procedure 0x40e5f9
	.globl sub_40e5f9
	.type sub_40e5f9, @function
sub_40e5f9:

	nop	
.label_1363:
	mov	dword ptr [r15], 4
	jmp	.label_1362
.label_1361:
	inc	rcx
	mov	qword ptr [rbx + 0x48], rcx
	mov	rax, qword ptr [r15 + 8]
	mov	byte ptr [rax + rbp + 1], 0
	mov	al, byte ptr [r12 + 8]
	xor	r14d, r14d
	cmp	al, 0x1e
	je	.label_1363
	cmp	al, 0x1c
	je	.label_1366
	cmp	al, 0x1a
	jne	.label_1362
	mov	dword ptr [r15], 3
	jmp	.label_1362
	.section	.text
	.align	32
	#Procedure 0x40e630

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
	jne	.label_1367
	lea	rcx, [rax + rax + 2]
	lea	rax, [rax + rax]
	mov	qword ptr [rbx], rcx
	mov	rdi, qword ptr [rbx + 0x10]
	lea	rsi, [rax*8 + 0x10]
	call	realloc
	test	rax, rax
	je	.label_1368
	mov	qword ptr [rbx + 0x10], rax
.label_1367:
	mov	rax, qword ptr [rbx + 8]
	lea	rcx, [rax + 1]
	mov	qword ptr [rbx + 8], rcx
	mov	rcx, qword ptr [rbx + 0x10]
	mov	qword ptr [rcx + rax*8], r14
	mov	al, 1
.label_1369:
	add	rsp, 8
	pop	rbx
	pop	r14
	ret	
.label_1368:
	xor	eax, eax
	jmp	.label_1369
	.section	.text
	.align	32
	#Procedure 0x40e68b
	.globl sub_40e68b
	.type sub_40e68b, @function
sub_40e68b:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40e690

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
	ja	.label_1374
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
	jne	.label_1374
	mov	rdi, qword ptr [rbx + 0xb8]
	test	rdi, rdi
	je	.label_1371
	mov	rax, qword ptr [rbx + 0x40]
	lea	rsi, [rax*8 + 8]
	call	realloc
	mov	rcx, rax
	test	rcx, rcx
	mov	eax, 0xc
	je	.label_1374
	mov	qword ptr [rbx + 0xb8], rcx
.label_1371:
	cmp	byte ptr [rbx + 0x88], 0
	mov	eax, dword ptr [rbx + 0x90]
	je	.label_1372
	mov	rdi, rbx
	cmp	eax, 2
	jl	.label_1375
	call	build_wcs_upper_buffer
	test	eax, eax
	je	.label_1370
	jmp	.label_1374
.label_1372:
	cmp	eax, 2
	jl	.label_1373
	mov	rdi, rbx
	call	build_wcs_buffer
	jmp	.label_1370
.label_1375:
	call	build_upper_buffer
	jmp	.label_1370
.label_1373:
	cmp	qword ptr [rbx + 0x78], 0
	je	.label_1370
	mov	rdi, rbx
	call	re_string_translate_buffer
.label_1370:
	xor	eax, eax
.label_1374:
	pop	rbx
	ret	
	.section	.text
	.align	32
	#Procedure 0x40e752
	.globl sub_40e752
	.type sub_40e752, @function
sub_40e752:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40e760

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
	je	.label_1376
	movaps	xmmword ptr [rsp + 0x50], xmm0
	movaps	xmmword ptr [rsp + 0x60], xmm1
	movaps	xmmword ptr [rsp + 0x70], xmm2
	movaps	xmmword ptr [rsp + 0x80], xmm3
	movaps	xmmword ptr [rsp + 0x90], xmm4
	movaps	xmmword ptr [rsp + 0xa0], xmm5
	movaps	xmmword ptr [rsp + 0xb0], xmm6
	movaps	xmmword ptr [rsp + 0xc0], xmm7
.label_1376:
	mov	ebp,  dword ptr [dword ptr [rip + opterr]]
	mov	dword ptr [dword ptr [rip + opterr]],  0
	cmp	edi, 2
	jne	.label_1377
	mov	edx, OFFSET FLAT:label_147
	mov	ecx, OFFSET FLAT:long_options
	xor	r8d, r8d
	call	getopt_long
	cmp	eax, 0x68
	je	.label_1378
	cmp	eax, 0x76
	jne	.label_1377
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
.label_1378:
	xor	edi, edi
	call	rbx
.label_1377:
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
	#Procedure 0x40e851
	.globl sub_40e851
	.type sub_40e851, @function
sub_40e851:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40e860
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
	#Procedure 0x40e893
	.globl sub_40e893
	.type sub_40e893, @function
sub_40e893:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40e8a0
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
	je	.label_1379
	movaps	xmmword ptr [rsp + 0x50], xmm0
	movaps	xmmword ptr [rsp + 0x60], xmm1
	movaps	xmmword ptr [rsp + 0x70], xmm2
	movaps	xmmword ptr [rsp + 0x80], xmm3
	movaps	xmmword ptr [rsp + 0x90], xmm4
	movaps	xmmword ptr [rsp + 0xa0], xmm5
	movaps	xmmword ptr [rsp + 0xb0], xmm6
	movaps	xmmword ptr [rsp + 0xc0], xmm7
.label_1379:
	mov	ebp,  dword ptr [dword ptr [rip + opterr]]
	mov	dword ptr [dword ptr [rip + opterr]],  1
	mov	eax, OFFSET FLAT:label_56
	mov	edx, OFFSET FLAT:label_147
	test	r9b, r9b
	cmovne	rdx, rax
	mov	ecx, OFFSET FLAT:long_options
	xor	r8d, r8d
	call	getopt_long
	cmp	eax, -1
	je	.label_1383
	mov	rcx, qword ptr [rsp + 0x100]
	cmp	eax, 0x68
	je	.label_1380
	cmp	eax, 0x76
	je	.label_1381
	mov	edi,  dword ptr [dword ptr [rip + exit_failure]]
	jmp	.label_1382
.label_1381:
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
	#Procedure 0x40e984
	.globl sub_40e984
	.type sub_40e984, @function
sub_40e984:

	nop	dword ptr [rax]
.label_1380:
	xor	edi, edi
.label_1382:
	call	rcx
.label_1383:
	mov	dword ptr [dword ptr [rip + opterr]],  ebp
	add	rsp, 0xd8
	pop	rbx
	pop	r14
	pop	r15
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40e9a0

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
	je	.label_1418
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
	jle	.label_1425
	lea	rsi, [r15 + 1]
	lea	rdi, [rbp - 0x88]
	call	re_node_set_alloc
	mov	dword ptr [rbp - 0x2c], eax
	movabs	rcx, 0xaaaaaaaaaaaa855
	cmp	r15, rcx
	ja	.label_1387
	test	eax, eax
	jne	.label_1387
	lea	rax, [r15*8]
	lea	rdi, [rax + rax*2]
	lea	rax, [rax + rax*2 + 0x3800]
	cmp	rax, 0xfbf
	mov	qword ptr [rbp - 0x98], r13
	ja	.label_1395
	mov	rax, rsp
	add	rdi, 0xf
	and	rdi, 0xfffffffffffffff0
	sub	rax, rdi
	mov	rsp, rax
	mov	dword ptr [rbp - 0x44], 0
	jmp	.label_1399
.label_1395:
	call	malloc
	test	rax, rax
	je	.label_1387
	mov	cl, 1
	mov	dword ptr [rbp - 0x44], ecx
.label_1399:
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
.label_1388:
	mov	qword ptr [rbp - 0x80], 0
	lea	rax, [r15 + r15*2]
	cmp	qword ptr [r14 + rax*8 + 8], 0
	jle	.label_1417
	mov	rcx, qword ptr [rbp - 0x60]
	lea	r12, [rcx + rax*8 + 8]
	mov	r13, qword ptr [rcx + rax*8 + 0x10]
	xor	r14d, r14d
	nop	word ptr cs:[rax + rax]
.label_1391:
	mov	rax, qword ptr [r13 + r14*8]
	mov	rcx, qword ptr [rbx + 0x18]
	mov	rax, qword ptr [rcx + rax*8]
	cmp	rax, -1
	je	.label_1424
	mov	rcx, qword ptr [rbx + 0x30]
	lea	rax, [rax + rax*2]
	lea	rsi, [rcx + rax*8]
	lea	rdi, [rbp - 0x88]
	call	re_node_set_merge
	mov	dword ptr [rbp - 0x2c], eax
	test	eax, eax
	jne	.label_1389
.label_1424:
	inc	r14
	cmp	r14, qword ptr [r12]
	jl	.label_1391
.label_1417:
	xor	ecx, ecx
	lea	rdi, [rbp - 0x2c]
	mov	rsi, rbx
	lea	rdx, [rbp - 0x88]
	call	re_acquire_state_context
	mov	rcx, qword ptr [rbp - 0x40]
	mov	qword ptr [rcx + r15*8], rax
	test	rax, rax
	jne	.label_1397
	mov	ecx, dword ptr [rbp - 0x2c]
	test	ecx, ecx
	jne	.label_1389
.label_1397:
	cmp	byte ptr [rax + 0x68], 0
	js	.label_1400
	mov	rcx, qword ptr [rbp - 0x38]
	mov	qword ptr [rcx + r15*8], rax
	mov	rax, qword ptr [rbp - 0x40]
	mov	rax, qword ptr [rax + r15*8]
	mov	rcx, qword ptr [rbp - 0x70]
	mov	qword ptr [rcx + r15*8], rax
	jmp	.label_1401
	.section	.text
	.align	32
	#Procedure 0x40eb7f
	.globl sub_40eb7f
	.type sub_40eb7f, @function
sub_40eb7f:

	nop	
.label_1400:
	mov	ecx, 1
	lea	rdi, [rbp - 0x2c]
	mov	rsi, rbx
	lea	rdx, [rbp - 0x88]
	call	re_acquire_state_context
	mov	rcx, qword ptr [rbp - 0x38]
	mov	qword ptr [rcx + r15*8], rax
	test	rax, rax
	jne	.label_1409
	mov	ecx, dword ptr [rbp - 0x2c]
	test	ecx, ecx
	jne	.label_1389
.label_1409:
	mov	rcx, qword ptr [rbp - 0x40]
	cmp	qword ptr [rcx + r15*8], rax
	je	.label_1412
	cmp	dword ptr [rbx + 0xb4], 1
	mov	al, 1
	jg	.label_1415
	mov	rax, qword ptr [rbp - 0x50]
.label_1415:
	mov	qword ptr [rbp - 0x50], rax
.label_1412:
	mov	ecx, 2
	lea	rdi, [rbp - 0x2c]
	mov	rsi, rbx
	lea	rdx, [rbp - 0x88]
	call	re_acquire_state_context
	mov	rcx, qword ptr [rbp - 0x70]
	mov	qword ptr [rcx + r15*8], rax
	test	rax, rax
	jne	.label_1401
	mov	eax, dword ptr [rbp - 0x2c]
	test	eax, eax
	jne	.label_1389
	nop	dword ptr [rax]
.label_1401:
	mov	rsi, r15
	shl	rsi, 5
	mov	r12, qword ptr [rbp - 0x68]
	add	rsi, r12
	lea	rdi, [rbp - 0xc0]
	call	bitset_merge
	inc	r15
	cmp	r15, qword ptr [rbp - 0x58]
	mov	r14, qword ptr [rbp - 0x60]
	jl	.label_1388
	mov	rax, qword ptr [rbp - 0x50]
	and	al, 1
	mov	qword ptr [rbp - 0x50], rax
	mov	edi, 8
	jne	.label_1392
	mov	esi, 0x100
	call	rpl_calloc
	mov	rcx, rax
	mov	rax, qword ptr [rbp - 0x98]
	mov	qword ptr [rax], rcx
	mov	qword ptr [rbp - 0x38], rcx
	test	rcx, rcx
	je	.label_1389
	mov	rax, qword ptr [rbp - 0x40]
	lea	r8, [rax - 8]
	xor	r14d, r14d
	mov	r12, qword ptr [rbp - 0x68]
	mov	r9, r12
	xor	r13d, r13d
	mov	r15, qword ptr [rbp - 0x58]
	nop	dword ptr [rax]
.label_1422:
	mov	rdi, qword ptr [rbp + r13*8 - 0xc0]
	test	rdi, rdi
	je	.label_1402
	mov	rcx, r14
	mov	edx, 1
	jmp	.label_1407
.label_1420:
	mov	r11, r9
	mov	r10, r8
	nop	dword ptr [rax]
.label_1410:
	add	r10, 8
	test	qword ptr [r11], rdx
	lea	r11, [r11 + 0x20]
	je	.label_1410
	test	qword ptr [rbx + r13*8 + 0xb8], rdx
	je	.label_1386
	mov	rax, qword ptr [r10 + r15*8]
	jmp	.label_1414
.label_1386:
	mov	rax, qword ptr [r10]
.label_1414:
	mov	rsi, qword ptr [rbp - 0x38]
	mov	qword ptr [rsi + rcx*8], rax
	jmp	.label_1423
	.section	.text
	.align	32
	#Procedure 0x40ecca
	.globl sub_40ecca
	.type sub_40ecca, @function
sub_40ecca:

	nop	word ptr [rax + rax]
.label_1407:
	test	dil, 1
	jne	.label_1420
.label_1423:
	add	rdx, rdx
	shr	rdi, 1
	inc	rcx
	test	rdi, rdi
	jne	.label_1407
.label_1402:
	inc	r13
	add	r14, 0x40
	add	r9, 8
	cmp	r13, 4
	jne	.label_1422
.label_1408:
	lea	rdi, [rbp - 0xc0]
	mov	esi, 0xa
	call	bitset_contain
	test	al, al
	mov	r14, qword ptr [rbp - 0x60]
	je	.label_1385
	test	r15, r15
	jle	.label_1385
	xor	ebx, ebx
	nop	word ptr cs:[rax + rax]
.label_1394:
	mov	esi, 0xa
	mov	rdi, r12
	call	bitset_contain
	test	al, al
	jne	.label_1413
	inc	rbx
	add	r12, 0x20
	cmp	rbx, r15
	jl	.label_1394
	jmp	.label_1385
.label_1413:
	mov	rax, r15
	shl	rax, 4
	add	rax, qword ptr [rbp - 0x40]
	mov	rcx, qword ptr [rbp - 0x50]
	test	cl, cl
	mov	rcx, qword ptr [rax + rbx*8]
	mov	rdx, qword ptr [rbp - 0x38]
	mov	qword ptr [rdx + 0x50], rcx
	je	.label_1385
	mov	rax, qword ptr [rax + rbx*8]
	mov	rcx, qword ptr [rbp - 0x38]
	mov	qword ptr [rcx + 0x850], rax
.label_1385:
	mov	eax, dword ptr [rbp - 0x44]
	test	al, al
	je	.label_1403
	mov	rdi, qword ptr [rbp - 0x40]
	call	free
.label_1403:
	mov	rdi, qword ptr [rbp - 0x78]
	call	free
	test	r15, r15
	jle	.label_1406
	mov	rbx, r14
	add	rbx, 0x10
	nop	word ptr cs:[rax + rax]
.label_1411:
	mov	rdi, qword ptr [rbx]
	call	free
	add	rbx, 0x18
	dec	r15
	jne	.label_1411
.label_1406:
	mov	rdi, r14
	call	free
	mov	al, 1
.label_1419:
	lea	rsp, [rbp - 0x28]
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_1418:
	xor	eax, eax
	jmp	.label_1419
.label_1425:
	mov	rdi, r14
	call	free
	test	r15, r15
	je	.label_1384
	xor	eax, eax
	jmp	.label_1419
.label_1392:
	mov	esi, 0x200
	call	rpl_calloc
	mov	rcx, rax
	mov	rax, qword ptr [rbp - 0x90]
	mov	qword ptr [rax + 0x60], rcx
	mov	qword ptr [rbp - 0x38], rcx
	test	rcx, rcx
	je	.label_1389
	mov	rax, qword ptr [rbp - 0x40]
	lea	r8, [rax - 8]
	xor	ebx, ebx
	mov	r12, qword ptr [rbp - 0x68]
	mov	r11, r12
	xor	esi, esi
	mov	r15, qword ptr [rbp - 0x58]
.label_1405:
	mov	rdi, qword ptr [rbp + rsi*8 - 0xc0]
	test	rdi, rdi
	je	.label_1390
	mov	rcx, rbx
	mov	eax, 1
	jmp	.label_1393
.label_1404:
	mov	r10, r11
	mov	r9, r8
.label_1396:
	add	r9, 8
	test	qword ptr [r10], rax
	lea	r10, [r10 + 0x20]
	je	.label_1396
	mov	rdx, qword ptr [r9]
	mov	r10, qword ptr [rbp - 0x38]
	mov	qword ptr [r10 + rcx*8], rdx
	mov	rdx, qword ptr [r9 + r15*8]
	mov	qword ptr [r10 + rcx*8 + 0x800], rdx
	jmp	.label_1398
	.section	.text
	.align	32
	#Procedure 0x40ee62
	.globl sub_40ee62
	.type sub_40ee62, @function
sub_40ee62:

	nop	word ptr cs:[rax + rax]
.label_1393:
	test	dil, 1
	jne	.label_1404
.label_1398:
	add	rax, rax
	shr	rdi, 1
	inc	rcx
	test	rdi, rdi
	jne	.label_1393
.label_1390:
	inc	rsi
	add	rbx, 0x40
	add	r11, 8
	cmp	rsi, 4
	jne	.label_1405
	jmp	.label_1408
.label_1389:
	mov	eax, dword ptr [rbp - 0x44]
	test	al, al
	mov	r14, qword ptr [rbp - 0x60]
	mov	r15, qword ptr [rbp - 0x58]
	mov	rdi, qword ptr [rbp - 0x40]
	je	.label_1387
	call	free
.label_1387:
	mov	rdi, qword ptr [rbp - 0x78]
	call	free
	test	r15, r15
	jle	.label_1416
	mov	rbx, r14
	add	rbx, 0x10
	nop	word ptr [rax + rax]
.label_1421:
	mov	rdi, qword ptr [rbx]
	call	free
	add	rbx, 0x18
	dec	r15
	jne	.label_1421
.label_1416:
	mov	rdi, r14
	call	free
	xor	eax, eax
	jmp	.label_1419
.label_1384:
	mov	edi, 8
	mov	esi, 0x100
	call	rpl_calloc
	mov	qword ptr [r13], rax
	test	rax, rax
	setne	al
	jmp	.label_1419
	.section	.text
	.align	32
	#Procedure 0x40ef0e
	.globl sub_40ef0e
	.type sub_40ef0e, @function
sub_40ef0e:

	nop	
	.section	.text
	.align	32
	#Procedure 0x40ef10

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
	jmp	.label_1430
	.section	.text
	.align	32
	#Procedure 0x40ef29
	.globl sub_40ef29
	.type sub_40ef29, @function
sub_40ef29:

	nop	dword ptr [rax]
.label_1432:
	mov	rax, qword ptr [rbp + 0x28]
	mov	rax, qword ptr [rax + rbx*8 + 0x10]
	mov	rbx, qword ptr [rax]
.label_1430:
	mov	rdi, r12
	mov	rsi, rbx
	call	re_node_set_contains
	test	rax, rax
	jne	.label_1426
	mov	rax, qword ptr [rbp]
	mov	rcx, rbx
	shl	rcx, 4
	movzx	edx, byte ptr [rax + rcx + 8]
	cmp	edx, r15d
	jne	.label_1427
	cmp	qword ptr [rax + rcx], r14
	je	.label_1428
.label_1427:
	mov	rdi, r12
	mov	rsi, rbx
	call	re_node_set_insert
	mov	ecx, eax
	mov	eax, 0xc
	test	cl, cl
	je	.label_1431
	mov	rax, qword ptr [rbp + 0x28]
	lea	rbx, [rbx + rbx*2]
	mov	rcx, qword ptr [rax + rbx*8 + 8]
	cmp	rcx, 2
	je	.label_1429
	test	rcx, rcx
	jne	.label_1432
	jmp	.label_1426
	.section	.text
	.align	32
	#Procedure 0x40ef9b
	.globl sub_40ef9b
	.type sub_40ef9b, @function
sub_40ef9b:

	nop	dword ptr [rax + rax]
.label_1428:
	cmp	r15d, 9
	jne	.label_1426
	mov	rdi, r12
	mov	rsi, rbx
	call	re_node_set_insert
	mov	ecx, eax
	mov	eax, 0xc
	test	cl, cl
	je	.label_1431
.label_1426:
	xor	eax, eax
.label_1431:
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40efc7
	.globl sub_40efc7
	.type sub_40efc7, @function
sub_40efc7:

	nop	dword ptr [rax + rax]
.label_1429:
	mov	rax, qword ptr [rax + rbx*8 + 0x10]
	mov	rdx, qword ptr [rax + 8]
	mov	rdi, rbp
	mov	rsi, r12
	mov	rcx, r14
	mov	r8d, r15d
	call	check_arrival_expand_ecl_sub
	test	eax, eax
	je	.label_1432
	jmp	.label_1431
	.section	.text
	.align	32
	#Procedure 0x40eff0

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
	#Procedure 0x40f026
	.globl sub_40f026
	.type sub_40f026, @function
sub_40f026:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40f030

	.globl close_stdout
	.type close_stdout, @function
close_stdout:
	push	rbp
	push	r14
	push	rbx
	mov	rdi,  qword ptr [word ptr [rip + stdout]]
	call	close_stream
	test	eax, eax
	je	.label_1433
	cmp	byte ptr [byte ptr [rip + ignore_EPIPE]],  0
	je	.label_1436
	call	__errno_location
	cmp	dword ptr [rax], 0x20
	jne	.label_1436
.label_1433:
	mov	rdi,  qword ptr [word ptr [rip + stderr]]
	call	close_stream
	test	eax, eax
	jne	.label_1435
	pop	rbx
	pop	r14
	pop	rbp
	ret	
.label_1437:
	mov	rdi, rbx
	call	quotearg_colon
	mov	rcx, rax
	xor	edi, edi
	mov	edx, OFFSET FLAT:label_1438
	xor	eax, eax
	mov	esi, ebp
	mov	r8, r14
	call	error
	mov	edi,  dword ptr [dword ptr [rip + exit_failure]]
	call	_exit
	nop	dword ptr [rax]
	nop	dword ptr [rax + rax]
.label_1436:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_1434
	mov	edx, 5
	call	dcgettext
	mov	r14, rax
	mov	rbx,  qword ptr [word ptr [rip + file_name]]
	call	__errno_location
	test	rbx, rbx
	mov	ebp, dword ptr [rax]
	jne	.label_1437
	xor	edi, edi
	mov	edx, OFFSET FLAT:label_66
	xor	eax, eax
	mov	esi, ebp
	mov	rcx, r14
	call	error
	mov	edi,  dword ptr [dword ptr [rip + exit_failure]]
	call	_exit
.label_1435:
	mov	edi,  dword ptr [dword ptr [rip + exit_failure]]
	call	_exit
	.section	.text
	.align	32
	#Procedure 0x40f0f0

	.globl initialize_exit_failure
	.type initialize_exit_failure, @function
initialize_exit_failure:
	mov	dword ptr [dword ptr [rip + exit_failure]],  3
	ret	
	.section	.text
	.align	32
	#Procedure 0x40f0fb
	.globl sub_40f0fb
	.type sub_40f0fb, @function
sub_40f0fb:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40f100

	.globl usage
	.type usage, @function
usage:
	push	rbp
	push	rbx
	push	rax
	mov	ebp, edi
	test	ebp, ebp
	jne	.label_1439
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_1444
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	mov	rdx,  qword ptr [word ptr [rip + program_name]]
	mov	edi, 1
	xor	eax, eax
	mov	rsi, rcx
	mov	rcx, rdx
	call	__printf_chk
	mov	edi, 0xa
	call	putchar_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_1441
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_1442
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_1449
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_1450
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_1443
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_1451
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_1445
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_1446
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_1440
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_1448
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	call	emit_ancillary_info
	mov	edi, ebp
	call	exit
.label_1439:
	mov	rbx,  qword ptr [word ptr [rip + stderr]]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_1447
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
	#Procedure 0x40f2c8
	.globl sub_40f2c8
	.type sub_40f2c8, @function
sub_40f2c8:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40f2d0

	.globl printv
	.type printv, @function
printv:
	push	rax
	mov	rax, rdi
	mov	ecx, dword ptr [rax]
	cmp	ecx, 1
	je	.label_1452
	test	ecx, ecx
	jne	.label_1453
	mov	rdi,  qword ptr [word ptr [rip + stdout]]
	add	rax, 8
	mov	esi, 0xa
	mov	rdx, rax
	call	__gmpz_out_str
	mov	edi, 0xa
	pop	rax
	jmp	putchar_unlocked
.label_1453:
	call	abort
	.section	.text
	.align	32
	#Procedure 0x40f307
	.globl sub_40f307
	.type sub_40f307, @function
sub_40f307:

	nop	word ptr cs:[rax + rax]
.label_1452:
	mov	rdi, qword ptr [rax + 8]
	pop	rax
	jmp	puts
	.section	.text
	.align	32
	#Procedure 0x40f320

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
	#Procedure 0x40f337
	.globl sub_40f337
	.type sub_40f337, @function
sub_40f337:

	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40f340

	.globl free_token
	.type free_token, @function
free_token:
	mov	eax, dword ptr [rdi + 8]
	and	eax, 0x400ff
	cmp	eax, 6
	jne	.label_1454
	mov	rdi, qword ptr [rdi]
	jmp	free_charset
.label_1454:
	cmp	eax, 3
	jne	.label_1455
	mov	rdi, qword ptr [rdi]
	jmp	free
.label_1455:
	ret	
	.section	.text
	.align	32
	#Procedure 0x40f360

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
	je	.label_1456
	mov	rdi, qword ptr [rax + 0x10]
	call	free
	mov	rdi, qword ptr [rbx + 0x50]
	call	free
.label_1456:
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
	#Procedure 0x40f3b9
	.globl sub_40f3b9
	.type sub_40f3b9, @function
sub_40f3b9:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x40f3c0

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
.label_1458:
	cmp	byte ptr [rsi + 0x30], 0x11
	jne	.label_1457
	mov	rax, qword ptr [rsi + 8]
	test	rax, rax
	je	.label_1457
	cmp	byte ptr [rax + 0x30], 0x11
	jne	.label_1457
	mov	rdx, qword ptr [rax + 8]
	mov	rcx, qword ptr [rax + 0x28]
	mov	qword ptr [rsi + 8], rdx
	test	rdx, rdx
	je	.label_1459
	mov	qword ptr [rdx], rsi
.label_1459:
	mov	rax, qword ptr [rsi + 0x28]
	mov	rdx, qword ptr [rdi + 0xe0]
	mov	rax, qword ptr [rdx + rax*8]
	mov	qword ptr [rdx + rcx*8], rax
	cmp	rcx, 0x3f
	jg	.label_1457
	mov	rax, -2
	rol	rax, cl
	and	qword ptr [rdi + 0xa0], rax
.label_1457:
	xor	eax, eax
	ret	
	.section	.text
	.align	32
	#Procedure 0x40f446
	.globl sub_40f446
	.type sub_40f446, @function
sub_40f446:

	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40f44f

	.globl optimize_subexps
	.type optimize_subexps, @function
optimize_subexps:
	cmp	byte ptr [rsi + 0x30], 4
	jne	.label_1458
	mov	rax, qword ptr [rdi + 0xe0]
	test	rax, rax
	je	.label_1458
	movsxd	rcx, dword ptr [rsi + 0x28]
	mov	rcx, qword ptr [rax + rcx*8]
	mov	qword ptr [rsi + 0x28], rcx
	mov	eax, 1
	shl	eax, cl
	cdqe	
	or	qword ptr [rdi + 0xa0], rax
	xor	eax, eax
	ret	
	.section	.text
	.align	32
	#Procedure 0x40f480

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
	jle	.label_1460
	lea	r14, [r13 + 0x20]
	lea	r15, [rsp + 0xc]
	jmp	.label_1467
	.section	.text
	.align	32
	#Procedure 0x40f4bb
	.globl sub_40f4bb
	.type sub_40f4bb, @function
sub_40f4bb:

	nop	dword ptr [rax + rax]
.label_1465:
	mov	rax, qword ptr [r13 + 0x28]
	add	rax, rbx
	mov	rcx, qword ptr [r13]
	movzx	eax, byte ptr [rcx + rax]
	mov	dword ptr [rsp + 0xc], eax
	mov	rcx, qword ptr [r13 + 0x78]
	test	rcx, rcx
	jne	.label_1461
.label_1471:
	mov	qword ptr [r14], rbp
	mov	eax, 1
.label_1462:
	mov	ecx, dword ptr [rsp + 0xc]
	mov	rdx, qword ptr [r13 + 0x10]
	mov	dword ptr [rdx + rbx*4], ecx
	lea	rbp, [rax + rbx]
	lea	rcx, [rbx + 1]
	cmp	rcx, rbp
	jge	.label_1469
	mov	rcx, qword ptr [r13 + 0x10]
	lea	rdi, [rcx + rbx*4 + 4]
	lea	rdx, [rax*4 - 4]
	mov	esi, 0xff
	call	memset
	mov	rcx, rbp
.label_1469:
	cmp	r12, rcx
	mov	rbx, rcx
	jg	.label_1467
	jmp	.label_1468
.label_1466:
	cmp	dword ptr [r13 + 0x90], 0
	lea	rsi, [rsp + 0x10]
	jle	.label_1464
	xor	eax, eax
.label_1463:
	cmp	rax, rdx
	jge	.label_1470
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
	jl	.label_1463
	lea	rsi, [rsp + 0x10]
	jmp	.label_1464
.label_1461:
	movzx	eax, byte ptr [rcx + rax]
	mov	dword ptr [rsp + 0xc], eax
	jmp	.label_1471
.label_1470:
	lea	rsi, [rsp + 0x10]
	jmp	.label_1464
.label_1467:
	mov	rdx, r12
	sub	rdx, rbx
	mov	rbp, qword ptr [r13 + 0x20]
	cmp	qword ptr [r13 + 0x78], 0
	jne	.label_1466
	mov	rsi, qword ptr [r13]
	add	rsi, qword ptr [r13 + 0x28]
	add	rsi, rbx
.label_1464:
	mov	rdi, r15
	mov	rcx, r14
	call	rpl_mbrtowc
	lea	rcx, [rax + 1]
	cmp	rcx, 2
	jb	.label_1465
	cmp	rax, -2
	jne	.label_1462
	mov	rax, qword ptr [r13 + 0x40]
	cmp	rax, qword ptr [r13 + 0x58]
	jge	.label_1465
	mov	qword ptr [r14], rbp
.label_1460:
	mov	rcx, rbx
.label_1468:
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
	#Procedure 0x40f5fa
	.globl sub_40f5fa
	.type sub_40f5fa, @function
sub_40f5fa:

	nop	word ptr [rax + rax]
.label_1483:
	cmp	qword ptr [r12 + 8], 0
	jle	.label_1472
	xor	ebp, ebp
	nop	word ptr cs:[rax + rax]
.label_1480:
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
	jne	.label_1473
	cmp	r14, qword ptr [rax + rcx]
	jne	.label_1473
	mov	rdi, r13
	mov	rdx, r12
	mov	rcx, qword ptr [rsp]
	call	sub_epsilon_src_nodes
	test	eax, eax
	jne	.label_1479
.label_1473:
	inc	rbp
	cmp	rbp, qword ptr [r12 + 8]
	jl	.label_1480
	jmp	.label_1472
	.section	.text
	.align	32
	#Procedure 0x40f66c

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
	jle	.label_1479
	xor	r15d, r15d
	nop	word ptr [rax + rax]
.label_1481:
	mov	rax, qword ptr [rsp + 0x20]
	mov	rax, qword ptr [rax + 0x10]
	mov	rax, qword ptr [rax + r15*8]
	lea	rax, [rax + rax*4]
	mov	rcx, qword ptr [rsp + 0x18]
	mov	rdx, qword ptr [rsp + 0x10]
	cmp	qword ptr [rdx + rax*8 + 0x10], rcx
	jge	.label_1472
	mov	rcx, qword ptr [rsp + 0x18]
	mov	rdx, qword ptr [rsp + 0x10]
	cmp	qword ptr [rdx + rax*8 + 8], rcx
	jl	.label_1472
	mov	rsi, qword ptr [rsp + 0x10]
	mov	rcx, qword ptr [rsi + rax*8]
	mov	rdx, qword ptr [r13]
	shl	rcx, 4
	mov	r14, qword ptr [rdx + rcx]
	mov	rcx, qword ptr [rsp + 0x18]
	cmp	qword ptr [rsi + rax*8 + 0x18], rcx
	jne	.label_1483
	cmp	qword ptr [r12 + 8], 0
	jle	.label_1472
	mov	r8, qword ptr [r12 + 8]
	mov	rcx, qword ptr [r12 + 0x10]
	mov	rdx, qword ptr [r13]
	mov	r9, -1
	xor	edi, edi
	mov	rsi, -1
	nop	word ptr [rax + rax]
.label_1484:
	mov	rbx, qword ptr [rcx + rdi*8]
	mov	rbp, rbx
	shl	rbp, 4
	movzx	eax, byte ptr [rdx + rbp + 8]
	cmp	al, 9
	je	.label_1486
	cmp	al, 8
	jne	.label_1478
	cmp	r14, qword ptr [rdx + rbp]
	cmove	rsi, rbx
	jmp	.label_1478
	.section	.text
	.align	32
	#Procedure 0x40f75e
	.globl sub_40f75e
	.type sub_40f75e, @function
sub_40f75e:

	nop	word ptr cs:[rax + rax]
.label_1486:
	mov	rax, qword ptr [r13]
	cmp	r14, qword ptr [rax + rbp]
	cmove	r9, rbx
.label_1478:
	inc	rdi
	cmp	rdi, r8
	jl	.label_1484
	test	rsi, rsi
	js	.label_1474
	mov	rdi, r13
	mov	rdx, r12
	mov	rcx, qword ptr [rsp]
	mov	rbx, r9
	call	sub_epsilon_src_nodes
	mov	r9, rbx
	test	eax, eax
	jne	.label_1479
.label_1474:
	test	r9, r9
	js	.label_1472
	cmp	qword ptr [r12 + 8], 0
	jle	.label_1472
	xor	ebp, ebp
	mov	qword ptr [rsp + 8], r12
	jmp	.label_1476
.label_1476:
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
	je	.label_1482
	mov	r9, r13
	jmp	.label_1477
	.section	.text
	.align	32
	#Procedure 0x40f7f0
	.globl sub_40f7f0
	.type sub_40f7f0, @function
sub_40f7f0:

	nop	dword ptr [rax]
.label_1482:
	mov	rax, qword ptr [r12 + 0x30]
	lea	rdi, [rax + rbx*8]
	mov	rbx, r13
	mov	rsi, r13
	call	re_node_set_contains
	test	rax, rax
	je	.label_1475
	mov	r9, rbx
.label_1477:
	mov	r13, r12
	mov	r12, qword ptr [rsp + 8]
.label_1485:
	inc	rbp
	cmp	rbp, qword ptr [r12 + 8]
	jl	.label_1476
	nop	
.label_1472:
	inc	r15
	xor	eax, eax
	mov	rcx, qword ptr [rsp + 0x20]
	cmp	r15, qword ptr [rcx + 8]
	jl	.label_1481
.label_1479:
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
	#Procedure 0x40f846
	.globl sub_40f846
	.type sub_40f846, @function
sub_40f846:

	nop	word ptr cs:[rax + rax]
.label_1475:
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
	jne	.label_1479
	dec	rbp
	jmp	.label_1485
	.section	.text
	.align	32
	#Procedure 0x40f880

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
	#Procedure 0x40f8e3
	.globl sub_40f8e3
	.type sub_40f8e3, @function
sub_40f8e3:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40f8f0

	.globl xalloc_die
	.type xalloc_die, @function
xalloc_die:
	push	rbx
	mov	ebx,  dword ptr [dword ptr [rip + exit_failure]]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_1487
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	xor	esi, esi
	mov	edx, OFFSET FLAT:label_66
	xor	eax, eax
	mov	edi, ebx
	call	error
	call	abort
	.section	.text
	.align	32
	#Procedure 0x40f920

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
	#Procedure 0x40f941
	.globl sub_40f941
	.type sub_40f941, @function
sub_40f941:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40f950
	.globl version_etc_ar
	.type version_etc_ar, @function
version_etc_ar:

	mov	r9, -1
	nop	word ptr [rax + rax]
.label_1488:
	cmp	qword ptr [r8 + r9*8 + 8], 0
	lea	r9, [r9 + 1]
	jne	.label_1488
	jmp	version_etc_arn
	.section	.text
	.align	32
	#Procedure 0x40f971
	.globl sub_40f971
	.type sub_40f971, @function
sub_40f971:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40f980

	.globl bitset_not
	.type bitset_not, @function
bitset_not:
	xor	eax, eax
	nop	word ptr cs:[rax + rax]
.label_1489:
	not	qword ptr [rdi + rax*8]
	inc	rax
	cmp	rax, 4
	jne	.label_1489
	ret	
	.section	.text
	.align	32
	#Procedure 0x40f99e
	.globl sub_40f99e
	.type sub_40f99e, @function
sub_40f99e:

	nop	
	.section	.text
	.align	32
	#Procedure 0x40f9a0

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
	jbe	.label_1494
.label_1493:
	mov	qword ptr [rbx + 0x10], 0xe8
	mov	rdi, r14
	mov	rsi, r12
	call	init_dfa
	mov	dword ptr [rsp + 0xc], eax
	test	eax, eax
	jne	.label_1491
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
	jne	.label_1495
	mov	qword ptr [rbx + 0x30], 0
	lea	rdi, [rsp + 0x10]
	lea	rcx, [rsp + 0xc]
	mov	rsi, rbx
	mov	rdx, r15
	call	parse
	mov	qword ptr [r14 + 0x68], rax
	test	rax, rax
	je	.label_1495
	mov	rdi, rbx
	call	analyze
	mov	dword ptr [rsp + 0xc], eax
	test	eax, eax
	jne	.label_1495
	test	rbp, rbp
	jne	.label_1492
	mov	al, byte ptr [r14 + 0xb0]
	and	al, 4
	je	.label_1492
	cmp	qword ptr [rbx + 0x28], 0
	jne	.label_1492
	mov	rdi, r14
	call	optimize_utf8
.label_1492:
	mov	rdi, r14
	call	create_initial_state
	mov	dword ptr [rsp + 0xc], eax
	mov	rdi, rbx
	call	free_workarea_compile
	lea	rdi, [rsp + 0x10]
	call	re_string_destruct
	cmp	dword ptr [rsp + 0xc], 0
	jne	.label_1491
.label_1496:
	mov	eax, dword ptr [rsp + 0xc]
.label_1490:
	add	rsp, 0xa8
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_1495:
	mov	rdi, rbx
	call	free_workarea_compile
	lea	rdi, [rsp + 0x10]
	call	re_string_destruct
.label_1491:
	mov	rdi, r14
	call	free_dfa_content
	xorps	xmm0, xmm0
	movups	xmmword ptr [rbx], xmm0
	jmp	.label_1496
.label_1494:
	mov	esi, 0xe8
	mov	rdi, r14
	call	realloc
	mov	r14, rax
	mov	eax, 0xc
	test	r14, r14
	je	.label_1490
	mov	qword ptr [rbx + 8], 0xe8
	mov	qword ptr [rbx], r14
	jmp	.label_1493
	.section	.text
	.align	32
	#Procedure 0x40fb20

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
	jmp	.label_1500
	.section	.text
	.align	32
	#Procedure 0x40fb46
	.globl sub_40fb46
	.type sub_40fb46, @function
sub_40fb46:

	nop	word ptr cs:[rax + rax]
.label_1498:
	mov	rsi, qword ptr [rcx + r13*8 + 0x10]
	mov	rbp, qword ptr [rsi]
	lea	rsi, [rbx + rbx*2]
	mov	r12, rsi
	mov	qword ptr [rcx + rsi*8 + 8], 0
	cmp	rdx, 1
	je	.label_1506
	mov	rdi, r15
	mov	rsi, rbp
	mov	edx, dword ptr [rsp + 0xc]
	call	search_duplicated_node
	cmp	rax, -1
	je	.label_1507
	mov	rcx, qword ptr [r15 + 0x28]
	lea	rdi, [rcx + r12*8]
	mov	rsi, rax
	call	re_node_set_insert
	mov	ebp, 0xc
	test	al, al
	jne	.label_1504
	jmp	.label_1502
.label_1507:
	mov	rdi, r15
	mov	rbx, rbp
	mov	rsi, rbp
	mov	edx, dword ptr [rsp + 0xc]
	call	duplicate_node
	mov	r14, rax
	mov	ebp, 0xc
	cmp	r14, -1
	je	.label_1502
	mov	rax, qword ptr [r15 + 0x28]
	lea	rdi, [rax + r12*8]
	mov	rsi, r14
	call	re_node_set_insert
	test	al, al
	je	.label_1502
	mov	rdi, r15
	mov	rsi, rbx
	mov	rdx, r14
	mov	rcx, qword ptr [rsp + 0x10]
	mov	r8d, dword ptr [rsp + 0xc]
	call	duplicate_node_closure
	mov	ebp, eax
	test	ebp, ebp
	jne	.label_1502
.label_1504:
	mov	rax, qword ptr [r15 + 0x28]
	mov	rax, qword ptr [rax + r13*8 + 0x10]
	mov	r14, qword ptr [rax + 8]
	mov	rdi, r15
	mov	rsi, r14
	mov	edx, dword ptr [rsp + 0xc]
.label_1505:
	call	duplicate_node
	mov	ebp, 0xc
	cmp	rax, -1
	je	.label_1502
	mov	rcx, qword ptr [r15 + 0x28]
	lea	rdi, [rcx + r12*8]
	mov	rsi, rax
	mov	rbx, rax
	call	re_node_set_insert
	test	al, al
	jne	.label_1500
	jmp	.label_1502
.label_1506:
	cmp	r14, qword ptr [rsp + 0x10]
	jne	.label_1501
	cmp	rbx, r14
	jne	.label_1503
.label_1501:
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
	jmp	.label_1505
	.section	.text
	.align	32
	#Procedure 0x40fc7e
	.globl sub_40fc7e
	.type sub_40fc7e, @function
sub_40fc7e:

	nop	
.label_1500:
	mov	rcx, qword ptr [r15]
	mov	rax, r14
	shl	rax, 4
	cmp	byte ptr [rcx + rax + 8], 4
	jne	.label_1497
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
	je	.label_1508
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
	jne	.label_1500
	jmp	.label_1502
	.section	.text
	.align	32
	#Procedure 0x40fcf9
	.globl sub_40fcf9
	.type sub_40fcf9, @function
sub_40fcf9:

	nop	dword ptr [rax]
.label_1497:
	mov	rcx, qword ptr [r15 + 0x28]
	lea	r13, [r14 + r14*2]
	mov	rdx, qword ptr [rcx + r13*8 + 8]
	test	rdx, rdx
	jne	.label_1498
	mov	rax, qword ptr [r15 + 0x18]
	mov	rcx, qword ptr [rax + r14*8]
	mov	qword ptr [rax + rbx*8], rcx
.label_1499:
	xor	ebp, ebp
.label_1502:
	mov	eax, ebp
	add	rsp, 0x18
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_1503:
	mov	rax, qword ptr [r15 + 0x28]
	lea	rdi, [rax + r12*8]
	mov	rsi, rbp
	call	re_node_set_insert
	mov	ebp, 0xc
	test	al, al
	jne	.label_1499
	jmp	.label_1502
.label_1508:
	mov	ebp, 0xc
	jmp	.label_1502
	.section	.text
	.align	32
	#Procedure 0x40fd57
	.globl sub_40fd57
	.type sub_40fd57, @function
sub_40fd57:

	nop	word ptr [rax + rax]
.label_1509:
	push	rax
	call	abort
	.section	.text
	.align	32
	#Procedure 0x40fd66
	.globl sub_40fd66
	.type sub_40fd66, @function
sub_40fd66:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40fd6b

	.globl set_custom_quoting
	.type set_custom_quoting, @function
set_custom_quoting:
	test	rdi, rdi
	mov	eax, OFFSET FLAT:default_quoting_options
	cmovne	rax, rdi
	mov	dword ptr [rax], 0xa
	test	rsi, rsi
	je	.label_1509
	test	rdx, rdx
	je	.label_1509
	mov	qword ptr [rax + 0x28], rsi
	mov	qword ptr [rax + 0x30], rdx
	ret	
	.section	.text
	.align	32
	#Procedure 0x40fd90

	.globl bitset_set_all
	.type bitset_set_all, @function
bitset_set_all:
	pcmpeqd	xmm0, xmm0
	movdqu	xmmword ptr [rdi + 0x10], xmm0
	movdqu	xmmword ptr [rdi], xmm0
	ret	
	.section	.text
	.align	32
	#Procedure 0x40fd9e
	.globl sub_40fd9e
	.type sub_40fd9e, @function
sub_40fd9e:

	nop	
	.section	.text
	.align	32
	#Procedure 0x40fda0

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
	je	.label_1512
	mov	qword ptr [rsp], r12
	mov	edi, 0x50
	mov	esi, 1
	call	rpl_calloc
	mov	r12, rax
	test	r12, r12
	je	.label_1520
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
	jne	.label_1518
	mov	al, byte ptr [rbp]
	test	al, al
	je	.label_1521
	inc	rbp
	nop	word ptr cs:[rax + rax]
.label_1513:
	movsx	rsi, al
	mov	rdi, rbx
	call	bitset_set
	movzx	eax, byte ptr [rbp]
	inc	rbp
	test	al, al
	jne	.label_1513
.label_1521:
	test	r13b, r13b
	je	.label_1516
	mov	rdi, rbx
	call	bitset_not
.label_1516:
	cmp	dword ptr [r15 + 0xb4], 2
	jl	.label_1519
	mov	rsi, qword ptr [r15 + 0x78]
	mov	rdi, rbx
	call	bitset_mask
.label_1519:
	mov	byte ptr [rsp + 0x10], 3
	mov	qword ptr [rsp + 8], rbx
	lea	rcx, [rsp + 8]
	xor	esi, esi
	xor	edx, edx
	mov	rdi, r15
	call	create_token_tree
	mov	rbp, rax
	test	rbp, rbp
	je	.label_1510
	cmp	dword ptr [r15 + 0xb4], 2
	jl	.label_1517
	mov	byte ptr [rsp + 0x10], 6
	mov	qword ptr [rsp + 8], r12
	or	byte ptr [r15 + 0xb0], 2
	lea	rcx, [rsp + 8]
	xor	esi, esi
	xor	edx, edx
	mov	rdi, r15
	call	create_token_tree
	test	rax, rax
	je	.label_1510
	mov	ecx, 0xa
	mov	rdi, r15
	mov	rsi, rbp
	mov	rdx, rax
	call	create_tree
	mov	rbp, rax
	jmp	.label_1511
.label_1520:
	mov	rdi, rbx
	call	free
.label_1515:
	mov	rax, qword ptr [rsp]
	mov	dword ptr [rax], 0xc
	jmp	.label_1514
.label_1510:
	mov	rdi, rbx
	call	free
	mov	rdi, r12
	call	free_charset
	jmp	.label_1515
.label_1512:
	mov	dword ptr [r12], 0xc
	jmp	.label_1514
.label_1517:
	mov	rdi, r12
	call	free_charset
.label_1511:
	mov	rax, rbp
	add	rsp, 0x28
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_1518:
	mov	rdi, rbx
	call	free
	mov	rdi, r12
	call	free_charset
	mov	rax, qword ptr [rsp]
	mov	dword ptr [rax], r14d
.label_1514:
	xor	ebp, ebp
	jmp	.label_1511
	.section	.text
	.align	32
	#Procedure 0x40ff5c
	.globl sub_40ff5c
	.type sub_40ff5c, @function
sub_40ff5c:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x40ff60

	.globl re_node_set_compare
	.type re_node_set_compare, @function
re_node_set_compare:
	xor	eax, eax
	test	rdi, rdi
	je	.label_1522
	test	rsi, rsi
	je	.label_1522
	mov	rcx, qword ptr [rdi + 8]
	cmp	rcx, qword ptr [rsi + 8]
	jne	.label_1524
	nop	word ptr cs:[rax + rax]
.label_1523:
	mov	al, 1
	test	rcx, rcx
	jle	.label_1522
	mov	rax, qword ptr [rdi + 0x10]
	mov	rax, qword ptr [rax + rcx*8 - 8]
	mov	rdx, qword ptr [rsi + 0x10]
	cmp	rax, qword ptr [rdx + rcx*8 - 8]
	lea	rcx, [rcx - 1]
	je	.label_1523
.label_1524:
	xor	eax, eax
.label_1522:
	ret	
	.section	.text
	.align	32
	#Procedure 0x40ffa2
	.globl sub_40ffa2
	.type sub_40ffa2, @function
sub_40ffa2:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40ffb0

	.globl search_cur_bkref_entry
	.type search_cur_bkref_entry, @function
search_cur_bkref_entry:
	mov	r8, qword ptr [rdi + 0xc8]
	xor	eax, eax
	test	r8, r8
	jle	.label_1525
	mov	r9, qword ptr [rdi + 0xd8]
	xor	eax, eax
	mov	r11, r8
	nop	word ptr [rax + rax]
.label_1526:
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
	jl	.label_1526
.label_1525:
	cmp	rax, r8
	jge	.label_1528
.label_1988:
	mov	rcx, qword ptr [rdi + 0xd8]
	lea	rdx, [rax + rax*4]
	cmp	qword ptr [rcx + rdx*8 + 8], rsi
	je	.label_1527
.label_1528:
	mov	rax, -1
.label_1527:
	ret	
	.section	.text
	.align	32
	#Procedure 0x41001a
	.globl sub_41001a
	.type sub_41001a, @function
sub_41001a:

	nop	word ptr [rax + rax]
.label_1530:
	mov	ebx, eax
.label_1529:
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
	#Procedure 0x410032
	.globl sub_410032
	.type sub_410032, @function
sub_410032:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x410037

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
	jmp	.label_1533
	.section	.text
	.align	32
	#Procedure 0x410053
	.globl sub_410053
	.type sub_410053, @function
sub_410053:

	nop	dword ptr [rax]
.label_1531:
	inc	rbx
.label_1533:
	cmp	rbx, qword ptr [r14 + 0x10]
	jne	.label_1532
	xor	ebx, ebx
	test	r12b, 1
	mov	r12d, 0
	je	.label_1529
.label_1532:
	mov	rax, qword ptr [r14 + 0x30]
	lea	r13, [rbx + rbx*2]
	cmp	qword ptr [rax + r13*8 + 8], 0
	jne	.label_1531
	mov	ecx, 1
	mov	rdi, r15
	mov	rsi, r14
	mov	rdx, rbx
	call	calc_eclosure_iter
	test	eax, eax
	jne	.label_1530
	mov	rax, qword ptr [r14 + 0x30]
	cmp	qword ptr [rax + r13*8 + 8], 0
	jne	.label_1531
	mov	rdi, qword ptr [rsp + 0x18]
	call	free
	mov	r12b, 1
	jmp	.label_1531
	.section	.text
	.align	32
	#Procedure 0x4100b0

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
	je	.label_1534
.label_1536:
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
	je	.label_1535
	mov	qword ptr [rcx + 8], r15
	mov	rax, qword ptr [rbx + 0xe8]
	lea	rcx, [rax + 1]
	mov	qword ptr [rbx + 0xe8], rcx
	mov	rcx, qword ptr [rbx + 0xf8]
	mov	rax, qword ptr [rcx + rax*8]
	mov	qword ptr [rax], r14
	xor	eax, eax
.label_1535:
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	ret	
.label_1534:
	mov	rdi, qword ptr [rbx + 0xf8]
	mov	rsi, r12
	shl	rsi, 4
	call	realloc
	mov	rcx, rax
	mov	eax, 0xc
	test	rcx, rcx
	je	.label_1535
	add	r12, r12
	mov	qword ptr [rbx + 0xf8], rcx
	mov	qword ptr [rbx + 0xf0], r12
	jmp	.label_1536
	.section	.text
	.align	32
	#Procedure 0x410176
	.globl sub_410176
	.type sub_410176, @function
sub_410176:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x410180

	.globl mbs_offset_to_chars
	.type mbs_offset_to_chars, @function
mbs_offset_to_chars:
	push	r15
	push	r14
	push	r12
	push	rbx
	sub	rsp, 0x48
	mov	r15, rsi
	mov	r14, rdi
	mov	qword ptr [rsp + 0x18], r14
	mov	byte ptr [rsp + 8], 0
	mov	qword ptr [rsp + 0xc], 0
	mov	byte ptr [rsp + 0x14], 0
	lea	rdi, [rsp + 8]
	call	mbuiter_multi_next
	xor	ebx, ebx
	cmp	byte ptr [rsp + 0x28], 0
	je	.label_1539
	mov	eax, dword ptr [rsp + 0x2c]
	test	eax, eax
	je	.label_1537
.label_1539:
	xor	ebx, ebx
	lea	r12, [rsp + 8]
	nop	dword ptr [rax + rax]
.label_1538:
	mov	rax, qword ptr [rsp + 0x18]
	sub	rax, r14
	cmp	rax, r15
	adc	rbx, 0
	cmp	rax, r15
	jae	.label_1537
	mov	rax, qword ptr [rsp + 0x20]
	add	qword ptr [rsp + 0x18], rax
	mov	byte ptr [rsp + 0x14], 0
	mov	rdi, r12
	call	mbuiter_multi_next
	cmp	byte ptr [rsp + 0x28], 0
	je	.label_1538
	mov	eax, dword ptr [rsp + 0x2c]
	test	eax, eax
	jne	.label_1538
.label_1537:
	mov	rax, rbx
	add	rsp, 0x48
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	ret	
	.section	.text
	.align	32
	#Procedure 0x410219
	.globl sub_410219
	.type sub_410219, @function
sub_410219:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x410220
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
	#Procedure 0x41022f
	.globl sub_41022f
	.type sub_41022f, @function
sub_41022f:

	nop	
	.section	.text
	.align	32
	#Procedure 0x410230
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
	#Procedure 0x41023f
	.globl sub_41023f
	.type sub_41023f, @function
sub_41023f:

	nop	
.label_1545:
	xor	eax, eax
.label_1547:
	movzx	edi, al
	call	eval1
	mov	rbp, rax
	mov	rdi, rbx
	call	null
	test	al, al
	je	.label_1542
	mov	rdi, rbx
	call	freev
	mov	rdi, rbp
	call	null
	test	al, al
	je	.label_1546
	mov	rdi, rbp
	call	freev
	xor	edi, edi
	call	int_value
	mov	rbp, rax
.label_1546:
	mov	edi, OFFSET FLAT:label_1543
	call	nextarg
	test	al, al
	mov	rbx, rbp
	jne	.label_1540
	jmp	.label_1541
.label_1542:
	mov	rdi, rbp
	call	freev
.label_1548:
	mov	edi, OFFSET FLAT:label_1543
	call	nextarg
	test	al, al
	je	.label_1544
.label_1540:
	test	r14b, r14b
	je	.label_1545
	mov	rdi, rbx
	call	null
	jmp	.label_1547
	.section	.text
	.align	32
	#Procedure 0x4102b7
	.globl sub_4102b7
	.type sub_4102b7, @function
sub_4102b7:

	nop	word ptr cs:[rax + rax]
.label_1544:
	mov	rbp, rbx
.label_1541:
	mov	rax, rbp
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x4102cd
	.globl sub_4102cd
	.type sub_4102cd, @function
sub_4102cd:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x4102d0

	.globl eval
	.type eval, @function
eval:
	push	rbp
	push	r14
	push	rbx
	mov	r14d, edi
	movzx	edi, r14b
	call	eval1
	mov	rbx, rax
	jmp	.label_1548
	.section	.text
	.align	32
	#Procedure 0x4102e5
	.globl sub_4102e5
	.type sub_4102e5, @function
sub_4102e5:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4102f0

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
	#Procedure 0x410307
	.globl sub_410307
	.type sub_410307, @function
sub_410307:

	nop	word ptr [rax + rax]
.label_1551:
	mov	rcx, qword ptr [r14]
	mov	rax, qword ptr [r14 + 0x78]
	add	rcx, qword ptr [r14 + 0x28]
	movzx	ecx, byte ptr [rbx + rcx]
	movzx	edx, cl
	test	rax, rax
	jne	.label_1549
.label_1550:
	movzx	edi, cl
	call	toupper
	mov	rcx, qword ptr [r14 + 8]
	mov	byte ptr [rcx + rbx], al
	inc	rbx
	cmp	rbx, r15
	jl	.label_1551
	mov	rbx, r15
.label_1552:
	mov	qword ptr [r14 + 0x30], rbx
	mov	qword ptr [r14 + 0x38], rbx
	pop	rbx
	pop	r14
	pop	r15
	ret	
	.section	.text
	.align	32
	#Procedure 0x41034f
	.globl sub_41034f
	.type sub_41034f, @function
sub_41034f:

	nop	
	.section	.text
	.align	32
	#Procedure 0x410350

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
	jl	.label_1551
	jmp	.label_1552
.label_1549:
	movzx	ecx, byte ptr [rax + rdx]
	jmp	.label_1550
	.section	.text
	.align	32
	#Procedure 0x410378
	.globl sub_410378
	.type sub_410378, @function
sub_410378:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x410380

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
	jne	.label_1553
	mov	rcx, qword ptr [r15]
	mov	r8, qword ptr [rbx + 8]
	mov	rdi, r14
	mov	rsi, r13
	mov	rdx, r12
	call	match_ctx_add_entry
	test	eax, eax
	jne	.label_1553
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
.label_1553:
	add	rsp, 0x10
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	ret	
	.section	.text
	.align	32
	#Procedure 0x410403
	.globl sub_410403
	.type sub_410403, @function
sub_410403:

	nop	word ptr cs:[rax + rax]
.label_1557:
	mov	rdi, rbx
	add	rsp, 0x48
	pop	rbx
	pop	r14
	jmp	strlen
	.section	.text
	.align	32
	#Procedure 0x41041f
	.globl sub_41041f
	.type sub_41041f, @function
sub_41041f:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x41042c

	.globl mbslen
	.type mbslen, @function
mbslen:
	push	r14
	push	rbx
	sub	rsp, 0x48
	mov	rbx, rdi
	call	__ctype_get_mb_cur_max
	cmp	rax, 2
	jb	.label_1557
	mov	qword ptr [rsp + 0x18], rbx
	mov	byte ptr [rsp + 8], 0
	mov	qword ptr [rsp + 0xc], 0
	mov	byte ptr [rsp + 0x14], 0
	lea	rdi, [rsp + 8]
	call	mbuiter_multi_next
	xor	ebx, ebx
	cmp	byte ptr [rsp + 0x28], 0
	je	.label_1554
	mov	eax, dword ptr [rsp + 0x2c]
	test	eax, eax
	je	.label_1556
.label_1554:
	xor	ebx, ebx
	lea	r14, [rsp + 8]
	nop	
.label_1555:
	inc	rbx
	mov	rax, qword ptr [rsp + 0x20]
	add	qword ptr [rsp + 0x18], rax
	mov	byte ptr [rsp + 0x14], 0
	mov	rdi, r14
	call	mbuiter_multi_next
	mov	eax, dword ptr [rsp + 0x2c]
	cmp	byte ptr [rsp + 0x28], 0
	je	.label_1555
	test	eax, eax
	jne	.label_1555
.label_1556:
	mov	rax, rbx
	add	rsp, 0x48
	pop	rbx
	pop	r14
	ret	
	.section	.text
	.align	32
	#Procedure 0x4104b0

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
	jne	.label_1565
	mov	eax, dword ptr [r12]
	test	eax, eax
	jne	.label_1564
.label_1565:
	mov	r14, qword ptr [rsp]
	or	r14, 0x800000
	nop	dword ptr [rax + rax]
.label_1563:
	cmp	byte ptr [r13 + 8], 0xa
	jne	.label_1561
	mov	rdi, r13
	mov	rsi, r15
	mov	rdx, r14
	call	fetch_token
	movzx	eax, byte ptr [r13 + 8]
	mov	ecx, eax
	or	cl, 8
	cmp	cl, 0xa
	mov	edx, 0
	je	.label_1559
	cmp	qword ptr [rsp + 8], 0
	je	.label_1562
	cmp	eax, 9
	mov	edx, 0
	je	.label_1559
.label_1562:
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
	jne	.label_1558
	mov	eax, dword ptr [r12]
	test	eax, eax
	jne	.label_1560
.label_1558:
	mov	rax, qword ptr [rsp + 0x20]
	or	qword ptr [rbp + 0xa8], rax
	nop	
.label_1559:
	mov	ecx, 0xa
	mov	rdi, rbp
	mov	rsi, rbx
	call	create_tree
	mov	rbx, rax
	test	rbx, rbx
	jne	.label_1563
	mov	dword ptr [r12], 0xc
	xor	r14d, r14d
	jmp	.label_1564
.label_1561:
	mov	r14, rbx
.label_1564:
	mov	rax, r14
	add	rsp, 0x28
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_1560:
	xor	r14d, r14d
	test	rbx, rbx
	je	.label_1564
	xor	r14d, r14d
	mov	esi, OFFSET FLAT:free_tree
	xor	edx, edx
	mov	rdi, rbx
	call	postorder
	jmp	.label_1564
	.section	.text
	.align	32
	#Procedure 0x4105fa
	.globl sub_4105fa
	.type sub_4105fa, @function
sub_4105fa:

	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x410600

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
	je	.label_1566
.label_1567:
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
	je	.label_1569
	mov	qword ptr [r12], rax
.label_1569:
	test	r14, r14
	je	.label_1568
	mov	qword ptr [r14], rax
.label_1568:
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	ret	
.label_1566:
	mov	edi, 0x3c8
	call	malloc
	mov	rcx, rax
	xor	eax, eax
	test	rcx, rcx
	je	.label_1568
	mov	rax, qword ptr [rbx + 0x70]
	mov	qword ptr [rcx], rax
	mov	qword ptr [rbx + 0x70], rcx
	mov	dword ptr [rbx + 0x80], 0
	jmp	.label_1567
	.section	.text
	.align	32
	#Procedure 0x4106b7
	.globl sub_4106b7
	.type sub_4106b7, @function
sub_4106b7:

	nop	word ptr [rax + rax]
.label_1582:
	xor	edx, edx
	test	rax, rax
	jle	.label_1570
	mov	rdx, r14
.label_1570:
	mov	r13d, 1
	test	rax, rax
	jle	.label_1572
	mov	r13, rax
	jmp	.label_1572
	.section	.text
	.align	32
	#Procedure 0x4106e1

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
	js	.label_1576
	mov	qword ptr [rsp + 0x18], rsi
	mov	qword ptr [rsp + 0x20], r9
	cmp	rcx, rbx
	jg	.label_1576
	xor	ebp, ebp
	add	r8, rcx
	js	.label_1581
	mov	rbp, r8
.label_1581:
	mov	r14, qword ptr [rsp + 0x60]
	cmp	r8, rbx
	cmovg	rbp, rbx
	movzx	r12d, byte ptr [rdi + 0x38]
	cmp	rbp, rcx
	mov	qword ptr [rsp + 8], rcx
	mov	qword ptr [rsp], rdi
	jle	.label_1579
	test	r12b, 8
	jne	.label_1579
	mov	rax, qword ptr [rdi + 0x20]
	test	rax, rax
	je	.label_1579
	mov	rdi, qword ptr [rsp]
	call	rpl_re_compile_fastmap
	mov	rdi, qword ptr [rsp]
.label_1579:
	xor	edx, edx
	test	r14, r14
	mov	r13d, 1
	je	.label_1572
	mov	al, byte ptr [rdi + 0x38]
	mov	ecx, eax
	and	cl, 0x10
	jne	.label_1572
	and	al, 6
	cmp	al, 4
	jne	.label_1580
	mov	rax, qword ptr [r14]
	cmp	rax, qword ptr [rdi + 0x30]
	jbe	.label_1582
.label_1580:
	mov	r13, qword ptr [rdi + 0x30]
	inc	r13
	mov	rdx, r14
.label_1572:
	mov	qword ptr [rsp + 0x10], rdx
	mov	rdi, r13
	shl	rdi, 4
	call	malloc
	mov	rdx, qword ptr [rsp]
	mov	r15, rax
	mov	r14, -2
	test	r15, r15
	mov	rcx, qword ptr [rsp + 8]
	je	.label_1576
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
	je	.label_1573
	xor	r14d, r14d
	cmp	eax, 1
	sete	r14b
	or	r14, 0xfffffffffffffffe
.label_1571:
	mov	rdi, r15
	call	free
.label_1576:
	mov	rax, r14
	add	rsp, 0x28
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_1573:
	mov	rdi, qword ptr [rsp + 0x10]
	test	rdi, rdi
	je	.label_1578
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
	je	.label_1571
.label_1578:
	mov	al, byte ptr [rsp + 0x68]
	mov	r14, qword ptr [r15]
	test	al, al
	je	.label_1571
	mov	rax, qword ptr [rsp + 8]
	cmp	r14, rax
	jne	.label_1577
	mov	r14, qword ptr [r15 + 8]
	sub	r14, rax
	jmp	.label_1571
.label_1577:
	mov	edi, OFFSET FLAT:label_1574
	mov	esi, OFFSET FLAT:label_162
	mov	edx, 0x1be
	mov	ecx, OFFSET FLAT:label_1575
	call	__assert_fail
	.section	.text
	.align	32
	#Procedure 0x410896
	.globl sub_410896
	.type sub_410896, @function
sub_410896:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4108a0

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
	jne	.label_1588
	lea	rcx, [rsp]
	mov	rdi, r15
	mov	rsi, r14
	mov	rdx, rbx
	call	update_cur_sifted_state
	mov	ebp, eax
	test	ebp, ebp
	jne	.label_1583
	lea	r12, [rsp]
	xor	r13d, r13d
	nop	word ptr cs:[rax + rax]
.label_1585:
	test	rbx, rbx
	jle	.label_1586
	mov	rdi, qword ptr [r14]
	inc	r13d
	cmp	qword ptr [rdi + rbx*8], 0
	mov	eax, 0
	cmovne	r13d, eax
	cmp	r13d, dword ptr [r15 + 0xe0]
	jg	.label_1584
	mov	qword ptr [rsp + 8], 0
	mov	rax, qword ptr [r15 + 0xb8]
	cmp	qword ptr [rax + rbx*8 - 8], 0
	lea	rbx, [rbx - 1]
	je	.label_1587
	mov	rdi, r15
	mov	rsi, r14
	mov	rdx, rbx
	mov	rcx, r12
	call	build_sifted_states
	mov	ebp, eax
	test	ebp, ebp
	jne	.label_1583
.label_1587:
	mov	rdi, r15
	mov	rsi, r14
	mov	rdx, rbx
	mov	rcx, r12
	call	update_cur_sifted_state
	mov	ebp, eax
	test	ebp, ebp
	je	.label_1585
	jmp	.label_1583
.label_1586:
	xor	ebp, ebp
	jmp	.label_1583
.label_1584:
	shl	rbx, 3
	xor	ebp, ebp
	xor	esi, esi
	mov	rdx, rbx
	call	memset
.label_1583:
	mov	rdi, qword ptr [rsp + 0x10]
	call	free
.label_1588:
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
	#Procedure 0x41099d
	.globl sub_41099d
	.type sub_41099d, @function
sub_41099d:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x4109a0

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
	jne	.label_1589
	lea	rax, [r15 + 0xb8]
	mov	qword ptr [r13 + 0x80], rax
	mov	al, byte ptr [r15 + 0xb0]
	shr	al, 4
	and	al, 1
	mov	byte ptr [r13 + 0x8e], al
	cmp	byte ptr [r13 + 0x8b], 0
	je	.label_1591
	mov	r12, qword ptr [r13 + 8]
.label_1591:
	mov	qword ptr [r13 + 8], r12
	xor	eax, eax
	cmp	byte ptr [r13 + 0x8b], 0
	mov	ecx, 0
	jne	.label_1590
	xor	ecx, ecx
	cmp	dword ptr [r15 + 0xb4], 1
	cmovg	r14, rcx
	mov	rcx, r14
.label_1590:
	mov	qword ptr [r13 + 0x30], rcx
	mov	qword ptr [r13 + 0x38], rcx
.label_1589:
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	ret	
	.section	.text
	.align	32
	#Procedure 0x410a61
	.globl sub_410a61
	.type sub_410a61, @function
sub_410a61:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x410a70

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
	jle	.label_1596
	mov	qword ptr [rsp], rdx
	lea	r12, [rax + rcx*8]
	xor	r14d, r14d
	nop	dword ptr [rax + rax]
.label_1594:
	mov	rax, qword ptr [r12 + 0x10]
	mov	rax, qword ptr [rax + r14*8]
	cmp	rax, rbx
	je	.label_1592
	mov	rcx, qword ptr [rsp + 8]
	mov	rcx, qword ptr [rcx]
	mov	rdx, rax
	shl	rdx, 4
	test	byte ptr [rcx + rdx + 8], 8
	je	.label_1592
	mov	rcx, qword ptr [rsp + 8]
	mov	rcx, qword ptr [rcx + 0x28]
	lea	r13, [rax + rax*2]
	mov	rax, qword ptr [rcx + r13*8 + 0x10]
	mov	r15, qword ptr [rax]
	mov	rbp, -1
	cmp	qword ptr [rcx + r13*8 + 8], 2
	jl	.label_1598
	mov	rbp, qword ptr [rax + 8]
.label_1598:
	mov	rdi, r12
	mov	rsi, r15
	call	re_node_set_contains
	test	rax, rax
	jne	.label_1595
	mov	rdi, qword ptr [rsp]
	mov	rsi, r15
	call	re_node_set_contains
	test	rax, rax
	jne	.label_1601
.label_1595:
	test	rbp, rbp
	jle	.label_1592
	mov	rdi, r12
	mov	rsi, rbp
	call	re_node_set_contains
	test	rax, rax
	jne	.label_1592
	mov	rdi, qword ptr [rsp]
	mov	rsi, rbp
	call	re_node_set_contains
	test	rax, rax
	je	.label_1592
.label_1601:
	mov	rax, qword ptr [rsp + 8]
	mov	rax, qword ptr [rax + 0x38]
	lea	rdx, [rax + r13*8]
	lea	rdi, [rsp + 0x10]
	mov	rsi, qword ptr [rsp + 0x30]
	call	re_node_set_add_intersect
	mov	ebp, eax
	test	ebp, ebp
	jne	.label_1599
	nop	word ptr cs:[rax + rax]
.label_1592:
	inc	r14
	mov	rax, qword ptr [r12 + 8]
	cmp	r14, rax
	jl	.label_1594
	test	rax, rax
	mov	r14, qword ptr [rsp]
	jle	.label_1596
	xor	ebx, ebx
	lea	r15, [rsp + 0x10]
	nop	word ptr cs:[rax + rax]
.label_1593:
	mov	rax, qword ptr [r12 + 0x10]
	mov	rbp, qword ptr [rax + rbx*8]
	mov	rdi, r15
	mov	rsi, rbp
	call	re_node_set_contains
	test	rax, rax
	jne	.label_1600
	mov	rdi, r14
	mov	rsi, rbp
	call	re_node_set_contains
	lea	rsi, [rax - 1]
	mov	rdi, r14
	call	re_node_set_remove_at
.label_1600:
	inc	rbx
	cmp	rbx, qword ptr [r12 + 8]
	jl	.label_1593
.label_1596:
	mov	rdi, qword ptr [rsp + 0x20]
	call	free
	xor	ebp, ebp
.label_1597:
	mov	eax, ebp
	add	rsp, 0x38
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_1599:
	mov	rdi, qword ptr [rsp + 0x20]
	call	free
	jmp	.label_1597
	.section	.text
	.align	32
	#Procedure 0x410c23
	.globl sub_410c23
	.type sub_410c23, @function
sub_410c23:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x410c30

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
	jle	.label_1614
	lea	rax, [rbx + 0x28]
	cmp	dword ptr [rbx + 0x90], 2
	jl	.label_1621
	mov	qword ptr [rbx + 0x20], 0
.label_1621:
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
	jne	.label_1624
	mov	rax, qword ptr [rbx]
	mov	qword ptr [rbx + 8], rax
	mov	r13, r14
.label_1624:
	test	r13, r13
	je	.label_1607
	cmp	r13, qword ptr [rbx + 0x38]
	jge	.label_1634
	cmp	byte ptr [rbx + 0x8c], 0
	jne	.label_1637
	lea	rsi, [r13 - 1]
	mov	rdi, rbx
	mov	edx, r15d
	call	re_string_context_at
	mov	dword ptr [rbx + 0x70], eax
	cmp	dword ptr [rbx + 0x90], 2
	jl	.label_1642
	mov	rdi, qword ptr [rbx + 0x10]
	mov	rdx, qword ptr [rbx + 0x30]
	lea	rsi, [rdi + r13*4]
	sub	rdx, r13
	shl	rdx, 2
	call	memmove
.label_1642:
	cmp	byte ptr [rbx + 0x8b], 0
	jne	.label_1602
.label_1633:
	sub	qword ptr [rbx + 0x30], r13
	sub	qword ptr [rbx + 0x38], r13
.label_1605:
	cmp	byte ptr [rbx + 0x8b], 0
	jne	.label_1607
	add	qword ptr [rbx + 8], r13
.label_1607:
	mov	qword ptr [rbx + 0x28], r14
	sub	qword ptr [rbx + 0x58], r13
	sub	qword ptr [rbx + 0x68], r13
	cmp	dword ptr [rbx + 0x90], 2
	jl	.label_1609
	cmp	byte ptr [rbx + 0x88], 0
	je	.label_1615
	mov	rdi, rbx
	call	build_wcs_upper_buffer
	test	eax, eax
	jne	.label_1618
	jmp	.label_1610
.label_1609:
	cmp	byte ptr [rbx + 0x8b], 0
	jne	.label_1619
	mov	rax, qword ptr [rbx + 0x58]
	mov	qword ptr [rbx + 0x30], rax
	jmp	.label_1610
.label_1615:
	mov	rdi, rbx
	call	build_wcs_buffer
.label_1610:
	mov	qword ptr [rbx + 0x48], 0
	xor	eax, eax
.label_1618:
	add	rsp, 0x28
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_1614:
	mov	r13, r14
	sub	r13, rax
	jmp	.label_1624
.label_1634:
	mov	rdx, qword ptr [rbx + 0x30]
	cmp	byte ptr [rbx + 0x8c], 0
	jne	.label_1630
.label_1608:
	mov	qword ptr [rbx + 0x30], 0
	cmp	dword ptr [rbx + 0x90], 2
	jl	.label_1632
	mov	qword ptr [rsp + 0x18], rdx
	mov	dword ptr [rsp + 8], 0xffffffff
	cmp	byte ptr [rbx + 0x89], 0
	je	.label_1635
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
.label_1603:
	dec	rbp
	cmp	rbp, rax
	jb	.label_1616
	movzx	ecx, byte ptr [rbp]
	and	cl, 0xc0
	cmp	cl, 0x80
	je	.label_1603
	add	rdx, qword ptr [rbx + 0x58]
	sub	rdx, rbp
	cmp	qword ptr [rbx + 0x78], 0
	mov	rsi, rbp
	jne	.label_1620
.label_1631:
	mov	qword ptr [rsp + 0x20], 0
	lea	rdi, [rsp + 0xc]
	lea	rcx, [rsp + 0x20]
	call	rpl_mbrtowc
	sub	r12, rbp
	mov	rcx, rax
	sub	rcx, r12
	jb	.label_1616
	cmp	rax, -3
	ja	.label_1616
	mov	qword ptr [rbx + 0x20], 0
	mov	qword ptr [rbx + 0x30], rcx
	mov	eax, dword ptr [rsp + 0xc]
	mov	dword ptr [rsp + 8], eax
.label_1616:
	mov	edi, dword ptr [rsp + 8]
	cmp	edi, -1
	jne	.label_1622
.label_1635:
	lea	rdx, [rsp + 8]
	mov	rdi, rbx
	mov	rsi, r14
	call	re_string_skip_chars
	sub	rax, r14
	mov	qword ptr [rbx + 0x30], rax
	mov	edi, dword ptr [rsp + 8]
	cmp	edi, -1
	je	.label_1626
.label_1622:
	cmp	byte ptr [rbx + 0x8e], 0
	jne	.label_1628
	mov	ecx, dword ptr [rsp + 8]
.label_1629:
	xor	eax, eax
	cmp	ecx, 0xa
	jne	.label_1627
	xor	eax, eax
	cmp	byte ptr [rbx + 0x8d], 0
	setne	al
	add	eax, eax
	jmp	.label_1627
.label_1637:
	mov	rax, qword ptr [rbx + 0x18]
	mov	rsi, qword ptr [rbx + 0x30]
	xor	edx, edx
.label_1646:
	lea	rdi, [rdx + rsi]
	mov	rcx, rdi
	shr	rcx, 0x3f
	add	rcx, rdi
	sar	rcx, 1
	cmp	qword ptr [rax + rcx*8], r13
	mov	rdi, rcx
	jg	.label_1638
	jge	.label_1643
	lea	rdx, [rcx + 1]
	mov	rdi, rsi
.label_1638:
	cmp	rdx, rdi
	mov	rsi, rdi
	jl	.label_1646
.label_1643:
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
	jle	.label_1611
	cmp	rbp, r13
	jne	.label_1611
	mov	rax, qword ptr [rbx + 0x18]
	cmp	qword ptr [rax + rbp*8], r13
	jne	.label_1611
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
	jle	.label_1605
	mov	rax, qword ptr [rbx + 0x18]
	lea	rcx, [rax + r13*8]
	xor	edx, edx
.label_1644:
	mov	rsi, qword ptr [rcx + rdx*8]
	sub	rsi, r13
	mov	qword ptr [rax + rdx*8], rsi
	inc	rdx
	cmp	rdx, qword ptr [rbx + 0x30]
	jl	.label_1644
	jmp	.label_1605
.label_1602:
	mov	rdi, qword ptr [rbx + 8]
	mov	rdx, qword ptr [rbx + 0x30]
	sub	rdx, r13
	lea	rsi, [rdi + r13]
	call	memmove
	jmp	.label_1633
.label_1611:
	mov	rax, r13
	sub	rax, r14
	mov	rcx, qword ptr [rbx + 0x50]
	add	rcx, rax
	mov	qword ptr [rbx + 0x58], rcx
	add	rax, qword ptr [rbx + 0x60]
	mov	qword ptr [rbx + 0x68], rax
	mov	byte ptr [rbx + 0x8c], 0
.label_1640:
	mov	rax, rbp
	test	rax, rax
	jle	.label_1639
	lea	rbp, [rax - 1]
	mov	rcx, qword ptr [rbx + 0x18]
	cmp	qword ptr [rcx + rax*8 - 8], r13
	je	.label_1640
.label_1639:
	cmp	rax, qword ptr [rbx + 0x30]
	jge	.label_1645
	mov	rcx, qword ptr [rbx + 0x10]
.label_1636:
	cmp	dword ptr [rcx + rax*4], -1
	jne	.label_1645
	inc	rax
	cmp	rax, qword ptr [rbx + 0x30]
	jl	.label_1636
.label_1645:
	cmp	rax, qword ptr [rbx + 0x30]
	jne	.label_1647
	mov	qword ptr [rbx + 0x30], 0
	jmp	.label_1612
.label_1619:
	cmp	byte ptr [rbx + 0x88], 0
	je	.label_1606
	mov	rdi, rbx
	call	build_upper_buffer
	jmp	.label_1610
.label_1632:
	mov	rax, qword ptr [rbx + 0x28]
	add	rax, r13
	mov	rcx, qword ptr [rbx]
	mov	bpl, byte ptr [rcx + rax - 1]
	movzx	eax, bpl
	mov	qword ptr [rbx + 0x38], 0
	mov	rcx, qword ptr [rbx + 0x78]
	test	rcx, rcx
	je	.label_1613
	mov	bpl, byte ptr [rcx + rax]
.label_1613:
	mov	rdi, qword ptr [rbx + 0x80]
	movzx	esi, bpl
	call	bitset_contain
	mov	ecx, 1
	test	al, al
	jne	.label_1623
	xor	ecx, ecx
	cmp	bpl, 0xa
	jne	.label_1623
	xor	ecx, ecx
	cmp	byte ptr [rbx + 0x8d], 0
	setne	cl
	add	ecx, ecx
.label_1623:
	mov	dword ptr [rbx + 0x70], ecx
	jmp	.label_1605
.label_1647:
	mov	rcx, qword ptr [rbx + 0x18]
	mov	rax, qword ptr [rcx + rax*8]
	sub	rax, r13
	mov	qword ptr [rbx + 0x30], rax
	je	.label_1612
	mov	r15, qword ptr [rbx + 0x30]
	test	r15, r15
	jle	.label_1625
	mov	rdi, qword ptr [rbx + 0x10]
	mov	r15, qword ptr [rbx + 0x30]
	test	r15, r15
	mov	edx, 1
	cmovg	rdx, r15
	shl	rdx, 2
	mov	esi, 0xff
	call	memset
.label_1625:
	mov	rdi, qword ptr [rbx + 8]
	mov	esi, 0xff
	mov	rdx, r15
	call	memset
	jmp	.label_1612
.label_1606:
	cmp	qword ptr [rbx + 0x78], 0
	je	.label_1610
	mov	rdi, rbx
	call	re_string_translate_buffer
	jmp	.label_1610
.label_1626:
	mov	rsi, qword ptr [rsp + 0x18]
	dec	rsi
	mov	rdi, rbx
	mov	edx, r15d
	call	re_string_context_at
.label_1627:
	mov	dword ptr [rbx + 0x70], eax
	cmp	qword ptr [rbx + 0x30], 0
	jne	.label_1604
.label_1612:
	mov	rax, qword ptr [rbx + 0x30]
	mov	qword ptr [rbx + 0x38], rax
	jmp	.label_1605
.label_1630:
	mov	rax, r13
	sub	rax, r14
	mov	rcx, qword ptr [rbx + 0x50]
	add	rcx, rax
	mov	qword ptr [rbx + 0x58], rcx
	add	rax, qword ptr [rbx + 0x60]
	mov	qword ptr [rbx + 0x68], rax
	mov	byte ptr [rbx + 0x8c], 0
	jmp	.label_1608
.label_1604:
	mov	r15, qword ptr [rbx + 0x30]
	test	r15, r15
	jle	.label_1617
	mov	rdi, qword ptr [rbx + 0x10]
	mov	r15, qword ptr [rbx + 0x30]
	test	r15, r15
	mov	edx, 1
	cmovg	rdx, r15
	shl	rdx, 2
	mov	esi, 0xff
	call	memset
.label_1617:
	cmp	byte ptr [rbx + 0x8b], 0
	jne	.label_1625
	jmp	.label_1612
.label_1628:
	call	iswalnum
	test	eax, eax
	mov	eax, 1
	jne	.label_1627
	mov	ecx, dword ptr [rsp + 8]
	cmp	ecx, 0x5f
	jne	.label_1629
	jmp	.label_1627
.label_1620:
	lea	rsi, [rsp + 0x12]
	cmp	rdx, 7
	mov	eax, 6
	cmovl	rax, rdx
	cmp	rdx, 6
	mov	ecx, 6
	cmovl	ecx, edx
	test	ecx, ecx
	jle	.label_1631
	movsxd	r10, eax
	lea	r8, [rsp + r10 + 0x11]
	lea	r9, [rbp + r10 - 1]
	xor	ecx, ecx
.label_1641:
	movzx	edi, byte ptr [r9 + rcx]
	mov	rax, qword ptr [rbx + 0x78]
	movzx	eax, byte ptr [rax + rdi]
	mov	byte ptr [r8 + rcx], al
	lea	rax, [r10 + rcx - 1]
	dec	rcx
	inc	rax
	cmp	rax, 1
	jg	.label_1641
	jmp	.label_1631
	.section	.text
	.align	32
	#Procedure 0x4111fd
	.globl sub_4111fd
	.type sub_4111fd, @function
sub_4111fd:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x411200

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
	jne	.label_1650
	mov	dword ptr [rsp + 0xc], r14d
	cmp	qword ptr [rbx + 8], 0
	jle	.label_1652
	xor	r14d, r14d
	mov	qword ptr [rsp + 0x30], rbp
	mov	qword ptr [rsp + 0x28], rbx
	nop	word ptr cs:[rax + rax]
.label_1648:
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
	je	.label_1651
	mov	rdi, r13
	lea	rsi, [rsp + 0x10]
	mov	rdx, rbx
	mov	rcx, rbp
	mov	r8d, r15d
	call	check_arrival_expand_ecl_sub
	jmp	.label_1649
	.section	.text
	.align	32
	#Procedure 0x4112a8
	.globl sub_4112a8
	.type sub_4112a8, @function
sub_4112a8:

	nop	dword ptr [rax + rax]
.label_1651:
	lea	rdi, [rsp + 0x10]
	mov	rsi, r12
	call	re_node_set_merge
.label_1649:
	mov	r15d, eax
	test	r15d, r15d
	jne	.label_1653
	inc	r14
	mov	rbx, qword ptr [rsp + 0x28]
	cmp	r14, qword ptr [rbx + 8]
	mov	rbp, qword ptr [rsp + 0x30]
	jl	.label_1648
.label_1652:
	mov	rdi, qword ptr [rbx + 0x10]
	call	free
	mov	rax, qword ptr [rsp + 0x20]
	mov	qword ptr [rbx + 0x10], rax
	movups	xmm0, xmmword ptr [rsp + 0x10]
	movups	xmmword ptr [rbx], xmm0
	xor	r15d, r15d
.label_1650:
	mov	eax, r15d
	add	rsp, 0x38
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_1653:
	mov	rdi, qword ptr [rsp + 0x20]
	call	free
	jmp	.label_1650
	.section	.text
	.align	32
	#Procedure 0x411313
	.globl sub_411313
	.type sub_411313, @function
sub_411313:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x411320

	.globl eval6
	.type eval6, @function
eval6:
	push	rbp
	push	r15
	push	r14
	push	r12
	push	rbx
	mov	ebx, edi
	mov	edi, OFFSET FLAT:label_147
	call	nextarg
	test	al, al
	je	.label_1659
	call	require_more_args
	mov	rax,  qword ptr [word ptr [rip + args]]
	lea	rcx, [rax + 8]
	mov	qword ptr [word ptr [rip + args]],  rcx
	mov	rdi, qword ptr [rax]
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	pop	rbp
	jmp	str_value
.label_1659:
	mov	edi, OFFSET FLAT:label_1666
	call	nextarg
	test	al, al
	je	.label_1668
	movzx	edi, bl
	call	eval6
	mov	rbx, rax
	mov	rdi, rbx
	call	tostring
	mov	rdi, qword ptr [rbx + 8]
	call	mbslen
	mov	rdi, rax
	call	int_value
	mov	r14, rax
.label_1662:
	mov	rdi, rbx
	call	freev
	mov	rax, r14
	jmp	.label_1656
.label_1668:
	mov	edi, OFFSET FLAT:label_1657
	call	nextarg
	test	al, al
	je	.label_1658
	movzx	ebp, bl
	mov	edi, ebp
	call	eval6
	mov	r12, rax
	mov	edi, ebp
	call	eval6
	mov	r14, rax
	test	bl, bl
	je	.label_1660
	mov	rdi, r12
	mov	rsi, r14
	call	docolon
	mov	rbx, rax
	mov	rdi, r12
	call	freev
	mov	r12, rbx
.label_1660:
	mov	rdi, r14
.label_1655:
	call	freev
	mov	rax, r12
.label_1656:
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_1658:
	mov	edi, OFFSET FLAT:label_1661
	call	nextarg
	test	al, al
	je	.label_1654
	movzx	ebx, bl
	mov	edi, ebx
	call	eval6
	mov	rbp, rax
	mov	edi, ebx
	call	eval6
	mov	rbx, rax
	mov	rdi, rbp
	call	tostring
	mov	rdi, rbx
	call	tostring
	mov	rdi, qword ptr [rbp + 8]
	mov	rsi, qword ptr [rbx + 8]
	call	mbs_logical_cspn
	mov	rdi, rax
	call	int_value
	mov	r14, rax
	mov	rdi, rbp
	call	freev
	jmp	.label_1662
.label_1654:
	mov	edi, OFFSET FLAT:label_1663
	call	nextarg
	test	al, al
	je	.label_1664
	movzx	ebp, bl
	mov	edi, ebp
	call	eval6
	mov	r14, rax
	mov	edi, ebp
	call	eval6
	mov	rbx, rax
	mov	edi, ebp
	call	eval6
	mov	r15, rax
	mov	rdi, r14
	call	tostring
	mov	rdi, rbx
	call	toarith
	test	al, al
	je	.label_1665
	mov	rdi, r15
	call	toarith
	test	al, al
	je	.label_1665
	mov	rdi, rbx
	add	rdi, 8
	call	getsize
	mov	rbp, rax
	mov	rdi, r15
	add	rdi, 8
	call	getsize
	mov	rdi, qword ptr [r14 + 8]
	mov	rsi, rbp
	mov	rdx, rax
	call	mbs_logical_substr
	mov	rbp, rax
	mov	rdi, rbp
	call	str_value
	mov	r12, rax
	mov	rdi, rbp
	call	free
	jmp	.label_1667
.label_1664:
	movzx	edi, bl
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	pop	rbp
	jmp	eval7
.label_1665:
	mov	edi, OFFSET FLAT:label_56
	call	str_value
	mov	r12, rax
.label_1667:
	mov	rdi, r14
	call	freev
	mov	rdi, rbx
	call	freev
	mov	rdi, r15
	jmp	.label_1655
	.section	.text
	.align	32
	#Procedure 0x41151b
	.globl sub_41151b
	.type sub_41151b, @function
sub_41151b:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x411520

	.globl rpl_regfree
	.type rpl_regfree, @function
rpl_regfree:
	push	rbx
	mov	rbx, rdi
	mov	rdi, qword ptr [rbx]
	test	rdi, rdi
	je	.label_1669
	call	free_dfa_content
.label_1669:
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
	#Procedure 0x41155b
	.globl sub_41155b
	.type sub_41155b, @function
sub_41155b:

	nop	dword ptr [rax + rax]
.label_1672:
	mov	qword ptr [rbx + 8], 2
	mov	rax, qword ptr [rbx + 0x10]
	jge	.label_1670
	mov	qword ptr [rax], r14
	mov	rax, qword ptr [rbx + 0x10]
	mov	qword ptr [rax + 8], r15
	jmp	.label_1671
	.section	.text
	.align	32
	#Procedure 0x41157b

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
	je	.label_1673
	cmp	r14, r15
	jne	.label_1672
	mov	qword ptr [rbx + 8], 1
	mov	rax, qword ptr [rbx + 0x10]
	mov	qword ptr [rax], r14
	jmp	.label_1671
.label_1670:
	mov	qword ptr [rax], r15
	mov	rax, qword ptr [rbx + 0x10]
	mov	qword ptr [rax + 8], r14
.label_1671:
	xor	eax, eax
.label_1673:
	pop	rbx
	pop	r14
	pop	r15
	ret	
	.section	.text
	.align	32
	#Procedure 0x4115d4
	.globl sub_4115d4
	.type sub_4115d4, @function
sub_4115d4:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4115e0
	.globl mbuiter_multi_reloc
	.type mbuiter_multi_reloc, @function
mbuiter_multi_reloc:

	add	qword ptr [rdi + 0x10], rsi
	ret	
	.section	.text
	.align	32
	#Procedure 0x4115e5
	.globl sub_4115e5
	.type sub_4115e5, @function
sub_4115e5:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4115f0

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
	jne	.label_1674
	mov	rdi, qword ptr [rbx + 0x10]
	shl	rax, 5
	lea	rsi, [rax + rax*2]
	call	realloc
	test	rax, rax
	je	.label_1675
	shl	qword ptr [rbx + 8], 1
	mov	qword ptr [rbx + 0x10], rax
.label_1674:
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
	je	.label_1675
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
.label_1675:
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
	#Procedure 0x4116ce
	.globl sub_4116ce
	.type sub_4116ce, @function
sub_4116ce:

	nop	
	.section	.text
	.align	32
	#Procedure 0x4116d0
	.globl c_isalnum
	.type c_isalnum, @function
c_isalnum:

	mov	al, 1
	lea	ecx, [rdi - 0x41]
	cmp	ecx, 0x39
	ja	.label_1676
	movabs	rdx, 0x3ffffff03ffffff
	bt	rdx, rcx
	jae	.label_1676
.label_1677:
	ret	
.label_1676:
	add	edi, -0x30
	cmp	edi, 0xa
	jb	.label_1677
	xor	eax, eax
	ret	
	.section	.text
	.align	32
	#Procedure 0x4116f6
	.globl sub_4116f6
	.type sub_4116f6, @function
sub_4116f6:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x411700

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
	ja	.label_1678
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
	je	.label_1683
	cmp	qword ptr [r14 + 0x98], 0
	je	.label_1689
	mov	qword ptr [rsp + 0x18], r14
	mov	rdi, rbp
	call	malloc
	mov	r15, rax
	test	r15, r15
	je	.label_1679
	lea	rbp, [rsp + 0x20]
	mov	r13, qword ptr [rsp + 8]
	mov	r14, qword ptr [rsp]
	jmp	.label_1681
.label_1689:
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
	jne	.label_1680
	xor	r15d, r15d
	cmp	qword ptr [r12], 0
	jne	.label_1687
	mov	r13d, 1
	jmp	.label_1680
	.section	.text
	.align	32
	#Procedure 0x4117ff
	.globl sub_4117ff
	.type sub_4117ff, @function
sub_4117ff:

	nop	
.label_1684:
	mov	rdi, rbp
	mov	rdx, rbx
	call	check_halt_state_context
	lea	rbp, [rsp + 0x20]
	mov	r14, qword ptr [rsp]
	mov	r13, rax
.label_1681:
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
	jne	.label_1685
	mov	rbp, qword ptr [rsp + 0x10]
	cmp	qword ptr [r14], 0
	jne	.label_1682
	cmp	qword ptr [r15], 0
	jne	.label_1682
	mov	r13d, 1
	test	rbx, rbx
	jle	.label_1683
	mov	rax, qword ptr [rbp + 0xb8]
	dec	rbx
	nop	dword ptr [rax]
.label_1686:
	mov	rsi, qword ptr [rax + rbx*8]
	test	rsi, rsi
	je	.label_1688
	test	byte ptr [rsi + 0x68], 0x10
	jne	.label_1684
.label_1688:
	lea	rcx, [rbx - 1]
	inc	rbx
	cmp	rbx, 2
	mov	rbx, rcx
	jge	.label_1686
	mov	r12, qword ptr [rsp]
	jmp	.label_1680
.label_1682:
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
	jne	.label_1680
.label_1687:
	mov	rdi, qword ptr [rbp + 0xb8]
	call	free
	mov	qword ptr [rbp + 0xb8], r12
	mov	rax, qword ptr [rsp + 8]
	mov	qword ptr [rbp + 0xb0], rax
	mov	qword ptr [rbp + 0xa8], rbx
	xor	r13d, r13d
	xor	r12d, r12d
	xor	r15d, r15d
.label_1680:
	mov	rdi, r12
	call	free
	mov	rdi, r15
	call	free
.label_1678:
	mov	eax, r13d
	add	rsp, 0x58
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_1683:
	mov	r12, qword ptr [rsp]
	jmp	.label_1680
.label_1685:
	mov	r12, r14
	jmp	.label_1680
.label_1679:
	mov	r12, qword ptr [rsp]
	jmp	.label_1680
	.section	.text
	.align	32
	#Procedure 0x41194b
	.globl sub_41194b
	.type sub_41194b, @function
sub_41194b:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x411950

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
	jne	.label_1710
	cmp	qword ptr [rbx + 0x78], 0
	jne	.label_1710
	cmp	byte ptr [rbx + 0x8c], 0
	je	.label_1716
.label_1710:
	mov	rdi, qword ptr [rbx + 0x38]
	jmp	.label_1708
.label_1716:
	cmp	r13, r15
	jle	.label_1720
	lea	r14, [rbx + 0x20]
	mov	qword ptr [rsp + 0x10], r13
	jmp	.label_1722
.label_1729:
	lea	rax, [r12 + 1]
	cmp	rax, 2
	jb	.label_1735
	cmp	r12, -2
	jne	.label_1727
	mov	rax, qword ptr [rbx + 0x40]
	cmp	rax, qword ptr [rbx + 0x58]
	jl	.label_1727
.label_1735:
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
	jne	.label_1730
	mov	rax, qword ptr [rsp + 0x18]
	mov	qword ptr [r14], rax
	jmp	.label_1730
	.section	.text
	.align	32
	#Procedure 0x4119fe
	.globl sub_4119fe
	.type sub_4119fe, @function
sub_4119fe:

	nop	
.label_1722:
	mov	rax, qword ptr [rbx + 0x28]
	add	rax, r15
	mov	rcx, qword ptr [rbx]
	movzx	ebp, byte ptr [rcx + rax]
	test	bpl, bpl
	js	.label_1690
	mov	rdi, r14
	call	mbsinit
	test	eax, eax
	je	.label_1690
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
.label_1730:
	mov	rax, r15
	jmp	.label_1705
	.section	.text
	.align	32
	#Procedure 0x411a4f
	.globl sub_411a4f
	.type sub_411a4f, @function
sub_411a4f:

	nop	
.label_1690:
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
	ja	.label_1729
	mov	edi, dword ptr [rsp + 0xc]
	call	towupper
	mov	r13d, eax
	cmp	r13d, dword ptr [rsp + 0xc]
	lea	rbp, [rsp + 0x30]
	jne	.label_1719
	mov	rdi, qword ptr [rbx + 8]
	add	rdi, r15
	mov	rsi, qword ptr [rbx]
	add	rsi, qword ptr [rbx + 0x28]
	add	rsi, r15
	jmp	.label_1723
	.section	.text
	.align	32
	#Procedure 0x411ab3
	.globl sub_411ab3
	.type sub_411ab3, @function
sub_411ab3:

	nop	word ptr cs:[rax + rax]
.label_1719:
	mov	rdi, rbp
	mov	esi, r13d
	lea	rdx, [rsp + 0x18]
	call	wcrtomb
	cmp	r12, rax
	jne	.label_1731
	mov	rdi, qword ptr [rbx + 8]
	add	rdi, r15
	mov	rsi, rbp
.label_1723:
	mov	rdx, r12
	call	memcpy
	mov	rax, qword ptr [rbx + 0x10]
	mov	dword ptr [rax + r15*4], r13d
	lea	rbp, [r12 + r15]
	lea	rax, [r15 + 1]
	cmp	rax, rbp
	mov	r13, qword ptr [rsp + 0x10]
	jge	.label_1705
	mov	rax, qword ptr [rbx + 0x10]
	lea	rdi, [rax + r15*4 + 4]
	lea	rdx, [r12*4 - 4]
	mov	esi, 0xff
	call	memset
	mov	rax, rbp
.label_1705:
	cmp	r13, rax
	mov	r15, rax
	jg	.label_1722
	jmp	.label_1697
.label_1731:
	mov	rdi, r15
	mov	r13, qword ptr [rsp + 0x10]
	jmp	.label_1698
.label_1727:
	mov	rax, qword ptr [rsp + 0x18]
	mov	qword ptr [r14], rax
.label_1720:
	mov	rax, r15
.label_1697:
	mov	qword ptr [rbx + 0x30], rax
	mov	qword ptr [rbx + 0x38], rax
	jmp	.label_1704
.label_1708:
	cmp	r15, r13
	jge	.label_1709
.label_1698:
	mov	rdx, r13
	sub	rdx, r15
	lea	r12, [rbx + 0x20]
	mov	rax, qword ptr [rbx + 0x20]
	mov	qword ptr [rsp + 0x18], rax
	cmp	qword ptr [rbx + 0x78], 0
	mov	qword ptr [rsp + 0x10], r13
	mov	qword ptr [rsp + 0x28], rdi
	jne	.label_1711
	mov	rbp, qword ptr [rbx]
	add	rbp, qword ptr [rbx + 0x28]
	add	rbp, rdi
.label_1696:
	lea	rdi, [rsp + 0xc]
	mov	rsi, rbp
	mov	rcx, r12
	call	rpl_mbrtowc
	mov	r14, rax
	lea	r13, [r14 - 1]
	cmp	r13, -4
	ja	.label_1717
	mov	edi, dword ptr [rsp + 0xc]
	call	towupper
	cmp	eax, dword ptr [rsp + 0xc]
	mov	dword ptr [rsp + 0x24], eax
	je	.label_1725
	lea	rdi, [rsp + 0x30]
	lea	rdx, [rsp + 0x18]
	mov	esi, eax
	call	wcrtomb
	mov	rcx, rax
	sub	rax, r14
	jne	.label_1694
	mov	rdi, qword ptr [rbx + 8]
	add	rdi, r15
	lea	rsi, [rsp + 0x30]
	jmp	.label_1732
.label_1711:
	lea	rbp, [rsp + 0x30]
	cmp	dword ptr [rbx + 0x90], 0
	jle	.label_1696
	xor	eax, eax
.label_1691:
	cmp	rax, rdx
	jge	.label_1696
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
	jl	.label_1691
	jmp	.label_1696
.label_1717:
	mov	rsi, r12
	lea	rax, [r14 + 1]
	cmp	rax, 2
	jb	.label_1699
	cmp	r14, -2
	jne	.label_1702
	mov	rax, qword ptr [rbx + 0x40]
	cmp	rax, qword ptr [rbx + 0x58]
	jl	.label_1702
.label_1699:
	mov	rax, qword ptr [rbx + 0x28]
	mov	rdi, qword ptr [rsp + 0x28]
	add	rax, rdi
	mov	rdx, qword ptr [rbx]
	mov	rcx, qword ptr [rbx + 0x78]
	mov	al, byte ptr [rdx + rax]
	movzx	edx, al
	test	rcx, rcx
	jne	.label_1706
.label_1714:
	movzx	eax, al
	mov	rcx, qword ptr [rbx + 8]
	mov	byte ptr [rcx + r15], al
	cmp	byte ptr [rbx + 0x8c], 0
	mov	r13, qword ptr [rsp + 0x10]
	jne	.label_1712
.label_1700:
	inc	rdi
	mov	rcx, qword ptr [rbx + 0x10]
	mov	dword ptr [rcx + r15*4], eax
	inc	r15
	cmp	r14, -1
	je	.label_1718
	mov	r12, r15
	jmp	.label_1708
.label_1694:
	cmp	rcx, -1
	je	.label_1725
	mov	rsi, r12
	lea	r12, [rcx + r15]
	mov	rdi, qword ptr [rbx + 0x40]
	cmp	r12, rdi
	jbe	.label_1703
.label_1702:
	mov	rax, qword ptr [rsp + 0x18]
	mov	qword ptr [rsi], rax
	mov	rdi, qword ptr [rsp + 0x28]
.label_1709:
	mov	qword ptr [rbx + 0x30], r15
	mov	qword ptr [rbx + 0x38], rdi
.label_1704:
	xor	eax, eax
.label_1713:
	add	rsp, 0x78
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_1725:
	mov	rdi, qword ptr [rbx + 8]
	add	rdi, r15
	mov	rsi, rbp
.label_1732:
	mov	rdx, r14
	call	memcpy
	cmp	byte ptr [rbx + 0x8c], 0
	mov	r13, qword ptr [rsp + 0x10]
	mov	rdi, qword ptr [rsp + 0x28]
	jne	.label_1692
.label_1734:
	add	rdi, r14
	mov	rax, qword ptr [rbx + 0x10]
	mov	ecx, dword ptr [rsp + 0x24]
	mov	dword ptr [rax + r15*4], ecx
	lea	r12, [r14 + r15]
	inc	r15
	cmp	r15, r12
	jge	.label_1693
	mov	rax, qword ptr [rbx + 0x10]
	mov	rbp, rdi
	lea	rdi, [rax + r15*4]
	lea	rdx, [r14*4 - 4]
	mov	esi, 0xff
	call	memset
	mov	rdi, rbp
	mov	r15, r12
	jmp	.label_1708
.label_1693:
	mov	r12, r15
	jmp	.label_1708
.label_1692:
	lea	rax, [r15*8]
	add	rax, qword ptr [rbx + 0x18]
	mov	rcx, rdi
	mov	rdx, r14
.label_1701:
	mov	qword ptr [rax], rcx
	inc	rcx
	add	rax, 8
	dec	rdx
	jne	.label_1701
	jmp	.label_1734
.label_1703:
	mov	qword ptr [rsp + 0x10], rax
	cmp	qword ptr [rbx + 0x18], 0
	jne	.label_1715
	shl	rdi, 3
	mov	rbp, rcx
	call	malloc
	mov	rcx, rbp
	mov	qword ptr [rbx + 0x18], rax
	test	rax, rax
	je	.label_1721
.label_1715:
	cmp	byte ptr [rbx + 0x8c], 0
	jne	.label_1724
	mov	rdx, rcx
	test	r15, r15
	je	.label_1726
	mov	rax, qword ptr [rbx + 0x18]
	xor	ecx, ecx
.label_1728:
	mov	qword ptr [rax + rcx*8], rcx
	inc	rcx
	cmp	r15, rcx
	jne	.label_1728
.label_1726:
	mov	byte ptr [rbx + 0x8c], 1
	mov	rcx, rdx
.label_1724:
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
	jb	.label_1733
	lea	rax, [r15*4]
	add	rax, qword ptr [rbx + 0x10]
	shl	r15, 3
	add	r15, qword ptr [rbx + 0x18]
	mov	ecx, 1
.label_1695:
	cmp	rcx, r14
	mov	rdx, r13
	cmovb	rdx, rcx
	add	rdx, rdi
	mov	qword ptr [r15 + rcx*8], rdx
	mov	dword ptr [rax + rcx*4], 0xffffffff
	inc	rcx
	cmp	rsi, rcx
	jne	.label_1695
.label_1733:
	mov	rbp, qword ptr [rsp + 0x10]
	add	qword ptr [rbx + 0x58], rbp
	cmp	qword ptr [rbx + 0x60], rdi
	jle	.label_1707
	add	qword ptr [rbx + 0x68], rbp
.label_1707:
	mov	r13, qword ptr [rbx + 0x40]
	mov	rax, qword ptr [rbx + 0x58]
	cmp	r13, rax
	cmovg	r13, rax
	add	rdi, r14
	mov	r15, r12
	jmp	.label_1708
.label_1721:
	mov	eax, 0xc
	jmp	.label_1713
.label_1706:
	mov	al, byte ptr [rcx + rdx]
	jmp	.label_1714
.label_1712:
	mov	rcx, qword ptr [rbx + 0x18]
	mov	qword ptr [rcx + r15*8], rdi
	jmp	.label_1700
.label_1718:
	mov	rax, qword ptr [rsp + 0x18]
	mov	qword ptr [rsi], rax
	mov	r12, r15
	jmp	.label_1708
	.section	.text
	.align	32
	#Procedure 0x411ea5
	.globl sub_411ea5
	.type sub_411ea5, @function
sub_411ea5:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x411eb0

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
	je	.label_1737
	test	r14, r14
	mov	qword ptr [rsp + 0x10], rsi
	je	.label_1738
	mov	rdi, rbp
	mov	rsi, r13
	mov	rdx, r12
	call	add_epsilon_src_nodes
	mov	rcx, qword ptr [rsp + 0x10]
	mov	dword ptr [rsp + 0xc], eax
	test	eax, eax
	jne	.label_1736
	cmp	qword ptr [rcx + 0x28], 0
	je	.label_1738
	lea	rcx, [rcx + 0x20]
	mov	r8, qword ptr [rbx + 0xd8]
	mov	rdi, rbp
	mov	rsi, r13
	mov	rdx, r12
	mov	r9, r15
	call	check_subexp_limits
	mov	dword ptr [rsp + 0xc], eax
	test	eax, eax
	jne	.label_1736
.label_1738:
	lea	rdi, [rsp + 0xc]
	mov	rsi, rbp
	mov	rdx, r13
	call	re_acquire_state
	mov	rsi, qword ptr [rsp + 0x10]
	mov	rcx, qword ptr [rsi]
	mov	qword ptr [rcx + r15*8], rax
	mov	eax, dword ptr [rsp + 0xc]
	test	eax, eax
	je	.label_1739
	jmp	.label_1736
.label_1737:
	mov	rax, qword ptr [rsi]
	mov	qword ptr [rax + r15*8], 0
.label_1739:
	test	r14, r14
	je	.label_1740
	mov	rax, qword ptr [rbx + 0xb8]
	mov	rax, qword ptr [rax + r15*8]
	test	byte ptr [rax + 0x68], 0x40
	je	.label_1740
	mov	rdi, rbx
	mov	rdx, r15
	mov	rcx, r12
	call	sift_states_bkref
	mov	dword ptr [rsp + 0xc], eax
	test	eax, eax
	jne	.label_1736
.label_1740:
	xor	eax, eax
.label_1736:
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
	#Procedure 0x411fb5
	.globl sub_411fb5
	.type sub_411fb5, @function
sub_411fb5:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x411fc0

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
	je	.label_1776
	lea	rax, [rax + rax*4]
	shl	rax, 3
	add	rax, qword ptr [r8 + 0xd8]
.label_1757:
	mov	dword ptr [rsp + 0xc], 0
	mov	rcx, qword ptr [rsp + 0x30]
	cmp	qword ptr [rax], rcx
	je	.label_1747
	cmp	byte ptr [rax + 0x20], 0
	lea	rax, [rax + 0x28]
	jne	.label_1757
.label_1776:
	mov	dword ptr [rsp + 0xc], 0
	cmp	qword ptr [r8 + 0xe8], 0
	jle	.label_1747
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
.label_1771:
	mov	rcx, qword ptr [r8 + 0xf8]
	mov	rdx, qword ptr [rsp + 0x40]
	mov	rbp, qword ptr [rcx + rdx*8]
	mov	rcx, qword ptr [rbp + 8]
	mov	rdx, qword ptr [rsp + 0x38]
	mov	rdx, qword ptr [rdx]
	shl	rcx, 4
	mov	rsi, qword ptr [rsp + 0x50]
	cmp	qword ptr [rdx + rcx], rsi
	jne	.label_1755
	mov	r13, qword ptr [rbp]
	cmp	qword ptr [rbp + 0x20], 0
	mov	qword ptr [rsp + 0x10], rbp
	jle	.label_1752
	mov	dword ptr [rsp + 0xc], eax
	mov	rdx, qword ptr [rsp + 0x20]
	xor	r15d, r15d
	jmp	.label_1758
	.section	.text
	.align	32
	#Procedure 0x4120bc
	.globl sub_4120bc
	.type sub_4120bc, @function
sub_4120bc:

	nop	dword ptr [rax]
.label_1755:
	mov	dword ptr [rsp + 0xc], eax
	jmp	.label_1746
.label_1752:
	xor	r15d, r15d
	mov	rdx, qword ptr [rsp + 0x20]
	mov	dword ptr [rsp + 0xc], eax
	jmp	.label_1742
.label_1768:
	mov	edi, 7
	cmp	rsi, qword ptr [r8 + 0x58]
	jle	.label_1769
	mov	rbp, qword ptr [rsp + 0x10]
	jmp	.label_1756
.label_1769:
	mov	qword ptr [rsp + 0x48], rdx
	mov	rdi, r8
	mov	rbx, rdi
	call	clean_state_log_if_needed
	test	eax, eax
	jne	.label_1778
	mov	rax, qword ptr [rbx + 8]
	mov	qword ptr [rsp + 0x28], rax
	mov	rdx, qword ptr [rsp + 0x48]
	jmp	.label_1741
.label_1770:
	mov	edi, 1
	mov	r13, r12
	mov	dword ptr [rsp + 0xc], eax
	jmp	.label_1748
.label_1778:
	mov	edi, 1
	mov	dword ptr [rsp + 0xc], eax
	mov	r8, rbx
	mov	rbp, qword ptr [rsp + 0x10]
	mov	rdx, qword ptr [rsp + 0x48]
	jmp	.label_1756
	.section	.text
	.align	32
	#Procedure 0x41213f
	.globl sub_41213f
	.type sub_41213f, @function
sub_41213f:

	nop	
.label_1758:
	mov	rax, qword ptr [rbp + 0x28]
	mov	r14, qword ptr [rax + r15*8]
	mov	r12, qword ptr [r14 + 8]
	mov	rbp, r12
	sub	rbp, r13
	jle	.label_1750
	lea	rsi, [rbp + rdx]
	cmp	rsi, qword ptr [r8 + 0x30]
	jg	.label_1768
.label_1741:
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
	je	.label_1750
	mov	rbp, qword ptr [rsp + 0x10]
	jmp	.label_1756
	.section	.text
	.align	32
	#Procedure 0x412193
	.globl sub_412193
	.type sub_412193, @function
sub_412193:

	nop	word ptr cs:[rax + rax]
.label_1750:
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
	je	.label_1766
	test	eax, eax
	jne	.label_1770
	xor	edi, edi
.label_1766:
	mov	r13, r12
.label_1748:
	mov	rdx, rbx
.label_1756:
	mov	eax, edi
	and	al, 0xf
	je	.label_1774
	cmp	al, 9
	jne	.label_1775
.label_1774:
	inc	r15
	cmp	r15, qword ptr [rbp + 0x20]
	jl	.label_1758
	jmp	.label_1742
.label_1775:
	cmp	al, 7
	jne	.label_1743
	nop	
.label_1742:
	cmp	r15, qword ptr [rbp + 0x20]
	jl	.label_1746
	xor	eax, eax
	test	r15, r15
	setg	al
	add	r13, rax
	cmp	r13, qword ptr [rsp + 0x20]
	jle	.label_1751
	jmp	.label_1746
.label_1749:
	test	eax, eax
	jne	.label_1762
	mov	r14, qword ptr [rsp + 0x10]
	mov	rdi, r14
	mov	rsi, r15
	mov	rdx, r13
	call	match_ctx_add_sublast
	mov	edi, 1
	test	rax, rax
	je	.label_1767
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
	jne	.label_1764
	mov	edi, 0xc
.label_1744:
	mov	rbp, qword ptr [rsp + 0x10]
	mov	rdx, r12
	jmp	.label_1745
.label_1764:
	test	eax, eax
	mov	rdx, r12
	jne	.label_1753
	xor	edi, edi
	mov	rbp, qword ptr [rsp + 0x10]
	jmp	.label_1745
.label_1773:
	mov	dword ptr [rsp + 0xc], 0xc
	mov	edi, 1
	mov	r8, qword ptr [rsp + 0x18]
	mov	rdx, r12
	jmp	.label_1745
.label_1772:
	mov	edi, 0xa
	cmp	rdx, qword ptr [r8 + 0x58]
	jge	.label_1745
	mov	rbx, rdx
	lea	esi, [rdx + 1]
	mov	rbp, r8
	mov	rdi, rbp
	call	extend_buffers
	test	eax, eax
	jne	.label_1754
	mov	rax, qword ptr [rbp + 8]
	mov	qword ptr [rsp + 0x28], rax
	mov	r8, rbp
	mov	rbp, qword ptr [rsp + 0x10]
	mov	rdx, rbx
	jmp	.label_1760
.label_1762:
	mov	edi, 1
	mov	dword ptr [rsp + 0xc], eax
	mov	r8, qword ptr [rsp + 0x18]
	jmp	.label_1744
.label_1767:
	mov	dword ptr [rsp + 0xc], 0xc
	mov	r8, qword ptr [rsp + 0x18]
	mov	rbp, r14
	mov	rdx, r12
	jmp	.label_1745
.label_1753:
	mov	dword ptr [rsp + 0xc], eax
	mov	rbp, qword ptr [rsp + 0x10]
	mov	edi, 1
	jmp	.label_1745
.label_1754:
	mov	edi, 1
	mov	dword ptr [rsp + 0xc], eax
	mov	r8, rbp
	mov	rbp, qword ptr [rsp + 0x10]
	mov	rdx, rbx
	jmp	.label_1745
.label_1751:
	cmp	r13, qword ptr [rbp]
	jle	.label_1765
	cmp	rdx, qword ptr [r8 + 0x30]
	jge	.label_1772
.label_1760:
	mov	rcx, qword ptr [rsp + 0x28]
	movzx	eax, byte ptr [rcx + rdx]
	inc	rdx
	mov	edi, 0xa
	cmp	al, byte ptr [rcx + r13 - 1]
	jne	.label_1745
.label_1765:
	mov	rax, qword ptr [r8 + 0xb8]
	mov	rsi, qword ptr [rax + r13*8]
	mov	edi, 0xc
	test	rsi, rsi
	je	.label_1745
	mov	r12, rdx
	add	rsi, 8
	mov	ecx, 9
	mov	rdi, qword ptr [rsp + 0x38]
	mov	rdx, qword ptr [rsp + 0x50]
	call	find_subexp_node
	mov	r15, rax
	cmp	r15, -1
	je	.label_1777
	mov	rbp, qword ptr [rsp + 0x10]
	cmp	qword ptr [rbp + 0x10], 0
	jne	.label_1759
	mov	rsi, r13
	sub	rsi, qword ptr [rbp]
	inc	rsi
	mov	edi, 0x18
	call	rpl_calloc
	mov	qword ptr [rbp + 0x10], rax
	test	rax, rax
	je	.label_1773
.label_1759:
	mov	rsi, qword ptr [rbp + 0x10]
	mov	rcx, qword ptr [rbp]
	mov	rdx, qword ptr [rbp + 8]
	mov	dword ptr [rsp], 9
	mov	rdi, qword ptr [rsp + 0x18]
	mov	r8, r15
	mov	r9, r13
	call	check_arrival
	cmp	eax, 1
	jne	.label_1749
.label_1777:
	mov	r8, qword ptr [rsp + 0x18]
	mov	rbp, qword ptr [rsp + 0x10]
	mov	rdx, r12
	mov	edi, 0xc
.label_1745:
	mov	eax, edi
	and	al, 0xf
	je	.label_1761
	cmp	al, 0xc
	jne	.label_1763
.label_1761:
	cmp	r13, qword ptr [rsp + 0x20]
	lea	r13, [r13 + 1]
	jl	.label_1751
	jmp	.label_1746
.label_1763:
	cmp	al, 0xa
	je	.label_1746
.label_1743:
	cmp	edi, 6
	je	.label_1746
	test	edi, edi
	jne	.label_1747
	nop	dword ptr [rax]
.label_1746:
	mov	rax, qword ptr [rsp + 0x40]
	mov	rcx, rax
	inc	rcx
	mov	rax, rcx
	mov	qword ptr [rsp + 0x40], rax
	cmp	rcx, qword ptr [r8 + 0xe8]
	mov	eax, dword ptr [rsp + 0xc]
	mov	dword ptr [rsp + 0xc], 0
	jl	.label_1771
.label_1747:
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
	#Procedure 0x41249f
	.globl sub_41249f
	.type sub_41249f, @function
sub_41249f:

	nop	
	.section	.text
	.align	32
	#Procedure 0x4124a0

	.globl eval2
	.type eval2, @function
eval2:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	push	rax
	movzx	r14d, dil
	mov	edi, r14d
	call	eval3
	jmp	.label_1794
	.section	.text
	.align	32
	#Procedure 0x4124b9
	.globl sub_4124b9
	.type sub_4124b9, @function
sub_4124b9:

	nop	dword ptr [rax]
.label_1790:
	mov	rdi, r15
	call	freev
	mov	rdi, r13
	call	freev
	mov	rdi, rbx
	call	int_value
.label_1794:
	mov	r15, rax
	mov	edi, OFFSET FLAT:label_1786
	call	nextarg
	test	al, al
	je	.label_1787
	xor	ebp, ebp
	jmp	.label_1781
	.section	.text
	.align	32
	#Procedure 0x4124ed
	.globl sub_4124ed
	.type sub_4124ed, @function
sub_4124ed:

	nop	dword ptr [rax]
.label_1787:
	mov	edi, OFFSET FLAT:label_1793
	call	nextarg
	mov	bpl, 1
	test	al, al
	jne	.label_1781
	mov	edi, OFFSET FLAT:label_1779
	call	nextarg
	mov	bpl, 2
	test	al, al
	jne	.label_1781
	mov	edi, OFFSET FLAT:label_1784
	call	nextarg
	test	al, al
	jne	.label_1781
	mov	edi, OFFSET FLAT:label_1792
	call	nextarg
	mov	bpl, 3
	test	al, al
	jne	.label_1781
	mov	edi, OFFSET FLAT:label_1789
	call	nextarg
	mov	bpl, 4
	test	al, al
	jne	.label_1781
	mov	edi, OFFSET FLAT:label_1780
	call	nextarg
	mov	bpl, 5
	test	al, al
	je	.label_1782
	nop	word ptr [rax + rax]
.label_1781:
	mov	edi, r14d
	call	eval3
	mov	r13, rax
	test	r14b, r14b
	mov	ebx, 0
	je	.label_1790
	mov	rdi, r15
	call	tostring
	mov	rdi, r13
	call	tostring
	mov	rbx, qword ptr [r15 + 8]
	mov	rdi, rbx
	call	looks_like_integer
	test	al, al
	je	.label_1785
	mov	r12, qword ptr [r13 + 8]
	mov	rdi, r12
	call	looks_like_integer
	test	al, al
	je	.label_1785
	mov	rdi, rbx
	mov	rsi, r12
	call	strintcmp
	jmp	.label_1791
	.section	.text
	.align	32
	#Procedure 0x4125b6
	.globl sub_4125b6
	.type sub_4125b6, @function
sub_4125b6:

	nop	word ptr cs:[rax + rax]
.label_1785:
	call	__errno_location
	mov	dword ptr [rax], 0
	mov	rdi, qword ptr [r15 + 8]
	mov	rsi, qword ptr [r13 + 8]
	call	strcoll
.label_1791:
	mov	ebx, eax
	and	bpl, 7
	movzx	eax, bpl
	cmp	al, 5
	ja	.label_1783
	jmp	qword ptr [word ptr [+ (rax * 8) + label_1788]]
.label_2009:
	shr	ebx, 0x1f
	jmp	.label_1790
	.section	.text
	.align	32
	#Procedure 0x4125f5

	.globl sub_4125f5
	.type sub_4125f5, @function
sub_4125f5:
	xor	eax, eax
	test	ebx, ebx
	setle	al
	mov	rbx, rax
	jmp	.label_1790
	.section	.text
	.align	32
	#Procedure 0x412604

	.globl sub_412604
	.type sub_412604, @function
sub_412604:
	xor	eax, eax
	test	ebx, ebx
	sete	al
	mov	rbx, rax
	jmp	.label_1790
	.section	.text
	.align	32
	#Procedure 0x412613

	.globl sub_412613
	.type sub_412613, @function
sub_412613:
	xor	eax, eax
	test	ebx, ebx
	setne	al
	mov	rbx, rax
	jmp	.label_1790
	.section	.text
	.align	32
	#Procedure 0x412622

	.globl sub_412622
	.type sub_412622, @function
sub_412622:
	shr	ebx, 0x1f
	xor	rbx, 1
	jmp	.label_1790
	.section	.text
	.align	32
	#Procedure 0x41262e

	.globl sub_41262e
	.type sub_41262e, @function
sub_41262e:
	xor	eax, eax
	test	ebx, ebx
	setg	al
	mov	rbx, rax
	jmp	.label_1790
.label_1782:
	mov	rax, r15
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_1783:
	call	abort
	.section	.text
	.align	32
	#Procedure 0x412654
	.globl sub_412654
	.type sub_412654, @function
sub_412654:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x412660

	.globl bitset_mask
	.type bitset_mask, @function
bitset_mask:
	xor	eax, eax
	nop	word ptr cs:[rax + rax]
.label_1795:
	mov	rcx, qword ptr [rsi + rax*8]
	and	qword ptr [rdi + rax*8], rcx
	inc	rax
	cmp	rax, 4
	jne	.label_1795
	ret	
	.section	.text
	.align	32
	#Procedure 0x412682
	.globl sub_412682
	.type sub_412682, @function
sub_412682:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x412690

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
	jle	.label_1799
	mov	rax, qword ptr [r15 + 0x98]
	mov	qword ptr [rsp + 8], rax
	xor	r13d, r13d
	nop	word ptr cs:[rax + rax]
.label_1804:
	mov	rax, qword ptr [r12 + 0x18]
	mov	r14, qword ptr [rax + r13*8]
	mov	rax, qword ptr [rsp + 8]
	mov	rax, qword ptr [rax]
	mov	rcx, r14
	shl	rcx, 4
	mov	ebx, dword ptr [rax + rcx + 8]
	test	ebx, 0x100000
	je	.label_1798
	mov	ebp, ebx
	shr	ebp, 8
	test	bp, 0x3ff
	je	.label_1796
	mov	rsi, qword ptr [r15 + 0x48]
	mov	edx, dword ptr [r15 + 0xa0]
	mov	rdi, r15
	call	re_string_context_at
	mov	ecx, eax
	and	ecx, 1
	test	bpl, 4
	je	.label_1800
	test	ecx, ecx
	je	.label_1798
.label_1800:
	test	bh, 8
	je	.label_1803
	test	ecx, ecx
	jne	.label_1798
.label_1803:
	test	bh, 0x20
	je	.label_1805
	mov	ecx, eax
	and	ecx, 2
	je	.label_1798
.label_1805:
	test	bpl, bpl
	jns	.label_1796
	and	eax, 8
	je	.label_1798
	nop	word ptr cs:[rax + rax]
.label_1796:
	mov	rcx, qword ptr [r15 + 0x48]
	mov	rdi, qword ptr [rsp + 8]
	mov	rsi, r14
	mov	rdx, r15
	call	check_node_accept_bytes
	test	eax, eax
	je	.label_1798
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
	jne	.label_1799
	mov	rcx, qword ptr [rsp + 8]
	mov	rax, qword ptr [rcx + 0x18]
	mov	rax, qword ptr [rax + r14*8]
	lea	rdx, [rax + rax*2]
	shl	rdx, 3
	add	rdx, qword ptr [rcx + 0x30]
	mov	rax, qword ptr [r15 + 0xb8]
	mov	rbx, qword ptr [rax + r12*8]
	test	rbx, rbx
	je	.label_1801
	mov	rsi, qword ptr [rbx + 0x50]
	lea	rdi, [rsp + 0x10]
	call	re_node_set_init_union
	mov	dword ptr [rsp + 4], eax
	test	eax, eax
	je	.label_1802
	jmp	.label_1799
.label_1801:
	mov	rax, qword ptr [rdx + 0x10]
	mov	qword ptr [rsp + 0x20], rax
	movups	xmm0, xmmword ptr [rdx]
	movaps	xmmword ptr [rsp + 0x10], xmm0
.label_1802:
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
	je	.label_1797
	mov	rdi, qword ptr [rsp + 0x20]
	call	free
.label_1797:
	mov	rax, qword ptr [r15 + 0xb8]
	cmp	qword ptr [rax + r12*8], 0
	mov	r12, rbp
	jne	.label_1798
	mov	eax, dword ptr [rsp + 4]
	test	eax, eax
	jne	.label_1799
	nop	word ptr cs:[rax + rax]
.label_1798:
	inc	r13
	xor	eax, eax
	cmp	r13, qword ptr [r12 + 0x10]
	jl	.label_1804
.label_1799:
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
	#Procedure 0x41288f
	.globl sub_41288f
	.type sub_41288f, @function
sub_41288f:

	nop	
	.section	.text
	.align	32
	#Procedure 0x412890

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
	je	.label_1812
	lea	r13, [rsp]
	xor	r14d, r14d
.label_1807:
	mov	qword ptr [rax], r12
	mov	rax, qword ptr [r13]
	or	dword ptr [rax + 0x30], 0x40000
	mov	r12, qword ptr [r13]
	mov	rbp, qword ptr [rbx + 8]
	test	rbp, rbp
	je	.label_1810
	lea	r13, [r12 + 8]
	jmp	.label_1808
	.section	.text
	.align	32
	#Procedure 0x4128ed
	.globl sub_4128ed
	.type sub_4128ed, @function
sub_4128ed:

	nop	dword ptr [rax]
.label_1811:
	lea	r13, [r12 + 0x10]
.label_1808:
	lea	rcx, [rbp + 0x28]
	xor	esi, esi
	xor	edx, edx
	mov	rdi, r15
	call	create_token_tree
	mov	qword ptr [r13], rax
	test	rax, rax
	mov	rbx, rbp
	jne	.label_1807
	jmp	.label_1812
.label_1810:
	xor	eax, eax
	nop	word ptr cs:[rax + rax]
.label_1813:
	mov	rcx, rax
	mov	rax, rbx
	mov	rbp, qword ptr [rax + 0x10]
	cmp	rbp, rcx
	je	.label_1809
	test	rbp, rbp
	jne	.label_1811
.label_1809:
	mov	rbx, qword ptr [rax]
	mov	r12, qword ptr [r12]
	test	rbx, rbx
	jne	.label_1813
	jmp	.label_1806
	.section	.text
	.align	32
	#Procedure 0x412949
	.globl sub_412949
	.type sub_412949, @function
sub_412949:

	nop	word ptr cs:[rax + rax]
.label_1806:
	mov	r14, qword ptr [rsp]
.label_1812:
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
	#Procedure 0x41296d
	.globl sub_41296d
	.type sub_41296d, @function
sub_41296d:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x412970

	.globl set_program_name
	.type set_program_name, @function
set_program_name:
	push	r14
	push	rbx
	push	rax
	mov	rbx, rdi
	test	rbx, rbx
	je	.label_1817
	mov	esi, 0x2f
	mov	rdi, rbx
	call	strrchr
	test	rax, rax
	lea	r14, [rax + 1]
	cmove	r14, rbx
	mov	rax, r14
	sub	rax, rbx
	cmp	rax, 7
	jl	.label_1816
	lea	rdi, [r14 - 7]
	mov	esi, OFFSET FLAT:label_1814
	mov	edx, 7
	call	strncmp
	test	eax, eax
	jne	.label_1816
	mov	esi, OFFSET FLAT:label_1819
	mov	edx, 3
	mov	rdi, r14
	call	strncmp
	test	eax, eax
	jne	.label_1815
	add	r14, 3
	mov	qword ptr [word ptr [rip + __progname]],  r14
.label_1815:
	mov	rbx, r14
.label_1816:
	mov	qword ptr [word ptr [rip + program_name]],  rbx
	mov	qword ptr [word ptr [rip + __progname_full]],  rbx
	add	rsp, 8
	pop	rbx
	pop	r14
	ret	
.label_1817:
	mov	rcx,  qword ptr [word ptr [rip + stderr]]
	mov	edi, OFFSET FLAT:label_1818
	mov	esi, 0x37
	mov	edx, 1
	call	fwrite
	call	abort
	.section	.text
	.align	32
	#Procedure 0x412a11
	.globl sub_412a11
	.type sub_412a11, @function
sub_412a11:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x412a20
	.globl emit_bug_reporting_address
	.type emit_bug_reporting_address, @function
emit_bug_reporting_address:

	push	rax
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_1820
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:label_1821
	xor	eax, eax
	mov	rsi, rcx
	call	__printf_chk
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_1823
	mov	edx, 5
	call	dcgettext
	mov	rsi, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:label_288
	mov	ecx, OFFSET FLAT:label_289
	xor	eax, eax
	call	__printf_chk
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_1822
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	pop	rax
	jmp	fputs_unlocked
	.section	.text
	.align	32
	#Procedure 0x412a94
	.globl sub_412a94
	.type sub_412a94, @function
sub_412a94:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x412aa0

	.globl re_string_translate_buffer
	.type re_string_translate_buffer, @function
re_string_translate_buffer:
	mov	rax, qword ptr [rdi + 0x30]
	mov	r8, qword ptr [rdi + 0x40]
	mov	rdx, qword ptr [rdi + 0x58]
	cmp	r8, rdx
	cmovg	r8, rdx
	cmp	rax, r8
	jge	.label_1824
	nop	dword ptr [rax + rax]
.label_1825:
	mov	rdx, qword ptr [rdi]
	mov	rsi, qword ptr [rdi + 8]
	add	rdx, qword ptr [rdi + 0x28]
	movzx	edx, byte ptr [rax + rdx]
	mov	rcx, qword ptr [rdi + 0x78]
	movzx	ecx, byte ptr [rcx + rdx]
	mov	byte ptr [rsi + rax], cl
	inc	rax
	cmp	rax, r8
	jl	.label_1825
	mov	rax, r8
.label_1824:
	mov	qword ptr [rdi + 0x30], rax
	mov	qword ptr [rdi + 0x38], rax
	ret	
	.section	.text
	.align	32
	#Procedure 0x412aee
	.globl sub_412aee
	.type sub_412aee, @function
sub_412aee:

	nop	
	.section	.text
	.align	32
	#Procedure 0x412af0

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
	je	.label_1831
	mov	rax, qword ptr [rbx + 8]
	test	rax, rax
	je	.label_1828
	cmp	rsi, rax
	jne	.label_1830
	lea	rax, [rsi + rsi]
	mov	qword ptr [rbx], rax
	mov	rdi, qword ptr [rbx + 0x10]
	shl	rsi, 4
	call	realloc
	test	rax, rax
	je	.label_1829
	mov	qword ptr [rbx + 0x10], rax
.label_1830:
	mov	rax, qword ptr [rbx + 8]
	mov	rcx, qword ptr [rbx + 0x10]
	cmp	qword ptr [rcx], r14
	jle	.label_1832
	test	rax, rax
	jle	.label_1826
	mov	rcx, qword ptr [rbx + 0x10]
	nop	word ptr [rax + rax]
.label_1835:
	mov	rdx, qword ptr [rcx + rax*8 - 8]
	mov	qword ptr [rcx + rax*8], rdx
	cmp	rax, 1
	lea	rax, [rax - 1]
	jg	.label_1835
	jmp	.label_1826
.label_1831:
	mov	rdi, rbx
	mov	rsi, r14
	call	re_node_set_init_1
	test	eax, eax
	sete	al
	jmp	.label_1827
.label_1828:
	mov	rax, qword ptr [rbx + 0x10]
	mov	qword ptr [rax], r14
	jmp	.label_1834
.label_1832:
	mov	rsi, qword ptr [rbx + 0x10]
	mov	rcx, qword ptr [rsi + rax*8 - 8]
	cmp	rcx, r14
	jle	.label_1826
	mov	rdx, qword ptr [rbx + 0x10]
	nop	word ptr cs:[rax + rax]
.label_1833:
	mov	qword ptr [rsi + rax*8], rcx
	mov	rcx, qword ptr [rdx + rax*8 - 0x10]
	dec	rax
	cmp	rcx, r14
	mov	rsi, rdx
	jg	.label_1833
.label_1826:
	mov	rcx, qword ptr [rbx + 0x10]
	mov	qword ptr [rcx + rax*8], r14
.label_1834:
	inc	qword ptr [rbx + 8]
	mov	al, 1
.label_1827:
	add	rsp, 8
	pop	rbx
	pop	r14
	ret	
.label_1829:
	xor	eax, eax
	jmp	.label_1827
	.section	.text
	.align	32
	#Procedure 0x412bce
	.globl sub_412bce
	.type sub_412bce, @function
sub_412bce:

	nop	
	.section	.text
	.align	32
	#Procedure 0x412bd0
	.globl mb_width_aux
	.type mb_width_aux, @function
mb_width_aux:

	push	rbx
	mov	ebx, edi
	call	wcwidth
	test	eax, eax
	jns	.label_1836
	mov	edi, ebx
	call	iswcntrl
	mov	ecx, eax
	xor	eax, eax
	test	ecx, ecx
	sete	al
.label_1836:
	pop	rbx
	ret	
	.section	.text
	.align	32
	#Procedure 0x412bee
	.globl sub_412bee
	.type sub_412bee, @function
sub_412bee:

	nop	
.label_1842:
	mov	rax, qword ptr [rbx + 8]
	mov	rdi, qword ptr [rbx + 0x80]
	mov	bpl, byte ptr [rax + rsi]
	movzx	esi, bpl
	call	bitset_contain
	mov	edx, 1
	test	al, al
	jne	.label_1838
	xor	edx, edx
	cmp	bpl, 0xa
	je	.label_1837
	jmp	.label_1838
.label_1840:
	cmp	byte ptr [rbx + 0x8e], 0
	jne	.label_1845
.label_1844:
	xor	edx, edx
	cmp	ebp, 0xa
	jne	.label_1838
.label_1837:
	xor	edx, edx
	cmp	byte ptr [rbx + 0x8d], 0
	setne	dl
	add	edx, edx
.label_1838:
	mov	eax, edx
	add	rsp, 8
	pop	rbx
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x412c42

	.globl re_string_context_at
	.type re_string_context_at, @function
re_string_context_at:
	push	rbp
	push	rbx
	push	rax
	mov	rbx, rdi
	test	rsi, rsi
	js	.label_1839
	cmp	qword ptr [rbx + 0x58], rsi
	je	.label_1841
	cmp	dword ptr [rbx + 0x90], 2
	jl	.label_1842
	mov	rax, qword ptr [rbx + 0x10]
	inc	rsi
	nop	dword ptr [rax]
.label_1843:
	mov	ebp, dword ptr [rax + rsi*4 - 4]
	cmp	ebp, -1
	jne	.label_1840
	dec	rsi
	test	rsi, rsi
	jg	.label_1843
	mov	edx, dword ptr [rbx + 0x70]
	jmp	.label_1838
.label_1845:
	mov	edi, ebp
	call	iswalnum
	cmp	ebp, 0x5f
	mov	edx, 1
	je	.label_1838
	test	eax, eax
	je	.label_1844
	jmp	.label_1838
	.section	.text
	.align	32
	#Procedure 0x412c9f
	.globl sub_412c9f
	.type sub_412c9f, @function
sub_412c9f:

	nop	dword ptr [rax]
.label_1841:
	and	edx, 2
	xor	edx, 0xa
	jmp	.label_1838
.label_1839:
	mov	edx, dword ptr [rbx + 0x70]
	jmp	.label_1838
	.section	.text
	.align	32
	#Procedure 0x412d15
	.globl sub_412d15
	.type sub_412d15, @function
sub_412d15:

	nop	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x412d22
	.globl sub_412d22
	.type sub_412d22, @function
sub_412d22:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x412d46
	.globl sub_412d46
	.type sub_412d46, @function
sub_412d46:

	nop	word ptr cs:[rax + rax]
