	.section	.text
	.align	32
	#Procedure 0x4027e9
	.globl sub_4027e9
	.type sub_4027e9, @function
sub_4027e9:

	hlt	
	.section	.text
	.align	32
	#Procedure 0x4027ea
	.globl sub_4027ea
	.type sub_4027ea, @function
sub_4027ea:

	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x402822
	.globl sub_402822
	.type sub_402822, @function
sub_402822:

	nop	dword ptr [rax]
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40286a
	.globl sub_40286a
	.type sub_40286a, @function
sub_40286a:

	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40288c
	.globl sub_40288c
	.type sub_40288c, @function
sub_40288c:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x40289d
	.globl sub_40289d
	.type sub_40289d, @function
sub_40289d:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x4028b6
	.globl sub_4028b6
	.type sub_4028b6, @function
sub_4028b6:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4028c0

	.globl memcpy_uppcase
	.type memcpy_uppcase, @function
memcpy_uppcase:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	qword ptr [rbp - 0x18], rdx
.label_10:
	mov	rax, qword ptr [rbp - 0x18]
	mov	rcx, rax
	add	rcx, -1
	mov	qword ptr [rbp - 0x18], rcx
	cmp	rax, 0
	jbe	.label_9
	mov	rax, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rbp - 0x10]
	movzx	edi, byte ptr [rcx + rax]
	call	toupper
	mov	dl, al
	mov	rcx, qword ptr [rbp - 0x18]
	mov	rsi, qword ptr [rbp - 8]
	mov	byte ptr [rsi + rcx], dl
	jmp	.label_10
.label_9:
	mov	rax, qword ptr [rbp - 8]
	add	rsp, 0x20
	pop	rbp
	ret	
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
	.globl c_isupper
	.type c_isupper, @function
c_isupper:

	push	rbp
	mov	rbp, rsp
	mov	dword ptr [rbp - 8], edi
	add	edi, -0x41
	sub	edi, 0x19
	mov	dword ptr [rbp - 0xc], edi
	ja	.label_11
	jmp	.label_13
.label_13:
	mov	byte ptr [rbp - 1], 1
	jmp	.label_12
.label_11:
	mov	byte ptr [rbp - 1], 0
.label_12:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x402952
	.globl sub_402952
	.type sub_402952, @function
sub_402952:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x402960

	.globl rotr_sz
	.type rotr_sz, @function
rotr_sz:
	push	rbp
	mov	rbp, rsp
	mov	eax, 0x40
	mov	ecx, eax
	mov	qword ptr [rbp - 8], rdi
	mov	dword ptr [rbp - 0xc], esi
	mov	rdi, qword ptr [rbp - 8]
	mov	eax, dword ptr [rbp - 0xc]
	mov	edx, eax
	mov	qword ptr [rbp - 0x18], rcx
	mov	rcx, rdx
	shr	rdi, cl
	mov	rdx, qword ptr [rbp - 8]
	movsxd	r8, dword ptr [rbp - 0xc]
	mov	r9, qword ptr [rbp - 0x18]
	sub	r9, r8
	mov	rcx, r9
	shl	rdx, cl
	or	rdi, rdx
	mov	rax, rdi
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x4029a2
	.globl sub_4029a2
	.type sub_4029a2, @function
sub_4029a2:

	nop	word ptr cs:[rax + rax]
.label_17:
	mov	qword ptr [rbp - 8], 0
.label_21:
	mov	rax, qword ptr [rbp - 8]
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x4029be
	.globl sub_4029be
	.type sub_4029be, @function
sub_4029be:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x4029c5

	.globl first_percent_b
	.type first_percent_b, @function
first_percent_b:
	push	rbp
	mov	rbp, rsp
	mov	qword ptr [rbp - 0x10], rdi
.label_22:
	mov	rax, qword ptr [rbp - 0x10]
	cmp	byte ptr [rax], 0
	je	.label_17
	mov	rax, qword ptr [rbp - 0x10]
	movsx	ecx, byte ptr [rax]
	cmp	ecx, 0x25
	jne	.label_18
	mov	rax, qword ptr [rbp - 0x10]
	movsx	ecx, byte ptr [rax + 1]
	mov	edx, ecx
	sub	edx, 0x25
	mov	dword ptr [rbp - 0x14], ecx
	mov	dword ptr [rbp - 0x18], edx
	je	.label_16
	jmp	.label_14
.label_14:
	mov	eax, dword ptr [rbp - 0x14]
	sub	eax, 0x62
	mov	dword ptr [rbp - 0x1c], eax
	jne	.label_15
	jmp	.label_19
.label_19:
	mov	rax, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 8], rax
	jmp	.label_21
.label_16:
	mov	rax, qword ptr [rbp - 0x10]
	add	rax, 1
	mov	qword ptr [rbp - 0x10], rax
.label_15:
	jmp	.label_18
.label_18:
	jmp	.label_20
.label_20:
	mov	rax, qword ptr [rbp - 0x10]
	add	rax, 1
	mov	qword ptr [rbp - 0x10], rax
	jmp	.label_22
.label_89:
	cmp	qword ptr [rbp - 0x10], 0
	jne	.label_91
	call	__errno_location
	mov	dword ptr [rax], 0x16
	mov	qword ptr [rbp - 8], 0
	jmp	.label_33
.label_92:
	mov	rax, qword ptr [rbp - 0x28]
	mov	qword ptr [rbp - 0x48], rax
.label_87:
	mov	rax, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 0x38], rax
	mov	qword ptr [rbp - 0x70], 0
	jmp	.label_95
.label_43:
	jmp	.label_50
.label_50:
	jmp	.label_59
.label_59:
	jmp	.label_68
.label_68:
	jmp	.label_70
.label_70:
	jmp	.label_46
.label_46:
	mov	rax, qword ptr [rbp - 0x40]
	mov	qword ptr [rbp - 0x38], rax
	jmp	.label_72
.label_53:
	mov	rax, qword ptr [rbp - 0x40]
	mov	rcx, qword ptr [rbp - 0x38]
	sub	rax, rcx
	cmp	rax, 1
	jne	.label_56
	mov	rax, qword ptr [rbp - 0x38]
	movsx	ecx, byte ptr [rax]
	cmp	ecx, 0x2e
	jne	.label_56
	jmp	.label_68
.label_67:
	jmp	.label_23
.label_23:
	jmp	.label_82
.label_82:
	mov	rdi, qword ptr [rbp - 0x120]
	call	free
	jmp	.label_50
.label_58:
	mov	rdi, qword ptr [rbp - 0x120]
	call	strlen
	mov	qword ptr [rbp - 0x128], rax
	mov	rdi, qword ptr [rbp - 0x40]
	call	strlen
	mov	qword ptr [rbp - 0x130], rax
	cmp	qword ptr [rbp - 0x50], 0
	jne	.label_32
	mov	rax, qword ptr [rbp - 0x128]
	add	rax, qword ptr [rbp - 0x130]
	add	rax, 1
	cmp	rax, 0x1000
	jbe	.label_41
	mov	rax, qword ptr [rbp - 0x128]
	add	rax, qword ptr [rbp - 0x130]
	add	rax, 1
	mov	qword ptr [rbp - 0x158], rax
	jmp	.label_51
.label_41:
	mov	eax, 0x1000
	mov	ecx, eax
	mov	qword ptr [rbp - 0x158], rcx
	jmp	.label_51
.label_51:
	mov	rax, qword ptr [rbp - 0x158]
	mov	qword ptr [rbp - 0x50], rax
	mov	rdi, qword ptr [rbp - 0x50]
	call	xmalloc
	mov	qword ptr [rbp - 0x30], rax
	jmp	.label_48
.label_71:
	test	byte ptr [rbp - 0x61], 1
	je	.label_65
	lea	rsi, [rbp - 0x108]
	mov	rdi, qword ptr [rbp - 0x20]
	call	stat
	mov	dword ptr [rbp - 0x14c], eax
	jmp	.label_73
.label_94:
	mov	eax, 0x1000
	mov	edi, eax
	call	xmalloc
	mov	qword ptr [rbp - 0x20], rax
	mov	rax, qword ptr [rbp - 0x20]
	add	rax, 0x1000
	mov	qword ptr [rbp - 0x48], rax
	mov	rax, qword ptr [rbp - 0x20]
	mov	qword ptr [rbp - 0x28], rax
	cmp	qword ptr [rbp - 0x70], 0
	je	.label_88
	mov	rdi, qword ptr [rbp - 0x20]
	mov	rsi, qword ptr [rbp - 0x10]
	mov	rdx, qword ptr [rbp - 0x70]
	call	memcpy
	mov	rdx, qword ptr [rbp - 0x70]
	add	rdx, qword ptr [rbp - 0x28]
	mov	qword ptr [rbp - 0x28], rdx
.label_88:
	mov	rax, qword ptr [rbp - 0x28]
	mov	rcx, rax
	add	rcx, 1
	mov	qword ptr [rbp - 0x28], rcx
	mov	byte ptr [rax], 0x2f
	mov	rax, qword ptr [rbp - 0x10]
	add	rax, qword ptr [rbp - 0x70]
	mov	qword ptr [rbp - 0x38], rax
.label_95:
	jmp	.label_72
.label_72:
	mov	rax, qword ptr [rbp - 0x38]
	cmp	byte ptr [rax], 0
	je	.label_40
	jmp	.label_49
.label_49:
	mov	rax, qword ptr [rbp - 0x38]
	movsx	ecx, byte ptr [rax]
	cmp	ecx, 0x2f
	jne	.label_61
	mov	rax, qword ptr [rbp - 0x38]
	add	rax, 1
	mov	qword ptr [rbp - 0x38], rax
	jmp	.label_49
.label_64:
	call	__errno_location
	mov	ecx, dword ptr [rax]
	mov	dword ptr [rbp - 0x5c], ecx
	jmp	.label_39
.label_38:
	mov	rdi, qword ptr [rbp - 0x20]
	mov	rsi, qword ptr [rbp - 0xd8]
	call	areadlink_with_size
	mov	qword ptr [rbp - 0x120], rax
	cmp	qword ptr [rbp - 0x120], 0
	jne	.label_58
	cmp	dword ptr [rbp - 0x14], 2
	jne	.label_64
	call	__errno_location
	cmp	dword ptr [rax], 0xc
	je	.label_64
	jmp	.label_46
.label_93:
	mov	qword ptr [rbp - 0x70], 0
	mov	rax, qword ptr [rbp - 0x10]
	movsx	ecx, byte ptr [rax]
	cmp	ecx, 0x2f
	je	.label_94
	call	xgetcwd
	mov	qword ptr [rbp - 0x20], rax
	cmp	qword ptr [rbp - 0x20], 0
	jne	.label_90
	mov	qword ptr [rbp - 8], 0
	jmp	.label_33
.label_31:
	mov	dword ptr [rbp - 0xf0], 0
.label_26:
	jmp	.label_81
.label_81:
	mov	eax, dword ptr [rbp - 0xf0]
	and	eax, 0xf000
	cmp	eax, 0xa000
	jne	.label_79
	lea	rdi, [rbp - 0x58]
	lea	rdx, [rbp - 0x108]
	mov	rsi, qword ptr [rbp - 0x10]
	call	seen_triple
	test	al, 1
	jne	.label_36
	jmp	.label_38
.label_36:
	cmp	dword ptr [rbp - 0x14], 2
	jne	.label_42
	jmp	.label_46
.label_63:
	mov	rax, qword ptr [rbp - 0x118]
	add	rax, 0x1000
	mov	qword ptr [rbp - 0x118], rax
.label_80:
	mov	rdi, qword ptr [rbp - 0x20]
	mov	rsi, qword ptr [rbp - 0x118]
	call	xrealloc
	mov	qword ptr [rbp - 0x20], rax
	mov	rax, qword ptr [rbp - 0x20]
	add	rax, qword ptr [rbp - 0x118]
	mov	qword ptr [rbp - 0x48], rax
	mov	rax, qword ptr [rbp - 0x20]
	add	rax, qword ptr [rbp - 0x110]
	mov	qword ptr [rbp - 0x28], rax
.label_55:
	mov	rax, qword ptr [rbp - 0x28]
	mov	rsi, qword ptr [rbp - 0x38]
	mov	rcx, qword ptr [rbp - 0x40]
	mov	rdx, qword ptr [rbp - 0x38]
	sub	rcx, rdx
	mov	rdi, rax
	mov	rdx, rcx
	mov	qword ptr [rbp - 0x148], rax
	call	memcpy
	mov	rax, qword ptr [rbp - 0x148]
	mov	qword ptr [rbp - 0x28], rax
	mov	rcx, qword ptr [rbp - 0x40]
	mov	rdx, qword ptr [rbp - 0x38]
	sub	rcx, rdx
	add	rcx, qword ptr [rbp - 0x28]
	mov	qword ptr [rbp - 0x28], rcx
	mov	rcx, qword ptr [rbp - 0x28]
	mov	byte ptr [rcx], 0
	test	byte ptr [rbp - 0x61], 1
	je	.label_71
	cmp	dword ptr [rbp - 0x14], 2
	jne	.label_71
	mov	dword ptr [rbp - 0xf0], 0
	jmp	.label_81
.label_54:
	jmp	.label_29
.label_29:
	jmp	.label_59
.label_32:
	mov	rax, qword ptr [rbp - 0x128]
	add	rax, qword ptr [rbp - 0x130]
	add	rax, 1
	cmp	rax, qword ptr [rbp - 0x50]
	jbe	.label_85
	mov	rax, qword ptr [rbp - 0x128]
	add	rax, qword ptr [rbp - 0x130]
	add	rax, 1
	mov	qword ptr [rbp - 0x50], rax
	mov	rdi, qword ptr [rbp - 0x30]
	mov	rsi, qword ptr [rbp - 0x50]
	call	xrealloc
	mov	qword ptr [rbp - 0x30], rax
.label_85:
	jmp	.label_48
.label_48:
	mov	rax, qword ptr [rbp - 0x128]
	add	rax, qword ptr [rbp - 0x30]
	mov	rsi, qword ptr [rbp - 0x40]
	mov	rcx, qword ptr [rbp - 0x130]
	add	rcx, 1
	mov	rdi, rax
	mov	rdx, rcx
	call	memmove
	mov	rcx, qword ptr [rbp - 0x30]
	mov	rsi, qword ptr [rbp - 0x120]
	mov	rdx, qword ptr [rbp - 0x128]
	mov	rdi, rcx
	mov	qword ptr [rbp - 0x160], rax
	mov	qword ptr [rbp - 0x168], rcx
	call	memcpy
	mov	rax, qword ptr [rbp - 0x168]
	mov	qword ptr [rbp - 0x40], rax
	mov	qword ptr [rbp - 0x10], rax
	mov	rcx, qword ptr [rbp - 0x120]
	movsx	r8d, byte ptr [rcx]
	cmp	r8d, 0x2f
	jne	.label_62
	mov	qword ptr [rbp - 0x138], 0
	cmp	qword ptr [rbp - 0x138], 0
	je	.label_74
	mov	rdi, qword ptr [rbp - 0x20]
	mov	rsi, qword ptr [rbp - 0x120]
	mov	rdx, qword ptr [rbp - 0x138]
	call	memcpy
.label_74:
	mov	rax, qword ptr [rbp - 0x20]
	add	rax, qword ptr [rbp - 0x138]
	mov	qword ptr [rbp - 0x28], rax
	mov	rax, qword ptr [rbp - 0x28]
	mov	rcx, rax
	add	rcx, 1
	mov	qword ptr [rbp - 0x28], rcx
	mov	byte ptr [rax], 0x2f
	mov	rax, qword ptr [rbp - 0x138]
	mov	qword ptr [rbp - 0x70], rax
	jmp	.label_82
.label_34:
	cmp	dword ptr [rbp - 0x14], 1
	jne	.label_31
	movabs	rsi, OFFSET FLAT:label_35
	mov	rdi, qword ptr [rbp - 0x40]
	call	strspn
	mov	rsi, qword ptr [rbp - 0x40]
	movsx	ecx, byte ptr [rsi + rax]
	cmp	ecx, 0
	jne	.label_44
	cmp	dword ptr [rbp - 0x5c], 2
	je	.label_47
.label_44:
	jmp	.label_39
.label_28:
	mov	rax, qword ptr [rbp - 0x28]
	movsx	ecx, byte ptr [rax - 1]
	cmp	ecx, 0x2f
	je	.label_86
	mov	rax, qword ptr [rbp - 0x28]
	mov	rcx, rax
	add	rcx, 1
	mov	qword ptr [rbp - 0x28], rcx
	mov	byte ptr [rax], 0x2f
.label_86:
	mov	rax, qword ptr [rbp - 0x28]
	mov	rcx, qword ptr [rbp - 0x40]
	mov	rdx, qword ptr [rbp - 0x38]
	sub	rcx, rdx
	add	rax, rcx
	cmp	rax, qword ptr [rbp - 0x48]
	jb	.label_55
	mov	rax, qword ptr [rbp - 0x28]
	mov	rcx, qword ptr [rbp - 0x20]
	sub	rax, rcx
	mov	qword ptr [rbp - 0x110], rax
	mov	rax, qword ptr [rbp - 0x48]
	mov	rcx, qword ptr [rbp - 0x20]
	sub	rax, rcx
	mov	qword ptr [rbp - 0x118], rax
	mov	rax, qword ptr [rbp - 0x40]
	mov	rcx, qword ptr [rbp - 0x38]
	sub	rax, rcx
	add	rax, 1
	cmp	rax, 0x1000
	jle	.label_63
	mov	rax, qword ptr [rbp - 0x40]
	mov	rcx, qword ptr [rbp - 0x38]
	sub	rax, rcx
	add	rax, 1
	add	rax, qword ptr [rbp - 0x118]
	mov	qword ptr [rbp - 0x118], rax
	jmp	.label_80
.label_65:
	lea	rsi, [rbp - 0x108]
	mov	rdi, qword ptr [rbp - 0x20]
	call	lstat
	mov	dword ptr [rbp - 0x14c], eax
.label_73:
	mov	eax, dword ptr [rbp - 0x14c]
	cmp	eax, 0
	je	.label_26
	call	__errno_location
	mov	ecx, dword ptr [rax]
	mov	dword ptr [rbp - 0x5c], ecx
	cmp	dword ptr [rbp - 0x14], 0
	jne	.label_34
	jmp	.label_39
.label_79:
	mov	eax, dword ptr [rbp - 0xf0]
	and	eax, 0xf000
	cmp	eax, 0x4000
	je	.label_43
	mov	rax, qword ptr [rbp - 0x40]
	movsx	ecx, byte ptr [rax]
	cmp	ecx, 0
	je	.label_43
	cmp	dword ptr [rbp - 0x14], 2
	je	.label_43
	mov	dword ptr [rbp - 0x5c], 0x14
	jmp	.label_39
.label_24:
	mov	rax, qword ptr [rbp - 0x40]
	mov	rcx, qword ptr [rbp - 0x38]
	sub	rax, rcx
	cmp	rax, 0
	jne	.label_53
	jmp	.label_40
.label_39:
	mov	rdi, qword ptr [rbp - 0x30]
	call	free
	mov	rdi, qword ptr [rbp - 0x20]
	call	free
	cmp	qword ptr [rbp - 0x58], 0
	je	.label_66
	mov	rdi, qword ptr [rbp - 0x58]
	call	hash_free
.label_66:
	mov	eax, dword ptr [rbp - 0x5c]
	mov	dword ptr [rbp - 0x170], eax
	call	__errno_location
	mov	ecx, dword ptr [rbp - 0x170]
	mov	dword ptr [rax], ecx
	mov	qword ptr [rbp - 8], 0
.label_33:
	mov	rax, qword ptr [rbp - 8]
	add	rsp, 0x170
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x4030d6
	.globl sub_4030d6
	.type sub_4030d6, @function
sub_4030d6:

	nop	
.label_56:
	mov	rax, qword ptr [rbp - 0x40]
	mov	rcx, qword ptr [rbp - 0x38]
	sub	rax, rcx
	cmp	rax, 2
	jne	.label_28
	mov	rax, qword ptr [rbp - 0x38]
	movsx	ecx, byte ptr [rax]
	cmp	ecx, 0x2e
	jne	.label_28
	mov	rax, qword ptr [rbp - 0x38]
	movsx	ecx, byte ptr [rax + 1]
	cmp	ecx, 0x2e
	jne	.label_28
	mov	rax, qword ptr [rbp - 0x28]
	mov	rcx, qword ptr [rbp - 0x20]
	add	rcx, qword ptr [rbp - 0x70]
	add	rcx, 1
	cmp	rax, rcx
	jbe	.label_29
	mov	rax, qword ptr [rbp - 0x28]
	add	rax, -1
	mov	qword ptr [rbp - 0x28], rax
.label_57:
	xor	eax, eax
	mov	cl, al
	mov	rdx, qword ptr [rbp - 0x28]
	cmp	rdx, qword ptr [rbp - 0x20]
	mov	byte ptr [rbp - 0x13a], cl
	jbe	.label_45
	mov	rax, qword ptr [rbp - 0x28]
	movsx	ecx, byte ptr [rax - 1]
	cmp	ecx, 0x2f
	sete	dl
	xor	dl, 0xff
	mov	byte ptr [rbp - 0x13a], dl
.label_45:
	mov	al, byte ptr [rbp - 0x13a]
	test	al, 1
	jne	.label_83
	jmp	.label_54
.label_83:
	jmp	.label_75
.label_75:
	mov	rax, qword ptr [rbp - 0x28]
	add	rax, -1
	mov	qword ptr [rbp - 0x28], rax
	jmp	.label_57
	.section	.text
	.align	32
	#Procedure 0x40318a

	.globl canonicalize_filename_mode
	.type canonicalize_filename_mode, @function
canonicalize_filename_mode:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x170
	mov	qword ptr [rbp - 0x10], rdi
	mov	dword ptr [rbp - 0x14], esi
	mov	qword ptr [rbp - 0x30], 0
	mov	qword ptr [rbp - 0x50], 0
	mov	qword ptr [rbp - 0x58], 0
	mov	esi, dword ptr [rbp - 0x14]
	and	esi, 0xfffffffc
	mov	dword ptr [rbp - 0x60], esi
	mov	esi, dword ptr [rbp - 0x60]
	and	esi, 4
	cmp	esi, 0
	setne	al
	and	al, 1
	mov	byte ptr [rbp - 0x61], al
	mov	esi, dword ptr [rbp - 0x14]
	and	esi, 3
	mov	dword ptr [rbp - 0x14], esi
	mov	esi, dword ptr [rbp - 0x14]
	mov	ecx, dword ptr [rbp - 0x14]
	sub	ecx, 1
	and	esi, ecx
	cmp	esi, 0
	je	.label_89
	call	__errno_location
	mov	dword ptr [rax], 0x16
	mov	qword ptr [rbp - 8], 0
	jmp	.label_33
.label_62:
	mov	rax, qword ptr [rbp - 0x28]
	mov	rcx, qword ptr [rbp - 0x20]
	add	rcx, qword ptr [rbp - 0x70]
	add	rcx, 1
	cmp	rax, rcx
	jbe	.label_23
	mov	rax, qword ptr [rbp - 0x28]
	add	rax, -1
	mov	qword ptr [rbp - 0x28], rax
.label_69:
	xor	eax, eax
	mov	cl, al
	mov	rdx, qword ptr [rbp - 0x28]
	cmp	rdx, qword ptr [rbp - 0x20]
	mov	byte ptr [rbp - 0x169], cl
	jbe	.label_37
	mov	rax, qword ptr [rbp - 0x28]
	movsx	ecx, byte ptr [rax - 1]
	cmp	ecx, 0x2f
	sete	dl
	xor	dl, 0xff
	mov	byte ptr [rbp - 0x169], dl
.label_37:
	mov	al, byte ptr [rbp - 0x169]
	test	al, 1
	jne	.label_78
	jmp	.label_67
.label_78:
	jmp	.label_52
.label_52:
	mov	rax, qword ptr [rbp - 0x28]
	add	rax, -1
	mov	qword ptr [rbp - 0x28], rax
	jmp	.label_69
.label_42:
	mov	dword ptr [rbp - 0x5c], 0x28
	jmp	.label_39
.label_40:
	mov	rax, qword ptr [rbp - 0x28]
	mov	rcx, qword ptr [rbp - 0x20]
	add	rcx, qword ptr [rbp - 0x70]
	add	rcx, 1
	cmp	rax, rcx
	jbe	.label_60
	mov	rax, qword ptr [rbp - 0x28]
	movsx	ecx, byte ptr [rax - 1]
	cmp	ecx, 0x2f
	jne	.label_60
	mov	rax, qword ptr [rbp - 0x28]
	add	rax, -1
	mov	qword ptr [rbp - 0x28], rax
.label_60:
	mov	rax, qword ptr [rbp - 0x28]
	mov	byte ptr [rax], 0
	mov	rax, qword ptr [rbp - 0x48]
	mov	rcx, qword ptr [rbp - 0x28]
	add	rcx, 1
	cmp	rax, rcx
	je	.label_76
	mov	rdi, qword ptr [rbp - 0x20]
	mov	rax, qword ptr [rbp - 0x28]
	mov	rcx, qword ptr [rbp - 0x20]
	sub	rax, rcx
	add	rax, 1
	mov	rsi, rax
	call	xrealloc
	mov	qword ptr [rbp - 0x20], rax
.label_76:
	mov	rdi, qword ptr [rbp - 0x30]
	call	free
	cmp	qword ptr [rbp - 0x58], 0
	je	.label_25
	mov	rdi, qword ptr [rbp - 0x58]
	call	hash_free
.label_25:
	mov	rax, qword ptr [rbp - 0x20]
	mov	qword ptr [rbp - 8], rax
	jmp	.label_33
.label_91:
	mov	rax, qword ptr [rbp - 0x10]
	movsx	ecx, byte ptr [rax]
	cmp	ecx, 0
	jne	.label_93
	call	__errno_location
	mov	dword ptr [rax], 2
	mov	qword ptr [rbp - 8], 0
	jmp	.label_33
.label_90:
	xor	esi, esi
	mov	rdi, qword ptr [rbp - 0x20]
	call	strchr
	mov	qword ptr [rbp - 0x28], rax
	mov	rax, qword ptr [rbp - 0x28]
	mov	rdi, qword ptr [rbp - 0x20]
	sub	rax, rdi
	cmp	rax, 0x1000
	jge	.label_92
	mov	eax, 0x1000
	mov	esi, eax
	mov	rdi, qword ptr [rbp - 0x20]
	call	xrealloc
	mov	qword ptr [rbp - 0x78], rax
	mov	rax, qword ptr [rbp - 0x78]
	mov	rsi, qword ptr [rbp - 0x28]
	mov	rdi, qword ptr [rbp - 0x20]
	sub	rsi, rdi
	add	rax, rsi
	mov	qword ptr [rbp - 0x28], rax
	mov	rax, qword ptr [rbp - 0x78]
	mov	qword ptr [rbp - 0x20], rax
	mov	rax, qword ptr [rbp - 0x20]
	add	rax, 0x1000
	mov	qword ptr [rbp - 0x48], rax
	jmp	.label_87
.label_47:
	jmp	.label_46
.label_61:
	mov	rax, qword ptr [rbp - 0x38]
	mov	qword ptr [rbp - 0x40], rax
.label_30:
	xor	eax, eax
	mov	cl, al
	mov	rdx, qword ptr [rbp - 0x40]
	movsx	eax, byte ptr [rdx]
	cmp	eax, 0
	mov	byte ptr [rbp - 0x139], cl
	je	.label_77
	mov	rax, qword ptr [rbp - 0x40]
	movsx	ecx, byte ptr [rax]
	cmp	ecx, 0x2f
	sete	dl
	xor	dl, 0xff
	mov	byte ptr [rbp - 0x139], dl
.label_77:
	mov	al, byte ptr [rbp - 0x139]
	test	al, 1
	jne	.label_84
	jmp	.label_24
.label_84:
	jmp	.label_27
.label_27:
	mov	rax, qword ptr [rbp - 0x40]
	add	rax, 1
	mov	qword ptr [rbp - 0x40], rax
	jmp	.label_30
	.section	.text
	.align	32
	#Procedure 0x403420

	.globl clear_files
	.type clear_files, @function
clear_files:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	mov	qword ptr [rbp - 8], 0
.label_97:
	mov	rax, qword ptr [rbp - 8]
	cmp	rax,  qword ptr [word ptr [cwd_n_used]]
	jae	.label_96
	mov	rax, qword ptr [rbp - 8]
	mov	rcx,  qword ptr [word ptr [sorted_file]]
	mov	rax, qword ptr [rcx + rax*8]
	mov	qword ptr [rbp - 0x10], rax
	mov	rdi, qword ptr [rbp - 0x10]
	call	free_ent
	mov	rax, qword ptr [rbp - 8]
	add	rax, 1
	mov	qword ptr [rbp - 8], rax
	jmp	.label_97
.label_96:
	mov	qword ptr [word ptr [cwd_n_used]],  0
	mov	byte ptr [byte ptr [cwd_some_quoted]],  0
	mov	byte ptr [byte ptr [any_has_acl]],  0
	mov	dword ptr [dword ptr [inode_number_width]],  0
	mov	dword ptr [dword ptr [block_size_width]],  0
	mov	dword ptr [dword ptr [nlink_width]],  0
	mov	dword ptr [dword ptr [owner_width]],  0
	mov	dword ptr [dword ptr [group_width]],  0
	mov	dword ptr [dword ptr [author_width]],  0
	mov	dword ptr [dword ptr [scontext_width]],  0
	mov	dword ptr [dword ptr [major_device_number_width]],  0
	mov	dword ptr [dword ptr [minor_device_number_width]],  0
	mov	dword ptr [dword ptr [file_size_width]],  0
	add	rsp, 0x10
	pop	rbp
	ret	
.label_99:
	jmp	.label_98
.label_98:
	movabs	rdx, OFFSET FLAT:xstrcoll
	mov	rax, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	rdi, rax
	mov	rsi, rcx
	call	cmp_name
	mov	dword ptr [rbp - 4], eax
.label_100:
	mov	eax, dword ptr [rbp - 4]
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40352e
	.globl sub_40352e
	.type sub_40352e, @function
sub_40352e:

	nop	dword ptr [rax]
.label_101:
	test	byte ptr [rbp - 0x19], 1
	jne	.label_99
	test	byte ptr [rbp - 0x1a], 1
	je	.label_99
	mov	dword ptr [rbp - 4], 1
	jmp	.label_100
	.section	.text
	.align	32
	#Procedure 0x403551

	.globl xstrcoll_df_name
	.type xstrcoll_df_name, @function
xstrcoll_df_name:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 0x18], rsi
	mov	rax, qword ptr [rbp - 0x10]
	mov	rdi, rax
	call	is_linked_directory
	and	al, 1
	mov	byte ptr [rbp - 0x19], al
	mov	rdi, qword ptr [rbp - 0x18]
	call	is_linked_directory
	and	al, 1
	mov	byte ptr [rbp - 0x1a], al
	test	byte ptr [rbp - 0x19], 1
	je	.label_101
	test	byte ptr [rbp - 0x1a], 1
	jne	.label_101
	mov	dword ptr [rbp - 4], 0xffffffff
	jmp	.label_100
.label_103:
	movabs	rax, OFFSET FLAT:default_quoting_options
	mov	qword ptr [rbp - 0x20], rax
	jmp	.label_102
.label_102:
	mov	rax, qword ptr [rbp - 0x20]
	mov	ecx, 0x38
	mov	esi, ecx
	mov	rdi, rax
	call	xmemdup
	mov	qword ptr [rbp - 0x18], rax
	mov	ecx, dword ptr [rbp - 0xc]
	mov	dword ptr [rbp - 0x24], ecx
	call	__errno_location
	mov	ecx, dword ptr [rbp - 0x24]
	mov	dword ptr [rax], ecx
	mov	rax, qword ptr [rbp - 0x18]
	add	rsp, 0x30
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x4035e4
	.globl sub_4035e4
	.type sub_4035e4, @function
sub_4035e4:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4035f2

	.globl clone_quoting_options
	.type clone_quoting_options, @function
clone_quoting_options:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x30
	mov	qword ptr [rbp - 8], rdi
	call	__errno_location
	mov	ecx, dword ptr [rax]
	mov	dword ptr [rbp - 0xc], ecx
	cmp	qword ptr [rbp - 8], 0
	je	.label_103
	mov	rax, qword ptr [rbp - 8]
	mov	qword ptr [rbp - 0x20], rax
	jmp	.label_102
	.section	.text
	.align	32
	#Procedure 0x403620

	.globl quotearg_colon
	.type quotearg_colon, @function
quotearg_colon:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	mov	esi, 0x3a
	mov	qword ptr [rbp - 8], rdi
	mov	rdi, qword ptr [rbp - 8]
	call	quotearg_char
	add	rsp, 0x10
	pop	rbp
	ret	
.label_104:
	mov	edi, 0xa
	call	putchar_unlocked
	mov	dword ptr [rbp - 0x5c], eax
.label_108:
	add	rsp, 0x60
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x403653
	.globl sub_403653
	.type sub_403653, @function
sub_403653:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x403658

	.globl dired_dump_obstack
	.type dired_dump_obstack, @function
dired_dump_obstack:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x60
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	rsi, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 0x20], rsi
	mov	rsi, qword ptr [rbp - 0x20]
	mov	rsi, qword ptr [rsi + 0x18]
	mov	rdi, qword ptr [rbp - 0x20]
	mov	rdi, qword ptr [rdi + 0x10]
	sub	rsi, rdi
	mov	qword ptr [rbp - 0x28], rsi
	mov	rsi, qword ptr [rbp - 0x28]
	shr	rsi, 3
	mov	qword ptr [rbp - 0x18], rsi
	cmp	qword ptr [rbp - 0x18], 0
	jbe	.label_108
	mov	rax, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 0x38], rax
	mov	rax, qword ptr [rbp - 0x38]
	mov	rax, qword ptr [rax + 0x10]
	mov	qword ptr [rbp - 0x40], rax
	mov	rax, qword ptr [rbp - 0x38]
	mov	rax, qword ptr [rax + 0x18]
	cmp	rax, qword ptr [rbp - 0x40]
	jne	.label_109
	mov	rax, qword ptr [rbp - 0x38]
	mov	cl, byte ptr [rax + 0x50]
	and	cl, 0xfd
	or	cl, 2
	mov	byte ptr [rax + 0x50], cl
.label_109:
	xor	eax, eax
	mov	ecx, eax
	mov	rdx, qword ptr [rbp - 0x38]
	mov	rdx, qword ptr [rdx + 0x18]
	sub	rdx, 0
	mov	rsi, qword ptr [rbp - 0x38]
	add	rdx, qword ptr [rsi + 0x30]
	mov	rsi, qword ptr [rbp - 0x38]
	mov	rsi, qword ptr [rsi + 0x30]
	xor	rsi, 0xffffffffffffffff
	and	rdx, rsi
	add	rcx, rdx
	mov	rdx, qword ptr [rbp - 0x38]
	mov	qword ptr [rdx + 0x18], rcx
	mov	rcx, qword ptr [rbp - 0x38]
	mov	rcx, qword ptr [rcx + 0x18]
	mov	rdx, qword ptr [rbp - 0x38]
	mov	rdx, qword ptr [rdx + 8]
	sub	rcx, rdx
	mov	rdx, qword ptr [rbp - 0x38]
	mov	rdx, qword ptr [rdx + 0x20]
	mov	rsi, qword ptr [rbp - 0x38]
	mov	rsi, qword ptr [rsi + 8]
	sub	rdx, rsi
	cmp	rcx, rdx
	jbe	.label_107
	mov	rax, qword ptr [rbp - 0x38]
	mov	rax, qword ptr [rax + 0x20]
	mov	rcx, qword ptr [rbp - 0x38]
	mov	qword ptr [rcx + 0x18], rax
.label_107:
	mov	rax, qword ptr [rbp - 0x38]
	mov	rax, qword ptr [rax + 0x18]
	mov	rcx, qword ptr [rbp - 0x38]
	mov	qword ptr [rcx + 0x10], rax
	mov	rax, qword ptr [rbp - 0x40]
	mov	qword ptr [rbp - 0x48], rax
	mov	rax, qword ptr [rbp - 0x48]
	mov	qword ptr [rbp - 0x30], rax
	mov	rdi, qword ptr [rbp - 8]
	mov	rsi,  qword ptr [word ptr [stdout]]
	call	fputs_unlocked
	mov	qword ptr [rbp - 0x50], 0
	mov	dword ptr [rbp - 0x54], eax
.label_105:
	mov	rax, qword ptr [rbp - 0x50]
	cmp	rax, qword ptr [rbp - 0x18]
	jae	.label_104
	movabs	rdi, OFFSET FLAT:label_106
	mov	rax, qword ptr [rbp - 0x50]
	mov	rcx, qword ptr [rbp - 0x30]
	mov	rsi, qword ptr [rcx + rax*8]
	mov	al, 0
	call	printf
	mov	dword ptr [rbp - 0x58], eax
	mov	rax, qword ptr [rbp - 0x50]
	add	rax, 1
	mov	qword ptr [rbp - 0x50], rax
	jmp	.label_105
.label_207:
	test	byte ptr [rbp - 0x7a], 1
	je	.label_305
	mov	qword ptr [rbp - 0x90], 1
	movzx	eax, byte ptr [rbp - 0x7f]
	movsxd	rcx, eax
	mov	qword ptr [rbp - 0x128], rcx
	call	__ctype_b_loc
	mov	rax, qword ptr [rax]
	mov	rcx, qword ptr [rbp - 0x128]
	movzx	edx, word ptr [rax + rcx*2]
	and	edx, 0x4000
	cmp	edx, 0
	setne	sil
	and	sil, 1
	mov	byte ptr [rbp - 0x91], sil
	jmp	.label_201
.label_2886:
	test	byte ptr [rbp - 0x79], 1
	je	.label_117
	jmp	.label_122
.label_122:
	test	byte ptr [rbp - 0x7b], 1
	je	.label_123
	jmp	.label_115
.label_2881:
	mov	dword ptr [rbp - 0x34], 5
	mov	byte ptr [rbp - 0x7b], 1
.label_2880:
	test	byte ptr [rbp - 0x7b], 1
	jne	.label_124
	jmp	.label_127
.label_127:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_129
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x22
.label_129:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_124
.label_124:
	movabs	rax, OFFSET FLAT:label_138
	mov	byte ptr [rbp - 0x79], 1
	mov	qword ptr [rbp - 0x70], rax
	mov	qword ptr [rbp - 0x78], 1
	jmp	.label_139
.label_184:
	cmp	qword ptr [rbp - 0x20], 0
	jne	.label_148
	cmp	qword ptr [rbp - 0x68], 0
	je	.label_148
	mov	rax, qword ptr [rbp - 0x68]
	mov	qword ptr [rbp - 0x20], rax
	mov	qword ptr [rbp - 0x60], 0
	jmp	.label_154
.label_139:
	mov	qword ptr [rbp - 0x58], 0
.label_145:
	cmp	qword ptr [rbp - 0x30], -1
	jne	.label_163
	mov	rax, qword ptr [rbp - 0x58]
	mov	rcx, qword ptr [rbp - 0x28]
	movsx	edx, byte ptr [rcx + rax]
	cmp	edx, 0
	sete	sil
	and	sil, 1
	movzx	edx, sil
	mov	dword ptr [rbp - 0xd4], edx
	jmp	.label_165
.label_2896:
	mov	byte ptr [rbp - 0x7d], 1
	mov	byte ptr [rbp - 0x83], 1
	cmp	dword ptr [rbp - 0x34], 2
	jne	.label_170
	test	byte ptr [rbp - 0x7b], 1
	je	.label_176
	jmp	.label_115
.label_204:
	jmp	.label_200
.label_198:
	cmp	dword ptr [rbp - 0x34], 2
	jne	.label_179
	test	byte ptr [rbp - 0x7b], 1
	jne	.label_179
	test	byte ptr [rbp - 0x7d], 1
	je	.label_179
	test	byte ptr [rbp - 0x7e], 1
	je	.label_184
	mov	r8d, 5
	mov	rdi, qword ptr [rbp - 0x18]
	mov	rsi, qword ptr [rbp - 0x68]
	mov	rdx, qword ptr [rbp - 0x28]
	mov	rcx, qword ptr [rbp - 0x30]
	mov	r9d, dword ptr [rbp - 0x38]
	mov	rax, qword ptr [rbp - 0x40]
	mov	r10, qword ptr [rbp - 0x48]
	mov	r11, qword ptr [rbp - 0x50]
	mov	qword ptr [rsp], rax
	mov	qword ptr [rsp + 8], r10
	mov	qword ptr [rsp + 0x10], r11
	call	quotearg_buffer_restyled
	mov	qword ptr [rbp - 0x10], rax
	jmp	.label_113
.label_133:
	jmp	.label_164
.label_164:
	jmp	.label_199
.label_199:
	jmp	.label_200
.label_116:
	mov	rax, qword ptr [rbp - 0x30]
	mov	qword ptr [rbp - 0xe8], rax
.label_173:
	mov	rax, qword ptr [rbp - 0xe8]
	mov	rcx, qword ptr [rbp - 0xe0]
	cmp	rcx, rax
	ja	.label_202
	mov	rax, qword ptr [rbp - 0x28]
	add	rax, qword ptr [rbp - 0x58]
	mov	rsi, qword ptr [rbp - 0x70]
	mov	rdx, qword ptr [rbp - 0x78]
	mov	rdi, rax
	call	memcmp
	cmp	eax, 0
	jne	.label_202
	test	byte ptr [rbp - 0x7b], 1
	je	.label_215
	jmp	.label_115
.label_225:
	mov	eax, dword ptr [rbp - 0x38]
	and	eax, 4
	cmp	eax, 0
	je	.label_199
	mov	rax, qword ptr [rbp - 0x58]
	add	rax, 2
	cmp	rax, qword ptr [rbp - 0x30]
	jae	.label_199
	mov	rax, qword ptr [rbp - 0x58]
	mov	rcx, qword ptr [rbp - 0x28]
	movsx	edx, byte ptr [rcx + rax + 1]
	cmp	edx, 0x3f
	jne	.label_199
	mov	rax, qword ptr [rbp - 0x58]
	mov	rcx, qword ptr [rbp - 0x28]
	movsx	edx, byte ptr [rcx + rax + 2]
	mov	esi, edx
	sub	esi, 0x21
	mov	dword ptr [rbp - 0x108], edx
	mov	dword ptr [rbp - 0x10c], esi
	je	.label_227
	jmp	.label_235
.label_235:
	mov	eax, dword ptr [rbp - 0x108]
	add	eax, -0x27
	sub	eax, 3
	mov	dword ptr [rbp - 0x110], eax
	jb	.label_227
	jmp	.label_240
.label_240:
	mov	eax, dword ptr [rbp - 0x108]
	sub	eax, 0x2d
	mov	dword ptr [rbp - 0x114], eax
	je	.label_227
	jmp	.label_245
.label_245:
	mov	eax, dword ptr [rbp - 0x108]
	sub	eax, 0x2f
	mov	dword ptr [rbp - 0x118], eax
	je	.label_227
	jmp	.label_251
.label_251:
	mov	eax, dword ptr [rbp - 0x108]
	add	eax, -0x3c
	sub	eax, 2
	mov	dword ptr [rbp - 0x11c], eax
	ja	.label_133
	jmp	.label_227
.label_227:
	test	byte ptr [rbp - 0x7b], 1
	je	.label_254
	jmp	.label_115
.label_239:
	jmp	.label_160
.label_160:
	cmp	qword ptr [rbp - 0x58], 0
	je	.label_166
	jmp	.label_147
.label_234:
	cmp	qword ptr [rbp - 0xb0], -1
	jne	.label_262
	mov	byte ptr [rbp - 0x91], 0
	jmp	.label_230
.label_153:
	mov	byte ptr [rbp - 0x82], 1
	cmp	dword ptr [rbp - 0x34], 2
	jne	.label_267
	test	byte ptr [rbp - 0x7c], 1
	jne	.label_267
	jmp	.label_274
.label_274:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_277
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x27
.label_277:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_282
.label_282:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_283
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x24
.label_283:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_288
.label_288:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_290
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x27
.label_290:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	mov	byte ptr [rbp - 0x7c], 1
.label_267:
	jmp	.label_297
.label_297:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_299
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x5c
.label_299:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_303
.label_303:
	jmp	.label_119
.label_119:
	jmp	.label_307
.label_307:
	test	byte ptr [rbp - 0x7c], 1
	je	.label_308
	test	byte ptr [rbp - 0x82], 1
	jne	.label_308
	jmp	.label_309
.label_309:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_310
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x27
.label_310:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_112
.label_112:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_121
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x27
.label_121:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	mov	byte ptr [rbp - 0x7c], 0
.label_308:
	jmp	.label_126
.label_126:
	jmp	.label_128
.label_128:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_130
	mov	al, byte ptr [rbp - 0x7f]
	mov	rcx, qword ptr [rbp - 0x60]
	mov	rdx, qword ptr [rbp - 0x18]
	mov	byte ptr [rdx + rcx], al
.label_130:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	test	byte ptr [rbp - 0x83], 1
	jne	.label_136
	mov	byte ptr [rbp - 0x7e], 0
.label_136:
	jmp	.label_279
.label_279:
	mov	rax, qword ptr [rbp - 0x58]
	add	rax, 1
	mov	qword ptr [rbp - 0x58], rax
	jmp	.label_145
.label_193:
	jmp	.label_149
.label_149:
	jmp	.label_151
.label_151:
	test	byte ptr [rbp - 0x7b], 1
	je	.label_153
	jmp	.label_115
.label_217:
	jmp	.label_159
.label_159:
	jmp	.label_147
	.section	.text
	.align	32
	#Procedure 0x403cc0

	.globl quotearg_buffer_restyled
	.type quotearg_buffer_restyled, @function
quotearg_buffer_restyled:
	push	rbp
	mov	rbp, rsp
	push	rbx
	sub	rsp, 0x158
	mov	rax, qword ptr [rbp + 0x20]
	mov	r10, qword ptr [rbp + 0x18]
	mov	r11, qword ptr [rbp + 0x10]
	mov	qword ptr [rbp - 0x18], rdi
	mov	qword ptr [rbp - 0x20], rsi
	mov	qword ptr [rbp - 0x28], rdx
	mov	qword ptr [rbp - 0x30], rcx
	mov	dword ptr [rbp - 0x34], r8d
	mov	dword ptr [rbp - 0x38], r9d
	mov	qword ptr [rbp - 0x40], r11
	mov	qword ptr [rbp - 0x48], r10
	mov	qword ptr [rbp - 0x50], rax
	mov	qword ptr [rbp - 0x60], 0
	mov	qword ptr [rbp - 0x68], 0
	mov	qword ptr [rbp - 0x70], 0
	mov	qword ptr [rbp - 0x78], 0
	mov	byte ptr [rbp - 0x79], 0
	call	__ctype_get_mb_cur_max
	cmp	rax, 1
	sete	bl
	and	bl, 1
	mov	byte ptr [rbp - 0x7a], bl
	mov	r8d, dword ptr [rbp - 0x38]
	and	r8d, 2
	cmp	r8d, 0
	setne	bl
	and	bl, 1
	mov	byte ptr [rbp - 0x7b], bl
	mov	byte ptr [rbp - 0x7c], 0
	mov	byte ptr [rbp - 0x7d], 0
	mov	byte ptr [rbp - 0x7e], 1
.label_154:
	mov	eax, dword ptr [rbp - 0x34]
	mov	ecx, eax
	mov	rdx, rcx
	sub	rdx, 0xa
	mov	qword ptr [rbp - 0xc8], rcx
	mov	qword ptr [rbp - 0xd0], rdx
	ja	.label_312
	mov	rax, qword ptr [rbp - 0xc8]
	mov	rcx,  qword ptr [word ptr [+ (rax * 8) + label_194]]
	jmp	rcx
.label_2887:
	mov	byte ptr [rbp - 0x80], 0x61
	jmp	.label_131
.label_304:
	cmp	qword ptr [rbp - 0x60], 0
	jne	.label_198
	cmp	dword ptr [rbp - 0x34], 2
	jne	.label_198
	test	byte ptr [rbp - 0x7b], 1
	je	.label_198
	jmp	.label_115
.label_215:
	mov	byte ptr [rbp - 0x81], 1
.label_202:
	mov	rax, qword ptr [rbp - 0x58]
	mov	rcx, qword ptr [rbp - 0x28]
	mov	dl, byte ptr [rcx + rax]
	mov	byte ptr [rbp - 0x7f], dl
	movzx	esi, byte ptr [rbp - 0x7f]
	mov	eax, esi
	mov	rcx, rax
	sub	rcx, 0x7e
	mov	qword ptr [rbp - 0xf0], rax
	mov	qword ptr [rbp - 0xf8], rcx
	ja	.label_207
	mov	rax, qword ptr [rbp - 0xf0]
	mov	rcx,  qword ptr [word ptr [+ (rax * 8) + label_216]]
	jmp	rcx
.label_278:
	jmp	.label_147
.label_222:
	jmp	.label_119
.label_2897:
	mov	eax, dword ptr [rbp - 0x34]
	mov	ecx, eax
	sub	ecx, 2
	mov	dword ptr [rbp - 0xfc], eax
	mov	dword ptr [rbp - 0x100], ecx
	je	.label_219
	jmp	.label_223
.label_223:
	mov	eax, dword ptr [rbp - 0xfc]
	sub	eax, 5
	mov	dword ptr [rbp - 0x104], eax
	je	.label_225
	jmp	.label_228
.label_135:
	jmp	.label_230
.label_176:
	cmp	qword ptr [rbp - 0x20], 0
	je	.label_233
	cmp	qword ptr [rbp - 0x68], 0
	jne	.label_233
	mov	rax, qword ptr [rbp - 0x20]
	mov	qword ptr [rbp - 0x68], rax
	mov	qword ptr [rbp - 0x20], 0
.label_233:
	jmp	.label_241
.label_241:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_243
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x27
.label_243:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_247
.label_247:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_250
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x5c
.label_250:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_253
.label_253:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_143
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x27
.label_143:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	mov	byte ptr [rbp - 0x7c], 0
.label_170:
	jmp	.label_147
.label_166:
	jmp	.label_264
.label_264:
	mov	byte ptr [rbp - 0x83], 1
.label_2894:
	cmp	dword ptr [rbp - 0x34], 2
	jne	.label_269
	test	byte ptr [rbp - 0x7b], 1
	je	.label_269
	jmp	.label_115
.label_301:
	test	byte ptr [rbp - 0x81], 1
	je	.label_275
	jmp	.label_313
.label_313:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_146
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x5c
.label_146:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	mov	byte ptr [rbp - 0x81], 0
.label_275:
	jmp	.label_285
.label_285:
	mov	rax, qword ptr [rbp - 0xc0]
	mov	rcx, qword ptr [rbp - 0x58]
	add	rcx, 1
	cmp	rax, rcx
	ja	.label_287
	jmp	.label_291
.label_148:
	jmp	.label_162
.label_162:
	jmp	.label_179
.label_179:
	cmp	qword ptr [rbp - 0x70], 0
	je	.label_293
	test	byte ptr [rbp - 0x7b], 1
	jne	.label_293
	jmp	.label_296
.label_296:
	mov	rax, qword ptr [rbp - 0x70]
	cmp	byte ptr [rax], 0
	je	.label_298
	jmp	.label_300
.label_300:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_221
	mov	rax, qword ptr [rbp - 0x70]
	mov	cl, byte ptr [rax]
	mov	rax, qword ptr [rbp - 0x60]
	mov	rdx, qword ptr [rbp - 0x18]
	mov	byte ptr [rdx + rax], cl
.label_221:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_306
.label_306:
	mov	rax, qword ptr [rbp - 0x70]
	add	rax, 1
	mov	qword ptr [rbp - 0x70], rax
	jmp	.label_296
.label_298:
	jmp	.label_293
.label_293:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_311
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0
.label_311:
	mov	rax, qword ptr [rbp - 0x60]
	mov	qword ptr [rbp - 0x10], rax
	jmp	.label_113
.label_254:
	mov	rax, qword ptr [rbp - 0x58]
	mov	rcx, qword ptr [rbp - 0x28]
	mov	dl, byte ptr [rcx + rax + 2]
	mov	byte ptr [rbp - 0x7f], dl
	mov	rax, qword ptr [rbp - 0x58]
	add	rax, 2
	mov	qword ptr [rbp - 0x58], rax
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_120
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x3f
.label_120:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_213
.label_213:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_134
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x22
.label_134:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_141
.label_141:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_144
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x22
.label_144:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_152
.label_152:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_158
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x3f
.label_158:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_164
.label_2876:
	mov	byte ptr [rbp - 0x7b], 0
	jmp	.label_139
.label_287:
	jmp	.label_167
.label_167:
	test	byte ptr [rbp - 0x7c], 1
	je	.label_168
	test	byte ptr [rbp - 0x82], 1
	jne	.label_168
	jmp	.label_172
.label_172:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_174
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x27
.label_174:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_178
.label_178:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_180
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x27
.label_180:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	mov	byte ptr [rbp - 0x7c], 0
.label_168:
	jmp	.label_190
.label_190:
	jmp	.label_191
.label_191:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_140
	mov	al, byte ptr [rbp - 0x7f]
	mov	rcx, qword ptr [rbp - 0x60]
	mov	rdx, qword ptr [rbp - 0x18]
	mov	byte ptr [rdx + rcx], al
.label_140:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	mov	rax, qword ptr [rbp - 0x58]
	mov	rcx, rax
	add	rcx, 1
	mov	qword ptr [rbp - 0x58], rcx
	mov	rcx, qword ptr [rbp - 0x28]
	mov	dl, byte ptr [rcx + rax + 1]
	mov	byte ptr [rbp - 0x7f], dl
	jmp	.label_197
.label_219:
	test	byte ptr [rbp - 0x7b], 1
	je	.label_204
	jmp	.label_115
.label_2890:
	mov	byte ptr [rbp - 0x80], 0x6e
	jmp	.label_125
.label_273:
	jmp	.label_211
.label_211:
	jmp	.label_289
.label_289:
	mov	rax, qword ptr [rbp - 0xb8]
	add	rax, 1
	mov	qword ptr [rbp - 0xb8], rax
	jmp	.label_156
.label_117:
	mov	eax, dword ptr [rbp - 0x38]
	and	eax, 1
	cmp	eax, 0
	je	.label_217
	jmp	.label_279
.label_2898:
	mov	al, byte ptr [rbp - 0x7f]
	mov	byte ptr [rbp - 0x80], al
	cmp	dword ptr [rbp - 0x34], 2
	jne	.label_218
	test	byte ptr [rbp - 0x7b], 1
	je	.label_222
	jmp	.label_115
.label_111:
	mov	byte ptr [rbp - 0x82], 1
	cmp	dword ptr [rbp - 0x34], 2
	jne	.label_189
	test	byte ptr [rbp - 0x7c], 1
	jne	.label_189
	jmp	.label_229
.label_229:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_231
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x27
.label_231:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_238
.label_238:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_242
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x24
.label_242:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_270
.label_270:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_249
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x27
.label_249:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	mov	byte ptr [rbp - 0x7c], 1
.label_189:
	jmp	.label_255
.label_255:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_256
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x5c
.label_256:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_260
.label_260:
	jmp	.label_263
.label_263:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_265
	movzx	eax, byte ptr [rbp - 0x7f]
	sar	eax, 6
	add	eax, 0x30
	mov	cl, al
	mov	rdx, qword ptr [rbp - 0x60]
	mov	rsi, qword ptr [rbp - 0x18]
	mov	byte ptr [rsi + rdx], cl
.label_265:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_276
.label_276:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_294
	movzx	eax, byte ptr [rbp - 0x7f]
	sar	eax, 3
	and	eax, 7
	add	eax, 0x30
	mov	cl, al
	mov	rdx, qword ptr [rbp - 0x60]
	mov	rsi, qword ptr [rbp - 0x18]
	mov	byte ptr [rsi + rdx], cl
.label_294:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	movzx	eax, byte ptr [rbp - 0x7f]
	and	eax, 7
	add	eax, 0x30
	mov	cl, al
	mov	byte ptr [rbp - 0x7f], cl
	jmp	.label_285
.label_2899:
	cmp	qword ptr [rbp - 0x30], -1
	jne	.label_209
	mov	rax, qword ptr [rbp - 0x28]
	movsx	ecx, byte ptr [rax + 1]
	cmp	ecx, 0
	je	.label_239
	jmp	.label_185
.label_163:
	mov	rax, qword ptr [rbp - 0x58]
	cmp	rax, qword ptr [rbp - 0x30]
	sete	cl
	and	cl, 1
	movzx	edx, cl
	mov	dword ptr [rbp - 0xd4], edx
.label_165:
	mov	eax, dword ptr [rbp - 0xd4]
	cmp	eax, 0
	setne	cl
	xor	cl, 0xff
	test	cl, 1
	jne	.label_302
	jmp	.label_304
.label_302:
	mov	byte ptr [rbp - 0x81], 0
	mov	byte ptr [rbp - 0x82], 0
	mov	byte ptr [rbp - 0x83], 0
	test	byte ptr [rbp - 0x79], 1
	je	.label_202
	cmp	dword ptr [rbp - 0x34], 2
	je	.label_202
	cmp	qword ptr [rbp - 0x78], 0
	je	.label_202
	mov	rax, qword ptr [rbp - 0x58]
	add	rax, qword ptr [rbp - 0x78]
	cmp	qword ptr [rbp - 0x30], -1
	mov	qword ptr [rbp - 0xe0], rax
	jne	.label_116
	mov	eax, 1
	mov	ecx, eax
	cmp	rcx, qword ptr [rbp - 0x78]
	jae	.label_116
	mov	rdi, qword ptr [rbp - 0x28]
	call	strlen
	mov	qword ptr [rbp - 0x30], rax
	mov	qword ptr [rbp - 0xe8], rax
	jmp	.label_173
.label_312:
	call	abort
.label_2893:
	mov	byte ptr [rbp - 0x80], 0x72
	jmp	.label_125
.label_291:
	jmp	.label_119
.label_2888:
	mov	byte ptr [rbp - 0x80], 0x62
	jmp	.label_131
.label_262:
	cmp	qword ptr [rbp - 0xb0], -2
	jne	.label_132
	mov	byte ptr [rbp - 0x91], 0
.label_142:
	xor	eax, eax
	mov	cl, al
	mov	rdx, qword ptr [rbp - 0x58]
	add	rdx, qword ptr [rbp - 0x90]
	cmp	rdx, qword ptr [rbp - 0x30]
	mov	byte ptr [rbp - 0x129], cl
	jae	.label_137
	mov	rax, qword ptr [rbp - 0x58]
	add	rax, qword ptr [rbp - 0x90]
	mov	rcx, qword ptr [rbp - 0x28]
	movsx	edx, byte ptr [rcx + rax]
	cmp	edx, 0
	setne	sil
	mov	byte ptr [rbp - 0x129], sil
.label_137:
	mov	al, byte ptr [rbp - 0x129]
	test	al, 1
	jne	.label_155
	jmp	.label_135
.label_155:
	mov	rax, qword ptr [rbp - 0x90]
	add	rax, 1
	mov	qword ptr [rbp - 0x90], rax
	jmp	.label_142
.label_2891:
	mov	byte ptr [rbp - 0x80], 0x76
	jmp	.label_131
.label_2895:
	mov	byte ptr [rbp - 0x83], 1
	jmp	.label_147
.label_2889:
	mov	byte ptr [rbp - 0x80], 0x74
	jmp	.label_125
.label_2882:
	mov	byte ptr [rbp - 0x79], 1
	mov	byte ptr [rbp - 0x7b], 0
	jmp	.label_139
.label_123:
	mov	byte ptr [rbp - 0x82], 1
	cmp	dword ptr [rbp - 0x34], 2
	jne	.label_171
	test	byte ptr [rbp - 0x7c], 1
	jne	.label_171
	jmp	.label_295
.label_295:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_177
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x27
.label_177:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_182
.label_182:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_187
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x24
.label_187:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_192
.label_192:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_195
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x27
.label_195:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	mov	byte ptr [rbp - 0x7c], 1
.label_171:
	jmp	.label_280
.label_280:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_203
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x5c
.label_203:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_210
.label_210:
	cmp	dword ptr [rbp - 0x34], 2
	je	.label_212
	mov	rax, qword ptr [rbp - 0x58]
	add	rax, 1
	cmp	rax, qword ptr [rbp - 0x30]
	jae	.label_212
	mov	eax, 0x30
	mov	rcx, qword ptr [rbp - 0x58]
	mov	rdx, qword ptr [rbp - 0x28]
	movsx	esi, byte ptr [rdx + rcx + 1]
	cmp	eax, esi
	jg	.label_212
	mov	rax, qword ptr [rbp - 0x58]
	mov	rcx, qword ptr [rbp - 0x28]
	movsx	edx, byte ptr [rcx + rax + 1]
	cmp	edx, 0x39
	jg	.label_212
	jmp	.label_224
.label_224:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_226
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x30
.label_226:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_232
.label_232:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_236
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x30
.label_236:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_212
.label_212:
	mov	byte ptr [rbp - 0x7f], 0x30
	jmp	.label_159
.label_2883:
	cmp	dword ptr [rbp - 0x34], 0xa
	je	.label_246
	movabs	rdi, OFFSET FLAT:label_252
	mov	esi, dword ptr [rbp - 0x34]
	call	gettext_quote
	movabs	rdi, OFFSET FLAT:label_169
	mov	qword ptr [rbp - 0x48], rax
	mov	esi, dword ptr [rbp - 0x34]
	call	gettext_quote
	mov	qword ptr [rbp - 0x50], rax
.label_246:
	test	byte ptr [rbp - 0x7b], 1
	jne	.label_237
	mov	rax, qword ptr [rbp - 0x48]
	mov	qword ptr [rbp - 0x70], rax
.label_271:
	mov	rax, qword ptr [rbp - 0x70]
	cmp	byte ptr [rax], 0
	je	.label_258
	jmp	.label_175
.label_175:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_261
	mov	rax, qword ptr [rbp - 0x70]
	mov	cl, byte ptr [rax]
	mov	rax, qword ptr [rbp - 0x60]
	mov	rdx, qword ptr [rbp - 0x18]
	mov	byte ptr [rdx + rax], cl
.label_261:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_268
.label_268:
	mov	rax, qword ptr [rbp - 0x70]
	add	rax, 1
	mov	qword ptr [rbp - 0x70], rax
	jmp	.label_271
.label_206:
	jmp	.label_131
.label_131:
	test	byte ptr [rbp - 0x79], 1
	je	.label_278
	mov	al, byte ptr [rbp - 0x80]
	mov	byte ptr [rbp - 0x7f], al
	jmp	.label_149
.label_248:
	jmp	.label_244
.label_244:
	mov	edi, dword ptr [rbp - 0xa4]
	call	iswprint
	cmp	eax, 0
	jne	.label_284
	mov	byte ptr [rbp - 0x91], 0
.label_284:
	mov	rax, qword ptr [rbp - 0xb0]
	add	rax, qword ptr [rbp - 0x90]
	mov	qword ptr [rbp - 0x90], rax
	jmp	.label_286
.label_286:
	jmp	.label_196
.label_196:
	jmp	.label_292
.label_292:
	lea	rdi, [rbp - 0xa0]
	call	mbsinit
	cmp	eax, 0
	setne	cl
	xor	cl, 0xff
	test	cl, 1
	jne	.label_220
.label_230:
	jmp	.label_201
.label_201:
	mov	eax, 1
	mov	ecx, eax
	mov	dl, byte ptr [rbp - 0x91]
	and	dl, 1
	mov	byte ptr [rbp - 0x83], dl
	cmp	rcx, qword ptr [rbp - 0x90]
	jb	.label_205
	test	byte ptr [rbp - 0x79], 1
	je	.label_257
	test	byte ptr [rbp - 0x91], 1
	jne	.label_257
.label_205:
	mov	rax, qword ptr [rbp - 0x58]
	add	rax, qword ptr [rbp - 0x90]
	mov	qword ptr [rbp - 0xc0], rax
.label_197:
	test	byte ptr [rbp - 0x79], 1
	je	.label_301
	test	byte ptr [rbp - 0x91], 1
	jne	.label_301
	jmp	.label_110
.label_110:
	test	byte ptr [rbp - 0x7b], 1
	je	.label_111
	jmp	.label_115
.label_115:
	cmp	dword ptr [rbp - 0x34], 2
	jne	.label_118
	test	byte ptr [rbp - 0x79], 1
	je	.label_118
	mov	dword ptr [rbp - 0x34], 4
.label_118:
	xor	eax, eax
	mov	ecx, eax
	mov	rdi, qword ptr [rbp - 0x18]
	mov	rsi, qword ptr [rbp - 0x20]
	mov	rdx, qword ptr [rbp - 0x28]
	mov	r8, qword ptr [rbp - 0x30]
	mov	eax, dword ptr [rbp - 0x34]
	mov	r9d, dword ptr [rbp - 0x38]
	and	r9d, 0xfffffffd
	mov	r10, qword ptr [rbp - 0x48]
	mov	r11, qword ptr [rbp - 0x50]
	mov	qword ptr [rbp - 0x148], rcx
	mov	rcx, r8
	mov	r8d, eax
	mov	qword ptr [rsp], 0
	mov	qword ptr [rsp + 8], r10
	mov	qword ptr [rsp + 0x10], r11
	call	quotearg_buffer_restyled
	mov	qword ptr [rbp - 0x10], rax
.label_113:
	mov	rax, qword ptr [rbp - 0x10]
	add	rsp, 0x158
	pop	rbx
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40488d
	.globl sub_40488d
	.type sub_40488d, @function
sub_40488d:

	nop	dword ptr [rax + rax]
.label_269:
	jmp	.label_147
.label_2878:
	mov	byte ptr [rbp - 0x79], 1
.label_2877:
	mov	byte ptr [rbp - 0x7b], 1
.label_2879:
	test	byte ptr [rbp - 0x7b], 1
	jne	.label_150
	mov	byte ptr [rbp - 0x79], 1
.label_150:
	jmp	.label_114
.label_114:
	mov	dword ptr [rbp - 0x34], 2
	test	byte ptr [rbp - 0x7b], 1
	jne	.label_157
	jmp	.label_161
.label_161:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_208
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x27
.label_208:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_157
.label_157:
	movabs	rax, OFFSET FLAT:label_169
	mov	qword ptr [rbp - 0x70], rax
	mov	qword ptr [rbp - 0x78], 1
	jmp	.label_139
.label_258:
	jmp	.label_237
.label_237:
	mov	byte ptr [rbp - 0x79], 1
	mov	rax, qword ptr [rbp - 0x50]
	mov	qword ptr [rbp - 0x70], rax
	mov	rdi, qword ptr [rbp - 0x70]
	call	strlen
	mov	qword ptr [rbp - 0x78], rax
	jmp	.label_139
.label_2892:
	mov	byte ptr [rbp - 0x80], 0x66
	jmp	.label_131
.label_257:
	jmp	.label_147
.label_147:
	test	byte ptr [rbp - 0x79], 1
	je	.label_183
	cmp	dword ptr [rbp - 0x34], 2
	jne	.label_186
.label_183:
	test	byte ptr [rbp - 0x7b], 1
	je	.label_188
.label_186:
	cmp	qword ptr [rbp - 0x40], 0
	je	.label_188
	movzx	eax, byte ptr [rbp - 0x7f]
	mov	ecx, eax
	shr	rcx, 5
	mov	rdx, qword ptr [rbp - 0x40]
	mov	eax, dword ptr [rdx + rcx*4]
	movzx	esi, byte ptr [rbp - 0x7f]
	mov	ecx, esi
	and	rcx, 0x1f
	mov	esi, ecx
	mov	ecx, esi
	shr	eax, cl
	and	eax, 1
	cmp	eax, 0
	jne	.label_193
.label_188:
	test	byte ptr [rbp - 0x81], 1
	jne	.label_193
	jmp	.label_119
.label_281:
	jmp	.label_125
.label_125:
	cmp	dword ptr [rbp - 0x34], 2
	jne	.label_206
	test	byte ptr [rbp - 0x7b], 1
	je	.label_206
	jmp	.label_115
.label_305:
	xor	esi, esi
	mov	eax, 8
	mov	edx, eax
	lea	rcx, [rbp - 0xa0]
	mov	rdi, rcx
	call	memset
	mov	qword ptr [rbp - 0x90], 0
	mov	byte ptr [rbp - 0x91], 1
	cmp	qword ptr [rbp - 0x30], -1
	jne	.label_214
	mov	rdi, qword ptr [rbp - 0x28]
	call	strlen
	mov	qword ptr [rbp - 0x30], rax
.label_214:
	jmp	.label_220
.label_220:
	lea	rdi, [rbp - 0xa4]
	lea	rcx, [rbp - 0xa0]
	mov	rax, qword ptr [rbp - 0x58]
	add	rax, qword ptr [rbp - 0x90]
	add	rax, qword ptr [rbp - 0x28]
	mov	rdx, qword ptr [rbp - 0x30]
	mov	rsi, qword ptr [rbp - 0x58]
	add	rsi, qword ptr [rbp - 0x90]
	sub	rdx, rsi
	mov	rsi, rax
	call	rpl_mbrtowc
	mov	qword ptr [rbp - 0xb0], rax
	cmp	qword ptr [rbp - 0xb0], 0
	jne	.label_234
	jmp	.label_230
.label_209:
	cmp	qword ptr [rbp - 0x30], 1
	je	.label_239
.label_185:
	jmp	.label_147
.label_132:
	test	byte ptr [rbp - 0x7b], 1
	je	.label_244
	cmp	dword ptr [rbp - 0x34], 2
	jne	.label_244
	mov	qword ptr [rbp - 0xb8], 1
.label_156:
	mov	rax, qword ptr [rbp - 0xb8]
	cmp	rax, qword ptr [rbp - 0xb0]
	jae	.label_248
	mov	rax, qword ptr [rbp - 0x58]
	mov	rcx, qword ptr [rbp - 0x90]
	add	rax, rcx
	mov	rcx, qword ptr [rbp - 0xb8]
	add	rax, rcx
	mov	rcx, qword ptr [rbp - 0x28]
	movsx	edx, byte ptr [rcx + rax]
	mov	esi, edx
	add	esi, -0x5b
	sub	esi, 2
	mov	dword ptr [rbp - 0x130], edx
	mov	dword ptr [rbp - 0x134], esi
	jb	.label_181
	jmp	.label_259
.label_259:
	mov	eax, dword ptr [rbp - 0x130]
	sub	eax, 0x5e
	mov	dword ptr [rbp - 0x138], eax
	je	.label_181
	jmp	.label_266
.label_266:
	mov	eax, dword ptr [rbp - 0x130]
	sub	eax, 0x60
	mov	dword ptr [rbp - 0x13c], eax
	je	.label_181
	jmp	.label_272
.label_272:
	mov	eax, dword ptr [rbp - 0x130]
	sub	eax, 0x7c
	mov	dword ptr [rbp - 0x140], eax
	jne	.label_273
	jmp	.label_181
.label_181:
	jmp	.label_115
.label_218:
	test	byte ptr [rbp - 0x79], 1
	je	.label_281
	test	byte ptr [rbp - 0x7b], 1
	je	.label_281
	cmp	qword ptr [rbp - 0x78], 0
	je	.label_281
	jmp	.label_119
.label_228:
	jmp	.label_200
.label_200:
	jmp	.label_147
.label_316:
	movzx	eax, byte ptr [rbp - 5]
	cmp	eax, 0x7e
	jne	.label_314
	mov	dword ptr [rbp - 4], 0xffffffff
	jmp	.label_315
	.section	.text
	.align	32
	#Procedure 0x404b79

	.globl order
	.type order, @function
order:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	mov	al, dil
	mov	byte ptr [rbp - 5], al
	movzx	edi, byte ptr [rbp - 5]
	call	c_isdigit
	test	al, 1
	jne	.label_317
	jmp	.label_319
.label_317:
	mov	dword ptr [rbp - 4], 0
	jmp	.label_315
.label_319:
	movzx	edi, byte ptr [rbp - 5]
	call	c_isalpha
	test	al, 1
	jne	.label_318
	jmp	.label_316
.label_318:
	movzx	eax, byte ptr [rbp - 5]
	mov	dword ptr [rbp - 4], eax
	jmp	.label_315
.label_314:
	movzx	eax, byte ptr [rbp - 5]
	add	eax, 0xff
	add	eax, 1
	mov	dword ptr [rbp - 4], eax
.label_315:
	mov	eax, dword ptr [rbp - 4]
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x404be3
	.globl sub_404be3
	.type sub_404be3, @function
sub_404be3:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x404bf0

	.globl xstrcoll_mtime
	.type xstrcoll_mtime, @function
xstrcoll_mtime:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	movabs	rdx, OFFSET FLAT:xstrcoll
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	rsi, qword ptr [rbp - 8]
	mov	rdi, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 0x18], rdi
	mov	rdi, rsi
	mov	rsi, qword ptr [rbp - 0x18]
	call	cmp_mtime
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x404c28
	.globl sub_404c28
	.type sub_404c28, @function
sub_404c28:

	nop	dword ptr [rax + rax]
.label_2866:
	cmp	dword ptr [rbp - 0x90], 0x45
	jne	.label_339
	jmp	.label_374
.label_630:
	jmp	.label_453
.label_453:
	jmp	.label_473
.label_473:
	mov	eax, dword ptr [rbp - 0x4c]
	mov	dword ptr [rbp - 0x94], eax
	mov	eax, dword ptr [rbp - 0x98]
	mov	dword ptr [rbp - 0x98], eax
	jmp	.label_350
.label_341:
	mov	eax, dword ptr [rbp - 0x4c]
	mov	dword ptr [rbp - 0x8e0], eax
.label_536:
	mov	eax, dword ptr [rbp - 0x8e0]
	movsxd	rcx, eax
	mov	qword ptr [rbp - 0x710], rcx
	mov	rcx, qword ptr [rbp - 0x708]
	cmp	rcx, qword ptr [rbp - 0x710]
	jae	.label_359
	mov	rax, qword ptr [rbp - 0x710]
	mov	qword ptr [rbp - 0x8e8], rax
	jmp	.label_375
.label_617:
	mov	eax, dword ptr [rbp - 0x4c]
	mov	dword ptr [rbp - 0x808], eax
.label_554:
	mov	eax, dword ptr [rbp - 0x808]
	movsxd	rcx, eax
	mov	qword ptr [rbp - 0x5c0], rcx
	mov	rcx, qword ptr [rbp - 0x5b8]
	cmp	rcx, qword ptr [rbp - 0x5c0]
	jae	.label_382
	mov	rax, qword ptr [rbp - 0x5c0]
	mov	qword ptr [rbp - 0x810], rax
	jmp	.label_395
.label_447:
	cmp	qword ptr [rbp - 0x80], 0
	je	.label_402
	cmp	dword ptr [rbp - 0x94], 0
	jne	.label_405
	mov	rax, qword ptr [rbp - 0x590]
	cmp	rax, qword ptr [rbp - 0x598]
	jae	.label_405
	movsxd	rax, dword ptr [rbp - 0x4c]
	sub	rax, qword ptr [rbp - 0x590]
	mov	qword ptr [rbp - 0x5a8], rax
	cmp	dword ptr [rbp - 0x8c], 0x30
	je	.label_416
	cmp	dword ptr [rbp - 0x8c], 0x2b
	jne	.label_427
.label_416:
	mov	esi, 0x30
	mov	rdi, qword ptr [rbp - 0x80]
	mov	rdx, qword ptr [rbp - 0x5a8]
	call	memset
	mov	rdx, qword ptr [rbp - 0x5a8]
	add	rdx, qword ptr [rbp - 0x80]
	mov	qword ptr [rbp - 0x80], rdx
	jmp	.label_438
.label_2857:
	jmp	.label_448
.label_448:
	mov	qword ptr [rbp - 0x668], 1
	cmp	dword ptr [rbp - 0x4c], 0
	jge	.label_451
	xor	eax, eax
	mov	dword ptr [rbp - 0x868], eax
	jmp	.label_457
.label_2865:
	cmp	dword ptr [rbp - 0x90], 0x4f
	jne	.label_440
	jmp	.label_320
.label_497:
	test	byte ptr [rbp - 0xe2], 1
	je	.label_468
	mov	rdi, qword ptr [rbp - 0x80]
	mov	rsi, qword ptr [rbp - 0xc0]
	mov	rdx, qword ptr [rbp - 0x640]
	call	memcpy_uppcase
	mov	qword ptr [rbp - 0x860], rax
	jmp	.label_480
.label_627:
	cmp	qword ptr [rbp - 0x80], 0
	je	.label_465
	cmp	dword ptr [rbp - 0x94], 0
	jne	.label_406
	mov	rax, qword ptr [rbp - 0x708]
	cmp	rax, qword ptr [rbp - 0x710]
	jae	.label_406
	movsxd	rax, dword ptr [rbp - 0x4c]
	sub	rax, qword ptr [rbp - 0x708]
	mov	qword ptr [rbp - 0x720], rax
	cmp	dword ptr [rbp - 0x8c], 0x30
	je	.label_502
	cmp	dword ptr [rbp - 0x8c], 0x2b
	jne	.label_509
.label_502:
	mov	esi, 0x30
	mov	rdi, qword ptr [rbp - 0x80]
	mov	rdx, qword ptr [rbp - 0x720]
	call	memset
	mov	rdx, qword ptr [rbp - 0x720]
	add	rdx, qword ptr [rbp - 0x80]
	mov	qword ptr [rbp - 0x80], rdx
	jmp	.label_485
.label_2864:
	cmp	dword ptr [rbp - 0x90], 0x45
	jne	.label_523
	jmp	.label_320
.label_495:
	jmp	.label_374
.label_2840:
	movabs	rax, OFFSET FLAT:label_529
	mov	qword ptr [rbp - 0xb0], rax
	jmp	.label_411
.label_2845:
	cmp	dword ptr [rbp - 0x90], 0x4f
	jne	.label_535
	jmp	.label_320
.label_2854:
	cmp	dword ptr [rbp - 0x90], 0x45
	jne	.label_606
	jmp	.label_320
.label_646:
	mov	esi, 0x20
	mov	rdi, qword ptr [rbp - 0x80]
	mov	rdx, qword ptr [rbp - 0x680]
	call	memset
	mov	rdx, qword ptr [rbp - 0x680]
	add	rdx, qword ptr [rbp - 0x80]
	mov	qword ptr [rbp - 0x80], rdx
.label_587:
	jmp	.label_381
.label_381:
	mov	rax, qword ptr [rbp - 0x80]
	mov	byte ptr [rax], 0xa
	mov	rax, qword ptr [rbp - 0x668]
	add	rax, qword ptr [rbp - 0x80]
	mov	qword ptr [rbp - 0x80], rax
.label_474:
	mov	rax, qword ptr [rbp - 0x678]
	add	rax, qword ptr [rbp - 0x78]
	mov	qword ptr [rbp - 0x78], rax
	jmp	.label_326
.label_570:
	mov	eax, dword ptr [rbp - 0x700]
	add	eax, 0x64
	mov	dword ptr [rbp - 0x8dc], eax
.label_575:
	mov	eax, dword ptr [rbp - 0x8dc]
	mov	dword ptr [rbp - 0x700], eax
.label_560:
	jmp	.label_576
.label_576:
	mov	dword ptr [rbp - 0x94], 2
	mov	byte ptr [rbp - 0x9d], 0
	mov	eax, dword ptr [rbp - 0x700]
	mov	dword ptr [rbp - 0x9c], eax
	jmp	.label_323
.label_628:
	cmp	qword ptr [rbp - 0x80], 0
	je	.label_337
	cmp	dword ptr [rbp - 0x94], 0
	jne	.label_483
	mov	rax, qword ptr [rbp - 0x128]
	cmp	rax, qword ptr [rbp - 0x130]
	jae	.label_483
	movsxd	rax, dword ptr [rbp - 0x4c]
	sub	rax, qword ptr [rbp - 0x128]
	mov	qword ptr [rbp - 0x140], rax
	cmp	dword ptr [rbp - 0x8c], 0x30
	je	.label_609
	cmp	dword ptr [rbp - 0x8c], 0x2b
	jne	.label_621
.label_609:
	mov	esi, 0x30
	mov	rdi, qword ptr [rbp - 0x80]
	mov	rdx, qword ptr [rbp - 0x140]
	call	memset
	mov	rdx, qword ptr [rbp - 0x140]
	add	rdx, qword ptr [rbp - 0x80]
	mov	qword ptr [rbp - 0x80], rdx
	jmp	.label_553
.label_593:
	jmp	.label_636
.label_636:
	mov	dword ptr [rbp - 0x94], 3
	mov	dword ptr [rbp - 0xa4], 0
	mov	eax, dword ptr [rbp - 0x728]
	mov	dword ptr [rbp - 0x9c], eax
	jmp	.label_445
.label_2838:
	cmp	dword ptr [rbp - 0x90], 0x45
	jne	.label_649
	jmp	.label_320
.label_2829:
	cmp	dword ptr [rbp - 0x90], 0
	je	.label_654
	jmp	.label_320
.label_354:
	jmp	.label_322
.label_322:
	jmp	.label_325
.label_325:
	mov	rax, qword ptr [rbp - 0x88]
	movsx	ecx, byte ptr [rax]
	sub	ecx, 0x30
	cmp	ecx, 9
	ja	.label_329
	mov	dword ptr [rbp - 0x4c], 0
.label_368:
	cmp	dword ptr [rbp - 0x4c], 0xccccccc
	jg	.label_338
	cmp	dword ptr [rbp - 0x4c], 0xccccccc
	jne	.label_342
	mov	rax, qword ptr [rbp - 0x88]
	movsx	ecx, byte ptr [rax]
	sub	ecx, 0x30
	cmp	ecx, 7
	jle	.label_342
.label_338:
	mov	dword ptr [rbp - 0x4c], 0x7fffffff
	jmp	.label_355
.label_342:
	imul	eax, dword ptr [rbp - 0x4c], 0xa
	mov	dword ptr [rbp - 0x4c], eax
	mov	rcx, qword ptr [rbp - 0x88]
	movsx	eax, byte ptr [rcx]
	sub	eax, 0x30
	add	eax, dword ptr [rbp - 0x4c]
	mov	dword ptr [rbp - 0x4c], eax
.label_355:
	mov	rax, qword ptr [rbp - 0x88]
	add	rax, 1
	mov	qword ptr [rbp - 0x88], rax
	mov	rax, qword ptr [rbp - 0x88]
	movsx	ecx, byte ptr [rax]
	sub	ecx, 0x30
	cmp	ecx, 9
	jbe	.label_368
	jmp	.label_329
.label_329:
	mov	rax, qword ptr [rbp - 0x88]
	movsx	ecx, byte ptr [rax]
	mov	edx, ecx
	sub	edx, 0x45
	mov	dword ptr [rbp - 0x788], ecx
	mov	dword ptr [rbp - 0x78c], edx
	je	.label_383
	jmp	.label_394
.label_394:
	mov	eax, dword ptr [rbp - 0x788]
	sub	eax, 0x4f
	mov	dword ptr [rbp - 0x790], eax
	jne	.label_397
	jmp	.label_383
.label_383:
	mov	rax, qword ptr [rbp - 0x88]
	mov	rcx, rax
	add	rcx, 1
	mov	qword ptr [rbp - 0x88], rcx
	movsx	edx, byte ptr [rax]
	mov	dword ptr [rbp - 0x90], edx
	jmp	.label_404
.label_598:
	mov	esi, 0x20
	mov	rdi, qword ptr [rbp - 0x80]
	mov	rdx, qword ptr [rbp - 0x120]
	call	memset
	mov	rdx, qword ptr [rbp - 0x120]
	add	rdx, qword ptr [rbp - 0x80]
	mov	qword ptr [rbp - 0x80], rdx
.label_612:
	jmp	.label_429
.label_429:
	mov	rax, qword ptr [rbp - 0x88]
	mov	cl, byte ptr [rax]
	mov	rax, qword ptr [rbp - 0x80]
	mov	byte ptr [rax], cl
	mov	rax, qword ptr [rbp - 0x108]
	add	rax, qword ptr [rbp - 0x80]
	mov	qword ptr [rbp - 0x80], rax
.label_571:
	mov	rax, qword ptr [rbp - 0x118]
	add	rax, qword ptr [rbp - 0x78]
	mov	qword ptr [rbp - 0x78], rax
	jmp	.label_442
.label_351:
	xor	eax, eax
	mov	cl, al
	mov	eax, 4
	mov	rdx, qword ptr [rbp - 0x40]
	mov	esi, dword ptr [rdx + 0x1c]
	mov	edi, dword ptr [rbp - 0x6ec]
	mov	dword ptr [rbp - 0x8a4], eax
	mov	eax, edi
	cdq	
	mov	edi, dword ptr [rbp - 0x8a4]
	idiv	edi
	cmp	edx, 0
	mov	dword ptr [rbp - 0x8a8], esi
	mov	byte ptr [rbp - 0x8a9], cl
	jne	.label_454
	mov	al, 1
	mov	ecx, 0x64
	mov	edx, dword ptr [rbp - 0x6ec]
	mov	byte ptr [rbp - 0x8aa], al
	mov	eax, edx
	cdq	
	idiv	ecx
	cmp	edx, 0
	mov	sil, byte ptr [rbp - 0x8aa]
	mov	byte ptr [rbp - 0x8ab], sil
	jne	.label_472
	mov	eax, 0x190
	mov	ecx, dword ptr [rbp - 0x6ec]
	mov	dword ptr [rbp - 0x8b0], eax
	mov	eax, ecx
	cdq	
	mov	ecx, dword ptr [rbp - 0x8b0]
	idiv	ecx
	cmp	edx, 0
	sete	sil
	mov	byte ptr [rbp - 0x8ab], sil
.label_472:
	mov	al, byte ptr [rbp - 0x8ab]
	mov	byte ptr [rbp - 0x8a9], al
.label_454:
	mov	al, byte ptr [rbp - 0x8a9]
	and	al, 1
	movzx	ecx, al
	add	ecx, 0x16d
	mov	edx, dword ptr [rbp - 0x8a8]
	sub	edx, ecx
	mov	rsi, qword ptr [rbp - 0x40]
	mov	esi, dword ptr [rsi + 0x18]
	mov	edi, edx
	call	iso_week_days
	xor	ecx, ecx
	mov	dword ptr [rbp - 0x6f8], eax
	cmp	ecx, dword ptr [rbp - 0x6f8]
	jg	.label_516
	mov	dword ptr [rbp - 0x6f0], 1
	mov	eax, dword ptr [rbp - 0x6f8]
	mov	dword ptr [rbp - 0x6f4], eax
.label_516:
	jmp	.label_431
.label_431:
	mov	rax, qword ptr [rbp - 0x88]
	movsx	ecx, byte ptr [rax]
	mov	edx, ecx
	sub	edx, 0x47
	mov	dword ptr [rbp - 0x8b4], ecx
	mov	dword ptr [rbp - 0x8b8], edx
	je	.label_528
	jmp	.label_539
.label_539:
	mov	eax, dword ptr [rbp - 0x8b4]
	sub	eax, 0x67
	mov	dword ptr [rbp - 0x8bc], eax
	jne	.label_595
	jmp	.label_547
.label_547:
	mov	eax, 0x64
	mov	rcx, qword ptr [rbp - 0x40]
	mov	edx, dword ptr [rcx + 0x14]
	mov	dword ptr [rbp - 0x8c0], eax
	mov	eax, edx
	cdq	
	mov	esi, dword ptr [rbp - 0x8c0]
	idiv	esi
	add	edx, dword ptr [rbp - 0x6f0]
	mov	eax, edx
	cdq	
	idiv	esi
	mov	dword ptr [rbp - 0x6fc], edx
	xor	eax, eax
	mov	dword ptr [rbp - 0x94], 2
	mov	byte ptr [rbp - 0x9d], 0
	cmp	eax, dword ptr [rbp - 0x6fc]
	jg	.label_647
	mov	eax, dword ptr [rbp - 0x6fc]
	mov	dword ptr [rbp - 0x8c4], eax
	jmp	.label_567
.label_618:
	cmp	qword ptr [rbp - 0x80], 0
	je	.label_573
	mov	esi, 0x20
	mov	rdi, qword ptr [rbp - 0x80]
	movsxd	rdx, dword ptr [rbp - 0x5d4]
	call	memset
	mov	esi, dword ptr [rbp - 0x5d4]
	mov	rdx, qword ptr [rbp - 0x80]
	movsxd	rdi, esi
	add	rdx, rdi
	mov	qword ptr [rbp - 0x80], rdx
.label_573:
	movsxd	rax, dword ptr [rbp - 0x5d4]
	add	rax, qword ptr [rbp - 0x78]
	mov	qword ptr [rbp - 0x78], rax
	mov	ecx, dword ptr [rbp - 0x4c]
	cmp	ecx, dword ptr [rbp - 0x5d4]
	jle	.label_599
	mov	eax, dword ptr [rbp - 0x4c]
	sub	eax, dword ptr [rbp - 0x5d4]
	mov	dword ptr [rbp - 0x814], eax
	jmp	.label_568
.label_578:
	jmp	.label_374
.label_2846:
	cmp	dword ptr [rbp - 0x90], 0x45
	jne	.label_613
	jmp	.label_374
.label_2855:
	cmp	dword ptr [rbp - 0x90], 0x45
	jne	.label_619
	jmp	.label_320
.label_2833:
	cmp	dword ptr [rbp - 0x90], 0
	je	.label_625
	jmp	.label_320
.label_535:
	jmp	.label_374
.label_2852:
	cmp	dword ptr [rbp - 0x90], 0x45
	jne	.label_629
	jmp	.label_320
.label_397:
	mov	dword ptr [rbp - 0x90], 0
.label_404:
	mov	rax, qword ptr [rbp - 0x88]
	movsx	ecx, byte ptr [rax]
	mov	dword ptr [rbp - 0xf8], ecx
	mov	ecx, dword ptr [rbp - 0xf8]
	mov	eax, ecx
	mov	rdx, rax
	sub	rdx, 0x7a
	mov	qword ptr [rbp - 0x798], rax
	mov	qword ptr [rbp - 0x7a0], rdx
	ja	.label_640
	mov	rax, qword ptr [rbp - 0x798]
	mov	rcx,  qword ptr [word ptr [+ (rax * 8) + label_655]]
	jmp	rcx
.label_2847:
	test	byte ptr [rbp - 0xf1], 1
	je	.label_324
	mov	byte ptr [rbp - 0xe2], 0
	mov	byte ptr [rbp - 0xe1], 1
.label_324:
	jmp	.label_334
.label_334:
	mov	rdi, qword ptr [rbp - 0x70]
	call	strlen
	mov	qword ptr [rbp - 0x708], rax
	cmp	dword ptr [rbp - 0x4c], 0
	jge	.label_341
	xor	eax, eax
	mov	dword ptr [rbp - 0x8e0], eax
	jmp	.label_536
.label_629:
	jmp	.label_491
.label_491:
	mov	dword ptr [rbp - 0x94], 2
	mov	rax, qword ptr [rbp - 0x40]
	mov	ecx, dword ptr [rax + 0xc]
	mov	dword ptr [rbp - 0x98], ecx
	jmp	.label_353
.label_2863:
	jmp	.label_360
.label_360:
	mov	eax, 7
	mov	dword ptr [rbp - 0x94], 1
	mov	rcx, qword ptr [rbp - 0x40]
	mov	edx, dword ptr [rcx + 0x18]
	sub	edx, 1
	add	edx, 7
	mov	dword ptr [rbp - 0x88c], eax
	mov	eax, edx
	cdq	
	mov	esi, dword ptr [rbp - 0x88c]
	idiv	esi
	add	edx, 1
	mov	dword ptr [rbp - 0x98], edx
	jmp	.label_350
.label_462:
	mov	eax, dword ptr [rbp - 0x4c]
	sub	eax, 6
	mov	dword ptr [rbp - 0xfc], eax
	cmp	dword ptr [rbp - 0xfc], 0
	jge	.label_336
	mov	dword ptr [rbp - 0xfc], 0
.label_336:
	jmp	.label_407
.label_407:
	movabs	rax, OFFSET FLAT:label_418
	mov	qword ptr [rbp - 0xb0], rax
	jmp	.label_419
.label_427:
	mov	esi, 0x20
	mov	rdi, qword ptr [rbp - 0x80]
	mov	rdx, qword ptr [rbp - 0x5a8]
	call	memset
	mov	rdx, qword ptr [rbp - 0x5a8]
	add	rdx, qword ptr [rbp - 0x80]
	mov	qword ptr [rbp - 0x80], rdx
.label_438:
	jmp	.label_405
.label_405:
	test	byte ptr [rbp - 0xe1], 1
	je	.label_420
	lea	rax, [rbp - 0x580]
	mov	rdi, qword ptr [rbp - 0x80]
	add	rax, 1
	mov	rdx, qword ptr [rbp - 0x590]
	mov	rsi, rax
	call	memcpy_lowcase
	mov	qword ptr [rbp - 0x7e8], rax
	jmp	.label_432
.label_479:
	jmp	.label_437
.label_437:
	mov	qword ptr [rbp - 0x128], 1
	cmp	dword ptr [rbp - 0x4c], 0
	jge	.label_656
	xor	eax, eax
	mov	dword ptr [rbp - 0x7a4], eax
	jmp	.label_449
.label_518:
	jmp	.label_320
.label_352:
	mov	rax, qword ptr [rbp - 0x5e0]
	mov	qword ptr [rbp - 0x820], rax
.label_364:
	mov	rax, qword ptr [rbp - 0x820]
	mov	qword ptr [rbp - 0x5f0], rax
	mov	rax, qword ptr [rbp - 0x5f0]
	mov	rcx, qword ptr [rbp - 0x30]
	sub	rcx, qword ptr [rbp - 0x78]
	cmp	rax, rcx
	jb	.label_391
	mov	qword ptr [rbp - 0x20], 0
	jmp	.label_331
.label_648:
	jmp	.label_530
.label_530:
	mov	dword ptr [rbp - 0x94], 2
	mov	rax, qword ptr [rbp - 0x40]
	mov	ecx, dword ptr [rax + 8]
	mov	dword ptr [rbp - 0x98], ecx
	jmp	.label_350
.label_658:
	mov	al, 1
	mov	rcx, qword ptr [rbp - 0x40]
	mov	rcx, qword ptr [rcx + 0x28]
	mov	edx, ecx
	mov	dword ptr [rbp - 0x724], edx
	cmp	dword ptr [rbp - 0x724], 0
	mov	byte ptr [rbp - 0x8f9], al
	jl	.label_589
	xor	eax, eax
	mov	cl, al
	cmp	dword ptr [rbp - 0x724], 0
	mov	byte ptr [rbp - 0x8fa], cl
	jne	.label_327
	mov	rax, qword ptr [rbp - 0x70]
	movsx	ecx, byte ptr [rax]
	cmp	ecx, 0x2d
	sete	dl
	mov	byte ptr [rbp - 0x8fa], dl
.label_327:
	mov	al, byte ptr [rbp - 0x8fa]
	mov	byte ptr [rbp - 0x8f9], al
.label_589:
	mov	al, byte ptr [rbp - 0x8f9]
	and	al, 1
	mov	byte ptr [rbp - 0x9d], al
	movsxd	rcx, dword ptr [rbp - 0x724]
	mov	edx, ecx
	imul	rcx, rcx, -0x77777777
	shr	rcx, 0x20
	mov	esi, ecx
	add	esi, edx
	mov	edx, esi
	shr	edx, 0x1f
	sar	esi, 5
	add	esi, edx
	movsxd	rcx, esi
	imul	rcx, rcx, -0x77777777
	shr	rcx, 0x20
	mov	edx, ecx
	add	edx, esi
	mov	esi, edx
	shr	esi, 0x1f
	sar	edx, 5
	add	edx, esi
	mov	dword ptr [rbp - 0x728], edx
	movsxd	rcx, dword ptr [rbp - 0x724]
	mov	edx, ecx
	imul	rcx, rcx, -0x77777777
	shr	rcx, 0x20
	mov	esi, ecx
	add	esi, edx
	mov	edx, esi
	shr	edx, 0x1f
	sar	esi, 5
	add	esi, edx
	movsxd	rcx, esi
	imul	rcx, rcx, -0x77777777
	shr	rcx, 0x20
	mov	edx, ecx
	add	edx, esi
	mov	edi, edx
	shr	edi, 0x1f
	sar	edx, 5
	add	edx, edi
	imul	edx, edx, 0x3c
	sub	esi, edx
	mov	dword ptr [rbp - 0x72c], esi
	movsxd	rcx, dword ptr [rbp - 0x724]
	mov	edx, ecx
	imul	rcx, rcx, -0x77777777
	shr	rcx, 0x20
	mov	esi, ecx
	add	esi, edx
	mov	edi, esi
	shr	edi, 0x1f
	sar	esi, 5
	add	esi, edi
	imul	esi, esi, 0x3c
	sub	edx, esi
	mov	dword ptr [rbp - 0x730], edx
	mov	rcx, qword ptr [rbp - 0xf0]
	mov	r8, rcx
	sub	r8, 3
	mov	qword ptr [rbp - 0x908], rcx
	mov	qword ptr [rbp - 0x910], r8
	ja	.label_518
	mov	rax, qword ptr [rbp - 0x908]
	mov	rcx,  qword ptr [word ptr [+ (rax * 8) + label_584]]
	jmp	rcx
.label_445:
	mov	byte ptr [rbp - 0x9e], 1
	jmp	.label_590
.label_549:
	cmp	dword ptr [rbp - 0x72c], 0
	je	.label_593
	jmp	.label_520
.label_2862:
	jmp	.label_650
.label_650:
	mov	qword ptr [rbp - 0x6d0], 1
	cmp	dword ptr [rbp - 0x4c], 0
	jge	.label_605
	xor	eax, eax
	mov	dword ptr [rbp - 0x880], eax
	jmp	.label_540
.label_463:
	mov	rax, qword ptr [rbp - 0x108]
	mov	qword ptr [rbp - 0x768], rax
.label_475:
	mov	rax, qword ptr [rbp - 0x768]
	mov	qword ptr [rbp - 0x118], rax
	mov	rax, qword ptr [rbp - 0x118]
	mov	rcx, qword ptr [rbp - 0x30]
	sub	rcx, qword ptr [rbp - 0x78]
	cmp	rax, rcx
	jb	.label_363
	mov	qword ptr [rbp - 0x20], 0
	jmp	.label_331
.label_2837:
	cmp	dword ptr [rbp - 0x90], 0x45
	jne	.label_637
	jmp	.label_320
.label_488:
	jmp	.label_642
.label_642:
	mov	dword ptr [rbp - 0x94], 3
	mov	rax, qword ptr [rbp - 0x40]
	cmp	dword ptr [rax + 0x1c], -1
	setl	cl
	and	cl, 1
	mov	byte ptr [rbp - 0x9d], cl
	mov	rax, qword ptr [rbp - 0x40]
	mov	edx, dword ptr [rax + 0x1c]
	add	edx, 1
	mov	dword ptr [rbp - 0x9c], edx
	jmp	.label_321
.label_548:
	mov	eax, dword ptr [rbp - 0x4c]
	mov	dword ptr [rbp - 0x914], eax
.label_552:
	mov	eax, dword ptr [rbp - 0x914]
	movsxd	rcx, eax
	mov	qword ptr [rbp - 0x748], rcx
	mov	rcx, qword ptr [rbp - 0x740]
	cmp	rcx, qword ptr [rbp - 0x748]
	jae	.label_348
	mov	rax, qword ptr [rbp - 0x748]
	mov	qword ptr [rbp - 0x920], rax
	jmp	.label_357
.label_420:
	test	byte ptr [rbp - 0xe2], 1
	je	.label_345
	lea	rax, [rbp - 0x580]
	mov	rdi, qword ptr [rbp - 0x80]
	add	rax, 1
	mov	rdx, qword ptr [rbp - 0x590]
	mov	rsi, rax
	call	memcpy_uppcase
	mov	qword ptr [rbp - 0x7f0], rax
	jmp	.label_358
.label_531:
	mov	rax, qword ptr [rbp - 0x640]
	mov	qword ptr [rbp - 0x850], rax
.label_544:
	mov	rax, qword ptr [rbp - 0x850]
	mov	qword ptr [rbp - 0x650], rax
	mov	rax, qword ptr [rbp - 0x650]
	mov	rcx, qword ptr [rbp - 0x30]
	sub	rcx, qword ptr [rbp - 0x78]
	cmp	rax, rcx
	jb	.label_370
	mov	qword ptr [rbp - 0x20], 0
	jmp	.label_331
.label_654:
	test	byte ptr [rbp - 0xf1], 1
	je	.label_390
	mov	byte ptr [rbp - 0xe2], 1
	mov	byte ptr [rbp - 0xe1], 0
.label_390:
	jmp	.label_374
.label_362:
	mov	esi, 0x20
	mov	rdi, qword ptr [rbp - 0x80]
	mov	rdx, qword ptr [rbp - 0x6e8]
	call	memset
	mov	rdx, qword ptr [rbp - 0x6e8]
	add	rdx, qword ptr [rbp - 0x80]
	mov	qword ptr [rbp - 0x80], rdx
.label_333:
	jmp	.label_332
.label_332:
	mov	rax, qword ptr [rbp - 0x80]
	mov	byte ptr [rax], 9
	mov	rax, qword ptr [rbp - 0x6d0]
	add	rax, qword ptr [rbp - 0x80]
	mov	qword ptr [rbp - 0x80], rax
.label_563:
	mov	rax, qword ptr [rbp - 0x6e0]
	add	rax, qword ptr [rbp - 0x78]
	mov	qword ptr [rbp - 0x78], rax
	jmp	.label_326
.label_414:
	mov	eax, dword ptr [rbp - 0x4c]
	mov	dword ptr [rbp - 0x7b4], eax
.label_425:
	mov	eax, dword ptr [rbp - 0x7b4]
	movsxd	rcx, eax
	mov	qword ptr [rbp - 0x158], rcx
	mov	rcx, qword ptr [rbp - 0x150]
	cmp	rcx, qword ptr [rbp - 0x158]
	jae	.label_373
	mov	rax, qword ptr [rbp - 0x158]
	mov	qword ptr [rbp - 0x7c0], rax
	jmp	.label_443
.label_608:
	jmp	.label_349
.label_349:
	mov	rax, qword ptr [rbp - 0x88]
	mov	rcx, rax
	inc	rcx
	mov	qword ptr [rbp - 0x88], rcx
	movsx	edx, byte ptr [rax + 1]
	mov	esi, edx
	sub	esi, 0x23
	mov	dword ptr [rbp - 0x76c], edx
	mov	dword ptr [rbp - 0x770], esi
	je	.label_384
	jmp	.label_469
.label_469:
	mov	eax, dword ptr [rbp - 0x76c]
	sub	eax, 0x2b
	mov	dword ptr [rbp - 0x774], eax
	je	.label_356
	jmp	.label_477
.label_477:
	mov	eax, dword ptr [rbp - 0x76c]
	sub	eax, 0x2d
	mov	dword ptr [rbp - 0x778], eax
	je	.label_356
	jmp	.label_486
.label_486:
	mov	eax, dword ptr [rbp - 0x76c]
	sub	eax, 0x30
	mov	dword ptr [rbp - 0x77c], eax
	je	.label_356
	jmp	.label_496
.label_496:
	mov	eax, dword ptr [rbp - 0x76c]
	sub	eax, 0x5e
	mov	dword ptr [rbp - 0x780], eax
	je	.label_498
	jmp	.label_504
.label_504:
	mov	eax, dword ptr [rbp - 0x76c]
	sub	eax, 0x5f
	mov	dword ptr [rbp - 0x784], eax
	jne	.label_354
	jmp	.label_356
.label_356:
	mov	rax, qword ptr [rbp - 0x88]
	movsx	ecx, byte ptr [rax]
	mov	dword ptr [rbp - 0x8c], ecx
	jmp	.label_349
.label_513:
	mov	eax, dword ptr [rbp - 0x6fc]
	add	eax, 0x64
	mov	dword ptr [rbp - 0x8c8], eax
.label_569:
	mov	eax, dword ptr [rbp - 0x8c8]
	mov	dword ptr [rbp - 0x8c4], eax
.label_567:
	mov	eax, dword ptr [rbp - 0x8c4]
	mov	dword ptr [rbp - 0x9c], eax
	jmp	.label_323
.label_546:
	mov	eax, dword ptr [rbp - 0x4c]
	mov	dword ptr [rbp - 0x844], eax
.label_558:
	mov	eax, dword ptr [rbp - 0x844]
	movsxd	rcx, eax
	mov	qword ptr [rbp - 0x648], rcx
	mov	rcx, qword ptr [rbp - 0x640]
	cmp	rcx, qword ptr [rbp - 0x648]
	jae	.label_531
	mov	rax, qword ptr [rbp - 0x648]
	mov	qword ptr [rbp - 0x850], rax
	jmp	.label_544
.label_2988:
	cmp	dword ptr [rbp - 0x730], 0
	je	.label_549
	jmp	.label_464
.label_440:
	jmp	.label_374
.label_471:
	jmp	.label_555
.label_555:
	mov	eax, 7
	mov	dword ptr [rbp - 0x94], 2
	mov	rcx, qword ptr [rbp - 0x40]
	mov	edx, dword ptr [rcx + 0x1c]
	mov	rcx, qword ptr [rbp - 0x40]
	sub	edx, dword ptr [rcx + 0x18]
	add	edx, 7
	mov	dword ptr [rbp - 0x890], eax
	mov	eax, edx
	cdq	
	mov	esi, dword ptr [rbp - 0x890]
	idiv	esi
	mov	dword ptr [rbp - 0x98], eax
	jmp	.label_350
.label_2841:
	cmp	dword ptr [rbp - 0x90], 0x45
	jne	.label_572
	jmp	.label_320
.label_422:
	mov	esi, 0x20
	mov	rdi, qword ptr [rbp - 0x80]
	mov	rdx, qword ptr [rbp - 0x618]
	call	memset
	mov	rdx, qword ptr [rbp - 0x618]
	add	rdx, qword ptr [rbp - 0x80]
	mov	qword ptr [rbp - 0x80], rdx
.label_433:
	jmp	.label_436
.label_436:
	mov	al, byte ptr [rbp - 0xb1]
	mov	rcx, qword ptr [rbp - 0x80]
	mov	byte ptr [rcx], al
	mov	rcx, qword ptr [rbp - 0x600]
	add	rcx, qword ptr [rbp - 0x80]
	mov	qword ptr [rbp - 0x80], rcx
.label_398:
	mov	rax, qword ptr [rbp - 0x610]
	add	rax, qword ptr [rbp - 0x78]
	mov	qword ptr [rbp - 0x78], rax
	jmp	.label_594
.label_594:
	cmp	qword ptr [rbp - 0x80], 0
	je	.label_371
	mov	esi, 0x30
	mov	rdi, qword ptr [rbp - 0x80]
	movsxd	rdx, dword ptr [rbp - 0x5d4]
	call	memset
	mov	esi, dword ptr [rbp - 0x5d4]
	mov	rdx, qword ptr [rbp - 0x80]
	movsxd	rdi, esi
	add	rdx, rdi
	mov	qword ptr [rbp - 0x80], rdx
.label_371:
	movsxd	rax, dword ptr [rbp - 0x5d4]
	add	rax, qword ptr [rbp - 0x78]
	mov	qword ptr [rbp - 0x78], rax
	mov	dword ptr [rbp - 0x4c], 0
.label_346:
	jmp	.label_541
.label_348:
	mov	rax, qword ptr [rbp - 0x740]
	mov	qword ptr [rbp - 0x920], rax
.label_357:
	mov	rax, qword ptr [rbp - 0x920]
	mov	qword ptr [rbp - 0x750], rax
	mov	rax, qword ptr [rbp - 0x750]
	mov	rcx, qword ptr [rbp - 0x30]
	sub	rcx, qword ptr [rbp - 0x78]
	cmp	rax, rcx
	jb	.label_641
	mov	qword ptr [rbp - 0x20], 0
	jmp	.label_331
.label_528:
	jmp	.label_651
.label_651:
	mov	eax, 0xfffff894
	mov	dword ptr [rbp - 0x94], 4
	mov	rcx, qword ptr [rbp - 0x40]
	mov	edx, dword ptr [rcx + 0x14]
	sub	eax, dword ptr [rbp - 0x6f0]
	cmp	edx, eax
	setl	sil
	and	sil, 1
	mov	byte ptr [rbp - 0x9d], sil
	mov	rcx, qword ptr [rbp - 0x40]
	mov	eax, dword ptr [rcx + 0x14]
	add	eax, 0x76c
	add	eax, dword ptr [rbp - 0x6f0]
	mov	dword ptr [rbp - 0x9c], eax
	jmp	.label_323
.label_384:
	mov	byte ptr [rbp - 0xf1], 1
	jmp	.label_349
.label_501:
	jmp	.label_505
.label_505:
	mov	eax, 7
	mov	dword ptr [rbp - 0x94], 2
	mov	rcx, qword ptr [rbp - 0x40]
	mov	edx, dword ptr [rcx + 0x1c]
	mov	rcx, qword ptr [rbp - 0x40]
	mov	esi, dword ptr [rcx + 0x18]
	sub	esi, 1
	add	esi, 7
	mov	dword ptr [rbp - 0x8d0], eax
	mov	eax, esi
	mov	dword ptr [rbp - 0x8d4], edx
	cdq	
	mov	esi, dword ptr [rbp - 0x8d0]
	idiv	esi
	mov	edi, dword ptr [rbp - 0x8d4]
	sub	edi, edx
	add	edi, 7
	mov	eax, edi
	cdq	
	idiv	esi
	mov	dword ptr [rbp - 0x98], eax
	jmp	.label_350
.label_411:
	mov	dword ptr [rbp - 0xfc], 0xffffffff
.label_419:
	xor	eax, eax
	mov	edi, eax
	mov	rsi, -1
	mov	rdx, qword ptr [rbp - 0xb0]
	mov	rcx, qword ptr [rbp - 0x40]
	mov	r8b, byte ptr [rbp - 0xe2]
	mov	r9d, dword ptr [rbp - 0x8c]
	mov	eax, dword ptr [rbp - 0xfc]
	mov	r10, qword ptr [rbp - 0x58]
	mov	r11, qword ptr [rbp - 0x60]
	mov	ebx, dword ptr [rbp - 0x64]
	and	r8b, 1
	movzx	r8d, r8b
	mov	dword ptr [rsp], eax
	mov	qword ptr [rsp + 8], r10
	mov	qword ptr [rsp + 0x10], r11
	mov	dword ptr [rsp + 0x18], ebx
	call	__strftime_internal
	mov	qword ptr [rbp - 0x148], rax
	mov	rax, qword ptr [rbp - 0x148]
	mov	qword ptr [rbp - 0x150], rax
	cmp	dword ptr [rbp - 0x4c], 0
	jge	.label_414
	xor	eax, eax
	mov	dword ptr [rbp - 0x7b4], eax
	jmp	.label_425
.label_446:
	test	byte ptr [rbp - 0xe2], 1
	je	.label_430
	mov	eax, 1
	mov	rdi, qword ptr [rbp - 0x80]
	sub	eax, dword ptr [rbp - 0x734]
	movsxd	rcx, eax
	add	rcx, qword ptr [rbp - 0x88]
	mov	rdx, qword ptr [rbp - 0x740]
	mov	rsi, rcx
	call	memcpy_uppcase
	mov	qword ptr [rbp - 0x930], rax
	jmp	.label_550
.label_370:
	cmp	qword ptr [rbp - 0x80], 0
	je	.label_607
	cmp	dword ptr [rbp - 0x94], 0
	jne	.label_458
	mov	rax, qword ptr [rbp - 0x640]
	cmp	rax, qword ptr [rbp - 0x648]
	jae	.label_458
	movsxd	rax, dword ptr [rbp - 0x4c]
	sub	rax, qword ptr [rbp - 0x640]
	mov	qword ptr [rbp - 0x658], rax
	cmp	dword ptr [rbp - 0x8c], 0x30
	je	.label_369
	cmp	dword ptr [rbp - 0x8c], 0x2b
	jne	.label_401
.label_369:
	mov	esi, 0x30
	mov	rdi, qword ptr [rbp - 0x80]
	mov	rdx, qword ptr [rbp - 0x658]
	call	memset
	mov	rdx, qword ptr [rbp - 0x658]
	add	rdx, qword ptr [rbp - 0x80]
	mov	qword ptr [rbp - 0x80], rdx
	jmp	.label_494
.label_507:
	mov	rax, qword ptr [rbp - 0x620]
	mov	qword ptr [rbp - 0x840], rax
.label_517:
	mov	rax, qword ptr [rbp - 0x840]
	mov	qword ptr [rbp - 0x630], rax
	mov	rax, qword ptr [rbp - 0x630]
	mov	rcx, qword ptr [rbp - 0x30]
	sub	rcx, qword ptr [rbp - 0x78]
	cmp	rax, rcx
	jb	.label_344
	mov	qword ptr [rbp - 0x20], 0
	jmp	.label_331
.label_376:
	mov	rax, qword ptr [rbp - 0xf0]
	add	rax, qword ptr [rbp - 0x88]
	mov	qword ptr [rbp - 0x88], rax
	jmp	.label_510
.label_641:
	cmp	qword ptr [rbp - 0x80], 0
	je	.label_424
	cmp	dword ptr [rbp - 0x94], 0
	jne	.label_393
	mov	rax, qword ptr [rbp - 0x740]
	cmp	rax, qword ptr [rbp - 0x748]
	jae	.label_393
	movsxd	rax, dword ptr [rbp - 0x4c]
	sub	rax, qword ptr [rbp - 0x740]
	mov	qword ptr [rbp - 0x758], rax
	cmp	dword ptr [rbp - 0x8c], 0x30
	je	.label_537
	cmp	dword ptr [rbp - 0x8c], 0x2b
	jne	.label_361
.label_537:
	mov	esi, 0x30
	mov	rdi, qword ptr [rbp - 0x80]
	mov	rdx, qword ptr [rbp - 0x758]
	call	memset
	mov	rdx, qword ptr [rbp - 0x758]
	add	rdx, qword ptr [rbp - 0x80]
	mov	qword ptr [rbp - 0x80], rdx
	jmp	.label_557
.label_542:
	mov	rax, qword ptr [rbp - 0x590]
	mov	qword ptr [rbp - 0x7e0], rax
.label_551:
	mov	rax, qword ptr [rbp - 0x7e0]
	mov	qword ptr [rbp - 0x5a0], rax
	mov	rax, qword ptr [rbp - 0x5a0]
	mov	rcx, qword ptr [rbp - 0x30]
	sub	rcx, qword ptr [rbp - 0x78]
	cmp	rax, rcx
	jb	.label_447
	mov	qword ptr [rbp - 0x20], 0
	jmp	.label_331
.label_456:
	jmp	.label_579
.label_579:
	mov	dword ptr [rbp - 0x94], 2
	mov	rax, qword ptr [rbp - 0x40]
	cmp	dword ptr [rax + 0x10], -1
	setl	cl
	and	cl, 1
	mov	byte ptr [rbp - 0x9d], cl
	mov	rax, qword ptr [rbp - 0x40]
	mov	edx, dword ptr [rax + 0x10]
	add	edx, 1
	mov	dword ptr [rbp - 0x9c], edx
	jmp	.label_321
.label_2859:
	jmp	.label_603
.label_603:
	mov	dword ptr [rbp - 0x94], 1
	mov	byte ptr [rbp - 0x9d], 0
	mov	rax, qword ptr [rbp - 0x40]
	imul	ecx, dword ptr [rax + 0x10], 0xb
	sar	ecx, 5
	add	ecx, 1
	mov	dword ptr [rbp - 0x9c], ecx
	jmp	.label_321
.label_2842:
	movabs	rax, OFFSET FLAT:label_410
	mov	qword ptr [rbp - 0xb0], rax
	jmp	.label_411
.label_626:
	mov	esi, 0x20
	mov	rdi, qword ptr [rbp - 0x80]
	mov	rdx, qword ptr [rbp - 0x5d0]
	call	memset
	mov	rdx, qword ptr [rbp - 0x5d0]
	add	rdx, qword ptr [rbp - 0x80]
	mov	qword ptr [rbp - 0x80], rdx
.label_634:
	jmp	.label_604
.label_604:
	mov	al, byte ptr [rbp - 0xb1]
	mov	rcx, qword ptr [rbp - 0x80]
	mov	byte ptr [rcx], al
	mov	rcx, qword ptr [rbp - 0x5b8]
	add	rcx, qword ptr [rbp - 0x80]
	mov	qword ptr [rbp - 0x80], rcx
.label_597:
	mov	rax, qword ptr [rbp - 0x5c8]
	add	rax, qword ptr [rbp - 0x78]
	mov	qword ptr [rbp - 0x78], rax
	jmp	.label_611
.label_611:
	jmp	.label_543
.label_2867:
	mov	qword ptr [rbp - 0xf0], 0
.label_510:
	mov	rax, qword ptr [rbp - 0x40]
	cmp	dword ptr [rax + 0x20], 0
	jge	.label_658
	jmp	.label_326
.label_514:
	mov	eax, 0xffffff9c
	mov	ecx, 0x12c
	mov	rdx, qword ptr [rbp - 0x40]
	mov	esi, dword ptr [rdx + 0x14]
	mov	rdx, qword ptr [rbp - 0x40]
	cmp	dword ptr [rdx + 0x14], 0
	cmovl	eax, ecx
	add	esi, eax
	mov	dword ptr [rbp - 0x6ec], esi
	mov	dword ptr [rbp - 0x6f0], 0
	mov	rdx, qword ptr [rbp - 0x40]
	mov	edi, dword ptr [rdx + 0x1c]
	mov	rdx, qword ptr [rbp - 0x40]
	mov	esi, dword ptr [rdx + 0x18]
	call	iso_week_days
	mov	dword ptr [rbp - 0x6f4], eax
	cmp	dword ptr [rbp - 0x6f4], 0
	jge	.label_351
	xor	eax, eax
	mov	cl, al
	mov	eax, 4
	mov	dword ptr [rbp - 0x6f0], 0xffffffff
	mov	rdx, qword ptr [rbp - 0x40]
	mov	esi, dword ptr [rdx + 0x1c]
	mov	edi, dword ptr [rbp - 0x6ec]
	sub	edi, 1
	mov	dword ptr [rbp - 0x894], eax
	mov	eax, edi
	cdq	
	mov	edi, dword ptr [rbp - 0x894]
	idiv	edi
	cmp	edx, 0
	mov	dword ptr [rbp - 0x898], esi
	mov	byte ptr [rbp - 0x899], cl
	jne	.label_526
	mov	al, 1
	mov	ecx, 0x64
	mov	edx, dword ptr [rbp - 0x6ec]
	sub	edx, 1
	mov	byte ptr [rbp - 0x89a], al
	mov	eax, edx
	cdq	
	idiv	ecx
	cmp	edx, 0
	mov	sil, byte ptr [rbp - 0x89a]
	mov	byte ptr [rbp - 0x89b], sil
	jne	.label_330
	mov	eax, 0x190
	mov	ecx, dword ptr [rbp - 0x6ec]
	sub	ecx, 1
	mov	dword ptr [rbp - 0x8a0], eax
	mov	eax, ecx
	cdq	
	mov	ecx, dword ptr [rbp - 0x8a0]
	idiv	ecx
	cmp	edx, 0
	sete	sil
	mov	byte ptr [rbp - 0x89b], sil
.label_330:
	mov	al, byte ptr [rbp - 0x89b]
	mov	byte ptr [rbp - 0x899], al
.label_526:
	mov	al, byte ptr [rbp - 0x899]
	and	al, 1
	movzx	ecx, al
	add	ecx, 0x16d
	mov	edx, dword ptr [rbp - 0x898]
	add	edx, ecx
	mov	rsi, qword ptr [rbp - 0x40]
	mov	esi, dword ptr [rsi + 0x18]
	mov	edi, edx
	call	iso_week_days
	mov	dword ptr [rbp - 0x6f4], eax
	jmp	.label_431
.label_2836:
	cmp	dword ptr [rbp - 0x90], 0x45
	jne	.label_434
	jmp	.label_320
.label_649:
	mov	eax, dword ptr [rbp - 0x64]
	mov	dword ptr [rbp - 0x98], eax
	cmp	dword ptr [rbp - 0x4c], -1
	jne	.label_444
	mov	dword ptr [rbp - 0x4c], 9
	jmp	.label_453
.label_2856:
	cmp	dword ptr [rbp - 0x90], 0x45
	jne	.label_456
	jmp	.label_320
.label_625:
	cmp	dword ptr [rbp - 0x8c], 0
	jne	.label_462
	cmp	dword ptr [rbp - 0x4c], 0
	jge	.label_462
	mov	dword ptr [rbp - 0x8c], 0x2b
	mov	dword ptr [rbp - 0xfc], 4
	jmp	.label_407
.label_2827:
	cmp	dword ptr [rbp - 0x90], 0
	je	.label_479
	jmp	.label_320
.label_2849:
	test	byte ptr [rbp - 0xf1], 1
	je	.label_482
	mov	byte ptr [rbp - 0xe2], 1
	mov	byte ptr [rbp - 0xe1], 0
.label_482:
	cmp	dword ptr [rbp - 0x90], 0x45
	jne	.label_495
	jmp	.label_320
.label_2844:
	cmp	dword ptr [rbp - 0x90], 0x45
	jne	.label_501
	jmp	.label_320
.label_637:
	jmp	.label_506
.label_506:
	mov	dword ptr [rbp - 0x94], 2
	mov	rax, qword ptr [rbp - 0x40]
	mov	ecx, dword ptr [rax + 4]
	mov	dword ptr [rbp - 0x98], ecx
	jmp	.label_350
.label_2834:
	cmp	dword ptr [rbp - 0x90], 0x45
	jne	.label_514
	jmp	.label_320
.label_2987:
	jmp	.label_464
.label_464:
	jmp	.label_521
.label_521:
	mov	dword ptr [rbp - 0x94], 9
	mov	dword ptr [rbp - 0xa4], 0x14
	imul	eax, dword ptr [rbp - 0x728], 0x2710
	imul	ecx, dword ptr [rbp - 0x72c], 0x64
	add	eax, ecx
	add	eax, dword ptr [rbp - 0x730]
	mov	dword ptr [rbp - 0x9c], eax
	jmp	.label_445
.label_2830:
	cmp	dword ptr [rbp - 0x90], 0x45
	jne	.label_538
	jmp	.label_320
.label_2861:
	lea	rax, [rbp - 0x6b8]
	mov	ecx, 0x38
	mov	edx, ecx
	mov	rsi, qword ptr [rbp - 0x40]
	mov	rdi, rax
	mov	qword ptr [rbp - 0x878], rax
	call	memcpy
	mov	rdi, qword ptr [rbp - 0x60]
	mov	rsi, qword ptr [rbp - 0x878]
	call	mktime_z
	lea	rdx, [rbp - 0xe0]
	mov	qword ptr [rbp - 0x6c0], rax
	add	rdx, 0x17
	mov	qword ptr [rbp - 0xc0], rdx
	cmp	qword ptr [rbp - 0x6c0], 0
	setl	r8b
	and	r8b, 1
	mov	byte ptr [rbp - 0x9d], r8b
.label_461:
	mov	eax, 0xa
	mov	ecx, eax
	mov	rax, qword ptr [rbp - 0x6c0]
	cqo	
	idiv	rcx
	mov	esi, edx
	mov	dword ptr [rbp - 0x6c4], esi
	mov	rdx, qword ptr [rbp - 0x6c0]
	mov	rax, rdx
	cqo	
	idiv	rcx
	mov	qword ptr [rbp - 0x6c0], rax
	test	byte ptr [rbp - 0x9d], 1
	je	.label_532
	xor	eax, eax
	sub	eax, dword ptr [rbp - 0x6c4]
	mov	dword ptr [rbp - 0x87c], eax
	jmp	.label_592
.label_380:
	cmp	qword ptr [rbp - 0x80], 0
	je	.label_597
	cmp	dword ptr [rbp - 0x94], 0
	jne	.label_604
	mov	rax, qword ptr [rbp - 0x5b8]
	cmp	rax, qword ptr [rbp - 0x5c0]
	jae	.label_604
	movsxd	rax, dword ptr [rbp - 0x4c]
	sub	rax, qword ptr [rbp - 0x5b8]
	mov	qword ptr [rbp - 0x5d0], rax
	cmp	dword ptr [rbp - 0x8c], 0x30
	je	.label_615
	cmp	dword ptr [rbp - 0x8c], 0x2b
	jne	.label_626
.label_615:
	mov	esi, 0x30
	mov	rdi, qword ptr [rbp - 0x80]
	mov	rdx, qword ptr [rbp - 0x5d0]
	call	memset
	mov	rdx, qword ptr [rbp - 0x5d0]
	add	rdx, qword ptr [rbp - 0x80]
	mov	qword ptr [rbp - 0x80], rdx
	jmp	.label_634
.label_455:
	mov	esi, 0x20
	mov	rdi, qword ptr [rbp - 0x80]
	mov	rdx, qword ptr [rbp - 0x168]
	call	memset
	mov	rdx, qword ptr [rbp - 0x168]
	add	rdx, qword ptr [rbp - 0x80]
	mov	qword ptr [rbp - 0x80], rdx
.label_620:
	jmp	.label_400
.label_400:
	mov	rdi, qword ptr [rbp - 0x80]
	mov	rax, qword ptr [rbp - 0x30]
	sub	rax, qword ptr [rbp - 0x78]
	mov	rdx, qword ptr [rbp - 0xb0]
	mov	rcx, qword ptr [rbp - 0x40]
	mov	sil, byte ptr [rbp - 0xe2]
	mov	r9d, dword ptr [rbp - 0x8c]
	mov	r8d, dword ptr [rbp - 0xfc]
	mov	r10, qword ptr [rbp - 0x58]
	mov	r11, qword ptr [rbp - 0x60]
	mov	ebx, dword ptr [rbp - 0x64]
	and	sil, 1
	mov	byte ptr [rbp - 0x7c1], sil
	mov	rsi, rax
	mov	r14b, byte ptr [rbp - 0x7c1]
	movzx	r15d, r14b
	mov	dword ptr [rbp - 0x7c8], r8d
	mov	r8d, r15d
	mov	r15d, dword ptr [rbp - 0x7c8]
	mov	dword ptr [rsp], r15d
	mov	qword ptr [rsp + 8], r10
	mov	qword ptr [rsp + 0x10], r11
	mov	dword ptr [rsp + 0x18], ebx
	call	__strftime_internal
	mov	rcx, qword ptr [rbp - 0x150]
	add	rcx, qword ptr [rbp - 0x80]
	mov	qword ptr [rbp - 0x80], rcx
	mov	qword ptr [rbp - 0x7d0], rax
.label_347:
	mov	rax, qword ptr [rbp - 0x160]
	add	rax, qword ptr [rbp - 0x78]
	mov	qword ptr [rbp - 0x78], rax
	jmp	.label_326
.label_633:
	mov	rax, qword ptr [rbp - 0xf0]
	mov	rcx, qword ptr [rbp - 0x88]
	movsx	edx, byte ptr [rcx + rax]
	cmp	edx, 0x7a
	je	.label_376
	jmp	.label_320
.label_572:
	jmp	.label_385
.label_385:
	mov	dword ptr [rbp - 0x94], 2
	mov	rax, qword ptr [rbp - 0x40]
	mov	ecx, dword ptr [rax]
	mov	dword ptr [rbp - 0x98], ecx
	jmp	.label_350
.label_451:
	mov	eax, dword ptr [rbp - 0x4c]
	mov	dword ptr [rbp - 0x868], eax
.label_457:
	mov	eax, dword ptr [rbp - 0x868]
	movsxd	rcx, eax
	mov	qword ptr [rbp - 0x670], rcx
	mov	rcx, qword ptr [rbp - 0x668]
	cmp	rcx, qword ptr [rbp - 0x670]
	jae	.label_399
	mov	rax, qword ptr [rbp - 0x670]
	mov	qword ptr [rbp - 0x870], rax
	jmp	.label_435
.label_2851:
	cmp	dword ptr [rbp - 0x90], 0x45
	jne	.label_417
	jmp	.label_320
.label_538:
	test	byte ptr [rbp - 0xf1], 1
	je	.label_423
	mov	byte ptr [rbp - 0xe2], 1
	mov	byte ptr [rbp - 0xe1], 0
.label_423:
	jmp	.label_374
.label_403:
	mov	rax, qword ptr [rbp - 0x600]
	mov	qword ptr [rbp - 0x830], rax
.label_415:
	mov	rax, qword ptr [rbp - 0x830]
	mov	qword ptr [rbp - 0x610], rax
	mov	rax, qword ptr [rbp - 0x610]
	mov	rcx, qword ptr [rbp - 0x30]
	sub	rcx, qword ptr [rbp - 0x78]
	cmp	rax, rcx
	jb	.label_439
	mov	qword ptr [rbp - 0x20], 0
	jmp	.label_331
.label_522:
	test	byte ptr [rbp - 0xf1], 1
	je	.label_459
	mov	byte ptr [rbp - 0xe2], 1
	mov	byte ptr [rbp - 0xe1], 0
.label_459:
	jmp	.label_374
.label_2843:
	cmp	dword ptr [rbp - 0x90], 0x45
	jne	.label_471
	jmp	.label_320
.label_639:
	jmp	.label_476
.label_476:
	mov	dword ptr [rbp - 0x94], 4
	mov	rax, qword ptr [rbp - 0x40]
	cmp	dword ptr [rax + 0x14], 0xfffff894
	setl	cl
	and	cl, 1
	mov	byte ptr [rbp - 0x9d], cl
	mov	rax, qword ptr [rbp - 0x40]
	mov	edx, dword ptr [rax + 0x14]
	add	edx, 0x76c
	mov	dword ptr [rbp - 0x9c], edx
	jmp	.label_323
.label_534:
	cmp	qword ptr [rbp - 0x80], 0
	je	.label_499
	cmp	qword ptr [rbp - 0x30], 0
	je	.label_499
	mov	rax, qword ptr [rbp - 0x80]
	mov	byte ptr [rax], 0
.label_499:
	mov	rax, qword ptr [rbp - 0x78]
	mov	qword ptr [rbp - 0x20], rax
.label_331:
	mov	rax, qword ptr [rbp - 0x20]
	add	rsp, 0x938
	pop	rbx
	pop	r14
	pop	r15
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40662e
	.globl sub_40662e
	.type sub_40662e, @function
sub_40662e:

	nop	
.label_647:
	mov	eax, 0xfffff894
	mov	rcx, qword ptr [rbp - 0x40]
	mov	edx, dword ptr [rcx + 0x14]
	sub	eax, dword ptr [rbp - 0x6f0]
	cmp	edx, eax
	jge	.label_513
	xor	eax, eax
	sub	eax, dword ptr [rbp - 0x6fc]
	mov	dword ptr [rbp - 0x8c8], eax
	jmp	.label_569
.label_359:
	mov	rax, qword ptr [rbp - 0x708]
	mov	qword ptr [rbp - 0x8e8], rax
.label_375:
	mov	rax, qword ptr [rbp - 0x8e8]
	mov	qword ptr [rbp - 0x718], rax
	mov	rax, qword ptr [rbp - 0x718]
	mov	rcx, qword ptr [rbp - 0x30]
	sub	rcx, qword ptr [rbp - 0x78]
	cmp	rax, rcx
	jb	.label_627
	mov	qword ptr [rbp - 0x20], 0
	jmp	.label_331
.label_470:
	jmp	.label_632
.label_632:
	movsxd	rax, dword ptr [rbp - 0x734]
	mov	qword ptr [rbp - 0x740], rax
	cmp	dword ptr [rbp - 0x4c], 0
	jge	.label_548
	xor	eax, eax
	mov	dword ptr [rbp - 0x914], eax
	jmp	.label_552
.label_2831:
	cmp	dword ptr [rbp - 0x90], 0x45
	jne	.label_559
	jmp	.label_374
.label_344:
	cmp	qword ptr [rbp - 0x80], 0
	je	.label_564
	cmp	dword ptr [rbp - 0x94], 0
	jne	.label_525
	mov	rax, qword ptr [rbp - 0x620]
	cmp	rax, qword ptr [rbp - 0x628]
	jae	.label_525
	movsxd	rax, dword ptr [rbp - 0x4c]
	sub	rax, qword ptr [rbp - 0x620]
	mov	qword ptr [rbp - 0x638], rax
	cmp	dword ptr [rbp - 0x8c], 0x30
	je	.label_574
	cmp	dword ptr [rbp - 0x8c], 0x2b
	jne	.label_585
.label_574:
	mov	esi, 0x30
	mov	rdi, qword ptr [rbp - 0x80]
	mov	rdx, qword ptr [rbp - 0x638]
	call	memset
	mov	rdx, qword ptr [rbp - 0x638]
	add	rdx, qword ptr [rbp - 0x80]
	mov	qword ptr [rbp - 0x80], rdx
	jmp	.label_596
.label_509:
	mov	esi, 0x20
	mov	rdi, qword ptr [rbp - 0x80]
	mov	rdx, qword ptr [rbp - 0x720]
	call	memset
	mov	rdx, qword ptr [rbp - 0x720]
	add	rdx, qword ptr [rbp - 0x80]
	mov	qword ptr [rbp - 0x80], rdx
.label_485:
	jmp	.label_406
.label_406:
	test	byte ptr [rbp - 0xe1], 1
	je	.label_378
	mov	rdi, qword ptr [rbp - 0x80]
	mov	rsi, qword ptr [rbp - 0x70]
	mov	rdx, qword ptr [rbp - 0x708]
	call	memcpy_lowcase
	mov	qword ptr [rbp - 0x8f0], rax
	jmp	.label_365
.label_498:
	mov	byte ptr [rbp - 0xe2], 1
	jmp	.label_349
.label_2985:
	jmp	.label_638
.label_638:
	mov	dword ptr [rbp - 0x94], 5
	mov	dword ptr [rbp - 0xa4], 0
	imul	eax, dword ptr [rbp - 0x728], 0x64
	add	eax, dword ptr [rbp - 0x72c]
	mov	dword ptr [rbp - 0x9c], eax
	jmp	.label_445
.label_374:
	lea	rax, [rbp - 0x16d]
	mov	qword ptr [rbp - 0x178], rax
	mov	rax, qword ptr [rbp - 0x178]
	mov	rcx, rax
	add	rcx, 1
	mov	qword ptr [rbp - 0x178], rcx
	mov	byte ptr [rax], 0x20
	mov	rax, qword ptr [rbp - 0x178]
	mov	rcx, rax
	add	rcx, 1
	mov	qword ptr [rbp - 0x178], rcx
	mov	byte ptr [rax], 0x25
	cmp	dword ptr [rbp - 0x90], 0
	je	.label_624
	mov	eax, dword ptr [rbp - 0x90]
	mov	cl, al
	mov	rdx, qword ptr [rbp - 0x178]
	mov	rsi, rdx
	add	rsi, 1
	mov	qword ptr [rbp - 0x178], rsi
	mov	byte ptr [rdx], cl
.label_624:
	mov	eax, 0x400
	mov	esi, eax
	lea	rdx, [rbp - 0x16d]
	lea	rdi, [rbp - 0x580]
	mov	eax, dword ptr [rbp - 0xf8]
	mov	cl, al
	mov	r8, qword ptr [rbp - 0x178]
	mov	r9, r8
	add	r9, 1
	mov	qword ptr [rbp - 0x178], r9
	mov	byte ptr [r8], cl
	mov	r8, qword ptr [rbp - 0x178]
	mov	byte ptr [r8], 0
	mov	rcx, qword ptr [rbp - 0x40]
	call	strftime
	mov	qword ptr [rbp - 0x588], rax
	cmp	qword ptr [rbp - 0x588], 0
	je	.label_379
	jmp	.label_386
.label_386:
	mov	rax, qword ptr [rbp - 0x588]
	sub	rax, 1
	mov	qword ptr [rbp - 0x590], rax
	cmp	dword ptr [rbp - 0x4c], 0
	jge	.label_389
	xor	eax, eax
	mov	dword ptr [rbp - 0x7d4], eax
	jmp	.label_413
.label_653:
	mov	eax, dword ptr [rbp - 0x4c]
	mov	dword ptr [rbp - 0x824], eax
.label_610:
	mov	eax, dword ptr [rbp - 0x824]
	movsxd	rcx, eax
	mov	qword ptr [rbp - 0x608], rcx
	mov	rcx, qword ptr [rbp - 0x600]
	cmp	rcx, qword ptr [rbp - 0x608]
	jae	.label_403
	mov	rax, qword ptr [rbp - 0x608]
	mov	qword ptr [rbp - 0x830], rax
	jmp	.label_415
	.section	.text
	.align	32
	#Procedure 0x406923

	.globl __strftime_internal
	.type __strftime_internal, @function
__strftime_internal:
	push	rbp
	mov	rbp, rsp
	push	r15
	push	r14
	push	rbx
	sub	rsp, 0x938
	mov	al, r8b
	mov	r8d, dword ptr [rbp + 0x28]
	mov	r10, qword ptr [rbp + 0x20]
	mov	r11, qword ptr [rbp + 0x18]
	mov	ebx, dword ptr [rbp + 0x10]
	mov	qword ptr [rbp - 0x28], rdi
	mov	qword ptr [rbp - 0x30], rsi
	mov	qword ptr [rbp - 0x38], rdx
	mov	qword ptr [rbp - 0x40], rcx
	and	al, 1
	mov	byte ptr [rbp - 0x41], al
	mov	dword ptr [rbp - 0x48], r9d
	mov	dword ptr [rbp - 0x4c], ebx
	mov	qword ptr [rbp - 0x58], r11
	mov	qword ptr [rbp - 0x60], r10
	mov	dword ptr [rbp - 0x64], r8d
	mov	rcx, qword ptr [rbp - 0x40]
	mov	r8d, dword ptr [rcx + 8]
	mov	dword ptr [rbp - 0x68], r8d
	mov	qword ptr [rbp - 0x78], 0
	mov	rcx, qword ptr [rbp - 0x28]
	mov	qword ptr [rbp - 0x80], rcx
	mov	qword ptr [rbp - 0x70], 0
	mov	rcx, qword ptr [rbp - 0x40]
	mov	rcx, qword ptr [rcx + 0x30]
	mov	qword ptr [rbp - 0x70], rcx
	cmp	qword ptr [rbp - 0x70], 0
	jne	.label_660
	movabs	rax, OFFSET FLAT:label_662
	mov	qword ptr [rbp - 0x70], rax
.label_660:
	cmp	dword ptr [rbp - 0x68], 0xc
	jle	.label_661
	mov	eax, dword ptr [rbp - 0x68]
	sub	eax, 0xc
	mov	dword ptr [rbp - 0x68], eax
	jmp	.label_659
.label_460:
	mov	rdi, qword ptr [rbp - 0x80]
	mov	rsi, qword ptr [rbp - 0x70]
	mov	rdx, qword ptr [rbp - 0x708]
	call	memcpy
.label_466:
	jmp	.label_365
.label_365:
	mov	rax, qword ptr [rbp - 0x708]
	add	rax, qword ptr [rbp - 0x80]
	mov	qword ptr [rbp - 0x80], rax
.label_465:
	mov	rax, qword ptr [rbp - 0x718]
	add	rax, qword ptr [rbp - 0x78]
	mov	qword ptr [rbp - 0x78], rax
	jmp	.label_326
.label_493:
	mov	eax, dword ptr [rbp - 0x4c]
	mov	dword ptr [rbp - 0x834], eax
.label_500:
	mov	eax, dword ptr [rbp - 0x834]
	movsxd	rcx, eax
	mov	qword ptr [rbp - 0x628], rcx
	mov	rcx, qword ptr [rbp - 0x620]
	cmp	rcx, qword ptr [rbp - 0x628]
	jae	.label_507
	mov	rax, qword ptr [rbp - 0x628]
	mov	qword ptr [rbp - 0x840], rax
	jmp	.label_517
.label_2848:
	cmp	dword ptr [rbp - 0x90], 0
	je	.label_522
	jmp	.label_320
.label_661:
	cmp	dword ptr [rbp - 0x68], 0
	jne	.label_663
	mov	dword ptr [rbp - 0x68], 0xc
.label_663:
	jmp	.label_659
.label_659:
	mov	rax, qword ptr [rbp - 0x38]
	mov	qword ptr [rbp - 0x88], rax
.label_622:
	mov	rax, qword ptr [rbp - 0x88]
	movsx	ecx, byte ptr [rax]
	cmp	ecx, 0
	je	.label_534
	mov	dword ptr [rbp - 0x8c], 0
	mov	dword ptr [rbp - 0x94], 0
	mov	byte ptr [rbp - 0xe1], 0
	mov	al, byte ptr [rbp - 0x41]
	and	al, 1
	mov	byte ptr [rbp - 0xe2], al
	mov	byte ptr [rbp - 0xf1], 0
	mov	rcx, qword ptr [rbp - 0x88]
	movsx	edx, byte ptr [rcx]
	cmp	edx, 0x25
	je	.label_608
	jmp	.label_561
.label_561:
	mov	qword ptr [rbp - 0x108], 1
	cmp	dword ptr [rbp - 0x4c], 0
	jge	.label_562
	xor	eax, eax
	mov	dword ptr [rbp - 0x75c], eax
	jmp	.label_565
.label_599:
	xor	eax, eax
	mov	dword ptr [rbp - 0x814], eax
	jmp	.label_568
.label_568:
	mov	eax, dword ptr [rbp - 0x814]
	mov	dword ptr [rbp - 0x4c], eax
	cmp	byte ptr [rbp - 0xb1], 0
	je	.label_340
	jmp	.label_580
.label_580:
	mov	qword ptr [rbp - 0x5e0], 1
	cmp	dword ptr [rbp - 0x4c], 0
	jge	.label_583
	xor	eax, eax
	mov	dword ptr [rbp - 0x818], eax
	jmp	.label_591
.label_511:
	cmp	byte ptr [rbp - 0xb1], 0
	je	.label_594
	jmp	.label_601
.label_601:
	mov	qword ptr [rbp - 0x600], 1
	cmp	dword ptr [rbp - 0x4c], 0
	jge	.label_653
	xor	eax, eax
	mov	dword ptr [rbp - 0x824], eax
	jmp	.label_610
.label_2839:
	mov	byte ptr [rbp - 0xe1], 1
	mov	dword ptr [rbp - 0xf8], 0x70
.label_2858:
	test	byte ptr [rbp - 0xf1], 1
	je	.label_623
	mov	byte ptr [rbp - 0xe2], 0
	mov	byte ptr [rbp - 0xe1], 1
.label_623:
	jmp	.label_374
.label_2828:
	mov	qword ptr [rbp - 0xf0], 1
.label_645:
	mov	rax, qword ptr [rbp - 0xf0]
	mov	rcx, qword ptr [rbp - 0x88]
	movsx	edx, byte ptr [rcx + rax]
	cmp	edx, 0x3a
	jne	.label_633
	jmp	.label_643
.label_643:
	mov	rax, qword ptr [rbp - 0xf0]
	add	rax, 1
	mov	qword ptr [rbp - 0xf0], rax
	jmp	.label_645
.label_361:
	mov	esi, 0x20
	mov	rdi, qword ptr [rbp - 0x80]
	mov	rdx, qword ptr [rbp - 0x758]
	call	memset
	mov	rdx, qword ptr [rbp - 0x758]
	add	rdx, qword ptr [rbp - 0x80]
	mov	qword ptr [rbp - 0x80], rdx
.label_557:
	jmp	.label_393
.label_393:
	test	byte ptr [rbp - 0xe1], 1
	je	.label_446
	mov	eax, 1
	mov	rdi, qword ptr [rbp - 0x80]
	sub	eax, dword ptr [rbp - 0x734]
	movsxd	rcx, eax
	add	rcx, qword ptr [rbp - 0x88]
	mov	rdx, qword ptr [rbp - 0x740]
	mov	rsi, rcx
	call	memcpy_lowcase
	mov	qword ptr [rbp - 0x928], rax
	jmp	.label_512
.label_468:
	mov	rdi, qword ptr [rbp - 0x80]
	mov	rsi, qword ptr [rbp - 0xc0]
	mov	rdx, qword ptr [rbp - 0x640]
	call	memcpy
.label_480:
	jmp	.label_508
.label_508:
	mov	rax, qword ptr [rbp - 0x640]
	add	rax, qword ptr [rbp - 0x80]
	mov	qword ptr [rbp - 0x80], rax
.label_607:
	mov	rax, qword ptr [rbp - 0x650]
	add	rax, qword ptr [rbp - 0x78]
	mov	qword ptr [rbp - 0x78], rax
	jmp	.label_326
.label_2860:
	jmp	.label_374
.label_382:
	mov	rax, qword ptr [rbp - 0x5b8]
	mov	qword ptr [rbp - 0x810], rax
.label_395:
	mov	rax, qword ptr [rbp - 0x810]
	mov	qword ptr [rbp - 0x5c8], rax
	mov	rax, qword ptr [rbp - 0x5c8]
	mov	rcx, qword ptr [rbp - 0x30]
	sub	rcx, qword ptr [rbp - 0x78]
	cmp	rax, rcx
	jb	.label_380
	mov	qword ptr [rbp - 0x20], 0
	jmp	.label_331
.label_439:
	cmp	qword ptr [rbp - 0x80], 0
	je	.label_398
	cmp	dword ptr [rbp - 0x94], 0
	jne	.label_436
	mov	rax, qword ptr [rbp - 0x600]
	cmp	rax, qword ptr [rbp - 0x608]
	jae	.label_436
	movsxd	rax, dword ptr [rbp - 0x4c]
	sub	rax, qword ptr [rbp - 0x600]
	mov	qword ptr [rbp - 0x618], rax
	cmp	dword ptr [rbp - 0x8c], 0x30
	je	.label_412
	cmp	dword ptr [rbp - 0x8c], 0x2b
	jne	.label_422
.label_412:
	mov	esi, 0x30
	mov	rdi, qword ptr [rbp - 0x80]
	mov	rdx, qword ptr [rbp - 0x618]
	call	memset
	mov	rdx, qword ptr [rbp - 0x618]
	add	rdx, qword ptr [rbp - 0x80]
	mov	qword ptr [rbp - 0x80], rdx
	jmp	.label_433
.label_613:
	cmp	dword ptr [rbp - 0x90], 0x4f
	jne	.label_639
	jmp	.label_320
.label_417:
	jmp	.label_450
.label_450:
	mov	dword ptr [rbp - 0x94], 2
	mov	rax, qword ptr [rbp - 0x40]
	mov	ecx, dword ptr [rax + 0xc]
	mov	dword ptr [rbp - 0x98], ecx
	jmp	.label_350
.label_562:
	mov	eax, dword ptr [rbp - 0x4c]
	mov	dword ptr [rbp - 0x75c], eax
.label_565:
	mov	eax, dword ptr [rbp - 0x75c]
	movsxd	rcx, eax
	mov	qword ptr [rbp - 0x110], rcx
	mov	rcx, qword ptr [rbp - 0x108]
	cmp	rcx, qword ptr [rbp - 0x110]
	jae	.label_463
	mov	rax, qword ptr [rbp - 0x110]
	mov	qword ptr [rbp - 0x768], rax
	jmp	.label_475
.label_401:
	mov	esi, 0x20
	mov	rdi, qword ptr [rbp - 0x80]
	mov	rdx, qword ptr [rbp - 0x658]
	call	memset
	mov	rdx, qword ptr [rbp - 0x658]
	add	rdx, qword ptr [rbp - 0x80]
	mov	qword ptr [rbp - 0x80], rdx
.label_494:
	jmp	.label_458
.label_458:
	test	byte ptr [rbp - 0xe1], 1
	je	.label_497
	mov	rdi, qword ptr [rbp - 0x80]
	mov	rsi, qword ptr [rbp - 0xc0]
	mov	rdx, qword ptr [rbp - 0x640]
	call	memcpy_lowcase
	mov	qword ptr [rbp - 0x858], rax
	jmp	.label_508
.label_614:
	movsxd	rax, dword ptr [rbp - 0x94]
	mov	rcx, qword ptr [rbp - 0x30]
	sub	rcx, qword ptr [rbp - 0x78]
	cmp	rax, rcx
	jb	.label_511
	mov	qword ptr [rbp - 0x20], 0
	jmp	.label_331
.label_605:
	mov	eax, dword ptr [rbp - 0x4c]
	mov	dword ptr [rbp - 0x880], eax
.label_540:
	mov	eax, dword ptr [rbp - 0x880]
	movsxd	rcx, eax
	mov	qword ptr [rbp - 0x6d8], rcx
	mov	rcx, qword ptr [rbp - 0x6d0]
	cmp	rcx, qword ptr [rbp - 0x6d8]
	jae	.label_524
	mov	rax, qword ptr [rbp - 0x6d8]
	mov	qword ptr [rbp - 0x888], rax
	jmp	.label_533
.label_389:
	mov	eax, dword ptr [rbp - 0x4c]
	mov	dword ptr [rbp - 0x7d4], eax
.label_413:
	mov	eax, dword ptr [rbp - 0x7d4]
	movsxd	rcx, eax
	mov	qword ptr [rbp - 0x598], rcx
	mov	rcx, qword ptr [rbp - 0x590]
	cmp	rcx, qword ptr [rbp - 0x598]
	jae	.label_542
	mov	rax, qword ptr [rbp - 0x598]
	mov	qword ptr [rbp - 0x7e0], rax
	jmp	.label_551
.label_339:
	mov	eax, 0x64
	mov	rcx, qword ptr [rbp - 0x40]
	mov	edx, dword ptr [rcx + 0x14]
	mov	dword ptr [rbp - 0x8d8], eax
	mov	eax, edx
	cdq	
	mov	esi, dword ptr [rbp - 0x8d8]
	idiv	esi
	mov	dword ptr [rbp - 0x700], edx
	cmp	dword ptr [rbp - 0x700], 0
	jge	.label_560
	mov	rax, qword ptr [rbp - 0x40]
	cmp	dword ptr [rax + 0x14], 0xfffff894
	jge	.label_570
	xor	eax, eax
	sub	eax, dword ptr [rbp - 0x700]
	mov	dword ptr [rbp - 0x8dc], eax
	jmp	.label_575
.label_602:
	lea	rax, [rbp - 0xe0]
	movsxd	rcx, dword ptr [rbp - 0x94]
	add	rax, 0x17
	mov	rdx, qword ptr [rbp - 0xc0]
	sub	rax, rdx
	sub	rcx, rax
	cmp	byte ptr [rbp - 0xb1], 0
	setne	sil
	xor	sil, 0xff
	xor	sil, 0xff
	and	sil, 1
	movzx	edi, sil
	movsxd	rax, edi
	sub	rcx, rax
	mov	edi, ecx
	mov	dword ptr [rbp - 0x5d4], edi
	cmp	dword ptr [rbp - 0x5d4], 0
	jle	.label_581
	cmp	dword ptr [rbp - 0x8c], 0x5f
	jne	.label_614
	movsxd	rax, dword ptr [rbp - 0x5d4]
	mov	rcx, qword ptr [rbp - 0x30]
	sub	rcx, qword ptr [rbp - 0x78]
	cmp	rax, rcx
	jb	.label_618
	mov	qword ptr [rbp - 0x20], 0
	jmp	.label_331
.label_2853:
	cmp	dword ptr [rbp - 0x90], 0x45
	jne	.label_488
	jmp	.label_320
.label_631:
	cmp	qword ptr [rbp - 0x80], 0
	je	.label_563
	cmp	dword ptr [rbp - 0x94], 0
	jne	.label_332
	mov	rax, qword ptr [rbp - 0x6d0]
	cmp	rax, qword ptr [rbp - 0x6d8]
	jae	.label_332
	movsxd	rax, dword ptr [rbp - 0x4c]
	sub	rax, qword ptr [rbp - 0x6d0]
	mov	qword ptr [rbp - 0x6e8], rax
	cmp	dword ptr [rbp - 0x8c], 0x30
	je	.label_600
	cmp	dword ptr [rbp - 0x8c], 0x2b
	jne	.label_362
.label_600:
	mov	esi, 0x30
	mov	rdi, qword ptr [rbp - 0x80]
	mov	rdx, qword ptr [rbp - 0x6e8]
	call	memset
	mov	rdx, qword ptr [rbp - 0x6e8]
	add	rdx, qword ptr [rbp - 0x80]
	mov	qword ptr [rbp - 0x80], rdx
	jmp	.label_333
.label_399:
	mov	rax, qword ptr [rbp - 0x668]
	mov	qword ptr [rbp - 0x870], rax
.label_435:
	mov	rax, qword ptr [rbp - 0x870]
	mov	qword ptr [rbp - 0x678], rax
	mov	rax, qword ptr [rbp - 0x678]
	mov	rcx, qword ptr [rbp - 0x30]
	sub	rcx, qword ptr [rbp - 0x78]
	cmp	rax, rcx
	jb	.label_467
	mov	qword ptr [rbp - 0x20], 0
	jmp	.label_331
.label_621:
	mov	esi, 0x20
	mov	rdi, qword ptr [rbp - 0x80]
	mov	rdx, qword ptr [rbp - 0x140]
	call	memset
	mov	rdx, qword ptr [rbp - 0x140]
	add	rdx, qword ptr [rbp - 0x80]
	mov	qword ptr [rbp - 0x80], rdx
.label_553:
	jmp	.label_483
.label_483:
	mov	rax, qword ptr [rbp - 0x88]
	mov	cl, byte ptr [rax]
	mov	rax, qword ptr [rbp - 0x80]
	mov	byte ptr [rax], cl
	mov	rax, qword ptr [rbp - 0x128]
	add	rax, qword ptr [rbp - 0x80]
	mov	qword ptr [rbp - 0x80], rax
.label_337:
	mov	rax, qword ptr [rbp - 0x138]
	add	rax, qword ptr [rbp - 0x78]
	mov	qword ptr [rbp - 0x78], rax
	jmp	.label_326
.label_644:
	cmp	qword ptr [rbp - 0x80], 0
	je	.label_347
	cmp	dword ptr [rbp - 0x94], 0
	jne	.label_400
	mov	rax, qword ptr [rbp - 0x150]
	cmp	rax, qword ptr [rbp - 0x158]
	jae	.label_400
	movsxd	rax, dword ptr [rbp - 0x4c]
	sub	rax, qword ptr [rbp - 0x150]
	mov	qword ptr [rbp - 0x168], rax
	cmp	dword ptr [rbp - 0x8c], 0x30
	je	.label_409
	cmp	dword ptr [rbp - 0x8c], 0x2b
	jne	.label_455
.label_409:
	mov	esi, 0x30
	mov	rdi, qword ptr [rbp - 0x80]
	mov	rdx, qword ptr [rbp - 0x168]
	call	memset
	mov	rdx, qword ptr [rbp - 0x168]
	add	rdx, qword ptr [rbp - 0x80]
	mov	qword ptr [rbp - 0x80], rdx
	jmp	.label_620
.label_2986:
	jmp	.label_520
.label_520:
	jmp	.label_441
.label_441:
	mov	dword ptr [rbp - 0x94], 6
	mov	dword ptr [rbp - 0xa4], 4
	imul	eax, dword ptr [rbp - 0x728], 0x64
	add	eax, dword ptr [rbp - 0x72c]
	mov	dword ptr [rbp - 0x9c], eax
	jmp	.label_445
.label_378:
	test	byte ptr [rbp - 0xe2], 1
	je	.label_460
	mov	rdi, qword ptr [rbp - 0x80]
	mov	rsi, qword ptr [rbp - 0x70]
	mov	rdx, qword ptr [rbp - 0x708]
	call	memcpy_uppcase
	mov	qword ptr [rbp - 0x8f8], rax
	jmp	.label_466
.label_467:
	cmp	qword ptr [rbp - 0x80], 0
	je	.label_474
	cmp	dword ptr [rbp - 0x94], 0
	jne	.label_381
	mov	rax, qword ptr [rbp - 0x668]
	cmp	rax, qword ptr [rbp - 0x670]
	jae	.label_381
	movsxd	rax, dword ptr [rbp - 0x4c]
	sub	rax, qword ptr [rbp - 0x668]
	mov	qword ptr [rbp - 0x680], rax
	cmp	dword ptr [rbp - 0x8c], 0x30
	je	.label_492
	cmp	dword ptr [rbp - 0x8c], 0x2b
	jne	.label_646
.label_492:
	mov	esi, 0x30
	mov	rdi, qword ptr [rbp - 0x80]
	mov	rdx, qword ptr [rbp - 0x680]
	call	memset
	mov	rdx, qword ptr [rbp - 0x680]
	add	rdx, qword ptr [rbp - 0x80]
	mov	qword ptr [rbp - 0x80], rdx
	jmp	.label_587
.label_585:
	mov	esi, 0x20
	mov	rdi, qword ptr [rbp - 0x80]
	mov	rdx, qword ptr [rbp - 0x638]
	call	memset
	mov	rdx, qword ptr [rbp - 0x638]
	add	rdx, qword ptr [rbp - 0x80]
	mov	qword ptr [rbp - 0x80], rdx
.label_596:
	jmp	.label_525
.label_525:
	mov	al, byte ptr [rbp - 0xb1]
	mov	rcx, qword ptr [rbp - 0x80]
	mov	byte ptr [rcx], al
	mov	rcx, qword ptr [rbp - 0x620]
	add	rcx, qword ptr [rbp - 0x80]
	mov	qword ptr [rbp - 0x80], rcx
.label_564:
	mov	rax, qword ptr [rbp - 0x630]
	add	rax, qword ptr [rbp - 0x78]
	mov	qword ptr [rbp - 0x78], rax
	jmp	.label_484
.label_484:
	jmp	.label_541
.label_541:
	jmp	.label_543
.label_543:
	jmp	.label_545
.label_545:
	lea	rax, [rbp - 0xe0]
	add	rax, 0x17
	mov	rcx, qword ptr [rbp - 0xc0]
	sub	rax, rcx
	mov	qword ptr [rbp - 0x640], rax
	cmp	dword ptr [rbp - 0x4c], 0
	jge	.label_546
	xor	eax, eax
	mov	dword ptr [rbp - 0x844], eax
	jmp	.label_558
.label_408:
	mov	rax, qword ptr [rbp - 0x128]
	mov	qword ptr [rbp - 0x7b0], rax
.label_366:
	mov	rax, qword ptr [rbp - 0x7b0]
	mov	qword ptr [rbp - 0x138], rax
	mov	rax, qword ptr [rbp - 0x138]
	mov	rcx, qword ptr [rbp - 0x30]
	sub	rcx, qword ptr [rbp - 0x78]
	cmp	rax, rcx
	jb	.label_628
	mov	qword ptr [rbp - 0x20], 0
	jmp	.label_331
.label_2850:
	cmp	dword ptr [rbp - 0x90], 0x4f
	jne	.label_578
	jmp	.label_320
.label_2832:
	cmp	dword ptr [rbp - 0x90], 0
	je	.label_586
	jmp	.label_320
.label_577:
	xor	eax, eax
	mov	ecx, 0x2b
	mov	dl, byte ptr [rbp - 0x9e]
	test	dl, 1
	cmovne	eax, ecx
	mov	dword ptr [rbp - 0x804], eax
.label_582:
	mov	eax, dword ptr [rbp - 0x804]
	mov	cl, al
	mov	byte ptr [rbp - 0xb1], cl
	cmp	dword ptr [rbp - 0x8c], 0x2d
	jne	.label_602
	cmp	byte ptr [rbp - 0xb1], 0
	je	.label_611
	jmp	.label_616
.label_616:
	mov	qword ptr [rbp - 0x5b8], 1
	cmp	dword ptr [rbp - 0x4c], 0
	jge	.label_617
	xor	eax, eax
	mov	dword ptr [rbp - 0x808], eax
	jmp	.label_554
.label_524:
	mov	rax, qword ptr [rbp - 0x6d0]
	mov	qword ptr [rbp - 0x888], rax
.label_533:
	mov	rax, qword ptr [rbp - 0x888]
	mov	qword ptr [rbp - 0x6e0], rax
	mov	rax, qword ptr [rbp - 0x6e0]
	mov	rcx, qword ptr [rbp - 0x30]
	sub	rcx, qword ptr [rbp - 0x78]
	cmp	rax, rcx
	jb	.label_631
	mov	qword ptr [rbp - 0x20], 0
	jmp	.label_331
.label_2835:
	cmp	dword ptr [rbp - 0x90], 0x45
	jne	.label_648
	jmp	.label_320
.label_619:
	jmp	.label_652
.label_652:
	mov	dword ptr [rbp - 0x94], 2
	mov	eax, dword ptr [rbp - 0x68]
	mov	dword ptr [rbp - 0x98], eax
	jmp	.label_353
.label_323:
	cmp	dword ptr [rbp - 0x8c], 0
	jne	.label_328
	mov	eax, dword ptr [rbp - 0x48]
	mov	dword ptr [rbp - 0x8c], eax
.label_328:
	xor	eax, eax
	mov	cl, al
	cmp	dword ptr [rbp - 0x8c], 0x2b
	mov	byte ptr [rbp - 0x7f6], cl
	jne	.label_335
	mov	al, 1
	mov	ecx, 0x270f
	mov	edx, 0x63
	cmp	dword ptr [rbp - 0x94], 2
	cmove	ecx, edx
	cmp	ecx, dword ptr [rbp - 0x9c]
	mov	byte ptr [rbp - 0x7f7], al
	jb	.label_343
	mov	eax, dword ptr [rbp - 0x94]
	cmp	eax, dword ptr [rbp - 0x4c]
	setl	cl
	mov	byte ptr [rbp - 0x7f7], cl
.label_343:
	mov	al, byte ptr [rbp - 0x7f7]
	mov	byte ptr [rbp - 0x7f6], al
.label_335:
	mov	al, byte ptr [rbp - 0x7f6]
	and	al, 1
	mov	byte ptr [rbp - 0x9e], al
	jmp	.label_367
.label_606:
	jmp	.label_377
.label_377:
	mov	dword ptr [rbp - 0x94], 2
	mov	rax, qword ptr [rbp - 0x40]
	mov	ecx, dword ptr [rax + 8]
	mov	dword ptr [rbp - 0x98], ecx
	jmp	.label_353
.label_434:
	jmp	.label_387
.label_387:
	mov	dword ptr [rbp - 0x94], 2
	mov	eax, dword ptr [rbp - 0x68]
	mov	dword ptr [rbp - 0x98], eax
	jmp	.label_350
.label_345:
	lea	rax, [rbp - 0x580]
	mov	rdi, qword ptr [rbp - 0x80]
	add	rax, 1
	mov	rdx, qword ptr [rbp - 0x590]
	mov	rsi, rax
	call	memcpy
.label_358:
	jmp	.label_432
.label_432:
	mov	rax, qword ptr [rbp - 0x590]
	add	rax, qword ptr [rbp - 0x80]
	mov	qword ptr [rbp - 0x80], rax
.label_402:
	mov	rax, qword ptr [rbp - 0x5a0]
	add	rax, qword ptr [rbp - 0x78]
	mov	qword ptr [rbp - 0x78], rax
	jmp	.label_379
.label_379:
	jmp	.label_326
.label_523:
	jmp	.label_421
.label_421:
	mov	dword ptr [rbp - 0x94], 1
	mov	rax, qword ptr [rbp - 0x40]
	mov	ecx, dword ptr [rax + 0x18]
	mov	dword ptr [rbp - 0x98], ecx
	jmp	.label_350
.label_373:
	mov	rax, qword ptr [rbp - 0x150]
	mov	qword ptr [rbp - 0x7c0], rax
.label_443:
	mov	rax, qword ptr [rbp - 0x7c0]
	mov	qword ptr [rbp - 0x160], rax
	mov	rax, qword ptr [rbp - 0x160]
	mov	rcx, qword ptr [rbp - 0x30]
	sub	rcx, qword ptr [rbp - 0x78]
	cmp	rax, rcx
	jb	.label_644
	mov	qword ptr [rbp - 0x20], 0
	jmp	.label_331
.label_532:
	mov	eax, dword ptr [rbp - 0x6c4]
	mov	dword ptr [rbp - 0x87c], eax
.label_592:
	mov	eax, dword ptr [rbp - 0x87c]
	add	eax, 0x30
	mov	cl, al
	mov	rdx, qword ptr [rbp - 0xc0]
	mov	rsi, rdx
	add	rsi, -1
	mov	qword ptr [rbp - 0xc0], rsi
	mov	byte ptr [rdx - 1], cl
	cmp	qword ptr [rbp - 0x6c0], 0
	jne	.label_461
	mov	dword ptr [rbp - 0x94], 1
	mov	byte ptr [rbp - 0x9e], 0
	jmp	.label_478
.label_581:
	cmp	byte ptr [rbp - 0xb1], 0
	je	.label_484
	jmp	.label_490
.label_490:
	mov	qword ptr [rbp - 0x620], 1
	cmp	dword ptr [rbp - 0x4c], 0
	jge	.label_493
	xor	eax, eax
	mov	dword ptr [rbp - 0x834], eax
	jmp	.label_500
.label_396:
	lea	rax, [rbp - 0xe0]
	add	rax, 0x17
	mov	qword ptr [rbp - 0xc0], rax
	test	byte ptr [rbp - 0x9d], 1
	je	.label_503
	xor	eax, eax
	sub	eax, dword ptr [rbp - 0x9c]
	mov	dword ptr [rbp - 0x9c], eax
.label_503:
	jmp	.label_515
.label_515:
	mov	eax, dword ptr [rbp - 0xa4]
	and	eax, 1
	cmp	eax, 0
	je	.label_519
	mov	rax, qword ptr [rbp - 0xc0]
	mov	rcx, rax
	add	rcx, -1
	mov	qword ptr [rbp - 0xc0], rcx
	mov	byte ptr [rax - 1], 0x3a
.label_519:
	mov	eax, 0xa
	mov	ecx, dword ptr [rbp - 0xa4]
	sar	ecx, 1
	mov	dword ptr [rbp - 0xa4], ecx
	mov	ecx, dword ptr [rbp - 0x9c]
	mov	dword ptr [rbp - 0x7fc], eax
	mov	eax, ecx
	xor	edx, edx
	mov	ecx, dword ptr [rbp - 0x7fc]
	div	ecx
	add	edx, 0x30
	mov	sil, dl
	mov	rdi, qword ptr [rbp - 0xc0]
	mov	r8, rdi
	add	r8, -1
	mov	qword ptr [rbp - 0xc0], r8
	mov	byte ptr [rdi - 1], sil
	mov	edx, dword ptr [rbp - 0x9c]
	mov	eax, edx
	xor	edx, edx
	div	ecx
	mov	dword ptr [rbp - 0x9c], eax
	mov	al, 1
	cmp	dword ptr [rbp - 0x9c], 0
	mov	byte ptr [rbp - 0x7fd], al
	jne	.label_527
	cmp	dword ptr [rbp - 0xa4], 0
	setne	al
	mov	byte ptr [rbp - 0x7fd], al
.label_527:
	mov	al, byte ptr [rbp - 0x7fd]
	test	al, 1
	jne	.label_515
	jmp	.label_478
.label_478:
	mov	eax, dword ptr [rbp - 0x94]
	cmp	eax, dword ptr [rbp - 0x4c]
	jge	.label_487
	mov	eax, dword ptr [rbp - 0x4c]
	mov	dword ptr [rbp - 0x94], eax
.label_487:
	test	byte ptr [rbp - 0x9d], 1
	je	.label_577
	mov	eax, 0x2d
	mov	dword ptr [rbp - 0x804], eax
	jmp	.label_582
.label_430:
	mov	eax, 1
	mov	rdi, qword ptr [rbp - 0x80]
	sub	eax, dword ptr [rbp - 0x734]
	movsxd	rcx, eax
	add	rcx, qword ptr [rbp - 0x88]
	mov	rdx, qword ptr [rbp - 0x740]
	mov	rsi, rcx
	call	memcpy
.label_550:
	jmp	.label_512
.label_512:
	mov	rax, qword ptr [rbp - 0x740]
	add	rax, qword ptr [rbp - 0x80]
	mov	qword ptr [rbp - 0x80], rax
.label_424:
	mov	rax, qword ptr [rbp - 0x750]
	add	rax, qword ptr [rbp - 0x78]
	mov	qword ptr [rbp - 0x78], rax
	jmp	.label_326
.label_326:
	jmp	.label_442
.label_442:
	mov	dword ptr [rbp - 0x4c], 0xffffffff
	mov	rax, qword ptr [rbp - 0x88]
	add	rax, 1
	mov	qword ptr [rbp - 0x88], rax
	jmp	.label_622
.label_444:
	mov	eax, dword ptr [rbp - 0x4c]
	mov	dword ptr [rbp - 0x65c], eax
.label_635:
	cmp	dword ptr [rbp - 0x65c], 9
	jge	.label_630
	mov	eax, 0xa
	mov	ecx, dword ptr [rbp - 0x98]
	mov	dword ptr [rbp - 0x864], eax
	mov	eax, ecx
	cdq	
	mov	ecx, dword ptr [rbp - 0x864]
	idiv	ecx
	mov	dword ptr [rbp - 0x98], eax
	mov	eax, dword ptr [rbp - 0x65c]
	add	eax, 1
	mov	dword ptr [rbp - 0x65c], eax
	jmp	.label_635
.label_388:
	mov	esi, 0x20
	mov	rdi, qword ptr [rbp - 0x80]
	mov	rdx, qword ptr [rbp - 0x5f8]
	call	memset
	mov	rdx, qword ptr [rbp - 0x5f8]
	add	rdx, qword ptr [rbp - 0x80]
	mov	qword ptr [rbp - 0x80], rdx
.label_566:
	jmp	.label_392
.label_392:
	mov	al, byte ptr [rbp - 0xb1]
	mov	rcx, qword ptr [rbp - 0x80]
	mov	byte ptr [rcx], al
	mov	rcx, qword ptr [rbp - 0x5e0]
	add	rcx, qword ptr [rbp - 0x80]
	mov	qword ptr [rbp - 0x80], rcx
.label_426:
	mov	rax, qword ptr [rbp - 0x5f0]
	add	rax, qword ptr [rbp - 0x78]
	mov	qword ptr [rbp - 0x78], rax
	jmp	.label_340
.label_340:
	jmp	.label_346
.label_583:
	mov	eax, dword ptr [rbp - 0x4c]
	mov	dword ptr [rbp - 0x818], eax
.label_591:
	mov	eax, dword ptr [rbp - 0x818]
	movsxd	rcx, eax
	mov	qword ptr [rbp - 0x5e8], rcx
	mov	rcx, qword ptr [rbp - 0x5e0]
	cmp	rcx, qword ptr [rbp - 0x5e8]
	jae	.label_352
	mov	rax, qword ptr [rbp - 0x5e8]
	mov	qword ptr [rbp - 0x820], rax
	jmp	.label_364
.label_353:
	cmp	dword ptr [rbp - 0x8c], 0
	jne	.label_372
	mov	dword ptr [rbp - 0x8c], 0x5f
.label_372:
	jmp	.label_350
.label_350:
	cmp	dword ptr [rbp - 0x98], 0
	setl	al
	and	al, 1
	mov	byte ptr [rbp - 0x9d], al
	mov	ecx, dword ptr [rbp - 0x98]
	mov	dword ptr [rbp - 0x9c], ecx
.label_321:
	mov	byte ptr [rbp - 0x9e], 0
.label_367:
	mov	dword ptr [rbp - 0xa4], 0
.label_590:
	cmp	dword ptr [rbp - 0x90], 0x4f
	jne	.label_396
	test	byte ptr [rbp - 0x9d], 1
	jne	.label_396
	jmp	.label_374
.label_656:
	mov	eax, dword ptr [rbp - 0x4c]
	mov	dword ptr [rbp - 0x7a4], eax
.label_449:
	mov	eax, dword ptr [rbp - 0x7a4]
	movsxd	rcx, eax
	mov	qword ptr [rbp - 0x130], rcx
	mov	rcx, qword ptr [rbp - 0x128]
	cmp	rcx, qword ptr [rbp - 0x130]
	jae	.label_408
	mov	rax, qword ptr [rbp - 0x130]
	mov	qword ptr [rbp - 0x7b0], rax
	jmp	.label_366
.label_595:
	jmp	.label_428
.label_428:
	mov	eax, 7
	mov	dword ptr [rbp - 0x94], 2
	mov	ecx, dword ptr [rbp - 0x6f4]
	mov	dword ptr [rbp - 0x8cc], eax
	mov	eax, ecx
	cdq	
	mov	ecx, dword ptr [rbp - 0x8cc]
	idiv	ecx
	add	eax, 1
	mov	dword ptr [rbp - 0x98], eax
	jmp	.label_350
.label_586:
	movabs	rax, OFFSET FLAT:label_452
	mov	qword ptr [rbp - 0xb0], rax
	jmp	.label_411
.label_2826:
	mov	rax, qword ptr [rbp - 0x88]
	add	rax, -1
	mov	qword ptr [rbp - 0x88], rax
.label_640:
	jmp	.label_320
.label_320:
	mov	dword ptr [rbp - 0x734], 1
.label_556:
	mov	eax, 1
	sub	eax, dword ptr [rbp - 0x734]
	movsxd	rcx, eax
	mov	rdx, qword ptr [rbp - 0x88]
	movsx	eax, byte ptr [rdx + rcx]
	cmp	eax, 0x25
	je	.label_470
	jmp	.label_481
.label_481:
	mov	eax, dword ptr [rbp - 0x734]
	add	eax, 1
	mov	dword ptr [rbp - 0x734], eax
	jmp	.label_556
.label_559:
	xor	eax, eax
	mov	cl, al
	mov	eax, 0x64
	mov	rdx, qword ptr [rbp - 0x40]
	mov	esi, dword ptr [rdx + 0x14]
	mov	dword ptr [rbp - 0x7f4], eax
	mov	eax, esi
	cdq	
	mov	esi, dword ptr [rbp - 0x7f4]
	idiv	esi
	add	eax, 0x13
	mov	dword ptr [rbp - 0x5ac], eax
	mov	rdi, qword ptr [rbp - 0x40]
	mov	eax, dword ptr [rdi + 0x14]
	cdq	
	idiv	esi
	cmp	edx, 0
	mov	byte ptr [rbp - 0x7f5], cl
	jge	.label_489
	xor	eax, eax
	cmp	eax, dword ptr [rbp - 0x5ac]
	setl	cl
	mov	byte ptr [rbp - 0x7f5], cl
.label_489:
	mov	al, byte ptr [rbp - 0x7f5]
	and	al, 1
	movzx	ecx, al
	mov	edx, dword ptr [rbp - 0x5ac]
	sub	edx, ecx
	mov	dword ptr [rbp - 0x5ac], edx
	mov	dword ptr [rbp - 0x94], 2
	mov	rax, qword ptr [rbp - 0x40]
	cmp	dword ptr [rax + 0x14], 0xfffff894
	setl	cl
	and	cl, 1
	mov	byte ptr [rbp - 0x9d], cl
	mov	edx, dword ptr [rbp - 0x5ac]
	mov	dword ptr [rbp - 0x9c], edx
	jmp	.label_323
.label_391:
	cmp	qword ptr [rbp - 0x80], 0
	je	.label_426
	cmp	dword ptr [rbp - 0x94], 0
	jne	.label_392
	mov	rax, qword ptr [rbp - 0x5e0]
	cmp	rax, qword ptr [rbp - 0x5e8]
	jae	.label_392
	movsxd	rax, dword ptr [rbp - 0x4c]
	sub	rax, qword ptr [rbp - 0x5e0]
	mov	qword ptr [rbp - 0x5f8], rax
	cmp	dword ptr [rbp - 0x8c], 0x30
	je	.label_657
	cmp	dword ptr [rbp - 0x8c], 0x2b
	jne	.label_388
.label_657:
	mov	esi, 0x30
	mov	rdi, qword ptr [rbp - 0x80]
	mov	rdx, qword ptr [rbp - 0x5f8]
	call	memset
	mov	rdx, qword ptr [rbp - 0x5f8]
	add	rdx, qword ptr [rbp - 0x80]
	mov	qword ptr [rbp - 0x80], rdx
	jmp	.label_566
.label_363:
	cmp	qword ptr [rbp - 0x80], 0
	je	.label_571
	cmp	dword ptr [rbp - 0x94], 0
	jne	.label_429
	mov	rax, qword ptr [rbp - 0x108]
	cmp	rax, qword ptr [rbp - 0x110]
	jae	.label_429
	movsxd	rax, dword ptr [rbp - 0x4c]
	sub	rax, qword ptr [rbp - 0x108]
	mov	qword ptr [rbp - 0x120], rax
	cmp	dword ptr [rbp - 0x8c], 0x30
	je	.label_588
	cmp	dword ptr [rbp - 0x8c], 0x2b
	jne	.label_598
.label_588:
	mov	esi, 0x30
	mov	rdi, qword ptr [rbp - 0x80]
	mov	rdx, qword ptr [rbp - 0x120]
	call	memset
	mov	rdx, qword ptr [rbp - 0x120]
	add	rdx, qword ptr [rbp - 0x80]
	mov	qword ptr [rbp - 0x80], rdx
	jmp	.label_612
.label_724:
	mov	esi, 0x3f
	mov	eax, 0xa
	mov	edx, eax
	lea	rcx, [rbp - 0x14]
	mov	rdi, qword ptr [rbp - 8]
	mov	eax, dword ptr [rdi + 0xa8]
	mov	edi, eax
	mov	r8b,  byte ptr [byte ptr [+ (rdi * 1) + filetype_letter]]
	mov	byte ptr [rbp - 0x14], r8b
	add	rcx, 1
	mov	rdi, rcx
	call	memset
	mov	byte ptr [rbp - 9], 0
.label_720:
	test	byte ptr [byte ptr [any_has_acl]],  1
	jne	.label_727
	mov	byte ptr [rbp - 0xa], 0
	jmp	.label_712
.label_727:
	mov	rax, qword ptr [rbp - 8]
	cmp	dword ptr [rax + 0xbc], 1
	jne	.label_714
	mov	byte ptr [rbp - 0xa], 0x2e
	jmp	.label_716
.label_698:
	mov	rax, qword ptr [rbp - 8]
	mov	rdi, qword ptr [rax + 0x48]
	call	unsigned_file_size
	mov	ecx, 1
	lea	rsi, [rbp - 0x1480]
	mov	edx,  dword ptr [dword ptr [file_human_output_opts]]
	mov	r8,  qword ptr [word ptr [file_output_block_size]]
	mov	rdi, rax
	call	human_readable
	mov	qword ptr [rbp - 0x1550], rax
.label_702:
	mov	rax, qword ptr [rbp - 0x1550]
	xor	esi, esi
	mov	qword ptr [rbp - 0x1488], rax
	mov	ecx,  dword ptr [dword ptr [file_size_width]]
	mov	rdi, qword ptr [rbp - 0x1488]
	mov	dword ptr [rbp - 0x1554], ecx
	call	gnu_mbswidth
	mov	ecx, dword ptr [rbp - 0x1554]
	sub	ecx, eax
	mov	dword ptr [rbp - 0x148c], ecx
.label_680:
	xor	eax, eax
	cmp	eax, dword ptr [rbp - 0x148c]
	jge	.label_677
	mov	rax, qword ptr [rbp - 0xe60]
	mov	rcx, rax
	add	rcx, 1
	mov	qword ptr [rbp - 0xe60], rcx
	mov	byte ptr [rax], 0x20
	mov	eax, dword ptr [rbp - 0x148c]
	add	eax, -1
	mov	dword ptr [rbp - 0x148c], eax
	jmp	.label_680
.label_719:
	mov	rax, qword ptr [rbp - 8]
	add	rax, 0x18
	mov	rdi, rax
	call	get_stat_mtime
	mov	qword ptr [rbp - 0xec8], rax
	mov	qword ptr [rbp - 0xec0], rdx
	mov	rax, qword ptr [rbp - 0xec8]
	mov	qword ptr [rbp - 0xe70], rax
	mov	rax, qword ptr [rbp - 0xec0]
	mov	qword ptr [rbp - 0xe68], rax
	jmp	.label_718
.label_677:
	jmp	.label_688
.label_688:
	mov	rax, qword ptr [rbp - 0x1488]
	mov	rcx, rax
	add	rcx, 1
	mov	qword ptr [rbp - 0x1488], rcx
	mov	dl, byte ptr [rax]
	mov	rax, qword ptr [rbp - 0xe60]
	mov	rcx, rax
	add	rcx, 1
	mov	qword ptr [rbp - 0xe60], rcx
	mov	byte ptr [rax], dl
	cmp	dl, 0
	je	.label_705
	jmp	.label_688
.label_695:
	cmp	dword ptr [dword ptr [indicator_style]],  0
	je	.label_682
	mov	rax, qword ptr [rbp - 8]
	mov	cl, byte ptr [rax + 0xb8]
	mov	rax, qword ptr [rbp - 8]
	mov	esi, dword ptr [rax + 0x30]
	mov	rax, qword ptr [rbp - 8]
	mov	edx, dword ptr [rax + 0xa8]
	and	cl, 1
	movzx	edi, cl
	call	print_type_indicator
	mov	byte ptr [rbp - 0x158a], al
.label_682:
	jmp	.label_674
.label_674:
	add	rsp, 0x1590
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x407d59
	.globl sub_407d59
	.type sub_407d59, @function
sub_407d59:

	nop	dword ptr [rax]
.label_729:
	mov	rax, qword ptr [rbp - 0xe60]
	mov	byte ptr [rax - 1], 0x20
.label_709:
	lea	rdx, [rbp - 0x14]
	mov	rdi, qword ptr [rbp - 0xe60]
	mov	ecx,  dword ptr [dword ptr [nlink_width]]
	mov	rax, qword ptr [rbp - 8]
	test	byte ptr [rax + 0xb8], 1
	mov	qword ptr [rbp - 0x1500], rdx
	mov	qword ptr [rbp - 0x1508], rdi
	mov	dword ptr [rbp - 0x150c], ecx
	jne	.label_687
	movabs	rax, OFFSET FLAT:label_684
	mov	qword ptr [rbp - 0x1518], rax
	jmp	.label_693
.label_696:
	mov	rax, qword ptr [rbp - 8]
	test	byte ptr [rax + 0xb8], 1
	jne	.label_698
	movabs	rax, OFFSET FLAT:label_684
	mov	qword ptr [rbp - 0x1550], rax
	jmp	.label_702
.label_664:
	lea	rsi, [rbp - 0x14c0]
	mov	rdi, qword ptr [rbp - 0xe70]
	call	timetostr
	mov	qword ptr [rbp - 0x1570], rax
.label_685:
	mov	rax, qword ptr [rbp - 0x1570]
	movabs	rsi, OFFSET FLAT:label_707
	mov	rdi, qword ptr [rbp - 0x1560]
	mov	edx, dword ptr [rbp - 0x1564]
	mov	rcx, rax
	mov	al, 0
	call	sprintf
	mov	rdi, qword ptr [rbp - 0xe60]
	mov	dword ptr [rbp - 0x1574], eax
	call	strlen
	add	rax, qword ptr [rbp - 0xe60]
	mov	qword ptr [rbp - 0xe60], rax
.label_686:
	jmp	.label_671
.label_671:
	lea	rdi, [rbp - 0xe50]
	mov	rsi,  qword ptr [word ptr [stdout]]
	call	fputs_unlocked
	lea	rsi, [rbp - 0xe50]
	mov	rdi, qword ptr [rbp - 0xe60]
	sub	rdi, rsi
	add	rdi,  qword ptr [word ptr [dired_pos]]
	mov	qword ptr [word ptr [dired_pos]],  rdi
	mov	dword ptr [rbp - 0x1578], eax
	xor	esi, esi
	movabs	rdx, OFFSET FLAT:dired_obstack
	lea	rax, [rbp - 0xe50]
	mov	rdi, qword ptr [rbp - 8]
	mov	rcx, qword ptr [rbp - 0xe60]
	sub	rcx, rax
	call	print_name_with_quoting
	mov	qword ptr [rbp - 0x14c8], rax
	mov	rax, qword ptr [rbp - 8]
	cmp	dword ptr [rax + 0xa8], 6
	jne	.label_695
	mov	rax, qword ptr [rbp - 8]
	cmp	qword ptr [rax + 8], 0
	je	.label_700
	jmp	.label_704
.label_704:
	movabs	rdi, OFFSET FLAT:label_706
	mov	rsi,  qword ptr [word ptr [stdout]]
	call	fputs_unlocked
	mov	rsi,  qword ptr [word ptr [dired_pos]]
	add	rsi, 4
	mov	qword ptr [word ptr [dired_pos]],  rsi
	mov	dword ptr [rbp - 0x157c], eax
	mov	esi, 1
	xor	eax, eax
	mov	edx, eax
	lea	rcx, [rbp - 0xe50]
	mov	rdi, qword ptr [rbp - 8]
	mov	r8, qword ptr [rbp - 0xe60]
	sub	r8, rcx
	add	r8, qword ptr [rbp - 0x14c8]
	add	r8, 4
	mov	rcx, r8
	call	print_name_with_quoting
	cmp	dword ptr [dword ptr [indicator_style]],  0
	mov	qword ptr [rbp - 0x1588], rax
	je	.label_669
	mov	edi, 1
	xor	edx, edx
	mov	rax, qword ptr [rbp - 8]
	mov	esi, dword ptr [rax + 0xac]
	call	print_type_indicator
	mov	byte ptr [rbp - 0x1589], al
.label_669:
	jmp	.label_700
.label_700:
	jmp	.label_674
	.section	.text
	.align	32
	#Procedure 0x407f70

	.globl print_long_format
	.type print_long_format, @function
print_long_format:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x1590
	mov	qword ptr [rbp - 8], rdi
	mov	rdi, qword ptr [rbp - 8]
	test	byte ptr [rdi + 0xb8], 1
	je	.label_724
	lea	rsi, [rbp - 0x14]
	mov	rax, qword ptr [rbp - 8]
	add	rax, 0x18
	mov	rdi, rax
	call	filemodestring
	jmp	.label_720
.label_722:
	call	abort
.label_715:
	mov	rax, qword ptr [rbp - 8]
	add	rax, 0x18
	mov	rdi, rax
	call	get_stat_atime
	mov	qword ptr [rbp - 0xed8], rax
	mov	qword ptr [rbp - 0xed0], rdx
	mov	rax, qword ptr [rbp - 0xed8]
	mov	qword ptr [rbp - 0xe70], rax
	mov	rax, qword ptr [rbp - 0xed0]
	mov	qword ptr [rbp - 0xe68], rax
	jmp	.label_718
.label_705:
	mov	rax, qword ptr [rbp - 0xe60]
	mov	byte ptr [rax - 1], 0x20
.label_708:
	mov	qword ptr [rbp - 0xe58], 0
	mov	rax, qword ptr [rbp - 0xe60]
	mov	byte ptr [rax], 1
	mov	rax, qword ptr [rbp - 8]
	test	byte ptr [rax + 0xb8], 1
	je	.label_670
	lea	rdx, [rbp - 0xea8]
	lea	rsi, [rbp - 0xe70]
	mov	rdi,  qword ptr [word ptr [localtz]]
	call	localtime_rz
	cmp	rax, 0
	je	.label_670
	mov	rdi,  qword ptr [word ptr [current_time]]
	mov	rsi,  qword ptr [word ptr [label_672]]
	mov	rdx, qword ptr [rbp - 0xe70]
	mov	rcx, qword ptr [rbp - 0xe68]
	call	timespec_cmp
	cmp	eax, 0
	jge	.label_681
	movabs	rdi, OFFSET FLAT:current_time
	call	gettime
.label_681:
	mov	rax,  qword ptr [word ptr [current_time]]
	sub	rax, 0xf0c2ac
	mov	qword ptr [rbp - 0x14a0], rax
	mov	rax,  qword ptr [word ptr [label_672]]
	mov	qword ptr [rbp - 0x1498], rax
	mov	rdi, qword ptr [rbp - 0x14a0]
	mov	rsi, qword ptr [rbp - 0x1498]
	mov	rdx, qword ptr [rbp - 0xe70]
	mov	rcx, qword ptr [rbp - 0xe68]
	call	timespec_cmp
	xor	r8d, r8d
	mov	r9b, r8b
	cmp	eax, 0
	mov	byte ptr [rbp - 0x1555], r9b
	jge	.label_701
	mov	rdi, qword ptr [rbp - 0xe70]
	mov	rsi, qword ptr [rbp - 0xe68]
	mov	rdx,  qword ptr [word ptr [current_time]]
	mov	rcx,  qword ptr [word ptr [label_672]]
	call	timespec_cmp
	cmp	eax, 0
	setl	r8b
	mov	byte ptr [rbp - 0x1555], r8b
.label_701:
	mov	al, byte ptr [rbp - 0x1555]
	mov	ecx, 0x3e9
	mov	esi, ecx
	lea	rcx, [rbp - 0xea8]
	and	al, 1
	mov	byte ptr [rbp - 0x14a1], al
	mov	rdi, qword ptr [rbp - 0xe60]
	mov	al, byte ptr [rbp - 0x14a1]
	mov	r8,  qword ptr [word ptr [localtz]]
	mov	rdx, qword ptr [rbp - 0xe68]
	mov	r9d, edx
	and	al, 1
	movzx	edx, al
	call	align_nstrftime
	mov	qword ptr [rbp - 0xe58], rax
.label_670:
	cmp	qword ptr [rbp - 0xe58], 0
	jne	.label_676
	mov	rax, qword ptr [rbp - 0xe60]
	cmp	byte ptr [rax], 0
	jne	.label_679
.label_676:
	mov	rax, qword ptr [rbp - 0xe58]
	add	rax, qword ptr [rbp - 0xe60]
	mov	qword ptr [rbp - 0xe60], rax
	mov	rax, qword ptr [rbp - 0xe60]
	mov	rcx, rax
	add	rcx, 1
	mov	qword ptr [rbp - 0xe60], rcx
	mov	byte ptr [rax], 0x20
	mov	rax, qword ptr [rbp - 0xe60]
	mov	byte ptr [rax], 0
	jmp	.label_686
.label_687:
	lea	rsi, [rbp - 0x11b0]
	mov	rax, qword ptr [rbp - 8]
	mov	rdi, qword ptr [rax + 0x28]
	call	umaxtostr
	mov	qword ptr [rbp - 0x1518], rax
.label_693:
	mov	rax, qword ptr [rbp - 0x1518]
	movabs	rsi, OFFSET FLAT:label_703
	mov	rdi, qword ptr [rbp - 0x1508]
	mov	rdx, qword ptr [rbp - 0x1500]
	mov	ecx, dword ptr [rbp - 0x150c]
	mov	r8, rax
	mov	al, 0
	call	sprintf
	mov	rdi, qword ptr [rbp - 0xe60]
	mov	dword ptr [rbp - 0x151c], eax
	call	strlen
	add	rax, qword ptr [rbp - 0xe60]
	mov	qword ptr [rbp - 0xe60], rax
	test	byte ptr [byte ptr [dired]],  1
	je	.label_665
	jmp	.label_667
.label_667:
	movabs	rdi, OFFSET FLAT:label_668
	mov	rsi,  qword ptr [word ptr [stdout]]
	call	fputs_unlocked
	mov	rsi,  qword ptr [word ptr [dired_pos]]
	add	rsi, 2
	mov	qword ptr [word ptr [dired_pos]],  rsi
	mov	dword ptr [rbp - 0x1520], eax
	jmp	.label_665
.label_665:
	jmp	.label_675
.label_675:
	test	byte ptr [byte ptr [print_owner]],  1
	jne	.label_683
	test	byte ptr [byte ptr [print_group]],  1
	jne	.label_683
	test	byte ptr [byte ptr [print_author]],  1
	jne	.label_683
	test	byte ptr [byte ptr [print_scontext]],  1
	je	.label_691
.label_683:
	jmp	.label_692
.label_692:
	lea	rdi, [rbp - 0xe50]
	mov	rsi,  qword ptr [word ptr [stdout]]
	call	fputs_unlocked
	lea	rsi, [rbp - 0xe50]
	mov	rdi, qword ptr [rbp - 0xe60]
	sub	rdi, rsi
	add	rdi,  qword ptr [word ptr [dired_pos]]
	mov	qword ptr [word ptr [dired_pos]],  rdi
	mov	dword ptr [rbp - 0x1524], eax
	test	byte ptr [byte ptr [print_owner]],  1
	je	.label_699
	mov	rax, qword ptr [rbp - 8]
	mov	edi, dword ptr [rax + 0x34]
	mov	esi,  dword ptr [dword ptr [owner_width]]
	mov	rax, qword ptr [rbp - 8]
	mov	cl, byte ptr [rax + 0xb8]
	and	cl, 1
	movzx	edx, cl
	call	format_user
.label_699:
	test	byte ptr [byte ptr [print_group]],  1
	je	.label_666
	mov	rax, qword ptr [rbp - 8]
	mov	edi, dword ptr [rax + 0x38]
	mov	esi,  dword ptr [dword ptr [group_width]]
	mov	rax, qword ptr [rbp - 8]
	mov	cl, byte ptr [rax + 0xb8]
	and	cl, 1
	movzx	edx, cl
	call	format_group
.label_666:
	test	byte ptr [byte ptr [print_author]],  1
	je	.label_689
	mov	rax, qword ptr [rbp - 8]
	mov	edi, dword ptr [rax + 0x34]
	mov	esi,  dword ptr [dword ptr [author_width]]
	mov	rax, qword ptr [rbp - 8]
	mov	cl, byte ptr [rax + 0xb8]
	and	cl, 1
	movzx	edx, cl
	call	format_user
.label_689:
	test	byte ptr [byte ptr [print_scontext]],  1
	je	.label_697
	xor	eax, eax
	mov	esi, eax
	mov	rcx, qword ptr [rbp - 8]
	mov	rdi, qword ptr [rcx + 0xb0]
	mov	edx,  dword ptr [dword ptr [scontext_width]]
	call	format_user_or_group
.label_697:
	lea	rax, [rbp - 0xe50]
	mov	qword ptr [rbp - 0xe60], rax
.label_691:
	mov	rax, qword ptr [rbp - 8]
	test	byte ptr [rax + 0xb8], 1
	je	.label_696
	mov	rax, qword ptr [rbp - 8]
	mov	ecx, dword ptr [rax + 0x30]
	and	ecx, 0xf000
	cmp	ecx, 0x2000
	je	.label_678
	mov	rax, qword ptr [rbp - 8]
	mov	ecx, dword ptr [rax + 0x30]
	and	ecx, 0xf000
	cmp	ecx, 0x6000
	jne	.label_696
.label_678:
	xor	eax, eax
	mov	ecx,  dword ptr [dword ptr [file_size_width]]
	mov	edx,  dword ptr [dword ptr [major_device_number_width]]
	add	edx, 2
	add	edx,  dword ptr [dword ptr [minor_device_number_width]]
	sub	ecx, edx
	mov	dword ptr [rbp - 0x11f4], ecx
	mov	rdi, qword ptr [rbp - 0xe60]
	mov	ecx,  dword ptr [dword ptr [major_device_number_width]]
	cmp	eax, dword ptr [rbp - 0x11f4]
	mov	dword ptr [rbp - 0x1528], ecx
	mov	qword ptr [rbp - 0x1530], rdi
	jle	.label_690
	xor	eax, eax
	mov	dword ptr [rbp - 0x1534], eax
	jmp	.label_673
.label_679:
	mov	rdi, qword ptr [rbp - 0xe60]
	mov	qword ptr [rbp - 0x1560], rdi
	call	long_time_expected_width
	mov	rdi, qword ptr [rbp - 8]
	test	byte ptr [rdi + 0xb8], 1
	mov	dword ptr [rbp - 0x1564], eax
	jne	.label_664
	movabs	rax, OFFSET FLAT:label_684
	mov	qword ptr [rbp - 0x1570], rax
	jmp	.label_685
.label_714:
	mov	rax, qword ptr [rbp - 8]
	cmp	dword ptr [rax + 0xbc], 2
	jne	.label_710
	mov	byte ptr [rbp - 0xa], 0x2b
.label_710:
	jmp	.label_716
.label_716:
	jmp	.label_712
.label_712:
	mov	eax,  dword ptr [dword ptr [rip + time_type]]
	test	eax, eax
	mov	dword ptr [rbp - 0x14cc], eax
	je	.label_719
	jmp	.label_711
.label_711:
	mov	eax, dword ptr [rbp - 0x14cc]
	sub	eax, 1
	mov	dword ptr [rbp - 0x14d0], eax
	je	.label_730
	jmp	.label_713
.label_713:
	mov	eax, dword ptr [rbp - 0x14cc]
	sub	eax, 2
	mov	dword ptr [rbp - 0x14d4], eax
	je	.label_715
	jmp	.label_722
.label_718:
	lea	rax, [rbp - 0xe50]
	mov	qword ptr [rbp - 0xe60], rax
	test	byte ptr [byte ptr [print_inode]],  1
	je	.label_723
	mov	eax, 0x15
	mov	esi, eax
	lea	rdi, [rbp - 0xef0]
	mov	rcx, qword ptr [rbp - 0xe60]
	mov	edx,  dword ptr [dword ptr [inode_number_width]]
	mov	r8, qword ptr [rbp - 8]
	mov	dword ptr [rbp - 0x14d8], edx
	mov	rdx, r8
	mov	qword ptr [rbp - 0x14e0], rcx
	call	format_inode
	movabs	rsi, OFFSET FLAT:label_707
	mov	rdi, qword ptr [rbp - 0x14e0]
	mov	edx, dword ptr [rbp - 0x14d8]
	mov	rcx, rax
	mov	al, 0
	call	sprintf
	mov	rdi, qword ptr [rbp - 0xe60]
	mov	dword ptr [rbp - 0x14e4], eax
	call	strlen
	add	rax, qword ptr [rbp - 0xe60]
	mov	qword ptr [rbp - 0xe60], rax
.label_723:
	test	byte ptr [byte ptr [print_block_size]],  1
	je	.label_709
	mov	rax, qword ptr [rbp - 8]
	test	byte ptr [rax + 0xb8], 1
	jne	.label_717
	movabs	rax, OFFSET FLAT:label_684
	mov	qword ptr [rbp - 0x14f0], rax
	jmp	.label_726
.label_730:
	mov	rax, qword ptr [rbp - 8]
	add	rax, 0x18
	mov	rdi, rax
	call	get_stat_ctime
	mov	qword ptr [rbp - 0xeb8], rax
	mov	qword ptr [rbp - 0xeb0], rdx
	mov	rax, qword ptr [rbp - 0xeb8]
	mov	qword ptr [rbp - 0xe70], rax
	mov	rax, qword ptr [rbp - 0xeb0]
	mov	qword ptr [rbp - 0xe68], rax
	jmp	.label_718
.label_721:
	jmp	.label_725
.label_725:
	mov	rax, qword ptr [rbp - 0x1188]
	mov	rcx, rax
	add	rcx, 1
	mov	qword ptr [rbp - 0x1188], rcx
	mov	dl, byte ptr [rax]
	mov	rax, qword ptr [rbp - 0xe60]
	mov	rcx, rax
	add	rcx, 1
	mov	qword ptr [rbp - 0xe60], rcx
	mov	byte ptr [rax], dl
	cmp	dl, 0
	je	.label_729
	jmp	.label_725
.label_690:
	mov	eax, dword ptr [rbp - 0x11f4]
	mov	dword ptr [rbp - 0x1534], eax
.label_673:
	mov	eax, dword ptr [rbp - 0x1534]
	mov	ecx, dword ptr [rbp - 0x1528]
	add	ecx, eax
	mov	rdx, qword ptr [rbp - 8]
	mov	rdi, qword ptr [rdx + 0x40]
	mov	dword ptr [rbp - 0x1538], ecx
	call	gnu_dev_major
	lea	rsi, [rbp - 0x11d0]
	mov	eax, eax
	mov	edi, eax
	call	umaxtostr
	mov	r8d,  dword ptr [dword ptr [minor_device_number_width]]
	mov	rdx, qword ptr [rbp - 8]
	mov	rdi, qword ptr [rdx + 0x40]
	mov	qword ptr [rbp - 0x1540], rax
	mov	dword ptr [rbp - 0x1544], r8d
	call	gnu_dev_minor
	lea	rsi, [rbp - 0x11f0]
	mov	eax, eax
	mov	edi, eax
	call	umaxtostr
	movabs	rsi, OFFSET FLAT:label_694
	mov	rdi, qword ptr [rbp - 0x1530]
	mov	edx, dword ptr [rbp - 0x1538]
	mov	rcx, qword ptr [rbp - 0x1540]
	mov	r8d, dword ptr [rbp - 0x1544]
	mov	r9, rax
	mov	al, 0
	call	sprintf
	mov	edx,  dword ptr [dword ptr [file_size_width]]
	add	edx, 1
	mov	rcx, qword ptr [rbp - 0xe60]
	movsxd	rsi, edx
	add	rcx, rsi
	mov	qword ptr [rbp - 0xe60], rcx
	mov	dword ptr [rbp - 0x1548], eax
	jmp	.label_708
.label_717:
	mov	eax, 0x200
	mov	ecx, eax
	lea	rsi, [rbp - 0x1180]
	mov	rdx, qword ptr [rbp - 8]
	mov	rdi, qword ptr [rdx + 0x58]
	mov	edx,  dword ptr [dword ptr [human_output_opts]]
	mov	r8,  qword ptr [word ptr [output_block_size]]
	call	human_readable
	mov	qword ptr [rbp - 0x14f0], rax
.label_726:
	mov	rax, qword ptr [rbp - 0x14f0]
	xor	esi, esi
	mov	qword ptr [rbp - 0x1188], rax
	mov	ecx,  dword ptr [dword ptr [block_size_width]]
	mov	rdi, qword ptr [rbp - 0x1188]
	mov	dword ptr [rbp - 0x14f4], ecx
	call	gnu_mbswidth
	mov	ecx, dword ptr [rbp - 0x14f4]
	sub	ecx, eax
	mov	dword ptr [rbp - 0x118c], ecx
.label_728:
	xor	eax, eax
	cmp	eax, dword ptr [rbp - 0x118c]
	jge	.label_721
	mov	rax, qword ptr [rbp - 0xe60]
	mov	rcx, rax
	add	rcx, 1
	mov	qword ptr [rbp - 0xe60], rcx
	mov	byte ptr [rax], 0x20
	mov	eax, dword ptr [rbp - 0x118c]
	add	eax, -1
	mov	dword ptr [rbp - 0x118c], eax
	jmp	.label_728
.label_731:
	mov	rax, qword ptr [rbp - 8]
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x4087aa
	.globl sub_4087aa
	.type sub_4087aa, @function
sub_4087aa:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4087b7

	.globl xgetcwd
	.type xgetcwd, @function
xgetcwd:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	xor	eax, eax
	mov	ecx, eax
	mov	rdi, rcx
	mov	rsi, rcx
	call	getcwd
	mov	qword ptr [rbp - 8], rax
	cmp	qword ptr [rbp - 8], 0
	jne	.label_731
	call	__errno_location
	cmp	dword ptr [rax], 0xc
	jne	.label_731
	call	xalloc_die
.label_736:
	mov	byte ptr [rbp - 1], 0
.label_734:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x408802
	.globl sub_408802
	.type sub_408802, @function
sub_408802:

	nop	word ptr cs:[rax + rax]
.label_735:
	jmp	.label_732
.label_732:
	mov	rax, qword ptr [rbp - 0x20]
	mov	rax, qword ptr [rax + 8]
	mov	qword ptr [rbp - 0x20], rax
	jmp	.label_733
	.section	.text
	.align	32
	#Procedure 0x408826

	.globl patterns_match
	.type patterns_match, @function
patterns_match:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 0x18], rsi
	mov	rsi, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 0x20], rsi
.label_733:
	cmp	qword ptr [rbp - 0x20], 0
	je	.label_736
	mov	edx, 4
	mov	rax, qword ptr [rbp - 0x20]
	mov	rdi, qword ptr [rax]
	mov	rsi, qword ptr [rbp - 0x18]
	call	fnmatch
	cmp	eax, 0
	jne	.label_735
	mov	byte ptr [rbp - 1], 1
	jmp	.label_734
	.section	.text
	.align	32
	#Procedure 0x408870

	.globl file_escape
	.type file_escape, @function
file_escape:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x30
	mov	al, sil
	mov	esi, 3
	mov	ecx, esi
	mov	qword ptr [rbp - 8], rdi
	and	al, 1
	mov	byte ptr [rbp - 9], al
	mov	rdi, qword ptr [rbp - 8]
	mov	qword ptr [rbp - 0x28], rcx
	call	strlen
	add	rax, 1
	mov	rdi, qword ptr [rbp - 0x28]
	mov	rsi, rax
	call	xnmalloc
	mov	qword ptr [rbp - 0x18], rax
	mov	rax, qword ptr [rbp - 0x18]
	mov	qword ptr [rbp - 0x20], rax
.label_739:
	mov	rax, qword ptr [rbp - 8]
	cmp	byte ptr [rax], 0
	je	.label_742
	test	byte ptr [rbp - 9], 1
	je	.label_738
	mov	rax, qword ptr [rbp - 8]
	movsx	ecx, byte ptr [rax]
	cmp	ecx, 0x2f
	jne	.label_738
	mov	rax, qword ptr [rbp - 0x20]
	mov	rcx, rax
	add	rcx, 1
	mov	qword ptr [rbp - 0x20], rcx
	mov	byte ptr [rax], 0x2f
	mov	rax, qword ptr [rbp - 8]
	add	rax, 1
	mov	qword ptr [rbp - 8], rax
	jmp	.label_740
.label_738:
	mov	rax, qword ptr [rbp - 8]
	movsx	edi, byte ptr [rax]
	call	to_uchar
	movzx	edi, al
	mov	ecx, edi
	cmp	byte ptr [byte ptr [+ (rcx * 1) + RFC3986]],  0
	je	.label_741
	mov	rax, qword ptr [rbp - 8]
	mov	rcx, rax
	add	rcx, 1
	mov	qword ptr [rbp - 8], rcx
	mov	dl, byte ptr [rax]
	mov	rax, qword ptr [rbp - 0x20]
	mov	rcx, rax
	add	rcx, 1
	mov	qword ptr [rbp - 0x20], rcx
	mov	byte ptr [rax], dl
	jmp	.label_743
.label_742:
	mov	rax, qword ptr [rbp - 0x20]
	mov	byte ptr [rax], 0
	mov	rax, qword ptr [rbp - 0x18]
	add	rsp, 0x30
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x408955
	.globl sub_408955
	.type sub_408955, @function
sub_408955:

	nop	word ptr cs:[rax + rax]
.label_741:
	mov	rdi, qword ptr [rbp - 0x20]
	mov	rax, qword ptr [rbp - 8]
	mov	rcx, rax
	add	rcx, 1
	mov	qword ptr [rbp - 8], rcx
	movsx	edx, byte ptr [rax]
	mov	qword ptr [rbp - 0x30], rdi
	mov	edi, edx
	call	to_uchar
	movabs	rsi, OFFSET FLAT:label_737
	movzx	edx, al
	mov	rdi, qword ptr [rbp - 0x30]
	mov	al, 0
	call	sprintf
	mov	rcx, qword ptr [rbp - 0x20]
	movsxd	rsi, eax
	add	rcx, rsi
	mov	qword ptr [rbp - 0x20], rcx
.label_743:
	jmp	.label_740
.label_740:
	jmp	.label_739
.label_746:
	jmp	.label_749
.label_749:
	add	rsp, 0x30
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x4089bb
	.globl sub_4089bb
	.type sub_4089bb, @function
sub_4089bb:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4089c0

	.globl _obstack_free
	.type _obstack_free, @function
_obstack_free:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x30
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	rsi, qword ptr [rbp - 8]
	mov	rsi, qword ptr [rsi + 8]
	mov	qword ptr [rbp - 0x18], rsi
.label_745:
	xor	eax, eax
	mov	cl, al
	cmp	qword ptr [rbp - 0x18], 0
	mov	byte ptr [rbp - 0x21], cl
	je	.label_747
	mov	al, 1
	mov	rcx, qword ptr [rbp - 0x18]
	cmp	rcx, qword ptr [rbp - 0x10]
	mov	byte ptr [rbp - 0x22], al
	jae	.label_748
	mov	rax, qword ptr [rbp - 0x18]
	mov	rax, qword ptr [rax]
	cmp	rax, qword ptr [rbp - 0x10]
	setb	cl
	mov	byte ptr [rbp - 0x22], cl
.label_748:
	mov	al, byte ptr [rbp - 0x22]
	mov	byte ptr [rbp - 0x21], al
.label_747:
	mov	al, byte ptr [rbp - 0x21]
	test	al, 1
	jne	.label_751
	jmp	.label_744
.label_751:
	mov	rax, qword ptr [rbp - 0x18]
	mov	rax, qword ptr [rax + 8]
	mov	qword ptr [rbp - 0x20], rax
	mov	rdi, qword ptr [rbp - 8]
	mov	rax, qword ptr [rbp - 0x18]
	mov	rsi, rax
	call	call_freefun
	mov	rax, qword ptr [rbp - 0x20]
	mov	qword ptr [rbp - 0x18], rax
	mov	rax, qword ptr [rbp - 8]
	mov	cl, byte ptr [rax + 0x50]
	and	cl, 0xfd
	or	cl, 2
	mov	byte ptr [rax + 0x50], cl
	jmp	.label_745
.label_750:
	cmp	qword ptr [rbp - 0x10], 0
	je	.label_746
	call	abort
.label_744:
	cmp	qword ptr [rbp - 0x18], 0
	je	.label_750
	mov	rax, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rbp - 8]
	mov	qword ptr [rcx + 0x18], rax
	mov	rcx, qword ptr [rbp - 8]
	mov	qword ptr [rcx + 0x10], rax
	mov	rax, qword ptr [rbp - 0x18]
	mov	rax, qword ptr [rax]
	mov	rcx, qword ptr [rbp - 8]
	mov	qword ptr [rcx + 0x20], rax
	mov	rax, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rbp - 8]
	mov	qword ptr [rcx + 8], rax
	jmp	.label_749
	.section	.text
	.align	32
	#Procedure 0x408ab0
	.globl lsetfilecon
	.type lsetfilecon, @function
lsetfilecon:

	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	call	__errno_location
	mov	ecx, 0xffffffff
	mov	dword ptr [rax], 0x5f
	mov	eax, ecx
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x408ad8
	.globl sub_408ad8
	.type sub_408ad8, @function
sub_408ad8:

	nop	dword ptr [rax + rax]
.label_755:
	xor	eax, eax
	mov	ecx, eax
	mov	qword ptr [rbp - 0x28], rcx
	jmp	.label_752
.label_752:
	mov	rax, qword ptr [rbp - 0x28]
	mov	rcx, qword ptr [rbp - 0x20]
	mov	qword ptr [rcx + 8], rax
	cmp	qword ptr [rbp - 8], 0
	je	.label_754
	mov	rdi, qword ptr [rbp - 8]
	call	xstrdup
	mov	qword ptr [rbp - 0x30], rax
	jmp	.label_753
.label_754:
	xor	eax, eax
	mov	ecx, eax
	mov	qword ptr [rbp - 0x30], rcx
	jmp	.label_753
.label_753:
	mov	rax, qword ptr [rbp - 0x30]
	mov	rcx, qword ptr [rbp - 0x20]
	mov	qword ptr [rcx], rax
	mov	dl, byte ptr [rbp - 0x11]
	mov	rax, qword ptr [rbp - 0x20]
	and	dl, 1
	mov	byte ptr [rax + 0x10], dl
	mov	rax,  qword ptr [word ptr [pending_dirs]]
	mov	rcx, qword ptr [rbp - 0x20]
	mov	qword ptr [rcx + 0x18], rax
	mov	rax, qword ptr [rbp - 0x20]
	mov	qword ptr [word ptr [pending_dirs]],  rax
	add	rsp, 0x30
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x408b5d
	.globl sub_408b5d
	.type sub_408b5d, @function
sub_408b5d:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x408b69

	.globl queue_directory
	.type queue_directory, @function
queue_directory:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x30
	mov	al, dl
	mov	edx, 0x20
	mov	ecx, edx
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	and	al, 1
	mov	byte ptr [rbp - 0x11], al
	mov	rdi, rcx
	call	xmalloc
	mov	qword ptr [rbp - 0x20], rax
	cmp	qword ptr [rbp - 0x10], 0
	je	.label_755
	mov	rdi, qword ptr [rbp - 0x10]
	call	xstrdup
	mov	qword ptr [rbp - 0x28], rax
	jmp	.label_752
	.section	.text
	.align	32
	#Procedure 0x408bb0
	.globl hash_get_first
	.type hash_get_first, @function
hash_get_first:

	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	mov	qword ptr [rbp - 0x10], rdi
	mov	rdi, qword ptr [rbp - 0x10]
	cmp	qword ptr [rdi + 0x20], 0
	jne	.label_756
	mov	qword ptr [rbp - 8], 0
	jmp	.label_760
.label_760:
	mov	rax, qword ptr [rbp - 8]
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x408be2
	.globl sub_408be2
	.type sub_408be2, @function
sub_408be2:

	nop	dword ptr [rax]
.label_757:
	jmp	.label_759
.label_759:
	jmp	.label_761
.label_761:
	mov	rax, qword ptr [rbp - 0x18]
	add	rax, 0x10
	mov	qword ptr [rbp - 0x18], rax
	jmp	.label_762
.label_756:
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax]
	mov	qword ptr [rbp - 0x18], rax
.label_762:
	mov	rax, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rbp - 0x10]
	cmp	rax, qword ptr [rcx + 8]
	jb	.label_758
	call	abort
.label_758:
	mov	rax, qword ptr [rbp - 0x18]
	cmp	qword ptr [rax], 0
	je	.label_757
	mov	rax, qword ptr [rbp - 0x18]
	mov	rax, qword ptr [rax]
	mov	qword ptr [rbp - 8], rax
	jmp	.label_760
.label_766:
	mov	edi, 0xa
	call	putchar_unlocked
	mov	dword ptr [rbp - 0x64], eax
	mov	rax, qword ptr [rbp - 8]
	add	rax, 1
	mov	qword ptr [rbp - 8], rax
	jmp	.label_767
.label_764:
	mov	rax, qword ptr [rbp - 0x38]
	add	rax, qword ptr [rbp - 0x48]
	mov	rcx, qword ptr [rbp - 0x38]
	add	rcx, qword ptr [rbp - 0x50]
	mov	rdi, rax
	mov	rsi, rcx
	call	indent
	mov	rax, qword ptr [rbp - 0x50]
	add	rax, qword ptr [rbp - 0x38]
	mov	qword ptr [rbp - 0x38], rax
	jmp	.label_765
	.section	.text
	.align	32
	#Procedure 0x408c8a

	.globl print_many_per_line
	.type print_many_per_line, @function
print_many_per_line:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x70
	mov	edi, 1
	call	calculate_columns
	mov	qword ptr [rbp - 0x10], rax
	mov	rax, qword ptr [rbp - 0x10]
	sub	rax, 1
	imul	rax, rax, 0x18
	add	rax,  qword ptr [word ptr [column_info]]
	mov	qword ptr [rbp - 0x18], rax
	mov	rax,  qword ptr [word ptr [cwd_n_used]]
	xor	edi, edi
	mov	edx, edi
	div	qword ptr [rbp - 0x10]
	mov	rcx,  qword ptr [word ptr [cwd_n_used]]
	mov	qword ptr [rbp - 0x58], rax
	mov	rax, rcx
	xor	edi, edi
	mov	edx, edi
	div	qword ptr [rbp - 0x10]
	cmp	rdx, 0
	setne	sil
	and	sil, 1
	movzx	edi, sil
	movsxd	rcx, edi
	mov	rdx, qword ptr [rbp - 0x58]
	add	rdx, rcx
	mov	qword ptr [rbp - 0x20], rdx
	mov	qword ptr [rbp - 8], 0
.label_767:
	mov	rax, qword ptr [rbp - 8]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_763
	mov	qword ptr [rbp - 0x28], 0
	mov	rax, qword ptr [rbp - 8]
	mov	qword ptr [rbp - 0x30], rax
	mov	qword ptr [rbp - 0x38], 0
.label_765:
	mov	rax, qword ptr [rbp - 0x30]
	mov	rcx,  qword ptr [word ptr [sorted_file]]
	mov	rax, qword ptr [rcx + rax*8]
	mov	qword ptr [rbp - 0x40], rax
	mov	rdi, qword ptr [rbp - 0x40]
	call	length_of_file_name_and_frills
	mov	qword ptr [rbp - 0x48], rax
	mov	rax, qword ptr [rbp - 0x28]
	mov	rcx, rax
	add	rcx, 1
	mov	qword ptr [rbp - 0x28], rcx
	mov	rcx, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rcx + 0x10]
	mov	rax, qword ptr [rcx + rax*8]
	mov	qword ptr [rbp - 0x50], rax
	mov	rdi, qword ptr [rbp - 0x40]
	mov	rsi, qword ptr [rbp - 0x38]
	call	print_file_name_and_frills
	mov	rcx, qword ptr [rbp - 0x20]
	add	rcx, qword ptr [rbp - 0x30]
	mov	qword ptr [rbp - 0x30], rcx
	mov	rcx, qword ptr [rbp - 0x30]
	cmp	rcx,  qword ptr [word ptr [cwd_n_used]]
	mov	qword ptr [rbp - 0x60], rax
	jb	.label_764
	jmp	.label_766
.label_763:
	add	rsp, 0x70
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x408da5
	.globl sub_408da5
	.type sub_408da5, @function
sub_408da5:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x408db0
	.globl hash_reset_tuning
	.type hash_reset_tuning, @function
hash_reset_tuning:

	push	rbp
	mov	rbp, rsp
	mov	qword ptr [rbp - 8], rdi
	mov	rdi, qword ptr [rbp - 8]
	mov	rax,  qword ptr [word ptr [default_tuning]]
	mov	qword ptr [rdi], rax
	mov	rax,  qword ptr [word ptr [label_768]]
	mov	qword ptr [rdi + 8], rax
	mov	ecx,  dword ptr [dword ptr [label_769]]
	mov	dword ptr [rdi + 0x10], ecx
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x408ddf
	.globl sub_408ddf
	.type sub_408ddf, @function
sub_408ddf:

	nop	
.label_771:
	movabs	rax, OFFSET FLAT:default_quoting_options
	mov	qword ptr [rbp - 0x30], rax
	jmp	.label_770
.label_770:
	mov	rax, qword ptr [rbp - 0x30]
	add	rax, 8
	movzx	ecx, byte ptr [rbp - 0x11]
	mov	edx, ecx
	shr	rdx, 5
	shl	rdx, 2
	add	rax, rdx
	mov	qword ptr [rbp - 0x20], rax
	movzx	ecx, byte ptr [rbp - 0x11]
	mov	eax, ecx
	and	rax, 0x1f
	mov	ecx, eax
	mov	dword ptr [rbp - 0x24], ecx
	mov	rax, qword ptr [rbp - 0x20]
	mov	ecx, dword ptr [rax]
	mov	esi, dword ptr [rbp - 0x24]
	mov	dword ptr [rbp - 0x34], ecx
	mov	ecx, esi
	mov	esi, dword ptr [rbp - 0x34]
	shr	esi, cl
	and	esi, 1
	mov	dword ptr [rbp - 0x28], esi
	mov	esi, dword ptr [rbp - 0x10]
	and	esi, 1
	xor	esi, dword ptr [rbp - 0x28]
	mov	ecx, dword ptr [rbp - 0x24]
	shl	esi, cl
	mov	rax, qword ptr [rbp - 0x20]
	xor	esi, dword ptr [rax]
	mov	dword ptr [rax], esi
	mov	eax, dword ptr [rbp - 0x28]
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x408e53
	.globl sub_408e53
	.type sub_408e53, @function
sub_408e53:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x408e61

	.globl set_char_quoting
	.type set_char_quoting, @function
set_char_quoting:
	push	rbp
	mov	rbp, rsp
	mov	al, sil
	mov	qword ptr [rbp - 8], rdi
	mov	byte ptr [rbp - 9], al
	mov	dword ptr [rbp - 0x10], edx
	mov	al, byte ptr [rbp - 9]
	mov	byte ptr [rbp - 0x11], al
	cmp	qword ptr [rbp - 8], 0
	je	.label_771
	mov	rax, qword ptr [rbp - 8]
	mov	qword ptr [rbp - 0x30], rax
	jmp	.label_770
	.section	.text
	.align	32
	#Procedure 0x408e90

	.globl _obstack_begin_1
	.type _obstack_begin_1, @function
_obstack_begin_1:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x30
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	qword ptr [rbp - 0x18], rdx
	mov	qword ptr [rbp - 0x20], rcx
	mov	qword ptr [rbp - 0x28], r8
	mov	qword ptr [rbp - 0x30], r9
	mov	rcx, qword ptr [rbp - 0x20]
	mov	rdx, qword ptr [rbp - 8]
	mov	qword ptr [rdx + 0x38], rcx
	mov	rcx, qword ptr [rbp - 0x28]
	mov	rdx, qword ptr [rbp - 8]
	mov	qword ptr [rdx + 0x40], rcx
	mov	rcx, qword ptr [rbp - 0x30]
	mov	rdx, qword ptr [rbp - 8]
	mov	qword ptr [rdx + 0x48], rcx
	mov	rcx, qword ptr [rbp - 8]
	mov	al, byte ptr [rcx + 0x50]
	and	al, 0xfe
	or	al, 1
	mov	byte ptr [rcx + 0x50], al
	mov	rdi, qword ptr [rbp - 8]
	mov	rsi, qword ptr [rbp - 0x10]
	mov	rdx, qword ptr [rbp - 0x18]
	call	_obstack_begin_worker
	add	rsp, 0x30
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x408ef9
	.globl sub_408ef9
	.type sub_408ef9, @function
sub_408ef9:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x408f00

	.globl quotearg_char
	.type quotearg_char, @function
quotearg_char:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	mov	al, sil
	mov	rsi, -1
	mov	qword ptr [rbp - 8], rdi
	mov	byte ptr [rbp - 9], al
	mov	rdi, qword ptr [rbp - 8]
	movsx	edx, byte ptr [rbp - 9]
	call	quotearg_char_mem
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x408f2c
	.globl sub_408f2c
	.type sub_408f2c, @function
sub_408f2c:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x408f30

	.globl quotearg_n_options
	.type quotearg_n_options, @function
quotearg_n_options:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x90
	mov	dword ptr [rbp - 4], edi
	mov	qword ptr [rbp - 0x10], rsi
	mov	qword ptr [rbp - 0x18], rdx
	mov	qword ptr [rbp - 0x20], rcx
	call	__errno_location
	mov	edi, dword ptr [rax]
	mov	dword ptr [rbp - 0x24], edi
	mov	rax,  qword ptr [word ptr [slotvec]]
	mov	qword ptr [rbp - 0x30], rax
	cmp	dword ptr [rbp - 4], 0
	jge	.label_772
	call	abort
.label_772:
	mov	eax,  dword ptr [dword ptr [nslots]]
	cmp	eax, dword ptr [rbp - 4]
	jg	.label_776
	movabs	rax, OFFSET FLAT:slotvec0
	cmp	qword ptr [rbp - 0x30], rax
	sete	cl
	and	cl, 1
	mov	byte ptr [rbp - 0x31], cl
	mov	dword ptr [rbp - 0x38], 0x7ffffffe
	mov	edx, dword ptr [rbp - 0x38]
	cmp	edx, dword ptr [rbp - 4]
	jge	.label_779
	call	xalloc_die
.label_779:
	test	byte ptr [rbp - 0x31], 1
	je	.label_775
	xor	eax, eax
	mov	ecx, eax
	mov	qword ptr [rbp - 0x60], rcx
	jmp	.label_778
.label_775:
	mov	rax, qword ptr [rbp - 0x30]
	mov	qword ptr [rbp - 0x60], rax
.label_778:
	mov	rax, qword ptr [rbp - 0x60]
	mov	ecx, dword ptr [rbp - 4]
	add	ecx, 1
	movsxd	rdx, ecx
	shl	rdx, 4
	mov	rdi, rax
	mov	rsi, rdx
	call	xrealloc
	mov	qword ptr [rbp - 0x30], rax
	mov	qword ptr [word ptr [slotvec]],  rax
	test	byte ptr [rbp - 0x31], 1
	je	.label_777
	mov	rax, qword ptr [rbp - 0x30]
	mov	rcx,  qword ptr [word ptr [slotvec0]]
	mov	qword ptr [rax], rcx
	mov	rcx,  qword ptr [word ptr [label_780]]
	mov	qword ptr [rax + 8], rcx
.label_777:
	xor	esi, esi
	mov	rax, qword ptr [rbp - 0x30]
	movsxd	rcx,  dword ptr [dword ptr [nslots]]
	shl	rcx, 4
	add	rax, rcx
	mov	edx, dword ptr [rbp - 4]
	add	edx, 1
	sub	edx,  dword ptr [dword ptr [nslots]]
	movsxd	rcx, edx
	shl	rcx, 4
	mov	rdi, rax
	mov	rdx, rcx
	call	memset
	mov	esi, dword ptr [rbp - 4]
	add	esi, 1
	mov	dword ptr [dword ptr [nslots]],  esi
.label_776:
	movsxd	rax, dword ptr [rbp - 4]
	shl	rax, 4
	add	rax, qword ptr [rbp - 0x30]
	mov	rax, qword ptr [rax]
	mov	qword ptr [rbp - 0x40], rax
	movsxd	rax, dword ptr [rbp - 4]
	shl	rax, 4
	add	rax, qword ptr [rbp - 0x30]
	mov	rax, qword ptr [rax + 8]
	mov	qword ptr [rbp - 0x48], rax
	mov	rax, qword ptr [rbp - 0x20]
	mov	ecx, dword ptr [rax + 4]
	or	ecx, 1
	mov	dword ptr [rbp - 0x4c], ecx
	mov	rdi, qword ptr [rbp - 0x48]
	mov	rsi, qword ptr [rbp - 0x40]
	mov	rdx, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	rax, qword ptr [rbp - 0x20]
	mov	r8d, dword ptr [rax]
	mov	r9d, dword ptr [rbp - 0x4c]
	mov	rax, qword ptr [rbp - 0x20]
	add	rax, 8
	mov	r10, qword ptr [rbp - 0x20]
	mov	r10, qword ptr [r10 + 0x28]
	mov	r11, qword ptr [rbp - 0x20]
	mov	r11, qword ptr [r11 + 0x30]
	mov	qword ptr [rsp], rax
	mov	qword ptr [rsp + 8], r10
	mov	qword ptr [rsp + 0x10], r11
	call	quotearg_buffer_restyled
	mov	qword ptr [rbp - 0x58], rax
	mov	rax, qword ptr [rbp - 0x40]
	cmp	rax, qword ptr [rbp - 0x58]
	ja	.label_773
	movabs	rax, OFFSET FLAT:slot0
	mov	rcx, qword ptr [rbp - 0x58]
	add	rcx, 1
	mov	qword ptr [rbp - 0x40], rcx
	movsxd	rdx, dword ptr [rbp - 4]
	shl	rdx, 4
	add	rdx, qword ptr [rbp - 0x30]
	mov	qword ptr [rdx], rcx
	cmp	qword ptr [rbp - 0x48], rax
	je	.label_774
	mov	rdi, qword ptr [rbp - 0x48]
	call	free
.label_774:
	mov	rdi, qword ptr [rbp - 0x40]
	call	xcharalloc
	mov	qword ptr [rbp - 0x48], rax
	movsxd	rdi, dword ptr [rbp - 4]
	shl	rdi, 4
	add	rdi, qword ptr [rbp - 0x30]
	mov	qword ptr [rdi + 8], rax
	mov	rdi, qword ptr [rbp - 0x48]
	mov	rsi, qword ptr [rbp - 0x40]
	mov	rdx, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	rax, qword ptr [rbp - 0x20]
	mov	r8d, dword ptr [rax]
	mov	r9d, dword ptr [rbp - 0x4c]
	mov	rax, qword ptr [rbp - 0x20]
	add	rax, 8
	mov	r10, qword ptr [rbp - 0x20]
	mov	r10, qword ptr [r10 + 0x28]
	mov	r11, qword ptr [rbp - 0x20]
	mov	r11, qword ptr [r11 + 0x30]
	mov	qword ptr [rsp], rax
	mov	qword ptr [rsp + 8], r10
	mov	qword ptr [rsp + 0x10], r11
	call	quotearg_buffer_restyled
	mov	qword ptr [rbp - 0x68], rax
.label_773:
	mov	eax, dword ptr [rbp - 0x24]
	mov	dword ptr [rbp - 0x6c], eax
	call	__errno_location
	mov	ecx, dword ptr [rbp - 0x6c]
	mov	dword ptr [rax], ecx
	mov	rax, qword ptr [rbp - 0x48]
	add	rsp, 0x90
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x4091a3
	.globl sub_4091a3
	.type sub_4091a3, @function
sub_4091a3:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4091b0

	.globl print_and_abort
	.type print_and_abort, @function
print_and_abort:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	movabs	rdi, OFFSET FLAT:label_781
	mov	rax,  qword ptr [word ptr [stderr]]
	mov	qword ptr [rbp - 8], rax
	call	gettext
	movabs	rsi, OFFSET FLAT:label_782
	mov	rdi, qword ptr [rbp - 8]
	mov	rdx, rax
	mov	al, 0
	call	fprintf
	mov	edi,  dword ptr [dword ptr [exit_failure]]
	mov	dword ptr [rbp - 0xc], eax
	call	exit
	.section	.text
	.align	32
	#Procedure 0x4091fa
	.globl sub_4091fa
	.type sub_4091fa, @function
sub_4091fa:

	nop	word ptr [rax + rax]
.label_784:
	mov	rax, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 0x30], rax
.label_783:
	mov	rax, qword ptr [rbp - 0x30]
	mov	qword ptr [rbp - 0x28], rax
.label_785:
	mov	rax, qword ptr [rbp - 0x28]
	add	rsp, 0x30
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40921a
	.globl sub_40921a
	.type sub_40921a, @function
sub_40921a:

	nop	dword ptr [rax]
.label_786:
	cmp	dword ptr [rbp - 0x1c], 0
	jne	.label_784
	mov	rax, qword ptr [rbp - 0x18]
	mov	qword ptr [rbp - 0x30], rax
	jmp	.label_783
	.section	.text
	.align	32
	#Procedure 0x409235

	.globl hash_insert
	.type hash_insert, @function
hash_insert:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x30
	lea	rdx, [rbp - 0x18]
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	rdi, qword ptr [rbp - 8]
	mov	rsi, qword ptr [rbp - 0x10]
	call	hash_insert_if_absent
	mov	dword ptr [rbp - 0x1c], eax
	cmp	dword ptr [rbp - 0x1c], -1
	jne	.label_786
	xor	eax, eax
	mov	ecx, eax
	mov	qword ptr [rbp - 0x28], rcx
	jmp	.label_785
	.section	.text
	.align	32
	#Procedure 0x409270

	.globl nstrftime
	.type nstrftime, @function
nstrftime:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x60
	xor	eax, eax
	mov	r10d, 0xffffffff
	lea	r11, [rbp - 0x2d]
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	qword ptr [rbp - 0x18], rdx
	mov	qword ptr [rbp - 0x20], rcx
	mov	qword ptr [rbp - 0x28], r8
	mov	dword ptr [rbp - 0x2c], r9d
	mov	byte ptr [rbp - 0x2d], 0
	mov	rdi, qword ptr [rbp - 8]
	mov	rsi, qword ptr [rbp - 0x10]
	mov	rdx, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rbp - 0x20]
	mov	r8, qword ptr [rbp - 0x28]
	mov	r9d, dword ptr [rbp - 0x2c]
	mov	qword ptr [rbp - 0x38], r8
	mov	r8d, eax
	mov	dword ptr [rbp - 0x3c], r9d
	mov	r9d, eax
	mov	dword ptr [rsp], 0xffffffff
	mov	qword ptr [rsp + 8], r11
	mov	r11, qword ptr [rbp - 0x38]
	mov	qword ptr [rsp + 0x10], r11
	mov	eax, dword ptr [rbp - 0x3c]
	mov	dword ptr [rsp + 0x18], eax
	mov	dword ptr [rbp - 0x40], r10d
	call	__strftime_internal
	add	rsp, 0x60
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x4092f1
	.globl sub_4092f1
	.type sub_4092f1, @function
sub_4092f1:

	nop	word ptr cs:[rax + rax]
.label_788:
	movabs	rax, OFFSET FLAT:default_quoting_options
	mov	qword ptr [rbp - 0x48], rax
	jmp	.label_787
.label_787:
	mov	rax, qword ptr [rbp - 0x48]
	mov	qword ptr [rbp - 0x30], rax
	call	__errno_location
	mov	ecx, dword ptr [rax]
	mov	dword ptr [rbp - 0x34], ecx
	mov	rdi, qword ptr [rbp - 8]
	mov	rsi, qword ptr [rbp - 0x10]
	mov	rdx, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rbp - 0x20]
	mov	rax, qword ptr [rbp - 0x30]
	mov	r8d, dword ptr [rax]
	mov	rax, qword ptr [rbp - 0x30]
	mov	r9d, dword ptr [rax + 4]
	mov	rax, qword ptr [rbp - 0x30]
	add	rax, 8
	mov	r10, qword ptr [rbp - 0x30]
	mov	r10, qword ptr [r10 + 0x28]
	mov	r11, qword ptr [rbp - 0x30]
	mov	r11, qword ptr [r11 + 0x30]
	mov	qword ptr [rsp], rax
	mov	qword ptr [rsp + 8], r10
	mov	qword ptr [rsp + 0x10], r11
	call	quotearg_buffer_restyled
	mov	qword ptr [rbp - 0x40], rax
	mov	r8d, dword ptr [rbp - 0x34]
	mov	dword ptr [rbp - 0x4c], r8d
	call	__errno_location
	mov	r8d, dword ptr [rbp - 0x4c]
	mov	dword ptr [rax], r8d
	mov	rax, qword ptr [rbp - 0x40]
	add	rsp, 0x70
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x409391
	.globl sub_409391
	.type sub_409391, @function
sub_409391:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40939c

	.globl quotearg_buffer
	.type quotearg_buffer, @function
quotearg_buffer:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x70
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	qword ptr [rbp - 0x18], rdx
	mov	qword ptr [rbp - 0x20], rcx
	mov	qword ptr [rbp - 0x28], r8
	cmp	qword ptr [rbp - 0x28], 0
	je	.label_788
	mov	rax, qword ptr [rbp - 0x28]
	mov	qword ptr [rbp - 0x48], rax
	jmp	.label_787
	.section	.text
	.align	32
	#Procedure 0x4093d0

	.globl quote_n
	.type quote_n, @function
quote_n:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	mov	rdx, -1
	mov	dword ptr [rbp - 4], edi
	mov	qword ptr [rbp - 0x10], rsi
	mov	edi, dword ptr [rbp - 4]
	mov	rsi, qword ptr [rbp - 0x10]
	call	quote_n_mem
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x4093f8
	.globl sub_4093f8
	.type sub_4093f8, @function
sub_4093f8:

	nop	dword ptr [rax + rax]
.label_790:
	mov	rax, qword ptr [rbp - 0x28]
	cmp	rax, qword ptr [rbp - 0x20]
	je	.label_789
	mov	rax, qword ptr [rbp - 0x20]
	mov	rdi, rax
	call	triple_free
.label_789:
	add	rsp, 0x30
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x409420
	.globl sub_409420
	.type sub_409420, @function
sub_409420:

	nop	word ptr [rax + rax]
.label_791:
	mov	eax, 0x18
	mov	edi, eax
	call	xmalloc
	mov	qword ptr [rbp - 0x20], rax
	mov	rdi, qword ptr [rbp - 0x10]
	call	xstrdup
	mov	rdi, qword ptr [rbp - 0x20]
	mov	qword ptr [rdi], rax
	mov	rax, qword ptr [rbp - 0x18]
	mov	rax, qword ptr [rax + 8]
	mov	rdi, qword ptr [rbp - 0x20]
	mov	qword ptr [rdi + 8], rax
	mov	rax, qword ptr [rbp - 0x18]
	mov	rax, qword ptr [rax]
	mov	rdi, qword ptr [rbp - 0x20]
	mov	qword ptr [rdi + 0x10], rax
	mov	rdi, qword ptr [rbp - 8]
	mov	rax, qword ptr [rbp - 0x20]
	mov	rsi, rax
	call	hash_insert
	mov	qword ptr [rbp - 0x28], rax
	cmp	qword ptr [rbp - 0x28], 0
	jne	.label_790
	call	xalloc_die
	.section	.text
	.align	32
	#Procedure 0x40948c

	.globl record_file
	.type record_file, @function
record_file:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x30
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	qword ptr [rbp - 0x18], rdx
	cmp	qword ptr [rbp - 8], 0
	jne	.label_791
	jmp	.label_789
.label_794:
	mov	edi, dword ptr [rbp - 4]
	call	getgroup
	mov	qword ptr [rbp - 0x20], rax
.label_793:
	mov	rax, qword ptr [rbp - 0x20]
	mov	qword ptr [rbp - 0x18], rax
.label_792:
	mov	rax, qword ptr [rbp - 0x18]
	mov	ecx, dword ptr [rbp - 4]
	mov	esi, ecx
	mov	edx, dword ptr [rbp - 8]
	mov	rdi, rax
	call	format_user_or_group
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x4094de
	.globl sub_4094de
	.type sub_4094de, @function
sub_4094de:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4094e3

	.globl format_group
	.type format_group, @function
format_group:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	mov	al, dl
	mov	dword ptr [rbp - 4], edi
	mov	dword ptr [rbp - 8], esi
	and	al, 1
	mov	byte ptr [rbp - 9], al
	test	byte ptr [rbp - 9], 1
	jne	.label_795
	movabs	rax, OFFSET FLAT:label_684
	mov	qword ptr [rbp - 0x18], rax
	jmp	.label_792
.label_795:
	test	byte ptr [byte ptr [numeric_ids]],  1
	je	.label_794
	xor	eax, eax
	mov	ecx, eax
	mov	qword ptr [rbp - 0x20], rcx
	jmp	.label_793
	.section	.text
	.align	32
	#Procedure 0x409530
	.globl xdectoumax
	.type xdectoumax, @function
xdectoumax:

	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x40
	mov	eax, 0xa
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	qword ptr [rbp - 0x18], rdx
	mov	qword ptr [rbp - 0x20], rcx
	mov	qword ptr [rbp - 0x28], r8
	mov	dword ptr [rbp - 0x2c], r9d
	mov	rdi, qword ptr [rbp - 8]
	mov	rdx, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	r8, qword ptr [rbp - 0x20]
	mov	r9, qword ptr [rbp - 0x28]
	mov	r10d, dword ptr [rbp - 0x2c]
	mov	esi, eax
	mov	dword ptr [rsp], r10d
	call	xnumtoumax
	add	rsp, 0x40
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40957e
	.globl sub_40957e
	.type sub_40957e, @function
sub_40957e:

	nop	
.label_812:
	mov	rax, qword ptr [rbp - 0x10]
	movsx	ecx, byte ptr [rax]
	cmp	ecx, 0x2e
	jne	.label_796
	mov	rax, qword ptr [rbp - 0x18]
	movsx	ecx, byte ptr [rax]
	cmp	ecx, 0x2e
	je	.label_796
	mov	dword ptr [rbp - 4], 0xffffffff
	jmp	.label_802
.label_815:
	mov	rax, qword ptr [rbp - 0x18]
	cmp	byte ptr [rax], 0
	jne	.label_816
	mov	dword ptr [rbp - 4], 1
	jmp	.label_802
.label_816:
	xor	eax, eax
	mov	rsi, qword ptr [rbp - 0x10]
	mov	ecx, OFFSET FLAT:label_809
	mov	edi, ecx
	mov	dword ptr [rbp - 0x54], eax
	call	strcmp
	mov	ecx, dword ptr [rbp - 0x54]
	cmp	ecx, eax
	jne	.label_814
	mov	dword ptr [rbp - 4], 0xffffffff
	jmp	.label_802
.label_800:
	mov	rax, qword ptr [rbp - 0x28]
	mov	qword ptr [rbp - 0x70], rax
.label_804:
	mov	rax, qword ptr [rbp - 0x70]
	mov	rcx, qword ptr [rbp - 0x18]
	sub	rax, rcx
	mov	qword ptr [rbp - 0x48], rax
	cmp	qword ptr [rbp - 0x30], 0
	jne	.label_806
	cmp	qword ptr [rbp - 0x38], 0
	je	.label_801
.label_806:
	mov	rax, qword ptr [rbp - 0x40]
	cmp	rax, qword ptr [rbp - 0x48]
	jne	.label_801
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rbp - 0x18]
	mov	rdx, qword ptr [rbp - 0x40]
	call	strncmp
	xor	ecx, ecx
	cmp	ecx, eax
	jne	.label_801
	mov	rax, qword ptr [rbp - 0x20]
	mov	rcx, qword ptr [rbp - 0x10]
	sub	rax, rcx
	mov	qword ptr [rbp - 0x40], rax
	mov	rax, qword ptr [rbp - 0x28]
	mov	rcx, qword ptr [rbp - 0x18]
	sub	rax, rcx
	mov	qword ptr [rbp - 0x48], rax
.label_801:
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rbp - 0x40]
	mov	rdx, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rbp - 0x48]
	call	verrevcmp
	mov	dword ptr [rbp - 0x4c], eax
	cmp	dword ptr [rbp - 0x4c], 0
	jne	.label_807
	mov	eax, dword ptr [rbp - 0x50]
	mov	dword ptr [rbp - 0x74], eax
	jmp	.label_798
.label_803:
	mov	rax, qword ptr [rbp - 0x20]
	mov	qword ptr [rbp - 0x68], rax
.label_805:
	mov	rax, qword ptr [rbp - 0x68]
	mov	rcx, qword ptr [rbp - 0x10]
	sub	rax, rcx
	mov	qword ptr [rbp - 0x40], rax
	cmp	qword ptr [rbp - 0x38], 0
	je	.label_800
	mov	rax, qword ptr [rbp - 0x38]
	mov	qword ptr [rbp - 0x70], rax
	jmp	.label_804
.label_807:
	mov	eax, dword ptr [rbp - 0x4c]
	mov	dword ptr [rbp - 0x74], eax
.label_798:
	mov	eax, dword ptr [rbp - 0x74]
	mov	dword ptr [rbp - 4], eax
.label_802:
	mov	eax, dword ptr [rbp - 4]
	add	rsp, 0x80
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x4096d9
	.globl sub_4096d9
	.type sub_4096d9, @function
sub_4096d9:

	nop	word ptr cs:[rax + rax]
.label_814:
	xor	eax, eax
	mov	rsi, qword ptr [rbp - 0x18]
	mov	ecx, OFFSET FLAT:label_809
	mov	edi, ecx
	mov	dword ptr [rbp - 0x58], eax
	call	strcmp
	mov	ecx, dword ptr [rbp - 0x58]
	cmp	ecx, eax
	jne	.label_810
	mov	dword ptr [rbp - 4], 1
	jmp	.label_802
	.section	.text
	.align	32
	#Procedure 0x409710

	.globl filevercmp
	.type filevercmp, @function
filevercmp:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x80
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 0x18], rsi
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rbp - 0x18]
	call	strcmp
	mov	dword ptr [rbp - 0x50], eax
	cmp	dword ptr [rbp - 0x50], 0
	jne	.label_813
	mov	dword ptr [rbp - 4], 0
	jmp	.label_802
.label_797:
	mov	rax, qword ptr [rbp - 0x10]
	movsx	ecx, byte ptr [rax]
	cmp	ecx, 0x2e
	jne	.label_799
	mov	rax, qword ptr [rbp - 0x18]
	movsx	ecx, byte ptr [rax]
	cmp	ecx, 0x2e
	jne	.label_799
	mov	rax, qword ptr [rbp - 0x10]
	add	rax, 1
	mov	qword ptr [rbp - 0x10], rax
	mov	rax, qword ptr [rbp - 0x18]
	add	rax, 1
	mov	qword ptr [rbp - 0x18], rax
.label_799:
	lea	rdi, [rbp - 0x20]
	mov	rax, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 0x20], rax
	mov	rax, qword ptr [rbp - 0x18]
	mov	qword ptr [rbp - 0x28], rax
	call	match_suffix
	lea	rdi, [rbp - 0x28]
	mov	qword ptr [rbp - 0x30], rax
	call	match_suffix
	mov	qword ptr [rbp - 0x38], rax
	cmp	qword ptr [rbp - 0x30], 0
	je	.label_803
	mov	rax, qword ptr [rbp - 0x30]
	mov	qword ptr [rbp - 0x68], rax
	jmp	.label_805
.label_796:
	mov	rax, qword ptr [rbp - 0x10]
	movsx	ecx, byte ptr [rax]
	cmp	ecx, 0x2e
	je	.label_797
	mov	rax, qword ptr [rbp - 0x18]
	movsx	ecx, byte ptr [rax]
	cmp	ecx, 0x2e
	jne	.label_797
	mov	dword ptr [rbp - 4], 1
	jmp	.label_802
.label_811:
	xor	eax, eax
	mov	rsi, qword ptr [rbp - 0x18]
	mov	ecx, OFFSET FLAT:label_808
	mov	edi, ecx
	mov	dword ptr [rbp - 0x60], eax
	call	strcmp
	mov	ecx, dword ptr [rbp - 0x60]
	cmp	ecx, eax
	jne	.label_812
	mov	dword ptr [rbp - 4], 1
	jmp	.label_802
.label_813:
	mov	rax, qword ptr [rbp - 0x10]
	cmp	byte ptr [rax], 0
	jne	.label_815
	mov	dword ptr [rbp - 4], 0xffffffff
	jmp	.label_802
.label_810:
	xor	eax, eax
	mov	rsi, qword ptr [rbp - 0x10]
	mov	ecx, OFFSET FLAT:label_808
	mov	edi, ecx
	mov	dword ptr [rbp - 0x5c], eax
	call	strcmp
	mov	ecx, dword ptr [rbp - 0x5c]
	cmp	ecx, eax
	jne	.label_811
	mov	dword ptr [rbp - 4], 0xffffffff
	jmp	.label_802
	.section	.text
	.align	32
	#Procedure 0x409860

	.globl set_custom_quoting
	.type set_custom_quoting, @function
set_custom_quoting:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	qword ptr [rbp - 0x18], rdx
	cmp	qword ptr [rbp - 8], 0
	jne	.label_817
	movabs	rax, OFFSET FLAT:default_quoting_options
	mov	qword ptr [rbp - 8], rax
.label_817:
	mov	rax, qword ptr [rbp - 8]
	mov	dword ptr [rax], 0xa
	cmp	qword ptr [rbp - 0x10], 0
	je	.label_819
	cmp	qword ptr [rbp - 0x18], 0
	jne	.label_818
.label_819:
	call	abort
.label_818:
	mov	rax, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rbp - 8]
	mov	qword ptr [rcx + 0x28], rax
	mov	rax, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rbp - 8]
	mov	qword ptr [rcx + 0x30], rax
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x4098d0

	.globl dev_ino_compare
	.type dev_ino_compare, @function
dev_ino_compare:
	push	rbp
	mov	rbp, rsp
	xor	eax, eax
	mov	cl, al
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	rsi, qword ptr [rbp - 8]
	mov	qword ptr [rbp - 0x18], rsi
	mov	rsi, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 0x20], rsi
	mov	rsi, qword ptr [rbp - 0x18]
	mov	rsi, qword ptr [rsi]
	mov	rdi, qword ptr [rbp - 0x20]
	cmp	rsi, qword ptr [rdi]
	mov	byte ptr [rbp - 0x21], cl
	jne	.label_820
	mov	rax, qword ptr [rbp - 0x18]
	mov	rax, qword ptr [rax + 8]
	mov	rcx, qword ptr [rbp - 0x20]
	cmp	rax, qword ptr [rcx + 8]
	sete	dl
	mov	byte ptr [rbp - 0x21], dl
.label_820:
	mov	al, byte ptr [rbp - 0x21]
	xor	ecx, ecx
	mov	edx, 1
	test	al, 1
	cmovne	ecx, edx
	cmp	ecx, 0
	setne	al
	and	al, 1
	movzx	eax, al
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x409939
	.globl sub_409939
	.type sub_409939, @function
sub_409939:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x409940

	.globl quotearg_n_custom_mem
	.type quotearg_n_custom_mem, @function
quotearg_n_custom_mem:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x70
	lea	rax, [rbp - 0x60]
	movabs	r9, OFFSET FLAT:default_quoting_options
	mov	r10d, 0x38
	mov	r11d, r10d
	mov	dword ptr [rbp - 4], edi
	mov	qword ptr [rbp - 0x10], rsi
	mov	qword ptr [rbp - 0x18], rdx
	mov	qword ptr [rbp - 0x20], rcx
	mov	qword ptr [rbp - 0x28], r8
	mov	rcx, rax
	mov	rdi, rcx
	mov	rsi, r9
	mov	rdx, r11
	mov	qword ptr [rbp - 0x68], rax
	call	memcpy
	mov	rsi, qword ptr [rbp - 0x10]
	mov	rdx, qword ptr [rbp - 0x18]
	mov	rdi, qword ptr [rbp - 0x68]
	call	set_custom_quoting
	lea	rcx, [rbp - 0x60]
	mov	edi, dword ptr [rbp - 4]
	mov	rsi, qword ptr [rbp - 0x20]
	mov	rdx, qword ptr [rbp - 0x28]
	call	quotearg_n_options
	add	rsp, 0x70
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x4099b2
	.globl sub_4099b2
	.type sub_4099b2, @function
sub_4099b2:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4099c0

	.globl __argmatch_die
	.type __argmatch_die, @function
__argmatch_die:
	push	rbp
	mov	rbp, rsp
	mov	edi, 1
	call	usage
	.section	.text
	.align	32
	#Procedure 0x4099ce
	.globl sub_4099ce
	.type sub_4099ce, @function
sub_4099ce:

	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x4099d0

	.globl freecon
	.type freecon, @function
freecon:
	push	rbp
	mov	rbp, rsp
	mov	qword ptr [rbp - 8], rdi
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x4099da
	.globl sub_4099da
	.type sub_4099da, @function
sub_4099da:

	nop	word ptr [rax + rax]
.label_821:
	mov	eax, 0x38
	mov	edx, eax
	lea	rcx, [rbp - 0x40]
	mov	eax, dword ptr [rbp - 4]
	mov	dword ptr [rbp - 0x40], eax
	mov	rsi, qword ptr [rbp - 0x48]
	mov	rdi, rsi
	mov	rsi, rcx
	call	memcpy
	mov	rax, qword ptr [rbp - 0x50]
	add	rsp, 0x50
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x409a0a
	.globl sub_409a0a
	.type sub_409a0a, @function
sub_409a0a:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x409a16

	.globl quoting_options_from_style
	.type quoting_options_from_style, @function
quoting_options_from_style:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x50
	mov	rax, rdi
	xor	ecx, ecx
	mov	edx, 0x38
	lea	r8, [rbp - 0x40]
	mov	dword ptr [rbp - 4], esi
	mov	qword ptr [rbp - 0x48], rdi
	mov	rdi, r8
	mov	esi, ecx
	mov	qword ptr [rbp - 0x50], rax
	call	memset
	cmp	dword ptr [rbp - 4], 0xa
	jne	.label_821
	call	abort
.label_850:
	movabs	rax, OFFSET FLAT:label_843
	movabs	rcx, OFFSET FLAT:label_844
	cmp	dword ptr [dword ptr [ls_mode]],  2
	cmove	rax, rcx
	mov	qword ptr [rbp - 0x90], rax
.label_825:
	mov	rax, qword ptr [rbp - 0x90]
	mov	rdi, rax
	call	emit_ancillary_info
.label_854:
	mov	edi, dword ptr [rbp - 4]
	call	exit
	.section	.text
	.align	32
	#Procedure 0x409a8e
	.globl sub_409a8e
	.type sub_409a8e, @function
sub_409a8e:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x409a9a

	.globl usage
	.type usage, @function
usage:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x90
	mov	dword ptr [rbp - 4], edi
	cmp	dword ptr [rbp - 4], 0
	je	.label_830
	jmp	.label_838
.label_838:
	movabs	rdi, OFFSET FLAT:label_840
	mov	rax,  qword ptr [word ptr [stderr]]
	mov	qword ptr [rbp - 0x10], rax
	call	gettext
	mov	rdx,  qword ptr [word ptr [program_name]]
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsi, rax
	mov	al, 0
	call	fprintf
	mov	dword ptr [rbp - 0x14], eax
	jmp	.label_854
.label_830:
	movabs	rdi, OFFSET FLAT:label_857
	call	gettext
	mov	rsi,  qword ptr [word ptr [program_name]]
	mov	rdi, rax
	mov	al, 0
	call	printf
	movabs	rdi, OFFSET FLAT:label_828
	mov	dword ptr [rbp - 0x18], eax
	call	gettext
	mov	rsi,  qword ptr [word ptr [stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	mov	dword ptr [rbp - 0x1c], eax
	call	emit_mandatory_arg_note
	movabs	rdi, OFFSET FLAT:label_841
	call	gettext
	mov	rsi,  qword ptr [word ptr [stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	movabs	rdi, OFFSET FLAT:label_832
	mov	dword ptr [rbp - 0x20], eax
	call	gettext
	mov	rsi,  qword ptr [word ptr [stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	movabs	rdi, OFFSET FLAT:label_855
	mov	dword ptr [rbp - 0x24], eax
	call	gettext
	mov	rsi,  qword ptr [word ptr [stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	movabs	rdi, OFFSET FLAT:label_833
	mov	dword ptr [rbp - 0x28], eax
	call	gettext
	mov	rsi,  qword ptr [word ptr [stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	movabs	rdi, OFFSET FLAT:label_845
	mov	dword ptr [rbp - 0x2c], eax
	call	gettext
	mov	rsi,  qword ptr [word ptr [stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	movabs	rdi, OFFSET FLAT:label_848
	mov	dword ptr [rbp - 0x30], eax
	call	gettext
	mov	rsi,  qword ptr [word ptr [stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	movabs	rdi, OFFSET FLAT:label_823
	mov	dword ptr [rbp - 0x34], eax
	call	gettext
	mov	rsi,  qword ptr [word ptr [stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	movabs	rdi, OFFSET FLAT:label_853
	mov	dword ptr [rbp - 0x38], eax
	call	gettext
	mov	rsi,  qword ptr [word ptr [stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	movabs	rdi, OFFSET FLAT:label_847
	mov	dword ptr [rbp - 0x3c], eax
	call	gettext
	mov	rsi,  qword ptr [word ptr [stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	movabs	rdi, OFFSET FLAT:label_856
	mov	dword ptr [rbp - 0x40], eax
	call	gettext
	mov	rsi,  qword ptr [word ptr [stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	movabs	rdi, OFFSET FLAT:label_826
	mov	dword ptr [rbp - 0x44], eax
	call	gettext
	mov	rsi,  qword ptr [word ptr [stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	movabs	rdi, OFFSET FLAT:label_837
	mov	dword ptr [rbp - 0x48], eax
	call	gettext
	mov	rsi,  qword ptr [word ptr [stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	movabs	rdi, OFFSET FLAT:label_849
	mov	dword ptr [rbp - 0x4c], eax
	call	gettext
	mov	rsi,  qword ptr [word ptr [stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	movabs	rdi, OFFSET FLAT:label_858
	mov	dword ptr [rbp - 0x50], eax
	call	gettext
	mov	rsi,  qword ptr [word ptr [stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	movabs	rdi, OFFSET FLAT:label_829
	mov	dword ptr [rbp - 0x54], eax
	call	gettext
	mov	rsi,  qword ptr [word ptr [stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	movabs	rdi, OFFSET FLAT:label_839
	mov	dword ptr [rbp - 0x58], eax
	call	gettext
	mov	rsi,  qword ptr [word ptr [stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	movabs	rdi, OFFSET FLAT:label_851
	mov	dword ptr [rbp - 0x5c], eax
	call	gettext
	mov	rsi,  qword ptr [word ptr [stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	movabs	rdi, OFFSET FLAT:label_859
	mov	dword ptr [rbp - 0x60], eax
	call	gettext
	mov	rsi,  qword ptr [word ptr [stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	movabs	rdi, OFFSET FLAT:label_831
	mov	dword ptr [rbp - 0x64], eax
	call	gettext
	mov	rsi,  qword ptr [word ptr [stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	movabs	rdi, OFFSET FLAT:label_842
	mov	dword ptr [rbp - 0x68], eax
	call	gettext
	mov	rsi,  qword ptr [word ptr [stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	movabs	rdi, OFFSET FLAT:label_852
	mov	dword ptr [rbp - 0x6c], eax
	call	gettext
	mov	rsi,  qword ptr [word ptr [stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	movabs	rdi, OFFSET FLAT:label_822
	mov	dword ptr [rbp - 0x70], eax
	call	gettext
	mov	rsi,  qword ptr [word ptr [stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	movabs	rdi, OFFSET FLAT:label_835
	mov	dword ptr [rbp - 0x74], eax
	call	gettext
	mov	rsi,  qword ptr [word ptr [stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	movabs	rdi, OFFSET FLAT:label_846
	mov	dword ptr [rbp - 0x78], eax
	call	gettext
	mov	rsi,  qword ptr [word ptr [stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	mov	dword ptr [rbp - 0x7c], eax
	call	emit_size_note
	movabs	rdi, OFFSET FLAT:label_834
	call	gettext
	mov	rsi,  qword ptr [word ptr [stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	movabs	rdi, OFFSET FLAT:label_827
	mov	dword ptr [rbp - 0x80], eax
	call	gettext
	mov	rsi,  qword ptr [word ptr [stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	movabs	rdi, OFFSET FLAT:label_836
	mov	dword ptr [rbp - 0x84], eax
	call	gettext
	mov	rsi,  qword ptr [word ptr [stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	cmp	dword ptr [dword ptr [ls_mode]],  1
	mov	dword ptr [rbp - 0x88], eax
	jne	.label_850
	movabs	rax, OFFSET FLAT:label_824
	mov	qword ptr [rbp - 0x90], rax
	jmp	.label_825
	.section	.text
	.align	32
	#Procedure 0x409f00

	.globl emit_size_note
	.type emit_size_note, @function
emit_size_note:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	movabs	rdi, OFFSET FLAT:label_860
	call	gettext
	mov	rsi,  qword ptr [word ptr [stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	mov	dword ptr [rbp - 4], eax
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x409f30

	.globl lgetfilecon
	.type lgetfilecon, @function
lgetfilecon:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	call	__errno_location
	mov	ecx, 0xffffffff
	mov	dword ptr [rax], 0x5f
	mov	eax, ecx
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x409f58
	.globl sub_409f58
	.type sub_409f58, @function
sub_409f58:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x409f60

	.globl hash_delete
	.type hash_delete, @function
hash_delete:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0xc0
	lea	rdx, [rbp - 0x28]
	mov	ecx, 1
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 0x18], rsi
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rbp - 0x18]
	call	hash_find_entry
	mov	qword ptr [rbp - 0x20], rax
	cmp	qword ptr [rbp - 0x20], 0
	jne	.label_863
	mov	qword ptr [rbp - 8], 0
	jmp	.label_868
.label_863:
	mov	rax, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rax + 0x20]
	add	rcx, -1
	mov	qword ptr [rax + 0x20], rcx
	mov	rax, qword ptr [rbp - 0x28]
	cmp	qword ptr [rax], 0
	jne	.label_873
	mov	rax, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rax + 0x18]
	dec	rcx
	mov	qword ptr [rax + 0x18], rcx
	mov	rax, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rax + 0x10]
	mov	rdx, qword ptr [rax + 0x18]
	mov	rsi, rdx
	shr	rsi, 1
	mov	edi, edx
	and	edi, 1
	mov	r8d, edi
	or	r8, rsi
	cvtsi2ss	xmm0, r8
	addss	xmm0, xmm0
	cvtsi2ss	xmm1, rdx
	test	rdx, rdx
	mov	qword ptr [rbp - 0x50], rax
	mov	qword ptr [rbp - 0x58], rcx
	movss	dword ptr [rbp - 0x5c], xmm1
	movss	dword ptr [rbp - 0x60], xmm0
	js	.label_861
	movss	xmm0, dword ptr [rbp - 0x5c]
	movss	dword ptr [rbp - 0x60], xmm0
.label_861:
	movss	xmm0, dword ptr [rbp - 0x60]
	mov	rax, qword ptr [rbp - 0x50]
	mov	rcx, qword ptr [rax + 0x28]
	movss	xmm1, dword ptr [rcx]
	mov	rcx, qword ptr [rbp - 0x58]
	shr	rcx, 1
	mov	rdx, qword ptr [rbp - 0x58]
	mov	esi, edx
	and	esi, 1
	mov	edi, esi
	or	rdi, rcx
	cvtsi2ss	xmm2, rdi
	addss	xmm2, xmm2
	cvtsi2ss	xmm3, rdx
	test	rdx, rdx
	movss	dword ptr [rbp - 0x64], xmm0
	movss	dword ptr [rbp - 0x68], xmm1
	movss	dword ptr [rbp - 0x6c], xmm3
	movss	dword ptr [rbp - 0x70], xmm2
	js	.label_872
	movss	xmm0, dword ptr [rbp - 0x6c]
	movss	dword ptr [rbp - 0x70], xmm0
.label_872:
	movss	xmm0, dword ptr [rbp - 0x70]
	movss	xmm1, dword ptr [rbp - 0x68]
	mulss	xmm1, xmm0
	movss	xmm0, dword ptr [rbp - 0x64]
	ucomiss	xmm1, xmm0
	jbe	.label_876
	mov	rdi, qword ptr [rbp - 0x10]
	call	check_tuning
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rdi + 0x10]
	mov	rdx, qword ptr [rdi + 0x18]
	mov	rsi, rdx
	shr	rsi, 1
	mov	r8d, edx
	and	r8d, 1
	mov	r9d, r8d
	or	r9, rsi
	cvtsi2ss	xmm0, r9
	addss	xmm0, xmm0
	cvtsi2ss	xmm1, rdx
	test	rdx, rdx
	mov	byte ptr [rbp - 0x71], al
	mov	qword ptr [rbp - 0x80], rdi
	mov	qword ptr [rbp - 0x88], rcx
	movss	dword ptr [rbp - 0x8c], xmm1
	movss	dword ptr [rbp - 0x90], xmm0
	js	.label_865
	movss	xmm0, dword ptr [rbp - 0x8c]
	movss	dword ptr [rbp - 0x90], xmm0
.label_865:
	movss	xmm0, dword ptr [rbp - 0x90]
	mov	rax, qword ptr [rbp - 0x80]
	mov	rcx, qword ptr [rax + 0x28]
	movss	xmm1, dword ptr [rcx]
	mov	rcx, qword ptr [rbp - 0x88]
	shr	rcx, 1
	mov	rdx, qword ptr [rbp - 0x88]
	mov	esi, edx
	and	esi, 1
	mov	edi, esi
	or	rdi, rcx
	cvtsi2ss	xmm2, rdi
	addss	xmm2, xmm2
	cvtsi2ss	xmm3, rdx
	test	rdx, rdx
	movss	dword ptr [rbp - 0x94], xmm0
	movss	dword ptr [rbp - 0x98], xmm1
	movss	dword ptr [rbp - 0x9c], xmm3
	movss	dword ptr [rbp - 0xa0], xmm2
	js	.label_862
	movss	xmm0, dword ptr [rbp - 0x9c]
	movss	dword ptr [rbp - 0xa0], xmm0
.label_862:
	movss	xmm0, dword ptr [rbp - 0xa0]
	movss	xmm1, dword ptr [rbp - 0x98]
	mulss	xmm1, xmm0
	movss	xmm0, dword ptr [rbp - 0x94]
	ucomiss	xmm1, xmm0
	jbe	.label_875
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax + 0x28]
	mov	qword ptr [rbp - 0x30], rax
	mov	rax, qword ptr [rbp - 0x30]
	test	byte ptr [rax + 0x10], 1
	je	.label_871
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax + 0x10]
	mov	rcx, rax
	shr	rcx, 1
	mov	edx, eax
	and	edx, 1
	mov	esi, edx
	or	rsi, rcx
	cvtsi2ss	xmm0, rsi
	addss	xmm0, xmm0
	cvtsi2ss	xmm1, rax
	test	rax, rax
	movss	dword ptr [rbp - 0xa4], xmm1
	movss	dword ptr [rbp - 0xa8], xmm0
	js	.label_877
	movss	xmm0, dword ptr [rbp - 0xa4]
	movss	dword ptr [rbp - 0xa8], xmm0
.label_877:
	movss	xmm0, dword ptr [rbp - 0xa8]
	mov	rax, qword ptr [rbp - 0x30]
	mulss	xmm0, dword ptr [rax + 4]
	movss	dword ptr [rbp - 0xac], xmm0
	jmp	.label_864
.label_871:
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax + 0x10]
	mov	rcx, rax
	shr	rcx, 1
	mov	edx, eax
	and	edx, 1
	mov	esi, edx
	or	rsi, rcx
	cvtsi2ss	xmm0, rsi
	addss	xmm0, xmm0
	cvtsi2ss	xmm1, rax
	test	rax, rax
	movss	dword ptr [rbp - 0xb0], xmm1
	movss	dword ptr [rbp - 0xb4], xmm0
	js	.label_874
	movss	xmm0, dword ptr [rbp - 0xb0]
	movss	dword ptr [rbp - 0xb4], xmm0
.label_874:
	movss	xmm0, dword ptr [rbp - 0xb4]
	mov	rax, qword ptr [rbp - 0x30]
	mulss	xmm0, dword ptr [rax + 4]
	mov	rax, qword ptr [rbp - 0x30]
	mulss	xmm0, dword ptr [rax + 8]
	movss	dword ptr [rbp - 0xac], xmm0
.label_864:
	movss	xmm0, dword ptr [rbp - 0xac]
	movss	xmm1,  dword ptr [dword ptr [rip + label_867]]
	movaps	xmm2, xmm0
	subss	xmm2, xmm1
	cvttss2si	rax, xmm2
	movabs	rcx, 0x8000000000000000
	xor	rax, rcx
	cvttss2si	rcx, xmm0
	ucomiss	xmm0, xmm1
	cmovb	rax, rcx
	mov	qword ptr [rbp - 0x38], rax
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rbp - 0x38]
	call	hash_rehash
	test	al, 1
	jne	.label_870
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax + 0x48]
	mov	qword ptr [rbp - 0x40], rax
.label_866:
	cmp	qword ptr [rbp - 0x40], 0
	je	.label_869
	mov	rax, qword ptr [rbp - 0x40]
	mov	rax, qword ptr [rax + 8]
	mov	qword ptr [rbp - 0x48], rax
	mov	rax, qword ptr [rbp - 0x40]
	mov	rdi, rax
	call	free
	mov	rax, qword ptr [rbp - 0x48]
	mov	qword ptr [rbp - 0x40], rax
	jmp	.label_866
.label_869:
	mov	rax, qword ptr [rbp - 0x10]
	mov	qword ptr [rax + 0x48], 0
.label_870:
	jmp	.label_875
.label_875:
	jmp	.label_876
.label_876:
	jmp	.label_873
.label_873:
	mov	rax, qword ptr [rbp - 0x20]
	mov	qword ptr [rbp - 8], rax
.label_868:
	mov	rax, qword ptr [rbp - 8]
	add	rsp, 0xc0
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40a353
	.globl sub_40a353
	.type sub_40a353, @function
sub_40a353:

	nop	word ptr cs:[rax + rax]
.label_880:
	mov	byte ptr [rbp - 1], 0
.label_879:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40a36e
	.globl sub_40a36e
	.type sub_40a36e, @function
sub_40a36e:

	nop	
	.section	.text
	.align	32
	#Procedure 0x40a36f
	.globl c_isascii
	.type c_isascii, @function
c_isascii:

	push	rbp
	mov	rbp, rsp
	mov	dword ptr [rbp - 8], edi
	sub	edi, 0x7f
	mov	dword ptr [rbp - 0xc], edi
	ja	.label_880
	jmp	.label_878
.label_878:
	mov	byte ptr [rbp - 1], 1
	jmp	.label_879
	.section	.text
	.align	32
	#Procedure 0x40a390

	.globl quotearg_style
	.type quotearg_style, @function
quotearg_style:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	xor	eax, eax
	mov	dword ptr [rbp - 4], edi
	mov	qword ptr [rbp - 0x10], rsi
	mov	esi, dword ptr [rbp - 4]
	mov	rdx, qword ptr [rbp - 0x10]
	mov	edi, eax
	call	quotearg_n_style
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40a3b5
	.globl sub_40a3b5
	.type sub_40a3b5, @function
sub_40a3b5:

	nop	word ptr cs:[rax + rax]
.label_885:
	mov	rax, qword ptr [rbp - 0x20]
	mov	rcx, qword ptr [rbp - 0x10]
	cmp	rax, qword ptr [rcx + 0x18]
	jne	.label_881
	mov	rax, qword ptr [rbp - 0x28]
	mov	rcx, qword ptr [rbp - 0x10]
	cmp	rax, qword ptr [rcx + 0x20]
	jne	.label_881
	mov	byte ptr [rbp - 1], 1
	jmp	.label_882
.label_887:
	jmp	.label_886
.label_886:
	jmp	.label_883
.label_883:
	mov	rax, qword ptr [rbp - 0x18]
	add	rax, 0x10
	mov	qword ptr [rbp - 0x18], rax
	jmp	.label_884
.label_881:
	mov	byte ptr [rbp - 1], 0
.label_882:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40a416
	.globl sub_40a416
	.type sub_40a416, @function
sub_40a416:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40a425
	.globl hash_table_ok
	.type hash_table_ok, @function
hash_table_ok:

	push	rbp
	mov	rbp, rsp
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 0x20], 0
	mov	qword ptr [rbp - 0x28], 0
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rdi, qword ptr [rdi]
	mov	qword ptr [rbp - 0x18], rdi
.label_884:
	mov	rax, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rbp - 0x10]
	cmp	rax, qword ptr [rcx + 8]
	jae	.label_885
	mov	rax, qword ptr [rbp - 0x18]
	cmp	qword ptr [rax], 0
	je	.label_886
	mov	rax, qword ptr [rbp - 0x18]
	mov	qword ptr [rbp - 0x30], rax
	mov	rax, qword ptr [rbp - 0x20]
	add	rax, 1
	mov	qword ptr [rbp - 0x20], rax
	mov	rax, qword ptr [rbp - 0x28]
	add	rax, 1
	mov	qword ptr [rbp - 0x28], rax
.label_888:
	mov	rax, qword ptr [rbp - 0x30]
	mov	rax, qword ptr [rax + 8]
	mov	qword ptr [rbp - 0x30], rax
	cmp	qword ptr [rbp - 0x30], 0
	je	.label_887
	mov	rax, qword ptr [rbp - 0x28]
	add	rax, 1
	mov	qword ptr [rbp - 0x28], rax
	jmp	.label_888
.label_904:
	jmp	.label_902
.label_902:
	mov	rax, qword ptr [rbp - 0x18]
	add	rax, -1
	mov	qword ptr [rbp - 0x18], rax
	jmp	.label_903
.label_899:
	mov	rax, qword ptr [rbp - 0x20]
	mov	qword ptr [rbp - 0x18], rax
.label_903:
	mov	eax, 1
	mov	ecx, eax
	cmp	rcx, qword ptr [rbp - 0x18]
	jae	.label_892
	mov	rax, qword ptr [rbp - 0x18]
	sub	rax, 1
	imul	rax, rax, 0x18
	add	rax,  qword ptr [word ptr [column_info]]
	test	byte ptr [rax], 1
	je	.label_904
	jmp	.label_892
.label_896:
	mov	rax,  qword ptr [word ptr [cwd_n_used]]
	mov	qword ptr [rbp - 0x50], rax
.label_890:
	mov	rax, qword ptr [rbp - 0x50]
	mov	qword ptr [rbp - 0x20], rax
	call	init_column_info
	mov	qword ptr [rbp - 0x10], 0
.label_900:
	mov	rax, qword ptr [rbp - 0x10]
	cmp	rax,  qword ptr [word ptr [cwd_n_used]]
	jae	.label_899
	mov	rax, qword ptr [rbp - 0x10]
	mov	rcx,  qword ptr [word ptr [sorted_file]]
	mov	rax, qword ptr [rcx + rax*8]
	mov	qword ptr [rbp - 0x28], rax
	mov	rdi, qword ptr [rbp - 0x28]
	call	length_of_file_name_and_frills
	mov	qword ptr [rbp - 0x30], rax
	mov	qword ptr [rbp - 0x38], 0
.label_893:
	mov	rax, qword ptr [rbp - 0x38]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_897
	mov	rax, qword ptr [rbp - 0x38]
	imul	rax, rax, 0x18
	add	rax,  qword ptr [word ptr [column_info]]
	test	byte ptr [rax], 1
	je	.label_895
	test	byte ptr [rbp - 1], 1
	je	.label_889
	mov	rax, qword ptr [rbp - 0x10]
	mov	rcx,  qword ptr [word ptr [cwd_n_used]]
	add	rcx, qword ptr [rbp - 0x38]
	mov	rdx, qword ptr [rbp - 0x38]
	add	rdx, 1
	mov	qword ptr [rbp - 0x58], rax
	mov	rax, rcx
	xor	esi, esi
	mov	qword ptr [rbp - 0x60], rdx
	mov	edx, esi
	mov	rcx, qword ptr [rbp - 0x60]
	div	rcx
	mov	rdi, qword ptr [rbp - 0x58]
	mov	qword ptr [rbp - 0x68], rax
	mov	rax, rdi
	xor	esi, esi
	mov	edx, esi
	mov	r8, qword ptr [rbp - 0x68]
	div	r8
	mov	qword ptr [rbp - 0x70], rax
	jmp	.label_894
	.section	.text
	.align	32
	#Procedure 0x40a5db

	.globl calculate_columns
	.type calculate_columns, @function
calculate_columns:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x70
	mov	al, dil
	and	al, 1
	mov	byte ptr [rbp - 1], al
	mov	rcx,  qword ptr [word ptr [max_idx]]
	cmp	rcx,  qword ptr [word ptr [cwd_n_used]]
	jae	.label_896
	mov	rax,  qword ptr [word ptr [max_idx]]
	mov	qword ptr [rbp - 0x50], rax
	jmp	.label_890
.label_889:
	mov	rax, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rbp - 0x38]
	add	rcx, 1
	xor	edx, edx
	div	rcx
	mov	qword ptr [rbp - 0x70], rdx
.label_894:
	mov	rax, qword ptr [rbp - 0x70]
	mov	ecx, 2
	xor	edx, edx
	mov	qword ptr [rbp - 0x40], rax
	mov	rax, qword ptr [rbp - 0x30]
	mov	rsi, qword ptr [rbp - 0x40]
	cmp	rsi, qword ptr [rbp - 0x38]
	cmove	ecx, edx
	movsxd	rsi, ecx
	add	rax, rsi
	mov	qword ptr [rbp - 0x48], rax
	mov	rax, qword ptr [rbp - 0x40]
	mov	rsi, qword ptr [rbp - 0x38]
	imul	rsi, rsi, 0x18
	add	rsi,  qword ptr [word ptr [column_info]]
	mov	rsi, qword ptr [rsi + 0x10]
	mov	rax, qword ptr [rsi + rax*8]
	cmp	rax, qword ptr [rbp - 0x48]
	jae	.label_901
	mov	rax, qword ptr [rbp - 0x48]
	mov	rcx, qword ptr [rbp - 0x40]
	mov	rdx, qword ptr [rbp - 0x38]
	imul	rdx, rdx, 0x18
	add	rdx,  qword ptr [word ptr [column_info]]
	mov	rdx, qword ptr [rdx + 0x10]
	sub	rax, qword ptr [rdx + rcx*8]
	mov	rcx, qword ptr [rbp - 0x38]
	imul	rcx, rcx, 0x18
	add	rcx,  qword ptr [word ptr [column_info]]
	add	rax, qword ptr [rcx + 8]
	mov	qword ptr [rcx + 8], rax
	mov	rax, qword ptr [rbp - 0x48]
	mov	rcx, qword ptr [rbp - 0x40]
	mov	rdx, qword ptr [rbp - 0x38]
	imul	rdx, rdx, 0x18
	add	rdx,  qword ptr [word ptr [column_info]]
	mov	rdx, qword ptr [rdx + 0x10]
	mov	qword ptr [rdx + rcx*8], rax
	mov	rax, qword ptr [rbp - 0x38]
	imul	rax, rax, 0x18
	add	rax,  qword ptr [word ptr [column_info]]
	mov	rax, qword ptr [rax + 8]
	cmp	rax,  qword ptr [word ptr [line_length]]
	setb	sil
	mov	rax, qword ptr [rbp - 0x38]
	imul	rax, rax, 0x18
	add	rax,  qword ptr [word ptr [column_info]]
	and	sil, 1
	mov	byte ptr [rax], sil
.label_901:
	jmp	.label_895
.label_895:
	jmp	.label_891
.label_891:
	mov	rax, qword ptr [rbp - 0x38]
	add	rax, 1
	mov	qword ptr [rbp - 0x38], rax
	jmp	.label_893
.label_897:
	jmp	.label_898
.label_898:
	mov	rax, qword ptr [rbp - 0x10]
	add	rax, 1
	mov	qword ptr [rbp - 0x10], rax
	jmp	.label_900
.label_892:
	mov	rax, qword ptr [rbp - 0x18]
	add	rsp, 0x70
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40a73f
	.globl sub_40a73f
	.type sub_40a73f, @function
sub_40a73f:

	nop	
.label_910:
	movss	xmm0, dword ptr [rbp - 0x1c]
	movss	xmm1,  dword ptr [dword ptr [rip + label_867]]
	movaps	xmm2, xmm0
	subss	xmm2, xmm1
	cvttss2si	rax, xmm2
	movabs	rcx, 0x8000000000000000
	xor	rax, rcx
	cvttss2si	rcx, xmm0
	ucomiss	xmm1, xmm0
	cmova	rax, rcx
	mov	qword ptr [rbp - 0x10], rax
.label_909:
	mov	rdi, qword ptr [rbp - 0x10]
	call	next_prime
	movabs	rdi, 0xfffffffffffffff
	mov	qword ptr [rbp - 0x10], rax
	cmp	rdi, qword ptr [rbp - 0x10]
	jae	.label_906
	mov	qword ptr [rbp - 8], 0
	jmp	.label_905
.label_906:
	mov	rax, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 8], rax
.label_905:
	mov	rax, qword ptr [rbp - 8]
	add	rsp, 0x30
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40a7b6
	.globl sub_40a7b6
	.type sub_40a7b6, @function
sub_40a7b6:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40a7c3

	.globl compute_bucket_size
	.type compute_bucket_size, @function
compute_bucket_size:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x30
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 0x18], rsi
	mov	rsi, qword ptr [rbp - 0x18]
	test	byte ptr [rsi + 0x10], 1
	jne	.label_909
	movss	xmm0,  dword ptr [dword ptr [rip + label_907]]
	mov	rax, qword ptr [rbp - 0x10]
	mov	rcx, rax
	shr	rcx, 1
	mov	edx, eax
	and	edx, 1
	mov	esi, edx
	or	rsi, rcx
	cvtsi2ss	xmm1, rsi
	addss	xmm1, xmm1
	cvtsi2ss	xmm2, rax
	test	rax, rax
	movss	dword ptr [rbp - 0x20], xmm0
	movss	dword ptr [rbp - 0x24], xmm2
	movss	dword ptr [rbp - 0x28], xmm1
	js	.label_908
	movss	xmm0, dword ptr [rbp - 0x24]
	movss	dword ptr [rbp - 0x28], xmm0
.label_908:
	movss	xmm0, dword ptr [rbp - 0x28]
	mov	rax, qword ptr [rbp - 0x18]
	divss	xmm0, dword ptr [rax + 8]
	movss	dword ptr [rbp - 0x1c], xmm0
	movss	xmm0, dword ptr [rbp - 0x1c]
	movss	xmm1, dword ptr [rbp - 0x20]
	ucomiss	xmm0, xmm1
	jb	.label_910
	mov	qword ptr [rbp - 8], 0
	jmp	.label_905
.label_912:
	mov	byte ptr [rbp - 1], 0
.label_913:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40a86e
	.globl sub_40a86e
	.type sub_40a86e, @function
sub_40a86e:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40a87c

	.globl c_isdigit
	.type c_isdigit, @function
c_isdigit:
	push	rbp
	mov	rbp, rsp
	mov	dword ptr [rbp - 8], edi
	add	edi, -0x30
	sub	edi, 9
	mov	dword ptr [rbp - 0xc], edi
	ja	.label_912
	jmp	.label_911
.label_911:
	mov	byte ptr [rbp - 1], 1
	jmp	.label_913
	.section	.text
	.align	32
	#Procedure 0x40a8a0

	.globl quotearg_n_style_colon
	.type quotearg_n_style_colon, @function
quotearg_n_style_colon:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0xa0
	lea	rax, [rbp - 0x80]
	mov	dword ptr [rbp - 4], edi
	mov	dword ptr [rbp - 8], esi
	mov	qword ptr [rbp - 0x10], rdx
	mov	esi, dword ptr [rbp - 8]
	mov	rdi, rax
	call	quoting_options_from_style
	lea	rax, [rbp - 0x48]
	mov	esi, 0x3a
	mov	edx, 1
	mov	ecx, 0x38
	mov	edi, ecx
	lea	r8, [rbp - 0x80]
	mov	r9, rax
	mov	qword ptr [rbp - 0x88], rdi
	mov	rdi, r9
	mov	dword ptr [rbp - 0x8c], esi
	mov	rsi, r8
	mov	r8, qword ptr [rbp - 0x88]
	mov	dword ptr [rbp - 0x90], edx
	mov	rdx, r8
	mov	qword ptr [rbp - 0x98], rax
	call	memcpy
	mov	rdi, qword ptr [rbp - 0x98]
	mov	esi, dword ptr [rbp - 0x8c]
	mov	edx, dword ptr [rbp - 0x90]
	call	set_char_quoting
	mov	rdx, -1
	lea	rcx, [rbp - 0x48]
	mov	edi, dword ptr [rbp - 4]
	mov	rsi, qword ptr [rbp - 0x10]
	mov	dword ptr [rbp - 0x9c], eax
	call	quotearg_n_options
	add	rsp, 0xa0
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40a94d
	.globl sub_40a94d
	.type sub_40a94d, @function
sub_40a94d:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x40a950

	.globl xstrcoll_size
	.type xstrcoll_size, @function
xstrcoll_size:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	movabs	rdx, OFFSET FLAT:xstrcoll
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	rsi, qword ptr [rbp - 8]
	mov	rdi, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 0x18], rdi
	mov	rdi, rsi
	mov	rsi, qword ptr [rbp - 0x18]
	call	cmp_size
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40a988
	.globl sub_40a988
	.type sub_40a988, @function
sub_40a988:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40a990

	.globl xnrealloc
	.type xnrealloc, @function
xnrealloc:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	movabs	rax, 0x7fffffffffffffff
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	qword ptr [rbp - 0x18], rdx
	xor	ecx, ecx
	mov	edx, ecx
	div	qword ptr [rbp - 0x18]
	cmp	rax, qword ptr [rbp - 0x10]
	jae	.label_914
	call	xalloc_die
.label_914:
	mov	rdi, qword ptr [rbp - 8]
	mov	rax, qword ptr [rbp - 0x10]
	imul	rax, qword ptr [rbp - 0x18]
	mov	rsi, rax
	call	xrealloc
	add	rsp, 0x20
	pop	rbp
	ret	
.label_915:
	mov	edi, 0x20
	call	putchar_unlocked
	mov	rcx, qword ptr [rbp - 8]
	add	rcx, 1
	mov	qword ptr [rbp - 8], rcx
	mov	dword ptr [rbp - 0x20], eax
.label_916:
	jmp	.label_918
.label_917:
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40aa04
	.globl sub_40aa04
	.type sub_40aa04, @function
sub_40aa04:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40aa13

	.globl indent
	.type indent, @function
indent:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
.label_918:
	mov	rax, qword ptr [rbp - 8]
	cmp	rax, qword ptr [rbp - 0x10]
	jae	.label_917
	cmp	qword ptr [word ptr [tabsize]],  0
	je	.label_915
	mov	rax, qword ptr [rbp - 0x10]
	xor	ecx, ecx
	mov	edx, ecx
	div	qword ptr [word ptr [tabsize]]
	mov	rsi, qword ptr [rbp - 8]
	add	rsi, 1
	mov	qword ptr [rbp - 0x18], rax
	mov	rax, rsi
	xor	ecx, ecx
	mov	edx, ecx
	div	qword ptr [word ptr [tabsize]]
	mov	rsi, qword ptr [rbp - 0x18]
	cmp	rsi, rax
	jbe	.label_915
	mov	edi, 9
	call	putchar_unlocked
	mov	rcx,  qword ptr [word ptr [tabsize]]
	mov	rdx, qword ptr [rbp - 8]
	mov	dword ptr [rbp - 0x1c], eax
	mov	rax, rdx
	xor	edi, edi
	mov	edx, edi
	div	qword ptr [word ptr [tabsize]]
	sub	rcx, rdx
	add	rcx, qword ptr [rbp - 8]
	mov	qword ptr [rbp - 8], rcx
	jmp	.label_916
	.section	.text
	.align	32
	#Procedure 0x40aab0
	.globl hash_get_next
	.type hash_get_next, @function
hash_get_next:

	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x30
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 0x18], rsi
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rbp - 0x18]
	call	safe_hasher
	mov	qword ptr [rbp - 0x20], rax
	mov	rax, qword ptr [rbp - 0x20]
	mov	qword ptr [rbp - 0x28], rax
.label_923:
	mov	rax, qword ptr [rbp - 0x28]
	mov	rax, qword ptr [rax]
	cmp	rax, qword ptr [rbp - 0x18]
	jne	.label_921
	mov	rax, qword ptr [rbp - 0x28]
	cmp	qword ptr [rax + 8], 0
	je	.label_921
	mov	rax, qword ptr [rbp - 0x28]
	mov	rax, qword ptr [rax + 8]
	mov	rax, qword ptr [rax]
	mov	qword ptr [rbp - 8], rax
	jmp	.label_924
.label_919:
	jmp	.label_920
.label_921:
	mov	rax, qword ptr [rbp - 0x28]
	mov	rax, qword ptr [rax + 8]
	mov	qword ptr [rbp - 0x28], rax
	cmp	qword ptr [rbp - 0x28], 0
	jne	.label_923
	jmp	.label_920
.label_920:
	mov	rax, qword ptr [rbp - 0x20]
	add	rax, 0x10
	mov	qword ptr [rbp - 0x20], rax
	mov	rcx, qword ptr [rbp - 0x10]
	cmp	rax, qword ptr [rcx + 8]
	jae	.label_922
	mov	rax, qword ptr [rbp - 0x20]
	cmp	qword ptr [rax], 0
	je	.label_919
	mov	rax, qword ptr [rbp - 0x20]
	mov	rax, qword ptr [rax]
	mov	qword ptr [rbp - 8], rax
	jmp	.label_924
.label_922:
	mov	qword ptr [rbp - 8], 0
.label_924:
	mov	rax, qword ptr [rbp - 8]
	add	rsp, 0x30
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40ab78
	.globl sub_40ab78
	.type sub_40ab78, @function
sub_40ab78:

	nop	dword ptr [rax + rax]
.label_928:
	test	byte ptr [rbp - 0x19], 1
	jne	.label_925
	test	byte ptr [rbp - 0x1a], 1
	je	.label_925
	mov	dword ptr [rbp - 4], 1
	jmp	.label_927
.label_925:
	jmp	.label_926
.label_926:
	movabs	rdx, OFFSET FLAT:xstrcoll
	mov	rax, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	rdi, rax
	mov	rsi, rcx
	call	cmp_mtime
	mov	dword ptr [rbp - 4], eax
.label_927:
	mov	eax, dword ptr [rbp - 4]
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40abce
	.globl sub_40abce
	.type sub_40abce, @function
sub_40abce:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x40abd1

	.globl xstrcoll_df_mtime
	.type xstrcoll_df_mtime, @function
xstrcoll_df_mtime:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 0x18], rsi
	mov	rax, qword ptr [rbp - 0x10]
	mov	rdi, rax
	call	is_linked_directory
	and	al, 1
	mov	byte ptr [rbp - 0x19], al
	mov	rdi, qword ptr [rbp - 0x18]
	call	is_linked_directory
	and	al, 1
	mov	byte ptr [rbp - 0x1a], al
	test	byte ptr [rbp - 0x19], 1
	je	.label_928
	test	byte ptr [rbp - 0x1a], 1
	jne	.label_928
	mov	dword ptr [rbp - 4], 0xffffffff
	jmp	.label_927
	.section	.text
	.align	32
	#Procedure 0x40ac20
	.globl fgetfilecon
	.type fgetfilecon, @function
fgetfilecon:

	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	mov	dword ptr [rbp - 4], edi
	mov	qword ptr [rbp - 0x10], rsi
	call	__errno_location
	mov	edi, 0xffffffff
	mov	dword ptr [rax], 0x5f
	mov	eax, edi
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40ac47
	.globl sub_40ac47
	.type sub_40ac47, @function
sub_40ac47:

	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40ac50

	.globl triple_hash
	.type triple_hash, @function
triple_hash:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	rsi, qword ptr [rbp - 8]
	mov	qword ptr [rbp - 0x18], rsi
	mov	rsi, qword ptr [rbp - 0x18]
	mov	rdi, qword ptr [rsi]
	mov	rsi, qword ptr [rbp - 0x10]
	call	hash_pjw
	mov	qword ptr [rbp - 0x20], rax
	mov	rax, qword ptr [rbp - 0x20]
	mov	rsi, qword ptr [rbp - 0x18]
	xor	rax, qword ptr [rsi + 8]
	xor	ecx, ecx
	mov	edx, ecx
	div	qword ptr [rbp - 0x10]
	mov	rax, rdx
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40ac99
	.globl sub_40ac99
	.type sub_40ac99, @function
sub_40ac99:

	nop	dword ptr [rax]
.label_931:
	xor	eax, eax
	mov	ecx, eax
	mov	qword ptr [rbp - 0x40], rcx
	jmp	.label_929
.label_929:
	mov	rax, qword ptr [rbp - 0x40]
	add	rsp, 0x40
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40acb7

	.globl getgroup
	.type getgroup, @function
getgroup:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x40
	mov	dword ptr [rbp - 4], edi
	mov	qword ptr [rbp - 0x18], 0
	mov	rax,  qword ptr [word ptr [group_alist]]
	mov	qword ptr [rbp - 0x10], rax
.label_934:
	cmp	qword ptr [rbp - 0x10], 0
	je	.label_935
	mov	rax, qword ptr [rbp - 0x10]
	mov	ecx, dword ptr [rax]
	cmp	ecx, dword ptr [rbp - 4]
	jne	.label_930
	mov	rax, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 0x18], rax
	jmp	.label_935
.label_935:
	cmp	qword ptr [rbp - 0x18], 0
	jne	.label_937
	mov	edi, dword ptr [rbp - 4]
	call	getgrgid
	mov	qword ptr [rbp - 0x20], rax
	cmp	qword ptr [rbp - 0x20], 0
	je	.label_933
	mov	rax, qword ptr [rbp - 0x20]
	mov	rax, qword ptr [rax]
	mov	qword ptr [rbp - 0x30], rax
	jmp	.label_936
.label_933:
	movabs	rax, OFFSET FLAT:label_662
	mov	qword ptr [rbp - 0x30], rax
	jmp	.label_936
.label_936:
	mov	rax, qword ptr [rbp - 0x30]
	mov	qword ptr [rbp - 0x28], rax
	mov	rdi, qword ptr [rbp - 0x28]
	call	strlen
	add	rax, 1
	add	rax, 0x17
	and	rax, 0xfffffffffffffff8
	mov	rdi, rax
	call	xmalloc
	mov	qword ptr [rbp - 0x18], rax
	mov	ecx, dword ptr [rbp - 4]
	mov	rax, qword ptr [rbp - 0x18]
	mov	dword ptr [rax], ecx
	mov	rax, qword ptr [rbp - 0x18]
	add	rax, 0x10
	mov	rsi, qword ptr [rbp - 0x28]
	mov	rdi, rax
	call	strcpy
	mov	rsi,  qword ptr [word ptr [group_alist]]
	mov	rdi, qword ptr [rbp - 0x18]
	mov	qword ptr [rdi + 8], rsi
	mov	rsi, qword ptr [rbp - 0x18]
	mov	qword ptr [word ptr [group_alist]],  rsi
	mov	qword ptr [rbp - 0x38], rax
.label_937:
	mov	rax, qword ptr [rbp - 0x18]
	movsx	ecx, byte ptr [rax + 0x10]
	cmp	ecx, 0
	je	.label_931
	mov	rax, qword ptr [rbp - 0x18]
	add	rax, 0x10
	mov	qword ptr [rbp - 0x40], rax
	jmp	.label_929
.label_930:
	jmp	.label_932
.label_932:
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax + 8]
	mov	qword ptr [rbp - 0x10], rax
	jmp	.label_934
	.section	.text
	.align	32
	#Procedure 0x40ade0

	.globl triple_compare_ino_str
	.type triple_compare_ino_str, @function
triple_compare_ino_str:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x30
	xor	eax, eax
	mov	cl, al
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	rsi, qword ptr [rbp - 8]
	mov	qword ptr [rbp - 0x18], rsi
	mov	rsi, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 0x20], rsi
	mov	rsi, qword ptr [rbp - 0x18]
	mov	rsi, qword ptr [rsi + 8]
	mov	rdi, qword ptr [rbp - 0x20]
	cmp	rsi, qword ptr [rdi + 8]
	mov	byte ptr [rbp - 0x21], cl
	jne	.label_938
	xor	eax, eax
	mov	cl, al
	mov	rdx, qword ptr [rbp - 0x18]
	mov	rdx, qword ptr [rdx + 0x10]
	mov	rsi, qword ptr [rbp - 0x20]
	cmp	rdx, qword ptr [rsi + 0x10]
	mov	byte ptr [rbp - 0x21], cl
	jne	.label_938
	mov	rax, qword ptr [rbp - 0x18]
	mov	rdi, qword ptr [rax]
	mov	rax, qword ptr [rbp - 0x20]
	mov	rsi, qword ptr [rax]
	call	strcmp
	cmp	eax, 0
	sete	cl
	mov	byte ptr [rbp - 0x21], cl
.label_938:
	mov	al, byte ptr [rbp - 0x21]
	xor	ecx, ecx
	mov	edx, 1
	test	al, 1
	cmovne	ecx, edx
	cmp	ecx, 0
	setne	al
	and	al, 1
	movzx	eax, al
	add	rsp, 0x30
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40ae76
	.globl sub_40ae76
	.type sub_40ae76, @function
sub_40ae76:

	nop	word ptr cs:[rax + rax]
.label_955:
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax + 0x10]
	mov	rcx, rax
	shr	rcx, 1
	mov	edx, eax
	and	edx, 1
	mov	esi, edx
	or	rsi, rcx
	cvtsi2ss	xmm0, rsi
	addss	xmm0, xmm0
	cvtsi2ss	xmm1, rax
	test	rax, rax
	movss	dword ptr [rbp - 0xb0], xmm1
	movss	dword ptr [rbp - 0xb4], xmm0
	js	.label_939
	movss	xmm0, dword ptr [rbp - 0xb0]
	movss	dword ptr [rbp - 0xb4], xmm0
.label_939:
	movss	xmm0, dword ptr [rbp - 0xb4]
	mov	rax, qword ptr [rbp - 0x38]
	mulss	xmm0, dword ptr [rax + 0xc]
	mov	rax, qword ptr [rbp - 0x38]
	mulss	xmm0, dword ptr [rax + 8]
	movss	dword ptr [rbp - 0xac], xmm0
.label_950:
	movss	xmm0, dword ptr [rbp - 0xac]
	movss	xmm1,  dword ptr [dword ptr [rip + label_907]]
	movss	dword ptr [rbp - 0x3c], xmm0
	movss	xmm0, dword ptr [rbp - 0x3c]
	ucomiss	xmm0, xmm1
	jb	.label_944
	mov	dword ptr [rbp - 4], 0xffffffff
	jmp	.label_940
.label_952:
	mov	rax, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rax + 0x10]
	mov	rdx, qword ptr [rax + 0x18]
	mov	rsi, rdx
	shr	rsi, 1
	mov	edi, edx
	and	edi, 1
	mov	r8d, edi
	or	r8, rsi
	cvtsi2ss	xmm0, r8
	addss	xmm0, xmm0
	cvtsi2ss	xmm1, rdx
	test	rdx, rdx
	mov	qword ptr [rbp - 0x50], rax
	mov	qword ptr [rbp - 0x58], rcx
	movss	dword ptr [rbp - 0x5c], xmm1
	movss	dword ptr [rbp - 0x60], xmm0
	js	.label_951
	movss	xmm0, dword ptr [rbp - 0x5c]
	movss	dword ptr [rbp - 0x60], xmm0
.label_951:
	movss	xmm0, dword ptr [rbp - 0x60]
	mov	rax, qword ptr [rbp - 0x50]
	mov	rcx, qword ptr [rax + 0x28]
	movss	xmm1, dword ptr [rcx + 8]
	mov	rcx, qword ptr [rbp - 0x58]
	shr	rcx, 1
	mov	rdx, qword ptr [rbp - 0x58]
	mov	esi, edx
	and	esi, 1
	mov	edi, esi
	or	rdi, rcx
	cvtsi2ss	xmm2, rdi
	addss	xmm2, xmm2
	cvtsi2ss	xmm3, rdx
	test	rdx, rdx
	movss	dword ptr [rbp - 0x64], xmm0
	movss	dword ptr [rbp - 0x68], xmm1
	movss	dword ptr [rbp - 0x6c], xmm3
	movss	dword ptr [rbp - 0x70], xmm2
	js	.label_954
	movss	xmm0, dword ptr [rbp - 0x6c]
	movss	dword ptr [rbp - 0x70], xmm0
.label_954:
	movss	xmm0, dword ptr [rbp - 0x70]
	movss	xmm1, dword ptr [rbp - 0x68]
	mulss	xmm1, xmm0
	movss	xmm0, dword ptr [rbp - 0x64]
	ucomiss	xmm0, xmm1
	jbe	.label_947
	mov	rdi, qword ptr [rbp - 0x10]
	call	check_tuning
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rdi + 0x10]
	mov	rdx, qword ptr [rdi + 0x18]
	mov	rsi, rdx
	shr	rsi, 1
	mov	r8d, edx
	and	r8d, 1
	mov	r9d, r8d
	or	r9, rsi
	cvtsi2ss	xmm0, r9
	addss	xmm0, xmm0
	cvtsi2ss	xmm1, rdx
	test	rdx, rdx
	mov	byte ptr [rbp - 0x71], al
	mov	qword ptr [rbp - 0x80], rdi
	mov	qword ptr [rbp - 0x88], rcx
	movss	dword ptr [rbp - 0x8c], xmm1
	movss	dword ptr [rbp - 0x90], xmm0
	js	.label_953
	movss	xmm0, dword ptr [rbp - 0x8c]
	movss	dword ptr [rbp - 0x90], xmm0
.label_953:
	movss	xmm0, dword ptr [rbp - 0x90]
	mov	rax, qword ptr [rbp - 0x80]
	mov	rcx, qword ptr [rax + 0x28]
	movss	xmm1, dword ptr [rcx + 8]
	mov	rcx, qword ptr [rbp - 0x88]
	shr	rcx, 1
	mov	rdx, qword ptr [rbp - 0x88]
	mov	esi, edx
	and	esi, 1
	mov	edi, esi
	or	rdi, rcx
	cvtsi2ss	xmm2, rdi
	addss	xmm2, xmm2
	cvtsi2ss	xmm3, rdx
	test	rdx, rdx
	movss	dword ptr [rbp - 0x94], xmm0
	movss	dword ptr [rbp - 0x98], xmm1
	movss	dword ptr [rbp - 0x9c], xmm3
	movss	dword ptr [rbp - 0xa0], xmm2
	js	.label_949
	movss	xmm0, dword ptr [rbp - 0x9c]
	movss	dword ptr [rbp - 0xa0], xmm0
.label_949:
	movss	xmm0, dword ptr [rbp - 0xa0]
	movss	xmm1, dword ptr [rbp - 0x98]
	mulss	xmm1, xmm0
	movss	xmm0, dword ptr [rbp - 0x94]
	ucomiss	xmm0, xmm1
	jbe	.label_946
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax + 0x28]
	mov	qword ptr [rbp - 0x38], rax
	mov	rax, qword ptr [rbp - 0x38]
	test	byte ptr [rax + 0x10], 1
	je	.label_955
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax + 0x10]
	mov	rcx, rax
	shr	rcx, 1
	mov	edx, eax
	and	edx, 1
	mov	esi, edx
	or	rsi, rcx
	cvtsi2ss	xmm0, rsi
	addss	xmm0, xmm0
	cvtsi2ss	xmm1, rax
	test	rax, rax
	movss	dword ptr [rbp - 0xa4], xmm1
	movss	dword ptr [rbp - 0xa8], xmm0
	js	.label_948
	movss	xmm0, dword ptr [rbp - 0xa4]
	movss	dword ptr [rbp - 0xa8], xmm0
.label_948:
	movss	xmm0, dword ptr [rbp - 0xa8]
	mov	rax, qword ptr [rbp - 0x38]
	mulss	xmm0, dword ptr [rax + 0xc]
	movss	dword ptr [rbp - 0xac], xmm0
	jmp	.label_950
.label_941:
	lea	rdx, [rbp - 0x30]
	xor	ecx, ecx
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rbp - 0x18]
	call	hash_find_entry
	cmp	rax, 0
	je	.label_943
	call	abort
.label_943:
	jmp	.label_946
.label_946:
	jmp	.label_947
.label_947:
	mov	rax, qword ptr [rbp - 0x30]
	cmp	qword ptr [rax], 0
	je	.label_945
	mov	rdi, qword ptr [rbp - 0x10]
	call	allocate_entry
	mov	qword ptr [rbp - 0x48], rax
	cmp	qword ptr [rbp - 0x48], 0
	jne	.label_942
	mov	dword ptr [rbp - 4], 0xffffffff
	jmp	.label_940
.label_945:
	mov	rax, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rbp - 0x30]
	mov	qword ptr [rcx], rax
	mov	rax, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rax + 0x20]
	add	rcx, 1
	mov	qword ptr [rax + 0x20], rcx
	mov	rax, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rax + 0x18]
	add	rcx, 1
	mov	qword ptr [rax + 0x18], rcx
	mov	dword ptr [rbp - 4], 1
.label_940:
	mov	eax, dword ptr [rbp - 4]
	add	rsp, 0xc0
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40b214
	.globl sub_40b214
	.type sub_40b214, @function
sub_40b214:

	nop	word ptr cs:[rax + rax]
.label_942:
	mov	rax, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rbp - 0x48]
	mov	qword ptr [rcx], rax
	mov	rax, qword ptr [rbp - 0x30]
	mov	rax, qword ptr [rax + 8]
	mov	rcx, qword ptr [rbp - 0x48]
	mov	qword ptr [rcx + 8], rax
	mov	rax, qword ptr [rbp - 0x48]
	mov	rcx, qword ptr [rbp - 0x30]
	mov	qword ptr [rcx + 8], rax
	mov	rax, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rax + 0x20]
	add	rcx, 1
	mov	qword ptr [rax + 0x20], rcx
	mov	dword ptr [rbp - 4], 1
	jmp	.label_940
.label_944:
	mov	rdi, qword ptr [rbp - 0x10]
	movss	xmm0, dword ptr [rbp - 0x3c]
	movss	xmm1,  dword ptr [dword ptr [rip + label_867]]
	movaps	xmm2, xmm0
	subss	xmm2, xmm1
	cvttss2si	rax, xmm2
	movabs	rcx, 0x8000000000000000
	xor	rax, rcx
	cvttss2si	rcx, xmm0
	ucomiss	xmm1, xmm0
	cmova	rax, rcx
	mov	rsi, rax
	call	hash_rehash
	test	al, 1
	jne	.label_941
	mov	dword ptr [rbp - 4], 0xffffffff
	jmp	.label_940
	.section	.text
	.align	32
	#Procedure 0x40b2b6

	.globl hash_insert_if_absent
	.type hash_insert_if_absent, @function
hash_insert_if_absent:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0xc0
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 0x18], rsi
	mov	qword ptr [rbp - 0x20], rdx
	cmp	qword ptr [rbp - 0x18], 0
	jne	.label_956
	call	abort
.label_956:
	lea	rdx, [rbp - 0x30]
	xor	ecx, ecx
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rbp - 0x18]
	call	hash_find_entry
	mov	qword ptr [rbp - 0x28], rax
	cmp	rax, 0
	je	.label_952
	cmp	qword ptr [rbp - 0x20], 0
	je	.label_957
	mov	rax, qword ptr [rbp - 0x28]
	mov	rcx, qword ptr [rbp - 0x20]
	mov	qword ptr [rcx], rax
.label_957:
	mov	dword ptr [rbp - 4], 0
	jmp	.label_940
	.section	.text
	.align	32
	#Procedure 0x40b320

	.globl version_etc_va
	.type version_etc_va, @function
version_etc_va:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0xa0
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	qword ptr [rbp - 0x18], rdx
	mov	qword ptr [rbp - 0x20], rcx
	mov	qword ptr [rbp - 0x28], r8
	mov	qword ptr [rbp - 0x30], 0
.label_964:
	xor	eax, eax
	mov	cl, al
	cmp	qword ptr [rbp - 0x30], 0xa
	mov	byte ptr [rbp - 0x81], cl
	jae	.label_959
	mov	rax, qword ptr [rbp - 0x28]
	mov	ecx, dword ptr [rax]
	cmp	ecx, 0x28
	mov	qword ptr [rbp - 0x90], rax
	mov	dword ptr [rbp - 0x94], ecx
	ja	.label_963
	mov	eax, dword ptr [rbp - 0x94]
	movsxd	rcx, eax
	mov	rdx, qword ptr [rbp - 0x90]
	add	rcx, qword ptr [rdx + 0x10]
	add	eax, 8
	mov	dword ptr [rdx], eax
	mov	qword ptr [rbp - 0xa0], rcx
	jmp	.label_961
.label_960:
	lea	r8, [rbp - 0x80]
	mov	rdi, qword ptr [rbp - 8]
	mov	rsi, qword ptr [rbp - 0x10]
	mov	rdx, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rbp - 0x20]
	mov	r9, qword ptr [rbp - 0x30]
	call	version_etc_arn
	add	rsp, 0xa0
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40b3c3
	.globl sub_40b3c3
	.type sub_40b3c3, @function
sub_40b3c3:

	nop	dword ptr [rax]
.label_963:
	mov	rax, qword ptr [rbp - 0x90]
	mov	rcx, qword ptr [rax + 8]
	mov	rdx, rcx
	add	rcx, 8
	mov	qword ptr [rax + 8], rcx
	mov	qword ptr [rbp - 0xa0], rdx
.label_961:
	mov	rax, qword ptr [rbp - 0xa0]
	mov	rax, qword ptr [rax]
	mov	rcx, qword ptr [rbp - 0x30]
	mov	qword ptr [rbp + rcx*8 - 0x80], rax
	cmp	rax, 0
	setne	dl
	mov	byte ptr [rbp - 0x81], dl
.label_959:
	mov	al, byte ptr [rbp - 0x81]
	test	al, 1
	jne	.label_958
	jmp	.label_960
.label_958:
	jmp	.label_962
.label_962:
	mov	rax, qword ptr [rbp - 0x30]
	add	rax, 1
	mov	qword ptr [rbp - 0x30], rax
	jmp	.label_964
	.section	.text
	.align	32
	#Procedure 0x40b430
	.globl quotearg_custom
	.type quotearg_custom, @function
quotearg_custom:

	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	xor	eax, eax
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	qword ptr [rbp - 0x18], rdx
	mov	rsi, qword ptr [rbp - 8]
	mov	rdx, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	edi, eax
	call	quotearg_n_custom
	add	rsp, 0x20
	pop	rbp
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

	.globl is_smack_enabled
	.type is_smack_enabled, @function
is_smack_enabled:
	push	rbp
	mov	rbp, rsp
	xor	eax, eax
	mov	cl, al
	and	cl, 1
	movzx	eax, cl
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40b470

	.globl quotearg_n_style_mem
	.type quotearg_n_style_mem, @function
quotearg_n_style_mem:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x50
	lea	rax, [rbp - 0x50]
	mov	dword ptr [rbp - 4], edi
	mov	dword ptr [rbp - 8], esi
	mov	qword ptr [rbp - 0x10], rdx
	mov	qword ptr [rbp - 0x18], rcx
	mov	esi, dword ptr [rbp - 8]
	mov	rdi, rax
	call	quoting_options_from_style
	lea	rcx, [rbp - 0x50]
	mov	edi, dword ptr [rbp - 4]
	mov	rsi, qword ptr [rbp - 0x10]
	mov	rdx, qword ptr [rbp - 0x18]
	call	quotearg_n_options
	add	rsp, 0x50
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40b4af
	.globl sub_40b4af
	.type sub_40b4af, @function
sub_40b4af:

	nop	
	.section	.text
	.align	32
	#Procedure 0x40b4b0

	.globl argmatch_valid
	.type argmatch_valid, @function
argmatch_valid:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x50
	movabs	rax, OFFSET FLAT:label_969
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	qword ptr [rbp - 0x18], rdx
	mov	qword ptr [rbp - 0x28], 0
	mov	rdi, rax
	call	gettext
	mov	rsi,  qword ptr [word ptr [stderr]]
	mov	rdi, rax
	call	fputs_unlocked
	mov	qword ptr [rbp - 0x20], 0
	mov	dword ptr [rbp - 0x2c], eax
.label_966:
	mov	rax, qword ptr [rbp - 0x20]
	mov	rcx, qword ptr [rbp - 8]
	cmp	qword ptr [rcx + rax*8], 0
	je	.label_972
	cmp	qword ptr [rbp - 0x20], 0
	je	.label_967
	mov	rdi, qword ptr [rbp - 0x28]
	mov	rax, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rbp - 0x18]
	imul	rcx, qword ptr [rbp - 0x20]
	add	rax, rcx
	mov	rdx, qword ptr [rbp - 0x18]
	mov	rsi, rax
	call	memcmp
	cmp	eax, 0
	je	.label_970
.label_967:
	mov	rdi,  qword ptr [word ptr [stderr]]
	mov	rax, qword ptr [rbp - 0x20]
	mov	rcx, qword ptr [rbp - 8]
	mov	rax, qword ptr [rcx + rax*8]
	mov	qword ptr [rbp - 0x38], rdi
	mov	rdi, rax
	call	quote
	movabs	rsi, OFFSET FLAT:label_965
	mov	rdi, qword ptr [rbp - 0x38]
	mov	rdx, rax
	mov	al, 0
	call	fprintf
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rdx, qword ptr [rbp - 0x18]
	imul	rdx, qword ptr [rbp - 0x20]
	add	rcx, rdx
	mov	qword ptr [rbp - 0x28], rcx
	mov	dword ptr [rbp - 0x3c], eax
	jmp	.label_971
.label_970:
	mov	rdi,  qword ptr [word ptr [stderr]]
	mov	rax, qword ptr [rbp - 0x20]
	mov	rcx, qword ptr [rbp - 8]
	mov	rax, qword ptr [rcx + rax*8]
	mov	qword ptr [rbp - 0x48], rdi
	mov	rdi, rax
	call	quote
	movabs	rsi, OFFSET FLAT:label_973
	mov	rdi, qword ptr [rbp - 0x48]
	mov	rdx, rax
	mov	al, 0
	call	fprintf
	mov	dword ptr [rbp - 0x4c], eax
.label_971:
	jmp	.label_968
.label_968:
	mov	rax, qword ptr [rbp - 0x20]
	add	rax, 1
	mov	qword ptr [rbp - 0x20], rax
	jmp	.label_966
.label_972:
	mov	edi, 0xa
	mov	rsi,  qword ptr [word ptr [stderr]]
	call	putc_unlocked
	mov	dword ptr [rbp - 0x50], eax
	add	rsp, 0x50
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40b600

	.globl getfilecon_cache
	.type getfilecon_cache, @function
getfilecon_cache:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x30
	mov	al, dl
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 0x18], rsi
	and	al, 1
	mov	byte ptr [rbp - 0x19], al
	mov	rsi, qword ptr [rbp - 0x18]
	mov	rsi, qword ptr [rsi + 0x18]
	cmp	rsi,  qword ptr [word ptr [getfilecon_cache.unsupported_device]]
	jne	.label_974
	call	__errno_location
	mov	dword ptr [rax], 0x5f
	mov	dword ptr [rbp - 4], 0xffffffff
	jmp	.label_977
.label_976:
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rbp - 0x18]
	add	rax, 0xb0
	mov	rsi, rax
	call	lgetfilecon
	mov	dword ptr [rbp - 0x24], eax
.label_978:
	mov	eax, dword ptr [rbp - 0x24]
	mov	dword ptr [rbp - 0x20], eax
	cmp	dword ptr [rbp - 0x20], 0
	jge	.label_975
	call	__errno_location
	mov	edi, dword ptr [rax]
	call	errno_unsupported
	test	al, 1
	jne	.label_979
	jmp	.label_975
.label_979:
	mov	rax, qword ptr [rbp - 0x18]
	mov	rax, qword ptr [rax + 0x18]
	mov	qword ptr [word ptr [getfilecon_cache.unsupported_device]],  rax
.label_975:
	mov	eax, dword ptr [rbp - 0x20]
	mov	dword ptr [rbp - 4], eax
.label_977:
	mov	eax, dword ptr [rbp - 4]
	add	rsp, 0x30
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40b6a5
	.globl sub_40b6a5
	.type sub_40b6a5, @function
sub_40b6a5:

	nop	word ptr cs:[rax + rax]
.label_974:
	mov	dword ptr [rbp - 0x20], 0
	test	byte ptr [rbp - 0x19], 1
	je	.label_976
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rbp - 0x18]
	add	rax, 0xb0
	mov	rsi, rax
	call	getfilecon
	mov	dword ptr [rbp - 0x24], eax
	jmp	.label_978
	.section	.text
	.align	32
	#Procedure 0x40b6e0

	.globl dev_ino_push
	.type dev_ino_push, @function
dev_ino_push:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x50
	movabs	rax, OFFSET FLAT:dev_ino_obstack
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	dword ptr [rbp - 0x24], 0x10
	mov	qword ptr [rbp - 0x30], rax
	movsxd	rax, dword ptr [rbp - 0x24]
	mov	qword ptr [rbp - 0x38], rax
	mov	rax, qword ptr [rbp - 0x30]
	mov	qword ptr [rbp - 0x40], rax
	mov	rax, qword ptr [rbp - 0x40]
	mov	rax, qword ptr [rax + 0x20]
	mov	rsi, qword ptr [rbp - 0x40]
	mov	rsi, qword ptr [rsi + 0x18]
	sub	rax, rsi
	mov	qword ptr [rbp - 0x48], rax
	mov	rax, qword ptr [rbp - 0x48]
	cmp	rax, qword ptr [rbp - 0x38]
	jae	.label_980
	mov	rdi, qword ptr [rbp - 0x30]
	mov	rsi, qword ptr [rbp - 0x38]
	call	_obstack_newchunk
.label_980:
	mov	rax, qword ptr [rbp - 0x38]
	mov	rcx, qword ptr [rbp - 0x30]
	add	rax, qword ptr [rcx + 0x18]
	mov	qword ptr [rcx + 0x18], rax
	mov	rax,  qword ptr [word ptr [label_981]]
	mov	qword ptr [rbp - 0x18], rax
	mov	rax, qword ptr [rbp - 0x18]
	mov	qword ptr [rbp - 0x20], rax
	mov	rax, qword ptr [rbp - 0x20]
	add	rax, -0x10
	mov	qword ptr [rbp - 0x20], rax
	mov	rax, qword ptr [rbp - 8]
	mov	rcx, qword ptr [rbp - 0x20]
	mov	qword ptr [rcx + 8], rax
	mov	rax, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rbp - 0x20]
	mov	qword ptr [rcx], rax
	add	rsp, 0x50
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40b794
	.globl sub_40b794
	.type sub_40b794, @function
sub_40b794:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40b7a0

	.globl quote_name_width
	.type quote_name_width, @function
quote_name_width:
	push	rbp
	mov	rbp, rsp
	push	rbx
	sub	rsp, 0x2048
	lea	rax, [rbp - 0x2028]
	mov	ecx, 0x2000
	mov	r8d, ecx
	lea	r9, [rbp - 0x2030]
	lea	r10, [rbp - 0x2031]
	lea	r11, [rbp - 0x2020]
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 0x18], rsi
	mov	dword ptr [rbp - 0x1c], edx
	mov	qword ptr [rbp - 0x2028], r11
	mov	rdx, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	ebx, dword ptr [rbp - 0x1c]
	mov	rdi, rax
	mov	rsi, r8
	mov	r8d, ebx
	mov	qword ptr [rsp], r10
	call	quote_name_buf
	lea	rcx, [rbp - 0x2020]
	mov	rdx, qword ptr [rbp - 0x2028]
	cmp	rdx, rcx
	mov	qword ptr [rbp - 0x2040], rax
	je	.label_982
	mov	rax, qword ptr [rbp - 0x2028]
	cmp	rax, qword ptr [rbp - 0x10]
	je	.label_982
	mov	rdi, qword ptr [rbp - 0x2028]
	call	free
.label_982:
	mov	al, byte ptr [rbp - 0x2031]
	and	al, 1
	movzx	ecx, al
	mov	edx, ecx
	add	rdx, qword ptr [rbp - 0x2030]
	mov	qword ptr [rbp - 0x2030], rdx
	mov	rax, qword ptr [rbp - 0x2030]
	add	rsp, 0x2048
	pop	rbx
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40b866
	.globl sub_40b866
	.type sub_40b866, @function
sub_40b866:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40b870

	.globl attach
	.type attach, @function
attach:
	push	rbp
	mov	rbp, rsp
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	qword ptr [rbp - 0x18], rdx
	mov	rdx, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 0x20], rdx
	mov	rdx, qword ptr [rbp - 0x10]
	movsx	eax, byte ptr [rdx]
	cmp	eax, 0x2e
	jne	.label_988
	mov	rax, qword ptr [rbp - 0x10]
	movsx	ecx, byte ptr [rax + 1]
	cmp	ecx, 0
	je	.label_983
.label_988:
	jmp	.label_985
.label_985:
	mov	rax, qword ptr [rbp - 0x20]
	cmp	byte ptr [rax], 0
	je	.label_987
	mov	rax, qword ptr [rbp - 0x20]
	mov	rcx, rax
	add	rcx, 1
	mov	qword ptr [rbp - 0x20], rcx
	mov	dl, byte ptr [rax]
	mov	rax, qword ptr [rbp - 8]
	mov	rcx, rax
	add	rcx, 1
	mov	qword ptr [rbp - 8], rcx
	mov	byte ptr [rax], dl
	jmp	.label_985
.label_986:
	mov	rax, qword ptr [rbp - 8]
	mov	byte ptr [rax], 0
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40b8eb
	.globl sub_40b8eb
	.type sub_40b8eb, @function
sub_40b8eb:

	nop	word ptr [rax + rax]
.label_987:
	mov	rax, qword ptr [rbp - 0x20]
	cmp	rax, qword ptr [rbp - 0x10]
	jbe	.label_989
	mov	rax, qword ptr [rbp - 0x20]
	movsx	ecx, byte ptr [rax - 1]
	cmp	ecx, 0x2f
	je	.label_989
	mov	rax, qword ptr [rbp - 8]
	mov	rcx, rax
	add	rcx, 1
	mov	qword ptr [rbp - 8], rcx
	mov	byte ptr [rax], 0x2f
.label_989:
	jmp	.label_983
.label_983:
	jmp	.label_984
.label_984:
	mov	rax, qword ptr [rbp - 0x18]
	cmp	byte ptr [rax], 0
	je	.label_986
	mov	rax, qword ptr [rbp - 0x18]
	mov	rcx, rax
	add	rcx, 1
	mov	qword ptr [rbp - 0x18], rcx
	mov	dl, byte ptr [rax]
	mov	rax, qword ptr [rbp - 8]
	mov	rcx, rax
	add	rcx, 1
	mov	qword ptr [rbp - 8], rcx
	mov	byte ptr [rax], dl
	jmp	.label_984
.label_990:
	mov	byte ptr [rbp - 1], 1
.label_995:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	add	rsp, 0x50
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40b972
	.globl sub_40b972
	.type sub_40b972, @function
sub_40b972:

	nop	word ptr [rax + rax]
.label_993:
	mov	rax, qword ptr [rbp - 0x40]
	mov	rcx, qword ptr [rbp - 0x48]
	mov	qword ptr [rcx], rax
	mov	rax, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rax + 0x18]
	add	rcx, 1
	mov	qword ptr [rax + 0x18], rcx
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rbp - 0x30]
	call	free_entry
.label_1001:
	jmp	.label_997
.label_997:
	mov	rax, qword ptr [rbp - 0x38]
	mov	qword ptr [rbp - 0x30], rax
	jmp	.label_998
.label_1000:
	mov	rax, qword ptr [rbp - 0x40]
	mov	rcx, qword ptr [rbp - 0x48]
	mov	qword ptr [rcx], rax
	mov	rax, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rax + 0x18]
	add	rcx, 1
	mov	qword ptr [rax + 0x18], rcx
.label_992:
	mov	rax, qword ptr [rbp - 0x28]
	mov	qword ptr [rax], 0
	mov	rax, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rax + 0x18]
	add	rcx, -1
	mov	qword ptr [rax + 0x18], rcx
.label_994:
	jmp	.label_996
.label_996:
	mov	rax, qword ptr [rbp - 0x28]
	add	rax, 0x10
	mov	qword ptr [rbp - 0x28], rax
	jmp	.label_999
.label_1002:
	mov	rax, qword ptr [rbp - 0x28]
	mov	rax, qword ptr [rax]
	mov	qword ptr [rbp - 0x40], rax
	mov	rax, qword ptr [rbp - 0x28]
	mov	qword ptr [rax + 8], 0
	test	byte ptr [rbp - 0x19], 1
	je	.label_1003
	jmp	.label_996
.label_1003:
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rbp - 0x40]
	call	safe_hasher
	mov	qword ptr [rbp - 0x48], rax
	mov	rax, qword ptr [rbp - 0x48]
	cmp	qword ptr [rax], 0
	je	.label_1000
	mov	rdi, qword ptr [rbp - 0x10]
	call	allocate_entry
	mov	qword ptr [rbp - 0x50], rax
	cmp	qword ptr [rbp - 0x50], 0
	jne	.label_991
	mov	byte ptr [rbp - 1], 0
	jmp	.label_995
	.section	.text
	.align	32
	#Procedure 0x40ba64

	.globl transfer_entries
	.type transfer_entries, @function
transfer_entries:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x50
	mov	al, dl
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 0x18], rsi
	and	al, 1
	mov	byte ptr [rbp - 0x19], al
	mov	rsi, qword ptr [rbp - 0x18]
	mov	rsi, qword ptr [rsi]
	mov	qword ptr [rbp - 0x28], rsi
.label_999:
	mov	rax, qword ptr [rbp - 0x28]
	mov	rcx, qword ptr [rbp - 0x18]
	cmp	rax, qword ptr [rcx + 8]
	jae	.label_990
	mov	rax, qword ptr [rbp - 0x28]
	cmp	qword ptr [rax], 0
	je	.label_994
	mov	rax, qword ptr [rbp - 0x28]
	mov	rax, qword ptr [rax + 8]
	mov	qword ptr [rbp - 0x30], rax
.label_998:
	cmp	qword ptr [rbp - 0x30], 0
	je	.label_1002
	mov	rax, qword ptr [rbp - 0x30]
	mov	rax, qword ptr [rax]
	mov	qword ptr [rbp - 0x40], rax
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rbp - 0x40]
	call	safe_hasher
	mov	qword ptr [rbp - 0x48], rax
	mov	rax, qword ptr [rbp - 0x30]
	mov	rax, qword ptr [rax + 8]
	mov	qword ptr [rbp - 0x38], rax
	mov	rax, qword ptr [rbp - 0x48]
	cmp	qword ptr [rax], 0
	je	.label_993
	mov	rax, qword ptr [rbp - 0x48]
	mov	rax, qword ptr [rax + 8]
	mov	rcx, qword ptr [rbp - 0x30]
	mov	qword ptr [rcx + 8], rax
	mov	rax, qword ptr [rbp - 0x30]
	mov	rcx, qword ptr [rbp - 0x48]
	mov	qword ptr [rcx + 8], rax
	jmp	.label_1001
.label_991:
	mov	rax, qword ptr [rbp - 0x40]
	mov	rcx, qword ptr [rbp - 0x50]
	mov	qword ptr [rcx], rax
	mov	rax, qword ptr [rbp - 0x48]
	mov	rax, qword ptr [rax + 8]
	mov	rcx, qword ptr [rbp - 0x50]
	mov	qword ptr [rcx + 8], rax
	mov	rax, qword ptr [rbp - 0x50]
	mov	rcx, qword ptr [rbp - 0x48]
	mov	qword ptr [rcx + 8], rax
	jmp	.label_992
	.section	.text
	.align	32
	#Procedure 0x40bb40
	.globl quotearg_mem
	.type quotearg_mem, @function
quotearg_mem:

	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	xor	eax, eax
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	rsi, qword ptr [rbp - 8]
	mov	rdx, qword ptr [rbp - 0x10]
	mov	edi, eax
	call	quotearg_n_mem
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40bb67
	.globl sub_40bb67
	.type sub_40bb67, @function
sub_40bb67:

	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40bb70

	.globl match_suffix
	.type match_suffix, @function
match_suffix:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], 0
	mov	byte ptr [rbp - 0x11], 0
.label_1005:
	mov	rax, qword ptr [rbp - 8]
	mov	rax, qword ptr [rax]
	cmp	byte ptr [rax], 0
	je	.label_1006
	test	byte ptr [rbp - 0x11], 1
	je	.label_1012
	mov	byte ptr [rbp - 0x11], 0
	mov	rax, qword ptr [rbp - 8]
	mov	rax, qword ptr [rax]
	movsx	edi, byte ptr [rax]
	call	c_isalpha
	test	al, 1
	jne	.label_1011
	mov	eax, 0x7e
	mov	rcx, qword ptr [rbp - 8]
	mov	rcx, qword ptr [rcx]
	movsx	edx, byte ptr [rcx]
	cmp	eax, edx
	je	.label_1011
	mov	qword ptr [rbp - 0x10], 0
.label_1011:
	jmp	.label_1007
.label_1010:
	mov	rax, qword ptr [rbp - 8]
	mov	rax, qword ptr [rax]
	movsx	edi, byte ptr [rax]
	call	c_isalnum
	test	al, 1
	jne	.label_1009
	mov	eax, 0x7e
	mov	rcx, qword ptr [rbp - 8]
	mov	rcx, qword ptr [rcx]
	movsx	edx, byte ptr [rcx]
	cmp	eax, edx
	je	.label_1009
	mov	qword ptr [rbp - 0x10], 0
.label_1009:
	jmp	.label_1004
.label_1004:
	jmp	.label_1007
.label_1007:
	mov	rax, qword ptr [rbp - 8]
	mov	rcx, qword ptr [rax]
	add	rcx, 1
	mov	qword ptr [rax], rcx
	jmp	.label_1005
.label_1012:
	mov	eax, 0x2e
	mov	rcx, qword ptr [rbp - 8]
	mov	rcx, qword ptr [rcx]
	movsx	edx, byte ptr [rcx]
	cmp	eax, edx
	jne	.label_1010
	mov	byte ptr [rbp - 0x11], 1
	cmp	qword ptr [rbp - 0x10], 0
	jne	.label_1008
	mov	rax, qword ptr [rbp - 8]
	mov	rax, qword ptr [rax]
	mov	qword ptr [rbp - 0x10], rax
.label_1008:
	jmp	.label_1004
.label_1006:
	mov	rax, qword ptr [rbp - 0x10]
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40bc74
	.globl sub_40bc74
	.type sub_40bc74, @function
sub_40bc74:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40bc80

	.globl stophandler
	.type stophandler, @function
stophandler:
	push	rbp
	mov	rbp, rsp
	mov	dword ptr [rbp - 4], edi
	mov	edi,  dword ptr [dword ptr [interrupt_signal]]
	cmp	edi, 0
	jne	.label_1013
	mov	eax,  dword ptr [dword ptr [stop_signal_count]]
	add	eax, 1
	mov	dword ptr [dword ptr [stop_signal_count]],  eax
.label_1013:
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40bcaa
	.globl sub_40bcaa
	.type sub_40bcaa, @function
sub_40bcaa:

	nop	word ptr [rax + rax]
.label_1014:
	mov	rax, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rbp - 8]
	mov	rdi, qword ptr [rcx]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rcx]
	call	rax
	mov	dword ptr [rbp - 0x44], eax
.label_1015:
	mov	eax, dword ptr [rbp - 0x44]
	add	rsp, 0x50
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40bcd0
	.globl sub_40bcd0
	.type sub_40bcd0, @function
sub_40bcd0:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40bcdf

	.globl cmp_atime
	.type cmp_atime, @function
cmp_atime:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x50
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	qword ptr [rbp - 0x18], rdx
	mov	rdx, qword ptr [rbp - 0x10]
	add	rdx, 0x18
	mov	rdi, rdx
	call	get_stat_atime
	mov	qword ptr [rbp - 0x30], rax
	mov	qword ptr [rbp - 0x28], rdx
	mov	rax, qword ptr [rbp - 8]
	add	rax, 0x18
	mov	rdi, rax
	call	get_stat_atime
	mov	qword ptr [rbp - 0x40], rax
	mov	qword ptr [rbp - 0x38], rdx
	mov	rdi, qword ptr [rbp - 0x30]
	mov	rsi, qword ptr [rbp - 0x28]
	mov	rdx, qword ptr [rbp - 0x40]
	mov	rcx, qword ptr [rbp - 0x38]
	call	timespec_cmp
	mov	dword ptr [rbp - 0x1c], eax
	cmp	dword ptr [rbp - 0x1c], 0
	je	.label_1014
	mov	eax, dword ptr [rbp - 0x1c]
	mov	dword ptr [rbp - 0x44], eax
	jmp	.label_1015
	.section	.text
	.align	32
	#Procedure 0x40bd50
	.globl matchpathcon
	.type matchpathcon, @function
matchpathcon:

	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	mov	qword ptr [rbp - 8], rdi
	mov	dword ptr [rbp - 0xc], esi
	mov	qword ptr [rbp - 0x18], rdx
	call	__errno_location
	mov	esi, 0xffffffff
	mov	dword ptr [rax], 0x5f
	mov	eax, esi
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40bd7b
	.globl sub_40bd7b
	.type sub_40bd7b, @function
sub_40bd7b:

	nop	dword ptr [rax + rax]
.label_1033:
	mov	eax, dword ptr [rbp - 0x30]
	mov	ecx, dword ptr [rbp - 0x108]
	add	ecx, dword ptr [rbp - 0x64]
	cmp	eax, ecx
	setb	dl
	and	dl, 1
	movzx	eax, dl
	add	eax, 2
	mov	dword ptr [rbp - 0x1d4], eax
.label_1035:
	mov	eax, dword ptr [rbp - 0x1d4]
	mov	dword ptr [rbp - 0x64], eax
	mov	eax, dword ptr [rbp - 0x40]
	add	eax, 1
	mov	dword ptr [rbp - 0x40], eax
	xor	eax, eax
	mov	cl, al
	mov	eax, dword ptr [rbp - 0x30]
	mov	edx, eax
	cmp	rdx, qword ptr [rbp - 0x38]
	mov	byte ptr [rbp - 0x1d5], cl
	ja	.label_1027
	mov	eax, dword ptr [rbp - 0x40]
	cmp	eax, dword ptr [rbp - 0x44]
	setl	cl
	mov	byte ptr [rbp - 0x1d5], cl
.label_1027:
	mov	al, byte ptr [rbp - 0x1d5]
	test	al, 1
	jne	.label_1039
	cmp	qword ptr [rbp - 0x38], 0xa
	jae	.label_1038
	cmp	dword ptr [rbp - 0x2c], 1
	jne	.label_1046
	mov	eax, 2
	mov	ecx, dword ptr [rbp - 0x64]
	mov	edx, dword ptr [rbp - 0x3c]
	and	edx, 1
	add	ecx, edx
	cmp	eax, ecx
	jl	.label_1048
	jmp	.label_1023
.label_1066:
	mov	eax, dword ptr [rbp - 0x14]
	and	eax, 0x10
	cmp	eax, 0
	je	.label_1041
	mov	dword ptr [rbp - 0x40], 0
	mov	eax, dword ptr [rbp - 0x30]
	mov	ecx, eax
	cmp	rcx, qword ptr [rbp - 0x38]
	ja	.label_1040
	jmp	.label_1039
.label_1039:
	mov	rax, qword ptr [rbp - 0x38]
	mov	ecx, dword ptr [rbp - 0x30]
	mov	edx, ecx
	xor	ecx, ecx
	mov	qword ptr [rbp - 0x1d0], rdx
	mov	edx, ecx
	mov	rsi, qword ptr [rbp - 0x1d0]
	div	rsi
	imul	rdx, rdx, 0xa
	movsxd	rdi, dword ptr [rbp - 0x3c]
	add	rdx, rdi
	mov	ecx, edx
	mov	dword ptr [rbp - 0x104], ecx
	mov	ecx, dword ptr [rbp - 0x104]
	mov	eax, ecx
	xor	edx, edx
	div	dword ptr [rbp - 0x30]
	shl	edx, 1
	mov	ecx, dword ptr [rbp - 0x64]
	sar	ecx, 1
	add	edx, ecx
	mov	dword ptr [rbp - 0x108], edx
	mov	ecx, dword ptr [rbp - 0x30]
	mov	edi, ecx
	mov	r8, qword ptr [rbp - 0x38]
	mov	rax, r8
	xor	ecx, ecx
	mov	edx, ecx
	div	rdi
	mov	qword ptr [rbp - 0x38], rax
	mov	eax, dword ptr [rbp - 0x104]
	xor	ecx, ecx
	mov	edx, ecx
	div	dword ptr [rbp - 0x30]
	mov	dword ptr [rbp - 0x3c], eax
	mov	eax, dword ptr [rbp - 0x108]
	cmp	eax, dword ptr [rbp - 0x30]
	jae	.label_1033
	mov	eax, dword ptr [rbp - 0x108]
	add	eax, dword ptr [rbp - 0x64]
	cmp	eax, 0
	setne	cl
	and	cl, 1
	movzx	eax, cl
	mov	dword ptr [rbp - 0x1d4], eax
	jmp	.label_1035
.label_1058:
	jmp	.label_1064
.label_1064:
	mov	rax, qword ptr [rbp - 0x28]
	mov	qword ptr [rbp - 0x130], rax
	test	rax, rax
	setns	cl
	movzx	edx, cl
	mov	eax, edx
	fld	dword ptr [dword ptr [+ (rax * 4) + label_1067]]
	fild	qword ptr [rbp - 0x130]
	faddp	st(1)
	fld	st(0)
	fstp	xword ptr [rbp - 0xd0]
	mov	rax, qword ptr [rbp - 8]
	mov	qword ptr [rbp - 0x120], rax
	test	rax, rax
	setns	cl
	movzx	edx, cl
	mov	eax, edx
	fld	dword ptr [dword ptr [+ (rax * 4) + label_1067]]
	fild	qword ptr [rbp - 0x120]
	faddp	st(1)
	mov	rax, qword ptr [rbp - 0x20]
	mov	qword ptr [rbp - 0x128], rax
	test	rax, rax
	setns	cl
	movzx	edx, cl
	mov	eax, edx
	fld	dword ptr [dword ptr [+ (rax * 4) + label_1067]]
	fild	qword ptr [rbp - 0x128]
	faddp	st(1)
	fdivrp	st(2)
	fmulp	st(1)
	fstp	xword ptr [rbp - 0xe0]
	mov	edx, dword ptr [rbp - 0x14]
	and	edx, 0x10
	cmp	edx, 0
	jne	.label_1068
	mov	rdi, qword ptr [rbp - 0x10]
	mov	eax, dword ptr [rbp - 0x2c]
	fld	xword ptr [rbp - 0xe0]
	mov	rcx, rsp
	fstp	xword ptr [rcx]
	mov	qword ptr [rbp - 0x158], rdi
	mov	edi, eax
	call	adjust_value
	movabs	rcx, OFFSET FLAT:label_1050
	mov	rdx, rsp
	fstp	xword ptr [rdx]
	mov	eax, OFFSET FLAT:label_1050
	mov	esi, eax
	xor	eax, eax
	mov	r8b, al
	mov	rdi, qword ptr [rbp - 0x158]
	mov	al, r8b
	mov	qword ptr [rbp - 0x160], rcx
	call	sprintf
	mov	rdi, qword ptr [rbp - 0x10]
	mov	dword ptr [rbp - 0x164], eax
	call	strlen
	mov	qword ptr [rbp - 0xe8], rax
	mov	qword ptr [rbp - 0xf0], 0
	jmp	.label_1052
.label_1018:
	movsxd	rax, dword ptr [rbp - 0x40]
	movsx	ecx,  byte ptr [byte ptr [+ (rax * 1) + power_letter]]
	mov	dword ptr [rbp - 0x1dc], ecx
.label_1028:
	mov	eax, dword ptr [rbp - 0x1dc]
	mov	cl, al
	mov	rdx, qword ptr [rbp - 0x58]
	mov	rsi, rdx
	add	rsi, 1
	mov	qword ptr [rbp - 0x58], rsi
	mov	byte ptr [rdx], cl
.label_1036:
	mov	eax, dword ptr [rbp - 0x14]
	and	eax, 0x100
	cmp	eax, 0
	je	.label_1032
	mov	eax, dword ptr [rbp - 0x14]
	and	eax, 0x20
	cmp	eax, 0
	je	.label_1031
	cmp	dword ptr [rbp - 0x40], 0
	je	.label_1031
	mov	rax, qword ptr [rbp - 0x58]
	mov	rcx, rax
	add	rcx, 1
	mov	qword ptr [rbp - 0x58], rcx
	mov	byte ptr [rax], 0x69
.label_1031:
	mov	rax, qword ptr [rbp - 0x58]
	mov	rcx, rax
	add	rcx, 1
	mov	qword ptr [rbp - 0x58], rcx
	mov	byte ptr [rax], 0x42
.label_1032:
	jmp	.label_1034
.label_1034:
	mov	rax, qword ptr [rbp - 0x58]
	mov	byte ptr [rax], 0
	mov	rax, qword ptr [rbp - 0x50]
	add	rsp, 0x1f0
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40c087
	.globl sub_40c087
	.type sub_40c087, @function
sub_40c087:

	nop	word ptr [rax + rax]
.label_1068:
	fld1	
	fstp	xword ptr [rbp - 0x100]
	mov	dword ptr [rbp - 0x40], 0
.label_1049:
	mov	eax, dword ptr [rbp - 0x30]
	mov	ecx, eax
	mov	qword ptr [rbp - 0x138], rcx
	fild	qword ptr [rbp - 0x138]
	fld	xword ptr [rbp - 0x100]
	fmulp	st(1)
	fstp	xword ptr [rbp - 0x100]
	mov	eax, dword ptr [rbp - 0x40]
	add	eax, 1
	mov	dword ptr [rbp - 0x40], eax
	fld	xword ptr [rbp - 0x100]
	mov	eax, dword ptr [rbp - 0x30]
	mov	ecx, eax
	mov	qword ptr [rbp - 0x140], rcx
	fild	qword ptr [rbp - 0x140]
	fmulp	st(1)
	fld	xword ptr [rbp - 0xe0]
	xor	eax, eax
	mov	dl, al
	fucomip	st(1)
	fstp	st(0)
	mov	byte ptr [rbp - 0x165], dl
	jb	.label_1056
	jmp	.label_1057
.label_1057:
	mov	eax, dword ptr [rbp - 0x40]
	cmp	eax, dword ptr [rbp - 0x44]
	setl	cl
	mov	byte ptr [rbp - 0x165], cl
.label_1056:
	mov	al, byte ptr [rbp - 0x165]
	test	al, 1
	jne	.label_1049
	fld	xword ptr [rbp - 0x100]
	fld	xword ptr [rbp - 0xe0]
	fdivrp	st(1)
	fld	st(0)
	fstp	xword ptr [rbp - 0xe0]
	mov	rdi, qword ptr [rbp - 0x10]
	mov	eax, dword ptr [rbp - 0x2c]
	mov	rcx, rsp
	fstp	xword ptr [rcx]
	mov	qword ptr [rbp - 0x170], rdi
	mov	edi, eax
	call	adjust_value
	movabs	rcx, OFFSET FLAT:label_1054
	mov	rdx, rsp
	fstp	xword ptr [rdx]
	mov	eax, OFFSET FLAT:label_1054
	mov	esi, eax
	xor	eax, eax
	mov	r8b, al
	mov	rdi, qword ptr [rbp - 0x170]
	mov	al, r8b
	mov	qword ptr [rbp - 0x178], rcx
	call	sprintf
	mov	rdi, qword ptr [rbp - 0x10]
	mov	dword ptr [rbp - 0x17c], eax
	call	strlen
	mov	qword ptr [rbp - 0xe8], rax
	mov	rax, qword ptr [rbp - 0x78]
	add	rax, 1
	mov	qword ptr [rbp - 0xf0], rax
	mov	rax, qword ptr [rbp - 0xf0]
	add	rax, 1
	mov	r9d, dword ptr [rbp - 0x14]
	and	r9d, 0x20
	cmp	r9d, 0
	setne	r8b
	xor	r8b, 0xff
	and	r8b, 1
	movzx	r9d, r8b
	movsxd	rcx, r9d
	add	rax, rcx
	cmp	rax, qword ptr [rbp - 0xe8]
	jb	.label_1055
	mov	eax, dword ptr [rbp - 0x14]
	and	eax, 8
	cmp	eax, 0
	je	.label_1053
	mov	rax, qword ptr [rbp - 0xe8]
	sub	rax, 1
	mov	rcx, qword ptr [rbp - 0x10]
	movsx	edx, byte ptr [rcx + rax]
	cmp	edx, 0x30
	jne	.label_1053
.label_1055:
	movabs	rax, OFFSET FLAT:label_1050
	mov	ecx, 0xa
	mov	edx, ecx
	mov	rdi, qword ptr [rbp - 0x10]
	mov	ecx, dword ptr [rbp - 0x2c]
	fld	xword ptr [rbp - 0xe0]
	fld	dword ptr [dword ptr [rip + label_1051]]
	fmul	st(1), st(0)
	mov	rsi, rsp
	fxch	st(1)
	fstp	xword ptr [rsi]
	mov	qword ptr [rbp - 0x188], rdi
	mov	edi, ecx
	mov	qword ptr [rbp - 0x190], rax
	mov	qword ptr [rbp - 0x198], rdx
	fstp	xword ptr [rbp - 0x1a4]
	call	adjust_value
	fld	st(0)
	fld	xword ptr [rbp - 0x1a4]
	fdivp	st(2)
	mov	rax, rsp
	fxch	st(1)
	fstp	xword ptr [rax]
	mov	ecx, OFFSET FLAT:label_1050
	mov	esi, ecx
	xor	ecx, ecx
	mov	r8b, cl
	mov	rdi, qword ptr [rbp - 0x188]
	mov	al, r8b
	fstp	xword ptr [rbp - 0x1b0]
	call	sprintf
	mov	rdi, qword ptr [rbp - 0x10]
	mov	dword ptr [rbp - 0x1b4], eax
	call	strlen
	mov	qword ptr [rbp - 0xe8], rax
	mov	qword ptr [rbp - 0xf0], 0
.label_1053:
	jmp	.label_1052
.label_1052:
	xor	eax, eax
	mov	ecx, eax
	mov	rdx, qword ptr [rbp - 0x58]
	mov	rsi, rcx
	sub	rsi, qword ptr [rbp - 0xe8]
	add	rdx, rsi
	mov	qword ptr [rbp - 0x50], rdx
	mov	rdi, qword ptr [rbp - 0x50]
	mov	rsi, qword ptr [rbp - 0x10]
	mov	rdx, qword ptr [rbp - 0xe8]
	mov	qword ptr [rbp - 0x1c0], rcx
	call	memmove
	mov	rcx, qword ptr [rbp - 0x50]
	add	rcx, qword ptr [rbp - 0xe8]
	mov	rdx, qword ptr [rbp - 0x1c0]
	sub	rdx, qword ptr [rbp - 0xf0]
	add	rcx, rdx
	mov	qword ptr [rbp - 0x60], rcx
	mov	qword ptr [rbp - 0x1c8], rax
	jmp	.label_1019
.label_1024:
	jmp	.label_1020
.label_1020:
	mov	eax, dword ptr [rbp - 0x40]
	mov	ecx, dword ptr [rbp - 0x14]
	and	ecx, 0x100
	or	eax, ecx
	cmp	eax, 0
	je	.label_1022
	mov	eax, dword ptr [rbp - 0x14]
	and	eax, 0x40
	cmp	eax, 0
	je	.label_1022
	mov	rax, qword ptr [rbp - 0x58]
	mov	rcx, rax
	add	rcx, 1
	mov	qword ptr [rbp - 0x58], rcx
	mov	byte ptr [rax], 0x20
.label_1022:
	cmp	dword ptr [rbp - 0x40], 0
	je	.label_1036
	mov	eax, dword ptr [rbp - 0x14]
	and	eax, 0x20
	cmp	eax, 0
	jne	.label_1018
	cmp	dword ptr [rbp - 0x40], 1
	jne	.label_1018
	mov	eax, 0x6b
	mov	dword ptr [rbp - 0x1dc], eax
	jmp	.label_1028
.label_1061:
	cmp	qword ptr [rbp - 0x20], 0
	je	.label_1058
	mov	rax, qword ptr [rbp - 0x28]
	xor	ecx, ecx
	mov	edx, ecx
	div	qword ptr [rbp - 0x20]
	cmp	rdx, 0
	jne	.label_1058
	mov	rax, qword ptr [rbp - 0x28]
	xor	ecx, ecx
	mov	edx, ecx
	div	qword ptr [rbp - 0x20]
	mov	qword ptr [rbp - 0xa8], rax
	mov	rax, qword ptr [rbp - 8]
	xor	ecx, ecx
	mov	edx, ecx
	div	qword ptr [rbp - 0xa8]
	imul	rdx, rdx, 0xa
	mov	qword ptr [rbp - 0xb0], rdx
	mov	rdx, qword ptr [rbp - 0xb0]
	mov	rax, rdx
	xor	ecx, ecx
	mov	edx, ecx
	div	qword ptr [rbp - 0xa8]
	shl	rdx, 1
	mov	qword ptr [rbp - 0xb8], rdx
	mov	rdx, qword ptr [rbp - 8]
	mov	rax, rdx
	xor	ecx, ecx
	mov	edx, ecx
	div	qword ptr [rbp - 0xa8]
	mov	qword ptr [rbp - 0x38], rax
	mov	rax, qword ptr [rbp - 0xb0]
	xor	ecx, ecx
	mov	edx, ecx
	div	qword ptr [rbp - 0xa8]
	mov	ecx, eax
	mov	dword ptr [rbp - 0x3c], ecx
	mov	rax, qword ptr [rbp - 0xb8]
	cmp	rax, qword ptr [rbp - 0xa8]
	jae	.label_1063
	xor	eax, eax
	mov	ecx, eax
	cmp	rcx, qword ptr [rbp - 0xb8]
	setb	dl
	and	dl, 1
	movzx	eax, dl
	mov	dword ptr [rbp - 0x14c], eax
	jmp	.label_1062
	.section	.text
	.align	32
	#Procedure 0x40c44e

	.globl human_readable
	.type human_readable, @function
human_readable:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x1f0
	movabs	rax, OFFSET FLAT:label_662
	movabs	r9, OFFSET FLAT:label_809
	mov	r10d, 0x3e8
	mov	r11d, 0x400
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	dword ptr [rbp - 0x14], edx
	mov	qword ptr [rbp - 0x20], rcx
	mov	qword ptr [rbp - 0x28], r8
	mov	edx, dword ptr [rbp - 0x14]
	and	edx, 3
	mov	dword ptr [rbp - 0x2c], edx
	mov	edx, dword ptr [rbp - 0x14]
	and	edx, 0x20
	cmp	edx, 0
	cmovne	r10d, r11d
	mov	dword ptr [rbp - 0x30], r10d
	mov	dword ptr [rbp - 0x40], 0xffffffff
	mov	dword ptr [rbp - 0x44], 8
	mov	qword ptr [rbp - 0x70], r9
	mov	qword ptr [rbp - 0x78], 1
	mov	qword ptr [rbp - 0x80], rax
	mov	qword ptr [rbp - 0x88], rax
	call	localeconv
	xor	edx, edx
	mov	ecx, edx
	mov	qword ptr [rbp - 0x90], rax
	mov	rax, qword ptr [rbp - 0x90]
	mov	rdi, qword ptr [rax]
	mov	qword ptr [rbp - 0x148], rcx
	call	strlen
	mov	qword ptr [rbp - 0x98], rax
	mov	rax, qword ptr [rbp - 0x148]
	cmp	rax, qword ptr [rbp - 0x98]
	jae	.label_1059
	cmp	qword ptr [rbp - 0x98], 0x10
	ja	.label_1059
	mov	rax, qword ptr [rbp - 0x90]
	mov	rax, qword ptr [rax]
	mov	qword ptr [rbp - 0x70], rax
	mov	rax, qword ptr [rbp - 0x98]
	mov	qword ptr [rbp - 0x78], rax
.label_1059:
	mov	rax, qword ptr [rbp - 0x90]
	mov	rax, qword ptr [rax + 0x10]
	mov	qword ptr [rbp - 0x80], rax
	mov	rax, qword ptr [rbp - 0x90]
	mov	rdi, qword ptr [rax + 8]
	call	strlen
	cmp	rax, 0x10
	ja	.label_1060
	mov	rax, qword ptr [rbp - 0x90]
	mov	rax, qword ptr [rax + 8]
	mov	qword ptr [rbp - 0x88], rax
.label_1060:
	mov	rax, qword ptr [rbp - 0x10]
	add	rax, 0x28b
	add	rax, -1
	add	rax, -3
	mov	qword ptr [rbp - 0x58], rax
	mov	rax, qword ptr [rbp - 0x58]
	mov	qword ptr [rbp - 0x50], rax
	mov	rax, qword ptr [rbp - 0x28]
	cmp	rax, qword ptr [rbp - 0x20]
	ja	.label_1061
	mov	rax, qword ptr [rbp - 0x20]
	xor	ecx, ecx
	mov	edx, ecx
	div	qword ptr [rbp - 0x28]
	cmp	rdx, 0
	jne	.label_1065
	mov	rax, qword ptr [rbp - 0x20]
	xor	ecx, ecx
	mov	edx, ecx
	div	qword ptr [rbp - 0x28]
	mov	qword ptr [rbp - 0xa0], rax
	mov	rax, qword ptr [rbp - 8]
	imul	rax, qword ptr [rbp - 0xa0]
	mov	qword ptr [rbp - 0x38], rax
	mov	rax, qword ptr [rbp - 0x38]
	xor	ecx, ecx
	mov	edx, ecx
	div	qword ptr [rbp - 0xa0]
	cmp	rax, qword ptr [rbp - 8]
	jne	.label_1069
	mov	dword ptr [rbp - 0x3c], 0
	mov	dword ptr [rbp - 0x64], 0
	jmp	.label_1066
.label_1043:
	cmp	dword ptr [rbp - 0x2c], 0
	jne	.label_1017
	xor	eax, eax
	mov	ecx, dword ptr [rbp - 0x3c]
	add	ecx, dword ptr [rbp - 0x64]
	cmp	eax, ecx
	jge	.label_1017
.label_1045:
	mov	rax, qword ptr [rbp - 0x38]
	add	rax, 1
	mov	qword ptr [rbp - 0x38], rax
	mov	ecx, dword ptr [rbp - 0x14]
	and	ecx, 0x10
	cmp	ecx, 0
	je	.label_1025
	mov	rax, qword ptr [rbp - 0x38]
	mov	ecx, dword ptr [rbp - 0x30]
	mov	edx, ecx
	cmp	rax, rdx
	jne	.label_1025
	mov	eax, dword ptr [rbp - 0x40]
	cmp	eax, dword ptr [rbp - 0x44]
	jge	.label_1025
	mov	eax, dword ptr [rbp - 0x40]
	add	eax, 1
	mov	dword ptr [rbp - 0x40], eax
	mov	eax, dword ptr [rbp - 0x14]
	and	eax, 8
	cmp	eax, 0
	jne	.label_1037
	xor	eax, eax
	mov	ecx, eax
	mov	rdx, qword ptr [rbp - 0x50]
	mov	rsi, rdx
	add	rsi, -1
	mov	qword ptr [rbp - 0x50], rsi
	mov	byte ptr [rdx - 1], 0x30
	mov	rdx, qword ptr [rbp - 0x78]
	mov	rsi, qword ptr [rbp - 0x50]
	sub	rcx, rdx
	add	rsi, rcx
	mov	qword ptr [rbp - 0x50], rsi
	mov	rdi, qword ptr [rbp - 0x50]
	mov	rsi, qword ptr [rbp - 0x70]
	mov	rdx, qword ptr [rbp - 0x78]
	call	memcpy
.label_1037:
	mov	qword ptr [rbp - 0x38], 1
.label_1025:
	jmp	.label_1017
.label_1017:
	mov	rax, qword ptr [rbp - 0x50]
	mov	qword ptr [rbp - 0x60], rax
.label_1030:
	mov	eax, 0xa
	mov	ecx, eax
	mov	rax, qword ptr [rbp - 0x38]
	xor	edx, edx
	div	rcx
	mov	esi, edx
	mov	dword ptr [rbp - 0x10c], esi
	mov	esi, dword ptr [rbp - 0x10c]
	add	esi, 0x30
	mov	dil, sil
	mov	rcx, qword ptr [rbp - 0x50]
	mov	rdx, rcx
	add	rdx, -1
	mov	qword ptr [rbp - 0x50], rdx
	mov	byte ptr [rcx - 1], dil
	mov	eax, 0xa
	mov	ecx, eax
	mov	rax, qword ptr [rbp - 0x38]
	xor	edx, edx
	div	rcx
	mov	qword ptr [rbp - 0x38], rax
	cmp	rax, 0
	jne	.label_1030
	jmp	.label_1019
.label_1019:
	mov	eax, dword ptr [rbp - 0x14]
	and	eax, 4
	cmp	eax, 0
	je	.label_1021
	mov	rdi, qword ptr [rbp - 0x50]
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x50]
	sub	rax, rcx
	mov	rdx, qword ptr [rbp - 0x80]
	mov	rcx, qword ptr [rbp - 0x88]
	mov	rsi, rax
	call	group_number
	mov	qword ptr [rbp - 0x50], rax
.label_1021:
	mov	eax, dword ptr [rbp - 0x14]
	and	eax, 0x80
	cmp	eax, 0
	je	.label_1034
	cmp	dword ptr [rbp - 0x40], 0
	jge	.label_1020
	mov	dword ptr [rbp - 0x40], 0
	mov	qword ptr [rbp - 0x118], 1
.label_1026:
	mov	rax, qword ptr [rbp - 0x118]
	cmp	rax, qword ptr [rbp - 0x28]
	jae	.label_1024
	mov	eax, dword ptr [rbp - 0x40]
	add	eax, 1
	mov	dword ptr [rbp - 0x40], eax
	cmp	eax, dword ptr [rbp - 0x44]
	jne	.label_1016
	jmp	.label_1024
.label_1046:
	cmp	dword ptr [rbp - 0x2c], 0
	jne	.label_1023
	xor	eax, eax
	cmp	eax, dword ptr [rbp - 0x64]
	jge	.label_1023
.label_1048:
	mov	eax, dword ptr [rbp - 0x3c]
	add	eax, 1
	mov	dword ptr [rbp - 0x3c], eax
	mov	dword ptr [rbp - 0x64], 0
	cmp	dword ptr [rbp - 0x3c], 0xa
	jne	.label_1029
	mov	rax, qword ptr [rbp - 0x38]
	add	rax, 1
	mov	qword ptr [rbp - 0x38], rax
	mov	dword ptr [rbp - 0x3c], 0
.label_1029:
	jmp	.label_1023
.label_1023:
	cmp	qword ptr [rbp - 0x38], 0xa
	jae	.label_1042
	cmp	dword ptr [rbp - 0x3c], 0
	jne	.label_1044
	mov	eax, dword ptr [rbp - 0x14]
	and	eax, 8
	cmp	eax, 0
	jne	.label_1042
.label_1044:
	xor	eax, eax
	mov	ecx, eax
	mov	eax, dword ptr [rbp - 0x3c]
	add	eax, 0x30
	mov	dl, al
	mov	rsi, qword ptr [rbp - 0x50]
	mov	rdi, rsi
	add	rdi, -1
	mov	qword ptr [rbp - 0x50], rdi
	mov	byte ptr [rsi - 1], dl
	mov	rsi, qword ptr [rbp - 0x78]
	mov	rdi, qword ptr [rbp - 0x50]
	sub	rcx, rsi
	add	rdi, rcx
	mov	qword ptr [rbp - 0x50], rdi
	mov	rdi, qword ptr [rbp - 0x50]
	mov	rsi, qword ptr [rbp - 0x70]
	mov	rdx, qword ptr [rbp - 0x78]
	call	memcpy
	mov	dword ptr [rbp - 0x64], 0
	mov	dword ptr [rbp - 0x3c], 0
.label_1042:
	jmp	.label_1038
.label_1038:
	jmp	.label_1040
.label_1040:
	jmp	.label_1041
.label_1041:
	cmp	dword ptr [rbp - 0x2c], 1
	jne	.label_1043
	mov	eax, 5
	xor	ecx, ecx
	mov	edx, ecx
	mov	ecx, dword ptr [rbp - 0x3c]
	movsxd	rsi, dword ptr [rbp - 0x64]
	mov	rdi, qword ptr [rbp - 0x38]
	and	rdi, 1
	add	rsi, rdi
	cmp	rdx, rsi
	setb	r8b
	and	r8b, 1
	movzx	r9d, r8b
	add	ecx, r9d
	cmp	eax, ecx
	jl	.label_1045
	jmp	.label_1017
.label_1069:
	jmp	.label_1065
.label_1065:
	jmp	.label_1064
.label_1016:
	jmp	.label_1047
.label_1047:
	mov	eax, dword ptr [rbp - 0x30]
	mov	ecx, eax
	imul	rcx, qword ptr [rbp - 0x118]
	mov	qword ptr [rbp - 0x118], rcx
	jmp	.label_1026
.label_1063:
	mov	rax, qword ptr [rbp - 0xa8]
	cmp	rax, qword ptr [rbp - 0xb8]
	setb	cl
	and	cl, 1
	movzx	edx, cl
	add	edx, 2
	mov	dword ptr [rbp - 0x14c], edx
.label_1062:
	mov	eax, dword ptr [rbp - 0x14c]
	mov	dword ptr [rbp - 0x64], eax
	jmp	.label_1066
	.section	.text
	.align	32
	#Procedure 0x40c900

	.globl equal_tm
	.type equal_tm, @function
equal_tm:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	rsi, qword ptr [rbp - 8]
	mov	eax, dword ptr [rsi]
	mov	rsi, qword ptr [rbp - 0x10]
	xor	eax, dword ptr [rsi]
	mov	rsi, qword ptr [rbp - 8]
	mov	ecx, dword ptr [rsi + 4]
	mov	rsi, qword ptr [rbp - 0x10]
	xor	ecx, dword ptr [rsi + 4]
	or	eax, ecx
	mov	rsi, qword ptr [rbp - 8]
	mov	ecx, dword ptr [rsi + 8]
	mov	rsi, qword ptr [rbp - 0x10]
	xor	ecx, dword ptr [rsi + 8]
	or	eax, ecx
	mov	rsi, qword ptr [rbp - 8]
	mov	ecx, dword ptr [rsi + 0xc]
	mov	rsi, qword ptr [rbp - 0x10]
	xor	ecx, dword ptr [rsi + 0xc]
	or	eax, ecx
	mov	rsi, qword ptr [rbp - 8]
	mov	ecx, dword ptr [rsi + 0x10]
	mov	rsi, qword ptr [rbp - 0x10]
	xor	ecx, dword ptr [rsi + 0x10]
	or	eax, ecx
	mov	rsi, qword ptr [rbp - 8]
	mov	ecx, dword ptr [rsi + 0x14]
	mov	rsi, qword ptr [rbp - 0x10]
	xor	ecx, dword ptr [rsi + 0x14]
	or	eax, ecx
	mov	rsi, qword ptr [rbp - 8]
	mov	edi, dword ptr [rsi + 0x20]
	mov	rsi, qword ptr [rbp - 0x10]
	mov	esi, dword ptr [rsi + 0x20]
	mov	dword ptr [rbp - 0x14], eax
	call	isdst_differ
	and	al, 1
	movzx	ecx, al
	mov	esi, dword ptr [rbp - 0x14]
	or	esi, ecx
	cmp	esi, 0
	setne	al
	xor	al, 0xff
	and	al, 1
	movzx	eax, al
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40c99f
	.globl sub_40c99f
	.type sub_40c99f, @function
sub_40c99f:

	nop	
.label_1073:
	test	byte ptr [rbp - 0x19], 1
	jne	.label_1070
	test	byte ptr [rbp - 0x1a], 1
	je	.label_1070
	mov	dword ptr [rbp - 4], 1
	jmp	.label_1072
.label_1070:
	jmp	.label_1071
.label_1071:
	movabs	rdx, OFFSET FLAT:strcmp
	mov	rax, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rdi, rax
	mov	rsi, rcx
	call	cmp_atime
	mov	dword ptr [rbp - 4], eax
.label_1072:
	mov	eax, dword ptr [rbp - 4]
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40c9ee
	.globl sub_40c9ee
	.type sub_40c9ee, @function
sub_40c9ee:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x40c9f1

	.globl rev_strcmp_df_atime
	.type rev_strcmp_df_atime, @function
rev_strcmp_df_atime:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 0x18], rsi
	mov	rax, qword ptr [rbp - 0x10]
	mov	rdi, rax
	call	is_linked_directory
	and	al, 1
	mov	byte ptr [rbp - 0x19], al
	mov	rdi, qword ptr [rbp - 0x18]
	call	is_linked_directory
	and	al, 1
	mov	byte ptr [rbp - 0x1a], al
	test	byte ptr [rbp - 0x19], 1
	je	.label_1073
	test	byte ptr [rbp - 0x1a], 1
	jne	.label_1073
	mov	dword ptr [rbp - 4], 0xffffffff
	jmp	.label_1072
	.section	.text
	.align	32
	#Procedure 0x40ca40
	.globl get_stat_mtime_ns
	.type get_stat_mtime_ns, @function
get_stat_mtime_ns:

	push	rbp
	mov	rbp, rsp
	mov	qword ptr [rbp - 8], rdi
	mov	rdi, qword ptr [rbp - 8]
	mov	rax, qword ptr [rdi + 0x60]
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40ca52
	.globl sub_40ca52
	.type sub_40ca52, @function
sub_40ca52:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40ca60
	.globl triple_hash_no_name
	.type triple_hash_no_name, @function
triple_hash_no_name:

	push	rbp
	mov	rbp, rsp
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	rsi, qword ptr [rbp - 8]
	mov	qword ptr [rbp - 0x18], rsi
	mov	rsi, qword ptr [rbp - 0x18]
	mov	rax, qword ptr [rsi + 8]
	xor	ecx, ecx
	mov	edx, ecx
	div	qword ptr [rbp - 0x10]
	mov	rax, rdx
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40ca89
	.globl sub_40ca89
	.type sub_40ca89, @function
sub_40ca89:

	nop	dword ptr [rax]
.label_1078:
	mov	rax, qword ptr [rbp - 8]
	mov	qword ptr [rbp - 0x28], rax
.label_1081:
	mov	rax, qword ptr [rbp - 0x28]
	mov	qword ptr [rbp - 0x18], rax
	mov	rax, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rbp - 8]
	sub	rax, rcx
	cmp	rax, 7
	jl	.label_1075
	movabs	rsi, OFFSET FLAT:label_1076
	mov	eax, 7
	mov	edx, eax
	mov	rcx, qword ptr [rbp - 0x18]
	add	rcx, -7
	mov	rdi, rcx
	call	strncmp
	cmp	eax, 0
	jne	.label_1075
	movabs	rsi, OFFSET FLAT:label_1077
	mov	eax, 3
	mov	edx, eax
	mov	rcx, qword ptr [rbp - 0x18]
	mov	qword ptr [rbp - 8], rcx
	mov	rdi, qword ptr [rbp - 0x18]
	call	strncmp
	cmp	eax, 0
	jne	.label_1074
	mov	rax, qword ptr [rbp - 0x18]
	add	rax, 3
	mov	qword ptr [rbp - 8], rax
	mov	rax, qword ptr [rbp - 8]
	mov	qword ptr [word ptr [__progname]],  rax
.label_1074:
	jmp	.label_1075
.label_1075:
	mov	rax, qword ptr [rbp - 8]
	mov	qword ptr [word ptr [program_name]],  rax
	mov	rax, qword ptr [rbp - 8]
	mov	qword ptr [word ptr [__progname_full]],  rax
	add	rsp, 0x30
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40cb45
	.globl sub_40cb45
	.type sub_40cb45, @function
sub_40cb45:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x40cb4c

	.globl set_program_name
	.type set_program_name, @function
set_program_name:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x30
	mov	qword ptr [rbp - 8], rdi
	cmp	qword ptr [rbp - 8], 0
	jne	.label_1080
	movabs	rdi, OFFSET FLAT:label_1079
	mov	rsi,  qword ptr [word ptr [stderr]]
	call	fputs
	mov	dword ptr [rbp - 0x1c], eax
	call	abort
.label_1080:
	mov	esi, 0x2f
	mov	rdi, qword ptr [rbp - 8]
	call	strrchr
	mov	qword ptr [rbp - 0x10], rax
	cmp	qword ptr [rbp - 0x10], 0
	je	.label_1078
	mov	rax, qword ptr [rbp - 0x10]
	add	rax, 1
	mov	qword ptr [rbp - 0x28], rax
	jmp	.label_1081
	.section	.text
	.align	32
	#Procedure 0x40cbb0

	.globl raw_hasher
	.type raw_hasher, @function
raw_hasher:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	mov	eax, 3
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	rdi, qword ptr [rbp - 8]
	mov	esi, eax
	call	rotr_sz
	mov	qword ptr [rbp - 0x18], rax
	mov	rax, qword ptr [rbp - 0x18]
	xor	esi, esi
	mov	edx, esi
	div	qword ptr [rbp - 0x10]
	mov	rax, rdx
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40cbe9
	.globl sub_40cbe9
	.type sub_40cbe9, @function
sub_40cbe9:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x40cbf0
	.globl setfscreatecon
	.type setfscreatecon, @function
setfscreatecon:

	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	mov	qword ptr [rbp - 8], rdi
	call	__errno_location
	mov	ecx, 0xffffffff
	mov	dword ptr [rax], 0x5f
	mov	eax, ecx
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40cc14
	.globl sub_40cc14
	.type sub_40cc14, @function
sub_40cc14:

	nop	word ptr cs:[rax + rax]
.label_2945:
	lea	rdi, [rbp - 0x48]
	mov	edx, 8
	mov	esi, dword ptr [rbp - 0x60]
	call	bkm_scale_by_power
	mov	dword ptr [rbp - 0x68], eax
	jmp	.label_1082
	.section	.text
	.align	32
	#Procedure 0x40cc39

	.globl xstrtoul
	.type xstrtoul, @function
xstrtoul:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0xd0
	xor	eax, eax
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 0x18], rsi
	mov	dword ptr [rbp - 0x1c], edx
	mov	qword ptr [rbp - 0x28], rcx
	mov	qword ptr [rbp - 0x30], r8
	mov	dword ptr [rbp - 0x4c], 0
	cmp	eax, dword ptr [rbp - 0x1c]
	jg	.label_1095
	cmp	dword ptr [rbp - 0x1c], 0x24
	jg	.label_1095
	jmp	.label_1107
.label_1082:
	mov	eax, dword ptr [rbp - 0x68]
	or	eax, dword ptr [rbp - 0x4c]
	mov	dword ptr [rbp - 0x4c], eax
	mov	eax, dword ptr [rbp - 0x64]
	mov	rcx, qword ptr [rbp - 0x40]
	mov	rdx, qword ptr [rcx]
	movsxd	rsi, eax
	add	rdx, rsi
	mov	qword ptr [rcx], rdx
	mov	rcx, qword ptr [rbp - 0x40]
	mov	rcx, qword ptr [rcx]
	cmp	byte ptr [rcx], 0
	je	.label_1083
	mov	eax, dword ptr [rbp - 0x4c]
	or	eax, 2
	mov	dword ptr [rbp - 0x4c], eax
.label_1083:
	jmp	.label_1084
.label_1084:
	mov	rax, qword ptr [rbp - 0x48]
	mov	rcx, qword ptr [rbp - 0x28]
	mov	qword ptr [rcx], rax
	mov	edx, dword ptr [rbp - 0x4c]
	mov	dword ptr [rbp - 4], edx
.label_1087:
	mov	eax, dword ptr [rbp - 4]
	add	rsp, 0xd0
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40cccf
	.globl sub_40cccf
	.type sub_40cccf, @function
sub_40cccf:

	nop	dword ptr [rax + rax]
.label_2942:
	lea	rdi, [rbp - 0x48]
	mov	edx, 2
	mov	esi, dword ptr [rbp - 0x60]
	call	bkm_scale_by_power
	mov	dword ptr [rbp - 0x68], eax
	jmp	.label_1082
.label_1123:
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rbp - 0x40]
	mov	edx, dword ptr [rbp - 0x1c]
	call	strtoul
	mov	qword ptr [rbp - 0x48], rax
	mov	rax, qword ptr [rbp - 0x40]
	mov	rax, qword ptr [rax]
	cmp	rax, qword ptr [rbp - 0x10]
	jne	.label_1124
	cmp	qword ptr [rbp - 0x30], 0
	je	.label_1090
	mov	rax, qword ptr [rbp - 0x40]
	mov	rax, qword ptr [rax]
	movsx	ecx, byte ptr [rax]
	cmp	ecx, 0
	je	.label_1090
	mov	rdi, qword ptr [rbp - 0x30]
	mov	rax, qword ptr [rbp - 0x40]
	mov	rax, qword ptr [rax]
	movsx	esi, byte ptr [rax]
	call	strchr
	cmp	rax, 0
	je	.label_1090
	mov	qword ptr [rbp - 0x48], 1
	jmp	.label_1097
.label_1103:
	lea	rax, [rbp - 0x38]
	mov	qword ptr [rbp - 0x70], rax
	jmp	.label_1098
.label_1098:
	mov	rax, qword ptr [rbp - 0x70]
	mov	qword ptr [rbp - 0x40], rax
	call	__errno_location
	mov	dword ptr [rax], 0
	mov	rax, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 0x58], rax
	mov	rax, qword ptr [rbp - 0x58]
	mov	cl, byte ptr [rax]
	mov	byte ptr [rbp - 0x59], cl
.label_1114:
	movzx	eax, byte ptr [rbp - 0x59]
	movsxd	rcx, eax
	mov	qword ptr [rbp - 0x78], rcx
	call	__ctype_b_loc
	mov	rax, qword ptr [rax]
	mov	rcx, qword ptr [rbp - 0x78]
	movzx	edx, word ptr [rax + rcx*2]
	and	edx, 0x2000
	cmp	edx, 0
	je	.label_1111
	mov	rax, qword ptr [rbp - 0x58]
	mov	rcx, rax
	add	rcx, 1
	mov	qword ptr [rbp - 0x58], rcx
	mov	dl, byte ptr [rax + 1]
	mov	byte ptr [rbp - 0x59], dl
	jmp	.label_1114
.label_1095:
	movabs	rdi, OFFSET FLAT:label_1118
	movabs	rsi, OFFSET FLAT:label_1119
	mov	edx, 0x54
	movabs	rcx, OFFSET FLAT:label_1120
	call	__assert_fail
.label_1111:
	movzx	eax, byte ptr [rbp - 0x59]
	cmp	eax, 0x2d
	jne	.label_1123
	mov	dword ptr [rbp - 4], 4
	jmp	.label_1087
.label_1106:
	mov	dword ptr [rbp - 0x4c], 1
.label_1099:
	jmp	.label_1091
.label_1091:
	cmp	qword ptr [rbp - 0x30], 0
	jne	.label_1093
	mov	rax, qword ptr [rbp - 0x48]
	mov	rcx, qword ptr [rbp - 0x28]
	mov	qword ptr [rcx], rax
	mov	edx, dword ptr [rbp - 0x4c]
	mov	dword ptr [rbp - 4], edx
	jmp	.label_1087
.label_2949:
	lea	rdi, [rbp - 0x48]
	mov	esi, 2
	call	bkm_scale
	mov	dword ptr [rbp - 0x68], eax
	jmp	.label_1082
.label_1117:
	mov	dword ptr [rbp - 0x60], 0x3e8
	mov	eax, dword ptr [rbp - 0x64]
	add	eax, 1
	mov	dword ptr [rbp - 0x64], eax
.label_1088:
	jmp	.label_1101
.label_1101:
	jmp	.label_1104
.label_1104:
	mov	rax, qword ptr [rbp - 0x40]
	mov	rax, qword ptr [rax]
	movsx	ecx, byte ptr [rax]
	add	ecx, -0x42
	mov	eax, ecx
	sub	ecx, 0x35
	mov	qword ptr [rbp - 0xc0], rax
	mov	dword ptr [rbp - 0xc4], ecx
	ja	.label_1105
	mov	rax, qword ptr [rbp - 0xc0]
	mov	rcx,  qword ptr [word ptr [+ (rax * 8) + label_1110]]
	jmp	rcx
.label_1113:
	mov	rax, qword ptr [rbp - 0x40]
	mov	rax, qword ptr [rax]
	movsx	ecx, byte ptr [rax]
	mov	edx, ecx
	sub	edx, 0x45
	mov	dword ptr [rbp - 0x7c], ecx
	mov	dword ptr [rbp - 0x80], edx
	je	.label_1089
	jmp	.label_1116
.label_1116:
	mov	eax, dword ptr [rbp - 0x7c]
	sub	eax, 0x47
	mov	dword ptr [rbp - 0x84], eax
	je	.label_1089
	jmp	.label_1121
.label_1121:
	mov	eax, dword ptr [rbp - 0x7c]
	sub	eax, 0x4b
	mov	dword ptr [rbp - 0x88], eax
	je	.label_1089
	jmp	.label_1122
.label_1122:
	mov	eax, dword ptr [rbp - 0x7c]
	sub	eax, 0x4d
	mov	dword ptr [rbp - 0x8c], eax
	je	.label_1089
	jmp	.label_1086
.label_1086:
	mov	eax, dword ptr [rbp - 0x7c]
	sub	eax, 0x50
	mov	dword ptr [rbp - 0x90], eax
	je	.label_1089
	jmp	.label_1092
.label_1092:
	mov	eax, dword ptr [rbp - 0x7c]
	sub	eax, 0x54
	mov	dword ptr [rbp - 0x94], eax
	je	.label_1089
	jmp	.label_1094
.label_1094:
	mov	eax, dword ptr [rbp - 0x7c]
	add	eax, -0x59
	sub	eax, 2
	mov	dword ptr [rbp - 0x98], eax
	jb	.label_1089
	jmp	.label_1096
.label_1096:
	mov	eax, dword ptr [rbp - 0x7c]
	sub	eax, 0x67
	mov	dword ptr [rbp - 0x9c], eax
	je	.label_1089
	jmp	.label_1100
.label_1100:
	mov	eax, dword ptr [rbp - 0x7c]
	sub	eax, 0x6b
	mov	dword ptr [rbp - 0xa0], eax
	je	.label_1089
	jmp	.label_1108
.label_1108:
	mov	eax, dword ptr [rbp - 0x7c]
	sub	eax, 0x6d
	mov	dword ptr [rbp - 0xa4], eax
	je	.label_1089
	jmp	.label_1109
.label_1109:
	mov	eax, dword ptr [rbp - 0x7c]
	sub	eax, 0x74
	mov	dword ptr [rbp - 0xa8], eax
	jne	.label_1104
	jmp	.label_1089
.label_1089:
	mov	esi, 0x30
	mov	rdi, qword ptr [rbp - 0x30]
	call	strchr
	cmp	rax, 0
	je	.label_1101
	mov	rax, qword ptr [rbp - 0x40]
	mov	rax, qword ptr [rax]
	movsx	ecx, byte ptr [rax + 1]
	mov	edx, ecx
	sub	edx, 0x42
	mov	dword ptr [rbp - 0xac], ecx
	mov	dword ptr [rbp - 0xb0], edx
	je	.label_1117
	jmp	.label_1102
.label_1102:
	mov	eax, dword ptr [rbp - 0xac]
	sub	eax, 0x44
	mov	dword ptr [rbp - 0xb4], eax
	je	.label_1117
	jmp	.label_1085
.label_1085:
	mov	eax, dword ptr [rbp - 0xac]
	sub	eax, 0x69
	mov	dword ptr [rbp - 0xb8], eax
	jne	.label_1088
	jmp	.label_1112
.label_1112:
	mov	rax, qword ptr [rbp - 0x40]
	mov	rax, qword ptr [rax]
	movsx	ecx, byte ptr [rax + 2]
	cmp	ecx, 0x42
	jne	.label_1115
	mov	eax, dword ptr [rbp - 0x64]
	add	eax, 2
	mov	dword ptr [rbp - 0x64], eax
.label_1115:
	jmp	.label_1088
.label_2939:
	lea	rdi, [rbp - 0x48]
	mov	edx, 6
	mov	esi, dword ptr [rbp - 0x60]
	call	bkm_scale_by_power
	mov	dword ptr [rbp - 0x68], eax
	jmp	.label_1082
.label_1090:
	mov	dword ptr [rbp - 4], 4
	jmp	.label_1087
.label_1107:
	cmp	qword ptr [rbp - 0x18], 0
	je	.label_1103
	mov	rax, qword ptr [rbp - 0x18]
	mov	qword ptr [rbp - 0x70], rax
	jmp	.label_1098
.label_1093:
	mov	rax, qword ptr [rbp - 0x40]
	mov	rax, qword ptr [rax]
	movsx	ecx, byte ptr [rax]
	cmp	ecx, 0
	je	.label_1084
	mov	dword ptr [rbp - 0x60], 0x400
	mov	dword ptr [rbp - 0x64], 1
	mov	rdi, qword ptr [rbp - 0x30]
	mov	rax, qword ptr [rbp - 0x40]
	mov	rax, qword ptr [rax]
	movsx	esi, byte ptr [rax]
	call	strchr
	cmp	rax, 0
	jne	.label_1113
	mov	rax, qword ptr [rbp - 0x48]
	mov	rcx, qword ptr [rbp - 0x28]
	mov	qword ptr [rcx], rax
	mov	edx, dword ptr [rbp - 0x4c]
	or	edx, 2
	mov	dword ptr [rbp - 4], edx
	jmp	.label_1087
.label_2941:
	lea	rdi, [rbp - 0x48]
	mov	edx, 1
	mov	esi, dword ptr [rbp - 0x60]
	call	bkm_scale_by_power
	mov	dword ptr [rbp - 0x68], eax
	jmp	.label_1082
.label_2940:
	lea	rdi, [rbp - 0x48]
	mov	edx, 3
	mov	esi, dword ptr [rbp - 0x60]
	call	bkm_scale_by_power
	mov	dword ptr [rbp - 0x68], eax
	jmp	.label_1082
.label_2946:
	lea	rdi, [rbp - 0x48]
	mov	edx, 7
	mov	esi, dword ptr [rbp - 0x60]
	call	bkm_scale_by_power
	mov	dword ptr [rbp - 0x68], eax
	jmp	.label_1082
.label_2938:
	lea	rdi, [rbp - 0x48]
	mov	esi, 0x400
	call	bkm_scale
	mov	dword ptr [rbp - 0x68], eax
	jmp	.label_1082
.label_2944:
	lea	rdi, [rbp - 0x48]
	mov	edx, 4
	mov	esi, dword ptr [rbp - 0x60]
	call	bkm_scale_by_power
	mov	dword ptr [rbp - 0x68], eax
	jmp	.label_1082
.label_2948:
	mov	dword ptr [rbp - 0x68], 0
	jmp	.label_1082
.label_1124:
	call	__errno_location
	cmp	dword ptr [rax], 0
	je	.label_1099
	call	__errno_location
	cmp	dword ptr [rax], 0x22
	je	.label_1106
	mov	dword ptr [rbp - 4], 4
	jmp	.label_1087
.label_1097:
	jmp	.label_1091
.label_2943:
	lea	rdi, [rbp - 0x48]
	mov	edx, 5
	mov	esi, dword ptr [rbp - 0x60]
	call	bkm_scale_by_power
	mov	dword ptr [rbp - 0x68], eax
	jmp	.label_1082
.label_2947:
	lea	rdi, [rbp - 0x48]
	mov	esi, 0x200
	call	bkm_scale
	mov	dword ptr [rbp - 0x68], eax
	jmp	.label_1082
.label_1105:
	mov	rax, qword ptr [rbp - 0x48]
	mov	rcx, qword ptr [rbp - 0x28]
	mov	qword ptr [rcx], rax
	mov	edx, dword ptr [rbp - 0x4c]
	or	edx, 2
	mov	dword ptr [rbp - 4], edx
	jmp	.label_1087
	.section	.text
	.align	32
	#Procedure 0x40d1d0

	.globl quotearg_n_style
	.type quotearg_n_style, @function
quotearg_n_style:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x50
	lea	rax, [rbp - 0x48]
	mov	dword ptr [rbp - 4], edi
	mov	dword ptr [rbp - 8], esi
	mov	qword ptr [rbp - 0x10], rdx
	mov	esi, dword ptr [rbp - 8]
	mov	rdi, rax
	call	quoting_options_from_style
	mov	rdx, -1
	lea	rcx, [rbp - 0x48]
	mov	edi, dword ptr [rbp - 4]
	mov	rsi, qword ptr [rbp - 0x10]
	call	quotearg_n_options
	add	rsp, 0x50
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40d20e
	.globl sub_40d20e
	.type sub_40d20e, @function
sub_40d20e:

	nop	
	.section	.text
	.align	32
	#Procedure 0x40d210

	.globl dev_ino_free
	.type dev_ino_free, @function
dev_ino_free:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	mov	qword ptr [rbp - 8], rdi
	mov	rdi, qword ptr [rbp - 8]
	call	free
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40d22b
	.globl sub_40d22b
	.type sub_40d22b, @function
sub_40d22b:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40d230
	.globl setexeccon
	.type setexeccon, @function
setexeccon:

	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	mov	qword ptr [rbp - 8], rdi
	call	__errno_location
	mov	ecx, 0xffffffff
	mov	dword ptr [rax], 0x5f
	mov	eax, ecx
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40d254
	.globl sub_40d254
	.type sub_40d254, @function
sub_40d254:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40d260

	.globl initialize_exit_failure
	.type initialize_exit_failure, @function
initialize_exit_failure:
	push	rbp
	mov	rbp, rsp
	mov	dword ptr [rbp - 4], edi
	cmp	dword ptr [rbp - 4], 1
	je	.label_1125
	mov	eax, dword ptr [rbp - 4]
	mov	dword ptr [dword ptr [exit_failure]],  eax
.label_1125:
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40d27d
	.globl sub_40d27d
	.type sub_40d27d, @function
sub_40d27d:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x40d280
	.globl c_isblank
	.type c_isblank, @function
c_isblank:

	push	rbp
	mov	rbp, rsp
	mov	al, 1
	mov	dword ptr [rbp - 4], edi
	cmp	dword ptr [rbp - 4], 0x20
	mov	byte ptr [rbp - 5], al
	je	.label_1126
	cmp	dword ptr [rbp - 4], 9
	sete	al
	mov	byte ptr [rbp - 5], al
.label_1126:
	mov	al, byte ptr [rbp - 5]
	and	al, 1
	movzx	eax, al
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40d2aa
	.globl sub_40d2aa
	.type sub_40d2aa, @function
sub_40d2aa:

	nop	word ptr [rax + rax]
.label_1128:
	mov	rax, qword ptr [rbp - 0x38]
	mov	rdi, rax
	call	free
	mov	qword ptr [rbp - 8], 0
.label_1127:
	mov	rax, qword ptr [rbp - 8]
	add	rsp, 0x40
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40d2ce
	.globl sub_40d2ce
	.type sub_40d2ce, @function
sub_40d2ce:

	nop	dword ptr [rax]
.label_1135:
	mov	rax, qword ptr [rbp - 0x38]
	mov	rax, qword ptr [rax]
	mov	rcx, qword ptr [rbp - 0x38]
	mov	rcx, qword ptr [rcx + 0x10]
	shl	rcx, 4
	add	rax, rcx
	mov	rcx, qword ptr [rbp - 0x38]
	mov	qword ptr [rcx + 8], rax
	mov	rax, qword ptr [rbp - 0x38]
	mov	qword ptr [rax + 0x18], 0
	mov	rax, qword ptr [rbp - 0x38]
	mov	qword ptr [rax + 0x20], 0
	mov	rax, qword ptr [rbp - 0x20]
	mov	rcx, qword ptr [rbp - 0x38]
	mov	qword ptr [rcx + 0x30], rax
	mov	rax, qword ptr [rbp - 0x28]
	mov	rcx, qword ptr [rbp - 0x38]
	mov	qword ptr [rcx + 0x38], rax
	mov	rax, qword ptr [rbp - 0x30]
	mov	rcx, qword ptr [rbp - 0x38]
	mov	qword ptr [rcx + 0x40], rax
	mov	rax, qword ptr [rbp - 0x38]
	mov	qword ptr [rax + 0x48], 0
	mov	rax, qword ptr [rbp - 0x38]
	mov	qword ptr [rbp - 8], rax
	jmp	.label_1127
.label_1134:
	mov	eax, 0x10
	mov	esi, eax
	mov	rcx, qword ptr [rbp - 0x38]
	mov	rdi, qword ptr [rcx + 0x10]
	call	calloc
	mov	rcx, qword ptr [rbp - 0x38]
	mov	qword ptr [rcx], rax
	mov	rax, qword ptr [rbp - 0x38]
	cmp	qword ptr [rax], 0
	jne	.label_1135
	jmp	.label_1128
	.section	.text
	.align	32
	#Procedure 0x40d376

	.globl hash_initialize
	.type hash_initialize, @function
hash_initialize:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x40
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 0x18], rsi
	mov	qword ptr [rbp - 0x20], rdx
	mov	qword ptr [rbp - 0x28], rcx
	mov	qword ptr [rbp - 0x30], r8
	cmp	qword ptr [rbp - 0x20], 0
	jne	.label_1130
	movabs	rax, OFFSET FLAT:raw_hasher
	mov	qword ptr [rbp - 0x20], rax
.label_1130:
	cmp	qword ptr [rbp - 0x28], 0
	jne	.label_1131
	movabs	rax, OFFSET FLAT:raw_comparator
	mov	qword ptr [rbp - 0x28], rax
.label_1131:
	mov	eax, 0x50
	mov	edi, eax
	call	malloc
	mov	qword ptr [rbp - 0x38], rax
	cmp	qword ptr [rbp - 0x38], 0
	jne	.label_1132
	mov	qword ptr [rbp - 8], 0
	jmp	.label_1127
.label_1129:
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rbp - 0x18]
	call	compute_bucket_size
	mov	rsi, qword ptr [rbp - 0x38]
	mov	qword ptr [rsi + 0x10], rax
	mov	rax, qword ptr [rbp - 0x38]
	cmp	qword ptr [rax + 0x10], 0
	jne	.label_1134
	jmp	.label_1128
.label_1132:
	cmp	qword ptr [rbp - 0x18], 0
	jne	.label_1133
	movabs	rax, OFFSET FLAT:default_tuning
	mov	qword ptr [rbp - 0x18], rax
.label_1133:
	mov	rax, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rbp - 0x38]
	mov	qword ptr [rcx + 0x28], rax
	mov	rdi, qword ptr [rbp - 0x38]
	call	check_tuning
	test	al, 1
	jne	.label_1129
	jmp	.label_1128
	.section	.text
	.align	32
	#Procedure 0x40d450

	.globl mpsort_into_tmp
	.type mpsort_into_tmp, @function
mpsort_into_tmp:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x70
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	qword ptr [rbp - 0x18], rdx
	mov	qword ptr [rbp - 0x20], rcx
	mov	rcx, qword ptr [rbp - 0x10]
	shr	rcx, 1
	mov	qword ptr [rbp - 0x28], rcx
	mov	rcx, qword ptr [rbp - 0x10]
	sub	rcx, qword ptr [rbp - 0x28]
	mov	qword ptr [rbp - 0x30], rcx
	mov	qword ptr [rbp - 0x38], 0
	mov	rcx, qword ptr [rbp - 0x28]
	mov	qword ptr [rbp - 0x40], rcx
	mov	rcx, qword ptr [rbp - 0x28]
	mov	qword ptr [rbp - 0x48], rcx
	mov	rcx, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 0x50], rcx
	mov	rcx, qword ptr [rbp - 8]
	mov	rdx, qword ptr [rbp - 0x28]
	shl	rdx, 3
	add	rcx, rdx
	mov	rsi, qword ptr [rbp - 0x30]
	mov	rdx, qword ptr [rbp - 0x18]
	mov	rdi, qword ptr [rbp - 0x20]
	mov	qword ptr [rbp - 0x68], rdi
	mov	rdi, rcx
	mov	rcx, qword ptr [rbp - 0x68]
	call	mpsort_with_tmp
	mov	rdi, qword ptr [rbp - 8]
	mov	rsi, qword ptr [rbp - 0x28]
	mov	rdx, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rbp - 0x20]
	call	mpsort_with_tmp
	mov	rcx, qword ptr [rbp - 0x38]
	mov	rdx, qword ptr [rbp - 8]
	mov	rcx, qword ptr [rdx + rcx*8]
	mov	qword ptr [rbp - 0x58], rcx
	mov	rcx, qword ptr [rbp - 0x48]
	mov	rdx, qword ptr [rbp - 8]
	mov	rcx, qword ptr [rdx + rcx*8]
	mov	qword ptr [rbp - 0x60], rcx
.label_1139:
	mov	rax, qword ptr [rbp - 0x20]
	mov	rdi, qword ptr [rbp - 0x58]
	mov	rsi, qword ptr [rbp - 0x60]
	call	rax
	cmp	eax, 0
	jg	.label_1137
	mov	rax, qword ptr [rbp - 0x58]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	rdx, rcx
	add	rdx, 8
	mov	qword ptr [rbp - 0x18], rdx
	mov	qword ptr [rcx], rax
	mov	rax, qword ptr [rbp - 0x38]
	add	rax, 1
	mov	qword ptr [rbp - 0x38], rax
	mov	rax, qword ptr [rbp - 0x38]
	cmp	rax, qword ptr [rbp - 0x40]
	jne	.label_1140
	mov	rax, qword ptr [rbp - 0x48]
	mov	qword ptr [rbp - 0x38], rax
	mov	rax, qword ptr [rbp - 0x50]
	mov	qword ptr [rbp - 0x40], rax
	jmp	.label_1136
.label_1137:
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	rdx, rcx
	add	rdx, 8
	mov	qword ptr [rbp - 0x18], rdx
	mov	qword ptr [rcx], rax
	mov	rax, qword ptr [rbp - 0x48]
	add	rax, 1
	mov	qword ptr [rbp - 0x48], rax
	mov	rax, qword ptr [rbp - 0x48]
	cmp	rax, qword ptr [rbp - 0x50]
	jne	.label_1141
	jmp	.label_1136
.label_1140:
	mov	rax, qword ptr [rbp - 0x38]
	mov	rcx, qword ptr [rbp - 8]
	mov	rax, qword ptr [rcx + rax*8]
	mov	qword ptr [rbp - 0x58], rax
	jmp	.label_1138
.label_1141:
	mov	rax, qword ptr [rbp - 0x48]
	mov	rcx, qword ptr [rbp - 8]
	mov	rax, qword ptr [rcx + rax*8]
	mov	qword ptr [rbp - 0x60], rax
.label_1138:
	jmp	.label_1139
.label_1136:
	mov	rax, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rbp - 8]
	mov	rdx, qword ptr [rbp - 0x38]
	shl	rdx, 3
	add	rcx, rdx
	mov	rdx, qword ptr [rbp - 0x40]
	sub	rdx, qword ptr [rbp - 0x38]
	shl	rdx, 3
	mov	rdi, rax
	mov	rsi, rcx
	call	memcpy
	add	rsp, 0x70
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40d5eb
	.globl sub_40d5eb
	.type sub_40d5eb, @function
sub_40d5eb:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40d5f0
	.globl rotr16
	.type rotr16, @function
rotr16:

	push	rbp
	mov	rbp, rsp
	mov	ax, di
	mov	edi, 0x10
	mov	word ptr [rbp - 2], ax
	mov	dword ptr [rbp - 8], esi
	movzx	esi, word ptr [rbp - 2]
	mov	ecx, dword ptr [rbp - 8]
	sar	esi, cl
	movzx	edx, word ptr [rbp - 2]
	sub	edi, dword ptr [rbp - 8]
	mov	ecx, edi
	shl	edx, cl
	or	esi, edx
	and	esi, 0xffff
	mov	ax, si
	movzx	eax, ax
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40d627
	.globl sub_40d627
	.type sub_40d627, @function
sub_40d627:

	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40d630

	.globl has_capability_cache
	.type has_capability_cache, @function
has_capability_cache:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 0x18], rsi
	mov	rsi, qword ptr [rbp - 0x18]
	mov	rsi, qword ptr [rsi + 0x18]
	cmp	rsi,  qword ptr [word ptr [has_capability_cache.unsupported_device]]
	jne	.label_1144
	call	__errno_location
	mov	dword ptr [rax], 0x5f
	mov	byte ptr [rbp - 1], 0
	jmp	.label_1145
.label_1144:
	mov	rdi, qword ptr [rbp - 0x10]
	call	has_capability
	and	al, 1
	mov	byte ptr [rbp - 0x19], al
	test	byte ptr [rbp - 0x19], 1
	jne	.label_1142
	call	__errno_location
	mov	edi, dword ptr [rax]
	call	errno_unsupported
	test	al, 1
	jne	.label_1143
	jmp	.label_1142
.label_1143:
	mov	rax, qword ptr [rbp - 0x18]
	mov	rax, qword ptr [rax + 0x18]
	mov	qword ptr [word ptr [has_capability_cache.unsupported_device]],  rax
.label_1142:
	mov	al, byte ptr [rbp - 0x19]
	and	al, 1
	mov	byte ptr [rbp - 1], al
.label_1145:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40d6c1
	.globl sub_40d6c1
	.type sub_40d6c1, @function
sub_40d6c1:

	nop	word ptr cs:[rax + rax]
.label_1151:
	movabs	rax, OFFSET FLAT:label_662
	mov	qword ptr [rbp - 0x40], rax
	jmp	.label_1146
.label_1146:
	mov	rax, qword ptr [rbp - 0x40]
	cmp	qword ptr [rbp - 0x28], 0
	mov	qword ptr [rbp - 0x48], rax
	je	.label_1147
	mov	rax, qword ptr [rbp - 0x28]
	mov	qword ptr [rbp - 0x50], rax
	jmp	.label_1148
.label_1150:
	mov	rax, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rbp - 8]
	mov	rdi, qword ptr [rcx]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rcx]
	call	rax
	mov	dword ptr [rbp - 0x54], eax
.label_1149:
	mov	eax, dword ptr [rbp - 0x54]
	add	rsp, 0x60
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40d723
	.globl sub_40d723
	.type sub_40d723, @function
sub_40d723:

	nop	
.label_1147:
	movabs	rax, OFFSET FLAT:label_662
	mov	qword ptr [rbp - 0x50], rax
	jmp	.label_1148
.label_1148:
	mov	rax, qword ptr [rbp - 0x50]
	mov	rdi, qword ptr [rbp - 0x48]
	mov	rsi, rax
	mov	rax, qword ptr [rbp - 0x38]
	call	rax
	mov	dword ptr [rbp - 0x2c], eax
	cmp	dword ptr [rbp - 0x2c], 0
	je	.label_1150
	mov	eax, dword ptr [rbp - 0x2c]
	mov	dword ptr [rbp - 0x54], eax
	jmp	.label_1149
	.section	.text
	.align	32
	#Procedure 0x40d760

	.globl cmp_extension
	.type cmp_extension, @function
cmp_extension:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x60
	mov	eax, 0x2e
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	qword ptr [rbp - 0x18], rdx
	mov	rdx, qword ptr [rbp - 8]
	mov	rdi, qword ptr [rdx]
	mov	esi, eax
	call	strrchr
	mov	esi, 0x2e
	mov	qword ptr [rbp - 0x20], rax
	mov	rax, qword ptr [rbp - 0x10]
	mov	rdi, qword ptr [rax]
	call	strrchr
	mov	qword ptr [rbp - 0x28], rax
	mov	rax, qword ptr [rbp - 0x18]
	cmp	qword ptr [rbp - 0x20], 0
	mov	qword ptr [rbp - 0x38], rax
	je	.label_1151
	mov	rax, qword ptr [rbp - 0x20]
	mov	qword ptr [rbp - 0x40], rax
	jmp	.label_1146
	.section	.text
	.align	32
	#Procedure 0x40d7c0
	.globl getgidbyname
	.type getgidbyname, @function
getgidbyname:

	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x30
	mov	qword ptr [rbp - 0x10], rdi
	mov	rdi,  qword ptr [word ptr [group_alist]]
	mov	qword ptr [rbp - 0x18], rdi
.label_1160:
	cmp	qword ptr [rbp - 0x18], 0
	je	.label_1156
	mov	rax, qword ptr [rbp - 0x18]
	movsx	ecx, byte ptr [rax + 0x10]
	mov	rax, qword ptr [rbp - 0x10]
	movsx	edx, byte ptr [rax]
	cmp	ecx, edx
	jne	.label_1154
	mov	rax, qword ptr [rbp - 0x18]
	add	rax, 0x10
	mov	rsi, qword ptr [rbp - 0x10]
	mov	rdi, rax
	call	strcmp
	cmp	eax, 0
	jne	.label_1154
	mov	rax, qword ptr [rbp - 0x18]
	mov	qword ptr [rbp - 8], rax
	jmp	.label_1155
.label_1156:
	mov	rax,  qword ptr [word ptr [nogroup_alist]]
	mov	qword ptr [rbp - 0x18], rax
.label_1153:
	cmp	qword ptr [rbp - 0x18], 0
	je	.label_1159
	mov	rax, qword ptr [rbp - 0x18]
	movsx	ecx, byte ptr [rax + 0x10]
	mov	rax, qword ptr [rbp - 0x10]
	movsx	edx, byte ptr [rax]
	cmp	ecx, edx
	jne	.label_1157
	mov	rax, qword ptr [rbp - 0x18]
	add	rax, 0x10
	mov	rsi, qword ptr [rbp - 0x10]
	mov	rdi, rax
	call	strcmp
	cmp	eax, 0
	jne	.label_1157
	mov	qword ptr [rbp - 8], 0
	jmp	.label_1155
.label_1161:
	mov	rax,  qword ptr [word ptr [nogroup_alist]]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	qword ptr [rcx + 8], rax
	mov	rax, qword ptr [rbp - 0x18]
	mov	qword ptr [word ptr [nogroup_alist]],  rax
	mov	qword ptr [rbp - 8], 0
.label_1155:
	mov	rax, qword ptr [rbp - 8]
	add	rsp, 0x30
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40d8aa
	.globl sub_40d8aa
	.type sub_40d8aa, @function
sub_40d8aa:

	nop	dword ptr [rax]
.label_1154:
	jmp	.label_1158
.label_1158:
	mov	rax, qword ptr [rbp - 0x18]
	mov	rax, qword ptr [rax + 8]
	mov	qword ptr [rbp - 0x18], rax
	jmp	.label_1160
.label_1157:
	jmp	.label_1152
.label_1152:
	mov	rax, qword ptr [rbp - 0x18]
	mov	rax, qword ptr [rax + 8]
	mov	qword ptr [rbp - 0x18], rax
	jmp	.label_1153
.label_1159:
	mov	rdi, qword ptr [rbp - 0x10]
	call	getgrnam
	mov	qword ptr [rbp - 0x20], rax
	mov	rdi, qword ptr [rbp - 0x10]
	call	strlen
	add	rax, 1
	add	rax, 0x17
	and	rax, 0xfffffffffffffff8
	mov	rdi, rax
	call	xmalloc
	mov	qword ptr [rbp - 0x18], rax
	mov	rax, qword ptr [rbp - 0x18]
	add	rax, 0x10
	mov	rsi, qword ptr [rbp - 0x10]
	mov	rdi, rax
	call	strcpy
	cmp	qword ptr [rbp - 0x20], 0
	mov	qword ptr [rbp - 0x28], rax
	je	.label_1161
	mov	rax, qword ptr [rbp - 0x20]
	mov	ecx, dword ptr [rax + 0x10]
	mov	rax, qword ptr [rbp - 0x18]
	mov	dword ptr [rax], ecx
	mov	rax,  qword ptr [word ptr [group_alist]]
	mov	rdx, qword ptr [rbp - 0x18]
	mov	qword ptr [rdx + 8], rax
	mov	rax, qword ptr [rbp - 0x18]
	mov	qword ptr [word ptr [group_alist]],  rax
	mov	rax, qword ptr [rbp - 0x18]
	mov	qword ptr [rbp - 8], rax
	jmp	.label_1155
	.section	.text
	.align	32
	#Procedure 0x40d960

	.globl rev_xstrcoll_name
	.type rev_xstrcoll_name, @function
rev_xstrcoll_name:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	movabs	rdx, OFFSET FLAT:xstrcoll
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	rsi, qword ptr [rbp - 0x10]
	mov	rdi, qword ptr [rbp - 8]
	mov	qword ptr [rbp - 0x18], rdi
	mov	rdi, rsi
	mov	rsi, qword ptr [rbp - 0x18]
	call	cmp_name
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40d998
	.globl sub_40d998
	.type sub_40d998, @function
sub_40d998:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40d9a0

	.globl dot_or_dotdot
	.type dot_or_dotdot, @function
dot_or_dotdot:
	push	rbp
	mov	rbp, rsp
	mov	qword ptr [rbp - 0x10], rdi
	mov	rdi, qword ptr [rbp - 0x10]
	movsx	eax, byte ptr [rdi]
	cmp	eax, 0x2e
	jne	.label_1162
	mov	al, 1
	mov	rcx, qword ptr [rbp - 0x10]
	movsx	edx, byte ptr [rcx + 1]
	cmp	edx, 0x2e
	sete	sil
	and	sil, 1
	movzx	edx, sil
	add	edx, 1
	movsxd	rcx, edx
	mov	rdi, qword ptr [rbp - 0x10]
	mov	sil, byte ptr [rdi + rcx]
	mov	byte ptr [rbp - 0x11], sil
	cmp	byte ptr [rbp - 0x11], 0
	mov	byte ptr [rbp - 0x12], al
	je	.label_1163
	movsx	eax, byte ptr [rbp - 0x11]
	cmp	eax, 0x2f
	sete	cl
	mov	byte ptr [rbp - 0x12], cl
.label_1163:
	mov	al, byte ptr [rbp - 0x12]
	and	al, 1
	mov	byte ptr [rbp - 1], al
	jmp	.label_1164
.label_1162:
	mov	byte ptr [rbp - 1], 0
.label_1164:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40da18
	.globl sub_40da18
	.type sub_40da18, @function
sub_40da18:

	nop	dword ptr [rax + rax]
.label_1167:
	mov	rax, qword ptr [rbp - 8]
	cmp	qword ptr [rax + 0x40], 0
	je	.label_1165
	mov	rax, qword ptr [rbp - 8]
	mov	rax, qword ptr [rax + 0x40]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rdi, qword ptr [rcx]
	call	rax
.label_1165:
	mov	rax, qword ptr [rbp - 0x10]
	mov	qword ptr [rax], 0
	mov	rax, qword ptr [rbp - 0x10]
	mov	qword ptr [rax + 8], 0
.label_1169:
	jmp	.label_1168
.label_1168:
	mov	rax, qword ptr [rbp - 0x10]
	add	rax, 0x10
	mov	qword ptr [rbp - 0x10], rax
	jmp	.label_1170
.label_1166:
	mov	rax, qword ptr [rbp - 8]
	mov	qword ptr [rax + 0x18], 0
	mov	rax, qword ptr [rbp - 8]
	mov	qword ptr [rax + 0x20], 0
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40da8b
	.globl sub_40da8b
	.type sub_40da8b, @function
sub_40da8b:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x40da92
	.globl hash_clear
	.type hash_clear, @function
hash_clear:

	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	mov	qword ptr [rbp - 8], rdi
	mov	rdi, qword ptr [rbp - 8]
	mov	rdi, qword ptr [rdi]
	mov	qword ptr [rbp - 0x10], rdi
.label_1170:
	mov	rax, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rbp - 8]
	cmp	rax, qword ptr [rcx + 8]
	jae	.label_1166
	mov	rax, qword ptr [rbp - 0x10]
	cmp	qword ptr [rax], 0
	je	.label_1169
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax + 8]
	mov	qword ptr [rbp - 0x18], rax
.label_1172:
	cmp	qword ptr [rbp - 0x18], 0
	je	.label_1167
	mov	rax, qword ptr [rbp - 8]
	cmp	qword ptr [rax + 0x40], 0
	je	.label_1171
	mov	rax, qword ptr [rbp - 8]
	mov	rax, qword ptr [rax + 0x40]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	rdi, qword ptr [rcx]
	call	rax
.label_1171:
	mov	rax, qword ptr [rbp - 0x18]
	mov	qword ptr [rax], 0
	mov	rax, qword ptr [rbp - 0x18]
	mov	rax, qword ptr [rax + 8]
	mov	qword ptr [rbp - 0x20], rax
	mov	rax, qword ptr [rbp - 8]
	mov	rax, qword ptr [rax + 0x48]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	qword ptr [rcx + 8], rax
	mov	rax, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rbp - 8]
	mov	qword ptr [rcx + 0x48], rax
	mov	rax, qword ptr [rbp - 0x20]
	mov	qword ptr [rbp - 0x18], rax
	jmp	.label_1172
.label_1175:
	mov	rax, qword ptr [rbp - 0x18]
	cmp	qword ptr [rax + 8], 0
	je	.label_1173
	mov	rax, qword ptr [rbp - 0x18]
	mov	rax, qword ptr [rax + 8]
	mov	qword ptr [rbp - 0x10], rax
.label_1173:
	movabs	rdi, OFFSET FLAT:label_1179
	call	gettext
	movabs	rsi, OFFSET FLAT:label_1182
	movabs	rdx, OFFSET FLAT:label_1183
	mov	rdi, rax
	mov	al, 0
	call	printf
	mov	edi, 5
	xor	ecx, ecx
	mov	esi, ecx
	mov	dword ptr [rbp - 0x28], eax
	call	setlocale
	mov	qword ptr [rbp - 0x20], rax
	cmp	qword ptr [rbp - 0x20], 0
	je	.label_1174
	movabs	rsi, OFFSET FLAT:label_1181
	mov	eax, 3
	mov	edx, eax
	mov	rdi, qword ptr [rbp - 0x20]
	call	strncmp
	cmp	eax, 0
	je	.label_1174
	movabs	rdi, OFFSET FLAT:label_1176
	call	gettext
	mov	rsi,  qword ptr [word ptr [stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	mov	dword ptr [rbp - 0x2c], eax
.label_1174:
	movabs	rdi, OFFSET FLAT:label_1184
	call	gettext
	movabs	rsi, OFFSET FLAT:label_1183
	mov	rdx, qword ptr [rbp - 8]
	mov	rdi, rax
	mov	al, 0
	call	printf
	movabs	rdi, OFFSET FLAT:label_1178
	mov	dword ptr [rbp - 0x30], eax
	call	gettext
	movabs	rdx, OFFSET FLAT:label_662
	movabs	rsi, OFFSET FLAT:label_1180
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rbp - 0x10]
	cmp	rcx, qword ptr [rbp - 8]
	cmove	rdx, rsi
	mov	qword ptr [rbp - 0x38], rdi
	mov	rdi, rax
	mov	rsi, qword ptr [rbp - 0x38]
	mov	al, 0
	call	printf
	mov	dword ptr [rbp - 0x3c], eax
	add	rsp, 0x40
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40dc65
	.globl sub_40dc65
	.type sub_40dc65, @function
sub_40dc65:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x40dc6c

	.globl emit_ancillary_info
	.type emit_ancillary_info, @function
emit_ancillary_info:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x40
	movabs	rax, OFFSET FLAT:emit_ancillary_info.infomap
	mov	qword ptr [rbp - 8], rdi
	mov	rdi, qword ptr [rbp - 8]
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 0x18], rax
.label_1185:
	xor	eax, eax
	mov	cl, al
	mov	rdx, qword ptr [rbp - 0x18]
	cmp	qword ptr [rdx], 0
	mov	byte ptr [rbp - 0x21], cl
	je	.label_1177
	mov	rdi, qword ptr [rbp - 8]
	mov	rax, qword ptr [rbp - 0x18]
	mov	rsi, qword ptr [rax]
	call	strcmp
	cmp	eax, 0
	sete	cl
	xor	cl, 0xff
	mov	byte ptr [rbp - 0x21], cl
.label_1177:
	mov	al, byte ptr [rbp - 0x21]
	test	al, 1
	jne	.label_1186
	jmp	.label_1175
.label_1186:
	mov	rax, qword ptr [rbp - 0x18]
	add	rax, 0x10
	mov	qword ptr [rbp - 0x18], rax
	jmp	.label_1185
.label_1198:
	mov	eax, 0x18
	mov	edx, eax
	mov	rcx,  qword ptr [word ptr [column_info]]
	mov	rsi,  qword ptr [word ptr [max_idx]]
	mov	rdi, rcx
	call	xnrealloc
	mov	qword ptr [word ptr [column_info]],  rax
	mov	rax,  qword ptr [word ptr [max_idx]]
	mov	qword ptr [rbp - 0x18], rax
.label_1196:
	mov	rax, qword ptr [rbp - 0x18]
	sub	rax,  qword ptr [word ptr [init_column_info.column_info_alloc]]
	mov	qword ptr [rbp - 0x28], rax
	mov	rax,  qword ptr [word ptr [init_column_info.column_info_alloc]]
	add	rax, 1
	add	rax, qword ptr [rbp - 0x18]
	mov	qword ptr [rbp - 0x30], rax
	mov	rax, qword ptr [rbp - 0x30]
	imul	rax, qword ptr [rbp - 0x28]
	mov	qword ptr [rbp - 0x38], rax
	mov	rax, qword ptr [rbp - 0x30]
	cmp	rax, qword ptr [rbp - 0x18]
	jb	.label_1191
	mov	rax, qword ptr [rbp - 0x38]
	xor	ecx, ecx
	mov	edx, ecx
	div	qword ptr [rbp - 0x28]
	cmp	rax, qword ptr [rbp - 0x30]
	je	.label_1190
.label_1191:
	call	xalloc_die
.label_1190:
	mov	eax, 8
	mov	esi, eax
	mov	rcx, qword ptr [rbp - 0x38]
	shr	rcx, 1
	mov	rdi, rcx
	call	xnmalloc
	mov	qword ptr [rbp - 0x20], rax
	mov	rax,  qword ptr [word ptr [init_column_info.column_info_alloc]]
	mov	qword ptr [rbp - 8], rax
.label_1195:
	mov	rax, qword ptr [rbp - 8]
	cmp	rax, qword ptr [rbp - 0x18]
	jae	.label_1192
	mov	rax, qword ptr [rbp - 0x20]
	mov	rcx, qword ptr [rbp - 8]
	imul	rcx, rcx, 0x18
	add	rcx,  qword ptr [word ptr [column_info]]
	mov	qword ptr [rcx + 0x10], rax
	mov	rax, qword ptr [rbp - 8]
	add	rax, 1
	shl	rax, 3
	add	rax, qword ptr [rbp - 0x20]
	mov	qword ptr [rbp - 0x20], rax
	mov	rax, qword ptr [rbp - 8]
	add	rax, 1
	mov	qword ptr [rbp - 8], rax
	jmp	.label_1195
	.section	.text
	.align	32
	#Procedure 0x40dddf

	.globl init_column_info
	.type init_column_info, @function
init_column_info:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x50
	mov	rax,  qword ptr [word ptr [max_idx]]
	cmp	rax,  qword ptr [word ptr [cwd_n_used]]
	jae	.label_1194
	mov	rax,  qword ptr [word ptr [max_idx]]
	mov	qword ptr [rbp - 0x48], rax
	jmp	.label_1200
.label_1187:
	jmp	.label_1188
.label_1188:
	mov	rax, qword ptr [rbp - 8]
	add	rax, 1
	mov	qword ptr [rbp - 8], rax
	jmp	.label_1197
.label_1192:
	mov	rax, qword ptr [rbp - 0x18]
	mov	qword ptr [word ptr [init_column_info.column_info_alloc]],  rax
.label_1193:
	mov	qword ptr [rbp - 8], 0
.label_1197:
	mov	rax, qword ptr [rbp - 8]
	cmp	rax, qword ptr [rbp - 0x10]
	jae	.label_1199
	mov	rax, qword ptr [rbp - 8]
	imul	rax, rax, 0x18
	add	rax,  qword ptr [word ptr [column_info]]
	mov	byte ptr [rax], 1
	mov	rax, qword ptr [rbp - 8]
	add	rax, 1
	imul	rax, rax, 3
	mov	rcx, qword ptr [rbp - 8]
	imul	rcx, rcx, 0x18
	add	rcx,  qword ptr [word ptr [column_info]]
	mov	qword ptr [rcx + 8], rax
	mov	qword ptr [rbp - 0x40], 0
.label_1189:
	mov	rax, qword ptr [rbp - 0x40]
	cmp	rax, qword ptr [rbp - 8]
	ja	.label_1187
	mov	rax, qword ptr [rbp - 0x40]
	mov	rcx, qword ptr [rbp - 8]
	imul	rcx, rcx, 0x18
	add	rcx,  qword ptr [word ptr [column_info]]
	mov	rcx, qword ptr [rcx + 0x10]
	mov	qword ptr [rcx + rax*8], 3
	mov	rax, qword ptr [rbp - 0x40]
	add	rax, 1
	mov	qword ptr [rbp - 0x40], rax
	jmp	.label_1189
.label_1199:
	add	rsp, 0x50
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40dec6
	.globl sub_40dec6
	.type sub_40dec6, @function
sub_40dec6:

	nop	dword ptr [rax]
.label_1194:
	mov	rax,  qword ptr [word ptr [cwd_n_used]]
	mov	qword ptr [rbp - 0x48], rax
.label_1200:
	mov	rax, qword ptr [rbp - 0x48]
	mov	qword ptr [rbp - 0x10], rax
	mov	rax,  qword ptr [word ptr [init_column_info.column_info_alloc]]
	cmp	rax, qword ptr [rbp - 0x10]
	jae	.label_1193
	mov	rax, qword ptr [rbp - 0x10]
	mov	rcx,  qword ptr [word ptr [max_idx]]
	shr	rcx, 1
	cmp	rax, rcx
	jae	.label_1198
	mov	eax, 0x30
	mov	edx, eax
	mov	rcx,  qword ptr [word ptr [column_info]]
	mov	rsi, qword ptr [rbp - 0x10]
	mov	rdi, rcx
	call	xnrealloc
	mov	qword ptr [word ptr [column_info]],  rax
	mov	rax, qword ptr [rbp - 0x10]
	shl	rax, 1
	mov	qword ptr [rbp - 0x18], rax
	jmp	.label_1196
	.section	.text
	.align	32
	#Procedure 0x40df40
	.globl stat_time_normalize
	.type stat_time_normalize, @function
stat_time_normalize:

	push	rbp
	mov	rbp, rsp
	mov	dword ptr [rbp - 4], edi
	mov	qword ptr [rbp - 0x10], rsi
	mov	eax, dword ptr [rbp - 4]
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40df50

	.globl bkm_scale_by_power
	.type bkm_scale_by_power, @function
bkm_scale_by_power:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	mov	qword ptr [rbp - 8], rdi
	mov	dword ptr [rbp - 0xc], esi
	mov	dword ptr [rbp - 0x10], edx
	mov	dword ptr [rbp - 0x14], 0
.label_1202:
	mov	eax, dword ptr [rbp - 0x10]
	mov	ecx, eax
	add	ecx, -1
	mov	dword ptr [rbp - 0x10], ecx
	cmp	eax, 0
	je	.label_1201
	mov	rdi, qword ptr [rbp - 8]
	mov	esi, dword ptr [rbp - 0xc]
	call	bkm_scale
	or	eax, dword ptr [rbp - 0x14]
	mov	dword ptr [rbp - 0x14], eax
	jmp	.label_1202
.label_1201:
	mov	eax, dword ptr [rbp - 0x14]
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40df9d
	.globl sub_40df9d
	.type sub_40df9d, @function
sub_40df9d:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x40dfa0

	.globl isdst_differ
	.type isdst_differ, @function
isdst_differ:
	push	rbp
	mov	rbp, rsp
	xor	eax, eax
	mov	cl, al
	mov	dword ptr [rbp - 4], edi
	mov	dword ptr [rbp - 8], esi
	cmp	dword ptr [rbp - 4], 0
	setne	dl
	xor	dl, 0xff
	and	dl, 1
	movzx	eax, dl
	cmp	dword ptr [rbp - 8], 0
	setne	dl
	xor	dl, 0xff
	and	dl, 1
	movzx	esi, dl
	cmp	eax, esi
	mov	byte ptr [rbp - 9], cl
	je	.label_1203
	xor	eax, eax
	mov	cl, al
	xor	eax, eax
	cmp	eax, dword ptr [rbp - 4]
	mov	byte ptr [rbp - 9], cl
	jg	.label_1203
	xor	eax, eax
	cmp	eax, dword ptr [rbp - 8]
	setle	cl
	mov	byte ptr [rbp - 9], cl
.label_1203:
	mov	al, byte ptr [rbp - 9]
	and	al, 1
	movzx	eax, al
	pop	rbp
	ret	
.label_1206:
	mov	al, 1
	cmp	qword ptr [rbp - 0x10], 0
	mov	byte ptr [rbp - 0x15], al
	jne	.label_1204
	cmp	qword ptr [rbp - 8], 0
	setne	al
	mov	byte ptr [rbp - 0x15], al
.label_1204:
	mov	al, byte ptr [rbp - 0x15]
	and	al, 1
	movzx	ecx, al
	mov	dword ptr [rbp - 0x14], ecx
.label_1205:
	mov	eax, dword ptr [rbp - 0x14]
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40e02b
	.globl sub_40e02b
	.type sub_40e02b, @function
sub_40e02b:

	nop	
	.section	.text
	.align	32
	#Procedure 0x40e02c
	.globl timespec_sign
	.type timespec_sign, @function
timespec_sign:

	push	rbp
	mov	rbp, rsp
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 8], rsi
	cmp	qword ptr [rbp - 0x10], 0
	jge	.label_1206
	mov	eax, 0xffffffff
	mov	dword ptr [rbp - 0x14], eax
	jmp	.label_1205
	.section	.text
	.align	32
	#Procedure 0x40e050

	.globl xnmalloc
	.type xnmalloc, @function
xnmalloc:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	movabs	rax, 0x7fffffffffffffff
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	xor	ecx, ecx
	mov	edx, ecx
	div	qword ptr [rbp - 0x10]
	cmp	rax, qword ptr [rbp - 8]
	jae	.label_1207
	call	xalloc_die
.label_1207:
	mov	rax, qword ptr [rbp - 8]
	imul	rax, qword ptr [rbp - 0x10]
	mov	rdi, rax
	call	xmalloc
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40e098
	.globl sub_40e098
	.type sub_40e098, @function
sub_40e098:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40e0a0
	.globl close_stdout_set_ignore_EPIPE
	.type close_stdout_set_ignore_EPIPE, @function
close_stdout_set_ignore_EPIPE:

	push	rbp
	mov	rbp, rsp
	mov	al, dil
	and	al, 1
	mov	byte ptr [rbp - 1], al
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	mov	byte ptr [byte ptr [ignore_EPIPE]],  al
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40e0ba
	.globl sub_40e0ba
	.type sub_40e0ba, @function
sub_40e0ba:

	nop	word ptr [rax + rax]
.label_1222:
	jmp	.label_1220
.label_1220:
	mov	eax, dword ptr [rbp - 0x14]
	add	eax, 1
	mov	dword ptr [rbp - 0x14], eax
	jmp	.label_1221
.label_1210:
	mov	rax, qword ptr [rbp - 8]
	mov	rcx, rax
	add	rcx, 1
	mov	qword ptr [rbp - 8], rcx
	mov	dl, byte ptr [rax]
	mov	byte ptr [rbp - 0x17], dl
	mov	dword ptr [rbp - 0x2c], 2
.label_1226:
	jmp	.label_1231
	.section	.text
	.align	32
	#Procedure 0x40e0f3

	.globl sub_40e0f3
	.type sub_40e0f3, @function
sub_40e0f3:
	jmp	.label_1233
.label_1212:
	mov	dword ptr [rbp - 0x2c], 5
	jmp	.label_1233
	.section	.text
	.align	32
	#Procedure 0x40e104

	.globl sub_40e104
	.type sub_40e104, @function
sub_40e104:
	mov	rax, qword ptr [rbp - 8]
	cmp	byte ptr [rax], 0
	je	.label_1236
	mov	rax, qword ptr [rbp - 8]
	mov	rcx, rax
	add	rcx, 1
	mov	qword ptr [rbp - 8], rcx
	mov	dl, byte ptr [rax]
	mov	byte ptr [rbp - 0x16], dl
	mov	dword ptr [rbp - 0x2c], 3
	jmp	.label_1235
.label_1211:
	cmp	dword ptr [rbp - 0x2c], 6
	jne	.label_1216
	movabs	rdi, OFFSET FLAT:label_1218
	call	gettext
	lea	rdi, [rbp - 0x17]
	mov	qword ptr [rbp - 0x68], rax
	call	quote
	xor	ecx, ecx
	mov	edi, ecx
	mov	esi, ecx
	mov	rdx, qword ptr [rbp - 0x68]
	mov	rcx, rax
	mov	al, 0
	call	error
.label_1216:
	jmp	.label_1230
.label_1230:
	jmp	.label_1231
.label_1233:
	cmp	dword ptr [rbp - 0x2c], 6
	jne	.label_1232
	movabs	rdi, OFFSET FLAT:label_1234
	call	gettext
	xor	ecx, ecx
	mov	edi, ecx
	mov	esi, ecx
	mov	rdx, rax
	mov	al, 0
	call	error
	mov	rdi,  qword ptr [word ptr [color_buf]]
	call	free
	mov	rdx,  qword ptr [word ptr [color_ext_list]]
	mov	qword ptr [rbp - 0x38], rdx
.label_1229:
	cmp	qword ptr [rbp - 0x38], 0
	je	.label_1217
	mov	rax, qword ptr [rbp - 0x38]
	mov	qword ptr [rbp - 0x40], rax
	mov	rax, qword ptr [rbp - 0x38]
	mov	rax, qword ptr [rax + 0x20]
	mov	qword ptr [rbp - 0x38], rax
	mov	rax, qword ptr [rbp - 0x40]
	mov	rdi, rax
	call	free
	jmp	.label_1229
	.section	.text
	.align	32
	#Procedure 0x40e1e7

	.globl sub_40e1e7
	.type sub_40e1e7, @function
sub_40e1e7:
	mov	rax, qword ptr [rbp - 8]
	mov	rcx, rax
	add	rcx, 1
	mov	qword ptr [rbp - 8], rcx
	movsx	edx, byte ptr [rax]
	cmp	edx, 0x3d
	jne	.label_1238
	lea	rdi, [rbp - 0x10]
	lea	rsi, [rbp - 8]
	xor	edx, edx
	mov	rax, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rbp - 0x20]
	mov	qword ptr [rcx + 0x18], rax
	mov	rax, qword ptr [rbp - 0x20]
	add	rax, 0x10
	mov	rcx, rax
	call	get_funky_string
	mov	edx, 6
	mov	r8d, 1
	test	al, 1
	cmovne	edx, r8d
	mov	dword ptr [rbp - 0x2c], edx
	jmp	.label_1237
.label_1209:
	call	abort
.label_1217:
	mov	byte ptr [byte ptr [print_with_color]],  0
.label_1232:
	cmp	qword ptr [word ptr [label_1223]],  6
	jne	.label_1224
	movabs	rsi, OFFSET FLAT:label_1227
	mov	eax, 6
	mov	edx, eax
	mov	rdi,  qword ptr [word ptr [label_1228]]
	call	strncmp
	cmp	eax, 0
	jne	.label_1224
	mov	byte ptr [byte ptr [color_symlink_as_referent]],  1
.label_1224:
	add	rsp, 0x70
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40e292
	.globl sub_40e292
	.type sub_40e292, @function
sub_40e292:

	nop	dword ptr [rax]
.label_2902:
	mov	rax, qword ptr [rbp - 8]
	movsx	ecx, byte ptr [rax]
	test	ecx, ecx
	mov	dword ptr [rbp - 0x58], ecx
	je	.label_1212
	jmp	.label_1213
.label_1213:
	mov	eax, dword ptr [rbp - 0x58]
	sub	eax, 0x2a
	mov	dword ptr [rbp - 0x5c], eax
	je	.label_1214
	jmp	.label_1219
.label_1219:
	mov	eax, dword ptr [rbp - 0x58]
	sub	eax, 0x3a
	mov	dword ptr [rbp - 0x60], eax
	jne	.label_1210
	jmp	.label_1225
.label_1225:
	mov	rax, qword ptr [rbp - 8]
	add	rax, 1
	mov	qword ptr [rbp - 8], rax
	jmp	.label_1226
	.section	.text
	.align	32
	#Procedure 0x40e2e6

	.globl sub_40e2e6
	.type sub_40e2e6, @function
sub_40e2e6:
	mov	dword ptr [rbp - 0x2c], 6
	mov	rax, qword ptr [rbp - 8]
	mov	rcx, rax
	add	rcx, 1
	mov	qword ptr [rbp - 8], rcx
	movsx	edx, byte ptr [rax]
	cmp	edx, 0x3d
	jne	.label_1230
	mov	dword ptr [rbp - 0x14], 0
.label_1221:
	movsxd	rax, dword ptr [rbp - 0x14]
	cmp	qword ptr [word ptr [+ (rax * 8) + indicator_name]],  0
	je	.label_1211
	lea	rdi, [rbp - 0x17]
	movsxd	rax, dword ptr [rbp - 0x14]
	mov	rsi,  qword ptr [word ptr [+ (rax * 8) + indicator_name]]
	call	strcmp
	cmp	eax, 0
	jne	.label_1222
	lea	rdi, [rbp - 0x10]
	lea	rsi, [rbp - 8]
	xor	edx, edx
	movabs	rax, OFFSET FLAT:color_indicator
	mov	rcx, qword ptr [rbp - 0x10]
	movsxd	r8, dword ptr [rbp - 0x14]
	shl	r8, 4
	mov	r9, rax
	add	r9, r8
	mov	qword ptr [r9 + 8], rcx
	movsxd	rcx, dword ptr [rbp - 0x14]
	shl	rcx, 4
	add	rax, rcx
	mov	rcx, rax
	call	get_funky_string
	mov	edx, 6
	mov	r10d, 1
	test	al, 1
	cmovne	edx, r10d
	mov	dword ptr [rbp - 0x2c], edx
	jmp	.label_1211
.label_1236:
	mov	dword ptr [rbp - 0x2c], 6
.label_1235:
	jmp	.label_1231
.label_1238:
	mov	dword ptr [rbp - 0x2c], 6
.label_1237:
	jmp	.label_1231
.label_1231:
	jmp	.label_1215
.label_1241:
	lea	rdi, [rbp - 0x17]
	mov	qword ptr [rbp - 0x20], 0
	mov	eax, OFFSET FLAT:label_1243
	mov	esi, eax
	call	strcpy
	mov	rdi, qword ptr [rbp - 8]
	mov	qword ptr [rbp - 0x48], rax
	call	xstrdup
	mov	qword ptr [word ptr [color_buf]],  rax
	mov	qword ptr [rbp - 0x10], rax
	mov	dword ptr [rbp - 0x2c], 1
.label_1215:
	mov	eax, dword ptr [rbp - 0x2c]
	dec	eax
	mov	ecx, eax
	sub	eax, 5
	mov	qword ptr [rbp - 0x50], rcx
	mov	dword ptr [rbp - 0x54], eax
	ja	.label_1209
	mov	rax, qword ptr [rbp - 0x50]
	mov	rcx,  qword ptr [word ptr [+ (rax * 8) + label_1208]]
	jmp	rcx
.label_1214:
	mov	eax, 0x28
	mov	edi, eax
	call	xmalloc
	lea	rdi, [rbp - 0x10]
	lea	rsi, [rbp - 8]
	mov	edx, 1
	mov	qword ptr [rbp - 0x20], rax
	mov	rax,  qword ptr [word ptr [color_ext_list]]
	mov	rcx, qword ptr [rbp - 0x20]
	mov	qword ptr [rcx + 0x20], rax
	mov	rax, qword ptr [rbp - 0x20]
	mov	qword ptr [word ptr [color_ext_list]],  rax
	mov	rax, qword ptr [rbp - 8]
	add	rax, 1
	mov	qword ptr [rbp - 8], rax
	mov	rax, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rbp - 0x20]
	mov	qword ptr [rcx + 8], rax
	mov	rcx, qword ptr [rbp - 0x20]
	call	get_funky_string
	mov	edx, 6
	mov	r8d, 4
	test	al, 1
	cmovne	edx, r8d
	mov	dword ptr [rbp - 0x2c], edx
	jmp	.label_1226
	.section	.text
	.align	32
	#Procedure 0x40e483

	.globl parse_ls_color
	.type parse_ls_color, @function
parse_ls_color:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x70
	movabs	rdi, OFFSET FLAT:label_1239
	call	getenv
	mov	qword ptr [rbp - 8], rax
	cmp	rax, 0
	je	.label_1245
	mov	rax, qword ptr [rbp - 8]
	movsx	ecx, byte ptr [rax]
	cmp	ecx, 0
	jne	.label_1241
.label_1245:
	movabs	rdi, OFFSET FLAT:label_1244
	call	getenv
	mov	qword ptr [rbp - 0x28], rax
	cmp	qword ptr [rbp - 0x28], 0
	je	.label_1240
	mov	rax, qword ptr [rbp - 0x28]
	movsx	ecx, byte ptr [rax]
	cmp	ecx, 0
	jne	.label_1242
.label_1240:
	call	known_term_type
	test	al, 1
	jne	.label_1242
	mov	byte ptr [byte ptr [print_with_color]],  0
.label_1242:
	jmp	.label_1224
	.section	.text
	.align	32
	#Procedure 0x40e500
	.globl rotr8
	.type rotr8, @function
rotr8:

	push	rbp
	mov	rbp, rsp
	mov	al, dil
	mov	edi, 8
	mov	byte ptr [rbp - 1], al
	mov	dword ptr [rbp - 8], esi
	movzx	esi, byte ptr [rbp - 1]
	mov	ecx, dword ptr [rbp - 8]
	sar	esi, cl
	movzx	edx, byte ptr [rbp - 1]
	sub	edi, dword ptr [rbp - 8]
	mov	ecx, edi
	shl	edx, cl
	or	esi, edx
	and	esi, 0xff
	mov	al, sil
	movzx	eax, al
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40e536
	.globl sub_40e536
	.type sub_40e536, @function
sub_40e536:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40e540

	.globl get_stat_atime
	.type get_stat_atime, @function
get_stat_atime:
	push	rbp
	mov	rbp, rsp
	mov	qword ptr [rbp - 0x18], rdi
	movups	xmm0, xmmword ptr [rdi + 0x48]
	movaps	xmmword ptr [rbp - 0x10], xmm0
	mov	rax, qword ptr [rbp - 0x10]
	mov	rdx, qword ptr [rbp - 8]
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40e55a
	.globl sub_40e55a
	.type sub_40e55a, @function
sub_40e55a:

	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40e560

	.globl free_entry
	.type free_entry, @function
free_entry:
	push	rbp
	mov	rbp, rsp
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	rsi, qword ptr [rbp - 0x10]
	mov	qword ptr [rsi], 0
	mov	rsi, qword ptr [rbp - 8]
	mov	rsi, qword ptr [rsi + 0x48]
	mov	rdi, qword ptr [rbp - 0x10]
	mov	qword ptr [rdi + 8], rsi
	mov	rsi, qword ptr [rbp - 0x10]
	mov	rdi, qword ptr [rbp - 8]
	mov	qword ptr [rdi + 0x48], rsi
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40e595
	.globl sub_40e595
	.type sub_40e595, @function
sub_40e595:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40e5a0
	.globl get_stat_atime_ns
	.type get_stat_atime_ns, @function
get_stat_atime_ns:

	push	rbp
	mov	rbp, rsp
	mov	qword ptr [rbp - 8], rdi
	mov	rdi, qword ptr [rbp - 8]
	mov	rax, qword ptr [rdi + 0x50]
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40e5b2
	.globl sub_40e5b2
	.type sub_40e5b2, @function
sub_40e5b2:

	nop	word ptr cs:[rax + rax]
.label_1246:
	mov	rax, qword ptr [rbp - 0x40]
	mov	qword ptr [rbp - 8], rax
.label_1247:
	mov	rax, qword ptr [rbp - 8]
	add	rsp, 0x50
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40e5d2
	.globl sub_40e5d2
	.type sub_40e5d2, @function
sub_40e5d2:

	nop	word ptr cs:[rax + rax]
.label_1253:
	cmp	qword ptr [rbp - 0x20], 0
	je	.label_1257
	mov	rax, qword ptr [rbp - 0x20]
	mov	rcx, qword ptr [rbp - 0x28]
	imul	rcx, qword ptr [rbp - 0x40]
	add	rax, rcx
	mov	rcx, qword ptr [rbp - 0x20]
	mov	rdx, qword ptr [rbp - 0x28]
	imul	rdx, qword ptr [rbp - 0x30]
	add	rcx, rdx
	mov	rdx, qword ptr [rbp - 0x28]
	mov	rdi, rax
	mov	rsi, rcx
	call	memcmp
	cmp	eax, 0
	je	.label_1254
.label_1257:
	mov	byte ptr [rbp - 0x41], 1
.label_1254:
	jmp	.label_1249
.label_1249:
	jmp	.label_1250
.label_1250:
	jmp	.label_1251
.label_1251:
	jmp	.label_1252
.label_1252:
	mov	rax, qword ptr [rbp - 0x30]
	add	rax, 1
	mov	qword ptr [rbp - 0x30], rax
	jmp	.label_1255
	.section	.text
	.align	32
	#Procedure 0x40e64b

	.globl argmatch
	.type argmatch, @function
argmatch:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x50
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 0x18], rsi
	mov	qword ptr [rbp - 0x20], rdx
	mov	qword ptr [rbp - 0x28], rcx
	mov	qword ptr [rbp - 0x40], -1
	mov	byte ptr [rbp - 0x41], 0
	mov	rdi, qword ptr [rbp - 0x10]
	call	strlen
	mov	qword ptr [rbp - 0x38], rax
	mov	qword ptr [rbp - 0x30], 0
.label_1255:
	mov	rax, qword ptr [rbp - 0x30]
	mov	rcx, qword ptr [rbp - 0x18]
	cmp	qword ptr [rcx + rax*8], 0
	je	.label_1248
	mov	rax, qword ptr [rbp - 0x30]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	rdi, qword ptr [rcx + rax*8]
	mov	rsi, qword ptr [rbp - 0x10]
	mov	rdx, qword ptr [rbp - 0x38]
	call	strncmp
	cmp	eax, 0
	jne	.label_1251
	mov	rax, qword ptr [rbp - 0x30]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	rdi, qword ptr [rcx + rax*8]
	call	strlen
	cmp	rax, qword ptr [rbp - 0x38]
	jne	.label_1256
	mov	rax, qword ptr [rbp - 0x30]
	mov	qword ptr [rbp - 8], rax
	jmp	.label_1247
.label_1248:
	test	byte ptr [rbp - 0x41], 1
	je	.label_1246
	mov	qword ptr [rbp - 8], -2
	jmp	.label_1247
.label_1256:
	cmp	qword ptr [rbp - 0x40], -1
	jne	.label_1253
	mov	rax, qword ptr [rbp - 0x30]
	mov	qword ptr [rbp - 0x40], rax
	jmp	.label_1249
.label_1258:
	mov	rax, qword ptr [rbp - 0x18]
	cmp	rax, qword ptr [rbp - 0x30]
	jbe	.label_1263
	mov	rax, qword ptr [rbp - 0x18]
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_1264
	.section	.text
	.align	32
	#Procedure 0x40e72b

	.globl abmon_init
	.type abmon_init, @function
abmon_init:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x60
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 0x18], 0xc
.label_1262:
	mov	rax, qword ptr [rbp - 0x18]
	mov	qword ptr [rbp - 0x20], rax
	mov	qword ptr [rbp - 0x18], 0
	mov	dword ptr [rbp - 0x24], 0
.label_1266:
	cmp	dword ptr [rbp - 0x24], 0xc
	jge	.label_1265
	mov	rax, qword ptr [rbp - 0x20]
	mov	qword ptr [rbp - 0x30], rax
	mov	ecx, dword ptr [rbp - 0x24]
	add	ecx, 0x2000e
	mov	edi, ecx
	call	rpl_nl_langinfo
	mov	esi, 0x25
	mov	qword ptr [rbp - 0x38], rax
	mov	rdi, qword ptr [rbp - 0x38]
	call	strchr
	cmp	rax, 0
	je	.label_1260
	mov	byte ptr [rbp - 1], 0
	jmp	.label_1261
.label_1263:
	mov	rax, qword ptr [rbp - 0x30]
	mov	qword ptr [rbp - 0x60], rax
.label_1264:
	mov	rax, qword ptr [rbp - 0x60]
	mov	qword ptr [rbp - 0x18], rax
	mov	eax, dword ptr [rbp - 0x24]
	add	eax, 1
	mov	dword ptr [rbp - 0x24], eax
	jmp	.label_1266
.label_1260:
	mov	rax, qword ptr [rbp - 0x38]
	movsx	edi, byte ptr [rax]
	call	to_uchar
	movzx	edi, al
	movsxd	rcx, edi
	mov	qword ptr [rbp - 0x50], rcx
	call	__ctype_b_loc
	mov	edi, 0x80
	mov	edx, edi
	lea	rcx, [rbp - 0x30]
	xor	edi, edi
	mov	esi, 1
	mov	rax, qword ptr [rax]
	mov	r8, qword ptr [rbp - 0x50]
	movzx	r9d, word ptr [rax + r8*2]
	and	r9d, 0x800
	cmp	r9d, 0
	mov	r9d, edi
	cmovne	r9d, esi
	mov	dword ptr [rbp - 0x3c], r9d
	mov	rax, qword ptr [rbp - 0x38]
	movsxd	r10, dword ptr [rbp - 0x24]
	shl	r10, 7
	add	r10, qword ptr [rbp - 0x10]
	mov	r8d, dword ptr [rbp - 0x3c]
	mov	dword ptr [rbp - 0x54], edi
	mov	rdi, rax
	mov	rsi, r10
	mov	r9d, dword ptr [rbp - 0x54]
	call	mbsalign
	mov	qword ptr [rbp - 0x48], rax
	cmp	qword ptr [rbp - 0x48], 0x80
	jb	.label_1258
	mov	byte ptr [rbp - 1], 0
	jmp	.label_1261
.label_1265:
	jmp	.label_1259
.label_1259:
	mov	rax, qword ptr [rbp - 0x20]
	cmp	rax, qword ptr [rbp - 0x18]
	ja	.label_1262
	mov	byte ptr [rbp - 1], 1
.label_1261:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	add	rsp, 0x60
	pop	rbp
	ret	
.label_1271:
	call	__errno_location
	xor	edi, edi
	movabs	rdx, OFFSET FLAT:label_1272
	mov	esi, dword ptr [rax]
	mov	rcx, qword ptr [rbp - 8]
	mov	al, 0
	call	error
.label_1273:
	mov	edi,  dword ptr [dword ptr [exit_failure]]
	call	_exit
.label_1267:
	mov	rdi,  qword ptr [word ptr [stderr]]
	call	close_stream
	cmp	eax, 0
	je	.label_1269
	mov	edi,  dword ptr [dword ptr [exit_failure]]
	call	_exit
.label_1269:
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40e8c2
	.globl sub_40e8c2
	.type sub_40e8c2, @function
sub_40e8c2:

	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40e8cb

	.globl close_stdout
	.type close_stdout, @function
close_stdout:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	mov	rdi,  qword ptr [word ptr [stdout]]
	call	close_stream
	cmp	eax, 0
	je	.label_1267
	test	byte ptr [byte ptr [ignore_EPIPE]],  1
	je	.label_1270
	call	__errno_location
	cmp	dword ptr [rax], 0x20
	je	.label_1267
.label_1270:
	movabs	rdi, OFFSET FLAT:label_1268
	call	gettext
	mov	qword ptr [rbp - 8], rax
	cmp	qword ptr [word ptr [file_name]],  0
	je	.label_1271
	call	__errno_location
	mov	esi, dword ptr [rax]
	mov	rdi,  qword ptr [word ptr [file_name]]
	mov	dword ptr [rbp - 0xc], esi
	call	quotearg_colon
	xor	edi, edi
	movabs	rdx, OFFSET FLAT:label_1274
	mov	r8, qword ptr [rbp - 8]
	mov	esi, dword ptr [rbp - 0xc]
	mov	rcx, rax
	mov	al, 0
	call	error
	jmp	.label_1273
	.section	.text
	.align	32
	#Procedure 0x40e960

	.globl rev_strcmp_ctime
	.type rev_strcmp_ctime, @function
rev_strcmp_ctime:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	movabs	rdx, OFFSET FLAT:strcmp
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	rsi, qword ptr [rbp - 0x10]
	mov	rdi, qword ptr [rbp - 8]
	mov	qword ptr [rbp - 0x18], rdi
	mov	rdi, rsi
	mov	rsi, qword ptr [rbp - 0x18]
	call	cmp_ctime
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40e998
	.globl sub_40e998
	.type sub_40e998, @function
sub_40e998:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40e9a0
	.globl c_isgraph
	.type c_isgraph, @function
c_isgraph:

	push	rbp
	mov	rbp, rsp
	mov	dword ptr [rbp - 8], edi
	add	edi, -0x21
	sub	edi, 0x5d
	mov	dword ptr [rbp - 0xc], edi
	ja	.label_1275
	jmp	.label_1277
.label_1277:
	mov	byte ptr [rbp - 1], 1
	jmp	.label_1276
.label_1275:
	mov	byte ptr [rbp - 1], 0
.label_1276:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40e9d2
	.globl sub_40e9d2
	.type sub_40e9d2, @function
sub_40e9d2:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40e9e0
	.globl version_etc_ar
	.type version_etc_ar, @function
version_etc_ar:

	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x30
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	qword ptr [rbp - 0x18], rdx
	mov	qword ptr [rbp - 0x20], rcx
	mov	qword ptr [rbp - 0x28], r8
	mov	qword ptr [rbp - 0x30], 0
.label_1280:
	mov	rax, qword ptr [rbp - 0x30]
	mov	rcx, qword ptr [rbp - 0x28]
	cmp	qword ptr [rcx + rax*8], 0
	je	.label_1278
	jmp	.label_1279
.label_1279:
	mov	rax, qword ptr [rbp - 0x30]
	add	rax, 1
	mov	qword ptr [rbp - 0x30], rax
	jmp	.label_1280
.label_1278:
	mov	rdi, qword ptr [rbp - 8]
	mov	rsi, qword ptr [rbp - 0x10]
	mov	rdx, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rbp - 0x20]
	mov	r8, qword ptr [rbp - 0x28]
	mov	r9, qword ptr [rbp - 0x30]
	call	version_etc_arn
	add	rsp, 0x30
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40ea50

	.globl quotearg_n_mem
	.type quotearg_n_mem, @function
quotearg_n_mem:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	movabs	rcx, OFFSET FLAT:default_quoting_options
	mov	dword ptr [rbp - 4], edi
	mov	qword ptr [rbp - 0x10], rsi
	mov	qword ptr [rbp - 0x18], rdx
	mov	edi, dword ptr [rbp - 4]
	mov	rsi, qword ptr [rbp - 0x10]
	mov	rdx, qword ptr [rbp - 0x18]
	call	quotearg_n_options
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40ea83
	.globl sub_40ea83
	.type sub_40ea83, @function
sub_40ea83:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40ea90

	.globl strcmp_ctime
	.type strcmp_ctime, @function
strcmp_ctime:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	movabs	rdx, OFFSET FLAT:strcmp
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	rsi, qword ptr [rbp - 8]
	mov	rdi, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 0x18], rdi
	mov	rdi, rsi
	mov	rsi, qword ptr [rbp - 0x18]
	call	cmp_ctime
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40eac8
	.globl sub_40eac8
	.type sub_40eac8, @function
sub_40eac8:

	nop	dword ptr [rax + rax]
.label_1284:
	movabs	rdi, OFFSET FLAT:label_1281
	movabs	rsi, OFFSET FLAT:label_1282
	mov	edx, 0xfac
	movabs	rcx, OFFSET FLAT:label_1283
	call	__assert_fail
.label_1285:
	mov	rax, qword ptr [rbp - 0x18]
	test	byte ptr [rax + 0xb8], 1
	je	.label_1286
	mov	rax, qword ptr [rbp - 0x18]
	cmp	qword ptr [rax + 0x20], 0
	je	.label_1286
	mov	rax, qword ptr [rbp - 0x18]
	mov	rdi, qword ptr [rax + 0x20]
	mov	rsi, qword ptr [rbp - 8]
	call	umaxtostr
	mov	qword ptr [rbp - 0x20], rax
	jmp	.label_1287
	.section	.text
	.align	32
	#Procedure 0x40eb32

	.globl format_inode
	.type format_inode, @function
format_inode:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	mov	eax, 0x15
	mov	ecx, eax
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	qword ptr [rbp - 0x18], rdx
	cmp	rcx, qword ptr [rbp - 0x10]
	ja	.label_1284
	jmp	.label_1285
.label_1286:
	movabs	rax, OFFSET FLAT:label_684
	mov	qword ptr [rbp - 0x20], rax
	jmp	.label_1287
.label_1287:
	mov	rax, qword ptr [rbp - 0x20]
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40eb79
	.globl sub_40eb79
	.type sub_40eb79, @function
sub_40eb79:

	nop	dword ptr [rax]
.label_1290:
	call	__errno_location
	mov	dword ptr [rax], 0
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rbp - 0x18]
	add	rax, 0x18
	mov	rsi, rax
	call	file_has_acl
	mov	dword ptr [rbp - 0x1c], eax
	cmp	dword ptr [rbp - 0x1c], 0
	jg	.label_1288
	call	__errno_location
	mov	edi, dword ptr [rax]
	call	errno_unsupported
	test	al, 1
	jne	.label_1289
	jmp	.label_1288
.label_1289:
	mov	rax, qword ptr [rbp - 0x18]
	mov	rax, qword ptr [rax + 0x18]
	mov	qword ptr [word ptr [file_has_acl_cache.unsupported_device]],  rax
.label_1288:
	mov	eax, dword ptr [rbp - 0x1c]
	mov	dword ptr [rbp - 4], eax
.label_1291:
	mov	eax, dword ptr [rbp - 4]
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40ebe4
	.globl sub_40ebe4
	.type sub_40ebe4, @function
sub_40ebe4:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40ebf3

	.globl file_has_acl_cache
	.type file_has_acl_cache, @function
file_has_acl_cache:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 0x18], rsi
	mov	rsi, qword ptr [rbp - 0x18]
	mov	rsi, qword ptr [rsi + 0x18]
	cmp	rsi,  qword ptr [word ptr [file_has_acl_cache.unsupported_device]]
	jne	.label_1290
	call	__errno_location
	mov	dword ptr [rax], 0x5f
	mov	dword ptr [rbp - 4], 0
	jmp	.label_1291
	.section	.text
	.align	32
	#Procedure 0x40ec30

	.globl bad_cast
	.type bad_cast, @function
bad_cast:
	push	rbp
	mov	rbp, rsp
	mov	qword ptr [rbp - 8], rdi
	mov	rax, qword ptr [rbp - 8]
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40ec3e
	.globl sub_40ec3e
	.type sub_40ec3e, @function
sub_40ec3e:

	nop	
	.section	.text
	.align	32
	#Procedure 0x40ec40

	.globl is_prime
	.type is_prime, @function
is_prime:
	push	rbp
	mov	rbp, rsp
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], 3
	mov	rdi, qword ptr [rbp - 0x10]
	imul	rdi, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 0x18], rdi
.label_1293:
	xor	eax, eax
	mov	cl, al
	mov	rdx, qword ptr [rbp - 0x18]
	cmp	rdx, qword ptr [rbp - 8]
	mov	byte ptr [rbp - 0x19], cl
	jae	.label_1295
	mov	rax, qword ptr [rbp - 8]
	xor	ecx, ecx
	mov	edx, ecx
	div	qword ptr [rbp - 0x10]
	cmp	rdx, 0
	setne	sil
	mov	byte ptr [rbp - 0x19], sil
.label_1295:
	mov	al, byte ptr [rbp - 0x19]
	test	al, 1
	jne	.label_1294
	jmp	.label_1292
.label_1294:
	mov	rax, qword ptr [rbp - 0x10]
	add	rax, 1
	mov	qword ptr [rbp - 0x10], rax
	mov	rax, qword ptr [rbp - 0x10]
	shl	rax, 2
	add	rax, qword ptr [rbp - 0x18]
	mov	qword ptr [rbp - 0x18], rax
	mov	rax, qword ptr [rbp - 0x10]
	add	rax, 1
	mov	qword ptr [rbp - 0x10], rax
	jmp	.label_1293
.label_1292:
	xor	eax, eax
	mov	ecx, 1
	mov	rdx, qword ptr [rbp - 8]
	mov	dword ptr [rbp - 0x20], eax
	mov	rax, rdx
	xor	esi, esi
	mov	edx, esi
	div	qword ptr [rbp - 0x10]
	cmp	rdx, 0
	mov	esi, dword ptr [rbp - 0x20]
	cmovne	esi, ecx
	cmp	esi, 0
	setne	dil
	and	dil, 1
	movzx	ecx, dil
	mov	eax, ecx
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40ecfd
	.globl sub_40ecfd
	.type sub_40ecfd, @function
sub_40ecfd:

	nop	dword ptr [rax]
.label_1297:
	movabs	rdi, OFFSET FLAT:color_indicator
	call	put_indicator
	movabs	rdi, OFFSET FLAT:color_indicator
	add	rdi, 0x30
	call	put_indicator
	movabs	rdi, OFFSET FLAT:color_indicator
	add	rdi, 0x10
	call	put_indicator
.label_1298:
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40ed37
	.globl sub_40ed37
	.type sub_40ed37, @function
sub_40ed37:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40ed42

	.globl prep_non_filename_text
	.type prep_non_filename_text, @function
prep_non_filename_text:
	push	rbp
	mov	rbp, rsp
	cmp	qword ptr [word ptr [label_1296]],  0
	je	.label_1297
	movabs	rax, OFFSET FLAT:color_indicator
	add	rax, 0x20
	mov	rdi, rax
	call	put_indicator
	jmp	.label_1298
	.section	.text
	.align	32
	#Procedure 0x40ed70

	.globl bkm_scale
	.type bkm_scale, @function
bkm_scale:
	push	rbp
	mov	rbp, rsp
	mov	rax, -1
	mov	qword ptr [rbp - 0x10], rdi
	mov	dword ptr [rbp - 0x14], esi
	movsxd	rdi, dword ptr [rbp - 0x14]
	xor	esi, esi
	mov	edx, esi
	div	rdi
	mov	rdi, qword ptr [rbp - 0x10]
	cmp	rax, qword ptr [rdi]
	jae	.label_1299
	mov	rax, qword ptr [rbp - 0x10]
	mov	qword ptr [rax], -1
	mov	dword ptr [rbp - 4], 1
	jmp	.label_1300
.label_1299:
	movsxd	rax, dword ptr [rbp - 0x14]
	mov	rcx, qword ptr [rbp - 0x10]
	imul	rax, qword ptr [rcx]
	mov	qword ptr [rcx], rax
	mov	dword ptr [rbp - 4], 0
.label_1300:
	mov	eax, dword ptr [rbp - 4]
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40edcc
	.globl sub_40edcc
	.type sub_40edcc, @function
sub_40edcc:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x40edd0

	.globl rev_xstrcoll_extension
	.type rev_xstrcoll_extension, @function
rev_xstrcoll_extension:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	movabs	rdx, OFFSET FLAT:xstrcoll
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	rsi, qword ptr [rbp - 0x10]
	mov	rdi, qword ptr [rbp - 8]
	mov	qword ptr [rbp - 0x18], rdi
	mov	rdi, rsi
	mov	rsi, qword ptr [rbp - 0x18]
	call	cmp_extension
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40ee08
	.globl sub_40ee08
	.type sub_40ee08, @function
sub_40ee08:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40ee10

	.globl xstrcoll_df_size
	.type xstrcoll_df_size, @function
xstrcoll_df_size:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 0x18], rsi
	mov	rax, qword ptr [rbp - 0x10]
	mov	rdi, rax
	call	is_linked_directory
	and	al, 1
	mov	byte ptr [rbp - 0x19], al
	mov	rdi, qword ptr [rbp - 0x18]
	call	is_linked_directory
	and	al, 1
	mov	byte ptr [rbp - 0x1a], al
	test	byte ptr [rbp - 0x19], 1
	je	.label_1303
	test	byte ptr [rbp - 0x1a], 1
	jne	.label_1303
	mov	dword ptr [rbp - 4], 0xffffffff
	jmp	.label_1302
.label_1303:
	test	byte ptr [rbp - 0x19], 1
	jne	.label_1301
	test	byte ptr [rbp - 0x1a], 1
	je	.label_1301
	mov	dword ptr [rbp - 4], 1
	jmp	.label_1302
.label_1301:
	jmp	.label_1304
.label_1304:
	movabs	rdx, OFFSET FLAT:xstrcoll
	mov	rax, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	rdi, rax
	mov	rsi, rcx
	call	cmp_size
	mov	dword ptr [rbp - 4], eax
.label_1302:
	mov	eax, dword ptr [rbp - 4]
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40eead
	.globl sub_40eead
	.type sub_40eead, @function
sub_40eead:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x40eeb0

	.globl strcmp_size
	.type strcmp_size, @function
strcmp_size:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	movabs	rdx, OFFSET FLAT:strcmp
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	rsi, qword ptr [rbp - 8]
	mov	rdi, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 0x18], rdi
	mov	rdi, rsi
	mov	rsi, qword ptr [rbp - 0x18]
	call	cmp_size
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40eee8
	.globl sub_40eee8
	.type sub_40eee8, @function
sub_40eee8:

	nop	dword ptr [rax + rax]
.label_1305:
	mov	rax, qword ptr [rbp - 8]
	mov	byte ptr [rax], 0
	mov	rax, qword ptr [rbp - 8]
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40eefd
	.globl sub_40eefd
	.type sub_40eefd, @function
sub_40eefd:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40ef0b

	.globl mbs_align_pad
	.type mbs_align_pad, @function
mbs_align_pad:
	push	rbp
	mov	rbp, rsp
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	qword ptr [rbp - 0x18], rdx
.label_1306:
	xor	eax, eax
	mov	cl, al
	mov	rdx, qword ptr [rbp - 0x18]
	mov	rsi, rdx
	add	rsi, -1
	mov	qword ptr [rbp - 0x18], rsi
	cmp	rdx, 0
	mov	byte ptr [rbp - 0x19], cl
	je	.label_1308
	mov	rax, qword ptr [rbp - 8]
	cmp	rax, qword ptr [rbp - 0x10]
	setb	cl
	mov	byte ptr [rbp - 0x19], cl
.label_1308:
	mov	al, byte ptr [rbp - 0x19]
	test	al, 1
	jne	.label_1307
	jmp	.label_1305
.label_1307:
	mov	rax, qword ptr [rbp - 8]
	mov	rcx, rax
	add	rcx, 1
	mov	qword ptr [rbp - 8], rcx
	mov	byte ptr [rax], 0x20
	jmp	.label_1306
	.section	.text
	.align	32
	#Procedure 0x40ef70

	.globl xstrcoll_extension
	.type xstrcoll_extension, @function
xstrcoll_extension:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	movabs	rdx, OFFSET FLAT:xstrcoll
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	rsi, qword ptr [rbp - 8]
	mov	rdi, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 0x18], rdi
	mov	rdi, rsi
	mov	rsi, qword ptr [rbp - 0x18]
	call	cmp_extension
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40efa8
	.globl sub_40efa8
	.type sub_40efa8, @function
sub_40efa8:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40efb0
	.globl string_to_security_class
	.type string_to_security_class, @function
string_to_security_class:

	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	mov	qword ptr [rbp - 8], rdi
	call	__errno_location
	xor	ecx, ecx
	mov	dx, cx
	mov	dword ptr [rax], 0x5f
	movzx	eax, dx
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40efd5
	.globl sub_40efd5
	.type sub_40efd5, @function
sub_40efd5:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40efe0

	.globl file_failure
	.type file_failure, @function
file_failure:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x30
	mov	al, dil
	and	al, 1
	mov	byte ptr [rbp - 1], al
	mov	qword ptr [rbp - 0x10], rsi
	mov	qword ptr [rbp - 0x18], rdx
	call	__errno_location
	mov	edi, 4
	mov	esi, dword ptr [rax]
	mov	rdx, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rbp - 0x18]
	mov	dword ptr [rbp - 0x1c], esi
	mov	rsi, rax
	mov	qword ptr [rbp - 0x28], rdx
	call	quotearg_style
	xor	edi, edi
	mov	esi, dword ptr [rbp - 0x1c]
	mov	rdx, qword ptr [rbp - 0x28]
	mov	rcx, rax
	mov	al, 0
	call	error
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	edi, al
	call	set_exit_status
	add	rsp, 0x30
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40f041
	.globl sub_40f041
	.type sub_40f041, @function
sub_40f041:

	nop	word ptr cs:[rax + rax]
.label_1309:
	mov	edi, dword ptr [rbp - 4]
	call	getgroup
	mov	qword ptr [rbp - 0x10], rax
.label_1310:
	mov	rax, qword ptr [rbp - 0x10]
	mov	ecx, dword ptr [rbp - 4]
	mov	esi, ecx
	mov	rdi, rax
	call	format_user_or_group_width
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40f073
	.globl sub_40f073
	.type sub_40f073, @function
sub_40f073:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x40f07a

	.globl format_group_width
	.type format_group_width, @function
format_group_width:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	mov	dword ptr [rbp - 4], edi
	test	byte ptr [byte ptr [numeric_ids]],  1
	je	.label_1309
	xor	eax, eax
	mov	ecx, eax
	mov	qword ptr [rbp - 0x10], rcx
	jmp	.label_1310
	.section	.text
	.align	32
	#Procedure 0x40f0a0

	.globl rev_strcmp_extension
	.type rev_strcmp_extension, @function
rev_strcmp_extension:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	movabs	rdx, OFFSET FLAT:strcmp
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	rsi, qword ptr [rbp - 0x10]
	mov	rdi, qword ptr [rbp - 8]
	mov	qword ptr [rbp - 0x18], rdi
	mov	rdi, rsi
	mov	rsi, qword ptr [rbp - 0x18]
	call	cmp_extension
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40f0d8
	.globl sub_40f0d8
	.type sub_40f0d8, @function
sub_40f0d8:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40f0e0

	.globl strcmp_df_size
	.type strcmp_df_size, @function
strcmp_df_size:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 0x18], rsi
	mov	rax, qword ptr [rbp - 0x10]
	mov	rdi, rax
	call	is_linked_directory
	and	al, 1
	mov	byte ptr [rbp - 0x19], al
	mov	rdi, qword ptr [rbp - 0x18]
	call	is_linked_directory
	and	al, 1
	mov	byte ptr [rbp - 0x1a], al
	test	byte ptr [rbp - 0x19], 1
	je	.label_1313
	test	byte ptr [rbp - 0x1a], 1
	jne	.label_1313
	mov	dword ptr [rbp - 4], 0xffffffff
	jmp	.label_1312
.label_1311:
	jmp	.label_1314
.label_1314:
	movabs	rdx, OFFSET FLAT:strcmp
	mov	rax, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	rdi, rax
	mov	rsi, rcx
	call	cmp_size
	mov	dword ptr [rbp - 4], eax
.label_1312:
	mov	eax, dword ptr [rbp - 4]
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40f15d
	.globl sub_40f15d
	.type sub_40f15d, @function
sub_40f15d:

	nop	dword ptr [rax]
.label_1313:
	test	byte ptr [rbp - 0x19], 1
	jne	.label_1311
	test	byte ptr [rbp - 0x1a], 1
	je	.label_1311
	mov	dword ptr [rbp - 4], 1
	jmp	.label_1312
	.section	.text
	.align	32
	#Procedure 0x40f180
	.globl quotearg_alloc
	.type quotearg_alloc, @function
quotearg_alloc:

	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	xor	eax, eax
	mov	ecx, eax
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	qword ptr [rbp - 0x18], rdx
	mov	rdi, qword ptr [rbp - 8]
	mov	rsi, qword ptr [rbp - 0x10]
	mov	rdx, qword ptr [rbp - 0x18]
	mov	qword ptr [rbp - 0x20], rdx
	mov	rdx, rcx
	mov	rcx, qword ptr [rbp - 0x20]
	call	quotearg_alloc_mem
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40f1ba
	.globl sub_40f1ba
	.type sub_40f1ba, @function
sub_40f1ba:

	nop	word ptr [rax + rax]
.label_1324:
	mov	eax,  dword ptr [dword ptr [inode_number_width]]
	mov	dword ptr [rbp - 0x2ac], eax
.label_1326:
	mov	eax, dword ptr [rbp - 0x2ac]
	mov	ecx, 0x28c
	mov	esi, ecx
	lea	rdi, [rbp - 0x2a0]
	mov	rdx, qword ptr [rbp - 8]
	mov	dword ptr [rbp - 0x2b0], eax
	call	format_inode
	movabs	rdi, OFFSET FLAT:label_707
	mov	esi, dword ptr [rbp - 0x2b0]
	mov	rdx, rax
	mov	al, 0
	call	printf
	mov	dword ptr [rbp - 0x2b4], eax
.label_1325:
	test	byte ptr [byte ptr [print_block_size]],  1
	je	.label_1317
	cmp	dword ptr [dword ptr [format]],  4
	jne	.label_1319
	xor	eax, eax
	mov	dword ptr [rbp - 0x2b8], eax
	jmp	.label_1322
.label_1319:
	mov	eax,  dword ptr [dword ptr [block_size_width]]
	mov	dword ptr [rbp - 0x2b8], eax
.label_1322:
	mov	eax, dword ptr [rbp - 0x2b8]
	mov	rcx, qword ptr [rbp - 8]
	test	byte ptr [rcx + 0xb8], 1
	mov	dword ptr [rbp - 0x2bc], eax
	jne	.label_1316
	movabs	rax, OFFSET FLAT:label_684
	mov	qword ptr [rbp - 0x2c8], rax
	jmp	.label_1321
.label_1316:
	mov	eax, 0x200
	mov	ecx, eax
	lea	rsi, [rbp - 0x2a0]
	mov	rdx, qword ptr [rbp - 8]
	mov	rdi, qword ptr [rdx + 0x58]
	mov	edx,  dword ptr [dword ptr [human_output_opts]]
	mov	r8,  qword ptr [word ptr [output_block_size]]
	call	human_readable
	mov	qword ptr [rbp - 0x2c8], rax
.label_1321:
	mov	rax, qword ptr [rbp - 0x2c8]
	movabs	rdi, OFFSET FLAT:label_707
	mov	esi, dword ptr [rbp - 0x2bc]
	mov	rdx, rax
	mov	al, 0
	call	printf
	mov	dword ptr [rbp - 0x2cc], eax
.label_1317:
	test	byte ptr [byte ptr [print_scontext]],  1
	je	.label_1318
	cmp	dword ptr [dword ptr [format]],  4
	jne	.label_1320
	xor	eax, eax
	mov	dword ptr [rbp - 0x2d0], eax
	jmp	.label_1323
	.section	.text
	.align	32
	#Procedure 0x40f2fa

	.globl print_file_name_and_frills
	.type print_file_name_and_frills, @function
print_file_name_and_frills:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x2e0
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	call	set_normal_color
	test	byte ptr [byte ptr [print_inode]],  1
	je	.label_1325
	cmp	dword ptr [dword ptr [format]],  4
	jne	.label_1324
	xor	eax, eax
	mov	dword ptr [rbp - 0x2ac], eax
	jmp	.label_1326
.label_1320:
	mov	eax,  dword ptr [dword ptr [scontext_width]]
	mov	dword ptr [rbp - 0x2d0], eax
.label_1323:
	mov	eax, dword ptr [rbp - 0x2d0]
	movabs	rdi, OFFSET FLAT:label_707
	mov	rcx, qword ptr [rbp - 8]
	mov	rdx, qword ptr [rcx + 0xb0]
	mov	esi, eax
	mov	al, 0
	call	printf
	mov	dword ptr [rbp - 0x2d4], eax
.label_1318:
	xor	esi, esi
	xor	eax, eax
	mov	edx, eax
	mov	rdi, qword ptr [rbp - 8]
	mov	rcx, qword ptr [rbp - 0x10]
	call	print_name_with_quoting
	mov	qword ptr [rbp - 0x2a8], rax
	cmp	dword ptr [dword ptr [indicator_style]],  0
	je	.label_1315
	mov	rax, qword ptr [rbp - 8]
	mov	cl, byte ptr [rax + 0xb8]
	mov	rax, qword ptr [rbp - 8]
	mov	esi, dword ptr [rax + 0x30]
	mov	rax, qword ptr [rbp - 8]
	mov	edx, dword ptr [rax + 0xa8]
	and	cl, 1
	movzx	edi, cl
	call	print_type_indicator
	and	al, 1
	movzx	edx, al
	mov	r8d, edx
	add	r8, qword ptr [rbp - 0x2a8]
	mov	qword ptr [rbp - 0x2a8], r8
.label_1315:
	mov	rax, qword ptr [rbp - 0x2a8]
	add	rsp, 0x2e0
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40f3e6
	.globl sub_40f3e6
	.type sub_40f3e6, @function
sub_40f3e6:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40f3f0

	.globl gnu_mbswidth
	.type gnu_mbswidth, @function
gnu_mbswidth:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	mov	qword ptr [rbp - 8], rdi
	mov	dword ptr [rbp - 0xc], esi
	mov	rdi, qword ptr [rbp - 8]
	mov	rax, qword ptr [rbp - 8]
	mov	qword ptr [rbp - 0x18], rdi
	mov	rdi, rax
	call	strlen
	mov	edx, dword ptr [rbp - 0xc]
	mov	rdi, qword ptr [rbp - 0x18]
	mov	rsi, rax
	call	mbsnwidth
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40f428
	.globl sub_40f428
	.type sub_40f428, @function
sub_40f428:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40f430

	.globl set_tz
	.type set_tz, @function
set_tz:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x30
	mov	qword ptr [rbp - 0x10], rdi
	call	getenv_TZ
	mov	qword ptr [rbp - 0x18], rax
	cmp	qword ptr [rbp - 0x18], 0
	je	.label_1327
	mov	rax, qword ptr [rbp - 0x10]
	movsx	ecx, byte ptr [rax + 8]
	cmp	ecx, 0
	je	.label_1329
	mov	rax, qword ptr [rbp - 0x10]
	add	rax, 9
	mov	rsi, qword ptr [rbp - 0x18]
	mov	rdi, rax
	call	strcmp
	cmp	eax, 0
	je	.label_1331
	jmp	.label_1329
.label_1329:
	mov	rdi, qword ptr [rbp - 0x18]
	call	tzalloc
	mov	qword ptr [rbp - 0x20], rax
	cmp	qword ptr [rbp - 0x20], 0
	jne	.label_1330
	mov	rax, qword ptr [rbp - 0x20]
	mov	qword ptr [rbp - 8], rax
	jmp	.label_1328
.label_1327:
	mov	rax, qword ptr [rbp - 0x10]
	cmp	byte ptr [rax + 8], 0
	jne	.label_1329
.label_1331:
	mov	rax,  qword ptr [word ptr [local_tz]]
	mov	qword ptr [rbp - 8], rax
	jmp	.label_1328
.label_1330:
	mov	rdi, qword ptr [rbp - 0x10]
	call	change_env
	test	al, 1
	jne	.label_1332
	call	__errno_location
	mov	ecx, dword ptr [rax]
	mov	dword ptr [rbp - 0x24], ecx
	mov	rdi, qword ptr [rbp - 0x20]
	call	tzfree
	mov	ecx, dword ptr [rbp - 0x24]
	mov	dword ptr [rbp - 0x28], ecx
	call	__errno_location
	mov	ecx, dword ptr [rbp - 0x28]
	mov	dword ptr [rax], ecx
	mov	qword ptr [rbp - 8], 0
	jmp	.label_1328
.label_1332:
	mov	rax, qword ptr [rbp - 0x20]
	mov	qword ptr [rbp - 8], rax
.label_1328:
	mov	rax, qword ptr [rbp - 8]
	add	rsp, 0x30
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40f51a
	.globl sub_40f51a
	.type sub_40f51a, @function
sub_40f51a:

	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40f520

	.globl xstrtol_fatal
	.type xstrtol_fatal, @function
xstrtol_fatal:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	mov	al, dl
	mov	dword ptr [rbp - 4], edi
	mov	dword ptr [rbp - 8], esi
	mov	byte ptr [rbp - 9], al
	mov	qword ptr [rbp - 0x18], rcx
	mov	qword ptr [rbp - 0x20], r8
	mov	edi, dword ptr [rbp - 4]
	mov	esi, dword ptr [rbp - 8]
	mov	al, byte ptr [rbp - 9]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	r8, qword ptr [rbp - 0x20]
	mov	r9d,  dword ptr [dword ptr [exit_failure]]
	movsx	edx, al
	call	xstrtol_error
	call	abort
	.section	.text
	.align	32
	#Procedure 0x40f561
	.globl sub_40f561
	.type sub_40f561, @function
sub_40f561:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40f570

	.globl cmp_ctime
	.type cmp_ctime, @function
cmp_ctime:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x50
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	qword ptr [rbp - 0x18], rdx
	mov	rdx, qword ptr [rbp - 0x10]
	add	rdx, 0x18
	mov	rdi, rdx
	call	get_stat_ctime
	mov	qword ptr [rbp - 0x30], rax
	mov	qword ptr [rbp - 0x28], rdx
	mov	rax, qword ptr [rbp - 8]
	add	rax, 0x18
	mov	rdi, rax
	call	get_stat_ctime
	mov	qword ptr [rbp - 0x40], rax
	mov	qword ptr [rbp - 0x38], rdx
	mov	rdi, qword ptr [rbp - 0x30]
	mov	rsi, qword ptr [rbp - 0x28]
	mov	rdx, qword ptr [rbp - 0x40]
	mov	rcx, qword ptr [rbp - 0x38]
	call	timespec_cmp
	mov	dword ptr [rbp - 0x1c], eax
	cmp	dword ptr [rbp - 0x1c], 0
	je	.label_1334
	mov	eax, dword ptr [rbp - 0x1c]
	mov	dword ptr [rbp - 0x44], eax
	jmp	.label_1333
.label_1334:
	mov	rax, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rbp - 8]
	mov	rdi, qword ptr [rcx]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rcx]
	call	rax
	mov	dword ptr [rbp - 0x44], eax
.label_1333:
	mov	eax, dword ptr [rbp - 0x44]
	add	rsp, 0x50
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40f601
	.globl sub_40f601
	.type sub_40f601, @function
sub_40f601:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40f610

	.globl tzalloc
	.type tzalloc, @function
tzalloc:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x30
	mov	qword ptr [rbp - 8], rdi
	cmp	qword ptr [rbp - 8], 0
	je	.label_1338
	mov	rdi, qword ptr [rbp - 8]
	call	strlen
	add	rax, 1
	mov	qword ptr [rbp - 0x28], rax
	jmp	.label_1335
.label_1337:
	mov	rax, qword ptr [rbp - 0x10]
	add	rax, 1
	mov	qword ptr [rbp - 0x30], rax
.label_1340:
	mov	rax, qword ptr [rbp - 0x30]
	mov	qword ptr [rbp - 0x18], rax
	mov	rax, qword ptr [rbp - 0x18]
	add	rax, 0x10
	and	rax, 0xfffffffffffffff8
	mov	rdi, rax
	call	malloc
	mov	qword ptr [rbp - 0x20], rax
	cmp	qword ptr [rbp - 0x20], 0
	je	.label_1336
	mov	rax, qword ptr [rbp - 0x20]
	mov	qword ptr [rax], 0
	cmp	qword ptr [rbp - 8], 0
	setne	cl
	xor	cl, 0xff
	xor	cl, 0xff
	and	cl, 1
	movzx	edx, cl
	mov	cl, dl
	mov	rax, qword ptr [rbp - 0x20]
	mov	byte ptr [rax + 8], cl
	mov	rax, qword ptr [rbp - 0x20]
	mov	byte ptr [rax + 9], 0
	cmp	qword ptr [rbp - 8], 0
	je	.label_1339
	mov	rax, qword ptr [rbp - 0x20]
	add	rax, 9
	mov	rsi, qword ptr [rbp - 8]
	mov	rdx, qword ptr [rbp - 0x10]
	mov	rdi, rax
	call	extend_abbrs
.label_1339:
	jmp	.label_1336
.label_1336:
	mov	rax, qword ptr [rbp - 0x20]
	add	rsp, 0x30
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40f6d6
	.globl sub_40f6d6
	.type sub_40f6d6, @function
sub_40f6d6:

	nop	word ptr cs:[rax + rax]
.label_1338:
	xor	eax, eax
	mov	ecx, eax
	mov	qword ptr [rbp - 0x28], rcx
	jmp	.label_1335
.label_1335:
	mov	rax, qword ptr [rbp - 0x28]
	mov	qword ptr [rbp - 0x10], rax
	cmp	qword ptr [rbp - 0x10], 0x77
	jae	.label_1337
	mov	eax, 0x77
	mov	ecx, eax
	mov	qword ptr [rbp - 0x30], rcx
	jmp	.label_1340
	.section	.text
	.align	32
	#Procedure 0x40f710

	.globl put_indicator
	.type put_indicator, @function
put_indicator:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	mov	qword ptr [rbp - 8], rdi
	test	byte ptr [byte ptr [used_color]],  1
	jne	.label_1341
	mov	edi, 1
	mov	byte ptr [byte ptr [used_color]],  1
	call	tcgetpgrp
	xor	edi, edi
	cmp	edi, eax
	jg	.label_1342
	call	signal_init
.label_1342:
	call	prep_non_filename_text
.label_1341:
	mov	eax, 1
	mov	edx, eax
	mov	rcx, qword ptr [rbp - 8]
	mov	rdi, qword ptr [rcx + 8]
	mov	rcx, qword ptr [rbp - 8]
	mov	rsi, qword ptr [rcx]
	mov	rcx,  qword ptr [word ptr [stdout]]
	call	fwrite_unlocked
	mov	qword ptr [rbp - 0x10], rax
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40f77d
	.globl sub_40f77d
	.type sub_40f77d, @function
sub_40f77d:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x40f780

	.globl unsigned_file_size
	.type unsigned_file_size, @function
unsigned_file_size:
	push	rbp
	mov	rbp, rsp
	mov	qword ptr [rbp - 8], rdi
	mov	rdi, qword ptr [rbp - 8]
	cmp	qword ptr [rbp - 8], 0
	setl	al
	and	al, 1
	movzx	ecx, al
	movsxd	rdx, ecx
	imul	rdx, rdx, 0
	add	rdi, rdx
	mov	rax, rdi
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40f7a8
	.globl sub_40f7a8
	.type sub_40f7a8, @function
sub_40f7a8:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40f7b0

	.globl rpl_mbrtowc
	.type rpl_mbrtowc, @function
rpl_mbrtowc:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x40
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 0x18], rsi
	mov	qword ptr [rbp - 0x20], rdx
	mov	qword ptr [rbp - 0x28], rcx
	cmp	qword ptr [rbp - 0x10], 0
	jne	.label_1343
	lea	rax, [rbp - 0x34]
	mov	qword ptr [rbp - 0x10], rax
.label_1343:
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rbp - 0x18]
	mov	rdx, qword ptr [rbp - 0x20]
	mov	rcx, qword ptr [rbp - 0x28]
	call	mbrtowc
	mov	rcx, -2
	mov	qword ptr [rbp - 0x30], rax
	cmp	rcx, qword ptr [rbp - 0x30]
	ja	.label_1344
	cmp	qword ptr [rbp - 0x20], 0
	je	.label_1344
	xor	edi, edi
	call	hard_locale
	test	al, 1
	jne	.label_1344
	mov	rax, qword ptr [rbp - 0x18]
	mov	cl, byte ptr [rax]
	mov	byte ptr [rbp - 0x35], cl
	movzx	edx, byte ptr [rbp - 0x35]
	mov	rax, qword ptr [rbp - 0x10]
	mov	dword ptr [rax], edx
	mov	qword ptr [rbp - 8], 1
	jmp	.label_1345
.label_1344:
	mov	rax, qword ptr [rbp - 0x30]
	mov	qword ptr [rbp - 8], rax
.label_1345:
	mov	rax, qword ptr [rbp - 8]
	add	rsp, 0x40
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40f851
	.globl sub_40f851
	.type sub_40f851, @function
sub_40f851:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40f860

	.globl getenv_quoting_style
	.type getenv_quoting_style, @function
getenv_quoting_style:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	movabs	rdi, OFFSET FLAT:label_1346
	call	getenv
	mov	qword ptr [rbp - 8], rax
	cmp	qword ptr [rbp - 8], 0
	je	.label_1347
	movabs	rsi, OFFSET FLAT:quoting_style_args
	movabs	rax, OFFSET FLAT:quoting_style_vals
	mov	ecx, 4
	mov	rdi, qword ptr [rbp - 8]
	mov	rdx, rax
	call	argmatch
	xor	r8d, r8d
	mov	r9d, eax
	mov	dword ptr [rbp - 0xc], r9d
	cmp	r8d, dword ptr [rbp - 0xc]
	jg	.label_1350
	xor	eax, eax
	mov	edi, eax
	movsxd	rcx, dword ptr [rbp - 0xc]
	mov	esi,  dword ptr [dword ptr [+ (rcx * 4) + quoting_style_vals]]
	call	set_quoting_style
	jmp	.label_1348
.label_1350:
	movabs	rdi, OFFSET FLAT:label_1349
	call	gettext
	mov	rdi, qword ptr [rbp - 8]
	mov	qword ptr [rbp - 0x18], rax
	call	quote
	xor	ecx, ecx
	mov	edi, ecx
	mov	esi, ecx
	mov	rdx, qword ptr [rbp - 0x18]
	mov	rcx, rax
	mov	al, 0
	call	error
.label_1348:
	jmp	.label_1347
.label_1347:
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40f913
	.globl sub_40f913
	.type sub_40f913, @function
sub_40f913:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40f920

	.globl align_nstrftime
	.type align_nstrftime, @function
align_nstrftime:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x40
	mov	al, dl
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	and	al, 1
	mov	byte ptr [rbp - 0x11], al
	mov	qword ptr [rbp - 0x20], rcx
	mov	qword ptr [rbp - 0x28], r8
	mov	dword ptr [rbp - 0x2c], r9d
	test	byte ptr [byte ptr [use_abformat]],  1
	je	.label_1351
	movabs	rax, OFFSET FLAT:abformat
	mov	rcx, qword ptr [rbp - 0x20]
	movsxd	rcx, dword ptr [rcx + 0x10]
	mov	dl, byte ptr [rbp - 0x11]
	and	dl, 1
	movzx	esi, dl
	mov	edi, esi
	imul	rdi, rdi, 0x600
	add	rax, rdi
	shl	rcx, 7
	add	rax, rcx
	mov	qword ptr [rbp - 0x40], rax
	jmp	.label_1352
.label_1351:
	mov	al, byte ptr [rbp - 0x11]
	and	al, 1
	movzx	ecx, al
	mov	edx, ecx
	mov	rdx,  qword ptr [word ptr [+ (rdx * 8) + long_time_format]]
	mov	qword ptr [rbp - 0x40], rdx
.label_1352:
	mov	rax, qword ptr [rbp - 0x40]
	mov	qword ptr [rbp - 0x38], rax
	mov	rdi, qword ptr [rbp - 8]
	mov	rsi, qword ptr [rbp - 0x10]
	mov	rdx, qword ptr [rbp - 0x38]
	mov	rcx, qword ptr [rbp - 0x20]
	mov	r8, qword ptr [rbp - 0x28]
	mov	r9d, dword ptr [rbp - 0x2c]
	call	nstrftime
	add	rsp, 0x40
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40f9c9
	.globl sub_40f9c9
	.type sub_40f9c9, @function
sub_40f9c9:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x40f9d0

	.globl __xargmatch_internal
	.type __xargmatch_internal, @function
__xargmatch_internal:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x40
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 0x18], rsi
	mov	qword ptr [rbp - 0x20], rdx
	mov	qword ptr [rbp - 0x28], rcx
	mov	qword ptr [rbp - 0x30], r8
	mov	qword ptr [rbp - 0x38], r9
	mov	rdi, qword ptr [rbp - 0x18]
	mov	rsi, qword ptr [rbp - 0x20]
	mov	rdx, qword ptr [rbp - 0x28]
	mov	rcx, qword ptr [rbp - 0x30]
	call	argmatch
	mov	qword ptr [rbp - 0x40], rax
	cmp	qword ptr [rbp - 0x40], 0
	jl	.label_1354
	mov	rax, qword ptr [rbp - 0x40]
	mov	qword ptr [rbp - 8], rax
	jmp	.label_1353
.label_1354:
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rbp - 0x18]
	mov	rdx, qword ptr [rbp - 0x40]
	call	argmatch_invalid
	mov	rdi, qword ptr [rbp - 0x20]
	mov	rsi, qword ptr [rbp - 0x28]
	mov	rdx, qword ptr [rbp - 0x30]
	call	argmatch_valid
	call	qword ptr [rbp - 0x38]
	mov	qword ptr [rbp - 8], -1
.label_1353:
	mov	rax, qword ptr [rbp - 8]
	add	rsp, 0x40
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40fa58
	.globl sub_40fa58
	.type sub_40fa58, @function
sub_40fa58:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40fa60

	.globl has_capability
	.type has_capability, @function
has_capability:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	mov	qword ptr [rbp - 8], rdi
	call	__errno_location
	xor	ecx, ecx
	mov	dl, cl
	mov	dword ptr [rax], 0x5f
	and	dl, 1
	movzx	eax, dl
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40fa87
	.globl sub_40fa87
	.type sub_40fa87, @function
sub_40fa87:

	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40fa90

	.globl signal_init
	.type signal_init, @function
signal_init:
	push	rbp
	mov	rbp, rsp
	mov	edi, 1
	call	signal_setup
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40faa0

	.globl is_directory
	.type is_directory, @function
is_directory:
	push	rbp
	mov	rbp, rsp
	mov	al, 1
	mov	qword ptr [rbp - 8], rdi
	mov	rdi, qword ptr [rbp - 8]
	cmp	dword ptr [rdi + 0xa8], 3
	mov	byte ptr [rbp - 9], al
	je	.label_1355
	mov	rax, qword ptr [rbp - 8]
	cmp	dword ptr [rax + 0xa8], 9
	sete	cl
	mov	byte ptr [rbp - 9], cl
.label_1355:
	mov	al, byte ptr [rbp - 9]
	and	al, 1
	movzx	eax, al
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40fad9
	.globl sub_40fad9
	.type sub_40fad9, @function
sub_40fad9:

	nop	dword ptr [rax]
.label_1359:
	jmp	.label_1356
.label_1356:
	mov	eax, 0xa
	mov	ecx, eax
	mov	rax, qword ptr [rbp - 8]
	cqo	
	idiv	rcx
	add	rdx, 0x30
	mov	sil, dl
	mov	rcx, qword ptr [rbp - 0x18]
	mov	rdx, rcx
	add	rdx, -1
	mov	qword ptr [rbp - 0x18], rdx
	mov	byte ptr [rcx - 1], sil
	mov	eax, 0xa
	mov	ecx, eax
	mov	rax, qword ptr [rbp - 8]
	cqo	
	idiv	rcx
	mov	qword ptr [rbp - 8], rax
	cmp	rax, 0
	jne	.label_1356
	jmp	.label_1357
.label_1357:
	mov	rax, qword ptr [rbp - 0x18]
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40fb38
	.globl sub_40fb38
	.type sub_40fb38, @function
sub_40fb38:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40fb43

	.globl imaxtostr
	.type imaxtostr, @function
imaxtostr:
	push	rbp
	mov	rbp, rsp
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	rsi, qword ptr [rbp - 0x10]
	add	rsi, 0x14
	mov	qword ptr [rbp - 0x18], rsi
	mov	rsi, qword ptr [rbp - 0x18]
	mov	byte ptr [rsi], 0
	cmp	qword ptr [rbp - 8], 0
	jge	.label_1359
	jmp	.label_1358
.label_1358:
	mov	eax, 0x30
	mov	ecx, eax
	mov	eax, 0xa
	mov	edx, eax
	mov	rax, qword ptr [rbp - 8]
	mov	qword ptr [rbp - 0x20], rdx
	cqo	
	mov	rsi, qword ptr [rbp - 0x20]
	idiv	rsi
	sub	rcx, rdx
	mov	dil, cl
	mov	rcx, qword ptr [rbp - 0x18]
	mov	rdx, rcx
	add	rdx, -1
	mov	qword ptr [rbp - 0x18], rdx
	mov	byte ptr [rcx - 1], dil
	mov	eax, 0xa
	mov	ecx, eax
	mov	rax, qword ptr [rbp - 8]
	cqo	
	idiv	rcx
	mov	qword ptr [rbp - 8], rax
	cmp	rax, 0
	jne	.label_1358
	mov	rax, qword ptr [rbp - 0x18]
	mov	rcx, rax
	add	rcx, -1
	mov	qword ptr [rbp - 0x18], rcx
	mov	byte ptr [rax - 1], 0x2d
	jmp	.label_1357
.label_1365:
	mov	rdi, qword ptr [rbp - 0x10]
	call	set_tz
	mov	qword ptr [rbp - 0x28], rax
	cmp	qword ptr [rbp - 0x28], 0
	je	.label_1363
	mov	rdi, qword ptr [rbp - 0x18]
	mov	rsi, qword ptr [rbp - 0x20]
	call	localtime_r
	xor	ecx, ecx
	mov	dl, cl
	cmp	rax, 0
	mov	byte ptr [rbp - 0x2a], dl
	je	.label_1361
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rbp - 0x20]
	call	save_abbr
	mov	byte ptr [rbp - 0x2a], al
.label_1361:
	mov	al, byte ptr [rbp - 0x2a]
	and	al, 1
	mov	byte ptr [rbp - 0x29], al
	mov	rdi, qword ptr [rbp - 0x28]
	call	revert_tz
	test	al, 1
	jne	.label_1364
	jmp	.label_1360
.label_1364:
	test	byte ptr [rbp - 0x29], 1
	je	.label_1360
	mov	rax, qword ptr [rbp - 0x20]
	mov	qword ptr [rbp - 8], rax
	jmp	.label_1362
.label_1360:
	jmp	.label_1363
.label_1363:
	mov	qword ptr [rbp - 8], 0
.label_1362:
	mov	rax, qword ptr [rbp - 8]
	add	rsp, 0x30
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40fc72
	.globl sub_40fc72
	.type sub_40fc72, @function
sub_40fc72:

	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40fc7b

	.globl localtime_rz
	.type localtime_rz, @function
localtime_rz:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x30
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 0x18], rsi
	mov	qword ptr [rbp - 0x20], rdx
	cmp	qword ptr [rbp - 0x10], 0
	jne	.label_1365
	mov	rdi, qword ptr [rbp - 0x18]
	mov	rsi, qword ptr [rbp - 0x20]
	call	gmtime_r
	mov	qword ptr [rbp - 8], rax
	jmp	.label_1362
	.section	.text
	.align	32
	#Procedure 0x40fcb0

	.globl xcharalloc
	.type xcharalloc, @function
xcharalloc:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	mov	qword ptr [rbp - 8], rdi
	mov	rdi, qword ptr [rbp - 8]
	call	xmalloc
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40fccb
	.globl sub_40fccb
	.type sub_40fccb, @function
sub_40fccb:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40fcd0

	.globl sort_files
	.type sort_files, @function
sort_files:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x40
	mov	rax,  qword ptr [word ptr [sorted_file_alloc]]
	mov	rcx,  qword ptr [word ptr [cwd_n_used]]
	mov	rdx,  qword ptr [word ptr [cwd_n_used]]
	shr	rdx, 1
	add	rcx, rdx
	cmp	rax, rcx
	jae	.label_1370
	mov	rax,  qword ptr [word ptr [sorted_file]]
	mov	rdi, rax
	call	free
	mov	ecx, 0x18
	mov	esi, ecx
	mov	rdi,  qword ptr [word ptr [cwd_n_used]]
	call	xnmalloc
	mov	qword ptr [word ptr [sorted_file]],  rax
	imul	rax,  qword ptr [word ptr [cwd_n_used]],  3
	mov	qword ptr [word ptr [sorted_file_alloc]],  rax
.label_1370:
	call	initialize_ordering_vector
	cmp	dword ptr [dword ptr [sort_type]],  -1
	jne	.label_1367
	jmp	.label_1371
.label_1369:
	xor	eax, eax
	mov	dword ptr [rbp - 0x38], eax
	jmp	.label_1374
.label_1374:
	mov	eax, dword ptr [rbp - 0x38]
	movabs	rcx, OFFSET FLAT:sort_functions
	mov	edx, dword ptr [rbp - 0x34]
	add	edx, eax
	mov	eax, edx
	mov	esi, eax
	shl	rsi, 6
	add	rcx, rsi
	mov	rsi, qword ptr [rbp - 0x30]
	shl	rsi, 5
	add	rcx, rsi
	mov	rsi, qword ptr [rbp - 0x28]
	shl	rsi, 4
	add	rcx, rsi
	mov	rsi, qword ptr [rbp - 0x20]
	mov	rdx, qword ptr [rcx + rsi*8]
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rbp - 0x18]
	call	mpsort
.label_1371:
	add	rsp, 0x40
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40fdad
	.globl sub_40fdad
	.type sub_40fdad, @function
sub_40fdad:

	nop	word ptr cs:[rax + rax]
.label_1367:
	movabs	rdi, OFFSET FLAT:failed_strcoll
	call	_setjmp
	cmp	eax, 0
	jne	.label_1368
	mov	byte ptr [rbp - 1], 0
	jmp	.label_1373
.label_1366:
	movabs	rdi, OFFSET FLAT:label_1375
	movabs	rsi, OFFSET FLAT:label_1282
	mov	edx, 0xeea
	movabs	rcx, OFFSET FLAT:label_1376
	call	__assert_fail
.label_1368:
	mov	byte ptr [rbp - 1], 1
	cmp	dword ptr [dword ptr [sort_type]],  3
	je	.label_1366
	jmp	.label_1372
.label_1372:
	call	initialize_ordering_vector
.label_1373:
	mov	rdi,  qword ptr [word ptr [sorted_file]]
	mov	rsi,  qword ptr [word ptr [cwd_n_used]]
	mov	al,  byte ptr [byte ptr [directories_first]]
	and	al, 1
	movzx	ecx, al
	mov	edx, ecx
	mov	al,  byte ptr [byte ptr [sort_reverse]]
	and	al, 1
	movzx	ecx, al
	mov	r8d, ecx
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	ecx, al
	mov	r9d, ecx
	mov	ecx,  dword ptr [dword ptr [sort_type]]
	cmp	dword ptr [dword ptr [sort_type]],  4
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 0x18], rsi
	mov	qword ptr [rbp - 0x20], rdx
	mov	qword ptr [rbp - 0x28], r8
	mov	qword ptr [rbp - 0x30], r9
	mov	dword ptr [rbp - 0x34], ecx
	jne	.label_1369
	mov	eax,  dword ptr [dword ptr [time_type]]
	mov	dword ptr [rbp - 0x38], eax
	jmp	.label_1374
	.section	.text
	.align	32
	#Procedure 0x40fe90
	.globl rotl16
	.type rotl16, @function
rotl16:

	push	rbp
	mov	rbp, rsp
	mov	ax, di
	mov	edi, 0x10
	mov	word ptr [rbp - 2], ax
	mov	dword ptr [rbp - 8], esi
	movzx	esi, word ptr [rbp - 2]
	mov	ecx, dword ptr [rbp - 8]
	shl	esi, cl
	movzx	edx, word ptr [rbp - 2]
	sub	edi, dword ptr [rbp - 8]
	mov	ecx, edi
	sar	edx, cl
	or	esi, edx
	and	esi, 0xffff
	mov	ax, si
	movzx	eax, ax
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40fec7
	.globl sub_40fec7
	.type sub_40fec7, @function
sub_40fec7:

	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40fed0

	.globl to_uchar
	.type to_uchar, @function
to_uchar:
	push	rbp
	mov	rbp, rsp
	mov	al, dil
	mov	byte ptr [rbp - 1], al
	movzx	eax, byte ptr [rbp - 1]
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40fee0
	.globl getfscreatecon
	.type getfscreatecon, @function
getfscreatecon:

	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	mov	qword ptr [rbp - 8], rdi
	call	__errno_location
	mov	ecx, 0xffffffff
	mov	dword ptr [rax], 0x5f
	mov	eax, ecx
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40ff04
	.globl sub_40ff04
	.type sub_40ff04, @function
sub_40ff04:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40ff10

	.globl basename_is_dot_or_dotdot
	.type basename_is_dot_or_dotdot, @function
basename_is_dot_or_dotdot:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	mov	qword ptr [rbp - 8], rdi
	mov	rdi, qword ptr [rbp - 8]
	call	last_component
	mov	qword ptr [rbp - 0x10], rax
	mov	rdi, qword ptr [rbp - 0x10]
	call	dot_or_dotdot
	and	al, 1
	movzx	eax, al
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40ff3d
	.globl sub_40ff3d
	.type sub_40ff3d, @function
sub_40ff3d:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x40ff40

	.globl format_user_or_group
	.type format_user_or_group, @function
format_user_or_group:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x40
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	dword ptr [rbp - 0x14], edx
	cmp	qword ptr [rbp - 8], 0
	je	.label_1377
	xor	esi, esi
	mov	eax, dword ptr [rbp - 0x14]
	mov	rdi, qword ptr [rbp - 8]
	mov	dword ptr [rbp - 0x2c], eax
	call	gnu_mbswidth
	xor	esi, esi
	mov	ecx, dword ptr [rbp - 0x2c]
	sub	ecx, eax
	mov	dword ptr [rbp - 0x24], ecx
	cmp	esi, dword ptr [rbp - 0x24]
	jle	.label_1382
	xor	eax, eax
	mov	dword ptr [rbp - 0x30], eax
	jmp	.label_1378
.label_1382:
	mov	eax, dword ptr [rbp - 0x24]
	mov	dword ptr [rbp - 0x30], eax
.label_1378:
	mov	eax, dword ptr [rbp - 0x30]
	mov	dword ptr [rbp - 0x28], eax
	mov	rdi, qword ptr [rbp - 8]
	mov	rsi,  qword ptr [word ptr [stdout]]
	call	fputs_unlocked
	mov	rdi, qword ptr [rbp - 8]
	mov	dword ptr [rbp - 0x34], eax
	call	strlen
	movsxd	rsi, dword ptr [rbp - 0x28]
	add	rax, rsi
	mov	qword ptr [rbp - 0x20], rax
.label_1381:
	mov	edi, 0x20
	call	putchar_unlocked
	mov	dword ptr [rbp - 0x38], eax
	mov	eax, dword ptr [rbp - 0x28]
	mov	ecx, eax
	add	ecx, -1
	mov	dword ptr [rbp - 0x28], ecx
	cmp	eax, 0
	jne	.label_1381
	jmp	.label_1380
.label_1377:
	movabs	rdi, OFFSET FLAT:label_1379
	mov	esi, dword ptr [rbp - 0x14]
	mov	rdx, qword ptr [rbp - 0x10]
	mov	al, 0
	call	printf
	movsxd	rdx, dword ptr [rbp - 0x14]
.label_3164:
	mov	qword ptr [rbp - 0x20], rdx
	mov	dword ptr [rbp - 0x3c], eax
.label_1380:
	mov	rax, qword ptr [rbp - 0x20]
	add	rax, 1
	add	rax,  qword ptr [word ptr [dired_pos]]
	mov	qword ptr [word ptr [dired_pos]],  rax
	add	rsp, 0x40
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x410027
	.globl sub_410027
	.type sub_410027, @function
sub_410027:

	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x410030

	.globl restore_default_color
	.type restore_default_color, @function
restore_default_color:
	push	rbp
	mov	rbp, rsp
	movabs	rdi, OFFSET FLAT:color_indicator
	call	put_indicator
	movabs	rdi, OFFSET FLAT:color_indicator
	add	rdi, 0x10
	call	put_indicator
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x410058
	.globl sub_410058
	.type sub_410058, @function
sub_410058:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x410060

	.globl extend_abbrs
	.type extend_abbrs, @function
extend_abbrs:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	qword ptr [rbp - 0x18], rdx
	mov	rdi, qword ptr [rbp - 8]
	mov	rsi, qword ptr [rbp - 0x10]
	mov	rdx, qword ptr [rbp - 0x18]
	call	memcpy
	mov	rdx, qword ptr [rbp - 0x18]
	mov	rsi, qword ptr [rbp - 8]
	mov	byte ptr [rsi + rdx], 0
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x410097
	.globl sub_410097
	.type sub_410097, @function
sub_410097:

	nop	word ptr [rax + rax]
.label_1384:
	jmp	.label_1383
.label_1383:
	movabs	rdx, OFFSET FLAT:xstrcoll
	mov	rax, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	rdi, rax
	mov	rsi, rcx
	call	cmp_ctime
	mov	dword ptr [rbp - 4], eax
.label_1385:
	mov	eax, dword ptr [rbp - 4]
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x4100ce
	.globl sub_4100ce
	.type sub_4100ce, @function
sub_4100ce:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x4100d1

	.globl xstrcoll_df_ctime
	.type xstrcoll_df_ctime, @function
xstrcoll_df_ctime:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 0x18], rsi
	mov	rax, qword ptr [rbp - 0x10]
	mov	rdi, rax
	call	is_linked_directory
	and	al, 1
	mov	byte ptr [rbp - 0x19], al
	mov	rdi, qword ptr [rbp - 0x18]
	call	is_linked_directory
	and	al, 1
	mov	byte ptr [rbp - 0x1a], al
	test	byte ptr [rbp - 0x19], 1
	je	.label_1386
	test	byte ptr [rbp - 0x1a], 1
	jne	.label_1386
	mov	dword ptr [rbp - 4], 0xffffffff
	jmp	.label_1385
.label_1386:
	test	byte ptr [rbp - 0x19], 1
	jne	.label_1384
	test	byte ptr [rbp - 0x1a], 1
	je	.label_1384
	mov	dword ptr [rbp - 4], 1
	jmp	.label_1385
	.section	.text
	.align	32
	#Procedure 0x410140

	.globl quote_name
	.type quote_name, @function
quote_name:
	push	rbp
	mov	rbp, rsp
	push	r15
	push	r14
	push	r12
	push	rbx
	sub	rsp, 0x20e0
	mov	al, r8b
	mov	r10, qword ptr [rbp + 0x10]
	lea	r11, [rbp - 0x2068]
	mov	r8d, 0x2000
	mov	ebx, r8d
	xor	r8d, r8d
	mov	r14d, r8d
	lea	r15, [rbp - 0x2071]
	lea	r12, [rbp - 0x2060]
	mov	qword ptr [rbp - 0x28], rdi
	mov	qword ptr [rbp - 0x30], rsi
	mov	dword ptr [rbp - 0x34], edx
	mov	qword ptr [rbp - 0x40], rcx
	and	al, 1
	mov	byte ptr [rbp - 0x41], al
	mov	qword ptr [rbp - 0x50], r9
	mov	qword ptr [rbp - 0x58], r10
	mov	qword ptr [rbp - 0x2068], r12
	mov	rdx, qword ptr [rbp - 0x28]
	mov	rcx, qword ptr [rbp - 0x30]
	mov	r8d, dword ptr [rbp - 0x34]
	mov	rdi, r11
	mov	rsi, rbx
	mov	r9, r14
	mov	qword ptr [rsp], r15
	call	quote_name_buf
	mov	qword ptr [rbp - 0x2070], rax
	test	byte ptr [rbp - 0x2071], 1
	je	.label_1399
	test	byte ptr [rbp - 0x41], 1
	je	.label_1399
	jmp	.label_1403
.label_1403:
	mov	edi, 0x20
	call	putchar_unlocked
	mov	rcx,  qword ptr [word ptr [dired_pos]]
	add	rcx, 1
	mov	qword ptr [word ptr [dired_pos]],  rcx
	mov	dword ptr [rbp - 0x20cc], eax
	jmp	.label_1399
.label_1399:
	cmp	qword ptr [rbp - 0x40], 0
	je	.label_1400
	mov	rdi, qword ptr [rbp - 0x40]
	call	print_color_indicator
	mov	byte ptr [rbp - 0x20cd], al
.label_1400:
	mov	byte ptr [rbp - 0x2072], 0
	cmp	qword ptr [rbp - 0x58], 0
	je	.label_1393
	test	byte ptr [byte ptr [align_variable_outer_quotes]],  1
	je	.label_1397
	test	byte ptr [byte ptr [cwd_some_quoted]],  1
	je	.label_1397
	test	byte ptr [rbp - 0x2071], 1
	jne	.label_1397
	mov	byte ptr [rbp - 0x2072], 1
	mov	rax, qword ptr [rbp - 0x2068]
	movsx	edi, byte ptr [rax]
	call	putchar_unlocked
	mov	dword ptr [rbp - 0x20d4], eax
.label_1397:
	xor	esi, esi
	mov	rdi,  qword ptr [word ptr [hostname]]
	call	file_escape
	mov	esi, 1
	mov	qword ptr [rbp - 0x2080], rax
	mov	rdi, qword ptr [rbp - 0x58]
	call	file_escape
	movabs	rdi, OFFSET FLAT:label_1390
	movabs	rcx, OFFSET FLAT:label_35
	movabs	rdx, OFFSET FLAT:label_662
	mov	qword ptr [rbp - 0x2088], rax
	mov	rsi, qword ptr [rbp - 0x2080]
	mov	rax, qword ptr [rbp - 0x2088]
	movsx	r8d, byte ptr [rax]
	cmp	r8d, 0x2f
	cmove	rcx, rdx
	mov	rax, qword ptr [rbp - 0x2088]
	mov	rdx, rcx
	mov	rcx, rax
	mov	al, 0
	call	printf
	mov	rdi, qword ptr [rbp - 0x2080]
	mov	dword ptr [rbp - 0x20d8], eax
	call	free
	mov	rdi, qword ptr [rbp - 0x2088]
	call	free
.label_1393:
	cmp	qword ptr [rbp - 0x50], 0
	je	.label_1387
	jmp	.label_1389
.label_1389:
	test	byte ptr [byte ptr [dired]],  1
	je	.label_1391
	mov	rax, qword ptr [rbp - 0x50]
	mov	qword ptr [rbp - 0x2090], rax
	mov	qword ptr [rbp - 0x2098], 8
	mov	rax, qword ptr [rbp - 0x2090]
	mov	qword ptr [rbp - 0x20a0], rax
	mov	rax, qword ptr [rbp - 0x20a0]
	mov	rax, qword ptr [rax + 0x20]
	mov	rcx, qword ptr [rbp - 0x20a0]
	mov	rcx, qword ptr [rcx + 0x18]
	sub	rax, rcx
	mov	qword ptr [rbp - 0x20a8], rax
	mov	rax, qword ptr [rbp - 0x20a8]
	cmp	rax, qword ptr [rbp - 0x2098]
	jae	.label_1395
	mov	rdi, qword ptr [rbp - 0x2090]
	mov	rsi, qword ptr [rbp - 0x2098]
	call	_obstack_newchunk
.label_1395:
	movabs	rax, OFFSET FLAT:dired_pos
	mov	rcx, qword ptr [rbp - 0x2090]
	mov	rdi, qword ptr [rcx + 0x18]
	mov	rdx, qword ptr [rbp - 0x2098]
	mov	rsi, rax
	call	memcpy
	mov	rax, qword ptr [rbp - 0x2098]
	mov	rcx, qword ptr [rbp - 0x2090]
	add	rax, qword ptr [rcx + 0x18]
	mov	qword ptr [rcx + 0x18], rax
.label_1391:
	jmp	.label_1402
.label_1402:
	jmp	.label_1387
.label_1387:
	mov	eax, 1
	mov	esi, eax
	mov	rcx, qword ptr [rbp - 0x2068]
	mov	dl, byte ptr [rbp - 0x2072]
	and	dl, 1
	movzx	eax, dl
	movsxd	rdi, eax
	add	rcx, rdi
	mov	rdi, qword ptr [rbp - 0x2070]
	mov	dl, byte ptr [rbp - 0x2072]
	and	dl, 1
	movzx	eax, dl
	shl	eax, 1
	movsxd	r8, eax
	sub	rdi, r8
	mov	r8,  qword ptr [word ptr [stdout]]
	mov	qword ptr [rbp - 0x20e0], rdi
	mov	rdi, rcx
	mov	rdx, qword ptr [rbp - 0x20e0]
	mov	rcx, r8
	call	fwrite_unlocked
	mov	rcx, qword ptr [rbp - 0x2070]
	add	rcx,  qword ptr [word ptr [dired_pos]]
	mov	qword ptr [word ptr [dired_pos]],  rcx
	cmp	qword ptr [rbp - 0x50], 0
	mov	qword ptr [rbp - 0x20e8], rax
	je	.label_1398
	jmp	.label_1404
.label_1404:
	test	byte ptr [byte ptr [dired]],  1
	je	.label_1405
	mov	rax, qword ptr [rbp - 0x50]
	mov	qword ptr [rbp - 0x20b0], rax
	mov	qword ptr [rbp - 0x20b8], 8
	mov	rax, qword ptr [rbp - 0x20b0]
	mov	qword ptr [rbp - 0x20c0], rax
	mov	rax, qword ptr [rbp - 0x20c0]
	mov	rax, qword ptr [rax + 0x20]
	mov	rcx, qword ptr [rbp - 0x20c0]
	mov	rcx, qword ptr [rcx + 0x18]
	sub	rax, rcx
	mov	qword ptr [rbp - 0x20c8], rax
	mov	rax, qword ptr [rbp - 0x20c8]
	cmp	rax, qword ptr [rbp - 0x20b8]
	jae	.label_1406
	mov	rdi, qword ptr [rbp - 0x20b0]
	mov	rsi, qword ptr [rbp - 0x20b8]
	call	_obstack_newchunk
.label_1406:
	movabs	rax, OFFSET FLAT:dired_pos
	mov	rcx, qword ptr [rbp - 0x20b0]
	mov	rdi, qword ptr [rcx + 0x18]
	mov	rdx, qword ptr [rbp - 0x20b8]
	mov	rsi, rax
	call	memcpy
	mov	rax, qword ptr [rbp - 0x20b8]
	mov	rcx, qword ptr [rbp - 0x20b0]
	add	rax, qword ptr [rcx + 0x18]
	mov	qword ptr [rcx + 0x18], rax
.label_1405:
	jmp	.label_1392
.label_1392:
	jmp	.label_1398
.label_1398:
	cmp	qword ptr [rbp - 0x58], 0
	je	.label_1394
	movabs	rdi, OFFSET FLAT:label_1396
	mov	rsi,  qword ptr [word ptr [stdout]]
	call	fputs_unlocked
	test	byte ptr [rbp - 0x2072], 1
	mov	dword ptr [rbp - 0x20ec], eax
	je	.label_1401
	mov	rax, qword ptr [rbp - 0x2068]
	mov	rcx, qword ptr [rbp - 0x2070]
	movsx	edi, byte ptr [rax + rcx - 1]
	call	putchar_unlocked
	mov	dword ptr [rbp - 0x20f0], eax
.label_1401:
	jmp	.label_1394
.label_1394:
	lea	rax, [rbp - 0x2060]
	mov	rcx, qword ptr [rbp - 0x2068]
	cmp	rcx, rax
	je	.label_1388
	mov	rax, qword ptr [rbp - 0x2068]
	cmp	rax, qword ptr [rbp - 0x28]
	je	.label_1388
	mov	rdi, qword ptr [rbp - 0x2068]
	call	free
.label_1388:
	mov	rax, qword ptr [rbp - 0x2070]
	mov	cl, byte ptr [rbp - 0x2071]
	and	cl, 1
	movzx	edx, cl
	mov	esi, edx
	add	rax, rsi
	add	rsp, 0x20e0
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x4105d9
	.globl sub_4105d9
	.type sub_4105d9, @function
sub_4105d9:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x4105e0
	.globl c_ispunct
	.type c_ispunct, @function
c_ispunct:

	push	rbp
	mov	rbp, rsp
	mov	dword ptr [rbp - 8], edi
	add	edi, -0x21
	mov	eax, edi
	sub	edi, 0x5d
	mov	qword ptr [rbp - 0x10], rax
	mov	dword ptr [rbp - 0x14], edi
	ja	.label_1407
	mov	rax, qword ptr [rbp - 0x10]
	mov	rcx,  qword ptr [word ptr [+ (rax * 8) + label_1409]]
	jmp	rcx
.label_1407:
	mov	byte ptr [rbp - 1], 0
.label_1408:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	pop	rbp
	ret	
	nop	word ptr cs:[rax + rax]
.label_3007:
	mov	byte ptr [rbp - 1], 1
	jmp	.label_1408
.label_1414:
	xor	eax, eax
	mov	ecx, eax
	mov	qword ptr [rbp - 0x50], rcx
	jmp	.label_1410
.label_1410:
	mov	rax, qword ptr [rbp - 0x50]
	xor	ecx, ecx
	mov	dl, cl
	mov	qword ptr [rbp - 0x30], rax
	test	byte ptr [byte ptr [print_with_color]],  1
	mov	byte ptr [rbp - 0x51], dl
	je	.label_1413
	mov	al, 1
	cmp	qword ptr [rbp - 0x30], 0
	mov	byte ptr [rbp - 0x52], al
	jne	.label_1415
	mov	edi, 4
	call	is_colored
	mov	byte ptr [rbp - 0x52], al
.label_1415:
	mov	al, byte ptr [rbp - 0x52]
	mov	byte ptr [rbp - 0x51], al
.label_1413:
	mov	al, byte ptr [rbp - 0x51]
	and	al, 1
	mov	byte ptr [rbp - 0x31], al
	mov	rdi, qword ptr [rbp - 0x28]
	mov	rsi,  qword ptr [word ptr [filename_quoting_options]]
	mov	rcx, qword ptr [rbp - 8]
	mov	edx, dword ptr [rcx + 0xc4]
	mov	rcx, qword ptr [rbp - 0x30]
	mov	al, byte ptr [rbp - 9]
	xor	al, 0xff
	mov	r9, qword ptr [rbp - 0x18]
	mov	r8, qword ptr [rbp - 8]
	mov	r8, qword ptr [r8 + 0x10]
	mov	r10, rsp
	mov	qword ptr [r10], r8
	and	al, 1
	movzx	r8d, al
	call	quote_name
	mov	qword ptr [rbp - 0x40], rax
	call	process_signals
	test	byte ptr [rbp - 0x31], 1
	je	.label_1411
	call	prep_non_filename_text
	cmp	qword ptr [word ptr [line_length]],  0
	je	.label_1412
	mov	rax, qword ptr [rbp - 0x20]
	xor	ecx, ecx
	mov	edx, ecx
	div	qword ptr [word ptr [line_length]]
	mov	rsi, qword ptr [rbp - 0x20]
	add	rsi, qword ptr [rbp - 0x40]
	sub	rsi, 1
	mov	qword ptr [rbp - 0x60], rax
	mov	rax, rsi
	xor	ecx, ecx
	mov	edx, ecx
	div	qword ptr [word ptr [line_length]]
	mov	rsi, qword ptr [rbp - 0x60]
	cmp	rsi, rax
	je	.label_1412
	movabs	rax, OFFSET FLAT:color_indicator
	add	rax, 0x170
	mov	rdi, rax
	call	put_indicator
.label_1412:
	jmp	.label_1411
.label_1411:
	mov	rax, qword ptr [rbp - 0x40]
	add	rsp, 0x70
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x41074b
	.globl sub_41074b
	.type sub_41074b, @function
sub_41074b:

	nop	dword ptr [rax]
.label_1416:
	mov	rax, qword ptr [rbp - 8]
	mov	rax, qword ptr [rax]
	mov	qword ptr [rbp - 0x48], rax
.label_1417:
	mov	rax, qword ptr [rbp - 0x48]
	mov	qword ptr [rbp - 0x28], rax
	test	byte ptr [byte ptr [print_with_color]],  1
	je	.label_1414
	mov	rdi, qword ptr [rbp - 8]
	mov	al, byte ptr [rbp - 9]
	and	al, 1
	movzx	esi, al
	call	get_color_indicator
	mov	qword ptr [rbp - 0x50], rax
	jmp	.label_1410
	.section	.text
	.align	32
	#Procedure 0x410789

	.globl print_name_with_quoting
	.type print_name_with_quoting, @function
print_name_with_quoting:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x70
	mov	al, sil
	mov	qword ptr [rbp - 8], rdi
	and	al, 1
	mov	byte ptr [rbp - 9], al
	mov	qword ptr [rbp - 0x18], rdx
	mov	qword ptr [rbp - 0x20], rcx
	test	byte ptr [rbp - 9], 1
	je	.label_1416
	mov	rax, qword ptr [rbp - 8]
	mov	rax, qword ptr [rax + 8]
	mov	qword ptr [rbp - 0x48], rax
	jmp	.label_1417
	.section	.text
	.align	32
	#Procedure 0x4107c0

	.globl ftypelet
	.type ftypelet, @function
ftypelet:
	push	rbp
	mov	rbp, rsp
	mov	dword ptr [rbp - 8], edi
	mov	edi, dword ptr [rbp - 8]
	and	edi, 0xf000
	cmp	edi, 0x8000
	jne	.label_1418
	mov	byte ptr [rbp - 1], 0x2d
	jmp	.label_1422
.label_1418:
	mov	eax, dword ptr [rbp - 8]
	and	eax, 0xf000
	cmp	eax, 0x4000
	jne	.label_1421
	mov	byte ptr [rbp - 1], 0x64
	jmp	.label_1422
.label_1424:
	mov	eax, dword ptr [rbp - 8]
	and	eax, 0xf000
	cmp	eax, 0xc000
	jne	.label_1419
	mov	byte ptr [rbp - 1], 0x73
	jmp	.label_1422
.label_1420:
	mov	eax, dword ptr [rbp - 8]
	and	eax, 0xf000
	cmp	eax, 0x1000
	jne	.label_1424
	mov	byte ptr [rbp - 1], 0x70
	jmp	.label_1422
.label_1425:
	mov	eax, dword ptr [rbp - 8]
	and	eax, 0xf000
	cmp	eax, 0x2000
	jne	.label_1423
	mov	byte ptr [rbp - 1], 0x63
	jmp	.label_1422
.label_1421:
	mov	eax, dword ptr [rbp - 8]
	and	eax, 0xf000
	cmp	eax, 0x6000
	jne	.label_1425
	mov	byte ptr [rbp - 1], 0x62
	jmp	.label_1422
.label_1419:
	mov	byte ptr [rbp - 1], 0x3f
.label_1422:
	movsx	eax, byte ptr [rbp - 1]
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x41087b
	.globl sub_41087b
	.type sub_41087b, @function
sub_41087b:

	nop	word ptr [rax + rax]
.label_1423:
	mov	eax, dword ptr [rbp - 8]
	and	eax, 0xf000
	cmp	eax, 0xa000
	jne	.label_1420
	mov	byte ptr [rbp - 1], 0x6c
	jmp	.label_1422
	.section	.text
	.align	32
	#Procedure 0x4108a0
	.globl get_stat_birthtime_ns
	.type get_stat_birthtime_ns, @function
get_stat_birthtime_ns:

	push	rbp
	mov	rbp, rsp
	xor	eax, eax
	mov	qword ptr [rbp - 8], rdi
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x4108ac
	.globl sub_4108ac
	.type sub_4108ac, @function
sub_4108ac:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x4108b0

	.globl close_stream
	.type close_stream, @function
close_stream:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	mov	qword ptr [rbp - 0x10], rdi
	mov	rdi, qword ptr [rbp - 0x10]
	call	__fpending
	cmp	rax, 0
	setne	cl
	and	cl, 1
	mov	byte ptr [rbp - 0x11], cl
	mov	rdi, qword ptr [rbp - 0x10]
	call	ferror_unlocked
	cmp	eax, 0
	setne	cl
	and	cl, 1
	mov	byte ptr [rbp - 0x12], cl
	mov	rdi, qword ptr [rbp - 0x10]
	call	rpl_fclose
	cmp	eax, 0
	setne	cl
	and	cl, 1
	mov	byte ptr [rbp - 0x13], cl
	test	byte ptr [rbp - 0x12], 1
	jne	.label_1426
	test	byte ptr [rbp - 0x13], 1
	je	.label_1427
	test	byte ptr [rbp - 0x11], 1
	jne	.label_1426
	call	__errno_location
	cmp	dword ptr [rax], 9
	je	.label_1427
.label_1426:
	test	byte ptr [rbp - 0x13], 1
	jne	.label_1428
	call	__errno_location
	mov	dword ptr [rax], 0
.label_1428:
	mov	dword ptr [rbp - 4], 0xffffffff
	jmp	.label_1429
.label_1427:
	mov	dword ptr [rbp - 4], 0
.label_1429:
	mov	eax, dword ptr [rbp - 4]
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x410959
	.globl sub_410959
	.type sub_410959, @function
sub_410959:

	nop	dword ptr [rax]
.label_1431:
	movabs	rax, OFFSET FLAT:default_quoting_options
	mov	qword ptr [rbp - 0x10], rax
	jmp	.label_1430
.label_1430:
	mov	rax, qword ptr [rbp - 0x10]
	mov	eax, dword ptr [rax]
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x41097b
	.globl sub_41097b
	.type sub_41097b, @function
sub_41097b:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x410980

	.globl get_quoting_style
	.type get_quoting_style, @function
get_quoting_style:
	push	rbp
	mov	rbp, rsp
	mov	qword ptr [rbp - 8], rdi
	cmp	qword ptr [rbp - 8], 0
	je	.label_1431
	mov	rax, qword ptr [rbp - 8]
	mov	qword ptr [rbp - 0x10], rax
	jmp	.label_1430
	.section	.text
	.align	32
	#Procedure 0x4109a0

	.globl xalloc_die
	.type xalloc_die, @function
xalloc_die:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	movabs	rdi, OFFSET FLAT:label_781
	mov	eax,  dword ptr [dword ptr [exit_failure]]
	mov	dword ptr [rbp - 4], eax
	call	gettext
	xor	esi, esi
	movabs	rdx, OFFSET FLAT:label_1272
	mov	edi, dword ptr [rbp - 4]
	mov	rcx, rax
	mov	al, 0
	call	error
	call	abort
	.section	.text
	.align	32
	#Procedure 0x4109df
	.globl sub_4109df
	.type sub_4109df, @function
sub_4109df:

	nop	
	.section	.text
	.align	32
	#Procedure 0x4109e0

	.globl strcmp_atime
	.type strcmp_atime, @function
strcmp_atime:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	movabs	rdx, OFFSET FLAT:strcmp
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	rsi, qword ptr [rbp - 8]
	mov	rdi, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 0x18], rdi
	mov	rdi, rsi
	mov	rsi, qword ptr [rbp - 0x18]
	call	cmp_atime
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x410a18
	.globl sub_410a18
	.type sub_410a18, @function
sub_410a18:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x410a20

	.globl default_block_size
	.type default_block_size, @function
default_block_size:
	push	rbp
	mov	rbp, rsp
	movabs	rdi, OFFSET FLAT:label_1432
	call	getenv
	mov	ecx, 0x400
	mov	edx, 0x200
	cmp	rax, 0
	cmovne	ecx, edx
	movsxd	rax, ecx
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x410a49
	.globl sub_410a49
	.type sub_410a49, @function
sub_410a49:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x410a50

	.globl print_horizontal
	.type print_horizontal, @function
print_horizontal:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x60
	xor	edi, edi
	mov	qword ptr [rbp - 0x10], 0
	call	calculate_columns
	mov	qword ptr [rbp - 0x18], rax
	mov	rax, qword ptr [rbp - 0x18]
	sub	rax, 1
	imul	rax, rax, 0x18
	add	rax,  qword ptr [word ptr [column_info]]
	mov	qword ptr [rbp - 0x20], rax
	mov	rax,  qword ptr [word ptr [sorted_file]]
	mov	rax, qword ptr [rax]
	mov	qword ptr [rbp - 0x28], rax
	mov	rdi, qword ptr [rbp - 0x28]
	call	length_of_file_name_and_frills
	xor	ecx, ecx
	mov	esi, ecx
	mov	qword ptr [rbp - 0x30], rax
	mov	rax, qword ptr [rbp - 0x20]
	mov	rax, qword ptr [rax + 0x10]
	mov	rax, qword ptr [rax]
	mov	qword ptr [rbp - 0x38], rax
	mov	rdi, qword ptr [rbp - 0x28]
	call	print_file_name_and_frills
	mov	qword ptr [rbp - 8], 1
	mov	qword ptr [rbp - 0x48], rax
.label_1434:
	mov	rax, qword ptr [rbp - 8]
	cmp	rax,  qword ptr [word ptr [cwd_n_used]]
	jae	.label_1433
	mov	rax, qword ptr [rbp - 8]
	xor	ecx, ecx
	mov	edx, ecx
	div	qword ptr [rbp - 0x18]
	mov	qword ptr [rbp - 0x40], rdx
	cmp	qword ptr [rbp - 0x40], 0
	jne	.label_1435
	mov	edi, 0xa
	call	putchar_unlocked
	mov	qword ptr [rbp - 0x10], 0
	mov	dword ptr [rbp - 0x4c], eax
	jmp	.label_1436
.label_1435:
	mov	rax, qword ptr [rbp - 0x10]
	add	rax, qword ptr [rbp - 0x30]
	mov	rcx, qword ptr [rbp - 0x10]
	add	rcx, qword ptr [rbp - 0x38]
	mov	rdi, rax
	mov	rsi, rcx
	call	indent
	mov	rax, qword ptr [rbp - 0x38]
	add	rax, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 0x10], rax
.label_1436:
	mov	rax, qword ptr [rbp - 8]
	mov	rcx,  qword ptr [word ptr [sorted_file]]
	mov	rax, qword ptr [rcx + rax*8]
	mov	qword ptr [rbp - 0x28], rax
	mov	rdi, qword ptr [rbp - 0x28]
	mov	rsi, qword ptr [rbp - 0x10]
	call	print_file_name_and_frills
	mov	rdi, qword ptr [rbp - 0x28]
	mov	qword ptr [rbp - 0x58], rax
	call	length_of_file_name_and_frills
	mov	qword ptr [rbp - 0x30], rax
	mov	rax, qword ptr [rbp - 0x40]
	mov	rcx, qword ptr [rbp - 0x20]
	mov	rcx, qword ptr [rcx + 0x10]
	mov	rax, qword ptr [rcx + rax*8]
	mov	qword ptr [rbp - 0x38], rax
	mov	rax, qword ptr [rbp - 8]
	add	rax, 1
	mov	qword ptr [rbp - 8], rax
	jmp	.label_1434
.label_1433:
	mov	edi, 0xa
	call	putchar_unlocked
	mov	dword ptr [rbp - 0x5c], eax
	add	rsp, 0x60
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x410b9f
	.globl sub_410b9f
	.type sub_410b9f, @function
sub_410b9f:

	nop
cmp	qword ptr [word ptr [line_length]],  0
	jne	.label_1437
	mov	edi, 0x20
	call	print_with_separator
	jmp	.label_1439
	.section	.text
	.align	32
	#Procedure 0x410bbe

	.globl sub_410bbe
	.type sub_410bbe, @function
sub_410bbe:
	call	print_many_per_line
.label_1440:
	jmp	.label_1438
	.section	.text
	.align	32
	#Procedure 0x410bc8

	.globl sub_410bc8
	.type sub_410bc8, @function
sub_410bc8:
	cmp	qword ptr [word ptr [line_length]],  0
	jne	sub_410bbe
	mov	edi, 0x20
	call	print_with_separator
	jmp	.label_1440
	.section	.text
	.align	32
	#Procedure 0x410be6

	.globl sub_410be6
	.type sub_410be6, @function
sub_410be6:
	jmp	.label_1438
.label_1438:
	add	rsp, 0x30
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x410bf1
	.globl sub_410bf1
	.type sub_410bf1, @function
sub_410bf1:

	nop	dword ptr [rax + rax]
.label_1445:
	jmp	.label_1438
	.section	.text
	.align	32
	#Procedure 0x410bfe

	.globl sub_410bfe
	.type sub_410bfe, @function
sub_410bfe:
	mov	qword ptr [rbp - 8], 0
.label_1441:
	mov	rax, qword ptr [rbp - 8]
	cmp	rax,  qword ptr [word ptr [cwd_n_used]]
	jae	sub_410be6
	call	set_normal_color
	mov	rax, qword ptr [rbp - 8]
	mov	rcx,  qword ptr [word ptr [sorted_file]]
	mov	rax, qword ptr [rcx + rax*8]
	mov	rdi, rax
	call	print_long_format
	mov	edi, 0xa
	call	putchar_unlocked
	mov	rcx,  qword ptr [word ptr [dired_pos]]
	add	rcx, 1
	mov	qword ptr [word ptr [dired_pos]],  rcx
	mov	dword ptr [rbp - 0x28], eax
	jmp	.label_1442
.label_1442:
	mov	rax, qword ptr [rbp - 8]
	add	rax, 1
	mov	qword ptr [rbp - 8], rax
	jmp	.label_1441
	.section	.text
	.align	32
	#Procedure 0x410c6c

	.globl print_current_files
	.type print_current_files, @function
print_current_files:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x30
	mov	eax,  dword ptr [dword ptr [rip + format]]
	mov	ecx, eax
	mov	rdx, rcx
	sub	rdx, 4
	mov	qword ptr [rbp - 0x10], rcx
	mov	qword ptr [rbp - 0x18], rdx
	ja	.label_1438
	mov	rax, qword ptr [rbp - 0x10]
	mov	rcx,  qword ptr [word ptr [+ (rax * 8) + label_1443]]
	jmp	rcx
.label_1437:
	call	print_horizontal
.label_1439:
	jmp	.label_1438
	.section	.text
	.align	32
	#Procedure 0x410ca9

	.globl sub_410ca9
	.type sub_410ca9, @function
sub_410ca9:
	mov	qword ptr [rbp - 8], 0
.label_1444:
	mov	rax, qword ptr [rbp - 8]
	cmp	rax,  qword ptr [word ptr [cwd_n_used]]
	jae	.label_1445
	xor	eax, eax
	mov	esi, eax
	mov	rcx, qword ptr [rbp - 8]
	mov	rdx,  qword ptr [word ptr [sorted_file]]
	mov	rcx, qword ptr [rdx + rcx*8]
	mov	rdi, rcx
	call	print_file_name_and_frills
	mov	edi, 0xa
	mov	qword ptr [rbp - 0x20], rax
	call	putchar_unlocked
	mov	dword ptr [rbp - 0x24], eax
	mov	rax, qword ptr [rbp - 8]
	add	rax, 1
	mov	qword ptr [rbp - 8], rax
	jmp	.label_1444
	.section	.text
	.align	32
	#Procedure 0x410d01

	.globl sub_410d01
	.type sub_410d01, @function
sub_410d01:
	mov	edi, 0x2c
	call	print_with_separator
	jmp	.label_1438
	.section	.text
	.align	32
	#Procedure 0x410d10

	.globl xstrcoll_df_extension
	.type xstrcoll_df_extension, @function
xstrcoll_df_extension:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 0x18], rsi
	mov	rax, qword ptr [rbp - 0x10]
	mov	rdi, rax
	call	is_linked_directory
	and	al, 1
	mov	byte ptr [rbp - 0x19], al
	mov	rdi, qword ptr [rbp - 0x18]
	call	is_linked_directory
	and	al, 1
	mov	byte ptr [rbp - 0x1a], al
	test	byte ptr [rbp - 0x19], 1
	je	.label_1448
	test	byte ptr [rbp - 0x1a], 1
	jne	.label_1448
	mov	dword ptr [rbp - 4], 0xffffffff
	jmp	.label_1447
.label_1448:
	test	byte ptr [rbp - 0x19], 1
	jne	.label_1446
	test	byte ptr [rbp - 0x1a], 1
	je	.label_1446
	mov	dword ptr [rbp - 4], 1
	jmp	.label_1447
.label_1446:
	jmp	.label_1449
.label_1449:
	movabs	rdx, OFFSET FLAT:xstrcoll
	mov	rax, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	rdi, rax
	mov	rsi, rcx
	call	cmp_extension
	mov	dword ptr [rbp - 4], eax
.label_1447:
	mov	eax, dword ptr [rbp - 4]
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x410dad
	.globl sub_410dad
	.type sub_410dad, @function
sub_410dad:

	nop	dword ptr [rax]
.label_1451:
	mov	eax, dword ptr [rbp - 8]
	mov	dword ptr [rbp - 4], eax
.label_1452:
	mov	eax, dword ptr [rbp - 4]
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x410dbb
	.globl sub_410dbb
	.type sub_410dbb, @function
sub_410dbb:

	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x410dc4
	.globl c_toupper
	.type c_toupper, @function
c_toupper:

	push	rbp
	mov	rbp, rsp
	mov	dword ptr [rbp - 8], edi
	add	edi, -0x61
	sub	edi, 0x19
	mov	dword ptr [rbp - 0xc], edi
	ja	.label_1451
	jmp	.label_1450
.label_1450:
	mov	eax, dword ptr [rbp - 8]
	sub	eax, 0x61
	add	eax, 0x41
	mov	dword ptr [rbp - 4], eax
	jmp	.label_1452
	.section	.text
	.align	32
	#Procedure 0x410df0

	.globl gettime
	.type gettime, @function
gettime:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	xor	eax, eax
	mov	qword ptr [rbp - 8], rdi
	mov	rsi, qword ptr [rbp - 8]
	mov	edi, eax
	call	clock_gettime
	mov	dword ptr [rbp - 0xc], eax
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x410e12
	.globl sub_410e12
	.type sub_410e12, @function
sub_410e12:

	nop	word ptr cs:[rax + rax]
.label_1453:
	mov	eax, dword ptr [rbp - 0x14]
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x410e29
	.globl sub_410e29
	.type sub_410e29, @function
sub_410e29:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x410e2c

	.globl bkm_scale_by_power_0
	.type bkm_scale_by_power_0, @function
bkm_scale_by_power_0:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	mov	qword ptr [rbp - 8], rdi
	mov	dword ptr [rbp - 0xc], esi
	mov	dword ptr [rbp - 0x10], edx
	mov	dword ptr [rbp - 0x14], 0
.label_1454:
	mov	eax, dword ptr [rbp - 0x10]
	mov	ecx, eax
	add	ecx, -1
	mov	dword ptr [rbp - 0x10], ecx
	cmp	eax, 0
	je	.label_1453
	mov	rdi, qword ptr [rbp - 8]
	mov	esi, dword ptr [rbp - 0xc]
	call	bkm_scale_0
	or	eax, dword ptr [rbp - 0x14]
	mov	dword ptr [rbp - 0x14], eax
	jmp	.label_1454
	.section	.text
	.align	32
	#Procedure 0x410e70
	.globl rotl32
	.type rotl32, @function
rotl32:

	push	rbp
	mov	rbp, rsp
	mov	eax, 0x20
	mov	dword ptr [rbp - 4], edi
	mov	dword ptr [rbp - 8], esi
	mov	esi, dword ptr [rbp - 4]
	mov	ecx, dword ptr [rbp - 8]
	shl	esi, cl
	mov	edi, dword ptr [rbp - 4]
	sub	eax, dword ptr [rbp - 8]
	mov	ecx, eax
	shr	edi, cl
	or	esi, edi
	mov	eax, esi
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x410e97
	.globl sub_410e97
	.type sub_410e97, @function
sub_410e97:

	nop	word ptr [rax + rax]
.label_1456:
	mov	byte ptr [rbp - 1], 0
.label_1458:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x410eae
	.globl sub_410eae
	.type sub_410eae, @function
sub_410eae:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x410eb6
	.globl c_iscntrl
	.type c_iscntrl, @function
c_iscntrl:

	push	rbp
	mov	rbp, rsp
	mov	dword ptr [rbp - 8], edi
	mov	eax, edi
	sub	edi, 0x20
	mov	dword ptr [rbp - 0xc], eax
	mov	dword ptr [rbp - 0x10], edi
	jb	.label_1455
	jmp	.label_1457
.label_1457:
	mov	eax, dword ptr [rbp - 0xc]
	sub	eax, 0x7f
	mov	dword ptr [rbp - 0x14], eax
	jne	.label_1456
	jmp	.label_1455
.label_1455:
	mov	byte ptr [rbp - 1], 1
	jmp	.label_1458
	.section	.text
	.align	32
	#Procedure 0x410ef0

	.globl adjust_value
	.type adjust_value, @function
adjust_value:
	push	rbp
	mov	rbp, rsp
	fld	xword ptr [rbp + 0x10]
	mov	dword ptr [rbp - 4], edi
	fstp	xword ptr [rbp - 0x20]
	cmp	dword ptr [rbp - 4], 1
	je	.label_1459
	fld	xword ptr [rbp - 0x20]
	fld	xword ptr [word ptr [rip + label_1460]]
	fucomip	st(1)
	fstp	st(0)
	jbe	.label_1459
	jmp	.label_1461
.label_1461:
	xor	eax, eax
	mov	cl, al
	fld	xword ptr [rbp - 0x20]
	fld	dword ptr [dword ptr [rip + label_867]]
	fld	st(1)
	fsub	st(1)
	fnstcw	word ptr [rbp - 0x4a]
	mov	dx, word ptr [rbp - 0x4a]
	mov	word ptr [rbp - 0x4a], 0xc7f
	fldcw	word ptr [rbp - 0x4a]
	mov	word ptr [rbp - 0x4a], dx
	fistp	qword ptr [rbp - 0x30]
	fldcw	word ptr [rbp - 0x4a]
	fnstcw	word ptr [rbp - 0x4c]
	mov	dx, word ptr [rbp - 0x4c]
	mov	word ptr [rbp - 0x4c], 0xc7f
	fldcw	word ptr [rbp - 0x4c]
	mov	word ptr [rbp - 0x4c], dx
	fld	st(1)
	fistp	qword ptr [rbp - 0x38]
	fldcw	word ptr [rbp - 0x4c]
	mov	rsi, qword ptr [rbp - 0x30]
	movabs	rdi, 0x8000000000000000
	xor	rsi, rdi
	mov	rdi, qword ptr [rbp - 0x38]
	fucomip	st(1)
	fstp	st(0)
	cmova	rsi, rdi
	mov	qword ptr [rbp - 0x28], rsi
	mov	rsi, qword ptr [rbp - 0x28]
	cmp	dword ptr [rbp - 4], 0
	mov	qword ptr [rbp - 0x58], rsi
	mov	byte ptr [rbp - 0x59], cl
	jne	.label_1462
	mov	rax, qword ptr [rbp - 0x28]
	mov	qword ptr [rbp - 0x40], rax
	test	rax, rax
	setns	cl
	movzx	edx, cl
	mov	eax, edx
	fld	dword ptr [dword ptr [+ (rax * 4) + label_1067]]
	fild	qword ptr [rbp - 0x40]
	faddp	st(1)
	fld	xword ptr [rbp - 0x20]
	fxch	st(1)
	fucomip	st(1)
	fstp	st(0)
	setp	cl
	setne	sil
	or	sil, cl
	mov	byte ptr [rbp - 0x59], sil
.label_1462:
	mov	al, byte ptr [rbp - 0x59]
	and	al, 1
	movzx	ecx, al
	mov	edx, ecx
	mov	rsi, qword ptr [rbp - 0x58]
	add	rsi, rdx
	mov	qword ptr [rbp - 0x48], rsi
	setns	al
	movzx	ecx, al
	mov	edx, ecx
	fld	dword ptr [dword ptr [+ (rdx * 4) + label_1067]]
	fild	qword ptr [rbp - 0x48]
	faddp	st(1)
	fstp	xword ptr [rbp - 0x20]
.label_1459:
	fld	xword ptr [rbp - 0x20]
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x411003
	.globl sub_411003
	.type sub_411003, @function
sub_411003:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x411010

	.globl base_len
	.type base_len, @function
base_len:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x18], 0
	mov	rdi, qword ptr [rbp - 8]
	call	strlen
	mov	qword ptr [rbp - 0x10], rax
.label_1465:
	xor	eax, eax
	mov	cl, al
	mov	eax, 1
	mov	edx, eax
	cmp	rdx, qword ptr [rbp - 0x10]
	mov	byte ptr [rbp - 0x19], cl
	jae	.label_1463
	mov	rax, qword ptr [rbp - 0x10]
	sub	rax, 1
	mov	rcx, qword ptr [rbp - 8]
	movsx	edx, byte ptr [rcx + rax]
	cmp	edx, 0x2f
	sete	sil
	mov	byte ptr [rbp - 0x19], sil
.label_1463:
	mov	al, byte ptr [rbp - 0x19]
	test	al, 1
	jne	.label_1464
	jmp	.label_1467
.label_1464:
	jmp	.label_1466
.label_1466:
	mov	rax, qword ptr [rbp - 0x10]
	add	rax, -1
	mov	qword ptr [rbp - 0x10], rax
	jmp	.label_1465
.label_1467:
	mov	rax, qword ptr [rbp - 0x10]
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x411094
	.globl sub_411094
	.type sub_411094, @function
sub_411094:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4110a0
	.globl quote_mem
	.type quote_mem, @function
quote_mem:

	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	xor	eax, eax
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	rsi, qword ptr [rbp - 8]
	mov	rdx, qword ptr [rbp - 0x10]
	mov	edi, eax
	call	quote_n_mem
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x4110c7
	.globl sub_4110c7
	.type sub_4110c7, @function
sub_4110c7:

	nop	word ptr [rax + rax]
.label_1469:
	jmp	.label_1468
.label_1468:
	movabs	rdx, OFFSET FLAT:strcmp
	mov	rax, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	rdi, rax
	mov	rsi, rcx
	call	cmp_atime
	mov	dword ptr [rbp - 4], eax
.label_1470:
	mov	eax, dword ptr [rbp - 4]
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x4110fe
	.globl sub_4110fe
	.type sub_4110fe, @function
sub_4110fe:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x411101

	.globl strcmp_df_atime
	.type strcmp_df_atime, @function
strcmp_df_atime:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 0x18], rsi
	mov	rax, qword ptr [rbp - 0x10]
	mov	rdi, rax
	call	is_linked_directory
	and	al, 1
	mov	byte ptr [rbp - 0x19], al
	mov	rdi, qword ptr [rbp - 0x18]
	call	is_linked_directory
	and	al, 1
	mov	byte ptr [rbp - 0x1a], al
	test	byte ptr [rbp - 0x19], 1
	je	.label_1471
	test	byte ptr [rbp - 0x1a], 1
	jne	.label_1471
	mov	dword ptr [rbp - 4], 0xffffffff
	jmp	.label_1470
.label_1471:
	test	byte ptr [rbp - 0x19], 1
	jne	.label_1469
	test	byte ptr [rbp - 0x1a], 1
	je	.label_1469
	mov	dword ptr [rbp - 4], 1
	jmp	.label_1470
	.section	.text
	.align	32
	#Procedure 0x411170

	.globl seen_triple
	.type seen_triple, @function
seen_triple:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x30
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 0x18], rsi
	mov	qword ptr [rbp - 0x20], rdx
	mov	rdx, qword ptr [rbp - 0x10]
	cmp	qword ptr [rdx], 0
	jne	.label_1475
	xor	eax, eax
	mov	esi, eax
	movabs	rdx, OFFSET FLAT:triple_hash
	movabs	rcx, OFFSET FLAT:triple_compare_ino_str
	movabs	r8, OFFSET FLAT:triple_free
	mov	qword ptr [rbp - 0x28], 7
	mov	rdi, qword ptr [rbp - 0x28]
	call	hash_initialize
	mov	rcx, qword ptr [rbp - 0x10]
	mov	qword ptr [rcx], rax
	mov	rax, qword ptr [rbp - 0x10]
	cmp	qword ptr [rax], 0
	jne	.label_1472
	call	xalloc_die
.label_1474:
	mov	rax, qword ptr [rbp - 0x10]
	mov	rdi, qword ptr [rax]
	mov	rsi, qword ptr [rbp - 0x18]
	mov	rdx, qword ptr [rbp - 0x20]
	call	record_file
	mov	byte ptr [rbp - 1], 0
.label_1476:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	add	rsp, 0x30
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x411205
	.globl sub_411205
	.type sub_411205, @function
sub_411205:

	nop	word ptr cs:[rax + rax]
.label_1472:
	jmp	.label_1475
.label_1475:
	mov	rax, qword ptr [rbp - 0x10]
	mov	rdi, qword ptr [rax]
	mov	rsi, qword ptr [rbp - 0x18]
	mov	rdx, qword ptr [rbp - 0x20]
	call	seen_file
	test	al, 1
	jne	.label_1473
	jmp	.label_1474
.label_1473:
	mov	byte ptr [rbp - 1], 1
	jmp	.label_1476
	.section	.text
	.align	32
	#Procedure 0x411240

	.globl quotearg_n_custom
	.type quotearg_n_custom, @function
quotearg_n_custom:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	mov	r8, -1
	mov	dword ptr [rbp - 4], edi
	mov	qword ptr [rbp - 0x10], rsi
	mov	qword ptr [rbp - 0x18], rdx
	mov	qword ptr [rbp - 0x20], rcx
	mov	edi, dword ptr [rbp - 4]
	mov	rsi, qword ptr [rbp - 0x10]
	mov	rdx, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rbp - 0x20]
	call	quotearg_n_custom_mem
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x411278
	.globl sub_411278
	.type sub_411278, @function
sub_411278:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x411280

	.globl seen_file
	.type seen_file, @function
seen_file:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x40
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 0x18], rsi
	mov	qword ptr [rbp - 0x20], rdx
	cmp	qword ptr [rbp - 0x10], 0
	jne	.label_1477
	mov	byte ptr [rbp - 1], 0
	jmp	.label_1478
.label_1477:
	lea	rax, [rbp - 0x38]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	qword ptr [rbp - 0x38], rcx
	mov	rcx, qword ptr [rbp - 0x20]
	mov	rcx, qword ptr [rcx + 8]
	mov	qword ptr [rbp - 0x30], rcx
	mov	rcx, qword ptr [rbp - 0x20]
	mov	rcx, qword ptr [rcx]
	mov	qword ptr [rbp - 0x28], rcx
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsi, rax
	call	hash_lookup
	cmp	rax, 0
	setne	dl
	xor	dl, 0xff
	xor	dl, 0xff
	and	dl, 1
	mov	byte ptr [rbp - 1], dl
.label_1478:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	add	rsp, 0x40
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x4112f8
	.globl sub_4112f8
	.type sub_4112f8, @function
sub_4112f8:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x411300

	.globl quotearg_n
	.type quotearg_n, @function
quotearg_n:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	mov	rdx, -1
	movabs	rcx, OFFSET FLAT:default_quoting_options
	mov	dword ptr [rbp - 4], edi
	mov	qword ptr [rbp - 0x10], rsi
	mov	edi, dword ptr [rbp - 4]
	mov	rsi, qword ptr [rbp - 0x10]
	call	quotearg_n_options
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x411332
	.globl sub_411332
	.type sub_411332, @function
sub_411332:

	nop	word ptr cs:[rax + rax]
.label_1487:
	mov	rax, qword ptr [rbp - 8]
	mov	rax, qword ptr [rax + 0x48]
	mov	qword ptr [rbp - 0x18], rax
.label_1480:
	cmp	qword ptr [rbp - 0x18], 0
	je	.label_1479
	mov	rax, qword ptr [rbp - 0x18]
	mov	rax, qword ptr [rax + 8]
	mov	qword ptr [rbp - 0x20], rax
	mov	rax, qword ptr [rbp - 0x18]
	mov	rdi, rax
	call	free
	mov	rax, qword ptr [rbp - 0x20]
	mov	qword ptr [rbp - 0x18], rax
	jmp	.label_1480
.label_1488:
	jmp	.label_1484
.label_1484:
	jmp	.label_1481
.label_1481:
	mov	rax, qword ptr [rbp - 0x10]
	add	rax, 0x10
	mov	qword ptr [rbp - 0x10], rax
	jmp	.label_1482
.label_1490:
	jmp	.label_1489
.label_1489:
	mov	rax, qword ptr [rbp - 0x10]
	add	rax, 0x10
	mov	qword ptr [rbp - 0x10], rax
	jmp	.label_1491
.label_1485:
	jmp	.label_1486
.label_1486:
	mov	rax, qword ptr [rbp - 8]
	mov	rax, qword ptr [rax]
	mov	qword ptr [rbp - 0x10], rax
.label_1491:
	mov	rax, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rbp - 8]
	cmp	rax, qword ptr [rcx + 8]
	jae	.label_1487
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax + 8]
	mov	qword ptr [rbp - 0x18], rax
.label_1492:
	cmp	qword ptr [rbp - 0x18], 0
	je	.label_1490
	mov	rax, qword ptr [rbp - 0x18]
	mov	rax, qword ptr [rax + 8]
	mov	qword ptr [rbp - 0x20], rax
	mov	rax, qword ptr [rbp - 0x18]
	mov	rdi, rax
	call	free
	mov	rax, qword ptr [rbp - 0x20]
	mov	qword ptr [rbp - 0x18], rax
	jmp	.label_1492
.label_1479:
	mov	rax, qword ptr [rbp - 8]
	mov	rax, qword ptr [rax]
	mov	rdi, rax
	call	free
	mov	rax, qword ptr [rbp - 8]
	mov	rdi, rax
	call	free
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x41142c
	.globl sub_41142c
	.type sub_41142c, @function
sub_41142c:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x411436

	.globl hash_free
	.type hash_free, @function
hash_free:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	mov	qword ptr [rbp - 8], rdi
	mov	rdi, qword ptr [rbp - 8]
	cmp	qword ptr [rdi + 0x40], 0
	je	.label_1486
	mov	rax, qword ptr [rbp - 8]
	cmp	qword ptr [rax + 0x20], 0
	je	.label_1486
	mov	rax, qword ptr [rbp - 8]
	mov	rax, qword ptr [rax]
	mov	qword ptr [rbp - 0x10], rax
.label_1482:
	mov	rax, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rbp - 8]
	cmp	rax, qword ptr [rcx + 8]
	jae	.label_1485
	mov	rax, qword ptr [rbp - 0x10]
	cmp	qword ptr [rax], 0
	je	.label_1484
	mov	rax, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 0x18], rax
.label_1483:
	cmp	qword ptr [rbp - 0x18], 0
	je	.label_1488
	mov	rax, qword ptr [rbp - 8]
	mov	rax, qword ptr [rax + 0x40]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	rdi, qword ptr [rcx]
	call	rax
	mov	rax, qword ptr [rbp - 0x18]
	mov	rax, qword ptr [rax + 8]
	mov	qword ptr [rbp - 0x18], rax
	jmp	.label_1483
.label_1496:
	lea	rsi, [rbp - 0x30]
	xor	edx, edx
	movabs	r8, OFFSET FLAT:label_1493
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rbp - 0x18]
	call	xstrtoumax
	mov	dword ptr [rbp - 0x34], eax
	cmp	dword ptr [rbp - 0x34], 0
	je	.label_1504
	mov	rax, qword ptr [rbp - 0x20]
	mov	dword ptr [rax], 0
	mov	ecx, dword ptr [rbp - 0x34]
	mov	dword ptr [rbp - 4], ecx
	jmp	.label_1506
.label_1504:
	jmp	.label_1510
.label_1510:
	xor	eax, eax
	mov	cl, al
	mov	eax, 0x30
	mov	rdx, qword ptr [rbp - 0x10]
	movsx	esi, byte ptr [rdx]
	cmp	eax, esi
	mov	byte ptr [rbp - 0x35], cl
	jg	.label_1495
	mov	rax, qword ptr [rbp - 0x10]
	movsx	ecx, byte ptr [rax]
	cmp	ecx, 0x39
	setle	dl
	mov	byte ptr [rbp - 0x35], dl
.label_1495:
	mov	al, byte ptr [rbp - 0x35]
	xor	al, 0xff
	test	al, 1
	jne	.label_1507
	jmp	.label_1500
.label_1507:
	mov	rax, qword ptr [rbp - 0x10]
	cmp	rax, qword ptr [rbp - 0x30]
	jne	.label_1494
	mov	eax, dword ptr [rbp - 0x28]
	or	eax, 0x80
	mov	dword ptr [rbp - 0x28], eax
	mov	rcx, qword ptr [rbp - 0x30]
	movsx	eax, byte ptr [rcx - 1]
	cmp	eax, 0x42
	jne	.label_1499
	mov	eax, dword ptr [rbp - 0x28]
	or	eax, 0x100
	mov	dword ptr [rbp - 0x28], eax
.label_1499:
	mov	rax, qword ptr [rbp - 0x30]
	movsx	ecx, byte ptr [rax - 1]
	cmp	ecx, 0x42
	jne	.label_1508
	mov	rax, qword ptr [rbp - 0x30]
	movsx	ecx, byte ptr [rax - 2]
	cmp	ecx, 0x69
	jne	.label_1502
.label_1508:
	mov	eax, dword ptr [rbp - 0x28]
	or	eax, 0x20
	mov	dword ptr [rbp - 0x28], eax
.label_1502:
	jmp	.label_1500
	.section	.text
	.align	32
	#Procedure 0x4115a6

	.globl humblock
	.type humblock, @function
humblock:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x40
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 0x18], rsi
	mov	qword ptr [rbp - 0x20], rdx
	mov	dword ptr [rbp - 0x28], 0
	cmp	qword ptr [rbp - 0x10], 0
	jne	.label_1503
	movabs	rdi, OFFSET FLAT:label_1497
	call	getenv
	mov	qword ptr [rbp - 0x10], rax
	cmp	rax, 0
	jne	.label_1503
	movabs	rdi, OFFSET FLAT:label_1505
	call	getenv
	mov	qword ptr [rbp - 0x10], rax
	cmp	rax, 0
	jne	.label_1503
	call	default_block_size
	mov	rcx, qword ptr [rbp - 0x18]
	mov	qword ptr [rcx], rax
	jmp	.label_1498
.label_1500:
	jmp	.label_1501
.label_1501:
	jmp	.label_1498
.label_1498:
	mov	eax, dword ptr [rbp - 0x28]
	mov	rcx, qword ptr [rbp - 0x20]
	mov	dword ptr [rcx], eax
	mov	dword ptr [rbp - 4], 0
.label_1506:
	mov	eax, dword ptr [rbp - 4]
	add	rsp, 0x40
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x41163a
	.globl sub_41163a
	.type sub_41163a, @function
sub_41163a:

	nop	
.label_1503:
	mov	rax, qword ptr [rbp - 0x10]
	movsx	ecx, byte ptr [rax]
	cmp	ecx, 0x27
	jne	.label_1511
	mov	eax, dword ptr [rbp - 0x28]
	or	eax, 4
	mov	dword ptr [rbp - 0x28], eax
	mov	rcx, qword ptr [rbp - 0x10]
	add	rcx, 1
	mov	qword ptr [rbp - 0x10], rcx
.label_1511:
	movabs	rsi, OFFSET FLAT:block_size_args
	movabs	rax, OFFSET FLAT:block_size_opts
	mov	ecx, 4
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rdx, rax
	call	argmatch
	xor	r8d, r8d
	mov	r9d, eax
	mov	dword ptr [rbp - 0x24], r9d
	cmp	r8d, r9d
	jg	.label_1496
	movsxd	rax, dword ptr [rbp - 0x24]
	mov	ecx,  dword ptr [dword ptr [+ (rax * 4) + block_size_opts]]
	or	ecx, dword ptr [rbp - 0x28]
	mov	dword ptr [rbp - 0x28], ecx
	mov	rax, qword ptr [rbp - 0x18]
	mov	qword ptr [rax], 1
	jmp	.label_1501
.label_1494:
	jmp	.label_1509
.label_1509:
	mov	rax, qword ptr [rbp - 0x10]
	add	rax, 1
	mov	qword ptr [rbp - 0x10], rax
	jmp	.label_1510
	.section	.text
	.align	32
	#Procedure 0x4116d0
	.globl rotl8
	.type rotl8, @function
rotl8:

	push	rbp
	mov	rbp, rsp
	mov	al, dil
	mov	edi, 8
	mov	byte ptr [rbp - 1], al
	mov	dword ptr [rbp - 8], esi
	movzx	esi, byte ptr [rbp - 1]
	mov	ecx, dword ptr [rbp - 8]
	shl	esi, cl
	movzx	edx, byte ptr [rbp - 1]
	sub	edi, dword ptr [rbp - 8]
	mov	ecx, edi
	sar	edx, cl
	or	esi, edx
	and	esi, 0xff
	mov	al, sil
	movzx	eax, al
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x411706
	.globl sub_411706
	.type sub_411706, @function
sub_411706:

	nop	word ptr cs:[rax + rax]
.label_1512:
	jmp	.label_1518
.label_1518:
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax + 8]
	mov	qword ptr [rbp - 0x10], rax
	jmp	.label_1519
	.section	.text
	.align	32
	#Procedure 0x411726

	.globl getuser
	.type getuser, @function
getuser:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x40
	mov	dword ptr [rbp - 4], edi
	mov	qword ptr [rbp - 0x18], 0
	mov	rax,  qword ptr [word ptr [user_alist]]
	mov	qword ptr [rbp - 0x10], rax
.label_1519:
	cmp	qword ptr [rbp - 0x10], 0
	je	.label_1513
	mov	rax, qword ptr [rbp - 0x10]
	mov	ecx, dword ptr [rax]
	cmp	ecx, dword ptr [rbp - 4]
	jne	.label_1512
	mov	rax, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 0x18], rax
	jmp	.label_1513
.label_1513:
	cmp	qword ptr [rbp - 0x18], 0
	jne	.label_1516
	mov	edi, dword ptr [rbp - 4]
	call	getpwuid
	mov	qword ptr [rbp - 0x20], rax
	cmp	qword ptr [rbp - 0x20], 0
	je	.label_1520
	mov	rax, qword ptr [rbp - 0x20]
	mov	rax, qword ptr [rax]
	mov	qword ptr [rbp - 0x30], rax
	jmp	.label_1517
.label_1520:
	movabs	rax, OFFSET FLAT:label_662
	mov	qword ptr [rbp - 0x30], rax
	jmp	.label_1517
.label_1517:
	mov	rax, qword ptr [rbp - 0x30]
	mov	qword ptr [rbp - 0x28], rax
	mov	rdi, qword ptr [rbp - 0x28]
	call	strlen
	add	rax, 1
	add	rax, 0x17
	and	rax, 0xfffffffffffffff8
	mov	rdi, rax
	call	xmalloc
	mov	qword ptr [rbp - 0x18], rax
	mov	ecx, dword ptr [rbp - 4]
	mov	rax, qword ptr [rbp - 0x18]
	mov	dword ptr [rax], ecx
	mov	rax, qword ptr [rbp - 0x18]
	add	rax, 0x10
	mov	rsi, qword ptr [rbp - 0x28]
	mov	rdi, rax
	call	strcpy
	mov	rsi,  qword ptr [word ptr [user_alist]]
	mov	rdi, qword ptr [rbp - 0x18]
	mov	qword ptr [rdi + 8], rsi
	mov	rsi, qword ptr [rbp - 0x18]
	mov	qword ptr [word ptr [user_alist]],  rsi
	mov	qword ptr [rbp - 0x38], rax
.label_1516:
	mov	rax, qword ptr [rbp - 0x18]
	movsx	ecx, byte ptr [rax + 0x10]
	cmp	ecx, 0
	je	.label_1515
	mov	rax, qword ptr [rbp - 0x18]
	add	rax, 0x10
	mov	qword ptr [rbp - 0x40], rax
	jmp	.label_1514
.label_1515:
	xor	eax, eax
	mov	ecx, eax
	mov	qword ptr [rbp - 0x40], rcx
	jmp	.label_1514
.label_1514:
	mov	rax, qword ptr [rbp - 0x40]
	add	rsp, 0x40
	pop	rbp
	ret	
.label_1522:
	mov	byte ptr [rbp - 1], 0
.label_1523:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x41185e
	.globl sub_41185e
	.type sub_41185e, @function
sub_41185e:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x41186c
	.globl c_islower
	.type c_islower, @function
c_islower:

	push	rbp
	mov	rbp, rsp
	mov	dword ptr [rbp - 8], edi
	add	edi, -0x61
	sub	edi, 0x19
	mov	dword ptr [rbp - 0xc], edi
	ja	.label_1522
	jmp	.label_1521
.label_1521:
	mov	byte ptr [rbp - 1], 1
	jmp	.label_1523
	.section	.text
	.align	32
	#Procedure 0x411890
	.globl getcon
	.type getcon, @function
getcon:

	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	mov	qword ptr [rbp - 8], rdi
	call	__errno_location
	mov	ecx, 0xffffffff
	mov	dword ptr [rax], 0x5f
	mov	eax, ecx
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x4118b4
	.globl sub_4118b4
	.type sub_4118b4, @function
sub_4118b4:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4118c0

	.globl hash_get_n_entries
	.type hash_get_n_entries, @function
hash_get_n_entries:
	push	rbp
	mov	rbp, rsp
	mov	qword ptr [rbp - 8], rdi
	mov	rdi, qword ptr [rbp - 8]
	mov	rax, qword ptr [rdi + 0x20]
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x4118d2
	.globl sub_4118d2
	.type sub_4118d2, @function
sub_4118d2:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4118e0

	.globl is_colored
	.type is_colored, @function
is_colored:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	mov	al, 1
	movabs	rcx, OFFSET FLAT:color_indicator
	mov	dword ptr [rbp - 4], edi
	mov	edi, dword ptr [rbp - 4]
	mov	edx, edi
	shl	rdx, 4
	mov	rsi, rcx
	add	rsi, rdx
	mov	rdx, qword ptr [rsi]
	mov	qword ptr [rbp - 0x10], rdx
	mov	edi, dword ptr [rbp - 4]
	mov	edx, edi
	shl	rdx, 4
	add	rcx, rdx
	mov	rcx, qword ptr [rcx + 8]
	mov	qword ptr [rbp - 0x18], rcx
	cmp	qword ptr [rbp - 0x10], 0
	mov	byte ptr [rbp - 0x19], al
	je	.label_1524
	cmp	qword ptr [rbp - 0x10], 1
	jne	.label_1528
	movabs	rsi, OFFSET FLAT:label_1527
	mov	eax, 1
	mov	edx, eax
	mov	rdi, qword ptr [rbp - 0x18]
	call	strncmp
	mov	cl, 1
	cmp	eax, 0
	mov	byte ptr [rbp - 0x19], cl
	je	.label_1524
.label_1528:
	xor	eax, eax
	mov	cl, al
	cmp	qword ptr [rbp - 0x10], 2
	mov	byte ptr [rbp - 0x1a], cl
	jne	.label_1525
	movabs	rsi, OFFSET FLAT:label_1526
	mov	eax, 2
	mov	edx, eax
	mov	rdi, qword ptr [rbp - 0x18]
	call	strncmp
	cmp	eax, 0
	sete	cl
	mov	byte ptr [rbp - 0x1a], cl
.label_1525:
	mov	al, byte ptr [rbp - 0x1a]
	mov	byte ptr [rbp - 0x19], al
.label_1524:
	mov	al, byte ptr [rbp - 0x19]
	xor	al, 0xff
	and	al, 1
	movzx	eax, al
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x4119ad
	.globl sub_4119ad
	.type sub_4119ad, @function
sub_4119ad:

	nop	dword ptr [rax]
.label_1558:
	test	byte ptr [rbp - 0x11], 1
	je	.label_1548
	mov	dword ptr [rbp - 0x34], 5
	jmp	.label_1531
.label_2926:
	mov	dword ptr [rbp - 0x34], 0
	mov	rax, qword ptr [rbp - 0x40]
	movsx	ecx, byte ptr [rax]
	cmp	ecx, 0x40
	jl	.label_1552
	mov	rax, qword ptr [rbp - 0x40]
	movsx	ecx, byte ptr [rax]
	cmp	ecx, 0x7e
	jg	.label_1552
	mov	rax, qword ptr [rbp - 0x40]
	mov	rcx, rax
	add	rcx, 1
	mov	qword ptr [rbp - 0x40], rcx
	movsx	edx, byte ptr [rax]
	and	edx, 0x1f
	mov	sil, dl
	mov	rax, qword ptr [rbp - 0x48]
	mov	rcx, rax
	add	rcx, 1
	mov	qword ptr [rbp - 0x48], rcx
	mov	byte ptr [rax], sil
	mov	rax, qword ptr [rbp - 0x30]
	add	rax, 1
	mov	qword ptr [rbp - 0x30], rax
	jmp	.label_1542
.label_3143:
	mov	byte ptr [rbp - 0x21], 0xd
	jmp	.label_1530
.label_1548:
	jmp	.label_1536
.label_1536:
	mov	rax, qword ptr [rbp - 0x40]
	mov	rcx, rax
	add	rcx, 1
	mov	qword ptr [rbp - 0x40], rcx
	mov	dl, byte ptr [rax]
	mov	rax, qword ptr [rbp - 0x48]
	mov	rcx, rax
	add	rcx, 1
	mov	qword ptr [rbp - 0x48], rcx
	mov	byte ptr [rax], dl
	mov	rax, qword ptr [rbp - 0x30]
	add	rax, 1
	mov	qword ptr [rbp - 0x30], rax
.label_1531:
	jmp	.label_1535
.label_2925:
	mov	rax, qword ptr [rbp - 0x40]
	movsx	ecx, byte ptr [rax]
	mov	edx, ecx
	add	edx, -0x30
	sub	edx, 0xa
	mov	dword ptr [rbp - 0x80], ecx
	mov	dword ptr [rbp - 0x84], edx
	jb	.label_1556
	jmp	.label_1533
.label_1533:
	mov	eax, dword ptr [rbp - 0x80]
	add	eax, -0x41
	sub	eax, 6
	mov	dword ptr [rbp - 0x88], eax
	jb	.label_1534
	jmp	.label_1544
.label_1544:
	mov	eax, dword ptr [rbp - 0x80]
	add	eax, -0x61
	sub	eax, 6
	mov	dword ptr [rbp - 0x8c], eax
	jb	.label_1546
	jmp	.label_1549
.label_3139:
	mov	byte ptr [rbp - 0x21], 8
	jmp	.label_1530
.label_1541:
	mov	dword ptr [rbp - 0x34], 4
	mov	rax, qword ptr [rbp - 0x40]
	add	rax, 1
	mov	qword ptr [rbp - 0x40], rax
	jmp	.label_1531
.label_3141:
	mov	byte ptr [rbp - 0x21], 0xc
	jmp	.label_1530
.label_3134:
	mov	dword ptr [rbp - 0x34], 2
	mov	rax, qword ptr [rbp - 0x40]
	movsx	ecx, byte ptr [rax]
	sub	ecx, 0x30
	mov	dl, cl
	mov	byte ptr [rbp - 0x21], dl
	jmp	.label_1530
.label_1552:
	mov	rax, qword ptr [rbp - 0x40]
	movsx	ecx, byte ptr [rax]
	cmp	ecx, 0x3f
	jne	.label_1532
	mov	rax, qword ptr [rbp - 0x48]
	mov	rcx, rax
	add	rcx, 1
	mov	qword ptr [rbp - 0x48], rcx
	mov	byte ptr [rax], 0x7f
	mov	rax, qword ptr [rbp - 0x30]
	add	rax, 1
	mov	qword ptr [rbp - 0x30], rax
	jmp	.label_1538
.label_1562:
	call	abort
.label_3145:
	mov	byte ptr [rbp - 0x21], 0xb
	jmp	.label_1530
.label_2922:
	mov	rax, qword ptr [rbp - 0x40]
	movsx	ecx, byte ptr [rax]
	test	ecx, ecx
	mov	dword ptr [rbp - 0x5c], ecx
	je	.label_1545
	jmp	.label_1553
.label_1553:
	mov	eax, dword ptr [rbp - 0x5c]
	sub	eax, 0x3a
	mov	dword ptr [rbp - 0x60], eax
	je	.label_1545
	jmp	.label_1557
.label_1557:
	mov	eax, dword ptr [rbp - 0x5c]
	sub	eax, 0x3d
	mov	dword ptr [rbp - 0x64], eax
	je	.label_1558
	jmp	.label_1529
.label_1529:
	mov	eax, dword ptr [rbp - 0x5c]
	sub	eax, 0x5c
	mov	dword ptr [rbp - 0x68], eax
	je	.label_1560
	jmp	.label_1537
.label_1537:
	mov	eax, dword ptr [rbp - 0x5c]
	sub	eax, 0x5e
	mov	dword ptr [rbp - 0x6c], eax
	je	.label_1541
	jmp	.label_1536
.label_3140:
	mov	byte ptr [rbp - 0x21], 0x1b
	jmp	.label_1530
.label_3136:
	mov	dword ptr [rbp - 0x34], 3
	mov	byte ptr [rbp - 0x21], 0
	jmp	.label_1530
.label_2923:
	mov	rax, qword ptr [rbp - 0x40]
	movsx	ecx, byte ptr [rax]
	mov	eax, ecx
	sub	ecx, 0x78
	mov	qword ptr [rbp - 0x78], rax
	mov	dword ptr [rbp - 0x7c], ecx
	ja	.label_1540
	mov	rax, qword ptr [rbp - 0x78]
	mov	rcx,  qword ptr [word ptr [+ (rax * 8) + label_1555]]
	jmp	rcx
.label_3138:
	mov	byte ptr [rbp - 0x21], 7
	jmp	.label_1530
.label_3137:
	mov	byte ptr [rbp - 0x21], 0x20
	jmp	.label_1530
.label_1534:
	movsx	eax, byte ptr [rbp - 0x21]
	shl	eax, 4
	mov	rcx, qword ptr [rbp - 0x40]
	mov	rdx, rcx
	add	rdx, 1
	mov	qword ptr [rbp - 0x40], rdx
	movsx	esi, byte ptr [rcx]
	sub	esi, 0x41
	add	eax, esi
	add	eax, 0xa
	mov	dil, al
	mov	byte ptr [rbp - 0x21], dil
	jmp	.label_1551
	.section	.text
	.align	32
	#Procedure 0x411c2c

	.globl get_funky_string
	.type get_funky_string, @function
get_funky_string:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x90
	mov	al, dl
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	and	al, 1
	mov	byte ptr [rbp - 0x11], al
	mov	qword ptr [rbp - 0x20], rcx
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rcx]
	mov	qword ptr [rbp - 0x40], rcx
	mov	rcx, qword ptr [rbp - 8]
	mov	rcx, qword ptr [rcx]
	mov	qword ptr [rbp - 0x48], rcx
	mov	qword ptr [rbp - 0x30], 0
	mov	byte ptr [rbp - 0x21], 0
	mov	dword ptr [rbp - 0x34], 0
.label_1561:
	cmp	dword ptr [rbp - 0x34], 5
	jae	.label_1559
	mov	eax, dword ptr [rbp - 0x34]
	mov	ecx, eax
	mov	rdx, rcx
	sub	rdx, 4
	mov	qword ptr [rbp - 0x50], rcx
	mov	qword ptr [rbp - 0x58], rdx
	ja	.label_1562
	mov	rax, qword ptr [rbp - 0x50]
	mov	rcx,  qword ptr [word ptr [+ (rax * 8) + label_1539]]
	jmp	rcx
.label_1546:
	movsx	eax, byte ptr [rbp - 0x21]
	shl	eax, 4
	mov	rcx, qword ptr [rbp - 0x40]
	mov	rdx, rcx
	add	rdx, 1
	mov	qword ptr [rbp - 0x40], rdx
	movsx	esi, byte ptr [rcx]
	sub	esi, 0x61
	add	eax, esi
	add	eax, 0xa
	mov	dil, al
	mov	byte ptr [rbp - 0x21], dil
	jmp	.label_1551
.label_1556:
	movsx	eax, byte ptr [rbp - 0x21]
	shl	eax, 4
	mov	rcx, qword ptr [rbp - 0x40]
	mov	rdx, rcx
	add	rdx, 1
	mov	qword ptr [rbp - 0x40], rdx
	movsx	esi, byte ptr [rcx]
	sub	esi, 0x30
	add	eax, esi
	mov	dil, al
	mov	byte ptr [rbp - 0x21], dil
	jmp	.label_1551
.label_1535:
	jmp	.label_1561
.label_3133:
	mov	dword ptr [rbp - 0x34], 6
	jmp	.label_1530
.label_1559:
	mov	rax, qword ptr [rbp - 0x48]
	mov	rcx, qword ptr [rbp - 8]
	mov	qword ptr [rcx], rax
	mov	rax, qword ptr [rbp - 0x40]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	qword ptr [rcx], rax
	mov	rax, qword ptr [rbp - 0x30]
	mov	rcx, qword ptr [rbp - 0x20]
	mov	qword ptr [rcx], rax
	cmp	dword ptr [rbp - 0x34], 6
	setne	dl
	and	dl, 1
	movzx	eax, dl
	add	rsp, 0x90
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x411d44
	.globl sub_411d44
	.type sub_411d44, @function
sub_411d44:

	nop	word ptr cs:[rax + rax]
.label_1540:
	mov	rax, qword ptr [rbp - 0x40]
	mov	cl, byte ptr [rax]
	mov	byte ptr [rbp - 0x21], cl
.label_1530:
	cmp	dword ptr [rbp - 0x34], 1
	jne	.label_1554
	mov	al, byte ptr [rbp - 0x21]
	mov	rcx, qword ptr [rbp - 0x48]
	mov	rdx, rcx
	add	rdx, 1
	mov	qword ptr [rbp - 0x48], rdx
	mov	byte ptr [rcx], al
	mov	rcx, qword ptr [rbp - 0x30]
	add	rcx, 1
	mov	qword ptr [rbp - 0x30], rcx
	mov	dword ptr [rbp - 0x34], 0
.label_1554:
	mov	rax, qword ptr [rbp - 0x40]
	add	rax, 1
	mov	qword ptr [rbp - 0x40], rax
	jmp	.label_1535
.label_2924:
	mov	rax, qword ptr [rbp - 0x40]
	movsx	ecx, byte ptr [rax]
	cmp	ecx, 0x30
	jl	.label_1543
	mov	rax, qword ptr [rbp - 0x40]
	movsx	ecx, byte ptr [rax]
	cmp	ecx, 0x37
	jle	.label_1547
.label_1543:
	mov	al, byte ptr [rbp - 0x21]
	mov	rcx, qword ptr [rbp - 0x48]
	mov	rdx, rcx
	add	rdx, 1
	mov	qword ptr [rbp - 0x48], rdx
	mov	byte ptr [rcx], al
	mov	rcx, qword ptr [rbp - 0x30]
	add	rcx, 1
	mov	qword ptr [rbp - 0x30], rcx
	mov	dword ptr [rbp - 0x34], 0
	jmp	.label_1550
.label_1549:
	mov	al, byte ptr [rbp - 0x21]
	mov	rcx, qword ptr [rbp - 0x48]
	mov	rdx, rcx
	add	rdx, 1
	mov	qword ptr [rbp - 0x48], rdx
	mov	byte ptr [rcx], al
	mov	rcx, qword ptr [rbp - 0x30]
	add	rcx, 1
	mov	qword ptr [rbp - 0x30], rcx
	mov	dword ptr [rbp - 0x34], 0
.label_1551:
	jmp	.label_1535
.label_3144:
	mov	byte ptr [rbp - 0x21], 9
	jmp	.label_1530
.label_1545:
	mov	dword ptr [rbp - 0x34], 5
	jmp	.label_1531
.label_1560:
	mov	dword ptr [rbp - 0x34], 1
	mov	rax, qword ptr [rbp - 0x40]
	add	rax, 1
	mov	qword ptr [rbp - 0x40], rax
	jmp	.label_1531
.label_1532:
	mov	dword ptr [rbp - 0x34], 6
.label_1538:
	jmp	.label_1542
.label_1542:
	jmp	.label_1535
.label_1547:
	movsx	eax, byte ptr [rbp - 0x21]
	shl	eax, 3
	mov	rcx, qword ptr [rbp - 0x40]
	mov	rdx, rcx
	add	rdx, 1
	mov	qword ptr [rbp - 0x40], rdx
	movsx	esi, byte ptr [rcx]
	sub	esi, 0x30
	add	eax, esi
	mov	dil, al
	mov	byte ptr [rbp - 0x21], dil
.label_1550:
	jmp	.label_1535
.label_3142:
	mov	byte ptr [rbp - 0x21], 0xa
	jmp	.label_1530
.label_3135:
	mov	byte ptr [rbp - 0x21], 0x7f
	jmp	.label_1530
	.section	.text
	.align	32
	#Procedure 0x411e90

	.globl wc_ensure_printable
	.type wc_ensure_printable, @function
wc_ensure_printable:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	mov	qword ptr [rbp - 8], rdi
	mov	byte ptr [rbp - 9], 0
	mov	rdi, qword ptr [rbp - 8]
	mov	qword ptr [rbp - 0x18], rdi
.label_1563:
	mov	rax, qword ptr [rbp - 0x18]
	cmp	dword ptr [rax], 0
	je	.label_1564
	mov	rax, qword ptr [rbp - 0x18]
	mov	edi, dword ptr [rax]
	call	iswprint
	cmp	eax, 0
	jne	.label_1565
	mov	rax, qword ptr [rbp - 0x18]
	mov	dword ptr [rax], 0xfffd
	mov	byte ptr [rbp - 9], 1
.label_1565:
	mov	rax, qword ptr [rbp - 0x18]
	add	rax, 4
	mov	qword ptr [rbp - 0x18], rax
	jmp	.label_1563
.label_1564:
	mov	al, byte ptr [rbp - 9]
	and	al, 1
	movzx	eax, al
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x411ef6
	.globl sub_411ef6
	.type sub_411ef6, @function
sub_411ef6:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x411f00

	.globl x2realloc
	.type x2realloc, @function
x2realloc:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	mov	eax, 1
	mov	edx, eax
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	rdi, qword ptr [rbp - 8]
	mov	rsi, qword ptr [rbp - 0x10]
	call	x2nrealloc
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x411f2a
	.globl sub_411f2a
	.type sub_411f2a, @function
sub_411f2a:

	nop	word ptr [rax + rax]
.label_1575:
	movabs	rax, OFFSET FLAT:label_1566
	mov	qword ptr [rbp - 0x38], rax
	jmp	.label_1567
	.section	.text
	.align	32
	#Procedure 0x411f43

	.globl xstrtol_error
	.type xstrtol_error, @function
xstrtol_error:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x60
	mov	al, dl
	mov	dword ptr [rbp - 4], edi
	mov	dword ptr [rbp - 8], esi
	mov	byte ptr [rbp - 9], al
	mov	qword ptr [rbp - 0x18], rcx
	mov	qword ptr [rbp - 0x20], r8
	mov	dword ptr [rbp - 0x24], r9d
	mov	qword ptr [word ptr [rbp - 48]], OFFSET FLAT:label_1570
	mov	edx, dword ptr [rbp - 4]
	mov	esi, edx
	sub	esi, 1
	mov	dword ptr [rbp - 0x48], edx
	mov	dword ptr [rbp - 0x4c], esi
	je	.label_1571
	jmp	.label_1578
.label_1578:
	mov	eax, dword ptr [rbp - 0x48]
	add	eax, -2
	sub	eax, 2
	mov	dword ptr [rbp - 0x50], eax
	jb	.label_1576
	jmp	.label_1572
.label_1572:
	mov	eax, dword ptr [rbp - 0x48]
	sub	eax, 4
	mov	dword ptr [rbp - 0x54], eax
	je	.label_1575
	jmp	.label_1574
.label_1574:
	call	abort
.label_1576:
	movabs	rax, OFFSET FLAT:label_1577
	mov	qword ptr [rbp - 0x38], rax
	jmp	.label_1567
.label_1568:
	movsxd	rax, dword ptr [rbp - 8]
	shl	rax, 5
	add	rax, qword ptr [rbp - 0x18]
	mov	rax, qword ptr [rax]
	mov	qword ptr [rbp - 0x40], rax
.label_1569:
	mov	edi, dword ptr [rbp - 0x24]
	mov	rax, qword ptr [rbp - 0x38]
	mov	dword ptr [rbp - 0x58], edi
	mov	rdi, rax
	call	gettext
	xor	esi, esi
	mov	rcx, qword ptr [rbp - 0x30]
	mov	r8, qword ptr [rbp - 0x40]
	mov	r9, qword ptr [rbp - 0x20]
	mov	edi, dword ptr [rbp - 0x58]
	mov	rdx, rax
	mov	al, 0
	call	error
	add	rsp, 0x60
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x41200c
	.globl sub_41200c
	.type sub_41200c, @function
sub_41200c:

	nop	word ptr cs:[rax + rax]
.label_1571:
	movabs	rax, OFFSET FLAT:label_1573
	mov	qword ptr [rbp - 0x38], rax
.label_1567:
	cmp	dword ptr [rbp - 8], 0
	jge	.label_1568
	lea	rax, [rbp - 0x42]
	xor	ecx, ecx
	mov	edx, ecx
	mov	ecx, dword ptr [rbp - 8]
	mov	rsi, qword ptr [rbp - 0x30]
	movsxd	rdi, ecx
	sub	rdx, rdi
	add	rsi, rdx
	mov	qword ptr [rbp - 0x30], rsi
	mov	r8b, byte ptr [rbp - 9]
	mov	byte ptr [rbp - 0x42], r8b
	mov	byte ptr [rbp - 0x41], 0
	mov	qword ptr [rbp - 0x40], rax
	jmp	.label_1569
	.section	.text
	.align	32
	#Procedure 0x412060
	.globl quotearg_custom_mem
	.type quotearg_custom_mem, @function
quotearg_custom_mem:

	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	xor	eax, eax
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	qword ptr [rbp - 0x18], rdx
	mov	qword ptr [rbp - 0x20], rcx
	mov	rsi, qword ptr [rbp - 8]
	mov	rdx, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	r8, qword ptr [rbp - 0x20]
	mov	edi, eax
	call	quotearg_n_custom_mem
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x412097
	.globl sub_412097
	.type sub_412097, @function
sub_412097:

	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4120a0

	.globl rev_strcmp_mtime
	.type rev_strcmp_mtime, @function
rev_strcmp_mtime:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	movabs	rdx, OFFSET FLAT:strcmp
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	rsi, qword ptr [rbp - 0x10]
	mov	rdi, qword ptr [rbp - 8]
	mov	qword ptr [rbp - 0x18], rdi
	mov	rdi, rsi
	mov	rsi, qword ptr [rbp - 0x18]
	call	cmp_mtime
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x4120d8
	.globl sub_4120d8
	.type sub_4120d8, @function
sub_4120d8:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4120e0

	.globl human_options
	.type human_options, @function
human_options:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	qword ptr [rbp - 0x18], rdx
	mov	rdi, qword ptr [rbp - 8]
	mov	rsi, qword ptr [rbp - 0x18]
	mov	rdx, qword ptr [rbp - 0x10]
	call	humblock
	mov	dword ptr [rbp - 0x1c], eax
	mov	rdx, qword ptr [rbp - 0x18]
	cmp	qword ptr [rdx], 0
	jne	.label_1579
	call	default_block_size
	mov	rcx, qword ptr [rbp - 0x18]
	mov	qword ptr [rcx], rax
	mov	dword ptr [rbp - 0x1c], 4
.label_1579:
	mov	eax, dword ptr [rbp - 0x1c]
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x412132
	.globl sub_412132
	.type sub_412132, @function
sub_412132:

	nop	word ptr cs:[rax + rax]
.label_1582:
	cmp	dword ptr [dword ptr [exit_status]],  0
	jne	.label_1580
	mov	dword ptr [dword ptr [exit_status]],  1
.label_1580:
	jmp	.label_1581
.label_1581:
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x412160
	.globl sub_412160
	.type sub_412160, @function
sub_412160:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x41216a

	.globl set_exit_status
	.type set_exit_status, @function
set_exit_status:
	push	rbp
	mov	rbp, rsp
	mov	al, dil
	and	al, 1
	mov	byte ptr [rbp - 1], al
	test	byte ptr [rbp - 1], 1
	je	.label_1582
	mov	dword ptr [dword ptr [exit_status]],  2
	jmp	.label_1581
.label_1586:
	xor	eax, eax
	mov	ecx, eax
	mov	qword ptr [rbp - 0x18], rcx
	jmp	.label_1583
.label_1583:
	mov	rax, qword ptr [rbp - 0x18]
	mov	rdi, rax
	call	setenv_TZ
	cmp	eax, 0
	je	.label_1585
	mov	byte ptr [rbp - 1], 0
	jmp	.label_1584
	.section	.text
	.align	32
	#Procedure 0x4121bb

	.globl change_env
	.type change_env, @function
change_env:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	mov	qword ptr [rbp - 0x10], rdi
	mov	rdi, qword ptr [rbp - 0x10]
	movsx	eax, byte ptr [rdi + 8]
	cmp	eax, 0
	je	.label_1586
	mov	rax, qword ptr [rbp - 0x10]
	add	rax, 9
	mov	qword ptr [rbp - 0x18], rax
	jmp	.label_1583
.label_1585:
	call	tzset
	mov	byte ptr [rbp - 1], 1
.label_1584:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x412200

	.globl dev_ino_hash
	.type dev_ino_hash, @function
dev_ino_hash:
	push	rbp
	mov	rbp, rsp
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	rsi, qword ptr [rbp - 8]
	mov	qword ptr [rbp - 0x18], rsi
	mov	rsi, qword ptr [rbp - 0x18]
	mov	rax, qword ptr [rsi]
	xor	ecx, ecx
	mov	edx, ecx
	div	qword ptr [rbp - 0x10]
	mov	rax, rdx
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x412228
	.globl sub_412228
	.type sub_412228, @function
sub_412228:

	nop	dword ptr [rax + rax]
.label_1587:
	call	__errno_location
	mov	ecx, dword ptr [rax]
	mov	dword ptr [rbp - 0x54], ecx
.label_1592:
	mov	eax, dword ptr [rbp - 0x54]
	mov	rcx, qword ptr [rbp - 0x38]
	mov	rdi, qword ptr [rbp - 0x10]
	mov	dword ptr [rbp - 0x58], eax
	mov	qword ptr [rbp - 0x60], rcx
	call	quote
	movabs	rdx, OFFSET FLAT:label_1274
	mov	edi, dword ptr [rbp - 0x50]
	mov	esi, dword ptr [rbp - 0x58]
	mov	rcx, qword ptr [rbp - 0x60]
	mov	r8, rax
	mov	al, 0
	call	error
.label_1593:
	mov	rax, qword ptr [rbp - 0x48]
	add	rsp, 0x58
	pop	rbx
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x41227a
	.globl sub_41227a
	.type sub_41227a, @function
sub_41227a:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x412284

	.globl xnumtoumax
	.type xnumtoumax, @function
xnumtoumax:
	push	rbp
	mov	rbp, rsp
	push	rbx
	sub	rsp, 0x58
	mov	eax, dword ptr [rbp + 0x10]
	xor	r10d, r10d
	mov	r11d, r10d
	lea	rbx, [rbp - 0x48]
	mov	qword ptr [rbp - 0x10], rdi
	mov	dword ptr [rbp - 0x14], esi
	mov	qword ptr [rbp - 0x20], rdx
	mov	qword ptr [rbp - 0x28], rcx
	mov	qword ptr [rbp - 0x30], r8
	mov	qword ptr [rbp - 0x38], r9
	mov	dword ptr [rbp - 0x3c], eax
	mov	rdi, qword ptr [rbp - 0x10]
	mov	edx, dword ptr [rbp - 0x14]
	mov	r8, qword ptr [rbp - 0x30]
	mov	rsi, r11
	mov	rcx, rbx
	call	xstrtoumax
	mov	dword ptr [rbp - 0x40], eax
	cmp	dword ptr [rbp - 0x40], 0
	jne	.label_1589
	mov	rax, qword ptr [rbp - 0x48]
	cmp	rax, qword ptr [rbp - 0x20]
	jb	.label_1594
	mov	rax, qword ptr [rbp - 0x28]
	cmp	rax, qword ptr [rbp - 0x48]
	jae	.label_1597
.label_1594:
	mov	dword ptr [rbp - 0x40], 1
	cmp	qword ptr [rbp - 0x48], 0x3fffffff
	jbe	.label_1600
	call	__errno_location
	mov	dword ptr [rax], 0x4b
	jmp	.label_1591
.label_1600:
	call	__errno_location
	mov	dword ptr [rax], 0x22
.label_1591:
	jmp	.label_1597
.label_1597:
	jmp	.label_1590
.label_1595:
	mov	eax, 1
	mov	dword ptr [rbp - 0x4c], eax
	jmp	.label_1596
.label_1596:
	mov	eax, dword ptr [rbp - 0x4c]
	mov	dword ptr [rbp - 0x50], eax
	call	__errno_location
	cmp	dword ptr [rax], 0x16
	jne	.label_1587
	xor	eax, eax
	mov	dword ptr [rbp - 0x54], eax
	jmp	.label_1592
.label_1589:
	cmp	dword ptr [rbp - 0x40], 1
	jne	.label_1598
	call	__errno_location
	mov	dword ptr [rax], 0x4b
	jmp	.label_1588
.label_1598:
	cmp	dword ptr [rbp - 0x40], 3
	jne	.label_1599
	call	__errno_location
	mov	dword ptr [rax], 0
.label_1599:
	jmp	.label_1588
.label_1588:
	jmp	.label_1590
.label_1590:
	cmp	dword ptr [rbp - 0x40], 0
	je	.label_1593
	cmp	dword ptr [rbp - 0x3c], 0
	je	.label_1595
	mov	eax, dword ptr [rbp - 0x3c]
	mov	dword ptr [rbp - 0x4c], eax
	jmp	.label_1596
.label_1606:
	lea	rdi, [rbp - 0x620]
	call	abmon_init
	test	al, 1
	jne	.label_1616
	jmp	.label_1602
.label_1616:
	mov	dword ptr [rbp - 0x624], 0
.label_1617:
	cmp	dword ptr [rbp - 0x624], 2
	jge	.label_1607
	movsxd	rax, dword ptr [rbp - 0x624]
	mov	rax,  qword ptr [word ptr [+ (rax * 8) + long_time_format]]
	mov	qword ptr [rbp - 0x630], rax
	mov	dword ptr [rbp - 0x634], 0
.label_1609:
	cmp	dword ptr [rbp - 0x634], 0xc
	jge	.label_1601
	movabs	rax, OFFSET FLAT:abformat
	movsxd	rcx, dword ptr [rbp - 0x634]
	movsxd	rdx, dword ptr [rbp - 0x624]
	imul	rdx, rdx, 0x600
	add	rax, rdx
	shl	rcx, 7
	add	rax, rcx
	mov	qword ptr [rbp - 0x640], rax
	movsxd	rax, dword ptr [rbp - 0x624]
	cmp	qword ptr [rbp + rax*8 - 0x10], 0
	jne	.label_1604
	mov	eax, 0x80
	mov	esi, eax
	movabs	rdx, OFFSET FLAT:label_1272
	mov	rdi, qword ptr [rbp - 0x640]
	mov	rcx, qword ptr [rbp - 0x630]
	mov	al, 0
	call	snprintf
	mov	dword ptr [rbp - 0x644], eax
	jmp	.label_1613
.label_1607:
	mov	byte ptr [byte ptr [use_abformat]],  1
.label_1602:
	add	rsp, 0x660
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x412492
	.globl sub_412492
	.type sub_412492, @function
sub_412492:

	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x41249b

	.globl abformat_init
	.type abformat_init, @function
abformat_init:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x660
	mov	dword ptr [rbp - 0x14], 0
.label_1603:
	cmp	dword ptr [rbp - 0x14], 2
	jge	.label_1611
	movsxd	rax, dword ptr [rbp - 0x14]
	mov	rdi,  qword ptr [word ptr [+ (rax * 8) + long_time_format]]
	call	first_percent_b
	movsxd	rdi, dword ptr [rbp - 0x14]
	mov	qword ptr [rbp + rdi*8 - 0x10], rax
	mov	eax, dword ptr [rbp - 0x14]
	add	eax, 1
	mov	dword ptr [rbp - 0x14], eax
	jmp	.label_1603
.label_1615:
	jmp	.label_1608
.label_1608:
	mov	eax, dword ptr [rbp - 0x634]
	add	eax, 1
	mov	dword ptr [rbp - 0x634], eax
	jmp	.label_1609
.label_1601:
	jmp	.label_1614
.label_1614:
	mov	eax, dword ptr [rbp - 0x624]
	add	eax, 1
	mov	dword ptr [rbp - 0x624], eax
	jmp	.label_1617
.label_1611:
	cmp	qword ptr [rbp - 0x10], 0
	jne	.label_1606
	cmp	qword ptr [rbp - 8], 0
	jne	.label_1606
	jmp	.label_1602
.label_1604:
	movsxd	rax, dword ptr [rbp - 0x624]
	mov	rax, qword ptr [rbp + rax*8 - 0x10]
	mov	rcx, qword ptr [rbp - 0x630]
	sub	rax, rcx
	cmp	rax, 0x80
	jle	.label_1610
	jmp	.label_1602
.label_1610:
	mov	eax, 0x80
	mov	esi, eax
	movabs	rdx, OFFSET FLAT:label_1612
	lea	rcx, [rbp - 0x620]
	movsxd	rdi, dword ptr [rbp - 0x624]
	mov	rdi, qword ptr [rbp + rdi*8 - 0x10]
	mov	r8, qword ptr [rbp - 0x630]
	sub	rdi, r8
	mov	eax, edi
	mov	dword ptr [rbp - 0x648], eax
	mov	rdi, qword ptr [rbp - 0x640]
	mov	eax, dword ptr [rbp - 0x648]
	mov	r8, qword ptr [rbp - 0x630]
	movsxd	r9, dword ptr [rbp - 0x634]
	shl	r9, 7
	add	rcx, r9
	movsxd	r9, dword ptr [rbp - 0x624]
	mov	r9, qword ptr [rbp + r9*8 - 0x10]
	add	r9, 2
	mov	qword ptr [rbp - 0x650], rcx
	mov	ecx, eax
	mov	r10, qword ptr [rbp - 0x650]
	mov	qword ptr [rbp - 0x658], r9
	mov	r9, r10
	mov	r11, qword ptr [rbp - 0x658]
	mov	qword ptr [rsp], r11
	mov	al, 0
	call	snprintf
	mov	dword ptr [rbp - 0x644], eax
.label_1613:
	xor	eax, eax
	cmp	eax, dword ptr [rbp - 0x644]
	jg	.label_1605
	cmp	dword ptr [rbp - 0x644], 0x80
	jl	.label_1615
.label_1605:
	jmp	.label_1602
	.section	.text
	.align	32
	#Procedure 0x412610

	.globl needs_quoting
	.type needs_quoting, @function
needs_quoting:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x30
	mov	eax, 2
	mov	esi, eax
	mov	rcx, -1
	lea	rdx, [rbp - 0xa]
	mov	qword ptr [rbp - 8], rdi
	mov	rdi, qword ptr [rbp - 8]
	mov	r8,  qword ptr [word ptr [filename_quoting_options]]
	mov	qword ptr [rbp - 0x20], rdi
	mov	rdi, rdx
	mov	rdx, qword ptr [rbp - 0x20]
	call	quotearg_buffer
	mov	r9b, 1
	mov	qword ptr [rbp - 0x18], rax
	mov	rax, qword ptr [rbp - 8]
	movsx	r10d, byte ptr [rax]
	movsx	r11d, byte ptr [rbp - 0xa]
	cmp	r10d, r11d
	mov	byte ptr [rbp - 0x21], r9b
	jne	.label_1618
	mov	rdi, qword ptr [rbp - 8]
	call	strlen
	cmp	rax, qword ptr [rbp - 0x18]
	setne	cl
	mov	byte ptr [rbp - 0x21], cl
.label_1618:
	mov	al, byte ptr [rbp - 0x21]
	and	al, 1
	movzx	eax, al
	add	rsp, 0x30
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x41268c
	.globl sub_41268c
	.type sub_41268c, @function
sub_41268c:

	nop	dword ptr [rax]
.label_1620:
	jmp	.label_1619
.label_1619:
	movabs	rdx, OFFSET FLAT:xstrcoll
	mov	rax, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rdi, rax
	mov	rsi, rcx
	call	cmp_size
	mov	dword ptr [rbp - 4], eax
.label_1621:
	mov	eax, dword ptr [rbp - 4]
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x4126be
	.globl sub_4126be
	.type sub_4126be, @function
sub_4126be:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x4126c1

	.globl rev_xstrcoll_df_size
	.type rev_xstrcoll_df_size, @function
rev_xstrcoll_df_size:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 0x18], rsi
	mov	rax, qword ptr [rbp - 0x10]
	mov	rdi, rax
	call	is_linked_directory
	and	al, 1
	mov	byte ptr [rbp - 0x19], al
	mov	rdi, qword ptr [rbp - 0x18]
	call	is_linked_directory
	and	al, 1
	mov	byte ptr [rbp - 0x1a], al
	test	byte ptr [rbp - 0x19], 1
	je	.label_1622
	test	byte ptr [rbp - 0x1a], 1
	jne	.label_1622
	mov	dword ptr [rbp - 4], 0xffffffff
	jmp	.label_1621
.label_1622:
	test	byte ptr [rbp - 0x19], 1
	jne	.label_1620
	test	byte ptr [rbp - 0x1a], 1
	je	.label_1620
	mov	dword ptr [rbp - 4], 1
	jmp	.label_1621
.label_1626:
	movabs	rdi, OFFSET FLAT:label_1623
	call	gettext
	mov	qword ptr [rbp - 0x28], rax
.label_1624:
	mov	rax, qword ptr [rbp - 0x28]
	xor	edi, edi
	mov	esi, 8
	mov	qword ptr [rbp - 0x20], rax
	mov	rdx, qword ptr [rbp - 0x20]
	mov	rax, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 0x30], rdx
	mov	rdx, rax
	call	quotearg_n_style
	mov	edi, 1
	mov	rsi, qword ptr [rbp - 8]
	mov	qword ptr [rbp - 0x38], rax
	call	quote_n
	xor	edi, edi
	mov	dword ptr [rbp - 0x3c], edi
	mov	esi, dword ptr [rbp - 0x3c]
	mov	rdx, qword ptr [rbp - 0x30]
	mov	rcx, qword ptr [rbp - 0x38]
	mov	r8, rax
	mov	al, 0
	call	error
	add	rsp, 0x40
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x412798
	.globl sub_412798
	.type sub_412798, @function
sub_412798:

	nop	
	.section	.text
	.align	32
	#Procedure 0x412799

	.globl argmatch_invalid
	.type argmatch_invalid, @function
argmatch_invalid:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x40
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	qword ptr [rbp - 0x18], rdx
	cmp	qword ptr [rbp - 0x18], -1
	jne	.label_1626
	movabs	rdi, OFFSET FLAT:label_1625
	call	gettext
	mov	qword ptr [rbp - 0x28], rax
	jmp	.label_1624
	.section	.text
	.align	32
	#Procedure 0x4127d0

	.globl xstrcoll_version
	.type xstrcoll_version, @function
xstrcoll_version:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	rsi, qword ptr [rbp - 8]
	mov	rdi, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 0x18], rdi
	mov	rdi, rsi
	mov	rsi, qword ptr [rbp - 0x18]
	call	cmp_version
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x4127fe
	.globl sub_4127fe
	.type sub_4127fe, @function
sub_4127fe:

	nop	
	.section	.text
	.align	32
	#Procedure 0x412800

	.globl is_ENOTSUP
	.type is_ENOTSUP, @function
is_ENOTSUP:
	push	rbp
	mov	rbp, rsp
	mov	al, 1
	mov	dword ptr [rbp - 4], edi
	cmp	dword ptr [rbp - 4], 0x5f
	mov	byte ptr [rbp - 5], al
	je	.label_1627
	xor	eax, eax
	mov	cl, al
	mov	byte ptr [rbp - 5], cl
	jmp	.label_1627
.label_1627:
	mov	al, byte ptr [rbp - 5]
	and	al, 1
	movzx	eax, al
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x41282c
	.globl sub_41282c
	.type sub_41282c, @function
sub_41282c:

	nop	dword ptr [rax]
.label_1630:
	mov	rax, qword ptr [rbp - 0x10]
	mov	ecx, dword ptr [rax]
	and	ecx, 0xffffffef
	mov	dword ptr [rax], ecx
	mov	rax, qword ptr [rbp - 0x28]
	mov	rdx, qword ptr [rbp - 0x10]
	mov	qword ptr [rdx + 0x90], rax
	mov	dword ptr [rbp - 4], 0
	jmp	.label_1628
	.section	.text
	.align	32
	#Procedure 0x412856

	.globl rpl_fseeko
	.type rpl_fseeko, @function
rpl_fseeko:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x30
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 0x18], rsi
	mov	dword ptr [rbp - 0x1c], edx
	mov	rsi, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rsi + 0x10]
	mov	rdi, qword ptr [rbp - 0x10]
	cmp	rsi, qword ptr [rdi + 8]
	jne	.label_1629
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax + 0x28]
	mov	rcx, qword ptr [rbp - 0x10]
	cmp	rax, qword ptr [rcx + 0x20]
	jne	.label_1629
	mov	rax, qword ptr [rbp - 0x10]
	cmp	qword ptr [rax + 0x48], 0
	jne	.label_1629
	mov	rdi, qword ptr [rbp - 0x10]
	call	fileno
	mov	rsi, qword ptr [rbp - 0x18]
	mov	edx, dword ptr [rbp - 0x1c]
	mov	edi, eax
	call	lseek
	mov	qword ptr [rbp - 0x28], rax
	cmp	qword ptr [rbp - 0x28], -1
	jne	.label_1630
	mov	dword ptr [rbp - 4], 0xffffffff
	jmp	.label_1628
.label_1629:
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rbp - 0x18]
	mov	edx, dword ptr [rbp - 0x1c]
	call	fseeko
	mov	dword ptr [rbp - 4], eax
.label_1628:
	mov	eax, dword ptr [rbp - 4]
	add	rsp, 0x30
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x4128f2
	.globl sub_4128f2
	.type sub_4128f2, @function
sub_4128f2:

	nop	word ptr cs:[rax + rax]
.label_1639:
	mov	rax, qword ptr [rbp - 0x78]
	mov	rcx, qword ptr [rbp - 0x10]
	cmp	rax, qword ptr [rcx + 0x10]
	jne	.label_1631
	mov	byte ptr [rbp - 1], 1
	jmp	.label_1632
.label_1631:
	mov	eax, 0x10
	mov	esi, eax
	lea	rcx, [rbp - 0x68]
	mov	qword ptr [rbp - 0x70], rcx
	mov	rdi, qword ptr [rbp - 0x78]
	call	calloc
	mov	rcx, qword ptr [rbp - 0x70]
	mov	qword ptr [rcx], rax
	mov	rax, qword ptr [rbp - 0x70]
	cmp	qword ptr [rax], 0
	jne	.label_1634
	mov	byte ptr [rbp - 1], 0
	jmp	.label_1632
	.section	.text
	.align	32
	#Procedure 0x412951

	.globl hash_rehash
	.type hash_rehash, @function
hash_rehash:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x80
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 0x18], rsi
	mov	rdi, qword ptr [rbp - 0x18]
	mov	rsi, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rsi + 0x28]
	call	compute_bucket_size
	mov	qword ptr [rbp - 0x78], rax
	cmp	qword ptr [rbp - 0x78], 0
	jne	.label_1639
	mov	byte ptr [rbp - 1], 0
	jmp	.label_1632
.label_1638:
	mov	edx, 1
	mov	rax, qword ptr [rbp - 0x70]
	mov	rax, qword ptr [rax + 0x48]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	qword ptr [rcx + 0x48], rax
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rbp - 0x70]
	call	transfer_entries
	test	al, 1
	jne	.label_1635
	jmp	.label_1637
.label_1635:
	xor	edx, edx
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rbp - 0x70]
	call	transfer_entries
	test	al, 1
	jne	.label_1633
.label_1637:
	call	abort
.label_1634:
	xor	edx, edx
	mov	rax, qword ptr [rbp - 0x78]
	mov	rcx, qword ptr [rbp - 0x70]
	mov	qword ptr [rcx + 0x10], rax
	mov	rax, qword ptr [rbp - 0x70]
	mov	rax, qword ptr [rax]
	mov	rcx, qword ptr [rbp - 0x78]
	shl	rcx, 4
	add	rax, rcx
	mov	rcx, qword ptr [rbp - 0x70]
	mov	qword ptr [rcx + 8], rax
	mov	rax, qword ptr [rbp - 0x70]
	mov	qword ptr [rax + 0x18], 0
	mov	rax, qword ptr [rbp - 0x70]
	mov	qword ptr [rax + 0x20], 0
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax + 0x28]
	mov	rcx, qword ptr [rbp - 0x70]
	mov	qword ptr [rcx + 0x28], rax
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax + 0x30]
	mov	rcx, qword ptr [rbp - 0x70]
	mov	qword ptr [rcx + 0x30], rax
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax + 0x38]
	mov	rcx, qword ptr [rbp - 0x70]
	mov	qword ptr [rcx + 0x38], rax
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax + 0x40]
	mov	rcx, qword ptr [rbp - 0x70]
	mov	qword ptr [rcx + 0x40], rax
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax + 0x48]
	mov	rcx, qword ptr [rbp - 0x70]
	mov	qword ptr [rcx + 0x48], rax
	mov	rdi, qword ptr [rbp - 0x70]
	mov	rsi, qword ptr [rbp - 0x10]
	call	transfer_entries
	test	al, 1
	jne	.label_1636
	jmp	.label_1638
.label_1636:
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax]
	mov	rdi, rax
	call	free
	mov	rax, qword ptr [rbp - 0x70]
	mov	rax, qword ptr [rax]
	mov	rdi, qword ptr [rbp - 0x10]
	mov	qword ptr [rdi], rax
	mov	rax, qword ptr [rbp - 0x70]
	mov	rax, qword ptr [rax + 8]
	mov	rdi, qword ptr [rbp - 0x10]
	mov	qword ptr [rdi + 8], rax
	mov	rax, qword ptr [rbp - 0x70]
	mov	rax, qword ptr [rax + 0x10]
	mov	rdi, qword ptr [rbp - 0x10]
	mov	qword ptr [rdi + 0x10], rax
	mov	rax, qword ptr [rbp - 0x70]
	mov	rax, qword ptr [rax + 0x18]
	mov	rdi, qword ptr [rbp - 0x10]
	mov	qword ptr [rdi + 0x18], rax
	mov	rax, qword ptr [rbp - 0x70]
	mov	rax, qword ptr [rax + 0x48]
	mov	rdi, qword ptr [rbp - 0x10]
	mov	qword ptr [rdi + 0x48], rax
	mov	byte ptr [rbp - 1], 1
	jmp	.label_1632
.label_1633:
	mov	rax, qword ptr [rbp - 0x70]
	mov	rax, qword ptr [rax]
	mov	rdi, rax
	call	free
	mov	byte ptr [rbp - 1], 0
.label_1632:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	add	rsp, 0x80
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x412b0c
	.globl sub_412b0c
	.type sub_412b0c, @function
sub_412b0c:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x412b10

	.globl emit_mandatory_arg_note
	.type emit_mandatory_arg_note, @function
emit_mandatory_arg_note:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	movabs	rdi, OFFSET FLAT:label_1640
	call	gettext
	mov	rsi,  qword ptr [word ptr [stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	mov	dword ptr [rbp - 4], eax
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x412b40

	.globl quote
	.type quote, @function
quote:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	xor	eax, eax
	mov	qword ptr [rbp - 8], rdi
	mov	rsi, qword ptr [rbp - 8]
	mov	edi, eax
	call	quote_n
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x412b5f
	.globl sub_412b5f
	.type sub_412b5f, @function
sub_412b5f:

	nop	
	.section	.text
	.align	32
	#Procedure 0x412b60

	.globl same_name
	.type same_name, @function
same_name:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	mov	eax, 0xffffff9c
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	rsi, qword ptr [rbp - 8]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	edi, eax
	mov	edx, eax
	call	same_nameat
	and	al, 1
	movzx	eax, al
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x412b91
	.globl sub_412b91
	.type sub_412b91, @function
sub_412b91:

	nop	word ptr cs:[rax + rax]
.label_1643:
	movabs	rdi, OFFSET FLAT:label_1641
	movabs	rsi, OFFSET FLAT:label_1282
	mov	edx, 0x403
	movabs	rcx, OFFSET FLAT:label_1642
	call	__assert_fail
.label_1644:
	mov	eax, dword ptr [rbp - 0x24]
	neg	eax
	mov	rcx,  qword ptr [word ptr [rip + label_981]]
	movsxd	rdx, eax
	mov	rsi, rcx
	add	rsi, rdx
	mov	qword ptr [word ptr [rip + label_981]],  rsi
	mov	qword ptr [rbp - 0x18], rsi
	mov	qword ptr [rbp - 0x20], rsi
	movups	xmm0, xmmword ptr [rcx + rdx]
	movaps	xmmword ptr [rbp - 0x10], xmm0
	mov	rax, qword ptr [rbp - 0x10]
	mov	rdx, qword ptr [rbp - 8]
	add	rsp, 0x40
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x412c02
	.globl sub_412c02
	.type sub_412c02, @function
sub_412c02:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x412c09

	.globl dev_ino_pop
	.type dev_ino_pop, @function
dev_ino_pop:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x40
	movabs	rax, OFFSET FLAT:dev_ino_obstack
	mov	dword ptr [rbp - 0x24], 0x10
	movsxd	rcx, dword ptr [rbp - 0x24]
	mov	qword ptr [rbp - 0x30], rax
	mov	rax, qword ptr [rbp - 0x30]
	mov	rax, qword ptr [rax + 0x18]
	mov	rdx, qword ptr [rbp - 0x30]
	mov	rdx, qword ptr [rdx + 0x10]
	sub	rax, rdx
	mov	qword ptr [rbp - 0x38], rax
	cmp	rcx, qword ptr [rbp - 0x38]
	ja	.label_1643
	jmp	.label_1644
	.section	.text
	.align	32
	#Procedure 0x412c50

	.globl quote_n_mem
	.type quote_n_mem, @function
quote_n_mem:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	movabs	rcx, OFFSET FLAT:quote_quoting_options
	mov	dword ptr [rbp - 4], edi
	mov	qword ptr [rbp - 0x10], rsi
	mov	qword ptr [rbp - 0x18], rdx
	mov	edi, dword ptr [rbp - 4]
	mov	rsi, qword ptr [rbp - 0x10]
	mov	rdx, qword ptr [rbp - 0x18]
	call	quotearg_n_options
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x412c83
	.globl sub_412c83
	.type sub_412c83, @function
sub_412c83:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x412c90

	.globl locale_charset
	.type locale_charset, @function
locale_charset:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	mov	edi, 0xe
	call	rpl_nl_langinfo
	mov	qword ptr [rbp - 8], rax
	cmp	qword ptr [rbp - 8], 0
	jne	.label_1645
	movabs	rax, OFFSET FLAT:label_662
	mov	qword ptr [rbp - 8], rax
.label_1645:
	mov	rax, qword ptr [rbp - 8]
	movsx	ecx, byte ptr [rax]
	cmp	ecx, 0
	jne	.label_1646
	movabs	rax, OFFSET FLAT:label_1647
	mov	qword ptr [rbp - 8], rax
.label_1646:
	mov	rax, qword ptr [rbp - 8]
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x412ce7
	.globl sub_412ce7
	.type sub_412ce7, @function
sub_412ce7:

	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x412cf0

	.globl getfilecon
	.type getfilecon, @function
getfilecon:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	call	__errno_location
	mov	ecx, 0xffffffff
	mov	dword ptr [rax], 0x5f
	mov	eax, ecx
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x412d18
	.globl sub_412d18
	.type sub_412d18, @function
sub_412d18:

	nop	dword ptr [rax + rax]
.label_1649:
	mov	rax, qword ptr [rbp - 0x18]
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x412d26
	.globl sub_412d26
	.type sub_412d26, @function
sub_412d26:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x412d32

	.globl _obstack_memory_used
	.type _obstack_memory_used, @function
_obstack_memory_used:
	push	rbp
	mov	rbp, rsp
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x18], 0
	mov	rdi, qword ptr [rbp - 8]
	mov	rdi, qword ptr [rdi + 8]
	mov	qword ptr [rbp - 0x10], rdi
.label_1648:
	cmp	qword ptr [rbp - 0x10], 0
	je	.label_1649
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax]
	mov	rcx, qword ptr [rbp - 0x10]
	sub	rax, rcx
	add	rax, qword ptr [rbp - 0x18]
	mov	qword ptr [rbp - 0x18], rax
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax + 8]
	mov	qword ptr [rbp - 0x10], rax
	jmp	.label_1648
	.section	.text
	.align	32
	#Procedure 0x412d80

	.globl mdir_name
	.type mdir_name, @function
mdir_name:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x30
	mov	qword ptr [rbp - 0x10], rdi
	mov	rdi, qword ptr [rbp - 0x10]
	call	dir_len
	mov	cl, 1
	mov	qword ptr [rbp - 0x18], rax
	cmp	qword ptr [rbp - 0x18], 0
	mov	byte ptr [rbp - 0x29], cl
	je	.label_1650
	xor	eax, eax
	mov	cl, al
	mov	byte ptr [rbp - 0x29], cl
	jmp	.label_1650
.label_1650:
	mov	al, byte ptr [rbp - 0x29]
	and	al, 1
	mov	byte ptr [rbp - 0x19], al
	mov	rcx, qword ptr [rbp - 0x18]
	mov	al, byte ptr [rbp - 0x19]
	and	al, 1
	movzx	edx, al
	mov	esi, edx
	add	rcx, rsi
	add	rcx, 1
	mov	rdi, rcx
	call	malloc
	mov	qword ptr [rbp - 0x28], rax
	cmp	qword ptr [rbp - 0x28], 0
	jne	.label_1652
	mov	qword ptr [rbp - 8], 0
	jmp	.label_1651
.label_1652:
	mov	rdi, qword ptr [rbp - 0x28]
	mov	rsi, qword ptr [rbp - 0x10]
	mov	rdx, qword ptr [rbp - 0x18]
	call	memcpy
	test	byte ptr [rbp - 0x19], 1
	je	.label_1653
	mov	rax, qword ptr [rbp - 0x18]
	mov	rcx, rax
	add	rcx, 1
	mov	qword ptr [rbp - 0x18], rcx
	mov	rcx, qword ptr [rbp - 0x28]
	mov	byte ptr [rcx + rax], 0x2e
.label_1653:
	mov	rax, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rbp - 0x28]
	mov	byte ptr [rcx + rax], 0
	mov	rax, qword ptr [rbp - 0x28]
	mov	qword ptr [rbp - 8], rax
.label_1651:
	mov	rax, qword ptr [rbp - 8]
	add	rsp, 0x30
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x412e46
	.globl sub_412e46
	.type sub_412e46, @function
sub_412e46:

	nop	word ptr cs:[rax + rax]
.label_1656:
	mov	qword ptr [rbp - 8], 0
.label_1655:
	mov	rax, qword ptr [rbp - 8]
	add	rsp, 0x30
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x412e62
	.globl sub_412e62
	.type sub_412e62, @function
sub_412e62:

	nop	word ptr [rax + rax]
.label_1659:
	jmp	.label_1657
.label_1657:
	mov	rax, qword ptr [rbp - 0x28]
	mov	rax, qword ptr [rax + 8]
	mov	qword ptr [rbp - 0x28], rax
	jmp	.label_1658
.label_1660:
	mov	rax, qword ptr [rbp - 0x20]
	mov	qword ptr [rbp - 0x28], rax
.label_1658:
	cmp	qword ptr [rbp - 0x28], 0
	je	.label_1656
	mov	rax, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rbp - 0x28]
	cmp	rax, qword ptr [rcx]
	je	.label_1654
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax + 0x38]
	mov	rdi, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rbp - 0x28]
	mov	rsi, qword ptr [rcx]
	call	rax
	test	al, 1
	jne	.label_1654
	jmp	.label_1659
.label_1654:
	mov	rax, qword ptr [rbp - 0x28]
	mov	rax, qword ptr [rax]
	mov	qword ptr [rbp - 8], rax
	jmp	.label_1655
	.section	.text
	.align	32
	#Procedure 0x412ed4

	.globl hash_lookup
	.type hash_lookup, @function
hash_lookup:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x30
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 0x18], rsi
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rbp - 0x18]
	call	safe_hasher
	mov	qword ptr [rbp - 0x20], rax
	mov	rax, qword ptr [rbp - 0x20]
	cmp	qword ptr [rax], 0
	jne	.label_1660
	mov	qword ptr [rbp - 8], 0
	jmp	.label_1655
.label_1662:
	mov	rax, qword ptr [rbp - 0x28]
	add	rax, 1
	mov	qword ptr [rbp - 0x28], rax
	mov	rax, qword ptr [rbp - 0x38]
	mov	rax, qword ptr [rax + 8]
	mov	qword ptr [rbp - 0x38], rax
	jmp	.label_1661
.label_1665:
	jmp	.label_1664
.label_1664:
	jmp	.label_1666
.label_1666:
	mov	rax, qword ptr [rbp - 0x30]
	add	rax, 0x10
	mov	qword ptr [rbp - 0x30], rax
	jmp	.label_1668
.label_1663:
	mov	rax, qword ptr [rbp - 0x28]
	mov	qword ptr [rbp - 8], rax
.label_1667:
	mov	rax, qword ptr [rbp - 8]
	add	rsp, 0x40
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x412f5a
	.globl sub_412f5a
	.type sub_412f5a, @function
sub_412f5a:

	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x412f60
	.globl hash_do_for_each
	.type hash_do_for_each, @function
hash_do_for_each:

	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x40
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 0x18], rsi
	mov	qword ptr [rbp - 0x20], rdx
	mov	qword ptr [rbp - 0x28], 0
	mov	rdx, qword ptr [rbp - 0x10]
	mov	rdx, qword ptr [rdx]
	mov	qword ptr [rbp - 0x30], rdx
.label_1668:
	mov	rax, qword ptr [rbp - 0x30]
	mov	rcx, qword ptr [rbp - 0x10]
	cmp	rax, qword ptr [rcx + 8]
	jae	.label_1663
	mov	rax, qword ptr [rbp - 0x30]
	cmp	qword ptr [rax], 0
	je	.label_1664
	mov	rax, qword ptr [rbp - 0x30]
	mov	qword ptr [rbp - 0x38], rax
.label_1661:
	cmp	qword ptr [rbp - 0x38], 0
	je	.label_1665
	mov	rax, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rbp - 0x38]
	mov	rdi, qword ptr [rcx]
	mov	rsi, qword ptr [rbp - 0x20]
	call	rax
	test	al, 1
	jne	.label_1662
	mov	rax, qword ptr [rbp - 0x28]
	mov	qword ptr [rbp - 8], rax
	jmp	.label_1667
.label_1674:
	movabs	rsi, OFFSET FLAT:label_1669
	mov	rdi, qword ptr [rbp - 0x28]
	call	c_strcasecmp
	cmp	eax, 0
	jne	.label_1678
	movabs	rax, OFFSET FLAT:label_1676
	movabs	rcx, OFFSET FLAT:label_1677
	mov	rdx, qword ptr [rbp - 0x10]
	movsx	esi, byte ptr [rdx]
	cmp	esi, 0x60
	cmove	rax, rcx
	mov	qword ptr [rbp - 8], rax
	jmp	.label_1671
	.section	.text
	.align	32
	#Procedure 0x413027

	.globl gettext_quote
	.type gettext_quote, @function
gettext_quote:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x30
	mov	qword ptr [rbp - 0x10], rdi
	mov	dword ptr [rbp - 0x14], esi
	mov	rdi, qword ptr [rbp - 0x10]
	call	gettext
	mov	qword ptr [rbp - 0x20], rax
	mov	rax, qword ptr [rbp - 0x20]
	cmp	rax, qword ptr [rbp - 0x10]
	je	.label_1675
	mov	rax, qword ptr [rbp - 0x20]
	mov	qword ptr [rbp - 8], rax
	jmp	.label_1671
.label_1675:
	call	locale_charset
	movabs	rsi, OFFSET FLAT:label_1670
	mov	qword ptr [rbp - 0x28], rax
	mov	rdi, qword ptr [rbp - 0x28]
	call	c_strcasecmp
	cmp	eax, 0
	jne	.label_1674
	movabs	rax, OFFSET FLAT:label_1672
	movabs	rcx, OFFSET FLAT:label_1673
	mov	rdx, qword ptr [rbp - 0x10]
	movsx	esi, byte ptr [rdx]
	cmp	esi, 0x60
	cmove	rax, rcx
	mov	qword ptr [rbp - 8], rax
	jmp	.label_1671
.label_1678:
	movabs	rax, OFFSET FLAT:label_169
	movabs	rcx, OFFSET FLAT:label_138
	cmp	dword ptr [rbp - 0x14], 9
	cmove	rax, rcx
	mov	qword ptr [rbp - 8], rax
.label_1671:
	mov	rax, qword ptr [rbp - 8]
	add	rsp, 0x30
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x4130d8
	.globl sub_4130d8
	.type sub_4130d8, @function
sub_4130d8:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4130e0

	.globl free_pending_ent
	.type free_pending_ent, @function
free_pending_ent:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	mov	qword ptr [rbp - 8], rdi
	mov	rdi, qword ptr [rbp - 8]
	mov	rdi, qword ptr [rdi]
	call	free
	mov	rdi, qword ptr [rbp - 8]
	mov	rdi, qword ptr [rdi + 8]
	call	free
	mov	rdi, qword ptr [rbp - 8]
	call	free
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x413114
	.globl sub_413114
	.type sub_413114, @function
sub_413114:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x413120

	.globl strcmp_mtime
	.type strcmp_mtime, @function
strcmp_mtime:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	movabs	rdx, OFFSET FLAT:strcmp
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	rsi, qword ptr [rbp - 8]
	mov	rdi, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 0x18], rdi
	mov	rdi, rsi
	mov	rsi, qword ptr [rbp - 0x18]
	call	cmp_mtime
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x413158
	.globl sub_413158
	.type sub_413158, @function
sub_413158:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x413160

	.globl tzfree
	.type tzfree, @function
tzfree:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	mov	qword ptr [rbp - 8], rdi
	mov	rdi, qword ptr [rbp - 8]
	cmp	rdi,  qword ptr [word ptr [local_tz]]
	je	.label_1679
	jmp	.label_1681
.label_1681:
	cmp	qword ptr [rbp - 8], 0
	je	.label_1680
	mov	rax, qword ptr [rbp - 8]
	mov	rax, qword ptr [rax]
	mov	qword ptr [rbp - 0x10], rax
	mov	rax, qword ptr [rbp - 8]
	mov	rdi, rax
	call	free
	mov	rax, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 8], rax
	jmp	.label_1681
.label_1680:
	jmp	.label_1679
.label_1679:
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x4131bd
	.globl sub_4131bd
	.type sub_4131bd, @function
sub_4131bd:

	nop	dword ptr [rax]
.label_1688:
	mov	rax,  qword ptr [word ptr [nouser_alist]]
	mov	qword ptr [rbp - 0x18], rax
.label_1687:
	cmp	qword ptr [rbp - 0x18], 0
	je	.label_1685
	mov	rax, qword ptr [rbp - 0x18]
	movsx	ecx, byte ptr [rax + 0x10]
	mov	rax, qword ptr [rbp - 0x10]
	movsx	edx, byte ptr [rax]
	cmp	ecx, edx
	jne	.label_1686
	mov	rax, qword ptr [rbp - 0x18]
	add	rax, 0x10
	mov	rsi, qword ptr [rbp - 0x10]
	mov	rdi, rax
	call	strcmp
	cmp	eax, 0
	jne	.label_1686
	mov	qword ptr [rbp - 8], 0
	jmp	.label_1684
	.section	.text
	.align	32
	#Procedure 0x413218
	.globl getuidbyname
	.type getuidbyname, @function
getuidbyname:

	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x30
	mov	qword ptr [rbp - 0x10], rdi
	mov	rdi,  qword ptr [word ptr [user_alist]]
	mov	qword ptr [rbp - 0x18], rdi
.label_1689:
	cmp	qword ptr [rbp - 0x18], 0
	je	.label_1688
	mov	rax, qword ptr [rbp - 0x18]
	movsx	ecx, byte ptr [rax + 0x10]
	mov	rax, qword ptr [rbp - 0x10]
	movsx	edx, byte ptr [rax]
	cmp	ecx, edx
	jne	.label_1691
	mov	rax, qword ptr [rbp - 0x18]
	add	rax, 0x10
	mov	rsi, qword ptr [rbp - 0x10]
	mov	rdi, rax
	call	strcmp
	cmp	eax, 0
	jne	.label_1691
	mov	rax, qword ptr [rbp - 0x18]
	mov	qword ptr [rbp - 8], rax
	jmp	.label_1684
.label_1683:
	mov	rax,  qword ptr [word ptr [nouser_alist]]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	qword ptr [rcx + 8], rax
	mov	rax, qword ptr [rbp - 0x18]
	mov	qword ptr [word ptr [nouser_alist]],  rax
	mov	qword ptr [rbp - 8], 0
.label_1684:
	mov	rax, qword ptr [rbp - 8]
	add	rsp, 0x30
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x4132aa
	.globl sub_4132aa
	.type sub_4132aa, @function
sub_4132aa:

	nop	dword ptr [rax]
.label_1686:
	jmp	.label_1682
.label_1682:
	mov	rax, qword ptr [rbp - 0x18]
	mov	rax, qword ptr [rax + 8]
	mov	qword ptr [rbp - 0x18], rax
	jmp	.label_1687
.label_1691:
	jmp	.label_1690
.label_1690:
	mov	rax, qword ptr [rbp - 0x18]
	mov	rax, qword ptr [rax + 8]
	mov	qword ptr [rbp - 0x18], rax
	jmp	.label_1689
.label_1685:
	mov	rdi, qword ptr [rbp - 0x10]
	call	getpwnam
	mov	qword ptr [rbp - 0x20], rax
	mov	rdi, qword ptr [rbp - 0x10]
	call	strlen
	add	rax, 1
	add	rax, 0x17
	and	rax, 0xfffffffffffffff8
	mov	rdi, rax
	call	xmalloc
	mov	qword ptr [rbp - 0x18], rax
	mov	rax, qword ptr [rbp - 0x18]
	add	rax, 0x10
	mov	rsi, qword ptr [rbp - 0x10]
	mov	rdi, rax
	call	strcpy
	cmp	qword ptr [rbp - 0x20], 0
	mov	qword ptr [rbp - 0x28], rax
	je	.label_1683
	mov	rax, qword ptr [rbp - 0x20]
	mov	ecx, dword ptr [rax + 0x10]
	mov	rax, qword ptr [rbp - 0x18]
	mov	dword ptr [rax], ecx
	mov	rax,  qword ptr [word ptr [user_alist]]
	mov	rdx, qword ptr [rbp - 0x18]
	mov	qword ptr [rdx + 8], rax
	mov	rax, qword ptr [rbp - 0x18]
	mov	qword ptr [word ptr [user_alist]],  rax
	mov	rax, qword ptr [rbp - 0x18]
	mov	qword ptr [rbp - 8], rax
	jmp	.label_1684
.label_1696:
	mov	qword ptr [rbp - 8], 0
.label_1694:
	mov	rax, qword ptr [rbp - 8]
	add	rsp, 0x30
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x413372
	.globl sub_413372
	.type sub_413372, @function
sub_413372:

	nop	dword ptr [rax]
.label_1692:
	jmp	.label_1693
.label_1693:
	mov	rax, qword ptr [rbp - 0x30]
	add	rax, 1
	mov	qword ptr [rbp - 0x30], rax
	jmp	.label_1695
	.section	.text
	.align	32
	#Procedure 0x41338f
	.globl argmatch_to_argument
	.type argmatch_to_argument, @function
argmatch_to_argument:

	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x30
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 0x18], rsi
	mov	qword ptr [rbp - 0x20], rdx
	mov	qword ptr [rbp - 0x28], rcx
	mov	qword ptr [rbp - 0x30], 0
.label_1695:
	mov	rax, qword ptr [rbp - 0x30]
	mov	rcx, qword ptr [rbp - 0x18]
	cmp	qword ptr [rcx + rax*8], 0
	je	.label_1696
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rbp - 0x20]
	mov	rcx, qword ptr [rbp - 0x28]
	imul	rcx, qword ptr [rbp - 0x30]
	add	rax, rcx
	mov	rdx, qword ptr [rbp - 0x28]
	mov	rsi, rax
	call	memcmp
	cmp	eax, 0
	jne	.label_1692
	mov	rax, qword ptr [rbp - 0x30]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	rax, qword ptr [rcx + rax*8]
	mov	qword ptr [rbp - 8], rax
	jmp	.label_1694
	.section	.text
	.align	32
	#Procedure 0x413400

	.globl group_number
	.type group_number, @function
group_number:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x90
	lea	rax, [rbp - 0x70]
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	qword ptr [rbp - 0x18], rdx
	mov	qword ptr [rbp - 0x20], rcx
	mov	qword ptr [rbp - 0x30], -1
	mov	rdi, qword ptr [rbp - 0x20]
	mov	qword ptr [rbp - 0x80], rax
	call	strlen
	mov	qword ptr [rbp - 0x38], rax
	mov	rax, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 0x40], rax
	mov	rsi, qword ptr [rbp - 8]
	mov	rdx, qword ptr [rbp - 0x10]
	mov	rdi, qword ptr [rbp - 0x80]
	call	memcpy
	mov	rax, qword ptr [rbp - 8]
	add	rax, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 0x28], rax
.label_1697:
	mov	rax, qword ptr [rbp - 0x18]
	mov	cl, byte ptr [rax]
	mov	byte ptr [rbp - 0x71], cl
	cmp	byte ptr [rbp - 0x71], 0
	je	.label_1700
	movzx	eax, byte ptr [rbp - 0x71]
	cmp	eax, 0x7f
	jge	.label_1701
	movzx	eax, byte ptr [rbp - 0x71]
	mov	ecx, eax
	mov	qword ptr [rbp - 0x88], rcx
	jmp	.label_1702
.label_1701:
	mov	rax, qword ptr [rbp - 0x40]
	mov	qword ptr [rbp - 0x88], rax
.label_1702:
	mov	rax, qword ptr [rbp - 0x88]
	mov	qword ptr [rbp - 0x30], rax
	mov	rax, qword ptr [rbp - 0x18]
	add	rax, 1
	mov	qword ptr [rbp - 0x18], rax
.label_1700:
	mov	rax, qword ptr [rbp - 0x40]
	cmp	rax, qword ptr [rbp - 0x30]
	jae	.label_1699
	mov	rax, qword ptr [rbp - 0x40]
	mov	qword ptr [rbp - 0x30], rax
.label_1699:
	lea	rax, [rbp - 0x70]
	xor	ecx, ecx
	mov	edx, ecx
	mov	rsi, qword ptr [rbp - 0x30]
	mov	rdi, qword ptr [rbp - 0x28]
	sub	rdx, rsi
	add	rdi, rdx
	mov	qword ptr [rbp - 0x28], rdi
	mov	rdx, qword ptr [rbp - 0x30]
	mov	rsi, qword ptr [rbp - 0x40]
	sub	rsi, rdx
	mov	qword ptr [rbp - 0x40], rsi
	mov	rdi, qword ptr [rbp - 0x28]
	add	rax, qword ptr [rbp - 0x40]
	mov	rdx, qword ptr [rbp - 0x30]
	mov	rsi, rax
	call	memcpy
	cmp	qword ptr [rbp - 0x40], 0
	jne	.label_1698
	mov	rax, qword ptr [rbp - 0x28]
	add	rsp, 0x90
	pop	rbp
	ret	
.label_1698:
	xor	eax, eax
	mov	ecx, eax
	mov	rdx, qword ptr [rbp - 0x38]
	mov	rsi, qword ptr [rbp - 0x28]
	sub	rcx, rdx
	add	rsi, rcx
	mov	qword ptr [rbp - 0x28], rsi
	mov	rdi, qword ptr [rbp - 0x28]
	mov	rsi, qword ptr [rbp - 0x20]
	mov	rdx, qword ptr [rbp - 0x38]
	call	memcpy
	jmp	.label_1697
	.section	.text
	.align	32
	#Procedure 0x413548
	.globl sub_413548
	.type sub_413548, @function
sub_413548:

	nop	dword ptr [rax + rax]
.label_1704:
	mov	rax, qword ptr [rbp - 0x38]
	mov	rax, qword ptr [rax]
	mov	rcx, qword ptr [rbp - 0x28]
	mov	rdx, rcx
	add	rdx, 1
	mov	qword ptr [rbp - 0x28], rdx
	mov	rdx, qword ptr [rbp - 0x18]
	mov	qword ptr [rdx + rcx*8], rax
	mov	rax, qword ptr [rbp - 0x38]
	mov	rax, qword ptr [rax + 8]
	mov	qword ptr [rbp - 0x38], rax
	jmp	.label_1706
.label_1707:
	mov	rax, qword ptr [rbp - 0x28]
	mov	qword ptr [rbp - 8], rax
.label_1708:
	mov	rax, qword ptr [rbp - 8]
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x41358d
	.globl sub_41358d
	.type sub_41358d, @function
sub_41358d:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x413594
	.globl hash_get_entries
	.type hash_get_entries, @function
hash_get_entries:

	push	rbp
	mov	rbp, rsp
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 0x18], rsi
	mov	qword ptr [rbp - 0x20], rdx
	mov	qword ptr [rbp - 0x28], 0
	mov	rdx, qword ptr [rbp - 0x10]
	mov	rdx, qword ptr [rdx]
	mov	qword ptr [rbp - 0x30], rdx
.label_1705:
	mov	rax, qword ptr [rbp - 0x30]
	mov	rcx, qword ptr [rbp - 0x10]
	cmp	rax, qword ptr [rcx + 8]
	jae	.label_1707
	mov	rax, qword ptr [rbp - 0x30]
	cmp	qword ptr [rax], 0
	je	.label_1703
	mov	rax, qword ptr [rbp - 0x30]
	mov	qword ptr [rbp - 0x38], rax
.label_1706:
	cmp	qword ptr [rbp - 0x38], 0
	je	.label_1709
	mov	rax, qword ptr [rbp - 0x28]
	cmp	rax, qword ptr [rbp - 0x20]
	jb	.label_1704
	mov	rax, qword ptr [rbp - 0x28]
	mov	qword ptr [rbp - 8], rax
	jmp	.label_1708
.label_1709:
	jmp	.label_1703
.label_1703:
	jmp	.label_1710
.label_1710:
	mov	rax, qword ptr [rbp - 0x30]
	add	rax, 0x10
	mov	qword ptr [rbp - 0x30], rax
	jmp	.label_1705
.label_1711:
	movabs	rdi, OFFSET FLAT:label_1720
	movabs	rsi, OFFSET FLAT:label_1282
	mov	edx, 0xc2f
	movabs	rcx, OFFSET FLAT:label_1721
	call	__assert_fail
.label_1738:
	mov	rax, qword ptr [rbp - 0x40]
	mov	rdi, qword ptr [rax + 0x48]
	call	unsigned_file_size
	mov	ecx, 1
	lea	rsi, [rbp - 0x670]
	mov	qword ptr [rbp - 0x678], rax
	mov	rdi, qword ptr [rbp - 0x678]
	mov	edx,  dword ptr [dword ptr [file_human_output_opts]]
	mov	r8,  qword ptr [word ptr [file_output_block_size]]
	call	human_readable
	xor	esi, esi
	mov	rdi, rax
	call	gnu_mbswidth
	mov	dword ptr [rbp - 0x67c], eax
	mov	eax,  dword ptr [dword ptr [file_size_width]]
	cmp	eax, dword ptr [rbp - 0x67c]
	jge	.label_1744
	mov	eax, dword ptr [rbp - 0x67c]
	mov	dword ptr [dword ptr [file_size_width]],  eax
.label_1744:
	jmp	.label_1727
.label_1727:
	jmp	.label_1749
.label_1749:
	jmp	.label_1751
.label_1751:
	test	byte ptr [byte ptr [print_inode]],  1
	je	.label_1752
	lea	rsi, [rbp - 0x6a0]
	mov	rax, qword ptr [rbp - 0x40]
	mov	rdi, qword ptr [rax + 0x20]
	call	umaxtostr
	mov	rdi, rax
	call	strlen
	mov	ecx, eax
	mov	dword ptr [rbp - 0x6a4], ecx
	mov	ecx,  dword ptr [dword ptr [inode_number_width]]
	cmp	ecx, dword ptr [rbp - 0x6a4]
	jge	.label_1762
	mov	eax, dword ptr [rbp - 0x6a4]
	mov	dword ptr [dword ptr [inode_number_width]],  eax
.label_1762:
	jmp	.label_1752
.label_1752:
	mov	rdi, qword ptr [rbp - 0x10]
	call	xstrdup
	mov	rdi, qword ptr [rbp - 0x40]
	mov	qword ptr [rdi], rax
	mov	rax,  qword ptr [word ptr [cwd_n_used]]
	add	rax, 1
	mov	qword ptr [word ptr [cwd_n_used]],  rax
	mov	rax, qword ptr [rbp - 0x38]
	mov	qword ptr [rbp - 8], rax
.label_1735:
	mov	rax, qword ptr [rbp - 8]
	mov	rsp, rbp
	pop	rbp
	ret	
.label_1793:
	mov	rax, qword ptr [rbp - 0x40]
	mov	dword ptr [rax + 0xa8], 3
.label_1796:
	jmp	.label_1779
.label_1714:
	mov	rax,  qword ptr [word ptr [cwd_n_used]]
	cmp	rax,  qword ptr [word ptr [cwd_n_alloc]]
	jne	.label_1780
	mov	eax, 0x190
	mov	edx, eax
	mov	rcx,  qword ptr [word ptr [cwd_file]]
	mov	rsi,  qword ptr [word ptr [cwd_n_alloc]]
	mov	rdi, rcx
	call	xnrealloc
	mov	qword ptr [word ptr [cwd_file]],  rax
	mov	rax,  qword ptr [word ptr [cwd_n_alloc]]
	shl	rax, 1
	mov	qword ptr [word ptr [cwd_n_alloc]],  rax
.label_1780:
	xor	esi, esi
	mov	eax, 0xc8
	mov	edx, eax
	mov	rcx,  qword ptr [word ptr [cwd_n_used]]
	imul	rcx, rcx, 0xc8
	add	rcx,  qword ptr [word ptr [cwd_file]]
	mov	qword ptr [rbp - 0x40], rcx
	mov	rcx, qword ptr [rbp - 0x40]
	mov	rdi, rcx
	call	memset
	mov	rcx, qword ptr [rbp - 0x20]
	mov	rdx, qword ptr [rbp - 0x40]
	mov	qword ptr [rdx + 0x20], rcx
	mov	eax, dword ptr [rbp - 0x14]
	mov	rcx, qword ptr [rbp - 0x40]
	mov	dword ptr [rcx + 0xa8], eax
	mov	rcx, qword ptr [rbp - 0x40]
	mov	dword ptr [rcx + 0xc4], 0xffffffff
	test	byte ptr [byte ptr [cwd_some_quoted]],  1
	jne	.label_1717
	test	byte ptr [byte ptr [align_variable_outer_quotes]],  1
	je	.label_1717
	mov	rdi, qword ptr [rbp - 0x10]
	call	needs_quoting
	and	al, 1
	movzx	ecx, al
	mov	rdi, qword ptr [rbp - 0x40]
	mov	dword ptr [rdi + 0xc4], ecx
	mov	rdi, qword ptr [rbp - 0x40]
	cmp	dword ptr [rdi + 0xc4], 0
	je	.label_1724
	mov	byte ptr [byte ptr [cwd_some_quoted]],  1
.label_1724:
	jmp	.label_1717
.label_1717:
	test	byte ptr [rbp - 0x21], 1
	jne	.label_1736
	test	byte ptr [byte ptr [print_hyperlink]],  1
	jne	.label_1736
	test	byte ptr [byte ptr [format_needs_stat]],  1
	jne	.label_1736
	cmp	dword ptr [rbp - 0x14], 3
	jne	.label_1743
	test	byte ptr [byte ptr [print_with_color]],  1
	je	.label_1743
	mov	edi, 0x13
	call	is_colored
	test	al, 1
	jne	.label_1736
	mov	edi, 0x12
	call	is_colored
	test	al, 1
	jne	.label_1736
	mov	edi, 0x14
	call	is_colored
	test	al, 1
	jne	.label_1736
.label_1743:
	test	byte ptr [byte ptr [print_inode]],  1
	jne	.label_1757
	test	byte ptr [byte ptr [format_needs_type]],  1
	je	.label_1759
.label_1757:
	cmp	dword ptr [rbp - 0x14], 6
	je	.label_1761
	cmp	dword ptr [rbp - 0x14], 0
	jne	.label_1759
.label_1761:
	cmp	dword ptr [dword ptr [dereference]],  5
	je	.label_1736
	test	byte ptr [byte ptr [color_symlink_as_referent]],  1
	jne	.label_1736
	test	byte ptr [byte ptr [check_symlink_mode]],  1
	jne	.label_1736
.label_1759:
	test	byte ptr [byte ptr [print_inode]],  1
	je	.label_1772
	cmp	qword ptr [rbp - 0x20], 0
	je	.label_1736
.label_1772:
	test	byte ptr [byte ptr [format_needs_type]],  1
	je	.label_1751
	cmp	dword ptr [rbp - 0x14], 0
	je	.label_1736
	test	byte ptr [rbp - 0x21], 1
	jne	.label_1736
	cmp	dword ptr [rbp - 0x14], 5
	jne	.label_1751
	cmp	dword ptr [dword ptr [indicator_style]],  3
	je	.label_1736
	test	byte ptr [byte ptr [print_with_color]],  1
	je	.label_1751
	mov	edi, 0xe
	call	is_colored
	test	al, 1
	jne	.label_1736
	mov	edi, 0x10
	call	is_colored
	test	al, 1
	jne	.label_1736
	mov	edi, 0x11
	call	is_colored
	test	al, 1
	jne	.label_1736
	mov	edi, 0x15
	call	is_colored
	test	al, 1
	jne	.label_1736
	jmp	.label_1751
.label_1736:
	mov	rax, qword ptr [rbp - 0x10]
	movsx	ecx, byte ptr [rax]
	cmp	ecx, 0x2f
	je	.label_1797
	mov	rax, qword ptr [rbp - 0x30]
	movsx	ecx, byte ptr [rax]
	cmp	ecx, 0
	jne	.label_1798
.label_1797:
	mov	rax, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 0x48], rax
	jmp	.label_1726
.label_1733:
	mov	rax, qword ptr [rbp - 0x40]
	mov	rsi, qword ptr [rax + 0xb0]
	mov	ecx, OFFSET FLAT:label_1712
	mov	edi, ecx
	call	strcmp
	cmp	eax, 0
	sete	dl
	xor	dl, 0xff
	and	dl, 1
	mov	byte ptr [rbp - 0x52], dl
.label_1739:
	jmp	.label_1765
.label_1791:
	mov	rax, qword ptr [rbp - 0x40]
	mov	dword ptr [rax + 0xa8], 5
.label_1779:
	jmp	.label_1728
.label_1728:
	mov	rax, qword ptr [rbp - 0x40]
	mov	rax, qword ptr [rax + 0x58]
	mov	qword ptr [rbp - 0x38], rax
	cmp	dword ptr [dword ptr [format]],  0
	je	.label_1729
	test	byte ptr [byte ptr [print_block_size]],  1
	je	.label_1737
.label_1729:
	mov	eax, 0x200
	mov	ecx, eax
	lea	rsi, [rbp - 0x390]
	mov	rdi, qword ptr [rbp - 0x38]
	mov	edx,  dword ptr [dword ptr [human_output_opts]]
	mov	r8,  qword ptr [word ptr [output_block_size]]
	call	human_readable
	xor	esi, esi
	mov	rdi, rax
	call	gnu_mbswidth
	mov	dword ptr [rbp - 0x394], eax
	mov	eax,  dword ptr [dword ptr [block_size_width]]
	cmp	eax, dword ptr [rbp - 0x394]
	jge	.label_1789
	mov	eax, dword ptr [rbp - 0x394]
	mov	dword ptr [dword ptr [block_size_width]],  eax
.label_1789:
	jmp	.label_1737
.label_1737:
	cmp	dword ptr [dword ptr [format]],  0
	jne	.label_1754
	test	byte ptr [byte ptr [print_owner]],  1
	je	.label_1718
	mov	rax, qword ptr [rbp - 0x40]
	mov	edi, dword ptr [rax + 0x34]
	call	format_user_width
	mov	dword ptr [rbp - 0x398], eax
	mov	eax,  dword ptr [dword ptr [owner_width]]
	cmp	eax, dword ptr [rbp - 0x398]
	jge	.label_1763
	mov	eax, dword ptr [rbp - 0x398]
	mov	dword ptr [dword ptr [owner_width]],  eax
.label_1763:
	jmp	.label_1718
.label_1718:
	test	byte ptr [byte ptr [print_group]],  1
	je	.label_1769
	mov	rax, qword ptr [rbp - 0x40]
	mov	edi, dword ptr [rax + 0x38]
	call	format_group_width
	mov	dword ptr [rbp - 0x39c], eax
	mov	eax,  dword ptr [dword ptr [group_width]]
	cmp	eax, dword ptr [rbp - 0x39c]
	jge	.label_1774
	mov	eax, dword ptr [rbp - 0x39c]
	mov	dword ptr [dword ptr [group_width]],  eax
.label_1774:
	jmp	.label_1769
.label_1769:
	test	byte ptr [byte ptr [print_author]],  1
	je	.label_1732
	mov	rax, qword ptr [rbp - 0x40]
	mov	edi, dword ptr [rax + 0x34]
	call	format_user_width
	mov	dword ptr [rbp - 0x3a0], eax
	mov	eax,  dword ptr [dword ptr [author_width]]
	cmp	eax, dword ptr [rbp - 0x3a0]
	jge	.label_1756
	mov	eax, dword ptr [rbp - 0x3a0]
	mov	dword ptr [dword ptr [author_width]],  eax
.label_1756:
	jmp	.label_1732
.label_1732:
	jmp	.label_1754
.label_1754:
	test	byte ptr [byte ptr [print_scontext]],  1
	je	.label_1790
	mov	rax, qword ptr [rbp - 0x40]
	mov	rdi, qword ptr [rax + 0xb0]
	call	strlen
	mov	ecx, eax
	mov	dword ptr [rbp - 0x3a4], ecx
	mov	ecx,  dword ptr [dword ptr [scontext_width]]
	cmp	ecx, dword ptr [rbp - 0x3a4]
	jge	.label_1795
	mov	eax, dword ptr [rbp - 0x3a4]
	mov	dword ptr [dword ptr [scontext_width]],  eax
.label_1795:
	jmp	.label_1790
.label_1790:
	cmp	dword ptr [dword ptr [format]],  0
	jne	.label_1749
	lea	rsi, [rbp - 0x3c0]
	mov	rax, qword ptr [rbp - 0x40]
	mov	rdi, qword ptr [rax + 0x28]
	call	umaxtostr
	mov	rdi, rax
	call	strlen
	mov	ecx, eax
	mov	dword ptr [rbp - 0x3c4], ecx
	mov	ecx,  dword ptr [dword ptr [nlink_width]]
	cmp	ecx, dword ptr [rbp - 0x3c4]
	jge	.label_1719
	mov	eax, dword ptr [rbp - 0x3c4]
	mov	dword ptr [dword ptr [nlink_width]],  eax
.label_1719:
	mov	rax, qword ptr [rbp - 0x40]
	mov	ecx, dword ptr [rax + 0x30]
	and	ecx, 0xf000
	cmp	ecx, 0x2000
	je	.label_1788
	mov	rax, qword ptr [rbp - 0x40]
	mov	ecx, dword ptr [rax + 0x30]
	and	ecx, 0xf000
	cmp	ecx, 0x6000
	jne	.label_1738
.label_1788:
	mov	rax, qword ptr [rbp - 0x40]
	mov	rdi, qword ptr [rax + 0x40]
	call	gnu_dev_major
	lea	rsi, [rbp - 0x3e0]
	mov	eax, eax
	mov	edi, eax
	call	umaxtostr
	mov	rdi, rax
	call	strlen
	mov	ecx, eax
	mov	dword ptr [rbp - 0x3e4], ecx
	mov	ecx,  dword ptr [dword ptr [major_device_number_width]]
	cmp	ecx, dword ptr [rbp - 0x3e4]
	jge	.label_1745
	mov	eax, dword ptr [rbp - 0x3e4]
	mov	dword ptr [dword ptr [major_device_number_width]],  eax
.label_1745:
	mov	rax, qword ptr [rbp - 0x40]
	mov	rdi, qword ptr [rax + 0x40]
	call	gnu_dev_minor
	lea	rsi, [rbp - 0x3e0]
	mov	eax, eax
	mov	edi, eax
	call	umaxtostr
	mov	rdi, rax
	call	strlen
	mov	ecx, eax
	mov	dword ptr [rbp - 0x3e4], ecx
	mov	ecx,  dword ptr [dword ptr [minor_device_number_width]]
	cmp	ecx, dword ptr [rbp - 0x3e4]
	jge	.label_1770
	mov	eax, dword ptr [rbp - 0x3e4]
	mov	dword ptr [dword ptr [minor_device_number_width]],  eax
.label_1770:
	mov	eax,  dword ptr [dword ptr [major_device_number_width]]
	add	eax, 2
	add	eax,  dword ptr [dword ptr [minor_device_number_width]]
	mov	dword ptr [rbp - 0x3e4], eax
	mov	eax,  dword ptr [dword ptr [file_size_width]]
	cmp	eax, dword ptr [rbp - 0x3e4]
	jge	.label_1767
	mov	eax, dword ptr [rbp - 0x3e4]
	mov	dword ptr [dword ptr [file_size_width]],  eax
.label_1767:
	jmp	.label_1727
.label_1783:
	xor	eax, eax
	mov	cl, al
	test	byte ptr [rbp - 0x52], 1
	mov	byte ptr [rbp - 0x6cd], cl
	je	.label_1777
	mov	al, byte ptr [rbp - 0x53]
	xor	al, 0xff
	mov	byte ptr [rbp - 0x6cd], al
.label_1777:
	mov	al, byte ptr [rbp - 0x6cd]
	mov	ecx, 2
	mov	edx, 1
	test	al, 1
	cmovne	ecx, edx
	mov	dword ptr [rbp - 0x6cc], ecx
.label_1786:
	mov	eax, dword ptr [rbp - 0x6cc]
	mov	rcx, qword ptr [rbp - 0x40]
	mov	dword ptr [rcx + 0xbc], eax
	mov	rcx, qword ptr [rbp - 0x40]
	cmp	dword ptr [rcx + 0xbc], 0
	setne	dl
	and	dl, 1
	movzx	eax, dl
	mov	dl,  byte ptr [byte ptr [any_has_acl]]
	and	dl, 1
	movzx	esi, dl
	or	esi, eax
	cmp	esi, 0
	setne	dl
	and	dl, 1
	mov	byte ptr [byte ptr [any_has_acl]],  dl
	cmp	dword ptr [rbp - 0x50], 0
	je	.label_1785
	call	__errno_location
	xor	edi, edi
	mov	esi, 3
	mov	ecx, dword ptr [rax]
	mov	rdx, qword ptr [rbp - 0x48]
	mov	dword ptr [rbp - 0x6d4], ecx
	call	quotearg_n_style_colon
	xor	edi, edi
	movabs	rdx, OFFSET FLAT:label_1272
	mov	esi, dword ptr [rbp - 0x6d4]
	mov	rcx, rax
	mov	al, 0
	call	error
.label_1785:
	jmp	.label_1713
.label_1713:
	mov	rax, qword ptr [rbp - 0x40]
	mov	ecx, dword ptr [rax + 0x30]
	and	ecx, 0xf000
	cmp	ecx, 0xa000
	jne	.label_1715
	cmp	dword ptr [dword ptr [format]],  0
	je	.label_1723
	test	byte ptr [byte ptr [check_symlink_mode]],  1
	je	.label_1715
.label_1723:
	mov	rdi, qword ptr [rbp - 0x48]
	mov	rsi, qword ptr [rbp - 0x40]
	mov	al, byte ptr [rbp - 0x21]
	and	al, 1
	movzx	edx, al
	call	get_link_name
	mov	rdi, qword ptr [rbp - 0x48]
	mov	rsi, qword ptr [rbp - 0x40]
	mov	rsi, qword ptr [rsi + 8]
	call	make_link_name
	mov	qword ptr [rbp - 0xf8], rax
	cmp	qword ptr [rbp - 0xf8], 0
	je	.label_1740
	mov	rax, qword ptr [rbp - 0x40]
	cmp	dword ptr [rax + 0xc4], 0
	jne	.label_1740
	mov	rax, qword ptr [rbp - 0x40]
	mov	rdi, qword ptr [rax + 8]
	call	needs_quoting
	test	al, 1
	jne	.label_1746
	jmp	.label_1740
.label_1746:
	mov	rax, qword ptr [rbp - 0x40]
	mov	dword ptr [rax + 0xc4], 0xffffffff
.label_1740:
	cmp	qword ptr [rbp - 0xf8], 0
	je	.label_1750
	mov	eax, 2
	cmp	eax,  dword ptr [dword ptr [indicator_style]]
	jbe	.label_1755
	test	byte ptr [byte ptr [check_symlink_mode]],  1
	je	.label_1750
.label_1755:
	lea	rsi, [rbp - 0xf0]
	mov	rdi, qword ptr [rbp - 0xf8]
	call	stat
	cmp	eax, 0
	jne	.label_1750
	mov	rax, qword ptr [rbp - 0x40]
	mov	byte ptr [rax + 0xb9], 1
	mov	ecx, dword ptr [rbp - 0xd8]
	mov	rax, qword ptr [rbp - 0x40]
	mov	dword ptr [rax + 0xac], ecx
.label_1750:
	mov	rdi, qword ptr [rbp - 0xf8]
	call	free
.label_1715:
	mov	rax, qword ptr [rbp - 0x40]
	mov	ecx, dword ptr [rax + 0x30]
	and	ecx, 0xf000
	cmp	ecx, 0xa000
	jne	.label_1773
	mov	rax, qword ptr [rbp - 0x40]
	mov	dword ptr [rax + 0xa8], 6
	jmp	.label_1728
.label_1725:
	cmp	dword ptr [rbp - 0x50], 0
	jge	.label_1778
	call	__errno_location
	cmp	dword ptr [rax], 2
	sete	cl
	and	cl, 1
	movzx	edx, cl
	mov	dword ptr [rbp - 0x6c4], edx
	jmp	.label_1782
.label_1747:
	mov	rax, qword ptr [rbp - 0x40]
	mov	byte ptr [rax + 0xb8], 1
	cmp	dword ptr [rbp - 0x14], 5
	je	.label_1784
	mov	rax, qword ptr [rbp - 0x40]
	mov	ecx, dword ptr [rax + 0x30]
	and	ecx, 0xf000
	cmp	ecx, 0x8000
	jne	.label_1787
.label_1784:
	test	byte ptr [byte ptr [print_with_color]],  1
	je	.label_1787
	mov	edi, 0x15
	call	is_colored
	test	al, 1
	jne	.label_1794
	jmp	.label_1787
.label_1794:
	mov	rdi, qword ptr [rbp - 0x48]
	mov	rsi, qword ptr [rbp - 0x40]
	call	has_capability_cache
	mov	rsi, qword ptr [rbp - 0x40]
	and	al, 1
	mov	byte ptr [rsi + 0xc0], al
.label_1787:
	cmp	dword ptr [dword ptr [format]],  0
	je	.label_1799
	test	byte ptr [byte ptr [print_scontext]],  1
	je	.label_1713
.label_1799:
	mov	byte ptr [rbp - 0x52], 0
	mov	byte ptr [rbp - 0x53], 0
	mov	rdi, qword ptr [rbp - 0x48]
	mov	rsi, qword ptr [rbp - 0x40]
	mov	al, byte ptr [rbp - 0x49]
	and	al, 1
	movzx	edx, al
	call	getfilecon_cache
	mov	dword ptr [rbp - 0x58], eax
	cmp	dword ptr [rbp - 0x58], 0
	setl	cl
	and	cl, 1
	movzx	eax, cl
	mov	dword ptr [rbp - 0x50], eax
	cmp	dword ptr [rbp - 0x50], 0
	jne	.label_1722
	call	is_smack_enabled
	test	al, 1
	jne	.label_1730
	jmp	.label_1733
.label_1730:
	mov	rax, qword ptr [rbp - 0x40]
	mov	rsi, qword ptr [rax + 0xb0]
	mov	ecx, OFFSET FLAT:label_1734
	mov	edi, ecx
	call	strcmp
	cmp	eax, 0
	sete	dl
	xor	dl, 0xff
	and	dl, 1
	mov	byte ptr [rbp - 0x52], dl
	jmp	.label_1739
.label_1798:
	mov	rdi, qword ptr [rbp - 0x10]
	call	strlen
	mov	rdi, qword ptr [rbp - 0x30]
	mov	qword ptr [rbp - 0x6b0], rax
	call	strlen
	mov	rdi, qword ptr [rbp - 0x6b0]
	lea	rax, [rdi + rax + 0x11]
	and	rax, 0xfffffffffffffff0
	mov	rcx, rsp
	sub	rcx, rax
	mov	rsp, rcx
	mov	qword ptr [rbp - 0x48], rcx
	mov	rdi, qword ptr [rbp - 0x48]
	mov	rsi, qword ptr [rbp - 0x30]
	mov	rdx, qword ptr [rbp - 0x10]
	call	attach
.label_1726:
	test	byte ptr [byte ptr [print_hyperlink]],  1
	je	.label_1753
	mov	esi, 2
	mov	rdi, qword ptr [rbp - 0x48]
	call	canonicalize_filename_mode
	mov	rdi, qword ptr [rbp - 0x40]
	mov	qword ptr [rdi + 0x10], rax
	mov	rax, qword ptr [rbp - 0x40]
	cmp	qword ptr [rax + 0x10], 0
	jne	.label_1760
	movabs	rdi, OFFSET FLAT:label_1764
	mov	al, byte ptr [rbp - 0x21]
	mov	byte ptr [rbp - 0x6b1], al
	call	gettext
	mov	rdx, qword ptr [rbp - 0x48]
	mov	cl, byte ptr [rbp - 0x6b1]
	and	cl, 1
	movzx	edi, cl
	mov	rsi, rax
	call	file_failure
.label_1760:
	jmp	.label_1753
.label_1753:
	mov	eax,  dword ptr [dword ptr [rip + dereference]]
	mov	ecx, eax
	add	ecx, -3
	sub	ecx, 2
	mov	dword ptr [rbp - 0x6b8], eax
	mov	dword ptr [rbp - 0x6bc], ecx
	jb	.label_1766
	jmp	.label_1776
.label_1776:
	mov	eax, dword ptr [rbp - 0x6b8]
	sub	eax, 5
	mov	dword ptr [rbp - 0x6c0], eax
	jne	.label_1742
	jmp	.label_1781
.label_1781:
	mov	rdi, qword ptr [rbp - 0x48]
	mov	rax, qword ptr [rbp - 0x40]
	add	rax, 0x18
	mov	rsi, rax
	call	stat
	mov	dword ptr [rbp - 0x50], eax
	mov	byte ptr [rbp - 0x49], 1
	jmp	.label_1731
.label_1778:
	mov	rax, qword ptr [rbp - 0x40]
	mov	ecx, dword ptr [rax + 0x30]
	and	ecx, 0xf000
	cmp	ecx, 0x4000
	sete	dl
	xor	dl, 0xff
	and	dl, 1
	movzx	ecx, dl
	mov	dword ptr [rbp - 0x6c4], ecx
.label_1782:
	mov	eax, dword ptr [rbp - 0x6c4]
	cmp	eax, 0
	setne	cl
	and	cl, 1
	mov	byte ptr [rbp - 0x51], cl
	test	byte ptr [rbp - 0x51], 1
	jne	.label_1792
	jmp	.label_1731
	.section	.text
	.align	32
	#Procedure 0x4141d0

	.globl gobble_file
	.type gobble_file, @function
gobble_file:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x6e0
	mov	al, cl
	mov	qword ptr [rbp - 0x10], rdi
	mov	dword ptr [rbp - 0x14], esi
	mov	qword ptr [rbp - 0x20], rdx
	and	al, 1
	mov	byte ptr [rbp - 0x21], al
	mov	qword ptr [rbp - 0x30], r8
	mov	qword ptr [rbp - 0x38], 0
	test	byte ptr [rbp - 0x21], 1
	je	.label_1741
	cmp	qword ptr [rbp - 0x20], 0
	jne	.label_1711
.label_1741:
	jmp	.label_1714
.label_1766:
	test	byte ptr [rbp - 0x21], 1
	je	.label_1716
	mov	rdi, qword ptr [rbp - 0x48]
	mov	rax, qword ptr [rbp - 0x40]
	add	rax, 0x18
	mov	rsi, rax
	call	stat
	mov	dword ptr [rbp - 0x50], eax
	mov	byte ptr [rbp - 0x49], 1
	cmp	dword ptr [dword ptr [dereference]],  3
	jne	.label_1725
	jmp	.label_1731
.label_1758:
	mov	rdi, qword ptr [rbp - 0x10]
	call	xstrdup
	mov	rdi, qword ptr [rbp - 0x40]
	mov	qword ptr [rdi], rax
	mov	rax,  qword ptr [word ptr [cwd_n_used]]
	add	rax, 1
	mov	qword ptr [word ptr [cwd_n_used]],  rax
	mov	qword ptr [rbp - 8], 0
	jmp	.label_1735
.label_1792:
	jmp	.label_1716
.label_1716:
	jmp	.label_1742
.label_1742:
	mov	rdi, qword ptr [rbp - 0x48]
	mov	rax, qword ptr [rbp - 0x40]
	add	rax, 0x18
	mov	rsi, rax
	call	lstat
	mov	dword ptr [rbp - 0x50], eax
	mov	byte ptr [rbp - 0x49], 0
.label_1731:
	cmp	dword ptr [rbp - 0x50], 0
	je	.label_1747
	movabs	rdi, OFFSET FLAT:label_1748
	mov	al, byte ptr [rbp - 0x21]
	mov	byte ptr [rbp - 0x6c5], al
	call	gettext
	mov	rdx, qword ptr [rbp - 0x48]
	mov	cl, byte ptr [rbp - 0x6c5]
	and	cl, 1
	movzx	edi, cl
	mov	rsi, rax
	call	file_failure
	test	byte ptr [rbp - 0x21], 1
	je	.label_1758
	mov	qword ptr [rbp - 8], 0
	jmp	.label_1735
.label_1722:
	movabs	rax, OFFSET FLAT:UNKNOWN_SECURITY_CONTEXT
	mov	rcx, qword ptr [rbp - 0x40]
	mov	qword ptr [rcx + 0xb0], rax
	call	__errno_location
	mov	edi, dword ptr [rax]
	call	is_ENOTSUP
	test	al, 1
	jne	.label_1768
	call	__errno_location
	cmp	dword ptr [rax], 0x3d
	jne	.label_1771
.label_1768:
	mov	dword ptr [rbp - 0x50], 0
.label_1771:
	jmp	.label_1765
.label_1765:
	cmp	dword ptr [rbp - 0x50], 0
	jne	.label_1775
	cmp	dword ptr [dword ptr [format]],  0
	jne	.label_1775
	mov	rdi, qword ptr [rbp - 0x48]
	mov	rsi, qword ptr [rbp - 0x40]
	call	file_has_acl_cache
	xor	ecx, ecx
	mov	dword ptr [rbp - 0x5c], eax
	cmp	dword ptr [rbp - 0x5c], 0
	setl	dl
	and	dl, 1
	movzx	eax, dl
	mov	dword ptr [rbp - 0x50], eax
	cmp	ecx, dword ptr [rbp - 0x5c]
	setl	dl
	and	dl, 1
	mov	byte ptr [rbp - 0x53], dl
.label_1775:
	test	byte ptr [rbp - 0x52], 1
	jne	.label_1783
	test	byte ptr [rbp - 0x53], 1
	jne	.label_1783
	xor	eax, eax
	mov	dword ptr [rbp - 0x6cc], eax
	jmp	.label_1786
.label_1773:
	mov	rax, qword ptr [rbp - 0x40]
	mov	ecx, dword ptr [rax + 0x30]
	and	ecx, 0xf000
	cmp	ecx, 0x4000
	jne	.label_1791
	test	byte ptr [rbp - 0x21], 1
	je	.label_1793
	test	byte ptr [byte ptr [immediate_dirs]],  1
	jne	.label_1793
	mov	rax, qword ptr [rbp - 0x40]
	mov	dword ptr [rax + 0xa8], 9
	jmp	.label_1796
.label_1801:
	mov	eax, dword ptr [rbp - 8]
	mov	dword ptr [rbp - 4], eax
.label_1802:
	mov	eax, dword ptr [rbp - 4]
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x4143eb
	.globl sub_4143eb
	.type sub_4143eb, @function
sub_4143eb:

	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4143f4

	.globl c_tolower
	.type c_tolower, @function
c_tolower:
	push	rbp
	mov	rbp, rsp
	mov	dword ptr [rbp - 8], edi
	add	edi, -0x41
	sub	edi, 0x19
	mov	dword ptr [rbp - 0xc], edi
	ja	.label_1801
	jmp	.label_1800
.label_1800:
	mov	eax, dword ptr [rbp - 8]
	sub	eax, 0x41
	add	eax, 0x61
	mov	dword ptr [rbp - 4], eax
	jmp	.label_1802
	.section	.text
	.align	32
	#Procedure 0x414420

	.globl rev_xstrcoll_version
	.type rev_xstrcoll_version, @function
rev_xstrcoll_version:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	rsi, qword ptr [rbp - 0x10]
	mov	rdi, qword ptr [rbp - 8]
	mov	qword ptr [rbp - 0x18], rdi
	mov	rdi, rsi
	mov	rsi, qword ptr [rbp - 0x18]
	call	cmp_version
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x41444e
	.globl sub_41444e
	.type sub_41444e, @function
sub_41444e:

	nop	
	.section	.text
	.align	32
	#Procedure 0x414450

	.globl xstrcoll_name
	.type xstrcoll_name, @function
xstrcoll_name:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	movabs	rdx, OFFSET FLAT:xstrcoll
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	rsi, qword ptr [rbp - 8]
	mov	rdi, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 0x18], rdi
	mov	rdi, rsi
	mov	rsi, qword ptr [rbp - 0x18]
	call	cmp_name
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x414488
	.globl sub_414488
	.type sub_414488, @function
sub_414488:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x414490
	.globl ambsalign
	.type ambsalign, @function
ambsalign:

	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x40
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	dword ptr [rbp - 0x14], edx
	mov	dword ptr [rbp - 0x18], ecx
	mov	rsi, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rsi]
	mov	qword ptr [rbp - 0x20], rsi
	mov	rsi, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rsi]
	mov	qword ptr [rbp - 0x28], rsi
	mov	rsi, qword ptr [rbp - 0x28]
	mov	qword ptr [rbp - 0x30], rsi
	mov	qword ptr [rbp - 0x38], 0
.label_1806:
	mov	rax, qword ptr [rbp - 0x30]
	cmp	rax, qword ptr [rbp - 0x28]
	jb	.label_1803
	mov	rax, qword ptr [rbp - 0x30]
	add	rax, 1
	mov	qword ptr [rbp - 0x28], rax
	mov	rdi, qword ptr [rbp - 0x38]
	mov	rsi, qword ptr [rbp - 0x28]
	call	realloc
	mov	qword ptr [rbp - 0x40], rax
	cmp	qword ptr [rbp - 0x40], 0
	jne	.label_1805
	mov	rdi, qword ptr [rbp - 0x38]
	call	free
	mov	qword ptr [rbp - 0x38], 0
	jmp	.label_1803
.label_1805:
	mov	rax, qword ptr [rbp - 0x40]
	mov	qword ptr [rbp - 0x38], rax
	mov	rax, qword ptr [rbp - 0x20]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	qword ptr [rcx], rax
	mov	rdi, qword ptr [rbp - 8]
	mov	rsi, qword ptr [rbp - 0x38]
	mov	rdx, qword ptr [rbp - 0x28]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	r8d, dword ptr [rbp - 0x14]
	mov	r9d, dword ptr [rbp - 0x18]
	call	mbsalign
	mov	qword ptr [rbp - 0x30], rax
	cmp	qword ptr [rbp - 0x30], -1
	jne	.label_1804
	mov	rdi, qword ptr [rbp - 0x38]
	call	free
	mov	qword ptr [rbp - 0x38], 0
	jmp	.label_1803
.label_1803:
	mov	rax, qword ptr [rbp - 0x38]
	add	rsp, 0x40
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x414577
	.globl sub_414577
	.type sub_414577, @function
sub_414577:

	nop	dword ptr [rax]
.label_1804:
	jmp	.label_1806
.label_1808:
	mov	rax, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rbp - 8]
	mov	rdi, qword ptr [rcx]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rcx]
	call	rax
	mov	dword ptr [rbp - 0x44], eax
.label_1807:
	mov	eax, dword ptr [rbp - 0x44]
	add	rsp, 0x50
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x4145a0
	.globl sub_4145a0
	.type sub_4145a0, @function
sub_4145a0:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4145af

	.globl cmp_mtime
	.type cmp_mtime, @function
cmp_mtime:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x50
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	qword ptr [rbp - 0x18], rdx
	mov	rdx, qword ptr [rbp - 0x10]
	add	rdx, 0x18
	mov	rdi, rdx
	call	get_stat_mtime
	mov	qword ptr [rbp - 0x30], rax
	mov	qword ptr [rbp - 0x28], rdx
	mov	rax, qword ptr [rbp - 8]
	add	rax, 0x18
	mov	rdi, rax
	call	get_stat_mtime
	mov	qword ptr [rbp - 0x40], rax
	mov	qword ptr [rbp - 0x38], rdx
	mov	rdi, qword ptr [rbp - 0x30]
	mov	rsi, qword ptr [rbp - 0x28]
	mov	rdx, qword ptr [rbp - 0x40]
	mov	rcx, qword ptr [rbp - 0x38]
	call	timespec_cmp
	mov	dword ptr [rbp - 0x1c], eax
	cmp	dword ptr [rbp - 0x1c], 0
	je	.label_1808
	mov	eax, dword ptr [rbp - 0x1c]
	mov	dword ptr [rbp - 0x44], eax
	jmp	.label_1807
	.section	.text
	.align	32
	#Procedure 0x414620

	.globl rev_xstrcoll_mtime
	.type rev_xstrcoll_mtime, @function
rev_xstrcoll_mtime:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	movabs	rdx, OFFSET FLAT:xstrcoll
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	rsi, qword ptr [rbp - 0x10]
	mov	rdi, qword ptr [rbp - 8]
	mov	qword ptr [rbp - 0x18], rdi
	mov	rdi, rsi
	mov	rsi, qword ptr [rbp - 0x18]
	call	cmp_mtime
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x414658
	.globl sub_414658
	.type sub_414658, @function
sub_414658:

	nop	dword ptr [rax + rax]
.label_1809:
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x414662
	.globl sub_414662
	.type sub_414662, @function
sub_414662:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x41466e

	.globl initialize_ordering_vector
	.type initialize_ordering_vector, @function
initialize_ordering_vector:
	push	rbp
	mov	rbp, rsp
	mov	qword ptr [rbp - 8], 0
.label_1810:
	mov	rax, qword ptr [rbp - 8]
	cmp	rax,  qword ptr [word ptr [cwd_n_used]]
	jae	.label_1809
	mov	rax, qword ptr [rbp - 8]
	imul	rax, rax, 0xc8
	add	rax,  qword ptr [word ptr [cwd_file]]
	mov	rcx, qword ptr [rbp - 8]
	mov	rdx,  qword ptr [word ptr [sorted_file]]
	mov	qword ptr [rdx + rcx*8], rax
	mov	rax, qword ptr [rbp - 8]
	add	rax, 1
	mov	qword ptr [rbp - 8], rax
	jmp	.label_1810
	.section	.text
	.align	32
	#Procedure 0x4146c0
	.globl hash_print_statistics
	.type hash_print_statistics, @function
hash_print_statistics:

	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x50
	movabs	rax, OFFSET FLAT:label_1811
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	rdi, qword ptr [rbp - 8]
	mov	qword ptr [rbp - 0x38], rax
	call	hash_get_n_entries
	mov	qword ptr [rbp - 0x18], rax
	mov	rdi, qword ptr [rbp - 8]
	call	hash_get_n_buckets
	mov	qword ptr [rbp - 0x20], rax
	mov	rdi, qword ptr [rbp - 8]
	call	hash_get_n_buckets_used
	mov	qword ptr [rbp - 0x28], rax
	mov	rdi, qword ptr [rbp - 8]
	call	hash_get_max_bucket_length
	mov	qword ptr [rbp - 0x30], rax
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rdx, qword ptr [rbp - 0x18]
	mov	ecx, OFFSET FLAT:label_1817
	mov	esi, ecx
	xor	ecx, ecx
	mov	r8b, cl
	mov	al, r8b
	mov	byte ptr [rbp - 0x39], r8b
	call	fprintf
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rdx, qword ptr [rbp - 0x20]
	mov	ecx, OFFSET FLAT:label_1812
	mov	esi, ecx
	mov	r8b, byte ptr [rbp - 0x39]
	mov	dword ptr [rbp - 0x40], eax
	mov	al, r8b
	call	fprintf
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rdx, qword ptr [rbp - 0x28]
	movq	xmm0, rdx
	movaps	xmm1,  xmmword ptr [word ptr [rip + label_1814]]
	punpckldq	xmm0, xmm1
	movapd	xmm2,  xmmword ptr [word ptr [rip + label_1815]]
	subpd	xmm0, xmm2
	pshufd	xmm3, xmm0, 0x4e
	addpd	xmm3, xmm0
	movsd	xmm0,  qword ptr [word ptr [rip + label_1816]]
	mulsd	xmm3, xmm0
	movq	xmm0, qword ptr [rbp - 0x20]
	punpckldq	xmm0, xmm1
	subpd	xmm0, xmm2
	pshufd	xmm1, xmm0, 0x4e
	addpd	xmm1, xmm0
	divsd	xmm3, xmm1
	mov	rsi, qword ptr [rbp - 0x38]
	movaps	xmm0, xmm3
	mov	dword ptr [rbp - 0x44], eax
	mov	al, 1
	call	fprintf
	movabs	rsi, OFFSET FLAT:label_1813
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rdx, qword ptr [rbp - 0x30]
	mov	dword ptr [rbp - 0x48], eax
	mov	al, 0
	call	fprintf
	mov	dword ptr [rbp - 0x4c], eax
	add	rsp, 0x50
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x4147d9
	.globl sub_4147d9
	.type sub_4147d9, @function
sub_4147d9:

	nop	dword ptr [rax]
.label_1820:
	mov	rax, -1
	mov	qword ptr [rbp - 0x28], rax
	jmp	.label_1818
.label_1818:
	mov	rax, qword ptr [rbp - 0x28]
	mov	qword ptr [word ptr [line_length]],  rax
	mov	byte ptr [rbp - 1], 1
	jmp	.label_1819
	.section	.text
	.align	32
	#Procedure 0x414805

	.globl set_line_length
	.type set_line_length, @function
set_line_length:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x30
	mov	qword ptr [rbp - 0x10], rdi
	mov	eax, OFFSET FLAT:label_662
	mov	r8d, eax
	xor	eax, eax
	mov	esi, eax
	lea	rcx, [rbp - 0x18]
	mov	edx, eax
	call	xstrtoumax
	mov	edx, eax
	test	eax, eax
	mov	dword ptr [rbp - 0x1c], edx
	je	.label_1821
	jmp	.label_1824
.label_1824:
	mov	eax, dword ptr [rbp - 0x1c]
	sub	eax, 1
	mov	dword ptr [rbp - 0x20], eax
	je	.label_1823
	jmp	.label_1822
.label_1822:
	mov	byte ptr [rbp - 1], 0
.label_1819:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	add	rsp, 0x30
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x414860
	.globl sub_414860
	.type sub_414860, @function
sub_414860:

	nop	dword ptr [rax]
.label_1823:
	mov	qword ptr [word ptr [line_length]],  -1
	mov	byte ptr [rbp - 1], 1
	jmp	.label_1819
.label_1821:
	cmp	qword ptr [rbp - 0x18], -1
	jae	.label_1820
	mov	rax, qword ptr [rbp - 0x18]
	mov	qword ptr [rbp - 0x28], rax
	jmp	.label_1818
.label_1827:
	mov	edi, dword ptr [rbp - 4]
	call	getuser
	mov	qword ptr [rbp - 0x20], rax
.label_1826:
	mov	rax, qword ptr [rbp - 0x20]
	mov	qword ptr [rbp - 0x18], rax
.label_1825:
	mov	rax, qword ptr [rbp - 0x18]
	mov	ecx, dword ptr [rbp - 4]
	mov	esi, ecx
	mov	edx, dword ptr [rbp - 8]
	mov	rdi, rax
	call	format_user_or_group
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x4148be
	.globl sub_4148be
	.type sub_4148be, @function
sub_4148be:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4148c3

	.globl format_user
	.type format_user, @function
format_user:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	mov	al, dl
	mov	dword ptr [rbp - 4], edi
	mov	dword ptr [rbp - 8], esi
	and	al, 1
	mov	byte ptr [rbp - 9], al
	test	byte ptr [rbp - 9], 1
	jne	.label_1828
	movabs	rax, OFFSET FLAT:label_684
	mov	qword ptr [rbp - 0x18], rax
	jmp	.label_1825
.label_1828:
	test	byte ptr [byte ptr [numeric_ids]],  1
	je	.label_1827
	xor	eax, eax
	mov	ecx, eax
	mov	qword ptr [rbp - 0x20], rcx
	jmp	.label_1826
.label_1841:
	mov	qword ptr [rbp - 0x80], 0
	mov	rax, qword ptr [rbp - 0x68]
	mov	qword ptr [rbp - 0x88], rax
	jmp	.label_1831
.label_1836:
	mov	rax, qword ptr [rbp - 0x78]
	add	rax, 1
	mov	qword ptr [rbp - 0x78], rax
	mov	rax, qword ptr [rbp - 0x78]
	shl	rax, 2
	mov	rdi, rax
	call	malloc
	mov	qword ptr [rbp - 0x48], rax
	cmp	qword ptr [rbp - 0x48], 0
	jne	.label_1844
	mov	eax, dword ptr [rbp - 0x28]
	and	eax, 1
	cmp	eax, 0
	je	.label_1849
	jmp	.label_1842
.label_1839:
	jmp	.label_1829
.label_1837:
	mov	rax, qword ptr [rbp - 0x90]
	mov	qword ptr [rbp - 0xc0], rax
.label_1850:
	mov	rax, qword ptr [rbp - 0xc0]
	mov	rdi, qword ptr [rbp - 0xb0]
	mov	rsi, qword ptr [rbp - 0xb8]
	mov	rdx, rax
	call	mempcpy
	mov	qword ptr [rbp - 0x10], rax
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rbp - 0x98]
	mov	rdx, qword ptr [rbp - 0x88]
	call	mbs_align_pad
	mov	qword ptr [rbp - 0xc8], rax
.label_1852:
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x80]
	add	rcx, qword ptr [rbp - 0x88]
	shl	rcx, 0
	add	rax, rcx
	mov	qword ptr [rbp - 0x30], rax
.label_1829:
	mov	rax, qword ptr [rbp - 0x48]
	mov	rdi, rax
	call	free
	mov	rdi, qword ptr [rbp - 0x40]
	call	free
	mov	rax, qword ptr [rbp - 0x30]
	add	rsp, 0xd0
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x4149f5
	.globl sub_4149f5
	.type sub_4149f5, @function
sub_4149f5:

	nop	word ptr cs:[rax + rax]
.label_1849:
	jmp	.label_1829
.label_1854:
	jmp	.label_1832
.label_1832:
	mov	rax, qword ptr [rbp - 0x68]
	shr	rax, 1
	mov	rcx, qword ptr [rbp - 0x68]
	and	rcx, 1
	add	rax, rcx
	mov	qword ptr [rbp - 0x80], rax
	mov	rax, qword ptr [rbp - 0x68]
	shr	rax, 1
	mov	qword ptr [rbp - 0x88], rax
.label_1831:
	mov	eax, dword ptr [rbp - 0x28]
	and	eax, 4
	cmp	eax, 0
	je	.label_1843
	mov	qword ptr [rbp - 0x80], 0
.label_1843:
	mov	eax, dword ptr [rbp - 0x28]
	and	eax, 8
	cmp	eax, 0
	je	.label_1846
	mov	qword ptr [rbp - 0x88], 0
.label_1846:
	cmp	qword ptr [rbp - 0x18], 0
	je	.label_1852
	mov	rax, qword ptr [rbp - 0x10]
	add	rax, qword ptr [rbp - 0x18]
	add	rax, -1
	mov	qword ptr [rbp - 0x98], rax
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rbp - 0x98]
	mov	rdx, qword ptr [rbp - 0x80]
	call	mbs_align_pad
	mov	qword ptr [rbp - 0x10], rax
	mov	rax, qword ptr [rbp - 0x98]
	mov	rdx, qword ptr [rbp - 0x10]
	sub	rax, rdx
	mov	qword ptr [rbp - 0x90], rax
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rbp - 0x50]
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x90]
	mov	qword ptr [rbp - 0xb0], rdi
	mov	qword ptr [rbp - 0xb8], rsi
	jae	.label_1837
	mov	rax, qword ptr [rbp - 0x60]
	mov	qword ptr [rbp - 0xc0], rax
	jmp	.label_1850
	.section	.text
	.align	32
	#Procedure 0x414ae6

	.globl mbsalign
	.type mbsalign, @function
mbsalign:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0xd0
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	qword ptr [rbp - 0x18], rdx
	mov	qword ptr [rbp - 0x20], rcx
	mov	dword ptr [rbp - 0x24], r8d
	mov	dword ptr [rbp - 0x28], r9d
	mov	qword ptr [rbp - 0x30], -1
	mov	rdi, qword ptr [rbp - 8]
	call	strlen
	add	rax, 1
	mov	qword ptr [rbp - 0x38], rax
	mov	qword ptr [rbp - 0x40], 0
	mov	qword ptr [rbp - 0x48], 0
	mov	rax, qword ptr [rbp - 8]
	mov	qword ptr [rbp - 0x50], rax
	mov	rax, qword ptr [rbp - 0x38]
	sub	rax, 1
	mov	qword ptr [rbp - 0x58], rax
	mov	rax, qword ptr [rbp - 0x58]
	mov	qword ptr [rbp - 0x60], rax
	mov	qword ptr [rbp - 0x68], 0
	mov	byte ptr [rbp - 0x69], 0
	mov	byte ptr [rbp - 0x6a], 0
	mov	r8d, dword ptr [rbp - 0x28]
	and	r8d, 2
	cmp	r8d, 0
	jne	.label_1834
	call	__ctype_get_mb_cur_max
	cmp	rax, 1
	jbe	.label_1834
	xor	eax, eax
	mov	ecx, eax
	mov	rsi, qword ptr [rbp - 8]
	mov	rdi, rcx
	mov	rdx, rcx
	call	mbstowcs
	mov	qword ptr [rbp - 0x78], rax
	cmp	qword ptr [rbp - 0x78], -1
	jne	.label_1836
	mov	eax, dword ptr [rbp - 0x28]
	and	eax, 1
	cmp	eax, 0
	je	.label_1839
	jmp	.label_1842
.label_1845:
	mov	rax, qword ptr [rbp - 0x40]
	mov	qword ptr [rbp - 0x50], rax
	mov	rdi, qword ptr [rbp - 0x48]
	mov	rax, qword ptr [rbp - 0x20]
	mov	rsi, qword ptr [rax]
	call	wc_truncate
	mov	qword ptr [rbp - 0x58], rax
	mov	rdi, qword ptr [rbp - 0x40]
	mov	rsi, qword ptr [rbp - 0x48]
	mov	rdx, qword ptr [rbp - 0x38]
	call	wcstombs
	mov	qword ptr [rbp - 0x60], rax
.label_1833:
	jmp	.label_1842
.label_1842:
	mov	rax, qword ptr [rbp - 0x58]
	mov	rcx, qword ptr [rbp - 0x20]
	cmp	rax, qword ptr [rcx]
	jbe	.label_1830
	mov	rax, qword ptr [rbp - 0x20]
	mov	rax, qword ptr [rax]
	mov	qword ptr [rbp - 0x58], rax
	mov	rax, qword ptr [rbp - 0x58]
	mov	qword ptr [rbp - 0x60], rax
.label_1830:
	mov	rax, qword ptr [rbp - 0x20]
	mov	rax, qword ptr [rax]
	cmp	rax, qword ptr [rbp - 0x58]
	jbe	.label_1835
	mov	rax, qword ptr [rbp - 0x20]
	mov	rax, qword ptr [rax]
	sub	rax, qword ptr [rbp - 0x58]
	mov	qword ptr [rbp - 0x68], rax
.label_1835:
	mov	rax, qword ptr [rbp - 0x58]
	mov	rcx, qword ptr [rbp - 0x20]
	mov	qword ptr [rcx], rax
	mov	edx, dword ptr [rbp - 0x24]
	test	edx, edx
	mov	dword ptr [rbp - 0x9c], edx
	je	.label_1841
	jmp	.label_1847
.label_1847:
	mov	eax, dword ptr [rbp - 0x9c]
	sub	eax, 1
	mov	dword ptr [rbp - 0xa0], eax
	je	.label_1848
	jmp	.label_1853
.label_1853:
	mov	eax, dword ptr [rbp - 0x9c]
	sub	eax, 2
	mov	dword ptr [rbp - 0xa4], eax
	je	.label_1854
	jmp	.label_1832
.label_1848:
	mov	rax, qword ptr [rbp - 0x68]
	mov	qword ptr [rbp - 0x80], rax
	mov	qword ptr [rbp - 0x88], 0
	jmp	.label_1831
.label_1844:
	mov	rdi, qword ptr [rbp - 0x48]
	mov	rsi, qword ptr [rbp - 8]
	mov	rdx, qword ptr [rbp - 0x78]
	call	mbstowcs
	cmp	rax, 0
	je	.label_1840
	mov	rax, qword ptr [rbp - 0x78]
	sub	rax, 1
	mov	rcx, qword ptr [rbp - 0x48]
	mov	dword ptr [rcx + rax*4], 0
	mov	byte ptr [rbp - 0x6a], 1
	mov	rdi, qword ptr [rbp - 0x48]
	call	wc_ensure_printable
	and	al, 1
	mov	byte ptr [rbp - 0x69], al
	mov	rdi, qword ptr [rbp - 0x48]
	mov	rsi, qword ptr [rbp - 0x78]
	call	wcswidth
	movsxd	rcx, eax
	mov	qword ptr [rbp - 0x58], rcx
.label_1840:
	jmp	.label_1834
.label_1834:
	test	byte ptr [rbp - 0x6a], 1
	je	.label_1833
	test	byte ptr [rbp - 0x69], 1
	jne	.label_1855
	mov	rax, qword ptr [rbp - 0x58]
	mov	rcx, qword ptr [rbp - 0x20]
	cmp	rax, qword ptr [rcx]
	jbe	.label_1833
.label_1855:
	test	byte ptr [rbp - 0x69], 1
	je	.label_1838
	xor	eax, eax
	mov	ecx, eax
	mov	rsi, qword ptr [rbp - 0x48]
	mov	rdi, rcx
	mov	rdx, rcx
	call	wcstombs
	add	rax, 1
	mov	qword ptr [rbp - 0x38], rax
.label_1838:
	mov	rdi, qword ptr [rbp - 0x38]
	call	malloc
	mov	qword ptr [rbp - 0x40], rax
	cmp	qword ptr [rbp - 0x40], 0
	jne	.label_1845
	mov	eax, dword ptr [rbp - 0x28]
	and	eax, 1
	cmp	eax, 0
	je	.label_1851
	jmp	.label_1842
.label_1851:
	jmp	.label_1829
	.section	.text
	.align	32
	#Procedure 0x414d70

	.globl signal_restore
	.type signal_restore, @function
signal_restore:
	push	rbp
	mov	rbp, rsp
	xor	edi, edi
	call	signal_setup
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x414d7d
	.globl sub_414d7d
	.type sub_414d7d, @function
sub_414d7d:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x414d80
	.globl timespectod
	.type timespectod, @function
timespectod:

	push	rbp
	mov	rbp, rsp
	movsd	xmm0,  qword ptr [word ptr [rip + label_1856]]
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 8], rsi
	cvtsi2sd	xmm1, qword ptr [rbp - 0x10]
	cvtsi2sd	xmm2, qword ptr [rbp - 8]
	divsd	xmm2, xmm0
	addsd	xmm1, xmm2
	movaps	xmm0, xmm1
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x414dad
	.globl sub_414dad
	.type sub_414dad, @function
sub_414dad:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x414db0

	.globl xstrcoll
	.type xstrcoll, @function
xstrcoll:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x30
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	call	__errno_location
	mov	dword ptr [rax], 0
	mov	rdi, qword ptr [rbp - 8]
	mov	rsi, qword ptr [rbp - 0x10]
	call	strcoll
	mov	dword ptr [rbp - 0x14], eax
	call	__errno_location
	cmp	dword ptr [rax], 0
	je	.label_1857
	call	__errno_location
	movabs	rdi, OFFSET FLAT:label_1858
	mov	esi, dword ptr [rax]
	mov	dword ptr [rbp - 0x18], esi
	call	gettext
	xor	edi, edi
	mov	rsi, qword ptr [rbp - 8]
	mov	qword ptr [rbp - 0x20], rax
	call	quote_n
	mov	edi, 1
	mov	rsi, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 0x28], rax
	call	quote_n
	xor	edi, edi
	mov	esi, dword ptr [rbp - 0x18]
	mov	rdx, qword ptr [rbp - 0x20]
	mov	rcx, qword ptr [rbp - 0x28]
	mov	r8, rax
	mov	al, 0
	call	error
	xor	edi, edi
	call	set_exit_status
	movabs	rdi, OFFSET FLAT:failed_strcoll
	mov	esi, 1
	call	longjmp
.label_1857:
	mov	eax, dword ptr [rbp - 0x14]
	add	rsp, 0x30
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x414e5e
	.globl sub_414e5e
	.type sub_414e5e, @function
sub_414e5e:

	nop	
	.section	.text
	.align	32
	#Procedure 0x414e60

	.globl getenv_TZ
	.type getenv_TZ, @function
getenv_TZ:
	push	rbp
	mov	rbp, rsp
	movabs	rdi, OFFSET FLAT:label_1859
	call	getenv
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x414e75
	.globl sub_414e75
	.type sub_414e75, @function
sub_414e75:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x414e80

	.globl cmp_name
	.type cmp_name, @function
cmp_name:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	qword ptr [rbp - 0x18], rdx
	mov	rdx, qword ptr [rbp - 0x18]
	mov	rsi, qword ptr [rbp - 8]
	mov	rdi, qword ptr [rsi]
	mov	rsi, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rsi]
	call	rdx
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x414eae
	.globl sub_414eae
	.type sub_414eae, @function
sub_414eae:

	nop	
	.section	.text
	.align	32
	#Procedure 0x414eb0

	.globl rev_strcmp_name
	.type rev_strcmp_name, @function
rev_strcmp_name:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	movabs	rdx, OFFSET FLAT:strcmp
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	rsi, qword ptr [rbp - 0x10]
	mov	rdi, qword ptr [rbp - 8]
	mov	qword ptr [rbp - 0x18], rdi
	mov	rdi, rsi
	mov	rsi, qword ptr [rbp - 0x18]
	call	cmp_name
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x414ee8
	.globl sub_414ee8
	.type sub_414ee8, @function
sub_414ee8:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x414ef0

	.globl rev_strcmp_df_ctime
	.type rev_strcmp_df_ctime, @function
rev_strcmp_df_ctime:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 0x18], rsi
	mov	rax, qword ptr [rbp - 0x10]
	mov	rdi, rax
	call	is_linked_directory
	and	al, 1
	mov	byte ptr [rbp - 0x19], al
	mov	rdi, qword ptr [rbp - 0x18]
	call	is_linked_directory
	and	al, 1
	mov	byte ptr [rbp - 0x1a], al
	test	byte ptr [rbp - 0x19], 1
	je	.label_1861
	test	byte ptr [rbp - 0x1a], 1
	jne	.label_1861
	mov	dword ptr [rbp - 4], 0xffffffff
	jmp	.label_1862
.label_1860:
	jmp	.label_1863
.label_1863:
	movabs	rdx, OFFSET FLAT:strcmp
	mov	rax, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rdi, rax
	mov	rsi, rcx
	call	cmp_ctime
	mov	dword ptr [rbp - 4], eax
.label_1862:
	mov	eax, dword ptr [rbp - 4]
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x414f6d
	.globl sub_414f6d
	.type sub_414f6d, @function
sub_414f6d:

	nop	dword ptr [rax]
.label_1861:
	test	byte ptr [rbp - 0x19], 1
	jne	.label_1860
	test	byte ptr [rbp - 0x1a], 1
	je	.label_1860
	mov	dword ptr [rbp - 4], 1
	jmp	.label_1862
.label_1876:
	jmp	.label_1866
.label_1866:
	xor	eax, eax
	mov	edi, eax
	call	clone_quoting_options
	mov	esi, 0x3a
	mov	edx, 1
	mov	qword ptr [word ptr [dirname_quoting_options]],  rax
	mov	rdi,  qword ptr [word ptr [dirname_quoting_options]]
	call	set_char_quoting
	test	byte ptr [byte ptr [dired]],  1
	mov	dword ptr [rbp - 0x12c], eax
	je	.label_1938
	cmp	dword ptr [dword ptr [format]],  0
	jne	.label_1941
	test	byte ptr [byte ptr [print_hyperlink]],  1
	je	.label_1938
.label_1941:
	mov	byte ptr [byte ptr [dired]],  0
.label_1938:
	cmp	dword ptr [dword ptr [time_type]],  1
	je	.label_1948
	cmp	dword ptr [dword ptr [time_type]],  2
	jne	.label_1864
.label_1948:
	test	byte ptr [rbp - 0x19], 1
	jne	.label_1864
	cmp	dword ptr [dword ptr [format]],  0
	je	.label_1864
	mov	dword ptr [dword ptr [sort_type]],  4
.label_1864:
	cmp	dword ptr [dword ptr [format]],  0
	jne	.label_1873
	mov	rax, qword ptr [rbp - 0x18]
	mov	qword ptr [rbp - 0x80], rax
	cmp	qword ptr [rbp - 0x80], 0
	jne	.label_1875
	movabs	rdi, OFFSET FLAT:label_1878
	call	getenv
	mov	qword ptr [rbp - 0x80], rax
	cmp	rax, 0
	jne	.label_1879
	movabs	rdi, OFFSET FLAT:label_1884
	call	bad_cast
	mov	qword ptr [rbp - 0x80], rax
.label_1879:
	jmp	.label_1875
.label_1875:
	jmp	.label_1888
.label_1888:
	movabs	rsi, OFFSET FLAT:decode_switches.posix_prefix
	mov	eax, 6
	mov	edx, eax
	mov	rdi, qword ptr [rbp - 0x80]
	call	strncmp
	cmp	eax, 0
	jne	.label_1893
	mov	edi, 2
	call	hard_locale
	test	al, 1
	jne	.label_1881
	mov	eax,  dword ptr [dword ptr [optind]]
	mov	dword ptr [rbp - 4], eax
	jmp	.label_1898
.label_1891:
	movabs	rsi, OFFSET FLAT:time_style_args
	movabs	rax, OFFSET FLAT:time_style_types
	mov	ecx, 4
	mov	rdi, qword ptr [rbp - 0x80]
	mov	rdx, rax
	call	argmatch
	mov	qword ptr [rbp - 0x98], rax
	cmp	qword ptr [rbp - 0x98], 0
	jge	.label_1909
	movabs	rdi, OFFSET FLAT:label_1912
	mov	rsi, qword ptr [rbp - 0x80]
	mov	rdx, qword ptr [rbp - 0x98]
	call	argmatch_invalid
	movabs	rdi, OFFSET FLAT:label_1917
	call	gettext
	mov	rsi,  qword ptr [word ptr [stderr]]
	mov	rdi, rax
	call	fputs_unlocked
	movabs	rdx, OFFSET FLAT:time_style_args
	mov	qword ptr [rbp - 0xa0], rdx
	mov	dword ptr [rbp - 0x13c], eax
.label_1937:
	mov	rax, qword ptr [rbp - 0xa0]
	cmp	qword ptr [rax], 0
	je	.label_1924
	movabs	rsi, OFFSET FLAT:label_1928
	mov	rdi,  qword ptr [word ptr [stderr]]
	mov	rax, qword ptr [rbp - 0xa0]
	mov	rcx, rax
	add	rcx, 8
	mov	qword ptr [rbp - 0xa0], rcx
	mov	rdx, qword ptr [rax]
	mov	al, 0
	call	fprintf
	mov	dword ptr [rbp - 0x140], eax
	jmp	.label_1937
.label_2777:
	xor	eax, eax
	mov	edi, eax
	mov	esi, 5
	call	set_quoting_style
	jmp	.label_1865
.label_1910:
	mov	dword ptr [rbp - 0x58], 1
.label_1921:
	mov	al, 1
	cmp	dword ptr [rbp - 0x58], 1
	mov	byte ptr [rbp - 0xff], al
	je	.label_1939
	xor	eax, eax
	mov	cl, al
	cmp	dword ptr [rbp - 0x58], 2
	mov	byte ptr [rbp - 0x100], cl
	jne	.label_1943
	mov	edi, 1
	call	isatty
	cmp	eax, 0
	setne	cl
	mov	byte ptr [rbp - 0x100], cl
.label_1943:
	mov	al, byte ptr [rbp - 0x100]
	mov	byte ptr [rbp - 0xff], al
.label_1939:
	mov	al, byte ptr [rbp - 0xff]
	and	al, 1
	mov	byte ptr [byte ptr [print_hyperlink]],  al
	jmp	.label_1865
.label_2767:
	mov	dword ptr [dword ptr [ignore_mode]],  1
	jmp	.label_1865
.label_1936:
	cmp	qword ptr [word ptr [output_block_size]],  0
	jne	.label_1872
	movabs	rdi, OFFSET FLAT:label_1874
	call	getenv
	movabs	rsi, OFFSET FLAT:human_output_opts
	movabs	rdx, OFFSET FLAT:output_block_size
	mov	qword ptr [rbp - 0x68], rax
	mov	rdi, qword ptr [rbp - 0x68]
	call	human_options
	cmp	qword ptr [rbp - 0x68], 0
	mov	dword ptr [rbp - 0x11c], eax
	jne	.label_1883
	movabs	rdi, OFFSET FLAT:label_1497
	call	getenv
	cmp	rax, 0
	je	.label_1923
.label_1883:
	mov	eax,  dword ptr [dword ptr [human_output_opts]]
	mov	dword ptr [dword ptr [file_human_output_opts]],  eax
	mov	rcx,  qword ptr [word ptr [output_block_size]]
	mov	qword ptr [word ptr [file_output_block_size]],  rcx
.label_1923:
	test	byte ptr [rbp - 0x1a], 1
	je	.label_1894
	mov	dword ptr [dword ptr [human_output_opts]],  0
	mov	qword ptr [word ptr [output_block_size]],  0x400
.label_1894:
	jmp	.label_1872
.label_1872:
	xor	eax, eax
	mov	edi, eax
	mov	eax, 3
	mov	ecx, eax
	mov	rax,  qword ptr [word ptr [line_length]]
	xor	edx, edx
	div	rcx
	mov	qword ptr [word ptr [max_idx]],  rax
	mov	rax,  qword ptr [word ptr [line_length]]
	xor	esi, esi
	mov	edx, esi
	div	rcx
	cmp	rdx, 0
	setne	r8b
	and	r8b, 1
	movzx	esi, r8b
	movsxd	rcx, esi
	add	rcx,  qword ptr [word ptr [max_idx]]
	mov	qword ptr [word ptr [max_idx]],  rcx
	call	get_quoting_style
	xor	esi, esi
	mov	r8b, sil
	mov	dword ptr [rbp - 0x6c], eax
	cmp	dword ptr [dword ptr [format]],  4
	mov	byte ptr [rbp - 0x11d], r8b
	je	.label_1918
	xor	eax, eax
	mov	cl, al
	cmp	dword ptr [dword ptr [format]],  1
	mov	byte ptr [rbp - 0x11d], cl
	je	.label_1918
	cmp	qword ptr [word ptr [line_length]],  0
	jne	.label_1926
	xor	eax, eax
	mov	cl, al
	cmp	dword ptr [dword ptr [format]],  0
	mov	byte ptr [rbp - 0x11d], cl
	jne	.label_1918
.label_1926:
	mov	al, 1
	cmp	dword ptr [rbp - 0x6c], 1
	mov	byte ptr [rbp - 0x11e], al
	je	.label_1930
	mov	al, 1
	cmp	dword ptr [rbp - 0x6c], 3
	mov	byte ptr [rbp - 0x11e], al
	je	.label_1930
	cmp	dword ptr [rbp - 0x6c], 6
	sete	al
	mov	byte ptr [rbp - 0x11e], al
.label_1930:
	mov	al, byte ptr [rbp - 0x11e]
	mov	byte ptr [rbp - 0x11d], al
.label_1918:
	mov	al, byte ptr [rbp - 0x11d]
	xor	ecx, ecx
	mov	edi, ecx
	and	al, 1
	mov	byte ptr [byte ptr [align_variable_outer_quotes]],  al
	call	clone_quoting_options
	mov	qword ptr [word ptr [filename_quoting_options]],  rax
	cmp	dword ptr [rbp - 0x6c], 7
	jne	.label_1947
	mov	esi, 0x20
	mov	edx, 1
	mov	rdi,  qword ptr [word ptr [filename_quoting_options]]
	call	set_char_quoting
	mov	dword ptr [rbp - 0x124], eax
.label_1947:
	mov	eax, 2
	cmp	eax,  dword ptr [dword ptr [indicator_style]]
	ja	.label_1866
	movabs	rax, OFFSET FLAT:label_1868
	mov	ecx,  dword ptr [dword ptr [indicator_style]]
	sub	ecx, 2
	mov	ecx, ecx
	mov	edx, ecx
	add	rax, rdx
	mov	qword ptr [rbp - 0x78], rax
.label_1887:
	mov	rax, qword ptr [rbp - 0x78]
	cmp	byte ptr [rax], 0
	je	.label_1876
	mov	edx, 1
	mov	rdi,  qword ptr [word ptr [filename_quoting_options]]
	mov	rax, qword ptr [rbp - 0x78]
	movsx	esi, byte ptr [rax]
	call	set_char_quoting
	mov	dword ptr [rbp - 0x128], eax
	mov	rax, qword ptr [rbp - 0x78]
	add	rax, 1
	mov	qword ptr [rbp - 0x78], rax
	jmp	.label_1887
.label_2920:
	mov	edi, 2
	call	hard_locale
	test	al, 1
	jne	.label_1889
	jmp	.label_1890
.label_1889:
	mov	dword ptr [rbp - 0xa4], 0
.label_1902:
	cmp	dword ptr [rbp - 0xa4], 2
	jge	.label_1892
	xor	eax, eax
	mov	edi, eax
	mov	edx, 2
	movsxd	rcx, dword ptr [rbp - 0xa4]
	mov	rsi,  qword ptr [word ptr [+ (rcx * 8) + long_time_format]]
	call	dcgettext
	movsxd	rcx, dword ptr [rbp - 0xa4]
	mov	qword ptr [word ptr [+ (rcx * 8) + long_time_format]],  rax
	mov	eax, dword ptr [rbp - 0xa4]
	add	eax, 1
	mov	dword ptr [rbp - 0xa4], eax
	jmp	.label_1902
.label_2821:
	movabs	rdi, OFFSET FLAT:label_1908
	movabs	rdx, OFFSET FLAT:time_args
	movabs	rax, OFFSET FLAT:time_types
	mov	ecx, 4
	mov	r8d, ecx
	mov	rsi,  qword ptr [word ptr [optarg]]
	mov	r9,  qword ptr [word ptr [argmatch_die]]
	mov	rcx, rax
	call	__xargmatch_internal
	mov	r10d,  dword ptr [dword ptr [+ (rax * 4) + time_types]]
	mov	dword ptr [dword ptr [time_type]],  r10d
	jmp	.label_1865
.label_1892:
	jmp	.label_1890
.label_1890:
	jmp	.label_1900
.label_1900:
	jmp	.label_1886
.label_1886:
	call	abformat_init
.label_1873:
	mov	eax,  dword ptr [dword ptr [optind]]
	mov	dword ptr [rbp - 4], eax
.label_1898:
	mov	eax, dword ptr [rbp - 4]
	add	rsp, 0x160
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x41556d
	.globl sub_41556d
	.type sub_41556d, @function
sub_41556d:

	nop	word ptr [rax + rax]
.label_1925:
	jmp	.label_1865
.label_1953:
	mov	dword ptr [dword ptr [time_type]],  0
	mov	dword ptr [dword ptr [sort_type]],  0
	mov	byte ptr [byte ptr [sort_reverse]],  0
	mov	byte ptr [byte ptr [numeric_ids]],  0
	mov	byte ptr [byte ptr [print_block_size]],  0
	mov	dword ptr [dword ptr [indicator_style]],  0
	mov	byte ptr [byte ptr [print_inode]],  0
	mov	dword ptr [dword ptr [dereference]],  1
	mov	byte ptr [byte ptr [recursive]],  0
	mov	byte ptr [byte ptr [immediate_dirs]],  0
	mov	dword ptr [dword ptr [ignore_mode]],  0
	mov	qword ptr [word ptr [ignore_patterns]],  0
	mov	qword ptr [word ptr [hide_patterns]],  0
	mov	byte ptr [byte ptr [print_scontext]],  0
	call	getenv_quoting_style
	movabs	rdi, OFFSET FLAT:label_1951
	mov	qword ptr [word ptr [line_length]],  0x50
	call	getenv
	mov	qword ptr [rbp - 0x28], rax
	cmp	qword ptr [rbp - 0x28], 0
	je	.label_1952
	mov	rax, qword ptr [rbp - 0x28]
	movsx	ecx, byte ptr [rax]
	cmp	ecx, 0
	je	.label_1952
	mov	rdi, qword ptr [rbp - 0x28]
	call	set_line_length
	test	al, 1
	jne	.label_1952
	movabs	rdi, OFFSET FLAT:label_1956
	call	gettext
	mov	rdi, qword ptr [rbp - 0x28]
	mov	qword ptr [rbp - 0xc0], rax
	call	quote
	xor	ecx, ecx
	mov	edi, ecx
	mov	esi, ecx
	mov	rdx, qword ptr [rbp - 0xc0]
	mov	rcx, rax
	mov	al, 0
	call	error
.label_1952:
	mov	edi, 1
	mov	eax, 0x5413
	mov	esi, eax
	lea	rdx, [rbp - 0x30]
	mov	al, 0
	call	ioctl
	cmp	eax, -1
	je	.label_1962
	xor	eax, eax
	movzx	ecx, word ptr [rbp - 0x2e]
	cmp	eax, ecx
	jge	.label_1962
	movzx	eax, word ptr [rbp - 0x2e]
	mov	ecx, eax
	movzx	eax, word ptr [rbp - 0x2e]
	mov	edx, eax
	cmp	rcx, rdx
	jne	.label_1962
	movzx	eax, word ptr [rbp - 0x2e]
	mov	ecx, eax
	mov	qword ptr [word ptr [line_length]],  rcx
.label_1962:
	movabs	rdi, OFFSET FLAT:label_1960
	call	getenv
	mov	qword ptr [rbp - 0x38], rax
	mov	qword ptr [word ptr [tabsize]],  8
	cmp	qword ptr [rbp - 0x38], 0
	je	.label_1963
	xor	eax, eax
	mov	ecx, eax
	xor	edx, edx
	lea	rsi, [rbp - 0x40]
	mov	rdi, qword ptr [rbp - 0x38]
	mov	qword ptr [rbp - 0xc8], rsi
	mov	rsi, rcx
	mov	r8, qword ptr [rbp - 0xc8]
	mov	qword ptr [rbp - 0xd0], rcx
	mov	rcx, r8
	mov	r8, qword ptr [rbp - 0xd0]
	call	xstrtoul
	cmp	eax, 0
	jne	.label_1961
	cmp	qword ptr [rbp - 0x40], -1
	ja	.label_1961
	mov	rax, qword ptr [rbp - 0x40]
	mov	qword ptr [word ptr [tabsize]],  rax
	jmp	.label_1950
.label_1924:
	movabs	rdi, OFFSET FLAT:label_1871
	call	gettext
	mov	rsi,  qword ptr [word ptr [stderr]]
	mov	rdi, rax
	call	fputs_unlocked
	mov	edi, 2
	mov	dword ptr [rbp - 0x144], eax
	call	usage
.label_2768:
	movabs	rdi, OFFSET FLAT:label_1931
	call	add_ignore_pattern
	movabs	rdi, OFFSET FLAT:label_1932
	call	add_ignore_pattern
	jmp	.label_1865
.label_2819:
	mov	dword ptr [dword ptr [human_output_opts]],  0x90
	mov	dword ptr [dword ptr [file_human_output_opts]],  0x90
	mov	qword ptr [word ptr [output_block_size]],  1
	mov	qword ptr [word ptr [file_output_block_size]],  1
	jmp	.label_1865
.label_2784:
	mov	dword ptr [dword ptr [ignore_mode]],  2
	jmp	.label_1865
.label_1916:
	mov	edi, 2
	call	usage
.label_2791:
	mov	byte ptr [byte ptr [print_inode]],  1
	jmp	.label_1865
.label_2917:
	movabs	rax, OFFSET FLAT:label_1942
	mov	qword ptr [word ptr [label_1885]],  rax
	mov	qword ptr [word ptr [long_time_format]],  rax
	jmp	.label_1900
.label_1964:
	mov	edi, 1
	call	isatty
	cmp	eax, 0
	je	.label_1966
	xor	eax, eax
	mov	edi, eax
	mov	esi, 3
	mov	dword ptr [dword ptr [format]],  2
	call	set_quoting_style
	mov	byte ptr [byte ptr [qmark_funny_chars]],  1
	jmp	.label_1958
.label_1944:
	mov	rax, qword ptr [rbp - 0x90]
	mov	rcx, rax
	add	rcx, 1
	mov	qword ptr [rbp - 0x90], rcx
	mov	byte ptr [rax], 0
.label_1906:
	mov	rax, qword ptr [rbp - 0x88]
	mov	qword ptr [word ptr [long_time_format]],  rax
	mov	rax, qword ptr [rbp - 0x90]
	mov	qword ptr [word ptr [label_1885]],  rax
	jmp	.label_1886
.label_2778:
	mov	byte ptr [byte ptr [recursive]],  1
	jmp	.label_1865
.label_2769:
	mov	dword ptr [dword ptr [format]],  2
	jmp	.label_1865
.label_1966:
	mov	dword ptr [dword ptr [format]],  1
	mov	byte ptr [byte ptr [qmark_funny_chars]],  0
.label_1958:
	jmp	.label_1953
.label_2816:
	movabs	rdi, OFFSET FLAT:label_1904
	movabs	rdx, OFFSET FLAT:indicator_style_args
	movabs	rax, OFFSET FLAT:indicator_style_types
	mov	ecx, 4
	mov	r8d, ecx
	mov	rsi,  qword ptr [word ptr [optarg]]
	mov	r9,  qword ptr [word ptr [argmatch_die]]
	mov	rcx, rax
	call	__xargmatch_internal
	mov	r10d,  dword ptr [dword ptr [+ (rax * 4) + indicator_style_types]]
	mov	dword ptr [dword ptr [indicator_style]],  r10d
	jmp	.label_1865
.label_1933:
	mov	eax, dword ptr [rbp - 0x48]
	add	eax, 0x83
	mov	ecx, eax
	sub	eax, 0x113
	mov	qword ptr [rbp - 0xe0], rcx
	mov	dword ptr [rbp - 0xe4], eax
	ja	.label_1916
	mov	rax, qword ptr [rbp - 0xe0]
	mov	rcx,  qword ptr [word ptr [+ (rax * 8) + label_1919]]
	jmp	rcx
.label_2804:
	mov	rdi,  qword ptr [word ptr [optarg]]
	call	set_line_length
	test	al, 1
	jne	.label_1925
	movabs	rdi, OFFSET FLAT:label_1927
	call	gettext
	mov	rdi,  qword ptr [word ptr [optarg]]
	mov	qword ptr [rbp - 0xf0], rax
	call	quote
	mov	edi, 2
	xor	esi, esi
	movabs	rdx, OFFSET FLAT:label_1274
	mov	rcx, qword ptr [rbp - 0xf0]
	mov	r8, rax
	mov	al, 0
	call	error
.label_2764:
	mov	rdi,  qword ptr [word ptr [stdout]]
	cmp	dword ptr [dword ptr [ls_mode]],  1
	mov	qword ptr [rbp - 0x108], rdi
	jne	.label_1869
	movabs	rax, OFFSET FLAT:label_824
	mov	qword ptr [rbp - 0x110], rax
	jmp	.label_1940
.label_2822:
	mov	rax,  qword ptr [word ptr [optarg]]
	mov	qword ptr [rbp - 0x18], rax
	jmp	.label_1865
.label_2781:
	mov	dword ptr [dword ptr [sort_type]],  0xffffffff
	mov	byte ptr [rbp - 0x19], 1
	jmp	.label_1865
.label_2807:
	movabs	rsi, OFFSET FLAT:human_output_opts
	movabs	rdx, OFFSET FLAT:output_block_size
	mov	rdi,  qword ptr [word ptr [optarg]]
	call	human_options
	mov	dword ptr [rbp - 0x5c], eax
	cmp	dword ptr [rbp - 0x5c], 0
	je	.label_1870
	xor	edx, edx
	movabs	rcx, OFFSET FLAT:long_options
	mov	edi, dword ptr [rbp - 0x5c]
	mov	esi, dword ptr [rbp - 0x44]
	mov	r8,  qword ptr [word ptr [optarg]]
	call	xstrtol_fatal
.label_2818:
	mov	byte ptr [byte ptr [qmark_funny_chars]],  0
	jmp	.label_1865
.label_2790:
	mov	dword ptr [dword ptr [human_output_opts]],  0xb0
	mov	dword ptr [dword ptr [file_human_output_opts]],  0xb0
	mov	qword ptr [word ptr [output_block_size]],  1
	mov	qword ptr [word ptr [file_output_block_size]],  1
	jmp	.label_1865
.label_1965:
	call	abort
.label_1893:
	mov	rax, qword ptr [rbp - 0x80]
	movsx	ecx, byte ptr [rax]
	cmp	ecx, 0x2b
	jne	.label_1891
	mov	esi, 0xa
	mov	rax, qword ptr [rbp - 0x80]
	add	rax, 1
	mov	qword ptr [rbp - 0x88], rax
	mov	rdi, qword ptr [rbp - 0x88]
	call	strchr
	mov	qword ptr [rbp - 0x90], rax
	cmp	qword ptr [rbp - 0x90], 0
	jne	.label_1901
	mov	rax, qword ptr [rbp - 0x88]
	mov	qword ptr [rbp - 0x90], rax
	jmp	.label_1906
.label_1909:
	mov	rax, qword ptr [rbp - 0x98]
	mov	rcx, rax
	sub	rcx, 3
	mov	qword ptr [rbp - 0x150], rax
	mov	qword ptr [rbp - 0x158], rcx
	ja	.label_1900
	mov	rax, qword ptr [rbp - 0x150]
	mov	rcx,  qword ptr [word ptr [+ (rax * 8) + label_1914]]
	jmp	rcx
.label_2794:
	mov	dword ptr [dword ptr [format]],  4
	jmp	.label_1865
.label_2800:
	mov	byte ptr [byte ptr [print_block_size]],  1
	jmp	.label_1865
.label_2799:
	mov	byte ptr [byte ptr [sort_reverse]],  1
	jmp	.label_1865
.label_2793:
	mov	dword ptr [dword ptr [format]],  0
	jmp	.label_1865
.label_1957:
	xor	eax, eax
	mov	edi, eax
	mov	esi, 7
	mov	dword ptr [dword ptr [format]],  0
	call	set_quoting_style
	jmp	.label_1953
.label_2775:
	mov	dword ptr [dword ptr [dereference]],  5
	jmp	.label_1865
.label_2798:
	mov	byte ptr [byte ptr [qmark_funny_chars]],  1
	jmp	.label_1865
.label_2919:
	movabs	rax, OFFSET FLAT:label_1934
	movabs	rcx, OFFSET FLAT:label_1935
	mov	qword ptr [word ptr [long_time_format]],  rcx
	mov	qword ptr [word ptr [label_1885]],  rax
	jmp	.label_1900
.label_1865:
	jmp	.label_1945
.label_2770:
	mov	byte ptr [byte ptr [dired]],  1
	jmp	.label_1865
.label_2812:
	movabs	rdi, OFFSET FLAT:label_1949
	mov	dword ptr [dword ptr [format]],  0
	call	bad_cast
	mov	qword ptr [rbp - 0x18], rax
	jmp	.label_1865
.label_2795:
	mov	byte ptr [byte ptr [numeric_ids]],  1
	mov	dword ptr [dword ptr [format]],  0
	jmp	.label_1865
.label_2786:
	mov	dword ptr [dword ptr [time_type]],  1
	jmp	.label_1865
.label_2808:
	cmp	qword ptr [word ptr [optarg]],  0
	je	.label_1867
	movabs	rdi, OFFSET FLAT:label_1915
	movabs	rdx, OFFSET FLAT:when_args
	movabs	rax, OFFSET FLAT:when_types
	mov	ecx, 4
	mov	r8d, ecx
	mov	rsi,  qword ptr [word ptr [optarg]]
	mov	r9,  qword ptr [word ptr [argmatch_die]]
	mov	rcx, rax
	call	__xargmatch_internal
	mov	r10d,  dword ptr [dword ptr [+ (rax * 4) + when_types]]
	mov	dword ptr [rbp - 0x54], r10d
	jmp	.label_1882
.label_2803:
	mov	dword ptr [dword ptr [sort_type]],  3
	mov	byte ptr [rbp - 0x19], 1
	jmp	.label_1865
.label_1869:
	movabs	rax, OFFSET FLAT:label_843
	movabs	rcx, OFFSET FLAT:label_844
	cmp	dword ptr [dword ptr [ls_mode]],  2
	cmove	rax, rcx
	mov	qword ptr [rbp - 0x110], rax
.label_1940:
	mov	rax, qword ptr [rbp - 0x110]
	movabs	rdx, OFFSET FLAT:label_1182
	movabs	r8, OFFSET FLAT:label_1895
	movabs	r9, OFFSET FLAT:label_1896
	xor	ecx, ecx
	mov	esi, ecx
	mov	rcx,  qword ptr [word ptr [Version]]
	mov	rdi, qword ptr [rbp - 0x108]
	mov	qword ptr [rbp - 0x118], rsi
	mov	rsi, rax
	mov	qword ptr [rsp], 0
	mov	al, 0
	call	version_etc
	xor	edi, edi
	call	exit
.label_2789:
	mov	dword ptr [dword ptr [format]],  0
	mov	byte ptr [byte ptr [print_owner]],  0
	jmp	.label_1865
.label_1881:
	mov	rax, qword ptr [rbp - 0x80]
	add	rax, 6
	mov	qword ptr [rbp - 0x80], rax
	jmp	.label_1888
.label_2806:
	mov	byte ptr [byte ptr [print_author]],  1
	jmp	.label_1865
.label_2788:
	mov	dword ptr [dword ptr [ignore_mode]],  2
	mov	dword ptr [dword ptr [sort_type]],  0xffffffff
	mov	byte ptr [rbp - 0x19], 1
	cmp	dword ptr [dword ptr [format]],  0
	jne	.label_1920
	mov	edi, 1
	call	isatty
	mov	edi, 1
	mov	ecx, 2
	cmp	eax, 0
	cmovne	edi, ecx
	mov	dword ptr [dword ptr [format]],  edi
.label_1920:
	mov	byte ptr [byte ptr [print_block_size]],  0
	mov	byte ptr [byte ptr [print_with_color]],  0
	mov	byte ptr [byte ptr [print_hyperlink]],  0
	jmp	.label_1865
	.section	.text
	.align	32
	#Procedure 0x415dae

	.globl decode_switches
	.type decode_switches, @function
decode_switches:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x160
	mov	dword ptr [rbp - 8], edi
	mov	qword ptr [rbp - 0x10], rsi
	mov	qword ptr [rbp - 0x18], 0
	mov	byte ptr [rbp - 0x19], 0
	mov	byte ptr [rbp - 0x1a], 0
	mov	byte ptr [byte ptr [rip + qmark_funny_chars]],  0
	mov	edi,  dword ptr [dword ptr [rip + ls_mode]]
	mov	eax, edi
	sub	eax, 1
	mov	dword ptr [rbp - 0xa8], edi
	mov	dword ptr [rbp - 0xac], eax
	je	.label_1964
	jmp	.label_1967
.label_1967:
	mov	eax, dword ptr [rbp - 0xa8]
	sub	eax, 2
	mov	dword ptr [rbp - 0xb0], eax
	je	.label_1959
	jmp	.label_1954
.label_1954:
	mov	eax, dword ptr [rbp - 0xa8]
	sub	eax, 3
	mov	dword ptr [rbp - 0xb4], eax
	je	.label_1957
	jmp	.label_1965
.label_2801:
	mov	dword ptr [dword ptr [sort_type]],  4
	mov	byte ptr [rbp - 0x19], 1
	jmp	.label_1865
.label_2792:
	mov	byte ptr [rbp - 0x1a], 1
	jmp	.label_1865
.label_2782:
	mov	dword ptr [dword ptr [sort_type]],  1
	mov	byte ptr [rbp - 0x19], 1
	jmp	.label_1865
.label_2772:
	mov	byte ptr [byte ptr [print_group]],  0
	jmp	.label_1865
.label_2797:
	mov	dword ptr [dword ptr [indicator_style]],  1
	jmp	.label_1865
.label_2814:
	mov	eax, 0x10
	mov	edi, eax
	call	xmalloc
	mov	qword ptr [rbp - 0x50], rax
	mov	rax,  qword ptr [word ptr [optarg]]
	mov	rdi, qword ptr [rbp - 0x50]
	mov	qword ptr [rdi], rax
	mov	rax,  qword ptr [word ptr [hide_patterns]]
	mov	rdi, qword ptr [rbp - 0x50]
	mov	qword ptr [rdi + 8], rax
	mov	rax, qword ptr [rbp - 0x50]
	mov	qword ptr [word ptr [hide_patterns]],  rax
	jmp	.label_1865
.label_2783:
	mov	byte ptr [byte ptr [print_scontext]],  1
	jmp	.label_1865
.label_2918:
	movabs	rax, OFFSET FLAT:label_1899
	mov	qword ptr [word ptr [label_1885]],  rax
	mov	qword ptr [word ptr [long_time_format]],  rax
	jmp	.label_1900
.label_2766:
	cmp	dword ptr [dword ptr [format]],  0
	je	.label_1907
	mov	dword ptr [dword ptr [format]],  1
.label_1907:
	jmp	.label_1865
.label_2815:
	cmp	qword ptr [word ptr [optarg]],  0
	je	.label_1910
	movabs	rdi, OFFSET FLAT:label_1913
	movabs	rdx, OFFSET FLAT:when_args
	movabs	rax, OFFSET FLAT:when_types
	mov	ecx, 4
	mov	r8d, ecx
	mov	rsi,  qword ptr [word ptr [optarg]]
	mov	r9,  qword ptr [word ptr [argmatch_die]]
	mov	rcx, rax
	call	__xargmatch_internal
	mov	r10d,  dword ptr [dword ptr [+ (rax * 4) + when_types]]
	mov	dword ptr [rbp - 0x58], r10d
	jmp	.label_1921
.label_2810:
	mov	dword ptr [dword ptr [indicator_style]],  2
	jmp	.label_1865
.label_2776:
	xor	eax, eax
	mov	edi, eax
	xor	esi, esi
	call	set_quoting_style
	jmp	.label_1865
.label_1959:
	xor	eax, eax
	mov	edi, eax
	mov	esi, 7
	mov	dword ptr [dword ptr [format]],  2
	call	set_quoting_style
	jmp	.label_1953
.label_2779:
	mov	dword ptr [dword ptr [sort_type]],  2
	mov	byte ptr [rbp - 0x19], 1
	jmp	.label_1865
.label_2813:
	mov	byte ptr [byte ptr [directories_first]],  1
	jmp	.label_1865
.label_1901:
	mov	esi, 0xa
	mov	rax, qword ptr [rbp - 0x90]
	add	rax, 1
	mov	rdi, rax
	call	strchr
	cmp	rax, 0
	je	.label_1944
	movabs	rdi, OFFSET FLAT:label_1922
	call	gettext
	mov	rdi, qword ptr [rbp - 0x88]
	mov	qword ptr [rbp - 0x138], rax
	call	quote
	mov	edi, 2
	xor	esi, esi
	mov	rdx, qword ptr [rbp - 0x138]
	mov	rcx, rax
	mov	al, 0
	call	error
.label_1870:
	mov	eax,  dword ptr [dword ptr [human_output_opts]]
	mov	dword ptr [dword ptr [file_human_output_opts]],  eax
	mov	rcx,  qword ptr [word ptr [output_block_size]]
	mov	qword ptr [word ptr [file_output_block_size]],  rcx
	jmp	.label_1865
.label_2771:
	mov	dword ptr [dword ptr [indicator_style]],  3
	jmp	.label_1865
.label_2811:
	movabs	rdi, OFFSET FLAT:label_1877
	movabs	rdx, OFFSET FLAT:format_args
	movabs	rax, OFFSET FLAT:format_types
	mov	ecx, 4
	mov	r8d, ecx
	mov	rsi,  qword ptr [word ptr [optarg]]
	mov	r9,  qword ptr [word ptr [argmatch_die]]
	mov	rcx, rax
	call	__xargmatch_internal
	mov	r10d,  dword ptr [dword ptr [+ (rax * 4) + format_types]]
	mov	dword ptr [dword ptr [format]],  r10d
	jmp	.label_1865
.label_2785:
	xor	eax, eax
	mov	edi, eax
	mov	esi, 7
	call	set_quoting_style
	jmp	.label_1865
.label_1867:
	mov	dword ptr [rbp - 0x54], 1
.label_1882:
	mov	al, 1
	cmp	dword ptr [rbp - 0x54], 1
	mov	byte ptr [rbp - 0xfd], al
	je	.label_1897
	xor	eax, eax
	mov	cl, al
	cmp	dword ptr [rbp - 0x54], 2
	mov	byte ptr [rbp - 0xfe], cl
	jne	.label_1903
	mov	edi, 1
	call	isatty
	cmp	eax, 0
	setne	cl
	mov	byte ptr [rbp - 0xfe], cl
.label_1903:
	mov	al, byte ptr [rbp - 0xfe]
	mov	byte ptr [rbp - 0xfd], al
.label_1897:
	mov	al, byte ptr [rbp - 0xfd]
	and	al, 1
	mov	byte ptr [byte ptr [print_with_color]],  al
	test	byte ptr [byte ptr [print_with_color]],  1
	je	.label_1911
	mov	qword ptr [word ptr [tabsize]],  0
.label_1911:
	jmp	.label_1865
.label_1961:
	movabs	rdi, OFFSET FLAT:label_1955
	call	gettext
	mov	rdi, qword ptr [rbp - 0x38]
	mov	qword ptr [rbp - 0xd8], rax
	call	quote
	xor	ecx, ecx
	mov	edi, ecx
	mov	esi, ecx
	mov	rdx, qword ptr [rbp - 0xd8]
	mov	rcx, rax
	mov	al, 0
	call	error
.label_1950:
	jmp	.label_1963
.label_1963:
	jmp	.label_1945
.label_1945:
	movabs	rdx, OFFSET FLAT:label_1929
	movabs	rcx, OFFSET FLAT:long_options
	lea	r8, [rbp - 0x44]
	mov	dword ptr [rbp - 0x44], 0xffffffff
	mov	edi, dword ptr [rbp - 8]
	mov	rsi, qword ptr [rbp - 0x10]
	call	getopt_long
	mov	dword ptr [rbp - 0x48], eax
	cmp	dword ptr [rbp - 0x48], -1
	jne	.label_1933
	jmp	.label_1936
.label_2774:
	mov	rdi,  qword ptr [word ptr [optarg]]
	call	add_ignore_pattern
	jmp	.label_1865
.label_2805:
	mov	dword ptr [dword ptr [format]],  3
	jmp	.label_1865
.label_2787:
	mov	byte ptr [byte ptr [immediate_dirs]],  1
	jmp	.label_1865
.label_2820:
	movabs	rdi, OFFSET FLAT:label_1946
	movabs	rdx, OFFSET FLAT:sort_args
	movabs	rax, OFFSET FLAT:sort_types
	mov	ecx, 4
	mov	r8d, ecx
	mov	rsi,  qword ptr [word ptr [optarg]]
	mov	r9,  qword ptr [word ptr [argmatch_die]]
	mov	rcx, rax
	call	__xargmatch_internal
	mov	r10d,  dword ptr [dword ptr [+ (rax * 4) + sort_types]]
	mov	dword ptr [dword ptr [sort_type]],  r10d
	mov	byte ptr [rbp - 0x19], 1
	jmp	.label_1865
.label_2773:
	mov	dword ptr [dword ptr [dereference]],  3
	jmp	.label_1865
.label_2809:
	mov	dword ptr [dword ptr [dereference]],  4
	jmp	.label_1865
.label_2802:
	mov	dword ptr [dword ptr [time_type]],  2
	jmp	.label_1865
.label_2817:
	movabs	rdi, OFFSET FLAT:label_1880
	movabs	rdx, OFFSET FLAT:quoting_style_args
	movabs	rax, OFFSET FLAT:quoting_style_vals
	mov	ecx, 4
	mov	r8d, ecx
	mov	rsi,  qword ptr [word ptr [optarg]]
	mov	r9,  qword ptr [word ptr [argmatch_die]]
	mov	rcx, rax
	call	__xargmatch_internal
	xor	r10d, r10d
	mov	edi, r10d
	mov	esi,  dword ptr [dword ptr [+ (rax * 4) + quoting_style_vals]]
	call	set_quoting_style
	jmp	.label_1865
.label_2796:
	mov	dword ptr [dword ptr [format]],  0
	mov	byte ptr [byte ptr [print_group]],  0
	jmp	.label_1865
.label_2780:
	movabs	rdi, OFFSET FLAT:label_1905
	mov	rax,  qword ptr [word ptr [optarg]]
	mov	qword ptr [rbp - 0xf8], rax
	call	gettext
	xor	esi, esi
	xor	ecx, ecx
	mov	edx, ecx
	mov	rcx, -1
	movabs	r8, OFFSET FLAT:label_662
	mov	r9d, 2
	mov	rdi, qword ptr [rbp - 0xf8]
	mov	dword ptr [rbp - 0xfc], r9d
	mov	r9, rax
	mov	dword ptr [rsp], 2
	call	xnumtoumax
	mov	qword ptr [word ptr [tabsize]],  rax
	jmp	.label_1865
.label_2765:
	xor	edi, edi
	call	usage
.label_1970:
	test	byte ptr [rbp - 0x19], 1
	jne	.label_1968
	test	byte ptr [rbp - 0x1a], 1
	je	.label_1968
	mov	dword ptr [rbp - 4], 1
	jmp	.label_1969
	.section	.text
	.align	32
	#Procedure 0x416360

	.globl strcmp_df_name
	.type strcmp_df_name, @function
strcmp_df_name:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 0x18], rsi
	mov	rax, qword ptr [rbp - 0x10]
	mov	rdi, rax
	call	is_linked_directory
	and	al, 1
	mov	byte ptr [rbp - 0x19], al
	mov	rdi, qword ptr [rbp - 0x18]
	call	is_linked_directory
	and	al, 1
	mov	byte ptr [rbp - 0x1a], al
	test	byte ptr [rbp - 0x19], 1
	je	.label_1970
	test	byte ptr [rbp - 0x1a], 1
	jne	.label_1970
	mov	dword ptr [rbp - 4], 0xffffffff
	jmp	.label_1969
.label_1968:
	jmp	.label_1971
.label_1971:
	movabs	rdx, OFFSET FLAT:strcmp
	mov	rax, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	rdi, rax
	mov	rsi, rcx
	call	cmp_name
	mov	dword ptr [rbp - 4], eax
.label_1969:
	mov	eax, dword ptr [rbp - 4]
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x4163dd
	.globl sub_4163dd
	.type sub_4163dd, @function
sub_4163dd:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x4163e0
	.globl get_stat_ctime_ns
	.type get_stat_ctime_ns, @function
get_stat_ctime_ns:

	push	rbp
	mov	rbp, rsp
	mov	qword ptr [rbp - 8], rdi
	mov	rdi, qword ptr [rbp - 8]
	mov	rax, qword ptr [rdi + 0x70]
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x4163f2
	.globl sub_4163f2
	.type sub_4163f2, @function
sub_4163f2:

	nop	word ptr cs:[rax + rax]
.label_1973:
	mov	rax, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 8], rax
.label_1978:
	mov	rax, qword ptr [rbp - 8]
	add	rsp, 0x30
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x416412
	.globl sub_416412
	.type sub_416412, @function
sub_416412:

	nop	word ptr [rax + rax]
.label_1972:
	jmp	.label_1974
.label_1974:
	jmp	.label_1975
.label_1977:
	call	__errno_location
	cmp	dword ptr [rax], 0
	je	.label_1972
	call	__errno_location
	cmp	dword ptr [rax], 0x24
	je	.label_1972
	call	__errno_location
	cmp	dword ptr [rax], 0x16
	je	.label_1972
	call	__errno_location
	cmp	dword ptr [rax], 0xc
	je	.label_1972
	call	__errno_location
	mov	ecx, dword ptr [rax]
	mov	dword ptr [rbp - 0x24], ecx
	mov	rdi, qword ptr [rbp - 0x10]
	call	free
	mov	ecx, dword ptr [rbp - 0x24]
	mov	dword ptr [rbp - 0x28], ecx
	call	__errno_location
	mov	ecx, dword ptr [rbp - 0x28]
	mov	dword ptr [rax], ecx
	mov	qword ptr [rbp - 8], 0
	jmp	.label_1978
	.section	.text
	.align	32
	#Procedure 0x41648a

	.globl xgethostname
	.type xgethostname, @function
xgethostname:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x30
	mov	qword ptr [rbp - 0x10], 0
	mov	qword ptr [rbp - 0x18], 0x22
.label_1975:
	lea	rsi, [rbp - 0x18]
	mov	rdi, qword ptr [rbp - 0x10]
	call	x2realloc
	mov	qword ptr [rbp - 0x10], rax
	mov	rax, qword ptr [rbp - 0x18]
	sub	rax, 1
	mov	qword ptr [rbp - 0x20], rax
	mov	rax, qword ptr [rbp - 0x20]
	sub	rax, 1
	mov	rsi, qword ptr [rbp - 0x10]
	mov	byte ptr [rsi + rax], 0
	call	__errno_location
	mov	dword ptr [rax], 0
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rbp - 0x20]
	call	gethostname
	cmp	eax, 0
	jne	.label_1977
	mov	rax, qword ptr [rbp - 0x20]
	sub	rax, 1
	mov	rcx, qword ptr [rbp - 0x10]
	cmp	byte ptr [rcx + rax], 0
	jne	.label_1976
	jmp	.label_1973
.label_1976:
	jmp	.label_1974
.label_1985:
	movsxd	rax,  dword ptr [dword ptr [block_size_width]]
	mov	qword ptr [rbp - 0x2c0], rax
.label_1987:
	mov	rax, qword ptr [rbp - 0x2c0]
	add	rax, 1
	add	rax, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 0x10], rax
.label_1988:
	test	byte ptr [byte ptr [print_scontext]],  1
	je	.label_1989
	cmp	dword ptr [dword ptr [format]],  4
	jne	.label_1979
	mov	rax, qword ptr [rbp - 8]
	mov	rdi, qword ptr [rax + 0xb0]
	call	strlen
	mov	qword ptr [rbp - 0x2c8], rax
	jmp	.label_1983
	.section	.text
	.align	32
	#Procedure 0x41656a

	.globl length_of_file_name_and_frills
	.type length_of_file_name_and_frills, @function
length_of_file_name_and_frills:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x2d0
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], 0
	test	byte ptr [byte ptr [print_inode]],  1
	je	.label_1986
	cmp	dword ptr [dword ptr [format]],  4
	jne	.label_1981
	lea	rsi, [rbp - 0x2a0]
	mov	rax, qword ptr [rbp - 8]
	mov	rdi, qword ptr [rax + 0x20]
	call	umaxtostr
	mov	rdi, rax
	call	strlen
	mov	qword ptr [rbp - 0x2b0], rax
	jmp	.label_1990
.label_1979:
	movsxd	rax,  dword ptr [dword ptr [scontext_width]]
	mov	qword ptr [rbp - 0x2c8], rax
.label_1983:
	mov	rax, qword ptr [rbp - 0x2c8]
	add	rax, 1
	add	rax, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 0x10], rax
.label_1989:
	mov	rax, qword ptr [rbp - 8]
	mov	rdi, qword ptr [rax]
	mov	rsi,  qword ptr [word ptr [filename_quoting_options]]
	mov	rax, qword ptr [rbp - 8]
	mov	edx, dword ptr [rax + 0xc4]
	call	quote_name_width
	add	rax, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 0x10], rax
	cmp	dword ptr [dword ptr [indicator_style]],  0
	je	.label_1984
	mov	rax, qword ptr [rbp - 8]
	mov	cl, byte ptr [rax + 0xb8]
	mov	rax, qword ptr [rbp - 8]
	mov	esi, dword ptr [rax + 0x30]
	mov	rax, qword ptr [rbp - 8]
	mov	edx, dword ptr [rax + 0xa8]
	and	cl, 1
	movzx	edi, cl
	call	get_type_indicator
	mov	byte ptr [rbp - 0x2a1], al
	movsx	edx, byte ptr [rbp - 0x2a1]
	cmp	edx, 0
	setne	al
	and	al, 1
	movzx	edx, al
	movsxd	r8, edx
	add	r8, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 0x10], r8
.label_1984:
	mov	rax, qword ptr [rbp - 0x10]
	add	rsp, 0x2d0
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x416671
	.globl sub_416671
	.type sub_416671, @function
sub_416671:

	nop	word ptr cs:[rax + rax]
.label_1980:
	mov	eax, 0x200
	mov	ecx, eax
	lea	rsi, [rbp - 0x2a0]
	mov	rdx, qword ptr [rbp - 8]
	mov	rdi, qword ptr [rdx + 0x58]
	mov	edx,  dword ptr [dword ptr [human_output_opts]]
	mov	r8,  qword ptr [word ptr [output_block_size]]
	call	human_readable
	mov	qword ptr [rbp - 0x2b8], rax
.label_1982:
	mov	rax, qword ptr [rbp - 0x2b8]
	mov	rdi, rax
	call	strlen
	mov	qword ptr [rbp - 0x2c0], rax
	jmp	.label_1987
.label_1981:
	movsxd	rax,  dword ptr [dword ptr [inode_number_width]]
	mov	qword ptr [rbp - 0x2b0], rax
.label_1990:
	mov	rax, qword ptr [rbp - 0x2b0]
	add	rax, 1
	add	rax, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 0x10], rax
.label_1986:
	test	byte ptr [byte ptr [print_block_size]],  1
	je	.label_1988
	cmp	dword ptr [dword ptr [format]],  4
	jne	.label_1985
	mov	rax, qword ptr [rbp - 8]
	test	byte ptr [rax + 0xb8], 1
	jne	.label_1980
	movabs	rax, OFFSET FLAT:label_684
	mov	qword ptr [rbp - 0x2b8], rax
	jmp	.label_1982
	.section	.text
	.align	32
	#Procedure 0x416730
	.globl close_stdout_set_file_name
	.type close_stdout_set_file_name, @function
close_stdout_set_file_name:

	push	rbp
	mov	rbp, rsp
	mov	qword ptr [rbp - 8], rdi
	mov	rdi, qword ptr [rbp - 8]
	mov	qword ptr [word ptr [file_name]],  rdi
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x416746
	.globl sub_416746
	.type sub_416746, @function
sub_416746:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x416750
	.globl get_stat_birthtime
	.type get_stat_birthtime, @function
get_stat_birthtime:

	push	rbp
	mov	rbp, rsp
	mov	qword ptr [rbp - 0x18], rdi
	mov	qword ptr [rbp - 0x28], -1
	mov	qword ptr [rbp - 0x20], -1
	movups	xmm0, xmmword ptr [rbp - 0x28]
	movaps	xmmword ptr [rbp - 0x10], xmm0
	mov	rax, qword ptr [rbp - 0x10]
	mov	rdx, qword ptr [rbp - 8]
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x41677a
	.globl sub_41677a
	.type sub_41677a, @function
sub_41677a:

	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x416780
	.globl security_check_context
	.type security_check_context, @function
security_check_context:

	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	mov	qword ptr [rbp - 8], rdi
	call	__errno_location
	mov	ecx, 0xffffffff
	mov	dword ptr [rax], 0x5f
	mov	eax, ecx
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x4167a4
	.globl sub_4167a4
	.type sub_4167a4, @function
sub_4167a4:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4167b0
	.globl rotr64
	.type rotr64, @function
rotr64:

	push	rbp
	mov	rbp, rsp
	mov	eax, 0x40
	mov	qword ptr [rbp - 8], rdi
	mov	dword ptr [rbp - 0xc], esi
	mov	rdi, qword ptr [rbp - 8]
	mov	esi, dword ptr [rbp - 0xc]
	mov	ecx, esi
	shr	rdi, cl
	mov	rdx, qword ptr [rbp - 8]
	sub	eax, dword ptr [rbp - 0xc]
	mov	eax, eax
	mov	ecx, eax
	shl	rdx, cl
	or	rdi, rdx
	mov	rax, rdi
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x4167e2
	.globl sub_4167e2
	.type sub_4167e2, @function
sub_4167e2:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4167f0
	.globl setfilecon
	.type setfilecon, @function
setfilecon:

	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	call	__errno_location
	mov	ecx, 0xffffffff
	mov	dword ptr [rax], 0x5f
	mov	eax, ecx
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x416818
	.globl sub_416818
	.type sub_416818, @function
sub_416818:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x416820

	.globl xstrcoll_ctime
	.type xstrcoll_ctime, @function
xstrcoll_ctime:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	movabs	rdx, OFFSET FLAT:xstrcoll
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	rsi, qword ptr [rbp - 8]
	mov	rdi, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 0x18], rdi
	mov	rdi, rsi
	mov	rsi, qword ptr [rbp - 0x18]
	call	cmp_ctime
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x416858
	.globl sub_416858
	.type sub_416858, @function
sub_416858:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x416860
	.globl current_timespec
	.type current_timespec, @function
current_timespec:

	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	lea	rdi, [rbp - 0x20]
	call	gettime
	movups	xmm0, xmmword ptr [rbp - 0x20]
	movaps	xmmword ptr [rbp - 0x10], xmm0
	mov	rax, qword ptr [rbp - 0x10]
	mov	rdx, qword ptr [rbp - 8]
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x416887
	.globl sub_416887
	.type sub_416887, @function
sub_416887:

	nop	word ptr [rax + rax]
.label_1996:
	xor	eax, eax
	mov	ecx, eax
	mov	rdx, qword ptr [rbp - 0x20]
	mov	rsi, qword ptr [rbp - 8]
	mov	qword ptr [rsi + 8], rdx
	mov	rdx, qword ptr [rbp - 0x18]
	mov	rsi, qword ptr [rbp - 0x20]
	mov	qword ptr [rsi + 8], rdx
	mov	rdx, qword ptr [rbp - 0x20]
	add	rdx, qword ptr [rbp - 0x48]
	mov	rsi, qword ptr [rbp - 8]
	mov	qword ptr [rsi + 0x20], rdx
	mov	rsi, qword ptr [rbp - 0x20]
	mov	qword ptr [rsi], rdx
	mov	rdx, qword ptr [rbp - 0x20]
	add	rdx, 0x10
	sub	rdx, 0
	mov	rsi, qword ptr [rbp - 8]
	add	rdx, qword ptr [rsi + 0x30]
	mov	rsi, qword ptr [rbp - 8]
	mov	rsi, qword ptr [rsi + 0x30]
	xor	rsi, 0xffffffffffffffff
	and	rdx, rsi
	add	rcx, rdx
	mov	qword ptr [rbp - 0x30], rcx
	mov	rdi, qword ptr [rbp - 0x30]
	mov	rcx, qword ptr [rbp - 8]
	mov	rsi, qword ptr [rcx + 0x10]
	mov	rdx, qword ptr [rbp - 0x28]
	call	memcpy
	mov	rcx, qword ptr [rbp - 8]
	mov	r8b, byte ptr [rcx + 0x50]
	shr	r8b, 1
	and	r8b, 1
	movzx	eax, r8b
	cmp	eax, 0
	jne	.label_1991
	xor	eax, eax
	mov	ecx, eax
	mov	rdx, qword ptr [rbp - 8]
	mov	rdx, qword ptr [rdx + 0x10]
	mov	rsi, qword ptr [rbp - 0x18]
	add	rsi, 0x10
	sub	rsi, 0
	mov	rdi, qword ptr [rbp - 8]
	add	rsi, qword ptr [rdi + 0x30]
	mov	rdi, qword ptr [rbp - 8]
	mov	rdi, qword ptr [rdi + 0x30]
	xor	rdi, 0xffffffffffffffff
	and	rsi, rdi
	add	rcx, rsi
	cmp	rdx, rcx
	jne	.label_1991
	mov	rax, qword ptr [rbp - 0x18]
	mov	rax, qword ptr [rax + 8]
	mov	rcx, qword ptr [rbp - 0x20]
	mov	qword ptr [rcx + 8], rax
	mov	rdi, qword ptr [rbp - 8]
	mov	rax, qword ptr [rbp - 0x18]
	mov	rsi, rax
	call	call_freefun
.label_1991:
	mov	rax, qword ptr [rbp - 0x30]
	mov	rcx, qword ptr [rbp - 8]
	mov	qword ptr [rcx + 0x10], rax
	mov	rax, qword ptr [rbp - 8]
	mov	rax, qword ptr [rax + 0x10]
	add	rax, qword ptr [rbp - 0x28]
	mov	rcx, qword ptr [rbp - 8]
	mov	qword ptr [rcx + 0x18], rax
	mov	rax, qword ptr [rbp - 8]
	mov	dl, byte ptr [rax + 0x50]
	and	dl, 0xfd
	mov	byte ptr [rax + 0x50], dl
	add	rsp, 0x50
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x4169ad
	.globl sub_4169ad
	.type sub_4169ad, @function
sub_4169ad:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x4169b1

	.globl _obstack_newchunk
	.type _obstack_newchunk, @function
_obstack_newchunk:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x50
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	rsi, qword ptr [rbp - 8]
	mov	rsi, qword ptr [rsi + 8]
	mov	qword ptr [rbp - 0x18], rsi
	mov	qword ptr [rbp - 0x20], 0
	mov	rsi, qword ptr [rbp - 8]
	mov	rsi, qword ptr [rsi + 0x18]
	mov	rdi, qword ptr [rbp - 8]
	mov	rdi, qword ptr [rdi + 0x10]
	sub	rsi, rdi
	mov	qword ptr [rbp - 0x28], rsi
	mov	rsi, qword ptr [rbp - 0x28]
	add	rsi, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 0x38], rsi
	mov	rsi, qword ptr [rbp - 0x38]
	mov	rdi, qword ptr [rbp - 8]
	add	rsi, qword ptr [rdi + 0x30]
	mov	qword ptr [rbp - 0x40], rsi
	mov	rsi, qword ptr [rbp - 0x40]
	mov	rdi, qword ptr [rbp - 0x28]
	shr	rdi, 3
	add	rsi, rdi
	add	rsi, 0x64
	mov	qword ptr [rbp - 0x48], rsi
	mov	rsi, qword ptr [rbp - 0x48]
	cmp	rsi, qword ptr [rbp - 0x40]
	jae	.label_1992
	mov	rax, qword ptr [rbp - 0x40]
	mov	qword ptr [rbp - 0x48], rax
.label_1992:
	mov	rax, qword ptr [rbp - 0x48]
	mov	rcx, qword ptr [rbp - 8]
	cmp	rax, qword ptr [rcx]
	jae	.label_1995
	mov	rax, qword ptr [rbp - 8]
	mov	rax, qword ptr [rax]
	mov	qword ptr [rbp - 0x48], rax
.label_1995:
	mov	rax, qword ptr [rbp - 0x28]
	cmp	rax, qword ptr [rbp - 0x38]
	ja	.label_1994
	mov	rax, qword ptr [rbp - 0x38]
	cmp	rax, qword ptr [rbp - 0x40]
	ja	.label_1994
	mov	rdi, qword ptr [rbp - 8]
	mov	rsi, qword ptr [rbp - 0x48]
	call	call_chunkfun
	mov	qword ptr [rbp - 0x20], rax
.label_1994:
	cmp	qword ptr [rbp - 0x20], 0
	jne	.label_1996
	call	qword ptr [word ptr [obstack_alloc_failed_handler]]
.label_1997:
	mov	rax, qword ptr [rbp - 0x20]
	cmp	rax, qword ptr [rbp - 0x18]
	setne	cl
	and	cl, 1
	mov	byte ptr [rbp - 0x21], cl
	test	byte ptr [rbp - 0x21], 1
	je	.label_1993
	mov	rax, qword ptr [rbp - 0x18]
	mov	rdi, rax
	call	free
.label_1993:
	mov	al, byte ptr [rbp - 0x21]
	and	al, 1
	movzx	eax, al
	add	rsp, 0x30
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x416ac5
	.globl sub_416ac5
	.type sub_416ac5, @function
sub_416ac5:

	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x416ace

	.globl visit_dir
	.type visit_dir, @function
visit_dir:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x30
	mov	eax, 0x10
	mov	ecx, eax
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	rdi, rcx
	call	xmalloc
	mov	qword ptr [rbp - 0x18], rax
	mov	rax, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	qword ptr [rcx], rax
	mov	rax, qword ptr [rbp - 8]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	qword ptr [rcx + 8], rax
	mov	rdi,  qword ptr [word ptr [active_dir_set]]
	mov	rax, qword ptr [rbp - 0x18]
	mov	rsi, rax
	call	hash_insert
	mov	qword ptr [rbp - 0x20], rax
	cmp	qword ptr [rbp - 0x20], 0
	jne	.label_1997
	call	xalloc_die
	.section	.text
	.align	32
	#Procedure 0x416b30

	.globl rpl_fflush
	.type rpl_fflush, @function
rpl_fflush:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	mov	qword ptr [rbp - 0x10], rdi
	cmp	qword ptr [rbp - 0x10], 0
	je	.label_1998
	mov	rdi, qword ptr [rbp - 0x10]
	call	__freading
	cmp	eax, 0
	jne	.label_1999
.label_1998:
	mov	rdi, qword ptr [rbp - 0x10]
	call	fflush
	mov	dword ptr [rbp - 4], eax
	jmp	.label_2000
.label_1999:
	mov	rdi, qword ptr [rbp - 0x10]
	call	clear_ungetc_buffer_preserving_position
	mov	rdi, qword ptr [rbp - 0x10]
	call	fflush
	mov	dword ptr [rbp - 4], eax
.label_2000:
	mov	eax, dword ptr [rbp - 4]
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x416b88
	.globl sub_416b88
	.type sub_416b88, @function
sub_416b88:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x416b90

	.globl rpl_nl_langinfo
	.type rpl_nl_langinfo, @function
rpl_nl_langinfo:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	mov	dword ptr [rbp - 4], edi
	add	edi, 0xffffd828
	sub	edi, 0xb
	mov	dword ptr [rbp - 8], edi
	ja	.label_2001
	jmp	.label_2003
.label_2003:
	mov	eax, dword ptr [rbp - 4]
	sub	eax, 0x27d8
	add	eax, 0x2001a
	mov	dword ptr [rbp - 4], eax
	jmp	.label_2002
.label_2001:
	jmp	.label_2002
.label_2002:
	mov	edi, dword ptr [rbp - 4]
	call	nl_langinfo
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x416bda
	.globl sub_416bda
	.type sub_416bda, @function
sub_416bda:

	nop	word ptr [rax + rax]
.label_2005:
	call	__errno_location
	mov	ecx, dword ptr [rax]
	mov	dword ptr [rbp - 0x14], ecx
	mov	rdi, qword ptr [rbp - 0x10]
	call	change_env
	and	al, 1
	mov	byte ptr [rbp - 0x15], al
	test	byte ptr [rbp - 0x15], 1
	jne	.label_2004
	call	__errno_location
	mov	ecx, dword ptr [rax]
	mov	dword ptr [rbp - 0x14], ecx
.label_2004:
	mov	rdi, qword ptr [rbp - 0x10]
	call	tzfree
	mov	eax, dword ptr [rbp - 0x14]
	mov	dword ptr [rbp - 0x1c], eax
	call	__errno_location
	mov	ecx, dword ptr [rbp - 0x1c]
	mov	dword ptr [rax], ecx
	mov	dl, byte ptr [rbp - 0x15]
	and	dl, 1
	mov	byte ptr [rbp - 1], dl
.label_2006:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x416c3c
	.globl sub_416c3c
	.type sub_416c3c, @function
sub_416c3c:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x416c49

	.globl revert_tz
	.type revert_tz, @function
revert_tz:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	mov	qword ptr [rbp - 0x10], rdi
	mov	rdi, qword ptr [rbp - 0x10]
	cmp	rdi,  qword ptr [word ptr [local_tz]]
	jne	.label_2005
	mov	byte ptr [rbp - 1], 1
	jmp	.label_2006
.label_2021:
	mov	eax, dword ptr [rbp - 0x1c]
	and	eax, 2
	cmp	eax, 0
	jne	.label_2036
	mov	edi, dword ptr [rbp - 0x44]
	call	iswcntrl
	cmp	eax, 0
	jne	.label_2009
	cmp	dword ptr [rbp - 0x34], 0x7fffffff
	jne	.label_2013
	jmp	.label_2018
.label_2018:
	mov	dword ptr [rbp - 4], 0x7fffffff
.label_2007:
	mov	eax, dword ptr [rbp - 4]
	add	rsp, 0x80
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x416cb5
	.globl sub_416cb5
	.type sub_416cb5, @function
sub_416cb5:

	nop	word ptr cs:[rax + rax]
.label_2034:
	mov	eax, dword ptr [rbp - 0x34]
	mov	dword ptr [rbp - 4], eax
	jmp	.label_2007
.label_2025:
	mov	dword ptr [rbp - 4], 0xffffffff
	jmp	.label_2007
.label_2028:
	jmp	.label_2014
.label_2014:
	jmp	.label_2030
.label_2016:
	jmp	.label_2030
.label_2030:
	mov	rax, qword ptr [rbp - 0x28]
	cmp	rax, qword ptr [rbp - 0x30]
	jae	.label_2034
	mov	rax, qword ptr [rbp - 0x28]
	mov	rcx, rax
	add	rcx, 1
	mov	qword ptr [rbp - 0x28], rcx
	mov	dl, byte ptr [rax]
	mov	byte ptr [rbp - 0x55], dl
	movzx	esi, byte ptr [rbp - 0x55]
	movsxd	rax, esi
	mov	qword ptr [rbp - 0x70], rax
	call	__ctype_b_loc
	mov	rax, qword ptr [rax]
	mov	rcx, qword ptr [rbp - 0x70]
	movzx	esi, word ptr [rax + rcx*2]
	and	esi, 0x4000
	cmp	esi, 0
	je	.label_2017
	cmp	dword ptr [rbp - 0x34], 0x7fffffff
	jne	.label_2023
	jmp	.label_2018
.label_2036:
	mov	dword ptr [rbp - 4], 0xffffffff
	jmp	.label_2007
.label_2008:
	mov	eax, dword ptr [rbp - 0x34]
	add	eax, 1
	mov	dword ptr [rbp - 0x34], eax
.label_2035:
	jmp	.label_2028
	.section	.text
	.align	32
	#Procedure 0x416d62

	.globl mbsnwidth
	.type mbsnwidth, @function
mbsnwidth:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x80
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 0x18], rsi
	mov	dword ptr [rbp - 0x1c], edx
	mov	rsi, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 0x28], rsi
	mov	rsi, qword ptr [rbp - 0x28]
	add	rsi, qword ptr [rbp - 0x18]
	mov	qword ptr [rbp - 0x30], rsi
	mov	dword ptr [rbp - 0x34], 0
	call	__ctype_get_mb_cur_max
	cmp	rax, 1
	jbe	.label_2016
	jmp	.label_2019
.label_2019:
	mov	rax, qword ptr [rbp - 0x28]
	cmp	rax, qword ptr [rbp - 0x30]
	jae	.label_2020
	mov	rax, qword ptr [rbp - 0x28]
	movsx	ecx, byte ptr [rax]
	add	ecx, -0x20
	mov	eax, ecx
	sub	ecx, 0x5e
	mov	qword ptr [rbp - 0x60], rax
	mov	dword ptr [rbp - 0x64], ecx
	ja	.label_2022
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx,  qword ptr [word ptr [+ (rax * 8) + label_2026]]
	jmp	rcx
.label_2027:
	cmp	qword ptr [rbp - 0x50], -2
	jne	.label_2029
	mov	eax, dword ptr [rbp - 0x1c]
	and	eax, 1
	cmp	eax, 0
	jne	.label_2031
	mov	rax, qword ptr [rbp - 0x30]
	mov	qword ptr [rbp - 0x28], rax
	mov	ecx, dword ptr [rbp - 0x34]
	add	ecx, 1
	mov	dword ptr [rbp - 0x34], ecx
	jmp	.label_2037
.label_2029:
	cmp	qword ptr [rbp - 0x50], 0
	jne	.label_2012
	mov	qword ptr [rbp - 0x50], 1
.label_2012:
	mov	edi, dword ptr [rbp - 0x44]
	call	wcwidth
	mov	dword ptr [rbp - 0x54], eax
	cmp	dword ptr [rbp - 0x54], 0
	jl	.label_2021
	mov	eax, 0x7fffffff
	mov	ecx, dword ptr [rbp - 0x54]
	sub	eax, dword ptr [rbp - 0x34]
	cmp	ecx, eax
	jle	.label_2024
	jmp	.label_2018
.label_2017:
	mov	eax, dword ptr [rbp - 0x1c]
	and	eax, 2
	cmp	eax, 0
	jne	.label_2025
	movzx	eax, byte ptr [rbp - 0x55]
	movsxd	rcx, eax
	mov	qword ptr [rbp - 0x78], rcx
	call	__ctype_b_loc
	mov	rax, qword ptr [rax]
	mov	rcx, qword ptr [rbp - 0x78]
	movzx	edx, word ptr [rax + rcx*2]
	and	edx, 2
	cmp	edx, 0
	jne	.label_2035
	cmp	dword ptr [rbp - 0x34], 0x7fffffff
	jne	.label_2008
	jmp	.label_2018
.label_2760:
	mov	rax, qword ptr [rbp - 0x28]
	add	rax, 1
	mov	qword ptr [rbp - 0x28], rax
	mov	ecx, dword ptr [rbp - 0x34]
	add	ecx, 1
	mov	dword ptr [rbp - 0x34], ecx
	jmp	.label_2015
.label_2031:
	mov	dword ptr [rbp - 4], 0xffffffff
	jmp	.label_2007
.label_2033:
	mov	dword ptr [rbp - 4], 0xffffffff
	jmp	.label_2007
.label_2010:
	jmp	.label_2011
.label_2011:
	mov	rax, qword ptr [rbp - 0x50]
	add	rax, qword ptr [rbp - 0x28]
	mov	qword ptr [rbp - 0x28], rax
	lea	rdi, [rbp - 0x40]
	call	mbsinit
	cmp	eax, 0
	setne	cl
	xor	cl, 0xff
	test	cl, 1
	jne	.label_2032
.label_2037:
	jmp	.label_2015
.label_2015:
	jmp	.label_2019
.label_2013:
	mov	eax, dword ptr [rbp - 0x34]
	add	eax, 1
	mov	dword ptr [rbp - 0x34], eax
.label_2009:
	jmp	.label_2010
.label_2024:
	mov	eax, dword ptr [rbp - 0x54]
	add	eax, dword ptr [rbp - 0x34]
	mov	dword ptr [rbp - 0x34], eax
	jmp	.label_2011
.label_2020:
	mov	eax, dword ptr [rbp - 0x34]
	mov	dword ptr [rbp - 4], eax
	jmp	.label_2007
.label_2022:
	xor	esi, esi
	mov	eax, 8
	mov	edx, eax
	lea	rcx, [rbp - 0x40]
	mov	rdi, rcx
	call	memset
.label_2032:
	lea	rdi, [rbp - 0x44]
	lea	rcx, [rbp - 0x40]
	mov	rsi, qword ptr [rbp - 0x28]
	mov	rax, qword ptr [rbp - 0x30]
	mov	rdx, qword ptr [rbp - 0x28]
	sub	rax, rdx
	mov	rdx, rax
	call	rpl_mbrtowc
	mov	qword ptr [rbp - 0x50], rax
	cmp	qword ptr [rbp - 0x50], -1
	jne	.label_2027
	mov	eax, dword ptr [rbp - 0x1c]
	and	eax, 1
	cmp	eax, 0
	jne	.label_2033
	mov	rax, qword ptr [rbp - 0x28]
	add	rax, 1
	mov	qword ptr [rbp - 0x28], rax
	mov	ecx, dword ptr [rbp - 0x34]
	add	ecx, 1
	mov	dword ptr [rbp - 0x34], ecx
	jmp	.label_2037
.label_2023:
	mov	eax, dword ptr [rbp - 0x34]
	add	eax, 1
	mov	dword ptr [rbp - 0x34], eax
	jmp	.label_2014
.label_2044:
	mov	rax, qword ptr [rbp - 0x38]
	add	rax, qword ptr [rbp - 0x30]
	cmp	rax, 0x77
	jae	.label_2045
	mov	rdi, qword ptr [rbp - 0x28]
	mov	rsi, qword ptr [rbp - 0x20]
	mov	rdx, qword ptr [rbp - 0x30]
	call	extend_abbrs
	jmp	.label_2038
.label_2045:
	mov	rdi, qword ptr [rbp - 0x20]
	call	tzalloc
	mov	rdi, qword ptr [rbp - 0x10]
	mov	qword ptr [rdi], rax
	mov	qword ptr [rbp - 0x10], rax
	cmp	qword ptr [rbp - 0x10], 0
	jne	.label_2050
	mov	byte ptr [rbp - 1], 0
	jmp	.label_2042
.label_2050:
	mov	rax, qword ptr [rbp - 0x10]
	mov	byte ptr [rax + 8], 0
	mov	rax, qword ptr [rbp - 0x10]
	add	rax, 9
	mov	qword ptr [rbp - 0x28], rax
.label_2038:
	jmp	.label_2039
	.section	.text
	.align	32
	#Procedure 0x417009

	.globl save_abbr
	.type save_abbr, @function
save_abbr:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x40
	movabs	rax, OFFSET FLAT:label_662
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 0x18], rsi
	mov	qword ptr [rbp - 0x20], 0
	mov	qword ptr [rbp - 0x28], rax
	mov	rax, qword ptr [rbp - 0x18]
	mov	rax, qword ptr [rax + 0x30]
	mov	qword ptr [rbp - 0x20], rax
	cmp	qword ptr [rbp - 0x20], 0
	je	.label_2041
	mov	rax, qword ptr [rbp - 0x18]
	cmp	rax, qword ptr [rbp - 0x20]
	ja	.label_2040
	mov	rax, qword ptr [rbp - 0x20]
	mov	rcx, qword ptr [rbp - 0x18]
	add	rcx, 0x38
	cmp	rax, rcx
	jae	.label_2040
.label_2041:
	mov	byte ptr [rbp - 1], 1
	jmp	.label_2042
.label_2039:
	jmp	.label_2049
.label_2049:
	mov	rax, qword ptr [rbp - 0x28]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	qword ptr [rcx + 0x30], rax
	mov	byte ptr [rbp - 1], 1
.label_2042:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	add	rsp, 0x40
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x417095
	.globl sub_417095
	.type sub_417095, @function
sub_417095:

	nop	dword ptr [rax + rax]
.label_2043:
	mov	rdi, qword ptr [rbp - 0x28]
	call	strlen
	add	rax, 1
	add	rax, qword ptr [rbp - 0x28]
	mov	qword ptr [rbp - 0x28], rax
	mov	rax, qword ptr [rbp - 0x28]
	cmp	byte ptr [rax], 0
	jne	.label_2047
	mov	rax, qword ptr [rbp - 0x10]
	cmp	qword ptr [rax], 0
	je	.label_2047
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax]
	mov	qword ptr [rbp - 0x10], rax
	mov	rax, qword ptr [rbp - 0x10]
	add	rax, 9
	mov	qword ptr [rbp - 0x28], rax
.label_2047:
	jmp	.label_2046
.label_2040:
	mov	rax, qword ptr [rbp - 0x20]
	cmp	byte ptr [rax], 0
	je	.label_2049
	mov	rax, qword ptr [rbp - 0x10]
	add	rax, 9
	mov	qword ptr [rbp - 0x28], rax
.label_2046:
	mov	rdi, qword ptr [rbp - 0x28]
	mov	rsi, qword ptr [rbp - 0x20]
	call	strcmp
	cmp	eax, 0
	je	.label_2039
	mov	rax, qword ptr [rbp - 0x28]
	movsx	ecx, byte ptr [rax]
	cmp	ecx, 0
	jne	.label_2043
	mov	rax, qword ptr [rbp - 0x28]
	mov	rcx, qword ptr [rbp - 0x10]
	add	rcx, 9
	cmp	rax, rcx
	jne	.label_2048
	mov	rax, qword ptr [rbp - 0x10]
	movsx	ecx, byte ptr [rax + 8]
	cmp	ecx, 0
	jne	.label_2043
.label_2048:
	mov	rax, -1
	mov	rdi, qword ptr [rbp - 0x20]
	mov	qword ptr [rbp - 0x40], rax
	call	strlen
	add	rax, 1
	mov	qword ptr [rbp - 0x30], rax
	mov	rax, qword ptr [rbp - 0x28]
	mov	rdi, qword ptr [rbp - 0x10]
	add	rdi, 9
	sub	rax, rdi
	mov	qword ptr [rbp - 0x38], rax
	mov	rax, qword ptr [rbp - 0x40]
	sub	rax, qword ptr [rbp - 0x38]
	cmp	rax, qword ptr [rbp - 0x30]
	jae	.label_2044
	call	__errno_location
	mov	dword ptr [rax], 0xc
	mov	byte ptr [rbp - 1], 0
	jmp	.label_2042
	.section	.text
	.align	32
	#Procedure 0x4171a0
	.globl security_compute_create
	.type security_compute_create, @function
security_compute_create:

	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	mov	ax, dx
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	word ptr [rbp - 0x12], ax
	mov	qword ptr [rbp - 0x20], rcx
	call	__errno_location
	mov	edx, 0xffffffff
	mov	dword ptr [rax], 0x5f
	mov	eax, edx
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x4171d3
	.globl sub_4171d3
	.type sub_4171d3, @function
sub_4171d3:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4171e0

	.globl xstrcoll_df_atime
	.type xstrcoll_df_atime, @function
xstrcoll_df_atime:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 0x18], rsi
	mov	rax, qword ptr [rbp - 0x10]
	mov	rdi, rax
	call	is_linked_directory
	and	al, 1
	mov	byte ptr [rbp - 0x19], al
	mov	rdi, qword ptr [rbp - 0x18]
	call	is_linked_directory
	and	al, 1
	mov	byte ptr [rbp - 0x1a], al
	test	byte ptr [rbp - 0x19], 1
	je	.label_2052
	test	byte ptr [rbp - 0x1a], 1
	jne	.label_2052
	mov	dword ptr [rbp - 4], 0xffffffff
	jmp	.label_2051
.label_2052:
	test	byte ptr [rbp - 0x19], 1
	jne	.label_2054
	test	byte ptr [rbp - 0x1a], 1
	je	.label_2054
	mov	dword ptr [rbp - 4], 1
	jmp	.label_2051
.label_2054:
	jmp	.label_2053
.label_2053:
	movabs	rdx, OFFSET FLAT:xstrcoll
	mov	rax, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	rdi, rax
	mov	rsi, rcx
	call	cmp_atime
	mov	dword ptr [rbp - 4], eax
.label_2051:
	mov	eax, dword ptr [rbp - 4]
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x41727d
	.globl sub_41727d
	.type sub_41727d, @function
sub_41727d:

	nop	dword ptr [rax]
.label_2056:
	jmp	.label_2055
.label_2055:
	mov	rax, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rdi, rax
	mov	rsi, rcx
	call	cmp_version
	mov	dword ptr [rbp - 4], eax
.label_2057:
	mov	eax, dword ptr [rbp - 4]
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x4172a4
	.globl sub_4172a4
	.type sub_4172a4, @function
sub_4172a4:

	nop	word ptr cs:[rax + rax]
.label_2058:
	test	byte ptr [rbp - 0x19], 1
	jne	.label_2056
	test	byte ptr [rbp - 0x1a], 1
	je	.label_2056
	mov	dword ptr [rbp - 4], 1
	jmp	.label_2057
	.section	.text
	.align	32
	#Procedure 0x4172d1

	.globl rev_xstrcoll_df_version
	.type rev_xstrcoll_df_version, @function
rev_xstrcoll_df_version:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 0x18], rsi
	mov	rax, qword ptr [rbp - 0x10]
	mov	rdi, rax
	call	is_linked_directory
	and	al, 1
	mov	byte ptr [rbp - 0x19], al
	mov	rdi, qword ptr [rbp - 0x18]
	call	is_linked_directory
	and	al, 1
	mov	byte ptr [rbp - 0x1a], al
	test	byte ptr [rbp - 0x19], 1
	je	.label_2058
	test	byte ptr [rbp - 0x1a], 1
	jne	.label_2058
	mov	dword ptr [rbp - 4], 0xffffffff
	jmp	.label_2057
.label_2966:
	lea	rdi, [rbp - 0x48]
	mov	edx, 2
	mov	esi, dword ptr [rbp - 0x60]
	call	bkm_scale_by_power_0
	mov	dword ptr [rbp - 0x68], eax
	jmp	.label_2064
.label_2059:
	mov	dword ptr [rbp - 0x60], 0x3e8
	mov	eax, dword ptr [rbp - 0x64]
	add	eax, 1
	mov	dword ptr [rbp - 0x64], eax
.label_2069:
	jmp	.label_2078
.label_2078:
	jmp	.label_2071
.label_2071:
	mov	rax, qword ptr [rbp - 0x40]
	mov	rax, qword ptr [rax]
	movsx	ecx, byte ptr [rax]
	add	ecx, -0x42
	mov	eax, ecx
	sub	ecx, 0x35
	mov	qword ptr [rbp - 0xc0], rax
	mov	dword ptr [rbp - 0xc4], ecx
	ja	.label_2083
	mov	rax, qword ptr [rbp - 0xc0]
	mov	rcx,  qword ptr [word ptr [+ (rax * 8) + label_2072]]
	jmp	rcx
.label_2064:
	mov	eax, dword ptr [rbp - 0x68]
	or	eax, dword ptr [rbp - 0x4c]
	mov	dword ptr [rbp - 0x4c], eax
	mov	eax, dword ptr [rbp - 0x64]
	mov	rcx, qword ptr [rbp - 0x40]
	mov	rdx, qword ptr [rcx]
	movsxd	rsi, eax
	add	rdx, rsi
	mov	qword ptr [rcx], rdx
	mov	rcx, qword ptr [rbp - 0x40]
	mov	rcx, qword ptr [rcx]
	cmp	byte ptr [rcx], 0
	je	.label_2063
	mov	eax, dword ptr [rbp - 0x4c]
	or	eax, 2
	mov	dword ptr [rbp - 0x4c], eax
.label_2063:
	jmp	.label_2076
.label_2076:
	mov	rax, qword ptr [rbp - 0x48]
	mov	rcx, qword ptr [rbp - 0x28]
	mov	qword ptr [rcx], rax
	mov	edx, dword ptr [rbp - 0x4c]
	mov	dword ptr [rbp - 4], edx
.label_2061:
	mov	eax, dword ptr [rbp - 4]
	add	rsp, 0xd0
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x4173e0
	.globl sub_4173e0
	.type sub_4173e0, @function
sub_4173e0:

	nop	dword ptr [rax + rax]
.label_2096:
	mov	rax, qword ptr [rbp - 0x40]
	mov	rax, qword ptr [rax]
	movsx	ecx, byte ptr [rax]
	cmp	ecx, 0
	je	.label_2076
	mov	dword ptr [rbp - 0x60], 0x400
	mov	dword ptr [rbp - 0x64], 1
	mov	rdi, qword ptr [rbp - 0x30]
	mov	rax, qword ptr [rbp - 0x40]
	mov	rax, qword ptr [rax]
	movsx	esi, byte ptr [rax]
	call	strchr
	cmp	rax, 0
	jne	.label_2068
	mov	rax, qword ptr [rbp - 0x48]
	mov	rcx, qword ptr [rbp - 0x28]
	mov	qword ptr [rcx], rax
	mov	edx, dword ptr [rbp - 0x4c]
	or	edx, 2
	mov	dword ptr [rbp - 4], edx
	jmp	.label_2061
.label_2972:
	mov	dword ptr [rbp - 0x68], 0
	jmp	.label_2064
.label_2968:
	lea	rdi, [rbp - 0x48]
	mov	edx, 4
	mov	esi, dword ptr [rbp - 0x60]
	call	bkm_scale_by_power_0
	mov	dword ptr [rbp - 0x68], eax
	jmp	.label_2064
.label_2089:
	cmp	qword ptr [rbp - 0x18], 0
	je	.label_2092
	mov	rax, qword ptr [rbp - 0x18]
	mov	qword ptr [rbp - 0x70], rax
	jmp	.label_2094
.label_2969:
	lea	rdi, [rbp - 0x48]
	mov	edx, 8
	mov	esi, dword ptr [rbp - 0x60]
	call	bkm_scale_by_power_0
	mov	dword ptr [rbp - 0x68], eax
	jmp	.label_2064
	.section	.text
	.align	32
	#Procedure 0x417492

	.globl xstrtoumax
	.type xstrtoumax, @function
xstrtoumax:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0xd0
	xor	eax, eax
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 0x18], rsi
	mov	dword ptr [rbp - 0x1c], edx
	mov	qword ptr [rbp - 0x28], rcx
	mov	qword ptr [rbp - 0x30], r8
	mov	dword ptr [rbp - 0x4c], 0
	cmp	eax, dword ptr [rbp - 0x1c]
	jg	.label_2086
	cmp	dword ptr [rbp - 0x1c], 0x24
	jg	.label_2086
	jmp	.label_2089
.label_2971:
	lea	rdi, [rbp - 0x48]
	mov	esi, 0x200
	call	bkm_scale_0
	mov	dword ptr [rbp - 0x68], eax
	jmp	.label_2064
.label_2091:
	jmp	.label_2087
.label_2098:
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rbp - 0x40]
	mov	edx, dword ptr [rbp - 0x1c]
	call	strtoumax
	mov	qword ptr [rbp - 0x48], rax
	mov	rax, qword ptr [rbp - 0x40]
	mov	rax, qword ptr [rax]
	cmp	rax, qword ptr [rbp - 0x10]
	jne	.label_2099
	cmp	qword ptr [rbp - 0x30], 0
	je	.label_2090
	mov	rax, qword ptr [rbp - 0x40]
	mov	rax, qword ptr [rax]
	movsx	ecx, byte ptr [rax]
	cmp	ecx, 0
	je	.label_2090
	mov	rdi, qword ptr [rbp - 0x30]
	mov	rax, qword ptr [rbp - 0x40]
	mov	rax, qword ptr [rax]
	movsx	esi, byte ptr [rax]
	call	strchr
	cmp	rax, 0
	je	.label_2090
	mov	qword ptr [rbp - 0x48], 1
	jmp	.label_2091
.label_2090:
	mov	dword ptr [rbp - 4], 4
	jmp	.label_2061
.label_2092:
	lea	rax, [rbp - 0x38]
	mov	qword ptr [rbp - 0x70], rax
	jmp	.label_2094
.label_2094:
	mov	rax, qword ptr [rbp - 0x70]
	mov	qword ptr [rbp - 0x40], rax
	call	__errno_location
	mov	dword ptr [rax], 0
	mov	rax, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 0x58], rax
	mov	rax, qword ptr [rbp - 0x58]
	mov	cl, byte ptr [rax]
	mov	byte ptr [rbp - 0x59], cl
.label_2085:
	movzx	eax, byte ptr [rbp - 0x59]
	movsxd	rcx, eax
	mov	qword ptr [rbp - 0x78], rcx
	call	__ctype_b_loc
	mov	rax, qword ptr [rax]
	mov	rcx, qword ptr [rbp - 0x78]
	movzx	edx, word ptr [rax + rcx*2]
	and	edx, 0x2000
	cmp	edx, 0
	je	.label_2095
	mov	rax, qword ptr [rbp - 0x58]
	mov	rcx, rax
	add	rcx, 1
	mov	qword ptr [rbp - 0x58], rcx
	mov	dl, byte ptr [rax + 1]
	mov	byte ptr [rbp - 0x59], dl
	jmp	.label_2085
.label_2973:
	lea	rdi, [rbp - 0x48]
	mov	esi, 2
	call	bkm_scale_0
	mov	dword ptr [rbp - 0x68], eax
	jmp	.label_2064
.label_2097:
	mov	dword ptr [rbp - 0x4c], 1
.label_2093:
	jmp	.label_2087
.label_2087:
	cmp	qword ptr [rbp - 0x30], 0
	jne	.label_2096
	mov	rax, qword ptr [rbp - 0x48]
	mov	rcx, qword ptr [rbp - 0x28]
	mov	qword ptr [rcx], rax
	mov	edx, dword ptr [rbp - 0x4c]
	mov	dword ptr [rbp - 4], edx
	jmp	.label_2061
.label_2099:
	call	__errno_location
	cmp	dword ptr [rax], 0
	je	.label_2093
	call	__errno_location
	cmp	dword ptr [rax], 0x22
	je	.label_2097
	mov	dword ptr [rbp - 4], 4
	jmp	.label_2061
.label_2963:
	lea	rdi, [rbp - 0x48]
	mov	edx, 6
	mov	esi, dword ptr [rbp - 0x60]
	call	bkm_scale_by_power_0
	mov	dword ptr [rbp - 0x68], eax
	jmp	.label_2064
.label_2965:
	lea	rdi, [rbp - 0x48]
	mov	edx, 1
	mov	esi, dword ptr [rbp - 0x60]
	call	bkm_scale_by_power_0
	mov	dword ptr [rbp - 0x68], eax
	jmp	.label_2064
.label_2086:
	movabs	rdi, OFFSET FLAT:label_1118
	movabs	rsi, OFFSET FLAT:label_1119
	mov	edx, 0x54
	movabs	rcx, OFFSET FLAT:label_2088
	call	__assert_fail
.label_2964:
	lea	rdi, [rbp - 0x48]
	mov	edx, 3
	mov	esi, dword ptr [rbp - 0x60]
	call	bkm_scale_by_power_0
	mov	dword ptr [rbp - 0x68], eax
	jmp	.label_2064
.label_2068:
	mov	rax, qword ptr [rbp - 0x40]
	mov	rax, qword ptr [rax]
	movsx	ecx, byte ptr [rax]
	mov	edx, ecx
	sub	edx, 0x45
	mov	dword ptr [rbp - 0x7c], ecx
	mov	dword ptr [rbp - 0x80], edx
	je	.label_2062
	jmp	.label_2080
.label_2080:
	mov	eax, dword ptr [rbp - 0x7c]
	sub	eax, 0x47
	mov	dword ptr [rbp - 0x84], eax
	je	.label_2062
	jmp	.label_2082
.label_2082:
	mov	eax, dword ptr [rbp - 0x7c]
	sub	eax, 0x4b
	mov	dword ptr [rbp - 0x88], eax
	je	.label_2062
	jmp	.label_2060
.label_2060:
	mov	eax, dword ptr [rbp - 0x7c]
	sub	eax, 0x4d
	mov	dword ptr [rbp - 0x8c], eax
	je	.label_2062
	jmp	.label_2067
.label_2067:
	mov	eax, dword ptr [rbp - 0x7c]
	sub	eax, 0x50
	mov	dword ptr [rbp - 0x90], eax
	je	.label_2062
	jmp	.label_2073
.label_2073:
	mov	eax, dword ptr [rbp - 0x7c]
	sub	eax, 0x54
	mov	dword ptr [rbp - 0x94], eax
	je	.label_2062
	jmp	.label_2077
.label_2077:
	mov	eax, dword ptr [rbp - 0x7c]
	add	eax, -0x59
	sub	eax, 2
	mov	dword ptr [rbp - 0x98], eax
	jb	.label_2062
	jmp	.label_2081
.label_2081:
	mov	eax, dword ptr [rbp - 0x7c]
	sub	eax, 0x67
	mov	dword ptr [rbp - 0x9c], eax
	je	.label_2062
	jmp	.label_2074
.label_2074:
	mov	eax, dword ptr [rbp - 0x7c]
	sub	eax, 0x6b
	mov	dword ptr [rbp - 0xa0], eax
	je	.label_2062
	jmp	.label_2065
.label_2065:
	mov	eax, dword ptr [rbp - 0x7c]
	sub	eax, 0x6d
	mov	dword ptr [rbp - 0xa4], eax
	je	.label_2062
	jmp	.label_2070
.label_2070:
	mov	eax, dword ptr [rbp - 0x7c]
	sub	eax, 0x74
	mov	dword ptr [rbp - 0xa8], eax
	jne	.label_2071
	jmp	.label_2062
.label_2062:
	mov	esi, 0x30
	mov	rdi, qword ptr [rbp - 0x30]
	call	strchr
	cmp	rax, 0
	je	.label_2078
	mov	rax, qword ptr [rbp - 0x40]
	mov	rax, qword ptr [rax]
	movsx	ecx, byte ptr [rax + 1]
	mov	edx, ecx
	sub	edx, 0x42
	mov	dword ptr [rbp - 0xac], ecx
	mov	dword ptr [rbp - 0xb0], edx
	je	.label_2059
	jmp	.label_2084
.label_2084:
	mov	eax, dword ptr [rbp - 0xac]
	sub	eax, 0x44
	mov	dword ptr [rbp - 0xb4], eax
	je	.label_2059
	jmp	.label_2066
.label_2066:
	mov	eax, dword ptr [rbp - 0xac]
	sub	eax, 0x69
	mov	dword ptr [rbp - 0xb8], eax
	jne	.label_2069
	jmp	.label_2079
.label_2079:
	mov	rax, qword ptr [rbp - 0x40]
	mov	rax, qword ptr [rax]
	movsx	ecx, byte ptr [rax + 2]
	cmp	ecx, 0x42
	jne	.label_2075
	mov	eax, dword ptr [rbp - 0x64]
	add	eax, 2
	mov	dword ptr [rbp - 0x64], eax
.label_2075:
	jmp	.label_2069
.label_2962:
	lea	rdi, [rbp - 0x48]
	mov	esi, 0x400
	call	bkm_scale_0
	mov	dword ptr [rbp - 0x68], eax
	jmp	.label_2064
.label_2967:
	lea	rdi, [rbp - 0x48]
	mov	edx, 5
	mov	esi, dword ptr [rbp - 0x60]
	call	bkm_scale_by_power_0
	mov	dword ptr [rbp - 0x68], eax
	jmp	.label_2064
.label_2083:
	mov	rax, qword ptr [rbp - 0x48]
	mov	rcx, qword ptr [rbp - 0x28]
	mov	qword ptr [rcx], rax
	mov	edx, dword ptr [rbp - 0x4c]
	or	edx, 2
	mov	dword ptr [rbp - 4], edx
	jmp	.label_2061
.label_2970:
	lea	rdi, [rbp - 0x48]
	mov	edx, 7
	mov	esi, dword ptr [rbp - 0x60]
	call	bkm_scale_by_power_0
	mov	dword ptr [rbp - 0x68], eax
	jmp	.label_2064
.label_2095:
	movzx	eax, byte ptr [rbp - 0x59]
	cmp	eax, 0x2d
	jne	.label_2098
	mov	dword ptr [rbp - 4], 4
	jmp	.label_2061
	.section	.text
	.align	32
	#Procedure 0x4178d0

	.globl xmemdup
	.type xmemdup, @function
xmemdup:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	rdi, qword ptr [rbp - 0x10]
	call	xmalloc
	mov	rsi, qword ptr [rbp - 8]
	mov	rdx, qword ptr [rbp - 0x10]
	mov	rdi, rax
	mov	qword ptr [rbp - 0x18], rax
	call	memcpy
	mov	rax, qword ptr [rbp - 0x18]
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x417907
	.globl sub_417907
	.type sub_417907, @function
sub_417907:

	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x417910
	.globl set_quoting_flags
	.type set_quoting_flags, @function
set_quoting_flags:

	push	rbp
	mov	rbp, rsp
	mov	qword ptr [rbp - 8], rdi
	mov	dword ptr [rbp - 0xc], esi
	cmp	qword ptr [rbp - 8], 0
	jne	.label_2100
	movabs	rax, OFFSET FLAT:default_quoting_options
	mov	qword ptr [rbp - 8], rax
.label_2100:
	mov	rax, qword ptr [rbp - 8]
	mov	ecx, dword ptr [rax + 4]
	mov	dword ptr [rbp - 0x10], ecx
	mov	ecx, dword ptr [rbp - 0xc]
	mov	rax, qword ptr [rbp - 8]
	mov	dword ptr [rax + 4], ecx
	mov	eax, dword ptr [rbp - 0x10]
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x41794d
	.globl sub_41794d
	.type sub_41794d, @function
sub_41794d:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x417950

	.globl triple_free
	.type triple_free, @function
triple_free:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	mov	qword ptr [rbp - 8], rdi
	mov	rdi, qword ptr [rbp - 8]
	mov	qword ptr [rbp - 0x10], rdi
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rdi, qword ptr [rdi]
	call	free
	mov	rdi, qword ptr [rbp - 0x10]
	call	free
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x41797f
	.globl sub_41797f
	.type sub_41797f, @function
sub_41797f:

	nop	
	.section	.text
	.align	32
	#Procedure 0x417980
	.globl c_isxdigit
	.type c_isxdigit, @function
c_isxdigit:

	push	rbp
	mov	rbp, rsp
	mov	dword ptr [rbp - 8], edi
	mov	eax, edi
	add	eax, -0x30
	sub	eax, 0xa
	mov	dword ptr [rbp - 0xc], edi
	mov	dword ptr [rbp - 0x10], eax
	jb	.label_2101
	jmp	.label_2104
.label_2104:
	mov	eax, dword ptr [rbp - 0xc]
	add	eax, -0x41
	sub	eax, 6
	mov	dword ptr [rbp - 0x14], eax
	jb	.label_2101
	jmp	.label_2102
.label_2102:
	mov	eax, dword ptr [rbp - 0xc]
	add	eax, -0x61
	sub	eax, 5
	mov	dword ptr [rbp - 0x18], eax
	ja	.label_2103
	jmp	.label_2101
.label_2101:
	mov	byte ptr [rbp - 1], 1
	jmp	.label_2105
.label_2103:
	mov	byte ptr [rbp - 1], 0
.label_2105:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x4179e5
	.globl sub_4179e5
	.type sub_4179e5, @function
sub_4179e5:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4179f0

	.globl hash_find_entry
	.type hash_find_entry, @function
hash_find_entry:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x60
	mov	al, cl
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 0x18], rsi
	mov	qword ptr [rbp - 0x20], rdx
	and	al, 1
	mov	byte ptr [rbp - 0x21], al
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rbp - 0x18]
	call	safe_hasher
	mov	qword ptr [rbp - 0x30], rax
	mov	rax, qword ptr [rbp - 0x30]
	mov	rdx, qword ptr [rbp - 0x20]
	mov	qword ptr [rdx], rax
	mov	rax, qword ptr [rbp - 0x30]
	cmp	qword ptr [rax], 0
	jne	.label_2111
	mov	qword ptr [rbp - 8], 0
	jmp	.label_2117
.label_2114:
	jmp	.label_2106
.label_2106:
	mov	rax, qword ptr [rbp - 0x38]
	mov	rax, qword ptr [rax + 8]
	mov	qword ptr [rbp - 0x38], rax
	jmp	.label_2108
.label_2111:
	mov	rax, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rbp - 0x30]
	cmp	rax, qword ptr [rcx]
	je	.label_2110
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax + 0x38]
	mov	rdi, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rbp - 0x30]
	mov	rsi, qword ptr [rcx]
	call	rax
	test	al, 1
	jne	.label_2110
	jmp	.label_2107
.label_2110:
	mov	rax, qword ptr [rbp - 0x30]
	mov	rax, qword ptr [rax]
	mov	qword ptr [rbp - 0x40], rax
	test	byte ptr [rbp - 0x21], 1
	je	.label_2109
	mov	rax, qword ptr [rbp - 0x30]
	cmp	qword ptr [rax + 8], 0
	je	.label_2113
	mov	rax, qword ptr [rbp - 0x30]
	mov	rax, qword ptr [rax + 8]
	mov	qword ptr [rbp - 0x48], rax
	mov	rax, qword ptr [rbp - 0x30]
	mov	rcx, qword ptr [rbp - 0x48]
	mov	rdx, qword ptr [rcx]
	mov	qword ptr [rax], rdx
	mov	rcx, qword ptr [rcx + 8]
	mov	qword ptr [rax + 8], rcx
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rbp - 0x48]
	call	free_entry
	jmp	.label_2112
.label_2107:
	mov	rax, qword ptr [rbp - 0x30]
	mov	qword ptr [rbp - 0x38], rax
.label_2108:
	mov	rax, qword ptr [rbp - 0x38]
	cmp	qword ptr [rax + 8], 0
	je	.label_2116
	mov	rax, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rbp - 0x38]
	mov	rcx, qword ptr [rcx + 8]
	cmp	rax, qword ptr [rcx]
	je	.label_2115
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax + 0x38]
	mov	rdi, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rbp - 0x38]
	mov	rcx, qword ptr [rcx + 8]
	mov	rsi, qword ptr [rcx]
	call	rax
	test	al, 1
	jne	.label_2115
	jmp	.label_2114
.label_2115:
	mov	rax, qword ptr [rbp - 0x38]
	mov	rax, qword ptr [rax + 8]
	mov	rax, qword ptr [rax]
	mov	qword ptr [rbp - 0x50], rax
	test	byte ptr [rbp - 0x21], 1
	je	.label_2118
	mov	rax, qword ptr [rbp - 0x38]
	mov	rax, qword ptr [rax + 8]
	mov	qword ptr [rbp - 0x58], rax
	mov	rax, qword ptr [rbp - 0x58]
	mov	rax, qword ptr [rax + 8]
	mov	rcx, qword ptr [rbp - 0x38]
	mov	qword ptr [rcx + 8], rax
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rbp - 0x58]
	call	free_entry
.label_2118:
	mov	rax, qword ptr [rbp - 0x50]
	mov	qword ptr [rbp - 8], rax
	jmp	.label_2117
.label_2116:
	mov	qword ptr [rbp - 8], 0
.label_2117:
	mov	rax, qword ptr [rbp - 8]
	add	rsp, 0x60
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x417b96
	.globl sub_417b96
	.type sub_417b96, @function
sub_417b96:

	nop	word ptr cs:[rax + rax]
.label_2113:
	mov	rax, qword ptr [rbp - 0x30]
	mov	qword ptr [rax], 0
.label_2112:
	jmp	.label_2109
.label_2109:
	mov	rax, qword ptr [rbp - 0x40]
	mov	qword ptr [rbp - 8], rax
	jmp	.label_2117
.label_2120:
	jmp	.label_2119
.label_2119:
	movabs	rdx, OFFSET FLAT:xstrcoll
	mov	rax, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rdi, rax
	mov	rsi, rcx
	call	cmp_name
	mov	dword ptr [rbp - 4], eax
.label_2121:
	mov	eax, dword ptr [rbp - 4]
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x417bee
	.globl sub_417bee
	.type sub_417bee, @function
sub_417bee:

	nop	dword ptr [rax]
.label_2122:
	test	byte ptr [rbp - 0x19], 1
	jne	.label_2120
	test	byte ptr [rbp - 0x1a], 1
	je	.label_2120
	mov	dword ptr [rbp - 4], 1
	jmp	.label_2121
	.section	.text
	.align	32
	#Procedure 0x417c11

	.globl rev_xstrcoll_df_name
	.type rev_xstrcoll_df_name, @function
rev_xstrcoll_df_name:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 0x18], rsi
	mov	rax, qword ptr [rbp - 0x10]
	mov	rdi, rax
	call	is_linked_directory
	and	al, 1
	mov	byte ptr [rbp - 0x19], al
	mov	rdi, qword ptr [rbp - 0x18]
	call	is_linked_directory
	and	al, 1
	mov	byte ptr [rbp - 0x1a], al
	test	byte ptr [rbp - 0x19], 1
	je	.label_2122
	test	byte ptr [rbp - 0x1a], 1
	jne	.label_2122
	mov	dword ptr [rbp - 4], 0xffffffff
	jmp	.label_2121
	.section	.text
	.align	32
	#Procedure 0x417c60
	.globl quotearg
	.type quotearg, @function
quotearg:

	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	xor	eax, eax
	mov	qword ptr [rbp - 8], rdi
	mov	rsi, qword ptr [rbp - 8]
	mov	edi, eax
	call	quotearg_n
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x417c7f
	.globl sub_417c7f
	.type sub_417c7f, @function
sub_417c7f:

	nop	
	.section	.text
	.align	32
	#Procedure 0x417c80

	.globl get_stat_mtime
	.type get_stat_mtime, @function
get_stat_mtime:
	push	rbp
	mov	rbp, rsp
	mov	qword ptr [rbp - 0x18], rdi
	movups	xmm0, xmmword ptr [rdi + 0x58]
	movaps	xmmword ptr [rbp - 0x10], xmm0
	mov	rax, qword ptr [rbp - 0x10]
	mov	rdx, qword ptr [rbp - 8]
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x417c9a
	.globl sub_417c9a
	.type sub_417c9a, @function
sub_417c9a:

	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x417ca0

	.globl format_user_width
	.type format_user_width, @function
format_user_width:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	mov	dword ptr [rbp - 4], edi
	test	byte ptr [byte ptr [numeric_ids]],  1
	je	.label_2123
	xor	eax, eax
	mov	ecx, eax
	mov	qword ptr [rbp - 0x10], rcx
	jmp	.label_2124
.label_2123:
	mov	edi, dword ptr [rbp - 4]
	call	getuser
	mov	qword ptr [rbp - 0x10], rax
.label_2124:
	mov	rax, qword ptr [rbp - 0x10]
	mov	ecx, dword ptr [rbp - 4]
	mov	esi, ecx
	mov	rdi, rax
	call	format_user_or_group_width
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x417ce9
	.globl sub_417ce9
	.type sub_417ce9, @function
sub_417ce9:

	nop	dword ptr [rax]
.label_2137:
	jmp	.label_2125
	.section	.text
	.align	32
	#Procedure 0x417cf5

	.globl signal_setup
	.type signal_setup, @function
signal_setup:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0xc0
	mov	al, dil
	and	al, 1
	mov	byte ptr [rbp - 1], al
	test	byte ptr [rbp - 1], 1
	je	.label_2135
	movabs	rdi, OFFSET FLAT:caught_signals
	call	sigemptyset
	mov	dword ptr [rbp - 8], 0
	mov	dword ptr [rbp - 0xa4], eax
.label_2128:
	cmp	dword ptr [rbp - 8], 0xc
	jge	.label_2132
	xor	eax, eax
	mov	esi, eax
	lea	rdx, [rbp - 0xa0]
	movsxd	rcx, dword ptr [rbp - 8]
	mov	edi,  dword ptr [dword ptr [+ (rcx * 4) + signal_setup.sig]]
	call	sigaction
	mov	edi, 1
	mov	ecx, edi
	cmp	qword ptr [rbp - 0xa0], rcx
	mov	dword ptr [rbp - 0xa8], eax
	je	.label_2129
	movabs	rdi, OFFSET FLAT:caught_signals
	movsxd	rax, dword ptr [rbp - 8]
	mov	esi,  dword ptr [dword ptr [+ (rax * 4) + signal_setup.sig]]
	call	sigaddset
	mov	dword ptr [rbp - 0xac], eax
.label_2129:
	jmp	.label_2127
.label_2127:
	mov	eax, dword ptr [rbp - 8]
	add	eax, 1
	mov	dword ptr [rbp - 8], eax
	jmp	.label_2128
.label_2135:
	mov	dword ptr [rbp - 8], 0
.label_2134:
	cmp	dword ptr [rbp - 8], 0xc
	jge	.label_2131
	movabs	rdi, OFFSET FLAT:caught_signals
	movsxd	rax, dword ptr [rbp - 8]
	mov	esi,  dword ptr [dword ptr [+ (rax * 4) + signal_setup.sig]]
	call	sigismember
	cmp	eax, 0
	je	.label_2126
	xor	eax, eax
	mov	esi, eax
	movsxd	rcx, dword ptr [rbp - 8]
	mov	edi,  dword ptr [dword ptr [+ (rcx * 4) + signal_setup.sig]]
	call	signal
	mov	qword ptr [rbp - 0xb8], rax
.label_2126:
	jmp	.label_2133
.label_2133:
	mov	eax, dword ptr [rbp - 8]
	add	eax, 1
	mov	dword ptr [rbp - 8], eax
	jmp	.label_2134
.label_2132:
	movabs	rax, OFFSET FLAT:caught_signals
	mov	ecx, 0x80
	mov	edx, ecx
	lea	rsi, [rbp - 0xa0]
	add	rsi, 8
	mov	rdi, rsi
	mov	rsi, rax
	call	memcpy
	mov	dword ptr [rbp - 0x18], 0x10000000
	mov	dword ptr [rbp - 8], 0
.label_2136:
	cmp	dword ptr [rbp - 8], 0xc
	jge	.label_2137
	movabs	rdi, OFFSET FLAT:caught_signals
	movsxd	rax, dword ptr [rbp - 8]
	mov	esi,  dword ptr [dword ptr [+ (rax * 4) + signal_setup.sig]]
	call	sigismember
	cmp	eax, 0
	je	.label_2130
	lea	rsi, [rbp - 0xa0]
	xor	eax, eax
	mov	edx, eax
	movabs	rcx, OFFSET FLAT:sighandler
	movabs	rdi, OFFSET FLAT:stophandler
	movsxd	r8, dword ptr [rbp - 8]
	cmp	dword ptr [dword ptr [+ (r8 * 4) + signal_setup.sig]],  0x14
	cmove	rcx, rdi
	mov	qword ptr [rbp - 0xa0], rcx
	movsxd	rcx, dword ptr [rbp - 8]
	mov	edi,  dword ptr [dword ptr [+ (rcx * 4) + signal_setup.sig]]
	call	sigaction
	mov	dword ptr [rbp - 0xb0], eax
.label_2130:
	jmp	.label_2138
.label_2138:
	mov	eax, dword ptr [rbp - 8]
	add	eax, 1
	mov	dword ptr [rbp - 8], eax
	jmp	.label_2136
.label_2131:
	jmp	.label_2125
.label_2125:
	add	rsp, 0xc0
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x417ed2
	.globl sub_417ed2
	.type sub_417ed2, @function
sub_417ed2:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x417ee0

	.globl hash_get_n_buckets_used
	.type hash_get_n_buckets_used, @function
hash_get_n_buckets_used:
	push	rbp
	mov	rbp, rsp
	mov	qword ptr [rbp - 8], rdi
	mov	rdi, qword ptr [rbp - 8]
	mov	rax, qword ptr [rdi + 0x18]
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x417ef2
	.globl sub_417ef2
	.type sub_417ef2, @function
sub_417ef2:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x417f00
	.globl triple_compare
	.type triple_compare, @function
triple_compare:

	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x30
	xor	eax, eax
	mov	cl, al
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	rsi, qword ptr [rbp - 8]
	mov	qword ptr [rbp - 0x18], rsi
	mov	rsi, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 0x20], rsi
	mov	rsi, qword ptr [rbp - 0x18]
	mov	rsi, qword ptr [rsi + 8]
	mov	rdi, qword ptr [rbp - 0x20]
	cmp	rsi, qword ptr [rdi + 8]
	mov	byte ptr [rbp - 0x21], cl
	jne	.label_2139
	xor	eax, eax
	mov	cl, al
	mov	rdx, qword ptr [rbp - 0x18]
	mov	rdx, qword ptr [rdx + 0x10]
	mov	rsi, qword ptr [rbp - 0x20]
	cmp	rdx, qword ptr [rsi + 0x10]
	mov	byte ptr [rbp - 0x21], cl
	jne	.label_2139
	mov	rax, qword ptr [rbp - 0x18]
	mov	rdi, qword ptr [rax]
	mov	rax, qword ptr [rbp - 0x20]
	mov	rsi, qword ptr [rax]
	call	same_name
	mov	byte ptr [rbp - 0x21], al
.label_2139:
	mov	al, byte ptr [rbp - 0x21]
	xor	ecx, ecx
	mov	edx, 1
	test	al, 1
	cmovne	ecx, edx
	cmp	ecx, 0
	setne	al
	and	al, 1
	movzx	eax, al
	add	rsp, 0x30
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x417f90
	.globl quotearg_colon_mem
	.type quotearg_colon_mem, @function
quotearg_colon_mem:

	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	mov	edx, 0x3a
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	rdi, qword ptr [rbp - 8]
	mov	rsi, qword ptr [rbp - 0x10]
	call	quotearg_char_mem
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x417fb8
	.globl sub_417fb8
	.type sub_417fb8, @function
sub_417fb8:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x417fc0

	.globl mktime_z
	.type mktime_z, @function
mktime_z:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x70
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 0x18], rsi
	cmp	qword ptr [rbp - 0x10], 0
	jne	.label_2140
	mov	rdi, qword ptr [rbp - 0x18]
	call	timegm
	mov	qword ptr [rbp - 8], rax
	jmp	.label_2143
.label_2140:
	mov	rdi, qword ptr [rbp - 0x10]
	call	set_tz
	mov	qword ptr [rbp - 0x20], rax
	cmp	qword ptr [rbp - 0x20], 0
	je	.label_2141
	mov	rdi, qword ptr [rbp - 0x18]
	call	mktime
	mov	qword ptr [rbp - 0x28], rax
	mov	qword ptr [rbp - 0x30], -1
	mov	rax, qword ptr [rbp - 0x28]
	cmp	rax, qword ptr [rbp - 0x30]
	jne	.label_2145
	lea	rdi, [rbp - 0x28]
	lea	rsi, [rbp - 0x68]
	call	localtime_r
	cmp	rax, 0
	je	.label_2144
	lea	rsi, [rbp - 0x68]
	mov	rdi, qword ptr [rbp - 0x18]
	call	equal_tm
	cmp	eax, 0
	je	.label_2144
.label_2145:
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rbp - 0x18]
	call	save_abbr
	test	al, 1
	jne	.label_2144
	mov	rax, qword ptr [rbp - 0x30]
	mov	qword ptr [rbp - 0x28], rax
.label_2144:
	mov	rdi, qword ptr [rbp - 0x20]
	call	revert_tz
	test	al, 1
	jne	.label_2142
	jmp	.label_2146
.label_2142:
	mov	rax, qword ptr [rbp - 0x28]
	mov	qword ptr [rbp - 8], rax
	jmp	.label_2143
.label_2146:
	jmp	.label_2141
.label_2141:
	mov	qword ptr [rbp - 8], -1
.label_2143:
	mov	rax, qword ptr [rbp - 8]
	add	rsp, 0x70
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x4180ac
	.globl sub_4180ac
	.type sub_4180ac, @function
sub_4180ac:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x4180b0

	.globl known_term_type
	.type known_term_type, @function
known_term_type:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	movabs	rdi, OFFSET FLAT:label_2152
	call	getenv
	mov	qword ptr [rbp - 0x10], rax
	cmp	qword ptr [rbp - 0x10], 0
	je	.label_2150
	mov	rax, qword ptr [rbp - 0x10]
	cmp	byte ptr [rax], 0
	jne	.label_2149
.label_2150:
	mov	byte ptr [rbp - 1], 0
	jmp	.label_2148
.label_2154:
	mov	byte ptr [rbp - 1], 0
.label_2148:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x4180fe
	.globl sub_4180fe
	.type sub_4180fe, @function
sub_4180fe:

	nop	word ptr cs:[rax + rax]
.label_2149:
	movabs	rax, OFFSET FLAT:G_line
	mov	qword ptr [rbp - 0x18], rax
.label_2151:
	movabs	rax, OFFSET FLAT:G_line
	mov	rcx, qword ptr [rbp - 0x18]
	sub	rcx, rax
	cmp	rcx, 0x10c4
	jae	.label_2154
	movabs	rsi, OFFSET FLAT:label_2153
	mov	eax, 5
	mov	edx, eax
	mov	rdi, qword ptr [rbp - 0x18]
	call	strncmp
	cmp	eax, 0
	jne	.label_2147
	xor	edx, edx
	mov	rax, qword ptr [rbp - 0x18]
	add	rax, 5
	mov	rsi, qword ptr [rbp - 0x10]
	mov	rdi, rax
	call	fnmatch
	cmp	eax, 0
	jne	.label_2155
	mov	byte ptr [rbp - 1], 1
	jmp	.label_2148
.label_2155:
	jmp	.label_2147
.label_2147:
	mov	rdi, qword ptr [rbp - 0x18]
	call	strlen
	add	rax, 1
	add	rax, qword ptr [rbp - 0x18]
	mov	qword ptr [rbp - 0x18], rax
	jmp	.label_2151
.label_2156:
	mov	rax, qword ptr [rbp - 0x20]
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x4181aa
	.globl sub_4181aa
	.type sub_4181aa, @function
sub_4181aa:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4181b7

	.globl file_name_concat
	.type file_name_concat, @function
file_name_concat:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	qword ptr [rbp - 0x18], rdx
	mov	rdi, qword ptr [rbp - 8]
	mov	rsi, qword ptr [rbp - 0x10]
	mov	rdx, qword ptr [rbp - 0x18]
	call	mfile_name_concat
	mov	qword ptr [rbp - 0x20], rax
	cmp	qword ptr [rbp - 0x20], 0
	jne	.label_2156
	call	xalloc_die
	.section	.text
	.align	32
	#Procedure 0x4181f0

	.globl same_nameat
	.type same_nameat, @function
same_nameat:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x190
	mov	dword ptr [rbp - 4], edi
	mov	qword ptr [rbp - 0x10], rsi
	mov	dword ptr [rbp - 0x14], edx
	mov	qword ptr [rbp - 0x20], rcx
	mov	rdi, qword ptr [rbp - 0x10]
	call	last_component
	mov	qword ptr [rbp - 0x28], rax
	mov	rdi, qword ptr [rbp - 0x20]
	call	last_component
	mov	qword ptr [rbp - 0x30], rax
	mov	rdi, qword ptr [rbp - 0x28]
	call	base_len
	mov	qword ptr [rbp - 0x38], rax
	mov	rdi, qword ptr [rbp - 0x30]
	call	base_len
	xor	edx, edx
	mov	r8b, dl
	mov	qword ptr [rbp - 0x40], rax
	mov	rax, qword ptr [rbp - 0x38]
	cmp	rax, qword ptr [rbp - 0x40]
	mov	byte ptr [rbp - 0x181], r8b
	jne	.label_2157
	mov	rdi, qword ptr [rbp - 0x28]
	mov	rsi, qword ptr [rbp - 0x30]
	mov	rdx, qword ptr [rbp - 0x40]
	call	memcmp
	cmp	eax, 0
	sete	cl
	mov	byte ptr [rbp - 0x181], cl
.label_2157:
	mov	al, byte ptr [rbp - 0x181]
	and	al, 1
	mov	byte ptr [rbp - 0x41], al
	mov	al, byte ptr [rbp - 0x41]
	and	al, 1
	mov	byte ptr [rbp - 0x42], al
	mov	byte ptr [rbp - 0x43], 0
	test	byte ptr [rbp - 0x42], 1
	je	.label_2161
	mov	rdi, qword ptr [rbp - 0x10]
	call	dir_name
	lea	rdx, [rbp - 0xd8]
	mov	qword ptr [rbp - 0x170], rax
	mov	dword ptr [rbp - 0x174], 0x100
	mov	edi, dword ptr [rbp - 4]
	mov	rsi, qword ptr [rbp - 0x170]
	mov	ecx, dword ptr [rbp - 0x174]
	call	fstatat
	cmp	eax, 0
	je	.label_2158
	call	__errno_location
	mov	edi, 1
	movabs	rdx, OFFSET FLAT:label_1272
	mov	esi, dword ptr [rax]
	mov	rcx, qword ptr [rbp - 0x170]
	mov	al, 0
	call	error
.label_2158:
	mov	rdi, qword ptr [rbp - 0x170]
	call	free
	mov	rdi, qword ptr [rbp - 0x20]
	call	dir_name
	lea	rdx, [rbp - 0x168]
	mov	qword ptr [rbp - 0x180], rax
	mov	edi, dword ptr [rbp - 0x14]
	mov	rsi, qword ptr [rbp - 0x180]
	mov	ecx, dword ptr [rbp - 0x174]
	call	fstatat
	cmp	eax, 0
	je	.label_2160
	call	__errno_location
	mov	edi, 1
	movabs	rdx, OFFSET FLAT:label_1272
	mov	esi, dword ptr [rax]
	mov	rcx, qword ptr [rbp - 0x180]
	mov	al, 0
	call	error
.label_2160:
	xor	eax, eax
	mov	cl, al
	mov	rdx, qword ptr [rbp - 0xd0]
	cmp	rdx, qword ptr [rbp - 0x160]
	mov	byte ptr [rbp - 0x182], cl
	jne	.label_2159
	mov	rax, qword ptr [rbp - 0xd8]
	cmp	rax, qword ptr [rbp - 0x168]
	sete	cl
	mov	byte ptr [rbp - 0x182], cl
.label_2159:
	mov	al, byte ptr [rbp - 0x182]
	and	al, 1
	mov	byte ptr [rbp - 0x43], al
	mov	rdi, qword ptr [rbp - 0x180]
	call	free
.label_2161:
	mov	al, byte ptr [rbp - 0x43]
	and	al, 1
	movzx	eax, al
	add	rsp, 0x190
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x4183ba
	.globl sub_4183ba
	.type sub_4183ba, @function
sub_4183ba:

	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4183c0

	.globl hard_locale
	.type hard_locale, @function
hard_locale:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	xor	eax, eax
	mov	esi, eax
	mov	dword ptr [rbp - 4], edi
	mov	byte ptr [rbp - 5], 1
	mov	edi, dword ptr [rbp - 4]
	call	setlocale
	mov	qword ptr [rbp - 0x10], rax
	cmp	qword ptr [rbp - 0x10], 0
	je	.label_2162
	mov	rdi, qword ptr [rbp - 0x10]
	mov	eax, OFFSET FLAT:label_2166
	mov	esi, eax
	call	strcmp
	cmp	eax, 0
	je	.label_2165
	mov	rdi, qword ptr [rbp - 0x10]
	mov	eax, OFFSET FLAT:label_2164
	mov	esi, eax
	call	strcmp
	cmp	eax, 0
	jne	.label_2163
.label_2165:
	mov	byte ptr [rbp - 5], 0
.label_2163:
	jmp	.label_2162
.label_2162:
	mov	al, byte ptr [rbp - 5]
	and	al, 1
	movzx	eax, al
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x418433
	.globl sub_418433
	.type sub_418433, @function
sub_418433:

	nop	word ptr cs:[rax + rax]
.label_2189:
	cmp	dword ptr [rbp - 0xc], 3
	je	.label_2167
	cmp	dword ptr [rbp - 0xc], 9
	jne	.label_2171
.label_2167:
	mov	byte ptr [rbp - 0xd], 0x2f
	jmp	.label_2175
.label_2170:
	cmp	dword ptr [rbp - 0xc], 7
	jne	.label_2180
.label_2174:
	mov	byte ptr [rbp - 0xd], 0x3d
	jmp	.label_2176
.label_2178:
	cmp	dword ptr [rbp - 0xc], 1
	jne	.label_2173
.label_2186:
	mov	byte ptr [rbp - 0xd], 0x7c
	jmp	.label_2177
.label_2173:
	test	byte ptr [rbp - 1], 1
	je	.label_2170
	mov	eax, dword ptr [rbp - 8]
	and	eax, 0xf000
	cmp	eax, 0xc000
	je	.label_2174
	jmp	.label_2180
.label_2192:
	cmp	dword ptr [rbp - 0xc], 5
	jne	.label_2188
.label_2191:
	test	byte ptr [rbp - 1], 1
	je	.label_2190
	cmp	dword ptr [dword ptr [indicator_style]],  3
	jne	.label_2190
	mov	eax, dword ptr [rbp - 8]
	and	eax, 0x49
	cmp	eax, 0
	je	.label_2190
	mov	byte ptr [rbp - 0xd], 0x2a
	jmp	.label_2193
.label_2181:
	cmp	dword ptr [rbp - 0xc], 6
	jne	.label_2169
.label_2184:
	mov	byte ptr [rbp - 0xd], 0x40
	jmp	.label_2185
	.section	.text
	.align	32
	#Procedure 0x4184f2

	.globl get_type_indicator
	.type get_type_indicator, @function
get_type_indicator:
	push	rbp
	mov	rbp, rsp
	mov	al, dil
	and	al, 1
	mov	byte ptr [rbp - 1], al
	mov	dword ptr [rbp - 8], esi
	mov	dword ptr [rbp - 0xc], edx
	test	byte ptr [rbp - 1], 1
	je	.label_2192
	mov	eax, dword ptr [rbp - 8]
	and	eax, 0xf000
	cmp	eax, 0x8000
	je	.label_2191
	jmp	.label_2188
.label_2190:
	mov	byte ptr [rbp - 0xd], 0
.label_2193:
	jmp	.label_2183
.label_2169:
	test	byte ptr [rbp - 1], 1
	je	.label_2178
	mov	eax, dword ptr [rbp - 8]
	and	eax, 0xf000
	cmp	eax, 0x1000
	je	.label_2186
	jmp	.label_2173
.label_2168:
	mov	byte ptr [rbp - 0xd], 0
.label_2179:
	jmp	.label_2176
.label_2176:
	jmp	.label_2177
.label_2177:
	jmp	.label_2185
.label_2185:
	jmp	.label_2172
.label_2172:
	jmp	.label_2175
.label_2175:
	jmp	.label_2183
.label_2183:
	movsx	eax, byte ptr [rbp - 0xd]
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x418579
	.globl sub_418579
	.type sub_418579, @function
sub_418579:

	nop	dword ptr [rax]
.label_2180:
	test	byte ptr [rbp - 1], 1
	je	.label_2168
	xor	eax, eax
	mov	cl, al
	test	cl, 1
	jne	.label_2187
	jmp	.label_2168
.label_2187:
	mov	byte ptr [rbp - 0xd], 0x3e
	jmp	.label_2179
.label_2182:
	test	byte ptr [rbp - 1], 1
	je	.label_2181
	mov	eax, dword ptr [rbp - 8]
	and	eax, 0xf000
	cmp	eax, 0xa000
	je	.label_2184
	jmp	.label_2169
.label_2188:
	test	byte ptr [rbp - 1], 1
	je	.label_2189
	mov	eax, dword ptr [rbp - 8]
	and	eax, 0xf000
	cmp	eax, 0x4000
	je	.label_2167
	jmp	.label_2171
.label_2171:
	cmp	dword ptr [dword ptr [indicator_style]],  1
	jne	.label_2182
	mov	byte ptr [rbp - 0xd], 0
	jmp	.label_2172
	.section	.text
	.align	32
	#Procedure 0x418600

	.globl add_ignore_pattern
	.type add_ignore_pattern, @function
add_ignore_pattern:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	mov	eax, 0x10
	mov	ecx, eax
	mov	qword ptr [rbp - 8], rdi
	mov	rdi, rcx
	call	xmalloc
	mov	qword ptr [rbp - 0x10], rax
	mov	rax, qword ptr [rbp - 8]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	qword ptr [rcx], rax
	mov	rax,  qword ptr [word ptr [ignore_patterns]]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	qword ptr [rcx + 8], rax
	mov	rax, qword ptr [rbp - 0x10]
	mov	qword ptr [word ptr [ignore_patterns]],  rax
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x41864c
	.globl sub_41864c
	.type sub_41864c, @function
sub_41864c:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x418650

	.globl get_stat_ctime
	.type get_stat_ctime, @function
get_stat_ctime:
	push	rbp
	mov	rbp, rsp
	mov	qword ptr [rbp - 0x18], rdi
	movups	xmm0, xmmword ptr [rdi + 0x68]
	movaps	xmmword ptr [rbp - 0x10], xmm0
	mov	rax, qword ptr [rbp - 0x10]
	mov	rdx, qword ptr [rbp - 8]
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x41866a
	.globl sub_41866a
	.type sub_41866a, @function
sub_41866a:

	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x418670

	.globl get_link_name
	.type get_link_name, @function
get_link_name:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	mov	al, dl
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	and	al, 1
	mov	byte ptr [rbp - 0x11], al
	mov	rdi, qword ptr [rbp - 8]
	mov	rsi, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rsi + 0x48]
	call	areadlink_with_size
	mov	rsi, qword ptr [rbp - 0x10]
	mov	qword ptr [rsi + 8], rax
	mov	rax, qword ptr [rbp - 0x10]
	cmp	qword ptr [rax + 8], 0
	jne	.label_2194
	movabs	rdi, OFFSET FLAT:label_2195
	mov	al, byte ptr [rbp - 0x11]
	mov	byte ptr [rbp - 0x12], al
	call	gettext
	mov	rdx, qword ptr [rbp - 8]
	mov	cl, byte ptr [rbp - 0x12]
	and	cl, 1
	movzx	edi, cl
	mov	rsi, rax
	call	file_failure
.label_2194:
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x4186df
	.globl sub_4186df
	.type sub_4186df, @function
sub_4186df:

	nop	
.label_2200:
	mov	rdi, qword ptr [rbp - 0x10]
	call	__freading
	cmp	eax, 0
	je	.label_2196
	mov	rdi, qword ptr [rbp - 0x10]
	call	fileno
	xor	ecx, ecx
	mov	esi, ecx
	mov	edx, 1
	mov	edi, eax
	call	lseek
	cmp	rax, -1
	je	.label_2197
.label_2196:
	mov	rdi, qword ptr [rbp - 0x10]
	call	rpl_fflush
	cmp	eax, 0
	je	.label_2197
	call	__errno_location
	mov	ecx, dword ptr [rax]
	mov	dword ptr [rbp - 0x14], ecx
.label_2197:
	mov	rdi, qword ptr [rbp - 0x10]
	call	fclose
	mov	dword ptr [rbp - 0x1c], eax
	cmp	dword ptr [rbp - 0x14], 0
	je	.label_2198
	mov	eax, dword ptr [rbp - 0x14]
	mov	dword ptr [rbp - 0x20], eax
	call	__errno_location
	mov	ecx, dword ptr [rbp - 0x20]
	mov	dword ptr [rax], ecx
	mov	dword ptr [rbp - 0x1c], 0xffffffff
.label_2198:
	mov	eax, dword ptr [rbp - 0x1c]
	mov	dword ptr [rbp - 4], eax
.label_2199:
	mov	eax, dword ptr [rbp - 4]
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x41876d
	.globl sub_41876d
	.type sub_41876d, @function
sub_41876d:

	nop	
	.section	.text
	.align	32
	#Procedure 0x41876f

	.globl rpl_fclose
	.type rpl_fclose, @function
rpl_fclose:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	mov	qword ptr [rbp - 0x10], rdi
	mov	dword ptr [rbp - 0x14], 0
	mov	dword ptr [rbp - 0x1c], 0
	mov	rdi, qword ptr [rbp - 0x10]
	call	fileno
	mov	dword ptr [rbp - 0x18], eax
	cmp	dword ptr [rbp - 0x18], 0
	jge	.label_2200
	mov	rdi, qword ptr [rbp - 0x10]
	call	fclose
	mov	dword ptr [rbp - 4], eax
	jmp	.label_2199
.label_2207:
	mov	rax, qword ptr [rbp - 0x28]
	cmp	rax, qword ptr [rbp - 0x18]
	jbe	.label_2201
	mov	rax, qword ptr [rbp - 0x28]
	mov	qword ptr [rbp - 0x18], rax
.label_2201:
	jmp	.label_2202
.label_2202:
	jmp	.label_2203
.label_2203:
	mov	rax, qword ptr [rbp - 0x10]
	add	rax, 0x10
	mov	qword ptr [rbp - 0x10], rax
	jmp	.label_2205
.label_2206:
	mov	rax, qword ptr [rbp - 0x18]
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x4187e7
	.globl sub_4187e7
	.type sub_4187e7, @function
sub_4187e7:

	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4187ed

	.globl hash_get_max_bucket_length
	.type hash_get_max_bucket_length, @function
hash_get_max_bucket_length:
	push	rbp
	mov	rbp, rsp
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x18], 0
	mov	rdi, qword ptr [rbp - 8]
	mov	rdi, qword ptr [rdi]
	mov	qword ptr [rbp - 0x10], rdi
.label_2205:
	mov	rax, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rbp - 8]
	cmp	rax, qword ptr [rcx + 8]
	jae	.label_2206
	mov	rax, qword ptr [rbp - 0x10]
	cmp	qword ptr [rax], 0
	je	.label_2202
	mov	rax, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 0x20], rax
	mov	qword ptr [rbp - 0x28], 1
.label_2204:
	mov	rax, qword ptr [rbp - 0x20]
	mov	rax, qword ptr [rax + 8]
	mov	qword ptr [rbp - 0x20], rax
	cmp	qword ptr [rbp - 0x20], 0
	je	.label_2207
	mov	rax, qword ptr [rbp - 0x28]
	add	rax, 1
	mov	qword ptr [rbp - 0x28], rax
	jmp	.label_2204
	.section	.text
	.align	32
	#Procedure 0x418860
	.globl security_check_context_raw
	.type security_check_context_raw, @function
security_check_context_raw:

	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	mov	qword ptr [rbp - 8], rdi
	call	__errno_location
	mov	ecx, 0xffffffff
	mov	dword ptr [rax], 0x5f
	mov	eax, ecx
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x418884
	.globl sub_418884
	.type sub_418884, @function
sub_418884:

	nop	word ptr cs:[rax + rax]
.label_2211:
	test	byte ptr [rbp - 0x19], 1
	jne	.label_2208
	test	byte ptr [rbp - 0x1a], 1
	je	.label_2208
	mov	dword ptr [rbp - 4], 1
	jmp	.label_2209
	.section	.text
	.align	32
	#Procedure 0x4188b0

	.globl strcmp_df_ctime
	.type strcmp_df_ctime, @function
strcmp_df_ctime:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 0x18], rsi
	mov	rax, qword ptr [rbp - 0x10]
	mov	rdi, rax
	call	is_linked_directory
	and	al, 1
	mov	byte ptr [rbp - 0x19], al
	mov	rdi, qword ptr [rbp - 0x18]
	call	is_linked_directory
	and	al, 1
	mov	byte ptr [rbp - 0x1a], al
	test	byte ptr [rbp - 0x19], 1
	je	.label_2211
	test	byte ptr [rbp - 0x1a], 1
	jne	.label_2211
	mov	dword ptr [rbp - 4], 0xffffffff
	jmp	.label_2209
.label_2208:
	jmp	.label_2210
.label_2210:
	movabs	rdx, OFFSET FLAT:strcmp
	mov	rax, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	rdi, rax
	mov	rsi, rcx
	call	cmp_ctime
	mov	dword ptr [rbp - 4], eax
.label_2209:
	mov	eax, dword ptr [rbp - 4]
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x41892d
	.globl sub_41892d
	.type sub_41892d, @function
sub_41892d:

	nop	dword ptr [rax]
.label_2215:
	test	byte ptr [rbp - 0x19], 1
	jne	.label_2212
	test	byte ptr [rbp - 0x1a], 1
	je	.label_2212
	mov	dword ptr [rbp - 4], 1
	jmp	.label_2213
	.section	.text
	.align	32
	#Procedure 0x418950

	.globl rev_strcmp_df_extension
	.type rev_strcmp_df_extension, @function
rev_strcmp_df_extension:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 0x18], rsi
	mov	rax, qword ptr [rbp - 0x10]
	mov	rdi, rax
	call	is_linked_directory
	and	al, 1
	mov	byte ptr [rbp - 0x19], al
	mov	rdi, qword ptr [rbp - 0x18]
	call	is_linked_directory
	and	al, 1
	mov	byte ptr [rbp - 0x1a], al
	test	byte ptr [rbp - 0x19], 1
	je	.label_2215
	test	byte ptr [rbp - 0x1a], 1
	jne	.label_2215
	mov	dword ptr [rbp - 4], 0xffffffff
	jmp	.label_2213
.label_2212:
	jmp	.label_2214
.label_2214:
	movabs	rdx, OFFSET FLAT:strcmp
	mov	rax, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rdi, rax
	mov	rsi, rcx
	call	cmp_extension
	mov	dword ptr [rbp - 4], eax
.label_2213:
	mov	eax, dword ptr [rbp - 4]
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x4189cd
	.globl sub_4189cd
	.type sub_4189cd, @function
sub_4189cd:

	nop	dword ptr [rax]
.label_2217:
	movabs	rax, OFFSET FLAT:default_tuning
	mov	rcx, qword ptr [rbp - 0x10]
	mov	qword ptr [rcx + 0x28], rax
	mov	byte ptr [rbp - 1], 0
.label_2218:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x4189f0
	.globl sub_4189f0
	.type sub_4189f0, @function
sub_4189f0:

	nop	word ptr cs:[rax + rax]
.label_2220:
	movss	xmm0,  dword ptr [dword ptr [rip + label_2219]]
	movss	dword ptr [rbp - 0x1c], xmm0
	movss	xmm0, dword ptr [rbp - 0x1c]
	mov	rax, qword ptr [rbp - 0x18]
	movss	xmm1, dword ptr [rax + 8]
	ucomiss	xmm1, xmm0
	jbe	.label_2217
	movss	xmm0,  dword ptr [dword ptr [rip + label_2216]]
	mov	rax, qword ptr [rbp - 0x18]
	movss	xmm1, dword ptr [rax + 8]
	subss	xmm0, dword ptr [rbp - 0x1c]
	ucomiss	xmm0, xmm1
	jbe	.label_2217
	movss	xmm0,  dword ptr [dword ptr [rip + label_2216]]
	addss	xmm0, dword ptr [rbp - 0x1c]
	mov	rax, qword ptr [rbp - 0x18]
	movss	xmm1, dword ptr [rax + 0xc]
	ucomiss	xmm1, xmm0
	jbe	.label_2217
	xorps	xmm0, xmm0
	mov	rax, qword ptr [rbp - 0x18]
	movss	xmm1, dword ptr [rax]
	ucomiss	xmm1, xmm0
	jb	.label_2217
	mov	rax, qword ptr [rbp - 0x18]
	movss	xmm0, dword ptr [rax]
	addss	xmm0, dword ptr [rbp - 0x1c]
	mov	rax, qword ptr [rbp - 0x18]
	movss	xmm1, dword ptr [rax + 4]
	ucomiss	xmm1, xmm0
	jbe	.label_2217
	movss	xmm0,  dword ptr [dword ptr [rip + label_2216]]
	mov	rax, qword ptr [rbp - 0x18]
	ucomiss	xmm0, dword ptr [rax + 4]
	jb	.label_2217
	mov	rax, qword ptr [rbp - 0x18]
	movss	xmm0, dword ptr [rax]
	addss	xmm0, dword ptr [rbp - 0x1c]
	mov	rax, qword ptr [rbp - 0x18]
	movss	xmm1, dword ptr [rax + 8]
	ucomiss	xmm1, xmm0
	jbe	.label_2217
	mov	byte ptr [rbp - 1], 1
	jmp	.label_2218
	.section	.text
	.align	32
	#Procedure 0x418acf

	.globl check_tuning
	.type check_tuning, @function
check_tuning:
	push	rbp
	mov	rbp, rsp
	movabs	rax, OFFSET FLAT:default_tuning
	mov	qword ptr [rbp - 0x10], rdi
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rdi, qword ptr [rdi + 0x28]
	mov	qword ptr [rbp - 0x18], rdi
	cmp	qword ptr [rbp - 0x18], rax
	jne	.label_2220
	mov	byte ptr [rbp - 1], 1
	jmp	.label_2218
	.section	.text
	.align	32
	#Procedure 0x418b00

	.globl file_ignored
	.type file_ignored, @function
file_ignored:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	mov	qword ptr [rbp - 8], rdi
	cmp	dword ptr [dword ptr [ignore_mode]],  2
	je	.label_2221
	mov	rax, qword ptr [rbp - 8]
	movsx	ecx, byte ptr [rax]
	cmp	ecx, 0x2e
	jne	.label_2221
	mov	al, 1
	cmp	dword ptr [dword ptr [ignore_mode]],  0
	mov	byte ptr [rbp - 9], al
	je	.label_2222
	mov	al, 1
	mov	rcx, qword ptr [rbp - 8]
	movsx	edx, byte ptr [rcx + 1]
	cmp	edx, 0x2e
	sete	sil
	and	sil, 1
	movzx	edx, sil
	add	edx, 1
	movsxd	rcx, edx
	mov	rdi, qword ptr [rbp - 8]
	cmp	byte ptr [rdi + rcx], 0
	mov	byte ptr [rbp - 9], al
	je	.label_2222
.label_2221:
	cmp	dword ptr [dword ptr [ignore_mode]],  0
	jne	.label_2223
	mov	rdi,  qword ptr [word ptr [hide_patterns]]
	mov	rsi, qword ptr [rbp - 8]
	call	patterns_match
	mov	cl, 1
	test	al, 1
	mov	byte ptr [rbp - 9], cl
	jne	.label_2222
.label_2223:
	mov	rdi,  qword ptr [word ptr [ignore_patterns]]
	mov	rsi, qword ptr [rbp - 8]
	call	patterns_match
	mov	byte ptr [rbp - 9], al
.label_2222:
	mov	al, byte ptr [rbp - 9]
	and	al, 1
	movzx	eax, al
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x418bbb
	.globl sub_418bbb
	.type sub_418bbb, @function
sub_418bbb:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x418bc0

	.globl quotearg_alloc_mem
	.type quotearg_alloc_mem, @function
quotearg_alloc_mem:
	push	rbp
	mov	rbp, rsp
	push	rbx
	sub	rsp, 0x78
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 0x18], rsi
	mov	qword ptr [rbp - 0x20], rdx
	mov	qword ptr [rbp - 0x28], rcx
	cmp	qword ptr [rbp - 0x28], 0
	je	.label_2224
	mov	rax, qword ptr [rbp - 0x28]
	mov	qword ptr [rbp - 0x50], rax
	jmp	.label_2225
.label_2224:
	movabs	rax, OFFSET FLAT:default_quoting_options
	mov	qword ptr [rbp - 0x50], rax
	jmp	.label_2225
.label_2225:
	mov	rax, qword ptr [rbp - 0x50]
	mov	qword ptr [rbp - 0x30], rax
	call	__errno_location
	xor	ecx, ecx
	mov	edx, ecx
	mov	ecx, 1
	xor	esi, esi
	mov	edi, dword ptr [rax]
	mov	dword ptr [rbp - 0x34], edi
	mov	rax, qword ptr [rbp - 0x30]
	mov	edi, dword ptr [rax + 4]
	cmp	qword ptr [rbp - 0x20], 0
	cmovne	ecx, esi
	or	edi, ecx
	mov	dword ptr [rbp - 0x38], edi
	mov	rax, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	r8, qword ptr [rbp - 0x30]
	mov	r8d, dword ptr [r8]
	mov	r9d, dword ptr [rbp - 0x38]
	mov	r10, qword ptr [rbp - 0x30]
	add	r10, 8
	mov	r11, qword ptr [rbp - 0x30]
	mov	r11, qword ptr [r11 + 0x28]
	mov	rbx, qword ptr [rbp - 0x30]
	mov	rbx, qword ptr [rbx + 0x30]
	mov	rdi, rdx
	mov	rsi, rdx
	mov	rdx, rax
	mov	qword ptr [rsp], r10
	mov	qword ptr [rsp + 8], r11
	mov	qword ptr [rsp + 0x10], rbx
	call	quotearg_buffer_restyled
	add	rax, 1
	mov	qword ptr [rbp - 0x40], rax
	mov	rdi, qword ptr [rbp - 0x40]
	call	xcharalloc
	mov	qword ptr [rbp - 0x48], rax
	mov	rdi, qword ptr [rbp - 0x48]
	mov	rsi, qword ptr [rbp - 0x40]
	mov	rdx, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	rax, qword ptr [rbp - 0x30]
	mov	r8d, dword ptr [rax]
	mov	r9d, dword ptr [rbp - 0x38]
	mov	rax, qword ptr [rbp - 0x30]
	add	rax, 8
	mov	r10, qword ptr [rbp - 0x30]
	mov	r10, qword ptr [r10 + 0x28]
	mov	r11, qword ptr [rbp - 0x30]
	mov	r11, qword ptr [r11 + 0x30]
	mov	qword ptr [rsp], rax
	mov	qword ptr [rsp + 8], r10
	mov	qword ptr [rsp + 0x10], r11
	call	quotearg_buffer_restyled
	mov	r8d, dword ptr [rbp - 0x34]
	mov	qword ptr [rbp - 0x58], rax
	mov	dword ptr [rbp - 0x5c], r8d
	call	__errno_location
	mov	r8d, dword ptr [rbp - 0x5c]
	mov	dword ptr [rax], r8d
	cmp	qword ptr [rbp - 0x20], 0
	je	.label_2226
	mov	rax, qword ptr [rbp - 0x40]
	sub	rax, 1
	mov	rcx, qword ptr [rbp - 0x20]
	mov	qword ptr [rcx], rax
.label_2226:
	mov	rax, qword ptr [rbp - 0x48]
	add	rsp, 0x78
	pop	rbx
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x418d14
	.globl sub_418d14
	.type sub_418d14, @function
sub_418d14:

	nop	word ptr cs:[rax + rax]
.label_2230:
	jmp	.label_2227
.label_2227:
	mov	eax, 0xa
	mov	ecx, eax
	mov	rax, qword ptr [rbp - 8]
	xor	edx, edx
	div	rcx
	add	rdx, 0x30
	mov	sil, dl
	mov	rcx, qword ptr [rbp - 0x18]
	mov	rdx, rcx
	add	rdx, -1
	mov	qword ptr [rbp - 0x18], rdx
	mov	byte ptr [rcx - 1], sil
	mov	eax, 0xa
	mov	ecx, eax
	mov	rax, qword ptr [rbp - 8]
	xor	edx, edx
	div	rcx
	mov	qword ptr [rbp - 8], rax
	cmp	rax, 0
	jne	.label_2227
	jmp	.label_2228
.label_2228:
	mov	rax, qword ptr [rbp - 0x18]
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x418d78
	.globl sub_418d78
	.type sub_418d78, @function
sub_418d78:

	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x418d81

	.globl umaxtostr
	.type umaxtostr, @function
umaxtostr:
	push	rbp
	mov	rbp, rsp
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	rsi, qword ptr [rbp - 0x10]
	add	rsi, 0x14
	mov	qword ptr [rbp - 0x18], rsi
	mov	rsi, qword ptr [rbp - 0x18]
	mov	byte ptr [rsi], 0
	cmp	qword ptr [rbp - 8], 0
	jae	.label_2230
	jmp	.label_2229
.label_2229:
	mov	eax, 0x30
	mov	ecx, eax
	mov	eax, 0xa
	mov	edx, eax
	mov	rax, qword ptr [rbp - 8]
	xor	esi, esi
	mov	qword ptr [rbp - 0x20], rdx
	mov	edx, esi
	mov	rdi, qword ptr [rbp - 0x20]
	div	rdi
	sub	rcx, rdx
	mov	r8b, cl
	mov	rcx, qword ptr [rbp - 0x18]
	mov	rdx, rcx
	add	rdx, -1
	mov	qword ptr [rbp - 0x18], rdx
	mov	byte ptr [rcx - 1], r8b
	mov	eax, 0xa
	mov	ecx, eax
	mov	rax, qword ptr [rbp - 8]
	xor	edx, edx
	div	rcx
	mov	qword ptr [rbp - 8], rax
	cmp	rax, 0
	jne	.label_2229
	mov	rax, qword ptr [rbp - 0x18]
	mov	rcx, rax
	add	rcx, -1
	mov	qword ptr [rbp - 0x18], rcx
	mov	byte ptr [rax - 1], 0x2d
	jmp	.label_2228
	.section	.text
	.align	32
	#Procedure 0x418e20
	.globl rotr32
	.type rotr32, @function
rotr32:

	push	rbp
	mov	rbp, rsp
	mov	eax, 0x20
	mov	dword ptr [rbp - 4], edi
	mov	dword ptr [rbp - 8], esi
	mov	esi, dword ptr [rbp - 4]
	mov	ecx, dword ptr [rbp - 8]
	shr	esi, cl
	mov	edi, dword ptr [rbp - 4]
	sub	eax, dword ptr [rbp - 8]
	mov	ecx, eax
	shl	edi, cl
	or	esi, edi
	mov	eax, esi
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x418e47
	.globl sub_418e47
	.type sub_418e47, @function
sub_418e47:

	nop	word ptr [rax + rax]
.label_2232:
	mov	byte ptr [rbp - 1], 0
.label_2234:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x418e5e
	.globl sub_418e5e
	.type sub_418e5e, @function
sub_418e5e:

	nop	
	.section	.text
	.align	32
	#Procedure 0x418e60

	.globl c_isalpha
	.type c_isalpha, @function
c_isalpha:
	push	rbp
	mov	rbp, rsp
	mov	dword ptr [rbp - 8], edi
	mov	eax, edi
	add	eax, -0x41
	sub	eax, 0x1a
	mov	dword ptr [rbp - 0xc], edi
	mov	dword ptr [rbp - 0x10], eax
	jb	.label_2231
	jmp	.label_2233
.label_2233:
	mov	eax, dword ptr [rbp - 0xc]
	add	eax, -0x61
	sub	eax, 0x19
	mov	dword ptr [rbp - 0x14], eax
	ja	.label_2232
	jmp	.label_2231
.label_2231:
	mov	byte ptr [rbp - 1], 1
	jmp	.label_2234
	.section	.text
	.align	32
	#Procedure 0x418ea0

	.globl raw_comparator
	.type raw_comparator, @function
raw_comparator:
	push	rbp
	mov	rbp, rsp
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	rsi, qword ptr [rbp - 8]
	cmp	rsi, qword ptr [rbp - 0x10]
	sete	al
	and	al, 1
	movzx	eax, al
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x418ebe
	.globl sub_418ebe
	.type sub_418ebe, @function
sub_418ebe:

	nop	
	.section	.text
	.align	32
	#Procedure 0x418ec0

	.globl version_etc_arn
	.type version_etc_arn, @function
version_etc_arn:
	push	rbp
	mov	rbp, rsp
	push	r14
	push	rbx
	sub	rsp, 0x180
	mov	qword ptr [rbp - 0x18], rdi
	mov	qword ptr [rbp - 0x20], rsi
	mov	qword ptr [rbp - 0x28], rdx
	mov	qword ptr [rbp - 0x30], rcx
	mov	qword ptr [rbp - 0x38], r8
	mov	qword ptr [rbp - 0x40], r9
	cmp	qword ptr [rbp - 0x20], 0
	je	.label_2235
	movabs	rsi, OFFSET FLAT:label_2252
	mov	rdi, qword ptr [rbp - 0x18]
	mov	rdx, qword ptr [rbp - 0x20]
	mov	rcx, qword ptr [rbp - 0x28]
	mov	r8, qword ptr [rbp - 0x30]
	mov	al, 0
	call	fprintf
	mov	dword ptr [rbp - 0x44], eax
	jmp	.label_2243
.label_2932:
	movabs	rdi, OFFSET FLAT:label_2245
	mov	rax, qword ptr [rbp - 0x18]
	mov	qword ptr [rbp - 0xb0], rax
	call	gettext
	mov	rdi, qword ptr [rbp - 0x38]
	mov	rdx, qword ptr [rdi]
	mov	rdi, qword ptr [rbp - 0x38]
	mov	rcx, qword ptr [rdi + 8]
	mov	rdi, qword ptr [rbp - 0x38]
	mov	r8, qword ptr [rdi + 0x10]
	mov	rdi, qword ptr [rbp - 0x38]
	mov	r9, qword ptr [rdi + 0x18]
	mov	rdi, qword ptr [rbp - 0x38]
	mov	rdi, qword ptr [rdi + 0x20]
	mov	rsi, qword ptr [rbp - 0xb0]
	mov	qword ptr [rbp - 0xb8], rdi
	mov	rdi, rsi
	mov	rsi, rax
	mov	rax, qword ptr [rbp - 0xb8]
	mov	qword ptr [rsp], rax
	mov	al, 0
	call	fprintf
	mov	dword ptr [rbp - 0xbc], eax
	jmp	.label_2237
.label_2930:
	movabs	rdi, OFFSET FLAT:label_2239
	mov	rax, qword ptr [rbp - 0x18]
	mov	qword ptr [rbp - 0x90], rax
	call	gettext
	mov	rdi, qword ptr [rbp - 0x38]
	mov	rdx, qword ptr [rdi]
	mov	rdi, qword ptr [rbp - 0x38]
	mov	rcx, qword ptr [rdi + 8]
	mov	rdi, qword ptr [rbp - 0x38]
	mov	r8, qword ptr [rdi + 0x10]
	mov	rdi, qword ptr [rbp - 0x90]
	mov	rsi, rax
	mov	al, 0
	call	fprintf
	mov	dword ptr [rbp - 0x94], eax
	jmp	.label_2237
.label_2928:
	movabs	rdi, OFFSET FLAT:label_2244
	mov	rax, qword ptr [rbp - 0x18]
	mov	qword ptr [rbp - 0x70], rax
	call	gettext
	mov	rdi, qword ptr [rbp - 0x38]
	mov	rdx, qword ptr [rdi]
	mov	rdi, qword ptr [rbp - 0x70]
	mov	rsi, rax
	mov	al, 0
	call	fprintf
	mov	dword ptr [rbp - 0x74], eax
	jmp	.label_2237
.label_2936:
	movabs	rdi, OFFSET FLAT:label_2240
	mov	rax, qword ptr [rbp - 0x18]
	mov	qword ptr [rbp - 0x128], rax
	call	gettext
	mov	rdi, qword ptr [rbp - 0x38]
	mov	rdx, qword ptr [rdi]
	mov	rdi, qword ptr [rbp - 0x38]
	mov	rcx, qword ptr [rdi + 8]
	mov	rdi, qword ptr [rbp - 0x38]
	mov	r8, qword ptr [rdi + 0x10]
	mov	rdi, qword ptr [rbp - 0x38]
	mov	r9, qword ptr [rdi + 0x18]
	mov	rdi, qword ptr [rbp - 0x38]
	mov	rdi, qword ptr [rdi + 0x20]
	mov	rsi, qword ptr [rbp - 0x38]
	mov	rsi, qword ptr [rsi + 0x28]
	mov	r10, qword ptr [rbp - 0x38]
	mov	r10, qword ptr [r10 + 0x30]
	mov	r11, qword ptr [rbp - 0x38]
	mov	r11, qword ptr [r11 + 0x38]
	mov	rbx, qword ptr [rbp - 0x38]
	mov	rbx, qword ptr [rbx + 0x40]
	mov	r14, qword ptr [rbp - 0x128]
	mov	qword ptr [rbp - 0x130], rdi
	mov	rdi, r14
	mov	qword ptr [rbp - 0x138], rsi
	mov	rsi, rax
	mov	rax, qword ptr [rbp - 0x130]
	mov	qword ptr [rsp], rax
	mov	rax, qword ptr [rbp - 0x138]
	mov	qword ptr [rsp + 8], rax
	mov	qword ptr [rsp + 0x10], r10
	mov	qword ptr [rsp + 0x18], r11
	mov	qword ptr [rsp + 0x20], rbx
	mov	al, 0
	call	fprintf
	mov	dword ptr [rbp - 0x13c], eax
	jmp	.label_2237
.label_2933:
	movabs	rdi, OFFSET FLAT:label_2238
	mov	rax, qword ptr [rbp - 0x18]
	mov	qword ptr [rbp - 0xc8], rax
	call	gettext
	mov	rdi, qword ptr [rbp - 0x38]
	mov	rdx, qword ptr [rdi]
	mov	rdi, qword ptr [rbp - 0x38]
	mov	rcx, qword ptr [rdi + 8]
	mov	rdi, qword ptr [rbp - 0x38]
	mov	r8, qword ptr [rdi + 0x10]
	mov	rdi, qword ptr [rbp - 0x38]
	mov	r9, qword ptr [rdi + 0x18]
	mov	rdi, qword ptr [rbp - 0x38]
	mov	rdi, qword ptr [rdi + 0x20]
	mov	rsi, qword ptr [rbp - 0x38]
	mov	rsi, qword ptr [rsi + 0x28]
	mov	r10, qword ptr [rbp - 0xc8]
	mov	qword ptr [rbp - 0xd0], rdi
	mov	rdi, r10
	mov	qword ptr [rbp - 0xd8], rsi
	mov	rsi, rax
	mov	rax, qword ptr [rbp - 0xd0]
	mov	qword ptr [rsp], rax
	mov	rax, qword ptr [rbp - 0xd8]
	mov	qword ptr [rsp + 8], rax
	mov	al, 0
	call	fprintf
	mov	dword ptr [rbp - 0xdc], eax
	jmp	.label_2237
.label_2235:
	movabs	rsi, OFFSET FLAT:label_2241
	mov	rdi, qword ptr [rbp - 0x18]
	mov	rdx, qword ptr [rbp - 0x28]
	mov	rcx, qword ptr [rbp - 0x30]
	mov	al, 0
	call	fprintf
	mov	dword ptr [rbp - 0x48], eax
.label_2243:
	mov	rdi, qword ptr [rbp - 0x18]
	mov	eax, OFFSET FLAT:label_2251
	mov	ecx, eax
	mov	qword ptr [rbp - 0x50], rdi
	mov	rdi, rcx
	call	gettext
	mov	edx, OFFSET FLAT:version_etc_copyright
	mov	esi, edx
	xor	edx, edx
	mov	r8b, dl
	mov	ecx, 0x7e3
	mov	rdi, qword ptr [rbp - 0x50]
	mov	rdx, rax
	mov	al, r8b
	call	fprintf
	mov	ecx, OFFSET FLAT:label_2247
	mov	edi, ecx
	mov	dword ptr [rbp - 0x54], eax
	call	gettext
	mov	rsi, qword ptr [rbp - 0x18]
	mov	rdi, rax
	call	fputs_unlocked
	mov	rdx, qword ptr [rbp - 0x40]
	mov	rsi, rdx
	sub	rsi, 9
	mov	dword ptr [rbp - 0x58], eax
	mov	qword ptr [rbp - 0x60], rdx
	mov	qword ptr [rbp - 0x68], rsi
	ja	.label_2236
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx,  qword ptr [word ptr [+ (rax * 8) + label_2246]]
	jmp	rcx
.label_2236:
	movabs	rdi, OFFSET FLAT:label_2250
	mov	rax, qword ptr [rbp - 0x18]
	mov	qword ptr [rbp - 0x148], rax
	call	gettext
	mov	rdi, qword ptr [rbp - 0x38]
	mov	rdx, qword ptr [rdi]
	mov	rdi, qword ptr [rbp - 0x38]
	mov	rcx, qword ptr [rdi + 8]
	mov	rdi, qword ptr [rbp - 0x38]
	mov	r8, qword ptr [rdi + 0x10]
	mov	rdi, qword ptr [rbp - 0x38]
	mov	r9, qword ptr [rdi + 0x18]
	mov	rdi, qword ptr [rbp - 0x38]
	mov	rdi, qword ptr [rdi + 0x20]
	mov	rsi, qword ptr [rbp - 0x38]
	mov	rsi, qword ptr [rsi + 0x28]
	mov	r10, qword ptr [rbp - 0x38]
	mov	r10, qword ptr [r10 + 0x30]
	mov	r11, qword ptr [rbp - 0x38]
	mov	r11, qword ptr [r11 + 0x38]
	mov	rbx, qword ptr [rbp - 0x38]
	mov	rbx, qword ptr [rbx + 0x40]
	mov	r14, qword ptr [rbp - 0x148]
	mov	qword ptr [rbp - 0x150], rdi
	mov	rdi, r14
	mov	qword ptr [rbp - 0x158], rsi
	mov	rsi, rax
	mov	rax, qword ptr [rbp - 0x150]
	mov	qword ptr [rsp], rax
	mov	rax, qword ptr [rbp - 0x158]
	mov	qword ptr [rsp + 8], rax
	mov	qword ptr [rsp + 0x10], r10
	mov	qword ptr [rsp + 0x18], r11
	mov	qword ptr [rsp + 0x20], rbx
	mov	al, 0
	call	fprintf
	mov	dword ptr [rbp - 0x15c], eax
.label_2237:
	add	rsp, 0x180
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x4192a5
	.globl sub_4192a5
	.type sub_4192a5, @function
sub_4192a5:

	nop	
.label_2931:
	movabs	rdi, OFFSET FLAT:label_2242
	mov	rax, qword ptr [rbp - 0x18]
	mov	qword ptr [rbp - 0xa0], rax
	call	gettext
	mov	rdi, qword ptr [rbp - 0x38]
	mov	rdx, qword ptr [rdi]
	mov	rdi, qword ptr [rbp - 0x38]
	mov	rcx, qword ptr [rdi + 8]
	mov	rdi, qword ptr [rbp - 0x38]
	mov	r8, qword ptr [rdi + 0x10]
	mov	rdi, qword ptr [rbp - 0x38]
	mov	r9, qword ptr [rdi + 0x18]
	mov	rdi, qword ptr [rbp - 0xa0]
	mov	rsi, rax
	mov	al, 0
	call	fprintf
	mov	dword ptr [rbp - 0xa4], eax
	jmp	.label_2237
.label_2935:
	movabs	rdi, OFFSET FLAT:label_2253
	mov	rax, qword ptr [rbp - 0x18]
	mov	qword ptr [rbp - 0x108], rax
	call	gettext
	mov	rdi, qword ptr [rbp - 0x38]
	mov	rdx, qword ptr [rdi]
	mov	rdi, qword ptr [rbp - 0x38]
	mov	rcx, qword ptr [rdi + 8]
	mov	rdi, qword ptr [rbp - 0x38]
	mov	r8, qword ptr [rdi + 0x10]
	mov	rdi, qword ptr [rbp - 0x38]
	mov	r9, qword ptr [rdi + 0x18]
	mov	rdi, qword ptr [rbp - 0x38]
	mov	rdi, qword ptr [rdi + 0x20]
	mov	rsi, qword ptr [rbp - 0x38]
	mov	rsi, qword ptr [rsi + 0x28]
	mov	r10, qword ptr [rbp - 0x38]
	mov	r10, qword ptr [r10 + 0x30]
	mov	r11, qword ptr [rbp - 0x38]
	mov	r11, qword ptr [r11 + 0x38]
	mov	rbx, qword ptr [rbp - 0x108]
	mov	qword ptr [rbp - 0x110], rdi
	mov	rdi, rbx
	mov	qword ptr [rbp - 0x118], rsi
	mov	rsi, rax
	mov	rax, qword ptr [rbp - 0x110]
	mov	qword ptr [rsp], rax
	mov	rax, qword ptr [rbp - 0x118]
	mov	qword ptr [rsp + 8], rax
	mov	qword ptr [rsp + 0x10], r10
	mov	qword ptr [rsp + 0x18], r11
	mov	al, 0
	call	fprintf
	mov	dword ptr [rbp - 0x11c], eax
	jmp	.label_2237
.label_2927:
	jmp	.label_2237
.label_2929:
	movabs	rdi, OFFSET FLAT:label_2249
	mov	rax, qword ptr [rbp - 0x18]
	mov	qword ptr [rbp - 0x80], rax
	call	gettext
	mov	rdi, qword ptr [rbp - 0x38]
	mov	rdx, qword ptr [rdi]
	mov	rdi, qword ptr [rbp - 0x38]
	mov	rcx, qword ptr [rdi + 8]
	mov	rdi, qword ptr [rbp - 0x80]
	mov	rsi, rax
	mov	al, 0
	call	fprintf
	mov	dword ptr [rbp - 0x84], eax
	jmp	.label_2237
.label_2934:
	movabs	rdi, OFFSET FLAT:label_2248
	mov	rax, qword ptr [rbp - 0x18]
	mov	qword ptr [rbp - 0xe8], rax
	call	gettext
	mov	rdi, qword ptr [rbp - 0x38]
	mov	rdx, qword ptr [rdi]
	mov	rdi, qword ptr [rbp - 0x38]
	mov	rcx, qword ptr [rdi + 8]
	mov	rdi, qword ptr [rbp - 0x38]
	mov	r8, qword ptr [rdi + 0x10]
	mov	rdi, qword ptr [rbp - 0x38]
	mov	r9, qword ptr [rdi + 0x18]
	mov	rdi, qword ptr [rbp - 0x38]
	mov	rdi, qword ptr [rdi + 0x20]
	mov	rsi, qword ptr [rbp - 0x38]
	mov	rsi, qword ptr [rsi + 0x28]
	mov	r10, qword ptr [rbp - 0x38]
	mov	r10, qword ptr [r10 + 0x30]
	mov	r11, qword ptr [rbp - 0xe8]
	mov	qword ptr [rbp - 0xf0], rdi
	mov	rdi, r11
	mov	qword ptr [rbp - 0xf8], rsi
	mov	rsi, rax
	mov	rax, qword ptr [rbp - 0xf0]
	mov	qword ptr [rsp], rax
	mov	rax, qword ptr [rbp - 0xf8]
	mov	qword ptr [rsp + 8], rax
	mov	qword ptr [rsp + 0x10], r10
	mov	al, 0
	call	fprintf
	mov	dword ptr [rbp - 0xfc], eax
	jmp	.label_2237
	.section	.text
	.align	32
	#Procedure 0x419480
	.globl matchpathcon_init_prefix
	.type matchpathcon_init_prefix, @function
matchpathcon_init_prefix:

	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	call	__errno_location
	mov	ecx, 0xffffffff
	mov	dword ptr [rax], 0x5f
	mov	eax, ecx
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x4194a8
	.globl sub_4194a8
	.type sub_4194a8, @function
sub_4194a8:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4194b0

	.globl _obstack_begin
	.type _obstack_begin, @function
_obstack_begin:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x30
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	qword ptr [rbp - 0x18], rdx
	mov	qword ptr [rbp - 0x20], rcx
	mov	qword ptr [rbp - 0x28], r8
	mov	rcx, qword ptr [rbp - 0x20]
	mov	rdx, qword ptr [rbp - 8]
	mov	qword ptr [rdx + 0x38], rcx
	mov	rcx, qword ptr [rbp - 0x28]
	mov	rdx, qword ptr [rbp - 8]
	mov	qword ptr [rdx + 0x40], rcx
	mov	rcx, qword ptr [rbp - 8]
	mov	al, byte ptr [rcx + 0x50]
	and	al, 0xfe
	mov	byte ptr [rcx + 0x50], al
	mov	rdi, qword ptr [rbp - 8]
	mov	rsi, qword ptr [rbp - 0x10]
	mov	rdx, qword ptr [rbp - 0x18]
	call	_obstack_begin_worker
	add	rsp, 0x30
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x419507
	.globl sub_419507
	.type sub_419507, @function
sub_419507:

	nop	word ptr [rax + rax]
.label_2255:
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 8]
	mov	rax, qword ptr [rcx + rax*8]
	mov	qword ptr [rbp - 0x70], rax
.label_2258:
	jmp	.label_2254
.label_2257:
	mov	rax, qword ptr [rbp - 0x70]
	mov	rcx, qword ptr [rbp - 0x48]
	mov	rdx, rcx
	add	rdx, 1
	mov	qword ptr [rbp - 0x48], rdx
	mov	rdx, qword ptr [rbp - 8]
	mov	qword ptr [rdx + rcx*8], rax
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x68]
	jne	.label_2255
	mov	rax, qword ptr [rbp - 8]
	mov	rcx, qword ptr [rbp - 0x48]
	shl	rcx, 3
	add	rax, rcx
	mov	rcx, qword ptr [rbp - 0x18]
	mov	rdx, qword ptr [rbp - 0x50]
	shl	rdx, 3
	add	rcx, rdx
	mov	rdx, qword ptr [rbp - 0x58]
	sub	rdx, qword ptr [rbp - 0x50]
	shl	rdx, 3
	mov	rdi, rax
	mov	rsi, rcx
	call	memcpy
	jmp	.label_2256
.label_2262:
	mov	rax, qword ptr [rbp - 0x10]
	shr	rax, 1
	mov	qword ptr [rbp - 0x38], rax
	mov	rax, qword ptr [rbp - 0x10]
	sub	rax, qword ptr [rbp - 0x38]
	mov	qword ptr [rbp - 0x40], rax
	mov	qword ptr [rbp - 0x50], 0
	mov	rax, qword ptr [rbp - 0x38]
	mov	qword ptr [rbp - 0x58], rax
	mov	rax, qword ptr [rbp - 0x38]
	mov	qword ptr [rbp - 0x60], rax
	mov	rax, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 0x68], rax
	mov	rax, qword ptr [rbp - 8]
	mov	rcx, qword ptr [rbp - 0x38]
	shl	rcx, 3
	add	rax, rcx
	mov	rsi, qword ptr [rbp - 0x40]
	mov	rdx, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rbp - 0x20]
	mov	rdi, rax
	call	mpsort_with_tmp
	cmp	qword ptr [rbp - 0x38], 2
	jae	.label_2265
	mov	rax, qword ptr [rbp - 8]
	mov	rax, qword ptr [rax]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	qword ptr [rcx], rax
	jmp	.label_2264
.label_2256:
	jmp	.label_2259
.label_2259:
	add	rsp, 0x80
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x41961b
	.globl sub_41961b
	.type sub_41961b, @function
sub_41961b:

	nop	
	.section	.text
	.align	32
	#Procedure 0x41961d

	.globl mpsort_with_tmp
	.type mpsort_with_tmp, @function
mpsort_with_tmp:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x80
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	qword ptr [rbp - 0x18], rdx
	mov	qword ptr [rbp - 0x20], rcx
	cmp	qword ptr [rbp - 0x10], 2
	ja	.label_2262
	cmp	qword ptr [rbp - 0x10], 2
	jne	.label_2261
	mov	rax, qword ptr [rbp - 8]
	mov	rax, qword ptr [rax]
	mov	qword ptr [rbp - 0x28], rax
	mov	rax, qword ptr [rbp - 8]
	mov	rax, qword ptr [rax + 8]
	mov	qword ptr [rbp - 0x30], rax
	mov	rax, qword ptr [rbp - 0x20]
	mov	rdi, qword ptr [rbp - 0x28]
	mov	rsi, qword ptr [rbp - 0x30]
	call	rax
	cmp	eax, 0
	jle	.label_2263
	mov	rax, qword ptr [rbp - 0x30]
	mov	rcx, qword ptr [rbp - 8]
	mov	qword ptr [rcx], rax
	mov	rax, qword ptr [rbp - 0x28]
	mov	rcx, qword ptr [rbp - 8]
	mov	qword ptr [rcx + 8], rax
.label_2263:
	jmp	.label_2261
.label_2261:
	jmp	.label_2259
.label_2265:
	mov	rdi, qword ptr [rbp - 8]
	mov	rsi, qword ptr [rbp - 0x38]
	mov	rdx, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rbp - 0x20]
	call	mpsort_into_tmp
.label_2264:
	mov	rax, qword ptr [rbp - 0x50]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	rax, qword ptr [rcx + rax*8]
	mov	qword ptr [rbp - 0x78], rax
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 8]
	mov	rax, qword ptr [rcx + rax*8]
	mov	qword ptr [rbp - 0x70], rax
	mov	qword ptr [rbp - 0x48], 0
.label_2254:
	mov	rax, qword ptr [rbp - 0x20]
	mov	rdi, qword ptr [rbp - 0x78]
	mov	rsi, qword ptr [rbp - 0x70]
	call	rax
	cmp	eax, 0
	jg	.label_2257
	mov	rax, qword ptr [rbp - 0x78]
	mov	rcx, qword ptr [rbp - 0x48]
	mov	rdx, rcx
	add	rdx, 1
	mov	qword ptr [rbp - 0x48], rdx
	mov	rdx, qword ptr [rbp - 8]
	mov	qword ptr [rdx + rcx*8], rax
	mov	rax, qword ptr [rbp - 0x50]
	add	rax, 1
	mov	qword ptr [rbp - 0x50], rax
	mov	rax, qword ptr [rbp - 0x50]
	cmp	rax, qword ptr [rbp - 0x58]
	jne	.label_2260
	jmp	.label_2256
.label_2260:
	mov	rax, qword ptr [rbp - 0x50]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	rax, qword ptr [rcx + rax*8]
	mov	qword ptr [rbp - 0x78], rax
	jmp	.label_2258
	.section	.text
	.align	32
	#Procedure 0x419740
	.globl xzalloc
	.type xzalloc, @function
xzalloc:

	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	mov	qword ptr [rbp - 8], rdi
	mov	rdi, qword ptr [rbp - 8]
	call	xmalloc
	xor	esi, esi
	mov	rdx, qword ptr [rbp - 8]
	mov	rdi, rax
	mov	qword ptr [rbp - 0x10], rax
	call	memset
	mov	rax, qword ptr [rbp - 0x10]
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x419771
	.globl sub_419771
	.type sub_419771, @function
sub_419771:

	nop	word ptr cs:[rax + rax]
.label_2267:
	test	byte ptr [rbp - 0x19], 1
	je	.label_2266
	mov	rax, qword ptr [rbp - 0x18]
	mov	qword ptr [rbp - 0x10], rax
	mov	byte ptr [rbp - 0x19], 0
.label_2266:
	jmp	.label_2270
.label_2270:
	jmp	.label_2271
.label_2271:
	mov	rax, qword ptr [rbp - 0x18]
	add	rax, 1
	mov	qword ptr [rbp - 0x18], rax
	jmp	.label_2268
.label_2269:
	mov	rax, qword ptr [rbp - 0x10]
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x4197b7
	.globl sub_4197b7
	.type sub_4197b7, @function
sub_4197b7:

	nop	word ptr [rax + rax]
.label_2273:
	mov	rax, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 0x18], rax
.label_2268:
	mov	rax, qword ptr [rbp - 0x18]
	cmp	byte ptr [rax], 0
	je	.label_2269
	mov	rax, qword ptr [rbp - 0x18]
	movsx	ecx, byte ptr [rax]
	cmp	ecx, 0x2f
	jne	.label_2267
	mov	byte ptr [rbp - 0x19], 1
	jmp	.label_2270
	.section	.text
	.align	32
	#Procedure 0x4197eb

	.globl last_component
	.type last_component, @function
last_component:
	push	rbp
	mov	rbp, rsp
	mov	qword ptr [rbp - 8], rdi
	mov	rdi, qword ptr [rbp - 8]
	mov	qword ptr [rbp - 0x10], rdi
	mov	byte ptr [rbp - 0x19], 0
.label_2272:
	mov	rax, qword ptr [rbp - 0x10]
	movsx	ecx, byte ptr [rax]
	cmp	ecx, 0x2f
	jne	.label_2273
	mov	rax, qword ptr [rbp - 0x10]
	add	rax, 1
	mov	qword ptr [rbp - 0x10], rax
	jmp	.label_2272
.label_2274:
	mov	rax, qword ptr [rbp - 8]
	mov	rax, qword ptr [rax]
	mov	rcx, qword ptr [rbp - 0x18]
	shl	rcx, 4
	add	rax, rcx
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x419838
	.globl sub_419838
	.type sub_419838, @function
sub_419838:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x419844

	.globl safe_hasher
	.type safe_hasher, @function
safe_hasher:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	rsi, qword ptr [rbp - 8]
	mov	rsi, qword ptr [rsi + 0x30]
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rbp - 8]
	mov	rax, qword ptr [rax + 0x10]
	mov	qword ptr [rbp - 0x20], rsi
	mov	rsi, rax
	mov	rax, qword ptr [rbp - 0x20]
	call	rax
	mov	qword ptr [rbp - 0x18], rax
	mov	rax, qword ptr [rbp - 0x18]
	mov	rsi, qword ptr [rbp - 8]
	cmp	rax, qword ptr [rsi + 0x10]
	jb	.label_2274
	call	abort
	.section	.text
	.align	32
	#Procedure 0x419890

	.globl setenv_TZ
	.type setenv_TZ, @function
setenv_TZ:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	mov	qword ptr [rbp - 8], rdi
	cmp	qword ptr [rbp - 8], 0
	je	.label_2275
	movabs	rdi, OFFSET FLAT:label_1859
	mov	edx, 1
	mov	rsi, qword ptr [rbp - 8]
	call	setenv
	mov	dword ptr [rbp - 0xc], eax
	jmp	.label_2276
.label_2275:
	movabs	rdi, OFFSET FLAT:label_1859
	call	unsetenv
	mov	dword ptr [rbp - 0xc], eax
.label_2276:
	mov	eax, dword ptr [rbp - 0xc]
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x4198e2
	.globl sub_4198e2
	.type sub_4198e2, @function
sub_4198e2:

	nop	word ptr cs:[rax + rax]
.label_2285:
	mov	rax, qword ptr [rbp - 0x20]
	mov	qword ptr [word ptr [cwd_n_used]],  rax
	add	rsp, 0x40
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x419902
	.globl sub_419902
	.type sub_419902, @function
sub_419902:

	nop	dword ptr [rax + rax]
.label_2284:
	xor	eax, eax
	mov	edx, eax
	mov	rdi, qword ptr [rbp - 8]
	mov	rcx, qword ptr [rbp - 0x30]
	mov	rsi, qword ptr [rcx]
	call	file_name_concat
	mov	qword ptr [rbp - 0x38], rax
	mov	rdi, qword ptr [rbp - 0x38]
	mov	rax, qword ptr [rbp - 0x30]
	mov	rsi, qword ptr [rax + 8]
	mov	r8b, byte ptr [rbp - 9]
	and	r8b, 1
	movzx	edx, r8b
	call	queue_directory
	mov	rdi, qword ptr [rbp - 0x38]
	call	free
.label_2286:
	mov	rax, qword ptr [rbp - 0x30]
	cmp	dword ptr [rax + 0xa8], 9
	jne	.label_2280
	mov	rdi, qword ptr [rbp - 0x30]
	call	free_ent
.label_2280:
	jmp	.label_2277
.label_2277:
	jmp	.label_2283
	.section	.text
	.align	32
	#Procedure 0x41996c

	.globl extract_dirs_from_files
	.type extract_dirs_from_files, @function
extract_dirs_from_files:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x40
	mov	al, sil
	mov	qword ptr [rbp - 8], rdi
	and	al, 1
	mov	byte ptr [rbp - 9], al
	cmp	qword ptr [rbp - 8], 0
	setne	al
	and	al, 1
	mov	byte ptr [rbp - 0x21], al
	cmp	qword ptr [rbp - 8], 0
	je	.label_2288
	cmp	qword ptr [word ptr [active_dir_set]],  0
	je	.label_2288
	xor	eax, eax
	mov	edi, eax
	xor	edx, edx
	mov	rsi, qword ptr [rbp - 8]
	call	queue_directory
.label_2288:
	mov	rax,  qword ptr [word ptr [cwd_n_used]]
	mov	qword ptr [rbp - 0x18], rax
.label_2283:
	mov	rax, qword ptr [rbp - 0x18]
	mov	rcx, rax
	add	rcx, -1
	mov	qword ptr [rbp - 0x18], rcx
	cmp	rax, 0
	je	.label_2278
	mov	rax, qword ptr [rbp - 0x18]
	mov	rcx,  qword ptr [word ptr [sorted_file]]
	mov	rax, qword ptr [rcx + rax*8]
	mov	qword ptr [rbp - 0x30], rax
	mov	rdi, qword ptr [rbp - 0x30]
	call	is_directory
	test	al, 1
	jne	.label_2287
	jmp	.label_2277
.label_2287:
	test	byte ptr [rbp - 0x21], 1
	je	.label_2279
	mov	rax, qword ptr [rbp - 0x30]
	mov	rdi, qword ptr [rax]
	call	basename_is_dot_or_dotdot
	test	al, 1
	jne	.label_2277
.label_2279:
	cmp	qword ptr [rbp - 8], 0
	je	.label_2281
	mov	rax, qword ptr [rbp - 0x30]
	mov	rax, qword ptr [rax]
	movsx	ecx, byte ptr [rax]
	cmp	ecx, 0x2f
	jne	.label_2284
.label_2281:
	mov	rax, qword ptr [rbp - 0x30]
	mov	rdi, qword ptr [rax]
	mov	rax, qword ptr [rbp - 0x30]
	mov	rsi, qword ptr [rax + 8]
	mov	cl, byte ptr [rbp - 9]
	and	cl, 1
	movzx	edx, cl
	call	queue_directory
	jmp	.label_2286
.label_2278:
	mov	qword ptr [rbp - 0x18], 0
	mov	qword ptr [rbp - 0x20], 0
.label_2282:
	mov	rax, qword ptr [rbp - 0x18]
	cmp	rax,  qword ptr [word ptr [cwd_n_used]]
	jae	.label_2285
	mov	rax, qword ptr [rbp - 0x18]
	mov	rcx,  qword ptr [word ptr [sorted_file]]
	mov	rax, qword ptr [rcx + rax*8]
	mov	qword ptr [rbp - 0x40], rax
	mov	rax, qword ptr [rbp - 0x40]
	mov	rcx, qword ptr [rbp - 0x20]
	mov	rdx,  qword ptr [word ptr [sorted_file]]
	mov	qword ptr [rdx + rcx*8], rax
	mov	rax, qword ptr [rbp - 0x40]
	cmp	dword ptr [rax + 0xa8], 9
	setne	sil
	and	sil, 1
	movzx	edi, sil
	movsxd	rax, edi
	add	rax, qword ptr [rbp - 0x20]
	mov	qword ptr [rbp - 0x20], rax
	mov	rax, qword ptr [rbp - 0x18]
	add	rax, 1
	mov	qword ptr [rbp - 0x18], rax
	jmp	.label_2282
	.section	.text
	.align	32
	#Procedure 0x419ae0

	.globl clear_ungetc_buffer_preserving_position
	.type clear_ungetc_buffer_preserving_position, @function
clear_ungetc_buffer_preserving_position:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	mov	qword ptr [rbp - 8], rdi
	mov	rdi, qword ptr [rbp - 8]
	mov	eax, dword ptr [rdi]
	and	eax, 0x100
	cmp	eax, 0
	je	.label_2289
	xor	eax, eax
	mov	esi, eax
	mov	edx, 1
	mov	rdi, qword ptr [rbp - 8]
	call	rpl_fseeko
	mov	dword ptr [rbp - 0xc], eax
.label_2289:
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x419b1b
	.globl sub_419b1b
	.type sub_419b1b, @function
sub_419b1b:

	nop	dword ptr [rax + rax]
.label_2294:
	mov	rax, qword ptr [rbp - 8]
	mov	ecx, dword ptr [rax + 0x18]
	mov	rax, qword ptr [rbp - 8]
	sub	ecx, dword ptr [rax + 0x18]
	cmp	ecx, 0
	je	.label_2290
	mov	rax, qword ptr [rbp - 0x10]
	mov	byte ptr [rax], 0x53
	jmp	.label_2292
.label_2295:
	mov	rax, qword ptr [rbp - 8]
	mov	ecx, dword ptr [rax + 0x18]
	mov	rax, qword ptr [rbp - 8]
	sub	ecx, dword ptr [rax + 0x18]
	cmp	ecx, 0
	je	.label_2294
	mov	rax, qword ptr [rbp - 0x10]
	mov	byte ptr [rax], 0x51
	jmp	.label_2293
.label_2290:
	jmp	.label_2292
.label_2292:
	jmp	.label_2293
.label_2293:
	jmp	.label_2291
.label_2291:
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x419b7b
	.globl sub_419b7b
	.type sub_419b7b, @function
sub_419b7b:

	nop	
	.section	.text
	.align	32
	#Procedure 0x419b7d

	.globl filemodestring
	.type filemodestring, @function
filemodestring:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	rsi, qword ptr [rbp - 8]
	mov	edi, dword ptr [rsi + 0x18]
	mov	rsi, qword ptr [rbp - 0x10]
	call	strmode
	mov	rsi, qword ptr [rbp - 8]
	mov	edi, dword ptr [rsi + 0x18]
	mov	rsi, qword ptr [rbp - 8]
	sub	edi, dword ptr [rsi + 0x18]
	cmp	edi, 0
	je	.label_2295
	mov	rax, qword ptr [rbp - 0x10]
	mov	byte ptr [rax], 0x46
	jmp	.label_2291
	.section	.text
	.align	32
	#Procedure 0x419bc0

	.globl xrealloc
	.type xrealloc, @function
xrealloc:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 0x18], rsi
	cmp	qword ptr [rbp - 0x18], 0
	jne	.label_2296
	cmp	qword ptr [rbp - 0x10], 0
	je	.label_2296
	mov	rdi, qword ptr [rbp - 0x10]
	call	free
	mov	qword ptr [rbp - 8], 0
	jmp	.label_2298
.label_2297:
	mov	rax, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 8], rax
.label_2298:
	mov	rax, qword ptr [rbp - 8]
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x419c0e
	.globl sub_419c0e
	.type sub_419c0e, @function
sub_419c0e:

	nop	word ptr [rax + rax]
.label_2296:
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rbp - 0x18]
	call	realloc
	mov	qword ptr [rbp - 0x10], rax
	cmp	qword ptr [rbp - 0x10], 0
	jne	.label_2297
	cmp	qword ptr [rbp - 0x18], 0
	je	.label_2297
	call	xalloc_die
	.section	.text
	.align	32
	#Procedure 0x419c40

	.globl is_linked_directory
	.type is_linked_directory, @function
is_linked_directory:
	push	rbp
	mov	rbp, rsp
	mov	al, 1
	mov	qword ptr [rbp - 8], rdi
	mov	rdi, qword ptr [rbp - 8]
	cmp	dword ptr [rdi + 0xa8], 3
	mov	byte ptr [rbp - 9], al
	je	.label_2299
	mov	al, 1
	mov	rcx, qword ptr [rbp - 8]
	cmp	dword ptr [rcx + 0xa8], 9
	mov	byte ptr [rbp - 9], al
	je	.label_2299
	mov	rax, qword ptr [rbp - 8]
	mov	ecx, dword ptr [rax + 0xac]
	and	ecx, 0xf000
	cmp	ecx, 0x4000
	sete	dl
	mov	byte ptr [rbp - 9], dl
.label_2299:
	mov	al, byte ptr [rbp - 9]
	and	al, 1
	movzx	eax, al
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x419c9a
	.globl sub_419c9a
	.type sub_419c9a, @function
sub_419c9a:

	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x419ca0

	.globl _obstack_allocated_p
	.type _obstack_allocated_p, @function
_obstack_allocated_p:
	push	rbp
	mov	rbp, rsp
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	rsi, qword ptr [rbp - 8]
	mov	rsi, qword ptr [rsi + 8]
	mov	qword ptr [rbp - 0x18], rsi
.label_2302:
	xor	eax, eax
	mov	cl, al
	cmp	qword ptr [rbp - 0x18], 0
	mov	byte ptr [rbp - 0x21], cl
	je	.label_2301
	mov	al, 1
	mov	rcx, qword ptr [rbp - 0x18]
	cmp	rcx, qword ptr [rbp - 0x10]
	mov	byte ptr [rbp - 0x22], al
	jae	.label_2303
	mov	rax, qword ptr [rbp - 0x18]
	mov	rax, qword ptr [rax]
	cmp	rax, qword ptr [rbp - 0x10]
	setb	cl
	mov	byte ptr [rbp - 0x22], cl
.label_2303:
	mov	al, byte ptr [rbp - 0x22]
	mov	byte ptr [rbp - 0x21], al
.label_2301:
	mov	al, byte ptr [rbp - 0x21]
	test	al, 1
	jne	.label_2300
	jmp	.label_2304
.label_2300:
	mov	rax, qword ptr [rbp - 0x18]
	mov	rax, qword ptr [rax + 8]
	mov	qword ptr [rbp - 0x20], rax
	mov	rax, qword ptr [rbp - 0x20]
	mov	qword ptr [rbp - 0x18], rax
	jmp	.label_2302
.label_2304:
	cmp	qword ptr [rbp - 0x18], 0
	setne	al
	and	al, 1
	movzx	eax, al
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x419d2c
	.globl sub_419d2c
	.type sub_419d2c, @function
sub_419d2c:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x419d30

	.globl strcmp_extension
	.type strcmp_extension, @function
strcmp_extension:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	movabs	rdx, OFFSET FLAT:strcmp
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	rsi, qword ptr [rbp - 8]
	mov	rdi, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 0x18], rdi
	mov	rdi, rsi
	mov	rsi, qword ptr [rbp - 0x18]
	call	cmp_extension
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x419d68
	.globl sub_419d68
	.type sub_419d68, @function
sub_419d68:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x419d70

	.globl file_escape_init
	.type file_escape_init, @function
file_escape_init:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	mov	dword ptr [rbp - 4], 0
.label_2306:
	cmp	dword ptr [rbp - 4], 0x100
	jge	.label_2307
	mov	edi, dword ptr [rbp - 4]
	call	c_isalnum
	mov	cl, 1
	test	al, 1
	mov	byte ptr [rbp - 5], cl
	jne	.label_2305
	mov	al, 1
	cmp	dword ptr [rbp - 4], 0x7e
	mov	byte ptr [rbp - 5], al
	je	.label_2305
	mov	al, 1
	cmp	dword ptr [rbp - 4], 0x2d
	mov	byte ptr [rbp - 5], al
	je	.label_2305
	mov	al, 1
	cmp	dword ptr [rbp - 4], 0x2e
	mov	byte ptr [rbp - 5], al
	je	.label_2305
	cmp	dword ptr [rbp - 4], 0x5f
	sete	al
	mov	byte ptr [rbp - 5], al
.label_2305:
	mov	al, byte ptr [rbp - 5]
	and	al, 1
	movzx	ecx, al
	movsxd	rdx, dword ptr [rbp - 4]
	movsx	esi,  byte ptr [byte ptr [+ (rdx * 1) + RFC3986]]
	or	esi, ecx
	mov	al, sil
	mov	byte ptr [byte ptr [+ (rdx * 1) + RFC3986]],  al
	mov	eax, dword ptr [rbp - 4]
	add	eax, 1
	mov	dword ptr [rbp - 4], eax
	jmp	.label_2306
.label_2307:
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x419e0c
	.globl sub_419e0c
	.type sub_419e0c, @function
sub_419e0c:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x419e10

	.globl long_time_expected_width
	.type long_time_expected_width, @function
long_time_expected_width:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x440
	cmp	dword ptr [dword ptr [long_time_expected_width.width]],  0
	jge	.label_2308
	lea	rsi, [rbp - 8]
	lea	rdx, [rbp - 0x40]
	mov	qword ptr [rbp - 8], 0
	mov	rdi,  qword ptr [word ptr [localtz]]
	call	localtime_rz
	cmp	rax, 0
	je	.label_2309
	mov	eax, 0x3e9
	mov	esi, eax
	xor	eax, eax
	lea	rcx, [rbp - 0x40]
	lea	rdi, [rbp - 0x430]
	mov	r8,  qword ptr [word ptr [localtz]]
	mov	edx, eax
	mov	r9d, eax
	call	align_nstrftime
	mov	qword ptr [rbp - 0x438], rax
	cmp	qword ptr [rbp - 0x438], 0
	je	.label_2311
	xor	edx, edx
	lea	rdi, [rbp - 0x430]
	mov	rsi, qword ptr [rbp - 0x438]
	call	mbsnwidth
	mov	dword ptr [dword ptr [long_time_expected_width.width]],  eax
.label_2311:
	jmp	.label_2309
.label_2309:
	cmp	dword ptr [dword ptr [long_time_expected_width.width]],  0
	jge	.label_2310
	mov	dword ptr [dword ptr [long_time_expected_width.width]],  0
.label_2310:
	jmp	.label_2308
.label_2308:
	mov	eax,  dword ptr [dword ptr [long_time_expected_width.width]]
	add	rsp, 0x440
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x419eda
	.globl sub_419eda
	.type sub_419eda, @function
sub_419eda:

	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x419ee0

	.globl call_freefun
	.type call_freefun, @function
call_freefun:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	rsi, qword ptr [rbp - 8]
	mov	al, byte ptr [rsi + 0x50]
	and	al, 1
	movzx	ecx, al
	cmp	ecx, 0
	je	.label_2312
	mov	rax, qword ptr [rbp - 8]
	mov	rax, qword ptr [rax + 0x40]
	mov	rcx, qword ptr [rbp - 8]
	mov	rdi, qword ptr [rcx + 0x48]
	mov	rsi, qword ptr [rbp - 0x10]
	call	rax
	jmp	.label_2313
.label_2312:
	mov	rax, qword ptr [rbp - 8]
	mov	rax, qword ptr [rax + 0x40]
	mov	rdi, qword ptr [rbp - 0x10]
	call	rax
.label_2313:
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x419f34
	.globl sub_419f34
	.type sub_419f34, @function
sub_419f34:

	nop	word ptr cs:[rax + rax]
.label_2315:
	mov	rax, -1
	cmp	rax, qword ptr [rbp - 0x20]
	jg	.label_2314
	cmp	qword ptr [rbp - 0x20], 0x77359400
	jg	.label_2314
	jmp	.label_2314
.label_2316:
	mov	rax, -1
	cmp	rax, qword ptr [rbp - 0x10]
	jg	.label_2315
	cmp	qword ptr [rbp - 0x10], 0x77359400
	jg	.label_2315
	jmp	.label_2315
	.section	.text
	.align	32
	#Procedure 0x419f88

	.globl timespec_cmp
	.type timespec_cmp, @function
timespec_cmp:
	push	rbp
	mov	rbp, rsp
	mov	qword ptr [rbp - 0x18], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	qword ptr [rbp - 0x28], rdx
	mov	qword ptr [rbp - 0x20], rcx
	mov	rcx, qword ptr [rbp - 0x18]
	cmp	rcx, qword ptr [rbp - 0x28]
	jge	.label_2317
	mov	dword ptr [rbp - 4], 0xffffffff
	jmp	.label_2318
.label_2317:
	mov	rax, qword ptr [rbp - 0x18]
	cmp	rax, qword ptr [rbp - 0x28]
	jle	.label_2316
	mov	dword ptr [rbp - 4], 1
	jmp	.label_2318
.label_2314:
	mov	rax, qword ptr [rbp - 0x10]
	sub	rax, qword ptr [rbp - 0x20]
	mov	ecx, eax
	mov	dword ptr [rbp - 4], ecx
.label_2318:
	mov	eax, dword ptr [rbp - 4]
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x419fe2
	.globl sub_419fe2
	.type sub_419fe2, @function
sub_419fe2:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x419ff0

	.globl rev_strcmp_size
	.type rev_strcmp_size, @function
rev_strcmp_size:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	movabs	rdx, OFFSET FLAT:strcmp
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	rsi, qword ptr [rbp - 0x10]
	mov	rdi, qword ptr [rbp - 8]
	mov	qword ptr [rbp - 0x18], rdi
	mov	rdi, rsi
	mov	rsi, qword ptr [rbp - 0x18]
	call	cmp_size
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x41a028
	.globl sub_41a028
	.type sub_41a028, @function
sub_41a028:

	nop	dword ptr [rax + rax]
.label_2320:
	mov	rax, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rbp - 8]
	mov	rdi, qword ptr [rcx]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rcx]
	call	rax
	mov	dword ptr [rbp - 0x24], eax
.label_2319:
	mov	eax, dword ptr [rbp - 0x24]
	add	rsp, 0x30
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x41a050
	.globl sub_41a050
	.type sub_41a050, @function
sub_41a050:

	nop	
.label_2321:
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax + 0x48]
	mov	rcx, qword ptr [rbp - 8]
	cmp	rax, qword ptr [rcx + 0x48]
	setg	dl
	and	dl, 1
	movzx	esi, dl
	mov	dword ptr [rbp - 0x20], esi
.label_2322:
	mov	eax, dword ptr [rbp - 0x20]
	mov	dword ptr [rbp - 0x1c], eax
	cmp	dword ptr [rbp - 0x1c], 0
	je	.label_2320
	mov	eax, dword ptr [rbp - 0x1c]
	mov	dword ptr [rbp - 0x24], eax
	jmp	.label_2319
	.section	.text
	.align	32
	#Procedure 0x41a089

	.globl cmp_size
	.type cmp_size, @function
cmp_size:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x30
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	qword ptr [rbp - 0x18], rdx
	mov	rdx, qword ptr [rbp - 0x10]
	mov	rdx, qword ptr [rdx + 0x48]
	mov	rsi, qword ptr [rbp - 8]
	cmp	rdx, qword ptr [rsi + 0x48]
	jge	.label_2321
	mov	eax, 0xffffffff
	mov	dword ptr [rbp - 0x20], eax
	jmp	.label_2322
	.section	.text
	.align	32
	#Procedure 0x41a0c0

	.globl strcmp_name
	.type strcmp_name, @function
strcmp_name:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	movabs	rdx, OFFSET FLAT:strcmp
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	rsi, qword ptr [rbp - 8]
	mov	rdi, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 0x18], rdi
	mov	rdi, rsi
	mov	rsi, qword ptr [rbp - 0x18]
	call	cmp_name
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x41a0f8
	.globl sub_41a0f8
	.type sub_41a0f8, @function
sub_41a0f8:

	nop	dword ptr [rax + rax]
.label_2327:
	add	rsp, 0xb0
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x41a109
	.globl sub_41a109
	.type sub_41a109, @function
sub_41a109:

	nop	
.label_2326:
	xor	eax, eax
	mov	esi, eax
	mov	edi, dword ptr [rbp - 4]
	call	signal
	mov	qword ptr [rbp - 0xa0], rax
.label_2325:
	mov	edi, dword ptr [rbp - 4]
	call	raise
	mov	edi, 2
	lea	rsi, [rbp - 0x88]
	xor	ecx, ecx
	mov	edx, ecx
	mov	dword ptr [rbp - 0xa4], eax
	call	sigprocmask
	mov	dword ptr [rbp - 0xa8], eax
	jmp	.label_2323
	.section	.text
	.align	32
	#Procedure 0x41a14c

	.globl process_signals
	.type process_signals, @function
process_signals:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0xb0
.label_2323:
	mov	al, 1
	mov	ecx,  dword ptr [dword ptr [interrupt_signal]]
	cmp	ecx, 0
	mov	byte ptr [rbp - 0x89], al
	jne	.label_2329
	mov	eax,  dword ptr [dword ptr [stop_signal_count]]
	cmp	eax, 0
	setne	cl
	mov	byte ptr [rbp - 0x89], cl
.label_2329:
	mov	al, byte ptr [rbp - 0x89]
	test	al, 1
	jne	.label_2324
	jmp	.label_2327
.label_2324:
	test	byte ptr [byte ptr [used_color]],  1
	je	.label_2328
	call	restore_default_color
.label_2328:
	mov	rdi,  qword ptr [word ptr [stdout]]
	call	fflush_unlocked
	xor	edi, edi
	movabs	rsi, OFFSET FLAT:caught_signals
	lea	rdx, [rbp - 0x88]
	mov	dword ptr [rbp - 0x90], eax
	call	sigprocmask
	mov	edi,  dword ptr [dword ptr [interrupt_signal]]
	mov	dword ptr [rbp - 4], edi
	mov	edi,  dword ptr [dword ptr [stop_signal_count]]
	mov	dword ptr [rbp - 8], edi
	cmp	dword ptr [rbp - 8], 0
	mov	dword ptr [rbp - 0x94], eax
	je	.label_2326
	mov	eax, dword ptr [rbp - 8]
	sub	eax, 1
	mov	dword ptr [dword ptr [stop_signal_count]],  eax
	mov	dword ptr [rbp - 4], 0x13
	jmp	.label_2325
	.section	.text
	.align	32
	#Procedure 0x41a210

	.globl xstrcoll_atime
	.type xstrcoll_atime, @function
xstrcoll_atime:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	movabs	rdx, OFFSET FLAT:xstrcoll
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	rsi, qword ptr [rbp - 8]
	mov	rdi, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 0x18], rdi
	mov	rdi, rsi
	mov	rsi, qword ptr [rbp - 0x18]
	call	cmp_atime
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x41a248
	.globl sub_41a248
	.type sub_41a248, @function
sub_41a248:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x41a250

	.globl call_chunkfun
	.type call_chunkfun, @function
call_chunkfun:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 0x18], rsi
	mov	rsi, qword ptr [rbp - 0x10]
	mov	al, byte ptr [rsi + 0x50]
	and	al, 1
	movzx	ecx, al
	cmp	ecx, 0
	je	.label_2330
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax + 0x38]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rdi, qword ptr [rcx + 0x48]
	mov	rsi, qword ptr [rbp - 0x18]
	call	rax
	mov	qword ptr [rbp - 8], rax
	jmp	.label_2331
.label_2330:
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax + 0x38]
	mov	rdi, qword ptr [rbp - 0x18]
	call	rax
	mov	qword ptr [rbp - 8], rax
.label_2331:
	mov	rax, qword ptr [rbp - 8]
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x41a2b0

	.globl print_color_indicator
	.type print_color_indicator, @function
print_color_indicator:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	mov	qword ptr [rbp - 8], rdi
	cmp	qword ptr [rbp - 8], 0
	je	.label_2332
	mov	edi, 4
	call	is_colored
	test	al, 1
	jne	.label_2333
	jmp	.label_2334
.label_2333:
	call	restore_default_color
.label_2334:
	movabs	rdi, OFFSET FLAT:color_indicator
	call	put_indicator
	mov	rdi, qword ptr [rbp - 8]
	call	put_indicator
	movabs	rdi, OFFSET FLAT:color_indicator
	add	rdi, 0x10
	call	put_indicator
.label_2332:
	cmp	qword ptr [rbp - 8], 0
	setne	al
	and	al, 1
	movzx	eax, al
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x41a321
	.globl sub_41a321
	.type sub_41a321, @function
sub_41a321:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x41a330

	.globl mpsort
	.type mpsort, @function
mpsort:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	qword ptr [rbp - 0x18], rdx
	mov	rdi, qword ptr [rbp - 8]
	mov	rsi, qword ptr [rbp - 0x10]
	mov	rdx, qword ptr [rbp - 8]
	mov	rax, qword ptr [rbp - 0x10]
	shl	rax, 3
	add	rdx, rax
	mov	rcx, qword ptr [rbp - 0x18]
	call	mpsort_with_tmp
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x41a36a
	.globl sub_41a36a
	.type sub_41a36a, @function
sub_41a36a:

	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x41a370

	.globl version_etc
	.type version_etc, @function
version_etc:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x1a0
	test	al, al
	movaps	xmmword ptr [rbp - 0x100], xmm7
	movaps	xmmword ptr [rbp - 0x110], xmm6
	movaps	xmmword ptr [rbp - 0x120], xmm5
	movaps	xmmword ptr [rbp - 0x130], xmm4
	movaps	xmmword ptr [rbp - 0x140], xmm3
	movaps	xmmword ptr [rbp - 0x150], xmm2
	movaps	xmmword ptr [rbp - 0x160], xmm1
	movaps	xmmword ptr [rbp - 0x170], xmm0
	mov	qword ptr [rbp - 0x178], rdi
	mov	qword ptr [rbp - 0x180], r9
	mov	qword ptr [rbp - 0x188], r8
	mov	qword ptr [rbp - 0x190], rcx
	mov	qword ptr [rbp - 0x198], rdx
	mov	qword ptr [rbp - 0x1a0], rsi
	je	.label_2335
	movaps	xmm0, xmmword ptr [rbp - 0x170]
	movaps	xmmword ptr [rbp - 0xc0], xmm0
	movaps	xmm1, xmmword ptr [rbp - 0x160]
	movaps	xmmword ptr [rbp - 0xb0], xmm1
	movaps	xmm2, xmmword ptr [rbp - 0x150]
	movaps	xmmword ptr [rbp - 0xa0], xmm2
	movaps	xmm3, xmmword ptr [rbp - 0x140]
	movaps	xmmword ptr [rbp - 0x90], xmm3
	movaps	xmm4, xmmword ptr [rbp - 0x130]
	movaps	xmmword ptr [rbp - 0x80], xmm4
	movaps	xmm5, xmmword ptr [rbp - 0x120]
	movaps	xmmword ptr [rbp - 0x70], xmm5
	movaps	xmm6, xmmword ptr [rbp - 0x110]
	movaps	xmmword ptr [rbp - 0x60], xmm6
	movaps	xmm7, xmmword ptr [rbp - 0x100]
	movaps	xmmword ptr [rbp - 0x50], xmm7
.label_2335:
	mov	rax, qword ptr [rbp - 0x180]
	mov	qword ptr [rbp - 0xc8], rax
	mov	rcx, qword ptr [rbp - 0x188]
	mov	qword ptr [rbp - 0xd0], rcx
	mov	rdx, qword ptr [rbp - 0x190]
	mov	rsi, qword ptr [rbp - 0x198]
	mov	rdi, qword ptr [rbp - 0x1a0]
	mov	r8, qword ptr [rbp - 0x178]
	mov	qword ptr [rbp - 8], r8
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 0x18], rsi
	mov	qword ptr [rbp - 0x20], rdx
	lea	rdx, [rbp - 0xf0]
	mov	qword ptr [rbp - 0x30], rdx
	lea	rdx, [rbp + 0x10]
	mov	qword ptr [rbp - 0x38], rdx
	mov	dword ptr [rbp - 0x3c], 0x30
	mov	dword ptr [rbp - 0x40], 0x20
	mov	rdi, qword ptr [rbp - 8]
	mov	rsi, qword ptr [rbp - 0x10]
	mov	rdx, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rbp - 0x20]
	lea	r8, [rbp - 0x40]
	call	version_etc_va
	add	rsp, 0x1a0
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x41a4d4
	.globl sub_41a4d4
	.type sub_41a4d4, @function
sub_41a4d4:

	nop	word ptr cs:[rax + rax]
.label_2338:
	mov	rax, qword ptr [rbp - 0x30]
	mov	rcx, qword ptr [rbp - 0x10]
	movsx	edi, byte ptr [rcx + rax]
	call	c_isdigit
	test	al, 1
	jne	.label_2363
	jmp	.label_2360
.label_2363:
	mov	dword ptr [rbp - 4], 1
	jmp	.label_2337
.label_2347:
	jmp	.label_2336
.label_2336:
	mov	rax, qword ptr [rbp - 0x30]
	mov	rcx, qword ptr [rbp - 0x10]
	movsx	edi, byte ptr [rcx + rax]
	call	c_isdigit
	xor	edi, edi
	mov	dl, dil
	test	al, 1
	mov	byte ptr [rbp - 0x51], dl
	jne	.label_2354
	jmp	.label_2352
.label_2354:
	mov	rax, qword ptr [rbp - 0x38]
	mov	rcx, qword ptr [rbp - 0x20]
	movsx	edi, byte ptr [rcx + rax]
	call	c_isdigit
	mov	byte ptr [rbp - 0x51], al
.label_2352:
	mov	al, byte ptr [rbp - 0x51]
	test	al, 1
	jne	.label_2356
	jmp	.label_2338
.label_2356:
	cmp	dword ptr [rbp - 0x3c], 0
	jne	.label_2346
	mov	rax, qword ptr [rbp - 0x30]
	mov	rcx, qword ptr [rbp - 0x10]
	movsx	edx, byte ptr [rcx + rax]
	mov	rax, qword ptr [rbp - 0x38]
	mov	rcx, qword ptr [rbp - 0x20]
	movsx	esi, byte ptr [rcx + rax]
	sub	edx, esi
	mov	dword ptr [rbp - 0x3c], edx
.label_2346:
	mov	rax, qword ptr [rbp - 0x30]
	add	rax, 1
	mov	qword ptr [rbp - 0x30], rax
	mov	rax, qword ptr [rbp - 0x38]
	add	rax, 1
	mov	qword ptr [rbp - 0x38], rax
	jmp	.label_2336
.label_2358:
	jmp	.label_2345
.label_2345:
	mov	rax, qword ptr [rbp - 0x38]
	mov	rcx, qword ptr [rbp - 0x20]
	movsx	edx, byte ptr [rcx + rax]
	cmp	edx, 0x30
	jne	.label_2347
	mov	rax, qword ptr [rbp - 0x38]
	add	rax, 1
	mov	qword ptr [rbp - 0x38], rax
	jmp	.label_2345
	.section	.text
	.align	32
	#Procedure 0x41a5c8

	.globl verrevcmp
	.type verrevcmp, @function
verrevcmp:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x60
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 0x18], rsi
	mov	qword ptr [rbp - 0x20], rdx
	mov	qword ptr [rbp - 0x28], rcx
	mov	qword ptr [rbp - 0x30], 0
	mov	qword ptr [rbp - 0x38], 0
.label_2355:
	mov	al, 1
	mov	rcx, qword ptr [rbp - 0x30]
	cmp	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rbp - 0x45], al
	jb	.label_2359
	mov	rax, qword ptr [rbp - 0x38]
	cmp	rax, qword ptr [rbp - 0x28]
	setb	cl
	mov	byte ptr [rbp - 0x45], cl
.label_2359:
	mov	al, byte ptr [rbp - 0x45]
	test	al, 1
	jne	.label_2340
	jmp	.label_2344
.label_2340:
	mov	dword ptr [rbp - 0x3c], 0
.label_2353:
	mov	rax, qword ptr [rbp - 0x30]
	cmp	rax, qword ptr [rbp - 0x18]
	jae	.label_2350
	mov	rax, qword ptr [rbp - 0x30]
	mov	rcx, qword ptr [rbp - 0x10]
	movsx	edi, byte ptr [rcx + rax]
	call	c_isdigit
	mov	dl, 1
	test	al, 1
	mov	byte ptr [rbp - 0x46], dl
	jne	.label_2350
	jmp	.label_2366
.label_2350:
	xor	eax, eax
	mov	cl, al
	mov	rdx, qword ptr [rbp - 0x38]
	cmp	rdx, qword ptr [rbp - 0x28]
	mov	byte ptr [rbp - 0x47], cl
	jae	.label_2342
	mov	rax, qword ptr [rbp - 0x38]
	mov	rcx, qword ptr [rbp - 0x20]
	movsx	edi, byte ptr [rcx + rax]
	call	c_isdigit
	xor	al, 0xff
	mov	byte ptr [rbp - 0x47], al
.label_2342:
	mov	al, byte ptr [rbp - 0x47]
	mov	byte ptr [rbp - 0x46], al
.label_2366:
	mov	al, byte ptr [rbp - 0x46]
	test	al, 1
	jne	.label_2339
	jmp	.label_2341
.label_2339:
	mov	rax, qword ptr [rbp - 0x30]
	cmp	rax, qword ptr [rbp - 0x18]
	jne	.label_2343
	xor	eax, eax
	mov	dword ptr [rbp - 0x4c], eax
	jmp	.label_2365
.label_2348:
	mov	rax, qword ptr [rbp - 0x30]
	add	rax, 1
	mov	qword ptr [rbp - 0x30], rax
	mov	rax, qword ptr [rbp - 0x38]
	add	rax, 1
	mov	qword ptr [rbp - 0x38], rax
	jmp	.label_2353
.label_2341:
	jmp	.label_2357
.label_2357:
	mov	rax, qword ptr [rbp - 0x30]
	mov	rcx, qword ptr [rbp - 0x10]
	movsx	edx, byte ptr [rcx + rax]
	cmp	edx, 0x30
	jne	.label_2358
	mov	rax, qword ptr [rbp - 0x30]
	add	rax, 1
	mov	qword ptr [rbp - 0x30], rax
	jmp	.label_2357
.label_2351:
	cmp	dword ptr [rbp - 0x3c], 0
	je	.label_2362
	mov	eax, dword ptr [rbp - 0x3c]
	mov	dword ptr [rbp - 4], eax
	jmp	.label_2337
.label_2361:
	mov	rax, qword ptr [rbp - 0x38]
	mov	rcx, qword ptr [rbp - 0x20]
	movzx	edi, byte ptr [rcx + rax]
	call	order
	mov	dword ptr [rbp - 0x50], eax
.label_2364:
	mov	eax, dword ptr [rbp - 0x50]
	mov	dword ptr [rbp - 0x44], eax
	mov	eax, dword ptr [rbp - 0x40]
	cmp	eax, dword ptr [rbp - 0x44]
	je	.label_2348
	mov	eax, dword ptr [rbp - 0x40]
	sub	eax, dword ptr [rbp - 0x44]
	mov	dword ptr [rbp - 4], eax
	jmp	.label_2337
.label_2362:
	jmp	.label_2355
.label_2343:
	mov	rax, qword ptr [rbp - 0x30]
	mov	rcx, qword ptr [rbp - 0x10]
	movzx	edi, byte ptr [rcx + rax]
	call	order
	mov	dword ptr [rbp - 0x4c], eax
.label_2365:
	mov	eax, dword ptr [rbp - 0x4c]
	mov	dword ptr [rbp - 0x40], eax
	mov	rcx, qword ptr [rbp - 0x38]
	cmp	rcx, qword ptr [rbp - 0x28]
	jne	.label_2361
	xor	eax, eax
	mov	dword ptr [rbp - 0x50], eax
	jmp	.label_2364
.label_2344:
	mov	dword ptr [rbp - 4], 0
.label_2337:
	mov	eax, dword ptr [rbp - 4]
	add	rsp, 0x60
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x41a78a
	.globl sub_41a78a
	.type sub_41a78a, @function
sub_41a78a:

	nop	word ptr cs:[rax + rax]
.label_2360:
	mov	rax, qword ptr [rbp - 0x38]
	mov	rcx, qword ptr [rbp - 0x20]
	movsx	edi, byte ptr [rcx + rax]
	call	c_isdigit
	test	al, 1
	jne	.label_2349
	jmp	.label_2351
.label_2349:
	mov	dword ptr [rbp - 4], 0xffffffff
	jmp	.label_2337
	.section	.text
	.align	32
	#Procedure 0x41a7c0

	.globl memcpy_lowcase
	.type memcpy_lowcase, @function
memcpy_lowcase:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	qword ptr [rbp - 0x18], rdx
.label_2368:
	mov	rax, qword ptr [rbp - 0x18]
	mov	rcx, rax
	add	rcx, -1
	mov	qword ptr [rbp - 0x18], rcx
	cmp	rax, 0
	jbe	.label_2367
	mov	rax, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rbp - 0x10]
	movzx	edi, byte ptr [rcx + rax]
	call	tolower
	mov	dl, al
	mov	rcx, qword ptr [rbp - 0x18]
	mov	rsi, qword ptr [rbp - 8]
	mov	byte ptr [rsi + rcx], dl
	jmp	.label_2368
.label_2367:
	mov	rax, qword ptr [rbp - 8]
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x41a81a
	.globl sub_41a81a
	.type sub_41a81a, @function
sub_41a81a:

	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x41a820

	.globl next_prime
	.type next_prime, @function
next_prime:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	mov	qword ptr [rbp - 8], rdi
	cmp	qword ptr [rbp - 8], 0xa
	jae	.label_2369
	mov	qword ptr [rbp - 8], 0xa
.label_2369:
	mov	rax, qword ptr [rbp - 8]
	or	rax, 1
	mov	qword ptr [rbp - 8], rax
.label_2371:
	xor	eax, eax
	mov	cl, al
	mov	rdx, -1
	cmp	rdx, qword ptr [rbp - 8]
	mov	byte ptr [rbp - 9], cl
	je	.label_2373
	mov	rdi, qword ptr [rbp - 8]
	call	is_prime
	xor	al, 0xff
	mov	byte ptr [rbp - 9], al
.label_2373:
	mov	al, byte ptr [rbp - 9]
	test	al, 1
	jne	.label_2370
	jmp	.label_2372
.label_2370:
	mov	rax, qword ptr [rbp - 8]
	add	rax, 2
	mov	qword ptr [rbp - 8], rax
	jmp	.label_2371
.label_2372:
	mov	rax, qword ptr [rbp - 8]
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x41a89c
	.globl sub_41a89c
	.type sub_41a89c, @function
sub_41a89c:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x41a8a0

	.globl quotearg_char_mem
	.type quotearg_char_mem, @function
quotearg_char_mem:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x70
	mov	al, dl
	lea	rcx, [rbp - 0x50]
	mov	edx, 1
	movabs	r8, OFFSET FLAT:default_quoting_options
	mov	r9d, 0x38
	mov	r10d, r9d
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	byte ptr [rbp - 0x11], al
	mov	rsi, rcx
	mov	rdi, rsi
	mov	rsi, r8
	mov	dword ptr [rbp - 0x54], edx
	mov	rdx, r10
	mov	qword ptr [rbp - 0x60], rcx
	call	memcpy
	mov	rdi, qword ptr [rbp - 0x60]
	movsx	esi, byte ptr [rbp - 0x11]
	mov	edx, dword ptr [rbp - 0x54]
	call	set_char_quoting
	xor	edi, edi
	lea	rcx, [rbp - 0x50]
	mov	rsi, qword ptr [rbp - 8]
	mov	rdx, qword ptr [rbp - 0x10]
	mov	dword ptr [rbp - 0x64], eax
	call	quotearg_n_options
	add	rsp, 0x70
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x41a915
	.globl sub_41a915
	.type sub_41a915, @function
sub_41a915:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x41a920
	.globl make_timespec
	.type make_timespec, @function
make_timespec:

	push	rbp
	mov	rbp, rsp
	mov	qword ptr [rbp - 0x18], rdi
	mov	qword ptr [rbp - 0x20], rsi
	mov	rsi, qword ptr [rbp - 0x18]
	mov	qword ptr [rbp - 0x30], rsi
	mov	rsi, qword ptr [rbp - 0x20]
	mov	qword ptr [rbp - 0x28], rsi
	movups	xmm0, xmmword ptr [rbp - 0x30]
	movaps	xmmword ptr [rbp - 0x10], xmm0
	mov	rax, qword ptr [rbp - 0x10]
	mov	rdx, qword ptr [rbp - 8]
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x41a94e
	.globl sub_41a94e
	.type sub_41a94e, @function
sub_41a94e:

	nop	
.label_2379:
	mov	rax, qword ptr [rbp - 0x18]
	movsx	ecx, byte ptr [rax]
	cmp	ecx, 0x2f
	jne	.label_2377
	mov	byte ptr [rbp - 0x41], 0x2e
.label_2377:
	jmp	.label_2376
.label_2376:
	mov	rax, qword ptr [rbp - 0x38]
	movsx	ecx, byte ptr [rbp - 0x41]
	cmp	ecx, 0
	setne	dl
	and	dl, 1
	movzx	ecx, dl
	movsxd	rsi, ecx
	add	rax, rsi
	add	rax, qword ptr [rbp - 0x40]
	add	rax, 1
	mov	rdi, rax
	call	malloc
	mov	qword ptr [rbp - 0x50], rax
	cmp	qword ptr [rbp - 0x50], 0
	jne	.label_2378
	mov	qword ptr [rbp - 8], 0
	jmp	.label_2375
.label_2378:
	mov	rdi, qword ptr [rbp - 0x50]
	mov	rsi, qword ptr [rbp - 0x10]
	mov	rdx, qword ptr [rbp - 0x38]
	call	mempcpy
	mov	qword ptr [rbp - 0x58], rax
	mov	cl, byte ptr [rbp - 0x41]
	mov	rax, qword ptr [rbp - 0x58]
	mov	byte ptr [rax], cl
	movsx	r8d, byte ptr [rbp - 0x41]
	cmp	r8d, 0
	setne	cl
	and	cl, 1
	movzx	r8d, cl
	mov	rax, qword ptr [rbp - 0x58]
	movsxd	rdx, r8d
	add	rax, rdx
	mov	qword ptr [rbp - 0x58], rax
	cmp	qword ptr [rbp - 0x20], 0
	je	.label_2374
	mov	rax, qword ptr [rbp - 0x58]
	mov	rcx, qword ptr [rbp - 0x20]
	mov	qword ptr [rcx], rax
.label_2374:
	mov	rdi, qword ptr [rbp - 0x58]
	mov	rsi, qword ptr [rbp - 0x18]
	mov	rdx, qword ptr [rbp - 0x40]
	call	mempcpy
	mov	qword ptr [rbp - 0x58], rax
	mov	rax, qword ptr [rbp - 0x58]
	mov	byte ptr [rax], 0
	mov	rax, qword ptr [rbp - 0x50]
	mov	qword ptr [rbp - 8], rax
.label_2375:
	mov	rax, qword ptr [rbp - 8]
	add	rsp, 0x60
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x41aa32
	.globl sub_41aa32
	.type sub_41aa32, @function
sub_41aa32:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x41aa41

	.globl mfile_name_concat
	.type mfile_name_concat, @function
mfile_name_concat:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x60
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 0x18], rsi
	mov	qword ptr [rbp - 0x20], rdx
	mov	rdi, qword ptr [rbp - 0x10]
	call	last_component
	mov	qword ptr [rbp - 0x28], rax
	mov	rdi, qword ptr [rbp - 0x28]
	call	base_len
	mov	qword ptr [rbp - 0x30], rax
	mov	rax, qword ptr [rbp - 0x28]
	mov	rdx, qword ptr [rbp - 0x10]
	sub	rax, rdx
	add	rax, qword ptr [rbp - 0x30]
	mov	qword ptr [rbp - 0x38], rax
	mov	rdi, qword ptr [rbp - 0x18]
	call	strlen
	mov	qword ptr [rbp - 0x40], rax
	mov	byte ptr [rbp - 0x41], 0
	cmp	qword ptr [rbp - 0x30], 0
	je	.label_2379
	mov	rax, qword ptr [rbp - 0x38]
	sub	rax, 1
	mov	rcx, qword ptr [rbp - 0x10]
	movsx	edx, byte ptr [rcx + rax]
	cmp	edx, 0x2f
	je	.label_2380
	mov	rax, qword ptr [rbp - 0x18]
	movsx	ecx, byte ptr [rax]
	cmp	ecx, 0x2f
	je	.label_2380
	mov	byte ptr [rbp - 0x41], 0x2f
.label_2380:
	jmp	.label_2376
.label_2437:
	movabs	rdi, OFFSET FLAT:label_2431
	movabs	rsi, OFFSET FLAT:label_1282
	mov	edx, 0x674
	movabs	rcx, OFFSET FLAT:label_2390
	call	__assert_fail
.label_2407:
	test	byte ptr [byte ptr [print_with_color]],  1
	je	.label_2410
	mov	edi, 0xd
	call	is_colored
	test	al, 1
	jne	.label_2384
	mov	edi, 0xe
	call	is_colored
	test	al, 1
	jne	.label_2391
	jmp	.label_2393
.label_2391:
	test	byte ptr [byte ptr [color_symlink_as_referent]],  1
	jne	.label_2384
.label_2393:
	mov	edi, 0xc
	call	is_colored
	test	al, 1
	jne	.label_2398
	jmp	.label_2402
.label_2398:
	cmp	dword ptr [dword ptr [format]],  0
	jne	.label_2402
.label_2384:
	mov	byte ptr [byte ptr [check_symlink_mode]],  1
.label_2402:
	jmp	.label_2410
.label_2410:
	jmp	.label_2414
.label_2414:
	cmp	dword ptr [dword ptr [dereference]],  1
	jne	.label_2415
	mov	al, 1
	test	byte ptr [byte ptr [immediate_dirs]],  1
	mov	byte ptr [rbp - 0x65], al
	jne	.label_2418
	mov	al, 1
	cmp	dword ptr [dword ptr [indicator_style]],  3
	mov	byte ptr [rbp - 0x65], al
	je	.label_2418
	cmp	dword ptr [dword ptr [format]],  0
	sete	al
	mov	byte ptr [rbp - 0x65], al
.label_2418:
	mov	al, byte ptr [rbp - 0x65]
	mov	ecx, 4
	mov	edx, 2
	test	al, 1
	cmovne	ecx, edx
	mov	dword ptr [dword ptr [dereference]],  ecx
.label_2415:
	test	byte ptr [byte ptr [recursive]],  1
	je	.label_2430
	mov	eax, 0x1e
	mov	edi, eax
	xor	eax, eax
	mov	esi, eax
	movabs	rdx, OFFSET FLAT:dev_ino_hash
	movabs	rcx, OFFSET FLAT:dev_ino_compare
	movabs	r8, OFFSET FLAT:dev_ino_free
	call	hash_initialize
	mov	qword ptr [word ptr [active_dir_set]],  rax
	cmp	qword ptr [word ptr [active_dir_set]],  0
	jne	.label_2383
	call	xalloc_die
.label_2424:
	cmp	dword ptr [rbp - 0x24], 1
	jg	.label_2394
	cmp	qword ptr [word ptr [pending_dirs]],  0
	je	.label_2394
	mov	rax,  qword ptr [word ptr [pending_dirs]]
	cmp	qword ptr [rax + 0x18], 0
	jne	.label_2394
	mov	byte ptr [byte ptr [print_dir_name]],  0
.label_2394:
	jmp	.label_2404
.label_2404:
	jmp	.label_2388
.label_2388:
	cmp	qword ptr [word ptr [pending_dirs]],  0
	je	.label_2406
	mov	rax,  qword ptr [word ptr [pending_dirs]]
	mov	qword ptr [rbp - 0x20], rax
	mov	rax,  qword ptr [word ptr [pending_dirs]]
	mov	rax, qword ptr [rax + 0x18]
	mov	qword ptr [word ptr [pending_dirs]],  rax
	cmp	qword ptr [word ptr [active_dir_set]],  0
	je	.label_2381
	mov	rax, qword ptr [rbp - 0x20]
	cmp	qword ptr [rax], 0
	jne	.label_2423
	call	dev_ino_pop
	lea	rcx, [rbp - 0x38]
	mov	qword ptr [rbp - 0x38], rax
	mov	qword ptr [rbp - 0x30], rdx
	mov	rdi,  qword ptr [word ptr [active_dir_set]]
	mov	rsi, rcx
	call	hash_delete
	mov	qword ptr [rbp - 0x40], rax
	cmp	qword ptr [rbp - 0x40], 0
	je	.label_2432
	jmp	.label_2434
.label_2395:
	movabs	rdi, OFFSET FLAT:label_809
	xor	eax, eax
	mov	esi, eax
	mov	edx, 1
	call	queue_directory
.label_2413:
	jmp	.label_2411
.label_2382:
	mov	rdi,  qword ptr [word ptr [active_dir_set]]
	call	hash_free
.label_2433:
	mov	eax,  dword ptr [dword ptr [exit_status]]
	add	rsp, 0xc0
	pop	rbp
	ret	
.label_2432:
	movabs	rdi, OFFSET FLAT:label_2389
	movabs	rsi, OFFSET FLAT:label_1282
	mov	edx, 0x640
	movabs	rcx, OFFSET FLAT:label_2390
	call	__assert_fail
.label_2403:
	mov	eax,  dword ptr [dword ptr [interrupt_signal]]
	mov	dword ptr [rbp - 0x44], eax
	cmp	dword ptr [rbp - 0x44], 0
	je	.label_2399
	mov	edi, dword ptr [rbp - 0x44]
	call	raise
	mov	dword ptr [rbp - 0xb4], eax
.label_2399:
	jmp	.label_2405
.label_2405:
	test	byte ptr [byte ptr [dired]],  1
	je	.label_2400
	movabs	rdi, OFFSET FLAT:label_2436
	movabs	rsi, OFFSET FLAT:dired_obstack
	call	dired_dump_obstack
	movabs	rdi, OFFSET FLAT:label_2420
	movabs	rsi, OFFSET FLAT:subdired_obstack
	call	dired_dump_obstack
	mov	rdi,  qword ptr [word ptr [filename_quoting_options]]
	call	get_quoting_style
	movabs	rdi, OFFSET FLAT:label_2428
	mov	eax, eax
	mov	esi, eax
	mov	rsi,  qword ptr [word ptr [+ (rsi * 8) + quoting_style_args]]
	mov	al, 0
	call	printf
	mov	dword ptr [rbp - 0xb8], eax
.label_2400:
	cmp	qword ptr [word ptr [active_dir_set]],  0
	je	.label_2433
	mov	rdi,  qword ptr [word ptr [active_dir_set]]
	call	hash_get_n_entries
	cmp	rax, 0
	jne	.label_2437
	jmp	.label_2382
.label_2434:
	mov	rax, qword ptr [rbp - 0x40]
	mov	rdi, rax
	call	dev_ino_free
	mov	rdi, qword ptr [rbp - 0x20]
	call	free_pending_ent
	jmp	.label_2388
.label_2438:
	jmp	.label_2392
.label_2392:
	xor	esi, esi
	xor	eax, eax
	mov	edx, eax
	mov	ecx, 1
	movabs	r8, OFFSET FLAT:label_662
	mov	eax, dword ptr [rbp - 0x14]
	mov	edi, eax
	add	edi, 1
	mov	dword ptr [rbp - 0x14], edi
	movsxd	r9, eax
	mov	r10, qword ptr [rbp - 0x10]
	mov	rdi, qword ptr [r10 + r9*8]
	call	gobble_file
	mov	qword ptr [rbp - 0xa0], rax
	mov	eax, dword ptr [rbp - 0x14]
	cmp	eax, dword ptr [rbp - 8]
	jl	.label_2392
	jmp	.label_2411
.label_2411:
	cmp	qword ptr [word ptr [cwd_n_used]],  0
	je	.label_2412
	call	sort_files
	test	byte ptr [byte ptr [immediate_dirs]],  1
	jne	.label_2419
	xor	eax, eax
	mov	edi, eax
	mov	esi, 1
	call	extract_dirs_from_files
.label_2419:
	jmp	.label_2412
.label_2412:
	cmp	qword ptr [word ptr [cwd_n_used]],  0
	je	.label_2424
	call	print_current_files
	cmp	qword ptr [word ptr [pending_dirs]],  0
	je	.label_2427
	jmp	.label_2429
.label_2429:
	mov	edi, 0xa
	call	putchar_unlocked
	mov	rcx,  qword ptr [word ptr [dired_pos]]
	add	rcx, 1
	mov	qword ptr [word ptr [dired_pos]],  rcx
	mov	dword ptr [rbp - 0xa4], eax
	jmp	.label_2427
.label_2427:
	jmp	.label_2404
.label_2383:
	movabs	rdi, OFFSET FLAT:dev_ino_obstack
	xor	eax, eax
	mov	ecx, eax
	movabs	rdx, OFFSET FLAT:malloc
	movabs	r8, OFFSET FLAT:free
	mov	rsi, rcx
	mov	qword ptr [rbp - 0x70], rdx
	mov	rdx, rcx
	mov	rcx, qword ptr [rbp - 0x70]
	call	_obstack_begin
	mov	dword ptr [rbp - 0x74], eax
.label_2430:
	movabs	rdi, OFFSET FLAT:label_1859
	call	getenv
	mov	rdi, rax
	call	tzalloc
	mov	cl, 1
	mov	qword ptr [word ptr [localtz]],  rax
	cmp	dword ptr [dword ptr [sort_type]],  4
	mov	byte ptr [rbp - 0x75], cl
	je	.label_2416
	mov	al, 1
	cmp	dword ptr [dword ptr [sort_type]],  2
	mov	byte ptr [rbp - 0x75], al
	je	.label_2416
	mov	al, 1
	cmp	dword ptr [dword ptr [format]],  0
	mov	byte ptr [rbp - 0x75], al
	je	.label_2416
	mov	al, 1
	test	byte ptr [byte ptr [print_scontext]],  1
	mov	byte ptr [rbp - 0x75], al
	jne	.label_2416
	mov	al,  byte ptr [byte ptr [print_block_size]]
	mov	byte ptr [rbp - 0x75], al
.label_2416:
	mov	al, byte ptr [rbp - 0x75]
	xor	ecx, ecx
	mov	dl, cl
	and	al, 1
	mov	byte ptr [byte ptr [format_needs_stat]],  al
	test	byte ptr [byte ptr [format_needs_stat]],  1
	mov	byte ptr [rbp - 0x76], dl
	jne	.label_2425
	mov	al, 1
	test	byte ptr [byte ptr [recursive]],  1
	mov	byte ptr [rbp - 0x77], al
	jne	.label_2417
	mov	al, 1
	test	byte ptr [byte ptr [print_with_color]],  1
	mov	byte ptr [rbp - 0x77], al
	jne	.label_2417
	mov	al, 1
	cmp	dword ptr [dword ptr [indicator_style]],  0
	mov	byte ptr [rbp - 0x77], al
	jne	.label_2417
	mov	al,  byte ptr [byte ptr [directories_first]]
	mov	byte ptr [rbp - 0x77], al
.label_2417:
	mov	al, byte ptr [rbp - 0x77]
	mov	byte ptr [rbp - 0x76], al
.label_2425:
	mov	al, byte ptr [rbp - 0x76]
	and	al, 1
	mov	byte ptr [byte ptr [format_needs_type]],  al
	test	byte ptr [byte ptr [dired]],  1
	je	.label_2385
	movabs	rdi, OFFSET FLAT:dired_obstack
	xor	eax, eax
	mov	ecx, eax
	movabs	rdx, OFFSET FLAT:malloc
	movabs	r8, OFFSET FLAT:free
	mov	rsi, rcx
	mov	qword ptr [rbp - 0x80], rdx
	mov	rdx, rcx
	mov	rcx, qword ptr [rbp - 0x80]
	call	_obstack_begin
	movabs	rdi, OFFSET FLAT:subdired_obstack
	xor	r9d, r9d
	mov	ecx, r9d
	movabs	rdx, OFFSET FLAT:malloc
	movabs	r8, OFFSET FLAT:free
	mov	rsi, rcx
	mov	qword ptr [rbp - 0x88], rdx
	mov	rdx, rcx
	mov	rcx, qword ptr [rbp - 0x88]
	mov	dword ptr [rbp - 0x8c], eax
	call	_obstack_begin
	mov	dword ptr [rbp - 0x90], eax
.label_2385:
	test	byte ptr [byte ptr [print_hyperlink]],  1
	je	.label_2426
	call	file_escape_init
	call	xgethostname
	mov	qword ptr [word ptr [hostname]],  rax
	cmp	qword ptr [word ptr [hostname]],  0
	jne	.label_2408
	movabs	rax, OFFSET FLAT:label_662
	mov	qword ptr [word ptr [hostname]],  rax
.label_2408:
	jmp	.label_2426
.label_2426:
	mov	eax, 0xc8
	mov	esi, eax
	mov	qword ptr [word ptr [cwd_n_alloc]],  0x64
	mov	rdi,  qword ptr [word ptr [cwd_n_alloc]]
	call	xnmalloc
	mov	qword ptr [word ptr [cwd_file]],  rax
	mov	qword ptr [word ptr [cwd_n_used]],  0
	call	clear_files
	mov	ecx, dword ptr [rbp - 8]
	sub	ecx, dword ptr [rbp - 0x14]
	mov	dword ptr [rbp - 0x24], ecx
	cmp	dword ptr [rbp - 0x24], 0
	jg	.label_2438
	test	byte ptr [byte ptr [immediate_dirs]],  1
	je	.label_2395
	movabs	rdi, OFFSET FLAT:label_809
	mov	esi, 3
	xor	eax, eax
	mov	edx, eax
	mov	ecx, 1
	movabs	r8, OFFSET FLAT:label_662
	call	gobble_file
	mov	qword ptr [rbp - 0x98], rax
	jmp	.label_2413
.label_2423:
	jmp	.label_2381
.label_2381:
	mov	rax, qword ptr [rbp - 0x20]
	mov	rdi, qword ptr [rax]
	mov	rax, qword ptr [rbp - 0x20]
	mov	rsi, qword ptr [rax + 8]
	mov	rax, qword ptr [rbp - 0x20]
	mov	cl, byte ptr [rax + 0x10]
	and	cl, 1
	movzx	edx, cl
	call	print_dir
	mov	rdi, qword ptr [rbp - 0x20]
	call	free_pending_ent
	mov	byte ptr [byte ptr [print_dir_name]],  1
	jmp	.label_2388
.label_2406:
	test	byte ptr [byte ptr [print_with_color]],  1
	je	.label_2405
	test	byte ptr [byte ptr [used_color]],  1
	je	.label_2405
	cmp	qword ptr [word ptr [color_indicator]],  2
	jne	.label_2422
	mov	rax,  qword ptr [word ptr [label_2435]]
	movzx	ecx, word ptr [rax]
	sub	ecx, 0x5b1b
	setne	dl
	movzx	esi, dl
	cmp	esi, 0
	mov	dword ptr [rbp - 0xa8], ecx
	jne	.label_2422
	cmp	qword ptr [word ptr [label_2421]],  1
	jne	.label_2422
	mov	rax,  qword ptr [word ptr [label_2386]]
	movsx	ecx, byte ptr [rax]
	cmp	ecx, 0x6d
	je	.label_2387
.label_2422:
	call	restore_default_color
.label_2387:
	mov	rdi,  qword ptr [word ptr [stdout]]
	call	fflush_unlocked
	mov	dword ptr [rbp - 0xac], eax
	call	signal_restore
	mov	eax,  dword ptr [dword ptr [stop_signal_count]]
	mov	dword ptr [rbp - 0x44], eax
.label_2409:
	cmp	dword ptr [rbp - 0x44], 0
	je	.label_2403
	mov	edi, 0x13
	call	raise
	mov	dword ptr [rbp - 0xb0], eax
	mov	eax, dword ptr [rbp - 0x44]
	add	eax, -1
	mov	dword ptr [rbp - 0x44], eax
	jmp	.label_2409
	.section	.text
	.align	32
	#Procedure 0x41b27d

	.globl main
	.type main, @function
main:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0xc0
	mov	dword ptr [rbp - 4], 0
	mov	dword ptr [rbp - 8], edi
	mov	qword ptr [rbp - 0x10], rsi
	mov	rsi, qword ptr [rbp - 0x10]
	mov	rdi, qword ptr [rsi]
	call	set_program_name
	mov	edi, 6
	movabs	rsi, OFFSET FLAT:label_662
	call	setlocale
	movabs	rdi, OFFSET FLAT:label_2396
	movabs	rsi, OFFSET FLAT:label_2397
	mov	qword ptr [rbp - 0x50], rax
	call	bindtextdomain
	movabs	rdi, OFFSET FLAT:label_2396
	mov	qword ptr [rbp - 0x58], rax
	call	textdomain
	mov	edi, 2
	mov	qword ptr [rbp - 0x60], rax
	call	initialize_exit_failure
	movabs	rdi, OFFSET FLAT:close_stdout
	call	atexit
	movabs	rsi, 0x8000000000000000
	mov	dword ptr [dword ptr [exit_status]],  0
	mov	byte ptr [byte ptr [print_dir_name]],  1
	mov	qword ptr [word ptr [pending_dirs]],  0
	mov	qword ptr [word ptr [current_time]],  rsi
	mov	qword ptr [word ptr [label_672]],  -1
	mov	edi, dword ptr [rbp - 8]
	mov	rsi, qword ptr [rbp - 0x10]
	mov	dword ptr [rbp - 0x64], eax
	call	decode_switches
	mov	dword ptr [rbp - 0x14], eax
	test	byte ptr [byte ptr [print_with_color]],  1
	je	.label_2401
	call	parse_ls_color
.label_2401:
	test	byte ptr [byte ptr [directories_first]],  1
	je	.label_2407
	mov	byte ptr [byte ptr [check_symlink_mode]],  1
	jmp	.label_2414
	.section	.text
	.align	32
	#Procedure 0x41b380
	.globl rotl64
	.type rotl64, @function
rotl64:

	push	rbp
	mov	rbp, rsp
	mov	eax, 0x40
	mov	qword ptr [rbp - 8], rdi
	mov	dword ptr [rbp - 0xc], esi
	mov	rdi, qword ptr [rbp - 8]
	mov	esi, dword ptr [rbp - 0xc]
	mov	ecx, esi
	shl	rdi, cl
	mov	rdx, qword ptr [rbp - 8]
	sub	eax, dword ptr [rbp - 0xc]
	mov	eax, eax
	mov	ecx, eax
	shr	rdx, cl
	or	rdi, rdx
	mov	rax, rdi
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x41b3b2
	.globl sub_41b3b2
	.type sub_41b3b2, @function
sub_41b3b2:

	nop	word ptr cs:[rax + rax]
.label_2446:
	xor	eax, eax
	mov	ecx, eax
	mov	qword ptr [rbp - 0x38], rcx
	jmp	.label_2439
.label_2439:
	mov	rax, qword ptr [rbp - 0x38]
	mov	qword ptr [rbp - 0x28], rax
	cmp	qword ptr [rbp - 0x10], 0
	je	.label_2445
	cmp	qword ptr [word ptr [line_length]],  0
	je	.label_2440
	mov	rax, qword ptr [rbp - 0x18]
	add	rax, qword ptr [rbp - 0x28]
	add	rax, 2
	cmp	rax,  qword ptr [word ptr [line_length]]
	jae	.label_2442
	mov	rax, -1
	mov	rcx, qword ptr [rbp - 0x18]
	sub	rax, qword ptr [rbp - 0x28]
	sub	rax, 2
	cmp	rcx, rax
	ja	.label_2442
.label_2440:
	mov	rax, qword ptr [rbp - 0x18]
	add	rax, 2
	mov	qword ptr [rbp - 0x18], rax
	mov	byte ptr [rbp - 0x29], 0x20
	jmp	.label_2441
.label_2442:
	mov	qword ptr [rbp - 0x18], 0
	mov	byte ptr [rbp - 0x29], 0xa
.label_2441:
	movsx	edi, byte ptr [rbp - 1]
	call	putchar_unlocked
	movsx	edi, byte ptr [rbp - 0x29]
	mov	dword ptr [rbp - 0x3c], eax
	call	putchar_unlocked
	mov	dword ptr [rbp - 0x40], eax
.label_2445:
	mov	rdi, qword ptr [rbp - 0x20]
	mov	rsi, qword ptr [rbp - 0x18]
	call	print_file_name_and_frills
	mov	rsi, qword ptr [rbp - 0x28]
	add	rsi, qword ptr [rbp - 0x18]
	mov	qword ptr [rbp - 0x18], rsi
	mov	qword ptr [rbp - 0x48], rax
	mov	rax, qword ptr [rbp - 0x10]
	add	rax, 1
	mov	qword ptr [rbp - 0x10], rax
	jmp	.label_2444
	.section	.text
	.align	32
	#Procedure 0x41b48c

	.globl print_with_separator
	.type print_with_separator, @function
print_with_separator:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x50
	mov	al, dil
	mov	byte ptr [rbp - 1], al
	mov	qword ptr [rbp - 0x18], 0
	mov	qword ptr [rbp - 0x10], 0
.label_2444:
	mov	rax, qword ptr [rbp - 0x10]
	cmp	rax,  qword ptr [word ptr [cwd_n_used]]
	jae	.label_2443
	mov	rax, qword ptr [rbp - 0x10]
	mov	rcx,  qword ptr [word ptr [sorted_file]]
	mov	rax, qword ptr [rcx + rax*8]
	mov	qword ptr [rbp - 0x20], rax
	cmp	qword ptr [word ptr [line_length]],  0
	je	.label_2446
	mov	rdi, qword ptr [rbp - 0x20]
	call	length_of_file_name_and_frills
	mov	qword ptr [rbp - 0x38], rax
	jmp	.label_2439
.label_2443:
	mov	edi, 0xa
	call	putchar_unlocked
	mov	dword ptr [rbp - 0x4c], eax
	add	rsp, 0x50
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x41b504
	.globl sub_41b504
	.type sub_41b504, @function
sub_41b504:

	nop	word ptr cs:[rax + rax]
.label_2450:
	mov	rax, qword ptr [rbp - 8]
	mov	rdi, qword ptr [rax + 0xb0]
	call	freecon
.label_2448:
	jmp	.label_2447
.label_2447:
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x41b52b
	.globl sub_41b52b
	.type sub_41b52b, @function
sub_41b52b:

	nop	
	.section	.text
	.align	32
	#Procedure 0x41b52c

	.globl free_ent
	.type free_ent, @function
free_ent:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	mov	qword ptr [rbp - 8], rdi
	mov	rdi, qword ptr [rbp - 8]
	mov	rdi, qword ptr [rdi]
	call	free
	mov	rdi, qword ptr [rbp - 8]
	mov	rdi, qword ptr [rdi + 8]
	call	free
	mov	rdi, qword ptr [rbp - 8]
	mov	rdi, qword ptr [rdi + 0x10]
	call	free
	movabs	rdi, OFFSET FLAT:UNKNOWN_SECURITY_CONTEXT
	mov	rax, qword ptr [rbp - 8]
	cmp	qword ptr [rax + 0xb0], rdi
	je	.label_2447
	call	is_smack_enabled
	test	al, 1
	jne	.label_2449
	jmp	.label_2450
.label_2449:
	mov	rax, qword ptr [rbp - 8]
	mov	rdi, qword ptr [rax + 0xb0]
	call	free
	jmp	.label_2448
.label_2452:
	mov	byte ptr [rbp - 1], 0
.label_2453:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x41b5ae
	.globl sub_41b5ae
	.type sub_41b5ae, @function
sub_41b5ae:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x41b5bc
	.globl c_isprint
	.type c_isprint, @function
c_isprint:

	push	rbp
	mov	rbp, rsp
	mov	dword ptr [rbp - 8], edi
	add	edi, -0x20
	sub	edi, 0x5e
	mov	dword ptr [rbp - 0xc], edi
	ja	.label_2452
	jmp	.label_2451
.label_2451:
	mov	byte ptr [rbp - 1], 1
	jmp	.label_2453
	.section	.text
	.align	32
	#Procedure 0x41b5e0

	.globl c_strcasecmp
	.type c_strcasecmp, @function
c_strcasecmp:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x30
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 0x18], rsi
	mov	rsi, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 0x20], rsi
	mov	rsi, qword ptr [rbp - 0x18]
	mov	qword ptr [rbp - 0x28], rsi
	mov	rsi, qword ptr [rbp - 0x20]
	cmp	rsi, qword ptr [rbp - 0x28]
	jne	.label_2454
	mov	dword ptr [rbp - 4], 0
	jmp	.label_2458
.label_2456:
	mov	rax, qword ptr [rbp - 0x20]
	add	rax, 1
	mov	qword ptr [rbp - 0x20], rax
	mov	rax, qword ptr [rbp - 0x28]
	add	rax, 1
	mov	qword ptr [rbp - 0x28], rax
	movzx	eax, byte ptr [rbp - 0x29]
	movzx	ecx, byte ptr [rbp - 0x2a]
	cmp	eax, ecx
	je	.label_2455
.label_2457:
	movzx	eax, byte ptr [rbp - 0x29]
	movzx	ecx, byte ptr [rbp - 0x2a]
	sub	eax, ecx
	mov	dword ptr [rbp - 4], eax
.label_2458:
	mov	eax, dword ptr [rbp - 4]
	add	rsp, 0x30
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x41b658
	.globl sub_41b658
	.type sub_41b658, @function
sub_41b658:

	nop	word ptr cs:[rax + rax]
.label_2454:
	jmp	.label_2455
.label_2455:
	mov	rax, qword ptr [rbp - 0x20]
	movzx	edi, byte ptr [rax]
	call	c_tolower
	mov	cl, al
	mov	byte ptr [rbp - 0x29], cl
	mov	rdx, qword ptr [rbp - 0x28]
	movzx	edi, byte ptr [rdx]
	call	c_tolower
	mov	cl, al
	mov	byte ptr [rbp - 0x2a], cl
	movzx	eax, byte ptr [rbp - 0x29]
	cmp	eax, 0
	jne	.label_2456
	jmp	.label_2457
	.section	.text
	.align	32
	#Procedure 0x41b6a0

	.globl rev_strcmp_df_size
	.type rev_strcmp_df_size, @function
rev_strcmp_df_size:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 0x18], rsi
	mov	rax, qword ptr [rbp - 0x10]
	mov	rdi, rax
	call	is_linked_directory
	and	al, 1
	mov	byte ptr [rbp - 0x19], al
	mov	rdi, qword ptr [rbp - 0x18]
	call	is_linked_directory
	and	al, 1
	mov	byte ptr [rbp - 0x1a], al
	test	byte ptr [rbp - 0x19], 1
	je	.label_2461
	test	byte ptr [rbp - 0x1a], 1
	jne	.label_2461
	mov	dword ptr [rbp - 4], 0xffffffff
	jmp	.label_2460
.label_2459:
	jmp	.label_2462
.label_2462:
	movabs	rdx, OFFSET FLAT:strcmp
	mov	rax, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rdi, rax
	mov	rsi, rcx
	call	cmp_size
	mov	dword ptr [rbp - 4], eax
.label_2460:
	mov	eax, dword ptr [rbp - 4]
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x41b71d
	.globl sub_41b71d
	.type sub_41b71d, @function
sub_41b71d:

	nop	dword ptr [rax]
.label_2461:
	test	byte ptr [rbp - 0x19], 1
	jne	.label_2459
	test	byte ptr [rbp - 0x1a], 1
	je	.label_2459
	mov	dword ptr [rbp - 4], 1
	jmp	.label_2460
	.section	.text
	.align	32
	#Procedure 0x41b740

	.globl hash_get_n_buckets
	.type hash_get_n_buckets, @function
hash_get_n_buckets:
	push	rbp
	mov	rbp, rsp
	mov	qword ptr [rbp - 8], rdi
	mov	rdi, qword ptr [rbp - 8]
	mov	rax, qword ptr [rdi + 0x10]
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x41b752
	.globl sub_41b752
	.type sub_41b752, @function
sub_41b752:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x41b760
	.globl quotearg_style_mem
	.type quotearg_style_mem, @function
quotearg_style_mem:

	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	xor	eax, eax
	mov	dword ptr [rbp - 4], edi
	mov	qword ptr [rbp - 0x10], rsi
	mov	qword ptr [rbp - 0x18], rdx
	mov	esi, dword ptr [rbp - 4]
	mov	rdx, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	edi, eax
	call	quotearg_n_style_mem
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x41b78d
	.globl sub_41b78d
	.type sub_41b78d, @function
sub_41b78d:

	nop	dword ptr [rax]
.label_2463:
	mov	rax, qword ptr [rbp - 0x20]
	xor	ecx, ecx
	mov	edx, ecx
	div	qword ptr [rbp - 0x10]
	mov	rax, rdx
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x41b7a1
	.globl sub_41b7a1
	.type sub_41b7a1, @function
sub_41b7a1:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x41b7a4

	.globl hash_pjw
	.type hash_pjw, @function
hash_pjw:
	push	rbp
	mov	rbp, rsp
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	qword ptr [rbp - 0x20], 0
	mov	rsi, qword ptr [rbp - 8]
	mov	qword ptr [rbp - 0x18], rsi
.label_2464:
	mov	rax, qword ptr [rbp - 0x18]
	cmp	byte ptr [rax], 0
	je	.label_2463
	mov	rax, qword ptr [rbp - 0x18]
	movsx	rax, byte ptr [rax]
	mov	rcx, qword ptr [rbp - 0x20]
	shl	rcx, 9
	mov	rdx, qword ptr [rbp - 0x20]
	shr	rdx, 0x37
	or	rcx, rdx
	add	rax, rcx
	mov	qword ptr [rbp - 0x20], rax
	mov	rax, qword ptr [rbp - 0x18]
	add	rax, 1
	mov	qword ptr [rbp - 0x18], rax
	jmp	.label_2464
.label_2466:
	movabs	rsi, OFFSET FLAT:label_2465
	lea	rdi, [rbp - 0x40]
	mov	rdx, qword ptr [rbp - 0x18]
	mov	al, 0
	call	sprintf
	lea	rdi, [rbp - 0x40]
	mov	dword ptr [rbp - 0x48], eax
	call	strlen
	mov	ecx, eax
	mov	dword ptr [rbp - 4], ecx
.label_2468:
	mov	eax, dword ptr [rbp - 4]
	add	rsp, 0x50
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x41b833
	.globl sub_41b833
	.type sub_41b833, @function
sub_41b833:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x41b841

	.globl format_user_or_group_width
	.type format_user_or_group_width, @function
format_user_or_group_width:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x50
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 0x18], rsi
	cmp	qword ptr [rbp - 0x10], 0
	je	.label_2466
	xor	esi, esi
	mov	rdi, qword ptr [rbp - 0x10]
	call	gnu_mbswidth
	xor	esi, esi
	mov	dword ptr [rbp - 0x1c], eax
	cmp	esi, dword ptr [rbp - 0x1c]
	jle	.label_2469
	xor	eax, eax
	mov	dword ptr [rbp - 0x44], eax
	jmp	.label_2467
.label_2469:
	mov	eax, dword ptr [rbp - 0x1c]
	mov	dword ptr [rbp - 0x44], eax
.label_2467:
	mov	eax, dword ptr [rbp - 0x44]
	mov	dword ptr [rbp - 4], eax
	jmp	.label_2468
	.section	.text
	.align	32
	#Procedure 0x41b890
	.globl xcalloc
	.type xcalloc, @function
xcalloc:

	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	movabs	rax, 0x7fffffffffffffff
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	xor	ecx, ecx
	mov	edx, ecx
	div	qword ptr [rbp - 0x10]
	cmp	rax, qword ptr [rbp - 8]
	jb	.label_2470
	mov	rdi, qword ptr [rbp - 8]
	mov	rsi, qword ptr [rbp - 0x10]
	call	calloc
	mov	qword ptr [rbp - 0x18], rax
	cmp	rax, 0
	jne	.label_2471
.label_2470:
	call	xalloc_die
.label_2471:
	mov	rax, qword ptr [rbp - 0x18]
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x41b8e6
	.globl sub_41b8e6
	.type sub_41b8e6, @function
sub_41b8e6:

	nop	word ptr cs:[rax + rax]
.label_2493:
	jmp	.label_2481
.label_2509:
	mov	rdi, qword ptr [rbp - 0xc0]
	mov	rsi, qword ptr [rbp - 0xb8]
	call	dev_ino_push
.label_2512:
	call	clear_files
	test	byte ptr [byte ptr [recursive]],  1
	jne	.label_2500
	test	byte ptr [byte ptr [print_dir_name]],  1
	je	.label_2498
.label_2500:
	test	byte ptr [byte ptr [print_dir.first]],  1
	jne	.label_2504
	jmp	.label_2508
.label_2508:
	mov	edi, 0xa
	call	putchar_unlocked
	mov	rcx,  qword ptr [word ptr [dired_pos]]
	add	rcx, 1
	mov	qword ptr [word ptr [dired_pos]],  rcx
	mov	dword ptr [rbp - 0x390], eax
	jmp	.label_2504
.label_2504:
	mov	byte ptr [byte ptr [print_dir.first]],  0
	test	byte ptr [byte ptr [dired]],  1
	je	.label_2501
	jmp	.label_2517
.label_2517:
	movabs	rdi, OFFSET FLAT:label_668
	mov	rsi,  qword ptr [word ptr [stdout]]
	call	fputs_unlocked
	mov	rsi,  qword ptr [word ptr [dired_pos]]
	add	rsi, 2
	mov	qword ptr [word ptr [dired_pos]],  rsi
	mov	dword ptr [rbp - 0x394], eax
	jmp	.label_2501
.label_2501:
	jmp	.label_2506
.label_2506:
	mov	qword ptr [rbp - 0xd0], 0
	test	byte ptr [byte ptr [print_hyperlink]],  1
	je	.label_2503
	mov	esi, 2
	mov	rdi, qword ptr [rbp - 8]
	call	canonicalize_filename_mode
	mov	qword ptr [rbp - 0xd0], rax
	cmp	qword ptr [rbp - 0xd0], 0
	jne	.label_2513
	movabs	rdi, OFFSET FLAT:label_1764
	mov	al, byte ptr [rbp - 0x11]
	mov	byte ptr [rbp - 0x395], al
	call	gettext
	mov	rdx, qword ptr [rbp - 8]
	mov	cl, byte ptr [rbp - 0x395]
	and	cl, 1
	movzx	edi, cl
	mov	rsi, rax
	call	file_failure
.label_2513:
	jmp	.label_2503
.label_2503:
	cmp	qword ptr [rbp - 0x10], 0
	je	.label_2505
	mov	rax, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 0x3a0], rax
	jmp	.label_2507
.label_2499:
	mov	rdi, qword ptr [rbp - 0xc0]
	mov	rsi, qword ptr [rbp - 0xb8]
	call	visit_dir
	test	al, 1
	jne	.label_2511
	jmp	.label_2509
.label_2511:
	movabs	rdi, OFFSET FLAT:label_2514
	call	gettext
	xor	edi, edi
	mov	esi, 3
	mov	rdx, qword ptr [rbp - 8]
	mov	qword ptr [rbp - 0x388], rax
	call	quotearg_n_style_colon
	xor	esi, esi
	mov	edi, esi
	mov	rdx, qword ptr [rbp - 0x388]
	mov	rcx, rax
	mov	al, 0
	call	error
	mov	rdi, qword ptr [rbp - 0x20]
	call	closedir
	mov	edi, 1
	mov	dword ptr [rbp - 0x38c], eax
	call	set_exit_status
	jmp	.label_2480
.label_2483:
	jmp	.label_2489
.label_2516:
	lea	rsi, [rbp - 0xc0]
	mov	rdi, qword ptr [rbp - 8]
	call	stat
	mov	dword ptr [rbp - 0x378], eax
.label_2510:
	mov	eax, dword ptr [rbp - 0x378]
	cmp	eax, 0
	jge	.label_2499
	movabs	rdi, OFFSET FLAT:label_2518
	mov	al, byte ptr [rbp - 0x11]
	mov	byte ptr [rbp - 0x379], al
	call	gettext
	mov	rdx, qword ptr [rbp - 8]
	mov	cl, byte ptr [rbp - 0x379]
	and	cl, 1
	movzx	edi, cl
	mov	rsi, rax
	call	file_failure
	mov	rdi, qword ptr [rbp - 0x20]
	call	closedir
	mov	dword ptr [rbp - 0x380], eax
	jmp	.label_2480
.label_2913:
	mov	dword ptr [rbp - 0xd4], 6
	jmp	.label_2475
.label_2481:
	jmp	.label_2479
.label_2479:
	call	process_signals
	jmp	.label_2491
.label_2909:
	mov	dword ptr [rbp - 0xd4], 2
	jmp	.label_2475
.label_2502:
	cmp	qword ptr [word ptr [active_dir_set]],  0
	je	.label_2512
	mov	rdi, qword ptr [rbp - 0x20]
	call	dirfd
	xor	ecx, ecx
	mov	dword ptr [rbp - 0xc4], eax
	cmp	ecx, dword ptr [rbp - 0xc4]
	jg	.label_2516
	lea	rsi, [rbp - 0xc0]
	mov	edi, dword ptr [rbp - 0xc4]
	call	fstat
	mov	dword ptr [rbp - 0x378], eax
	jmp	.label_2510
.label_2482:
	call	__errno_location
	cmp	dword ptr [rax], 0
	je	.label_2483
	movabs	rdi, OFFSET FLAT:label_2485
	mov	al, byte ptr [rbp - 0x11]
	mov	byte ptr [rbp - 0x3c5], al
	call	gettext
	mov	rdx, qword ptr [rbp - 8]
	mov	cl, byte ptr [rbp - 0x3c5]
	and	cl, 1
	movzx	edi, cl
	mov	rsi, rax
	call	file_failure
	call	__errno_location
	cmp	dword ptr [rax], 0x4b
	je	.label_2493
	jmp	.label_2489
.label_2489:
	mov	rdi, qword ptr [rbp - 0x20]
	call	closedir
	cmp	eax, 0
	je	.label_2496
	movabs	rdi, OFFSET FLAT:label_2476
	mov	al, byte ptr [rbp - 0x11]
	mov	byte ptr [rbp - 0x3c6], al
	call	gettext
	mov	rdx, qword ptr [rbp - 8]
	mov	cl, byte ptr [rbp - 0x3c6]
	and	cl, 1
	movzx	edi, cl
	mov	rsi, rax
	call	file_failure
.label_2496:
	call	sort_files
	test	byte ptr [byte ptr [recursive]],  1
	je	.label_2487
	xor	esi, esi
	mov	rdi, qword ptr [rbp - 8]
	call	extract_dirs_from_files
.label_2487:
	cmp	dword ptr [dword ptr [format]],  0
	je	.label_2492
	test	byte ptr [byte ptr [print_block_size]],  1
	je	.label_2473
.label_2492:
	jmp	.label_2494
.label_2494:
	test	byte ptr [byte ptr [dired]],  1
	je	.label_2484
	jmp	.label_2474
.label_2474:
	movabs	rdi, OFFSET FLAT:label_668
	mov	rsi,  qword ptr [word ptr [stdout]]
	call	fputs_unlocked
	mov	rsi,  qword ptr [word ptr [dired_pos]]
	add	rsi, 2
	mov	qword ptr [word ptr [dired_pos]],  rsi
	mov	dword ptr [rbp - 0x3cc], eax
	jmp	.label_2484
.label_2484:
	jmp	.label_2495
.label_2495:
	movabs	rdi, OFFSET FLAT:label_2490
	call	gettext
	mov	qword ptr [rbp - 0xe0], rax
	mov	rdi, qword ptr [rbp - 0xe0]
	mov	rsi,  qword ptr [word ptr [stdout]]
	call	fputs_unlocked
	mov	rdi, qword ptr [rbp - 0xe0]
	mov	dword ptr [rbp - 0x3d0], eax
	call	strlen
	add	rax,  qword ptr [word ptr [dired_pos]]
	mov	qword ptr [word ptr [dired_pos]],  rax
	jmp	.label_2472
.label_2472:
	mov	edi, 0x20
	call	putchar_unlocked
	mov	rcx,  qword ptr [word ptr [dired_pos]]
	add	rcx, 1
	mov	qword ptr [word ptr [dired_pos]],  rcx
	mov	dword ptr [rbp - 0x3d4], eax
	mov	eax, 0x200
	mov	ecx, eax
	lea	rsi, [rbp - 0x370]
	mov	rdi, qword ptr [rbp - 0x30]
	mov	edx,  dword ptr [dword ptr [human_output_opts]]
	mov	r8,  qword ptr [word ptr [output_block_size]]
	call	human_readable
	mov	qword ptr [rbp - 0xe0], rax
	mov	rdi, qword ptr [rbp - 0xe0]
	mov	rsi,  qword ptr [word ptr [stdout]]
	call	fputs_unlocked
	mov	rdi, qword ptr [rbp - 0xe0]
	mov	dword ptr [rbp - 0x3d8], eax
	call	strlen
	add	rax,  qword ptr [word ptr [dired_pos]]
	mov	qword ptr [word ptr [dired_pos]],  rax
	jmp	.label_2477
.label_2477:
	mov	edi, 0xa
	call	putchar_unlocked
	mov	rcx,  qword ptr [word ptr [dired_pos]]
	add	rcx, 1
	mov	qword ptr [word ptr [dired_pos]],  rcx
	mov	dword ptr [rbp - 0x3dc], eax
	jmp	.label_2473
.label_2473:
	cmp	qword ptr [word ptr [cwd_n_used]],  0
	je	.label_2480
	call	print_current_files
.label_2480:
	add	rsp, 0x3f0
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x41bde7
	.globl sub_41bde7
	.type sub_41bde7, @function
sub_41bde7:

	nop	dword ptr [rax]
.label_2505:
	mov	rax, qword ptr [rbp - 8]
	mov	qword ptr [rbp - 0x3a0], rax
.label_2507:
	mov	rax, qword ptr [rbp - 0x3a0]
	mov	edx, 0xffffffff
	xor	ecx, ecx
	mov	r8d, 1
	movabs	r9, OFFSET FLAT:subdired_obstack
	mov	rsi,  qword ptr [word ptr [dirname_quoting_options]]
	mov	rdi, qword ptr [rbp - 0xd0]
	mov	qword ptr [rbp - 0x3a8], rdi
	mov	rdi, rax
	mov	rax, qword ptr [rbp - 0x3a8]
	mov	qword ptr [rsp], rax
	call	quote_name
	mov	rdi, qword ptr [rbp - 0xd0]
	mov	qword ptr [rbp - 0x3b0], rax
	call	free
	movabs	rdi, OFFSET FLAT:label_2497
	mov	rsi,  qword ptr [word ptr [stdout]]
	call	fputs_unlocked
	mov	rsi,  qword ptr [word ptr [dired_pos]]
	add	rsi, 2
	mov	qword ptr [word ptr [dired_pos]],  rsi
	mov	dword ptr [rbp - 0x3b4], eax
	jmp	.label_2498
.label_2498:
	jmp	.label_2491
.label_2491:
	call	__errno_location
	mov	dword ptr [rax], 0
	mov	rdi, qword ptr [rbp - 0x20]
	call	readdir
	mov	qword ptr [rbp - 0x28], rax
	cmp	qword ptr [rbp - 0x28], 0
	je	.label_2482
	mov	rax, qword ptr [rbp - 0x28]
	add	rax, 0x13
	mov	rdi, rax
	call	file_ignored
	test	al, 1
	jne	.label_2478
	mov	dword ptr [rbp - 0xd4], 0
	mov	rax, qword ptr [rbp - 0x28]
	movzx	ecx, byte ptr [rax + 0x12]
	dec	ecx
	mov	eax, ecx
	sub	ecx, 0xd
	mov	qword ptr [rbp - 0x3c0], rax
	mov	dword ptr [rbp - 0x3c4], ecx
	ja	.label_2475
	mov	rax, qword ptr [rbp - 0x3c0]
	mov	rcx,  qword ptr [word ptr [+ (rax * 8) + label_2488]]
	jmp	rcx
.label_2911:
	mov	dword ptr [rbp - 0xd4], 4
	jmp	.label_2475
.label_2910:
	mov	dword ptr [rbp - 0xd4], 3
	jmp	.label_2475
	.section	.text
	.align	32
	#Procedure 0x41bf24

	.globl print_dir
	.type print_dir, @function
print_dir:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x3f0
	mov	al, dl
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	and	al, 1
	mov	byte ptr [rbp - 0x11], al
	mov	qword ptr [rbp - 0x30], 0
	call	__errno_location
	mov	dword ptr [rax], 0
	mov	rdi, qword ptr [rbp - 8]
	call	opendir
	mov	qword ptr [rbp - 0x20], rax
	cmp	qword ptr [rbp - 0x20], 0
	jne	.label_2502
	movabs	rdi, OFFSET FLAT:label_2515
	mov	al, byte ptr [rbp - 0x11]
	mov	byte ptr [rbp - 0x371], al
	call	gettext
	mov	rdx, qword ptr [rbp - 8]
	mov	cl, byte ptr [rbp - 0x371]
	and	cl, 1
	movzx	edi, cl
	mov	rsi, rax
	call	file_failure
	jmp	.label_2480
.label_2915:
	mov	dword ptr [rbp - 0xd4], 8
.label_2475:
	xor	eax, eax
	mov	edx, eax
	xor	ecx, ecx
	mov	rsi, qword ptr [rbp - 0x28]
	add	rsi, 0x13
	mov	eax, dword ptr [rbp - 0xd4]
	mov	r8, qword ptr [rbp - 8]
	mov	rdi, rsi
	mov	esi, eax
	call	gobble_file
	add	rax, qword ptr [rbp - 0x30]
	mov	qword ptr [rbp - 0x30], rax
	cmp	dword ptr [dword ptr [format]],  1
	jne	.label_2486
	cmp	dword ptr [dword ptr [sort_type]],  -1
	jne	.label_2486
	test	byte ptr [byte ptr [print_block_size]],  1
	jne	.label_2486
	test	byte ptr [byte ptr [recursive]],  1
	jne	.label_2486
	call	sort_files
	call	print_current_files
	call	clear_files
.label_2486:
	jmp	.label_2478
.label_2478:
	jmp	.label_2479
.label_2914:
	mov	dword ptr [rbp - 0xd4], 7
	jmp	.label_2475
.label_2912:
	mov	dword ptr [rbp - 0xd4], 5
	jmp	.label_2475
.label_2908:
	mov	dword ptr [rbp - 0xd4], 1
	jmp	.label_2475
	.section	.text
	.align	32
	#Procedure 0x41c050

	.globl print_type_indicator
	.type print_type_indicator, @function
print_type_indicator:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	mov	al, dil
	and	al, 1
	mov	byte ptr [rbp - 1], al
	mov	dword ptr [rbp - 8], esi
	mov	dword ptr [rbp - 0xc], edx
	mov	al, byte ptr [rbp - 1]
	mov	esi, dword ptr [rbp - 8]
	mov	edx, dword ptr [rbp - 0xc]
	and	al, 1
	movzx	edi, al
	call	get_type_indicator
	mov	byte ptr [rbp - 0xd], al
	cmp	byte ptr [rbp - 0xd], 0
	je	.label_2519
	jmp	.label_2520
.label_2520:
	movsx	edi, byte ptr [rbp - 0xd]
	call	putchar_unlocked
	mov	rcx,  qword ptr [word ptr [dired_pos]]
	add	rcx, 1
	mov	qword ptr [word ptr [dired_pos]],  rcx
	mov	dword ptr [rbp - 0x14], eax
	jmp	.label_2519
.label_2519:
	cmp	byte ptr [rbp - 0xd], 0
	setne	al
	xor	al, 0xff
	xor	al, 0xff
	and	al, 1
	movzx	eax, al
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x41c0c6
	.globl sub_41c0c6
	.type sub_41c0c6, @function
sub_41c0c6:

	nop	word ptr cs:[rax + rax]
.label_2524:
	test	byte ptr [rbp - 0x19], 1
	jne	.label_2521
	test	byte ptr [rbp - 0x1a], 1
	je	.label_2521
	mov	dword ptr [rbp - 4], 1
	jmp	.label_2523
.label_2521:
	jmp	.label_2522
.label_2522:
	movabs	rdx, OFFSET FLAT:strcmp
	mov	rax, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	rdi, rax
	mov	rsi, rcx
	call	cmp_mtime
	mov	dword ptr [rbp - 4], eax
.label_2523:
	mov	eax, dword ptr [rbp - 4]
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x41c11e
	.globl sub_41c11e
	.type sub_41c11e, @function
sub_41c11e:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x41c121

	.globl strcmp_df_mtime
	.type strcmp_df_mtime, @function
strcmp_df_mtime:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 0x18], rsi
	mov	rax, qword ptr [rbp - 0x10]
	mov	rdi, rax
	call	is_linked_directory
	and	al, 1
	mov	byte ptr [rbp - 0x19], al
	mov	rdi, qword ptr [rbp - 0x18]
	call	is_linked_directory
	and	al, 1
	mov	byte ptr [rbp - 0x1a], al
	test	byte ptr [rbp - 0x19], 1
	je	.label_2524
	test	byte ptr [rbp - 0x1a], 1
	jne	.label_2524
	mov	dword ptr [rbp - 4], 0xffffffff
	jmp	.label_2523
.label_2527:
	jmp	.label_2528
.label_2528:
	movabs	rdx, OFFSET FLAT:strcmp
	mov	rax, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rdi, rax
	mov	rsi, rcx
	call	cmp_mtime
	mov	dword ptr [rbp - 4], eax
.label_2525:
	mov	eax, dword ptr [rbp - 4]
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x41c19e
	.globl sub_41c19e
	.type sub_41c19e, @function
sub_41c19e:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x41c1a1

	.globl rev_strcmp_df_mtime
	.type rev_strcmp_df_mtime, @function
rev_strcmp_df_mtime:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 0x18], rsi
	mov	rax, qword ptr [rbp - 0x10]
	mov	rdi, rax
	call	is_linked_directory
	and	al, 1
	mov	byte ptr [rbp - 0x19], al
	mov	rdi, qword ptr [rbp - 0x18]
	call	is_linked_directory
	and	al, 1
	mov	byte ptr [rbp - 0x1a], al
	test	byte ptr [rbp - 0x19], 1
	je	.label_2526
	test	byte ptr [rbp - 0x1a], 1
	jne	.label_2526
	mov	dword ptr [rbp - 4], 0xffffffff
	jmp	.label_2525
.label_2526:
	test	byte ptr [rbp - 0x19], 1
	jne	.label_2527
	test	byte ptr [rbp - 0x1a], 1
	je	.label_2527
	mov	dword ptr [rbp - 4], 1
	jmp	.label_2525
.label_2531:
	mov	rax, qword ptr [rbp - 0x20]
	add	rax, 1
	mov	rdi, qword ptr [rbp - 0x18]
	mov	qword ptr [rbp - 0x30], rax
	call	strlen
	mov	rdi, qword ptr [rbp - 0x30]
	add	rdi, rax
	add	rdi, 1
	call	xmalloc
	mov	qword ptr [rbp - 0x28], rax
	mov	rax, qword ptr [rbp - 0x20]
	sub	rax, 1
	mov	rdi, qword ptr [rbp - 0x10]
	movsx	ecx, byte ptr [rdi + rax]
	cmp	ecx, 0x2f
	je	.label_2533
	mov	rax, qword ptr [rbp - 0x20]
	add	rax, 1
	mov	qword ptr [rbp - 0x20], rax
.label_2533:
	mov	rdi, qword ptr [rbp - 0x28]
	mov	rsi, qword ptr [rbp - 0x10]
	mov	rdx, qword ptr [rbp - 0x20]
	call	stpncpy
	mov	rsi, qword ptr [rbp - 0x18]
	mov	rdi, rax
	call	stpcpy
	mov	rdx, qword ptr [rbp - 0x28]
	mov	qword ptr [rbp - 8], rdx
	mov	qword ptr [rbp - 0x38], rax
.label_2529:
	mov	rax, qword ptr [rbp - 8]
	add	rsp, 0x40
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x41c291
	.globl sub_41c291
	.type sub_41c291, @function
sub_41c291:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x41c29c

	.globl make_link_name
	.type make_link_name, @function
make_link_name:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x40
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 0x18], rsi
	cmp	qword ptr [rbp - 0x18], 0
	jne	.label_2530
	mov	qword ptr [rbp - 8], 0
	jmp	.label_2529
.label_2532:
	mov	rdi, qword ptr [rbp - 0x10]
	call	dir_len
	mov	qword ptr [rbp - 0x20], rax
	cmp	qword ptr [rbp - 0x20], 0
	jne	.label_2531
	mov	rdi, qword ptr [rbp - 0x18]
	call	xstrdup
	mov	qword ptr [rbp - 8], rax
	jmp	.label_2529
.label_2530:
	mov	rax, qword ptr [rbp - 0x18]
	movsx	ecx, byte ptr [rax]
	cmp	ecx, 0x2f
	jne	.label_2532
	mov	rdi, qword ptr [rbp - 0x18]
	call	xstrdup
	mov	qword ptr [rbp - 8], rax
	jmp	.label_2529
	.section	.text
	.align	32
	#Procedure 0x41c310

	.globl rev_strcmp_df_name
	.type rev_strcmp_df_name, @function
rev_strcmp_df_name:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 0x18], rsi
	mov	rax, qword ptr [rbp - 0x10]
	mov	rdi, rax
	call	is_linked_directory
	and	al, 1
	mov	byte ptr [rbp - 0x19], al
	mov	rdi, qword ptr [rbp - 0x18]
	call	is_linked_directory
	and	al, 1
	mov	byte ptr [rbp - 0x1a], al
	test	byte ptr [rbp - 0x19], 1
	je	.label_2536
	test	byte ptr [rbp - 0x1a], 1
	jne	.label_2536
	mov	dword ptr [rbp - 4], 0xffffffff
	jmp	.label_2535
.label_2536:
	test	byte ptr [rbp - 0x19], 1
	jne	.label_2534
	test	byte ptr [rbp - 0x1a], 1
	je	.label_2534
	mov	dword ptr [rbp - 4], 1
	jmp	.label_2535
.label_2534:
	jmp	.label_2537
.label_2537:
	movabs	rdx, OFFSET FLAT:strcmp
	mov	rax, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rdi, rax
	mov	rsi, rcx
	call	cmp_name
	mov	dword ptr [rbp - 4], eax
.label_2535:
	mov	eax, dword ptr [rbp - 4]
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x41c3ad
	.globl sub_41c3ad
	.type sub_41c3ad, @function
sub_41c3ad:

	nop	dword ptr [rax]
.label_2538:
	mov	rax, qword ptr [rbp - 0x10]
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x41c3ba
	.globl sub_41c3ba
	.type sub_41c3ba, @function
sub_41c3ba:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x41c3c7

	.globl dir_name
	.type dir_name, @function
dir_name:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	mov	qword ptr [rbp - 8], rdi
	mov	rdi, qword ptr [rbp - 8]
	call	mdir_name
	mov	qword ptr [rbp - 0x10], rax
	cmp	qword ptr [rbp - 0x10], 0
	jne	.label_2538
	call	xalloc_die
	.section	.text
	.align	32
	#Procedure 0x41c3f0

	.globl _obstack_begin_worker
	.type _obstack_begin_worker, @function
_obstack_begin_worker:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x30
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	qword ptr [rbp - 0x18], rdx
	cmp	qword ptr [rbp - 0x18], 0
	jne	.label_2539
	mov	qword ptr [rbp - 0x18], 0x10
.label_2539:
	cmp	qword ptr [rbp - 0x10], 0
	jne	.label_2541
	mov	eax, 0x1000
	mov	dword ptr [rbp - 0x24], 0x20
	sub	eax, dword ptr [rbp - 0x24]
	movsxd	rcx, eax
	mov	qword ptr [rbp - 0x10], rcx
.label_2541:
	mov	rax, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rbp - 8]
	mov	qword ptr [rcx], rax
	mov	rax, qword ptr [rbp - 0x18]
	sub	rax, 1
	mov	rcx, qword ptr [rbp - 8]
	mov	qword ptr [rcx + 0x30], rax
	mov	rdi, qword ptr [rbp - 8]
	mov	rax, qword ptr [rbp - 8]
	mov	rsi, qword ptr [rax]
	call	call_chunkfun
	mov	rcx, qword ptr [rbp - 8]
	mov	qword ptr [rcx + 8], rax
	mov	qword ptr [rbp - 0x20], rax
	cmp	qword ptr [rbp - 0x20], 0
	jne	.label_2540
	call	qword ptr [word ptr [obstack_alloc_failed_handler]]
.label_2540:
	mov	eax, 1
	xor	ecx, ecx
	mov	edx, ecx
	mov	rsi, qword ptr [rbp - 0x20]
	add	rsi, 0x10
	sub	rsi, 0
	mov	rdi, qword ptr [rbp - 0x18]
	sub	rdi, 1
	add	rsi, rdi
	mov	rdi, qword ptr [rbp - 0x18]
	sub	rdi, 1
	xor	rdi, 0xffffffffffffffff
	and	rsi, rdi
	add	rdx, rsi
	mov	rsi, qword ptr [rbp - 8]
	mov	qword ptr [rsi + 0x10], rdx
	mov	rsi, qword ptr [rbp - 8]
	mov	qword ptr [rsi + 0x18], rdx
	mov	rdx, qword ptr [rbp - 0x20]
	mov	rsi, qword ptr [rbp - 8]
	add	rdx, qword ptr [rsi]
	mov	rsi, qword ptr [rbp - 0x20]
	mov	qword ptr [rsi], rdx
	mov	rsi, qword ptr [rbp - 8]
	mov	qword ptr [rsi + 0x20], rdx
	mov	rdx, qword ptr [rbp - 0x20]
	mov	qword ptr [rdx + 8], 0
	mov	rdx, qword ptr [rbp - 8]
	mov	r8b, byte ptr [rdx + 0x50]
	and	r8b, 0xfd
	mov	byte ptr [rdx + 0x50], r8b
	mov	rdx, qword ptr [rbp - 8]
	mov	r8b, byte ptr [rdx + 0x50]
	and	r8b, 0xfb
	mov	byte ptr [rdx + 0x50], r8b
	add	rsp, 0x30
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x41c50f
	.globl sub_41c50f
	.type sub_41c50f, @function
sub_41c50f:

	nop	
	.section	.text
	.align	32
	#Procedure 0x41c510
	.globl rotl_sz
	.type rotl_sz, @function
rotl_sz:

	push	rbp
	mov	rbp, rsp
	mov	eax, 0x40
	mov	ecx, eax
	mov	qword ptr [rbp - 8], rdi
	mov	dword ptr [rbp - 0xc], esi
	mov	rdi, qword ptr [rbp - 8]
	mov	eax, dword ptr [rbp - 0xc]
	mov	edx, eax
	mov	qword ptr [rbp - 0x18], rcx
	mov	rcx, rdx
	shl	rdi, cl
	mov	rdx, qword ptr [rbp - 8]
	movsxd	r8, dword ptr [rbp - 0xc]
	mov	r9, qword ptr [rbp - 0x18]
	sub	r9, r8
	mov	rcx, r9
	shr	rdx, cl
	or	rdi, rdx
	mov	rax, rdi
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x41c552
	.globl sub_41c552
	.type sub_41c552, @function
sub_41c552:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x41c560
	.globl fsetfilecon
	.type fsetfilecon, @function
fsetfilecon:

	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	mov	dword ptr [rbp - 4], edi
	mov	qword ptr [rbp - 0x10], rsi
	call	__errno_location
	mov	edi, 0xffffffff
	mov	dword ptr [rax], 0x5f
	mov	eax, edi
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x41c587
	.globl sub_41c587
	.type sub_41c587, @function
sub_41c587:

	nop	word ptr [rax + rax]
.label_2543:
	jmp	.label_2542
.label_2542:
	movabs	rdx, OFFSET FLAT:strcmp
	mov	rax, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	rdi, rax
	mov	rsi, rcx
	call	cmp_extension
	mov	dword ptr [rbp - 4], eax
.label_2544:
	mov	eax, dword ptr [rbp - 4]
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x41c5be
	.globl sub_41c5be
	.type sub_41c5be, @function
sub_41c5be:

	nop	dword ptr [rax]
.label_2545:
	test	byte ptr [rbp - 0x19], 1
	jne	.label_2543
	test	byte ptr [rbp - 0x1a], 1
	je	.label_2543
	mov	dword ptr [rbp - 4], 1
	jmp	.label_2544
	.section	.text
	.align	32
	#Procedure 0x41c5e1

	.globl strcmp_df_extension
	.type strcmp_df_extension, @function
strcmp_df_extension:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 0x18], rsi
	mov	rax, qword ptr [rbp - 0x10]
	mov	rdi, rax
	call	is_linked_directory
	and	al, 1
	mov	byte ptr [rbp - 0x19], al
	mov	rdi, qword ptr [rbp - 0x18]
	call	is_linked_directory
	and	al, 1
	mov	byte ptr [rbp - 0x1a], al
	test	byte ptr [rbp - 0x19], 1
	je	.label_2545
	test	byte ptr [rbp - 0x1a], 1
	jne	.label_2545
	mov	dword ptr [rbp - 4], 0xffffffff
	jmp	.label_2544
.label_2567:
	test	byte ptr [rbp - 0x59], 1
	je	.label_2560
	mov	rdi, qword ptr [rbp - 0x18]
	call	strlen
	mov	qword ptr [rbp - 0x50], rax
	mov	rax, qword ptr [rbp - 0x10]
	cmp	rax, qword ptr [rbp - 0x50]
	ja	.label_2549
	mov	rax, qword ptr [rbp - 0x50]
	add	rax, 1
	mov	rdi, rax
	call	xmalloc
	mov	qword ptr [rbp - 0x40], rax
.label_2549:
	mov	rdi, qword ptr [rbp - 0x40]
	mov	rsi, qword ptr [rbp - 0x18]
	mov	rax, qword ptr [rbp - 0x50]
	add	rax, 1
	mov	rdx, rax
	call	memcpy
	mov	byte ptr [rbp - 0x51], 0
	jmp	.label_2546
.label_2575:
	mov	rax, qword ptr [rbp - 0x40]
	mov	qword ptr [rbp - 0xb0], rax
	mov	rax, qword ptr [rbp - 0x40]
	add	rax, qword ptr [rbp - 0x50]
	mov	qword ptr [rbp - 0xb8], rax
	mov	qword ptr [rbp - 0x48], 0
.label_2580:
	mov	rax, qword ptr [rbp - 0xb0]
	cmp	rax, qword ptr [rbp - 0xb8]
	jae	.label_2557
	mov	rax, qword ptr [rbp - 0xb0]
	movsx	edi, byte ptr [rax]
	call	to_uchar
	movzx	edi, al
	movsxd	rcx, edi
	mov	qword ptr [rbp - 0xf0], rcx
	call	__ctype_b_loc
	mov	rax, qword ptr [rax]
	mov	rcx, qword ptr [rbp - 0xf0]
	movzx	edi, word ptr [rax + rcx*2]
	and	edi, 0x4000
	cmp	edi, 0
	je	.label_2576
	mov	rax, qword ptr [rbp - 0x48]
	add	rax, 1
	mov	qword ptr [rbp - 0x48], rax
.label_2576:
	mov	rax, qword ptr [rbp - 0xb0]
	add	rax, 1
	mov	qword ptr [rbp - 0xb0], rax
	jmp	.label_2580
	.section	.text
	.align	32
	#Procedure 0x41c721

	.globl quote_name_buf
	.type quote_name_buf, @function
quote_name_buf:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x100
	mov	rax, qword ptr [rbp + 0x10]
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	qword ptr [rbp - 0x18], rdx
	mov	qword ptr [rbp - 0x20], rcx
	mov	dword ptr [rbp - 0x24], r8d
	mov	qword ptr [rbp - 0x30], r9
	mov	qword ptr [rbp - 0x38], rax
	mov	rax, qword ptr [rbp - 8]
	mov	rax, qword ptr [rax]
	mov	qword ptr [rbp - 0x40], rax
	mov	qword ptr [rbp - 0x50], 0
	mov	rdi, qword ptr [rbp - 0x20]
	call	get_quoting_style
	xor	r8d, r8d
	mov	r10b, r8b
	mov	dword ptr [rbp - 0x58], eax
	test	byte ptr [byte ptr [qmark_funny_chars]],  1
	mov	byte ptr [rbp - 0xb9], r10b
	je	.label_2577
	mov	al, 1
	cmp	dword ptr [rbp - 0x58], 1
	mov	byte ptr [rbp - 0xba], al
	je	.label_2551
	mov	al, 1
	cmp	dword ptr [rbp - 0x58], 2
	mov	byte ptr [rbp - 0xba], al
	je	.label_2551
	cmp	dword ptr [rbp - 0x58], 0
	sete	al
	mov	byte ptr [rbp - 0xba], al
.label_2551:
	mov	al, byte ptr [rbp - 0xba]
	mov	byte ptr [rbp - 0xb9], al
.label_2577:
	mov	al, byte ptr [rbp - 0xb9]
	and	al, 1
	mov	byte ptr [rbp - 0x59], al
	cmp	dword ptr [rbp - 0x24], 0
	je	.label_2567
	mov	rcx, -1
	mov	rdi, qword ptr [rbp - 0x40]
	mov	rsi, qword ptr [rbp - 0x10]
	mov	rdx, qword ptr [rbp - 0x18]
	mov	r8, qword ptr [rbp - 0x20]
	call	quotearg_buffer
	mov	qword ptr [rbp - 0x50], rax
	mov	rax, qword ptr [rbp - 0x10]
	cmp	rax, qword ptr [rbp - 0x50]
	ja	.label_2581
	mov	rax, qword ptr [rbp - 0x50]
	add	rax, 1
	mov	rdi, rax
	call	xmalloc
	mov	rcx, -1
	mov	qword ptr [rbp - 0x40], rax
	mov	rdi, qword ptr [rbp - 0x40]
	mov	rax, qword ptr [rbp - 0x50]
	add	rax, 1
	mov	rdx, qword ptr [rbp - 0x18]
	mov	r8, qword ptr [rbp - 0x20]
	mov	rsi, rax
	call	quotearg_buffer
	mov	qword ptr [rbp - 0xc8], rax
.label_2581:
	mov	al, 1
	mov	rcx, qword ptr [rbp - 0x18]
	movsx	edx, byte ptr [rcx]
	mov	rcx, qword ptr [rbp - 0x40]
	movsx	esi, byte ptr [rcx]
	cmp	edx, esi
	mov	byte ptr [rbp - 0xc9], al
	jne	.label_2568
	mov	rdi, qword ptr [rbp - 0x18]
	call	strlen
	cmp	rax, qword ptr [rbp - 0x50]
	setne	cl
	mov	byte ptr [rbp - 0xc9], cl
.label_2568:
	mov	al, byte ptr [rbp - 0xc9]
	and	al, 1
	mov	byte ptr [rbp - 0x51], al
	jmp	.label_2559
.label_2550:
	mov	rax, qword ptr [rbp - 0x50]
	mov	qword ptr [rbp - 0x48], rax
.label_2571:
	jmp	.label_2548
.label_2560:
	mov	rdi, qword ptr [rbp - 0x18]
	call	strlen
	mov	qword ptr [rbp - 0x50], rax
	mov	rax, qword ptr [rbp - 0x18]
	mov	qword ptr [rbp - 0x40], rax
	mov	byte ptr [rbp - 0x51], 0
.label_2546:
	jmp	.label_2559
.label_2559:
	test	byte ptr [rbp - 0x59], 1
	je	.label_2562
	call	__ctype_get_mb_cur_max
	cmp	rax, 1
	jbe	.label_2566
	mov	rax, qword ptr [rbp - 0x40]
	mov	qword ptr [rbp - 0x68], rax
	mov	rax, qword ptr [rbp - 0x40]
	add	rax, qword ptr [rbp - 0x50]
	mov	qword ptr [rbp - 0x70], rax
	mov	rax, qword ptr [rbp - 0x40]
	mov	qword ptr [rbp - 0x78], rax
	mov	qword ptr [rbp - 0x48], 0
.label_2572:
	mov	rax, qword ptr [rbp - 0x68]
	cmp	rax, qword ptr [rbp - 0x70]
	jae	.label_2579
	mov	rax, qword ptr [rbp - 0x68]
	movsx	ecx, byte ptr [rax]
	add	ecx, -0x20
	mov	eax, ecx
	sub	ecx, 0x5e
	mov	qword ptr [rbp - 0xd8], rax
	mov	dword ptr [rbp - 0xdc], ecx
	ja	.label_2583
	mov	rax, qword ptr [rbp - 0xd8]
	mov	rcx,  qword ptr [word ptr [+ (rax * 8) + label_2554]]
	jmp	rcx
.label_2564:
	cmp	qword ptr [rbp - 0x90], -2
	jne	.label_2561
	mov	rax, qword ptr [rbp - 0x70]
	mov	qword ptr [rbp - 0x68], rax
	mov	rax, qword ptr [rbp - 0x78]
	mov	rcx, rax
	add	rcx, 1
	mov	qword ptr [rbp - 0x78], rcx
	mov	byte ptr [rax], 0x3f
	mov	rax, qword ptr [rbp - 0x48]
	add	rax, 1
	mov	qword ptr [rbp - 0x48], rax
	jmp	.label_2565
.label_2562:
	cmp	qword ptr [rbp - 0x30], 0
	je	.label_2556
	call	__ctype_get_mb_cur_max
	cmp	rax, 1
	jbe	.label_2575
	xor	edx, edx
	mov	rdi, qword ptr [rbp - 0x40]
	mov	rsi, qword ptr [rbp - 0x50]
	call	mbsnwidth
	movsxd	rsi, eax
	mov	qword ptr [rbp - 0x48], rsi
	jmp	.label_2553
.label_2557:
	jmp	.label_2553
.label_2553:
	jmp	.label_2556
.label_2556:
	jmp	.label_2548
.label_2548:
	xor	eax, eax
	mov	cl, al
	test	byte ptr [byte ptr [align_variable_outer_quotes]],  1
	mov	byte ptr [rbp - 0xf1], cl
	je	.label_2558
	xor	eax, eax
	mov	cl, al
	test	byte ptr [byte ptr [cwd_some_quoted]],  1
	mov	byte ptr [rbp - 0xf1], cl
	je	.label_2558
	mov	al, byte ptr [rbp - 0x51]
	xor	al, 0xff
	mov	byte ptr [rbp - 0xf1], al
.label_2558:
	mov	al, byte ptr [rbp - 0xf1]
	mov	rcx, qword ptr [rbp - 0x38]
	and	al, 1
	mov	byte ptr [rcx], al
	cmp	qword ptr [rbp - 0x30], 0
	je	.label_2578
	mov	rax, qword ptr [rbp - 0x48]
	mov	rcx, qword ptr [rbp - 0x30]
	mov	qword ptr [rcx], rax
.label_2578:
	mov	rax, qword ptr [rbp - 0x40]
	mov	rcx, qword ptr [rbp - 8]
	mov	qword ptr [rcx], rax
	mov	rax, qword ptr [rbp - 0x50]
	add	rsp, 0x100
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x41ca25
	.globl sub_41ca25
	.type sub_41ca25, @function
sub_41ca25:

	nop	word ptr cs:[rax + rax]
.label_2579:
	mov	rax, qword ptr [rbp - 0x78]
	mov	rcx, qword ptr [rbp - 0x40]
	sub	rax, rcx
	mov	qword ptr [rbp - 0x50], rax
	jmp	.label_2571
.label_2977:
	mov	rax, qword ptr [rbp - 0x68]
	mov	rcx, rax
	add	rcx, 1
	mov	qword ptr [rbp - 0x68], rcx
	mov	dl, byte ptr [rax]
	mov	rax, qword ptr [rbp - 0x78]
	mov	rcx, rax
	add	rcx, 1
	mov	qword ptr [rbp - 0x78], rcx
	mov	byte ptr [rax], dl
	mov	rax, qword ptr [rbp - 0x48]
	add	rax, 1
	mov	qword ptr [rbp - 0x48], rax
	jmp	.label_2569
.label_2566:
	mov	rax, qword ptr [rbp - 0x40]
	mov	qword ptr [rbp - 0xa0], rax
	mov	rax, qword ptr [rbp - 0x40]
	add	rax, qword ptr [rbp - 0x50]
	mov	qword ptr [rbp - 0xa8], rax
.label_2582:
	mov	rax, qword ptr [rbp - 0xa0]
	cmp	rax, qword ptr [rbp - 0xa8]
	jae	.label_2550
	mov	rax, qword ptr [rbp - 0xa0]
	movsx	edi, byte ptr [rax]
	call	to_uchar
	movzx	edi, al
	movsxd	rcx, edi
	mov	qword ptr [rbp - 0xe8], rcx
	call	__ctype_b_loc
	mov	rax, qword ptr [rax]
	mov	rcx, qword ptr [rbp - 0xe8]
	movzx	edi, word ptr [rax + rcx*2]
	and	edi, 0x4000
	cmp	edi, 0
	jne	.label_2570
	mov	rax, qword ptr [rbp - 0xa0]
	mov	byte ptr [rax], 0x3f
.label_2570:
	mov	rax, qword ptr [rbp - 0xa0]
	add	rax, 1
	mov	qword ptr [rbp - 0xa0], rax
	jmp	.label_2582
.label_2583:
	xor	esi, esi
	mov	eax, 8
	mov	edx, eax
	lea	rcx, [rbp - 0x80]
	mov	rdi, rcx
	call	memset
.label_2563:
	lea	rdi, [rbp - 0x84]
	lea	rcx, [rbp - 0x80]
	mov	rsi, qword ptr [rbp - 0x68]
	mov	rax, qword ptr [rbp - 0x70]
	mov	rdx, qword ptr [rbp - 0x68]
	sub	rax, rdx
	mov	rdx, rax
	call	rpl_mbrtowc
	mov	qword ptr [rbp - 0x90], rax
	cmp	qword ptr [rbp - 0x90], -1
	jne	.label_2564
	mov	rax, qword ptr [rbp - 0x68]
	add	rax, 1
	mov	qword ptr [rbp - 0x68], rax
	mov	rax, qword ptr [rbp - 0x78]
	mov	rcx, rax
	add	rcx, 1
	mov	qword ptr [rbp - 0x78], rcx
	mov	byte ptr [rax], 0x3f
	mov	rax, qword ptr [rbp - 0x48]
	add	rax, 1
	mov	qword ptr [rbp - 0x48], rax
	jmp	.label_2565
.label_2547:
	mov	rax, qword ptr [rbp - 0x90]
	add	rax, qword ptr [rbp - 0x68]
	mov	qword ptr [rbp - 0x68], rax
	mov	rax, qword ptr [rbp - 0x78]
	mov	rcx, rax
	add	rcx, 1
	mov	qword ptr [rbp - 0x78], rcx
	mov	byte ptr [rax], 0x3f
	mov	rax, qword ptr [rbp - 0x48]
	add	rax, 1
	mov	qword ptr [rbp - 0x48], rax
.label_2574:
	jmp	.label_2552
.label_2552:
	lea	rdi, [rbp - 0x80]
	call	mbsinit
	cmp	eax, 0
	setne	cl
	xor	cl, 0xff
	test	cl, 1
	jne	.label_2563
.label_2565:
	jmp	.label_2569
.label_2569:
	jmp	.label_2572
.label_2561:
	cmp	qword ptr [rbp - 0x90], 0
	jne	.label_2573
	mov	qword ptr [rbp - 0x90], 1
.label_2573:
	mov	edi, dword ptr [rbp - 0x84]
	call	wcwidth
	mov	dword ptr [rbp - 0x94], eax
	cmp	dword ptr [rbp - 0x94], 0
	jl	.label_2547
	jmp	.label_2555
.label_2555:
	cmp	qword ptr [rbp - 0x90], 0
	jbe	.label_2584
	mov	rax, qword ptr [rbp - 0x68]
	mov	rcx, rax
	add	rcx, 1
	mov	qword ptr [rbp - 0x68], rcx
	mov	dl, byte ptr [rax]
	mov	rax, qword ptr [rbp - 0x78]
	mov	rcx, rax
	add	rcx, 1
	mov	qword ptr [rbp - 0x78], rcx
	mov	byte ptr [rax], dl
	mov	rax, qword ptr [rbp - 0x90]
	add	rax, -1
	mov	qword ptr [rbp - 0x90], rax
	jmp	.label_2555
.label_2584:
	movsxd	rax, dword ptr [rbp - 0x94]
	add	rax, qword ptr [rbp - 0x48]
	mov	qword ptr [rbp - 0x48], rax
	jmp	.label_2574
	.section	.text
	.align	32
	#Procedure 0x41cc70

	.globl rev_xstrcoll_size
	.type rev_xstrcoll_size, @function
rev_xstrcoll_size:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	movabs	rdx, OFFSET FLAT:xstrcoll
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	rsi, qword ptr [rbp - 0x10]
	mov	rdi, qword ptr [rbp - 8]
	mov	qword ptr [rbp - 0x18], rdi
	mov	rdi, rsi
	mov	rsi, qword ptr [rbp - 0x18]
	call	cmp_size
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x41cca8
	.globl sub_41cca8
	.type sub_41cca8, @function
sub_41cca8:

	nop	dword ptr [rax + rax]
.label_2586:
	jmp	.label_2585
.label_2585:
	movabs	rdx, OFFSET FLAT:xstrcoll
	mov	rax, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rdi, rax
	mov	rsi, rcx
	call	cmp_ctime
	mov	dword ptr [rbp - 4], eax
.label_2587:
	mov	eax, dword ptr [rbp - 4]
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x41ccde
	.globl sub_41ccde
	.type sub_41ccde, @function
sub_41ccde:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x41cce1

	.globl rev_xstrcoll_df_ctime
	.type rev_xstrcoll_df_ctime, @function
rev_xstrcoll_df_ctime:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 0x18], rsi
	mov	rax, qword ptr [rbp - 0x10]
	mov	rdi, rax
	call	is_linked_directory
	and	al, 1
	mov	byte ptr [rbp - 0x19], al
	mov	rdi, qword ptr [rbp - 0x18]
	call	is_linked_directory
	and	al, 1
	mov	byte ptr [rbp - 0x1a], al
	test	byte ptr [rbp - 0x19], 1
	je	.label_2588
	test	byte ptr [rbp - 0x1a], 1
	jne	.label_2588
	mov	dword ptr [rbp - 4], 0xffffffff
	jmp	.label_2587
.label_2588:
	test	byte ptr [rbp - 0x19], 1
	jne	.label_2586
	test	byte ptr [rbp - 0x1a], 1
	je	.label_2586
	mov	dword ptr [rbp - 4], 1
	jmp	.label_2587
.label_2595:
	mov	rax, qword ptr [rbp - 0x28]
	add	rax, 1
	mov	qword ptr [rbp - 0x28], rax
	mov	rax, qword ptr [rbp - 0x30]
	add	rax, 1
	mov	qword ptr [rbp - 0x30], rax
	movzx	eax, byte ptr [rbp - 0x31]
	movzx	ecx, byte ptr [rbp - 0x32]
	cmp	eax, ecx
	je	.label_2589
.label_2592:
	movzx	eax, byte ptr [rbp - 0x31]
	movzx	ecx, byte ptr [rbp - 0x32]
	sub	eax, ecx
	mov	dword ptr [rbp - 4], eax
.label_2593:
	mov	eax, dword ptr [rbp - 4]
	add	rsp, 0x40
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x41cd8e
	.globl sub_41cd8e
	.type sub_41cd8e, @function
sub_41cd8e:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x41cd98

	.globl c_strncasecmp
	.type c_strncasecmp, @function
c_strncasecmp:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x40
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 0x18], rsi
	mov	qword ptr [rbp - 0x20], rdx
	mov	rdx, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 0x28], rdx
	mov	rdx, qword ptr [rbp - 0x18]
	mov	qword ptr [rbp - 0x30], rdx
	mov	rdx, qword ptr [rbp - 0x28]
	cmp	rdx, qword ptr [rbp - 0x30]
	je	.label_2594
	cmp	qword ptr [rbp - 0x20], 0
	jne	.label_2591
.label_2594:
	mov	dword ptr [rbp - 4], 0
	jmp	.label_2593
.label_2591:
	jmp	.label_2589
.label_2589:
	mov	rax, qword ptr [rbp - 0x28]
	movzx	edi, byte ptr [rax]
	call	c_tolower
	mov	cl, al
	mov	byte ptr [rbp - 0x31], cl
	mov	rdx, qword ptr [rbp - 0x30]
	movzx	edi, byte ptr [rdx]
	call	c_tolower
	mov	cl, al
	mov	byte ptr [rbp - 0x32], cl
	mov	rdx, qword ptr [rbp - 0x20]
	add	rdx, -1
	mov	qword ptr [rbp - 0x20], rdx
	cmp	rdx, 0
	je	.label_2590
	movzx	eax, byte ptr [rbp - 0x31]
	cmp	eax, 0
	jne	.label_2595
.label_2590:
	jmp	.label_2592
.label_2597:
	test	byte ptr [rbp - 0x19], 1
	jne	.label_2598
	test	byte ptr [rbp - 0x1a], 1
	je	.label_2598
	mov	dword ptr [rbp - 4], 1
	jmp	.label_2596
.label_2598:
	jmp	.label_2599
.label_2599:
	movabs	rdx, OFFSET FLAT:xstrcoll
	mov	rax, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rdi, rax
	mov	rsi, rcx
	call	cmp_extension
	mov	dword ptr [rbp - 4], eax
.label_2596:
	mov	eax, dword ptr [rbp - 4]
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x41ce7e
	.globl sub_41ce7e
	.type sub_41ce7e, @function
sub_41ce7e:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x41ce81

	.globl rev_xstrcoll_df_extension
	.type rev_xstrcoll_df_extension, @function
rev_xstrcoll_df_extension:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 0x18], rsi
	mov	rax, qword ptr [rbp - 0x10]
	mov	rdi, rax
	call	is_linked_directory
	and	al, 1
	mov	byte ptr [rbp - 0x19], al
	mov	rdi, qword ptr [rbp - 0x18]
	call	is_linked_directory
	and	al, 1
	mov	byte ptr [rbp - 0x1a], al
	test	byte ptr [rbp - 0x19], 1
	je	.label_2597
	test	byte ptr [rbp - 0x1a], 1
	jne	.label_2597
	mov	dword ptr [rbp - 4], 0xffffffff
	jmp	.label_2596
	.section	.text
	.align	32
	#Procedure 0x41ced0

	.globl rev_strcmp_atime
	.type rev_strcmp_atime, @function
rev_strcmp_atime:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	movabs	rdx, OFFSET FLAT:strcmp
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	rsi, qword ptr [rbp - 0x10]
	mov	rdi, qword ptr [rbp - 8]
	mov	qword ptr [rbp - 0x18], rdi
	mov	rdi, rsi
	mov	rsi, qword ptr [rbp - 0x18]
	call	cmp_atime
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x41cf08
	.globl sub_41cf08
	.type sub_41cf08, @function
sub_41cf08:

	nop	dword ptr [rax + rax]
.label_2601:
	jmp	.label_2600
.label_2600:
	movabs	rdx, OFFSET FLAT:xstrcoll
	mov	rax, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rdi, rax
	mov	rsi, rcx
	call	cmp_mtime
	mov	dword ptr [rbp - 4], eax
.label_2602:
	mov	eax, dword ptr [rbp - 4]
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x41cf3e
	.globl sub_41cf3e
	.type sub_41cf3e, @function
sub_41cf3e:

	nop	dword ptr [rax]
.label_2603:
	test	byte ptr [rbp - 0x19], 1
	jne	.label_2601
	test	byte ptr [rbp - 0x1a], 1
	je	.label_2601
	mov	dword ptr [rbp - 4], 1
	jmp	.label_2602
	.section	.text
	.align	32
	#Procedure 0x41cf61

	.globl rev_xstrcoll_df_mtime
	.type rev_xstrcoll_df_mtime, @function
rev_xstrcoll_df_mtime:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 0x18], rsi
	mov	rax, qword ptr [rbp - 0x10]
	mov	rdi, rax
	call	is_linked_directory
	and	al, 1
	mov	byte ptr [rbp - 0x19], al
	mov	rdi, qword ptr [rbp - 0x18]
	call	is_linked_directory
	and	al, 1
	mov	byte ptr [rbp - 0x1a], al
	test	byte ptr [rbp - 0x19], 1
	je	.label_2603
	test	byte ptr [rbp - 0x1a], 1
	jne	.label_2603
	mov	dword ptr [rbp - 4], 0xffffffff
	jmp	.label_2602
	.section	.text
	.align	32
	#Procedure 0x41cfb0
	.globl quotearg_free
	.type quotearg_free, @function
quotearg_free:

	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	mov	rax,  qword ptr [word ptr [slotvec]]
	mov	qword ptr [rbp - 8], rax
	mov	dword ptr [rbp - 0xc], 1
.label_2606:
	mov	eax, dword ptr [rbp - 0xc]
	cmp	eax,  dword ptr [dword ptr [nslots]]
	jge	.label_2605
	movsxd	rax, dword ptr [rbp - 0xc]
	shl	rax, 4
	add	rax, qword ptr [rbp - 8]
	mov	rdi, qword ptr [rax + 8]
	call	free
	mov	eax, dword ptr [rbp - 0xc]
	add	eax, 1
	mov	dword ptr [rbp - 0xc], eax
	jmp	.label_2606
.label_2605:
	movabs	rax, OFFSET FLAT:slot0
	mov	rcx, qword ptr [rbp - 8]
	cmp	qword ptr [rcx + 8], rax
	je	.label_2607
	mov	rax, qword ptr [rbp - 8]
	mov	rdi, qword ptr [rax + 8]
	call	free
	movabs	rax, OFFSET FLAT:slot0
	mov	qword ptr [word ptr [slotvec0]],  0x100
	mov	qword ptr [word ptr [label_780]],  rax
.label_2607:
	movabs	rax, OFFSET FLAT:slotvec0
	cmp	qword ptr [rbp - 8], rax
	je	.label_2604
	mov	rax, qword ptr [rbp - 8]
	mov	rdi, rax
	call	free
	movabs	rax, OFFSET FLAT:slotvec0
	mov	qword ptr [word ptr [slotvec]],  rax
.label_2604:
	mov	dword ptr [dword ptr [nslots]],  1
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x41d084
	.globl sub_41d084
	.type sub_41d084, @function
sub_41d084:

	nop	word ptr cs:[rax + rax]
.label_2613:
	xor	eax, eax
	mov	ecx, 1
	mov	rdx, qword ptr [rbp - 8]
	movsx	esi, byte ptr [rdx]
	cmp	esi, 0x2f
	cmove	eax, ecx
	mov	dword ptr [rbp - 0x1c], eax
.label_2612:
	mov	eax, dword ptr [rbp - 0x1c]
	movsxd	rcx, eax
	add	rcx, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 0x10], rcx
	mov	rdi, qword ptr [rbp - 8]
	call	last_component
	mov	rcx, qword ptr [rbp - 8]
	sub	rax, rcx
	mov	qword ptr [rbp - 0x18], rax
.label_2609:
	mov	rax, qword ptr [rbp - 0x10]
	cmp	rax, qword ptr [rbp - 0x18]
	jae	.label_2608
	mov	rax, qword ptr [rbp - 0x18]
	sub	rax, 1
	mov	rcx, qword ptr [rbp - 8]
	movsx	edx, byte ptr [rcx + rax]
	cmp	edx, 0x2f
	je	.label_2611
	jmp	.label_2608
	.section	.text
	.align	32
	#Procedure 0x41d0f5

	.globl dir_len
	.type dir_len, @function
dir_len:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], 0
	cmp	qword ptr [rbp - 0x10], 0
	je	.label_2613
	xor	eax, eax
	mov	dword ptr [rbp - 0x1c], eax
	jmp	.label_2612
.label_2611:
	jmp	.label_2610
.label_2610:
	mov	rax, qword ptr [rbp - 0x18]
	add	rax, -1
	mov	qword ptr [rbp - 0x18], rax
	jmp	.label_2609
.label_2608:
	mov	rax, qword ptr [rbp - 0x18]
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x41d13e
	.globl sub_41d13e
	.type sub_41d13e, @function
sub_41d13e:

	nop	
.label_2614:
	mov	rax, qword ptr [rbp - 0x10]
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x41d14a
	.globl sub_41d14a
	.type sub_41d14a, @function
sub_41d14a:

	nop	
	.section	.text
	.align	32
	#Procedure 0x41d14c

	.globl xmalloc
	.type xmalloc, @function
xmalloc:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	mov	qword ptr [rbp - 8], rdi
	mov	rdi, qword ptr [rbp - 8]
	call	malloc
	mov	qword ptr [rbp - 0x10], rax
	cmp	qword ptr [rbp - 0x10], 0
	jne	.label_2614
	cmp	qword ptr [rbp - 8], 0
	je	.label_2614
	call	xalloc_die
	.section	.text
	.align	32
	#Procedure 0x41d180

	.globl sighandler
	.type sighandler, @function
sighandler:
	push	rbp
	mov	rbp, rsp
	mov	dword ptr [rbp - 4], edi
	mov	edi,  dword ptr [dword ptr [interrupt_signal]]
	cmp	edi, 0
	jne	.label_2615
	mov	eax, dword ptr [rbp - 4]
	mov	dword ptr [dword ptr [interrupt_signal]],  eax
.label_2615:
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x41d1a3
	.globl sub_41d1a3
	.type sub_41d1a3, @function
sub_41d1a3:

	nop	word ptr cs:[rax + rax]
.label_2619:
	test	byte ptr [rbp - 0x19], 1
	jne	.label_2616
	test	byte ptr [rbp - 0x1a], 1
	je	.label_2616
	mov	dword ptr [rbp - 4], 1
	jmp	.label_2617
	.section	.text
	.align	32
	#Procedure 0x41d1d0

	.globl rev_xstrcoll_df_atime
	.type rev_xstrcoll_df_atime, @function
rev_xstrcoll_df_atime:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 0x18], rsi
	mov	rax, qword ptr [rbp - 0x10]
	mov	rdi, rax
	call	is_linked_directory
	and	al, 1
	mov	byte ptr [rbp - 0x19], al
	mov	rdi, qword ptr [rbp - 0x18]
	call	is_linked_directory
	and	al, 1
	mov	byte ptr [rbp - 0x1a], al
	test	byte ptr [rbp - 0x19], 1
	je	.label_2619
	test	byte ptr [rbp - 0x1a], 1
	jne	.label_2619
	mov	dword ptr [rbp - 4], 0xffffffff
	jmp	.label_2617
.label_2616:
	jmp	.label_2618
.label_2618:
	movabs	rdx, OFFSET FLAT:xstrcoll
	mov	rax, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rdi, rax
	mov	rsi, rcx
	call	cmp_atime
	mov	dword ptr [rbp - 4], eax
.label_2617:
	mov	eax, dword ptr [rbp - 4]
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x41d24d
	.globl sub_41d24d
	.type sub_41d24d, @function
sub_41d24d:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x41d250

	.globl file_has_acl
	.type file_has_acl, @function
file_has_acl:
	push	rbp
	mov	rbp, rsp
	xor	eax, eax
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	pop	rbp
	ret	
.label_2620:
	mov	rax, qword ptr [rbp - 0x18]
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x41d266
	.globl sub_41d266
	.type sub_41d266, @function
sub_41d266:

	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x41d26f
	.globl hash_string
	.type hash_string, @function
hash_string:

	push	rbp
	mov	rbp, rsp
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	qword ptr [rbp - 0x18], 0
.label_2621:
	mov	rax, qword ptr [rbp - 8]
	mov	cl, byte ptr [rax]
	mov	byte ptr [rbp - 0x19], cl
	cmp	cl, 0
	je	.label_2620
	imul	rax, qword ptr [rbp - 0x18], 0x1f
	movzx	ecx, byte ptr [rbp - 0x19]
	mov	edx, ecx
	add	rax, rdx
	xor	ecx, ecx
	mov	edx, ecx
	div	qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 0x18], rdx
	mov	rax, qword ptr [rbp - 8]
	add	rax, 1
	mov	qword ptr [rbp - 8], rax
	jmp	.label_2621
	.section	.text
	.align	32
	#Procedure 0x41d2c0

	.globl set_normal_color
	.type set_normal_color, @function
set_normal_color:
	push	rbp
	mov	rbp, rsp
	test	byte ptr [byte ptr [print_with_color]],  1
	je	.label_2622
	mov	edi, 4
	call	is_colored
	test	al, 1
	jne	.label_2623
	jmp	.label_2622
.label_2623:
	movabs	rdi, OFFSET FLAT:color_indicator
	call	put_indicator
	movabs	rdi, OFFSET FLAT:color_indicator
	add	rdi, 0x40
	call	put_indicator
	movabs	rdi, OFFSET FLAT:color_indicator
	add	rdi, 0x10
	call	put_indicator
.label_2622:
	pop	rbp
	ret	
.label_2624:
	mov	eax, 0x10
	mov	edi, eax
	call	malloc
	mov	qword ptr [rbp - 0x10], rax
.label_2625:
	mov	rax, qword ptr [rbp - 0x10]
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x41d33a
	.globl sub_41d33a
	.type sub_41d33a, @function
sub_41d33a:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x41d344

	.globl allocate_entry
	.type allocate_entry, @function
allocate_entry:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	mov	qword ptr [rbp - 8], rdi
	mov	rdi, qword ptr [rbp - 8]
	cmp	qword ptr [rdi + 0x48], 0
	je	.label_2624
	mov	rax, qword ptr [rbp - 8]
	mov	rax, qword ptr [rax + 0x48]
	mov	qword ptr [rbp - 0x10], rax
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax + 8]
	mov	rcx, qword ptr [rbp - 8]
	mov	qword ptr [rcx + 0x48], rax
	jmp	.label_2625
	.section	.text
	.align	32
	#Procedure 0x41d380

	.globl xstrdup
	.type xstrdup, @function
xstrdup:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	mov	qword ptr [rbp - 8], rdi
	mov	rdi, qword ptr [rbp - 8]
	mov	rax, qword ptr [rbp - 8]
	mov	qword ptr [rbp - 0x10], rdi
	mov	rdi, rax
	call	strlen
	add	rax, 1
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsi, rax
	call	xmemdup
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x41d3b6
	.globl sub_41d3b6
	.type sub_41d3b6, @function
sub_41d3b6:

	nop	word ptr cs:[rax + rax]
.label_2681:
	mov	eax, dword ptr [rbp - 0x2c]
	and	eax, 0xf000
	cmp	eax, 0x1000
	jne	.label_2639
	mov	dword ptr [rbp - 0x10], 8
	jmp	.label_2636
.label_2633:
	movabs	rax, OFFSET FLAT:color_indicator
	mov	ecx, dword ptr [rbp - 0x10]
	mov	edx, ecx
	shl	rdx, 4
	add	rax, rdx
	mov	qword ptr [rbp - 0x48], rax
.label_2644:
	mov	rax, qword ptr [rbp - 0x48]
	mov	qword ptr [rbp - 0x38], rax
	mov	rax, qword ptr [rbp - 0x38]
	cmp	qword ptr [rax + 8], 0
	je	.label_2649
	mov	rax, qword ptr [rbp - 0x38]
	mov	qword ptr [rbp - 0x50], rax
	jmp	.label_2629
.label_2651:
	mov	rax, qword ptr [rbp - 8]
	mov	ecx, dword ptr [rax + 0x30]
	mov	dword ptr [rbp - 0x3c], ecx
.label_2658:
	mov	eax, dword ptr [rbp - 0x3c]
	mov	dword ptr [rbp - 0x2c], eax
	mov	rcx, qword ptr [rbp - 8]
	mov	dl, byte ptr [rcx + 0xb9]
	and	dl, 1
	movzx	eax, dl
	mov	dword ptr [rbp - 0x30], eax
.label_2654:
	cmp	dword ptr [rbp - 0x30], -1
	jne	.label_2669
	mov	edi, 0xc
	call	is_colored
	test	al, 1
	jne	.label_2677
	jmp	.label_2669
.label_2677:
	mov	dword ptr [rbp - 0x10], 0xc
	jmp	.label_2643
	.section	.text
	.align	32
	#Procedure 0x41d46d

	.globl get_color_indicator
	.type get_color_indicator, @function
get_color_indicator:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x50
	mov	al, sil
	mov	qword ptr [rbp - 8], rdi
	and	al, 1
	mov	byte ptr [rbp - 9], al
	test	byte ptr [rbp - 9], 1
	je	.label_2682
	mov	eax, 0xffffffff
	xor	ecx, ecx
	mov	rdx, qword ptr [rbp - 8]
	mov	rdx, qword ptr [rdx + 8]
	mov	qword ptr [rbp - 0x28], rdx
	mov	rdx, qword ptr [rbp - 8]
	mov	esi, dword ptr [rdx + 0xac]
	mov	dword ptr [rbp - 0x2c], esi
	mov	rdx, qword ptr [rbp - 8]
	mov	dil, byte ptr [rdx + 0xb9]
	test	dil, 1
	cmovne	eax, ecx
	mov	dword ptr [rbp - 0x30], eax
	jmp	.label_2654
.label_2655:
	mov	eax, dword ptr [rbp - 0x2c]
	and	eax, 0x49
	cmp	eax, 0
	je	.label_2671
	mov	edi, 0xe
	call	is_colored
	test	al, 1
	jne	.label_2679
	jmp	.label_2671
.label_2679:
	mov	dword ptr [rbp - 0x10], 0xe
	jmp	.label_2680
.label_2662:
	mov	eax, dword ptr [rbp - 0x2c]
	and	eax, 2
	cmp	eax, 0
	je	.label_2657
	mov	edi, 0x13
	call	is_colored
	test	al, 1
	jne	.label_2656
	jmp	.label_2657
.label_2656:
	mov	dword ptr [rbp - 0x10], 0x13
	jmp	.label_2659
.label_2660:
	mov	eax, dword ptr [rbp - 0x2c]
	and	eax, 0x400
	cmp	eax, 0
	je	.label_2666
	mov	edi, 0x11
	call	is_colored
	test	al, 1
	jne	.label_2670
	jmp	.label_2666
.label_2670:
	mov	dword ptr [rbp - 0x10], 0x11
	jmp	.label_2675
.label_2669:
	mov	rax, qword ptr [rbp - 8]
	test	byte ptr [rax + 0xb8], 1
	jne	.label_2678
	mov	rax, qword ptr [rbp - 8]
	mov	ecx, dword ptr [rax + 0xa8]
	mov	eax, ecx
	mov	ecx,  dword ptr [dword ptr [+ (rax * 4) + get_color_indicator.filetype_indicator]]
	mov	dword ptr [rbp - 0x10], ecx
	jmp	.label_2642
.label_2652:
	mov	eax, dword ptr [rbp - 0x2c]
	and	eax, 0xf000
	cmp	eax, 0x4000
	jne	.label_2653
	mov	dword ptr [rbp - 0x10], 6
	mov	eax, dword ptr [rbp - 0x2c]
	and	eax, 0x200
	cmp	eax, 0
	je	.label_2662
	mov	eax, dword ptr [rbp - 0x2c]
	and	eax, 2
	cmp	eax, 0
	je	.label_2662
	mov	edi, 0x14
	call	is_colored
	test	al, 1
	jne	.label_2674
	jmp	.label_2662
.label_2674:
	mov	dword ptr [rbp - 0x10], 0x14
	jmp	.label_2676
.label_2653:
	mov	eax, dword ptr [rbp - 0x2c]
	and	eax, 0xf000
	cmp	eax, 0xa000
	jne	.label_2681
	mov	dword ptr [rbp - 0x10], 7
	jmp	.label_2637
.label_2678:
	mov	eax, dword ptr [rbp - 0x2c]
	and	eax, 0xf000
	cmp	eax, 0x8000
	jne	.label_2652
	mov	dword ptr [rbp - 0x10], 5
	mov	eax, dword ptr [rbp - 0x2c]
	and	eax, 0x800
	cmp	eax, 0
	je	.label_2660
	mov	edi, 0x10
	call	is_colored
	test	al, 1
	jne	.label_2668
	jmp	.label_2660
.label_2668:
	mov	dword ptr [rbp - 0x10], 0x10
	jmp	.label_2672
.label_2632:
	jmp	.label_2648
.label_2648:
	mov	rax, qword ptr [rbp - 0x18]
	mov	rax, qword ptr [rax + 0x20]
	mov	qword ptr [rbp - 0x18], rax
	jmp	.label_2646
.label_2682:
	mov	rax, qword ptr [rbp - 8]
	mov	rax, qword ptr [rax]
	mov	qword ptr [rbp - 0x28], rax
	test	byte ptr [byte ptr [color_symlink_as_referent]],  1
	je	.label_2651
	mov	rax, qword ptr [rbp - 8]
	test	byte ptr [rax + 0xb9], 1
	je	.label_2651
	mov	rax, qword ptr [rbp - 8]
	mov	ecx, dword ptr [rax + 0xac]
	mov	dword ptr [rbp - 0x3c], ecx
	jmp	.label_2658
.label_2650:
	mov	dword ptr [rbp - 0x10], 0xd
.label_2630:
	jmp	.label_2627
.label_2627:
	jmp	.label_2634
.label_2634:
	jmp	.label_2636
.label_2636:
	jmp	.label_2637
.label_2637:
	jmp	.label_2638
.label_2638:
	jmp	.label_2640
.label_2640:
	jmp	.label_2642
.label_2642:
	jmp	.label_2643
.label_2643:
	mov	qword ptr [rbp - 0x18], 0
	cmp	dword ptr [rbp - 0x10], 5
	jne	.label_2645
	mov	rdi, qword ptr [rbp - 0x28]
	call	strlen
	mov	qword ptr [rbp - 0x20], rax
	mov	rax, qword ptr [rbp - 0x20]
	add	rax, qword ptr [rbp - 0x28]
	mov	qword ptr [rbp - 0x28], rax
	mov	rax,  qword ptr [word ptr [color_ext_list]]
	mov	qword ptr [rbp - 0x18], rax
.label_2646:
	cmp	qword ptr [rbp - 0x18], 0
	je	.label_2628
	mov	rax, qword ptr [rbp - 0x18]
	mov	rax, qword ptr [rax]
	cmp	rax, qword ptr [rbp - 0x20]
	ja	.label_2632
	xor	eax, eax
	mov	ecx, eax
	mov	rdx, qword ptr [rbp - 0x28]
	mov	rsi, qword ptr [rbp - 0x18]
	sub	rcx, qword ptr [rsi]
	add	rdx, rcx
	mov	rcx, qword ptr [rbp - 0x18]
	mov	rsi, qword ptr [rcx + 8]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rcx]
	mov	rdi, rdx
	mov	rdx, rcx
	call	c_strncasecmp
	cmp	eax, 0
	jne	.label_2632
	jmp	.label_2628
.label_2649:
	xor	eax, eax
	mov	ecx, eax
	mov	qword ptr [rbp - 0x50], rcx
	jmp	.label_2629
.label_2629:
	mov	rax, qword ptr [rbp - 0x50]
	add	rsp, 0x50
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x41d778
	.globl sub_41d778
	.type sub_41d778, @function
sub_41d778:

	nop	dword ptr [rax]
.label_2641:
	mov	eax, dword ptr [rbp - 0x2c]
	and	eax, 0xf000
	cmp	eax, 0x2000
	jne	.label_2650
	mov	dword ptr [rbp - 0x10], 0xb
	jmp	.label_2630
.label_2657:
	mov	eax, dword ptr [rbp - 0x2c]
	and	eax, 0x200
	cmp	eax, 0
	je	.label_2663
	mov	edi, 0x12
	call	is_colored
	test	al, 1
	jne	.label_2667
	jmp	.label_2663
.label_2667:
	mov	dword ptr [rbp - 0x10], 0x12
.label_2663:
	jmp	.label_2659
.label_2659:
	jmp	.label_2676
.label_2676:
	jmp	.label_2638
.label_2639:
	mov	eax, dword ptr [rbp - 0x2c]
	and	eax, 0xf000
	cmp	eax, 0xc000
	jne	.label_2647
	mov	dword ptr [rbp - 0x10], 9
	jmp	.label_2634
.label_2666:
	mov	edi, 0x15
	call	is_colored
	test	al, 1
	jne	.label_2664
	jmp	.label_2655
.label_2664:
	mov	rax, qword ptr [rbp - 8]
	test	byte ptr [rax + 0xc0], 1
	je	.label_2655
	mov	dword ptr [rbp - 0x10], 0x15
	jmp	.label_2665
.label_2671:
	mov	eax, 1
	mov	ecx, eax
	mov	rdx, qword ptr [rbp - 8]
	cmp	rcx, qword ptr [rdx + 0x28]
	jae	.label_2661
	mov	edi, 0x16
	call	is_colored
	test	al, 1
	jne	.label_2673
	jmp	.label_2661
.label_2673:
	mov	dword ptr [rbp - 0x10], 0x16
.label_2661:
	jmp	.label_2680
.label_2680:
	jmp	.label_2665
.label_2665:
	jmp	.label_2675
.label_2675:
	jmp	.label_2672
.label_2672:
	jmp	.label_2640
.label_2628:
	jmp	.label_2645
.label_2645:
	cmp	dword ptr [rbp - 0x10], 7
	jne	.label_2626
	cmp	dword ptr [rbp - 0x30], 0
	jne	.label_2626
	test	byte ptr [byte ptr [color_symlink_as_referent]],  1
	jne	.label_2631
	mov	edi, 0xd
	call	is_colored
	test	al, 1
	jne	.label_2631
	jmp	.label_2635
.label_2631:
	mov	dword ptr [rbp - 0x10], 0xd
.label_2635:
	jmp	.label_2626
.label_2626:
	cmp	qword ptr [rbp - 0x18], 0
	je	.label_2633
	mov	rax, qword ptr [rbp - 0x18]
	add	rax, 0x10
	mov	qword ptr [rbp - 0x48], rax
	jmp	.label_2644
.label_2647:
	mov	eax, dword ptr [rbp - 0x2c]
	and	eax, 0xf000
	cmp	eax, 0x6000
	jne	.label_2641
	mov	dword ptr [rbp - 0x10], 0xa
	jmp	.label_2627
.label_2683:
	mov	byte ptr [rbp - 1], 0
.label_2687:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x41d90e
	.globl sub_41d90e
	.type sub_41d90e, @function
sub_41d90e:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x41d919

	.globl c_isalnum
	.type c_isalnum, @function
c_isalnum:
	push	rbp
	mov	rbp, rsp
	mov	dword ptr [rbp - 8], edi
	mov	eax, edi
	add	eax, -0x30
	sub	eax, 0xa
	mov	dword ptr [rbp - 0xc], edi
	mov	dword ptr [rbp - 0x10], eax
	jb	.label_2684
	jmp	.label_2686
.label_2686:
	mov	eax, dword ptr [rbp - 0xc]
	add	eax, -0x41
	sub	eax, 0x1a
	mov	dword ptr [rbp - 0x14], eax
	jb	.label_2684
	jmp	.label_2685
.label_2685:
	mov	eax, dword ptr [rbp - 0xc]
	add	eax, -0x61
	sub	eax, 0x19
	mov	dword ptr [rbp - 0x18], eax
	ja	.label_2683
	jmp	.label_2684
.label_2684:
	mov	byte ptr [rbp - 1], 1
	jmp	.label_2687
	.section	.text
	.align	32
	#Procedure 0x41d970

	.globl wc_truncate
	.type wc_truncate, @function
wc_truncate:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	qword ptr [rbp - 0x18], 0
	mov	dword ptr [rbp - 0x1c], 0
.label_2691:
	mov	rax, qword ptr [rbp - 8]
	cmp	dword ptr [rax], 0
	je	.label_2690
	mov	rax, qword ptr [rbp - 8]
	mov	edi, dword ptr [rax]
	call	wcwidth
	mov	dword ptr [rbp - 0x1c], eax
	cmp	dword ptr [rbp - 0x1c], -1
	jne	.label_2689
	mov	rax, qword ptr [rbp - 8]
	mov	dword ptr [rax], 0xfffd
	mov	dword ptr [rbp - 0x1c], 1
.label_2689:
	mov	rax, qword ptr [rbp - 0x18]
	movsxd	rcx, dword ptr [rbp - 0x1c]
	add	rax, rcx
	cmp	rax, qword ptr [rbp - 0x10]
	jbe	.label_2688
	jmp	.label_2690
.label_2688:
	movsxd	rax, dword ptr [rbp - 0x1c]
	add	rax, qword ptr [rbp - 0x18]
	mov	qword ptr [rbp - 0x18], rax
	mov	rax, qword ptr [rbp - 8]
	add	rax, 4
	mov	qword ptr [rbp - 8], rax
	jmp	.label_2691
.label_2690:
	mov	rax, qword ptr [rbp - 8]
	mov	dword ptr [rax], 0
	mov	rax, qword ptr [rbp - 0x18]
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x41da10

	.globl cmp_version
	.type cmp_version, @function
cmp_version:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	rsi, qword ptr [rbp - 8]
	mov	rdi, qword ptr [rsi]
	mov	rsi, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rsi]
	call	filevercmp
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x41da39
	.globl sub_41da39
	.type sub_41da39, @function
sub_41da39:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x41da40
	.globl c_isspace
	.type c_isspace, @function
c_isspace:

	push	rbp
	mov	rbp, rsp
	mov	dword ptr [rbp - 8], edi
	mov	eax, edi
	add	eax, -9
	sub	eax, 5
	mov	dword ptr [rbp - 0xc], edi
	mov	dword ptr [rbp - 0x10], eax
	jb	.label_2692
	jmp	.label_2695
.label_2695:
	mov	eax, dword ptr [rbp - 0xc]
	sub	eax, 0x20
	mov	dword ptr [rbp - 0x14], eax
	jne	.label_2694
	jmp	.label_2692
.label_2692:
	mov	byte ptr [rbp - 1], 1
	jmp	.label_2693
.label_2694:
	mov	byte ptr [rbp - 1], 0
.label_2693:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x41da8b
	.globl sub_41da8b
	.type sub_41da8b, @function
sub_41da8b:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x41da90

	.globl strmode
	.type strmode, @function
strmode:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	mov	dword ptr [rbp - 4], edi
	mov	qword ptr [rbp - 0x10], rsi
	mov	edi, dword ptr [rbp - 4]
	call	ftypelet
	mov	edi, 0x2d
	mov	ecx, 0x77
	mov	edx, 0x72
	mov	rsi, qword ptr [rbp - 0x10]
	mov	byte ptr [rsi], al
	mov	r8d, dword ptr [rbp - 4]
	and	r8d, 0x100
	cmp	r8d, 0
	mov	r8d, edi
	cmovne	r8d, edx
	mov	al, r8b
	mov	rsi, qword ptr [rbp - 0x10]
	mov	byte ptr [rsi + 1], al
	mov	edx, dword ptr [rbp - 4]
	and	edx, 0x80
	cmp	edx, 0
	cmovne	edi, ecx
	mov	al, dil
	mov	rsi, qword ptr [rbp - 0x10]
	mov	byte ptr [rsi + 2], al
	mov	ecx, dword ptr [rbp - 4]
	and	ecx, 0x800
	cmp	ecx, 0
	je	.label_2699
	mov	eax, 0x53
	mov	ecx, 0x73
	mov	edx, dword ptr [rbp - 4]
	and	edx, 0x40
	cmp	edx, 0
	cmovne	eax, ecx
	mov	dword ptr [rbp - 0x14], eax
	jmp	.label_2698
.label_2699:
	mov	eax, 0x2d
	mov	ecx, 0x78
	mov	edx, dword ptr [rbp - 4]
	and	edx, 0x40
	cmp	edx, 0
	cmovne	eax, ecx
	mov	dword ptr [rbp - 0x14], eax
.label_2698:
	mov	eax, dword ptr [rbp - 0x14]
	mov	ecx, 0x2d
	mov	edx, 0x77
	mov	esi, 0x72
	mov	dil, al
	mov	r8, qword ptr [rbp - 0x10]
	mov	byte ptr [r8 + 3], dil
	mov	eax, dword ptr [rbp - 4]
	and	eax, 0x20
	cmp	eax, 0
	mov	eax, ecx
	cmovne	eax, esi
	mov	dil, al
	mov	r8, qword ptr [rbp - 0x10]
	mov	byte ptr [r8 + 4], dil
	mov	eax, dword ptr [rbp - 4]
	and	eax, 0x10
	cmp	eax, 0
	cmovne	ecx, edx
	mov	dil, cl
	mov	r8, qword ptr [rbp - 0x10]
	mov	byte ptr [r8 + 5], dil
	mov	eax, dword ptr [rbp - 4]
	and	eax, 0x400
	cmp	eax, 0
	je	.label_2701
	mov	eax, 0x53
	mov	ecx, 0x73
	mov	edx, dword ptr [rbp - 4]
	and	edx, 8
	cmp	edx, 0
	cmovne	eax, ecx
	mov	dword ptr [rbp - 0x18], eax
	jmp	.label_2700
.label_2701:
	mov	eax, 0x2d
	mov	ecx, 0x78
	mov	edx, dword ptr [rbp - 4]
	and	edx, 8
	cmp	edx, 0
	cmovne	eax, ecx
	mov	dword ptr [rbp - 0x18], eax
.label_2700:
	mov	eax, dword ptr [rbp - 0x18]
	mov	ecx, 0x2d
	mov	edx, 0x77
	mov	esi, 0x72
	mov	dil, al
	mov	r8, qword ptr [rbp - 0x10]
	mov	byte ptr [r8 + 6], dil
	mov	eax, dword ptr [rbp - 4]
	and	eax, 4
	cmp	eax, 0
	mov	eax, ecx
	cmovne	eax, esi
	mov	dil, al
	mov	r8, qword ptr [rbp - 0x10]
	mov	byte ptr [r8 + 7], dil
	mov	eax, dword ptr [rbp - 4]
	and	eax, 2
	cmp	eax, 0
	cmovne	ecx, edx
	mov	dil, cl
	mov	r8, qword ptr [rbp - 0x10]
	mov	byte ptr [r8 + 8], dil
	mov	eax, dword ptr [rbp - 4]
	and	eax, 0x200
	cmp	eax, 0
	je	.label_2697
	mov	eax, 0x54
	mov	ecx, 0x74
	mov	edx, dword ptr [rbp - 4]
	and	edx, 1
	cmp	edx, 0
	cmovne	eax, ecx
	mov	dword ptr [rbp - 0x1c], eax
	jmp	.label_2696
.label_2697:
	mov	eax, 0x2d
	mov	ecx, 0x78
	mov	edx, dword ptr [rbp - 4]
	and	edx, 1
	cmp	edx, 0
	cmovne	eax, ecx
	mov	dword ptr [rbp - 0x1c], eax
.label_2696:
	mov	eax, dword ptr [rbp - 0x1c]
	mov	cl, al
	mov	rdx, qword ptr [rbp - 0x10]
	mov	byte ptr [rdx + 9], cl
	mov	rdx, qword ptr [rbp - 0x10]
	mov	byte ptr [rdx + 0xa], 0x20
	mov	rdx, qword ptr [rbp - 0x10]
	mov	byte ptr [rdx + 0xb], 0
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x41dc8a
	.globl sub_41dc8a
	.type sub_41dc8a, @function
sub_41dc8a:

	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x41dc90

	.globl set_quoting_style
	.type set_quoting_style, @function
set_quoting_style:
	push	rbp
	mov	rbp, rsp
	mov	qword ptr [rbp - 8], rdi
	mov	dword ptr [rbp - 0xc], esi
	mov	esi, dword ptr [rbp - 0xc]
	cmp	qword ptr [rbp - 8], 0
	mov	dword ptr [rbp - 0x10], esi
	je	.label_2702
	mov	rax, qword ptr [rbp - 8]
	mov	qword ptr [rbp - 0x18], rax
	jmp	.label_2703
.label_2702:
	movabs	rax, OFFSET FLAT:default_quoting_options
	mov	qword ptr [rbp - 0x18], rax
	jmp	.label_2703
.label_2703:
	mov	rax, qword ptr [rbp - 0x18]
	mov	ecx, dword ptr [rbp - 0x10]
	mov	dword ptr [rax], ecx
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x41dcd7
	.globl sub_41dcd7
	.type sub_41dcd7, @function
sub_41dcd7:

	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x41dce0

	.globl iso_week_days
	.type iso_week_days, @function
iso_week_days:
	push	rbp
	mov	rbp, rsp
	mov	eax, 7
	mov	dword ptr [rbp - 4], edi
	mov	dword ptr [rbp - 8], esi
	mov	dword ptr [rbp - 0xc], 0x17a
	mov	esi, dword ptr [rbp - 4]
	mov	edi, dword ptr [rbp - 4]
	sub	edi, dword ptr [rbp - 8]
	add	edi, 4
	add	edi, dword ptr [rbp - 0xc]
	mov	dword ptr [rbp - 0x10], eax
	mov	eax, edi
	cdq	
	mov	edi, dword ptr [rbp - 0x10]
	idiv	edi
	sub	esi, edx
	add	esi, 4
	sub	esi, 1
	mov	eax, esi
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x41dd1c
	.globl sub_41dd1c
	.type sub_41dd1c, @function
sub_41dd1c:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x41dd20

	.globl bkm_scale_0
	.type bkm_scale_0, @function
bkm_scale_0:
	push	rbp
	mov	rbp, rsp
	mov	rax, -1
	mov	qword ptr [rbp - 0x10], rdi
	mov	dword ptr [rbp - 0x14], esi
	movsxd	rdi, dword ptr [rbp - 0x14]
	xor	esi, esi
	mov	edx, esi
	div	rdi
	mov	rdi, qword ptr [rbp - 0x10]
	cmp	rax, qword ptr [rdi]
	jae	.label_2704
	mov	rax, qword ptr [rbp - 0x10]
	mov	qword ptr [rax], -1
	mov	dword ptr [rbp - 4], 1
	jmp	.label_2705
.label_2704:
	movsxd	rax, dword ptr [rbp - 0x14]
	mov	rcx, qword ptr [rbp - 0x10]
	imul	rax, qword ptr [rcx]
	mov	qword ptr [rcx], rax
	mov	dword ptr [rbp - 4], 0
.label_2705:
	mov	eax, dword ptr [rbp - 4]
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x41dd7c
	.globl sub_41dd7c
	.type sub_41dd7c, @function
sub_41dd7c:

	nop	dword ptr [rax]
.label_2709:
	movabs	rax, 0x5555555555555554
	xor	ecx, ecx
	mov	edx, ecx
	div	qword ptr [rbp - 0x18]
	cmp	rax, qword ptr [rbp - 0x20]
	ja	.label_2706
	call	xalloc_die
.label_2710:
	jmp	.label_2708
	.section	.text
	.align	32
	#Procedure 0x41dda6

	.globl x2nrealloc
	.type x2nrealloc, @function
x2nrealloc:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	qword ptr [rbp - 0x18], rdx
	mov	rdx, qword ptr [rbp - 0x10]
	mov	rdx, qword ptr [rdx]
	mov	qword ptr [rbp - 0x20], rdx
	cmp	qword ptr [rbp - 8], 0
	jne	.label_2709
	cmp	qword ptr [rbp - 0x20], 0
	jne	.label_2707
	mov	eax, 0x80
	xor	ecx, ecx
	mov	edx, ecx
	div	qword ptr [rbp - 0x18]
	mov	qword ptr [rbp - 0x20], rax
	cmp	qword ptr [rbp - 0x20], 0
	setne	sil
	xor	sil, 0xff
	and	sil, 1
	movzx	ecx, sil
	movsxd	rax, ecx
	add	rax, qword ptr [rbp - 0x20]
	mov	qword ptr [rbp - 0x20], rax
.label_2707:
	movabs	rax, 0x7fffffffffffffff
	xor	ecx, ecx
	mov	edx, ecx
	div	qword ptr [rbp - 0x18]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_2710
	call	xalloc_die
.label_2706:
	mov	rax, qword ptr [rbp - 0x20]
	shr	rax, 1
	add	rax, 1
	add	rax, qword ptr [rbp - 0x20]
	mov	qword ptr [rbp - 0x20], rax
.label_2708:
	mov	rax, qword ptr [rbp - 0x20]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	qword ptr [rcx], rax
	mov	rdi, qword ptr [rbp - 8]
	mov	rax, qword ptr [rbp - 0x20]
	imul	rax, qword ptr [rbp - 0x18]
	mov	rsi, rax
	call	xrealloc
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x41de67
	.globl sub_41de67
	.type sub_41de67, @function
sub_41de67:

	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x41de70

	.globl rev_xstrcoll_atime
	.type rev_xstrcoll_atime, @function
rev_xstrcoll_atime:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	movabs	rdx, OFFSET FLAT:xstrcoll
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	rsi, qword ptr [rbp - 0x10]
	mov	rdi, qword ptr [rbp - 8]
	mov	qword ptr [rbp - 0x18], rdi
	mov	rdi, rsi
	mov	rsi, qword ptr [rbp - 0x18]
	call	cmp_atime
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x41dea8
	.globl sub_41dea8
	.type sub_41dea8, @function
sub_41dea8:

	nop	dword ptr [rax + rax]
.label_2715:
	jmp	.label_2713
.label_2713:
	jmp	.label_2719
.label_2712:
	mov	rax, qword ptr [rbp - 0x48]
	cmp	rax, qword ptr [rbp - 0x38]
	jae	.label_2716
	mov	rax, qword ptr [rbp - 0x48]
	mov	rcx, qword ptr [rbp - 0x50]
	mov	byte ptr [rcx + rax], 0
	mov	rax, qword ptr [rbp - 0x50]
	mov	qword ptr [rbp - 8], rax
	jmp	.label_2711
.label_2718:
	movabs	rax, 0x7fffffffffffffff
	cmp	qword ptr [rbp - 0x38], rax
	jae	.label_2714
	movabs	rax, 0x7fffffffffffffff
	mov	qword ptr [rbp - 0x38], rax
	jmp	.label_2715
.label_2721:
	mov	rax, qword ptr [rbp - 0x28]
	mov	qword ptr [rbp - 0x60], rax
.label_2723:
	mov	rax, qword ptr [rbp - 0x60]
	mov	qword ptr [rbp - 0x30], rax
	mov	rax, qword ptr [rbp - 0x18]
	cmp	rax, qword ptr [rbp - 0x30]
	jae	.label_2720
	mov	rax, qword ptr [rbp - 0x18]
	add	rax, 1
	mov	qword ptr [rbp - 0x68], rax
	jmp	.label_2722
.label_2717:
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rbp - 0x50]
	mov	rdx, qword ptr [rbp - 0x38]
	call	readlink
	mov	qword ptr [rbp - 0x40], rax
	mov	rax, qword ptr [rbp - 0x40]
	mov	qword ptr [rbp - 0x48], rax
	cmp	qword ptr [rbp - 0x40], 0
	jge	.label_2712
	call	__errno_location
	cmp	dword ptr [rax], 0x22
	je	.label_2712
	call	__errno_location
	mov	ecx, dword ptr [rax]
	mov	dword ptr [rbp - 0x54], ecx
	mov	rdi, qword ptr [rbp - 0x50]
	call	free
	mov	ecx, dword ptr [rbp - 0x54]
	mov	dword ptr [rbp - 0x6c], ecx
	call	__errno_location
	mov	ecx, dword ptr [rbp - 0x6c]
	mov	dword ptr [rax], ecx
	mov	qword ptr [rbp - 8], 0
	jmp	.label_2711
.label_2714:
	call	__errno_location
	mov	dword ptr [rax], 0xc
	mov	qword ptr [rbp - 8], 0
	jmp	.label_2711
.label_2716:
	mov	rdi, qword ptr [rbp - 0x50]
	call	free
	movabs	rdi, 0x3fffffffffffffff
	cmp	qword ptr [rbp - 0x38], rdi
	ja	.label_2718
	mov	rax, qword ptr [rbp - 0x38]
	shl	rax, 1
	mov	qword ptr [rbp - 0x38], rax
	jmp	.label_2713
.label_2720:
	mov	rax, qword ptr [rbp - 0x30]
	mov	qword ptr [rbp - 0x68], rax
.label_2722:
	mov	rax, qword ptr [rbp - 0x68]
	mov	qword ptr [rbp - 0x38], rax
.label_2719:
	mov	rdi, qword ptr [rbp - 0x38]
	call	malloc
	mov	qword ptr [rbp - 0x50], rax
	cmp	qword ptr [rbp - 0x50], 0
	jne	.label_2717
	mov	qword ptr [rbp - 8], 0
	jmp	.label_2711
.label_2711:
	mov	rax, qword ptr [rbp - 8]
	add	rsp, 0x70
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x41e022
	.globl sub_41e022
	.type sub_41e022, @function
sub_41e022:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x41e031

	.globl areadlink_with_size
	.type areadlink_with_size, @function
areadlink_with_size:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x70
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 0x18], rsi
	mov	qword ptr [rbp - 0x20], 0x400
	mov	qword ptr [rbp - 0x28], 0x2000
	mov	rsi, qword ptr [rbp - 0x20]
	cmp	rsi, qword ptr [rbp - 0x28]
	jae	.label_2721
	mov	rax, qword ptr [rbp - 0x20]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_2723
	.section	.text
	.align	32
	#Procedure 0x41e070

	.globl errno_unsupported
	.type errno_unsupported, @function
errno_unsupported:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	mov	al, 1
	mov	dword ptr [rbp - 4], edi
	cmp	dword ptr [rbp - 4], 0x16
	mov	byte ptr [rbp - 5], al
	je	.label_2724
	mov	al, 1
	cmp	dword ptr [rbp - 4], 0x26
	mov	byte ptr [rbp - 5], al
	je	.label_2724
	mov	edi, dword ptr [rbp - 4]
	call	is_ENOTSUP
	mov	byte ptr [rbp - 5], al
.label_2724:
	mov	al, byte ptr [rbp - 5]
	and	al, 1
	movzx	eax, al
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x41e0b2
	.globl sub_41e0b2
	.type sub_41e0b2, @function
sub_41e0b2:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x41e0c0

	.globl timetostr
	.type timetostr, @function
timetostr:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	rdi, qword ptr [rbp - 8]
	mov	rsi, qword ptr [rbp - 0x10]
	call	imaxtostr
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x41e0e3
	.globl sub_41e0e3
	.type sub_41e0e3, @function
sub_41e0e3:

	nop	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x41e0f0

	.globl rev_xstrcoll_ctime
	.type rev_xstrcoll_ctime, @function
rev_xstrcoll_ctime:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	movabs	rdx, OFFSET FLAT:xstrcoll
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	rsi, qword ptr [rbp - 0x10]
	mov	rdi, qword ptr [rbp - 8]
	mov	qword ptr [rbp - 0x18], rdi
	mov	rdi, rsi
	mov	rsi, qword ptr [rbp - 0x18]
	call	cmp_ctime
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x41e128
	.globl sub_41e128
	.type sub_41e128, @function
sub_41e128:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x41e130

	.globl xstrcoll_df_version
	.type xstrcoll_df_version, @function
xstrcoll_df_version:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 0x18], rsi
	mov	rax, qword ptr [rbp - 0x10]
	mov	rdi, rax
	call	is_linked_directory
	and	al, 1
	mov	byte ptr [rbp - 0x19], al
	mov	rdi, qword ptr [rbp - 0x18]
	call	is_linked_directory
	and	al, 1
	mov	byte ptr [rbp - 0x1a], al
	test	byte ptr [rbp - 0x19], 1
	je	.label_2727
	test	byte ptr [rbp - 0x1a], 1
	jne	.label_2727
	mov	dword ptr [rbp - 4], 0xffffffff
	jmp	.label_2726
.label_2727:
	test	byte ptr [rbp - 0x19], 1
	jne	.label_2725
	test	byte ptr [rbp - 0x1a], 1
	je	.label_2725
	mov	dword ptr [rbp - 4], 1
	jmp	.label_2726
.label_2725:
	jmp	.label_2728
.label_2728:
	mov	rax, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	rdi, rax
	mov	rsi, rcx
	call	cmp_version
	mov	dword ptr [rbp - 4], eax
.label_2726:
	mov	eax, dword ptr [rbp - 4]
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x41e1c3
	.globl sub_41e1c3
	.type sub_41e1c3, @function
sub_41e1c3:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x41e1d0
	.globl emit_bug_reporting_address
	.type emit_bug_reporting_address, @function
emit_bug_reporting_address:

	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	movabs	rdi, OFFSET FLAT:label_2729
	call	gettext
	movabs	rsi, OFFSET FLAT:label_2731
	mov	rdi, rax
	mov	al, 0
	call	printf
	movabs	rdi, OFFSET FLAT:label_2730
	mov	dword ptr [rbp - 4], eax
	call	gettext
	movabs	rsi, OFFSET FLAT:label_1182
	movabs	rdx, OFFSET FLAT:label_1183
	mov	rdi, rax
	mov	al, 0
	call	printf
	movabs	rdi, OFFSET FLAT:label_2732
	mov	dword ptr [rbp - 8], eax
	call	gettext
	mov	rsi,  qword ptr [word ptr [stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	mov	dword ptr [rbp - 0xc], eax
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x41e256
	.globl sub_41e256
	.type sub_41e256, @function
sub_41e256:

	nop	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x41e2c5
	.globl sub_41e2c5
	.type sub_41e2c5, @function
sub_41e2c5:

	nop	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x41e2d2
	.globl sub_41e2d2
	.type sub_41e2d2, @function
sub_41e2d2:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x41e2f6
	.globl sub_41e2f6
	.type sub_41e2f6, @function
sub_41e2f6:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x41e309
	.globl sub_41e309
	.type sub_41e309, @function
sub_41e309:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x41e310

	.globl stat
	.type stat, @function
stat:
	mov	rdx, rsi
	mov	rsi, rdi
	mov	edi, 1
	jmp	__xstat
	.section	.text
	.align	32
	#Procedure 0x41e320

	.globl fstat
	.type fstat, @function
fstat:
	mov	rdx, rsi
	mov	esi, edi
	mov	edi, 1
	jmp	__fxstat
	.section	.text
	.align	32
	#Procedure 0x41e32f
	.globl sub_41e32f
	.type sub_41e32f, @function
sub_41e32f:

	nop	
	.section	.text
	.align	32
	#Procedure 0x41e330

	.globl lstat
	.type lstat, @function
lstat:
	mov	rdx, rsi
	mov	rsi, rdi
	mov	edi, 1
	jmp	__lxstat
	.section	.text
	.align	32
	#Procedure 0x41e340

	.globl fstatat
	.type fstatat, @function
fstatat:
	mov	r8d, ecx
	mov	rcx, rdx
	mov	rdx, rsi
	mov	esi, edi
	mov	edi, 1
	jmp	__fxstatat
