	.section	.text
	.align	16
	#Procedure 0x401a99
	.globl sub_401a99
	.type sub_401a99, @function
sub_401a99:

	hlt	
	.section	.text
	.align	16
	#Procedure 0x401a9a
	.globl sub_401a9a
	.type sub_401a9a, @function
sub_401a9a:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x401ad2
	.globl sub_401ad2
	.type sub_401ad2, @function
sub_401ad2:

	nop	dword ptr [rax]
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x401b1a
	.globl sub_401b1a
	.type sub_401b1a, @function
sub_401b1a:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x401b3c
	.globl sub_401b3c
	.type sub_401b3c, @function
sub_401b3c:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x401b4d
	.globl sub_401b4d
	.type sub_401b4d, @function
sub_401b4d:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x401b66
	.globl sub_401b66
	.type sub_401b66, @function
sub_401b66:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x401b70

	.globl open_safer
	.type open_safer, @function
open_safer:
	sub	rsp, 0xd8
	test	al, al
	je	.label_9
	movaps	xmmword ptr [rsp + 0x50], xmm0
	movaps	xmmword ptr [rsp + 0x60], xmm1
	movaps	xmmword ptr [rsp + 0x70], xmm2
	movaps	xmmword ptr [rsp + 0x80], xmm3
	movaps	xmmword ptr [rsp + 0x90], xmm4
	movaps	xmmword ptr [rsp + 0xa0], xmm5
	movaps	xmmword ptr [rsp + 0xb0], xmm6
	movaps	xmmword ptr [rsp + 0xc0], xmm7
.label_9:
	mov	qword ptr [rsp + 0x48], r9
	mov	qword ptr [rsp + 0x40], r8
	mov	qword ptr [rsp + 0x38], rcx
	mov	qword ptr [rsp + 0x30], rdx
	xor	edx, edx
	test	sil, 0x40
	je	.label_10
	lea	rax, [rsp + 0x20]
	mov	qword ptr [rsp + 0x10], rax
	lea	rax, [rsp + 0xe0]
	mov	qword ptr [rsp + 8], rax
	mov	dword ptr [rsp + 4], 0x30
	mov	dword ptr [rsp], 0x10
	movsxd	rcx, dword ptr [rsp]
	cmp	rcx, 0x28
	ja	.label_12
	mov	rax, rcx
	add	rax, qword ptr [rsp + 0x10]
	lea	ecx, [rcx + 8]
	mov	dword ptr [rsp], ecx
	jmp	.label_11
.label_12:
	mov	rax, qword ptr [rsp + 8]
	lea	rcx, [rax + 8]
	mov	qword ptr [rsp + 8], rcx
.label_11:
	mov	edx, dword ptr [rax]
.label_10:
	xor	eax, eax
	call	open
	mov	edi, eax
	call	fd_safer
	add	rsp, 0xd8
	ret	
	.section	.text
	.align	16
	#Procedure 0x401c34
	.globl sub_401c34
	.type sub_401c34, @function
sub_401c34:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x401c40

	.globl rpl_fts_read
	.type rpl_fts_read, @function
rpl_fts_read:
	push	rbp
	push	r15
	push	r14
	push	r12
	push	rbx
	mov	r14, rdi
	mov	r15, qword ptr [r14]
	xor	ebx, ebx
	test	r15, r15
	je	.label_26
	mov	eax, dword ptr [r14 + 0x48]
	xor	ebx, ebx
	test	ah, 0x20
	jne	.label_26
	movzx	ecx, word ptr [r15 + 0x74]
	mov	word ptr [r15 + 0x74], 3
	cmp	ecx, 1
	je	.label_33
	movzx	edx, cx
	cmp	edx, 2
	jne	.label_34
	mov	ecx, dword ptr [r15 + 0x70]
	mov	esi, ecx
	and	esi, 0xfffe
	cmp	esi, 0xc
	jne	.label_52
	mov	edx, 1
	mov	rdi, r14
	mov	rsi, r15
	call	fts_stat
	mov	word ptr [r15 + 0x70], ax
	movzx	eax, ax
	cmp	eax, 1
	jne	.label_36
	mov	eax, dword ptr [r14 + 0x48]
	test	al, 4
	jne	.label_36
	mov	edx, eax
	and	edx, 0x10
	shl	edx, 0xd
	or	edx, 0x90900
	test	ah, 2
	jne	.label_38
	mov	edi, OFFSET FLAT:label_15
	xor	eax, eax
	mov	esi, edx
	call	open_safer
	jmp	.label_18
.label_33:
	xor	edx, edx
	mov	rdi, r14
	mov	rsi, r15
	call	fts_stat
	mov	word ptr [r15 + 0x70], ax
	mov	rbx, r15
	jmp	.label_26
.label_34:
	lea	r12, [r15 + 0x70]
	mov	ecx, dword ptr [r15 + 0x70]
	jmp	.label_47
.label_52:
	lea	r12, [r15 + 0x70]
.label_47:
	movzx	esi, cx
	cmp	esi, 1
	jne	.label_50
	cmp	edx, 4
	je	.label_51
	test	al, 0x40
	je	.label_54
	mov	rdx, qword ptr [r15 + 0x78]
	cmp	rdx, qword ptr [r14 + 0x18]
	jne	.label_51
.label_54:
	mov	rbx, qword ptr [r14 + 8]
	test	rbx, rbx
	je	.label_56
	test	ah, 0x10
	jne	.label_59
	mov	rcx, qword ptr [r15 + 0x30]
	mov	edx, 0xffffffff
	mov	rdi, r14
	mov	rsi, r15
	call	fts_safe_changedir
	test	eax, eax
	je	.label_21
	call	__errno_location
	mov	eax, dword ptr [rax]
	mov	dword ptr [r15 + 0x40], eax
	or	byte ptr [r15 + 0x72], 1
	mov	rax, qword ptr [r14 + 8]
	jmp	.label_62
	.section	.text
	.align	16
	#Procedure 0x401d83
	.globl sub_401d83
	.type sub_401d83, @function
sub_401d83:

	nop	word ptr cs:[rax + rax]
.label_50:
	mov	rbx, qword ptr [r15 + 0x10]
	test	rbx, rbx
	je	.label_66
	mov	qword ptr [r14], rbx
	mov	rdi, r15
	call	free
	cmp	qword ptr [rbx + 0x58], 0
	je	.label_70
	movzx	eax, word ptr [rbx + 0x74]
	cmp	eax, 4
	mov	r15, rbx
	je	.label_50
	movzx	eax, ax
	cmp	eax, 2
	jne	.label_43
	mov	edx, 1
	mov	rdi, r14
	mov	rsi, rbx
	call	fts_stat
	mov	word ptr [rbx + 0x70], ax
	movzx	eax, ax
	cmp	eax, 1
	jne	.label_74
	mov	eax, dword ptr [r14 + 0x48]
	test	al, 4
	jne	.label_74
	mov	edx, eax
	and	edx, 0x10
	shl	edx, 0xd
	or	edx, 0x90900
	test	ah, 2
	jne	.label_75
	mov	edi, OFFSET FLAT:label_15
	xor	eax, eax
	mov	esi, edx
	call	open_safer
	jmp	.label_17
.label_20:
	mov	rcx, qword ptr [rax + 8]
	mov	rcx, qword ptr [rcx + 0x30]
	mov	qword ptr [rax + 0x30], rcx
	mov	rax, qword ptr [rax + 0x10]
.label_62:
	test	rax, rax
	jne	.label_20
	jmp	.label_21
.label_51:
	test	ecx, 0x20000
	je	.label_24
	mov	edi, dword ptr [r15 + 0x44]
	call	close
.label_24:
	mov	rbx, qword ptr [r14 + 8]
	test	rbx, rbx
	je	.label_29
	nop	word ptr cs:[rax + rax]
.label_35:
	mov	rbp, qword ptr [rbx + 0x10]
	mov	rdi, qword ptr [rbx + 0x18]
	test	rdi, rdi
	je	.label_32
	call	closedir
.label_32:
	mov	rdi, rbx
	call	free
	test	rbp, rbp
	mov	rbx, rbp
	jne	.label_35
	mov	qword ptr [r14 + 8], 0
.label_29:
	mov	word ptr [r15 + 0x70], 6
.label_69:
	mov	rdi, r14
	mov	rsi, r15
	call	leave_dir
	mov	rbx, r15
	jmp	.label_26
.label_66:
	mov	rbx, qword ptr [r15 + 8]
	cmp	qword ptr [rbx + 0x18], 0
	je	.label_37
	mov	qword ptr [r14], rbx
	mov	rax, qword ptr [rbx + 0x48]
	mov	rcx, qword ptr [r14 + 0x20]
	mov	byte ptr [rcx + rax], 0
	mov	esi, 3
	mov	rdi, r14
	call	fts_build
	mov	rbx, rax
	test	rbx, rbx
	je	.label_40
	mov	rdi, r15
	call	free
	jmp	.label_43
.label_70:
	mov	rdi, r14
	call	restore_initial_cwd
	test	eax, eax
	mov	eax, dword ptr [r14 + 0x48]
	je	.label_44
	or	eax, 0x2000
	mov	dword ptr [r14 + 0x48], eax
	xor	ebx, ebx
	jmp	.label_26
.label_44:
	test	ax, 0x102
	je	.label_48
	mov	rdi, qword ptr [r14 + 0x58]
	test	rdi, rdi
	je	.label_49
	call	hash_free
	jmp	.label_49
.label_59:
	and	eax, 0xffffefff
	mov	dword ptr [r14 + 0x48], eax
	nop	word ptr cs:[rax + rax]
.label_61:
	mov	rbp, qword ptr [rbx + 0x10]
	mov	rdi, qword ptr [rbx + 0x18]
	test	rdi, rdi
	je	.label_58
	call	closedir
.label_58:
	mov	rdi, rbx
	call	free
	test	rbp, rbp
	mov	rbx, rbp
	jne	.label_61
	mov	qword ptr [r14 + 8], 0
.label_56:
	mov	esi, 3
	mov	rdi, r14
	call	fts_build
	mov	qword ptr [r14 + 8], rax
	test	rax, rax
	je	.label_63
.label_21:
	mov	rbx, qword ptr [r14 + 8]
	mov	qword ptr [r14 + 8], 0
	jmp	.label_43
.label_63:
	xor	ebx, ebx
	test	byte ptr [r14 + 0x49], 0x20
	jne	.label_26
	cmp	dword ptr [r15 + 0x40], 0
	je	.label_69
	movzx	eax, word ptr [r12]
	cmp	eax, 4
	je	.label_69
	mov	word ptr [r12], 7
	jmp	.label_69
.label_38:
	mov	edi, dword ptr [r14 + 0x2c]
	mov	esi, OFFSET FLAT:label_15
	xor	eax, eax
	call	openat_safer
.label_18:
	mov	dword ptr [r15 + 0x44], eax
	test	eax, eax
	js	.label_72
	or	byte ptr [r15 + 0x72], 2
	jmp	.label_36
.label_40:
	xor	ebx, ebx
	test	byte ptr [r14 + 0x49], 0x20
	jne	.label_26
	mov	rbx, qword ptr [r15 + 8]
.label_37:
	mov	qword ptr [r14], rbx
	mov	rdi, r15
	call	free
	cmp	qword ptr [rbx + 0x58], -1
	je	.label_13
	movzx	eax, word ptr [rbx + 0x70]
	cmp	eax, 0xb
	je	.label_14
	mov	rax, qword ptr [rbx + 0x48]
	mov	rcx, qword ptr [r14 + 0x20]
	mov	byte ptr [rcx + rax], 0
	cmp	qword ptr [rbx + 0x58], 0
	je	.label_16
	movzx	eax, word ptr [rbx + 0x72]
	test	al, 2
	jne	.label_19
	test	al, 1
	jne	.label_25
	mov	rsi, qword ptr [rbx + 8]
	mov	edx, 0xffffffff
	mov	ecx, OFFSET FLAT:label_27
	mov	rdi, r14
	call	fts_safe_changedir
	jmp	.label_30
.label_13:
	mov	rdi, rbx
	call	free
	call	__errno_location
	mov	dword ptr [rax], 0
	mov	qword ptr [r14], 0
	xor	ebx, ebx
	jmp	.label_26
.label_72:
	call	__errno_location
	mov	eax, dword ptr [rax]
	mov	dword ptr [r15 + 0x40], eax
	mov	word ptr [r15 + 0x70], 7
	jmp	.label_36
.label_48:
	mov	rdi, qword ptr [r14 + 0x58]
	call	free
.label_49:
	mov	rdx, qword ptr [rbx + 0x60]
	mov	qword ptr [rbx + 0x48], rdx
	mov	rdi, qword ptr [r14 + 0x20]
	lea	r15, [rbx + 0x108]
	inc	rdx
	mov	rsi, r15
	call	memmove
	mov	esi, 0x2f
	mov	rdi, r15
	call	strrchr
	mov	rbp, rax
	test	rbp, rbp
	je	.label_39
	cmp	rbp, r15
	jne	.label_41
	cmp	byte ptr [rbx + 0x109], 0
	je	.label_39
.label_41:
	inc	rbp
	mov	rdi, rbp
	call	strlen
	mov	r12, rax
	lea	rdx, [r12 + 1]
	mov	rdi, r15
	mov	rsi, rbp
	call	memmove
	mov	qword ptr [rbx + 0x60], r12
.label_39:
	mov	rax, qword ptr [r14 + 0x20]
	mov	qword ptr [rbx + 0x38], rax
	mov	qword ptr [rbx + 0x30], rax
	movzx	eax, word ptr [r14 + 0x48]
	test	ax, 0x102
	je	.label_45
	mov	edi, 0x1f
	xor	esi, esi
	mov	edx, OFFSET FLAT:AD_hash
	mov	ecx, OFFSET FLAT:AD_compare
	mov	r8d, OFFSET FLAT:free
	call	hash_initialize
	mov	qword ptr [r14 + 0x58], rax
	jmp	.label_55
.label_45:
	mov	edi, 0x20
	call	malloc
	mov	qword ptr [r14 + 0x58], rax
	test	rax, rax
	je	.label_55
	mov	rdi, rax
	call	cycle_check_init
	jmp	.label_55
.label_16:
	mov	rdi, r14
	call	restore_initial_cwd
.label_30:
	test	eax, eax
	je	.label_25
	call	__errno_location
	mov	eax, dword ptr [rax]
	mov	dword ptr [rbx + 0x40], eax
	or	byte ptr [r14 + 0x49], 0x20
	jmp	.label_25
.label_19:
	mov	eax, dword ptr [r14 + 0x48]
	lea	rbp, [rbx + 0x44]
	test	al, 4
	jne	.label_65
	test	ah, 2
	mov	r15d, dword ptr [rbx + 0x44]
	jne	.label_68
	mov	edi, r15d
	call	fchdir
	test	eax, eax
	je	.label_65
	call	__errno_location
	mov	eax, dword ptr [rax]
	mov	dword ptr [rbx + 0x40], eax
	or	byte ptr [r14 + 0x49], 0x20
	jmp	.label_65
.label_75:
	mov	edi, dword ptr [r14 + 0x2c]
	mov	esi, OFFSET FLAT:label_15
	xor	eax, eax
	call	openat_safer
.label_17:
	mov	dword ptr [rbx + 0x44], eax
	test	eax, eax
	js	.label_73
	or	byte ptr [rbx + 0x72], 2
	jmp	.label_74
.label_73:
	call	__errno_location
	mov	eax, dword ptr [rax]
	mov	dword ptr [rbx + 0x40], eax
	mov	word ptr [rbx + 0x70], 7
.label_74:
	mov	word ptr [rbx + 0x74], 3
.label_43:
	mov	rax, qword ptr [r14 + 0x20]
	mov	rcx, qword ptr [rbx + 8]
	mov	rdx, qword ptr [rcx + 0x38]
	mov	rcx, qword ptr [rcx + 0x48]
	lea	rsi, [rcx - 1]
	cmp	byte ptr [rdx + rcx - 1], 0x2f
	cmovne	rsi, rcx
	lea	rdi, [rax + rsi + 1]
	mov	byte ptr [rax + rsi], 0x2f
	lea	rsi, [rbx + 0x108]
	mov	rdx, qword ptr [rbx + 0x60]
	inc	rdx
	call	memmove
.label_55:
	mov	r15, rbx
.label_36:
	mov	qword ptr [r14], r15
	movzx	eax, word ptr [r15 + 0x70]
	cmp	eax, 0xb
	jne	.label_22
	mov	rax, qword ptr [r15 + 0xa8]
	cmp	rax, 1
	je	.label_28
	cmp	rax, 2
	jne	.label_14
	mov	rbx, qword ptr [r15 + 8]
	cmp	qword ptr [rbx + 0x68], 0
	jne	.label_31
	mov	eax, dword ptr [r14 + 0x48]
	and	eax, 0x18
	cmp	eax, 0x18
	jne	.label_31
	mov	esi, dword ptr [r14 + 0x2c]
	mov	rdi, rbx
	call	filesystem_type
	cmp	rax, 0x52654973
	je	.label_28
	cmp	rax, 0x58465342
	je	.label_28
.label_31:
	xor	edx, edx
	mov	rdi, r14
	mov	rsi, r15
	call	fts_stat
	mov	word ptr [r15 + 0x70], ax
	mov	ecx, 0xf000
	and	ecx, dword ptr [r15 + 0x90]
	cmp	ecx, 0x4000
	jne	.label_22
	cmp	qword ptr [r15 + 0x58], 0
	je	.label_28
	mov	rax, qword ptr [rbx + 0x68]
	lea	rcx, [rax + 1]
	cmp	rcx, 2
	jb	.label_28
	dec	rax
	mov	qword ptr [rbx + 0x68], rax
.label_28:
	mov	ax, word ptr [r15 + 0x70]
.label_22:
	movzx	eax, ax
	cmp	eax, 1
	jne	.label_42
	cmp	qword ptr [r15 + 0x58], 0
	jne	.label_60
	mov	rax, qword ptr [r15 + 0x78]
	mov	qword ptr [r14 + 0x18], rax
.label_60:
	movzx	eax, word ptr [r14 + 0x48]
	test	ax, 0x102
	je	.label_23
	mov	edi, 0x18
	call	malloc
	mov	rbx, rax
	test	rbx, rbx
	je	.label_46
	movups	xmm0, xmmword ptr [r15 + 0x78]
	movups	xmmword ptr [rbx], xmm0
	mov	qword ptr [rbx + 0x10], r15
	mov	rdi, qword ptr [r14 + 0x58]
	mov	rsi, rbx
	call	hash_insert
	mov	rbp, rax
	cmp	rbp, rbx
	je	.label_53
	mov	rdi, rbx
	call	free
	test	rbp, rbp
	je	.label_46
	mov	rax, qword ptr [rbp + 0x10]
	mov	qword ptr [r15], rax
	jmp	.label_57
.label_42:
	mov	rbx, r15
	jmp	.label_26
.label_23:
	mov	rdi, qword ptr [r14 + 0x58]
	lea	rsi, [r15 + 0x78]
	call	cycle_check
	test	al, al
	je	.label_53
	mov	qword ptr [r15], r15
.label_57:
	mov	word ptr [r15 + 0x70], 2
	mov	rbx, r15
	jmp	.label_26
.label_53:
	mov	rbx, r15
	jmp	.label_26
.label_46:
	call	__errno_location
	mov	dword ptr [rax], 0xc
	xor	ebx, ebx
	jmp	.label_26
.label_68:
	mov	esi, dword ptr [r14 + 0x2c]
	cmp	esi, r15d
	jne	.label_64
	cmp	esi, -0x64
	jne	.label_14
.label_64:
	lea	rdi, [r14 + 0x60]
	call	i_ring_push
	test	eax, eax
	js	.label_67
	mov	edi, eax
	call	close
.label_67:
	mov	dword ptr [r14 + 0x2c], r15d
.label_65:
	mov	edi, dword ptr [rbp]
	call	close
.label_25:
	movzx	eax, word ptr [rbx + 0x70]
	cmp	eax, 2
	je	.label_71
	mov	eax, dword ptr [rbx + 0x40]
	xor	ecx, ecx
	cmp	eax, 0
	setne	cl
	or	ecx, 6
	cmp	eax, 0
	mov	word ptr [rbx + 0x70], cx
	jne	.label_71
	mov	rdi, r14
	mov	rsi, rbx
	call	leave_dir
.label_71:
	xor	eax, eax
	test	byte ptr [r14 + 0x49], 0x20
	cmovne	rbx, rax
.label_26:
	mov	rax, rbx
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_14:
	call	abort
	.section	.text
	.align	16
	#Procedure 0x4023f4
	.globl sub_4023f4
	.type sub_4023f4, @function
sub_4023f4:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x402400

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
	.align	16
	#Procedure 0x402428
	.globl sub_402428
	.type sub_402428, @function
sub_402428:

	nop	dword ptr [rax + rax]
.label_78:
	call	abort
	.section	.text
	.align	16
	#Procedure 0x402435
	.globl sub_402435
	.type sub_402435, @function
sub_402435:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x402443

	.globl leave_dir
	.type leave_dir, @function
leave_dir:
	sub	rsp, 0x18
	movzx	eax, word ptr [rdi + 0x48]
	test	ax, 0x102
	je	.label_77
	movups	xmm0, xmmword ptr [rsi + 0x78]
	movaps	xmmword ptr [rsp], xmm0
	mov	rdi, qword ptr [rdi + 0x58]
	lea	rsi, [rsp]
	call	hash_delete
	test	rax, rax
	je	.label_78
	mov	rdi, rax
	call	free
	add	rsp, 0x18
	ret	
.label_77:
	mov	rax, qword ptr [rsi + 8]
	test	rax, rax
	je	.label_76
	cmp	qword ptr [rax + 0x58], 0
	js	.label_76
	mov	rcx, qword ptr [rdi + 0x58]
	cmp	qword ptr [rcx + 0x10], 0
	je	.label_78
	mov	rdx, qword ptr [rcx]
	cmp	rdx, qword ptr [rsi + 0x80]
	jne	.label_76
	mov	rdx, qword ptr [rcx + 8]
	cmp	rdx, qword ptr [rsi + 0x78]
	jne	.label_76
	mov	rdx, qword ptr [rax + 0x78]
	mov	qword ptr [rcx + 8], rdx
	mov	rax, qword ptr [rax + 0x80]
	mov	qword ptr [rcx], rax
.label_76:
	add	rsp, 0x18
	ret	
.label_81:
	mov	rdi, rbx
	call	fileno
	mov	edi, eax
	mov	rsi, rbp
	mov	edx, r14d
	call	lseek
	mov	rcx, rax
	mov	eax, 0xffffffff
	cmp	rcx, -1
	je	.label_79
	and	byte ptr [rbx], 0xef
	mov	qword ptr [rbx + 0x90], rcx
	xor	eax, eax
.label_79:
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x4024f4
	.globl sub_4024f4
	.type sub_4024f4, @function
sub_4024f4:

	nop	
	.section	.text
	.align	16
	#Procedure 0x4024f6

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
	jne	.label_80
	mov	rax, qword ptr [rbx + 0x28]
	cmp	rax, qword ptr [rbx + 0x20]
	jne	.label_80
	cmp	qword ptr [rbx + 0x48], 0
	je	.label_81
.label_80:
	mov	rdi, rbx
	mov	rsi, rbp
	mov	edx, r14d
	pop	rbx
	pop	r14
	pop	rbp
	jmp	fseeko
	.section	.text
	.align	16
	#Procedure 0x402530
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
	#Procedure 0x402548
	.globl sub_402548
	.type sub_402548, @function
sub_402548:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x402550
	.globl quotearg_colon_mem
	.type quotearg_colon_mem, @function
quotearg_colon_mem:

	sub	rsp, 0x38
	mov	rax, rsi
	mov	rdx, rdi
	mov	rcx, qword ptr [rip + label_82]
	mov	qword ptr [rsp + 0x30], rcx
	movups	xmm0, xmmword ptr [rip + label_83]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0, xmmword ptr [rip + label_84]
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
	#Procedure 0x4025a4
	.globl sub_4025a4
	.type sub_4025a4, @function
sub_4025a4:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4025b0
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
	#Procedure 0x4025c9
	.globl sub_4025c9
	.type sub_4025c9, @function
sub_4025c9:

	nop	dword ptr [rax]
.label_87:
	mov	eax, ebp
	add	rsp, 8
	pop	rbx
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x4025d9
	.globl sub_4025d9
	.type sub_4025d9, @function
sub_4025d9:

	nop	word ptr [rax + rax]
.label_86:
	mov	edi, eax
	call	close
.label_85:
	mov	rdi, rbx
	call	i_ring_empty
	test	al, al
	jne	.label_87
	mov	rdi, rbx
	call	i_ring_pop
	test	eax, eax
	jns	.label_86
	jmp	.label_85
	.section	.text
	.align	16
	#Procedure 0x402600

	.globl restore_initial_cwd
	.type restore_initial_cwd, @function
restore_initial_cwd:
	push	rbp
	push	rbx
	push	rax
	mov	rbx, rdi
	mov	eax, dword ptr [rbx + 0x48]
	test	al, 4
	jne	.label_88
	test	ah, 2
	jne	.label_91
	mov	edi, dword ptr [rbx + 0x28]
	call	fchdir
	test	eax, eax
	setne	al
	jmp	.label_89
.label_91:
	mov	esi, dword ptr [rbx + 0x2c]
	lea	rdi, [rbx + 0x60]
	call	i_ring_push
	test	eax, eax
	js	.label_90
	mov	edi, eax
	call	close
.label_90:
	mov	dword ptr [rbx + 0x2c], 0xffffff9c
.label_88:
	xor	eax, eax
.label_89:
	movzx	ebp, al
	add	rbx, 0x60
	jmp	.label_85
	.section	.text
	.align	16
	#Procedure 0x40264a
	.globl sub_40264a
	.type sub_40264a, @function
sub_40264a:

	nop	word ptr [rax + rax]
.label_94:
	xor	r15d, r15d
	test	r14, r14
	je	.label_92
	mov	rdi, r14
	jmp	.label_93
.label_92:
	mov	rax, r15
	pop	rbx
	pop	r14
	pop	r15
	ret	
.label_95:
	mov	rdi, rbx
.label_93:
	pop	rbx
	pop	r14
	pop	r15
	jmp	xstrdup
	.section	.text
	.align	16
	#Procedure 0x402673
	.globl sub_402673
	.type sub_402673, @function
sub_402673:

	nop	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40267d

	.globl user_group_str
	.type user_group_str, @function
user_group_str:
	push	r15
	push	r14
	push	rbx
	mov	r14, rsi
	mov	rbx, rdi
	test	rbx, rbx
	je	.label_94
	test	r14, r14
	je	.label_95
	mov	rdi, rbx
	call	strlen
	mov	r15, rax
	mov	rdi, r14
	call	strlen
	lea	rdi, [r15 + rax + 2]
	call	xmalloc
	mov	r15, rax
	mov	rdi, r15
	mov	rsi, rbx
	call	stpcpy
	mov	word ptr [rax], 0x3a
	lea	rdi, [rax + 1]
	mov	rsi, r14
	call	stpcpy
	jmp	.label_92
	.section	.text
	.align	16
	#Procedure 0x4026d0
	.globl quotearg_char
	.type quotearg_char, @function
quotearg_char:

	sub	rsp, 0x38
	mov	ecx, esi
	mov	rax, rdi
	mov	rdx, qword ptr [rip + label_82]
	mov	qword ptr [rsp + 0x30], rdx
	movups	xmm0, xmmword ptr [rip + label_83]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0, xmmword ptr [rip + label_84]
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
	#Procedure 0x40273f
	.globl sub_40273f
	.type sub_40273f, @function
sub_40273f:

	nop	
	.section	.text
	.align	16
	#Procedure 0x402740

	.globl main
	.type main, @function
main:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0xd8
	mov	r13, rsi
	mov	ebp, edi
	mov	dword ptr [rsp + 0xc], 0xffffffff
	mov	dword ptr [rsp + 8], 0xffffffff
	mov	dword ptr [rsp + 0x14], 0xffffffff
	mov	dword ptr [rsp + 0x10], 0xffffffff
	mov	rdi, qword ptr [r13]
	call	set_program_name
	mov	edi, 6
	mov	esi, OFFSET FLAT:label_117
	call	setlocale
	mov	edi, OFFSET FLAT:label_99
	mov	esi, OFFSET FLAT:label_100
	call	bindtextdomain
	mov	edi, OFFSET FLAT:label_99
	call	textdomain
	mov	edi, OFFSET FLAT:close_stdout
	call	atexit
	lea	rdi, [rsp + 0x20]
	call	chopt_init
	mov	eax, 0x10
	mov	r12d, 0xffffffff
	xor	ecx, ecx
	mov	qword ptr [rsp + 0x18], rcx
	lea	r15, [rsp + 0x10]
	jmp	.label_96
.label_103:
	mov	qword ptr [rsp + 0x18], rax
	mov	eax, r14d
	nop	dword ptr [rax]
.label_96:
	mov	r14d, eax
	mov	edx, OFFSET FLAT:label_125
	mov	ecx, OFFSET FLAT:long_options
	xor	r8d, r8d
	mov	edi, ebp
	mov	rsi, r13
	call	getopt_long
	lea	ecx, [rax + 1]
	cmp	ecx, 0x85
	ja	.label_128
	mov	eax, 0x11
	jmp	qword ptr [(rcx * 8) + label_98]
.label_1104:
	mov	eax, 2
	jmp	.label_96
.label_1105:
	mov	eax, 0x10
	jmp	.label_96
.label_1106:
	mov	byte ptr [rsp + 0x24], 1
	mov	eax, r14d
	jmp	.label_96
.label_1107:
	mov	dword ptr [rsp + 0x20], 1
	mov	eax, r14d
	jmp	.label_96
.label_1108:
	mov	byte ptr [rsp + 0x31], 1
	mov	eax, r14d
	jmp	.label_96
.label_1109:
	xor	r12d, r12d
	mov	eax, r14d
	jmp	.label_96
.label_1110:
	mov	dword ptr [rsp + 0x20], 0
	mov	eax, r14d
	jmp	.label_96
.label_1111:
	mov	r12d, 1
	mov	eax, r14d
	jmp	.label_96
.label_1112:
	mov	rdi, qword ptr [rip + optarg]
	xor	ecx, ecx
	xor	r8d, r8d
	lea	rsi, [rsp + 0x14]
	mov	rdx, r15
	call	parse_user_spec
	mov	rbx, rax
	test	rbx, rbx
	mov	eax, r14d
	je	.label_96
	jmp	.label_101
.label_1113:
	xor	eax, eax
	jmp	.label_103
.label_1114:
	mov	al, 1
	jmp	.label_103
.label_1115:
	mov	rax, qword ptr [rip + optarg]
	mov	qword ptr [rip + reference_file],  rax
	mov	eax, r14d
	jmp	.label_96
.label_1103:
	mov	r15d, 0x10
	cmp	byte ptr [rsp + 0x24], 0
	je	.label_111
	cmp	r14d, 0x10
	jne	.label_115
	cmp	r12d, 1
	mov	r12d, 0
	jne	.label_111
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_118
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	mov	edi, 1
	xor	esi, esi
	xor	eax, eax
	mov	rdx, rcx
	call	error
.label_115:
	mov	r15d, r14d
.label_111:
	test	r12d, r12d
	setne	byte ptr [rsp + 0x30]
	movsxd	rax, dword ptr [rip + optind]
	mov	ecx, ebp
	sub	ecx, eax
	mov	rsi, qword ptr [rip + reference_file]
	cmp	rsi, 1
	mov	edx, 1
	adc	edx, 0
	cmp	ecx, edx
	jl	.label_129
	test	rsi, rsi
	je	.label_108
	lea	rdx, [rsp + 0x48]
	mov	edi, 1
	call	__xstat
	test	eax, eax
	jne	.label_113
	mov	edi, dword ptr [rsp + 0x64]
	mov	dword ptr [rsp + 0xc], edi
	mov	eax, dword ptr [rsp + 0x68]
	mov	dword ptr [rsp + 8], eax
	call	uid_to_name
	mov	qword ptr [rsp + 0x38], rax
	mov	edi, dword ptr [rsp + 0x68]
	call	gid_to_name
	mov	qword ptr [rsp + 0x40], rax
	jmp	.label_109
.label_108:
	mov	rdi, qword ptr [r13 + rax*8]
	lea	rcx, [rsp + 0x38]
	lea	r8, [rsp + 0x40]
	lea	rsi, [rsp + 0xc]
	lea	rdx, [rsp + 8]
	call	parse_user_spec
	mov	rbx, rax
	test	rbx, rbx
	jne	.label_102
	cmp	qword ptr [rsp + 0x38], 0
	jne	.label_106
	mov	rax, qword ptr [rsp + 0x40]
	test	rax, rax
	je	.label_106
	mov	edi, OFFSET FLAT:label_117
	call	xstrdup
	mov	qword ptr [rsp + 0x38], rax
.label_106:
	inc	dword ptr [rip + optind]
.label_109:
	mov	rax, qword ptr [rsp + 0x18]
	test	al, al
	je	.label_104
	mov	al, byte ptr [rsp + 0x24]
	test	al, al
	je	.label_104
	mov	edi, OFFSET FLAT:main.dev_ino_buf
	call	get_root_dev_ino
	mov	qword ptr [rsp + 0x28], rax
	test	rax, rax
	je	.label_124
.label_104:
	or	r15d, 0x400
	movsxd	rax, dword ptr [rip + optind]
	lea	rdi, [r13 + rax*8]
	mov	edx, dword ptr [rsp + 0xc]
	mov	ecx, dword ptr [rsp + 8]
	mov	r8d, dword ptr [rsp + 0x14]
	mov	r9d, dword ptr [rsp + 0x10]
	lea	rax, [rsp + 0x20]
	mov	qword ptr [rsp], rax
	mov	esi, r15d
	call	chown_files
	movzx	eax, al
	xor	eax, 1
	add	rsp, 0xd8
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_128:
	cmp	eax, 0xffffff7d
	je	.label_112
	cmp	eax, 0xffffff7e
	jne	.label_114
	xor	edi, edi
	call	usage
.label_114:
	mov	edi, 1
	call	usage
.label_112:
	mov	rdi, qword ptr [rip + stdout]
	mov	rcx, qword ptr [rip + Version]
	mov	qword ptr [rsp], 0
	mov	esi, OFFSET FLAT:label_119
	mov	edx, OFFSET FLAT:label_120
	mov	r8d, OFFSET FLAT:label_121
	mov	r9d, OFFSET FLAT:label_122
	xor	eax, eax
	call	version_etc
	xor	edi, edi
	call	exit
.label_101:
	mov	rdi, qword ptr [rip + optarg]
	jmp	.label_127
.label_129:
	xor	edi, edi
	cmp	eax, ebp
	jge	.label_105
	mov	esi, OFFSET FLAT:label_107
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
	movsxd	rax, ebp
	mov	rdi, qword ptr [r13 + rax*8 - 8]
	call	quote
	mov	rcx, rax
	xor	edi, edi
	xor	esi, esi
	xor	eax, eax
	mov	rdx, rbx
	call	error
	mov	edi, 1
	call	usage
.label_113:
	call	__errno_location
	mov	ebx, dword ptr [rax]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_123
	mov	edx, 5
	call	dcgettext
	mov	rbp, rax
	mov	rsi, qword ptr [rip + reference_file]
	mov	edi, 4
	jmp	.label_126
.label_124:
	call	__errno_location
	mov	ebx, dword ptr [rax]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_123
	mov	edx, 5
	call	dcgettext
	mov	rbp, rax
	mov	edi, 4
	mov	esi, OFFSET FLAT:label_110
.label_126:
	call	quotearg_style
	mov	rcx, rax
	mov	edi, 1
	xor	eax, eax
	mov	esi, ebx
	mov	rdx, rbp
	call	error
.label_105:
	mov	esi, OFFSET FLAT:label_116
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
.label_102:
	movsxd	rax, dword ptr [rip + optind]
	mov	rdi, qword ptr [r13 + rax*8]
.label_127:
	call	quote
	mov	rbp, rax
	mov	edi, 1
	xor	esi, esi
	mov	edx, OFFSET FLAT:label_97
	xor	eax, eax
	mov	rcx, rbx
	mov	r8, rbp
	call	error
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x402bb0

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
	jae	.label_140
	mov	qword ptr [rsp], rcx
	call	__errno_location
	mov	r15, rax
	mov	dword ptr [r15], 0
	call	__ctype_b_loc
	mov	rcx, qword ptr [rax]
	mov	rdx, rbx
	nop	word ptr cs:[rax + rax]
.label_130:
	movzx	eax, byte ptr [rdx]
	inc	rdx
	test	byte ptr [rcx + rax*2 + 1], 0x20
	jne	.label_130
	test	rbp, rbp
	lea	rsi, [rsp + 0x10]
	cmovne	rsi, rbp
	mov	r13d, 4
	cmp	al, 0x2d
	je	.label_132
	mov	rdi, rbx
	mov	edx, r12d
	mov	qword ptr [rsp + 8], rsi
	call	strtoul
	mov	rbp, rax
	mov	rax, qword ptr [rsp + 8]
	mov	r12, qword ptr [rax]
	cmp	r12, rbx
	je	.label_148
	mov	eax, dword ptr [r15]
	xor	ebx, ebx
	test	eax, eax
	je	.label_147
	cmp	eax, 0x22
	jne	.label_132
	mov	ebx, 1
.label_147:
	test	r14, r14
	jne	.label_150
	jmp	.label_135
.label_148:
	test	r14, r14
	je	.label_132
	movsx	esi, byte ptr [rbx]
	test	esi, esi
	je	.label_132
	mov	rdi, r14
	call	strchr
	xor	ebx, ebx
	mov	ebp, 1
	test	rax, rax
	je	.label_132
.label_150:
	movsx	r13d, byte ptr [r12]
	test	r13d, r13d
	je	.label_135
	mov	rdi, r14
	mov	esi, r13d
	call	strchr
	test	rax, rax
	je	.label_139
	mov	r15d, 1
	mov	esi, 0x400
	lea	eax, [r13 - 0x45]
	cmp	eax, 0x2f
	ja	.label_134
	movabs	rdx, 0x814400308945
	bt	rdx, rax
	jae	.label_134
	mov	esi, 0x30
	mov	rdi, r14
	call	strchr
	mov	r15d, 1
	mov	esi, 0x400
	test	rax, rax
	je	.label_134
	movsx	eax, byte ptr [r12 + 1]
	mov	r15d, 1
	mov	esi, 0x400
	cmp	eax, 0x42
	je	.label_149
	cmp	eax, 0x44
	je	.label_149
	cmp	eax, 0x69
	jne	.label_134
	xor	eax, eax
	cmp	byte ptr [r12 + 2], 0x42
	sete	al
	lea	r15, [rax + rax + 1]
	mov	esi, 0x400
	jmp	.label_134
.label_149:
	mov	r15d, 2
	mov	esi, 0x3e8
.label_134:
	add	r13d, -0x42
	cmp	r13d, 0x35
	ja	.label_139
	xor	eax, eax
	jmp	qword ptr [(r13 * 8) + label_146]
.label_1118:
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
	jmp	.label_136
.label_139:
	mov	rax, qword ptr [rsp]
	mov	qword ptr [rax], rbp
	or	ebx, 2
	jmp	.label_137
.label_1119:
	mov	rdi, -1
	mov	rax, -1
	xor	edx, edx
	div	rsi
	imul	rsi, rbp
	cmp	rax, rbp
	cmovb	rsi, rdi
	sbb	eax, eax
	jmp	.label_141
.label_1120:
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
	jmp	.label_136
.label_1122:
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
	jmp	.label_136
.label_1116:
	xor	eax, eax
	mov	rdx, rbp
	shr	rdx, 0x36
	setne	al
	shl	rbp, 0xa
	jmp	.label_131
.label_1117:
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
.label_136:
	and	dl, 1
	movzx	eax, dl
	jmp	.label_138
.label_1121:
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
	jmp	.label_138
.label_1123:
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
	jmp	.label_145
.label_1124:
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
.label_145:
	movzx	eax, dl
.label_141:
	and	eax, 1
.label_138:
	mov	rbp, rsi
.label_133:
	or	eax, ebx
	lea	rcx, [r12 + r15]
	mov	rdx, qword ptr [rsp + 8]
	mov	qword ptr [rdx], rcx
	lea	ebx, [rax + 2]
	cmp	byte ptr [r12 + r15], 0
	cmove	ebx, eax
.label_135:
	mov	rax, qword ptr [rsp]
	mov	qword ptr [rax], rbp
.label_137:
	mov	r13d, ebx
.label_132:
	mov	eax, r13d
	add	rsp, 0x18
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_1125:
	xor	eax, eax
	mov	rdx, rbp
	shr	rdx, 0x37
	setne	al
	shl	rbp, 9
.label_131:
	cmp	rdx, 1
	sbb	rdx, rdx
	not	rdx
	or	rbp, rdx
	jmp	.label_133
.label_1126:
	lea	rax, [rbp + rbp]
	test	rbp, rbp
	mov	rcx, -1
	cmovns	rcx, rax
	shr	rbp, 0x3f
	mov	eax, ebp
	mov	rbp, rcx
	jmp	.label_133
.label_140:
	mov	edi, OFFSET FLAT:label_142
	mov	esi, OFFSET FLAT:label_143
	mov	edx, 0x54
	mov	ecx, OFFSET FLAT:label_144
	call	__assert_fail
	.section	.text
	.align	16
	#Procedure 0x4031cd
	.globl sub_4031cd
	.type sub_4031cd, @function
sub_4031cd:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x4031d0

	.globl i_ring_init
	.type i_ring_init, @function
i_ring_init:
	mov	byte ptr [rdi + 0x1c], 1
	mov	dword ptr [rdi + 0x14], 0
	mov	dword ptr [rdi + 0x18], 0
	movd	xmm0, esi
	pshufd	xmm0, xmm0, 0
	movdqu	xmmword ptr [rdi], xmm0
	mov	dword ptr [rdi + 0x10], esi
	ret	
	.section	.text
	.align	16
	#Procedure 0x4031f3
	.globl sub_4031f3
	.type sub_4031f3, @function
sub_4031f3:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x403200
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
	#Procedure 0x40320f
	.globl sub_40320f
	.type sub_40320f, @function
sub_40320f:

	nop	
	.section	.text
	.align	16
	#Procedure 0x403210
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
	#Procedure 0x403246
	.globl sub_403246
	.type sub_403246, @function
sub_403246:

	nop	word ptr cs:[rax + rax]
.label_152:
	mov	rdi, rbx
	pop	rbx
	pop	r14
	pop	rbp
	jmp	fclose
	.section	.text
	.align	16
	#Procedure 0x40325c
	.globl sub_40325c
	.type sub_40325c, @function
sub_40325c:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x403268

	.globl rpl_fclose
	.type rpl_fclose, @function
rpl_fclose:
	push	rbp
	push	r14
	push	rbx
	mov	rbx, rdi
	call	fileno
	test	eax, eax
	js	.label_152
	mov	rdi, rbx
	call	__freading
	test	eax, eax
	je	.label_151
	mov	rdi, rbx
	call	fileno
	xor	esi, esi
	mov	edx, 1
	mov	edi, eax
	call	lseek
	cmp	rax, -1
	je	.label_152
.label_151:
	mov	rdi, rbx
	call	rpl_fflush
	test	eax, eax
	je	.label_152
	call	__errno_location
	mov	r14, rax
	mov	ebp, dword ptr [r14]
	mov	rdi, rbx
	call	fclose
	test	ebp, ebp
	je	.label_153
	mov	dword ptr [r14], ebp
	mov	eax, 0xffffffff
.label_153:
	pop	rbx
	pop	r14
	pop	rbp
	ret	
.label_154:
	push	rax
	call	abort
	.section	.text
	.align	16
	#Procedure 0x4032d6
	.globl sub_4032d6
	.type sub_4032d6, @function
sub_4032d6:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4032db
	.globl set_custom_quoting
	.type set_custom_quoting, @function
set_custom_quoting:

	test	rdi, rdi
	mov	eax, OFFSET FLAT:default_quoting_options
	cmovne	rax, rdi
	mov	dword ptr [rax], 0xa
	test	rsi, rsi
	je	.label_154
	test	rdx, rdx
	je	.label_154
	mov	qword ptr [rax + 0x28], rsi
	mov	qword ptr [rax + 0x30], rdx
	ret	
.label_156:
	mov	edi, dword ptr [rip + exit_failure]
	call	_exit
	.section	.text
	.align	16
	#Procedure 0x40330b

	.globl close_stdout
	.type close_stdout, @function
close_stdout:
	push	rbp
	push	rbx
	push	rax
	mov	rdi, qword ptr [rip + stdout]
	call	close_stream
	test	eax, eax
	je	.label_159
	mov	bl, byte ptr [rip + ignore_EPIPE]
	call	__errno_location
	mov	rbp, rax
	cmp	bl, 0
	je	.label_157
	cmp	dword ptr [rbp], 0x20
	jne	.label_157
.label_159:
	mov	rdi, qword ptr [rip + stderr]
	call	close_stream
	test	eax, eax
	jne	.label_156
	add	rsp, 8
	pop	rbx
	pop	rbp
	ret	
.label_158:
	call	quotearg_colon
	mov	rcx, rax
	xor	edi, edi
	mov	edx, OFFSET FLAT:label_97
	xor	eax, eax
	mov	esi, ebp
	mov	r8, rbx
	call	error
	mov	edi, dword ptr [rip + exit_failure]
	call	_exit
	nop	dword ptr [rax]
	nop	dword ptr [rax + rax]
.label_157:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_160
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
	mov	rdi, qword ptr [rip + file_name]
	test	rdi, rdi
	mov	ebp, dword ptr [rbp]
	jne	.label_158
	xor	edi, edi
	mov	edx, OFFSET FLAT:label_155
	xor	eax, eax
	mov	esi, ebp
	mov	rcx, rbx
	call	error
	mov	edi, dword ptr [rip + exit_failure]
	call	_exit
	.section	.text
	.align	16
	#Procedure 0x4033c0

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
	#Procedure 0x4033d7
	.globl sub_4033d7
	.type sub_4033d7, @function
sub_4033d7:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4033e0

	.globl quotearg_colon
	.type quotearg_colon, @function
quotearg_colon:
	sub	rsp, 0x38
	mov	rax, rdi
	mov	rcx, qword ptr [rip + label_82]
	mov	qword ptr [rsp + 0x30], rcx
	movups	xmm0, xmmword ptr [rip + label_83]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0, xmmword ptr [rip + label_84]
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
	#Procedure 0x403435
	.globl sub_403435
	.type sub_403435, @function
sub_403435:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x403440

	.globl locale_charset
	.type locale_charset, @function
locale_charset:
	push	rax
	mov	edi, 0xe
	call	rpl_nl_langinfo
	test	rax, rax
	mov	ecx, OFFSET FLAT:label_117
	cmovne	rcx, rax
	cmp	byte ptr [rcx], 0
	mov	eax, OFFSET FLAT:label_161
	cmovne	rax, rcx
	pop	rcx
	ret	
	.section	.text
	.align	16
	#Procedure 0x403465
	.globl sub_403465
	.type sub_403465, @function
sub_403465:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x403470

	.globl umaxtostr
	.type umaxtostr, @function
umaxtostr:
	mov	rcx, rdi
	mov	byte ptr [rsi + 0x14], 0
	add	rsi, 0x14
	movabs	r8, 0xcccccccccccccccd
	nop	word ptr cs:[rax + rax]
.label_162:
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
	ja	.label_162
	mov	rax, rsi
	ret	
	.section	.text
	.align	16
	#Procedure 0x4034bb
	.globl sub_4034bb
	.type sub_4034bb, @function
sub_4034bb:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4034c0

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
	je	.label_163
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
.label_163:
	call	abort
	.section	.text
	.align	16
	#Procedure 0x403555
	.globl sub_403555
	.type sub_403555, @function
sub_403555:

	nop	word ptr cs:[rax + rax]
.label_168:
	cmp	byte ptr [rbx], 0x60
	mov	ecx, OFFSET FLAT:label_164
	mov	eax, OFFSET FLAT:label_165
	jmp	.label_166
	.section	.text
	.align	16
	#Procedure 0x40356f
	.globl sub_40356f
	.type sub_40356f, @function
sub_40356f:

	nop	word ptr cs:[rax + rax]
.label_173:
	movsx	ecx, byte ptr [rax + 1]
	and	ecx, 0xffffffdf
	cmp	ecx, 0x42
	jne	.label_167
	cmp	byte ptr [rax + 2], 0x31
	jne	.label_167
	cmp	byte ptr [rax + 3], 0x38
	jne	.label_167
	cmp	byte ptr [rax + 4], 0x30
	jne	.label_167
	cmp	byte ptr [rax + 5], 0x33
	jne	.label_167
	cmp	byte ptr [rax + 6], 0x30
	jne	.label_167
	cmp	byte ptr [rax + 7], 0
	je	.label_168
.label_167:
	cmp	ebp, 9
	mov	ecx, OFFSET FLAT:label_169
	mov	eax, OFFSET FLAT:label_170
.label_166:
	cmove	rax, rcx
.label_174:
	add	rsp, 8
	pop	rbx
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x4035c2

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
	jne	.label_174
	call	locale_charset
	movsx	ecx, byte ptr [rax]
	and	ecx, 0xffffffdf
	cmp	ecx, 0x47
	je	.label_173
	cmp	ecx, 0x55
	jne	.label_167
	movsx	ecx, byte ptr [rax + 1]
	and	ecx, 0xffffffdf
	cmp	ecx, 0x54
	jne	.label_167
	movsx	ecx, byte ptr [rax + 2]
	and	ecx, 0xffffffdf
	cmp	ecx, 0x46
	jne	.label_167
	cmp	byte ptr [rax + 3], 0x2d
	jne	.label_167
	cmp	byte ptr [rax + 4], 0x38
	jne	.label_167
	cmp	byte ptr [rax + 5], 0
	jne	.label_167
	cmp	byte ptr [rbx], 0x60
	mov	ecx, OFFSET FLAT:label_171
	mov	eax, OFFSET FLAT:label_172
	jmp	.label_166
	.section	.text
	.align	16
	#Procedure 0x403630
	.globl quote_n_mem
	.type quote_n_mem, @function
quote_n_mem:

	mov	ecx, OFFSET FLAT:quote_quoting_options
	jmp	quotearg_n_options
	.section	.text
	.align	16
	#Procedure 0x40363a
	.globl sub_40363a
	.type sub_40363a, @function
sub_40363a:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x403640

	.globl hash_free
	.type hash_free, @function
hash_free:
	push	r15
	push	r14
	push	rbx
	mov	r14, rdi
	cmp	qword ptr [r14 + 0x40], 0
	je	.label_175
	cmp	qword ptr [r14 + 0x20], 0
	je	.label_175
	mov	r15, qword ptr [r14]
	mov	rax, qword ptr [r14 + 8]
	jmp	.label_181
	.section	.text
	.align	16
	#Procedure 0x40365f
	.globl sub_40365f
	.type sub_40365f, @function
sub_40365f:

	nop	
.label_179:
	add	r15, 0x10
.label_181:
	cmp	r15, rax
	jae	.label_175
	mov	rdi, qword ptr [r15]
	test	rdi, rdi
	je	.label_179
	test	r15, r15
	je	.label_179
	call	qword ptr [r14 + 0x40]
	mov	rbx, qword ptr [r15 + 8]
	jmp	.label_185
.label_178:
	mov	rdi, qword ptr [rbx]
	call	qword ptr [r14 + 0x40]
	mov	rbx, qword ptr [rbx + 8]
.label_185:
	test	rbx, rbx
	jne	.label_178
	mov	rax, qword ptr [r14 + 8]
	jmp	.label_179
.label_175:
	mov	r15, qword ptr [r14]
	mov	rax, qword ptr [r14 + 8]
	jmp	.label_176
	.section	.text
	.align	16
	#Procedure 0x40369f
	.globl sub_40369f
	.type sub_40369f, @function
sub_40369f:

	nop	
.label_180:
	add	r15, 0x10
.label_176:
	cmp	r15, rax
	jae	.label_183
	mov	rdi, qword ptr [r15 + 8]
	test	rdi, rdi
	je	.label_180
	nop	word ptr cs:[rax + rax]
.label_177:
	mov	rbx, qword ptr [rdi + 8]
	call	free
	test	rbx, rbx
	mov	rdi, rbx
	jne	.label_177
	mov	rax, qword ptr [r14 + 8]
	jmp	.label_180
.label_183:
	mov	rdi, qword ptr [r14 + 0x48]
	test	rdi, rdi
	je	.label_182
.label_184:
	mov	rbx, qword ptr [rdi + 8]
	call	free
	test	rbx, rbx
	mov	rdi, rbx
	jne	.label_184
.label_182:
	mov	rdi, qword ptr [r14]
	call	free
	mov	rdi, r14
	pop	rbx
	pop	r14
	pop	r15
	jmp	free
	.section	.text
	.align	16
	#Procedure 0x403706
	.globl sub_403706
	.type sub_403706, @function
sub_403706:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x403710

	.globl dev_type_compare
	.type dev_type_compare, @function
dev_type_compare:
	mov	rax, qword ptr [rdi]
	cmp	rax, qword ptr [rsi]
	sete	al
	ret	
	.section	.text
	.align	16
	#Procedure 0x40371a
	.globl sub_40371a
	.type sub_40371a, @function
sub_40371a:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x403720

	.globl xalloc_die
	.type xalloc_die, @function
xalloc_die:
	push	rbx
	mov	ebx, dword ptr [rip + exit_failure]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_186
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	xor	esi, esi
	mov	edx, OFFSET FLAT:label_155
	xor	eax, eax
	mov	edi, ebx
	call	error
	call	abort
.label_187:
	call	abort
	.section	.text
	.align	16
	#Procedure 0x403755
	.globl sub_403755
	.type sub_403755, @function
sub_403755:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x403759

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
	je	.label_187
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
	#Procedure 0x4037c0
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
	#Procedure 0x4037cf
	.globl sub_4037cf
	.type sub_4037cf, @function
sub_4037cf:

	nop	
	.section	.text
	.align	16
	#Procedure 0x4037d0
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
	#Procedure 0x403803
	.globl sub_403803
	.type sub_403803, @function
sub_403803:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x403810

	.globl dup_safer
	.type dup_safer, @function
dup_safer:
	xor	esi, esi
	mov	edx, 3
	xor	eax, eax
	jmp	rpl_fcntl
	.section	.text
	.align	16
	#Procedure 0x40381e
	.globl sub_40381e
	.type sub_40381e, @function
sub_40381e:

	nop	
	.section	.text
	.align	16
	#Procedure 0x403820
	.globl hash_print_statistics
	.type hash_print_statistics, @function
hash_print_statistics:

	push	r15
	push	r14
	push	r12
	push	rbx
	push	rax
	mov	r15, rsi
	mov	rcx, qword ptr [rdi + 0x20]
	mov	r12, qword ptr [rdi + 0x10]
	mov	r14, qword ptr [rdi + 0x18]
	mov	rax, qword ptr [rdi]
	mov	rdi, qword ptr [rdi + 8]
	xor	ebx, ebx
	cmp	rax, rdi
	jae	.label_188
	mov	rdx, rax
	not	rdx
	add	rdi, rdx
	shr	rdi, 4
	lea	rsi, [rdi + 1]
	mov	r8d, esi
	and	r8d, 1
	xor	ebx, ebx
	test	rdi, rdi
	je	.label_192
	sub	rsi, r8
	xor	ebx, ebx
	nop	dword ptr [rax]
.label_191:
	cmp	qword ptr [rax], 0
	je	.label_200
	xor	edi, edi
	mov	rdx, rax
	nop	dword ptr [rax + rax]
.label_193:
	mov	rdx, qword ptr [rdx + 8]
	inc	rdi
	test	rdx, rdx
	jne	.label_193
	cmp	rdi, rbx
	cmova	rbx, rdi
.label_200:
	cmp	qword ptr [rax + 0x10], 0
	je	.label_201
	lea	rdx, [rax + 0x10]
	xor	edi, edi
.label_194:
	mov	rdx, qword ptr [rdx + 8]
	inc	rdi
	test	rdx, rdx
	jne	.label_194
	cmp	rdi, rbx
	cmova	rbx, rdi
.label_201:
	add	rax, 0x20
	add	rsi, -2
	jne	.label_191
.label_192:
	test	r8, r8
	je	.label_188
	cmp	qword ptr [rax], 0
	je	.label_188
	xor	edx, edx
	nop	word ptr [rax + rax]
.label_189:
	mov	rax, qword ptr [rax + 8]
	inc	rdx
	test	rax, rax
	jne	.label_189
	cmp	rdx, rbx
	cmova	rbx, rdx
.label_188:
	mov	esi, 1
	mov	edx, OFFSET FLAT:label_190
	xor	eax, eax
	mov	rdi, r15
	call	__fprintf_chk
	mov	esi, 1
	mov	edx, OFFSET FLAT:label_202
	xor	eax, eax
	mov	rdi, r15
	mov	rcx, r12
	call	__fprintf_chk
	movq	xmm1, r14
	movdqa	xmm2, xmmword ptr [rip + label_196]
	punpckldq	xmm1, xmm2
	movapd	xmm3, xmmword ptr [rip + label_197]
	subpd	xmm1, xmm3
	pshufd	xmm0, xmm1, 0x4e
	addpd	xmm0, xmm1
	mulsd	xmm0, qword ptr [rip + label_198]
	movq	xmm1, r12
	punpckldq	xmm1, xmm2
	subpd	xmm1, xmm3
	pshufd	xmm2, xmm1, 0x4e
	addpd	xmm2, xmm1
	divsd	xmm0, xmm2
	mov	esi, 1
	mov	edx, OFFSET FLAT:label_199
	mov	al, 1
	mov	rdi, r15
	mov	rcx, r14
	call	__fprintf_chk
	mov	esi, 1
	mov	edx, OFFSET FLAT:label_195
	xor	eax, eax
	mov	rdi, r15
	mov	rcx, rbx
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	jmp	__fprintf_chk
	.section	.text
	.align	16
	#Procedure 0x40398f
	.globl sub_40398f
	.type sub_40398f, @function
sub_40398f:

	nop	
	.section	.text
	.align	16
	#Procedure 0x403990

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
	je	.label_209
	mov	edx, OFFSET FLAT:label_218
	xor	eax, eax
	mov	rdi, r14
	mov	r8, rbx
	call	__fprintf_chk
	jmp	.label_205
.label_209:
	mov	edx, OFFSET FLAT:label_207
	xor	eax, eax
	mov	rdi, r14
	mov	rcx, rbx
	mov	r8, r9
	call	__fprintf_chk
.label_205:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_211
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
	mov	esi, OFFSET FLAT:label_208
	mov	edx, 5
	call	dcgettext
	mov	rdi, rax
	mov	rsi, r14
	call	fputs_unlocked
	cmp	r12, 9
	ja	.label_213
	jmp	qword ptr [(r12 * 8) + label_214]
.label_1050:
	add	rsp, 8
	jmp	.label_206
.label_213:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_221
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
	jmp	.label_206
.label_1051:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_212
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
.label_1052:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_203
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
.label_1053:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_219
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
.label_1054:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_216
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
	jmp	.label_206
.label_1055:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_215
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
	jmp	.label_206
.label_1056:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_217
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
	jmp	.label_206
.label_1057:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_220
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
	jmp	.label_206
.label_1059:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_204
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
	jmp	.label_206
.label_1058:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_210
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
.label_206:
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	ret	
	.section	.text
	.align	16
	#Procedure 0x403ce8
	.globl sub_403ce8
	.type sub_403ce8, @function
sub_403ce8:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x403cf0

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
	js	.label_223
	mov	edi, ebp
	call	fdopendir
	mov	rbx, rax
	test	rbx, rbx
	je	.label_222
	mov	dword ptr [r14], ebp
	jmp	.label_223
.label_222:
	call	__errno_location
	mov	rbx, rax
	mov	r14d, dword ptr [rbx]
	mov	edi, ebp
	call	close
	mov	dword ptr [rbx], r14d
	xor	ebx, ebx
.label_223:
	mov	rax, rbx
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x403d3f
	.globl sub_403d3f
	.type sub_403d3f, @function
sub_403d3f:

	nop	
	.section	.text
	.align	16
	#Procedure 0x403d40

	.globl hash_delete
	.type hash_delete, @function
hash_delete:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	push	rax
	mov	r14, rsi
	mov	r15, rdi
	mov	rsi, qword ptr [r15 + 0x10]
	mov	rdi, r14
	call	qword ptr [r15 + 0x30]
	mov	rbx, rax
	cmp	rbx, qword ptr [r15 + 0x10]
	jae	.label_241
	mov	rbp, qword ptr [r15]
	shl	rbx, 4
	mov	rsi, qword ptr [rbp + rbx]
	xor	r12d, r12d
	test	rsi, rsi
	je	.label_226
	lea	r13, [rbp + rbx]
	cmp	rsi, r14
	je	.label_224
	mov	rdi, r14
	call	qword ptr [r15 + 0x38]
	test	al, al
	je	.label_229
	mov	r14, qword ptr [r13]
.label_224:
	mov	rax, qword ptr [rbp + rbx + 8]
	test	rax, rax
	je	.label_232
	movups	xmm0, xmmword ptr [rax]
	movups	xmmword ptr [r13], xmm0
	mov	qword ptr [rax], 0
	mov	rcx, qword ptr [r15 + 0x48]
	mov	qword ptr [rax + 8], rcx
	mov	qword ptr [r15 + 0x48], rax
	jmp	.label_228
.label_229:
	mov	rax, qword ptr [rbp + rbx + 8]
	xor	r12d, r12d
	test	rax, rax
	je	.label_226
	lea	rbx, [rbp + rbx + 8]
	xor	r12d, r12d
	nop	word ptr [rax + rax]
.label_248:
	mov	rsi, qword ptr [rax]
	cmp	rsi, r14
	je	.label_242
	mov	rdi, r14
	call	qword ptr [r15 + 0x38]
	mov	rcx, qword ptr [rbx]
	test	al, al
	jne	.label_246
	mov	rax, qword ptr [rcx + 8]
	add	rcx, 8
	test	rax, rax
	mov	rbx, rcx
	jne	.label_248
	jmp	.label_226
.label_232:
	mov	qword ptr [r13], 0
	jmp	.label_228
.label_242:
	mov	rcx, rax
	jmp	.label_230
.label_246:
	mov	r14, qword ptr [rcx]
.label_230:
	mov	rax, qword ptr [rcx + 8]
	mov	qword ptr [rbx], rax
	mov	qword ptr [rcx], 0
	mov	rax, qword ptr [r15 + 0x48]
	mov	qword ptr [rcx + 8], rax
	mov	qword ptr [r15 + 0x48], rcx
.label_228:
	xor	r12d, r12d
	test	r14, r14
	je	.label_226
	dec	qword ptr [r15 + 0x20]
	cmp	qword ptr [r13], 0
	jne	.label_227
	mov	rax, qword ptr [r15 + 0x18]
	dec	rax
	mov	qword ptr [r15 + 0x18], rax
	mov	ecx, eax
	and	ecx, 1
	test	rax, rax
	js	.label_245
	cvtsi2ss	xmm1, rax
	jmp	.label_243
.label_245:
	shr	rax, 1
	or	rcx, rax
	cvtsi2ss	xmm1, rcx
	addss	xmm1, xmm1
.label_243:
	mov	rcx, qword ptr [r15 + 0x10]
	mov	rax, qword ptr [r15 + 0x28]
	movss	xmm2, dword ptr [rax]
	mov	edx, ecx
	and	edx, 1
	test	rcx, rcx
	js	.label_249
	xorps	xmm0, xmm0
	cvtsi2ss	xmm0, rcx
	jmp	.label_247
.label_249:
	shr	rcx, 1
	or	rdx, rcx
	xorps	xmm0, xmm0
	cvtsi2ss	xmm0, rdx
	addss	xmm0, xmm0
.label_247:
	movaps	xmm3, xmm2
	mulss	xmm3, xmm0
	ucomiss	xmm3, xmm1
	jbe	.label_227
	mov	ecx, OFFSET FLAT:default_tuning
	cmp	rax, rcx
	je	.label_234
	movss	xmm3, dword ptr [rax + 8]
	ucomiss	xmm3, dword ptr [rip + label_238]
	jbe	.label_237
	movss	xmm4, dword ptr [rip + label_240]
	ucomiss	xmm4, xmm3
	jbe	.label_237
	xorps	xmm4, xmm4
	ucomiss	xmm2, xmm4
	jb	.label_237
	movss	xmm4, dword ptr [rax + 0xc]
	ucomiss	xmm4, dword ptr [rip + label_244]
	jbe	.label_237
	movss	xmm4, dword ptr [rip + label_238]
	addss	xmm4, xmm2
	ucomiss	xmm3, xmm4
	jbe	.label_237
	movss	xmm3, dword ptr [rax + 4]
	movss	xmm5, dword ptr [rip + label_236]
	ucomiss	xmm5, xmm3
	jb	.label_237
	ucomiss	xmm3, xmm4
	ja	.label_225
.label_237:
	mov	qword ptr [r15 + 40], OFFSET FLAT:default_tuning
	mov	eax, OFFSET FLAT:default_tuning
	xorps	xmm2, xmm2
	jmp	.label_225
.label_234:
	mov	eax, OFFSET FLAT:default_tuning
.label_225:
	mulss	xmm2, xmm0
	ucomiss	xmm2, xmm1
	jbe	.label_227
	mulss	xmm0, dword ptr [rax + 4]
	cmp	byte ptr [rax + 0x10], 0
	jne	.label_235
	mulss	xmm0, dword ptr [rax + 8]
.label_235:
	movss	xmm1, dword ptr [rip + label_231]
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
	jne	.label_227
	mov	rdi, qword ptr [r15 + 0x48]
	test	rdi, rdi
	je	.label_239
	nop	word ptr cs:[rax + rax]
.label_233:
	mov	rbx, qword ptr [rdi + 8]
	call	free
	test	rbx, rbx
	mov	rdi, rbx
	jne	.label_233
.label_239:
	mov	qword ptr [r15 + 0x48], 0
.label_227:
	mov	r12, r14
.label_226:
	mov	rax, r12
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_241:
	call	abort
	.section	.text
	.align	16
	#Procedure 0x403fd3
	.globl sub_403fd3
	.type sub_403fd3, @function
sub_403fd3:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x403fe0
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
	#Procedure 0x4040a1
	.globl sub_4040a1
	.type sub_4040a1, @function
sub_4040a1:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4040b0

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
	mov	r14, rdx
	mov	ebx, esi
	mov	r12, rdi
	cmp	ebx, 0x1000
	jae	.label_274
	mov	eax, ebx
	and	eax, 0x204
	cmp	eax, 0x204
	je	.label_274
	test	bl, 0x12
	je	.label_274
	mov	edi, 0x80
	call	malloc
	mov	r15, rax
	xor	eax, eax
	test	r15, r15
	je	.label_281
	xorps	xmm0, xmm0
	movups	xmmword ptr [r15 + 0x70], xmm0
	movups	xmmword ptr [r15 + 0x60], xmm0
	movups	xmmword ptr [r15 + 0x50], xmm0
	movups	xmmword ptr [r15 + 0x40], xmm0
	movups	xmmword ptr [r15 + 0x30], xmm0
	movups	xmmword ptr [r15 + 0x20], xmm0
	movups	xmmword ptr [r15 + 0x10], xmm0
	movups	xmmword ptr [r15], xmm0
	mov	qword ptr [r15 + 0x40], r14
	mov	eax, ebx
	and	eax, 0xfffffdfb
	or	eax, 4
	test	bl, 2
	cmove	eax, ebx
	mov	dword ptr [r15 + 0x48], eax
	mov	dword ptr [r15 + 0x2c], 0xffffff9c
	mov	rdi, qword ptr [r12]
	mov	ebp, 1
	test	rdi, rdi
	je	.label_252
	mov	r13d, ebx
	lea	rbx, [r12 + 8]
	xor	ebp, ebp
	nop	word ptr [rax + rax]
.label_267:
	call	strlen
	cmp	rax, rbp
	cmova	rbp, rax
	mov	rdi, qword ptr [rbx]
	add	rbx, 8
	test	rdi, rdi
	jne	.label_267
	inc	rbp
	mov	ebx, r13d
.label_252:
	cmp	rbp, 0x1000
	mov	esi, 0x1000
	cmova	rsi, rbp
	add	rsi, 0x100
	mov	qword ptr [r15 + 0x30], rsi
	xor	edi, edi
	call	realloc
	mov	rbp, rax
	test	rbp, rbp
	je	.label_275
	mov	qword ptr [rsp + 0x10], r15
	mov	qword ptr [r15 + 0x20], rbp
	mov	qword ptr [rsp + 0x30], r12
	mov	r13, qword ptr [r12]
	xor	r12d, r12d
	test	r13, r13
	je	.label_277
	mov	edi, 0x110
	call	malloc
	mov	r12, rax
	test	r12, r12
	je	.label_280
	mov	byte ptr [r12 + 0x108], 0
	mov	qword ptr [r12 + 0x60], 0
	mov	rax, qword ptr [rsp + 0x10]
	mov	qword ptr [r12 + 0x50], rax
	mov	qword ptr [r12 + 0x38], rbp
	mov	dword ptr [r12 + 0x40], 0
	mov	qword ptr [r12 + 0x18], 0
	mov	word ptr [r12 + 0x72], 0
	mov	word ptr [r12 + 0x74], 3
	xorps	xmm0, xmm0
	movups	xmmword ptr [r12 + 0x20], xmm0
	mov	qword ptr [r12 + 0x58], -1
	mov	qword ptr [r12 + 0x68], -1
.label_277:
	mov	byte ptr [rsp + 0xf], 1
	mov	qword ptr [rsp + 0x28], r14
	test	r14, r14
	je	.label_278
	mov	rax, qword ptr [rsp + 0x10]
	mov	al, byte ptr [rax + 0x49]
	and	al, 4
	shr	al, 2
	mov	byte ptr [rsp + 0xf], al
.label_278:
	xor	r14d, r14d
	test	r13, r13
	je	.label_263
	test	bh, 8
	mov	qword ptr [rsp + 0x18], r12
	jne	.label_268
	xor	ebp, ebp
	xor	r15d, r15d
	xor	r12d, r12d
	nop	dword ptr [rax]
.label_286:
	mov	rdi, r13
	call	strlen
	mov	rbx, rax
	cmp	rbx, 3
	jb	.label_272
	cmp	byte ptr [r13 + rbx - 1], 0x2f
	jne	.label_272
	nop	dword ptr [rax]
.label_276:
	cmp	byte ptr [r13 + rbx - 2], 0x2f
	jne	.label_272
	dec	rbx
	cmp	rbx, 1
	ja	.label_276
	nop	word ptr cs:[rax + rax]
.label_272:
	mov	qword ptr [rsp + 0x20], r15
	lea	rdi, [rbx + 0x110]
	and	rdi, 0xfffffffffffffff8
	call	malloc
	mov	r15, rax
	mov	r14, rbp
	test	r15, r15
	je	.label_282
	mov	rbp, r15
	add	rbp, 0x108
	mov	rdi, rbp
	mov	rsi, r13
	mov	rdx, rbx
	call	memcpy
	mov	byte ptr [r15 + rbx + 0x108], 0
	mov	qword ptr [r15 + 0x60], rbx
	mov	rdi, qword ptr [rsp + 0x10]
	mov	qword ptr [r15 + 0x50], rdi
	mov	rax, qword ptr [rdi + 0x20]
	mov	qword ptr [r15 + 0x38], rax
	mov	dword ptr [r15 + 0x40], 0
	mov	qword ptr [r15 + 0x18], 0
	mov	word ptr [r15 + 0x72], 0
	mov	word ptr [r15 + 0x74], 3
	xorps	xmm0, xmm0
	movups	xmmword ptr [r15 + 0x20], xmm0
	mov	qword ptr [r15 + 0x58], 0
	mov	rax, qword ptr [rsp + 0x18]
	mov	qword ptr [r15 + 8], rax
	mov	qword ptr [r15 + 0x30], rbp
	mov	rbx, r14
	test	rbx, rbx
	setne	al
	test	byte ptr [rsp + 0xf], al
	je	.label_253
	mov	word ptr [r15 + 0x70], 0xb
	mov	qword ptr [r15 + 0xa8], 2
	jmp	.label_266
.label_253:
	xor	edx, edx
	mov	rsi, r15
	call	fts_stat
	mov	word ptr [r15 + 0x70], ax
.label_266:
	mov	rax, qword ptr [rsp + 0x28]
	test	rax, rax
	je	.label_271
	mov	r14, r15
	mov	qword ptr [r15 + 0x10], rbx
	mov	r15, qword ptr [rsp + 0x20]
	jmp	.label_251
.label_271:
	mov	qword ptr [r15 + 0x10], 0
	test	rbx, rbx
	mov	r14, r15
	je	.label_251
	mov	rax, qword ptr [rsp + 0x20]
	mov	qword ptr [rax + 0x10], r15
	mov	r14, rbx
.label_251:
	inc	r12
	mov	rax, qword ptr [rsp + 0x30]
	mov	r13, qword ptr [rax + 8]
	add	rax, 8
	mov	qword ptr [rsp + 0x30], rax
	test	r13, r13
	mov	rbp, r14
	jne	.label_286
	jmp	.label_269
.label_274:
	call	__errno_location
	mov	dword ptr [rax], 0x16
.label_273:
	xor	eax, eax
.label_281:
	add	rsp, 0x38
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_275:
	mov	rdi, qword ptr [r15 + 0x20]
	jmp	.label_254
.label_268:
	xor	r15d, r15d
	xor	ebx, ebx
	xor	r12d, r12d
	nop	
.label_255:
	mov	qword ptr [rsp + 0x20], rbx
	mov	rdi, r13
	call	strlen
	mov	rbp, rax
	lea	rdi, [rbp + 0x110]
	and	rdi, 0xfffffffffffffff8
	call	malloc
	mov	rbx, rax
	test	rbx, rbx
	je	.label_259
	mov	r14, rbx
	add	r14, 0x108
	mov	rdi, r14
	mov	rsi, r13
	mov	rdx, rbp
	call	memcpy
	mov	byte ptr [rbx + rbp + 0x108], 0
	mov	qword ptr [rbx + 0x60], rbp
	mov	rdi, qword ptr [rsp + 0x10]
	mov	qword ptr [rbx + 0x50], rdi
	mov	rax, qword ptr [rdi + 0x20]
	mov	qword ptr [rbx + 0x38], rax
	mov	dword ptr [rbx + 0x40], 0
	mov	qword ptr [rbx + 0x18], 0
	mov	word ptr [rbx + 0x72], 0
	mov	word ptr [rbx + 0x74], 3
	xorps	xmm0, xmm0
	movups	xmmword ptr [rbx + 0x20], xmm0
	mov	qword ptr [rbx + 0x58], 0
	mov	rax, qword ptr [rsp + 0x18]
	mov	qword ptr [rbx + 8], rax
	mov	qword ptr [rbx + 0x30], r14
	test	r15, r15
	setne	al
	and	al, byte ptr [rsp + 0xf]
	cmp	al, 1
	jne	.label_261
	mov	word ptr [rbx + 0x70], 0xb
	mov	qword ptr [rbx + 0xa8], 2
	jmp	.label_279
.label_261:
	xor	edx, edx
	mov	rsi, rbx
	call	fts_stat
	mov	word ptr [rbx + 0x70], ax
.label_279:
	mov	rax, qword ptr [rsp + 0x28]
	test	rax, rax
	je	.label_283
	mov	r14, rbx
	mov	qword ptr [rbx + 0x10], r15
	mov	rbx, qword ptr [rsp + 0x20]
	jmp	.label_287
.label_283:
	mov	qword ptr [rbx + 0x10], 0
	test	r15, r15
	mov	r14, rbx
	je	.label_287
	mov	rax, qword ptr [rsp + 0x20]
	mov	qword ptr [rax + 0x10], rbx
	mov	r14, r15
.label_287:
	mov	rax, qword ptr [rsp + 0x30]
	mov	r13, qword ptr [rax + r12*8 + 8]
	inc	r12
	test	r13, r13
	mov	r15, r14
	jne	.label_255
.label_269:
	cmp	qword ptr [rsp + 0x28], 0
	je	.label_257
	cmp	r12, 2
	jb	.label_257
	mov	rdi, qword ptr [rsp + 0x10]
	mov	rsi, r14
	mov	rdx, r12
	call	fts_sort
	mov	r14, rax
.label_257:
	mov	r12, qword ptr [rsp + 0x18]
.label_263:
	mov	edi, 0x110
	call	malloc
	test	rax, rax
	je	.label_284
	mov	byte ptr [rax + 0x108], 0
	mov	qword ptr [rax + 0x60], 0
	mov	r15, qword ptr [rsp + 0x10]
	mov	qword ptr [rax + 0x50], r15
	mov	rcx, qword ptr [r15 + 0x20]
	mov	qword ptr [rax + 0x38], rcx
	mov	dword ptr [rax + 0x40], 0
	mov	qword ptr [rax + 0x18], 0
	mov	word ptr [rax + 0x72], 0
	mov	word ptr [rax + 0x74], 3
	xorps	xmm0, xmm0
	movups	xmmword ptr [rax + 0x20], xmm0
	mov	qword ptr [r15], rax
	mov	qword ptr [rax + 0x10], r14
	mov	word ptr [rax + 0x70], 9
	mov	qword ptr [rax + 0x58], 1
	movzx	eax, word ptr [r15 + 0x48]
	test	ax, 0x102
	je	.label_264
	mov	edi, 0x1f
	xor	esi, esi
	mov	edx, OFFSET FLAT:AD_hash
	mov	ecx, OFFSET FLAT:AD_compare
	mov	r8d, OFFSET FLAT:free
	call	hash_initialize
	mov	qword ptr [r15 + 0x58], rax
	test	rax, rax
	jne	.label_285
	jmp	.label_250
.label_280:
	mov	r15, qword ptr [rsp + 0x10]
	jmp	.label_288
.label_284:
	mov	r15, qword ptr [rsp + 0x10]
	mov	qword ptr [r15], 0
	jmp	.label_250
.label_264:
	mov	edi, 0x20
	call	malloc
	mov	qword ptr [r15 + 0x58], rax
	test	rax, rax
	je	.label_250
	mov	rdi, rax
	call	cycle_check_init
.label_285:
	mov	eax, dword ptr [r15 + 0x48]
	test	ax, 0x204
	jne	.label_256
	mov	edx, eax
	and	edx, 0x10
	shl	edx, 0xd
	or	edx, 0x90900
	test	ah, 2
	jne	.label_258
	mov	edi, OFFSET FLAT:label_15
	xor	eax, eax
	mov	esi, edx
	call	open_safer
	jmp	.label_260
.label_259:
	mov	r14, r15
.label_282:
	mov	r15, qword ptr [rsp + 0x10]
	mov	r12, qword ptr [rsp + 0x18]
.label_250:
	test	r14, r14
	je	.label_262
	nop	dword ptr [rax]
.label_270:
	mov	rbx, qword ptr [r14 + 0x10]
	mov	rdi, qword ptr [r14 + 0x18]
	test	rdi, rdi
	je	.label_265
	call	closedir
.label_265:
	mov	rdi, r14
	call	free
	test	rbx, rbx
	mov	r14, rbx
	jne	.label_270
.label_262:
	mov	rdi, r12
	call	free
	mov	rbp, qword ptr [r15 + 0x20]
.label_288:
	mov	rdi, rbp
.label_254:
	call	free
	mov	rdi, r15
	call	free
	jmp	.label_273
.label_258:
	mov	edi, dword ptr [r15 + 0x2c]
	mov	esi, OFFSET FLAT:label_15
	xor	eax, eax
	call	openat_safer
.label_260:
	mov	dword ptr [r15 + 0x28], eax
	test	eax, eax
	jns	.label_256
	or	byte ptr [r15 + 0x48], 4
.label_256:
	mov	rdi, r15
	add	rdi, 0x60
	mov	esi, 0xffffffff
	call	i_ring_init
	mov	rax, r15
	jmp	.label_281
	.section	.text
	.align	16
	#Procedure 0x4046e9
	.globl sub_4046e9
	.type sub_4046e9, @function
sub_4046e9:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x4046f0

	.globl rpl_calloc
	.type rpl_calloc, @function
rpl_calloc:
	test	rdi, rdi
	mov	eax, 1
	je	.label_289
	test	rsi, rsi
	mov	ecx, 1
	je	.label_290
	mov	rax, rsi
	imul	rax, rdi
	xor	edx, edx
	div	rsi
	cmp	rax, rdi
	mov	rax, rsi
	mov	rcx, rdi
	je	.label_290
	push	rax
	call	__errno_location
	mov	dword ptr [rax], 0xc
	xor	eax, eax
	pop	rcx
	ret	
.label_289:
	mov	ecx, 1
.label_290:
	mov	rdi, rcx
	mov	rsi, rax
	jmp	calloc
	.section	.text
	.align	16
	#Procedure 0x40473b
	.globl sub_40473b
	.type sub_40473b, @function
sub_40473b:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404740

	.globl fts_stat
	.type fts_stat, @function
fts_stat:
	push	r15
	push	r14
	push	rbx
	mov	r15, rsi
	mov	r14, rdi
	mov	eax, dword ptr [r14 + 0x48]
	cmp	qword ptr [r15 + 0x58], 0
	jne	.label_291
	test	al, 1
	je	.label_291
	mov	dl, 1
.label_291:
	lea	rbx, [r15 + 0x78]
	test	dl, dl
	jne	.label_298
	and	eax, 2
	jne	.label_298
	mov	esi, dword ptr [r14 + 0x2c]
	mov	rdx, qword ptr [r15 + 0x30]
	mov	edi, 1
	mov	r8d, 0x100
	mov	rcx, rbx
	call	__fxstatat
	test	eax, eax
	je	.label_292
	call	__errno_location
	mov	eax, dword ptr [rax]
	jmp	.label_296
.label_298:
	mov	rsi, qword ptr [r15 + 0x30]
	mov	edi, 1
	mov	rdx, rbx
	call	__xstat
	test	eax, eax
	je	.label_292
	call	__errno_location
	mov	r14, rax
	mov	eax, dword ptr [r14]
	cmp	eax, 2
	jne	.label_296
	mov	rsi, qword ptr [r15 + 0x30]
	mov	edi, 1
	mov	rdx, rbx
	call	__lxstat
	test	eax, eax
	je	.label_294
	mov	eax, dword ptr [r14]
.label_296:
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
.label_293:
	pop	rbx
	pop	r14
	pop	r15
	ret	
.label_292:
	movzx	ecx, word ptr [r15 + 0x90]
	and	ecx, 0xf000
	cmp	ecx, 0x8000
	je	.label_295
	mov	ax, 0xc
	movzx	ecx, cx
	cmp	ecx, 0xa000
	je	.label_293
	cmp	ecx, 0x4000
	jne	.label_299
	mov	rax, qword ptr [r15 + 0x88]
	mov	rcx, -1
	cmp	rax, 2
	jb	.label_297
	cmp	qword ptr [r15 + 0x58], 0
	jle	.label_297
	mov	ecx, dword ptr [r14 + 0x48]
	shr	ecx, 4
	not	ecx
	and	ecx, 2
	sub	rax, rcx
	mov	rcx, rax
.label_297:
	mov	qword ptr [r15 + 0x68], rcx
	mov	ecx, dword ptr [r15 + 0x108]
	mov	ax, 1
	cmp	cl, 0x2e
	jne	.label_293
	mov	edx, ecx
	shr	edx, 8
	test	dl, dl
	je	.label_300
	cmp	dl, 0x2e
	jne	.label_293
	test	ecx, 0xff0000
	jne	.label_293
.label_300:
	cmp	qword ptr [r15 + 0x58], 0
	mov	cx, 1
	mov	ax, 5
	cmove	ax, cx
	jmp	.label_293
.label_295:
	mov	ax, 8
	jmp	.label_293
.label_299:
	mov	ax, 3
	jmp	.label_293
.label_294:
	mov	dword ptr [r14], 0
	mov	ax, 0xd
	jmp	.label_293
	.section	.text
	.align	16
	#Procedure 0x4048d5
	.globl sub_4048d5
	.type sub_4048d5, @function
sub_4048d5:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4048e0
	.globl hash_clear
	.type hash_clear, @function
hash_clear:

	push	r15
	push	r14
	push	rbx
	mov	r15, rdi
	mov	r14, qword ptr [r15]
	mov	rax, qword ptr [r15 + 8]
	jmp	.label_301
	.section	.text
	.align	16
	#Procedure 0x4048f1
	.globl sub_4048f1
	.type sub_4048f1, @function
sub_4048f1:

	nop	word ptr cs:[rax + rax]
.label_304:
	add	r14, 0x10
.label_301:
	cmp	r14, rax
	jae	.label_303
	cmp	qword ptr [r14], 0
	je	.label_304
	mov	rbx, qword ptr [r14 + 8]
	mov	rax, qword ptr [r15 + 0x40]
	test	rax, rax
	setne	cl
	test	rbx, rbx
	je	.label_305
	nop	word ptr cs:[rax + rax]
.label_307:
	test	cl, 1
	je	.label_306
	mov	rdi, qword ptr [rbx]
	call	rax
	mov	rax, qword ptr [r15 + 0x40]
.label_306:
	mov	qword ptr [rbx], 0
	mov	rdx, qword ptr [rbx + 8]
	mov	rcx, qword ptr [r15 + 0x48]
	mov	qword ptr [rbx + 8], rcx
	mov	qword ptr [r15 + 0x48], rbx
	test	rax, rax
	setne	cl
	test	rdx, rdx
	mov	rbx, rdx
	jne	.label_307
.label_305:
	test	cl, cl
	je	.label_302
	mov	rdi, qword ptr [r14]
	call	rax
.label_302:
	xorps	xmm0, xmm0
	movups	xmmword ptr [r14], xmm0
	mov	rax, qword ptr [r15 + 8]
	jmp	.label_304
.label_303:
	xorps	xmm0, xmm0
	movups	xmmword ptr [r15 + 0x18], xmm0
	pop	rbx
	pop	r14
	pop	r15
	ret	
	.section	.text
	.align	16
	#Procedure 0x404987
	.globl sub_404987
	.type sub_404987, @function
sub_404987:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404990

	.globl raw_comparator
	.type raw_comparator, @function
raw_comparator:
	cmp	rdi, rsi
	sete	al
	ret	
	.section	.text
	.align	16
	#Procedure 0x404997
	.globl sub_404997
	.type sub_404997, @function
sub_404997:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4049a0
	.globl xnmalloc
	.type xnmalloc, @function
xnmalloc:

	push	rbx
	mov	rbx, rsi
	movabs	rax, 0x7fffffffffffffff
	xor	edx, edx
	div	rbx
	cmp	rax, rdi
	jb	.label_308
	imul	rbx, rdi
	mov	rdi, rbx
	call	malloc
	test	rbx, rbx
	je	.label_309
	test	rax, rax
	je	.label_308
.label_309:
	pop	rbx
	ret	
.label_308:
	call	xalloc_die
	.section	.text
	.align	16
	#Procedure 0x4049d5
	.globl sub_4049d5
	.type sub_4049d5, @function
sub_4049d5:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4049e0

	.globl gid_to_name
	.type gid_to_name, @function
gid_to_name:
	push	rbx
	sub	rsp, 0x20
	mov	ebx, edi
	call	getgrgid
	test	rax, rax
	je	.label_311
	mov	rdi, qword ptr [rax]
	jmp	.label_310
.label_311:
	mov	edi, ebx
	lea	rsi, [rsp]
	call	umaxtostr
	mov	rdi, rax
.label_310:
	call	xstrdup
	add	rsp, 0x20
	pop	rbx
	ret	
	.section	.text
	.align	16
	#Procedure 0x404a0f
	.globl sub_404a0f
	.type sub_404a0f, @function
sub_404a0f:

	nop	
.label_312:
	call	xalloc_die
	.section	.text
	.align	16
	#Procedure 0x404a15
	.globl sub_404a15
	.type sub_404a15, @function
sub_404a15:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404a1b
	.globl xcharalloc
	.type xcharalloc, @function
xcharalloc:

	push	rbx
	mov	rbx, rdi
	call	malloc
	test	rbx, rbx
	je	.label_313
	test	rax, rax
	je	.label_312
.label_313:
	pop	rbx
	ret	
	.section	.text
	.align	16
	#Procedure 0x404a30

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
	mov	r14, r8
	mov	rbx, rsi
	mov	r12, rdi
	test	rdx, rdx
	mov	r13d, OFFSET FLAT:raw_hasher
	cmovne	r13, rdx
	test	rcx, rcx
	mov	ebp, OFFSET FLAT:raw_comparator
	cmovne	rbp, rcx
	mov	edi, 0x50
	call	malloc
	mov	r15, rax
	xor	eax, eax
	test	r15, r15
	je	.label_314
	test	rbx, rbx
	mov	eax, OFFSET FLAT:default_tuning
	cmove	rbx, rax
	mov	qword ptr [r15 + 0x28], rbx
	cmp	rbx, rax
	je	.label_322
	movss	xmm0, dword ptr [rbx + 8]
	ucomiss	xmm0, dword ptr [rip + label_238]
	jbe	.label_315
	movss	xmm1, dword ptr [rip + label_240]
	ucomiss	xmm1, xmm0
	jbe	.label_315
	movss	xmm1, dword ptr [rbx + 0xc]
	ucomiss	xmm1, dword ptr [rip + label_244]
	jbe	.label_315
	movss	xmm1, dword ptr [rbx]
	xorps	xmm2, xmm2
	ucomiss	xmm1, xmm2
	jb	.label_315
	addss	xmm1, dword ptr [rip + label_238]
	ucomiss	xmm0, xmm1
	jbe	.label_315
	movss	xmm0, dword ptr [rbx + 4]
	movss	xmm2, dword ptr [rip + label_236]
	ucomiss	xmm2, xmm0
	jb	.label_315
	ucomiss	xmm0, xmm1
	jbe	.label_315
.label_322:
	cmp	byte ptr [rbx + 0x10], 0
	jne	.label_323
	mov	eax, r12d
	and	eax, 1
	test	r12, r12
	js	.label_316
	xorps	xmm0, xmm0
	cvtsi2ss	xmm0, r12
	jmp	.label_319
.label_316:
	shr	r12, 1
	or	rax, r12
	xorps	xmm0, xmm0
	cvtsi2ss	xmm0, rax
	addss	xmm0, xmm0
.label_319:
	divss	xmm0, dword ptr [rbx + 8]
	movss	xmm1, dword ptr [rip + label_231]
	movaps	xmm2, xmm0
	subss	xmm2, xmm1
	cvttss2si	rax, xmm2
	movabs	rcx, 0x8000000000000000
	xor	rcx, rax
	cvttss2si	r12, xmm0
	ucomiss	xmm0, xmm1
	cmovae	r12, rcx
	ucomiss	xmm0, dword ptr [rip + label_321]
	jae	.label_315
.label_323:
	cmp	r12, 0xa
	mov	ebx, 0xa
	cmovae	rbx, r12
	or	rbx, 1
	jmp	.label_320
	.section	.text
	.align	16
	#Procedure 0x404b7e
	.globl sub_404b7e
	.type sub_404b7e, @function
sub_404b7e:

	nop	
.label_318:
	add	rbx, 2
.label_320:
	cmp	rbx, -1
	je	.label_315
	cmp	rbx, 0xa
	mov	ecx, 3
	jb	.label_317
	mov	esi, 0xc
	mov	edi, 9
	mov	ecx, 3
	nop	dword ptr [rax + rax]
.label_324:
	xor	edx, edx
	mov	rax, rbx
	div	rcx
	test	rdx, rdx
	je	.label_317
	lea	rdi, [rdi + rsi + 4]
	add	rcx, 2
	add	rsi, 8
	cmp	rdi, rbx
	jb	.label_324
.label_317:
	xor	edx, edx
	mov	rax, rbx
	div	rcx
	test	rdx, rdx
	je	.label_318
	mov	rax, rbx
	shr	rax, 0x3c
	jne	.label_315
	mov	qword ptr [r15 + 0x10], rbx
	test	rbx, rbx
	je	.label_315
	mov	esi, 0x10
	mov	rdi, rbx
	call	rpl_calloc
	mov	qword ptr [r15], rax
	test	rax, rax
	je	.label_315
	shl	rbx, 4
	add	rax, rbx
	mov	qword ptr [r15 + 8], rax
	xorps	xmm0, xmm0
	movups	xmmword ptr [r15 + 0x18], xmm0
	mov	qword ptr [r15 + 0x30], r13
	mov	qword ptr [r15 + 0x38], rbp
	mov	qword ptr [r15 + 0x40], r14
	mov	qword ptr [r15 + 0x48], 0
	mov	rax, r15
	jmp	.label_314
.label_315:
	mov	rdi, r15
	call	free
	xor	eax, eax
.label_314:
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
	#Procedure 0x404c48
	.globl sub_404c48
	.type sub_404c48, @function
sub_404c48:

	nop	dword ptr [rax + rax]
.label_325:
	push	rax
	call	abort
	.section	.text
	.align	16
	#Procedure 0x404c56
	.globl sub_404c56
	.type sub_404c56, @function
sub_404c56:

	nop	dword ptr [rax + rax]
.label_326:
	add	rcx, 0x10
.label_328:
	cmp	rcx, rdx
	jae	.label_325
	mov	rax, qword ptr [rcx]
	test	rax, rax
	je	.label_326
.label_327:
	ret	
	.section	.text
	.align	16
	#Procedure 0x404c70
	.globl hash_get_first
	.type hash_get_first, @function
hash_get_first:

	xor	eax, eax
	cmp	qword ptr [rdi + 0x20], 0
	je	.label_327
	mov	rcx, qword ptr [rdi]
	mov	rdx, qword ptr [rdi + 8]
	jmp	.label_328
	.section	.text
	.align	16
	#Procedure 0x404c82
	.globl sub_404c82
	.type sub_404c82, @function
sub_404c82:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404c90
	.globl hash_reset_tuning
	.type hash_reset_tuning, @function
hash_reset_tuning:

	mov	eax, dword ptr [rip + label_329]
	mov	dword ptr [rdi + 0x10], eax
	movups	xmm0, xmmword ptr [rip + default_tuning]
	movups	xmmword ptr [rdi], xmm0
	ret	
	.section	.text
	.align	16
	#Procedure 0x404ca4
	.globl sub_404ca4
	.type sub_404ca4, @function
sub_404ca4:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404cb0

	.globl get_root_dev_ino
	.type get_root_dev_ino, @function
get_root_dev_ino:
	push	rbx
	sub	rsp, 0x90
	mov	rbx, rdi
	lea	rdx, [rsp]
	mov	edi, 1
	mov	esi, OFFSET FLAT:label_110
	call	__lxstat
	mov	ecx, eax
	xor	eax, eax
	test	ecx, ecx
	jne	.label_330
	mov	rax, qword ptr [rsp + 8]
	mov	qword ptr [rbx], rax
	mov	rax, qword ptr [rsp]
	mov	qword ptr [rbx + 8], rax
	mov	rax, rbx
.label_330:
	add	rsp, 0x90
	pop	rbx
	ret	
	.section	.text
	.align	16
	#Procedure 0x404cf2
	.globl sub_404cf2
	.type sub_404cf2, @function
sub_404cf2:

	nop	word ptr cs:[rax + rax]
.label_332:
	mov	eax, ebx
.label_331:
	add	rsp, 8
	pop	rbx
	pop	r14
	pop	r15
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x404d0d
	.globl sub_404d0d
	.type sub_404d0d, @function
sub_404d0d:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404d1c

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
	ja	.label_332
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
	jmp	.label_331
	.section	.text
	.align	16
	#Procedure 0x404d50
	.globl rpl_fts_children
	.type rpl_fts_children, @function
rpl_fts_children:

	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	push	rax
	mov	r12d, esi
	mov	r13, rdi
	mov	eax, r12d
	or	eax, 0x1000
	cmp	eax, 0x1000
	jne	.label_344
	mov	r15, qword ptr [r13]
	call	__errno_location
	mov	r14, rax
	mov	dword ptr [r14], 0
	xor	eax, eax
	test	byte ptr [r13 + 0x49], 0x20
	jne	.label_333
	movzx	ecx, word ptr [r15 + 0x70]
	xor	eax, eax
	cmp	ecx, 1
	je	.label_340
	movzx	ecx, cx
	cmp	ecx, 9
	jne	.label_333
	mov	rax, qword ptr [r15 + 0x10]
	jmp	.label_333
.label_344:
	call	__errno_location
	mov	dword ptr [rax], 0x16
	xor	eax, eax
	jmp	.label_333
.label_340:
	mov	rbx, qword ptr [r13 + 8]
	test	rbx, rbx
	je	.label_335
	nop	dword ptr [rax]
.label_345:
	mov	rbp, qword ptr [rbx + 0x10]
	mov	rdi, qword ptr [rbx + 0x18]
	test	rdi, rdi
	je	.label_341
	call	closedir
.label_341:
	mov	rdi, rbx
	call	free
	test	rbp, rbp
	mov	rbx, rbp
	jne	.label_345
.label_335:
	mov	ebx, 1
	cmp	r12d, 0x1000
	jne	.label_348
	or	byte ptr [r13 + 0x49], 0x10
	mov	ebx, 2
.label_348:
	cmp	qword ptr [r15 + 0x58], 0
	jne	.label_337
	mov	rax, qword ptr [r15 + 0x30]
	cmp	byte ptr [rax], 0x2f
	je	.label_337
	mov	eax, dword ptr [r13 + 0x48]
	test	al, 4
	jne	.label_337
	mov	edx, eax
	and	edx, 0x10
	shl	edx, 0xd
	or	edx, 0x90900
	test	ah, 2
	jne	.label_339
	mov	edi, OFFSET FLAT:label_15
	xor	eax, eax
	mov	esi, edx
	call	open_safer
	jmp	.label_347
.label_337:
	mov	rdi, r13
	mov	esi, ebx
	call	fts_build
	mov	qword ptr [r13 + 8], rax
.label_333:
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_339:
	mov	edi, dword ptr [r13 + 0x2c]
	mov	esi, OFFSET FLAT:label_15
	xor	eax, eax
	call	openat_safer
.label_347:
	mov	r15d, eax
	test	r15d, r15d
	js	.label_346
	mov	rdi, r13
	mov	esi, ebx
	call	fts_build
	mov	qword ptr [r13 + 8], rax
	test	byte ptr [r13 + 0x49], 2
	jne	.label_336
	mov	edi, r15d
	call	fchdir
	test	eax, eax
	je	.label_338
	mov	ebx, dword ptr [r14]
	mov	edi, r15d
	call	close
	mov	dword ptr [r14], ebx
	xor	eax, eax
	jmp	.label_333
.label_346:
	mov	qword ptr [r13 + 8], 0
	xor	eax, eax
	jmp	.label_333
.label_336:
	mov	esi, dword ptr [r13 + 0x2c]
	cmp	esi, r15d
	jne	.label_342
	cmp	esi, -0x64
	jne	.label_334
.label_342:
	lea	rdi, [r13 + 0x60]
	call	i_ring_push
	test	eax, eax
	js	.label_343
	mov	edi, eax
	call	close
.label_343:
	mov	dword ptr [r13 + 0x2c], r15d
	jmp	.label_349
.label_338:
	mov	edi, r15d
	call	close
.label_349:
	mov	rax, qword ptr [r13 + 8]
	jmp	.label_333
.label_334:
	call	abort
	.section	.text
	.align	16
	#Procedure 0x404ef7
	.globl sub_404ef7
	.type sub_404ef7, @function
sub_404ef7:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404f00
	.globl quotearg_n_mem
	.type quotearg_n_mem, @function
quotearg_n_mem:

	mov	ecx, OFFSET FLAT:default_quoting_options
	jmp	quotearg_n_options
	.section	.text
	.align	16
	#Procedure 0x404f0a
	.globl sub_404f0a
	.type sub_404f0a, @function
sub_404f0a:

	nop	word ptr [rax + rax]
.label_354:
	call	__errno_location
	cmp	dword ptr [rax], 0x16
	jne	.label_350
	mov	edi, OFFSET FLAT:label_351
	mov	esi, OFFSET FLAT:label_352
	mov	edx, 0x29
	mov	ecx, OFFSET FLAT:label_353
	call	__assert_fail
	.section	.text
	.align	16
	#Procedure 0x404f33

	.globl xfts_open
	.type xfts_open, @function
xfts_open:
	push	rax
	or	esi, 0x200
	call	rpl_fts_open
	test	rax, rax
	je	.label_354
	pop	rcx
	ret	
.label_350:
	call	xalloc_die
	.section	.text
	.align	16
	#Procedure 0x404f4b
	.globl sub_404f4b
	.type sub_404f4b, @function
sub_404f4b:

	nop	dword ptr [rax + rax]
.label_355:
	call	abort
	.section	.text
	.align	16
	#Procedure 0x404f55
	.globl sub_404f55
	.type sub_404f55, @function
sub_404f55:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404f5b
	.globl quotearg_n_custom_mem
	.type quotearg_n_custom_mem, @function
quotearg_n_custom_mem:

	sub	rsp, 0x38
	mov	rax, qword ptr [rip + label_82]
	mov	qword ptr [rsp + 0x30], rax
	movups	xmm0, xmmword ptr [rip + label_83]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0, xmmword ptr [rip + label_84]
	movaps	xmmword ptr [rsp + 0x10], xmm0
	movups	xmm0, xmmword ptr [rip + default_quoting_options]
	movaps	xmmword ptr [rsp], xmm0
	mov	dword ptr [rsp], 0xa
	test	rsi, rsi
	je	.label_355
	test	rdx, rdx
	je	.label_355
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
	#Procedure 0x404fc0
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
	#Procedure 0x404fd3
	.globl sub_404fd3
	.type sub_404fd3, @function
sub_404fd3:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404fe0

	.globl chopt_init
	.type chopt_init, @function
chopt_init:
	mov	dword ptr [rdi], 2
	mov	qword ptr [rdi + 8], 0
	mov	byte ptr [rdi + 0x10], 1
	mov	byte ptr [rdi + 4], 0
	mov	byte ptr [rdi + 0x11], 0
	xorps	xmm0, xmm0
	movups	xmmword ptr [rdi + 0x18], xmm0
	ret	
	.section	.text
	.align	16
	#Procedure 0x405002
	.globl sub_405002
	.type sub_405002, @function
sub_405002:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x405010

	.globl raw_hasher
	.type raw_hasher, @function
raw_hasher:
	rol	rdi, 0x3d
	xor	edx, edx
	mov	rax, rdi
	div	rsi
	mov	rax, rdx
	ret	
	.section	.text
	.align	16
	#Procedure 0x405020
	.globl hash_get_n_buckets
	.type hash_get_n_buckets, @function
hash_get_n_buckets:

	mov	rax, qword ptr [rdi + 0x10]
	ret	
	.section	.text
	.align	16
	#Procedure 0x405025
	.globl sub_405025
	.type sub_405025, @function
sub_405025:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x405030
	.globl xcalloc
	.type xcalloc, @function
xcalloc:

	push	rax
	movabs	rax, 0x7fffffffffffffff
	xor	edx, edx
	div	rsi
	cmp	rax, rdi
	jb	.label_356
	call	rpl_calloc
	test	rax, rax
	je	.label_356
	pop	rcx
	ret	
.label_356:
	call	xalloc_die
	.section	.text
	.align	16
	#Procedure 0x405056
	.globl sub_405056
	.type sub_405056, @function
sub_405056:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x405060
	.globl hash_get_next
	.type hash_get_next, @function
hash_get_next:

	push	r14
	push	rbx
	push	rax
	mov	rbx, rsi
	mov	r14, rdi
	mov	rsi, qword ptr [r14 + 0x10]
	mov	rdi, rbx
	call	qword ptr [r14 + 0x30]
	cmp	rax, qword ptr [r14 + 0x10]
	jae	.label_360
	mov	rcx, qword ptr [r14]
	shl	rax, 4
	lea	rdx, [rcx + rax]
	nop	word ptr cs:[rax + rax]
.label_361:
	cmp	qword ptr [rdx], rbx
	mov	rdx, qword ptr [rdx + 8]
	je	.label_359
	test	rdx, rdx
	jne	.label_361
	jmp	.label_357
.label_359:
	test	rdx, rdx
	je	.label_357
	mov	rax, qword ptr [rdx]
	jmp	.label_358
.label_357:
	mov	rdx, qword ptr [r14 + 8]
	lea	rcx, [rcx + rax + 0x10]
	nop	word ptr cs:[rax + rax]
.label_362:
	cmp	rcx, rdx
	mov	eax, 0
	jae	.label_358
	mov	rax, qword ptr [rcx]
	add	rcx, 0x10
	test	rax, rax
	je	.label_362
.label_358:
	add	rsp, 8
	pop	rbx
	pop	r14
	ret	
.label_360:
	call	abort
	.section	.text
	.align	16
	#Procedure 0x4050e3
	.globl sub_4050e3
	.type sub_4050e3, @function
sub_4050e3:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4050f0

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
	je	.label_365
	mov	rbp, qword ptr [rbx + 0x50]
	test	rbp, rbp
	jne	.label_367
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
	je	.label_368
.label_367:
	mov	rax, qword ptr [r13 + 0x78]
	mov	qword ptr [rsp], rax
	lea	rsi, [rsp]
	mov	rdi, rbp
	call	hash_lookup
	test	rax, rax
	je	.label_364
	mov	rax, qword ptr [rax + 8]
	jmp	.label_365
.label_364:
	mov	r12b, 1
	mov	r14, rbp
.label_368:
	xor	eax, eax
	test	r15d, r15d
	js	.label_365
	lea	rsi, [rsp]
	mov	edi, r15d
	call	fstatfs
	mov	ecx, eax
	xor	eax, eax
	test	ecx, ecx
	jne	.label_365
	test	r12b, r12b
	je	.label_366
	mov	edi, 0x10
	call	malloc
	mov	rbp, rax
	test	rbp, rbp
	je	.label_366
	mov	rax, qword ptr [r13 + 0x78]
	mov	qword ptr [rbp], rax
	mov	rax, qword ptr [rsp]
	mov	qword ptr [rbp + 8], rax
	mov	rdi, r14
	mov	rsi, rbp
	call	hash_insert
	test	rax, rax
	je	.label_363
	cmp	rax, rbp
	je	.label_366
	call	abort
.label_363:
	mov	rdi, rbp
	call	free
.label_366:
	mov	rax, qword ptr [rsp]
.label_365:
	add	rsp, 0x78
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x4051ea
	.globl sub_4051ea
	.type sub_4051ea, @function
sub_4051ea:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4051f0
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
	#Procedure 0x405208
	.globl sub_405208
	.type sub_405208, @function
sub_405208:

	nop	dword ptr [rax + rax]
.label_369:
	call	abort
	.section	.text
	.align	16
	#Procedure 0x405215
	.globl sub_405215
	.type sub_405215, @function
sub_405215:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40521d
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
	je	.label_369
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
	#Procedure 0x405280

	.globl parse_with_separator
	.type parse_with_separator, @function
parse_with_separator:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x58
	mov	r14, r8
	mov	r12, rcx
	mov	r15, rsi
	mov	eax, dword ptr [rdx]
	mov	ecx, 0xffffffff
	test	r12, r12
	je	.label_370
	mov	ecx, dword ptr [r12]
.label_370:
	test	r14, r14
	je	.label_382
	mov	qword ptr [r14], 0
.label_382:
	test	r9, r9
	je	.label_376
	mov	qword ptr [r9], 0
.label_376:
	test	r15, r15
	mov	qword ptr [rsp + 0x38], rdx
	mov	qword ptr [rsp + 0x10], rax
	mov	qword ptr [rsp + 0x18], rcx
	je	.label_389
	mov	qword ptr [rsp + 8], r9
	xor	ebp, ebp
	mov	rbx, r15
	sub	rbx, rdi
	je	.label_394
	lea	rsi, [rbx + 1]
	call	xmemdup
	mov	rbp, rax
	mov	byte ptr [rbp + rbx], 0
.label_394:
	lea	rax, [r15 + 1]
	xor	ebx, ebx
	cmp	byte ptr [r15 + 1], 0
	cmovne	rbx, rax
	jmp	.label_400
.label_389:
	xor	r13d, r13d
	cmp	byte ptr [rdi], 0
	je	.label_372
	mov	qword ptr [rsp + 8], r9
	call	xstrdup
	mov	rbp, rax
	xor	ebx, ebx
.label_400:
	xor	r13d, r13d
	test	rbp, rbp
	mov	qword ptr [rsp + 0x30], r12
	mov	qword ptr [rsp + 0x28], r14
	je	.label_380
	cmp	byte ptr [rbp], 0x2b
	mov	qword ptr [rsp + 0x20], rbp
	je	.label_386
	mov	rdi, rbp
	call	getpwnam
	mov	rbp, qword ptr [rsp + 0x20]
	test	rax, rax
	je	.label_386
	mov	rax, qword ptr [rax + 0x10]
	xor	r13d, r13d
	test	r15, r15
	mov	qword ptr [rsp + 0x10], rax
	je	.label_393
	mov	r15, rbx
	test	r15, r15
	jne	.label_399
	mov	rbp, rax
	shr	rbp, 0x20
	mov	edi, ebp
	call	getgrgid
	test	rax, rax
	mov	qword ptr [rsp + 0x18], rbp
	je	.label_371
	mov	rdi, qword ptr [rax]
	jmp	.label_375
.label_386:
	mov	r14d, OFFSET FLAT:label_377
	xor	r13d, r13d
	test	r15, r15
	mov	r15, rbx
	je	.label_378
	test	r15, r15
	je	.label_383
.label_378:
	lea	rcx, [rsp + 0x40]
	xor	esi, esi
	mov	edx, 0xa
	mov	r8d, OFFSET FLAT:label_117
	mov	rdi, rbp
	call	xstrtoul
	test	eax, eax
	jne	.label_391
	mov	rax, qword ptr [rsp + 0x40]
	mov	rcx, rax
	shr	rcx, 0x20
	jne	.label_391
	xor	r14d, r14d
	cmp	eax, -1
	jne	.label_384
.label_391:
	mov	r14d, OFFSET FLAT:label_397
	mov	rax, qword ptr [rsp + 0x10]
.label_384:
	xor	r13d, r13d
	mov	qword ptr [rsp + 0x10], rax
	jmp	.label_383
.label_380:
	xor	edi, edi
	xor	r14d, r14d
	mov	r15, rbx
	jmp	.label_396
.label_372:
	xor	edi, edi
	jmp	.label_379
.label_393:
	xor	r14d, r14d
	mov	r15, rbx
	jmp	.label_383
.label_371:
	lea	rsi, [rsp + 0x40]
	mov	rdi, rbp
	call	umaxtostr
	mov	rdi, rax
.label_375:
	call	xstrdup
	mov	r13, rax
	call	endgrent
.label_399:
	xor	r14d, r14d
.label_383:
	call	endpwent
	mov	rdi, qword ptr [rsp + 0x20]
.label_396:
	test	r15, r15
	je	.label_388
	test	r14, r14
	jne	.label_388
	mov	rbp, rdi
	cmp	byte ptr [r15], 0x2b
	je	.label_390
	mov	rdi, r15
	call	getgrnam
	test	rax, rax
	je	.label_390
	mov	ebx, dword ptr [rax + 0x10]
	xor	r14d, r14d
	jmp	.label_374
.label_388:
	mov	r9, qword ptr [rsp + 8]
	jmp	.label_398
.label_390:
	lea	rcx, [rsp + 0x40]
	xor	esi, esi
	mov	edx, 0xa
	mov	r8d, OFFSET FLAT:label_117
	mov	rdi, r15
	call	xstrtoul
	test	eax, eax
	jne	.label_373
	mov	rbx, qword ptr [rsp + 0x40]
	mov	rax, rbx
	shr	rax, 0x20
	jne	.label_373
	xor	r14d, r14d
	cmp	ebx, -1
	jne	.label_374
.label_373:
	mov	r14d, OFFSET FLAT:label_381
	mov	rbx, qword ptr [rsp + 0x18]
.label_374:
	call	endgrent
	mov	rdi, r15
	call	xstrdup
	mov	r13, rax
	mov	qword ptr [rsp + 0x18], rbx
	mov	r9, qword ptr [rsp + 8]
	mov	rdi, rbp
.label_398:
	test	r14, r14
	je	.label_385
	xor	ebx, ebx
	jmp	.label_392
.label_385:
	mov	r14, qword ptr [rsp + 0x28]
	mov	r12, qword ptr [rsp + 0x30]
.label_379:
	mov	rax, qword ptr [rsp + 0x38]
	mov	rcx, qword ptr [rsp + 0x10]
	mov	dword ptr [rax], ecx
	test	r12, r12
	je	.label_395
	mov	rax, qword ptr [rsp + 0x18]
	mov	dword ptr [r12], eax
.label_395:
	test	r14, r14
	je	.label_401
	mov	qword ptr [r14], rdi
	xor	edi, edi
.label_401:
	mov	bl, 1
	xor	r14d, r14d
	test	r9, r9
	je	.label_392
	mov	qword ptr [r9], r13
	xor	r14d, r14d
	xor	r13d, r13d
.label_392:
	call	free
	mov	rdi, r13
	call	free
	xor	eax, eax
	test	bl, bl
	jne	.label_387
	xor	edi, edi
	mov	edx, 5
	mov	rsi, r14
	call	dcgettext
.label_387:
	add	rsp, 0x58
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x405543
	.globl sub_405543
	.type sub_405543, @function
sub_405543:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x405550
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
	je	.label_402
	mov	qword ptr [rax], rbx
.label_402:
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
	#Procedure 0x40563c
	.globl sub_40563c
	.type sub_40563c, @function
sub_40563c:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x405640

	.globl usage
	.type usage, @function
usage:
	push	rbp
	push	rbx
	push	rax
	mov	ebp, edi
	test	ebp, ebp
	jne	.label_413
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_416
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
	mov	esi, OFFSET FLAT:label_404
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_407
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_405
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
	mov	esi, OFFSET FLAT:label_425
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_409
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_403
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_420
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_406
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
	mov	esi, OFFSET FLAT:label_412
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
	mov	esi, OFFSET FLAT:label_421
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	mov	rdx, qword ptr [rip + program_name]
	mov	edi, 1
	xor	eax, eax
	mov	rsi, rcx
	mov	rcx, rdx
	mov	r8, rdx
	call	__printf_chk
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_410
	mov	edx, 5
	call	dcgettext
	mov	rsi, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:label_120
	mov	ecx, OFFSET FLAT:label_411
	xor	eax, eax
	call	__printf_chk
	mov	edi, 5
	xor	esi, esi
	call	setlocale
	test	rax, rax
	je	.label_422
	mov	esi, OFFSET FLAT:label_423
	mov	edx, 3
	mov	rdi, rax
	call	strncmp
	test	eax, eax
	je	.label_422
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_426
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	call	fputs_unlocked
.label_422:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_408
	mov	edx, 5
	call	dcgettext
	mov	rsi, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:label_411
	mov	ecx, OFFSET FLAT:label_119
	xor	eax, eax
	call	__printf_chk
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_414
	mov	edx, 5
	call	dcgettext
	mov	rsi, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:label_119
	mov	ecx, OFFSET FLAT:label_419
	xor	eax, eax
	call	__printf_chk
	mov	edi, ebp
	call	exit
.label_413:
	mov	rbx, qword ptr [rip + stderr]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_424
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
	#Procedure 0x40592e
	.globl sub_40592e
	.type sub_40592e, @function
sub_40592e:

	nop	
	.section	.text
	.align	16
	#Procedure 0x405930

	.globl version_etc_va
	.type version_etc_va, @function
version_etc_va:
	movsxd	r10, dword ptr [r8]
	cmp	r10, 0x28
	ja	.label_437
	mov	r9, r10
	add	r9, qword ptr [r8 + 0x10]
	lea	r10d, [r10 + 8]
	mov	dword ptr [r8], r10d
	jmp	.label_439
.label_437:
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
.label_439:
	sub	rsp, 0x58
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp], rax
	xor	r9d, r9d
	test	rax, rax
	je	.label_427
	cmp	r10d, 0x29
	jae	.label_436
	movsxd	r9, r10d
	add	r9, qword ptr [r8 + 0x10]
	add	r10d, 8
	mov	dword ptr [r8], r10d
	jmp	.label_438
.label_436:
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
.label_438:
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp + 8], rax
	mov	r9d, 1
	test	rax, rax
	je	.label_427
	cmp	r10d, 0x29
	jae	.label_434
	movsxd	r9, r10d
	add	r9, qword ptr [r8 + 0x10]
	add	r10d, 8
	mov	dword ptr [r8], r10d
	jmp	.label_435
.label_434:
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
.label_435:
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp + 0x10], rax
	mov	r9d, 2
	test	rax, rax
	je	.label_427
	cmp	r10d, 0x29
	jae	.label_432
	movsxd	r9, r10d
	add	r9, qword ptr [r8 + 0x10]
	add	r10d, 8
	mov	dword ptr [r8], r10d
	jmp	.label_433
.label_432:
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
.label_433:
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp + 0x18], rax
	mov	r9d, 3
	test	rax, rax
	je	.label_427
	cmp	r10d, 0x29
	jae	.label_430
	movsxd	r9, r10d
	add	r9, qword ptr [r8 + 0x10]
	add	r10d, 8
	mov	dword ptr [r8], r10d
	jmp	.label_431
.label_430:
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
.label_431:
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp + 0x20], rax
	mov	r9d, 4
	test	rax, rax
	je	.label_427
	cmp	r10d, 0x29
	jae	.label_428
	movsxd	r9, r10d
	add	r9, qword ptr [r8 + 0x10]
	add	r10d, 8
	mov	dword ptr [r8], r10d
	jmp	.label_429
.label_428:
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
.label_429:
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp + 0x28], rax
	mov	r9d, 5
	test	rax, rax
	je	.label_427
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp + 0x30], rax
	mov	r9d, 6
	test	rax, rax
	je	.label_427
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp + 0x38], rax
	mov	r9d, 7
	test	rax, rax
	je	.label_427
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp + 0x40], rax
	mov	r9d, 8
	test	rax, rax
	je	.label_427
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp + 0x48], rax
	cmp	rax, 1
	mov	r9d, 9
	sbb	r9, -1
.label_427:
	lea	r8, [rsp]
	call	version_etc_arn
	add	rsp, 0x58
	ret	
	.section	.text
	.align	16
	#Procedure 0x405b12
	.globl sub_405b12
	.type sub_405b12, @function
sub_405b12:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x405b20

	.globl version_etc
	.type version_etc, @function
version_etc:
	sub	rsp, 0xd8
	test	al, al
	je	.label_440
	movaps	xmmword ptr [rsp + 0x50], xmm0
	movaps	xmmword ptr [rsp + 0x60], xmm1
	movaps	xmmword ptr [rsp + 0x70], xmm2
	movaps	xmmword ptr [rsp + 0x80], xmm3
	movaps	xmmword ptr [rsp + 0x90], xmm4
	movaps	xmmword ptr [rsp + 0xa0], xmm5
	movaps	xmmword ptr [rsp + 0xb0], xmm6
	movaps	xmmword ptr [rsp + 0xc0], xmm7
.label_440:
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
	#Procedure 0x405ba3
	.globl sub_405ba3
	.type sub_405ba3, @function
sub_405ba3:

	nop	word ptr cs:[rax + rax]
.label_445:
	mov	rsi, rbx
	call	realloc
	test	rbx, rbx
	je	.label_441
	test	rax, rax
	je	.label_442
.label_441:
	pop	rbx
	ret	
.label_442:
	call	xalloc_die
.label_443:
	call	xalloc_die
	.section	.text
	.align	16
	#Procedure 0x405bce
	.globl sub_405bce
	.type sub_405bce, @function
sub_405bce:

	nop	word ptr [rax + rax]
.label_447:
	test	rcx, rcx
	jne	.label_444
	mov	eax, 0x80
	xor	edx, edx
	div	rbx
	xor	ecx, ecx
	cmp	rbx, 0x80
	seta	cl
	add	rcx, rax
.label_444:
	movabs	rax, 0x7fffffffffffffff
	xor	edx, edx
	div	rbx
	cmp	rax, rcx
	jb	.label_443
.label_446:
	mov	qword ptr [rsi], rcx
	imul	rbx, rcx
	test	rdi, rdi
	je	.label_445
	test	rbx, rbx
	jne	.label_445
	call	free
	xor	eax, eax
	pop	rbx
	ret	
	.section	.text
	.align	16
	#Procedure 0x405c23
	.globl x2nrealloc
	.type x2nrealloc, @function
x2nrealloc:

	push	rbx
	mov	rbx, rdx
	mov	rcx, qword ptr [rsi]
	test	rdi, rdi
	je	.label_447
	movabs	rax, 0x5555555555555554
	xor	edx, edx
	div	rbx
	cmp	rax, rcx
	jbe	.label_442
	mov	rax, rcx
	shr	rax, 1
	lea	rcx, [rcx + rax + 1]
	jmp	.label_446
	.section	.text
	.align	16
	#Procedure 0x405c50

	.globl dev_type_hash
	.type dev_type_hash, @function
dev_type_hash:
	mov	rax, qword ptr [rdi]
	xor	edx, edx
	div	rsi
	mov	rax, rdx
	ret	
	.section	.text
	.align	16
	#Procedure 0x405c5c
	.globl sub_405c5c
	.type sub_405c5c, @function
sub_405c5c:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x405c60

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
	jmp	.label_492
	.section	.text
	.align	16
	#Procedure 0x405d0f
	.globl sub_405d0f
	.type sub_405d0f, @function
sub_405d0f:

	nop	
.label_535:
	cmp	r8d, 2
	setne	al
	cmp	byte ptr [rsp + 0xf], 0
	setne	dl
	mov	rsi, qword ptr [rsp + 0xa8]
	test	sil, 1
	mov	bl, byte ptr [rsp + 0x34]
	mov	rsi, qword ptr [rsp + 0xc0]
	je	.label_494
	or	al, dl
	jne	.label_494
	test	dil, 1
	jne	.label_532
	cmp	qword ptr [rsp + 0x68], 0
	je	.label_494
	test	rbp, rbp
	mov	r15d, r8d
	mov	al, bl
	mov	qword ptr [rsp + 0x48], rcx
	mov	r12d, esi
	mov	r13, qword ptr [rsp + 0x68]
	je	.label_492
	jmp	.label_494
.label_1139:
	mov	r8d, 5
	test	r12b, 1
	jne	.label_544
	test	rbp, rbp
	je	.label_521
	mov	rax, qword ptr [rsp + 0x10]
	mov	byte ptr [rax], 0x22
.label_521:
	mov	r14d, 1
	jmp	.label_550
.label_1140:
	mov	r13b, 1
	mov	r8d, 5
	xor	r14d, r14d
	mov	eax, OFFSET FLAT:label_169
	mov	qword ptr [rsp + 0x58], rax
	mov	eax, 1
	mov	qword ptr [rsp + 0x50], rax
	mov	sil, 1
	jmp	.label_488
.label_544:
	xor	r14d, r14d
.label_550:
	mov	eax, OFFSET FLAT:label_169
	mov	qword ptr [rsp + 0x58], rax
	mov	eax, 1
	mov	qword ptr [rsp + 0x50], rax
	mov	r13b, 1
	jmp	.label_560
	.section	.text
	.align	16
	#Procedure 0x405ddf
	.globl sub_405ddf
	.type sub_405ddf, @function
sub_405ddf:

	nop	
.label_492:
	mov	rbp, r13
	xor	r14d, r14d
	mov	ecx, r15d
	cmp	r15d, 0xa
	ja	.label_564
	mov	r8d, 7
	mov	r13b, 1
	xor	esi, esi
	mov	r10, qword ptr [rsp + 0x28]
	mov	r11, qword ptr [rsp + 0x48]
	jmp	qword ptr [(rcx * 8) + label_543]
.label_1141:
	mov	r14d, edi
	mov	edi, OFFSET FLAT:label_450
	mov	esi, r15d
	mov	ebx, r9d
	call	gettext_quote
	mov	qword ptr [rsp + 0x80], rax
	mov	edi, OFFSET FLAT:label_170
	mov	esi, r15d
	call	gettext_quote
	mov	r9d, ebx
	mov	edi, r14d
	mov	qword ptr [rsp + 0x78], rax
.label_1142:
	mov	byte ptr [rsp + 0x1e], dil
	mov	dword ptr [rsp + 0x60], r9d
	test	r12b, 1
	mov	r14d, 0
	mov	rcx, qword ptr [rsp + 0x80]
	jne	.label_462
	mov	al, byte ptr [rcx]
	test	al, al
	mov	r14d, 0
	je	.label_462
	xor	r14d, r14d
	nop	
.label_480:
	cmp	r14, rbp
	jae	.label_475
	mov	rdx, qword ptr [rsp + 0x10]
	mov	byte ptr [rdx + r14], al
.label_475:
	movzx	eax, byte ptr [rcx + r14 + 1]
	inc	r14
	test	al, al
	jne	.label_480
.label_462:
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
	jmp	.label_488
.label_1134:
	xor	r8d, r8d
	xor	r14d, r14d
	mov	r13d, eax
	xor	esi, esi
	jmp	.label_488
.label_1137:
	mov	al, 1
.label_1135:
	mov	r12b, 1
.label_1138:
	test	r12b, 1
	mov	cl, 1
	je	.label_504
	mov	ecx, eax
.label_504:
	mov	al, cl
.label_1136:
	mov	r8d, 2
	test	r12b, 1
	jne	.label_505
	test	rbp, rbp
	je	.label_512
	mov	rcx, qword ptr [rsp + 0x10]
	mov	byte ptr [rcx], 0x27
.label_512:
	mov	r14d, 1
	jmp	.label_514
.label_505:
	xor	r14d, r14d
.label_514:
	mov	ecx, OFFSET FLAT:label_170
	mov	qword ptr [rsp + 0x58], rcx
	mov	ecx, 1
	mov	qword ptr [rsp + 0x50], rcx
	mov	r13d, eax
.label_560:
	mov	sil, r12b
.label_488:
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
	jmp	.label_525
	.section	.text
	.align	16
	#Procedure 0x405fa1
	.globl sub_405fa1
	.type sub_405fa1, @function
sub_405fa1:

	nop	word ptr cs:[rax + rax]
.label_542:
	inc	r12
.label_525:
	cmp	r11, -1
	je	.label_554
	cmp	r12, r11
	jne	.label_556
	jmp	.label_557
	.section	.text
	.align	16
	#Procedure 0x405fc3
	.globl sub_405fc3
	.type sub_405fc3, @function
sub_405fc3:

	nop	word ptr cs:[rax + rax]
.label_554:
	mov	rcx, -1
	cmp	byte ptr [r10 + r12], 0
	je	.label_541
.label_556:
	cmp	byte ptr [rsp + 0x37], 0
	je	.label_565
	mov	rax, qword ptr [rsp + 0x50]
	lea	rbx, [r12 + rax]
	cmp	rax, 2
	jb	.label_569
	cmp	r11, -1
	jne	.label_569
	mov	r15d, edi
	mov	rdi, r10
	mov	r13d, r9d
	call	strlen
	mov	r9d, r13d
	mov	r8, qword ptr [rsp + 0x38]
	mov	edi, r15d
	mov	r10, qword ptr [rsp + 0x28]
	mov	r11, rax
.label_569:
	cmp	rbx, r11
	jbe	.label_454
.label_565:
	xor	esi, esi
.label_490:
	movzx	r15d, byte ptr [r10 + r12]
	cmp	r15, 0x7e
	ja	.label_456
	xor	edx, edx
	mov	r13b, 1
	mov	cl, 0x6e
	mov	bl, 0x61
	xor	eax, eax
	jmp	qword ptr [(r15 * 8) + label_459]
.label_1163:
	test	r12, r12
	jne	.label_464
	jmp	.label_465
	.section	.text
	.align	16
	#Procedure 0x406056
	.globl sub_406056
	.type sub_406056, @function
sub_406056:

	nop	word ptr cs:[rax + rax]
.label_454:
	mov	r13d, r9d
	mov	r15d, edi
	mov	rbx, r11
	lea	rdi, [r10 + r12]
	mov	rsi, qword ptr [rsp + 0x58]
	mov	rdx, qword ptr [rsp + 0x50]
	call	memcmp
	test	eax, eax
	sete	sil
	jne	.label_479
	cmp	byte ptr [rsp + 0xf], 0
	mov	r10, qword ptr [rsp + 0x28]
	mov	r11, rbx
	mov	edi, r15d
	mov	r8, qword ptr [rsp + 0x38]
	mov	r9d, r13d
	je	.label_490
	jmp	.label_455
.label_479:
	mov	r10, qword ptr [rsp + 0x28]
	mov	r11, rbx
	mov	edi, r15d
	mov	r8, qword ptr [rsp + 0x38]
	mov	r9d, r13d
	jmp	.label_490
.label_1167:
	xor	eax, eax
	cmp	r11, -1
	je	.label_496
	test	r12, r12
	jne	.label_500
	cmp	r11, 1
	je	.label_465
	xor	r13d, r13d
	jmp	.label_452
.label_1156:
	cmp	byte ptr [rsp + 0x1f], 0
	je	.label_507
	cmp	byte ptr [rsp + 0xf], 0
	jne	.label_455
	cmp	r8d, 2
	jne	.label_517
	mov	eax, r9d
	and	al, 1
	jne	.label_517
	cmp	r14, rbp
	jae	.label_518
	mov	rax, qword ptr [rsp + 0x10]
	mov	byte ptr [rax + r14], 0x27
.label_518:
	lea	rax, [r14 + 1]
	cmp	rax, rbp
	jae	.label_522
	mov	rcx, qword ptr [rsp + 0x10]
	mov	byte ptr [rcx + rax], 0x24
.label_522:
	lea	rax, [r14 + 2]
	cmp	rax, rbp
	jae	.label_527
	mov	rcx, qword ptr [rsp + 0x10]
	mov	byte ptr [rcx + rax], 0x27
.label_527:
	add	r14, 3
	mov	r9b, 1
.label_517:
	mov	rcx, r14
	cmp	rcx, rbp
	jae	.label_531
	mov	rax, qword ptr [rsp + 0x10]
	mov	byte ptr [rax + rcx], 0x5c
.label_531:
	lea	r14, [rcx + 1]
	mov	al, 1
	mov	r15b, 0x30
	cmp	r8d, 2
	je	.label_540
	lea	rdx, [r12 + 1]
	cmp	rdx, r11
	jae	.label_540
	mov	dl, byte ptr [r10 + rdx]
	add	dl, 0xd0
	cmp	dl, 9
	ja	.label_540
	cmp	r14, rbp
	jae	.label_519
	mov	rdx, qword ptr [rsp + 0x10]
	mov	byte ptr [rdx + r14], 0x30
.label_519:
	lea	rdx, [rcx + 2]
	cmp	rdx, rbp
	jae	.label_570
	mov	ebx, esi
	mov	rsi, qword ptr [rsp + 0x10]
	mov	byte ptr [rsi + rdx], 0x30
	mov	esi, ebx
.label_570:
	add	rcx, 3
	xor	r13d, r13d
	mov	r14, rcx
	jmp	.label_452
.label_1157:
	mov	bl, 0x62
	jmp	.label_548
.label_1158:
	mov	cl, 0x74
	jmp	.label_509
.label_1159:
	mov	bl, 0x76
	jmp	.label_548
.label_1160:
	mov	bl, 0x66
	jmp	.label_548
.label_1161:
	mov	cl, 0x72
	jmp	.label_509
.label_1164:
	mov	r15b, 0x27
	mov	al, 1
	mov	qword ptr [rsp + 0xa8], rax
	cmp	r8d, 2
	jne	.label_563
	cmp	byte ptr [rsp + 0xf], 0
	jne	.label_470
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
	jae	.label_571
	mov	rax, qword ptr [rsp + 0x10]
	mov	byte ptr [rax + r14], 0x27
.label_571:
	lea	rax, [r14 + 1]
	cmp	rax, rbp
	jae	.label_457
	mov	rcx, qword ptr [rsp + 0x10]
	mov	byte ptr [rcx + rax], 0x5c
.label_457:
	lea	rax, [r14 + 2]
	cmp	rax, rbp
	jae	.label_461
	mov	rcx, qword ptr [rsp + 0x10]
	mov	byte ptr [rcx + rax], 0x27
.label_461:
	add	r14, 3
	xor	r9d, r9d
.label_563:
	xor	eax, eax
	mov	r13b, 1
	jmp	.label_452
.label_1165:
	mov	r15b, 0x3f
	cmp	r8d, 5
	je	.label_471
	cmp	r8d, 2
	jne	.label_464
	cmp	byte ptr [rsp + 0xf], 0
	je	.label_464
	jmp	.label_470
.label_1166:
	cmp	r8d, 2
	jne	.label_483
	cmp	byte ptr [rsp + 0xf], 0
	jne	.label_470
	mov	r15b, 0x5c
	xor	eax, eax
	jmp	.label_555
.label_456:
	cmp	qword ptr [rsp + 0xb8], 1
	mov	qword ptr [rsp + 0xa0], rbp
	mov	byte ptr [rsp + 0x1e], dil
	mov	dword ptr [rsp + 0x60], r9d
	mov	dword ptr [rsp + 0x94], esi
	jne	.label_491
	mov	qword ptr [rsp + 0x48], r11
	call	__ctype_b_loc
	mov	r10, qword ptr [rsp + 0x28]
	mov	rax, qword ptr [rax]
	movzx	r13d, word ptr [rax + r15*2]
	shr	r13d, 0xe
	and	r13b, 1
	mov	ebx, 1
	jmp	.label_539
.label_496:
	test	r12, r12
	jne	.label_515
	mov	cl, byte ptr [r10 + 1]
	test	cl, cl
	jne	.label_515
.label_465:
	mov	dl, 1
.label_1162:
	cmp	byte ptr [rsp + 0x27], 0
	je	.label_470
	xor	eax, eax
	mov	r13b, dl
.label_452:
	cmp	byte ptr [rsp + 0x36], 0
	je	.label_526
	cmp	qword ptr [rsp + 0x100], 0
	jne	.label_528
	jmp	.label_529
	.section	.text
	.align	16
	#Procedure 0x406334
	.globl sub_406334
	.type sub_406334, @function
sub_406334:

	nop	word ptr cs:[rax + rax]
.label_526:
	cmp	byte ptr [rsp + 0x35], 0
	je	.label_529
.label_528:
	mov	ecx, r15d
	shr	cl, 5
	movzx	edx, cl
	mov	ebx, esi
	mov	esi, 1
	mov	ecx, r15d
	shl	esi, cl
	test	bl, bl
	jne	.label_533
	mov	rcx, qword ptr [rsp + 0x100]
	and	esi, dword ptr [rcx + rdx*4]
	jmp	.label_538
	.section	.text
	.align	16
	#Procedure 0x40636d
	.globl sub_40636d
	.type sub_40636d, @function
sub_40636d:

	nop	dword ptr [rax]
.label_529:
	test	sil, sil
.label_538:
	mov	ebx, r15d
	je	.label_468
	jmp	.label_546
.label_533:
	mov	ebx, r15d
	jmp	.label_546
.label_507:
	cmp	dword ptr [rsp + 0x9c], 0
	jne	.label_542
	xor	r15d, r15d
	jmp	.label_464
.label_483:
	mov	cl, 0x5c
	cmp	byte ptr [rsp + 0x32], 0
	je	.label_509
	xor	eax, eax
	mov	r15b, 0x5c
.label_555:
	xor	r13d, r13d
	jmp	.label_468
.label_509:
	cmp	byte ptr [rsp + 0x27], 0
	mov	ebx, ecx
	je	.label_470
.label_548:
	xor	eax, eax
	cmp	byte ptr [rsp + 0x1f], 0
	mov	r13d, 0
	je	.label_452
	nop	
.label_546:
	cmp	byte ptr [rsp + 0xf], 0
	jne	.label_455
	cmp	r8d, 2
	jne	.label_552
	mov	eax, r9d
	and	al, 1
	jne	.label_552
	cmp	r14, rbp
	jae	.label_568
	mov	rax, qword ptr [rsp + 0x10]
	mov	byte ptr [rax + r14], 0x27
.label_568:
	lea	rax, [r14 + 1]
	cmp	rax, rbp
	jae	.label_572
	mov	rcx, qword ptr [rsp + 0x10]
	mov	byte ptr [rcx + rax], 0x24
.label_572:
	lea	rax, [r14 + 2]
	cmp	rax, rbp
	jae	.label_449
	mov	rcx, qword ptr [rsp + 0x10]
	mov	byte ptr [rcx + rax], 0x27
.label_449:
	add	r14, 3
	mov	r9b, 1
.label_552:
	cmp	r14, rbp
	jae	.label_501
	mov	rax, qword ptr [rsp + 0x10]
	mov	byte ptr [rax + r14], 0x5c
.label_501:
	inc	r14
	jmp	.label_478
.label_491:
	mov	qword ptr [rsp + 0x70], 0
	cmp	r11, -1
	jne	.label_460
	mov	rdi, r10
	call	strlen
	mov	r10, qword ptr [rsp + 0x28]
	mov	r11, rax
.label_460:
	cmp	byte ptr [rsp + 0x31], 0
	mov	qword ptr [rsp + 0x48], r11
	mov	qword ptr [rsp + 0x88], r12
	je	.label_467
	lea	rax, [r10 + r12]
	mov	qword ptr [rsp + 0xb0], rax
	mov	r13b, 1
	xor	r12d, r12d
	lea	rbp, [rsp + 0x70]
.label_493:
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
	je	.label_484
	cmp	rbx, -1
	mov	r10, qword ptr [rsp + 0x28]
	movabs	rsi, 0x20000002b
	je	.label_497
	test	rbx, rbx
	mov	r11, qword ptr [rsp + 0x48]
	je	.label_516
	cmp	rbx, 2
	mov	rbp, qword ptr [rsp + 0xa0]
	jb	.label_510
	mov	rax, qword ptr [rsp + 0x40]
	mov	rcx, qword ptr [rsp + 0xb0]
	lea	rax, [rcx + rax]
	mov	ecx, 1
	nop	dword ptr [rax]
.label_551:
	movsx	edx, byte ptr [rax + rcx]
	add	edx, -0x5b
	cmp	edx, 0x21
	ja	.label_567
	bt	rsi, rdx
	jb	.label_470
.label_567:
	inc	rcx
	cmp	rcx, rbx
	jb	.label_551
.label_510:
	mov	edi, dword ptr [rsp + 0x64]
	call	iswprint
	test	eax, eax
	jne	.label_530
	xor	r13d, r13d
.label_530:
	lea	rbp, [rsp + 0x70]
	mov	r12, qword ptr [rsp + 0x40]
	add	r12, rbx
	mov	rdi, rbp
	call	mbsinit
	test	eax, eax
	mov	r10, qword ptr [rsp + 0x28]
	mov	r11, qword ptr [rsp + 0x48]
	je	.label_493
	jmp	.label_499
.label_540:
	xor	r13d, r13d
	jmp	.label_452
.label_515:
	mov	r11, -1
	xor	r13d, r13d
	jmp	.label_452
.label_471:
	cmp	dword ptr [rsp + 0x98], 0
	je	.label_464
	lea	rcx, [r12 + 2]
	cmp	rcx, r11
	jae	.label_464
	cmp	byte ptr [r10 + r12 + 1], 0x3f
	jne	.label_464
	movsx	edx, byte ptr [r10 + rcx]
	xor	eax, eax
	cmp	edx, 0x3e
	ja	.label_553
	mov	ebx, esi
	movabs	rsi, 0x7000a38200000000
	bt	rsi, rdx
	jae	.label_466
	cmp	byte ptr [rsp + 0xf], 0
	jne	.label_559
	cmp	r14, rbp
	jae	.label_561
	mov	rax, qword ptr [rsp + 0x10]
	mov	byte ptr [rax + r14], 0x3f
.label_561:
	lea	rax, [r14 + 1]
	cmp	rax, rbp
	jae	.label_566
	mov	rsi, qword ptr [rsp + 0x10]
	mov	byte ptr [rsi + rax], 0x22
.label_566:
	lea	rax, [r14 + 2]
	cmp	rax, rbp
	jae	.label_503
	mov	rsi, qword ptr [rsp + 0x10]
	mov	byte ptr [rsi + rax], 0x22
.label_503:
	lea	rax, [r14 + 3]
	cmp	rax, rbp
	jae	.label_463
	mov	rsi, qword ptr [rsp + 0x10]
	mov	byte ptr [rsi + rax], 0x3f
.label_463:
	add	r14, 4
	xor	eax, eax
	mov	r12, rcx
	mov	r15b, dl
.label_466:
	xor	r13d, r13d
	mov	esi, ebx
	jmp	.label_452
.label_464:
	xor	eax, eax
.label_500:
	xor	r13d, r13d
	jmp	.label_452
.label_467:
	mov	r13b, 1
	xor	r12d, r12d
	lea	rbx, [rsp + 0x70]
	nop	word ptr cs:[rax + rax]
.label_495:
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
	je	.label_513
	cmp	rbp, -1
	je	.label_482
	cmp	rbp, -2
	je	.label_484
	mov	edi, dword ptr [rsp + 0x64]
	call	iswprint
	test	eax, eax
	mov	r12, qword ptr [rsp + 0x40]
	jne	.label_489
	xor	r13d, r13d
.label_489:
	add	r12, rbp
	lea	rbx, [rsp + 0x70]
	mov	rdi, rbx
	call	mbsinit
	test	eax, eax
	mov	r10, qword ptr [rsp + 0x28]
	mov	r11, qword ptr [rsp + 0x48]
	je	.label_495
	jmp	.label_499
.label_484:
	mov	r10, qword ptr [rsp + 0x28]
	mov	rsi, qword ptr [rsp + 0x40]
	lea	rax, [rsi + r12]
	mov	rdx, qword ptr [rsp + 0x48]
	cmp	rax, rdx
	jae	.label_486
	lea	rax, [r10 + r12]
.label_502:
	cmp	byte ptr [rax + rsi], 0
	je	.label_486
	lea	rcx, [r12 + rsi + 1]
	inc	rsi
	cmp	rcx, rdx
	jb	.label_502
.label_486:
	mov	qword ptr [rsp + 0x40], rsi
.label_497:
	xor	r13d, r13d
	jmp	.label_516
.label_482:
	xor	r13d, r13d
.label_513:
	mov	r10, qword ptr [rsp + 0x28]
.label_516:
	mov	r12, qword ptr [rsp + 0x40]
.label_499:
	mov	rbx, r12
	mov	r12, qword ptr [rsp + 0x88]
.label_539:
	and	r13b, 1
	mov	eax, r13d
	or	al, byte ptr [rsp + 0x33]
	cmp	rbx, 1
	mov	rbp, qword ptr [rsp + 0xa0]
	mov	dil, byte ptr [rsp + 0x1e]
	mov	r8, qword ptr [rsp + 0x38]
	mov	r9d, dword ptr [rsp + 0x60]
	mov	esi, dword ptr [rsp + 0x94]
	ja	.label_524
	test	al, al
	je	.label_524
	xor	eax, eax
	mov	r11, qword ptr [rsp + 0x48]
	jmp	.label_452
.label_524:
	mov	byte ptr [rsp + 0x40], al
	add	rbx, r12
	xor	eax, eax
	mov	r11, qword ptr [rsp + 0x48]
	jmp	.label_536
	.section	.text
	.align	16
	#Procedure 0x406767
	.globl sub_406767
	.type sub_406767, @function
sub_406767:

	nop	word ptr [rax + rax]
.label_498:
	inc	r14
	mov	r15b, byte ptr [r10 + r12 + 1]
	mov	r12, rdx
.label_536:
	cmp	byte ptr [rsp + 0x40], 0
	je	.label_545
	test	sil, 1
	je	.label_520
	cmp	r14, rbp
	jae	.label_549
	mov	rdx, qword ptr [rsp + 0x10]
	mov	byte ptr [rdx + r14], 0x5c
.label_549:
	inc	r14
	xor	esi, esi
	jmp	.label_520
	.section	.text
	.align	16
	#Procedure 0x4067a5
	.globl sub_4067a5
	.type sub_4067a5, @function
sub_4067a5:

	nop	word ptr cs:[rax + rax]
.label_545:
	cmp	byte ptr [rsp + 0xf], 0
	jne	.label_455
	cmp	r8d, 2
	jne	.label_547
	mov	eax, r9d
	and	al, 1
	jne	.label_547
	cmp	r14, rbp
	jae	.label_558
	mov	rax, qword ptr [rsp + 0x10]
	mov	byte ptr [rax + r14], 0x27
.label_558:
	lea	rax, [r14 + 1]
	cmp	rax, rbp
	jae	.label_476
	mov	rdx, qword ptr [rsp + 0x10]
	mov	byte ptr [rdx + rax], 0x24
.label_476:
	lea	rax, [r14 + 2]
	cmp	rax, rbp
	jae	.label_537
	mov	rdx, qword ptr [rsp + 0x10]
	mov	byte ptr [rdx + rax], 0x27
.label_537:
	add	r14, 3
	mov	r9b, 1
.label_547:
	cmp	r14, rbp
	jae	.label_448
	mov	rax, qword ptr [rsp + 0x10]
	mov	byte ptr [rax + r14], 0x5c
.label_448:
	lea	rax, [r14 + 1]
	cmp	rax, rbp
	jae	.label_472
	mov	edx, r15d
	shr	dl, 6
	or	dl, 0x30
	mov	ecx, esi
	mov	rsi, qword ptr [rsp + 0x10]
	mov	byte ptr [rsi + rax], dl
	mov	esi, ecx
.label_472:
	lea	rax, [r14 + 2]
	cmp	rax, rbp
	jae	.label_458
	mov	edx, r15d
	shr	dl, 3
	and	dl, 7
	or	dl, 0x30
	mov	ecx, esi
	mov	rsi, qword ptr [rsp + 0x10]
	mov	byte ptr [rsi + rax], dl
	mov	esi, ecx
.label_458:
	add	r14, 3
	and	r15b, 7
	or	r15b, 0x30
	mov	al, 1
.label_520:
	lea	rdx, [r12 + 1]
	cmp	rbx, rdx
	jbe	.label_468
	test	r9b, 1
	je	.label_473
	mov	rcx, rbx
	mov	ebx, eax
	and	bl, 1
	jne	.label_487
	mov	r8, r12
	mov	r12d, esi
	cmp	r14, rbp
	jae	.label_477
	mov	rsi, qword ptr [rsp + 0x10]
	mov	byte ptr [rsi + r14], 0x27
.label_477:
	lea	rsi, [r14 + 1]
	cmp	rsi, rbp
	jae	.label_485
	mov	rbx, qword ptr [rsp + 0x10]
	mov	byte ptr [rbx + rsi], 0x27
.label_485:
	add	r14, 2
	xor	r9d, r9d
	mov	esi, r12d
	mov	rbx, rcx
	mov	r12, r8
	mov	r8, qword ptr [rsp + 0x38]
	jmp	.label_473
	.section	.text
	.align	16
	#Procedure 0x4068b6
	.globl sub_4068b6
	.type sub_4068b6, @function
sub_4068b6:

	nop	word ptr cs:[rax + rax]
.label_487:
	mov	rbx, rcx
.label_473:
	cmp	r14, rbp
	jae	.label_498
	mov	ecx, esi
	mov	rsi, qword ptr [rsp + 0x10]
	mov	byte ptr [rsi + r14], r15b
	mov	esi, ecx
	jmp	.label_498
	.section	.text
	.align	16
	#Procedure 0x4068de
	.globl sub_4068de
	.type sub_4068de, @function
sub_4068de:

	nop	
.label_468:
	test	r9b, 1
	je	.label_506
	and	al, 1
	jne	.label_506
	cmp	r14, rbp
	jae	.label_511
	mov	rax, qword ptr [rsp + 0x10]
	mov	byte ptr [rax + r14], 0x27
.label_511:
	lea	rax, [r14 + 1]
	cmp	rax, rbp
	jae	.label_562
	mov	rcx, qword ptr [rsp + 0x10]
	mov	byte ptr [rcx + rax], 0x27
.label_562:
	add	r14, 2
	xor	r9d, r9d
.label_506:
	mov	ebx, r15d
.label_478:
	cmp	r14, rbp
	jae	.label_523
	mov	rax, qword ptr [rsp + 0x10]
	mov	byte ptr [rax + r14], bl
.label_523:
	inc	r14
	shl	r13b, 7
	sar	r13b, 7
	and	r13b, dil
	mov	edi, r13d
	jmp	.label_542
.label_553:
	xor	r13d, r13d
	jmp	.label_452
	.section	.text
	.align	16
	#Procedure 0x406941
	.globl sub_406941
	.type sub_406941, @function
sub_406941:

	nop	word ptr cs:[rax + rax]
.label_557:
	mov	rcx, r12
.label_541:
	cmp	r8d, 2
	setne	al
	test	r14, r14
	setne	dl
	cmp	byte ptr [rsp + 0xf], 0
	je	.label_535
	or	al, dl
	jne	.label_535
	mov	r11, rcx
	jmp	.label_455
.label_470:
	mov	eax, 2
.label_481:
	mov	qword ptr [rsp + 0x38], rax
.label_455:
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
.label_469:
	mov	r14, rax
.label_474:
	mov	rax, r14
	add	rsp, 0xc8
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_494:
	mov	rdx, qword ptr [rsp + 0x58]
	test	rdx, rdx
	je	.label_534
	cmp	byte ptr [rsp + 0xf], 0
	mov	rcx, qword ptr [rsp + 0x10]
	jne	.label_508
	mov	al, byte ptr [rdx]
	test	al, al
	je	.label_508
	inc	rdx
	nop	dword ptr [rax + rax]
.label_453:
	cmp	r14, rbp
	jae	.label_451
	mov	byte ptr [rcx + r14], al
.label_451:
	inc	r14
	movzx	eax, byte ptr [rdx]
	inc	rdx
	test	al, al
	jne	.label_453
	jmp	.label_508
.label_532:
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
	jmp	.label_469
.label_534:
	mov	rcx, qword ptr [rsp + 0x10]
.label_508:
	cmp	r14, rbp
	jae	.label_474
	mov	byte ptr [rcx + r14], 0
	jmp	.label_474
.label_559:
	mov	eax, 5
	jmp	.label_481
.label_564:
	call	abort
	.section	.text
	.align	16
	#Procedure 0x406a90

	.globl rpl_fts_set
	.type rpl_fts_set, @function
rpl_fts_set:
	cmp	edx, 5
	jb	.label_573
	push	rax
	call	__errno_location
	mov	dword ptr [rax], 0x16
	mov	eax, 1
	add	rsp, 8
	ret	
.label_573:
	mov	word ptr [rsi + 0x74], dx
	xor	eax, eax
	ret	
	.section	.text
	.align	16
	#Procedure 0x406ab2
	.globl sub_406ab2
	.type sub_406ab2, @function
sub_406ab2:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x406ac0
	.globl quotearg_n_custom
	.type quotearg_n_custom, @function
quotearg_n_custom:

	sub	rsp, 0x38
	mov	rax, qword ptr [rip + label_82]
	mov	qword ptr [rsp + 0x30], rax
	movups	xmm0, xmmword ptr [rip + label_83]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0, xmmword ptr [rip + label_84]
	movaps	xmmword ptr [rsp + 0x10], xmm0
	movups	xmm0, xmmword ptr [rip + default_quoting_options]
	movaps	xmmword ptr [rsp], xmm0
	mov	dword ptr [rsp], 0xa
	test	rsi, rsi
	je	.label_574
	test	rdx, rdx
	je	.label_574
	mov	qword ptr [rsp + 0x28], rsi
	mov	qword ptr [rsp + 0x30], rdx
	lea	rax, [rsp]
	mov	rdx, -1
	mov	rsi, rcx
	mov	rcx, rax
	call	quotearg_n_options
	add	rsp, 0x38
	ret	
.label_574:
	call	abort
	.section	.text
	.align	16
	#Procedure 0x406b2e
	.globl sub_406b2e
	.type sub_406b2e, @function
sub_406b2e:

	nop	
	.section	.text
	.align	16
	#Procedure 0x406b30

	.globl uid_to_name
	.type uid_to_name, @function
uid_to_name:
	push	rbx
	sub	rsp, 0x20
	mov	ebx, edi
	call	getpwuid
	test	rax, rax
	je	.label_576
	mov	rdi, qword ptr [rax]
	jmp	.label_575
.label_576:
	mov	edi, ebx
	lea	rsi, [rsp]
	call	umaxtostr
	mov	rdi, rax
.label_575:
	call	xstrdup
	add	rsp, 0x20
	pop	rbx
	ret	
	.section	.text
	.align	16
	#Procedure 0x406b5f
	.globl sub_406b5f
	.type sub_406b5f, @function
sub_406b5f:

	nop	
	.section	.text
	.align	16
	#Procedure 0x406b60

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
	mov	r12, rsi
	mov	r15, rdi
	test	rbx, rbx
	je	.label_591
	movzx	edx, byte ptr [rbx]
	mov	ecx, 0x2e
	mov	eax, 0x2e
	sub	eax, edx
	jne	.label_577
	movzx	eax, byte ptr [rbx + 1]
	sub	ecx, eax
	mov	eax, ecx
	jne	.label_577
	movzx	eax, byte ptr [rbx + 2]
	neg	eax
.label_577:
	test	eax, eax
	sete	r14b
	jmp	.label_582
.label_591:
	xor	r14d, r14d
.label_582:
	mov	eax, dword ptr [r15 + 0x48]
	test	al, 4
	jne	.label_583
	test	r13d, r13d
	mov	qword ptr [rsp], r12
	jns	.label_584
	mov	ecx, r14d
	xor	cl, 1
	jne	.label_584
	and	eax, 0x200
	je	.label_584
	lea	rbp, [r15 + 0x60]
	mov	rdi, rbp
	call	i_ring_empty
	test	al, al
	jne	.label_584
	mov	rdi, rbp
	call	i_ring_pop
	xor	ecx, ecx
	test	eax, eax
	cmovns	rbx, rcx
	cmovns	r13d, eax
	mov	r14b, 1
.label_584:
	test	r13d, r13d
	mov	r12d, r13d
	jns	.label_595
	mov	eax, dword ptr [r15 + 0x48]
	mov	edx, eax
	and	edx, 0x10
	shl	edx, 0xd
	or	edx, 0x90900
	test	ah, 2
	jne	.label_596
	xor	eax, eax
	mov	rdi, rbx
	mov	esi, edx
	call	open_safer
	jmp	.label_581
.label_583:
	xor	ebp, ebp
	test	r13d, r13d
	js	.label_578
	and	eax, 0x200
	je	.label_578
	mov	edi, r13d
	call	close
	jmp	.label_578
.label_596:
	mov	edi, dword ptr [r15 + 0x2c]
	xor	eax, eax
	mov	rsi, rbx
	call	openat_safer
.label_581:
	mov	r12d, eax
	mov	ebp, 0xffffffff
	test	r12d, r12d
	js	.label_578
.label_595:
	mov	eax, dword ptr [r15 + 0x48]
	test	al, 2
	jne	.label_592
	test	rbx, rbx
	je	.label_594
	cmp	byte ptr [rbx], 0x2e
	jne	.label_594
	cmp	byte ptr [rbx + 1], 0x2e
	jne	.label_594
	cmp	byte ptr [rbx + 2], 0
	jne	.label_594
.label_592:
	lea	rdx, [rsp + 8]
	mov	edi, 1
	mov	esi, r12d
	call	__fxstat
	test	eax, eax
	jne	.label_586
	mov	rcx, qword ptr [rsp]
	mov	rax, qword ptr [rcx + 0x78]
	cmp	rax, qword ptr [rsp + 8]
	jne	.label_579
	mov	rax, qword ptr [rcx + 0x80]
	cmp	rax, qword ptr [rsp + 0x10]
	jne	.label_579
	mov	eax, dword ptr [r15 + 0x48]
.label_594:
	test	ah, 2
	jne	.label_585
	mov	edi, r12d
	call	fchdir
	mov	ebp, eax
	jmp	.label_587
.label_585:
	mov	esi, dword ptr [r15 + 0x2c]
	cmp	esi, r12d
	jne	.label_588
	cmp	esi, -0x64
	jne	.label_589
.label_588:
	test	r14b, r14b
	je	.label_590
	test	al, 4
	jne	.label_580
	test	esi, esi
	js	.label_580
	mov	edi, esi
	jmp	.label_593
.label_579:
	call	__errno_location
	mov	dword ptr [rax], 2
.label_586:
	mov	ebp, 0xffffffff
.label_587:
	test	r13d, r13d
	jns	.label_578
	call	__errno_location
	mov	rbx, rax
	mov	r14d, dword ptr [rbx]
	mov	edi, r12d
	call	close
	mov	dword ptr [rbx], r14d
	jmp	.label_578
.label_590:
	lea	rdi, [r15 + 0x60]
	call	i_ring_push
	test	eax, eax
	js	.label_580
	mov	edi, eax
.label_593:
	call	close
.label_580:
	mov	dword ptr [r15 + 0x2c], r12d
	xor	ebp, ebp
.label_578:
	mov	eax, ebp
	add	rsp, 0x98
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_589:
	call	abort
	.section	.text
	.align	16
	#Procedure 0x406d49
	.globl sub_406d49
	.type sub_406d49, @function
sub_406d49:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x406d50
	.globl hash_get_max_bucket_length
	.type hash_get_max_bucket_length, @function
hash_get_max_bucket_length:

	mov	rcx, qword ptr [rdi]
	mov	rdi, qword ptr [rdi + 8]
	xor	eax, eax
	cmp	rcx, rdi
	jae	.label_599
	mov	rax, rcx
	not	rax
	add	rdi, rax
	shr	rdi, 4
	lea	rsi, [rdi + 1]
	mov	r8d, esi
	and	r8d, 1
	xor	eax, eax
	test	rdi, rdi
	je	.label_598
	sub	rsi, r8
	xor	eax, eax
	nop	word ptr cs:[rax + rax]
.label_600:
	cmp	qword ptr [rcx], 0
	je	.label_601
	xor	edi, edi
	mov	rdx, rcx
	nop	dword ptr [rax + rax]
.label_597:
	mov	rdx, qword ptr [rdx + 8]
	inc	rdi
	test	rdx, rdx
	jne	.label_597
	cmp	rdi, rax
	cmova	rax, rdi
.label_601:
	cmp	qword ptr [rcx + 0x10], 0
	je	.label_602
	lea	rdx, [rcx + 0x10]
	xor	edi, edi
.label_603:
	mov	rdx, qword ptr [rdx + 8]
	inc	rdi
	test	rdx, rdx
	jne	.label_603
	cmp	rdi, rax
	cmova	rax, rdi
.label_602:
	add	rcx, 0x20
	add	rsi, -2
	jne	.label_600
.label_598:
	test	r8, r8
	je	.label_599
	cmp	qword ptr [rcx], 0
	je	.label_599
	xor	edx, edx
	nop	word ptr [rax + rax]
.label_604:
	mov	rcx, qword ptr [rcx + 8]
	inc	rdx
	test	rcx, rcx
	jne	.label_604
	cmp	rdx, rax
	cmova	rax, rdx
.label_599:
	ret	
	.section	.text
	.align	16
	#Procedure 0x406e04
	.globl sub_406e04
	.type sub_406e04, @function
sub_406e04:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x406e10

	.globl rpl_fts_close
	.type rpl_fts_close, @function
rpl_fts_close:
	push	rbp
	push	r14
	push	rbx
	mov	r14, rdi
	mov	rdi, qword ptr [r14]
	test	rdi, rdi
	je	.label_607
	cmp	qword ptr [rdi + 0x58], 0
	js	.label_608
	nop	word ptr cs:[rax + rax]
.label_618:
	mov	rbx, qword ptr [rdi + 0x10]
	test	rbx, rbx
	jne	.label_614
	mov	rbx, qword ptr [rdi + 8]
.label_614:
	call	free
	cmp	qword ptr [rbx + 0x58], 0
	mov	rdi, rbx
	jns	.label_618
	jmp	.label_619
.label_608:
	mov	rbx, rdi
.label_619:
	mov	rdi, rbx
	call	free
.label_607:
	mov	rbx, qword ptr [r14 + 8]
	test	rbx, rbx
	je	.label_621
	nop	word ptr cs:[rax + rax]
.label_605:
	mov	rbp, qword ptr [rbx + 0x10]
	mov	rdi, qword ptr [rbx + 0x18]
	test	rdi, rdi
	je	.label_623
	call	closedir
.label_623:
	mov	rdi, rbx
	call	free
	test	rbp, rbp
	mov	rbx, rbp
	jne	.label_605
.label_621:
	mov	rdi, qword ptr [r14 + 0x10]
	call	free
	mov	rdi, qword ptr [r14 + 0x20]
	call	free
	mov	eax, dword ptr [r14 + 0x48]
	test	ah, 2
	jne	.label_611
	xor	ebp, ebp
	test	al, 4
	jne	.label_612
	mov	edi, dword ptr [r14 + 0x28]
	call	fchdir
	xor	ebp, ebp
	test	eax, eax
	je	.label_617
	call	__errno_location
	mov	ebp, dword ptr [rax]
.label_617:
	mov	edi, dword ptr [r14 + 0x28]
	call	close
	test	ebp, ebp
	je	.label_620
	jmp	.label_612
.label_611:
	mov	edi, dword ptr [r14 + 0x2c]
	xor	ebp, ebp
	test	edi, edi
	js	.label_612
	call	close
.label_620:
	test	eax, eax
	je	.label_612
	call	__errno_location
	mov	ebp, dword ptr [rax]
.label_612:
	lea	rbx, [r14 + 0x60]
	jmp	.label_616
	.section	.text
	.align	16
	#Procedure 0x406ef8
	.globl sub_406ef8
	.type sub_406ef8, @function
sub_406ef8:

	nop	dword ptr [rax + rax]
.label_610:
	mov	edi, eax
	call	close
.label_616:
	mov	rdi, rbx
	call	i_ring_empty
	test	al, al
	jne	.label_606
	mov	rdi, rbx
	call	i_ring_pop
	test	eax, eax
	jns	.label_610
	jmp	.label_616
.label_606:
	mov	rdi, qword ptr [r14 + 0x50]
	test	rdi, rdi
	je	.label_609
	call	hash_free
.label_609:
	movzx	eax, word ptr [r14 + 0x48]
	test	ax, 0x102
	je	.label_613
	mov	rdi, qword ptr [r14 + 0x58]
	test	rdi, rdi
	je	.label_615
	call	hash_free
	jmp	.label_615
.label_613:
	mov	rdi, qword ptr [r14 + 0x58]
	call	free
.label_615:
	mov	rdi, r14
	call	free
	xor	eax, eax
	test	ebp, ebp
	je	.label_622
	call	__errno_location
	mov	dword ptr [rax], ebp
	mov	eax, 0xffffffff
.label_622:
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x406f72
	.globl sub_406f72
	.type sub_406f72, @function
sub_406f72:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x406f80

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
	mov	rsi, qword ptr [r14 + 0x10]
	mov	rdi, r12
	call	qword ptr [r14 + 0x30]
	cmp	rax, qword ptr [r14 + 0x10]
	jae	.label_628
	mov	rbx, qword ptr [r14]
	shl	rax, 4
	mov	rsi, qword ptr [rbx + rax]
	xor	r15d, r15d
	test	rsi, rsi
	je	.label_625
	add	rbx, rax
	je	.label_625
	cmp	rsi, r12
	je	.label_627
	xor	r15d, r15d
	nop	
.label_626:
	mov	rdi, r12
	call	qword ptr [r14 + 0x38]
	test	al, al
	jne	.label_624
	mov	rbx, qword ptr [rbx + 8]
	test	rbx, rbx
	je	.label_625
	mov	rsi, qword ptr [rbx]
	cmp	rsi, r12
	jne	.label_626
.label_627:
	mov	r15, r12
	jmp	.label_625
.label_624:
	mov	r15, qword ptr [rbx]
.label_625:
	mov	rax, r15
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	ret	
.label_628:
	call	abort
	.section	.text
	.align	16
	#Procedure 0x406ff8
	.globl sub_406ff8
	.type sub_406ff8, @function
sub_406ff8:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x407000

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
	mov	r15, rsi
	mov	r14, rdi
	mov	r13, qword ptr [r15]
	mov	rax, qword ptr [r15 + 8]
	cmp	r13, rax
	jae	.label_629
	test	dl, dl
	je	.label_638
	nop	dword ptr [rax]
.label_630:
	cmp	qword ptr [r13], 0
	je	.label_645
	mov	rbp, qword ptr [r13 + 8]
	test	rbp, rbp
	je	.label_649
	mov	rsi, qword ptr [r14 + 0x10]
	nop	dword ptr [rax + rax]
.label_634:
	mov	rbx, qword ptr [rbp]
	mov	rdi, rbx
	call	qword ptr [r14 + 0x30]
	mov	rsi, qword ptr [r14 + 0x10]
	cmp	rax, rsi
	jae	.label_635
	mov	rdx, qword ptr [r14]
	mov	rcx, qword ptr [rbp + 8]
	shl	rax, 4
	cmp	qword ptr [rdx + rax], 0
	je	.label_642
	mov	rdi, qword ptr [rdx + rax + 8]
	mov	qword ptr [rbp + 8], rdi
	mov	qword ptr [rdx + rax + 8], rbp
	jmp	.label_640
	.section	.text
	.align	16
	#Procedure 0x40708a
	.globl sub_40708a
	.type sub_40708a, @function
sub_40708a:

	nop	word ptr [rax + rax]
.label_642:
	add	rdx, rax
	mov	qword ptr [rdx], rbx
	inc	qword ptr [r14 + 0x18]
	mov	qword ptr [rbp], 0
	mov	rax, qword ptr [r14 + 0x48]
	mov	qword ptr [rbp + 8], rax
	mov	qword ptr [r14 + 0x48], rbp
.label_640:
	test	rcx, rcx
	mov	rbp, rcx
	jne	.label_634
	mov	rax, qword ptr [r15 + 8]
.label_649:
	mov	qword ptr [r13 + 8], 0
.label_645:
	add	r13, 0x10
	cmp	r13, rax
	jb	.label_630
	jmp	.label_629
	.section	.text
	.align	16
	#Procedure 0x4070d4
	.globl sub_4070d4
	.type sub_4070d4, @function
sub_4070d4:

	nop	word ptr cs:[rax + rax]
.label_638:
	mov	r12, qword ptr [r13]
	test	r12, r12
	je	.label_641
	mov	rbp, qword ptr [r13 + 8]
	test	rbp, rbp
	mov	rsi, qword ptr [r14 + 0x10]
	je	.label_643
	nop	word ptr [rax + rax]
.label_647:
	mov	rbx, qword ptr [rbp]
	mov	rdi, rbx
	call	qword ptr [r14 + 0x30]
	mov	rsi, qword ptr [r14 + 0x10]
	cmp	rax, rsi
	jae	.label_635
	mov	rdx, qword ptr [r14]
	mov	rcx, qword ptr [rbp + 8]
	shl	rax, 4
	cmp	qword ptr [rdx + rax], 0
	je	.label_636
	mov	rdi, qword ptr [rdx + rax + 8]
	mov	qword ptr [rbp + 8], rdi
	mov	qword ptr [rdx + rax + 8], rbp
	jmp	.label_644
	.section	.text
	.align	16
	#Procedure 0x40713a
	.globl sub_40713a
	.type sub_40713a, @function
sub_40713a:

	nop	word ptr [rax + rax]
.label_636:
	add	rdx, rax
	mov	qword ptr [rdx], rbx
	inc	qword ptr [r14 + 0x18]
	mov	qword ptr [rbp], 0
	mov	rax, qword ptr [r14 + 0x48]
	mov	qword ptr [rbp + 8], rax
	mov	qword ptr [r14 + 0x48], rbp
.label_644:
	test	rcx, rcx
	mov	rbp, rcx
	jne	.label_647
	mov	r12, qword ptr [r13]
.label_643:
	mov	qword ptr [r13 + 8], 0
	mov	rdi, r12
	call	qword ptr [r14 + 0x30]
	mov	rbx, rax
	cmp	rbx, qword ptr [r14 + 0x10]
	jae	.label_648
	mov	rbp, qword ptr [r14]
	shl	rbx, 4
	cmp	qword ptr [rbp + rbx], 0
	je	.label_632
	mov	rax, qword ptr [r14 + 0x48]
	test	rax, rax
	je	.label_637
	mov	rcx, qword ptr [rax + 8]
	mov	qword ptr [r14 + 0x48], rcx
	jmp	.label_639
	.section	.text
	.align	16
	#Procedure 0x4071a8
	.globl sub_4071a8
	.type sub_4071a8, @function
sub_4071a8:

	nop	dword ptr [rax + rax]
.label_632:
	add	rbp, rbx
	mov	qword ptr [rbp], r12
	inc	qword ptr [r14 + 0x18]
	jmp	.label_646
.label_637:
	mov	edi, 0x10
	call	malloc
	test	rax, rax
	je	.label_633
.label_639:
	mov	qword ptr [rax], r12
	mov	rcx, qword ptr [rbp + rbx + 8]
	mov	qword ptr [rax + 8], rcx
	mov	qword ptr [rbp + rbx + 8], rax
.label_646:
	mov	qword ptr [r13], 0
	dec	qword ptr [r15 + 0x18]
	mov	rax, qword ptr [r15 + 8]
.label_641:
	add	r13, 0x10
	cmp	r13, rax
	jb	.label_638
.label_629:
	mov	al, 1
.label_631:
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_633:
	xor	eax, eax
	jmp	.label_631
.label_635:
	call	abort
.label_648:
	call	abort
	.section	.text
	.align	16
	#Procedure 0x407219
	.globl sub_407219
	.type sub_407219, @function
sub_407219:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x407220

	.globl cycle_warning_required
	.type cycle_warning_required, @function
cycle_warning_required:
	mov	ecx, dword ptr [rdi + 0x48]
	and	ecx, 0x11
	mov	al, 1
	cmp	ecx, 0x10
	je	.label_650
	cmp	ecx, 0x11
	jne	.label_651
	cmp	qword ptr [rsi + 0x58], 0
	setne	al
.label_650:
	ret	
.label_651:
	xor	eax, eax
	ret	
	.section	.text
	.align	16
	#Procedure 0x40723e
	.globl sub_40723e
	.type sub_40723e, @function
sub_40723e:

	nop	
	.section	.text
	.align	16
	#Procedure 0x407240
	.globl hash_get_n_buckets_used
	.type hash_get_n_buckets_used, @function
hash_get_n_buckets_used:

	mov	rax, qword ptr [rdi + 0x18]
	ret	
	.section	.text
	.align	16
	#Procedure 0x407245
	.globl sub_407245
	.type sub_407245, @function
sub_407245:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x407250

	.globl i_ring_empty
	.type i_ring_empty, @function
i_ring_empty:
	mov	al, byte ptr [rdi + 0x1c]
	ret	
	.section	.text
	.align	16
	#Procedure 0x407254
	.globl sub_407254
	.type sub_407254, @function
sub_407254:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x407260
	.globl hash_table_ok
	.type hash_table_ok, @function
hash_table_ok:

	mov	rax, qword ptr [rdi]
	mov	r9, qword ptr [rdi + 8]
	xor	r10d, r10d
	cmp	rax, r9
	mov	ecx, 0
	jae	.label_658
	mov	rcx, rax
	not	rcx
	add	r9, rcx
	shr	r9, 4
	lea	rsi, [r9 + 1]
	mov	r8d, esi
	and	r8d, 1
	xor	ecx, ecx
	test	r9, r9
	je	.label_661
	sub	rsi, r8
	xor	ecx, ecx
	xor	r10d, r10d
	nop	
.label_657:
	cmp	qword ptr [rax], 0
	je	.label_653
	mov	rdx, rax
	nop	dword ptr [rax]
.label_660:
	inc	rcx
	mov	rdx, qword ptr [rdx + 8]
	test	rdx, rdx
	jne	.label_660
	inc	r10
.label_653:
	cmp	qword ptr [rax + 0x10], 0
	je	.label_662
	lea	rdx, [rax + 0x10]
	nop	word ptr [rax + rax]
.label_655:
	inc	rcx
	mov	rdx, qword ptr [rdx + 8]
	test	rdx, rdx
	jne	.label_655
	inc	r10
.label_662:
	add	rax, 0x20
	add	rsi, -2
	jne	.label_657
	jmp	.label_659
.label_661:
	xor	r10d, r10d
.label_659:
	test	r8, r8
	je	.label_658
	cmp	qword ptr [rax], 0
	je	.label_658
	nop	dword ptr [rax]
.label_652:
	inc	rcx
	mov	rax, qword ptr [rax + 8]
	test	rax, rax
	jne	.label_652
	inc	r10
.label_658:
	cmp	r10, qword ptr [rdi + 0x18]
	jne	.label_654
	mov	al, 1
	cmp	rcx, qword ptr [rdi + 0x20]
	je	.label_656
.label_654:
	xor	eax, eax
.label_656:
	ret	
	.section	.text
	.align	16
	#Procedure 0x407320

	.globl xrealloc
	.type xrealloc, @function
xrealloc:
	push	rbx
	mov	rbx, rsi
	test	rdi, rdi
	je	.label_663
	test	rbx, rbx
	jne	.label_663
	call	free
	xor	eax, eax
	pop	rbx
	ret	
.label_665:
	call	xalloc_die
.label_663:
	mov	rsi, rbx
	call	realloc
	test	rbx, rbx
	je	.label_664
	test	rax, rax
	je	.label_665
.label_664:
	pop	rbx
	ret	
	.section	.text
	.align	16
	#Procedure 0x407350
	.globl hash_get_entries
	.type hash_get_entries, @function
hash_get_entries:

	mov	r9, qword ptr [rdi]
	mov	r8, qword ptr [rdi + 8]
	xor	eax, eax
	cmp	r9, r8
	jae	.label_666
	xor	eax, eax
.label_668:
	cmp	qword ptr [r9], 0
	je	.label_667
	test	r9, r9
	je	.label_667
	mov	r8, r9
	nop	
.label_669:
	cmp	rax, rdx
	jae	.label_666
	mov	rcx, qword ptr [r8]
	mov	qword ptr [rsi + rax*8], rcx
	inc	rax
	mov	r8, qword ptr [r8 + 8]
	test	r8, r8
	jne	.label_669
	mov	r8, qword ptr [rdi + 8]
.label_667:
	add	r9, 0x10
	cmp	r9, r8
	jb	.label_668
.label_666:
	ret	
	.section	.text
	.align	16
	#Procedure 0x407396
	.globl sub_407396
	.type sub_407396, @function
sub_407396:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4073a0

	.globl parse_user_spec
	.type parse_user_spec, @function
parse_user_spec:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	push	rax
	mov	rbp, r8
	mov	r15, rcx
	mov	rbx, rdx
	mov	r12, rsi
	mov	r13, rdi
	xor	r14d, r14d
	test	rbx, rbx
	je	.label_670
	mov	esi, 0x3a
	mov	rdi, r13
	call	strchr
	mov	r14, rax
.label_670:
	mov	rdi, r13
	mov	rsi, r14
	mov	rdx, r12
	mov	rcx, rbx
	mov	r8, r15
	mov	qword ptr [rsp], rbp
	mov	r9, rbp
	call	parse_with_separator
	mov	rbp, rax
	test	rbx, rbx
	je	.label_672
	test	r14, r14
	jne	.label_672
	test	rbp, rbp
	je	.label_672
	mov	esi, 0x2e
	mov	rdi, r13
	call	strchr
	test	rax, rax
	je	.label_672
	mov	rdi, r13
	mov	rsi, rax
	mov	rdx, r12
	mov	rcx, rbx
	mov	r8, r15
	mov	r9, qword ptr [rsp]
	call	parse_with_separator
	test	rax, rax
	cmovne	rax, rbp
	jmp	.label_671
.label_672:
	mov	rax, rbp
.label_671:
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
	#Procedure 0x407444
	.globl sub_407444
	.type sub_407444, @function
sub_407444:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x407450

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
	#Procedure 0x407469
	.globl sub_407469
	.type sub_407469, @function
sub_407469:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x407470

	.globl hash_rehash
	.type hash_rehash, @function
hash_rehash:
	push	rbp
	push	r15
	push	r14
	push	r12
	push	rbx
	sub	rsp, 0x50
	mov	r14, rdi
	mov	rax, qword ptr [r14 + 0x28]
	cmp	byte ptr [rax + 0x10], 0
	jne	.label_674
	mov	ecx, esi
	and	ecx, 1
	test	rsi, rsi
	js	.label_688
	cvtsi2ss	xmm0, rsi
	jmp	.label_679
.label_688:
	shr	rsi, 1
	or	rcx, rsi
	cvtsi2ss	xmm0, rcx
	addss	xmm0, xmm0
.label_679:
	divss	xmm0, dword ptr [rax + 8]
	movss	xmm1, dword ptr [rip + label_231]
	movaps	xmm2, xmm0
	subss	xmm2, xmm1
	cvttss2si	rax, xmm2
	movabs	rcx, 0x8000000000000000
	xor	rcx, rax
	cvttss2si	rsi, xmm0
	ucomiss	xmm0, xmm1
	cmovae	rsi, rcx
	ucomiss	xmm0, dword ptr [rip + label_321]
	jae	.label_673
.label_674:
	cmp	rsi, 0xa
	mov	ebx, 0xa
	cmovae	rbx, rsi
	or	rbx, 1
	jmp	.label_683
	.section	.text
	.align	16
	#Procedure 0x4074fb
	.globl sub_4074fb
	.type sub_4074fb, @function
sub_4074fb:

	nop	dword ptr [rax + rax]
.label_677:
	add	rbx, 2
.label_683:
	cmp	rbx, -1
	je	.label_673
	cmp	rbx, 0xa
	mov	ecx, 3
	jb	.label_676
	mov	esi, 0xc
	mov	edi, 9
	mov	ecx, 3
	nop	dword ptr [rax + rax]
.label_691:
	xor	edx, edx
	mov	rax, rbx
	div	rcx
	test	rdx, rdx
	je	.label_676
	lea	rdi, [rdi + rsi + 4]
	add	rcx, 2
	add	rsi, 8
	cmp	rdi, rbx
	jb	.label_691
.label_676:
	xor	edx, edx
	mov	rax, rbx
	div	rcx
	test	rdx, rdx
	je	.label_677
	lea	rax, [rbx - 1]
	movabs	rcx, 0xffffffffffffffe
	cmp	rax, rcx
	ja	.label_673
	mov	bpl, 1
	cmp	rbx, qword ptr [r14 + 0x10]
	je	.label_684
	mov	esi, 0x10
	mov	rdi, rbx
	call	rpl_calloc
	mov	qword ptr [rsp], rax
	test	rax, rax
	je	.label_673
	mov	qword ptr [rsp + 0x10], rbx
	shl	rbx, 4
	add	rax, rbx
	mov	qword ptr [rsp + 8], rax
	xorps	xmm0, xmm0
	movups	xmmword ptr [rsp + 0x18], xmm0
	movups	xmm0, xmmword ptr [r14 + 0x28]
	movups	xmmword ptr [rsp + 0x28], xmm0
	movups	xmm0, xmmword ptr [r14 + 0x38]
	movups	xmmword ptr [rsp + 0x38], xmm0
	mov	rax, qword ptr [r14 + 0x48]
	mov	qword ptr [rsp + 0x48], rax
	lea	rdi, [rsp]
	xor	edx, edx
	mov	rsi, r14
	call	transfer_entries
	test	al, al
	je	.label_681
	mov	rdi, qword ptr [r14]
	call	free
	movaps	xmm0, xmmword ptr [rsp]
	movups	xmmword ptr [r14], xmm0
	movaps	xmm0, xmmword ptr [rsp + 0x10]
	movups	xmmword ptr [r14 + 0x10], xmm0
	mov	rax, qword ptr [rsp + 0x48]
	mov	qword ptr [r14 + 0x48], rax
	jmp	.label_684
.label_681:
	mov	rax, qword ptr [rsp + 0x48]
	mov	qword ptr [r14 + 0x48], rax
	mov	r12, qword ptr [rsp]
	mov	r15, qword ptr [rsp + 8]
	jmp	.label_675
	.section	.text
	.align	16
	#Procedure 0x40761e
	.globl sub_40761e
	.type sub_40761e, @function
sub_40761e:

	nop	
.label_685:
	add	r12, 0x10
.label_675:
	cmp	r12, r15
	jae	.label_682
	cmp	qword ptr [r12], 0
	je	.label_685
	mov	rbp, qword ptr [r12 + 8]
	test	rbp, rbp
	je	.label_689
	mov	rsi, qword ptr [r14 + 0x10]
	nop	word ptr cs:[rax + rax]
.label_686:
	mov	rbx, qword ptr [rbp]
	mov	rdi, rbx
	call	qword ptr [r14 + 0x30]
	mov	rsi, qword ptr [r14 + 0x10]
	cmp	rax, rsi
	jae	.label_680
	mov	rdx, qword ptr [r14]
	mov	rcx, qword ptr [rbp + 8]
	shl	rax, 4
	cmp	qword ptr [rdx + rax], 0
	je	.label_687
	mov	rdi, qword ptr [rdx + rax + 8]
	mov	qword ptr [rbp + 8], rdi
	mov	qword ptr [rdx + rax + 8], rbp
	jmp	.label_690
	.section	.text
	.align	16
	#Procedure 0x40768a
	.globl sub_40768a
	.type sub_40768a, @function
sub_40768a:

	nop	word ptr [rax + rax]
.label_687:
	add	rdx, rax
	mov	qword ptr [rdx], rbx
	inc	qword ptr [r14 + 0x18]
	mov	qword ptr [rbp], 0
	mov	rax, qword ptr [r14 + 0x48]
	mov	qword ptr [rbp + 8], rax
	mov	qword ptr [r14 + 0x48], rbp
.label_690:
	test	rcx, rcx
	mov	rbp, rcx
	jne	.label_686
.label_689:
	mov	qword ptr [r12 + 8], 0
	jmp	.label_685
.label_682:
	lea	rsi, [rsp]
	xor	edx, edx
	mov	rdi, r14
	call	transfer_entries
	test	al, al
	je	.label_678
	mov	rdi, qword ptr [rsp]
	call	free
.label_673:
	xor	ebp, ebp
.label_684:
	mov	eax, ebp
	add	rsp, 0x50
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_680:
	call	abort
.label_678:
	call	abort
	.section	.text
	.align	16
	#Procedure 0x4076fa
	.globl sub_4076fa
	.type sub_4076fa, @function
sub_4076fa:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x407700

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
	je	.label_692
	test	r15, r15
	je	.label_693
.label_692:
	mov	rdi, r15
	mov	rsi, r14
	mov	rdx, rbx
	call	memcpy
	mov	rax, r15
	pop	rbx
	pop	r14
	pop	r15
	ret	
.label_693:
	call	xalloc_die
	.section	.text
	.align	16
	#Procedure 0x40773c
	.globl sub_40773c
	.type sub_40773c, @function
sub_40773c:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x407740

	.globl xmalloc
	.type xmalloc, @function
xmalloc:
	push	rbx
	mov	rbx, rdi
	call	malloc
	test	rbx, rbx
	je	.label_694
	test	rax, rax
	je	.label_695
.label_694:
	pop	rbx
	ret	
.label_695:
	call	xalloc_die
	.section	.text
	.align	16
	#Procedure 0x40775a
	.globl sub_40775a
	.type sub_40775a, @function
sub_40775a:

	nop	word ptr [rax + rax]
.label_696:
	call	abort
	.section	.text
	.align	16
	#Procedure 0x407765
	.globl sub_407765
	.type sub_407765, @function
sub_407765:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x407769
	.globl quotearg_custom_mem
	.type quotearg_custom_mem, @function
quotearg_custom_mem:

	sub	rsp, 0x38
	mov	rax, qword ptr [rip + label_82]
	mov	qword ptr [rsp + 0x30], rax
	movups	xmm0, xmmword ptr [rip + label_83]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0, xmmword ptr [rip + label_84]
	movaps	xmmword ptr [rsp + 0x10], xmm0
	movups	xmm0, xmmword ptr [rip + default_quoting_options]
	movaps	xmmword ptr [rsp], xmm0
	mov	dword ptr [rsp], 0xa
	test	rdi, rdi
	je	.label_696
	test	rsi, rsi
	je	.label_696
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
.label_697:
	call	xalloc_die
	.section	.text
	.align	16
	#Procedure 0x4077d5
	.globl sub_4077d5
	.type sub_4077d5, @function
sub_4077d5:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4077df
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
	je	.label_698
	test	r14, r14
	je	.label_697
.label_698:
	xor	esi, esi
	mov	rdi, r14
	mov	rdx, rbx
	call	memset
	mov	rax, r14
	add	rsp, 8
	pop	rbx
	pop	r14
	ret	
.label_703:
	push	rax
	mov	edi, OFFSET FLAT:label_699
	mov	esi, OFFSET FLAT:label_700
	mov	edx, 0x3c
	mov	ecx, OFFSET FLAT:label_701
	call	__assert_fail
	.section	.text
	.align	16
	#Procedure 0x40782a
	.globl sub_40782a
	.type sub_40782a, @function
sub_40782a:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x407835

	.globl cycle_check
	.type cycle_check, @function
cycle_check:
	cmp	dword ptr [rdi + 0x18], 0x95f616
	jne	.label_703
	mov	rcx, qword ptr [rdi + 0x10]
	test	rcx, rcx
	je	.label_704
	mov	rax, qword ptr [rsi + 8]
	cmp	rax, qword ptr [rdi]
	jne	.label_704
	mov	rdx, qword ptr [rsi]
	mov	al, 1
	cmp	rdx, qword ptr [rdi + 8]
	je	.label_702
.label_704:
	lea	rdx, [rcx + 1]
	mov	qword ptr [rdi + 0x10], rdx
	test	rdx, rcx
	jne	.label_705
	mov	al, 1
	test	rdx, rdx
	je	.label_702
	mov	rax, qword ptr [rsi]
	mov	qword ptr [rdi + 8], rax
	mov	rax, qword ptr [rsi + 8]
	mov	qword ptr [rdi], rax
.label_705:
	xor	eax, eax
.label_702:
	ret	
	.section	.text
	.align	16
	#Procedure 0x407880
	.globl version_etc_ar
	.type version_etc_ar, @function
version_etc_ar:

	mov	r9, -1
	nop	word ptr [rax + rax]
.label_706:
	cmp	qword ptr [r8 + r9*8 + 8], 0
	lea	r9, [r9 + 1]
	jne	.label_706
	jmp	version_etc_arn
	.section	.text
	.align	16
	#Procedure 0x4078a1
	.globl sub_4078a1
	.type sub_4078a1, @function
sub_4078a1:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4078b0
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
	mov	rax, qword ptr [r12 + 8]
	xor	ebx, ebx
	cmp	r13, rax
	jae	.label_710
	xor	ebx, ebx
.label_709:
	mov	rdi, qword ptr [r13]
	test	rdi, rdi
	je	.label_711
	test	r13, r13
	je	.label_711
	mov	rsi, r14
	call	r15
	test	al, al
	je	.label_710
	mov	rbp, r13
	nop	word ptr cs:[rax + rax]
.label_708:
	mov	rbp, qword ptr [rbp + 8]
	test	rbp, rbp
	je	.label_707
	inc	rbx
	mov	rdi, qword ptr [rbp]
	mov	rsi, r14
	call	r15
	test	al, al
	jne	.label_708
	jmp	.label_710
	.section	.text
	.align	16
	#Procedure 0x40791c
	.globl sub_40791c
	.type sub_40791c, @function
sub_40791c:

	nop	dword ptr [rax]
.label_707:
	mov	rax, qword ptr [r12 + 8]
	inc	rbx
.label_711:
	add	r13, 0x10
	cmp	r13, rax
	jb	.label_709
.label_710:
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
	#Procedure 0x407943
	.globl sub_407943
	.type sub_407943, @function
sub_407943:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x407950
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
	#Procedure 0x4079c5
	.globl sub_4079c5
	.type sub_4079c5, @function
sub_4079c5:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4079d0
	.globl quote_n
	.type quote_n, @function
quote_n:

	mov	rdx, -1
	mov	ecx, OFFSET FLAT:quote_quoting_options
	jmp	quotearg_n_options
	.section	.text
	.align	16
	#Procedure 0x4079e1
	.globl sub_4079e1
	.type sub_4079e1, @function
sub_4079e1:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4079f0
	.globl quotearg_n
	.type quotearg_n, @function
quotearg_n:

	mov	rdx, -1
	mov	ecx, OFFSET FLAT:default_quoting_options
	jmp	quotearg_n_options
	.section	.text
	.align	16
	#Procedure 0x4079fe
	.globl sub_4079fe
	.type sub_4079fe, @function
sub_4079fe:

	nop	
	.section	.text
	.align	16
	#Procedure 0x407a00

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
	js	.label_712
	mov	eax, dword ptr [r13]
	mov	rbp, qword ptr [rip + slotvec]
	cmp	dword ptr [rip + nslots],  r12d
	mov	qword ptr [rsp + 0x18], r13
	mov	dword ptr [rsp], eax
	mov	qword ptr [rsp + 0x10], rbx
	mov	qword ptr [rsp + 8], r15
	jg	.label_715
	cmp	r12d, 0x7fffffff
	je	.label_717
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
	jne	.label_713
	movups	xmm0, xmmword ptr [rip + slotvec0]
	movups	xmmword ptr [r14], xmm0
.label_713:
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
.label_715:
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
	jbe	.label_718
	mov	rax, qword ptr [rsp + 0x18]
	mov	ebp, dword ptr [rsp]
	jmp	.label_714
.label_718:
	lea	rax, [rbp + r13]
	lea	r12, [rbp + r13 + 8]
	inc	r15
	mov	qword ptr [rax], r15
	mov	eax, OFFSET FLAT:slot0
	cmp	r14, rax
	mov	ebp, dword ptr [rsp]
	je	.label_716
	mov	rdi, r14
	call	free
.label_716:
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
.label_714:
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
.label_712:
	call	abort
.label_717:
	call	xalloc_die
	.section	.text
	.align	16
	#Procedure 0x407bbd
	.globl sub_407bbd
	.type sub_407bbd, @function
sub_407bbd:

	nop	dword ptr [rax]
.label_719:
	call	xalloc_die
	.section	.text
	.align	16
	#Procedure 0x407bc5
	.globl sub_407bc5
	.type sub_407bc5, @function
sub_407bc5:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x407bd3

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
	je	.label_720
	test	r15, r15
	je	.label_719
.label_720:
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
	#Procedure 0x407c10

	.globl hash_insert_if_absent
	.type hash_insert_if_absent, @function
hash_insert_if_absent:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	push	rax
	mov	r15, rdx
	mov	r14, rsi
	mov	r13, rdi
	test	r14, r14
	je	.label_728
	mov	rsi, qword ptr [r13 + 0x10]
	mov	rdi, r14
	call	qword ptr [r13 + 0x30]
	mov	rbp, rax
	cmp	rbp, qword ptr [r13 + 0x10]
	jae	.label_728
	mov	rbx, qword ptr [r13]
	shl	rbp, 4
	lea	r12, [rbx + rbp]
	mov	rsi, qword ptr [rbx + rbp]
	test	rsi, rsi
	je	.label_726
	cmp	rsi, r14
	je	.label_743
	mov	rdi, r14
	call	qword ptr [r13 + 0x38]
	test	al, al
	je	.label_744
	mov	rax, qword ptr [r12]
.label_742:
	test	rax, rax
	jne	.label_748
	jmp	.label_726
.label_743:
	mov	rax, r14
.label_748:
	xor	ebp, ebp
	test	r15, r15
	je	.label_723
	mov	qword ptr [r15], rax
	jmp	.label_723
.label_744:
	mov	rax, qword ptr [rbx + rbp + 8]
	test	rax, rax
	je	.label_726
	lea	rbp, [rbx + rbp + 8]
	nop	word ptr [rax + rax]
.label_739:
	mov	rsi, qword ptr [rax]
	cmp	rsi, r14
	je	.label_732
	mov	rdi, r14
	call	qword ptr [r13 + 0x38]
	mov	rbp, qword ptr [rbp]
	test	al, al
	jne	.label_736
	mov	rax, qword ptr [rbp + 8]
	add	rbp, 8
	test	rax, rax
	jne	.label_739
.label_726:
	mov	rcx, qword ptr [r13 + 0x10]
	mov	rax, qword ptr [r13 + 0x18]
	mov	edx, eax
	and	edx, 1
	test	rax, rax
	js	.label_740
	cvtsi2ss	xmm1, rax
	jmp	.label_745
.label_740:
	shr	rax, 1
	or	rdx, rax
	cvtsi2ss	xmm1, rdx
	addss	xmm1, xmm1
.label_745:
	mov	rax, qword ptr [r13 + 0x28]
	movss	xmm2, dword ptr [rax + 8]
	mov	edx, ecx
	and	edx, 1
	test	rcx, rcx
	js	.label_750
	cvtsi2ss	xmm0, rcx
	jmp	.label_725
.label_750:
	shr	rcx, 1
	or	rdx, rcx
	cvtsi2ss	xmm0, rdx
	addss	xmm0, xmm0
.label_725:
	movaps	xmm3, xmm2
	mulss	xmm3, xmm0
	ucomiss	xmm1, xmm3
	jbe	.label_731
	mov	ecx, OFFSET FLAT:default_tuning
	cmp	rax, rcx
	je	.label_734
	ucomiss	xmm2, dword ptr [rip + label_238]
	jbe	.label_737
	movss	xmm3, dword ptr [rip + label_240]
	ucomiss	xmm3, xmm2
	jbe	.label_737
	movss	xmm3, dword ptr [rax + 0xc]
	ucomiss	xmm3, dword ptr [rip + label_244]
	jbe	.label_737
	movss	xmm3, dword ptr [rax]
	xorps	xmm4, xmm4
	ucomiss	xmm3, xmm4
	jb	.label_737
	addss	xmm3, dword ptr [rip + label_238]
	ucomiss	xmm2, xmm3
	jbe	.label_737
	movss	xmm4, dword ptr [rax + 4]
	movss	xmm5, dword ptr [rip + label_236]
	ucomiss	xmm5, xmm4
	jb	.label_737
	ucomiss	xmm4, xmm3
	ja	.label_724
.label_737:
	mov	qword ptr [r13 + 40], OFFSET FLAT:default_tuning
	mov	eax, OFFSET FLAT:default_tuning
	movss	xmm2, dword ptr [rip + label_738]
	jmp	.label_724
.label_734:
	mov	eax, OFFSET FLAT:default_tuning
.label_724:
	movaps	xmm3, xmm2
	mulss	xmm3, xmm0
	ucomiss	xmm1, xmm3
	jbe	.label_731
	cmp	byte ptr [rax + 0x10], 0
	mulss	xmm0, dword ptr [rax + 0xc]
	jne	.label_730
	mulss	xmm0, xmm2
.label_730:
	mov	ebp, 0xffffffff
	ucomiss	xmm0, dword ptr [rip + label_321]
	jae	.label_723
	movss	xmm1, dword ptr [rip + label_231]
	movaps	xmm2, xmm0
	subss	xmm2, xmm1
	cvttss2si	rax, xmm2
	movabs	rcx, 0x8000000000000000
	xor	rcx, rax
	cvttss2si	rsi, xmm0
	ucomiss	xmm0, xmm1
	cmovae	rsi, rcx
	mov	rdi, r13
	call	hash_rehash
	test	al, al
	je	.label_723
	mov	rsi, qword ptr [r13 + 0x10]
	mov	rdi, r14
	call	qword ptr [r13 + 0x30]
	mov	rbp, rax
	cmp	rbp, qword ptr [r13 + 0x10]
	jae	.label_728
	mov	rbx, qword ptr [r13]
	shl	rbp, 4
	lea	r12, [rbx + rbp]
	mov	rsi, qword ptr [rbx + rbp]
	test	rsi, rsi
	je	.label_731
	cmp	rsi, r14
	mov	rax, r14
	je	.label_733
	mov	rdi, r14
	call	qword ptr [r13 + 0x38]
	test	al, al
	je	.label_741
	mov	rax, qword ptr [r12]
.label_733:
	test	rax, rax
	jne	.label_735
.label_731:
	cmp	qword ptr [r12], 0
	je	.label_746
	mov	rax, qword ptr [r13 + 0x48]
	test	rax, rax
	je	.label_747
	mov	rcx, qword ptr [rax + 8]
	mov	qword ptr [r13 + 0x48], rcx
	jmp	.label_751
.label_746:
	mov	qword ptr [r12], r14
	movdqu	xmm0, xmmword ptr [r13 + 0x18]
	paddq	xmm0, xmmword ptr [rip + label_721]
	movdqu	xmmword ptr [r13 + 0x18], xmm0
	jmp	.label_722
.label_747:
	mov	edi, 0x10
	call	malloc
	mov	ebp, 0xffffffff
	test	rax, rax
	je	.label_723
.label_751:
	mov	qword ptr [rax], r14
	mov	rcx, qword ptr [r12 + 8]
	mov	qword ptr [rax + 8], rcx
	mov	qword ptr [r12 + 8], rax
	inc	qword ptr [r13 + 0x20]
.label_722:
	mov	ebp, 1
.label_723:
	mov	eax, ebp
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_732:
	mov	rax, r14
	jmp	.label_742
.label_736:
	mov	rax, qword ptr [rbp]
	jmp	.label_742
.label_741:
	mov	rax, qword ptr [rbx + rbp + 8]
	test	rax, rax
	je	.label_731
	lea	rbp, [rbx + rbp + 8]
.label_729:
	mov	rsi, qword ptr [rax]
	cmp	rsi, r14
	je	.label_749
	mov	rdi, r14
	call	qword ptr [r13 + 0x38]
	mov	rbp, qword ptr [rbp]
	test	al, al
	jne	.label_727
	mov	rax, qword ptr [rbp + 8]
	add	rbp, 8
	test	rax, rax
	jne	.label_729
	jmp	.label_731
.label_749:
	mov	rax, r14
	jmp	.label_733
.label_727:
	mov	rax, qword ptr [rbp]
	jmp	.label_733
.label_728:
	call	abort
.label_735:
	call	abort
	.section	.text
	.align	16
	#Procedure 0x407f41
	.globl sub_407f41
	.type sub_407f41, @function
sub_407f41:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x407f50

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
	je	.label_752
	cmp	r15, -2
	jb	.label_752
	xor	edi, edi
	call	hard_locale
	test	al, al
	jne	.label_752
	movzx	eax, byte ptr [r14]
	mov	dword ptr [rbx], eax
	mov	r15d, 1
.label_752:
	mov	rax, r15
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	ret	
	.section	.text
	.align	16
	#Procedure 0x407fa6
	.globl sub_407fa6
	.type sub_407fa6, @function
sub_407fa6:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x407fb0
	.globl hash_get_n_entries
	.type hash_get_n_entries, @function
hash_get_n_entries:

	mov	rax, qword ptr [rdi + 0x20]
	ret	
	.section	.text
	.align	16
	#Procedure 0x407fb5
	.globl sub_407fb5
	.type sub_407fb5, @function
sub_407fb5:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x407fc0

	.globl rpl_fcntl
	.type rpl_fcntl, @function
rpl_fcntl:
	push	rbp
	push	r14
	push	rbx
	sub	rsp, 0xd0
	mov	ebx, edi
	test	al, al
	je	.label_767
	movaps	xmmword ptr [rsp + 0x50], xmm0
	movaps	xmmword ptr [rsp + 0x60], xmm1
	movaps	xmmword ptr [rsp + 0x70], xmm2
	movaps	xmmword ptr [rsp + 0x80], xmm3
	movaps	xmmword ptr [rsp + 0x90], xmm4
	movaps	xmmword ptr [rsp + 0xa0], xmm5
	movaps	xmmword ptr [rsp + 0xb0], xmm6
	movaps	xmmword ptr [rsp + 0xc0], xmm7
.label_767:
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
	ja	.label_755
	mov	eax, 0xa0a
	bt	eax, esi
	jb	.label_762
	mov	eax, 0x514
	bt	eax, esi
	jb	.label_756
	test	esi, esi
	jne	.label_755
	movsxd	rcx, dword ptr [rsp]
	cmp	rcx, 0x28
	ja	.label_769
	mov	rax, rcx
	add	rax, qword ptr [rsp + 0x10]
	lea	ecx, [rcx + 8]
	mov	dword ptr [rsp], ecx
	jmp	.label_770
.label_755:
	lea	eax, [rsi - 0x400]
	cmp	eax, 8
	ja	.label_753
	mov	ecx, 0x85
	bt	ecx, eax
	jb	.label_756
	mov	ecx, 0x102
	bt	ecx, eax
	jae	.label_759
.label_762:
	xor	eax, eax
	mov	edi, ebx
	call	fcntl
	jmp	.label_763
.label_756:
	movsxd	rcx, dword ptr [rsp]
	cmp	rcx, 0x28
	ja	.label_764
	mov	rax, rcx
	add	rax, qword ptr [rsp + 0x10]
	lea	ecx, [rcx + 8]
	mov	dword ptr [rsp], ecx
	jmp	.label_765
.label_764:
	mov	rax, qword ptr [rsp + 8]
	lea	rcx, [rax + 8]
	mov	qword ptr [rsp + 8], rcx
.label_765:
	mov	edx, dword ptr [rax]
	xor	eax, eax
	mov	edi, ebx
.label_766:
	call	fcntl
.label_763:
	mov	ebp, eax
.label_758:
	mov	eax, ebp
	add	rsp, 0xd0
	pop	rbx
	pop	r14
	pop	rbp
	ret	
.label_759:
	cmp	eax, 6
	jne	.label_753
	movsxd	rcx, dword ptr [rsp]
	cmp	rcx, 0x28
	ja	.label_773
	mov	rax, rcx
	add	rax, qword ptr [rsp + 0x10]
	lea	ecx, [rcx + 8]
	mov	dword ptr [rsp], ecx
	jmp	.label_754
.label_753:
	movsxd	rcx, dword ptr [rsp]
	cmp	rcx, 0x28
	ja	.label_757
	mov	rax, rcx
	add	rax, qword ptr [rsp + 0x10]
	lea	ecx, [rcx + 8]
	mov	dword ptr [rsp], ecx
	jmp	.label_761
.label_769:
	mov	rax, qword ptr [rsp + 8]
	lea	rcx, [rax + 8]
	mov	qword ptr [rsp + 8], rcx
.label_770:
	mov	edx, dword ptr [rax]
	xor	esi, esi
	xor	eax, eax
	mov	edi, ebx
	jmp	.label_766
.label_773:
	mov	rax, qword ptr [rsp + 8]
	lea	rcx, [rax + 8]
	mov	qword ptr [rsp + 8], rcx
.label_754:
	mov	r14d, dword ptr [rax]
	cmp	dword ptr [rip + rpl_fcntl_DUPFD_CLOEXEC.have_dupfd_cloexec],  0
	js	.label_768
	mov	esi, 0x406
	xor	eax, eax
	mov	edi, ebx
	mov	edx, r14d
	call	fcntl
	mov	ebp, eax
	test	ebp, ebp
	jns	.label_772
	call	__errno_location
	cmp	dword ptr [rax], 0x16
	jne	.label_772
	xor	esi, esi
	xor	eax, eax
	mov	edi, ebx
	mov	edx, r14d
	call	fcntl
	mov	ebp, eax
	test	ebp, ebp
	js	.label_758
	mov	dword ptr [rip + rpl_fcntl_DUPFD_CLOEXEC.have_dupfd_cloexec],  0xffffffff
	mov	al, 1
	jmp	.label_760
.label_772:
	mov	dword ptr [rip + rpl_fcntl_DUPFD_CLOEXEC.have_dupfd_cloexec],  1
	jmp	.label_758
.label_757:
	mov	rax, qword ptr [rsp + 8]
	lea	rcx, [rax + 8]
	mov	qword ptr [rsp + 8], rcx
.label_761:
	mov	rdx, qword ptr [rax]
	xor	eax, eax
	mov	edi, ebx
	call	fcntl
	jmp	.label_763
.label_768:
	xor	esi, esi
	xor	eax, eax
	mov	edi, ebx
	mov	edx, r14d
	call	fcntl
	mov	ebp, eax
	cmp	dword ptr [rip + rpl_fcntl_DUPFD_CLOEXEC.have_dupfd_cloexec],  -1
	sete	al
.label_760:
	test	al, al
	je	.label_758
	test	ebp, ebp
	js	.label_758
	mov	esi, 1
	xor	eax, eax
	mov	edi, ebp
	call	fcntl
	mov	ecx, eax
	test	ecx, ecx
	js	.label_771
	or	ecx, 1
	mov	esi, 2
	xor	eax, eax
	mov	edi, ebp
	mov	edx, ecx
	call	fcntl
	cmp	eax, -1
	jne	.label_758
.label_771:
	call	__errno_location
	mov	rbx, rax
	mov	r14d, dword ptr [rbx]
	mov	edi, ebp
	call	close
	mov	dword ptr [rbx], r14d
	mov	ebp, 0xffffffff
	jmp	.label_758
	.section	.text
	.align	16
	#Procedure 0x408251
	.globl sub_408251
	.type sub_408251, @function
sub_408251:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x408260

	.globl openat_safer
	.type openat_safer, @function
openat_safer:
	sub	rsp, 0xd8
	test	al, al
	je	.label_774
	movaps	xmmword ptr [rsp + 0x50], xmm0
	movaps	xmmword ptr [rsp + 0x60], xmm1
	movaps	xmmword ptr [rsp + 0x70], xmm2
	movaps	xmmword ptr [rsp + 0x80], xmm3
	movaps	xmmword ptr [rsp + 0x90], xmm4
	movaps	xmmword ptr [rsp + 0xa0], xmm5
	movaps	xmmword ptr [rsp + 0xb0], xmm6
	movaps	xmmword ptr [rsp + 0xc0], xmm7
.label_774:
	mov	qword ptr [rsp + 0x48], r9
	mov	qword ptr [rsp + 0x40], r8
	mov	qword ptr [rsp + 0x38], rcx
	xor	ecx, ecx
	test	dl, 0x40
	je	.label_775
	lea	rax, [rsp + 0x20]
	mov	qword ptr [rsp + 0x10], rax
	lea	rax, [rsp + 0xe0]
	mov	qword ptr [rsp + 8], rax
	mov	dword ptr [rsp + 4], 0x30
	mov	dword ptr [rsp], 0x18
	movsxd	rcx, dword ptr [rsp]
	cmp	rcx, 0x28
	ja	.label_776
	mov	rax, rcx
	add	rax, qword ptr [rsp + 0x10]
	lea	ecx, [rcx + 8]
	mov	dword ptr [rsp], ecx
	jmp	.label_777
.label_776:
	mov	rax, qword ptr [rsp + 8]
	lea	rcx, [rax + 8]
	mov	qword ptr [rsp + 8], rcx
.label_777:
	mov	ecx, dword ptr [rax]
.label_775:
	xor	eax, eax
	call	openat
	mov	edi, eax
	call	fd_safer
	add	rsp, 0xd8
	ret	
	.section	.text
	.align	16
	#Procedure 0x40831e
	.globl sub_40831e
	.type sub_40831e, @function
sub_40831e:

	nop	
	.section	.text
	.align	16
	#Procedure 0x408320

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
	je	.label_778
	test	ecx, ecx
	cmove	rbx, qword ptr [rsp + 8]
	mov	rax, rbx
.label_778:
	add	rsp, 0x10
	pop	rbx
	ret	
	.section	.text
	.align	16
	#Procedure 0x40834c
	.globl sub_40834c
	.type sub_40834c, @function
sub_40834c:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x408350
	.globl hash_string
	.type hash_string, @function
hash_string:

	mov	al, byte ptr [rdi]
	xor	edx, edx
	test	al, al
	je	.label_779
	inc	rdi
	xor	edx, edx
	nop	dword ptr [rax]
.label_780:
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
	jne	.label_780
.label_779:
	mov	rax, rdx
	ret	
	.section	.text
	.align	16
	#Procedure 0x408383
	.globl sub_408383
	.type sub_408383, @function
sub_408383:

	nop	word ptr cs:[rax + rax]
.label_783:
	mov	rsi, rbx
	call	realloc
	test	rbx, rbx
	je	.label_781
	test	rax, rax
	je	.label_782
.label_781:
	pop	rbx
	ret	
	.section	.text
	.align	16
	#Procedure 0x4083a4
	.globl xnrealloc
	.type xnrealloc, @function
xnrealloc:

	push	rbx
	mov	rbx, rdx
	movabs	rax, 0x7fffffffffffffff
	xor	edx, edx
	div	rbx
	cmp	rax, rsi
	jb	.label_782
	imul	rbx, rsi
	test	rdi, rdi
	je	.label_783
	test	rbx, rbx
	jne	.label_783
	call	free
	xor	eax, eax
	pop	rbx
	ret	
.label_782:
	call	xalloc_die
	.section	.text
	.align	16
	#Procedure 0x4083d8
	.globl sub_4083d8
	.type sub_4083d8, @function
sub_4083d8:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4083e0
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
	je	.label_784
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
.label_784:
	call	abort
	.section	.text
	.align	16
	#Procedure 0x408441
	.globl sub_408441
	.type sub_408441, @function
sub_408441:

	nop	word ptr cs:[rax + rax]
.label_785:
	call	abort
	.section	.text
	.align	16
	#Procedure 0x408455
	.globl quotearg_custom
	.type quotearg_custom, @function
quotearg_custom:

	sub	rsp, 0x38
	mov	rax, rdx
	mov	rcx, qword ptr [rip + label_82]
	mov	qword ptr [rsp + 0x30], rcx
	movups	xmm0, xmmword ptr [rip + label_83]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0, xmmword ptr [rip + label_84]
	movaps	xmmword ptr [rsp + 0x10], xmm0
	movups	xmm0, xmmword ptr [rip + default_quoting_options]
	movaps	xmmword ptr [rsp], xmm0
	mov	dword ptr [rsp], 0xa
	test	rdi, rdi
	je	.label_785
	test	rsi, rsi
	je	.label_785
	mov	qword ptr [rsp + 0x28], rdi
	mov	qword ptr [rsp + 0x30], rsi
	lea	rcx, [rsp]
	xor	edi, edi
	mov	rdx, -1
	mov	rsi, rax
	call	quotearg_n_options
	add	rsp, 0x38
	ret	
.label_790:
	test	rax, rax
	mov	ebx, 0x80
	cmovne	rbx, rax
	test	rbx, rbx
	js	.label_786
	mov	qword ptr [rsi], rbx
.label_789:
	mov	rsi, rbx
	call	realloc
	test	rbx, rbx
	je	.label_788
	test	rax, rax
	je	.label_786
.label_788:
	pop	rbx
	ret	
.label_786:
	call	xalloc_die
.label_787:
	call	xalloc_die
	.section	.text
	.align	16
	#Procedure 0x4084f2
	.globl sub_4084f2
	.type sub_4084f2, @function
sub_4084f2:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4084fe
	.globl x2realloc
	.type x2realloc, @function
x2realloc:

	push	rbx
	mov	rax, qword ptr [rsi]
	test	rdi, rdi
	je	.label_790
	movabs	rcx, 0x5555555555555554
	cmp	rax, rcx
	jae	.label_787
	mov	rbx, rax
	shr	rbx, 1
	add	rbx, rax
	inc	rbx
	mov	qword ptr [rsi], rbx
	jne	.label_789
	call	free
	xor	eax, eax
	jmp	.label_788
	.section	.text
	.align	16
	#Procedure 0x408530
	.globl quotearg_free
	.type quotearg_free, @function
quotearg_free:

	push	r15
	push	r14
	push	rbx
	mov	r14, qword ptr [rip + slotvec]
	cmp	dword ptr [rip + nslots],  2
	jl	.label_791
	lea	r15, [r14 + 0x18]
	mov	ebx, 1
	nop	
.label_794:
	mov	rdi, qword ptr [r15]
	call	free
	inc	rbx
	movsxd	rax, dword ptr [rip + nslots]
	add	r15, 0x10
	cmp	rbx, rax
	jl	.label_794
.label_791:
	mov	rdi, qword ptr [r14 + 8]
	mov	eax, OFFSET FLAT:slot0
	cmp	rdi, rax
	je	.label_795
	call	free
	mov	qword ptr [rip + slotvec0],  0x100
	mov	qword ptr [rip + label_792], OFFSET FLAT:slot0
.label_795:
	mov	eax, OFFSET FLAT:slotvec0
	cmp	r14, rax
	je	.label_793
	mov	rdi, r14
	call	free
	mov	qword ptr [rip + slotvec], OFFSET FLAT:slotvec0
.label_793:
	mov	dword ptr [rip + nslots],  1
	pop	rbx
	pop	r14
	pop	r15
	ret	
	.section	.text
	.align	16
	#Procedure 0x4085c1
	.globl sub_4085c1
	.type sub_4085c1, @function
sub_4085c1:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4085d0

	.globl chown_files
	.type chown_files, @function
chown_files:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x178
	mov	dword ptr [rsp + 0x2c], r8d
	mov	dword ptr [rsp + 0x24], ecx
	mov	dword ptr [rsp + 4], edx
	mov	eax, esi
	mov	r13, qword ptr [rsp + 0x1b0]
	mov	dword ptr [rsp + 0x28], r9d
	and	r9d, r8d
	xor	esi, esi
	mov	dword ptr [rsp + 0x3c], r9d
	cmp	r9d, -1
	jne	.label_799
	cmp	byte ptr [r13 + 0x10], 0
	jne	.label_799
	xor	esi, esi
	cmp	dword ptr [r13], 2
	sete	sil
	shl	esi, 3
.label_799:
	or	esi, eax
	xor	edx, edx
	call	xfts_open
	mov	r14, rax
	mov	rdi, r14
	call	rpl_fts_read
	mov	rdx, rax
	mov	r12b, 1
	test	rdx, rdx
	je	.label_810
	mov	bpl, 1
	mov	qword ptr [rsp + 0x40], r14
	jmp	.label_814
.label_825:
	mov	esi, OFFSET FLAT:label_819
.label_803:
	mov	edx, 5
	call	dcgettext
	mov	r14, rax
	mov	rbx, qword ptr [rsp + 0x10]
	xor	r15d, r15d
	mov	rbp, qword ptr [rsp + 8]
	jmp	.label_822
.label_801:
	mov	edi, r12d
	call	close
	xor	ecx, ecx
	test	eax, eax
	setne	cl
	lea	ebx, [rcx*4 + 2]
	jmp	.label_831
	.section	.text
	.align	16
	#Procedure 0x40868e
	.globl sub_40868e
	.type sub_40868e, @function
sub_40868e:

	nop	
.label_814:
	mov	r9, qword ptr [rdx + 0x30]
	mov	rbx, qword ptr [rdx + 0x38]
	movzx	eax, word ptr [rdx + 0x70]
	dec	eax
	movzx	eax, ax
	cmp	eax, 9
	ja	.label_841
	jmp	qword ptr [(rax * 8) + label_838]
.label_1063:
	cmp	byte ptr [r13 + 4], 0
	je	.label_841
	mov	rax, qword ptr [r13 + 8]
	mov	r12b, 1
	test	rax, rax
	je	.label_806
	mov	rcx, qword ptr [rdx + 0x80]
	cmp	rcx, qword ptr [rax]
	jne	.label_806
	mov	rcx, qword ptr [rdx + 0x78]
	cmp	rcx, qword ptr [rax + 8]
	jne	.label_806
	mov	r13, rdx
	cmp	byte ptr [rbx], 0x2f
	jne	.label_850
	cmp	byte ptr [rbx + 1], 0
	je	.label_851
.label_850:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_821
	mov	edx, 5
	call	dcgettext
	mov	r14, rax
	xor	edi, edi
	mov	esi, 4
	mov	rdx, rbx
	call	quotearg_n_style
	mov	r15, rax
	mov	edi, 1
	mov	esi, 4
	mov	edx, OFFSET FLAT:label_110
	call	quotearg_n_style
	mov	rbx, rax
	xor	edi, edi
	xor	esi, esi
	xor	eax, eax
	mov	rdx, r14
	mov	r14, qword ptr [rsp + 0x40]
	mov	rcx, r15
	mov	r8, rbx
	call	error
.label_815:
	xor	r12d, r12d
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_839
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	xor	edi, edi
	xor	esi, esi
	xor	eax, eax
	mov	rdx, rcx
	call	error
	mov	edx, 4
	mov	rdi, r14
	mov	rsi, r13
	call	rpl_fts_set
	mov	rdi, r14
	call	rpl_fts_read
	mov	r13, qword ptr [rsp + 0x1b0]
	jmp	.label_806
.label_1064:
	mov	rdi, r14
	mov	rsi, rdx
	mov	r15, rdx
	mov	r12, r9
	call	cycle_warning_required
	mov	r9, r12
	mov	rdx, r15
	test	al, al
	je	.label_841
	xor	r12d, r12d
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_882
	mov	edx, 5
	call	dcgettext
	mov	r15, rax
	xor	edi, edi
	mov	esi, 3
	mov	rdx, rbx
	call	quotearg_n_style_colon
	mov	rcx, rax
	xor	edi, edi
	xor	esi, esi
	xor	eax, eax
	mov	rdx, r15
	mov	r13, qword ptr [rsp + 0x1b0]
	call	error
	jmp	.label_806
.label_1065:
	mov	qword ptr [rsp + 0x18], rbx
	mov	byte ptr [rsp + 3], bpl
	mov	r14b, 1
	xor	r15d, r15d
	xor	ebp, ebp
	cmp	byte ptr [r13 + 0x11], 0
	mov	qword ptr [rsp + 0x30], rdx
	je	.label_897
	xor	r12d, r12d
	jmp	.label_804
.label_1066:
	mov	r12b, 1
	cmp	byte ptr [r13 + 4], 0
	je	.label_806
.label_841:
	mov	qword ptr [rsp + 0x18], rbx
	mov	byte ptr [rsp + 3], bpl
	cmp	dword ptr [rsp + 0x3c], -1
	mov	qword ptr [rsp + 0x30], rdx
	jne	.label_809
	cmp	dword ptr [r13], 2
	jne	.label_809
	cmp	qword ptr [r13 + 8], 0
	je	.label_820
	nop	dword ptr [rax + rax]
.label_809:
	lea	r15, [rdx + 0x78]
	cmp	byte ptr [r13 + 0x10], 0
	mov	ebp, dword ptr [rsp + 0x2c]
	jne	.label_823
	jmp	.label_828
.label_1067:
	mov	qword ptr [rsp + 0x18], rbx
	mov	byte ptr [rsp + 3], bpl
	mov	r14b, 1
	xor	r15d, r15d
	xor	ebp, ebp
	cmp	byte ptr [r13 + 0x11], 0
	mov	qword ptr [rsp + 0x30], rdx
	je	.label_830
	xor	r12d, r12d
	jmp	.label_804
.label_1068:
	cmp	qword ptr [rdx + 0x58], 0
	jne	.label_836
	cmp	qword ptr [rdx + 0x20], 0
	je	.label_837
.label_836:
	mov	qword ptr [rsp + 0x18], rbx
	mov	byte ptr [rsp + 3], bpl
	mov	r14b, 1
	xor	r15d, r15d
	xor	ebp, ebp
	cmp	byte ptr [r13 + 0x11], 0
	mov	qword ptr [rsp + 0x30], rdx
	je	.label_840
	xor	r12d, r12d
	jmp	.label_804
.label_897:
	mov	ebx, dword ptr [rdx + 0x40]
	xor	r15d, r15d
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_844
	jmp	.label_845
.label_830:
	mov	ebp, dword ptr [rdx + 0x40]
	xor	r15d, r15d
	xor	edi, edi
	mov	esi, 3
	mov	rdx, qword ptr [rsp + 0x18]
	call	quotearg_n_style_colon
	mov	rcx, rax
	xor	edi, edi
	mov	edx, OFFSET FLAT:label_155
	xor	eax, eax
	mov	esi, ebp
	jmp	.label_854
.label_840:
	mov	ebx, dword ptr [rdx + 0x40]
	xor	r15d, r15d
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_856
.label_845:
	mov	edx, 5
	call	dcgettext
	mov	rbp, rax
	mov	edi, 4
	mov	rsi, qword ptr [rsp + 0x18]
	call	quotearg_style
	mov	rcx, rax
	xor	edi, edi
	xor	eax, eax
	mov	esi, ebx
	mov	rdx, rbp
.label_854:
	call	error
	xor	ebp, ebp
	xor	r12d, r12d
	jmp	.label_804
.label_820:
	lea	r15, [rdx + 0x78]
	cmp	byte ptr [r13 + 0x10], 0
	mov	al, 1
	mov	ebp, dword ptr [rsp + 0x2c]
	je	.label_875
	nop	word ptr cs:[rax + rax]
.label_823:
	mov	eax, dword ptr [rdx + 0x90]
	mov	ecx, 0xf000
	and	eax, ecx
	cmp	eax, 0xa000
	jne	.label_828
	mov	esi, dword ptr [r14 + 0x2c]
	mov	edi, 1
	xor	r8d, r8d
	mov	rdx, r9
	lea	r15, [rsp + 0xe8]
	mov	rcx, r15
	mov	rbx, r9
	call	__fxstatat
	mov	r9, rbx
	mov	rdx, qword ptr [rsp + 0x30]
	test	eax, eax
	je	.label_828
	mov	r14b, 1
	cmp	byte ptr [r13 + 0x11], 0
	je	.label_879
	xor	ebp, ebp
	jmp	.label_883
	.section	.text
	.align	16
	#Procedure 0x4089c7
	.globl sub_4089c7
	.type sub_4089c7, @function
sub_4089c7:

	nop	word ptr [rax + rax]
.label_828:
	cmp	ebp, -1
	je	.label_847
	mov	ecx, dword ptr [r15 + 0x1c]
	cmp	ecx, ebp
	sete	al
	cmp	dword ptr [rsp + 0x28], -1
	je	.label_875
	cmp	ecx, ebp
	je	.label_889
	jmp	.label_875
.label_847:
	mov	al, 1
	cmp	dword ptr [rsp + 0x28], -1
	je	.label_875
.label_889:
	mov	eax, dword ptr [rsp + 0x28]
	cmp	dword ptr [r15 + 0x20], eax
	sete	al
.label_875:
	movzx	ecx, word ptr [rdx + 0x70]
	cmp	ecx, 6
	ja	.label_798
	mov	edx, 0x56
	bt	edx, ecx
	jae	.label_798
	mov	rcx, qword ptr [r13 + 8]
	test	rcx, rcx
	je	.label_798
	mov	rdx, qword ptr [r15 + 8]
	cmp	rdx, qword ptr [rcx]
	jne	.label_798
	mov	rdx, qword ptr [r15]
	cmp	rdx, qword ptr [rcx + 8]
	jne	.label_798
	mov	rbp, qword ptr [rsp + 0x18]
	cmp	byte ptr [rbp], 0x2f
	jne	.label_812
	cmp	byte ptr [rbp + 1], 0
	je	.label_886
.label_812:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_821
	mov	edx, 5
	call	dcgettext
	mov	r14, rax
	xor	edi, edi
	mov	esi, 4
	mov	rdx, rbp
	call	quotearg_n_style
	mov	r15, rax
	mov	edi, 1
	mov	esi, 4
	mov	edx, OFFSET FLAT:label_110
	call	quotearg_n_style
	mov	rbx, rax
	xor	edi, edi
	xor	esi, esi
	xor	eax, eax
	mov	rdx, r14
	mov	r14, qword ptr [rsp + 0x40]
	mov	rcx, r15
	mov	r8, rbx
	call	error
.label_853:
	movzx	ebp, byte ptr [rsp + 3]
	xor	r12d, r12d
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_839
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	xor	edi, edi
	xor	esi, esi
	xor	eax, eax
	mov	rdx, rcx
	call	error
	mov	r13, qword ptr [rsp + 0x1b0]
	jmp	.label_806
	.section	.text
	.align	16
	#Procedure 0x408ae3
	.globl sub_408ae3
	.type sub_408ae3, @function
sub_408ae3:

	nop	word ptr cs:[rax + rax]
.label_798:
	test	al, al
	je	.label_832
	mov	ebx, dword ptr [r14 + 0x2c]
	mov	rax, qword ptr [rsp + 0x1b0]
	cmp	byte ptr [rax + 0x10], 0
	je	.label_887
	cmp	dword ptr [rsp + 0x3c], -1
	je	.label_857
	movzx	eax, word ptr [r15 + 0x18]
	and	eax, 0xf000
	mov	ebp, 0x900
	cmp	eax, 0x8000
	je	.label_867
	movzx	eax, ax
	cmp	eax, 0x4000
	jne	.label_857
	mov	ebp, 0x10900
.label_867:
	xor	eax, eax
	mov	edi, ebx
	mov	r13, r9
	mov	rsi, r9
	mov	edx, ebp
	call	openat
	mov	r12d, eax
	test	r12d, r12d
	jns	.label_868
	call	__errno_location
	mov	r14, rax
	mov	eax, dword ptr [r14]
	cmp	eax, 0xd
	jne	.label_870
	mov	ecx, dword ptr [r15 + 0x18]
	mov	eax, 0xf000
	and	ecx, eax
	mov	eax, 0xd
	cmp	ecx, 0x8000
	jne	.label_870
	or	ebp, 1
	xor	eax, eax
	mov	edi, ebx
	mov	rsi, r13
	mov	edx, ebp
	call	openat
	mov	r12d, eax
	test	r12d, r12d
	js	.label_878
.label_868:
	mov	edi, 1
	mov	esi, r12d
	lea	rdx, [rsp + 0x50]
	call	__fxstat
	mov	ebx, 6
	test	eax, eax
	jne	.label_872
	mov	rax, qword ptr [r15 + 8]
	mov	ebx, 4
	cmp	rax, qword ptr [rsp + 0x58]
	jne	.label_872
	mov	rax, qword ptr [r15]
	cmp	rax, qword ptr [rsp + 0x50]
	jne	.label_872
	mov	eax, dword ptr [rsp + 0x2c]
	cmp	eax, -1
	mov	ebx, 2
	je	.label_816
	cmp	dword ptr [rsp + 0x6c], eax
	jne	.label_872
.label_816:
	cmp	dword ptr [rsp + 0x28], -1
	je	.label_877
	mov	eax, dword ptr [rsp + 0x28]
	cmp	dword ptr [rsp + 0x70], eax
	jne	.label_872
.label_877:
	mov	edi, r12d
	mov	esi, dword ptr [rsp + 4]
	mov	edx, dword ptr [rsp + 0x24]
	call	fchown
	test	eax, eax
	mov	ebx, 6
	je	.label_801
.label_872:
	call	__errno_location
	mov	rbp, rax
	mov	r14d, dword ptr [rbp]
	mov	edi, r12d
	call	close
	mov	dword ptr [rbp], r14d
	jmp	.label_831
.label_832:
	mov	r14b, 1
	xor	ebp, ebp
	mov	r12b, 1
	jmp	.label_804
.label_887:
	mov	r8d, 0x100
	mov	edi, ebx
	mov	rsi, r9
	mov	edx, dword ptr [rsp + 4]
	mov	ecx, dword ptr [rsp + 0x24]
	call	fchownat
	test	eax, eax
	sete	r12b
	mov	r14b, 1
	je	.label_824
	call	__errno_location
	cmp	dword ptr [rax], 0x5f
	setne	r14b
	mov	al, 1
	je	.label_829
	mov	eax, r12d
.label_829:
	mov	r12b, al
	jmp	.label_824
.label_879:
	call	__errno_location
	mov	ebx, dword ptr [rax]
	xor	ebp, ebp
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_833
	mov	edx, 5
	call	dcgettext
	mov	r15, rax
	mov	edi, 4
	mov	rsi, qword ptr [rsp + 0x18]
	call	quotearg_style
	mov	rcx, rax
	xor	edi, edi
	xor	eax, eax
	mov	esi, ebx
	mov	rdx, r15
	call	error
.label_883:
	lea	r15, [rsp + 0xe8]
	xor	r12d, r12d
	jmp	.label_804
.label_837:
	mov	qword ptr [rdx + 0x20], 1
	mov	rsi, rdx
	mov	edx, 1
	mov	rdi, r14
	call	rpl_fts_set
	mov	r12b, 1
	jmp	.label_806
.label_886:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_852
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
	mov	edi, 4
	mov	rsi, rbp
	call	quotearg_style
	mov	rcx, rax
	xor	edi, edi
	xor	esi, esi
	xor	eax, eax
	mov	rdx, rbx
	call	error
	jmp	.label_853
.label_851:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_852
	mov	edx, 5
	call	dcgettext
	mov	r15, rax
	mov	edi, 4
	mov	rsi, rbx
	call	quotearg_style
	mov	rcx, rax
	xor	edi, edi
	xor	esi, esi
	xor	eax, eax
	mov	rdx, r15
	call	error
	jmp	.label_815
.label_878:
	mov	eax, dword ptr [r14]
.label_870:
	xor	ebx, ebx
	cmp	eax, 0xd
	setne	bl
	add	ebx, 5
.label_831:
	mov	r9, r13
	add	ebx, -2
	cmp	ebx, 4
	ja	.label_842
	mov	r14b, 1
	xor	r12d, r12d
	xor	ebp, ebp
	jmp	qword ptr [(rbx * 8) + label_859]
.label_1130:
	mov	r14b, 1
	mov	bpl, 1
	mov	r12b, 1
	jmp	.label_804
.label_1131:
	mov	rax, qword ptr [rsp + 0x40]
	mov	ebx, dword ptr [rax + 0x2c]
.label_857:
	xor	r8d, r8d
	mov	edi, ebx
	mov	rsi, r9
	mov	edx, dword ptr [rsp + 4]
	mov	ecx, dword ptr [rsp + 0x24]
	call	fchownat
	test	eax, eax
	sete	r12b
	mov	r14b, 1
.label_824:
	mov	bpl, 1
	test	r12b, 1
	jne	.label_804
.label_1132:
	mov	bpl, 1
	mov	rax, qword ptr [rsp + 0x1b0]
	cmp	byte ptr [rax + 0x11], 0
	jne	.label_804
	call	__errno_location
	cmp	dword ptr [rsp + 4], -1
	mov	r13d, dword ptr [rax]
	je	.label_869
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_892
	jmp	.label_893
.label_869:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_894
.label_893:
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
	mov	edi, 4
	mov	rsi, qword ptr [rsp + 0x18]
	call	quotearg_style
	mov	rcx, rax
	xor	edi, edi
	xor	eax, eax
	mov	esi, r13d
	mov	rdx, rbx
	call	error
	nop	dword ptr [rax]
.label_804:
	mov	r13, qword ptr [rsp + 0x1b0]
	mov	rdx, qword ptr [r13]
	mov	rax, rdx
	shr	rax, 0x20
	cmp	edx, 2
	je	.label_807
	mov	ecx, r12d
	and	cl, 1
	test	bpl, bpl
	je	.label_817
	mov	ebx, r12d
	and	bl, r14b
	mov	r13, qword ptr [rsp + 0x1b0]
	je	.label_817
	cmp	dword ptr [rsp + 4], -1
	je	.label_826
	mov	esi, dword ptr [rsp + 4]
	cmp	dword ptr [r15 + 0x1c], esi
	jne	.label_827
.label_826:
	cmp	dword ptr [rsp + 0x24], -1
	je	.label_817
	mov	esi, dword ptr [rsp + 0x24]
	cmp	dword ptr [r15 + 0x20], esi
	jne	.label_827
	nop	dword ptr [rax]
.label_817:
	test	edx, edx
	jne	.label_807
	test	cl, cl
	movzx	eax, r14b
	lea	r14d, [rax + rax*2 + 1]
	mov	eax, 3
	cmove	r14d, eax
	test	r15, r15
	mov	ebp, 0
	mov	eax, 0
	mov	qword ptr [rsp + 0x48], rax
	jne	.label_834
	jmp	.label_843
.label_827:
	movzx	r14d, r14b
	inc	r14d
	test	cl, cl
	mov	eax, 3
	cmove	r14d, eax
.label_834:
	mov	ebx, dword ptr [r15 + 0x1c]
	mov	edi, ebx
	call	getpwuid
	test	rax, rax
	je	.label_846
	mov	rdi, qword ptr [rax]
	jmp	.label_848
.label_846:
	mov	rdi, rbx
	lea	rsi, [rsp + 0x50]
	call	umaxtostr
	mov	rdi, rax
.label_848:
	call	xstrdup
	mov	rbp, rax
	mov	ebx, dword ptr [r15 + 0x20]
	mov	edi, ebx
	call	getgrgid
	test	rax, rax
	je	.label_876
	mov	rdi, qword ptr [rax]
	jmp	.label_858
.label_876:
	mov	rdi, rbx
	lea	rsi, [rsp + 0x50]
	call	umaxtostr
	mov	rdi, rax
.label_858:
	mov	r13, qword ptr [rsp + 0x1b0]
	call	xstrdup
	mov	qword ptr [rsp + 0x48], rax
.label_843:
	cmp	r14d, 1
	jne	.label_863
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_864
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
	mov	edi, 4
	mov	rsi, qword ptr [rsp + 0x18]
	call	quotearg_style
	mov	rcx, rax
	mov	edi, 1
	xor	eax, eax
	mov	rsi, rbx
	mov	rdx, rcx
	call	__printf_chk
	jmp	.label_873
.label_863:
	mov	rbx, qword ptr [r13 + 0x18]
	mov	r15, qword ptr [r13 + 0x20]
	mov	rdi, rbx
	mov	rsi, r15
	call	user_group_str
	mov	qword ptr [rsp + 0x10], rax
	test	rbx, rbx
	mov	qword ptr [rsp + 8], rbp
	mov	rdi, rbp
	cmove	rdi, rbx
	test	r15, r15
	mov	rsi, qword ptr [rsp + 0x48]
	cmove	rsi, r15
	call	user_group_str
	and	r14b, 7
	cmp	r14b, 4
	mov	r13, qword ptr [rsp + 0x18]
	je	.label_880
	cmp	r14b, 3
	je	.label_884
	cmp	r14b, 2
	jne	.label_885
	test	rbx, rbx
	je	.label_888
	mov	rbx, rax
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_881
	jmp	.label_797
.label_880:
	test	rbx, rbx
	je	.label_890
	mov	rbx, rax
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_891
	jmp	.label_797
.label_884:
	test	rax, rax
	je	.label_896
	test	rbx, rbx
	je	.label_865
	mov	rbx, rax
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_796
	jmp	.label_797
.label_888:
	mov	rbx, rax
	xor	edi, edi
	test	r15, r15
	je	.label_800
	mov	esi, OFFSET FLAT:label_835
	jmp	.label_797
.label_890:
	mov	rbx, rax
	xor	edi, edi
	test	r15, r15
	je	.label_805
	mov	esi, OFFSET FLAT:label_855
	jmp	.label_797
.label_896:
	xor	edi, edi
	test	rbx, rbx
	je	.label_808
	mov	esi, OFFSET FLAT:label_811
	jmp	.label_803
.label_865:
	mov	rbx, rax
	xor	edi, edi
	test	r15, r15
	je	.label_813
	mov	esi, OFFSET FLAT:label_818
	jmp	.label_797
.label_800:
	mov	esi, OFFSET FLAT:label_895
	jmp	.label_797
.label_805:
	mov	esi, OFFSET FLAT:label_861
	jmp	.label_797
.label_808:
	test	r15, r15
	je	.label_825
	mov	esi, OFFSET FLAT:label_802
	jmp	.label_803
.label_813:
	mov	esi, OFFSET FLAT:label_819
.label_797:
	mov	edx, 5
	call	dcgettext
	mov	r14, rax
	mov	rbp, qword ptr [rsp + 8]
	mov	r15, qword ptr [rsp + 0x10]
.label_822:
	mov	edi, 4
	mov	rsi, r13
	call	quotearg_style
	mov	rcx, rax
	mov	edi, 1
	xor	eax, eax
	mov	rsi, r14
	mov	rdx, rcx
	mov	rcx, rbx
	mov	r8, r15
	call	__printf_chk
	mov	rdi, rbx
	call	free
	mov	rdi, r15
	call	free
.label_873:
	mov	rdi, rbp
	call	free
	mov	rdi, qword ptr [rsp + 0x48]
	call	free
	mov	r13, qword ptr [rsp + 0x1b0]
	mov	al, byte ptr [r13 + 4]
.label_807:
	test	al, al
	mov	r14, qword ptr [rsp + 0x40]
	jne	.label_849
	mov	edx, 4
	mov	rdi, r14
	mov	rsi, qword ptr [rsp + 0x30]
	call	rpl_fts_set
.label_849:
	and	r12b, 1
	movzx	ebp, byte ptr [rsp + 3]
.label_806:
	and	r12b, bpl
	mov	rdi, r14
	call	rpl_fts_read
	mov	rdx, rax
	test	rdx, rdx
	mov	ebp, r12d
	jne	.label_814
.label_810:
	call	__errno_location
	mov	rbp, rax
	mov	ebx, dword ptr [rbp]
	test	ebx, ebx
	je	.label_860
	mov	rax, qword ptr [rsp + 0x1b0]
	cmp	byte ptr [rax + 0x11], 0
	je	.label_862
	xor	r12d, r12d
	jmp	.label_860
.label_862:
	xor	r12d, r12d
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_866
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	xor	edi, edi
	xor	eax, eax
	mov	esi, ebx
	mov	rdx, rcx
	call	error
.label_860:
	mov	rdi, r14
	call	rpl_fts_close
	test	eax, eax
	je	.label_871
	mov	ebx, dword ptr [rbp]
	xor	r12d, r12d
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_874
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	xor	edi, edi
	xor	eax, eax
	mov	esi, ebx
	mov	rdx, rcx
	call	error
.label_871:
	mov	eax, r12d
	add	rsp, 0x178
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_885:
	call	abort
.label_842:
	call	abort
	.section	.text
	.align	16
	#Procedure 0x4091bf
	.globl sub_4091bf
	.type sub_4091bf, @function
sub_4091bf:

	nop	
	.section	.text
	.align	16
	#Procedure 0x4091c0
	.globl chopt_free
	.type chopt_free, @function
chopt_free:

	push	rbx
	mov	rbx, rdi
	mov	rdi, qword ptr [rbx + 0x18]
	call	free
	mov	rdi, qword ptr [rbx + 0x20]
	pop	rbx
	jmp	free
	.section	.text
	.align	16
	#Procedure 0x4091d7
	.globl sub_4091d7
	.type sub_4091d7, @function
sub_4091d7:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4091e0

	.globl fts_build
	.type fts_build, @function
fts_build:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x98
	mov	ebx, esi
	mov	r15, rdi
	mov	r13, qword ptr [r15]
	mov	rdi, qword ptr [r13 + 0x18]
	test	rdi, rdi
	mov	qword ptr [rsp + 0x10], r15
	mov	qword ptr [rsp + 0x70], rdi
	je	.label_973
	call	dirfd
	mov	dword ptr [rsp + 4], eax
	test	eax, eax
	js	.label_903
	mov	dword ptr [rsp], ebx
	lea	rax, [r15 + 0x40]
	mov	qword ptr [rsp + 0x18], rax
	cmp	qword ptr [r15 + 0x40], 1
	sbb	rax, rax
	not	rax
	or	rax, 0x186a0
	mov	qword ptr [rsp + 0x58], rax
	lea	rbp, [r15 + 0x48]
	mov	al, 1
	mov	dword ptr [rsp + 0xc], eax
	jmp	.label_935
.label_973:
	mov	eax, dword ptr [r15 + 0x48]
	mov	ecx, eax
	and	ecx, 0x204
	mov	edi, 0xffffff9c
	cmp	ecx, 0x200
	jne	.label_914
	mov	edi, dword ptr [r15 + 0x2c]
.label_914:
	mov	rsi, qword ptr [r13 + 0x30]
	xor	edx, edx
	test	al, 0x10
	je	.label_920
	test	al, 1
	je	.label_921
	cmp	qword ptr [r13 + 0x58], 0
	je	.label_920
.label_921:
	mov	edx, 0x20000
.label_920:
	lea	rcx, [rsp + 4]
	call	opendirat
	mov	qword ptr [r13 + 0x18], rax
	test	rax, rax
	je	.label_957
	mov	dword ptr [rsp], ebx
	lea	rcx, [r15 + 0x48]
	movzx	eax, word ptr [r13 + 0x70]
	cmp	eax, 0xb
	mov	rbp, r13
	mov	r12, rcx
	jne	.label_932
	xor	edx, edx
	mov	rdi, r15
	mov	rsi, rbp
	call	fts_stat
	mov	rbx, rbp
	mov	word ptr [rbp + 0x70], ax
	jmp	.label_937
.label_903:
	mov	rdi, qword ptr [r13 + 0x18]
	call	closedir
	mov	qword ptr [r13 + 0x18], 0
.label_957:
	xor	r14d, r14d
	cmp	ebx, 3
	jne	.label_911
	mov	word ptr [r13 + 0x70], 4
	call	__errno_location
	mov	eax, dword ptr [rax]
	mov	dword ptr [r13 + 0x40], eax
	jmp	.label_918
.label_932:
	mov	rbx, rbp
	test	byte ptr [rcx + 1], 1
	je	.label_937
	mov	rdi, r15
	mov	rbp, rbx
	mov	rsi, rbp
	call	leave_dir
	xor	edx, edx
	mov	rdi, r15
	mov	rsi, rbp
	call	fts_stat
	movzx	eax, word ptr [r15 + 0x48]
	test	ax, 0x102
	je	.label_947
	mov	edi, 0x18
	call	malloc
	mov	rbp, rax
	test	rbp, rbp
	je	.label_951
	mov	rax, rbx
	movups	xmm0, xmmword ptr [rax + 0x78]
	movups	xmmword ptr [rbp], xmm0
	mov	qword ptr [rbp + 0x10], rax
	mov	rdi, qword ptr [r15 + 0x58]
	mov	rsi, rbp
	call	hash_insert
	mov	r14, rax
	cmp	r14, rbp
	je	.label_937
	mov	rdi, rbp
	call	free
	test	r14, r14
	je	.label_951
	mov	rax, qword ptr [r14 + 0x10]
	mov	rcx, rbx
	mov	qword ptr [rcx], rax
	mov	word ptr [rcx + 0x70], 2
	jmp	.label_937
.label_947:
	mov	rdi, qword ptr [r15 + 0x58]
	lea	rsi, [rbp + 0x78]
	call	cycle_check
	test	al, al
	je	.label_937
	mov	rax, rbx
	mov	qword ptr [rax], rax
	mov	word ptr [rax + 0x70], 2
.label_937:
	lea	rax, [r15 + 0x40]
	mov	qword ptr [rsp + 0x18], rax
	cmp	qword ptr [r15 + 0x40], 1
	sbb	rax, rax
	not	rax
	or	rax, 0x186a0
	mov	qword ptr [rsp + 0x58], rax
	cmp	dword ptr [rsp], 2
	mov	r13, rbx
	mov	rbp, r12
	je	.label_905
	mov	eax, dword ptr [rbp]
	and	eax, 0x38
	cmp	eax, 0x18
	jne	.label_900
	cmp	qword ptr [r13 + 0x88], 2
	jne	.label_900
	mov	esi, dword ptr [rsp + 4]
	mov	rdi, r13
	call	filesystem_type
	cmp	rax, 0x9f9f
	jle	.label_968
	cmp	rax, 0x9fa0
	je	.label_900
	mov	ecx, 0xff534d42
	cmp	rax, rcx
	je	.label_900
	cmp	rax, 0x5346414f
	je	.label_900
	jmp	.label_905
.label_951:
	call	__errno_location
	mov	dword ptr [rax], 0xc
	jmp	.label_918
.label_968:
	test	rax, rax
	je	.label_900
	cmp	rax, 0x6969
	jne	.label_905
.label_900:
	cmp	dword ptr [rsp], 3
	sete	bl
	mov	r14b, 1
	jmp	.label_909
.label_905:
	cmp	dword ptr [rsp], 3
	sete	bl
	mov	r14d, 0
	jne	.label_912
.label_909:
	mov	r15, r13
	test	byte ptr [rbp + 1], 2
	mov	ebp, dword ptr [rsp + 4]
	je	.label_915
	mov	esi, 0x406
	mov	edx, 3
	xor	eax, eax
	mov	edi, ebp
	call	rpl_fcntl
	mov	ebp, eax
	mov	dword ptr [rsp + 4], ebp
.label_915:
	test	ebp, ebp
	js	.label_923
	xor	ecx, ecx
	mov	rdi, qword ptr [rsp + 0x10]
	mov	rsi, r15
	mov	edx, ebp
	call	fts_safe_changedir
	test	eax, eax
	je	.label_930
.label_923:
	and	bl, r14b
	cmp	bl, 1
	jne	.label_931
	call	__errno_location
	mov	eax, dword ptr [rax]
	mov	dword ptr [r15 + 0x40], eax
.label_931:
	or	byte ptr [r15 + 0x72], 1
	mov	rdi, qword ptr [r15 + 0x18]
	call	closedir
	mov	rbx, r15
	mov	qword ptr [r15 + 0x18], 0
	mov	rbp, r12
	mov	eax, dword ptr [rbp]
	test	ah, 2
	mov	r15, qword ptr [rsp + 0x10]
	je	.label_936
	mov	edi, dword ptr [rsp + 4]
	test	edi, edi
	js	.label_936
	call	close
.label_936:
	mov	r13, rbx
	mov	qword ptr [r13 + 0x18], 0
.label_912:
	mov	dword ptr [rsp + 0xc], 0
.label_935:
	mov	rax, qword ptr [r13 + 0x38]
	mov	rcx, qword ptr [r13 + 0x48]
	lea	rdx, [rcx - 1]
	cmp	byte ptr [rax + rcx - 1], 0x2f
	cmovne	rdx, rcx
	xor	eax, eax
	mov	qword ptr [rsp + 0x20], rax
	test	byte ptr [rbp], 4
	je	.label_943
	mov	rax, qword ptr [r15 + 0x20]
	lea	rcx, [rax + rdx + 1]
	mov	qword ptr [rsp + 0x20], rcx
	mov	byte ptr [rax + rdx], 0x2f
.label_943:
	lea	rax, [rdx + 1]
	mov	rcx, qword ptr [r15 + 0x30]
	mov	qword ptr [rsp + 0x38], rax
	sub	rcx, rax
	mov	qword ptr [rsp + 0x78], rcx
	mov	rax, qword ptr [r13 + 0x58]
	inc	rax
	mov	qword ptr [rsp + 0x88], rax
	add	rdx, 0x102
	mov	qword ptr [rsp + 0x80], rdx
	xor	eax, eax
	mov	qword ptr [rsp + 0x48], rax
	xor	eax, eax
	mov	qword ptr [rsp + 0x60], rax
	mov	dword ptr [rsp + 8], 0
	xor	eax, eax
	xor	r14d, r14d
	xor	r12d, r12d
	mov	qword ptr [rsp + 0x28], rbp
	mov	qword ptr [rsp + 0x30], r13
.label_925:
	mov	rbx, qword ptr [r13 + 0x18]
	test	rbx, rbx
	je	.label_910
	mov	qword ptr [rsp + 0x90], rax
	mov	qword ptr [rsp + 0x40], r14
	nop	dword ptr [rax]
.label_975:
	call	__errno_location
	mov	r15, rax
	mov	dword ptr [r15], 0
	mov	rdi, rbx
	call	readdir
	mov	r14, rax
	test	r14, r14
	je	.label_967
	mov	rcx, r13
	mov	r13, r14
	add	r13, 0x13
	test	byte ptr [rbp], 0x20
	jne	.label_960
	cmp	byte ptr [r13], 0x2e
	jne	.label_960
	movzx	eax, byte ptr [r14 + 0x14]
	cmp	al, 0x2e
	je	.label_972
	test	al, al
	je	.label_954
	jmp	.label_960
	.section	.text
	.align	16
	#Procedure 0x4095e9
	.globl sub_4095e9
	.type sub_4095e9, @function
sub_4095e9:

	nop	dword ptr [rax]
.label_972:
	cmp	byte ptr [r14 + 0x15], 0
	jne	.label_960
.label_954:
	mov	r13, rcx
	mov	rbx, qword ptr [r13 + 0x18]
	test	rbx, rbx
	jne	.label_975
	jmp	.label_899
	.section	.text
	.align	16
	#Procedure 0x409608
	.globl sub_409608
	.type sub_409608, @function
sub_409608:

	nop	dword ptr [rax + rax]
.label_960:
	mov	qword ptr [rsp + 0x50], r12
	mov	rdi, r13
	call	strlen
	mov	rbx, rax
	lea	rdi, [rbx + 0x110]
	and	rdi, 0xfffffffffffffff8
	call	malloc
	mov	r12, rax
	test	r12, r12
	je	.label_908
	mov	rdi, r12
	add	rdi, 0x108
	mov	qword ptr [rsp + 0x68], rdi
	mov	rsi, r13
	mov	rdx, rbx
	call	memcpy
	mov	byte ptr [r12 + rbx + 0x108], 0
	mov	qword ptr [r12 + 0x60], rbx
	mov	rbp, qword ptr [rsp + 0x10]
	mov	qword ptr [r12 + 0x50], rbp
	mov	r13, qword ptr [rbp + 0x20]
	mov	qword ptr [r12 + 0x38], r13
	mov	dword ptr [r12 + 0x40], 0
	mov	qword ptr [r12 + 0x18], 0
	mov	word ptr [r12 + 0x72], 0
	mov	word ptr [r12 + 0x74], 3
	xorps	xmm0, xmm0
	movups	xmmword ptr [r12 + 0x20], xmm0
	mov	rax, qword ptr [rsp + 0x78]
	cmp	rbx, rax
	jae	.label_916
	mov	rbp, qword ptr [rsp + 0x28]
	mov	rdx, qword ptr [rsp + 0x38]
	jmp	.label_934
	.section	.text
	.align	16
	#Procedure 0x4096b8
	.globl sub_4096b8
	.type sub_4096b8, @function
sub_4096b8:

	nop	dword ptr [rax + rax]
.label_916:
	mov	rax, qword ptr [rsp + 0x80]
	lea	rsi, [rax + rbx]
	add	rsi, qword ptr [rbp + 0x30]
	jb	.label_938
	mov	qword ptr [rbp + 0x30], rsi
	mov	rdi, r13
	call	realloc
	test	rax, rax
	je	.label_940
	mov	qword ptr [rbp + 0x20], rax
	cmp	r13, rax
	je	.label_942
	mov	rdx, qword ptr [rsp + 0x38]
	add	rax, rdx
	mov	rbp, qword ptr [rsp + 0x28]
	test	byte ptr [rbp], 4
	mov	rcx, qword ptr [rsp + 0x20]
	cmovne	rcx, rax
	mov	qword ptr [rsp + 0x20], rcx
	mov	al, 1
	mov	qword ptr [rsp + 0x60], rax
	jmp	.label_944
.label_942:
	mov	rbp, qword ptr [rsp + 0x28]
	mov	rdx, qword ptr [rsp + 0x38]
.label_944:
	mov	rax, qword ptr [rsp + 0x10]
	mov	rax, qword ptr [rax + 0x30]
	sub	rax, rdx
.label_934:
	add	rbx, rdx
	mov	r13, rbp
	jb	.label_949
	mov	qword ptr [rsp + 0x78], rax
	mov	rax, qword ptr [rsp + 0x88]
	mov	qword ptr [r12 + 0x58], rax
	mov	r15, qword ptr [rsp + 0x10]
	mov	rax, qword ptr [r15]
	mov	qword ptr [r12 + 8], rax
	mov	qword ptr [r12 + 0x48], rbx
	mov	rax, qword ptr [r14]
	mov	qword ptr [r12 + 0x80], rax
	test	byte ptr [rbp], 4
	jne	.label_952
	mov	rax, qword ptr [rsp + 0x68]
	mov	qword ptr [r12 + 0x30], rax
	jmp	.label_961
	.section	.text
	.align	16
	#Procedure 0x40977f
	.globl sub_40977f
	.type sub_40977f, @function
sub_40977f:

	nop	
.label_952:
	mov	rax, qword ptr [r12 + 0x38]
	mov	qword ptr [r12 + 0x30], rax
	mov	rdx, qword ptr [r12 + 0x60]
	inc	rdx
	mov	rdi, qword ptr [rsp + 0x20]
	mov	rsi, qword ptr [rsp + 0x68]
	call	memmove
	mov	rbp, r13
.label_961:
	mov	edx, dword ptr [rbp]
	mov	rax, qword ptr [rsp + 0x18]
	cmp	qword ptr [rax], 0
	je	.label_964
	mov	eax, edx
	and	eax, 0x400
	jne	.label_964
	xor	edx, edx
	mov	rdi, r15
	mov	rsi, r12
	call	fts_stat
	mov	rbp, r13
	mov	word ptr [r12 + 0x70], ax
	mov	r14, qword ptr [rsp + 0x40]
	jmp	.label_971
	.section	.text
	.align	16
	#Procedure 0x4097d8
	.globl sub_4097d8
	.type sub_4097d8, @function
sub_4097d8:

	nop	dword ptr [rax + rax]
.label_964:
	and	edx, 0x18
	movzx	ecx, byte ptr [r14 + 0x12]
	xor	eax, eax
	cmp	edx, 0x18
	mov	edx, 0
	jne	.label_953
	cmp	cl, 4
	setne	bl
	test	cl, cl
	setne	dl
	and	dl, bl
.label_953:
	mov	word ptr [r12 + 0x70], 0xb
	lea	esi, [rcx - 1]
	cmp	esi, 0xb
	mov	r14, qword ptr [rsp + 0x40]
	ja	.label_898
	mov	eax, dword ptr [(rcx * 4) + label_941]
.label_898:
	mov	dword ptr [r12 + 0x90], eax
	cmp	dl, 1
	mov	eax, 1
	adc	rax, 0
	mov	qword ptr [r12 + 0xa8], rax
.label_971:
	mov	qword ptr [r12 + 0x10], 0
	mov	rcx, qword ptr [rsp + 0x50]
	test	rcx, rcx
	mov	rax, r12
	je	.label_955
	mov	rax, qword ptr [rsp + 0x90]
	mov	qword ptr [rax + 0x10], r12
	mov	rax, rcx
.label_955:
	mov	rbx, rax
	cmp	r14, 0x2710
	jne	.label_919
	mov	rax, qword ptr [rsp + 0x18]
	cmp	qword ptr [rax], 0
	jne	.label_919
	mov	esi, dword ptr [rsp + 4]
	mov	rdi, qword ptr [rsp + 0x30]
	call	filesystem_type
	cmp	rax, 0x6969
	je	.label_926
	cmp	rax, 0x1021994
	je	.label_926
	mov	dword ptr [rsp + 8], 0
	mov	ecx, 0xff534d42
	cmp	rax, rcx
	mov	rbp, r13
	je	.label_919
	mov	al, 1
	mov	dword ptr [rsp + 8], eax
	jmp	.label_919
.label_926:
	mov	dword ptr [rsp + 8], 0
	mov	rbp, r13
	nop	dword ptr [rax + rax]
.label_919:
	inc	r14
	cmp	qword ptr [rsp + 0x58], r14
	mov	rax, r12
	mov	r13, qword ptr [rsp + 0x30]
	mov	r12, rbx
	ja	.label_925
	jmp	.label_910
.label_967:
	mov	eax, dword ptr [r15]
	test	eax, eax
	mov	r14, qword ptr [rsp + 0x40]
	je	.label_922
	mov	dword ptr [r13 + 0x40], eax
	mov	rax, qword ptr [rsp + 0x70]
	or	rax, r14
	mov	ax, 7
	mov	cx, 4
	cmovne	cx, ax
	mov	word ptr [r13 + 0x70], cx
.label_922:
	mov	rdi, qword ptr [r13 + 0x18]
	test	rdi, rdi
	mov	r15, qword ptr [rsp + 0x10]
	je	.label_910
	call	closedir
	mov	qword ptr [r13 + 0x18], 0
	jmp	.label_910
.label_899:
	mov	r15, qword ptr [rsp + 0x10]
	mov	r14, qword ptr [rsp + 0x40]
.label_910:
	mov	rax, qword ptr [rsp + 0x60]
	test	al, 1
	je	.label_948
	mov	rcx, qword ptr [r15 + 8]
	mov	rax, qword ptr [r15 + 0x20]
	jmp	.label_950
	.section	.text
	.align	16
	#Procedure 0x409942
	.globl sub_409942
	.type sub_409942, @function
sub_409942:

	nop	word ptr cs:[rax + rax]
.label_958:
	mov	qword ptr [rcx + 0x38], rax
	mov	rcx, qword ptr [rcx + 0x10]
.label_950:
	test	rcx, rcx
	je	.label_956
	mov	rdx, qword ptr [rcx + 0x30]
	lea	rsi, [rcx + 0x108]
	cmp	rdx, rsi
	je	.label_958
	sub	rdx, qword ptr [rcx + 0x38]
	add	rdx, rax
	mov	qword ptr [rcx + 0x30], rdx
	jmp	.label_958
.label_956:
	cmp	qword ptr [r12 + 0x58], 0
	js	.label_948
	mov	rcx, r12
	nop	word ptr cs:[rax + rax]
.label_969:
	mov	rdx, qword ptr [rcx + 0x30]
	lea	rsi, [rcx + 0x108]
	cmp	rdx, rsi
	je	.label_963
	sub	rdx, qword ptr [rcx + 0x38]
	add	rdx, rax
	mov	qword ptr [rcx + 0x30], rdx
.label_963:
	mov	qword ptr [rcx + 0x38], rax
	mov	rdx, qword ptr [rcx + 0x10]
	test	rdx, rdx
	jne	.label_966
	mov	rdx, qword ptr [rcx + 8]
.label_966:
	cmp	qword ptr [rdx + 0x58], 0
	mov	rcx, rdx
	jns	.label_969
.label_948:
	test	byte ptr [rbp], 4
	mov	rdx, qword ptr [rsp + 0x38]
	je	.label_970
	mov	rax, qword ptr [rsp + 0x20]
	mov	rcx, rax
	lea	rax, [rcx - 1]
	cmp	rdx, qword ptr [r15 + 0x30]
	cmove	rcx, rax
	test	r14, r14
	cmove	rcx, rax
	mov	byte ptr [rcx], 0
.label_970:
	cmp	qword ptr [rsp + 0x70], 0
	jne	.label_902
	mov	eax, dword ptr [rsp + 0xc]
	test	al, al
	je	.label_902
	cmp	dword ptr [rsp], 1
	je	.label_901
	test	r14, r14
	jne	.label_902
.label_901:
	cmp	qword ptr [r13 + 0x58], 0
	je	.label_904
	mov	rsi, qword ptr [r13 + 8]
	mov	edx, 0xffffffff
	mov	ecx, OFFSET FLAT:label_27
	mov	rdi, r15
	call	fts_safe_changedir
	jmp	.label_907
.label_904:
	mov	rdi, r15
	call	restore_initial_cwd
.label_907:
	mov	rcx, rbp
	test	eax, eax
	je	.label_902
	mov	word ptr [r13 + 0x70], 7
	or	byte ptr [rcx + 1], 0x20
	xor	r14d, r14d
	test	r12, r12
	je	.label_911
	xor	r14d, r14d
	nop	word ptr [rax + rax]
.label_924:
	mov	rbp, qword ptr [r12 + 0x10]
	mov	rdi, qword ptr [r12 + 0x18]
	test	rdi, rdi
	je	.label_917
	call	closedir
.label_917:
	mov	rdi, r12
	call	free
	test	rbp, rbp
	mov	r12, rbp
	jne	.label_924
	jmp	.label_911
.label_902:
	test	r14, r14
	je	.label_928
	mov	eax, dword ptr [rsp + 8]
	test	al, 1
	jne	.label_929
	cmp	r14, 2
	jb	.label_933
	mov	rax, qword ptr [rsp + 0x18]
	mov	rax, qword ptr [rax]
	test	rax, rax
	je	.label_933
	mov	rdi, r15
	mov	rsi, r12
	mov	rdx, r14
	call	fts_sort
	mov	r14, rax
	jmp	.label_911
.label_928:
	cmp	dword ptr [rsp], 3
	jne	.label_939
	movzx	eax, word ptr [r13 + 0x70]
	cmp	eax, 4
	je	.label_939
	movzx	eax, ax
	cmp	eax, 7
	je	.label_939
	mov	word ptr [r13 + 0x70], 6
.label_939:
	xor	r14d, r14d
	test	r12, r12
	je	.label_911
	xor	r14d, r14d
	nop	dword ptr [rax]
.label_946:
	mov	rbp, qword ptr [r12 + 0x10]
	mov	rdi, qword ptr [r12 + 0x18]
	test	rdi, rdi
	je	.label_945
	call	closedir
.label_945:
	mov	rdi, r12
	call	free
	test	rbp, rbp
	mov	r12, rbp
	jne	.label_946
	jmp	.label_911
.label_929:
	mov	rbx, qword ptr [rsp + 0x18]
	mov	qword ptr [rbx], OFFSET FLAT:fts_compare_ino
	mov	rdi, r15
	mov	rsi, r12
	mov	rdx, r14
	call	fts_sort
	mov	r14, rax
	mov	qword ptr [rbx], 0
	jmp	.label_911
.label_933:
	mov	r14, r12
	jmp	.label_911
.label_930:
	mov	al, 1
	mov	dword ptr [rsp + 0xc], eax
	mov	rax, r15
	mov	r15, qword ptr [rsp + 0x10]
	mov	rbp, r12
	mov	r13, rax
	jmp	.label_935
.label_949:
	mov	rdi, r12
	call	free
	mov	rbp, qword ptr [rsp + 0x50]
	test	rbp, rbp
	mov	r14, qword ptr [rsp + 0x30]
	je	.label_962
	nop	word ptr [rax + rax]
.label_965:
	mov	rbx, qword ptr [rbp + 0x10]
	mov	rdi, qword ptr [rbp + 0x18]
	test	rdi, rdi
	je	.label_959
	call	closedir
.label_959:
	mov	rdi, rbp
	call	free
	test	rbx, rbx
	mov	rbp, rbx
	jne	.label_965
.label_962:
	mov	rdi, qword ptr [r14 + 0x18]
	call	closedir
	mov	qword ptr [r14 + 0x18], 0
	mov	word ptr [r14 + 0x70], 7
	or	byte ptr [r13 + 1], 0x20
	mov	dword ptr [r15], 0x24
	jmp	.label_918
.label_938:
	mov	rdi, r13
	call	free
	mov	qword ptr [rbp + 0x20], 0
	mov	dword ptr [r15], 0x24
	jmp	.label_974
.label_940:
	mov	rdi, qword ptr [rbp + 0x20]
	call	free
	mov	qword ptr [rbp + 0x20], 0
.label_974:
	mov	qword ptr [rsp + 0x48], r12
.label_908:
	mov	r12, qword ptr [rsp + 0x30]
	mov	r14d, dword ptr [r15]
	mov	rdi, qword ptr [rsp + 0x48]
	call	free
	mov	rbx, qword ptr [rsp + 0x50]
	test	rbx, rbx
	je	.label_906
	nop	word ptr cs:[rax + rax]
.label_913:
	mov	rbp, qword ptr [rbx + 0x10]
	mov	rdi, qword ptr [rbx + 0x18]
	test	rdi, rdi
	je	.label_927
	call	closedir
.label_927:
	mov	rdi, rbx
	call	free
	test	rbp, rbp
	mov	rbx, rbp
	jne	.label_913
.label_906:
	mov	rbx, r12
	mov	rdi, qword ptr [rbx + 0x18]
	call	closedir
	mov	qword ptr [rbx + 0x18], 0
	mov	word ptr [rbx + 0x70], 7
	mov	rax, qword ptr [rsp + 0x28]
	or	byte ptr [rax + 1], 0x20
	mov	dword ptr [r15], r14d
.label_918:
	xor	r14d, r14d
.label_911:
	mov	rax, r14
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
	#Procedure 0x409c90

	.globl cycle_check_init
	.type cycle_check_init, @function
cycle_check_init:
	mov	qword ptr [rdi + 0x10], 0
	mov	dword ptr [rdi + 0x18], 0x95f616
	ret	
	.section	.text
	.align	16
	#Procedure 0x409ca0
	.globl close_stdout_set_file_name
	.type close_stdout_set_file_name, @function
close_stdout_set_file_name:

	mov	qword ptr [rip + file_name],  rdi
	ret	
	.section	.text
	.align	16
	#Procedure 0x409ca8
	.globl sub_409ca8
	.type sub_409ca8, @function
sub_409ca8:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x409cb0

	.globl AD_hash
	.type AD_hash, @function
AD_hash:
	mov	rax, qword ptr [rdi + 8]
	xor	edx, edx
	div	rsi
	mov	rax, rdx
	ret	
	.section	.text
	.align	16
	#Procedure 0x409cbd
	.globl sub_409cbd
	.type sub_409cbd, @function
sub_409cbd:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x409cc0

	.globl hard_locale
	.type hard_locale, @function
hard_locale:
	push	rbx
	xor	esi, esi
	call	setlocale
	mov	bl, 1
	test	rax, rax
	je	.label_977
	cmp	byte ptr [rax], 0x43
	jne	.label_979
	cmp	byte ptr [rax + 1], 0
	je	.label_976
.label_979:
	mov	esi, OFFSET FLAT:label_978
	mov	rdi, rax
	call	strcmp
	test	eax, eax
	jne	.label_977
.label_976:
	xor	ebx, ebx
.label_977:
	mov	eax, ebx
	pop	rbx
	ret	
	.section	.text
	.align	16
	#Procedure 0x409cf1
	.globl sub_409cf1
	.type sub_409cf1, @function
sub_409cf1:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x409d00

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
	je	.label_980
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
.label_980:
	call	abort
	.section	.text
	.align	16
	#Procedure 0x409d68
	.globl sub_409d68
	.type sub_409d68, @function
sub_409d68:

	nop	dword ptr [rax + rax]
.label_985:
	mov	rdi, qword ptr [r12 + 0x10]
	call	free
	mov	qword ptr [r12 + 0x10], 0
	mov	qword ptr [r12 + 0x38], 0
	jmp	.label_981
	.section	.text
	.align	16
	#Procedure 0x409d91

	.globl fts_sort
	.type fts_sort, @function
fts_sort:
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	mov	r14, rdx
	mov	rbx, rsi
	mov	r12, rdi
	mov	r15, qword ptr [r12 + 0x40]
	cmp	qword ptr [r12 + 0x38], r14
	jae	.label_989
	lea	rsi, [r14 + 0x28]
	mov	qword ptr [r12 + 0x38], rsi
	mov	rax, rsi
	shr	rax, 0x3d
	jne	.label_985
	lea	r13, [r12 + 0x10]
	mov	rdi, qword ptr [r13]
	shl	rsi, 3
	call	realloc
	mov	rdi, rax
	test	rdi, rdi
	je	.label_985
	mov	qword ptr [r13], rdi
	jmp	.label_987
.label_989:
	mov	rdi, qword ptr [r12 + 0x10]
	add	r12, 0x10
	mov	r13, r12
.label_987:
	test	rbx, rbx
	je	.label_992
	nop	dword ptr [rax]
.label_983:
	mov	qword ptr [rdi], rbx
	add	rdi, 8
	mov	rbx, qword ptr [rbx + 0x10]
	test	rbx, rbx
	jne	.label_983
	mov	rdi, qword ptr [r13]
.label_992:
	mov	edx, 8
	mov	rsi, r14
	mov	rcx, r15
	call	qsort
	mov	r8, qword ptr [r13]
	mov	rbx, qword ptr [r8]
	cmp	r14, 1
	mov	rcx, rbx
	je	.label_988
	mov	rcx, qword ptr [r8 + 8]
	mov	qword ptr [rbx + 0x10], rcx
	mov	rcx, r14
	add	rcx, -2
	je	.label_990
	lea	rsi, [r8 + 8]
	lea	rdx, [r14 - 3]
	and	ecx, 3
	cmp	rdx, 3
	jae	.label_984
	mov	rdx, rsi
	jmp	.label_986
.label_984:
	lea	rdi, [rcx + 2]
	sub	rdi, r14
	nop	dword ptr [rax + rax]
.label_991:
	mov	rdx, qword ptr [rsi]
	mov	rax, qword ptr [rsi + 8]
	mov	qword ptr [rdx + 0x10], rax
	mov	rax, qword ptr [rsi + 8]
	mov	rdx, qword ptr [rsi + 0x10]
	mov	qword ptr [rax + 0x10], rdx
	mov	rax, qword ptr [rsi + 0x10]
	mov	rdx, qword ptr [rsi + 0x18]
	mov	qword ptr [rax + 0x10], rdx
	lea	rdx, [rsi + 0x20]
	mov	rax, qword ptr [rsi + 0x18]
	mov	rsi, qword ptr [rsi + 0x20]
	mov	qword ptr [rax + 0x10], rsi
	add	rdi, 4
	mov	rsi, rdx
	jne	.label_991
.label_986:
	test	rcx, rcx
	je	.label_990
	add	rdx, 8
	neg	rcx
	nop	dword ptr [rax + rax]
.label_982:
	mov	rax, qword ptr [rdx - 8]
	mov	rsi, qword ptr [rdx]
	mov	qword ptr [rax + 0x10], rsi
	add	rdx, 8
	inc	rcx
	jne	.label_982
.label_990:
	mov	rcx, qword ptr [r8 + r14*8 - 8]
.label_988:
	mov	qword ptr [rcx + 0x10], 0
.label_981:
	mov	rax, rbx
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	ret	
	.section	.text
	.align	16
	#Procedure 0x409eee
	.globl sub_409eee
	.type sub_409eee, @function
sub_409eee:

	nop	
	.section	.text
	.align	16
	#Procedure 0x409ef0

	.globl rpl_fflush
	.type rpl_fflush, @function
rpl_fflush:
	push	rbx
	mov	rbx, rdi
	test	rbx, rbx
	je	.label_993
	mov	rdi, rbx
	call	__freading
	test	eax, eax
	je	.label_993
	test	byte ptr [rbx + 1], 1
	je	.label_993
	xor	esi, esi
	mov	edx, 1
	mov	rdi, rbx
	call	rpl_fseeko
.label_993:
	mov	rdi, rbx
	pop	rbx
	jmp	fflush
	.section	.text
	.align	16
	#Procedure 0x409f23
	.globl sub_409f23
	.type sub_409f23, @function
sub_409f23:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x409f30

	.globl set_program_name
	.type set_program_name, @function
set_program_name:
	push	r14
	push	rbx
	push	rax
	mov	rbx, rdi
	test	rbx, rbx
	je	.label_996
	mov	esi, 0x2f
	mov	rdi, rbx
	call	strrchr
	test	rax, rax
	lea	r14, [rax + 1]
	cmove	r14, rbx
	mov	rax, r14
	sub	rax, rbx
	cmp	rax, 7
	jl	.label_995
	lea	rdi, [r14 - 7]
	mov	esi, OFFSET FLAT:label_994
	mov	edx, 7
	call	strncmp
	test	eax, eax
	jne	.label_995
	mov	esi, OFFSET FLAT:label_998
	mov	edx, 3
	mov	rdi, r14
	call	strncmp
	test	eax, eax
	jne	.label_999
	add	r14, 3
	mov	qword ptr [rip + __progname],  r14
.label_999:
	mov	rbx, r14
.label_995:
	mov	qword ptr [rip + program_name],  rbx
	mov	qword ptr [rip + __progname_full],  rbx
	add	rsp, 8
	pop	rbx
	pop	r14
	ret	
.label_996:
	mov	rcx, qword ptr [rip + stderr]
	mov	edi, OFFSET FLAT:label_997
	mov	esi, 0x37
	mov	edx, 1
	call	fwrite
	call	abort
	.section	.text
	.align	16
	#Procedure 0x409fd1
	.globl sub_409fd1
	.type sub_409fd1, @function
sub_409fd1:

	nop	word ptr cs:[rax + rax]
.label_1000:
	xor	eax, eax
	ret	
	.section	.text
	.align	16
	#Procedure 0x409fe3
	.globl sub_409fe3
	.type sub_409fe3, @function
sub_409fe3:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x409fec

	.globl AD_compare
	.type AD_compare, @function
AD_compare:
	mov	rax, qword ptr [rdi + 8]
	cmp	rax, qword ptr [rsi + 8]
	jne	.label_1000
	mov	rax, qword ptr [rdi]
	cmp	rax, qword ptr [rsi]
	sete	al
	ret	
	.section	.text
	.align	16
	#Procedure 0x40a000
	.globl close_stdout_set_ignore_EPIPE
	.type close_stdout_set_ignore_EPIPE, @function
close_stdout_set_ignore_EPIPE:

	mov	byte ptr [rip + ignore_EPIPE],  dil
	ret	
	.section	.text
	.align	16
	#Procedure 0x40a008
	.globl sub_40a008
	.type sub_40a008, @function
sub_40a008:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40a010

	.globl i_ring_push
	.type i_ring_push, @function
i_ring_push:
	movzx	ecx, byte ptr [rdi + 0x1c]
	xor	ecx, 1
	add	ecx, dword ptr [rdi + 0x14]
	mov	edx, ecx
	and	edx, 3
	mov	eax, dword ptr [rdi + rdx*4]
	mov	dword ptr [rdi + rdx*4], esi
	mov	dword ptr [rdi + 0x14], edx
	cmp	edx, dword ptr [rdi + 0x18]
	jne	.label_1001
	mov	dl, byte ptr [rdi + 0x1c]
	xor	dl, 1
	movzx	edx, dl
	add	edx, ecx
	and	edx, 3
	mov	dword ptr [rdi + 0x18], edx
.label_1001:
	mov	byte ptr [rdi + 0x1c], 0
	ret	
	.section	.text
	.align	16
	#Procedure 0x40a043
	.globl sub_40a043
	.type sub_40a043, @function
sub_40a043:

	nop	word ptr cs:[rax + rax]
.label_1003:
	mov	ebx, 0xffffffff
	test	eax, eax
	jne	.label_1002
	call	__errno_location
	mov	dword ptr [rax], 0
.label_1002:
	mov	eax, ebx
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40a06b

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
	jne	.label_1003
	test	eax, eax
	sete	cl
	neg	eax
	sbb	ebx, ebx
	test	r14, r14
	jne	.label_1002
	test	cl, cl
	jne	.label_1002
	call	__errno_location
	xor	ecx, ecx
	cmp	dword ptr [rax], 9
	mov	ebx, 0xffffffff
	cmove	ebx, ecx
	jmp	.label_1002
	.section	.text
	.align	16
	#Procedure 0x40a0b0
	.globl quotearg_char_mem
	.type quotearg_char_mem, @function
quotearg_char_mem:

	sub	rsp, 0x38
	mov	ecx, edx
	mov	r8, rsi
	mov	rdx, rdi
	mov	rsi, qword ptr [rip + label_82]
	mov	qword ptr [rsp + 0x30], rsi
	movups	xmm0, xmmword ptr [rip + label_83]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0, xmmword ptr [rip + label_84]
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
	#Procedure 0x40a11e
	.globl sub_40a11e
	.type sub_40a11e, @function
sub_40a11e:

	nop	
	.section	.text
	.align	16
	#Procedure 0x40a120

	.globl i_ring_pop
	.type i_ring_pop, @function
i_ring_pop:
	cmp	byte ptr [rdi + 0x1c], 0
	jne	.label_1004
	mov	ecx, dword ptr [rdi + 0x10]
	mov	edx, dword ptr [rdi + 0x14]
	mov	eax, dword ptr [rdi + rdx*4]
	mov	dword ptr [rdi + rdx*4], ecx
	mov	ecx, dword ptr [rdi + 0x14]
	cmp	ecx, dword ptr [rdi + 0x18]
	jne	.label_1005
	mov	byte ptr [rdi + 0x1c], 1
	ret	
.label_1004:
	push	rax
	call	abort
	.section	.text
	.align	16
	#Procedure 0x40a145
	.globl sub_40a145
	.type sub_40a145, @function
sub_40a145:

	nop	
.label_1005:
	add	ecx, 3
	and	ecx, 3
	mov	dword ptr [rdi + 0x14], ecx
	ret	
	.section	.text
	.align	16
	#Procedure 0x40a150
	.globl emit_bug_reporting_address
	.type emit_bug_reporting_address, @function
emit_bug_reporting_address:

	push	rax
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_1006
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:label_1007
	xor	eax, eax
	mov	rsi, rcx
	call	__printf_chk
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_1009
	mov	edx, 5
	call	dcgettext
	mov	rsi, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:label_120
	mov	ecx, OFFSET FLAT:label_411
	xor	eax, eax
	call	__printf_chk
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_1008
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	pop	rax
	jmp	fputs_unlocked
	.section	.text
	.align	16
	#Procedure 0x40a1c4
	.globl sub_40a1c4
	.type sub_40a1c4, @function
sub_40a1c4:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40a235
	.globl sub_40a235
	.type sub_40a235, @function
sub_40a235:

	nop	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40a242
	.globl sub_40a242
	.type sub_40a242, @function
sub_40a242:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40a266
	.globl sub_40a266
	.type sub_40a266, @function
sub_40a266:

	nop	word ptr cs:[rax + rax]
