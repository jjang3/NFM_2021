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
	#Procedure 0x401be5
	.globl sub_401be5
	.type sub_401be5, @function
sub_401be5:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x401bf0
	.globl hash_string
	.type hash_string, @function
hash_string:

	mov	al, byte ptr [rdi]
	xor	edx, edx
	test	al, al
	je	.label_9
	inc	rdi
	xor	edx, edx
	nop	dword ptr [rax]
.label_10:
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
	jne	.label_10
.label_9:
	mov	rax, rdx
	ret	
	.section	.text
	.align	16
	#Procedure 0x401c23
	.globl sub_401c23
	.type sub_401c23, @function
sub_401c23:

	nop	word ptr cs:[rax + rax]
.label_11:
	call	xalloc_die
	.section	.text
	.align	16
	#Procedure 0x401c35
	.globl sub_401c35
	.type sub_401c35, @function
sub_401c35:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x401c3f
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
	je	.label_12
	test	r14, r14
	je	.label_11
.label_12:
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
	#Procedure 0x401c70

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
	je	.label_14
	mov	esi, 0x3a
	mov	rdi, r13
	call	strchr
	mov	r14, rax
.label_14:
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
	je	.label_13
	test	r14, r14
	jne	.label_13
	test	rbp, rbp
	je	.label_13
	mov	esi, 0x2e
	mov	rdi, r13
	call	strchr
	test	rax, rax
	je	.label_13
	mov	rdi, r13
	mov	rsi, rax
	mov	rdx, r12
	mov	rcx, rbx
	mov	r8, r15
	mov	r9, qword ptr [rsp]
	call	parse_with_separator
	test	rax, rax
	cmovne	rax, rbp
	jmp	.label_15
.label_13:
	mov	rax, rbp
.label_15:
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
	#Procedure 0x401d14
	.globl sub_401d14
	.type sub_401d14, @function
sub_401d14:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x401d20

	.globl restore_initial_cwd
	.type restore_initial_cwd, @function
restore_initial_cwd:
	push	rbp
	push	rbx
	push	rax
	mov	rbx, rdi
	mov	eax, dword ptr [rbx + 0x48]
	test	al, 4
	jne	.label_16
	test	ah, 2
	jne	.label_19
	mov	edi, dword ptr [rbx + 0x28]
	call	fchdir
	test	eax, eax
	setne	al
	jmp	.label_21
.label_22:
	mov	edi, eax
	call	close
.label_17:
	mov	rdi, rbx
	call	i_ring_empty
	test	al, al
	jne	.label_20
	mov	rdi, rbx
	call	i_ring_pop
	test	eax, eax
	jns	.label_22
	jmp	.label_17
.label_19:
	mov	esi, dword ptr [rbx + 0x2c]
	lea	rdi, [rbx + 0x60]
	call	i_ring_push
	test	eax, eax
	js	.label_18
	mov	edi, eax
	call	close
.label_18:
	mov	dword ptr [rbx + 0x2c], 0xffffff9c
.label_16:
	xor	eax, eax
.label_21:
	movzx	ebp, al
	add	rbx, 0x60
	jmp	.label_17
	.section	.text
	.align	16
	#Procedure 0x401d8b
	.globl sub_401d8b
	.type sub_401d8b, @function
sub_401d8b:

	nop	word ptr [rax + rax]
.label_20:
	mov	eax, ebp
	add	rsp, 8
	pop	rbx
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x401d9a
	.globl sub_401d9a
	.type sub_401d9a, @function
sub_401d9a:

	nop	word ptr [rax + rax]
.label_24:
	mov	edi, ebx
	lea	rsi, [rsp]
	call	umaxtostr
	mov	rdi, rax
.label_23:
	call	xstrdup
	add	rsp, 0x20
	pop	rbx
	ret	
	.section	.text
	.align	16
	#Procedure 0x401db9
	.globl sub_401db9
	.type sub_401db9, @function
sub_401db9:

	nop	
	.section	.text
	.align	16
	#Procedure 0x401dba

	.globl gid_to_name
	.type gid_to_name, @function
gid_to_name:
	push	rbx
	sub	rsp, 0x20
	mov	ebx, edi
	call	getgrgid
	test	rax, rax
	je	.label_24
	mov	rdi, qword ptr [rax]
	jmp	.label_23
.label_25:
	call	xalloc_die
	.section	.text
	.align	16
	#Procedure 0x401dd5
	.globl sub_401dd5
	.type sub_401dd5, @function
sub_401dd5:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x401de3

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
	je	.label_26
	test	r15, r15
	je	.label_25
.label_26:
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
	#Procedure 0x401e20
	.globl quotearg_n_custom
	.type quotearg_n_custom, @function
quotearg_n_custom:

	sub	rsp, 0x38
	mov	rax, qword ptr [rip + label_27]
	mov	qword ptr [rsp + 0x30], rax
	movups	xmm0, xmmword ptr [rip + label_28]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0, xmmword ptr [rip + label_29]
	movaps	xmmword ptr [rsp + 0x10], xmm0
	movups	xmm0, xmmword ptr [rip + default_quoting_options]
	movaps	xmmword ptr [rsp], xmm0
	mov	dword ptr [rsp], 0xa
	test	rsi, rsi
	je	.label_30
	test	rdx, rdx
	je	.label_30
	mov	qword ptr [rsp + 0x28], rsi
	mov	qword ptr [rsp + 0x30], rdx
	lea	rax, [rsp]
	mov	rdx, -1
	mov	rsi, rcx
	mov	rcx, rax
	call	quotearg_n_options
	add	rsp, 0x38
	ret	
.label_30:
	call	abort
	.section	.text
	.align	16
	#Procedure 0x401e8e
	.globl sub_401e8e
	.type sub_401e8e, @function
sub_401e8e:

	nop	
	.section	.text
	.align	16
	#Procedure 0x401e90

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
.label_115:
	mov	r11, rbp
	xor	r14d, r14d
	mov	ecx, r15d
	cmp	r15d, 0xa
	ja	.label_114
	mov	edi, 7
	mov	r13b, 1
	xor	esi, esi
	mov	r8, qword ptr [rsp + 0x30]
	jmp	qword ptr [(rcx * 8) + label_118]
.label_1069:
	mov	byte ptr [rsp + 7], r10b
	mov	edi, OFFSET FLAT:label_124
	mov	esi, r15d
	mov	rbx, r11
	mov	ebp, r9d
	call	gettext_quote
	mov	qword ptr [rsp + 0x78], rax
	mov	edi, OFFSET FLAT:label_60
	mov	esi, r15d
	call	gettext_quote
	mov	r9d, ebp
	mov	r10b, byte ptr [rsp + 7]
	mov	r11, rbx
	mov	qword ptr [rsp + 0x70], rax
.label_1070:
	mov	dword ptr [rsp + 0x50], r9d
	mov	byte ptr [rsp + 7], r10b
	test	r12b, 1
	mov	r14d, 0
	mov	rcx, qword ptr [rsp + 0x78]
	jne	.label_49
	mov	al, byte ptr [rcx]
	test	al, al
	mov	r14d, 0
	je	.label_49
	xor	r14d, r14d
	nop	word ptr cs:[rax + rax]
.label_146:
	cmp	r14, r11
	jae	.label_90
	mov	rdx, qword ptr [rsp + 8]
	mov	byte ptr [rdx + r14], al
.label_90:
	movzx	eax, byte ptr [rcx + r14 + 1]
	inc	r14
	test	al, al
	jne	.label_146
.label_49:
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
	jmp	.label_43
.label_1062:
	xor	edi, edi
	xor	r14d, r14d
	mov	r13d, eax
	xor	esi, esi
	jmp	.label_43
.label_1065:
	mov	al, 1
.label_1063:
	mov	r12b, 1
.label_1066:
	test	r12b, 1
	mov	cl, 1
	je	.label_47
	mov	ecx, eax
.label_47:
	mov	al, cl
.label_1064:
	test	r12b, 1
	jne	.label_50
	test	r11, r11
	je	.label_52
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx], 0x27
.label_52:
	mov	r14d, 1
	jmp	.label_55
.label_50:
	xor	r14d, r14d
.label_55:
	mov	ecx, OFFSET FLAT:label_60
	mov	qword ptr [rsp + 0x48], rcx
	mov	ecx, 1
	mov	qword ptr [rsp + 0x40], rcx
	mov	r13d, eax
	mov	sil, r12b
	mov	edi, 2
	jmp	.label_43
.label_1067:
	test	r12b, 1
	jne	.label_66
	test	r11, r11
	je	.label_69
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax], 0x22
.label_69:
	mov	r14d, 1
	jmp	.label_71
.label_1068:
	mov	r13b, 1
	mov	edi, 5
	xor	r14d, r14d
	mov	eax, OFFSET FLAT:label_73
	mov	qword ptr [rsp + 0x48], rax
	mov	eax, 1
	mov	qword ptr [rsp + 0x40], rax
	mov	sil, 1
	jmp	.label_43
.label_66:
	xor	r14d, r14d
.label_71:
	mov	eax, OFFSET FLAT:label_73
	mov	qword ptr [rsp + 0x48], rax
	mov	eax, 1
	mov	qword ptr [rsp + 0x40], rax
	mov	r13b, 1
	mov	sil, r12b
	mov	edi, 5
	nop	word ptr cs:[rax + rax]
.label_43:
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
	jmp	.label_96
	.section	.text
	.align	16
	#Procedure 0x40217d
	.globl sub_40217d
	.type sub_40217d, @function
sub_40217d:

	nop	dword ptr [rax]
.label_54:
	inc	rsi
.label_96:
	cmp	rbp, -1
	je	.label_130
	cmp	rsi, rbp
	jne	.label_133
	jmp	.label_134
	.section	.text
	.align	16
	#Procedure 0x402193
	.globl sub_402193
	.type sub_402193, @function
sub_402193:

	nop	word ptr cs:[rax + rax]
.label_130:
	mov	rcx, -1
	cmp	byte ptr [rdi + rsi], 0
	je	.label_140
.label_133:
	cmp	byte ptr [rsp + 0x2f], 0
	je	.label_144
	mov	rax, qword ptr [rsp + 0x40]
	lea	rbx, [rsi + rax]
	cmp	rax, 2
	jb	.label_75
	cmp	rbp, -1
	jne	.label_75
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
.label_75:
	cmp	rbx, rbp
	jbe	.label_152
.label_144:
	xor	r8d, r8d
.label_68:
	movzx	r15d, byte ptr [rdi + rsi]
	cmp	r15, 0x7e
	ja	.label_34
	xor	edx, edx
	mov	r13b, 1
	mov	cl, 0x6e
	mov	bl, 0x61
	xor	eax, eax
	jmp	qword ptr [(r15 * 8) + label_38]
.label_1101:
	test	rsi, rsi
	jne	.label_42
	jmp	.label_46
	.section	.text
	.align	16
	#Procedure 0x402235
	.globl sub_402235
	.type sub_402235, @function
sub_402235:

	nop	word ptr cs:[rax + rax]
.label_152:
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
	jne	.label_61
	cmp	byte ptr [rsp + 6], 0
	mov	rdi, qword ptr [rsp + 0x30]
	mov	r11, rbx
	mov	r10d, r15d
	mov	rax, qword ptr [rsp + 0x38]
	mov	r9d, ebp
	mov	rsi, r12
	mov	r12, rax
	mov	rbp, qword ptr [rsp + 0x20]
	je	.label_68
	jmp	.label_31
.label_61:
	mov	rdi, qword ptr [rsp + 0x30]
	mov	r11, rbx
	mov	r10d, r15d
	mov	rax, qword ptr [rsp + 0x38]
	mov	r9d, ebp
	mov	rsi, r12
	mov	r12, rax
	mov	rbp, qword ptr [rsp + 0x20]
	jmp	.label_68
.label_1105:
	xor	eax, eax
	cmp	rbp, -1
	je	.label_82
	test	rsi, rsi
	jne	.label_84
	cmp	rbp, 1
	je	.label_46
	xor	r13d, r13d
	jmp	.label_41
.label_1094:
	cmp	byte ptr [rsp + 0x17], 0
	je	.label_92
	cmp	byte ptr [rsp + 6], 0
	jne	.label_80
	cmp	r12d, 2
	jne	.label_100
	mov	eax, r9d
	and	al, 1
	jne	.label_100
	cmp	r14, r11
	jae	.label_103
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], 0x27
.label_103:
	lea	rax, [r14 + 1]
	cmp	rax, r11
	jae	.label_106
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + rax], 0x24
.label_106:
	lea	rax, [r14 + 2]
	cmp	rax, r11
	jae	.label_97
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + rax], 0x27
.label_97:
	add	r14, 3
	mov	r9b, 1
.label_100:
	mov	rcx, r14
	cmp	rcx, r11
	jae	.label_131
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + rcx], 0x5c
.label_131:
	lea	r14, [rcx + 1]
	mov	al, 1
	mov	r15b, 0x30
	cmp	r12d, 2
	je	.label_122
	lea	rdx, [rsi + 1]
	cmp	rdx, rbp
	jae	.label_122
	mov	dl, byte ptr [rdi + rdx]
	add	dl, 0xd0
	cmp	dl, 9
	ja	.label_122
	cmp	r14, r11
	jae	.label_95
	mov	rdx, qword ptr [rsp + 8]
	mov	byte ptr [rdx + r14], 0x30
.label_95:
	lea	rdx, [rcx + 2]
	cmp	rdx, r11
	jae	.label_37
	mov	rbx, qword ptr [rsp + 8]
	mov	byte ptr [rbx + rdx], 0x30
.label_37:
	add	rcx, 3
	xor	r13d, r13d
	mov	r14, rcx
	jmp	.label_41
.label_1095:
	mov	bl, 0x62
	jmp	.label_141
.label_1096:
	mov	cl, 0x74
	jmp	.label_86
.label_1097:
	mov	bl, 0x76
	jmp	.label_141
.label_1098:
	mov	bl, 0x66
	jmp	.label_141
.label_1099:
	mov	cl, 0x72
	jmp	.label_86
.label_1102:
	mov	r15b, 0x27
	mov	al, 1
	mov	qword ptr [rsp + 0xa0], rax
	cmp	r12d, 2
	jne	.label_145
	cmp	byte ptr [rsp + 6], 0
	jne	.label_36
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
	jae	.label_150
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], 0x27
.label_150:
	lea	rax, [r14 + 1]
	cmp	rax, r11
	jae	.label_44
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + rax], 0x5c
.label_44:
	lea	rax, [r14 + 2]
	cmp	rax, r11
	jae	.label_48
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + rax], 0x27
.label_48:
	add	r14, 3
	xor	r9d, r9d
.label_145:
	xor	eax, eax
	mov	r13b, 1
	jmp	.label_41
.label_1103:
	mov	r15b, 0x3f
	cmp	r12d, 5
	je	.label_57
	cmp	r12d, 2
	jne	.label_42
	cmp	byte ptr [rsp + 6], 0
	je	.label_42
	jmp	.label_36
.label_1104:
	cmp	r12d, 2
	jne	.label_67
	cmp	byte ptr [rsp + 6], 0
	jne	.label_36
	mov	r15b, 0x5c
	xor	eax, eax
	xor	r13d, r13d
	jmp	.label_33
.label_34:
	mov	dword ptr [rsp + 0x54], r8d
	mov	dword ptr [rsp + 0x50], r9d
	mov	byte ptr [rsp + 7], r10b
	mov	qword ptr [rsp + 0x98], r11
	cmp	qword ptr [rsp + 0xa8], 1
	jne	.label_77
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
.label_32:
	and	r13b, 1
	mov	r8d, r13d
	or	r8b, byte ptr [rsp + 0x2a]
	mov	qword ptr [rsp + 0x60], r12
	cmp	r12, 1
	mov	r11, qword ptr [rsp + 0x98]
	mov	r10b, byte ptr [rsp + 7]
	mov	r12, qword ptr [rsp + 0x38]
	mov	r9d, dword ptr [rsp + 0x50]
	ja	.label_99
	test	r8b, r8b
	je	.label_99
	xor	eax, eax
	mov	rbp, qword ptr [rsp + 0x20]
	mov	r8d, dword ptr [rsp + 0x54]
	jmp	.label_41
.label_82:
	test	rsi, rsi
	jne	.label_116
	mov	cl, byte ptr [rdi + 1]
	test	cl, cl
	jne	.label_116
.label_46:
	mov	dl, 1
.label_1100:
	cmp	byte ptr [rsp + 0x1f], 0
	je	.label_36
	xor	eax, eax
	mov	r13b, dl
	nop	word ptr [rax + rax]
.label_41:
	cmp	byte ptr [rsp + 0x2e], 0
	je	.label_127
	cmp	qword ptr [rsp + 0xf0], 0
	jne	.label_109
	jmp	.label_125
	.section	.text
	.align	16
	#Procedure 0x402584
	.globl sub_402584
	.type sub_402584, @function
sub_402584:

	nop	word ptr cs:[rax + rax]
.label_127:
	cmp	byte ptr [rsp + 0x2d], 0
	je	.label_125
.label_109:
	mov	ebx, r8d
	mov	r8, rsi
	mov	ecx, r15d
	shr	cl, 5
	movzx	edx, cl
	mov	esi, 1
	mov	ecx, r15d
	shl	esi, cl
	test	bl, bl
	jne	.label_137
	mov	rcx, qword ptr [rsp + 0xf0]
	and	esi, dword ptr [rcx + rdx*4]
	mov	ebx, r15d
	mov	rsi, r8
	je	.label_33
	jmp	.label_143
	.section	.text
	.align	16
	#Procedure 0x4025cd
	.globl sub_4025cd
	.type sub_4025cd, @function
sub_4025cd:

	nop	dword ptr [rax]
.label_125:
	test	r8b, r8b
	mov	ebx, r15d
	jne	.label_143
	jmp	.label_33
.label_137:
	mov	ebx, r15d
	mov	rsi, r8
	jmp	.label_143
.label_92:
	cmp	dword ptr [rsp + 0x90], 0
	jne	.label_54
	xor	r15d, r15d
	jmp	.label_42
.label_67:
	mov	cl, 0x5c
	cmp	byte ptr [rsp + 0x29], 0
	je	.label_86
	xor	eax, eax
	mov	r15b, 0x5c
	xor	r13d, r13d
	jmp	.label_33
.label_86:
	cmp	byte ptr [rsp + 0x1f], 0
	mov	ebx, ecx
	je	.label_36
.label_141:
	xor	eax, eax
	cmp	byte ptr [rsp + 0x17], 0
	mov	r13d, 0
	je	.label_41
	nop	word ptr cs:[rax + rax]
.label_143:
	cmp	byte ptr [rsp + 6], 0
	jne	.label_80
	cmp	r12d, 2
	jne	.label_53
	mov	eax, r9d
	and	al, 1
	jne	.label_53
	cmp	r14, r11
	jae	.label_132
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], 0x27
.label_132:
	lea	rax, [r14 + 1]
	cmp	rax, r11
	jae	.label_62
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + rax], 0x24
.label_62:
	lea	rax, [r14 + 2]
	cmp	rax, r11
	jae	.label_88
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + rax], 0x27
.label_88:
	add	r14, 3
	mov	r9b, 1
.label_53:
	cmp	r14, r11
	jae	.label_70
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], 0x5c
.label_70:
	inc	r14
	jmp	.label_74
.label_77:
	mov	qword ptr [rsp + 0x80], 0
	cmp	rbp, -1
	jne	.label_79
	mov	rbx, rsi
	call	strlen
	mov	rsi, rbx
	mov	rdi, qword ptr [rsp + 0x30]
	mov	rbp, rax
.label_79:
	lea	rax, [rdi + rsi]
	mov	qword ptr [rsp + 0x60], rax
	mov	r13b, 1
	xor	r12d, r12d
	lea	rax, [rsp + 0x80]
	mov	rcx, rax
	mov	qword ptr [rsp + 0x20], rbp
	mov	qword ptr [rsp + 0x58], rsi
.label_56:
	lea	rbx, [r12 + rsi]
	lea	rsi, [rdi + rbx]
	mov	rdx, rbp
	sub	rdx, rbx
	lea	rdi, [rsp + 0x94]
	call	rpl_mbrtowc
	mov	rbp, rax
	test	rbp, rbp
	je	.label_105
	cmp	rbp, -1
	movabs	rsi, 0x20000002b
	je	.label_108
	cmp	rbp, -2
	je	.label_113
	cmp	rbp, 1
	seta	al
	and	al, byte ptr [rsp + 0x2b]
	cmp	al, 1
	mov	rdi, qword ptr [rsp + 0x30]
	mov	r11, qword ptr [rsp + 0x98]
	jne	.label_119
	mov	rax, qword ptr [rsp + 0x60]
	lea	rax, [rax + r12]
	mov	ecx, 1
	nop	word ptr cs:[rax + rax]
.label_110:
	movsx	edx, byte ptr [rax + rcx]
	add	edx, -0x5b
	cmp	edx, 0x21
	ja	.label_149
	bt	rsi, rdx
	jb	.label_129
.label_149:
	inc	rcx
	cmp	rcx, rbp
	jb	.label_110
.label_119:
	mov	edi, dword ptr [rsp + 0x94]
	call	iswprint
	test	eax, eax
	jne	.label_121
	xor	r13d, r13d
.label_121:
	lea	rdi, [rsp + 0x80]
	add	r12, rbp
	mov	rbx, rdi
	call	mbsinit
	mov	rcx, rbx
	test	eax, eax
	mov	rdi, qword ptr [rsp + 0x30]
	mov	rbp, qword ptr [rsp + 0x20]
	mov	rsi, qword ptr [rsp + 0x58]
	je	.label_56
	jmp	.label_32
.label_122:
	xor	r13d, r13d
	jmp	.label_41
.label_116:
	mov	rbp, -1
	xor	r13d, r13d
	jmp	.label_41
.label_57:
	cmp	dword ptr [rsp + 0x8c], 0
	je	.label_42
	lea	rcx, [rsi + 2]
	cmp	rcx, rbp
	jae	.label_42
	cmp	byte ptr [rdi + rsi + 1], 0x3f
	jne	.label_42
	movsx	edx, byte ptr [rdi + rcx]
	xor	eax, eax
	cmp	edx, 0x3e
	ja	.label_58
	mov	rbx, rsi
	movabs	rsi, 0x7000a38200000000
	bt	rsi, rdx
	jae	.label_94
	cmp	byte ptr [rsp + 6], 0
	jne	.label_117
	cmp	r14, r11
	jae	.label_93
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], 0x3f
.label_93:
	lea	rax, [r14 + 1]
	cmp	rax, r11
	jae	.label_78
	mov	rsi, qword ptr [rsp + 8]
	mov	byte ptr [rsi + rax], 0x22
.label_78:
	lea	rax, [r14 + 2]
	cmp	rax, r11
	jae	.label_59
	mov	rsi, qword ptr [rsp + 8]
	mov	byte ptr [rsi + rax], 0x22
.label_59:
	lea	rax, [r14 + 3]
	cmp	rax, r11
	jae	.label_81
	mov	rsi, qword ptr [rsp + 8]
	mov	byte ptr [rsi + rax], 0x3f
.label_81:
	add	r14, 4
	xor	eax, eax
	mov	rsi, rcx
	mov	r15b, dl
	xor	r13d, r13d
	jmp	.label_41
.label_42:
	xor	eax, eax
.label_84:
	xor	r13d, r13d
	jmp	.label_41
.label_99:
	add	qword ptr [rsp + 0x60], rsi
	xor	eax, eax
	mov	rbp, qword ptr [rsp + 0x20]
	jmp	.label_76
	.section	.text
	.align	16
	#Procedure 0x4028b2
	.globl sub_4028b2
	.type sub_4028b2, @function
sub_4028b2:

	nop	word ptr cs:[rax + rax]
.label_147:
	inc	r14
	mov	r15b, byte ptr [rdi + rsi + 1]
	mov	rsi, rdx
.label_76:
	test	r8b, r8b
	je	.label_85
	mov	ecx, dword ptr [rsp + 0x54]
	test	cl, 1
	je	.label_87
	cmp	r14, r11
	jae	.label_89
	mov	rdx, qword ptr [rsp + 8]
	mov	byte ptr [rdx + r14], 0x5c
.label_89:
	inc	r14
	mov	dword ptr [rsp + 0x54], 0
	jmp	.label_87
	.section	.text
	.align	16
	#Procedure 0x4028fc
	.globl sub_4028fc
	.type sub_4028fc, @function
sub_4028fc:

	nop	dword ptr [rax]
.label_85:
	cmp	byte ptr [rsp + 6], 0
	jne	.label_31
	cmp	r12d, 2
	jne	.label_104
	mov	eax, r9d
	and	al, 1
	jne	.label_104
	cmp	r14, r11
	jae	.label_107
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], 0x27
.label_107:
	lea	rax, [r14 + 1]
	cmp	rax, r11
	jae	.label_111
	mov	rdx, qword ptr [rsp + 8]
	mov	byte ptr [rdx + rax], 0x24
.label_111:
	lea	rax, [r14 + 2]
	cmp	rax, r11
	jae	.label_151
	mov	rdx, qword ptr [rsp + 8]
	mov	byte ptr [rdx + rax], 0x27
.label_151:
	add	r14, 3
	mov	r9b, 1
.label_104:
	cmp	r14, r11
	jae	.label_148
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], 0x5c
.label_148:
	lea	rax, [r14 + 1]
	cmp	rax, r11
	jae	.label_51
	mov	edx, r15d
	shr	dl, 6
	or	dl, 0x30
	mov	rbx, qword ptr [rsp + 8]
	mov	byte ptr [rbx + rax], dl
.label_51:
	lea	rax, [r14 + 2]
	cmp	rax, r11
	jae	.label_128
	mov	edx, r15d
	shr	dl, 3
	and	dl, 7
	or	dl, 0x30
	mov	rbx, qword ptr [rsp + 8]
	mov	byte ptr [rbx + rax], dl
.label_128:
	add	r14, 3
	and	r15b, 7
	or	r15b, 0x30
	mov	al, 1
.label_87:
	lea	rdx, [rsi + 1]
	cmp	qword ptr [rsp + 0x60], rdx
	jbe	.label_33
	test	r9b, 1
	je	.label_136
	mov	ebx, eax
	and	bl, 1
	jne	.label_136
	mov	rbx, rsi
	cmp	r14, r11
	jae	.label_142
	mov	rsi, qword ptr [rsp + 8]
	mov	byte ptr [rsi + r14], 0x27
.label_142:
	lea	rsi, [r14 + 1]
	cmp	rsi, r11
	jae	.label_120
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + rsi], 0x27
.label_120:
	add	r14, 2
	xor	r9d, r9d
	mov	rsi, rbx
.label_136:
	cmp	r14, r11
	jae	.label_147
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + r14], r15b
	jmp	.label_147
	.section	.text
	.align	16
	#Procedure 0x402a03
	.globl sub_402a03
	.type sub_402a03, @function
sub_402a03:

	nop	word ptr cs:[rax + rax]
.label_33:
	test	r9b, 1
	je	.label_35
	and	al, 1
	jne	.label_35
	cmp	r14, r11
	jae	.label_39
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], 0x27
.label_39:
	lea	rax, [r14 + 1]
	cmp	rax, r11
	jae	.label_83
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + rax], 0x27
.label_83:
	add	r14, 2
	xor	r9d, r9d
.label_35:
	mov	ebx, r15d
.label_74:
	cmp	r14, r11
	jae	.label_139
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], bl
.label_139:
	inc	r14
	shl	r13b, 7
	sar	r13b, 7
	and	r13b, r10b
	mov	r10d, r13d
	jmp	.label_54
.label_108:
	xor	r13d, r13d
.label_105:
	mov	rdi, qword ptr [rsp + 0x30]
	mov	rsi, qword ptr [rsp + 0x58]
	jmp	.label_32
.label_113:
	mov	rbp, qword ptr [rsp + 0x20]
	cmp	rbp, rbx
	mov	rdi, qword ptr [rsp + 0x30]
	jbe	.label_65
	mov	rsi, qword ptr [rsp + 0x58]
.label_72:
	mov	rax, qword ptr [rsp + 0x60]
	cmp	byte ptr [rax + r12], 0
	je	.label_40
	lea	rax, [rsi + r12 + 1]
	inc	r12
	cmp	rax, rbp
	jb	.label_72
	xor	r13d, r13d
	jmp	.label_32
.label_65:
	xor	r13d, r13d
	mov	rsi, qword ptr [rsp + 0x58]
	jmp	.label_32
.label_40:
	xor	r13d, r13d
	jmp	.label_32
.label_58:
	xor	r13d, r13d
	jmp	.label_41
.label_94:
	xor	r13d, r13d
	mov	rsi, rbx
	jmp	.label_41
	.section	.text
	.align	16
	#Procedure 0x402ad8
	.globl sub_402ad8
	.type sub_402ad8, @function
sub_402ad8:

	nop	dword ptr [rax + rax]
.label_134:
	mov	rcx, rsi
.label_140:
	cmp	r12d, 2
	setne	al
	test	r14, r14
	setne	dl
	cmp	byte ptr [rsp + 6], 0
	je	.label_91
	or	al, dl
	je	.label_98
.label_91:
	cmp	r12d, 2
	setne	al
	cmp	byte ptr [rsp + 6], 0
	setne	dl
	mov	rsi, qword ptr [rsp + 0xa0]
	test	sil, 1
	mov	bl, byte ptr [rsp + 0x2c]
	mov	rsi, qword ptr [rsp + 0xb0]
	je	.label_101
	or	al, dl
	jne	.label_101
	test	r10b, 1
	jne	.label_112
	cmp	qword ptr [rsp + 0x68], 0
	je	.label_101
	test	r11, r11
	mov	r15d, r12d
	mov	al, bl
	mov	qword ptr [rsp + 0x20], rcx
	mov	r12d, esi
	mov	rbp, qword ptr [rsp + 0x68]
	je	.label_115
.label_101:
	mov	rdx, qword ptr [rsp + 0x48]
	test	rdx, rdx
	je	.label_123
	cmp	byte ptr [rsp + 6], 0
	mov	rcx, qword ptr [rsp + 8]
	jne	.label_126
	mov	al, byte ptr [rdx]
	test	al, al
	je	.label_126
	inc	rdx
	nop	word ptr cs:[rax + rax]
.label_138:
	cmp	r14, r11
	jae	.label_135
	mov	byte ptr [rcx + r14], al
.label_135:
	inc	r14
	movzx	eax, byte ptr [rdx]
	inc	rdx
	test	al, al
	jne	.label_138
	jmp	.label_126
.label_80:
	mov	qword ptr [rsp + 0x20], rbp
.label_31:
	mov	rdx, rdi
	jmp	.label_45
.label_36:
	mov	qword ptr [rsp + 0x20], rbp
.label_129:
	mov	rdx, rdi
	mov	eax, 2
.label_102:
	mov	qword ptr [rsp + 0x38], rax
.label_45:
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
.label_63:
	mov	r14, rax
.label_64:
	mov	rax, r14
	add	rsp, 0xb8
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_98:
	mov	rdx, rdi
	mov	qword ptr [rsp + 0x20], rcx
	jmp	.label_45
.label_112:
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
	jmp	.label_63
.label_123:
	mov	rcx, qword ptr [rsp + 8]
.label_126:
	cmp	r14, r11
	jae	.label_64
	mov	byte ptr [rcx + r14], 0
	jmp	.label_64
.label_117:
	mov	qword ptr [rsp + 0x20], rbp
	mov	rdx, rdi
	mov	eax, 5
	jmp	.label_102
.label_114:
	call	abort
	.section	.text
	.align	16
	#Procedure 0x402c97
	.globl sub_402c97
	.type sub_402c97, @function
sub_402c97:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x402ca0
	.globl hash_get_n_buckets_used
	.type hash_get_n_buckets_used, @function
hash_get_n_buckets_used:

	mov	rax, qword ptr [rdi + 0x18]
	ret	
	.section	.text
	.align	16
	#Procedure 0x402ca5
	.globl sub_402ca5
	.type sub_402ca5, @function
sub_402ca5:

	nop	word ptr cs:[rax + rax]
.label_153:
	push	rax
	call	abort
	.section	.text
	.align	16
	#Procedure 0x402cb6
	.globl sub_402cb6
	.type sub_402cb6, @function
sub_402cb6:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x402cbb
	.globl set_custom_quoting
	.type set_custom_quoting, @function
set_custom_quoting:

	test	rdi, rdi
	mov	eax, OFFSET FLAT:default_quoting_options
	cmovne	rax, rdi
	mov	dword ptr [rax], 0xa
	test	rsi, rsi
	je	.label_153
	test	rdx, rdx
	je	.label_153
	mov	qword ptr [rax + 0x28], rsi
	mov	qword ptr [rax + 0x30], rdx
	ret	
	.section	.text
	.align	16
	#Procedure 0x402ce0

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
	jne	.label_219
	cmp	byte ptr [r13 + 0x10], 0
	jne	.label_219
	xor	esi, esi
	cmp	dword ptr [r13], 2
	sete	sil
	shl	esi, 3
.label_219:
	or	esi, eax
	xor	edx, edx
	call	xfts_open
	mov	r14, rax
	mov	rdi, r14
	call	rpl_fts_read
	mov	rdx, rax
	mov	r12b, 1
	test	rdx, rdx
	je	.label_225
	mov	bpl, 1
	mov	qword ptr [rsp + 0x40], r14
	jmp	.label_163
.label_236:
	mov	esi, OFFSET FLAT:label_169
.label_165:
	mov	edx, 5
	call	dcgettext
	mov	r14, rax
	mov	rbx, qword ptr [rsp + 0x10]
	xor	r15d, r15d
	mov	rbp, qword ptr [rsp + 8]
	jmp	.label_233
.label_221:
	mov	edi, r12d
	call	close
	xor	ecx, ecx
	test	eax, eax
	setne	cl
	lea	ebx, [rcx*4 + 2]
	jmp	.label_238
	.section	.text
	.align	16
	#Procedure 0x402d9e
	.globl sub_402d9e
	.type sub_402d9e, @function
sub_402d9e:

	nop	
.label_163:
	mov	r9, qword ptr [rdx + 0x30]
	mov	rbx, qword ptr [rdx + 0x38]
	movzx	eax, word ptr [rdx + 0x70]
	dec	eax
	movzx	eax, ax
	cmp	eax, 9
	ja	.label_184
	jmp	qword ptr [(rax * 8) + label_247]
.label_1141:
	cmp	byte ptr [r13 + 4], 0
	je	.label_184
	mov	rax, qword ptr [r13 + 8]
	mov	r12b, 1
	test	rax, rax
	je	.label_176
	mov	rcx, qword ptr [rdx + 0x80]
	cmp	rcx, qword ptr [rax]
	jne	.label_176
	mov	rcx, qword ptr [rdx + 0x78]
	cmp	rcx, qword ptr [rax + 8]
	jne	.label_176
	mov	r13, rdx
	cmp	byte ptr [rbx], 0x2f
	jne	.label_257
	cmp	byte ptr [rbx + 1], 0
	je	.label_155
.label_257:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_173
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
	mov	edx, OFFSET FLAT:label_166
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
.label_186:
	xor	r12d, r12d
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_181
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
	jmp	.label_176
.label_1142:
	mov	rdi, r14
	mov	rsi, rdx
	mov	r15, rdx
	mov	r12, r9
	call	cycle_warning_required
	mov	r9, r12
	mov	rdx, r15
	test	al, al
	je	.label_184
	xor	r12d, r12d
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_198
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
	jmp	.label_176
.label_1143:
	mov	qword ptr [rsp + 0x18], rbx
	mov	byte ptr [rsp + 3], bpl
	mov	r14b, 1
	xor	r15d, r15d
	xor	ebp, ebp
	cmp	byte ptr [r13 + 0x11], 0
	mov	qword ptr [rsp + 0x30], rdx
	je	.label_215
	xor	r12d, r12d
	jmp	.label_178
.label_1144:
	mov	r12b, 1
	cmp	byte ptr [r13 + 4], 0
	je	.label_176
.label_184:
	mov	qword ptr [rsp + 0x18], rbx
	mov	byte ptr [rsp + 3], bpl
	cmp	dword ptr [rsp + 0x3c], -1
	mov	qword ptr [rsp + 0x30], rdx
	jne	.label_159
	cmp	dword ptr [r13], 2
	jne	.label_159
	cmp	qword ptr [r13 + 8], 0
	je	.label_231
	nop	dword ptr [rax + rax]
.label_159:
	lea	r15, [rdx + 0x78]
	cmp	byte ptr [r13 + 0x10], 0
	mov	ebp, dword ptr [rsp + 0x2c]
	jne	.label_234
	jmp	.label_188
.label_1145:
	mov	qword ptr [rsp + 0x18], rbx
	mov	byte ptr [rsp + 3], bpl
	mov	r14b, 1
	xor	r15d, r15d
	xor	ebp, ebp
	cmp	byte ptr [r13 + 0x11], 0
	mov	qword ptr [rsp + 0x30], rdx
	je	.label_241
	xor	r12d, r12d
	jmp	.label_178
.label_1146:
	cmp	qword ptr [rdx + 0x58], 0
	jne	.label_245
	cmp	qword ptr [rdx + 0x20], 0
	je	.label_246
.label_245:
	mov	qword ptr [rsp + 0x18], rbx
	mov	byte ptr [rsp + 3], bpl
	mov	r14b, 1
	xor	r15d, r15d
	xor	ebp, ebp
	cmp	byte ptr [r13 + 0x11], 0
	mov	qword ptr [rsp + 0x30], rdx
	je	.label_249
	xor	r12d, r12d
	jmp	.label_178
.label_215:
	mov	ebx, dword ptr [rdx + 0x40]
	xor	r15d, r15d
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_252
	jmp	.label_253
.label_241:
	mov	ebp, dword ptr [rdx + 0x40]
	xor	r15d, r15d
	xor	edi, edi
	mov	esi, 3
	mov	rdx, qword ptr [rsp + 0x18]
	call	quotearg_n_style_colon
	mov	rcx, rax
	xor	edi, edi
	mov	edx, OFFSET FLAT:label_157
	xor	eax, eax
	mov	esi, ebp
	jmp	.label_158
.label_249:
	mov	ebx, dword ptr [rdx + 0x40]
	xor	r15d, r15d
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_160
.label_253:
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
.label_158:
	call	error
	xor	ebp, ebp
	xor	r12d, r12d
	jmp	.label_178
.label_231:
	lea	r15, [rdx + 0x78]
	cmp	byte ptr [r13 + 0x10], 0
	mov	al, 1
	mov	ebp, dword ptr [rsp + 0x2c]
	je	.label_170
	nop	word ptr cs:[rax + rax]
.label_234:
	mov	eax, dword ptr [rdx + 0x90]
	mov	ecx, 0xf000
	and	eax, ecx
	cmp	eax, 0xa000
	jne	.label_188
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
	je	.label_188
	mov	r14b, 1
	cmp	byte ptr [r13 + 0x11], 0
	je	.label_196
	xor	ebp, ebp
	jmp	.label_199
	.section	.text
	.align	16
	#Procedure 0x4030d7
	.globl sub_4030d7
	.type sub_4030d7, @function
sub_4030d7:

	nop	word ptr [rax + rax]
.label_188:
	cmp	ebp, -1
	je	.label_202
	mov	ecx, dword ptr [r15 + 0x1c]
	cmp	ecx, ebp
	sete	al
	cmp	dword ptr [rsp + 0x28], -1
	je	.label_170
	cmp	ecx, ebp
	je	.label_248
	jmp	.label_170
.label_202:
	mov	al, 1
	cmp	dword ptr [rsp + 0x28], -1
	je	.label_170
.label_248:
	mov	eax, dword ptr [rsp + 0x28]
	cmp	dword ptr [r15 + 0x20], eax
	sete	al
.label_170:
	movzx	ecx, word ptr [rdx + 0x70]
	cmp	ecx, 6
	ja	.label_216
	mov	edx, 0x56
	bt	edx, ecx
	jae	.label_216
	mov	rcx, qword ptr [r13 + 8]
	test	rcx, rcx
	je	.label_216
	mov	rdx, qword ptr [r15 + 8]
	cmp	rdx, qword ptr [rcx]
	jne	.label_216
	mov	rdx, qword ptr [r15]
	cmp	rdx, qword ptr [rcx + 8]
	jne	.label_216
	mov	rbp, qword ptr [rsp + 0x18]
	cmp	byte ptr [rbp], 0x2f
	jne	.label_227
	cmp	byte ptr [rbp + 1], 0
	je	.label_229
.label_227:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_173
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
	mov	edx, OFFSET FLAT:label_166
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
.label_230:
	movzx	ebp, byte ptr [rsp + 3]
	xor	r12d, r12d
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_181
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	xor	edi, edi
	xor	esi, esi
	xor	eax, eax
	mov	rdx, rcx
	call	error
	mov	r13, qword ptr [rsp + 0x1b0]
	jmp	.label_176
	.section	.text
	.align	16
	#Procedure 0x4031f3
	.globl sub_4031f3
	.type sub_4031f3, @function
sub_4031f3:

	nop	word ptr cs:[rax + rax]
.label_216:
	test	al, al
	je	.label_154
	mov	ebx, dword ptr [r14 + 0x2c]
	mov	rax, qword ptr [rsp + 0x1b0]
	cmp	byte ptr [rax + 0x10], 0
	je	.label_156
	cmp	dword ptr [rsp + 0x3c], -1
	je	.label_161
	movzx	eax, word ptr [r15 + 0x18]
	and	eax, 0xf000
	mov	ebp, 0x900
	cmp	eax, 0x8000
	je	.label_183
	movzx	eax, ax
	cmp	eax, 0x4000
	jne	.label_161
	mov	ebp, 0x10900
.label_183:
	xor	eax, eax
	mov	edi, ebx
	mov	r13, r9
	mov	rsi, r9
	mov	edx, ebp
	call	openat
	mov	r12d, eax
	test	r12d, r12d
	jns	.label_182
	call	__errno_location
	mov	r14, rax
	mov	eax, dword ptr [r14]
	cmp	eax, 0xd
	jne	.label_185
	mov	ecx, dword ptr [r15 + 0x18]
	mov	eax, 0xf000
	and	ecx, eax
	mov	eax, 0xd
	cmp	ecx, 0x8000
	jne	.label_185
	or	ebp, 1
	xor	eax, eax
	mov	edi, ebx
	mov	rsi, r13
	mov	edx, ebp
	call	openat
	mov	r12d, eax
	test	r12d, r12d
	js	.label_250
.label_182:
	mov	edi, 1
	mov	esi, r12d
	lea	rdx, [rsp + 0x50]
	call	__fxstat
	mov	ebx, 6
	test	eax, eax
	jne	.label_192
	mov	rax, qword ptr [r15 + 8]
	mov	ebx, 4
	cmp	rax, qword ptr [rsp + 0x58]
	jne	.label_192
	mov	rax, qword ptr [r15]
	cmp	rax, qword ptr [rsp + 0x50]
	jne	.label_192
	mov	eax, dword ptr [rsp + 0x2c]
	cmp	eax, -1
	mov	ebx, 2
	je	.label_208
	cmp	dword ptr [rsp + 0x6c], eax
	jne	.label_192
.label_208:
	cmp	dword ptr [rsp + 0x28], -1
	je	.label_212
	mov	eax, dword ptr [rsp + 0x28]
	cmp	dword ptr [rsp + 0x70], eax
	jne	.label_192
.label_212:
	mov	edi, r12d
	mov	esi, dword ptr [rsp + 4]
	mov	edx, dword ptr [rsp + 0x24]
	call	fchown
	test	eax, eax
	mov	ebx, 6
	je	.label_221
.label_192:
	call	__errno_location
	mov	rbp, rax
	mov	r14d, dword ptr [rbp]
	mov	edi, r12d
	call	close
	mov	dword ptr [rbp], r14d
	jmp	.label_238
.label_154:
	mov	r14b, 1
	xor	ebp, ebp
	mov	r12b, 1
	jmp	.label_178
.label_156:
	mov	r8d, 0x100
	mov	edi, ebx
	mov	rsi, r9
	mov	edx, dword ptr [rsp + 4]
	mov	ecx, dword ptr [rsp + 0x24]
	call	fchownat
	test	eax, eax
	sete	r12b
	mov	r14b, 1
	je	.label_235
	call	__errno_location
	cmp	dword ptr [rax], 0x5f
	setne	r14b
	mov	al, 1
	je	.label_240
	mov	eax, r12d
.label_240:
	mov	r12b, al
	jmp	.label_235
.label_196:
	call	__errno_location
	mov	ebx, dword ptr [rax]
	xor	ebp, ebp
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_243
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
.label_199:
	lea	r15, [rsp + 0xe8]
	xor	r12d, r12d
	jmp	.label_178
.label_246:
	mov	qword ptr [rdx + 0x20], 1
	mov	rsi, rdx
	mov	edx, 1
	mov	rdi, r14
	call	rpl_fts_set
	mov	r12b, 1
	jmp	.label_176
.label_229:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_167
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
	jmp	.label_230
.label_155:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_167
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
	jmp	.label_186
.label_250:
	mov	eax, dword ptr [r14]
.label_185:
	xor	ebx, ebx
	cmp	eax, 0xd
	setne	bl
	add	ebx, 5
.label_238:
	mov	r9, r13
	add	ebx, -2
	cmp	ebx, 4
	ja	.label_218
	mov	r14b, 1
	xor	r12d, r12d
	xor	ebp, ebp
	jmp	qword ptr [(rbx * 8) + label_193]
.label_1089:
	mov	r14b, 1
	mov	bpl, 1
	mov	r12b, 1
	jmp	.label_178
.label_1090:
	mov	rax, qword ptr [rsp + 0x40]
	mov	ebx, dword ptr [rax + 0x2c]
.label_161:
	xor	r8d, r8d
	mov	edi, ebx
	mov	rsi, r9
	mov	edx, dword ptr [rsp + 4]
	mov	ecx, dword ptr [rsp + 0x24]
	call	fchownat
	test	eax, eax
	sete	r12b
	mov	r14b, 1
.label_235:
	mov	bpl, 1
	test	r12b, 1
	jne	.label_178
.label_1091:
	mov	bpl, 1
	mov	rax, qword ptr [rsp + 0x1b0]
	cmp	byte ptr [rax + 0x11], 0
	jne	.label_178
	call	__errno_location
	cmp	dword ptr [rsp + 4], -1
	mov	r13d, dword ptr [rax]
	je	.label_205
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_210
	jmp	.label_211
.label_205:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_213
.label_211:
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
.label_178:
	mov	r13, qword ptr [rsp + 0x1b0]
	mov	rdx, qword ptr [r13]
	mov	rax, rdx
	shr	rax, 0x20
	cmp	edx, 2
	je	.label_223
	mov	ecx, r12d
	and	cl, 1
	test	bpl, bpl
	je	.label_187
	mov	ebx, r12d
	and	bl, r14b
	mov	r13, qword ptr [rsp + 0x1b0]
	je	.label_187
	cmp	dword ptr [rsp + 4], -1
	je	.label_237
	mov	esi, dword ptr [rsp + 4]
	cmp	dword ptr [r15 + 0x1c], esi
	jne	.label_239
.label_237:
	cmp	dword ptr [rsp + 0x24], -1
	je	.label_187
	mov	esi, dword ptr [rsp + 0x24]
	cmp	dword ptr [r15 + 0x20], esi
	jne	.label_239
	nop	dword ptr [rax]
.label_187:
	test	edx, edx
	jne	.label_223
	test	cl, cl
	movzx	eax, r14b
	lea	r14d, [rax + rax*2 + 1]
	mov	eax, 3
	cmove	r14d, eax
	test	r15, r15
	mov	ebp, 0
	mov	eax, 0
	mov	qword ptr [rsp + 0x48], rax
	jne	.label_244
	jmp	.label_251
.label_239:
	movzx	r14d, r14b
	inc	r14d
	test	cl, cl
	mov	eax, 3
	cmove	r14d, eax
.label_244:
	mov	ebx, dword ptr [r15 + 0x1c]
	mov	edi, ebx
	call	getpwuid
	test	rax, rax
	je	.label_254
	mov	rdi, qword ptr [rax]
	jmp	.label_255
.label_254:
	mov	rdi, rbx
	lea	rsi, [rsp + 0x50]
	call	umaxtostr
	mov	rdi, rax
.label_255:
	call	xstrdup
	mov	rbp, rax
	mov	ebx, dword ptr [r15 + 0x20]
	mov	edi, ebx
	call	getgrgid
	test	rax, rax
	je	.label_195
	mov	rdi, qword ptr [rax]
	jmp	.label_162
.label_195:
	mov	rdi, rbx
	lea	rsi, [rsp + 0x50]
	call	umaxtostr
	mov	rdi, rax
.label_162:
	mov	r13, qword ptr [rsp + 0x1b0]
	call	xstrdup
	mov	qword ptr [rsp + 0x48], rax
.label_251:
	cmp	r14d, 1
	jne	.label_172
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_177
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
	jmp	.label_190
.label_172:
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
	je	.label_197
	cmp	r14b, 3
	je	.label_200
	cmp	r14b, 2
	jne	.label_201
	test	rbx, rbx
	je	.label_203
	mov	rbx, rax
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_204
	jmp	.label_175
.label_197:
	test	rbx, rbx
	je	.label_206
	mov	rbx, rax
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_207
	jmp	.label_175
.label_200:
	test	rax, rax
	je	.label_214
	test	rbx, rbx
	je	.label_242
	mov	rbx, rax
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_217
	jmp	.label_175
.label_203:
	mov	rbx, rax
	xor	edi, edi
	test	r15, r15
	je	.label_220
	mov	esi, OFFSET FLAT:label_209
	jmp	.label_175
.label_206:
	mov	rbx, rax
	xor	edi, edi
	test	r15, r15
	je	.label_222
	mov	esi, OFFSET FLAT:label_232
	jmp	.label_175
.label_214:
	xor	edi, edi
	test	rbx, rbx
	je	.label_224
	mov	esi, OFFSET FLAT:label_226
	jmp	.label_165
.label_242:
	mov	rbx, rax
	xor	edi, edi
	test	r15, r15
	je	.label_228
	mov	esi, OFFSET FLAT:label_194
	jmp	.label_175
.label_220:
	mov	esi, OFFSET FLAT:label_180
	jmp	.label_175
.label_222:
	mov	esi, OFFSET FLAT:label_174
	jmp	.label_175
.label_224:
	test	r15, r15
	je	.label_236
	mov	esi, OFFSET FLAT:label_164
	jmp	.label_165
.label_228:
	mov	esi, OFFSET FLAT:label_169
.label_175:
	mov	edx, 5
	call	dcgettext
	mov	r14, rax
	mov	rbp, qword ptr [rsp + 8]
	mov	r15, qword ptr [rsp + 0x10]
.label_233:
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
.label_190:
	mov	rdi, rbp
	call	free
	mov	rdi, qword ptr [rsp + 0x48]
	call	free
	mov	r13, qword ptr [rsp + 0x1b0]
	mov	al, byte ptr [r13 + 4]
.label_223:
	test	al, al
	mov	r14, qword ptr [rsp + 0x40]
	jne	.label_256
	mov	edx, 4
	mov	rdi, r14
	mov	rsi, qword ptr [rsp + 0x30]
	call	rpl_fts_set
.label_256:
	and	r12b, 1
	movzx	ebp, byte ptr [rsp + 3]
.label_176:
	and	r12b, bpl
	mov	rdi, r14
	call	rpl_fts_read
	mov	rdx, rax
	test	rdx, rdx
	mov	ebp, r12d
	jne	.label_163
.label_225:
	call	__errno_location
	mov	rbp, rax
	mov	ebx, dword ptr [rbp]
	test	ebx, ebx
	je	.label_168
	mov	rax, qword ptr [rsp + 0x1b0]
	cmp	byte ptr [rax + 0x11], 0
	je	.label_171
	xor	r12d, r12d
	jmp	.label_168
.label_171:
	xor	r12d, r12d
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_179
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	xor	edi, edi
	xor	eax, eax
	mov	esi, ebx
	mov	rdx, rcx
	call	error
.label_168:
	mov	rdi, r14
	call	rpl_fts_close
	test	eax, eax
	je	.label_189
	mov	ebx, dword ptr [rbp]
	xor	r12d, r12d
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_191
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	xor	edi, edi
	xor	eax, eax
	mov	esi, ebx
	mov	rdx, rcx
	call	error
.label_189:
	mov	eax, r12d
	add	rsp, 0x178
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_201:
	call	abort
.label_218:
	call	abort
	.section	.text
	.align	16
	#Procedure 0x4038cf
	.globl sub_4038cf
	.type sub_4038cf, @function
sub_4038cf:

	nop	
.label_259:
	mov	eax, ebx
.label_258:
	add	rsp, 8
	pop	rbx
	pop	r14
	pop	r15
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x4038dd
	.globl sub_4038dd
	.type sub_4038dd, @function
sub_4038dd:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4038ec

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
	ja	.label_259
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
	jmp	.label_258
	.section	.text
	.align	16
	#Procedure 0x403920
	.globl xnrealloc
	.type xnrealloc, @function
xnrealloc:

	push	rbx
	mov	rbx, rdx
	movabs	rax, 0x7fffffffffffffff
	xor	edx, edx
	div	rbx
	cmp	rax, rsi
	jb	.label_260
	imul	rbx, rsi
	test	rdi, rdi
	je	.label_261
	test	rbx, rbx
	jne	.label_261
	call	free
	xor	eax, eax
	pop	rbx
	ret	
.label_261:
	mov	rsi, rbx
	call	realloc
	test	rbx, rbx
	je	.label_262
	test	rax, rax
	je	.label_260
.label_262:
	pop	rbx
	ret	
.label_260:
	call	xalloc_die
	.section	.text
	.align	16
	#Procedure 0x403968
	.globl sub_403968
	.type sub_403968, @function
sub_403968:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x403970

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
	jne	.label_280
	mov	ecx, esi
	and	ecx, 1
	test	rsi, rsi
	js	.label_264
	cvtsi2ss	xmm0, rsi
	jmp	.label_270
.label_264:
	shr	rsi, 1
	or	rcx, rsi
	cvtsi2ss	xmm0, rcx
	addss	xmm0, xmm0
.label_270:
	divss	xmm0, dword ptr [rax + 8]
	movss	xmm1, dword ptr [rip + label_275]
	movaps	xmm2, xmm0
	subss	xmm2, xmm1
	cvttss2si	rax, xmm2
	movabs	rcx, 0x8000000000000000
	xor	rcx, rax
	cvttss2si	rsi, xmm0
	ucomiss	xmm0, xmm1
	cmovae	rsi, rcx
	ucomiss	xmm0, dword ptr [rip + label_276]
	jae	.label_263
.label_280:
	cmp	rsi, 0xa
	mov	ebx, 0xa
	cmovae	rbx, rsi
	or	rbx, 1
	jmp	.label_274
	.section	.text
	.align	16
	#Procedure 0x4039fb
	.globl sub_4039fb
	.type sub_4039fb, @function
sub_4039fb:

	nop	dword ptr [rax + rax]
.label_267:
	add	rbx, 2
.label_274:
	cmp	rbx, -1
	je	.label_263
	cmp	rbx, 0xa
	mov	ecx, 3
	jb	.label_266
	mov	esi, 0xc
	mov	edi, 9
	mov	ecx, 3
	nop	dword ptr [rax + rax]
.label_283:
	xor	edx, edx
	mov	rax, rbx
	div	rcx
	test	rdx, rdx
	je	.label_266
	lea	rdi, [rdi + rsi + 4]
	add	rcx, 2
	add	rsi, 8
	cmp	rdi, rbx
	jb	.label_283
.label_266:
	xor	edx, edx
	mov	rax, rbx
	div	rcx
	test	rdx, rdx
	je	.label_267
	lea	rax, [rbx - 1]
	movabs	rcx, 0xffffffffffffffe
	cmp	rax, rcx
	ja	.label_263
	mov	bpl, 1
	cmp	rbx, qword ptr [r14 + 0x10]
	je	.label_277
	mov	esi, 0x10
	mov	rdi, rbx
	call	rpl_calloc
	mov	qword ptr [rsp], rax
	test	rax, rax
	je	.label_263
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
	je	.label_271
	mov	rdi, qword ptr [r14]
	call	free
	movaps	xmm0, xmmword ptr [rsp]
	movups	xmmword ptr [r14], xmm0
	movaps	xmm0, xmmword ptr [rsp + 0x10]
	movups	xmmword ptr [r14 + 0x10], xmm0
	mov	rax, qword ptr [rsp + 0x48]
	mov	qword ptr [r14 + 0x48], rax
	jmp	.label_277
.label_271:
	mov	rax, qword ptr [rsp + 0x48]
	mov	qword ptr [r14 + 0x48], rax
	mov	r12, qword ptr [rsp]
	mov	r15, qword ptr [rsp + 8]
	jmp	.label_265
	.section	.text
	.align	16
	#Procedure 0x403b1e
	.globl sub_403b1e
	.type sub_403b1e, @function
sub_403b1e:

	nop	
.label_278:
	add	r12, 0x10
.label_265:
	cmp	r12, r15
	jae	.label_273
	cmp	qword ptr [r12], 0
	je	.label_278
	mov	rbp, qword ptr [r12 + 8]
	test	rbp, rbp
	je	.label_281
	mov	rsi, qword ptr [r14 + 0x10]
	nop	word ptr cs:[rax + rax]
.label_279:
	mov	rbx, qword ptr [rbp]
	mov	rdi, rbx
	call	qword ptr [r14 + 0x30]
	mov	rsi, qword ptr [r14 + 0x10]
	cmp	rax, rsi
	jae	.label_272
	mov	rdx, qword ptr [r14]
	mov	rcx, qword ptr [rbp + 8]
	shl	rax, 4
	cmp	qword ptr [rdx + rax], 0
	je	.label_268
	mov	rdi, qword ptr [rdx + rax + 8]
	mov	qword ptr [rbp + 8], rdi
	mov	qword ptr [rdx + rax + 8], rbp
	jmp	.label_282
	.section	.text
	.align	16
	#Procedure 0x403b8a
	.globl sub_403b8a
	.type sub_403b8a, @function
sub_403b8a:

	nop	word ptr [rax + rax]
.label_268:
	add	rdx, rax
	mov	qword ptr [rdx], rbx
	inc	qword ptr [r14 + 0x18]
	mov	qword ptr [rbp], 0
	mov	rax, qword ptr [r14 + 0x48]
	mov	qword ptr [rbp + 8], rax
	mov	qword ptr [r14 + 0x48], rbp
.label_282:
	test	rcx, rcx
	mov	rbp, rcx
	jne	.label_279
.label_281:
	mov	qword ptr [r12 + 8], 0
	jmp	.label_278
.label_273:
	lea	rsi, [rsp]
	xor	edx, edx
	mov	rdi, r14
	call	transfer_entries
	test	al, al
	je	.label_269
	mov	rdi, qword ptr [rsp]
	call	free
.label_263:
	xor	ebp, ebp
.label_277:
	mov	eax, ebp
	add	rsp, 0x50
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_272:
	call	abort
.label_269:
	call	abort
	.section	.text
	.align	16
	#Procedure 0x403bfa
	.globl sub_403bfa
	.type sub_403bfa, @function
sub_403bfa:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x403c00

	.globl rpl_fts_close
	.type rpl_fts_close, @function
rpl_fts_close:
	push	rbp
	push	r14
	push	rbx
	mov	r14, rdi
	mov	rdi, qword ptr [r14]
	test	rdi, rdi
	je	.label_284
	cmp	qword ptr [rdi + 0x58], 0
	js	.label_285
	nop	word ptr cs:[rax + rax]
.label_299:
	mov	rbx, qword ptr [rdi + 0x10]
	test	rbx, rbx
	jne	.label_290
	mov	rbx, qword ptr [rdi + 8]
.label_290:
	call	free
	cmp	qword ptr [rbx + 0x58], 0
	mov	rdi, rbx
	jns	.label_299
	jmp	.label_294
.label_285:
	mov	rbx, rdi
.label_294:
	mov	rdi, rbx
	call	free
.label_284:
	mov	rbx, qword ptr [r14 + 8]
	test	rbx, rbx
	je	.label_297
	nop	word ptr cs:[rax + rax]
.label_301:
	mov	rbp, qword ptr [rbx + 0x10]
	mov	rdi, qword ptr [rbx + 0x18]
	test	rdi, rdi
	je	.label_300
	call	closedir
.label_300:
	mov	rdi, rbx
	call	free
	test	rbp, rbp
	mov	rbx, rbp
	jne	.label_301
.label_297:
	mov	rdi, qword ptr [r14 + 0x10]
	call	free
	mov	rdi, qword ptr [r14 + 0x20]
	call	free
	mov	eax, dword ptr [r14 + 0x48]
	test	ah, 2
	jne	.label_287
	xor	ebp, ebp
	test	al, 4
	jne	.label_288
	mov	edi, dword ptr [r14 + 0x28]
	call	fchdir
	xor	ebp, ebp
	test	eax, eax
	je	.label_292
	call	__errno_location
	mov	ebp, dword ptr [rax]
.label_292:
	mov	edi, dword ptr [r14 + 0x28]
	call	close
	test	ebp, ebp
	je	.label_295
	jmp	.label_288
.label_287:
	mov	edi, dword ptr [r14 + 0x2c]
	xor	ebp, ebp
	test	edi, edi
	js	.label_288
	call	close
.label_295:
	test	eax, eax
	je	.label_288
	call	__errno_location
	mov	ebp, dword ptr [rax]
.label_288:
	lea	rbx, [r14 + 0x60]
	jmp	.label_293
	.section	.text
	.align	16
	#Procedure 0x403ce8
	.globl sub_403ce8
	.type sub_403ce8, @function
sub_403ce8:

	nop	dword ptr [rax + rax]
.label_296:
	mov	edi, eax
	call	close
.label_293:
	mov	rdi, rbx
	call	i_ring_empty
	test	al, al
	jne	.label_302
	mov	rdi, rbx
	call	i_ring_pop
	test	eax, eax
	jns	.label_296
	jmp	.label_293
.label_302:
	mov	rdi, qword ptr [r14 + 0x50]
	test	rdi, rdi
	je	.label_286
	call	hash_free
.label_286:
	movzx	eax, word ptr [r14 + 0x48]
	test	ax, 0x102
	je	.label_289
	mov	rdi, qword ptr [r14 + 0x58]
	test	rdi, rdi
	je	.label_291
	call	hash_free
	jmp	.label_291
.label_289:
	mov	rdi, qword ptr [r14 + 0x58]
	call	free
.label_291:
	mov	rdi, r14
	call	free
	xor	eax, eax
	test	ebp, ebp
	je	.label_298
	call	__errno_location
	mov	dword ptr [rax], ebp
	mov	eax, 0xffffffff
.label_298:
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x403d62
	.globl sub_403d62
	.type sub_403d62, @function
sub_403d62:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x403d70
	.globl hash_table_ok
	.type hash_table_ok, @function
hash_table_ok:

	mov	rax, qword ptr [rdi]
	mov	r9, qword ptr [rdi + 8]
	xor	r10d, r10d
	cmp	rax, r9
	mov	ecx, 0
	jae	.label_304
	mov	rcx, rax
	not	rcx
	add	r9, rcx
	shr	r9, 4
	lea	rsi, [r9 + 1]
	mov	r8d, esi
	and	r8d, 1
	xor	ecx, ecx
	test	r9, r9
	je	.label_305
	sub	rsi, r8
	xor	ecx, ecx
	xor	r10d, r10d
	nop	
.label_311:
	cmp	qword ptr [rax], 0
	je	.label_312
	mov	rdx, rax
	nop	dword ptr [rax]
.label_303:
	inc	rcx
	mov	rdx, qword ptr [rdx + 8]
	test	rdx, rdx
	jne	.label_303
	inc	r10
.label_312:
	cmp	qword ptr [rax + 0x10], 0
	je	.label_306
	lea	rdx, [rax + 0x10]
	nop	word ptr [rax + rax]
.label_309:
	inc	rcx
	mov	rdx, qword ptr [rdx + 8]
	test	rdx, rdx
	jne	.label_309
	inc	r10
.label_306:
	add	rax, 0x20
	add	rsi, -2
	jne	.label_311
	jmp	.label_313
.label_305:
	xor	r10d, r10d
.label_313:
	test	r8, r8
	je	.label_304
	cmp	qword ptr [rax], 0
	je	.label_304
	nop	dword ptr [rax]
.label_307:
	inc	rcx
	mov	rax, qword ptr [rax + 8]
	test	rax, rax
	jne	.label_307
	inc	r10
.label_304:
	cmp	r10, qword ptr [rdi + 0x18]
	jne	.label_308
	mov	al, 1
	cmp	rcx, qword ptr [rdi + 0x20]
	je	.label_310
.label_308:
	xor	eax, eax
.label_310:
	ret	
	.section	.text
	.align	16
	#Procedure 0x403e30

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
	jne	.label_319
	test	al, 1
	je	.label_319
	mov	dl, 1
.label_319:
	lea	rbx, [r15 + 0x78]
	test	dl, dl
	jne	.label_317
	and	eax, 2
	jne	.label_317
	mov	esi, dword ptr [r14 + 0x2c]
	mov	rdx, qword ptr [r15 + 0x30]
	mov	edi, 1
	mov	r8d, 0x100
	mov	rcx, rbx
	call	__fxstatat
	test	eax, eax
	je	.label_318
	call	__errno_location
	mov	eax, dword ptr [rax]
	jmp	.label_314
.label_317:
	mov	rsi, qword ptr [r15 + 0x30]
	mov	edi, 1
	mov	rdx, rbx
	call	__xstat
	test	eax, eax
	je	.label_318
	call	__errno_location
	mov	r14, rax
	mov	eax, dword ptr [r14]
	cmp	eax, 2
	jne	.label_314
	mov	rsi, qword ptr [r15 + 0x30]
	mov	edi, 1
	mov	rdx, rbx
	call	__lxstat
	test	eax, eax
	je	.label_322
	mov	eax, dword ptr [r14]
.label_314:
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
.label_316:
	pop	rbx
	pop	r14
	pop	r15
	ret	
.label_318:
	movzx	ecx, word ptr [r15 + 0x90]
	and	ecx, 0xf000
	cmp	ecx, 0x8000
	je	.label_323
	mov	ax, 0xc
	movzx	ecx, cx
	cmp	ecx, 0xa000
	je	.label_316
	cmp	ecx, 0x4000
	jne	.label_320
	mov	rax, qword ptr [r15 + 0x88]
	mov	rcx, -1
	cmp	rax, 2
	jb	.label_315
	cmp	qword ptr [r15 + 0x58], 0
	jle	.label_315
	mov	ecx, dword ptr [r14 + 0x48]
	shr	ecx, 4
	not	ecx
	and	ecx, 2
	sub	rax, rcx
	mov	rcx, rax
.label_315:
	mov	qword ptr [r15 + 0x68], rcx
	mov	ecx, dword ptr [r15 + 0x108]
	mov	ax, 1
	cmp	cl, 0x2e
	jne	.label_316
	mov	edx, ecx
	shr	edx, 8
	test	dl, dl
	je	.label_321
	cmp	dl, 0x2e
	jne	.label_316
	test	ecx, 0xff0000
	jne	.label_316
.label_321:
	cmp	qword ptr [r15 + 0x58], 0
	mov	cx, 1
	mov	ax, 5
	cmove	ax, cx
	jmp	.label_316
.label_323:
	mov	ax, 8
	jmp	.label_316
.label_320:
	mov	ax, 3
	jmp	.label_316
.label_322:
	mov	dword ptr [r14], 0
	mov	ax, 0xd
	jmp	.label_316
	.section	.text
	.align	16
	#Procedure 0x403fc5
	.globl sub_403fc5
	.type sub_403fc5, @function
sub_403fc5:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x403fd0

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
	je	.label_324
	cmp	r15, -2
	jb	.label_324
	xor	edi, edi
	call	hard_locale
	test	al, al
	jne	.label_324
	movzx	eax, byte ptr [r14]
	mov	dword ptr [rbx], eax
	mov	r15d, 1
.label_324:
	mov	rax, r15
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	ret	
	.section	.text
	.align	16
	#Procedure 0x404026
	.globl sub_404026
	.type sub_404026, @function
sub_404026:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404030

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
	#Procedure 0x40403c
	.globl sub_40403c
	.type sub_40403c, @function
sub_40403c:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x404040

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
	#Procedure 0x40404d
	.globl sub_40404d
	.type sub_40404d, @function
sub_40404d:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x404050

	.globl locale_charset
	.type locale_charset, @function
locale_charset:
	push	rax
	mov	edi, 0xe
	call	rpl_nl_langinfo
	test	rax, rax
	mov	ecx, OFFSET FLAT:label_325
	cmovne	rcx, rax
	cmp	byte ptr [rcx], 0
	mov	eax, OFFSET FLAT:label_326
	cmovne	rax, rcx
	pop	rcx
	ret	
	.section	.text
	.align	16
	#Procedure 0x404075
	.globl sub_404075
	.type sub_404075, @function
sub_404075:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404080
	.globl hash_get_entries
	.type hash_get_entries, @function
hash_get_entries:

	mov	r9, qword ptr [rdi]
	mov	r8, qword ptr [rdi + 8]
	xor	eax, eax
	cmp	r9, r8
	jae	.label_327
	xor	eax, eax
.label_329:
	cmp	qword ptr [r9], 0
	je	.label_328
	test	r9, r9
	je	.label_328
	mov	r8, r9
	nop	
.label_330:
	cmp	rax, rdx
	jae	.label_327
	mov	rcx, qword ptr [r8]
	mov	qword ptr [rsi + rax*8], rcx
	inc	rax
	mov	r8, qword ptr [r8 + 8]
	test	r8, r8
	jne	.label_330
	mov	r8, qword ptr [rdi + 8]
.label_328:
	add	r9, 0x10
	cmp	r9, r8
	jb	.label_329
.label_327:
	ret	
	.section	.text
	.align	16
	#Procedure 0x4040c6
	.globl sub_4040c6
	.type sub_4040c6, @function
sub_4040c6:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4040d0

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
	mov	esi, OFFSET FLAT:label_325
	call	setlocale
	mov	edi, OFFSET FLAT:label_338
	mov	esi, OFFSET FLAT:label_339
	call	bindtextdomain
	mov	edi, OFFSET FLAT:label_338
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
	jmp	.label_333
.label_344:
	mov	qword ptr [rsp + 0x18], rax
	mov	eax, r14d
	nop	dword ptr [rax]
.label_333:
	mov	r14d, eax
	mov	edx, OFFSET FLAT:label_361
	mov	ecx, OFFSET FLAT:long_options
	xor	r8d, r8d
	mov	edi, ebp
	mov	rsi, r13
	call	getopt_long
	lea	ecx, [rax + 1]
	cmp	ecx, 0x85
	ja	.label_331
	mov	eax, 0x11
	jmp	qword ptr [(rcx * 8) + label_336]
.label_1006:
	mov	eax, 2
	jmp	.label_333
.label_1007:
	mov	eax, 0x10
	jmp	.label_333
.label_1008:
	mov	byte ptr [rsp + 0x24], 1
	mov	eax, r14d
	jmp	.label_333
.label_1009:
	mov	dword ptr [rsp + 0x20], 1
	mov	eax, r14d
	jmp	.label_333
.label_1010:
	mov	byte ptr [rsp + 0x31], 1
	mov	eax, r14d
	jmp	.label_333
.label_1011:
	xor	r12d, r12d
	mov	eax, r14d
	jmp	.label_333
.label_1012:
	mov	dword ptr [rsp + 0x20], 0
	mov	eax, r14d
	jmp	.label_333
.label_1013:
	mov	r12d, 1
	mov	eax, r14d
	jmp	.label_333
.label_1014:
	mov	rdi, qword ptr [rip + optarg]
	xor	ecx, ecx
	xor	r8d, r8d
	lea	rsi, [rsp + 0x14]
	mov	rdx, r15
	call	parse_user_spec
	mov	rbx, rax
	test	rbx, rbx
	mov	eax, r14d
	je	.label_333
	jmp	.label_340
.label_1015:
	xor	eax, eax
	jmp	.label_344
.label_1016:
	mov	al, 1
	jmp	.label_344
.label_1017:
	mov	rax, qword ptr [rip + optarg]
	mov	qword ptr [rip + reference_file],  rax
	mov	eax, r14d
	jmp	.label_333
.label_1005:
	mov	r15d, 0x10
	cmp	byte ptr [rsp + 0x24], 0
	je	.label_342
	cmp	r14d, 0x10
	jne	.label_352
	cmp	r12d, 1
	mov	r12d, 0
	jne	.label_342
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_355
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	mov	edi, 1
	xor	esi, esi
	xor	eax, eax
	mov	rdx, rcx
	call	error
.label_352:
	mov	r15d, r14d
.label_342:
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
	jl	.label_354
	test	rsi, rsi
	je	.label_360
	lea	rdx, [rsp + 0x48]
	mov	edi, 1
	call	__xstat
	test	eax, eax
	jne	.label_350
	mov	edi, dword ptr [rsp + 0x64]
	mov	dword ptr [rsp + 0xc], edi
	mov	eax, dword ptr [rsp + 0x68]
	mov	dword ptr [rsp + 8], eax
	call	uid_to_name
	mov	qword ptr [rsp + 0x38], rax
	mov	edi, dword ptr [rsp + 0x68]
	call	gid_to_name
	mov	qword ptr [rsp + 0x40], rax
	jmp	.label_362
.label_360:
	mov	rdi, qword ptr [r13 + rax*8]
	lea	rcx, [rsp + 0x38]
	lea	r8, [rsp + 0x40]
	lea	rsi, [rsp + 0xc]
	lea	rdx, [rsp + 8]
	call	parse_user_spec
	mov	rbx, rax
	test	rbx, rbx
	jne	.label_341
	cmp	qword ptr [rsp + 0x38], 0
	jne	.label_346
	mov	rax, qword ptr [rsp + 0x40]
	test	rax, rax
	je	.label_346
	mov	edi, OFFSET FLAT:label_325
	call	xstrdup
	mov	qword ptr [rsp + 0x38], rax
.label_346:
	inc	dword ptr [rip + optind]
.label_362:
	mov	rax, qword ptr [rsp + 0x18]
	test	al, al
	je	.label_332
	mov	al, byte ptr [rsp + 0x24]
	test	al, al
	je	.label_332
	mov	edi, OFFSET FLAT:main.dev_ino_buf
	call	get_root_dev_ino
	mov	qword ptr [rsp + 0x28], rax
	test	rax, rax
	je	.label_337
.label_332:
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
.label_331:
	cmp	eax, 0xffffff7d
	je	.label_348
	cmp	eax, 0xffffff7e
	jne	.label_351
	xor	edi, edi
	call	usage
.label_351:
	mov	edi, 1
	call	usage
.label_348:
	mov	rdi, qword ptr [rip + stdout]
	mov	rcx, qword ptr [rip + Version]
	mov	qword ptr [rsp], 0
	mov	esi, OFFSET FLAT:label_356
	mov	edx, OFFSET FLAT:label_357
	mov	r8d, OFFSET FLAT:label_358
	mov	r9d, OFFSET FLAT:label_359
	xor	eax, eax
	call	version_etc
	xor	edi, edi
	call	exit
.label_340:
	mov	rdi, qword ptr [rip + optarg]
	jmp	.label_343
.label_354:
	xor	edi, edi
	cmp	eax, ebp
	jge	.label_345
	mov	esi, OFFSET FLAT:label_347
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
.label_350:
	call	__errno_location
	mov	ebx, dword ptr [rax]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_349
	mov	edx, 5
	call	dcgettext
	mov	rbp, rax
	mov	rsi, qword ptr [rip + reference_file]
	mov	edi, 4
	jmp	.label_334
.label_337:
	call	__errno_location
	mov	ebx, dword ptr [rax]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_349
	mov	edx, 5
	call	dcgettext
	mov	rbp, rax
	mov	edi, 4
	mov	esi, OFFSET FLAT:label_166
.label_334:
	call	quotearg_style
	mov	rcx, rax
	mov	edi, 1
	xor	eax, eax
	mov	esi, ebx
	mov	rdx, rbp
	call	error
.label_345:
	mov	esi, OFFSET FLAT:label_353
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
.label_341:
	movsxd	rax, dword ptr [rip + optind]
	mov	rdi, qword ptr [r13 + rax*8]
.label_343:
	call	quote
	mov	rbp, rax
	mov	edi, 1
	xor	esi, esi
	mov	edx, OFFSET FLAT:label_335
	xor	eax, eax
	mov	rcx, rbx
	mov	r8, rbp
	call	error
	nop	word ptr cs:[rax + rax]
.label_365:
	mov	rax, r15
	pop	rbx
	pop	r14
	pop	r15
	ret	
	.section	.text
	.align	16
	#Procedure 0x404549

	.globl user_group_str
	.type user_group_str, @function
user_group_str:
	push	r15
	push	r14
	push	rbx
	mov	r14, rsi
	mov	rbx, rdi
	test	rbx, rbx
	je	.label_366
	test	r14, r14
	je	.label_364
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
	jmp	.label_365
.label_366:
	xor	r15d, r15d
	test	r14, r14
	je	.label_365
	mov	rdi, r14
	jmp	.label_363
.label_364:
	mov	rdi, rbx
.label_363:
	pop	rbx
	pop	r14
	pop	r15
	jmp	xstrdup
	.section	.text
	.align	16
	#Procedure 0x4045b6
	.globl sub_4045b6
	.type sub_4045b6, @function
sub_4045b6:

	nop	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4045c0

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
	je	.label_367
	mov	edi, 0x18
	call	malloc
	mov	rbx, rax
	test	rbx, rbx
	je	.label_368
	movups	xmm0, xmmword ptr [r14 + 0x78]
	movups	xmmword ptr [rbx], xmm0
	mov	qword ptr [rbx + 0x10], r14
	mov	rdi, qword ptr [rbp + 0x58]
	mov	rsi, rbx
	call	hash_insert
	mov	r15, rax
	mov	bpl, 1
	cmp	r15, rbx
	je	.label_370
	mov	rdi, rbx
	call	free
	test	r15, r15
	je	.label_368
	mov	rax, qword ptr [r15 + 0x10]
	mov	qword ptr [r14], rax
	jmp	.label_369
.label_367:
	mov	rdi, qword ptr [rbp + 0x58]
	lea	rsi, [r14 + 0x78]
	call	cycle_check
	mov	bpl, 1
	test	al, al
	je	.label_370
	mov	qword ptr [r14], r14
.label_369:
	mov	word ptr [r14 + 0x70], 2
	jmp	.label_370
.label_368:
	xor	ebp, ebp
.label_370:
	mov	eax, ebp
	add	rsp, 8
	pop	rbx
	pop	r14
	pop	r15
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x404651
	.globl sub_404651
	.type sub_404651, @function
sub_404651:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404660
	.globl xcharalloc
	.type xcharalloc, @function
xcharalloc:

	push	rbx
	mov	rbx, rdi
	call	malloc
	test	rbx, rbx
	je	.label_371
	test	rax, rax
	je	.label_372
.label_371:
	pop	rbx
	ret	
.label_372:
	call	xalloc_die
	.section	.text
	.align	16
	#Procedure 0x40467a
	.globl sub_40467a
	.type sub_40467a, @function
sub_40467a:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404680
	.globl hash_clear
	.type hash_clear, @function
hash_clear:

	push	r15
	push	r14
	push	rbx
	mov	r15, rdi
	mov	r14, qword ptr [r15]
	mov	rax, qword ptr [r15 + 8]
	jmp	.label_373
	.section	.text
	.align	16
	#Procedure 0x404691
	.globl sub_404691
	.type sub_404691, @function
sub_404691:

	nop	word ptr cs:[rax + rax]
.label_376:
	add	r14, 0x10
.label_373:
	cmp	r14, rax
	jae	.label_375
	cmp	qword ptr [r14], 0
	je	.label_376
	mov	rbx, qword ptr [r14 + 8]
	mov	rax, qword ptr [r15 + 0x40]
	test	rax, rax
	setne	cl
	test	rbx, rbx
	je	.label_377
	nop	word ptr cs:[rax + rax]
.label_379:
	test	cl, 1
	je	.label_378
	mov	rdi, qword ptr [rbx]
	call	rax
	mov	rax, qword ptr [r15 + 0x40]
.label_378:
	mov	qword ptr [rbx], 0
	mov	rdx, qword ptr [rbx + 8]
	mov	rcx, qword ptr [r15 + 0x48]
	mov	qword ptr [rbx + 8], rcx
	mov	qword ptr [r15 + 0x48], rbx
	test	rax, rax
	setne	cl
	test	rdx, rdx
	mov	rbx, rdx
	jne	.label_379
.label_377:
	test	cl, cl
	je	.label_374
	mov	rdi, qword ptr [r14]
	call	rax
.label_374:
	xorps	xmm0, xmm0
	movups	xmmword ptr [r14], xmm0
	mov	rax, qword ptr [r15 + 8]
	jmp	.label_376
.label_375:
	xorps	xmm0, xmm0
	movups	xmmword ptr [r15 + 0x18], xmm0
	pop	rbx
	pop	r14
	pop	r15
	ret	
	.section	.text
	.align	16
	#Procedure 0x404727
	.globl sub_404727
	.type sub_404727, @function
sub_404727:

	nop	word ptr [rax + rax]
.label_384:
	mov	edi, dword ptr [rip + exit_failure]
	call	_exit
	.section	.text
	.align	16
	#Procedure 0x40473b

	.globl close_stdout
	.type close_stdout, @function
close_stdout:
	push	rbp
	push	rbx
	push	rax
	mov	rdi, qword ptr [rip + stdout]
	call	close_stream
	test	eax, eax
	je	.label_382
	mov	bl, byte ptr [rip + ignore_EPIPE]
	call	__errno_location
	mov	rbp, rax
	cmp	bl, 0
	je	.label_381
	cmp	dword ptr [rbp], 0x20
	jne	.label_381
.label_382:
	mov	rdi, qword ptr [rip + stderr]
	call	close_stream
	test	eax, eax
	jne	.label_384
	add	rsp, 8
	pop	rbx
	pop	rbp
	ret	
.label_380:
	call	quotearg_colon
	mov	rcx, rax
	xor	edi, edi
	mov	edx, OFFSET FLAT:label_335
	xor	eax, eax
	mov	esi, ebp
	mov	r8, rbx
	call	error
	mov	edi, dword ptr [rip + exit_failure]
	call	_exit
	nop	dword ptr [rax]
	nop	dword ptr [rax + rax]
.label_381:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_383
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
	mov	rdi, qword ptr [rip + file_name]
	test	rdi, rdi
	mov	ebp, dword ptr [rbp]
	jne	.label_380
	xor	edi, edi
	mov	edx, OFFSET FLAT:label_157
	xor	eax, eax
	mov	esi, ebp
	mov	rcx, rbx
	call	error
	mov	edi, dword ptr [rip + exit_failure]
	call	_exit
	.section	.text
	.align	16
	#Procedure 0x4047f0

	.globl quotearg_colon
	.type quotearg_colon, @function
quotearg_colon:
	sub	rsp, 0x38
	mov	rax, rdi
	mov	rcx, qword ptr [rip + label_27]
	mov	qword ptr [rsp + 0x30], rcx
	movups	xmm0, xmmword ptr [rip + label_28]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0, xmmword ptr [rip + label_29]
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
	#Procedure 0x404845
	.globl sub_404845
	.type sub_404845, @function
sub_404845:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404850
	.globl quote_n_mem
	.type quote_n_mem, @function
quote_n_mem:

	mov	ecx, OFFSET FLAT:quote_quoting_options
	jmp	quotearg_n_options
	.section	.text
	.align	16
	#Procedure 0x40485a
	.globl sub_40485a
	.type sub_40485a, @function
sub_40485a:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404860

	.globl set_program_name
	.type set_program_name, @function
set_program_name:
	push	r14
	push	rbx
	push	rax
	mov	rbx, rdi
	test	rbx, rbx
	je	.label_385
	mov	esi, 0x2f
	mov	rdi, rbx
	call	strrchr
	test	rax, rax
	lea	r14, [rax + 1]
	cmove	r14, rbx
	mov	rax, r14
	sub	rax, rbx
	cmp	rax, 7
	jl	.label_387
	lea	rdi, [r14 - 7]
	mov	esi, OFFSET FLAT:label_389
	mov	edx, 7
	call	strncmp
	test	eax, eax
	jne	.label_387
	mov	esi, OFFSET FLAT:label_388
	mov	edx, 3
	mov	rdi, r14
	call	strncmp
	test	eax, eax
	jne	.label_390
	add	r14, 3
	mov	qword ptr [rip + __progname],  r14
.label_390:
	mov	rbx, r14
.label_387:
	mov	qword ptr [rip + program_name],  rbx
	mov	qword ptr [rip + __progname_full],  rbx
	add	rsp, 8
	pop	rbx
	pop	r14
	ret	
.label_385:
	mov	rcx, qword ptr [rip + stderr]
	mov	edi, OFFSET FLAT:label_386
	mov	esi, 0x37
	mov	edx, 1
	call	fwrite
	call	abort
	.section	.text
	.align	16
	#Procedure 0x404901
	.globl sub_404901
	.type sub_404901, @function
sub_404901:

	nop	word ptr cs:[rax + rax]
.label_391:
	call	abort
	.section	.text
	.align	16
	#Procedure 0x404915
	.globl sub_404915
	.type sub_404915, @function
sub_404915:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x404919

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
	je	.label_391
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
	#Procedure 0x404980

	.globl dup_safer
	.type dup_safer, @function
dup_safer:
	xor	esi, esi
	mov	edx, 3
	xor	eax, eax
	jmp	rpl_fcntl
	.section	.text
	.align	16
	#Procedure 0x40498e
	.globl sub_40498e
	.type sub_40498e, @function
sub_40498e:

	nop	
	.section	.text
	.align	16
	#Procedure 0x404990
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
	jae	.label_397
	mov	rdx, rax
	not	rdx
	add	rdi, rdx
	shr	rdi, 4
	lea	rsi, [rdi + 1]
	mov	r8d, esi
	and	r8d, 1
	xor	ebx, ebx
	test	rdi, rdi
	je	.label_401
	sub	rsi, r8
	xor	ebx, ebx
	nop	dword ptr [rax]
.label_396:
	cmp	qword ptr [rax], 0
	je	.label_392
	xor	edi, edi
	mov	rdx, rax
	nop	dword ptr [rax + rax]
.label_399:
	mov	rdx, qword ptr [rdx + 8]
	inc	rdi
	test	rdx, rdx
	jne	.label_399
	cmp	rdi, rbx
	cmova	rbx, rdi
.label_392:
	cmp	qword ptr [rax + 0x10], 0
	je	.label_394
	lea	rdx, [rax + 0x10]
	xor	edi, edi
.label_400:
	mov	rdx, qword ptr [rdx + 8]
	inc	rdi
	test	rdx, rdx
	jne	.label_400
	cmp	rdi, rbx
	cmova	rbx, rdi
.label_394:
	add	rax, 0x20
	add	rsi, -2
	jne	.label_396
.label_401:
	test	r8, r8
	je	.label_397
	cmp	qword ptr [rax], 0
	je	.label_397
	xor	edx, edx
	nop	word ptr [rax + rax]
.label_393:
	mov	rax, qword ptr [rax + 8]
	inc	rdx
	test	rax, rax
	jne	.label_393
	cmp	rdx, rbx
	cmova	rbx, rdx
.label_397:
	mov	esi, 1
	mov	edx, OFFSET FLAT:label_398
	xor	eax, eax
	mov	rdi, r15
	call	__fprintf_chk
	mov	esi, 1
	mov	edx, OFFSET FLAT:label_395
	xor	eax, eax
	mov	rdi, r15
	mov	rcx, r12
	call	__fprintf_chk
	movq	xmm1, r14
	movdqa	xmm2, xmmword ptr [rip + label_403]
	punpckldq	xmm1, xmm2
	movapd	xmm3, xmmword ptr [rip + label_404]
	subpd	xmm1, xmm3
	pshufd	xmm0, xmm1, 0x4e
	addpd	xmm0, xmm1
	mulsd	xmm0, qword ptr [rip + label_405]
	movq	xmm1, r12
	punpckldq	xmm1, xmm2
	subpd	xmm1, xmm3
	pshufd	xmm2, xmm1, 0x4e
	addpd	xmm2, xmm1
	divsd	xmm0, xmm2
	mov	esi, 1
	mov	edx, OFFSET FLAT:label_406
	mov	al, 1
	mov	rdi, r15
	mov	rcx, r14
	call	__fprintf_chk
	mov	esi, 1
	mov	edx, OFFSET FLAT:label_402
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
	#Procedure 0x404aff
	.globl sub_404aff
	.type sub_404aff, @function
sub_404aff:

	nop	
.label_413:
	call	abort
	.section	.text
	.align	16
	#Procedure 0x404b05

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
	mov	dword ptr [rsp + 4], edx
	mov	r12, rsi
	mov	rbp, rdi
	mov	r14, qword ptr [r12]
	mov	al, 1
	cmp	r14, qword ptr [r12 + 8]
	jae	.label_408
	nop	word ptr cs:[rax + rax]
.label_411:
	mov	r13, qword ptr [r14]
	test	r13, r13
	je	.label_419
	mov	r15, qword ptr [r14 + 8]
	test	r15, r15
	je	.label_407
	mov	rsi, qword ptr [rbp + 0x10]
	nop	dword ptr [rax]
.label_416:
	mov	rbx, qword ptr [r15]
	mov	rdi, rbx
	call	qword ptr [rbp + 0x30]
	mov	rsi, qword ptr [rbp + 0x10]
	cmp	rax, rsi
	jae	.label_413
	mov	rdx, qword ptr [rbp]
	mov	rcx, qword ptr [r15 + 8]
	shl	rax, 4
	cmp	qword ptr [rdx + rax], 0
	je	.label_415
	mov	rdi, qword ptr [rdx + rax + 8]
	mov	qword ptr [r15 + 8], rdi
	mov	qword ptr [rdx + rax + 8], r15
	jmp	.label_420
	.section	.text
	.align	16
	#Procedure 0x404b8e
	.globl sub_404b8e
	.type sub_404b8e, @function
sub_404b8e:

	nop	dword ptr [rax]
.label_415:
	add	rdx, rax
	mov	qword ptr [rdx], rbx
	inc	qword ptr [rbp + 0x18]
	mov	qword ptr [r15], 0
	mov	rax, qword ptr [rbp + 0x48]
	mov	qword ptr [r15 + 8], rax
	mov	qword ptr [rbp + 0x48], r15
.label_420:
	test	rcx, rcx
	mov	r15, rcx
	jne	.label_416
	mov	r13, qword ptr [r14]
.label_407:
	mov	qword ptr [r14 + 8], 0
	mov	eax, dword ptr [rsp + 4]
	test	al, al
	jne	.label_419
	mov	rsi, qword ptr [rbp + 0x10]
	mov	rdi, r13
	call	qword ptr [rbp + 0x30]
	mov	rbx, rax
	cmp	rbx, qword ptr [rbp + 0x10]
	jae	.label_410
	mov	r15, qword ptr [rbp]
	shl	rbx, 4
	cmp	qword ptr [r15 + rbx], 0
	je	.label_414
	mov	rax, qword ptr [rbp + 0x48]
	test	rax, rax
	je	.label_417
	mov	rcx, qword ptr [rax + 8]
	mov	qword ptr [rbp + 0x48], rcx
	jmp	.label_418
.label_414:
	add	r15, rbx
	mov	qword ptr [r15], r13
	inc	qword ptr [rbp + 0x18]
	jmp	.label_409
.label_417:
	mov	edi, 0x10
	call	malloc
	test	rax, rax
	je	.label_412
.label_418:
	mov	qword ptr [rax], r13
	mov	rcx, qword ptr [r15 + rbx + 8]
	mov	qword ptr [rax + 8], rcx
	mov	qword ptr [r15 + rbx + 8], rax
.label_409:
	mov	qword ptr [r14], 0
	dec	qword ptr [r12 + 0x18]
.label_419:
	add	r14, 0x10
	cmp	r14, qword ptr [r12 + 8]
	jb	.label_411
	mov	al, 1
.label_408:
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_410:
	call	abort
	.section	.text
	.align	16
	#Procedure 0x404c63
	.globl sub_404c63
	.type sub_404c63, @function
sub_404c63:

	nop	word ptr [rax + rax]
.label_412:
	xor	eax, eax
	jmp	.label_408
	.section	.text
	.align	16
	#Procedure 0x404c70
	.globl quotearg_free
	.type quotearg_free, @function
quotearg_free:

	push	r15
	push	r14
	push	rbx
	mov	r14, qword ptr [rip + slotvec]
	cmp	dword ptr [rip + nslots],  2
	jl	.label_421
	lea	r15, [r14 + 0x18]
	mov	ebx, 1
	nop	
.label_423:
	mov	rdi, qword ptr [r15]
	call	free
	inc	rbx
	movsxd	rax, dword ptr [rip + nslots]
	add	r15, 0x10
	cmp	rbx, rax
	jl	.label_423
.label_421:
	mov	rdi, qword ptr [r14 + 8]
	mov	eax, OFFSET FLAT:slot0
	cmp	rdi, rax
	je	.label_424
	call	free
	mov	qword ptr [rip + slotvec0],  0x100
	mov	qword ptr [rip + label_425], OFFSET FLAT:slot0
.label_424:
	mov	eax, OFFSET FLAT:slotvec0
	cmp	r14, rax
	je	.label_422
	mov	rdi, r14
	call	free
	mov	qword ptr [rip + slotvec], OFFSET FLAT:slotvec0
.label_422:
	mov	dword ptr [rip + nslots],  1
	pop	rbx
	pop	r14
	pop	r15
	ret	
	.section	.text
	.align	16
	#Procedure 0x404d01
	.globl sub_404d01
	.type sub_404d01, @function
sub_404d01:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404d10

	.globl rpl_fts_open
	.type rpl_fts_open, @function
rpl_fts_open:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x48
	mov	r13, rdx
	mov	r12d, esi
	mov	r14, rdi
	cmp	r12d, 0x1000
	jae	.label_434
	mov	eax, r12d
	and	eax, 0x204
	cmp	eax, 0x204
	je	.label_434
	test	r12b, 0x12
	je	.label_434
	mov	edi, 0x80
	call	malloc
	mov	rbx, rax
	xor	eax, eax
	test	rbx, rbx
	je	.label_447
	xorps	xmm0, xmm0
	movups	xmmword ptr [rbx + 0x70], xmm0
	movups	xmmword ptr [rbx + 0x60], xmm0
	movups	xmmword ptr [rbx + 0x50], xmm0
	movups	xmmword ptr [rbx + 0x40], xmm0
	movups	xmmword ptr [rbx + 0x30], xmm0
	movups	xmmword ptr [rbx + 0x20], xmm0
	movups	xmmword ptr [rbx + 0x10], xmm0
	movups	xmmword ptr [rbx], xmm0
	mov	qword ptr [rbx + 0x40], r13
	mov	eax, r12d
	and	eax, 0xfffffdfb
	or	eax, 4
	test	r12b, 2
	cmove	eax, r12d
	mov	dword ptr [rbx + 0x48], eax
	mov	dword ptr [rbx + 0x2c], 0xffffff9c
	mov	rdi, qword ptr [r14]
	mov	ebp, 1
	test	rdi, rdi
	je	.label_453
	mov	rax, r14
	mov	r14, rbx
	mov	r15, rax
	lea	rbx, [rax + 8]
	xor	ebp, ebp
	nop	dword ptr [rax + rax]
.label_449:
	call	strlen
	cmp	rax, rbp
	cmova	rbp, rax
	mov	rdi, qword ptr [rbx]
	add	rbx, 8
	test	rdi, rdi
	jne	.label_449
	inc	rbp
	mov	rbx, r14
	mov	r14, r15
.label_453:
	cmp	rbp, 0x1000
	mov	esi, 0x1000
	cmova	rsi, rbp
	add	rsi, 0x100
	mov	qword ptr [rbx + 0x30], rsi
	xor	edi, edi
	call	realloc
	mov	rbp, rax
	test	rbp, rbp
	je	.label_435
	mov	qword ptr [rsp + 0x10], rbx
	mov	qword ptr [rbx + 0x20], rbp
	mov	qword ptr [rsp + 0x38], r14
	mov	r15, qword ptr [r14]
	xor	r14d, r14d
	test	r15, r15
	je	.label_437
	mov	edi, 0x110
	call	malloc
	mov	r14, rax
	test	r14, r14
	je	.label_432
	mov	byte ptr [r14 + 0x108], 0
	mov	qword ptr [r14 + 0x60], 0
	mov	rax, qword ptr [rsp + 0x10]
	mov	qword ptr [r14 + 0x50], rax
	mov	qword ptr [r14 + 0x38], rbp
	mov	dword ptr [r14 + 0x40], 0
	mov	qword ptr [r14 + 0x18], 0
	mov	word ptr [r14 + 0x72], 0
	mov	word ptr [r14 + 0x74], 3
	xorps	xmm0, xmm0
	movups	xmmword ptr [r14 + 0x20], xmm0
	mov	qword ptr [r14 + 0x58], -1
	mov	qword ptr [r14 + 0x68], -1
.label_437:
	mov	byte ptr [rsp + 0xf], 1
	test	r13, r13
	je	.label_438
	mov	rax, qword ptr [rsp + 0x10]
	mov	al, byte ptr [rax + 0x49]
	and	al, 4
	shr	al, 2
	mov	byte ptr [rsp + 0xf], al
.label_438:
	xor	ebp, ebp
	test	r15, r15
	mov	qword ptr [rsp + 0x28], r14
	je	.label_430
	and	r12d, 0x800
	xor	ebp, ebp
	xor	eax, eax
	mov	qword ptr [rsp + 0x18], rax
	xor	ebx, ebx
	mov	qword ptr [rsp + 0x20], r13
	nop	word ptr cs:[rax + rax]
.label_450:
	mov	qword ptr [rsp + 0x30], rbp
	mov	rdi, r15
	call	strlen
	mov	rbp, rax
	test	r12d, r12d
	jne	.label_429
	cmp	rbp, 3
	jb	.label_429
	cmp	byte ptr [r15 + rbp - 1], 0x2f
	jne	.label_429
	nop	word ptr cs:[rax + rax]
.label_439:
	cmp	byte ptr [r15 + rbp - 2], 0x2f
	jne	.label_429
	dec	rbp
	cmp	rbp, 1
	ja	.label_439
	nop	word ptr cs:[rax + rax]
.label_429:
	mov	r14d, r12d
	lea	rdi, [rbp + 0x110]
	and	rdi, 0xfffffffffffffff8
	call	malloc
	mov	r12, rax
	test	r12, r12
	je	.label_454
	mov	qword ptr [rsp + 0x40], rbx
	mov	r13, r12
	add	r13, 0x108
	mov	rdi, r13
	mov	rsi, r15
	mov	rdx, rbp
	call	memcpy
	mov	byte ptr [r12 + rbp + 0x108], 0
	mov	qword ptr [r12 + 0x60], rbp
	mov	rdi, qword ptr [rsp + 0x10]
	mov	qword ptr [r12 + 0x50], rdi
	mov	rax, qword ptr [rdi + 0x20]
	mov	qword ptr [r12 + 0x38], rax
	mov	dword ptr [r12 + 0x40], 0
	mov	qword ptr [r12 + 0x18], 0
	mov	word ptr [r12 + 0x72], 0
	mov	word ptr [r12 + 0x74], 3
	xorps	xmm0, xmm0
	movups	xmmword ptr [r12 + 0x20], xmm0
	mov	qword ptr [r12 + 0x58], 0
	mov	rax, qword ptr [rsp + 0x28]
	mov	qword ptr [r12 + 8], rax
	mov	qword ptr [r12 + 0x30], r13
	mov	rbx, qword ptr [rsp + 0x30]
	test	rbx, rbx
	setne	al
	and	al, byte ptr [rsp + 0xf]
	cmp	al, 1
	jne	.label_431
	mov	word ptr [r12 + 0x70], 0xb
	mov	qword ptr [r12 + 0xa8], 2
	jmp	.label_456
	.section	.text
	.align	16
	#Procedure 0x405009
	.globl sub_405009
	.type sub_405009, @function
sub_405009:

	nop	dword ptr [rax]
.label_431:
	xor	edx, edx
	mov	rsi, r12
	call	fts_stat
	mov	word ptr [r12 + 0x70], ax
.label_456:
	mov	r13, qword ptr [rsp + 0x20]
	test	r13, r13
	je	.label_446
	mov	rbp, r12
	mov	qword ptr [r12 + 0x10], rbx
	mov	r12, qword ptr [rsp + 0x18]
	jmp	.label_436
.label_446:
	mov	qword ptr [r12 + 0x10], 0
	test	rbx, rbx
	mov	rbp, r12
	je	.label_436
	mov	rax, qword ptr [rsp + 0x18]
	mov	qword ptr [rax + 0x10], r12
	mov	rbp, rbx
.label_436:
	mov	rbx, qword ptr [rsp + 0x40]
	inc	rbx
	mov	rax, qword ptr [rsp + 0x38]
	mov	r15, qword ptr [rax + 8]
	add	rax, 8
	mov	qword ptr [rsp + 0x38], rax
	test	r15, r15
	mov	qword ptr [rsp + 0x18], r12
	mov	r12d, r14d
	jne	.label_450
	test	r13, r13
	je	.label_430
	cmp	rbx, 2
	jb	.label_430
	mov	rdi, qword ptr [rsp + 0x10]
	mov	rsi, rbp
	mov	rdx, rbx
	call	fts_sort
	mov	rbp, rax
.label_430:
	mov	edi, 0x110
	call	malloc
	test	rax, rax
	je	.label_440
	mov	byte ptr [rax + 0x108], 0
	mov	qword ptr [rax + 0x60], 0
	mov	rbx, qword ptr [rsp + 0x10]
	mov	qword ptr [rax + 0x50], rbx
	mov	rcx, qword ptr [rbx + 0x20]
	mov	qword ptr [rax + 0x38], rcx
	mov	dword ptr [rax + 0x40], 0
	mov	qword ptr [rax + 0x18], 0
	mov	word ptr [rax + 0x72], 0
	mov	word ptr [rax + 0x74], 3
	xorps	xmm0, xmm0
	movups	xmmword ptr [rax + 0x20], xmm0
	mov	qword ptr [rbx], rax
	mov	qword ptr [rax + 0x10], rbp
	mov	word ptr [rax + 0x70], 9
	mov	qword ptr [rax + 0x58], 1
	movzx	eax, word ptr [rbx + 0x48]
	test	ax, 0x102
	je	.label_442
	mov	edi, 0x1f
	xor	esi, esi
	mov	edx, OFFSET FLAT:AD_hash
	mov	ecx, OFFSET FLAT:AD_compare
	mov	r8d, OFFSET FLAT:free
	call	hash_initialize
	mov	qword ptr [rbx + 0x58], rax
	test	rax, rax
	jne	.label_445
	jmp	.label_426
.label_434:
	call	__errno_location
	mov	dword ptr [rax], 0x16
.label_448:
	xor	eax, eax
.label_447:
	add	rsp, 0x48
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_435:
	mov	rdi, qword ptr [rbx + 0x20]
	jmp	.label_451
.label_454:
	mov	rbp, qword ptr [rsp + 0x30]
	mov	rbx, qword ptr [rsp + 0x10]
	jmp	.label_426
.label_432:
	mov	rbx, qword ptr [rsp + 0x10]
	jmp	.label_444
.label_440:
	mov	rbx, qword ptr [rsp + 0x10]
	mov	qword ptr [rbx], 0
.label_426:
	mov	r14, rbx
	test	rbp, rbp
	je	.label_428
	nop	dword ptr [rax + rax]
.label_441:
	mov	rbx, qword ptr [rbp + 0x10]
	mov	rdi, qword ptr [rbp + 0x18]
	test	rdi, rdi
	je	.label_452
	call	closedir
.label_452:
	mov	rdi, rbp
	call	free
	test	rbx, rbx
	mov	rbp, rbx
	jne	.label_441
.label_428:
	mov	rdi, qword ptr [rsp + 0x28]
	call	free
	mov	rbx, r14
	mov	rbp, qword ptr [rbx + 0x20]
.label_444:
	mov	rdi, rbp
.label_451:
	call	free
	mov	rdi, rbx
	call	free
	jmp	.label_448
.label_442:
	mov	edi, 0x20
	call	malloc
	mov	qword ptr [rbx + 0x58], rax
	test	rax, rax
	je	.label_426
	mov	rdi, rax
	call	cycle_check_init
.label_445:
	mov	eax, dword ptr [rbx + 0x48]
	test	ax, 0x204
	jne	.label_433
	mov	edx, eax
	and	edx, 0x10
	shl	edx, 0xd
	or	edx, 0x90900
	test	ah, 2
	jne	.label_455
	mov	edi, OFFSET FLAT:label_427
	xor	eax, eax
	mov	esi, edx
	call	open_safer
	jmp	.label_443
.label_455:
	mov	edi, dword ptr [rbx + 0x2c]
	mov	esi, OFFSET FLAT:label_427
	xor	eax, eax
	call	openat_safer
.label_443:
	mov	dword ptr [rbx + 0x28], eax
	test	eax, eax
	jns	.label_433
	or	byte ptr [rbx + 0x48], 4
.label_433:
	mov	rdi, rbx
	add	rdi, 0x60
	mov	esi, 0xffffffff
	call	i_ring_init
	mov	rax, rbx
	jmp	.label_447
	.section	.text
	.align	16
	#Procedure 0x405252
	.globl sub_405252
	.type sub_405252, @function
sub_405252:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x405260

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
	jne	.label_458
	test	eax, eax
	sete	cl
	neg	eax
	sbb	ebx, ebx
	test	r14, r14
	jne	.label_457
	test	cl, cl
	jne	.label_457
	call	__errno_location
	xor	ecx, ecx
	cmp	dword ptr [rax], 9
	mov	ebx, 0xffffffff
	cmove	ebx, ecx
	jmp	.label_457
.label_458:
	mov	ebx, 0xffffffff
	test	eax, eax
	jne	.label_457
	call	__errno_location
	mov	dword ptr [rax], 0
.label_457:
	mov	eax, ebx
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x4052c0
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
	#Procedure 0x4052d7
	.globl sub_4052d7
	.type sub_4052d7, @function
sub_4052d7:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4052e0

	.globl umaxtostr
	.type umaxtostr, @function
umaxtostr:
	mov	rcx, rdi
	mov	byte ptr [rsi + 0x14], 0
	add	rsi, 0x14
	movabs	r8, 0xcccccccccccccccd
	nop	word ptr cs:[rax + rax]
.label_459:
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
	ja	.label_459
	mov	rax, rsi
	ret	
	.section	.text
	.align	16
	#Procedure 0x40532b
	.globl sub_40532b
	.type sub_40532b, @function
sub_40532b:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x405330

	.globl openat_safer
	.type openat_safer, @function
openat_safer:
	sub	rsp, 0xd8
	test	al, al
	je	.label_460
	movaps	xmmword ptr [rsp + 0x50], xmm0
	movaps	xmmword ptr [rsp + 0x60], xmm1
	movaps	xmmword ptr [rsp + 0x70], xmm2
	movaps	xmmword ptr [rsp + 0x80], xmm3
	movaps	xmmword ptr [rsp + 0x90], xmm4
	movaps	xmmword ptr [rsp + 0xa0], xmm5
	movaps	xmmword ptr [rsp + 0xb0], xmm6
	movaps	xmmword ptr [rsp + 0xc0], xmm7
.label_460:
	mov	qword ptr [rsp + 0x48], r9
	mov	qword ptr [rsp + 0x40], r8
	mov	qword ptr [rsp + 0x38], rcx
	xor	ecx, ecx
	test	dl, 0x40
	je	.label_461
	lea	rax, [rsp + 0x20]
	mov	qword ptr [rsp + 0x10], rax
	lea	rax, [rsp + 0xe0]
	mov	qword ptr [rsp + 8], rax
	mov	dword ptr [rsp + 4], 0x30
	mov	dword ptr [rsp], 0x18
	movsxd	rcx, dword ptr [rsp]
	cmp	rcx, 0x28
	ja	.label_463
	mov	rax, rcx
	add	rax, qword ptr [rsp + 0x10]
	lea	ecx, [rcx + 8]
	mov	dword ptr [rsp], ecx
	jmp	.label_462
.label_463:
	mov	rax, qword ptr [rsp + 8]
	lea	rcx, [rax + 8]
	mov	qword ptr [rsp + 8], rcx
.label_462:
	mov	ecx, dword ptr [rax]
.label_461:
	xor	eax, eax
	call	openat
	mov	edi, eax
	call	fd_safer
	add	rsp, 0xd8
	ret	
	.section	.text
	.align	16
	#Procedure 0x4053ee
	.globl sub_4053ee
	.type sub_4053ee, @function
sub_4053ee:

	nop	
	.section	.text
	.align	16
	#Procedure 0x4053f0

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
	jne	.label_464
	mov	dl, byte ptr [rdi + 0x1c]
	xor	dl, 1
	movzx	edx, dl
	add	edx, ecx
	and	edx, 3
	mov	dword ptr [rdi + 0x18], edx
.label_464:
	mov	byte ptr [rdi + 0x1c], 0
	ret	
	.section	.text
	.align	16
	#Procedure 0x405423
	.globl sub_405423
	.type sub_405423, @function
sub_405423:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x405430

	.globl version_etc_va
	.type version_etc_va, @function
version_etc_va:
	movsxd	r10, dword ptr [r8]
	cmp	r10, 0x28
	ja	.label_475
	mov	r9, r10
	add	r9, qword ptr [r8 + 0x10]
	lea	r10d, [r10 + 8]
	mov	dword ptr [r8], r10d
	jmp	.label_477
.label_475:
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
.label_477:
	sub	rsp, 0x58
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp], rax
	xor	r9d, r9d
	test	rax, rax
	je	.label_465
	cmp	r10d, 0x29
	jae	.label_474
	movsxd	r9, r10d
	add	r9, qword ptr [r8 + 0x10]
	add	r10d, 8
	mov	dword ptr [r8], r10d
	jmp	.label_476
.label_474:
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
.label_476:
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp + 8], rax
	mov	r9d, 1
	test	rax, rax
	je	.label_465
	cmp	r10d, 0x29
	jae	.label_472
	movsxd	r9, r10d
	add	r9, qword ptr [r8 + 0x10]
	add	r10d, 8
	mov	dword ptr [r8], r10d
	jmp	.label_473
.label_472:
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
.label_473:
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp + 0x10], rax
	mov	r9d, 2
	test	rax, rax
	je	.label_465
	cmp	r10d, 0x29
	jae	.label_470
	movsxd	r9, r10d
	add	r9, qword ptr [r8 + 0x10]
	add	r10d, 8
	mov	dword ptr [r8], r10d
	jmp	.label_471
.label_470:
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
.label_471:
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp + 0x18], rax
	mov	r9d, 3
	test	rax, rax
	je	.label_465
	cmp	r10d, 0x29
	jae	.label_468
	movsxd	r9, r10d
	add	r9, qword ptr [r8 + 0x10]
	add	r10d, 8
	mov	dword ptr [r8], r10d
	jmp	.label_469
.label_468:
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
.label_469:
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp + 0x20], rax
	mov	r9d, 4
	test	rax, rax
	je	.label_465
	cmp	r10d, 0x29
	jae	.label_466
	movsxd	r9, r10d
	add	r9, qword ptr [r8 + 0x10]
	add	r10d, 8
	mov	dword ptr [r8], r10d
	jmp	.label_467
.label_466:
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
.label_467:
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp + 0x28], rax
	mov	r9d, 5
	test	rax, rax
	je	.label_465
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp + 0x30], rax
	mov	r9d, 6
	test	rax, rax
	je	.label_465
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp + 0x38], rax
	mov	r9d, 7
	test	rax, rax
	je	.label_465
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp + 0x40], rax
	mov	r9d, 8
	test	rax, rax
	je	.label_465
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp + 0x48], rax
	cmp	rax, 1
	mov	r9d, 9
	sbb	r9, -1
.label_465:
	lea	r8, [rsp]
	call	version_etc_arn
	add	rsp, 0x58
	ret	
	.section	.text
	.align	16
	#Procedure 0x405612
	.globl sub_405612
	.type sub_405612, @function
sub_405612:

	nop	word ptr cs:[rax + rax]
.label_478:
	add	ecx, 3
	and	ecx, 3
	mov	dword ptr [rdi + 0x14], ecx
	ret	
	.section	.text
	.align	16
	#Procedure 0x40562a

	.globl i_ring_pop
	.type i_ring_pop, @function
i_ring_pop:
	cmp	byte ptr [rdi + 0x1c], 0
	jne	.label_479
	mov	ecx, dword ptr [rdi + 0x10]
	mov	edx, dword ptr [rdi + 0x14]
	mov	eax, dword ptr [rdi + rdx*4]
	mov	dword ptr [rdi + rdx*4], ecx
	mov	ecx, dword ptr [rdi + 0x14]
	cmp	ecx, dword ptr [rdi + 0x18]
	jne	.label_478
	mov	byte ptr [rdi + 0x1c], 1
	ret	
.label_479:
	push	rax
	call	abort
	.section	.text
	.align	16
	#Procedure 0x40564f
	.globl sub_40564f
	.type sub_40564f, @function
sub_40564f:

	nop	
	.section	.text
	.align	16
	#Procedure 0x405650

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
	#Procedure 0x405672
	.globl sub_405672
	.type sub_405672, @function
sub_405672:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x405680
	.globl xnmalloc
	.type xnmalloc, @function
xnmalloc:

	push	rbx
	mov	rbx, rsi
	movabs	rax, 0x7fffffffffffffff
	xor	edx, edx
	div	rbx
	cmp	rax, rdi
	jb	.label_480
	imul	rbx, rdi
	mov	rdi, rbx
	call	malloc
	test	rbx, rbx
	je	.label_481
	test	rax, rax
	je	.label_480
.label_481:
	pop	rbx
	ret	
.label_480:
	call	xalloc_die
	.section	.text
	.align	16
	#Procedure 0x4056b5
	.globl sub_4056b5
	.type sub_4056b5, @function
sub_4056b5:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4056c0
	.globl quote_n
	.type quote_n, @function
quote_n:

	mov	rdx, -1
	mov	ecx, OFFSET FLAT:quote_quoting_options
	jmp	quotearg_n_options
	.section	.text
	.align	16
	#Procedure 0x4056d1
	.globl sub_4056d1
	.type sub_4056d1, @function
sub_4056d1:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4056e0
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
	jne	.label_492
	mov	r15, qword ptr [r13]
	call	__errno_location
	mov	r14, rax
	mov	dword ptr [r14], 0
	xor	eax, eax
	test	byte ptr [r13 + 0x49], 0x20
	jne	.label_485
	movzx	ecx, word ptr [r15 + 0x70]
	xor	eax, eax
	cmp	ecx, 1
	je	.label_498
	movzx	ecx, cx
	cmp	ecx, 9
	jne	.label_485
	mov	rax, qword ptr [r15 + 0x10]
	jmp	.label_485
.label_492:
	call	__errno_location
	mov	dword ptr [rax], 0x16
	xor	eax, eax
	jmp	.label_485
.label_498:
	mov	rbx, qword ptr [r13 + 8]
	test	rbx, rbx
	je	.label_488
	nop	dword ptr [rax]
.label_497:
	mov	rbp, qword ptr [rbx + 0x10]
	mov	rdi, qword ptr [rbx + 0x18]
	test	rdi, rdi
	je	.label_491
	call	closedir
.label_491:
	mov	rdi, rbx
	call	free
	test	rbp, rbp
	mov	rbx, rbp
	jne	.label_497
.label_488:
	mov	ebx, 1
	cmp	r12d, 0x1000
	jne	.label_482
	or	byte ptr [r13 + 0x49], 0x10
	mov	ebx, 2
.label_482:
	cmp	qword ptr [r15 + 0x58], 0
	jne	.label_490
	mov	rax, qword ptr [r15 + 0x30]
	cmp	byte ptr [rax], 0x2f
	je	.label_490
	mov	eax, dword ptr [r13 + 0x48]
	test	al, 4
	jne	.label_490
	mov	edx, eax
	and	edx, 0x10
	shl	edx, 0xd
	or	edx, 0x90900
	test	ah, 2
	jne	.label_494
	mov	edi, OFFSET FLAT:label_427
	xor	eax, eax
	mov	esi, edx
	call	open_safer
	jmp	.label_495
.label_490:
	mov	rdi, r13
	mov	esi, ebx
	call	fts_build
	mov	qword ptr [r13 + 8], rax
.label_485:
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_494:
	mov	edi, dword ptr [r13 + 0x2c]
	mov	esi, OFFSET FLAT:label_427
	xor	eax, eax
	call	openat_safer
.label_495:
	mov	r15d, eax
	test	r15d, r15d
	js	.label_486
	mov	rdi, r13
	mov	esi, ebx
	call	fts_build
	mov	qword ptr [r13 + 8], rax
	test	byte ptr [r13 + 0x49], 2
	jne	.label_489
	mov	edi, r15d
	call	fchdir
	test	eax, eax
	je	.label_493
	mov	ebx, dword ptr [r14]
	mov	edi, r15d
	call	close
	mov	dword ptr [r14], ebx
	xor	eax, eax
	jmp	.label_485
.label_486:
	mov	qword ptr [r13 + 8], 0
	xor	eax, eax
	jmp	.label_485
.label_489:
	mov	esi, dword ptr [r13 + 0x2c]
	cmp	esi, r15d
	jne	.label_496
	cmp	esi, -0x64
	jne	.label_487
.label_496:
	lea	rdi, [r13 + 0x60]
	call	i_ring_push
	test	eax, eax
	js	.label_484
	mov	edi, eax
	call	close
.label_484:
	mov	dword ptr [r13 + 0x2c], r15d
	jmp	.label_483
.label_493:
	mov	edi, r15d
	call	close
.label_483:
	mov	rax, qword ptr [r13 + 8]
	jmp	.label_485
.label_487:
	call	abort
	.section	.text
	.align	16
	#Procedure 0x405887
	.globl sub_405887
	.type sub_405887, @function
sub_405887:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x405890
	.globl close_stdout_set_ignore_EPIPE
	.type close_stdout_set_ignore_EPIPE, @function
close_stdout_set_ignore_EPIPE:

	mov	byte ptr [rip + ignore_EPIPE],  dil
	ret	
	.section	.text
	.align	16
	#Procedure 0x405898
	.globl sub_405898
	.type sub_405898, @function
sub_405898:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4058a0

	.globl rpl_fts_read
	.type rpl_fts_read, @function
rpl_fts_read:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	push	rax
	mov	r14, rdi
	mov	r12, qword ptr [r14]
	xor	r15d, r15d
	test	r12, r12
	je	.label_502
	mov	eax, dword ptr [r14 + 0x48]
	xor	r15d, r15d
	test	ah, 0x20
	jne	.label_502
	movzx	ecx, word ptr [r12 + 0x74]
	mov	word ptr [r12 + 0x74], 3
	cmp	ecx, 1
	je	.label_543
	movzx	edx, cx
	cmp	edx, 2
	jne	.label_548
	mov	ecx, dword ptr [r12 + 0x70]
	mov	esi, ecx
	and	esi, 0xfffe
	cmp	esi, 0xc
	jne	.label_553
	mov	edx, 1
	mov	rdi, r14
	mov	rsi, r12
	call	fts_stat
	mov	word ptr [r12 + 0x70], ax
	movzx	eax, ax
	cmp	eax, 1
	jne	.label_503
	mov	eax, dword ptr [r14 + 0x48]
	test	al, 4
	jne	.label_509
	mov	edx, eax
	and	edx, 0x10
	shl	edx, 0xd
	or	edx, 0x90900
	test	ah, 2
	jne	.label_512
	mov	edi, OFFSET FLAT:label_427
	xor	eax, eax
	mov	esi, edx
	call	open_safer
	jmp	.label_519
.label_543:
	xor	edx, edx
	mov	rdi, r14
	mov	rsi, r12
	call	fts_stat
	mov	word ptr [r12 + 0x70], ax
	mov	r15, r12
	jmp	.label_502
.label_548:
	lea	r13, [r12 + 0x70]
	mov	ecx, dword ptr [r12 + 0x70]
	jmp	.label_526
.label_553:
	lea	r13, [r12 + 0x70]
.label_526:
	movzx	esi, cx
	cmp	esi, 1
	jne	.label_510
	cmp	edx, 4
	je	.label_531
	test	al, 0x40
	je	.label_527
	mov	rdx, qword ptr [r12 + 0x78]
	cmp	rdx, qword ptr [r14 + 0x18]
	jne	.label_531
.label_527:
	mov	rbx, qword ptr [r14 + 8]
	test	rbx, rbx
	je	.label_536
	test	ah, 0x10
	jne	.label_540
	mov	rcx, qword ptr [r12 + 0x30]
	mov	edx, 0xffffffff
	mov	rdi, r14
	mov	rsi, r12
	call	fts_safe_changedir
	test	eax, eax
	je	.label_537
	call	__errno_location
	mov	eax, dword ptr [rax]
	mov	dword ptr [r12 + 0x40], eax
	or	byte ptr [r12 + 0x72], 1
	mov	rax, qword ptr [r14 + 8]
	jmp	.label_515
	.section	.text
	.align	16
	#Procedure 0x4059f4
	.globl sub_4059f4
	.type sub_4059f4, @function
sub_4059f4:

	nop	word ptr cs:[rax + rax]
.label_510:
	mov	r15, qword ptr [r12 + 0x10]
	test	r15, r15
	je	.label_499
	mov	qword ptr [r14], r15
	mov	rdi, r12
	call	free
	cmp	qword ptr [r15 + 0x58], 0
	je	.label_506
	movzx	eax, word ptr [r15 + 0x74]
	cmp	eax, 4
	mov	r12, r15
	je	.label_510
	movzx	eax, ax
	cmp	eax, 2
	jne	.label_500
	mov	edx, 1
	mov	rdi, r14
	mov	rsi, r15
	call	fts_stat
	mov	word ptr [r15 + 0x70], ax
	movzx	eax, ax
	cmp	eax, 1
	jne	.label_522
	mov	eax, dword ptr [r14 + 0x48]
	test	al, 4
	jne	.label_522
	mov	edx, eax
	and	edx, 0x10
	shl	edx, 0xd
	or	edx, 0x90900
	test	ah, 2
	jne	.label_539
	mov	edi, OFFSET FLAT:label_427
	xor	eax, eax
	mov	esi, edx
	call	open_safer
	jmp	.label_520
.label_535:
	mov	rcx, qword ptr [rax + 8]
	mov	rcx, qword ptr [rcx + 0x30]
	mov	qword ptr [rax + 0x30], rcx
	mov	rax, qword ptr [rax + 0x10]
.label_515:
	test	rax, rax
	jne	.label_535
	jmp	.label_537
.label_531:
	test	ecx, 0x20000
	je	.label_538
	mov	edi, dword ptr [r12 + 0x44]
	call	close
.label_538:
	mov	rbx, qword ptr [r14 + 8]
	test	rbx, rbx
	je	.label_530
	nop	dword ptr [rax]
.label_551:
	mov	rbp, qword ptr [rbx + 0x10]
	mov	rdi, qword ptr [rbx + 0x18]
	test	rdi, rdi
	je	.label_544
	call	closedir
.label_544:
	mov	rdi, rbx
	call	free
	test	rbp, rbp
	mov	rbx, rbp
	jne	.label_551
	mov	qword ptr [r14 + 8], 0
.label_530:
	mov	word ptr [r12 + 0x70], 6
.label_508:
	mov	rdi, r14
	mov	rsi, r12
	call	leave_dir
	mov	r15, r12
	jmp	.label_502
.label_499:
	mov	r15, qword ptr [r12 + 8]
	cmp	qword ptr [r15 + 0x18], 0
	je	.label_504
	mov	qword ptr [r14], r15
	mov	rax, qword ptr [r15 + 0x48]
	mov	rcx, qword ptr [r14 + 0x20]
	mov	byte ptr [rcx + rax], 0
	mov	esi, 3
	mov	rdi, r14
	call	fts_build
	mov	r15, rax
	test	r15, r15
	je	.label_516
	mov	rdi, r12
	call	free
	jmp	.label_500
.label_503:
	mov	r15, r12
	jmp	.label_517
.label_506:
	mov	rdi, r14
	call	restore_initial_cwd
	test	eax, eax
	mov	eax, dword ptr [r14 + 0x48]
	je	.label_524
	or	eax, 0x2000
	mov	dword ptr [r14 + 0x48], eax
	xor	r15d, r15d
	jmp	.label_502
.label_509:
	mov	r15, r12
	jmp	.label_517
.label_524:
	test	ax, 0x102
	je	.label_532
	mov	rdi, qword ptr [r14 + 0x58]
	test	rdi, rdi
	je	.label_529
	call	hash_free
	jmp	.label_529
.label_540:
	and	eax, 0xffffefff
	mov	dword ptr [r14 + 0x48], eax
	nop	word ptr cs:[rax + rax]
.label_546:
	mov	rbp, qword ptr [rbx + 0x10]
	mov	rdi, qword ptr [rbx + 0x18]
	test	rdi, rdi
	je	.label_542
	call	closedir
.label_542:
	mov	rdi, rbx
	call	free
	test	rbp, rbp
	mov	rbx, rbp
	jne	.label_546
	mov	qword ptr [r14 + 8], 0
.label_536:
	mov	esi, 3
	mov	rdi, r14
	call	fts_build
	mov	qword ptr [r14 + 8], rax
	test	rax, rax
	je	.label_555
.label_537:
	mov	r15, qword ptr [r14 + 8]
	mov	qword ptr [r14 + 8], 0
	jmp	.label_500
.label_555:
	xor	r15d, r15d
	test	byte ptr [r14 + 0x49], 0x20
	jne	.label_502
	cmp	dword ptr [r12 + 0x40], 0
	je	.label_508
	movzx	eax, word ptr [r13]
	cmp	eax, 4
	je	.label_508
	mov	word ptr [r13], 7
	jmp	.label_508
.label_512:
	mov	edi, dword ptr [r14 + 0x2c]
	mov	esi, OFFSET FLAT:label_427
	xor	eax, eax
	call	openat_safer
.label_519:
	mov	dword ptr [r12 + 0x44], eax
	test	eax, eax
	js	.label_556
	or	byte ptr [r12 + 0x72], 2
	mov	r15, r12
	jmp	.label_517
.label_516:
	xor	r15d, r15d
	test	byte ptr [r14 + 0x49], 0x20
	jne	.label_502
	mov	r15, qword ptr [r12 + 8]
.label_504:
	mov	qword ptr [r14], r15
	mov	rdi, r12
	call	free
	cmp	qword ptr [r15 + 0x58], -1
	je	.label_533
	movzx	eax, word ptr [r15 + 0x70]
	cmp	eax, 0xb
	je	.label_507
	mov	rax, qword ptr [r15 + 0x48]
	mov	rcx, qword ptr [r14 + 0x20]
	mov	byte ptr [rcx + rax], 0
	cmp	qword ptr [r15 + 0x58], 0
	je	.label_534
	movzx	eax, word ptr [r15 + 0x72]
	test	al, 2
	jne	.label_541
	test	al, 1
	jne	.label_501
	mov	rsi, qword ptr [r15 + 8]
	mov	edx, 0xffffffff
	mov	ecx, OFFSET FLAT:label_547
	mov	rdi, r14
	call	fts_safe_changedir
	jmp	.label_549
.label_533:
	mov	rdi, r15
	call	free
	call	__errno_location
	mov	dword ptr [rax], 0
	mov	qword ptr [r14], 0
	xor	r15d, r15d
	jmp	.label_502
.label_556:
	call	__errno_location
	mov	eax, dword ptr [rax]
	mov	dword ptr [r12 + 0x40], eax
	mov	word ptr [r12 + 0x70], 7
	mov	r15, r12
	jmp	.label_517
.label_532:
	mov	rdi, qword ptr [r14 + 0x58]
	call	free
.label_529:
	mov	rdx, qword ptr [r15 + 0x60]
	mov	qword ptr [r15 + 0x48], rdx
	mov	rdi, qword ptr [r14 + 0x20]
	lea	r12, [r15 + 0x108]
	inc	rdx
	mov	rsi, r12
	call	memmove
	mov	esi, 0x2f
	mov	rdi, r12
	call	strrchr
	mov	rbx, rax
	test	rbx, rbx
	je	.label_521
	cmp	rbx, r12
	jne	.label_523
	cmp	byte ptr [r15 + 0x109], 0
	je	.label_521
.label_523:
	inc	rbx
	mov	rdi, rbx
	call	strlen
	mov	r13, rax
	lea	rdx, [r13 + 1]
	mov	rdi, r12
	mov	rsi, rbx
	call	memmove
	mov	qword ptr [r15 + 0x60], r13
.label_521:
	mov	rax, qword ptr [r14 + 0x20]
	mov	qword ptr [r15 + 0x38], rax
	mov	qword ptr [r15 + 0x30], rax
	movzx	eax, word ptr [r14 + 0x48]
	test	ax, 0x102
	je	.label_518
	mov	edi, 0x1f
	xor	esi, esi
	mov	edx, OFFSET FLAT:AD_hash
	mov	ecx, OFFSET FLAT:AD_compare
	mov	r8d, OFFSET FLAT:free
	call	hash_initialize
	mov	qword ptr [r14 + 0x58], rax
	jmp	.label_517
.label_518:
	mov	edi, 0x20
	call	malloc
	mov	qword ptr [r14 + 0x58], rax
	test	rax, rax
	je	.label_517
	mov	rdi, rax
	call	cycle_check_init
	jmp	.label_517
.label_534:
	mov	rdi, r14
	call	restore_initial_cwd
.label_549:
	test	eax, eax
	je	.label_501
	call	__errno_location
	mov	eax, dword ptr [rax]
	mov	dword ptr [r15 + 0x40], eax
	or	byte ptr [r14 + 0x49], 0x20
	jmp	.label_501
.label_541:
	mov	eax, dword ptr [r14 + 0x48]
	lea	rbx, [r15 + 0x44]
	test	al, 4
	jne	.label_525
	test	ah, 2
	mov	ebp, dword ptr [r15 + 0x44]
	jne	.label_511
	mov	edi, ebp
	call	fchdir
	test	eax, eax
	je	.label_525
	call	__errno_location
	mov	eax, dword ptr [rax]
	mov	dword ptr [r15 + 0x40], eax
	or	byte ptr [r14 + 0x49], 0x20
	jmp	.label_525
.label_539:
	mov	edi, dword ptr [r14 + 0x2c]
	mov	esi, OFFSET FLAT:label_427
	xor	eax, eax
	call	openat_safer
.label_520:
	mov	dword ptr [r15 + 0x44], eax
	test	eax, eax
	js	.label_545
	or	byte ptr [r15 + 0x72], 2
	jmp	.label_522
.label_545:
	call	__errno_location
	mov	eax, dword ptr [rax]
	mov	dword ptr [r15 + 0x40], eax
	mov	word ptr [r15 + 0x70], 7
.label_522:
	mov	word ptr [r15 + 0x74], 3
.label_500:
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
.label_517:
	mov	qword ptr [r14], r15
	movzx	eax, word ptr [r15 + 0x70]
	cmp	eax, 0xb
	jne	.label_514
	mov	rax, qword ptr [r15 + 0xa8]
	cmp	rax, 1
	je	.label_505
	cmp	rax, 2
	jne	.label_507
	mov	rbx, qword ptr [r15 + 8]
	cmp	qword ptr [rbx + 0x68], 0
	jne	.label_554
	mov	eax, dword ptr [r14 + 0x48]
	and	eax, 0x18
	cmp	eax, 0x18
	jne	.label_554
	mov	esi, dword ptr [r14 + 0x2c]
	mov	rdi, rbx
	call	filesystem_type
	cmp	rax, 0x52654973
	je	.label_505
	cmp	rax, 0x58465342
	je	.label_505
.label_554:
	xor	edx, edx
	mov	rdi, r14
	mov	rsi, r15
	call	fts_stat
	mov	word ptr [r15 + 0x70], ax
	mov	ecx, 0xf000
	and	ecx, dword ptr [r15 + 0x90]
	cmp	ecx, 0x4000
	jne	.label_514
	cmp	qword ptr [r15 + 0x58], 0
	je	.label_505
	mov	rax, qword ptr [rbx + 0x68]
	lea	rcx, [rax + 1]
	cmp	rcx, 2
	jb	.label_505
	dec	rax
	mov	qword ptr [rbx + 0x68], rax
.label_505:
	mov	ax, word ptr [r15 + 0x70]
.label_514:
	movzx	eax, ax
	cmp	eax, 1
	jne	.label_502
	cmp	qword ptr [r15 + 0x58], 0
	jne	.label_528
	mov	rax, qword ptr [r15 + 0x78]
	mov	qword ptr [r14 + 0x18], rax
.label_528:
	mov	rdi, r14
	mov	rsi, r15
	call	enter_dir
	test	al, al
	jne	.label_502
	call	__errno_location
	mov	dword ptr [rax], 0xc
	xor	r15d, r15d
	jmp	.label_502
.label_511:
	mov	esi, dword ptr [r14 + 0x2c]
	cmp	esi, ebp
	jne	.label_552
	cmp	esi, -0x64
	jne	.label_507
.label_552:
	lea	rdi, [r14 + 0x60]
	call	i_ring_push
	test	eax, eax
	js	.label_550
	mov	edi, eax
	call	close
.label_550:
	mov	dword ptr [r14 + 0x2c], ebp
.label_525:
	mov	edi, dword ptr [rbx]
	call	close
.label_501:
	movzx	eax, word ptr [r15 + 0x70]
	cmp	eax, 2
	je	.label_513
	mov	eax, dword ptr [r15 + 0x40]
	xor	ecx, ecx
	cmp	eax, 0
	setne	cl
	or	ecx, 6
	cmp	eax, 0
	mov	word ptr [r15 + 0x70], cx
	jne	.label_513
	mov	rdi, r14
	mov	rsi, r15
	call	leave_dir
.label_513:
	xor	eax, eax
	test	byte ptr [r14 + 0x49], 0x20
	cmovne	r15, rax
.label_502:
	mov	rax, r15
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_507:
	call	abort
	.section	.text
	.align	16
	#Procedure 0x406023
	.globl sub_406023
	.type sub_406023, @function
sub_406023:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x406030

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
	je	.label_557
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
.label_557:
	call	abort
	.section	.text
	.align	16
	#Procedure 0x4060c5
	.globl sub_4060c5
	.type sub_4060c5, @function
sub_4060c5:

	nop	word ptr cs:[rax + rax]
.label_559:
	mov	ecx, 1
.label_558:
	mov	rdi, rcx
	mov	rsi, rax
	jmp	calloc
	.section	.text
	.align	16
	#Procedure 0x4060e0
	.globl sub_4060e0
	.type sub_4060e0, @function
sub_4060e0:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4060e5

	.globl rpl_calloc
	.type rpl_calloc, @function
rpl_calloc:
	test	rdi, rdi
	mov	eax, 1
	je	.label_559
	test	rsi, rsi
	mov	ecx, 1
	je	.label_558
	mov	rax, rsi
	imul	rax, rdi
	xor	edx, edx
	div	rsi
	cmp	rax, rdi
	mov	rax, rsi
	mov	rcx, rdi
	je	.label_558
	push	rax
	call	__errno_location
	mov	dword ptr [rax], 0xc
	xor	eax, eax
	pop	rcx
	ret	
	.section	.text
	.align	16
	#Procedure 0x406120

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
	jae	.label_565
	lea	rsi, [r14 + 0x28]
	mov	qword ptr [r12 + 0x38], rsi
	mov	rax, rsi
	shr	rax, 0x3d
	jne	.label_566
	lea	r13, [r12 + 0x10]
	mov	rdi, qword ptr [r13]
	shl	rsi, 3
	call	realloc
	mov	rdi, rax
	test	rdi, rdi
	je	.label_566
	mov	qword ptr [r13], rdi
	jmp	.label_569
.label_565:
	mov	rdi, qword ptr [r12 + 0x10]
	add	r12, 0x10
	mov	r13, r12
.label_569:
	test	rbx, rbx
	je	.label_560
	nop	dword ptr [rax]
.label_562:
	mov	qword ptr [rdi], rbx
	add	rdi, 8
	mov	rbx, qword ptr [rbx + 0x10]
	test	rbx, rbx
	jne	.label_562
	mov	rdi, qword ptr [r13]
.label_560:
	mov	edx, 8
	mov	rsi, r14
	mov	rcx, r15
	call	qsort
	mov	r8, qword ptr [r13]
	mov	rbx, qword ptr [r8]
	cmp	r14, 1
	mov	rcx, rbx
	je	.label_570
	mov	rcx, qword ptr [r8 + 8]
	mov	qword ptr [rbx + 0x10], rcx
	mov	rcx, r14
	add	rcx, -2
	je	.label_561
	lea	rsi, [r8 + 8]
	lea	rdx, [r14 - 3]
	and	ecx, 3
	cmp	rdx, 3
	jae	.label_564
	mov	rdx, rsi
	jmp	.label_567
.label_566:
	mov	rdi, qword ptr [r12 + 0x10]
	call	free
	mov	qword ptr [r12 + 0x10], 0
	mov	qword ptr [r12 + 0x38], 0
	jmp	.label_571
.label_564:
	lea	rdi, [rcx + 2]
	sub	rdi, r14
	nop	dword ptr [rax + rax]
.label_563:
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
	jne	.label_563
.label_567:
	test	rcx, rcx
	je	.label_561
	add	rdx, 8
	neg	rcx
	nop	dword ptr [rax + rax]
.label_568:
	mov	rax, qword ptr [rdx - 8]
	mov	rsi, qword ptr [rdx]
	mov	qword ptr [rax + 0x10], rsi
	add	rdx, 8
	inc	rcx
	jne	.label_568
.label_561:
	mov	rcx, qword ptr [r8 + r14*8 - 8]
.label_570:
	mov	qword ptr [rcx + 0x10], 0
.label_571:
	mov	rax, rbx
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	ret	
	.section	.text
	.align	16
	#Procedure 0x40629e
	.globl sub_40629e
	.type sub_40629e, @function
sub_40629e:

	nop	
	.section	.text
	.align	16
	#Procedure 0x4062a0
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
	je	.label_572
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
.label_572:
	call	abort
	.section	.text
	.align	16
	#Procedure 0x406308
	.globl sub_406308
	.type sub_406308, @function
sub_406308:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x406310

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
	#Procedure 0x406329
	.globl sub_406329
	.type sub_406329, @function
sub_406329:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x406330
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
	je	.label_573
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
.label_573:
	call	abort
	.section	.text
	.align	16
	#Procedure 0x406391
	.globl sub_406391
	.type sub_406391, @function
sub_406391:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4063a0
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
	#Procedure 0x4063af
	.globl sub_4063af
	.type sub_4063af, @function
sub_4063af:

	nop	
	.section	.text
	.align	16
	#Procedure 0x4063b0
	.globl xcalloc
	.type xcalloc, @function
xcalloc:

	push	rax
	movabs	rax, 0x7fffffffffffffff
	xor	edx, edx
	div	rsi
	cmp	rax, rdi
	jb	.label_574
	call	rpl_calloc
	test	rax, rax
	je	.label_574
	pop	rcx
	ret	
.label_574:
	call	xalloc_die
	.section	.text
	.align	16
	#Procedure 0x4063d6
	.globl sub_4063d6
	.type sub_4063d6, @function
sub_4063d6:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4063e0

	.globl cycle_check_init
	.type cycle_check_init, @function
cycle_check_init:
	mov	qword ptr [rdi + 0x10], 0
	mov	dword ptr [rdi + 0x18], 0x95f616
	ret	
	.section	.text
	.align	16
	#Procedure 0x4063f0
	.globl quotearg_custom
	.type quotearg_custom, @function
quotearg_custom:

	sub	rsp, 0x38
	mov	rax, rdx
	mov	rcx, qword ptr [rip + label_27]
	mov	qword ptr [rsp + 0x30], rcx
	movups	xmm0, xmmword ptr [rip + label_28]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0, xmmword ptr [rip + label_29]
	movaps	xmmword ptr [rsp + 0x10], xmm0
	movups	xmm0, xmmword ptr [rip + default_quoting_options]
	movaps	xmmword ptr [rsp], xmm0
	mov	dword ptr [rsp], 0xa
	test	rdi, rdi
	je	.label_575
	test	rsi, rsi
	je	.label_575
	mov	qword ptr [rsp + 0x28], rdi
	mov	qword ptr [rsp + 0x30], rsi
	lea	rcx, [rsp]
	xor	edi, edi
	mov	rdx, -1
	mov	rsi, rax
	call	quotearg_n_options
	add	rsp, 0x38
	ret	
.label_575:
	call	abort
	.section	.text
	.align	16
	#Procedure 0x406460

	.globl get_root_dev_ino
	.type get_root_dev_ino, @function
get_root_dev_ino:
	push	rbx
	sub	rsp, 0x90
	mov	rbx, rdi
	lea	rdx, [rsp]
	mov	edi, 1
	mov	esi, OFFSET FLAT:label_166
	call	__lxstat
	mov	ecx, eax
	xor	eax, eax
	test	ecx, ecx
	jne	.label_576
	mov	rax, qword ptr [rsp + 8]
	mov	qword ptr [rbx], rax
	mov	rax, qword ptr [rsp]
	mov	qword ptr [rbx + 8], rax
	mov	rax, rbx
.label_576:
	add	rsp, 0x90
	pop	rbx
	ret	
	.section	.text
	.align	16
	#Procedure 0x4064a2
	.globl sub_4064a2
	.type sub_4064a2, @function
sub_4064a2:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4064b0

	.globl AD_compare
	.type AD_compare, @function
AD_compare:
	mov	rax, qword ptr [rdi + 8]
	cmp	rax, qword ptr [rsi + 8]
	jne	.label_577
	mov	rax, qword ptr [rdi]
	cmp	rax, qword ptr [rsi]
	sete	al
	ret	
.label_577:
	xor	eax, eax
	ret	
	.section	.text
	.align	16
	#Procedure 0x4064c7
	.globl sub_4064c7
	.type sub_4064c7, @function
sub_4064c7:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4064d0

	.globl cycle_warning_required
	.type cycle_warning_required, @function
cycle_warning_required:
	mov	ecx, dword ptr [rdi + 0x48]
	and	ecx, 0x11
	mov	al, 1
	cmp	ecx, 0x10
	je	.label_578
	cmp	ecx, 0x11
	jne	.label_579
	cmp	qword ptr [rsi + 0x58], 0
	setne	al
.label_578:
	ret	
.label_579:
	xor	eax, eax
	ret	
	.section	.text
	.align	16
	#Procedure 0x4064ee
	.globl sub_4064ee
	.type sub_4064ee, @function
sub_4064ee:

	nop	
.label_593:
	mov	rbx, qword ptr [rip + stderr]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_580
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
	#Procedure 0x406528
	.globl sub_406528
	.type sub_406528, @function
sub_406528:

	nop	
	.section	.text
	.align	16
	#Procedure 0x40652a

	.globl usage
	.type usage, @function
usage:
	push	rbp
	push	rbx
	push	rax
	mov	ebp, edi
	test	ebp, ebp
	jne	.label_593
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_602
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
	mov	esi, OFFSET FLAT:label_586
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_588
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_594
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_583
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_595
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_596
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_597
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_598
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_592
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_599
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_600
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_601
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_591
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
	mov	esi, OFFSET FLAT:label_603
	mov	edx, 5
	call	dcgettext
	mov	rsi, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:label_357
	mov	ecx, OFFSET FLAT:label_585
	xor	eax, eax
	call	__printf_chk
	mov	edi, 5
	xor	esi, esi
	call	setlocale
	test	rax, rax
	je	.label_590
	mov	esi, OFFSET FLAT:label_587
	mov	edx, 3
	mov	rdi, rax
	call	strncmp
	test	eax, eax
	je	.label_590
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_589
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	call	fputs_unlocked
.label_590:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_584
	mov	edx, 5
	call	dcgettext
	mov	rsi, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:label_585
	mov	ecx, OFFSET FLAT:label_356
	xor	eax, eax
	call	__printf_chk
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_581
	mov	edx, 5
	call	dcgettext
	mov	rsi, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:label_356
	mov	ecx, OFFSET FLAT:label_582
	xor	eax, eax
	call	__printf_chk
	mov	edi, ebp
	call	exit
	.section	.text
	.align	16
	#Procedure 0x4067e0

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
	jae	.label_615
	mov	qword ptr [rsp], rcx
	call	__errno_location
	mov	r15, rax
	mov	dword ptr [r15], 0
	call	__ctype_b_loc
	mov	rcx, qword ptr [rax]
	mov	rdx, rbx
	nop	word ptr cs:[rax + rax]
.label_610:
	movzx	eax, byte ptr [rdx]
	inc	rdx
	test	byte ptr [rcx + rax*2 + 1], 0x20
	jne	.label_610
	test	rbp, rbp
	lea	rsi, [rsp + 0x10]
	cmovne	rsi, rbp
	mov	r13d, 4
	cmp	al, 0x2d
	je	.label_604
	mov	rdi, rbx
	mov	edx, r12d
	mov	qword ptr [rsp + 8], rsi
	call	strtoul
	mov	rbp, rax
	mov	rax, qword ptr [rsp + 8]
	mov	r12, qword ptr [rax]
	cmp	r12, rbx
	je	.label_621
	mov	eax, dword ptr [r15]
	xor	ebx, ebx
	test	eax, eax
	je	.label_624
	cmp	eax, 0x22
	jne	.label_604
	mov	ebx, 1
.label_624:
	test	r14, r14
	jne	.label_606
	jmp	.label_607
.label_621:
	test	r14, r14
	je	.label_604
	movsx	esi, byte ptr [rbx]
	test	esi, esi
	je	.label_604
	mov	rdi, r14
	call	strchr
	xor	ebx, ebx
	mov	ebp, 1
	test	rax, rax
	je	.label_604
.label_606:
	movsx	r13d, byte ptr [r12]
	test	r13d, r13d
	je	.label_607
	mov	rdi, r14
	mov	esi, r13d
	call	strchr
	test	rax, rax
	je	.label_614
	mov	r15d, 1
	mov	esi, 0x400
	lea	eax, [r13 - 0x45]
	cmp	eax, 0x2f
	ja	.label_608
	movabs	rdx, 0x814400308945
	bt	rdx, rax
	jae	.label_608
	mov	esi, 0x30
	mov	rdi, r14
	call	strchr
	mov	r15d, 1
	mov	esi, 0x400
	test	rax, rax
	je	.label_608
	movsx	eax, byte ptr [r12 + 1]
	mov	r15d, 1
	mov	esi, 0x400
	cmp	eax, 0x42
	je	.label_616
	cmp	eax, 0x44
	je	.label_616
	cmp	eax, 0x69
	jne	.label_608
	xor	eax, eax
	cmp	byte ptr [r12 + 2], 0x42
	sete	al
	lea	r15, [rax + rax + 1]
	mov	esi, 0x400
	jmp	.label_608
.label_616:
	mov	r15d, 2
	mov	esi, 0x3e8
.label_608:
	add	r13d, -0x42
	cmp	r13d, 0x35
	ja	.label_614
	xor	eax, eax
	jmp	qword ptr [(r13 * 8) + label_623]
.label_1039:
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
	jmp	.label_605
.label_614:
	mov	rax, qword ptr [rsp]
	mov	qword ptr [rax], rbp
	or	ebx, 2
	jmp	.label_612
.label_1040:
	mov	rdi, -1
	mov	rax, -1
	xor	edx, edx
	div	rsi
	imul	rsi, rbp
	cmp	rax, rbp
	cmovb	rsi, rdi
	sbb	eax, eax
	jmp	.label_617
.label_1041:
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
	jmp	.label_605
.label_1043:
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
	jmp	.label_605
.label_1037:
	xor	eax, eax
	mov	rdx, rbp
	shr	rdx, 0x36
	setne	al
	shl	rbp, 0xa
	jmp	.label_611
.label_1038:
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
.label_605:
	and	dl, 1
	movzx	eax, dl
	jmp	.label_613
.label_1042:
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
	jmp	.label_613
.label_1044:
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
	jmp	.label_622
.label_1045:
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
.label_622:
	movzx	eax, dl
.label_617:
	and	eax, 1
.label_613:
	mov	rbp, rsi
.label_609:
	or	eax, ebx
	lea	rcx, [r12 + r15]
	mov	rdx, qword ptr [rsp + 8]
	mov	qword ptr [rdx], rcx
	lea	ebx, [rax + 2]
	cmp	byte ptr [r12 + r15], 0
	cmove	ebx, eax
.label_607:
	mov	rax, qword ptr [rsp]
	mov	qword ptr [rax], rbp
.label_612:
	mov	r13d, ebx
.label_604:
	mov	eax, r13d
	add	rsp, 0x18
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_1046:
	xor	eax, eax
	mov	rdx, rbp
	shr	rdx, 0x37
	setne	al
	shl	rbp, 9
.label_611:
	cmp	rdx, 1
	sbb	rdx, rdx
	not	rdx
	or	rbp, rdx
	jmp	.label_609
.label_1047:
	lea	rax, [rbp + rbp]
	test	rbp, rbp
	mov	rcx, -1
	cmovns	rcx, rax
	shr	rbp, 0x3f
	mov	eax, ebp
	mov	rbp, rcx
	jmp	.label_609
.label_615:
	mov	edi, OFFSET FLAT:label_618
	mov	esi, OFFSET FLAT:label_619
	mov	edx, 0x54
	mov	ecx, OFFSET FLAT:label_620
	call	__assert_fail
	.section	.text
	.align	16
	#Procedure 0x406dfd
	.globl sub_406dfd
	.type sub_406dfd, @function
sub_406dfd:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x406e00
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
	jae	.label_628
	mov	rcx, qword ptr [r14]
	shl	rax, 4
	lea	rdx, [rcx + rax]
	nop	word ptr cs:[rax + rax]
.label_630:
	cmp	qword ptr [rdx], rbx
	mov	rdx, qword ptr [rdx + 8]
	je	.label_627
	test	rdx, rdx
	jne	.label_630
	jmp	.label_625
.label_627:
	test	rdx, rdx
	je	.label_625
	mov	rax, qword ptr [rdx]
	jmp	.label_626
.label_625:
	mov	rdx, qword ptr [r14 + 8]
	lea	rcx, [rcx + rax + 0x10]
	nop	word ptr cs:[rax + rax]
.label_629:
	cmp	rcx, rdx
	mov	eax, 0
	jae	.label_626
	mov	rax, qword ptr [rcx]
	add	rcx, 0x10
	test	rax, rax
	je	.label_629
.label_626:
	add	rsp, 8
	pop	rbx
	pop	r14
	ret	
.label_628:
	call	abort
	.section	.text
	.align	16
	#Procedure 0x406e83
	.globl sub_406e83
	.type sub_406e83, @function
sub_406e83:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x406e90

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
	je	.label_633
	test	rbx, rbx
	mov	eax, OFFSET FLAT:default_tuning
	cmove	rbx, rax
	mov	qword ptr [r15 + 0x28], rbx
	cmp	rbx, rax
	je	.label_636
	movss	xmm0, dword ptr [rbx + 8]
	ucomiss	xmm0, dword ptr [rip + label_641]
	jbe	.label_632
	movss	xmm1, dword ptr [rip + label_644]
	ucomiss	xmm1, xmm0
	jbe	.label_632
	movss	xmm1, dword ptr [rbx + 0xc]
	ucomiss	xmm1, dword ptr [rip + label_635]
	jbe	.label_632
	movss	xmm1, dword ptr [rbx]
	xorps	xmm2, xmm2
	ucomiss	xmm1, xmm2
	jb	.label_632
	addss	xmm1, dword ptr [rip + label_641]
	ucomiss	xmm0, xmm1
	jbe	.label_632
	movss	xmm0, dword ptr [rbx + 4]
	movss	xmm2, dword ptr [rip + label_631]
	ucomiss	xmm2, xmm0
	jb	.label_632
	ucomiss	xmm0, xmm1
	jbe	.label_632
.label_636:
	cmp	byte ptr [rbx + 0x10], 0
	jne	.label_643
	mov	eax, r12d
	and	eax, 1
	test	r12, r12
	js	.label_640
	xorps	xmm0, xmm0
	cvtsi2ss	xmm0, r12
	jmp	.label_642
.label_640:
	shr	r12, 1
	or	rax, r12
	xorps	xmm0, xmm0
	cvtsi2ss	xmm0, rax
	addss	xmm0, xmm0
.label_642:
	divss	xmm0, dword ptr [rbx + 8]
	movss	xmm1, dword ptr [rip + label_275]
	movaps	xmm2, xmm0
	subss	xmm2, xmm1
	cvttss2si	rax, xmm2
	movabs	rcx, 0x8000000000000000
	xor	rcx, rax
	cvttss2si	r12, xmm0
	ucomiss	xmm0, xmm1
	cmovae	r12, rcx
	ucomiss	xmm0, dword ptr [rip + label_276]
	jae	.label_632
.label_643:
	cmp	r12, 0xa
	mov	ebx, 0xa
	cmovae	rbx, r12
	or	rbx, 1
	jmp	.label_634
	.section	.text
	.align	16
	#Procedure 0x406fde
	.globl sub_406fde
	.type sub_406fde, @function
sub_406fde:

	nop	
.label_637:
	add	rbx, 2
.label_634:
	cmp	rbx, -1
	je	.label_632
	cmp	rbx, 0xa
	mov	ecx, 3
	jb	.label_639
	mov	esi, 0xc
	mov	edi, 9
	mov	ecx, 3
	nop	dword ptr [rax + rax]
.label_638:
	xor	edx, edx
	mov	rax, rbx
	div	rcx
	test	rdx, rdx
	je	.label_639
	lea	rdi, [rdi + rsi + 4]
	add	rcx, 2
	add	rsi, 8
	cmp	rdi, rbx
	jb	.label_638
.label_639:
	xor	edx, edx
	mov	rax, rbx
	div	rcx
	test	rdx, rdx
	je	.label_637
	mov	rax, rbx
	shr	rax, 0x3c
	jne	.label_632
	mov	qword ptr [r15 + 0x10], rbx
	test	rbx, rbx
	je	.label_632
	mov	esi, 0x10
	mov	rdi, rbx
	call	rpl_calloc
	mov	qword ptr [r15], rax
	test	rax, rax
	je	.label_632
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
	jmp	.label_633
.label_632:
	mov	rdi, r15
	call	free
	xor	eax, eax
.label_633:
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
	#Procedure 0x4070a8
	.globl sub_4070a8
	.type sub_4070a8, @function
sub_4070a8:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4070b0

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
	#Procedure 0x4070d8
	.globl sub_4070d8
	.type sub_4070d8, @function
sub_4070d8:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4070e0

	.globl xmalloc
	.type xmalloc, @function
xmalloc:
	push	rbx
	mov	rbx, rdi
	call	malloc
	test	rbx, rbx
	je	.label_645
	test	rax, rax
	je	.label_646
.label_645:
	pop	rbx
	ret	
.label_646:
	call	xalloc_die
	.section	.text
	.align	16
	#Procedure 0x4070fa
	.globl sub_4070fa
	.type sub_4070fa, @function
sub_4070fa:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x407100

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
	je	.label_647
	movzx	edx, byte ptr [rbx]
	mov	ecx, 0x2e
	mov	eax, 0x2e
	sub	eax, edx
	jne	.label_651
	movzx	eax, byte ptr [rbx + 1]
	sub	ecx, eax
	mov	eax, ecx
	jne	.label_651
	movzx	eax, byte ptr [rbx + 2]
	neg	eax
.label_651:
	test	eax, eax
	sete	r14b
	jmp	.label_660
.label_647:
	xor	r14d, r14d
.label_660:
	mov	eax, dword ptr [r15 + 0x48]
	test	al, 4
	jne	.label_661
	test	r13d, r13d
	mov	qword ptr [rsp], r12
	jns	.label_662
	mov	ecx, r14d
	xor	cl, 1
	jne	.label_662
	and	eax, 0x200
	je	.label_662
	lea	rbp, [r15 + 0x60]
	mov	rdi, rbp
	call	i_ring_empty
	test	al, al
	jne	.label_662
	mov	rdi, rbp
	call	i_ring_pop
	xor	ecx, ecx
	test	eax, eax
	cmovns	rbx, rcx
	cmovns	r13d, eax
	mov	r14b, 1
.label_662:
	test	r13d, r13d
	mov	r12d, r13d
	jns	.label_654
	mov	eax, dword ptr [r15 + 0x48]
	mov	edx, eax
	and	edx, 0x10
	shl	edx, 0xd
	or	edx, 0x90900
	test	ah, 2
	jne	.label_656
	xor	eax, eax
	mov	rdi, rbx
	mov	esi, edx
	call	open_safer
	jmp	.label_659
.label_661:
	xor	ebp, ebp
	test	r13d, r13d
	js	.label_655
	and	eax, 0x200
	je	.label_655
	mov	edi, r13d
	call	close
	jmp	.label_655
.label_656:
	mov	edi, dword ptr [r15 + 0x2c]
	xor	eax, eax
	mov	rsi, rbx
	call	openat_safer
.label_659:
	mov	r12d, eax
	mov	ebp, 0xffffffff
	test	r12d, r12d
	js	.label_655
.label_654:
	mov	eax, dword ptr [r15 + 0x48]
	test	al, 2
	jne	.label_649
	test	rbx, rbx
	je	.label_652
	cmp	byte ptr [rbx], 0x2e
	jne	.label_652
	cmp	byte ptr [rbx + 1], 0x2e
	jne	.label_652
	cmp	byte ptr [rbx + 2], 0
	jne	.label_652
.label_649:
	lea	rdx, [rsp + 8]
	mov	edi, 1
	mov	esi, r12d
	call	__fxstat
	test	eax, eax
	jne	.label_658
	mov	rcx, qword ptr [rsp]
	mov	rax, qword ptr [rcx + 0x78]
	cmp	rax, qword ptr [rsp + 8]
	jne	.label_657
	mov	rax, qword ptr [rcx + 0x80]
	cmp	rax, qword ptr [rsp + 0x10]
	jne	.label_657
	mov	eax, dword ptr [r15 + 0x48]
.label_652:
	test	ah, 2
	jne	.label_663
	mov	edi, r12d
	call	fchdir
	mov	ebp, eax
	jmp	.label_664
.label_663:
	mov	esi, dword ptr [r15 + 0x2c]
	cmp	esi, r12d
	jne	.label_665
	cmp	esi, -0x64
	jne	.label_653
.label_665:
	test	r14b, r14b
	je	.label_666
	test	al, 4
	jne	.label_648
	test	esi, esi
	js	.label_648
	mov	edi, esi
	jmp	.label_650
.label_657:
	call	__errno_location
	mov	dword ptr [rax], 2
.label_658:
	mov	ebp, 0xffffffff
.label_664:
	test	r13d, r13d
	jns	.label_655
	call	__errno_location
	mov	rbx, rax
	mov	r14d, dword ptr [rbx]
	mov	edi, r12d
	call	close
	mov	dword ptr [rbx], r14d
	jmp	.label_655
.label_666:
	lea	rdi, [r15 + 0x60]
	call	i_ring_push
	test	eax, eax
	js	.label_648
	mov	edi, eax
.label_650:
	call	close
.label_648:
	mov	dword ptr [r15 + 0x2c], r12d
	xor	ebp, ebp
.label_655:
	mov	eax, ebp
	add	rsp, 0x98
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_653:
	call	abort
	.section	.text
	.align	16
	#Procedure 0x4072e9
	.globl sub_4072e9
	.type sub_4072e9, @function
sub_4072e9:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x4072f0
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
	#Procedure 0x407303
	.globl sub_407303
	.type sub_407303, @function
sub_407303:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x407310

	.globl rpl_fclose
	.type rpl_fclose, @function
rpl_fclose:
	push	rbp
	push	r14
	push	rbx
	mov	rbx, rdi
	call	fileno
	test	eax, eax
	js	.label_667
	mov	rdi, rbx
	call	__freading
	test	eax, eax
	je	.label_669
	mov	rdi, rbx
	call	fileno
	xor	esi, esi
	mov	edx, 1
	mov	edi, eax
	call	lseek
	cmp	rax, -1
	je	.label_667
.label_669:
	mov	rdi, rbx
	call	rpl_fflush
	test	eax, eax
	je	.label_667
	call	__errno_location
	mov	r14, rax
	mov	ebp, dword ptr [r14]
	mov	rdi, rbx
	call	fclose
	test	ebp, ebp
	je	.label_668
	mov	dword ptr [r14], ebp
	mov	eax, 0xffffffff
.label_668:
	pop	rbx
	pop	r14
	pop	rbp
	ret	
.label_667:
	mov	rdi, rbx
	pop	rbx
	pop	r14
	pop	rbp
	jmp	fclose
	.section	.text
	.align	16
	#Procedure 0x407384
	.globl sub_407384
	.type sub_407384, @function
sub_407384:

	nop	word ptr cs:[rax + rax]
.label_670:
	call	__errno_location
	mov	rbx, rax
	mov	r14d, dword ptr [rbx]
	mov	edi, ebp
	call	close
	mov	dword ptr [rbx], r14d
	xor	ebx, ebx
.label_671:
	mov	rax, rbx
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x4073af
	.globl sub_4073af
	.type sub_4073af, @function
sub_4073af:

	nop	
	.section	.text
	.align	16
	#Procedure 0x4073b0

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
	js	.label_671
	mov	edi, ebp
	call	fdopendir
	mov	rbx, rax
	test	rbx, rbx
	je	.label_670
	mov	dword ptr [r14], ebp
	jmp	.label_671
	.section	.text
	.align	16
	#Procedure 0x4073e0

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
	je	.label_672
	test	r15, r15
	je	.label_673
.label_672:
	mov	rdi, r15
	mov	rsi, r14
	mov	rdx, rbx
	call	memcpy
	mov	rax, r15
	pop	rbx
	pop	r14
	pop	r15
	ret	
.label_673:
	call	xalloc_die
	.section	.text
	.align	16
	#Procedure 0x40741c
	.globl sub_40741c
	.type sub_40741c, @function
sub_40741c:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x407420

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
	je	.label_687
	mov	rsi, qword ptr [r13 + 0x10]
	mov	rdi, r14
	call	qword ptr [r13 + 0x30]
	mov	rbp, rax
	cmp	rbp, qword ptr [r13 + 0x10]
	jae	.label_687
	mov	rbx, qword ptr [r13]
	shl	rbp, 4
	lea	r12, [rbx + rbp]
	mov	rsi, qword ptr [rbx + rbp]
	test	rsi, rsi
	je	.label_674
	cmp	rsi, r14
	je	.label_700
	mov	rdi, r14
	call	qword ptr [r13 + 0x38]
	test	al, al
	je	.label_694
	mov	rax, qword ptr [r12]
.label_699:
	test	rax, rax
	jne	.label_704
	jmp	.label_674
.label_700:
	mov	rax, r14
.label_704:
	xor	ebp, ebp
	test	r15, r15
	je	.label_677
	mov	qword ptr [r15], rax
	jmp	.label_677
.label_694:
	mov	rax, qword ptr [rbx + rbp + 8]
	test	rax, rax
	je	.label_674
	lea	rbp, [rbx + rbp + 8]
	nop	word ptr [rax + rax]
.label_695:
	mov	rsi, qword ptr [rax]
	cmp	rsi, r14
	je	.label_690
	mov	rdi, r14
	call	qword ptr [r13 + 0x38]
	mov	rbp, qword ptr [rbp]
	test	al, al
	jne	.label_693
	mov	rax, qword ptr [rbp + 8]
	add	rbp, 8
	test	rax, rax
	jne	.label_695
.label_674:
	mov	rcx, qword ptr [r13 + 0x10]
	mov	rax, qword ptr [r13 + 0x18]
	mov	edx, eax
	and	edx, 1
	test	rax, rax
	js	.label_696
	cvtsi2ss	xmm1, rax
	jmp	.label_701
.label_696:
	shr	rax, 1
	or	rdx, rax
	cvtsi2ss	xmm1, rdx
	addss	xmm1, xmm1
.label_701:
	mov	rax, qword ptr [r13 + 0x28]
	movss	xmm2, dword ptr [rax + 8]
	mov	edx, ecx
	and	edx, 1
	test	rcx, rcx
	js	.label_675
	cvtsi2ss	xmm0, rcx
	jmp	.label_684
.label_675:
	shr	rcx, 1
	or	rdx, rcx
	cvtsi2ss	xmm0, rdx
	addss	xmm0, xmm0
.label_684:
	movaps	xmm3, xmm2
	mulss	xmm3, xmm0
	ucomiss	xmm1, xmm3
	jbe	.label_678
	mov	ecx, OFFSET FLAT:default_tuning
	cmp	rax, rcx
	je	.label_692
	ucomiss	xmm2, dword ptr [rip + label_641]
	jbe	.label_685
	movss	xmm3, dword ptr [rip + label_644]
	ucomiss	xmm3, xmm2
	jbe	.label_685
	movss	xmm3, dword ptr [rax + 0xc]
	ucomiss	xmm3, dword ptr [rip + label_635]
	jbe	.label_685
	movss	xmm3, dword ptr [rax]
	xorps	xmm4, xmm4
	ucomiss	xmm3, xmm4
	jb	.label_685
	addss	xmm3, dword ptr [rip + label_641]
	ucomiss	xmm2, xmm3
	jbe	.label_685
	movss	xmm4, dword ptr [rax + 4]
	movss	xmm5, dword ptr [rip + label_631]
	ucomiss	xmm5, xmm4
	jb	.label_685
	ucomiss	xmm4, xmm3
	ja	.label_683
.label_685:
	mov	qword ptr [r13 + 40], OFFSET FLAT:default_tuning
	mov	eax, OFFSET FLAT:default_tuning
	movss	xmm2, dword ptr [rip + label_688]
	jmp	.label_683
.label_692:
	mov	eax, OFFSET FLAT:default_tuning
.label_683:
	movaps	xmm3, xmm2
	mulss	xmm3, xmm0
	ucomiss	xmm1, xmm3
	jbe	.label_678
	cmp	byte ptr [rax + 0x10], 0
	mulss	xmm0, dword ptr [rax + 0xc]
	jne	.label_698
	mulss	xmm0, xmm2
.label_698:
	mov	ebp, 0xffffffff
	ucomiss	xmm0, dword ptr [rip + label_276]
	jae	.label_677
	movss	xmm1, dword ptr [rip + label_275]
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
	je	.label_677
	mov	rsi, qword ptr [r13 + 0x10]
	mov	rdi, r14
	call	qword ptr [r13 + 0x30]
	mov	rbp, rax
	cmp	rbp, qword ptr [r13 + 0x10]
	jae	.label_687
	mov	rbx, qword ptr [r13]
	shl	rbp, 4
	lea	r12, [rbx + rbp]
	mov	rsi, qword ptr [rbx + rbp]
	test	rsi, rsi
	je	.label_678
	cmp	rsi, r14
	mov	rax, r14
	je	.label_691
	mov	rdi, r14
	call	qword ptr [r13 + 0x38]
	test	al, al
	je	.label_697
	mov	rax, qword ptr [r12]
.label_691:
	test	rax, rax
	jne	.label_680
.label_678:
	cmp	qword ptr [r12], 0
	je	.label_702
	mov	rax, qword ptr [r13 + 0x48]
	test	rax, rax
	je	.label_703
	mov	rcx, qword ptr [rax + 8]
	mov	qword ptr [r13 + 0x48], rcx
	jmp	.label_676
.label_702:
	mov	qword ptr [r12], r14
	movdqu	xmm0, xmmword ptr [r13 + 0x18]
	paddq	xmm0, xmmword ptr [rip + label_681]
	movdqu	xmmword ptr [r13 + 0x18], xmm0
	jmp	.label_682
.label_703:
	mov	edi, 0x10
	call	malloc
	mov	ebp, 0xffffffff
	test	rax, rax
	je	.label_677
.label_676:
	mov	qword ptr [rax], r14
	mov	rcx, qword ptr [r12 + 8]
	mov	qword ptr [rax + 8], rcx
	mov	qword ptr [r12 + 8], rax
	inc	qword ptr [r13 + 0x20]
.label_682:
	mov	ebp, 1
.label_677:
	mov	eax, ebp
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_690:
	mov	rax, r14
	jmp	.label_699
.label_693:
	mov	rax, qword ptr [rbp]
	jmp	.label_699
.label_697:
	mov	rax, qword ptr [rbx + rbp + 8]
	test	rax, rax
	je	.label_678
	lea	rbp, [rbx + rbp + 8]
.label_689:
	mov	rsi, qword ptr [rax]
	cmp	rsi, r14
	je	.label_679
	mov	rdi, r14
	call	qword ptr [r13 + 0x38]
	mov	rbp, qword ptr [rbp]
	test	al, al
	jne	.label_686
	mov	rax, qword ptr [rbp + 8]
	add	rbp, 8
	test	rax, rax
	jne	.label_689
	jmp	.label_678
.label_679:
	mov	rax, r14
	jmp	.label_691
.label_686:
	mov	rax, qword ptr [rbp]
	jmp	.label_691
.label_687:
	call	abort
.label_680:
	call	abort
	.section	.text
	.align	16
	#Procedure 0x407751
	.globl sub_407751
	.type sub_407751, @function
sub_407751:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x407760
	.globl quotearg_n_custom_mem
	.type quotearg_n_custom_mem, @function
quotearg_n_custom_mem:

	sub	rsp, 0x38
	mov	rax, qword ptr [rip + label_27]
	mov	qword ptr [rsp + 0x30], rax
	movups	xmm0, xmmword ptr [rip + label_28]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0, xmmword ptr [rip + label_29]
	movaps	xmmword ptr [rsp + 0x10], xmm0
	movups	xmm0, xmmword ptr [rip + default_quoting_options]
	movaps	xmmword ptr [rsp], xmm0
	mov	dword ptr [rsp], 0xa
	test	rsi, rsi
	je	.label_705
	test	rdx, rdx
	je	.label_705
	mov	qword ptr [rsp + 0x28], rsi
	mov	qword ptr [rsp + 0x30], rdx
	lea	rax, [rsp]
	mov	rsi, rcx
	mov	rdx, r8
	mov	rcx, rax
	call	quotearg_n_options
	add	rsp, 0x38
	ret	
.label_705:
	call	abort
	.section	.text
	.align	16
	#Procedure 0x4077ca
	.globl sub_4077ca
	.type sub_4077ca, @function
sub_4077ca:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4077d0
	.globl hash_get_n_buckets
	.type hash_get_n_buckets, @function
hash_get_n_buckets:

	mov	rax, qword ptr [rdi + 0x10]
	ret	
	.section	.text
	.align	16
	#Procedure 0x4077d5
	.globl sub_4077d5
	.type sub_4077d5, @function
sub_4077d5:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4077e0

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
	jae	.label_726
	mov	rbp, qword ptr [r15]
	shl	rbx, 4
	mov	rsi, qword ptr [rbp + rbx]
	xor	r12d, r12d
	test	rsi, rsi
	je	.label_709
	lea	r13, [rbp + rbx]
	cmp	rsi, r14
	je	.label_714
	mov	rdi, r14
	call	qword ptr [r15 + 0x38]
	test	al, al
	je	.label_718
	mov	r14, qword ptr [r13]
.label_714:
	mov	rax, qword ptr [rbp + rbx + 8]
	test	rax, rax
	je	.label_723
	movups	xmm0, xmmword ptr [rax]
	movups	xmmword ptr [r13], xmm0
	mov	qword ptr [rax], 0
	mov	rcx, qword ptr [r15 + 0x48]
	mov	qword ptr [rax + 8], rcx
	mov	qword ptr [r15 + 0x48], rax
	jmp	.label_717
.label_718:
	mov	rax, qword ptr [rbp + rbx + 8]
	xor	r12d, r12d
	test	rax, rax
	je	.label_709
	lea	rbx, [rbp + rbx + 8]
	xor	r12d, r12d
	nop	word ptr [rax + rax]
.label_712:
	mov	rsi, qword ptr [rax]
	cmp	rsi, r14
	je	.label_706
	mov	rdi, r14
	call	qword ptr [r15 + 0x38]
	mov	rcx, qword ptr [rbx]
	test	al, al
	jne	.label_710
	mov	rax, qword ptr [rcx + 8]
	add	rcx, 8
	test	rax, rax
	mov	rbx, rcx
	jne	.label_712
	jmp	.label_709
.label_723:
	mov	qword ptr [r13], 0
	jmp	.label_717
.label_706:
	mov	rcx, rax
	jmp	.label_720
.label_710:
	mov	r14, qword ptr [rcx]
.label_720:
	mov	rax, qword ptr [rcx + 8]
	mov	qword ptr [rbx], rax
	mov	qword ptr [rcx], 0
	mov	rax, qword ptr [r15 + 0x48]
	mov	qword ptr [rcx + 8], rax
	mov	qword ptr [r15 + 0x48], rcx
.label_717:
	xor	r12d, r12d
	test	r14, r14
	je	.label_709
	dec	qword ptr [r15 + 0x20]
	cmp	qword ptr [r13], 0
	jne	.label_715
	mov	rax, qword ptr [r15 + 0x18]
	dec	rax
	mov	qword ptr [r15 + 0x18], rax
	mov	ecx, eax
	and	ecx, 1
	test	rax, rax
	js	.label_716
	cvtsi2ss	xmm1, rax
	jmp	.label_708
.label_716:
	shr	rax, 1
	or	rcx, rax
	cvtsi2ss	xmm1, rcx
	addss	xmm1, xmm1
.label_708:
	mov	rcx, qword ptr [r15 + 0x10]
	mov	rax, qword ptr [r15 + 0x28]
	movss	xmm2, dword ptr [rax]
	mov	edx, ecx
	and	edx, 1
	test	rcx, rcx
	js	.label_713
	xorps	xmm0, xmm0
	cvtsi2ss	xmm0, rcx
	jmp	.label_719
.label_713:
	shr	rcx, 1
	or	rdx, rcx
	xorps	xmm0, xmm0
	cvtsi2ss	xmm0, rdx
	addss	xmm0, xmm0
.label_719:
	movaps	xmm3, xmm2
	mulss	xmm3, xmm0
	ucomiss	xmm3, xmm1
	jbe	.label_715
	mov	ecx, OFFSET FLAT:default_tuning
	cmp	rax, rcx
	je	.label_724
	movss	xmm3, dword ptr [rax + 8]
	ucomiss	xmm3, dword ptr [rip + label_641]
	jbe	.label_707
	movss	xmm4, dword ptr [rip + label_644]
	ucomiss	xmm4, xmm3
	jbe	.label_707
	xorps	xmm4, xmm4
	ucomiss	xmm2, xmm4
	jb	.label_707
	movss	xmm4, dword ptr [rax + 0xc]
	ucomiss	xmm4, dword ptr [rip + label_635]
	jbe	.label_707
	movss	xmm4, dword ptr [rip + label_641]
	addss	xmm4, xmm2
	ucomiss	xmm3, xmm4
	jbe	.label_707
	movss	xmm3, dword ptr [rax + 4]
	movss	xmm5, dword ptr [rip + label_631]
	ucomiss	xmm5, xmm3
	jb	.label_707
	ucomiss	xmm3, xmm4
	ja	.label_721
.label_707:
	mov	qword ptr [r15 + 40], OFFSET FLAT:default_tuning
	mov	eax, OFFSET FLAT:default_tuning
	xorps	xmm2, xmm2
	jmp	.label_721
.label_724:
	mov	eax, OFFSET FLAT:default_tuning
.label_721:
	mulss	xmm2, xmm0
	ucomiss	xmm2, xmm1
	jbe	.label_715
	mulss	xmm0, dword ptr [rax + 4]
	cmp	byte ptr [rax + 0x10], 0
	jne	.label_725
	mulss	xmm0, dword ptr [rax + 8]
.label_725:
	movss	xmm1, dword ptr [rip + label_275]
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
	jne	.label_715
	mov	rdi, qword ptr [r15 + 0x48]
	test	rdi, rdi
	je	.label_711
	nop	word ptr cs:[rax + rax]
.label_722:
	mov	rbx, qword ptr [rdi + 8]
	call	free
	test	rbx, rbx
	mov	rdi, rbx
	jne	.label_722
.label_711:
	mov	qword ptr [r15 + 0x48], 0
.label_715:
	mov	r12, r14
.label_709:
	mov	rax, r12
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_726:
	call	abort
	.section	.text
	.align	16
	#Procedure 0x407a73
	.globl sub_407a73
	.type sub_407a73, @function
sub_407a73:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x407a80

	.globl version_etc
	.type version_etc, @function
version_etc:
	sub	rsp, 0xd8
	test	al, al
	je	.label_727
	movaps	xmmword ptr [rsp + 0x50], xmm0
	movaps	xmmword ptr [rsp + 0x60], xmm1
	movaps	xmmword ptr [rsp + 0x70], xmm2
	movaps	xmmword ptr [rsp + 0x80], xmm3
	movaps	xmmword ptr [rsp + 0x90], xmm4
	movaps	xmmword ptr [rsp + 0xa0], xmm5
	movaps	xmmword ptr [rsp + 0xb0], xmm6
	movaps	xmmword ptr [rsp + 0xc0], xmm7
.label_727:
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
	#Procedure 0x407b03
	.globl sub_407b03
	.type sub_407b03, @function
sub_407b03:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x407b10

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
	#Procedure 0x407b33
	.globl sub_407b33
	.type sub_407b33, @function
sub_407b33:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x407b40

	.globl dev_type_compare
	.type dev_type_compare, @function
dev_type_compare:
	mov	rax, qword ptr [rdi]
	cmp	rax, qword ptr [rsi]
	sete	al
	ret	
	.section	.text
	.align	16
	#Procedure 0x407b4a
	.globl sub_407b4a
	.type sub_407b4a, @function
sub_407b4a:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x407b50
	.globl hash_get_max_bucket_length
	.type hash_get_max_bucket_length, @function
hash_get_max_bucket_length:

	mov	rcx, qword ptr [rdi]
	mov	rdi, qword ptr [rdi + 8]
	xor	eax, eax
	cmp	rcx, rdi
	jae	.label_733
	mov	rax, rcx
	not	rax
	add	rdi, rax
	shr	rdi, 4
	lea	rsi, [rdi + 1]
	mov	r8d, esi
	and	r8d, 1
	xor	eax, eax
	test	rdi, rdi
	je	.label_729
	sub	rsi, r8
	xor	eax, eax
	nop	word ptr cs:[rax + rax]
.label_735:
	cmp	qword ptr [rcx], 0
	je	.label_732
	xor	edi, edi
	mov	rdx, rcx
	nop	dword ptr [rax + rax]
.label_728:
	mov	rdx, qword ptr [rdx + 8]
	inc	rdi
	test	rdx, rdx
	jne	.label_728
	cmp	rdi, rax
	cmova	rax, rdi
.label_732:
	cmp	qword ptr [rcx + 0x10], 0
	je	.label_734
	lea	rdx, [rcx + 0x10]
	xor	edi, edi
.label_730:
	mov	rdx, qword ptr [rdx + 8]
	inc	rdi
	test	rdx, rdx
	jne	.label_730
	cmp	rdi, rax
	cmova	rax, rdi
.label_734:
	add	rcx, 0x20
	add	rsi, -2
	jne	.label_735
.label_729:
	test	r8, r8
	je	.label_733
	cmp	qword ptr [rcx], 0
	je	.label_733
	xor	edx, edx
	nop	word ptr [rax + rax]
.label_731:
	mov	rcx, qword ptr [rcx + 8]
	inc	rdx
	test	rcx, rcx
	jne	.label_731
	cmp	rdx, rax
	cmova	rax, rdx
.label_733:
	ret	
	.section	.text
	.align	16
	#Procedure 0x407c04
	.globl sub_407c04
	.type sub_407c04, @function
sub_407c04:

	nop	word ptr cs:[rax + rax]
.label_736:
	call	abort
	.section	.text
	.align	16
	#Procedure 0x407c15
	.globl sub_407c15
	.type sub_407c15, @function
sub_407c15:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x407c19
	.globl quotearg_custom_mem
	.type quotearg_custom_mem, @function
quotearg_custom_mem:

	sub	rsp, 0x38
	mov	rax, qword ptr [rip + label_27]
	mov	qword ptr [rsp + 0x30], rax
	movups	xmm0, xmmword ptr [rip + label_28]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0, xmmword ptr [rip + label_29]
	movaps	xmmword ptr [rsp + 0x10], xmm0
	movups	xmm0, xmmword ptr [rip + default_quoting_options]
	movaps	xmmword ptr [rsp], xmm0
	mov	dword ptr [rsp], 0xa
	test	rdi, rdi
	je	.label_736
	test	rsi, rsi
	je	.label_736
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
	.align	16
	#Procedure 0x407c80

	.globl hash_free
	.type hash_free, @function
hash_free:
	push	r15
	push	r14
	push	rbx
	mov	r14, rdi
	cmp	qword ptr [r14 + 0x40], 0
	je	.label_737
	cmp	qword ptr [r14 + 0x20], 0
	je	.label_737
	mov	r15, qword ptr [r14]
	mov	rax, qword ptr [r14 + 8]
	jmp	.label_743
	.section	.text
	.align	16
	#Procedure 0x407c9f
	.globl sub_407c9f
	.type sub_407c9f, @function
sub_407c9f:

	nop	
.label_737:
	mov	r15, qword ptr [r14]
	mov	rax, qword ptr [r14 + 8]
	jmp	.label_746
	.section	.text
	.align	16
	#Procedure 0x407ca9
	.globl sub_407ca9
	.type sub_407ca9, @function
sub_407ca9:

	nop	
.label_744:
	add	r15, 0x10
.label_743:
	cmp	r15, rax
	jae	.label_737
	mov	rdi, qword ptr [r15]
	test	rdi, rdi
	je	.label_744
	test	r15, r15
	je	.label_744
	call	qword ptr [r14 + 0x40]
	mov	rbx, qword ptr [r15 + 8]
	jmp	.label_740
.label_742:
	mov	rdi, qword ptr [rbx]
	call	qword ptr [r14 + 0x40]
	mov	rbx, qword ptr [rbx + 8]
.label_740:
	test	rbx, rbx
	jne	.label_742
	mov	rax, qword ptr [r14 + 8]
	jmp	.label_744
.label_745:
	mov	rdi, qword ptr [r14 + 0x48]
	test	rdi, rdi
	je	.label_738
.label_747:
	mov	rbx, qword ptr [rdi + 8]
	call	free
	test	rbx, rbx
	mov	rdi, rbx
	jne	.label_747
.label_738:
	mov	rdi, qword ptr [r14]
	call	free
	mov	rdi, r14
	pop	rbx
	pop	r14
	pop	r15
	jmp	free
	.section	.text
	.align	16
	#Procedure 0x407d0f
	.globl sub_407d0f
	.type sub_407d0f, @function
sub_407d0f:

	nop	word ptr cs:[rax + rax]
.label_741:
	add	r15, 0x10
.label_746:
	cmp	r15, rax
	jae	.label_745
	mov	rdi, qword ptr [r15 + 8]
	test	rdi, rdi
	je	.label_741
	nop	word ptr cs:[rax + rax]
.label_739:
	mov	rbx, qword ptr [rdi + 8]
	call	free
	test	rbx, rbx
	mov	rdi, rbx
	jne	.label_739
	mov	rax, qword ptr [r14 + 8]
	jmp	.label_741
	.section	.text
	.align	16
	#Procedure 0x407d50
	.globl x2nrealloc
	.type x2nrealloc, @function
x2nrealloc:

	push	rbx
	mov	rbx, rdx
	mov	rcx, qword ptr [rsi]
	test	rdi, rdi
	je	.label_752
	movabs	rax, 0x5555555555555554
	xor	edx, edx
	div	rbx
	cmp	rax, rcx
	jbe	.label_751
	mov	rax, rcx
	shr	rax, 1
	lea	rcx, [rcx + rax + 1]
	jmp	.label_748
.label_750:
	mov	rsi, rbx
	call	realloc
	test	rbx, rbx
	je	.label_749
	test	rax, rax
	je	.label_751
.label_749:
	pop	rbx
	ret	
.label_751:
	call	xalloc_die
.label_752:
	test	rcx, rcx
	jne	.label_754
	mov	eax, 0x80
	xor	edx, edx
	div	rbx
	xor	ecx, ecx
	cmp	rbx, 0x80
	seta	cl
	add	rcx, rax
.label_754:
	movabs	rax, 0x7fffffffffffffff
	xor	edx, edx
	div	rbx
	cmp	rax, rcx
	jb	.label_753
.label_748:
	mov	qword ptr [rsi], rcx
	imul	rbx, rcx
	test	rdi, rdi
	je	.label_750
	test	rbx, rbx
	jne	.label_750
	call	free
	xor	eax, eax
	pop	rbx
	ret	
.label_753:
	call	xalloc_die
	.section	.text
	.align	16
	#Procedure 0x407de7
	.globl sub_407de7
	.type sub_407de7, @function
sub_407de7:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x407df0

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
	je	.label_755
	test	ecx, ecx
	cmove	rbx, qword ptr [rsp + 8]
	mov	rax, rbx
.label_755:
	add	rsp, 0x10
	pop	rbx
	ret	
	.section	.text
	.align	16
	#Procedure 0x407e1c
	.globl sub_407e1c
	.type sub_407e1c, @function
sub_407e1c:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x407e20

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
	jne	.label_761
	call	locale_charset
	movsx	ecx, byte ptr [rax]
	and	ecx, 0xffffffdf
	cmp	ecx, 0x47
	je	.label_757
	cmp	ecx, 0x55
	jne	.label_756
	movsx	ecx, byte ptr [rax + 1]
	and	ecx, 0xffffffdf
	cmp	ecx, 0x54
	jne	.label_756
	movsx	ecx, byte ptr [rax + 2]
	and	ecx, 0xffffffdf
	cmp	ecx, 0x46
	jne	.label_756
	cmp	byte ptr [rax + 3], 0x2d
	jne	.label_756
	cmp	byte ptr [rax + 4], 0x38
	jne	.label_756
	cmp	byte ptr [rax + 5], 0
	jne	.label_756
	cmp	byte ptr [rbx], 0x60
	mov	ecx, OFFSET FLAT:label_763
	mov	eax, OFFSET FLAT:label_764
	jmp	.label_760
.label_757:
	movsx	ecx, byte ptr [rax + 1]
	and	ecx, 0xffffffdf
	cmp	ecx, 0x42
	jne	.label_756
	cmp	byte ptr [rax + 2], 0x31
	jne	.label_756
	cmp	byte ptr [rax + 3], 0x38
	jne	.label_756
	cmp	byte ptr [rax + 4], 0x30
	jne	.label_756
	cmp	byte ptr [rax + 5], 0x33
	jne	.label_756
	cmp	byte ptr [rax + 6], 0x30
	jne	.label_756
	cmp	byte ptr [rax + 7], 0
	je	.label_762
.label_756:
	cmp	ebp, 9
	mov	ecx, OFFSET FLAT:label_73
	mov	eax, OFFSET FLAT:label_60
.label_760:
	cmove	rax, rcx
.label_761:
	add	rsp, 8
	pop	rbx
	pop	rbp
	ret	
.label_762:
	cmp	byte ptr [rbx], 0x60
	mov	ecx, OFFSET FLAT:label_758
	mov	eax, OFFSET FLAT:label_759
	jmp	.label_760
	.section	.text
	.align	16
	#Procedure 0x407ee5
	.globl sub_407ee5
	.type sub_407ee5, @function
sub_407ee5:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x407ef0

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
	#Procedure 0x407f00
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
	je	.label_765
	mov	qword ptr [rax], rbx
.label_765:
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
	#Procedure 0x407fec
	.globl sub_407fec
	.type sub_407fec, @function
sub_407fec:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x407ff0

	.globl hard_locale
	.type hard_locale, @function
hard_locale:
	push	rbx
	xor	esi, esi
	call	setlocale
	mov	bl, 1
	test	rax, rax
	je	.label_767
	cmp	byte ptr [rax], 0x43
	jne	.label_769
	cmp	byte ptr [rax + 1], 0
	je	.label_766
.label_769:
	mov	esi, OFFSET FLAT:label_768
	mov	rdi, rax
	call	strcmp
	test	eax, eax
	jne	.label_767
.label_766:
	xor	ebx, ebx
.label_767:
	mov	eax, ebx
	pop	rbx
	ret	
	.section	.text
	.align	16
	#Procedure 0x408021
	.globl sub_408021
	.type sub_408021, @function
sub_408021:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x408030

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
	je	.label_773
	mov	rbp, qword ptr [rbx + 0x50]
	test	rbp, rbp
	jne	.label_774
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
	je	.label_775
.label_774:
	mov	rax, qword ptr [r13 + 0x78]
	mov	qword ptr [rsp], rax
	lea	rsi, [rsp]
	mov	rdi, rbp
	call	hash_lookup
	test	rax, rax
	je	.label_771
	mov	rax, qword ptr [rax + 8]
	jmp	.label_773
.label_771:
	mov	r12b, 1
	mov	r14, rbp
.label_775:
	xor	eax, eax
	test	r15d, r15d
	js	.label_773
	lea	rsi, [rsp]
	mov	edi, r15d
	call	fstatfs
	mov	ecx, eax
	xor	eax, eax
	test	ecx, ecx
	jne	.label_773
	test	r12b, r12b
	je	.label_772
	mov	edi, 0x10
	call	malloc
	mov	rbp, rax
	test	rbp, rbp
	je	.label_772
	mov	rax, qword ptr [r13 + 0x78]
	mov	qword ptr [rbp], rax
	mov	rax, qword ptr [rsp]
	mov	qword ptr [rbp + 8], rax
	mov	rdi, r14
	mov	rsi, rbp
	call	hash_insert
	test	rax, rax
	je	.label_770
	cmp	rax, rbp
	je	.label_772
	call	abort
.label_770:
	mov	rdi, rbp
	call	free
.label_772:
	mov	rax, qword ptr [rsp]
.label_773:
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
	#Procedure 0x40812a
	.globl sub_40812a
	.type sub_40812a, @function
sub_40812a:

	nop	word ptr [rax + rax]
.label_777:
	mov	edi, ebx
	lea	rsi, [rsp]
	call	umaxtostr
	mov	rdi, rax
.label_776:
	call	xstrdup
	add	rsp, 0x20
	pop	rbx
	ret	
	.section	.text
	.align	16
	#Procedure 0x408149
	.globl sub_408149
	.type sub_408149, @function
sub_408149:

	nop	
	.section	.text
	.align	16
	#Procedure 0x40814a

	.globl uid_to_name
	.type uid_to_name, @function
uid_to_name:
	push	rbx
	sub	rsp, 0x20
	mov	ebx, edi
	call	getpwuid
	test	rax, rax
	je	.label_777
	mov	rdi, qword ptr [rax]
	jmp	.label_776
	.section	.text
	.align	16
	#Procedure 0x408160
	.globl hash_reset_tuning
	.type hash_reset_tuning, @function
hash_reset_tuning:

	mov	eax, dword ptr [rip + label_778]
	mov	dword ptr [rdi + 0x10], eax
	movups	xmm0, xmmword ptr [rip + default_tuning]
	movups	xmmword ptr [rdi], xmm0
	ret	
	.section	.text
	.align	16
	#Procedure 0x408174
	.globl sub_408174
	.type sub_408174, @function
sub_408174:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x408180

	.globl fts_build
	.type fts_build, @function
fts_build:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0xa8
	mov	r14d, esi
	mov	r15, rdi
	mov	rbp, qword ptr [r15]
	mov	rbx, qword ptr [rbp + 0x18]
	test	rbx, rbx
	mov	qword ptr [rsp + 0x10], r15
	je	.label_838
	mov	rdi, rbx
	call	dirfd
	mov	dword ptr [rsp + 8], eax
	test	eax, eax
	js	.label_844
	mov	qword ptr [rsp + 0x68], rbx
	lea	rax, [r15 + 0x40]
	mov	qword ptr [rsp + 0x40], rax
	cmp	qword ptr [r15 + 0x40], 1
	sbb	rax, rax
	not	rax
	or	rax, 0x186a0
	mov	qword ptr [rsp + 0x70], rax
	lea	r12, [r15 + 0x48]
	mov	al, 1
	mov	dword ptr [rsp + 0xc], eax
	jmp	.label_779
.label_838:
	mov	eax, dword ptr [r15 + 0x48]
	mov	ecx, eax
	and	ecx, 0x204
	mov	edi, 0xffffff9c
	cmp	ecx, 0x200
	jne	.label_855
	mov	edi, dword ptr [r15 + 0x2c]
.label_855:
	mov	rsi, qword ptr [rbp + 0x30]
	xor	edx, edx
	test	al, 0x10
	je	.label_782
	test	al, 1
	je	.label_784
	cmp	qword ptr [rbp + 0x58], 0
	je	.label_782
.label_784:
	mov	edx, 0x20000
.label_782:
	lea	rcx, [rsp + 8]
	call	opendirat
	mov	qword ptr [rbp + 0x18], rax
	test	rax, rax
	je	.label_786
	mov	qword ptr [rsp + 0x68], rbx
	lea	r12, [r15 + 0x48]
	movzx	eax, word ptr [rbp + 0x70]
	cmp	eax, 0xb
	jne	.label_788
	xor	edx, edx
	mov	rdi, r15
	mov	rsi, rbp
	call	fts_stat
	mov	word ptr [rbp + 0x70], ax
	jmp	.label_794
.label_844:
	mov	rdi, qword ptr [rbp + 0x18]
	call	closedir
	mov	qword ptr [rbp + 0x18], 0
.label_786:
	xor	ebx, ebx
	cmp	r14d, 3
	jne	.label_780
	mov	word ptr [rbp + 0x70], 4
	call	__errno_location
	mov	eax, dword ptr [rax]
	mov	dword ptr [rbp + 0x40], eax
	jmp	.label_799
.label_788:
	test	byte ptr [r12 + 1], 1
	je	.label_794
	mov	rdi, r15
	mov	rsi, rbp
	call	leave_dir
	xor	edx, edx
	mov	rdi, r15
	mov	rsi, rbp
	call	fts_stat
	mov	rdi, r15
	mov	rsi, rbp
	call	enter_dir
	test	al, al
	je	.label_806
.label_794:
	lea	rax, [r15 + 0x40]
	mov	qword ptr [rsp + 0x40], rax
	cmp	qword ptr [r15 + 0x40], 1
	sbb	rax, rax
	not	rax
	or	rax, 0x186a0
	mov	qword ptr [rsp + 0x70], rax
	cmp	r14d, 2
	je	.label_807
	mov	eax, dword ptr [r12]
	and	eax, 0x38
	cmp	eax, 0x18
	jne	.label_790
	cmp	qword ptr [rbp + 0x88], 2
	jne	.label_790
	mov	esi, dword ptr [rsp + 8]
	mov	rdi, rbp
	call	filesystem_type
	cmp	rax, 0x9f9f
	jle	.label_817
	cmp	rax, 0x9fa0
	je	.label_790
	mov	ecx, 0xff534d42
	cmp	rax, rcx
	je	.label_790
	cmp	rax, 0x5346414f
	je	.label_790
	jmp	.label_807
.label_806:
	call	__errno_location
	mov	dword ptr [rax], 0xc
	jmp	.label_799
.label_817:
	test	rax, rax
	je	.label_790
	cmp	rax, 0x6969
	jne	.label_807
.label_790:
	mov	rax, rbp
	mov	r13d, r14d
	cmp	r14d, 3
	sete	bpl
	mov	r14b, 1
	jmp	.label_828
.label_807:
	mov	rax, rbp
	mov	r13d, r14d
	cmp	r14d, 3
	sete	bpl
	mov	r14d, 0
	jne	.label_831
.label_828:
	mov	r15, rax
	test	byte ptr [r12 + 1], 2
	mov	ebx, dword ptr [rsp + 8]
	je	.label_835
	mov	esi, 0x406
	mov	edx, 3
	xor	eax, eax
	mov	edi, ebx
	call	rpl_fcntl
	mov	ebx, eax
	mov	dword ptr [rsp + 8], ebx
.label_835:
	test	ebx, ebx
	js	.label_839
	xor	ecx, ecx
	mov	rdi, qword ptr [rsp + 0x10]
	mov	rsi, r15
	mov	edx, ebx
	call	fts_safe_changedir
	test	eax, eax
	je	.label_845
.label_839:
	and	bpl, r14b
	cmp	bpl, 1
	jne	.label_847
	call	__errno_location
	mov	eax, dword ptr [rax]
	mov	dword ptr [r15 + 0x40], eax
.label_847:
	or	byte ptr [r15 + 0x72], 1
	mov	rdi, qword ptr [r15 + 0x18]
	call	closedir
	mov	rbx, r15
	mov	qword ptr [r15 + 0x18], 0
	mov	eax, dword ptr [r12]
	test	ah, 2
	mov	r15, qword ptr [rsp + 0x10]
	mov	r14d, r13d
	je	.label_846
	mov	edi, dword ptr [rsp + 8]
	test	edi, edi
	js	.label_846
	call	close
.label_846:
	mov	rbp, rbx
	mov	qword ptr [rbp + 0x18], 0
	mov	dword ptr [rsp + 0xc], 0
	jmp	.label_779
.label_831:
	mov	dword ptr [rsp + 0xc], 0
	jmp	.label_783
.label_845:
	mov	al, 1
	mov	dword ptr [rsp + 0xc], eax
	mov	rax, r15
	mov	r15, qword ptr [rsp + 0x10]
.label_783:
	mov	r14d, r13d
	mov	rbp, rax
.label_779:
	mov	dword ptr [rsp + 0x54], r14d
	mov	rax, qword ptr [rbp + 0x38]
	mov	rcx, qword ptr [rbp + 0x48]
	lea	rdx, [rcx - 1]
	cmp	byte ptr [rax + rcx - 1], 0x2f
	cmovne	rdx, rcx
	xor	eax, eax
	mov	qword ptr [rsp + 0x48], rax
	test	byte ptr [r12], 4
	je	.label_787
	mov	rax, qword ptr [r15 + 0x20]
	lea	rcx, [rax + rdx + 1]
	mov	qword ptr [rsp + 0x48], rcx
	mov	byte ptr [rax + rdx], 0x2f
.label_787:
	lea	rax, [rdx + 1]
	mov	qword ptr [rsp + 0x58], rax
	mov	rcx, qword ptr [r15 + 0x30]
	sub	rcx, rax
	mov	qword ptr [rsp + 0x88], rcx
	mov	rax, qword ptr [rbp + 0x58]
	inc	rax
	mov	qword ptr [rsp + 0x98], rax
	add	rdx, 0x102
	mov	qword ptr [rsp + 0x90], rdx
	xor	eax, eax
	mov	qword ptr [rsp + 0x60], rax
	xor	eax, eax
	mov	qword ptr [rsp + 0x78], rax
	mov	dword ptr [rsp + 0x1c], 0
	xor	eax, eax
	xor	ebx, ebx
	xor	r14d, r14d
	mov	qword ptr [rsp + 0x38], rbp
	mov	qword ptr [rsp + 0x30], r12
.label_812:
	mov	qword ptr [rsp + 0x28], rbx
	mov	rbx, qword ptr [rbp + 0x18]
	test	rbx, rbx
	je	.label_827
	mov	qword ptr [rsp + 0xa0], rax
	mov	qword ptr [rsp + 0x20], r14
	nop	dword ptr [rax]
.label_843:
	call	__errno_location
	mov	r15, rax
	mov	dword ptr [r15], 0
	mov	rdi, rbx
	call	readdir
	mov	r14, rax
	test	r14, r14
	je	.label_818
	mov	r13, r14
	add	r13, 0x13
	test	byte ptr [r12], 0x20
	jne	.label_820
	cmp	byte ptr [r13], 0x2e
	jne	.label_820
	movzx	eax, byte ptr [r14 + 0x14]
	cmp	al, 0x2e
	je	.label_815
	test	al, al
	je	.label_825
	jmp	.label_820
	.section	.text
	.align	16
	#Procedure 0x408537
	.globl sub_408537
	.type sub_408537, @function
sub_408537:

	nop	word ptr [rax + rax]
.label_815:
	cmp	byte ptr [r14 + 0x15], 0
	jne	.label_820
.label_825:
	mov	rbx, qword ptr [rbp + 0x18]
	test	rbx, rbx
	jne	.label_843
	jmp	.label_854
	.section	.text
	.align	16
	#Procedure 0x408555
	.globl sub_408555
	.type sub_408555, @function
sub_408555:

	nop	word ptr cs:[rax + rax]
.label_820:
	mov	rdi, r13
	call	strlen
	mov	rbx, rax
	lea	rdi, [rbx + 0x110]
	and	rdi, 0xfffffffffffffff8
	call	malloc
	mov	r12, rax
	test	r12, r12
	je	.label_813
	mov	rdi, r12
	add	rdi, 0x108
	mov	qword ptr [rsp + 0x80], rdi
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
	cmp	rbx, qword ptr [rsp + 0x88]
	jae	.label_842
	mov	rbp, qword ptr [rsp + 0x38]
	mov	rax, qword ptr [rsp + 0x58]
	jmp	.label_856
	.section	.text
	.align	16
	#Procedure 0x408609
	.globl sub_408609
	.type sub_408609, @function
sub_408609:

	nop	dword ptr [rax]
.label_842:
	mov	rax, qword ptr [rsp + 0x90]
	lea	rsi, [rax + rbx]
	add	rsi, qword ptr [rbp + 0x30]
	jb	.label_796
	mov	qword ptr [rbp + 0x30], rsi
	mov	rdi, r13
	call	realloc
	test	rax, rax
	je	.label_824
	mov	qword ptr [rbp + 0x20], rax
	cmp	r13, rax
	je	.label_789
	mov	rdx, qword ptr [rsp + 0x58]
	add	rax, rdx
	mov	rcx, qword ptr [rsp + 0x30]
	test	byte ptr [rcx], 4
	mov	rcx, qword ptr [rsp + 0x48]
	cmovne	rcx, rax
	mov	qword ptr [rsp + 0x48], rcx
	mov	al, 1
	mov	qword ptr [rsp + 0x78], rax
	mov	rbp, qword ptr [rsp + 0x38]
	jmp	.label_792
.label_789:
	mov	rbp, qword ptr [rsp + 0x38]
	mov	rdx, qword ptr [rsp + 0x58]
.label_792:
	mov	rax, qword ptr [rsp + 0x10]
	mov	rax, qword ptr [rax + 0x30]
	sub	rax, rdx
	mov	qword ptr [rsp + 0x88], rax
	mov	rax, rdx
.label_856:
	add	rbx, rax
	jb	.label_801
	mov	rax, qword ptr [rsp + 0x98]
	mov	qword ptr [r12 + 0x58], rax
	mov	r15, qword ptr [rsp + 0x10]
	mov	rax, qword ptr [r15]
	mov	qword ptr [r12 + 8], rax
	mov	qword ptr [r12 + 0x48], rbx
	mov	rax, qword ptr [r14]
	mov	qword ptr [r12 + 0x80], rax
	mov	rax, qword ptr [rsp + 0x30]
	test	byte ptr [rax], 4
	jne	.label_840
	mov	rax, qword ptr [rsp + 0x80]
	mov	qword ptr [r12 + 0x30], rax
	jmp	.label_810
	.section	.text
	.align	16
	#Procedure 0x4086dd
	.globl sub_4086dd
	.type sub_4086dd, @function
sub_4086dd:

	nop	dword ptr [rax]
.label_840:
	mov	rax, qword ptr [r12 + 0x38]
	mov	qword ptr [r12 + 0x30], rax
	mov	rdx, qword ptr [r12 + 0x60]
	inc	rdx
	mov	rdi, qword ptr [rsp + 0x48]
	mov	rsi, qword ptr [rsp + 0x80]
	call	memmove
.label_810:
	mov	rbx, qword ptr [rsp + 0x28]
	mov	rax, qword ptr [rsp + 0x30]
	mov	edx, dword ptr [rax]
	mov	rax, qword ptr [rsp + 0x40]
	cmp	qword ptr [rax], 0
	je	.label_803
	mov	eax, edx
	and	eax, 0x400
	jne	.label_803
	xor	edx, edx
	mov	rdi, r15
	mov	rsi, r12
	call	fts_stat
	mov	word ptr [r12 + 0x70], ax
	mov	rsi, qword ptr [rsp + 0x20]
	jmp	.label_823
	.section	.text
	.align	16
	#Procedure 0x40873e
	.globl sub_40873e
	.type sub_40873e, @function
sub_40873e:

	nop	
.label_803:
	and	edx, 0x18
	movzx	ecx, byte ptr [r14 + 0x12]
	xor	eax, eax
	cmp	edx, 0x18
	mov	edx, 0
	jne	.label_849
	cmp	cl, 4
	setne	bl
	test	cl, cl
	setne	dl
	and	dl, bl
	mov	rbx, qword ptr [rsp + 0x28]
.label_849:
	mov	word ptr [r12 + 0x70], 0xb
	lea	esi, [rcx - 1]
	cmp	esi, 0xb
	mov	rsi, qword ptr [rsp + 0x20]
	ja	.label_834
	mov	eax, dword ptr [(rcx * 4) + label_853]
.label_834:
	mov	dword ptr [r12 + 0x90], eax
	cmp	dl, 1
	mov	eax, 1
	adc	rax, 0
	mov	qword ptr [r12 + 0xa8], rax
.label_823:
	mov	qword ptr [r12 + 0x10], 0
	test	rsi, rsi
	mov	rax, r12
	je	.label_809
	mov	rax, qword ptr [rsp + 0xa0]
	mov	qword ptr [rax + 0x10], r12
	mov	rax, rsi
.label_809:
	mov	r14, rax
	cmp	rbx, 0x2710
	jne	.label_797
	mov	rax, qword ptr [rsp + 0x40]
	cmp	qword ptr [rax], 0
	jne	.label_797
	mov	esi, dword ptr [rsp + 8]
	mov	rdi, rbp
	call	filesystem_type
	mov	dword ptr [rsp + 0x1c], 0
	cmp	rax, 0x6969
	je	.label_797
	cmp	rax, 0x1021994
	je	.label_797
	mov	ecx, 0xff534d42
	cmp	rax, rcx
	je	.label_797
	mov	al, 1
	mov	dword ptr [rsp + 0x1c], eax
	nop	dword ptr [rax]
.label_797:
	inc	rbx
	cmp	qword ptr [rsp + 0x70], rbx
	mov	rax, r12
	mov	r12, qword ptr [rsp + 0x30]
	ja	.label_812
	jmp	.label_793
.label_818:
	mov	eax, dword ptr [r15]
	test	eax, eax
	mov	rbx, qword ptr [rsp + 0x28]
	je	.label_785
	mov	dword ptr [rbp + 0x40], eax
	mov	rax, qword ptr [rsp + 0x68]
	or	rax, rbx
	mov	ax, 7
	mov	cx, 4
	cmovne	cx, ax
	mov	word ptr [rbp + 0x70], cx
.label_785:
	mov	rdi, qword ptr [rbp + 0x18]
	test	rdi, rdi
	mov	r15, qword ptr [rsp + 0x10]
	mov	r14, qword ptr [rsp + 0x20]
	je	.label_793
	call	closedir
	mov	qword ptr [rbp + 0x18], 0
	jmp	.label_793
.label_854:
	mov	r15, qword ptr [rsp + 0x10]
	mov	r14, qword ptr [rsp + 0x20]
.label_827:
	mov	rbx, qword ptr [rsp + 0x28]
.label_793:
	mov	rax, qword ptr [rsp + 0x78]
	test	al, 1
	je	.label_798
	mov	rcx, qword ptr [r15 + 8]
	mov	rax, qword ptr [r15 + 0x20]
	jmp	.label_800
	.section	.text
	.align	16
	#Procedure 0x408897
	.globl sub_408897
	.type sub_408897, @function
sub_408897:

	nop	word ptr [rax + rax]
.label_805:
	mov	qword ptr [rcx + 0x38], rax
	mov	rcx, qword ptr [rcx + 0x10]
.label_800:
	test	rcx, rcx
	je	.label_804
	mov	rdx, qword ptr [rcx + 0x30]
	lea	rsi, [rcx + 0x108]
	cmp	rdx, rsi
	je	.label_805
	sub	rdx, qword ptr [rcx + 0x38]
	add	rdx, rax
	mov	qword ptr [rcx + 0x30], rdx
	jmp	.label_805
.label_804:
	cmp	qword ptr [r14 + 0x58], 0
	js	.label_798
	mov	rcx, r14
	nop	word ptr cs:[rax + rax]
.label_819:
	mov	rdx, qword ptr [rcx + 0x30]
	lea	rsi, [rcx + 0x108]
	cmp	rdx, rsi
	je	.label_814
	sub	rdx, qword ptr [rcx + 0x38]
	add	rdx, rax
	mov	qword ptr [rcx + 0x30], rdx
.label_814:
	mov	qword ptr [rcx + 0x38], rax
	mov	rdx, qword ptr [rcx + 0x10]
	test	rdx, rdx
	jne	.label_816
	mov	rdx, qword ptr [rcx + 8]
.label_816:
	cmp	qword ptr [rdx + 0x58], 0
	mov	rcx, rdx
	jns	.label_819
.label_798:
	test	byte ptr [r12], 4
	je	.label_822
	mov	rax, qword ptr [rsp + 0x48]
	mov	rcx, rax
	lea	rax, [rcx - 1]
	mov	rdx, qword ptr [rsp + 0x58]
	cmp	rdx, qword ptr [r15 + 0x30]
	cmove	rcx, rax
	test	rbx, rbx
	cmove	rcx, rax
	mov	byte ptr [rcx], 0
.label_822:
	cmp	qword ptr [rsp + 0x68], 0
	mov	eax, dword ptr [rsp + 0xc]
	jne	.label_826
	test	al, al
	je	.label_826
	cmp	dword ptr [rsp + 0x54], 1
	je	.label_829
	test	rbx, rbx
	jne	.label_826
.label_829:
	cmp	qword ptr [rbp + 0x58], 0
	je	.label_832
	mov	rsi, qword ptr [rbp + 8]
	mov	edx, 0xffffffff
	mov	ecx, OFFSET FLAT:label_547
	mov	rdi, r15
	call	fts_safe_changedir
	jmp	.label_836
.label_832:
	mov	rdi, r15
	call	restore_initial_cwd
.label_836:
	test	eax, eax
	je	.label_826
	mov	word ptr [rbp + 0x70], 7
	or	byte ptr [r12 + 1], 0x20
	xor	ebx, ebx
	test	r14, r14
	je	.label_780
	xor	ebx, ebx
.label_848:
	mov	rbp, qword ptr [r14 + 0x10]
	mov	rdi, qword ptr [r14 + 0x18]
	test	rdi, rdi
	je	.label_841
	call	closedir
.label_841:
	mov	rdi, r14
	call	free
	test	rbp, rbp
	mov	r14, rbp
	jne	.label_848
	jmp	.label_780
.label_826:
	test	rbx, rbx
	je	.label_850
	mov	eax, dword ptr [rsp + 0x1c]
	test	al, 1
	jne	.label_851
	cmp	rbx, 2
	jb	.label_852
	mov	rax, qword ptr [rsp + 0x40]
	mov	rax, qword ptr [rax]
	test	rax, rax
	je	.label_852
	mov	rdi, r15
	mov	rsi, r14
	mov	rdx, rbx
	call	fts_sort
	mov	rbx, rax
	jmp	.label_780
.label_850:
	cmp	dword ptr [rsp + 0x54], 3
	jne	.label_781
	movzx	eax, word ptr [rbp + 0x70]
	cmp	eax, 4
	je	.label_781
	movzx	eax, ax
	cmp	eax, 7
	je	.label_781
	mov	word ptr [rbp + 0x70], 6
.label_781:
	xor	ebx, ebx
	test	r14, r14
	je	.label_780
	xor	ebx, ebx
	nop	word ptr cs:[rax + rax]
.label_795:
	mov	rbp, qword ptr [r14 + 0x10]
	mov	rdi, qword ptr [r14 + 0x18]
	test	rdi, rdi
	je	.label_791
	call	closedir
.label_791:
	mov	rdi, r14
	call	free
	test	rbp, rbp
	mov	r14, rbp
	jne	.label_795
	jmp	.label_780
.label_851:
	mov	rbp, qword ptr [rsp + 0x40]
	mov	qword ptr [rbp], OFFSET FLAT:fts_compare_ino
	mov	rdi, r15
	mov	rsi, r14
	mov	rdx, rbx
	call	fts_sort
	mov	rbx, rax
	mov	qword ptr [rbp], 0
	jmp	.label_780
.label_852:
	mov	rbx, r14
	jmp	.label_780
.label_801:
	mov	rdi, r12
	call	free
	mov	rax, qword ptr [rsp + 0x20]
	test	rax, rax
	mov	r14, qword ptr [rsp + 0x30]
	je	.label_802
	nop	word ptr cs:[rax + rax]
.label_811:
	mov	rbx, qword ptr [rax + 0x10]
	mov	r12, rax
	mov	rdi, qword ptr [rax + 0x18]
	test	rdi, rdi
	je	.label_808
	call	closedir
.label_808:
	mov	rdi, r12
	call	free
	test	rbx, rbx
	mov	rax, rbx
	jne	.label_811
.label_802:
	mov	rdi, qword ptr [rbp + 0x18]
	call	closedir
	mov	qword ptr [rbp + 0x18], 0
	mov	word ptr [rbp + 0x70], 7
	or	byte ptr [r14 + 1], 0x20
	mov	dword ptr [r15], 0x24
	jmp	.label_799
.label_796:
	mov	rdi, r13
	call	free
	mov	qword ptr [rbp + 0x20], 0
	mov	dword ptr [r15], 0x24
	jmp	.label_821
.label_824:
	mov	rdi, qword ptr [rbp + 0x20]
	call	free
	mov	qword ptr [rbp + 0x20], 0
.label_821:
	mov	qword ptr [rsp + 0x60], r12
	mov	rbp, qword ptr [rsp + 0x38]
.label_813:
	mov	r13, rbp
	mov	r14d, dword ptr [r15]
	mov	rdi, qword ptr [rsp + 0x60]
	call	free
	mov	rax, qword ptr [rsp + 0x20]
	test	rax, rax
	mov	r12, qword ptr [rsp + 0x30]
	je	.label_830
.label_837:
	mov	rbp, qword ptr [rax + 0x10]
	mov	rbx, rax
	mov	rdi, qword ptr [rax + 0x18]
	test	rdi, rdi
	je	.label_833
	call	closedir
.label_833:
	mov	rdi, rbx
	call	free
	test	rbp, rbp
	mov	rax, rbp
	jne	.label_837
.label_830:
	mov	rbx, r13
	mov	rdi, qword ptr [rbx + 0x18]
	call	closedir
	mov	qword ptr [rbx + 0x18], 0
	mov	word ptr [rbx + 0x70], 7
	or	byte ptr [r12 + 1], 0x20
	mov	dword ptr [r15], r14d
.label_799:
	xor	ebx, ebx
.label_780:
	mov	rax, rbx
	add	rsp, 0xa8
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x408bbf
	.globl sub_408bbf
	.type sub_408bbf, @function
sub_408bbf:

	nop	
	.section	.text
	.align	16
	#Procedure 0x408bc0

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
	je	.label_877
	mov	ecx, dword ptr [r12]
.label_877:
	test	r14, r14
	je	.label_886
	mov	qword ptr [r14], 0
.label_886:
	test	r9, r9
	je	.label_887
	mov	qword ptr [r9], 0
.label_887:
	test	r15, r15
	mov	qword ptr [rsp + 0x38], rdx
	mov	qword ptr [rsp + 0x10], rax
	mov	qword ptr [rsp + 0x18], rcx
	je	.label_888
	mov	qword ptr [rsp + 8], r9
	xor	ebp, ebp
	mov	rbx, r15
	sub	rbx, rdi
	je	.label_863
	lea	rsi, [rbx + 1]
	call	xmemdup
	mov	rbp, rax
	mov	byte ptr [rbp + rbx], 0
.label_863:
	lea	rax, [r15 + 1]
	xor	ebx, ebx
	cmp	byte ptr [r15 + 1], 0
	cmovne	rbx, rax
	jmp	.label_874
.label_888:
	xor	r13d, r13d
	cmp	byte ptr [rdi], 0
	je	.label_879
	mov	qword ptr [rsp + 8], r9
	call	xstrdup
	mov	rbp, rax
	xor	ebx, ebx
.label_874:
	xor	r13d, r13d
	test	rbp, rbp
	mov	qword ptr [rsp + 0x30], r12
	mov	qword ptr [rsp + 0x28], r14
	je	.label_876
	cmp	byte ptr [rbp], 0x2b
	mov	qword ptr [rsp + 0x20], rbp
	je	.label_859
	mov	rdi, rbp
	call	getpwnam
	mov	rbp, qword ptr [rsp + 0x20]
	test	rax, rax
	je	.label_859
	mov	rax, qword ptr [rax + 0x10]
	xor	r13d, r13d
	test	r15, r15
	mov	qword ptr [rsp + 0x10], rax
	je	.label_862
	mov	r15, rbx
	test	r15, r15
	jne	.label_870
	mov	rbp, rax
	shr	rbp, 0x20
	mov	edi, ebp
	call	getgrgid
	test	rax, rax
	mov	qword ptr [rsp + 0x18], rbp
	je	.label_878
	mov	rdi, qword ptr [rax]
	jmp	.label_882
.label_859:
	mov	r14d, OFFSET FLAT:label_867
	xor	r13d, r13d
	test	r15, r15
	mov	r15, rbx
	je	.label_868
	test	r15, r15
	je	.label_872
.label_868:
	lea	rcx, [rsp + 0x40]
	xor	esi, esi
	mov	edx, 0xa
	mov	r8d, OFFSET FLAT:label_325
	mov	rdi, rbp
	call	xstrtoul
	test	eax, eax
	jne	.label_860
	mov	rax, qword ptr [rsp + 0x40]
	mov	rcx, rax
	shr	rcx, 0x20
	jne	.label_860
	xor	r14d, r14d
	cmp	eax, -1
	jne	.label_866
.label_860:
	mov	r14d, OFFSET FLAT:label_869
	mov	rax, qword ptr [rsp + 0x10]
.label_866:
	xor	r13d, r13d
	mov	qword ptr [rsp + 0x10], rax
	jmp	.label_872
.label_876:
	xor	edi, edi
	xor	r14d, r14d
	mov	r15, rbx
	jmp	.label_883
.label_879:
	xor	edi, edi
	jmp	.label_864
.label_862:
	xor	r14d, r14d
	mov	r15, rbx
	jmp	.label_872
.label_878:
	lea	rsi, [rsp + 0x40]
	mov	rdi, rbp
	call	umaxtostr
	mov	rdi, rax
.label_882:
	call	xstrdup
	mov	r13, rax
	call	endgrent
.label_870:
	xor	r14d, r14d
.label_872:
	call	endpwent
	mov	rdi, qword ptr [rsp + 0x20]
.label_883:
	test	r15, r15
	je	.label_857
	test	r14, r14
	jne	.label_857
	mov	rbp, rdi
	cmp	byte ptr [r15], 0x2b
	je	.label_858
	mov	rdi, r15
	call	getgrnam
	test	rax, rax
	je	.label_858
	mov	ebx, dword ptr [rax + 0x10]
	xor	r14d, r14d
	jmp	.label_871
.label_857:
	mov	r9, qword ptr [rsp + 8]
	jmp	.label_881
.label_858:
	lea	rcx, [rsp + 0x40]
	xor	esi, esi
	mov	edx, 0xa
	mov	r8d, OFFSET FLAT:label_325
	mov	rdi, r15
	call	xstrtoul
	test	eax, eax
	jne	.label_880
	mov	rbx, qword ptr [rsp + 0x40]
	mov	rax, rbx
	shr	rax, 0x20
	jne	.label_880
	xor	r14d, r14d
	cmp	ebx, -1
	jne	.label_871
.label_880:
	mov	r14d, OFFSET FLAT:label_885
	mov	rbx, qword ptr [rsp + 0x18]
.label_871:
	call	endgrent
	mov	rdi, r15
	call	xstrdup
	mov	r13, rax
	mov	qword ptr [rsp + 0x18], rbx
	mov	r9, qword ptr [rsp + 8]
	mov	rdi, rbp
.label_881:
	test	r14, r14
	je	.label_873
	xor	ebx, ebx
	jmp	.label_861
.label_873:
	mov	r14, qword ptr [rsp + 0x28]
	mov	r12, qword ptr [rsp + 0x30]
.label_864:
	mov	rax, qword ptr [rsp + 0x38]
	mov	rcx, qword ptr [rsp + 0x10]
	mov	dword ptr [rax], ecx
	test	r12, r12
	je	.label_865
	mov	rax, qword ptr [rsp + 0x18]
	mov	dword ptr [r12], eax
.label_865:
	test	r14, r14
	je	.label_875
	mov	qword ptr [r14], rdi
	xor	edi, edi
.label_875:
	mov	bl, 1
	xor	r14d, r14d
	test	r9, r9
	je	.label_861
	mov	qword ptr [r9], r13
	xor	r14d, r14d
	xor	r13d, r13d
.label_861:
	call	free
	mov	rdi, r13
	call	free
	xor	eax, eax
	test	bl, bl
	jne	.label_884
	xor	edi, edi
	mov	edx, 5
	mov	rsi, r14
	call	dcgettext
.label_884:
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
	#Procedure 0x408e83
	.globl sub_408e83
	.type sub_408e83, @function
sub_408e83:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x408e90

	.globl xalloc_die
	.type xalloc_die, @function
xalloc_die:
	push	rbx
	mov	ebx, dword ptr [rip + exit_failure]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_889
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	xor	esi, esi
	mov	edx, OFFSET FLAT:label_157
	xor	eax, eax
	mov	edi, ebx
	call	error
	call	abort
	.section	.text
	.align	16
	#Procedure 0x408ec0
	.globl quotearg_colon_mem
	.type quotearg_colon_mem, @function
quotearg_colon_mem:

	sub	rsp, 0x38
	mov	rax, rsi
	mov	rdx, rdi
	mov	rcx, qword ptr [rip + label_27]
	mov	qword ptr [rsp + 0x30], rcx
	movups	xmm0, xmmword ptr [rip + label_28]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0, xmmword ptr [rip + label_29]
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
	#Procedure 0x408f14
	.globl sub_408f14
	.type sub_408f14, @function
sub_408f14:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x408f20
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
	#Procedure 0x408f53
	.globl sub_408f53
	.type sub_408f53, @function
sub_408f53:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x408f60
	.globl quotearg_n_mem
	.type quotearg_n_mem, @function
quotearg_n_mem:

	mov	ecx, OFFSET FLAT:default_quoting_options
	jmp	quotearg_n_options
	.section	.text
	.align	16
	#Procedure 0x408f6a
	.globl sub_408f6a
	.type sub_408f6a, @function
sub_408f6a:

	nop	word ptr [rax + rax]
.label_892:
	call	abort
	.section	.text
	.align	16
	#Procedure 0x408f75
	.globl sub_408f75
	.type sub_408f75, @function
sub_408f75:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x408f83

	.globl leave_dir
	.type leave_dir, @function
leave_dir:
	sub	rsp, 0x18
	movzx	eax, word ptr [rdi + 0x48]
	test	ax, 0x102
	je	.label_891
	movups	xmm0, xmmword ptr [rsi + 0x78]
	movaps	xmmword ptr [rsp], xmm0
	mov	rdi, qword ptr [rdi + 0x58]
	lea	rsi, [rsp]
	call	hash_delete
	test	rax, rax
	je	.label_892
	mov	rdi, rax
	call	free
	add	rsp, 0x18
	ret	
.label_891:
	mov	rax, qword ptr [rsi + 8]
	test	rax, rax
	je	.label_890
	cmp	qword ptr [rax + 0x58], 0
	js	.label_890
	mov	rcx, qword ptr [rdi + 0x58]
	cmp	qword ptr [rcx + 0x10], 0
	je	.label_892
	mov	rdx, qword ptr [rcx]
	cmp	rdx, qword ptr [rsi + 0x80]
	jne	.label_890
	mov	rdx, qword ptr [rcx + 8]
	cmp	rdx, qword ptr [rsi + 0x78]
	jne	.label_890
	mov	rdx, qword ptr [rax + 0x78]
	mov	qword ptr [rcx + 8], rdx
	mov	rax, qword ptr [rax + 0x80]
	mov	qword ptr [rcx], rax
.label_890:
	add	rsp, 0x18
	ret	
.label_897:
	call	xalloc_die
	.section	.text
	.align	16
	#Procedure 0x409005
	.globl sub_409005
	.type sub_409005, @function
sub_409005:

	nop	word ptr cs:[rax + rax]
.label_894:
	call	xalloc_die
	.section	.text
	.align	16
	#Procedure 0x409016
	.globl x2realloc
	.type x2realloc, @function
x2realloc:

	push	rbx
	mov	rax, qword ptr [rsi]
	test	rdi, rdi
	je	.label_896
	movabs	rcx, 0x5555555555555554
	cmp	rax, rcx
	jae	.label_897
	mov	rbx, rax
	shr	rbx, 1
	add	rbx, rax
	inc	rbx
	mov	qword ptr [rsi], rbx
	jne	.label_895
	call	free
	xor	eax, eax
	jmp	.label_893
.label_896:
	test	rax, rax
	mov	ebx, 0x80
	cmovne	rbx, rax
	test	rbx, rbx
	js	.label_894
	mov	qword ptr [rsi], rbx
.label_895:
	mov	rsi, rbx
	call	realloc
	test	rbx, rbx
	je	.label_893
	test	rax, rax
	je	.label_894
.label_893:
	pop	rbx
	ret	
	.section	.text
	.align	16
	#Procedure 0x409070
	.globl quotearg_char
	.type quotearg_char, @function
quotearg_char:

	sub	rsp, 0x38
	mov	ecx, esi
	mov	rax, rdi
	mov	rdx, qword ptr [rip + label_27]
	mov	qword ptr [rsp + 0x30], rdx
	movups	xmm0, xmmword ptr [rip + label_28]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0, xmmword ptr [rip + label_29]
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
	#Procedure 0x4090df
	.globl sub_4090df
	.type sub_4090df, @function
sub_4090df:

	nop	
.label_902:
	call	__errno_location
	cmp	dword ptr [rax], 0x16
	jne	.label_901
	mov	edi, OFFSET FLAT:label_898
	mov	esi, OFFSET FLAT:label_899
	mov	edx, 0x29
	mov	ecx, OFFSET FLAT:label_900
	call	__assert_fail
	.section	.text
	.align	16
	#Procedure 0x409103

	.globl xfts_open
	.type xfts_open, @function
xfts_open:
	push	rax
	or	esi, 0x200
	call	rpl_fts_open
	test	rax, rax
	je	.label_902
	pop	rcx
	ret	
.label_901:
	call	xalloc_die
	.section	.text
	.align	16
	#Procedure 0x40911b
	.globl sub_40911b
	.type sub_40911b, @function
sub_40911b:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x409120
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
	#Procedure 0x40912f
	.globl sub_40912f
	.type sub_40912f, @function
sub_40912f:

	nop	
	.section	.text
	.align	16
	#Procedure 0x409130

	.globl xrealloc
	.type xrealloc, @function
xrealloc:
	push	rbx
	mov	rbx, rsi
	test	rdi, rdi
	je	.label_903
	test	rbx, rbx
	jne	.label_903
	call	free
	xor	eax, eax
	pop	rbx
	ret	
.label_905:
	call	xalloc_die
.label_903:
	mov	rsi, rbx
	call	realloc
	test	rbx, rbx
	je	.label_904
	test	rax, rax
	je	.label_905
.label_904:
	pop	rbx
	ret	
	.section	.text
	.align	16
	#Procedure 0x409160
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
	#Procedure 0x409221
	.globl sub_409221
	.type sub_409221, @function
sub_409221:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x409230
	.globl close_stdout_set_file_name
	.type close_stdout_set_file_name, @function
close_stdout_set_file_name:

	mov	qword ptr [rip + file_name],  rdi
	ret	
	.section	.text
	.align	16
	#Procedure 0x409238
	.globl sub_409238
	.type sub_409238, @function
sub_409238:

	nop	dword ptr [rax + rax]
.label_906:
	push	rax
	call	abort
	.section	.text
	.align	16
	#Procedure 0x409246
	.globl sub_409246
	.type sub_409246, @function
sub_409246:

	nop	dword ptr [rax + rax]
.label_907:
	add	rcx, 0x10
.label_909:
	cmp	rcx, rdx
	jae	.label_906
	mov	rax, qword ptr [rcx]
	test	rax, rax
	je	.label_907
.label_908:
	ret	
	.section	.text
	.align	16
	#Procedure 0x409260
	.globl hash_get_first
	.type hash_get_first, @function
hash_get_first:

	xor	eax, eax
	cmp	qword ptr [rdi + 0x20], 0
	je	.label_908
	mov	rcx, qword ptr [rdi]
	mov	rdx, qword ptr [rdi + 8]
	jmp	.label_909
	.section	.text
	.align	16
	#Procedure 0x409272
	.globl sub_409272
	.type sub_409272, @function
sub_409272:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x409280
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
	jae	.label_910
	xor	ebx, ebx
.label_914:
	mov	rdi, qword ptr [r13]
	test	rdi, rdi
	je	.label_912
	test	r13, r13
	je	.label_912
	mov	rsi, r14
	call	r15
	test	al, al
	je	.label_910
	mov	rbp, r13
	nop	word ptr cs:[rax + rax]
.label_911:
	mov	rbp, qword ptr [rbp + 8]
	test	rbp, rbp
	je	.label_913
	inc	rbx
	mov	rdi, qword ptr [rbp]
	mov	rsi, r14
	call	r15
	test	al, al
	jne	.label_911
	jmp	.label_910
	.section	.text
	.align	16
	#Procedure 0x4092ec
	.globl sub_4092ec
	.type sub_4092ec, @function
sub_4092ec:

	nop	dword ptr [rax]
.label_913:
	mov	rax, qword ptr [r12 + 8]
	inc	rbx
.label_912:
	add	r13, 0x10
	cmp	r13, rax
	jb	.label_914
.label_910:
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
	#Procedure 0x409313
	.globl sub_409313
	.type sub_409313, @function
sub_409313:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x409320
	.globl quotearg_n
	.type quotearg_n, @function
quotearg_n:

	mov	rdx, -1
	mov	ecx, OFFSET FLAT:default_quoting_options
	jmp	quotearg_n_options
	.section	.text
	.align	16
	#Procedure 0x40932e
	.globl sub_40932e
	.type sub_40932e, @function
sub_40932e:

	nop	
	.section	.text
	.align	16
	#Procedure 0x409330

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
	js	.label_918
	mov	eax, dword ptr [r13]
	mov	rbp, qword ptr [rip + slotvec]
	cmp	dword ptr [rip + nslots],  r12d
	mov	qword ptr [rsp + 0x18], r13
	mov	dword ptr [rsp], eax
	mov	qword ptr [rsp + 0x10], rbx
	mov	qword ptr [rsp + 8], r15
	jg	.label_921
	cmp	r12d, 0x7fffffff
	je	.label_916
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
	jne	.label_919
	movups	xmm0, xmmword ptr [rip + slotvec0]
	movups	xmmword ptr [r14], xmm0
.label_919:
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
.label_921:
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
	jbe	.label_917
	mov	rax, qword ptr [rsp + 0x18]
	mov	ebp, dword ptr [rsp]
	jmp	.label_920
.label_917:
	lea	rax, [rbp + r13]
	lea	r12, [rbp + r13 + 8]
	inc	r15
	mov	qword ptr [rax], r15
	mov	eax, OFFSET FLAT:slot0
	cmp	r14, rax
	mov	ebp, dword ptr [rsp]
	je	.label_915
	mov	rdi, r14
	call	free
.label_915:
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
.label_920:
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
.label_918:
	call	abort
.label_916:
	call	xalloc_die
	.section	.text
	.align	16
	#Procedure 0x4094ed
	.globl sub_4094ed
	.type sub_4094ed, @function
sub_4094ed:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x4094f0
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
	#Procedure 0x409508
	.globl sub_409508
	.type sub_409508, @function
sub_409508:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x409510

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
	jne	.label_922
	mov	rax, qword ptr [rbx + 0x28]
	cmp	rax, qword ptr [rbx + 0x20]
	jne	.label_922
	cmp	qword ptr [rbx + 0x48], 0
	je	.label_923
.label_922:
	mov	rdi, rbx
	mov	rsi, rbp
	mov	edx, r14d
	pop	rbx
	pop	r14
	pop	rbp
	jmp	fseeko
.label_923:
	mov	rdi, rbx
	call	fileno
	mov	edi, eax
	mov	rsi, rbp
	mov	edx, r14d
	call	lseek
	mov	rcx, rax
	mov	eax, 0xffffffff
	cmp	rcx, -1
	je	.label_924
	and	byte ptr [rbx], 0xef
	mov	qword ptr [rbx + 0x90], rcx
	xor	eax, eax
.label_924:
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40957e
	.globl sub_40957e
	.type sub_40957e, @function
sub_40957e:

	nop	
	.section	.text
	.align	16
	#Procedure 0x409580

	.globl rpl_fcntl
	.type rpl_fcntl, @function
rpl_fcntl:
	push	rbp
	push	r14
	push	rbx
	sub	rsp, 0xd0
	mov	ebx, edi
	test	al, al
	je	.label_925
	movaps	xmmword ptr [rsp + 0x50], xmm0
	movaps	xmmword ptr [rsp + 0x60], xmm1
	movaps	xmmword ptr [rsp + 0x70], xmm2
	movaps	xmmword ptr [rsp + 0x80], xmm3
	movaps	xmmword ptr [rsp + 0x90], xmm4
	movaps	xmmword ptr [rsp + 0xa0], xmm5
	movaps	xmmword ptr [rsp + 0xb0], xmm6
	movaps	xmmword ptr [rsp + 0xc0], xmm7
.label_925:
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
	ja	.label_932
	mov	eax, 0xa0a
	bt	eax, esi
	jb	.label_928
	mov	eax, 0x514
	bt	eax, esi
	jb	.label_929
	test	esi, esi
	jne	.label_932
	movsxd	rcx, dword ptr [rsp]
	cmp	rcx, 0x28
	ja	.label_933
	mov	rax, rcx
	add	rax, qword ptr [rsp + 0x10]
	lea	ecx, [rcx + 8]
	mov	dword ptr [rsp], ecx
	jmp	.label_934
.label_932:
	lea	eax, [rsi - 0x400]
	cmp	eax, 8
	ja	.label_935
	mov	ecx, 0x85
	bt	ecx, eax
	jb	.label_929
	mov	ecx, 0x102
	bt	ecx, eax
	jae	.label_939
.label_928:
	xor	eax, eax
	mov	edi, ebx
	call	fcntl
	jmp	.label_930
.label_929:
	movsxd	rcx, dword ptr [rsp]
	cmp	rcx, 0x28
	ja	.label_943
	mov	rax, rcx
	add	rax, qword ptr [rsp + 0x10]
	lea	ecx, [rcx + 8]
	mov	dword ptr [rsp], ecx
	jmp	.label_944
.label_943:
	mov	rax, qword ptr [rsp + 8]
	lea	rcx, [rax + 8]
	mov	qword ptr [rsp + 8], rcx
.label_944:
	mov	edx, dword ptr [rax]
	xor	eax, eax
	mov	edi, ebx
.label_945:
	call	fcntl
.label_930:
	mov	ebp, eax
.label_927:
	mov	eax, ebp
	add	rsp, 0xd0
	pop	rbx
	pop	r14
	pop	rbp
	ret	
.label_939:
	cmp	eax, 6
	jne	.label_935
	movsxd	rcx, dword ptr [rsp]
	cmp	rcx, 0x28
	ja	.label_937
	mov	rax, rcx
	add	rax, qword ptr [rsp + 0x10]
	lea	ecx, [rcx + 8]
	mov	dword ptr [rsp], ecx
	jmp	.label_926
.label_935:
	movsxd	rcx, dword ptr [rsp]
	cmp	rcx, 0x28
	ja	.label_938
	mov	rax, rcx
	add	rax, qword ptr [rsp + 0x10]
	lea	ecx, [rcx + 8]
	mov	dword ptr [rsp], ecx
	jmp	.label_941
.label_933:
	mov	rax, qword ptr [rsp + 8]
	lea	rcx, [rax + 8]
	mov	qword ptr [rsp + 8], rcx
.label_934:
	mov	edx, dword ptr [rax]
	xor	esi, esi
	xor	eax, eax
	mov	edi, ebx
	jmp	.label_945
.label_937:
	mov	rax, qword ptr [rsp + 8]
	lea	rcx, [rax + 8]
	mov	qword ptr [rsp + 8], rcx
.label_926:
	mov	r14d, dword ptr [rax]
	cmp	dword ptr [rip + rpl_fcntl_DUPFD_CLOEXEC.have_dupfd_cloexec],  0
	js	.label_931
	mov	esi, 0x406
	xor	eax, eax
	mov	edi, ebx
	mov	edx, r14d
	call	fcntl
	mov	ebp, eax
	test	ebp, ebp
	jns	.label_936
	call	__errno_location
	cmp	dword ptr [rax], 0x16
	jne	.label_936
	xor	esi, esi
	xor	eax, eax
	mov	edi, ebx
	mov	edx, r14d
	call	fcntl
	mov	ebp, eax
	test	ebp, ebp
	js	.label_927
	mov	dword ptr [rip + rpl_fcntl_DUPFD_CLOEXEC.have_dupfd_cloexec],  0xffffffff
	mov	al, 1
	jmp	.label_940
.label_936:
	mov	dword ptr [rip + rpl_fcntl_DUPFD_CLOEXEC.have_dupfd_cloexec],  1
	jmp	.label_927
.label_938:
	mov	rax, qword ptr [rsp + 8]
	lea	rcx, [rax + 8]
	mov	qword ptr [rsp + 8], rcx
.label_941:
	mov	rdx, qword ptr [rax]
	xor	eax, eax
	mov	edi, ebx
	call	fcntl
	jmp	.label_930
.label_931:
	xor	esi, esi
	xor	eax, eax
	mov	edi, ebx
	mov	edx, r14d
	call	fcntl
	mov	ebp, eax
	cmp	dword ptr [rip + rpl_fcntl_DUPFD_CLOEXEC.have_dupfd_cloexec],  -1
	sete	al
.label_940:
	test	al, al
	je	.label_927
	test	ebp, ebp
	js	.label_927
	mov	esi, 1
	xor	eax, eax
	mov	edi, ebp
	call	fcntl
	mov	ecx, eax
	test	ecx, ecx
	js	.label_942
	or	ecx, 1
	mov	esi, 2
	xor	eax, eax
	mov	edi, ebp
	mov	edx, ecx
	call	fcntl
	cmp	eax, -1
	jne	.label_927
.label_942:
	call	__errno_location
	mov	rbx, rax
	mov	r14d, dword ptr [rbx]
	mov	edi, ebp
	call	close
	mov	dword ptr [rbx], r14d
	mov	ebp, 0xffffffff
	jmp	.label_927
	.section	.text
	.align	16
	#Procedure 0x409811
	.globl sub_409811
	.type sub_409811, @function
sub_409811:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x409820
	.globl hash_get_n_entries
	.type hash_get_n_entries, @function
hash_get_n_entries:

	mov	rax, qword ptr [rdi + 0x20]
	ret	
	.section	.text
	.align	16
	#Procedure 0x409825
	.globl sub_409825
	.type sub_409825, @function
sub_409825:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x409830

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
	je	.label_946
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
.label_946:
	call	abort
	.section	.text
	.align	16
	#Procedure 0x409898
	.globl sub_409898
	.type sub_409898, @function
sub_409898:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4098a0
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
	#Procedure 0x4098b9
	.globl sub_4098b9
	.type sub_4098b9, @function
sub_4098b9:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x4098c0

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
	#Procedure 0x4098d7
	.globl sub_4098d7
	.type sub_4098d7, @function
sub_4098d7:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4098e0

	.globl open_safer
	.type open_safer, @function
open_safer:
	sub	rsp, 0xd8
	test	al, al
	je	.label_947
	movaps	xmmword ptr [rsp + 0x50], xmm0
	movaps	xmmword ptr [rsp + 0x60], xmm1
	movaps	xmmword ptr [rsp + 0x70], xmm2
	movaps	xmmword ptr [rsp + 0x80], xmm3
	movaps	xmmword ptr [rsp + 0x90], xmm4
	movaps	xmmword ptr [rsp + 0xa0], xmm5
	movaps	xmmword ptr [rsp + 0xb0], xmm6
	movaps	xmmword ptr [rsp + 0xc0], xmm7
.label_947:
	mov	qword ptr [rsp + 0x48], r9
	mov	qword ptr [rsp + 0x40], r8
	mov	qword ptr [rsp + 0x38], rcx
	mov	qword ptr [rsp + 0x30], rdx
	xor	edx, edx
	test	sil, 0x40
	je	.label_948
	lea	rax, [rsp + 0x20]
	mov	qword ptr [rsp + 0x10], rax
	lea	rax, [rsp + 0xe0]
	mov	qword ptr [rsp + 8], rax
	mov	dword ptr [rsp + 4], 0x30
	mov	dword ptr [rsp], 0x10
	movsxd	rcx, dword ptr [rsp]
	cmp	rcx, 0x28
	ja	.label_950
	mov	rax, rcx
	add	rax, qword ptr [rsp + 0x10]
	lea	ecx, [rcx + 8]
	mov	dword ptr [rsp], ecx
	jmp	.label_949
.label_950:
	mov	rax, qword ptr [rsp + 8]
	lea	rcx, [rax + 8]
	mov	qword ptr [rsp + 8], rcx
.label_949:
	mov	edx, dword ptr [rax]
.label_948:
	xor	eax, eax
	call	open
	mov	edi, eax
	call	fd_safer
	add	rsp, 0xd8
	ret	
	.section	.text
	.align	16
	#Procedure 0x4099a4
	.globl sub_4099a4
	.type sub_4099a4, @function
sub_4099a4:

	nop	word ptr cs:[rax + rax]
.label_954:
	call	abort
	.section	.text
	.align	16
	#Procedure 0x4099b5
	.globl sub_4099b5
	.type sub_4099b5, @function
sub_4099b5:

	nop	dword ptr [rax + rax]
.label_952:
	mov	r15, qword ptr [rbx]
.label_951:
	mov	rax, r15
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	ret	
	.section	.text
	.align	16
	#Procedure 0x4099cf

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
	jae	.label_954
	mov	rbx, qword ptr [r14]
	shl	rax, 4
	mov	rsi, qword ptr [rbx + rax]
	xor	r15d, r15d
	test	rsi, rsi
	je	.label_951
	add	rbx, rax
	je	.label_951
	cmp	rsi, r12
	je	.label_953
	xor	r15d, r15d
	nop	
.label_955:
	mov	rdi, r12
	call	qword ptr [r14 + 0x38]
	test	al, al
	jne	.label_952
	mov	rbx, qword ptr [rbx + 8]
	test	rbx, rbx
	je	.label_951
	mov	rsi, qword ptr [rbx]
	cmp	rsi, r12
	jne	.label_955
.label_953:
	mov	r15, r12
	jmp	.label_951
	.section	.text
	.align	16
	#Procedure 0x409a30
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
	#Procedure 0x409a66
	.globl sub_409a66
	.type sub_409a66, @function
sub_409a66:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x409a70
	.globl version_etc_ar
	.type version_etc_ar, @function
version_etc_ar:

	mov	r9, -1
	nop	word ptr [rax + rax]
.label_956:
	cmp	qword ptr [r8 + r9*8 + 8], 0
	lea	r9, [r9 + 1]
	jne	.label_956
	jmp	version_etc_arn
	.section	.text
	.align	16
	#Procedure 0x409a91
	.globl sub_409a91
	.type sub_409a91, @function
sub_409a91:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x409aa0
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
	#Procedure 0x409ab8
	.globl sub_409ab8
	.type sub_409ab8, @function
sub_409ab8:

	nop	dword ptr [rax + rax]
.label_957:
	mov	word ptr [rsi + 0x74], dx
	xor	eax, eax
	ret	
	.section	.text
	.align	16
	#Procedure 0x409ac7
	.globl sub_409ac7
	.type sub_409ac7, @function
sub_409ac7:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x409ad5

	.globl rpl_fts_set
	.type rpl_fts_set, @function
rpl_fts_set:
	cmp	edx, 5
	jb	.label_957
	push	rax
	call	__errno_location
	mov	dword ptr [rax], 0x16
	mov	eax, 1
	add	rsp, 8
	ret	
	.section	.text
	.align	16
	#Procedure 0x409af0

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
	je	.label_968
	mov	edx, OFFSET FLAT:label_964
	xor	eax, eax
	mov	rdi, r14
	mov	r8, rbx
	call	__fprintf_chk
	jmp	.label_970
.label_968:
	mov	edx, OFFSET FLAT:label_971
	xor	eax, eax
	mov	rdi, r14
	mov	rcx, rbx
	mov	r8, r9
	call	__fprintf_chk
.label_970:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_976
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
	mov	esi, OFFSET FLAT:label_972
	mov	edx, 5
	call	dcgettext
	mov	rdi, rax
	mov	rsi, r14
	call	fputs_unlocked
	cmp	r12, 9
	ja	.label_960
	jmp	qword ptr [(r12 * 8) + label_961]
.label_1022:
	add	rsp, 8
	jmp	.label_958
.label_960:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_967
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
	jmp	.label_958
.label_1023:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_973
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
.label_1024:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_959
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
.label_1025:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_965
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
.label_1026:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_962
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
	jmp	.label_958
.label_1027:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_975
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
	jmp	.label_958
.label_1028:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_963
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
	jmp	.label_958
.label_1029:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_966
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
	jmp	.label_958
.label_1031:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_969
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
	jmp	.label_958
.label_1030:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_974
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
.label_958:
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	ret	
	.section	.text
	.align	16
	#Procedure 0x409e48
	.globl sub_409e48
	.type sub_409e48, @function
sub_409e48:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x409e50
	.globl quotearg_char_mem
	.type quotearg_char_mem, @function
quotearg_char_mem:

	sub	rsp, 0x38
	mov	ecx, edx
	mov	r8, rsi
	mov	rdx, rdi
	mov	rsi, qword ptr [rip + label_27]
	mov	qword ptr [rsp + 0x30], rsi
	movups	xmm0, xmmword ptr [rip + label_28]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0, xmmword ptr [rip + label_29]
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
	#Procedure 0x409ebe
	.globl sub_409ebe
	.type sub_409ebe, @function
sub_409ebe:

	nop	
	.section	.text
	.align	16
	#Procedure 0x409ec0

	.globl i_ring_empty
	.type i_ring_empty, @function
i_ring_empty:
	mov	al, byte ptr [rdi + 0x1c]
	ret	
	.section	.text
	.align	16
	#Procedure 0x409ec4
	.globl sub_409ec4
	.type sub_409ec4, @function
sub_409ec4:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x409ed0

	.globl raw_comparator
	.type raw_comparator, @function
raw_comparator:
	cmp	rdi, rsi
	sete	al
	ret	
	.section	.text
	.align	16
	#Procedure 0x409ed7
	.globl sub_409ed7
	.type sub_409ed7, @function
sub_409ed7:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x409ee0

	.globl cycle_check
	.type cycle_check, @function
cycle_check:
	cmp	dword ptr [rdi + 0x18], 0x95f616
	jne	.label_977
	mov	rcx, qword ptr [rdi + 0x10]
	test	rcx, rcx
	je	.label_978
	mov	rax, qword ptr [rsi + 8]
	cmp	rax, qword ptr [rdi]
	jne	.label_978
	mov	rdx, qword ptr [rsi]
	mov	al, 1
	cmp	rdx, qword ptr [rdi + 8]
	je	.label_979
.label_978:
	lea	rdx, [rcx + 1]
	mov	qword ptr [rdi + 0x10], rdx
	test	rdx, rcx
	jne	.label_980
	mov	al, 1
	test	rdx, rdx
	je	.label_979
	mov	rax, qword ptr [rsi]
	mov	qword ptr [rdi + 8], rax
	mov	rax, qword ptr [rsi + 8]
	mov	qword ptr [rdi], rax
.label_980:
	xor	eax, eax
.label_979:
	ret	
.label_977:
	push	rax
	mov	edi, OFFSET FLAT:label_981
	mov	esi, OFFSET FLAT:label_982
	mov	edx, 0x3c
	mov	ecx, OFFSET FLAT:label_983
	call	__assert_fail
	.section	.text
	.align	16
	#Procedure 0x409f45
	.globl sub_409f45
	.type sub_409f45, @function
sub_409f45:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x409f50

	.globl rpl_fflush
	.type rpl_fflush, @function
rpl_fflush:
	push	rbx
	mov	rbx, rdi
	test	rbx, rbx
	je	.label_984
	mov	rdi, rbx
	call	__freading
	test	eax, eax
	je	.label_984
	test	byte ptr [rbx + 1], 1
	je	.label_984
	xor	esi, esi
	mov	edx, 1
	mov	rdi, rbx
	call	rpl_fseeko
.label_984:
	mov	rdi, rbx
	pop	rbx
	jmp	fflush
	.section	.text
	.align	16
	#Procedure 0x409f83
	.globl sub_409f83
	.type sub_409f83, @function
sub_409f83:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x409f90
	.globl emit_bug_reporting_address
	.type emit_bug_reporting_address, @function
emit_bug_reporting_address:

	push	rax
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_985
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:label_986
	xor	eax, eax
	mov	rsi, rcx
	call	__printf_chk
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_988
	mov	edx, 5
	call	dcgettext
	mov	rsi, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:label_357
	mov	ecx, OFFSET FLAT:label_585
	xor	eax, eax
	call	__printf_chk
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_987
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	pop	rax
	jmp	fputs_unlocked
	.section	.text
	.align	16
	#Procedure 0x40a004
	.globl sub_40a004
	.type sub_40a004, @function
sub_40a004:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40a075
	.globl sub_40a075
	.type sub_40a075, @function
sub_40a075:

	nop	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40a082
	.globl sub_40a082
	.type sub_40a082, @function
sub_40a082:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40a0a6
	.globl sub_40a0a6
	.type sub_40a0a6, @function
sub_40a0a6:

	nop	word ptr cs:[rax + rax]
