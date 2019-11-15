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
	je	.label_19
	mov	edx, OFFSET FLAT:label_24
	xor	eax, eax
	mov	rdi, r14
	mov	r8, rbx
	call	__fprintf_chk
	jmp	.label_11
.label_19:
	mov	edx, OFFSET FLAT:label_13
	xor	eax, eax
	mov	rdi, r14
	mov	rcx, rbx
	mov	r8, r9
	call	__fprintf_chk
.label_11:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_18
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
	mov	esi, OFFSET FLAT:label_14
	mov	edx, 5
	call	dcgettext
	mov	rdi, rax
	mov	rsi, r14
	call	fputs_unlocked
	cmp	r12, 9
	ja	.label_20
	jmp	qword ptr [(r12 * 8) + label_21]
.label_452:
	add	rsp, 8
	jmp	.label_12
.label_20:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_27
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
	jmp	.label_12
.label_453:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_15
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
.label_454:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_9
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
.label_455:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_25
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
.label_456:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_22
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
	jmp	.label_12
.label_457:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_17
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
	jmp	.label_12
.label_458:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_23
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
	jmp	.label_12
.label_459:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_26
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
	jmp	.label_12
.label_461:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_10
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
	jmp	.label_12
.label_460:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_16
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
.label_12:
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	ret	
	.section	.text
	.align	16
	#Procedure 0x4016a8
	.globl sub_4016a8
	.type sub_4016a8, @function
sub_4016a8:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4016b0

	.globl rpl_fflush
	.type rpl_fflush, @function
rpl_fflush:
	push	rbx
	mov	rbx, rdi
	test	rbx, rbx
	je	.label_28
	mov	rdi, rbx
	call	__freading
	test	eax, eax
	je	.label_28
	test	byte ptr [rbx + 1], 1
	je	.label_28
	xor	esi, esi
	mov	edx, 1
	mov	rdi, rbx
	call	rpl_fseeko
.label_28:
	mov	rdi, rbx
	pop	rbx
	jmp	fflush
	.section	.text
	.align	16
	#Procedure 0x4016e3
	.globl sub_4016e3
	.type sub_4016e3, @function
sub_4016e3:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4016f0
	.globl quotearg_n_custom_mem
	.type quotearg_n_custom_mem, @function
quotearg_n_custom_mem:

	sub	rsp, 0x38
	mov	rax, qword ptr [rip + label_29]
	mov	qword ptr [rsp + 0x30], rax
	movups	xmm0, xmmword ptr [rip + label_30]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0, xmmword ptr [rip + label_31]
	movaps	xmmword ptr [rsp + 0x10], xmm0
	movups	xmm0, xmmword ptr [rip + default_quoting_options]
	movaps	xmmword ptr [rsp], xmm0
	mov	dword ptr [rsp], 0xa
	test	rsi, rsi
	je	.label_32
	test	rdx, rdx
	je	.label_32
	mov	qword ptr [rsp + 0x28], rsi
	mov	qword ptr [rsp + 0x30], rdx
	lea	rax, [rsp]
	mov	rsi, rcx
	mov	rdx, r8
	mov	rcx, rax
	call	quotearg_n_options
	add	rsp, 0x38
	ret	
.label_32:
	call	abort
	.section	.text
	.align	16
	#Procedure 0x40175a
	.globl sub_40175a
	.type sub_40175a, @function
sub_40175a:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x401760
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
	#Procedure 0x4017d5
	.globl sub_4017d5
	.type sub_4017d5, @function
sub_4017d5:

	nop	word ptr cs:[rax + rax]
.label_33:
	call	abort
	.section	.text
	.align	16
	#Procedure 0x4017e5
	.globl sub_4017e5
	.type sub_4017e5, @function
sub_4017e5:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4017ed
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
	je	.label_33
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
	.align	16
	#Procedure 0x401850
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
	#Procedure 0x401869
	.globl sub_401869
	.type sub_401869, @function
sub_401869:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x401870
	.globl xcharalloc
	.type xcharalloc, @function
xcharalloc:

	push	rbx
	mov	rbx, rdi
	call	malloc
	test	rbx, rbx
	je	.label_34
	test	rax, rax
	je	.label_35
.label_34:
	pop	rbx
	ret	
.label_35:
	call	xalloc_die
	.section	.text
	.align	16
	#Procedure 0x40188a
	.globl sub_40188a
	.type sub_40188a, @function
sub_40188a:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x401890
	.globl quotearg_char
	.type quotearg_char, @function
quotearg_char:

	sub	rsp, 0x38
	mov	ecx, esi
	mov	rax, rdi
	mov	rdx, qword ptr [rip + label_29]
	mov	qword ptr [rsp + 0x30], rdx
	movups	xmm0, xmmword ptr [rip + label_30]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0, xmmword ptr [rip + label_31]
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
	#Procedure 0x4018ff
	.globl sub_4018ff
	.type sub_4018ff, @function
sub_4018ff:

	nop	
	.section	.text
	.align	16
	#Procedure 0x401900
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
	#Procedure 0x4019c1
	.globl sub_4019c1
	.type sub_4019c1, @function
sub_4019c1:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4019d0

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
	je	.label_36
	cmp	r15, -2
	jb	.label_36
	xor	edi, edi
	call	hard_locale
	test	al, al
	jne	.label_36
	movzx	eax, byte ptr [r14]
	mov	dword ptr [rbx], eax
	mov	r15d, 1
.label_36:
	mov	rax, r15
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	ret	
	.section	.text
	.align	16
	#Procedure 0x401a26
	.globl sub_401a26
	.type sub_401a26, @function
sub_401a26:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x401a30
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
	je	.label_37
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
.label_37:
	call	abort
	.section	.text
	.align	16
	#Procedure 0x401ac5
	.globl sub_401ac5
	.type sub_401ac5, @function
sub_401ac5:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x401ad0
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
	#Procedure 0x401ae9
	.globl sub_401ae9
	.type sub_401ae9, @function
sub_401ae9:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x401af0
	.globl quotearg_free
	.type quotearg_free, @function
quotearg_free:

	push	r15
	push	r14
	push	rbx
	mov	r14, qword ptr [rip + slotvec]
	cmp	dword ptr [rip + nslots],  2
	jl	.label_38
	lea	r15, [r14 + 0x18]
	mov	ebx, 1
	nop	
.label_41:
	mov	rdi, qword ptr [r15]
	call	free
	inc	rbx
	movsxd	rax, dword ptr [rip + nslots]
	add	r15, 0x10
	cmp	rbx, rax
	jl	.label_41
.label_38:
	mov	rdi, qword ptr [r14 + 8]
	mov	eax, OFFSET FLAT:slot0
	cmp	rdi, rax
	je	.label_42
	call	free
	mov	qword ptr [rip + slotvec0],  0x100
	mov	qword ptr [rip + label_39], OFFSET FLAT:slot0
.label_42:
	mov	eax, OFFSET FLAT:slotvec0
	cmp	r14, rax
	je	.label_40
	mov	rdi, r14
	call	free
	mov	qword ptr [rip + slotvec], OFFSET FLAT:slotvec0
.label_40:
	mov	dword ptr [rip + nslots],  1
	pop	rbx
	pop	r14
	pop	r15
	ret	
	.section	.text
	.align	16
	#Procedure 0x401b81
	.globl sub_401b81
	.type sub_401b81, @function
sub_401b81:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x401b90

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
	je	.label_43
	test	r15, r15
	je	.label_44
.label_43:
	mov	rdi, r15
	mov	rsi, r14
	mov	rdx, rbx
	call	memcpy
	mov	rax, r15
	pop	rbx
	pop	r14
	pop	r15
	ret	
.label_44:
	call	xalloc_die
	.section	.text
	.align	16
	#Procedure 0x401bcc
	.globl sub_401bcc
	.type sub_401bcc, @function
sub_401bcc:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x401bd0

	.globl rpl_fclose
	.type rpl_fclose, @function
rpl_fclose:
	push	rbp
	push	r14
	push	rbx
	mov	rbx, rdi
	call	fileno
	test	eax, eax
	js	.label_45
	mov	rdi, rbx
	call	__freading
	test	eax, eax
	je	.label_47
	mov	rdi, rbx
	call	fileno
	xor	esi, esi
	mov	edx, 1
	mov	edi, eax
	call	lseek
	cmp	rax, -1
	je	.label_45
.label_47:
	mov	rdi, rbx
	call	rpl_fflush
	test	eax, eax
	je	.label_45
	call	__errno_location
	mov	r14, rax
	mov	ebp, dword ptr [r14]
	mov	rdi, rbx
	call	fclose
	test	ebp, ebp
	je	.label_46
	mov	dword ptr [r14], ebp
	mov	eax, 0xffffffff
.label_46:
	pop	rbx
	pop	r14
	pop	rbp
	ret	
.label_45:
	mov	rdi, rbx
	pop	rbx
	pop	r14
	pop	rbp
	jmp	fclose
	.section	.text
	.align	16
	#Procedure 0x401c44
	.globl sub_401c44
	.type sub_401c44, @function
sub_401c44:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x401c50
	.globl quotearg_n_mem
	.type quotearg_n_mem, @function
quotearg_n_mem:

	mov	ecx, OFFSET FLAT:default_quoting_options
	jmp	quotearg_n_options
	.section	.text
	.align	16
	#Procedure 0x401c5a
	.globl sub_401c5a
	.type sub_401c5a, @function
sub_401c5a:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x401c60

	.globl xalloc_die
	.type xalloc_die, @function
xalloc_die:
	push	rbx
	mov	ebx, dword ptr [rip + exit_failure]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_48
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	xor	esi, esi
	mov	edx, OFFSET FLAT:label_49
	xor	eax, eax
	mov	edi, ebx
	call	error
	call	abort
	.section	.text
	.align	16
	#Procedure 0x401c90
	.globl emit_bug_reporting_address
	.type emit_bug_reporting_address, @function
emit_bug_reporting_address:

	push	rax
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_50
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:label_51
	xor	eax, eax
	mov	rsi, rcx
	call	__printf_chk
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_53
	mov	edx, 5
	call	dcgettext
	mov	rsi, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:label_54
	mov	ecx, OFFSET FLAT:label_55
	xor	eax, eax
	call	__printf_chk
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_52
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	pop	rax
	jmp	fputs_unlocked
	.section	.text
	.align	16
	#Procedure 0x401d04
	.globl sub_401d04
	.type sub_401d04, @function
sub_401d04:

	nop	word ptr cs:[rax + rax]
.label_56:
	call	abort
	.section	.text
	.align	16
	#Procedure 0x401d15
	.globl sub_401d15
	.type sub_401d15, @function
sub_401d15:

	nop	
	.section	.text
	.align	16
	#Procedure 0x401d17
	.globl quotearg_n_custom
	.type quotearg_n_custom, @function
quotearg_n_custom:

	sub	rsp, 0x38
	mov	rax, qword ptr [rip + label_29]
	mov	qword ptr [rsp + 0x30], rax
	movups	xmm0, xmmword ptr [rip + label_30]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0, xmmword ptr [rip + label_31]
	movaps	xmmword ptr [rsp + 0x10], xmm0
	movups	xmm0, xmmword ptr [rip + default_quoting_options]
	movaps	xmmword ptr [rsp], xmm0
	mov	dword ptr [rsp], 0xa
	test	rsi, rsi
	je	.label_56
	test	rdx, rdx
	je	.label_56
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
	#Procedure 0x401d80
	.globl quotearg_n
	.type quotearg_n, @function
quotearg_n:

	mov	rdx, -1
	mov	ecx, OFFSET FLAT:default_quoting_options
	jmp	quotearg_n_options
	.section	.text
	.align	16
	#Procedure 0x401d8e
	.globl sub_401d8e
	.type sub_401d8e, @function
sub_401d8e:

	nop	
	.section	.text
	.align	16
	#Procedure 0x401d90

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
	js	.label_60
	mov	eax, dword ptr [r13]
	mov	rbp, qword ptr [rip + slotvec]
	cmp	dword ptr [rip + nslots],  r12d
	mov	qword ptr [rsp + 0x18], r13
	mov	dword ptr [rsp], eax
	mov	qword ptr [rsp + 0x10], rbx
	mov	qword ptr [rsp + 8], r15
	jg	.label_63
	cmp	r12d, 0x7fffffff
	je	.label_58
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
	jne	.label_61
	movups	xmm0, xmmword ptr [rip + slotvec0]
	movups	xmmword ptr [r14], xmm0
.label_61:
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
.label_63:
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
	jbe	.label_59
	mov	rax, qword ptr [rsp + 0x18]
	mov	ebp, dword ptr [rsp]
	jmp	.label_62
.label_59:
	lea	rax, [rbp + r13]
	lea	r12, [rbp + r13 + 8]
	inc	r15
	mov	qword ptr [rax], r15
	mov	eax, OFFSET FLAT:slot0
	cmp	r14, rax
	mov	ebp, dword ptr [rsp]
	je	.label_57
	mov	rdi, r14
	call	free
.label_57:
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
.label_62:
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
.label_60:
	call	abort
.label_58:
	call	xalloc_die
	.section	.text
	.align	16
	#Procedure 0x401f4d
	.globl sub_401f4d
	.type sub_401f4d, @function
sub_401f4d:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x401f50
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
	je	.label_65
	test	r14, r14
	je	.label_64
.label_65:
	xor	esi, esi
	mov	rdi, r14
	mov	rdx, rbx
	call	memset
	mov	rax, r14
	add	rsp, 8
	pop	rbx
	pop	r14
	ret	
.label_64:
	call	xalloc_die
	.section	.text
	.align	16
	#Procedure 0x401f86
	.globl sub_401f86
	.type sub_401f86, @function
sub_401f86:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x401f90
	.globl quote_n
	.type quote_n, @function
quote_n:

	mov	rdx, -1
	mov	ecx, OFFSET FLAT:quote_quoting_options
	jmp	quotearg_n_options
	.section	.text
	.align	16
	#Procedure 0x401fa1
	.globl sub_401fa1
	.type sub_401fa1, @function
sub_401fa1:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x401fb0
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
	#Procedure 0x401fc3
	.globl sub_401fc3
	.type sub_401fc3, @function
sub_401fc3:

	nop	word ptr cs:[rax + rax]
.label_67:
	mov	ecx, 1
.label_66:
	mov	rdi, rcx
	mov	rsi, rax
	jmp	calloc
	.section	.text
	.align	16
	#Procedure 0x401fe0
	.globl sub_401fe0
	.type sub_401fe0, @function
sub_401fe0:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x401fe5

	.globl rpl_calloc
	.type rpl_calloc, @function
rpl_calloc:
	test	rdi, rdi
	mov	eax, 1
	je	.label_67
	test	rsi, rsi
	mov	ecx, 1
	je	.label_66
	mov	rax, rsi
	imul	rax, rdi
	xor	edx, edx
	div	rsi
	cmp	rax, rdi
	mov	rax, rsi
	mov	rcx, rdi
	je	.label_66
	push	rax
	call	__errno_location
	mov	dword ptr [rax], 0xc
	xor	eax, eax
	pop	rcx
	ret	
.label_68:
	call	abort
	.section	.text
	.align	16
	#Procedure 0x402025
	.globl sub_402025
	.type sub_402025, @function
sub_402025:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x402034
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
	je	.label_68
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
	#Procedure 0x402090
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
	#Procedure 0x4020a8
	.globl sub_4020a8
	.type sub_4020a8, @function
sub_4020a8:

	nop	dword ptr [rax + rax]
.label_69:
	call	abort
	.section	.text
	.align	16
	#Procedure 0x4020b5
	.globl sub_4020b5
	.type sub_4020b5, @function
sub_4020b5:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4020bd
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
	je	.label_69
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
	#Procedure 0x402120

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
	jmp	.label_79
	.section	.text
	.align	16
	#Procedure 0x4021cf
	.globl sub_4021cf
	.type sub_4021cf, @function
sub_4021cf:

	nop	
.label_76:
	cmp	r8d, 2
	setne	al
	cmp	byte ptr [rsp + 0xf], 0
	setne	dl
	mov	rsi, qword ptr [rsp + 0xa8]
	test	sil, 1
	mov	bl, byte ptr [rsp + 0x34]
	mov	rsi, qword ptr [rsp + 0xc0]
	je	.label_75
	or	al, dl
	jne	.label_75
	test	dil, 1
	jne	.label_71
	cmp	qword ptr [rsp + 0x68], 0
	je	.label_75
	test	rbp, rbp
	mov	r15d, r8d
	mov	al, bl
	mov	qword ptr [rsp + 0x48], rcx
	mov	r12d, esi
	mov	r13, qword ptr [rsp + 0x68]
	je	.label_79
	jmp	.label_75
.label_435:
	mov	r8d, 5
	test	r12b, 1
	jne	.label_88
	test	rbp, rbp
	je	.label_92
	mov	rax, qword ptr [rsp + 0x10]
	mov	byte ptr [rax], 0x22
.label_92:
	mov	r14d, 1
	jmp	.label_97
.label_436:
	mov	r13b, 1
	mov	r8d, 5
	xor	r14d, r14d
	mov	eax, OFFSET FLAT:label_99
	mov	qword ptr [rsp + 0x58], rax
	mov	eax, 1
	mov	qword ptr [rsp + 0x50], rax
	mov	sil, 1
	jmp	.label_100
.label_88:
	xor	r14d, r14d
.label_97:
	mov	eax, OFFSET FLAT:label_99
	mov	qword ptr [rsp + 0x58], rax
	mov	eax, 1
	mov	qword ptr [rsp + 0x50], rax
	mov	r13b, 1
	jmp	.label_149
	.section	.text
	.align	16
	#Procedure 0x40229f
	.globl sub_40229f
	.type sub_40229f, @function
sub_40229f:

	nop	
.label_79:
	mov	rbp, r13
	xor	r14d, r14d
	mov	ecx, r15d
	cmp	r15d, 0xa
	ja	.label_121
	mov	r8d, 7
	mov	r13b, 1
	xor	esi, esi
	mov	r10, qword ptr [rsp + 0x28]
	mov	r11, qword ptr [rsp + 0x48]
	jmp	qword ptr [(rcx * 8) + label_77]
.label_437:
	mov	r14d, edi
	mov	edi, OFFSET FLAT:label_133
	mov	esi, r15d
	mov	ebx, r9d
	call	gettext_quote
	mov	qword ptr [rsp + 0x80], rax
	mov	edi, OFFSET FLAT:label_116
	mov	esi, r15d
	call	gettext_quote
	mov	r9d, ebx
	mov	edi, r14d
	mov	qword ptr [rsp + 0x78], rax
.label_438:
	mov	byte ptr [rsp + 0x1e], dil
	mov	dword ptr [rsp + 0x60], r9d
	test	r12b, 1
	mov	r14d, 0
	mov	rcx, qword ptr [rsp + 0x80]
	jne	.label_139
	mov	al, byte ptr [rcx]
	test	al, al
	mov	r14d, 0
	je	.label_139
	xor	r14d, r14d
	nop	
.label_167:
	cmp	r14, rbp
	jae	.label_154
	mov	rdx, qword ptr [rsp + 0x10]
	mov	byte ptr [rdx + r14], al
.label_154:
	movzx	eax, byte ptr [rcx + r14 + 1]
	inc	r14
	test	al, al
	jne	.label_167
.label_139:
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
	jmp	.label_100
.label_430:
	xor	r8d, r8d
	xor	r14d, r14d
	mov	r13d, eax
	xor	esi, esi
	jmp	.label_100
.label_433:
	mov	al, 1
.label_431:
	mov	r12b, 1
.label_434:
	test	r12b, 1
	mov	cl, 1
	je	.label_173
	mov	ecx, eax
.label_173:
	mov	al, cl
.label_432:
	mov	r8d, 2
	test	r12b, 1
	jne	.label_175
	test	rbp, rbp
	je	.label_181
	mov	rcx, qword ptr [rsp + 0x10]
	mov	byte ptr [rcx], 0x27
.label_181:
	mov	r14d, 1
	jmp	.label_184
.label_175:
	xor	r14d, r14d
.label_184:
	mov	ecx, OFFSET FLAT:label_116
	mov	qword ptr [rsp + 0x58], rcx
	mov	ecx, 1
	mov	qword ptr [rsp + 0x50], rcx
	mov	r13d, eax
.label_149:
	mov	sil, r12b
.label_100:
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
	jmp	.label_190
	.section	.text
	.align	16
	#Procedure 0x402461
	.globl sub_402461
	.type sub_402461, @function
sub_402461:

	nop	word ptr cs:[rax + rax]
.label_183:
	inc	r12
.label_190:
	cmp	r11, -1
	je	.label_106
	cmp	r12, r11
	jne	.label_108
	jmp	.label_111
	.section	.text
	.align	16
	#Procedure 0x402483
	.globl sub_402483
	.type sub_402483, @function
sub_402483:

	nop	word ptr cs:[rax + rax]
.label_106:
	mov	rcx, -1
	cmp	byte ptr [r10 + r12], 0
	je	.label_73
.label_108:
	cmp	byte ptr [rsp + 0x37], 0
	je	.label_122
	mov	rax, qword ptr [rsp + 0x50]
	lea	rbx, [r12 + rax]
	cmp	rax, 2
	jb	.label_125
	cmp	r11, -1
	jne	.label_125
	mov	r15d, edi
	mov	rdi, r10
	mov	r13d, r9d
	call	strlen
	mov	r9d, r13d
	mov	r8, qword ptr [rsp + 0x38]
	mov	edi, r15d
	mov	r10, qword ptr [rsp + 0x28]
	mov	r11, rax
.label_125:
	cmp	rbx, r11
	jbe	.label_157
.label_122:
	xor	esi, esi
.label_160:
	movzx	r15d, byte ptr [r10 + r12]
	cmp	r15, 0x7e
	ja	.label_141
	xor	edx, edx
	mov	r13b, 1
	mov	cl, 0x6e
	mov	bl, 0x61
	xor	eax, eax
	jmp	qword ptr [(r15 * 8) + label_144]
.label_390:
	test	r12, r12
	jne	.label_91
	jmp	.label_148
	.section	.text
	.align	16
	#Procedure 0x402516
	.globl sub_402516
	.type sub_402516, @function
sub_402516:

	nop	word ptr cs:[rax + rax]
.label_157:
	mov	r13d, r9d
	mov	r15d, edi
	mov	rbx, r11
	lea	rdi, [r10 + r12]
	mov	rsi, qword ptr [rsp + 0x58]
	mov	rdx, qword ptr [rsp + 0x50]
	call	memcmp
	test	eax, eax
	sete	sil
	jne	.label_158
	cmp	byte ptr [rsp + 0xf], 0
	mov	r10, qword ptr [rsp + 0x28]
	mov	r11, rbx
	mov	edi, r15d
	mov	r8, qword ptr [rsp + 0x38]
	mov	r9d, r13d
	je	.label_160
	jmp	.label_113
.label_158:
	mov	r10, qword ptr [rsp + 0x28]
	mov	r11, rbx
	mov	edi, r15d
	mov	r8, qword ptr [rsp + 0x38]
	mov	r9d, r13d
	jmp	.label_160
.label_394:
	xor	eax, eax
	cmp	r11, -1
	je	.label_169
	test	r12, r12
	jne	.label_172
	cmp	r11, 1
	je	.label_148
	xor	r13d, r13d
	jmp	.label_74
.label_383:
	cmp	byte ptr [rsp + 0x1f], 0
	je	.label_177
	cmp	byte ptr [rsp + 0xf], 0
	jne	.label_113
	cmp	r8d, 2
	jne	.label_131
	mov	eax, r9d
	and	al, 1
	jne	.label_131
	cmp	r14, rbp
	jae	.label_186
	mov	rax, qword ptr [rsp + 0x10]
	mov	byte ptr [rax + r14], 0x27
.label_186:
	lea	rax, [r14 + 1]
	cmp	rax, rbp
	jae	.label_188
	mov	rcx, qword ptr [rsp + 0x10]
	mov	byte ptr [rcx + rax], 0x24
.label_188:
	lea	rax, [r14 + 2]
	cmp	rax, rbp
	jae	.label_193
	mov	rcx, qword ptr [rsp + 0x10]
	mov	byte ptr [rcx + rax], 0x27
.label_193:
	add	r14, 3
	mov	r9b, 1
.label_131:
	mov	rcx, r14
	cmp	rcx, rbp
	jae	.label_196
	mov	rax, qword ptr [rsp + 0x10]
	mov	byte ptr [rax + rcx], 0x5c
.label_196:
	lea	r14, [rcx + 1]
	mov	al, 1
	mov	r15b, 0x30
	cmp	r8d, 2
	je	.label_82
	lea	rdx, [r12 + 1]
	cmp	rdx, r11
	jae	.label_82
	mov	dl, byte ptr [r10 + rdx]
	add	dl, 0xd0
	cmp	dl, 9
	ja	.label_82
	cmp	r14, rbp
	jae	.label_136
	mov	rdx, qword ptr [rsp + 0x10]
	mov	byte ptr [rdx + r14], 0x30
.label_136:
	lea	rdx, [rcx + 2]
	cmp	rdx, rbp
	jae	.label_192
	mov	ebx, esi
	mov	rsi, qword ptr [rsp + 0x10]
	mov	byte ptr [rsi + rdx], 0x30
	mov	esi, ebx
.label_192:
	add	rcx, 3
	xor	r13d, r13d
	mov	r14, rcx
	jmp	.label_74
.label_384:
	mov	bl, 0x62
	jmp	.label_107
.label_385:
	mov	cl, 0x74
	jmp	.label_101
.label_386:
	mov	bl, 0x76
	jmp	.label_107
.label_387:
	mov	bl, 0x66
	jmp	.label_107
.label_388:
	mov	cl, 0x72
	jmp	.label_101
.label_391:
	mov	r15b, 0x27
	mov	al, 1
	mov	qword ptr [rsp + 0xa8], rax
	cmp	r8d, 2
	jne	.label_119
	cmp	byte ptr [rsp + 0xf], 0
	jne	.label_105
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
	jae	.label_126
	mov	rax, qword ptr [rsp + 0x10]
	mov	byte ptr [rax + r14], 0x27
.label_126:
	lea	rax, [r14 + 1]
	cmp	rax, rbp
	jae	.label_143
	mov	rcx, qword ptr [rsp + 0x10]
	mov	byte ptr [rcx + rax], 0x5c
.label_143:
	lea	rax, [r14 + 2]
	cmp	rax, rbp
	jae	.label_146
	mov	rcx, qword ptr [rsp + 0x10]
	mov	byte ptr [rcx + rax], 0x27
.label_146:
	add	r14, 3
	xor	r9d, r9d
.label_119:
	xor	eax, eax
	mov	r13b, 1
	jmp	.label_74
.label_392:
	mov	r15b, 0x3f
	cmp	r8d, 5
	je	.label_151
	cmp	r8d, 2
	jne	.label_91
	cmp	byte ptr [rsp + 0xf], 0
	je	.label_91
	jmp	.label_105
.label_393:
	cmp	r8d, 2
	jne	.label_162
	cmp	byte ptr [rsp + 0xf], 0
	jne	.label_105
	mov	r15b, 0x5c
	xor	eax, eax
	jmp	.label_87
.label_141:
	cmp	qword ptr [rsp + 0xb8], 1
	mov	qword ptr [rsp + 0xa0], rbp
	mov	byte ptr [rsp + 0x1e], dil
	mov	dword ptr [rsp + 0x60], r9d
	mov	dword ptr [rsp + 0x94], esi
	jne	.label_165
	mov	qword ptr [rsp + 0x48], r11
	call	__ctype_b_loc
	mov	r10, qword ptr [rsp + 0x28]
	mov	rax, qword ptr [rax]
	movzx	r13d, word ptr [rax + r15*2]
	shr	r13d, 0xe
	and	r13b, 1
	mov	ebx, 1
	jmp	.label_174
.label_169:
	test	r12, r12
	jne	.label_185
	mov	cl, byte ptr [r10 + 1]
	test	cl, cl
	jne	.label_185
.label_148:
	mov	dl, 1
.label_389:
	cmp	byte ptr [rsp + 0x27], 0
	je	.label_105
	xor	eax, eax
	mov	r13b, dl
.label_74:
	cmp	byte ptr [rsp + 0x36], 0
	je	.label_191
	cmp	qword ptr [rsp + 0x100], 0
	jne	.label_194
	jmp	.label_70
	.section	.text
	.align	16
	#Procedure 0x4027f4
	.globl sub_4027f4
	.type sub_4027f4, @function
sub_4027f4:

	nop	word ptr cs:[rax + rax]
.label_191:
	cmp	byte ptr [rsp + 0x35], 0
	je	.label_70
.label_194:
	mov	ecx, r15d
	shr	cl, 5
	movzx	edx, cl
	mov	ebx, esi
	mov	esi, 1
	mov	ecx, r15d
	shl	esi, cl
	test	bl, bl
	jne	.label_72
	mov	rcx, qword ptr [rsp + 0x100]
	and	esi, dword ptr [rcx + rdx*4]
	jmp	.label_81
	.section	.text
	.align	16
	#Procedure 0x40282d
	.globl sub_40282d
	.type sub_40282d, @function
sub_40282d:

	nop	dword ptr [rax]
.label_70:
	test	sil, sil
.label_81:
	mov	ebx, r15d
	je	.label_86
	jmp	.label_90
.label_72:
	mov	ebx, r15d
	jmp	.label_90
.label_177:
	cmp	dword ptr [rsp + 0x9c], 0
	jne	.label_183
	xor	r15d, r15d
	jmp	.label_91
.label_162:
	mov	cl, 0x5c
	cmp	byte ptr [rsp + 0x32], 0
	je	.label_101
	xor	eax, eax
	mov	r15b, 0x5c
.label_87:
	xor	r13d, r13d
	jmp	.label_86
.label_101:
	cmp	byte ptr [rsp + 0x27], 0
	mov	ebx, ecx
	je	.label_105
.label_107:
	xor	eax, eax
	cmp	byte ptr [rsp + 0x1f], 0
	mov	r13d, 0
	je	.label_74
	nop	
.label_90:
	cmp	byte ptr [rsp + 0xf], 0
	jne	.label_113
	cmp	r8d, 2
	jne	.label_120
	mov	eax, r9d
	and	al, 1
	jne	.label_120
	cmp	r14, rbp
	jae	.label_124
	mov	rax, qword ptr [rsp + 0x10]
	mov	byte ptr [rax + r14], 0x27
.label_124:
	lea	rax, [r14 + 1]
	cmp	rax, rbp
	jae	.label_127
	mov	rcx, qword ptr [rsp + 0x10]
	mov	byte ptr [rcx + rax], 0x24
.label_127:
	lea	rax, [r14 + 2]
	cmp	rax, rbp
	jae	.label_132
	mov	rcx, qword ptr [rsp + 0x10]
	mov	byte ptr [rcx + rax], 0x27
.label_132:
	add	r14, 3
	mov	r9b, 1
.label_120:
	cmp	r14, rbp
	jae	.label_140
	mov	rax, qword ptr [rsp + 0x10]
	mov	byte ptr [rax + r14], 0x5c
.label_140:
	inc	r14
	jmp	.label_178
.label_165:
	mov	qword ptr [rsp + 0x70], 0
	cmp	r11, -1
	jne	.label_145
	mov	rdi, r10
	call	strlen
	mov	r10, qword ptr [rsp + 0x28]
	mov	r11, rax
.label_145:
	cmp	byte ptr [rsp + 0x31], 0
	mov	qword ptr [rsp + 0x48], r11
	mov	qword ptr [rsp + 0x88], r12
	je	.label_115
	lea	rax, [r10 + r12]
	mov	qword ptr [rsp + 0xb0], rax
	mov	r13b, 1
	xor	r12d, r12d
	lea	rbp, [rsp + 0x70]
.label_80:
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
	je	.label_128
	cmp	rbx, -1
	mov	r10, qword ptr [rsp + 0x28]
	movabs	rsi, 0x20000002b
	je	.label_170
	test	rbx, rbx
	mov	r11, qword ptr [rsp + 0x48]
	je	.label_103
	cmp	rbx, 2
	mov	rbp, qword ptr [rsp + 0xa0]
	jb	.label_179
	mov	rax, qword ptr [rsp + 0x40]
	mov	rcx, qword ptr [rsp + 0xb0]
	lea	rax, [rcx + rax]
	mov	ecx, 1
	nop	dword ptr [rax]
.label_94:
	movsx	edx, byte ptr [rax + rcx]
	add	edx, -0x5b
	cmp	edx, 0x21
	ja	.label_182
	bt	rsi, rdx
	jb	.label_105
.label_182:
	inc	rcx
	cmp	rcx, rbx
	jb	.label_94
.label_179:
	mov	edi, dword ptr [rsp + 0x64]
	call	iswprint
	test	eax, eax
	jne	.label_93
	xor	r13d, r13d
.label_93:
	lea	rbp, [rsp + 0x70]
	mov	r12, qword ptr [rsp + 0x40]
	add	r12, rbx
	mov	rdi, rbp
	call	mbsinit
	test	eax, eax
	mov	r10, qword ptr [rsp + 0x28]
	mov	r11, qword ptr [rsp + 0x48]
	je	.label_80
	jmp	.label_83
.label_82:
	xor	r13d, r13d
	jmp	.label_74
.label_185:
	mov	r11, -1
	xor	r13d, r13d
	jmp	.label_74
.label_151:
	cmp	dword ptr [rsp + 0x98], 0
	je	.label_91
	lea	rcx, [r12 + 2]
	cmp	rcx, r11
	jae	.label_91
	cmp	byte ptr [r10 + r12 + 1], 0x3f
	jne	.label_91
	movsx	edx, byte ptr [r10 + rcx]
	xor	eax, eax
	cmp	edx, 0x3e
	ja	.label_104
	mov	ebx, esi
	movabs	rsi, 0x7000a38200000000
	bt	rsi, rdx
	jae	.label_137
	cmp	byte ptr [rsp + 0xf], 0
	jne	.label_114
	cmp	r14, rbp
	jae	.label_117
	mov	rax, qword ptr [rsp + 0x10]
	mov	byte ptr [rax + r14], 0x3f
.label_117:
	lea	rax, [r14 + 1]
	cmp	rax, rbp
	jae	.label_123
	mov	rsi, qword ptr [rsp + 0x10]
	mov	byte ptr [rsi + rax], 0x22
.label_123:
	lea	rax, [r14 + 2]
	cmp	rax, rbp
	jae	.label_95
	mov	rsi, qword ptr [rsp + 0x10]
	mov	byte ptr [rsi + rax], 0x22
.label_95:
	lea	rax, [r14 + 3]
	cmp	rax, rbp
	jae	.label_142
	mov	rsi, qword ptr [rsp + 0x10]
	mov	byte ptr [rsi + rax], 0x3f
.label_142:
	add	r14, 4
	xor	eax, eax
	mov	r12, rcx
	mov	r15b, dl
.label_137:
	xor	r13d, r13d
	mov	esi, ebx
	jmp	.label_74
.label_91:
	xor	eax, eax
.label_172:
	xor	r13d, r13d
	jmp	.label_74
.label_115:
	mov	r13b, 1
	xor	r12d, r12d
	lea	rbx, [rsp + 0x70]
	nop	word ptr cs:[rax + rax]
.label_168:
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
	je	.label_159
	cmp	rbp, -1
	je	.label_161
	cmp	rbp, -2
	je	.label_128
	mov	edi, dword ptr [rsp + 0x64]
	call	iswprint
	test	eax, eax
	mov	r12, qword ptr [rsp + 0x40]
	jne	.label_163
	xor	r13d, r13d
.label_163:
	add	r12, rbp
	lea	rbx, [rsp + 0x70]
	mov	rdi, rbx
	call	mbsinit
	test	eax, eax
	mov	r10, qword ptr [rsp + 0x28]
	mov	r11, qword ptr [rsp + 0x48]
	je	.label_168
	jmp	.label_83
.label_128:
	mov	r10, qword ptr [rsp + 0x28]
	mov	rsi, qword ptr [rsp + 0x40]
	lea	rax, [rsi + r12]
	mov	rdx, qword ptr [rsp + 0x48]
	cmp	rax, rdx
	jae	.label_110
	lea	rax, [r10 + r12]
.label_155:
	cmp	byte ptr [rax + rsi], 0
	je	.label_110
	lea	rcx, [r12 + rsi + 1]
	inc	rsi
	cmp	rcx, rdx
	jb	.label_155
.label_110:
	mov	qword ptr [rsp + 0x40], rsi
.label_170:
	xor	r13d, r13d
	jmp	.label_103
.label_161:
	xor	r13d, r13d
.label_159:
	mov	r10, qword ptr [rsp + 0x28]
.label_103:
	mov	r12, qword ptr [rsp + 0x40]
.label_83:
	mov	rbx, r12
	mov	r12, qword ptr [rsp + 0x88]
.label_174:
	and	r13b, 1
	mov	eax, r13d
	or	al, byte ptr [rsp + 0x33]
	cmp	rbx, 1
	mov	rbp, qword ptr [rsp + 0xa0]
	mov	dil, byte ptr [rsp + 0x1e]
	mov	r8, qword ptr [rsp + 0x38]
	mov	r9d, dword ptr [rsp + 0x60]
	mov	esi, dword ptr [rsp + 0x94]
	ja	.label_85
	test	al, al
	je	.label_85
	xor	eax, eax
	mov	r11, qword ptr [rsp + 0x48]
	jmp	.label_74
.label_85:
	mov	byte ptr [rsp + 0x40], al
	add	rbx, r12
	xor	eax, eax
	mov	r11, qword ptr [rsp + 0x48]
	jmp	.label_78
	.section	.text
	.align	16
	#Procedure 0x402c27
	.globl sub_402c27
	.type sub_402c27, @function
sub_402c27:

	nop	word ptr [rax + rax]
.label_171:
	inc	r14
	mov	r15b, byte ptr [r10 + r12 + 1]
	mov	r12, rdx
.label_78:
	cmp	byte ptr [rsp + 0x40], 0
	je	.label_89
	test	sil, 1
	je	.label_102
	cmp	r14, rbp
	jae	.label_96
	mov	rdx, qword ptr [rsp + 0x10]
	mov	byte ptr [rdx + r14], 0x5c
.label_96:
	inc	r14
	xor	esi, esi
	jmp	.label_102
	.section	.text
	.align	16
	#Procedure 0x402c65
	.globl sub_402c65
	.type sub_402c65, @function
sub_402c65:

	nop	word ptr cs:[rax + rax]
.label_89:
	cmp	byte ptr [rsp + 0xf], 0
	jne	.label_113
	cmp	r8d, 2
	jne	.label_147
	mov	eax, r9d
	and	al, 1
	jne	.label_147
	cmp	r14, rbp
	jae	.label_112
	mov	rax, qword ptr [rsp + 0x10]
	mov	byte ptr [rax + r14], 0x27
.label_112:
	lea	rax, [r14 + 1]
	cmp	rax, rbp
	jae	.label_118
	mov	rdx, qword ptr [rsp + 0x10]
	mov	byte ptr [rdx + rax], 0x24
.label_118:
	lea	rax, [r14 + 2]
	cmp	rax, rbp
	jae	.label_84
	mov	rdx, qword ptr [rsp + 0x10]
	mov	byte ptr [rdx + rax], 0x27
.label_84:
	add	r14, 3
	mov	r9b, 1
.label_147:
	cmp	r14, rbp
	jae	.label_130
	mov	rax, qword ptr [rsp + 0x10]
	mov	byte ptr [rax + r14], 0x5c
.label_130:
	lea	rax, [r14 + 1]
	cmp	rax, rbp
	jae	.label_135
	mov	edx, r15d
	shr	dl, 6
	or	dl, 0x30
	mov	ecx, esi
	mov	rsi, qword ptr [rsp + 0x10]
	mov	byte ptr [rsi + rax], dl
	mov	esi, ecx
.label_135:
	lea	rax, [r14 + 2]
	cmp	rax, rbp
	jae	.label_166
	mov	edx, r15d
	shr	dl, 3
	and	dl, 7
	or	dl, 0x30
	mov	ecx, esi
	mov	rsi, qword ptr [rsp + 0x10]
	mov	byte ptr [rsi + rax], dl
	mov	esi, ecx
.label_166:
	add	r14, 3
	and	r15b, 7
	or	r15b, 0x30
	mov	al, 1
.label_102:
	lea	rdx, [r12 + 1]
	cmp	rbx, rdx
	jbe	.label_86
	test	r9b, 1
	je	.label_152
	mov	rcx, rbx
	mov	ebx, eax
	and	bl, 1
	jne	.label_150
	mov	r8, r12
	mov	r12d, esi
	cmp	r14, rbp
	jae	.label_156
	mov	rsi, qword ptr [rsp + 0x10]
	mov	byte ptr [rsi + r14], 0x27
.label_156:
	lea	rsi, [r14 + 1]
	cmp	rsi, rbp
	jae	.label_187
	mov	rbx, qword ptr [rsp + 0x10]
	mov	byte ptr [rbx + rsi], 0x27
.label_187:
	add	r14, 2
	xor	r9d, r9d
	mov	esi, r12d
	mov	rbx, rcx
	mov	r12, r8
	mov	r8, qword ptr [rsp + 0x38]
	jmp	.label_152
	.section	.text
	.align	16
	#Procedure 0x402d76
	.globl sub_402d76
	.type sub_402d76, @function
sub_402d76:

	nop	word ptr cs:[rax + rax]
.label_150:
	mov	rbx, rcx
.label_152:
	cmp	r14, rbp
	jae	.label_171
	mov	ecx, esi
	mov	rsi, qword ptr [rsp + 0x10]
	mov	byte ptr [rsi + r14], r15b
	mov	esi, ecx
	jmp	.label_171
	.section	.text
	.align	16
	#Procedure 0x402d9e
	.globl sub_402d9e
	.type sub_402d9e, @function
sub_402d9e:

	nop	
.label_86:
	test	r9b, 1
	je	.label_176
	and	al, 1
	jne	.label_176
	cmp	r14, rbp
	jae	.label_180
	mov	rax, qword ptr [rsp + 0x10]
	mov	byte ptr [rax + r14], 0x27
.label_180:
	lea	rax, [r14 + 1]
	cmp	rax, rbp
	jae	.label_98
	mov	rcx, qword ptr [rsp + 0x10]
	mov	byte ptr [rcx + rax], 0x27
.label_98:
	add	r14, 2
	xor	r9d, r9d
.label_176:
	mov	ebx, r15d
.label_178:
	cmp	r14, rbp
	jae	.label_189
	mov	rax, qword ptr [rsp + 0x10]
	mov	byte ptr [rax + r14], bl
.label_189:
	inc	r14
	shl	r13b, 7
	sar	r13b, 7
	and	r13b, dil
	mov	edi, r13d
	jmp	.label_183
.label_104:
	xor	r13d, r13d
	jmp	.label_74
	.section	.text
	.align	16
	#Procedure 0x402e01
	.globl sub_402e01
	.type sub_402e01, @function
sub_402e01:

	nop	word ptr cs:[rax + rax]
.label_111:
	mov	rcx, r12
.label_73:
	cmp	r8d, 2
	setne	al
	test	r14, r14
	setne	dl
	cmp	byte ptr [rsp + 0xf], 0
	je	.label_76
	or	al, dl
	jne	.label_76
	mov	r11, rcx
	jmp	.label_113
.label_105:
	mov	eax, 2
.label_164:
	mov	qword ptr [rsp + 0x38], rax
.label_113:
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
.label_129:
	mov	r14, rax
.label_153:
	mov	rax, r14
	add	rsp, 0xc8
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_75:
	mov	rdx, qword ptr [rsp + 0x58]
	test	rdx, rdx
	je	.label_195
	cmp	byte ptr [rsp + 0xf], 0
	mov	rcx, qword ptr [rsp + 0x10]
	jne	.label_109
	mov	al, byte ptr [rdx]
	test	al, al
	je	.label_109
	inc	rdx
	nop	dword ptr [rax + rax]
.label_138:
	cmp	r14, rbp
	jae	.label_134
	mov	byte ptr [rcx + r14], al
.label_134:
	inc	r14
	movzx	eax, byte ptr [rdx]
	inc	rdx
	test	al, al
	jne	.label_138
	jmp	.label_109
.label_71:
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
	jmp	.label_129
.label_195:
	mov	rcx, qword ptr [rsp + 0x10]
.label_109:
	cmp	r14, rbp
	jae	.label_153
	mov	byte ptr [rcx + r14], 0
	jmp	.label_153
.label_114:
	mov	eax, 5
	jmp	.label_164
.label_121:
	call	abort
	.section	.text
	.align	16
	#Procedure 0x402f50

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
	#Procedure 0x402f67
	.globl sub_402f67
	.type sub_402f67, @function
sub_402f67:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x402f70
	.globl close_stdout_set_ignore_EPIPE
	.type close_stdout_set_ignore_EPIPE, @function
close_stdout_set_ignore_EPIPE:

	mov	byte ptr [rip + ignore_EPIPE],  dil
	ret	
	.section	.text
	.align	16
	#Procedure 0x402f78
	.globl sub_402f78
	.type sub_402f78, @function
sub_402f78:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x402f80
	.globl quotearg_custom
	.type quotearg_custom, @function
quotearg_custom:

	sub	rsp, 0x38
	mov	rax, rdx
	mov	rcx, qword ptr [rip + label_29]
	mov	qword ptr [rsp + 0x30], rcx
	movups	xmm0, xmmword ptr [rip + label_30]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0, xmmword ptr [rip + label_31]
	movaps	xmmword ptr [rsp + 0x10], xmm0
	movups	xmm0, xmmword ptr [rip + default_quoting_options]
	movaps	xmmword ptr [rsp], xmm0
	mov	dword ptr [rsp], 0xa
	test	rdi, rdi
	je	.label_197
	test	rsi, rsi
	je	.label_197
	mov	qword ptr [rsp + 0x28], rdi
	mov	qword ptr [rsp + 0x30], rsi
	lea	rcx, [rsp]
	xor	edi, edi
	mov	rdx, -1
	mov	rsi, rax
	call	quotearg_n_options
	add	rsp, 0x38
	ret	
.label_197:
	call	abort
	.section	.text
	.align	16
	#Procedure 0x402ff0

	.globl hard_locale
	.type hard_locale, @function
hard_locale:
	push	rbx
	xor	esi, esi
	call	setlocale
	mov	bl, 1
	test	rax, rax
	je	.label_199
	cmp	byte ptr [rax], 0x43
	jne	.label_201
	cmp	byte ptr [rax + 1], 0
	je	.label_198
.label_201:
	mov	esi, OFFSET FLAT:label_200
	mov	rdi, rax
	call	strcmp
	test	eax, eax
	jne	.label_199
.label_198:
	xor	ebx, ebx
.label_199:
	mov	eax, ebx
	pop	rbx
	ret	
	.section	.text
	.align	16
	#Procedure 0x403021
	.globl sub_403021
	.type sub_403021, @function
sub_403021:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x403030
	.globl xcalloc
	.type xcalloc, @function
xcalloc:

	push	rax
	movabs	rax, 0x7fffffffffffffff
	xor	edx, edx
	div	rsi
	cmp	rax, rdi
	jb	.label_202
	call	rpl_calloc
	test	rax, rax
	je	.label_202
	pop	rcx
	ret	
.label_202:
	call	xalloc_die
	.section	.text
	.align	16
	#Procedure 0x403056
	.globl sub_403056
	.type sub_403056, @function
sub_403056:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x403060
	.globl quote_n_mem
	.type quote_n_mem, @function
quote_n_mem:

	mov	ecx, OFFSET FLAT:quote_quoting_options
	jmp	quotearg_n_options
	.section	.text
	.align	16
	#Procedure 0x40306a
	.globl sub_40306a
	.type sub_40306a, @function
sub_40306a:

	nop	word ptr [rax + rax]
.label_207:
	call	xalloc_die
	.section	.text
	.align	16
	#Procedure 0x403075
	.globl sub_403075
	.type sub_403075, @function
sub_403075:

	nop	word ptr [rax + rax]
.label_205:
	mov	rsi, rbx
	call	realloc
	test	rbx, rbx
	je	.label_203
	test	rax, rax
	je	.label_204
.label_203:
	pop	rbx
	ret	
.label_204:
	call	xalloc_die
.label_206:
	test	rcx, rcx
	jne	.label_208
	mov	eax, 0x80
	xor	edx, edx
	div	rbx
	xor	ecx, ecx
	cmp	rbx, 0x80
	seta	cl
	add	rcx, rax
.label_208:
	movabs	rax, 0x7fffffffffffffff
	xor	edx, edx
	div	rbx
	cmp	rax, rcx
	jb	.label_207
.label_209:
	mov	qword ptr [rsi], rcx
	imul	rbx, rcx
	test	rdi, rdi
	je	.label_205
	test	rbx, rbx
	jne	.label_205
	call	free
	xor	eax, eax
	pop	rbx
	ret	
	.section	.text
	.align	16
	#Procedure 0x4030e3
	.globl x2nrealloc
	.type x2nrealloc, @function
x2nrealloc:

	push	rbx
	mov	rbx, rdx
	mov	rcx, qword ptr [rsi]
	test	rdi, rdi
	je	.label_206
	movabs	rax, 0x5555555555555554
	xor	edx, edx
	div	rbx
	cmp	rax, rcx
	jbe	.label_204
	mov	rax, rcx
	shr	rax, 1
	lea	rcx, [rcx + rax + 1]
	jmp	.label_209
	.section	.text
	.align	16
	#Procedure 0x403110

	.globl xrealloc
	.type xrealloc, @function
xrealloc:
	push	rbx
	mov	rbx, rsi
	test	rdi, rdi
	je	.label_210
	test	rbx, rbx
	jne	.label_210
	call	free
	xor	eax, eax
	pop	rbx
	ret	
.label_210:
	mov	rsi, rbx
	call	realloc
	test	rbx, rbx
	je	.label_212
	test	rax, rax
	je	.label_211
.label_212:
	pop	rbx
	ret	
.label_211:
	call	xalloc_die
	.section	.text
	.align	16
	#Procedure 0x403140

	.globl version_etc
	.type version_etc, @function
version_etc:
	sub	rsp, 0xd8
	test	al, al
	je	.label_213
	movaps	xmmword ptr [rsp + 0x50], xmm0
	movaps	xmmword ptr [rsp + 0x60], xmm1
	movaps	xmmword ptr [rsp + 0x70], xmm2
	movaps	xmmword ptr [rsp + 0x80], xmm3
	movaps	xmmword ptr [rsp + 0x90], xmm4
	movaps	xmmword ptr [rsp + 0xa0], xmm5
	movaps	xmmword ptr [rsp + 0xb0], xmm6
	movaps	xmmword ptr [rsp + 0xc0], xmm7
.label_213:
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
	#Procedure 0x4031c3
	.globl sub_4031c3
	.type sub_4031c3, @function
sub_4031c3:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4031d0

	.globl close_stdout
	.type close_stdout, @function
close_stdout:
	push	rbp
	push	rbx
	push	rax
	mov	rdi, qword ptr [rip + stdout]
	call	close_stream
	test	eax, eax
	je	.label_219
	mov	bl, byte ptr [rip + ignore_EPIPE]
	call	__errno_location
	mov	rbp, rax
	cmp	bl, 0
	je	.label_216
	cmp	dword ptr [rbp], 0x20
	jne	.label_216
.label_219:
	mov	rdi, qword ptr [rip + stderr]
	call	close_stream
	test	eax, eax
	jne	.label_215
	add	rsp, 8
	pop	rbx
	pop	rbp
	ret	
.label_216:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_217
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
	mov	rdi, qword ptr [rip + file_name]
	test	rdi, rdi
	mov	ebp, dword ptr [rbp]
	jne	.label_214
	xor	edi, edi
	mov	edx, OFFSET FLAT:label_49
	xor	eax, eax
	mov	esi, ebp
	mov	rcx, rbx
	call	error
	mov	edi, dword ptr [rip + exit_failure]
	call	_exit
.label_215:
	mov	edi, dword ptr [rip + exit_failure]
	call	_exit
.label_214:
	call	quotearg_colon
	mov	rcx, rax
	xor	edi, edi
	mov	edx, OFFSET FLAT:label_218
	xor	eax, eax
	mov	esi, ebp
	mov	r8, rbx
	call	error
	mov	edi, dword ptr [rip + exit_failure]
	call	_exit
	nop	dword ptr [rax]
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x403290

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
	mov	edi, OFFSET FLAT:label_253
	call	getenv
	mov	r14, rax
	mov	bl, 1
	test	r14, r14
	je	.label_260
	cmp	r15d, 2
	jl	.label_261
	mov	rcx, qword ptr [r13 + 8]
	movzx	edx, byte ptr [rcx]
	mov	eax, 0x2d
	sub	eax, edx
	jne	.label_263
	movzx	edx, byte ptr [rcx + 1]
	mov	eax, 0x6e
	sub	eax, edx
	jne	.label_263
	movzx	eax, byte ptr [rcx + 2]
	neg	eax
.label_263:
	test	eax, eax
	sete	bl
	jmp	.label_260
.label_261:
	xor	ebx, ebx
.label_260:
	mov	rdi, qword ptr [r13]
	call	set_program_name
	mov	edi, 6
	mov	esi, OFFSET FLAT:label_273
	call	setlocale
	mov	edi, OFFSET FLAT:label_220
	mov	esi, OFFSET FLAT:label_221
	call	bindtextdomain
	mov	edi, OFFSET FLAT:label_220
	call	textdomain
	mov	edi, OFFSET FLAT:close_stdout
	call	atexit
	add	r13, 8
	cmp	r15d, 2
	jne	.label_228
	test	bl, bl
	je	.label_228
	mov	r12, qword ptr [r13]
	mov	esi, OFFSET FLAT:label_232
	mov	rdi, r12
	call	strcmp
	test	eax, eax
	je	.label_236
	mov	esi, OFFSET FLAT:label_239
	mov	rdi, r12
	call	strcmp
	test	eax, eax
	je	.label_243
.label_228:
	lea	r12d, [r15 - 1]
	cmp	r15d, 1
	setg	al
	and	al, bl
	mov	r15b, 1
	cmp	al, 1
	jne	.label_275
	xor	eax, eax
	movabs	rdx, 0x20100000001
	mov	ecx, r12d
.label_248:
	mov	rdi, qword ptr [r13]
	cmp	byte ptr [rdi], 0x2d
	jne	.label_254
	mov	bl, byte ptr [rdi + 1]
	test	bl, bl
	je	.label_254
	lea	rsi, [rdi + 1]
	xor	ebp, ebp
	nop	word ptr cs:[rax + rax]
.label_264:
	movsx	ebx, bl
	add	ebx, -0x45
	cmp	ebx, 0x29
	ja	.label_254
	bt	rdx, rbx
	jae	.label_254
	movzx	ebx, byte ptr [rdi + rbp + 2]
	inc	rbp
	test	bl, bl
	jne	.label_264
	test	rbp, rbp
	jne	.label_265
	jmp	.label_254
.label_271:
	mov	al, 1
	nop	word ptr cs:[rax + rax]
.label_265:
	movsx	edi, byte ptr [rsi]
	test	edi, edi
	je	.label_267
	inc	rsi
	cmp	edi, 0x6e
	je	.label_269
	cmp	edi, 0x65
	je	.label_271
	cmp	edi, 0x45
	jne	.label_265
	xor	eax, eax
	jmp	.label_265
.label_269:
	xor	r15d, r15d
	jmp	.label_265
	.section	.text
	.align	16
	#Procedure 0x403402
	.globl sub_403402
	.type sub_403402, @function
sub_403402:

	nop	word ptr cs:[rax + rax]
.label_267:
	lea	r12d, [rcx - 1]
	add	r13, 8
	cmp	ecx, 1
	mov	ecx, r12d
	jg	.label_248
	jmp	.label_227
.label_275:
	xor	eax, eax
	jmp	.label_227
.label_254:
	mov	r12d, ecx
.label_227:
	test	r14, r14
	jne	.label_229
	and	al, 1
	jne	.label_229
	test	r12d, r12d
	jle	.label_230
	inc	r12d
	jmp	.label_235
	.section	.text
	.align	16
	#Procedure 0x403444
	.globl sub_403444
	.type sub_403444, @function
sub_403444:

	nop	word ptr cs:[rax + rax]
.label_250:
	mov	rdi, qword ptr [rip + stdout]
	mov	rax, qword ptr [rdi + 0x28]
	cmp	rax, qword ptr [rdi + 0x30]
	jae	.label_241
	lea	rcx, [rax + 1]
	mov	qword ptr [rdi + 0x28], rcx
	mov	byte ptr [rax], 0x20
.label_231:
	add	r13, 8
	dec	r12d
	cmp	r12d, 1
	jg	.label_235
	jmp	.label_230
.label_241:
	mov	esi, 0x20
	call	__overflow
	jmp	.label_231
	.section	.text
	.align	16
	#Procedure 0x40348a
	.globl sub_40348a
	.type sub_40348a, @function
sub_40348a:

	nop	word ptr [rax + rax]
.label_235:
	mov	rdi, qword ptr [r13]
	mov	rsi, qword ptr [rip + stdout]
	call	fputs_unlocked
	cmp	r12d, 2
	jne	.label_250
	jmp	.label_230
.label_229:
	test	r12d, r12d
	jle	.label_230
	mov	dword ptr [rsp + 0x14], r15d
	jmp	.label_245
	.section	.text
	.align	16
	#Procedure 0x4034bb
	.globl sub_4034bb
	.type sub_4034bb, @function
sub_4034bb:

	nop	dword ptr [rax + rax]
.label_237:
	lea	rcx, [rax + 1]
	mov	qword ptr [rdi + 0x28], rcx
	mov	byte ptr [rax], 0x20
.label_245:
	mov	rbx, qword ptr [r13]
	jmp	.label_222
	.section	.text
	.align	16
	#Procedure 0x4034d1
	.globl sub_4034d1
	.type sub_4034d1, @function
sub_4034d1:

	nop	word ptr cs:[rax + rax]
.label_272:
	lea	rdx, [rcx + 1]
	mov	qword ptr [rdi + 0x28], rdx
	mov	byte ptr [rcx], al
	mov	rbx, rbp
.label_222:
	lea	rbp, [rbx + 1]
	mov	al, byte ptr [rbx]
	cmp	al, 0x5c
	je	.label_270
	test	al, al
	jne	.label_224
	jmp	.label_274
	.section	.text
	.align	16
	#Procedure 0x403504
	.globl sub_403504
	.type sub_403504, @function
sub_403504:

	nop	word ptr cs:[rax + rax]
.label_270:
	mov	r14b, byte ptr [rbp]
	mov	al, 0x5c
	test	r14b, r14b
	je	.label_224
	lea	rbp, [rbx + 2]
	mov	ecx, r14d
	add	cl, 0xd0
	movzx	ecx, cl
	cmp	cl, 0x48
	ja	.label_226
	jmp	qword ptr [(rcx * 8) + label_233]
.label_358:
	mov	r14b, byte ptr [rbp]
	mov	eax, r14d
	and	al, 0xf8
	cmp	al, 0x30
	jne	.label_234
	add	rbx, 3
	mov	rbp, rbx
.label_359:
	mov	al, r14b
	add	al, 0xd0
	movzx	ecx, byte ptr [rbp]
	mov	edx, ecx
	and	dl, 0xf8
	cmp	dl, 0x30
	jne	.label_240
	shl	al, 3
	add	cl, al
	mov	al, cl
	add	al, 0xd0
	movzx	ecx, byte ptr [rbp + 1]
	inc	rbp
.label_240:
	mov	edx, ecx
	and	dl, 0xf8
	cmp	dl, 0x30
	jne	.label_224
	shl	al, 3
	inc	rbp
	add	cl, al
	add	cl, 0xd0
	mov	al, cl
	jmp	.label_224
.label_360:
	mov	al, 7
	jmp	.label_224
.label_361:
	mov	al, 8
	jmp	.label_224
.label_362:
	mov	al, 0x1b
	jmp	.label_224
.label_363:
	mov	al, 0xc
	jmp	.label_224
.label_364:
	mov	al, 0xa
	jmp	.label_224
.label_365:
	mov	al, 0xd
	jmp	.label_224
.label_366:
	mov	al, 9
	jmp	.label_224
.label_367:
	mov	al, 0xb
	jmp	.label_224
.label_368:
	movzx	r15d, byte ptr [rbp]
	call	__ctype_b_loc
	mov	rax, qword ptr [rax]
	test	byte ptr [rax + r15*2 + 1], 0x10
	jne	.label_266
	mov	r14b, 0x78
	mov	eax, 0x11
	mov	r15d, dword ptr [rsp + 0x14]
	jmp	.label_268
.label_234:
	xor	eax, eax
	jmp	.label_224
.label_266:
	lea	rbp, [rbx + 3]
	mov	ecx, r15d
	add	cl, 0xbf
	movzx	ecx, cl
	cmp	cl, 0x25
	ja	.label_244
	mov	r14d, 0xa
	jmp	qword ptr [(rcx * 8) + label_223]
.label_463:
	mov	r14d, 0xb
	jmp	.label_225
.label_464:
	mov	r14d, 0xc
	jmp	.label_225
.label_465:
	mov	r14d, 0xd
	jmp	.label_225
.label_466:
	mov	r14d, 0xe
	jmp	.label_225
.label_467:
	mov	r14d, 0xf
	jmp	.label_225
.label_244:
	add	r15d, -0x30
	mov	r14d, r15d
.label_225:
	movzx	ecx, byte ptr [rbp]
	test	byte ptr [rax + rcx*2 + 1], 0x10
	jne	.label_238
	mov	r15d, dword ptr [rsp + 0x14]
	jmp	.label_242
.label_238:
	shl	r14d, 4
	mov	eax, ecx
	add	al, 0xbf
	movzx	edx, al
	cmp	dl, 0x25
	mov	r15d, dword ptr [rsp + 0x14]
	ja	.label_246
	mov	eax, 0xa
	jmp	qword ptr [(rdx * 8) + label_252]
.label_423:
	mov	eax, 0xb
	jmp	.label_255
.label_424:
	mov	eax, 0xc
	jmp	.label_255
.label_425:
	mov	eax, 0xd
	jmp	.label_255
.label_426:
	mov	eax, 0xe
	jmp	.label_255
.label_427:
	mov	eax, 0xf
	jmp	.label_255
.label_246:
	add	ecx, -0x30
	mov	eax, ecx
.label_255:
	add	rbx, 4
	add	r14d, eax
	mov	rbp, rbx
.label_242:
	xor	eax, eax
.label_268:
	mov	ecx, eax
	and	cl, 0x1f
	je	.label_247
	cmp	cl, 0x11
	jne	.label_262
.label_226:
	mov	rdi, qword ptr [rip + stdout]
	mov	rax, qword ptr [rdi + 0x28]
	cmp	rax, qword ptr [rdi + 0x30]
	jae	.label_256
	lea	rcx, [rax + 1]
	mov	qword ptr [rdi + 0x28], rcx
	mov	byte ptr [rax], 0x5c
.label_247:
	mov	al, r14b
	nop	word ptr cs:[rax + rax]
.label_224:
	mov	rdi, qword ptr [rip + stdout]
	mov	rcx, qword ptr [rdi + 0x28]
	cmp	rcx, qword ptr [rdi + 0x30]
	jb	.label_272
	movzx	esi, al
	call	__overflow
	mov	rbx, rbp
	jmp	.label_222
.label_256:
	mov	esi, 0x5c
	call	__overflow
	jmp	.label_247
	nop	word ptr cs:[rax + rax]
.label_274:
	cmp	r12d, 2
	jl	.label_230
	dec	r12d
	add	r13, 8
	mov	rdi, qword ptr [rip + stdout]
	mov	rax, qword ptr [rdi + 0x28]
	cmp	rax, qword ptr [rdi + 0x30]
	jb	.label_237
	mov	esi, 0x20
	call	__overflow
	jmp	.label_245
.label_262:
	test	eax, eax
	je	.label_245
	jmp	.label_249
.label_230:
	test	r15b, 1
	je	.label_249
	mov	rdi, qword ptr [rip + stdout]
	mov	rax, qword ptr [rdi + 0x28]
	cmp	rax, qword ptr [rdi + 0x30]
	jae	.label_251
	lea	rcx, [rax + 1]
	mov	qword ptr [rdi + 0x28], rcx
	mov	byte ptr [rax], 0xa
	jmp	.label_249
.label_243:
	mov	rdi, qword ptr [rip + stdout]
	mov	rcx, qword ptr [rip + Version]
	mov	qword ptr [rsp], 0
	mov	esi, OFFSET FLAT:label_257
	mov	edx, OFFSET FLAT:label_54
	mov	r8d, OFFSET FLAT:label_258
	mov	r9d, OFFSET FLAT:label_259
	xor	eax, eax
	call	version_etc
.label_249:
	xor	eax, eax
	add	rsp, 0x18
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_251:
	mov	esi, 0xa
	call	__overflow
	jmp	.label_249
.label_236:
	xor	edi, edi
	call	usage
	.section	.text
	.align	16
	#Procedure 0x4037e6
	.globl sub_4037e6
	.type sub_4037e6, @function
sub_4037e6:

	nop	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4037f0
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
	#Procedure 0x4037ff
	.globl sub_4037ff
	.type sub_4037ff, @function
sub_4037ff:

	nop	
.label_277:
	mov	rdi, rbx
	call	fileno
	mov	edi, eax
	mov	rsi, rbp
	mov	edx, r14d
	call	lseek
	mov	rcx, rax
	mov	eax, 0xffffffff
	cmp	rcx, -1
	je	.label_276
	and	byte ptr [rbx], 0xef
	mov	qword ptr [rbx + 0x90], rcx
	xor	eax, eax
.label_276:
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x403834
	.globl sub_403834
	.type sub_403834, @function
sub_403834:

	nop	
	.section	.text
	.align	16
	#Procedure 0x403836

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
	jne	.label_278
	mov	rax, qword ptr [rbx + 0x28]
	cmp	rax, qword ptr [rbx + 0x20]
	jne	.label_278
	cmp	qword ptr [rbx + 0x48], 0
	je	.label_277
.label_278:
	mov	rdi, rbx
	mov	rsi, rbp
	mov	edx, r14d
	pop	rbx
	pop	r14
	pop	rbp
	jmp	fseeko
	.section	.text
	.align	16
	#Procedure 0x403870
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
	#Procedure 0x4038a3
	.globl sub_4038a3
	.type sub_4038a3, @function
sub_4038a3:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4038b0
	.globl version_etc_ar
	.type version_etc_ar, @function
version_etc_ar:

	mov	r9, -1
	nop	word ptr [rax + rax]
.label_279:
	cmp	qword ptr [r8 + r9*8 + 8], 0
	lea	r9, [r9 + 1]
	jne	.label_279
	jmp	version_etc_arn
	.section	.text
	.align	16
	#Procedure 0x4038d1
	.globl sub_4038d1
	.type sub_4038d1, @function
sub_4038d1:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4038e0
	.globl quotearg_custom_mem
	.type quotearg_custom_mem, @function
quotearg_custom_mem:

	sub	rsp, 0x38
	mov	rax, qword ptr [rip + label_29]
	mov	qword ptr [rsp + 0x30], rax
	movups	xmm0, xmmword ptr [rip + label_30]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0, xmmword ptr [rip + label_31]
	movaps	xmmword ptr [rsp + 0x10], xmm0
	movups	xmm0, xmmword ptr [rip + default_quoting_options]
	movaps	xmmword ptr [rsp], xmm0
	mov	dword ptr [rsp], 0xa
	test	rdi, rdi
	je	.label_280
	test	rsi, rsi
	je	.label_280
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
.label_280:
	call	abort
	.section	.text
	.align	16
	#Procedure 0x40394c
	.globl sub_40394c
	.type sub_40394c, @function
sub_40394c:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x403950
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
	#Procedure 0x40395f
	.globl sub_40395f
	.type sub_40395f, @function
sub_40395f:

	nop	
.label_284:
	mov	rcx, qword ptr [rip + stderr]
	mov	edi, OFFSET FLAT:label_281
	mov	esi, 0x37
	mov	edx, 1
	call	fwrite
	call	abort
	.section	.text
	.align	16
	#Procedure 0x403980
	.globl sub_403980
	.type sub_403980, @function
sub_403980:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40398f

	.globl set_program_name
	.type set_program_name, @function
set_program_name:
	push	r14
	push	rbx
	push	rax
	mov	rbx, rdi
	test	rbx, rbx
	je	.label_284
	mov	esi, 0x2f
	mov	rdi, rbx
	call	strrchr
	test	rax, rax
	lea	r14, [rax + 1]
	cmove	r14, rbx
	mov	rax, r14
	sub	rax, rbx
	cmp	rax, 7
	jl	.label_283
	lea	rdi, [r14 - 7]
	mov	esi, OFFSET FLAT:label_286
	mov	edx, 7
	call	strncmp
	test	eax, eax
	jne	.label_283
	mov	esi, OFFSET FLAT:label_285
	mov	edx, 3
	mov	rdi, r14
	call	strncmp
	test	eax, eax
	jne	.label_282
	add	r14, 3
	mov	qword ptr [rip + __progname],  r14
.label_282:
	mov	rbx, r14
.label_283:
	mov	qword ptr [rip + program_name],  rbx
	mov	qword ptr [rip + __progname_full],  rbx
	add	rsp, 8
	pop	rbx
	pop	r14
	ret	
.label_287:
	push	rax
	call	abort
	.section	.text
	.align	16
	#Procedure 0x403a16
	.globl sub_403a16
	.type sub_403a16, @function
sub_403a16:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x403a1b
	.globl set_custom_quoting
	.type set_custom_quoting, @function
set_custom_quoting:

	test	rdi, rdi
	mov	eax, OFFSET FLAT:default_quoting_options
	cmovne	rax, rdi
	mov	dword ptr [rax], 0xa
	test	rsi, rsi
	je	.label_287
	test	rdx, rdx
	je	.label_287
	mov	qword ptr [rax + 0x28], rsi
	mov	qword ptr [rax + 0x30], rdx
	ret	
	.section	.text
	.align	16
	#Procedure 0x403a40
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
	#Procedure 0x403a76
	.globl sub_403a76
	.type sub_403a76, @function
sub_403a76:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x403a80

	.globl version_etc_va
	.type version_etc_va, @function
version_etc_va:
	movsxd	r10, dword ptr [r8]
	cmp	r10, 0x28
	ja	.label_288
	mov	r9, r10
	add	r9, qword ptr [r8 + 0x10]
	lea	r10d, [r10 + 8]
	mov	dword ptr [r8], r10d
	jmp	.label_290
.label_288:
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
.label_290:
	sub	rsp, 0x58
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp], rax
	xor	r9d, r9d
	test	rax, rax
	je	.label_291
	cmp	r10d, 0x29
	jae	.label_300
	movsxd	r9, r10d
	add	r9, qword ptr [r8 + 0x10]
	add	r10d, 8
	mov	dword ptr [r8], r10d
	jmp	.label_289
.label_300:
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
.label_289:
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp + 8], rax
	mov	r9d, 1
	test	rax, rax
	je	.label_291
	cmp	r10d, 0x29
	jae	.label_298
	movsxd	r9, r10d
	add	r9, qword ptr [r8 + 0x10]
	add	r10d, 8
	mov	dword ptr [r8], r10d
	jmp	.label_299
.label_298:
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
.label_299:
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp + 0x10], rax
	mov	r9d, 2
	test	rax, rax
	je	.label_291
	cmp	r10d, 0x29
	jae	.label_296
	movsxd	r9, r10d
	add	r9, qword ptr [r8 + 0x10]
	add	r10d, 8
	mov	dword ptr [r8], r10d
	jmp	.label_297
.label_296:
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
.label_297:
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp + 0x18], rax
	mov	r9d, 3
	test	rax, rax
	je	.label_291
	cmp	r10d, 0x29
	jae	.label_294
	movsxd	r9, r10d
	add	r9, qword ptr [r8 + 0x10]
	add	r10d, 8
	mov	dword ptr [r8], r10d
	jmp	.label_295
.label_294:
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
.label_295:
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp + 0x20], rax
	mov	r9d, 4
	test	rax, rax
	je	.label_291
	cmp	r10d, 0x29
	jae	.label_292
	movsxd	r9, r10d
	add	r9, qword ptr [r8 + 0x10]
	add	r10d, 8
	mov	dword ptr [r8], r10d
	jmp	.label_293
.label_292:
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
.label_293:
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp + 0x28], rax
	mov	r9d, 5
	test	rax, rax
	je	.label_291
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp + 0x30], rax
	mov	r9d, 6
	test	rax, rax
	je	.label_291
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp + 0x38], rax
	mov	r9d, 7
	test	rax, rax
	je	.label_291
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp + 0x40], rax
	mov	r9d, 8
	test	rax, rax
	je	.label_291
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp + 0x48], rax
	cmp	rax, 1
	mov	r9d, 9
	sbb	r9, -1
.label_291:
	lea	r8, [rsp]
	call	version_etc_arn
	add	rsp, 0x58
	ret	
	.section	.text
	.align	16
	#Procedure 0x403c62
	.globl sub_403c62
	.type sub_403c62, @function
sub_403c62:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x403c70
	.globl xnrealloc
	.type xnrealloc, @function
xnrealloc:

	push	rbx
	mov	rbx, rdx
	movabs	rax, 0x7fffffffffffffff
	xor	edx, edx
	div	rbx
	cmp	rax, rsi
	jb	.label_301
	imul	rbx, rsi
	test	rdi, rdi
	je	.label_302
	test	rbx, rbx
	jne	.label_302
	call	free
	xor	eax, eax
	pop	rbx
	ret	
.label_301:
	call	xalloc_die
	.section	.text
	.align	16
	#Procedure 0x403ca4
	.globl sub_403ca4
	.type sub_403ca4, @function
sub_403ca4:

	nop	dword ptr [rax + rax]
.label_302:
	mov	rsi, rbx
	call	realloc
	test	rbx, rbx
	je	.label_303
	test	rax, rax
	je	.label_301
.label_303:
	pop	rbx
	ret	
.label_307:
	cmp	byte ptr [rbx], 0x60
	mov	ecx, OFFSET FLAT:label_304
	mov	eax, OFFSET FLAT:label_305
	jmp	.label_306
	.section	.text
	.align	16
	#Procedure 0x403ccf
	.globl sub_403ccf
	.type sub_403ccf, @function
sub_403ccf:

	nop	word ptr cs:[rax + rax]
.label_311:
	movsx	ecx, byte ptr [rax + 1]
	and	ecx, 0xffffffdf
	cmp	ecx, 0x42
	jne	.label_308
	cmp	byte ptr [rax + 2], 0x31
	jne	.label_308
	cmp	byte ptr [rax + 3], 0x38
	jne	.label_308
	cmp	byte ptr [rax + 4], 0x30
	jne	.label_308
	cmp	byte ptr [rax + 5], 0x33
	jne	.label_308
	cmp	byte ptr [rax + 6], 0x30
	jne	.label_308
	cmp	byte ptr [rax + 7], 0
	je	.label_307
.label_308:
	cmp	ebp, 9
	mov	ecx, OFFSET FLAT:label_99
	mov	eax, OFFSET FLAT:label_116
.label_306:
	cmove	rax, rcx
.label_312:
	add	rsp, 8
	pop	rbx
	pop	rbp
	ret	
	.section	.text
	.align	16
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
	jne	.label_312
	call	locale_charset
	movsx	ecx, byte ptr [rax]
	and	ecx, 0xffffffdf
	cmp	ecx, 0x47
	je	.label_311
	cmp	ecx, 0x55
	jne	.label_308
	movsx	ecx, byte ptr [rax + 1]
	and	ecx, 0xffffffdf
	cmp	ecx, 0x54
	jne	.label_308
	movsx	ecx, byte ptr [rax + 2]
	and	ecx, 0xffffffdf
	cmp	ecx, 0x46
	jne	.label_308
	cmp	byte ptr [rax + 3], 0x2d
	jne	.label_308
	cmp	byte ptr [rax + 4], 0x38
	jne	.label_308
	cmp	byte ptr [rax + 5], 0
	jne	.label_308
	cmp	byte ptr [rbx], 0x60
	mov	ecx, OFFSET FLAT:label_309
	mov	eax, OFFSET FLAT:label_310
	jmp	.label_306
.label_313:
	call	abort
	.section	.text
	.align	16
	#Procedure 0x403d95
	.globl sub_403d95
	.type sub_403d95, @function
sub_403d95:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x403d99
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
	je	.label_313
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
	#Procedure 0x403e00

	.globl quotearg_colon
	.type quotearg_colon, @function
quotearg_colon:
	sub	rsp, 0x38
	mov	rax, rdi
	mov	rcx, qword ptr [rip + label_29]
	mov	qword ptr [rsp + 0x30], rcx
	movups	xmm0, xmmword ptr [rip + label_30]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0, xmmword ptr [rip + label_31]
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
	#Procedure 0x403e55
	.globl sub_403e55
	.type sub_403e55, @function
sub_403e55:

	nop	word ptr cs:[rax + rax]
.label_314:
	call	xalloc_die
	.section	.text
	.align	16
	#Procedure 0x403e65
	.globl sub_403e65
	.type sub_403e65, @function
sub_403e65:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x403e73
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
	je	.label_315
	test	r15, r15
	je	.label_314
.label_315:
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
	#Procedure 0x403eb0
	.globl x2realloc
	.type x2realloc, @function
x2realloc:

	push	rbx
	mov	rax, qword ptr [rsi]
	test	rdi, rdi
	je	.label_319
	movabs	rcx, 0x5555555555555554
	cmp	rax, rcx
	jae	.label_320
	mov	rbx, rax
	shr	rbx, 1
	add	rbx, rax
	inc	rbx
	mov	qword ptr [rsi], rbx
	jne	.label_318
	call	free
	xor	eax, eax
	jmp	.label_316
.label_317:
	call	xalloc_die
.label_319:
	test	rax, rax
	mov	ebx, 0x80
	cmovne	rbx, rax
	test	rbx, rbx
	js	.label_317
	mov	qword ptr [rsi], rbx
.label_318:
	mov	rsi, rbx
	call	realloc
	test	rbx, rbx
	je	.label_316
	test	rax, rax
	je	.label_317
.label_316:
	pop	rbx
	ret	
.label_320:
	call	xalloc_die
	.section	.text
	.align	16
	#Procedure 0x403f14
	.globl sub_403f14
	.type sub_403f14, @function
sub_403f14:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x403f20
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
	#Procedure 0x403f38
	.globl sub_403f38
	.type sub_403f38, @function
sub_403f38:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x403f40
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
	je	.label_321
	mov	qword ptr [rax], rbx
.label_321:
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
	#Procedure 0x40402c
	.globl sub_40402c
	.type sub_40402c, @function
sub_40402c:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x404030

	.globl locale_charset
	.type locale_charset, @function
locale_charset:
	push	rax
	mov	edi, 0xe
	call	rpl_nl_langinfo
	test	rax, rax
	mov	ecx, OFFSET FLAT:label_273
	cmovne	rcx, rax
	cmp	byte ptr [rcx], 0
	mov	eax, OFFSET FLAT:label_322
	cmovne	rax, rcx
	pop	rcx
	ret	
	.section	.text
	.align	16
	#Procedure 0x404055
	.globl sub_404055
	.type sub_404055, @function
sub_404055:

	nop	word ptr cs:[rax + rax]
.label_323:
	call	xalloc_die
	.section	.text
	.align	16
	#Procedure 0x404065
	.globl sub_404065
	.type sub_404065, @function
sub_404065:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404070
	.globl xnmalloc
	.type xnmalloc, @function
xnmalloc:

	push	rbx
	mov	rbx, rsi
	movabs	rax, 0x7fffffffffffffff
	xor	edx, edx
	div	rbx
	cmp	rax, rdi
	jb	.label_323
	imul	rbx, rdi
	mov	rdi, rbx
	call	malloc
	test	rbx, rbx
	je	.label_324
	test	rax, rax
	je	.label_323
.label_324:
	pop	rbx
	ret	
	.section	.text
	.align	16
	#Procedure 0x4040a0

	.globl usage
	.type usage, @function
usage:
	push	rax
	test	edi, edi
	jne	.label_335
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_338
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
	mov	esi, OFFSET FLAT:label_342
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_343
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_336
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_326
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_330
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_337
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_328
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_329
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:label_257
	xor	eax, eax
	mov	rsi, rcx
	call	__printf_chk
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_334
	mov	edx, 5
	call	dcgettext
	mov	rsi, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:label_54
	mov	ecx, OFFSET FLAT:label_55
	xor	eax, eax
	call	__printf_chk
	mov	edi, 5
	xor	esi, esi
	call	setlocale
	test	rax, rax
	je	.label_325
	mov	esi, OFFSET FLAT:label_332
	mov	edx, 3
	mov	rdi, rax
	call	strncmp
	test	eax, eax
	je	.label_325
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_327
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	call	fputs_unlocked
.label_325:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_333
	mov	edx, 5
	call	dcgettext
	mov	rsi, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:label_55
	mov	ecx, OFFSET FLAT:label_257
	xor	eax, eax
	call	__printf_chk
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_331
	mov	edx, 5
	call	dcgettext
	mov	rsi, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:label_257
	mov	ecx, OFFSET FLAT:label_344
	xor	eax, eax
	call	__printf_chk
	xor	edi, edi
	call	exit
.label_335:
	mov	edi, OFFSET FLAT:label_339
	mov	esi, OFFSET FLAT:label_340
	mov	edx, 0x28
	mov	ecx, OFFSET FLAT:label_341
	call	__assert_fail
	.section	.text
	.align	16
	#Procedure 0x4042c3
	.globl sub_4042c3
	.type sub_4042c3, @function
sub_4042c3:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4042d0
	.globl quotearg_char_mem
	.type quotearg_char_mem, @function
quotearg_char_mem:

	sub	rsp, 0x38
	mov	ecx, edx
	mov	r8, rsi
	mov	rdx, rdi
	mov	rsi, qword ptr [rip + label_29]
	mov	qword ptr [rsp + 0x30], rsi
	movups	xmm0, xmmword ptr [rip + label_30]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0, xmmword ptr [rip + label_31]
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
	#Procedure 0x40433e
	.globl sub_40433e
	.type sub_40433e, @function
sub_40433e:

	nop	
	.section	.text
	.align	16
	#Procedure 0x404340
	.globl close_stdout_set_file_name
	.type close_stdout_set_file_name, @function
close_stdout_set_file_name:

	mov	qword ptr [rip + file_name],  rdi
	ret	
	.section	.text
	.align	16
	#Procedure 0x404348
	.globl sub_404348
	.type sub_404348, @function
sub_404348:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404350
	.globl quotearg_colon_mem
	.type quotearg_colon_mem, @function
quotearg_colon_mem:

	sub	rsp, 0x38
	mov	rax, rsi
	mov	rdx, rdi
	mov	rcx, qword ptr [rip + label_29]
	mov	qword ptr [rsp + 0x30], rcx
	movups	xmm0, xmmword ptr [rip + label_30]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0, xmmword ptr [rip + label_31]
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
	#Procedure 0x4043a4
	.globl sub_4043a4
	.type sub_4043a4, @function
sub_4043a4:

	nop	word ptr cs:[rax + rax]
.label_346:
	mov	ebx, 0xffffffff
	test	eax, eax
	jne	.label_345
	call	__errno_location
	mov	dword ptr [rax], 0
.label_345:
	mov	eax, ebx
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x4043cb

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
	jne	.label_346
	test	eax, eax
	sete	cl
	neg	eax
	sbb	ebx, ebx
	test	r14, r14
	jne	.label_345
	test	cl, cl
	jne	.label_345
	call	__errno_location
	xor	ecx, ecx
	cmp	dword ptr [rax], 9
	mov	ebx, 0xffffffff
	cmove	ebx, ecx
	jmp	.label_345
	.section	.text
	.align	16
	#Procedure 0x404410

	.globl xmalloc
	.type xmalloc, @function
xmalloc:
	push	rbx
	mov	rbx, rdi
	call	malloc
	test	rbx, rbx
	je	.label_347
	test	rax, rax
	je	.label_348
.label_347:
	pop	rbx
	ret	
.label_348:
	call	xalloc_die
	.section	.text
	.align	16
	#Procedure 0x40442a
	.globl sub_40442a
	.type sub_40442a, @function
sub_40442a:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404495
	.globl sub_404495
	.type sub_404495, @function
sub_404495:

	nop	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4044a2
	.globl sub_4044a2
	.type sub_4044a2, @function
sub_4044a2:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4044c6
	.globl sub_4044c6
	.type sub_4044c6, @function
sub_4044c6:

	nop	word ptr cs:[rax + rax]
