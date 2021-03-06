	.section	.text
	.align	16
	#Procedure 0x4014b9
	.globl sub_4014b9
	.type sub_4014b9, @function
sub_4014b9:

	hlt	
	.section	.text
	.align	16
	#Procedure 0x4014ba
	.globl sub_4014ba
	.type sub_4014ba, @function
sub_4014ba:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4014f2
	.globl sub_4014f2
	.type sub_4014f2, @function
sub_4014f2:

	nop	dword ptr [rax]
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40153a
	.globl sub_40153a
	.type sub_40153a, @function
sub_40153a:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40155c
	.globl sub_40155c
	.type sub_40155c, @function
sub_40155c:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x40156d
	.globl sub_40156d
	.type sub_40156d, @function
sub_40156d:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x401586
	.globl sub_401586
	.type sub_401586, @function
sub_401586:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x401590
	.globl quotearg_char_mem
	.type quotearg_char_mem, @function
quotearg_char_mem:

	sub	rsp, 0x38
	mov	ecx, edx
	mov	r8, rsi
	mov	rdx, rdi
	mov	rsi, qword ptr [rip + label_9]
	mov	qword ptr [rsp + 0x30], rsi
	movups	xmm0, xmmword ptr [rip + label_10]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0, xmmword ptr [rip + label_11]
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
	#Procedure 0x4015fe
	.globl sub_4015fe
	.type sub_4015fe, @function
sub_4015fe:

	nop	
.label_12:
	call	abort
	.section	.text
	.align	16
	#Procedure 0x401605
	.globl sub_401605
	.type sub_401605, @function
sub_401605:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x401610

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
	je	.label_12
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
.label_14:
	mov	ecx, 1
.label_13:
	mov	rdi, rcx
	mov	rsi, rax
	jmp	calloc
	.section	.text
	.align	16
	#Procedure 0x4016b0
	.globl sub_4016b0
	.type sub_4016b0, @function
sub_4016b0:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4016b5

	.globl rpl_calloc
	.type rpl_calloc, @function
rpl_calloc:
	test	rdi, rdi
	mov	eax, 1
	je	.label_14
	test	rsi, rsi
	mov	ecx, 1
	je	.label_13
	mov	rax, rsi
	imul	rax, rdi
	xor	edx, edx
	div	rsi
	cmp	rax, rdi
	mov	rax, rsi
	mov	rcx, rdi
	je	.label_13
	push	rax
	call	__errno_location
	mov	dword ptr [rax], 0xc
	xor	eax, eax
	pop	rcx
	ret	
.label_19:
	call	quotearg_colon
	mov	rcx, rax
	xor	edi, edi
	mov	edx, OFFSET FLAT:label_21
	xor	eax, eax
	mov	esi, ebp
	mov	r8, rbx
	call	error
	mov	edi, dword ptr [rip + exit_failure]
	call	_exit
	nop	dword ptr [rax]
	nop	dword ptr [rax + rax]
.label_15:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_16
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
	mov	rdi, qword ptr [rip + file_name]
	test	rdi, rdi
	mov	ebp, dword ptr [rbp]
	jne	.label_19
	xor	edi, edi
	mov	edx, OFFSET FLAT:label_17
	xor	eax, eax
	mov	esi, ebp
	mov	rcx, rbx
	call	error
	mov	edi, dword ptr [rip + exit_failure]
	call	_exit
	.section	.text
	.align	16
	#Procedure 0x401762

	.globl close_stdout
	.type close_stdout, @function
close_stdout:
	push	rbp
	push	rbx
	push	rax
	mov	rdi, qword ptr [rip + stdout]
	call	close_stream
	test	eax, eax
	je	.label_18
	mov	bl, byte ptr [rip + ignore_EPIPE]
	call	__errno_location
	mov	rbp, rax
	cmp	bl, 0
	je	.label_15
	cmp	dword ptr [rbp], 0x20
	jne	.label_15
.label_18:
	mov	rdi, qword ptr [rip + stderr]
	call	close_stream
	test	eax, eax
	jne	.label_20
	add	rsp, 8
	pop	rbx
	pop	rbp
	ret	
.label_20:
	mov	edi, dword ptr [rip + exit_failure]
	call	_exit
	.section	.text
	.align	16
	#Procedure 0x4017b0

	.globl version_etc_va
	.type version_etc_va, @function
version_etc_va:
	movsxd	r10, dword ptr [r8]
	cmp	r10, 0x28
	ja	.label_32
	mov	r9, r10
	add	r9, qword ptr [r8 + 0x10]
	lea	r10d, [r10 + 8]
	mov	dword ptr [r8], r10d
	jmp	.label_34
.label_32:
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
.label_34:
	sub	rsp, 0x58
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp], rax
	xor	r9d, r9d
	test	rax, rax
	je	.label_22
	cmp	r10d, 0x29
	jae	.label_31
	movsxd	r9, r10d
	add	r9, qword ptr [r8 + 0x10]
	add	r10d, 8
	mov	dword ptr [r8], r10d
	jmp	.label_33
.label_31:
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
.label_33:
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp + 8], rax
	mov	r9d, 1
	test	rax, rax
	je	.label_22
	cmp	r10d, 0x29
	jae	.label_29
	movsxd	r9, r10d
	add	r9, qword ptr [r8 + 0x10]
	add	r10d, 8
	mov	dword ptr [r8], r10d
	jmp	.label_30
.label_29:
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
.label_30:
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp + 0x10], rax
	mov	r9d, 2
	test	rax, rax
	je	.label_22
	cmp	r10d, 0x29
	jae	.label_27
	movsxd	r9, r10d
	add	r9, qword ptr [r8 + 0x10]
	add	r10d, 8
	mov	dword ptr [r8], r10d
	jmp	.label_28
.label_27:
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
.label_28:
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp + 0x18], rax
	mov	r9d, 3
	test	rax, rax
	je	.label_22
	cmp	r10d, 0x29
	jae	.label_25
	movsxd	r9, r10d
	add	r9, qword ptr [r8 + 0x10]
	add	r10d, 8
	mov	dword ptr [r8], r10d
	jmp	.label_26
.label_25:
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
.label_26:
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp + 0x20], rax
	mov	r9d, 4
	test	rax, rax
	je	.label_22
	cmp	r10d, 0x29
	jae	.label_23
	movsxd	r9, r10d
	add	r9, qword ptr [r8 + 0x10]
	add	r10d, 8
	mov	dword ptr [r8], r10d
	jmp	.label_24
.label_23:
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
.label_24:
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp + 0x28], rax
	mov	r9d, 5
	test	rax, rax
	je	.label_22
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp + 0x30], rax
	mov	r9d, 6
	test	rax, rax
	je	.label_22
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp + 0x38], rax
	mov	r9d, 7
	test	rax, rax
	je	.label_22
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp + 0x40], rax
	mov	r9d, 8
	test	rax, rax
	je	.label_22
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp + 0x48], rax
	cmp	rax, 1
	mov	r9d, 9
	sbb	r9, -1
.label_22:
	lea	r8, [rsp]
	call	version_etc_arn
	add	rsp, 0x58
	ret	
	.section	.text
	.align	16
	#Procedure 0x401992
	.globl sub_401992
	.type sub_401992, @function
sub_401992:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4019a0
	.globl quotearg_n
	.type quotearg_n, @function
quotearg_n:

	mov	rdx, -1
	mov	ecx, OFFSET FLAT:default_quoting_options
	jmp	quotearg_n_options
	.section	.text
	.align	16
	#Procedure 0x4019ae
	.globl sub_4019ae
	.type sub_4019ae, @function
sub_4019ae:

	nop	
	.section	.text
	.align	16
	#Procedure 0x4019b0

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
	js	.label_38
	mov	eax, dword ptr [r13]
	mov	rbp, qword ptr [rip + slotvec]
	cmp	dword ptr [rip + nslots],  r12d
	mov	qword ptr [rsp + 0x18], r13
	mov	dword ptr [rsp], eax
	mov	qword ptr [rsp + 0x10], rbx
	mov	qword ptr [rsp + 8], r15
	jg	.label_41
	cmp	r12d, 0x7fffffff
	je	.label_36
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
	jne	.label_39
	movups	xmm0, xmmword ptr [rip + slotvec0]
	movups	xmmword ptr [r14], xmm0
.label_39:
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
.label_41:
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
	jbe	.label_37
	mov	rax, qword ptr [rsp + 0x18]
	mov	ebp, dword ptr [rsp]
	jmp	.label_40
.label_37:
	lea	rax, [rbp + r13]
	lea	r12, [rbp + r13 + 8]
	inc	r15
	mov	qword ptr [rax], r15
	mov	eax, OFFSET FLAT:slot0
	cmp	r14, rax
	mov	ebp, dword ptr [rsp]
	je	.label_35
	mov	rdi, r14
	call	free
.label_35:
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
.label_40:
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
.label_38:
	call	abort
.label_36:
	call	xalloc_die
	.section	.text
	.align	16
	#Procedure 0x401b6d
	.globl sub_401b6d
	.type sub_401b6d, @function
sub_401b6d:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x401b70

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
	je	.label_47
	movaps	xmmword ptr [rsp + 0x50], xmm0
	movaps	xmmword ptr [rsp + 0x60], xmm1
	movaps	xmmword ptr [rsp + 0x70], xmm2
	movaps	xmmword ptr [rsp + 0x80], xmm3
	movaps	xmmword ptr [rsp + 0x90], xmm4
	movaps	xmmword ptr [rsp + 0xa0], xmm5
	movaps	xmmword ptr [rsp + 0xb0], xmm6
	movaps	xmmword ptr [rsp + 0xc0], xmm7
.label_47:
	mov	ebp, dword ptr [rip + opterr]
	mov	dword ptr [rip + opterr],  1
	mov	eax, OFFSET FLAT:label_42
	mov	edx, OFFSET FLAT:label_43
	test	r9b, r9b
	cmovne	rdx, rax
	mov	ecx, OFFSET FLAT:long_options
	xor	r8d, r8d
	call	getopt_long
	cmp	eax, -1
	je	.label_46
	mov	rcx, qword ptr [rsp + 0x100]
	cmp	eax, 0x68
	je	.label_48
	cmp	eax, 0x76
	je	.label_45
	mov	edi, dword ptr [rip + exit_failure]
	jmp	.label_44
.label_48:
	xor	edi, edi
.label_44:
	call	rcx
.label_46:
	mov	dword ptr [rip + opterr],  ebp
	add	rsp, 0xd8
	pop	rbx
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_45:
	lea	rax, [rsp + 0x20]
	mov	qword ptr [rsp + 0x10], rax
	lea	rax, [rsp + 0x108]
	mov	qword ptr [rsp + 8], rax
	mov	dword ptr [rsp + 4], 0x30
	mov	dword ptr [rsp], 0x30
	mov	rdi, qword ptr [rip + stdout]
	lea	r8, [rsp]
	mov	rsi, rbx
	mov	rdx, r15
	mov	rcx, r14
	call	version_etc_va
	xor	edi, edi
	call	exit
	.section	.text
	.align	16
	#Procedure 0x401c6c
	.globl sub_401c6c
	.type sub_401c6c, @function
sub_401c6c:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x401c70

	.globl rpl_fflush
	.type rpl_fflush, @function
rpl_fflush:
	push	rbx
	mov	rbx, rdi
	test	rbx, rbx
	je	.label_49
	mov	rdi, rbx
	call	__freading
	test	eax, eax
	je	.label_49
	test	byte ptr [rbx + 1], 1
	je	.label_49
	xor	esi, esi
	mov	edx, 1
	mov	rdi, rbx
	call	rpl_fseeko
.label_49:
	mov	rdi, rbx
	pop	rbx
	jmp	fflush
	.section	.text
	.align	16
	#Procedure 0x401ca3
	.globl sub_401ca3
	.type sub_401ca3, @function
sub_401ca3:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x401cb0
	.globl quotearg_custom
	.type quotearg_custom, @function
quotearg_custom:

	sub	rsp, 0x38
	mov	rax, rdx
	mov	rcx, qword ptr [rip + label_9]
	mov	qword ptr [rsp + 0x30], rcx
	movups	xmm0, xmmword ptr [rip + label_10]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0, xmmword ptr [rip + label_11]
	movaps	xmmword ptr [rsp + 0x10], xmm0
	movups	xmm0, xmmword ptr [rip + default_quoting_options]
	movaps	xmmword ptr [rsp], xmm0
	mov	dword ptr [rsp], 0xa
	test	rdi, rdi
	je	.label_50
	test	rsi, rsi
	je	.label_50
	mov	qword ptr [rsp + 0x28], rdi
	mov	qword ptr [rsp + 0x30], rsi
	lea	rcx, [rsp]
	xor	edi, edi
	mov	rdx, -1
	mov	rsi, rax
	call	quotearg_n_options
	add	rsp, 0x38
	ret	
.label_50:
	call	abort
	.section	.text
	.align	16
	#Procedure 0x401d20
	.globl quotearg_colon_mem
	.type quotearg_colon_mem, @function
quotearg_colon_mem:

	sub	rsp, 0x38
	mov	rax, rsi
	mov	rdx, rdi
	mov	rcx, qword ptr [rip + label_9]
	mov	qword ptr [rsp + 0x30], rcx
	movups	xmm0, xmmword ptr [rip + label_10]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0, xmmword ptr [rip + label_11]
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
	#Procedure 0x401d74
	.globl sub_401d74
	.type sub_401d74, @function
sub_401d74:

	nop	word ptr cs:[rax + rax]
.label_55:
	test	rax, rax
	mov	ebx, 0x80
	cmovne	rbx, rax
	test	rbx, rbx
	js	.label_51
	mov	qword ptr [rsi], rbx
.label_53:
	mov	rsi, rbx
	call	realloc
	test	rbx, rbx
	je	.label_52
	test	rax, rax
	je	.label_51
.label_52:
	pop	rbx
	ret	
.label_54:
	call	xalloc_die
	.section	.text
	.align	16
	#Procedure 0x401dad
	.globl sub_401dad
	.type sub_401dad, @function
sub_401dad:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x401db9
	.globl x2realloc
	.type x2realloc, @function
x2realloc:

	push	rbx
	mov	rax, qword ptr [rsi]
	test	rdi, rdi
	je	.label_55
	movabs	rcx, 0x5555555555555554
	cmp	rax, rcx
	jae	.label_54
	mov	rbx, rax
	shr	rbx, 1
	add	rbx, rax
	inc	rbx
	mov	qword ptr [rsi], rbx
	jne	.label_53
	call	free
	xor	eax, eax
	jmp	.label_52
.label_51:
	call	xalloc_die
	.section	.text
	.align	16
	#Procedure 0x401df0

	.globl xmalloc
	.type xmalloc, @function
xmalloc:
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
	#Procedure 0x401e0a
	.globl sub_401e0a
	.type sub_401e0a, @function
sub_401e0a:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x401e10
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
	#Procedure 0x401e85
	.globl sub_401e85
	.type sub_401e85, @function
sub_401e85:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x401e90
	.globl quotearg_n_custom_mem
	.type quotearg_n_custom_mem, @function
quotearg_n_custom_mem:

	sub	rsp, 0x38
	mov	rax, qword ptr [rip + label_9]
	mov	qword ptr [rsp + 0x30], rax
	movups	xmm0, xmmword ptr [rip + label_10]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0, xmmword ptr [rip + label_11]
	movaps	xmmword ptr [rsp + 0x10], xmm0
	movups	xmm0, xmmword ptr [rip + default_quoting_options]
	movaps	xmmword ptr [rsp], xmm0
	mov	dword ptr [rsp], 0xa
	test	rsi, rsi
	je	.label_58
	test	rdx, rdx
	je	.label_58
	mov	qword ptr [rsp + 0x28], rsi
	mov	qword ptr [rsp + 0x30], rdx
	lea	rax, [rsp]
	mov	rsi, rcx
	mov	rdx, r8
	mov	rcx, rax
	call	quotearg_n_options
	add	rsp, 0x38
	ret	
.label_58:
	call	abort
	.section	.text
	.align	16
	#Procedure 0x401efa
	.globl sub_401efa
	.type sub_401efa, @function
sub_401efa:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x401f00
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
	#Procedure 0x401f13
	.globl sub_401f13
	.type sub_401f13, @function
sub_401f13:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x401f20
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
	je	.label_60
	test	r14, r14
	je	.label_59
.label_60:
	xor	esi, esi
	mov	rdi, r14
	mov	rdx, rbx
	call	memset
	mov	rax, r14
	add	rsp, 8
	pop	rbx
	pop	r14
	ret	
.label_59:
	call	xalloc_die
	.section	.text
	.align	16
	#Procedure 0x401f56
	.globl sub_401f56
	.type sub_401f56, @function
sub_401f56:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x401f60
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
	#Procedure 0x401f78
	.globl sub_401f78
	.type sub_401f78, @function
sub_401f78:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x401f80
	.globl quotearg_free
	.type quotearg_free, @function
quotearg_free:

	push	r15
	push	r14
	push	rbx
	mov	r14, qword ptr [rip + slotvec]
	cmp	dword ptr [rip + nslots],  2
	jl	.label_61
	lea	r15, [r14 + 0x18]
	mov	ebx, 1
	nop	
.label_63:
	mov	rdi, qword ptr [r15]
	call	free
	inc	rbx
	movsxd	rax, dword ptr [rip + nslots]
	add	r15, 0x10
	cmp	rbx, rax
	jl	.label_63
.label_61:
	mov	rdi, qword ptr [r14 + 8]
	mov	eax, OFFSET FLAT:slot0
	cmp	rdi, rax
	je	.label_65
	call	free
	mov	qword ptr [rip + slotvec0],  0x100
	mov	qword ptr [rip + label_64], OFFSET FLAT:slot0
.label_65:
	mov	eax, OFFSET FLAT:slotvec0
	cmp	r14, rax
	je	.label_62
	mov	rdi, r14
	call	free
	mov	qword ptr [rip + slotvec], OFFSET FLAT:slotvec0
.label_62:
	mov	dword ptr [rip + nslots],  1
	pop	rbx
	pop	r14
	pop	r15
	ret	
	.section	.text
	.align	16
	#Procedure 0x402011
	.globl sub_402011
	.type sub_402011, @function
sub_402011:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x402020
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
	je	.label_66
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
.label_66:
	call	abort
	.section	.text
	.align	16
	#Procedure 0x402081
	.globl sub_402081
	.type sub_402081, @function
sub_402081:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x402090

	.globl users
	.type users, @function
users:
	push	rbp
	push	r15
	push	r14
	push	r12
	push	rbx
	sub	rsp, 0x10
	mov	eax, esi
	mov	rbx, rdi
	lea	rsi, [rsp + 8]
	lea	rdx, [rsp]
	mov	ecx, eax
	call	read_utmp
	test	eax, eax
	jne	.label_74
	mov	rbp, qword ptr [rsp + 8]
	mov	rax, rbp
	shr	rax, 0x3c
	jne	.label_71
	mov	rbx, qword ptr [rsp]
	lea	rdi, [rbp*8]
	call	xmalloc
	mov	r14, rax
	test	rbp, rbp
	je	.label_70
	xor	r15d, r15d
	nop	word ptr [rax + rax]
.label_69:
	dec	rbp
	cmp	byte ptr [rbx + 0x2c], 0
	je	.label_76
	movzx	eax, word ptr [rbx]
	cmp	eax, 7
	jne	.label_76
	mov	rdi, rbx
	call	extract_trimmed_name
	mov	qword ptr [r14 + r15*8], rax
	inc	r15
.label_76:
	add	rbx, 0x180
	test	rbp, rbp
	jne	.label_69
	mov	edx, 8
	mov	ecx, OFFSET FLAT:userid_compare
	mov	rdi, r14
	mov	rsi, r15
	call	qsort
	test	r15, r15
	je	.label_72
	lea	rbx, [r15 - 1]
	xor	ebp, ebp
	mov	r12d, 0x20
	jmp	.label_75
.label_70:
	xor	esi, esi
	mov	edx, 8
	mov	ecx, OFFSET FLAT:userid_compare
	mov	rdi, r14
	call	qsort
	jmp	.label_72
.label_67:
	call	__overflow
	jmp	.label_73
	.section	.text
	.align	16
	#Procedure 0x402165
	.globl sub_402165
	.type sub_402165, @function
sub_402165:

	nop	word ptr cs:[rax + rax]
.label_75:
	mov	rdi, qword ptr [r14 + rbp*8]
	mov	rsi, qword ptr [rip + stdout]
	call	fputs_unlocked
	cmp	rbp, rbx
	mov	esi, 0xa
	cmovb	esi, r12d
	mov	rdi, qword ptr [rip + stdout]
	mov	rax, qword ptr [rdi + 0x28]
	cmp	rax, qword ptr [rdi + 0x30]
	jae	.label_67
	lea	rcx, [rax + 1]
	mov	qword ptr [rdi + 0x28], rcx
	mov	byte ptr [rax], sil
.label_73:
	inc	rbp
	cmp	r15, rbp
	jne	.label_75
	mov	rbx, r14
	nop	word ptr cs:[rax + rax]
.label_68:
	mov	rdi, qword ptr [rbx]
	call	free
	add	rbx, 8
	dec	r15
	jne	.label_68
.label_72:
	mov	rdi, r14
	call	free
	mov	rdi, qword ptr [rsp]
	call	free
	add	rsp, 0x10
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_74:
	call	__errno_location
	mov	ebp, dword ptr [rax]
	xor	edi, edi
	mov	esi, 3
	mov	rdx, rbx
	call	quotearg_n_style_colon
	mov	rcx, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:label_17
	xor	eax, eax
	mov	esi, ebp
	call	error
.label_71:
	call	xalloc_die
	.section	.text
	.align	16
	#Procedure 0x402220

	.globl userid_compare
	.type userid_compare, @function
userid_compare:
	mov	rdi, qword ptr [rdi]
	mov	rsi, qword ptr [rsi]
	jmp	strcmp
	.section	.text
	.align	16
	#Procedure 0x40222b
	.globl sub_40222b
	.type sub_40222b, @function
sub_40222b:

	nop	
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x402230

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
	jne	.label_77
	mov	rax, qword ptr [rbx + 0x28]
	cmp	rax, qword ptr [rbx + 0x20]
	jne	.label_77
	cmp	qword ptr [rbx + 0x48], 0
	je	.label_78
.label_77:
	mov	rdi, rbx
	mov	rsi, rbp
	mov	edx, r14d
	pop	rbx
	pop	r14
	pop	rbp
	jmp	fseeko
.label_78:
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
	#Procedure 0x40229e
	.globl sub_40229e
	.type sub_40229e, @function
sub_40229e:

	nop	
	.section	.text
	.align	16
	#Procedure 0x4022a0
	.globl close_stdout_set_file_name
	.type close_stdout_set_file_name, @function
close_stdout_set_file_name:

	mov	qword ptr [rip + file_name],  rdi
	ret	
	.section	.text
	.align	16
	#Procedure 0x4022a8
	.globl sub_4022a8
	.type sub_4022a8, @function
sub_4022a8:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4022b0
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
	#Procedure 0x4022bf
	.globl sub_4022bf
	.type sub_4022bf, @function
sub_4022bf:

	nop	
.label_81:
	mov	rbx, qword ptr [rip + stderr]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_80
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
	#Procedure 0x4022f8
	.globl sub_4022f8
	.type sub_4022f8, @function
sub_4022f8:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x402303

	.globl usage
	.type usage, @function
usage:
	push	rbp
	push	rbx
	push	rax
	mov	ebp, edi
	test	ebp, ebp
	jne	.label_81
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_96
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	mov	rdx, qword ptr [rip + program_name]
	mov	edi, 1
	xor	eax, eax
	mov	rsi, rcx
	call	__printf_chk
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_95
	mov	edx, 5
	call	dcgettext
	mov	rsi, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:label_83
	mov	ecx, OFFSET FLAT:label_84
	xor	eax, eax
	call	__printf_chk
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_94
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_82
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_87
	mov	edx, 5
	call	dcgettext
	mov	rsi, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:label_92
	mov	ecx, OFFSET FLAT:label_93
	xor	eax, eax
	call	__printf_chk
	mov	edi, 5
	xor	esi, esi
	call	setlocale
	test	rax, rax
	je	.label_88
	mov	esi, OFFSET FLAT:label_91
	mov	edx, 3
	mov	rdi, rax
	call	strncmp
	test	eax, eax
	je	.label_88
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_89
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	call	fputs_unlocked
.label_88:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_90
	mov	edx, 5
	call	dcgettext
	mov	rsi, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:label_93
	mov	ecx, OFFSET FLAT:label_85
	xor	eax, eax
	call	__printf_chk
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_97
	mov	edx, 5
	call	dcgettext
	mov	rsi, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:label_85
	mov	ecx, OFFSET FLAT:label_86
	xor	eax, eax
	call	__printf_chk
	mov	edi, ebp
	call	exit
	.section	.text
	.align	16
	#Procedure 0x402470
	.globl xnrealloc
	.type xnrealloc, @function
xnrealloc:

	push	rbx
	mov	rbx, rdx
	movabs	rax, 0x7fffffffffffffff
	xor	edx, edx
	div	rbx
	cmp	rax, rsi
	jb	.label_98
	imul	rbx, rsi
	test	rdi, rdi
	je	.label_99
	test	rbx, rbx
	jne	.label_99
	call	free
	xor	eax, eax
	pop	rbx
	ret	
.label_98:
	call	xalloc_die
	.section	.text
	.align	16
	#Procedure 0x4024a4
	.globl sub_4024a4
	.type sub_4024a4, @function
sub_4024a4:

	nop	dword ptr [rax + rax]
.label_99:
	mov	rsi, rbx
	call	realloc
	test	rbx, rbx
	je	.label_100
	test	rax, rax
	je	.label_98
.label_100:
	pop	rbx
	ret	
	.section	.text
	.align	16
	#Procedure 0x4024c0
	.globl close_stdout_set_ignore_EPIPE
	.type close_stdout_set_ignore_EPIPE, @function
close_stdout_set_ignore_EPIPE:

	mov	byte ptr [rip + ignore_EPIPE],  dil
	ret	
	.section	.text
	.align	16
	#Procedure 0x4024c8
	.globl sub_4024c8
	.type sub_4024c8, @function
sub_4024c8:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4024d0
	.globl emit_bug_reporting_address
	.type emit_bug_reporting_address, @function
emit_bug_reporting_address:

	push	rax
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_101
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:label_102
	xor	eax, eax
	mov	rsi, rcx
	call	__printf_chk
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_104
	mov	edx, 5
	call	dcgettext
	mov	rsi, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:label_92
	mov	ecx, OFFSET FLAT:label_93
	xor	eax, eax
	call	__printf_chk
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_103
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	pop	rax
	jmp	fputs_unlocked
	.section	.text
	.align	16
	#Procedure 0x402544
	.globl sub_402544
	.type sub_402544, @function
sub_402544:

	nop	word ptr cs:[rax + rax]
.label_109:
	call	xalloc_die
	.section	.text
	.align	16
	#Procedure 0x402555
	.globl sub_402555
	.type sub_402555, @function
sub_402555:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40255e
	.globl x2nrealloc
	.type x2nrealloc, @function
x2nrealloc:

	push	rbx
	mov	rbx, rdx
	mov	rcx, qword ptr [rsi]
	test	rdi, rdi
	je	.label_111
	movabs	rax, 0x5555555555555554
	xor	edx, edx
	div	rbx
	cmp	rax, rcx
	jbe	.label_108
	mov	rax, rcx
	shr	rax, 1
	lea	rcx, [rcx + rax + 1]
	jmp	.label_105
.label_108:
	call	xalloc_die
.label_111:
	test	rcx, rcx
	jne	.label_110
	mov	eax, 0x80
	xor	edx, edx
	div	rbx
	xor	ecx, ecx
	cmp	rbx, 0x80
	seta	cl
	add	rcx, rax
.label_110:
	movabs	rax, 0x7fffffffffffffff
	xor	edx, edx
	div	rbx
	cmp	rax, rcx
	jb	.label_109
.label_105:
	mov	qword ptr [rsi], rcx
	imul	rbx, rcx
	test	rdi, rdi
	je	.label_106
	test	rbx, rbx
	jne	.label_106
	call	free
	xor	eax, eax
	pop	rbx
	ret	
.label_106:
	mov	rsi, rbx
	call	realloc
	test	rbx, rbx
	je	.label_107
	test	rax, rax
	je	.label_108
.label_107:
	pop	rbx
	ret	
	.section	.text
	.align	16
	#Procedure 0x4025f0
	.globl set_custom_quoting
	.type set_custom_quoting, @function
set_custom_quoting:

	test	rdi, rdi
	mov	eax, OFFSET FLAT:default_quoting_options
	cmovne	rax, rdi
	mov	dword ptr [rax], 0xa
	test	rsi, rsi
	je	.label_112
	test	rdx, rdx
	je	.label_112
	mov	qword ptr [rax + 0x28], rsi
	mov	qword ptr [rax + 0x30], rdx
	ret	
.label_112:
	push	rax
	call	abort
	.section	.text
	.align	16
	#Procedure 0x40261b
	.globl sub_40261b
	.type sub_40261b, @function
sub_40261b:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x402620

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
	jne	.label_118
	call	locale_charset
	movsx	ecx, byte ptr [rax]
	and	ecx, 0xffffffdf
	cmp	ecx, 0x47
	je	.label_114
	cmp	ecx, 0x55
	jne	.label_113
	movsx	ecx, byte ptr [rax + 1]
	and	ecx, 0xffffffdf
	cmp	ecx, 0x54
	jne	.label_113
	movsx	ecx, byte ptr [rax + 2]
	and	ecx, 0xffffffdf
	cmp	ecx, 0x46
	jne	.label_113
	cmp	byte ptr [rax + 3], 0x2d
	jne	.label_113
	cmp	byte ptr [rax + 4], 0x38
	jne	.label_113
	cmp	byte ptr [rax + 5], 0
	jne	.label_113
	cmp	byte ptr [rbx], 0x60
	mov	ecx, OFFSET FLAT:label_122
	mov	eax, OFFSET FLAT:label_123
	jmp	.label_117
.label_114:
	movsx	ecx, byte ptr [rax + 1]
	and	ecx, 0xffffffdf
	cmp	ecx, 0x42
	jne	.label_113
	cmp	byte ptr [rax + 2], 0x31
	jne	.label_113
	cmp	byte ptr [rax + 3], 0x38
	jne	.label_113
	cmp	byte ptr [rax + 4], 0x30
	jne	.label_113
	cmp	byte ptr [rax + 5], 0x33
	jne	.label_113
	cmp	byte ptr [rax + 6], 0x30
	jne	.label_113
	cmp	byte ptr [rax + 7], 0
	je	.label_119
.label_113:
	cmp	ebp, 9
	mov	ecx, OFFSET FLAT:label_120
	mov	eax, OFFSET FLAT:label_121
.label_117:
	cmove	rax, rcx
.label_118:
	add	rsp, 8
	pop	rbx
	pop	rbp
	ret	
.label_119:
	cmp	byte ptr [rbx], 0x60
	mov	ecx, OFFSET FLAT:label_115
	mov	eax, OFFSET FLAT:label_116
	jmp	.label_117
	.section	.text
	.align	16
	#Procedure 0x4026e5
	.globl sub_4026e5
	.type sub_4026e5, @function
sub_4026e5:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4026f0
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
	je	.label_124
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
.label_124:
	call	abort
	.section	.text
	.align	16
	#Procedure 0x40275c
	.globl sub_40275c
	.type sub_40275c, @function
sub_40275c:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x402760
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
	je	.label_125
	movaps	xmmword ptr [rsp + 0x50], xmm0
	movaps	xmmword ptr [rsp + 0x60], xmm1
	movaps	xmmword ptr [rsp + 0x70], xmm2
	movaps	xmmword ptr [rsp + 0x80], xmm3
	movaps	xmmword ptr [rsp + 0x90], xmm4
	movaps	xmmword ptr [rsp + 0xa0], xmm5
	movaps	xmmword ptr [rsp + 0xb0], xmm6
	movaps	xmmword ptr [rsp + 0xc0], xmm7
.label_125:
	mov	ebp, dword ptr [rip + opterr]
	mov	dword ptr [rip + opterr],  0
	cmp	edi, 2
	jne	.label_127
	mov	edi, 2
	mov	edx, OFFSET FLAT:label_43
	mov	ecx, OFFSET FLAT:long_options
	xor	r8d, r8d
	call	getopt_long
	cmp	eax, 0x68
	je	.label_126
	cmp	eax, 0x76
	jne	.label_127
	lea	rax, [rsp + 0x20]
	mov	qword ptr [rsp + 0x10], rax
	lea	rax, [rsp + 0x100]
	mov	qword ptr [rsp + 8], rax
	mov	dword ptr [rsp + 4], 0x30
	mov	dword ptr [rsp], 0x30
	mov	rdi, qword ptr [rip + stdout]
	lea	r8, [rsp]
	mov	rsi, r12
	mov	rdx, r15
	mov	rcx, r14
	call	version_etc_va
	xor	edi, edi
	call	exit
.label_126:
	xor	edi, edi
	call	rbx
.label_127:
	mov	dword ptr [rip + opterr],  ebp
	mov	dword ptr [rip + optind],  0
	add	rsp, 0xd0
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x402856
	.globl sub_402856
	.type sub_402856, @function
sub_402856:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x402860
	.globl quotearg_n_custom
	.type quotearg_n_custom, @function
quotearg_n_custom:

	sub	rsp, 0x38
	mov	rax, qword ptr [rip + label_9]
	mov	qword ptr [rsp + 0x30], rax
	movups	xmm0, xmmword ptr [rip + label_10]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0, xmmword ptr [rip + label_11]
	movaps	xmmword ptr [rsp + 0x10], xmm0
	movups	xmm0, xmmword ptr [rip + default_quoting_options]
	movaps	xmmword ptr [rsp], xmm0
	mov	dword ptr [rsp], 0xa
	test	rsi, rsi
	je	.label_128
	test	rdx, rdx
	je	.label_128
	mov	qword ptr [rsp + 0x28], rsi
	mov	qword ptr [rsp + 0x30], rdx
	lea	rax, [rsp]
	mov	rdx, -1
	mov	rsi, rcx
	mov	rcx, rax
	call	quotearg_n_options
	add	rsp, 0x38
	ret	
.label_128:
	call	abort
	.section	.text
	.align	16
	#Procedure 0x4028ce
	.globl sub_4028ce
	.type sub_4028ce, @function
sub_4028ce:

	nop	
	.section	.text
	.align	16
	#Procedure 0x4028d0
	.globl version_etc_ar
	.type version_etc_ar, @function
version_etc_ar:

	mov	r9, -1
	nop	word ptr [rax + rax]
.label_129:
	cmp	qword ptr [r8 + r9*8 + 8], 0
	lea	r9, [r9 + 1]
	jne	.label_129
	jmp	version_etc_arn
	.section	.text
	.align	16
	#Procedure 0x4028f1
	.globl sub_4028f1
	.type sub_4028f1, @function
sub_4028f1:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x402900
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
	#Procedure 0x402919
	.globl sub_402919
	.type sub_402919, @function
sub_402919:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x402920

	.globl extract_trimmed_name
	.type extract_trimmed_name, @function
extract_trimmed_name:
	push	r14
	push	rbx
	push	rax
	mov	r14, rdi
	mov	edi, 0x21
	call	xmalloc
	mov	rbx, rax
	lea	rsi, [r14 + 0x2c]
	mov	edx, 0x20
	mov	rdi, rbx
	call	strncpy
	mov	byte ptr [rbx + 0x20], 0
	mov	rdi, rbx
	call	strlen
	test	rax, rax
	jle	.label_131
	add	rax, rbx
	nop	dword ptr [rax]
.label_130:
	cmp	byte ptr [rax - 1], 0x20
	jne	.label_131
	mov	byte ptr [rax - 1], 0
	dec	rax
	cmp	rbx, rax
	jb	.label_130
.label_131:
	mov	rax, rbx
	add	rsp, 8
	pop	rbx
	pop	r14
	ret	
	.section	.text
	.align	16
	#Procedure 0x40297d
	.globl sub_40297d
	.type sub_40297d, @function
sub_40297d:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x402980
	.globl quotearg_n_mem
	.type quotearg_n_mem, @function
quotearg_n_mem:

	mov	ecx, OFFSET FLAT:default_quoting_options
	jmp	quotearg_n_options
	.section	.text
	.align	16
	#Procedure 0x40298a
	.globl sub_40298a
	.type sub_40298a, @function
sub_40298a:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x402990

	.globl hard_locale
	.type hard_locale, @function
hard_locale:
	push	rbx
	xor	esi, esi
	call	setlocale
	mov	bl, 1
	test	rax, rax
	je	.label_133
	cmp	byte ptr [rax], 0x43
	jne	.label_135
	cmp	byte ptr [rax + 1], 0
	je	.label_132
.label_135:
	mov	esi, OFFSET FLAT:label_134
	mov	rdi, rax
	call	strcmp
	test	eax, eax
	jne	.label_133
.label_132:
	xor	ebx, ebx
.label_133:
	mov	eax, ebx
	pop	rbx
	ret	
	.section	.text
	.align	16
	#Procedure 0x4029c1
	.globl sub_4029c1
	.type sub_4029c1, @function
sub_4029c1:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4029d0

	.globl set_program_name
	.type set_program_name, @function
set_program_name:
	push	r14
	push	rbx
	push	rax
	mov	rbx, rdi
	test	rbx, rbx
	je	.label_139
	mov	esi, 0x2f
	mov	rdi, rbx
	call	strrchr
	test	rax, rax
	lea	r14, [rax + 1]
	cmove	r14, rbx
	mov	rax, r14
	sub	rax, rbx
	cmp	rax, 7
	jl	.label_141
	lea	rdi, [r14 - 7]
	mov	esi, OFFSET FLAT:label_136
	mov	edx, 7
	call	strncmp
	test	eax, eax
	jne	.label_141
	mov	esi, OFFSET FLAT:label_138
	mov	edx, 3
	mov	rdi, r14
	call	strncmp
	test	eax, eax
	jne	.label_137
	add	r14, 3
	mov	qword ptr [rip + __progname],  r14
.label_137:
	mov	rbx, r14
.label_141:
	mov	qword ptr [rip + program_name],  rbx
	mov	qword ptr [rip + __progname_full],  rbx
	add	rsp, 8
	pop	rbx
	pop	r14
	ret	
.label_139:
	mov	rcx, qword ptr [rip + stderr]
	mov	edi, OFFSET FLAT:label_140
	mov	esi, 0x37
	mov	edx, 1
	call	fwrite
	call	abort
	.section	.text
	.align	16
	#Procedure 0x402a71
	.globl sub_402a71
	.type sub_402a71, @function
sub_402a71:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x402a80
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
	#Procedure 0x402b41
	.globl sub_402b41
	.type sub_402b41, @function
sub_402b41:

	nop	word ptr cs:[rax + rax]
.label_142:
	call	abort
	.section	.text
	.align	16
	#Procedure 0x402b55
	.globl sub_402b55
	.type sub_402b55, @function
sub_402b55:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x402b59
	.globl quotearg_custom_mem
	.type quotearg_custom_mem, @function
quotearg_custom_mem:

	sub	rsp, 0x38
	mov	rax, qword ptr [rip + label_9]
	mov	qword ptr [rsp + 0x30], rax
	movups	xmm0, xmmword ptr [rip + label_10]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0, xmmword ptr [rip + label_11]
	movaps	xmmword ptr [rsp + 0x10], xmm0
	movups	xmm0, xmmword ptr [rip + default_quoting_options]
	movaps	xmmword ptr [rsp], xmm0
	mov	dword ptr [rsp], 0xa
	test	rdi, rdi
	je	.label_142
	test	rsi, rsi
	je	.label_142
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
	#Procedure 0x402bc0

	.globl xalloc_die
	.type xalloc_die, @function
xalloc_die:
	push	rbx
	mov	ebx, dword ptr [rip + exit_failure]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_143
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	xor	esi, esi
	mov	edx, OFFSET FLAT:label_17
	xor	eax, eax
	mov	edi, ebx
	call	error
	call	abort
	.section	.text
	.align	16
	#Procedure 0x402bf0

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
	#Procedure 0x402c07
	.globl sub_402c07
	.type sub_402c07, @function
sub_402c07:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x402c10
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
	je	.label_144
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
.label_144:
	call	abort
	.section	.text
	.align	16
	#Procedure 0x402c78
	.globl sub_402c78
	.type sub_402c78, @function
sub_402c78:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x402c80

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
	mov	esi, OFFSET FLAT:label_42
	call	setlocale
	mov	edi, OFFSET FLAT:label_148
	mov	esi, OFFSET FLAT:label_152
	call	bindtextdomain
	mov	edi, OFFSET FLAT:label_148
	call	textdomain
	mov	edi, OFFSET FLAT:close_stdout
	call	atexit
	mov	r8, qword ptr [rip + Version]
	mov	edx, OFFSET FLAT:label_85
	mov	ecx, OFFSET FLAT:label_92
	mov	r9d, 1
	mov	eax, 0
	mov	edi, ebp
	mov	rsi, rbx
	push	0
	push	OFFSET FLAT:label_145
	push	OFFSET FLAT:label_146
	push	OFFSET FLAT:usage
	call	parse_gnu_standard_options_only
	add	rsp, 0x20
	movsxd	rax, dword ptr [rip + optind]
	sub	ebp, eax
	cmp	ebp, 1
	je	.label_150
	test	ebp, ebp
	jne	.label_147
	mov	edi, OFFSET FLAT:label_83
	mov	esi, 1
	jmp	.label_149
.label_147:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_151
	mov	edx, 5
	call	dcgettext
	mov	rbp, rax
	movsxd	rax, dword ptr [rip + optind]
	mov	rdi, qword ptr [rbx + rax*8 + 8]
	call	quote
	mov	rcx, rax
	xor	edi, edi
	xor	esi, esi
	xor	eax, eax
	mov	rdx, rbp
	call	error
	mov	edi, 1
	call	usage
	.section	.text
	.align	16
	#Procedure 0x402d5b
	.globl sub_402d5b
	.type sub_402d5b, @function
sub_402d5b:

	nop	
.label_150:
	mov	rdi, qword ptr [rbx + rax*8]
	xor	esi, esi
.label_149:
	call	users
	xor	eax, eax
	add	rsp, 8
	pop	rbx
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x402d70
	.globl xcalloc
	.type xcalloc, @function
xcalloc:

	push	rax
	movabs	rax, 0x7fffffffffffffff
	xor	edx, edx
	div	rsi
	cmp	rax, rdi
	jb	.label_153
	call	rpl_calloc
	test	rax, rax
	je	.label_153
	pop	rcx
	ret	
.label_153:
	call	xalloc_die
	.section	.text
	.align	16
	#Procedure 0x402d96
	.globl sub_402d96
	.type sub_402d96, @function
sub_402d96:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x402da0
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
	#Procedure 0x402daf
	.globl sub_402daf
	.type sub_402daf, @function
sub_402daf:

	nop	
.label_155:
	mov	ebx, 0xffffffff
	test	eax, eax
	jne	.label_154
	call	__errno_location
	mov	dword ptr [rax], 0
.label_154:
	mov	eax, ebx
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x402dcb

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
	jne	.label_155
	test	eax, eax
	sete	cl
	neg	eax
	sbb	ebx, ebx
	test	r14, r14
	jne	.label_154
	test	cl, cl
	jne	.label_154
	call	__errno_location
	xor	ecx, ecx
	cmp	dword ptr [rax], 9
	mov	ebx, 0xffffffff
	cmove	ebx, ecx
	jmp	.label_154
	.section	.text
	.align	16
	#Procedure 0x402e10

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
	je	.label_165
	mov	edx, OFFSET FLAT:label_171
	xor	eax, eax
	mov	rdi, r14
	mov	r8, rbx
	call	__fprintf_chk
	jmp	.label_158
.label_165:
	mov	edx, OFFSET FLAT:label_160
	xor	eax, eax
	mov	rdi, r14
	mov	rcx, rbx
	mov	r8, r9
	call	__fprintf_chk
.label_158:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_164
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
	mov	esi, OFFSET FLAT:label_161
	mov	edx, 5
	call	dcgettext
	mov	rdi, rax
	mov	rsi, r14
	call	fputs_unlocked
	cmp	r12, 9
	ja	.label_166
	jmp	qword ptr [(r12 * 8) + label_167]
.label_414:
	add	rsp, 8
	jmp	.label_159
.label_166:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_174
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
	jmp	.label_159
.label_415:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_162
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
.label_416:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_156
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
.label_417:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_172
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
.label_418:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_169
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
	jmp	.label_159
.label_419:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_168
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
	jmp	.label_159
.label_420:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_170
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
	jmp	.label_159
.label_421:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_173
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
	jmp	.label_159
.label_423:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_157
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
	jmp	.label_159
.label_422:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_163
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
.label_159:
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	ret	
	.section	.text
	.align	16
	#Procedure 0x403168
	.globl sub_403168
	.type sub_403168, @function
sub_403168:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x403170

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
.label_184:
	mov	r11, rbp
	xor	r14d, r14d
	mov	ecx, r15d
	cmp	r15d, 0xa
	ja	.label_182
	mov	edi, 7
	mov	r13b, 1
	xor	esi, esi
	mov	r8, qword ptr [rsp + 0x30]
	jmp	qword ptr [(rcx * 8) + label_187]
.label_381:
	mov	byte ptr [rsp + 7], r10b
	mov	edi, OFFSET FLAT:label_193
	mov	esi, r15d
	mov	rbx, r11
	mov	ebp, r9d
	call	gettext_quote
	mov	qword ptr [rsp + 0x78], rax
	mov	edi, OFFSET FLAT:label_121
	mov	esi, r15d
	call	gettext_quote
	mov	r9d, ebp
	mov	r10b, byte ptr [rsp + 7]
	mov	r11, rbx
	mov	qword ptr [rsp + 0x70], rax
.label_382:
	mov	dword ptr [rsp + 0x50], r9d
	mov	byte ptr [rsp + 7], r10b
	test	r12b, 1
	mov	r14d, 0
	mov	rcx, qword ptr [rsp + 0x78]
	jne	.label_208
	mov	al, byte ptr [rcx]
	test	al, al
	mov	r14d, 0
	je	.label_208
	xor	r14d, r14d
	nop	word ptr cs:[rax + rax]
.label_222:
	cmp	r14, r11
	jae	.label_185
	mov	rdx, qword ptr [rsp + 8]
	mov	byte ptr [rdx + r14], al
.label_185:
	movzx	eax, byte ptr [rcx + r14 + 1]
	inc	r14
	test	al, al
	jne	.label_222
.label_208:
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
	jmp	.label_241
.label_374:
	xor	edi, edi
	xor	r14d, r14d
	mov	r13d, eax
	xor	esi, esi
	jmp	.label_241
.label_377:
	mov	al, 1
.label_375:
	mov	r12b, 1
.label_378:
	test	r12b, 1
	mov	cl, 1
	je	.label_245
	mov	ecx, eax
.label_245:
	mov	al, cl
.label_376:
	test	r12b, 1
	jne	.label_247
	test	r11, r11
	je	.label_240
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx], 0x27
.label_240:
	mov	r14d, 1
	jmp	.label_251
.label_247:
	xor	r14d, r14d
.label_251:
	mov	ecx, OFFSET FLAT:label_121
	mov	qword ptr [rsp + 0x48], rcx
	mov	ecx, 1
	mov	qword ptr [rsp + 0x40], rcx
	mov	r13d, eax
	mov	sil, r12b
	mov	edi, 2
	jmp	.label_241
.label_379:
	test	r12b, 1
	jne	.label_262
	test	r11, r11
	je	.label_265
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax], 0x22
.label_265:
	mov	r14d, 1
	jmp	.label_267
.label_380:
	mov	r13b, 1
	mov	edi, 5
	xor	r14d, r14d
	mov	eax, OFFSET FLAT:label_120
	mov	qword ptr [rsp + 0x48], rax
	mov	eax, 1
	mov	qword ptr [rsp + 0x40], rax
	mov	sil, 1
	jmp	.label_241
.label_262:
	xor	r14d, r14d
.label_267:
	mov	eax, OFFSET FLAT:label_120
	mov	qword ptr [rsp + 0x48], rax
	mov	eax, 1
	mov	qword ptr [rsp + 0x40], rax
	mov	r13b, 1
	mov	sil, r12b
	mov	edi, 5
	nop	word ptr cs:[rax + rax]
.label_241:
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
	jmp	.label_285
	.section	.text
	.align	16
	#Procedure 0x40345d
	.globl sub_40345d
	.type sub_40345d, @function
sub_40345d:

	nop	dword ptr [rax]
.label_225:
	inc	rsi
.label_285:
	cmp	rbp, -1
	je	.label_200
	cmp	rsi, rbp
	jne	.label_203
	jmp	.label_204
	.section	.text
	.align	16
	#Procedure 0x403473
	.globl sub_403473
	.type sub_403473, @function
sub_403473:

	nop	word ptr cs:[rax + rax]
.label_200:
	mov	rcx, -1
	cmp	byte ptr [rdi + rsi], 0
	je	.label_209
.label_203:
	cmp	byte ptr [rsp + 0x2f], 0
	je	.label_264
	mov	rax, qword ptr [rsp + 0x40]
	lea	rbx, [rsi + rax]
	cmp	rax, 2
	jb	.label_218
	cmp	rbp, -1
	jne	.label_218
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
.label_218:
	cmp	rbx, rbp
	jbe	.label_249
.label_264:
	xor	r8d, r8d
.label_258:
	movzx	r15d, byte ptr [rdi + rsi]
	cmp	r15, 0x7e
	ja	.label_232
	xor	edx, edx
	mov	r13b, 1
	mov	cl, 0x6e
	mov	bl, 0x61
	xor	eax, eax
	jmp	qword ptr [(r15 * 8) + label_235]
.label_395:
	test	rsi, rsi
	jne	.label_226
	jmp	.label_243
	.section	.text
	.align	16
	#Procedure 0x403515
	.globl sub_403515
	.type sub_403515, @function
sub_403515:

	nop	word ptr cs:[rax + rax]
.label_249:
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
	jne	.label_255
	cmp	byte ptr [rsp + 6], 0
	mov	rdi, qword ptr [rsp + 0x30]
	mov	r11, rbx
	mov	r10d, r15d
	mov	rax, qword ptr [rsp + 0x38]
	mov	r9d, ebp
	mov	rsi, r12
	mov	r12, rax
	mov	rbp, qword ptr [rsp + 0x20]
	je	.label_258
	jmp	.label_253
.label_255:
	mov	rdi, qword ptr [rsp + 0x30]
	mov	r11, rbx
	mov	r10d, r15d
	mov	rax, qword ptr [rsp + 0x38]
	mov	r9d, ebp
	mov	rsi, r12
	mov	r12, rax
	mov	rbp, qword ptr [rsp + 0x20]
	jmp	.label_258
.label_399:
	xor	eax, eax
	cmp	rbp, -1
	je	.label_278
	test	rsi, rsi
	jne	.label_279
	cmp	rbp, 1
	je	.label_243
	xor	r13d, r13d
	jmp	.label_181
.label_388:
	cmp	byte ptr [rsp + 0x17], 0
	je	.label_284
	cmp	byte ptr [rsp + 6], 0
	jne	.label_224
	cmp	r12d, 2
	jne	.label_287
	mov	eax, r9d
	and	al, 1
	jne	.label_287
	cmp	r14, r11
	jae	.label_289
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], 0x27
.label_289:
	lea	rax, [r14 + 1]
	cmp	rax, r11
	jae	.label_291
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + rax], 0x24
.label_291:
	lea	rax, [r14 + 2]
	cmp	rax, r11
	jae	.label_188
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + rax], 0x27
.label_188:
	add	r14, 3
	mov	r9b, 1
.label_287:
	mov	rcx, r14
	cmp	rcx, r11
	jae	.label_277
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + rcx], 0x5c
.label_277:
	lea	r14, [rcx + 1]
	mov	al, 1
	mov	r15b, 0x30
	cmp	r12d, 2
	je	.label_189
	lea	rdx, [rsi + 1]
	cmp	rdx, rbp
	jae	.label_189
	mov	dl, byte ptr [rdi + rdx]
	add	dl, 0xd0
	cmp	dl, 9
	ja	.label_189
	cmp	r14, r11
	jae	.label_244
	mov	rdx, qword ptr [rsp + 8]
	mov	byte ptr [rdx + r14], 0x30
.label_244:
	lea	rdx, [rcx + 2]
	cmp	rdx, r11
	jae	.label_229
	mov	rbx, qword ptr [rsp + 8]
	mov	byte ptr [rbx + rdx], 0x30
.label_229:
	add	rcx, 3
	xor	r13d, r13d
	mov	r14, rcx
	jmp	.label_181
.label_389:
	mov	bl, 0x62
	jmp	.label_213
.label_390:
	mov	cl, 0x74
	jmp	.label_216
.label_391:
	mov	bl, 0x76
	jmp	.label_213
.label_392:
	mov	bl, 0x66
	jmp	.label_213
.label_393:
	mov	cl, 0x72
	jmp	.label_216
.label_396:
	mov	r15b, 0x27
	mov	al, 1
	mov	qword ptr [rsp + 0xa0], rax
	cmp	r12d, 2
	jne	.label_221
	cmp	byte ptr [rsp + 6], 0
	jne	.label_190
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
	jae	.label_228
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], 0x27
.label_228:
	lea	rax, [r14 + 1]
	cmp	rax, r11
	jae	.label_242
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + rax], 0x5c
.label_242:
	lea	rax, [r14 + 2]
	cmp	rax, r11
	jae	.label_246
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + rax], 0x27
.label_246:
	add	r14, 3
	xor	r9d, r9d
.label_221:
	xor	eax, eax
	mov	r13b, 1
	jmp	.label_181
.label_397:
	mov	r15b, 0x3f
	cmp	r12d, 5
	je	.label_252
	cmp	r12d, 2
	jne	.label_226
	cmp	byte ptr [rsp + 6], 0
	je	.label_226
	jmp	.label_190
.label_398:
	cmp	r12d, 2
	jne	.label_263
	cmp	byte ptr [rsp + 6], 0
	jne	.label_190
	mov	r15b, 0x5c
	xor	eax, eax
	xor	r13d, r13d
	jmp	.label_214
.label_232:
	mov	dword ptr [rsp + 0x54], r8d
	mov	dword ptr [rsp + 0x50], r9d
	mov	byte ptr [rsp + 7], r10b
	mov	qword ptr [rsp + 0x98], r11
	cmp	qword ptr [rsp + 0xa8], 1
	jne	.label_274
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
.label_220:
	and	r13b, 1
	mov	r8d, r13d
	or	r8b, byte ptr [rsp + 0x2a]
	mov	qword ptr [rsp + 0x60], r12
	cmp	r12, 1
	mov	r11, qword ptr [rsp + 0x98]
	mov	r10b, byte ptr [rsp + 7]
	mov	r12, qword ptr [rsp + 0x38]
	mov	r9d, dword ptr [rsp + 0x50]
	ja	.label_177
	test	r8b, r8b
	je	.label_177
	xor	eax, eax
	mov	rbp, qword ptr [rsp + 0x20]
	mov	r8d, dword ptr [rsp + 0x54]
	jmp	.label_181
.label_278:
	test	rsi, rsi
	jne	.label_239
	mov	cl, byte ptr [rdi + 1]
	test	cl, cl
	jne	.label_239
.label_243:
	mov	dl, 1
.label_394:
	cmp	byte ptr [rsp + 0x1f], 0
	je	.label_190
	xor	eax, eax
	mov	r13b, dl
	nop	word ptr [rax + rax]
.label_181:
	cmp	byte ptr [rsp + 0x2e], 0
	je	.label_195
	cmp	qword ptr [rsp + 0xf0], 0
	jne	.label_196
	jmp	.label_199
	.section	.text
	.align	16
	#Procedure 0x403864
	.globl sub_403864
	.type sub_403864, @function
sub_403864:

	nop	word ptr cs:[rax + rax]
.label_195:
	cmp	byte ptr [rsp + 0x2d], 0
	je	.label_199
.label_196:
	mov	ebx, r8d
	mov	r8, rsi
	mov	ecx, r15d
	shr	cl, 5
	movzx	edx, cl
	mov	esi, 1
	mov	ecx, r15d
	shl	esi, cl
	test	bl, bl
	jne	.label_206
	mov	rcx, qword ptr [rsp + 0xf0]
	and	esi, dword ptr [rcx + rdx*4]
	mov	ebx, r15d
	mov	rsi, r8
	je	.label_214
	jmp	.label_219
	.section	.text
	.align	16
	#Procedure 0x4038ad
	.globl sub_4038ad
	.type sub_4038ad, @function
sub_4038ad:

	nop	dword ptr [rax]
.label_199:
	test	r8b, r8b
	mov	ebx, r15d
	jne	.label_219
	jmp	.label_214
.label_206:
	mov	ebx, r15d
	mov	rsi, r8
	jmp	.label_219
.label_284:
	cmp	dword ptr [rsp + 0x90], 0
	jne	.label_225
	xor	r15d, r15d
	jmp	.label_226
.label_263:
	mov	cl, 0x5c
	cmp	byte ptr [rsp + 0x29], 0
	je	.label_216
	xor	eax, eax
	mov	r15b, 0x5c
	xor	r13d, r13d
	jmp	.label_214
.label_216:
	cmp	byte ptr [rsp + 0x1f], 0
	mov	ebx, ecx
	je	.label_190
.label_213:
	xor	eax, eax
	cmp	byte ptr [rsp + 0x17], 0
	mov	r13d, 0
	je	.label_181
	nop	word ptr cs:[rax + rax]
.label_219:
	cmp	byte ptr [rsp + 6], 0
	jne	.label_224
	cmp	r12d, 2
	jne	.label_248
	mov	eax, r9d
	and	al, 1
	jne	.label_248
	cmp	r14, r11
	jae	.label_259
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], 0x27
.label_259:
	lea	rax, [r14 + 1]
	cmp	rax, r11
	jae	.label_256
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + rax], 0x24
.label_256:
	lea	rax, [r14 + 2]
	cmp	rax, r11
	jae	.label_192
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + rax], 0x27
.label_192:
	add	r14, 3
	mov	r9b, 1
.label_248:
	cmp	r14, r11
	jae	.label_266
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], 0x5c
.label_266:
	inc	r14
	jmp	.label_270
.label_274:
	mov	qword ptr [rsp + 0x80], 0
	cmp	rbp, -1
	jne	.label_275
	mov	rbx, rsi
	call	strlen
	mov	rsi, rbx
	mov	rdi, qword ptr [rsp + 0x30]
	mov	rbp, rax
.label_275:
	lea	rax, [rdi + rsi]
	mov	qword ptr [rsp + 0x60], rax
	mov	r13b, 1
	xor	r12d, r12d
	lea	rax, [rsp + 0x80]
	mov	rcx, rax
	mov	qword ptr [rsp + 0x20], rbp
	mov	qword ptr [rsp + 0x58], rsi
.label_268:
	lea	rbx, [r12 + rsi]
	lea	rsi, [rdi + rbx]
	mov	rdx, rbp
	sub	rdx, rbx
	lea	rdi, [rsp + 0x94]
	call	rpl_mbrtowc
	mov	rbp, rax
	test	rbp, rbp
	je	.label_290
	cmp	rbp, -1
	movabs	rsi, 0x20000002b
	je	.label_293
	cmp	rbp, -2
	je	.label_180
	cmp	rbp, 1
	seta	al
	and	al, byte ptr [rsp + 0x2b]
	cmp	al, 1
	mov	rdi, qword ptr [rsp + 0x30]
	mov	r11, qword ptr [rsp + 0x98]
	jne	.label_211
	mov	rax, qword ptr [rsp + 0x60]
	lea	rax, [rax + r12]
	mov	ecx, 1
	nop	word ptr cs:[rax + rax]
.label_202:
	movsx	edx, byte ptr [rax + rcx]
	add	edx, -0x5b
	cmp	edx, 0x21
	ja	.label_288
	bt	rsi, rdx
	jb	.label_198
.label_288:
	inc	rcx
	cmp	rcx, rbp
	jb	.label_202
.label_211:
	mov	edi, dword ptr [rsp + 0x94]
	call	iswprint
	test	eax, eax
	jne	.label_186
	xor	r13d, r13d
.label_186:
	lea	rdi, [rsp + 0x80]
	add	r12, rbp
	mov	rbx, rdi
	call	mbsinit
	mov	rcx, rbx
	test	eax, eax
	mov	rdi, qword ptr [rsp + 0x30]
	mov	rbp, qword ptr [rsp + 0x20]
	mov	rsi, qword ptr [rsp + 0x58]
	je	.label_268
	jmp	.label_220
.label_189:
	xor	r13d, r13d
	jmp	.label_181
.label_239:
	mov	rbp, -1
	xor	r13d, r13d
	jmp	.label_181
.label_252:
	cmp	dword ptr [rsp + 0x8c], 0
	je	.label_226
	lea	rcx, [rsi + 2]
	cmp	rcx, rbp
	jae	.label_226
	cmp	byte ptr [rdi + rsi + 1], 0x3f
	jne	.label_226
	movsx	edx, byte ptr [rdi + rcx]
	xor	eax, eax
	cmp	edx, 0x3e
	ja	.label_233
	mov	rbx, rsi
	movabs	rsi, 0x7000a38200000000
	bt	rsi, rdx
	jae	.label_294
	cmp	byte ptr [rsp + 6], 0
	jne	.label_210
	cmp	r14, r11
	jae	.label_223
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], 0x3f
.label_223:
	lea	rax, [r14 + 1]
	cmp	rax, r11
	jae	.label_276
	mov	rsi, qword ptr [rsp + 8]
	mov	byte ptr [rsi + rax], 0x22
.label_276:
	lea	rax, [r14 + 2]
	cmp	rax, r11
	jae	.label_254
	mov	rsi, qword ptr [rsp + 8]
	mov	byte ptr [rsi + rax], 0x22
.label_254:
	lea	rax, [r14 + 3]
	cmp	rax, r11
	jae	.label_250
	mov	rsi, qword ptr [rsp + 8]
	mov	byte ptr [rsi + rax], 0x3f
.label_250:
	add	r14, 4
	xor	eax, eax
	mov	rsi, rcx
	mov	r15b, dl
	xor	r13d, r13d
	jmp	.label_181
.label_226:
	xor	eax, eax
.label_279:
	xor	r13d, r13d
	jmp	.label_181
.label_177:
	add	qword ptr [rsp + 0x60], rsi
	xor	eax, eax
	mov	rbp, qword ptr [rsp + 0x20]
	jmp	.label_272
	.section	.text
	.align	16
	#Procedure 0x403b92
	.globl sub_403b92
	.type sub_403b92, @function
sub_403b92:

	nop	word ptr cs:[rax + rax]
.label_227:
	inc	r14
	mov	r15b, byte ptr [rdi + rsi + 1]
	mov	rsi, rdx
.label_272:
	test	r8b, r8b
	je	.label_280
	mov	ecx, dword ptr [rsp + 0x54]
	test	cl, 1
	je	.label_281
	cmp	r14, r11
	jae	.label_282
	mov	rdx, qword ptr [rsp + 8]
	mov	byte ptr [rdx + r14], 0x5c
.label_282:
	inc	r14
	mov	dword ptr [rsp + 0x54], 0
	jmp	.label_281
	.section	.text
	.align	16
	#Procedure 0x403bdc
	.globl sub_403bdc
	.type sub_403bdc, @function
sub_403bdc:

	nop	dword ptr [rax]
.label_280:
	cmp	byte ptr [rsp + 6], 0
	jne	.label_253
	cmp	r12d, 2
	jne	.label_271
	mov	eax, r9d
	and	al, 1
	jne	.label_271
	cmp	r14, r11
	jae	.label_292
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], 0x27
.label_292:
	lea	rax, [r14 + 1]
	cmp	rax, r11
	jae	.label_175
	mov	rdx, qword ptr [rsp + 8]
	mov	byte ptr [rdx + rax], 0x24
.label_175:
	lea	rax, [r14 + 2]
	cmp	rax, r11
	jae	.label_183
	mov	rdx, qword ptr [rsp + 8]
	mov	byte ptr [rdx + rax], 0x27
.label_183:
	add	r14, 3
	mov	r9b, 1
.label_271:
	cmp	r14, r11
	jae	.label_230
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], 0x5c
.label_230:
	lea	rax, [r14 + 1]
	cmp	rax, r11
	jae	.label_273
	mov	edx, r15d
	shr	dl, 6
	or	dl, 0x30
	mov	rbx, qword ptr [rsp + 8]
	mov	byte ptr [rbx + rax], dl
.label_273:
	lea	rax, [r14 + 2]
	cmp	rax, r11
	jae	.label_197
	mov	edx, r15d
	shr	dl, 3
	and	dl, 7
	or	dl, 0x30
	mov	rbx, qword ptr [rsp + 8]
	mov	byte ptr [rbx + rax], dl
.label_197:
	add	r14, 3
	and	r15b, 7
	or	r15b, 0x30
	mov	al, 1
.label_281:
	lea	rdx, [rsi + 1]
	cmp	qword ptr [rsp + 0x60], rdx
	jbe	.label_214
	test	r9b, 1
	je	.label_215
	mov	ebx, eax
	and	bl, 1
	jne	.label_215
	mov	rbx, rsi
	cmp	r14, r11
	jae	.label_217
	mov	rsi, qword ptr [rsp + 8]
	mov	byte ptr [rsi + r14], 0x27
.label_217:
	lea	rsi, [r14 + 1]
	cmp	rsi, r11
	jae	.label_201
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + rsi], 0x27
.label_201:
	add	r14, 2
	xor	r9d, r9d
	mov	rsi, rbx
.label_215:
	cmp	r14, r11
	jae	.label_227
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + r14], r15b
	jmp	.label_227
	.section	.text
	.align	16
	#Procedure 0x403ce3
	.globl sub_403ce3
	.type sub_403ce3, @function
sub_403ce3:

	nop	word ptr cs:[rax + rax]
.label_214:
	test	r9b, 1
	je	.label_236
	and	al, 1
	jne	.label_236
	cmp	r14, r11
	jae	.label_237
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], 0x27
.label_237:
	lea	rax, [r14 + 1]
	cmp	rax, r11
	jae	.label_238
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + rax], 0x27
.label_238:
	add	r14, 2
	xor	r9d, r9d
.label_236:
	mov	ebx, r15d
.label_270:
	cmp	r14, r11
	jae	.label_231
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], bl
.label_231:
	inc	r14
	shl	r13b, 7
	sar	r13b, 7
	and	r13b, r10b
	mov	r10d, r13d
	jmp	.label_225
.label_293:
	xor	r13d, r13d
.label_290:
	mov	rdi, qword ptr [rsp + 0x30]
	mov	rsi, qword ptr [rsp + 0x58]
	jmp	.label_220
.label_180:
	mov	rbp, qword ptr [rsp + 0x20]
	cmp	rbp, rbx
	mov	rdi, qword ptr [rsp + 0x30]
	jbe	.label_261
	mov	rsi, qword ptr [rsp + 0x58]
.label_269:
	mov	rax, qword ptr [rsp + 0x60]
	cmp	byte ptr [rax + r12], 0
	je	.label_234
	lea	rax, [rsi + r12 + 1]
	inc	r12
	cmp	rax, rbp
	jb	.label_269
	xor	r13d, r13d
	jmp	.label_220
.label_261:
	xor	r13d, r13d
	mov	rsi, qword ptr [rsp + 0x58]
	jmp	.label_220
.label_234:
	xor	r13d, r13d
	jmp	.label_220
.label_233:
	xor	r13d, r13d
	jmp	.label_181
.label_294:
	xor	r13d, r13d
	mov	rsi, rbx
	jmp	.label_181
	.section	.text
	.align	16
	#Procedure 0x403db8
	.globl sub_403db8
	.type sub_403db8, @function
sub_403db8:

	nop	dword ptr [rax + rax]
.label_204:
	mov	rcx, rsi
.label_209:
	cmp	r12d, 2
	setne	al
	test	r14, r14
	setne	dl
	cmp	byte ptr [rsp + 6], 0
	je	.label_283
	or	al, dl
	je	.label_286
.label_283:
	cmp	r12d, 2
	setne	al
	cmp	byte ptr [rsp + 6], 0
	setne	dl
	mov	rsi, qword ptr [rsp + 0xa0]
	test	sil, 1
	mov	bl, byte ptr [rsp + 0x2c]
	mov	rsi, qword ptr [rsp + 0xb0]
	je	.label_176
	or	al, dl
	jne	.label_176
	test	r10b, 1
	jne	.label_179
	cmp	qword ptr [rsp + 0x68], 0
	je	.label_176
	test	r11, r11
	mov	r15d, r12d
	mov	al, bl
	mov	qword ptr [rsp + 0x20], rcx
	mov	r12d, esi
	mov	rbp, qword ptr [rsp + 0x68]
	je	.label_184
.label_176:
	mov	rdx, qword ptr [rsp + 0x48]
	test	rdx, rdx
	je	.label_191
	cmp	byte ptr [rsp + 6], 0
	mov	rcx, qword ptr [rsp + 8]
	jne	.label_178
	mov	al, byte ptr [rdx]
	test	al, al
	je	.label_178
	inc	rdx
	nop	word ptr cs:[rax + rax]
.label_207:
	cmp	r14, r11
	jae	.label_205
	mov	byte ptr [rcx + r14], al
.label_205:
	inc	r14
	movzx	eax, byte ptr [rdx]
	inc	rdx
	test	al, al
	jne	.label_207
	jmp	.label_178
.label_224:
	mov	qword ptr [rsp + 0x20], rbp
.label_253:
	mov	rdx, rdi
	jmp	.label_212
.label_190:
	mov	qword ptr [rsp + 0x20], rbp
.label_198:
	mov	rdx, rdi
	mov	eax, 2
.label_194:
	mov	qword ptr [rsp + 0x38], rax
.label_212:
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
.label_257:
	mov	r14, rax
.label_260:
	mov	rax, r14
	add	rsp, 0xb8
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_286:
	mov	rdx, rdi
	mov	qword ptr [rsp + 0x20], rcx
	jmp	.label_212
.label_179:
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
	jmp	.label_257
.label_191:
	mov	rcx, qword ptr [rsp + 8]
.label_178:
	cmp	r14, r11
	jae	.label_260
	mov	byte ptr [rcx + r14], 0
	jmp	.label_260
.label_210:
	mov	qword ptr [rsp + 0x20], rbp
	mov	rdx, rdi
	mov	eax, 5
	jmp	.label_194
.label_182:
	call	abort
	.section	.text
	.align	16
	#Procedure 0x403f77
	.globl sub_403f77
	.type sub_403f77, @function
sub_403f77:

	nop	word ptr [rax + rax]
.label_295:
	mov	rdi, rbx
	pop	rbx
	pop	r14
	pop	rbp
	jmp	fclose
	.section	.text
	.align	16
	#Procedure 0x403f8c
	.globl sub_403f8c
	.type sub_403f8c, @function
sub_403f8c:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x403f98

	.globl rpl_fclose
	.type rpl_fclose, @function
rpl_fclose:
	push	rbp
	push	r14
	push	rbx
	mov	rbx, rdi
	call	fileno
	test	eax, eax
	js	.label_295
	mov	rdi, rbx
	call	__freading
	test	eax, eax
	je	.label_297
	mov	rdi, rbx
	call	fileno
	xor	esi, esi
	mov	edx, 1
	mov	edi, eax
	call	lseek
	cmp	rax, -1
	je	.label_295
.label_297:
	mov	rdi, rbx
	call	rpl_fflush
	test	eax, eax
	je	.label_295
	call	__errno_location
	mov	r14, rax
	mov	ebp, dword ptr [r14]
	mov	rdi, rbx
	call	fclose
	test	ebp, ebp
	je	.label_296
	mov	dword ptr [r14], ebp
	mov	eax, 0xffffffff
.label_296:
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x404000
	.globl quote_n
	.type quote_n, @function
quote_n:

	mov	rdx, -1
	mov	ecx, OFFSET FLAT:quote_quoting_options
	jmp	quotearg_n_options
	.section	.text
	.align	16
	#Procedure 0x404011
	.globl sub_404011
	.type sub_404011, @function
sub_404011:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404020

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
	#Procedure 0x404039
	.globl sub_404039
	.type sub_404039, @function
sub_404039:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x404040

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
	je	.label_298
	cmp	r15, -2
	jb	.label_298
	xor	edi, edi
	call	hard_locale
	test	al, al
	jne	.label_298
	movzx	eax, byte ptr [r14]
	mov	dword ptr [rbx], eax
	mov	r15d, 1
.label_298:
	mov	rax, r15
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	ret	
	.section	.text
	.align	16
	#Procedure 0x404096
	.globl sub_404096
	.type sub_404096, @function
sub_404096:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4040a0

	.globl quotearg_colon
	.type quotearg_colon, @function
quotearg_colon:
	sub	rsp, 0x38
	mov	rax, rdi
	mov	rcx, qword ptr [rip + label_9]
	mov	qword ptr [rsp + 0x30], rcx
	movups	xmm0, xmmword ptr [rip + label_10]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0, xmmword ptr [rip + label_11]
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
	#Procedure 0x4040f5
	.globl sub_4040f5
	.type sub_4040f5, @function
sub_4040f5:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404100

	.globl locale_charset
	.type locale_charset, @function
locale_charset:
	push	rax
	mov	edi, 0xe
	call	rpl_nl_langinfo
	test	rax, rax
	mov	ecx, OFFSET FLAT:label_42
	cmovne	rcx, rax
	cmp	byte ptr [rcx], 0
	mov	eax, OFFSET FLAT:label_299
	cmovne	rax, rcx
	pop	rcx
	ret	
	.section	.text
	.align	16
	#Procedure 0x404125
	.globl sub_404125
	.type sub_404125, @function
sub_404125:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404130
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
	#Procedure 0x404148
	.globl sub_404148
	.type sub_404148, @function
sub_404148:

	nop	dword ptr [rax + rax]
.label_300:
	call	xalloc_die
	.section	.text
	.align	16
	#Procedure 0x404155
	.globl sub_404155
	.type sub_404155, @function
sub_404155:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40415b
	.globl xcharalloc
	.type xcharalloc, @function
xcharalloc:

	push	rbx
	mov	rbx, rdi
	call	malloc
	test	rbx, rbx
	je	.label_301
	test	rax, rax
	je	.label_300
.label_301:
	pop	rbx
	ret	
	.section	.text
	.align	16
	#Procedure 0x404170

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
	je	.label_302
	test	r15, r15
	je	.label_303
.label_302:
	mov	rdi, r15
	mov	rsi, r14
	mov	rdx, rbx
	call	memcpy
	mov	rax, r15
	pop	rbx
	pop	r14
	pop	r15
	ret	
.label_303:
	call	xalloc_die
	.section	.text
	.align	16
	#Procedure 0x4041ac
	.globl sub_4041ac
	.type sub_4041ac, @function
sub_4041ac:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x4041b0
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
	#Procedure 0x4041e3
	.globl sub_4041e3
	.type sub_4041e3, @function
sub_4041e3:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4041f0
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
	je	.label_304
	mov	qword ptr [rax], rbx
.label_304:
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
	#Procedure 0x4042dc
	.globl sub_4042dc
	.type sub_4042dc, @function
sub_4042dc:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x4042e0
	.globl quotearg_char
	.type quotearg_char, @function
quotearg_char:

	sub	rsp, 0x38
	mov	ecx, esi
	mov	rax, rdi
	mov	rdx, qword ptr [rip + label_9]
	mov	qword ptr [rsp + 0x30], rdx
	movups	xmm0, xmmword ptr [rip + label_10]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0, xmmword ptr [rip + label_11]
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
	#Procedure 0x40434f
	.globl sub_40434f
	.type sub_40434f, @function
sub_40434f:

	nop	
.label_305:
	call	abort
	.section	.text
	.align	16
	#Procedure 0x404355
	.globl sub_404355
	.type sub_404355, @function
sub_404355:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40435d
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
	je	.label_305
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
	#Procedure 0x4043c0
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
	je	.label_307
	test	r15, r15
	je	.label_306
.label_307:
	mov	rdi, r15
	mov	rsi, r14
	mov	rdx, rbx
	call	memcpy
	mov	rax, r15
	pop	rbx
	pop	r14
	pop	r15
	ret	
.label_306:
	call	xalloc_die
	.section	.text
	.align	16
	#Procedure 0x404402
	.globl sub_404402
	.type sub_404402, @function
sub_404402:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404410
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
	#Procedure 0x404446
	.globl sub_404446
	.type sub_404446, @function
sub_404446:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404450

	.globl xrealloc
	.type xrealloc, @function
xrealloc:
	push	rbx
	mov	rbx, rsi
	test	rdi, rdi
	je	.label_308
	test	rbx, rbx
	jne	.label_308
	call	free
	xor	eax, eax
	pop	rbx
	ret	
.label_310:
	call	xalloc_die
.label_308:
	mov	rsi, rbx
	call	realloc
	test	rbx, rbx
	je	.label_309
	test	rax, rax
	je	.label_310
.label_309:
	pop	rbx
	ret	
	.section	.text
	.align	16
	#Procedure 0x404480
	.globl xnmalloc
	.type xnmalloc, @function
xnmalloc:

	push	rbx
	mov	rbx, rsi
	movabs	rax, 0x7fffffffffffffff
	xor	edx, edx
	div	rbx
	cmp	rax, rdi
	jb	.label_311
	imul	rbx, rdi
	mov	rdi, rbx
	call	malloc
	test	rbx, rbx
	je	.label_312
	test	rax, rax
	je	.label_311
.label_312:
	pop	rbx
	ret	
.label_311:
	call	xalloc_die
	.section	.text
	.align	16
	#Procedure 0x4044b5
	.globl sub_4044b5
	.type sub_4044b5, @function
sub_4044b5:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4044c0
	.globl quote_n_mem
	.type quote_n_mem, @function
quote_n_mem:

	mov	ecx, OFFSET FLAT:quote_quoting_options
	jmp	quotearg_n_options
	.section	.text
	.align	16
	#Procedure 0x4044ca
	.globl sub_4044ca
	.type sub_4044ca, @function
sub_4044ca:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4044d0
	.globl version_etc
	.type version_etc, @function
version_etc:

	sub	rsp, 0xd8
	test	al, al
	je	.label_313
	movaps	xmmword ptr [rsp + 0x50], xmm0
	movaps	xmmword ptr [rsp + 0x60], xmm1
	movaps	xmmword ptr [rsp + 0x70], xmm2
	movaps	xmmword ptr [rsp + 0x80], xmm3
	movaps	xmmword ptr [rsp + 0x90], xmm4
	movaps	xmmword ptr [rsp + 0xa0], xmm5
	movaps	xmmword ptr [rsp + 0xb0], xmm6
	movaps	xmmword ptr [rsp + 0xc0], xmm7
.label_313:
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
	#Procedure 0x404553
	.globl sub_404553
	.type sub_404553, @function
sub_404553:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404560

	.globl read_utmp
	.type read_utmp, @function
read_utmp:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x18
	mov	r14d, ecx
	mov	qword ptr [rsp + 0x10], rdx
	mov	qword ptr [rsp + 8], rsi
	call	utmpxname
	call	setutxent
	call	getutxent
	mov	rbx, rax
	xor	r12d, r12d
	test	rbx, rbx
	mov	ebp, 0
	je	.label_316
	mov	r13d, r14d
	and	r13d, 2
	and	r14d, 1
	xor	ebp, ebp
	xor	r12d, r12d
	xor	r15d, r15d
	jmp	.label_320
.label_317:
	cmp	rbp, r15
	jne	.label_323
	test	r12, r12
	je	.label_325
	movabs	rax, 0x38e38e38e38e38
	cmp	rbp, rax
	jae	.label_314
	mov	rax, rbp
	shr	rax, 1
	lea	r15, [rbp + rax + 1]
	jmp	.label_318
.label_325:
	test	rbp, rbp
	mov	r15, rbp
	mov	eax, 1
	cmove	r15, rax
	movabs	rax, 0x55555555555556
	cmp	r15, rax
	jae	.label_322
.label_318:
	mov	rax, r15
	shl	rax, 7
	lea	rsi, [rax + rax*2]
	mov	rdi, r12
	call	xrealloc
	mov	r12, rax
.label_323:
	lea	rdi, [rbp + rbp*2]
	inc	rbp
	shl	rdi, 7
	add	rdi, r12
	mov	edx, 0x180
	mov	rsi, rbx
	call	memcpy
	jmp	.label_319
	.section	.text
	.align	16
	#Procedure 0x404636
	.globl sub_404636
	.type sub_404636, @function
sub_404636:

	nop	word ptr cs:[rax + rax]
.label_320:
	cmp	byte ptr [rbx + 0x2c], 0
	je	.label_324
	movzx	eax, word ptr [rbx]
	cmp	eax, 7
	sete	al
	jmp	.label_315
	.section	.text
	.align	16
	#Procedure 0x404651
	.globl sub_404651
	.type sub_404651, @function
sub_404651:

	nop	word ptr cs:[rax + rax]
.label_324:
	xor	eax, eax
.label_315:
	test	r13d, r13d
	je	.label_321
	test	al, al
	je	.label_319
.label_321:
	test	r14d, r14d
	je	.label_317
	xor	al, 1
	jne	.label_317
	mov	edi, dword ptr [rbx + 4]
	test	edi, edi
	jle	.label_317
	xor	esi, esi
	call	kill
	test	eax, eax
	jns	.label_317
	call	__errno_location
	cmp	dword ptr [rax], 3
	jne	.label_317
.label_319:
	call	getutxent
	mov	rbx, rax
	test	rbx, rbx
	jne	.label_320
.label_316:
	call	endutxent
	mov	rax, qword ptr [rsp + 8]
	mov	qword ptr [rax], rbp
	mov	rax, qword ptr [rsp + 0x10]
	mov	qword ptr [rax], r12
	xor	eax, eax
	add	rsp, 0x18
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_314:
	call	xalloc_die
.label_322:
	call	xalloc_die
	.section	.text
	.align	16
	#Procedure 0x4046e1
	.globl sub_4046e1
	.type sub_4046e1, @function
sub_4046e1:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404755
	.globl sub_404755
	.type sub_404755, @function
sub_404755:

	nop	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404762
	.globl sub_404762
	.type sub_404762, @function
sub_404762:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404786
	.globl sub_404786
	.type sub_404786, @function
sub_404786:

	nop	word ptr cs:[rax + rax]
