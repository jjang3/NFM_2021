	.section	.text
	.align	32
	#Procedure 0x401ce9
	.globl sub_401ce9
	.type sub_401ce9, @function
sub_401ce9:

	hlt	
	.section	.text
	.align	32
	#Procedure 0x401cea
	.globl sub_401cea
	.type sub_401cea, @function
sub_401cea:

	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x401d22
	.globl sub_401d22
	.type sub_401d22, @function
sub_401d22:

	nop	dword ptr [rax]
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x401d6a
	.globl sub_401d6a
	.type sub_401d6a, @function
sub_401d6a:

	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x401d8c
	.globl sub_401d8c
	.type sub_401d8c, @function
sub_401d8c:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x401d9d
	.globl sub_401d9d
	.type sub_401d9d, @function
sub_401d9d:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x401db6
	.globl sub_401db6
	.type sub_401db6, @function
sub_401db6:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x401dc0

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
	mov	r12, rsi
	mov	rbp, rdi
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_9
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stderr]
	mov	rdi, rax
	call	fputs_unlocked
	mov	rbx, qword ptr [rbp]
	test	rbx, rbx
	je	.label_16
	xor	r13d, r13d
	xor	r15d, r15d
	mov	qword ptr [rsp], rbp
	nop	dword ptr [rax + rax]
.label_15:
	test	r15, r15
	je	.label_14
	mov	rdi, r13
	mov	rsi, r12
	mov	rdx, r14
	call	memcmp
	test	eax, eax
	je	.label_10
.label_14:
	mov	r13, qword ptr [rip + stderr]
	mov	rdi, rbx
	call	quote
	mov	rcx, rax
	mov	esi, 1
	mov	edx, OFFSET FLAT:label_11
	xor	eax, eax
	mov	rdi, r13
	call	__fprintf_chk
	mov	r13, r12
	jmp	.label_12
	.section	.text
	.align	32
	#Procedure 0x401e52
	.globl sub_401e52
	.type sub_401e52, @function
sub_401e52:

	nop	word ptr cs:[rax + rax]
.label_17:
	mov	esi, 0xa
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	jmp	__overflow
	.section	.text
	.align	32
	#Procedure 0x401e78
	.globl sub_401e78
	.type sub_401e78, @function
sub_401e78:

	nop	word ptr cs:[rax + rax]
.label_10:
	mov	rbp, qword ptr [rip + stderr]
	mov	rdi, rbx
	call	quote
	mov	rcx, rax
	mov	esi, 1
	mov	edx, OFFSET FLAT:label_13
	xor	eax, eax
	mov	rdi, rbp
	mov	rbp, qword ptr [rsp]
	call	__fprintf_chk
.label_12:
	mov	rbx, qword ptr [rbp + r15*8 + 8]
	inc	r15
	add	r12, r14
	test	rbx, rbx
	jne	.label_15
.label_16:
	mov	rdi, qword ptr [rip + stderr]
	mov	rax, qword ptr [rdi + 0x28]
	cmp	rax, qword ptr [rdi + 0x30]
	jae	.label_17
	lea	rcx, [rax + 1]
	mov	qword ptr [rdi + 0x28], rcx
	mov	byte ptr [rax], 0xa
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_18:
	call	xalloc_die
	.section	.text
	.align	32
	#Procedure 0x401ef5
	.globl sub_401ef5
	.type sub_401ef5, @function
sub_401ef5:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x401eff
	.globl xcalloc
	.type xcalloc, @function
xcalloc:

	push	rax
	movabs	rax, 0x7fffffffffffffff
	xor	edx, edx
	div	rsi
	cmp	rax, rdi
	jb	.label_18
	call	rpl_calloc
	test	rax, rax
	je	.label_18
	pop	rcx
	ret	
	.section	.text
	.align	32
	#Procedure 0x401f20

	.globl transit_state_bkref
	.type transit_state_bkref, @function
transit_state_bkref:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0xa8
	cmp	qword ptr [rsi + 8], 0
	jle	.label_79
	mov	rcx, qword ptr [rdi + 0x98]
	mov	r15, qword ptr [rdi + 0x48]
	xor	edx, edx
	mov	qword ptr [rsp + 0x20], rdi
	mov	qword ptr [rsp + 8], r15
	mov	qword ptr [rsp + 0x78], rsi
	mov	qword ptr [rsp + 0x50], rcx
	nop	dword ptr [rax]
.label_86:
	mov	rax, qword ptr [rsi + 0x10]
	mov	qword ptr [rsp + 0x80], rdx
	mov	r14, qword ptr [rax + rdx*8]
	mov	rax, qword ptr [rcx]
	mov	rcx, r14
	mov	qword ptr [rsp + 0x48], rcx
	shl	r14, 4
	mov	ebx, dword ptr [rax + r14 + 8]
	cmp	bl, 4
	jne	.label_47
	mov	ebp, ebx
	shr	ebp, 8
	test	bp, 0x3ff
	je	.label_60
	mov	edx, dword ptr [rdi + 0xa0]
	mov	rsi, r15
	call	re_string_context_at
	mov	rdi, qword ptr [rsp + 0x20]
	mov	ecx, eax
	and	ecx, 1
	test	bpl, 4
	je	.label_71
	test	ecx, ecx
	je	.label_47
.label_71:
	test	bh, 8
	je	.label_78
	test	ecx, ecx
	jne	.label_47
.label_78:
	test	bh, 0x20
	je	.label_80
	mov	ecx, eax
	and	ecx, 2
	je	.label_47
.label_80:
	test	bpl, bpl
	jns	.label_60
	and	eax, 8
	je	.label_47
	nop	word ptr [rax + rax]
.label_60:
	mov	rax, qword ptr [rdi + 0xc8]
	mov	r8, qword ptr [rdi + 8]
	mov	rcx, qword ptr [rdi + 0x98]
	mov	qword ptr [rsp + 0x60], rcx
	mov	qword ptr [rsp + 0x40], rax
	test	rax, rax
	mov	eax, 0
	jle	.label_90
	mov	rcx, qword ptr [rdi + 0xd8]
	xor	eax, eax
	mov	rdx, qword ptr [rsp + 0x40]
	nop	word ptr cs:[rax + rax]
.label_37:
	lea	rsi, [rdx + rax]
	mov	rbp, rsi
	shr	rbp, 0x3f
	add	rbp, rsi
	sar	rbp, 1
	lea	rsi, [rbp + rbp*4]
	cmp	qword ptr [rcx + rsi*8 + 8], r15
	cmovge	rdx, rbp
	lea	rsi, [rbp + 1]
	cmovl	rax, rsi
	cmp	rax, rdx
	jl	.label_37
.label_90:
	cmp	rax, qword ptr [rsp + 0x40]
	jge	.label_53
	cmp	rax, -1
	je	.label_53
	mov	rcx, qword ptr [rdi + 0xd8]
	lea	rax, [rax + rax*4]
	cmp	qword ptr [rcx + rax*8 + 8], r15
	jne	.label_53
	lea	rax, [rcx + rax*8]
	nop	
.label_61:
	mov	rcx, qword ptr [rsp + 0x48]
	cmp	qword ptr [rax], rcx
	je	.label_56
	cmp	byte ptr [rax + 0x20], 0
	lea	rax, [rax + 0x28]
	jne	.label_61
.label_53:
	cmp	qword ptr [rdi + 0xe8], 0
	jle	.label_56
	mov	rax, qword ptr [rsp + 0x60]
	mov	rax, qword ptr [rax]
	mov	r14, qword ptr [rax + r14]
	xor	ecx, ecx
	mov	qword ptr [rsp + 0x30], rcx
	xor	edx, edx
	mov	qword ptr [rsp + 0x38], r14
	jmp	.label_70
	.section	.text
	.align	32
	#Procedure 0x4020c2
	.globl sub_4020c2
	.type sub_4020c2, @function
sub_4020c2:

	nop	word ptr cs:[rax + rax]
.label_55:
	mov	rax, qword ptr [rsp + 0x60]
	mov	rax, qword ptr [rax]
.label_70:
	mov	rcx, qword ptr [rdi + 0xf8]
	mov	r9, qword ptr [rcx + rdx*8]
	mov	rcx, qword ptr [r9 + 8]
	shl	rcx, 4
	cmp	qword ptr [rax + rcx], r14
	mov	qword ptr [rsp + 0x88], rdx
	jne	.label_26
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp + 0x28], rax
	mov	rax, qword ptr [r9 + 0x20]
	test	rax, rax
	mov	qword ptr [rsp + 0x10], r9
	jle	.label_89
	mov	rcx, qword ptr [rsp + 8]
	xor	r14d, r14d
	jmp	.label_25
.label_89:
	xor	r14d, r14d
	mov	rcx, qword ptr [rsp + 8]
	jmp	.label_30
.label_31:
	mov	rdx, qword ptr [rdi + 0x58]
	mov	r10d, 7
	cmp	r13, rdx
	jg	.label_36
	mov	rsi, qword ptr [rdi + 0x40]
	mov	r12, qword ptr [rdi + 0xc0]
	cmp	rsi, r13
	setle	r9b
	cmp	rsi, rdx
	setl	sil
	cmp	rax, rdx
	jl	.label_44
	and	r9b, sil
	je	.label_54
.label_44:
	lea	esi, [r13 + 1]
	mov	qword ptr [rsp + 0x70], r8
	mov	qword ptr [rsp + 0x58], rcx
	call	extend_buffers
	mov	rcx, qword ptr [rsp + 0x58]
	mov	r9, qword ptr [rsp + 0x10]
	mov	r8, qword ptr [rsp + 0x70]
	mov	rdi, qword ptr [rsp + 0x20]
	test	eax, eax
	je	.label_54
	mov	r10d, 1
	mov	qword ptr [rsp + 0x30], rax
	jmp	.label_36
.label_65:
	mov	r10d, 1
	mov	qword ptr [rsp + 0x28], rbx
	mov	rcx, r13
	mov	qword ptr [rsp + 0x30], rax
	jmp	.label_66
.label_54:
	mov	rdx, r13
	sub	rdx, r12
	jle	.label_75
	mov	rax, qword ptr [rdi + 0xb8]
	lea	rdi, [rax + r12*8 + 8]
	shl	rdx, 3
	xor	esi, esi
	mov	qword ptr [rsp + 0x58], rcx
	call	memset
	mov	rcx, qword ptr [rsp + 0x58]
	mov	rdi, qword ptr [rsp + 0x20]
	mov	qword ptr [rdi + 0xc0], r13
.label_75:
	mov	r12, rbp
	mov	r8, qword ptr [rdi + 8]
	jmp	.label_57
	.section	.text
	.align	32
	#Procedure 0x4021f4
	.globl sub_4021f4
	.type sub_4021f4, @function
sub_4021f4:

	nop	word ptr cs:[rax + rax]
.label_25:
	mov	rax, qword ptr [r9 + 0x28]
	mov	rbp, qword ptr [rax + r14*8]
	mov	rbx, qword ptr [rbp + 8]
	mov	r13, rbx
	mov	rax, qword ptr [rsp + 0x28]
	sub	r13, rax
	add	r13, rcx
	mov	r15, rbx
	sub	r15, rax
	jle	.label_19
	mov	rax, qword ptr [rdi + 0x30]
	cmp	r13, rax
	mov	qword ptr [rsp + 0x68], rbx
	jg	.label_31
	mov	r12, rbp
.label_57:
	lea	rdi, [r8 + rcx]
	mov	rax, qword ptr [rsp + 0x28]
	lea	rsi, [r8 + rax]
	mov	rdx, r15
	mov	rbx, r8
	mov	r15, rcx
	call	memcmp
	mov	rcx, r15
	mov	r8, rbx
	mov	r10d, 7
	test	eax, eax
	mov	rdi, qword ptr [rsp + 0x20]
	mov	r9, qword ptr [rsp + 0x10]
	mov	rbp, r12
	mov	rbx, qword ptr [rsp + 0x68]
	jne	.label_36
.label_19:
	mov	rsi, r9
	mov	rdx, rbp
	mov	rcx, qword ptr [rsp + 0x48]
	mov	r8, qword ptr [rsp + 8]
	call	get_subexp_sub
	mov	rdi, qword ptr [rsp + 0x20]
	mov	r8, qword ptr [rdi + 8]
	mov	r10d, 9
	cmp	eax, 1
	je	.label_58
	test	eax, eax
	jne	.label_65
	xor	r10d, r10d
.label_58:
	mov	qword ptr [rsp + 0x28], rbx
	mov	rcx, r13
.label_66:
	mov	r9, qword ptr [rsp + 0x10]
.label_36:
	mov	eax, r10d
	and	al, 0xf
	je	.label_74
	cmp	al, 9
	jne	.label_77
.label_74:
	inc	r14
	mov	rax, qword ptr [r9 + 0x20]
	cmp	r14, rax
	jl	.label_25
	jmp	.label_30
.label_77:
	cmp	al, 7
	jne	.label_82
	mov	rax, qword ptr [r9 + 0x20]
	nop	
.label_30:
	cmp	r14, rax
	jge	.label_84
	mov	r15, qword ptr [rsp + 8]
	mov	r14, qword ptr [rsp + 0x38]
	jmp	.label_26
	.section	.text
	.align	32
	#Procedure 0x4022f4
	.globl sub_4022f4
	.type sub_4022f4, @function
sub_4022f4:

	nop	word ptr cs:[rax + rax]
.label_84:
	xor	ebx, ebx
	test	r14, r14
	setg	bl
	add	rbx, qword ptr [rsp + 0x28]
	mov	r15, qword ptr [rsp + 8]
	cmp	rbx, r15
	jle	.label_20
	mov	r14, qword ptr [rsp + 0x38]
	jmp	.label_26
.label_20:
	mov	r14, qword ptr [rsp + 0x38]
	jmp	.label_49
.label_24:
	cmp	r13, -1
	je	.label_34
	mov	rbp, r8
	mov	rsi, qword ptr [r9 + 0x10]
	test	rsi, rsi
	jne	.label_39
	lea	rsi, [rbx + 1]
	sub	rsi, qword ptr [r9]
	mov	edi, 0x18
	call	rpl_calloc
	mov	r9, qword ptr [rsp + 0x10]
	mov	rdi, qword ptr [rsp + 0x20]
	mov	rsi, rax
	mov	qword ptr [r9 + 0x10], rsi
	test	rsi, rsi
	je	.label_22
.label_39:
	mov	rcx, qword ptr [r9]
	mov	rdx, qword ptr [r9 + 8]
	mov	dword ptr [rsp], 9
	mov	r8, r13
	mov	r9, rbx
	call	check_arrival
	cmp	eax, 1
	jne	.label_29
	mov	rcx, r15
	mov	rdi, qword ptr [rsp + 0x20]
	mov	r15, qword ptr [rsp + 8]
	mov	r8, rbp
	mov	r9, qword ptr [rsp + 0x10]
	mov	r10d, 0xc
	jmp	.label_28
.label_29:
	test	eax, eax
	mov	r8, rbp
	jne	.label_72
	mov	rcx, qword ptr [rsp + 0x10]
	mov	r14, qword ptr [rcx + 0x20]
	cmp	r14, qword ptr [rcx + 0x18]
	je	.label_52
.label_68:
	mov	edi, 1
	mov	esi, 0x28
	call	rpl_calloc
	mov	r10d, 1
	test	rax, rax
	je	.label_23
	mov	rsi, qword ptr [rsp + 0x10]
	mov	rcx, qword ptr [rsi + 0x20]
	mov	rdx, qword ptr [rsi + 0x28]
	mov	qword ptr [rdx + rcx*8], rax
	mov	qword ptr [rax], r13
	mov	qword ptr [rax + 8], rbx
	inc	rcx
	mov	qword ptr [rsi + 0x20], rcx
	mov	rbp, qword ptr [rsp + 0x20]
	mov	rdi, rbp
	mov	rdx, rax
	mov	rcx, qword ptr [rsp + 0x48]
	mov	r8, qword ptr [rsp + 8]
	call	get_subexp_sub
	mov	rdi, rbp
	mov	r8, qword ptr [rdi + 8]
	cmp	eax, 1
	mov	r14, qword ptr [rsp + 0x38]
	jne	.label_42
	mov	r10d, 0xc
	jmp	.label_83
.label_42:
	test	eax, eax
	jne	.label_41
	xor	r10d, r10d
.label_83:
	mov	rcx, r15
.label_76:
	mov	r15, qword ptr [rsp + 8]
.label_21:
	mov	r9, qword ptr [rsp + 0x10]
	jmp	.label_28
.label_22:
	mov	eax, 0xc
	mov	qword ptr [rsp + 0x30], rax
	mov	r10d, 1
	mov	rcx, r15
	mov	r15, qword ptr [rsp + 8]
	mov	r8, rbp
	jmp	.label_28
.label_69:
	mov	r10d, 0xa
	cmp	rcx, qword ptr [rdi + 0x58]
	jge	.label_28
	mov	r14, r8
	mov	r12, rcx
	lea	r15, [rcx + 1]
	mov	esi, r15d
	mov	rbp, rdi
	call	extend_buffers
	test	eax, eax
	jne	.label_64
	mov	r8, qword ptr [rbp + 8]
	mov	rdi, rbp
	mov	r14, qword ptr [rsp + 0x38]
	mov	r9, qword ptr [rsp + 0x10]
	mov	rcx, r12
	jmp	.label_81
.label_72:
	mov	r10d, 1
	mov	rcx, r15
	mov	qword ptr [rsp + 0x30], rax
	mov	rdi, qword ptr [rsp + 0x20]
	jmp	.label_76
.label_52:
	lea	rax, [r14 + r14]
	mov	rdi, qword ptr [rcx + 0x28]
	lea	rsi, [rax*8 + 8]
	mov	r12, rcx
	call	realloc
	test	rax, rax
	je	.label_63
	lea	rcx, [r14 + r14 + 1]
	mov	qword ptr [r12 + 0x28], rax
	mov	qword ptr [r12 + 0x18], rcx
	jmp	.label_68
.label_23:
	mov	rcx, r15
	mov	eax, 0xc
	mov	qword ptr [rsp + 0x30], rax
	mov	rdi, qword ptr [rsp + 0x20]
	mov	r15, qword ptr [rsp + 8]
	mov	r8, rbp
	mov	r14, qword ptr [rsp + 0x38]
	jmp	.label_21
.label_41:
	mov	rcx, r15
	mov	qword ptr [rsp + 0x30], rax
	mov	r15, qword ptr [rsp + 8]
	mov	r9, qword ptr [rsp + 0x10]
	mov	r10d, 1
	jmp	.label_28
.label_64:
	mov	r10d, 1
	mov	qword ptr [rsp + 0x30], rax
	mov	rdi, rbp
	mov	r15, qword ptr [rsp + 8]
	mov	r8, r14
	mov	r14, qword ptr [rsp + 0x38]
	mov	r9, qword ptr [rsp + 0x10]
	mov	rcx, r12
	jmp	.label_28
.label_63:
	mov	eax, 0xc
	mov	qword ptr [rsp + 0x30], rax
	mov	r10d, 1
	mov	rcx, r15
	mov	rdi, qword ptr [rsp + 0x20]
	mov	r15, qword ptr [rsp + 8]
	mov	r8, rbp
	mov	r14, qword ptr [rsp + 0x38]
	mov	r9, r12
	jmp	.label_28
	.section	.text
	.align	32
	#Procedure 0x40259a
	.globl sub_40259a
	.type sub_40259a, @function
sub_40259a:

	nop	word ptr [rax + rax]
.label_49:
	cmp	rbx, qword ptr [r9]
	jle	.label_67
	cmp	rcx, qword ptr [rdi + 0x30]
	jge	.label_69
	lea	r15, [rcx + 1]
.label_81:
	mov	al, byte ptr [r8 + rcx]
	mov	r10d, 0xa
	cmp	al, byte ptr [r8 + rbx - 1]
	je	.label_73
	jmp	.label_34
	.section	.text
	.align	32
	#Procedure 0x4025c6
	.globl sub_4025c6
	.type sub_4025c6, @function
sub_4025c6:

	nop	word ptr cs:[rax + rax]
.label_67:
	mov	r15, rcx
.label_73:
	mov	rax, qword ptr [rdi + 0xb8]
	mov	rcx, qword ptr [rax + rbx*8]
	mov	r10d, 0xc
	test	rcx, rcx
	je	.label_34
	mov	rax, qword ptr [rcx + 0x10]
	test	rax, rax
	jle	.label_34
	mov	rcx, qword ptr [rcx + 0x18]
	mov	rdx, qword ptr [rsp + 0x60]
	mov	rdx, qword ptr [rdx]
	xor	esi, esi
.label_27:
	mov	r13, qword ptr [rcx + rsi*8]
	mov	rbp, r13
	shl	rbp, 4
	cmp	byte ptr [rdx + rbp + 8], 9
	jne	.label_40
	cmp	qword ptr [rdx + rbp], r14
	je	.label_24
.label_40:
	inc	rsi
	cmp	rsi, rax
	jl	.label_27
.label_34:
	mov	rcx, r15
	mov	r15, qword ptr [rsp + 8]
.label_28:
	mov	eax, r10d
	and	al, 0xf
	je	.label_35
	cmp	al, 0xc
	jne	.label_38
.label_35:
	cmp	rbx, r15
	lea	rbx, [rbx + 1]
	jl	.label_49
	jmp	.label_26
.label_82:
	mov	r15, qword ptr [rsp + 8]
	mov	r14, qword ptr [rsp + 0x38]
	jmp	.label_46
.label_38:
	cmp	al, 0xa
	je	.label_26
.label_46:
	cmp	r10d, 6
	je	.label_26
	test	r10d, r10d
	jne	.label_33
	nop	word ptr cs:[rax + rax]
.label_26:
	mov	rdx, qword ptr [rsp + 0x88]
	inc	rdx
	cmp	rdx, qword ptr [rdi + 0xe8]
	jl	.label_55
.label_56:
	mov	dword ptr [rsp + 0x1c], 0
	mov	rbx, qword ptr [rsp + 0x40]
.label_85:
	cmp	rbx, qword ptr [rdi + 0xc8]
	jge	.label_47
	lea	rax, [rbx + rbx*4]
	lea	rbp, [rax*8 + 0x18]
	nop	
.label_62:
	mov	rax, qword ptr [rdi + 0xd8]
	mov	rcx, qword ptr [rsp + 0x48]
	cmp	qword ptr [rax + rbp - 0x18], rcx
	jne	.label_50
	cmp	qword ptr [rax + rbp - 0x10], r15
	jne	.label_50
	mov	rdx, qword ptr [rax + rbp - 8]
	mov	rsi, qword ptr [rax + rbp]
	mov	rcx, qword ptr [rsp + 0x50]
	mov	r14, qword ptr [rcx + 0x30]
	cmp	rsi, rdx
	mov	qword ptr [rsp + 0x40], rbx
	jne	.label_87
	mov	rax, qword ptr [rcx + 0x28]
	mov	rcx, qword ptr [rsp + 0x48]
	lea	rcx, [rcx + rcx*2]
	mov	rax, qword ptr [rax + rcx*8 + 0x10]
	jmp	.label_88
.label_87:
	mov	rax, qword ptr [rsp + 0x48]
	lea	rax, [rax*8]
	add	rax, qword ptr [rcx + 0x18]
.label_88:
	mov	rax, qword ptr [rax]
	lea	r15, [rax + rax*2]
	mov	r12, qword ptr [rsp + 8]
	mov	qword ptr [rsp + 0x10], rsi
	lea	r13, [rsi + r12]
	mov	qword ptr [rsp + 0x28], rdx
	sub	r13, rdx
	lea	rsi, [r13 - 1]
	mov	edx, dword ptr [rdi + 0xa0]
	call	re_string_context_at
	mov	ebx, eax
	mov	rax, qword ptr [rsp + 0x20]
	mov	rcx, qword ptr [rax + 0xb8]
	mov	rax, qword ptr [rcx + r13*8]
	mov	rcx, qword ptr [rcx + r12*8]
	test	rcx, rcx
	mov	edx, 0
	je	.label_43
	mov	rdx, qword ptr [rcx + 0x10]
.label_43:
	mov	qword ptr [rsp + 0x68], rdx
	lea	r12, [r14 + r15*8]
	test	rax, rax
	lea	rcx, [rsp + 0x90]
	je	.label_51
	mov	rsi, qword ptr [rax + 0x50]
	mov	r14, rcx
	mov	rdi, r14
	mov	rdx, r12
	call	re_node_set_init_union
	mov	dword ptr [rsp + 0x1c], eax
	test	eax, eax
	mov	r15, qword ptr [rsp + 8]
	jne	.label_59
	lea	rdi, [rsp + 0x1c]
	mov	rsi, qword ptr [rsp + 0x50]
	mov	rdx, r14
	mov	ecx, ebx
	call	re_acquire_state_context
	mov	rbx, qword ptr [rsp + 0x20]
	mov	rcx, qword ptr [rbx + 0xb8]
	mov	qword ptr [rcx + r13*8], rax
	mov	rdi, qword ptr [rsp + 0xa0]
	call	free
	mov	rdi, rbx
	mov	rcx, qword ptr [rdi + 0xb8]
	cmp	qword ptr [rcx + r13*8], 0
	jne	.label_48
	mov	eax, dword ptr [rsp + 0x1c]
	test	eax, eax
	je	.label_48
	jmp	.label_32
.label_51:
	lea	rdi, [rsp + 0x1c]
	mov	rsi, qword ptr [rsp + 0x50]
	mov	rdx, r12
	mov	ecx, ebx
	call	re_acquire_state_context
	mov	rdi, qword ptr [rsp + 0x20]
	mov	rcx, qword ptr [rdi + 0xb8]
	mov	qword ptr [rcx + r13*8], rax
	mov	rcx, qword ptr [rdi + 0xb8]
	cmp	qword ptr [rcx + r13*8], 0
	mov	r15, qword ptr [rsp + 8]
	jne	.label_48
	mov	eax, dword ptr [rsp + 0x1c]
	test	eax, eax
	mov	rbx, qword ptr [rsp + 0x40]
	mov	rdx, qword ptr [rsp + 0x28]
	mov	rsi, qword ptr [rsp + 0x10]
	je	.label_45
	jmp	.label_32
.label_48:
	mov	rbx, qword ptr [rsp + 0x40]
	mov	rdx, qword ptr [rsp + 0x28]
	mov	rsi, qword ptr [rsp + 0x10]
.label_45:
	cmp	rsi, rdx
	jne	.label_50
	mov	rax, qword ptr [rcx + r15*8]
	mov	rcx, qword ptr [rsp + 0x68]
	cmp	qword ptr [rax + 0x10], rcx
	jle	.label_50
	mov	rsi, r12
	mov	rdx, r15
	call	check_subexp_matching_top
	mov	rdi, qword ptr [rsp + 0x20]
	mov	dword ptr [rsp + 0x1c], eax
	test	eax, eax
	jne	.label_32
	mov	rsi, r12
	call	transit_state_bkref
	mov	rdi, qword ptr [rsp + 0x20]
	mov	dword ptr [rsp + 0x1c], eax
	test	eax, eax
	jne	.label_32
	nop	
.label_50:
	inc	rbx
	add	rbp, 0x28
	cmp	rbx, qword ptr [rdi + 0xc8]
	jl	.label_62
	nop	word ptr cs:[rax + rax]
.label_47:
	mov	rdx, qword ptr [rsp + 0x80]
	inc	rdx
	mov	rsi, qword ptr [rsp + 0x78]
	cmp	rdx, qword ptr [rsi + 8]
	mov	rcx, qword ptr [rsp + 0x50]
	jl	.label_86
	jmp	.label_79
.label_33:
	mov	rax, qword ptr [rsp + 0x30]
	mov	dword ptr [rsp + 0x1c], eax
	test	eax, eax
	mov	rbx, qword ptr [rsp + 0x40]
	je	.label_85
	jmp	.label_32
.label_79:
	mov	dword ptr [rsp + 0x1c], 0
	xor	eax, eax
.label_32:
	add	rsp, 0xa8
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_59:
	mov	rdi, qword ptr [rsp + 0xa0]
	mov	rbx, rax
	call	free
	mov	rax, rbx
	jmp	.label_32
	.section	.text
	.align	32
	#Procedure 0x40291a
	.globl sub_40291a
	.type sub_40291a, @function
sub_40291a:

	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x402920
	.globl set_custom_quoting
	.type set_custom_quoting, @function
set_custom_quoting:

	test	rdi, rdi
	mov	eax, OFFSET FLAT:default_quoting_options
	cmovne	rax, rdi
	mov	dword ptr [rax], 0xa
	test	rsi, rsi
	je	.label_91
	test	rdx, rdx
	je	.label_91
	mov	qword ptr [rax + 0x28], rsi
	mov	qword ptr [rax + 0x30], rdx
	ret	
.label_91:
	push	rax
	call	abort
	.section	.text
	.align	32
	#Procedure 0x40294b
	.globl sub_40294b
	.type sub_40294b, @function
sub_40294b:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x402950
	.globl mbiter_multi_copy
	.type mbiter_multi_copy, @function
mbiter_multi_copy:

	push	r15
	push	r14
	push	rbx
	mov	rbx, rsi
	mov	r14, rdi
	mov	rax, qword ptr [rbx]
	mov	qword ptr [r14], rax
	mov	al, byte ptr [rbx + 8]
	test	al, al
	mov	byte ptr [r14 + 8], al
	je	.label_92
	mov	rax, qword ptr [rbx + 0xc]
	mov	qword ptr [r14 + 0xc], rax
	jmp	.label_94
.label_92:
	mov	qword ptr [r14 + 0xc], 0
.label_94:
	mov	al, byte ptr [rbx + 0x14]
	mov	byte ptr [r14 + 0x14], al
	mov	rsi, qword ptr [rbx + 0x18]
	lea	rax, [rbx + 0x30]
	cmp	rsi, rax
	jne	.label_95
	lea	r15, [r14 + 0x30]
	mov	rdx, qword ptr [rbx + 0x20]
	mov	rdi, r15
	call	memcpy
	mov	rsi, r15
.label_95:
	mov	qword ptr [r14 + 0x18], rsi
	mov	rax, qword ptr [rbx + 0x20]
	mov	qword ptr [r14 + 0x20], rax
	mov	rax, qword ptr [rbx + 0x28]
	test	al, al
	mov	byte ptr [r14 + 0x28], al
	je	.label_93
	shr	rax, 0x20
	mov	dword ptr [r14 + 0x2c], eax
.label_93:
	pop	rbx
	pop	r14
	pop	r15
	ret	
	.section	.text
	.align	32
	#Procedure 0x4029cb
	.globl sub_4029cb
	.type sub_4029cb, @function
sub_4029cb:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4029d0
	.globl version_etc_ar
	.type version_etc_ar, @function
version_etc_ar:

	mov	r9, -1
	nop	word ptr [rax + rax]
.label_96:
	cmp	qword ptr [r8 + r9*8 + 8], 0
	lea	r9, [r9 + 1]
	jne	.label_96
	jmp	version_etc_arn
	.section	.text
	.align	32
	#Procedure 0x4029f1
	.globl sub_4029f1
	.type sub_4029f1, @function
sub_4029f1:

	nop	word ptr cs:[rax + rax]
.label_97:
	call	xalloc_die
	.section	.text
	.align	32
	#Procedure 0x402a05
	.globl sub_402a05
	.type sub_402a05, @function
sub_402a05:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x402a10
	.globl xnmalloc
	.type xnmalloc, @function
xnmalloc:

	push	rbx
	mov	rbx, rsi
	movabs	rax, 0x7fffffffffffffff
	xor	edx, edx
	div	rbx
	cmp	rax, rdi
	jb	.label_97
	imul	rbx, rdi
	mov	rdi, rbx
	call	malloc
	test	rbx, rbx
	je	.label_98
	test	rax, rax
	je	.label_97
.label_98:
	pop	rbx
	ret	
	.section	.text
	.align	32
	#Procedure 0x402a40

	.globl compile_regex
	.type compile_regex, @function
compile_regex:
	push	r15
	push	r14
	push	r12
	push	rbx
	push	rax
	mov	r15, qword ptr [rdi]
	lea	rax, [rdi + 0x48]
	xorps	xmm0, xmm0
	movups	xmmword ptr [rdi + 8], xmm0
	mov	qword ptr [rdi + 0x28], rax
	mov	al, byte ptr [rip + ignore_case]
	mov	ecx, OFFSET FLAT:folded_chars
	xor	edx, edx
	test	al, al
	cmovne	rdx, rcx
	mov	qword ptr [rdi + 0x30], rdx
	lea	rbx, [rdi + 8]
	mov	rdi, r15
	call	strlen
	mov	rdi, r15
	mov	rsi, rax
	mov	rdx, rbx
	call	rpl_re_compile_pattern
	mov	r14, rax
	test	r14, r14
	jne	.label_100
	mov	rdi, rbx
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	jmp	rpl_re_compile_fastmap
.label_100:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_99
	mov	edx, 5
	call	dcgettext
	mov	r12, rax
	mov	rdi, r15
	call	quote
	mov	rbx, rax
	mov	edi, 1
	xor	esi, esi
	xor	eax, eax
	mov	rdx, r12
	mov	rcx, r14
	mov	r8, rbx
	call	error
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x402ae0
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
	#Procedure 0x402b13
	.globl sub_402b13
	.type sub_402b13, @function
sub_402b13:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x402b20

	.globl peek_token
	.type peek_token, @function
peek_token:
	push	rbp
	push	r15
	push	r14
	push	r12
	push	rbx
	sub	rsp, 0x10
	mov	rbp, rsi
	mov	r15, rdi
	mov	rax, qword ptr [rbp + 0x48]
	cmp	qword ptr [rbp + 0x68], rax
	jle	.label_597
	mov	r12, rdx
	mov	rcx, qword ptr [rbp + 8]
	movzx	ebx, byte ptr [rcx + rax]
	mov	byte ptr [r15], bl
	mov	r14d, dword ptr [r15 + 8]
	mov	eax, r14d
	and	eax, 0xff9fffff
	mov	dword ptr [r15 + 8], eax
	mov	edx, dword ptr [rbp + 0x90]
	cmp	edx, 2
	jl	.label_223
	mov	rax, qword ptr [rbp + 0x48]
	cmp	rax, qword ptr [rbp + 0x30]
	je	.label_223
	mov	rcx, qword ptr [rbp + 0x10]
	cmp	dword ptr [rcx + rax*4], -1
	je	.label_476
.label_223:
	cmp	bl, 0x5c
	jne	.label_482
	mov	rcx, qword ptr [rbp + 0x48]
	lea	rax, [rcx + 1]
	cmp	rax, qword ptr [rbp + 0x58]
	jge	.label_483
	cmp	byte ptr [rbp + 0x8b], 0
	jne	.label_487
.label_127:
	mov	rcx, qword ptr [rbp + 8]
	mov	bl, byte ptr [rcx + rax]
.label_135:
	mov	byte ptr [r15], bl
	and	r14d, 0xff9fff00
	or	r14d, 1
	mov	dword ptr [r15 + 8], r14d
	cmp	dword ptr [rbp + 0x90], 2
	jl	.label_316
	mov	rax, qword ptr [rbp + 0x10]
	mov	rcx, qword ptr [rbp + 0x48]
	mov	ebp, dword ptr [rax + rcx*4 + 4]
	mov	edi, ebp
	call	iswalnum
	test	eax, eax
	setne	al
	cmp	ebp, 0x5f
	sete	cl
	or	cl, al
	movzx	ecx, cl
	shl	ecx, 0x16
	mov	eax, 0xffbfffff
	and	eax, dword ptr [r15 + 8]
	or	eax, ecx
	movzx	ebp, bl
	jmp	.label_494
.label_597:
	mov	byte ptr [r15 + 8], 2
	xor	r14d, r14d
	jmp	.label_102
.label_482:
	and	r14d, 0xff9fff00
	or	r14d, 1
	mov	dword ptr [r15 + 8], r14d
	cmp	dword ptr [rbp + 0x90], 2
	jl	.label_377
	mov	rax, qword ptr [rbp + 0x10]
	mov	rcx, qword ptr [rbp + 0x48]
	mov	r14d, dword ptr [rax + rcx*4]
	mov	edi, r14d
	call	iswalnum
	test	eax, eax
	setne	al
	cmp	r14d, 0x5f
	sete	cl
	or	cl, al
	movzx	ecx, cl
	shl	ecx, 0x16
	mov	eax, 0xffbfffff
	and	eax, dword ptr [r15 + 8]
	or	eax, ecx
	jmp	.label_418
.label_483:
	and	r14d, 0xff9fff00
	or	r14d, 0x24
	jmp	.label_513
.label_377:
	call	__ctype_b_loc
	mov	rax, qword ptr [rax]
	movzx	eax, word ptr [rax + rbx*2]
	xor	ecx, ecx
	cmp	bl, 0x5f
	sete	cl
	shr	eax, 3
	and	eax, 1
	or	eax, ecx
	shl	eax, 0x16
	or	eax, r14d
.label_418:
	mov	dword ptr [r15 + 8], eax
	mov	r14d, 1
	add	bl, 0xf6
	movzx	ecx, bl
	cmp	cl, 0x73
	ja	.label_102
	jmp	qword ptr [(rcx * 8) + label_499]
.label_3043:
	mov	rcx, r12
	test	ch, 8
	je	.label_102
	jmp	.label_583
.label_316:
	movzx	ebp, bl
	call	__ctype_b_loc
	mov	rax, qword ptr [rax]
	movzx	eax, word ptr [rax + rbp*2]
	xor	ecx, ecx
	cmp	bl, 0x5f
	sete	cl
	shr	eax, 3
	and	eax, 1
	or	eax, ecx
	shl	eax, 0x16
	or	eax, r14d
.label_494:
	mov	dword ptr [r15 + 8], eax
	mov	r14d, 2
	add	bl, 0xd9
	movzx	ecx, bl
	cmp	cl, 0x56
	ja	.label_102
	jmp	qword ptr [(rcx * 8) + label_534]
.label_3029:
	mov	rcx, r12
	test	ch, 0x40
	jne	.label_102
	and	eax, 0xffffff00
	or	eax, 4
	mov	dword ptr [r15 + 8], eax
	add	rbp, -0x31
	mov	qword ptr [r15], rbp
	jmp	.label_102
.label_476:
	and	r14d, 0xff9fff00
	or	r14d, 0x200001
.label_513:
	mov	dword ptr [r15 + 8], r14d
	mov	r14d, 1
.label_102:
	mov	eax, r14d
	add	rsp, 0x10
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_3044:
	mov	rdx, r12
	test	dl, 8
	jne	.label_549
	mov	rcx, qword ptr [rbp + 0x48]
	inc	rcx
	cmp	rcx, qword ptr [rbp + 0x58]
	je	.label_549
	mov	qword ptr [rbp + 0x48], rcx
	lea	rdi, [rsp]
	mov	rsi, rbp
	call	peek_token
	dec	qword ptr [rbp + 0x48]
	movzx	eax, byte ptr [rsp + 8]
	add	eax, -9
	cmp	eax, 1
	ja	.label_102
	mov	eax, dword ptr [r15 + 8]
.label_549:
	and	eax, 0xffffff00
	or	eax, 0xc
	mov	dword ptr [r15 + 8], eax
	mov	dword ptr [r15], 0x20
	jmp	.label_102
.label_3045:
	mov	rcx, r12
	test	ch, 0x20
	je	.label_102
	jmp	.label_555
.label_3046:
	mov	rcx, r12
	test	ch, 0x20
	je	.label_102
	jmp	.label_556
.label_3047:
	and	eax, 0xffffff00
	or	eax, 0xb
	mov	dword ptr [r15 + 8], eax
	jmp	.label_102
.label_3048:
	test	r12w, 0x402
	jne	.label_102
	jmp	.label_197
.label_3049:
	and	eax, 0xffffff00
	or	eax, 5
	mov	dword ptr [r15 + 8], eax
	jmp	.label_102
.label_3050:
	test	r12w, 0x402
	jne	.label_102
	jmp	.label_564
.label_3051:
	and	eax, 0xffffff00
	or	eax, 0x14
	mov	dword ptr [r15 + 8], eax
	jmp	.label_102
.label_3052:
	mov	rdx, r12
	test	edx, 0x800008
	jne	.label_240
	mov	rcx, qword ptr [rbp + 0x48]
	test	rcx, rcx
	je	.label_240
	test	dh, 8
	je	.label_102
	mov	rdx, qword ptr [rbp + 8]
	cmp	byte ptr [rdx + rcx - 1], 0xa
	jne	.label_102
.label_240:
	and	eax, 0xffffff00
	or	eax, 0xc
	mov	dword ptr [r15 + 8], eax
	mov	dword ptr [r15], 0x10
	jmp	.label_102
.label_3053:
	and	r12d, 0x1200
	cmp	r12, 0x1200
	jne	.label_102
	jmp	.label_579
.label_3054:
	mov	rcx, r12
	test	ch, 4
	jne	.label_102
	test	cx, cx
	js	.label_583
	jmp	.label_102
.label_3055:
	and	r12d, 0x1200
	cmp	r12, 0x1200
	jne	.label_102
	jmp	.label_349
.label_3025:
	test	r12d, 0x80000
	jne	.label_102
	and	eax, 0xffffff00
	or	eax, 0xc
	mov	dword ptr [r15 + 8], eax
	mov	dword ptr [r15], 0x80
	jmp	.label_102
.label_3026:
	mov	rcx, r12
	test	ch, 0x20
	jne	.label_102
.label_555:
	and	eax, 0xffffff00
	or	eax, 8
	mov	dword ptr [r15 + 8], eax
	jmp	.label_102
.label_3027:
	mov	rcx, r12
	test	ch, 0x20
	jne	.label_102
.label_556:
	and	eax, 0xffffff00
	or	eax, 9
	mov	dword ptr [r15 + 8], eax
	jmp	.label_102
.label_3028:
	and	r12d, 0x402
	cmp	r12, 2
	jne	.label_102
.label_197:
	and	eax, 0xffffff00
	or	eax, 0x12
	mov	dword ptr [r15 + 8], eax
	jmp	.label_102
.label_3030:
	test	r12d, 0x80000
	jne	.label_102
	and	eax, 0xffffff00
	or	eax, 0xc
	mov	dword ptr [r15 + 8], eax
	mov	dword ptr [r15], 6
	jmp	.label_102
.label_3031:
	test	r12d, 0x80000
	jne	.label_102
	and	eax, 0xffffff00
	or	eax, 0xc
	mov	dword ptr [r15 + 8], eax
	mov	dword ptr [r15], 9
	jmp	.label_102
.label_3032:
	and	r12d, 0x402
	cmp	r12, 2
	jne	.label_102
.label_564:
	and	eax, 0xffffff00
	or	eax, 0x13
	mov	dword ptr [r15 + 8], eax
	jmp	.label_102
.label_3033:
	test	r12d, 0x80000
	jne	.label_102
	and	eax, 0xffffff00
	or	eax, 0xc
	mov	dword ptr [r15 + 8], eax
	mov	dword ptr [r15], 0x200
	jmp	.label_102
.label_3034:
	test	r12d, 0x80000
	jne	.label_102
	and	eax, 0xffffff00
	or	eax, 0x23
	mov	dword ptr [r15 + 8], eax
	jmp	.label_102
.label_3035:
	test	r12d, 0x80000
	jne	.label_102
	and	eax, 0xffffff00
	or	eax, 0x21
	mov	dword ptr [r15 + 8], eax
	jmp	.label_102
.label_3036:
	test	r12d, 0x80000
	jne	.label_102
	and	eax, 0xffffff00
	or	eax, 0xc
	mov	dword ptr [r15 + 8], eax
	mov	dword ptr [r15], 0x40
	jmp	.label_102
.label_3037:
	test	r12d, 0x80000
	jne	.label_102
	and	eax, 0xffffff00
	or	eax, 0xc
	mov	dword ptr [r15 + 8], eax
	mov	dword ptr [r15], 0x100
	jmp	.label_102
.label_3038:
	test	r12d, 0x80000
	jne	.label_102
	and	eax, 0xffffff00
	or	eax, 0x22
	mov	dword ptr [r15 + 8], eax
	jmp	.label_102
.label_3039:
	test	r12d, 0x80000
	jne	.label_102
	and	eax, 0xffffff00
	or	eax, 0x20
	mov	dword ptr [r15 + 8], eax
	jmp	.label_102
.label_3040:
	and	r12d, 0x1200
	cmp	r12, 0x200
	jne	.label_102
.label_579:
	and	eax, 0xffffff00
	or	eax, 0x17
	mov	dword ptr [r15 + 8], eax
	jmp	.label_102
.label_3041:
	mov	rcx, r12
	test	ch, 4
	jne	.label_102
	test	cx, cx
	js	.label_102
.label_583:
	and	eax, 0xffffff00
	or	eax, 0xa
	mov	dword ptr [r15 + 8], eax
	jmp	.label_102
.label_3042:
	and	r12d, 0x1200
	cmp	r12, 0x200
	jne	.label_102
.label_349:
	and	eax, 0xffffff00
	or	eax, 0x18
	mov	dword ptr [r15 + 8], eax
	jmp	.label_102
.label_487:
	cmp	edx, 2
	jl	.label_124
	mov	rdx, qword ptr [rbp + 0x10]
	cmp	dword ptr [rdx + rcx*4 + 4], -1
	je	.label_127
	lea	rsi, [rcx + 2]
	cmp	qword ptr [rbp + 0x30], rsi
	je	.label_124
	cmp	dword ptr [rdx + rcx*4 + 8], -1
	je	.label_127
.label_124:
	mov	dl, byte ptr [rbp + 0x8c]
	test	dl, dl
	mov	rsi, rax
	je	.label_130
	mov	rsi, qword ptr [rbp + 0x18]
	mov	rsi, qword ptr [rsi + rcx*8 + 8]
.label_130:
	add	rsi, qword ptr [rbp + 0x28]
	test	dl, dl
	mov	rcx, qword ptr [rbp]
	mov	bl, byte ptr [rcx + rsi]
	je	.label_135
	test	bl, bl
	js	.label_127
	jmp	.label_135
	nop	dword ptr [rax + rax]
.label_147:
	call	xalloc_die
	nop	word ptr [rax + rax]
	push	rbx
	mov	rbx, rdi
	call	malloc
	test	rbx, rbx
	je	.label_146
	test	rax, rax
	je	.label_147
.label_146:
	pop	rbx
	ret	
	.section	.text
	.align	32
	#Procedure 0x403160

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
	je	.label_627
	mov	edx, OFFSET FLAT:label_618
	xor	eax, eax
	mov	rdi, r14
	mov	r8, rbx
	call	__fprintf_chk
	jmp	.label_624
.label_627:
	mov	edx, OFFSET FLAT:label_625
	xor	eax, eax
	mov	rdi, r14
	mov	rcx, rbx
	mov	r8, r9
	call	__fprintf_chk
.label_624:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_629
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
	mov	esi, OFFSET FLAT:label_626
	mov	edx, 5
	call	dcgettext
	mov	rdi, rax
	mov	rsi, r14
	call	fputs_unlocked
	cmp	r12, 9
	ja	.label_630
	jmp	qword ptr [(r12 * 8) + label_631]
.label_2928:
	add	rsp, 8
	jmp	.label_617
.label_630:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_621
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
	jmp	.label_617
.label_2929:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_616
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
.label_2930:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_622
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
.label_2931:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_619
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
.label_2932:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_633
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
	jmp	.label_617
.label_2933:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_632
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
	jmp	.label_617
.label_2934:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_615
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
	jmp	.label_617
.label_2935:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_620
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
	jmp	.label_617
.label_2937:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_623
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
	jmp	.label_617
.label_2936:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_628
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
.label_617:
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4034c0

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
	mov	rbx, rdi
	mov	r15, qword ptr [rbp + 0x28]
	lea	r14, [r12 + r12*2]
	mov	rax, qword ptr [r15 + r14*8 + 8]
	lea	rcx, [rax + 1]
	mov	qword ptr [rsp + 0x10], rcx
	mov	qword ptr [rsp + 0x18], 0
	lea	rdi, [rax*8 + 8]
	call	malloc
	mov	rcx, rax
	mov	qword ptr [rsp + 0x20], rcx
	mov	eax, 0xc
	test	rcx, rcx
	je	.label_264
	mov	qword ptr [rsp + 8], rbx
	mov	rax, qword ptr [rbp + 0x30]
	mov	qword ptr [rax + r14*8 + 8], -1
	mov	rcx, qword ptr [rbp]
	mov	rbx, r12
	shl	rbx, 4
	mov	eax, dword ptr [rcx + rbx + 8]
	mov	r8d, eax
	shr	r8d, 8
	and	r8d, 0x3ff
	je	.label_638
	lea	rdx, [r15 + r14*8 + 8]
	cmp	qword ptr [rdx], 0
	je	.label_638
	mov	rdx, qword ptr [r15 + r14*8 + 0x10]
	mov	rdx, qword ptr [rdx]
	shl	rdx, 4
	test	byte ptr [rcx + rdx + 0xa], 4
	jne	.label_638
	mov	rdi, rbp
	mov	rsi, r12
	mov	rdx, r12
	mov	rcx, r12
	call	duplicate_node_closure
	test	eax, eax
	jne	.label_264
	mov	rax, qword ptr [rbp]
	mov	eax, dword ptr [rax + rbx + 8]
.label_638:
	test	al, 8
	mov	qword ptr [rsp + 0x28], r12
	je	.label_637
	mov	rax, qword ptr [rbp + 0x28]
	cmp	qword ptr [rax + r14*8 + 8], 0
	jle	.label_637
	xor	r15d, r15d
	lea	rbx, [rsp + 0x30]
	xor	r12d, r12d
	nop	word ptr cs:[rax + rax]
.label_635:
	mov	rax, qword ptr [rax + r14*8 + 0x10]
	mov	rdx, qword ptr [rax + r12*8]
	mov	rax, qword ptr [rbp + 0x30]
	lea	r13, [rdx + rdx*2]
	mov	rcx, qword ptr [rax + r13*8 + 8]
	cmp	rcx, -1
	je	.label_634
	test	rcx, rcx
	jne	.label_640
	xor	ecx, ecx
	mov	rdi, rbx
	mov	rsi, rbp
	call	calc_eclosure_iter
	test	eax, eax
	je	.label_641
	jmp	.label_264
	nop	word ptr [rax + rax]
.label_640:
	mov	rcx, qword ptr [rax + r13*8 + 0x10]
	mov	qword ptr [rsp + 0x40], rcx
	movups	xmm0, xmmword ptr [rax + r13*8]
	movaps	xmmword ptr [rsp + 0x30], xmm0
.label_641:
	lea	rdi, [rsp + 0x10]
	mov	rsi, rbx
	call	re_node_set_merge
	test	eax, eax
	jne	.label_264
	mov	rax, qword ptr [rbp + 0x30]
	cmp	qword ptr [rax + r13*8 + 8], 0
	jne	.label_318
	mov	rdi, qword ptr [rsp + 0x40]
	call	free
.label_634:
	mov	r15b, 1
.label_318:
	inc	r12
	mov	rax, qword ptr [rbp + 0x28]
	cmp	r12, qword ptr [rax + r14*8 + 8]
	jl	.label_635
	jmp	.label_639
.label_637:
	xor	r15d, r15d
.label_639:
	lea	rdi, [rsp + 0x10]
	mov	rsi, qword ptr [rsp + 0x28]
	call	re_node_set_insert
	test	al, al
	mov	eax, 0xc
	je	.label_264
	test	r15b, 1
	mov	rax, qword ptr [rbp + 0x30]
	je	.label_642
	mov	ecx, dword ptr [rsp + 4]
	test	cl, cl
	jne	.label_642
	mov	qword ptr [rax + r14*8 + 8], 0
	jmp	.label_636
.label_642:
	mov	rcx, qword ptr [rsp + 0x20]
	mov	qword ptr [rax + r14*8 + 0x10], rcx
	movups	xmm0, xmmword ptr [rsp + 0x10]
	movups	xmmword ptr [rax + r14*8], xmm0
.label_636:
	mov	rcx, qword ptr [rsp + 8]
	mov	rax, qword ptr [rsp + 0x20]
	mov	qword ptr [rcx + 0x10], rax
	movups	xmm0, xmmword ptr [rsp + 0x10]
	movups	xmmword ptr [rcx], xmm0
	xor	eax, eax
.label_264:
	add	rsp, 0x48
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x4036d0

	.globl rpl_re_compile_pattern
	.type rpl_re_compile_pattern, @function
rpl_re_compile_pattern:
	push	rax
	mov	r8, rsi
	mov	rsi, rdi
	mov	rcx, qword ptr [rip + rpl_re_syntax_options]
	mov	al, byte ptr [rdx + 0x38]
	mov	rdi, rcx
	shr	rdi, 0x15
	and	dil, 0x10
	and	al, 0x6f
	or	al, dil
	or	al, 0x80
	mov	byte ptr [rdx + 0x38], al
	mov	rdi, rdx
	mov	rdx, r8
	call	re_compile_internal
	test	eax, eax
	je	.label_643
	cdqe	
	mov	esi, OFFSET FLAT:__re_error_msgid
	add	rsi, qword ptr [(rax * 8) + __re_error_msgid_idx]
	xor	edi, edi
	mov	edx, 5
	pop	rax
	jmp	dcgettext
.label_643:
	xor	eax, eax
	pop	rcx
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x403730

	.globl check_node_accept_bytes
	.type check_node_accept_bytes, @function
check_node_accept_bytes:
	push	rbp
	push	r15
	push	r14
	push	r12
	push	rbx
	mov	r9, qword ptr [rdi]
	shl	rsi, 4
	movzx	r10d, byte ptr [r9 + rsi + 8]
	cmp	r10d, 7
	je	.label_659
	mov	r8d, dword ptr [rdx + 0x90]
	mov	ebx, 1
	cmp	r8d, 1
	je	.label_644
	lea	rax, [rcx + 1]
	mov	r11, qword ptr [rdx + 0x30]
	cmp	rax, r11
	jge	.label_644
	lea	rax, [rcx*4]
	add	rax, qword ptr [rdx + 0x10]
	mov	ebx, 1
	nop	
.label_647:
	cmp	dword ptr [rax + rbx*4], -1
	jne	.label_644
	lea	rbp, [rcx + rbx + 1]
	inc	rbx
	cmp	rbp, r11
	jl	.label_647
.label_644:
	cmp	r10d, 5
	jne	.label_652
	xor	r14d, r14d
	cmp	ebx, 2
	jl	.label_649
	mov	rax, qword ptr [rdi + 0xd8]
	test	al, 0x40
	jne	.label_655
	mov	rsi, qword ptr [rdx + 8]
	cmp	byte ptr [rsi + rcx], 0xa
	je	.label_649
.label_655:
	test	al, al
	jns	.label_660
	mov	rax, qword ptr [rdx + 8]
	cmp	byte ptr [rax + rcx], 0
	je	.label_649
.label_660:
	mov	r14d, ebx
	jmp	.label_649
.label_652:
	cmp	ebx, 1
	setg	al
	xor	r14d, r14d
	cmp	r10d, 6
	jne	.label_649
	test	al, al
	je	.label_649
	mov	r15, qword ptr [r9 + rsi]
	mov	rsi, qword ptr [r15 + 0x40]
	test	rsi, rsi
	jne	.label_645
	cmp	qword ptr [r15 + 0x48], 0
	jne	.label_645
	xor	r12d, r12d
	cmp	qword ptr [r15 + 0x28], 0
	je	.label_648
.label_645:
	cmp	r8d, 1
	jne	.label_666
	mov	rax, qword ptr [rdx + 8]
	movzx	r12d, byte ptr [rax + rcx]
	jmp	.label_648
.label_666:
	mov	rax, qword ptr [rdx + 0x10]
	mov	r12d, dword ptr [rax + rcx*4]
.label_648:
	mov	rax, qword ptr [r15 + 0x28]
	test	rax, rax
	jle	.label_657
	mov	rcx, qword ptr [r15]
	xor	edx, edx
	nop	dword ptr [rax + rax]
.label_663:
	cmp	r12d, dword ptr [rcx + rdx*4]
	je	.label_646
	inc	rdx
	cmp	rdx, rax
	jl	.label_663
.label_657:
	cmp	qword ptr [r15 + 0x48], 0
	jle	.label_664
	xor	ebp, ebp
	nop	word ptr [rax + rax]
.label_668:
	mov	rax, qword ptr [r15 + 0x18]
	mov	rsi, qword ptr [rax + rbp*8]
	mov	edi, r12d
	call	iswctype
	test	eax, eax
	jne	.label_646
	inc	rbp
	cmp	rbp, qword ptr [r15 + 0x48]
	jl	.label_668
	mov	rsi, qword ptr [r15 + 0x40]
.label_664:
	xor	ecx, ecx
	test	rsi, rsi
	jle	.label_665
	mov	rax, qword ptr [r15 + 8]
	xor	edx, edx
	nop	
.label_662:
	cmp	dword ptr [rax + rdx*4], r12d
	jg	.label_650
	mov	rcx, qword ptr [r15 + 0x10]
	cmp	r12d, dword ptr [rcx + rdx*4]
	jle	.label_646
.label_650:
	inc	rdx
	xor	ecx, ecx
	cmp	rdx, rsi
	jl	.label_662
	jmp	.label_665
.label_646:
	mov	ecx, ebx
.label_665:
	test	byte ptr [r15 + 0x20], 1
	jne	.label_658
	mov	r14d, ecx
	jmp	.label_649
.label_658:
	test	ecx, ecx
	jg	.label_649
	test	ebx, ebx
	mov	r14d, 1
	cmovg	r14d, ebx
.label_649:
	mov	eax, r14d
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_659:
	mov	rax, qword ptr [rdx + 8]
	mov	bl, byte ptr [rax + rcx]
	xor	r14d, r14d
	cmp	bl, 0xc2
	jb	.label_649
	lea	rsi, [rcx + 2]
	mov	rdx, qword ptr [rdx + 0x58]
	cmp	rsi, rdx
	jg	.label_649
	mov	dil, byte ptr [rax + rcx + 1]
	cmp	bl, 0xdf
	ja	.label_667
	cmp	dil, 0xc0
	sbb	eax, eax
	and	eax, 2
	xor	r14d, r14d
	test	dil, dil
	cmovs	r14d, eax
	jmp	.label_649
.label_667:
	cmp	bl, 0xef
	ja	.label_651
	mov	esi, 3
	cmp	bl, 0xe0
	jne	.label_653
	cmp	dil, 0xa0
	jb	.label_649
	jmp	.label_653
.label_651:
	cmp	bl, 0xf7
	ja	.label_656
	mov	esi, 4
	cmp	bl, 0xf0
	jne	.label_653
	cmp	dil, 0x90
	jb	.label_649
	jmp	.label_653
.label_656:
	cmp	bl, 0xfb
	ja	.label_661
	mov	esi, 5
	cmp	bl, 0xf8
	jne	.label_653
	cmp	dil, 0x88
	jb	.label_649
	jmp	.label_653
.label_661:
	cmp	bl, 0xfd
	ja	.label_649
	mov	esi, 6
	cmp	bl, 0xfc
	jne	.label_653
	cmp	dil, 0x84
	jb	.label_649
.label_653:
	mov	edi, esi
	lea	rbp, [rdi + rcx]
	cmp	rbp, rdx
	jg	.label_649
	add	rax, rcx
	mov	ecx, 1
.label_654:
	movzx	edx, byte ptr [rax + rcx]
	test	dl, dl
	jns	.label_649
	cmp	dl, 0xbf
	ja	.label_649
	inc	rcx
	cmp	rcx, rdi
	jl	.label_654
	mov	r14d, esi
	jmp	.label_649
	nop	word ptr cs:[rax + rax]
.label_491:
	mov	edi, 0x3c8
	call	malloc
	xor	r13d, r13d
	test	rax, rax
	je	.label_414
	mov	rcx, qword ptr [rbx + 0x70]
	mov	qword ptr [rax], rcx
	mov	qword ptr [rbx + 0x70], rax
	mov	dword ptr [rbx + 0x80], 0
	jmp	.label_426
.label_481:
	mov	edi, 0x3c8
	call	malloc
	xor	ebp, ebp
	test	rax, rax
	je	.label_261
	mov	rcx, qword ptr [rbx + 0x70]
	mov	qword ptr [rax], rcx
	mov	qword ptr [rbx + 0x70], rax
	mov	dword ptr [rbx + 0x80], 0
	jmp	.label_432
	nop	word ptr [rax + rax]
.label_670:
	mov	edi, 0x3c8
	call	malloc
	xor	r12d, r12d
	test	rax, rax
	je	.label_434
	mov	rcx, qword ptr [rbx + 0x70]
	mov	qword ptr [rax], rcx
	mov	qword ptr [rbx + 0x70], rax
	mov	dword ptr [rbx + 0x80], 0
	jmp	.label_276
.label_464:
	mov	edi, 0x3c8
	call	malloc
	xor	r15d, r15d
	test	rax, rax
	je	.label_440
	mov	rcx, qword ptr [rbx + 0x70]
	mov	qword ptr [rax], rcx
	mov	qword ptr [rbx + 0x70], rax
	mov	dword ptr [rbx + 0x80], 0
	jmp	.label_441
	.section	.text
	.align	32
	#Procedure 0x403a88

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
	mov	r14, rdx
	mov	rbp, rdi
	mov	rbx, qword ptr [rsi]
	mov	r13, qword ptr [r14 + 8]
	test	r13, r13
	je	.label_669
	mov	al, byte ptr [rsi + 0x38]
	and	al, 0x10
	je	.label_669
	mov	rax, qword ptr [r14 + 0x28]
	cmp	rax, 0x3f
	jg	.label_577
	mov	rcx, qword ptr [rbx + 0xa0]
	bt	rcx, rax
	jae	.label_577
.label_669:
	mov	r12d, dword ptr [rbx + 0x80]
	cmp	r12d, 0xf
	je	.label_670
	mov	rax, qword ptr [rbx + 0x70]
.label_276:
	lea	ecx, [r12 + 1]
	mov	dword ptr [rbx + 0x80], ecx
	movsxd	rcx, r12d
	shl	rcx, 6
	lea	r12, [rax + rcx + 8]
	xorps	xmm0, xmm0
	movups	xmmword ptr [rax + rcx + 8], xmm0
	mov	qword ptr [rax + rcx + 0x18], 0
	mov	dword ptr [rax + rcx + 0x38], 8
	movups	xmmword ptr [rax + rcx + 0x20], xmm0
	mov	qword ptr [rax + rcx + 0x40], -1
.label_434:
	mov	qword ptr [rsp], rbp
	mov	r15d, dword ptr [rbx + 0x80]
	cmp	r15d, 0xf
	je	.label_464
	mov	rax, qword ptr [rbx + 0x70]
.label_441:
	lea	ecx, [r15 + 1]
	mov	dword ptr [rbx + 0x80], ecx
	movsxd	rcx, r15d
	shl	rcx, 6
	lea	r15, [rax + rcx + 8]
	xorps	xmm0, xmm0
	movups	xmmword ptr [rax + rcx + 8], xmm0
	mov	qword ptr [rax + rcx + 0x18], 0
	mov	dword ptr [rax + rcx + 0x38], 9
	movups	xmmword ptr [rax + rcx + 0x20], xmm0
	mov	qword ptr [rax + rcx + 0x40], -1
.label_440:
	test	r13, r13
	mov	rbp, r15
	je	.label_261
	mov	ebp, dword ptr [rbx + 0x80]
	cmp	ebp, 0xf
	je	.label_481
	mov	rax, qword ptr [rbx + 0x70]
.label_432:
	lea	ecx, [rbp + 1]
	mov	dword ptr [rbx + 0x80], ecx
	movsxd	rcx, ebp
	shl	rcx, 6
	lea	rbp, [rax + rcx + 8]
	mov	qword ptr [rax + rcx + 8], 0
	mov	qword ptr [rax + rcx + 0x10], r13
	mov	qword ptr [rax + rcx + 0x18], r15
	mov	dword ptr [rax + rcx + 0x38], 0x10
	xorps	xmm0, xmm0
	movups	xmmword ptr [rax + rcx + 0x20], xmm0
	mov	qword ptr [rax + rcx + 0x40], -1
	mov	qword ptr [r13], rbp
	test	r15, r15
	je	.label_261
	mov	qword ptr [r15], rbp
.label_261:
	mov	r13d, dword ptr [rbx + 0x80]
	cmp	r13d, 0xf
	je	.label_491
	mov	rax, qword ptr [rbx + 0x70]
.label_426:
	lea	ecx, [r13 + 1]
	mov	dword ptr [rbx + 0x80], ecx
	movsxd	rcx, r13d
	shl	rcx, 6
	lea	r13, [rax + rcx + 8]
	mov	qword ptr [rax + rcx + 8], 0
	mov	qword ptr [rax + rcx + 0x10], r12
	mov	qword ptr [rax + rcx + 0x18], rbp
	mov	dword ptr [rax + rcx + 0x38], 0x10
	xorps	xmm0, xmm0
	movups	xmmword ptr [rax + rcx + 0x20], xmm0
	mov	qword ptr [rax + rcx + 0x40], -1
	test	r12, r12
	je	.label_362
	mov	qword ptr [r12], r13
.label_362:
	test	rbp, rbp
	je	.label_414
	mov	qword ptr [rbp], r13
.label_414:
	test	r15, r15
	je	.label_421
	test	r12, r12
	je	.label_421
	test	rbp, rbp
	je	.label_421
	test	r13, r13
	je	.label_421
	mov	rax, qword ptr [r14 + 0x28]
	mov	qword ptr [r15 + 0x28], rax
	mov	qword ptr [r12 + 0x28], rax
	mov	eax, 0x80000
	and	eax, dword ptr [r14 + 0x30]
	mov	ecx, 0xfff7ffff
	mov	edx, dword ptr [r15 + 0x30]
	and	edx, ecx
	or	edx, eax
	mov	dword ptr [r15 + 0x30], edx
	and	ecx, dword ptr [r12 + 0x30]
	or	ecx, eax
	mov	dword ptr [r12 + 0x30], ecx
.label_577:
	mov	rax, r13
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_421:
	mov	rax, qword ptr [rsp]
	mov	dword ptr [rax], 0xc
	xor	r13d, r13d
	jmp	.label_577
	.section	.text
	.align	32
	#Procedure 0x403cc0

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
	jle	.label_671
	lea	r14, [r13 + 0x20]
	lea	r15, [rsp + 0xc]
	jmp	.label_678
	nop	dword ptr [rax + rax]
.label_675:
	mov	rax, qword ptr [r13 + 0x28]
	add	rax, rbx
	mov	rcx, qword ptr [r13]
	movzx	ecx, byte ptr [rcx + rax]
	mov	dword ptr [rsp + 0xc], ecx
	mov	rax, qword ptr [r13 + 0x78]
	test	rax, rax
	jne	.label_672
.label_683:
	mov	qword ptr [r14], rbp
	mov	eax, 1
.label_677:
	mov	rdx, qword ptr [r13 + 0x10]
	mov	dword ptr [rdx + rbx*4], ecx
	lea	rbp, [rax + rbx]
	lea	rcx, [rbx + 1]
	cmp	rcx, rbp
	jge	.label_680
	lea	rdi, [rdx + rbx*4 + 4]
	lea	rdx, [rax*4 - 4]
	mov	esi, 0xff
	call	memset
	mov	rcx, rbp
.label_680:
	cmp	r12, rcx
	mov	rbx, rcx
	jg	.label_678
	jmp	.label_679
.label_673:
	mov	ecx, dword ptr [rsp + 0xc]
	jmp	.label_677
.label_676:
	cmp	dword ptr [r13 + 0x90], 0
	lea	rsi, [rsp + 0x10]
	jle	.label_674
	xor	eax, eax
.label_682:
	cmp	rax, rdx
	jge	.label_681
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
	jl	.label_682
	lea	rsi, [rsp + 0x10]
	jmp	.label_674
.label_672:
	movzx	ecx, byte ptr [rax + rcx]
	mov	dword ptr [rsp + 0xc], ecx
	jmp	.label_683
.label_681:
	lea	rsi, [rsp + 0x10]
	jmp	.label_674
	nop	
.label_678:
	mov	rdx, r12
	sub	rdx, rbx
	mov	rbp, qword ptr [r13 + 0x20]
	cmp	qword ptr [r13 + 0x78], 0
	jne	.label_676
	mov	rsi, qword ptr [r13]
	add	rsi, qword ptr [r13 + 0x28]
	add	rsi, rbx
.label_674:
	mov	rdi, r15
	mov	rcx, r14
	call	rpl_mbrtowc
	lea	rcx, [rax + 1]
	cmp	rcx, 2
	jb	.label_675
	cmp	rax, -2
	jne	.label_673
	mov	rax, qword ptr [r13 + 0x40]
	cmp	rax, qword ptr [r13 + 0x58]
	jge	.label_675
	mov	qword ptr [r14], rbp
.label_671:
	mov	rcx, rbx
.label_679:
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
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x403e40

	.globl rpl_fflush
	.type rpl_fflush, @function
rpl_fflush:
	push	rbx
	mov	rbx, rdi
	test	rbx, rbx
	je	.label_684
	mov	rdi, rbx
	call	__freading
	test	eax, eax
	je	.label_684
	test	byte ptr [rbx + 1], 1
	je	.label_684
	xor	esi, esi
	mov	edx, 1
	mov	rdi, rbx
	call	rpl_fseeko
.label_684:
	mov	rdi, rbx
	pop	rbx
	jmp	fflush
	nop	word ptr cs:[rax + rax]
	push	rbx
	mov	rbx, rdi
	mov	rdi, qword ptr [rbx]
	test	rdi, rdi
	je	.label_586
	call	free_dfa_content
.label_586:
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
	nop	dword ptr [rax + rax]
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
	nop	word ptr cs:[rax + rax]
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
	je	.label_109
	mov	qword ptr [rax], rbx
.label_109:
	mov	rax, r14
	add	rsp, 0x28
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x404080

	.globl mbslen
	.type mbslen, @function
mbslen:
	push	r14
	push	rbx
	sub	rsp, 0x48
	mov	rbx, rdi
	call	__ctype_get_mb_cur_max
	cmp	rax, 2
	jb	.label_688
	mov	qword ptr [rsp + 0x18], rbx
	mov	byte ptr [rsp + 8], 0
	mov	qword ptr [rsp + 0xc], 0
	mov	byte ptr [rsp + 0x14], 0
	lea	rdi, [rsp + 8]
	call	mbuiter_multi_next
	mov	rax, qword ptr [rsp + 0x28]
	xor	ebx, ebx
	test	al, al
	je	.label_687
	shr	rax, 0x20
	je	.label_685
.label_687:
	xor	ebx, ebx
	lea	r14, [rsp + 8]
	nop	
.label_686:
	inc	rbx
	mov	rax, qword ptr [rsp + 0x20]
	add	qword ptr [rsp + 0x18], rax
	mov	byte ptr [rsp + 0x14], 0
	mov	rdi, r14
	call	mbuiter_multi_next
	mov	rax, qword ptr [rsp + 0x28]
	test	al, al
	je	.label_686
	shr	rax, 0x20
	jne	.label_686
.label_685:
	mov	rax, rbx
	add	rsp, 0x48
	pop	rbx
	pop	r14
	ret	
.label_688:
	mov	rdi, rbx
	add	rsp, 0x48
	pop	rbx
	pop	r14
	jmp	strlen
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x404120

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
.label_800:
	mov	r11, rbp
	xor	r14d, r14d
	mov	ecx, r15d
	cmp	r15d, 0xa
	ja	.label_798
	mov	edi, 7
	mov	r13b, 1
	xor	esi, esi
	mov	r8, qword ptr [rsp + 0x30]
	jmp	qword ptr [(rcx * 8) + label_765]
.label_2892:
	mov	byte ptr [rsp + 7], r10b
	mov	edi, OFFSET FLAT:label_805
	mov	esi, r15d
	mov	rbx, r11
	mov	ebp, r9d
	call	gettext_quote
	mov	qword ptr [rsp + 0x78], rax
	mov	edi, OFFSET FLAT:label_694
	mov	esi, r15d
	call	gettext_quote
	mov	r9d, ebp
	mov	r10b, byte ptr [rsp + 7]
	mov	r11, rbx
	mov	qword ptr [rsp + 0x70], rax
.label_2893:
	mov	dword ptr [rsp + 0x50], r9d
	mov	byte ptr [rsp + 7], r10b
	test	r12b, 1
	mov	r14d, 0
	mov	rcx, qword ptr [rsp + 0x78]
	jne	.label_704
	mov	al, byte ptr [rcx]
	test	al, al
	mov	r14d, 0
	je	.label_704
	xor	r14d, r14d
	nop	word ptr cs:[rax + rax]
.label_725:
	cmp	r14, r11
	jae	.label_719
	mov	rdx, qword ptr [rsp + 8]
	mov	byte ptr [rdx + r14], al
.label_719:
	movzx	eax, byte ptr [rcx + r14 + 1]
	inc	r14
	test	al, al
	jne	.label_725
.label_704:
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
	jmp	.label_742
.label_2885:
	xor	edi, edi
	xor	r14d, r14d
	mov	r13d, eax
	xor	esi, esi
	jmp	.label_742
.label_2888:
	mov	al, 1
.label_2886:
	mov	r12b, 1
.label_2889:
	test	r12b, 1
	mov	cl, 1
	je	.label_746
	mov	ecx, eax
.label_746:
	mov	al, cl
.label_2887:
	test	r12b, 1
	jne	.label_749
	test	r11, r11
	je	.label_766
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx], 0x27
.label_766:
	mov	r14d, 1
	jmp	.label_753
.label_749:
	xor	r14d, r14d
.label_753:
	mov	ecx, OFFSET FLAT:label_694
	mov	qword ptr [rsp + 0x48], rcx
	mov	ecx, 1
	mov	qword ptr [rsp + 0x40], rcx
	mov	r13d, eax
	mov	sil, r12b
	mov	edi, 2
	jmp	.label_742
.label_2890:
	test	r12b, 1
	jne	.label_762
	test	r11, r11
	je	.label_764
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax], 0x22
.label_764:
	mov	r14d, 1
	jmp	.label_767
.label_2891:
	mov	r13b, 1
	mov	edi, 5
	xor	r14d, r14d
	mov	eax, OFFSET FLAT:label_769
	mov	qword ptr [rsp + 0x48], rax
	mov	eax, 1
	mov	qword ptr [rsp + 0x40], rax
	mov	sil, 1
	jmp	.label_742
.label_762:
	xor	r14d, r14d
.label_767:
	mov	eax, OFFSET FLAT:label_769
	mov	qword ptr [rsp + 0x48], rax
	mov	eax, 1
	mov	qword ptr [rsp + 0x40], rax
	mov	r13b, 1
	mov	sil, r12b
	mov	edi, 5
	nop	word ptr cs:[rax + rax]
.label_742:
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
	jmp	.label_784
	nop	dword ptr [rax]
.label_727:
	inc	rsi
.label_784:
	cmp	rbp, -1
	je	.label_698
	cmp	rsi, rbp
	jne	.label_699
	jmp	.label_701
	nop	word ptr cs:[rax + rax]
.label_698:
	mov	rcx, -1
	cmp	byte ptr [rdi + rsi], 0
	je	.label_707
.label_699:
	cmp	byte ptr [rsp + 0x2f], 0
	je	.label_711
	mov	rax, qword ptr [rsp + 0x40]
	lea	rbx, [rsi + rax]
	cmp	rax, 2
	jb	.label_695
	cmp	rbp, -1
	jne	.label_695
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
.label_695:
	cmp	rbx, rbp
	jbe	.label_733
.label_711:
	xor	r8d, r8d
.label_271:
	movzx	r15d, byte ptr [rdi + rsi]
	cmp	r15, 0x7e
	ja	.label_735
	xor	edx, edx
	mov	r13b, 1
	mov	cl, 0x6e
	mov	bl, 0x61
	xor	eax, eax
	jmp	qword ptr [(r15 * 8) + label_737]
.label_3107:
	test	rsi, rsi
	jne	.label_730
	jmp	.label_744
	nop	word ptr cs:[rax + rax]
.label_733:
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
	jne	.label_269
	cmp	byte ptr [rsp + 6], 0
	mov	rdi, qword ptr [rsp + 0x30]
	mov	r11, rbx
	mov	r10d, r15d
	mov	rax, qword ptr [rsp + 0x38]
	mov	r9d, ebp
	mov	rsi, r12
	mov	r12, rax
	mov	rbp, qword ptr [rsp + 0x20]
	je	.label_271
	jmp	.label_280
.label_269:
	mov	rdi, qword ptr [rsp + 0x30]
	mov	r11, rbx
	mov	r10d, r15d
	mov	rax, qword ptr [rsp + 0x38]
	mov	r9d, ebp
	mov	rsi, r12
	mov	r12, rax
	mov	rbp, qword ptr [rsp + 0x20]
	jmp	.label_271
.label_3111:
	xor	eax, eax
	cmp	rbp, -1
	je	.label_775
	test	rsi, rsi
	jne	.label_776
	cmp	rbp, 1
	je	.label_744
	xor	r13d, r13d
	jmp	.label_708
.label_3100:
	cmp	byte ptr [rsp + 0x17], 0
	je	.label_783
	cmp	byte ptr [rsp + 6], 0
	jne	.label_741
	cmp	r12d, 2
	jne	.label_779
	mov	eax, r9d
	and	al, 1
	jne	.label_779
	cmp	r14, r11
	jae	.label_788
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], 0x27
.label_788:
	lea	rax, [r14 + 1]
	cmp	rax, r11
	jae	.label_792
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + rax], 0x24
.label_792:
	lea	rax, [r14 + 2]
	cmp	rax, r11
	jae	.label_751
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + rax], 0x27
.label_751:
	add	r14, 3
	mov	r9b, 1
.label_779:
	mov	rcx, r14
	cmp	rcx, r11
	jae	.label_801
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + rcx], 0x5c
.label_801:
	lea	r14, [rcx + 1]
	mov	al, 1
	mov	r15b, 0x30
	cmp	r12d, 2
	je	.label_691
	lea	rdx, [rsi + 1]
	cmp	rdx, rbp
	jae	.label_691
	mov	dl, byte ptr [rdi + rdx]
	add	dl, 0xd0
	cmp	dl, 9
	ja	.label_691
	cmp	r14, r11
	jae	.label_724
	mov	rdx, qword ptr [rsp + 8]
	mov	byte ptr [rdx + r14], 0x30
.label_724:
	lea	rdx, [rcx + 2]
	cmp	rdx, r11
	jae	.label_807
	mov	rbx, qword ptr [rsp + 8]
	mov	byte ptr [rbx + rdx], 0x30
.label_807:
	add	rcx, 3
	xor	r13d, r13d
	mov	r14, rcx
	jmp	.label_708
.label_3101:
	mov	bl, 0x62
	jmp	.label_715
.label_3102:
	mov	cl, 0x74
	jmp	.label_706
.label_3103:
	mov	bl, 0x76
	jmp	.label_715
.label_3104:
	mov	bl, 0x66
	jmp	.label_715
.label_3105:
	mov	cl, 0x72
	jmp	.label_706
.label_3108:
	mov	r15b, 0x27
	mov	al, 1
	mov	qword ptr [rsp + 0xa0], rax
	cmp	r12d, 2
	jne	.label_722
	cmp	byte ptr [rsp + 6], 0
	jne	.label_728
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
	jae	.label_732
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], 0x27
.label_732:
	lea	rax, [r14 + 1]
	cmp	rax, r11
	jae	.label_743
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + rax], 0x5c
.label_743:
	lea	rax, [r14 + 2]
	cmp	rax, r11
	jae	.label_747
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + rax], 0x27
.label_747:
	add	r14, 3
	xor	r9d, r9d
.label_722:
	xor	eax, eax
	mov	r13b, 1
	jmp	.label_708
.label_3109:
	mov	r15b, 0x3f
	cmp	r12d, 5
	je	.label_755
	cmp	r12d, 2
	jne	.label_730
	cmp	byte ptr [rsp + 6], 0
	je	.label_730
	jmp	.label_728
.label_3110:
	cmp	r12d, 2
	jne	.label_763
	cmp	byte ptr [rsp + 6], 0
	jne	.label_728
	mov	r15b, 0x5c
	xor	eax, eax
	xor	r13d, r13d
	jmp	.label_713
.label_735:
	mov	dword ptr [rsp + 0x54], r8d
	mov	dword ptr [rsp + 0x50], r9d
	mov	byte ptr [rsp + 7], r10b
	mov	qword ptr [rsp + 0x98], r11
	cmp	qword ptr [rsp + 0xa8], 1
	jne	.label_772
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
.label_718:
	and	r13b, 1
	mov	r8d, r13d
	or	r8b, byte ptr [rsp + 0x2a]
	mov	qword ptr [rsp + 0x60], r12
	cmp	r12, 1
	mov	r11, qword ptr [rsp + 0x98]
	mov	r10b, byte ptr [rsp + 7]
	mov	r12, qword ptr [rsp + 0x38]
	mov	r9d, dword ptr [rsp + 0x50]
	ja	.label_786
	test	r8b, r8b
	je	.label_786
	xor	eax, eax
	mov	rbp, qword ptr [rsp + 0x20]
	mov	r8d, dword ptr [rsp + 0x54]
	jmp	.label_708
.label_775:
	test	rsi, rsi
	jne	.label_752
	mov	cl, byte ptr [rdi + 1]
	test	cl, cl
	jne	.label_752
.label_744:
	mov	dl, 1
.label_3106:
	cmp	byte ptr [rsp + 0x1f], 0
	je	.label_728
	xor	eax, eax
	mov	r13b, dl
	nop	word ptr [rax + rax]
.label_708:
	cmp	byte ptr [rsp + 0x2e], 0
	je	.label_689
	cmp	qword ptr [rsp + 0xf0], 0
	jne	.label_705
	jmp	.label_697
	nop	word ptr cs:[rax + rax]
.label_689:
	cmp	byte ptr [rsp + 0x2d], 0
	je	.label_697
.label_705:
	mov	ebx, r8d
	mov	r8, rsi
	mov	ecx, r15d
	shr	cl, 5
	movzx	edx, cl
	mov	esi, 1
	mov	ecx, r15d
	shl	esi, cl
	test	bl, bl
	jne	.label_702
	mov	rcx, qword ptr [rsp + 0xf0]
	and	esi, dword ptr [rcx + rdx*4]
	mov	ebx, r15d
	mov	rsi, r8
	je	.label_713
	jmp	.label_717
	nop	dword ptr [rax]
.label_697:
	test	r8b, r8b
	mov	ebx, r15d
	jne	.label_717
	jmp	.label_713
.label_702:
	mov	ebx, r15d
	mov	rsi, r8
	jmp	.label_717
.label_783:
	cmp	dword ptr [rsp + 0x90], 0
	jne	.label_727
	xor	r15d, r15d
	jmp	.label_730
.label_763:
	mov	cl, 0x5c
	cmp	byte ptr [rsp + 0x29], 0
	je	.label_706
	xor	eax, eax
	mov	r15b, 0x5c
	xor	r13d, r13d
	jmp	.label_713
.label_706:
	cmp	byte ptr [rsp + 0x1f], 0
	mov	ebx, ecx
	je	.label_728
.label_715:
	xor	eax, eax
	cmp	byte ptr [rsp + 0x17], 0
	mov	r13d, 0
	je	.label_708
	nop	word ptr cs:[rax + rax]
.label_717:
	cmp	byte ptr [rsp + 6], 0
	jne	.label_741
	cmp	r12d, 2
	jne	.label_750
	mov	eax, r9d
	and	al, 1
	jne	.label_750
	cmp	r14, r11
	jae	.label_781
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], 0x27
.label_781:
	lea	rax, [r14 + 1]
	cmp	rax, r11
	jae	.label_757
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + rax], 0x24
.label_757:
	lea	rax, [r14 + 2]
	cmp	rax, r11
	jae	.label_709
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + rax], 0x27
.label_709:
	add	r14, 3
	mov	r9b, 1
.label_750:
	cmp	r14, r11
	jae	.label_748
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], 0x5c
.label_748:
	inc	r14
	jmp	.label_770
.label_772:
	mov	qword ptr [rsp + 0x80], 0
	cmp	rbp, -1
	jne	.label_773
	mov	rbx, rsi
	call	strlen
	mov	rsi, rbx
	mov	rdi, qword ptr [rsp + 0x30]
	mov	rbp, rax
.label_773:
	lea	rax, [rdi + rsi]
	mov	qword ptr [rsp + 0x60], rax
	mov	r13b, 1
	xor	r12d, r12d
	lea	rax, [rsp + 0x80]
	mov	rcx, rax
	mov	qword ptr [rsp + 0x20], rbp
	mov	qword ptr [rsp + 0x58], rsi
.label_789:
	lea	rbx, [r12 + rsi]
	lea	rsi, [rdi + rbx]
	mov	rdx, rbp
	sub	rdx, rbx
	lea	rdi, [rsp + 0x94]
	call	rpl_mbrtowc
	mov	rbp, rax
	test	rbp, rbp
	je	.label_791
	cmp	rbp, -1
	movabs	rsi, 0x20000002b
	je	.label_794
	cmp	rbp, -2
	je	.label_797
	cmp	rbp, 1
	seta	al
	and	al, byte ptr [rsp + 0x2b]
	cmp	al, 1
	mov	rdi, qword ptr [rsp + 0x30]
	mov	r11, qword ptr [rsp + 0x98]
	jne	.label_740
	mov	rax, qword ptr [rsp + 0x60]
	lea	rax, [rax + r12]
	mov	ecx, 1
	nop	word ptr cs:[rax + rax]
.label_754:
	movsx	edx, byte ptr [rax + rcx]
	add	edx, -0x5b
	cmp	edx, 0x21
	ja	.label_690
	bt	rsi, rdx
	jb	.label_696
.label_690:
	inc	rcx
	cmp	rcx, rbp
	jb	.label_754
.label_740:
	mov	edi, dword ptr [rsp + 0x94]
	call	iswprint
	test	eax, eax
	jne	.label_721
	xor	r13d, r13d
.label_721:
	lea	rdi, [rsp + 0x80]
	add	r12, rbp
	mov	rbx, rdi
	call	mbsinit
	mov	rcx, rbx
	test	eax, eax
	mov	rdi, qword ptr [rsp + 0x30]
	mov	rbp, qword ptr [rsp + 0x20]
	mov	rsi, qword ptr [rsp + 0x58]
	je	.label_789
	jmp	.label_718
.label_691:
	xor	r13d, r13d
	jmp	.label_708
.label_752:
	mov	rbp, -1
	xor	r13d, r13d
	jmp	.label_708
.label_755:
	cmp	dword ptr [rsp + 0x8c], 0
	je	.label_730
	lea	rcx, [rsi + 2]
	cmp	rcx, rbp
	jae	.label_730
	cmp	byte ptr [rdi + rsi + 1], 0x3f
	jne	.label_730
	movsx	edx, byte ptr [rdi + rcx]
	xor	eax, eax
	cmp	edx, 0x3e
	ja	.label_736
	mov	rbx, rsi
	movabs	rsi, 0x7000a38200000000
	bt	rsi, rdx
	jae	.label_700
	cmp	byte ptr [rsp + 6], 0
	jne	.label_803
	cmp	r14, r11
	jae	.label_716
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], 0x3f
.label_716:
	lea	rax, [r14 + 1]
	cmp	rax, r11
	jae	.label_774
	mov	rsi, qword ptr [rsp + 8]
	mov	byte ptr [rsi + rax], 0x22
.label_774:
	lea	rax, [r14 + 2]
	cmp	rax, r11
	jae	.label_756
	mov	rsi, qword ptr [rsp + 8]
	mov	byte ptr [rsi + rax], 0x22
.label_756:
	lea	rax, [r14 + 3]
	cmp	rax, r11
	jae	.label_726
	mov	rsi, qword ptr [rsp + 8]
	mov	byte ptr [rsi + rax], 0x3f
.label_726:
	add	r14, 4
	xor	eax, eax
	mov	rsi, rcx
	mov	r15b, dl
	xor	r13d, r13d
	jmp	.label_708
.label_730:
	xor	eax, eax
.label_776:
	xor	r13d, r13d
	jmp	.label_708
.label_786:
	add	qword ptr [rsp + 0x60], rsi
	xor	eax, eax
	mov	rbp, qword ptr [rsp + 0x20]
	jmp	.label_771
	nop	word ptr cs:[rax + rax]
.label_731:
	inc	r14
	mov	r15b, byte ptr [rdi + rsi + 1]
	mov	rsi, rdx
.label_771:
	test	r8b, r8b
	je	.label_777
	mov	ecx, dword ptr [rsp + 0x54]
	test	cl, 1
	je	.label_778
	cmp	r14, r11
	jae	.label_780
	mov	rdx, qword ptr [rsp + 8]
	mov	byte ptr [rdx + r14], 0x5c
.label_780:
	inc	r14
	mov	dword ptr [rsp + 0x54], 0
	jmp	.label_778
	nop	dword ptr [rax]
.label_777:
	cmp	byte ptr [rsp + 6], 0
	jne	.label_280
	cmp	r12d, 2
	jne	.label_790
	mov	eax, r9d
	and	al, 1
	jne	.label_790
	cmp	r14, r11
	jae	.label_793
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], 0x27
.label_793:
	lea	rax, [r14 + 1]
	cmp	rax, r11
	jae	.label_795
	mov	rdx, qword ptr [rsp + 8]
	mov	byte ptr [rdx + rax], 0x24
.label_795:
	lea	rax, [r14 + 2]
	cmp	rax, r11
	jae	.label_799
	mov	rdx, qword ptr [rsp + 8]
	mov	byte ptr [rdx + rax], 0x27
.label_799:
	add	r14, 3
	mov	r9b, 1
.label_790:
	cmp	r14, r11
	jae	.label_729
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], 0x5c
.label_729:
	lea	rax, [r14 + 1]
	cmp	rax, r11
	jae	.label_806
	mov	edx, r15d
	shr	dl, 6
	or	dl, 0x30
	mov	rbx, qword ptr [rsp + 8]
	mov	byte ptr [rbx + rax], dl
.label_806:
	lea	rax, [r14 + 2]
	cmp	rax, r11
	jae	.label_712
	mov	edx, r15d
	shr	dl, 3
	and	dl, 7
	or	dl, 0x30
	mov	rbx, qword ptr [rsp + 8]
	mov	byte ptr [rbx + rax], dl
.label_712:
	add	r14, 3
	and	r15b, 7
	or	r15b, 0x30
	mov	al, 1
.label_778:
	lea	rdx, [rsi + 1]
	cmp	qword ptr [rsp + 0x60], rdx
	jbe	.label_713
	test	r9b, 1
	je	.label_692
	mov	ebx, eax
	and	bl, 1
	jne	.label_692
	mov	rbx, rsi
	cmp	r14, r11
	jae	.label_802
	mov	rsi, qword ptr [rsp + 8]
	mov	byte ptr [rsi + r14], 0x27
.label_802:
	lea	rsi, [r14 + 1]
	cmp	rsi, r11
	jae	.label_723
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + rsi], 0x27
.label_723:
	add	r14, 2
	xor	r9d, r9d
	mov	rsi, rbx
.label_692:
	cmp	r14, r11
	jae	.label_731
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + r14], r15b
	jmp	.label_731
	nop	word ptr cs:[rax + rax]
.label_713:
	test	r9b, 1
	je	.label_738
	and	al, 1
	jne	.label_738
	cmp	r14, r11
	jae	.label_739
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], 0x27
.label_739:
	lea	rax, [r14 + 1]
	cmp	rax, r11
	jae	.label_734
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + rax], 0x27
.label_734:
	add	r14, 2
	xor	r9d, r9d
.label_738:
	mov	ebx, r15d
.label_770:
	cmp	r14, r11
	jae	.label_759
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], bl
.label_759:
	inc	r14
	shl	r13b, 7
	sar	r13b, 7
	and	r13b, r10b
	mov	r10d, r13d
	jmp	.label_727
.label_794:
	xor	r13d, r13d
.label_791:
	mov	rdi, qword ptr [rsp + 0x30]
	mov	rsi, qword ptr [rsp + 0x58]
	jmp	.label_718
.label_797:
	mov	rbp, qword ptr [rsp + 0x20]
	cmp	rbp, rbx
	mov	rdi, qword ptr [rsp + 0x30]
	jbe	.label_761
	mov	rsi, qword ptr [rsp + 0x58]
.label_768:
	mov	rax, qword ptr [rsp + 0x60]
	cmp	byte ptr [rax + r12], 0
	je	.label_714
	lea	rax, [rsi + r12 + 1]
	inc	r12
	cmp	rax, rbp
	jb	.label_768
	xor	r13d, r13d
	jmp	.label_718
.label_761:
	xor	r13d, r13d
	mov	rsi, qword ptr [rsp + 0x58]
	jmp	.label_718
.label_714:
	xor	r13d, r13d
	jmp	.label_718
.label_736:
	xor	r13d, r13d
	jmp	.label_708
.label_700:
	xor	r13d, r13d
	mov	rsi, rbx
	jmp	.label_708
	nop	dword ptr [rax + rax]
.label_701:
	mov	rcx, rsi
.label_707:
	cmp	r12d, 2
	setne	al
	test	r14, r14
	setne	dl
	cmp	byte ptr [rsp + 6], 0
	je	.label_782
	or	al, dl
	je	.label_785
.label_782:
	cmp	r12d, 2
	setne	al
	cmp	byte ptr [rsp + 6], 0
	setne	dl
	mov	rsi, qword ptr [rsp + 0xa0]
	test	sil, 1
	mov	bl, byte ptr [rsp + 0x2c]
	mov	rsi, qword ptr [rsp + 0xb0]
	je	.label_787
	or	al, dl
	jne	.label_787
	test	r10b, 1
	jne	.label_796
	cmp	qword ptr [rsp + 0x68], 0
	je	.label_787
	test	r11, r11
	mov	r15d, r12d
	mov	al, bl
	mov	qword ptr [rsp + 0x20], rcx
	mov	r12d, esi
	mov	rbp, qword ptr [rsp + 0x68]
	je	.label_800
.label_787:
	mov	rdx, qword ptr [rsp + 0x48]
	test	rdx, rdx
	je	.label_804
	cmp	byte ptr [rsp + 6], 0
	mov	rcx, qword ptr [rsp + 8]
	jne	.label_693
	mov	al, byte ptr [rdx]
	test	al, al
	je	.label_693
	inc	rdx
	nop	word ptr cs:[rax + rax]
.label_703:
	cmp	r14, r11
	jae	.label_745
	mov	byte ptr [rcx + r14], al
.label_745:
	inc	r14
	movzx	eax, byte ptr [rdx]
	inc	rdx
	test	al, al
	jne	.label_703
	jmp	.label_693
.label_741:
	mov	qword ptr [rsp + 0x20], rbp
.label_280:
	mov	rdx, rdi
	jmp	.label_710
.label_728:
	mov	qword ptr [rsp + 0x20], rbp
.label_696:
	mov	rdx, rdi
	mov	eax, 2
.label_720:
	mov	qword ptr [rsp + 0x38], rax
.label_710:
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
.label_758:
	mov	r14, rax
.label_760:
	mov	rax, r14
	add	rsp, 0xb8
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_785:
	mov	rdx, rdi
	mov	qword ptr [rsp + 0x20], rcx
	jmp	.label_710
.label_796:
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
	jmp	.label_758
.label_804:
	mov	rcx, qword ptr [rsp + 8]
.label_693:
	cmp	r14, r11
	jae	.label_760
	mov	byte ptr [rcx + r14], 0
	jmp	.label_760
.label_803:
	mov	qword ptr [rsp + 0x20], rbp
	mov	rdx, rdi
	mov	eax, 5
	jmp	.label_720
.label_798:
	call	abort
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x404f30

	.globl version_etc_va
	.type version_etc_va, @function
version_etc_va:
	movsxd	r10, dword ptr [r8]
	cmp	r10, 0x28
	ja	.label_818
	mov	r9, r10
	add	r9, qword ptr [r8 + 0x10]
	lea	r10d, [r10 + 8]
	mov	dword ptr [r8], r10d
	jmp	.label_820
.label_818:
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
.label_820:
	sub	rsp, 0x58
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp], rax
	xor	r9d, r9d
	test	rax, rax
	je	.label_808
	cmp	r10d, 0x29
	jae	.label_817
	movsxd	r9, r10d
	add	r9, qword ptr [r8 + 0x10]
	add	r10d, 8
	mov	dword ptr [r8], r10d
	jmp	.label_819
.label_817:
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
.label_819:
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp + 8], rax
	mov	r9d, 1
	test	rax, rax
	je	.label_808
	cmp	r10d, 0x29
	jae	.label_815
	movsxd	r9, r10d
	add	r9, qword ptr [r8 + 0x10]
	add	r10d, 8
	mov	dword ptr [r8], r10d
	jmp	.label_816
.label_815:
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
.label_816:
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp + 0x10], rax
	mov	r9d, 2
	test	rax, rax
	je	.label_808
	cmp	r10d, 0x29
	jae	.label_813
	movsxd	r9, r10d
	add	r9, qword ptr [r8 + 0x10]
	add	r10d, 8
	mov	dword ptr [r8], r10d
	jmp	.label_814
.label_813:
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
.label_814:
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp + 0x18], rax
	mov	r9d, 3
	test	rax, rax
	je	.label_808
	cmp	r10d, 0x29
	jae	.label_811
	movsxd	r9, r10d
	add	r9, qword ptr [r8 + 0x10]
	add	r10d, 8
	mov	dword ptr [r8], r10d
	jmp	.label_812
.label_811:
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
.label_812:
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp + 0x20], rax
	mov	r9d, 4
	test	rax, rax
	je	.label_808
	cmp	r10d, 0x29
	jae	.label_809
	movsxd	r9, r10d
	add	r9, qword ptr [r8 + 0x10]
	add	r10d, 8
	mov	dword ptr [r8], r10d
	jmp	.label_810
.label_809:
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
.label_810:
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp + 0x28], rax
	mov	r9d, 5
	test	rax, rax
	je	.label_808
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp + 0x30], rax
	mov	r9d, 6
	test	rax, rax
	je	.label_808
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp + 0x38], rax
	mov	r9d, 7
	test	rax, rax
	je	.label_808
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp + 0x40], rax
	mov	r9d, 8
	test	rax, rax
	je	.label_808
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp + 0x48], rax
	cmp	rax, 1
	mov	r9d, 9
	sbb	r9, -1
.label_808:
	lea	r8, [rsp]
	call	version_etc_arn
	add	rsp, 0x58
	ret	
	nop	word ptr cs:[rax + rax]
.label_143:
	call	xalloc_die
	nop	word ptr cs:[rax + rax]
	push	r14
	push	rbx
	push	rax
	mov	rbx, rdi
	call	malloc
	mov	r14, rax
	test	rbx, rbx
	je	.label_140
	test	r14, r14
	je	.label_143
.label_140:
	xor	esi, esi
	mov	rdi, r14
	mov	rdx, rbx
	call	memset
	mov	rax, r14
	add	rsp, 8
	pop	rbx
	pop	r14
	ret	
	mov	qword ptr [rip + file_name],  rdi
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x405170

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
	mov	r13, rdi
	mov	r15, qword ptr [r13 + 0x30]
	mov	rdx, qword ptr [r13 + 0x40]
	mov	rax, qword ptr [r13 + 0x58]
	cmp	rdx, rax
	cmovg	rdx, rax
	cmp	byte ptr [r13 + 0x8a], 0
	jne	.label_853
	cmp	qword ptr [r13 + 0x78], 0
	jne	.label_853
	cmp	byte ptr [r13 + 0x8c], 0
	je	.label_863
.label_853:
	mov	r12, qword ptr [r13 + 0x38]
	jmp	.label_831
.label_863:
	cmp	rdx, r15
	jle	.label_870
	lea	rax, [r13 + 0x78]
	mov	qword ptr [rsp + 0x20], rax
	lea	rax, [r13 + 0x20]
	mov	qword ptr [rsp + 8], rax
	jmp	.label_844
.label_195:
	lea	rax, [rbp + 1]
	cmp	rax, 2
	jb	.label_172
	cmp	rbp, -2
	jne	.label_469
	mov	rax, qword ptr [r13 + 0x40]
	cmp	rax, qword ptr [r13 + 0x58]
	jl	.label_469
.label_172:
	mov	rax, qword ptr [r13 + 0x28]
	add	rax, r15
	mov	rcx, qword ptr [r13]
	mov	rdx, qword ptr [r13 + 8]
	movzx	eax, byte ptr [rcx + rax]
	mov	byte ptr [rdx + r15], al
	mov	rcx, qword ptr [r13 + 0x10]
	mov	dword ptr [rcx + r15*4], eax
	inc	r15
	cmp	rbp, -1
	jne	.label_176
	mov	rax, qword ptr [rsp + 0x10]
	mov	rcx, qword ptr [rsp + 8]
	mov	qword ptr [rcx], rax
	jmp	.label_176
	nop	
.label_844:
	mov	r14, rdx
	mov	rbp, qword ptr [r13]
	mov	rbx, qword ptr [r13 + 0x28]
	lea	rax, [rbx + r15]
	movzx	r12d, byte ptr [rbp + rax]
	test	r12b, r12b
	js	.label_832
	mov	rdi, qword ptr [rsp + 8]
	call	mbsinit
	test	eax, eax
	je	.label_832
	call	__ctype_toupper_loc
	mov	rax, qword ptr [rax]
	movzx	eax, byte ptr [rax + r12*4]
	mov	rcx, qword ptr [r13 + 8]
	mov	byte ptr [rcx + r15], al
	mov	rax, qword ptr [r13 + 8]
	mov	rcx, qword ptr [r13 + 0x10]
	movzx	eax, byte ptr [rax + r15]
	mov	dword ptr [rcx + r15*4], eax
	inc	r15
.label_176:
	mov	rax, r15
	jmp	.label_206
	nop	dword ptr [rax]
.label_832:
	mov	rdx, r14
	sub	rdx, r15
	mov	rcx, qword ptr [rsp + 8]
	mov	rax, qword ptr [rcx]
	mov	qword ptr [rsp + 0x10], rax
	add	rbp, rbx
	add	rbp, r15
	lea	rdi, [rsp + 4]
	mov	rsi, rbp
	call	rpl_mbrtowc
	mov	rbp, rax
	lea	rax, [rbp - 1]
	cmp	rax, -4
	ja	.label_195
	mov	edi, dword ptr [rsp + 4]
	call	towupper
	mov	r12d, eax
	cmp	r12d, dword ptr [rsp + 4]
	lea	rbx, [rsp + 0x30]
	jne	.label_198
	mov	rdi, qword ptr [r13 + 8]
	add	rdi, r15
	mov	rsi, qword ptr [r13]
	add	rsi, qword ptr [r13 + 0x28]
	add	rsi, r15
	jmp	.label_199
	nop	word ptr cs:[rax + rax]
.label_198:
	mov	rdi, rbx
	mov	esi, r12d
	lea	rdx, [rsp + 0x10]
	call	wcrtomb
	cmp	rbp, rax
	jne	.label_203
	mov	rdi, qword ptr [r13 + 8]
	add	rdi, r15
	mov	rsi, rbx
.label_199:
	mov	rdx, rbp
	call	memcpy
	mov	rcx, qword ptr [r13 + 0x10]
	mov	dword ptr [rcx + r15*4], r12d
	lea	rbx, [rbp + r15]
	lea	rax, [r15 + 1]
	cmp	rax, rbx
	jge	.label_206
	lea	rdi, [rcx + r15*4 + 4]
	lea	rdx, [rbp*4 - 4]
	mov	esi, 0xff
	call	memset
	mov	rax, rbx
.label_206:
	mov	rdx, r14
	cmp	rdx, rax
	mov	r15, rax
	jg	.label_844
	jmp	.label_861
.label_203:
	mov	r12, r15
	mov	rdx, r14
	mov	rcx, qword ptr [rsp + 8]
	mov	rsi, qword ptr [rsp + 0x20]
	jmp	.label_216
.label_469:
	mov	rax, qword ptr [rsp + 0x10]
	mov	rcx, qword ptr [rsp + 8]
	mov	qword ptr [rcx], rax
.label_870:
	mov	rax, r15
.label_861:
	mov	qword ptr [r13 + 0x30], rax
	mov	qword ptr [r13 + 0x38], rax
	jmp	.label_858
.label_831:
	cmp	r15, rdx
	jge	.label_862
	lea	rcx, [r13 + 0x20]
	lea	rsi, [r13 + 0x78]
.label_216:
	mov	qword ptr [rsp + 0x18], rdx
	sub	rdx, r15
	mov	rax, qword ptr [rcx]
	mov	qword ptr [rsp + 0x10], rax
	mov	rax, qword ptr [rsi]
	test	rax, rax
	mov	qword ptr [rsp + 0x20], r12
	mov	qword ptr [rsp + 8], rcx
	jne	.label_864
	mov	rbp, qword ptr [r13]
	add	rbp, qword ptr [r13 + 0x28]
	add	rbp, r12
.label_833:
	lea	rdi, [rsp + 4]
	mov	rsi, rbp
	call	rpl_mbrtowc
	mov	r14, rax
	lea	r12, [r14 - 1]
	cmp	r12, -4
	ja	.label_873
	mov	edi, dword ptr [rsp + 4]
	call	towupper
	mov	ebx, eax
	cmp	ebx, dword ptr [rsp + 4]
	je	.label_866
	lea	rdi, [rsp + 0x30]
	lea	rdx, [rsp + 0x10]
	mov	esi, ebx
	call	wcrtomb
	mov	rcx, rax
	sub	rax, r14
	jne	.label_826
	mov	rdi, qword ptr [r13 + 8]
	add	rdi, r15
	lea	rsi, [rsp + 0x30]
	jmp	.label_830
.label_864:
	lea	rbp, [rsp + 0x30]
	movsxd	r8, dword ptr [r13 + 0x90]
	test	r8, r8
	jle	.label_833
	xor	esi, esi
.label_839:
	cmp	rsi, rdx
	jge	.label_833
	mov	rdi, qword ptr [r13]
	add	rdi, qword ptr [r13 + 0x28]
	add	rdi, r12
	movzx	edi, byte ptr [rsi + rdi]
	movzx	ebx, byte ptr [rax + rdi]
	mov	byte ptr [rsp + rsi + 0x30], bl
	inc	rsi
	cmp	rsi, r8
	jl	.label_839
	jmp	.label_833
.label_873:
	lea	rax, [r14 + 1]
	cmp	rax, 2
	jb	.label_852
	cmp	r14, -2
	jne	.label_854
	mov	rax, qword ptr [r13 + 0x40]
	cmp	rax, qword ptr [r13 + 0x58]
	jl	.label_854
.label_852:
	mov	rax, qword ptr [r13 + 0x28]
	mov	r12, qword ptr [rsp + 0x20]
	add	rax, r12
	mov	rdx, qword ptr [r13]
	mov	rcx, qword ptr [r13 + 0x78]
	mov	al, byte ptr [rdx + rax]
	movzx	edx, al
	test	rcx, rcx
	jne	.label_859
.label_857:
	movzx	eax, al
	mov	rcx, qword ptr [r13 + 8]
	mov	byte ptr [rcx + r15], al
	cmp	byte ptr [r13 + 0x8c], 0
	jne	.label_867
.label_865:
	inc	r12
	mov	rcx, qword ptr [r13 + 0x10]
	mov	dword ptr [rcx + r15*4], eax
	inc	r15
	cmp	r14, -1
	jne	.label_843
	mov	rax, qword ptr [rsp + 0x10]
	mov	rcx, qword ptr [rsp + 8]
	mov	qword ptr [rcx], rax
	jmp	.label_843
.label_826:
	cmp	rcx, -1
	je	.label_866
	lea	rbp, [rcx + r15]
	mov	rdi, qword ptr [r13 + 0x40]
	cmp	rbp, rdi
	jbe	.label_878
.label_854:
	mov	rax, qword ptr [rsp + 0x10]
	mov	rcx, qword ptr [rsp + 8]
	mov	qword ptr [rcx], rax
	mov	r12, qword ptr [rsp + 0x20]
.label_862:
	mov	qword ptr [r13 + 0x30], r15
	mov	qword ptr [r13 + 0x38], r12
.label_858:
	xor	eax, eax
.label_841:
	add	rsp, 0x78
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_866:
	mov	rdi, qword ptr [r13 + 8]
	add	rdi, r15
	mov	rsi, rbp
.label_830:
	mov	rdx, r14
	call	memcpy
	cmp	byte ptr [r13 + 0x8c], 0
	mov	r12, qword ptr [rsp + 0x20]
	jne	.label_837
.label_829:
	add	r12, r14
	mov	rax, qword ptr [r13 + 0x10]
	mov	dword ptr [rax + r15*4], ebx
	lea	rbp, [r14 + r15]
	inc	r15
	cmp	r15, rbp
	jge	.label_843
	lea	rdi, [rax + r15*4]
	lea	rdx, [r14*4 - 4]
	mov	esi, 0xff
	call	memset
	jmp	.label_823
.label_843:
	mov	rbp, r15
.label_823:
	mov	rdx, qword ptr [rsp + 0x18]
	mov	r15, rbp
	jmp	.label_831
.label_837:
	mov	rax, qword ptr [r13 + 0x18]
	xor	esi, esi
	cmp	r14, 4
	jb	.label_860
	xor	esi, esi
	mov	rcx, r14
	and	rcx, 0xfffffffffffffffc
	je	.label_860
	movq	xmm0, r12
	pshufd	xmm0, xmm0, 0x44
	lea	rdi, [rcx - 4]
	shr	rdi, 2
	lea	edx, [rdi + 1]
	and	edx, 1
	mov	esi, 1
	test	rdi, rdi
	je	.label_868
	lea	rsi, [rdx - 1]
	sub	rsi, rdi
	mov	edi, 1
	movq	xmm1, rdi
	pslldq	xmm1, 8
	movdqa	xmm8, xmmword ptr [rip + label_836]
	movdqa	xmm3, xmmword ptr [rip + label_821]
	movdqa	xmm4, xmmword ptr [rip + label_846]
	movdqa	xmm5, xmmword ptr [rip + label_845]
.label_824:
	movdqa	xmm6, xmm1
	paddq	xmm6, xmm8
	movdqa	xmm7, xmm1
	paddq	xmm7, xmm0
	movdqa	xmm2, xmm7
	paddq	xmm2, xmm3
	movq	rdi, xmm1
	add	rdi, r15
	movdqu	xmmword ptr [rax + rdi*8], xmm7
	movdqu	xmmword ptr [rax + rdi*8 + 0x10], xmm2
	paddq	xmm1, xmm4
	paddq	xmm7, xmm5
	movq	rdi, xmm6
	paddq	xmm6, xmm0
	add	rdi, r15
	movdqu	xmmword ptr [rax + rdi*8], xmm6
	movdqu	xmmword ptr [rax + rdi*8 + 0x10], xmm7
	add	rsi, 2
	jne	.label_824
	jmp	.label_838
.label_878:
	mov	qword ptr [rsp + 0x18], rax
	mov	rax, qword ptr [r13 + 0x18]
	test	rax, rax
	mov	qword ptr [rsp + 0x28], rcx
	jne	.label_851
	shl	rdi, 3
	call	malloc
	mov	rcx, qword ptr [rsp + 0x28]
	mov	qword ptr [r13 + 0x18], rax
	test	rax, rax
	je	.label_877
.label_851:
	cmp	byte ptr [r13 + 0x8c], 0
	jne	.label_825
	test	r15, r15
	je	.label_856
	xor	edx, edx
	cmp	r15, 4
	jb	.label_828
	xor	edx, edx
	mov	r9, r15
	and	r9, 0xfffffffffffffffc
	je	.label_828
	lea	rsi, [r9 - 4]
	mov	rdi, rsi
	shr	rdi, 2
	lea	edx, [rdi + 1]
	and	edx, 3
	mov	r8d, 1
	cmp	rsi, 0xc
	jae	.label_871
	movq	xmm0, r8
	pslldq	xmm0, 8
	jmp	.label_842
.label_868:
	movq	xmm1, rsi
	pslldq	xmm1, 8
.label_838:
	test	rdx, rdx
	je	.label_879
	paddq	xmm0, xmm1
	movq	rdx, xmm1
	add	rdx, r15
	movdqu	xmmword ptr [rax + rdx*8], xmm0
	paddq	xmm0, xmmword ptr [rip + label_821]
	movdqu	xmmword ptr [rax + rdx*8 + 0x10], xmm0
.label_879:
	cmp	r14, rcx
	mov	rsi, rcx
	je	.label_829
.label_860:
	mov	rcx, r14
	sub	rcx, rsi
	lea	rdx, [rsi + r12]
	add	rsi, r15
	lea	rax, [rax + rsi*8]
.label_834:
	mov	qword ptr [rax], rdx
	inc	rdx
	add	rax, 8
	dec	rcx
	jne	.label_834
	jmp	.label_829
.label_877:
	mov	eax, 0xc
	jmp	.label_841
.label_871:
	lea	rsi, [rdx - 1]
	sub	rsi, rdi
	mov	edi, 1
	movq	xmm0, rdi
	pslldq	xmm0, 8
	movdqa	xmm8, xmmword ptr [rip + label_821]
	movdqa	xmm9, xmmword ptr [rip + label_836]
	movdqa	xmm10, xmmword ptr [rip + label_845]
	movdqa	xmm11, xmmword ptr [rip + label_846]
	movdqa	xmm5, xmmword ptr [rip + label_847]
	movdqa	xmm6, xmmword ptr [rip + label_848]
	movdqa	xmm7, xmmword ptr [rip + label_849]
	movdqa	xmm1, xmmword ptr [rip + label_850]
.label_869:
	movdqa	xmm2, xmm0
	paddq	xmm2, xmm8
	movdqa	xmm3, xmm0
	paddq	xmm3, xmm9
	movq	rdi, xmm0
	movdqu	xmmword ptr [rax + rdi*8], xmm0
	movdqu	xmmword ptr [rax + rdi*8 + 0x10], xmm2
	movdqa	xmm2, xmm0
	paddq	xmm2, xmm10
	movdqa	xmm4, xmm0
	paddq	xmm4, xmm11
	movq	rdi, xmm3
	movdqu	xmmword ptr [rax + rdi*8], xmm3
	movdqu	xmmword ptr [rax + rdi*8 + 0x10], xmm2
	movdqa	xmm2, xmm0
	paddq	xmm2, xmm5
	movdqa	xmm3, xmm0
	paddq	xmm3, xmm6
	movq	rdi, xmm4
	movdqu	xmmword ptr [rax + rdi*8], xmm4
	movdqu	xmmword ptr [rax + rdi*8 + 0x10], xmm2
	movdqa	xmm2, xmm0
	paddq	xmm2, xmm7
	paddq	xmm0, xmm1
	movq	rdi, xmm3
	movdqu	xmmword ptr [rax + rdi*8], xmm3
	movdqu	xmmword ptr [rax + rdi*8 + 0x10], xmm2
	add	rsi, 4
	jne	.label_869
.label_842:
	test	rdx, rdx
	je	.label_835
	neg	rdx
	movdqa	xmm1, xmmword ptr [rip + label_821]
	movdqa	xmm2, xmmword ptr [rip + label_836]
.label_822:
	movdqa	xmm3, xmm0
	movq	rsi, xmm0
	movdqu	xmmword ptr [rax + rsi*8], xmm0
	paddq	xmm0, xmm1
	paddq	xmm3, xmm2
	movdqu	xmmword ptr [rax + rsi*8 + 0x10], xmm0
	inc	rdx
	movdqa	xmm0, xmm3
	jne	.label_822
.label_835:
	cmp	r15, r9
	mov	rdx, r9
	je	.label_856
.label_828:
	mov	qword ptr [rax + rdx*8], rdx
	inc	rdx
	cmp	r15, rdx
	jne	.label_828
.label_856:
	mov	byte ptr [r13 + 0x8c], 1
.label_825:
	mov	rdi, qword ptr [r13 + 8]
	add	rdi, r15
	lea	rsi, [rsp + 0x30]
	mov	rdx, rcx
	call	memcpy
	mov	rdi, qword ptr [rsp + 0x28]
	mov	rcx, qword ptr [r13 + 0x10]
	mov	dword ptr [rcx + r15*4], ebx
	mov	rdx, qword ptr [r13 + 0x18]
	mov	rbx, qword ptr [rsp + 0x20]
	mov	qword ptr [rdx + r15*8], rbx
	cmp	rdi, 2
	jb	.label_827
	lea	r10, [rdi - 1]
	mov	eax, 1
	cmp	r10, 4
	jb	.label_872
	mov	rsi, r10
	and	rsi, 0xfffffffffffffffc
	mov	r8, r10
	and	r8, 0xfffffffffffffffc
	mov	eax, 1
	je	.label_872
	mov	rax, rsi
	or	rax, 1
	movq	xmm0, r14
	pshufd	xmm6, xmm0, 0x44
	movq	xmm1, r12
	pshufd	xmm11, xmm1, 0x44
	mov	r9, rbx
	movq	xmm2, rbx
	pshufd	xmm12, xmm2, 0x44
	movdqa	xmm7, xmmword ptr [rip + label_874]
	movdqa	xmm8, xmmword ptr [rip + label_821]
	movdqa	xmm9, xmmword ptr [rip + label_836]
	movdqa	xmm10, xmmword ptr [rip + label_875]
	pxor	xmm6, xmm10
	pshufd	xmm13, xmmword ptr [rip + label_876],  0xe8
	mov	rdi, r8
.label_855:
	movdqa	xmm4, xmm7
	paddq	xmm4, xmm8
	movdqa	xmm3, xmm7
	paddq	xmm3, xmm9
	movdqa	xmm5, xmm7
	pxor	xmm5, xmm10
	movdqa	xmm0, xmm6
	pcmpgtd	xmm0, xmm5
	pshufd	xmm2, xmm0, 0xa0
	pcmpeqd	xmm5, xmm6
	pshufd	xmm1, xmm5, 0xf5
	pand	xmm1, xmm2
	pshufd	xmm5, xmm0, 0xf5
	por	xmm5, xmm1
	movdqa	xmm0, xmm4
	pxor	xmm0, xmm10
	movdqa	xmm1, xmm6
	pcmpgtd	xmm1, xmm0
	pshufd	xmm2, xmm1, 0xa0
	pcmpeqd	xmm0, xmm6
	pshufd	xmm0, xmm0, 0xf5
	pand	xmm0, xmm2
	pshufd	xmm1, xmm1, 0xf5
	por	xmm1, xmm0
	movq	rbx, xmm7
	pand	xmm7, xmm5
	pandn	xmm5, xmm11
	por	xmm5, xmm7
	pand	xmm4, xmm1
	pandn	xmm1, xmm11
	por	xmm1, xmm4
	paddq	xmm5, xmm12
	paddq	xmm1, xmm12
	add	rbx, r15
	movdqu	xmmword ptr [rdx + rbx*8], xmm5
	movdqu	xmmword ptr [rdx + rbx*8 + 0x10], xmm1
	movq	qword ptr [rcx + rbx*4], xmm13
	movq	qword ptr [rcx + rbx*4 + 8], xmm13
	add	rdi, -4
	movdqa	xmm7, xmm3
	jne	.label_855
	cmp	r10, r8
	mov	rbx, r9
	mov	rdi, qword ptr [rsp + 0x28]
	je	.label_827
.label_872:
	lea	rcx, [rcx + r15*4]
	lea	rdx, [rdx + r15*8]
.label_880:
	cmp	rax, r14
	mov	rsi, r12
	cmovb	rsi, rax
	add	rsi, rbx
	mov	qword ptr [rdx + rax*8], rsi
	mov	dword ptr [rcx + rax*4], 0xffffffff
	inc	rax
	cmp	rdi, rax
	jne	.label_880
.label_827:
	mov	rax, qword ptr [r13 + 0x58]
	mov	rcx, qword ptr [rsp + 0x18]
	add	rax, rcx
	mov	qword ptr [r13 + 0x58], rax
	cmp	qword ptr [r13 + 0x60], rbx
	mov	r12, rbx
	jle	.label_840
	add	qword ptr [r13 + 0x68], rcx
.label_840:
	mov	rdx, qword ptr [r13 + 0x40]
	cmp	rdx, rax
	cmovg	rdx, rax
	add	r12, r14
	mov	r15, rbp
	jmp	.label_831
.label_859:
	mov	al, byte ptr [rcx + rdx]
	jmp	.label_857
.label_867:
	mov	rcx, qword ptr [r13 + 0x18]
	mov	qword ptr [rcx + r15*8], r12
	jmp	.label_865
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x405aa0

	.globl mbsstr_trimmed_wordbounded
	.type mbsstr_trimmed_wordbounded, @function
mbsstr_trimmed_wordbounded:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x88
	mov	rax, rsi
	mov	rbp, rdi
	mov	esi, 2
	mov	rdi, rax
	call	trim2
	mov	r14, rax
	cmp	byte ptr [rbp], 0
	je	.label_530
	lea	r12, [rsp + 8]
	lea	r15, [rsp + 0x48]
	nop	dword ptr [rax + rax]
.label_881:
	mov	rdi, rbp
	mov	rsi, r14
	call	mbsstr
	mov	rbx, rax
	test	rbx, rbx
	je	.label_530
	call	__ctype_get_mb_cur_max
	cmp	rax, 2
	jb	.label_889
	mov	qword ptr [rsp + 0x18], rbp
	mov	byte ptr [rsp + 8], 0
	mov	qword ptr [rsp + 0xc], 0
	mov	byte ptr [rsp + 0x14], 0
	mov	r13b, 1
	cmp	rbp, rbx
	jae	.label_882
	nop	word ptr cs:[rax + rax]
.label_885:
	mov	rdi, r12
	call	mbuiter_multi_next
	mov	rax, qword ptr [rsp + 0x28]
	mov	rdi, rax
	shr	rdi, 0x20
	test	al, al
	je	.label_887
	test	edi, edi
	je	.label_497
.label_887:
	mov	rcx, qword ptr [rsp + 0x18]
	add	rcx, qword ptr [rsp + 0x20]
	mov	qword ptr [rsp + 0x18], rcx
	mov	byte ptr [rsp + 0x14], 0
	cmp	rcx, rbx
	jb	.label_885
	test	al, al
	je	.label_882
	call	iswalnum
	test	eax, eax
	sete	r13b
.label_882:
	mov	qword ptr [rsp + 0x18], rbx
	mov	byte ptr [rsp + 8], 0
	mov	qword ptr [rsp + 0xc], 0
	mov	byte ptr [rsp + 0x14], 0
	mov	qword ptr [rsp + 0x58], r14
	mov	byte ptr [rsp + 0x48], 0
	mov	qword ptr [rsp + 0x4c], 0
	jmp	.label_886
	nop	word ptr cs:[rax + rax]
.label_495:
	mov	rax, qword ptr [rsp + 0x20]
	add	qword ptr [rsp + 0x18], rax
	mov	byte ptr [rsp + 0x14], 0
	mov	rax, qword ptr [rsp + 0x60]
	add	qword ptr [rsp + 0x58], rax
.label_886:
	mov	byte ptr [rsp + 0x54], 0
	mov	rdi, r15
	call	mbuiter_multi_next
	mov	rax, qword ptr [rsp + 0x68]
	test	al, al
	je	.label_340
	shr	rax, 0x20
	je	.label_493
.label_340:
	mov	rdi, r12
	call	mbuiter_multi_next
	mov	rax, qword ptr [rsp + 0x28]
	test	al, al
	je	.label_495
	shr	rax, 0x20
	jne	.label_495
	jmp	.label_497
	nop	word ptr cs:[rax + rax]
.label_889:
	mov	r15, r14
	mov	r13b, 1
	cmp	rbp, rbx
	mov	r14b, 1
	jae	.label_883
	movzx	ebp, byte ptr [rbx - 1]
	call	__ctype_b_loc
	mov	rax, qword ptr [rax]
	test	byte ptr [rax + rbp*2], 8
	sete	r14b
.label_883:
	mov	rdi, r15
	call	strlen
	movzx	ebp, byte ptr [rbx + rax]
	test	rbp, rbp
	je	.label_888
	call	__ctype_b_loc
	mov	rax, qword ptr [rax]
	test	byte ptr [rax + rbp*2], 8
	sete	r13b
.label_888:
	mov	bpl, 1
	test	r14b, r13b
	mov	r14, r15
	jne	.label_521
	cmp	byte ptr [rbx], 0
	je	.label_530
	inc	rbx
	mov	rbp, rbx
	lea	r15, [rsp + 0x48]
	jmp	.label_884
	nop	dword ptr [rax + rax]
.label_493:
	mov	rdi, r12
	call	mbuiter_multi_next
	mov	rax, qword ptr [rsp + 0x28]
	mov	rdi, rax
	shr	rdi, 0x20
	test	edi, edi
	sete	cl
	test	al, al
	setne	dl
	test	al, al
	mov	bpl, 1
	mov	al, 1
	je	.label_453
	and	dl, cl
	mov	al, 1
	jne	.label_453
	call	iswalnum
	test	eax, eax
	sete	al
.label_453:
	test	r13b, r13b
	je	.label_520
	test	al, al
	jne	.label_521
.label_520:
	mov	qword ptr [rsp + 0x18], rbx
	mov	byte ptr [rsp + 8], 0
	mov	qword ptr [rsp + 0xc], 0
	mov	byte ptr [rsp + 0x14], 0
	mov	rdi, r12
	call	mbuiter_multi_next
	mov	rax, qword ptr [rsp + 0x28]
	test	al, al
	je	.label_528
	shr	rax, 0x20
	je	.label_530
.label_528:
	add	rbx, qword ptr [rsp + 0x20]
	mov	rbp, rbx
.label_884:
	cmp	byte ptr [rbp], 0
	jne	.label_881
.label_530:
	xor	ebp, ebp
.label_521:
	mov	rdi, r14
	call	free
	mov	eax, ebp
	add	rsp, 0x88
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_497:
	call	abort
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x405d30

	.globl xalloc_die
	.type xalloc_die, @function
xalloc_die:
	push	rbx
	mov	ebx, dword ptr [rip + exit_failure]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_890
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	xor	esi, esi
	mov	edx, OFFSET FLAT:label_378
	xor	eax, eax
	mov	edi, ebx
	call	error
	call	abort
	sub	rsp, 0x38
	mov	rax, qword ptr [rip + label_166]
	mov	qword ptr [rsp + 0x30], rax
	movups	xmm0, xmmword ptr [rip + label_167]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0, xmmword ptr [rip + label_168]
	movaps	xmmword ptr [rsp + 0x10], xmm0
	movups	xmm0, xmmword ptr [rip + default_quoting_options]
	movaps	xmmword ptr [rsp], xmm0
	mov	dword ptr [rsp], 0xa
	test	rdi, rdi
	je	.label_550
	test	rsi, rsi
	je	.label_550
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
.label_550:
	call	abort
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x405dd0

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
	jle	.label_896
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
.label_891:
	mov	rax, qword ptr [r11 + 8]
	mov	r14, qword ptr [rax + rbx*8]
	mov	rax, qword ptr [r10]
	mov	rsi, r14
	shl	rsi, 4
	lea	rdi, [rax + rsi]
	mov	al, byte ptr [rax + rsi + 8]
	cmp	al, 9
	je	.label_900
	cmp	al, 8
	je	.label_893
	cmp	al, 4
	jne	.label_892
	cmp	r8, -1
	je	.label_892
	lea	r13, [r8 + r8*4]
	shl	r13, 3
	mov	rax, qword ptr [rsp + 0x20]
	add	r13, qword ptr [rax + 0xd8]
	mov	r12d, ecx
	mov	qword ptr [rsp + 0x48], rbx
	mov	qword ptr [rsp + 0x40], r14
	nop	dword ptr [rax]
.label_899:
	mov	ebp, 7
	cmp	qword ptr [r13], r14
	jne	.label_526
	cmp	rdx, 0x3f
	jg	.label_895
	movzx	eax, word ptr [r13 + 0x22]
	test	qword ptr [rsp + 0x50], rax
	je	.label_526
.label_895:
	mov	rax, qword ptr [r10 + 0x28]
	lea	rcx, [r14 + r14*2]
	mov	rax, qword ptr [rax + rcx*8 + 0x10]
	mov	rcx, qword ptr [rax]
	mov	ebp, 1
	cmp	rcx, r15
	jne	.label_902
	mov	ecx, dword ptr [rsp + 0x1c]
	jmp	.label_599
	nop	dword ptr [rax + rax]
.label_902:
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
	je	.label_599
	test	eax, eax
	jne	.label_603
	cmp	dword ptr [rsp + 0x10], 0
	mov	ecx, r12d
	mov	eax, 0
	cmovne	ecx, eax
	cmp	byte ptr [rsp + 0xb], 0
	mov	ebp, dword ptr [rsp + 0x14]
	je	.label_503
	jmp	.label_599
.label_603:
	xor	ebp, ebp
	cmp	rdx, 0x3f
	jg	.label_526
.label_503:
	movzx	eax, word ptr [r13 + 0x22]
	mov	rcx, qword ptr [rsp + 0x28]
	and	eax, ecx
	mov	word ptr [r13 + 0x22], ax
	xor	ebp, ebp
	nop	word ptr cs:[rax + rax]
.label_526:
	mov	ecx, r12d
.label_599:
	mov	eax, ebp
	and	al, 7
	cmp	al, 7
	je	.label_897
	test	al, al
	jne	.label_898
.label_897:
	cmp	byte ptr [r13 + 0x20], 0
	lea	r13, [r13 + 0x28]
	mov	r12d, ecx
	jne	.label_899
	jmp	.label_892
	nop	word ptr cs:[rax + rax]
.label_900:
	cmp	dword ptr [rsp + 0x10], 0
	je	.label_892
	xor	eax, eax
	jmp	.label_894
	nop	dword ptr [rax + rax]
.label_893:
	cmp	dword ptr [rsp + 0x18], 0
	je	.label_892
	mov	eax, 0xffffffff
.label_894:
	cmp	qword ptr [rdi], rdx
	jne	.label_892
	jmp	.label_901
.label_898:
	test	ebp, ebp
	mov	eax, ecx
	jne	.label_901
	nop	dword ptr [rax]
.label_892:
	inc	rbx
	cmp	rbx, qword ptr [r11]
	jl	.label_891
.label_896:
	mov	eax, dword ptr [rsp + 0xc]
	shr	eax, 1
	and	eax, 1
.label_901:
	add	rsp, 0x58
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x406030

	.globl re_node_set_merge
	.type re_node_set_merge, @function
re_node_set_merge:
	push	r15
	push	r14
	push	r12
	push	rbx
	push	rax
	mov	r14, rsi
	mov	r15, rdi
	test	r14, r14
	je	.label_905
	mov	rax, qword ptr [r14 + 8]
	test	rax, rax
	je	.label_905
	mov	rbx, qword ptr [r15]
	mov	rcx, qword ptr [r15 + 8]
	lea	rdx, [rcx + rax*2]
	cmp	rbx, rdx
	jge	.label_908
	add	rbx, rax
	mov	rdi, qword ptr [r15 + 0x10]
	mov	rsi, rbx
	shl	rsi, 4
	call	realloc
	mov	rcx, rax
	mov	eax, 0xc
	test	rcx, rcx
	je	.label_916
	add	rbx, rbx
	mov	qword ptr [r15 + 0x10], rcx
	mov	qword ptr [r15], rbx
	mov	rcx, qword ptr [r15 + 8]
	mov	rax, qword ptr [r14 + 8]
.label_908:
	test	rcx, rcx
	je	.label_910
	lea	r12, [rcx + rax*2]
	dec	rax
	dec	rcx
	mov	rdx, rax
	or	rdx, rcx
	js	.label_912
	mov	rdx, qword ptr [r15 + 0x10]
	mov	rsi, qword ptr [r14 + 0x10]
	jmp	.label_913
.label_907:
	dec	rax
.label_909:
	dec	rcx
	jmp	.label_904
	nop	word ptr [rax + rax]
.label_913:
	mov	rdi, qword ptr [rsi + rax*8]
	cmp	qword ptr [rdx + rcx*8], rdi
	je	.label_907
	jge	.label_909
	dec	rax
	mov	qword ptr [rdx + r12*8 - 8], rdi
	dec	r12
.label_904:
	mov	rdi, rax
	or	rdi, rcx
	jns	.label_913
.label_912:
	test	rax, rax
	js	.label_915
	lea	rcx, [rax + 1]
	sub	r12, rcx
	lea	rdi, [r12*8]
	add	rdi, qword ptr [r15 + 0x10]
	mov	rsi, qword ptr [r14 + 0x10]
	lea	rdx, [rax*8 + 8]
	call	memcpy
.label_915:
	mov	r9, qword ptr [r15 + 8]
	mov	rax, qword ptr [r14 + 8]
	lea	rcx, [r9 + rax*2 - 1]
	mov	rsi, rcx
	sub	rsi, r12
	inc	rsi
	je	.label_905
	lea	rax, [rsi + r9]
	mov	qword ptr [r15 + 8], rax
	mov	rdi, qword ptr [r15 + 0x10]
.label_903:
	lea	r8, [r9 - 1]
	lea	rdx, [rsi*8]
	nop	dword ptr [rax + rax]
.label_911:
	mov	rax, qword ptr [rdi + rcx*8]
	mov	rbx, qword ptr [rdi + r9*8 - 8]
	cmp	rax, rbx
	jle	.label_906
	dec	rcx
	lea	rbx, [rdi + rdx]
	add	rdx, -8
	dec	rsi
	mov	qword ptr [rbx + r9*8 - 8], rax
	jne	.label_911
	jmp	.label_905
	nop	word ptr cs:[rax + rax]
.label_906:
	lea	rax, [rdi + rdx]
	mov	qword ptr [rax + r9*8 - 8], rbx
	cmp	r9, 1
	mov	r9, r8
	jg	.label_903
	lea	rsi, [rdi + r12*8]
.label_914:
	call	memcpy
.label_905:
	xor	eax, eax
.label_916:
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	ret	
.label_910:
	mov	qword ptr [r15 + 8], rax
	mov	rdi, qword ptr [r15 + 0x10]
	mov	rdx, qword ptr [r14 + 8]
	mov	rsi, qword ptr [r14 + 0x10]
	shl	rdx, 3
	jmp	.label_914
	nop	
	add	qword ptr [rdi + 0x18], rsi
	add	qword ptr [rdi], rsi
	ret	
	nop	dword ptr [rax + rax]
	sub	rsp, 0x38
	mov	rax, qword ptr [rip + label_166]
	mov	qword ptr [rsp + 0x30], rax
	movups	xmm0, xmmword ptr [rip + label_167]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0, xmmword ptr [rip + label_168]
	movaps	xmmword ptr [rsp + 0x10], xmm0
	movups	xmm0, xmmword ptr [rip + default_quoting_options]
	movaps	xmmword ptr [rsp], xmm0
	mov	dword ptr [rsp], 0xa
	test	rsi, rsi
	je	.label_169
	test	rdx, rdx
	je	.label_169
	mov	qword ptr [rsp + 0x28], rsi
	mov	qword ptr [rsp + 0x30], rdx
	lea	rax, [rsp]
	mov	rsi, rcx
	mov	rdx, r8
	mov	rcx, rax
	call	quotearg_n_options
	add	rsp, 0x38
	ret	
.label_169:
	call	abort
	nop	word ptr [rax + rax]
	mov	rdx, -1
	mov	ecx, OFFSET FLAT:default_quoting_options
	jmp	quotearg_n_options
	nop	
	.section	.text
	.align	32
	#Procedure 0x406250

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
	js	.label_920
	mov	eax, dword ptr [r13]
	mov	rbp, qword ptr [rip + slotvec]
	cmp	dword ptr [rip + nslots],  r12d
	mov	qword ptr [rsp + 0x18], r13
	mov	dword ptr [rsp], eax
	mov	qword ptr [rsp + 0x10], rbx
	mov	qword ptr [rsp + 8], r15
	jg	.label_923
	cmp	r12d, 0x7fffffff
	je	.label_918
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
	jne	.label_921
	movups	xmm0, xmmword ptr [rip + slotvec0]
	movups	xmmword ptr [r14], xmm0
.label_921:
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
.label_923:
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
	jbe	.label_919
	mov	rax, qword ptr [rsp + 0x18]
	mov	ebp, dword ptr [rsp]
	jmp	.label_922
.label_919:
	lea	rax, [rbp + r13]
	lea	r12, [rbp + r13 + 8]
	inc	r15
	mov	qword ptr [rax], r15
	mov	eax, OFFSET FLAT:slot0
	cmp	r14, rax
	mov	ebp, dword ptr [rsp]
	je	.label_917
	mov	rdi, r14
	call	free
.label_917:
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
.label_922:
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
.label_920:
	call	abort
.label_918:
	call	xalloc_die
	nop	dword ptr [rax]
	push	r15
	push	r14
	push	rbx
	mov	rbx, rsi
	mov	r14, rdi
	mov	rsi, qword ptr [rbx]
	lea	rax, [rbx + 0x18]
	cmp	rsi, rax
	jne	.label_237
	lea	r15, [r14 + 0x18]
	mov	rdx, qword ptr [rbx + 8]
	mov	rdi, r15
	call	memcpy
	mov	rsi, r15
.label_237:
	mov	qword ptr [r14], rsi
	mov	rax, qword ptr [rbx + 8]
	mov	qword ptr [r14 + 8], rax
	mov	rax, qword ptr [rbx + 0x10]
	test	al, al
	mov	byte ptr [r14 + 0x10], al
	je	.label_245
	shr	rax, 0x20
	mov	dword ptr [r14 + 0x14], eax
.label_245:
	pop	rbx
	pop	r14
	pop	r15
	ret	
	nop	
	.section	.text
	.align	32
	#Procedure 0x406460

	.globl knuth_morris_pratt
	.type knuth_morris_pratt, @function
knuth_morris_pratt:
	push	rbp
	mov	rbp, rsp
	push	r15
	push	r14
	push	r12
	push	rbx
	mov	r14, rcx
	mov	r12, rdx
	mov	rbx, rsi
	mov	r15, rdi
	mov	rax, r12
	shr	rax, 0x3c
	je	.label_932
	xor	eax, eax
	jmp	.label_924
.label_932:
	lea	rdi, [r12*8]
	cmp	rdi, 0xfa0
	ja	.label_928
	mov	rax, rsp
	add	rdi, 0x2e
	and	rdi, 0xfffffffffffffff0
	mov	rcx, rax
	sub	rcx, rdi
	mov	rsp, rcx
	neg	rdi
	lea	rdi, [rax + rdi + 0x1f]
	and	rdi, 0xffffffffffffffe0
	jmp	.label_929
.label_928:
	call	mmalloca
	mov	rdi, rax
.label_929:
	test	rdi, rdi
	je	.label_926
	mov	qword ptr [rdi + 8], 1
	cmp	r12, 3
	jb	.label_934
	mov	eax, 2
	xor	ecx, ecx
	nop	dword ptr [rax]
.label_931:
	mov	dl, byte ptr [rbx + rax - 1]
	jmp	.label_925
	nop	word ptr cs:[rax + rax]
.label_938:
	sub	rcx, qword ptr [rdi + rcx*8]
.label_925:
	cmp	dl, byte ptr [rbx + rcx]
	je	.label_937
	test	rcx, rcx
	jne	.label_938
	mov	qword ptr [rdi + rax*8], rax
	xor	ecx, ecx
	jmp	.label_940
	nop	word ptr cs:[rax + rax]
.label_937:
	inc	rcx
	mov	rdx, rax
	sub	rdx, rcx
	mov	qword ptr [rdi + rax*8], rdx
.label_940:
	inc	rax
	cmp	rax, r12
	jne	.label_931
.label_934:
	mov	qword ptr [r14], 0
	neg	r12
	xor	r8d, r8d
	mov	r9, r15
	jmp	.label_927
.label_926:
	xor	eax, eax
	jmp	.label_924
.label_939:
	add	r9, rdx
	lea	rax, [rdi + r8*8]
	mov	rax, qword ptr [rax + rdx*8]
	add	r15, rax
	sub	r8, rax
	add	r8, rdx
.label_927:
	lea	rsi, [r12 + r8]
	lea	rcx, [rbx + r8]
	xor	edx, edx
	nop	dword ptr [rax]
.label_935:
	movzx	eax, byte ptr [r9 + rdx]
	test	al, al
	je	.label_936
	cmp	byte ptr [rcx + rdx], al
	jne	.label_933
	inc	rdx
	mov	rax, rsi
	add	rax, rdx
	jne	.label_935
	jmp	.label_930
.label_933:
	mov	rax, r8
	add	rax, rdx
	jne	.label_939
	inc	r15
	lea	r9, [r9 + rdx + 1]
	xor	r8d, r8d
	jmp	.label_927
.label_930:
	mov	qword ptr [r14], r15
.label_936:
	call	freea
	mov	al, 1
.label_924:
	lea	rsp, [rbp - 0x20]
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	pop	rbp
	ret	
	nop	word ptr [rax + rax]
.label_304:
	call	abort
	nop	word ptr [rax + rax]
	push	r15
	push	r14
	push	r12
	push	rbx
	push	rax
	mov	r15, rcx
	mov	r14, rdx
	cmp	edi, 0x11
	jae	.label_304
	movsxd	rax, edi
	mov	esi, OFFSET FLAT:__re_error_msgid
	add	rsi, qword ptr [(rax * 8) + __re_error_msgid_idx]
	xor	edi, edi
	mov	edx, 5
	call	dcgettext
	mov	r12, rax
	mov	rdi, r12
	call	strlen
	mov	rbx, rax
	inc	rbx
	test	r15, r15
	je	.label_309
	cmp	rbx, r15
	mov	rdx, rbx
	ja	.label_312
.label_317:
	mov	rdi, r14
	mov	rsi, r12
	call	memcpy
.label_309:
	mov	rax, rbx
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	ret	
.label_312:
	mov	byte ptr [r14 + r15 - 1], 0
	dec	r15
	mov	rdx, r15
	jmp	.label_317
	.section	.text
	.align	32
	#Procedure 0x406630

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
	je	.label_941
	cmp	r15, -2
	jb	.label_941
	xor	edi, edi
	call	hard_locale
	test	al, al
	jne	.label_941
	movzx	eax, byte ptr [r14]
	mov	dword ptr [rbx], eax
	mov	r15d, 1
.label_941:
	mov	rax, r15
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	ret	
	nop	word ptr cs:[rax + rax]
.label_943:
	movzx	ecx, cl
	xor	eax, eax
.label_944:
	sub	eax, ecx
.label_942:
	ret	
	nop	
	.section	.text
	.align	32
	#Procedure 0x40669a

	.globl c_strcasecmp
	.type c_strcasecmp, @function
c_strcasecmp:
	xor	eax, eax
	cmp	rdi, rsi
	je	.label_942
	nop	word ptr [rax + rax]
.label_945:
	movzx	ecx, byte ptr [rdi]
	lea	edx, [rcx - 0x41]
	lea	eax, [rcx + 0x20]
	cmp	edx, 0x1a
	cmovae	eax, ecx
	movzx	edx, byte ptr [rsi]
	lea	r8d, [rdx - 0x41]
	lea	ecx, [rdx + 0x20]
	cmp	r8d, 0x1a
	cmovae	ecx, edx
	and	eax, 0xff
	je	.label_943
	inc	rdi
	inc	rsi
	movzx	ecx, cl
	cmp	eax, ecx
	je	.label_945
	jmp	.label_944
	.section	.text
	.align	32
	#Procedure 0x4066e0

	.globl check_arrival_expand_ecl
	.type check_arrival_expand_ecl, @function
check_arrival_expand_ecl:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x28
	mov	r15d, ecx
	mov	r13, rdx
	mov	r14, rsi
	mov	qword ptr [rsp + 8], rdi
	mov	r12, qword ptr [r14 + 8]
	mov	qword ptr [rsp + 0x10], r12
	mov	qword ptr [rsp + 0x18], 0
	lea	rdi, [r12*8]
	call	malloc
	mov	qword ptr [rsp + 0x20], rax
	mov	ebx, 0xc
	test	rax, rax
	je	.label_950
	test	r12, r12
	jle	.label_952
	xor	r12d, r12d
	jmp	.label_953
	nop	dword ptr [rax]
.label_948:
	cmp	rbp, -1
	je	.label_954
	mov	rdi, qword ptr [rsp + 8]
	lea	rsi, [rsp + 0x10]
	mov	rcx, r13
	mov	r8d, r15d
	call	check_arrival_expand_ecl_sub
	jmp	.label_947
	nop	dword ptr [rax]
.label_953:
	mov	rax, qword ptr [r14 + 0x10]
	mov	rdx, qword ptr [rax + r12*8]
	mov	rax, qword ptr [rsp + 8]
	mov	r8, qword ptr [rax + 0x30]
	lea	r9, [rdx + rdx*2]
	mov	r10, qword ptr [r8 + r9*8 + 8]
	test	r10, r10
	jle	.label_954
	mov	rdi, qword ptr [r8 + r9*8 + 0x10]
	mov	rax, qword ptr [rsp + 8]
	mov	rbx, qword ptr [rax]
	xor	eax, eax
	nop	
.label_951:
	mov	rbp, qword ptr [rdi + rax*8]
	mov	rcx, rbp
	shl	rcx, 4
	movzx	esi, byte ptr [rbx + rcx + 8]
	cmp	esi, r15d
	jne	.label_946
	cmp	qword ptr [rbx + rcx], r13
	je	.label_948
.label_946:
	inc	rax
	cmp	rax, r10
	jl	.label_951
.label_954:
	lea	rsi, [r8 + r9*8]
	lea	rdi, [rsp + 0x10]
	call	re_node_set_merge
.label_947:
	mov	ebx, eax
	test	ebx, ebx
	jne	.label_949
	inc	r12
	cmp	r12, qword ptr [r14 + 8]
	jl	.label_953
.label_952:
	mov	rdi, qword ptr [r14 + 0x10]
	call	free
	mov	rax, qword ptr [rsp + 0x20]
	mov	qword ptr [r14 + 0x10], rax
	movups	xmm0, xmmword ptr [rsp + 0x10]
	movups	xmmword ptr [r14], xmm0
	xor	ebx, ebx
.label_950:
	mov	eax, ebx
	add	rsp, 0x28
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_949:
	mov	rdi, qword ptr [rsp + 0x20]
	call	free
	jmp	.label_950
	nop	word ptr [rax + rax]
.label_369:
	mov	edi, dword ptr [rip + exit_failure]
	call	_exit
	.globl close_stdout
	.type close_stdout, @function
close_stdout:
	push	rbp
	push	rbx
	push	rax
	mov	rdi, qword ptr [rip + stdout]
	call	close_stream
	test	eax, eax
	je	.label_363
	mov	bl, byte ptr [rip + ignore_EPIPE]
	call	__errno_location
	mov	rbp, rax
	cmp	bl, 0
	je	.label_366
	cmp	dword ptr [rbp], 0x20
	jne	.label_366
.label_363:
	mov	rdi, qword ptr [rip + stderr]
	call	close_stream
	test	eax, eax
	jne	.label_369
	add	rsp, 8
	pop	rbx
	pop	rbp
	ret	
.label_366:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_371
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
	mov	rdi, qword ptr [rip + file_name]
	test	rdi, rdi
	mov	ebp, dword ptr [rbp]
	jne	.label_375
	xor	edi, edi
	mov	edx, OFFSET FLAT:label_378
	xor	eax, eax
	mov	esi, ebp
	mov	rcx, rbx
	call	error
	mov	edi, dword ptr [rip + exit_failure]
	call	_exit
.label_375:
	call	quotearg_colon
	mov	rcx, rax
	xor	edi, edi
	mov	edx, OFFSET FLAT:label_384
	xor	eax, eax
	mov	esi, ebp
	mov	r8, rbx
	call	error
	mov	edi, dword ptr [rip + exit_failure]
	call	_exit
	nop	dword ptr [rax]
	nop	dword ptr [rax + rax]
	test	rdi, rdi
	mov	ecx, OFFSET FLAT:default_quoting_options
	cmovne	rcx, rdi
	mov	eax, dword ptr [rcx + 4]
	mov	dword ptr [rcx + 4], esi
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4068f0

	.globl parse_branch
	.type parse_branch, @function
parse_branch:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x28
	mov	rbx, r9
	mov	r15, r8
	mov	r13, rdx
	mov	rax, qword ptr [rsi]
	mov	qword ptr [rsp + 8], rax
	mov	qword ptr [rsp + 0x10], rdi
	mov	qword ptr [rsp + 0x18], rsi
	mov	qword ptr [rsp + 0x20], rcx
	call	parse_expression
	mov	rbp, rbx
	mov	rbx, rax
	xor	r12d, r12d
	test	rbx, rbx
	jne	.label_968
	mov	eax, dword ptr [rbp]
	test	eax, eax
	je	.label_968
	jmp	.label_969
	nop	dword ptr [rax]
.label_965:
	test	rbx, rbx
	cmove	rbx, r12
.label_968:
	movzx	eax, byte ptr [r13 + 8]
	mov	ecx, eax
	or	cl, 8
	cmp	cl, 0xa
	je	.label_972
	test	r15, r15
	je	.label_976
	cmp	eax, 9
	je	.label_972
.label_976:
	mov	rdi, qword ptr [rsp + 0x10]
	mov	rsi, qword ptr [rsp + 0x18]
	mov	rdx, r13
	mov	rcx, qword ptr [rsp + 0x20]
	mov	r8, r15
	mov	r14, rbp
	mov	r9, r14
	call	parse_expression
	mov	r12, rax
	test	r12, r12
	jne	.label_959
	mov	eax, dword ptr [rbp]
	test	eax, eax
	jne	.label_963
.label_959:
	test	rbx, rbx
	je	.label_965
	test	r12, r12
	je	.label_965
	mov	rax, qword ptr [rsp + 8]
	mov	ecx, dword ptr [rax + 0x80]
	cmp	ecx, 0xf
	je	.label_970
	mov	rsi, rax
	mov	rax, qword ptr [rsi + 0x70]
.label_966:
	lea	edx, [rcx + 1]
	mov	dword ptr [rsi + 0x80], edx
	movsxd	rcx, ecx
	shl	rcx, 6
	lea	rdx, [rax + rcx + 8]
	mov	qword ptr [rax + rcx + 8], 0
	mov	qword ptr [rax + rcx + 0x10], rbx
	mov	qword ptr [rax + rcx + 0x18], r12
	mov	dword ptr [rax + rcx + 0x38], 0x10
	xorps	xmm0, xmm0
	movups	xmmword ptr [rax + rcx + 0x20], xmm0
	mov	qword ptr [rax + rcx + 0x40], -1
	mov	qword ptr [rbx], rdx
	mov	qword ptr [r12], rdx
	mov	rbx, rdx
	jmp	.label_968
.label_970:
	mov	edi, 0x3c8
	call	malloc
	test	rax, rax
	je	.label_964
	mov	rsi, qword ptr [rsp + 8]
	mov	rcx, qword ptr [rsi + 0x70]
	mov	qword ptr [rax], rcx
	mov	qword ptr [rsi + 0x70], rax
	mov	dword ptr [rsi + 0x80], 0
	xor	ecx, ecx
	mov	rbp, r14
	jmp	.label_966
.label_972:
	mov	r12, rbx
.label_969:
	mov	rax, r12
	add	rsp, 0x28
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_963:
	xor	r12d, r12d
	test	rbx, rbx
	je	.label_969
	mov	r14d, 0x400ff
	xor	r12d, r12d
	nop	dword ptr [rax]
.label_967:
	mov	rbp, rbx
	mov	rbx, qword ptr [rbp + 8]
	test	rbx, rbx
	jne	.label_967
	mov	rbx, qword ptr [rbp + 0x10]
	test	rbx, rbx
	jne	.label_967
.label_975:
	mov	eax, dword ptr [rbp + 0x30]
	and	eax, r14d
	cmp	eax, 3
	je	.label_957
	cmp	eax, 6
	jne	.label_978
	mov	rbx, qword ptr [rbp + 0x28]
	mov	rdi, qword ptr [rbx]
	call	free
	mov	rdi, qword ptr [rbx + 8]
	call	free
	mov	rdi, qword ptr [rbx + 0x10]
	call	free
	mov	rdi, qword ptr [rbx + 0x18]
	call	free
	mov	rdi, rbx
	jmp	.label_980
.label_957:
	mov	rdi, qword ptr [rbp + 0x28]
.label_980:
	call	free
.label_978:
	mov	rax, qword ptr [rbp]
	test	rax, rax
	je	.label_969
	mov	rbx, qword ptr [rax + 0x10]
	cmp	rbx, rbp
	mov	rbp, rax
	je	.label_975
	test	rbx, rbx
	mov	rbp, rax
	je	.label_975
	jmp	.label_967
.label_964:
	mov	ebp, 0x400ff
	mov	rcx, r14
.label_955:
	mov	r13, r12
	mov	r12, qword ptr [r13 + 8]
	test	r12, r12
	jne	.label_955
	mov	r12, qword ptr [r13 + 0x10]
	test	r12, r12
	jne	.label_955
.label_977:
	mov	eax, dword ptr [r13 + 0x30]
	and	eax, ebp
	cmp	eax, 3
	je	.label_960
	cmp	eax, 6
	jne	.label_981
	mov	r15, qword ptr [r13 + 0x28]
	mov	rdi, qword ptr [r15]
	call	free
	mov	rdi, qword ptr [r15 + 8]
	call	free
	mov	rdi, qword ptr [r15 + 0x10]
	call	free
	mov	rdi, qword ptr [r15 + 0x18]
	call	free
	mov	rdi, r15
	jmp	.label_958
.label_960:
	mov	rdi, qword ptr [r13 + 0x28]
.label_958:
	call	free
	mov	rcx, r14
.label_981:
	mov	rax, qword ptr [r13]
	test	rax, rax
	je	.label_973
	mov	r12, qword ptr [rax + 0x10]
	cmp	r12, r13
	mov	r13, rax
	je	.label_977
	test	r12, r12
	mov	r13, rax
	je	.label_977
	jmp	.label_955
.label_973:
	mov	ebp, 0x400ff
.label_956:
	mov	r15, rbx
	mov	rbx, qword ptr [r15 + 8]
	test	rbx, rbx
	jne	.label_956
	mov	rbx, qword ptr [r15 + 0x10]
	test	rbx, rbx
	jne	.label_956
.label_979:
	mov	eax, dword ptr [r15 + 0x30]
	and	eax, ebp
	cmp	eax, 3
	je	.label_961
	cmp	eax, 6
	jne	.label_962
	mov	rbx, qword ptr [r15 + 0x28]
	mov	rdi, qword ptr [rbx]
	call	free
	mov	rdi, qword ptr [rbx + 8]
	call	free
	mov	rdi, qword ptr [rbx + 0x10]
	call	free
	mov	rdi, qword ptr [rbx + 0x18]
	call	free
	mov	rdi, rbx
	jmp	.label_971
.label_961:
	mov	rdi, qword ptr [r15 + 0x28]
.label_971:
	call	free
	mov	rcx, r14
.label_962:
	mov	rax, qword ptr [r15]
	test	rax, rax
	je	.label_974
	mov	rbx, qword ptr [rax + 0x10]
	cmp	rbx, r15
	mov	r15, rax
	je	.label_979
	test	rbx, rbx
	mov	r15, rax
	je	.label_979
	jmp	.label_956
.label_974:
	mov	dword ptr [rcx], 0xc
	xor	r12d, r12d
	jmp	.label_969
	nop	
	.section	.text
	.align	32
	#Procedure 0x406c00

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
	je	.label_982
	test	r15, r15
	je	.label_983
.label_982:
	mov	rdi, r15
	mov	rsi, r14
	mov	rdx, rbx
	call	memcpy
	mov	rax, r15
	pop	rbx
	pop	r14
	pop	r15
	ret	
.label_983:
	call	xalloc_die
	nop	dword ptr [rax]
	test	rdi, rdi
	mov	eax, OFFSET FLAT:default_quoting_options
	cmovne	rax, rdi
	mov	eax, dword ptr [rax]
	ret	
	nop	
	mov	al, byte ptr [rdi + 0x38]
	and	al, 0xf9
	mov	r9d, eax
	or	r9b, 2
	test	rdx, rdx
	je	.label_509
	mov	eax, r9d
.label_509:
	cmove	r8, rdx
	cmove	rcx, rdx
	mov	byte ptr [rdi + 0x38], al
	mov	qword ptr [rsi], rdx
	mov	qword ptr [rsi + 0x10], r8
	mov	qword ptr [rsi + 8], rcx
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x406c80

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
	mov	qword ptr [rsp], r9
	mov	qword ptr [rsp + 0x30], r8
	mov	qword ptr [rsp + 0x28], rdx
	mov	r9, rsi
	mov	r10, qword ptr [rdi + 0x98]
	mov	r8, qword ptr [rdi + 0xc8]
	xor	r14d, r14d
	test	r8, r8
	jle	.label_984
	mov	rbp, qword ptr [rdi + 0xd8]
	xor	r14d, r14d
	mov	rdx, r8
	nop	word ptr cs:[rax + rax]
.label_988:
	lea	rsi, [rdx + r14]
	mov	rax, rsi
	shr	rax, 0x3f
	add	rax, rsi
	sar	rax, 1
	lea	rsi, [rax + rax*4]
	cmp	qword ptr [rbp + rsi*8 + 8], rcx
	cmovge	rdx, rax
	lea	rsi, [rax + 1]
	cmovl	r14, rsi
	cmp	r14, rdx
	jl	.label_988
.label_984:
	cmp	r14, r8
	jge	.label_998
	mov	rsi, qword ptr [rdi + 0xd8]
	lea	rdx, [r14 + r14*4]
	cmp	qword ptr [rsi + rdx*8 + 8], rcx
	je	.label_996
.label_998:
	mov	r14, -1
.label_996:
	xor	r12d, r12d
	test	r8, r8
	jle	.label_991
	mov	rbp, qword ptr [rdi + 0xd8]
	xor	r12d, r12d
	mov	rdx, r8
	nop	
.label_987:
	lea	rsi, [rdx + r12]
	mov	rax, rsi
	shr	rax, 0x3f
	add	rax, rsi
	sar	rax, 1
	lea	rsi, [rax + rax*4]
	mov	rbx, qword ptr [rsp]
	cmp	qword ptr [rbp + rsi*8 + 8], rbx
	cmovge	rdx, rax
	lea	rsi, [rax + 1]
	cmovl	r12, rsi
	cmp	r12, rdx
	jl	.label_987
.label_991:
	cmp	r12, r8
	jge	.label_992
	mov	rax, qword ptr [rdi + 0xd8]
	lea	rdx, [r12 + r12*4]
	mov	rsi, qword ptr [rsp]
	cmp	qword ptr [rax + rdx*8 + 8], rsi
	je	.label_994
.label_992:
	mov	r12, -1
.label_994:
	cmp	qword ptr [r9 + 8], 0
	jle	.label_985
	xor	r15d, r15d
	mov	qword ptr [rsp + 0x20], rcx
	mov	qword ptr [rsp + 0x18], r9
	mov	qword ptr [rsp + 0x10], rdi
	mov	qword ptr [rsp + 8], r10
	nop	word ptr cs:[rax + rax]
.label_995:
	mov	rax, qword ptr [rdi + 0xd8]
	mov	rdx, qword ptr [r9 + 0x10]
	mov	r11, qword ptr [rdx + r15*8]
	lea	rsi, [r11 + r11*4]
	mov	rdx, qword ptr [rax + rsi*8]
	mov	rbx, qword ptr [r10]
	shl	rdx, 4
	mov	rdx, qword ptr [rbx + rdx]
	mov	rbp, qword ptr [rax + rsi*8 + 0x10]
	mov	r13d, 0xffffffff
	cmp	rbp, rcx
	jle	.label_989
	mov	ebx, 0xffffffff
	jmp	.label_990
	nop	dword ptr [rax]
.label_989:
	mov	rbx, qword ptr [rax + rsi*8 + 0x18]
	cmp	rbx, rcx
	jge	.label_997
	mov	ebx, 1
	jmp	.label_990
	nop	word ptr cs:[rax + rax]
.label_997:
	xor	r8d, r8d
	cmp	rbp, rcx
	sete	r8b
	xor	esi, esi
	cmp	rbx, rcx
	sete	sil
	add	esi, esi
	xor	ebx, ebx
	or	esi, r8d
	je	.label_990
	mov	rcx, qword ptr [rsp + 0x28]
	mov	r8, r14
	mov	rbx, rdx
	call	check_dst_limits_calc_pos_1
	mov	rdx, rbx
	mov	r10, qword ptr [rsp + 8]
	mov	rdi, qword ptr [rsp + 0x10]
	mov	r9, qword ptr [rsp + 0x18]
	mov	rcx, qword ptr [rsp + 0x20]
	mov	ebx, eax
	mov	rax, qword ptr [r9 + 0x10]
	mov	r11, qword ptr [rax + r15*8]
	mov	rax, qword ptr [rdi + 0xd8]
	lea	rsi, [r11 + r11*4]
	mov	rbp, qword ptr [rax + rsi*8 + 0x10]
	nop	dword ptr [rax]
.label_990:
	cmp	rbp, qword ptr [rsp]
	jg	.label_986
	lea	rsi, [r11 + r11*4]
	mov	rax, qword ptr [rax + rsi*8 + 0x18]
	mov	r13d, 1
	cmp	rax, qword ptr [rsp]
	jl	.label_986
	mov	r11d, ebx
	xor	ebx, ebx
	mov	r8, qword ptr [rsp]
	cmp	rbp, r8
	sete	bl
	xor	esi, esi
	cmp	rax, r8
	sete	sil
	add	esi, esi
	xor	r13d, r13d
	or	esi, ebx
	mov	ebx, r11d
	je	.label_986
	mov	rcx, qword ptr [rsp + 0x30]
	mov	r8, r12
	call	check_dst_limits_calc_pos_1
	mov	r10, qword ptr [rsp + 8]
	mov	rdi, qword ptr [rsp + 0x10]
	mov	r9, qword ptr [rsp + 0x18]
	mov	rcx, qword ptr [rsp + 0x20]
	mov	r13d, eax
	nop	word ptr cs:[rax + rax]
.label_986:
	cmp	r13d, ebx
	mov	al, 1
	jne	.label_993
	inc	r15
	cmp	r15, qword ptr [r9 + 8]
	jl	.label_995
.label_985:
	xor	eax, eax
.label_993:
	add	rsp, 0x38
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x406f10

	.globl print_field
	.type print_field, @function
print_field:
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	mov	r14, rsi
	mov	r15, rdi
	cmp	r15, r14
	jae	.label_1005
	mov	r12d, OFFSET FLAT:label_1014
	jmp	.label_999
.label_1004:
	mov	rsi, qword ptr [rip + stdout]
	mov	edi, OFFSET FLAT:label_1016
	call	fputs_unlocked
	jmp	.label_302
.label_1023:
	mov	rsi, qword ptr [rip + stdout]
	mov	edi, OFFSET FLAT:label_1017
	call	fputs_unlocked
	jmp	.label_302
.label_1009:
	mov	rsi, qword ptr [rip + stdout]
	mov	edi, OFFSET FLAT:label_1024
	call	fputs_unlocked
	jmp	.label_302
.label_1028:
	mov	rsi, qword ptr [rip + stdout]
	mov	edi, OFFSET FLAT:label_1018
	call	fputs_unlocked
	jmp	.label_302
.label_1027:
	mov	esi, r13d
	call	__overflow
	jmp	.label_302
.label_111:
	mov	esi, 0x5c
	call	__overflow
	jmp	.label_610
.label_1015:
	mov	esi, 0x20
	call	__overflow
	jmp	.label_302
.label_121:
	mov	esi, 0x22
	call	__overflow
	jmp	.label_612
.label_126:
	mov	esi, 0x22
	call	__overflow
	jmp	.label_302
	nop	word ptr cs:[rax + rax]
.label_999:
	movzx	ebx, byte ptr [r15]
	movzx	r13d, bl
	cmp	byte ptr [r13 + edited_flag],  0
	je	.label_610
	movsx	eax, byte ptr [r13 + diacrit_diac]
	test	eax, eax
	je	.label_1000
	cmp	dword ptr [rip + output_format],  3
	jne	.label_1000
	dec	eax
	cmp	eax, 8
	ja	.label_302
	movsx	ecx, byte ptr [r13 + diacrit_base]
	jmp	qword ptr [(rax * 8) + label_1006]
.label_2994:
	cmp	cl, 0x69
	mov	edx, OFFSET FLAT:label_400
	cmove	rdx, r12
	mov	edi, 1
	mov	esi, OFFSET FLAT:label_1012
	jmp	.label_1013
.label_1000:
	mov	eax, ebx
	add	al, 0xde
	movzx	eax, al
	cmp	al, 0x3d
	ja	.label_1019
	jmp	qword ptr [(rax * 8) + label_1022]
.label_3091:
	mov	rdi, qword ptr [rip + stdout]
	mov	rax, qword ptr [rdi + 0x28]
	cmp	rax, qword ptr [rdi + 0x30]
	jae	.label_111
	lea	rcx, [rax + 1]
	mov	qword ptr [rdi + 0x28], rcx
	mov	byte ptr [rax], 0x5c
.label_610:
	mov	rdi, qword ptr [rip + stdout]
	mov	rax, qword ptr [rdi + 0x28]
	cmp	rax, qword ptr [rdi + 0x30]
	jae	.label_1027
	lea	rcx, [rax + 1]
	mov	qword ptr [rdi + 0x28], rcx
	mov	byte ptr [rax], bl
	jmp	.label_302
.label_1019:
	cmp	bl, 0x7b
	je	.label_1002
	cmp	bl, 0x7d
	jne	.label_1008
.label_1002:
	mov	edi, 1
	mov	esi, OFFSET FLAT:label_1011
	xor	eax, eax
	mov	edx, r13d
	call	__printf_chk
	jmp	.label_302
.label_3090:
	mov	rdi, qword ptr [rip + stdout]
	mov	rax, qword ptr [rdi + 0x28]
	cmp	rax, qword ptr [rdi + 0x30]
	jae	.label_121
	lea	rcx, [rax + 1]
	mov	qword ptr [rdi + 0x28], rcx
	mov	byte ptr [rax], 0x22
.label_612:
	mov	rdi, qword ptr [rip + stdout]
	mov	rax, qword ptr [rdi + 0x28]
	cmp	rax, qword ptr [rdi + 0x30]
	jae	.label_126
	lea	rcx, [rax + 1]
	mov	qword ptr [rdi + 0x28], rcx
	mov	byte ptr [rax], 0x22
	jmp	.label_302
.label_3092:
	mov	rsi, qword ptr [rip + stdout]
	mov	edi, OFFSET FLAT:label_313
	call	fputs_unlocked
	jmp	.label_302
.label_2993:
	cmp	ecx, 0x60
	jg	.label_1007
	cmp	ecx, 0x41
	je	.label_1009
	cmp	ecx, 0x4f
	jne	.label_1008
	mov	rsi, qword ptr [rip + stdout]
	mov	edi, OFFSET FLAT:label_1003
	call	fputs_unlocked
	jmp	.label_302
.label_2995:
	cmp	cl, 0x69
	mov	edx, OFFSET FLAT:label_400
	cmove	rdx, r12
	mov	edi, 1
	mov	esi, OFFSET FLAT:label_1021
	jmp	.label_1013
.label_2996:
	cmp	cl, 0x69
	mov	edx, OFFSET FLAT:label_400
	cmove	rdx, r12
	mov	edi, 1
	mov	esi, OFFSET FLAT:label_1025
	jmp	.label_1013
.label_2997:
	cmp	cl, 0x69
	mov	edx, OFFSET FLAT:label_400
	cmove	rdx, r12
	mov	edi, 1
	mov	esi, OFFSET FLAT:label_1029
.label_1013:
	xor	eax, eax
	call	__printf_chk
	jmp	.label_302
.label_2998:
	mov	edi, 1
	mov	esi, OFFSET FLAT:label_1010
	xor	eax, eax
	mov	edx, ecx
	call	__printf_chk
	jmp	.label_302
.label_2999:
	cmp	ecx, 0x41
	je	.label_1004
	cmp	ecx, 0x61
	jne	.label_1008
	mov	rsi, qword ptr [rip + stdout]
	mov	edi, OFFSET FLAT:label_1020
	call	fputs_unlocked
	jmp	.label_302
.label_3000:
	cmp	ecx, 0x4f
	je	.label_1023
	cmp	ecx, 0x6f
	jne	.label_1008
	mov	rsi, qword ptr [rip + stdout]
	mov	edi, OFFSET FLAT:label_1026
	call	fputs_unlocked
	jmp	.label_302
.label_1007:
	cmp	ecx, 0x61
	je	.label_1028
	cmp	ecx, 0x6f
	jne	.label_1008
	mov	rsi, qword ptr [rip + stdout]
	mov	edi, OFFSET FLAT:label_1001
	call	fputs_unlocked
	jmp	.label_302
.label_1008:
	mov	rdi, qword ptr [rip + stdout]
	mov	rax, qword ptr [rdi + 0x28]
	cmp	rax, qword ptr [rdi + 0x30]
	jae	.label_1015
	lea	rcx, [rax + 1]
	mov	qword ptr [rdi + 0x28], rcx
	mov	byte ptr [rax], 0x20
	nop	word ptr cs:[rax + rax]
.label_302:
	inc	r15
	cmp	r14, r15
	jne	.label_999
.label_1005:
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	ret	
	nop	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x407260

	.globl mem_cd_iconv
	.type mem_cd_iconv, @function
mem_cd_iconv:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x1048
	mov	qword ptr [rsp + 0x28], r8
	mov	qword ptr [rsp + 0x40], rcx
	mov	rax, rdx
	mov	rbp, rsi
	mov	r14, rdi
	xor	ebx, ebx
	xor	esi, esi
	xor	edx, edx
	xor	ecx, ecx
	xor	r8d, r8d
	mov	qword ptr [rsp + 0x10], rax
	mov	rdi, rax
	call	iconv
	mov	qword ptr [rsp + 8], r14
	mov	qword ptr [rsp + 0x20], r14
	mov	qword ptr [rsp + 0x18], rbp
	mov	qword ptr [rsp + 0x38], rbp
	test	rbp, rbp
	je	.label_1036
	xor	ebx, ebx
	lea	r12, [rsp + 0x48]
	lea	rbp, [rsp + 0x18]
	lea	r15, [rsp]
	lea	r13, [rsp + 0x30]
	nop	
.label_1044:
	mov	qword ptr [rsp], r12
	mov	qword ptr [rsp + 0x30], 0x1000
	mov	rdi, qword ptr [rsp + 0x10]
	lea	rsi, [rsp + 0x20]
	mov	rdx, rbp
	mov	rcx, r15
	mov	r8, r13
	call	iconv
	cmp	rax, -1
	jne	.label_1037
	call	__errno_location
	mov	eax, dword ptr [rax]
	cmp	eax, 7
	je	.label_1037
	mov	r14d, 3
	cmp	eax, 0x16
	je	.label_1032
	mov	r14d, 1
	jmp	.label_1032
	nop	word ptr [rax + rax]
.label_1037:
	sub	rbx, r12
	add	rbx, qword ptr [rsp]
	xor	r14d, r14d
.label_1032:
	mov	eax, r14d
	and	al, 3
	jne	.label_1041
	cmp	qword ptr [rsp + 0x18], 0
	jne	.label_1044
	jmp	.label_1036
.label_1041:
	cmp	al, 3
	jne	.label_1046
.label_1036:
	lea	rbp, [rsp + 0x48]
	mov	qword ptr [rsp], rbp
	mov	qword ptr [rsp + 0x30], 0x1000
	xor	r14d, r14d
	lea	rcx, [rsp]
	lea	r8, [rsp + 0x30]
	xor	esi, esi
	xor	edx, edx
	mov	rdi, qword ptr [rsp + 0x10]
	call	iconv
	cmp	rax, -1
	je	.label_1052
	sub	rbx, rbp
	add	rbx, qword ptr [rsp]
	jmp	.label_1046
.label_1052:
	mov	r14d, 1
.label_1046:
	mov	ebp, 0xffffffff
	test	r14d, r14d
	jne	.label_1030
	test	rbx, rbx
	je	.label_1033
	mov	r12, qword ptr [rsp + 0x40]
	mov	r14, qword ptr [r12]
	test	r14, r14
	je	.label_1035
	mov	rax, qword ptr [rsp + 0x28]
	cmp	qword ptr [rax], rbx
	jae	.label_1039
.label_1035:
	mov	rdi, rbx
	call	malloc
	mov	r14, rax
	test	r14, r14
	je	.label_1045
.label_1039:
	xor	esi, esi
	xor	edx, edx
	xor	ecx, ecx
	xor	r8d, r8d
	mov	rdi, qword ptr [rsp + 0x10]
	call	iconv
	mov	rax, qword ptr [rsp + 8]
	mov	qword ptr [rsp + 0x48], rax
	mov	rax, qword ptr [rsp + 0x38]
	mov	qword ptr [rsp + 0x20], rax
	mov	qword ptr [rsp + 8], r14
	mov	qword ptr [rsp + 0x18], r14
	mov	qword ptr [rsp], rbx
	test	rax, rax
	je	.label_1049
	lea	r13, [rsp + 0x48]
	lea	rbp, [rsp + 0x20]
	lea	r15, [rsp + 0x18]
	lea	r14, [rsp]
.label_1048:
	mov	rdi, qword ptr [rsp + 0x10]
	mov	rsi, r13
	mov	rdx, rbp
	mov	rcx, r15
	mov	r8, r14
	call	iconv
	cmp	rax, -1
	je	.label_1040
	xor	eax, eax
	jmp	.label_1043
.label_1040:
	call	__errno_location
	cmp	dword ptr [rax], 0x16
	setne	al
	add	al, 5
.label_1043:
	and	al, 7
	jne	.label_1047
	cmp	qword ptr [rsp + 0x20], 0
	jne	.label_1048
	jmp	.label_1049
.label_1033:
	mov	rax, qword ptr [rsp + 0x28]
	mov	qword ptr [rax], 0
	jmp	.label_1050
.label_1045:
	call	__errno_location
	mov	dword ptr [rax], 0xc
	jmp	.label_1030
.label_1047:
	cmp	al, 5
	jne	.label_1051
.label_1049:
	lea	rcx, [rsp + 0x18]
	lea	r8, [rsp]
	xor	esi, esi
	xor	edx, edx
	mov	rdi, qword ptr [rsp + 0x10]
	call	iconv
	cmp	rax, -1
	je	.label_1031
	cmp	qword ptr [rsp], 0
	mov	rax, qword ptr [rsp + 8]
	jne	.label_1042
	mov	qword ptr [r12], rax
	mov	rax, qword ptr [rsp + 0x28]
	mov	qword ptr [rax], rbx
.label_1050:
	xor	ebp, ebp
	jmp	.label_1030
.label_1031:
	mov	rbp, qword ptr [rsp + 8]
	jmp	.label_1038
.label_1051:
	cmp	al, 6
	mov	rbp, qword ptr [rsp + 8]
	jne	.label_1034
.label_1038:
	cmp	rbp, qword ptr [r12]
	je	.label_1034
	call	__errno_location
	mov	rbx, rax
	mov	r14d, dword ptr [rbx]
	mov	rdi, rbp
	call	free
	mov	dword ptr [rbx], r14d
.label_1034:
	mov	ebp, 0xffffffff
.label_1030:
	mov	eax, ebp
	add	rsp, 0x1048
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_1042:
	call	abort
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x4074f0

	.globl duplicate_node_closure
	.type duplicate_node_closure, @function
duplicate_node_closure:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x28
	mov	r13d, r8d
	mov	qword ptr [rsp + 0x20], rcx
	mov	rbp, rdx
	mov	r14, rsi
	mov	r12, rdi
.label_1054:
	mov	eax, r13d
	shl	eax, 8
	and	eax, 0x3ff00
	mov	dword ptr [rsp + 0xc], eax
	mov	r15, r14
	mov	dword ptr [rsp + 0x1c], r13d
	nop	word ptr cs:[rax + rax]
.label_157:
	mov	rax, qword ptr [r12]
	mov	rdx, r15
	shl	rdx, 4
	cmp	byte ptr [rax + rdx + 8], 4
	jne	.label_1064
	mov	rcx, qword ptr [r12 + 0x18]
	mov	rdx, qword ptr [r12 + 0x28]
	mov	r13, qword ptr [rcx + r15*8]
	lea	r14, [rbp + rbp*2]
	mov	qword ptr [rdx + r14*8 + 8], 0
	mov	rbx, r13
	shl	rbx, 4
	mov	rsi, qword ptr [rax + rbx]
	mov	rdx, qword ptr [rax + rbx + 8]
	mov	rdi, r12
	call	re_dfa_add_node
	mov	rdi, rbp
	mov	rbp, rax
	mov	dword ptr [rsp + 8], 0xc
	cmp	rbp, -1
	je	.label_342
	mov	rax, qword ptr [r12]
	mov	rcx, rbp
	shl	rcx, 4
	mov	edx, dword ptr [rax + rcx + 8]
	mov	esi, 0xfffc00ff
	and	edx, esi
	or	edx, dword ptr [rsp + 0xc]
	mov	dword ptr [rax + rcx + 8], edx
	mov	rax, qword ptr [r12]
	mov	edx, dword ptr [rax + rbx + 8]
	mov	esi, 0x3ff00
	and	edx, esi
	or	dword ptr [rax + rcx + 8], edx
	mov	rax, qword ptr [r12]
	or	dword ptr [rax + rcx + 8], 0x40000
	mov	rax, qword ptr [r12 + 0x20]
	mov	qword ptr [rax + rbp*8], r13
	mov	rax, qword ptr [r12 + 0x18]
	mov	rcx, qword ptr [rax + r15*8]
	mov	qword ptr [rax + rdi*8], rcx
	mov	rax, qword ptr [r12 + 0x28]
	lea	rdi, [rax + r14*8]
	mov	rsi, rbp
	call	re_node_set_insert
	test	al, al
	mov	r15, r13
	mov	r13d, dword ptr [rsp + 0x1c]
	jne	.label_157
	jmp	.label_342
	nop	dword ptr [rax + rax]
.label_1064:
	mov	r8, qword ptr [r12 + 0x28]
	lea	rcx, [r15 + r15*2]
	mov	rsi, qword ptr [r8 + rcx*8 + 8]
	test	rsi, rsi
	je	.label_1059
	mov	rdi, qword ptr [r8 + rcx*8 + 0x10]
	mov	r14, qword ptr [rdi]
	lea	rdi, [rbp + rbp*2]
	mov	qword ptr [rsp + 0x10], rdi
	mov	qword ptr [r8 + rdi*8 + 8], 0
	cmp	rsi, 1
	je	.label_1062
	mov	rdi, qword ptr [r12 + 0x10]
	lea	rsi, [rdi - 1]
	test	rsi, rsi
	jle	.label_1053
	mov	rdx, rsi
	shl	rdx, 4
	mov	ebx, dword ptr [rax + rdx + 8]
	mov	edx, ebx
	and	edx, 0x40000
	je	.label_1053
	mov	rdx, qword ptr [r12 + 0x20]
	shl	rdi, 4
	lea	rdi, [rax + rdi - 0x18]
	nop	word ptr cs:[rax + rax]
.label_1063:
	cmp	qword ptr [rdx + rsi*8], r14
	jne	.label_1061
	shr	ebx, 8
	and	ebx, 0x3ff
	cmp	ebx, r13d
	je	.label_1055
.label_1061:
	dec	rsi
	test	rsi, rsi
	jle	.label_1053
	mov	ebx, dword ptr [rdi]
	mov	ebp, ebx
	and	ebp, 0x40000
	add	rdi, -0x10
	test	ebp, ebp
	jne	.label_1063
	jmp	.label_1053
.label_1055:
	cmp	rsi, -1
	je	.label_1053
	mov	r15, rcx
	mov	rax, qword ptr [rsp + 0x10]
	lea	rdi, [r8 + rax*8]
	call	re_node_set_insert
	mov	dword ptr [rsp + 8], 0xc
	test	al, al
	jne	.label_1057
	jmp	.label_342
	nop	dword ptr [rax]
.label_1053:
	mov	r15, rcx
	mov	rbx, r14
	shl	rbx, 4
	mov	rsi, qword ptr [rax + rbx]
	mov	rdx, qword ptr [rax + rbx + 8]
	mov	rdi, r12
	call	re_dfa_add_node
	mov	rbp, rax
	mov	dword ptr [rsp + 8], 0xc
	cmp	rbp, -1
	je	.label_342
	mov	rax, qword ptr [r12]
	mov	rcx, rbp
	shl	rcx, 4
	mov	edx, dword ptr [rax + rcx + 8]
	mov	esi, 0xfffc00ff
	and	edx, esi
	or	edx, dword ptr [rsp + 0xc]
	mov	dword ptr [rax + rcx + 8], edx
	mov	rax, qword ptr [r12]
	mov	edx, dword ptr [rax + rbx + 8]
	mov	esi, 0x3ff00
	and	edx, esi
	or	dword ptr [rax + rcx + 8], edx
	mov	rax, qword ptr [r12]
	or	dword ptr [rax + rcx + 8], 0x40000
	mov	rax, qword ptr [r12 + 0x20]
	mov	qword ptr [rax + rbp*8], r14
	mov	rax, qword ptr [r12 + 0x28]
	mov	rcx, qword ptr [rsp + 0x10]
	lea	rdi, [rax + rcx*8]
	mov	rsi, rbp
	call	re_node_set_insert
	test	al, al
	je	.label_342
	mov	rdi, r12
	mov	rsi, r14
	mov	rdx, rbp
	mov	rcx, qword ptr [rsp + 0x20]
	mov	r8d, r13d
	call	duplicate_node_closure
	mov	dword ptr [rsp + 8], eax
	test	eax, eax
	jne	.label_342
.label_1057:
	mov	rax, qword ptr [r12]
	mov	rcx, qword ptr [r12 + 0x28]
	mov	rcx, qword ptr [rcx + r15*8 + 0x10]
	mov	r15, qword ptr [rcx + 8]
	mov	rbx, r15
	shl	rbx, 4
	mov	rsi, qword ptr [rax + rbx]
	mov	rdx, qword ptr [rax + rbx + 8]
	mov	rdi, r12
	call	re_dfa_add_node
	mov	rbp, rax
	mov	dword ptr [rsp + 8], 0xc
	cmp	rbp, -1
	je	.label_342
	mov	rax, qword ptr [r12]
	mov	rcx, rbp
	shl	rcx, 4
	mov	edx, dword ptr [rax + rcx + 8]
	mov	esi, 0xfffc00ff
	and	edx, esi
	or	edx, dword ptr [rsp + 0xc]
	mov	dword ptr [rax + rcx + 8], edx
	mov	rax, qword ptr [r12]
	mov	edx, dword ptr [rax + rbx + 8]
	mov	esi, 0x3ff00
	and	edx, esi
	or	dword ptr [rax + rcx + 8], edx
	mov	rax, qword ptr [r12]
	or	dword ptr [rax + rcx + 8], 0x40000
	mov	rax, qword ptr [r12 + 0x20]
	mov	qword ptr [rax + rbp*8], r15
	mov	rax, qword ptr [r12 + 0x28]
	mov	rcx, qword ptr [rsp + 0x10]
	lea	rdi, [rax + rcx*8]
	mov	rsi, rbp
	call	re_node_set_insert
	test	al, al
	jne	.label_157
	jmp	.label_342
	nop	
.label_1062:
	cmp	r15, qword ptr [rsp + 0x20]
	jne	.label_1058
	cmp	rbp, r15
	jne	.label_1060
.label_1058:
	lea	rcx, [rax + rdx + 8]
	mov	ebp, dword ptr [rcx]
	mov	rbx, r14
	shl	rbx, 4
	mov	rsi, qword ptr [rax + rbx]
	mov	rdx, qword ptr [rax + rbx + 8]
	mov	rdi, r12
	call	re_dfa_add_node
	mov	r15, rax
	mov	dword ptr [rsp + 8], 0xc
	cmp	r15, -1
	je	.label_342
	shr	ebp, 8
	and	ebp, 0x3ff
	or	r13d, ebp
	mov	rax, qword ptr [r12]
	mov	rcx, r15
	shl	rcx, 4
	mov	edx, r13d
	shl	edx, 8
	and	edx, 0x3ff00
	mov	esi, dword ptr [rax + rcx + 8]
	mov	edi, 0xfffc00ff
	and	esi, edi
	or	esi, edx
	mov	dword ptr [rax + rcx + 8], esi
	mov	rax, qword ptr [r12]
	mov	edx, dword ptr [rax + rbx + 8]
	mov	esi, 0x3ff00
	and	edx, esi
	or	dword ptr [rax + rcx + 8], edx
	mov	rax, qword ptr [r12]
	or	dword ptr [rax + rcx + 8], 0x40000
	mov	rax, qword ptr [r12 + 0x20]
	mov	qword ptr [rax + r15*8], r14
	mov	rax, qword ptr [r12 + 0x28]
	mov	rcx, qword ptr [rsp + 0x10]
	lea	rdi, [rax + rcx*8]
	mov	rsi, r15
	call	re_node_set_insert
	test	al, al
	mov	rbp, r15
	jne	.label_1054
	jmp	.label_342
.label_1059:
	mov	rax, qword ptr [r12 + 0x18]
	mov	rcx, qword ptr [rax + r15*8]
	mov	qword ptr [rax + rbp*8], rcx
.label_1056:
	mov	dword ptr [rsp + 8], 0
.label_342:
	mov	eax, dword ptr [rsp + 8]
	add	rsp, 0x28
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_1060:
	mov	rax, qword ptr [rsp + 0x10]
	lea	rdi, [r8 + rax*8]
	mov	rsi, r14
	call	re_node_set_insert
	mov	dword ptr [rsp + 8], 0xc
	test	al, al
	jne	.label_1056
	jmp	.label_342
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x407960

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
	mov	r15, rdx
	mov	r14, qword ptr [rdi + 0x98]
	mov	r9, qword ptr [rdi + 0xc8]
	xor	eax, eax
	test	r9, r9
	mov	r11d, 0
	jle	.label_1073
	mov	r10, qword ptr [rdi + 0xd8]
	xor	r11d, r11d
	mov	rdx, r9
	nop	dword ptr [rax]
.label_1077:
	lea	rbp, [rdx + r11]
	mov	rbx, rbp
	shr	rbx, 0x3f
	add	rbx, rbp
	sar	rbx, 1
	lea	rbp, [rbx + rbx*4]
	cmp	qword ptr [r10 + rbp*8 + 8], r15
	cmovge	rdx, rbx
	lea	rbp, [rbx + 1]
	cmovl	r11, rbp
	cmp	r11, rdx
	jl	.label_1077
.label_1073:
	cmp	r11, r9
	jge	.label_1065
	cmp	r11, -1
	je	.label_1065
	mov	qword ptr [rsp + 0x50], rcx
	mov	dword ptr [rsp + 0x44], r8d
	mov	rcx, qword ptr [rdi + 0xd8]
	lea	rdx, [r11 + r11*4]
	mov	qword ptr [rsp + 0x48], rdx
	cmp	qword ptr [rcx + rdx*8 + 8], r15
	jne	.label_1065
	mov	dword ptr [rsp + 0xc], eax
	mov	qword ptr [rsp + 0x38], rsi
	mov	qword ptr [rsp + 0x30], rdi
	mov	qword ptr [rsp + 0x28], r14
	jmp	.label_1066
.label_1096:
	mov	rcx, qword ptr [rdi + 0xd8]
	nop	
.label_1066:
	mov	rax, qword ptr [rsp + 0x48]
	lea	r13, [rcx + rax*8]
	nop	dword ptr [rax]
.label_1094:
	mov	r9, qword ptr [rsi + 8]
	test	r9, r9
	jle	.label_1069
	mov	rdx, qword ptr [r13]
	dec	r9
	mov	r8, qword ptr [rsi + 0x10]
	mov	eax, 0
	je	.label_1082
	mov	rcx, r9
	xor	eax, eax
	nop	word ptr cs:[rax + rax]
.label_1089:
	lea	rbp, [rax + rcx]
	shr	rbp, 1
	cmp	qword ptr [r8 + rbp*8], rdx
	lea	rbx, [rbp + 1]
	cmovl	rax, rbx
	cmovge	rcx, rbp
	cmp	rax, rcx
	jb	.label_1089
.label_1082:
	cmp	rax, -1
	je	.label_1069
	cmp	qword ptr [r8 + rax*8], rdx
	jne	.label_1069
	mov	r12, qword ptr [r13 + 0x18]
	add	r12, r15
	sub	r12, qword ptr [r13 + 0x10]
	cmp	r12, r15
	jne	.label_1072
	test	r9, r9
	mov	rax, qword ptr [r14 + 0x28]
	lea	rdx, [rdx + rdx*2]
	mov	rdx, qword ptr [rax + rdx*8 + 0x10]
	mov	rbx, qword ptr [rdx]
	mov	edx, 0
	je	.label_1078
	xor	edx, edx
.label_1084:
	lea	rax, [rdx + r9]
	shr	rax, 1
	cmp	qword ptr [r8 + rax*8], rbx
	lea	rcx, [rax + 1]
	cmovl	rdx, rcx
	cmovge	r9, rax
	cmp	rdx, r9
	jb	.label_1084
.label_1078:
	cmp	rdx, -1
	je	.label_1087
	mov	ecx, 4
	cmp	qword ptr [r8 + rdx*8], rbx
	je	.label_1071
.label_1087:
	movaps	xmm0, xmmword ptr [rip + label_211]
	movaps	xmmword ptr [rsp + 0x10], xmm0
	mov	edi, 8
	call	malloc
	mov	qword ptr [rsp + 0x20], rax
	test	rax, rax
	je	.label_1070
	mov	qword ptr [rax], rbx
	xor	r12d, r12d
.label_1068:
	mov	dword ptr [rsp + 8], r12d
	mov	rdi, r14
	lea	rbx, [rsp + 0x10]
	mov	rsi, rbx
	mov	rdx, qword ptr [rsp + 0x50]
	mov	ecx, dword ptr [rsp + 0x44]
	call	check_arrival_expand_ecl
	mov	r14d, eax
	mov	rbp, qword ptr [rsp + 0x38]
	mov	rdi, rbp
	mov	rsi, rbx
	call	re_node_set_merge
	mov	ebx, eax
	mov	rdi, qword ptr [rsp + 0x20]
	call	free
	mov	rsi, rbp
	mov	eax, r14d
	or	eax, r12d
	mov	ecx, 2
	or	eax, ebx
	mov	rdi, qword ptr [rsp + 0x30]
	je	.label_1071
	test	r14d, r14d
	cmovne	ebx, r14d
	test	r12d, r12d
	cmovne	ebx, r12d
	mov	dword ptr [rsp + 8], ebx
	mov	ecx, 1
	mov	dword ptr [rsp + 0xc], ebx
	jmp	.label_1071
.label_1072:
	mov	rax, qword ptr [r14 + 0x18]
	mov	r14, qword ptr [rax + rdx*8]
	mov	rax, qword ptr [rdi + 0xb8]
	mov	r9, qword ptr [rax + r12*8]
	test	r9, r9
	je	.label_1074
	mov	r8, qword ptr [r9 + 0x10]
	test	r8, r8
	jle	.label_1079
	mov	rcx, r8
	dec	rcx
	mov	rax, qword ptr [r9 + 0x18]
	mov	edx, 0
	je	.label_1081
	xor	edx, edx
	nop	
.label_1085:
	lea	rbp, [rdx + rcx]
	shr	rbp, 1
	cmp	qword ptr [rax + rbp*8], r14
	lea	rbx, [rbp + 1]
	cmovl	rdx, rbx
	cmovge	rcx, rbp
	cmp	rdx, rcx
	jb	.label_1085
.label_1081:
	cmp	rdx, -1
	je	.label_1093
	mov	ecx, 4
	cmp	qword ptr [rax + rdx*8], r14
	je	.label_1071
.label_1093:
	mov	qword ptr [rsp + 0x18], r8
	test	r8, r8
	jle	.label_1067
	mov	rbp, r9
	mov	qword ptr [rsp + 0x10], r8
	shl	r8, 3
	mov	rdi, r8
	mov	rbx, r8
	call	malloc
	mov	qword ptr [rsp + 0x20], rax
	test	rax, rax
	je	.label_1090
	mov	rsi, qword ptr [rbp + 0x18]
	mov	rdi, rax
	mov	rdx, rbx
	call	memcpy
	jmp	.label_1083
.label_1074:
	movaps	xmm0, xmmword ptr [rip + label_211]
	movaps	xmmword ptr [rsp + 0x10], xmm0
	mov	edi, 8
	call	malloc
	mov	qword ptr [rsp + 0x20], rax
	test	rax, rax
	je	.label_1086
	mov	qword ptr [rax], r14
	mov	dword ptr [rsp + 8], 0
	jmp	.label_1091
.label_1079:
	mov	qword ptr [rsp + 0x18], r8
.label_1067:
	xorps	xmm0, xmm0
	movaps	xmmword ptr [rsp + 0x10], xmm0
	mov	qword ptr [rsp + 0x20], 0
.label_1083:
	xor	ebx, ebx
.label_1076:
	mov	dword ptr [rsp + 8], ebx
	lea	rdi, [rsp + 0x10]
	mov	rsi, r14
	call	re_node_set_insert
	test	ebx, ebx
	jne	.label_1075
	xor	al, 1
	jne	.label_1075
.label_1091:
	lea	rdi, [rsp + 8]
	mov	r14, qword ptr [rsp + 0x28]
	mov	rsi, r14
	lea	rdx, [rsp + 0x10]
	call	re_acquire_state
	mov	rbx, qword ptr [rsp + 0x30]
	mov	rcx, qword ptr [rbx + 0xb8]
	mov	qword ptr [rcx + r12*8], rax
	mov	rdi, qword ptr [rsp + 0x20]
	call	free
	mov	rdi, rbx
	mov	rax, qword ptr [rdi + 0xb8]
	cmp	qword ptr [rax + r12*8], 0
	sete	dl
	mov	eax, dword ptr [rsp + 8]
	test	eax, eax
	setne	cl
	and	cl, dl
	jne	.label_1095
	mov	eax, dword ptr [rsp + 0xc]
.label_1095:
	movzx	ecx, cl
	mov	dword ptr [rsp + 0xc], eax
	mov	rsi, qword ptr [rsp + 0x38]
	jmp	.label_1088
.label_1070:
	xorps	xmm0, xmm0
	movaps	xmmword ptr [rsp + 0x10], xmm0
	mov	r12d, 0xc
	jmp	.label_1068
.label_1075:
	mov	rdi, qword ptr [rsp + 0x20]
	call	free
	test	ebx, ebx
	mov	eax, 0xc
	cmove	ebx, eax
	mov	dword ptr [rsp + 8], ebx
	mov	ecx, 1
	mov	dword ptr [rsp + 0xc], ebx
	jmp	.label_1080
.label_1086:
	xorps	xmm0, xmm0
	movaps	xmmword ptr [rsp + 0x10], xmm0
	mov	dword ptr [rsp + 8], 0xc
	mov	dword ptr [rsp + 0xc], 0xc
	mov	ecx, 1
.label_1080:
	mov	rsi, qword ptr [rsp + 0x38]
	mov	rdi, qword ptr [rsp + 0x30]
.label_1071:
	mov	r14, qword ptr [rsp + 0x28]
.label_1088:
	test	ecx, ecx
	je	.label_1069
	cmp	ecx, 4
	jne	.label_1092
.label_1069:
	xor	eax, eax
	cmp	byte ptr [r13 + 0x20], 0
	lea	r13, [r13 + 0x28]
	jne	.label_1094
	jmp	.label_1065
.label_1090:
	xorps	xmm0, xmm0
	movaps	xmmword ptr [rsp + 0x10], xmm0
	mov	ebx, 0xc
	jmp	.label_1076
.label_1092:
	cmp	ecx, 2
	je	.label_1096
	mov	eax, dword ptr [rsp + 0xc]
.label_1065:
	add	rsp, 0x58
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x407dc0

	.globl re_node_set_add_intersect
	.type re_node_set_add_intersect, @function
re_node_set_add_intersect:
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	mov	r14, rdx
	mov	r15, rsi
	mov	r12, rdi
	mov	rcx, qword ptr [r15 + 8]
	xor	eax, eax
	test	rcx, rcx
	je	.label_1097
	mov	r11, qword ptr [r14 + 8]
	test	r11, r11
	je	.label_1097
	lea	rax, [r11 + rcx]
	mov	r13, qword ptr [r12]
	mov	rdx, qword ptr [r12 + 8]
	lea	rsi, [rdx + rax]
	cmp	rsi, r13
	jle	.label_1110
	add	r13, rax
	mov	rdi, qword ptr [r12 + 0x10]
	lea	rsi, [r13*8]
	call	realloc
	mov	rcx, rax
	mov	eax, 0xc
	test	rcx, rcx
	je	.label_1097
	lea	r8, [r12 + 0x10]
	mov	qword ptr [r12 + 0x10], rcx
	mov	qword ptr [r12], r13
	mov	rdx, qword ptr [r12 + 8]
	mov	rcx, qword ptr [r15 + 8]
	mov	r11, qword ptr [r14 + 8]
	jmp	.label_1109
.label_1110:
	lea	r8, [r12 + 0x10]
.label_1109:
	lea	r10, [rcx + rdx]
	add	r10, r11
	dec	rdx
	mov	rsi, qword ptr [r15 + 0x10]
	mov	r9, qword ptr [r14 + 0x10]
.label_1105:
	dec	rcx
	mov	rdi, r11
.label_1102:
	lea	r11, [rdi - 1]
	mov	rax, qword ptr [r9 + rdi*8 - 8]
	nop	dword ptr [rax]
.label_1113:
	cmp	qword ptr [rsi + rcx*8], rax
	je	.label_1111
	jl	.label_1112
	test	rcx, rcx
	lea	rcx, [rcx - 1]
	jg	.label_1113
	jmp	.label_1098
	nop	word ptr cs:[rax + rax]
.label_1112:
	cmp	rdi, 2
	mov	rdi, r11
	jge	.label_1102
	jmp	.label_1098
	nop	dword ptr [rax + rax]
.label_1111:
	mov	rbx, qword ptr [r8]
	test	rdx, rdx
	js	.label_1107
	nop	dword ptr [rax + rax]
.label_1099:
	cmp	qword ptr [rbx + rdx*8], rax
	jle	.label_1104
	test	rdx, rdx
	lea	rdx, [rdx - 1]
	jg	.label_1099
	jmp	.label_1107
.label_1104:
	je	.label_1103
	nop	word ptr cs:[rax + rax]
.label_1107:
	mov	qword ptr [rbx + r10*8 - 8], rax
	dec	r10
.label_1103:
	test	rcx, rcx
	jle	.label_1098
	cmp	rdi, 2
	jge	.label_1105
.label_1098:
	mov	rdx, qword ptr [r12 + 8]
	lea	rcx, [rdx - 1]
	mov	r9, qword ptr [r15 + 8]
	add	r9, rcx
	add	r9, qword ptr [r14 + 8]
	mov	rax, r9
	sub	rax, r10
	lea	r8, [rax + 1]
	lea	rsi, [rax + rdx + 1]
	mov	qword ptr [r12 + 8], rsi
	mov	rdi, qword ptr [r12 + 0x10]
	test	rdx, rdx
	jle	.label_1101
	test	rax, rax
	js	.label_1101
	xor	edx, edx
.label_1100:
	lea	rax, [rcx + r8]
	lea	rax, [rdi + rax*8]
	nop	dword ptr [rax + rax]
.label_1114:
	mov	rbx, qword ptr [rdi + r9*8]
	mov	rsi, qword ptr [rdi + rcx*8]
	cmp	rbx, rsi
	jg	.label_1106
	mov	qword ptr [rax], rsi
	add	rax, -8
	test	rcx, rcx
	lea	rcx, [rcx - 1]
	jg	.label_1114
	jmp	.label_1101
	nop	
.label_1106:
	dec	r9
	dec	r8
	mov	qword ptr [rax], rbx
	jne	.label_1100
	jmp	.label_1108
.label_1101:
	mov	rdx, r8
.label_1108:
	lea	rsi, [rdi + r10*8]
	shl	rdx, 3
	call	memcpy
	xor	eax, eax
.label_1097:
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x407f80

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
	mov	r15, rcx
	mov	r14, rdx
	mov	rbx, rsi
	mov	r12, rdi
	xor	eax, eax
	test	r15, r15
	jle	.label_1115
	xor	ebp, ebp
	lea	r13, [rsp + 0x10]
	nop	dword ptr [rax + rax]
.label_1117:
	mov	rsi, qword ptr [rbx + rbp*8]
	mov	rdx, qword ptr [r14 + rbp*8]
	test	rsi, rsi
	je	.label_1116
	test	rdx, rdx
	je	.label_1118
	add	rsi, 8
	add	rdx, 8
	mov	rdi, r13
	call	re_node_set_init_union
	mov	dword ptr [rsp + 0xc], eax
	test	eax, eax
	jne	.label_1115
	lea	rdi, [rsp + 0xc]
	mov	rsi, r12
	mov	rdx, r13
	call	re_acquire_state
	mov	qword ptr [rbx + rbp*8], rax
	mov	rdi, qword ptr [rsp + 0x20]
	call	free
	mov	eax, dword ptr [rsp + 0xc]
	test	eax, eax
	je	.label_1118
	jmp	.label_1115
	nop	word ptr cs:[rax + rax]
.label_1116:
	mov	qword ptr [rbx + rbp*8], rdx
.label_1118:
	inc	rbp
	xor	eax, eax
	cmp	rbp, r15
	jl	.label_1117
.label_1115:
	add	rsp, 0x28
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x408030

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
	mov	r15, rsi
	mov	r14, rdi
	mov	r8, qword ptr [r12 + 8]
	test	r8, r8
	je	.label_1126
	mov	rbx, r8
	jle	.label_1136
	mov	rcx, qword ptr [r12 + 0x10]
	xor	esi, esi
	cmp	r8, 4
	mov	rbx, r8
	jb	.label_1138
	xor	esi, esi
	mov	rdx, r8
	and	rdx, 0xfffffffffffffffc
	mov	rbx, r8
	je	.label_1138
	movq	xmm0, r8
	lea	rbp, [rdx - 4]
	mov	rbx, rbp
	shr	rbx, 2
	lea	esi, [rbx + 1]
	and	esi, 3
	xor	edi, edi
	cmp	rbp, 0xc
	jae	.label_1120
	pxor	xmm1, xmm1
	jmp	.label_1127
.label_1120:
	lea	rbp, [rsi - 1]
	sub	rbp, rbx
	pxor	xmm1, xmm1
	xor	edi, edi
	nop	word ptr cs:[rax + rax]
.label_1132:
	movdqu	xmm2, xmmword ptr [rcx + rdi*8]
	movdqu	xmm3, xmmword ptr [rcx + rdi*8 + 0x10]
	paddq	xmm2, xmm0
	paddq	xmm3, xmm1
	movdqu	xmm0, xmmword ptr [rcx + rdi*8 + 0x20]
	movdqu	xmm1, xmmword ptr [rcx + rdi*8 + 0x30]
	movdqu	xmm4, xmmword ptr [rcx + rdi*8 + 0x40]
	movdqu	xmm5, xmmword ptr [rcx + rdi*8 + 0x50]
	paddq	xmm4, xmm0
	paddq	xmm4, xmm2
	paddq	xmm5, xmm1
	paddq	xmm5, xmm3
	movdqu	xmm0, xmmword ptr [rcx + rdi*8 + 0x60]
	movdqu	xmm1, xmmword ptr [rcx + rdi*8 + 0x70]
	paddq	xmm0, xmm4
	paddq	xmm1, xmm5
	add	rdi, 0x10
	add	rbp, 4
	jne	.label_1132
.label_1127:
	test	rsi, rsi
	je	.label_1123
	lea	rdi, [rcx + rdi*8 + 0x10]
	neg	rsi
	nop	word ptr cs:[rax + rax]
.label_1129:
	movdqu	xmm2, xmmword ptr [rdi - 0x10]
	movdqu	xmm3, xmmword ptr [rdi]
	paddq	xmm0, xmm2
	paddq	xmm1, xmm3
	add	rdi, 0x20
	inc	rsi
	jne	.label_1129
.label_1123:
	paddq	xmm0, xmm1
	pshufd	xmm1, xmm0, 0x4e
	paddq	xmm1, xmm0
	movq	rbx, xmm1
	cmp	r8, rdx
	mov	rsi, rdx
	je	.label_1136
.label_1138:
	mov	rdx, r8
	sub	rdx, rsi
	lea	rcx, [rcx + rsi*8]
	nop	
.label_1130:
	add	rbx, qword ptr [rcx]
	add	rcx, 8
	dec	rdx
	jne	.label_1130
.label_1136:
	mov	rdx, qword ptr [r15 + 0x40]
	mov	rcx, qword ptr [r15 + 0x88]
	and	rcx, rbx
	lea	rsi, [rcx + rcx*2]
	mov	rcx, qword ptr [rdx + rsi*8]
	test	rcx, rcx
	jle	.label_1145
	mov	rdx, qword ptr [rdx + rsi*8 + 0x10]
	xor	esi, esi
	nop	
.label_1142:
	test	r12, r12
	je	.label_1125
	mov	r13, qword ptr [rdx + rsi*8]
	cmp	rbx, qword ptr [r13]
	jne	.label_1125
	cmp	qword ptr [r13 + 0x10], r8
	jne	.label_1125
	mov	rdi, r8
	nop	dword ptr [rax + rax]
.label_1135:
	test	rdi, rdi
	jle	.label_1119
	mov	rbp, qword ptr [r13 + 0x18]
	mov	rbp, qword ptr [rbp + rdi*8 - 8]
	mov	rax, qword ptr [r12 + 0x10]
	cmp	rbp, qword ptr [rax + rdi*8 - 8]
	lea	rdi, [rdi - 1]
	je	.label_1135
	nop	word ptr cs:[rax + rax]
.label_1125:
	inc	rsi
	cmp	rsi, rcx
	jl	.label_1142
.label_1145:
	mov	edi, 0x70
	mov	esi, 1
	call	rpl_calloc
	mov	r13, rax
	test	r13, r13
	je	.label_1121
	mov	rax, r13
	add	rax, 8
	mov	rdi, qword ptr [r12 + 8]
	mov	qword ptr [r13 + 0x10], rdi
	mov	rbp, qword ptr [r12 + 8]
	test	rbp, rbp
	mov	qword ptr [rsp + 8], r14
	jle	.label_1122
	mov	qword ptr [rsp + 0x10], rax
	mov	qword ptr [r13 + 8], rdi
	shl	rdi, 3
	call	malloc
	mov	qword ptr [r13 + 0x18], rax
	test	rax, rax
	je	.label_1134
	lea	r14, [r12 + 0x10]
	mov	rsi, qword ptr [r12 + 0x10]
	shl	rbp, 3
	mov	rdi, rax
	mov	rdx, rbp
	call	memcpy
	mov	rax, qword ptr [rsp + 0x10]
	mov	qword ptr [r13 + 0x50], rax
	jmp	.label_1140
.label_1122:
	pxor	xmm0, xmm0
	movdqu	xmmword ptr [rax], xmm0
	mov	qword ptr [rax + 0x10], 0
	cmp	qword ptr [r12 + 8], 0
	mov	qword ptr [r13 + 0x50], rax
	jle	.label_1144
	lea	r14, [r12 + 0x10]
.label_1140:
	xor	eax, eax
	nop	dword ptr [rax]
.label_1143:
	mov	r8, qword ptr [r15]
	mov	rdx, qword ptr [r14]
	mov	rsi, qword ptr [rdx + rax*8]
	shl	rsi, 4
	mov	ebp, dword ptr [r8 + rsi + 8]
	mov	edx, ebp
	and	edx, 0x3ffff
	cmp	edx, 1
	je	.label_1137
	mov	edi, ebp
	shr	edi, 0x14
	movzx	ecx, byte ptr [r13 + 0x68]
	mov	edx, ecx
	shr	dl, 5
	movzx	edx, dl
	or	edx, edi
	shl	dl, 5
	and	dl, 0x20
	and	cl, 0xdf
	or	cl, dl
	mov	byte ptr [r13 + 0x68], cl
	cmp	bpl, 0xc
	je	.label_1124
	cmp	bpl, 4
	je	.label_1139
	cmp	bpl, 2
	jne	.label_1141
	or	cl, 0x10
	jmp	.label_1131
.label_1139:
	or	cl, 0x40
	jmp	.label_1131
.label_1141:
	lea	rdx, [r8 + rsi + 8]
	test	dword ptr [rdx], 0x3ff00
	je	.label_1137
.label_1124:
	or	cl, 0x80
.label_1131:
	mov	byte ptr [r13 + 0x68], cl
.label_1137:
	inc	rax
	cmp	rax, qword ptr [r12 + 8]
	jl	.label_1143
.label_1144:
	mov	rdi, r15
	mov	rsi, r13
	mov	rdx, rbx
	call	register_state
	test	eax, eax
	jne	.label_1128
.label_1119:
	mov	rax, r13
	add	rsp, 0x18
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_1126:
	mov	dword ptr [r14], 0
	jmp	.label_1133
.label_1128:
	mov	rdi, r13
	call	free_state
	mov	r14, qword ptr [rsp + 8]
	jmp	.label_1121
.label_1134:
	mov	rdi, r13
	call	free
.label_1121:
	mov	dword ptr [r14], 0xc
.label_1133:
	xor	r13d, r13d
	jmp	.label_1119
	nop	dword ptr [rax]
.label_1160:
	mov	rbx, qword ptr [rip + stderr]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_219
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
	nop	
	.section	.text
	.align	32
	#Procedure 0x4083aa

	.globl usage
	.type usage, @function
usage:
	push	rbp
	push	rbx
	push	rax
	mov	ebp, edi
	test	ebp, ebp
	jne	.label_1160
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_1162
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
	mov	esi, OFFSET FLAT:label_1161
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_1163
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_1165
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_1154
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_1155
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_1146
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_1152
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_1151
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_1156
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_1157
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_1158
	mov	edx, 5
	call	dcgettext
	mov	rsi, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:label_479
	mov	ecx, OFFSET FLAT:label_480
	xor	eax, eax
	call	__printf_chk
	mov	edi, 5
	xor	esi, esi
	call	setlocale
	test	rax, rax
	je	.label_1153
	mov	esi, OFFSET FLAT:label_1164
	mov	edx, 3
	mov	rdi, rax
	call	strncmp
	test	eax, eax
	je	.label_1153
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_1150
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	call	fputs_unlocked
.label_1153:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_1159
	mov	edx, 5
	call	dcgettext
	mov	rsi, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:label_480
	mov	ecx, OFFSET FLAT:label_1148
	xor	eax, eax
	call	__printf_chk
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_1147
	mov	edx, 5
	call	dcgettext
	mov	rsi, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:label_1148
	mov	ecx, OFFSET FLAT:label_1149
	xor	eax, eax
	call	__printf_chk
	mov	edi, ebp
	call	exit
	sub	rsp, 0x38
	mov	ecx, edx
	mov	r8, rsi
	mov	rdx, rdi
	mov	rsi, qword ptr [rip + label_166]
	mov	qword ptr [rsp + 0x30], rsi
	movups	xmm0, xmmword ptr [rip + label_167]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0, xmmword ptr [rip + label_168]
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
	nop	
	.section	.text
	.align	32
	#Procedure 0x408660

	.globl str_cd_iconv
	.type str_cd_iconv, @function
str_cd_iconv:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x28
	mov	r14, rsi
	mov	qword ptr [rsp + 0x20], rdi
	call	strlen
	mov	qword ptr [rsp + 0x18], rax
	mov	rbx, rax
	shl	rbx, 4
	cmp	rax, 0x10000000
	cmovae	rbx, rax
	lea	rbp, [rbx + 1]
	mov	rdi, rbp
	call	malloc
	mov	r12, rax
	test	r12, r12
	je	.label_1168
	xor	esi, esi
	xor	edx, edx
	xor	ecx, ecx
	xor	r8d, r8d
	mov	rdi, r14
	call	iconv
	mov	qword ptr [rsp + 8], r12
	mov	qword ptr [rsp + 0x10], rbx
	lea	rsi, [rsp + 0x20]
	lea	rdx, [rsp + 0x18]
	lea	rcx, [rsp + 8]
	lea	r8, [rsp + 0x10]
	mov	rdi, r14
	call	iconv
	cmp	rax, -1
	je	.label_1166
	mov	rbx, rbp
	mov	r13, r12
.label_1172:
	lea	rcx, [rsp + 8]
	lea	r8, [rsp + 0x10]
	xor	esi, esi
	xor	edx, edx
	mov	rdi, r14
	call	iconv
	cmp	rax, -1
	je	.label_1167
	mov	rbp, rbx
	mov	r12, r13
.label_1175:
	mov	rax, qword ptr [rsp + 8]
	lea	rcx, [rax + 1]
	mov	qword ptr [rsp + 8], rcx
	mov	byte ptr [rax], 0
	mov	rsi, qword ptr [rsp + 8]
	sub	rsi, r12
	cmp	rsi, rbp
	jae	.label_1169
	mov	rdi, r12
	call	realloc
	test	rax, rax
	cmovne	r12, rax
	jmp	.label_1169
.label_1168:
	call	__errno_location
	mov	dword ptr [rax], 0xc
	jmp	.label_1171
.label_1166:
	call	__errno_location
	mov	r15, rax
.label_1179:
	mov	eax, dword ptr [r15]
	cmp	eax, 7
	jne	.label_1178
	lea	rbx, [rbp + rbp]
	cmp	rbx, rbp
	jbe	.label_1170
	mov	rbp, qword ptr [rsp + 8]
	mov	rdi, r12
	mov	rsi, rbx
	call	realloc
	mov	r13, rax
	test	r13, r13
	je	.label_1170
	sub	rbp, r12
	mov	rax, r13
	add	rax, rbp
	mov	qword ptr [rsp + 8], rax
	lea	rax, [rbx - 1]
	sub	rax, rbp
	mov	qword ptr [rsp + 0x10], rax
	mov	rdi, r14
	lea	rsi, [rsp + 0x20]
	lea	rdx, [rsp + 0x18]
	lea	rcx, [rsp + 8]
	lea	r8, [rsp + 0x10]
	call	iconv
	cmp	rax, -1
	mov	r12, r13
	mov	rbp, rbx
	je	.label_1179
	jmp	.label_1172
.label_1167:
	call	__errno_location
	mov	r15, rax
	nop	word ptr cs:[rax + rax]
.label_1176:
	cmp	dword ptr [r15], 7
	jne	.label_1177
	lea	rbp, [rbx + rbx]
	cmp	rbp, rbx
	jbe	.label_1173
	mov	rbx, qword ptr [rsp + 8]
	mov	rdi, r13
	mov	rsi, rbp
	call	realloc
	mov	r12, rax
	test	r12, r12
	je	.label_1173
	sub	rbx, r13
	mov	rax, r12
	add	rax, rbx
	mov	qword ptr [rsp + 8], rax
	lea	rax, [rbp - 1]
	sub	rax, rbx
	mov	qword ptr [rsp + 0x10], rax
	xor	esi, esi
	xor	edx, edx
	mov	rdi, r14
	lea	rcx, [rsp + 8]
	lea	r8, [rsp + 0x10]
	call	iconv
	cmp	rax, -1
	mov	r13, r12
	mov	rbx, rbp
	je	.label_1176
	jmp	.label_1175
.label_1170:
	mov	dword ptr [r15], 0xc
	jmp	.label_1174
.label_1173:
	mov	dword ptr [r15], 0xc
.label_1177:
	mov	r12, r13
.label_1174:
	mov	ebx, dword ptr [r15]
	mov	rdi, r12
	call	free
	mov	dword ptr [r15], ebx
.label_1171:
	xor	r12d, r12d
.label_1169:
	mov	rax, r12
	add	rsp, 0x28
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_1178:
	cmp	eax, 0x16
	mov	rbx, rbp
	mov	r13, r12
	je	.label_1172
	jmp	.label_1174
	nop	
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
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x408920

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
	mov	rax, qword ptr [r15 + 0x48]
	mov	rsi, qword ptr [r15 + 0x50]
	cmp	rax, rsi
	je	.label_1181
	mov	rdi, r14
	mov	rdx, rbx
	call	re_compile_fastmap_iter
	mov	rax, qword ptr [r15 + 0x48]
.label_1181:
	mov	rsi, qword ptr [r15 + 0x58]
	cmp	rax, rsi
	je	.label_1180
	mov	rdi, r14
	mov	rdx, rbx
	call	re_compile_fastmap_iter
	mov	rax, qword ptr [r15 + 0x48]
.label_1180:
	mov	rsi, qword ptr [r15 + 0x60]
	cmp	rax, rsi
	je	.label_1182
	mov	rdi, r14
	mov	rdx, rbx
	call	re_compile_fastmap_iter
.label_1182:
	or	byte ptr [r14 + 0x38], 8
	xor	eax, eax
	pop	rbx
	pop	r14
	pop	r15
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4089f0

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
	jns	.label_1183
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
.label_1183:
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x408a60

	.globl mbsstr
	.type mbsstr, @function
mbsstr:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x168
	mov	rbp, rsi
	mov	qword ptr [rsp], rdi
	call	__ctype_get_mb_cur_max
	cmp	rax, 2
	mov	qword ptr [rsp + 8], rbp
	jb	.label_1214
	mov	qword ptr [rsp + 0xf8], rbp
	mov	byte ptr [rsp + 0xe8], 0
	mov	qword ptr [rsp + 0xec], 0
	mov	byte ptr [rsp + 0xf4], 0
	lea	rdi, [rsp + 0xe8]
	call	mbuiter_multi_next
	mov	rax, qword ptr [rsp + 0x108]
	test	al, al
	je	.label_1208
	shr	rax, 0x20
	jne	.label_1208
	mov	rax, qword ptr [rsp]
	jmp	.label_1188
.label_1214:
	mov	r12b, byte ptr [rbp]
	test	r12b, r12b
	mov	rdi, rbp
	je	.label_1190
	mov	rbp, qword ptr [rsp]
	mov	r15b, byte ptr [rbp]
	xor	eax, eax
	test	r15b, r15b
	je	.label_1188
	mov	r9b, 1
	xor	r8d, r8d
	mov	r10, rdi
	xor	r13d, r13d
	xor	r14d, r14d
.label_1185:
	cmp	r14, 0xa
	jb	.label_1187
	mov	eax, r9d
	and	al, 1
	je	.label_1187
	lea	rax, [r14 + r14*4]
	cmp	r13, rax
	jb	.label_1187
	test	r10, r10
	je	.label_1192
	mov	byte ptr [rsp], r12b
	mov	rsi, r13
	sub	rsi, r8
	mov	rbx, rbp
	mov	rdi, r10
	mov	rbp, r9
	mov	r12, r10
	call	strnlen
	mov	r10, r12
	mov	r9, rbp
	mov	r12b, byte ptr [rsp]
	mov	rdi, qword ptr [rsp + 8]
	mov	rbp, rbx
	cmp	byte ptr [r10 + rax], 0
	mov	r8, r13
	je	.label_1192
	add	r10, rax
	mov	r8, r13
	jne	.label_1187
.label_1192:
	mov	qword ptr [rsp], r13
	mov	r13, r8
	mov	rbx, rbp
	mov	rbp, rdi
	call	strlen
	mov	rdi, rbx
	mov	rsi, rbp
	mov	rdx, rax
	lea	rcx, [rsp + 0xe8]
	call	knuth_morris_pratt
	test	al, al
	jne	.label_1204
	mov	r15b, byte ptr [rbx]
	xor	r9d, r9d
	xor	r10d, r10d
	mov	rbp, rbx
	mov	rdi, qword ptr [rsp + 8]
	mov	r8, r13
	mov	r13, qword ptr [rsp]
.label_1187:
	cmp	r15b, r12b
	jne	.label_1209
	mov	ecx, 1
	nop	word ptr cs:[rax + rax]
.label_1213:
	movzx	edx, byte ptr [rdi + rcx]
	test	dl, dl
	je	.label_1210
	movzx	ebx, byte ptr [rbp + rcx]
	test	bl, bl
	mov	eax, 0
	je	.label_1188
	inc	rcx
	cmp	bl, dl
	je	.label_1213
	add	r13, rcx
	jmp	.label_1215
	nop	word ptr [rax + rax]
.label_1209:
	inc	r13
.label_1215:
	inc	r14
	mov	r15b, byte ptr [rbp + 1]
	inc	rbp
	test	r15b, r15b
	mov	eax, 0
	jne	.label_1185
	jmp	.label_1188
.label_1208:
	mov	rax, qword ptr [rsp + 8]
	mov	qword ptr [rsp + 0x138], rax
	mov	byte ptr [rsp + 0x128], 0
	mov	qword ptr [rsp + 0x12c], 0
	mov	byte ptr [rsp + 0x134], 0
	mov	rax, qword ptr [rsp]
	mov	qword ptr [rsp + 0x70], rax
	mov	byte ptr [rsp + 0x60], 0
	mov	qword ptr [rsp + 0x64], 0
	mov	byte ptr [rsp + 0x6c], 0
	lea	rdi, [rsp + 0x60]
	call	mbuiter_multi_next
	mov	rax, qword ptr [rsp + 0x80]
	xor	ecx, ecx
	mov	qword ptr [rsp + 0x18], rcx
	test	al, al
	je	.label_1199
	shr	rax, 0x20
	je	.label_1202
.label_1199:
	mov	al, 1
	mov	dword ptr [rsp + 0x14], eax
	xor	eax, eax
	mov	qword ptr [rsp + 0x18], rax
	lea	r12, [rsp + 0x60]
	lea	rbx, [rsp + 0x128]
	xor	ebp, ebp
	xor	r14d, r14d
	xor	r13d, r13d
.label_1206:
	mov	r15, r14
	cmp	r13, 0xa
	jb	.label_1191
	mov	eax, dword ptr [rsp + 0x14]
	and	al, 1
	je	.label_1191
	lea	rax, [r13 + r13*4]
	cmp	r15, rax
	jb	.label_1191
	cmp	r15, rbp
	je	.label_1211
	sub	rbp, r15
	nop	dword ptr [rax]
.label_1216:
	mov	rdi, rbx
	call	mbuiter_multi_next
	mov	rax, qword ptr [rsp + 0x148]
	test	al, al
	je	.label_1212
	shr	rax, 0x20
	je	.label_1211
.label_1212:
	mov	rax, qword ptr [rsp + 0x140]
	add	qword ptr [rsp + 0x138], rax
	mov	byte ptr [rsp + 0x134], 0
	inc	rbp
	jne	.label_1216
.label_1211:
	mov	rdi, rbx
	call	mbuiter_multi_next
	mov	rax, qword ptr [rsp + 0x148]
	test	al, al
	je	.label_1189
	shr	rax, 0x20
	mov	rbp, r15
	mov	rax, qword ptr [rsp]
	mov	rcx, qword ptr [rsp + 8]
	jne	.label_1191
	mov	rdi, rax
	mov	rsi, rcx
	lea	rdx, [rsp + 0xa0]
	call	knuth_morris_pratt_multibyte
	test	al, al
	jne	.label_1195
	mov	dword ptr [rsp + 0x14], 0
.label_1189:
	mov	rbp, r15
.label_1191:
	lea	r14, [r15 + 1]
	mov	rax, qword ptr [rsp + 0x80]
	test	al, al
	je	.label_1197
	mov	rcx, qword ptr [rsp + 0x108]
	test	cl, cl
	je	.label_1197
	shr	rcx, 0x20
	shr	rax, 0x20
	cmp	eax, ecx
	je	.label_1201
	jmp	.label_1203
.label_1197:
	mov	rdx, qword ptr [rsp + 0x78]
	cmp	rdx, qword ptr [rsp + 0x100]
	jne	.label_1203
	mov	rdi, qword ptr [rsp + 0x70]
	mov	rsi, qword ptr [rsp + 0xf8]
	call	memcmp
	test	eax, eax
	jne	.label_1203
.label_1201:
	mov	qword ptr [rsp + 0xe0], r13
	movups	xmm0, xmmword ptr [rsp + 0x60]
	movups	xmm1, xmmword ptr [rsp + 0x70]
	movups	xmm2, xmmword ptr [rsp + 0x80]
	movups	xmm3, xmmword ptr [rsp + 0x90]
	movaps	xmmword ptr [rsp + 0xd0], xmm3
	movaps	xmmword ptr [rsp + 0xc0], xmm2
	movaps	xmmword ptr [rsp + 0xb0], xmm1
	movaps	xmmword ptr [rsp + 0xa0], xmm0
	mov	rax, qword ptr [rsp + 0xb8]
	add	qword ptr [rsp + 0xb0], rax
	mov	byte ptr [rsp + 0xac], 0
	mov	rax, qword ptr [rsp + 8]
	mov	qword ptr [rsp + 0x30], rax
	mov	byte ptr [rsp + 0x20], 0
	mov	qword ptr [rsp + 0x24], 0
	mov	byte ptr [rsp + 0x2c], 0
	lea	rdi, [rsp + 0x20]
	call	mbuiter_multi_next
	mov	rax, qword ptr [rsp + 0x40]
	test	al, al
	je	.label_1193
	shr	rax, 0x20
	je	.label_1194
.label_1193:
	mov	rax, qword ptr [rsp + 0x38]
	add	qword ptr [rsp + 0x30], rax
	mov	byte ptr [rsp + 0x2c], 0
	lea	rdi, [rsp + 0x20]
	call	mbuiter_multi_next
	mov	rax, qword ptr [rsp + 0x40]
	test	al, al
	je	.label_1198
	shr	rax, 0x20
	je	.label_1200
.label_1198:
	add	r15, 2
	mov	r14, r15
	nop	word ptr cs:[rax + rax]
.label_1196:
	lea	rdi, [rsp + 0xa0]
	call	mbuiter_multi_next
	mov	rcx, qword ptr [rsp + 0xc0]
	mov	rax, rcx
	shr	rax, 0x20
	test	cl, cl
	je	.label_1205
	test	eax, eax
	je	.label_1202
.label_1205:
	test	cl, cl
	sete	dl
	mov	rcx, qword ptr [rsp + 0x40]
	test	cl, cl
	je	.label_1207
	test	dl, dl
	jne	.label_1207
	shr	rcx, 0x20
	cmp	eax, ecx
	jne	.label_1184
	mov	r15, qword ptr [rsp + 0xb0]
	mov	rax, qword ptr [rsp + 0xb8]
	mov	r12, qword ptr [rsp + 0x30]
	mov	r13, qword ptr [rsp + 0x38]
	jmp	.label_1186
	nop	word ptr cs:[rax + rax]
.label_1207:
	mov	r13, qword ptr [rsp + 0xb8]
	cmp	r13, qword ptr [rsp + 0x38]
	jne	.label_1184
	mov	r15, qword ptr [rsp + 0xb0]
	mov	r12, qword ptr [rsp + 0x30]
	mov	rdi, r15
	mov	rsi, r12
	mov	rdx, r13
	call	memcmp
	test	eax, eax
	mov	rax, r13
	jne	.label_1184
.label_1186:
	add	r15, rax
	mov	qword ptr [rsp + 0xb0], r15
	mov	byte ptr [rsp + 0xac], 0
	add	r12, r13
	mov	qword ptr [rsp + 0x30], r12
	mov	byte ptr [rsp + 0x2c], 0
	lea	rdi, [rsp + 0x20]
	call	mbuiter_multi_next
	mov	rax, qword ptr [rsp + 0x40]
	inc	r14
	test	al, al
	je	.label_1196
	shr	rax, 0x20
	jne	.label_1196
	jmp	.label_1200
.label_1184:
	lea	r12, [rsp + 0x60]
	mov	r13, qword ptr [rsp + 0xe0]
	nop	word ptr cs:[rax + rax]
.label_1203:
	inc	r13
	mov	rax, qword ptr [rsp + 0x78]
	add	qword ptr [rsp + 0x70], rax
	mov	byte ptr [rsp + 0x6c], 0
	mov	rdi, r12
	call	mbuiter_multi_next
	mov	rax, qword ptr [rsp + 0x80]
	test	al, al
	je	.label_1206
	shr	rax, 0x20
	jne	.label_1206
	jmp	.label_1202
.label_1190:
	mov	rax, qword ptr [rsp]
	jmp	.label_1188
.label_1210:
	mov	rax, rbp
	jmp	.label_1188
.label_1200:
	mov	rax, qword ptr [rsp + 0x70]
.label_1217:
	mov	qword ptr [rsp + 0x18], rax
.label_1202:
	mov	rax, qword ptr [rsp + 0x18]
.label_1188:
	add	rsp, 0x168
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_1204:
	mov	rax, qword ptr [rsp + 0xe8]
	jmp	.label_1188
.label_1195:
	mov	rax, qword ptr [rsp + 0xa0]
	jmp	.label_1217
.label_1194:
	call	abort
	nop	dword ptr [rax + rax]
.label_1221:
	mov	rcx, qword ptr [rip + stderr]
	mov	edi, OFFSET FLAT:label_113
	mov	esi, 0x37
	mov	edx, 1
	call	fwrite
	call	abort
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40903f

	.globl set_program_name
	.type set_program_name, @function
set_program_name:
	push	r14
	push	rbx
	push	rax
	mov	rbx, rdi
	test	rbx, rbx
	je	.label_1221
	mov	esi, 0x2f
	mov	rdi, rbx
	call	strrchr
	test	rax, rax
	lea	r14, [rax + 1]
	cmove	r14, rbx
	mov	rax, r14
	sub	rax, rbx
	cmp	rax, 7
	jl	.label_1219
	lea	rdi, [r14 - 7]
	mov	esi, OFFSET FLAT:label_1222
	mov	edx, 7
	call	strncmp
	test	eax, eax
	jne	.label_1219
	mov	esi, OFFSET FLAT:label_1220
	mov	edx, 3
	mov	rdi, r14
	call	strncmp
	test	eax, eax
	jne	.label_1218
	add	r14, 3
	mov	qword ptr [rip + __progname],  r14
.label_1218:
	mov	rbx, r14
.label_1219:
	mov	qword ptr [rip + program_name],  rbx
	mov	qword ptr [rip + __progname_full],  rbx
	add	rsp, 8
	pop	rbx
	pop	r14
	ret	
	.section	.text
	.align	32
	#Procedure 0x4090c0

	.globl re_node_set_insert
	.type re_node_set_insert, @function
re_node_set_insert:
	push	r14
	push	rbx
	push	rax
	mov	rbx, rsi
	mov	r14, rdi
	mov	rsi, qword ptr [r14]
	test	rsi, rsi
	je	.label_1223
	mov	rcx, qword ptr [r14 + 8]
	test	rcx, rcx
	je	.label_1232
	cmp	rsi, rcx
	jne	.label_1228
	lea	rax, [rsi + rsi]
	mov	qword ptr [r14], rax
	mov	rdi, qword ptr [r14 + 0x10]
	shl	rsi, 4
	call	realloc
	test	rax, rax
	je	.label_1234
	mov	qword ptr [r14 + 0x10], rax
	mov	rcx, qword ptr [r14 + 8]
	jmp	.label_1236
.label_1223:
	movaps	xmm0, xmmword ptr [rip + label_211]
	movups	xmmword ptr [r14], xmm0
	mov	edi, 8
	call	malloc
	mov	qword ptr [r14 + 0x10], rax
	test	rax, rax
	je	.label_1229
	mov	qword ptr [rax], rbx
	jmp	.label_1230
.label_1229:
	xorps	xmm0, xmm0
	movups	xmmword ptr [r14], xmm0
.label_1234:
	xor	eax, eax
	jmp	.label_1233
	nop	
.label_1226:
	mov	rdx, qword ptr [rax + rcx*8 - 8]
	jmp	.label_1235
	nop	dword ptr [rax]
.label_1232:
	mov	rax, qword ptr [r14 + 0x10]
	mov	qword ptr [rax], rbx
	jmp	.label_1224
.label_1228:
	mov	rax, qword ptr [r14 + 0x10]
.label_1236:
	cmp	qword ptr [rax], rbx
	jle	.label_1226
	test	rcx, rcx
	jle	.label_1227
	nop	word ptr cs:[rax + rax]
.label_1231:
	mov	rdx, qword ptr [rax + rcx*8 - 8]
	mov	qword ptr [rax + rcx*8], rdx
	cmp	rcx, 1
	lea	rcx, [rcx - 1]
	jg	.label_1231
	jmp	.label_1227
.label_1225:
	mov	qword ptr [rax + rcx*8], rdx
	mov	rdx, qword ptr [rax + rcx*8 - 0x10]
	dec	rcx
.label_1235:
	cmp	rdx, rbx
	jg	.label_1225
.label_1227:
	mov	qword ptr [rax + rcx*8], rbx
.label_1224:
	inc	qword ptr [r14 + 8]
.label_1230:
	mov	al, 1
.label_1233:
	add	rsp, 8
	pop	rbx
	pop	r14
	ret	
	.section	.text
	.align	32
	#Procedure 0x4091a0

	.globl quote_n
	.type quote_n, @function
quote_n:
	mov	rdx, -1
	mov	ecx, OFFSET FLAT:quote_quoting_options
	jmp	quotearg_n_options
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4091c0

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
	jne	.label_1238
	call	locale_charset
	movsx	ecx, byte ptr [rax]
	and	ecx, 0xffffffdf
	cmp	ecx, 0x47
	je	.label_1243
	cmp	ecx, 0x55
	jne	.label_1237
	movsx	ecx, byte ptr [rax + 1]
	and	ecx, 0xffffffdf
	cmp	ecx, 0x54
	jne	.label_1237
	movsx	ecx, byte ptr [rax + 2]
	and	ecx, 0xffffffdf
	cmp	ecx, 0x46
	jne	.label_1237
	cmp	byte ptr [rax + 3], 0x2d
	jne	.label_1237
	cmp	byte ptr [rax + 4], 0x38
	jne	.label_1237
	cmp	byte ptr [rax + 5], 0
	jne	.label_1237
	cmp	byte ptr [rbx], 0x60
	mov	ecx, OFFSET FLAT:label_1240
	mov	eax, OFFSET FLAT:label_1241
	jmp	.label_1242
.label_1243:
	movsx	ecx, byte ptr [rax + 1]
	and	ecx, 0xffffffdf
	cmp	ecx, 0x42
	jne	.label_1237
	cmp	byte ptr [rax + 2], 0x31
	jne	.label_1237
	cmp	byte ptr [rax + 3], 0x38
	jne	.label_1237
	cmp	byte ptr [rax + 4], 0x30
	jne	.label_1237
	cmp	byte ptr [rax + 5], 0x33
	jne	.label_1237
	cmp	byte ptr [rax + 6], 0x30
	jne	.label_1237
	cmp	byte ptr [rax + 7], 0
	je	.label_1239
.label_1237:
	cmp	ebp, 9
	mov	ecx, OFFSET FLAT:label_769
	mov	eax, OFFSET FLAT:label_694
.label_1242:
	cmove	rax, rcx
.label_1238:
	add	rsp, 8
	pop	rbx
	pop	rbp
	ret	
.label_1239:
	cmp	byte ptr [rbx], 0x60
	mov	ecx, OFFSET FLAT:label_1244
	mov	eax, OFFSET FLAT:label_1245
	jmp	.label_1242
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x409290

	.globl swallow_file_in_memory
	.type swallow_file_in_memory, @function
swallow_file_in_memory:
	push	rbp
	push	r14
	push	rbx
	sub	rsp, 0x10
	mov	r14, rsi
	mov	rbx, rdi
	test	rbx, rbx
	je	.label_1247
	mov	al, byte ptr [rbx]
	test	al, al
	je	.label_1247
	cmp	al, 0x2d
	jne	.label_1248
	cmp	byte ptr [rbx + 1], 0
	je	.label_1247
.label_1248:
	lea	rsi, [rsp + 8]
	mov	rdi, rbx
	call	read_file
	mov	qword ptr [r14], rax
	jmp	.label_1246
.label_1247:
	mov	rdi, qword ptr [rip + stdin]
	lea	rsi, [rsp + 8]
	call	fread_file
	mov	qword ptr [r14], rax
	mov	ebx, OFFSET FLAT:label_1249
.label_1246:
	test	rax, rax
	je	.label_1250
	add	rax, qword ptr [rsp + 8]
	mov	qword ptr [r14 + 8], rax
	add	rsp, 0x10
	pop	rbx
	pop	r14
	pop	rbp
	ret	
.label_1250:
	call	__errno_location
	mov	ebp, dword ptr [rax]
	xor	edi, edi
	mov	esi, 3
	mov	rdx, rbx
	call	quotearg_n_style_colon
	mov	rcx, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:label_378
	xor	eax, eax
	mov	esi, ebp
	call	error
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x409330

	.globl rpl_nl_langinfo
	.type rpl_nl_langinfo, @function
rpl_nl_langinfo:
	lea	eax, [rdi - 0x27d8]
	lea	ecx, [rdi + 0x1d842]
	cmp	eax, 0xc
	cmovb	edi, ecx
	jmp	nl_langinfo
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x409350

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
	je	.label_1252
	test	rbx, rbx
	je	.label_1252
	mov	rdi, rbx
	call	fileno
	mov	ebp, eax
	mov	edi, ebp
	mov	esi, ebp
	call	dup2
	test	eax, eax
	jns	.label_1252
	call	__errno_location
	cmp	dword ptr [rax], 9
	jne	.label_1252
	mov	edi, OFFSET FLAT:label_1253
	mov	esi, 0x80000
	xor	eax, eax
	call	open
	mov	r12d, eax
	cmp	r12d, ebp
	je	.label_1251
	mov	edi, r12d
	mov	esi, ebp
	call	dup2
	mov	ebp, eax
	mov	edi, r12d
	call	close
	test	ebp, ebp
	js	.label_1252
.label_1251:
	mov	rdi, r15
	mov	rsi, r14
	mov	rdx, rbx
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	pop	rbp
	jmp	freopen
.label_1252:
	mov	rax, rbx
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	pop	rbp
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4093f0

	.globl xstr_iconv
	.type xstr_iconv, @function
xstr_iconv:
	push	rbx
	call	str_iconv
	mov	rbx, rax
	test	rbx, rbx
	jne	.label_1255
	call	__errno_location
	cmp	dword ptr [rax], 0xc
	je	.label_1254
.label_1255:
	mov	rax, rbx
	pop	rbx
	ret	
.label_1254:
	call	xalloc_die
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x409420

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
	mov	r14, r8
	mov	qword ptr [rsp], rcx
	mov	ebp, edx
	mov	rbx, rdi
	cmp	ebp, 0x25
	jae	.label_1299
	test	rsi, rsi
	lea	r12, [rsp + 0x10]
	cmovne	r12, rsi
	call	__errno_location
	mov	r15, rax
	mov	dword ptr [r15], 0
	xor	r13d, r13d
	xor	ecx, ecx
	mov	rdi, rbx
	mov	rsi, r12
	mov	edx, ebp
	call	__strtol_internal
	mov	rbp, rax
	mov	qword ptr [rsp + 8], r12
	mov	r12, qword ptr [r12]
	cmp	r12, rbx
	je	.label_1291
	mov	eax, dword ptr [r15]
	test	eax, eax
	je	.label_1282
	mov	r13d, 4
	cmp	eax, 0x22
	jne	.label_1280
	mov	r13d, 1
.label_1282:
	test	r14, r14
	je	.label_1288
	mov	r15d, r13d
	jmp	.label_1293
.label_1291:
	mov	r13d, 4
	test	r14, r14
	je	.label_1280
	movsx	esi, byte ptr [rbx]
	test	esi, esi
	je	.label_1280
	mov	rdi, r14
	call	strchr
	xor	r15d, r15d
	mov	ebp, 1
	test	rax, rax
	je	.label_1280
.label_1293:
	movsx	r13d, byte ptr [r12]
	test	r13d, r13d
	je	.label_1303
	mov	rdi, r14
	mov	esi, r13d
	call	strchr
	test	rax, rax
	je	.label_1285
	mov	ebx, 1
	mov	r10d, 0x400
	lea	eax, [r13 - 0x45]
	cmp	eax, 0x2f
	ja	.label_1256
	movabs	rcx, 0x814400308945
	bt	rcx, rax
	jae	.label_1256
	mov	esi, 0x30
	mov	rdi, r14
	call	strchr
	mov	ebx, 1
	mov	r10d, 0x400
	test	rax, rax
	je	.label_1256
	movsx	eax, byte ptr [r12 + 1]
	mov	ebx, 1
	mov	r10d, 0x400
	cmp	eax, 0x42
	je	.label_1257
	cmp	eax, 0x44
	je	.label_1257
	cmp	eax, 0x69
	jne	.label_1256
	xor	eax, eax
	cmp	byte ptr [r12 + 2], 0x42
	sete	al
	lea	rbx, [rax + rax + 1]
	mov	r10d, 0x400
	jmp	.label_1256
.label_1288:
	mov	rax, qword ptr [rsp]
	mov	qword ptr [rax], rbp
	jmp	.label_1280
.label_1257:
	mov	ebx, 2
	mov	r10d, 0x3e8
.label_1256:
	add	r13d, -0x42
	cmp	r13d, 0x35
	ja	.label_1285
	movabs	r9, 0x7fffffffffffffff
	xor	ecx, ecx
	mov	r8, rbp
	jmp	qword ptr [(r13 * 8) + label_1289]
.label_2914:
	lea	r8, [r9 + 1]
	mov	rax, r8
	cqo	
	idiv	r10
	mov	r11, rax
	cmp	rbp, r11
	mov	r14d, 1
	mov	rsi, r8
	mov	ecx, 1
	jl	.label_1297
	xor	edx, edx
	mov	rax, r9
	div	r10
	mov	rsi, rbp
	imul	rsi, r10
	xor	ecx, ecx
	cmp	rax, rbp
	setl	cl
	cmovl	rsi, r9
.label_1297:
	cmp	rsi, r11
	mov	rdi, r8
	jl	.label_1306
	xor	edx, edx
	mov	rax, r9
	div	r10
	mov	rdi, rsi
	imul	rdi, r10
	xor	r14d, r14d
	cmp	rax, rsi
	setl	r14b
	cmovl	rdi, r9
.label_1306:
	or	r14d, ecx
	cmp	rdi, r11
	mov	ecx, 1
	jl	.label_1258
	xor	edx, edx
	mov	rax, r9
	div	r10
	imul	r10, rdi
	xor	ecx, ecx
	cmp	rax, rdi
	setl	cl
	cmovl	r10, r9
	mov	r8, r10
.label_1258:
	or	ecx, r14d
	jmp	.label_1269
.label_1285:
	mov	rax, qword ptr [rsp]
	mov	qword ptr [rax], rbp
	or	r15d, 2
	jmp	.label_1272
.label_2915:
	lea	r8, [r9 + 1]
	mov	rax, r8
	cqo	
	idiv	r10
	cmp	rbp, rax
	mov	ecx, 1
	jl	.label_1269
	xor	edx, edx
	mov	rax, r9
	div	r10
	imul	r10, rbp
	xor	ecx, ecx
	cmp	rax, rbp
	setl	cl
	cmovl	r10, r9
	mov	r8, r10
	jmp	.label_1269
.label_2916:
	lea	r8, [r9 + 1]
	mov	rax, r8
	cqo	
	idiv	r10
	mov	rdi, rax
	cmp	rbp, rdi
	mov	ecx, 1
	mov	rsi, r8
	mov	r11d, 1
	jl	.label_1286
	xor	edx, edx
	mov	rax, r9
	div	r10
	mov	rsi, rbp
	imul	rsi, r10
	xor	r11d, r11d
	cmp	rax, rbp
	setl	r11b
	cmovl	rsi, r9
.label_1286:
	cmp	rsi, rdi
	jl	.label_1301
	xor	edx, edx
	mov	rax, r9
	div	r10
	imul	r10, rsi
	xor	ecx, ecx
	cmp	rax, rsi
	setl	cl
	cmovl	r10, r9
	mov	r8, r10
.label_1301:
	or	ecx, r11d
	jmp	.label_1269
.label_2918:
	lea	r8, [r9 + 1]
	mov	rax, r8
	cqo	
	idiv	r10
	mov	r11, rax
	cmp	rbp, r11
	mov	r14d, 1
	mov	rdi, r8
	mov	ecx, 1
	jl	.label_1307
	xor	edx, edx
	mov	rax, r9
	div	r10
	mov	rdi, rbp
	imul	rdi, r10
	xor	ecx, ecx
	cmp	rax, rbp
	setl	cl
	cmovl	rdi, r9
.label_1307:
	mov	rbp, rbx
	cmp	rdi, r11
	mov	rsi, r8
	jl	.label_1266
	xor	edx, edx
	mov	rax, r9
	div	r10
	mov	rsi, rdi
	imul	rsi, r10
	xor	r14d, r14d
	cmp	rax, rdi
	setl	r14b
	cmovl	rsi, r9
.label_1266:
	or	r14d, ecx
	cmp	rsi, r11
	mov	ecx, 1
	mov	rbx, r8
	mov	edi, 1
	jl	.label_1276
	xor	edx, edx
	mov	rax, r9
	div	r10
	mov	rbx, rsi
	imul	rbx, r10
	xor	edi, edi
	cmp	rax, rsi
	setl	dil
	cmovl	rbx, r9
.label_1276:
	or	edi, r14d
	cmp	rbx, r11
	jl	.label_1284
	xor	edx, edx
	mov	rax, r9
	div	r10
	imul	r10, rbx
	xor	ecx, ecx
	cmp	rax, rbx
	setl	cl
	cmovl	r10, r9
	mov	r8, r10
.label_1284:
	or	ecx, edi
	mov	rbx, rbp
	jmp	.label_1269
.label_2912:
	movabs	rax, 0xffe0000000000000
	cmp	rbp, rax
	jl	.label_1283
	mov	r8, rbp
	shl	r8, 0xa
	movabs	rax, 0x1fffffffffffff
	jmp	.label_1287
.label_2913:
	mov	r13, rbx
	lea	r8, [r9 + 1]
	mov	rax, r8
	cqo	
	idiv	r10
	mov	r11, rax
	cmp	rbp, r11
	mov	ebx, 1
	mov	rsi, r8
	mov	edi, 1
	jl	.label_1275
	xor	edx, edx
	mov	rax, r9
	div	r10
	mov	rsi, rbp
	imul	rsi, r10
	xor	edi, edi
	cmp	rax, rbp
	setl	dil
	cmovl	rsi, r9
.label_1275:
	cmp	rsi, r11
	mov	rcx, r8
	jl	.label_1262
	xor	edx, edx
	mov	rax, r9
	div	r10
	mov	rcx, rsi
	imul	rcx, r10
	xor	ebx, ebx
	cmp	rax, rsi
	setl	bl
	cmovl	rcx, r9
.label_1262:
	or	ebx, edi
	cmp	rcx, r11
	mov	r14d, 1
	mov	rsi, r8
	mov	ebp, 1
	jl	.label_1294
	xor	edx, edx
	mov	rax, r9
	div	r10
	mov	rsi, rcx
	imul	rsi, r10
	xor	ebp, ebp
	cmp	rax, rcx
	setl	bpl
	cmovl	rsi, r9
.label_1294:
	or	ebp, ebx
	cmp	rsi, r11
	mov	rdi, r8
	jl	.label_1279
	xor	edx, edx
	mov	rax, r9
	div	r10
	mov	rdi, rsi
	imul	rdi, r10
	xor	r14d, r14d
	cmp	rax, rsi
	setl	r14b
	cmovl	rdi, r9
.label_1279:
	or	r14d, ebp
	cmp	rdi, r11
	mov	ecx, 1
	mov	rsi, r8
	mov	ebx, 1
	jl	.label_1290
	xor	edx, edx
	mov	rax, r9
	div	r10
	mov	rsi, rdi
	imul	rsi, r10
	xor	ebx, ebx
	cmp	rax, rdi
	setl	bl
	cmovl	rsi, r9
.label_1290:
	or	ebx, r14d
	cmp	rsi, r11
	jl	.label_1300
	xor	edx, edx
	mov	rax, r9
	div	r10
	imul	r10, rsi
	xor	ecx, ecx
	cmp	rax, rsi
	setl	cl
	cmovl	r10, r9
	mov	r8, r10
.label_1300:
	or	ecx, ebx
	mov	rbx, r13
	jmp	.label_1269
.label_2917:
	mov	r13, rbx
	lea	r8, [r9 + 1]
	mov	rax, r8
	cqo	
	idiv	r10
	mov	r11, rax
	cmp	rbp, r11
	mov	ebx, 1
	mov	rsi, r8
	mov	edi, 1
	jl	.label_1309
	xor	edx, edx
	mov	rax, r9
	div	r10
	mov	rsi, rbp
	imul	rsi, r10
	xor	edi, edi
	cmp	rax, rbp
	setl	dil
	cmovl	rsi, r9
.label_1309:
	cmp	rsi, r11
	mov	rcx, r8
	jl	.label_1268
	xor	edx, edx
	mov	rax, r9
	div	r10
	mov	rcx, rsi
	imul	rcx, r10
	xor	ebx, ebx
	cmp	rax, rsi
	setl	bl
	cmovl	rcx, r9
.label_1268:
	or	ebx, edi
	cmp	rcx, r11
	mov	r14d, 1
	mov	rsi, r8
	mov	ebp, 1
	jl	.label_1277
	xor	edx, edx
	mov	rax, r9
	div	r10
	mov	rsi, rcx
	imul	rsi, r10
	xor	ebp, ebp
	cmp	rax, rcx
	setl	bpl
	cmovl	rsi, r9
.label_1277:
	or	ebp, ebx
	cmp	rsi, r11
	mov	rdi, r8
	jl	.label_1278
	xor	edx, edx
	mov	rax, r9
	div	r10
	mov	rdi, rsi
	imul	rdi, r10
	xor	r14d, r14d
	cmp	rax, rsi
	setl	r14b
	cmovl	rdi, r9
.label_1278:
	or	r14d, ebp
	cmp	rdi, r11
	mov	ecx, 1
	mov	rbx, r13
	jl	.label_1298
	xor	edx, edx
	mov	rax, r9
	div	r10
	imul	r10, rdi
	xor	ecx, ecx
	cmp	rax, rdi
	setl	cl
	cmovl	r10, r9
	mov	r8, r10
.label_1298:
	or	ecx, r14d
	jmp	.label_1269
.label_2919:
	mov	r13, rbx
	lea	r8, [r9 + 1]
	mov	rax, r8
	cqo	
	idiv	r10
	mov	r11, rax
	cmp	rbp, r11
	mov	edi, 1
	mov	rbx, r8
	mov	ecx, 1
	jl	.label_1305
	xor	edx, edx
	mov	rax, r9
	div	r10
	mov	rbx, rbp
	imul	rbx, r10
	xor	ecx, ecx
	cmp	rax, rbp
	setl	cl
	cmovl	rbx, r9
.label_1305:
	cmp	rbx, r11
	mov	rsi, r8
	jl	.label_1264
	xor	edx, edx
	mov	rax, r9
	div	r10
	mov	rsi, rbx
	imul	rsi, r10
	xor	edi, edi
	cmp	rax, rbx
	setl	dil
	cmovl	rsi, r9
.label_1264:
	or	edi, ecx
	cmp	rsi, r11
	mov	r14d, 1
	mov	rbx, r8
	mov	ecx, 1
	jl	.label_1274
	xor	edx, edx
	mov	rax, r9
	div	r10
	mov	rbx, rsi
	imul	rbx, r10
	xor	ecx, ecx
	cmp	rax, rsi
	setl	cl
	cmovl	rbx, r9
.label_1274:
	or	ecx, edi
	cmp	rbx, r11
	mov	rsi, r8
	jl	.label_1281
	xor	edx, edx
	mov	rax, r9
	div	r10
	mov	rsi, rbx
	imul	rsi, r10
	xor	r14d, r14d
	cmp	rax, rbx
	setl	r14b
	cmovl	rsi, r9
.label_1281:
	or	r14d, ecx
	cmp	rsi, r11
	mov	ebp, 1
	mov	rdi, r8
	mov	ecx, 1
	jl	.label_1292
	xor	edx, edx
	mov	rax, r9
	div	r10
	mov	rdi, rsi
	imul	rdi, r10
	xor	ecx, ecx
	cmp	rax, rsi
	setl	cl
	cmovl	rdi, r9
.label_1292:
	or	ecx, r14d
	cmp	rdi, r11
	mov	rsi, r8
	jl	.label_1302
	xor	edx, edx
	mov	rax, r9
	div	r10
	mov	rsi, rdi
	imul	rsi, r10
	xor	ebp, ebp
	cmp	rax, rdi
	setl	bpl
	cmovl	rsi, r9
.label_1302:
	or	ebp, ecx
	cmp	rsi, r11
	mov	ecx, 1
	mov	rbx, r8
	mov	edi, 1
	jl	.label_1308
	xor	edx, edx
	mov	rax, r9
	div	r10
	mov	rbx, rsi
	imul	rbx, r10
	xor	edi, edi
	cmp	rax, rsi
	setl	dil
	cmovl	rbx, r9
.label_1308:
	or	edi, ebp
	cmp	rbx, r11
	jl	.label_1265
	xor	edx, edx
	mov	rax, r9
	div	r10
	imul	r10, rbx
	xor	ecx, ecx
	cmp	rax, rbx
	jmp	.label_1271
.label_2920:
	mov	r13, rbx
	lea	r8, [r9 + 1]
	mov	rax, r8
	cqo	
	idiv	r10
	mov	r11, rax
	cmp	rbp, r11
	mov	edi, 1
	mov	rbx, r8
	mov	ecx, 1
	jl	.label_1273
	xor	edx, edx
	mov	rax, r9
	div	r10
	mov	rbx, rbp
	imul	rbx, r10
	xor	ecx, ecx
	cmp	rax, rbp
	setl	cl
	cmovl	rbx, r9
.label_1273:
	cmp	rbx, r11
	mov	rsi, r8
	jl	.label_1270
	xor	edx, edx
	mov	rax, r9
	div	r10
	mov	rsi, rbx
	imul	rsi, r10
	xor	edi, edi
	cmp	rax, rbx
	setl	dil
	cmovl	rsi, r9
.label_1270:
	or	edi, ecx
	cmp	rsi, r11
	mov	r14d, 1
	mov	rbx, r8
	mov	ecx, 1
	jl	.label_1296
	xor	edx, edx
	mov	rax, r9
	div	r10
	mov	rbx, rsi
	imul	rbx, r10
	xor	ecx, ecx
	cmp	rax, rsi
	setl	cl
	cmovl	rbx, r9
.label_1296:
	or	ecx, edi
	cmp	rbx, r11
	mov	rsi, r8
	jl	.label_1304
	xor	edx, edx
	mov	rax, r9
	div	r10
	mov	rsi, rbx
	imul	rsi, r10
	xor	r14d, r14d
	cmp	rax, rbx
	setl	r14b
	cmovl	rsi, r9
.label_1304:
	or	r14d, ecx
	cmp	rsi, r11
	mov	edi, 1
	mov	rbx, r8
	mov	ecx, 1
	jl	.label_1263
	xor	edx, edx
	mov	rax, r9
	div	r10
	mov	rbx, rsi
	imul	rbx, r10
	xor	ecx, ecx
	cmp	rax, rsi
	setl	cl
	cmovl	rbx, r9
.label_1263:
	or	ecx, r14d
	cmp	rbx, r11
	mov	rsi, r8
	jl	.label_1267
	xor	edx, edx
	mov	rax, r9
	div	r10
	mov	rsi, rbx
	imul	rsi, r10
	xor	edi, edi
	cmp	rax, rbx
	setl	dil
	cmovl	rsi, r9
.label_1267:
	or	edi, ecx
	cmp	rsi, r11
	mov	ecx, 1
	jl	.label_1265
	xor	edx, edx
	mov	rax, r9
	div	r10
	imul	r10, rsi
	xor	ecx, ecx
	cmp	rax, rsi
.label_1271:
	setl	cl
	cmovl	r10, r9
	mov	r8, r10
.label_1265:
	or	ecx, edi
	mov	rbx, r13
	jmp	.label_1269
.label_2921:
	movabs	rax, 0xffc0000000000000
	cmp	rbp, rax
	jl	.label_1283
	mov	r8, rbp
	shl	r8, 9
	movabs	rax, 0x3fffffffffffff
	jmp	.label_1287
.label_2922:
	movabs	rax, 0xc000000000000000
	cmp	rbp, rax
	jge	.label_1295
.label_1283:
	inc	r9
	mov	ecx, 1
	mov	r8, r9
	jmp	.label_1269
.label_1295:
	lea	r8, [rbp + rbp]
	movabs	rax, 0x3fffffffffffffff
.label_1287:
	xor	ecx, ecx
	cmp	rbp, rax
	setg	cl
	cmovg	r8, r9
.label_1269:
	or	ecx, r15d
	lea	rax, [r12 + rbx]
	mov	rdx, qword ptr [rsp + 8]
	mov	qword ptr [rdx], rax
	lea	r15d, [rcx + 2]
	cmp	byte ptr [r12 + rbx], 0
	cmove	r15d, ecx
	mov	rbp, r8
.label_1303:
	mov	rax, qword ptr [rsp]
	mov	qword ptr [rax], rbp
.label_1272:
	mov	r13d, r15d
.label_1280:
	mov	eax, r13d
	add	rsp, 0x18
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_1299:
	mov	edi, OFFSET FLAT:label_1259
	mov	esi, OFFSET FLAT:label_1260
	mov	edx, 0x54
	mov	ecx, OFFSET FLAT:label_1261
	call	__assert_fail
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x409d40

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
	je	.label_1310
	mov	esi, OFFSET FLAT:label_1311
	jmp	.label_1312
.label_1310:
	mov	esi, OFFSET FLAT:label_1313
.label_1312:
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
	#Procedure 0x409db0

	.globl quotearg_colon
	.type quotearg_colon, @function
quotearg_colon:
	sub	rsp, 0x38
	mov	rax, rdi
	mov	rcx, qword ptr [rip + label_166]
	mov	qword ptr [rsp + 0x30], rcx
	movups	xmm0, xmmword ptr [rip + label_167]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0, xmmword ptr [rip + label_168]
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
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x409e10

	.globl check_subexp_matching_top
	.type check_subexp_matching_top, @function
check_subexp_matching_top:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	push	rax
	mov	qword ptr [rsp], rdx
	mov	r12, rsi
	mov	r15, rdi
	mov	rcx, qword ptr [r12 + 8]
	xor	eax, eax
	test	rcx, rcx
	jle	.label_1317
	mov	r13, qword ptr [r15 + 0x98]
	xor	ebx, ebx
	jmp	.label_1315
.label_1318:
	mov	rdi, qword ptr [r15 + 0xf8]
	mov	rsi, r14
	shl	rsi, 4
	call	realloc
	mov	rcx, rax
	mov	eax, 0xc
	test	rcx, rcx
	je	.label_1317
	add	r14, r14
	mov	qword ptr [r15 + 0xf8], rcx
	mov	qword ptr [r15 + 0xf0], r14
	jmp	.label_1316
	nop	word ptr [rax + rax]
.label_1315:
	mov	rax, qword ptr [r12 + 0x10]
	mov	rbp, qword ptr [rax + rbx*8]
	mov	rax, qword ptr [r13]
	mov	rdx, rbp
	shl	rdx, 4
	cmp	byte ptr [rax + rdx + 8], 8
	jne	.label_1314
	mov	rax, qword ptr [rax + rdx]
	cmp	rax, 0x3f
	jg	.label_1314
	mov	rdx, qword ptr [r13 + 0xa0]
	bt	rdx, rax
	jae	.label_1314
	mov	r14, qword ptr [r15 + 0xe8]
	cmp	r14, qword ptr [r15 + 0xf0]
	je	.label_1318
.label_1316:
	mov	edi, 1
	mov	esi, 0x30
	call	rpl_calloc
	mov	rcx, qword ptr [r15 + 0xe8]
	mov	rdx, qword ptr [r15 + 0xf8]
	mov	qword ptr [rdx + rcx*8], rax
	mov	rax, qword ptr [r15 + 0xf8]
	mov	rdx, qword ptr [rax + rcx*8]
	mov	eax, 0xc
	test	rdx, rdx
	je	.label_1317
	mov	qword ptr [rdx + 8], rbp
	inc	rcx
	mov	qword ptr [r15 + 0xe8], rcx
	mov	rax, qword ptr [rsp]
	mov	qword ptr [rdx], rax
	mov	rcx, qword ptr [r12 + 8]
	nop	word ptr [rax + rax]
.label_1314:
	inc	rbx
	xor	eax, eax
	cmp	rbx, rcx
	jl	.label_1315
.label_1317:
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
	nop	dword ptr [rax]
	push	rbx
	mov	ebx, edi
	call	wcwidth
	test	eax, eax
	jns	.label_602
	mov	edi, ebx
	call	iswcntrl
	mov	ecx, eax
	xor	eax, eax
	test	ecx, ecx
	sete	al
.label_602:
	pop	rbx
	ret	
	nop	
	push	rbx
	mov	rbx, rdx
	movabs	rax, 0x7fffffffffffffff
	xor	edx, edx
	div	rbx
	cmp	rax, rsi
	jb	.label_604
	imul	rbx, rsi
	test	rdi, rdi
	je	.label_315
	test	rbx, rbx
	jne	.label_315
	call	free
	xor	eax, eax
	pop	rbx
	ret	
.label_315:
	mov	rsi, rbx
	call	realloc
	test	rbx, rbx
	je	.label_608
	test	rax, rax
	je	.label_604
.label_608:
	pop	rbx
	ret	
.label_604:
	call	xalloc_die
	nop	dword ptr [rax + rax]
	push	r15
	push	r14
	push	rbx
	mov	rbx, rdi
	xor	edi, edi
	mov	edx, 5
	mov	rsi, rbx
	call	dcgettext
	mov	r14, rax
	cmp	r14, rbx
	je	.label_613
	mov	rdi, r14
	mov	rsi, rbx
	call	mbsstr_trimmed_wordbounded
	test	al, al
	je	.label_614
	mov	rbx, r14
	jmp	.label_613
.label_614:
	mov	rdi, r14
	call	strlen
	mov	r15, rax
	mov	rdi, rbx
	call	strlen
	lea	rdi, [r15 + rax + 4]
	call	xmalloc
	mov	r15, rax
	mov	esi, 1
	mov	rdx, -1
	mov	ecx, OFFSET FLAT:label_593
	xor	eax, eax
	mov	rdi, r15
	mov	r8, r14
	mov	r9, rbx
	call	__sprintf_chk
	mov	rbx, r15
.label_613:
	mov	rax, rbx
	pop	rbx
	pop	r14
	pop	r15
	ret	
	.section	.text
	.align	32
	#Procedure 0x40a030

	.globl re_compile_internal
	.type re_compile_internal, @function
re_compile_internal:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0xe8
	mov	r13, rdx
	mov	r14, rsi
	mov	r15, rdi
	mov	dword ptr [rsp + 4], 0
	mov	al, byte ptr [r15 + 0x38]
	mov	qword ptr [rsp + 0x40], rcx
	mov	qword ptr [r15 + 0x18], rcx
	mov	qword ptr [r15 + 0x10], 0
	mov	qword ptr [r15 + 0x30], 0
	and	al, 0x90
	mov	byte ptr [r15 + 0x38], al
	mov	r12, qword ptr [r15]
	cmp	qword ptr [r15 + 8], 0xe7
	jbe	.label_1323
.label_1505:
	mov	qword ptr [r15 + 0x10], 0xe8
	pxor	xmm0, xmm0
	movdqu	xmmword ptr [r12 + 0xd0], xmm0
	movdqu	xmmword ptr [r12 + 0xc0], xmm0
	movdqu	xmmword ptr [r12 + 0xb0], xmm0
	movdqu	xmmword ptr [r12 + 0xa0], xmm0
	movdqu	xmmword ptr [r12 + 0x90], xmm0
	movdqu	xmmword ptr [r12 + 0x80], xmm0
	movdqu	xmmword ptr [r12 + 0x70], xmm0
	movdqu	xmmword ptr [r12 + 0x60], xmm0
	movdqu	xmmword ptr [r12 + 0x50], xmm0
	movdqu	xmmword ptr [r12 + 0x40], xmm0
	movdqu	xmmword ptr [r12 + 0x30], xmm0
	movdqu	xmmword ptr [r12 + 0x20], xmm0
	movdqu	xmmword ptr [r12 + 0x10], xmm0
	movdqu	xmmword ptr [r12], xmm0
	mov	qword ptr [r12 + 0xe0], 0
	mov	dword ptr [r12 + 0x80], 0xf
	movabs	rax, 0x555555555555554
	cmp	r13, rax
	ja	.label_1336
	lea	rdi, [r13 + 1]
	mov	qword ptr [r12 + 8], rdi
	mov	rax, rdi
	mov	qword ptr [rsp + 8], rax
	shl	rdi, 4
	call	malloc
	mov	qword ptr [r12], rax
	mov	eax, 1
	nop	word ptr cs:[rax + rax]
.label_1375:
	mov	rbx, rax
	lea	rax, [rbx + rbx]
	cmp	rbx, r13
	jbe	.label_1375
	mov	edi, 0x18
	mov	rsi, rbx
	call	rpl_calloc
	mov	qword ptr [r12 + 0x40], rax
	dec	rbx
	mov	qword ptr [r12 + 0x88], rbx
	call	__ctype_get_mb_cur_max
	mov	dword ptr [r12 + 0xb4], eax
	mov	edi, 0xe
	call	rpl_nl_langinfo
	mov	cl, byte ptr [rax]
	or	cl, 0x20
	cmp	cl, 0x75
	jne	.label_1383
	mov	cl, byte ptr [rax + 1]
	or	cl, 0x20
	cmp	cl, 0x74
	jne	.label_1383
	mov	cl, byte ptr [rax + 2]
	or	cl, 0x20
	cmp	cl, 0x66
	jne	.label_1383
	xor	ecx, ecx
	cmp	byte ptr [rax + 3], 0x2d
	sete	cl
	cmp	byte ptr [rax + rcx + 3], 0x38
	jne	.label_1383
	cmp	byte ptr [rax + rcx + 4], 0
	jne	.label_1383
	or	byte ptr [r12 + 0xb0], 4
.label_1383:
	mov	rax, qword ptr [r12 + 0xb0]
	mov	ecx, eax
	and	cl, 0xf7
	mov	byte ptr [r12 + 0xb0], cl
	mov	rcx, rax
	shr	rcx, 0x20
	cmp	ecx, 2
	jl	.label_1392
	test	al, 4
	jne	.label_1399
	mov	edi, 0x20
	mov	esi, 1
	call	rpl_calloc
	mov	qword ptr [r12 + 0x78], rax
	test	rax, rax
	je	.label_1336
	xor	ebp, ebp
	nop	dword ptr [rax]
.label_1493:
	mov	edi, ebp
	call	btowc
	cmp	eax, -1
	je	.label_1408
	mov	edx, 1
	mov	ecx, ebp
	shl	rdx, cl
	mov	rcx, qword ptr [r12 + 0x78]
	or	qword ptr [rcx], rdx
.label_1408:
	cmp	ebp, 0x7f
	ja	.label_1412
	cmp	ebp, eax
	je	.label_1412
	or	byte ptr [r12 + 0xb0], 8
.label_1412:
	inc	rbp
	cmp	rbp, 0x40
	jne	.label_1493
	xor	ebp, ebp
	nop	dword ptr [rax + rax]
.label_1424:
	lea	rbx, [rbp + 0x40]
	mov	edi, ebx
	call	btowc
	cmp	eax, -1
	je	.label_1417
	mov	edx, 1
	mov	ecx, ebp
	shl	rdx, cl
	mov	rcx, qword ptr [r12 + 0x78]
	or	qword ptr [rcx + 8], rdx
.label_1417:
	cmp	ebx, eax
	je	.label_1422
	or	byte ptr [r12 + 0xb0], 8
.label_1422:
	inc	rbp
	cmp	rbp, 0x40
	jne	.label_1424
	xor	ebp, ebp
	nop	dword ptr [rax + rax]
.label_1434:
	mov	edi, ebp
	sub	edi, -0x80
	call	btowc
	cmp	eax, -1
	je	.label_1429
	mov	eax, 1
	mov	ecx, ebp
	shl	rax, cl
	mov	rcx, qword ptr [r12 + 0x78]
	or	qword ptr [rcx + 0x10], rax
.label_1429:
	inc	rbp
	cmp	rbp, 0x40
	jne	.label_1434
	xor	ebp, ebp
	nop	dword ptr [rax]
.label_1444:
	lea	edi, [rbp + 0xc0]
	call	btowc
	cmp	eax, -1
	je	.label_1438
	mov	eax, 1
	mov	ecx, ebp
	shl	rax, cl
	mov	rcx, qword ptr [r12 + 0x78]
	or	qword ptr [rcx + 0x18], rax
.label_1438:
	inc	rbp
	cmp	rbp, 0x40
	jne	.label_1444
	jmp	.label_1392
.label_1399:
	mov	qword ptr [r12 + 120], OFFSET FLAT:utf8_sb_map
.label_1392:
	cmp	qword ptr [r12], 0
	je	.label_1336
	cmp	qword ptr [r12 + 0x40], 0
	je	.label_1336
	mov	dword ptr [rsp + 4], 0
	mov	rbx, qword ptr [r15 + 0x28]
	mov	rcx, qword ptr [rsp + 0x40]
	and	ecx, 0x400000
	pxor	xmm0, xmm0
	movdqu	xmmword ptr [rsp + 0xd0], xmm0
	movdqu	xmmword ptr [rsp + 0xc0], xmm0
	movdqu	xmmword ptr [rsp + 0xb0], xmm0
	movdqu	xmmword ptr [rsp + 0xa0], xmm0
	movdqu	xmmword ptr [rsp + 0x90], xmm0
	movdqu	xmmword ptr [rsp + 0x80], xmm0
	movdqu	xmmword ptr [rsp + 0x70], xmm0
	movdqu	xmmword ptr [rsp + 0x60], xmm0
	movdqu	xmmword ptr [rsp + 0x50], xmm0
	mov	qword ptr [rsp + 0x48], r14
	mov	qword ptr [rsp + 0xa0], r13
	mov	qword ptr [rsp + 0x98], r13
	mov	qword ptr [rsp + 0xc0], rbx
	mov	rax, rcx
	shr	rax, 0x16
	mov	byte ptr [rsp + 0xd0], al
	mov	qword ptr [rsp + 0xe0], rcx
	mov	rax, rcx
	or	rax, rbx
	setne	bpl
	setne	byte ptr [rsp + 0xd3]
	mov	edx, dword ptr [r12 + 0xb4]
	mov	dword ptr [rsp + 0xd8], edx
	mov	rcx, qword ptr [r12 + 0xb0]
	mov	eax, ecx
	shr	al, 2
	and	al, 1
	mov	byte ptr [rsp + 0xd1], al
	mov	eax, ecx
	shr	al, 3
	and	al, 1
	mov	byte ptr [rsp + 0xd2], al
	mov	qword ptr [rsp + 0xb0], r13
	mov	qword ptr [rsp + 0xa8], r13
	xor	eax, eax
	test	r13, r13
	mov	qword ptr [rsp + 0x18], r12
	jle	.label_1450
	cmp	edx, 2
	jl	.label_1489
	mov	r12d, 0xc
	mov	rax, qword ptr [rsp + 8]
	movabs	rcx, 0x1fffffffffffffff
	cmp	rax, rcx
	ja	.label_1326
	lea	rsi, [rax*4]
	xor	edi, edi
	call	realloc
	test	rax, rax
	je	.label_1326
	mov	qword ptr [rsp + 0x58], rax
	mov	r12, qword ptr [rsp + 0x18]
.label_1489:
	xor	eax, eax
	test	bpl, bpl
	je	.label_1496
	xor	edi, edi
	mov	rsi, qword ptr [rsp + 8]
	call	realloc
	mov	r12d, 0xc
	test	rax, rax
	je	.label_1326
	mov	qword ptr [rsp + 0x50], rax
	mov	r12, qword ptr [rsp + 0x18]
.label_1496:
	mov	rcx, qword ptr [rsp + 8]
	mov	qword ptr [rsp + 0x88], rcx
	mov	ecx, dword ptr [r12 + 0xb4]
	jmp	.label_1503
.label_1336:
	mov	dword ptr [rsp + 4], 0xc
	mov	rdi, r12
	call	free_dfa_content
	pxor	xmm0, xmm0
	movdqu	xmmword ptr [r15], xmm0
	mov	eax, 0xc
	jmp	.label_1500
.label_1450:
	shr	rcx, 0x20
	xor	edx, edx
	mov	qword ptr [rsp + 8], rdx
.label_1503:
	test	bpl, bpl
	cmove	rax, r14
	mov	qword ptr [rsp + 0x50], rax
	cmp	qword ptr [rsp + 0xe0], 0
	je	.label_1510
	cmp	ecx, 2
	jl	.label_1516
	lea	rdi, [rsp + 0x48]
	call	build_wcs_upper_buffer
	mov	r12d, eax
	test	r12d, r12d
	jne	.label_1326
	lea	rbx, [rsp + 0x48]
	nop	
.label_1542:
	cmp	qword ptr [rsp + 0x80], r13
	mov	r12, qword ptr [rsp + 0x18]
	jge	.label_1523
	mov	rbp, qword ptr [rsp + 0x88]
	movsxd	rax, dword ptr [r12 + 0xb4]
	add	rax, qword ptr [rsp + 0x78]
	cmp	rbp, rax
	jg	.label_1523
	lea	r14, [rbp + rbp]
	cmp	dword ptr [rsp + 0xd8], 2
	jl	.label_1526
	mov	r12d, 0xc
	movabs	rax, 0x1fffffffffffffff
	cmp	r14, rax
	ja	.label_1326
	mov	rdi, qword ptr [rsp + 0x58]
	lea	rsi, [rbp*8]
	call	realloc
	test	rax, rax
	je	.label_1326
	mov	qword ptr [rsp + 0x58], rax
	mov	rdi, qword ptr [rsp + 0x60]
	test	rdi, rdi
	je	.label_1526
	shl	rbp, 4
	mov	rsi, rbp
	call	realloc
	test	rax, rax
	je	.label_1326
	mov	qword ptr [rsp + 0x60], rax
.label_1526:
	cmp	byte ptr [rsp + 0xd3], 0
	je	.label_1407
	mov	rdi, qword ptr [rsp + 0x50]
	mov	rsi, r14
	call	realloc
	mov	r12d, 0xc
	test	rax, rax
	je	.label_1326
	mov	qword ptr [rsp + 0x50], rax
.label_1407:
	mov	qword ptr [rsp + 0x88], r14
	mov	rdi, rbx
	call	build_wcs_upper_buffer
	mov	r12d, eax
	test	r12d, r12d
	je	.label_1542
.label_1326:
	mov	dword ptr [rsp + 4], r12d
	jmp	.label_1544
.label_1510:
	cmp	ecx, 2
	jl	.label_1546
	lea	rdi, [rsp + 0x48]
	call	build_wcs_buffer
	jmp	.label_1523
.label_1516:
	mov	rax, qword ptr [rsp + 8]
	cmp	rax, r13
	cmovg	rax, r13
	mov	r13, rax
	xor	eax, eax
	test	r13, r13
	jle	.label_1550
	xor	eax, eax
	mov	ebp, 1
	jmp	.label_1553
	nop	dword ptr [rax]
.label_1567:
	mov	r14, qword ptr [rsp + 0x48]
	mov	rax, qword ptr [rsp + 0x70]
	mov	rbx, qword ptr [rsp + 0xc0]
	inc	rbp
.label_1553:
	add	r14, rax
	movzx	eax, byte ptr [rbp + r14 - 1]
	movzx	ecx, al
	test	rbx, rbx
	jne	.label_1559
.label_1569:
	movzx	ebx, al
	mov	eax, ebx
	sub	eax, -0x80
	cmp	eax, 0x17f
	ja	.label_1563
	call	__ctype_toupper_loc
	mov	rax, qword ptr [rax]
	mov	ebx, dword ptr [rax + rbx*4]
.label_1563:
	mov	rax, qword ptr [rsp + 0x50]
	mov	byte ptr [rax + rbp - 1], bl
	cmp	rbp, r13
	jl	.label_1567
	jmp	.label_1568
.label_1559:
	movzx	eax, byte ptr [rbx + rcx]
	jmp	.label_1569
.label_1546:
	test	rbx, rbx
	je	.label_1572
	mov	rcx, qword ptr [rsp + 8]
	cmp	rcx, r13
	cmovg	rcx, r13
	mov	rdi, rcx
	xor	ecx, ecx
	test	rdi, rdi
	jle	.label_1575
	movzx	ecx, byte ptr [r14]
	mov	cl, byte ptr [rbx + rcx]
	mov	byte ptr [rax], cl
	mov	ecx, 1
	cmp	rdi, 1
	je	.label_1575
	mov	eax, 1
	nop	word ptr [rax + rax]
.label_1582:
	mov	rcx, qword ptr [rsp + 0x48]
	mov	rdx, qword ptr [rsp + 0x50]
	add	rcx, qword ptr [rsp + 0x70]
	movzx	ecx, byte ptr [rax + rcx]
	mov	rsi, qword ptr [rsp + 0xc0]
	movzx	ecx, byte ptr [rsi + rcx]
	mov	byte ptr [rdx + rax], cl
	inc	rax
	cmp	rax, rdi
	jl	.label_1582
	mov	rcx, rdi
.label_1575:
	mov	qword ptr [rsp + 0x78], rcx
	mov	qword ptr [rsp + 0x80], rcx
	jmp	.label_1523
.label_1568:
	mov	rax, r13
	jmp	.label_1550
.label_1572:
	mov	rax, qword ptr [rsp + 8]
.label_1550:
	mov	qword ptr [rsp + 0x78], rax
	mov	qword ptr [rsp + 0x80], rax
.label_1523:
	mov	dword ptr [rsp + 4], 0
	mov	qword ptr [r15 + 0x30], 0
	mov	rbx, qword ptr [r15]
	mov	rbp, qword ptr [rsp + 0x40]
	mov	qword ptr [rbx + 0xd8], rbp
	mov	rdx, rbp
	or	rdx, 0x800000
	lea	r14, [rsp + 0x20]
	lea	r13, [rsp + 0x48]
	mov	rdi, r14
	mov	rsi, r13
	call	peek_token
	cdqe	
	add	qword ptr [rsp + 0x90], rax
	lea	r9, [rsp + 4]
	xor	r8d, r8d
	mov	rdi, r13
	mov	rsi, r15
	mov	rdx, r14
	mov	rcx, rbp
	call	parse_reg_exp
	mov	r14, rax
	test	r14, r14
	jne	.label_1596
	mov	eax, dword ptr [rsp + 4]
	test	eax, eax
	jne	.label_1598
.label_1596:
	mov	ebp, dword ptr [rbx + 0x80]
	cmp	ebp, 0xf
	je	.label_1599
	mov	rax, qword ptr [rbx + 0x70]
.label_1515:
	lea	ecx, [rbp + 1]
	mov	dword ptr [rbx + 0x80], ecx
	movsxd	rcx, ebp
	shl	rcx, 6
	lea	rbp, [rax + rcx + 8]
	pxor	xmm0, xmm0
	movdqu	xmmword ptr [rax + rcx + 8], xmm0
	mov	qword ptr [rax + rcx + 0x18], 0
	mov	dword ptr [rax + rcx + 0x38], 2
	movdqu	xmmword ptr [rax + rcx + 0x20], xmm0
	mov	qword ptr [rax + rcx + 0x40], -1
.label_1512:
	test	r14, r14
	mov	rcx, rbp
	je	.label_1607
	mov	ecx, dword ptr [rbx + 0x80]
	cmp	ecx, 0xf
	je	.label_1609
	mov	rax, qword ptr [rbx + 0x70]
.label_1573:
	lea	edx, [rcx + 1]
	mov	dword ptr [rbx + 0x80], edx
	movsxd	rdx, ecx
	shl	rdx, 6
	lea	rcx, [rax + rdx + 8]
	mov	qword ptr [rax + rdx + 8], 0
	mov	qword ptr [rax + rdx + 0x10], r14
	mov	qword ptr [rax + rdx + 0x18], rbp
	mov	dword ptr [rax + rdx + 0x38], 0x10
	pxor	xmm0, xmm0
	movdqu	xmmword ptr [rax + rdx + 0x20], xmm0
	mov	qword ptr [rax + rdx + 0x40], -1
	mov	qword ptr [r14], rcx
	test	rbp, rbp
	je	.label_1319
	mov	qword ptr [rbp], rcx
.label_1607:
	test	rbp, rbp
	je	.label_1319
	test	rcx, rcx
	je	.label_1319
	mov	qword ptr [r12 + 0x68], rcx
	mov	rbx, qword ptr [r15]
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
	mov	qword ptr [rbx + 0x30], rax
	cmp	qword ptr [rbx + 0x18], 0
	je	.label_581
	cmp	qword ptr [rbx + 0x20], 0
	je	.label_581
	test	rax, rax
	je	.label_581
	mov	rax, qword ptr [rbx + 0x28]
	test	rax, rax
	je	.label_581
	mov	rbp, qword ptr [r15 + 0x30]
	lea	rdi, [rbp*8]
	call	malloc
	mov	qword ptr [rbx + 0xe0], rax
	test	rax, rax
	mov	rdi, rbx
	mov	qword ptr [rsp + 8], rdi
	je	.label_1351
	test	rbp, rbp
	je	.label_1356
	xor	edx, edx
	cmp	rbp, 4
	jb	.label_1361
	xor	edx, edx
	mov	rcx, rbp
	and	rcx, 0xfffffffffffffffc
	je	.label_1361
	lea	rsi, [rcx - 4]
	mov	rbx, rsi
	shr	rbx, 2
	lea	edx, [rbx + 1]
	and	edx, 3
	mov	r8d, 1
	cmp	rsi, 0xc
	jae	.label_1368
	movq	xmm0, r8
	pslldq	xmm0, 8
	jmp	.label_1371
.label_1351:
	lea	r12, [rdi + 0x68]
	jmp	.label_1374
.label_1368:
	lea	rsi, [rdx - 1]
	sub	rsi, rbx
	mov	ebx, 1
	movq	xmm0, rbx
	pslldq	xmm0, 8
	movdqa	xmm8, xmmword ptr [rip + label_821]
	movdqa	xmm9, xmmword ptr [rip + label_836]
	movdqa	xmm10, xmmword ptr [rip + label_845]
	movdqa	xmm11, xmmword ptr [rip + label_846]
	movdqa	xmm5, xmmword ptr [rip + label_847]
	movdqa	xmm6, xmmword ptr [rip + label_848]
	movdqa	xmm7, xmmword ptr [rip + label_849]
	movdqa	xmm1, xmmword ptr [rip + label_850]
	nop	word ptr cs:[rax + rax]
.label_1436:
	movdqa	xmm2, xmm0
	paddq	xmm2, xmm8
	movdqa	xmm3, xmm0
	paddq	xmm3, xmm9
	movq	rbx, xmm0
	movdqu	xmmword ptr [rax + rbx*8], xmm0
	movdqu	xmmword ptr [rax + rbx*8 + 0x10], xmm2
	movdqa	xmm2, xmm0
	paddq	xmm2, xmm10
	movdqa	xmm4, xmm0
	paddq	xmm4, xmm11
	movq	rbx, xmm3
	movdqu	xmmword ptr [rax + rbx*8], xmm3
	movdqu	xmmword ptr [rax + rbx*8 + 0x10], xmm2
	movdqa	xmm2, xmm0
	paddq	xmm2, xmm5
	movdqa	xmm3, xmm0
	paddq	xmm3, xmm6
	movq	rbx, xmm4
	movdqu	xmmword ptr [rax + rbx*8], xmm4
	movdqu	xmmword ptr [rax + rbx*8 + 0x10], xmm2
	movdqa	xmm2, xmm0
	paddq	xmm2, xmm7
	paddq	xmm0, xmm1
	movq	rbx, xmm3
	movdqu	xmmword ptr [rax + rbx*8], xmm3
	movdqu	xmmword ptr [rax + rbx*8 + 0x10], xmm2
	add	rsi, 4
	jne	.label_1436
.label_1371:
	test	rdx, rdx
	je	.label_1415
	neg	rdx
	movdqa	xmm1, xmmword ptr [rip + label_821]
	movdqa	xmm2, xmmword ptr [rip + label_836]
	nop	word ptr cs:[rax + rax]
.label_1418:
	movdqa	xmm3, xmm0
	movq	rsi, xmm0
	movdqu	xmmword ptr [rax + rsi*8], xmm0
	paddq	xmm0, xmm1
	paddq	xmm3, xmm2
	movdqu	xmmword ptr [rax + rsi*8 + 0x10], xmm0
	inc	rdx
	movdqa	xmm0, xmm3
	jne	.label_1418
.label_1415:
	cmp	rbp, rcx
	mov	rdx, rcx
	je	.label_1356
	nop	dword ptr [rax]
.label_1361:
	mov	qword ptr [rax + rdx*8], rdx
	inc	rdx
	cmp	rdx, rbp
	jb	.label_1361
.label_1356:
	mov	rbp, qword ptr [rdi + 0x68]
	mov	rsi, rbp
	call	optimize_subexps
	test	eax, eax
	jne	.label_1431
	nop	dword ptr [rax]
.label_461:
	mov	rbx, qword ptr [rbp + 8]
	test	rbx, rbx
	jne	.label_1433
	xor	eax, eax
	nop	dword ptr [rax + rax]
.label_1439:
	mov	rcx, rax
	mov	rax, rbp
	mov	rbx, qword ptr [rax + 0x10]
	cmp	rbx, rcx
	je	.label_1435
	test	rbx, rbx
	jne	.label_1433
.label_1435:
	mov	rbp, qword ptr [rax]
	test	rbp, rbp
	jne	.label_1439
	jmp	.label_1431
	nop	
.label_1433:
	mov	rdi, qword ptr [rsp + 8]
	mov	rsi, rbx
	call	optimize_subexps
	test	eax, eax
	mov	rbp, rbx
	je	.label_461
.label_1431:
	mov	rax, qword ptr [r15 + 0x30]
	xor	ecx, ecx
	test	rax, rax
	mov	rdi, qword ptr [rsp + 8]
	je	.label_1447
	mov	rdx, qword ptr [rdi + 0xe0]
	xor	ecx, ecx
	nop	dword ptr [rax]
.label_1451:
	cmp	rcx, qword ptr [rdx + rcx*8]
	jne	.label_1447
	inc	rcx
	cmp	rcx, rax
	jb	.label_1451
.label_1447:
	lea	r12, [rdi + 0x68]
	cmp	rcx, rax
	jne	.label_1374
	mov	rdi, qword ptr [rdi + 0xe0]
	call	free
	mov	rdi, qword ptr [rsp + 8]
	mov	qword ptr [rdi + 0xe0], 0
.label_1374:
	mov	rax, qword ptr [r12]
	lea	rbp, [rsp + 0x20]
	nop	dword ptr [rax]
.label_1461:
	mov	rbx, rax
	mov	rax, qword ptr [rbx + 8]
	test	rax, rax
	jne	.label_1461
	mov	rax, qword ptr [rbx + 0x10]
	test	rax, rax
	jne	.label_1461
	xor	edx, edx
	jmp	.label_1467
	nop	dword ptr [rax]
.label_1486:
	mov	rdx, qword ptr [rcx + 8]
	mov	rbx, rcx
.label_1467:
	mov	dword ptr [rsp + 0x20], 0
	test	rdx, rdx
	je	.label_1359
	cmp	byte ptr [rdx + 0x30], 0x11
	jne	.label_1359
	mov	rdi, rbp
	mov	rsi, r15
	call	lower_subexp
	mov	rdi, qword ptr [rsp + 8]
	mov	qword ptr [rbx + 8], rax
	test	rax, rax
	je	.label_1359
	mov	qword ptr [rax], rbx
	nop	word ptr cs:[rax + rax]
.label_1359:
	mov	rdx, qword ptr [rbx + 0x10]
	test	rdx, rdx
	je	.label_1347
	cmp	byte ptr [rdx + 0x30], 0x11
	jne	.label_1347
	mov	rdi, rbp
	mov	rsi, r15
	call	lower_subexp
	mov	rdi, qword ptr [rsp + 8]
	mov	qword ptr [rbx + 0x10], rax
	test	rax, rax
	je	.label_1347
	mov	qword ptr [rax], rbx
	nop	dword ptr [rax + rax]
.label_1347:
	mov	eax, dword ptr [rsp + 0x20]
	test	eax, eax
	jne	.label_574
	mov	rcx, qword ptr [rbx]
	test	rcx, rcx
	je	.label_1484
	mov	rax, qword ptr [rcx + 0x10]
	cmp	rax, rbx
	je	.label_1486
	test	rax, rax
	je	.label_1486
	jmp	.label_1461
.label_1484:
	mov	rax, qword ptr [r12]
	mov	ebp, 0xfffc00ff
	nop	dword ptr [rax + rax]
.label_1390:
	mov	rbx, rax
	mov	rax, qword ptr [rbx + 8]
	test	rax, rax
	jne	.label_1390
	mov	rax, qword ptr [rbx + 0x10]
	test	rax, rax
	jne	.label_1390
	nop	word ptr cs:[rax + rax]
.label_1508:
	cmp	byte ptr [rbx + 0x30], 0x10
	jne	.label_1495
	mov	rax, qword ptr [rbx + 8]
	mov	rcx, qword ptr [rax + 0x18]
	mov	qword ptr [rbx + 0x18], rcx
	mov	rax, qword ptr [rax + 0x38]
	mov	qword ptr [rbx + 0x38], rax
	jmp	.label_518
	nop	dword ptr [rax]
.label_1495:
	mov	qword ptr [rbx + 0x18], rbx
	mov	rsi, qword ptr [rbx + 0x28]
	mov	rdx, qword ptr [rbx + 0x30]
	call	re_dfa_add_node
	mov	qword ptr [rbx + 0x38], rax
	cmp	rax, -1
	je	.label_581
	cmp	byte ptr [rbx + 0x30], 0xc
	mov	rdi, qword ptr [rsp + 8]
	jne	.label_518
	mov	ecx, dword ptr [rbx + 0x28]
	mov	rdx, qword ptr [rdi]
	shl	rax, 4
	shl	ecx, 8
	and	ecx, 0x3ff00
	mov	esi, dword ptr [rdx + rax + 8]
	and	esi, ebp
	or	esi, ecx
	mov	dword ptr [rdx + rax + 8], esi
.label_518:
	mov	rcx, qword ptr [rbx]
	test	rcx, rcx
	je	.label_1506
	mov	rax, qword ptr [rcx + 0x10]
	cmp	rax, rbx
	mov	rbx, rcx
	je	.label_1508
	test	rax, rax
	mov	rbx, rcx
	je	.label_1508
	jmp	.label_1390
.label_1506:
	mov	rbp, qword ptr [r12]
	mov	al, byte ptr [rbp + 0x30]
	cmp	al, 0x10
	je	.label_1513
	cmp	al, 0xb
	jne	.label_1540
	mov	rax, qword ptr [rbp + 8]
	mov	qword ptr [rax + 0x20], rbp
	jmp	.label_1517
.label_1513:
	mov	rax, qword ptr [rbp + 8]
	mov	rcx, qword ptr [rbp + 0x10]
	mov	rdx, qword ptr [rcx + 0x18]
	mov	qword ptr [rax + 0x20], rdx
	jmp	.label_1518
.label_1540:
	mov	rax, qword ptr [rbp + 8]
	test	rax, rax
	je	.label_1519
	mov	rcx, qword ptr [rbp + 0x20]
	mov	qword ptr [rax + 0x20], rcx
.label_1519:
	mov	rcx, qword ptr [rbp + 0x10]
	test	rcx, rcx
	je	.label_1517
.label_1518:
	mov	rdx, qword ptr [rbp + 0x20]
	mov	qword ptr [rcx + 0x20], rdx
.label_1517:
	mov	rdx, rbp
	jmp	.label_1384
.label_1532:
	mov	rax, qword ptr [rcx + 8]
	mov	rdx, qword ptr [rcx + 0x10]
	mov	rsi, qword ptr [rdx + 0x18]
	mov	qword ptr [rax + 0x20], rsi
	mov	rsi, qword ptr [rcx + 0x20]
	mov	qword ptr [rdx + 0x20], rsi
	mov	rdx, rcx
.label_1384:
	test	rax, rax
	mov	rcx, rax
	jne	.label_1527
	xor	eax, eax
	nop	word ptr cs:[rax + rax]
.label_1531:
	mov	rsi, rax
	mov	rax, rdx
	mov	rcx, qword ptr [rax + 0x10]
	cmp	rcx, rsi
	je	.label_1339
	test	rcx, rcx
	jne	.label_1527
.label_1339:
	mov	rdx, qword ptr [rax]
	test	rdx, rdx
	jne	.label_1531
	jmp	.label_1481
	nop	
.label_1527:
	mov	al, byte ptr [rcx + 0x30]
	cmp	al, 0x10
	je	.label_1532
	cmp	al, 0xb
	jne	.label_1533
	mov	rax, qword ptr [rcx + 8]
	mov	qword ptr [rax + 0x20], rcx
	mov	rdx, rcx
	jmp	.label_1384
.label_1533:
	mov	rax, qword ptr [rcx + 8]
	test	rax, rax
	je	.label_1535
	mov	rdx, qword ptr [rcx + 0x20]
	mov	qword ptr [rax + 0x20], rdx
.label_1535:
	mov	rsi, qword ptr [rcx + 0x10]
	test	rsi, rsi
	mov	rdx, rcx
	je	.label_1384
	mov	rdx, qword ptr [rcx + 0x20]
	mov	qword ptr [rsi + 0x20], rdx
	mov	rdx, rcx
	jmp	.label_1384
.label_1481:
	mov	rsi, rbp
	call	link_nfa_nodes
	mov	rsi, qword ptr [rsp + 8]
	test	eax, eax
	jne	.label_574
	nop	word ptr [rax + rax]
.label_570:
	mov	rbx, qword ptr [rbp + 8]
	test	rbx, rbx
	jne	.label_1543
	xor	eax, eax
	nop	dword ptr [rax + rax]
.label_1549:
	mov	rcx, rax
	mov	rax, rbp
	mov	rbx, qword ptr [rax + 0x10]
	cmp	rbx, rcx
	je	.label_1547
	test	rbx, rbx
	jne	.label_1543
.label_1547:
	mov	rbp, qword ptr [rax]
	test	rbp, rbp
	jne	.label_1549
	jmp	.label_1552
	nop	
.label_1543:
	mov	rdi, rsi
	mov	rsi, rbx
	call	link_nfa_nodes
	mov	rsi, qword ptr [rsp + 8]
	test	eax, eax
	mov	rbp, rbx
	je	.label_570
	jmp	.label_574
.label_1552:
	xor	eax, eax
	lea	r12, [rsp + 0x20]
	xor	r14d, r14d
	jmp	.label_1555
	nop	dword ptr [rax + rax]
.label_1566:
	inc	rbp
	mov	rax, rbp
.label_1555:
	cmp	rax, qword ptr [rsi + 0x10]
	jne	.label_1560
	xor	ebp, ebp
	test	r14b, 1
	mov	r14d, 0
	jne	.label_1562
	jmp	.label_1565
	nop	dword ptr [rax]
.label_1560:
	mov	rbp, rax
.label_1562:
	mov	rax, qword ptr [rsi + 0x30]
	lea	rbx, [rbp + rbp*2]
	cmp	qword ptr [rax + rbx*8 + 8], 0
	jne	.label_1566
	mov	ecx, 1
	mov	rdi, r12
	mov	rdx, rbp
	mov	r13, rsi
	call	calc_eclosure_iter
	test	eax, eax
	jne	.label_574
	mov	rax, qword ptr [r13 + 0x30]
	cmp	qword ptr [rax + rbx*8 + 8], 0
	mov	rsi, r13
	jne	.label_1566
	mov	rdi, qword ptr [rsp + 0x30]
	call	free
	mov	rsi, qword ptr [rsp + 8]
	mov	r14b, 1
	jmp	.label_1566
.label_1565:
	test	byte ptr [r15 + 0x38], 0x10
	mov	qword ptr [rsp + 0x38], r15
	mov	r14, qword ptr [rsp + 0x18]
	jne	.label_1578
	cmp	qword ptr [r15 + 0x30], 0
	je	.label_1578
	test	byte ptr [rsi + 0xb0], 1
	jne	.label_1583
.label_1578:
	cmp	qword ptr [rsi + 0x98], 0
	je	.label_1584
.label_1583:
	shl	rax, 3
	lea	rdi, [rax + rax*2]
	call	malloc
	mov	r8, qword ptr [rsp + 8]
	mov	qword ptr [r8 + 0x38], rax
	test	rax, rax
	je	.label_581
	cmp	qword ptr [r8 + 0x10], 0
	je	.label_1584
	pxor	xmm0, xmm0
	movdqu	xmmword ptr [rax], xmm0
	mov	qword ptr [rax + 0x10], 0
	mov	rax, qword ptr [r8 + 0x10]
	cmp	rax, 2
	jb	.label_1589
	mov	ecx, 1
	mov	edx, 0x18
	nop	
.label_1592:
	mov	rax, qword ptr [r8 + 0x38]
	movdqu	xmmword ptr [rax + rdx], xmm0
	mov	qword ptr [rax + rdx + 0x10], 0
	inc	rcx
	mov	rax, qword ptr [r8 + 0x10]
	add	rdx, 0x18
	cmp	rcx, rax
	jb	.label_1592
.label_1589:
	test	rax, rax
	je	.label_1584
	mov	r9, qword ptr [r8 + 0x30]
	xor	ebp, ebp
	nop	word ptr cs:[rax + rax]
.label_1325:
	lea	r10, [rbp + rbp*2]
	cmp	qword ptr [r9 + r10*8 + 8], 0
	jle	.label_1595
	mov	r13, qword ptr [r9 + r10*8 + 0x10]
	xor	ebx, ebx
	mov	qword ptr [rsp + 0x40], r10
	nop	dword ptr [rax]
.label_1321:
	mov	r14, qword ptr [r8 + 0x38]
	mov	rax, qword ptr [r13 + rbx*8]
	lea	r12, [rax + rax*2]
	mov	rax, qword ptr [r14 + r12*8]
	lea	r15, [r14 + r12*8 + 8]
	mov	rdx, qword ptr [r14 + r12*8 + 8]
	cmp	rax, rdx
	jne	.label_1601
	lea	rcx, [r14 + r12*8]
	lea	rdx, [rax + rax + 2]
	lea	rax, [rax + rax]
	mov	qword ptr [rcx], rdx
	mov	rdi, qword ptr [r14 + r12*8 + 0x10]
	lea	rsi, [rax*8 + 0x10]
	call	realloc
	test	rax, rax
	je	.label_1606
	lea	rcx, [r14 + r12*8 + 0x10]
	mov	qword ptr [rcx], rax
	mov	rdx, qword ptr [r15]
	mov	r8, qword ptr [rsp + 8]
	mov	r9, qword ptr [r8 + 0x30]
	mov	r10, qword ptr [rsp + 0x40]
	jmp	.label_1608
	nop	word ptr cs:[rax + rax]
.label_1601:
	mov	rax, qword ptr [r14 + r12*8 + 0x10]
.label_1608:
	lea	rsi, [rdx + 1]
	mov	qword ptr [r15], rsi
	mov	qword ptr [rax + rdx*8], rbp
	inc	rbx
	cmp	rbx, qword ptr [r9 + r10*8 + 8]
	jl	.label_1321
	mov	rax, qword ptr [r8 + 0x10]
	mov	r15, qword ptr [rsp + 0x38]
	mov	r14, qword ptr [rsp + 0x18]
.label_1595:
	inc	rbp
	cmp	rbp, rax
	jb	.label_1325
.label_1584:
	mov	dword ptr [rsp + 4], 0
	cmp	qword ptr [rsp + 0xe0], 0
	jne	.label_1328
	mov	al, byte ptr [r14 + 0xb0]
	mov	ecx, eax
	and	cl, 4
	je	.label_1328
	cmp	qword ptr [r15 + 0x28], 0
	jne	.label_1328
	mov	rdx, qword ptr [r14 + 0x10]
	test	rdx, rdx
	je	.label_1335
	mov	rbp, qword ptr [r14]
	xor	r9d, r9d
	movabs	r8, 0x1000000010001
	mov	rcx, rbp
	xor	r10d, r10d
	xor	edi, edi
.label_1353:
	movzx	ebx, byte ptr [rcx + 8]
	dec	bl
	movzx	esi, bl
	cmp	sil, 0xb
	ja	.label_1478
	jmp	qword ptr [(rsi * 8) + label_1340]
.label_2970:
	cmp	byte ptr [rcx], 0
	mov	sil, 1
	js	.label_1342
	mov	esi, r10d
.label_1342:
	mov	r10b, sil
	jmp	.label_1348
.label_2971:
	mov	rsi, qword ptr [rcx]
	cmp	qword ptr [rsi + 0x10], 0
	jne	.label_1328
	cmp	qword ptr [rsi + 0x18], 0
	je	.label_1348
	jmp	.label_1328
.label_2972:
	mov	r9b, 1
	jmp	.label_1348
.label_2973:
	mov	esi, dword ptr [rcx]
	lea	ebx, [rsi - 0x10]
	cmp	ebx, 0x30
	ja	.label_1530
	bt	r8, rbx
	jb	.label_1348
.label_1530:
	cmp	esi, 0x80
	jne	.label_1328
.label_1348:
	inc	rdi
	add	rcx, 0x10
	cmp	rdi, rdx
	jb	.label_1353
	mov	cl, r9b
	and	cl, 1
	or	r10b, r9b
	test	r10b, 1
	je	.label_1358
	xor	eax, eax
	mov	edx, 8
	jmp	.label_1362
.label_581:
	mov	eax, 0xc
.label_574:
	mov	dword ptr [rsp + 4], eax
.label_1544:
	mov	r12, qword ptr [rsp + 0x18]
	jmp	.label_1364
.label_1377:
	add	rdx, 0x10
	mov	rbp, qword ptr [r14]
.label_1362:
	mov	esi, dword ptr [rbp + rdx]
	cmp	sil, 5
	je	.label_1367
	cmp	sil, 1
	jne	.label_1370
	cmp	byte ptr [rbp + rdx - 8], 0
	jns	.label_1370
	and	esi, 0xffdfffff
	jmp	.label_1372
.label_1367:
	and	esi, 0xffffff00
	or	esi, 7
.label_1372:
	mov	dword ptr [rbp + rdx], esi
.label_1370:
	inc	rax
	cmp	rax, qword ptr [r14 + 0x10]
	jb	.label_1377
	mov	al, byte ptr [r14 + 0xb0]
	jmp	.label_1358
.label_1335:
	xor	ecx, ecx
.label_1358:
	mov	dword ptr [r14 + 0xb4], 1
	cmp	qword ptr [r14 + 0x98], 0
	setg	dl
	or	dl, cl
	add	dl, dl
	and	al, 0xf9
	or	al, dl
	mov	byte ptr [r14 + 0xb0], al
.label_1328:
	mov	rax, qword ptr [r14 + 0x68]
	mov	rax, qword ptr [rax + 0x18]
	mov	rax, qword ptr [rax + 0x38]
	mov	qword ptr [r14 + 0x90], rax
	mov	r15, qword ptr [r14 + 0x30]
	lea	r12, [rax + rax*2]
	mov	r13, qword ptr [r15 + r12*8 + 8]
	mov	qword ptr [rsp + 0x28], r13
	mov	r14, qword ptr [r15 + r12*8 + 8]
	test	r14, r14
	jle	.label_1385
	mov	qword ptr [rsp + 0x20], r13
	lea	rdi, [r13*8]
	call	malloc
	mov	rbp, rax
	mov	qword ptr [rsp + 0x30], rbp
	test	rbp, rbp
	je	.label_1394
	mov	rsi, qword ptr [r15 + r12*8 + 0x10]
	shl	r14, 3
	mov	rdi, rbp
	mov	rdx, r14
	call	memcpy
	mov	dword ptr [rsp + 0x14], 0
	test	r13, r13
	mov	r15, qword ptr [rsp + 0x38]
	mov	r12, qword ptr [rsp + 0x18]
	jle	.label_1403
	mov	rax, qword ptr [r12 + 0x98]
	test	rax, rax
	jle	.label_1403
	xor	eax, eax
	lea	r14, [rsp + 0x20]
	jmp	.label_1410
	nop	dword ptr [rax + rax]
.label_1455:
	mov	rbp, qword ptr [rsp + 0x30]
.label_1410:
	mov	r8, qword ptr [rbp + rax*8]
	mov	rdx, qword ptr [r12]
	mov	rsi, r8
	shl	rsi, 4
	cmp	byte ptr [rdx + rsi + 8], 4
	jne	.label_1414
	test	r13, r13
	mov	edi, 0
	jle	.label_1421
	add	rsi, rdx
	xor	edi, edi
	nop	
.label_1423:
	mov	rcx, qword ptr [rbp + rdi*8]
	shl	rcx, 4
	cmp	byte ptr [rdx + rcx + 8], 9
	jne	.label_1337
	mov	rcx, qword ptr [rdx + rcx]
	cmp	rcx, qword ptr [rsi]
	je	.label_1421
.label_1337:
	inc	rdi
	cmp	rdi, r13
	jl	.label_1423
.label_1421:
	cmp	rdi, r13
	je	.label_1414
	mov	rcx, qword ptr [r12 + 0x28]
	lea	rdx, [r8 + r8*2]
	mov	rcx, qword ptr [rcx + rdx*8 + 0x10]
	mov	rcx, qword ptr [rcx]
	test	r13, r13
	jle	.label_1426
	mov	rdx, r13
	dec	rdx
	mov	esi, 0
	je	.label_1430
	xor	esi, esi
	nop	dword ptr [rax + rax]
.label_1398:
	lea	rdi, [rsi + rdx]
	shr	rdi, 1
	cmp	qword ptr [rbp + rdi*8], rcx
	lea	rbx, [rdi + 1]
	cmovl	rsi, rbx
	cmovge	rdx, rdi
	cmp	rsi, rdx
	jb	.label_1398
.label_1430:
	cmp	rsi, -1
	je	.label_1426
	cmp	qword ptr [rbp + rsi*8], rcx
	je	.label_1414
.label_1426:
	mov	rax, qword ptr [r12 + 0x30]
	lea	rcx, [rcx + rcx*2]
	lea	rsi, [rax + rcx*8]
	mov	rdi, r14
	call	re_node_set_merge
	test	eax, eax
	jne	.label_1416
	mov	r13, qword ptr [rsp + 0x28]
	xor	eax, eax
	nop	
.label_1414:
	inc	rax
	cmp	rax, r13
	jl	.label_1455
	jmp	.label_1403
.label_1385:
	pxor	xmm0, xmm0
	movdqa	xmmword ptr [rsp + 0x20], xmm0
	mov	qword ptr [rsp + 0x30], 0
	mov	dword ptr [rsp + 0x14], 0
	mov	r15, qword ptr [rsp + 0x38]
	mov	r12, qword ptr [rsp + 0x18]
.label_1403:
	lea	rdi, [rsp + 0x14]
	lea	rdx, [rsp + 0x20]
	xor	ecx, ecx
	mov	rsi, r12
	call	re_acquire_state_context
	mov	qword ptr [r12 + 0x48], rax
	test	rax, rax
	je	.label_1459
	cmp	byte ptr [rax + 0x68], 0
	js	.label_1463
	mov	qword ptr [r12 + 0x60], rax
	mov	qword ptr [r12 + 0x58], rax
	mov	qword ptr [r12 + 0x50], rax
	jmp	.label_1465
.label_1463:
	lea	rbx, [rsp + 0x14]
	lea	rbp, [rsp + 0x20]
	mov	ecx, 1
	mov	rdi, rbx
	mov	rsi, r12
	mov	rdx, rbp
	call	re_acquire_state_context
	mov	qword ptr [r12 + 0x50], rax
	mov	ecx, 2
	mov	rdi, rbx
	mov	rsi, r12
	mov	rdx, rbp
	call	re_acquire_state_context
	mov	qword ptr [r12 + 0x58], rax
	mov	ecx, 6
	mov	rdi, rbx
	mov	rsi, r12
	mov	rdx, rbp
	call	re_acquire_state_context
	mov	qword ptr [r12 + 0x60], rax
	cmp	qword ptr [r12 + 0x50], 0
	je	.label_1480
	test	rax, rax
	je	.label_1480
	mov	rax, qword ptr [r12 + 0x58]
	test	rax, rax
	je	.label_1480
.label_1465:
	mov	rdi, qword ptr [rsp + 0x30]
	call	free
	xor	eax, eax
.label_1416:
	mov	dword ptr [rsp + 4], eax
	mov	rbx, qword ptr [r15]
	mov	rdi, qword ptr [rbx + 0x70]
	test	rdi, rdi
	je	.label_1485
	nop	dword ptr [rax]
.label_1488:
	mov	rbp, qword ptr [rdi]
	call	free
	test	rbp, rbp
	mov	rdi, rbp
	jne	.label_1488
.label_1485:
	mov	qword ptr [rbx + 0x70], 0
	mov	dword ptr [rbx + 0x80], 0xf
	mov	qword ptr [rbx + 0x68], 0
	mov	rdi, qword ptr [rbx + 0x20]
	call	free
	mov	qword ptr [rbx + 0x20], 0
	mov	rdi, qword ptr [rsp + 0x58]
	call	free
	mov	rdi, qword ptr [rsp + 0x60]
	call	free
	cmp	byte ptr [rsp + 0xd3], 0
	je	.label_1497
	mov	rdi, qword ptr [rsp + 0x50]
	call	free
.label_1497:
	xor	eax, eax
	cmp	dword ptr [rsp + 4], 0
	je	.label_1500
	jmp	.label_1537
.label_1480:
	mov	eax, dword ptr [rsp + 0x14]
	jmp	.label_1416
.label_1606:
	mov	eax, 0xc
	mov	r15, qword ptr [rsp + 0x38]
	jmp	.label_574
.label_1323:
	mov	esi, 0xe8
	mov	rdi, r12
	call	realloc
	mov	r12, rax
	mov	eax, 0xc
	test	r12, r12
	je	.label_1500
	mov	qword ptr [r15 + 8], 0xe8
	mov	qword ptr [r15], r12
	jmp	.label_1505
.label_1599:
	mov	edi, 0x3c8
	call	malloc
	xor	ebp, ebp
	test	rax, rax
	je	.label_1512
	mov	rcx, qword ptr [rbx + 0x70]
	mov	qword ptr [rax], rcx
	mov	qword ptr [rbx + 0x70], rax
	mov	dword ptr [rbx + 0x80], 0
	jmp	.label_1515
.label_1609:
	mov	edi, 0x3c8
	call	malloc
	test	rax, rax
	je	.label_1319
	mov	rcx, qword ptr [rbx + 0x70]
	mov	qword ptr [rax], rcx
	mov	qword ptr [rbx + 0x70], rax
	mov	dword ptr [rbx + 0x80], 0
	xor	ecx, ecx
	jmp	.label_1573
.label_1319:
	mov	dword ptr [rsp + 4], 0xc
.label_1598:
	mov	qword ptr [r12 + 0x68], 0
.label_1364:
	mov	rbx, qword ptr [r15]
	mov	rdi, qword ptr [rbx + 0x70]
	test	rdi, rdi
	je	.label_1525
	nop	word ptr cs:[rax + rax]
.label_1529:
	mov	rbp, qword ptr [rdi]
	call	free
	test	rbp, rbp
	mov	rdi, rbp
	jne	.label_1529
.label_1525:
	mov	qword ptr [rbx + 0x70], 0
	mov	dword ptr [rbx + 0x80], 0xf
	mov	qword ptr [rbx + 0x68], 0
	mov	rdi, qword ptr [rbx + 0x20]
	call	free
	mov	qword ptr [rbx + 0x20], 0
	mov	rdi, qword ptr [rsp + 0x58]
	call	free
	mov	rdi, qword ptr [rsp + 0x60]
	call	free
	cmp	byte ptr [rsp + 0xd3], 0
	je	.label_1537
	mov	rdi, qword ptr [rsp + 0x50]
	call	free
.label_1537:
	mov	rdi, r12
	call	free_dfa_content
	pxor	xmm0, xmm0
	movdqu	xmmword ptr [r15], xmm0
	mov	eax, dword ptr [rsp + 4]
.label_1500:
	add	rsp, 0xe8
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_1459:
	mov	eax, dword ptr [rsp + 0x14]
	jmp	.label_1416
.label_1394:
	pxor	xmm0, xmm0
	movdqa	xmmword ptr [rsp + 0x20], xmm0
	mov	dword ptr [rsp + 0x14], 0xc
	mov	eax, 0xc
	mov	r15, qword ptr [rsp + 0x38]
	mov	r12, qword ptr [rsp + 0x18]
	jmp	.label_1416
.label_1478:
	call	abort
	nop	
	.section	.text
	.align	32
	#Procedure 0x40b620

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
	mov	r12, rdi
	mov	qword ptr [rbx], r15
	mov	r13, qword ptr [rbx + 0x10]
	mov	qword ptr [rbx + 0x20], r13
	mov	qword ptr [rbx + 0x28], 0
	lea	rdi, [r13*8]
	call	malloc
	mov	qword ptr [rbx + 0x30], rax
	mov	ecx, 0xc
	test	rax, rax
	je	.label_1611
	test	r13, r13
	jle	.label_1612
	xor	ebp, ebp
	nop	dword ptr [rax]
.label_1615:
	mov	rcx, qword ptr [rbx + 0x18]
	mov	r14, qword ptr [rcx + rbp*8]
	mov	rcx, qword ptr [r12]
	mov	rdx, r14
	shl	rdx, 4
	test	byte ptr [rcx + rdx + 8], 8
	jne	.label_1614
	mov	rdx, qword ptr [rbx + 0x20]
	mov	rcx, qword ptr [rbx + 0x28]
	cmp	rdx, rcx
	jne	.label_1613
	lea	rcx, [rdx + rdx + 2]
	lea	rdx, [rdx + rdx]
	mov	qword ptr [rbx + 0x20], rcx
	lea	rsi, [rdx*8 + 0x10]
	mov	rdi, rax
	call	realloc
	test	rax, rax
	je	.label_1616
	mov	qword ptr [rbx + 0x30], rax
	mov	rcx, qword ptr [rbx + 0x28]
.label_1613:
	lea	rdx, [rcx + 1]
	mov	qword ptr [rbx + 0x28], rdx
	mov	qword ptr [rax + rcx*8], r14
	mov	r13, qword ptr [rbx + 0x10]
.label_1614:
	inc	rbp
	cmp	rbp, r13
	jl	.label_1615
.label_1612:
	mov	r13, qword ptr [r12 + 0x40]
	and	r15, qword ptr [r12 + 0x88]
	lea	rbp, [r15 + r15*2]
	lea	r14, [r13 + rbp*8]
	mov	r15, qword ptr [r13 + rbp*8]
	cmp	qword ptr [r13 + rbp*8 + 8], r15
	jle	.label_1617
	mov	rax, qword ptr [r13 + rbp*8 + 0x10]
.label_1618:
	lea	rcx, [r15 + 1]
	mov	qword ptr [r14], rcx
	mov	qword ptr [rax + r15*8], rbx
	xor	ecx, ecx
.label_1611:
	mov	eax, ecx
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_1616:
	mov	ecx, 0xc
	jmp	.label_1611
.label_1617:
	lea	rax, [r15 + r15]
	mov	rdi, qword ptr [r13 + rbp*8 + 0x10]
	lea	rsi, [rax*8 + 0x10]
	call	realloc
	test	rax, rax
	mov	ecx, 0xc
	je	.label_1611
	lea	rcx, [r13 + rbp*8 + 8]
	lea	rdx, [r15 + r15 + 2]
	mov	qword ptr [rcx + 8], rax
	mov	qword ptr [rcx], rdx
	mov	r15, qword ptr [r14]
	jmp	.label_1618
	nop	dword ptr [rax + rax]
.label_551:
	call	xalloc_die
	nop	word ptr cs:[rax + rax]
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
	je	.label_352
	test	r15, r15
	je	.label_551
.label_352:
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
	#Procedure 0x40b7b0

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
	mov	rbp, rdx
	mov	rbx, rsi
	mov	r12, rdi
	jmp	.label_1624
	nop	dword ptr [rax]
.label_383:
	mov	rax, qword ptr [rax + rbp*8 + 0x10]
	mov	rbp, qword ptr [rax]
.label_1624:
	mov	rax, qword ptr [rbx + 8]
	test	rax, rax
	jle	.label_1625
	dec	rax
	mov	rcx, qword ptr [rbx + 0x10]
	mov	edx, 0
	je	.label_1620
	xor	edx, edx
	nop	word ptr cs:[rax + rax]
.label_1619:
	lea	rsi, [rdx + rax]
	shr	rsi, 1
	cmp	qword ptr [rcx + rsi*8], rbp
	lea	rdi, [rsi + 1]
	cmovl	rdx, rdi
	cmovge	rax, rsi
	cmp	rdx, rax
	jb	.label_1619
.label_1620:
	cmp	rdx, -1
	je	.label_1625
	cmp	qword ptr [rcx + rdx*8], rbp
	je	.label_1621
.label_1625:
	mov	rax, qword ptr [r12]
	mov	rcx, rbp
	shl	rcx, 4
	movzx	edx, byte ptr [rax + rcx + 8]
	cmp	edx, r15d
	jne	.label_1623
	cmp	qword ptr [rax + rcx], r14
	je	.label_1622
.label_1623:
	mov	rdi, rbx
	mov	rsi, rbp
	call	re_node_set_insert
	mov	ecx, eax
	mov	eax, 0xc
	test	cl, cl
	je	.label_382
	mov	rax, qword ptr [r12 + 0x28]
	lea	rbp, [rbp + rbp*2]
	mov	rcx, qword ptr [rax + rbp*8 + 8]
	cmp	rcx, 2
	je	.label_1626
	test	rcx, rcx
	jne	.label_383
	jmp	.label_1621
	nop	dword ptr [rax]
.label_1626:
	mov	rax, qword ptr [rax + rbp*8 + 0x10]
	mov	rdx, qword ptr [rax + 8]
	mov	rdi, r12
	mov	rsi, rbx
	mov	rcx, r14
	mov	r8d, r15d
	call	check_arrival_expand_ecl_sub
	test	eax, eax
	jne	.label_382
	mov	rax, qword ptr [r12 + 0x28]
	jmp	.label_383
.label_1622:
	cmp	r15d, 9
	jne	.label_1621
	mov	rdi, rbx
	mov	rsi, rbp
	call	re_node_set_insert
	mov	ecx, eax
	mov	eax, 0xc
	test	cl, cl
	je	.label_382
.label_1621:
	xor	eax, eax
.label_382:
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	pop	rbp
	ret	
	nop	
	.section	.text
	.align	32
	#Procedure 0x40b8d0

	.globl knuth_morris_pratt_multibyte
	.type knuth_morris_pratt_multibyte, @function
knuth_morris_pratt_multibyte:
	push	rbp
	mov	rbp, rsp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0xa8
	mov	r15, rdx
	mov	r14, rsi
	mov	r12, rdi
	mov	rdi, r14
	call	mbslen
	mov	rbx, rax
	movabs	rax, 0x249249249249249
	cmp	rbx, rax
	ja	.label_1645
	imul	rdi, rbx, 0x38
	cmp	rdi, 0xfa0
	ja	.label_1630
	mov	rax, rsp
	add	rdi, 0x2e
	and	rdi, 0xfffffffffffffff0
	mov	rcx, rax
	sub	rcx, rdi
	mov	rsp, rcx
	neg	rdi
	lea	r13, [rax + rdi + 0x1f]
	and	r13, 0xffffffffffffffe0
	jmp	.label_1633
.label_1630:
	call	mmalloca
	mov	r13, rax
.label_1633:
	test	r13, r13
	je	.label_1645
	mov	qword ptr [rbp - 0xc8], r12
	mov	qword ptr [rbp - 0x30], rbx
	lea	rax, [rbx + rbx*2]
	shl	rax, 4
	mov	qword ptr [rbp - 0x38], rax
	mov	qword ptr [rbp - 0x68], r14
	mov	byte ptr [rbp - 0x78], 0
	mov	qword ptr [rbp - 0x74], 0
	mov	byte ptr [rbp - 0x6c], 0
	lea	rdi, [rbp - 0x78]
	call	mbuiter_multi_next
	mov	rax, qword ptr [rbp - 0x58]
	test	al, al
	je	.label_1655
	shr	rax, 0x20
	je	.label_1629
.label_1655:
	lea	rbx, [rbp - 0x50]
	lea	r14, [r13 + 0x18]
	lea	r12, [rbp - 0x78]
	nop	dword ptr [rax]
.label_1651:
	mov	rax, qword ptr [rbp - 0x68]
	cmp	rax, rbx
	jne	.label_1635
	mov	rdx, qword ptr [rbp - 0x60]
	mov	rdi, r14
	mov	rsi, rbx
	call	memcpy
	mov	rax, r14
.label_1635:
	mov	qword ptr [r14 - 0x18], rax
	mov	rax, qword ptr [rbp - 0x60]
	mov	qword ptr [r14 - 0x10], rax
	mov	rax, qword ptr [rbp - 0x58]
	test	al, al
	mov	byte ptr [r14 - 8], al
	je	.label_1644
	shr	rax, 0x20
	mov	dword ptr [r14 - 4], eax
.label_1644:
	mov	rax, qword ptr [rbp - 0x60]
	add	qword ptr [rbp - 0x68], rax
	mov	byte ptr [rbp - 0x6c], 0
	mov	rdi, r12
	call	mbuiter_multi_next
	mov	rax, qword ptr [rbp - 0x58]
	add	r14, 0x30
	test	al, al
	je	.label_1651
	shr	rax, 0x20
	jne	.label_1651
.label_1629:
	mov	qword ptr [rbp - 0x80], r15
	mov	rax, qword ptr [rbp - 0x38]
	lea	rsi, [r13 + rax]
	mov	qword ptr [r13 + rax + 8], 1
	cmp	qword ptr [rbp - 0x30], 3
	mov	qword ptr [rbp - 0x38], rsi
	jb	.label_1628
	mov	r14d, 2
	xor	ebx, ebx
	nop	
.label_1647:
	lea	rax, [r14 + r14*2]
	shl	rax, 4
	lea	r12, [r13 + rax - 0x30]
	mov	r15b, byte ptr [r13 + rax - 0x20]
	jmp	.label_1643
	nop	word ptr cs:[rax + rax]
.label_1654:
	sub	rbx, qword ptr [rsi + rbx*8]
.label_1643:
	test	r15b, r15b
	je	.label_1648
	lea	rax, [rbx + rbx*2]
	shl	rax, 4
	cmp	byte ptr [r13 + rax + 0x10], 0
	je	.label_1648
	mov	ecx, dword ptr [r12 + 0x14]
	cmp	ecx, dword ptr [r13 + rax + 0x14]
	jne	.label_1627
	jmp	.label_1636
	nop	word ptr [rax + rax]
.label_1648:
	mov	rdx, qword ptr [r12 + 8]
	lea	rax, [rbx + rbx*2]
	shl	rax, 4
	cmp	rdx, qword ptr [r13 + rax + 8]
	jne	.label_1627
	mov	rdi, qword ptr [r12]
	mov	rsi, qword ptr [r13 + rax]
	call	memcmp
	mov	rsi, qword ptr [rbp - 0x38]
	test	eax, eax
	je	.label_1636
.label_1627:
	test	rbx, rbx
	jne	.label_1654
	mov	qword ptr [rsi + r14*8], r14
	xor	ebx, ebx
	jmp	.label_1642
	nop	word ptr [rax + rax]
.label_1636:
	inc	rbx
	mov	rax, r14
	sub	rax, rbx
	mov	qword ptr [rsi + r14*8], rax
.label_1642:
	inc	r14
	cmp	r14, qword ptr [rbp - 0x30]
	jne	.label_1647
.label_1628:
	mov	rax, qword ptr [rbp - 0x80]
	mov	qword ptr [rax], 0
	mov	rax, qword ptr [rbp - 0xc8]
	mov	qword ptr [rbp - 0x68], rax
	mov	byte ptr [rbp - 0x78], 0
	mov	qword ptr [rbp - 0x74], 0
	mov	byte ptr [rbp - 0x6c], 0
	mov	qword ptr [rbp - 0xb0], rax
	mov	byte ptr [rbp - 0xc0], 0
	mov	qword ptr [rbp - 0xbc], 0
	mov	byte ptr [rbp - 0xb4], 0
	lea	rdi, [rbp - 0xc0]
	call	mbuiter_multi_next
	mov	rcx, qword ptr [rbp - 0xa0]
	mov	rax, rcx
	shr	rax, 0x20
	test	cl, cl
	setne	cl
	mov	rbx, qword ptr [rbp - 0x30]
	je	.label_1641
	test	eax, eax
	je	.label_1638
.label_1641:
	xor	r15d, r15d
.label_1640:
	lea	rdx, [r15 + r15*2]
	shl	rdx, 4
	cmp	byte ptr [r13 + rdx + 0x10], 0
	je	.label_1650
	xor	cl, 1
	test	cl, 1
	jne	.label_1650
	cmp	dword ptr [r13 + rdx + 0x14], eax
	jne	.label_1631
	mov	r12, qword ptr [rbp - 0xb0]
	mov	r14, qword ptr [rbp - 0xa8]
	jmp	.label_1634
	nop	word ptr cs:[rax + rax]
.label_1650:
	mov	r14, qword ptr [r13 + rdx + 8]
	cmp	r14, qword ptr [rbp - 0xa8]
	jne	.label_1631
	mov	rdi, qword ptr [r13 + rdx]
	mov	r12, qword ptr [rbp - 0xb0]
	mov	rsi, r12
	mov	rdx, r14
	call	memcmp
	test	eax, eax
	je	.label_1634
.label_1631:
	test	r15, r15
	je	.label_1649
	mov	rax, qword ptr [rbp - 0x38]
	mov	rbx, qword ptr [rax + r15*8]
	sub	r15, rbx
	test	rbx, rbx
	lea	r14, [rbp - 0x78]
	je	.label_1646
	nop	word ptr cs:[rax + rax]
.label_1653:
	mov	rdi, r14
	call	mbuiter_multi_next
	mov	rax, qword ptr [rbp - 0x58]
	test	al, al
	je	.label_1652
	shr	rax, 0x20
	je	.label_510
.label_1652:
	mov	rax, qword ptr [rbp - 0x60]
	add	qword ptr [rbp - 0x68], rax
	mov	byte ptr [rbp - 0x6c], 0
	dec	rbx
	jne	.label_1653
.label_1646:
	mov	rbx, qword ptr [rbp - 0x30]
	jmp	.label_1637
	nop	word ptr cs:[rax + rax]
.label_1634:
	inc	r15
	add	r12, r14
	mov	qword ptr [rbp - 0xb0], r12
	mov	byte ptr [rbp - 0xb4], 0
	cmp	r15, rbx
	jne	.label_1637
	jmp	.label_1632
	nop	dword ptr [rax + rax]
.label_1649:
	lea	rdi, [rbp - 0x78]
	call	mbuiter_multi_next
	mov	rax, qword ptr [rbp - 0x58]
	test	al, al
	je	.label_508
	shr	rax, 0x20
	je	.label_510
.label_508:
	mov	rax, qword ptr [rbp - 0x60]
	add	qword ptr [rbp - 0x68], rax
	mov	byte ptr [rbp - 0x6c], 0
	mov	rax, qword ptr [rbp - 0xa8]
	add	qword ptr [rbp - 0xb0], rax
	mov	byte ptr [rbp - 0xb4], 0
	xor	r15d, r15d
.label_1637:
	lea	rdi, [rbp - 0xc0]
	call	mbuiter_multi_next
	mov	rcx, qword ptr [rbp - 0xa0]
	mov	rax, rcx
	shr	rax, 0x20
	test	cl, cl
	setne	cl
	je	.label_1640
	test	eax, eax
	jne	.label_1640
	jmp	.label_1638
.label_1645:
	xor	eax, eax
	jmp	.label_1639
.label_1632:
	mov	rax, qword ptr [rbp - 0x68]
	mov	rcx, qword ptr [rbp - 0x80]
	mov	qword ptr [rcx], rax
.label_1638:
	mov	rdi, r13
	call	freea
	mov	al, 1
.label_1639:
	lea	rsp, [rbp - 0x28]
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_510:
	call	abort
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40bce0

	.globl str_iconv
	.type str_iconv, @function
str_iconv:
	push	rbp
	push	r15
	push	r14
	push	rbx
	push	rax
	mov	r15, rdx
	mov	r14, rsi
	mov	rbx, rdi
	cmp	byte ptr [rbx], 0
	je	.label_1656
	mov	rdi, r14
	mov	rsi, r15
	call	c_strcasecmp
	test	eax, eax
	je	.label_1656
	mov	rdi, r15
	mov	rsi, r14
	call	iconv_open
	mov	r15, rax
	xor	r14d, r14d
	cmp	r15, -1
	je	.label_1658
	mov	rdi, rbx
	mov	rsi, r15
	call	str_cd_iconv
	mov	r14, rax
	test	r14, r14
	je	.label_1659
	mov	rdi, r15
	call	iconv_close
	test	eax, eax
	jns	.label_1658
	call	__errno_location
	mov	rbx, rax
	mov	ebp, dword ptr [rbx]
	mov	rdi, r14
	call	free
	jmp	.label_1660
.label_1656:
	mov	rdi, rbx
	call	__strdup
	mov	r14, rax
	test	r14, r14
	jne	.label_1658
	call	__errno_location
	mov	dword ptr [rax], 0xc
	jmp	.label_1657
.label_1659:
	call	__errno_location
	mov	rbx, rax
	mov	ebp, dword ptr [rbx]
	mov	rdi, r15
	call	iconv_close
.label_1660:
	mov	dword ptr [rbx], ebp
.label_1657:
	xor	r14d, r14d
.label_1658:
	mov	rax, r14
	add	rsp, 8
	pop	rbx
	pop	r14
	pop	r15
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40bd90

	.globl extend_buffers
	.type extend_buffers, @function
extend_buffers:
	push	r15
	push	r14
	push	r12
	push	rbx
	push	rax
	mov	ecx, esi
	mov	r14, rdi
	mov	rsi, qword ptr [r14 + 0x40]
	mov	eax, 0xc
	movabs	rdx, 0xffffffffffffffe
	cmp	rsi, rdx
	ja	.label_1665
	movsxd	rax, ecx
	mov	rcx, qword ptr [r14 + 0x58]
	add	rsi, rsi
	cmp	rcx, rsi
	cmovle	rsi, rcx
	cmp	rax, rsi
	cmovge	rsi, rax
	mov	rdi, r14
	call	re_string_realloc_buffers
	test	eax, eax
	jne	.label_1665
	mov	rdi, qword ptr [r14 + 0xb8]
	test	rdi, rdi
	je	.label_1670
	mov	rax, qword ptr [r14 + 0x40]
	lea	rsi, [rax*8 + 8]
	call	realloc
	mov	rcx, rax
	test	rcx, rcx
	mov	eax, 0xc
	je	.label_1665
	mov	qword ptr [r14 + 0xb8], rcx
.label_1670:
	cmp	byte ptr [r14 + 0x88], 0
	mov	eax, dword ptr [r14 + 0x90]
	je	.label_1667
	cmp	eax, 2
	jl	.label_1671
	mov	rdi, r14
	call	build_wcs_upper_buffer
	test	eax, eax
	je	.label_1664
	jmp	.label_1665
.label_1667:
	cmp	eax, 2
	jl	.label_1663
	mov	rdi, r14
	call	build_wcs_buffer
	jmp	.label_1664
.label_1671:
	mov	rbx, qword ptr [r14 + 0x30]
	mov	r15, qword ptr [r14 + 0x40]
	mov	rax, qword ptr [r14 + 0x58]
	cmp	r15, rax
	cmovg	r15, rax
	cmp	rbx, r15
	jl	.label_1666
	jmp	.label_1673
.label_1663:
	mov	rdx, qword ptr [r14 + 0x78]
	test	rdx, rdx
	je	.label_1664
	mov	rax, qword ptr [r14 + 0x30]
	mov	rcx, qword ptr [r14 + 0x40]
	mov	rsi, qword ptr [r14 + 0x58]
	cmp	rcx, rsi
	cmovg	rcx, rsi
	cmp	rax, rcx
	jge	.label_1662
	mov	rsi, qword ptr [r14 + 0x28]
	add	rsi, rax
	mov	rdi, qword ptr [r14]
	mov	rbx, qword ptr [r14 + 8]
	movzx	esi, byte ptr [rdi + rsi]
	mov	dl, byte ptr [rdx + rsi]
	mov	byte ptr [rbx + rax], dl
	jmp	.label_1672
	nop	word ptr cs:[rax + rax]
.label_1669:
	mov	rdx, qword ptr [r14 + 0x78]
	mov	rsi, qword ptr [r14]
	mov	rdi, qword ptr [r14 + 8]
	add	rsi, qword ptr [r14 + 0x28]
	movzx	esi, byte ptr [rax + rsi]
	movzx	edx, byte ptr [rdx + rsi]
	mov	byte ptr [rdi + rax], dl
.label_1672:
	inc	rax
	cmp	rax, rcx
	jl	.label_1669
	mov	rax, rcx
.label_1662:
	mov	qword ptr [r14 + 0x30], rax
	mov	qword ptr [r14 + 0x38], rax
	jmp	.label_1664
.label_1661:
	movzx	ecx, byte ptr [rax + rdx]
	jmp	.label_1674
	nop	word ptr cs:[rax + rax]
.label_1666:
	mov	rcx, qword ptr [r14]
	mov	rax, qword ptr [r14 + 0x78]
	add	rcx, qword ptr [r14 + 0x28]
	movzx	ecx, byte ptr [rbx + rcx]
	movzx	edx, cl
	test	rax, rax
	jne	.label_1661
.label_1674:
	movzx	r12d, cl
	mov	eax, r12d
	sub	eax, -0x80
	cmp	eax, 0x17f
	ja	.label_1668
	call	__ctype_toupper_loc
	mov	rax, qword ptr [rax]
	mov	r12d, dword ptr [rax + r12*4]
.label_1668:
	mov	rax, qword ptr [r14 + 8]
	mov	byte ptr [rax + rbx], r12b
	inc	rbx
	cmp	rbx, r15
	jl	.label_1666
	mov	rbx, r15
.label_1673:
	mov	qword ptr [r14 + 0x30], rbx
	mov	qword ptr [r14 + 0x38], rbx
.label_1664:
	xor	eax, eax
.label_1665:
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x40bf60

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
	je	.label_1687
	cmp	eax, 1
	je	.label_1675
	cmp	eax, 2
	je	.label_1676
	mov	edi, 2
	mov	esi, 2
	call	dup2
	cmp	eax, 2
	setne	r12b
.label_1676:
	mov	r15b, r12b
	mov	edi, 1
	mov	esi, 1
	call	dup2
	cmp	eax, 1
	setne	r12b
	jmp	.label_1685
.label_1687:
	xor	r15d, r15d
	xor	r13d, r13d
	jmp	.label_1677
.label_1675:
	xor	r15d, r15d
.label_1685:
	xor	r13d, r13d
	xor	edi, edi
	xor	esi, esi
	call	dup2
	test	eax, eax
	je	.label_1681
	mov	edi, OFFSET FLAT:label_1253
	xor	esi, esi
	xor	eax, eax
	call	open
	mov	r13b, 1
	test	eax, eax
	je	.label_1681
	mov	r13b, 1
	jmp	.label_1679
.label_1681:
	test	r12b, r12b
	je	.label_1684
	mov	edi, OFFSET FLAT:label_1253
	xor	esi, esi
	xor	eax, eax
	call	open
	cmp	eax, 1
	jne	.label_1680
.label_1684:
	test	r15b, r15b
	je	.label_1677
	mov	edi, OFFSET FLAT:label_1253
	xor	esi, esi
	xor	eax, eax
	call	open
	cmp	eax, 2
	jne	.label_1679
.label_1677:
	mov	rdi, rbp
	mov	rsi, r14
	mov	rdx, rbx
	call	rpl_freopen
	mov	r14, rax
	jmp	.label_1683
.label_1680:
	mov	r12b, 1
.label_1679:
	xor	r14d, r14d
	test	eax, eax
	js	.label_1683
	mov	edi, eax
	call	close
	call	__errno_location
	mov	dword ptr [rax], 9
	xor	r14d, r14d
.label_1683:
	call	__errno_location
	mov	rbx, rax
	mov	ebp, dword ptr [rbx]
	test	r15b, r15b
	je	.label_1678
	mov	edi, 2
	call	close
.label_1678:
	test	r12b, r12b
	je	.label_1682
	mov	edi, 1
	call	close
.label_1682:
	test	r13b, r13b
	je	.label_1688
	xor	edi, edi
	call	close
.label_1688:
	test	r14, r14
	jne	.label_1686
	mov	dword ptr [rbx], ebp
.label_1686:
	mov	rax, r14
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40c0b0

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
	jne	.label_1703
	cmp	byte ptr [rbx], 0
	mov	r15, qword ptr [rbx + 0x10]
	je	.label_1690
	lea	r14, [rbx + 4]
.label_1700:
	lea	r12, [rbx + 0x24]
	call	__ctype_get_mb_cur_max
	mov	rdi, r15
	mov	rsi, rax
	call	strnlen1
	mov	rdi, r12
	mov	rsi, r15
	mov	rdx, rax
	mov	rcx, r14
	call	rpl_mbrtowc
	mov	qword ptr [rbx + 0x18], rax
	cmp	rax, -2
	je	.label_1704
	test	rax, rax
	je	.label_1689
	cmp	rax, -1
	jne	.label_1691
	mov	qword ptr [rbx + 0x18], 1
	mov	byte ptr [rbx + 0x20], 0
	jmp	.label_1692
.label_1690:
	movzx	eax, byte ptr [r15]
	mov	rcx, rax
	shr	rcx, 5
	mov	ecx, dword ptr [(rcx * 4) + is_basic_table]
	bt	ecx, eax
	jae	.label_1694
	mov	qword ptr [rbx + 0x18], 1
	movsx	eax, byte ptr [r15]
	mov	dword ptr [rbx + 0x24], eax
	mov	byte ptr [rbx + 0x20], 1
	jmp	.label_1692
.label_1704:
	mov	rdi, qword ptr [rbx + 0x10]
	call	strlen
	mov	qword ptr [rbx + 0x18], rax
	mov	byte ptr [rbx + 0x20], 0
	jmp	.label_1692
.label_1689:
	mov	qword ptr [rbx + 0x18], 1
	mov	rax, qword ptr [rbx + 0x10]
	cmp	byte ptr [rax], 0
	jne	.label_1693
	cmp	dword ptr [r12], 0
	jne	.label_1701
.label_1691:
	mov	byte ptr [rbx + 0x20], 1
	mov	rdi, r14
	call	mbsinit
	test	eax, eax
	je	.label_1692
	mov	byte ptr [rbx], 0
.label_1692:
	mov	byte ptr [rbx + 0xc], 1
.label_1703:
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	ret	
.label_1694:
	lea	r14, [rbx + 4]
	mov	rdi, r14
	call	mbsinit
	test	eax, eax
	je	.label_1699
	mov	byte ptr [rbx], 1
	jmp	.label_1700
.label_1693:
	mov	edi, OFFSET FLAT:label_1702
	mov	esi, OFFSET FLAT:label_1696
	mov	edx, 0xb2
	mov	ecx, OFFSET FLAT:label_1697
	call	__assert_fail
.label_1701:
	mov	edi, OFFSET FLAT:label_1698
	mov	esi, OFFSET FLAT:label_1696
	mov	edx, 0xb3
	mov	ecx, OFFSET FLAT:label_1697
	call	__assert_fail
.label_1699:
	mov	edi, OFFSET FLAT:label_1695
	mov	esi, OFFSET FLAT:label_1696
	mov	edx, 0x96
	mov	ecx, OFFSET FLAT:label_1697
	call	__assert_fail
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40c200

	.globl free_dfa_content
	.type free_dfa_content, @function
free_dfa_content:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	push	rax
	mov	r14, rdi
	mov	rax, qword ptr [r14]
	test	rax, rax
	je	.label_1705
	cmp	qword ptr [r14 + 0x10], 0
	je	.label_1705
	xor	ebx, ebx
	mov	r12d, 8
	mov	ebp, 0x400ff
	jmp	.label_1714
	nop	dword ptr [rax]
.label_190:
	add	r12, 0x10
	mov	rax, qword ptr [r14]
.label_1714:
	mov	ecx, dword ptr [rax + r12]
	and	ecx, ebp
	cmp	ecx, 3
	je	.label_1718
	cmp	ecx, 6
	jne	.label_1706
	mov	r15, qword ptr [rax + r12 - 8]
	mov	rdi, qword ptr [r15]
	call	free
	mov	rdi, qword ptr [r15 + 8]
	call	free
	mov	rdi, qword ptr [r15 + 0x10]
	call	free
	mov	rdi, qword ptr [r15 + 0x18]
	call	free
	mov	rdi, r15
	jmp	.label_1712
	nop	word ptr cs:[rax + rax]
.label_1718:
	mov	rdi, qword ptr [rax + r12 - 8]
.label_1712:
	call	free
.label_1706:
	inc	rbx
	cmp	rbx, qword ptr [r14 + 0x10]
	jb	.label_190
.label_1705:
	mov	rdi, qword ptr [r14 + 0x18]
	call	free
	cmp	qword ptr [r14 + 0x10], 0
	je	.label_1715
	lea	r12, [r14 + 0x30]
	lea	r15, [r14 + 0x38]
	lea	r13, [r14 + 0x28]
	xor	ebp, ebp
	mov	ebx, 0x10
	nop	word ptr cs:[rax + rax]
.label_1717:
	mov	rax, qword ptr [r12]
	test	rax, rax
	je	.label_1713
	mov	rdi, qword ptr [rax + rbx]
	call	free
.label_1713:
	mov	rax, qword ptr [r15]
	test	rax, rax
	je	.label_1709
	mov	rdi, qword ptr [rax + rbx]
	call	free
.label_1709:
	mov	rax, qword ptr [r13]
	test	rax, rax
	je	.label_1710
	mov	rdi, qword ptr [rax + rbx]
	call	free
.label_1710:
	inc	rbp
	add	rbx, 0x18
	cmp	rbp, qword ptr [r14 + 0x10]
	jb	.label_1717
	jmp	.label_1707
.label_1715:
	lea	r13, [r14 + 0x28]
	lea	r12, [r14 + 0x30]
	lea	r15, [r14 + 0x38]
.label_1707:
	mov	rdi, qword ptr [r13]
	call	free
	mov	rdi, qword ptr [r12]
	call	free
	mov	rdi, qword ptr [r15]
	call	free
	mov	rdi, qword ptr [r14]
	call	free
	mov	rdi, qword ptr [r14 + 0x40]
	test	rdi, rdi
	je	.label_1716
	xor	r15d, r15d
	jmp	.label_1719
.label_1721:
	mov	rdi, qword ptr [r14 + 0x40]
.label_1719:
	lea	rax, [r15 + r15*2]
	lea	r12, [rdi + rax*8 + 0x10]
	cmp	qword ptr [rdi + rax*8], 0
	jle	.label_1711
	lea	rbx, [rdi + rax*8]
	xor	ebp, ebp
	nop	word ptr [rax + rax]
.label_1708:
	mov	rax, qword ptr [r12]
	mov	rdi, qword ptr [rax + rbp*8]
	call	free_state
	inc	rbp
	cmp	rbp, qword ptr [rbx]
	jl	.label_1708
.label_1711:
	mov	rdi, qword ptr [r12]
	call	free
	inc	r15
	cmp	r15, qword ptr [r14 + 0x88]
	jbe	.label_1721
	mov	rdi, qword ptr [r14 + 0x40]
.label_1716:
	call	free
	mov	rdi, qword ptr [r14 + 0x78]
	mov	eax, OFFSET FLAT:utf8_sb_map
	cmp	rdi, rax
	je	.label_1720
	call	free
.label_1720:
	mov	rdi, qword ptr [r14 + 0xe0]
	call	free
	mov	rdi, r14
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	jmp	free
	nop	dword ptr [rax + rax]
	add	qword ptr [rdi + 0x10], rsi
	ret	
	nop	word ptr cs:[rax + rax]
	sub	rsp, 0x38
	mov	ecx, esi
	mov	rax, rdi
	mov	rdx, qword ptr [rip + label_166]
	mov	qword ptr [rsp + 0x30], rdx
	movups	xmm0, xmmword ptr [rip + label_167]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0, xmmword ptr [rip + label_168]
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
	nop
push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x38
	mov	qword ptr [rsp + 0x30], rcx
	mov	r12, rdx
	mov	r15, rsi
	mov	rax, qword ptr [rdi + 0x38]
	xorps	xmm0, xmm0
	movaps	xmmword ptr [rsp], xmm0
	mov	qword ptr [rsp + 0x10], 0
	lea	rcx, [r15 + r15*2]
	mov	r9, qword ptr [rax + rcx*8 + 8]
	test	r9, r9
	jle	.label_1738
	mov	qword ptr [rsp + 0x28], rax
	mov	qword ptr [rsp + 0x20], rcx
	lea	r13, [rax + rcx*8 + 8]
	xor	r14d, r14d
	nop	word ptr cs:[rax + rax]
.label_1740:
	mov	r11, qword ptr [r13 + 8]
	mov	rax, qword ptr [r11 + r14*8]
	cmp	rax, r15
	je	.label_1725
	mov	rdx, qword ptr [rdi]
	mov	rcx, rax
	shl	rcx, 4
	test	byte ptr [rdx + rcx + 8], 8
	je	.label_1725
	mov	rbp, qword ptr [rdi + 0x28]
	lea	r8, [rax + rax*2]
	mov	rax, qword ptr [rbp + r8*8 + 0x10]
	mov	rsi, qword ptr [rax]
	mov	r10, -1
	cmp	qword ptr [rbp + r8*8 + 8], 2
	jl	.label_1739
	mov	r10, qword ptr [rax + 8]
.label_1739:
	test	r9, r9
	jle	.label_1733
	mov	rax, r9
	dec	rax
	mov	ebp, 0
	je	.label_1748
	xor	ebp, ebp
	nop	dword ptr [rax]
.label_1726:
	lea	rbx, [rbp + rax]
	shr	rbx, 1
	cmp	qword ptr [r11 + rbx*8], rsi
	lea	rcx, [rbx + 1]
	cmovl	rbp, rcx
	cmovge	rax, rbx
	cmp	rbp, rax
	jb	.label_1726
.label_1748:
	cmp	rbp, -1
	je	.label_1733
	cmp	qword ptr [r11 + rbp*8], rsi
	je	.label_1735
.label_1733:
	mov	rbp, qword ptr [r12 + 8]
	test	rbp, rbp
	jle	.label_1735
	dec	rbp
	mov	rbx, qword ptr [r12 + 0x10]
	mov	eax, 0
	je	.label_1737
	xor	eax, eax
	nop	word ptr cs:[rax + rax]
.label_1744:
	lea	rcx, [rax + rbp]
	shr	rcx, 1
	cmp	qword ptr [rbx + rcx*8], rsi
	lea	rdx, [rcx + 1]
	cmovl	rax, rdx
	cmovge	rbp, rcx
	cmp	rax, rbp
	jb	.label_1744
.label_1737:
	cmp	rax, -1
	je	.label_1735
	cmp	qword ptr [rbx + rax*8], rsi
	je	.label_1724
.label_1735:
	test	r10, r10
	jle	.label_1725
	test	r9, r9
	jle	.label_1728
	mov	rax, r9
	dec	rax
	mov	esi, 0
	je	.label_1729
	xor	esi, esi
	nop	dword ptr [rax]
.label_1732:
	lea	rcx, [rsi + rax]
	shr	rcx, 1
	cmp	qword ptr [r11 + rcx*8], r10
	lea	rdx, [rcx + 1]
	cmovl	rsi, rdx
	cmovge	rax, rcx
	cmp	rsi, rax
	jb	.label_1732
.label_1729:
	cmp	rsi, -1
	je	.label_1728
	cmp	qword ptr [r11 + rsi*8], r10
	je	.label_1725
.label_1728:
	mov	rsi, qword ptr [r12 + 8]
	test	rsi, rsi
	jle	.label_1725
	dec	rsi
	mov	rbp, qword ptr [r12 + 0x10]
	mov	eax, 0
	je	.label_1742
	xor	eax, eax
	nop	word ptr [rax + rax]
.label_1722:
	lea	rcx, [rax + rsi]
	shr	rcx, 1
	cmp	qword ptr [rbp + rcx*8], r10
	lea	rdx, [rcx + 1]
	cmovl	rax, rdx
	cmovge	rsi, rcx
	cmp	rax, rsi
	jb	.label_1722
.label_1742:
	cmp	rax, -1
	je	.label_1725
	cmp	qword ptr [rbp + rax*8], r10
	jne	.label_1725
.label_1724:
	mov	rbx, rdi
	mov	rax, qword ptr [rdi + 0x38]
	lea	rdx, [rax + r8*8]
	lea	rdi, [rsp]
	mov	rsi, qword ptr [rsp + 0x30]
	call	re_node_set_add_intersect
	mov	ebp, eax
	test	ebp, ebp
	jne	.label_1727
	mov	r9, qword ptr [r13]
	mov	rdi, rbx
	nop	word ptr cs:[rax + rax]
.label_1725:
	inc	r14
	cmp	r14, r9
	jl	.label_1740
	test	r9, r9
	mov	rax, qword ptr [rsp + 0x28]
	mov	rcx, qword ptr [rsp + 0x20]
	jle	.label_1738
	mov	r9, qword ptr [rsp + 8]
	mov	rdi, qword ptr [rsp + 0x10]
	lea	r10, [r9 - 1]
	mov	r8, qword ptr [rax + rcx*8 + 0x10]
	xor	r15d, r15d
	nop	word ptr cs:[rax + rax]
.label_1743:
	test	r9, r9
	mov	rbp, qword ptr [r8 + r15*8]
	jle	.label_1731
	test	r10, r10
	mov	eax, 0
	je	.label_1746
	mov	rcx, r10
	xor	eax, eax
	nop	dword ptr [rax + rax]
.label_1736:
	lea	rdx, [rax + rcx]
	shr	rdx, 1
	cmp	qword ptr [rdi + rdx*8], rbp
	lea	rbx, [rdx + 1]
	cmovl	rax, rbx
	cmovge	rcx, rdx
	cmp	rax, rcx
	jb	.label_1736
.label_1746:
	cmp	rax, -1
	je	.label_1731
	cmp	qword ptr [rdi + rax*8], rbp
	je	.label_1723
.label_1731:
	mov	r14, qword ptr [r12 + 8]
	test	r14, r14
	jle	.label_1723
	mov	r11, r14
	dec	r11
	mov	rdx, qword ptr [r12 + 0x10]
	mov	eax, 0
	je	.label_1745
	mov	rbx, r11
	xor	eax, eax
	nop	dword ptr [rax]
.label_1741:
	lea	rcx, [rax + rbx]
	shr	rcx, 1
	cmp	qword ptr [rdx + rcx*8], rbp
	lea	rsi, [rcx + 1]
	cmovl	rax, rsi
	cmovge	rbx, rcx
	cmp	rax, rbx
	jb	.label_1741
.label_1745:
	cmp	qword ptr [rdx + rax*8], rbp
	mov	rbx, -1
	cmove	rbx, rax
	test	rbx, rbx
	js	.label_1723
	cmp	r14, rbx
	jle	.label_1723
	mov	qword ptr [r12 + 8], r11
	cmp	r11, rbx
	jle	.label_1723
	nop	
.label_1730:
	mov	rcx, qword ptr [rdx + rax*8 + 8]
	mov	qword ptr [rdx + rax*8], rcx
	inc	rax
	cmp	rax, qword ptr [r12 + 8]
	jl	.label_1730
	nop	word ptr cs:[rax + rax]
.label_1723:
	inc	r15
	cmp	r15, qword ptr [r13]
	jl	.label_1743
	jmp	.label_1747
.label_1727:
	mov	rdi, qword ptr [rsp + 0x10]
	call	free
	jmp	.label_1734
	nop	dword ptr [rax + rax]
.label_1738:
	mov	rdi, qword ptr [rsp + 0x10]
.label_1747:
	call	free
	xor	ebp, ebp
.label_1734:
	mov	eax, ebp
	add	rsp, 0x38
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_355:
	call	abort
	nop	dword ptr [rax + rax]
	sub	rsp, 0x78
	xorps	xmm0, xmm0
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movaps	xmmword ptr [rsp + 0x10], xmm0
	movaps	xmmword ptr [rsp], xmm0
	mov	dword ptr [rsp + 0x30], 0
	cmp	esi, 0xa
	je	.label_355
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
	mov	eax, edi
	shr	eax, 3
	and	eax, 0x1c
	mov	eax, dword ptr [rax + is_basic_table]
	bt	eax, edi
	setb	al
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40c840

	.globl rpl_calloc
	.type rpl_calloc, @function
rpl_calloc:
	test	rdi, rdi
	mov	eax, 1
	je	.label_1749
	test	rsi, rsi
	mov	ecx, 1
	je	.label_1750
	mov	rax, rsi
	imul	rax, rdi
	xor	edx, edx
	div	rsi
	cmp	rax, rdi
	mov	rax, rsi
	mov	rcx, rdi
	je	.label_1750
	push	rax
	call	__errno_location
	mov	dword ptr [rax], 0xc
	xor	eax, eax
	pop	rcx
	ret	
.label_1749:
	mov	ecx, 1
.label_1750:
	mov	rdi, rcx
	mov	rsi, rax
	jmp	calloc
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40c890

	.globl parse_expression
	.type parse_expression, @function
parse_expression:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0xe8
	mov	r12, r9
	mov	r13, r8
	mov	rbx, rcx
	mov	r10, rdx
	mov	r14, rsi
	mov	r8, rdi
	mov	eax, dword ptr [r10 + 8]
	xor	r15d, r15d
	mov	ecx, eax
	dec	cl
	movzx	ecx, cl
	cmp	cl, 0x23
	ja	.label_365
	mov	rdi, qword ptr [r14]
	mov	qword ptr [rsp + 0x20], rbx
	mov	qword ptr [rsp + 0x10], r8
	mov	qword ptr [rsp + 8], r10
	mov	qword ptr [rsp + 0x18], rdi
	jmp	qword ptr [(rcx * 8) + label_1751]
.label_3067:
	mov	rsi, qword ptr [r8 + 0x78]
	xor	r8d, r8d
	cmp	al, 0x21
	sete	r8b
	mov	edx, OFFSET FLAT:label_393
	mov	ecx, OFFSET FLAT:label_394
	jmp	.label_395
.label_3068:
	mov	rsi, qword ptr [r8 + 0x78]
	xor	r8d, r8d
	cmp	al, 0x23
	sete	r8b
	mov	edx, OFFSET FLAT:label_399
	mov	ecx, OFFSET FLAT:label_400
.label_395:
	mov	r9, r12
	call	build_charclass_op
	mov	rbp, rax
	xor	r15d, r15d
	test	rbp, rbp
	jne	.label_403
	mov	eax, dword ptr [r12]
	test	eax, eax
.label_609:
	mov	r8, qword ptr [rsp + 0x10]
	mov	r10, qword ptr [rsp + 8]
	je	.label_353
	jmp	.label_365
.label_403:
	mov	r8, qword ptr [rsp + 0x10]
	mov	r10, qword ptr [rsp + 8]
	jmp	.label_353
.label_3058:
	mov	ecx, dword ptr [rdi + 0x80]
	cmp	ecx, 0xf
	je	.label_411
	mov	rax, qword ptr [rdi + 0x70]
.label_435:
	lea	edx, [rcx + 1]
	mov	dword ptr [rdi + 0x80], edx
	movsxd	rcx, ecx
	shl	rcx, 6
	lea	r14, [rax + rcx + 8]
	pxor	xmm0, xmm0
	movdqu	xmmword ptr [rax + rcx + 8], xmm0
	mov	qword ptr [rax + rcx + 0x18], 0
	movdqu	xmm1, xmmword ptr [r10]
	movdqu	xmmword ptr [rax + rcx + 0x30], xmm1
	and	byte ptr [rax + rcx + 0x3a], 0xf3
	movdqu	xmmword ptr [rax + rcx + 0x20], xmm0
	mov	qword ptr [rax + rcx + 0x40], -1
	cmp	dword ptr [rdi + 0xb4], 2
	jl	.label_413
	mov	rax, qword ptr [r8 + 0x48]
	cmp	qword ptr [r8 + 0x68], rax
	jg	.label_423
	mov	rbp, r14
	jmp	.label_353
.label_473:
	mov	rcx, qword ptr [r8 + 0x10]
	cmp	dword ptr [rcx + rax*4], -1
	jne	.label_425
	mov	rdi, r10
	mov	rsi, r8
	mov	rdx, rbx
	call	peek_token
	mov	rsi, qword ptr [rsp + 0x18]
	mov	r8, qword ptr [rsp + 0x10]
	cdqe	
	add	qword ptr [r8 + 0x48], rax
	mov	ecx, dword ptr [rsi + 0x80]
	cmp	ecx, 0xf
	je	.label_430
	mov	rax, qword ptr [rsi + 0x70]
	pxor	xmm1, xmm1
.label_178:
	lea	edx, [rcx + 1]
	mov	dword ptr [rsi + 0x80], edx
	movsxd	rcx, ecx
	shl	rcx, 6
	lea	rbx, [rax + rcx + 8]
	movdqu	xmmword ptr [rax + rcx + 8], xmm1
	mov	qword ptr [rax + rcx + 0x18], 0
	mov	r10, qword ptr [rsp + 8]
	movdqu	xmm0, xmmword ptr [r10]
	movdqu	xmmword ptr [rax + rcx + 0x30], xmm0
	and	byte ptr [rax + rcx + 0x3a], 0xf3
	movdqu	xmmword ptr [rax + rcx + 0x20], xmm1
	mov	qword ptr [rax + rcx + 0x40], -1
.label_455:
	mov	ecx, dword ptr [rsi + 0x80]
	cmp	ecx, 0xf
	je	.label_439
	mov	rax, qword ptr [rsi + 0x70]
.label_471:
	lea	edx, [rcx + 1]
	mov	dword ptr [rsi + 0x80], edx
	movsxd	rcx, ecx
	shl	rcx, 6
	lea	rbp, [rax + rcx + 8]
	mov	qword ptr [rax + rcx + 8], 0
	mov	qword ptr [rax + rcx + 0x10], r14
	mov	qword ptr [rax + rcx + 0x18], rbx
	mov	dword ptr [rax + rcx + 0x38], 0x10
	movdqu	xmmword ptr [rax + rcx + 0x20], xmm1
	mov	qword ptr [rax + rcx + 0x40], -1
	mov	qword ptr [r14], rbp
	test	rbx, rbx
	je	.label_376
	mov	qword ptr [rbx], rbp
	mov	rax, qword ptr [r8 + 0x48]
	cmp	qword ptr [r8 + 0x68], rax
	mov	r14, rbp
	mov	rbx, qword ptr [rsp + 0x20]
	jg	.label_423
	jmp	.label_353
.label_430:
	mov	edi, 0x3c8
	call	malloc
	mov	rsi, qword ptr [rsp + 0x18]
	mov	r8, qword ptr [rsp + 0x10]
	test	rax, rax
	mov	ebx, 0
	mov	r10, qword ptr [rsp + 8]
	pxor	xmm1, xmm1
	je	.label_455
	mov	rcx, qword ptr [rsi + 0x70]
	mov	qword ptr [rax], rcx
	mov	qword ptr [rsi + 0x70], rax
	mov	dword ptr [rsi + 0x80], 0
	xor	ecx, ecx
	jmp	.label_178
.label_439:
	mov	edi, 0x3c8
	call	malloc
	pxor	xmm1, xmm1
	mov	rsi, qword ptr [rsp + 0x18]
	mov	r10, qword ptr [rsp + 8]
	mov	r8, qword ptr [rsp + 0x10]
	test	rax, rax
	je	.label_376
	mov	rcx, qword ptr [rsi + 0x70]
	mov	qword ptr [rax], rcx
	mov	qword ptr [rsi + 0x70], rax
	mov	dword ptr [rsi + 0x80], 0
	xor	ecx, ecx
	jmp	.label_471
.label_423:
	cmp	rax, qword ptr [r8 + 0x30]
	jne	.label_473
	mov	rbp, r14
	jmp	.label_353
.label_3059:
	mov	cl, byte ptr [r10]
	mov	eax, 1
	shl	eax, cl
	cdqe	
	test	qword ptr [rdi + 0xa8], rax
	je	.label_477
	or	qword ptr [rdi + 0xa0], rax
	mov	ecx, dword ptr [rdi + 0x80]
	cmp	ecx, 0xf
	je	.label_484
	mov	rax, qword ptr [rdi + 0x70]
.label_456:
	lea	edx, [rcx + 1]
	mov	dword ptr [rdi + 0x80], edx
	movsxd	rcx, ecx
	shl	rcx, 6
	lea	rbp, [rax + rcx + 8]
	pxor	xmm0, xmm0
	movdqu	xmmword ptr [rax + rcx + 8], xmm0
	mov	qword ptr [rax + rcx + 0x18], 0
	movdqu	xmm1, xmmword ptr [r10]
	movdqu	xmmword ptr [rax + rcx + 0x30], xmm1
	and	byte ptr [rax + rcx + 0x3a], 0xf3
	movdqu	xmmword ptr [rax + rcx + 0x20], xmm0
	mov	qword ptr [rax + rcx + 0x40], -1
	inc	qword ptr [rdi + 0x98]
	or	byte ptr [rdi + 0xb0], 2
	jmp	.label_353
.label_3060:
	mov	ecx, dword ptr [rdi + 0x80]
	cmp	ecx, 0xf
	je	.label_498
	mov	rax, qword ptr [rdi + 0x70]
.label_443:
	lea	edx, [rcx + 1]
	mov	dword ptr [rdi + 0x80], edx
	movsxd	rcx, ecx
	shl	rcx, 6
	lea	rbp, [rax + rcx + 8]
	pxor	xmm0, xmm0
	movdqu	xmmword ptr [rax + rcx + 8], xmm0
	mov	qword ptr [rax + rcx + 0x18], 0
	movdqu	xmm1, xmmword ptr [r10]
	movdqu	xmmword ptr [rax + rcx + 0x30], xmm1
	and	byte ptr [rax + rcx + 0x3a], 0xf3
	movdqu	xmmword ptr [rax + rcx + 0x20], xmm0
	mov	qword ptr [rax + rcx + 0x40], -1
	cmp	dword ptr [rdi + 0xb4], 1
	jle	.label_353
	or	byte ptr [rdi + 0xb0], 2
	jmp	.label_353
.label_3061:
	mov	r15, qword ptr [r14 + 0x30]
	lea	rax, [r15 + 1]
	mov	qword ptr [r14 + 0x30], rax
	mov	rdx, rbx
	or	rdx, 0x800000
	mov	rdi, r10
	mov	rsi, r8
	call	peek_token
	mov	r10, qword ptr [rsp + 8]
	mov	r8, qword ptr [rsp + 0x10]
	cdqe	
	add	qword ptr [r8 + 0x48], rax
	xor	edi, edi
	cmp	byte ptr [r10 + 8], 9
	je	.label_517
	mov	rbp, r15
	inc	r13
	mov	rdi, r8
	mov	rsi, r14
	mov	rdx, r10
	mov	rcx, rbx
	mov	r8, r13
	mov	r9, r12
	call	parse_reg_exp
	mov	r10, qword ptr [rsp + 8]
	mov	r8, qword ptr [rsp + 0x10]
	mov	rdi, rax
	xor	r15d, r15d
	cmp	dword ptr [r12], 0
	jne	.label_365
	cmp	byte ptr [r10 + 8], 9
	jne	.label_529
	mov	r15, rbp
.label_517:
	cmp	r15, 8
	mov	rsi, qword ptr [rsp + 0x18]
	ja	.label_558
	mov	eax, 1
	mov	ecx, r15d
	shl	eax, cl
	cdqe	
	or	qword ptr [rsi + 0xa8], rax
.label_558:
	mov	ecx, dword ptr [rsi + 0x80]
	cmp	ecx, 0xf
	je	.label_538
	mov	rax, qword ptr [rsi + 0x70]
.label_496:
	lea	edx, [rcx + 1]
	mov	dword ptr [rsi + 0x80], edx
	movsxd	rcx, ecx
	shl	rcx, 6
	lea	rbp, [rax + rcx + 8]
	mov	qword ptr [rax + rcx + 8], 0
	mov	qword ptr [rax + rcx + 0x10], rdi
	mov	qword ptr [rax + rcx + 0x18], 0
	mov	dword ptr [rax + rcx + 0x38], 0x11
	pxor	xmm0, xmm0
	movdqu	xmmword ptr [rax + rcx + 0x20], xmm0
	mov	qword ptr [rax + rcx + 0x40], -1
	test	rdi, rdi
	je	.label_542
	mov	qword ptr [rdi], rbp
.label_542:
	mov	qword ptr [rax + rcx + 0x30], r15
	jmp	.label_353
.label_3064:
	mov	eax, dword ptr [r10]
	test	ax, 0x30f
	je	.label_552
	mov	al, byte ptr [rdi + 0xb0]
	test	al, 0x10
	jne	.label_543
	mov	ecx, eax
	or	cl, 0x10
	mov	byte ptr [rdi + 0xb0], cl
	xor	r14d, r14d
	test	al, 8
	mov	ebp, 0
	jne	.label_553
	movdqa	xmm0, xmmword ptr [rip + label_557]
	movdqu	xmmword ptr [rdi + 0xb8], xmm0
	mov	ebp, 2
	mov	r14d, 0x80
	test	al, 4
	je	.label_553
	pxor	xmm0, xmm0
	movdqu	xmmword ptr [rdi + 0xc8], xmm0
.label_543:
	mov	eax, dword ptr [r10]
.label_552:
	cmp	eax, 0x200
	je	.label_561
	cmp	eax, 0x100
	jne	.label_562
	mov	dword ptr [r10], 6
	mov	r15, rdi
	sub	r15, -0x80
	mov	r14d, dword ptr [rdi + 0x80]
	cmp	r14d, 0xf
	je	.label_565
	mov	rax, qword ptr [rdi + 0x70]
.label_548:
	lea	ecx, [r14 + 1]
	mov	dword ptr [r15], ecx
	movsxd	rcx, r14d
	shl	rcx, 6
	pxor	xmm0, xmm0
	movdqu	xmmword ptr [rax + rcx + 8], xmm0
	mov	qword ptr [rax + rcx + 0x18], 0
	movdqu	xmm1, xmmword ptr [r10]
	movdqu	xmmword ptr [rax + rcx + 0x30], xmm1
	and	byte ptr [rax + rcx + 0x3a], 0xf3
	lea	r14, [rax + rcx + 8]
	movdqu	xmmword ptr [rax + rcx + 0x20], xmm0
	mov	qword ptr [rax + rcx + 0x40], -1
	mov	ecx, 9
	jmp	.label_567
.label_3066:
	test	ebx, 0x1000000
	jne	.label_329
.label_3063:
	test	bl, 0x20
	jne	.label_329
	test	bl, 0x10
	jne	.label_585
.label_3062:
	test	ebx, 0x20000
	jne	.label_587
	movzx	ecx, al
	cmp	ecx, 9
	jne	.label_587
	mov	dword ptr [r12], 0x10
	jmp	.label_351
.label_587:
	and	eax, 0xffffff00
	or	eax, 1
	mov	dword ptr [r10 + 8], eax
	mov	ecx, dword ptr [rdi + 0x80]
	cmp	ecx, 0xf
	je	.label_356
	mov	rax, qword ptr [rdi + 0x70]
.label_431:
	lea	edx, [rcx + 1]
	mov	dword ptr [rdi + 0x80], edx
	movsxd	rcx, ecx
	shl	rcx, 6
	lea	rbp, [rax + rcx + 8]
	pxor	xmm0, xmm0
	movdqu	xmmword ptr [rax + rcx + 8], xmm0
	mov	qword ptr [rax + rcx + 0x18], 0
	movdqu	xmm1, xmmword ptr [r10]
	movdqu	xmmword ptr [rax + rcx + 0x30], xmm1
	and	byte ptr [rax + rcx + 0x3a], 0xf3
.label_323:
	movdqu	xmmword ptr [rax + rcx + 0x20], xmm0
	mov	qword ptr [rax + rcx + 0x40], -1
	jmp	.label_353
.label_3065:
	mov	qword ptr [rsp + 0xa8], 0
	mov	edi, 0x20
	mov	esi, 1
	call	rpl_calloc
	mov	r14, rax
	mov	edi, 0x50
	mov	esi, 1
	call	rpl_calloc
	mov	r15, rax
	test	r14, r14
	je	.label_600
	test	r15, r15
	je	.label_600
	mov	rbp, qword ptr [rsp + 8]
	mov	rdi, rbp
	mov	rsi, qword ptr [rsp + 0x10]
	mov	rdx, rbx
	call	peek_token_bracket
	mov	rdx, rbp
	mov	ecx, dword ptr [rdx + 8]
	cmp	cl, 0x19
	je	.label_239
	cmp	cl, 2
	je	.label_101
	mov	dword ptr [rsp + 0x28], 0
	jmp	.label_115
.label_3069:
	mov	dword ptr [r12], 5
	jmp	.label_351
.label_585:
	mov	rdi, r10
	mov	rsi, r8
	mov	rdx, rbx
	mov	rbp, r8
	mov	r15, r10
	call	peek_token
	cdqe	
	add	qword ptr [rbp + 0x48], rax
	mov	rdi, rbp
	mov	rsi, r14
	mov	rdx, r15
	mov	rcx, rbx
	mov	r8, r13
	mov	r9, r12
	add	rsp, 0xe8
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	jmp	parse_expression
.label_413:
	mov	rbp, r14
	jmp	.label_353
.label_239:
	or	byte ptr [r15 + 0x20], 1
	test	bh, 1
	je	.label_598
	or	byte ptr [r14 + 1], 4
.label_598:
	cdqe	
	mov	rsi, qword ptr [rsp + 0x10]
	add	qword ptr [rsi + 0x48], rax
	mov	rdi, rdx
	mov	rdx, rbx
	call	peek_token_bracket
	mov	rdx, qword ptr [rsp + 8]
	mov	ecx, dword ptr [rdx + 8]
	cmp	cl, 2
	je	.label_101
	mov	sil, 1
	mov	dword ptr [rsp + 0x28], esi
.label_115:
	cmp	cl, 0x15
	jne	.label_105
	and	ecx, 0xffffff00
	or	ecx, 1
	mov	dword ptr [rdx + 8], ecx
.label_105:
	lea	rcx, [rsp + 0xc0]
	mov	qword ptr [rsp + 0x58], rcx
	mov	dword ptr [rsp + 0x50], 3
	lea	rdi, [rsp + 0x50]
	mov	r9d, 1
	mov	rsi, qword ptr [rsp + 0x10]
	mov	ecx, eax
	mov	r8, rbx
	call	parse_bracket_element
	test	eax, eax
	jne	.label_122
	mov	eax, ebx
	and	eax, 0x10000
	mov	qword ptr [rsp + 0x38], rax
	xor	eax, eax
	mov	qword ptr [rsp + 0x68], rax
	xor	eax, eax
	mov	qword ptr [rsp + 0x60], rax
	mov	qword ptr [rsp + 0x30], r15
	jmp	.label_112
.label_291:
	cmp	al, 2
	je	.label_118
	lea	rax, [rsp + 0xc0]
	mov	qword ptr [rsp + 0x58], rax
	mov	dword ptr [rsp + 0x50], 3
	xor	r9d, r9d
	lea	rdi, [rsp + 0x50]
	mov	rsi, qword ptr [rsp + 0x10]
	mov	rdx, r10
	mov	ecx, r13d
	mov	r8, rbx
	call	parse_bracket_element
	test	eax, eax
	je	.label_112
	jmp	.label_122
.label_3077:
	mov	rcx, qword ptr [r15 + 0x28]
	cmp	qword ptr [rsp + 0x68], rcx
	je	.label_123
	mov	rax, qword ptr [r15]
.label_187:
	mov	r10, qword ptr [rsp + 8]
	mov	r9, qword ptr [rsp + 0x18]
	mov	edx, dword ptr [rsp + 0x58]
	lea	rsi, [rcx + 1]
	mov	qword ptr [r15 + 0x28], rsi
	mov	dword ptr [rax + rcx*4], edx
	jmp	.label_125
.label_3078:
	mov	rbp, qword ptr [rsp + 0x58]
	mov	rdi, rbp
	call	strlen
	cmp	rax, 1
	je	.label_131
	jmp	.label_133
.label_265:
	mov	rax, qword ptr [rsp + 0x58]
	mov	al, byte ptr [rax]
	jmp	.label_134
.label_267:
	xor	eax, eax
.label_134:
	cmp	r15d, 3
	je	.label_607
	test	r15d, r15d
	jne	.label_138
	mov	bl, byte ptr [rsp + 0xa0]
	jmp	.label_139
.label_607:
	mov	rcx, qword ptr [rsp + 0xa0]
	mov	bl, byte ptr [rcx]
	jmp	.label_139
.label_138:
	xor	ebx, ebx
.label_139:
	cmp	ebp, 3
	je	.label_142
	test	ebp, ebp
	jne	.label_144
.label_142:
	test	r12, r12
	movzx	edx, al
	je	.label_148
	mov	edi, edx
	call	btowc
	mov	r9, qword ptr [rsp + 0x18]
	mov	r10, qword ptr [rsp + 8]
	mov	edx, eax
	jmp	.label_148
.label_144:
	mov	edx, dword ptr [rsp + 0x58]
.label_148:
	cmp	r15d, 3
	je	.label_151
	test	r15d, r15d
	jne	.label_154
.label_151:
	test	r12, r12
	movzx	eax, bl
	je	.label_155
	mov	edi, eax
	mov	ebx, edx
	call	btowc
	mov	edx, ebx
	mov	r9, qword ptr [rsp + 0x18]
	mov	r10, qword ptr [rsp + 8]
	jmp	.label_155
.label_154:
	mov	eax, dword ptr [rsp + 0xa0]
.label_155:
	mov	rbx, qword ptr [rsp + 0x20]
	cmp	edx, -1
	mov	ecx, 3
	je	.label_161
	cmp	eax, -1
	je	.label_161
	cmp	qword ptr [rsp + 0x38], 0
	je	.label_163
	cmp	edx, eax
	mov	ecx, 0xb
	ja	.label_161
.label_163:
	test	r12, r12
	je	.label_164
	mov	rsi, qword ptr [r12 + 0x40]
	cmp	qword ptr [rsp + 0x60], rsi
	je	.label_170
	mov	rdi, qword ptr [r12 + 8]
	mov	rbp, qword ptr [r12 + 0x10]
.label_200:
	mov	dword ptr [rdi + rsi*4], edx
	lea	rcx, [rsi + 1]
	mov	qword ptr [r12 + 0x40], rcx
	mov	dword ptr [rbp + rsi*4], eax
.label_164:
	mov	r15, qword ptr [rsp + 0x30]
	mov	eax, eax
	mov	edx, edx
	xor	ecx, ecx
	mov	r12, qword ptr [rsp + 0x48]
	nop	dword ptr [rax]
.label_181:
	cmp	rdx, rcx
	ja	.label_177
	cmp	rcx, rax
	ja	.label_177
	mov	esi, 1
	shl	rsi, cl
	mov	rdi, rcx
	sar	rdi, 0x3f
	shr	rdi, 0x3a
	add	rdi, rcx
	sar	rdi, 6
	or	qword ptr [r14 + rdi*8], rsi
.label_177:
	inc	rcx
	cmp	rcx, 0x100
	jne	.label_181
	mov	dword ptr [r12], 0
	jmp	.label_125
.label_123:
	mov	rax, qword ptr [rsp + 0x68]
	lea	rax, [rax + rax]
	mov	rdi, qword ptr [r15]
	lea	rsi, [rax*4 + 4]
	call	realloc
	test	rax, rax
	je	.label_186
	mov	rcx, qword ptr [rsp + 0x68]
	lea	rcx, [rcx + rcx + 1]
	mov	qword ptr [rsp + 0x68], rcx
	mov	r15, qword ptr [rsp + 0x30]
	mov	qword ptr [r15], rax
	mov	rcx, qword ptr [r15 + 0x28]
	mov	rbx, qword ptr [rsp + 0x20]
	jmp	.label_187
.label_170:
	mov	dword ptr [rsp + 0x40], eax
	mov	r15d, edx
	mov	rax, qword ptr [rsp + 0x60]
	lea	rax, [rax + rax]
	mov	rdi, qword ptr [r12 + 8]
	lea	rbp, [rax*4 + 4]
	mov	rsi, rbp
	call	realloc
	mov	rbx, rax
	mov	rdi, qword ptr [r12 + 0x10]
	mov	rsi, rbp
	call	realloc
	mov	rbp, rax
	mov	rdi, rbx
	test	rbx, rbx
	je	.label_196
	test	rbp, rbp
	je	.label_196
	mov	rax, qword ptr [rsp + 0x60]
	lea	rax, [rax + rax + 1]
	mov	qword ptr [rsp + 0x60], rax
	mov	qword ptr [r12 + 8], rdi
	mov	qword ptr [r12 + 0x10], rbp
	mov	rsi, qword ptr [r12 + 0x40]
	mov	rbx, qword ptr [rsp + 0x20]
	mov	r10, qword ptr [rsp + 8]
	mov	r9, qword ptr [rsp + 0x18]
	mov	edx, r15d
	mov	eax, dword ptr [rsp + 0x40]
	jmp	.label_200
.label_112:
	mov	rdi, qword ptr [rsp + 8]
	mov	rsi, qword ptr [rsp + 0x10]
	mov	rdx, rbx
	call	peek_token_bracket
	mov	r13d, eax
	mov	ebp, dword ptr [rsp + 0x50]
	cmp	ebp, 2
	je	.label_207
	cmp	ebp, 4
	jne	.label_209
	mov	rax, qword ptr [rsp + 0x10]
	mov	rdi, qword ptr [rax + 0x78]
	mov	r8, qword ptr [rsp + 0x58]
	mov	rsi, r14
	mov	rdx, r15
	lea	rcx, [rsp + 0xa8]
	mov	r9, rbx
	call	build_charclass
	mov	dword ptr [r12], eax
	test	eax, eax
	mov	r10, qword ptr [rsp + 8]
	mov	r9, qword ptr [rsp + 0x18]
	je	.label_125
	jmp	.label_222
.label_209:
	mov	rax, qword ptr [rsp + 8]
	mov	al, byte ptr [rax + 8]
	cmp	al, 0x16
	mov	rsi, qword ptr [rsp + 0x10]
	je	.label_225
	cmp	al, 2
	jne	.label_226
	jmp	.label_227
.label_225:
	movsxd	rax, r13d
	add	qword ptr [rsi + 0x48], rax
	lea	rdi, [rsp + 0xb0]
	mov	rdx, rbx
	mov	r15, rsi
	call	peek_token_bracket
	mov	cl, byte ptr [rsp + 0xb8]
	cmp	cl, 0x15
	je	.label_228
	cmp	cl, 2
	je	.label_230
	mov	qword ptr [rsp + 0x48], r12
	lea	rcx, [rsp + 0x70]
	mov	qword ptr [rsp + 0xa0], rcx
	mov	dword ptr [rsp + 0x98], 3
	mov	r9d, 1
	lea	rdi, [rsp + 0x98]
	mov	r15, qword ptr [rsp + 0x10]
	mov	rsi, r15
	lea	rdx, [rsp + 0xb0]
	mov	ecx, eax
	mov	r8, rbx
	call	parse_bracket_element
	test	eax, eax
	jne	.label_238
	mov	rdi, qword ptr [rsp + 8]
	mov	rsi, r15
	mov	rdx, rbx
	call	peek_token_bracket
	mov	r13d, eax
	mov	r9, qword ptr [rsp + 0x18]
	cmp	dword ptr [r9 + 0xb4], 1
	mov	r12d, 0
	cmovg	r12, qword ptr [rsp + 0x30]
	mov	ecx, 0xb
	mov	r15d, dword ptr [rsp + 0x98]
	cmp	r15d, 2
	je	.label_161
	cmp	r15d, 4
	je	.label_161
	cmp	ebp, 3
	mov	r10, qword ptr [rsp + 8]
	jne	.label_253
	mov	rdi, qword ptr [rsp + 0x58]
	call	strlen
	mov	r9, qword ptr [rsp + 0x18]
	mov	r10, qword ptr [rsp + 8]
	mov	ecx, 3
	cmp	rax, 1
	ja	.label_161
.label_253:
	cmp	r15d, 3
	jne	.label_129
	mov	rdi, qword ptr [rsp + 0xa0]
	call	strlen
	mov	r9, qword ptr [rsp + 0x18]
	mov	r10, qword ptr [rsp + 8]
	mov	ecx, 3
	cmp	rax, 1
	ja	.label_161
.label_129:
	cmp	ebp, 3
	je	.label_265
	test	ebp, ebp
	jne	.label_267
	mov	al, byte ptr [rsp + 0x58]
	jmp	.label_134
.label_228:
	mov	eax, r13d
	neg	eax
	cdqe	
	add	qword ptr [r15 + 0x48], rax
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + 8], 1
	mov	r15, qword ptr [rsp + 0x30]
.label_226:
	mov	eax, ebp
	cmp	ebp, 3
	ja	.label_270
	jmp	qword ptr [(rax * 8) + label_569]
.label_3076:
	mov	cl, byte ptr [rsp + 0x58]
	mov	eax, 1
	shl	rax, cl
	shr	cl, 6
	movzx	ecx, cl
	or	qword ptr [r14 + rcx*8], rax
	jmp	.label_274
.label_207:
	mov	rbp, qword ptr [rsp + 0x58]
	mov	rdi, rbp
	call	strlen
	cmp	rax, 1
	jne	.label_282
.label_131:
	mov	cl, byte ptr [rbp]
	mov	eax, 1
	shl	rax, cl
	shr	cl, 6
	movzx	ecx, cl
	or	qword ptr [r14 + rcx*8], rax
	mov	dword ptr [r12], 0
.label_274:
	mov	r10, qword ptr [rsp + 8]
	mov	r9, qword ptr [rsp + 0x18]
.label_125:
	mov	al, byte ptr [r10 + 8]
	cmp	al, 0x15
	jne	.label_291
	movsxd	rax, r13d
	mov	rcx, qword ptr [rsp + 0x10]
	add	qword ptr [rcx + 0x48], rax
	mov	eax, dword ptr [rsp + 0x28]
	test	al, al
	je	.label_295
	movdqu	xmm0, xmmword ptr [r14]
	pcmpeqd	xmm1, xmm1
	pxor	xmm0, xmm1
	movdqu	xmmword ptr [r14], xmm0
	movdqu	xmm0, xmmword ptr [r14 + 0x10]
	pxor	xmm0, xmm1
	movdqu	xmmword ptr [r14 + 0x10], xmm0
.label_295:
	mov	eax, dword ptr [r9 + 0xb4]
	cmp	eax, 2
	jl	.label_103
	mov	rcx, qword ptr [r9 + 0x78]
	mov	rdx, qword ptr [rcx]
	and	qword ptr [r14], rdx
	mov	rdx, qword ptr [rcx + 8]
	and	qword ptr [r14 + 8], rdx
	mov	rdx, qword ptr [rcx + 0x10]
	and	qword ptr [r14 + 0x10], rdx
	mov	rcx, qword ptr [rcx + 0x18]
	and	qword ptr [r14 + 0x18], rcx
.label_103:
	cmp	qword ptr [r15 + 0x28], 0
	jne	.label_305
	cmp	qword ptr [r15 + 0x30], 0
	jne	.label_305
	cmp	qword ptr [r15 + 0x38], 0
	jne	.label_305
	cmp	qword ptr [r15 + 0x40], 0
	jne	.label_305
	cmp	eax, 2
	jl	.label_311
	cmp	qword ptr [r15 + 0x48], 0
	jne	.label_305
	test	byte ptr [r15 + 0x20], 1
	jne	.label_305
.label_311:
	mov	rdi, qword ptr [r15]
	call	free
	mov	rdi, qword ptr [r15 + 8]
	call	free
	mov	rdi, qword ptr [r15 + 0x10]
	call	free
	mov	rdi, qword ptr [r15 + 0x18]
	call	free
	mov	rdi, r15
	call	free
	mov	rsi, qword ptr [rsp + 0x18]
	mov	ecx, dword ptr [rsi + 0x80]
	cmp	ecx, 0xf
	je	.label_300
	mov	rax, qword ptr [rsi + 0x70]
.label_595:
	mov	r8, qword ptr [rsp + 0x10]
	mov	r10, qword ptr [rsp + 8]
	lea	edx, [rcx + 1]
	mov	dword ptr [rsi + 0x80], edx
	movsxd	rcx, ecx
	shl	rcx, 6
	lea	rbp, [rax + rcx + 8]
	pxor	xmm0, xmm0
	movdqu	xmmword ptr [rax + rcx + 8], xmm0
	mov	qword ptr [rax + rcx + 0x18], 0
	mov	qword ptr [rax + rcx + 0x30], r14
	mov	dword ptr [rax + rcx + 0x38], 3
	jmp	.label_323
.label_305:
	or	byte ptr [r9 + 0xb0], 2
	mov	ecx, dword ptr [r9 + 0x80]
	cmp	ecx, 0xf
	je	.label_330
	mov	rax, qword ptr [r9 + 0x70]
.label_466:
	lea	edx, [rcx + 1]
	mov	dword ptr [r9 + 0x80], edx
	movsxd	rcx, ecx
	shl	rcx, 6
	lea	r15, [rax + rcx + 8]
	pxor	xmm0, xmm0
	movdqu	xmmword ptr [rax + rcx + 8], xmm0
	mov	qword ptr [rax + rcx + 0x18], 0
	mov	rdx, qword ptr [rsp + 0x30]
	mov	qword ptr [rax + rcx + 0x30], rdx
	mov	dword ptr [rax + rcx + 0x38], 6
	movdqu	xmmword ptr [rax + rcx + 0x20], xmm0
	mov	qword ptr [rax + rcx + 0x40], -1
	cmp	qword ptr [r14], 0
	jne	.label_333
	cmp	qword ptr [r14 + 8], 0
	jne	.label_333
	cmp	qword ptr [r14 + 0x10], 0
	jne	.label_333
	cmp	qword ptr [r14 + 0x18], 0
	je	.label_447
.label_333:
	mov	eax, dword ptr [r9 + 0x80]
	cmp	eax, 0xf
	je	.label_345
	mov	rbp, qword ptr [r9 + 0x70]
	mov	r8, qword ptr [rsp + 0x10]
.label_475:
	lea	ecx, [rax + 1]
	mov	dword ptr [r9 + 0x80], ecx
	movsxd	rbx, eax
	shl	rbx, 6
	pxor	xmm0, xmm0
	movdqu	xmmword ptr [rbp + rbx + 8], xmm0
	mov	qword ptr [rbp + rbx + 0x18], 0
	mov	qword ptr [rbp + rbx + 0x30], r14
	mov	dword ptr [rbp + rbx + 0x38], 3
	movdqu	xmmword ptr [rbp + rbx + 0x20], xmm0
	mov	qword ptr [rbp + rbx + 0x40], -1
	mov	ecx, dword ptr [r9 + 0x80]
	cmp	ecx, 0xf
	je	.label_346
	mov	rax, qword ptr [r9 + 0x70]
.label_489:
	lea	rdx, [rbp + rbx + 8]
	lea	esi, [rcx + 1]
	mov	dword ptr [r9 + 0x80], esi
	movsxd	rcx, ecx
	shl	rcx, 6
	lea	rbp, [rax + rcx + 8]
	mov	qword ptr [rax + rcx + 8], 0
	mov	qword ptr [rax + rcx + 0x10], rdx
	mov	qword ptr [rax + rcx + 0x18], r15
	mov	dword ptr [rax + rcx + 0x38], 0xa
	pxor	xmm0, xmm0
	movdqu	xmmword ptr [rax + rcx + 0x20], xmm0
	mov	qword ptr [rax + rcx + 0x40], -1
	mov	qword ptr [rdx], rbp
	mov	qword ptr [r15], rbp
	mov	rbx, qword ptr [rsp + 0x20]
.label_353:
	mov	rdi, r10
	mov	rsi, r8
	mov	rdx, rbx
	mov	r15, rbp
	call	peek_token
	mov	rdi, qword ptr [rsp + 8]
	mov	r8, qword ptr [rsp + 0x10]
	cdqe	
	add	qword ptr [r8 + 0x48], rax
	mov	eax, ebx
	and	eax, 0x1000000
	mov	qword ptr [rsp + 0x68], rax
	mov	eax, ebx
	and	eax, 0x200000
	mov	qword ptr [rsp + 0x60], rax
	mov	qword ptr [rsp + 0x48], r12
	nop	word ptr cs:[rax + rax]
.label_327:
	movzx	eax, byte ptr [rdi + 8]
	cmp	al, 0x17
	ja	.label_365
	mov	ecx, 0x8c0800
	bt	rcx, rax
	jae	.label_365
	mov	r14, qword ptr [r8 + 0x48]
	movdqu	xmm0, xmmword ptr [rdi]
	movdqa	xmmword ptr [rsp + 0xc0], xmm0
	cmp	eax, 0x17
	mov	qword ptr [rsp + 0x28], r15
	jne	.label_367
	mov	rsi, -1
	jmp	.label_373
	nop	word ptr cs:[rax + rax]
.label_367:
	xor	r13d, r13d
	cmp	eax, 0x12
	sete	r13b
	cmp	eax, 0x13
	mov	r15, -1
	mov	eax, 1
	cmove	r15, rax
.label_488:
	mov	rsi, r8
	mov	rdx, rbx
	call	peek_token
	lea	r10, [rsp + 0x70]
	pxor	xmm1, xmm1
	mov	r9, qword ptr [rsp + 0x28]
	mov	rbp, qword ptr [rsp + 0x18]
	mov	r8, qword ptr [rsp + 0x10]
	cdqe	
	add	qword ptr [r8 + 0x48], rax
	test	r9, r9
	mov	ecx, 0
	je	.label_116
	mov	rax, r15
	mov	r11, r13
	or	rax, r11
	je	.label_390
	test	r11, r11
	mov	eax, 0
	mov	qword ptr [rsp + 0x38], rax
	mov	r12, r9
	mov	rdi, qword ptr [rsp + 8]
	jg	.label_392
.label_292:
	cmp	byte ptr [r12 + 0x30], 0x11
	jne	.label_398
	mov	rax, qword ptr [r12 + 0x28]
	mov	rdx, r12
	nop	
.label_402:
	mov	rcx, rdx
	mov	rdx, qword ptr [rcx + 8]
	test	rdx, rdx
	jne	.label_402
	mov	rdx, qword ptr [rcx + 0x10]
	test	rdx, rdx
	jne	.label_402
	nop	word ptr cs:[rax + rax]
.label_409:
	mov	edx, dword ptr [rcx + 0x30]
	cmp	dl, 0x11
	jne	.label_343
	cmp	qword ptr [rcx + 0x28], rax
	jne	.label_343
	or	edx, 0x80000
	mov	dword ptr [rcx + 0x30], edx
.label_343:
	mov	rsi, qword ptr [rcx]
	test	rsi, rsi
	je	.label_398
	mov	rdx, qword ptr [rsi + 0x10]
	cmp	rdx, rcx
	mov	rcx, rsi
	je	.label_409
	test	rdx, rdx
	mov	rcx, rsi
	je	.label_409
	jmp	.label_402
	nop	word ptr cs:[rax + rax]
.label_398:
	xor	ebx, ebx
	cmp	r15, -1
	sete	r14b
	mov	ecx, dword ptr [rbp + 0x80]
	cmp	ecx, 0xf
	je	.label_415
	mov	rax, qword ptr [rbp + 0x70]
.label_132:
	mov	bl, r14b
	or	ebx, 0xa
	lea	edx, [rcx + 1]
	mov	dword ptr [rbp + 0x80], edx
	movsxd	rcx, ecx
	shl	rcx, 6
	lea	r14, [rax + rcx + 8]
	mov	qword ptr [rax + rcx + 8], 0
	mov	qword ptr [rax + rcx + 0x10], r12
	mov	qword ptr [rax + rcx + 0x18], 0
	mov	dword ptr [rax + rcx + 0x38], ebx
	movdqu	xmmword ptr [rax + rcx + 0x20], xmm1
	mov	qword ptr [rax + rcx + 0x40], -1
	test	r12, r12
	je	.label_419
	mov	qword ptr [r12], r14
.label_419:
	add	r11, 2
	cmp	r11, r15
	jg	.label_427
	mov	qword ptr [rsp + 0x30], r15
	jmp	.label_429
.label_442:
	lea	rax, [r13 + r13*4]
	lea	rax, [rcx + rax*2 - 0x30]
	cmp	rax, 0x8000
	mov	esi, 0x8000
	cmovle	rsi, rax
	nop	dword ptr [rax + rax]
.label_373:
	mov	r13, rsi
	mov	rsi, r8
	mov	rdx, rbx
	call	peek_token
	mov	rdi, qword ptr [rsp + 8]
	mov	r8, qword ptr [rsp + 0x10]
	cdqe	
	add	qword ptr [r8 + 0x48], rax
	movzx	edx, byte ptr [rdi]
	movzx	ecx, dl
	movzx	eax, byte ptr [rdi + 8]
	mov	bl, 0x18
	cmp	al, 0x18
	je	.label_433
	cmp	al, 2
	mov	r9, qword ptr [rsp + 0x28]
	je	.label_117
	mov	sil, 0x2c
	cmp	dl, 0x2c
	mov	ebx, eax
	je	.label_437
	cmp	dl, 0x30
	mov	rsi, -2
	mov	rbx, qword ptr [rsp + 0x20]
	jb	.label_373
	cmp	eax, 1
	jne	.label_373
	cmp	r13, -2
	je	.label_373
	cmp	dl, 0x39
	ja	.label_373
	cmp	r13, -1
	jne	.label_442
	add	rcx, -0x30
	mov	rsi, rcx
	jmp	.label_373
	nop	dword ptr [rax]
.label_433:
	mov	esi, edx
	mov	r9, qword ptr [rsp + 0x28]
.label_437:
	cmp	r13, -1
	jne	.label_444
	cmp	sil, 0x2c
	jne	.label_445
	cmp	eax, 1
	mov	r13d, 0
	je	.label_448
	jmp	.label_445
	nop	word ptr [rax + rax]
.label_444:
	cmp	r13, -2
	je	.label_117
.label_448:
	cmp	bl, 0x18
	je	.label_452
	cmp	bl, 1
	jne	.label_117
	cmp	sil, 0x2c
	mov	rbx, qword ptr [rsp + 0x20]
	jne	.label_117
	mov	rdx, -1
	jmp	.label_258
.label_452:
	mov	r15, r13
	mov	rbx, qword ptr [rsp + 0x20]
	jmp	.label_459
.label_478:
	lea	rax, [r15 + r15*4]
	lea	rdx, [rcx + rax*2 - 0x30]
	cmp	rdx, 0x8000
	mov	eax, 0x8000
	cmovg	rdx, rax
	nop	word ptr cs:[rax + rax]
.label_258:
	mov	r15, rdx
	mov	rsi, r8
	mov	rdx, rbx
	call	peek_token
	mov	r9, qword ptr [rsp + 0x28]
	mov	rdi, qword ptr [rsp + 8]
	mov	r8, qword ptr [rsp + 0x10]
	cdqe	
	add	qword ptr [r8 + 0x48], rax
	movzx	ecx, byte ptr [rdi]
	movzx	eax, byte ptr [rdi + 8]
	cmp	al, 0x18
	je	.label_467
	cmp	al, 2
	je	.label_117
	cmp	cl, 0x2c
	je	.label_467
	cmp	cl, 0x30
	mov	rdx, -2
	jb	.label_258
	cmp	eax, 1
	jne	.label_258
	cmp	r15, -2
	je	.label_258
	cmp	cl, 0x39
	ja	.label_258
	cmp	r15, -1
	jne	.label_478
	add	rcx, -0x30
	mov	rdx, rcx
	jmp	.label_258
.label_467:
	cmp	r15, -2
	je	.label_117
.label_459:
	cmp	r15, -1
	sete	cl
	cmp	r13, r15
	setle	dl
	or	dl, cl
	cmp	dl, 1
	jne	.label_445
	cmp	eax, 0x18
	jne	.label_445
	cmp	r15, -1
	mov	rax, r15
	cmove	rax, r13
	cmp	rax, 0x8000
	jl	.label_488
	mov	dword ptr [r12], 0xf
	jmp	.label_153
	nop	dword ptr [rax]
.label_445:
	mov	dword ptr [r12], 0xa
	jmp	.label_153
.label_117:
	cmp	qword ptr [rsp + 0x60], 0
	je	.label_492
	mov	qword ptr [r8 + 0x48], r14
	movdqa	xmm0, xmmword ptr [rsp + 0xc0]
	movdqu	xmmword ptr [rdi], xmm0
	mov	byte ptr [rdi + 8], 1
	mov	rcx, r9
	jmp	.label_116
.label_544:
	mov	qword ptr [rsp + 0x40], r11
	mov	edi, 0x3c8
	call	malloc
	test	rax, rax
	je	.label_500
	mov	rbp, qword ptr [rsp + 0x18]
	mov	rcx, qword ptr [rbp + 0x70]
	mov	qword ptr [rax], rcx
	mov	qword ptr [rbp + 0x70], rax
	mov	dword ptr [rbp + 0x80], 0
	xor	ecx, ecx
	mov	r8, qword ptr [rsp + 0x10]
	mov	rdi, qword ptr [rsp + 8]
	mov	r9, qword ptr [rsp + 0x28]
	pxor	xmm1, xmm1
	lea	r10, [rsp + 0x70]
	mov	r11, qword ptr [rsp + 0x40]
	jmp	.label_501
.label_590:
	mov	qword ptr [rsp + 0x40], r11
	mov	r12, r15
	mov	r15, qword ptr [rsp + 0x30]
	jmp	.label_512
.label_596:
	mov	edi, 0x3c8
	mov	rbp, r11
	call	malloc
	mov	r11, rbp
	lea	r10, [rsp + 0x70]
	pxor	xmm1, xmm1
	mov	r9, qword ptr [rsp + 0x28]
	mov	rbp, qword ptr [rsp + 0x18]
	mov	rdi, qword ptr [rsp + 8]
	mov	r8, qword ptr [rsp + 0x10]
	test	rax, rax
	je	.label_128
	mov	rcx, qword ptr [rbp + 0x70]
	mov	qword ptr [rax], rcx
	mov	qword ptr [rbp + 0x70], rax
	mov	dword ptr [rbp + 0x80], 0
	xor	ecx, ecx
	jmp	.label_519
.label_500:
	mov	qword ptr [rsp + 0x70], 0
	jmp	.label_522
.label_582:
	mov	qword ptr [rbx], 0
	mov	r15, qword ptr [rsp + 0x30]
.label_522:
	xor	r12d, r12d
.label_512:
	mov	edi, 0x3c8
	call	malloc
	test	rax, rax
	mov	r8, qword ptr [rsp + 0x10]
	mov	rdi, qword ptr [rsp + 8]
	mov	rbp, qword ptr [rsp + 0x18]
	mov	r9, qword ptr [rsp + 0x28]
	pxor	xmm1, xmm1
	lea	r10, [rsp + 0x70]
	mov	r11, qword ptr [rsp + 0x40]
	je	.label_128
	mov	rcx, qword ptr [rbp + 0x70]
	mov	qword ptr [rax], rcx
	mov	qword ptr [rbp + 0x70], rax
	mov	dword ptr [rbp + 0x80], 0
	xor	ecx, ecx
	jmp	.label_536
	nop	dword ptr [rax + rax]
.label_429:
	mov	r13, qword ptr [r12]
	mov	ecx, dword ptr [rbp + 0x80]
	cmp	ecx, 0xf
	je	.label_544
	mov	rax, qword ptr [rbp + 0x70]
.label_501:
	lea	rdx, [r12 + 0x28]
	lea	esi, [rcx + 1]
	mov	dword ptr [rbp + 0x80], esi
	movsxd	rcx, ecx
	shl	rcx, 6
	movdqu	xmmword ptr [rax + rcx + 8], xmm1
	mov	qword ptr [rax + rcx + 0x18], 0
	movdqu	xmm0, xmmword ptr [rdx]
	movdqu	xmmword ptr [rax + rcx + 0x30], xmm0
	and	byte ptr [rax + rcx + 0x3a], 0xf3
	lea	r15, [rax + rcx + 8]
	movdqu	xmmword ptr [rax + rcx + 0x20], xmm1
	mov	qword ptr [rax + rcx + 0x40], -1
	mov	qword ptr [rsp + 0x70], r15
	mov	rcx, r15
	mov	rbx, r10
	jmp	.label_547
	nop	dword ptr [rax + rax]
.label_331:
	lea	rdx, [r12 + 0x28]
	lea	esi, [rcx + 1]
	mov	dword ptr [rbp + 0x80], esi
	movsxd	rsi, ecx
	shl	rsi, 6
	movdqu	xmmword ptr [rax + rsi + 8], xmm1
	mov	qword ptr [rax + rsi + 0x18], 0
	movdqu	xmm0, xmmword ptr [rdx]
	movdqu	xmmword ptr [rax + rsi + 0x30], xmm0
	and	byte ptr [rax + rsi + 0x3a], 0xf3
	lea	rcx, [rax + rsi + 8]
	movdqu	xmmword ptr [rax + rsi + 0x20], xmm1
	mov	qword ptr [rax + rsi + 0x40], -1
	mov	qword ptr [rbx], rcx
.label_547:
	mov	qword ptr [rcx], r13
	mov	rax, qword ptr [rbx]
	or	dword ptr [rax + 0x30], 0x40000
	mov	r13, qword ptr [rbx]
	mov	rax, qword ptr [r12 + 8]
	test	rax, rax
	je	.label_563
	lea	rbx, [r13 + 8]
	mov	r12, rax
	jmp	.label_566
	nop	dword ptr [rax]
.label_563:
	xor	eax, eax
	nop	word ptr cs:[rax + rax]
.label_573:
	mov	rcx, rax
	mov	rax, r12
	mov	r12, qword ptr [rax + 0x10]
	cmp	r12, rcx
	je	.label_262
	test	r12, r12
	jne	.label_571
.label_262:
	mov	r12, qword ptr [rax]
	mov	r13, qword ptr [r13]
	test	r12, r12
	jne	.label_573
	jmp	.label_575
.label_571:
	lea	rbx, [r13 + 0x10]
.label_566:
	mov	ecx, dword ptr [rbp + 0x80]
	cmp	ecx, 0xf
	je	.label_576
	mov	rax, qword ptr [rbp + 0x70]
	jmp	.label_331
.label_576:
	mov	qword ptr [rsp + 0x40], r11
	mov	edi, 0x3c8
	call	malloc
	test	rax, rax
	je	.label_582
	mov	rbp, qword ptr [rsp + 0x18]
	mov	rcx, qword ptr [rbp + 0x70]
	mov	qword ptr [rax], rcx
	mov	qword ptr [rbp + 0x70], rax
	mov	dword ptr [rbp + 0x80], 0
	xor	ecx, ecx
	mov	r8, qword ptr [rsp + 0x10]
	mov	rdi, qword ptr [rsp + 8]
	mov	r9, qword ptr [rsp + 0x28]
	pxor	xmm1, xmm1
	lea	r10, [rsp + 0x70]
	mov	r11, qword ptr [rsp + 0x40]
	jmp	.label_331
.label_575:
	mov	ecx, dword ptr [rbp + 0x80]
	cmp	ecx, 0xf
	je	.label_590
	mov	rax, qword ptr [rbp + 0x70]
	mov	r12, r15
	mov	r15, qword ptr [rsp + 0x30]
.label_536:
	lea	edx, [rcx + 1]
	mov	dword ptr [rbp + 0x80], edx
	movsxd	rcx, ecx
	shl	rcx, 6
	lea	rbx, [rax + rcx + 8]
	mov	qword ptr [rax + rcx + 8], 0
	mov	qword ptr [rax + rcx + 0x10], r14
	mov	qword ptr [rax + rcx + 0x18], r12
	mov	dword ptr [rax + rcx + 0x38], 0x10
	movdqu	xmmword ptr [rax + rcx + 0x20], xmm1
	mov	qword ptr [rax + rcx + 0x40], -1
	mov	qword ptr [r14], rbx
	test	r12, r12
	je	.label_128
	mov	qword ptr [r12], rbx
	mov	ecx, dword ptr [rbp + 0x80]
	cmp	ecx, 0xf
	je	.label_596
	mov	rax, qword ptr [rbp + 0x70]
.label_519:
	lea	edx, [rcx + 1]
	mov	dword ptr [rbp + 0x80], edx
	movsxd	rcx, ecx
	shl	rcx, 6
	lea	r14, [rax + rcx + 8]
	mov	qword ptr [rax + rcx + 8], 0
	mov	qword ptr [rax + rcx + 0x10], rbx
	mov	qword ptr [rax + rcx + 0x18], 0
	mov	dword ptr [rax + rcx + 0x38], 0xa
	movdqu	xmmword ptr [rax + rcx + 0x20], xmm1
	mov	qword ptr [rax + rcx + 0x40], -1
	mov	qword ptr [rbx], r14
	cmp	r11, r15
	lea	r11, [r11 + 1]
	jl	.label_429
.label_427:
	mov	rbx, qword ptr [rsp + 0x38]
	test	rbx, rbx
	je	.label_605
	mov	ecx, dword ptr [rbp + 0x80]
	cmp	ecx, 0xf
	mov	r12, qword ptr [rsp + 0x48]
	je	.label_606
	mov	rax, qword ptr [rbp + 0x70]
.label_145:
	lea	edx, [rcx + 1]
	mov	dword ptr [rbp + 0x80], edx
	movsxd	rcx, ecx
	shl	rcx, 6
	lea	rdx, [rax + rcx + 8]
	mov	qword ptr [rax + rcx + 8], 0
	mov	qword ptr [rax + rcx + 0x10], rbx
	mov	qword ptr [rax + rcx + 0x18], r14
	mov	dword ptr [rax + rcx + 0x38], 0x10
	movdqu	xmmword ptr [rax + rcx + 0x20], xmm1
	mov	qword ptr [rax + rcx + 0x40], -1
	mov	qword ptr [rbx], rdx
	mov	qword ptr [r14], rdx
	mov	r14, rdx
	jmp	.label_504
.label_605:
	mov	r12, qword ptr [rsp + 0x48]
.label_504:
	mov	rbx, qword ptr [rsp + 0x20]
	xor	eax, eax
	mov	rcx, r14
	jmp	.label_322
.label_390:
	mov	rax, r9
	nop	word ptr cs:[rax + rax]
.label_104:
	mov	rbx, rax
	mov	rax, qword ptr [rbx + 8]
	test	rax, rax
	jne	.label_104
	mov	rax, qword ptr [rbx + 0x10]
	test	rax, rax
	jne	.label_104
.label_119:
	mov	eax, dword ptr [rbx + 0x30]
	mov	ecx, 0x400ff
	and	eax, ecx
	cmp	eax, 3
	je	.label_106
	cmp	eax, 6
	jne	.label_107
	mov	rbp, qword ptr [rbx + 0x28]
	mov	rdi, qword ptr [rbp]
	call	free
	mov	rdi, qword ptr [rbp + 8]
	call	free
	mov	rdi, qword ptr [rbp + 0x10]
	call	free
	mov	rdi, qword ptr [rbp + 0x18]
	call	free
	mov	rdi, rbp
	jmp	.label_183
.label_106:
	mov	rdi, qword ptr [rbx + 0x28]
.label_183:
	call	free
	mov	r9, qword ptr [rsp + 0x28]
	mov	r8, qword ptr [rsp + 0x10]
.label_107:
	mov	rdx, qword ptr [rbx]
	test	rdx, rdx
	mov	ecx, 0
	je	.label_116
	mov	rax, qword ptr [rdx + 0x10]
	cmp	rax, rbx
	mov	rbx, rdx
	je	.label_119
	test	rax, rax
	mov	rbx, rdx
	je	.label_119
	jmp	.label_104
.label_392:
	cmp	r11, 1
	mov	rax, r9
	mov	qword ptr [rsp + 0x38], rax
	mov	r12, r9
	je	.label_232
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp + 0x38], rax
	mov	r12, r9
	mov	r14d, 2
	mov	rax, r9
	mov	qword ptr [rsp + 0x30], r15
	jmp	.label_120
.label_415:
	mov	edi, 0x3c8
	call	malloc
	mov	r11, r13
	lea	r10, [rsp + 0x70]
	pxor	xmm1, xmm1
	mov	r9, qword ptr [rsp + 0x28]
	mov	rbp, qword ptr [rsp + 0x18]
	mov	rdi, qword ptr [rsp + 8]
	mov	r8, qword ptr [rsp + 0x10]
	test	rax, rax
	je	.label_128
	mov	rcx, qword ptr [rbp + 0x70]
	mov	qword ptr [rax], rcx
	mov	qword ptr [rbp + 0x70], rax
	mov	dword ptr [rbp + 0x80], 0
	xor	ecx, ecx
	jmp	.label_132
.label_606:
	mov	edi, 0x3c8
	call	malloc
	pxor	xmm1, xmm1
	mov	r9, qword ptr [rsp + 0x28]
	mov	rbp, qword ptr [rsp + 0x18]
	mov	r8, qword ptr [rsp + 0x10]
	test	rax, rax
	mov	ecx, 0
	je	.label_116
	mov	rcx, qword ptr [rbp + 0x70]
	mov	qword ptr [rax], rcx
	mov	qword ptr [rbp + 0x70], rax
	mov	dword ptr [rbp + 0x80], 0
	xor	ecx, ecx
	mov	rdi, qword ptr [rsp + 8]
	jmp	.label_145
.label_492:
	xor	ecx, ecx
	cmp	al, 2
	setne	cl
	add	ecx, 9
	mov	dword ptr [r12], ecx
	jmp	.label_153
.label_182:
	mov	edi, 0x3c8
	call	malloc
	test	rax, rax
	je	.label_158
	mov	rbp, qword ptr [rsp + 0x18]
	mov	rcx, qword ptr [rbp + 0x70]
	mov	qword ptr [rax], rcx
	mov	qword ptr [rbp + 0x70], rax
	mov	dword ptr [rbp + 0x80], 0
	xor	ecx, ecx
	mov	r8, qword ptr [rsp + 0x10]
	mov	rdi, qword ptr [rsp + 8]
	mov	r9, qword ptr [rsp + 0x28]
	pxor	xmm1, xmm1
	lea	r10, [rsp + 0x70]
	mov	r11, r13
	jmp	.label_160
.label_229:
	mov	r12, rbx
	jmp	.label_165
.label_158:
	mov	qword ptr [rsp + 0x70], 0
	jmp	.label_171
.label_224:
	mov	qword ptr [r15], 0
.label_171:
	xor	r12d, r12d
.label_165:
	mov	edi, 0x3c8
	call	malloc
	test	rax, rax
	mov	r8, qword ptr [rsp + 0x10]
	mov	rdi, qword ptr [rsp + 8]
	mov	rbp, qword ptr [rsp + 0x18]
	mov	r9, qword ptr [rsp + 0x28]
	pxor	xmm1, xmm1
	lea	r10, [rsp + 0x70]
	mov	r11, r13
	mov	r15, qword ptr [rsp + 0x30]
	je	.label_128
	mov	rcx, qword ptr [rbp + 0x70]
	mov	qword ptr [rax], rcx
	mov	qword ptr [rbp + 0x70], rax
	mov	dword ptr [rbp + 0x80], 0
	xor	ecx, ecx
	jmp	.label_180
.label_120:
	mov	ecx, dword ptr [rbp + 0x80]
	cmp	ecx, 0xf
	mov	qword ptr [rsp + 0x40], rax
	je	.label_182
	mov	rax, qword ptr [rbp + 0x70]
.label_160:
	lea	rdx, [r12 + 0x28]
	lea	esi, [rcx + 1]
	mov	dword ptr [rbp + 0x80], esi
	movsxd	rcx, ecx
	shl	rcx, 6
	movdqu	xmmword ptr [rax + rcx + 8], xmm1
	mov	qword ptr [rax + rcx + 0x18], 0
	movdqu	xmm0, xmmword ptr [rdx]
	movdqu	xmmword ptr [rax + rcx + 0x30], xmm0
	and	byte ptr [rax + rcx + 0x3a], 0xf3
	lea	rbx, [rax + rcx + 8]
	movdqu	xmmword ptr [rax + rcx + 0x20], xmm1
	mov	qword ptr [rax + rcx + 0x40], -1
	mov	qword ptr [rsp + 0x70], rbx
	mov	rcx, rbx
	mov	r15, r10
	jmp	.label_184
.label_218:
	lea	rdx, [r12 + 0x28]
	lea	esi, [rcx + 1]
	mov	dword ptr [rbp + 0x80], esi
	movsxd	rsi, ecx
	shl	rsi, 6
	movdqu	xmmword ptr [rax + rsi + 8], xmm1
	mov	qword ptr [rax + rsi + 0x18], 0
	movdqu	xmm0, xmmword ptr [rdx]
	movdqu	xmmword ptr [rax + rsi + 0x30], xmm0
	and	byte ptr [rax + rsi + 0x3a], 0xf3
	lea	rcx, [rax + rsi + 8]
	movdqu	xmmword ptr [rax + rsi + 0x20], xmm1
	mov	qword ptr [rax + rsi + 0x40], -1
	mov	qword ptr [r15], rcx
.label_184:
	mov	rax, qword ptr [rsp + 0x38]
	mov	qword ptr [rcx], rax
	mov	rax, qword ptr [r15]
	or	dword ptr [rax + 0x30], 0x40000
	mov	rcx, qword ptr [r15]
	mov	rax, qword ptr [r12 + 8]
	test	rax, rax
	mov	qword ptr [rsp + 0x38], rcx
	je	.label_201
	lea	r15, [rcx + 8]
	mov	r12, rax
	jmp	.label_204
.label_201:
	xor	eax, eax
	mov	r15, qword ptr [rsp + 0x30]
	nop	word ptr [rax + rax]
.label_210:
	mov	rcx, rax
	mov	rax, r12
	mov	r12, qword ptr [rax + 0x10]
	cmp	r12, rcx
	je	.label_205
	test	r12, r12
	jne	.label_208
.label_205:
	mov	r12, qword ptr [rax]
	mov	rcx, qword ptr [rsp + 0x38]
	mov	rcx, qword ptr [rcx]
	mov	qword ptr [rsp + 0x38], rcx
	test	r12, r12
	jne	.label_210
	jmp	.label_213
.label_208:
	mov	rax, qword ptr [rsp + 0x38]
	lea	r15, [rax + 0x10]
.label_204:
	mov	ecx, dword ptr [rbp + 0x80]
	cmp	ecx, 0xf
	je	.label_215
	mov	rax, qword ptr [rbp + 0x70]
	jmp	.label_218
.label_215:
	mov	edi, 0x3c8
	call	malloc
	test	rax, rax
	je	.label_224
	mov	rbp, qword ptr [rsp + 0x18]
	mov	rcx, qword ptr [rbp + 0x70]
	mov	qword ptr [rax], rcx
	mov	qword ptr [rbp + 0x70], rax
	mov	dword ptr [rbp + 0x80], 0
	xor	ecx, ecx
	mov	r8, qword ptr [rsp + 0x10]
	mov	rdi, qword ptr [rsp + 8]
	mov	r9, qword ptr [rsp + 0x28]
	pxor	xmm1, xmm1
	lea	r10, [rsp + 0x70]
	mov	r11, r13
	jmp	.label_218
.label_213:
	mov	ecx, dword ptr [rbp + 0x80]
	cmp	ecx, 0xf
	je	.label_229
	mov	rax, qword ptr [rbp + 0x70]
	mov	r12, rbx
.label_180:
	mov	rbx, qword ptr [rsp + 0x40]
	lea	edx, [rcx + 1]
	mov	dword ptr [rbp + 0x80], edx
	movsxd	rcx, ecx
	shl	rcx, 6
	lea	rdx, [rax + rcx + 8]
	mov	qword ptr [rax + rcx + 8], 0
	mov	qword ptr [rax + rcx + 0x10], rbx
	mov	qword ptr [rax + rcx + 0x18], r12
	mov	dword ptr [rax + rcx + 0x38], 0x10
	movdqu	xmmword ptr [rax + rcx + 0x20], xmm1
	mov	qword ptr [rax + rcx + 0x40], -1
	test	rbx, rbx
	je	.label_234
	mov	qword ptr [rbx], rdx
.label_234:
	mov	qword ptr [rsp + 0x38], rdx
	test	r12, r12
	je	.label_128
	mov	rax, qword ptr [rsp + 0x38]
	mov	qword ptr [r12], rax
	cmp	r14, r11
	lea	r14, [r14 + 1]
	jl	.label_120
.label_232:
	cmp	r11, r15
	jne	.label_248
	mov	rcx, qword ptr [rsp + 0x38]
	mov	r12, qword ptr [rsp + 0x48]
	jmp	.label_116
.label_248:
	mov	r14, qword ptr [r12]
	mov	ecx, dword ptr [rbp + 0x80]
	cmp	ecx, 0xf
	mov	qword ptr [rsp + 0x30], r15
	je	.label_251
	mov	rax, qword ptr [rbp + 0x70]
.label_307:
	lea	rdx, [r12 + 0x28]
	mov	rbx, r12
	lea	esi, [rcx + 1]
	mov	dword ptr [rbp + 0x80], esi
	movsxd	rcx, ecx
	shl	rcx, 6
	movdqu	xmmword ptr [rax + rcx + 8], xmm1
	mov	qword ptr [rax + rcx + 0x18], 0
	movdqu	xmm0, xmmword ptr [rdx]
	movdqu	xmmword ptr [rax + rcx + 0x30], xmm0
	and	byte ptr [rax + rcx + 0x3a], 0xf3
	lea	r12, [rax + rcx + 8]
	movdqu	xmmword ptr [rax + rcx + 0x20], xmm1
	mov	qword ptr [rax + rcx + 0x40], -1
	mov	qword ptr [rsp + 0x70], r12
	mov	rcx, r12
	mov	r15, r10
	jmp	.label_256
.label_297:
	lea	rdx, [rbx + 0x28]
	lea	esi, [rcx + 1]
	mov	dword ptr [rbp + 0x80], esi
	movsxd	rsi, ecx
	shl	rsi, 6
	movdqu	xmmword ptr [rax + rsi + 8], xmm1
	mov	qword ptr [rax + rsi + 0x18], 0
	movdqu	xmm0, xmmword ptr [rdx]
	movdqu	xmmword ptr [rax + rsi + 0x30], xmm0
	and	byte ptr [rax + rsi + 0x3a], 0xf3
	lea	rcx, [rax + rsi + 8]
	movdqu	xmmword ptr [rax + rsi + 0x20], xmm1
	mov	qword ptr [rax + rsi + 0x40], -1
	mov	qword ptr [r15], rcx
.label_256:
	mov	qword ptr [rcx], r14
	mov	rax, qword ptr [r15]
	or	dword ptr [rax + 0x30], 0x40000
	mov	r14, qword ptr [r15]
	mov	rax, qword ptr [rbx + 8]
	test	rax, rax
	je	.label_277
	lea	r15, [r14 + 8]
	mov	rbx, rax
	jmp	.label_283
.label_277:
	xor	eax, eax
	mov	r15, qword ptr [rsp + 0x30]
.label_288:
	mov	rcx, rax
	mov	rax, rbx
	mov	rbx, qword ptr [rax + 0x10]
	cmp	rbx, rcx
	je	.label_286
	test	rbx, rbx
	jne	.label_287
.label_286:
	mov	rbx, qword ptr [rax]
	mov	r14, qword ptr [r14]
	test	rbx, rbx
	jne	.label_288
	jmp	.label_292
.label_287:
	lea	r15, [r14 + 0x10]
.label_283:
	mov	ecx, dword ptr [rbp + 0x80]
	cmp	ecx, 0xf
	je	.label_294
	mov	rax, qword ptr [rbp + 0x70]
	jmp	.label_297
.label_294:
	mov	edi, 0x3c8
	call	malloc
	test	rax, rax
	je	.label_299
	mov	rbp, qword ptr [rsp + 0x18]
	mov	rcx, qword ptr [rbp + 0x70]
	mov	qword ptr [rax], rcx
	mov	qword ptr [rbp + 0x70], rax
	mov	dword ptr [rbp + 0x80], 0
	xor	ecx, ecx
	mov	r8, qword ptr [rsp + 0x10]
	mov	rdi, qword ptr [rsp + 8]
	mov	r9, qword ptr [rsp + 0x28]
	pxor	xmm1, xmm1
	lea	r10, [rsp + 0x70]
	mov	r11, r13
	jmp	.label_297
.label_251:
	mov	edi, 0x3c8
	call	malloc
	test	rax, rax
	je	.label_306
	mov	rbp, qword ptr [rsp + 0x18]
	mov	rcx, qword ptr [rbp + 0x70]
	mov	qword ptr [rax], rcx
	mov	qword ptr [rbp + 0x70], rax
	mov	dword ptr [rbp + 0x80], 0
	xor	ecx, ecx
	mov	r8, qword ptr [rsp + 0x10]
	mov	rdi, qword ptr [rsp + 8]
	mov	r9, qword ptr [rsp + 0x28]
	pxor	xmm1, xmm1
	lea	r10, [rsp + 0x70]
	mov	r11, r13
	jmp	.label_307
.label_306:
	mov	qword ptr [rsp + 0x70], 0
	jmp	.label_314
.label_299:
	mov	qword ptr [r15], 0
.label_314:
	mov	r8, qword ptr [rsp + 0x10]
	mov	r9, qword ptr [rsp + 0x28]
.label_128:
	mov	r12, qword ptr [rsp + 0x48]
	mov	dword ptr [r12], 0xc
.label_153:
	xor	ecx, ecx
.label_116:
	test	rcx, rcx
	sete	al
	jne	.label_321
	mov	edx, dword ptr [r12]
	test	edx, edx
	mov	rbx, qword ptr [rsp + 0x20]
	mov	rdi, qword ptr [rsp + 8]
	je	.label_322
	jmp	.label_324
	nop	word ptr cs:[rax + rax]
.label_321:
	mov	rbx, qword ptr [rsp + 0x20]
	mov	rdi, qword ptr [rsp + 8]
.label_322:
	cmp	qword ptr [rsp + 0x68], 0
	mov	r15, rcx
	je	.label_327
	mov	dl, byte ptr [rdi + 8]
	cmp	dl, 0x17
	je	.label_328
	cmp	dl, 0xb
	mov	r15, rcx
	jne	.label_327
.label_328:
	test	al, al
	jne	.label_329
	mov	r14d, 0x400ff
	nop	dword ptr [rax + rax]
.label_332:
	mov	rbp, rcx
	mov	rcx, qword ptr [rbp + 8]
	test	rcx, rcx
	jne	.label_332
	mov	rcx, qword ptr [rbp + 0x10]
	test	rcx, rcx
	jne	.label_332
	nop	word ptr cs:[rax + rax]
.label_344:
	mov	eax, dword ptr [rbp + 0x30]
	and	eax, r14d
	cmp	eax, 3
	je	.label_335
	cmp	eax, 6
	jne	.label_339
	mov	rbx, qword ptr [rbp + 0x28]
	mov	rdi, qword ptr [rbx]
	call	free
	mov	rdi, qword ptr [rbx + 8]
	call	free
	mov	rdi, qword ptr [rbx + 0x10]
	call	free
	mov	rdi, qword ptr [rbx + 0x18]
	call	free
	mov	rdi, rbx
	jmp	.label_341
	nop	dword ptr [rax]
.label_335:
	mov	rdi, qword ptr [rbp + 0x28]
.label_341:
	call	free
.label_339:
	mov	rax, qword ptr [rbp]
	test	rax, rax
	je	.label_329
	mov	rcx, qword ptr [rax + 0x10]
	cmp	rcx, rbp
	mov	rbp, rax
	je	.label_344
	test	rcx, rcx
	mov	rbp, rax
	je	.label_344
	jmp	.label_332
.label_329:
	mov	dword ptr [r12], 0xd
.label_351:
	xor	r15d, r15d
.label_365:
	mov	rax, r15
	add	rsp, 0xe8
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_561:
	mov	dword ptr [r10], 5
	mov	r15, rdi
	sub	r15, -0x80
	mov	r14d, dword ptr [rdi + 0x80]
	cmp	r14d, 0xf
	je	.label_502
	mov	rax, qword ptr [rdi + 0x70]
.label_554:
	lea	ecx, [r14 + 1]
	mov	dword ptr [r15], ecx
	movsxd	rcx, r14d
	shl	rcx, 6
	pxor	xmm0, xmm0
	movdqu	xmmword ptr [rax + rcx + 8], xmm0
	mov	qword ptr [rax + rcx + 0x18], 0
	movdqu	xmm1, xmmword ptr [r10]
	movdqu	xmmword ptr [rax + rcx + 0x30], xmm1
	and	byte ptr [rax + rcx + 0x3a], 0xf3
	lea	r14, [rax + rcx + 8]
	movdqu	xmmword ptr [rax + rcx + 0x20], xmm0
	mov	qword ptr [rax + rcx + 0x40], -1
	mov	ecx, 0xa
.label_567:
	mov	dword ptr [r10], ecx
	mov	ebp, dword ptr [r15]
	cmp	ebp, 0xf
	je	.label_357
	mov	rax, qword ptr [rdi + 0x70]
.label_511:
	lea	ecx, [rbp + 1]
	mov	dword ptr [r15], ecx
	movsxd	rcx, ebp
	shl	rcx, 6
	lea	rbp, [rax + rcx + 8]
	pxor	xmm0, xmm0
	movdqu	xmmword ptr [rax + rcx + 8], xmm0
	mov	qword ptr [rax + rcx + 0x18], 0
	movdqu	xmm1, xmmword ptr [r10]
	movdqu	xmmword ptr [rax + rcx + 0x30], xmm1
	and	byte ptr [rax + rcx + 0x3a], 0xf3
	movdqu	xmmword ptr [rax + rcx + 0x20], xmm0
	mov	qword ptr [rax + rcx + 0x40], -1
.label_505:
	mov	ecx, dword ptr [r15]
	cmp	ecx, 0xf
	je	.label_361
	mov	rax, qword ptr [rdi + 0x70]
.label_514:
	lea	edx, [rcx + 1]
	mov	dword ptr [r15], edx
	movsxd	rcx, ecx
	shl	rcx, 6
	lea	r15, [rax + rcx + 8]
	mov	qword ptr [rax + rcx + 8], 0
	mov	qword ptr [rax + rcx + 0x10], r14
	mov	qword ptr [rax + rcx + 0x18], rbp
	mov	dword ptr [rax + rcx + 0x38], 0xa
	pxor	xmm0, xmm0
	movdqu	xmmword ptr [rax + rcx + 0x20], xmm0
	mov	qword ptr [rax + rcx + 0x40], -1
	test	r14, r14
	je	.label_364
	mov	qword ptr [r14], r15
.label_364:
	test	rbp, rbp
	je	.label_376
	mov	qword ptr [rbp], r15
	test	r14, r14
	jne	.label_202
	jmp	.label_376
.label_562:
	mov	ecx, dword ptr [rdi + 0x80]
	cmp	ecx, 0xf
	je	.label_212
	mov	rax, qword ptr [rdi + 0x70]
.label_560:
	lea	edx, [rcx + 1]
	mov	dword ptr [rdi + 0x80], edx
	movsxd	rcx, ecx
	shl	rcx, 6
	lea	r15, [rax + rcx + 8]
	pxor	xmm0, xmm0
	movdqu	xmmword ptr [rax + rcx + 8], xmm0
	mov	qword ptr [rax + rcx + 0x18], 0
	movdqu	xmm1, xmmword ptr [r10]
	movdqu	xmmword ptr [rax + rcx + 0x30], xmm1
	and	byte ptr [rax + rcx + 0x3a], 0xf3
	movdqu	xmmword ptr [rax + rcx + 0x20], xmm0
	mov	qword ptr [rax + rcx + 0x40], -1
.label_202:
	mov	rdi, r10
	mov	rsi, r8
	mov	rdx, rbx
	mov	rbx, r8
	call	peek_token
	cdqe	
	add	qword ptr [rbx + 0x48], rax
	jmp	.label_365
.label_425:
	mov	rbp, r14
	jmp	.label_353
.label_324:
	xor	r15d, r15d
	test	r9, r9
	je	.label_365
	mov	r14d, 0x400ff
	xor	r15d, r15d
	nop	word ptr cs:[rax + rax]
.label_406:
	mov	rbx, r9
	mov	r9, qword ptr [rbx + 8]
	test	r9, r9
	jne	.label_406
	mov	r9, qword ptr [rbx + 0x10]
	test	r9, r9
	jne	.label_406
.label_420:
	mov	eax, dword ptr [rbx + 0x30]
	and	eax, r14d
	cmp	eax, 3
	je	.label_407
	cmp	eax, 6
	jne	.label_410
	mov	rbp, qword ptr [rbx + 0x28]
	mov	rdi, qword ptr [rbp]
	call	free
	mov	rdi, qword ptr [rbp + 8]
	call	free
	mov	rdi, qword ptr [rbp + 0x10]
	call	free
	mov	rdi, qword ptr [rbp + 0x18]
	call	free
	mov	rdi, rbp
	jmp	.label_417
.label_407:
	mov	rdi, qword ptr [rbx + 0x28]
.label_417:
	call	free
.label_410:
	mov	rax, qword ptr [rbx]
	test	rax, rax
	je	.label_365
	mov	r9, qword ptr [rax + 0x10]
	cmp	r9, rbx
	mov	rbx, rax
	je	.label_420
	test	r9, r9
	mov	rbx, rax
	je	.label_420
	jmp	.label_406
.label_447:
	mov	rdi, r14
	call	free
	mov	r10, qword ptr [rsp + 8]
	mov	rbp, r15
	mov	r8, qword ptr [rsp + 0x10]
	jmp	.label_353
.label_122:
	mov	dword ptr [r12], eax
	jmp	.label_222
.label_118:
	mov	dword ptr [r12], 7
	jmp	.label_222
.label_356:
	mov	edi, 0x3c8
	call	malloc
	test	rax, rax
	je	.label_376
	mov	rdi, qword ptr [rsp + 0x18]
	mov	rcx, qword ptr [rdi + 0x70]
	mov	qword ptr [rax], rcx
	mov	qword ptr [rdi + 0x70], rax
	mov	dword ptr [rdi + 0x80], 0
	xor	ecx, ecx
	mov	rbx, qword ptr [rsp + 0x20]
	mov	r8, qword ptr [rsp + 0x10]
	mov	r10, qword ptr [rsp + 8]
	jmp	.label_431
.label_101:
	mov	dword ptr [r12], 2
	jmp	.label_222
.label_411:
	mov	edi, 0x3c8
	call	malloc
	test	rax, rax
	je	.label_376
	mov	rdi, qword ptr [rsp + 0x18]
	mov	rcx, qword ptr [rdi + 0x70]
	mov	qword ptr [rax], rcx
	mov	qword ptr [rdi + 0x70], rax
	mov	dword ptr [rdi + 0x80], 0
	xor	ecx, ecx
	mov	rbx, qword ptr [rsp + 0x20]
	mov	r8, qword ptr [rsp + 0x10]
	mov	r10, qword ptr [rsp + 8]
	jmp	.label_435
.label_477:
	mov	dword ptr [r12], 6
	jmp	.label_351
.label_498:
	mov	edi, 0x3c8
	call	malloc
	test	rax, rax
	je	.label_376
	mov	rdi, qword ptr [rsp + 0x18]
	mov	rcx, qword ptr [rdi + 0x70]
	mov	qword ptr [rax], rcx
	mov	qword ptr [rdi + 0x70], rax
	mov	dword ptr [rdi + 0x80], 0
	xor	ecx, ecx
	mov	rbx, qword ptr [rsp + 0x20]
	mov	r8, qword ptr [rsp + 0x10]
	mov	r10, qword ptr [rsp + 8]
	jmp	.label_443
.label_600:
	mov	rdi, r14
	call	free
	mov	rdi, r15
	call	free
	jmp	.label_376
.label_484:
	mov	edi, 0x3c8
	call	malloc
	test	rax, rax
	je	.label_376
	mov	rdi, qword ptr [rsp + 0x18]
	mov	rcx, qword ptr [rdi + 0x70]
	mov	qword ptr [rax], rcx
	mov	qword ptr [rdi + 0x70], rax
	mov	dword ptr [rdi + 0x80], 0
	xor	ecx, ecx
	mov	rbx, qword ptr [rsp + 0x20]
	mov	r8, qword ptr [rsp + 0x10]
	mov	r10, qword ptr [rsp + 8]
	jmp	.label_456
.label_330:
	mov	edi, 0x3c8
	call	malloc
	test	rax, rax
	je	.label_186
	mov	r9, qword ptr [rsp + 0x18]
	mov	rcx, qword ptr [r9 + 0x70]
	mov	qword ptr [rax], rcx
	mov	qword ptr [r9 + 0x70], rax
	mov	dword ptr [r9 + 0x80], 0
	xor	ecx, ecx
	mov	rbx, qword ptr [rsp + 0x20]
	mov	r10, qword ptr [rsp + 8]
	jmp	.label_466
.label_345:
	mov	edi, 0x3c8
	call	malloc
	mov	rbp, rax
	test	rbp, rbp
	je	.label_186
	mov	r9, qword ptr [rsp + 0x18]
	mov	rax, qword ptr [r9 + 0x70]
	mov	qword ptr [rbp], rax
	mov	qword ptr [r9 + 0x70], rbp
	mov	dword ptr [r9 + 0x80], 0
	xor	eax, eax
	mov	r8, qword ptr [rsp + 0x10]
	mov	r10, qword ptr [rsp + 8]
	jmp	.label_475
.label_346:
	mov	edi, 0x3c8
	call	malloc
	test	rax, rax
	je	.label_186
	mov	r9, qword ptr [rsp + 0x18]
	mov	rcx, qword ptr [r9 + 0x70]
	mov	qword ptr [rax], rcx
	mov	qword ptr [r9 + 0x70], rax
	mov	dword ptr [r9 + 0x80], 0
	xor	ecx, ecx
	mov	r8, qword ptr [rsp + 0x10]
	mov	r10, qword ptr [rsp + 8]
	jmp	.label_489
.label_282:
	mov	dword ptr [r12], 3
	jmp	.label_222
.label_538:
	mov	rbp, rdi
	mov	edi, 0x3c8
	call	malloc
	test	rax, rax
	je	.label_376
	mov	rsi, qword ptr [rsp + 0x18]
	mov	rcx, qword ptr [rsi + 0x70]
	mov	qword ptr [rax], rcx
	mov	qword ptr [rsi + 0x70], rax
	mov	dword ptr [rsi + 0x80], 0
	xor	ecx, ecx
	mov	rbx, qword ptr [rsp + 0x20]
	mov	r8, qword ptr [rsp + 0x10]
	mov	r10, qword ptr [rsp + 8]
	mov	rdi, rbp
	jmp	.label_496
.label_357:
	mov	edi, 0x3c8
	call	malloc
	mov	rdi, qword ptr [rsp + 0x18]
	mov	r10, qword ptr [rsp + 8]
	mov	r8, qword ptr [rsp + 0x10]
	xor	ebp, ebp
	test	rax, rax
	je	.label_505
	mov	rcx, qword ptr [rdi + 0x70]
	mov	qword ptr [rax], rcx
	mov	qword ptr [rdi + 0x70], rax
	mov	dword ptr [r15], 0
	jmp	.label_511
.label_361:
	mov	edi, 0x3c8
	call	malloc
	mov	r10, qword ptr [rsp + 8]
	mov	r8, qword ptr [rsp + 0x10]
	test	rax, rax
	je	.label_376
	mov	rdx, qword ptr [rsp + 0x18]
	mov	rcx, qword ptr [rdx + 0x70]
	mov	qword ptr [rax], rcx
	mov	qword ptr [rdx + 0x70], rax
	mov	dword ptr [r15], 0
	xor	ecx, ecx
	jmp	.label_514
.label_227:
	mov	dword ptr [r12], 7
	jmp	.label_222
.label_553:
	call	__ctype_b_loc
	mov	rdi, qword ptr [rsp + 0x18]
	mov	r10, qword ptr [rsp + 8]
	mov	r8, qword ptr [rsp + 0x10]
	mov	r9, qword ptr [rax]
	inc	r14
.label_541:
	mov	rsi, r14
	xor	eax, eax
.label_537:
	test	byte ptr [r9 + rsi*2 - 2], 8
	je	.label_525
	mov	edx, 1
	mov	ecx, eax
	shl	rdx, cl
	or	qword ptr [rdi + rbp*8 + 0xb8], rdx
.label_525:
	cmp	esi, 0x5f
	je	.label_531
	movzx	ecx, word ptr [r9 + rsi*2]
	and	ecx, 8
	test	cx, cx
	je	.label_533
.label_531:
	lea	ecx, [rax + 1]
	mov	edx, 1
	shl	rdx, cl
	or	qword ptr [rdi + rbp*8 + 0xb8], rdx
.label_533:
	add	rax, 2
	add	rsi, 2
	cmp	rax, 0x40
	jne	.label_537
	inc	rbp
	add	r14, 0x40
	cmp	ebp, 4
	jne	.label_541
	jmp	.label_543
.label_565:
	mov	edi, 0x3c8
	call	malloc
	mov	ecx, 9
	xor	r14d, r14d
	test	rax, rax
	je	.label_545
	mov	rdi, qword ptr [rsp + 0x18]
	mov	rcx, qword ptr [rdi + 0x70]
	mov	qword ptr [rax], rcx
	mov	qword ptr [rdi + 0x70], rax
	mov	dword ptr [rdi + 0x80], 0
	mov	rbx, qword ptr [rsp + 0x20]
	mov	r8, qword ptr [rsp + 0x10]
	mov	r10, qword ptr [rsp + 8]
	jmp	.label_548
.label_502:
	mov	edi, 0x3c8
	call	malloc
	mov	ecx, 0xa
	xor	r14d, r14d
	test	rax, rax
	je	.label_545
	mov	rdi, qword ptr [rsp + 0x18]
	mov	rcx, qword ptr [rdi + 0x70]
	mov	qword ptr [rax], rcx
	mov	qword ptr [rdi + 0x70], rax
	mov	dword ptr [rdi + 0x80], 0
	mov	rbx, qword ptr [rsp + 0x20]
	mov	r8, qword ptr [rsp + 0x10]
	mov	r10, qword ptr [rsp + 8]
	jmp	.label_554
.label_212:
	mov	edi, 0x3c8
	call	malloc
	test	rax, rax
	je	.label_376
	mov	rdi, qword ptr [rsp + 0x18]
	mov	rcx, qword ptr [rdi + 0x70]
	mov	qword ptr [rax], rcx
	mov	qword ptr [rdi + 0x70], rax
	mov	dword ptr [rdi + 0x80], 0
	xor	ecx, ecx
	mov	rbx, qword ptr [rsp + 0x20]
	mov	r8, qword ptr [rsp + 0x10]
	mov	r10, qword ptr [rsp + 8]
	jmp	.label_560
.label_376:
	mov	dword ptr [r12], 0xc
	jmp	.label_351
.label_230:
	mov	dword ptr [r12], 7
	jmp	.label_185
.label_545:
	mov	rbx, qword ptr [rsp + 0x20]
	mov	r8, qword ptr [rsp + 0x10]
	mov	r10, qword ptr [rsp + 8]
	mov	rdi, qword ptr [rsp + 0x18]
	jmp	.label_567
.label_529:
	mov	rax, rdi
	test	rdi, rdi
	je	.label_381
	mov	r14d, 0x400ff
	mov	rcx, rax
.label_235:
	mov	rbp, rcx
	mov	rcx, qword ptr [rbp + 8]
	test	rcx, rcx
	jne	.label_235
	mov	rcx, qword ptr [rbp + 0x10]
	test	rcx, rcx
	jne	.label_235
.label_360:
	mov	eax, dword ptr [rbp + 0x30]
	and	eax, r14d
	cmp	eax, 3
	je	.label_319
	cmp	eax, 6
	jne	.label_326
	mov	rbx, qword ptr [rbp + 0x28]
	mov	rdi, qword ptr [rbx]
	call	free
	mov	rdi, qword ptr [rbx + 8]
	call	free
	mov	rdi, qword ptr [rbx + 0x10]
	call	free
	mov	rdi, qword ptr [rbx + 0x18]
	call	free
	mov	rdi, rbx
	jmp	.label_588
.label_319:
	mov	rdi, qword ptr [rbp + 0x28]
.label_588:
	call	free
.label_326:
	mov	rax, qword ptr [rbp]
	test	rax, rax
	je	.label_381
	mov	rcx, qword ptr [rax + 0x10]
	cmp	rcx, rbp
	mov	rbp, rax
	je	.label_360
	test	rcx, rcx
	mov	rbp, rax
	je	.label_360
	jmp	.label_235
.label_381:
	mov	dword ptr [r12], 8
	jmp	.label_351
.label_238:
	mov	r12, qword ptr [rsp + 0x48]
	mov	dword ptr [r12], eax
	jmp	.label_185
.label_133:
	mov	dword ptr [r12], 3
	jmp	.label_222
.label_300:
	mov	edi, 0x3c8
	call	malloc
	test	rax, rax
	je	.label_186
	mov	rsi, qword ptr [rsp + 0x18]
	mov	rcx, qword ptr [rsi + 0x70]
	mov	qword ptr [rax], rcx
	mov	qword ptr [rsi + 0x70], rax
	mov	dword ptr [rsi + 0x80], 0
	xor	ecx, ecx
	mov	rbx, qword ptr [rsp + 0x20]
	jmp	.label_595
.label_186:
	mov	dword ptr [r12], 0xc
	mov	rbx, qword ptr [rsp + 0x20]
	jmp	.label_185
.label_270:
	mov	edi, OFFSET FLAT:label_462
	mov	esi, OFFSET FLAT:label_242
	mov	edx, 0xced
	mov	ecx, OFFSET FLAT:label_463
	call	__assert_fail
.label_196:
	call	free
	mov	rdi, rbp
	call	free
	mov	ecx, 0xc
	mov	rbx, qword ptr [rsp + 0x20]
.label_161:
	mov	r12, qword ptr [rsp + 0x48]
	mov	dword ptr [r12], ecx
.label_185:
	mov	r15, qword ptr [rsp + 0x30]
.label_222:
	mov	rdi, r14
	call	free
	mov	rdi, qword ptr [r15]
	call	free
	mov	rdi, qword ptr [r15 + 8]
	call	free
	mov	rdi, qword ptr [r15 + 0x10]
	call	free
	mov	rdi, qword ptr [r15 + 0x18]
	call	free
	mov	rdi, r15
	call	free
	xor	ebp, ebp
	cmp	dword ptr [r12], 0
	mov	r15d, 0
	jmp	.label_609
.label_1768:
	test	r14d, r14d
	je	.label_1759
	mov	bl, byte ptr [r12]
	test	bl, bl
	mov	rbp, r12
	je	.label_1760
	call	__ctype_b_loc
	mov	rax, qword ptr [rax]
	mov	rbp, r12
	nop	word ptr cs:[rax + rax]
.label_1762:
	movzx	ecx, bl
	test	byte ptr [rax + rcx*2 + 1], 0x20
	je	.label_1760
	movzx	ebx, byte ptr [rbp + 1]
	inc	rbp
	test	bl, bl
	jne	.label_1762
.label_1760:
	mov	rdi, rbp
	call	strlen
	lea	rdx, [rax + 1]
	mov	rdi, r12
	mov	rsi, rbp
	call	memmove
	cmp	r14d, 1
	je	.label_1754
.label_1759:
	mov	rdi, r12
	call	strlen
	lea	rbp, [r12 + rax - 1]
	cmp	rbp, r12
	jb	.label_1754
	call	__ctype_b_loc
	nop	dword ptr [rax]
.label_1761:
	movzx	ecx, byte ptr [rbp]
	mov	rdx, qword ptr [rax]
	test	byte ptr [rdx + rcx*2 + 1], 0x20
	je	.label_1754
	mov	byte ptr [rbp], 0
	dec	rbp
	cmp	rbp, r12
	jae	.label_1761
.label_1754:
	mov	rax, r12
	add	rsp, 0x50
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40f054

	.globl trim2
	.type trim2, @function
trim2:
	push	rbp
	push	r15
	push	r14
	push	r12
	push	rbx
	sub	rsp, 0x50
	mov	r14d, esi
	call	__strdup
	mov	r12, rax
	test	r12, r12
	je	.label_1765
	call	__ctype_get_mb_cur_max
	cmp	rax, 2
	jb	.label_1768
	test	r14d, r14d
	je	.label_1753
	mov	qword ptr [rsp + 0x20], r12
	mov	rdi, r12
	call	strlen
	lea	rcx, [r12 + rax]
	mov	qword ptr [rsp + 8], rcx
	mov	byte ptr [rsp + 0x10], 0
	mov	qword ptr [rsp + 0x14], 0
	mov	byte ptr [rsp + 0x1c], 0
	test	rax, rax
	mov	rbp, r12
	jle	.label_1757
	lea	rbp, [rsp + 8]
	nop	
.label_1764:
	mov	rdi, rbp
	call	mbiter_multi_next
	mov	rdi, qword ptr [rsp + 0x30]
	test	dil, dil
	je	.label_1763
	shr	rdi, 0x20
	call	iswspace
	test	eax, eax
	je	.label_1763
	mov	rax, qword ptr [rsp + 0x20]
	add	rax, qword ptr [rsp + 0x28]
	mov	qword ptr [rsp + 0x20], rax
	mov	byte ptr [rsp + 0x1c], 0
	cmp	rax, qword ptr [rsp + 8]
	jb	.label_1764
.label_1763:
	mov	rbp, qword ptr [rsp + 0x20]
.label_1757:
	mov	rdi, rbp
	call	strlen
	lea	rdx, [rax + 1]
	mov	rdi, r12
	mov	rsi, rbp
	call	memmove
	cmp	r14d, 1
	je	.label_1754
.label_1753:
	mov	qword ptr [rsp + 0x20], r12
	mov	rdi, r12
	call	strlen
	mov	rcx, r12
	add	rcx, rax
	mov	qword ptr [rsp + 8], rcx
	mov	byte ptr [rsp + 0x10], 0
	mov	qword ptr [rsp + 0x14], 0
	mov	byte ptr [rsp + 0x1c], 0
	test	rax, rax
	jle	.label_1754
	xor	ebp, ebp
	lea	r14, [rsp + 8]
	nop	dword ptr [rax + rax]
.label_1758:
	mov	rdi, r14
	call	mbiter_multi_next
	cmp	ebp, 1
	je	.label_1766
	test	ebp, ebp
	jne	.label_1767
	mov	rdi, qword ptr [rsp + 0x30]
	mov	ebp, 1
	test	dil, dil
	je	.label_1755
	shr	rdi, 0x20
	call	iswspace
	test	eax, eax
	je	.label_1756
	xor	ebp, ebp
	jmp	.label_1755
	nop	dword ptr [rax + rax]
.label_1766:
	mov	rdi, qword ptr [rsp + 0x30]
	mov	ebp, 1
	test	dil, dil
	je	.label_1755
	shr	rdi, 0x20
	call	iswspace
	test	eax, eax
	je	.label_1755
	mov	rdi, qword ptr [rsp + 0x30]
	test	dil, dil
	je	.label_1752
	shr	rdi, 0x20
	call	iswspace
	test	eax, eax
	je	.label_1752
	mov	ebp, 2
	mov	r15, qword ptr [rsp + 0x20]
	jmp	.label_1755
	nop	
.label_1767:
	mov	rdi, qword ptr [rsp + 0x30]
	test	dil, dil
	je	.label_1752
	shr	rdi, 0x20
	call	iswspace
	mov	ebp, 2
	test	eax, eax
	jne	.label_1755
	jmp	.label_1752
.label_1765:
	call	xalloc_die
	nop	
.label_1756:
	mov	rdi, qword ptr [rsp + 0x30]
	test	dil, dil
	je	.label_1755
	shr	rdi, 0x20
	call	iswspace
	test	eax, eax
	je	.label_1755
	nop	word ptr cs:[rax + rax]
.label_1752:
	mov	ebp, 1
.label_1755:
	mov	rax, qword ptr [rsp + 0x20]
	add	rax, qword ptr [rsp + 0x28]
	mov	qword ptr [rsp + 0x20], rax
	mov	byte ptr [rsp + 0x1c], 0
	cmp	rax, qword ptr [rsp + 8]
	jb	.label_1758
	cmp	ebp, 2
	jne	.label_1754
	mov	byte ptr [r15], 0
	jmp	.label_1754
	.section	.text
	.align	32
	#Procedure 0x40f260

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
	mov	rbx, rsi
	mov	ebp, edi
	mov	rdi, qword ptr [rbx]
	call	set_program_name
	mov	edi, 6
	mov	esi, OFFSET FLAT:label_400
	call	setlocale
	mov	edi, OFFSET FLAT:label_2004
	mov	esi, OFFSET FLAT:label_2005
	call	bindtextdomain
	mov	edi, OFFSET FLAT:label_2004
	call	textdomain
	mov	edi, OFFSET FLAT:close_stdout
	call	atexit
	xor	r15d, r15d
	lea	r14, [rsp + 0x50]
	jmp	.label_1810
.label_3132:
	mov	rdi, qword ptr [rip + optarg]
	call	copy_unescaped_string
	mov	qword ptr [rip + word_regex],  rax
	cmp	byte ptr [rax], 0
	cmove	rax, r15
	mov	qword ptr [rip + word_regex],  rax
	nop	dword ptr [rax + rax]
.label_1810:
	mov	edx, OFFSET FLAT:label_2039
	mov	ecx, OFFSET FLAT:long_options
	xor	r8d, r8d
	mov	edi, ebp
	mov	rsi, rbx
	call	getopt_long
	lea	ecx, [rax + 1]
	cmp	ecx, 0x78
	ja	.label_2049
	jmp	qword ptr [(rcx * 8) + label_2054]
.label_3123:
	mov	rsi, qword ptr [rip + optarg]
	mov	r9, qword ptr [rip + argmatch_die]
	mov	edi, OFFSET FLAT:label_1982
	mov	edx, OFFSET FLAT:format_args
	mov	ecx, OFFSET FLAT:format_vals
	mov	r8d, 4
	call	__xargmatch_internal
	mov	eax, dword ptr [(rax * 4) + format_vals]
	mov	dword ptr [rip + output_format],  eax
	jmp	.label_1810
.label_3124:
	mov	byte ptr [rip + auto_reference],  1
	jmp	.label_1810
.label_3129:
	mov	byte ptr [rip + right_reference],  1
	jmp	.label_1810
.label_3133:
	mov	rax, qword ptr [rip + optarg]
	mov	qword ptr [rip + break_file],  rax
	jmp	.label_1810
.label_3134:
	mov	byte ptr [rip + ignore_case],  1
	jmp	.label_1810
.label_3136:
	mov	rax, qword ptr [rip + optarg]
	mov	qword ptr [rip + ignore_file],  rax
	jmp	.label_1810
.label_3137:
	mov	rax, qword ptr [rip + optarg]
	mov	qword ptr [rip + only_file],  rax
	jmp	.label_1810
.label_3125:
	mov	rdi, qword ptr [rip + optarg]
	call	copy_unescaped_string
	mov	qword ptr [rip + truncation_string],  rax
	jmp	.label_1810
.label_3126:
	mov	byte ptr [rip + gnu_extensions],  1
	jmp	.label_1810
.label_3127:
	mov	rax, qword ptr [rip + optarg]
	mov	qword ptr [rip + macro_name],  rax
	jmp	.label_1810
.label_3128:
	mov	dword ptr [rip + output_format],  2
	jmp	.label_1810
.label_3130:
	mov	rdi, qword ptr [rip + optarg]
	call	copy_unescaped_string
	mov	qword ptr [rip + context_regex],  rax
	jmp	.label_1810
.label_3131:
	mov	dword ptr [rip + output_format],  3
	jmp	.label_1810
.label_3135:
	mov	rdi, qword ptr [rip + optarg]
	xor	esi, esi
	xor	edx, edx
	xor	r8d, r8d
	mov	rcx, r14
	call	xstrtoimax
	test	eax, eax
	jne	.label_1783
	mov	rax, qword ptr [rsp + 0x50]
	test	rax, rax
	jle	.label_1783
	mov	qword ptr [rip + gap_size],  rax
	jmp	.label_1810
.label_3138:
	mov	byte ptr [rip + input_reference],  1
	jmp	.label_1810
.label_3139:
	mov	rdi, qword ptr [rip + optarg]
	xor	esi, esi
	xor	edx, edx
	xor	r8d, r8d
	mov	rcx, r14
	call	xstrtoimax
	test	eax, eax
	jne	.label_1830
	mov	rax, qword ptr [rsp + 0x50]
	test	rax, rax
	jle	.label_1830
	mov	qword ptr [rip + line_width],  rax
	jmp	.label_1810
.label_3122:
	mov	eax, dword ptr [rip + optind]
	cmp	eax, ebp
	jne	.label_1838
	mov	edi, 8
	call	xmalloc
	mov	qword ptr [rip + input_file_name],  rax
	mov	edi, 8
	call	xmalloc
	mov	qword ptr [rip + file_line_count],  rax
	mov	edi, 0x10
	call	xmalloc
	mov	qword ptr [rip + text_buffers],  rax
	mov	dword ptr [rip + number_input_files],  1
	mov	rax, qword ptr [rip + input_file_name]
	mov	qword ptr [rax], 0
	jmp	.label_1847
.label_1838:
	mov	cl, byte ptr [rip + gnu_extensions]
	test	cl, cl
	je	.label_1868
	mov	dword ptr [rip + number_input_files],  1
	mov	edi, 8
	call	xmalloc
	mov	qword ptr [rip + input_file_name],  rax
	mov	edi, 8
	call	xmalloc
	mov	qword ptr [rip + file_line_count],  rax
	mov	edi, 0x10
	call	xmalloc
	mov	qword ptr [rip + text_buffers],  rax
	movsxd	rax, dword ptr [rip + optind]
	mov	rcx, qword ptr [rbx + rax*8]
	mov	dl, byte ptr [rcx]
	test	dl, dl
	je	.label_1867
	cmp	dl, 0x2d
	jne	.label_1896
	cmp	byte ptr [rcx + 1], 0
	je	.label_1867
.label_1896:
	mov	rdx, qword ptr [rip + input_file_name]
	mov	qword ptr [rdx], rcx
	jmp	.label_1897
.label_1868:
	sub	ebp, eax
	mov	dword ptr [rip + number_input_files],  ebp
	js	.label_1848
	movsxd	rdi, ebp
	shl	rdi, 3
	call	xmalloc
	mov	qword ptr [rip + input_file_name],  rax
	movsxd	rdi, dword ptr [rip + number_input_files]
	test	rdi, rdi
	js	.label_1848
	shl	rdi, 3
	call	xmalloc
	mov	qword ptr [rip + file_line_count],  rax
	movsxd	rdi, dword ptr [rip + number_input_files]
	test	rdi, rdi
	js	.label_1848
	shl	rdi, 4
	call	xmalloc
	mov	qword ptr [rip + text_buffers],  rax
	movsxd	rax, dword ptr [rip + number_input_files]
	test	rax, rax
	jle	.label_1847
	mov	rcx, qword ptr [rip + input_file_name]
	movsxd	rsi, dword ptr [rip + optind]
	lea	edx, [rsi + 1]
	lea	rsi, [rbx + rsi*8]
	xor	edi, edi
	nop	dword ptr [rax]
.label_1962:
	mov	rbp, qword ptr [rsi + rdi*8]
	movzx	ebx, byte ptr [rbp]
	test	bl, bl
	je	.label_1946
	cmp	bl, 0x2d
	jne	.label_1950
	cmp	byte ptr [rbp + 1], 0
	je	.label_1946
.label_1950:
	mov	qword ptr [rcx + rdi*8], rbp
	jmp	.label_1954
	nop	dword ptr [rax]
.label_1946:
	mov	qword ptr [rcx + rdi*8], 0
.label_1954:
	lea	ebp, [rdx + rdi]
	mov	dword ptr [rip + optind],  ebp
	inc	rdi
	cmp	rdi, rax
	jl	.label_1962
	jmp	.label_1847
.label_1867:
	mov	rcx, qword ptr [rip + input_file_name]
	mov	qword ptr [rcx], 0
.label_1897:
	lea	ecx, [rax + 1]
	mov	dword ptr [rip + optind],  ecx
	cmp	ecx, ebp
	jge	.label_1979
	mov	rdi, qword ptr [rbx + rax*8 + 8]
	mov	rdx, qword ptr [rip + stdout]
	mov	esi, OFFSET FLAT:label_1981
	call	freopen_safer
	test	rax, rax
	je	.label_1988
	mov	ecx, dword ptr [rip + optind]
	inc	ecx
	mov	dword ptr [rip + optind],  ecx
.label_1979:
	cmp	ecx, ebp
	jl	.label_1994
.label_1847:
	cmp	dword ptr [rip + output_format],  0
	jne	.label_1995
	movzx	eax, byte ptr [rip + gnu_extensions]
	inc	eax
	mov	dword ptr [rip + output_format],  eax
.label_1995:
	cmp	byte ptr [rip + ignore_case],  1
	jne	.label_2001
	xor	ebx, ebx
	call	__ctype_toupper_loc
	nop	word ptr cs:[rax + rax]
.label_2015:
	mov	rcx, qword ptr [rax]
	movzx	ecx, byte ptr [rcx + rbx*4]
	mov	byte ptr [rbx + folded_chars],  cl
	mov	rcx, qword ptr [rax]
	movzx	ecx, byte ptr [rcx + rbx*4 + 4]
	mov	byte ptr [rbx + label_2012],  cl
	mov	rcx, qword ptr [rax]
	movzx	ecx, byte ptr [rcx + rbx*4 + 8]
	mov	byte ptr [rbx + label_2013],  cl
	mov	rcx, qword ptr [rax]
	movzx	ecx, byte ptr [rcx + rbx*4 + 0xc]
	mov	byte ptr [rbx + label_2014],  cl
	add	rbx, 4
	cmp	rbx, 0x100
	jne	.label_2015
.label_2001:
	mov	rax, qword ptr [rip + context_regex]
	test	rax, rax
	je	.label_2042
	cmp	byte ptr [rax], 0
	jne	.label_2062
	mov	qword ptr [rip + context_regex],  0
	jmp	.label_2048
.label_2042:
	mov	al, byte ptr [rip + gnu_extensions]
	test	al, al
	jne	.label_2053
	mov	al, byte ptr [rip + input_reference]
	test	al, al
	je	.label_2058
.label_2053:
	mov	qword ptr [rip + context_regex], OFFSET FLAT:label_2061
	jmp	.label_2062
.label_2058:
	mov	qword ptr [rip + context_regex], OFFSET FLAT:label_2068
.label_2062:
	mov	edi, OFFSET FLAT:context_regex
	call	compile_regex
.label_2048:
	cmp	qword ptr [rip + word_regex],  0
	je	.label_2088
	mov	edi, OFFSET FLAT:word_regex
	call	compile_regex
	mov	rdi, qword ptr [rip + break_file]
	test	rdi, rdi
	jne	.label_2094
	jmp	.label_1999
.label_2088:
	mov	rdi, qword ptr [rip + break_file]
	test	rdi, rdi
	je	.label_2100
.label_2094:
	lea	rsi, [rsp + 0x50]
	call	swallow_file_in_memory
	movdqa	xmm0, xmmword ptr [rip + label_1514]
	movdqa	xmmword ptr [rip + label_2074],  xmm0
	movdqa	xmmword ptr [rip + label_2075],  xmm0
	movdqa	xmmword ptr [rip + label_2076],  xmm0
	movdqa	xmmword ptr [rip + label_2077],  xmm0
	movdqa	xmmword ptr [rip + label_2078],  xmm0
	movdqa	xmmword ptr [rip + label_2079],  xmm0
	movdqa	xmmword ptr [rip + label_2080],  xmm0
	movdqa	xmmword ptr [rip + label_2081],  xmm0
	movdqa	xmmword ptr [rip + label_2082],  xmm0
	movdqa	xmmword ptr [rip + label_2083],  xmm0
	movdqa	xmmword ptr [rip + label_2084],  xmm0
	movdqa	xmmword ptr [rip + label_2085],  xmm0
	movdqa	xmmword ptr [rip + label_2086],  xmm0
	movdqa	xmmword ptr [rip + label_1815],  xmm0
	movdqa	xmmword ptr [rip + label_2087],  xmm0
	movdqa	xmmword ptr [rip + word_fastmap],  xmm0
	mov	rdi, qword ptr [rsp + 0x50]
	mov	rax, qword ptr [rsp + 0x58]
	cmp	rdi, rax
	jae	.label_2109
	mov	rcx, rdi
	nop	word ptr cs:[rax + rax]
.label_1785:
	movzx	edx, byte ptr [rcx]
	mov	byte ptr [rdx + word_fastmap],  0
	inc	rcx
	cmp	rax, rcx
	jne	.label_1785
.label_2109:
	cmp	byte ptr [rip + gnu_extensions],  1
	jne	.label_1811
	mov	byte ptr [rip + label_1815],  0
	mov	word ptr [rip + label_1816],  0
.label_1811:
	call	free
.label_1999:
	mov	rdi, qword ptr [rip + ignore_file]
	test	rdi, rdi
	je	.label_1824
	mov	esi, OFFSET FLAT:ignore_table
	call	digest_word_file
	cmp	qword ptr [rip + label_1774],  0
	jne	.label_1824
	mov	qword ptr [rip + ignore_file],  0
.label_1824:
	mov	rdi, qword ptr [rip + only_file]
	test	rdi, rdi
	je	.label_1837
	mov	esi, OFFSET FLAT:only_table
	call	digest_word_file
	cmp	qword ptr [rip + label_1845],  0
	jne	.label_1837
	mov	qword ptr [rip + only_file],  0
.label_1837:
	mov	qword ptr [rip + number_of_occurs.0],  0
	mov	qword ptr [rip + total_line_count],  0
	mov	qword ptr [rip + maximum_word_length],  0
	mov	qword ptr [rip + reference_max_width],  0
	cmp	dword ptr [rip + number_input_files],  0
	jle	.label_1851
	xor	r13d, r13d
	nop	word ptr cs:[rax + rax]
.label_1879:
	mov	rbp, r13
	shl	rbp, 4
	mov	rsi, qword ptr [rip + text_buffers]
	add	rsi, rbp
	mov	rax, qword ptr [rip + input_file_name]
	mov	rdi, qword ptr [rax + r13*8]
	call	swallow_file_in_memory
	mov	r14, qword ptr [rip + text_buffers]
	mov	rax, qword ptr [r14 + rbp]
	mov	rbx, qword ptr [r14 + rbp + 8]
	cmp	byte ptr [rip + input_reference],  1
	mov	qword ptr [rsp + 0x10], rax
	mov	r12d, 0
	jne	.label_1885
	cmp	rax, rbx
	mov	r15, rax
	mov	rdx, rax
	jae	.label_1895
	call	__ctype_b_loc
	mov	rax, qword ptr [rax]
	mov	rdx, r15
	nop	dword ptr [rax + rax]
.label_1903:
	movzx	ecx, byte ptr [rdx]
	test	byte ptr [rax + rcx*2 + 1], 0x20
	jne	.label_1895
	inc	rdx
	cmp	rdx, rbx
	jb	.label_1903
.label_1895:
	mov	rax, rdx
	sub	rax, r15
	mov	r12, rax
	mov	qword ptr [rsp + 0x10], rdx
	cmp	rdx, rbx
	jae	.label_1909
	call	__ctype_b_loc
	mov	rax, qword ptr [rax]
	mov	rdx, qword ptr [rsp + 0x10]
	nop	word ptr cs:[rax + rax]
.label_1926:
	movzx	ecx, byte ptr [rdx]
	test	byte ptr [rax + rcx*2 + 1], 0x20
	je	.label_1921
	inc	rdx
	cmp	rdx, rbx
	jb	.label_1926
.label_1921:
	mov	qword ptr [rsp + 0x10], rdx
.label_1909:
	mov	rax, r15
.label_1885:
	cmp	rax, rbx
	jae	.label_1931
	lea	rcx, [r14 + rbp + 8]
	mov	qword ptr [rsp + 0x28], rcx
	mov	rbp, rax
	mov	qword ptr [rsp + 8], r13
	nop	word ptr cs:[rax + rax]
.label_1869:
	mov	r15, rax
	cmp	qword ptr [rip + context_regex],  0
	je	.label_1942
	mov	rdx, rbx
	sub	rdx, r15
	mov	edi, OFFSET FLAT:label_1944
	xor	ecx, ecx
	mov	r9d, OFFSET FLAT:context_regs
	mov	rsi, r15
	mov	r8, rdx
	call	rpl_re_search
	cmp	rax, -1
	je	.label_1942
	test	rax, rax
	je	.label_1958
	cmp	rax, -2
	je	.label_1882
	mov	rax, qword ptr [rip + label_1965]
	mov	rbx, qword ptr [rax]
	add	rbx, r15
.label_1942:
	mov	qword ptr [rsp], rbp
	mov	qword ptr [rsp + 0x40], rbx
	nop	word ptr [rax + rax]
.label_1985:
	mov	r14, rbx
	cmp	r14, r15
	jbe	.label_1980
	lea	rbx, [r14 - 1]
	movzx	ebp, byte ptr [r14 - 1]
	call	__ctype_b_loc
	mov	rax, qword ptr [rax]
	test	byte ptr [rax + rbp*2 + 1], 0x20
	jne	.label_1985
.label_1980:
	mov	qword ptr [rsp + 0x18], r15
	mov	rbp, r12
	jmp	.label_1852
.label_1960:
	mov	r13, qword ptr [rsp + 8]
	nop	
.label_1852:
	mov	rbx, r15
	jmp	.label_1993
	nop	word ptr cs:[rax + rax]
.label_2044:
	inc	rbx
.label_1993:
	cmp	qword ptr [rip + word_regex],  0
	je	.label_1997
	mov	rdx, r14
	sub	rdx, rbx
	mov	edi, OFFSET FLAT:label_1814
	xor	ecx, ecx
	mov	r9d, OFFSET FLAT:word_regs
	mov	rsi, rbx
	mov	r8, rdx
	call	rpl_re_search
	cmp	rax, -1
	je	.label_1902
	cmp	rax, -2
	je	.label_2132
	mov	rax, qword ptr [rip + label_2019]
	mov	rax, qword ptr [rax]
	add	rax, rbx
	mov	rcx, qword ptr [rip + label_2020]
	mov	r15, rbx
	add	r15, qword ptr [rcx]
	mov	rbx, rax
	jmp	.label_2021
	nop	
.label_2036:
	inc	rbx
.label_1997:
	cmp	rbx, r14
	jae	.label_1875
	movzx	eax, byte ptr [rbx]
	cmp	byte ptr [rax + word_fastmap],  0
	je	.label_2036
.label_1875:
	cmp	rbx, r14
	je	.label_1902
	jae	.label_2044
	mov	r15, rbx
	nop	word ptr cs:[rax + rax]
.label_2059:
	movzx	eax, byte ptr [r15]
	cmp	byte ptr [rax + word_fastmap],  0
	je	.label_2021
	inc	r15
	cmp	r15, r14
	jb	.label_2059
	nop	word ptr cs:[rax + rax]
.label_2021:
	mov	r12, r15
	sub	r12, rbx
	je	.label_2044
	cmp	r12, qword ptr [rip + maximum_word_length]
	jle	.label_2071
	mov	qword ptr [rip + maximum_word_length],  r12
.label_2071:
	cmp	byte ptr [rip + input_reference],  1
	jne	.label_2090
	mov	rax, qword ptr [rsp + 0x10]
	cmp	rax, rbx
	jae	.label_2093
.label_2129:
	mov	r13, rax
	nop	word ptr [rax + rax]
.label_2102:
	cmp	byte ptr [r13], 0xa
	je	.label_2101
	inc	r13
	cmp	r13, rbx
	jb	.label_2102
	jmp	.label_2105
	nop	word ptr cs:[rax + rax]
.label_2101:
	inc	qword ptr [rip + total_line_count]
	lea	rbp, [r13 + 1]
	mov	rax, qword ptr [rsp + 0x28]
	mov	rax, qword ptr [rax]
	cmp	rbp, rax
	mov	rdx, rbp
	jae	.label_2113
	mov	qword ptr [rsp], rax
	call	__ctype_b_loc
	mov	rsi, qword ptr [rsp]
	mov	rax, qword ptr [rax]
	mov	rdx, rbp
	nop	
.label_2127:
	movzx	ecx, byte ptr [rdx]
	test	byte ptr [rax + rcx*2 + 1], 0x20
	jne	.label_2113
	inc	rdx
	cmp	rdx, rsi
	jb	.label_2127
.label_2113:
	mov	rax, rbp
	mov	rbp, rdx
	mov	qword ptr [rsp], rax
	sub	rbp, rax
	cmp	rdx, rbx
	mov	rax, rdx
	jb	.label_2129
	inc	r13
	mov	qword ptr [rsp], r13
	jmp	.label_2131
.label_2105:
	mov	rax, r13
.label_2131:
	mov	r13, qword ptr [rsp + 8]
.label_2093:
	mov	qword ptr [rsp + 0x10], rax
	cmp	rax, rbx
	ja	.label_1852
.label_2090:
	cmp	qword ptr [rip + ignore_file],  0
	mov	qword ptr [rsp + 0x20], rbp
	je	.label_1775
	mov	rdx, qword ptr [rip + label_1774]
	test	rdx, rdx
	jle	.label_1775
	mov	r9, qword ptr [rip + ignore_table]
	mov	r8b, byte ptr [rip + ignore_case]
	xor	r11d, r11d
.label_1874:
	mov	r10, rdx
	dec	r10
.label_1865:
	lea	rax, [r11 + r10]
	mov	rdx, rax
	shr	rdx, 0x3f
	add	rdx, rax
	sar	rdx, 1
	mov	rax, rdx
	shl	rax, 4
	lea	rsi, [r9 + rax]
	mov	r13, qword ptr [r9 + rax + 8]
	cmp	r12, r13
	mov	rcx, r13
	cmovle	rcx, r12
	test	r8b, 1
	je	.label_1809
	test	rcx, rcx
	jle	.label_1831
	mov	rdi, qword ptr [rsi]
	xor	esi, esi
	nop	dword ptr [rax + rax]
.label_1841:
	movzx	eax, byte ptr [rbx + rsi]
	movzx	eax, byte ptr [rax + folded_chars]
	movzx	ebp, byte ptr [rdi + rsi]
	movzx	ebp, byte ptr [rbp + folded_chars]
	sub	eax, ebp
	jne	.label_1786
	inc	rsi
	cmp	rsi, rcx
	jl	.label_1841
	jmp	.label_1831
	nop	word ptr cs:[rax + rax]
.label_1809:
	test	rcx, rcx
	jle	.label_1831
	mov	rsi, qword ptr [rsi]
	xor	edi, edi
	nop	word ptr [rax + rax]
.label_1859:
	movzx	eax, byte ptr [rbx + rdi]
	movzx	ebp, byte ptr [rsi + rdi]
	sub	eax, ebp
	jne	.label_1786
	inc	rdi
	cmp	rdi, rcx
	jl	.label_1859
.label_1831:
	cmp	r12, r13
	jl	.label_1861
	jg	.label_1862
	jmp	.label_1864
.label_1786:
	test	eax, eax
	js	.label_1861
.label_1862:
	cmp	rdx, r10
	lea	r11, [rdx + 1]
	mov	rbp, qword ptr [rsp + 0x20]
	jl	.label_1865
	jmp	.label_1775
	nop	dword ptr [rax + rax]
.label_1861:
	cmp	r11, rdx
	mov	rbp, qword ptr [rsp + 0x20]
	jl	.label_1874
.label_1775:
	cmp	qword ptr [rip + only_file],  0
	je	.label_1812
	mov	rax, qword ptr [rip + label_1845]
	test	rax, rax
	mov	r13, qword ptr [rsp + 8]
	jle	.label_1852
	mov	r9, qword ptr [rip + only_table]
	mov	r8b, byte ptr [rip + ignore_case]
	xor	r11d, r11d
.label_1964:
	mov	r10, rax
	dec	r10
	nop	dword ptr [rax + rax]
.label_2136:
	lea	rcx, [r11 + r10]
	mov	rax, rcx
	shr	rax, 0x3f
	add	rax, rcx
	sar	rax, 1
	mov	rcx, rax
	shl	rcx, 4
	lea	rsi, [r9 + rcx]
	mov	r13, qword ptr [r9 + rcx + 8]
	cmp	r12, r13
	mov	rdx, r13
	cmovle	rdx, r12
	test	r8b, 1
	je	.label_2114
	test	rdx, rdx
	jle	.label_1873
	mov	rdi, qword ptr [rsi]
	xor	esi, esi
	nop	dword ptr [rax + rax]
.label_1927:
	movzx	ecx, byte ptr [rbx + rsi]
	movzx	ecx, byte ptr [rcx + folded_chars]
	movzx	ebp, byte ptr [rdi + rsi]
	movzx	ebp, byte ptr [rbp + folded_chars]
	sub	ecx, ebp
	jne	.label_1915
	inc	rsi
	cmp	rsi, rdx
	jl	.label_1927
	jmp	.label_1873
	nop	word ptr cs:[rax + rax]
.label_2114:
	test	rdx, rdx
	jle	.label_1873
	mov	rsi, qword ptr [rsi]
	xor	edi, edi
	nop	word ptr [rax + rax]
.label_2033:
	movzx	ecx, byte ptr [rbx + rdi]
	movzx	ebp, byte ptr [rsi + rdi]
	sub	ecx, ebp
	jne	.label_1915
	inc	rdi
	cmp	rdi, rdx
	jl	.label_2033
.label_1873:
	cmp	r12, r13
	mov	rbp, qword ptr [rsp + 0x20]
	jl	.label_1943
	jg	.label_1945
	jmp	.label_1812
	nop	word ptr cs:[rax + rax]
.label_1915:
	test	ecx, ecx
	mov	rbp, qword ptr [rsp + 0x20]
	js	.label_1943
.label_1945:
	cmp	rax, r10
	lea	r11, [rax + 1]
	jl	.label_2136
	jmp	.label_1960
	nop	dword ptr [rax + rax]
.label_1943:
	cmp	r11, rax
	jl	.label_1964
	mov	r13, qword ptr [rsp + 8]
	jmp	.label_1852
.label_1812:
	mov	rsi, qword ptr [rip + number_of_occurs.0]
	cmp	rsi, qword ptr [rip + occurs_alloc]
	mov	r13, qword ptr [rsp + 8]
	jne	.label_1975
	mov	rdi, qword ptr [rip + occurs_table.0]
	test	rdi, rdi
	je	.label_1899
	movabs	rax, 0x1c71c71c71c71c7
	cmp	rsi, rax
	jae	.label_1984
	mov	rax, rsi
	shr	rax, 1
	lea	rsi, [rsi + rax + 1]
	jmp	.label_1992
.label_1864:
	mov	r13, qword ptr [rsp + 8]
	mov	rbp, qword ptr [rsp + 0x20]
	jmp	.label_1852
.label_1975:
	mov	r8, qword ptr [rip + occurs_table.0]
	jmp	.label_2023
.label_1899:
	test	rsi, rsi
	mov	eax, 2
	cmove	rsi, rax
	movabs	rax, 0x2aaaaaaaaaaaaab
	cmp	rsi, rax
	jae	.label_2043
.label_1992:
	mov	qword ptr [rip + occurs_alloc],  rsi
	shl	rsi, 4
	lea	rsi, [rsi + rsi*2]
	call	xrealloc
	mov	r8, rax
	mov	qword ptr [rip + occurs_table.0],  r8
	mov	rsi, qword ptr [rip + number_of_occurs.0]
.label_2023:
	mov	rax, qword ptr [rsp + 0x10]
	lea	r10, [rsi + rsi*2]
	shl	r10, 4
	lea	r9, [r8 + r10]
	cmp	byte ptr [rip + auto_reference],  1
	jne	.label_2027
	cmp	rax, rbx
	jae	.label_2038
.label_2115:
	mov	r13, rax
	nop	word ptr [rax + rax]
.label_1938:
	cmp	byte ptr [r13], 0xa
	je	.label_2045
	inc	r13
	cmp	r13, rbx
	jb	.label_1938
	jmp	.label_2052
	nop	word ptr cs:[rax + rax]
.label_2045:
	inc	qword ptr [rip + total_line_count]
	lea	rdx, [r13 + 1]
	mov	rax, qword ptr [rsp + 0x28]
	mov	rax, qword ptr [rax]
	cmp	rdx, rax
	mov	qword ptr [rsp], rdx
	jae	.label_1849
	mov	qword ptr [rsp + 0x20], rsi
	mov	qword ptr [rsp + 0x48], r8
	mov	qword ptr [rsp + 0x38], r10
	mov	qword ptr [rsp + 0x30], r9
	mov	qword ptr [rsp + 0x10], rax
	call	__ctype_b_loc
	mov	rdi, qword ptr [rsp + 0x10]
	mov	r9, qword ptr [rsp + 0x30]
	mov	r10, qword ptr [rsp + 0x38]
	mov	r8, qword ptr [rsp + 0x48]
	mov	rsi, qword ptr [rsp + 0x20]
	mov	rax, qword ptr [rax]
	mov	rdx, qword ptr [rsp]
	nop	word ptr [rax + rax]
.label_2111:
	movzx	ecx, byte ptr [rdx]
	test	byte ptr [rax + rcx*2 + 1], 0x20
	jne	.label_1849
	inc	rdx
	cmp	rdx, rdi
	jb	.label_2111
.label_1849:
	cmp	rdx, rbx
	mov	rax, rdx
	jb	.label_2115
	inc	r13
	mov	qword ptr [rsp], r13
	jmp	.label_2038
.label_2027:
	cmp	byte ptr [rip + input_reference],  1
	jne	.label_2121
	mov	rax, qword ptr [rsp]
	sub	rax, rbx
	mov	qword ptr [r8 + r10 + 0x20], rax
	mov	al, 1
	cmp	rbp, qword ptr [rip + reference_max_width]
	jle	.label_2123
	mov	qword ptr [rip + reference_max_width],  rbp
	jmp	.label_2123
.label_2052:
	mov	rax, r13
.label_2038:
	mov	qword ptr [rsp + 0x10], rax
	mov	rax, qword ptr [rip + total_line_count]
	mov	qword ptr [r8 + r10 + 0x20], rax
	mov	al, byte ptr [rip + input_reference]
	mov	r13, qword ptr [rsp + 8]
.label_2123:
	test	al, 1
	je	.label_2121
	mov	rax, qword ptr [rsp + 0x18]
	cmp	qword ptr [rsp], rax
	jne	.label_1846
	cmp	rax, r14
	mov	r13, rax
.label_2947:
	mov	qword ptr [rsp + 0x20], rsi
	mov	qword ptr [rsp + 0x38], r10
	mov	qword ptr [rsp + 0x30], r9
	jae	.label_1818
	mov	r13, r8
	call	__ctype_b_loc
	mov	r9, qword ptr [rsp + 0x30]
	mov	r10, qword ptr [rsp + 0x38]
	mov	r8, r13
	mov	rsi, qword ptr [rsp + 0x20]
	mov	rax, qword ptr [rax]
	mov	r13, qword ptr [rsp + 0x18]
	nop	word ptr cs:[rax + rax]
.label_1822:
	movzx	ecx, byte ptr [r13]
	test	byte ptr [rax + rcx*2 + 1], 0x20
	jne	.label_1818
	inc	r13
	cmp	r13, r14
	jb	.label_1822
.label_1818:
	cmp	r13, r14
	jae	.label_1825
	mov	qword ptr [rsp + 0x48], r8
	call	__ctype_b_loc
	mov	r9, qword ptr [rsp + 0x30]
	mov	r10, qword ptr [rsp + 0x38]
	mov	r8, qword ptr [rsp + 0x48]
	mov	rsi, qword ptr [rsp + 0x20]
	mov	rax, qword ptr [rax]
	nop	word ptr [rax + rax]
.label_1842:
	movzx	ecx, byte ptr [r13]
	test	byte ptr [rax + rcx*2 + 1], 0x20
	je	.label_1825
	inc	r13
	cmp	r13, r14
	jb	.label_1842
.label_1825:
	mov	rax, qword ptr [rsp + 0x18]
	mov	qword ptr [rsp], rax
	mov	rax, r13
	mov	r13, qword ptr [rsp + 8]
	jmp	.label_1846
.label_2121:
	mov	rax, qword ptr [rsp + 0x18]
.label_1846:
	mov	qword ptr [r9], rbx
	mov	qword ptr [r8 + r10 + 8], r12
	mov	qword ptr [rsp + 0x18], rax
	sub	rax, rbx
	mov	qword ptr [r8 + r10 + 0x10], rax
	mov	rax, r14
	sub	rax, rbx
	mov	qword ptr [r8 + r10 + 0x18], rax
	mov	dword ptr [r8 + r10 + 0x28], r13d
	inc	rsi
	mov	qword ptr [rip + number_of_occurs.0],  rsi
	jmp	.label_1852
.label_1902:
	mov	r12, rbp
	mov	rax, qword ptr [rsp + 0x28]
	mov	rbx, qword ptr [rax]
	mov	rax, qword ptr [rsp + 0x40]
	cmp	rax, rbx
	mov	rbp, qword ptr [rsp]
	jb	.label_1869
.label_1931:
	mov	rax, qword ptr [rip + total_line_count]
	inc	rax
	mov	qword ptr [rip + total_line_count],  rax
	mov	rcx, qword ptr [rip + file_line_count]
	mov	qword ptr [rcx + r13*8], rax
	inc	r13
	movsxd	rax, dword ptr [rip + number_input_files]
	cmp	r13, rax
	jl	.label_1879
	mov	rsi, qword ptr [rip + number_of_occurs.0]
	test	rsi, rsi
	je	.label_1851
	mov	rdi, qword ptr [rip + occurs_table.0]
	mov	edx, 0x30
	mov	ecx, OFFSET FLAT:compare_occurs
	call	qsort
.label_1851:
	cmp	byte ptr [rip + auto_reference],  1
	jne	.label_1898
	mov	qword ptr [rip + reference_max_width],  0
	xor	edi, edi
	cmp	dword ptr [rip + number_input_files],  0
	je	.label_1904
	lea	r14, [rsp + 0x50]
	xor	ebp, ebp
	nop	dword ptr [rax]
.label_1948:
	mov	rax, qword ptr [rip + file_line_count]
	mov	r8, qword ptr [rax + rbp*8]
	inc	r8
	test	rbp, rbp
	je	.label_1881
	sub	r8, qword ptr [rax + rbp*8 - 8]
.label_1881:
	mov	esi, 1
	mov	edx, 0x15
	mov	ecx, OFFSET FLAT:label_1925
	xor	eax, eax
	mov	rdi, r14
	call	__sprintf_chk
	movsxd	rbx, eax
	mov	rax, qword ptr [rip + input_file_name]
	mov	rdi, qword ptr [rax + rbp*8]
	test	rdi, rdi
	je	.label_1934
	call	strlen
	add	rbx, rax
.label_1934:
	mov	rdi, qword ptr [rip + reference_max_width]
	cmp	rbx, rdi
	jle	.label_1939
	mov	qword ptr [rip + reference_max_width],  rbx
	mov	rdi, rbx
.label_1939:
	inc	rbp
	movsxd	rax, dword ptr [rip + number_input_files]
	cmp	rbp, rax
	jb	.label_1948
.label_1904:
	lea	rax, [rdi + 1]
	mov	qword ptr [rip + reference_max_width],  rax
	add	rdi, 2
	call	xmalloc
	mov	qword ptr [rip + reference],  rax
	mov	al, byte ptr [rip + auto_reference]
	test	al, al
	jne	.label_1959
.label_1898:
	cmp	byte ptr [rip + input_reference],  1
	jne	.label_1967
.label_1959:
	mov	al, byte ptr [rip + right_reference]
	test	al, al
	je	.label_1969
.label_1967:
	mov	rax, qword ptr [rip + line_width]
	jmp	.label_1877
.label_1969:
	mov	rcx, qword ptr [rip + gap_size]
	mov	rax, qword ptr [rip + line_width]
	add	rcx, qword ptr [rip + reference_max_width]
	sub	rax, rcx
	mov	qword ptr [rip + line_width],  rax
.label_1877:
	test	rax, rax
	jns	.label_1990
	mov	qword ptr [rip + line_width],  0
	xor	eax, eax
.label_1990:
	mov	rbx, rax
	shr	rbx, 0x3f
	add	rbx, rax
	sar	rbx, 1
	mov	qword ptr [rip + half_line_width],  rbx
	mov	rbp, rbx
	sub	rbp, qword ptr [rip + gap_size]
	mov	qword ptr [rip + before_max_width],  rbp
	mov	qword ptr [rip + keyafter_max_width],  rbx
	mov	rdi, qword ptr [rip + truncation_string]
	test	rdi, rdi
	je	.label_1991
	cmp	byte ptr [rdi], 0
	je	.label_1991
	call	strlen
	mov	qword ptr [rip + truncation_string_length],  rax
	jmp	.label_2016
.label_1991:
	mov	qword ptr [rip + truncation_string],  0
	mov	rax, qword ptr [rip + truncation_string_length]
.label_2016:
	mov	cl, byte ptr [rip + gnu_extensions]
	add	rax, rax
	test	cl, cl
	je	.label_2010
	or	rax, 1
	jmp	.label_2034
.label_2010:
	xor	ecx, ecx
	sub	rbp, rax
	cmovns	rcx, rbp
	mov	qword ptr [rip + before_max_width],  rcx
.label_2034:
	sub	rbx, rax
	mov	qword ptr [rip + keyafter_max_width],  rbx
	call	__ctype_b_loc
	mov	qword ptr [rsp], rax
	mov	rax, qword ptr [rax]
	lea	rcx, [rax + 0x1fe]
	mov	edx, OFFSET FLAT:edited_flag
	cmp	rcx, rdx
	jb	.label_2047
	mov	ecx, OFFSET FLAT:label_2057
	cmp	rax, rcx
	ja	.label_2047
	xor	ecx, ecx
	nop	word ptr cs:[rax + rax]
.label_2031:
	movzx	edx, word ptr [rax + rcx*2]
	shr	edx, 0xd
	and	dl, 1
	mov	byte ptr [rcx + edited_flag],  dl
	movzx	edx, word ptr [rax + rcx*2 + 2]
	shr	edx, 0xd
	and	dl, 1
	mov	byte ptr [rcx + label_2028],  dl
	movzx	edx, word ptr [rax + rcx*2 + 4]
	shr	edx, 0xd
	and	dl, 1
	mov	byte ptr [rcx + label_2029],  dl
	movzx	edx, word ptr [rax + rcx*2 + 6]
	shr	edx, 0xd
	and	dl, 1
	mov	byte ptr [rcx + label_2030],  dl
	add	rcx, 4
	cmp	rcx, 0x100
	jne	.label_2031
	jmp	.label_2106
.label_2047:
	xor	ecx, ecx
	movdqa	xmm0, xmmword ptr [rip + label_2107]
	pand	xmm0, xmmword ptr [rip + label_2108]
	nop	word ptr [rax + rax]
.label_2120:
	movdqu	xmm1, xmmword ptr [rax + rcx*2]
	movdqu	xmm2, xmmword ptr [rax + rcx*2 + 0x10]
	psrlw	xmm1, 0xd
	psrlw	xmm2, 0xd
	pand	xmm1, xmm0
	packuswb	xmm1, xmm1
	movq	qword ptr [rcx + edited_flag],  xmm1
	pand	xmm2, xmm0
	packuswb	xmm2, xmm2
	movq	qword ptr [rcx + label_2117],  xmm2
	movdqu	xmm1, xmmword ptr [rax + rcx*2 + 0x20]
	movdqu	xmm2, xmmword ptr [rax + rcx*2 + 0x30]
	psrlw	xmm1, 0xd
	psrlw	xmm2, 0xd
	pand	xmm1, xmm0
	packuswb	xmm1, xmm1
	movq	qword ptr [rcx + label_2118],  xmm1
	pand	xmm2, xmm0
	packuswb	xmm2, xmm2
	movq	qword ptr [rcx + label_2119],  xmm2
	add	rcx, 0x20
	cmp	rcx, 0x100
	jne	.label_2120
.label_2106:
	mov	byte ptr [rip + label_1772],  1
	mov	eax, dword ptr [rip + output_format]
	cmp	eax, 2
	je	.label_1773
	cmp	eax, 3
	jne	.label_1784
	mov	byte ptr [rip + label_1787],  1
	mov	byte ptr [rip + label_1788],  1
	mov	byte ptr [rip + label_1789],  1
	mov	byte ptr [rip + label_1790],  1
	mov	dword ptr [rip + label_1791],  0x1010101
	movdqu	xmm2, xmmword ptr [rip + label_1792]
	pxor	xmm0, xmm0
	pcmpeqb	xmm2, xmm0
	movdqa	xmm1, xmmword ptr [rip + label_1514]
	pandn	xmm2, xmm1
	movdqa	xmmword ptr [rip + label_1793],  xmm2
	movdqu	xmm2, xmmword ptr [rip + label_1794]
	pcmpeqb	xmm2, xmm0
	pandn	xmm2, xmm1
	movdqa	xmmword ptr [rip + label_1795],  xmm2
	movdqu	xmm2, xmmword ptr [rip + label_1796]
	pcmpeqb	xmm2, xmm0
	pandn	xmm2, xmm1
	movdqa	xmmword ptr [rip + label_1797],  xmm2
	movdqu	xmm2, xmmword ptr [rip + label_1798]
	pcmpeqb	xmm2, xmm0
	pandn	xmm2, xmm1
	movdqa	xmmword ptr [rip + label_1799],  xmm2
	movdqu	xmm2, xmmword ptr [rip + label_1800]
	pcmpeqb	xmm2, xmm0
	pandn	xmm2, xmm1
	movdqa	xmmword ptr [rip + label_1801],  xmm2
	movdqu	xmm2, xmmword ptr [rip + label_1802]
	pcmpeqb	xmm2, xmm0
	pandn	xmm2, xmm1
	movdqa	xmmword ptr [rip + label_1803],  xmm2
	movdqu	xmm2, xmmword ptr [rip + label_1804]
	pcmpeqb	xmm2, xmm0
	pandn	xmm2, xmm1
	movdqa	xmmword ptr [rip + label_1805],  xmm2
	movdqu	xmm2, xmmword ptr [rip + label_1806]
	pcmpeqb	xmm2, xmm0
	pandn	xmm2, xmm1
	movdqa	xmmword ptr [rip + label_1807],  xmm2
	jmp	.label_1784
.label_1773:
	mov	byte ptr [rip + label_1888],  1
.label_1784:
	pxor	xmm0, xmm0
	movdqu	xmmword ptr [rip + tail],  xmm0
	mov	byte ptr [rip + tail_truncation],  0
	movdqu	xmmword ptr [rip + head],  xmm0
	mov	byte ptr [rip + head_truncation],  0
	cmp	qword ptr [rip + number_of_occurs.0],  0
	jle	.label_1892
	mov	r14, qword ptr [rip + occurs_table.0]
	xor	r12d, r12d
	jmp	.label_1891
.label_2100:
	mov	al, byte ptr [rip + gnu_extensions]
	test	al, al
	je	.label_1908
	movdqa	xmm0, xmmword ptr [rip + label_1514]
	movdqa	xmmword ptr [rip + label_2074],  xmm0
	movdqa	xmmword ptr [rip + label_2075],  xmm0
	movdqa	xmmword ptr [rip + label_2076],  xmm0
	movdqa	xmmword ptr [rip + label_2077],  xmm0
	movdqa	xmmword ptr [rip + label_2078],  xmm0
	movdqa	xmmword ptr [rip + label_2079],  xmm0
	movdqa	xmmword ptr [rip + label_2080],  xmm0
	movdqa	xmmword ptr [rip + label_2081],  xmm0
	movdqa	xmmword ptr [rip + label_2082],  xmm0
	movdqa	xmmword ptr [rip + label_2083],  xmm0
	movdqa	xmmword ptr [rip + label_2084],  xmm0
	movdqa	xmmword ptr [rip + label_2085],  xmm0
	movdqa	xmmword ptr [rip + label_2086],  xmm0
	movdqa	xmmword ptr [rip + label_1815],  xmm0
	movdqa	xmmword ptr [rip + label_2087],  xmm0
	movdqa	xmmword ptr [rip + word_fastmap],  xmm0
	mov	byte ptr [rip + label_1815],  0
	mov	word ptr [rip + label_1816],  0
	jmp	.label_1999
.label_1908:
	xor	ebx, ebx
	call	__ctype_b_loc
	nop	word ptr cs:[rax + rax]
.label_1973:
	mov	rcx, qword ptr [rax]
	movzx	ecx, word ptr [rcx + rbx*2]
	shr	ecx, 0xa
	and	cl, 1
	mov	byte ptr [rbx + word_fastmap],  cl
	mov	rcx, qword ptr [rax]
	movzx	ecx, word ptr [rcx + rbx*2 + 2]
	shr	ecx, 0xa
	and	cl, 1
	mov	byte ptr [rbx + label_1970],  cl
	mov	rcx, qword ptr [rax]
	movzx	ecx, word ptr [rcx + rbx*2 + 4]
	shr	ecx, 0xa
	and	cl, 1
	mov	byte ptr [rbx + label_1971],  cl
	mov	rcx, qword ptr [rax]
	movzx	ecx, word ptr [rcx + rbx*2 + 6]
	shr	ecx, 0xa
	and	cl, 1
	mov	byte ptr [rbx + label_1972],  cl
	add	rbx, 4
	cmp	rbx, 0x100
	jne	.label_1973
	jmp	.label_1999
.label_1887:
	mov	esi, 0x20
	call	__overflow
	jmp	.label_2006
	nop	dword ptr [rax]
.label_2018:
	mov	rdi, qword ptr [rip + stdout]
	mov	rax, qword ptr [rdi + 0x28]
	cmp	rax, qword ptr [rdi + 0x30]
	jae	.label_1887
	lea	rcx, [rax + 1]
	mov	qword ptr [rdi + 0x28], rcx
	mov	byte ptr [rax], 0x20
.label_2006:
	dec	rbx
	cmp	rbx, 1
	jg	.label_2018
	jmp	.label_1817
.label_1880:
	mov	esi, 0xa
	call	__overflow
	jmp	.label_1914
.label_2126:
	mov	esi, 0x7b
	call	__overflow
	jmp	.label_1876
.label_1957:
	mov	esi, 0x7d
	call	__overflow
	jmp	.label_2041
.label_1966:
	mov	esi, 0x22
	call	__overflow
	jmp	.label_2046
.label_2026:
	mov	esi, 0x22
	call	__overflow
	jmp	.label_2110
.label_2035:
	mov	esi, 0x22
	call	__overflow
	jmp	.label_2060
.label_1835:
	mov	esi, 0x22
	call	__overflow
	jmp	.label_1936
.label_1872:
	mov	esi, 0x7b
	call	__overflow
	jmp	.label_2072
.label_2032:
	mov	esi, 0x7d
	call	__overflow
	jmp	.label_1844
.label_1941:
	mov	esi, 0x22
	call	__overflow
	jmp	.label_1844
.label_1923:
	mov	esi, 0x3a
	call	__overflow
	jmp	.label_2099
	nop	
.label_1891:
	mov	qword ptr [rsp + 0x40], r12
	mov	r8, qword ptr [r14]
	mov	qword ptr [rip + keyafter],  r8
	mov	rcx, qword ptr [r14 + 8]
	lea	rbx, [r8 + rcx]
	mov	qword ptr [rip + label_1778],  rbx
	mov	rax, qword ptr [r14 + 0x10]
	add	rax, r8
	mov	qword ptr [rsp + 0x18], rax
	mov	rdx, qword ptr [r14 + 0x18]
	lea	r15, [r8 + rdx]
	movsxd	rsi, dword ptr [r14 + 0x28]
	mov	rdi, qword ptr [rip + text_buffers]
	shl	rsi, 4
	mov	r13, qword ptr [rdi + rsi]
	mov	r12, qword ptr [rdi + rsi + 8]
	cmp	rcx, rdx
	jge	.label_1769
	jmp	.label_1827
	nop	word ptr cs:[rax + rax]
.label_1779:
	movzx	ecx, byte ptr [rbx]
	cmp	byte ptr [rcx + word_fastmap],  0
	je	.label_2128
	cmp	rbx, r15
	jae	.label_2091
	inc	rbx
	mov	rcx, rbx
	nop	dword ptr [rax + rax]
.label_2134:
	mov	rbx, rcx
	cmp	rbx, r15
	jae	.label_2091
	movzx	edx, byte ptr [rbx]
	lea	rcx, [rbx + 1]
	cmp	byte ptr [rdx + word_fastmap],  0
	jne	.label_2134
	jmp	.label_2091
.label_2128:
	inc	rbx
	jmp	.label_2091
	nop	
.label_1827:
	mov	rcx, qword ptr [rip + keyafter_max_width]
	add	rcx, r8
	cmp	rbx, rcx
	ja	.label_1769
	mov	qword ptr [rip + label_1778],  rbx
	cmp	qword ptr [rip + word_regex],  0
	je	.label_1779
	mov	rdx, r15
	sub	rdx, rbx
	mov	edi, OFFSET FLAT:label_1814
	xor	ecx, ecx
	xor	r8d, r8d
	mov	rsi, rbx
	call	rpl_re_match
	cmp	rax, -2
	je	.label_1813
	cmp	rax, -1
	mov	ecx, 1
	cmove	rax, rcx
	add	rbx, rax
	mov	r8, qword ptr [rip + keyafter]
.label_2091:
	cmp	rbx, r15
	jb	.label_1827
.label_1769:
	mov	rcx, qword ptr [rip + keyafter_max_width]
	add	rcx, r8
	cmp	rbx, rcx
	jbe	.label_1829
	mov	rbx, qword ptr [rip + label_1778]
	jmp	.label_1834
	nop	word ptr cs:[rax + rax]
.label_1829:
	mov	qword ptr [rip + label_1778],  rbx
.label_1834:
	cmp	rbx, r15
	sbb	cl, cl
	cmp	qword ptr [rip + truncation_string],  0
	setne	dl
	and	dl, cl
	mov	byte ptr [rip + keyafter_truncation],  dl
	cmp	rbx, r8
	jbe	.label_1854
	mov	rax, qword ptr [rsp]
	mov	rcx, qword ptr [rax]
	dec	rbx
	nop	
.label_1858:
	movzx	edx, byte ptr [rbx]
	test	byte ptr [rcx + rdx*2 + 1], 0x20
	je	.label_1854
	mov	qword ptr [rip + label_1778],  rbx
	cmp	rbx, r8
	lea	rbx, [rbx - 1]
	ja	.label_1858
.label_1854:
	mov	rbx, qword ptr [r14 + 0x10]
	mov	rcx, rbx
	neg	rcx
	mov	rdx, qword ptr [rip + maximum_word_length]
	add	rdx, qword ptr [rip + half_line_width]
	cmp	rdx, rcx
	jge	.label_1863
	mov	rbx, r8
	sub	rbx, rdx
	cmp	qword ptr [rip + word_regex],  0
	je	.label_1870
	mov	edi, OFFSET FLAT:label_1814
	xor	ecx, ecx
	xor	r8d, r8d
	mov	rsi, rbx
	call	rpl_re_match
	cmp	rax, -2
	je	.label_1813
	cmp	rax, -1
	mov	ecx, 1
	cmovne	rcx, rax
	add	rbx, rcx
	mov	r8, qword ptr [rip + keyafter]
	jmp	.label_1819
.label_1863:
	add	rbx, r8
.label_1819:
	mov	qword ptr [rip + before],  rbx
	mov	qword ptr [rip + label_1780],  r8
	cmp	r8, rbx
	mov	qword ptr [rsp + 0x28], r14
	jbe	.label_1894
	mov	rax, qword ptr [rsp]
	mov	rsi, qword ptr [rax]
	lea	rdx, [r8 - 1]
	nop	word ptr cs:[rax + rax]
.label_1910:
	mov	rcx, rdx
	movzx	edx, byte ptr [rcx]
	test	byte ptr [rsi + rdx*2 + 1], 0x20
	je	.label_1907
	mov	qword ptr [rip + label_1780],  rcx
	lea	rdx, [rcx - 1]
	cmp	rcx, rbx
	mov	r8, rcx
	ja	.label_1910
	inc	rdx
	mov	r8, rcx
	jmp	.label_1935
	nop	dword ptr [rax + rax]
.label_1894:
	mov	rdx, r8
	jmp	.label_1935
	nop	word ptr cs:[rax + rax]
.label_1907:
	inc	rcx
	mov	rdx, rcx
.label_1935:
	mov	r14, qword ptr [rip + before_max_width]
	lea	rcx, [rbx + r14]
	cmp	rcx, rdx
	jae	.label_1929
	mov	rcx, rbx
	mov	rsi, rbx
.label_1996:
	cmp	qword ptr [rip + word_regex],  0
	je	.label_2002
	sub	rdx, rsi
	mov	edi, OFFSET FLAT:label_1814
	xor	ecx, ecx
	xor	r8d, r8d
	call	rpl_re_match
	cmp	rax, -2
	je	.label_1813
	cmp	rax, -1
	mov	ecx, 1
	cmovne	rcx, rax
	add	rcx, qword ptr [rip + before]
	mov	qword ptr [rip + before],  rcx
	mov	r14, qword ptr [rip + before_max_width]
	mov	r8, qword ptr [rip + label_1780]
	mov	rdx, r8
	mov	rsi, rcx
	jmp	.label_1949
	nop	word ptr [rax + rax]
.label_2002:
	movzx	edi, byte ptr [rsi]
	cmp	byte ptr [rdi + word_fastmap],  0
	je	.label_1782
	cmp	rsi, rdx
	jae	.label_1949
	inc	rsi
	mov	rcx, rsi
	nop	word ptr [rax + rax]
.label_1989:
	mov	rsi, rcx
	mov	qword ptr [rip + before],  rsi
	cmp	rsi, rdx
	jae	.label_1983
	movzx	edi, byte ptr [rsi]
	lea	rcx, [rsi + 1]
	cmp	byte ptr [rdi + word_fastmap],  0
	jne	.label_1989
	dec	rcx
	jmp	.label_1949
.label_1782:
	inc	rsi
	mov	qword ptr [rip + before],  rsi
.label_1983:
	mov	rcx, rsi
.label_1949:
	lea	rdi, [rsi + r14]
	cmp	rdi, rdx
	jb	.label_1996
	jmp	.label_2000
.label_1929:
	mov	rcx, rbx
	mov	rsi, rbx
.label_2000:
	cmp	qword ptr [rip + truncation_string],  0
	je	.label_2070
	mov	rdi, rsi
	nop	word ptr cs:[rax + rax]
.label_2017:
	mov	rdx, rdi
	cmp	rdx, r13
	jbe	.label_2064
	lea	rdi, [rdx - 1]
	movzx	ebp, byte ptr [rdx - 1]
	mov	rax, qword ptr [rsp]
	mov	rax, qword ptr [rax]
	test	byte ptr [rax + rbp*2 + 1], 0x20
	jne	.label_2017
.label_2064:
	cmp	qword ptr [rsp + 0x18], rdx
	setb	dl
	jmp	.label_2025
	nop	dword ptr [rax + rax]
.label_2070:
	xor	edx, edx
.label_2025:
	mov	byte ptr [rip + before_truncation],  dl
	cmp	rsi, r12
	jae	.label_1961
	mov	rax, qword ptr [rsp]
	mov	rdx, qword ptr [rax]
	nop	word ptr cs:[rax + rax]
.label_2051:
	movzx	eax, byte ptr [rsi]
	test	byte ptr [rdx + rax*2 + 1], 0x20
	je	.label_1961
	inc	rsi
	mov	qword ptr [rip + before],  rsi
	cmp	rsi, r12
	mov	rcx, rsi
	jb	.label_2051
.label_1961:
	sub	r14, r8
	add	r14, rcx
	sub	r14, qword ptr [rip + gap_size]
	test	r14, r14
	jle	.label_1987
	mov	rax, qword ptr [rip + label_1778]
	mov	qword ptr [rip + tail],  rax
	cmp	rax, r12
	jae	.label_2067
	mov	rcx, qword ptr [rsp]
	mov	rcx, qword ptr [rcx]
	nop	dword ptr [rax]
.label_2112:
	movzx	edx, byte ptr [rax]
	test	byte ptr [rcx + rdx*2 + 1], 0x20
	je	.label_2067
	inc	rax
	mov	qword ptr [rip + tail],  rax
	cmp	rax, r12
	jb	.label_2112
.label_2067:
	mov	qword ptr [rip + label_1776],  rax
	mov	rbp, rax
	cmp	rax, r15
	jae	.label_2098
	jmp	.label_1770
	nop	
.label_2096:
	movzx	ecx, byte ptr [rbp]
	cmp	byte ptr [rcx + word_fastmap],  0
	je	.label_1937
	cmp	rbp, r15
	jae	.label_2092
	inc	rbp
	mov	rcx, rbp
	nop	dword ptr [rax + rax]
.label_1922:
	mov	rbp, rcx
	cmp	rbp, r15
	jae	.label_2092
	movzx	edx, byte ptr [rbp]
	lea	rcx, [rbp + 1]
	cmp	byte ptr [rdx + word_fastmap],  0
	jne	.label_1922
	jmp	.label_2092
.label_1937:
	inc	rbp
	jmp	.label_2092
.label_1770:
	mov	qword ptr [rip + label_1776],  rbp
	cmp	qword ptr [rip + word_regex],  0
	je	.label_2096
	mov	rdx, r15
	sub	rdx, rbp
	mov	edi, OFFSET FLAT:label_1814
	xor	ecx, ecx
	xor	r8d, r8d
	mov	rsi, rbp
	call	rpl_re_match
	cmp	rax, -2
	je	.label_1813
	cmp	rax, -1
	mov	ecx, 1
	cmovne	rcx, rax
	add	rbp, rcx
	mov	rax, qword ptr [rip + tail]
.label_2092:
	lea	rcx, [rax + r14]
	cmp	rbp, r15
	jae	.label_2125
	cmp	rbp, rcx
	jb	.label_1770
.label_2125:
	cmp	rbp, rcx
	jae	.label_1901
.label_2098:
	mov	r14, qword ptr [rsp + 0x28]
	mov	qword ptr [rip + label_1776],  rbp
	jmp	.label_1777
	nop	dword ptr [rax + rax]
.label_1987:
	pxor	xmm0, xmm0
	movdqu	xmmword ptr [rip + tail],  xmm0
	mov	byte ptr [rip + tail_truncation],  0
	mov	r14, qword ptr [rsp + 0x28]
	jmp	.label_1855
.label_1870:
	movzx	ecx, byte ptr [rbx]
	cmp	byte ptr [rcx + word_fastmap],  0
	je	.label_1911
	neg	rdx
	jns	.label_1819
	lea	rcx, [r8 + rdx + 1]
	nop	dword ptr [rax + rax]
.label_1833:
	mov	rbx, rcx
	cmp	rbx, r8
	jae	.label_1819
	movzx	edx, byte ptr [rbx]
	lea	rcx, [rbx + 1]
	cmp	byte ptr [rdx + word_fastmap],  0
	jne	.label_1833
	jmp	.label_1819
.label_1901:
	mov	rbp, qword ptr [rip + label_1776]
	mov	r14, qword ptr [rsp + 0x28]
.label_1777:
	cmp	rbp, rax
	jbe	.label_2095
	mov	byte ptr [rip + keyafter_truncation],  0
	cmp	rbp, r15
	sbb	dl, dl
	cmp	qword ptr [rip + truncation_string],  0
	setne	cl
	and	cl, dl
	jmp	.label_2133
	nop	dword ptr [rax]
.label_2095:
	xor	ecx, ecx
.label_2133:
	mov	byte ptr [rip + tail_truncation],  cl
	cmp	rbp, rax
	jbe	.label_1855
	mov	rcx, qword ptr [rsp]
	mov	rcx, qword ptr [rcx]
	dec	rbp
	nop	word ptr [rax + rax]
.label_1893:
	movzx	edx, byte ptr [rbp]
	test	byte ptr [rcx + rdx*2 + 1], 0x20
	je	.label_1855
	mov	qword ptr [rip + label_1776],  rbp
	cmp	rbp, rax
	lea	rbp, [rbp - 1]
	ja	.label_1893
	nop	dword ptr [rax + rax]
.label_1855:
	mov	rbp, qword ptr [rip + keyafter_max_width]
	sub	rbp, qword ptr [rip + label_1778]
	add	rbp, qword ptr [rip + keyafter]
	sub	rbp, qword ptr [rip + gap_size]
	test	rbp, rbp
	jle	.label_1843
	mov	rdx, qword ptr [rip + before]
	mov	qword ptr [rip + label_1836],  rdx
	cmp	rdx, r13
	jbe	.label_1886
	mov	rax, qword ptr [rsp]
	mov	rax, qword ptr [rax]
	dec	rdx
	nop	word ptr cs:[rax + rax]
.label_2065:
	movzx	ecx, byte ptr [rdx]
	test	byte ptr [rax + rcx*2 + 1], 0x20
	je	.label_1986
	mov	qword ptr [rip + label_1836],  rdx
	cmp	rdx, r13
	lea	rdx, [rdx - 1]
	ja	.label_2065
.label_1986:
	inc	rdx
.label_1886:
	mov	qword ptr [rip + head],  rbx
	lea	rax, [rbx + rbp]
	cmp	rax, rdx
	mov	r12, qword ptr [rsp + 0x40]
	jae	.label_1905
	jmp	.label_1850
	nop	dword ptr [rax + rax]
.label_2040:
	movzx	eax, byte ptr [rbx]
	cmp	byte ptr [rax + word_fastmap],  0
	je	.label_1912
	cmp	rbx, rdx
	jae	.label_1919
	inc	rbx
	mov	rax, rbx
	nop	dword ptr [rax + rax]
.label_2037:
	mov	rbx, rax
	mov	qword ptr [rip + head],  rbx
	cmp	rbx, rdx
	jae	.label_1919
	movzx	ecx, byte ptr [rbx]
	lea	rax, [rbx + 1]
	cmp	byte ptr [rcx + word_fastmap],  0
	jne	.label_2037
	jmp	.label_1919
.label_1912:
	inc	rbx
	mov	qword ptr [rip + head],  rbx
	jmp	.label_1919
	nop	dword ptr [rax]
.label_1850:
	cmp	qword ptr [rip + word_regex],  0
	je	.label_2040
	sub	rdx, rbx
	mov	edi, OFFSET FLAT:label_1814
	xor	ecx, ecx
	xor	r8d, r8d
	mov	rsi, rbx
	call	rpl_re_match
	cmp	rax, -2
	je	.label_1951
	cmp	rax, -1
	mov	ebx, 1
	cmovne	rbx, rax
	add	rbx, qword ptr [rip + head]
	mov	qword ptr [rip + head],  rbx
	mov	rdx, qword ptr [rip + label_1836]
.label_1919:
	lea	rax, [rbx + rbp]
	cmp	rax, rdx
	jb	.label_1850
.label_1905:
	cmp	rdx, rbx
	jbe	.label_1976
	mov	byte ptr [rip + before_truncation],  0
	cmp	qword ptr [rsp + 0x18], rbx
	sbb	cl, cl
	cmp	qword ptr [rip + truncation_string],  0
	setne	al
	and	al, cl
	jmp	.label_2011
	nop	word ptr cs:[rax + rax]
.label_1843:
	pxor	xmm0, xmm0
	movdqu	xmmword ptr [rip + head],  xmm0
	mov	byte ptr [rip + head_truncation],  0
	mov	r12, qword ptr [rsp + 0x40]
	jmp	.label_1947
	nop	word ptr [rax + rax]
.label_1976:
	xor	eax, eax
.label_2011:
	mov	byte ptr [rip + head_truncation],  al
	cmp	rbx, rdx
	jae	.label_1947
	mov	rax, qword ptr [rsp]
	mov	rax, qword ptr [rax]
	nop	word ptr cs:[rax + rax]
.label_2009:
	movzx	ecx, byte ptr [rbx]
	test	byte ptr [rax + rcx*2 + 1], 0x20
	je	.label_1947
	inc	rbx
	mov	qword ptr [rip + head],  rbx
	cmp	rbx, rdx
	jb	.label_2009
	nop	dword ptr [rax]
.label_1947:
	cmp	byte ptr [rip + auto_reference],  1
	jne	.label_2022
	movsxd	rax, dword ptr [r14 + 0x28]
	mov	rcx, qword ptr [rip + input_file_name]
	mov	rsi, qword ptr [rcx + rax*8]
	test	rsi, rsi
	mov	ecx, OFFSET FLAT:label_400
	cmove	rsi, rcx
	mov	rbx, qword ptr [r14 + 0x20]
	inc	rbx
	test	rax, rax
	jle	.label_2024
	mov	rcx, qword ptr [rip + file_line_count]
	sub	rbx, qword ptr [rcx + rax*8 - 8]
.label_2024:
	mov	rdi, qword ptr [rip + reference]
	call	stpcpy
	mov	rbp, rax
	mov	esi, 1
	mov	rdx, -1
	mov	ecx, OFFSET FLAT:label_2050
	xor	eax, eax
	mov	rdi, rbp
	mov	r8, rbx
	call	__sprintf_chk
	cdqe	
	add	rax, rbp
	mov	qword ptr [rip + label_1878],  rax
	jmp	.label_1884
	nop	word ptr [rax + rax]
.label_2022:
	cmp	byte ptr [rip + input_reference],  1
	jne	.label_1884
	mov	rax, qword ptr [rip + keyafter]
	add	rax, qword ptr [r14 + 0x20]
	mov	qword ptr [rip + reference],  rax
	mov	qword ptr [rip + label_1878],  rax
	cmp	rax, r15
	jae	.label_1884
	mov	rcx, qword ptr [rsp]
	mov	rcx, qword ptr [rcx]
	nop	
.label_2103:
	movzx	edx, byte ptr [rax]
	test	byte ptr [rcx + rdx*2 + 1], 0x20
	jne	.label_1884
	inc	rax
	mov	qword ptr [rip + label_1878],  rax
	cmp	rax, r15
	jb	.label_2103
	nop	dword ptr [rax]
.label_1884:
	mov	eax, dword ptr [rip + output_format]
	cmp	eax, 2
	jb	.label_1916
	je	.label_2116
	cmp	eax, 3
	jne	.label_1914
	mov	rdx, qword ptr [rip + macro_name]
	mov	edi, 1
	mov	esi, OFFSET FLAT:label_2122
	xor	eax, eax
	call	__printf_chk
	mov	rdi, qword ptr [rip + stdout]
	mov	rax, qword ptr [rdi + 0x28]
	cmp	rax, qword ptr [rdi + 0x30]
	jae	.label_2126
	lea	rcx, [rax + 1]
	mov	qword ptr [rdi + 0x28], rcx
	mov	byte ptr [rax], 0x7b
.label_1876:
	mov	rdi, qword ptr [rip + tail]
	mov	rsi, qword ptr [rip + label_1776]
	call	print_field
	mov	rsi, qword ptr [rip + stdout]
	mov	edi, OFFSET FLAT:label_1823
	call	fputs_unlocked
	mov	rdi, qword ptr [rip + before]
	mov	rsi, qword ptr [rip + label_1780]
	call	print_field
	mov	rsi, qword ptr [rip + stdout]
	mov	edi, OFFSET FLAT:label_1823
	call	fputs_unlocked
	mov	rbp, qword ptr [rip + keyafter]
	mov	r15, qword ptr [rip + label_1778]
	cmp	qword ptr [rip + word_regex],  0
	je	.label_1856
	mov	rdx, r15
	sub	rdx, rbp
	mov	edi, OFFSET FLAT:label_1814
	xor	ecx, ecx
	xor	r8d, r8d
	mov	rsi, rbp
	call	rpl_re_match
	cmp	rax, -2
	je	.label_1951
	cmp	rax, -1
	mov	ebx, 1
	cmovne	rbx, rax
	add	rbx, rbp
.label_1771:
	mov	rdi, rbp
	mov	rsi, rbx
	call	print_field
	mov	rsi, qword ptr [rip + stdout]
	mov	edi, OFFSET FLAT:label_1823
	call	fputs_unlocked
	mov	rdi, rbx
	mov	rsi, r15
	call	print_field
	mov	rsi, qword ptr [rip + stdout]
	mov	edi, OFFSET FLAT:label_1823
	call	fputs_unlocked
	mov	rdi, qword ptr [rip + head]
	mov	rsi, qword ptr [rip + label_1836]
	call	print_field
	mov	rdi, qword ptr [rip + stdout]
	mov	rax, qword ptr [rdi + 0x28]
	cmp	rax, qword ptr [rdi + 0x30]
	jae	.label_1957
	lea	rcx, [rax + 1]
	mov	qword ptr [rdi + 0x28], rcx
	mov	byte ptr [rax], 0x7d
.label_2041:
	mov	al, byte ptr [rip + auto_reference]
	test	al, al
	jne	.label_1866
	cmp	byte ptr [rip + input_reference],  1
	jne	.label_1844
.label_1866:
	mov	rdi, qword ptr [rip + stdout]
	mov	rax, qword ptr [rdi + 0x28]
	cmp	rax, qword ptr [rdi + 0x30]
	jae	.label_1872
	lea	rcx, [rax + 1]
	mov	qword ptr [rdi + 0x28], rcx
	mov	byte ptr [rax], 0x7b
.label_2072:
	mov	rdi, qword ptr [rip + reference]
	mov	rsi, qword ptr [rip + label_1878]
	call	print_field
	mov	rdi, qword ptr [rip + stdout]
	mov	rax, qword ptr [rdi + 0x28]
	cmp	rax, qword ptr [rdi + 0x30]
	jae	.label_2032
	lea	rcx, [rax + 1]
	mov	qword ptr [rdi + 0x28], rcx
	mov	byte ptr [rax], 0x7d
	jmp	.label_1844
	nop	word ptr cs:[rax + rax]
.label_1916:
	mov	al, byte ptr [rip + right_reference]
	test	al, al
	jne	.label_1839
	mov	bl, byte ptr [rip + auto_reference]
	mov	rdi, qword ptr [rip + reference]
	mov	rsi, qword ptr [rip + label_1878]
	call	print_field
	cmp	bl, 1
	jne	.label_1913
	mov	rdi, qword ptr [rip + stdout]
	mov	rax, qword ptr [rdi + 0x28]
	cmp	rax, qword ptr [rdi + 0x30]
	jae	.label_1923
	lea	rcx, [rax + 1]
	mov	qword ptr [rdi + 0x28], rcx
	mov	byte ptr [rax], 0x3a
.label_2099:
	mov	rax, qword ptr [rip + gap_size]
	add	rax, qword ptr [rip + reference_max_width]
	mov	rbx, qword ptr [rip + reference]
	sub	rbx, qword ptr [rip + label_1878]
	add	rbx, rax
	cmp	rbx, 2
	jl	.label_1839
	jmp	.label_1974
.label_2116:
	mov	rdx, qword ptr [rip + macro_name]
	mov	edi, 1
	mov	esi, OFFSET FLAT:label_1940
	xor	eax, eax
	call	__printf_chk
	mov	rdi, qword ptr [rip + tail]
	mov	rsi, qword ptr [rip + label_1776]
	call	print_field
	cmp	byte ptr [rip + tail_truncation],  0
	je	.label_2130
	mov	rdi, qword ptr [rip + truncation_string]
	mov	rsi, qword ptr [rip + stdout]
	call	fputs_unlocked
.label_2130:
	mov	rdi, qword ptr [rip + stdout]
	mov	rax, qword ptr [rdi + 0x28]
	cmp	rax, qword ptr [rdi + 0x30]
	jae	.label_1966
	lea	rcx, [rax + 1]
	mov	qword ptr [rdi + 0x28], rcx
	mov	byte ptr [rax], 0x22
.label_2046:
	mov	rsi, qword ptr [rip + stdout]
	mov	edi, OFFSET FLAT:label_1840
	call	fputs_unlocked
	cmp	byte ptr [rip + before_truncation],  0
	je	.label_1928
	mov	rdi, qword ptr [rip + truncation_string]
	mov	rsi, qword ptr [rip + stdout]
	call	fputs_unlocked
.label_1928:
	mov	rdi, qword ptr [rip + before]
	mov	rsi, qword ptr [rip + label_1780]
	call	print_field
	mov	rdi, qword ptr [rip + stdout]
	mov	rax, qword ptr [rdi + 0x28]
	cmp	rax, qword ptr [rdi + 0x30]
	jae	.label_2026
	lea	rcx, [rax + 1]
	mov	qword ptr [rdi + 0x28], rcx
	mov	byte ptr [rax], 0x22
.label_2110:
	mov	rsi, qword ptr [rip + stdout]
	mov	edi, OFFSET FLAT:label_1840
	call	fputs_unlocked
	mov	rdi, qword ptr [rip + keyafter]
	mov	rsi, qword ptr [rip + label_1778]
	call	print_field
	cmp	byte ptr [rip + keyafter_truncation],  0
	je	.label_1826
	mov	rdi, qword ptr [rip + truncation_string]
	mov	rsi, qword ptr [rip + stdout]
	call	fputs_unlocked
.label_1826:
	mov	rdi, qword ptr [rip + stdout]
	mov	rax, qword ptr [rdi + 0x28]
	cmp	rax, qword ptr [rdi + 0x30]
	jae	.label_2035
	lea	rcx, [rax + 1]
	mov	qword ptr [rdi + 0x28], rcx
	mov	byte ptr [rax], 0x22
.label_2060:
	mov	rsi, qword ptr [rip + stdout]
	mov	edi, OFFSET FLAT:label_1840
	call	fputs_unlocked
	cmp	byte ptr [rip + head_truncation],  0
	je	.label_2055
	mov	rdi, qword ptr [rip + truncation_string]
	mov	rsi, qword ptr [rip + stdout]
	call	fputs_unlocked
.label_2055:
	mov	rdi, qword ptr [rip + head]
	mov	rsi, qword ptr [rip + label_1836]
	call	print_field
	mov	rdi, qword ptr [rip + stdout]
	mov	rax, qword ptr [rdi + 0x28]
	cmp	rax, qword ptr [rdi + 0x30]
	jae	.label_1835
	lea	rcx, [rax + 1]
	mov	qword ptr [rdi + 0x28], rcx
	mov	byte ptr [rax], 0x22
.label_1936:
	mov	al, byte ptr [rip + auto_reference]
	test	al, al
	jne	.label_2097
	cmp	byte ptr [rip + input_reference],  1
	jne	.label_1844
.label_2097:
	mov	rsi, qword ptr [rip + stdout]
	mov	edi, OFFSET FLAT:label_1840
	call	fputs_unlocked
	mov	rdi, qword ptr [rip + reference]
	mov	rsi, qword ptr [rip + label_1878]
	call	print_field
	mov	rdi, qword ptr [rip + stdout]
	mov	rax, qword ptr [rdi + 0x28]
	cmp	rax, qword ptr [rdi + 0x30]
	jae	.label_1941
	lea	rcx, [rax + 1]
	mov	qword ptr [rdi + 0x28], rcx
	mov	byte ptr [rax], 0x22
	jmp	.label_1844
.label_1913:
	mov	rax, qword ptr [rip + reference_max_width]
	mov	rdx, qword ptr [rip + gap_size]
	lea	rdi, [rdx + rax]
	mov	rcx, qword ptr [rip + label_1878]
	mov	rbp, qword ptr [rip + reference]
	mov	rsi, rbp
	sub	rsi, rcx
	add	rsi, rdi
	test	rsi, rsi
	jle	.label_1839
	add	rbp, rdx
	lea	rbx, [rax + rbp + 1]
	sub	rbx, rcx
	jmp	.label_2073
.label_1856:
	movzx	eax, byte ptr [rbp]
	cmp	byte ptr [rax + word_fastmap],  0
	je	.label_2138
	cmp	rbp, r15
	mov	rbx, rbp
	jae	.label_1771
	lea	rax, [rbp + 1]
	nop	word ptr cs:[rax + rax]
.label_1808:
	mov	rbx, rax
	cmp	rbx, r15
	jae	.label_1771
	movzx	ecx, byte ptr [rbx]
	lea	rax, [rbx + 1]
	cmp	byte ptr [rcx + word_fastmap],  0
	jne	.label_1808
	jmp	.label_1771
.label_1911:
	inc	rbx
	jmp	.label_1819
.label_2138:
	lea	rbx, [rbp + 1]
	jmp	.label_1771
.label_2135:
	mov	esi, 0x20
	call	__overflow
	jmp	.label_2063
	nop	
.label_2073:
	mov	rdi, qword ptr [rip + stdout]
	mov	rax, qword ptr [rdi + 0x28]
	cmp	rax, qword ptr [rdi + 0x30]
	jae	.label_2135
	lea	rcx, [rax + 1]
	mov	qword ptr [rdi + 0x28], rcx
	mov	byte ptr [rax], 0x20
.label_2063:
	dec	rbx
	cmp	rbx, 1
	jg	.label_2073
	jmp	.label_1839
.label_2104:
	mov	esi, 0x20
	call	__overflow
	jmp	.label_1930
	nop	word ptr cs:[rax + rax]
.label_1974:
	dec	rbx
	mov	rdi, qword ptr [rip + stdout]
	mov	rax, qword ptr [rdi + 0x28]
	cmp	rax, qword ptr [rdi + 0x30]
	jae	.label_2104
	lea	rcx, [rax + 1]
	mov	qword ptr [rdi + 0x28], rcx
	mov	byte ptr [rax], 0x20
.label_1930:
	cmp	rbx, 1
	jg	.label_1974
	nop	word ptr cs:[rax + rax]
.label_1839:
	mov	rdi, qword ptr [rip + tail]
	mov	rsi, qword ptr [rip + label_1776]
	cmp	rdi, rsi
	jae	.label_1820
	call	print_field
	cmp	byte ptr [rip + tail_truncation],  0
	je	.label_1871
	mov	rdi, qword ptr [rip + truncation_string]
	mov	rsi, qword ptr [rip + stdout]
	call	fputs_unlocked
	mov	cl, byte ptr [rip + tail_truncation]
	jmp	.label_1883
.label_1820:
	mov	rbp, qword ptr [rip + half_line_width]
	mov	rcx, qword ptr [rip + gap_size]
	mov	rax, qword ptr [rip + label_1780]
	mov	rsi, qword ptr [rip + before]
	xor	edi, edi
	sub	rdi, qword ptr [rip + truncation_string_length]
	cmp	byte ptr [rip + before_truncation],  0
	mov	edx, 0
	cmove	rdi, rdx
	mov	rdx, rbp
	sub	rdx, rcx
	sub	rdx, rax
	add	rdx, rsi
	add	rdx, rdi
	test	rdx, rdx
	jle	.label_1781
	add	rdi, rbp
	lea	rbx, [rsi + rdi + 1]
	sub	rbx, rcx
	sub	rbx, rax
	jmp	.label_1890
.label_1871:
	xor	ecx, ecx
.label_1883:
	mov	rdx, qword ptr [rip + half_line_width]
	mov	r9, qword ptr [rip + gap_size]
	mov	r8, qword ptr [rip + label_1780]
	mov	rsi, qword ptr [rip + before]
	xor	ebx, ebx
	sub	rbx, qword ptr [rip + truncation_string_length]
	cmp	byte ptr [rip + before_truncation],  0
	mov	ebp, 0
	cmovne	rbp, rbx
	mov	rdi, qword ptr [rip + label_1776]
	mov	rax, qword ptr [rip + tail]
	test	cl, cl
	mov	ecx, 0
	cmove	rbx, rcx
	mov	rcx, rdx
	sub	rcx, r9
	sub	rcx, r8
	add	rcx, rsi
	add	rcx, rbp
	sub	rcx, rdi
	add	rcx, rbx
	add	rcx, rax
	test	rcx, rcx
	jle	.label_1781
	add	rbp, rbx
	add	rbp, rdx
	add	rbp, rsi
	lea	rbx, [rax + rbp + 1]
	sub	rbx, r9
	sub	rbx, r8
	sub	rbx, rdi
	jmp	.label_2003
.label_2008:
	mov	esi, 0x20
	call	__overflow
	jmp	.label_1857
	nop	word ptr cs:[rax + rax]
.label_1890:
	mov	rdi, qword ptr [rip + stdout]
	mov	rax, qword ptr [rdi + 0x28]
	cmp	rax, qword ptr [rdi + 0x30]
	jae	.label_2008
	lea	rcx, [rax + 1]
	mov	qword ptr [rdi + 0x28], rcx
	mov	byte ptr [rax], 0x20
.label_1857:
	dec	rbx
	cmp	rbx, 1
	jg	.label_1890
	jmp	.label_1781
.label_1968:
	mov	esi, 0x20
	call	__overflow
	jmp	.label_1917
	nop	word ptr cs:[rax + rax]
.label_2003:
	mov	rdi, qword ptr [rip + stdout]
	mov	rax, qword ptr [rdi + 0x28]
	cmp	rax, qword ptr [rdi + 0x30]
	jae	.label_1968
	lea	rcx, [rax + 1]
	mov	qword ptr [rdi + 0x28], rcx
	mov	byte ptr [rax], 0x20
.label_1917:
	dec	rbx
	cmp	rbx, 1
	jg	.label_2003
.label_1781:
	cmp	byte ptr [rip + before_truncation],  0
	je	.label_1998
	mov	rdi, qword ptr [rip + truncation_string]
	mov	rsi, qword ptr [rip + stdout]
	call	fputs_unlocked
.label_1998:
	mov	rdi, qword ptr [rip + before]
	mov	rsi, qword ptr [rip + label_1780]
	call	print_field
	mov	rbx, qword ptr [rip + gap_size]
	test	rbx, rbx
	jle	.label_2137
	inc	rbx
	jmp	.label_1918
.label_1889:
	mov	esi, 0x20
	call	__overflow
	jmp	.label_2066
	nop	word ptr cs:[rax + rax]
.label_1918:
	mov	rdi, qword ptr [rip + stdout]
	mov	rax, qword ptr [rdi + 0x28]
	cmp	rax, qword ptr [rdi + 0x30]
	jae	.label_1889
	lea	rcx, [rax + 1]
	mov	qword ptr [rdi + 0x28], rcx
	mov	byte ptr [rax], 0x20
.label_2066:
	dec	rbx
	cmp	rbx, 1
	jg	.label_1918
.label_2137:
	mov	rdi, qword ptr [rip + keyafter]
	mov	rsi, qword ptr [rip + label_1778]
	call	print_field
	cmp	byte ptr [rip + keyafter_truncation],  0
	je	.label_2056
	mov	rdi, qword ptr [rip + truncation_string]
	mov	rsi, qword ptr [rip + stdout]
	call	fputs_unlocked
.label_2056:
	mov	rcx, qword ptr [rip + head]
	mov	rsi, qword ptr [rip + label_1836]
	mov	rdi, rcx
	sub	rdi, rsi
	jae	.label_2069
	mov	r9, qword ptr [rip + half_line_width]
	mov	r8, qword ptr [rip + label_1778]
	xor	edx, edx
	sub	rdx, qword ptr [rip + truncation_string_length]
	cmp	byte ptr [rip + keyafter_truncation],  0
	mov	r10, qword ptr [rip + keyafter]
	mov	ebx, 0
	cmovne	rbx, rdx
	mov	al, byte ptr [rip + head_truncation]
	test	al, al
	mov	ebp, 0
	cmove	rdx, rbp
	add	rdi, r9
	sub	rdi, r8
	add	rdi, r10
	add	rdi, rbx
	add	rdi, rdx
	test	rdi, rdi
	jle	.label_2089
	add	rbx, rdx
	add	rbx, rcx
	add	rbx, r9
	lea	rbx, [r10 + rbx + 1]
	sub	rbx, rsi
	sub	rbx, r8
	jmp	.label_1906
.label_2069:
	mov	al, byte ptr [rip + auto_reference]
	test	al, al
	jne	.label_2124
	cmp	byte ptr [rip + input_reference],  1
	jne	.label_1817
.label_2124:
	cmp	byte ptr [rip + right_reference],  1
	jne	.label_1817
	mov	rcx, qword ptr [rip + half_line_width]
	mov	rax, qword ptr [rip + label_1778]
	mov	rdx, qword ptr [rip + keyafter]
	xor	esi, esi
	sub	rsi, qword ptr [rip + truncation_string_length]
	cmp	byte ptr [rip + keyafter_truncation],  0
	mov	edi, 0
	cmove	rsi, rdi
	mov	rdi, rcx
	sub	rdi, rax
	add	rdi, rdx
	add	rdi, rsi
	test	rdi, rdi
	jle	.label_1817
	add	rsi, rcx
	lea	rbx, [rdx + rsi + 1]
	sub	rbx, rax
	jmp	.label_2018
.label_1821:
	mov	esi, 0x20
	call	__overflow
	jmp	.label_1955
	nop	dword ptr [rax]
.label_1906:
	mov	rdi, qword ptr [rip + stdout]
	mov	rax, qword ptr [rdi + 0x28]
	cmp	rax, qword ptr [rdi + 0x30]
	jae	.label_1821
	lea	rcx, [rax + 1]
	mov	qword ptr [rdi + 0x28], rcx
	mov	byte ptr [rax], 0x20
.label_1955:
	dec	rbx
	cmp	rbx, 1
	jg	.label_1906
	mov	al, byte ptr [rip + head_truncation]
.label_2089:
	test	al, al
	je	.label_1828
	mov	rdi, qword ptr [rip + truncation_string]
	mov	rsi, qword ptr [rip + stdout]
	call	fputs_unlocked
.label_1828:
	mov	rdi, qword ptr [rip + head]
	mov	rsi, qword ptr [rip + label_1836]
	call	print_field
.label_1817:
	mov	al, byte ptr [rip + auto_reference]
	test	al, al
	jne	.label_1977
	cmp	byte ptr [rip + input_reference],  1
	jne	.label_1844
.label_1977:
	cmp	byte ptr [rip + right_reference],  1
	jne	.label_1844
	mov	rbx, qword ptr [rip + gap_size]
	test	rbx, rbx
	jle	.label_2007
	inc	rbx
	jmp	.label_1853
.label_1860:
	mov	esi, 0x20
	call	__overflow
	jmp	.label_1832
	nop	
.label_1853:
	mov	rdi, qword ptr [rip + stdout]
	mov	rax, qword ptr [rdi + 0x28]
	cmp	rax, qword ptr [rdi + 0x30]
	jae	.label_1860
	lea	rcx, [rax + 1]
	mov	qword ptr [rdi + 0x28], rcx
	mov	byte ptr [rax], 0x20
.label_1832:
	dec	rbx
	cmp	rbx, 1
	jg	.label_1853
.label_2007:
	mov	rdi, qword ptr [rip + reference]
	mov	rsi, qword ptr [rip + label_1878]
	call	print_field
	nop	dword ptr [rax + rax]
.label_1844:
	mov	rdi, qword ptr [rip + stdout]
	mov	rax, qword ptr [rdi + 0x28]
	cmp	rax, qword ptr [rdi + 0x30]
	jae	.label_1880
	lea	rcx, [rax + 1]
	mov	qword ptr [rdi + 0x28], rcx
	mov	byte ptr [rax], 0xa
.label_1914:
	add	r14, 0x30
	inc	r12
	cmp	r12, qword ptr [rip + number_of_occurs.0]
	jl	.label_1891
.label_1892:
	xor	eax, eax
	add	rsp, 0x68
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_2132:
	call	matcher_error
.label_1813:
	call	matcher_error
.label_1951:
	call	matcher_error
.label_1958:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_1900
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
	mov	rdi, qword ptr [rip + context_regex]
.label_1963:
	call	quote
	mov	rcx, rax
	mov	edi, 1
	xor	esi, esi
	xor	eax, eax
	mov	rdx, rbx
	call	error
.label_1882:
	call	matcher_error
.label_2049:
	cmp	eax, 0xffffff7d
	je	.label_1920
	cmp	eax, 0xffffff7e
	jne	.label_1924
	xor	edi, edi
	call	usage
.label_1924:
	mov	edi, 1
	call	usage
.label_1920:
	mov	r14, qword ptr [rip + stdout]
	mov	rbp, qword ptr [rip + Version]
	mov	edi, OFFSET FLAT:label_1932
	mov	esi, OFFSET FLAT:label_1933
	call	proper_name_utf8
	mov	rbx, rax
	mov	esi, OFFSET FLAT:label_1148
	mov	edx, OFFSET FLAT:label_479
	xor	r9d, r9d
	xor	eax, eax
	mov	rdi, r14
	mov	rcx, rbp
	mov	r8, rbx
	call	version_etc
	xor	edi, edi
	call	exit
.label_1783:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_1952
	jmp	.label_1953
.label_1830:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_1956
.label_1953:
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
	mov	rdi, qword ptr [rip + optarg]
	jmp	.label_1963
.label_1848:
	call	xalloc_die
.label_1984:
	call	xalloc_die
.label_2043:
	call	xalloc_die
.label_1994:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_1978
	mov	edx, 5
	call	dcgettext
	mov	rbp, rax
	movsxd	rax, dword ptr [rip + optind]
	mov	rdi, qword ptr [rbx + rax*8]
	call	quote
	mov	rcx, rax
	xor	edi, edi
	xor	esi, esi
	xor	eax, eax
	mov	rdx, rbp
	call	error
	mov	edi, 1
	call	usage
.label_1988:
	call	__errno_location
	mov	ebp, dword ptr [rax]
	movsxd	rax, dword ptr [rip + optind]
	mov	rdx, qword ptr [rbx + rax*8]
	xor	edi, edi
	mov	esi, 3
	call	quotearg_n_style_colon
	mov	rcx, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:label_378
	xor	eax, eax
	mov	esi, ebp
	call	error
	nop	dword ptr [rax + rax]
	push	r15
	push	r14
	push	rbx
	mov	r14, qword ptr [rip + slotvec]
	cmp	dword ptr [rip + nslots],  2
	jl	.label_446
	lea	r15, [r14 + 0x18]
	mov	ebx, 1
	nop	
.label_451:
	mov	rdi, qword ptr [r15]
	call	free
	inc	rbx
	movsxd	rax, dword ptr [rip + nslots]
	add	r15, 0x10
	cmp	rbx, rax
	jl	.label_451
.label_446:
	mov	rdi, qword ptr [r14 + 8]
	mov	eax, OFFSET FLAT:slot0
	cmp	rdi, rax
	je	.label_454
	call	free
	mov	qword ptr [rip + slotvec0],  0x100
	mov	qword ptr [rip + label_457], OFFSET FLAT:slot0
.label_454:
	mov	eax, OFFSET FLAT:slotvec0
	cmp	r14, rax
	je	.label_460
	mov	rdi, r14
	call	free
	mov	qword ptr [rip + slotvec], OFFSET FLAT:slotvec0
.label_460:
	mov	dword ptr [rip + nslots],  1
	pop	rbx
	pop	r14
	pop	r15
	ret	
	nop	word ptr cs:[rax + rax]
	push	rax
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_470
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:label_472
	xor	eax, eax
	mov	rsi, rcx
	call	__printf_chk
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_474
	mov	edx, 5
	call	dcgettext
	mov	rsi, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:label_479
	mov	ecx, OFFSET FLAT:label_480
	xor	eax, eax
	call	__printf_chk
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_485
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	pop	rax
	jmp	fputs_unlocked
	nop	word ptr cs:[rax + rax]
.label_2140:
	mov	edx, dword ptr [rbx + 0x70]
	jmp	.label_490
	.section	.text
	.align	32
	#Procedure 0x411bc5

	.globl re_string_context_at
	.type re_string_context_at, @function
re_string_context_at:
	push	rbp
	push	rbx
	push	rax
	mov	rbx, rdi
	test	rsi, rsi
	js	.label_2140
	cmp	qword ptr [rbx + 0x58], rsi
	je	.label_2142
	cmp	dword ptr [rbx + 0x90], 2
	jl	.label_2143
	mov	rax, qword ptr [rbx + 0x10]
	inc	rsi
	nop	dword ptr [rax]
.label_2145:
	mov	ebp, dword ptr [rax + rsi*4 - 4]
	cmp	ebp, -1
	jne	.label_2146
	dec	rsi
	test	rsi, rsi
	jg	.label_2145
	mov	edx, dword ptr [rbx + 0x70]
	jmp	.label_490
.label_2142:
	and	edx, 2
	xor	edx, 0xa
	jmp	.label_490
.label_2146:
	cmp	byte ptr [rbx + 0x8e], 0
	jne	.label_2141
.label_2144:
	xor	edx, edx
	cmp	ebp, 0xa
	jne	.label_490
.label_2139:
	xor	edx, edx
	cmp	byte ptr [rbx + 0x8d], 0
	setne	dl
	add	edx, edx
.label_490:
	mov	eax, edx
	add	rsp, 8
	pop	rbx
	pop	rbp
	ret	
.label_2143:
	mov	rax, qword ptr [rbx + 8]
	mov	rcx, qword ptr [rbx + 0x80]
	movzx	eax, byte ptr [rax + rsi]
	mov	edx, eax
	shr	dl, 6
	movzx	edx, dl
	mov	rcx, qword ptr [rcx + rdx*8]
	mov	edx, 1
	bt	rcx, rax
	jb	.label_490
	xor	edx, edx
	cmp	al, 0xa
	je	.label_2139
	jmp	.label_490
.label_2141:
	mov	edi, ebp
	call	iswalnum
	cmp	ebp, 0x5f
	mov	edx, 1
	je	.label_490
	test	eax, eax
	je	.label_2144
	jmp	.label_490
	nop	
	.section	.text
	.align	32
	#Procedure 0x411c80

	.globl sift_states_backward
	.type sift_states_backward, @function
sift_states_backward:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x58
	mov	r14, rsi
	mov	r13, rdi
	mov	r15, qword ptr [r14 + 0x18]
	mov	rbx, qword ptr [r14 + 0x10]
	movaps	xmm0, xmmword ptr [rip + label_211]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	mov	edi, 8
	call	malloc
	mov	qword ptr [rsp + 0x30], rax
	test	rax, rax
	je	.label_2157
	mov	qword ptr [rax], rbx
	lea	rcx, [rsp + 0x20]
	mov	rdi, r13
	mov	rsi, r14
	mov	rdx, r15
	call	update_cur_sifted_state
	mov	ebp, eax
	test	ebp, ebp
	jne	.label_2153
	lea	rax, [r14 + 0x20]
	mov	qword ptr [rsp + 0x38], rax
	mov	dword ptr [rsp + 0x14], 0
	nop	word ptr cs:[rax + rax]
.label_2152:
	mov	rdx, r15
	test	rdx, rdx
	jle	.label_2147
	mov	rdi, qword ptr [r14]
	mov	ecx, dword ptr [rsp + 0x14]
	inc	ecx
	cmp	qword ptr [rdi + rdx*8], 0
	mov	eax, 0
	cmovne	ecx, eax
	cmp	ecx, dword ptr [r13 + 0xe0]
	jg	.label_2150
	mov	dword ptr [rsp + 0x14], ecx
	mov	qword ptr [rsp + 0x28], 0
	lea	r15, [rdx - 1]
	mov	rax, qword ptr [r13 + 0xb8]
	mov	qword ptr [rsp + 0x40], rdx
	mov	rax, qword ptr [rax + rdx*8 - 8]
	test	rax, rax
	je	.label_2155
	cmp	qword ptr [rax + 0x28], 0
	jle	.label_2155
	mov	rcx, qword ptr [r13 + 0x98]
	mov	qword ptr [rsp + 0x18], rcx
	xor	ebx, ebx
	mov	qword ptr [rsp + 0x50], rax
	nop	dword ptr [rax + rax]
.label_2164:
	mov	rax, qword ptr [rax + 0x30]
	mov	r12, qword ptr [rax + rbx*8]
	mov	rax, qword ptr [rsp + 0x18]
	mov	rax, qword ptr [rax]
	mov	rcx, r12
	mov	qword ptr [rsp + 8], rcx
	shl	r12, 4
	test	byte ptr [rax + r12 + 0xa], 0x10
	je	.label_2148
	mov	rax, r14
	mov	r14, r15
	mov	r15, rax
	mov	rdx, r13
	mov	rax, qword ptr [rax + 0x18]
	mov	qword ptr [rsp + 0x48], rax
	mov	rbp, qword ptr [rdx + 0x98]
	mov	rdi, rbp
	mov	rsi, qword ptr [rsp + 8]
	mov	rcx, r14
	call	check_node_accept_bytes
	test	eax, eax
	jle	.label_2161
	movsxd	rcx, eax
	mov	rsi, r14
	add	rcx, r14
	cmp	rcx, qword ptr [rsp + 0x48]
	jle	.label_2162
	mov	r14, r15
	mov	r15, rsi
	jmp	.label_2163
.label_2161:
	mov	rcx, r15
	mov	r15, r14
	mov	r14, rcx
	jne	.label_2163
	jmp	.label_2148
.label_2162:
	mov	r14, r15
	mov	rdx, qword ptr [r14]
	mov	rdx, qword ptr [rdx + rcx*8]
	test	rdx, rdx
	mov	r15, rsi
	je	.label_2148
	mov	rsi, qword ptr [rdx + 0x10]
	test	rsi, rsi
	jle	.label_2148
	mov	rcx, qword ptr [rbp + 0x18]
	mov	rdi, qword ptr [rsp + 8]
	mov	r8, qword ptr [rcx + rdi*8]
	dec	rsi
	mov	rdx, qword ptr [rdx + 0x18]
	mov	edi, 0
	je	.label_2154
	xor	edi, edi
	nop	dword ptr [rax]
.label_2165:
	lea	rbp, [rdi + rsi]
	shr	rbp, 1
	cmp	qword ptr [rdx + rbp*8], r8
	lea	rcx, [rbp + 1]
	cmovl	rdi, rcx
	cmovge	rsi, rbp
	cmp	rdi, rsi
	jb	.label_2165
.label_2154:
	test	eax, eax
	je	.label_2148
	cmp	rdi, -1
	je	.label_2148
	cmp	qword ptr [rdx + rdi*8], r8
	je	.label_2163
.label_2148:
	mov	rax, qword ptr [rsp + 0x18]
	add	r12, qword ptr [rax]
	mov	rdi, r13
	mov	rsi, r12
	mov	rdx, r15
	call	check_node_accept
	test	al, al
	je	.label_2149
	mov	rax, qword ptr [r14]
	mov	rcx, qword ptr [rsp + 0x40]
	mov	rdx, qword ptr [rax + rcx*8]
	test	rdx, rdx
	je	.label_2149
	mov	rax, qword ptr [rdx + 0x10]
	test	rax, rax
	jle	.label_2149
	mov	rcx, qword ptr [rsp + 0x18]
	mov	rcx, qword ptr [rcx + 0x18]
	mov	rsi, qword ptr [rsp + 8]
	mov	rcx, qword ptr [rcx + rsi*8]
	dec	rax
	mov	rdx, qword ptr [rdx + 0x18]
	mov	esi, 0
	je	.label_2156
	xor	esi, esi
	nop	word ptr cs:[rax + rax]
.label_2159:
	lea	rdi, [rsi + rax]
	shr	rdi, 1
	cmp	qword ptr [rdx + rdi*8], rcx
	lea	rbp, [rdi + 1]
	cmovl	rsi, rbp
	cmovge	rax, rdi
	cmp	rsi, rax
	jb	.label_2159
.label_2156:
	cmp	rsi, -1
	je	.label_2149
	mov	eax, 1
	cmp	qword ptr [rdx + rsi*8], rcx
	jne	.label_2149
	nop	dword ptr [rax]
.label_2163:
	cmp	qword ptr [r14 + 0x28], 0
	je	.label_2151
	movsxd	rcx, eax
	add	rcx, r15
	mov	rax, qword ptr [rsp + 0x18]
	mov	rax, qword ptr [rax + 0x18]
	mov	r8, qword ptr [rsp + 8]
	mov	rdx, qword ptr [rax + r8*8]
	mov	rdi, r13
	mov	rsi, qword ptr [rsp + 0x38]
	mov	r9, r15
	call	check_dst_limits
	mov	ecx, 4
	test	al, al
	jne	.label_2158
.label_2151:
	lea	rdi, [rsp + 0x20]
	mov	rsi, qword ptr [rsp + 8]
	call	re_node_set_insert
	movzx	ecx, al
	xor	ecx, 1
.label_2158:
	or	cl, 4
	mov	ebp, 0xc
	and	cl, 7
	cmp	cl, 4
	jne	.label_2153
.label_2149:
	inc	rbx
	mov	rax, qword ptr [rsp + 0x50]
	cmp	rbx, qword ptr [rax + 0x28]
	jl	.label_2164
.label_2155:
	mov	rdi, r13
	mov	rsi, r14
	mov	rdx, r15
	lea	rcx, [rsp + 0x20]
	call	update_cur_sifted_state
	mov	ebp, eax
	test	ebp, ebp
	je	.label_2152
	jmp	.label_2153
.label_2147:
	xor	ebp, ebp
	jmp	.label_2153
.label_2150:
	shl	rdx, 3
	xor	ebp, ebp
	xor	esi, esi
	call	memset
.label_2153:
	mov	rdi, qword ptr [rsp + 0x30]
	call	free
.label_2160:
	mov	eax, ebp
	add	rsp, 0x58
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_2157:
	xorps	xmm0, xmm0
	movaps	xmmword ptr [rsp + 0x20], xmm0
	mov	ebp, 0xc
	jmp	.label_2160
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x411fe0

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
	jne	.label_2166
	mov	rax, qword ptr [rbx + 0x28]
	cmp	rax, qword ptr [rbx + 0x20]
	jne	.label_2166
	cmp	qword ptr [rbx + 0x48], 0
	je	.label_2167
.label_2166:
	mov	rdi, rbx
	mov	rsi, rbp
	mov	edx, r14d
	pop	rbx
	pop	r14
	pop	rbp
	jmp	fseeko
.label_2167:
	mov	rdi, rbx
	call	fileno
	mov	edi, eax
	mov	rsi, rbp
	mov	edx, r14d
	call	lseek
	mov	rcx, rax
	mov	eax, 0xffffffff
	cmp	rcx, -1
	je	.label_2168
	and	byte ptr [rbx], 0xef
	mov	qword ptr [rbx + 0x90], rcx
	xor	eax, eax
.label_2168:
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	nop	
.label_2169:
	mov	ebx, 0xffffffff
	test	eax, eax
	jne	.label_110
	call	__errno_location
	mov	dword ptr [rax], 0
.label_110:
	mov	eax, ebx
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x41206b

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
	jne	.label_2169
	test	eax, eax
	sete	cl
	neg	eax
	sbb	ebx, ebx
	test	r14, r14
	jne	.label_110
	test	cl, cl
	jne	.label_110
	call	__errno_location
	xor	ecx, ecx
	cmp	dword ptr [rax], 9
	mov	ebx, 0xffffffff
	cmove	ebx, ecx
	jmp	.label_110
	.section	.text
	.align	32
	#Procedure 0x4120b0

	.globl optimize_subexps
	.type optimize_subexps, @function
optimize_subexps:
	mov	al, byte ptr [rsi + 0x30]
	cmp	al, 0x11
	je	.label_2170
	cmp	al, 4
	jne	.label_2172
	mov	rax, qword ptr [rdi + 0xe0]
	test	rax, rax
	je	.label_2172
	movsxd	rcx, dword ptr [rsi + 0x28]
	mov	rcx, qword ptr [rax + rcx*8]
	mov	qword ptr [rsi + 0x28], rcx
	mov	eax, 1
	shl	eax, cl
	cdqe	
	or	qword ptr [rdi + 0xa0], rax
	xor	eax, eax
	ret	
.label_2170:
	mov	rax, qword ptr [rsi + 8]
	test	rax, rax
	je	.label_2172
	cmp	byte ptr [rax + 0x30], 0x11
	jne	.label_2172
	mov	rdx, qword ptr [rax + 8]
	mov	rcx, qword ptr [rax + 0x28]
	mov	qword ptr [rsi + 8], rdx
	test	rdx, rdx
	je	.label_2171
	mov	qword ptr [rdx], rsi
.label_2171:
	mov	rax, qword ptr [rsi + 0x28]
	mov	rdx, qword ptr [rdi + 0xe0]
	mov	rax, qword ptr [rdx + rax*8]
	mov	qword ptr [rdx + rcx*8], rax
	cmp	rcx, 0x3f
	jg	.label_2172
	mov	rax, -2
	rol	rax, cl
	and	qword ptr [rdi + 0xa0], rax
.label_2172:
	xor	eax, eax
	ret	
	nop	word ptr cs:[rax + rax]
	test	rdi, rdi
	mov	eax, OFFSET FLAT:default_quoting_options
	cmovne	rax, rdi
	mov	dword ptr [rax], esi
	ret	
	nop	
	.section	.text
	.align	32
	#Procedure 0x412150

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
	je	.label_2173
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
.label_2173:
	call	abort
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x4121c0

	.globl parse_reg_exp
	.type parse_reg_exp, @function
parse_reg_exp:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x38
	mov	rbx, r9
	mov	r13, rdx
	mov	r12, rdi
	mov	r14, qword ptr [rsi]
	mov	rax, qword ptr [r14 + 0xa8]
	mov	qword ptr [rsp + 0x18], rax
	mov	qword ptr [rsp + 0x20], rsi
	mov	qword ptr [rsp + 8], rcx
	mov	qword ptr [rsp + 0x10], r8
	call	parse_branch
	mov	r8, rbx
	mov	rbx, rax
	xor	ebp, ebp
	test	rbx, rbx
	jne	.label_2188
	mov	eax, dword ptr [r8]
	test	eax, eax
	jne	.label_2176
.label_2188:
	cmp	byte ptr [r13 + 8], 0xa
	jne	.label_2179
	mov	rax, qword ptr [rsp + 8]
	or	rax, 0x800000
	mov	qword ptr [rsp + 0x30], rax
	jmp	.label_2180
.label_2178:
	mov	edi, 0x3c8
	call	malloc
	test	rax, rax
	je	.label_2187
	mov	rcx, qword ptr [r14 + 0x70]
	mov	qword ptr [rax], rcx
	mov	qword ptr [r14 + 0x70], rax
	mov	dword ptr [r14 + 0x80], 0
	xor	ecx, ecx
	mov	r8, rbp
	jmp	.label_2190
	nop	word ptr cs:[rax + rax]
.label_2179:
	mov	rbp, rbx
	jmp	.label_2176
.label_2180:
	mov	rdi, r13
	mov	rsi, r12
	mov	rdx, qword ptr [rsp + 0x30]
	mov	rbp, r8
	call	peek_token
	mov	r8, rbp
	cdqe	
	add	qword ptr [r12 + 0x48], rax
	movzx	eax, byte ptr [r13 + 8]
	mov	ecx, eax
	or	cl, 8
	cmp	cl, 0xa
	mov	r15d, 0
	je	.label_2174
	cmp	qword ptr [rsp + 0x10], 0
	je	.label_2181
	cmp	eax, 9
	mov	r15d, 0
	je	.label_2174
.label_2181:
	mov	rax, qword ptr [r14 + 0xa8]
	mov	qword ptr [rsp + 0x28], rax
	mov	rax, qword ptr [rsp + 0x18]
	mov	qword ptr [r14 + 0xa8], rax
	mov	rdi, r12
	mov	rsi, qword ptr [rsp + 0x20]
	mov	rdx, r13
	mov	rcx, qword ptr [rsp + 8]
	mov	r8, qword ptr [rsp + 0x10]
	mov	r9, rbp
	call	parse_branch
	mov	r8, rbp
	mov	r15, rax
	test	r15, r15
	jne	.label_2189
	mov	eax, dword ptr [r8]
	test	eax, eax
	jne	.label_2191
.label_2189:
	mov	rax, qword ptr [rsp + 0x28]
	or	qword ptr [r14 + 0xa8], rax
	nop	dword ptr [rax]
.label_2174:
	mov	ecx, dword ptr [r14 + 0x80]
	cmp	ecx, 0xf
	je	.label_2178
	mov	rax, qword ptr [r14 + 0x70]
.label_2190:
	lea	edx, [rcx + 1]
	mov	dword ptr [r14 + 0x80], edx
	movsxd	rcx, ecx
	shl	rcx, 6
	lea	rbp, [rax + rcx + 8]
	mov	qword ptr [rax + rcx + 8], 0
	mov	qword ptr [rax + rcx + 0x10], rbx
	mov	qword ptr [rax + rcx + 0x18], r15
	mov	dword ptr [rax + rcx + 0x38], 0xa
	xorps	xmm0, xmm0
	movups	xmmword ptr [rax + rcx + 0x20], xmm0
	mov	qword ptr [rax + rcx + 0x40], -1
	test	rbx, rbx
	je	.label_2182
	mov	qword ptr [rbx], rbp
.label_2182:
	test	r15, r15
	je	.label_2184
	mov	qword ptr [r15], rbp
.label_2184:
	cmp	byte ptr [r13 + 8], 0xa
	mov	rbx, rbp
	je	.label_2180
.label_2176:
	mov	rax, rbp
	add	rsp, 0x38
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_2191:
	xor	ebp, ebp
	test	rbx, rbx
	je	.label_2176
	mov	r14d, 0x400ff
	xor	ebp, ebp
.label_2183:
	mov	r15, rbx
	mov	rbx, qword ptr [r15 + 8]
	test	rbx, rbx
	jne	.label_2183
	mov	rbx, qword ptr [r15 + 0x10]
	test	rbx, rbx
	jne	.label_2183
.label_2177:
	mov	eax, dword ptr [r15 + 0x30]
	and	eax, r14d
	cmp	eax, 3
	je	.label_2185
	cmp	eax, 6
	jne	.label_2175
	mov	rbx, qword ptr [r15 + 0x28]
	mov	rdi, qword ptr [rbx]
	call	free
	mov	rdi, qword ptr [rbx + 8]
	call	free
	mov	rdi, qword ptr [rbx + 0x10]
	call	free
	mov	rdi, qword ptr [rbx + 0x18]
	call	free
	mov	rdi, rbx
	jmp	.label_2186
.label_2185:
	mov	rdi, qword ptr [r15 + 0x28]
.label_2186:
	call	free
.label_2175:
	mov	rax, qword ptr [r15]
	test	rax, rax
	je	.label_2176
	mov	rbx, qword ptr [rax + 0x10]
	cmp	rbx, r15
	mov	r15, rax
	je	.label_2177
	test	rbx, rbx
	mov	r15, rax
	je	.label_2177
	jmp	.label_2183
.label_2187:
	mov	dword ptr [rbp], 0xc
	xor	ebp, ebp
	jmp	.label_2176
.label_255:
	test	rdx, rdx
	jle	.label_244
	mov	r10, qword ptr [rdi]
	mov	rsi, qword ptr [rsi]
	xor	edi, edi
	nop	word ptr cs:[rax + rax]
.label_249:
	movzx	eax, byte ptr [r10 + rdi]
	movzx	ecx, byte ptr [rsi + rdi]
	sub	eax, ecx
	jne	.label_247
	inc	rdi
	cmp	rdi, rdx
	jl	.label_249
.label_244:
	xor	ecx, ecx
	cmp	r8, r9
	setg	cl
	mov	eax, 0xffffffff
	cmovge	eax, ecx
.label_247:
	ret	
	nop	word ptr cs:[rax + rax]
	.globl compare_words
	.type compare_words, @function
compare_words:
	mov	r8, qword ptr [rdi + 8]
	mov	r9, qword ptr [rsi + 8]
	cmp	r8, r9
	mov	rdx, r9
	cmovle	rdx, r8
	mov	al, byte ptr [rip + ignore_case]
	test	al, al
	je	.label_255
	test	rdx, rdx
	jle	.label_244
	mov	r10, qword ptr [rdi]
	mov	rsi, qword ptr [rsi]
	xor	ecx, ecx
	nop	dword ptr [rax]
.label_263:
	movzx	eax, byte ptr [r10 + rcx]
	movzx	eax, byte ptr [rax + folded_chars]
	movzx	edi, byte ptr [rsi + rcx]
	movzx	edi, byte ptr [rdi + folded_chars]
	sub	eax, edi
	jne	.label_247
	inc	rcx
	cmp	rcx, rdx
	jl	.label_263
	jmp	.label_244
	.section	.text
	.align	32
	#Procedure 0x4124d0

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
	je	.label_2227
	mov	esi, OFFSET FLAT:label_2216
	mov	rdi, r12
	call	strcmp
	test	eax, eax
	je	.label_2232
	mov	esi, OFFSET FLAT:label_2234
	mov	rdi, r12
	call	strcmp
	test	eax, eax
	jne	.label_2227
.label_2232:
	mov	r12d, OFFSET FLAT:label_2236
.label_2227:
	mov	rbp, qword ptr [r13]
	cmp	rbp, qword ptr [rbx + 0x48]
	je	.label_2237
.label_2200:
	mov	rdi, r12
	call	wctype
	mov	rcx, qword ptr [rbx + 0x48]
	lea	rdx, [rcx + 1]
	mov	qword ptr [rbx + 0x48], rdx
	mov	rdx, qword ptr [rbx + 0x18]
	mov	qword ptr [rdx + rcx*8], rax
	mov	esi, OFFSET FLAT:label_393
	mov	rdi, r12
	call	strcmp
	test	eax, eax
	je	.label_2245
	mov	esi, OFFSET FLAT:label_2247
	mov	rdi, r12
	call	strcmp
	test	eax, eax
	je	.label_2249
	mov	esi, OFFSET FLAT:label_2234
	mov	rdi, r12
	call	strcmp
	test	eax, eax
	je	.label_2253
	mov	esi, OFFSET FLAT:label_399
	mov	rdi, r12
	call	strcmp
	test	eax, eax
	je	.label_2257
	mov	esi, OFFSET FLAT:label_2236
	mov	rdi, r12
	call	strcmp
	test	eax, eax
	je	.label_2261
	mov	esi, OFFSET FLAT:label_2262
	mov	rdi, r12
	call	strcmp
	test	eax, eax
	je	.label_2265
	mov	esi, OFFSET FLAT:label_2267
	mov	rdi, r12
	call	strcmp
	test	eax, eax
	je	.label_2270
	mov	esi, OFFSET FLAT:label_2216
	mov	rdi, r12
	call	strcmp
	test	eax, eax
	je	.label_2248
	mov	esi, OFFSET FLAT:label_2274
	mov	rdi, r12
	call	strcmp
	test	eax, eax
	je	.label_2276
	mov	esi, OFFSET FLAT:label_2193
	mov	rdi, r12
	call	strcmp
	test	eax, eax
	je	.label_2194
	mov	esi, OFFSET FLAT:label_2196
	mov	rdi, r12
	call	strcmp
	test	eax, eax
	je	.label_2199
	mov	esi, OFFSET FLAT:label_2201
	mov	rdi, r12
	call	strcmp
	mov	ecx, eax
	mov	eax, 4
	test	ecx, ecx
	jne	.label_2197
	call	__ctype_b_loc
	test	r14, r14
	mov	rdx, qword ptr [rax]
	jne	.label_2205
	xor	ecx, ecx
.label_2214:
	test	byte ptr [rdx + rcx*2 + 1], 0x10
	je	.label_2208
	mov	eax, 1
	shl	rax, cl
	mov	rsi, rcx
	sar	rsi, 0x3f
	shr	rsi, 0x3a
	add	rsi, rcx
	sar	rsi, 6
	or	qword ptr [r15 + rsi*8], rax
.label_2208:
	inc	rcx
	xor	eax, eax
	cmp	rcx, 0x100
	jne	.label_2214
	jmp	.label_2197
.label_2245:
	call	__ctype_b_loc
	test	r14, r14
	mov	rdx, qword ptr [rax]
	jne	.label_2219
	xor	ecx, ecx
	nop	word ptr cs:[rax + rax]
.label_2228:
	test	byte ptr [rdx + rcx*2], 8
	je	.label_2221
	mov	eax, 1
	shl	rax, cl
	mov	rsi, rcx
	sar	rsi, 0x3f
	shr	rsi, 0x3a
	add	rsi, rcx
	sar	rsi, 6
	or	qword ptr [r15 + rsi*8], rax
.label_2221:
	inc	rcx
	xor	eax, eax
	cmp	rcx, 0x100
	jne	.label_2228
	jmp	.label_2197
.label_2249:
	call	__ctype_b_loc
	test	r14, r14
	mov	rdx, qword ptr [rax]
	jne	.label_2230
	xor	ecx, ecx
	nop	word ptr [rax + rax]
.label_2240:
	test	byte ptr [rdx + rcx*2], 2
	je	.label_2192
	mov	eax, 1
	shl	rax, cl
	mov	rsi, rcx
	sar	rsi, 0x3f
	shr	rsi, 0x3a
	add	rsi, rcx
	sar	rsi, 6
	or	qword ptr [r15 + rsi*8], rax
.label_2192:
	inc	rcx
	xor	eax, eax
	cmp	rcx, 0x100
	jne	.label_2240
	jmp	.label_2197
.label_2253:
	call	__ctype_b_loc
	test	r14, r14
	mov	rdx, qword ptr [rax]
	jne	.label_2243
	xor	ecx, ecx
	nop	word ptr [rax + rax]
.label_2251:
	test	byte ptr [rdx + rcx*2 + 1], 2
	je	.label_2244
	mov	eax, 1
	shl	rax, cl
	mov	rsi, rcx
	sar	rsi, 0x3f
	shr	rsi, 0x3a
	add	rsi, rcx
	sar	rsi, 6
	or	qword ptr [r15 + rsi*8], rax
.label_2244:
	inc	rcx
	xor	eax, eax
	cmp	rcx, 0x100
	jne	.label_2251
	jmp	.label_2197
.label_2257:
	call	__ctype_b_loc
	test	r14, r14
	mov	rdx, qword ptr [rax]
	jne	.label_2256
	xor	ecx, ecx
	nop	dword ptr [rax + rax]
.label_2268:
	test	byte ptr [rdx + rcx*2 + 1], 0x20
	je	.label_2260
	mov	eax, 1
	shl	rax, cl
	mov	rsi, rcx
	sar	rsi, 0x3f
	shr	rsi, 0x3a
	add	rsi, rcx
	sar	rsi, 6
	or	qword ptr [r15 + rsi*8], rax
.label_2260:
	inc	rcx
	xor	eax, eax
	cmp	rcx, 0x100
	jne	.label_2268
	jmp	.label_2197
.label_2261:
	call	__ctype_b_loc
	test	r14, r14
	mov	rdx, qword ptr [rax]
	jne	.label_2271
	xor	ecx, ecx
	nop	dword ptr [rax + rax]
.label_2195:
	test	byte ptr [rdx + rcx*2 + 1], 4
	je	.label_2275
	mov	eax, 1
	shl	rax, cl
	mov	rsi, rcx
	sar	rsi, 0x3f
	shr	rsi, 0x3a
	add	rsi, rcx
	sar	rsi, 6
	or	qword ptr [r15 + rsi*8], rax
.label_2275:
	inc	rcx
	xor	eax, eax
	cmp	rcx, 0x100
	jne	.label_2195
	jmp	.label_2197
.label_2265:
	call	__ctype_b_loc
	test	r14, r14
	mov	rdx, qword ptr [rax]
	jne	.label_2202
	xor	ecx, ecx
	nop	dword ptr [rax + rax]
.label_2209:
	test	byte ptr [rdx + rcx*2 + 1], 8
	je	.label_2224
	mov	eax, 1
	shl	rax, cl
	mov	rsi, rcx
	sar	rsi, 0x3f
	shr	rsi, 0x3a
	add	rsi, rcx
	sar	rsi, 6
	or	qword ptr [r15 + rsi*8], rax
.label_2224:
	inc	rcx
	xor	eax, eax
	cmp	rcx, 0x100
	jne	.label_2209
	jmp	.label_2197
.label_2270:
	call	__ctype_b_loc
	test	r14, r14
	mov	rdx, qword ptr [rax]
	jne	.label_2213
	xor	ecx, ecx
	nop	dword ptr [rax + rax]
.label_2222:
	test	byte ptr [rdx + rcx*2 + 1], 0x40
	je	.label_2218
	mov	eax, 1
	shl	rax, cl
	mov	rsi, rcx
	sar	rsi, 0x3f
	shr	rsi, 0x3a
	add	rsi, rcx
	sar	rsi, 6
	or	qword ptr [r15 + rsi*8], rax
.label_2218:
	inc	rcx
	xor	eax, eax
	cmp	rcx, 0x100
	jne	.label_2222
	jmp	.label_2197
.label_2248:
	call	__ctype_b_loc
	test	r14, r14
	mov	rdx, qword ptr [rax]
	jne	.label_2225
	xor	ecx, ecx
	nop	dword ptr [rax + rax]
.label_2235:
	test	byte ptr [rdx + rcx*2 + 1], 1
	je	.label_2229
	mov	eax, 1
	shl	rax, cl
	mov	rsi, rcx
	sar	rsi, 0x3f
	shr	rsi, 0x3a
	add	rsi, rcx
	sar	rsi, 6
	or	qword ptr [r15 + rsi*8], rax
.label_2229:
	inc	rcx
	xor	eax, eax
	cmp	rcx, 0x100
	jne	.label_2235
	jmp	.label_2197
.label_2276:
	call	__ctype_b_loc
	test	r14, r14
	mov	rdx, qword ptr [rax]
	jne	.label_2238
	xor	ecx, ecx
	nop	dword ptr [rax + rax]
.label_2246:
	test	byte ptr [rdx + rcx*2], 1
	je	.label_2241
	mov	eax, 1
	shl	rax, cl
	mov	rsi, rcx
	sar	rsi, 0x3f
	shr	rsi, 0x3a
	add	rsi, rcx
	sar	rsi, 6
	or	qword ptr [r15 + rsi*8], rax
.label_2241:
	inc	rcx
	xor	eax, eax
	cmp	rcx, 0x100
	jne	.label_2246
	jmp	.label_2197
.label_2194:
	call	__ctype_b_loc
	test	r14, r14
	mov	rdx, qword ptr [rax]
	jne	.label_2250
	xor	ecx, ecx
.label_2259:
	cmp	word ptr [rdx + rcx*2], 0
	jns	.label_2252
	mov	eax, 1
	shl	rax, cl
	mov	rsi, rcx
	sar	rsi, 0x3f
	shr	rsi, 0x3a
	add	rsi, rcx
	sar	rsi, 6
	or	qword ptr [r15 + rsi*8], rax
.label_2252:
	inc	rcx
	xor	eax, eax
	cmp	rcx, 0x100
	jne	.label_2259
	jmp	.label_2197
.label_2199:
	call	__ctype_b_loc
	test	r14, r14
	mov	rdx, qword ptr [rax]
	jne	.label_2263
	xor	ecx, ecx
.label_2272:
	test	byte ptr [rdx + rcx*2], 4
	je	.label_2266
	mov	eax, 1
	shl	rax, cl
	mov	rsi, rcx
	sar	rsi, 0x3f
	shr	rsi, 0x3a
	add	rsi, rcx
	sar	rsi, 6
	or	qword ptr [r15 + rsi*8], rax
.label_2266:
	inc	rcx
	xor	eax, eax
	cmp	rcx, 0x100
	jne	.label_2272
.label_2197:
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_2237:
	lea	rax, [rbp + rbp]
	mov	rdi, qword ptr [rbx + 0x18]
	lea	rsi, [rax*8 + 8]
	call	realloc
	mov	rcx, rax
	mov	eax, 0xc
	test	rcx, rcx
	je	.label_2197
	lea	rax, [rbp + rbp + 1]
	mov	qword ptr [rbx + 0x18], rcx
	mov	qword ptr [r13], rax
	jmp	.label_2200
.label_2219:
	xor	esi, esi
.label_2207:
	test	byte ptr [rdx + rsi*2], 8
	je	.label_2204
	movzx	ecx, byte ptr [r14 + rsi]
	mov	eax, 1
	shl	rax, cl
	shr	cl, 6
	movzx	ecx, cl
	or	qword ptr [r15 + rcx*8], rax
.label_2204:
	inc	rsi
	xor	eax, eax
	cmp	rsi, 0x100
	jne	.label_2207
	jmp	.label_2197
.label_2230:
	xor	esi, esi
.label_2217:
	test	byte ptr [rdx + rsi*2], 2
	je	.label_2211
	movzx	ecx, byte ptr [r14 + rsi]
	mov	eax, 1
	shl	rax, cl
	shr	cl, 6
	movzx	ecx, cl
	or	qword ptr [r15 + rcx*8], rax
.label_2211:
	inc	rsi
	xor	eax, eax
	cmp	rsi, 0x100
	jne	.label_2217
	jmp	.label_2197
.label_2243:
	xor	esi, esi
.label_2223:
	test	byte ptr [rdx + rsi*2 + 1], 2
	je	.label_2220
	movzx	ecx, byte ptr [r14 + rsi]
	mov	eax, 1
	shl	rax, cl
	shr	cl, 6
	movzx	ecx, cl
	or	qword ptr [r15 + rcx*8], rax
.label_2220:
	inc	rsi
	xor	eax, eax
	cmp	rsi, 0x100
	jne	.label_2223
	jmp	.label_2197
.label_2256:
	xor	esi, esi
.label_2255:
	test	byte ptr [rdx + rsi*2 + 1], 0x20
	je	.label_2226
	movzx	ecx, byte ptr [r14 + rsi]
	mov	eax, 1
	shl	rax, cl
	shr	cl, 6
	movzx	ecx, cl
	or	qword ptr [r15 + rcx*8], rax
.label_2226:
	inc	rsi
	xor	eax, eax
	cmp	rsi, 0x100
	jne	.label_2255
	jmp	.label_2197
.label_2271:
	xor	esi, esi
.label_2239:
	test	byte ptr [rdx + rsi*2 + 1], 4
	je	.label_2233
	movzx	ecx, byte ptr [r14 + rsi]
	mov	eax, 1
	shl	rax, cl
	shr	cl, 6
	movzx	ecx, cl
	or	qword ptr [r15 + rcx*8], rax
.label_2233:
	inc	rsi
	xor	eax, eax
	cmp	rsi, 0x100
	jne	.label_2239
	jmp	.label_2197
.label_2202:
	xor	esi, esi
.label_2231:
	test	byte ptr [rdx + rsi*2 + 1], 8
	je	.label_2242
	movzx	ecx, byte ptr [r14 + rsi]
	mov	eax, 1
	shl	rax, cl
	shr	cl, 6
	movzx	ecx, cl
	or	qword ptr [r15 + rcx*8], rax
.label_2242:
	inc	rsi
	xor	eax, eax
	cmp	rsi, 0x100
	jne	.label_2231
	jmp	.label_2197
.label_2213:
	xor	esi, esi
.label_2254:
	test	byte ptr [rdx + rsi*2 + 1], 0x40
	je	.label_2212
	movzx	ecx, byte ptr [r14 + rsi]
	mov	eax, 1
	shl	rax, cl
	shr	cl, 6
	movzx	ecx, cl
	or	qword ptr [r15 + rcx*8], rax
.label_2212:
	inc	rsi
	xor	eax, eax
	cmp	rsi, 0x100
	jne	.label_2254
	jmp	.label_2197
.label_2225:
	xor	esi, esi
.label_2264:
	test	byte ptr [rdx + rsi*2 + 1], 1
	je	.label_2258
	movzx	ecx, byte ptr [r14 + rsi]
	mov	eax, 1
	shl	rax, cl
	shr	cl, 6
	movzx	ecx, cl
	or	qword ptr [r15 + rcx*8], rax
.label_2258:
	inc	rsi
	xor	eax, eax
	cmp	rsi, 0x100
	jne	.label_2264
	jmp	.label_2197
.label_2238:
	xor	esi, esi
.label_2273:
	test	byte ptr [rdx + rsi*2], 1
	je	.label_2269
	movzx	ecx, byte ptr [r14 + rsi]
	mov	eax, 1
	shl	rax, cl
	shr	cl, 6
	movzx	ecx, cl
	or	qword ptr [r15 + rcx*8], rax
.label_2269:
	inc	rsi
	xor	eax, eax
	cmp	rsi, 0x100
	jne	.label_2273
	jmp	.label_2197
.label_2250:
	xor	esi, esi
.label_2198:
	cmp	word ptr [rdx + rsi*2], 0
	jns	.label_2277
	movzx	ecx, byte ptr [r14 + rsi]
	mov	eax, 1
	shl	rax, cl
	shr	cl, 6
	movzx	ecx, cl
	or	qword ptr [r15 + rcx*8], rax
.label_2277:
	inc	rsi
	xor	eax, eax
	cmp	rsi, 0x100
	jne	.label_2198
	jmp	.label_2197
.label_2263:
	xor	esi, esi
.label_2206:
	test	byte ptr [rdx + rsi*2], 4
	je	.label_2203
	movzx	ecx, byte ptr [r14 + rsi]
	mov	eax, 1
	shl	rax, cl
	shr	cl, 6
	movzx	ecx, cl
	or	qword ptr [r15 + rcx*8], rax
.label_2203:
	inc	rsi
	xor	eax, eax
	cmp	rsi, 0x100
	jne	.label_2206
	jmp	.label_2197
.label_2205:
	xor	esi, esi
.label_2215:
	test	byte ptr [rdx + rsi*2 + 1], 0x10
	je	.label_2210
	movzx	ecx, byte ptr [r14 + rsi]
	mov	eax, 1
	shl	rax, cl
	shr	cl, 6
	movzx	ecx, cl
	or	qword ptr [r15 + rcx*8], rax
.label_2210:
	inc	rsi
	xor	eax, eax
	cmp	rsi, 0x100
	jne	.label_2215
	jmp	.label_2197
	nop	word ptr cs:[rax + rax]
	sub	rsp, 0x38
	mov	rax, rsi
	mov	rdx, rdi
	mov	rcx, qword ptr [rip + label_166]
	mov	qword ptr [rsp + 0x30], rcx
	movups	xmm0, xmmword ptr [rip + label_167]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0, xmmword ptr [rip + label_168]
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
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x412d00

	.globl peek_token_bracket
	.type peek_token_bracket, @function
peek_token_bracket:
	mov	rax, qword ptr [rsi + 0x48]
	cmp	qword ptr [rsi + 0x68], rax
	jle	.label_2278
	mov	rcx, qword ptr [rsi + 8]
	mov	al, byte ptr [rcx + rax]
	mov	byte ptr [rdi], al
	cmp	dword ptr [rsi + 0x90], 2
	jl	.label_2282
	mov	r8, qword ptr [rsi + 0x48]
	cmp	r8, qword ptr [rsi + 0x30]
	je	.label_2282
	mov	rcx, qword ptr [rsi + 0x10]
	cmp	dword ptr [rcx + r8*4], -1
	je	.label_2281
.label_2282:
	test	dl, 1
	je	.label_2280
	cmp	al, 0x5c
	jne	.label_2280
	mov	rcx, qword ptr [rsi + 0x48]
	inc	rcx
	cmp	rcx, qword ptr [rsi + 0x58]
	jge	.label_2280
	mov	qword ptr [rsi + 0x48], rcx
	mov	rax, qword ptr [rsi + 8]
	mov	al, byte ptr [rax + rcx]
	mov	byte ptr [rdi], al
	jmp	.label_2281
.label_2278:
	mov	byte ptr [rdi + 8], 2
	xor	eax, eax
	ret	
.label_2280:
	cmp	al, 0x5c
	jg	.label_2287
	cmp	al, 0x2d
	je	.label_2284
	cmp	al, 0x5b
	jne	.label_2281
	mov	rax, qword ptr [rsi + 0x48]
	inc	rax
	cmp	rax, qword ptr [rsi + 0x58]
	jge	.label_2285
	mov	rcx, qword ptr [rsi + 8]
	mov	al, byte ptr [rcx + rax]
	mov	byte ptr [rdi], al
	cmp	al, 0x3d
	je	.label_2288
	cmp	al, 0x3a
	je	.label_2279
	cmp	al, 0x2e
	jne	.label_2286
	mov	byte ptr [rdi + 8], 0x1a
	mov	eax, 2
	ret	
.label_2287:
	cmp	al, 0x5d
	je	.label_2283
	cmp	al, 0x5e
	jne	.label_2281
	mov	byte ptr [rdi + 8], 0x19
	mov	eax, 1
	ret	
.label_2281:
	mov	byte ptr [rdi + 8], 1
	mov	eax, 1
	ret	
.label_2284:
	mov	byte ptr [rdi + 8], 0x16
	mov	eax, 1
	ret	
.label_2283:
	mov	byte ptr [rdi + 8], 0x15
	mov	eax, 1
	ret	
.label_2285:
	mov	byte ptr [rdi], 0
.label_2286:
	mov	byte ptr [rdi + 8], 1
	mov	byte ptr [rdi], 0x5b
	mov	eax, 1
	ret	
.label_2288:
	mov	byte ptr [rdi + 8], 0x1c
	mov	eax, 2
	ret	
.label_2279:
	test	dl, 4
	je	.label_2286
	mov	byte ptr [rdi + 8], 0x1e
	mov	eax, 2
	ret	
	nop	
	.section	.text
	.align	32
	#Procedure 0x412df0

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
	mov	r14, rdx
	mov	r12, rsi
	mov	rbx, rdi
	mov	r13, qword ptr [rbx + 8]
	mov	rax, qword ptr [rbx + 0x10]
	cmp	rax, r13
	jae	.label_2293
.label_2294:
	mov	rcx, qword ptr [rbx]
	shl	rax, 4
	mov	qword ptr [rcx + rax], r12
	mov	qword ptr [rcx + rax + 8], r14
	mov	rax, qword ptr [rbx]
	mov	rcx, qword ptr [rbx + 0x10]
	shl	rcx, 4
	and	dword ptr [rax + rcx + 8], 0xfffc00ff
	movzx	eax, r14b
	cmp	eax, 5
	jne	.label_2291
	mov	cl, 1
	cmp	dword ptr [rbx + 0xb4], 1
	jg	.label_2289
.label_2291:
	cmp	eax, 6
	sete	cl
.label_2289:
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
	mov	r15, qword ptr [rbx + 0x10]
	lea	rax, [r15 + 1]
	mov	qword ptr [rbx + 0x10], rax
.label_2290:
	mov	rax, r15
	add	rsp, 0x18
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_2293:
	lea	rcx, [r13 + r13]
	mov	r15, -1
	movabs	rax, 0xaaaaaaaaaaaaaaa
	cmp	rcx, rax
	ja	.label_2290
	mov	qword ptr [rsp + 0x10], rcx
	mov	rdi, qword ptr [rbx]
	mov	rsi, r13
	shl	rsi, 5
	call	realloc
	test	rax, rax
	je	.label_2290
	mov	qword ptr [rbx], rax
	mov	rdi, qword ptr [rbx + 0x18]
	shl	r13, 4
	mov	rsi, r13
	call	realloc
	mov	qword ptr [rsp + 8], rax
	mov	rdi, qword ptr [rbx + 0x20]
	mov	rsi, r13
	call	realloc
	mov	qword ptr [rsp], rax
	mov	rdi, qword ptr [rbx + 0x28]
	lea	rbp, [r13 + r13*2]
	mov	rsi, rbp
	call	realloc
	mov	r13, rax
	mov	rdi, qword ptr [rbx + 0x30]
	mov	rsi, rbp
	call	realloc
	mov	rbp, rax
	mov	rax, qword ptr [rsp]
	mov	rdi, qword ptr [rsp + 8]
	test	rdi, rdi
	je	.label_2292
	test	rax, rax
	je	.label_2292
	test	r13, r13
	je	.label_2292
	test	rbp, rbp
	je	.label_2292
	mov	qword ptr [rbx + 0x18], rdi
	mov	qword ptr [rbx + 0x20], rax
	mov	qword ptr [rbx + 0x28], r13
	mov	qword ptr [rbx + 0x30], rbp
	mov	rax, qword ptr [rsp + 0x10]
	mov	qword ptr [rbx + 8], rax
	mov	rax, qword ptr [rbx + 0x10]
	jmp	.label_2294
.label_2292:
	mov	rbx, rax
	call	free
	mov	rdi, rbx
	call	free
	mov	rdi, r13
	call	free
	mov	rdi, rbp
	call	free
	jmp	.label_2290
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x412fc0

	.globl re_acquire_state_context
	.type re_acquire_state_context, @function
re_acquire_state_context:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x38
	mov	r12d, ecx
	mov	r13, rsi
	mov	r15, rdi
	mov	r8, qword ptr [rdx + 8]
	test	r8, r8
	je	.label_2327
	mov	r14d, r12d
	add	r14, r8
	test	r8, r8
	jle	.label_2333
	mov	rcx, qword ptr [rdx + 0x10]
	xor	r9d, r9d
	cmp	r8, 4
	jb	.label_2308
	mov	r9, r8
	and	r9, 0xfffffffffffffffc
	je	.label_2295
	movq	xmm0, r14
	lea	rbp, [r9 - 4]
	mov	rax, rbp
	shr	rax, 2
	lea	esi, [rax + 1]
	and	esi, 3
	xor	edi, edi
	cmp	rbp, 0xc
	jae	.label_2298
	pxor	xmm1, xmm1
	jmp	.label_2305
.label_2327:
	mov	dword ptr [r15], 0
.label_2320:
	xor	ebp, ebp
	jmp	.label_2310
.label_2295:
	xor	r9d, r9d
	jmp	.label_2308
.label_2298:
	lea	rbp, [rsi - 1]
	sub	rbp, rax
	pxor	xmm1, xmm1
	xor	edi, edi
	nop	word ptr cs:[rax + rax]
.label_2314:
	movdqu	xmm2, xmmword ptr [rcx + rdi*8]
	movdqu	xmm3, xmmword ptr [rcx + rdi*8 + 0x10]
	paddq	xmm2, xmm0
	paddq	xmm3, xmm1
	movdqu	xmm0, xmmword ptr [rcx + rdi*8 + 0x20]
	movdqu	xmm1, xmmword ptr [rcx + rdi*8 + 0x30]
	movdqu	xmm4, xmmword ptr [rcx + rdi*8 + 0x40]
	movdqu	xmm5, xmmword ptr [rcx + rdi*8 + 0x50]
	paddq	xmm4, xmm0
	paddq	xmm4, xmm2
	paddq	xmm5, xmm1
	paddq	xmm5, xmm3
	movdqu	xmm0, xmmword ptr [rcx + rdi*8 + 0x60]
	movdqu	xmm1, xmmword ptr [rcx + rdi*8 + 0x70]
	paddq	xmm0, xmm4
	paddq	xmm1, xmm5
	add	rdi, 0x10
	add	rbp, 4
	jne	.label_2314
.label_2305:
	test	rsi, rsi
	je	.label_2325
	lea	rdi, [rcx + rdi*8 + 0x10]
	neg	rsi
	nop	word ptr cs:[rax + rax]
.label_2334:
	movdqu	xmm2, xmmword ptr [rdi - 0x10]
	movdqu	xmm3, xmmword ptr [rdi]
	paddq	xmm0, xmm2
	paddq	xmm1, xmm3
	add	rdi, 0x20
	inc	rsi
	jne	.label_2334
.label_2325:
	paddq	xmm0, xmm1
	pshufd	xmm1, xmm0, 0x4e
	paddq	xmm1, xmm0
	movq	r14, xmm1
	cmp	r8, r9
	je	.label_2333
.label_2308:
	mov	rsi, r8
	sub	rsi, r9
	lea	rcx, [rcx + r9*8]
	nop	dword ptr [rax + rax]
.label_2300:
	add	r14, qword ptr [rcx]
	add	rcx, 8
	dec	rsi
	jne	.label_2300
.label_2333:
	mov	rax, qword ptr [r13 + 0x40]
	mov	rcx, qword ptr [r13 + 0x88]
	and	rcx, r14
	lea	rcx, [rcx + rcx*2]
	mov	r10, qword ptr [rax + rcx*8]
	test	r10, r10
	jle	.label_2301
	mov	r9, qword ptr [rax + rcx*8 + 0x10]
	xor	esi, esi
	nop	
.label_2321:
	mov	rbp, qword ptr [r9 + rsi*8]
	cmp	qword ptr [rbp], r14
	jne	.label_2304
	movzx	eax, byte ptr [rbp + 0x68]
	and	eax, 0xf
	cmp	eax, r12d
	jne	.label_2304
	test	rdx, rdx
	je	.label_2304
	mov	rdi, qword ptr [rbp + 0x50]
	test	rdi, rdi
	je	.label_2304
	cmp	qword ptr [rdi + 8], r8
	jne	.label_2304
	mov	rax, r8
	nop	dword ptr [rax]
.label_2317:
	test	rax, rax
	jle	.label_2310
	mov	rcx, qword ptr [rdi + 0x10]
	mov	rbx, qword ptr [rcx + rax*8 - 8]
	mov	rcx, qword ptr [rdx + 0x10]
	cmp	rbx, qword ptr [rcx + rax*8 - 8]
	lea	rax, [rax - 1]
	je	.label_2317
	nop	word ptr cs:[rax + rax]
.label_2304:
	inc	rsi
	cmp	rsi, r10
	jl	.label_2321
.label_2301:
	mov	qword ptr [rsp + 8], rdx
	mov	edi, 0x70
	mov	esi, 1
	call	rpl_calloc
	mov	r9, rax
	test	r9, r9
	je	.label_2322
	mov	qword ptr [rsp + 0x20], r13
	mov	rax, r9
	add	rax, 8
	mov	rsi, qword ptr [rsp + 8]
	mov	rdi, qword ptr [rsi + 8]
	mov	qword ptr [r9 + 0x10], rdi
	mov	rbp, qword ptr [rsi + 8]
	test	rbp, rbp
	mov	qword ptr [rsp + 0x10], r9
	mov	qword ptr [rsp + 0x18], r15
	jle	.label_2324
	mov	r13, rax
	mov	qword ptr [r9 + 8], rdi
	shl	rdi, 3
	call	malloc
	mov	rdi, qword ptr [rsp + 0x10]
	mov	qword ptr [rdi + 0x18], rax
	test	rax, rax
	je	.label_2296
	mov	rbx, qword ptr [rsp + 8]
	mov	rsi, qword ptr [rbx + 0x10]
	shl	rbp, 3
	mov	rdi, rax
	mov	rdx, rbp
	call	memcpy
	mov	r9, qword ptr [rsp + 0x10]
	mov	rsi, rbx
	mov	rdi, qword ptr [rsp + 0x20]
	mov	r15, r13
	jmp	.label_2306
.label_2324:
	pxor	xmm0, xmm0
	movdqu	xmmword ptr [rax], xmm0
	mov	qword ptr [rax + 0x10], 0
	mov	rdi, qword ptr [rsp + 0x20]
	mov	r15, rax
.label_2306:
	mov	al, byte ptr [r9 + 0x68]
	mov	edx, r12d
	mov	ecx, r12d
	and	cl, 0xf
	and	al, 0xf0
	or	al, cl
	mov	byte ptr [r9 + 0x68], al
	mov	qword ptr [r9 + 0x50], r15
	cmp	qword ptr [rsi + 8], 0
	jle	.label_2312
	mov	ebp, edx
	and	ebp, 1
	mov	eax, edx
	and	eax, 2
	mov	dword ptr [rsp + 0x2c], eax
	and	edx, 4
	mov	dword ptr [rsp + 0x28], edx
	xor	r12d, r12d
	xor	r8d, r8d
	mov	qword ptr [rsp + 0x30], r15
	nop	dword ptr [rax]
.label_2309:
	mov	rax, qword ptr [rdi]
	mov	rcx, qword ptr [rsi + 0x10]
	mov	rcx, qword ptr [rcx + r12*8]
	shl	rcx, 4
	mov	edx, dword ptr [rax + rcx + 8]
	mov	r13d, edx
	shr	r13d, 8
	mov	ecx, r13d
	and	ecx, 0x3ff
	cmp	dl, 1
	jne	.label_2328
	test	ecx, ecx
	je	.label_2319
.label_2328:
	mov	esi, edx
	shr	esi, 0x14
	mov	bl, byte ptr [r9 + 0x68]
	mov	eax, ebx
	shr	al, 5
	movzx	eax, al
	or	eax, esi
	shl	al, 5
	and	al, 0x20
	and	bl, 0xdf
	or	bl, al
	mov	byte ptr [r9 + 0x68], bl
	cmp	dl, 4
	je	.label_2332
	cmp	dl, 2
	jne	.label_2335
	or	bl, 0x10
	jmp	.label_2336
.label_2332:
	or	bl, 0x40
.label_2336:
	mov	byte ptr [r9 + 0x68], bl
.label_2335:
	test	ecx, ecx
	je	.label_2297
	cmp	qword ptr [r9 + 0x50], r15
	jne	.label_2299
	mov	edi, 0x18
	call	malloc
	mov	r9, qword ptr [rsp + 0x10]
	mov	rbx, rax
	mov	qword ptr [r9 + 0x50], rbx
	test	rbx, rbx
	je	.label_2302
	mov	rax, qword ptr [rsp + 8]
	mov	r15, qword ptr [rax + 8]
	mov	qword ptr [rbx + 8], r15
	test	r15, r15
	jle	.label_2307
	mov	qword ptr [rbx], r15
	shl	r15, 3
	mov	rdi, r15
	call	malloc
	mov	qword ptr [rbx + 0x10], rax
	test	rax, rax
	je	.label_2311
	mov	rcx, qword ptr [rsp + 8]
	mov	rsi, qword ptr [rcx + 0x10]
	mov	rdi, rax
	mov	rdx, r15
	call	memcpy
	mov	r9, qword ptr [rsp + 0x10]
	jmp	.label_2316
.label_2297:
	mov	rsi, qword ptr [rsp + 8]
	jmp	.label_2319
.label_2307:
	pxor	xmm0, xmm0
	movdqu	xmmword ptr [rbx], xmm0
	mov	qword ptr [rbx + 0x10], 0
.label_2316:
	mov	r15, qword ptr [rsp + 0x30]
	or	byte ptr [r9 + 0x68], 0x80
	xor	r8d, r8d
	mov	rdi, qword ptr [rsp + 0x20]
.label_2299:
	test	ebp, ebp
	mov	rsi, qword ptr [rsp + 8]
	jne	.label_2323
	mov	eax, r13d
	and	eax, 1
	jne	.label_2315
.label_2323:
	test	ebp, ebp
	je	.label_2326
	mov	eax, r13d
	and	eax, 2
	jne	.label_2315
.label_2326:
	cmp	dword ptr [rsp + 0x2c], 0
	jne	.label_2331
	mov	eax, r13d
	and	eax, 0x10
	jne	.label_2315
.label_2331:
	cmp	dword ptr [rsp + 0x28], 0
	jne	.label_2319
	and	r13d, 0x40
	je	.label_2319
	nop	word ptr cs:[rax + rax]
.label_2315:
	mov	rax, r12
	sub	rax, r8
	js	.label_2329
	mov	rcx, qword ptr [r9 + 0x10]
	cmp	rcx, rax
	jle	.label_2329
	dec	rcx
	mov	qword ptr [r9 + 0x10], rcx
	cmp	rcx, rax
	jle	.label_2329
	lea	rax, [r12*8]
	add	rax, qword ptr [r9 + 0x18]
	mov	rcx, r8
	neg	rcx
	nop	
.label_2303:
	mov	rdx, qword ptr [rax + rcx*8 + 8]
	mov	qword ptr [rax + rcx*8], rdx
	lea	rdx, [r12 + rcx + 1]
	inc	rcx
	cmp	rdx, qword ptr [r9 + 0x10]
	jl	.label_2303
	nop	word ptr [rax + rax]
.label_2329:
	inc	r8
.label_2319:
	inc	r12
	cmp	r12, qword ptr [rsi + 8]
	jl	.label_2309
.label_2312:
	mov	rsi, r9
	mov	rdx, r14
	call	register_state
	mov	rbp, qword ptr [rsp + 0x10]
	test	eax, eax
	jne	.label_2313
.label_2310:
	mov	rax, rbp
	add	rsp, 0x38
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_2302:
	mov	rdi, r9
	jmp	.label_2330
.label_2311:
	pxor	xmm0, xmm0
	movdqu	xmmword ptr [rbx], xmm0
	jmp	.label_2318
.label_2313:
	mov	rdi, rbp
.label_2330:
	call	free_state
.label_2318:
	mov	r15, qword ptr [rsp + 0x18]
.label_2322:
	mov	dword ptr [r15], 0xc
	jmp	.label_2320
.label_2296:
	call	free
	jmp	.label_2322
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4134b0

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
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4134f0

	.globl xmalloc
	.type xmalloc, @function
xmalloc:
	push	rbx
	mov	rbx, rdi
	call	malloc
	test	rbx, rbx
	je	.label_2337
	test	rax, rax
	je	.label_2338
.label_2337:
	pop	rbx
	ret	
.label_2338:
	call	xalloc_die
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x413510

	.globl proper_name_utf8
	.type proper_name_utf8, @function
proper_name_utf8:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x18
	mov	r13, rsi
	mov	r12, rdi
	xor	edi, edi
	mov	edx, 5
	mov	rsi, r12
	call	dcgettext
	mov	rbx, rax
	call	locale_charset
	mov	r14, rax
	mov	esi, OFFSET FLAT:label_2339
	mov	rdi, r14
	call	c_strcasecmp
	test	eax, eax
	je	.label_2344
	mov	qword ptr [rsp + 0x10], rbx
	mov	esi, OFFSET FLAT:label_2339
	mov	rdi, r13
	mov	rdx, r14
	call	xstr_iconv
	mov	r15, rax
	mov	rdi, r14
	call	strlen
	mov	rbx, rax
	lea	rdi, [rbx + 0xb]
	call	xmalloc
	mov	rbp, rax
	mov	rdi, rbp
	mov	rsi, r14
	mov	rdx, rbx
	call	memcpy
	movabs	rax, 0x4c534e4152542f2f
	mov	qword ptr [rbp + rbx], rax
	mov	byte ptr [rbp + rbx + 0xa], 0
	mov	word ptr [rbp + rbx + 8], 0x5449
	mov	esi, OFFSET FLAT:label_2339
	mov	rdi, r13
	mov	rdx, rbp
	call	xstr_iconv
	mov	r13, rax
	mov	rdi, rbp
	call	free
	test	r13, r13
	je	.label_2346
	mov	esi, 0x3f
	mov	rdi, r13
	call	strchr
	test	rax, rax
	je	.label_2350
	mov	rdi, r13
	call	free
	xor	r13d, r13d
	xor	eax, eax
	mov	qword ptr [rsp + 8], rax
	jmp	.label_2351
.label_2344:
	xor	eax, eax
	mov	qword ptr [rsp + 8], rax
	mov	r15, r13
	xor	ebp, ebp
	jmp	.label_2352
.label_2346:
	xor	eax, eax
	mov	qword ptr [rsp + 8], rax
	xor	r13d, r13d
	jmp	.label_2351
.label_2350:
	mov	qword ptr [rsp + 8], r13
.label_2351:
	mov	rbp, r15
	mov	rbx, qword ptr [rsp + 0x10]
.label_2352:
	test	r13, r13
	mov	r14, r12
	cmovne	r14, r13
	test	r15, r15
	cmovne	r14, r15
	mov	rdi, rbx
	mov	rsi, r12
	call	strcmp
	test	eax, eax
	je	.label_2342
	mov	rdi, rbx
	mov	rsi, r12
	call	mbsstr_trimmed_wordbounded
	test	al, al
	jne	.label_2347
	test	r15, r15
	je	.label_2348
	mov	rdi, rbx
	mov	rsi, r15
	call	mbsstr_trimmed_wordbounded
	test	al, al
	jne	.label_2347
.label_2348:
	test	r13, r13
	je	.label_2340
	mov	rdi, rbx
	mov	rsi, r13
	call	mbsstr_trimmed_wordbounded
	test	al, al
	jne	.label_2347
.label_2340:
	mov	rdi, rbx
	call	strlen
	mov	r15, rbx
	mov	rbx, rax
	mov	rdi, r14
	call	strlen
	lea	rdi, [rbx + rax + 4]
	call	xmalloc
	mov	rbx, rax
	mov	esi, 1
	mov	rdx, -1
	mov	ecx, OFFSET FLAT:label_593
	xor	eax, eax
	mov	rdi, rbx
	mov	r8, r15
	mov	r9, r14
	call	__sprintf_chk
.label_2347:
	test	rbp, rbp
	je	.label_2343
	mov	rdi, rbp
	call	free
.label_2343:
	mov	rdi, qword ptr [rsp + 8]
	test	rdi, rdi
	je	.label_2345
	call	free
	jmp	.label_2345
.label_2342:
	test	rbp, rbp
	je	.label_2349
	cmp	rbp, r14
	je	.label_2349
	mov	rdi, rbp
	call	free
.label_2349:
	mov	rdi, qword ptr [rsp + 8]
	test	rdi, rdi
	je	.label_2341
	cmp	rdi, r14
	je	.label_2341
	call	free
.label_2341:
	mov	rbx, r14
.label_2345:
	mov	rax, rbx
	add	rsp, 0x18
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
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
	nop	word ptr cs:[rax + rax]
	push	rbp
	push	r15
	push	r14
	push	rbx
	push	rax
	mov	r14, rsi
	mov	esi, OFFSET FLAT:label_347
	call	fopen
	mov	rbx, rax
	xor	r15d, r15d
	test	rbx, rbx
	je	.label_350
	mov	rdi, rbx
	mov	rsi, r14
	call	fread_file
	mov	r15, rax
	call	__errno_location
	mov	r14, rax
	mov	ebp, dword ptr [r14]
	mov	rdi, rbx
	call	rpl_fclose
	test	eax, eax
	je	.label_350
	test	r15, r15
	je	.label_354
	mov	ebp, dword ptr [r14]
	mov	rdi, r15
	call	free
.label_354:
	mov	dword ptr [r14], ebp
	xor	r15d, r15d
.label_350:
	mov	rax, r15
	add	rsp, 8
	pop	rbx
	pop	r14
	pop	r15
	pop	rbp
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4137c0

	.globl parse_bracket_element
	.type parse_bracket_element, @function
parse_bracket_element:
	push	r15
	push	r14
	push	rbx
	sub	rsp, 0x10
	mov	r15, rdx
	mov	r14, rdi
	mov	r11, qword ptr [rsi + 0x48]
	cmp	dword ptr [rsi + 0x90], 1
	je	.label_2353
	lea	rax, [r11 + 1]
	mov	rbx, qword ptr [rsi + 0x30]
	cmp	rax, rbx
	jge	.label_2353
	mov	r10, qword ptr [rsi + 0x10]
	lea	rax, [r10 + r11*4]
	mov	edi, 1
	nop	word ptr cs:[rax + rax]
.label_2356:
	cmp	dword ptr [rax + rdi*4], -1
	jne	.label_2354
	lea	rdx, [r11 + rdi + 1]
	inc	rdi
	cmp	rdx, rbx
	jl	.label_2356
.label_2354:
	cmp	edi, 2
	jl	.label_2353
	mov	dword ptr [r14], 1
	mov	eax, dword ptr [r10 + r11*4]
	mov	dword ptr [r14 + 8], eax
	movsxd	rax, edi
	add	rax, r11
	mov	qword ptr [rsi + 0x48], rax
	jmp	.label_2357
.label_2353:
	movsxd	rax, ecx
	add	r11, rax
	mov	qword ptr [rsi + 0x48], r11
	movzx	edi, byte ptr [r15 + 8]
	mov	eax, edi
	add	al, 0xea
	movzx	eax, al
	cmp	al, 8
	ja	.label_428
	jmp	qword ptr [(rax * 8) + label_2355]
.label_3080:
	mov	eax, 7
	cmp	qword ptr [rsi + 0x68], r11
	jle	.label_370
	mov	r11b, byte ptr [r15]
	xor	ecx, ecx
	jmp	.label_374
	nop	word ptr cs:[rax + rax]
.label_391:
	inc	rcx
	movzx	edi, byte ptr [r15 + 8]
.label_374:
	cmp	dil, 0x1e
	jne	.label_379
	cmp	byte ptr [rsi + 0x8b], 0
	jne	.label_380
	mov	rbx, qword ptr [rsi + 0x48]
	lea	rdi, [rbx + 1]
	mov	qword ptr [rsi + 0x48], rdi
	mov	rdx, qword ptr [rsi + 8]
	mov	bl, byte ptr [rdx + rbx]
	jmp	.label_372
	nop	dword ptr [rax]
.label_379:
	mov	rdx, qword ptr [rsi + 0x48]
	lea	rdi, [rdx + 1]
	mov	qword ptr [rsi + 0x48], rdi
	mov	rbx, qword ptr [rsi + 8]
.label_385:
	mov	bl, byte ptr [rbx + rdx]
.label_372:
	cmp	qword ptr [rsi + 0x68], rdi
	jle	.label_370
	cmp	bl, r11b
	jne	.label_388
	mov	rdx, qword ptr [rsi + 8]
	cmp	byte ptr [rdx + rdi], 0x5d
	je	.label_389
.label_388:
	mov	rdx, qword ptr [r14 + 8]
	mov	byte ptr [rdx + rcx], bl
	cmp	rcx, 0x1e
	jle	.label_391
	jmp	.label_370
.label_380:
	cmp	byte ptr [rsi + 0x8c], 0
	je	.label_396
	mov	r9, qword ptr [rsi + 0x30]
	mov	r8, qword ptr [rsi + 0x48]
	cmp	r8, r9
	je	.label_397
	mov	rdx, qword ptr [rsi + 0x10]
	cmp	dword ptr [rdx + r8*4], -1
	je	.label_401
.label_397:
	mov	rdx, qword ptr [rsi]
	mov	rdi, qword ptr [rsi + 0x18]
	mov	rbx, qword ptr [rsi + 0x28]
	add	rbx, qword ptr [rdi + r8*8]
	mov	bl, byte ptr [rdx + rbx]
	test	bl, bl
	js	.label_401
	mov	edi, 1
	cmp	dword ptr [rsi + 0x90], 1
	je	.label_405
	lea	rdx, [r8 + 1]
	cmp	rdx, r9
	jge	.label_405
	lea	r10, [r8*4]
	add	r10, qword ptr [rsi + 0x10]
	mov	edi, 1
.label_412:
	cmp	dword ptr [r10 + rdi*4], -1
	jne	.label_405
	lea	rdx, [r8 + rdi + 1]
	inc	rdi
	cmp	rdx, r9
	jl	.label_412
.label_405:
	movsxd	rdi, edi
	add	rdi, r8
	mov	qword ptr [rsi + 0x48], rdi
	jmp	.label_372
.label_396:
	mov	rdx, qword ptr [rsi + 0x48]
	lea	rdi, [rdx + 1]
	add	rdx, qword ptr [rsi + 0x28]
	mov	qword ptr [rsi + 0x48], rdi
	mov	rbx, qword ptr [rsi]
	jmp	.label_385
.label_401:
	lea	rdi, [r8 + 1]
	mov	qword ptr [rsi + 0x48], rdi
	mov	rdx, qword ptr [rsi + 8]
	mov	bl, byte ptr [rdx + r8]
	jmp	.label_372
.label_389:
	inc	rdi
	mov	qword ptr [rsi + 0x48], rdi
	movsxd	rax, ecx
	mov	rcx, qword ptr [r14 + 8]
	mov	byte ptr [rcx + rax], 0
	mov	cl, byte ptr [r15 + 8]
	xor	eax, eax
	cmp	cl, 0x1e
	je	.label_422
	cmp	cl, 0x1c
	je	.label_424
	cmp	cl, 0x1a
	jne	.label_370
	mov	dword ptr [r14], 3
	jmp	.label_370
.label_422:
	mov	dword ptr [r14], 4
	jmp	.label_370
.label_424:
	mov	dword ptr [r14], 2
	jmp	.label_370
.label_3079:
	test	r9b, r9b
	jne	.label_428
	lea	rdi, [rsp]
	mov	rdx, r8
	call	peek_token_bracket
	mov	eax, 0xb
	cmp	byte ptr [rsp + 8], 0x15
	jne	.label_370
.label_428:
	mov	dword ptr [r14], 0
	mov	al, byte ptr [r15]
	mov	byte ptr [r14 + 8], al
.label_2357:
	xor	eax, eax
.label_370:
	add	rsp, 0x10
	pop	rbx
	pop	r14
	pop	r15
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x413a20

	.globl check_halt_state_context
	.type check_halt_state_context, @function
check_halt_state_context:
	push	r14
	push	rbx
	push	rax
	mov	r14, rsi
	mov	rbx, rdi
	mov	eax, dword ptr [rbx + 0xa0]
	mov	rsi, rdx
	mov	edx, eax
	call	re_string_context_at
	mov	r10, qword ptr [r14 + 0x10]
	xor	ecx, ecx
	test	r10, r10
	jle	.label_2359
	mov	rcx, qword ptr [rbx + 0x98]
	mov	r11, qword ptr [r14 + 0x18]
	mov	rdi, qword ptr [rcx]
	mov	r9d, eax
	and	r9d, 1
	mov	r8d, eax
	and	r8d, 2
	and	eax, 8
	xor	ebx, ebx
	nop	word ptr [rax + rax]
.label_2358:
	mov	rcx, qword ptr [r11 + rbx*8]
	mov	rdx, rcx
	shl	rdx, 4
	mov	esi, dword ptr [rdi + rdx + 8]
	cmp	sil, 2
	jne	.label_2361
	shr	esi, 8
	test	si, 0x3ff
	je	.label_2359
	test	r9d, r9d
	jne	.label_2362
	mov	edx, esi
	and	edx, 4
	jne	.label_2361
.label_2362:
	test	r9d, r9d
	je	.label_2363
	mov	edx, esi
	and	edx, 8
	jne	.label_2361
.label_2363:
	test	r8d, r8d
	jne	.label_2360
	mov	edx, esi
	and	edx, 0x20
	jne	.label_2361
.label_2360:
	test	eax, eax
	jne	.label_2359
	test	sil, sil
	jns	.label_2359
	nop	dword ptr [rax]
.label_2361:
	inc	rbx
	cmp	rbx, r10
	mov	ecx, 0
	jl	.label_2358
.label_2359:
	mov	rax, rcx
	add	rsp, 8
	pop	rbx
	pop	r14
	ret	
	nop	dword ptr [rax + rax]
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x18
	mov	rbx, r8
	mov	r15, rcx
	mov	r14, rdx
	mov	r13, rsi
	mov	rbp, qword ptr [rsp + 0x60]
	mov	rax, rbx
	or	rax, r14
	or	rax, rbp
	js	.label_141
	movabs	rax, 0x7fffffffffffffff
	test	rbx, rbx
	js	.label_450
	sub	rax, rbx
	cmp	rax, r14
	jl	.label_141
	lea	rdx, [rbx + r14]
	xor	r12d, r12d
	test	rbx, rbx
	jle	.label_465
	xor	r12d, r12d
	test	r14, r14
	jle	.label_468
	mov	qword ptr [rsp + 8], rdi
	mov	qword ptr [rsp], rdx
	mov	rdi, rdx
	mov	qword ptr [rsp + 0x10], r9
	call	malloc
	mov	r12, rax
	test	r12, r12
	je	.label_141
	mov	rdi, r12
	mov	rsi, r13
	mov	rdx, r14
	call	memcpy
	mov	rdi, r12
	add	rdi, r14
	mov	rsi, r15
	mov	rdx, rbx
	call	memcpy
	mov	rdi, qword ptr [rsp + 8]
	mov	r9, qword ptr [rsp + 0x10]
	mov	r13, r12
	mov	rdx, qword ptr [rsp]
	jmp	.label_465
.label_450:
	inc	rax
	sub	rax, rbx
	cmp	rax, r14
	jle	.label_284
.label_141:
	mov	rax, -2
	jmp	.label_486
.label_284:
	add	rbx, r14
	xor	r12d, r12d
	mov	rdx, rbx
	jmp	.label_465
.label_468:
	mov	r13, r15
.label_465:
	mov	r8, qword ptr [rsp + 0x50]
	mov	rsi, r13
	mov	rcx, r9
	mov	r9, rbp
	push	0
	push	qword ptr [rsp + 0x60]
	call	re_search_stub
	add	rsp, 0x10
	mov	rbx, rax
	mov	rdi, r12
	call	free
	mov	rax, rbx
.label_486:
	add	rsp, 0x18
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x413bf0

	.globl copy_unescaped_string
	.type copy_unescaped_string, @function
copy_unescaped_string:
	push	r15
	push	r14
	push	rbx
	mov	rbx, rdi
	call	strlen
	lea	rdi, [rax + 1]
	call	xmalloc
	mov	r14, rax
	mov	cl, byte ptr [rbx]
	test	cl, cl
	mov	r15, r14
	je	.label_2367
	mov	r15, r14
	jmp	.label_2372
.label_2910:
	call	__ctype_b_loc
	mov	rdi, qword ptr [rax]
	movzx	edx, byte ptr [rbx + 2]
	test	byte ptr [rdi + rdx*2 + 1], 0x10
	jne	.label_2375
	add	rbx, 2
	mov	word ptr [r15], 0x785c
.label_2368:
	add	r15, 2
	jmp	.label_2379
.label_2376:
	add	rbx, 2
	xor	ecx, ecx
	jmp	.label_2383
.label_2375:
	movsx	ecx, dl
	mov	eax, ecx
	add	al, 0x9f
	cmp	al, 5
	ja	.label_2384
	add	ecx, -0x57
	jmp	.label_2386
.label_2380:
	add	rbx, 3
	jmp	.label_2383
.label_2384:
	add	dl, 0xbf
	cmp	dl, 5
	ja	.label_2389
	add	ecx, -0x37
	jmp	.label_2386
.label_2391:
	add	rbx, 4
.label_2383:
	mov	rax, rbx
	mov	byte ptr [r15], cl
	jmp	.label_2365
.label_2389:
	add	ecx, -0x30
.label_2386:
	movzx	esi, byte ptr [rbx + 3]
	test	byte ptr [rdi + rsi*2 + 1], 0x10
	jne	.label_2364
	add	rbx, 3
	jmp	.label_2371
.label_2364:
	movsx	edx, sil
	shl	ecx, 4
	mov	eax, edx
	add	al, 0x9f
	cmp	al, 6
	jae	.label_2370
	add	edx, -0x57
	jmp	.label_2377
.label_2370:
	add	sil, 0xbf
	cmp	sil, 6
	jae	.label_2388
	add	edx, -0x37
	jmp	.label_2377
.label_2388:
	add	edx, -0x30
.label_2377:
	add	edx, ecx
	movzx	esi, byte ptr [rbx + 4]
	test	byte ptr [rdi + rsi*2 + 1], 0x10
	jne	.label_2378
	add	rbx, 4
	mov	rax, rbx
	mov	ecx, edx
	mov	byte ptr [r15], cl
	jmp	.label_2365
.label_2378:
	movsx	ecx, sil
	shl	edx, 4
	mov	eax, ecx
	add	al, 0x9f
	cmp	al, 6
	jae	.label_2385
	add	ecx, -0x57
	jmp	.label_2382
.label_2385:
	add	sil, 0xbf
	cmp	sil, 6
	jae	.label_2387
	add	ecx, -0x37
	jmp	.label_2382
.label_2387:
	add	ecx, -0x30
.label_2382:
	add	ecx, edx
	add	rbx, 5
.label_2371:
	mov	rax, rbx
	mov	byte ptr [r15], cl
	jmp	.label_2365
	nop	word ptr [rax + rax]
.label_2372:
	lea	rax, [rbx + 1]
	cmp	cl, 0x5c
	jne	.label_2369
	mov	cl, byte ptr [rax]
	movsx	edx, cl
	lea	esi, [rdx - 0x30]
	cmp	esi, 0x48
	ja	.label_2373
	jmp	qword ptr [(rsi * 8) + label_2390]
.label_2900:
	movsx	ecx, byte ptr [rbx + 2]
	mov	eax, ecx
	and	al, 0xf8
	cmp	al, 0x30
	jne	.label_2376
	add	ecx, -0x30
	movsx	eax, byte ptr [rbx + 3]
	mov	edx, eax
	and	dl, 0xf8
	cmp	dl, 0x30
	jne	.label_2380
	lea	ecx, [rax + rcx*8 - 0x30]
	movsx	eax, byte ptr [rbx + 4]
	mov	edx, eax
	and	dl, 0xf8
	cmp	dl, 0x30
	jne	.label_2391
	lea	ecx, [rax + rcx*8 - 0x30]
	add	rbx, 5
	jmp	.label_2383
	nop	word ptr cs:[rax + rax]
.label_2369:
	mov	byte ptr [r15], cl
.label_2365:
	inc	r15
	jmp	.label_2366
.label_2373:
	test	edx, edx
	je	.label_2366
.label_2901:
	mov	byte ptr [r15], 0x5c
	mov	al, byte ptr [rbx + 1]
	add	rbx, 2
	mov	byte ptr [r15 + 1], al
	jmp	.label_2368
.label_2902:
	mov	byte ptr [r15], 7
	jmp	.label_2374
.label_2905:
	mov	byte ptr [r15], 0xc
	jmp	.label_2374
.label_2903:
	mov	byte ptr [r15], 8
	jmp	.label_2374
.label_2904:
	test	cl, cl
	je	.label_2366
	inc	rbx
	mov	rax, rbx
	nop	dword ptr [rax]
.label_2381:
	cmp	byte ptr [rax + 1], 0
	lea	rax, [rax + 1]
	jne	.label_2381
	jmp	.label_2366
.label_2906:
	mov	byte ptr [r15], 0xa
	jmp	.label_2374
.label_2907:
	mov	byte ptr [r15], 0xd
	jmp	.label_2374
.label_2908:
	mov	byte ptr [r15], 9
	jmp	.label_2374
.label_2909:
	mov	byte ptr [r15], 0xb
	nop	word ptr cs:[rax + rax]
.label_2374:
	inc	r15
	add	rbx, 2
.label_2379:
	mov	rax, rbx
.label_2366:
	mov	cl, byte ptr [rax]
	test	cl, cl
	mov	rbx, rax
	jne	.label_2372
.label_2367:
	mov	byte ptr [r15], 0
	mov	rax, r14
	pop	rbx
	pop	r14
	pop	r15
	ret	
	nop	word ptr cs:[rax + rax]
	mov	rax, rsi
	mov	rdx, rdi
	xor	edi, edi
	mov	ecx, OFFSET FLAT:quote_quoting_options
	mov	rsi, rdx
	mov	rdx, rax
	jmp	quotearg_n_options
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x413e40

	.globl hard_locale
	.type hard_locale, @function
hard_locale:
	push	rbx
	xor	esi, esi
	call	setlocale
	mov	bl, 1
	test	rax, rax
	je	.label_2393
	cmp	byte ptr [rax], 0x43
	jne	.label_2395
	cmp	byte ptr [rax + 1], 0
	je	.label_2392
.label_2395:
	mov	esi, OFFSET FLAT:label_2394
	mov	rdi, rax
	call	strcmp
	test	eax, eax
	jne	.label_2393
.label_2392:
	xor	ebx, ebx
.label_2393:
	mov	eax, ebx
	pop	rbx
	ret	
	nop	word ptr cs:[rax + rax]
.label_2399:
	mov	rdi, rbx
	call	free
	mov	rdi, qword ptr [r15]
	call	free
	mov	rdi, qword ptr [r15 + 8]
	call	free
	mov	rdi, qword ptr [r15 + 0x10]
	call	free
	mov	rdi, qword ptr [r15 + 0x18]
	call	free
	mov	rdi, r15
	call	free
	mov	rax, qword ptr [rsp + 8]
	mov	dword ptr [rax], r14d
	jmp	.label_591
.label_2401:
	mov	rdi, rbx
	jmp	.label_2404
	.section	.text
	.align	32
	#Procedure 0x413ec8

	.globl build_charclass_op
	.type build_charclass_op, @function
build_charclass_op:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x18
	mov	r15, r9
	mov	dword ptr [rsp + 4], r8d
	mov	rbp, rcx
	mov	r14, rdx
	mov	r13, rsi
	mov	r12, rdi
	mov	qword ptr [rsp + 0x10], 0
	mov	edi, 0x20
	mov	esi, 1
	call	rpl_calloc
	mov	rbx, rax
	test	rbx, rbx
	je	.label_2396
	mov	qword ptr [rsp + 8], r15
	mov	edi, 0x50
	mov	esi, 1
	call	rpl_calloc
	mov	r15, rax
	test	r15, r15
	je	.label_2401
	mov	al, byte ptr [r15 + 0x20]
	and	al, 0xfe
	mov	ecx, dword ptr [rsp + 4]
	or	al, cl
	mov	byte ptr [r15 + 0x20], al
	lea	rcx, [rsp + 0x10]
	xor	r9d, r9d
	mov	rdi, r13
	mov	rsi, rbx
	mov	rdx, r15
	mov	r8, r14
	call	build_charclass
	mov	r14d, eax
	test	r14d, r14d
	jne	.label_2399
	mov	al, byte ptr [rbp]
	test	al, al
	je	.label_2406
	inc	rbp
	nop	word ptr cs:[rax + rax]
.label_2409:
	movsx	rcx, al
	mov	eax, 1
	shl	rax, cl
	mov	rdx, rcx
	sar	rdx, 0x3f
	shr	rdx, 0x3a
	add	rdx, rcx
	sar	rdx, 6
	or	qword ptr [rbx + rdx*8], rax
	movzx	eax, byte ptr [rbp]
	inc	rbp
	test	al, al
	jne	.label_2409
.label_2406:
	mov	eax, dword ptr [rsp + 4]
	test	al, al
	je	.label_2402
	movdqu	xmm0, xmmword ptr [rbx]
	pcmpeqd	xmm1, xmm1
	pxor	xmm0, xmm1
	movdqu	xmmword ptr [rbx], xmm0
	movdqu	xmm0, xmmword ptr [rbx + 0x10]
	pxor	xmm0, xmm1
	movdqu	xmmword ptr [rbx + 0x10], xmm0
.label_2402:
	cmp	dword ptr [r12 + 0xb4], 2
	jl	.label_2405
	mov	rax, qword ptr [r12 + 0x78]
	mov	rcx, qword ptr [rax]
	and	qword ptr [rbx], rcx
	mov	rcx, qword ptr [rax + 8]
	and	qword ptr [rbx + 8], rcx
	mov	rcx, qword ptr [rax + 0x10]
	and	qword ptr [rbx + 0x10], rcx
	mov	rax, qword ptr [rax + 0x18]
	and	qword ptr [rbx + 0x18], rax
.label_2405:
	mov	ecx, dword ptr [r12 + 0x80]
	cmp	ecx, 0xf
	je	.label_2410
	mov	rax, qword ptr [r12 + 0x70]
.label_2398:
	lea	edx, [rcx + 1]
	mov	dword ptr [r12 + 0x80], edx
	movsxd	rcx, ecx
	shl	rcx, 6
	lea	r14, [rax + rcx + 8]
	pxor	xmm0, xmm0
	movdqu	xmmword ptr [rax + rcx + 8], xmm0
	mov	qword ptr [rax + rcx + 0x18], 0
	mov	qword ptr [rax + rcx + 0x30], rbx
	mov	dword ptr [rax + rcx + 0x38], 3
	movdqu	xmmword ptr [rax + rcx + 0x20], xmm0
	mov	qword ptr [rax + rcx + 0x40], -1
	cmp	dword ptr [r12 + 0xb4], 2
	jl	.label_2400
	or	byte ptr [r12 + 0xb0], 2
	mov	eax, dword ptr [r12 + 0x80]
	cmp	eax, 0xf
	je	.label_2407
	mov	rbp, qword ptr [r12 + 0x70]
.label_2411:
	lea	ecx, [rax + 1]
	mov	dword ptr [r12 + 0x80], ecx
	movsxd	rbx, eax
	shl	rbx, 6
	pxor	xmm0, xmm0
	movdqu	xmmword ptr [rbp + rbx + 8], xmm0
	mov	qword ptr [rbp + rbx + 0x18], 0
	mov	qword ptr [rbp + rbx + 0x30], r15
	mov	dword ptr [rbp + rbx + 0x38], 6
	movdqu	xmmword ptr [rbp + rbx + 0x20], xmm0
	mov	qword ptr [rbp + rbx + 0x40], -1
	mov	eax, dword ptr [r12 + 0x80]
	cmp	eax, 0xf
	je	.label_2397
	mov	rcx, qword ptr [r12 + 0x70]
.label_2403:
	lea	rdx, [rbp + rbx + 8]
	lea	esi, [rax + 1]
	mov	dword ptr [r12 + 0x80], esi
	movsxd	rsi, eax
	shl	rsi, 6
	lea	rax, [rcx + rsi + 8]
	mov	qword ptr [rcx + rsi + 8], 0
	mov	qword ptr [rcx + rsi + 0x10], r14
	mov	qword ptr [rcx + rsi + 0x18], rdx
	mov	dword ptr [rcx + rsi + 0x38], 0xa
	pxor	xmm0, xmm0
	movdqu	xmmword ptr [rcx + rsi + 0x20], xmm0
	mov	qword ptr [rcx + rsi + 0x40], -1
	mov	qword ptr [r14], rax
	mov	qword ptr [rdx], rax
	jmp	.label_175
.label_2396:
	mov	dword ptr [r15], 0xc
	jmp	.label_591
.label_2400:
	mov	rdi, qword ptr [r15]
	call	free
	mov	rdi, qword ptr [r15 + 8]
	call	free
	mov	rdi, qword ptr [r15 + 0x10]
	call	free
	mov	rdi, qword ptr [r15 + 0x18]
	call	free
	mov	rdi, r15
	call	free
	mov	rax, r14
.label_175:
	add	rsp, 0x18
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_2410:
	mov	edi, 0x3c8
	call	malloc
	test	rax, rax
	je	.label_2408
	mov	rcx, qword ptr [r12 + 0x70]
	mov	qword ptr [rax], rcx
	mov	qword ptr [r12 + 0x70], rax
	mov	dword ptr [r12 + 0x80], 0
	xor	ecx, ecx
	jmp	.label_2398
.label_2408:
	mov	rdi, rbx
	call	free
	mov	rdi, qword ptr [r15]
	call	free
	mov	rdi, qword ptr [r15 + 8]
	call	free
	mov	rdi, qword ptr [r15 + 0x10]
	call	free
	mov	rdi, qword ptr [r15 + 0x18]
	call	free
	mov	rdi, r15
.label_2404:
	call	free
	mov	rax, qword ptr [rsp + 8]
	mov	dword ptr [rax], 0xc
.label_591:
	xor	eax, eax
	jmp	.label_175
.label_2407:
	mov	edi, 0x3c8
	call	malloc
	mov	rbp, rax
	test	rbp, rbp
	je	.label_2408
	mov	rax, qword ptr [r12 + 0x70]
	mov	qword ptr [rbp], rax
	mov	qword ptr [r12 + 0x70], rbp
	mov	dword ptr [r12 + 0x80], 0
	xor	eax, eax
	jmp	.label_2411
.label_2397:
	mov	edi, 0x3c8
	call	malloc
	mov	rcx, rax
	xor	eax, eax
	test	rcx, rcx
	je	.label_175
	mov	rdx, qword ptr [r12 + 0x70]
	mov	qword ptr [rcx], rdx
	mov	qword ptr [r12 + 0x70], rcx
	mov	dword ptr [r12 + 0x80], 0
	jmp	.label_2403
	nop	word ptr cs:[rax + rax]
	mov	rax, qword ptr [rip + rpl_re_syntax_options]
	mov	qword ptr [rip + rpl_re_syntax_options],  rdi
	ret	
	nop	
.label_188:
	call	xalloc_die
.label_192:
	test	rax, rax
	mov	ebx, 0x80
	cmovne	rbx, rax
	test	rbx, rbx
	js	.label_188
	mov	qword ptr [rsi], rbx
.label_194:
	mov	rsi, rbx
	call	realloc
	test	rbx, rbx
	je	.label_191
	test	rax, rax
	je	.label_188
.label_191:
	pop	rbx
	ret	
	push	rbx
	mov	rax, qword ptr [rsi]
	test	rdi, rdi
	je	.label_192
	movabs	rcx, 0x5555555555555554
	cmp	rax, rcx
	jae	.label_193
	mov	rbx, rax
	shr	rbx, 1
	add	rbx, rax
	inc	rbx
	mov	qword ptr [rsi], rbx
	jne	.label_194
	call	free
	xor	eax, eax
	jmp	.label_191
.label_193:
	call	xalloc_die
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4142e0

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
	jle	.label_2417
	mov	qword ptr [rax + r14*8], rbx
	mov	qword ptr [r13 + 0xc0], r14
	jmp	.label_2416
.label_2417:
	mov	rcx, qword ptr [rax + r14*8]
	test	rcx, rcx
	je	.label_2418
	mov	rdx, qword ptr [rcx + 0x50]
	test	rbx, rbx
	je	.label_2419
	mov	rbx, qword ptr [rbx + 0x50]
	lea	rdi, [rsp]
	mov	rsi, rbx
	call	re_node_set_init_union
	mov	dword ptr [r15], eax
	test	eax, eax
	jne	.label_2412
	mov	rsi, qword ptr [r13 + 0x48]
	test	rbx, rbx
	sete	bpl
	jmp	.label_2414
.label_2418:
	mov	qword ptr [rax + r14*8], rbx
	jmp	.label_2416
.label_2419:
	mov	rax, qword ptr [rdx + 0x10]
	mov	qword ptr [rsp + 0x10], rax
	movups	xmm0, xmmword ptr [rdx]
	movaps	xmmword ptr [rsp], xmm0
	mov	bpl, 1
	mov	rsi, r14
.label_2414:
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
	test	bpl, bpl
	jne	.label_2416
	mov	rdi, qword ptr [rsp + 0x10]
	call	free
.label_2416:
	test	rbx, rbx
	je	.label_2415
	mov	rax, qword ptr [r12 + 0x98]
	test	rax, rax
	je	.label_2415
	lea	r12, [rbx + 8]
	mov	rdi, r13
	mov	rsi, r12
	mov	rdx, r14
	call	check_subexp_matching_top
	mov	ecx, eax
	mov	dword ptr [r15], ecx
	xor	eax, eax
	test	ecx, ecx
	jne	.label_2413
	test	byte ptr [rbx + 0x68], 0x40
	mov	rax, rbx
	je	.label_2413
	mov	rdi, r13
	mov	rsi, r12
	call	transit_state_bkref
	mov	ecx, eax
	mov	dword ptr [r15], ecx
	xor	eax, eax
	test	ecx, ecx
	jne	.label_2413
	mov	rax, qword ptr [r13 + 0xb8]
	mov	rax, qword ptr [rax + r14*8]
	jmp	.label_2413
.label_2415:
	mov	rax, rbx
.label_2413:
	add	rsp, 0x18
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_2412:
	xor	eax, eax
	jmp	.label_2413
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x414430

	.globl matcher_error
	.type matcher_error, @function
matcher_error:
	push	rbx
	call	__errno_location
	mov	ebx, dword ptr [rax]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_2420
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	mov	edi, 1
	xor	eax, eax
	mov	esi, ebx
	mov	rdx, rcx
	call	error
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x414460

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
	je	.label_2427
	mov	qword ptr [rsp + 8], -1
	xor	eax, eax
	mov	qword ptr [rsp + 0x10], rax
	mov	qword ptr [rsp + 0x18], r14
	xor	ebp, ebp
	nop	dword ptr [rax + rax]
.label_2421:
	mov	rdi, r15
	mov	rsi, r12
	mov	rdx, rbx
	call	strncmp
	test	eax, eax
	jne	.label_2426
	mov	rdi, r15
	call	strlen
	cmp	rax, rbx
	je	.label_2424
	cmp	qword ptr [rsp + 8], -1
	je	.label_2425
	mov	rax, qword ptr [rsp + 0x18]
	test	rax, rax
	je	.label_2423
	mov	rdi, qword ptr [rsp + 8]
	imul	rdi, r13
	add	rdi, rax
	mov	rsi, r14
	mov	rdx, r13
	call	memcmp
	test	eax, eax
	je	.label_2426
.label_2423:
	mov	al, 1
	mov	qword ptr [rsp + 0x10], rax
	jmp	.label_2426
.label_2425:
	mov	qword ptr [rsp + 8], rbp
	nop	word ptr [rax + rax]
.label_2426:
	mov	rax, qword ptr [rsp + 0x20]
	mov	r15, qword ptr [rax + rbp*8 + 8]
	inc	rbp
	add	r14, r13
	test	r15, r15
	jne	.label_2421
	jmp	.label_2422
.label_2427:
	mov	qword ptr [rsp + 8], -1
	xor	eax, eax
	mov	qword ptr [rsp + 0x10], rax
.label_2422:
	mov	rax, qword ptr [rsp + 0x10]
	test	al, 1
	mov	rbp, -2
	cmove	rbp, qword ptr [rsp + 8]
.label_2424:
	mov	rax, rbp
	add	rsp, 0x28
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
	nop	dword ptr [rax]
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
	je	.label_290
	add	rbx, 8
	nop	word ptr cs:[rax + rax]
.label_301:
	mov	rdi, r12
	mov	rsi, r15
	mov	rdx, r14
	call	memcmp
	test	eax, eax
	mov	rax, r13
	je	.label_290
	mov	r13, qword ptr [rbx]
	add	rbx, 8
	add	r15, r14
	test	r13, r13
	mov	eax, 0
	jne	.label_301
.label_290:
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4145d0

	.globl get_subexp_sub
	.type get_subexp_sub, @function
get_subexp_sub:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x28
	mov	r14, r8
	mov	rbx, rcx
	mov	r12, rdx
	mov	r15, rsi
	mov	r13, rdi
	lea	rsi, [r12 + 0x10]
	mov	rdx, qword ptr [r12]
	mov	rcx, qword ptr [r12 + 8]
	mov	dword ptr [rsp], 8
	mov	r8, rbx
	mov	r9, r14
	call	check_arrival
	mov	ebp, eax
	test	ebp, ebp
	jne	.label_2430
	mov	qword ptr [rsp + 0x20], r15
	mov	rsi, qword ptr [r15]
	mov	rdi, qword ptr [r12 + 8]
	mov	r15, qword ptr [r13 + 0xc8]
	mov	rax, qword ptr [r13 + 0xd0]
	cmp	r15, rax
	jl	.label_2433
	mov	qword ptr [rsp + 0x10], rsi
	mov	qword ptr [rsp + 0x18], rdi
	mov	rdi, qword ptr [r13 + 0xd8]
	shl	rax, 4
	lea	rsi, [rax + rax*4]
	call	realloc
	test	rax, rax
	je	.label_2431
	mov	qword ptr [r13 + 0xd8], rax
	mov	r15, qword ptr [r13 + 0xc8]
	mov	rbp, qword ptr [r13 + 0xd0]
	lea	rcx, [r15 + r15*4]
	lea	rdi, [rax + rcx*8]
	lea	rax, [rbp*8]
	lea	rdx, [rax + rax*4]
	xor	esi, esi
	call	memset
	add	rbp, rbp
	mov	qword ptr [r13 + 0xd0], rbp
	mov	rdi, qword ptr [rsp + 0x18]
	mov	rsi, qword ptr [rsp + 0x10]
.label_2433:
	test	r15, r15
	jle	.label_2434
	lea	rcx, [r15 - 1]
	mov	rax, qword ptr [r13 + 0xd8]
	lea	rcx, [rcx + rcx*4]
	cmp	qword ptr [rax + rcx*8 + 8], r14
	jne	.label_2435
	mov	byte ptr [rax + rcx*8 + 0x20], 1
	jmp	.label_2435
.label_2434:
	mov	rax, qword ptr [r13 + 0xd8]
.label_2435:
	lea	rcx, [r15 + r15*4]
	mov	qword ptr [rax + rcx*8], rbx
	mov	qword ptr [rax + rcx*8 + 8], r14
	mov	qword ptr [rax + rcx*8 + 0x10], rsi
	mov	qword ptr [rax + rcx*8 + 0x18], rdi
	xor	edx, edx
	sub	rdi, rsi
	mov	si, 0xffff
	cmovne	si, dx
	mov	word ptr [rax + rcx*8 + 0x22], si
	inc	r15
	mov	qword ptr [r13 + 0xc8], r15
	mov	byte ptr [rax + rcx*8 + 0x20], 0
	movsxd	rax, dword ptr [r13 + 0xe0]
	cmp	rax, rdi
	jge	.label_2429
	mov	dword ptr [r13 + 0xe0], edi
.label_2429:
	add	r14, qword ptr [r12 + 8]
	mov	rax, qword ptr [rsp + 0x20]
	sub	r14, qword ptr [rax]
	mov	rax, qword ptr [r13 + 0x40]
	mov	r15, qword ptr [r13 + 0xc0]
	cmp	rax, r14
	jg	.label_2432
	cmp	rax, qword ptr [r13 + 0x58]
	jl	.label_2436
.label_2432:
	mov	rax, qword ptr [r13 + 0x30]
	cmp	rax, r14
	jg	.label_2428
	cmp	rax, qword ptr [r13 + 0x58]
	jge	.label_2428
.label_2436:
	lea	esi, [r14 + 1]
	mov	rdi, r13
	call	extend_buffers
	mov	ebp, eax
	test	ebp, ebp
	jne	.label_2430
.label_2428:
	xor	ebp, ebp
	mov	rdx, r14
	sub	rdx, r15
	jle	.label_2430
	mov	rax, qword ptr [r13 + 0xb8]
	lea	rdi, [rax + r15*8 + 8]
	shl	rdx, 3
	xor	ebp, ebp
	xor	esi, esi
	call	memset
	mov	qword ptr [r13 + 0xc0], r14
.label_2430:
	mov	eax, ebp
	add	rsp, 0x28
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_2431:
	mov	rdi, qword ptr [r13 + 0xd8]
	call	free
	mov	ebp, 0xc
	jmp	.label_2430
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4147b0

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
	sub	rsp, 0x88
	mov	r15, rcx
	mov	rbx, rdx
	mov	r12, rsi
	mov	r13, qword ptr [rdi]
	mov	rax, qword ptr [rip + label_2444]
	mov	qword ptr [rbp - 0xa0], rax
	movups	xmm0, xmmword ptr [rip + label_2445]
	movaps	xmmword ptr [rbp - 0xb0], xmm0
	xor	eax, eax
	test	r8b, r8b
	je	.label_2446
	mov	edi, 0x60
	call	malloc
	mov	qword ptr [rbp - 0xa0], rax
	mov	r14d, 0xc
	test	rax, rax
	je	.label_233
	lea	rax, [rbp - 0xb0]
.label_2446:
	mov	qword ptr [rbp - 0x38], rax
	mov	qword ptr [rbp - 0x90], r13
	mov	r13, qword ptr [r13 + 0x90]
	xorps	xmm0, xmm0
	movaps	xmmword ptr [rbp - 0x70], xmm0
	mov	qword ptr [rbp - 0x60], 0
	mov	rdx, rbx
	shl	rdx, 4
	cmp	rdx, 0xfbf
	ja	.label_2442
	mov	rdi, rsp
	lea	rax, [rdx + 0xf]
	and	rax, 0xfffffffffffffff0
	sub	rdi, rax
	mov	rsp, rdi
	mov	dword ptr [rbp - 0x2c], 0
	jmp	.label_2451
.label_2442:
	mov	r14, rdx
	mov	rdi, rdx
	call	malloc
	mov	rdi, rax
	test	rdi, rdi
	je	.label_2465
	mov	al, 1
	mov	dword ptr [rbp - 0x2c], eax
	mov	rdx, r14
.label_2451:
	mov	qword ptr [rbp - 0x40], rdi
	mov	rsi, r15
	mov	qword ptr [rbp - 0x58], rdx
	call	memcpy
	mov	r14, qword ptr [r15]
	xor	edi, edi
	cmp	r14, qword ptr [r15 + 8]
	jg	.label_2460
	lea	rax, [r15 + 8]
	mov	qword ptr [rbp - 0x80], rax
	mov	qword ptr [rbp - 0x88], rbx
	mov	qword ptr [rbp - 0x48], r12
	mov	qword ptr [rbp - 0x78], r15
	jmp	.label_601
.label_532:
	test	r13, r13
	mov	r14, qword ptr [rbp - 0x50]
	je	.label_386
.label_546:
	mov	r14, qword ptr [r13]
	lea	rax, [r14 + 1]
	mov	qword ptr [r13], rax
	cmp	rax, qword ptr [r13 + 8]
	jne	.label_387
	mov	rdi, qword ptr [r13 + 0x10]
	shl	rax, 5
	lea	rsi, [rax + rax*2]
	call	realloc
	mov	r13, rax
	test	r13, r13
	je	.label_359
	mov	rax, qword ptr [rbp - 0x38]
	shl	qword ptr [rax + 8], 1
	mov	qword ptr [rax + 0x10], r13
	jmp	.label_308
.label_387:
	mov	r13, qword ptr [r13 + 0x10]
.label_308:
	lea	r14, [r14 + r14*2]
	shl	r14, 4
	mov	rax, qword ptr [rbp - 0x50]
	mov	qword ptr [r13 + r14], rax
	mov	qword ptr [r13 + r14 + 8], rbx
	mov	rdi, qword ptr [rbp - 0x58]
	call	malloc
	mov	qword ptr [r13 + r14 + 0x10], rax
	test	rax, rax
	je	.label_359
	mov	rdi, rax
	mov	rsi, qword ptr [rbp - 0x78]
	mov	rdx, qword ptr [rbp - 0x58]
	call	memcpy
	lea	rbx, [r13 + r14 + 0x18]
	mov	qword ptr [r13 + r14 + 0x20], r15
	test	r15, r15
	jle	.label_408
	mov	qword ptr [rbx], r15
	shl	r15, 3
	mov	rdi, r15
	call	malloc
	mov	qword ptr [r13 + r14 + 0x28], rax
	test	rax, rax
	je	.label_337
	mov	rsi, qword ptr [rbp - 0x60]
	mov	rdi, rax
	mov	rdx, r15
	call	memcpy
	mov	r14, qword ptr [rbp - 0x50]
	jmp	.label_386
.label_408:
	xorps	xmm0, xmm0
	movups	xmmword ptr [rbx], xmm0
	mov	qword ptr [rbx + 0x10], 0
	mov	r14, qword ptr [rbp - 0x50]
	jmp	.label_386
.label_540:
	mov	r12, rax
	jmp	.label_386
	nop	dword ptr [rax]
.label_601:
	mov	rax, qword ptr [rbp - 0x90]
	mov	rcx, qword ptr [rax]
	mov	rdx, r13
	shl	rdx, 4
	lea	rax, [rcx + rdx]
	mov	ecx, dword ptr [rcx + rdx + 8]
	cmp	cl, 9
	je	.label_2468
	cmp	cl, 8
	jne	.label_2437
	mov	rax, qword ptr [rax]
	inc	rax
	cmp	rax, rbx
	jge	.label_2437
	shl	rax, 4
	mov	qword ptr [r15 + rax], r14
	mov	qword ptr [r15 + rax + 8], -1
	jmp	.label_2437
	nop	word ptr cs:[rax + rax]
.label_2468:
	mov	rax, qword ptr [rax]
	inc	rax
	cmp	rax, rbx
	jge	.label_2437
	shl	rax, 4
	cmp	qword ptr [r15 + rax], r14
	jge	.label_2439
	mov	qword ptr [r15 + rax + 8], r14
	mov	rdi, qword ptr [rbp - 0x40]
	mov	rsi, r15
	jmp	.label_2440
.label_2439:
	test	ecx, 0x80000
	je	.label_2438
	mov	rcx, qword ptr [rbp - 0x40]
	cmp	qword ptr [rcx + rax], -1
	je	.label_2438
	mov	rdi, r15
	mov	rsi, qword ptr [rbp - 0x40]
.label_2440:
	mov	rdx, qword ptr [rbp - 0x58]
	call	memcpy
	jmp	.label_2437
.label_2438:
	mov	qword ptr [r15 + rax + 8], r14
	nop	dword ptr [rax]
.label_2437:
	cmp	r14, qword ptr [r15 + 8]
	jne	.label_2443
	cmp	r13, qword ptr [r12 + 0xb0]
	jne	.label_2443
	mov	r15, qword ptr [rbp - 0x38]
	test	r15, r15
	je	.label_2456
	test	rbx, rbx
	mov	eax, 0
	je	.label_2458
	mov	rcx, qword ptr [rbp - 0x80]
	xor	eax, eax
	nop	word ptr cs:[rax + rax]
.label_2464:
	cmp	qword ptr [rcx - 8], 0
	js	.label_2459
	cmp	qword ptr [rcx], -1
	je	.label_2458
.label_2459:
	inc	rax
	add	rcx, 0x10
	cmp	rax, rbx
	jb	.label_2464
.label_2458:
	cmp	rax, rbx
	je	.label_2466
	mov	rcx, qword ptr [r15]
	lea	rax, [rcx - 1]
	mov	qword ptr [r15], rax
	test	rcx, rcx
	jle	.label_320
	mov	rcx, qword ptr [r15 + 0x10]
	shl	rax, 4
	lea	rbx, [rax + rax*2]
	mov	r14, qword ptr [rcx + rbx]
	mov	rsi, qword ptr [rcx + rbx + 0x10]
	mov	rdi, qword ptr [rbp - 0x78]
	mov	rdx, qword ptr [rbp - 0x58]
	call	memcpy
	mov	rdi, qword ptr [rbp - 0x60]
	call	free
	mov	rax, qword ptr [r15 + 0x10]
	mov	rdi, qword ptr [rax + rbx + 0x10]
	call	free
	mov	rax, qword ptr [r15 + 0x10]
	mov	rcx, qword ptr [rax + rbx + 0x28]
	mov	qword ptr [rbp - 0x60], rcx
	movups	xmm0, xmmword ptr [rax + rbx + 0x18]
	movaps	xmmword ptr [rbp - 0x70], xmm0
	mov	r13, qword ptr [rax + rbx + 8]
.label_2443:
	mov	r15, qword ptr [r12 + 0x98]
	mov	rax, qword ptr [r15]
	mov	rbx, r13
	shl	rbx, 4
	mov	ecx, dword ptr [rax + rbx + 8]
	test	cl, 8
	jne	.label_2441
	test	ecx, 0x100000
	jne	.label_2449
	movzx	ecx, cl
	cmp	ecx, 4
	jne	.label_524
	mov	rax, qword ptr [rax + rbx]
	shl	rax, 4
	mov	rcx, qword ptr [rbp - 0x78]
	mov	rdi, qword ptr [rcx + rax + 0x10]
	mov	rax, qword ptr [rcx + rax + 0x18]
	mov	rdx, rax
	sub	rdx, rdi
	cmp	qword ptr [rbp - 0x38], 0
	je	.label_2453
	cmp	rax, -1
	mov	r12, r14
	je	.label_572
	cmp	rdi, -1
	je	.label_572
	test	rdx, rdx
	je	.label_2452
	mov	rax, qword ptr [rbp - 0x48]
	mov	rax, qword ptr [rax + 0x30]
	sub	rax, r12
	cmp	rax, rdx
	jl	.label_572
	mov	rax, qword ptr [rbp - 0x48]
	mov	rsi, qword ptr [rax + 8]
	add	rdi, rsi
	add	rsi, r12
	mov	rbx, rdx
	call	memcmp
	mov	rdx, rbx
	test	eax, eax
	jne	.label_572
	mov	rax, qword ptr [r15 + 0x18]
	mov	rcx, r12
	mov	r12, qword ptr [rax + r13*8]
	add	rdx, rcx
	jmp	.label_2471
	nop	
.label_2441:
	mov	rax, qword ptr [r12 + 0xb8]
	mov	qword ptr [rbp - 0x50], r14
	mov	r14, qword ptr [rax + r14*8]
	mov	rbx, qword ptr [r15 + 0x28]
	lea	rdi, [rbp - 0x70]
	mov	rsi, r13
	call	re_node_set_insert
	test	al, al
	je	.label_359
	lea	rax, [r13 + r13*2]
	mov	r9, qword ptr [rbx + rax*8 + 8]
	test	r9, r9
	jle	.label_449
	mov	r8, qword ptr [rbx + rax*8 + 0x10]
	mov	r11, qword ptr [r14 + 0x10]
	lea	r10, [r11 - 1]
	mov	r12, -1
	xor	r15d, r15d
	mov	r13, qword ptr [rbp - 0x38]
	nop	word ptr cs:[rax + rax]
.label_516:
	test	r11, r11
	jle	.label_506
	mov	rbx, qword ptr [r8 + r15*8]
	test	r10, r10
	mov	rcx, qword ptr [r14 + 0x18]
	mov	eax, 0
	je	.label_507
	mov	rsi, r10
	xor	eax, eax
	nop	dword ptr [rax]
.label_436:
	lea	rdx, [rax + rsi]
	shr	rdx, 1
	cmp	qword ptr [rcx + rdx*8], rbx
	lea	rdi, [rdx + 1]
	cmovl	rax, rdi
	cmovge	rsi, rdx
	cmp	rax, rsi
	jb	.label_436
.label_507:
	cmp	rax, -1
	je	.label_506
	cmp	qword ptr [rcx + rax*8], rbx
	jne	.label_506
	cmp	r12, -1
	jne	.label_515
	mov	r12, rbx
.label_506:
	inc	r15
	cmp	r15, r9
	jl	.label_516
	mov	r14, qword ptr [rbp - 0x50]
	jmp	.label_386
	nop	word ptr cs:[rax + rax]
.label_2449:
	mov	rdi, r15
	mov	rsi, r13
	mov	rdx, r12
	mov	rcx, r14
	call	check_node_accept_bytes
	movsxd	rdx, eax
.label_2461:
	test	rdx, rdx
	jne	.label_523
	jmp	.label_524
.label_515:
	mov	r15, qword ptr [rbp - 0x68]
	test	r15, r15
	jle	.label_532
	mov	rcx, r15
	dec	rcx
	mov	rax, qword ptr [rbp - 0x60]
	mov	edx, 0
	mov	r14, qword ptr [rbp - 0x50]
	je	.label_527
	xor	edx, edx
	nop	word ptr cs:[rax + rax]
.label_535:
	lea	rsi, [rdx + rcx]
	shr	rsi, 1
	cmp	qword ptr [rax + rsi*8], r12
	lea	rdi, [rsi + 1]
	cmovl	rdx, rdi
	cmovge	rcx, rsi
	cmp	rdx, rcx
	jb	.label_535
.label_527:
	cmp	rdx, -1
	setne	cl
	cmp	qword ptr [rax + rdx*8], r12
	sete	dl
	and	dl, cl
	mov	rax, r12
	cmovne	rax, rbx
	test	dl, dl
	jne	.label_540
	test	r13, r13
	jne	.label_546
	mov	r12, rax
	jmp	.label_386
.label_2453:
	test	rdx, rdx
	mov	rcx, r14
	je	.label_2452
	mov	rax, qword ptr [r15 + 0x18]
	mov	r12, qword ptr [rax + r13*8]
	add	rdx, rcx
	jmp	.label_568
.label_2452:
	lea	rdi, [rbp - 0x70]
	mov	rsi, r13
	mov	r12, rdx
	call	re_node_set_insert
	mov	rdx, r12
	test	al, al
	je	.label_359
	mov	rax, qword ptr [rbp - 0x48]
	mov	rax, qword ptr [rax + 0xb8]
	mov	rcx, qword ptr [rax + r14*8]
	mov	rax, qword ptr [rcx + 0x10]
	test	rax, rax
	jle	.label_524
	mov	rdi, qword ptr [r15 + 0x28]
	lea	rsi, [r13 + r13*2]
	mov	rsi, qword ptr [rdi + rsi*8 + 0x10]
	mov	r12, qword ptr [rsi]
	dec	rax
	mov	r8, qword ptr [rcx + 0x18]
	mov	ecx, 0
	je	.label_2462
	xor	ecx, ecx
	nop	word ptr [rax + rax]
.label_2469:
	lea	rsi, [rcx + rax]
	shr	rsi, 1
	cmp	qword ptr [r8 + rsi*8], r12
	lea	rdi, [rsi + 1]
	cmovl	rcx, rdi
	cmovge	rax, rsi
	cmp	rcx, rax
	jb	.label_2469
.label_2462:
	cmp	rcx, -1
	je	.label_2461
	cmp	qword ptr [r8 + rcx*8], r12
	je	.label_386
	jmp	.label_2461
	nop	word ptr cs:[rax + rax]
.label_524:
	add	rbx, qword ptr [r15]
	mov	rdi, qword ptr [rbp - 0x48]
	mov	rsi, rbx
	mov	rdx, r14
	call	check_node_accept
	test	al, al
	mov	edx, 1
	je	.label_449
.label_523:
	add	rdx, r14
	cmp	qword ptr [rbp - 0x38], 0
	mov	rax, qword ptr [r15 + 0x18]
	mov	r12, qword ptr [rax + r13*8]
	je	.label_568
.label_2471:
	mov	rax, qword ptr [rbp - 0x48]
	cmp	rdx, qword ptr [rax + 0xa8]
	jg	.label_572
	mov	rax, qword ptr [rbp - 0x48]
	mov	rax, qword ptr [rax + 0xb8]
	mov	rcx, qword ptr [rax + rdx*8]
	test	rcx, rcx
	je	.label_572
	mov	rax, qword ptr [rcx + 0x10]
	test	rax, rax
	jle	.label_572
	dec	rax
	mov	rcx, qword ptr [rcx + 0x18]
	mov	ebx, 0
	je	.label_580
	xor	ebx, ebx
	nop	
.label_584:
	lea	rsi, [rbx + rax]
	shr	rsi, 1
	cmp	qword ptr [rcx + rsi*8], r12
	lea	rdi, [rsi + 1]
	cmovl	rbx, rdi
	cmovge	rax, rsi
	cmp	rbx, rax
	jb	.label_584
.label_580:
	cmp	rbx, -1
	je	.label_449
	cmp	qword ptr [rcx + rbx*8], r12
	jne	.label_449
.label_568:
	mov	qword ptr [rbp - 0x68], 0
	mov	r14, rdx
.label_386:
	test	r12, r12
	mov	r15, qword ptr [rbp - 0x78]
	jns	.label_589
	cmp	r12, -2
	je	.label_359
	nop	word ptr [rax + rax]
.label_449:
	cmp	qword ptr [rbp - 0x38], 0
	je	.label_592
.label_572:
	mov	rbx, qword ptr [rbp - 0x38]
	mov	rcx, qword ptr [rbx]
	lea	rax, [rcx - 1]
	mov	qword ptr [rbx], rax
	test	rcx, rcx
	jle	.label_320
	mov	rcx, qword ptr [rbx + 0x10]
	shl	rax, 4
	lea	r14, [rax + rax*2]
	mov	r13, qword ptr [rcx + r14]
	mov	rsi, qword ptr [rcx + r14 + 0x10]
	mov	r15, qword ptr [rbp - 0x78]
	mov	rdi, r15
	mov	rdx, qword ptr [rbp - 0x58]
	call	memcpy
	mov	rdi, qword ptr [rbp - 0x60]
	call	free
	mov	rax, qword ptr [rbx + 0x10]
	mov	rdi, qword ptr [rax + r14 + 0x10]
	call	free
	mov	rax, qword ptr [rbx + 0x10]
	mov	rcx, qword ptr [rax + r14 + 0x28]
	mov	qword ptr [rbp - 0x60], rcx
	movups	xmm0, xmmword ptr [rax + r14 + 0x18]
	movaps	xmmword ptr [rbp - 0x70], xmm0
	mov	r12, qword ptr [rax + r14 + 8]
	mov	r14, r13
.label_589:
	cmp	r14, qword ptr [r15 + 8]
	mov	r13, r12
	mov	rbx, qword ptr [rbp - 0x88]
	mov	r12, qword ptr [rbp - 0x48]
	jle	.label_601
	mov	rdi, qword ptr [rbp - 0x60]
.label_2460:
	call	free
	mov	eax, dword ptr [rbp - 0x2c]
	test	al, al
	je	.label_2455
	mov	rdi, qword ptr [rbp - 0x40]
	call	free
.label_2455:
	xor	r14d, r14d
	mov	r12, qword ptr [rbp - 0x38]
	test	r12, r12
	je	.label_233
	cmp	qword ptr [r12], 0
	jle	.label_298
	xor	ebx, ebx
	xor	r15d, r15d
	nop	
.label_2467:
	mov	rax, qword ptr [r12 + 0x10]
	mov	rdi, qword ptr [rax + rbx + 0x28]
	call	free
	mov	rax, qword ptr [r12 + 0x10]
	mov	rdi, qword ptr [rax + rbx + 0x10]
	call	free
	inc	r15
	add	rbx, 0x30
	cmp	r15, qword ptr [r12]
	jl	.label_2467
	jmp	.label_298
.label_2465:
	mov	r14d, 0xc
	mov	r12, qword ptr [rbp - 0x38]
	test	r12, r12
	je	.label_233
	cmp	qword ptr [r12], 0
	jle	.label_298
	xor	ebx, ebx
	xor	r15d, r15d
	nop	dword ptr [rax + rax]
.label_2450:
	mov	rax, qword ptr [r12 + 0x10]
	mov	rdi, qword ptr [rax + rbx + 0x28]
	call	free
	mov	rax, qword ptr [r12 + 0x10]
	mov	rdi, qword ptr [rax + rbx + 0x10]
	call	free
	inc	r15
	add	rbx, 0x30
	cmp	r15, qword ptr [r12]
	jl	.label_2450
.label_298:
	mov	rdi, qword ptr [r12 + 0x10]
.label_2470:
	call	free
.label_233:
	mov	eax, r14d
	lea	rsp, [rbp - 0x28]
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_592:
	mov	rdi, qword ptr [rbp - 0x60]
	call	free
	mov	r14d, 1
	jmp	.label_137
.label_2456:
	mov	rdi, qword ptr [rbp - 0x60]
	call	free
	xor	r14d, r14d
.label_137:
	mov	eax, dword ptr [rbp - 0x2c]
	test	al, al
	je	.label_233
	mov	rdi, qword ptr [rbp - 0x40]
	jmp	.label_2470
.label_2466:
	mov	rdi, qword ptr [rbp - 0x60]
	call	free
	mov	eax, dword ptr [rbp - 0x2c]
	test	al, al
	je	.label_2454
	mov	rdi, qword ptr [rbp - 0x40]
	call	free
.label_2454:
	cmp	qword ptr [r15], 0
	jle	.label_2457
	xor	ebx, ebx
	xor	r14d, r14d
	nop	word ptr cs:[rax + rax]
.label_2463:
	mov	rax, qword ptr [r15 + 0x10]
	mov	rdi, qword ptr [rax + rbx + 0x28]
	call	free
	mov	rax, qword ptr [r15 + 0x10]
	mov	rdi, qword ptr [rax + rbx + 0x10]
	call	free
	inc	r14
	add	rbx, 0x30
	cmp	r14, qword ptr [r15]
	jl	.label_2463
.label_2457:
	mov	rdi, qword ptr [r15 + 0x10]
	call	free
	xor	r14d, r14d
	jmp	.label_233
.label_337:
	xorps	xmm0, xmm0
	movups	xmmword ptr [rbx], xmm0
.label_359:
	mov	rdi, qword ptr [rbp - 0x60]
	call	free
	mov	eax, dword ptr [rbp - 0x2c]
	test	al, al
	je	.label_259
	mov	rdi, qword ptr [rbp - 0x40]
	call	free
.label_259:
	mov	r14d, 0xc
	mov	r12, qword ptr [rbp - 0x38]
	test	r12, r12
	je	.label_233
	cmp	qword ptr [r12], 0
	jle	.label_298
	xor	ebx, ebx
	xor	r15d, r15d
.label_136:
	mov	rax, qword ptr [r12 + 0x10]
	mov	rdi, qword ptr [rax + rbx + 0x28]
	call	free
	mov	rax, qword ptr [r12 + 0x10]
	mov	rdi, qword ptr [rax + rbx + 0x10]
	call	free
	inc	r15
	add	rbx, 0x30
	cmp	r15, qword ptr [r12]
	jl	.label_136
	jmp	.label_298
.label_320:
	mov	edi, OFFSET FLAT:label_2447
	mov	esi, OFFSET FLAT:label_1476
	mov	edx, 0x555
	mov	ecx, OFFSET FLAT:label_2448
	call	__assert_fail
	nop	word ptr cs:[rax + rax]
	mov	ecx, OFFSET FLAT:default_quoting_options
	jmp	quotearg_n_options
	nop	word ptr [rax + rax]
	.globl compare_occurs
	.type compare_occurs, @function
compare_occurs:
	push	rbx
	mov	r8, qword ptr [rdi + 8]
	mov	r9, qword ptr [rsi + 8]
	cmp	r8, r9
	mov	rdx, r9
	cmovle	rdx, r8
	mov	al, byte ptr [rip + ignore_case]
	test	al, al
	je	.label_231
	test	rdx, rdx
	jle	.label_156
	mov	r10, qword ptr [rdi]
	mov	r11, qword ptr [rsi]
	xor	ecx, ecx
	nop	word ptr [rax + rax]
.label_162:
	movzx	eax, byte ptr [r10 + rcx]
	movzx	eax, byte ptr [rax + folded_chars]
	movzx	ebx, byte ptr [r11 + rcx]
	movzx	ebx, byte ptr [rbx + folded_chars]
	sub	eax, ebx
	jne	.label_159
	inc	rcx
	cmp	rcx, rdx
	jl	.label_162
	jmp	.label_156
.label_231:
	test	rdx, rdx
	jle	.label_156
	mov	r10, qword ptr [rdi]
	mov	r11, qword ptr [rsi]
	xor	ecx, ecx
	nop	word ptr cs:[rax + rax]
.label_174:
	movzx	eax, byte ptr [r10 + rcx]
	movzx	ebx, byte ptr [r11 + rcx]
	sub	eax, ebx
	jne	.label_159
	inc	rcx
	cmp	rcx, rdx
	jl	.label_174
.label_156:
	mov	eax, 0xffffffff
	cmp	r8, r9
	jl	.label_159
	mov	eax, 1
	jg	.label_159
	mov	rcx, qword ptr [rdi]
	mov	rdx, qword ptr [rsi]
	cmp	rcx, rdx
	mov	eax, 0xffffffff
	jb	.label_159
	cmp	rdx, rcx
	sbb	eax, eax
	and	eax, 1
.label_159:
	pop	rbx
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x415220

	.globl version_etc
	.type version_etc, @function
version_etc:
	sub	rsp, 0xd8
	test	al, al
	je	.label_2472
	movaps	xmmword ptr [rsp + 0x50], xmm0
	movaps	xmmword ptr [rsp + 0x60], xmm1
	movaps	xmmword ptr [rsp + 0x70], xmm2
	movaps	xmmword ptr [rsp + 0x80], xmm3
	movaps	xmmword ptr [rsp + 0x90], xmm4
	movaps	xmmword ptr [rsp + 0xa0], xmm5
	movaps	xmmword ptr [rsp + 0xb0], xmm6
	movaps	xmmword ptr [rsp + 0xc0], xmm7
.label_2472:
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
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4152b0

	.globl rpl_fclose
	.type rpl_fclose, @function
rpl_fclose:
	push	rbp
	push	r14
	push	rbx
	mov	rbx, rdi
	call	fileno
	test	eax, eax
	js	.label_2473
	mov	rdi, rbx
	call	__freading
	test	eax, eax
	je	.label_2475
	mov	rdi, rbx
	call	fileno
	xor	esi, esi
	mov	edx, 1
	mov	edi, eax
	call	lseek
	cmp	rax, -1
	je	.label_2473
.label_2475:
	mov	rdi, rbx
	call	rpl_fflush
	test	eax, eax
	je	.label_2473
	call	__errno_location
	mov	r14, rax
	mov	ebp, dword ptr [r14]
	mov	rdi, rbx
	call	fclose
	test	ebp, ebp
	je	.label_2474
	mov	dword ptr [r14], ebp
	mov	eax, 0xffffffff
.label_2474:
	pop	rbx
	pop	r14
	pop	rbp
	ret	
.label_2473:
	mov	rdi, rbx
	pop	rbx
	pop	r14
	pop	rbp
	jmp	fclose
	nop	word ptr cs:[rax + rax]
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x18
	mov	rbx, r8
	mov	r15, rcx
	mov	r14, rdx
	mov	r13, rsi
	mov	rbp, qword ptr [rsp + 0x58]
	mov	rax, rbx
	or	rax, r14
	or	rax, rbp
	js	.label_150
	movabs	rax, 0x7fffffffffffffff
	test	rbx, rbx
	js	.label_214
	sub	rax, rbx
	cmp	rax, r14
	jl	.label_150
	lea	rdx, [rbx + r14]
	xor	r12d, r12d
	test	rbx, rbx
	jle	.label_220
	xor	r12d, r12d
	test	r14, r14
	jle	.label_273
	mov	qword ptr [rsp + 8], rdi
	mov	qword ptr [rsp], rdx
	mov	rdi, rdx
	mov	qword ptr [rsp + 0x10], r9
	call	malloc
	mov	r12, rax
	test	r12, r12
	je	.label_150
	mov	rdi, r12
	mov	rsi, r13
	mov	rdx, r14
	call	memcpy
	mov	rdi, r12
	add	rdi, r14
	mov	rsi, r15
	mov	rdx, rbx
	call	memcpy
	mov	rdi, qword ptr [rsp + 8]
	mov	r9, qword ptr [rsp + 0x10]
	mov	r13, r12
	mov	rdx, qword ptr [rsp]
	jmp	.label_220
.label_348:
	add	rbx, r14
	xor	r12d, r12d
	mov	rdx, rbx
	jmp	.label_220
.label_214:
	inc	rax
	sub	rax, rbx
	cmp	rax, r14
	jle	.label_348
.label_150:
	mov	rax, -2
	jmp	.label_236
.label_273:
	mov	r13, r15
.label_220:
	mov	r8d, 0
	mov	rsi, r13
	mov	rcx, r9
	mov	r9, rbp
	push	1
	push	qword ptr [rsp + 0x58]
	call	re_search_stub
	add	rsp, 0x10
	mov	rbx, rax
	mov	rdi, r12
	call	free
	mov	rax, rbx
.label_236:
	add	rsp, 0x18
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
	nop	word ptr cs:[rax + rax]
	.globl __argmatch_die
	.type __argmatch_die, @function
__argmatch_die:
	mov	edi, 1
	jmp	usage
	nop	word ptr [rax + rax]
.label_252:
	call	xalloc_die
	nop	
	push	rbx
	call	mem_cd_iconv
	mov	ebx, eax
	test	ebx, ebx
	jns	.label_250
	call	__errno_location
	cmp	dword ptr [rax], 0xc
	je	.label_252
.label_250:
	mov	eax, ebx
	pop	rbx
	ret	
	sub	rsp, 0x38
	mov	rax, rdx
	mov	rcx, qword ptr [rip + label_166]
	mov	qword ptr [rsp + 0x30], rcx
	movups	xmm0, xmmword ptr [rip + label_167]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0, xmmword ptr [rip + label_168]
	movaps	xmmword ptr [rsp + 0x10], xmm0
	movups	xmm0, xmmword ptr [rip + default_quoting_options]
	movaps	xmmword ptr [rsp], xmm0
	mov	dword ptr [rsp], 0xa
	test	rdi, rdi
	je	.label_260
	test	rsi, rsi
	je	.label_260
	mov	qword ptr [rsp + 0x28], rdi
	mov	qword ptr [rsp + 0x30], rsi
	lea	rcx, [rsp]
	xor	edi, edi
	mov	rdx, -1
	mov	rsi, rax
	call	quotearg_n_options
	add	rsp, 0x38
	ret	
.label_260:
	call	abort
	mov	rax, rdi
	xor	edi, edi
	mov	rdx, -1
	mov	ecx, OFFSET FLAT:default_quoting_options
	mov	rsi, rax
	jmp	quotearg_n_options
	nop	dword ptr [rax]
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
	je	.label_281
	test	bpl, 1
	mov	eax, 0x3b2fc
	mov	ecx, 0x10102c6
	cmovne	rcx, rax
	mov	ebx, ebp
	and	ebx, 2
	shl	rbx, 0x15
	or	rbx, rcx
	test	bpl, 4
	jne	.label_285
	mov	al, byte ptr [r15 + 0x38]
	and	al, 0x7f
	jmp	.label_289
.label_285:
	and	ebx, 0x143b2be
	or	rbx, 0x100
	mov	al, byte ptr [r15 + 0x38]
	or	al, 0x80
.label_289:
	mov	byte ptr [r15 + 0x38], al
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
	jne	.label_303
	mov	rdi, r15
	call	rpl_re_compile_fastmap
	xor	ebx, ebx
.label_281:
	mov	eax, ebx
	add	rsp, 8
	pop	rbx
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_303:
	mov	rdi, qword ptr [r15 + 0x20]
	call	free
	mov	qword ptr [r15 + 0x20], 0
	jmp	.label_281
	nop	word ptr [rax + rax]
.label_2476:
	mov	rsi, rbx
	call	realloc
	test	rbx, rbx
	je	.label_310
	test	rax, rax
	je	.label_578
.label_310:
	pop	rbx
	ret	
	.section	.text
	.align	32
	#Procedure 0x415604

	.globl xrealloc
	.type xrealloc, @function
xrealloc:
	push	rbx
	mov	rbx, rsi
	test	rdi, rdi
	je	.label_2476
	test	rbx, rbx
	jne	.label_2476
	call	free
	xor	eax, eax
	pop	rbx
	ret	
.label_578:
	call	xalloc_die
	.section	.text
	.align	32
	#Procedure 0x415620

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
	jle	.label_2477
	xor	r12d, r12d
	nop	dword ptr [rax]
.label_2480:
	mov	rax, qword ptr [r14 + 0xf8]
	mov	r15, qword ptr [rax + r12*8]
	cmp	qword ptr [r15 + 0x20], 0
	jle	.label_2478
	xor	ebx, ebx
	nop	word ptr cs:[rax + rax]
.label_2481:
	mov	rax, qword ptr [r15 + 0x28]
	mov	r13, qword ptr [rax + rbx*8]
	mov	rdi, qword ptr [r13 + 0x20]
	call	free
	mov	rdi, r13
	call	free
	inc	rbx
	cmp	rbx, qword ptr [r15 + 0x20]
	jl	.label_2481
.label_2478:
	mov	rdi, qword ptr [r15 + 0x28]
	call	free
	mov	rax, qword ptr [r15 + 0x10]
	test	rax, rax
	je	.label_2479
	mov	rdi, qword ptr [rax + 0x10]
	call	free
	mov	rdi, qword ptr [r15 + 0x10]
	call	free
.label_2479:
	mov	rdi, r15
	call	free
	inc	r12
	cmp	r12, qword ptr [r14 + 0xe8]
	jl	.label_2480
.label_2477:
	mov	qword ptr [r14 + 0xe8], 0
	mov	qword ptr [r14 + 0xc8], 0
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4156e0

	.globl check_arrival
	.type check_arrival, @function
check_arrival:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x98
	mov	rbx, rdx
	mov	rbp, rsi
	mov	rax, qword ptr [rdi + 0x98]
	mov	dword ptr [rsp + 4], 0
	mov	qword ptr [rsp + 0x58], rax
	mov	rax, qword ptr [rax]
	shl	rdx, 4
	mov	rax, qword ptr [rax + rdx]
	mov	qword ptr [rsp + 0x40], rax
	mov	r12, qword ptr [rbp + 8]
	mov	qword ptr [rsp + 0x28], rdi
	movsxd	rax, dword ptr [rdi + 0xe0]
	lea	rdi, [rax + r9]
	cmp	r12, rdi
	mov	qword ptr [rsp + 0x50], r9
	mov	qword ptr [rsp + 0x90], r8
	mov	qword ptr [rsp + 0x48], rbx
	jle	.label_2516
	mov	r14, qword ptr [rbp + 0x10]
.label_2512:
	mov	r13, qword ptr [rbp]
	test	r13, r13
	cmove	r13, rcx
	mov	rdi, qword ptr [rsp + 0x28]
	mov	r15, qword ptr [rdi + 0x48]
	mov	rax, qword ptr [rdi + 0xb8]
	mov	qword ptr [rsp + 0x78], rax
	mov	qword ptr [rdi + 0xb8], r14
	mov	qword ptr [rdi + 0x48], r13
	lea	rsi, [r13 - 1]
	mov	edx, dword ptr [rdi + 0xa0]
	mov	rbx, rcx
	call	re_string_context_at
	cmp	r13, rbx
	mov	r12, qword ptr [rsp + 0x58]
	mov	qword ptr [rsp + 0x88], rbp
	mov	qword ptr [rsp + 0x80], r15
	mov	qword ptr [rsp + 8], r13
	jne	.label_2508
	mov	dword ptr [rsp + 0x38], eax
	movaps	xmm0, xmmword ptr [rip + label_211]
	movaps	xmmword ptr [rsp + 0x10], xmm0
	mov	edi, 8
	call	malloc
	mov	qword ptr [rsp + 0x20], rax
	test	rax, rax
	je	.label_2510
	mov	rcx, qword ptr [rsp + 0x48]
	mov	qword ptr [rax], rcx
	mov	dword ptr [rsp + 4], 0
	lea	rsi, [rsp + 0x10]
	mov	rdi, r12
	mov	r13, qword ptr [rsp + 0x40]
	mov	rdx, r13
	mov	ebx, dword ptr [rsp + 0xd0]
	mov	ecx, ebx
	call	check_arrival_expand_ecl
	mov	ebp, eax
	mov	dword ptr [rsp + 4], ebp
	test	ebp, ebp
	jne	.label_2482
	mov	rbp, qword ptr [rsp + 0x18]
	mov	r14, qword ptr [rsp + 0x28]
	jmp	.label_2484
.label_2508:
	mov	rdx, qword ptr [r14 + r13*8]
	test	rdx, rdx
	je	.label_2492
	mov	dword ptr [rsp + 0x38], eax
	mov	al, byte ptr [rdx + 0x68]
	test	al, 0x40
	jne	.label_2495
	xorps	xmm0, xmm0
	movaps	xmmword ptr [rsp + 0x10], xmm0
	mov	qword ptr [rsp + 0x20], 0
	xor	ebp, ebp
	mov	r14, qword ptr [rsp + 0x28]
	mov	r13, qword ptr [rsp + 0x40]
	jmp	.label_2496
.label_2492:
	xorps	xmm0, xmm0
	movaps	xmmword ptr [rsp + 0x10], xmm0
	mov	qword ptr [rsp + 0x20], 0
	xor	edx, edx
	mov	r14, qword ptr [rsp + 0x28]
	mov	r13, qword ptr [rsp + 0x40]
	mov	ebx, dword ptr [rsp + 0xd0]
	jmp	.label_2487
.label_2495:
	mov	rbp, qword ptr [rdx + 0x10]
	mov	qword ptr [rsp + 0x18], rbp
	test	rbp, rbp
	mov	r13, qword ptr [rsp + 0x40]
	jle	.label_2506
	mov	qword ptr [rsp + 0x48], rdx
	mov	qword ptr [rsp + 0x10], rbp
	lea	r15, [rbp*8]
	mov	rdi, r15
	call	malloc
	mov	qword ptr [rsp + 0x20], rax
	test	rax, rax
	mov	r14, qword ptr [rsp + 0x28]
	mov	ebx, dword ptr [rsp + 0xd0]
	je	.label_2510
	mov	r12, qword ptr [rsp + 0x48]
	mov	rsi, qword ptr [r12 + 0x18]
	mov	rdi, rax
	mov	rdx, r15
	call	memcpy
	mov	rdx, r12
	mov	al, byte ptr [rdx + 0x68]
	mov	dword ptr [rsp + 4], 0
	mov	r12, qword ptr [rsp + 0x58]
	jmp	.label_2515
.label_2506:
	xorps	xmm0, xmm0
	movaps	xmmword ptr [rsp + 0x10], xmm0
	mov	qword ptr [rsp + 0x20], 0
	xor	ebp, ebp
	mov	dword ptr [rsp + 4], 0
	mov	r14, qword ptr [rsp + 0x28]
.label_2496:
	mov	ebx, dword ptr [rsp + 0xd0]
.label_2515:
	test	al, 0x40
	je	.label_2487
.label_2484:
	test	rbp, rbp
	je	.label_2489
	lea	rsi, [rsp + 0x10]
	mov	rdi, r14
	mov	rdx, qword ptr [rsp + 8]
	mov	rcx, r13
	mov	r8d, ebx
	call	expand_bkref_cache
	mov	ebp, eax
	mov	dword ptr [rsp + 4], ebp
	test	ebp, ebp
	jne	.label_2482
.label_2489:
	lea	rdi, [rsp + 4]
	lea	rdx, [rsp + 0x10]
	mov	rsi, r12
	mov	ecx, dword ptr [rsp + 0x38]
	call	re_acquire_state_context
	mov	rdx, rax
	test	rdx, rdx
	jne	.label_2501
	mov	eax, dword ptr [rsp + 4]
	test	eax, eax
	jne	.label_2486
.label_2501:
	mov	rax, qword ptr [r14 + 0xb8]
	mov	rcx, qword ptr [rsp + 8]
	mov	qword ptr [rax + rcx*8], rdx
.label_2487:
	mov	rax, qword ptr [rsp + 8]
	cmp	rax, qword ptr [rsp + 0x50]
	jge	.label_2507
	xor	esi, esi
	nop	
.label_2493:
	movsxd	rax, dword ptr [r14 + 0xe0]
	cmp	rsi, rax
	jg	.label_2509
	mov	qword ptr [rsp + 0x38], rsi
	mov	qword ptr [rsp + 0x18], 0
	mov	rax, qword ptr [r14 + 0xb8]
	mov	rcx, qword ptr [rsp + 8]
	mov	rsi, qword ptr [rax + rcx*8 + 8]
	test	rsi, rsi
	je	.label_2511
	add	rsi, 8
	lea	rdi, [rsp + 0x10]
	mov	rbp, rdx
	call	re_node_set_merge
	mov	rdx, rbp
	mov	dword ptr [rsp + 4], eax
	test	eax, eax
	jne	.label_2486
.label_2511:
	test	rdx, rdx
	je	.label_2518
	mov	r13, qword ptr [r14 + 0x98]
	mov	dword ptr [rsp + 0x34], 0
	xorps	xmm0, xmm0
	movaps	xmmword ptr [rsp + 0x60], xmm0
	mov	qword ptr [rsp + 0x70], 0
	cmp	qword ptr [rdx + 0x28], 0
	mov	edi, 0
	jle	.label_2517
	xor	ebx, ebx
	mov	qword ptr [rsp + 0x48], rdx
	nop	word ptr cs:[rax + rax]
.label_2502:
	mov	rax, qword ptr [rdx + 0x30]
	mov	r15, qword ptr [rax + rbx*8]
	mov	rsi, qword ptr [r13]
	mov	rbp, r15
	shl	rbp, 4
	test	byte ptr [rsi + rbp + 0xa], 0x10
	je	.label_2494
	mov	rdi, r13
	mov	rsi, r15
	mov	rdx, r14
	mov	r12, qword ptr [rsp + 8]
	mov	rcx, r12
	call	check_node_accept_bytes
	cmp	eax, 2
	jl	.label_2503
	mov	rcx, qword ptr [r13 + 0x18]
	mov	rdx, qword ptr [rcx + r15*8]
	mov	rcx, r14
	movsxd	r14, eax
	add	r14, r12
	mov	rax, qword ptr [rcx + 0xb8]
	mov	rsi, qword ptr [rax + r14*8]
	mov	qword ptr [rsp + 0x68], 0
	test	rsi, rsi
	lea	rax, [rsp + 0x60]
	mov	rcx, rax
	je	.label_2504
	add	rsi, 8
	mov	r12, rcx
	mov	rdi, r12
	mov	rbp, rdx
	call	re_node_set_merge
	mov	rdx, rbp
	mov	rcx, r12
	mov	r12d, eax
	mov	dword ptr [rsp + 0x34], r12d
	test	r12d, r12d
	jne	.label_2490
.label_2504:
	mov	rbp, rcx
	mov	rdi, rbp
	mov	rsi, rdx
	call	re_node_set_insert
	test	al, al
	mov	rdx, rbp
	je	.label_2500
	lea	rdi, [rsp + 0x34]
	mov	rsi, r13
	call	re_acquire_state
	mov	rdx, qword ptr [rsp + 0x28]
	mov	rcx, qword ptr [rdx + 0xb8]
	mov	qword ptr [rcx + r14*8], rax
	mov	rax, qword ptr [rdx + 0xb8]
	cmp	qword ptr [rax + r14*8], 0
	mov	r14, rdx
	jne	.label_2485
	mov	r12d, dword ptr [rsp + 0x34]
	test	r12d, r12d
	je	.label_2485
	jmp	.label_2490
	nop	
.label_2503:
	test	eax, eax
	jne	.label_2485
	mov	rsi, qword ptr [r13]
	nop	dword ptr [rax + rax]
.label_2494:
	add	rsi, rbp
	mov	rdi, r14
	mov	rdx, qword ptr [rsp + 8]
	call	check_node_accept
	test	al, al
	je	.label_2497
.label_2485:
	mov	rax, qword ptr [r13 + 0x18]
	mov	rsi, qword ptr [rax + r15*8]
	lea	rdi, [rsp + 0x10]
	call	re_node_set_insert
	test	al, al
	je	.label_2500
.label_2497:
	inc	rbx
	mov	rdx, qword ptr [rsp + 0x48]
	cmp	rbx, qword ptr [rdx + 0x28]
	jl	.label_2502
	mov	rdi, qword ptr [rsp + 0x70]
	mov	r12, qword ptr [rsp + 0x58]
.label_2517:
	call	free
	mov	dword ptr [rsp + 4], 0
	mov	r13, qword ptr [rsp + 0x40]
	mov	ebx, dword ptr [rsp + 0xd0]
.label_2518:
	mov	rax, qword ptr [rsp + 8]
	lea	rbp, [rax + 1]
	cmp	qword ptr [rsp + 0x18], 0
	lea	r15, [rsp + 0x10]
	je	.label_2505
	mov	rdi, r12
	mov	rsi, r15
	mov	rdx, r13
	mov	ecx, ebx
	call	check_arrival_expand_ecl
	mov	dword ptr [rsp + 4], eax
	test	eax, eax
	jne	.label_2486
	mov	rdi, r14
	mov	rsi, r15
	mov	rdx, rbp
	mov	rcx, r13
	mov	r8d, ebx
	call	expand_bkref_cache
	mov	dword ptr [rsp + 4], eax
	test	eax, eax
	jne	.label_2486
.label_2505:
	mov	edx, dword ptr [r14 + 0xa0]
	mov	rdi, r14
	mov	rsi, qword ptr [rsp + 8]
	call	re_string_context_at
	lea	rdi, [rsp + 4]
	mov	rsi, r12
	mov	rdx, r15
	mov	ecx, eax
	call	re_acquire_state_context
	mov	rdx, rax
	test	rdx, rdx
	jne	.label_2483
	mov	eax, dword ptr [rsp + 4]
	test	eax, eax
	jne	.label_2486
.label_2483:
	mov	rsi, qword ptr [rsp + 0x38]
	inc	rsi
	test	rdx, rdx
	mov	rax, qword ptr [r14 + 0xb8]
	mov	rcx, qword ptr [rsp + 8]
	mov	qword ptr [rax + rcx*8 + 8], rdx
	mov	eax, 0
	cmovne	rsi, rax
	cmp	rbp, qword ptr [rsp + 0x50]
	mov	rax, rbp
	mov	qword ptr [rsp + 8], rax
	jl	.label_2493
	jmp	.label_2488
.label_2507:
	mov	rbp, rax
	jmp	.label_2488
.label_2509:
	mov	rbp, qword ptr [rsp + 8]
.label_2488:
	mov	rdi, qword ptr [rsp + 0x20]
	call	free
	mov	rax, qword ptr [r14 + 0xb8]
	mov	rcx, qword ptr [rsp + 0x50]
	mov	rax, qword ptr [rax + rcx*8]
	lea	rcx, [rax + 8]
	test	rax, rax
	cmove	rcx, rax
	mov	rax, qword ptr [rsp + 0x88]
	mov	qword ptr [rax], rbp
	mov	rax, qword ptr [rsp + 0x78]
	mov	qword ptr [r14 + 0xb8], rax
	mov	rax, qword ptr [rsp + 0x80]
	mov	qword ptr [r14 + 0x48], rax
	mov	rbx, qword ptr [rsp + 0x90]
	je	.label_2499
	mov	rax, qword ptr [rcx + 8]
	test	rax, rax
	jle	.label_2499
	xor	ebp, ebp
	dec	rax
	mov	rcx, qword ptr [rcx + 0x10]
	mov	edx, 0
	je	.label_2513
	xor	edx, edx
.label_2514:
	lea	rsi, [rdx + rax]
	shr	rsi, 1
	cmp	qword ptr [rcx + rsi*8], rbx
	lea	rdi, [rsi + 1]
	cmovl	rdx, rdi
	cmovge	rax, rsi
	cmp	rdx, rax
	jb	.label_2514
.label_2513:
	cmp	rdx, -1
	je	.label_2499
	cmp	qword ptr [rcx + rdx*8], rbx
	je	.label_2498
.label_2499:
	mov	ebp, 1
.label_2498:
	mov	eax, ebp
	add	rsp, 0x98
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_2500:
	mov	rdi, qword ptr [rsp + 0x70]
	call	free
	mov	r12d, 0xc
	jmp	.label_2491
.label_2490:
	mov	rdi, qword ptr [rsp + 0x70]
	call	free
.label_2491:
	mov	dword ptr [rsp + 4], r12d
.label_2486:
	mov	rdi, qword ptr [rsp + 0x20]
	call	free
	mov	ebp, dword ptr [rsp + 4]
	jmp	.label_2498
.label_2516:
	mov	r13, rbp
	movabs	rdx, 0x7fffffffffffffff
	sub	rdx, r12
	mov	ebp, 0xc
	cmp	rdx, rdi
	jle	.label_2498
	mov	qword ptr [rsp + 8], rcx
	mov	rcx, qword ptr [rsp + 0x50]
	lea	r15, [rax + rcx + 1]
	lea	rcx, [r15 + r12]
	mov	rax, rcx
	shr	rax, 0x3d
	jne	.label_2498
	mov	rdi, qword ptr [r13 + 0x10]
	mov	qword ptr [rsp + 0x38], rcx
	lea	rsi, [rcx*8]
	call	realloc
	mov	r14, rax
	test	r14, r14
	je	.label_2498
	mov	qword ptr [r13 + 0x10], r14
	mov	rax, qword ptr [rsp + 0x38]
	mov	qword ptr [r13 + 8], rax
	lea	rdi, [r14 + r12*8]
	shl	r15, 3
	xor	esi, esi
	mov	rdx, r15
	call	memset
	mov	rbp, r13
	mov	rcx, qword ptr [rsp + 8]
	jmp	.label_2512
.label_2482:
	mov	rdi, qword ptr [rsp + 0x20]
	call	free
	jmp	.label_2498
.label_2510:
	xorps	xmm0, xmm0
	movaps	xmmword ptr [rsp + 0x10], xmm0
	mov	dword ptr [rsp + 4], 0xc
	mov	ebp, 0xc
	jmp	.label_2498
	nop	
	.section	.text
	.align	32
	#Procedure 0x415df0

	.globl re_search_internal
	.type re_search_internal, @function
re_search_internal:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x218
	mov	r14, r9
	mov	rbp, rcx
	mov	r9, qword ptr [rsp + 0x250]
	mov	r11, qword ptr [rdi]
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
	mov	qword ptr [rsp + 0x118], r11
	mov	rax, qword ptr [rdi + 0x20]
	xor	r13d, r13d
	test	rax, rax
	je	.label_2533
	mov	cl, byte ptr [rdi + 0x38]
	and	cl, 9
	xor	ebx, ebx
	cmp	cl, 8
	cmovne	rax, rbx
	cmp	rbp, r8
	cmove	rax, rbx
	mov	r13, rax
.label_2533:
	mov	rax, qword ptr [rdi + 0x30]
	lea	r15, [r9 - 1]
	mov	rcx, r15
	sub	rcx, rax
	xor	r12d, r12d
	cmp	rax, r9
	cmovb	r12, rcx
	mov	ebx, 1
	cmp	qword ptr [rdi + 0x10], 0
	je	.label_1474
	mov	rax, qword ptr [r11 + 0x48]
	test	rax, rax
	je	.label_1474
	mov	rcx, qword ptr [r11 + 0x50]
	test	rcx, rcx
	je	.label_1474
	mov	r10, qword ptr [r11 + 0x58]
	test	r10, r10
	je	.label_1474
	mov	qword ptr [rsp + 0x50], rsi
	mov	rsi, r14
	cmp	qword ptr [r11 + 0x60], 0
	je	.label_1474
	mov	r14, qword ptr [rdi + 0x28]
	mov	qword ptr [rsp + 0x58], r14
	cmp	qword ptr [rax + 0x10], 0
	je	.label_2522
	mov	rax, r8
	mov	r14, rsi
	jmp	.label_2526
.label_2522:
	cmp	qword ptr [rcx + 0x10], 0
	mov	r14, rsi
	jne	.label_2527
	cmp	qword ptr [r10 + 0x10], 0
	je	.label_2528
	cmp	byte ptr [rdi + 0x38], 0
	js	.label_2527
.label_2528:
	xor	eax, eax
	test	rbp, rbp
	je	.label_2530
	test	r8, r8
	mov	ebp, 0
	jne	.label_1474
	jmp	.label_2526
.label_2527:
	mov	rax, r8
.label_2526:
	mov	qword ptr [rsp + 0x18], rax
	mov	qword ptr [rsp + 0x40], r13
	mov	qword ptr [rsp + 0x1e8], r15
	mov	qword ptr [rsp + 0x1e0], r12
	sub	r9, r12
	mov	qword ptr [rsp + 0x38], r9
	mov	byte ptr [rsp + 7], 1
	jne	.label_2534
	cmp	qword ptr [r11 + 0x98], 0
	setne	byte ptr [rsp + 7]
.label_2534:
	mov	r15, qword ptr [r11 + 0x10]
	inc	r15
	mov	qword ptr [rsp + 0x48], rdi
	mov	rcx, qword ptr [rdi + 0x18]
	movsxd	rax, dword ptr [r11 + 0xb4]
	cmp	rax, r15
	cmovge	r15, rax
	mov	rbx, rdx
	lea	rdi, [rbx + 1]
	cmp	rdi, r15
	cmovle	r15, rdi
	mov	rdx, qword ptr [rsp + 0x50]
	mov	qword ptr [rsp + 0x80], rdx
	mov	qword ptr [rsp + 0xd8], rbx
	mov	qword ptr [rsp + 0xd0], rbx
	mov	rsi, qword ptr [rsp + 0x58]
	mov	qword ptr [rsp + 0xf8], rsi
	shr	rcx, 0x16
	and	cl, 1
	mov	byte ptr [rsp + 0x108], cl
	test	rsi, rsi
	mov	rsi, rbx
	setne	r12b
	or	r12b, cl
	mov	byte ptr [rsp + 0x10b], r12b
	mov	dword ptr [rsp + 0x110], eax
	mov	cl, byte ptr [r11 + 0xb0]
	mov	edx, ecx
	shr	dl, 2
	and	dl, 1
	shr	cl, 3
	and	cl, 1
	cmp	rax, 2
	mov	byte ptr [rsp + 0x109], dl
	mov	byte ptr [rsp + 0x10a], cl
	mov	qword ptr [rsp + 0xe8], rsi
	mov	qword ptr [rsp + 0x78], rsi
	mov	qword ptr [rsp + 0xe0], rsi
	mov	qword ptr [rsp + 0x20], r11
	jl	.label_2523
	movabs	rax, 0x1ffffffffffffffe
	inc	rax
	mov	ebx, 0xc
	cmp	r15, rax
	ja	.label_1331
	lea	rsi, [r15*4]
	xor	edi, edi
	call	realloc
	test	rax, rax
	je	.label_1331
	mov	qword ptr [rsp + 0x90], rax
	mov	r11, qword ptr [rsp + 0x20]
.label_2523:
	test	r12b, r12b
	je	.label_2524
	xor	edi, edi
	mov	rsi, r15
	call	realloc
	mov	ebx, 0xc
	test	rax, rax
	je	.label_1331
	mov	qword ptr [rsp + 0x88], rax
	mov	r11, qword ptr [rsp + 0x20]
.label_2524:
	mov	edx, dword ptr [rsp + 0x260]
	mov	qword ptr [rsp + 0xc0], r15
	lea	rax, [r11 + 0xb8]
	mov	qword ptr [rsp + 0x100], rax
	mov	rax, qword ptr [r11 + 0xb0]
	mov	ecx, eax
	shr	cl, 4
	and	cl, 1
	mov	byte ptr [rsp + 0x10e], cl
	xor	ecx, ecx
	test	r12b, r12b
	jne	.label_2531
	shr	rax, 0x20
	mov	rcx, qword ptr [rsp + 0x50]
	mov	qword ptr [rsp + 0x88], rcx
	xor	ecx, ecx
	cmp	eax, 1
	cmovle	rcx, qword ptr [rsp + 0x78]
.label_2531:
	mov	qword ptr [rsp + 0xb0], rcx
	mov	qword ptr [rsp + 0xb8], rcx
	mov	qword ptr [rsp + 0xe8], r14
	mov	qword ptr [rsp + 0xe0], r14
	mov	rax, qword ptr [rsp + 0x48]
	mov	al, byte ptr [rax + 0x38]
	shr	al, 7
	mov	byte ptr [rsp + 0x10d], al
	mov	r14, qword ptr [r11 + 0x98]
	lea	r13, [r14 + r14]
	mov	dword ptr [rsp + 0x120], edx
	mov	qword ptr [rsp + 0x128], -1
	test	r14, r14
	jle	.label_2525
	mov	ebx, 0xc
	movabs	rax, 0x666666666666666
	cmp	r13, rax
	ja	.label_1331
	shl	r14, 4
	lea	rdi, [r14 + r14*4]
	call	malloc
	mov	r12, rax
	mov	qword ptr [rsp + 0x158], r12
	mov	rdi, r14
	call	malloc
	mov	qword ptr [rsp + 0x178], rax
	test	r12, r12
	je	.label_1331
	test	rax, rax
	je	.label_1331
.label_2525:
	mov	qword ptr [rsp + 0x150], r13
	mov	dword ptr [rsp + 0x160], 1
	mov	qword ptr [rsp + 0x170], r13
	cmp	qword ptr [rsp + 0x38], 1
	mov	rax, qword ptr [rsp + 0x20]
	ja	.label_2529
	mov	rdi, qword ptr [rax + 0xb0]
	test	dil, 2
	jne	.label_2529
	shr	rdi, 0x20
	mov	qword ptr [rsp + 0x138], 0
	jmp	.label_2519
.label_2529:
	mov	ebx, 0xc
	movabs	rax, 0x1ffffffffffffffe
	cmp	r15, rax
	ja	.label_1331
	lea	rdi, [r15*8 + 8]
	call	malloc
	mov	qword ptr [rsp + 0x138], rax
	test	rax, rax
	je	.label_1331
	mov	rax, qword ptr [rsp + 0x20]
	mov	edi, dword ptr [rax + 0xb4]
.label_2519:
	mov	eax, dword ptr [rsp + 0x260]
	mov	qword ptr [rsp + 0x28], rbp
	lea	eax, [rax + rax]
	and	eax, 2
	xor	eax, 6
	mov	dword ptr [rsp + 0xf0], eax
	mov	rbx, qword ptr [rsp + 0x18]
	cmp	rbx, rbp
	mov	r15, rbp
	cmovle	r15, rbx
	mov	r12, rbx
	cmovl	r12, rbp
	mov	ecx, 8
	cmp	qword ptr [rsp + 0x40], 0
	mov	rsi, qword ptr [rsp + 0x58]
	je	.label_2532
	cmp	edi, 1
	je	.label_2521
	mov	ecx, 0x400000
	xor	eax, eax
	test	rsi, rsi
	jne	.label_2520
	mov	rdx, qword ptr [rsp + 0x48]
	and	rcx, qword ptr [rdx + 0x18]
	jne	.label_2520
.label_2521:
	mov	eax, 4
.label_2520:
	xor	ecx, ecx
	test	rsi, rsi
	setne	cl
	xor	edx, edx
	cmp	rbp, rbx
	setle	dl
	lea	ecx, [rcx + rdx*2]
	or	ecx, eax
.label_2532:
	mov	qword ptr [rsp + 0x208], rdi
	xor	edx, edx
	cmp	rbp, rbx
	setle	byte ptr [rsp + 0xf]
	lea	rsi, [rsp + 0x28]
	mov	eax, 0
	mov	qword ptr [rsp + 0x1d8], rax
	cmovg	rsi, rdx
	mov	qword ptr [rsp + 0x200], rsi
	cmp	rbx, rbp
	mov	eax, 1
	mov	r13, -1
	cmovge	r13, rax
	add	ecx, -4
	mov	qword ptr [rsp + 0x210], rcx
	mov	qword ptr [rsp + 0x70], r13
	mov	qword ptr [rsp + 0x190], r15
	mov	qword ptr [rsp + 0x188], r12
	jmp	.label_1330
.label_2530:
	xor	ebp, ebp
	jmp	.label_2526
.label_1344:
	mov	rdi, r15
	call	free
	mov	rdi, rbp
	call	free
	test	ebx, ebx
	mov	r12, qword ptr [rsp + 0x38]
	mov	r13, qword ptr [rsp + 0x70]
	je	.label_1397
	cmp	ebx, 1
	mov	r15, qword ptr [rsp + 0x190]
	mov	r12, qword ptr [rsp + 0x188]
	je	.label_1458
	jmp	.label_1331
.label_1593:
	test	al, al
	js	.label_1466
	cmp	byte ptr [rsp + 7], 0
	mov	rdx, r8
	mov	ecx, 1
	jne	.label_1468
	mov	r14, r8
	jmp	.label_1360
.label_1590:
	mov	r14, r8
	lea	rbp, [rbx + 8]
	xor	edx, edx
	lea	rdi, [rsp + 0x80]
	mov	rsi, rbp
	call	check_subexp_matching_top
	mov	dword ptr [rsp + 8], eax
	test	eax, eax
	jne	.label_1473
	test	byte ptr [rbx + 0x68], 0x40
	je	.label_1571
	lea	rdi, [rsp + 0x80]
	mov	rsi, rbp
	call	transit_state_bkref
	mov	dword ptr [rsp + 8], eax
	test	eax, eax
	jne	.label_1473
.label_1571:
	mov	dword ptr [rsp + 0x18], 0
	mov	r8, r14
	jmp	.label_1482
.label_1466:
	lea	rdi, [rsp + 0x80]
	mov	rsi, rbx
	mov	rdx, r8
	mov	r14, r8
	call	check_halt_state_context
	cmp	rax, 1
	sbb	rdx, rdx
	xor	ecx, ecx
	test	rax, rax
	sete	al
	setne	cl
	or	al, byte ptr [rsp + 7]
	je	.label_1360
	or	rdx, r14
	mov	r8, r14
	jmp	.label_1468
.label_1473:
	movsxd	r14, eax
	jmp	.label_1360
	nop	word ptr cs:[rax + rax]
.label_1330:
	mov	rax, qword ptr [rsp + 0x210]
	cmp	eax, 4
	ja	.label_1380
	jmp	qword ptr [(rax * 8) + label_1491]
.label_2959:
	cmp	rbp, r15
	mov	rax, rbp
	mov	rcx, qword ptr [rsp + 0x78]
	mov	rdx, qword ptr [rsp + 0x50]
	mov	rsi, qword ptr [rsp + 0x40]
	mov	rdi, qword ptr [rsp + 0x58]
	jl	.label_1492
	nop	dword ptr [rax + rax]
.label_1472:
	xor	eax, eax
	cmp	rbp, rcx
	jge	.label_1442
	movzx	eax, byte ptr [rdx + rbp]
.label_1442:
	test	rdi, rdi
	je	.label_1501
	movzx	eax, byte ptr [rdi + rax]
.label_1501:
	cmp	byte ptr [rsi + rax], 0
	jne	.label_1502
	lea	rax, [rbp - 1]
	mov	qword ptr [rsp + 0x28], rax
	cmp	rbp, r15
	mov	rbp, rax
	jg	.label_1472
	jmp	.label_1492
.label_2961:
	cmp	rbp, r12
	jge	.label_1504
	mov	rcx, qword ptr [rsp + 0x50]
	mov	rdx, qword ptr [rsp + 0x40]
	mov	rsi, qword ptr [rsp + 0x58]
	nop	dword ptr [rax + rax]
.label_1509:
	movzx	eax, byte ptr [rcx + rbp]
	movzx	eax, byte ptr [rsi + rax]
	cmp	byte ptr [rdx + rax], 0
	jne	.label_1504
	inc	rbp
	mov	qword ptr [rsp + 0x28], rbp
	cmp	rbp, r12
	jl	.label_1509
	jmp	.label_1504
.label_2960:
	cmp	rbp, r12
	mov	rcx, qword ptr [rsp + 0x50]
	mov	rdx, qword ptr [rsp + 0x40]
	jge	.label_1504
	nop	dword ptr [rax]
.label_1556:
	movzx	eax, byte ptr [rcx + rbp]
	cmp	byte ptr [rdx + rax], 0
	jne	.label_1504
	inc	rbp
	mov	qword ptr [rsp + 0x28], rbp
	cmp	rbp, r12
	jl	.label_1556
	nop	word ptr [rax + rax]
.label_1504:
	cmp	rbp, r12
	jne	.label_1520
	xor	eax, eax
	cmp	r12, qword ptr [rsp + 0x78]
	mov	rcx, qword ptr [rsp + 0x50]
	jge	.label_1521
	movzx	eax, byte ptr [rcx + r12]
.label_1521:
	mov	rcx, qword ptr [rsp + 0x58]
	test	rcx, rcx
	je	.label_1524
	movzx	eax, byte ptr [rcx + rax]
.label_1524:
	mov	rcx, qword ptr [rsp + 0x40]
	mov	ebx, 1
	cmp	byte ptr [rcx + rax], 0
	mov	rbp, r12
	jne	.label_1520
	jmp	.label_1331
.label_1380:
	mov	rax, qword ptr [rsp + 0xa8]
	jmp	.label_1528
.label_1545:
	add	rbp, r13
	mov	qword ptr [rsp + 0x28], rbp
	cmp	rbp, r15
	mov	ebx, 1
	jl	.label_1331
	cmp	rbp, r12
	jle	.label_1528
	jmp	.label_1331
.label_1539:
	lea	rdi, [rsp + 0x80]
	mov	rsi, rbp
	mov	edx, dword ptr [rsp + 0x260]
	call	re_string_reconstruct
	mov	ebx, eax
	test	ebx, ebx
	jne	.label_1331
	mov	rbp, qword ptr [rsp + 0x28]
	mov	rax, qword ptr [rsp + 0xa8]
	mov	rcx, rbp
	sub	rcx, rax
	jmp	.label_1581
	nop	word ptr cs:[rax + rax]
.label_1528:
	mov	rcx, rbp
	sub	rcx, rax
	cmp	rcx, qword ptr [rsp + 0xb8]
	jae	.label_1539
.label_1581:
	cmp	rbp, qword ptr [rsp + 0x78]
	mov	edx, 0
	mov	rsi, qword ptr [rsp + 0x40]
	jge	.label_1541
	mov	rdx, qword ptr [rsp + 0x88]
	movzx	edx, byte ptr [rdx + rcx]
.label_1541:
	cmp	byte ptr [rsi + rdx], 0
	je	.label_1545
	jmp	.label_1520
.label_1502:
	mov	rax, rbp
.label_1492:
	mov	ebx, 1
	cmp	rax, r15
	mov	rbp, rax
	jl	.label_1331
.label_1520:
	lea	rdi, [rsp + 0x80]
	mov	rsi, rbp
	mov	edx, dword ptr [rsp + 0x260]
	call	re_string_reconstruct
	mov	ebx, eax
	test	ebx, ebx
	jne	.label_1331
	mov	rax, qword ptr [rsp + 0x208]
	cmp	eax, 1
	je	.label_1557
	mov	rax, qword ptr [rsp + 0xb0]
	test	rax, rax
	je	.label_1557
	mov	rax, qword ptr [rsp + 0x90]
	cmp	dword ptr [rax], -1
	je	.label_1561
.label_1557:
	mov	dword ptr [rsp + 0x160], 0
	lea	rax, [rsp + 0xb8]
	xorps	xmm0, xmm0
	movups	xmmword ptr [rax + 0x88], xmm0
	mov	rbp, qword ptr [rsp + 0x118]
	mov	r8, qword ptr [rsp + 0xc8]
	mov	dword ptr [rsp + 8], 0
	mov	rbx, qword ptr [rbp + 0x48]
	cmp	byte ptr [rbx + 0x68], 0
	js	.label_1564
	mov	r14b, byte ptr [rsp + 0xf]
	jmp	.label_114
	nop	
.label_1564:
	mov	qword ptr [rsp + 0x10], r8
	lea	rsi, [r8 - 1]
	mov	edx, dword ptr [rsp + 0x120]
	lea	rdi, [rsp + 0x80]
	call	re_string_context_at
	test	al, 1
	mov	r14b, byte ptr [rsp + 0xf]
	jne	.label_334
	test	eax, eax
	je	.label_336
	mov	ecx, eax
	and	ecx, 4
	sete	sil
	mov	edx, eax
	and	edx, 2
	mov	r8, qword ptr [rsp + 0x10]
	je	.label_338
	test	sil, sil
	jne	.label_338
	mov	rbx, qword ptr [rbp + 0x60]
	jmp	.label_114
.label_334:
	mov	rbx, qword ptr [rbp + 0x50]
.label_336:
	mov	r8, qword ptr [rsp + 0x10]
.label_114:
	test	rbx, rbx
	je	.label_1587
	mov	rax, qword ptr [rsp + 0x138]
	test	rax, rax
	mov	cl, r14b
	mov	dword ptr [rsp + 0x18], ecx
	je	.label_1482
	mov	qword ptr [rax + r8*8], rbx
	cmp	qword ptr [rbp + 0x98], 0
	mov	al, r14b
	mov	dword ptr [rsp + 0x18], eax
	jne	.label_1590
.label_1482:
	mov	al, byte ptr [rbx + 0x68]
	mov	rdx, -1
	test	al, 0x10
	mov	ecx, 0
	jne	.label_1593
.label_1468:
	mov	r14, qword ptr [rsp + 0xc8]
	mov	rax, qword ptr [rsp + 0x200]
.label_1507:
	mov	r13, rax
	mov	qword ptr [rsp + 0x60], rdx
	cmp	qword ptr [rsp + 0xe8], r14
	jle	.label_1483
	test	rcx, rcx
	sete	al
	or	al, byte ptr [rsp + 7]
	mov	byte ptr [rsp + 0x198], al
	mov	r12, rbx
	jmp	.label_1494
.label_1440:
	add	r14d, 2
	lea	rdi, [rsp + 0x80]
	mov	esi, r14d
	mov	rbx, r8
	call	extend_buffers
	mov	r8, rbx
	mov	dword ptr [rsp + 8], eax
	test	eax, eax
	jne	.label_1603
	jmp	.label_1443
.label_1448:
	cmp	qword ptr [r12 + 0x10], 0
	jle	.label_1605
	mov	rbp, qword ptr [rsp + 0x118]
	xor	edx, edx
	mov	qword ptr [rsp + 0x10], r8
	mov	qword ptr [rsp + 0x1f8], rbp
.label_1413:
	mov	rax, qword ptr [r12 + 0x18]
	mov	rcx, qword ptr [rax + rdx*8]
	mov	rax, qword ptr [rbp]
	mov	rsi, rcx
	mov	qword ptr [rsp + 0x68], rsi
	shl	rcx, 4
	mov	ebx, dword ptr [rax + rcx + 8]
	test	ebx, 0x100000
	je	.label_1334
	mov	r14d, ebx
	shr	r14d, 8
	test	r14w, 0x3ff
	mov	r9, qword ptr [rsp + 0xc8]
	mov	qword ptr [rsp + 0x180], rdx
	je	.label_1320
	mov	edx, dword ptr [rsp + 0x120]
	lea	rdi, [rsp + 0x80]
	mov	rsi, r9
	mov	rbp, r9
	call	re_string_context_at
	mov	r9, rbp
	mov	rdx, qword ptr [rsp + 0x180]
	mov	r8, qword ptr [rsp + 0x10]
	mov	rbp, qword ptr [rsp + 0x1f8]
	mov	ecx, eax
	and	ecx, 1
	test	r14b, 4
	je	.label_1327
	test	ecx, ecx
	je	.label_1334
.label_1327:
	test	bh, 8
	je	.label_1332
	test	ecx, ecx
	jne	.label_1334
.label_1332:
	test	bh, 0x20
	je	.label_1441
	mov	ecx, eax
	and	ecx, 2
	je	.label_1334
.label_1441:
	test	r14b, r14b
	jns	.label_1320
	and	eax, 8
	je	.label_1334
.label_1320:
	mov	rdi, rbp
	mov	rsi, qword ptr [rsp + 0x68]
	lea	rdx, [rsp + 0x80]
	mov	rcx, r9
	call	check_node_accept_bytes
	mov	rdx, qword ptr [rsp + 0x180]
	mov	r8, qword ptr [rsp + 0x10]
	test	eax, eax
	je	.label_1334
	movsxd	rbx, eax
	add	rbx, qword ptr [rsp + 0xc8]
	mov	ecx, dword ptr [rsp + 0x160]
	cmp	ecx, eax
	cmovl	ecx, eax
	mov	dword ptr [rsp + 0x160], ecx
	mov	r14, qword ptr [rsp + 0x140]
	mov	rcx, qword ptr [rsp + 0xc0]
	mov	rax, qword ptr [rsp + 0xd8]
	cmp	rcx, rbx
	jg	.label_1345
	cmp	rcx, rax
	jl	.label_1352
.label_1345:
	mov	rcx, qword ptr [rsp + 0xb0]
	cmp	rcx, rbx
	jg	.label_1355
	cmp	rcx, rax
	jge	.label_1355
.label_1352:
	lea	esi, [rbx + 1]
	lea	rdi, [rsp + 0x80]
	call	extend_buffers
	test	eax, eax
	jne	.label_1363
.label_1355:
	mov	rdx, rbx
	sub	rdx, r14
	jle	.label_1365
	mov	rax, qword ptr [rsp + 0x138]
	lea	rdi, [rax + r14*8 + 8]
	shl	rdx, 3
	xor	esi, esi
	call	memset
	mov	qword ptr [rsp + 0x140], rbx
.label_1365:
	mov	dword ptr [rsp + 0x34], 0
	mov	rax, qword ptr [rbp + 0x18]
	mov	rcx, qword ptr [rsp + 0x68]
	mov	rax, qword ptr [rax + rcx*8]
	lea	rdx, [rax + rax*2]
	shl	rdx, 3
	add	rdx, qword ptr [rbp + 0x30]
	mov	rax, qword ptr [rsp + 0x138]
	mov	qword ptr [rsp + 0x68], rbx
	mov	rax, qword ptr [rax + rbx*8]
	test	rax, rax
	mov	qword ptr [rsp + 0x1f0], rax
	je	.label_1373
	mov	rsi, qword ptr [rax + 0x50]
	lea	rbx, [rsp + 0x1a0]
	mov	rdi, rbx
	call	re_node_set_init_union
	mov	dword ptr [rsp + 0x34], eax
	test	eax, eax
	je	.label_1404
	jmp	.label_1388
.label_1373:
	mov	rax, qword ptr [rdx + 0x10]
	mov	qword ptr [rsp + 0x1b0], rax
	movups	xmm0, xmmword ptr [rdx]
	movaps	xmmword ptr [rsp + 0x1a0], xmm0
	lea	rbx, [rsp + 0x1a0]
.label_1404:
	mov	r14, qword ptr [rsp + 0x68]
	lea	rsi, [r14 - 1]
	mov	edx, dword ptr [rsp + 0x120]
	lea	rdi, [rsp + 0x80]
	call	re_string_context_at
	lea	rdi, [rsp + 0x34]
	mov	rsi, rbp
	mov	rdx, rbx
	mov	ecx, eax
	call	re_acquire_state_context
	cmp	qword ptr [rsp + 0x1f0], 0
	mov	rcx, qword ptr [rsp + 0x138]
	mov	qword ptr [rcx + r14*8], rax
	je	.label_1400
	mov	rdi, qword ptr [rsp + 0x1b0]
	call	free
.label_1400:
	mov	rax, qword ptr [rsp + 0x138]
	cmp	qword ptr [rax + r14*8], 0
	mov	r8, qword ptr [rsp + 0x10]
	mov	rdx, qword ptr [rsp + 0x180]
	jne	.label_1334
	mov	eax, dword ptr [rsp + 0x34]
	test	eax, eax
	jne	.label_1411
.label_1334:
	inc	rdx
	cmp	rdx, qword ptr [r12 + 0x10]
	jl	.label_1413
.label_1605:
	mov	dword ptr [rsp + 8], 0
	jmp	.label_1558
.label_1453:
	mov	rsi, qword ptr [rsp + 0xc8]
	dec	rsi
	mov	edx, dword ptr [rsp + 0x120]
	lea	rdi, [rsp + 0x80]
	call	re_string_context_at
	and	eax, 1
	shl	rax, 8
	or	rax, rbx
	mov	rbx, qword ptr [r14 + rax*8]
	mov	r8, qword ptr [rsp + 0x10]
	jmp	.label_1341
.label_1498:
	cmp	r12, rbx
	je	.label_1425
	mov	dword ptr [rsp + 0x18], 0
.label_1425:
	cmove	r8, r15
	jmp	.label_1427
.label_1411:
	mov	dword ptr [rsp + 8], eax
.label_1464:
	xor	ebx, ebx
	jmp	.label_1341
.label_1363:
	mov	dword ptr [rsp + 0x34], eax
.label_1388:
	mov	dword ptr [rsp + 8], eax
	xor	ebx, ebx
	mov	r8, qword ptr [rsp + 0x10]
	jmp	.label_1341
	nop	dword ptr [rax]
.label_1494:
	lea	r15, [r14 + 1]
	mov	rcx, qword ptr [rsp + 0xc0]
	mov	rax, qword ptr [rsp + 0xd8]
	cmp	r15, rcx
	jl	.label_1366
	cmp	rcx, rax
	jl	.label_1440
.label_1366:
	mov	rcx, qword ptr [rsp + 0xb0]
	cmp	r15, rcx
	jl	.label_1443
	cmp	rcx, rax
	jl	.label_1440
.label_1443:
	test	byte ptr [r12 + 0x68], 0x20
	jne	.label_1448
.label_1558:
	mov	rax, qword ptr [rsp + 0xc8]
	lea	rcx, [rax + 1]
	mov	qword ptr [rsp + 0xc8], rcx
	mov	rcx, qword ptr [rsp + 0x88]
	movzx	ebx, byte ptr [rcx + rax]
.label_1462:
	mov	rax, qword ptr [r12 + 0x58]
	test	rax, rax
	jne	.label_1452
	mov	qword ptr [rsp + 0x10], r8
	mov	r14, qword ptr [r12 + 0x60]
	test	r14, r14
	jne	.label_1453
	mov	rdi, qword ptr [rsp + 0x118]
	mov	rsi, r12
	call	build_trtable
	test	al, al
	mov	r8, qword ptr [rsp + 0x10]
	jne	.label_1462
	mov	dword ptr [rsp + 8], 0xc
	jmp	.label_1464
	nop	word ptr [rax + rax]
.label_1452:
	mov	rbx, qword ptr [rax + rbx*8]
.label_1341:
	cmp	qword ptr [rsp + 0x138], 0
	je	.label_1470
	lea	rdi, [rsp + 8]
	lea	rsi, [rsp + 0x80]
	mov	rdx, rbx
	mov	rbx, r8
	call	merge_state_with_log
	mov	r8, rbx
	mov	rbx, rax
.label_1470:
	test	rbx, rbx
	jne	.label_1469
	cmp	dword ptr [rsp + 8], 0
	jne	.label_1471
	mov	rax, qword ptr [rsp + 0x138]
	test	rax, rax
	setne	cl
	and	cl, byte ptr [rsp + 0x198]
	cmp	cl, 1
	je	.label_1479
	jmp	.label_1483
.label_1490:
	mov	rax, qword ptr [rsp + 0x138]
	mov	r8, rbp
.label_1479:
	mov	rdx, qword ptr [rsp + 0xc8]
	mov	rcx, qword ptr [rsp + 0x140]
	nop	dword ptr [rax + rax]
.label_1487:
	cmp	rdx, rcx
	jge	.label_1483
	lea	rsi, [rdx + 1]
	mov	qword ptr [rsp + 0xc8], rsi
	cmp	qword ptr [rax + rdx*8 + 8], 0
	mov	rdx, rsi
	je	.label_1487
	mov	rbp, r8
	xor	edx, edx
	lea	rdi, [rsp + 8]
	lea	rsi, [rsp + 0x80]
	call	merge_state_with_log
	mov	rbx, rax
	test	rbx, rbx
	jne	.label_1386
	mov	eax, dword ptr [rsp + 8]
	test	eax, eax
	je	.label_1490
.label_1386:
	test	rbx, rbx
	mov	r8, rbp
	je	.label_1483
	nop	word ptr cs:[rax + rax]
.label_1469:
	mov	eax, dword ptr [rsp + 0x18]
	test	al, 1
	jne	.label_1498
.label_1427:
	mov	al, byte ptr [rbx + 0x68]
	test	al, 0x10
	jne	.label_1499
	mov	r14, qword ptr [rsp + 0xc8]
	jmp	.label_1446
	nop	dword ptr [rax]
.label_1499:
	mov	r14, qword ptr [rsp + 0xc8]
	test	al, al
	jns	.label_1457
	lea	rdi, [rsp + 0x80]
	mov	rsi, rbx
	mov	rdx, r14
	mov	rbp, r8
	call	check_halt_state_context
	mov	r8, rbp
	test	rax, rax
	jne	.label_1457
.label_1446:
	cmp	qword ptr [rsp + 0xe8], r14
	mov	r12, rbx
	jg	.label_1494
	jmp	.label_1483
.label_1457:
	cmp	byte ptr [rsp + 7], 0
	mov	rdx, r14
	mov	ecx, 1
	mov	eax, 0
	mov	r13, qword ptr [rsp + 0x70]
	jne	.label_1507
	jmp	.label_1360
	nop	dword ptr [rax]
.label_1483:
	mov	rax, r13
	test	rax, rax
	mov	r13, qword ptr [rsp + 0x70]
	je	.label_1534
	add	qword ptr [rax], r8
.label_1534:
	mov	r14, qword ptr [rsp + 0x60]
.label_1360:
	cmp	r14, -1
	mov	r15, qword ptr [rsp + 0x190]
	mov	r12, qword ptr [rsp + 0x188]
	je	.label_1458
	mov	ebx, 0xc
	cmp	r14, -2
	je	.label_1331
	mov	r12, qword ptr [rsp + 0x38]
	cmp	r12, 1
	seta	al
	mov	qword ptr [rsp + 0x128], r14
	mov	rcx, qword ptr [rsp + 0x48]
	test	byte ptr [rcx + 0x38], 0x10
	sete	r15b
	and	r15b, al
	je	.label_1522
	mov	rax, qword ptr [rsp + 0x138]
	mov	rsi, qword ptr [rax + r14*8]
	lea	rdi, [rsp + 0x80]
	mov	rdx, r14
	call	check_halt_state_context
	mov	qword ptr [rsp + 0x130], rax
	mov	rbp, qword ptr [rsp + 0x20]
	jmp	.label_1570
.label_1522:
	mov	rbp, qword ptr [rsp + 0x20]
	cmp	qword ptr [rbp + 0x98], 0
	je	.label_1397
	mov	rax, qword ptr [rsp + 0x138]
	mov	rsi, qword ptr [rax + r14*8]
	lea	rdi, [rsp + 0x80]
	mov	rdx, r14
	call	check_halt_state_context
	mov	qword ptr [rsp + 0x130], rax
	test	r15b, 1
	je	.label_1536
.label_1570:
	test	byte ptr [rbp + 0xb0], 1
	jne	.label_1538
.label_1536:
	cmp	qword ptr [rbp + 0x98], 0
	je	.label_1397
.label_1538:
	movabs	rax, 0x1ffffffffffffffe
	cmp	r14, rax
	ja	.label_1331
	mov	r15, qword ptr [rsp + 0x118]
	mov	r12, qword ptr [rsp + 0x130]
	lea	rbp, [r14*8 + 8]
	mov	rdi, rbp
	call	malloc
	mov	r13, rax
	test	rax, rax
	mov	eax, 0
	je	.label_1548
	cmp	qword ptr [r15 + 0x98], 0
	je	.label_1551
	mov	qword ptr [rsp + 0x198], r15
	mov	rdi, rbp
	call	malloc
	test	rax, rax
	je	.label_1554
	xor	esi, esi
	mov	rdi, rax
	mov	rdx, rbp
	mov	rbx, rax
	call	memset
	mov	r15, r13
	mov	qword ptr [rsp + 0x1a0], r15
	mov	qword ptr [rsp + 0x18], rbx
	mov	qword ptr [rsp + 0x1a8], rbx
	mov	qword ptr [rsp + 0x60], r12
	mov	qword ptr [rsp + 0x1b0], r12
	mov	qword ptr [rsp + 0x1b8], r14
	lea	rax, [rsp + 0x1c0]
	xorps	xmm0, xmm0
	movups	xmmword ptr [rax], xmm0
	mov	qword ptr [rax + 0x10], 0
	lea	rdi, [rsp + 0x80]
	lea	r12, [rsp + 0x1a0]
	mov	rsi, r12
	call	sift_states_backward
	mov	ebx, eax
	test	ebx, ebx
	jne	.label_1576
	lea	r13, [r14 + 1]
.label_1597:
	cmp	qword ptr [r15], 0
	mov	rcx, qword ptr [rsp + 0x18]
	jne	.label_1577
	cmp	qword ptr [rcx], 0
	jne	.label_1577
	test	r14, r14
	jle	.label_1588
	mov	rax, qword ptr [rsp + 0x138]
	mov	r13, r14
	nop	word ptr cs:[rax + rax]
.label_1586:
	lea	r14, [r13 - 1]
	mov	rsi, qword ptr [rax + r13*8 - 8]
	test	rsi, rsi
	je	.label_1585
	test	byte ptr [rsi + 0x68], 0x10
	jne	.label_1395
.label_1585:
	cmp	r13, 2
	mov	r13, r14
	jge	.label_1586
	jmp	.label_1588
.label_1395:
	lea	rbx, [rsp + 0x80]
	mov	rdi, rbx
	mov	rdx, r14
	mov	rbx, rcx
	call	check_halt_state_context
	mov	rbp, rax
	lea	rdx, [r13*8]
	xor	esi, esi
	mov	rdi, rbx
	call	memset
	mov	qword ptr [rsp + 0x1a0], r15
	mov	qword ptr [rsp + 0x1a8], rbx
	mov	qword ptr [rsp + 0x60], rbp
	mov	qword ptr [rsp + 0x1b0], rbp
	mov	qword ptr [rsp + 0x1b8], r14
	lea	rax, [rsp + 0x1c0]
	xorps	xmm0, xmm0
	movups	xmmword ptr [rax], xmm0
	mov	qword ptr [rax + 0x10], 0
	lea	rdi, [rsp + 0x80]
	mov	rsi, r12
	call	sift_states_backward
	mov	ebx, eax
	test	ebx, ebx
	je	.label_1597
.label_1576:
	mov	rbp, qword ptr [rsp + 0x18]
	jmp	.label_1344
.label_1551:
	mov	r15, r13
	mov	qword ptr [rsp + 0x1a0], r15
	mov	qword ptr [rsp + 0x1a8], 0
	mov	qword ptr [rsp + 0x1b0], r12
	mov	qword ptr [rsp + 0x1b8], r14
	lea	rax, [rsp + 0x1c0]
	xorps	xmm0, xmm0
	movups	xmmword ptr [rax], xmm0
	mov	qword ptr [rax + 0x10], 0
	lea	rdi, [rsp + 0x80]
	lea	rsi, [rsp + 0x1a0]
	call	sift_states_backward
	mov	ebx, eax
	test	ebx, ebx
	mov	ebp, 0
	jne	.label_1344
	cmp	qword ptr [r15], 0
	mov	ecx, 0
	jne	.label_1610
.label_1588:
	mov	rdi, r15
	mov	rbx, rcx
	call	free
	mov	rdi, rbx
	call	free
	mov	r15, qword ptr [rsp + 0x190]
	mov	r12, qword ptr [rsp + 0x188]
	mov	r13, qword ptr [rsp + 0x70]
.label_1458:
	lea	rdi, [rsp + 0x80]
	call	match_ctx_clean
.label_1561:
	mov	rbp, qword ptr [rsp + 0x28]
	add	rbp, r13
	mov	qword ptr [rsp + 0x28], rbp
	cmp	rbp, r15
	mov	ebx, 1
	jl	.label_1331
	cmp	r12, rbp
	jge	.label_1330
	jmp	.label_1331
.label_338:
	test	edx, edx
	jne	.label_358
	test	ecx, ecx
	je	.label_114
	mov	rdx, qword ptr [rbx + 0x50]
	lea	rdi, [rsp + 8]
	mov	rsi, rbp
	mov	ecx, eax
	call	re_acquire_state_context
	mov	r8, qword ptr [rsp + 0x10]
	mov	rbx, rax
	jmp	.label_114
.label_358:
	mov	rbx, qword ptr [rbp + 0x58]
	jmp	.label_114
.label_1577:
	mov	rdi, qword ptr [rsp + 0x198]
	mov	rsi, r15
	mov	rdx, rcx
	mov	rbp, rcx
	mov	rcx, r13
	call	merge_state_array
	mov	ebx, eax
	mov	rdi, rbp
	call	free
	test	ebx, ebx
	mov	ebp, 0
	mov	r12, qword ptr [rsp + 0x60]
	jne	.label_1344
.label_1610:
	mov	rdi, qword ptr [rsp + 0x138]
	call	free
	mov	qword ptr [rsp + 0x138], r15
	mov	qword ptr [rsp + 0x130], r12
	mov	qword ptr [rsp + 0x128], r14
	mov	r12, qword ptr [rsp + 0x38]
.label_1397:
	xor	ebx, ebx
	test	r12, r12
	je	.label_1331
	mov	rbx, qword ptr [rsp + 0x38]
	cmp	rbx, 1
	je	.label_1354
	mov	rax, qword ptr [rsp + 0x258]
	lea	rdi, [rax + 0x10]
	cmp	rbx, 2
	mov	edx, 2
	cmova	rdx, rbx
	shl	rdx, 4
	add	rdx, -0x10
	mov	esi, 0xff
	call	memset
.label_1354:
	mov	rax, qword ptr [rsp + 0x258]
	mov	rcx, rax
	mov	qword ptr [rcx], 0
	mov	rax, qword ptr [rsp + 0x128]
	mov	qword ptr [rcx + 8], rax
	cmp	rbx, 2
	jb	.label_1329
	mov	rax, qword ptr [rsp + 0x48]
	mov	al, byte ptr [rax + 0x38]
	and	al, 0x10
	jne	.label_1329
	mov	rax, qword ptr [rsp + 0x20]
	test	byte ptr [rax + 0xb0], 1
	jne	.label_1376
	xor	eax, eax
	jmp	.label_1379
.label_1376:
	cmp	qword ptr [rax + 0x98], 0
	setg	al
.label_1379:
	mov	rdi, qword ptr [rsp + 0x48]
	mov	rdx, qword ptr [rsp + 0x38]
	movzx	r8d, al
	lea	rsi, [rsp + 0x80]
	mov	rcx, qword ptr [rsp + 0x258]
	call	set_regs
	mov	ebx, eax
	test	ebx, ebx
	jne	.label_1331
.label_1329:
	mov	r9b, byte ptr [rsp + 0x10c]
	mov	r8, qword ptr [rsp + 0x98]
	mov	rax, qword ptr [rsp + 0x258]
	lea	rdx, [rax + 8]
	xor	ecx, ecx
	mov	r14, qword ptr [rsp + 0x20]
	mov	rax, qword ptr [rsp + 0x250]
	mov	r10, qword ptr [rsp + 0x1e0]
	jmp	.label_1389
.label_1603:
	cmp	eax, 0xc
	je	.label_1471
	mov	edi, OFFSET FLAT:label_1475
	mov	esi, OFFSET FLAT:label_1476
	mov	edx, 0x46c
	mov	ecx, OFFSET FLAT:label_1477
	call	__assert_fail
.label_1587:
	cmp	dword ptr [rsp + 8], 0xc
	jne	.label_1401
.label_1471:
	mov	ebx, 0xc
	jmp	.label_1331
.label_1419:
	mov	rbx, qword ptr [rsp + 0xb0]
	cmp	rdi, rbx
	lea	rdi, [r8 + rdi*8]
	lea	rsi, [rsp + 0xb8]
	mov	r11, rsi
	cmove	rdi, r11
	mov	rdi, qword ptr [rdi]
	mov	qword ptr [rdx - 8], rdi
	mov	rsi, rcx
	shl	rsi, 4
	mov	rbp, qword ptr [rsp + 0x258]
	lea	rbp, [rbp + rsi + 8]
	mov	rsi, qword ptr [rdx]
	cmp	rsi, rbx
	lea	rsi, [r8 + rsi*8]
	cmove	rsi, r11
	mov	rbx, qword ptr [rsi]
	mov	qword ptr [rdx], rbx
	jmp	.label_1406
	nop	word ptr cs:[rax + rax]
.label_1389:
	mov	rdi, qword ptr [rdx - 8]
	cmp	rdi, -1
	je	.label_1574
	test	r9b, r9b
	jne	.label_1419
	mov	rbx, qword ptr [rdx]
	mov	rbp, rdx
.label_1406:
	mov	rsi, qword ptr [rsp + 0x28]
	add	rdi, rsi
	mov	qword ptr [rdx - 8], rdi
	add	rbx, rsi
	mov	qword ptr [rbp], rbx
.label_1574:
	inc	rcx
	add	rdx, 0x10
	dec	rax
	cmp	r10, rax
	jne	.label_1389
	test	r10, r10
	mov	rbp, qword ptr [rsp + 0x38]
	jle	.label_1428
	mov	rdi, rbp
	shl	rdi, 4
	add	rdi, qword ptr [rsp + 0x258]
	mov	rdx, r10
	shl	rdx, 4
	mov	esi, 0xff
	call	memset
.label_1428:
	mov	rax, qword ptr [r14 + 0xe0]
	xor	ebx, ebx
	test	rax, rax
	je	.label_1331
	cmp	rbp, 2
	jb	.label_1331
	mov	rcx, qword ptr [rsp + 0x1e0]
	sub	qword ptr [rsp + 0x1e8], rcx
	mov	rcx, qword ptr [rsp + 0x258]
	lea	rcx, [rcx + 0x18]
	xor	edx, edx
	nop	word ptr cs:[rax + rax]
.label_1579:
	mov	rsi, qword ptr [rax + rdx*8]
	cmp	rdx, rsi
	je	.label_1449
	shl	rsi, 4
	mov	rdi, qword ptr [rsp + 0x258]
	mov	rsi, qword ptr [rdi + rsi + 0x10]
	mov	qword ptr [rcx - 8], rsi
	mov	rsi, qword ptr [rax + rdx*8]
	shl	rsi, 4
	mov	rsi, qword ptr [rdi + rsi + 0x18]
	mov	qword ptr [rcx], rsi
.label_1449:
	inc	rdx
	add	rcx, 0x10
	xor	ebx, ebx
	cmp	qword ptr [rsp + 0x1e8], rdx
	jne	.label_1579
.label_1331:
	mov	rdi, qword ptr [rsp + 0x138]
	call	free
	mov	rax, qword ptr [rsp + 0x20]
	cmp	qword ptr [rax + 0x98], 0
	je	.label_1460
	lea	rdi, [rsp + 0x80]
	call	match_ctx_clean
	mov	rdi, qword ptr [rsp + 0x178]
	call	free
	mov	rdi, qword ptr [rsp + 0x158]
	call	free
.label_1460:
	mov	rdi, qword ptr [rsp + 0x90]
	call	free
	mov	rdi, qword ptr [rsp + 0x98]
	call	free
	cmp	byte ptr [rsp + 0x10b], 0
	je	.label_1474
	mov	rdi, qword ptr [rsp + 0x88]
	call	free
.label_1474:
	mov	eax, ebx
	add	rsp, 0x218
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_1554:
	mov	qword ptr [rsp + 0x1d8], r13
.label_1548:
	mov	rdi, qword ptr [rsp + 0x1d8]
	mov	rbp, rax
	call	free
	mov	rdi, rbp
	call	free
	jmp	.label_1331
.label_1401:
	mov	edi, OFFSET FLAT:label_1475
	mov	esi, OFFSET FLAT:label_1476
	mov	edx, 0x435
	mov	ecx, OFFSET FLAT:label_1477
	call	__assert_fail
	nop	word ptr [rax + rax]
	push	r15
	push	r14
	push	rbx
	mov	rbx, rsi
	mov	r14, rdi
	mov	al, byte ptr [rbx]
	test	al, al
	mov	byte ptr [r14], al
	je	.label_404
	mov	rax, qword ptr [rbx + 4]
	mov	qword ptr [r14 + 4], rax
	jmp	.label_246
.label_404:
	mov	qword ptr [r14 + 4], 0
.label_246:
	mov	al, byte ptr [rbx + 0xc]
	mov	byte ptr [r14 + 0xc], al
	mov	rsi, qword ptr [rbx + 0x10]
	lea	rax, [rbx + 0x28]
	cmp	rsi, rax
	jne	.label_559
	lea	r15, [r14 + 0x28]
	mov	rdx, qword ptr [rbx + 0x18]
	mov	rdi, r15
	call	memcpy
	mov	rsi, r15
.label_559:
	mov	qword ptr [r14 + 0x10], rsi
	mov	rax, qword ptr [rbx + 0x18]
	mov	qword ptr [r14 + 0x18], rax
	mov	rax, qword ptr [rbx + 0x20]
	test	al, al
	mov	byte ptr [r14 + 0x20], al
	je	.label_458
	shr	rax, 0x20
	mov	dword ptr [r14 + 0x24], eax
.label_458:
	pop	rbx
	pop	r14
	pop	r15
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4174b0

	.globl check_node_accept
	.type check_node_accept, @function
check_node_accept:
	push	rbp
	push	r14
	push	rbx
	mov	rax, qword ptr [rdi + 8]
	movzx	ecx, byte ptr [rax + rdx]
	mov	ebp, dword ptr [rsi + 8]
	xor	eax, eax
	mov	r14d, ebp
	mov	ebx, ebp
	dec	bl
	movzx	ebp, bl
	cmp	bpl, 6
	ja	.label_278
	jmp	qword ptr [(rbp * 8) + label_2535]
.label_3094:
	cmp	byte ptr [rsi], cl
	je	.label_268
	xor	eax, eax
	jmp	.label_278
.label_3095:
	mov	rax, qword ptr [rsi]
	mov	ebx, ecx
	shr	bl, 6
	movzx	esi, bl
	mov	rax, qword ptr [rax + rsi*8]
	bt	rax, rcx
	jb	.label_268
	xor	eax, eax
	jmp	.label_278
.label_3097:
	test	cl, cl
	js	.label_272
.label_3096:
	test	cl, cl
	je	.label_189
	cmp	cl, 0xa
	jne	.label_268
	mov	rax, qword ptr [rdi + 0x98]
	test	byte ptr [rax + 0xd8], 0x40
	jne	.label_268
	xor	eax, eax
	jmp	.label_278
.label_189:
	mov	rax, qword ptr [rdi + 0x98]
	cmp	byte ptr [rax + 0xd8], 0
	js	.label_279
.label_268:
	mov	eax, r14d
	mov	ebp, eax
	shr	ebp, 8
	mov	al, 1
	test	bp, 0x3ff
	je	.label_278
	mov	eax, dword ptr [rdi + 0xa0]
	mov	rsi, rdx
	mov	edx, eax
	call	re_string_context_at
	mov	ecx, eax
	and	ecx, 1
	test	bpl, 4
	je	.label_108
	test	ecx, ecx
	jne	.label_108
	xor	eax, eax
	jmp	.label_278
.label_108:
	mov	edx, r14d
	test	dh, 8
	je	.label_293
	test	ecx, ecx
	je	.label_293
.label_272:
	xor	eax, eax
	jmp	.label_278
.label_293:
	mov	ecx, r14d
	test	ch, 0x20
	je	.label_296
	mov	ecx, eax
	and	ecx, 2
	jne	.label_296
.label_279:
	xor	eax, eax
	jmp	.label_278
.label_296:
	and	eax, 8
	test	bpl, bpl
	setns	cl
	shr	eax, 3
	or	al, cl
.label_278:
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	nop	
	.section	.text
	.align	32
	#Procedure 0x4175a0

	.globl re_string_realloc_buffers
	.type re_string_realloc_buffers, @function
re_string_realloc_buffers:
	push	rbp
	push	r14
	push	rbx
	mov	r14, rsi
	mov	rbx, rdi
	cmp	dword ptr [rbx + 0x90], 2
	jl	.label_2536
	mov	rax, r14
	shr	rax, 0x3d
	mov	ebp, 0xc
	jne	.label_2537
	mov	rdi, qword ptr [rbx + 0x10]
	lea	rsi, [r14*4]
	call	realloc
	test	rax, rax
	je	.label_2537
	mov	qword ptr [rbx + 0x10], rax
	mov	rdi, qword ptr [rbx + 0x18]
	test	rdi, rdi
	je	.label_2536
	lea	rsi, [r14*8]
	call	realloc
	test	rax, rax
	je	.label_2537
	mov	qword ptr [rbx + 0x18], rax
.label_2536:
	cmp	byte ptr [rbx + 0x8b], 0
	je	.label_2538
	mov	rdi, qword ptr [rbx + 8]
	mov	rsi, r14
	call	realloc
	mov	ebp, 0xc
	test	rax, rax
	je	.label_2537
	mov	qword ptr [rbx + 8], rax
.label_2538:
	mov	qword ptr [rbx + 0x40], r14
	xor	ebp, ebp
.label_2537:
	mov	eax, ebp
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x417630

	.globl locale_charset
	.type locale_charset, @function
locale_charset:
	push	rax
	mov	edi, 0xe
	call	rpl_nl_langinfo
	test	rax, rax
	mov	ecx, OFFSET FLAT:label_400
	cmovne	rcx, rax
	cmp	byte ptr [rcx], 0
	mov	eax, OFFSET FLAT:label_2539
	cmovne	rax, rcx
	pop	rcx
	ret	
	nop	word ptr cs:[rax + rax]
.label_325:
	call	abort
	nop	
	sub	rsp, 0x38
	mov	rax, qword ptr [rip + label_166]
	mov	qword ptr [rsp + 0x30], rax
	movups	xmm0, xmmword ptr [rip + label_167]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0, xmmword ptr [rip + label_168]
	movaps	xmmword ptr [rsp + 0x10], xmm0
	movups	xmm0, xmmword ptr [rip + default_quoting_options]
	movaps	xmmword ptr [rsp], xmm0
	mov	dword ptr [rsp], 0xa
	test	rsi, rsi
	je	.label_325
	test	rdx, rdx
	je	.label_325
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
	.align	32
	#Procedure 0x4176d0

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
	mov	rbp, -1
	js	.label_2552
	mov	qword ptr [rsp + 0x18], rsi
	mov	qword ptr [rsp + 0x10], r9
	cmp	rcx, rbx
	jg	.label_2552
	xor	r12d, r12d
	add	r8, rcx
	js	.label_2542
	mov	r12, r8
.label_2542:
	mov	rbp, qword ptr [rsp + 0x60]
	cmp	r8, rbx
	cmovg	r12, rbx
	movzx	r13d, byte ptr [rdi + 0x38]
	cmp	r12, rcx
	mov	eax, r13d
	mov	qword ptr [rsp + 0x20], rcx
	mov	qword ptr [rsp + 8], rdi
	jle	.label_2544
	test	r13b, 8
	mov	eax, r13d
	jne	.label_2544
	mov	rax, qword ptr [rdi + 0x20]
	test	rax, rax
	mov	eax, r13d
	je	.label_2544
	call	rpl_re_compile_fastmap
	mov	rdi, qword ptr [rsp + 8]
	mov	al, byte ptr [rdi + 0x38]
.label_2544:
	xor	r14d, r14d
	test	rbp, rbp
	mov	r15d, 1
	je	.label_2543
	mov	ecx, eax
	and	cl, 0x10
	jne	.label_2543
	and	al, 6
	cmp	al, 4
	jne	.label_2569
	mov	rax, qword ptr [rbp]
	mov	r15, qword ptr [rdi + 0x30]
	cmp	rax, r15
	ja	.label_2570
	xor	r14d, r14d
	test	rax, rax
	jle	.label_2572
	mov	r14, rbp
.label_2572:
	mov	r15d, 1
	test	rax, rax
	jle	.label_2543
	mov	r15, rax
	jmp	.label_2543
.label_2569:
	mov	r15, qword ptr [rdi + 0x30]
.label_2570:
	inc	r15
	mov	r14, rbp
.label_2543:
	mov	rdi, r15
	shl	rdi, 4
	call	malloc
	mov	rdi, qword ptr [rsp + 8]
	mov	rbp, -2
	test	rax, rax
	mov	rcx, qword ptr [rsp + 0x20]
	je	.label_2552
	mov	edx, r13d
	shr	dl, 5
	and	dl, 1
	and	r13d, 0x40
	movzx	edx, dl
	shr	r13d, 5
	or	r13d, edx
	sub	rsp, 8
	mov	rsi, qword ptr [rsp + 0x20]
	mov	rdx, rbx
	mov	r8, r12
	mov	r9, qword ptr [rsp + 0x18]
	push	r13
	mov	r12, rax
	push	rax
	push	r15
	call	re_search_internal
	add	rsp, 0x20
	test	eax, eax
	je	.label_2571
	xor	ebp, ebp
	cmp	eax, 1
	sete	bpl
	or	rbp, 0xfffffffffffffffe
	mov	rdi, r12
.label_2559:
	call	free
.label_2552:
	mov	rax, rbp
	add	rsp, 0x28
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_2571:
	test	r14, r14
	mov	rdi, r12
	je	.label_2550
	mov	r8, qword ptr [rsp + 8]
	mov	al, byte ptr [r8 + 0x38]
	shr	al, 1
	and	al, 3
	cmp	al, 2
	je	.label_2555
	lea	rbx, [r15 + 1]
	cmp	al, 1
	je	.label_2551
	test	al, al
	jne	.label_2561
	lea	r13, [rbx*8]
	mov	rdi, r13
	call	malloc
	mov	qword ptr [r14 + 8], rax
	xor	ebp, ebp
	mov	qword ptr [rsp + 0x10], rax
	test	rax, rax
	je	.label_2568
	mov	rdi, r13
	call	malloc
	mov	qword ptr [r14 + 0x10], rax
	test	rax, rax
	je	.label_2548
	mov	qword ptr [r14], rbx
	mov	r13d, 1
.label_2546:
	mov	r8, qword ptr [rsp + 8]
	mov	rdi, r12
	jmp	.label_2547
.label_2555:
	mov	rbx, qword ptr [r14]
	mov	r13d, 2
	cmp	rbx, r15
	jae	.label_2547
	mov	edi, OFFSET FLAT:label_2553
	mov	esi, OFFSET FLAT:label_1476
	mov	edx, 0x1fb
	mov	ecx, OFFSET FLAT:label_2554
	call	__assert_fail
.label_2551:
	mov	rax, qword ptr [r14]
	mov	r13d, 1
	cmp	rbx, rax
	ja	.label_2557
	mov	rbx, rax
.label_2547:
	test	r15, r15
	jle	.label_2564
	mov	rcx, qword ptr [r14 + 8]
	mov	rax, qword ptr [r14 + 0x10]
	mov	r9d, r15d
	and	r9d, 1
	xor	edx, edx
	cmp	r15, 1
	je	.label_2567
	mov	rsi, r15
	sub	rsi, r9
	mov	rbp, rdi
	add	rbp, 0x18
	xor	edx, edx
	nop	word ptr [rax + rax]
.label_2545:
	mov	rbx, qword ptr [rbp - 0x18]
	mov	qword ptr [rcx + rdx*8], rbx
	mov	rbx, qword ptr [rbp - 0x10]
	mov	qword ptr [rax + rdx*8], rbx
	mov	rbx, qword ptr [rbp - 8]
	mov	qword ptr [rcx + rdx*8 + 8], rbx
	mov	rbx, qword ptr [rbp]
	mov	qword ptr [rax + rdx*8 + 8], rbx
	add	rdx, 2
	add	rbp, 0x20
	cmp	rsi, rdx
	jne	.label_2545
.label_2567:
	test	r9, r9
	je	.label_2558
	mov	rsi, rdx
	shl	rsi, 4
	mov	rbp, qword ptr [rdi + rsi]
	mov	qword ptr [rcx + rdx*8], rbp
	mov	rcx, qword ptr [rdi + rsi + 8]
	mov	qword ptr [rax + rdx*8], rcx
.label_2558:
	mov	rbx, qword ptr [r14]
	jmp	.label_2549
.label_2564:
	xor	r15d, r15d
.label_2549:
	cmp	r15, rbx
	jae	.label_2562
	mov	rax, qword ptr [r14 + 8]
	mov	rcx, qword ptr [r14 + 0x10]
	nop	word ptr cs:[rax + rax]
.label_2540:
	mov	qword ptr [rcx + r15*8], -1
	mov	qword ptr [rax + r15*8], -1
	inc	r15
	cmp	r15, qword ptr [r14]
	jb	.label_2540
.label_2562:
	mov	ebp, r13d
.label_2573:
	mov	al, byte ptr [r8 + 0x38]
	add	bpl, bpl
	and	al, 0xf9
	mov	ecx, ebp
	and	cl, 6
	or	cl, al
	and	bpl, 6
	mov	byte ptr [r8 + 0x38], cl
	mov	rbp, -2
	je	.label_2559
.label_2550:
	mov	al, byte ptr [rsp + 0x68]
	mov	rbp, qword ptr [rdi]
	test	al, al
	je	.label_2559
	mov	rax, qword ptr [rsp + 0x20]
	cmp	rbp, rax
	jne	.label_2563
	mov	rbp, qword ptr [rdi + 8]
	sub	rbp, rax
	jmp	.label_2559
.label_2557:
	mov	rdi, qword ptr [r14 + 8]
	lea	rsi, [rbx*8]
	mov	qword ptr [rsp + 0x10], rsi
	call	realloc
	xor	ebp, ebp
	mov	qword ptr [rsp + 0x18], rax
	test	rax, rax
	je	.label_2568
	mov	rdi, qword ptr [r14 + 0x10]
	mov	rsi, qword ptr [rsp + 0x10]
	call	realloc
	test	rax, rax
	je	.label_2541
	mov	rcx, qword ptr [rsp + 0x18]
	mov	qword ptr [r14 + 8], rcx
	mov	qword ptr [r14 + 0x10], rax
	mov	qword ptr [r14], rbx
	jmp	.label_2546
.label_2548:
	mov	rdi, qword ptr [rsp + 0x10]
.label_2556:
	call	free
.label_2568:
	mov	r8, qword ptr [rsp + 8]
	mov	rdi, r12
	jmp	.label_2573
.label_2561:
	mov	edi, OFFSET FLAT:label_2560
	mov	esi, OFFSET FLAT:label_1476
	mov	edx, 0x1f9
	mov	ecx, OFFSET FLAT:label_2554
	call	__assert_fail
.label_2563:
	mov	edi, OFFSET FLAT:label_2565
	mov	esi, OFFSET FLAT:label_1476
	mov	edx, 0x1be
	mov	ecx, OFFSET FLAT:label_2566
	call	__assert_fail
.label_2541:
	mov	rdi, qword ptr [rsp + 0x18]
	jmp	.label_2556
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x417a90

	.globl re_string_reconstruct
	.type re_string_reconstruct, @function
re_string_reconstruct:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x38
	mov	r15d, edx
	mov	r12, rsi
	mov	rbx, rdi
	lea	r13, [rbx + 0x28]
	mov	rax, qword ptr [rbx + 0x28]
	cmp	rax, r12
	jle	.label_2611
	cmp	dword ptr [rbx + 0x90], 2
	jl	.label_2620
	mov	qword ptr [rbx + 0x20], 0
.label_2620:
	mov	rax, qword ptr [rbx + 0x50]
	mov	qword ptr [rbx + 0x58], rax
	mov	rax, qword ptr [rbx + 0x60]
	mov	qword ptr [rbx + 0x68], rax
	mov	byte ptr [rbx + 0x8c], 0
	lea	eax, [r15 + r15]
	and	eax, 2
	xor	eax, 6
	pxor	xmm0, xmm0
	movdqu	xmmword ptr [r13], xmm0
	mov	qword ptr [r13 + 0x10], 0
	mov	dword ptr [rbx + 0x70], eax
	xor	eax, eax
	cmp	byte ptr [rbx + 0x8b], 0
	mov	r14, r12
	jne	.label_2624
	mov	rax, qword ptr [rbx]
	mov	qword ptr [rbx + 8], rax
	xor	eax, eax
	mov	r14, r12
.label_2624:
	test	r14, r14
	je	.label_2606
	mov	rbp, qword ptr [rbx + 0x38]
	cmp	r14, rbp
	jge	.label_2583
	cmp	byte ptr [rbx + 0x8c], 0
	jne	.label_2586
	lea	rsi, [r14 - 1]
	mov	rdi, rbx
	mov	edx, r15d
	call	re_string_context_at
	mov	dword ptr [rbx + 0x70], eax
	cmp	dword ptr [rbx + 0x90], 2
	jl	.label_2591
	mov	rdi, qword ptr [rbx + 0x10]
	mov	rdx, qword ptr [rbx + 0x30]
	lea	rsi, [rdi + r14*4]
	sub	rdx, r14
	shl	rdx, 2
	call	memmove
.label_2591:
	cmp	byte ptr [rbx + 0x8b], 0
	jne	.label_2601
.label_2577:
	sub	qword ptr [rbx + 0x30], r14
	sub	qword ptr [rbx + 0x38], r14
.label_2584:
	cmp	byte ptr [rbx + 0x8b], 0
	jne	.label_2606
	add	qword ptr [rbx + 8], r14
.label_2606:
	mov	qword ptr [rbx + 0x28], r12
	mov	rdx, qword ptr [rbx + 0x58]
	sub	rdx, r14
	mov	qword ptr [rbx + 0x58], rdx
	sub	qword ptr [rbx + 0x68], r14
	cmp	dword ptr [rbx + 0x90], 2
	jl	.label_2610
	cmp	byte ptr [rbx + 0x88], 0
	je	.label_2616
	mov	rdi, rbx
	call	build_wcs_upper_buffer
	test	eax, eax
	jne	.label_2621
	jmp	.label_2574
.label_2610:
	cmp	byte ptr [rbx + 0x8b], 0
	jne	.label_2607
	mov	qword ptr [rbx + 0x30], rdx
	jmp	.label_2574
.label_2616:
	mov	rdi, rbx
	call	build_wcs_buffer
.label_2574:
	mov	qword ptr [rbx + 0x48], 0
	xor	eax, eax
.label_2621:
	add	rsp, 0x38
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_2611:
	mov	r14, r12
	sub	r14, rax
	jmp	.label_2624
.label_2583:
	mov	rcx, qword ptr [rbx + 0x30]
	mov	qword ptr [rsp + 0x20], rcx
	movzx	r8d, word ptr [rbx + 0x8c]
	test	r8b, r8b
	jne	.label_2636
.label_2630:
	mov	qword ptr [rbx + 0x30], 0
	movsxd	rdi, dword ptr [rbx + 0x90]
	cmp	rdi, 2
	jl	.label_2581
	cmp	byte ptr [rbx + 0x89], 0
	je	.label_2588
	mov	r10, qword ptr [rbx]
	lea	rdx, [r10 + rax]
	mov	rsi, r14
	sub	rsi, rdi
	add	rsi, rdx
	cmp	rsi, r10
	cmovb	rsi, r10
	lea	r8, [rdx + r14]
	add	r10, r14
.label_2608:
	lea	rdi, [r10 + rax - 1]
	cmp	rdi, rsi
	jb	.label_2588
	movzx	ecx, byte ptr [rax + r10 - 1]
	and	cl, 0xc0
	dec	r10
	cmp	cl, 0x80
	je	.label_2608
	mov	qword ptr [rsp], r8
	add	rdx, qword ptr [rbx + 0x58]
	lea	rbp, [r10 + rax]
	sub	rdx, rbp
	mov	rdi, qword ptr [rbx + 0x78]
	test	rdi, rdi
	mov	rsi, rbp
	jne	.label_2604
.label_2579:
	mov	qword ptr [rsp + 8], 0
	lea	rdi, [rsp + 0x14]
	lea	rcx, [rsp + 8]
	call	rpl_mbrtowc
	mov	rdx, qword ptr [rsp]
	sub	rdx, rbp
	mov	esi, 0xffffffff
	mov	rcx, rax
	sub	rcx, rdx
	jb	.label_2617
	cmp	rax, -3
	ja	.label_2617
	mov	qword ptr [rbx + 0x20], 0
	mov	qword ptr [rbx + 0x30], rcx
	mov	esi, dword ptr [rsp + 0x14]
.label_2617:
	mov	edx, esi
	cmp	edx, -1
	jne	.label_2627
	mov	rax, qword ptr [rbx + 0x28]
	mov	rbp, qword ptr [rbx + 0x38]
.label_2588:
	add	rbp, rax
	mov	rax, rbp
	sub	rax, r12
	jge	.label_2633
	lea	rax, [rbx + 0x20]
	mov	qword ptr [rsp], rax
	jmp	.label_2605
.label_2586:
	mov	r8, qword ptr [rbx + 0x18]
	mov	rdx, qword ptr [rbx + 0x30]
	xor	ecx, ecx
	mov	qword ptr [rsp], rdx
.label_2590:
	lea	rsi, [rcx + rdx]
	mov	rax, rsi
	shr	rax, 0x3f
	add	rax, rsi
	sar	rax, 1
	mov	rsi, qword ptr [r8 + rax*8]
	cmp	rsi, r14
	mov	rdi, rax
	jg	.label_2582
	jge	.label_2589
	lea	rcx, [rax + 1]
	mov	rdi, rdx
.label_2582:
	cmp	rcx, rdi
	mov	rdx, rdi
	jl	.label_2590
.label_2589:
	xor	ecx, ecx
	cmp	rsi, r14
	setl	cl
	lea	rbp, [rcx + rax]
	lea	rsi, [rcx + rax - 1]
	mov	rdi, rbx
	mov	edx, r15d
	mov	r15, r8
	call	re_string_context_at
	mov	rsi, r15
	mov	dword ptr [rbx + 0x70], eax
	mov	rdi, qword ptr [rsp]
	mov	rdx, rdi
	sub	rdx, r14
	jle	.label_2576
	cmp	rbp, r14
	jne	.label_2576
	cmp	qword ptr [rsi + r14*8], r14
	jne	.label_2576
	mov	rdi, qword ptr [rbx + 0x10]
	lea	rsi, [rdi + r14*4]
	shl	rdx, 2
	call	memmove
	mov	rdi, qword ptr [rbx + 8]
	mov	rdx, qword ptr [rbx + 0x30]
	sub	rdx, r14
	lea	rsi, [rdi + r14]
	call	memmove
	movdqu	xmm0, xmmword ptr [rbx + 0x30]
	movq	xmm1, r14
	pshufd	xmm1, xmm1, 0x44
	psubq	xmm0, xmm1
	movdqu	xmmword ptr [rbx + 0x30], xmm0
	movq	rax, xmm0
	test	rax, rax
	jle	.label_2584
	mov	rax, qword ptr [rbx + 0x18]
	lea	rcx, [rax + r14*8]
	xor	edx, edx
.label_2597:
	mov	rsi, qword ptr [rcx + rdx*8]
	sub	rsi, r14
	mov	qword ptr [rax + rdx*8], rsi
	inc	rdx
	cmp	rdx, qword ptr [rbx + 0x30]
	jl	.label_2597
	jmp	.label_2584
.label_2601:
	mov	rdi, qword ptr [rbx + 8]
	mov	rdx, qword ptr [rbx + 0x30]
	sub	rdx, r14
	lea	rsi, [rdi + r14]
	call	memmove
	jmp	.label_2577
.label_2576:
	mov	rax, r14
	sub	rax, r12
	mov	rcx, qword ptr [rbx + 0x50]
	add	rcx, rax
	mov	qword ptr [rbx + 0x58], rcx
	add	rax, qword ptr [rbx + 0x60]
	mov	qword ptr [rbx + 0x68], rax
	mov	byte ptr [rbx + 0x8c], 0
.label_2603:
	mov	rax, rbp
	test	rax, rax
	jle	.label_2600
	lea	rbp, [rax - 1]
	cmp	qword ptr [rsi + rax*8 - 8], r14
	je	.label_2603
.label_2600:
	cmp	rax, rdi
	jge	.label_2592
	mov	rcx, qword ptr [rbx + 0x10]
.label_2595:
	cmp	dword ptr [rcx + rax*4], -1
	jne	.label_2592
	inc	rax
	cmp	rax, rdi
	jl	.label_2595
.label_2592:
	cmp	rax, rdi
	jne	.label_2628
	mov	qword ptr [rbx + 0x30], 0
	xor	eax, eax
	mov	qword ptr [rbx + 0x38], rax
	jmp	.label_2584
.label_2607:
	cmp	byte ptr [rbx + 0x88], 0
	je	.label_2632
	mov	r15, qword ptr [rbx + 0x30]
	mov	r14, qword ptr [rbx + 0x40]
	cmp	r14, rdx
	cmovg	r14, rdx
	cmp	r15, r14
	jl	.label_2609
	jmp	.label_2613
.label_2626:
	mov	r12, qword ptr [r13]
.label_2609:
	inc	r15
	add	r12, qword ptr [rbx]
	movzx	eax, byte ptr [r15 + r12 - 1]
	movzx	ecx, al
	mov	rdx, qword ptr [rbx + 0x78]
	test	rdx, rdx
	jne	.label_2615
.label_2631:
	movzx	ebp, al
	mov	eax, ebp
	sub	eax, -0x80
	cmp	eax, 0x17f
	ja	.label_2622
	call	__ctype_toupper_loc
	mov	rax, qword ptr [rax]
	mov	ebp, dword ptr [rax + rbp*4]
.label_2622:
	mov	rax, qword ptr [rbx + 8]
	mov	byte ptr [rax + r15 - 1], bpl
	cmp	r15, r14
	jl	.label_2626
	jmp	.label_2629
.label_2615:
	movzx	eax, byte ptr [rdx + rcx]
	jmp	.label_2631
.label_2581:
	add	rax, r14
	mov	rdx, qword ptr [rbx]
	mov	cl, byte ptr [rdx + rax - 1]
	movzx	edx, cl
	mov	qword ptr [rbx + 0x38], 0
	mov	rsi, qword ptr [rbx + 0x78]
	test	rsi, rsi
	je	.label_2634
	mov	cl, byte ptr [rsi + rdx]
.label_2634:
	mov	rdx, qword ptr [rbx + 0x80]
	mov	eax, ecx
	shr	al, 6
	movzx	eax, al
	mov	rax, qword ptr [rdx + rax*8]
	mov	edx, 1
	movzx	esi, cl
	bt	rax, rsi
	jb	.label_2578
	xor	edx, edx
	cmp	cl, 0xa
	jne	.label_2578
	movzx	eax, r8w
	xor	edx, edx
	cmp	eax, 0xff
	seta	dl
	add	edx, edx
.label_2578:
	mov	dword ptr [rbx + 0x70], edx
	jmp	.label_2584
.label_2628:
	mov	rbp, qword ptr [rsi + rax*8]
	sub	rbp, r14
	mov	qword ptr [rbx + 0x30], rbp
	xor	eax, eax
	test	rbp, rbp
	je	.label_2575
	jle	.label_2599
	mov	rdi, qword ptr [rbx + 0x10]
	lea	rdx, [rbp*4]
	mov	esi, 0xff
	call	memset
.label_2599:
	mov	rdi, qword ptr [rbx + 8]
	mov	esi, 0xff
	mov	rdx, rbp
	call	memset
	mov	rax, qword ptr [rbx + 0x30]
.label_2575:
	mov	qword ptr [rbx + 0x38], rax
	jmp	.label_2584
.label_2633:
	mov	rbp, rax
	mov	qword ptr [rbx + 0x30], rax
	jmp	.label_2580
.label_2632:
	mov	rsi, qword ptr [rbx + 0x78]
	test	rsi, rsi
	je	.label_2574
	mov	rax, qword ptr [rbx + 0x30]
	mov	rcx, qword ptr [rbx + 0x40]
	cmp	rcx, rdx
	cmovg	rcx, rdx
	cmp	rax, rcx
	jge	.label_2618
	add	r12, rax
	mov	rdx, qword ptr [rbx]
	mov	rdi, qword ptr [rbx + 8]
	movzx	edx, byte ptr [rdx + r12]
	mov	dl, byte ptr [rsi + rdx]
	jmp	.label_2623
.label_2635:
	mov	rdx, qword ptr [rbx + 0x78]
	mov	rsi, qword ptr [rbx]
	mov	rdi, qword ptr [rbx + 8]
	add	rsi, qword ptr [rbx + 0x28]
	movzx	esi, byte ptr [rax + rsi]
	movzx	edx, byte ptr [rdx + rsi]
.label_2623:
	mov	byte ptr [rdi + rax], dl
	inc	rax
	cmp	rax, rcx
	jl	.label_2635
	mov	rax, rcx
.label_2618:
	mov	qword ptr [rbx + 0x30], rax
	mov	qword ptr [rbx + 0x38], rax
	jmp	.label_2574
.label_2629:
	mov	r15, r14
.label_2613:
	mov	qword ptr [rbx + 0x30], r15
	mov	qword ptr [rbx + 0x38], r15
	jmp	.label_2574
.label_2602:
	mov	rcx, qword ptr [rsp + 0x28]
	xor	edx, edx
	cmp	qword ptr [rsp + 0x30], 0
	je	.label_2587
	test	rax, rax
	je	.label_2587
	mov	rax, qword ptr [rbx]
	movzx	edx, byte ptr [rax + rbp]
.label_2587:
	mov	rax, qword ptr [rsp]
	mov	qword ptr [rax], rcx
	mov	eax, 1
	jmp	.label_2594
.label_2605:
	mov	rax, qword ptr [rbx + 0x20]
	mov	qword ptr [rsp + 0x28], rax
	mov	rdx, qword ptr [rbx + 0x50]
	sub	rdx, rbp
	mov	rsi, qword ptr [rbx]
	add	rsi, rbp
	lea	rdi, [rsp + 8]
	mov	qword ptr [rsp + 0x30], rdx
	mov	rcx, qword ptr [rsp]
	call	rpl_mbrtowc
	lea	rcx, [rax - 1]
	cmp	rcx, -3
	jae	.label_2602
	mov	edx, dword ptr [rsp + 8]
.label_2594:
	add	rbp, rax
	mov	rax, rbp
	sub	rax, r12
	jl	.label_2605
	mov	rbp, rax
	mov	qword ptr [rbx + 0x30], rax
	cmp	edx, -1
	je	.label_2580
.label_2627:
	cmp	byte ptr [rbx + 0x8e], 0
	jne	.label_2612
.label_2596:
	xor	ecx, ecx
	cmp	edx, 0xa
	jne	.label_2598
	xor	ecx, ecx
	cmp	byte ptr [rbx + 0x8d], 0
	setne	cl
	add	ecx, ecx
.label_2598:
	mov	dword ptr [rbx + 0x70], ecx
	mov	rbp, qword ptr [rbx + 0x30]
	jmp	.label_2619
.label_2580:
	mov	rsi, qword ptr [rsp + 0x20]
	dec	rsi
	mov	rdi, rbx
	mov	edx, r15d
	call	re_string_context_at
	mov	dword ptr [rbx + 0x70], eax
.label_2619:
	test	rbp, rbp
	jne	.label_2625
.label_2585:
	mov	rax, qword ptr [rbx + 0x30]
	mov	qword ptr [rbx + 0x38], rax
	jmp	.label_2584
.label_2636:
	mov	rdx, r14
	sub	rdx, r12
	mov	rsi, qword ptr [rbx + 0x50]
	add	rsi, rdx
	mov	qword ptr [rbx + 0x58], rsi
	add	rdx, qword ptr [rbx + 0x60]
	mov	qword ptr [rbx + 0x68], rdx
	mov	byte ptr [rbx + 0x8c], 0
	jmp	.label_2630
.label_2625:
	jle	.label_2593
	mov	rdi, qword ptr [rbx + 0x10]
	lea	rdx, [rbp*4]
	mov	esi, 0xff
	call	memset
.label_2593:
	cmp	byte ptr [rbx + 0x8b], 0
	mov	rdx, rbp
	je	.label_2585
	mov	rdi, qword ptr [rbx + 8]
	mov	esi, 0xff
	call	memset
	jmp	.label_2585
.label_2612:
	mov	ebp, edx
	mov	edi, ebp
	call	iswalnum
	mov	edx, ebp
	cmp	ebp, 0x5f
	mov	ecx, 1
	je	.label_2598
	test	eax, eax
	je	.label_2596
	jmp	.label_2598
.label_2604:
	lea	rsi, [rsp + 0x1a]
	cmp	rdx, 7
	mov	r8d, 6
	cmovl	r8, rdx
	cmp	rdx, 6
	mov	ecx, 6
	cmovl	ecx, edx
	test	ecx, ecx
	jle	.label_2579
	movsxd	r8, r8d
	lea	r9, [rsp + r8 + 0x19]
	add	rax, r8
	lea	r10, [r10 + rax - 1]
	xor	ecx, ecx
.label_2614:
	movzx	eax, byte ptr [r10 + rcx]
	movzx	eax, byte ptr [rdi + rax]
	mov	byte ptr [r9 + rcx], al
	lea	rax, [r8 + rcx - 1]
	dec	rcx
	inc	rax
	cmp	rax, 1
	jg	.label_2614
	jmp	.label_2579
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4181d0

	.globl mmalloca
	.type mmalloca, @function
mmalloca:
	xor	eax, eax
	cmp	rdi, -0x21
	ja	.label_2637
	push	rax
	add	rdi, 0x20
	call	malloc
	mov	rcx, rax
	xor	eax, eax
	test	rcx, rcx
	lea	rsp, [rsp + 8]
	je	.label_2637
	mov	rdx, rcx
	add	rdx, 0x10
	and	rdx, 0xffffffffffffffe0
	lea	rax, [rdx + 0x10]
	mov	esi, eax
	sub	esi, ecx
	mov	byte ptr [rdx + 0xf], sil
.label_2637:
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x418210

	.globl update_cur_sifted_state
	.type update_cur_sifted_state, @function
update_cur_sifted_state:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x98
	mov	r10, rcx
	mov	rcx, rdx
	mov	r12, rsi
	mov	r11, qword ptr [rdi + 0x98]
	mov	dword ptr [rsp + 0xc], 0
	mov	qword ptr [rsp + 0x18], rdi
	mov	rax, qword ptr [rdi + 0xb8]
	mov	r15, qword ptr [rax + rcx*8]
	lea	rax, [r15 + 8]
	test	r15, r15
	cmove	rax, r15
	mov	qword ptr [rsp + 0x40], rax
	cmp	qword ptr [r10 + 8], 0
	mov	qword ptr [rsp + 0x10], rcx
	mov	qword ptr [rsp + 0x38], r12
	je	.label_2643
	test	r15, r15
	je	.label_2665
	mov	dword ptr [rsp + 0x50], 0
	lea	rdi, [rsp + 0x50]
	mov	qword ptr [rsp + 0x20], r11
	mov	rsi, r11
	mov	qword ptr [rsp + 0x28], r10
	mov	rdx, r10
	call	re_acquire_state
	mov	r14, rax
	mov	r12d, dword ptr [rsp + 0x50]
	test	r12d, r12d
	jne	.label_2650
	mov	r13, r14
	add	r13, 0x38
	cmp	qword ptr [r14 + 0x38], 0
	mov	rdx, qword ptr [rsp + 0x28]
	jne	.label_2676
	mov	rdi, qword ptr [rdx + 8]
	mov	qword ptr [r14 + 0x38], rdi
	mov	qword ptr [r14 + 0x40], 0
	shl	rdi, 3
	call	malloc
	mov	qword ptr [r14 + 0x48], rax
	mov	r12d, 0xc
	test	rax, rax
	mov	ecx, 0xc
	je	.label_2685
	xor	ecx, ecx
.label_2685:
	test	rax, rax
	mov	dword ptr [rsp + 0x50], ecx
	je	.label_2650
	mov	rdx, qword ptr [rsp + 0x28]
	cmp	qword ptr [rdx + 8], 0
	jle	.label_2676
	xor	ebx, ebx
	nop	dword ptr [rax + rax]
.label_2653:
	mov	rax, qword ptr [rsp + 0x20]
	mov	rax, qword ptr [rax + 0x38]
	mov	rcx, qword ptr [rdx + 0x10]
	mov	rcx, qword ptr [rcx + rbx*8]
	lea	rcx, [rcx + rcx*2]
	lea	rsi, [rax + rcx*8]
	mov	rdi, r13
	mov	rbp, rdx
	call	re_node_set_merge
	mov	dword ptr [rsp + 0x50], eax
	test	eax, eax
	jne	.label_2650
	inc	rbx
	cmp	rbx, qword ptr [rbp + 8]
	mov	rdx, rbp
	jl	.label_2653
.label_2676:
	mov	rdi, rdx
	mov	rsi, qword ptr [rsp + 0x40]
	mov	rdx, r13
	call	re_node_set_add_intersect
	mov	r12d, eax
	mov	dword ptr [rsp + 0xc], r12d
	test	r12d, r12d
	mov	r9, qword ptr [rsp + 0x10]
	jne	.label_2657
	mov	r12, qword ptr [rsp + 0x38]
	mov	rax, qword ptr [r12 + 0x28]
	test	rax, rax
	mov	r10, qword ptr [rsp + 0x28]
	mov	r11, qword ptr [rsp + 0x20]
	je	.label_2665
	mov	qword ptr [rsp + 0x48], r15
	jle	.label_2671
	mov	rax, qword ptr [rsp + 0x18]
	mov	rax, qword ptr [rax + 0xd8]
	mov	qword ptr [rsp + 0x30], rax
	xor	r13d, r13d
	nop	
.label_2647:
	mov	rax, qword ptr [r12 + 0x30]
	mov	rax, qword ptr [rax + r13*8]
	lea	rax, [rax + rax*4]
	mov	rcx, qword ptr [rsp + 0x30]
	cmp	qword ptr [rcx + rax*8 + 0x10], r9
	jge	.label_2638
	mov	rcx, qword ptr [rsp + 0x30]
	cmp	qword ptr [rcx + rax*8 + 8], r9
	jl	.label_2638
	mov	rdx, qword ptr [rsp + 0x30]
	mov	rcx, qword ptr [rdx + rax*8]
	mov	rbp, qword ptr [r11]
	shl	rcx, 4
	mov	r14, qword ptr [rbp + rcx]
	cmp	qword ptr [rdx + rax*8 + 0x18], r9
	mov	rax, qword ptr [r10 + 8]
	jne	.label_2686
	test	rax, rax
	jle	.label_2638
	mov	rdx, qword ptr [r10 + 0x10]
	mov	r15, -1
	mov	rsi, -1
	nop	dword ptr [rax]
.label_2659:
	mov	rbx, qword ptr [rdx]
	mov	rdi, rbx
	shl	rdi, 4
	movzx	ecx, byte ptr [rbp + rdi + 8]
	cmp	cl, 9
	je	.label_2689
	cmp	cl, 8
	jne	.label_2651
	cmp	r14, qword ptr [rbp + rdi]
	cmove	rsi, rbx
	jmp	.label_2651
	nop	word ptr cs:[rax + rax]
.label_2689:
	cmp	r14, qword ptr [rbp + rdi]
	cmove	r15, rbx
.label_2651:
	add	rdx, 8
	dec	rax
	jne	.label_2659
	test	rsi, rsi
	js	.label_2662
	mov	rdi, r11
	mov	rdx, r10
	mov	rcx, qword ptr [rsp + 0x40]
	call	sub_epsilon_src_nodes
	mov	r11, qword ptr [rsp + 0x20]
	mov	r10, qword ptr [rsp + 0x28]
	mov	r9, qword ptr [rsp + 0x10]
	mov	r12d, eax
	test	r12d, r12d
	jne	.label_2650
.label_2662:
	test	r15, r15
	mov	r12, qword ptr [rsp + 0x38]
	js	.label_2638
	mov	r8, qword ptr [r10 + 8]
	test	r8, r8
	jle	.label_2638
	xor	r14d, r14d
.label_2660:
	mov	rcx, qword ptr [r10 + 0x10]
	mov	rsi, qword ptr [rcx + r14*8]
	mov	rdi, qword ptr [r11 + 0x38]
	lea	rcx, [rsi + rsi*2]
	mov	rdx, qword ptr [rdi + rcx*8 + 8]
	test	rdx, rdx
	jle	.label_2654
	dec	rdx
	mov	rdi, qword ptr [rdi + rcx*8 + 0x10]
	mov	ebx, 0
	je	.label_2682
	xor	ebx, ebx
	nop	dword ptr [rax + rax]
.label_2687:
	lea	rbp, [rbx + rdx]
	shr	rbp, 1
	cmp	qword ptr [rdi + rbp*8], r15
	lea	rax, [rbp + 1]
	cmovl	rbx, rax
	cmovge	rdx, rbp
	cmp	rbx, rdx
	jb	.label_2687
.label_2682:
	cmp	rbx, -1
	je	.label_2654
	cmp	qword ptr [rdi + rbx*8], r15
	je	.label_2639
.label_2654:
	mov	rdi, qword ptr [r11 + 0x30]
	mov	rdx, qword ptr [rdi + rcx*8 + 8]
	test	rdx, rdx
	jle	.label_2641
	dec	rdx
	mov	rcx, qword ptr [rdi + rcx*8 + 0x10]
	mov	edi, 0
	je	.label_2645
	xor	edi, edi
	nop	dword ptr [rax + rax]
.label_2649:
	lea	rax, [rdi + rdx]
	shr	rax, 1
	cmp	qword ptr [rcx + rax*8], r15
	lea	rbp, [rax + 1]
	cmovl	rdi, rbp
	cmovge	rdx, rax
	cmp	rdi, rdx
	jb	.label_2649
.label_2645:
	cmp	rdi, -1
	je	.label_2641
	cmp	qword ptr [rcx + rdi*8], r15
	je	.label_2639
.label_2641:
	mov	rdi, r11
	mov	rdx, r10
	mov	rcx, qword ptr [rsp + 0x40]
	call	sub_epsilon_src_nodes
	mov	r11, qword ptr [rsp + 0x20]
	mov	r10, qword ptr [rsp + 0x28]
	mov	r9, qword ptr [rsp + 0x10]
	mov	r12d, eax
	test	r12d, r12d
	jne	.label_2650
	dec	r14
	mov	r8, qword ptr [r10 + 8]
	mov	r12, qword ptr [rsp + 0x38]
.label_2639:
	inc	r14
	cmp	r14, r8
	jl	.label_2660
	jmp	.label_2638
.label_2686:
	test	rax, rax
	jle	.label_2638
	xor	ebx, ebx
	jmp	.label_2674
	nop	dword ptr [rax]
.label_2661:
	mov	rbp, qword ptr [r11]
.label_2674:
	mov	rcx, qword ptr [r10 + 0x10]
	mov	rsi, qword ptr [rcx + rbx*8]
	mov	rdx, rsi
	shl	rdx, 4
	mov	ecx, dword ptr [rbp + rdx + 8]
	mov	edi, 0xfe
	and	ecx, edi
	or	ecx, 1
	cmp	ecx, 9
	jne	.label_2678
	cmp	r14, qword ptr [rbp + rdx]
	jne	.label_2678
	mov	rdi, r11
	mov	rdx, r10
	mov	rcx, qword ptr [rsp + 0x40]
	call	sub_epsilon_src_nodes
	mov	r11, qword ptr [rsp + 0x20]
	mov	r10, qword ptr [rsp + 0x28]
	mov	r9, qword ptr [rsp + 0x10]
	mov	r12d, eax
	test	r12d, r12d
	jne	.label_2650
	mov	rax, qword ptr [r10 + 8]
	mov	r12, qword ptr [rsp + 0x38]
.label_2678:
	inc	rbx
	cmp	rbx, rax
	jl	.label_2661
	nop	dword ptr [rax + rax]
.label_2638:
	inc	r13
	cmp	r13, qword ptr [r12 + 0x28]
	jl	.label_2647
.label_2671:
	mov	dword ptr [rsp + 0xc], 0
	mov	r15, qword ptr [rsp + 0x48]
.label_2665:
	lea	rdi, [rsp + 0xc]
	mov	rsi, r11
	mov	rdx, r10
	call	re_acquire_state
	mov	rcx, qword ptr [rsp + 0x10]
	mov	rdx, qword ptr [r12]
	mov	qword ptr [rdx + rcx*8], rax
	mov	r12d, dword ptr [rsp + 0xc]
	test	r12d, r12d
	je	.label_2656
	jmp	.label_2657
.label_2643:
	mov	rax, qword ptr [r12]
	mov	qword ptr [rax + rcx*8], 0
.label_2656:
	test	r15, r15
	je	.label_2667
	mov	rax, qword ptr [rsp + 0x18]
	mov	rax, qword ptr [rax + 0xb8]
	mov	rax, qword ptr [rax + rcx*8]
	test	byte ptr [rax + 0x68], 0x40
	je	.label_2667
	mov	rax, qword ptr [rsp + 0x18]
	mov	r10, qword ptr [rax + 0x98]
	mov	rax, qword ptr [rax + 0xc8]
	xor	r15d, r15d
	test	rax, rax
	jle	.label_2673
	mov	rdx, qword ptr [rsp + 0x18]
	mov	rbp, qword ptr [rdx + 0xd8]
	xor	r15d, r15d
	mov	rdx, rax
	nop	word ptr cs:[rax + rax]
.label_2683:
	lea	rsi, [rdx + r15]
	mov	rdi, rsi
	shr	rdi, 0x3f
	add	rdi, rsi
	sar	rdi, 1
	lea	rsi, [rdi + rdi*4]
	cmp	qword ptr [rbp + rsi*8 + 8], rcx
	cmovge	rdx, rdi
	lea	rsi, [rdi + 1]
	cmovl	r15, rsi
	cmp	r15, rdx
	jl	.label_2683
.label_2673:
	cmp	r15, rax
	mov	rdx, qword ptr [rsp + 0x38]
	jge	.label_2640
	cmp	r15, -1
	je	.label_2640
	mov	rax, qword ptr [rsp + 0x18]
	mov	rax, qword ptr [rax + 0xd8]
	lea	rsi, [r15 + r15*4]
	mov	qword ptr [rsp + 0x48], rsi
	cmp	qword ptr [rax + rsi*8 + 8], rcx
	jne	.label_2640
	mov	qword ptr [rsp + 0x50], 0
	mov	rax, qword ptr [rsp + 0x40]
	cmp	qword ptr [rax + 8], 0
	jle	.label_2640
	lea	rax, [rdx + 0x20]
	mov	qword ptr [rsp + 0x28], rax
	lea	rax, [rcx + 1]
	mov	qword ptr [rsp + 0x90], rax
	xor	eax, eax
	mov	qword ptr [rsp + 0x20], rax
	shl	qword ptr [rsp + 0x48], 3
	mov	qword ptr [rsp + 0x30], r10
	nop	word ptr cs:[rax + rax]
.label_2669:
	mov	rax, qword ptr [rsp + 0x40]
	mov	rax, qword ptr [rax + 0x10]
	mov	rdx, qword ptr [rsp + 0x20]
	mov	r14, qword ptr [rax + rdx*8]
	mov	rax, qword ptr [r10]
	mov	rdx, r14
	shl	rdx, 4
	movzx	eax, byte ptr [rax + rdx + 8]
	mov	r12, qword ptr [rsp + 0x38]
	cmp	r14, qword ptr [r12 + 0x10]
	jne	.label_2668
	cmp	eax, 4
	jne	.label_2677
	cmp	qword ptr [r12 + 0x18], rcx
	jne	.label_2679
	jmp	.label_2677
	nop	word ptr cs:[rax + rax]
.label_2668:
	cmp	eax, 4
	jne	.label_2677
.label_2679:
	mov	rax, qword ptr [rsp + 0x18]
	mov	rbx, qword ptr [rax + 0xd8]
	add	rbx, qword ptr [rsp + 0x48]
	mov	r13, r15
	nop	dword ptr [rax]
.label_2666:
	cmp	qword ptr [rbx], r14
	jne	.label_2648
	mov	rax, qword ptr [rbx + 0x18]
	mov	rdx, qword ptr [rbx + 0x10]
	mov	r9, rax
	sub	r9, rdx
	add	r9, rcx
	cmp	rax, rdx
	je	.label_2691
	lea	rsi, [r14*8]
	add	rsi, qword ptr [r10 + 0x18]
	jmp	.label_2642
.label_2691:
	mov	rax, qword ptr [r10 + 0x28]
	lea	rdx, [r14 + r14*2]
	mov	rsi, qword ptr [rax + rdx*8 + 0x10]
.label_2642:
	cmp	r9, qword ptr [r12 + 0x18]
	jg	.label_2648
	mov	rax, qword ptr [r12]
	mov	rdx, qword ptr [rax + r9*8]
	test	rdx, rdx
	je	.label_2648
	mov	rax, qword ptr [rdx + 0x10]
	test	rax, rax
	jle	.label_2648
	mov	r8, qword ptr [rsi]
	dec	rax
	mov	rbp, qword ptr [rdx + 0x18]
	mov	edx, 0
	je	.label_2658
	xor	edx, edx
	nop	word ptr cs:[rax + rax]
.label_2664:
	lea	rsi, [rdx + rax]
	shr	rsi, 1
	cmp	qword ptr [rbp + rsi*8], r8
	lea	rdi, [rsi + 1]
	cmovl	rdx, rdi
	cmovge	rax, rsi
	cmp	rdx, rax
	jb	.label_2664
.label_2658:
	cmp	rdx, -1
	je	.label_2648
	cmp	qword ptr [rbp + rdx*8], r8
	jne	.label_2648
	mov	rdi, qword ptr [rsp + 0x18]
	mov	rsi, qword ptr [rsp + 0x28]
	mov	rdx, r14
	call	check_dst_limits
	mov	r10, qword ptr [rsp + 0x30]
	mov	rcx, qword ptr [rsp + 0x10]
	test	al, al
	jne	.label_2648
	cmp	qword ptr [rsp + 0x50], 0
	jne	.label_2681
	mov	rax, qword ptr [r12 + 0x30]
	mov	qword ptr [rsp + 0x80], rax
	movups	xmm0, xmmword ptr [r12]
	movups	xmm1, xmmword ptr [r12 + 0x10]
	movups	xmm2, xmmword ptr [r12 + 0x20]
	movaps	xmmword ptr [rsp + 0x70], xmm2
	movaps	xmmword ptr [rsp + 0x60], xmm1
	movaps	xmmword ptr [rsp + 0x50], xmm0
	mov	rbx, qword ptr [r12 + 0x28]
	mov	qword ptr [rsp + 0x78], rbx
	test	rbx, rbx
	jle	.label_2690
	mov	qword ptr [rsp + 0x70], rbx
	shl	rbx, 3
	mov	rdi, rbx
	call	malloc
	mov	qword ptr [rsp + 0x80], rax
	test	rax, rax
	je	.label_2646
	mov	rsi, qword ptr [r12 + 0x30]
	mov	rdi, rax
	mov	rdx, rbx
	call	memcpy
	mov	rcx, qword ptr [rsp + 0x10]
	jmp	.label_2681
.label_2690:
	lea	rax, [rsp + 0x70]
	xorps	xmm0, xmm0
	movups	xmmword ptr [rax], xmm0
	mov	qword ptr [rax + 0x10], 0
.label_2681:
	mov	qword ptr [rsp + 0x60], r14
	mov	qword ptr [rsp + 0x68], rcx
	lea	rdi, [rsp + 0x70]
	mov	rsi, r13
	call	re_node_set_insert
	mov	rcx, qword ptr [rsp + 0x10]
	mov	r12d, 0xc
	test	al, al
	je	.label_2672
	mov	rbp, qword ptr [rsp + 0x50]
	mov	rbx, qword ptr [rbp + rcx*8]
	mov	rdi, qword ptr [rsp + 0x18]
	lea	rsi, [rsp + 0x50]
	call	sift_states_backward
	mov	r10, qword ptr [rsp + 0x30]
	mov	rcx, qword ptr [rsp + 0x10]
	mov	r12d, eax
	test	r12d, r12d
	jne	.label_2672
	mov	rax, qword ptr [rsp + 0x38]
	mov	rsi, qword ptr [rax + 8]
	test	rsi, rsi
	je	.label_2688
	mov	rdi, r10
	mov	rdx, rbp
	mov	rcx, qword ptr [rsp + 0x90]
	call	merge_state_array
	mov	r10, qword ptr [rsp + 0x30]
	mov	rcx, qword ptr [rsp + 0x10]
	mov	r12d, eax
	test	r12d, r12d
	jne	.label_2672
.label_2688:
	mov	qword ptr [rbp + rcx*8], rbx
	mov	rsi, qword ptr [rsp + 0x78]
	test	rsi, rsi
	jle	.label_2652
	mov	rbp, rsi
	dec	rbp
	mov	r8, qword ptr [rsp + 0x80]
	mov	edx, 0
	je	.label_2655
	mov	rdi, rbp
	xor	edx, edx
	nop	word ptr [rax + rax]
.label_2684:
	lea	rbx, [rdx + rdi]
	shr	rbx, 1
	cmp	qword ptr [r8 + rbx*8], r13
	lea	rax, [rbx + 1]
	cmovl	rdx, rax
	cmovge	rdi, rbx
	cmp	rdx, rdi
	jb	.label_2684
.label_2655:
	cmp	qword ptr [r8 + rdx*8], r13
	mov	rdi, -1
	cmove	rdi, rdx
	test	rdi, rdi
	js	.label_2652
	cmp	rsi, rdi
	jle	.label_2652
	mov	qword ptr [rsp + 0x78], rbp
	cmp	rbp, rdi
	jle	.label_2652
	lea	r12, [rdx + 1]
	cmp	rbp, r12
	mov	r11, r12
	cmovge	r11, rbp
	sub	r11, rdx
	cmp	r11, 4
	jb	.label_2670
	mov	rax, r11
	and	rax, 0xfffffffffffffffc
	mov	r9, r11
	and	r9, 0xfffffffffffffffc
	je	.label_2670
	cmp	rbp, r12
	cmovge	r12, rbp
	sub	r12, rdx
	add	r12, -4
	shr	r12, 2
	lea	r10d, [r12 + 1]
	and	r10d, 1
	test	r12, r12
	mov	edi, 0
	je	.label_2663
	lea	rbx, [r8 + rdx*8 + 0x38]
	lea	rsi, [r10 - 1]
	sub	rsi, r12
	xor	edi, edi
	nop	dword ptr [rax]
.label_2680:
	movups	xmm0, xmmword ptr [rbx + rdi*8 - 0x30]
	movups	xmm1, xmmword ptr [rbx + rdi*8 - 0x20]
	movups	xmmword ptr [rbx + rdi*8 - 0x38], xmm0
	movups	xmmword ptr [rbx + rdi*8 - 0x28], xmm1
	movups	xmm0, xmmword ptr [rbx + rdi*8 - 0x10]
	movups	xmm1, xmmword ptr [rbx + rdi*8]
	movups	xmmword ptr [rbx + rdi*8 - 0x18], xmm0
	movups	xmmword ptr [rbx + rdi*8 - 8], xmm1
	add	rdi, 8
	add	rsi, 2
	jne	.label_2680
.label_2663:
	test	r10, r10
	je	.label_2644
	add	rdi, rdx
	movups	xmm0, xmmword ptr [r8 + rdi*8 + 8]
	movups	xmm1, xmmword ptr [r8 + rdi*8 + 0x18]
	movups	xmmword ptr [r8 + rdi*8], xmm0
	movups	xmmword ptr [r8 + rdi*8 + 0x10], xmm1
.label_2644:
	cmp	r11, r9
	mov	rcx, qword ptr [rsp + 0x10]
	mov	r10, qword ptr [rsp + 0x30]
	je	.label_2652
	add	rdx, rax
	nop	word ptr cs:[rax + rax]
.label_2670:
	mov	rax, qword ptr [r8 + rdx*8 + 8]
	mov	qword ptr [r8 + rdx*8], rax
	inc	rdx
	cmp	rdx, rbp
	jl	.label_2670
.label_2652:
	lea	rbx, [r13 + r13*4]
	shl	rbx, 3
	mov	rax, qword ptr [rsp + 0x18]
	add	rbx, qword ptr [rax + 0xd8]
	mov	r12, qword ptr [rsp + 0x38]
	nop	dword ptr [rax + rax]
.label_2648:
	inc	r13
	cmp	byte ptr [rbx + 0x20], 0
	lea	rbx, [rbx + 0x28]
	jne	.label_2666
.label_2677:
	mov	rax, qword ptr [rsp + 0x20]
	mov	rsi, rax
	inc	rsi
	xor	r12d, r12d
	mov	rax, qword ptr [rsp + 0x40]
	mov	rdx, rsi
	mov	qword ptr [rsp + 0x20], rdx
	cmp	rsi, qword ptr [rax + 8]
	jl	.label_2669
.label_2672:
	cmp	qword ptr [rsp + 0x50], 0
	je	.label_2675
	mov	rdi, qword ptr [rsp + 0x80]
	call	free
.label_2675:
	mov	dword ptr [rsp + 0xc], r12d
	test	r12d, r12d
	je	.label_2667
	jmp	.label_2657
.label_2640:
	mov	dword ptr [rsp + 0xc], 0
.label_2667:
	xor	r12d, r12d
.label_2657:
	mov	eax, r12d
	add	rsp, 0x98
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_2650:
	mov	dword ptr [rsp + 0xc], r12d
	jmp	.label_2657
.label_2646:
	xorps	xmm0, xmm0
	lea	rax, [rsp + 0x70]
	movups	xmmword ptr [rax], xmm0
	mov	r12d, 0xc
	jmp	.label_2672
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x418c10

	.globl read_file
	.type read_file, @function
read_file:
	push	rbp
	push	r15
	push	r14
	push	rbx
	push	rax
	mov	r14, rsi
	mov	esi, OFFSET FLAT:label_2692
	call	fopen
	mov	rbx, rax
	xor	r15d, r15d
	test	rbx, rbx
	je	.label_2693
	mov	rdi, rbx
	mov	rsi, r14
	call	fread_file
	mov	r15, rax
	call	__errno_location
	mov	r14, rax
	mov	ebp, dword ptr [r14]
	mov	rdi, rbx
	call	rpl_fclose
	test	eax, eax
	je	.label_2693
	test	r15, r15
	je	.label_2694
	mov	ebp, dword ptr [r14]
	mov	rdi, r15
	call	free
.label_2694:
	mov	dword ptr [r14], ebp
	xor	r15d, r15d
.label_2693:
	mov	rax, r15
	add	rsp, 8
	pop	rbx
	pop	r14
	pop	r15
	pop	rbp
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x418c80

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
	je	.label_2695
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
.label_2695:
	call	abort
	nop	word ptr cs:[rax + rax]
	mov	ecx, OFFSET FLAT:quote_quoting_options
	jmp	quotearg_n_options
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x418d30

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
	je	.label_2696
	mov	rdi, qword ptr [rax + 0x10]
	call	free
	mov	rdi, qword ptr [rbx + 0x50]
	call	free
.label_2696:
	mov	rdi, qword ptr [rbx + 0x18]
	call	free
	mov	rdi, qword ptr [rbx + 0x60]
	call	free
	mov	rdi, qword ptr [rbx + 0x58]
	call	free
	mov	rdi, rbx
	pop	rbx
	jmp	free
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x418d90

	.globl digest_word_file
	.type digest_word_file, @function
digest_word_file:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x18
	mov	r14, rsi
	lea	rsi, [rsp + 8]
	call	swallow_file_in_memory
	xorps	xmm0, xmm0
	movups	xmmword ptr [r14], xmm0
	mov	qword ptr [r14 + 0x10], 0
	mov	rbx, qword ptr [rsp + 8]
	mov	r13, qword ptr [rsp + 0x10]
	xor	esi, esi
	cmp	rbx, r13
	mov	edi, 0
	jae	.label_2706
	xor	edi, edi
	movabs	r12, 0x555555555555555
	xor	esi, esi
	nop	word ptr cs:[rax + rax]
.label_2701:
	cmp	rbx, r13
	jae	.label_2707
	mov	rbp, rbx
	nop	dword ptr [rax + rax]
.label_2700:
	cmp	byte ptr [rbp], 0xa
	je	.label_2697
	inc	rbp
	cmp	rbp, r13
	jb	.label_2700
.label_2697:
	mov	r15, rbp
	sub	r15, rbx
	jbe	.label_2698
	cmp	rsi, qword ptr [r14 + 8]
	jne	.label_2702
	test	rdi, rdi
	je	.label_2703
	cmp	rsi, r12
	jae	.label_2704
	mov	rax, rsi
	shr	rax, 1
	lea	rsi, [rsi + rax + 1]
	jmp	.label_2705
	nop	word ptr [rax + rax]
.label_2707:
	mov	rbp, rbx
	jmp	.label_2698
.label_2703:
	test	rsi, rsi
	mov	eax, 8
	cmove	rsi, rax
	mov	rax, rsi
	shr	rax, 0x3b
	jne	.label_2699
.label_2705:
	mov	qword ptr [r14 + 8], rsi
	shl	rsi, 4
	call	xrealloc
	mov	rdi, rax
	mov	qword ptr [r14], rdi
	mov	rsi, qword ptr [r14 + 0x10]
.label_2702:
	mov	rax, rsi
	shl	rax, 4
	mov	qword ptr [rdi + rax], rbx
	mov	qword ptr [rdi + rax + 8], r15
	inc	rsi
	mov	qword ptr [r14 + 0x10], rsi
.label_2698:
	lea	rbx, [rbp + 1]
	cmp	rbp, r13
	cmovae	rbx, rbp
	cmp	rbx, r13
	jb	.label_2701
.label_2706:
	mov	edx, 0x10
	mov	ecx, OFFSET FLAT:compare_words
	call	qsort
	add	rsp, 0x18
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_2704:
	call	xalloc_die
.label_2699:
	call	xalloc_die
	nop	word ptr cs:[rax + rax]
.label_594:
	call	xalloc_die
	nop	word ptr cs:[rax + rax]
	push	rbx
	call	str_cd_iconv
	mov	rbx, rax
	test	rbx, rbx
	jne	.label_416
	call	__errno_location
	cmp	dword ptr [rax], 0xc
	je	.label_594
.label_416:
	mov	rax, rbx
	pop	rbx
	ret	
	.section	.text
	.align	32
	#Procedure 0x418f00

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
	mov	rbx, rdx
	mov	r12, rsi
	mov	rbp, rdi
	test	r12, r12
	je	.label_2708
	mov	r13, qword ptr [r12 + 8]
	test	rbx, rbx
	je	.label_2717
	test	r13, r13
	jle	.label_2717
	mov	rdi, qword ptr [rbx + 8]
	test	rdi, rdi
	jle	.label_2717
	add	rdi, r13
	mov	qword ptr [rbp], rdi
	shl	rdi, 3
	call	malloc
	mov	qword ptr [rsp], rbp
	mov	qword ptr [rbp + 0x10], rax
	test	rax, rax
	mov	ecx, 0xc
	je	.label_2714
	xor	edi, edi
	xor	esi, esi
	xor	ebp, ebp
.label_2719:
	mov	r15, rdi
	mov	r14, rsi
	nop	word ptr cs:[rax + rax]
.label_2716:
	cmp	r14, qword ptr [rbx + 8]
	jge	.label_2709
	mov	rcx, qword ptr [r12 + 0x10]
	mov	rdx, qword ptr [rcx + rbp*8]
	mov	rcx, qword ptr [rbx + 0x10]
	mov	rcx, qword ptr [rcx + r14*8]
	cmp	rdx, rcx
	jle	.label_2711
	inc	r14
	mov	qword ptr [rax + r15*8], rcx
	inc	r15
	mov	r13, qword ptr [r12 + 8]
	cmp	rbp, r13
	jl	.label_2716
	jmp	.label_2709
.label_2711:
	mov	rdi, rbx
	sete	bl
	movzx	esi, bl
	mov	rbx, rdi
	add	rsi, r14
	inc	rbp
	lea	rdi, [r15 + 1]
	mov	qword ptr [rax + r15*8], rdx
	mov	r13, qword ptr [r12 + 8]
	cmp	rbp, r13
	jl	.label_2719
	xor	esi, esi
	cmp	rdx, rcx
	sete	sil
	inc	r15
	add	r14, rsi
.label_2709:
	sub	r13, rbp
	jle	.label_2718
	lea	rdi, [rax + r15*8]
	mov	rax, qword ptr [r12 + 0x10]
	lea	rsi, [rax + rbp*8]
	shl	r13, 3
	mov	rdx, r13
	call	memcpy
	sub	r15, rbp
	add	r15, qword ptr [r12 + 8]
	jmp	.label_2712
.label_2717:
	test	r13, r13
	jle	.label_2708
	mov	qword ptr [rbp + 8], r13
	mov	r15, qword ptr [r12 + 8]
	test	r15, r15
	jle	.label_2710
	mov	qword ptr [rbp], r13
	shl	r13, 3
	mov	rdi, r13
	call	malloc
	mov	qword ptr [rbp + 0x10], rax
	test	rax, rax
	je	.label_2713
	mov	rsi, qword ptr [r12 + 0x10]
	shl	r15, 3
	mov	rdi, rax
	mov	rdx, r15
	call	memcpy
	jmp	.label_2715
.label_2708:
	test	rbx, rbx
	je	.label_2710
	mov	rdi, qword ptr [rbx + 8]
	test	rdi, rdi
	jle	.label_2710
	mov	qword ptr [rbp + 8], rdi
	mov	r14, rbx
	mov	rbx, qword ptr [rbx + 8]
	test	rbx, rbx
	jle	.label_2710
	mov	qword ptr [rbp], rdi
	shl	rdi, 3
	call	malloc
	mov	qword ptr [rbp + 0x10], rax
	test	rax, rax
	je	.label_2713
	mov	rsi, qword ptr [r14 + 0x10]
	shl	rbx, 3
	mov	rdi, rax
	mov	rdx, rbx
	call	memcpy
	jmp	.label_2715
.label_2710:
	xorps	xmm0, xmm0
	movups	xmmword ptr [rbp], xmm0
	mov	qword ptr [rbp + 0x10], 0
	jmp	.label_2715
.label_2718:
	mov	rdx, qword ptr [rbx + 8]
	sub	rdx, r14
	jle	.label_2712
	lea	rdi, [rax + r15*8]
	mov	rax, qword ptr [rbx + 0x10]
	lea	rsi, [rax + r14*8]
	shl	rdx, 3
	call	memcpy
	sub	r15, r14
	add	r15, qword ptr [rbx + 8]
.label_2712:
	mov	rax, qword ptr [rsp]
	mov	qword ptr [rax + 8], r15
.label_2715:
	xor	ecx, ecx
.label_2714:
	mov	eax, ecx
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_2713:
	xorps	xmm0, xmm0
	movups	xmmword ptr [rbp], xmm0
	mov	ecx, 0xc
	jmp	.label_2714
	nop	word ptr cs:[rax + rax]
	mov	byte ptr [rip + ignore_EPIPE],  dil
	ret	
	nop	dword ptr [rax + rax]
	mov	rax, rsi
	mov	rdx, rdi
	xor	edi, edi
	mov	ecx, OFFSET FLAT:default_quoting_options
	mov	rsi, rdx
	mov	rdx, rax
	jmp	quotearg_n_options
	nop	dword ptr [rax + rax]
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
	ja	.label_368
	test	bl, 4
	jne	.label_149
	mov	rdi, r12
	call	strlen
	mov	rdx, rax
	xor	ecx, ecx
	jmp	.label_152
.label_438:
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
.label_173:
	mov	ecx, eax
	xor	eax, eax
	test	ecx, ecx
	setne	al
.label_368:
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	ret	
	nop	word ptr cs:[rax + rax]
.label_149:
	mov	rcx, qword ptr [r15]
	mov	rdx, qword ptr [r15 + 8]
.label_152:
	test	byte ptr [r13 + 0x38], 0x10
	jne	.label_438
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
	jmp	.label_173
	.section	.text
	.align	32
	#Procedure 0x4191e0

	.globl quote
	.type quote, @function
quote:
	mov	rax, rdi
	xor	edi, edi
	mov	rdx, -1
	mov	ecx, OFFSET FLAT:quote_quoting_options
	mov	rsi, rax
	jmp	quotearg_n_options
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x419200

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
	nop	dword ptr [rax + rax]
	sub	rsp, 0x78
	xorps	xmm0, xmm0
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movaps	xmmword ptr [rsp + 0x10], xmm0
	movaps	xmmword ptr [rsp], xmm0
	mov	dword ptr [rsp + 0x30], 0
	cmp	edi, 0xa
	je	.label_179
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
.label_179:
	call	abort
	nop	word ptr cs:[rax + rax]
.label_611:
	call	abort
	nop	dword ptr [rax + rax]
	sub	rsp, 0x78
	xorps	xmm0, xmm0
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movaps	xmmword ptr [rsp + 0x10], xmm0
	movaps	xmmword ptr [rsp], xmm0
	mov	dword ptr [rsp + 0x30], 0
	cmp	edi, 0xa
	je	.label_611
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
	.align	32
	#Procedure 0x419300

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
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x419320

	.globl link_nfa_nodes
	.type link_nfa_nodes, @function
link_nfa_nodes:
	push	r15
	push	r14
	push	r12
	push	rbx
	push	rax
	mov	rcx, qword ptr [rsi + 0x38]
	mov	edx, dword ptr [rsi + 0x30]
	mov	eax, edx
	add	al, 0xfe
	movzx	ebx, al
	cmp	bl, 0xe
	ja	.label_2720
	xor	eax, eax
	jmp	qword ptr [(rbx * 8) + label_2721]
.label_3088:
	mov	r14, qword ptr [rdi + 0x28]
	lea	rbx, [rcx + rcx*2]
	mov	rax, qword ptr [rsi + 0x20]
	mov	r15, qword ptr [rax + 0x38]
	movaps	xmm0, xmmword ptr [rip + label_211]
	movups	xmmword ptr [r14 + rbx*8], xmm0
	mov	edi, 8
	call	malloc
	mov	qword ptr [r14 + rbx*8 + 0x10], rax
	test	rax, rax
	je	.label_217
	mov	qword ptr [rax], r15
	jmp	.label_221
	.section	.text
	.align	32
	#Procedure 0x419384

	.globl sub_419384
	.type sub_419384, @function
sub_419384:
	or	byte ptr [rdi + 0xb0], 1
	mov	rax, qword ptr [rsi + 8]
	mov	rdx, qword ptr [rsi + 0x10]
	add	rsi, 0x20
	test	rax, rax
	lea	rax, [rax + 0x18]
	cmove	rax, rsi
	mov	rax, qword ptr [rax]
	mov	r14, qword ptr [rax + 0x38]
	test	rdx, rdx
	lea	rax, [rdx + 0x18]
	cmove	rax, rsi
	test	r14, r14
	js	.label_2723
	mov	rax, qword ptr [rax]
	mov	r15, qword ptr [rax + 0x38]
	test	r15, r15
	js	.label_2727
	mov	r12, qword ptr [rdi + 0x28]
	lea	rbx, [rcx + rcx*2]
	mov	qword ptr [r12 + rbx*8], 2
	mov	edi, 0x10
	call	malloc
	mov	rcx, rax
	mov	qword ptr [r12 + rbx*8 + 0x10], rcx
	mov	eax, 0xc
	test	rcx, rcx
	je	.label_266
	lea	rax, [r12 + rbx*8 + 8]
	cmp	r14, r15
	jne	.label_2726
	mov	qword ptr [rax], 1
	mov	qword ptr [rcx], r14
	jmp	.label_221
.label_3086:
	cmp	qword ptr [rsi + 0x20], 0
	mov	eax, 0
	je	.label_266
	mov	edi, OFFSET FLAT:label_241
	mov	esi, OFFSET FLAT:label_242
	mov	edx, 0x59f
	mov	ecx, OFFSET FLAT:label_243
	call	__assert_fail
.label_3087:
	mov	rax, qword ptr [rsi + 0x20]
	mov	rbx, qword ptr [rax + 0x38]
	mov	rax, qword ptr [rdi + 0x18]
	mov	qword ptr [rax + rcx*8], rbx
	cmp	byte ptr [rsi + 0x30], 4
	jne	.label_221
	mov	r14, qword ptr [rdi + 0x28]
	lea	r15, [rcx + rcx*2]
	movaps	xmm0, xmmword ptr [rip + label_211]
	movups	xmmword ptr [r14 + r15*8], xmm0
	mov	edi, 8
	call	malloc
	mov	qword ptr [r14 + r15*8 + 0x10], rax
	test	rax, rax
	je	.label_254
	mov	qword ptr [rax], rbx
	jmp	.label_221
.label_2720:
	test	dl, 8
	jne	.label_257
	mov	rax, qword ptr [rsi + 0x20]
	mov	rax, qword ptr [rax + 0x38]
	mov	rdx, qword ptr [rdi + 0x18]
	mov	qword ptr [rdx + rcx*8], rax
	jmp	.label_221
.label_2726:
	mov	qword ptr [rax], 2
	jge	.label_2722
	mov	qword ptr [rcx], r14
	mov	qword ptr [rcx + 8], r15
	jmp	.label_221
.label_2722:
	mov	qword ptr [rcx], r15
	mov	qword ptr [rcx + 8], r14
.label_221:
	xor	eax, eax
.label_266:
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	ret	
.label_217:
	lea	rax, [r14 + rbx*8]
.label_539:
	xorps	xmm0, xmm0
	movups	xmmword ptr [rax], xmm0
	mov	eax, 0xc
	jmp	.label_266
.label_254:
	lea	rax, [r14 + r15*8]
	jmp	.label_539
.label_2723:
	mov	edi, OFFSET FLAT:label_2725
	mov	esi, OFFSET FLAT:label_242
	mov	edx, 0x5af
	mov	ecx, OFFSET FLAT:label_243
	call	__assert_fail
.label_2727:
	mov	edi, OFFSET FLAT:label_2724
	mov	esi, OFFSET FLAT:label_242
	mov	edx, 0x5b0
	mov	ecx, OFFSET FLAT:label_243
	call	__assert_fail
.label_257:
	mov	edi, OFFSET FLAT:label_275
	mov	esi, OFFSET FLAT:label_242
	mov	edx, 0x5c2
	mov	ecx, OFFSET FLAT:label_243
	call	__assert_fail
	.section	.text
	.align	32
	#Procedure 0x41952a
	.globl sub_41952a
	.type sub_41952a, @function
sub_41952a:

	nop	word ptr [rax + rax]
.label_2734:
	test	rcx, rcx
	jne	.label_2731
	mov	eax, 0x80
	xor	edx, edx
	div	rbx
	xor	ecx, ecx
	cmp	rbx, 0x80
	seta	cl
	add	rcx, rax
.label_2731:
	movabs	rax, 0x7fffffffffffffff
	xor	edx, edx
	div	rbx
	cmp	rax, rcx
	jb	.label_2732
.label_2733:
	mov	qword ptr [rsi], rcx
	imul	rbx, rcx
	test	rdi, rdi
	je	.label_2728
	test	rbx, rbx
	jne	.label_2728
	call	free
	xor	eax, eax
	pop	rbx
	ret	
	.section	.text
	.align	32
	#Procedure 0x41957c
	.globl x2nrealloc
	.type x2nrealloc, @function
x2nrealloc:

	push	rbx
	mov	rbx, rdx
	mov	rcx, qword ptr [rsi]
	test	rdi, rdi
	je	.label_2734
	movabs	rax, 0x5555555555555554
	xor	edx, edx
	div	rbx
	cmp	rax, rcx
	jbe	.label_2730
	mov	rax, rcx
	shr	rax, 1
	lea	rcx, [rcx + rax + 1]
	jmp	.label_2733
.label_2730:
	call	xalloc_die
.label_2732:
	call	xalloc_die
	.section	.text
	.align	32
	#Procedure 0x4195b3
	.globl sub_4195b3
	.type sub_4195b3, @function
sub_4195b3:

	nop	word ptr [rax + rax]
.label_2728:
	mov	rsi, rbx
	call	realloc
	test	rbx, rbx
	je	.label_2729
	test	rax, rax
	je	.label_2730
.label_2729:
	pop	rbx
	ret	
	.section	.text
	.align	32
	#Procedure 0x4195d0

	.globl mbiter_multi_next
	.type mbiter_multi_next, @function
mbiter_multi_next:
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	mov	rbx, rdi
	cmp	byte ptr [rbx + 0x14], 0
	jne	.label_2742
	cmp	byte ptr [rbx + 8], 0
	je	.label_2743
	lea	r13, [rbx + 0x18]
	mov	r15, qword ptr [rbx + 0x18]
	lea	r14, [rbx + 0xc]
.label_2747:
	lea	r12, [rbx + 0x2c]
	mov	rdx, qword ptr [rbx]
	sub	rdx, r15
	mov	rdi, r12
	mov	rsi, r15
	mov	rcx, r14
	call	rpl_mbrtowc
	mov	qword ptr [rbx + 0x20], rax
	cmp	rax, -2
	je	.label_2739
	test	rax, rax
	je	.label_2740
	cmp	rax, -1
	jne	.label_2741
	mov	qword ptr [rbx + 0x20], 1
	mov	byte ptr [rbx + 0x28], 0
	jmp	.label_2738
.label_2743:
	mov	r15, qword ptr [rbx + 0x18]
	movzx	eax, byte ptr [r15]
	mov	rcx, rax
	shr	rcx, 5
	mov	ecx, dword ptr [(rcx * 4) + is_basic_table]
	bt	ecx, eax
	jae	.label_2744
	mov	qword ptr [rbx + 0x20], 1
	movsx	eax, byte ptr [r15]
	mov	dword ptr [rbx + 0x2c], eax
	mov	byte ptr [rbx + 0x28], 1
	jmp	.label_2738
.label_2739:
	mov	rax, qword ptr [rbx]
	sub	rax, qword ptr [r13]
	mov	qword ptr [rbx + 0x20], rax
	mov	byte ptr [rbx + 0x28], 0
	jmp	.label_2738
.label_2740:
	mov	qword ptr [rbx + 0x20], 1
	mov	rax, qword ptr [rbx + 0x18]
	cmp	byte ptr [rax], 0
	jne	.label_2745
	cmp	dword ptr [r12], 0
	jne	.label_2735
.label_2741:
	mov	byte ptr [rbx + 0x28], 1
	mov	rdi, r14
	call	mbsinit
	test	eax, eax
	je	.label_2738
	mov	byte ptr [rbx + 8], 0
.label_2738:
	mov	byte ptr [rbx + 0x14], 1
.label_2742:
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	ret	
.label_2744:
	lea	r14, [rbx + 0xc]
	mov	rdi, r14
	call	mbsinit
	test	eax, eax
	je	.label_2746
	mov	byte ptr [rbx + 8], 1
	lea	r13, [rbx + 0x18]
	jmp	.label_2747
.label_2745:
	mov	edi, OFFSET FLAT:label_1702
	mov	esi, OFFSET FLAT:label_2736
	mov	edx, 0xa9
	mov	ecx, OFFSET FLAT:label_2737
	call	__assert_fail
.label_2735:
	mov	edi, OFFSET FLAT:label_1698
	mov	esi, OFFSET FLAT:label_2736
	mov	edx, 0xaa
	mov	ecx, OFFSET FLAT:label_2737
	call	__assert_fail
.label_2746:
	mov	edi, OFFSET FLAT:label_1695
	mov	esi, OFFSET FLAT:label_2736
	mov	edx, 0x8e
	mov	ecx, OFFSET FLAT:label_2737
	call	__assert_fail
	.section	.text
	.align	32
	#Procedure 0x419716
	.globl sub_419716
	.type sub_419716, @function
sub_419716:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x419720

	.globl re_compile_fastmap_iter
	.type re_compile_fastmap_iter, @function
re_compile_fastmap_iter:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x138
	mov	r15, rdx
	mov	r13, rdi
	mov	rcx, qword ptr [r13]
	cmp	dword ptr [rcx + 0xb4], 1
	jne	.label_2748
	mov	r14b, byte ptr [r13 + 0x1a]
	and	r14b, 0x40
	shr	r14b, 6
	jmp	.label_2749
.label_2748:
	xor	r14d, r14d
.label_2749:
	cmp	qword ptr [rsi + 0x10], 0
	jle	.label_1511
	xor	edx, edx
	mov	qword ptr [rsp + 0x20], rsi
	mov	qword ptr [rsp], rcx
	nop	dword ptr [rax + rax]
.label_1456:
	mov	rax, qword ptr [rsi + 0x18]
	mov	qword ptr [rsp + 0x28], rdx
	mov	rbp, qword ptr [rax + rdx*8]
	mov	rcx, qword ptr [rcx]
	mov	r12, rbp
	shl	r12, 4
	movzx	eax, byte ptr [rcx + r12 + 8]
	mov	edx, eax
	dec	dl
	movzx	edx, dl
	cmp	dl, 6
	ja	.label_1338
	lea	rsi, [rcx + r12]
	jmp	qword ptr [(rdx * 8) + label_1600]
.label_2878:
	movzx	ebx, byte ptr [rsi]
	mov	byte ptr [r15 + rbx], 1
	test	r14b, r14b
	je	.label_1602
	mov	eax, ebx
	sub	eax, -0x80
	cmp	eax, 0x17f
	ja	.label_1604
	call	__ctype_tolower_loc
	mov	rax, qword ptr [rax]
	mov	ebx, dword ptr [rax + rbx*4]
.label_1604:
	movsxd	rax, ebx
	mov	byte ptr [r15 + rax], 1
.label_1602:
	test	byte ptr [r13 + 0x1a], 0x40
	je	.label_1338
	mov	rax, qword ptr [rsp]
	cmp	dword ptr [rax + 0xb4], 2
	jl	.label_1338
	mov	qword ptr [rsp + 0x18], r13
	mov	rdx, qword ptr [rsp]
	mov	rax, qword ptr [rdx]
	mov	al, byte ptr [rax + r12]
	mov	byte ptr [rsp + 0x30], al
	inc	rbp
	cmp	rbp, qword ptr [rdx + 0x10]
	lea	r13, [rsp + 0x31]
	mov	esi, 0x2000ff
	jae	.label_1322
	add	r12, 0x18
	lea	r13, [rsp + 0x31]
.label_1324:
	mov	rax, qword ptr [rdx]
	mov	ecx, dword ptr [rax + r12]
	and	ecx, esi
	cmp	ecx, 0x200001
	jne	.label_1322
	movzx	eax, byte ptr [rax + r12 - 8]
	mov	byte ptr [r13], al
	inc	r13
	inc	rbp
	add	r12, 0x10
	cmp	rbp, qword ptr [rdx + 0x10]
	jb	.label_1324
.label_1322:
	mov	qword ptr [rsp + 8], 0
	lea	rbp, [rsp + 0x30]
	sub	r13, rbp
	lea	rdi, [rsp + 0x14]
	mov	rsi, rbp
	mov	rdx, r13
	lea	rbx, [rsp + 8]
	mov	rcx, rbx
	call	rpl_mbrtowc
	cmp	rax, r13
	jne	.label_1333
	mov	edi, dword ptr [rsp + 0x14]
	call	towlower
	mov	rdi, rbp
	mov	esi, eax
	mov	rdx, rbx
	call	wcrtomb
	cmp	rax, -1
	je	.label_1333
	movzx	eax, byte ptr [rsp + 0x30]
	mov	byte ptr [r15 + rax], 1
.label_1333:
	mov	r13, qword ptr [rsp + 0x18]
	jmp	.label_1338
	.section	.text
	.align	32
	#Procedure 0x4198a9
	.globl sub_4198a9
	.type sub_4198a9, @function
sub_4198a9:

	nop	dword ptr [rax]
.label_2880:
	mov	rax, qword ptr [rcx + r12]
	mov	rbp, qword ptr [rax]
	xor	ebx, ebx
	nop	dword ptr [rax]
.label_1350:
	bt	rbp, rbx
	jae	.label_1343
	mov	byte ptr [r15 + rbx], 1
	test	r14b, r14b
	je	.label_1343
	mov	eax, ebx
	sub	eax, -0x80
	cmp	eax, 0x180
	jae	.label_1346
	call	__ctype_tolower_loc
	mov	rax, qword ptr [rax]
	mov	eax, dword ptr [rax + rbx*4]
	jmp	.label_1349
.label_1346:
	mov	eax, ebx
.label_1349:
	cdqe	
	mov	byte ptr [r15 + rax], 1
.label_1343:
	inc	rbx
	cmp	rbx, 0x40
	jne	.label_1350
	mov	rax, qword ptr [rsp]
	mov	rax, qword ptr [rax]
	mov	rax, qword ptr [rax + r12]
	mov	rbp, qword ptr [rax + 8]
	xor	ebx, ebx
	nop	dword ptr [rax]
.label_1369:
	bt	rbp, rbx
	jae	.label_1357
	mov	byte ptr [r15 + rbx + 0x40], 1
	test	r14b, r14b
	je	.label_1357
	lea	eax, [rbx + 0xc0]
	cmp	eax, 0x180
	jae	.label_1580
	call	__ctype_tolower_loc
	mov	rax, qword ptr [rax]
	mov	eax, dword ptr [rax + rbx*4 + 0x100]
	jmp	.label_1591
.label_1580:
	lea	rax, [rbx + 0x40]
.label_1591:
	cdqe	
	mov	byte ptr [r15 + rax], 1
.label_1357:
	inc	rbx
	cmp	rbx, 0x40
	jne	.label_1369
	mov	rax, qword ptr [rsp]
	mov	rax, qword ptr [rax]
	mov	rax, qword ptr [rax + r12]
	mov	rbp, qword ptr [rax + 0x10]
	xor	ebx, ebx
	nop	word ptr cs:[rax + rax]
.label_1387:
	bt	rbp, rbx
	jae	.label_1378
	mov	byte ptr [r15 + rbx + 0x80], 1
	test	r14b, r14b
	je	.label_1378
	lea	eax, [rbx + 0x100]
	cmp	eax, 0x180
	jae	.label_1381
	call	__ctype_tolower_loc
	mov	rax, qword ptr [rax]
	mov	eax, dword ptr [rax + rbx*4 + 0x200]
	jmp	.label_1382
.label_1381:
	mov	rax, rbx
	sub	rax, -0x80
.label_1382:
	cdqe	
	mov	byte ptr [r15 + rax], 1
.label_1378:
	inc	rbx
	cmp	rbx, 0x40
	jne	.label_1387
	mov	rax, qword ptr [rsp]
	mov	rax, qword ptr [rax]
	mov	rax, qword ptr [rax + r12]
	mov	rbp, qword ptr [rax + 0x18]
	xor	ebx, ebx
	nop	word ptr [rax + rax]
.label_1402:
	bt	rbp, rbx
	jae	.label_1391
	mov	byte ptr [r15 + rbx + 0xc0], 1
	test	r14b, r14b
	je	.label_1391
	lea	eax, [rbx + 0x140]
	cmp	eax, 0x180
	jae	.label_1393
	call	__ctype_tolower_loc
	mov	rax, qword ptr [rax]
	mov	eax, dword ptr [rax + rbx*4 + 0x300]
	jmp	.label_1396
.label_1393:
	lea	rax, [rbx + 0xc0]
.label_1396:
	cdqe	
	mov	byte ptr [r15 + rax], 1
.label_1391:
	inc	rbx
	cmp	rbx, 0x40
	jne	.label_1402
	jmp	.label_1338
	.section	.text
	.align	32
	#Procedure 0x419a1e
	.globl sub_419a1e
	.type sub_419a1e, @function
sub_419a1e:

	nop	
.label_2881:
	mov	r12, qword ptr [rsi]
	mov	rax, qword ptr [rsp]
	cmp	dword ptr [rax + 0xb4], 1
	jle	.label_1405
	cmp	qword ptr [r12 + 0x48], 0
	jne	.label_1409
	test	byte ptr [r12 + 0x20], 1
	jne	.label_1409
	cmp	qword ptr [r12 + 0x40], 0
	je	.label_1405
.label_1409:
	mov	byte ptr [rsp + 8], 0
	lea	rbx, [rsp + 0x30]
	lea	rbp, [rsp + 8]
	nop	word ptr [rax + rax]
.label_1420:
	mov	qword ptr [rsp + 0x30], 0
	xor	edi, edi
	mov	edx, 1
	mov	rsi, rbp
	mov	rcx, rbx
	call	rpl_mbrtowc
	movzx	ecx, byte ptr [rsp + 8]
	cmp	rax, -2
	jne	.label_1594
	mov	byte ptr [r15 + rcx], 1
.label_1594:
	inc	cl
	mov	byte ptr [rsp + 8], cl
	jne	.label_1420
	jmp	.label_1338
.label_1405:
	cmp	qword ptr [r12 + 0x28], 0
	jle	.label_1338
	xor	ebp, ebp
	nop	word ptr cs:[rax + rax]
.label_1454:
	mov	qword ptr [rsp + 8], 0
	mov	rax, qword ptr [r12]
	mov	esi, dword ptr [rax + rbp*4]
	lea	rdi, [rsp + 0x30]
	lea	rdx, [rsp + 8]
	call	wcrtomb
	cmp	rax, -1
	je	.label_1432
	movzx	ebx, byte ptr [rsp + 0x30]
	mov	byte ptr [r15 + rbx], 1
	test	r14b, r14b
	je	.label_1432
	mov	eax, ebx
	sub	eax, -0x80
	cmp	eax, 0x17f
	ja	.label_1437
	call	__ctype_tolower_loc
	mov	rax, qword ptr [rax]
	mov	ebx, dword ptr [rax + rbx*4]
.label_1437:
	movsxd	rax, ebx
	mov	byte ptr [r15 + rax], 1
.label_1432:
	test	byte ptr [r13 + 0x1a], 0x40
	je	.label_1445
	mov	rax, qword ptr [rsp]
	cmp	dword ptr [rax + 0xb4], 2
	jl	.label_1445
	mov	rax, qword ptr [r12]
	mov	edi, dword ptr [rax + rbp*4]
	call	towlower
	lea	rdi, [rsp + 0x30]
	mov	esi, eax
	lea	rdx, [rsp + 8]
	call	wcrtomb
	cmp	rax, -1
	je	.label_1445
	movzx	eax, byte ptr [rsp + 0x30]
	mov	byte ptr [r15 + rax], 1
	nop	word ptr cs:[rax + rax]
.label_1445:
	inc	rbp
	cmp	rbp, qword ptr [r12 + 0x28]
	jl	.label_1454
	nop	
.label_1338:
	mov	rdx, qword ptr [rsp + 0x28]
	inc	rdx
	mov	rsi, qword ptr [rsp + 0x20]
	cmp	rdx, qword ptr [rsi + 0x10]
	mov	rcx, qword ptr [rsp]
	jl	.label_1456
	jmp	.label_1511
.label_2879:
	movaps	xmm0, xmmword ptr [rip + label_1514]
	movups	xmmword ptr [r15 + 0xf0], xmm0
	movups	xmmword ptr [r15 + 0xe0], xmm0
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
	cmp	eax, 2
	jne	.label_1511
	or	byte ptr [r13 + 0x38], 1
.label_1511:
	add	rsp, 0x138
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x419c07
	.globl sub_419c07
	.type sub_419c07, @function
sub_419c07:

	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x419c10

	.globl fread_file
	.type fread_file, @function
fread_file:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x98
	mov	rbx, rsi
	mov	r15, rdi
	call	fileno
	lea	rdx, [rsp + 8]
	mov	edi, 1
	mov	esi, eax
	call	__fxstat
	mov	ebp, 0x2000
	test	eax, eax
	js	.label_2756
	mov	eax, 0xf000
	and	eax, dword ptr [rsp + 0x20]
	mov	ebp, 0x2000
	cmp	eax, 0x8000
	jne	.label_2756
	mov	rdi, r15
	call	ftello
	mov	ebp, 0x2000
	test	rax, rax
	js	.label_2756
	mov	rcx, qword ptr [rsp + 0x38]
	mov	ebp, 0x2000
	sub	rcx, rax
	jle	.label_2756
	cmp	rcx, -1
	je	.label_2758
	inc	rcx
	mov	rbp, rcx
.label_2756:
	mov	rdi, rbp
	call	malloc
	xor	r12d, r12d
	test	rax, rax
	je	.label_2752
	mov	qword ptr [rsp], rbx
	xor	r14d, r14d
	mov	r13, -1
	nop	
.label_2757:
	mov	r12, rax
	mov	rbx, rbp
	sub	rbx, r14
	lea	rdi, [r12 + r14]
	mov	esi, 1
	mov	rdx, rbx
	mov	rcx, r15
	call	fread
	add	r14, rax
	cmp	rax, rbx
	jne	.label_2751
	cmp	rbp, -1
	je	.label_2753
	mov	rbx, rbp
	shr	rbx, 1
	mov	rax, rbx
	not	rax
	add	rbx, rbp
	cmp	rbp, rax
	cmovae	rbx, r13
	mov	rdi, r12
	mov	rsi, rbx
	call	realloc
	test	rax, rax
	mov	rbp, rbx
	jne	.label_2757
	call	__errno_location
	mov	r13, rax
	mov	ebx, dword ptr [r13]
	jmp	.label_2754
.label_2753:
	mov	ebx, 0xc
	call	__errno_location
	mov	r13, rax
.label_2754:
	mov	rdi, r12
	call	free
	mov	dword ptr [r13], ebx
.label_2750:
	xor	r12d, r12d
.label_2752:
	mov	rax, r12
	add	rsp, 0x98
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_2751:
	call	__errno_location
	mov	r13, rax
	mov	ebx, dword ptr [r13]
	mov	rdi, r15
	call	ferror
	test	eax, eax
	jne	.label_2754
	dec	rbp
	cmp	r14, rbp
	jae	.label_2755
	lea	rsi, [r14 + 1]
	mov	rdi, r12
	call	realloc
	test	rax, rax
	cmovne	r12, rax
.label_2755:
	mov	rax, qword ptr [rsp]
	mov	byte ptr [r12 + r14], 0
	mov	qword ptr [rax], r14
	jmp	.label_2752
.label_2758:
	call	__errno_location
	mov	dword ptr [rax], 0xc
	jmp	.label_2750
	.section	.text
	.align	32
	#Procedure 0x419d91
	.globl sub_419d91
	.type sub_419d91, @function
sub_419d91:

	nop	word ptr cs:[rax + rax]
.label_2759:
	movzx	eax, byte ptr [rdi - 1]
	sub	rdi, rax
	jmp	free
	.section	.text
	.align	32
	#Procedure 0x419dac

	.globl freea
	.type freea, @function
freea:
	test	dil, 0xf
	jne	.label_2760
	test	dil, 0x10
	jne	.label_2759
	ret	
.label_2760:
	push	rax
	call	abort
	.section	.text
	.align	32
	#Procedure 0x419dbf
	.globl sub_419dbf
	.type sub_419dbf, @function
sub_419dbf:

	nop	
	.section	.text
	.align	32
	#Procedure 0x419dc0

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
	sub	rsp, 0xa8
	mov	r14, rsi
	mov	qword ptr [rbp - 0x30], rdi
	mov	edi, 0x3800
	call	malloc
	mov	r15, rax
	test	r15, r15
	je	.label_2784
	lea	rax, [r14 + 0x58]
	mov	qword ptr [rbp - 0xc8], rax
	pxor	xmm0, xmm0
	movdqu	xmmword ptr [r14 + 0x58], xmm0
	movdqa	xmmword ptr [rbp - 0x40], xmm0
	movdqa	xmmword ptr [rbp - 0x50], xmm0
	xor	ebx, ebx
	cmp	qword ptr [r14 + 0x10], 0
	jle	.label_2771
	lea	rax, [r15 + 0x1800]
	mov	qword ptr [rbp - 0x88], rax
	xor	r12d, r12d
	mov	qword ptr [rbp - 0x70], r15
	mov	rsi, qword ptr [rbp - 0x30]
	mov	qword ptr [rbp - 0xb0], r14
	nop	dword ptr [rax]
.label_2842:
	mov	rax, qword ptr [r14 + 0x18]
	mov	rax, qword ptr [rax + rbx*8]
	mov	rcx, qword ptr [rsi]
	shl	rax, 4
	lea	rdi, [rcx + rax]
	mov	eax, dword ptr [rcx + rax + 8]
	movzx	ecx, al
	mov	dword ptr [rbp - 0xa0], ecx
	cmp	ecx, 1
	jne	.label_2775
	mov	cl, byte ptr [rdi]
	mov	edx, 1
	shl	rdx, cl
	shr	cl, 6
	movzx	ecx, cl
	or	qword ptr [rbp + rcx*8 - 0x50], rdx
.label_2770:
	mov	ecx, eax
	shr	ecx, 8
	mov	edx, ecx
	and	edx, 0x3ff
	je	.label_2789
	test	cl, 0x20
	je	.label_2853
	mov	rdx, qword ptr [rbp - 0x50]
	test	dh, 4
	pxor	xmm0, xmm0
	movdqa	xmmword ptr [rbp - 0x40], xmm0
	movdqa	xmmword ptr [rbp - 0x50], xmm0
	je	.label_2778
	mov	qword ptr [rbp - 0x50], 0x400
.label_2853:
	test	cl, cl
	js	.label_2811
	test	cl, 4
	je	.label_2795
	mov	edx, eax
	and	edx, 0x4000ff
	cmp	edx, 1
	je	.label_2811
	mov	r9, rbx
	cmp	dword ptr [rsi + 0xb4], 1
	jle	.label_2820
	mov	rdx, qword ptr [rsi + 0x78]
	movdqu	xmm0, xmmword ptr [rsi + 0xb8]
	movdqu	xmm1, xmmword ptr [rdx]
	pcmpeqd	xmm2, xmm2
	pxor	xmm1, xmm2
	por	xmm1, xmm0
	pand	xmm1, xmmword ptr [rbp - 0x50]
	movdqa	xmmword ptr [rbp - 0x50], xmm1
	movq	r8, xmm1
	pshufd	xmm0, xmm1, 0x4e
	movq	r10, xmm0
	movdqu	xmm0, xmmword ptr [rsi + 0xc8]
	movdqu	xmm1, xmmword ptr [rdx + 0x10]
	pxor	xmm1, xmm2
	por	xmm1, xmm0
	pand	xmm1, xmmword ptr [rbp - 0x40]
	movq	rbx, xmm1
	or	rbx, r8
	or	rbx, r10
	movdqa	xmmword ptr [rbp - 0x40], xmm1
	pshufd	xmm0, xmm1, 0x4e
	jmp	.label_2825
	.section	.text
	.align	32
	#Procedure 0x419f54
	.globl sub_419f54
	.type sub_419f54, @function
sub_419f54:

	nop	word ptr cs:[rax + rax]
.label_2775:
	cmp	al, 7
	je	.label_2850
	cmp	al, 5
	je	.label_2852
	cmp	al, 3
	jne	.label_2778
	mov	rcx, qword ptr [rdi]
	movups	xmm0, xmmword ptr [rcx]
	orps	xmm0, xmmword ptr [rbp - 0x50]
	movaps	xmmword ptr [rbp - 0x50], xmm0
	movdqu	xmm0, xmmword ptr [rcx + 0x10]
	por	xmm0, xmmword ptr [rbp - 0x40]
	movdqa	xmmword ptr [rbp - 0x40], xmm0
	jmp	.label_2770
.label_2850:
	pcmpeqd	xmm0, xmm0
	movdqa	xmmword ptr [rbp - 0x50], xmm0
	mov	rcx, qword ptr [rsi + 0xd8]
	mov	rdx, -2
	test	cl, 0x40
	jne	.label_2833
	mov	qword ptr [rbp - 0x50], -0x401
	mov	rdx, -0x402
.label_2833:
	test	cl, cl
	jns	.label_2770
	mov	qword ptr [rbp - 0x50], rdx
	jmp	.label_2770
.label_2852:
	cmp	dword ptr [rsi + 0xb4], 2
	jl	.label_2866
	mov	rcx, qword ptr [rsi + 0x78]
	movdqu	xmm0, xmmword ptr [rcx]
	por	xmm0, xmmword ptr [rbp - 0x50]
	movdqa	xmmword ptr [rbp - 0x50], xmm0
	movdqu	xmm1, xmmword ptr [rcx + 0x10]
	por	xmm1, xmmword ptr [rbp - 0x40]
	movdqa	xmmword ptr [rbp - 0x40], xmm1
	movq	rcx, xmm0
	jmp	.label_2867
.label_2866:
	pcmpeqd	xmm0, xmm0
	movdqa	xmmword ptr [rbp - 0x40], xmm0
	movdqa	xmmword ptr [rbp - 0x50], xmm0
	mov	rcx, -1
.label_2867:
	mov	rdx, qword ptr [rsi + 0xd8]
	test	dl, 0x40
	jne	.label_2765
	and	rcx, 0xfffffffffffffbff
	mov	qword ptr [rbp - 0x50], rcx
.label_2765:
	test	dl, dl
	jns	.label_2770
	and	rcx, 0xfffffffffffffffe
	mov	qword ptr [rbp - 0x50], rcx
	jmp	.label_2770
.label_2820:
	movdqu	xmm0, xmmword ptr [rsi + 0xb8]
	pand	xmm0, xmmword ptr [rbp - 0x50]
	movdqa	xmmword ptr [rbp - 0x50], xmm0
	movq	rdx, xmm0
	pshufd	xmm0, xmm0, 0x4e
	movq	r8, xmm0
	movdqu	xmm0, xmmword ptr [rsi + 0xc8]
	pand	xmm0, xmmword ptr [rbp - 0x40]
	movq	rbx, xmm0
	or	rbx, rdx
	or	rbx, r8
	movdqa	xmmword ptr [rbp - 0x40], xmm0
	pshufd	xmm0, xmm0, 0x4e
.label_2825:
	movq	rdx, xmm0
	or	rdx, rbx
	test	rdx, rdx
	mov	rbx, r9
	je	.label_2778
.label_2795:
	test	cl, 8
	je	.label_2789
	cmp	dword ptr [rbp - 0xa0], 1
	setne	cl
	test	eax, 0x400000
	je	.label_2804
	test	cl, cl
	jne	.label_2804
	nop	word ptr cs:[rax + rax]
.label_2811:
	pxor	xmm0, xmm0
	movdqa	xmmword ptr [rbp - 0x40], xmm0
	movdqa	xmmword ptr [rbp - 0x50], xmm0
	jmp	.label_2778
.label_2804:
	cmp	dword ptr [rsi + 0xb4], 1
	jle	.label_2819
	mov	rax, qword ptr [rsi + 0x78]
	movdqu	xmm0, xmmword ptr [rsi + 0xb8]
	movdqu	xmm1, xmmword ptr [rax]
	pand	xmm1, xmm0
	pandn	xmm1, xmmword ptr [rbp - 0x50]
	movdqa	xmmword ptr [rbp - 0x50], xmm1
	movq	r8, xmm1
	pshufd	xmm0, xmm1, 0x4e
	movq	rdx, xmm0
	movdqu	xmm0, xmmword ptr [rsi + 0xc8]
	movdqu	xmm1, xmmword ptr [rax + 0x10]
	pand	xmm1, xmm0
	pandn	xmm1, xmmword ptr [rbp - 0x40]
	movq	rcx, xmm1
	or	rcx, r8
	or	rcx, rdx
	movdqa	xmmword ptr [rbp - 0x40], xmm1
	pshufd	xmm0, xmm1, 0x4e
	movq	rax, xmm0
	or	rax, rcx
	jmp	.label_2821
.label_2819:
	movdqu	xmm0, xmmword ptr [rsi + 0xb8]
	pandn	xmm0, xmmword ptr [rbp - 0x50]
	movdqa	xmmword ptr [rbp - 0x50], xmm0
	movq	rax, xmm0
	pshufd	xmm0, xmm0, 0x4e
	movq	rcx, xmm0
	movdqu	xmm0, xmmword ptr [rsi + 0xc8]
	pandn	xmm0, xmmword ptr [rbp - 0x40]
	movq	rdx, xmm0
	or	rdx, rax
	or	rdx, rcx
	movdqa	xmmword ptr [rbp - 0x40], xmm0
	pshufd	xmm0, xmm0, 0x4e
	movq	rax, xmm0
	or	rax, rdx
.label_2821:
	test	rax, rax
	je	.label_2778
	nop	word ptr cs:[rax + rax]
.label_2789:
	mov	qword ptr [rbp - 0xa8], rbx
	test	r12, r12
	jle	.label_2861
	mov	qword ptr [rbp - 0x78], r15
	mov	r14, qword ptr [rbp - 0x88]
	xor	r13d, r13d
	mov	qword ptr [rbp - 0x80], rdi
	jmp	.label_2772
.label_2861:
	xor	r13d, r13d
	jmp	.label_2791
.label_2855:
	pxor	xmm0, xmm0
	mov	rax, qword ptr [rbp - 0x90]
	movdqu	xmmword ptr [rax], xmm0
	mov	ebx, 0x1a
	mov	r12, qword ptr [rbp - 0x60]
	mov	rsi, qword ptr [rbp - 0x30]
	mov	rdi, qword ptr [rbp - 0x80]
	mov	r13, qword ptr [rbp - 0x58]
	mov	r15, qword ptr [rbp - 0x70]
	jmp	.label_2763
	.section	.text
	.align	32
	#Procedure 0x41a1f5
	.globl sub_41a1f5
	.type sub_41a1f5, @function
sub_41a1f5:

	nop	word ptr cs:[rax + rax]
.label_2772:
	cmp	dword ptr [rbp - 0xa0], 1
	jne	.label_2761
	movzx	eax, byte ptr [rdi]
	mov	ecx, eax
	shr	cl, 6
	movzx	ecx, cl
	mov	rcx, qword ptr [r14 + rcx*8]
	mov	ebx, 0x13
	bt	rcx, rax
	jae	.label_2763
.label_2761:
	mov	qword ptr [rbp - 0x58], r13
	mov	qword ptr [rbp - 0x60], r12
	mov	rax, qword ptr [rbp - 0x50]
	mov	rcx, qword ptr [rbp - 0x48]
	mov	r9, qword ptr [r14]
	mov	r13, qword ptr [r14 + 8]
	mov	rdx, r9
	and	rdx, rax
	mov	rsi, r13
	and	rsi, rcx
	mov	qword ptr [rbp - 0x90], rsi
	mov	rdi, rsi
	mov	qword ptr [rbp - 0x98], rdx
	or	rdi, rdx
	mov	r11, qword ptr [rbp - 0x40]
	mov	r12, qword ptr [r14 + 0x10]
	mov	r8, r12
	and	r8, r11
	or	rdi, r8
	mov	rdx, qword ptr [rbp - 0x38]
	mov	rsi, qword ptr [r14 + 0x18]
	mov	r10, rsi
	and	r10, rdx
	mov	ebx, 0x13
	or	rdi, r10
	je	.label_2768
	mov	rbx, rax
	not	rbx
	and	rbx, r9
	not	r9
	and	r9, rax
	mov	qword ptr [rbp - 0xc0], r9
	mov	qword ptr [rbp - 0x50], r9
	mov	r15, rcx
	not	r15
	and	r15, r13
	mov	rax, r15
	or	rax, rbx
	not	r13
	and	r13, rcx
	mov	qword ptr [rbp - 0x48], r13
	mov	rcx, r11
	not	rcx
	and	rcx, r12
	or	rax, rcx
	not	r12
	and	r12, r11
	mov	qword ptr [rbp - 0x40], r12
	mov	rdi, rdx
	not	rdi
	and	rdi, rsi
	not	rsi
	and	rsi, rdx
	mov	qword ptr [rbp - 0x38], rsi
	or	rax, rdi
	mov	qword ptr [rbp - 0xb8], rsi
	je	.label_2796
	mov	r11, qword ptr [rbp - 0x60]
	mov	rax, r11
	shl	rax, 5
	mov	rdx, qword ptr [rbp - 0x88]
	mov	qword ptr [rdx + rax], rbx
	mov	qword ptr [rdx + rax + 8], r15
	mov	qword ptr [rdx + rax + 0x10], rcx
	mov	qword ptr [rdx + rax + 0x18], rdi
	mov	rax, qword ptr [rbp - 0x98]
	mov	qword ptr [r14], rax
	mov	rax, qword ptr [rbp - 0x90]
	mov	qword ptr [r14 + 8], rax
	mov	qword ptr [r14 + 0x10], r8
	mov	qword ptr [r14 + 0x18], r10
	lea	rbx, [r11 + r11*2]
	mov	r15, qword ptr [rbp - 0x70]
	lea	rcx, [r15 + rbx*8]
	mov	rax, qword ptr [rbp - 0x78]
	mov	rdi, qword ptr [rax + 8]
	mov	qword ptr [r15 + rbx*8 + 8], rdi
	mov	rax, qword ptr [rax + 8]
	test	rax, rax
	jle	.label_2830
	mov	qword ptr [rbp - 0x98], rax
	mov	qword ptr [rbp - 0x90], rcx
	mov	qword ptr [rcx], rdi
	shl	rdi, 3
	call	malloc
	mov	qword ptr [r15 + rbx*8 + 0x10], rax
	test	rax, rax
	je	.label_2855
	mov	rcx, qword ptr [rbp - 0x78]
	mov	rsi, qword ptr [rcx + 0x10]
	mov	rdx, qword ptr [rbp - 0x98]
	shl	rdx, 3
	mov	rdi, rax
	call	memcpy
	jmp	.label_2860
.label_2796:
	mov	r15, qword ptr [rbp - 0x70]
	mov	rcx, qword ptr [rbp - 0xa8]
	jmp	.label_2864
.label_2830:
	pxor	xmm0, xmm0
	movdqu	xmmword ptr [rcx], xmm0
	mov	qword ptr [rcx + 0x10], 0
.label_2860:
	inc	qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0xa8]
	mov	r15, qword ptr [rbp - 0x70]
.label_2864:
	mov	rax, qword ptr [rbp - 0xb0]
	mov	rax, qword ptr [rax + 0x18]
	mov	rsi, qword ptr [rax + rcx*8]
	mov	rdi, qword ptr [rbp - 0x78]
	call	re_node_set_insert
	mov	ebx, 0x1a
	test	al, al
	je	.label_2768
	or	r13, qword ptr [rbp - 0xc0]
	or	r12, qword ptr [rbp - 0xb8]
	or	r12, r13
	mov	ebx, 0
	mov	eax, 0x11
	cmove	ebx, eax
.label_2768:
	mov	r12, qword ptr [rbp - 0x60]
	mov	rsi, qword ptr [rbp - 0x30]
	mov	rdi, qword ptr [rbp - 0x80]
	mov	r13, qword ptr [rbp - 0x58]
.label_2763:
	mov	eax, ebx
	and	al, 0x1f
	and	ebx, 0x1f
	cmp	al, 0x1a
	ja	.label_2767
	jmp	qword ptr [(rbx * 8) + label_2769]
.label_3072:
	inc	r13
	add	r14, 0x20
	add	qword ptr [rbp - 0x78], 0x18
	cmp	r13, r12
	jl	.label_2772
.label_2791:
	cmp	r13, r12
	mov	r14, qword ptr [rbp - 0xb0]
	mov	rbx, qword ptr [rbp - 0xa8]
	jne	.label_2778
	mov	rax, r13
	shl	rax, 5
	movaps	xmm0, xmmword ptr [rbp - 0x50]
	movdqa	xmm1, xmmword ptr [rbp - 0x40]
	mov	rcx, qword ptr [rbp - 0x88]
	movdqu	xmmword ptr [rcx + rax + 0x10], xmm1
	movups	xmmword ptr [rcx + rax], xmm0
	mov	rcx, rbx
	lea	rbx, [r13 + r13*2]
	mov	rax, qword ptr [r14 + 0x18]
	mov	r14, qword ptr [rax + rcx*8]
	movdqa	xmm0, xmmword ptr [rip + label_211]
	movdqu	xmmword ptr [r15 + rbx*8], xmm0
	mov	edi, 8
	call	malloc
	mov	qword ptr [r15 + rbx*8 + 0x10], rax
	test	rax, rax
	je	.label_2806
	mov	qword ptr [rax], r14
	inc	r13
	pxor	xmm0, xmm0
	movdqa	xmmword ptr [rbp - 0x40], xmm0
	movdqa	xmmword ptr [rbp - 0x50], xmm0
	mov	r12, r13
	mov	rsi, qword ptr [rbp - 0x30]
	mov	r14, qword ptr [rbp - 0xb0]
	mov	rbx, qword ptr [rbp - 0xa8]
	nop	dword ptr [rax]
.label_2778:
	inc	rbx
	cmp	rbx, qword ptr [r14 + 0x10]
	jl	.label_2842
	test	r12, r12
	jle	.label_2826
.label_2767:
	lea	rax, [r12 + 1]
	mov	qword ptr [rbp - 0x50], rax
	mov	qword ptr [rbp - 0x48], 0
	lea	rdi, [r12*8 + 8]
	call	malloc
	mov	qword ptr [rbp - 0x40], rax
	mov	ecx, 0xc
	test	rax, rax
	je	.label_2838
	xor	ecx, ecx
.label_2838:
	mov	dword ptr [rbp - 0x64], ecx
	movabs	rcx, 0xaaaaaaaaaaaa855
	cmp	r12, rcx
	ja	.label_2840
	test	rax, rax
	je	.label_2840
	lea	rax, [r12*8]
	lea	rdi, [rax + rax*2]
	lea	rax, [rax + rax*2 + 0x3800]
	cmp	rax, 0xfbf
	ja	.label_2843
	mov	rax, rsp
	add	rdi, 0xf
	and	rdi, 0xfffffffffffffff0
	sub	rax, rdi
	mov	rsp, rax
	mov	dword ptr [rbp - 0xa8], 0
	jmp	.label_2849
.label_2843:
	call	malloc
	test	rax, rax
	je	.label_2840
	mov	cl, 1
	mov	dword ptr [rbp - 0xa8], ecx
.label_2849:
	mov	qword ptr [rbp - 0x58], rax
	lea	rax, [rax + r12*8]
	mov	qword ptr [rbp - 0xc0], rax
	lea	rax, [rax + r12*8]
	mov	qword ptr [rbp - 0xb8], rax
	xor	eax, eax
	mov	qword ptr [rbp - 0xa0], rax
	lea	r13, [rbp - 0x50]
	xor	eax, eax
	mov	qword ptr [rbp - 0x98], rax
	xor	eax, eax
	mov	qword ptr [rbp - 0x90], rax
	xor	eax, eax
	mov	qword ptr [rbp - 0x78], rax
	xor	r15d, r15d
	xor	eax, eax
	mov	qword ptr [rbp - 0x80], rax
	mov	rsi, qword ptr [rbp - 0x30]
	mov	qword ptr [rbp - 0x60], r12
	nop	word ptr cs:[rax + rax]
.label_2841:
	mov	qword ptr [rbp - 0x48], 0
	lea	rcx, [r15 + r15*2]
	mov	rax, qword ptr [rbp - 0x70]
	mov	rax, qword ptr [rax + rcx*8 + 8]
	test	rax, rax
	jle	.label_2869
	mov	rdx, qword ptr [rbp - 0x70]
	lea	rbx, [rdx + rcx*8 + 8]
	mov	r14, qword ptr [rdx + rcx*8 + 0x10]
	xor	r12d, r12d
	nop	dword ptr [rax + rax]
.label_2783:
	mov	rcx, qword ptr [r14 + r12*8]
	mov	rdx, qword ptr [rsi + 0x18]
	mov	rcx, qword ptr [rdx + rcx*8]
	cmp	rcx, -1
	je	.label_2814
	mov	rax, qword ptr [rsi + 0x30]
	lea	rcx, [rcx + rcx*2]
	lea	rsi, [rax + rcx*8]
	mov	rdi, r13
	call	re_node_set_merge
	mov	dword ptr [rbp - 0x64], eax
	test	eax, eax
	jne	.label_2801
	mov	rax, qword ptr [rbx]
	mov	rsi, qword ptr [rbp - 0x30]
.label_2814:
	inc	r12
	cmp	r12, rax
	jl	.label_2783
.label_2869:
	xor	ecx, ecx
	lea	rdi, [rbp - 0x64]
	mov	rdx, r13
	call	re_acquire_state_context
	mov	rcx, qword ptr [rbp - 0x58]
	mov	qword ptr [rcx + r15*8], rax
	test	rax, rax
	jne	.label_2788
	mov	ecx, dword ptr [rbp - 0x64]
	test	ecx, ecx
	jne	.label_2801
.label_2788:
	cmp	byte ptr [rax + 0x68], 0
	js	.label_2794
	mov	rcx, qword ptr [rbp - 0xc0]
	mov	qword ptr [rcx + r15*8], rax
	mov	rax, qword ptr [rbp - 0x58]
	mov	rax, qword ptr [rax + r15*8]
	mov	rcx, qword ptr [rbp - 0xb8]
	mov	qword ptr [rcx + r15*8], rax
	jmp	.label_2797
	.section	.text
	.align	32
	#Procedure 0x41a6af
	.globl sub_41a6af
	.type sub_41a6af, @function
sub_41a6af:

	nop	
.label_2794:
	mov	ecx, 1
	lea	rdi, [rbp - 0x64]
	mov	rsi, qword ptr [rbp - 0x30]
	mov	rdx, r13
	call	re_acquire_state_context
	mov	rcx, qword ptr [rbp - 0xc0]
	mov	qword ptr [rcx + r15*8], rax
	test	rax, rax
	jne	.label_2816
	mov	ecx, dword ptr [rbp - 0x64]
	test	ecx, ecx
	jne	.label_2801
.label_2816:
	mov	rcx, qword ptr [rbp - 0x58]
	cmp	qword ptr [rcx + r15*8], rax
	je	.label_2822
	mov	rsi, qword ptr [rbp - 0x30]
	cmp	dword ptr [rsi + 0xb4], 1
	mov	al, 1
	jg	.label_2824
	mov	rax, qword ptr [rbp - 0x80]
.label_2824:
	mov	qword ptr [rbp - 0x80], rax
	jmp	.label_2832
.label_2822:
	mov	rsi, qword ptr [rbp - 0x30]
.label_2832:
	mov	ecx, 2
	lea	rdi, [rbp - 0x64]
	mov	rdx, r13
	call	re_acquire_state_context
	mov	rcx, qword ptr [rbp - 0xb8]
	mov	qword ptr [rcx + r15*8], rax
	test	rax, rax
	jne	.label_2797
	mov	eax, dword ptr [rbp - 0x64]
	test	eax, eax
	jne	.label_2801
	nop	word ptr cs:[rax + rax]
.label_2797:
	mov	rax, r15
	shl	rax, 5
	mov	rcx, qword ptr [rbp - 0x88]
	mov	rdx, qword ptr [rbp - 0x78]
	or	rdx, qword ptr [rcx + rax]
	mov	qword ptr [rbp - 0x78], rdx
	mov	rdx, qword ptr [rbp - 0x90]
	or	rdx, qword ptr [rcx + rax + 8]
	mov	qword ptr [rbp - 0x90], rdx
	mov	rdx, qword ptr [rbp - 0x98]
	or	rdx, qword ptr [rcx + rax + 0x10]
	mov	qword ptr [rbp - 0x98], rdx
	mov	rdx, qword ptr [rbp - 0xa0]
	or	rdx, qword ptr [rcx + rax + 0x18]
	mov	qword ptr [rbp - 0xa0], rdx
	inc	r15
	mov	r12, qword ptr [rbp - 0x60]
	cmp	r15, r12
	mov	rsi, qword ptr [rbp - 0x30]
	jl	.label_2841
	mov	rax, qword ptr [rbp - 0x80]
	and	al, 1
	mov	qword ptr [rbp - 0x80], rax
	mov	edi, 8
	jne	.label_2862
	mov	esi, 0x100
	call	rpl_calloc
	mov	rcx, qword ptr [rbp - 0xc8]
	mov	qword ptr [rcx], rax
	test	rax, rax
	je	.label_2801
	cmp	qword ptr [rbp - 0x78], 0
	mov	r14, qword ptr [rbp - 0x70]
	mov	r15, qword ptr [rbp - 0x60]
	mov	r10, qword ptr [rbp - 0x88]
	mov	rdi, qword ptr [rbp - 0x58]
	mov	r13, qword ptr [rbp - 0x90]
	je	.label_2868
	lea	r8, [rdi - 8]
	mov	edx, 1
	xor	esi, esi
	mov	rbx, qword ptr [rbp - 0x78]
	jmp	.label_2777
.label_2817:
	mov	rcx, r10
	mov	r9, r8
.label_2764:
	add	r9, 8
	test	qword ptr [rcx], rdx
	lea	rcx, [rcx + 0x20]
	je	.label_2764
	mov	rcx, qword ptr [rbp - 0x30]
	test	qword ptr [rcx + 0xb8], rdx
	je	.label_2782
	mov	rcx, qword ptr [r9 + r15*8]
	jmp	.label_2792
.label_2782:
	mov	rcx, qword ptr [r9]
.label_2792:
	mov	qword ptr [rax + rsi*8], rcx
	jmp	.label_2773
	.section	.text
	.align	32
	#Procedure 0x41a83a
	.globl sub_41a83a
	.type sub_41a83a, @function
sub_41a83a:

	nop	word ptr [rax + rax]
.label_2777:
	test	bl, 1
	jne	.label_2817
.label_2773:
	add	rdx, rdx
	shr	rbx, 1
	inc	rsi
	test	rbx, rbx
	jne	.label_2777
.label_2868:
	test	r13, r13
	mov	r11, qword ptr [rbp - 0xa0]
	mov	r12, qword ptr [rbp - 0x98]
	je	.label_2781
	lea	r8, [rdi - 8]
	lea	r9, [r14 + 0x1808]
	mov	esi, 1
	mov	ebx, 0x40
	jmp	.label_2786
.label_2809:
	mov	rdx, r9
	mov	rcx, r8
.label_2837:
	add	rcx, 8
	test	qword ptr [rdx], rsi
	lea	rdx, [rdx + 0x20]
	je	.label_2837
	mov	rdx, qword ptr [rbp - 0x30]
	test	qword ptr [rdx + 0xc0], rsi
	je	.label_2851
	mov	rcx, qword ptr [rcx + r15*8]
	jmp	.label_2803
.label_2851:
	mov	rcx, qword ptr [rcx]
.label_2803:
	mov	qword ptr [rax + rbx*8], rcx
	jmp	.label_2813
	.section	.text
	.align	32
	#Procedure 0x41a8ac
	.globl sub_41a8ac
	.type sub_41a8ac, @function
sub_41a8ac:

	nop	dword ptr [rax]
.label_2786:
	test	r13b, 1
	jne	.label_2809
.label_2813:
	add	rsi, rsi
	shr	r13, 1
	inc	rbx
	test	r13, r13
	jne	.label_2786
.label_2781:
	test	r12, r12
	je	.label_2815
	lea	r8, [rdi - 8]
	lea	r9, [r14 + 0x1810]
	mov	esi, 1
	mov	ebx, 0x80
	jmp	.label_2818
.label_2836:
	mov	rdx, r9
	mov	rcx, r8
.label_2823:
	add	rcx, 8
	test	qword ptr [rdx], rsi
	lea	rdx, [rdx + 0x20]
	je	.label_2823
	mov	rdx, qword ptr [rbp - 0x30]
	test	qword ptr [rdx + 0xc8], rsi
	je	.label_2827
	mov	rcx, qword ptr [rcx + r15*8]
	jmp	.label_2834
.label_2827:
	mov	rcx, qword ptr [rcx]
.label_2834:
	mov	qword ptr [rax + rbx*8], rcx
	jmp	.label_2835
	.section	.text
	.align	32
	#Procedure 0x41a90f
	.globl sub_41a90f
	.type sub_41a90f, @function
sub_41a90f:

	nop	
.label_2818:
	test	r12b, 1
	jne	.label_2836
.label_2835:
	add	rsi, rsi
	shr	r12, 1
	inc	rbx
	test	r12, r12
	jne	.label_2818
.label_2815:
	test	r11, r11
	je	.label_2799
	lea	r8, [rdi - 8]
	lea	r9, [r14 + 0x1818]
	mov	esi, 1
	mov	ebx, 0xc0
	jmp	.label_2831
.label_2805:
	mov	rdx, r9
	mov	rcx, r8
.label_2845:
	add	rcx, 8
	test	qword ptr [rdx], rsi
	lea	rdx, [rdx + 0x20]
	je	.label_2845
	mov	rdx, qword ptr [rbp - 0x30]
	test	qword ptr [rdx + 0xd0], rsi
	je	.label_2848
	mov	rcx, qword ptr [rcx + r15*8]
	jmp	.label_2774
.label_2848:
	mov	rcx, qword ptr [rcx]
.label_2774:
	mov	qword ptr [rax + rbx*8], rcx
	jmp	.label_2854
	.section	.text
	.align	32
	#Procedure 0x41a96f
	.globl sub_41a96f
	.type sub_41a96f, @function
sub_41a96f:

	nop	
.label_2831:
	test	r11b, 1
	jne	.label_2805
.label_2854:
	add	rsi, rsi
	shr	r11, 1
	inc	rbx
	test	r11, r11
	jne	.label_2831
.label_2799:
	mov	rcx, qword ptr [rbp - 0x78]
	test	ch, 4
	je	.label_2807
	xor	ecx, ecx
	nop	
.label_2859:
	test	byte ptr [r10 + 1], 4
	jne	.label_2858
	inc	rcx
	add	r10, 0x20
	cmp	rcx, r15
	jl	.label_2859
	jmp	.label_2807
.label_2858:
	mov	rdx, r15
	shl	rdx, 4
	add	rdx, rdi
	mov	rsi, qword ptr [rbp - 0x80]
	test	sil, sil
	mov	rcx, qword ptr [rdx + rcx*8]
	mov	qword ptr [rax + 0x50], rcx
	je	.label_2807
	mov	qword ptr [rax + 0x850], rcx
.label_2807:
	mov	eax, dword ptr [rbp - 0xa8]
	test	al, al
	je	.label_2865
	call	free
.label_2865:
	mov	rdi, qword ptr [rbp - 0x40]
	call	free
	mov	rbx, r14
	add	rbx, 0x10
	nop	word ptr cs:[rax + rax]
.label_2870:
	mov	rdi, qword ptr [rbx]
	call	free
	add	rbx, 0x18
	dec	r15
	jne	.label_2870
	mov	rdi, r14
	call	free
	mov	al, 1
	jmp	.label_2785
.label_2840:
	mov	rdi, qword ptr [rbp - 0x40]
	call	free
	jmp	.label_2766
.label_2806:
	lea	rax, [r15 + rbx*8]
	pxor	xmm0, xmm0
	movdqu	xmmword ptr [rax], xmm0
	mov	r12, r13
.label_3073:
	mov	rbx, -1
	test	r12, r12
	jle	.label_2771
	mov	rbx, r15
	add	rbx, 0x10
.label_2779:
	mov	rdi, qword ptr [rbx]
	call	free
	add	rbx, 0x18
	dec	r12
	jne	.label_2779
	mov	rbx, -1
.label_2771:
	mov	r12, rbx
.label_2826:
	mov	rdi, r15
	call	free
	test	r12, r12
	jne	.label_2784
	mov	edi, 8
	mov	esi, 0x100
	call	rpl_calloc
	mov	rcx, qword ptr [rbp - 0xc8]
	mov	qword ptr [rcx], rax
	test	rax, rax
	setne	al
	jmp	.label_2785
.label_2862:
	mov	esi, 0x200
	call	rpl_calloc
	mov	rcx, qword ptr [rbp - 0xb0]
	mov	qword ptr [rcx + 0x60], rax
	test	rax, rax
	je	.label_2801
	cmp	qword ptr [rbp - 0x78], 0
	mov	r14, qword ptr [rbp - 0x70]
	mov	rdi, qword ptr [rbp - 0x58]
	mov	rcx, qword ptr [rbp - 0x90]
	je	.label_2808
	lea	r8, [rdi - 8]
	mov	r9d, 1
	xor	esi, esi
	mov	rdx, qword ptr [rbp - 0x78]
	jmp	.label_2800
.label_2801:
	mov	eax, dword ptr [rbp - 0xa8]
	test	al, al
	je	.label_2839
	mov	rdi, qword ptr [rbp - 0x58]
	call	free
.label_2839:
	mov	rdi, qword ptr [rbp - 0x40]
	call	free
	mov	r12, qword ptr [rbp - 0x60]
	test	r12, r12
	mov	r15, qword ptr [rbp - 0x70]
	jle	.label_2829
.label_2766:
	mov	rbx, r15
	add	rbx, 0x10
	nop	dword ptr [rax]
.label_2798:
	mov	rdi, qword ptr [rbx]
	call	free
	add	rbx, 0x18
	dec	r12
	jne	.label_2798
.label_2829:
	mov	rdi, r15
	call	free
.label_2784:
	xor	eax, eax
.label_2785:
	lea	rsp, [rbp - 0x28]
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_2856:
	mov	rbx, qword ptr [rbp - 0x88]
	mov	rcx, r8
.label_2844:
	add	rcx, 8
	test	qword ptr [rbx], r9
	lea	rbx, [rbx + 0x20]
	je	.label_2844
	mov	rbx, qword ptr [rcx]
	mov	qword ptr [rax + rsi*8], rbx
	mov	rbx, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rcx + rbx*8]
	mov	qword ptr [rax + rsi*8 + 0x800], rcx
	mov	r14, qword ptr [rbp - 0x70]
	mov	rdi, qword ptr [rbp - 0x58]
	mov	rcx, qword ptr [rbp - 0x90]
	jmp	.label_2847
.label_2800:
	test	dl, 1
	jne	.label_2856
.label_2847:
	add	r9, r9
	shr	rdx, 1
	inc	rsi
	test	rdx, rdx
	jne	.label_2800
.label_2808:
	test	rcx, rcx
	mov	r12, qword ptr [rbp - 0xa0]
	mov	rdx, qword ptr [rbp - 0x98]
	je	.label_2857
	lea	r8, [rdi - 8]
	lea	r9, [r14 + 0x1808]
	mov	esi, 1
	mov	ebx, 0x40
	jmp	.label_2762
.label_2871:
	mov	r10, rcx
	mov	rdx, r9
	mov	rcx, r8
.label_2863:
	add	rcx, 8
	test	qword ptr [rdx], rsi
	lea	rdx, [rdx + 0x20]
	je	.label_2863
	mov	rdx, qword ptr [rcx]
	mov	qword ptr [rax + rbx*8], rdx
	mov	rdx, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rcx + rdx*8]
	mov	qword ptr [rax + rbx*8 + 0x800], rcx
	mov	r14, qword ptr [rbp - 0x70]
	mov	rdi, qword ptr [rbp - 0x58]
	mov	r12, qword ptr [rbp - 0xa0]
	mov	rdx, qword ptr [rbp - 0x98]
	mov	rcx, r10
	jmp	.label_2846
.label_2762:
	test	cl, 1
	jne	.label_2871
.label_2846:
	add	rsi, rsi
	shr	rcx, 1
	inc	rbx
	test	rcx, rcx
	jne	.label_2762
.label_2857:
	test	rdx, rdx
	mov	r15, qword ptr [rbp - 0x60]
	mov	r10, qword ptr [rbp - 0x88]
	je	.label_2787
	lea	r8, [rdi - 8]
	lea	r9, [r14 + 0x1810]
	mov	esi, 1
	mov	ebx, 0x80
	jmp	.label_2793
.label_2790:
	mov	r11, rdx
	mov	rdx, r9
	mov	rcx, r8
.label_2776:
	add	rcx, 8
	test	qword ptr [rdx], rsi
	lea	rdx, [rdx + 0x20]
	je	.label_2776
	mov	rdx, qword ptr [rcx]
	mov	qword ptr [rax + rbx*8], rdx
	mov	r15, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rcx + r15*8]
	mov	qword ptr [rax + rbx*8 + 0x800], rcx
	mov	r14, qword ptr [rbp - 0x70]
	mov	r10, qword ptr [rbp - 0x88]
	mov	rdi, qword ptr [rbp - 0x58]
	mov	r12, qword ptr [rbp - 0xa0]
	mov	rdx, r11
	jmp	.label_2780
.label_2793:
	test	dl, 1
	jne	.label_2790
.label_2780:
	add	rsi, rsi
	shr	rdx, 1
	inc	rbx
	test	rdx, rdx
	jne	.label_2793
.label_2787:
	test	r12, r12
	je	.label_2799
	lea	r8, [rdi - 8]
	lea	r9, [r14 + 0x1818]
	mov	esi, 1
	mov	ebx, 0xc0
	jmp	.label_2802
.label_2828:
	mov	r11, r12
	mov	rdx, r9
	mov	rcx, r8
.label_2812:
	add	rcx, 8
	test	qword ptr [rdx], rsi
	lea	rdx, [rdx + 0x20]
	je	.label_2812
	mov	rdx, qword ptr [rcx]
	mov	qword ptr [rax + rbx*8], rdx
	mov	r15, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rcx + r15*8]
	mov	qword ptr [rax + rbx*8 + 0x800], rcx
	mov	r14, qword ptr [rbp - 0x70]
	mov	r10, qword ptr [rbp - 0x88]
	mov	rdi, qword ptr [rbp - 0x58]
	mov	r12, r11
	jmp	.label_2810
.label_2802:
	test	r12b, 1
	jne	.label_2828
.label_2810:
	add	rsi, rsi
	shr	r12, 1
	inc	rbx
	test	r12, r12
	jne	.label_2802
	jmp	.label_2799
	.section	.text
	.align	32
	#Procedure 0x41ad0d
	.globl sub_41ad0d
	.type sub_41ad0d, @function
sub_41ad0d:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x41ad75
	.globl sub_41ad75
	.type sub_41ad75, @function
sub_41ad75:

	nop	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x41ad82
	.globl sub_41ad82
	.type sub_41ad82, @function
sub_41ad82:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x41ada6
	.globl sub_41ada6
	.type sub_41ada6, @function
sub_41ada6:

	nop	word ptr cs:[rax + rax]
