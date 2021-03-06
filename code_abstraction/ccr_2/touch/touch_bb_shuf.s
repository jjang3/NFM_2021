	.section	.text
	.align	32
	#Procedure 0x401bc9
	.globl sub_401bc9
	.type sub_401bc9, @function
sub_401bc9:

	hlt	
	.section	.text
	.align	32
	#Procedure 0x401bca
	.globl sub_401bca
	.type sub_401bca, @function
sub_401bca:

	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x401c02
	.globl sub_401c02
	.type sub_401c02, @function
sub_401c02:

	nop	dword ptr [rax]
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x401c4a
	.globl sub_401c4a
	.type sub_401c4a, @function
sub_401c4a:

	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x401c6c
	.globl sub_401c6c
	.type sub_401c6c, @function
sub_401c6c:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x401c7d
	.globl sub_401c7d
	.type sub_401c7d, @function
sub_401c7d:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x401c96
	.globl sub_401c96
	.type sub_401c96, @function
sub_401c96:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x401ca0

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
	je	.label_10
	mov	rdi, rbx
	call	fileno
	xor	esi, esi
	mov	edx, 1
	mov	edi, eax
	call	lseek
	cmp	rax, -1
	je	.label_9
.label_10:
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
	je	.label_11
	mov	dword ptr [r14], ebp
	mov	eax, 0xffffffff
.label_11:
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
	.align	32
	#Procedure 0x401d14
	.globl sub_401d14
	.type sub_401d14, @function
sub_401d14:

	nop	word ptr cs:[rax + rax]
.label_13:
	mov	ebx, 0xffffffff
	test	eax, eax
	jne	.label_12
	call	__errno_location
	mov	dword ptr [rax], 0
.label_12:
	mov	eax, ebx
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x401d3b

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
	jne	.label_13
	test	eax, eax
	sete	cl
	neg	eax
	sbb	ebx, ebx
	test	r14, r14
	jne	.label_12
	test	cl, cl
	jne	.label_12
	call	__errno_location
	xor	ecx, ecx
	cmp	dword ptr [rax], 9
	mov	ebx, 0xffffffff
	cmove	ebx, ecx
	jmp	.label_12
	.section	.text
	.align	32
	#Procedure 0x401d80

	.globl revert_tz
	.type revert_tz, @function
revert_tz:
	push	rbp
	push	r15
	push	r14
	push	r12
	push	rbx
	mov	rbp, rdi
	mov	r12b, 1
	cmp	rbp, 1
	je	.label_14
	call	__errno_location
	mov	r14, rax
	mov	r15d, dword ptr [r14]
	cmp	byte ptr [rbp + 8], 0
	je	.label_21
	lea	rsi, [rbp + 9]
	mov	edi, OFFSET FLAT:label_17
	mov	edx, 1
	call	setenv
	jmp	.label_20
.label_16:
	call	tzset
	mov	r12b, 1
.label_18:
	cmp	rbp, 2
	jb	.label_15
	nop	
.label_19:
	mov	rbx, qword ptr [rbp]
	mov	rdi, rbp
	call	free
	test	rbx, rbx
	mov	rbp, rbx
	jne	.label_19
.label_15:
	mov	dword ptr [r14], r15d
.label_14:
	mov	eax, r12d
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x401ded
	.globl sub_401ded
	.type sub_401ded, @function
sub_401ded:

	nop	word ptr cs:[rax + rax]
.label_21:
	mov	edi, OFFSET FLAT:label_17
	call	unsetenv
.label_20:
	test	eax, eax
	je	.label_16
	mov	r15d, dword ptr [r14]
	xor	r12d, r12d
	jmp	.label_18
	.section	.text
	.align	32
	#Procedure 0x401e10

	.globl tzfree
	.type tzfree, @function
tzfree:
	push	rbx
	cmp	rdi, 2
	jb	.label_22
	nop	word ptr [rax + rax]
.label_23:
	mov	rbx, qword ptr [rdi]
	call	free
	test	rbx, rbx
	mov	rdi, rbx
	jne	.label_23
.label_22:
	pop	rbx
	ret	
	.section	.text
	.align	32
	#Procedure 0x401e32
	.globl sub_401e32
	.type sub_401e32, @function
sub_401e32:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x401e40

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
	je	.label_24
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
.label_24:
	call	abort
	.section	.text
	.align	32
	#Procedure 0x401ea8
	.globl sub_401ea8
	.type sub_401ea8, @function
sub_401ea8:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x401eb0
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
	#Procedure 0x401f71
	.globl sub_401f71
	.type sub_401f71, @function
sub_401f71:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x401f80

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
	je	.label_25
	test	r15, r15
	je	.label_26
.label_25:
	mov	rdi, r15
	mov	rsi, r14
	mov	rdx, rbx
	call	memcpy
	mov	rax, r15
	pop	rbx
	pop	r14
	pop	r15
	ret	
.label_26:
	call	xalloc_die
	.section	.text
	.align	32
	#Procedure 0x401fbc
	.globl sub_401fbc
	.type sub_401fbc, @function
sub_401fbc:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x401fc0

	.globl close_stdout
	.type close_stdout, @function
close_stdout:
	push	rbp
	push	rbx
	push	rax
	mov	rdi, qword ptr [rip + stdout]
	call	close_stream
	test	eax, eax
	je	.label_29
	mov	bl, byte ptr [rip + ignore_EPIPE]
	call	__errno_location
	mov	rbp, rax
	cmp	bl, 0
	je	.label_27
	cmp	dword ptr [rbp], 0x20
	jne	.label_27
.label_29:
	mov	rdi, qword ptr [rip + stderr]
	call	close_stream
	test	eax, eax
	jne	.label_32
	add	rsp, 8
	pop	rbx
	pop	rbp
	ret	
.label_32:
	mov	edi, dword ptr [rip + exit_failure]
	call	_exit
.label_27:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_28
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
	mov	rdi, qword ptr [rip + file_name]
	test	rdi, rdi
	mov	ebp, dword ptr [rbp]
	jne	.label_33
	xor	edi, edi
	mov	edx, OFFSET FLAT:label_30
	xor	eax, eax
	mov	esi, ebp
	mov	rcx, rbx
	call	error
	mov	edi, dword ptr [rip + exit_failure]
	call	_exit
.label_33:
	call	quotearg_colon
	mov	rcx, rax
	xor	edi, edi
	mov	edx, OFFSET FLAT:label_31
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
	#Procedure 0x402080

	.globl dbg_printf
	.type dbg_printf, @function
dbg_printf:
	push	rbx
	sub	rsp, 0xd0
	mov	rbx, rdi
	test	al, al
	je	.label_34
	movaps	xmmword ptr [rsp + 0x50], xmm0
	movaps	xmmword ptr [rsp + 0x60], xmm1
	movaps	xmmword ptr [rsp + 0x70], xmm2
	movaps	xmmword ptr [rsp + 0x80], xmm3
	movaps	xmmword ptr [rsp + 0x90], xmm4
	movaps	xmmword ptr [rsp + 0xa0], xmm5
	movaps	xmmword ptr [rsp + 0xb0], xmm6
	movaps	xmmword ptr [rsp + 0xc0], xmm7
.label_34:
	mov	qword ptr [rsp + 0x48], r9
	mov	qword ptr [rsp + 0x40], r8
	mov	qword ptr [rsp + 0x38], rcx
	mov	qword ptr [rsp + 0x30], rdx
	mov	qword ptr [rsp + 0x28], rsi
	mov	rcx, qword ptr [rip + stderr]
	mov	edi, OFFSET FLAT:label_35
	mov	esi, 6
	mov	edx, 1
	call	fwrite
	lea	rax, [rsp + 0x20]
	mov	qword ptr [rsp + 0x10], rax
	lea	rax, [rsp + 0xe0]
	mov	qword ptr [rsp + 8], rax
	mov	dword ptr [rsp + 4], 0x30
	mov	dword ptr [rsp], 8
	mov	rdi, qword ptr [rip + stderr]
	lea	rcx, [rsp]
	mov	esi, 1
	mov	rdx, rbx
	call	__vfprintf_chk
	add	rsp, 0xd0
	pop	rbx
	ret	
	.section	.text
	.align	32
	#Procedure 0x402141
	.globl sub_402141
	.type sub_402141, @function
sub_402141:

	nop	word ptr cs:[rax + rax]
.label_41:
	test	rcx, rcx
	jne	.label_37
	mov	eax, 0x80
	xor	edx, edx
	div	rbx
	xor	ecx, ecx
	cmp	rbx, 0x80
	seta	cl
	add	rcx, rax
.label_37:
	movabs	rax, 0x7fffffffffffffff
	xor	edx, edx
	div	rbx
	cmp	rax, rcx
	jb	.label_40
.label_42:
	mov	qword ptr [rsi], rcx
	imul	rbx, rcx
	test	rdi, rdi
	je	.label_36
	test	rbx, rbx
	jne	.label_36
	call	free
	xor	eax, eax
	pop	rbx
	ret	
.label_40:
	call	xalloc_die
	.section	.text
	.align	32
	#Procedure 0x4021a1
	.globl sub_4021a1
	.type sub_4021a1, @function
sub_4021a1:

	nop	word ptr [rax + rax]
.label_36:
	mov	rsi, rbx
	call	realloc
	test	rbx, rbx
	je	.label_38
	test	rax, rax
	je	.label_39
.label_38:
	pop	rbx
	ret	
.label_39:
	call	xalloc_die
	.section	.text
	.align	32
	#Procedure 0x4021c3
	.globl x2nrealloc
	.type x2nrealloc, @function
x2nrealloc:

	push	rbx
	mov	rbx, rdx
	mov	rcx, qword ptr [rsi]
	test	rdi, rdi
	je	.label_41
	movabs	rax, 0x5555555555555554
	xor	edx, edx
	div	rbx
	cmp	rax, rcx
	jbe	.label_39
	mov	rax, rcx
	shr	rax, 1
	lea	rcx, [rcx + rax + 1]
	jmp	.label_42
	.section	.text
	.align	32
	#Procedure 0x4021f0
	.globl quote_n_mem
	.type quote_n_mem, @function
quote_n_mem:

	mov	ecx, OFFSET FLAT:quote_quoting_options
	jmp	quotearg_n_options
	.section	.text
	.align	32
	#Procedure 0x4021fa
	.globl sub_4021fa
	.type sub_4021fa, @function
sub_4021fa:

	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x402200

	.globl nstrftime
	.type nstrftime, @function
nstrftime:
	push	rax
	mov	eax, r9d
	mov	r10, r8
	sub	rsp, 8
	mov	r8d, 0
	mov	r9d, 0
	push	rax
	push	r10
	push	-1
	call	__strftime_internal
	add	rsp, 0x20
	pop	rcx
	ret	
	.section	.text
	.align	32
	#Procedure 0x402227
	.globl sub_402227
	.type sub_402227, @function
sub_402227:

	nop	word ptr [rax + rax]
.label_45:
	mov	rsi, rbx
	call	realloc
	test	rbx, rbx
	je	.label_43
	test	rax, rax
	je	.label_44
.label_43:
	pop	rbx
	ret	
.label_44:
	call	xalloc_die
	.section	.text
	.align	32
	#Procedure 0x402249

	.globl xrealloc
	.type xrealloc, @function
xrealloc:
	push	rbx
	mov	rbx, rsi
	test	rdi, rdi
	je	.label_45
	test	rbx, rbx
	jne	.label_45
	call	free
	xor	eax, eax
	pop	rbx
	ret	
	.section	.text
	.align	32
	#Procedure 0x402260
	.globl xcalloc
	.type xcalloc, @function
xcalloc:

	push	rax
	movabs	rax, 0x7fffffffffffffff
	xor	edx, edx
	div	rsi
	cmp	rax, rdi
	jb	.label_46
	call	rpl_calloc
	test	rax, rax
	je	.label_46
	pop	rcx
	ret	
.label_46:
	call	xalloc_die
	.section	.text
	.align	32
	#Procedure 0x402286
	.globl sub_402286
	.type sub_402286, @function
sub_402286:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x402290

	.globl parse_datetime2
	.type parse_datetime2, @function
parse_datetime2:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x3e8
	mov	qword ptr [rsp + 0x58], r9
	mov	r13, r8
	mov	r14d, ecx
	mov	r15, rdx
	mov	r12, rsi
	mov	qword ptr [rsp + 0x60], rdi
	mov	rdi, r12
	call	strlen
	mov	qword ptr [rsp + 0x78], rax
	test	r15, r15
	jne	.label_226
	lea	r15, [rsp + 0x370]
	mov	rdi, r15
	call	gettime
.label_226:
	mov	rax, qword ptr [r15]
	mov	qword ptr [rsp + 0x10], rax
	mov	rax, qword ptr [r15 + 8]
	mov	qword ptr [rsp + 0x50], rax
	movzx	eax, byte ptr [r12]
	add	eax, -9
	cmp	eax, 0x17
	mov	rbp, r12
	ja	.label_231
	mov	ecx, 0x80001f
	mov	rbp, r12
	nop	word ptr cs:[rax + rax]
.label_243:
	bt	ecx, eax
	jae	.label_231
	movzx	eax, byte ptr [rbp + 1]
	inc	rbp
	add	eax, -9
	cmp	eax, 0x18
	jb	.label_243
.label_231:
	mov	esi, OFFSET FLAT:label_245
	mov	edx, 4
	mov	rdi, rbp
	call	strncmp
	test	eax, eax
	jne	.label_251
	lea	rbx, [rbp + 4]
	mov	edi, 1
	mov	rax, rbx
	jmp	.label_252
	.section	.text
	.align	32
	#Procedure 0x402348
	.globl sub_402348
	.type sub_402348, @function
sub_402348:

	nop	dword ptr [rax + rax]
.label_79:
	inc	rax
	inc	rdi
.label_252:
	movzx	ecx, byte ptr [rax]
	cmp	cl, 0x5c
	je	.label_261
	test	cl, cl
	je	.label_251
	cmp	cl, 0x22
	jne	.label_79
	jmp	.label_268
	.section	.text
	.align	32
	#Procedure 0x40236c
	.globl sub_40236c
	.type sub_40236c, @function
sub_40236c:

	nop	dword ptr [rax]
.label_261:
	movzx	ecx, byte ptr [rax + 1]
	inc	rax
	cmp	cl, 0x22
	je	.label_79
	cmp	cl, 0x5c
	je	.label_79
.label_251:
	xor	eax, eax
	mov	qword ptr [rsp + 0x70], rax
	mov	rbx, r13
.label_138:
	lea	rdx, [rsp + 0x300]
	mov	rdi, rbx
	mov	rsi, r15
	call	localtime_rz
	test	rax, rax
	je	.label_273
	movabs	r15, 0x7fffffffffffffff
	cmp	byte ptr [rbp], 0
	mov	eax, OFFSET FLAT:label_275
	cmovne	rax, rbp
	mov	qword ptr [rsp + 0x80], rax
	and	r14b, 1
	mov	byte ptr [rsp + 0x159], r14b
	movsxd	rax, dword ptr [rsp + 0x314]
	add	rax, 0x76c
	mov	qword ptr [rsp + 0xa8], rax
	mov	qword ptr [rsp + 0xb0], 0
	movsxd	rax, dword ptr [rsp + 0x310]
	inc	rax
	mov	qword ptr [rsp + 0xb8], rax
	movsxd	rax, dword ptr [rsp + 0x30c]
	mov	qword ptr [rsp + 0xc0], rax
	movsxd	rax, dword ptr [rsp + 0x308]
	mov	qword ptr [rsp + 0xc8], rax
	movsxd	rax, dword ptr [rsp + 0x304]
	mov	qword ptr [rsp + 0xd0], rax
	movsxd	rax, dword ptr [rsp + 0x300]
	mov	qword ptr [rsp + 0xd8], rax
	mov	rax, qword ptr [rsp + 0x50]
	cdqe	
	mov	qword ptr [rsp + 0xe0], rax
	mov	eax, dword ptr [rsp + 0x320]
	mov	dword ptr [rsp + 0x38], eax
	mov	dword ptr [rsp + 0x9c], 2
	xorps	xmm0, xmm0
	movups	xmmword ptr [rsp + 0x112], xmm0
	movups	xmmword ptr [rsp + 0x108], xmm0
	movups	xmmword ptr [rsp + 0xf8], xmm0
	movups	xmmword ptr [rsp + 0xe8], xmm0
	movups	xmmword ptr [rsp + 0x148], xmm0
	movups	xmmword ptr [rsp + 0x138], xmm0
	movups	xmmword ptr [rsp + 0x128], xmm0
	mov	byte ptr [rsp + 0x158], 0
	mov	byte ptr [rsp + 0x160], 0
	mov	word ptr [rsp + 0x15e], 0
	mov	dword ptr [rsp + 0x15a], 0
	mov	rcx, qword ptr [rsp + 0x330]
	mov	qword ptr [rsp + 0x168], rcx
	mov	dword ptr [rsp + 0x170], 0x10d
	mov	dword ptr [rsp + 0x174], eax
	mov	qword ptr [rsp + 0x178], 0
	lea	rax, [r15 - 0x76a700]
	mov	rbp, qword ptr [rsp + 0x10]
	cmp	rbp, rax
	jg	.label_92
	lea	rax, [rbp + 0x76a700]
	mov	qword ptr [rsp + 0x290], rax
	lea	rsi, [rsp + 0x290]
	lea	rdx, [rsp + 0x1d0]
	mov	rdi, rbx
	call	localtime_rz
	test	rax, rax
	je	.label_141
	mov	rax, qword ptr [rsp + 0x200]
	test	rax, rax
	je	.label_141
	mov	ecx, dword ptr [rsp + 0x1f0]
	cmp	ecx, dword ptr [rsp + 0x174]
	jne	.label_142
.label_141:
	lea	rax, [r15 - 0xed4e00]
	cmp	rbp, rax
	jg	.label_92
	lea	rax, [rbp + 0xed4e00]
	mov	qword ptr [rsp + 0x290], rax
	lea	rsi, [rsp + 0x290]
	lea	rdx, [rsp + 0x1d0]
	mov	rdi, rbx
	call	localtime_rz
	test	rax, rax
	je	.label_160
	mov	rax, qword ptr [rsp + 0x200]
	test	rax, rax
	je	.label_160
	mov	ecx, dword ptr [rsp + 0x1f0]
	cmp	ecx, dword ptr [rsp + 0x174]
	jne	.label_142
.label_160:
	lea	rax, [r15 - 0x163f500]
	cmp	rbp, rax
	jg	.label_92
	add	rbp, 0x163f500
	mov	qword ptr [rsp + 0x290], rbp
	lea	rsi, [rsp + 0x290]
	lea	rdx, [rsp + 0x1d0]
	mov	rdi, rbx
	call	localtime_rz
	test	rax, rax
	je	.label_92
	mov	rax, qword ptr [rsp + 0x200]
	test	rax, rax
	je	.label_92
	mov	ecx, dword ptr [rsp + 0x1f0]
	cmp	ecx, dword ptr [rsp + 0x174]
	je	.label_92
.label_142:
	mov	qword ptr [rsp + 0x178], rax
	mov	dword ptr [rsp + 0x180], 0x10d
	mov	dword ptr [rsp + 0x184], ecx
	mov	qword ptr [rsp + 0x188], 0
.label_92:
	mov	rdi, qword ptr [rsp + 0x168]
	test	rdi, rdi
	je	.label_197
	mov	rsi, qword ptr [rsp + 0x178]
	test	rsi, rsi
	je	.label_197
	call	strcmp
	test	eax, eax
	jne	.label_197
	mov	dword ptr [rsp + 0x174], 0xffffffff
	mov	qword ptr [rsp + 0x178], 0
.label_197:
	lea	rdi, [rsp + 0x80]
	call	yyparse
	test	eax, eax
	mov	al, byte ptr [rsp + 0x159]
	je	.label_212
	test	al, al
	je	.label_214
	add	r12, qword ptr [rsp + 0x78]
	cmp	r12, qword ptr [rsp + 0x80]
	jbe	.label_216
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_218
	jmp	.label_219
.label_273:
	xor	ebp, ebp
	jmp	.label_87
.label_212:
	test	al, al
	mov	r12, qword ptr [rsp + 0x60]
	jne	.label_221
.label_111:
	cmp	byte ptr [rsp + 0x120], 0
	je	.label_225
	lea	rax, [rsp + 0xd8]
	movups	xmm0, xmmword ptr [rax]
	movups	xmmword ptr [r12], xmm0
.label_149:
	mov	rdi, qword ptr [rsp + 0x58]
	mov	bpl, 1
	cmp	byte ptr [rsp + 0x159], 0
	je	.label_87
	test	rdi, rdi
	je	.label_235
	mov	esi, OFFSET FLAT:label_178
	mov	r14, rdi
	call	strcmp
	mov	r15, rbx
	xor	edi, edi
	test	eax, eax
	je	.label_240
	mov	esi, OFFSET FLAT:label_242
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	xor	eax, eax
	mov	rdi, rcx
	mov	rsi, r14
	call	dbg_printf
	jmp	.label_249
.label_214:
	xor	ebp, ebp
	jmp	.label_87
.label_268:
	xor	eax, eax
	cmp	rdi, 0x65
	jl	.label_253
	call	malloc
	mov	rsi, rax
	xor	ebp, ebp
	test	rsi, rsi
	mov	edi, 0
	jne	.label_257
	jmp	.label_264
.label_216:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_265
.label_219:
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	mov	rsi, qword ptr [rsp + 0x80]
	xor	ebp, ebp
	xor	eax, eax
	mov	rdi, rcx
	call	dbg_printf
.label_87:
	cmp	rbx, r13
	je	.label_165
	mov	rdi, rbx
	call	tzfree
.label_165:
	mov	rdi, qword ptr [rsp + 0x70]
.label_264:
	call	free
	mov	eax, ebp
	add	rsp, 0x3e8
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_225:
	mov	rax, qword ptr [rsp + 0x128]
	mov	rcx, qword ptr [rsp + 0x148]
	mov	rdx, rax
	or	rdx, rcx
	or	rdx, qword ptr [rsp + 0x130]
	or	rdx, qword ptr [rsp + 0x140]
	mov	rsi, qword ptr [rsp + 0x150]
	add	rsi, qword ptr [rsp + 0x138]
	or	rsi, rdx
	mov	r14b, byte ptr [rsp + 0x159]
	cmp	rsi, 2
	jl	.label_277
	test	r14b, r14b
	je	.label_47
	cmp	rcx, 2
	jl	.label_52
	mov	edi, OFFSET FLAT:label_56
	xor	eax, eax
	call	dbg_printf
	mov	rax, qword ptr [rsp + 0x128]
.label_52:
	cmp	rax, 2
	jl	.label_64
	mov	edi, OFFSET FLAT:label_67
	xor	eax, eax
	call	dbg_printf
.label_64:
	cmp	qword ptr [rsp + 0x130], 2
	jl	.label_70
	mov	edi, OFFSET FLAT:label_72
	xor	eax, eax
	call	dbg_printf
.label_70:
	cmp	qword ptr [rsp + 0x140], 2
	jl	.label_78
	mov	edi, OFFSET FLAT:label_83
	xor	eax, eax
	call	dbg_printf
.label_78:
	mov	rax, qword ptr [rsp + 0x150]
	add	rax, qword ptr [rsp + 0x138]
	xor	ebp, ebp
	cmp	rax, 2
	jl	.label_87
	mov	edi, OFFSET FLAT:label_91
	xor	eax, eax
	call	dbg_printf
	jmp	.label_87
.label_253:
	lea	rsi, [rsp + 0x380]
.label_257:
	mov	qword ptr [rsp + 0x70], rax
	mov	qword ptr [rsp + 0x68], r13
	mov	cl, byte ptr [rbx]
	mov	rax, rsi
	cmp	cl, 0x22
	jne	.label_101
	mov	r13, rbx
	jmp	.label_98
	.section	.text
	.align	32
	#Procedure 0x4028b1
	.globl sub_4028b1
	.type sub_4028b1, @function
sub_4028b1:

	nop	word ptr cs:[rax + rax]
.label_101:
	xor	edx, edx
	cmp	cl, 0x5c
	sete	dl
	movzx	ecx, byte ptr [rbx + rdx]
	mov	byte ptr [rax], cl
	inc	rax
	lea	r13, [rbx + rdx + 1]
	movzx	ecx, byte ptr [rbx + rdx + 1]
	cmp	cl, 0x22
	mov	rbx, r13
	jne	.label_101
.label_98:
	mov	byte ptr [rax], 0
	mov	qword ptr [rsp + 0x58], rsi
	mov	rdi, rsi
	call	tzalloc
	mov	rbx, rax
	test	rbx, rbx
	je	.label_120
	inc	r13
	mov	eax, 0x80001f
	nop	word ptr [rax + rax]
.label_135:
	mov	rbp, r13
	movzx	ecx, byte ptr [rbp]
	add	ecx, -9
	cmp	ecx, 0x17
	ja	.label_131
	lea	r13, [rbp + 1]
	bt	eax, ecx
	jb	.label_135
.label_131:
	mov	r13, qword ptr [rsp + 0x68]
	jmp	.label_138
.label_277:
	mov	qword ptr [rsp + 0x10], rbx
	mov	rbx, qword ptr [rsp + 0xa8]
	test	rbx, rbx
	js	.label_139
	cmp	qword ptr [rsp + 0xb0], 2
	jne	.label_276
	cmp	rbx, 0x45
	mov	eax, 0x7d0
	mov	ebp, 0x76c
	cmovl	rbp, rax
	add	rbp, rbx
	test	r14b, r14b
	je	.label_157
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_151
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	xor	eax, eax
	mov	rdi, rcx
	mov	rsi, rbx
	mov	rdx, rbp
	call	dbg_printf
.label_157:
	test	rbp, rbp
	jns	.label_161
	jmp	.label_163
.label_120:
	xor	ebp, ebp
	jmp	.label_165
.label_235:
	mov	r15, rbx
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_166
	jmp	.label_167
.label_240:
	mov	esi, OFFSET FLAT:label_170
.label_167:
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	xor	eax, eax
	mov	rdi, rcx
	call	dbg_printf
.label_249:
	mov	r14, qword ptr [r12]
	mov	ebx, dword ptr [r12 + 8]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_234
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	xor	eax, eax
	mov	rdi, rcx
	mov	rsi, r14
	mov	edx, ebx
	call	dbg_printf
	lea	rsi, [rsp + 0x1d0]
	mov	rdi, r12
	call	gmtime_r
	test	rax, rax
	je	.label_191
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_192
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
	lea	r14, [rsp + 0x290]
	lea	rcx, [rsp + 0x1d0]
	mov	esi, 0x64
	mov	edx, OFFSET FLAT:label_195
	xor	r8d, r8d
	xor	r9d, r9d
	mov	rdi, r14
	call	nstrftime
	xor	eax, eax
	mov	rdi, rbx
	mov	rsi, r14
	call	dbg_printf
.label_191:
	lea	rdx, [rsp + 0x338]
	mov	rbx, r15
	mov	rdi, rbx
	mov	rsi, r12
	call	localtime_rz
	test	rax, rax
	je	.label_87
	mov	r12, rbx
	movsxd	r15, dword ptr [rsp + 0x360]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_213
	mov	edx, 5
	call	dcgettext
	mov	r14, rax
	lea	rdi, [rsp + 0x290]
	lea	rcx, [rsp + 0x338]
	mov	esi, 0x64
	mov	edx, OFFSET FLAT:label_195
	xor	r8d, r8d
	xor	r9d, r9d
	call	nstrftime
	mov	eax, r15d
	shr	eax, 0x1f
	imul	rbx, r15, -0x6e5d4c3b
	shr	rbx, 0x20
	add	ebx, r15d
	mov	ecx, ebx
	shr	ecx, 0x1f
	sar	ebx, 0xb
	add	ebx, ecx
	mov	r9d, ebx
	neg	r9d
	cmp	r15, -0xe10
	lea	r8d, [rax + rax + 0x2b]
	cmovg	r9d, ebx
	lea	rdi, [rsp + 0x270]
	mov	esi, 1
	mov	edx, 0x1b
	mov	ecx, OFFSET FLAT:label_209
	xor	eax, eax
	call	__sprintf_chk
	imul	edx, ebx, 0xe10
	mov	esi, r15d
	sub	esi, edx
	mov	ecx, esi
	neg	ecx
	cmovl	ecx, esi
	cmp	r15d, edx
	je	.label_230
	cdqe	
	lea	rax, [rsp + rax + 0x270]
	movsxd	r9, ecx
	imul	rdx, r9, -0x77777777
	shr	rdx, 0x20
	add	edx, r9d
	mov	esi, edx
	shr	esi, 0x1f
	sar	edx, 5
	add	edx, esi
	imul	r8d, edx, 0x3c
	imul	rdi, r9, 0x1b4e81b5
	mov	rbx, rdi
	shr	rbx, 0x3f
	shr	rdi, 0x26
	movsxd	rdx, edx
	imul	rsi, rdx, 0x66666667
	mov	rcx, rsi
	shr	rcx, 0x3f
	sar	rsi, 0x22
	add	esi, ecx
	add	esi, esi
	lea	ecx, [rsi + rsi*4]
	sub	edx, ecx
	add	edx, 0x30
	sub	r9d, r8d
	mov	byte ptr [rax], 0x3a
	lea	ecx, [rdi + rbx + 0x30]
	mov	byte ptr [rax + 1], cl
	mov	byte ptr [rax + 2], dl
	je	.label_248
	mov	byte ptr [rax + 3], 0x3a
	movsxd	rcx, r9d
	imul	rcx, rcx, 0x66666667
	mov	rdx, rcx
	shr	rdx, 0x3f
	sar	rcx, 0x22
	lea	esi, [rcx + rdx]
	lea	ecx, [rcx + rdx + 0x30]
	mov	byte ptr [rax + 4], cl
	add	esi, esi
	lea	ecx, [rsi + rsi*4]
	neg	ecx
	lea	ecx, [r9 + rcx + 0x30]
	mov	byte ptr [rax + 5], cl
	add	rax, 6
	jmp	.label_182
.label_47:
	xor	ebp, ebp
	jmp	.label_87
.label_139:
	mov	rbp, rbx
.label_163:
	lea	rdx, [rbp + r15]
	mov	ecx, 0x7ffff894
	mov	eax, 0xfffff894
	sub	eax, ebp
	cmp	rdx, -0x76c
	mov	rbx, qword ptr [rsp + 0x10]
	jl	.label_57
	sub	rcx, rbp
	shr	rcx, 0x20
	je	.label_51
	jmp	.label_57
.label_221:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_58
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	xor	eax, eax
	mov	rdi, rcx
	call	dbg_printf
	cmp	byte ptr [rsp + 0x120], 0
	jne	.label_69
	cmp	qword ptr [rsp + 0x150], 0
	jne	.label_73
	mov	rax, qword ptr [rsp + 0x58]
	test	rax, rax
	jne	.label_80
	mov	rbp, rbx
	mov	rbx, qword ptr [rip + stderr]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_84
	jmp	.label_85
.label_276:
	mov	rbp, rbx
.label_161:
	lea	rcx, [rbp + 0x7ffff894]
	lea	eax, [rbp - 0x76c]
	shr	rcx, 0x20
	mov	rbx, qword ptr [rsp + 0x10]
	je	.label_51
.label_57:
	mov	dword ptr [rsp + 0x2c], eax
	test	r14b, r14b
	je	.label_95
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_96
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	xor	eax, eax
	mov	rdi, rcx
	mov	rsi, rbp
	call	dbg_printf
	jmp	.label_95
.label_51:
	mov	dword ptr [rsp + 0x2c], eax
	mov	rax, qword ptr [rsp + 0xb8]
	lea	ecx, [rax - 1]
	cmp	rax, -0x7fffffff
	mov	dword ptr [rsp + 0x28], ecx
	jl	.label_95
	dec	rax
	cmp	rax, 0x7fffffff
	jg	.label_95
	mov	r12d, 0x80000000
	mov	rax, qword ptr [rsp + 0xc0]
	mov	dword ptr [rsp + 0x24], eax
	sub	rax, -0x80000000
	shr	rax, 0x20
	je	.label_115
.label_95:
	cmp	byte ptr [rsp + 0x159], 0
	je	.label_123
	xor	ebp, ebp
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_127
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	xor	eax, eax
	mov	rdi, rcx
	call	dbg_printf
	jmp	.label_87
.label_123:
	xor	ebp, ebp
	jmp	.label_87
.label_248:
	add	rax, 3
.label_182:
	mov	byte ptr [rax], 0
.label_230:
	lea	rsi, [rsp + 0x290]
	lea	rdx, [rsp + 0x270]
	xor	eax, eax
	mov	rdi, r14
	call	dbg_printf
	mov	rbx, r12
	jmp	.label_87
.label_69:
	mov	rbp, rbx
	mov	rbx, qword ptr [rip + stderr]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_147
	jmp	.label_85
.label_115:
	mov	rax, qword ptr [rsp + 0x148]
	test	rax, rax
	jne	.label_153
	cmp	byte ptr [rsp + 0x121], 0
	je	.label_156
	mov	rcx, qword ptr [rsp + 0x130]
	or	rcx, qword ptr [rsp + 0x128]
	jne	.label_156
.label_153:
	mov	rdx, qword ptr [rsp + 0xc8]
	mov	ecx, dword ptr [rsp + 0x9c]
	test	ecx, ecx
	je	.label_179
	cmp	ecx, 1
	jne	.label_171
	lea	rdi, [rdx - 1]
	lea	rbp, [rdx + 0xc]
	cmp	rdx, 0xc
	mov	rsi, -1
	cmove	rsi, rdx
	cmp	rdi, 0xb
	cmovb	rsi, rbp
	jmp	.label_174
.label_73:
	mov	rbp, rbx
	mov	rbx, qword ptr [rip + stderr]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_183
.label_85:
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	mov	esi, 1
	xor	eax, eax
	mov	rdi, rbx
	mov	rdx, rcx
	call	__fprintf_chk
.label_109:
	mov	rax, qword ptr [rsp + 0x150]
	cmp	qword ptr [rsp + 0x138], 0
	je	.label_193
	test	rax, rax
	mov	rbx, rbp
	jne	.label_196
	cmp	dword ptr [rsp + 0x94], 0
	jle	.label_198
	mov	rdi, qword ptr [rip + stderr]
	mov	esi, 1
	mov	edx, OFFSET FLAT:label_200
	xor	eax, eax
	call	__fprintf_chk
	mov	rax, qword ptr [rsp + 0x150]
	jmp	.label_196
.label_193:
	mov	rbx, rbp
.label_196:
	test	rax, rax
	je	.label_198
	mov	r12, rbx
	mov	r14, qword ptr [rip + stderr]
	movsxd	rbx, dword ptr [rsp + 0x98]
	mov	eax, ebx
	shr	eax, 0x1f
	imul	rbp, rbx, -0x6e5d4c3b
	shr	rbp, 0x20
	add	ebp, ebx
	mov	ecx, ebp
	shr	ecx, 0x1f
	sar	ebp, 0xb
	add	ebp, ecx
	mov	r9d, ebp
	neg	r9d
	cmp	rbx, -0xe10
	lea	r8d, [rax + rax + 0x2b]
	cmovg	r9d, ebp
	lea	rdi, [rsp + 0x270]
	mov	esi, 1
	mov	edx, 0x1b
	mov	ecx, OFFSET FLAT:label_209
	xor	eax, eax
	call	__sprintf_chk
	imul	edx, ebp, 0xe10
	mov	esi, ebx
	sub	esi, edx
	mov	ecx, esi
	neg	ecx
	cmovl	ecx, esi
	cmp	ebx, edx
	je	.label_229
	cdqe	
	lea	rax, [rsp + rax + 0x270]
	movsxd	rcx, ecx
	imul	rdx, rcx, -0x77777777
	shr	rdx, 0x20
	add	edx, ecx
	mov	esi, edx
	shr	esi, 0x1f
	sar	edx, 5
	add	edx, esi
	imul	r8d, edx, 0x3c
	imul	rdi, rcx, 0x1b4e81b5
	mov	rbp, rdi
	shr	rbp, 0x3f
	shr	rdi, 0x26
	movsxd	rdx, edx
	imul	rbx, rdx, 0x66666667
	mov	rsi, rbx
	shr	rsi, 0x3f
	sar	rbx, 0x22
	add	ebx, esi
	add	ebx, ebx
	lea	esi, [rbx + rbx*4]
	sub	edx, esi
	add	edx, 0x30
	sub	ecx, r8d
	mov	byte ptr [rax], 0x3a
	lea	esi, [rdi + rbp + 0x30]
	mov	byte ptr [rax + 1], sil
	mov	byte ptr [rax + 2], dl
	jne	.label_233
	add	rax, 3
	jmp	.label_262
.label_80:
	mov	rbp, rbx
	cmp	rbx, r13
	jne	.label_267
	mov	esi, OFFSET FLAT:label_178
	mov	rdi, rax
	mov	r14, rax
	call	strcmp
	mov	rbx, qword ptr [rip + stderr]
	xor	edi, edi
	test	eax, eax
	jne	.label_269
	mov	esi, OFFSET FLAT:label_271
	jmp	.label_85
.label_179:
	lea	rdi, [rdx - 1]
	xor	ebp, ebp
	cmp	rdx, 0xc
	mov	rsi, -1
	cmove	rsi, rbp
	cmp	rdi, 0xb
	jmp	.label_272
.label_171:
	cmp	rdx, 0x18
	mov	rsi, -1
.label_272:
	cmovb	rsi, rdx
.label_174:
	mov	dword ptr [rsp + 0x20], esi
	test	esi, esi
	js	.label_280
	mov	ecx, dword ptr [rsp + 0xd0]
	mov	dword ptr [rsp + 0x1c], ecx
	mov	ecx, dword ptr [rsp + 0xd8]
	mov	dword ptr [rsp + 0x18], ecx
	cmp	byte ptr [rsp + 0x159], 0
	je	.label_113
	mov	r12, r13
	xor	edi, edi
	test	rax, rax
	je	.label_286
	mov	esi, OFFSET FLAT:label_48
	jmp	.label_49
.label_280:
	cmp	byte ptr [rsp + 0x159], 0
	je	.label_53
	cmp	ecx, 1
	mov	eax, OFFSET FLAT:label_59
	mov	edx, OFFSET FLAT:label_60
	cmove	rdx, rax
	test	ecx, ecx
	mov	ebx, OFFSET FLAT:label_61
	cmovne	rbx, rdx
	xor	ebp, ebp
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_62
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	mov	rsi, qword ptr [rsp + 0xc8]
	xor	eax, eax
	mov	rdi, rcx
	mov	rdx, rbx
	mov	rbx, qword ptr [rsp + 0x10]
	call	dbg_printf
	jmp	.label_87
.label_233:
	mov	byte ptr [rax + 3], 0x3a
	movsxd	rdx, ecx
	imul	rdx, rdx, 0x66666667
	mov	rsi, rdx
	shr	rsi, 0x3f
	sar	rdx, 0x22
	lea	edi, [rdx + rsi]
	lea	edx, [rdx + rsi + 0x30]
	mov	byte ptr [rax + 4], dl
	add	edi, edi
	lea	edx, [rdi + rdi*4]
	neg	edx
	lea	ecx, [rcx + rdx + 0x30]
	mov	byte ptr [rax + 5], cl
	add	rax, 6
.label_262:
	mov	byte ptr [rax], 0
.label_229:
	lea	rcx, [rsp + 0x270]
	mov	esi, 1
	mov	edx, OFFSET FLAT:label_97
	xor	eax, eax
	mov	rdi, r14
	call	__fprintf_chk
	mov	rbx, r12
	mov	r12, qword ptr [rsp + 0x60]
.label_198:
	mov	rsi, qword ptr [rip + stderr]
	mov	edi, 0xa
	call	fputc
	jmp	.label_111
.label_156:
	mov	dword ptr [rsp + 0x18], 0
	mov	dword ptr [rsp + 0x1c], 0
	mov	dword ptr [rsp + 0x20], 0
	mov	qword ptr [rsp + 0xe0], 0
	cmp	byte ptr [rsp + 0x159], 0
	je	.label_113
	mov	edi, OFFSET FLAT:label_130
	xor	eax, eax
	call	dbg_printf
	jmp	.label_113
.label_267:
	mov	r14, qword ptr [rip + stderr]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_224
	mov	edx, 5
	mov	rbx, rax
	call	dcgettext
	mov	rcx, rax
	mov	esi, 1
	xor	eax, eax
	mov	rdi, r14
	mov	rdx, rcx
	mov	rcx, rbx
	call	__fprintf_chk
	jmp	.label_109
.label_286:
	mov	esi, OFFSET FLAT:label_99
.label_49:
	mov	edx, 5
	call	dcgettext
	mov	r14, rax
	mov	r9d, dword ptr [rsp + 0x20]
	mov	ebx, dword ptr [rsp + 0x18]
	mov	ebp, dword ptr [rsp + 0x1c]
	lea	r13, [rsp + 0x290]
	mov	esi, 0x64
	mov	edx, 1
	mov	ecx, 0x64
	mov	r8d, OFFSET FLAT:label_150
	mov	eax, 0
	mov	rdi, r13
	push	rbx
	push	rbp
	call	__snprintf_chk
	add	rsp, 0x10
	xor	eax, eax
	mov	rdi, r14
	mov	rsi, r13
	call	dbg_printf
	mov	r13, r12
	mov	rbx, qword ptr [rsp + 0x10]
	mov	r12d, 0x80000000
.label_113:
	mov	rax, qword ptr [rsp + 0x130]
	or	rax, qword ptr [rsp + 0x128]
	or	rax, qword ptr [rsp + 0x148]
	je	.label_172
	mov	dword ptr [rsp + 0x38], 0xffffffff
.label_172:
	cmp	qword ptr [rsp + 0x138], 0
	je	.label_180
	mov	eax, dword ptr [rsp + 0x94]
	mov	dword ptr [rsp + 0x38], eax
	jmp	.label_185
.label_180:
	mov	eax, dword ptr [rsp + 0x38]
.label_185:
	mov	rcx, qword ptr [rsp + 0x18]
	mov	dword ptr [rsp + 0x198], ecx
	shr	rcx, 0x20
	mov	dword ptr [rsp + 0x19c], ecx
	mov	rcx, qword ptr [rsp + 0x20]
	mov	dword ptr [rsp + 0x1a0], ecx
	shr	rcx, 0x20
	mov	dword ptr [rsp + 0x1a4], ecx
	mov	rcx, qword ptr [rsp + 0x28]
	mov	dword ptr [rsp + 0x1a8], ecx
	shr	rcx, 0x20
	mov	dword ptr [rsp + 0x1ac], ecx
	mov	dword ptr [rsp + 0x1b8], eax
	mov	dword ptr [rsp + 0x30], 0xffffffff
	lea	rsi, [rsp + 0x18]
	mov	rdi, rbx
	call	mktime_z
	mov	rbp, rax
	cmp	dword ptr [rsp + 0x30], 0
	js	.label_205
	mov	rax, qword ptr [rsp + 0x18]
	mov	rcx, qword ptr [rsp + 0x20]
	xor	rax, qword ptr [rsp + 0x198]
	xor	rcx, qword ptr [rsp + 0x1a0]
	mov	edx, ecx
	or	edx, eax
	shr	rax, 0x20
	or	edx, eax
	shr	rcx, 0x20
	mov	rax, qword ptr [rsp + 0x28]
	xor	rax, qword ptr [rsp + 0x1a8]
	mov	esi, eax
	or	esi, ecx
	or	esi, edx
	shr	rax, 0x20
	or	eax, esi
	je	.label_208
.label_205:
	mov	rax, qword ptr [rsp + 0x150]
	mov	qword ptr [rsp + 0x50], rax
	test	rax, rax
	mov	qword ptr [rsp + 0x68], r13
	je	.label_103
	mov	byte ptr [rsp + 0x1d2], 0x58
	mov	word ptr [rsp + 0x1d0], 0x5858
	movsxd	rbx, dword ptr [rsp + 0x98]
	mov	eax, ebx
	shr	eax, 0x1f
	imul	rbp, rbx, -0x6e5d4c3b
	shr	rbp, 0x20
	add	ebp, ebx
	mov	ecx, ebp
	shr	ecx, 0x1f
	sar	ebp, 0xb
	add	ebp, ecx
	mov	r9d, ebp
	neg	r9d
	cmp	rbx, -0xe10
	lea	rdi, [rsp + 0x1d3]
	lea	r8d, [rax + rax + 0x2b]
	cmovg	r9d, ebp
	mov	esi, 1
	mov	edx, 0x1b
	mov	ecx, OFFSET FLAT:label_209
	xor	eax, eax
	call	__sprintf_chk
	imul	ecx, ebp, 0xe10
	mov	esi, ebx
	sub	esi, ecx
	mov	edx, esi
	neg	edx
	cmovl	edx, esi
	cmp	ebx, ecx
	je	.label_187
	cdqe	
	lea	rcx, [rsp + rax + 0x1d3]
	movsxd	rax, edx
	imul	rdx, rax, -0x77777777
	shr	rdx, 0x20
	add	edx, eax
	mov	esi, edx
	shr	esi, 0x1f
	sar	edx, 5
	add	edx, esi
	imul	r8d, edx, 0x3c
	imul	rdi, rax, 0x1b4e81b5
	mov	rbp, rdi
	shr	rbp, 0x3f
	shr	rdi, 0x26
	movsxd	rdx, edx
	imul	rbx, rdx, 0x66666667
	mov	rsi, rbx
	shr	rsi, 0x3f
	sar	rbx, 0x22
	add	ebx, esi
	add	ebx, ebx
	lea	esi, [rbx + rbx*4]
	sub	edx, esi
	add	edx, 0x30
	sub	eax, r8d
	mov	byte ptr [rcx], 0x3a
	lea	esi, [rdi + rbp + 0x30]
	mov	byte ptr [rcx + 1], sil
	mov	byte ptr [rcx + 2], dl
	lea	rcx, [rcx + 3]
	je	.label_258
	mov	byte ptr [rcx], 0x3a
	movsxd	rdx, eax
	imul	rdx, rdx, 0x66666667
	mov	rsi, rdx
	shr	rsi, 0x3f
	sar	rdx, 0x22
	lea	edi, [rdx + rsi]
	lea	edx, [rdx + rsi + 0x30]
	mov	byte ptr [rcx + 1], dl
	add	edi, edi
	lea	edx, [rdi + rdi*4]
	neg	edx
	lea	eax, [rax + rdx + 0x30]
	mov	byte ptr [rcx + 2], al
	add	rcx, 3
.label_258:
	mov	byte ptr [rcx], 0
.label_187:
	lea	rdi, [rsp + 0x1d0]
	call	tzalloc
	mov	r13, rax
	test	r13, r13
	je	.label_50
	mov	rax, qword ptr [rsp + 0x198]
	mov	dword ptr [rsp + 0x18], eax
	shr	rax, 0x20
	mov	dword ptr [rsp + 0x1c], eax
	mov	rax, qword ptr [rsp + 0x1a0]
	mov	dword ptr [rsp + 0x20], eax
	shr	rax, 0x20
	mov	dword ptr [rsp + 0x24], eax
	mov	rax, qword ptr [rsp + 0x1a8]
	mov	dword ptr [rsp + 0x28], eax
	shr	rax, 0x20
	mov	dword ptr [rsp + 0x2c], eax
	mov	eax, dword ptr [rsp + 0x1b8]
	mov	dword ptr [rsp + 0x38], eax
	mov	dword ptr [rsp + 0x30], 0xffffffff
	lea	rsi, [rsp + 0x18]
	mov	rdi, r13
	call	mktime_z
	mov	r14, rax
	cmp	dword ptr [rsp + 0x30], 0
	js	.label_88
	mov	rax, qword ptr [rsp + 0x18]
	mov	rcx, qword ptr [rsp + 0x20]
	xor	rax, qword ptr [rsp + 0x198]
	xor	rcx, qword ptr [rsp + 0x1a0]
	mov	edx, ecx
	or	edx, eax
	shr	rax, 0x20
	or	edx, eax
	shr	rcx, 0x20
	mov	rbx, qword ptr [rsp + 0x28]
	xor	rbx, qword ptr [rsp + 0x1a8]
	mov	ebp, ebx
	or	ebp, ecx
	or	ebp, edx
	shr	rbx, 0x20
	mov	rdi, r13
	call	tzfree
	or	ebx, ebp
	mov	rbp, r14
	mov	r13, qword ptr [rsp + 0x68]
	jne	.label_103
.label_208:
	cmp	qword ptr [rsp + 0x130], 0
	je	.label_110
	mov	rax, qword ptr [rsp + 0x128]
	test	rax, rax
	jne	.label_110
	mov	rcx, qword ptr [rsp + 0x88]
	test	rcx, rcx
	jle	.label_119
	mov	eax, dword ptr [rsp + 0x30]
	cmp	eax, dword ptr [rsp + 0x90]
	setne	al
	jmp	.label_125
.label_50:
	cmp	byte ptr [rsp + 0x159], 0
	je	.label_133
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_284
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	lea	rsi, [rsp + 0x1d0]
	xor	eax, eax
	mov	rdi, rcx
	jmp	.label_181
.label_53:
	xor	ebp, ebp
	jmp	.label_87
.label_269:
	mov	esi, OFFSET FLAT:label_145
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	mov	esi, 1
	xor	eax, eax
	mov	rdi, rbx
	mov	rdx, rcx
	mov	rcx, r14
	call	__fprintf_chk
	jmp	.label_109
.label_88:
	mov	rdi, r13
	call	tzfree
.label_103:
	mov	r10, qword ptr [rsp + 0x198]
	mov	rsi, qword ptr [rsp + 0x1a0]
	mov	r11, qword ptr [rsp + 0x18]
	mov	rbx, qword ptr [rsp + 0x20]
	cmp	r10d, r11d
	sete	r8b
	mov	rax, r10
	shr	rax, 0x20
	mov	rcx, r11
	shr	rcx, 0x20
	mov	qword ptr [rsp + 0x268], rax
	mov	qword ptr [rsp + 0x260], rcx
	cmp	eax, ecx
	sete	cl
	mov	r14, rsi
	shr	r14, 0x20
	mov	rdi, rbx
	shr	rdi, 0x20
	cmp	r14d, edi
	sete	byte ptr [rsp + 0x58]
	mov	rbp, qword ptr [rsp + 0x1a8]
	mov	rax, qword ptr [rsp + 0x28]
	cmp	ebp, eax
	sete	dl
	mov	r13, rbp
	shr	r13, 0x20
	mov	r12, rax
	shr	r12, 0x20
	cmp	r13d, r12d
	sete	r15b
	mov	qword ptr [rsp + 0x78], rsi
	mov	qword ptr [rsp + 0x60], rbx
	cmp	esi, ebx
	setne	r9b
	cmp	byte ptr [rsp + 0x159], 0
	je	.label_133
	and	dl, r15b
	and	r8b, r9b
	and	cl, r8b
	and	cl, byte ptr [rsp + 0x58]
	and	cl, dl
	mov	byte ptr [rsp + 0xf], cl
	mov	qword ptr [rsp + 0x240], rdi
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_112
	mov	edx, 5
	mov	qword ptr [rsp + 0x58], rbp
	mov	rbp, rax
	mov	qword ptr [rsp + 0x248], r10
	mov	qword ptr [rsp + 0x250], r11
	call	dcgettext
	mov	rcx, rax
	xor	eax, eax
	mov	rdi, rcx
	call	dbg_printf
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_211
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
	lea	rdi, [rsp + 0x198]
	lea	rsi, [rsp + 0x80]
	lea	r15, [rsp + 0x1d0]
	mov	rdx, r15
	call	debug_strfdatetime
	mov	rcx, rax
	xor	eax, eax
	mov	rdi, rbx
	mov	rsi, rcx
	call	dbg_printf
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_222
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
	lea	rdi, [rsp + 0x18]
	lea	rsi, [rsp + 0x80]
	mov	rdx, r15
	call	debug_strfdatetime
	mov	rcx, rax
	xor	eax, eax
	mov	rdi, rbx
	mov	rsi, rcx
	call	dbg_printf
	cmp	r13d, r12d
	mov	eax, OFFSET FLAT:label_60
	mov	r9d, OFFSET FLAT:label_236
	cmove	r9, rax
	mov	qword ptr [rsp + 0x238], rbp
	mov	rcx, qword ptr [rsp + 0x58]
	cmp	ecx, ebp
	mov	r12d, OFFSET FLAT:label_237
	mov	r10d, OFFSET FLAT:label_237
	cmove	r10, rax
	mov	qword ptr [rsp + 0x258], r14
	mov	r15, qword ptr [rsp + 0x240]
	mov	r13, r15
	cmp	r14d, r15d
	mov	r11d, OFFSET FLAT:label_237
	cmove	r11, rax
	mov	rcx, qword ptr [rsp + 0x78]
	mov	rdx, qword ptr [rsp + 0x60]
	cmp	ecx, edx
	mov	ebx, OFFSET FLAT:label_237
	cmove	rbx, rax
	mov	rcx, qword ptr [rsp + 0x268]
	mov	rdx, qword ptr [rsp + 0x260]
	cmp	ecx, edx
	mov	ebp, OFFSET FLAT:label_237
	cmove	rbp, rax
	mov	rcx, qword ptr [rsp + 0x250]
	mov	rdx, qword ptr [rsp + 0x248]
	cmp	edx, ecx
	cmove	r12, rax
	sub	rsp, 8
	mov	esi, 0x64
	mov	edx, 1
	mov	ecx, 0x64
	mov	r8d, OFFSET FLAT:label_238
	mov	eax, 0
	lea	rdi, [rsp + 0x1d8]
	push	r12
	push	rbp
	push	rbx
	push	r11
	push	r10
	call	__snprintf_chk
	add	rsp, 0x30
	test	eax, eax
	js	.label_279
	movabs	rcx, 0xffffffff00000000
	cmp	eax, 0x63
	mov	edx, 0x63
	cmovb	edx, eax
	inc	edx
	lea	rax, [rdx - 1]
	shl	rdx, 0x20
	add	rdx, rcx
.label_285:
	mov	rsi, rdx
	test	rax, rax
	jle	.label_283
	lea	rdx, [rsi + rcx]
	cmp	byte ptr [rsp + rax + 0x1cf], 0x20
	lea	rax, [rax - 1]
	je	.label_285
.label_283:
	sar	rsi, 0x20
	mov	byte ptr [rsp + rsi + 0x1d0], 0
.label_279:
	lea	rsi, [rsp + 0x1d0]
	mov	edi, OFFSET FLAT:label_54
	xor	eax, eax
	call	dbg_printf
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_63
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	xor	eax, eax
	mov	rdi, rcx
	call	dbg_printf
	cmp	byte ptr [rsp + 0xf], 0
	je	.label_71
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_75
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	xor	eax, eax
	mov	rdi, rcx
	call	dbg_printf
.label_71:
	mov	rax, qword ptr [rsp + 0x258]
	cmp	eax, r13d
	je	.label_89
	mov	rax, qword ptr [rsp + 0x58]
	mov	rcx, qword ptr [rsp + 0x238]
	cmp	eax, ecx
	je	.label_89
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_116
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	xor	eax, eax
	mov	rdi, rcx
	call	dbg_printf
.label_89:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_278
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	xor	eax, eax
	mov	rdi, rcx
	call	dbg_printf
	cmp	qword ptr [rsp + 0x50], 0
	je	.label_100
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_104
	jmp	.label_105
.label_100:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_108
.label_105:
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	mov	edi, OFFSET FLAT:label_114
	xor	eax, eax
	mov	rsi, rcx
.label_181:
	call	dbg_printf
.label_133:
	xor	ebp, ebp
	mov	r13, qword ptr [rsp + 0x68]
	mov	rbx, qword ptr [rsp + 0x10]
	jmp	.label_87
.label_119:
	xor	eax, eax
.label_125:
	movzx	eax, al
	cmp	rcx, rax
	jge	.label_76
	test	rcx, rcx
	jle	.label_129
	mov	eax, dword ptr [rsp + 0x30]
	cmp	eax, dword ptr [rsp + 0x90]
	setne	al
	jmp	.label_132
.label_76:
	test	rcx, rcx
	jle	.label_136
	mov	eax, dword ptr [rsp + 0x30]
	cmp	eax, dword ptr [rsp + 0x90]
	setne	al
	jmp	.label_137
.label_129:
	xor	eax, eax
.label_132:
	movzx	eax, al
	mov	rdx, rcx
	sub	rdx, rax
	movabs	rax, 0xedb6db6db6db6db7
	cmp	rdx, rax
	jge	.label_140
	jmp	.label_144
.label_136:
	xor	eax, eax
.label_137:
	movzx	eax, al
	mov	rdx, rcx
	sub	rdx, rax
	movabs	rax, 0x1249249249249249
	cmp	rdx, rax
	jg	.label_144
.label_140:
	test	rcx, rcx
	jle	.label_152
	mov	eax, dword ptr [rsp + 0x30]
	cmp	eax, dword ptr [rsp + 0x90]
	setne	al
	jmp	.label_154
.label_152:
	xor	eax, eax
.label_154:
	movzx	eax, al
	sub	rcx, rax
	lea	rax, [rcx*8]
	sub	rax, rcx
	js	.label_158
	mov	rsi, r15
	sub	rsi, rax
	mov	ecx, dword ptr [rsp + 0x90]
	mov	edx, dword ptr [rsp + 0x30]
	lea	edi, [rcx + 7]
	sub	edi, edx
	movsxd	rdi, edi
	imul	rbp, rdi, -0x6db6db6d
	shr	rbp, 0x20
	add	ebp, edi
	mov	ebx, ebp
	shr	ebx, 0x1f
	sar	ebp, 2
	add	ebp, ebx
	lea	ebx, [rbp*8]
	sub	ebx, ebp
	sub	edi, ebx
	movsxd	rdi, edi
	jmp	.label_162
.label_158:
	mov	ecx, dword ptr [rsp + 0x90]
	mov	edx, dword ptr [rsp + 0x30]
	lea	esi, [rcx + 7]
	sub	esi, edx
	movsxd	rsi, esi
	imul	rdi, rsi, -0x6db6db6d
	shr	rdi, 0x20
	add	edi, esi
	mov	ebp, edi
	shr	ebp, 0x1f
	sar	edi, 2
	add	edi, ebp
	lea	ebp, [rdi*8]
	sub	ebp, edi
	sub	esi, ebp
	movsxd	rsi, esi
	lea	rdi, [r15 + 1]
	sub	rdi, rax
.label_162:
	cmp	rsi, rdi
	jl	.label_144
	add	ecx, 7
	sub	ecx, edx
	movsxd	rcx, ecx
	imul	rdx, rcx, -0x6db6db6d
	shr	rdx, 0x20
	add	edx, ecx
	mov	esi, edx
	shr	esi, 0x1f
	sar	edx, 2
	add	edx, esi
	lea	esi, [rdx*8]
	sub	esi, edx
	sub	ecx, esi
	movsxd	rcx, ecx
	add	rcx, rax
	movsxd	rax, dword ptr [rsp + 0x24]
	test	rax, rax
	js	.label_106
	mov	rdx, r15
	sub	rdx, rax
	cmp	rdx, rcx
	jge	.label_203
	jmp	.label_206
.label_106:
	lea	rdx, [r15 + 1]
	sub	rdx, rax
	cmp	rcx, rdx
	jl	.label_206
.label_203:
	lea	rdx, [rcx + r12]
	add	rdx, rax
	shr	rdx, 0x20
	je	.label_210
.label_206:
	add	ecx, eax
	mov	dword ptr [rsp + 0x24], ecx
.label_144:
	cmp	byte ptr [rsp + 0x159], 0
	jne	.label_215
	jmp	.label_65
.label_210:
	mov	rbp, r13
	add	ecx, eax
	mov	dword ptr [rsp + 0x24], ecx
	mov	dword ptr [rsp + 0x38], 0xffffffff
	lea	rsi, [rsp + 0x18]
	mov	rdi, qword ptr [rsp + 0x10]
	call	mktime_z
	mov	cl, byte ptr [rsp + 0x159]
	mov	r14, rax
	cmp	rax, -1
	je	.label_223
	test	cl, cl
	je	.label_227
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_117
	mov	edx, 5
	call	dcgettext
	mov	r13, rax
	lea	r12, [rsp + 0x80]
	lea	rsi, [rsp + 0x1d0]
	mov	rdi, r12
	call	str_days
	mov	rbx, rax
	lea	rdi, [rsp + 0x18]
	lea	rdx, [rsp + 0x290]
	mov	rsi, r12
	call	debug_strfdatetime
	mov	rcx, rax
	xor	eax, eax
	mov	rdi, r13
	mov	rsi, rbx
	mov	rdx, rcx
	call	dbg_printf
.label_227:
	mov	r13, rbp
	mov	r12d, 0x80000000
	mov	rbp, r14
.label_110:
	cmp	byte ptr [rsp + 0x159], 0
	je	.label_254
	mov	rax, qword ptr [rsp + 0x128]
	mov	rcx, qword ptr [rsp + 0x130]
	mov	rdx, rcx
	or	rdx, rax
	jne	.label_255
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_263
	mov	edx, 5
	call	dcgettext
	mov	qword ptr [rsp + 0x50], rax
	movsxd	rax, dword ptr [rsp + 0x2c]
	xor	ecx, ecx
	cmp	rax, -0x76d
	setg	cl
	lea	rcx, qword ptr [rcx + label_90]
	imul	rdx, rax, 0x51eb851f
	mov	rsi, rdx
	shr	rsi, 0x3f
	sar	rdx, 0x25
	lea	edi, [rdx + rsi]
	lea	edx, [rdx + rsi + 0x13]
	mov	r8d, 0xffffffed
	sub	r8d, edi
	test	edx, edx
	cmovns	r8d, edx
	imul	edx, edi, 0x64
	sub	eax, edx
	mov	r9d, eax
	neg	r9d
	cmovl	r9d, eax
	lea	rdi, [rsp + 0x338]
	mov	esi, 1
	mov	edx, 0xd
	xor	eax, eax
	call	__sprintf_chk
	mov	ebx, dword ptr [rsp + 0x24]
	mov	r10, rbp
	mov	ebp, dword ptr [rsp + 0x28]
	inc	ebp
	mov	r14, r13
	lea	r13, [rsp + 0x290]
	mov	esi, 0x64
	mov	edx, 1
	mov	ecx, 0x64
	mov	r8d, OFFSET FLAT:label_282
	mov	eax, 0
	mov	rdi, r13
	lea	r9, [rsp + 0x338]
	push	rbx
	push	rbp
	mov	rbp, r10
	call	__snprintf_chk
	add	rsp, 0x10
	xor	eax, eax
	mov	rdi, qword ptr [rsp + 0x50]
	mov	rsi, r13
	mov	r13, r14
	call	dbg_printf
	mov	rax, qword ptr [rsp + 0x128]
	mov	rcx, qword ptr [rsp + 0x130]
.label_255:
	test	rcx, rcx
	je	.label_77
	test	rax, rax
	je	.label_77
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_81
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
	lea	rdi, [rsp + 0x80]
	lea	rsi, [rsp + 0x1d0]
	call	str_days
	mov	rcx, rax
	xor	eax, eax
	mov	rdi, rbx
	mov	rsi, rcx
	call	dbg_printf
.label_77:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_94
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
	lea	rdi, [rsp + 0x18]
	lea	rsi, [rsp + 0x80]
	lea	rdx, [rsp + 0x290]
	call	debug_strfdatetime
	mov	rcx, rax
	xor	eax, eax
	mov	rdi, rbx
	mov	rsi, rcx
	call	dbg_printf
.label_254:
	mov	rcx, qword ptr [rsp + 0xf0]
	mov	rax, qword ptr [rsp + 0xf8]
	or	rcx, qword ptr [rsp + 0xe8]
	mov	rdx, rcx
	or	rdx, rax
	je	.label_107
	cmp	byte ptr [rsp + 0x159], 0
	je	.label_118
	test	rcx, rcx
	je	.label_122
	cmp	dword ptr [rsp + 0x24], 0xf
	je	.label_122
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_126
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	xor	eax, eax
	mov	rdi, rcx
	call	dbg_printf
	mov	rax, qword ptr [rsp + 0xf8]
.label_122:
	test	rax, rax
	je	.label_118
	cmp	dword ptr [rsp + 0x20], 0xc
	je	.label_118
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_201
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	xor	eax, eax
	mov	rdi, rcx
	call	dbg_printf
.label_118:
	mov	rbx, r13
	mov	r13, qword ptr [rsp + 0xe8]
	test	r13, r13
	js	.label_146
	mov	rcx, r15
	sub	rcx, r13
	movsxd	rax, dword ptr [rsp + 0x2c]
	cmp	rcx, rax
	jge	.label_148
	jmp	.label_155
.label_146:
	movsxd	rax, dword ptr [rsp + 0x2c]
	lea	rcx, [r15 + 1]
	sub	rcx, r13
	cmp	rax, rcx
	jl	.label_155
.label_148:
	movsxd	rcx, eax
	lea	rdx, [r13 + r12]
	add	rdx, rcx
	shr	rdx, 0x20
	jne	.label_155
	mov	rbp, qword ptr [rsp + 0xf0]
	test	rbp, rbp
	js	.label_175
	mov	rdx, r15
	sub	rdx, rbp
	movsxd	rcx, dword ptr [rsp + 0x28]
	cmp	rdx, rcx
	jge	.label_168
	jmp	.label_155
.label_175:
	movsxd	rcx, dword ptr [rsp + 0x28]
	lea	rdx, [r15 + 1]
	sub	rdx, rbp
	cmp	rcx, rdx
	jl	.label_155
.label_168:
	movsxd	rdx, ecx
	lea	rsi, [rbp + r12]
	add	rsi, rdx
	shr	rsi, 0x20
	jne	.label_155
	mov	rdx, qword ptr [rsp + 0xf8]
	mov	r8, rdx
	test	rdx, rdx
	js	.label_186
	mov	rsi, r15
	sub	rsi, r8
	movsxd	rdx, dword ptr [rsp + 0x24]
	cmp	rsi, rdx
	jmp	.label_189
.label_223:
	test	cl, cl
	mov	r13, rbp
	je	.label_65
.label_215:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_194
	mov	edx, 5
	call	dcgettext
	mov	qword ptr [rsp + 0x50], rax
	lea	r15, [rsp + 0x80]
	lea	rsi, [rsp + 0x1d0]
	mov	rdi, r15
	call	str_days
	mov	r12, rax
	mov	r14, r13
	mov	r13, qword ptr [rsp + 0x88]
	mov	ebx, dword ptr [rsp + 0x90]
	lea	rdi, [rsp + 0x18]
	lea	rdx, [rsp + 0x290]
	mov	rsi, r15
	call	debug_strfdatetime
	mov	rbp, rax
	xor	eax, eax
	mov	rdi, qword ptr [rsp + 0x50]
	mov	rsi, r12
	mov	rdx, r13
	mov	r13, r14
	mov	ecx, ebx
	mov	r8, rbp
	call	dbg_printf
	jmp	.label_65
.label_186:
	movsxd	rdx, dword ptr [rsp + 0x24]
	lea	rsi, [r15 + 1]
	sub	rsi, r8
	cmp	rdx, rsi
.label_189:
	mov	edi, 0x80000000
	jl	.label_155
	movsxd	rsi, edx
	add	rdi, r8
	add	rdi, rsi
	shr	rdi, 0x20
	je	.label_66
.label_155:
	cmp	byte ptr [rsp + 0x159], 0
	mov	r13, rbx
	je	.label_65
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_228
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	mov	esi, OFFSET FLAT:label_143
	mov	edx, 0x877
	xor	eax, eax
	mov	rdi, rcx
	call	dbg_printf
	jmp	.label_65
.label_66:
	add	r13d, eax
	add	ebp, ecx
	add	r8d, edx
	mov	dword ptr [rsp + 0x2c], r13d
	mov	dword ptr [rsp + 0x28], ebp
	mov	qword ptr [rsp + 0x50], r8
	mov	dword ptr [rsp + 0x24], r8d
	mov	eax, dword ptr [rsp + 0x1a0]
	mov	dword ptr [rsp + 0x20], eax
	mov	eax, dword ptr [rsp + 0x19c]
	mov	dword ptr [rsp + 0x1c], eax
	mov	eax, dword ptr [rsp + 0x198]
	mov	dword ptr [rsp + 0x18], eax
	mov	eax, dword ptr [rsp + 0x1b8]
	mov	dword ptr [rsp + 0x38], eax
	lea	rsi, [rsp + 0x18]
	mov	rdi, qword ptr [rsp + 0x10]
	call	mktime_z
	mov	r14, rax
	cmp	rax, -1
	mov	al, byte ptr [rsp + 0x159]
	je	.label_259
	test	al, al
	je	.label_68
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_128
	mov	edx, 5
	call	dcgettext
	mov	rdi, rax
	mov	rsi, qword ptr [rsp + 0xe8]
	mov	rdx, qword ptr [rsp + 0xf0]
	mov	rcx, qword ptr [rsp + 0xf8]
	xor	eax, eax
	call	dbg_printf
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_274
	mov	edx, 5
	call	dcgettext
	mov	r12, rax
	lea	rdi, [rsp + 0x18]
	lea	rsi, [rsp + 0x80]
	lea	rdx, [rsp + 0x290]
	call	debug_strfdatetime
	mov	rcx, rax
	xor	eax, eax
	mov	rdi, r12
	mov	rsi, rcx
	call	dbg_printf
	mov	eax, dword ptr [rsp + 0x1b8]
	cmp	eax, -1
	je	.label_256
	cmp	dword ptr [rsp + 0x38], eax
	je	.label_256
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_217
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	xor	eax, eax
	mov	rdi, rcx
	call	dbg_printf
.label_256:
	cmp	qword ptr [rsp + 0xf8], 0
	jne	.label_68
	mov	rax, qword ptr [rsp + 0x50]
	cmp	dword ptr [rsp + 0x24], eax
	jne	.label_102
	cmp	qword ptr [rsp + 0xf0], 0
	jne	.label_68
	cmp	dword ptr [rsp + 0x28], ebp
	je	.label_68
.label_102:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_74
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	xor	eax, eax
	mov	rdi, rcx
	call	dbg_printf
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_86
	mov	edx, 5
	call	dcgettext
	mov	qword ptr [rsp + 0x78], rax
	xor	eax, eax
	cmp	r13d, 0xfffff893
	setg	al
	lea	rcx, qword ptr [rax + label_90]
	movsxd	rax, r13d
	imul	rax, rax, 0x51eb851f
	mov	rdx, rax
	shr	rdx, 0x3f
	sar	rax, 0x25
	lea	esi, [rax + rdx]
	lea	eax, [rax + rdx + 0x13]
	mov	r12d, 0xffffffed
	mov	r8d, 0xffffffed
	sub	r8d, esi
	test	eax, eax
	cmovns	r8d, eax
	imul	eax, esi, 0x64
	sub	r13d, eax
	mov	r9d, r13d
	neg	r9d
	cmovl	r9d, r13d
	lea	r13, [rsp + 0x338]
	mov	esi, 1
	mov	edx, 0xd
	xor	eax, eax
	mov	rdi, r13
	call	__sprintf_chk
	inc	ebp
	xor	eax, eax
	mov	rdi, qword ptr [rsp + 0x78]
	mov	rsi, r13
	mov	edx, ebp
	mov	rcx, qword ptr [rsp + 0x50]
	call	dbg_printf
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_124
	mov	edx, 5
	call	dcgettext
	mov	rbp, rax
	movsxd	rax, dword ptr [rsp + 0x2c]
	xor	ecx, ecx
	cmp	rax, -0x76d
	setg	cl
	lea	rcx, qword ptr [rcx + label_90]
	imul	rdx, rax, 0x51eb851f
	mov	rsi, rdx
	shr	rsi, 0x3f
	sar	rdx, 0x25
	lea	edi, [rdx + rsi]
	lea	edx, [rdx + rsi + 0x13]
	sub	r12d, edi
	test	edx, edx
	cmovns	r12d, edx
	imul	edx, edi, 0x64
	sub	eax, edx
	mov	r9d, eax
	neg	r9d
	cmovl	r9d, eax
	mov	esi, 1
	mov	edx, 0xd
	xor	eax, eax
	mov	rdi, r13
	mov	r8d, r12d
	call	__sprintf_chk
	mov	ecx, dword ptr [rsp + 0x24]
	mov	edx, dword ptr [rsp + 0x28]
	inc	edx
	xor	eax, eax
	mov	rdi, rbp
	mov	rsi, r13
	call	dbg_printf
.label_68:
	mov	r13, rbx
	mov	rbp, r14
.label_107:
	cmp	qword ptr [rsp + 0x150], 0
	je	.label_159
	movsxd	rax, dword ptr [rsp + 0x98]
	mov	rdx, qword ptr [rsp + 0x40]
	test	rdx, rdx
	js	.label_164
	lea	rsi, [r15 + 1]
	xor	rsi, rdx
	mov	ecx, 1
	cmp	rax, rsi
	jge	.label_169
	jmp	.label_173
.label_164:
	lea	rsi, [rdx + r15]
	mov	ecx, 1
	cmp	rsi, rax
	jl	.label_173
.label_169:
	xor	ecx, ecx
.label_173:
	sub	rax, rdx
	js	.label_176
	lea	rsi, [r15 + 1]
	xor	rsi, rax
	mov	edx, 1
	cmp	rbp, rsi
	jge	.label_177
	jmp	.label_184
.label_176:
	lea	rsi, [rax + r15]
	mov	edx, 1
	cmp	rsi, rbp
	jl	.label_184
.label_177:
	xor	edx, edx
.label_184:
	or	edx, ecx
	je	.label_188
	cmp	byte ptr [rsp + 0x159], 0
	je	.label_65
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_82
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	mov	esi, dword ptr [rsp + 0x98]
	xor	eax, eax
	mov	rdi, rcx
	call	dbg_printf
	jmp	.label_65
.label_188:
	sub	rbp, rax
.label_159:
	cmp	byte ptr [rsp + 0x159], 0
	je	.label_199
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_202
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
	lea	rdi, [rsp + 0x18]
	lea	rsi, [rsp + 0x80]
	lea	rdx, [rsp + 0x290]
	call	debug_strfdatetime
	mov	rcx, rax
	xor	eax, eax
	mov	rdi, rbx
	mov	rsi, rcx
	mov	rdx, rbp
	call	dbg_printf
.label_199:
	mov	rdi, rbp
	movsxd	r8, dword ptr [rsp + 0x118]
	mov	rsi, qword ptr [rsp + 0xe0]
	add	rsi, r8
	movabs	rbp, 0x112e0be826d694b3
	mov	rax, rsi
	imul	rbp
	mov	rax, rdx
	shr	rax, 0x3f
	sar	rdx, 0x1a
	add	rdx, rax
	imul	rax, rdx, 0x3b9aca00
	mov	rcx, rsi
	sub	rcx, rax
	add	rcx, 0x3b9aca00
	mov	rax, rcx
	imul	rbp
	mov	rax, rdx
	shr	rax, 0x3f
	sar	rdx, 0x1a
	add	rdx, rax
	imul	rax, rdx, 0x3b9aca00
	sub	rcx, rax
	sub	rsi, rcx
	mov	rax, rsi
	imul	rbp
	mov	rax, qword ptr [rsp + 0x100]
	test	rax, rax
	js	.label_246
	movabs	rsi, 0x91a2b3c4d5e6f
	cmp	rax, rsi
	jle	.label_239
	jmp	.label_241
.label_246:
	movabs	rsi, 0xfff6e5d4c3b2a191
	cmp	rax, rsi
	jl	.label_241
.label_239:
	imul	rbx, rax, 0xe10
	test	rbx, rbx
	js	.label_247
	mov	rsi, r15
	sub	rsi, rbx
	cmp	rsi, rdi
	jge	.label_250
	jmp	.label_241
.label_247:
	lea	rsi, [r15 + 1]
	sub	rsi, rbx
	cmp	rdi, rsi
	jl	.label_241
.label_250:
	mov	r12, r13
	mov	rsi, qword ptr [rsp + 0x108]
	test	rsi, rsi
	js	.label_260
	movabs	rbp, 0x222222222222222
	cmp	rsi, rbp
	mov	r13, r12
	jle	.label_266
	jmp	.label_241
.label_260:
	movabs	rbp, 0xfdddddddddddddde
	cmp	rsi, rbp
	mov	r13, r12
	jl	.label_241
.label_266:
	add	rbx, rdi
	imul	r14, rsi, 0x3c
	test	r14, r14
	js	.label_270
	mov	rbp, r15
	sub	rbp, r14
	cmp	rbp, rbx
	jmp	.label_220
.label_270:
	lea	rbp, [r15 + 1]
	sub	rbp, r14
	cmp	rbx, rbp
.label_220:
	mov	r13, r12
	jl	.label_241
	add	r14, rbx
	mov	rbx, qword ptr [rsp + 0x110]
	test	rbx, rbx
	js	.label_207
	mov	rbp, r15
	sub	rbp, rbx
	cmp	rbp, r14
	jmp	.label_281
.label_207:
	lea	rbp, [r15 + 1]
	sub	rbp, rbx
	cmp	r14, rbp
.label_281:
	mov	r13, r12
	jl	.label_241
	mov	rbp, rdx
	shr	rbp, 0x3f
	sar	rdx, 0x1a
	add	rdx, rbp
	add	r14, rbx
	movsxd	rdx, edx
	test	edx, edx
	js	.label_244
	sub	r15, rdx
	cmp	r15, r14
	jmp	.label_287
.label_259:
	test	al, al
	mov	r13, rbx
	je	.label_65
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_55
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
	lea	rdi, [rsp + 0x18]
	lea	rsi, [rsp + 0x80]
	lea	rdx, [rsp + 0x290]
	call	debug_strfdatetime
	mov	rcx, rax
	xor	eax, eax
	mov	rdi, rbx
	mov	rsi, rcx
	call	dbg_printf
	jmp	.label_65
.label_244:
	inc	r15
	sub	r15, rdx
	cmp	r14, r15
.label_287:
	mov	r13, r12
	jge	.label_190
.label_241:
	cmp	byte ptr [rsp + 0x159], 0
	je	.label_65
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_204
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	xor	eax, eax
	mov	rdi, rcx
	call	dbg_printf
.label_65:
	xor	ebp, ebp
	mov	rbx, qword ptr [rsp + 0x10]
	jmp	.label_87
.label_190:
	add	r14, rdx
	mov	rdx, qword ptr [rsp + 0x60]
	mov	qword ptr [rdx], r14
	mov	qword ptr [rdx + 8], rcx
	cmp	byte ptr [rsp + 0x159], 0
	je	.label_134
	or	rsi, rax
	or	rsi, rbx
	or	rsi, r8
	je	.label_134
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_232
	mov	edx, 5
	call	dcgettext
	mov	rdi, rax
	mov	rsi, qword ptr [rsp + 0x100]
	mov	rdx, qword ptr [rsp + 0x108]
	mov	rcx, qword ptr [rsp + 0x110]
	mov	r8d, dword ptr [rsp + 0x118]
	xor	eax, eax
	call	dbg_printf
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_121
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	xor	eax, eax
	mov	rdi, rcx
	mov	rsi, r14
	call	dbg_printf
	cmp	dword ptr [rsp + 0x38], -1
	je	.label_134
	lea	rdx, [rsp + 0x338]
	mov	rdi, qword ptr [rsp + 0x10]
	mov	rsi, qword ptr [rsp + 0x60]
	call	localtime_rz
	test	rax, rax
	je	.label_134
	mov	eax, dword ptr [rsp + 0x38]
	cmp	eax, dword ptr [rsp + 0x358]
	je	.label_134
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_93
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	xor	eax, eax
	mov	rdi, rcx
	call	dbg_printf
.label_134:
	mov	r13, r12
	mov	rbx, qword ptr [rsp + 0x10]
	mov	r12, qword ptr [rsp + 0x60]
	jmp	.label_149
	.section	.text
	.align	32
	#Procedure 0x404577
	.globl sub_404577
	.type sub_404577, @function
sub_404577:

	nop	word ptr [rax + rax]
.label_289:
	mov	ecx, 1
.label_288:
	mov	rdi, rcx
	mov	rsi, rax
	jmp	calloc
	.section	.text
	.align	32
	#Procedure 0x404590
	.globl sub_404590
	.type sub_404590, @function
sub_404590:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x404595

	.globl rpl_calloc
	.type rpl_calloc, @function
rpl_calloc:
	test	rdi, rdi
	mov	eax, 1
	je	.label_289
	test	rsi, rsi
	mov	ecx, 1
	je	.label_288
	mov	rax, rsi
	imul	rax, rdi
	xor	edx, edx
	div	rsi
	cmp	rax, rdi
	mov	rax, rsi
	mov	rcx, rdi
	je	.label_288
	push	rax
	call	__errno_location
	mov	dword ptr [rax], 0xc
	xor	eax, eax
	pop	rcx
	ret	
	.section	.text
	.align	32
	#Procedure 0x4045d0

	.globl xmalloc
	.type xmalloc, @function
xmalloc:
	push	rbx
	mov	rbx, rdi
	call	malloc
	test	rbx, rbx
	je	.label_290
	test	rax, rax
	je	.label_291
.label_290:
	pop	rbx
	ret	
.label_291:
	call	xalloc_die
	.section	.text
	.align	32
	#Procedure 0x4045ea
	.globl sub_4045ea
	.type sub_4045ea, @function
sub_4045ea:

	nop	word ptr [rax + rax]
.label_296:
	cmp	byte ptr [rbx], 0x60
	mov	ecx, OFFSET FLAT:label_292
	mov	eax, OFFSET FLAT:label_293
	jmp	.label_294
	.section	.text
	.align	32
	#Procedure 0x4045ff
	.globl sub_4045ff
	.type sub_4045ff, @function
sub_4045ff:

	nop	word ptr cs:[rax + rax]
.label_301:
	movsx	ecx, byte ptr [rax + 1]
	and	ecx, 0xffffffdf
	cmp	ecx, 0x42
	jne	.label_295
	cmp	byte ptr [rax + 2], 0x31
	jne	.label_295
	cmp	byte ptr [rax + 3], 0x38
	jne	.label_295
	cmp	byte ptr [rax + 4], 0x30
	jne	.label_295
	cmp	byte ptr [rax + 5], 0x33
	jne	.label_295
	cmp	byte ptr [rax + 6], 0x30
	jne	.label_295
	cmp	byte ptr [rax + 7], 0
	je	.label_296
.label_295:
	cmp	ebp, 9
	mov	ecx, OFFSET FLAT:label_297
	mov	eax, OFFSET FLAT:label_298
.label_294:
	cmove	rax, rcx
.label_302:
	add	rsp, 8
	pop	rbx
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x404652

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
	jne	.label_302
	call	locale_charset
	movsx	ecx, byte ptr [rax]
	and	ecx, 0xffffffdf
	cmp	ecx, 0x47
	je	.label_301
	cmp	ecx, 0x55
	jne	.label_295
	movsx	ecx, byte ptr [rax + 1]
	and	ecx, 0xffffffdf
	cmp	ecx, 0x54
	jne	.label_295
	movsx	ecx, byte ptr [rax + 2]
	and	ecx, 0xffffffdf
	cmp	ecx, 0x46
	jne	.label_295
	cmp	byte ptr [rax + 3], 0x2d
	jne	.label_295
	cmp	byte ptr [rax + 4], 0x38
	jne	.label_295
	cmp	byte ptr [rax + 5], 0
	jne	.label_295
	cmp	byte ptr [rbx], 0x60
	mov	ecx, OFFSET FLAT:label_299
	mov	eax, OFFSET FLAT:label_300
	jmp	.label_294
	.section	.text
	.align	32
	#Procedure 0x4046c0

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
	je	.label_303
	mov	edx, OFFSET FLAT:label_313
	xor	eax, eax
	mov	rdi, r14
	mov	r8, rbx
	call	__fprintf_chk
	jmp	.label_319
.label_303:
	mov	edx, OFFSET FLAT:label_320
	xor	eax, eax
	mov	rdi, r14
	mov	rcx, rbx
	mov	r8, r9
	call	__fprintf_chk
.label_319:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_306
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
	mov	esi, OFFSET FLAT:label_321
	mov	edx, 5
	call	dcgettext
	mov	rdi, rax
	mov	rsi, r14
	call	fputs_unlocked
	cmp	r12, 9
	ja	.label_308
	jmp	qword ptr [(r12 * 8) + label_309]
.label_1295:
	add	rsp, 8
	jmp	.label_307
.label_308:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_316
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
	jmp	.label_307
.label_1296:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_304
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
.label_1297:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_317
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
.label_1298:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_314
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
.label_1299:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_311
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
	jmp	.label_307
.label_1300:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_310
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
	jmp	.label_307
.label_1301:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_312
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
	jmp	.label_307
.label_1302:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_315
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
	jmp	.label_307
.label_1304:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_318
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
	jmp	.label_307
.label_1303:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_305
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
.label_307:
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	ret	
	.section	.text
	.align	32
	#Procedure 0x404a18
	.globl sub_404a18
	.type sub_404a18, @function
sub_404a18:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x404a20

	.globl posix2_version
	.type posix2_version, @function
posix2_version:
	push	rax
	mov	edi, OFFSET FLAT:label_322
	call	getenv
	mov	ecx, 0x31069
	test	rax, rax
	je	.label_323
	mov	ecx, 0x31069
	cmp	byte ptr [rax], 0
	je	.label_323
	lea	rsi, [rsp]
	mov	edx, 0xa
	mov	rdi, rax
	call	strtol
	mov	rcx, qword ptr [rsp]
	cmp	byte ptr [rcx], 0
	mov	ecx, 0x31069
	cmove	rcx, rax
.label_323:
	cmp	rcx, 0x7fffffff
	mov	edx, 0x7fffffff
	cmovl	edx, ecx
	cmp	rcx, -0x80000000
	mov	eax, 0x80000000
	cmovge	eax, edx
	pop	rcx
	ret	
.label_326:
	mov	rdi, rbx
	call	fileno
	mov	edi, eax
	mov	rsi, rbp
	mov	edx, r14d
	call	lseek
	mov	rcx, rax
	mov	eax, 0xffffffff
	cmp	rcx, -1
	je	.label_324
	and	byte ptr [rbx], 0xef
	mov	qword ptr [rbx + 0x90], rcx
	xor	eax, eax
.label_324:
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x404ab4
	.globl sub_404ab4
	.type sub_404ab4, @function
sub_404ab4:

	nop	
	.section	.text
	.align	32
	#Procedure 0x404ab6

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
	jne	.label_325
	mov	rax, qword ptr [rbx + 0x28]
	cmp	rax, qword ptr [rbx + 0x20]
	jne	.label_325
	cmp	qword ptr [rbx + 0x48], 0
	je	.label_326
.label_325:
	mov	rdi, rbx
	mov	rsi, rbp
	mov	edx, r14d
	pop	rbx
	pop	r14
	pop	rbp
	jmp	fseeko
.label_327:
	call	abort
	.section	.text
	.align	32
	#Procedure 0x404af5
	.globl sub_404af5
	.type sub_404af5, @function
sub_404af5:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x404b00
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
	je	.label_327
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
	.align	32
	#Procedure 0x404b90

	.globl locale_charset
	.type locale_charset, @function
locale_charset:
	push	rax
	mov	edi, 0xe
	call	rpl_nl_langinfo
	test	rax, rax
	mov	ecx, OFFSET FLAT:label_60
	cmovne	rcx, rax
	cmp	byte ptr [rcx], 0
	mov	eax, OFFSET FLAT:label_328
	cmovne	rax, rcx
	pop	rcx
	ret	
	.section	.text
	.align	32
	#Procedure 0x404bb5
	.globl sub_404bb5
	.type sub_404bb5, @function
sub_404bb5:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x404bc0
	.globl quotearg_n_custom_mem
	.type quotearg_n_custom_mem, @function
quotearg_n_custom_mem:

	sub	rsp, 0x38
	mov	rax, qword ptr [rip + label_329]
	mov	qword ptr [rsp + 0x30], rax
	movups	xmm0, xmmword ptr [rip + label_330]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0, xmmword ptr [rip + label_331]
	movaps	xmmword ptr [rsp + 0x10], xmm0
	movups	xmm0, xmmword ptr [rip + default_quoting_options]
	movaps	xmmword ptr [rsp], xmm0
	mov	dword ptr [rsp], 0xa
	test	rsi, rsi
	je	.label_332
	test	rdx, rdx
	je	.label_332
	mov	qword ptr [rsp + 0x28], rsi
	mov	qword ptr [rsp + 0x30], rdx
	lea	rax, [rsp]
	mov	rsi, rcx
	mov	rdx, r8
	mov	rcx, rax
	call	quotearg_n_options
	add	rsp, 0x38
	ret	
.label_332:
	call	abort
	.section	.text
	.align	32
	#Procedure 0x404c2a
	.globl sub_404c2a
	.type sub_404c2a, @function
sub_404c2a:

	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x404c30

	.globl main
	.type main, @function
main:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0xc8
	mov	dword ptr [rsp + 0xc], edi
	mov	qword ptr [rsp + 0x10], rsi
	mov	rdi, qword ptr [rsi]
	call	set_program_name
	mov	edi, 6
	mov	esi, OFFSET FLAT:label_60
	call	setlocale
	mov	edi, OFFSET FLAT:label_360
	mov	esi, OFFSET FLAT:label_361
	call	bindtextdomain
	mov	edi, OFFSET FLAT:label_360
	call	textdomain
	mov	edi, OFFSET FLAT:close_stdout
	call	atexit
	mov	dword ptr [rip + change_times],  0
	mov	byte ptr [rip + use_ref],  0
	mov	byte ptr [rip + no_create],  0
	xor	r14d, r14d
	xor	ebx, ebx
	jmp	.label_342
.label_1404:
	mov	rsi, qword ptr [rip + optarg]
	mov	r9, qword ptr [rip + argmatch_die]
	mov	edi, OFFSET FLAT:label_375
	mov	edx, OFFSET FLAT:time_args
	mov	ecx, OFFSET FLAT:time_masks
	mov	r8d, 4
	call	__xargmatch_internal
	mov	eax, dword ptr [(rax * 4) + time_masks]
	or	dword ptr [rip + change_times],  eax
	nop	dword ptr [rax + rax]
.label_342:
	mov	edx, OFFSET FLAT:label_389
	mov	ecx, OFFSET FLAT:longopts
	xor	r8d, r8d
	mov	edi, dword ptr [rsp + 0xc]
	mov	rsi, qword ptr [rsp + 0x10]
	call	getopt_long
	cmp	eax, 0x60
	jle	.label_397
	add	eax, -0x61
	cmp	eax, 0x1f
	ja	.label_335
	jmp	qword ptr [(rax * 8) + label_341]
.label_1397:
	or	byte ptr [rip + change_times],  1
	jmp	.label_342
.label_1398:
	mov	byte ptr [rip + no_create],  1
	jmp	.label_342
.label_1399:
	mov	r14, qword ptr [rip + optarg]
	jmp	.label_342
.label_1400:
	mov	byte ptr [rip + no_dereference],  1
	jmp	.label_342
.label_1401:
	or	byte ptr [rip + change_times],  2
	jmp	.label_342
.label_1402:
	mov	byte ptr [rip + use_ref],  1
	mov	rax, qword ptr [rip + optarg]
	mov	qword ptr [rip + ref_file],  rax
	jmp	.label_342
.label_1403:
	mov	rsi, qword ptr [rip + optarg]
	mov	edi, OFFSET FLAT:newtime
	mov	edx, 6
	call	posixtime
	test	al, al
	je	.label_365
	mov	qword ptr [rip + label_338],  0
	movaps	xmm0, xmmword ptr [rip + newtime]
	movaps	xmmword ptr [rip + label_348],  xmm0
	mov	bl, 1
	jmp	.label_342
.label_397:
	cmp	eax, -1
	jne	.label_371
	cmp	dword ptr [rip + change_times],  0
	jne	.label_374
	mov	dword ptr [rip + change_times],  3
.label_374:
	test	bl, bl
	mov	al, byte ptr [rip + use_ref]
	je	.label_382
	test	r14, r14
	setne	cl
	or	cl, al
	test	cl, 1
	je	.label_384
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_385
	jmp	.label_386
.label_382:
	test	al, 1
	je	.label_384
	mov	rsi, qword ptr [rip + ref_file]
	cmp	byte ptr [rip + no_dereference],  1
	jne	.label_354
	lea	rdx, [rsp + 0x38]
	mov	edi, 1
	call	__lxstat
	jmp	.label_399
.label_384:
	test	r14, r14
	je	.label_343
	lea	rbx, [rsp + 0x38]
	mov	rdi, rbx
	call	gettime
	mov	edi, OFFSET FLAT:newtime
	mov	rsi, r14
	mov	rdx, rbx
	call	parse_datetime
	test	al, al
	je	.label_344
	movaps	xmm0, xmmword ptr [rip + newtime]
	movaps	xmmword ptr [rip + label_348],  xmm0
	mov	bl, 1
	cmp	dword ptr [rip + change_times],  3
	jne	.label_343
	mov	rax, qword ptr [rip + newtime]
	cmp	rax, qword ptr [rsp + 0x38]
	jne	.label_343
	mov	rcx, qword ptr [rip + label_338]
	cmp	rcx, qword ptr [rsp + 0x40]
	jne	.label_343
	xor	rax, 1
	mov	qword ptr [rsp + 0x18], rax
	mov	qword ptr [rsp + 0x20], rcx
	lea	rdi, [rsp + 0x28]
	lea	rdx, [rsp + 0x18]
	mov	rsi, r14
	call	parse_datetime
	test	al, al
	je	.label_344
	mov	rax, qword ptr [rsp + 0x28]
	mov	bl, 1
	cmp	rax, qword ptr [rsp + 0x18]
	jne	.label_343
	mov	rax, qword ptr [rsp + 0x30]
	cmp	rax, qword ptr [rsp + 0x20]
	setne	bl
.label_343:
	test	bl, 1
	jne	.label_347
	mov	eax, dword ptr [rsp + 0xc]
	sub	eax, dword ptr [rip + optind]
	cmp	eax, 2
	jl	.label_380
	call	posix2_version
	cmp	eax, 0x30daf
	jg	.label_380
	movsxd	rax, dword ptr [rip + optind]
	mov	rcx, qword ptr [rsp + 0x10]
	mov	rsi, qword ptr [rcx + rax*8]
	mov	edi, OFFSET FLAT:newtime
	mov	edx, 9
	call	posixtime
	test	al, al
	je	.label_380
	mov	qword ptr [rip + label_338],  0
	movaps	xmm0, xmmword ptr [rip + newtime]
	movaps	xmmword ptr [rip + label_348],  xmm0
	mov	edi, OFFSET FLAT:label_398
	call	getenv
	test	rax, rax
	jne	.label_346
	mov	edi, OFFSET FLAT:newtime
	call	localtime
	mov	rbx, rax
	test	rbx, rbx
	je	.label_346
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_350
	mov	edx, 5
	call	dcgettext
	mov	rdx, rax
	movsxd	rax, dword ptr [rip + optind]
	mov	rcx, qword ptr [rsp + 0x10]
	mov	rcx, qword ptr [rcx + rax*8]
	movsxd	r8, dword ptr [rbx + 0x14]
	add	r8, 0x76c
	mov	r9d, dword ptr [rbx + 0x10]
	inc	r9d
	mov	r10d, dword ptr [rbx + 0xc]
	mov	r11d, dword ptr [rbx + 8]
	mov	ebp, dword ptr [rbx]
	mov	ebx, dword ptr [rbx + 4]
	xor	edi, edi
	xor	esi, esi
	mov	eax, 0
	push	rbp
	push	rbx
	push	r11
	push	r10
	call	error
	add	rsp, 0x20
.label_346:
	inc	dword ptr [rip + optind]
	jmp	.label_347
.label_380:
	cmp	dword ptr [rip + change_times],  3
	jne	.label_372
	mov	byte ptr [rip + amtime_now],  1
	jmp	.label_347
.label_372:
	mov	qword ptr [rip + label_338],  0x3fffffff
	mov	qword ptr [rip + label_379],  0x3fffffff
	jmp	.label_347
.label_354:
	lea	rdx, [rsp + 0x38]
	mov	edi, 1
	call	__xstat
.label_399:
	test	eax, eax
	jne	.label_388
	movups	xmm0, xmmword ptr [rsp + 0x80]
	movaps	xmmword ptr [rip + newtime],  xmm0
	movups	xmm0, xmmword ptr [rsp + 0x90]
	movaps	xmmword ptr [rip + label_348],  xmm0
	test	r14, r14
	je	.label_347
	mov	eax, dword ptr [rip + change_times]
	test	al, 1
	je	.label_337
	mov	edi, OFFSET FLAT:newtime
	mov	edx, OFFSET FLAT:newtime
	mov	rsi, r14
	call	parse_datetime
	test	al, al
	je	.label_344
	mov	eax, dword ptr [rip + change_times]
.label_337:
	test	al, 2
	je	.label_347
	mov	edi, OFFSET FLAT:label_348
	mov	edx, OFFSET FLAT:label_348
	mov	rsi, r14
	call	parse_datetime
	test	al, al
	je	.label_344
.label_347:
	mov	eax, dword ptr [rip + optind]
	cmp	eax, dword ptr [rsp + 0xc]
	je	.label_357
	mov	r15b, 1
	jge	.label_359
	mov	r15b, 1
	nop	dword ptr [rax + rax]
.label_366:
	cdqe	
	mov	rcx, qword ptr [rsp + 0x10]
	mov	r13, qword ptr [rcx + rax*8]
	cmp	byte ptr [r13], 0x2d
	jne	.label_373
	cmp	byte ptr [r13 + 1], 0
	je	.label_367
.label_373:
	mov	ebp, 0xffffffff
	xor	r14d, r14d
	movzx	eax, byte ptr [rip + no_create]
	test	al, al
	jne	.label_369
	movzx	eax, byte ptr [rip + no_dereference]
	test	al, al
	jne	.label_369
	xor	r14d, r14d
	xor	edi, edi
	mov	edx, 0x941
	mov	ecx, 0x1b6
	mov	rsi, r13
	call	fd_reopen
	cmp	eax, -1
	je	.label_383
	mov	ebp, eax
	jmp	.label_369
.label_367:
	mov	ebp, 1
	xor	r14d, r14d
	jmp	.label_369
.label_383:
	call	__errno_location
	mov	eax, dword ptr [rax]
	cmp	eax, 0x16
	ja	.label_336
	mov	ecx, 0x600002
	bt	ecx, eax
	jb	.label_369
.label_336:
	mov	r14d, eax
	nop	word ptr [rax + rax]
.label_369:
	mov	eax, dword ptr [rip + change_times]
	cmp	eax, 1
	je	.label_377
	cmp	eax, 3
	je	.label_339
	cmp	eax, 2
	jne	.label_333
	mov	qword ptr [rip + label_338],  0x3ffffffe
	jmp	.label_339
	.section	.text
	.align	32
	#Procedure 0x405116
	.globl sub_405116
	.type sub_405116, @function
sub_405116:

	nop	word ptr cs:[rax + rax]
.label_377:
	mov	qword ptr [rip + label_379],  0x3ffffffe
.label_339:
	movzx	eax, byte ptr [rip + amtime_now]
	test	al, al
	mov	ecx, OFFSET FLAT:newtime
	mov	eax, 0
	cmovne	rcx, rax
	cmp	ebp, 1
	mov	rdx, r13
	cmove	rdx, rax
	movzx	r8d, byte ptr [rip + no_dereference]
	shl	r8d, 8
	cmp	ebp, -1
	cmovne	r8d, eax
	mov	esi, 0xffffff9c
	mov	edi, ebp
	call	fdutimensat
	mov	ebx, eax
	test	ebp, ebp
	je	.label_364
	cmp	ebp, 1
	setne	al
	test	ebx, ebx
	je	.label_340
	test	al, al
	jne	.label_340
	call	__errno_location
	cmp	dword ptr [rax], 9
	jne	.label_340
	mov	r12b, 1
	movzx	eax, byte ptr [rip + no_create]
	test	al, al
	je	.label_370
	jmp	.label_355
	.section	.text
	.align	32
	#Procedure 0x40519c
	.globl sub_40519c
	.type sub_40519c, @function
sub_40519c:

	nop	dword ptr [rax]
.label_364:
	xor	edi, edi
	call	close
	test	eax, eax
	je	.label_340
	call	__errno_location
	mov	ebx, dword ptr [rax]
	xor	r12d, r12d
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_378
	mov	edx, 5
	call	dcgettext
	mov	rbp, rax
	mov	edi, 4
	mov	rsi, r13
	call	quotearg_style
	mov	rcx, rax
	xor	edi, edi
	xor	eax, eax
	mov	esi, ebx
	mov	rdx, rbp
	jmp	.label_376
	.section	.text
	.align	32
	#Procedure 0x4051e7
	.globl sub_4051e7
	.type sub_4051e7, @function
sub_4051e7:

	nop	word ptr [rax + rax]
.label_340:
	mov	r12b, 1
	test	ebx, ebx
	je	.label_355
.label_370:
	test	r14d, r14d
	je	.label_368
	xor	r12d, r12d
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_334
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
	mov	edi, 4
	mov	rsi, r13
	call	quotearg_style
	mov	rcx, rax
	xor	edi, edi
	xor	eax, eax
	mov	esi, r14d
	jmp	.label_345
.label_368:
	movzx	ebx, byte ptr [rip + no_create]
	call	__errno_location
	mov	ebp, dword ptr [rax]
	cmp	bl, 1
	jne	.label_363
	mov	r12b, 1
	cmp	ebp, 2
	je	.label_355
.label_363:
	xor	r12d, r12d
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_362
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
	mov	edi, 4
	mov	rsi, r13
	call	quotearg_style
	mov	rcx, rax
	xor	edi, edi
	xor	eax, eax
	mov	esi, ebp
.label_345:
	mov	rdx, rbx
.label_376:
	call	error
.label_355:
	and	r15b, r12b
	mov	eax, dword ptr [rip + optind]
	inc	eax
	mov	dword ptr [rip + optind],  eax
	cmp	eax, dword ptr [rsp + 0xc]
	jl	.label_366
.label_359:
	movzx	eax, r15b
	xor	eax, 1
	add	rsp, 0xc8
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_333:
	mov	edi, OFFSET FLAT:label_351
	mov	esi, OFFSET FLAT:label_352
	mov	edx, 0x99
	mov	ecx, OFFSET FLAT:label_353
	call	__assert_fail
.label_371:
	cmp	eax, 0xffffff7d
	je	.label_387
	cmp	eax, 0xffffff7e
	jne	.label_335
	xor	edi, edi
	call	usage
.label_387:
	mov	rdi, qword ptr [rip + stdout]
	mov	rcx, qword ptr [rip + Version]
	mov	esi, OFFSET FLAT:label_390
	mov	edx, OFFSET FLAT:label_391
	mov	r8d, OFFSET FLAT:label_392
	mov	r9d, OFFSET FLAT:label_393
	mov	eax, 0
	push	0
	push	OFFSET FLAT:label_394
	push	OFFSET FLAT:label_395
	push	OFFSET FLAT:label_396
	call	version_etc
	add	rsp, 0x20
	xor	edi, edi
	call	exit
.label_335:
	mov	edi, 1
	call	usage
.label_365:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_349
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
	mov	rdi, qword ptr [rip + optarg]
	jmp	.label_356
.label_357:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_358
.label_386:
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
.label_344:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_349
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
	mov	rdi, r14
.label_356:
	call	quote
	mov	rcx, rax
	mov	edi, 1
	xor	esi, esi
	xor	eax, eax
	mov	rdx, rbx
	call	error
.label_388:
	call	__errno_location
	mov	ebx, dword ptr [rax]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_381
	mov	edx, 5
	call	dcgettext
	mov	rbp, rax
	mov	rsi, qword ptr [rip + ref_file]
	mov	edi, 4
	call	quotearg_style
	mov	rcx, rax
	mov	edi, 1
	xor	eax, eax
	mov	esi, ebx
	mov	rdx, rbp
	call	error
	nop	
	.section	.text
	.align	32
	#Procedure 0x4053f0

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
	jns	.label_400
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
.label_400:
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
	#Procedure 0x405458
	.globl sub_405458
	.type sub_405458, @function
sub_405458:

	nop	dword ptr [rax + rax]
.label_401:
	call	abort
	.section	.text
	.align	32
	#Procedure 0x405465
	.globl sub_405465
	.type sub_405465, @function
sub_405465:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40546d
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
	je	.label_401
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
.label_402:
	call	abort
	.section	.text
	.align	32
	#Procedure 0x4054d5
	.globl sub_4054d5
	.type sub_4054d5, @function
sub_4054d5:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x4054d9

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
	je	.label_402
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
	#Procedure 0x405540

	.globl version_etc_va
	.type version_etc_va, @function
version_etc_va:
	movsxd	r10, dword ptr [r8]
	cmp	r10, 0x28
	ja	.label_403
	mov	r9, r10
	add	r9, qword ptr [r8 + 0x10]
	lea	r10d, [r10 + 8]
	mov	dword ptr [r8], r10d
	jmp	.label_405
.label_403:
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
.label_405:
	sub	rsp, 0x58
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp], rax
	xor	r9d, r9d
	test	rax, rax
	je	.label_406
	cmp	r10d, 0x29
	jae	.label_415
	movsxd	r9, r10d
	add	r9, qword ptr [r8 + 0x10]
	add	r10d, 8
	mov	dword ptr [r8], r10d
	jmp	.label_404
.label_415:
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
.label_404:
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp + 8], rax
	mov	r9d, 1
	test	rax, rax
	je	.label_406
	cmp	r10d, 0x29
	jae	.label_413
	movsxd	r9, r10d
	add	r9, qword ptr [r8 + 0x10]
	add	r10d, 8
	mov	dword ptr [r8], r10d
	jmp	.label_414
.label_413:
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
.label_414:
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp + 0x10], rax
	mov	r9d, 2
	test	rax, rax
	je	.label_406
	cmp	r10d, 0x29
	jae	.label_411
	movsxd	r9, r10d
	add	r9, qword ptr [r8 + 0x10]
	add	r10d, 8
	mov	dword ptr [r8], r10d
	jmp	.label_412
.label_411:
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
.label_412:
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp + 0x18], rax
	mov	r9d, 3
	test	rax, rax
	je	.label_406
	cmp	r10d, 0x29
	jae	.label_409
	movsxd	r9, r10d
	add	r9, qword ptr [r8 + 0x10]
	add	r10d, 8
	mov	dword ptr [r8], r10d
	jmp	.label_410
.label_409:
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
.label_410:
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp + 0x20], rax
	mov	r9d, 4
	test	rax, rax
	je	.label_406
	cmp	r10d, 0x29
	jae	.label_407
	movsxd	r9, r10d
	add	r9, qword ptr [r8 + 0x10]
	add	r10d, 8
	mov	dword ptr [r8], r10d
	jmp	.label_408
.label_407:
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
.label_408:
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp + 0x28], rax
	mov	r9d, 5
	test	rax, rax
	je	.label_406
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp + 0x30], rax
	mov	r9d, 6
	test	rax, rax
	je	.label_406
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp + 0x38], rax
	mov	r9d, 7
	test	rax, rax
	je	.label_406
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp + 0x40], rax
	mov	r9d, 8
	test	rax, rax
	je	.label_406
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp + 0x48], rax
	cmp	rax, 1
	mov	r9d, 9
	sbb	r9, -1
.label_406:
	lea	r8, [rsp]
	call	version_etc_arn
	add	rsp, 0x58
	ret	
	.section	.text
	.align	32
	#Procedure 0x405722
	.globl sub_405722
	.type sub_405722, @function
sub_405722:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x405730
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
	#Procedure 0x40573f
	.globl sub_40573f
	.type sub_40573f, @function
sub_40573f:

	nop	
	.section	.text
	.align	32
	#Procedure 0x405740

	.globl fd_reopen
	.type fd_reopen, @function
fd_reopen:
	push	rbp
	push	r15
	push	r14
	push	rbx
	push	rax
	mov	ebp, edi
	xor	eax, eax
	mov	rdi, rsi
	mov	esi, edx
	mov	edx, ecx
	call	open
	mov	ebx, eax
	cmp	ebx, ebp
	je	.label_417
	test	ebx, ebx
	js	.label_417
	mov	edi, ebx
	mov	esi, ebp
	call	dup2
	mov	r14d, eax
	call	__errno_location
	mov	rbp, rax
	mov	r15d, dword ptr [rbp]
	mov	edi, ebx
	call	close
	mov	dword ptr [rbp], r15d
	mov	eax, r14d
	jmp	.label_416
.label_417:
	mov	eax, ebx
.label_416:
	add	rsp, 8
	pop	rbx
	pop	r14
	pop	r15
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x405796
	.globl sub_405796
	.type sub_405796, @function
sub_405796:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4057a0

	.globl rpl_fflush
	.type rpl_fflush, @function
rpl_fflush:
	push	rbx
	mov	rbx, rdi
	test	rbx, rbx
	je	.label_418
	mov	rdi, rbx
	call	__freading
	test	eax, eax
	je	.label_418
	test	byte ptr [rbx + 1], 1
	je	.label_418
	xor	esi, esi
	mov	edx, 1
	mov	rdi, rbx
	call	rpl_fseeko
.label_418:
	mov	rdi, rbx
	pop	rbx
	jmp	fflush
	.section	.text
	.align	32
	#Procedure 0x4057d3
	.globl sub_4057d3
	.type sub_4057d3, @function
sub_4057d3:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4057e0

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
	mov	r14b, 1
	test	rbx, rbx
	je	.label_420
	cmp	r15, rbx
	ja	.label_419
	lea	rax, [r15 + 0x38]
	cmp	rbx, rax
	jb	.label_420
.label_419:
	mov	ebp, OFFSET FLAT:label_60
	cmp	byte ptr [rbx], 0
	je	.label_422
	lea	rbp, [r12 + 9]
	jmp	.label_427
.label_431:
	mov	rax, qword ptr [r12]
	lea	rbp, [rax + 9]
	test	rax, rax
	cmove	rbp, rcx
	cmovne	r12, rax
.label_427:
	lea	r13, [r12 + 9]
.label_429:
	mov	rdi, rbp
	mov	rsi, rbx
	call	strcmp
	test	eax, eax
	je	.label_422
	cmp	byte ptr [rbp], 0
	jne	.label_424
	cmp	rbp, r13
	jne	.label_425
	cmp	byte ptr [r12 + 8], 0
	je	.label_426
.label_424:
	mov	rdi, rbp
	call	strlen
	lea	rcx, [rbp + rax + 1]
	cmp	byte ptr [rbp + rax + 1], 0
	mov	rbp, rcx
	jne	.label_429
	jmp	.label_431
.label_426:
	mov	rbp, r13
.label_425:
	mov	rdi, rbx
	call	strlen
	lea	rdx, [rax + 1]
	mov	rcx, rbp
	sub	rcx, r13
	mov	rsi, rcx
	not	rsi
	cmp	rdx, rsi
	jbe	.label_421
	call	__errno_location
	mov	dword ptr [rax], 0xc
.label_423:
	xor	r14d, r14d
	jmp	.label_420
.label_421:
	add	rcx, rdx
	cmp	rcx, 0x76
	ja	.label_430
	mov	rdi, rbp
	mov	rsi, rbx
	mov	rbx, rdx
	call	memcpy
	mov	byte ptr [rbp + rbx], 0
	jmp	.label_422
.label_430:
	add	rax, 0x12
	and	rax, 0xfffffffffffffff8
	mov	r13, rdx
	cmp	rdx, 0x77
	mov	edi, 0x80
	cmovae	rdi, rax
	call	malloc
	test	rax, rax
	je	.label_428
	mov	qword ptr [rax], 0
	mov	word ptr [rax + 8], 1
	mov	rbp, rax
	add	rbp, 9
	mov	rdi, rbp
	mov	rsi, rbx
	mov	rdx, r13
	mov	rbx, rax
	call	memcpy
	mov	byte ptr [rbx + r13 + 9], 0
	mov	qword ptr [r12], rbx
	mov	byte ptr [rbx + 8], 0
.label_422:
	mov	qword ptr [r15 + 0x30], rbp
.label_420:
	mov	eax, r14d
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_428:
	mov	qword ptr [r12], 0
	jmp	.label_423
	.section	.text
	.align	32
	#Procedure 0x405945
	.globl sub_405945
	.type sub_405945, @function
sub_405945:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x405950
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
	#Procedure 0x405963
	.globl sub_405963
	.type sub_405963, @function
sub_405963:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x405970

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
	je	.label_435
	mov	rdi, rbx
	call	set_tz
	mov	r14, rax
	test	r14, r14
	je	.label_434
	mov	rdi, rbp
	mov	rsi, r15
	call	localtime_r
	mov	bpl, 1
	test	rax, rax
	je	.label_432
	mov	rdi, rbx
	mov	rsi, r15
	call	save_abbr
	mov	ebp, eax
	xor	bpl, 1
.label_432:
	mov	rdi, r14
	call	revert_tz
	xor	ecx, ecx
	xor	al, 1
	cmovne	r15, rcx
	test	bpl, bpl
	cmovne	r15, rcx
	mov	rax, r15
	jmp	.label_433
.label_434:
	xor	eax, eax
.label_433:
	add	rsp, 8
	pop	rbx
	pop	r14
	pop	r15
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x4059e2
	.globl sub_4059e2
	.type sub_4059e2, @function
sub_4059e2:

	nop	word ptr [rax + rax]
.label_435:
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
	#Procedure 0x405a00

	.globl posixtime
	.type posixtime, @function
posixtime:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x78
	mov	r13d, edx
	mov	rbx, rsi
	mov	qword ptr [rsp + 0x68], rdi
	mov	rdi, rbx
	call	strlen
	mov	rbp, rax
	xor	r12d, r12d
	test	r13b, 4
	je	.label_441
	mov	esi, 0x2e
	mov	rdi, rbx
	call	strchr
	xor	r12d, r12d
	test	rax, rax
	je	.label_441
	mov	rcx, rax
	sub	rcx, rbx
	sub	rbp, rcx
	cmp	rbp, 3
	mov	r12, rax
	mov	rbp, rcx
	jne	.label_438
.label_441:
	lea	rcx, [rbp - 8]
	mov	eax, ebp
	and	eax, 1
	cmp	rcx, 4
	ja	.label_438
	test	rax, rax
	jne	.label_438
	xor	r14d, r14d
	test	rbp, rbp
	je	.label_443
	xor	eax, eax
	nop	word ptr cs:[rax + rax]
.label_440:
	movsx	ecx, byte ptr [rbx + rax]
	add	ecx, -0x30
	cmp	ecx, 0xa
	jae	.label_438
	inc	rax
	cmp	rax, rbp
	jb	.label_440
	xor	r14d, r14d
	shr	rbp, 1
	je	.label_443
	mov	ecx, ebp
	and	ecx, 1
	xor	eax, eax
	cmp	rbp, 1
	je	.label_453
	mov	rdx, rbp
	sub	rdx, rcx
	xor	eax, eax
	nop	word ptr cs:[rax + rax]
.label_448:
	movsx	esi, byte ptr [rbx + rax*2]
	lea	esi, [rsi + rsi*4]
	movsx	edi, byte ptr [rbx + rax*2 + 1]
	lea	esi, [rdi + rsi*2 - 0x210]
	mov	dword ptr [rsp + rax*4 + 0x10], esi
	movsx	esi, byte ptr [rbx + rax*2 + 2]
	lea	esi, [rsi + rsi*4]
	movsx	edi, byte ptr [rbx + rax*2 + 3]
	lea	esi, [rdi + rsi*2 - 0x210]
	mov	dword ptr [rsp + rax*4 + 0x14], esi
	add	rax, 2
	cmp	rdx, rax
	jne	.label_448
.label_453:
	test	rcx, rcx
	je	.label_437
	movsx	ecx, byte ptr [rbx + rax*2]
	lea	ecx, [rcx + rcx*4]
	movsx	edx, byte ptr [rbx + rax*2 + 1]
	lea	ecx, [rdx + rcx*2 - 0x210]
	mov	dword ptr [rsp + rax*4 + 0x10], ecx
.label_437:
	mov	r14, rbp
.label_443:
	mov	r15d, r13d
	and	r15d, 1
	je	.label_442
	lea	rax, [rsp + 0x10]
	jmp	.label_445
.label_442:
	movabs	rax, 0x7fffffffffffffff
	and	rax, r14
	cmp	rax, 4
	je	.label_444
	cmp	rax, 6
	je	.label_447
	cmp	rax, 5
	jne	.label_449
	mov	r10d, dword ptr [rsp + 0x10]
	cmp	r10d, 0x44
	jg	.label_439
	test	r13b, 8
	jne	.label_438
	add	r10d, 0x64
	jmp	.label_439
.label_444:
	lea	rbp, [rsp + 0x50]
	mov	rdi, rbp
	call	time
	mov	rdi, rbp
	call	localtime
	test	rax, rax
	je	.label_438
	mov	r10d, dword ptr [rax + 0x14]
	jmp	.label_439
.label_447:
	test	r13b, 2
	je	.label_438
	mov	rax, qword ptr [rsp + 0x10]
	imul	ecx, eax, 0x64
	shr	rax, 0x20
	lea	r10d, [rax + rcx - 0x76c]
.label_439:
	add	r14, -4
	lea	rax, [rsp + r14*4 + 0x10]
	mov	r14d, 4
.label_445:
	mov	edi, dword ptr [rax]
	mov	r9d, dword ptr [rax + 4]
	mov	r8d, dword ptr [rax + 8]
	mov	esi, dword ptr [rax + 0xc]
	test	r15d, r15d
	je	.label_436
	movabs	rcx, 0x7fffffffffffffff
	and	r14, rcx
	cmp	r14, 4
	je	.label_450
	cmp	r14, 6
	je	.label_452
	cmp	r14, 5
	jne	.label_449
	mov	r10d, dword ptr [rax + 0x10]
	cmp	r10d, 0x44
	jg	.label_436
	test	r13b, 8
	jne	.label_438
	add	r10d, 0x64
	jmp	.label_436
.label_450:
	mov	dword ptr [rsp + 8], r9d
	mov	r15d, r8d
	mov	r14d, edi
	mov	ebp, esi
	lea	rdi, [rsp + 0x50]
	call	time
	lea	rdi, [rsp + 0x50]
	call	localtime
	test	rax, rax
	je	.label_438
	mov	r10d, dword ptr [rax + 0x14]
	mov	esi, ebp
	mov	edi, r14d
	mov	r8d, r15d
	mov	r9d, dword ptr [rsp + 8]
	jmp	.label_436
.label_452:
	test	r13b, 2
	je	.label_438
	imul	ecx, dword ptr [rax + 0x10], 0x64
	mov	eax, dword ptr [rax + 0x14]
	lea	r10d, [rax + rcx - 0x76c]
.label_436:
	xor	eax, eax
	test	r12, r12
	je	.label_446
	movsx	eax, byte ptr [r12 + 1]
	add	eax, -0x30
	cmp	eax, 9
	ja	.label_438
	movsx	ecx, byte ptr [r12 + 2]
	lea	edx, [rcx - 0x30]
	cmp	edx, 9
	ja	.label_438
	lea	eax, [rax + rax*4]
	lea	eax, [rcx + rax*2 - 0x30]
.label_446:
	mov	dword ptr [rsp + 0xc], r13d
	dec	edi
	mov	dword ptr [rsp + 8], eax
	mov	dword ptr [rsp + 0x10], eax
	mov	dword ptr [rsp + 0x14], esi
	mov	dword ptr [rsp + 0x18], r8d
	mov	dword ptr [rsp + 0x1c], r9d
	mov	dword ptr [rsp + 0x20], edi
	mov	dword ptr [rsp + 0x24], r10d
	mov	dword ptr [rsp + 0x28], 0xffffffff
	mov	dword ptr [rsp + 0x30], 0xffffffff
	mov	r15d, edi
	lea	rdi, [rsp + 0x10]
	mov	ebp, esi
	mov	r12d, r8d
	mov	r14d, r9d
	mov	r13d, r10d
	call	mktime
	mov	rcx, rax
	cmp	dword ptr [rsp + 0x28], 0
	js	.label_438
	xor	r13d, dword ptr [rsp + 0x24]
	xor	r15d, dword ptr [rsp + 0x20]
	xor	r14d, dword ptr [rsp + 0x1c]
	or	r14d, r13d
	xor	r12d, dword ptr [rsp + 0x18]
	or	r12d, r14d
	xor	ebp, dword ptr [rsp + 0x14]
	or	ebp, r12d
	or	ebp, r15d
	mov	eax, dword ptr [rsp + 0x10]
	mov	edx, dword ptr [rsp + 8]
	xor	eax, edx
	or	eax, ebp
	je	.label_454
	cmp	edx, 0x3c
	jne	.label_438
	lea	rbp, [rsp + 0x50]
	mov	edx, 0x10
	mov	rdi, rbp
	mov	rsi, rbx
	mov	rbx, rcx
	call	__stpcpy_chk
	mov	byte ptr [rax], 0
	mov	word ptr [rax - 2], 0x3935
	lea	rdi, [rsp + 0x70]
	mov	rsi, rbp
	mov	edx, dword ptr [rsp + 0xc]
	call	posixtime
	mov	rcx, rbx
	test	al, al
	je	.label_438
.label_454:
	mov	rax, qword ptr [rsp + 0x68]
	mov	qword ptr [rax], rcx
	mov	al, 1
	jmp	.label_451
.label_438:
	xor	eax, eax
.label_451:
	add	rsp, 0x78
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_449:
	call	abort
	.section	.text
	.align	32
	#Procedure 0x405d8e
	.globl sub_405d8e
	.type sub_405d8e, @function
sub_405d8e:

	nop	
.label_456:
	call	xalloc_die
	.section	.text
	.align	32
	#Procedure 0x405d95
	.globl sub_405d95
	.type sub_405d95, @function
sub_405d95:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x405d9f
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
	je	.label_455
	test	r14, r14
	je	.label_456
.label_455:
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
	.align	32
	#Procedure 0x405dd0
	.globl version_etc_ar
	.type version_etc_ar, @function
version_etc_ar:

	mov	r9, -1
	nop	word ptr [rax + rax]
.label_457:
	cmp	qword ptr [r8 + r9*8 + 8], 0
	lea	r9, [r9 + 1]
	jne	.label_457
	jmp	version_etc_arn
	.section	.text
	.align	32
	#Procedure 0x405df1
	.globl sub_405df1
	.type sub_405df1, @function
sub_405df1:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x405e00

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
	je	.label_464
	mov	qword ptr [rsp + 8], -1
	xor	eax, eax
	mov	qword ptr [rsp + 0x10], rax
	mov	qword ptr [rsp + 0x18], r14
	xor	ebp, ebp
	nop	dword ptr [rax + rax]
.label_458:
	mov	rdi, r15
	mov	rsi, r12
	mov	rdx, rbx
	call	strncmp
	test	eax, eax
	jne	.label_463
	mov	rdi, r15
	call	strlen
	cmp	rax, rbx
	je	.label_460
	cmp	qword ptr [rsp + 8], -1
	je	.label_462
	mov	rax, qword ptr [rsp + 0x18]
	test	rax, rax
	je	.label_461
	mov	rdi, qword ptr [rsp + 8]
	imul	rdi, r13
	add	rdi, rax
	mov	rsi, r14
	mov	rdx, r13
	call	memcmp
	test	eax, eax
	je	.label_463
.label_461:
	mov	al, 1
	mov	qword ptr [rsp + 0x10], rax
	jmp	.label_463
.label_462:
	mov	qword ptr [rsp + 8], rbp
	nop	word ptr [rax + rax]
.label_463:
	mov	rax, qword ptr [rsp + 0x20]
	mov	r15, qword ptr [rax + rbp*8 + 8]
	inc	rbp
	add	r14, r13
	test	r15, r15
	jne	.label_458
	jmp	.label_459
.label_464:
	mov	qword ptr [rsp + 8], -1
	xor	eax, eax
	mov	qword ptr [rsp + 0x10], rax
.label_459:
	mov	rax, qword ptr [rsp + 0x10]
	test	al, 1
	mov	rbp, -2
	cmove	rbp, qword ptr [rsp + 8]
.label_460:
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
	#Procedure 0x405efd
	.globl sub_405efd
	.type sub_405efd, @function
sub_405efd:

	nop	dword ptr [rax]
.label_467:
	mov	rsi, rbx
	call	realloc
	test	rbx, rbx
	je	.label_465
	test	rax, rax
	je	.label_466
.label_465:
	pop	rbx
	ret	
.label_466:
	call	xalloc_die
	.section	.text
	.align	32
	#Procedure 0x405f19
	.globl sub_405f19
	.type sub_405f19, @function
sub_405f19:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x405f21
	.globl xnrealloc
	.type xnrealloc, @function
xnrealloc:

	push	rbx
	mov	rbx, rdx
	movabs	rax, 0x7fffffffffffffff
	xor	edx, edx
	div	rbx
	cmp	rax, rsi
	jb	.label_466
	imul	rbx, rsi
	test	rdi, rdi
	je	.label_467
	test	rbx, rbx
	jne	.label_467
	call	free
	xor	eax, eax
	pop	rbx
	ret	
	.section	.text
	.align	32
	#Procedure 0x405f50

	.globl quotearg_colon
	.type quotearg_colon, @function
quotearg_colon:
	sub	rsp, 0x38
	mov	rax, rdi
	mov	rcx, qword ptr [rip + label_329]
	mov	qword ptr [rsp + 0x30], rcx
	movups	xmm0, xmmword ptr [rip + label_330]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0, xmmword ptr [rip + label_331]
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
	#Procedure 0x405fa5
	.globl sub_405fa5
	.type sub_405fa5, @function
sub_405fa5:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x405fb0

	.globl usage
	.type usage, @function
usage:
	push	rbp
	push	rbx
	push	rax
	mov	ebp, edi
	test	ebp, ebp
	jne	.label_484
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_486
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	mov	rdx, qword ptr [rip + program_name]
	mov	edi, 1
	xor	eax, eax
	mov	rsi, rcx
	call	__printf_chk
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_482
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_470
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_472
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_473
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_474
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_475
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_481
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_477
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_478
	mov	edx, 5
	call	dcgettext
	mov	rsi, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:label_391
	mov	ecx, OFFSET FLAT:label_476
	xor	eax, eax
	call	__printf_chk
	mov	edi, 5
	xor	esi, esi
	call	setlocale
	test	rax, rax
	je	.label_483
	mov	esi, OFFSET FLAT:label_480
	mov	edx, 3
	mov	rdi, rax
	call	strncmp
	test	eax, eax
	je	.label_483
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_469
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	call	fputs_unlocked
.label_483:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_479
	mov	edx, 5
	call	dcgettext
	mov	rsi, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:label_476
	mov	ecx, OFFSET FLAT:label_390
	xor	eax, eax
	call	__printf_chk
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_468
	mov	edx, 5
	call	dcgettext
	mov	rsi, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:label_390
	mov	ecx, OFFSET FLAT:label_471
	xor	eax, eax
	call	__printf_chk
	mov	edi, ebp
	call	exit
.label_484:
	mov	rbx, qword ptr [rip + stderr]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_485
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
	#Procedure 0x4061eb
	.globl sub_4061eb
	.type sub_4061eb, @function
sub_4061eb:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4061f0

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
	je	.label_487
	cmp	r15, -2
	jb	.label_487
	xor	edi, edi
	call	hard_locale
	test	al, al
	jne	.label_487
	movzx	eax, byte ptr [r14]
	mov	dword ptr [rbx], eax
	mov	r15d, 1
.label_487:
	mov	rax, r15
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	ret	
	.section	.text
	.align	32
	#Procedure 0x406246
	.globl sub_406246
	.type sub_406246, @function
sub_406246:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x406250

	.globl __strftime_internal
	.type __strftime_internal, @function
__strftime_internal:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x4b8
	mov	dword ptr [rsp + 0x88], r9d
	mov	dword ptr [rsp + 0x8c], r8d
	mov	r11, rcx
	mov	rbp, rdx
	mov	qword ptr [rsp + 0x48], rsi
	mov	r10, rdi
	mov	eax, dword ptr [r11 + 8]
	mov	rcx, qword ptr [r11 + 0x30]
	test	rcx, rcx
	mov	edx, OFFSET FLAT:label_60
	cmovne	rdx, rcx
	lea	ecx, [rax - 0xc]
	test	eax, eax
	mov	esi, 0xc
	cmovne	esi, eax
	cmp	eax, 0xc
	cmovg	esi, ecx
	mov	dword ptr [rsp + 0x7c], esi
	mov	al, byte ptr [rbp]
	xor	ecx, ecx
	mov	qword ptr [rsp + 0x70], rcx
	test	al, al
	je	.label_609
	mov	edi, dword ptr [rsp + 0x4f0]
	mov	qword ptr [rsp + 0x68], rdx
	lea	rcx, [rdx - 1]
	mov	qword ptr [rsp + 0x80], rcx
	xor	r8d, r8d
	mov	qword ptr [rsp + 0x38], r11
	jmp	.label_488
.label_609:
	xor	r8d, r8d
	jmp	.label_632
.label_591:
	mov	rdx, r10
	mov	rsi, qword ptr [rsp + 0x80]
	mov	r9, r15
.label_622:
	movzx	ebx, byte ptr [rsi + rdx]
	mov	rdi, qword ptr [rax]
	movzx	ebx, byte ptr [rdi + rbx*4]
	mov	byte ptr [r9 + rdx - 1], bl
	movzx	ebx, byte ptr [rsi + rdx - 1]
	mov	rdi, qword ptr [rax]
	movzx	ebx, byte ptr [rdi + rbx*4]
	mov	byte ptr [r9 + rdx - 2], bl
	movzx	ebx, byte ptr [rsi + rdx - 2]
	mov	rdi, qword ptr [rax]
	movzx	ebx, byte ptr [rdi + rbx*4]
	mov	byte ptr [r9 + rdx - 3], bl
	movzx	ebx, byte ptr [rsi + rdx - 3]
	mov	rdi, qword ptr [rax]
	movzx	ebx, byte ptr [rdi + rbx*4]
	mov	byte ptr [r9 + rdx - 4], bl
	lea	rdx, [rdx - 4]
	cmp	rcx, rdx
	jne	.label_622
.label_597:
	test	rcx, rcx
	mov	r8, qword ptr [rsp + 0x18]
	je	.label_560
	lea	rsi, [r9 + rdx - 1]
	add	rdx, qword ptr [rsp + 0x80]
	neg	rcx
.label_647:
	movzx	edi, byte ptr [rdx]
	mov	rbx, qword ptr [rax]
	movzx	ebx, byte ptr [rbx + rdi*4]
	mov	byte ptr [rsi], bl
	dec	rsi
	dec	rdx
	inc	rcx
	jne	.label_647
.label_560:
	add	r9, r10
	mov	rcx, r9
	jmp	.label_610
.label_636:
	mov	esi, 0x20
.label_606:
	mov	rdx, r14
	mov	r12, rdi
	call	memset
	mov	rdi, r12
	mov	r8, qword ptr [rsp + 0x18]
	add	rdi, r14
	mov	cl, byte ptr [rbp]
	mov	r14d, r15d
.label_633:
	mov	byte ptr [rdi], cl
	inc	rdi
	mov	rdx, rdi
.label_631:
	add	r8, rbx
	mov	r10, rdx
	mov	r11, qword ptr [rsp + 0x38]
	jmp	.label_553
.label_655:
	mov	edi, 3
	jmp	.label_662
	.section	.text
	.align	32
	#Procedure 0x4063be
	.globl sub_4063be
	.type sub_4063be, @function
sub_4063be:

	nop	
.label_488:
	cmp	al, 0x25
	jne	.label_666
	xor	eax, eax
	mov	ecx, dword ptr [rsp + 0x8c]
	mov	r12b, cl
	xor	r9d, r9d
.label_1352:
	mov	ebx, eax
	mov	al, r12b
.label_494:
	mov	r12b, al
	inc	rbp
	jmp	.label_671
	.section	.text
	.align	32
	#Procedure 0x4063e4
	.globl sub_4063e4
	.type sub_4063e4, @function
sub_4063e4:

	nop	word ptr cs:[rax + rax]
.label_491:
	inc	rbp
	mov	r9d, edx
.label_671:
	mov	cl, byte ptr [rbp]
	movsx	edx, cl
	mov	al, 1
	lea	esi, [rdx - 0x23]
	cmp	esi, 0xd
	ja	.label_676
	jmp	qword ptr [(rsi * 8) + label_490]
	.section	.text
	.align	32
	#Procedure 0x40640d
	.globl sub_40640d
	.type sub_40640d, @function
sub_40640d:

	nop	dword ptr [rax]
.label_676:
	cmp	edx, 0x5f
	je	.label_491
	cmp	edx, 0x5e
	je	.label_494
.label_1353:
	add	edx, -0x30
	cmp	edx, 9
	ja	.label_495
	xor	eax, eax
	nop	word ptr cs:[rax + rax]
.label_506:
	mov	edi, 0x7fffffff
	cmp	eax, 0xccccccc
	jg	.label_498
	movsx	ecx, cl
	cmp	eax, 0xccccccc
	jne	.label_502
	lea	edx, [rcx - 0x30]
	cmp	edx, 7
	jg	.label_498
.label_502:
	lea	eax, [rax + rax*4]
	lea	edi, [rcx + rax*2 - 0x30]
.label_498:
	movsx	ecx, byte ptr [rbp + 1]
	inc	rbp
	mov	eax, ecx
	add	eax, -0x30
	cmp	eax, 0xa
	mov	eax, edi
	jb	.label_506
.label_495:
	mov	qword ptr [rsp + 0x18], r8
	movsx	r8d, cl
	cmp	r8d, 0x4f
	je	.label_511
	cmp	r8d, 0x45
	jne	.label_516
.label_511:
	mov	cl, byte ptr [rbp + 1]
	inc	rbp
	jmp	.label_520
	.section	.text
	.align	32
	#Procedure 0x40648c
	.globl sub_40648c
	.type sub_40648c, @function
sub_40648c:

	nop	dword ptr [rax]
.label_666:
	test	edi, edi
	mov	ecx, edi
	mov	edx, 0
	cmovs	ecx, edx
	movsxd	rbx, ecx
	cmp	ebx, 1
	mov	edx, 1
	cmovbe	rbx, rdx
	mov	rdx, qword ptr [rsp + 0x48]
	sub	rdx, r8
	mov	r15d, 1
	cmp	rbx, rdx
	jae	.label_525
	test	r10, r10
	mov	edx, 0
	je	.label_536
	cmp	ecx, 2
	jb	.label_537
	mov	dword ptr [rsp + 0x2c], r14d
	movsxd	r14, edi
	lea	rdx, [r14 - 1]
	mov	esi, 0x20
	mov	rdi, r10
	mov	r15, r8
	mov	r12, r10
	call	memset
	mov	r11, qword ptr [rsp + 0x38]
	mov	r10, r12
	mov	r8, r15
	lea	r10, [r10 + r14 - 1]
	mov	r14d, dword ptr [rsp + 0x2c]
	mov	al, byte ptr [rbp]
.label_537:
	mov	byte ptr [r10], al
	inc	r10
	mov	rdx, r10
.label_536:
	add	r8, rbx
	xor	r15d, r15d
	mov	r10, rdx
.label_525:
	test	r15d, r15d
	mov	eax, 4
	cmove	r15d, eax
.label_663:
	or	r15d, 4
	cmp	r15d, 4
	je	.label_553
	jmp	.label_569
.label_516:
	xor	r8d, r8d
.label_520:
	mov	qword ptr [rsp + 0x10], r10
	mov	qword ptr [rsp + 8], rdi
	movsx	esi, cl
	xor	eax, eax
	mov	qword ptr [rsp + 0x20], rax
	cmp	esi, 0x7a
	ja	.label_492
	mov	r15d, OFFSET FLAT:label_562
	mov	dl, 0x72
	mov	r10d, 0xffffffff
	xor	eax, eax
	xor	edi, edi
	jmp	qword ptr [(rsi * 8) + label_563]
.label_1320:
	cmp	r8d, 0x45
	je	.label_492
	mov	dword ptr [rsp + 0x30], r9d
	mov	qword ptr [rsp + 0x40], r12
	mov	eax, dword ptr [r11 + 0x14]
	mov	r9d, dword ptr [r11 + 0x18]
	mov	edx, eax
	sar	edx, 0x1f
	and	edx, 0x190
	lea	r10d, [rax + rdx - 0x64]
	mov	r11d, dword ptr [r11 + 0x1c]
	lea	edx, [r11 + 0x17e]
	sub	edx, r9d
	movsxd	rbx, edx
	imul	rdx, rbx, -0x6db6db6d
	shr	rdx, 0x20
	add	edx, ebx
	mov	edi, edx
	shr	edi, 0x1f
	sar	edx, 2
	add	edx, edi
	lea	edi, [rdx*8]
	sub	edi, edx
	sub	ebx, edi
	lea	r12d, [r11 + 3]
	sub	r12d, ebx
	js	.label_566
	mov	ebx, 0x16d
	test	r10b, 3
	jne	.label_639
	movsxd	rdi, r10d
	imul	rdi, rdi, 0x51eb851f
	mov	rbx, rdi
	sar	rbx, 0x25
	mov	r14, rdi
	shr	r14, 0x3f
	add	ebx, r14d
	imul	r15d, ebx, 0x64
	sar	rdi, 0x27
	add	edi, r14d
	imul	ebx, edi, 0x190
	xor	edi, edi
	cmp	r10d, ebx
	sete	dil
	add	edi, 0x16d
	cmp	r10d, r15d
	mov	ebx, 0x16e
	cmove	ebx, edi
.label_639:
	sub	r11d, ebx
	lea	edi, [r11 + 0x17e]
	sub	edi, r9d
	movsxd	rdi, edi
	imul	rbx, rdi, -0x6db6db6d
	shr	rbx, 0x20
	add	ebx, edi
	mov	edx, ebx
	shr	edx, 0x1f
	sar	ebx, 2
	add	ebx, edx
	lea	edx, [rbx*8]
	sub	edx, ebx
	sub	edi, edx
	add	r11d, 3
	sub	r11d, edi
	cmovns	r12d, r11d
	shr	r11d, 0x1f
	xor	r11d, 1
	jmp	.label_602
.label_1334:
	test	bl, bl
	je	.label_613
	mov	r12b, 1
.label_613:
	cmp	r8d, 0x45
	jne	.label_615
	xor	eax, eax
	mov	qword ptr [rsp + 0x20], rax
	jmp	.label_492
.label_1312:
	dec	rbp
	jmp	.label_492
.label_1313:
	test	r8d, r8d
	jne	.label_492
	mov	r15d, r14d
	xor	eax, eax
	mov	rsi, qword ptr [rsp + 8]
	test	esi, esi
	cmovns	eax, esi
	movsxd	rdx, eax
	cmp	edx, 1
	mov	ebx, 1
	cmova	rbx, rdx
	mov	rdx, qword ptr [rsp + 0x48]
	mov	r8, qword ptr [rsp + 0x18]
	sub	rdx, r8
	cmp	rbx, rdx
	mov	rdi, qword ptr [rsp + 0x10]
	jae	.label_489
	xor	edx, edx
	test	rdi, rdi
	mov	r14d, r15d
	je	.label_631
	cmp	eax, 2
	jb	.label_633
	movsxd	r14, esi
	dec	r14
	cmp	r9d, 0x30
	je	.label_634
	cmp	r9d, 0x2b
	jne	.label_636
.label_634:
	mov	esi, 0x30
	jmp	.label_606
.label_1314:
	mov	edx, 1
	jmp	.label_638
	.section	.text
	.align	32
	#Procedure 0x40671a
	.globl sub_40671a
	.type sub_40671a, @function
sub_40671a:

	nop	word ptr [rax + rax]
.label_640:
	inc	rdx
.label_638:
	movzx	ebx, byte ptr [rbp + rdx]
	cmp	bl, 0x3a
	je	.label_640
	cmp	bl, 0x7a
	jne	.label_492
	add	rbp, rdx
	mov	qword ptr [rsp + 0x20], rdx
.label_1351:
	cmp	dword ptr [r11 + 0x20], 0
	js	.label_643
	mov	dword ptr [rsp + 0x30], r9d
	mov	rdx, r11
	mov	r11, qword ptr [rsp + 0x10]
	mov	r9d, dword ptr [rdx + 0x28]
	mov	sil, 1
	test	r9d, r9d
	mov	r10, qword ptr [rsp + 0x20]
	js	.label_534
	test	r9d, r9d
	je	.label_521
	xor	esi, esi
	jmp	.label_534
.label_1315:
	test	r8d, r8d
	jne	.label_492
	test	bl, bl
	je	.label_657
	mov	r12b, 1
.label_657:
	xor	eax, eax
	mov	dl, 0x41
	jmp	.label_559
.label_1316:
	cmp	r8d, 0x45
	je	.label_492
	test	bl, bl
	je	.label_659
	mov	r12b, 1
.label_659:
	xor	eax, eax
	mov	dl, 0x42
	jmp	.label_559
.label_1317:
	cmp	r8d, 0x45
	jne	.label_660
	xor	eax, eax
	mov	dl, 0x43
	jmp	.label_559
.label_1318:
	test	r8d, r8d
	jne	.label_492
	mov	r15d, OFFSET FLAT:label_667
	mov	r10d, 0xffffffff
	jmp	.label_544
.label_1319:
	test	r8d, r8d
	jne	.label_492
	test	r9d, r9d
	mov	rcx, qword ptr [rsp + 8]
	jne	.label_673
	test	ecx, ecx
	jns	.label_673
	mov	r15d, OFFSET FLAT:label_543
	mov	r9d, 0x2b
	mov	r10d, 4
	jmp	.label_544
.label_1321:
	cmp	r8d, 0x45
	je	.label_492
	mov	r13d, dword ptr [r11 + 8]
	jmp	.label_505
.label_1322:
	mov	edi, 2
	cmp	r8d, 0x45
	je	.label_492
	mov	edx, dword ptr [rsp + 0x7c]
	mov	r13d, edx
	jmp	.label_499
.label_1323:
	cmp	r8d, 0x45
	je	.label_492
	mov	r13d, dword ptr [r11 + 4]
	jmp	.label_505
.label_1324:
	cmp	r8d, 0x45
	je	.label_492
	mov	edi, 9
	mov	r11, qword ptr [rsp + 8]
	cmp	r11d, -1
	je	.label_507
	cmp	r11d, 8
	jg	.label_513
	mov	edx, 9
	sub	edx, r11d
	mov	esi, 8
	sub	esi, r11d
	and	edx, 3
	cmp	esi, 3
	mov	esi, dword ptr [rsp + 0x500]
	mov	r13d, esi
	mov	r10, qword ptr [rsp + 0x10]
	jb	.label_518
	lea	esi, [r11 + rdx - 9]
	mov	edi, dword ptr [rsp + 0x500]
	mov	r13d, edi
.label_531:
	movsxd	rdi, r13d
	imul	r13, rdi, 0x68db8bad
	mov	rdi, r13
	shr	rdi, 0x3f
	sar	r13, 0x2c
	add	r13d, edi
	add	esi, 4
	jne	.label_531
.label_518:
	test	edx, edx
	je	.label_645
	neg	edx
	nop	word ptr cs:[rax + rax]
.label_558:
	movsxd	rsi, r13d
	imul	r13, rsi, 0x66666667
	mov	rsi, r13
	shr	rsi, 0x3f
	sar	r13, 0x22
	add	r13d, esi
	inc	edx
	jne	.label_558
.label_645:
	mov	edi, r11d
	jmp	.label_545
.label_1325:
	mov	dil, 1
.label_1343:
	xor	eax, eax
	mov	qword ptr [rsp + 0x20], rax
	test	bl, bl
	je	.label_547
	mov	r12d, 0
.label_547:
	je	.label_550
	mov	dil, 1
.label_550:
	mov	dl, 0x70
	mov	al, dil
	jmp	.label_542
.label_1326:
	cmp	r8d, 0x45
	je	.label_492
	mov	r13d, dword ptr [r11]
	jmp	.label_505
.label_1327:
	mov	r15d, OFFSET FLAT:label_556
.label_544:
	mov	dword ptr [rsp + 0x2c], r14d
	mov	qword ptr [rsp + 0x58], r13
	xor	r8d, r8d
	mov	qword ptr [rsp + 0x40], r12
	test	r12b, r12b
	setne	r8b
	sub	rsp, 8
	xor	r14d, r14d
	xor	edi, edi
	mov	rsi, -1
	mov	rdx, r15
	mov	rcx, r11
	mov	r13d, r9d
	mov	eax, dword ptr [rsp + 0x508]
	push	rax
	push	qword ptr [rsp + 0x508]
	mov	qword ptr [rsp + 0x38], r10
	push	r10
	call	__strftime_internal
	mov	rdi, qword ptr [rsp + 0x30]
	mov	r8, qword ptr [rsp + 0x38]
	add	rsp, 0x20
	mov	rbx, rax
	mov	rdx, qword ptr [rsp + 8]
	test	edx, edx
	cmovns	r14d, edx
	movsxd	rax, r14d
	cmp	rbx, rax
	mov	r14, rbx
	cmovb	r14, rax
	mov	r12, qword ptr [rsp + 0x48]
	sub	r12, r8
	cmp	r14, r12
	jae	.label_489
	xor	ecx, ecx
	test	rdi, rdi
	je	.label_583
	cmp	rbx, rax
	jae	.label_585
	movsxd	rcx, edx
	mov	qword ptr [rsp + 8], rbx
	sub	rcx, rbx
	mov	eax, r13d
	cmp	eax, 0x30
	mov	qword ptr [rsp + 0x30], rcx
	je	.label_587
	cmp	eax, 0x2b
	jne	.label_590
.label_587:
	mov	esi, 0x30
	jmp	.label_592
.label_1328:
	cmp	r8d, 0x45
	je	.label_492
	mov	edx, dword ptr [r11 + 0x1c]
	add	edx, 7
	sub	edx, dword ptr [r11 + 0x18]
	movsxd	r13, edx
	jmp	.label_599
.label_1329:
	cmp	r8d, 0x45
	je	.label_492
	mov	edx, dword ptr [r11 + 0x18]
	mov	esi, dword ptr [r11 + 0x1c]
	lea	edi, [rdx + 6]
	movsxd	rdi, edi
	imul	rbx, rdi, -0x6db6db6d
	shr	rbx, 0x20
	lea	edx, [rbx + rdx + 6]
	mov	ebx, edx
	shr	ebx, 0x1f
	sar	edx, 2
	add	edx, ebx
	lea	ebx, [rdx*8]
	sub	ebx, edx
	sub	edi, ebx
	add	esi, 7
	sub	esi, edi
	movsxd	r13, esi
.label_599:
	imul	rdx, r13, -0x6db6db6d
	shr	rdx, 0x20
	add	r13d, edx
	mov	edx, r13d
	shr	edx, 0x1f
	sar	r13d, 2
	add	r13d, edx
	jmp	.label_505
.label_1330:
	xor	eax, eax
	mov	qword ptr [rsp + 0x20], rax
	cmp	r8d, 0x4f
	je	.label_492
	mov	dl, 0x58
	jmp	.label_617
.label_1331:
	xor	eax, eax
	mov	qword ptr [rsp + 0x20], rax
	cmp	r8d, 0x45
	je	.label_618
	cmp	r8d, 0x4f
	je	.label_492
	mov	r13d, dword ptr [r11 + 0x14]
	cmp	r13d, 0xfffff894
	setl	sil
	add	r13d, 0x76c
	mov	r15d, 4
	jmp	.label_579
.label_1332:
	mov	r15d, r9d
	mov	qword ptr [rsp + 0x40], r12
	mov	r12d, r14d
	mov	qword ptr [rsp + 0x58], r13
	mov	rdi, qword ptr [rsp + 0x68]
	call	strlen
	mov	r9, qword ptr [rsp + 0x10]
	mov	r8, qword ptr [rsp + 0x18]
	mov	r10, rax
	xor	eax, eax
	mov	rdx, qword ptr [rsp + 8]
	test	edx, edx
	cmovns	eax, edx
	cdqe	
	cmp	r10, rax
	mov	r13, r10
	cmovb	r13, rax
	mov	rcx, qword ptr [rsp + 0x48]
	sub	rcx, r8
	cmp	r13, rcx
	jae	.label_489
	xor	ecx, ecx
	test	r9, r9
	mov	r14d, r12d
	je	.label_610
	cmp	r10, rax
	jae	.label_641
	movsxd	rax, edx
	mov	qword ptr [rsp + 0x20], r10
	sub	rax, r10
	cmp	r15d, 0x30
	mov	qword ptr [rsp + 8], rax
	je	.label_654
	cmp	r15d, 0x2b
	jne	.label_646
.label_654:
	mov	esi, 0x30
	jmp	.label_648
.label_1333:
	test	r8d, r8d
	jne	.label_492
	test	bl, bl
	je	.label_652
	mov	r12b, 1
.label_652:
	xor	eax, eax
	mov	dl, 0x61
	jmp	.label_559
.label_1335:
	xor	eax, eax
	mov	qword ptr [rsp + 0x20], rax
	cmp	r8d, 0x4f
	je	.label_492
	mov	dl, 0x63
	jmp	.label_617
.label_1336:
	cmp	r8d, 0x45
	je	.label_492
	mov	r13d, dword ptr [r11 + 0xc]
.label_505:
	mov	edi, 2
	jmp	.label_499
.label_1337:
	cmp	r8d, 0x45
	je	.label_492
	mov	edx, dword ptr [r11 + 0xc]
	jmp	.label_664
.label_1338:
	cmp	r8d, 0x45
	je	.label_492
	mov	r13d, dword ptr [r11 + 0x1c]
	cmp	r13d, -1
	setl	sil
	inc	r13d
	mov	edi, 3
	jmp	.label_668
.label_1339:
	cmp	r8d, 0x45
	je	.label_492
	mov	edx, dword ptr [r11 + 8]
	jmp	.label_664
.label_1340:
	cmp	r8d, 0x45
	mov	edx, dword ptr [rsp + 0x7c]
	je	.label_492
.label_664:
	test	r9d, r9d
	mov	esi, 0x5f
	cmove	r9d, esi
	mov	edi, 2
	mov	r13d, edx
	jmp	.label_499
.label_1341:
	cmp	r8d, 0x45
	je	.label_492
	mov	r13d, dword ptr [r11 + 0x10]
	cmp	r13d, -1
	setl	sil
	inc	r13d
	mov	edi, 2
.label_668:
	xor	r14d, r14d
	xor	edx, edx
	jmp	.label_501
.label_1342:
	mov	r15d, r14d
	xor	eax, eax
	mov	rdx, qword ptr [rsp + 8]
	test	edx, edx
	cmovns	eax, edx
	movsxd	rcx, eax
	cmp	ecx, 1
	mov	ebx, 1
	cmova	rbx, rcx
	mov	rcx, qword ptr [rsp + 0x48]
	mov	r8, qword ptr [rsp + 0x18]
	sub	rcx, r8
	cmp	rbx, rcx
	mov	rdi, qword ptr [rsp + 0x10]
	jae	.label_489
	xor	ecx, ecx
	test	rdi, rdi
	mov	r14d, r15d
	je	.label_517
	cmp	eax, 2
	jb	.label_522
	movsxd	r14, edx
	dec	r14
	cmp	r9d, 0x30
	je	.label_649
	cmp	r9d, 0x2b
	jne	.label_526
.label_649:
	mov	esi, 0x30
	jmp	.label_527
.label_1344:
	imul	r13d, dword ptr [r11 + 0x10], 0xb
	sar	r13d, 5
	inc	r13d
	mov	edi, 1
	xor	r14d, r14d
	xor	edx, edx
	xor	esi, esi
.label_501:
	mov	r11, qword ptr [rsp + 8]
	mov	r10, qword ptr [rsp + 0x10]
	jmp	.label_532
.label_1345:
	mov	dword ptr [rsp + 0x30], r9d
	mov	qword ptr [rsp + 0x40], r12
	mov	dword ptr [rsp + 0x2c], r14d
	mov	r15, qword ptr [rsp + 0x10]
	mov	r14, qword ptr [rsp + 0x18]
	mov	rax, qword ptr [r11 + 0x30]
	mov	qword ptr [rsp + 0xe0], rax
	movups	xmm0, xmmword ptr [r11]
	movups	xmm1, xmmword ptr [r11 + 0x10]
	movups	xmm2, xmmword ptr [r11 + 0x20]
	movaps	xmmword ptr [rsp + 0xd0], xmm2
	movaps	xmmword ptr [rsp + 0xc0], xmm1
	movaps	xmmword ptr [rsp + 0xb0], xmm0
	lea	rsi, [rsp + 0xb0]
	mov	rdi, qword ptr [rsp + 0x4f8]
	call	mktime_z
	mov	rcx, rax
	mov	rsi, rcx
	shr	rsi, 0x3f
	lea	r12, [rsp + 0xa7]
	nop	dword ptr [rax]
.label_626:
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
	test	rsi, rsi
	cmove	eax, ebx
	add	eax, 0x30
	mov	byte ptr [r12 - 1], al
	dec	r12
	add	rcx, 9
	cmp	rcx, 0x12
	mov	rcx, rdx
	ja	.label_626
	xor	edx, edx
	mov	r8, r14
	mov	r10, r15
	mov	ebx, 1
	mov	eax, dword ptr [rsp + 0x2c]
	mov	r9d, dword ptr [rsp + 0x30]
	mov	r11, qword ptr [rsp + 8]
	jmp	.label_577
.label_1346:
	mov	r15d, r14d
	xor	eax, eax
	mov	rdx, qword ptr [rsp + 8]
	test	edx, edx
	cmovns	eax, edx
	movsxd	rcx, eax
	cmp	ecx, 1
	mov	ebx, 1
	cmova	rbx, rcx
	mov	rcx, qword ptr [rsp + 0x48]
	mov	r8, qword ptr [rsp + 0x18]
	sub	rcx, r8
	cmp	rbx, rcx
	mov	rdi, qword ptr [rsp + 0x10]
	jae	.label_489
	xor	ecx, ecx
	test	rdi, rdi
	mov	r14d, r15d
	je	.label_517
	cmp	eax, 2
	jb	.label_596
	movsxd	r14, edx
	dec	r14
	cmp	r9d, 0x30
	je	.label_598
	cmp	r9d, 0x2b
	jne	.label_600
.label_598:
	mov	esi, 0x30
	jmp	.label_601
.label_1347:
	mov	edx, dword ptr [r11 + 0x18]
	lea	esi, [rdx + 6]
	movsxd	r13, esi
	imul	rsi, r13, -0x6db6db6d
	shr	rsi, 0x20
	lea	edx, [rsi + rdx + 6]
	mov	esi, edx
	shr	esi, 0x1f
	sar	edx, 2
	add	edx, esi
	lea	esi, [rdx*8]
	sub	esi, edx
	sub	r13d, esi
	inc	r13d
	jmp	.label_603
.label_1348:
	cmp	r8d, 0x45
	je	.label_492
	mov	r13d, dword ptr [r11 + 0x18]
.label_603:
	mov	edi, 1
.label_499:
	mov	r11, qword ptr [rsp + 8]
.label_549:
	mov	r10, qword ptr [rsp + 0x10]
.label_545:
	mov	esi, r13d
	shr	esi, 0x1f
	xor	r14d, r14d
	xor	edx, edx
	jmp	.label_532
.label_1349:
	xor	eax, eax
	mov	qword ptr [rsp + 0x20], rax
	cmp	r8d, 0x4f
	je	.label_492
	mov	dl, 0x78
	jmp	.label_617
.label_1350:
	cmp	r8d, 0x45
	jne	.label_620
	xor	eax, eax
	mov	dl, 0x79
	jmp	.label_559
.label_615:
	xor	eax, eax
	mov	edx, ecx
.label_559:
	xor	ecx, ecx
	mov	qword ptr [rsp + 0x20], rcx
	jmp	.label_542
.label_585:
	mov	rcx, qword ptr [rsp + 0x38]
	mov	r9d, r13d
	mov	rdx, r15
	mov	r10, qword ptr [rsp + 0x20]
	jmp	.label_623
.label_566:
	dec	r10d
	mov	r14d, 0x16d
	test	r10b, 3
	jne	.label_551
	movsxd	rdx, r10d
	imul	rdx, rdx, 0x51eb851f
	mov	rdi, rdx
	sar	rdi, 0x25
	mov	rbx, rdx
	shr	rbx, 0x3f
	add	edi, ebx
	imul	edi, edi, 0x64
	sar	rdx, 0x27
	add	edx, ebx
	imul	edx, edx, 0x190
	xor	ebx, ebx
	cmp	r10d, edx
	sete	bl
	add	ebx, 0x16d
	cmp	r10d, edi
	mov	r14d, 0x16e
	cmove	r14d, ebx
.label_551:
	lea	edi, [r14 + r11 + 0x17e]
	sub	edi, r9d
	movsxd	rdi, edi
	imul	rbx, rdi, -0x6db6db6d
	shr	rbx, 0x20
	add	ebx, edi
	mov	edx, ebx
	shr	edx, 0x1f
	sar	ebx, 2
	add	ebx, edx
	lea	edx, [rbx*8]
	sub	edx, ebx
	sub	edi, edx
	lea	r12d, [r14 + r11 + 3]
	sub	r12d, edi
	mov	r11d, 0xffffffff
.label_602:
	cmp	esi, 0x47
	je	.label_650
	cmp	esi, 0x67
	jne	.label_653
	movsxd	rdx, eax
	imul	rdx, rdx, 0x51eb851f
	mov	rsi, rdx
	shr	rsi, 0x3f
	sar	rdx, 0x25
	add	edx, esi
	imul	edx, edx, 0x64
	mov	esi, eax
	sub	esi, edx
	add	esi, r11d
	movsxd	r13, esi
	imul	rdx, r13, 0x51eb851f
	mov	rsi, rdx
	shr	rsi, 0x3f
	sar	rdx, 0x25
	add	edx, esi
	imul	edx, edx, 0x64
	sub	r13d, edx
	mov	r15d, 2
	jns	.label_656
	mov	edx, 0xfffff894
	sub	edx, r11d
	mov	esi, r13d
	neg	esi
	add	r13d, 0x64
	cmp	eax, edx
	cmovl	r13d, esi
.label_656:
	xor	esi, esi
	jmp	.label_670
.label_643:
	mov	r8, qword ptr [rsp + 0x18]
	mov	r10, qword ptr [rsp + 0x10]
	jmp	.label_553
.label_660:
	movsxd	rdx, dword ptr [r11 + 0x14]
	cmp	rdx, -0x76c
	setl	sil
	setg	bl
	imul	r13, rdx, 0x51eb851f
	mov	rdi, r13
	shr	rdi, 0x3f
	sar	r13, 0x25
	add	r13d, edi
	imul	edi, r13d, 0x64
	cmp	edx, edi
	sets	dl
	and	dl, bl
	movzx	edx, dl
	sub	r13d, edx
	add	r13d, 0x13
	mov	r15d, 2
	jmp	.label_579
.label_620:
	movsxd	rdx, dword ptr [r11 + 0x14]
	imul	rsi, rdx, 0x51eb851f
	mov	rdi, rsi
	shr	rdi, 0x3f
	sar	rsi, 0x25
	add	esi, edi
	imul	esi, esi, 0x64
	mov	r13d, edx
	sub	r13d, esi
	mov	r15d, 2
	jns	.label_500
	mov	esi, r13d
	neg	esi
	add	r13d, 0x64
	cmp	edx, 0xfffff894
	cmovl	r13d, esi
.label_500:
	xor	esi, esi
.label_579:
	mov	r11, qword ptr [rsp + 8]
	mov	r10, qword ptr [rsp + 0x10]
	jmp	.label_514
.label_650:
	mov	edx, 0xfffff894
	sub	edx, r11d
	cmp	eax, edx
	setl	sil
	lea	r13d, [r11 + rax + 0x76c]
	mov	r15d, 4
.label_670:
	mov	r10, qword ptr [rsp + 0x10]
	mov	r12, qword ptr [rsp + 0x40]
	mov	r9d, dword ptr [rsp + 0x30]
	mov	r11, qword ptr [rsp + 8]
.label_514:
	test	r9d, r9d
	cmove	r9d, dword ptr [rsp + 0x88]
	xor	r14d, r14d
	cmp	r9d, 0x2b
	mov	edx, 0
	jne	.label_530
	cmp	r15d, 2
	mov	edx, 0x63
	mov	edi, 0x270f
	cmove	edi, edx
	cmp	edi, r13d
	setb	bl
	cmp	r15d, r11d
	setl	dl
	or	dl, bl
.label_530:
	mov	rdi, r15
.label_532:
	cmp	r8d, 0x4f
	jne	.label_540
	test	sil, sil
	jne	.label_540
	mov	qword ptr [rsp + 8], r11
	xor	eax, eax
	mov	edx, ecx
	mov	r11, qword ptr [rsp + 0x38]
	mov	qword ptr [rsp + 0x20], rdi
	jmp	.label_542
.label_540:
	mov	qword ptr [rsp + 0x40], r12
	mov	eax, r13d
	neg	eax
	test	sil, sil
	cmove	eax, r13d
	lea	r12, [rsp + 0xa7]
	mov	rbx, rdi
	mov	r8, qword ptr [rsp + 0x18]
	nop	
.label_557:
	test	r14b, 1
	je	.label_555
	mov	byte ptr [r12 - 1], 0x3a
	dec	r12
.label_555:
	sar	r14d, 1
	mov	ecx, eax
	mov	r13d, 0xcccccccd
	imul	r13, rcx
	shr	r13, 0x23
	lea	ecx, [r13 + r13]
	lea	ecx, [rcx + rcx*4]
	mov	edi, eax
	sub	edi, ecx
	or	edi, 0x30
	mov	byte ptr [r12 - 1], dil
	dec	r12
	cmp	eax, 9
	mov	eax, r13d
	ja	.label_557
	test	r14d, r14d
	mov	eax, r13d
	jne	.label_557
	xor	eax, eax
.label_577:
	cmp	ebx, r11d
	cmovl	ebx, r11d
	test	dl, dl
	je	.label_567
	mov	dl, 0x2b
.label_567:
	test	sil, sil
	mov	sil, 0x2d
	jne	.label_571
	mov	esi, edx
.label_571:
	cmp	r9d, 0x2d
	mov	dword ptr [rsp + 0x2c], eax
	mov	qword ptr [rsp + 0x58], r13
	mov	dword ptr [rsp + 0x30], r9d
	mov	qword ptr [rsp + 0x20], rbx
	jne	.label_576
	test	sil, sil
	je	.label_529
	xor	eax, eax
	test	r11d, r11d
	cmovns	eax, r11d
	movsxd	rcx, eax
	cmp	ecx, 1
	mov	ebx, 1
	cmova	rbx, rcx
	mov	rcx, qword ptr [rsp + 0x48]
	sub	rcx, r8
	cmp	rbx, rcx
	jae	.label_489
	xor	ecx, ecx
	test	r10, r10
	je	.label_573
	cmp	eax, 2
	setb	al
	mov	rcx, qword ptr [rsp + 0x20]
	test	ecx, ecx
	jne	.label_546
	test	al, al
	jne	.label_546
	movsxd	r14, r11d
	lea	rdx, [r14 - 1]
	mov	byte ptr [rsp + 0x50], sil
	mov	esi, 0x20
	mov	rdi, r10
	mov	r15, r8
	mov	r13, r10
	mov	qword ptr [rsp + 8], r11
	call	memset
	mov	sil, byte ptr [rsp + 0x50]
	mov	r11, qword ptr [rsp + 8]
	mov	r10, r13
	mov	r8, r15
	lea	r10, [r10 + r14 - 1]
	jmp	.label_546
.label_576:
	movsxd	rax, ebx
	mov	rcx, r12
	lea	rdx, [rsp + 0xa7]
	sub	rcx, rdx
	mov	edx, esi
	neg	dl
	sbb	r13, r13
	add	r13, rcx
	add	r13, rax
	test	r13d, r13d
	jle	.label_608
	cmp	r9d, 0x5f
	jne	.label_611
	movsxd	r14, r13d
	mov	rax, qword ptr [rsp + 0x48]
	sub	rax, r8
	cmp	r14, rax
	jae	.label_489
	xor	edx, edx
	test	r10, r10
	mov	r15d, 0
	je	.label_616
	mov	byte ptr [rsp + 0x50], sil
	mov	esi, 0x20
	mov	rdi, r10
	mov	rdx, r14
	mov	rbx, r8
	mov	r15, r10
	mov	qword ptr [rsp + 8], r11
	call	memset
	xor	edx, edx
	mov	sil, byte ptr [rsp + 0x50]
	mov	r11, qword ptr [rsp + 8]
	mov	r8, rbx
	add	r15, r14
.label_616:
	add	r8, r14
	sub	r11d, r13d
	cmovg	edx, r11d
	test	sil, sil
	je	.label_624
	xor	eax, eax
	test	edx, edx
	cmovns	eax, edx
	movsxd	rcx, eax
	cmp	ecx, 1
	mov	ebx, 1
	cmova	rbx, rcx
	mov	rcx, qword ptr [rsp + 0x48]
	sub	rcx, r8
	cmp	rbx, rcx
	jae	.label_489
	xor	r10d, r10d
	test	r15, r15
	je	.label_637
	cmp	eax, 2
	setb	al
	mov	rcx, qword ptr [rsp + 0x20]
	test	ecx, ecx
	jne	.label_607
	test	al, al
	jne	.label_607
	movsxd	r14, edx
	mov	qword ptr [rsp + 0x18], rdx
	lea	rdx, [r14 - 1]
	mov	byte ptr [rsp + 0x50], sil
	mov	esi, 0x20
	mov	rdi, r15
	mov	r13, r8
	call	memset
	mov	rdx, qword ptr [rsp + 0x18]
	mov	sil, byte ptr [rsp + 0x50]
	mov	r8, r13
	lea	r15, [r15 + r14 - 1]
.label_607:
	mov	byte ptr [r15], sil
	inc	r15
	mov	r10, r15
.label_637:
	add	r8, rbx
	mov	r11d, edx
	jmp	.label_529
.label_608:
	test	sil, sil
	je	.label_529
	xor	eax, eax
	test	r11d, r11d
	cmovns	eax, r11d
	movsxd	rcx, eax
	cmp	ecx, 1
	mov	ebx, 1
	cmova	rbx, rcx
	mov	rcx, qword ptr [rsp + 0x48]
	sub	rcx, r8
	cmp	rbx, rcx
	jae	.label_489
	xor	ecx, ecx
	test	r10, r10
	je	.label_573
	cmp	eax, 2
	setb	al
	mov	rcx, qword ptr [rsp + 0x20]
	test	ecx, ecx
	jne	.label_546
	test	al, al
	jne	.label_546
	movsxd	r14, r11d
	dec	r14
	mov	eax, dword ptr [rsp + 0x30]
	cmp	eax, 0x30
	mov	qword ptr [rsp + 8], r11
	mov	byte ptr [rsp + 0x50], sil
	je	.label_665
	cmp	eax, 0x2b
	jne	.label_669
.label_665:
	mov	esi, 0x30
	jmp	.label_642
.label_611:
	mov	rcx, qword ptr [rsp + 0x48]
	sub	rcx, r8
	cmp	rax, rcx
	jae	.label_489
	test	sil, sil
	je	.label_627
	xor	eax, eax
	test	r11d, r11d
	cmovns	eax, r11d
	movsxd	rdx, eax
	cmp	edx, 1
	mov	r15d, 1
	cmova	r15, rdx
	cmp	r15, rcx
	jae	.label_489
	xor	ecx, ecx
	test	r10, r10
	je	.label_496
	cmp	eax, 2
	setb	al
	mov	rcx, qword ptr [rsp + 0x20]
	test	ecx, ecx
	jne	.label_503
	test	al, al
	jne	.label_503
	movsxd	r14, r11d
	dec	r14
	mov	eax, dword ptr [rsp + 0x30]
	cmp	eax, 0x30
	mov	byte ptr [rsp + 0x50], sil
	je	.label_582
	cmp	eax, 0x2b
	jne	.label_508
.label_582:
	mov	esi, 0x30
	jmp	.label_612
.label_653:
	movsxd	rdx, r12d
	imul	rsi, rdx, -0x6db6db6d
	shr	rsi, 0x20
	add	edx, esi
	mov	esi, edx
	sar	esi, 2
	shr	edx, 0x1f
	lea	r13d, [rsi + rdx + 1]
	mov	edi, 2
	mov	r10, qword ptr [rsp + 0x10]
	mov	r12, qword ptr [rsp + 0x40]
	mov	r9d, dword ptr [rsp + 0x30]
	mov	r11, qword ptr [rsp + 8]
	jmp	.label_545
.label_624:
	mov	r10, r15
	mov	r11d, edx
	jmp	.label_529
.label_618:
	mov	dl, 0x59
.label_617:
	xor	eax, eax
.label_542:
	mov	dword ptr [rsp + 0x40], eax
	mov	dword ptr [rsp + 0x30], r9d
	mov	qword ptr [rsp + 0x58], r13
	mov	r13, qword ptr [rsp + 0x10]
	mov	word ptr [rsp + 0x63], 0x2520
	test	r8d, r8d
	lea	rcx, [rsp + 0x65]
	je	.label_535
	mov	byte ptr [rsp + 0x65], r8b
	lea	rcx, [rsp + 0x66]
.label_535:
	mov	byte ptr [rcx], dl
	mov	byte ptr [rcx + 1], 0
	lea	rdi, [rsp + 0xb0]
	lea	rdx, [rsp + 0x63]
	mov	esi, 0x400
	mov	rcx, r11
	call	strftime
	mov	rbx, rax
	test	rbx, rbx
	je	.label_548
	mov	rsi, qword ptr [rsp + 0x20]
	mov	r15, r12
	lea	r10, [rbx - 1]
	xor	eax, eax
	mov	rdx, qword ptr [rsp + 8]
	test	edx, edx
	cmovns	eax, edx
	cdqe	
	cmp	r10, rax
	mov	r12, r10
	cmovb	r12, rax
	mov	rcx, qword ptr [rsp + 0x48]
	mov	r8, qword ptr [rsp + 0x18]
	sub	rcx, r8
	cmp	r12, rcx
	jae	.label_489
	xor	ecx, ecx
	mov	rdi, r13
	test	rdi, rdi
	mov	r11, qword ptr [rsp + 0x38]
	je	.label_561
	cmp	r10, rax
	setae	al
	test	esi, esi
	jne	.label_565
	test	al, al
	jne	.label_565
	mov	dword ptr [rsp + 0x2c], r14d
	movsxd	r14, edx
	sub	r14, r10
	mov	eax, dword ptr [rsp + 0x30]
	cmp	eax, 0x30
	mov	qword ptr [rsp + 0x50], r10
	je	.label_528
	cmp	eax, 0x2b
	jne	.label_572
.label_528:
	mov	esi, 0x30
	jmp	.label_574
.label_548:
	mov	r8, qword ptr [rsp + 0x18]
	mov	r10, r13
	mov	r13, qword ptr [rsp + 0x58]
	mov	r11, qword ptr [rsp + 0x38]
	jmp	.label_553
.label_565:
	mov	eax, dword ptr [rsp + 0x40]
	jmp	.label_580
.label_572:
	mov	esi, 0x20
.label_574:
	mov	rdx, r14
	call	memset
	mov	r10, qword ptr [rsp + 0x50]
	mov	r11, qword ptr [rsp + 0x38]
	mov	rdi, r13
	mov	r8, qword ptr [rsp + 0x18]
	mov	eax, dword ptr [rsp + 0x40]
	add	rdi, r14
	mov	r14d, dword ptr [rsp + 0x2c]
.label_580:
	test	al, 1
	jne	.label_588
	test	r15b, 1
	jne	.label_589
	lea	rsi, [rsp + 0xb1]
	mov	rdx, r10
	mov	rbx, rdi
	mov	r15, r10
	call	memcpy
	mov	r10, r15
	mov	r11, qword ptr [rsp + 0x38]
	mov	rdi, rbx
	mov	r8, qword ptr [rsp + 0x18]
	jmp	.label_595
.label_588:
	test	r10, r10
	je	.label_595
	mov	r13d, r14d
	mov	r14, rdi
	mov	r15, r10
	call	__ctype_tolower_loc
	mov	r10, r15
	mov	rdi, r14
	mov	rdx, rbx
	add	rdx, -2
	mov	r9d, r10d
	and	r9d, 3
	cmp	rdx, 3
	mov	rsi, r10
	jb	.label_604
	lea	r8, [r9 + 1]
	nop	
.label_512:
	movzx	esi, byte ptr [rsp + rbx + 0xaf]
	mov	rdx, qword ptr [rax]
	movzx	edx, byte ptr [rdx + rsi*4]
	mov	byte ptr [rdi + rbx - 2], dl
	movzx	edx, byte ptr [rsp + rbx + 0xae]
	mov	rsi, qword ptr [rax]
	movzx	edx, byte ptr [rsi + rdx*4]
	mov	byte ptr [rdi + rbx - 3], dl
	movzx	edx, byte ptr [rsp + rbx + 0xad]
	mov	rsi, qword ptr [rax]
	movzx	edx, byte ptr [rsi + rdx*4]
	mov	byte ptr [rdi + rbx - 4], dl
	movzx	edx, byte ptr [rsp + rbx + 0xac]
	mov	rsi, qword ptr [rax]
	movzx	edx, byte ptr [rsi + rdx*4]
	mov	byte ptr [rdi + rbx - 5], dl
	add	rbx, -4
	cmp	r8, rbx
	jne	.label_512
	dec	rbx
	mov	rsi, rbx
.label_604:
	test	r9, r9
	mov	r8, qword ptr [rsp + 0x18]
	mov	r14d, r13d
	mov	r11, qword ptr [rsp + 0x38]
	je	.label_595
	lea	rdx, [rdi + rsi - 1]
	lea	rsi, [rsp + rsi + 0xb0]
	neg	r9
	nop	word ptr cs:[rax + rax]
.label_593:
	movzx	ecx, byte ptr [rsi]
	mov	rbx, qword ptr [rax]
	movzx	ebx, byte ptr [rbx + rcx*4]
	mov	byte ptr [rdx], bl
	dec	rdx
	dec	rsi
	inc	r9
	jne	.label_593
	jmp	.label_595
.label_589:
	test	r10, r10
	je	.label_595
	mov	r13d, r14d
	mov	r14, rdi
	mov	r15, r10
	call	__ctype_toupper_loc
	mov	r10, r15
	mov	rdi, r14
	mov	rdx, rbx
	add	rdx, -2
	mov	r9d, r10d
	and	r9d, 3
	cmp	rdx, 3
	mov	rsi, r10
	jb	.label_677
	lea	r8, [r9 + 1]
	nop	word ptr cs:[rax + rax]
.label_644:
	movzx	esi, byte ptr [rsp + rbx + 0xaf]
	mov	rdx, qword ptr [rax]
	movzx	edx, byte ptr [rdx + rsi*4]
	mov	byte ptr [rdi + rbx - 2], dl
	movzx	edx, byte ptr [rsp + rbx + 0xae]
	mov	rsi, qword ptr [rax]
	movzx	edx, byte ptr [rsi + rdx*4]
	mov	byte ptr [rdi + rbx - 3], dl
	movzx	edx, byte ptr [rsp + rbx + 0xad]
	mov	rsi, qword ptr [rax]
	movzx	edx, byte ptr [rsi + rdx*4]
	mov	byte ptr [rdi + rbx - 4], dl
	movzx	edx, byte ptr [rsp + rbx + 0xac]
	mov	rsi, qword ptr [rax]
	movzx	edx, byte ptr [rsi + rdx*4]
	mov	byte ptr [rdi + rbx - 5], dl
	add	rbx, -4
	cmp	r8, rbx
	jne	.label_644
	dec	rbx
	mov	rsi, rbx
.label_677:
	test	r9, r9
	mov	r8, qword ptr [rsp + 0x18]
	mov	r14d, r13d
	mov	r11, qword ptr [rsp + 0x38]
	je	.label_595
	lea	rdx, [rdi + rsi - 1]
	lea	rsi, [rsp + rsi + 0xb0]
	neg	r9
	nop	dword ptr [rax]
.label_504:
	movzx	ecx, byte ptr [rsi]
	mov	rbx, qword ptr [rax]
	movzx	ebx, byte ptr [rbx + rcx*4]
	mov	byte ptr [rdx], bl
	dec	rdx
	dec	rsi
	inc	r9
	jne	.label_504
.label_595:
	add	rdi, r10
	mov	rcx, rdi
.label_561:
	add	r8, r12
	mov	r10, rcx
	jmp	.label_672
.label_641:
	mov	r15, qword ptr [rsp + 0x68]
	mov	rax, qword ptr [rsp + 0x40]
	jmp	.label_674
.label_590:
	mov	esi, 0x20
.label_592:
	mov	rdx, rcx
	mov	rbx, rdi
	call	memset
	mov	rcx, qword ptr [rsp + 0x38]
	add	rbx, qword ptr [rsp + 0x30]
	mov	rdi, rbx
	mov	r9d, r13d
	mov	rdx, r15
	mov	r10, qword ptr [rsp + 0x20]
	mov	rbx, qword ptr [rsp + 8]
.label_623:
	xor	r8d, r8d
	mov	rax, qword ptr [rsp + 0x40]
	test	al, al
	setne	r8b
	sub	rsp, 8
	mov	rsi, r12
	mov	eax, dword ptr [rsp + 0x508]
	push	rax
	push	qword ptr [rsp + 0x508]
	push	r10
	mov	r15, rdi
	call	__strftime_internal
	add	rsp, 0x20
	add	rbx, r15
	mov	rcx, rbx
	mov	r8, qword ptr [rsp + 0x18]
.label_583:
	add	r8, r14
	jmp	.label_510
.label_521:
	mov	rdx, qword ptr [rsp + 0x68]
	cmp	byte ptr [rdx], 0x2d
	sete	sil
.label_534:
	cmp	r10, 3
	ja	.label_515
	movsxd	rax, r9d
	imul	rbx, rax, -0x77777777
	shr	rbx, 0x20
	add	ebx, r9d
	mov	edi, ebx
	shr	edi, 0x1f
	sar	ebx, 5
	add	ebx, edi
	imul	r13, rax, -0x6e5d4c3b
	shr	r13, 0x20
	add	r13d, r9d
	mov	edi, r13d
	shr	edi, 0x1f
	sar	r13d, 0xb
	add	r13d, edi
	movsxd	rdi, ebx
	imul	rbx, rdi, -0x77777777
	shr	rbx, 0x20
	add	ebx, edi
	mov	edx, ebx
	shr	edx, 0x1f
	sar	ebx, 5
	add	ebx, edx
	imul	edx, ebx, 0x3c
	imul	ebx, edi, 0x3c
	sub	edi, edx
	sub	r9d, ebx
	jmp	qword ptr [(r10 * 8) + label_519]
.label_1500:
	imul	r13d, r13d, 0x64
	add	r13d, edi
	mov	edi, 5
.label_662:
	xor	r14d, r14d
	jmp	.label_541
.label_673:
	xor	eax, eax
	mov	r10d, ecx
	add	r10d, -6
	cmovs	r10d, eax
	mov	r15d, OFFSET FLAT:label_543
	jmp	.label_544
.label_507:
	mov	edx, dword ptr [rsp + 0x500]
	mov	r13d, edx
	mov	r11d, 9
	jmp	.label_549
.label_515:
	xor	edi, edi
	mov	r15d, 0xe
	jmp	.label_554
.label_1503:
	test	r9d, r9d
	je	.label_651
.label_1502:
	imul	r13d, r13d, 0x2710
	imul	edx, edi, 0x64
	add	r13d, r9d
	add	r13d, edx
	mov	edi, 9
	mov	r14d, 0x14
	jmp	.label_541
.label_513:
	mov	edx, dword ptr [rsp + 0x500]
	mov	r13d, edx
	mov	edi, r11d
	jmp	.label_549
.label_646:
	mov	esi, 0x20
.label_648:
	mov	rdi, r9
	mov	rdx, rax
	mov	r14, r9
	call	memset
	mov	r15, qword ptr [rsp + 0x68]
	add	r14, qword ptr [rsp + 8]
	mov	r8, qword ptr [rsp + 0x18]
	mov	r9, r14
	mov	r14d, r12d
	mov	rax, qword ptr [rsp + 0x40]
	mov	r10, qword ptr [rsp + 0x20]
.label_674:
	test	bl, bl
	je	.label_578
	test	r10, r10
	je	.label_560
	mov	r12, r9
	mov	rbx, r10
	call	__ctype_tolower_loc
	mov	r10, rbx
	lea	rdx, [r10 - 1]
	mov	ecx, r10d
	and	ecx, 3
	cmp	rdx, 3
	jae	.label_581
	mov	rdx, r10
	mov	r8, qword ptr [rsp + 0x18]
	mov	r9, r12
	jmp	.label_584
.label_578:
	test	al, al
	je	.label_586
	test	r10, r10
	je	.label_560
	mov	r15, r9
	mov	rbx, r10
	call	__ctype_toupper_loc
	mov	r10, rbx
	lea	rdx, [r10 - 1]
	mov	ecx, r10d
	and	ecx, 3
	cmp	rdx, 3
	jae	.label_591
	mov	rdx, r10
	mov	r9, r15
	jmp	.label_597
.label_581:
	mov	rdx, r10
	mov	r8, qword ptr [rsp + 0x18]
	mov	r9, r12
	nop	word ptr cs:[rax + rax]
.label_605:
	movzx	esi, byte ptr [r15 + rdx - 1]
	mov	rdi, qword ptr [rax]
	movzx	ebx, byte ptr [rdi + rsi*4]
	mov	byte ptr [r9 + rdx - 1], bl
	movzx	esi, byte ptr [r15 + rdx - 2]
	mov	rdi, qword ptr [rax]
	movzx	ebx, byte ptr [rdi + rsi*4]
	mov	byte ptr [r9 + rdx - 2], bl
	movzx	esi, byte ptr [r15 + rdx - 3]
	mov	rdi, qword ptr [rax]
	movzx	ebx, byte ptr [rdi + rsi*4]
	mov	byte ptr [r9 + rdx - 3], bl
	movzx	esi, byte ptr [r15 + rdx - 4]
	mov	rdi, qword ptr [rax]
	movzx	ebx, byte ptr [rdi + rsi*4]
	mov	byte ptr [r9 + rdx - 4], bl
	lea	rdx, [rdx - 4]
	cmp	rcx, rdx
	jne	.label_605
.label_584:
	test	rcx, rcx
	je	.label_560
	lea	rsi, [r9 + rdx - 1]
	add	rdx, qword ptr [rsp + 0x80]
	neg	rcx
	nop	word ptr [rax + rax]
.label_619:
	movzx	edi, byte ptr [rdx]
	mov	rbx, qword ptr [rax]
	movzx	ebx, byte ptr [rbx + rdi*4]
	mov	byte ptr [rsi], bl
	dec	rsi
	dec	rdx
	inc	rcx
	jne	.label_619
	jmp	.label_560
.label_526:
	mov	esi, 0x20
.label_527:
	mov	rdx, r14
	mov	r12, rdi
	call	memset
	add	r12, r14
	mov	r8, qword ptr [rsp + 0x18]
	mov	rdi, r12
	mov	r14d, r15d
.label_522:
	mov	byte ptr [rdi], 0xa
	jmp	.label_630
.label_600:
	mov	esi, 0x20
.label_601:
	mov	rdx, r14
	mov	r12, rdi
	call	memset
	add	r12, r14
	mov	r8, qword ptr [rsp + 0x18]
	mov	rdi, r12
	mov	r14d, r15d
.label_596:
	mov	byte ptr [rdi], 9
.label_630:
	inc	rdi
	mov	rcx, rdi
.label_517:
	add	r8, rbx
	mov	r10, rcx
	mov	r11, qword ptr [rsp + 0x38]
	jmp	.label_553
.label_669:
	mov	esi, 0x20
.label_642:
	mov	rdi, r10
	mov	rdx, r14
	mov	r15, r8
	mov	r13, r10
	call	memset
	mov	sil, byte ptr [rsp + 0x50]
	mov	r11, qword ptr [rsp + 8]
	mov	r10, r13
	mov	r8, r15
	add	r10, r14
.label_546:
	mov	byte ptr [r10], sil
	inc	r10
	mov	rcx, r10
.label_573:
	add	r8, rbx
	mov	r10, rcx
	jmp	.label_529
.label_586:
	mov	rdi, r9
	mov	rsi, r15
	mov	rdx, r10
	mov	rbx, r9
	mov	r15, r10
	call	memcpy
	mov	r10, r15
	mov	r9, rbx
	mov	r8, qword ptr [rsp + 0x18]
	jmp	.label_560
.label_651:
	test	edi, edi
	je	.label_655
.label_1501:
	imul	r13d, r13d, 0x64
	add	r13d, edi
	mov	edi, 6
	mov	r14d, 4
.label_541:
	mov	r15d, 0x21
.label_554:
	mov	r10, r11
	mov	r9d, dword ptr [rsp + 0x30]
	mov	r11, qword ptr [rsp + 8]
	mov	ebx, r15d
	and	bl, 0x3f
	cmp	bl, 0xe
	je	.label_658
	mov	dl, 1
	cmp	bl, 0x21
	je	.label_532
	mov	r11, qword ptr [rsp + 0x38]
	mov	r8, qword ptr [rsp + 0x18]
	jmp	.label_663
.label_658:
	mov	qword ptr [rsp + 0x20], rdi
.label_492:
	mov	r10, qword ptr [rsp + 0x20]
	mov	qword ptr [rsp + 0x40], r12
	mov	dword ptr [rsp + 0x2c], r14d
	mov	qword ptr [rsp + 0x58], r13
	lea	rax, [rbp - 2]
	xor	ecx, ecx
	xor	r15d, r15d
	mov	edx, 1
.label_675:
	mov	r12, rdx
	mov	r14, rax
	mov	r13, rcx
	mov	ebx, 1
	sub	rbx, r12
	lea	rdx, [r12 + 1]
	lea	rax, [r14 - 1]
	inc	r15b
	lea	rcx, [r13 - 1]
	cmp	byte ptr [rbp + rbx], 0x25
	jne	.label_675
	mov	r11, qword ptr [rsp + 8]
	test	r11d, r11d
	mov	eax, r11d
	mov	ecx, 0
	cmovs	eax, ecx
	cmp	r12d, eax
	mov	ecx, eax
	cmova	ecx, r12d
	movsxd	rsi, ecx
	mov	rcx, qword ptr [rsp + 0x48]
	mov	r8, qword ptr [rsp + 0x18]
	sub	rcx, r8
	cmp	rsi, rcx
	mov	rdi, qword ptr [rsp + 0x10]
	jae	.label_489
	test	rdi, rdi
	mov	ecx, 0
	je	.label_570
	movsxd	rdx, r12d
	test	r10d, r10d
	mov	qword ptr [rsp + 0x20], rdx
	mov	qword ptr [rsp + 0x30], rsi
	jne	.label_509
	cmp	r12d, eax
	jae	.label_509
	movsxd	rax, r11d
	sub	rax, rdx
	cmp	r9d, 0x30
	mov	qword ptr [rsp + 8], rax
	je	.label_625
	cmp	r9d, 0x2b
	jne	.label_523
.label_625:
	mov	esi, 0x30
	jmp	.label_524
.label_523:
	mov	esi, 0x20
.label_524:
	mov	rdx, rax
	call	memset
	mov	rax, qword ptr [rsp + 0x10]
	add	rax, qword ptr [rsp + 8]
	mov	rdi, rax
	mov	rdx, qword ptr [rsp + 0x20]
.label_509:
	mov	rax, qword ptr [rsp + 0x40]
	test	al, 1
	jne	.label_533
	add	rbx, rbp
	mov	rsi, rbx
	mov	rbx, rdi
	call	memcpy
	mov	r10, qword ptr [rsp + 0x20]
	mov	r9, rbx
	mov	r8, qword ptr [rsp + 0x18]
	jmp	.label_538
.label_533:
	mov	rbx, rdi
	call	__ctype_toupper_loc
	mov	r10, qword ptr [rsp + 0x20]
	mov	r9, rbx
	movsxd	rcx, r12d
	lea	rdx, [rcx - 1]
	and	ecx, 3
	cmp	rdx, 3
	mov	rdx, r10
	jb	.label_539
	movsxd	rdx, r12d
	add	r14, rdx
	and	r15b, 3
	movzx	esi, r15b
	mov	rdx, r10
	nop	word ptr cs:[rax + rax]
.label_552:
	movzx	edi, byte ptr [r14 + 1]
	mov	rbx, qword ptr [rax]
	movzx	ebx, byte ptr [rbx + rdi*4]
	mov	byte ptr [r9 + rdx - 1], bl
	movzx	edi, byte ptr [r14]
	mov	rbx, qword ptr [rax]
	movzx	ebx, byte ptr [rbx + rdi*4]
	mov	byte ptr [r9 + rdx - 2], bl
	movzx	edi, byte ptr [r14 - 1]
	mov	rbx, qword ptr [rax]
	movzx	ebx, byte ptr [rbx + rdi*4]
	mov	byte ptr [r9 + rdx - 3], bl
	movzx	edi, byte ptr [r14 - 2]
	mov	rbx, qword ptr [rax]
	movzx	ebx, byte ptr [rbx + rdi*4]
	mov	byte ptr [r9 + rdx - 4], bl
	add	rdx, -4
	add	r14, -4
	cmp	rsi, rdx
	jne	.label_552
.label_539:
	test	rcx, rcx
	mov	r8, qword ptr [rsp + 0x18]
	je	.label_538
	lea	rcx, [r9 + rdx - 1]
	add	rdx, rbp
	lea	rdx, [r13 + rdx - 1]
	and	r12d, 3
	neg	r12
	nop	
.label_575:
	movzx	esi, byte ptr [rdx]
	mov	rdi, qword ptr [rax]
	movzx	ebx, byte ptr [rdi + rsi*4]
	mov	byte ptr [rcx], bl
	dec	rcx
	dec	rdx
	inc	r12
	jne	.label_575
.label_538:
	add	r9, r10
	mov	rcx, r9
	mov	rsi, qword ptr [rsp + 0x30]
.label_570:
	add	r8, rsi
.label_510:
	mov	r10, rcx
	mov	r11, qword ptr [rsp + 0x38]
	mov	r13, qword ptr [rsp + 0x58]
	mov	r14d, dword ptr [rsp + 0x2c]
	jmp	.label_553
.label_508:
	mov	esi, 0x20
.label_612:
	mov	rdi, r10
	mov	rdx, r14
	mov	rbx, r10
	call	memset
	mov	sil, byte ptr [rsp + 0x50]
	mov	r10, rbx
	mov	r8, qword ptr [rsp + 0x18]
	add	r10, r14
.label_503:
	mov	byte ptr [r10], sil
	inc	r10
	mov	rcx, r10
.label_496:
	add	r8, r15
	mov	r10, rcx
.label_627:
	xor	r11d, r11d
	test	r10, r10
	movsxd	r15, r13d
	mov	eax, 0
	je	.label_594
	mov	esi, 0x30
	mov	rdi, r10
	mov	rdx, r15
	mov	r14, r8
	mov	rbx, r10
	call	memset
	xor	r11d, r11d
	mov	r8, r14
	add	rbx, r15
	mov	rax, rbx
.label_594:
	add	r8, r15
	mov	r10, rax
.label_529:
	lea	r15, [rsp + 0xa7]
	sub	r15, r12
	xor	eax, eax
	test	r11d, r11d
	cmovns	eax, r11d
	cdqe	
	cmp	r15, rax
	mov	r13, r15
	cmovb	r13, rax
	mov	rcx, qword ptr [rsp + 0x48]
	sub	rcx, r8
	cmp	r13, rcx
	jae	.label_489
	xor	ecx, ecx
	test	r10, r10
	mov	r14d, dword ptr [rsp + 0x2c]
	je	.label_610
	cmp	r15, rax
	setae	al
	mov	rcx, qword ptr [rsp + 0x20]
	test	ecx, ecx
	jne	.label_614
	test	al, al
	jne	.label_614
	mov	qword ptr [rsp + 0x18], r13
	mov	r13, r8
	movsxd	r14, r11d
	sub	r14, r15
	mov	eax, dword ptr [rsp + 0x30]
	cmp	eax, 0x30
	je	.label_497
	cmp	eax, 0x2b
	jne	.label_629
.label_497:
	mov	esi, 0x30
	jmp	.label_621
.label_629:
	mov	esi, 0x20
.label_621:
	mov	rdi, r10
	mov	rdx, r14
	mov	rbx, r10
	call	memset
	add	rbx, r14
	mov	r8, r13
	mov	r10, rbx
	mov	r14d, dword ptr [rsp + 0x2c]
	mov	r13, qword ptr [rsp + 0x18]
.label_614:
	mov	rax, qword ptr [rsp + 0x40]
	test	al, al
	je	.label_628
	test	r15, r15
	je	.label_564
	mov	r14, r8
	mov	rbx, r10
	call	__ctype_toupper_loc
	mov	r10, rbx
	lea	rcx, [rsp + 0xa7]
	sub	ecx, r12d
	lea	rdx, [rsp + 0xa6]
	sub	rdx, r12
	and	ecx, 3
	cmp	rdx, 3
	mov	rdx, r15
	jb	.label_635
	mov	r8, r12
	neg	r8
	mov	rdi, r10
	sub	rdi, r12
	dec	rdi
	mov	r9, -1
	sub	r8, rcx
	lea	rdx, [rsp + 0xa7]
	nop	word ptr [rax + rax]
.label_568:
	movzx	esi, byte ptr [r9 + rdx]
	mov	rbx, qword ptr [rax]
	movzx	ebx, byte ptr [rbx + rsi*4]
	mov	byte ptr [rdi + rdx], bl
	movzx	esi, byte ptr [r9 + rdx - 1]
	mov	rbx, qword ptr [rax]
	movzx	ebx, byte ptr [rbx + rsi*4]
	mov	byte ptr [rdi + rdx - 1], bl
	movzx	esi, byte ptr [r9 + rdx - 2]
	mov	rbx, qword ptr [rax]
	movzx	ebx, byte ptr [rbx + rsi*4]
	mov	byte ptr [rdi + rdx - 2], bl
	movzx	esi, byte ptr [r9 + rdx - 3]
	mov	rbx, qword ptr [rax]
	movzx	ebx, byte ptr [rbx + rsi*4]
	mov	byte ptr [rdi + rdx - 3], bl
	add	rdx, -4
	mov	rsi, r8
	add	rsi, rdx
	jne	.label_568
	sub	rdx, r12
.label_635:
	test	rcx, rcx
	mov	r8, r14
	mov	r14d, dword ptr [rsp + 0x2c]
	je	.label_564
	lea	rsi, [r10 + rdx - 1]
	lea	rdx, [r12 + rdx - 1]
	neg	rcx
	nop	dword ptr [rax + rax]
.label_661:
	movzx	edi, byte ptr [rdx]
	mov	rbx, qword ptr [rax]
	movzx	ebx, byte ptr [rbx + rdi*4]
	mov	byte ptr [rsi], bl
	dec	rsi
	dec	rdx
	inc	rcx
	jne	.label_661
	jmp	.label_564
.label_628:
	mov	rdi, r10
	mov	rsi, r12
	mov	rdx, r15
	mov	r14, r8
	mov	rbx, r10
	call	memcpy
	mov	r10, rbx
	mov	r8, r14
	mov	r14d, dword ptr [rsp + 0x2c]
.label_564:
	add	r10, r15
	mov	rcx, r10
.label_610:
	add	r8, r13
	mov	r10, rcx
	mov	r11, qword ptr [rsp + 0x38]
.label_672:
	mov	r13, qword ptr [rsp + 0x58]
	nop	
.label_553:
	mov	al, byte ptr [rbp + 1]
	inc	rbp
	mov	edi, 0xffffffff
	test	al, al
	jne	.label_488
.label_632:
	cmp	qword ptr [rsp + 0x48], 0
	je	.label_493
	test	r10, r10
	je	.label_493
	mov	byte ptr [r10], 0
.label_493:
	mov	qword ptr [rsp + 0x70], r8
.label_569:
	mov	rax, qword ptr [rsp + 0x70]
	add	rsp, 0x4b8
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_489:
	xor	eax, eax
	mov	qword ptr [rsp + 0x70], rax
	jmp	.label_569
	.section	.text
	.align	32
	#Procedure 0x408049
	.globl sub_408049
	.type sub_408049, @function
sub_408049:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x408050
	.globl quotearg_n_custom
	.type quotearg_n_custom, @function
quotearg_n_custom:

	sub	rsp, 0x38
	mov	rax, qword ptr [rip + label_329]
	mov	qword ptr [rsp + 0x30], rax
	movups	xmm0, xmmword ptr [rip + label_330]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0, xmmword ptr [rip + label_331]
	movaps	xmmword ptr [rsp + 0x10], xmm0
	movups	xmm0, xmmword ptr [rip + default_quoting_options]
	movaps	xmmword ptr [rsp], xmm0
	mov	dword ptr [rsp], 0xa
	test	rsi, rsi
	je	.label_678
	test	rdx, rdx
	je	.label_678
	mov	qword ptr [rsp + 0x28], rsi
	mov	qword ptr [rsp + 0x30], rdx
	lea	rax, [rsp]
	mov	rdx, -1
	mov	rsi, rcx
	mov	rcx, rax
	call	quotearg_n_options
	add	rsp, 0x38
	ret	
.label_678:
	call	abort
	.section	.text
	.align	32
	#Procedure 0x4080be
	.globl sub_4080be
	.type sub_4080be, @function
sub_4080be:

	nop	
	.section	.text
	.align	32
	#Procedure 0x4080c0

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
	mov	esi, OFFSET FLAT:label_679
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stderr]
	mov	rdi, rax
	call	fputs_unlocked
	mov	rbx, qword ptr [rbp]
	test	rbx, rbx
	je	.label_685
	xor	r13d, r13d
	xor	r15d, r15d
	mov	qword ptr [rsp], rbp
	nop	dword ptr [rax + rax]
.label_682:
	test	r15, r15
	je	.label_684
	mov	rdi, r13
	mov	rsi, r12
	mov	rdx, r14
	call	memcmp
	test	eax, eax
	je	.label_680
.label_684:
	mov	r13, qword ptr [rip + stderr]
	mov	rdi, rbx
	call	quote
	mov	rcx, rax
	mov	esi, 1
	mov	edx, OFFSET FLAT:label_686
	xor	eax, eax
	mov	rdi, r13
	call	__fprintf_chk
	mov	r13, r12
	jmp	.label_683
	.section	.text
	.align	32
	#Procedure 0x408152
	.globl sub_408152
	.type sub_408152, @function
sub_408152:

	nop	word ptr cs:[rax + rax]
.label_687:
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
	#Procedure 0x408178
	.globl sub_408178
	.type sub_408178, @function
sub_408178:

	nop	word ptr cs:[rax + rax]
.label_680:
	mov	rbp, qword ptr [rip + stderr]
	mov	rdi, rbx
	call	quote
	mov	rcx, rax
	mov	esi, 1
	mov	edx, OFFSET FLAT:label_681
	xor	eax, eax
	mov	rdi, rbp
	mov	rbp, qword ptr [rsp]
	call	__fprintf_chk
.label_683:
	mov	rbx, qword ptr [rbp + r15*8 + 8]
	inc	r15
	add	r12, r14
	test	rbx, rbx
	jne	.label_682
.label_685:
	mov	rdi, qword ptr [rip + stderr]
	mov	rax, qword ptr [rdi + 0x28]
	cmp	rax, qword ptr [rdi + 0x30]
	jae	.label_687
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
	.section	.text
	.align	32
	#Procedure 0x4081f0

	.globl apply_relative_time
	.type apply_relative_time, @function
apply_relative_time:
	lea	r8, [rsp + 8]
	movabs	r10, 0x7fffffffffffffff
	mov	edx, dword ptr [rsp + 0x38]
	test	esi, esi
	js	.label_743
	test	edx, edx
	js	.label_690
	mov	esi, 0x7fffffff
	sub	esi, edx
	lea	rcx, [rdi + 0x98]
	mov	eax, dword ptr [rdi + 0x98]
	cmp	esi, eax
	jl	.label_691
	jmp	.label_699
.label_743:
	test	edx, edx
	js	.label_739
	lea	rcx, [rdi + 0x98]
	mov	eax, dword ptr [rdi + 0x98]
	mov	esi, edx
	xor	esi, 0x80000000
	cmp	eax, esi
	jl	.label_703
	jmp	.label_708
.label_690:
	lea	rcx, [rdi + 0x98]
	mov	eax, dword ptr [rdi + 0x98]
	mov	esi, 0x80000000
	sub	esi, edx
	cmp	eax, esi
	jge	.label_699
.label_691:
	add	edx, eax
	mov	dword ptr [rcx], edx
	mov	r9d, 1
	jmp	.label_715
.label_699:
	add	edx, eax
	mov	dword ptr [rcx], edx
	xor	r9d, r9d
.label_715:
	mov	rdx, qword ptr [r8 + 0x28]
	test	rdx, rdx
	js	.label_718
	mov	rsi, r10
	sub	rsi, rdx
	lea	rcx, [rdi + 0x90]
	mov	rax, qword ptr [rdi + 0x90]
	cmp	rsi, rax
	jl	.label_694
	jmp	.label_726
.label_718:
	lea	rcx, [rdi + 0x90]
	mov	rax, qword ptr [rdi + 0x90]
	lea	rsi, [r10 + 1]
	sub	rsi, rdx
	cmp	rax, rsi
	jge	.label_726
.label_694:
	add	rdx, rax
	mov	qword ptr [rcx], rdx
	mov	r11d, 1
	jmp	.label_731
.label_726:
	add	rdx, rax
	mov	qword ptr [rcx], rdx
	xor	r11d, r11d
.label_731:
	or	r11d, r9d
	mov	rsi, qword ptr [r8 + 0x20]
	test	rsi, rsi
	js	.label_734
	mov	rcx, r10
	sub	rcx, rsi
	lea	r9, [rdi + 0x88]
	mov	rax, qword ptr [rdi + 0x88]
	cmp	rcx, rax
	jl	.label_737
	jmp	.label_744
.label_734:
	lea	r9, [rdi + 0x88]
	mov	rax, qword ptr [rdi + 0x88]
	lea	rcx, [r10 + 1]
	sub	rcx, rsi
	cmp	rax, rcx
	jge	.label_744
.label_737:
	add	rsi, rax
	mov	qword ptr [r9], rsi
	mov	eax, 1
	jmp	.label_693
.label_744:
	add	rsi, rax
	mov	qword ptr [r9], rsi
	xor	eax, eax
.label_693:
	or	r11d, eax
	mov	rsi, qword ptr [r8 + 0x18]
	test	rsi, rsi
	js	.label_700
	mov	rdx, r10
	sub	rdx, rsi
	mov	rcx, rdi
	sub	rcx, -0x80
	mov	rax, qword ptr [rdi + 0x80]
	cmp	rdx, rax
	jl	.label_704
	jmp	.label_732
.label_700:
	mov	rcx, rdi
	sub	rcx, -0x80
	mov	rax, qword ptr [rdi + 0x80]
	lea	rdx, [r10 + 1]
	sub	rdx, rsi
	cmp	rax, rdx
	jge	.label_732
.label_704:
	add	rsi, rax
	mov	qword ptr [rcx], rsi
	mov	eax, 1
	jmp	.label_714
.label_732:
	add	rsi, rax
	mov	qword ptr [rcx], rsi
	xor	eax, eax
.label_714:
	or	r11d, eax
	mov	rsi, qword ptr [r8 + 0x10]
	test	rsi, rsi
	js	.label_719
	mov	rdx, r10
	sub	rdx, rsi
	lea	rcx, [rdi + 0x78]
	mov	rax, qword ptr [rdi + 0x78]
	cmp	rdx, rax
	jl	.label_721
	jmp	.label_725
.label_719:
	lea	rcx, [rdi + 0x78]
	mov	rax, qword ptr [rdi + 0x78]
	lea	rdx, [r10 + 1]
	sub	rdx, rsi
	cmp	rax, rdx
	jge	.label_725
.label_721:
	add	rsi, rax
	mov	qword ptr [rcx], rsi
	mov	eax, 1
	jmp	.label_730
.label_725:
	add	rsi, rax
	mov	qword ptr [rcx], rsi
	xor	eax, eax
.label_730:
	or	r11d, eax
	mov	rsi, qword ptr [r8 + 8]
	test	rsi, rsi
	js	.label_727
	mov	rdx, r10
	sub	rdx, rsi
	lea	rcx, [rdi + 0x70]
	mov	rax, qword ptr [rdi + 0x70]
	cmp	rdx, rax
	jl	.label_735
	jmp	.label_740
.label_727:
	lea	rcx, [rdi + 0x70]
	mov	rax, qword ptr [rdi + 0x70]
	lea	rdx, [r10 + 1]
	sub	rdx, rsi
	cmp	rax, rdx
	jge	.label_740
.label_735:
	add	rsi, rax
	mov	qword ptr [rcx], rsi
	mov	eax, 1
	jmp	.label_745
.label_740:
	add	rsi, rax
	mov	qword ptr [rcx], rsi
	xor	eax, eax
.label_745:
	or	r11d, eax
	mov	rcx, qword ptr [r8]
	test	rcx, rcx
	js	.label_692
	sub	r10, rcx
	lea	rsi, [rdi + 0x68]
	mov	rax, qword ptr [rdi + 0x68]
	cmp	r10, rax
	jl	.label_696
	jmp	.label_702
.label_692:
	lea	rsi, [rdi + 0x68]
	mov	rax, qword ptr [rdi + 0x68]
	inc	r10
	sub	r10, rcx
	cmp	rax, r10
	jge	.label_702
.label_696:
	add	rcx, rax
	mov	qword ptr [rsi], rcx
	mov	eax, 1
	jmp	.label_707
.label_702:
	add	rcx, rax
	mov	qword ptr [rsi], rcx
	xor	eax, eax
.label_707:
	or	r11d, eax
	je	.label_711
	xor	eax, eax
	ret	
.label_739:
	lea	esi, [rdx + 0x7fffffff]
	lea	rcx, [rdi + 0x98]
	mov	eax, dword ptr [rdi + 0x98]
	cmp	esi, eax
	jge	.label_708
.label_703:
	sub	eax, edx
	mov	dword ptr [rcx], eax
	mov	r9d, 1
	jmp	.label_717
.label_708:
	sub	eax, edx
	mov	dword ptr [rcx], eax
	xor	r9d, r9d
.label_717:
	mov	rdx, qword ptr [r8 + 0x28]
	test	rdx, rdx
	js	.label_722
	lea	rcx, [rdi + 0x90]
	mov	rsi, qword ptr [rdi + 0x90]
	lea	rax, [r10 + 1]
	xor	rax, rdx
	cmp	rsi, rax
	jl	.label_724
	jmp	.label_729
.label_722:
	lea	rax, [rdx + r10]
	lea	rcx, [rdi + 0x90]
	mov	rsi, qword ptr [rdi + 0x90]
	cmp	rax, rsi
	jge	.label_729
.label_724:
	sub	rsi, rdx
	mov	qword ptr [rcx], rsi
	mov	r11d, 1
	jmp	.label_713
.label_729:
	sub	rsi, rdx
	mov	qword ptr [rcx], rsi
	xor	r11d, r11d
.label_713:
	or	r11d, r9d
	mov	rsi, qword ptr [r8 + 0x20]
	test	rsi, rsi
	js	.label_738
	lea	r9, [rdi + 0x88]
	mov	rcx, qword ptr [rdi + 0x88]
	lea	rax, [r10 + 1]
	xor	rax, rsi
	cmp	rcx, rax
	jl	.label_741
	jmp	.label_689
.label_738:
	lea	rax, [rsi + r10]
	lea	r9, [rdi + 0x88]
	mov	rcx, qword ptr [rdi + 0x88]
	cmp	rax, rcx
	jge	.label_689
.label_741:
	sub	rcx, rsi
	mov	qword ptr [r9], rcx
	mov	eax, 1
	jmp	.label_697
.label_689:
	sub	rcx, rsi
	mov	qword ptr [r9], rcx
	xor	eax, eax
.label_697:
	or	r11d, eax
	mov	rsi, qword ptr [r8 + 0x18]
	test	rsi, rsi
	js	.label_701
	mov	rcx, rdi
	sub	rcx, -0x80
	mov	rax, qword ptr [rdi + 0x80]
	lea	rdx, [r10 + 1]
	xor	rdx, rsi
	cmp	rax, rdx
	jl	.label_706
	jmp	.label_712
.label_701:
	lea	r9, [rsi + r10]
	mov	rcx, rdi
	sub	rcx, -0x80
	mov	rax, qword ptr [rdi + 0x80]
	cmp	r9, rax
	jge	.label_712
.label_706:
	sub	rax, rsi
	mov	qword ptr [rcx], rax
	mov	eax, 1
	jmp	.label_716
.label_712:
	sub	rax, rsi
	mov	qword ptr [rcx], rax
	xor	eax, eax
.label_716:
	or	r11d, eax
	mov	rsi, qword ptr [r8 + 0x10]
	test	rsi, rsi
	js	.label_720
	lea	rcx, [rdi + 0x78]
	mov	rax, qword ptr [rdi + 0x78]
	lea	rdx, [r10 + 1]
	xor	rdx, rsi
	cmp	rax, rdx
	jl	.label_723
	jmp	.label_728
.label_720:
	lea	rdx, [rsi + r10]
	lea	rcx, [rdi + 0x78]
	mov	rax, qword ptr [rdi + 0x78]
	cmp	rdx, rax
	jge	.label_728
.label_723:
	sub	rax, rsi
	mov	qword ptr [rcx], rax
	mov	eax, 1
	jmp	.label_710
.label_728:
	sub	rax, rsi
	mov	qword ptr [rcx], rax
	xor	eax, eax
.label_710:
	or	r11d, eax
	mov	rsi, qword ptr [r8 + 8]
	test	rsi, rsi
	js	.label_733
	lea	rcx, [rdi + 0x70]
	mov	rax, qword ptr [rdi + 0x70]
	lea	rdx, [r10 + 1]
	xor	rdx, rsi
	cmp	rax, rdx
	jl	.label_736
	jmp	.label_742
.label_733:
	lea	rdx, [rsi + r10]
	lea	rcx, [rdi + 0x70]
	mov	rax, qword ptr [rdi + 0x70]
	cmp	rdx, rax
	jge	.label_742
.label_736:
	sub	rax, rsi
	mov	qword ptr [rcx], rax
	mov	eax, 1
	jmp	.label_688
.label_742:
	sub	rax, rsi
	mov	qword ptr [rcx], rax
	xor	eax, eax
.label_688:
	or	r11d, eax
	mov	rcx, qword ptr [r8]
	test	rcx, rcx
	js	.label_695
	lea	r8, [rdi + 0x68]
	mov	rsi, qword ptr [rdi + 0x68]
	inc	r10
	xor	r10, rcx
	cmp	rsi, r10
	jl	.label_698
	jmp	.label_705
.label_695:
	add	r10, rcx
	lea	r8, [rdi + 0x68]
	mov	rsi, qword ptr [rdi + 0x68]
	cmp	r10, rsi
	jge	.label_705
.label_698:
	sub	rsi, rcx
	mov	qword ptr [r8], rsi
	mov	eax, 1
	jmp	.label_709
.label_705:
	sub	rsi, rcx
	mov	qword ptr [r8], rsi
	xor	eax, eax
.label_709:
	or	r11d, eax
	je	.label_711
	xor	eax, eax
	ret	
.label_711:
	mov	byte ptr [rdi + 0xa1], 1
	mov	al, 1
	ret	
	.section	.text
	.align	32
	#Procedure 0x40866c
	.globl sub_40866c
	.type sub_40866c, @function
sub_40866c:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x408670
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
	#Procedure 0x4086a3
	.globl sub_4086a3
	.type sub_4086a3, @function
sub_4086a3:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4086b0
	.globl emit_bug_reporting_address
	.type emit_bug_reporting_address, @function
emit_bug_reporting_address:

	push	rax
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_746
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:label_747
	xor	eax, eax
	mov	rsi, rcx
	call	__printf_chk
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_749
	mov	edx, 5
	call	dcgettext
	mov	rsi, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:label_391
	mov	ecx, OFFSET FLAT:label_476
	xor	eax, eax
	call	__printf_chk
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_748
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	pop	rax
	jmp	fputs_unlocked
	.section	.text
	.align	32
	#Procedure 0x408724
	.globl sub_408724
	.type sub_408724, @function
sub_408724:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x408730

	.globl debug_print_relative_time
	.type debug_print_relative_time, @function
debug_print_relative_time:
	push	r14
	push	rbx
	push	rax
	mov	r14, rsi
	mov	rbx, rdi
	cmp	byte ptr [r14 + 0xd9], 0
	je	.label_768
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_753
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	xor	eax, eax
	mov	rdi, rcx
	mov	rsi, rbx
	call	dbg_printf
	mov	rcx, qword ptr [r14 + 0x68]
	test	rcx, rcx
	je	.label_764
	mov	rdi, qword ptr [rip + stderr]
	xor	ebx, ebx
	mov	esi, 1
	mov	edx, OFFSET FLAT:label_766
	mov	r8d, OFFSET FLAT:label_767
	xor	eax, eax
	call	__fprintf_chk
	mov	rcx, qword ptr [r14 + 0x70]
	mov	al, 1
	test	rcx, rcx
	jne	.label_758
	jmp	.label_751
.label_768:
	add	rsp, 8
	pop	rbx
	pop	r14
	ret	
.label_764:
	mov	rcx, qword ptr [r14 + 0x70]
	mov	ebx, 1
	test	rcx, rcx
	je	.label_763
.label_758:
	mov	rdi, qword ptr [rip + stderr]
	lea	rdx, qword ptr [rbx + label_756]
	mov	esi, 1
	mov	r8d, OFFSET FLAT:label_771
	xor	eax, eax
	call	__fprintf_chk
	mov	al, 1
.label_751:
	mov	rcx, qword ptr [r14 + 0x78]
	test	rcx, rcx
	je	.label_761
	mov	rdi, qword ptr [rip + stderr]
	movzx	eax, al
	xor	rax, 1
	lea	rdx, qword ptr [rax + label_756]
	mov	esi, 1
	mov	r8d, OFFSET FLAT:label_762
	xor	eax, eax
	call	__fprintf_chk
	mov	al, 1
.label_761:
	mov	rcx, qword ptr [r14 + 0x80]
	test	rcx, rcx
	je	.label_755
	mov	rdi, qword ptr [rip + stderr]
	movzx	eax, al
	xor	rax, 1
	lea	rdx, qword ptr [rax + label_756]
	mov	esi, 1
	mov	r8d, OFFSET FLAT:label_774
	xor	eax, eax
	call	__fprintf_chk
	mov	al, 1
.label_755:
	mov	rcx, qword ptr [r14 + 0x88]
	test	rcx, rcx
	je	.label_775
	mov	rdi, qword ptr [rip + stderr]
	movzx	eax, al
	xor	rax, 1
	lea	rdx, qword ptr [rax + label_756]
	mov	esi, 1
	mov	r8d, OFFSET FLAT:label_757
	xor	eax, eax
	call	__fprintf_chk
	mov	al, 1
.label_775:
	mov	rcx, qword ptr [r14 + 0x90]
	test	rcx, rcx
	je	.label_752
	mov	rdi, qword ptr [rip + stderr]
	movzx	eax, al
	xor	rax, 1
	lea	rdx, qword ptr [rax + label_756]
	mov	esi, 1
	mov	r8d, OFFSET FLAT:label_773
	xor	eax, eax
	call	__fprintf_chk
	mov	al, 1
.label_752:
	movsxd	rcx, dword ptr [r14 + 0x98]
	test	rcx, rcx
	je	.label_765
	mov	rdi, qword ptr [rip + stderr]
	movzx	eax, al
	xor	rax, 1
	lea	rdx, qword ptr [rax + label_756]
	mov	esi, 1
	mov	r8d, OFFSET FLAT:label_772
	xor	eax, eax
	call	__fprintf_chk
.label_765:
	mov	rsi, qword ptr [rip + stderr]
	mov	edi, 0xa
	add	rsp, 8
	pop	rbx
	pop	r14
	jmp	fputc
.label_763:
	cmp	qword ptr [r14 + 0x78], 0
	je	.label_769
	xor	eax, eax
	jmp	.label_751
.label_769:
	cmp	qword ptr [r14 + 0x80], 0
	je	.label_750
	xor	eax, eax
	jmp	.label_751
.label_750:
	cmp	qword ptr [r14 + 0x88], 0
	je	.label_759
	xor	eax, eax
	jmp	.label_751
.label_759:
	cmp	qword ptr [r14 + 0x90], 0
	je	.label_760
	xor	eax, eax
	jmp	.label_751
.label_760:
	cmp	dword ptr [r14 + 0x98], 0
	je	.label_770
	xor	eax, eax
	jmp	.label_751
.label_770:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_754
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stderr]
	mov	rdi, rax
	add	rsp, 8
	pop	rbx
	pop	r14
	jmp	fputs
	.section	.text
	.align	32
	#Procedure 0x40896c
	.globl sub_40896c
	.type sub_40896c, @function
sub_40896c:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x408970
	.globl xcharalloc
	.type xcharalloc, @function
xcharalloc:

	push	rbx
	mov	rbx, rdi
	call	malloc
	test	rbx, rbx
	je	.label_776
	test	rax, rax
	je	.label_777
.label_776:
	pop	rbx
	ret	
.label_777:
	call	xalloc_die
	.section	.text
	.align	32
	#Procedure 0x40898a
	.globl sub_40898a
	.type sub_40898a, @function
sub_40898a:

	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x408990
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
	#Procedure 0x40899f
	.globl sub_40899f
	.type sub_40899f, @function
sub_40899f:

	nop	
	.section	.text
	.align	32
	#Procedure 0x4089a0
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
	je	.label_778
	add	rbx, 8
	nop	word ptr cs:[rax + rax]
.label_779:
	mov	rdi, r12
	mov	rsi, r15
	mov	rdx, r14
	call	memcmp
	test	eax, eax
	mov	rax, r13
	je	.label_778
	mov	r13, qword ptr [rbx]
	add	rbx, 8
	add	r15, r14
	test	r13, r13
	mov	eax, 0
	jne	.label_779
.label_778:
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	ret	
	.section	.text
	.align	32
	#Procedure 0x408a03
	.globl sub_408a03
	.type sub_408a03, @function
sub_408a03:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x408a10

	.globl gettime
	.type gettime, @function
gettime:
	mov	rax, rdi
	xor	edi, edi
	mov	rsi, rax
	jmp	clock_gettime
	.section	.text
	.align	32
	#Procedure 0x408a1d
	.globl sub_408a1d
	.type sub_408a1d, @function
sub_408a1d:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x408a20
	.globl quotearg_free
	.type quotearg_free, @function
quotearg_free:

	push	r15
	push	r14
	push	rbx
	mov	r14, qword ptr [rip + slotvec]
	cmp	dword ptr [rip + nslots],  2
	jl	.label_780
	lea	r15, [r14 + 0x18]
	mov	ebx, 1
	nop	
.label_782:
	mov	rdi, qword ptr [r15]
	call	free
	inc	rbx
	movsxd	rax, dword ptr [rip + nslots]
	add	r15, 0x10
	cmp	rbx, rax
	jl	.label_782
.label_780:
	mov	rdi, qword ptr [r14 + 8]
	mov	eax, OFFSET FLAT:slot0
	cmp	rdi, rax
	je	.label_783
	call	free
	mov	qword ptr [rip + slotvec0],  0x100
	mov	qword ptr [rip + label_784], OFFSET FLAT:slot0
.label_783:
	mov	eax, OFFSET FLAT:slotvec0
	cmp	r14, rax
	je	.label_781
	mov	rdi, r14
	call	free
	mov	qword ptr [rip + slotvec], OFFSET FLAT:slotvec0
.label_781:
	mov	dword ptr [rip + nslots],  1
	pop	rbx
	pop	r14
	pop	r15
	ret	
	.section	.text
	.align	32
	#Procedure 0x408ab1
	.globl sub_408ab1
	.type sub_408ab1, @function
sub_408ab1:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x408ac0
	.globl close_stdout_set_ignore_EPIPE
	.type close_stdout_set_ignore_EPIPE, @function
close_stdout_set_ignore_EPIPE:

	mov	byte ptr [rip + ignore_EPIPE],  dil
	ret	
	.section	.text
	.align	32
	#Procedure 0x408ac8
	.globl sub_408ac8
	.type sub_408ac8, @function
sub_408ac8:

	nop	dword ptr [rax + rax]
.label_785:
	call	abort
	.section	.text
	.align	32
	#Procedure 0x408ad5
	.globl sub_408ad5
	.type sub_408ad5, @function
sub_408ad5:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x408ad9
	.globl quotearg_custom_mem
	.type quotearg_custom_mem, @function
quotearg_custom_mem:

	sub	rsp, 0x38
	mov	rax, qword ptr [rip + label_329]
	mov	qword ptr [rsp + 0x30], rax
	movups	xmm0, xmmword ptr [rip + label_330]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0, xmmword ptr [rip + label_331]
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
	#Procedure 0x408b40
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
	#Procedure 0x408b58
	.globl sub_408b58
	.type sub_408b58, @function
sub_408b58:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x408b60

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
	#Procedure 0x408b79
	.globl sub_408b79
	.type sub_408b79, @function
sub_408b79:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x408b80
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
	#Procedure 0x408bb6
	.globl sub_408bb6
	.type sub_408bb6, @function
sub_408bb6:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x408bc0
	.globl quotearg_custom
	.type quotearg_custom, @function
quotearg_custom:

	sub	rsp, 0x38
	mov	rax, rdx
	mov	rcx, qword ptr [rip + label_329]
	mov	qword ptr [rsp + 0x30], rcx
	movups	xmm0, xmmword ptr [rip + label_330]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0, xmmword ptr [rip + label_331]
	movaps	xmmword ptr [rsp + 0x10], xmm0
	movups	xmm0, xmmword ptr [rip + default_quoting_options]
	movaps	xmmword ptr [rsp], xmm0
	mov	dword ptr [rsp], 0xa
	test	rdi, rdi
	je	.label_786
	test	rsi, rsi
	je	.label_786
	mov	qword ptr [rsp + 0x28], rdi
	mov	qword ptr [rsp + 0x30], rsi
	lea	rcx, [rsp]
	xor	edi, edi
	mov	rdx, -1
	mov	rsi, rax
	call	quotearg_n_options
	add	rsp, 0x38
	ret	
.label_786:
	call	abort
	.section	.text
	.align	32
	#Procedure 0x408c30
	.globl close_stdout_set_file_name
	.type close_stdout_set_file_name, @function
close_stdout_set_file_name:

	mov	qword ptr [rip + file_name],  rdi
	ret	
	.section	.text
	.align	32
	#Procedure 0x408c38
	.globl sub_408c38
	.type sub_408c38, @function
sub_408c38:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x408c40
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
	#Procedure 0x408c58
	.globl sub_408c58
	.type sub_408c58, @function
sub_408c58:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x408c60

	.globl __argmatch_die
	.type __argmatch_die, @function
__argmatch_die:
	mov	edi, 1
	jmp	usage
	.section	.text
	.align	32
	#Procedure 0x408c6a
	.globl sub_408c6a
	.type sub_408c6a, @function
sub_408c6a:

	nop	word ptr [rax + rax]
.label_790:
	mov	esi, OFFSET FLAT:label_787
.label_789:
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
	#Procedure 0x408cc3

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
	je	.label_790
	mov	esi, OFFSET FLAT:label_788
	jmp	.label_789
	.section	.text
	.align	32
	#Procedure 0x408ce0

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
	#Procedure 0x408cf7
	.globl sub_408cf7
	.type sub_408cf7, @function
sub_408cf7:

	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x408d00

	.globl parse_datetime
	.type parse_datetime, @function
parse_datetime:
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
	mov	edi, OFFSET FLAT:label_17
	call	getenv
	mov	r13, rax
	mov	rdi, r13
	call	tzalloc
	mov	rbx, rax
	test	rbx, rbx
	je	.label_792
	xor	ecx, ecx
	mov	rdi, r12
	mov	rsi, r15
	mov	rdx, r14
	mov	r8, rbx
	mov	r9, r13
	call	parse_datetime2
	mov	bpl, al
	mov	rdi, rbx
	call	tzfree
	jmp	.label_791
.label_792:
	xor	ebp, ebp
.label_791:
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
	#Procedure 0x408d67
	.globl sub_408d67
	.type sub_408d67, @function
sub_408d67:

	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x408d70

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
.label_807:
	mov	r11, rbp
	xor	r14d, r14d
	mov	ecx, r15d
	cmp	r15d, 0xa
	ja	.label_804
	mov	edi, 7
	mov	r13b, 1
	xor	esi, esi
	mov	r8, qword ptr [rsp + 0x30]
	jmp	qword ptr [(rcx * 8) + label_811]
.label_1591:
	mov	byte ptr [rsp + 7], r10b
	mov	edi, OFFSET FLAT:label_816
	mov	esi, r15d
	mov	rbx, r11
	mov	ebp, r9d
	call	gettext_quote
	mov	qword ptr [rsp + 0x78], rax
	mov	edi, OFFSET FLAT:label_298
	mov	esi, r15d
	call	gettext_quote
	mov	r9d, ebp
	mov	r10b, byte ptr [rsp + 7]
	mov	r11, rbx
	mov	qword ptr [rsp + 0x70], rax
.label_1592:
	mov	dword ptr [rsp + 0x50], r9d
	mov	byte ptr [rsp + 7], r10b
	test	r12b, 1
	mov	r14d, 0
	mov	rcx, qword ptr [rsp + 0x78]
	jne	.label_831
	mov	al, byte ptr [rcx]
	test	al, al
	mov	r14d, 0
	je	.label_831
	xor	r14d, r14d
	nop	word ptr cs:[rax + rax]
.label_844:
	cmp	r14, r11
	jae	.label_895
	mov	rdx, qword ptr [rsp + 8]
	mov	byte ptr [rdx + r14], al
.label_895:
	movzx	eax, byte ptr [rcx + r14 + 1]
	inc	r14
	test	al, al
	jne	.label_844
.label_831:
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
	jmp	.label_810
.label_1584:
	xor	edi, edi
	xor	r14d, r14d
	mov	r13d, eax
	xor	esi, esi
	jmp	.label_810
.label_1587:
	mov	al, 1
.label_1585:
	mov	r12b, 1
.label_1588:
	test	r12b, 1
	mov	cl, 1
	je	.label_859
	mov	ecx, eax
.label_859:
	mov	al, cl
.label_1586:
	test	r12b, 1
	jne	.label_862
	test	r11, r11
	je	.label_856
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx], 0x27
.label_856:
	mov	r14d, 1
	jmp	.label_865
.label_862:
	xor	r14d, r14d
.label_865:
	mov	ecx, OFFSET FLAT:label_298
	mov	qword ptr [rsp + 0x48], rcx
	mov	ecx, 1
	mov	qword ptr [rsp + 0x40], rcx
	mov	r13d, eax
	mov	sil, r12b
	mov	edi, 2
	jmp	.label_810
.label_1589:
	test	r12b, 1
	jne	.label_880
	test	r11, r11
	je	.label_884
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax], 0x22
.label_884:
	mov	r14d, 1
	jmp	.label_885
.label_1590:
	mov	r13b, 1
	mov	edi, 5
	xor	r14d, r14d
	mov	eax, OFFSET FLAT:label_297
	mov	qword ptr [rsp + 0x48], rax
	mov	eax, 1
	mov	qword ptr [rsp + 0x40], rax
	mov	sil, 1
	jmp	.label_810
.label_880:
	xor	r14d, r14d
.label_885:
	mov	eax, OFFSET FLAT:label_297
	mov	qword ptr [rsp + 0x48], rax
	mov	eax, 1
	mov	qword ptr [rsp + 0x40], rax
	mov	r13b, 1
	mov	sil, r12b
	mov	edi, 5
	nop	word ptr cs:[rax + rax]
.label_810:
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
	jmp	.label_901
	.section	.text
	.align	32
	#Procedure 0x40905d
	.globl sub_40905d
	.type sub_40905d, @function
sub_40905d:

	nop	dword ptr [rax]
.label_846:
	inc	rsi
.label_901:
	cmp	rbp, -1
	je	.label_825
	cmp	rsi, rbp
	jne	.label_827
	jmp	.label_828
	.section	.text
	.align	32
	#Procedure 0x409073
	.globl sub_409073
	.type sub_409073, @function
sub_409073:

	nop	word ptr cs:[rax + rax]
.label_825:
	mov	rcx, -1
	cmp	byte ptr [rdi + rsi], 0
	je	.label_833
.label_827:
	cmp	byte ptr [rsp + 0x2f], 0
	je	.label_882
	mov	rax, qword ptr [rsp + 0x40]
	lea	rbx, [rsi + rax]
	cmp	rax, 2
	jb	.label_840
	cmp	rbp, -1
	jne	.label_840
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
.label_840:
	cmp	rbx, rbp
	jbe	.label_864
.label_882:
	xor	r8d, r8d
.label_850:
	movzx	r15d, byte ptr [rdi + rsi]
	cmp	r15, 0x7e
	ja	.label_879
	xor	edx, edx
	mov	r13b, 1
	mov	cl, 0x6e
	mov	bl, 0x61
	xor	eax, eax
	jmp	qword ptr [(r15 * 8) + label_853]
.label_1418:
	test	rsi, rsi
	jne	.label_847
	jmp	.label_858
	.section	.text
	.align	32
	#Procedure 0x409115
	.globl sub_409115
	.type sub_409115, @function
sub_409115:

	nop	word ptr cs:[rax + rax]
.label_864:
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
	jne	.label_870
	cmp	byte ptr [rsp + 6], 0
	mov	rdi, qword ptr [rsp + 0x30]
	mov	r11, rbx
	mov	r10d, r15d
	mov	rax, qword ptr [rsp + 0x38]
	mov	r9d, ebp
	mov	rsi, r12
	mov	r12, rax
	mov	rbp, qword ptr [rsp + 0x20]
	je	.label_850
	jmp	.label_868
.label_870:
	mov	rdi, qword ptr [rsp + 0x30]
	mov	r11, rbx
	mov	r10d, r15d
	mov	rax, qword ptr [rsp + 0x38]
	mov	r9d, ebp
	mov	rsi, r12
	mov	r12, rax
	mov	rbp, qword ptr [rsp + 0x20]
	jmp	.label_850
.label_1417:
	xor	eax, eax
	cmp	rbp, -1
	je	.label_893
	test	rsi, rsi
	jne	.label_894
	cmp	rbp, 1
	je	.label_858
	xor	r13d, r13d
	jmp	.label_803
.label_1594:
	cmp	byte ptr [rsp + 0x17], 0
	je	.label_900
	cmp	byte ptr [rsp + 6], 0
	jne	.label_845
	cmp	r12d, 2
	jne	.label_904
	mov	eax, r9d
	and	al, 1
	jne	.label_904
	cmp	r14, r11
	jae	.label_907
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], 0x27
.label_907:
	lea	rax, [r14 + 1]
	cmp	rax, r11
	jae	.label_909
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + rax], 0x24
.label_909:
	lea	rax, [r14 + 2]
	cmp	rax, r11
	jae	.label_812
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + rax], 0x27
.label_812:
	add	r14, 3
	mov	r9b, 1
.label_904:
	mov	rcx, r14
	cmp	rcx, r11
	jae	.label_808
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + rcx], 0x5c
.label_808:
	lea	r14, [rcx + 1]
	mov	al, 1
	mov	r15b, 0x30
	cmp	r12d, 2
	je	.label_813
	lea	rdx, [rsi + 1]
	cmp	rdx, rbp
	jae	.label_813
	mov	dl, byte ptr [rdi + rdx]
	add	dl, 0xd0
	cmp	dl, 9
	ja	.label_813
	cmp	r14, r11
	jae	.label_910
	mov	rdx, qword ptr [rsp + 8]
	mov	byte ptr [rdx + r14], 0x30
.label_910:
	lea	rdx, [rcx + 2]
	cmp	rdx, r11
	jae	.label_897
	mov	rbx, qword ptr [rsp + 8]
	mov	byte ptr [rbx + rdx], 0x30
.label_897:
	add	rcx, 3
	xor	r13d, r13d
	mov	r14, rcx
	jmp	.label_803
.label_1595:
	mov	bl, 0x62
	jmp	.label_836
.label_1596:
	mov	cl, 0x74
	jmp	.label_801
.label_1597:
	mov	bl, 0x76
	jmp	.label_836
.label_1598:
	mov	bl, 0x66
	jmp	.label_836
.label_1599:
	mov	cl, 0x72
	jmp	.label_801
.label_1600:
	mov	r15b, 0x27
	mov	al, 1
	mov	qword ptr [rsp + 0xa0], rax
	cmp	r12d, 2
	jne	.label_843
	cmp	byte ptr [rsp + 6], 0
	jne	.label_814
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
	jae	.label_849
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], 0x27
.label_849:
	lea	rax, [r14 + 1]
	cmp	rax, r11
	jae	.label_857
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + rax], 0x5c
.label_857:
	lea	rax, [r14 + 2]
	cmp	rax, r11
	jae	.label_860
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + rax], 0x27
.label_860:
	add	r14, 3
	xor	r9d, r9d
.label_843:
	xor	eax, eax
	mov	r13b, 1
	jmp	.label_803
.label_1415:
	mov	r15b, 0x3f
	cmp	r12d, 5
	je	.label_866
	cmp	r12d, 2
	jne	.label_847
	cmp	byte ptr [rsp + 6], 0
	je	.label_847
	jmp	.label_814
.label_1416:
	cmp	r12d, 2
	jne	.label_881
	cmp	byte ptr [rsp + 6], 0
	jne	.label_814
	mov	r15b, 0x5c
	xor	eax, eax
	xor	r13d, r13d
	jmp	.label_832
.label_879:
	mov	dword ptr [rsp + 0x54], r8d
	mov	dword ptr [rsp + 0x50], r9d
	mov	byte ptr [rsp + 7], r10b
	mov	qword ptr [rsp + 0x98], r11
	cmp	qword ptr [rsp + 0xa8], 1
	jne	.label_891
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
.label_842:
	and	r13b, 1
	mov	r8d, r13d
	or	r8b, byte ptr [rsp + 0x2a]
	mov	qword ptr [rsp + 0x60], r12
	cmp	r12, 1
	mov	r11, qword ptr [rsp + 0x98]
	mov	r10b, byte ptr [rsp + 7]
	mov	r12, qword ptr [rsp + 0x38]
	mov	r9d, dword ptr [rsp + 0x50]
	ja	.label_797
	test	r8b, r8b
	je	.label_797
	xor	eax, eax
	mov	rbp, qword ptr [rsp + 0x20]
	mov	r8d, dword ptr [rsp + 0x54]
	jmp	.label_803
.label_893:
	test	rsi, rsi
	jne	.label_834
	mov	cl, byte ptr [rdi + 1]
	test	cl, cl
	jne	.label_834
.label_858:
	mov	dl, 1
.label_1414:
	cmp	byte ptr [rsp + 0x1f], 0
	je	.label_814
	xor	eax, eax
	mov	r13b, dl
	nop	word ptr [rax + rax]
.label_803:
	cmp	byte ptr [rsp + 0x2e], 0
	je	.label_819
	cmp	qword ptr [rsp + 0xf0], 0
	jne	.label_820
	jmp	.label_824
	.section	.text
	.align	32
	#Procedure 0x409464
	.globl sub_409464
	.type sub_409464, @function
sub_409464:

	nop	word ptr cs:[rax + rax]
.label_819:
	cmp	byte ptr [rsp + 0x2d], 0
	je	.label_824
.label_820:
	mov	ebx, r8d
	mov	r8, rsi
	mov	ecx, r15d
	shr	cl, 5
	movzx	edx, cl
	mov	esi, 1
	mov	ecx, r15d
	shl	esi, cl
	test	bl, bl
	jne	.label_829
	mov	rcx, qword ptr [rsp + 0xf0]
	and	esi, dword ptr [rcx + rdx*4]
	mov	ebx, r15d
	mov	rsi, r8
	je	.label_832
	jmp	.label_841
	.section	.text
	.align	32
	#Procedure 0x4094ad
	.globl sub_4094ad
	.type sub_4094ad, @function
sub_4094ad:

	nop	dword ptr [rax]
.label_824:
	test	r8b, r8b
	mov	ebx, r15d
	jne	.label_841
	jmp	.label_832
.label_829:
	mov	ebx, r15d
	mov	rsi, r8
	jmp	.label_841
.label_900:
	cmp	dword ptr [rsp + 0x90], 0
	jne	.label_846
	xor	r15d, r15d
	jmp	.label_847
.label_881:
	mov	cl, 0x5c
	cmp	byte ptr [rsp + 0x29], 0
	je	.label_801
	xor	eax, eax
	mov	r15b, 0x5c
	xor	r13d, r13d
	jmp	.label_832
.label_801:
	cmp	byte ptr [rsp + 0x1f], 0
	mov	ebx, ecx
	je	.label_814
.label_836:
	xor	eax, eax
	cmp	byte ptr [rsp + 0x17], 0
	mov	r13d, 0
	je	.label_803
	nop	word ptr cs:[rax + rax]
.label_841:
	cmp	byte ptr [rsp + 6], 0
	jne	.label_845
	cmp	r12d, 2
	jne	.label_863
	mov	eax, r9d
	and	al, 1
	jne	.label_863
	cmp	r14, r11
	jae	.label_874
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], 0x27
.label_874:
	lea	rax, [r14 + 1]
	cmp	rax, r11
	jae	.label_872
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + rax], 0x24
.label_872:
	lea	rax, [r14 + 2]
	cmp	rax, r11
	jae	.label_861
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + rax], 0x27
.label_861:
	add	r14, 3
	mov	r9b, 1
.label_863:
	cmp	r14, r11
	jae	.label_800
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], 0x5c
.label_800:
	inc	r14
	jmp	.label_888
.label_891:
	mov	qword ptr [rsp + 0x80], 0
	cmp	rbp, -1
	jne	.label_892
	mov	rbx, rsi
	call	strlen
	mov	rsi, rbx
	mov	rdi, qword ptr [rsp + 0x30]
	mov	rbp, rax
.label_892:
	lea	rax, [rdi + rsi]
	mov	qword ptr [rsp + 0x60], rax
	mov	r13b, 1
	xor	r12d, r12d
	lea	rax, [rsp + 0x80]
	mov	rcx, rax
	mov	qword ptr [rsp + 0x20], rbp
	mov	qword ptr [rsp + 0x58], rsi
.label_886:
	lea	rbx, [r12 + rsi]
	lea	rsi, [rdi + rbx]
	mov	rdx, rbp
	sub	rdx, rbx
	lea	rdi, [rsp + 0x94]
	call	rpl_mbrtowc
	mov	rbp, rax
	test	rbp, rbp
	je	.label_908
	cmp	rbp, -1
	movabs	rsi, 0x20000002b
	je	.label_911
	cmp	rbp, -2
	je	.label_818
	cmp	rbp, 1
	seta	al
	and	al, byte ptr [rsp + 0x2b]
	cmp	al, 1
	mov	rdi, qword ptr [rsp + 0x30]
	mov	r11, qword ptr [rsp + 0x98]
	jne	.label_883
	mov	rax, qword ptr [rsp + 0x60]
	lea	rax, [rax + r12]
	mov	ecx, 1
	nop	word ptr cs:[rax + rax]
.label_809:
	movsx	edx, byte ptr [rax + rcx]
	add	edx, -0x5b
	cmp	edx, 0x21
	ja	.label_906
	bt	rsi, rdx
	jb	.label_822
.label_906:
	inc	rcx
	cmp	rcx, rbp
	jb	.label_809
.label_883:
	mov	edi, dword ptr [rsp + 0x94]
	call	iswprint
	test	eax, eax
	jne	.label_867
	xor	r13d, r13d
.label_867:
	lea	rdi, [rsp + 0x80]
	add	r12, rbp
	mov	rbx, rdi
	call	mbsinit
	mov	rcx, rbx
	test	eax, eax
	mov	rdi, qword ptr [rsp + 0x30]
	mov	rbp, qword ptr [rsp + 0x20]
	mov	rsi, qword ptr [rsp + 0x58]
	je	.label_886
	jmp	.label_842
.label_813:
	xor	r13d, r13d
	jmp	.label_803
.label_834:
	mov	rbp, -1
	xor	r13d, r13d
	jmp	.label_803
.label_866:
	cmp	dword ptr [rsp + 0x8c], 0
	je	.label_847
	lea	rcx, [rsi + 2]
	cmp	rcx, rbp
	jae	.label_847
	cmp	byte ptr [rdi + rsi + 1], 0x3f
	jne	.label_847
	movsx	edx, byte ptr [rdi + rcx]
	xor	eax, eax
	cmp	edx, 0x3e
	ja	.label_852
	mov	rbx, rsi
	movabs	rsi, 0x7000a38200000000
	bt	rsi, rdx
	jae	.label_912
	cmp	byte ptr [rsp + 6], 0
	jne	.label_875
	cmp	r14, r11
	jae	.label_838
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], 0x3f
.label_838:
	lea	rax, [r14 + 1]
	cmp	rax, r11
	jae	.label_823
	mov	rsi, qword ptr [rsp + 8]
	mov	byte ptr [rsi + rax], 0x22
.label_823:
	lea	rax, [r14 + 2]
	cmp	rax, r11
	jae	.label_869
	mov	rsi, qword ptr [rsp + 8]
	mov	byte ptr [rsi + rax], 0x22
.label_869:
	lea	rax, [r14 + 3]
	cmp	rax, r11
	jae	.label_805
	mov	rsi, qword ptr [rsp + 8]
	mov	byte ptr [rsi + rax], 0x3f
.label_805:
	add	r14, 4
	xor	eax, eax
	mov	rsi, rcx
	mov	r15b, dl
	xor	r13d, r13d
	jmp	.label_803
.label_847:
	xor	eax, eax
.label_894:
	xor	r13d, r13d
	jmp	.label_803
.label_797:
	add	qword ptr [rsp + 0x60], rsi
	xor	eax, eax
	mov	rbp, qword ptr [rsp + 0x20]
	jmp	.label_890
	.section	.text
	.align	32
	#Procedure 0x409792
	.globl sub_409792
	.type sub_409792, @function
sub_409792:

	nop	word ptr cs:[rax + rax]
.label_848:
	inc	r14
	mov	r15b, byte ptr [rdi + rsi + 1]
	mov	rsi, rdx
.label_890:
	test	r8b, r8b
	je	.label_793
	mov	ecx, dword ptr [rsp + 0x54]
	test	cl, 1
	je	.label_896
	cmp	r14, r11
	jae	.label_898
	mov	rdx, qword ptr [rsp + 8]
	mov	byte ptr [rdx + r14], 0x5c
.label_898:
	inc	r14
	mov	dword ptr [rsp + 0x54], 0
	jmp	.label_896
	.section	.text
	.align	32
	#Procedure 0x4097dc
	.globl sub_4097dc
	.type sub_4097dc, @function
sub_4097dc:

	nop	dword ptr [rax]
.label_793:
	cmp	byte ptr [rsp + 6], 0
	jne	.label_868
	cmp	r12d, 2
	jne	.label_889
	mov	eax, r9d
	and	al, 1
	jne	.label_889
	cmp	r14, r11
	jae	.label_902
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], 0x27
.label_902:
	lea	rax, [r14 + 1]
	cmp	rax, r11
	jae	.label_795
	mov	rdx, qword ptr [rsp + 8]
	mov	byte ptr [rdx + rax], 0x24
.label_795:
	lea	rax, [r14 + 2]
	cmp	rax, r11
	jae	.label_806
	mov	rdx, qword ptr [rsp + 8]
	mov	byte ptr [rdx + rax], 0x27
.label_806:
	add	r14, 3
	mov	r9b, 1
.label_889:
	cmp	r14, r11
	jae	.label_877
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], 0x5c
.label_877:
	lea	rax, [r14 + 1]
	cmp	rax, r11
	jae	.label_826
	mov	edx, r15d
	shr	dl, 6
	or	dl, 0x30
	mov	rbx, qword ptr [rsp + 8]
	mov	byte ptr [rbx + rax], dl
.label_826:
	lea	rax, [r14 + 2]
	cmp	rax, r11
	jae	.label_821
	mov	edx, r15d
	shr	dl, 3
	and	dl, 7
	or	dl, 0x30
	mov	rbx, qword ptr [rsp + 8]
	mov	byte ptr [rbx + rax], dl
.label_821:
	add	r14, 3
	and	r15b, 7
	or	r15b, 0x30
	mov	al, 1
.label_896:
	lea	rdx, [rsi + 1]
	cmp	qword ptr [rsp + 0x60], rdx
	jbe	.label_832
	test	r9b, 1
	je	.label_837
	mov	ebx, eax
	and	bl, 1
	jne	.label_837
	mov	rbx, rsi
	cmp	r14, r11
	jae	.label_839
	mov	rsi, qword ptr [rsp + 8]
	mov	byte ptr [rsi + r14], 0x27
.label_839:
	lea	rsi, [r14 + 1]
	cmp	rsi, r11
	jae	.label_802
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + rsi], 0x27
.label_802:
	add	r14, 2
	xor	r9d, r9d
	mov	rsi, rbx
.label_837:
	cmp	r14, r11
	jae	.label_848
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + r14], r15b
	jmp	.label_848
	.section	.text
	.align	32
	#Procedure 0x4098e3
	.globl sub_4098e3
	.type sub_4098e3, @function
sub_4098e3:

	nop	word ptr cs:[rax + rax]
.label_832:
	test	r9b, 1
	je	.label_854
	and	al, 1
	jne	.label_854
	cmp	r14, r11
	jae	.label_855
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], 0x27
.label_855:
	lea	rax, [r14 + 1]
	cmp	rax, r11
	jae	.label_905
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + rax], 0x27
.label_905:
	add	r14, 2
	xor	r9d, r9d
.label_854:
	mov	ebx, r15d
.label_888:
	cmp	r14, r11
	jae	.label_851
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], bl
.label_851:
	inc	r14
	shl	r13b, 7
	sar	r13b, 7
	and	r13b, r10b
	mov	r10d, r13d
	jmp	.label_846
.label_911:
	xor	r13d, r13d
.label_908:
	mov	rdi, qword ptr [rsp + 0x30]
	mov	rsi, qword ptr [rsp + 0x58]
	jmp	.label_842
.label_818:
	mov	rbp, qword ptr [rsp + 0x20]
	cmp	rbp, rbx
	mov	rdi, qword ptr [rsp + 0x30]
	jbe	.label_878
	mov	rsi, qword ptr [rsp + 0x58]
.label_887:
	mov	rax, qword ptr [rsp + 0x60]
	cmp	byte ptr [rax + r12], 0
	je	.label_871
	lea	rax, [rsi + r12 + 1]
	inc	r12
	cmp	rax, rbp
	jb	.label_887
	xor	r13d, r13d
	jmp	.label_842
.label_878:
	xor	r13d, r13d
	mov	rsi, qword ptr [rsp + 0x58]
	jmp	.label_842
.label_871:
	xor	r13d, r13d
	jmp	.label_842
.label_852:
	xor	r13d, r13d
	jmp	.label_803
.label_912:
	xor	r13d, r13d
	mov	rsi, rbx
	jmp	.label_803
	.section	.text
	.align	32
	#Procedure 0x4099b8
	.globl sub_4099b8
	.type sub_4099b8, @function
sub_4099b8:

	nop	dword ptr [rax + rax]
.label_828:
	mov	rcx, rsi
.label_833:
	cmp	r12d, 2
	setne	al
	test	r14, r14
	setne	dl
	cmp	byte ptr [rsp + 6], 0
	je	.label_899
	or	al, dl
	je	.label_903
.label_899:
	cmp	r12d, 2
	setne	al
	cmp	byte ptr [rsp + 6], 0
	setne	dl
	mov	rsi, qword ptr [rsp + 0xa0]
	test	sil, 1
	mov	bl, byte ptr [rsp + 0x2c]
	mov	rsi, qword ptr [rsp + 0xb0]
	je	.label_796
	or	al, dl
	jne	.label_796
	test	r10b, 1
	jne	.label_799
	cmp	qword ptr [rsp + 0x68], 0
	je	.label_796
	test	r11, r11
	mov	r15d, r12d
	mov	al, bl
	mov	qword ptr [rsp + 0x20], rcx
	mov	r12d, esi
	mov	rbp, qword ptr [rsp + 0x68]
	je	.label_807
.label_796:
	mov	rdx, qword ptr [rsp + 0x48]
	test	rdx, rdx
	je	.label_815
	cmp	byte ptr [rsp + 6], 0
	mov	rcx, qword ptr [rsp + 8]
	jne	.label_798
	mov	al, byte ptr [rdx]
	test	al, al
	je	.label_798
	inc	rdx
	nop	word ptr cs:[rax + rax]
.label_830:
	cmp	r14, r11
	jae	.label_794
	mov	byte ptr [rcx + r14], al
.label_794:
	inc	r14
	movzx	eax, byte ptr [rdx]
	inc	rdx
	test	al, al
	jne	.label_830
	jmp	.label_798
.label_845:
	mov	qword ptr [rsp + 0x20], rbp
.label_868:
	mov	rdx, rdi
	jmp	.label_835
.label_814:
	mov	qword ptr [rsp + 0x20], rbp
.label_822:
	mov	rdx, rdi
	mov	eax, 2
.label_817:
	mov	qword ptr [rsp + 0x38], rax
.label_835:
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
.label_873:
	mov	r14, rax
.label_876:
	mov	rax, r14
	add	rsp, 0xb8
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_903:
	mov	rdx, rdi
	mov	qword ptr [rsp + 0x20], rcx
	jmp	.label_835
.label_799:
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
	jmp	.label_873
.label_815:
	mov	rcx, qword ptr [rsp + 8]
.label_798:
	cmp	r14, r11
	jae	.label_876
	mov	byte ptr [rcx + r14], 0
	jmp	.label_876
.label_875:
	mov	qword ptr [rsp + 0x20], rbp
	mov	rdx, rdi
	mov	eax, 5
	jmp	.label_817
.label_804:
	call	abort
	.section	.text
	.align	32
	#Procedure 0x409b77
	.globl sub_409b77
	.type sub_409b77, @function
sub_409b77:

	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x409b80

	.globl debug_print_current_time
	.type debug_print_current_time, @function
debug_print_current_time:
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x70
	mov	r15, rsi
	mov	rbx, rdi
	cmp	byte ptr [r15 + 0xd9], 0
	jne	.label_913
.label_926:
	add	rsp, 0x70
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	ret	
.label_913:
	xor	r12d, r12d
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_753
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	xor	eax, eax
	mov	rdi, rcx
	mov	rsi, rbx
	call	dbg_printf
	cmp	qword ptr [r15 + 0xa8], 0
	je	.label_915
	cmp	byte ptr [r15 + 0xda], 0
	jne	.label_932
	mov	rdi, qword ptr [rip + stderr]
	mov	rcx, qword ptr [r15 + 0x28]
	mov	r8, qword ptr [r15 + 0x38]
	mov	r9, qword ptr [r15 + 0x40]
	mov	esi, 1
	mov	edx, OFFSET FLAT:label_931
	xor	eax, eax
	call	__fprintf_chk
	mov	byte ptr [r15 + 0xda], 1
	mov	r12b, 1
	jmp	.label_915
.label_932:
	xor	r12d, r12d
.label_915:
	mov	rax, qword ptr [r15 + 0xd8]
	mov	rcx, rax
	shr	rcx, 0x38
	cmp	al, cl
	je	.label_921
	test	r12b, r12b
	je	.label_923
	mov	rsi, qword ptr [rip + stderr]
	mov	edi, 0x20
	call	fputc
.label_923:
	mov	rbx, qword ptr [rip + stderr]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_939
	mov	edx, 5
	call	dcgettext
	mov	rdx, rax
	mov	rcx, qword ptr [r15 + 0x28]
	mov	esi, 1
	xor	eax, eax
	mov	rdi, rbx
	call	__fprintf_chk
	mov	rax, qword ptr [r15 + 0xd8]
	mov	byte ptr [r15 + 0xdf], al
	mov	r12b, 1
.label_921:
	cmp	qword ptr [r15 + 0xc8], 0
	je	.label_918
	shr	rax, 0x28
	test	al, al
	jne	.label_918
	mov	r9, qword ptr [r15 + 0x58]
	mov	rdi, qword ptr [rip + stderr]
	xor	r12b, 1
	movzx	eax, r12b
	lea	rdx, qword ptr [rax + label_920]
	mov	rcx, qword ptr [r15 + 0x48]
	mov	r8, qword ptr [r15 + 0x50]
	mov	esi, 1
	xor	eax, eax
	call	__fprintf_chk
	mov	rcx, qword ptr [r15 + 0x60]
	test	rcx, rcx
	je	.label_928
	mov	rdi, qword ptr [rip + stderr]
	mov	esi, 1
	mov	edx, OFFSET FLAT:label_929
	xor	eax, eax
	call	__fprintf_chk
.label_928:
	cmp	dword ptr [r15 + 0x1c], 1
	jne	.label_935
	mov	rcx, qword ptr [rip + stderr]
	mov	edi, OFFSET FLAT:label_59
	mov	esi, 2
	mov	edx, 1
	call	fwrite
.label_935:
	mov	byte ptr [r15 + 0xdd], 1
	mov	r12b, 1
.label_918:
	cmp	qword ptr [r15 + 0xb0], 0
	je	.label_919
	cmp	byte ptr [r15 + 0xdb], 0
	jne	.label_919
	test	r12b, r12b
	je	.label_922
	mov	rsi, qword ptr [rip + stderr]
	mov	edi, 0x20
	call	fputc
.label_922:
	mov	r14, qword ptr [rip + stderr]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_927
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
	lea	rsi, [rsp]
	mov	rdi, r15
	call	str_days
	mov	rcx, rax
	mov	r8, qword ptr [r15 + 8]
	mov	r9d, dword ptr [r15 + 0x10]
	mov	esi, 1
	xor	eax, eax
	mov	rdi, r14
	mov	rdx, rbx
	call	__fprintf_chk
	mov	byte ptr [r15 + 0xdb], 1
	mov	r12b, 1
.label_919:
	cmp	qword ptr [r15 + 0xb8], 0
	je	.label_916
	cmp	byte ptr [r15 + 0xdc], 0
	jne	.label_916
	mov	rdi, qword ptr [rip + stderr]
	xor	r12b, 1
	movzx	eax, r12b
	lea	rdx, qword ptr [rax + label_924]
	cmp	qword ptr [r15 + 0xc0], 0
	mov	ecx, dword ptr [r15 + 0x14]
	mov	eax, OFFSET FLAT:label_925
	mov	r8d, OFFSET FLAT:label_60
	cmovne	r8, rax
	mov	esi, 1
	xor	eax, eax
	call	__fprintf_chk
	mov	byte ptr [r15 + 0xdc], 1
	mov	r12b, 1
.label_916:
	cmp	qword ptr [r15 + 0xd0], 0
	je	.label_936
	cmp	byte ptr [r15 + 0xde], 0
	jne	.label_936
	mov	r14, qword ptr [rip + stderr]
	xor	r12b, 1
	movsxd	r13, dword ptr [r15 + 0x18]
	mov	eax, r13d
	shr	eax, 0x1f
	imul	rbx, r13, -0x6e5d4c3b
	shr	rbx, 0x20
	add	ebx, r13d
	mov	ecx, ebx
	shr	ecx, 0x1f
	sar	ebx, 0xb
	add	ebx, ecx
	mov	r9d, ebx
	neg	r9d
	cmp	r13, -0xe10
	lea	r8d, [rax + rax + 0x2b]
	cmovg	r9d, ebx
	lea	rdi, [rsp]
	mov	esi, 1
	mov	edx, 0x1b
	mov	ecx, OFFSET FLAT:label_209
	xor	eax, eax
	call	__sprintf_chk
	imul	edx, ebx, 0xe10
	mov	esi, r13d
	sub	esi, edx
	mov	ecx, esi
	neg	ecx
	cmovl	ecx, esi
	cmp	r13d, edx
	movzx	edx, r12b
	lea	rdx, qword ptr [rdx + label_933]
	je	.label_934
	cdqe	
	lea	rax, [rsp + rax]
	movsxd	r9, ecx
	imul	rsi, r9, -0x77777777
	shr	rsi, 0x20
	add	esi, r9d
	mov	edi, esi
	shr	edi, 0x1f
	sar	esi, 5
	add	esi, edi
	imul	r8d, esi, 0x3c
	imul	rbx, r9, 0x1b4e81b5
	mov	r10, rbx
	shr	r10, 0x3f
	shr	rbx, 0x26
	movsxd	rsi, esi
	imul	rcx, rsi, 0x66666667
	mov	rdi, rcx
	shr	rdi, 0x3f
	sar	rcx, 0x22
	add	ecx, edi
	add	ecx, ecx
	lea	ecx, [rcx + rcx*4]
	sub	esi, ecx
	add	esi, 0x30
	sub	r9d, r8d
	mov	byte ptr [rax], 0x3a
	lea	ecx, [rbx + r10 + 0x30]
	mov	byte ptr [rax + 1], cl
	mov	byte ptr [rax + 2], sil
	jne	.label_914
	add	rax, 3
	jmp	.label_937
.label_914:
	mov	byte ptr [rax + 3], 0x3a
	movsxd	rcx, r9d
	imul	rcx, rcx, 0x66666667
	mov	rsi, rcx
	shr	rsi, 0x3f
	sar	rcx, 0x22
	lea	edi, [rcx + rsi]
	lea	ecx, [rcx + rsi + 0x30]
	mov	byte ptr [rax + 4], cl
	add	edi, edi
	lea	ecx, [rdi + rdi*4]
	neg	ecx
	lea	ecx, [r9 + rcx + 0x30]
	mov	byte ptr [rax + 5], cl
	add	rax, 6
.label_937:
	mov	byte ptr [rax], 0
.label_934:
	lea	rcx, [rsp]
	mov	esi, 1
	xor	eax, eax
	mov	rdi, r14
	call	__fprintf_chk
	mov	byte ptr [r15 + 0xde], 1
	mov	r12b, 1
.label_936:
	cmp	byte ptr [r15 + 0xa0], 0
	je	.label_930
	mov	r14, qword ptr [r15 + 0x58]
	test	r12b, r12b
	je	.label_917
	mov	rsi, qword ptr [rip + stderr]
	mov	edi, 0x20
	call	fputc
.label_917:
	mov	rbx, qword ptr [rip + stderr]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_938
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	mov	esi, 1
	xor	eax, eax
	mov	rdi, rbx
	mov	rdx, rcx
	mov	rcx, r14
	call	__fprintf_chk
.label_930:
	mov	rsi, qword ptr [rip + stderr]
	mov	edi, 0xa
	call	fputc
	jmp	.label_926
	.section	.text
	.align	32
	#Procedure 0x409fb7
	.globl sub_409fb7
	.type sub_409fb7, @function
sub_409fb7:

	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x409fc0
	.globl quotearg_char
	.type quotearg_char, @function
quotearg_char:

	sub	rsp, 0x38
	mov	ecx, esi
	mov	rax, rdi
	mov	rdx, qword ptr [rip + label_329]
	mov	qword ptr [rsp + 0x30], rdx
	movups	xmm0, xmmword ptr [rip + label_330]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0, xmmword ptr [rip + label_331]
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
	#Procedure 0x40a02f
	.globl sub_40a02f
	.type sub_40a02f, @function
sub_40a02f:

	nop	
	.section	.text
	.align	32
	#Procedure 0x40a030

	.globl fdutimensat
	.type fdutimensat, @function
fdutimensat:
	push	rbp
	push	r15
	push	r14
	push	r12
	push	rbx
	mov	r14d, r8d
	mov	r12, rcx
	mov	rbp, rdx
	mov	r15d, esi
	mov	ebx, edi
	mov	eax, 1
	test	ebx, ebx
	js	.label_942
	mov	edi, ebx
	mov	rsi, r12
	call	futimens
.label_942:
	test	rbp, rbp
	je	.label_940
	test	ebx, ebx
	js	.label_943
	cmp	eax, -1
	jne	.label_940
	call	__errno_location
	mov	rcx, rax
	mov	eax, 0xffffffff
	cmp	dword ptr [rcx], 0x26
	jne	.label_941
.label_943:
	mov	edi, r15d
	mov	rsi, rbp
	mov	rdx, r12
	mov	ecx, r14d
	call	utimensat
.label_940:
	cmp	eax, 1
	jne	.label_941
	call	__errno_location
	mov	dword ptr [rax], 9
	mov	eax, 0xffffffff
.label_941:
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40a0a8
	.globl sub_40a0a8
	.type sub_40a0a8, @function
sub_40a0a8:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40a0b0

	.globl yyparse
	.type yyparse, @function
yyparse:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x588
	mov	r14, rdi
	lea	r13, [rsp + 0x120]
	mov	word ptr [rsp + 0xf0], 0
	lea	rax, [r14 + 0x58]
	mov	qword ptr [rsp + 0xc0], rax
	lea	rax, [r14 + 0x50]
	mov	qword ptr [rsp + 0xd8], rax
	lea	rax, [r14 + 0x20]
	mov	qword ptr [rsp + 0xb8], rax
	mov	r12d, 0xfffffffe
	movabs	r8, 0x8000000000000000
	movabs	rax, 0x3ffffff03ffffff
	movabs	rcx, 0x3ffffffffffffff
	and	rcx, rax
	mov	qword ptr [rsp + 0xe8], rcx
	mov	r15d, 0x80001f
	mov	r9d, 0xffffffff
	movabs	r10, 0xf333333333333334
	movabs	r11, 0xccccccccccccccc
	mov	eax, 0
	mov	edi, 0
	xor	ecx, ecx
	mov	qword ptr [rsp + 0x98], rcx
	xor	ecx, ecx
	mov	qword ptr [rsp + 0xe0], rcx
	mov	dword ptr [rsp + 0x94], 0
	xor	ecx, ecx
	mov	qword ptr [rsp + 0xc8], rcx
	jmp	.label_990
	.section	.text
	.align	32
	#Procedure 0x40a181
	.globl sub_40a181
	.type sub_40a181, @function
sub_40a181:

	nop	word ptr cs:[rax + rax]
.label_1022:
	movsxd	rsi, eax
	movsx	edx, byte ptr [rsi + yypact]
	cmp	edx, -0x5d
	je	.label_1049
	cmp	r12d, -2
	jne	.label_1053
	mov	dword ptr [rsp + 0x58], edx
	mov	qword ptr [rsp + 0x50], rsi
	mov	qword ptr [rsp + 0x48], rdi
	mov	rdi, qword ptr [r14]
	mov	rdx, rdi
	jmp	.label_1060
.label_1140:
	mov	rdi, rdx
	nop	word ptr cs:[rax + rax]
.label_1060:
	mov	sil, byte ptr [rdx]
	movzx	eax, sil
	lea	ebp, [rax - 9]
	cmp	ebp, 0x17
	ja	.label_1057
	inc	rdx
	nop	word ptr cs:[rax + rax]
.label_1068:
	mov	rcx, rdx
	bt	r15d, ebp
	jae	.label_1146
	mov	qword ptr [r14], rcx
	mov	sil, byte ptr [rcx]
	movzx	eax, sil
	lea	ebp, [rax - 9]
	lea	rdx, [rcx + 1]
	cmp	ebp, 0x18
	mov	rdi, rcx
	jb	.label_1068
	dec	rdx
	mov	rdi, rcx
	jmp	.label_1057
	.section	.text
	.align	32
	#Procedure 0x40a21a
	.globl sub_40a21a
	.type sub_40a21a, @function
sub_40a21a:

	nop	word ptr [rax + rax]
.label_1146:
	dec	rcx
	mov	rdx, rcx
.label_1057:
	lea	ecx, [rax - 0x30]
	cmp	ecx, 0xa
	jb	.label_1078
	cmp	sil, 0x2d
	je	.label_1078
	cmp	sil, 0x2b
	jne	.label_1081
	nop	word ptr [rax + rax]
.label_1078:
	cmp	sil, 0x2d
	je	.label_1085
	xor	eax, eax
	cmp	sil, 0x2b
	jne	.label_1086
.label_1085:
	cmp	sil, 0x2d
	mov	eax, 1
	cmove	eax, r9d
	inc	rdx
	mov	rdi, rdx
	nop	word ptr cs:[rax + rax]
.label_1143:
	mov	rdx, rdi
	mov	qword ptr [r14], rdx
	mov	sil, byte ptr [rdx]
	movzx	ecx, sil
	lea	ebp, [rcx - 9]
	cmp	ebp, 0x17
	ja	.label_1100
	lea	rdi, [rdx + 1]
	bt	r15d, ebp
	jb	.label_1143
.label_1100:
	add	ecx, -0x30
	cmp	ecx, 9
	mov	rdi, rdx
	ja	.label_1060
	jmp	.label_1086
.label_1081:
	add	eax, -0x41
	cmp	eax, 0x39
	ja	.label_1111
	movabs	rcx, 0x3ffffff03ffffff
	bt	rcx, rax
	jb	.label_1113
.label_1111:
	cmp	sil, 0x28
	jne	.label_1118
	xor	ecx, ecx
	mov	rdi, qword ptr [rsp + 0x48]
	mov	rsi, qword ptr [rsp + 0x50]
	nop	word ptr cs:[rax + rax]
.label_1139:
	mov	rax, rdx
	lea	rdx, [rax + 1]
	mov	qword ptr [r14], rdx
	movzx	ebx, byte ptr [rax]
	cmp	bl, 0x28
	je	.label_1033
	cmp	bl, 0x29
	je	.label_1131
	xor	eax, eax
	test	bl, bl
	jne	.label_1134
	jmp	.label_1136
	.section	.text
	.align	32
	#Procedure 0x40a2ff
	.globl sub_40a2ff
	.type sub_40a2ff, @function
sub_40a2ff:

	nop	
.label_1131:
	dec	rcx
	jmp	.label_1134
	.section	.text
	.align	32
	#Procedure 0x40a305
	.globl sub_40a305
	.type sub_40a305, @function
sub_40a305:

	nop	word ptr cs:[rax + rax]
.label_1033:
	inc	rcx
.label_1134:
	test	rcx, rcx
	jne	.label_1139
	jmp	.label_1140
.label_1136:
	xor	r12d, r12d
	mov	edx, dword ptr [rsp + 0x58]
	jmp	.label_1047
.label_1086:
	add	rdx, 3
	xor	ecx, ecx
	nop	
.label_1180:
	mov	r12d, 0x3f
	test	rcx, rcx
	js	.label_1144
	cmp	rcx, r11
	jle	.label_1148
	jmp	.label_1150
	.section	.text
	.align	32
	#Procedure 0x40a345
	.globl sub_40a345
	.type sub_40a345, @function
sub_40a345:

	nop	word ptr cs:[rax + rax]
.label_1144:
	cmp	rcx, r10
	jl	.label_1150
.label_1148:
	add	rcx, rcx
	movzx	ebp, sil
	mov	ebx, 0x30
	sub	ebx, ebp
	add	ebp, -0x30
	test	eax, eax
	lea	rsi, [rcx + rcx*4]
	cmovs	ebp, ebx
	movsxd	rcx, ebp
	test	ecx, ecx
	js	.label_1158
	lea	rbp, [r8 - 1]
	sub	rbp, rcx
	mov	r12d, 0x3f
	cmp	rbp, rsi
	jge	.label_1167
	jmp	.label_1150
	.section	.text
	.align	32
	#Procedure 0x40a391
	.globl sub_40a391
	.type sub_40a391, @function
sub_40a391:

	nop	word ptr cs:[rax + rax]
.label_1158:
	mov	rbp, r8
	sub	rbp, rcx
	mov	r12d, 0x3f
	cmp	rsi, rbp
	jl	.label_1150
.label_1167:
	add	rcx, rsi
	movzx	esi, byte ptr [rdx - 2]
	mov	ebp, esi
	add	ebp, -0x30
	inc	rdx
	cmp	ebp, 0xa
	jb	.label_1180
	or	sil, 2
	cmp	sil, 0x2e
	jne	.label_1188
	movsx	esi, byte ptr [rdx - 2]
	add	esi, -0x30
	cmp	esi, 9
	ja	.label_1188
	lea	rdi, [rdx - 1]
	lea	esi, [rsi + rsi*4]
	movsx	ebp, byte ptr [rdx - 1]
	add	ebp, -0x30
	cmp	ebp, 0xa
	cmovb	rdi, rdx
	mov	ebx, 0
	cmovae	ebp, ebx
	lea	edx, [rbp + rsi*2]
	lea	edx, [rdx + rdx*4]
	movsx	esi, byte ptr [rdi]
	add	esi, -0x30
	lea	rbp, [rdi + 1]
	cmp	esi, 0xa
	cmovae	rbp, rdi
	cmovae	esi, ebx
	lea	edx, [rsi + rdx*2]
	lea	edx, [rdx + rdx*4]
	movsx	esi, byte ptr [rbp]
	add	esi, -0x30
	lea	rdi, [rbp + 1]
	cmp	esi, 0xa
	cmovae	rdi, rbp
	cmovae	esi, ebx
	lea	edx, [rsi + rdx*2]
	lea	edx, [rdx + rdx*4]
	movsx	esi, byte ptr [rdi]
	add	esi, -0x30
	lea	rbp, [rdi + 1]
	cmp	esi, 0xa
	cmovae	rbp, rdi
	cmovae	esi, ebx
	lea	edx, [rsi + rdx*2]
	lea	edx, [rdx + rdx*4]
	movsx	esi, byte ptr [rbp]
	add	esi, -0x30
	lea	rdi, [rbp + 1]
	cmp	esi, 0xa
	cmovae	rdi, rbp
	cmovae	esi, ebx
	lea	edx, [rsi + rdx*2]
	lea	edx, [rdx + rdx*4]
	movsx	esi, byte ptr [rdi]
	add	esi, -0x30
	lea	rbp, [rdi + 1]
	cmp	esi, 0xa
	cmovae	rbp, rdi
	cmovae	esi, ebx
	lea	edx, [rsi + rdx*2]
	lea	edx, [rdx + rdx*4]
	movsx	esi, byte ptr [rbp]
	add	esi, -0x30
	lea	rdi, [rbp + 1]
	cmp	esi, 0xa
	cmovae	rdi, rbp
	cmovae	esi, ebx
	lea	edx, [rsi + rdx*2]
	lea	esi, [rdx + rdx*4]
	movsx	ebp, byte ptr [rdi]
	add	ebp, -0x30
	lea	rdx, [rdi + 1]
	cmp	ebp, 0xa
	cmovae	rdx, rdi
	cmovae	ebp, ebx
	lea	esi, [rbp + rsi*2]
	test	eax, eax
	jns	.label_998
	movsx	ebp, byte ptr [rdx]
	mov	edi, ebp
	add	edi, -0x30
	cmp	edi, 9
	ja	.label_998
	nop	
.label_1008:
	cmp	bpl, 0x30
	jne	.label_1005
	movsx	ebp, byte ptr [rdx + 1]
	inc	rdx
	mov	edi, ebp
	add	edi, -0x30
	cmp	edi, 0xa
	jb	.label_1008
	jmp	.label_998
.label_1150:
	mov	rcx, qword ptr [rsp + 0x98]
	jmp	.label_1014
.label_1188:
	add	rdx, -3
	mov	esi, eax
	shr	esi, 0x1f
	mov	dword ptr [rsp + 0x94], esi
	mov	qword ptr [r14], rdx
	sub	rdx, rdi
	xor	r12d, r12d
	test	eax, eax
	sete	r12b
	or	r12d, 0x112
	mov	qword ptr [rsp + 0xe0], rdx
.label_1014:
	mov	rdi, qword ptr [rsp + 0x48]
.label_1037:
	mov	rsi, qword ptr [rsp + 0x50]
	mov	edx, dword ptr [rsp + 0x58]
	jmp	.label_1032
.label_1118:
	lea	rax, [rdx + 1]
	mov	qword ptr [r14], rax
	movzx	r12d, byte ptr [rdx]
	jmp	.label_1185
.label_1113:
	lea	rdi, [rsp + 0xa0]
	mov	rax, rdi
	mov	rbp, qword ptr [rsp + 0xe8]
	nop	
.label_1054:
	lea	rcx, [rsp + 0xb3]
	cmp	rax, rcx
	jae	.label_1038
	mov	byte ptr [rax], sil
	inc	rax
	mov	rdx, qword ptr [r14]
.label_1038:
	mov	rcx, rdx
	lea	rdx, [rcx + 1]
	mov	qword ptr [r14], rdx
	movzx	esi, byte ptr [rcx + 1]
	mov	ecx, esi
	add	ecx, -0x41
	cmp	ecx, 0x39
	ja	.label_1046
	mov	rbx, rbp
	shr	rbx, cl
	and	ebx, 1
	jmp	.label_1051
	.section	.text
	.align	32
	#Procedure 0x40a5a9
	.globl sub_40a5a9
	.type sub_40a5a9, @function
sub_40a5a9:

	nop	dword ptr [rax]
.label_1046:
	xor	ebx, ebx
.label_1051:
	cmp	sil, 0x2e
	je	.label_1054
	test	bl, bl
	jne	.label_1054
	mov	byte ptr [rax], 0
	mov	al, byte ptr [rsp + 0xa0]
	test	al, al
	je	.label_1056
	lea	rcx, [rsp + 0xa1]
	nop	word ptr cs:[rax + rax]
.label_1065:
	movzx	edx, al
	add	edx, -0x61
	cmp	edx, 0x1a
	jae	.label_1061
	add	al, 0xe0
.label_1061:
	mov	byte ptr [rcx - 1], al
	movzx	eax, byte ptr [rcx]
	inc	rcx
	test	al, al
	jne	.label_1065
.label_1056:
	mov	esi, OFFSET FLAT:label_1069
	mov	rbx, rdi
	call	strcmp
	test	eax, eax
	mov	eax, OFFSET FLAT:meridian_table
	je	.label_947
	mov	esi, OFFSET FLAT:label_1074
	mov	rdi, rbx
	call	strcmp
	test	eax, eax
	mov	eax, OFFSET FLAT:label_996
	je	.label_947
	mov	esi, OFFSET FLAT:label_1024
	mov	rdi, rbx
	call	strcmp
	test	eax, eax
	mov	eax, OFFSET FLAT:label_1083
	je	.label_947
	mov	esi, OFFSET FLAT:label_1087
	mov	rdi, rbx
	call	strcmp
	test	eax, eax
	mov	eax, OFFSET FLAT:label_1089
	je	.label_947
	mov	rdi, rbx
	call	strlen
	mov	rbp, rax
	mov	r12b, 1
	cmp	rbp, 3
	je	.label_1097
	cmp	rbp, 4
	jne	.label_1125
	cmp	byte ptr [rsp + 0xa3], 0x2e
	sete	r12b
	jmp	.label_1097
.label_1005:
	inc	esi
.label_998:
	dec	rdx
	nop	word ptr [rax + rax]
.label_1110:
	movsx	edi, byte ptr [rdx + 1]
	inc	rdx
	add	edi, -0x30
	cmp	edi, 0xa
	jb	.label_1110
	test	eax, eax
	jns	.label_1114
	test	esi, esi
	mov	rdi, qword ptr [rsp + 0x48]
	je	.label_1115
	mov	r12d, 0x3f
	cmp	rcx, r8
	jne	.label_1117
	mov	rcx, qword ptr [rsp + 0x98]
	jmp	.label_1037
.label_1117:
	dec	rcx
	mov	edi, 0x3b9aca00
	sub	edi, esi
	mov	esi, edi
.label_1114:
	mov	rdi, qword ptr [rsp + 0x48]
.label_1115:
	mov	rbx, rcx
	shr	rbx, 8
	mov	qword ptr [rsp + 0xc8], rbx
	mov	dword ptr [rsp + 0x94], ecx
	movsxd	rcx, esi
	mov	qword ptr [r14], rdx
	xor	r12d, r12d
	test	eax, eax
	sete	r12b
	or	r12d, 0x114
	jmp	.label_1037
.label_1125:
	xor	r12d, r12d
.label_1097:
	mov	esi, OFFSET FLAT:label_1141
	mov	ebx, OFFSET FLAT:month_and_day_table
	lea	rax, [rsp + 0xa0]
.label_1154:
	test	r12b, r12b
	je	.label_1145
	mov	edx, 3
	mov	rdi, rax
	call	strncmp
	jmp	.label_1149
.label_1145:
	mov	rdi, rax
	call	strcmp
.label_1149:
	test	eax, eax
	je	.label_1153
	mov	rsi, qword ptr [rbx + 0x10]
	add	rbx, 0x10
	test	rsi, rsi
	lea	rax, [rsp + 0xa0]
	jne	.label_1154
	mov	rdi, r14
	mov	rsi, rax
	mov	rbx, rax
	call	lookup_zone
	test	rax, rax
	jne	.label_947
	mov	esi, OFFSET FLAT:label_1168
	mov	rdi, rbx
	call	strcmp
	test	eax, eax
	mov	eax, OFFSET FLAT:dst_table
	je	.label_947
	mov	esi, OFFSET FLAT:label_986
	mov	rdi, rbx
	call	strcmp
	test	eax, eax
	mov	eax, OFFSET FLAT:time_units_table
	je	.label_947
	mov	esi, OFFSET FLAT:label_1000
	mov	rdi, rbx
	call	strcmp
	test	eax, eax
	mov	eax, OFFSET FLAT:label_1031
	je	.label_947
	mov	esi, OFFSET FLAT:label_1009
	mov	rdi, rbx
	call	strcmp
	test	eax, eax
	mov	eax, OFFSET FLAT:label_1012
	je	.label_947
	mov	esi, OFFSET FLAT:label_1016
	mov	rdi, rbx
	call	strcmp
	test	eax, eax
	mov	eax, OFFSET FLAT:label_1023
	je	.label_947
	mov	esi, OFFSET FLAT:label_1025
	mov	rdi, rbx
	call	strcmp
	test	eax, eax
	mov	eax, OFFSET FLAT:label_946
	je	.label_947
	mov	esi, OFFSET FLAT:label_951
	mov	rdi, rbx
	call	strcmp
	test	eax, eax
	mov	eax, OFFSET FLAT:label_1003
	je	.label_947
	mov	esi, OFFSET FLAT:label_957
	mov	rdi, rbx
	call	strcmp
	test	eax, eax
	mov	eax, OFFSET FLAT:label_961
	je	.label_947
	mov	esi, OFFSET FLAT:label_964
	mov	rdi, rbx
	call	strcmp
	test	eax, eax
	mov	eax, OFFSET FLAT:label_968
	je	.label_947
	mov	esi, OFFSET FLAT:label_971
	mov	rdi, rbx
	call	strcmp
	test	eax, eax
	mov	eax, OFFSET FLAT:label_974
	je	.label_947
	mov	esi, OFFSET FLAT:label_976
	mov	rdi, rbx
	call	strcmp
	test	eax, eax
	mov	eax, OFFSET FLAT:label_978
	je	.label_947
	cmp	byte ptr [rsp + rbp + 0x9f], 0x53
	jne	.label_1172
	mov	byte ptr [rsp + rbp + 0x9f], 0
	mov	esi, OFFSET FLAT:label_986
	lea	rbx, [rsp + 0xa0]
	mov	rdi, rbx
	call	strcmp
	test	eax, eax
	mov	eax, OFFSET FLAT:time_units_table
	je	.label_947
	mov	esi, OFFSET FLAT:label_1000
	mov	rdi, rbx
	call	strcmp
	test	eax, eax
	mov	eax, OFFSET FLAT:label_1031
	je	.label_947
	mov	esi, OFFSET FLAT:label_1009
	mov	rdi, rbx
	call	strcmp
	test	eax, eax
	mov	eax, OFFSET FLAT:label_1012
	je	.label_947
	mov	esi, OFFSET FLAT:label_1016
	mov	rdi, rbx
	call	strcmp
	test	eax, eax
	mov	eax, OFFSET FLAT:label_1023
	je	.label_947
	mov	esi, OFFSET FLAT:label_1025
	mov	rdi, rbx
	call	strcmp
	test	eax, eax
	mov	eax, OFFSET FLAT:label_946
	je	.label_947
	mov	esi, OFFSET FLAT:label_951
	mov	rdi, rbx
	call	strcmp
	test	eax, eax
	mov	eax, OFFSET FLAT:label_1003
	je	.label_947
	mov	esi, OFFSET FLAT:label_957
	mov	rdi, rbx
	call	strcmp
	test	eax, eax
	mov	eax, OFFSET FLAT:label_961
	je	.label_947
	mov	esi, OFFSET FLAT:label_964
	mov	rdi, rbx
	call	strcmp
	test	eax, eax
	mov	eax, OFFSET FLAT:label_968
	je	.label_947
	mov	esi, OFFSET FLAT:label_971
	mov	rdi, rbx
	call	strcmp
	test	eax, eax
	mov	eax, OFFSET FLAT:label_974
	je	.label_947
	mov	esi, OFFSET FLAT:label_976
	mov	rdi, rbx
	call	strcmp
	test	eax, eax
	mov	eax, OFFSET FLAT:label_978
	je	.label_947
	mov	byte ptr [rsp + rbp + 0x9f], 0x53
.label_1172:
	mov	esi, OFFSET FLAT:label_1108
	lea	rbx, [rsp + 0xa0]
	mov	rdi, rbx
	call	strcmp
	test	eax, eax
	mov	eax, OFFSET FLAT:relative_time_table
	je	.label_947
	mov	esi, OFFSET FLAT:label_1062
	mov	rdi, rbx
	call	strcmp
	test	eax, eax
	mov	eax, OFFSET FLAT:label_1179
	je	.label_947
	mov	esi, OFFSET FLAT:label_1070
	mov	rdi, rbx
	call	strcmp
	test	eax, eax
	mov	eax, OFFSET FLAT:label_1071
	je	.label_947
	mov	esi, OFFSET FLAT:label_1076
	mov	rdi, rbx
	call	strcmp
	test	eax, eax
	mov	eax, OFFSET FLAT:label_1007
	je	.label_947
	mov	esi, OFFSET FLAT:label_992
	mov	rdi, rbx
	call	strcmp
	test	eax, eax
	mov	eax, OFFSET FLAT:label_1043
	je	.label_947
	mov	esi, OFFSET FLAT:label_1088
	mov	rdi, rbx
	call	strcmp
	test	eax, eax
	mov	eax, OFFSET FLAT:label_1092
	je	.label_947
	mov	esi, OFFSET FLAT:label_1098
	mov	rdi, rbx
	call	strcmp
	test	eax, eax
	mov	eax, OFFSET FLAT:label_1101
	je	.label_947
	mov	esi, OFFSET FLAT:label_1138
	mov	rdi, rbx
	call	strcmp
	test	eax, eax
	mov	eax, OFFSET FLAT:label_1107
	je	.label_947
	mov	esi, OFFSET FLAT:label_1174
	mov	rdi, rbx
	call	strcmp
	test	eax, eax
	mov	eax, OFFSET FLAT:label_1112
	je	.label_947
	mov	esi, OFFSET FLAT:label_1116
	mov	rdi, rbx
	call	strcmp
	test	eax, eax
	mov	eax, OFFSET FLAT:label_1120
	je	.label_947
	mov	esi, OFFSET FLAT:label_1004
	mov	rdi, rbx
	call	strcmp
	test	eax, eax
	mov	eax, OFFSET FLAT:label_1124
	je	.label_947
	mov	esi, OFFSET FLAT:label_1128
	mov	rdi, rbx
	call	strcmp
	test	eax, eax
	mov	eax, OFFSET FLAT:label_1133
	je	.label_947
	mov	esi, OFFSET FLAT:label_1137
	mov	rdi, rbx
	call	strcmp
	test	eax, eax
	mov	eax, OFFSET FLAT:label_1095
	je	.label_947
	mov	esi, OFFSET FLAT:label_1121
	mov	rdi, rbx
	call	strcmp
	test	eax, eax
	mov	eax, OFFSET FLAT:label_1052
	je	.label_947
	mov	esi, OFFSET FLAT:label_1147
	mov	rdi, rbx
	call	strcmp
	test	eax, eax
	mov	eax, OFFSET FLAT:label_1152
	je	.label_947
	mov	esi, OFFSET FLAT:label_1193
	mov	rdi, rbx
	call	strcmp
	test	eax, eax
	mov	eax, OFFSET FLAT:label_1160
	je	.label_947
	mov	esi, OFFSET FLAT:label_1163
	mov	rdi, rbx
	call	strcmp
	test	eax, eax
	mov	eax, OFFSET FLAT:label_1165
	je	.label_947
	mov	esi, OFFSET FLAT:label_1170
	mov	rdi, rbx
	call	strcmp
	test	eax, eax
	mov	eax, OFFSET FLAT:label_1171
	je	.label_947
	mov	esi, OFFSET FLAT:label_1084
	mov	rdi, rbx
	call	strcmp
	test	eax, eax
	mov	eax, OFFSET FLAT:label_1177
	je	.label_947
	mov	esi, OFFSET FLAT:label_1090
	mov	rdi, rbx
	call	strcmp
	test	eax, eax
	mov	eax, OFFSET FLAT:label_1186
	je	.label_947
	movzx	esi, word ptr [rsp + 0xa0]
	cmp	rbp, 1
	mov	ecx, esi
	jne	.label_1190
	cmp	cl, 0x41
	mov	eax, OFFSET FLAT:military_table
	lea	rdx, [rsp + 0xa0]
	je	.label_947
	cmp	cl, 0x42
	mov	eax, OFFSET FLAT:label_1019
	je	.label_947
	cmp	cl, 0x43
	mov	eax, OFFSET FLAT:label_948
	je	.label_947
	cmp	cl, 0x44
	mov	eax, OFFSET FLAT:label_953
	je	.label_947
	cmp	cl, 0x45
	mov	eax, OFFSET FLAT:label_955
	je	.label_947
	cmp	cl, 0x46
	mov	eax, OFFSET FLAT:label_959
	je	.label_947
	cmp	cl, 0x47
	mov	eax, OFFSET FLAT:label_963
	je	.label_947
	cmp	cl, 0x48
	mov	eax, OFFSET FLAT:label_966
	je	.label_947
	cmp	cl, 0x49
	mov	eax, OFFSET FLAT:label_970
	je	.label_947
	cmp	cl, 0x4b
	mov	eax, OFFSET FLAT:label_972
	je	.label_947
	cmp	cl, 0x4c
	mov	eax, OFFSET FLAT:label_975
	je	.label_947
	cmp	cl, 0x4d
	mov	eax, OFFSET FLAT:label_977
	je	.label_947
	cmp	cl, 0x4e
	mov	eax, OFFSET FLAT:label_980
	je	.label_947
	cmp	cl, 0x4f
	mov	eax, OFFSET FLAT:label_985
	je	.label_947
	cmp	cl, 0x50
	mov	eax, OFFSET FLAT:label_989
	je	.label_947
	cmp	cl, 0x51
	mov	eax, OFFSET FLAT:label_1176
	je	.label_947
	cmp	cl, 0x52
	mov	eax, OFFSET FLAT:label_994
	je	.label_947
	cmp	cl, 0x53
	mov	eax, OFFSET FLAT:label_999
	je	.label_947
	cmp	cl, 0x54
	mov	eax, OFFSET FLAT:label_1002
	je	.label_947
	cmp	cl, 0x55
	mov	eax, OFFSET FLAT:label_1006
	je	.label_947
	cmp	cl, 0x56
	mov	eax, OFFSET FLAT:label_1044
	je	.label_947
	cmp	cl, 0x57
	mov	eax, OFFSET FLAT:label_1011
	je	.label_947
	cmp	cl, 0x58
	mov	eax, OFFSET FLAT:label_1013
	je	.label_947
	cmp	cl, 0x59
	mov	eax, OFFSET FLAT:label_1018
	je	.label_947
	test	cl, cl
	je	.label_965
	cmp	cl, 0x5a
	mov	eax, OFFSET FLAT:label_1026
	je	.label_947
	jmp	.label_1126
.label_1153:
	mov	rax, rbx
.label_947:
	mov	r12d, dword ptr [rax + 8]
	mov	eax, dword ptr [rax + 0xc]
	mov	dword ptr [rsp + 0x94], eax
	sar	eax, 8
	cdqe	
	mov	qword ptr [rsp + 0xc8], rax
.label_993:
	mov	r9d, 0xffffffff
	movabs	r8, 0x8000000000000000
	movabs	r10, 0xf333333333333334
	movabs	r11, 0xccccccccccccccc
.label_1185:
	mov	rdi, qword ptr [rsp + 0x48]
	mov	rsi, qword ptr [rsp + 0x50]
	mov	edx, dword ptr [rsp + 0x58]
	nop	word ptr [rax + rax]
.label_1053:
	xor	eax, eax
	test	r12d, r12d
	jle	.label_1042
	mov	eax, 2
	cmp	r12d, 0x115
	mov	rcx, qword ptr [rsp + 0x98]
	ja	.label_1047
.label_1032:
	movsxd	rax, r12d
	movzx	eax, byte ptr [rax + yytranslate]
	mov	qword ptr [rsp + 0x98], rcx
	jmp	.label_1047
.label_1042:
	xor	r12d, r12d
	nop	word ptr cs:[rax + rax]
.label_1047:
	add	edx, eax
	cmp	edx, 0x70
	ja	.label_1049
	movsxd	rcx, edx
	movsx	edx, byte ptr [rcx + yycheck]
	cmp	edx, eax
	jne	.label_1049
	movzx	eax, byte ptr [rcx + yytable]
	or	rcx, 4
	cmp	rcx, 0x6f
	jne	.label_1058
	neg	eax
	jmp	.label_1064
	.section	.text
	.align	32
	#Procedure 0x40adee
	.globl sub_40adee
	.type sub_40adee, @function
sub_40adee:

	nop	
.label_1049:
	movzx	eax, byte ptr [rsi + yydefact]
	test	eax, eax
	mov	ebp, 1
	je	.label_1021
.label_1064:
	movsxd	rdx, eax
	movzx	esi, byte ptr [rdx + yyr2]
	mov	eax, 1
	sub	rax, rsi
	imul	rax, rax, 0x38
	mov	rcx, qword ptr [r13 + rax]
	mov	qword ptr [rsp + 0x58], rcx
	mov	rcx, qword ptr [r13 + rax + 8]
	mov	qword ptr [rsp + 0x68], rcx
	mov	rcx, qword ptr [r13 + rax + 0x10]
	mov	qword ptr [rsp + 0x50], rcx
	mov	rcx, qword ptr [r13 + rax + 0x18]
	mov	qword ptr [rsp + 0x80], rcx
	mov	rcx, qword ptr [r13 + rax + 0x20]
	mov	qword ptr [rsp + 0x78], rcx
	mov	rcx, qword ptr [r13 + rax + 0x28]
	mov	qword ptr [rsp + 0x70], rcx
	mov	ecx, dword ptr [r13 + rax + 0x30]
	mov	dword ptr [rsp + 0x44], ecx
	mov	eax, dword ptr [r13 + rax + 0x34]
	mov	dword ptr [rsp + 0xd4], eax
	lea	eax, [rdx - 4]
	cmp	eax, 0x57
	ja	.label_945
	jmp	qword ptr [(rax * 8) + label_1103]
.label_1551:
	mov	rax, qword ptr [r13 + 0x30]
	mov	qword ptr [rsp + 0x30], rax
	movdqu	xmm0, xmmword ptr [r13]
	movups	xmm1, xmmword ptr [r13 + 0x10]
	movups	xmm2, xmmword ptr [r13 + 0x20]
	movups	xmmword ptr [rsp + 0x20], xmm2
	movups	xmmword ptr [rsp + 0x10], xmm1
	movdqu	xmmword ptr [rsp], xmm0
	mov	ebp, 1
	mov	qword ptr [rsp + 0x60], rsi
	mov	esi, 1
	mov	qword ptr [rsp + 0x48], rdi
	mov	rdi, r14
	mov	rbx, rdx
	call	apply_relative_time
	mov	rsi, qword ptr [rsp + 0x60]
	mov	rdx, rbx
	mov	rdi, qword ptr [rsp + 0x48]
	movabs	r11, 0xccccccccccccccc
	movabs	r10, 0xf333333333333334
	mov	r9d, 0xffffffff
	movabs	r8, 0x8000000000000000
	jmp	.label_1010
.label_1058:
	mov	rcx, qword ptr [rsp + 0xc8]
	shl	rcx, 8
	mov	edx, dword ptr [rsp + 0x94]
	movzx	edx, dl
	or	rdx, rcx
	mov	qword ptr [r13 + 0x38], rdx
	mov	rcx, qword ptr [rsp + 0x98]
	mov	qword ptr [r13 + 0x40], rcx
	mov	rcx, qword ptr [rsp + 0xe0]
	mov	qword ptr [r13 + 0x48], rcx
	pxor	xmm0, xmm0
	movdqu	xmmword ptr [r13 + 0x60], xmm0
	movdqu	xmmword ptr [r13 + 0x50], xmm0
	lea	rcx, [r13 + 0x38]
	mov	r12d, 0xfffffffe
	jmp	.label_1077
.label_1565:
	mov	rax, qword ptr [r13 - 0x30]
	jmp	.label_1156
.label_1572:
	mov	rax, qword ptr [r13 + 8]
	mov	qword ptr [rsp + 0x58], rax
	xor	eax, eax
	mov	qword ptr [rsp + 0x68], rax
	jmp	.label_945
.label_1553:
	mov	rax, qword ptr [r13 - 0x30]
	jmp	.label_1164
.label_1568:
	mov	rax, qword ptr [r13 - 0x30]
	jmp	.label_1166
.label_1556:
	mov	rax, qword ptr [r13 - 0x30]
	jmp	.label_1020
.label_1569:
	mov	rax, qword ptr [r13 - 0x38]
	mov	qword ptr [rsp + 0x70], rax
	mov	eax, dword ptr [r13 - 0x30]
	mov	dword ptr [rsp + 0x44], eax
	xor	eax, eax
	mov	qword ptr [rsp + 0x58], rax
	xor	eax, eax
	mov	qword ptr [rsp + 0x68], rax
	xor	eax, eax
	mov	qword ptr [rsp + 0x50], rax
	xor	eax, eax
	mov	qword ptr [rsp + 0x80], rax
	xor	eax, eax
	mov	qword ptr [rsp + 0x78], rax
	jmp	.label_945
.label_1560:
	mov	rax, qword ptr [r13]
	jmp	.label_1187
.label_1562:
	mov	rax, qword ptr [r13 - 0x30]
	jmp	.label_1189
.label_1574:
	mov	qword ptr [rsp + 0x48], rdi
	movdqu	xmm0, xmmword ptr [r13 - 0x38]
	mov	rdi, qword ptr [r13 - 0x28]
	mov	rax, qword ptr [r14 + 0xa8]
	test	rax, rax
	mov	qword ptr [rsp + 0x60], rsi
	je	.label_1191
	cmp	qword ptr [r14 + 0x30], 0
	jne	.label_1191
	cmp	byte ptr [r14 + 0xa1], 0
	je	.label_944
.label_1191:
	mov	rbx, rdx
	cmp	rdi, 5
	jl	.label_949
	inc	rax
	mov	qword ptr [r14 + 0xa8], rax
	pshufd	xmm0, xmm0, 0x4e
	movq	rcx, xmm0
	movabs	rbp, 0xa3d70a3d70a3d70b
	mov	rax, rcx
	imul	rbp
	mov	rsi, rdx
	add	rsi, rcx
	mov	rax, rsi
	shr	rax, 0x3f
	sar	rsi, 6
	add	rsi, rax
	imul	rax, rsi, 0x64
	mov	rdx, rcx
	sub	rdx, rax
	mov	qword ptr [r14 + 0x40], rdx
	mov	rax, rsi
	imul	rbp
	add	rdx, rsi
	mov	rax, rdx
	shr	rax, 0x3f
	sar	rdx, 6
	add	rdx, rax
	imul	rax, rdx, 0x64
	sub	rsi, rax
	mov	qword ptr [r14 + 0x38], rsi
	movabs	rdx, 0x346dc5d63886594b
	mov	rax, rcx
	imul	rdx
	mov	rax, rdx
	shr	rax, 0x3f
	sar	rdx, 0xb
	add	rdx, rax
	mov	qword ptr [r14 + 0x28], rdx
	add	rdi, -4
	mov	qword ptr [r14 + 0x30], rdi
	jmp	.label_954
.label_1558:
	mov	rbx, qword ptr [r13]
	test	rbx, rbx
	mov	qword ptr [rsp + 0x50], rbx
	js	.label_991
	lea	rcx, [r13 - 0x38]
	jmp	.label_981
.label_1557:
	xor	eax, eax
	mov	qword ptr [rsp + 0x58], rax
	mov	eax, 1
	jmp	.label_997
.label_1550:
	mov	qword ptr [rsp + 0x60], rsi
	mov	esi, dword ptr [r13]
	mov	rax, qword ptr [r13 - 8]
	mov	qword ptr [rsp + 0x30], rax
	movdqu	xmm0, xmmword ptr [r13 - 0x38]
	movups	xmm1, xmmword ptr [r13 - 0x28]
	movups	xmm2, xmmword ptr [r13 - 0x18]
	movups	xmmword ptr [rsp + 0x20], xmm2
	movups	xmmword ptr [rsp + 0x10], xmm1
	movdqu	xmmword ptr [rsp], xmm0
	mov	rbx, rdi
	mov	rdi, r14
	mov	rbp, rdx
	call	apply_relative_time
	mov	rsi, qword ptr [rsp + 0x60]
	mov	rdx, rbp
	mov	rdi, rbx
	movabs	r11, 0xccccccccccccccc
	movabs	r10, 0xf333333333333334
	mov	r9d, 0xffffffff
	movabs	r8, 0x8000000000000000
	mov	ebp, 1
.label_1010:
	test	al, al
	jne	.label_945
	jmp	.label_1021
.label_1549:
	mov	rax, qword ptr [r13 - 0x60]
	mov	rcx, qword ptr [rsp + 0xb8]
	mov	qword ptr [rcx + 0x10], rax
	movdqu	xmm0, xmmword ptr [r13 - 0x70]
	movdqu	xmmword ptr [rcx], xmm0
	mov	rax, qword ptr [r13 - 0x30]
	mov	rcx, rax
	neg	rcx
	cmp	rax, r8
	mov	qword ptr [r14 + 0x38], rcx
	mov	ebp, 1
	je	.label_1021
	mov	rax, qword ptr [r13 + 8]
	mov	rcx, rax
	neg	rcx
	cmp	rax, r8
	mov	qword ptr [r14 + 0x40], rcx
	jne	.label_945
	jmp	.label_1021
.label_1547:
	mov	rax, qword ptr [r13 - 0x30]
	mov	qword ptr [r14 + 0x40], rax
	mov	rax, qword ptr [r13]
	mov	qword ptr [r14 + 0x38], rax
	jmp	.label_945
.label_1575:
	mov	qword ptr [rsp + 0x58], -1
	jmp	.label_945
.label_1529:
	mov	dword ptr [r14 + 0x14], 1
	inc	qword ptr [r14 + 0xc0]
	jmp	.label_945
.label_1532:
	mov	eax, dword ptr [r13 - 0x38]
	mov	dword ptr [r14 + 0x18], eax
	jmp	.label_1063
.label_1524:
	mov	rax, qword ptr [r13 - 0x30]
	mov	qword ptr [r14 + 0x48], rax
	pxor	xmm0, xmm0
	mov	rax, qword ptr [rsp + 0xd8]
	movdqu	xmmword ptr [rax], xmm0
	mov	qword ptr [rax + 0x10], 0
	mov	dword ptr [r14 + 0x1c], 2
	jmp	.label_945
.label_1536:
	mov	eax, 0xe10
	add	eax, dword ptr [r13 - 0x38]
	mov	dword ptr [r14 + 0x18], eax
	jmp	.label_945
.label_1534:
	mov	qword ptr [rsp + 0x88], rdx
	mov	rdx, qword ptr [r13 - 0x30]
	imul	rcx, rdx, 0x64
	cmp	qword ptr [r13 - 0x28], 3
	mov	rax, qword ptr [r13]
	cmovge	rcx, rdx
	test	rax, rax
	cmovns	rcx, rdx
	js	.label_1080
	mov	rbx, rsi
	mov	dl, byte ptr [r13 - 0x38]
	test	rcx, rcx
	js	.label_1093
	movabs	rsi, 0x222222222222222
	cmp	rcx, rsi
	jg	.label_1099
	jmp	.label_1091
.label_1521:
	mov	rax, qword ptr [r13 - 0x30]
	mov	qword ptr [r14 + 0x48], rax
	pxor	xmm0, xmm0
	mov	rax, qword ptr [rsp + 0xd8]
	movdqu	xmmword ptr [rax], xmm0
	mov	qword ptr [rax + 0x10], 0
	jmp	.label_1104
.label_1544:
	mov	rax, qword ptr [r13 - 0x70]
	mov	qword ptr [r14 + 0x38], rax
	mov	rax, qword ptr [r13 - 0x30]
	mov	rcx, rax
	neg	rcx
	cmp	rax, r8
	mov	qword ptr [r14 + 0x40], rcx
	mov	ebp, 1
	je	.label_1021
	mov	rax, qword ptr [r13 + 8]
	mov	rcx, rax
	neg	rcx
	cmp	rax, r8
	mov	qword ptr [r14 + 0x28], rcx
	jne	.label_1123
	jmp	.label_1021
.label_1539:
	mov	rax, qword ptr [r13 - 0x38]
	jmp	.label_1129
.label_1533:
	mov	dword ptr [r14 + 0x18], 0x6270
.label_1063:
	mov	rax, qword ptr [r13 + 0x30]
	mov	qword ptr [rsp + 0x30], rax
	movdqu	xmm0, xmmword ptr [r13]
	movups	xmm1, xmmword ptr [r13 + 0x10]
	movups	xmm2, xmmword ptr [r13 + 0x20]
	movups	xmmword ptr [rsp + 0x20], xmm2
	movups	xmmword ptr [rsp + 0x10], xmm1
	movdqu	xmmword ptr [rsp], xmm0
	mov	ebp, 1
	mov	qword ptr [rsp + 0x60], rsi
	mov	esi, 1
	mov	qword ptr [rsp + 0x48], rdi
	mov	rdi, r14
	mov	rbx, rdx
	call	apply_relative_time
	test	al, al
	je	.label_1021
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_1039
	mov	edx, 5
	call	dcgettext
	mov	rdi, rax
	mov	rsi, r14
	call	debug_print_relative_time
	mov	rsi, qword ptr [rsp + 0x60]
	mov	rdx, rbx
	jmp	.label_1162
.label_1523:
	mov	rax, qword ptr [r13 - 0x110]
	mov	rcx, qword ptr [r13 - 0xa0]
	mov	rbx, rdx
	mov	rdx, qword ptr [r13 - 0x38]
	mov	rbp, rsi
	movsxd	rsi, dword ptr [r13 - 0x30]
	mov	qword ptr [r14 + 0x48], rax
	mov	qword ptr [r14 + 0x50], rcx
	mov	qword ptr [r14 + 0x58], rdx
	mov	rdx, rbx
	mov	qword ptr [r14 + 0x60], rsi
	mov	rsi, rbp
	jmp	.label_1104
.label_1530:
	mov	eax, dword ptr [r13]
	mov	dword ptr [r14 + 0x18], eax
	jmp	.label_945
.label_1513:
	inc	qword ptr [r14 + 0xc8]
	mov	qword ptr [rsp + 0x48], rdi
	xor	edi, edi
	mov	rbx, rsi
	mov	esi, OFFSET FLAT:label_1181
	jmp	.label_988
.label_1540:
	mov	rax, qword ptr [r13 - 0x30]
.label_1129:
	mov	qword ptr [r14 + 8], rax
	mov	eax, dword ptr [r13]
	mov	dword ptr [r14 + 0x10], eax
	mov	byte ptr [r14 + 0xe0], 1
	jmp	.label_945
.label_1542:
	mov	rbp, qword ptr [r13 - 0xd0]
	mov	al, byte ptr [r14 + 0xd9]
	cmp	rbp, 4
	jl	.label_1195
	lea	rbx, [r13 - 0xe0]
	test	al, al
	je	.label_956
	mov	qword ptr [rsp + 0x48], rdi
	xor	edi, edi
	mov	qword ptr [rsp + 0x60], rsi
	mov	esi, OFFSET FLAT:label_950
	mov	qword ptr [rsp + 0x88], rbx
	mov	rbx, rdx
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	mov	rsi, qword ptr [r13 - 0xd8]
	xor	eax, eax
	mov	rdi, rcx
	mov	rdx, rbp
	call	dbg_printf
	mov	rsi, qword ptr [rsp + 0x60]
	mov	rdx, rbx
	mov	rbx, qword ptr [rsp + 0x88]
	mov	rdi, qword ptr [rsp + 0x48]
	movabs	r11, 0xccccccccccccccc
	movabs	r10, 0xf333333333333334
	mov	r9d, 0xffffffff
	movabs	r8, 0x8000000000000000
.label_956:
	mov	rax, qword ptr [rbx + 0x10]
	mov	rcx, qword ptr [rsp + 0xb8]
	mov	qword ptr [rcx + 0x10], rax
	movdqu	xmm0, xmmword ptr [rbx]
	movdqu	xmmword ptr [rcx], xmm0
.label_1541:
	mov	rax, qword ptr [r13 - 0x68]
	jmp	.label_983
.label_1516:
	inc	qword ptr [r14 + 0xa8]
	mov	qword ptr [rsp + 0x48], rdi
	xor	edi, edi
	mov	rbx, rsi
	mov	esi, OFFSET FLAT:label_987
	jmp	.label_988
.label_1522:
	mov	rax, qword ptr [r13 - 0xa0]
	mov	rcx, qword ptr [r13 - 0x30]
	mov	qword ptr [r14 + 0x48], rax
	mov	qword ptr [r14 + 0x50], rcx
	pxor	xmm0, xmm0
	mov	rax, qword ptr [rsp + 0xc0]
	movdqu	xmmword ptr [rax], xmm0
.label_1104:
	mov	eax, dword ptr [r13]
	mov	dword ptr [r14 + 0x1c], eax
	jmp	.label_945
.label_1535:
	mov	eax, 0xe10
	add	eax, dword ptr [r13]
	mov	dword ptr [r14 + 0x18], eax
	jmp	.label_945
.label_1511:
	movdqu	xmm0, xmmword ptr [r13]
	mov	rax, qword ptr [rsp + 0xc0]
	movdqu	xmmword ptr [rax], xmm0
	mov	byte ptr [r14 + 0xa0], 1
	mov	qword ptr [rsp + 0x48], rdi
	xor	edi, edi
	mov	rbx, rsi
	mov	esi, OFFSET FLAT:label_1017
	jmp	.label_988
.label_1512:
	inc	qword ptr [r14 + 0xc8]
	inc	qword ptr [r14 + 0xa8]
	mov	qword ptr [rsp + 0x48], rdi
	xor	edi, edi
	mov	rbx, rsi
	mov	esi, OFFSET FLAT:label_1030
	jmp	.label_988
.label_1517:
	inc	qword ptr [r14 + 0xb0]
	mov	qword ptr [rsp + 0x48], rdi
	xor	edi, edi
	mov	rbx, rsi
	mov	esi, OFFSET FLAT:label_1035
	jmp	.label_988
.label_1518:
	mov	qword ptr [rsp + 0x48], rdi
	xor	edi, edi
	mov	rbx, rsi
	mov	esi, OFFSET FLAT:label_1039
	jmp	.label_1040
.label_1525:
	mov	rax, qword ptr [r13 - 0xa0]
	mov	rcx, qword ptr [r13 - 0x30]
	mov	qword ptr [r14 + 0x48], rax
	mov	qword ptr [r14 + 0x50], rcx
	jmp	.label_1045
.label_1554:
	xor	eax, eax
	mov	qword ptr [rsp + 0x68], rax
	mov	eax, 1
	mov	qword ptr [rsp + 0x58], rax
	jmp	.label_1050
.label_1526:
	mov	rax, qword ptr [r13 - 0x110]
	mov	rcx, qword ptr [r13 - 0xa0]
	mov	rbx, rdx
	mov	rdx, qword ptr [r13 - 0x38]
	mov	rbp, rsi
	movsxd	rsi, dword ptr [r13 - 0x30]
	mov	qword ptr [r14 + 0x48], rax
	mov	qword ptr [r14 + 0x50], rcx
	mov	qword ptr [r14 + 0x58], rdx
	mov	rdx, rbx
	mov	qword ptr [r14 + 0x60], rsi
	mov	rsi, rbp
	mov	dword ptr [r14 + 0x1c], 2
	jmp	.label_945
.label_1514:
	inc	qword ptr [r14 + 0xb8]
	mov	qword ptr [rsp + 0x48], rdi
	xor	edi, edi
	mov	rbx, rsi
	mov	esi, OFFSET FLAT:label_1067
	jmp	.label_988
.label_1515:
	inc	qword ptr [r14 + 0xd0]
	mov	qword ptr [rsp + 0x48], rdi
	xor	edi, edi
	mov	rbx, rsi
	mov	esi, OFFSET FLAT:label_1072
	jmp	.label_988
.label_1576:
	mov	rax, qword ptr [r13 + 8]
	mov	qword ptr [rsp + 0x58], rax
	jmp	.label_945
.label_1548:
	mov	rax, qword ptr [r13 - 0x68]
	mov	qword ptr [r14 + 0x40], rax
	mov	rax, qword ptr [r13 - 0x38]
	mov	qword ptr [r14 + 0x38], rax
	jmp	.label_1082
.label_1555:
	mov	rax, qword ptr [r13 - 0x38]
.label_1020:
	mov	qword ptr [rsp + 0x68], rax
	xor	eax, eax
	mov	qword ptr [rsp + 0x58], rax
	jmp	.label_1050
.label_1520:
	mov	qword ptr [rsp + 0x48], rdi
	xor	edi, edi
	mov	rbx, rsi
	mov	esi, OFFSET FLAT:label_1094
.label_1040:
	mov	rbp, rdx
	mov	edx, 5
	call	dcgettext
	mov	rdi, rax
	mov	rsi, r14
	call	debug_print_relative_time
	jmp	.label_1105
.label_1561:
	mov	rax, qword ptr [r13 - 0x38]
.label_1189:
	mov	qword ptr [rsp + 0x80], rax
	xor	eax, eax
	mov	qword ptr [rsp + 0x58], rax
	jmp	.label_1106
.label_1519:
	mov	qword ptr [rsp + 0x48], rdi
	xor	edi, edi
	mov	rbx, rsi
	mov	esi, OFFSET FLAT:label_969
.label_988:
	mov	rbp, rdx
	mov	edx, 5
	call	dcgettext
	mov	rdi, rax
	mov	rsi, r14
	call	debug_print_current_time
.label_1105:
	mov	rsi, rbx
	mov	rdx, rbp
.label_1162:
	mov	rdi, qword ptr [rsp + 0x48]
	movabs	r11, 0xccccccccccccccc
	movabs	r10, 0xf333333333333334
	mov	r9d, 0xffffffff
	movabs	r8, 0x8000000000000000
	jmp	.label_945
.label_1528:
	mov	eax, dword ptr [r13]
	mov	dword ptr [r14 + 0x14], eax
	jmp	.label_945
.label_1545:
	mov	rax, qword ptr [r13 - 0x38]
.label_983:
	mov	qword ptr [r14 + 0x38], rax
	mov	rax, qword ptr [r13 + 8]
	mov	qword ptr [r14 + 0x40], rax
	jmp	.label_945
.label_1527:
	mov	rbx, rdx
	inc	qword ptr [r14 + 0xd0]
	mov	rdx, qword ptr [r13 - 0x30]
	imul	rcx, rdx, 0x64
	cmp	qword ptr [r13 - 0x28], 3
	mov	rax, qword ptr [r13]
	cmovge	rcx, rdx
	test	rax, rax
	cmovns	rcx, rdx
	js	.label_1142
	mov	rbp, rsi
	mov	dl, byte ptr [r13 - 0x38]
	test	rcx, rcx
	js	.label_1183
	movabs	rsi, 0x222222222222222
	cmp	rcx, rsi
	jg	.label_1159
	jmp	.label_1151
.label_1552:
	mov	rax, qword ptr [r13 - 0x38]
.label_1164:
	mov	qword ptr [rsp + 0x58], rax
	xor	eax, eax
.label_997:
	mov	qword ptr [rsp + 0x68], rax
.label_1050:
	xor	eax, eax
	mov	qword ptr [rsp + 0x50], rax
	jmp	.label_1169
.label_1531:
	mov	dword ptr [r14 + 0x18], 0x6270
	jmp	.label_945
.label_1567:
	mov	rax, qword ptr [r13 - 0x38]
.label_1166:
	mov	qword ptr [rsp + 0x70], rax
	xor	eax, eax
	mov	qword ptr [rsp + 0x58], rax
	jmp	.label_1173
.label_1573:
	mov	qword ptr [rsp + 0x48], rdi
	movdqu	xmm0, xmmword ptr [r13]
	mov	rdi, qword ptr [r13 + 0x10]
	mov	rax, qword ptr [r14 + 0xa8]
	test	rax, rax
	je	.label_1178
	cmp	qword ptr [r14 + 0x30], 0
	jne	.label_1178
	cmp	byte ptr [r14 + 0xa1], 0
	je	.label_1130
.label_1178:
	cmp	rdi, 5
	jl	.label_1192
	inc	rax
	mov	qword ptr [r14 + 0xa8], rax
	pshufd	xmm0, xmm0, 0x4e
	movq	rcx, xmm0
	movabs	rbp, 0xa3d70a3d70a3d70b
	mov	rax, rcx
	mov	qword ptr [rsp + 0x88], rdx
	imul	rbp
	mov	rbx, rsi
	mov	rsi, rdx
	add	rsi, rcx
	mov	rax, rsi
	shr	rax, 0x3f
	sar	rsi, 6
	add	rsi, rax
	imul	rax, rsi, 0x64
	mov	rdx, rcx
	sub	rdx, rax
	mov	qword ptr [r14 + 0x40], rdx
	mov	rax, rsi
	imul	rbp
	add	rdx, rsi
	mov	rax, rdx
	shr	rax, 0x3f
	sar	rdx, 6
	add	rdx, rax
	imul	rax, rdx, 0x64
	sub	rsi, rax
	mov	qword ptr [r14 + 0x38], rsi
	mov	rsi, rbx
	movabs	rdx, 0x346dc5d63886594b
	mov	rax, rcx
	imul	rdx
	mov	rax, rdx
	shr	rax, 0x3f
	sar	rdx, 0xb
	add	rdx, rax
	mov	qword ptr [r14 + 0x28], rdx
	mov	rdx, qword ptr [rsp + 0x88]
	add	rdi, -4
.label_960:
	mov	qword ptr [r14 + 0x30], rdi
	mov	rdi, qword ptr [rsp + 0x48]
	jmp	.label_945
.label_1564:
	mov	rax, qword ptr [r13 - 0x38]
.label_1156:
	mov	qword ptr [rsp + 0x78], rax
	xor	eax, eax
	mov	qword ptr [rsp + 0x58], rax
	jmp	.label_1184
.label_1563:
	xor	eax, eax
	mov	qword ptr [rsp + 0x58], rax
	mov	eax, 1
	mov	qword ptr [rsp + 0x80], rax
.label_1106:
	xor	eax, eax
	mov	qword ptr [rsp + 0x68], rax
	xor	eax, eax
	mov	qword ptr [rsp + 0x50], rax
	jmp	.label_995
.label_1538:
	mov	qword ptr [r14 + 8], 0
	mov	eax, dword ptr [r13 - 0x38]
	mov	dword ptr [r14 + 0x10], eax
	jmp	.label_945
.label_1537:
	mov	qword ptr [r14 + 8], 0
	mov	eax, dword ptr [r13]
	mov	dword ptr [r14 + 0x10], eax
	jmp	.label_945
.label_1546:
	mov	rax, qword ptr [r13 - 0xa8]
	jmp	.label_1015
.label_1543:
	mov	rax, qword ptr [r13 - 0x68]
	mov	qword ptr [r14 + 0x40], rax
	mov	rax, qword ptr [r13 - 0x38]
	mov	qword ptr [r14 + 0x38], rax
	mov	rax, qword ptr [r13 + 8]
	mov	rcx, rax
	neg	rcx
	cmp	rax, r8
	mov	qword ptr [r14 + 0x28], rcx
	mov	ebp, 1
	je	.label_1021
.label_1123:
	mov	rax, qword ptr [r13 + 0x10]
	mov	qword ptr [r14 + 0x30], rax
	jmp	.label_945
.label_1570:
	xor	eax, eax
	mov	qword ptr [rsp + 0x58], rax
	mov	eax, 1
	mov	qword ptr [rsp + 0x70], rax
.label_1173:
	xor	eax, eax
	mov	qword ptr [rsp + 0x68], rax
	xor	eax, eax
	mov	qword ptr [rsp + 0x50], rax
	xor	eax, eax
	mov	qword ptr [rsp + 0x80], rax
	xor	eax, eax
	mov	qword ptr [rsp + 0x78], rax
	jmp	.label_1036
.label_1571:
	mov	rbx, qword ptr [r13]
	test	rbx, rbx
	mov	qword ptr [rsp + 0x50], rbx
	jns	.label_1041
	mov	qword ptr [rsp + 0x60], rsi
	lea	rcx, [r13 - 0x30]
	mov	rsi, qword ptr [r13 - 0x30]
	test	rsi, rsi
	js	.label_962
	cmp	rbx, -1
	mov	rbp, rbx
	jne	.label_967
	mov	rsi, qword ptr [rsp + 0x60]
	jmp	.label_952
.label_1559:
	mov	rbx, qword ptr [r13]
	test	rbx, rbx
	mov	qword ptr [rsp + 0x50], rbx
	js	.label_1055
.label_1041:
	lea	rcx, [r13 - 0x30]
.label_981:
	test	rbx, rbx
	je	.label_952
	mov	qword ptr [rsp + 0x60], rsi
	mov	qword ptr [rsp + 0x88], rdx
	mov	rsi, qword ptr [rcx]
	test	rsi, rsi
	js	.label_1059
	lea	rax, [r8 - 1]
	xor	edx, edx
	div	rbx
	mov	ebp, 1
	cmp	rax, rsi
	jmp	.label_1066
.label_1566:
	xor	eax, eax
	mov	qword ptr [rsp + 0x58], rax
	mov	eax, 1
	mov	qword ptr [rsp + 0x78], rax
.label_1184:
	xor	eax, eax
	mov	qword ptr [rsp + 0x68], rax
	xor	eax, eax
	mov	qword ptr [rsp + 0x50], rax
	xor	eax, eax
	mov	qword ptr [rsp + 0x80], rax
	jmp	.label_1075
.label_1195:
	test	al, al
	je	.label_1029
	mov	qword ptr [rsp + 0x48], rdi
	xor	edi, edi
	mov	rbx, rsi
	mov	esi, OFFSET FLAT:label_1034
	mov	rbp, rdx
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	mov	rsi, qword ptr [r13 - 0xd8]
	xor	eax, eax
	mov	rdi, rcx
	call	dbg_printf
	mov	rsi, rbx
	mov	rdx, rbp
	mov	rdi, qword ptr [rsp + 0x48]
	movabs	r11, 0xccccccccccccccc
	movabs	r10, 0xf333333333333334
	mov	r9d, 0xffffffff
	movabs	r8, 0x8000000000000000
.label_1029:
	mov	rax, qword ptr [r13 - 0xd8]
.label_1015:
	mov	qword ptr [r14 + 0x38], rax
	mov	rax, qword ptr [r13 - 0x68]
	mov	qword ptr [r14 + 0x40], rax
.label_1082:
	mov	rax, qword ptr [r13 + 0x10]
	mov	rcx, qword ptr [rsp + 0xb8]
	mov	qword ptr [rcx + 0x10], rax
	movdqu	xmm0, xmmword ptr [r13]
	movdqu	xmmword ptr [rcx], xmm0
	jmp	.label_945
.label_949:
	inc	qword ptr [r14 + 0xc8]
	xor	eax, eax
	cmp	rdi, 3
	pshufd	xmm0, xmm0, 0x4e
	movq	rcx, xmm0
	jl	.label_1122
	movabs	rdx, 0xa3d70a3d70a3d70b
	mov	rax, rcx
	imul	rdx
	add	rdx, rcx
	mov	rax, rdx
	shr	rax, 0x3f
	sar	rdx, 6
	add	rdx, rax
	imul	rsi, rdx, 0x64
	mov	rax, rcx
	sub	rax, rsi
	mov	rcx, rdx
.label_1122:
	mov	qword ptr [r14 + 0x48], rcx
	mov	qword ptr [r14 + 0x50], rax
	pxor	xmm0, xmm0
	mov	rax, qword ptr [rsp + 0xc0]
	movdqu	xmmword ptr [rax], xmm0
	mov	dword ptr [r14 + 0x1c], 2
.label_954:
	mov	rax, qword ptr [r13 + 0x30]
	mov	qword ptr [rsp + 0x30], rax
	movdqu	xmm0, xmmword ptr [r13]
	movups	xmm1, xmmword ptr [r13 + 0x10]
	movups	xmm2, xmmword ptr [r13 + 0x20]
	movups	xmmword ptr [rsp + 0x20], xmm2
	movups	xmmword ptr [rsp + 0x10], xmm1
	movdqu	xmmword ptr [rsp], xmm0
	mov	ebp, 1
	mov	esi, 1
	mov	rdi, r14
	call	apply_relative_time
	test	al, al
	movabs	r8, 0x8000000000000000
	mov	r9d, 0xffffffff
	movabs	r10, 0xf333333333333334
	movabs	r11, 0xccccccccccccccc
	mov	rdi, qword ptr [rsp + 0x48]
	mov	rdx, rbx
	mov	rsi, qword ptr [rsp + 0x60]
	jne	.label_945
	jmp	.label_1021
.label_1192:
	inc	qword ptr [r14 + 0xc8]
	xor	eax, eax
	cmp	rdi, 3
	pshufd	xmm0, xmm0, 0x4e
	movq	rcx, xmm0
	jl	.label_1175
	mov	rdi, rdx
	movabs	rdx, 0xa3d70a3d70a3d70b
	mov	rax, rcx
	imul	rdx
	add	rdx, rcx
	mov	rax, rdx
	shr	rax, 0x3f
	sar	rdx, 6
	add	rdx, rax
	mov	rbx, rsi
	imul	rsi, rdx, 0x64
	mov	rax, rcx
	sub	rax, rsi
	mov	rsi, rbx
	mov	rcx, rdx
	mov	rdx, rdi
.label_1175:
	mov	rdi, qword ptr [rsp + 0x48]
	mov	qword ptr [r14 + 0x48], rcx
	mov	qword ptr [r14 + 0x50], rax
.label_1045:
	pxor	xmm0, xmm0
	mov	rax, qword ptr [rsp + 0xc0]
	movdqu	xmmword ptr [rax], xmm0
	mov	dword ptr [r14 + 0x1c], 2
	jmp	.label_945
.label_1059:
	mov	rax, r8
	cqo	
	idiv	rbx
	mov	ebp, 1
	cmp	rsi, rax
.label_1066:
	mov	rdx, qword ptr [rsp + 0x88]
	jmp	.label_958
.label_991:
	mov	qword ptr [rsp + 0x60], rsi
	lea	rcx, [r13 - 0x38]
	mov	rsi, qword ptr [r13 - 0x38]
	test	rsi, rsi
	js	.label_962
	cmp	rbx, -1
	mov	rbp, rbx
	jne	.label_967
	mov	rsi, qword ptr [rsp + 0x60]
	jmp	.label_952
.label_1080:
	movabs	rdx, 0xa3d70a3d70a3d70b
	mov	rax, rcx
	imul	rdx
	add	rdx, rcx
	mov	rax, rdx
	shr	rax, 0x3f
	sar	rdx, 6
	add	rdx, rax
	imul	rax, rdx, 0x3c
	imul	rdx, rdx, 0x64
	sub	rcx, rdx
	add	rcx, rax
	mov	al, 1
	jmp	.label_973
.label_1142:
	movabs	rdx, 0xa3d70a3d70a3d70b
	mov	rax, rcx
	imul	rdx
	add	rdx, rcx
	mov	rax, rdx
	shr	rax, 0x3f
	sar	rdx, 6
	add	rdx, rax
	imul	rax, rdx, 0x3c
	imul	rdx, rdx, 0x64
	sub	rcx, rdx
	add	rcx, rax
	mov	al, 1
	jmp	.label_984
.label_1055:
	mov	qword ptr [rsp + 0x60], rsi
	lea	rcx, [r13 - 0x30]
	mov	rsi, qword ptr [r13 - 0x30]
	test	rsi, rsi
	js	.label_962
	cmp	rbx, -1
	mov	rbp, rbx
	je	.label_1048
.label_967:
	mov	rax, r8
	mov	qword ptr [rsp + 0x88], rdx
	cqo	
	idiv	rbp
	mov	rdx, qword ptr [rsp + 0x88]
	mov	ebp, 1
	cmp	rax, rsi
	jmp	.label_958
.label_962:
	lea	rax, [r8 - 1]
	mov	rbp, rbx
	mov	qword ptr [rsp + 0x88], rdx
	cqo	
	idiv	rbp
	mov	rdx, qword ptr [rsp + 0x88]
	mov	ebp, 1
	cmp	rsi, rax
.label_958:
	mov	rsi, qword ptr [rsp + 0x60]
	jl	.label_1021
.label_952:
	mov	rax, qword ptr [rsp + 0x50]
	imul	rax, qword ptr [rcx]
.label_1187:
	mov	qword ptr [rsp + 0x50], rax
	xor	eax, eax
	mov	qword ptr [rsp + 0x58], rax
	xor	eax, eax
	mov	qword ptr [rsp + 0x68], rax
.label_1169:
	xor	eax, eax
	mov	qword ptr [rsp + 0x80], rax
.label_995:
	xor	eax, eax
	mov	qword ptr [rsp + 0x78], rax
.label_1075:
	xor	eax, eax
	mov	qword ptr [rsp + 0x70], rax
.label_1036:
	mov	dword ptr [rsp + 0x44], 0
.label_945:
	sub	rdi, rsi
	neg	rsi
	imul	rax, rsi, 0x38
	lea	rcx, [r13 + rax + 0x38]
	mov	rsi, qword ptr [rsp + 0x58]
	mov	qword ptr [r13 + rax + 0x38], rsi
	mov	rsi, qword ptr [rsp + 0x68]
	mov	qword ptr [r13 + rax + 0x40], rsi
	mov	rsi, qword ptr [rsp + 0x50]
	mov	qword ptr [r13 + rax + 0x48], rsi
	mov	rsi, qword ptr [rsp + 0x80]
	mov	qword ptr [r13 + rax + 0x50], rsi
	mov	rsi, qword ptr [rsp + 0x78]
	mov	qword ptr [r13 + rax + 0x58], rsi
	mov	rsi, qword ptr [rsp + 0x70]
	mov	qword ptr [r13 + rax + 0x60], rsi
	mov	esi, dword ptr [rsp + 0x44]
	mov	dword ptr [r13 + rax + 0x68], esi
	mov	esi, dword ptr [rsp + 0xd4]
	mov	dword ptr [r13 + rax + 0x6c], esi
	movzx	eax, byte ptr [rdx + yyr1]
	movsx	esi, byte ptr [rax + label_1027]
	movsx	edx, word ptr [rsp + rdi*2 + 0xf0]
	add	esi, edx
	cmp	esi, 0x70
	ja	.label_1028
	movsxd	rsi, esi
	mov	rbx, rdi
	movsx	edi, byte ptr [rsi + yycheck]
	cmp	edi, edx
	mov	rdi, rbx
	jne	.label_1028
	movzx	eax, byte ptr [rsi + yytable]
	jmp	.label_1077
	.section	.text
	.align	32
	#Procedure 0x40be23
	.globl sub_40be23
	.type sub_40be23, @function
sub_40be23:

	nop	word ptr cs:[rax + rax]
.label_1028:
	movsx	eax, byte ptr [rax + label_1079]
.label_1077:
	mov	word ptr [rsp + rdi*2 + 0xf2], ax
	inc	rdi
	mov	ebp, 2
	cmp	rdi, 0x12
	mov	r13, rcx
	jle	.label_990
	jmp	.label_1021
.label_1093:
	movabs	rsi, 0xfdddddddddddddde
	cmp	rcx, rsi
	jge	.label_1091
.label_1099:
	mov	sil, 1
	jmp	.label_1096
.label_1091:
	xor	esi, esi
.label_1096:
	imul	rcx, rcx, 0x3c
	test	dl, dl
	je	.label_1109
	mov	rdx, rax
	xor	rdx, r8
	cmp	rcx, rdx
	setl	dl
	sub	rcx, rax
	jmp	.label_1102
.label_1109:
	lea	rdx, [r8 - 1]
	sub	rdx, rax
	cmp	rdx, rcx
	setl	dl
	add	rcx, rax
.label_1102:
	or	dl, sil
	sete	al
	mov	rsi, rbx
.label_973:
	mov	ebp, 1
	test	al, al
	je	.label_1021
	lea	rax, [rcx + 0x5a0]
	cmp	rax, 0xb40
	ja	.label_1021
	mov	qword ptr [rsp + 0x60], rsi
	movabs	rsi, 0x3c00000000
	imul	eax, ecx, 0x3c
	mov	dword ptr [r14 + 0x18], eax
	mov	rdx, qword ptr [r13 - 0x70]
	test	rdx, rdx
	js	.label_1119
	mov	rbx, rdi
	lea	rdi, [r8 - 1]
	sub	rdi, rdx
	imul	rcx, rsi
	sar	rcx, 0x20
	cmp	rdi, rcx
	mov	rdi, rbx
	jge	.label_1127
	jmp	.label_1135
.label_1119:
	imul	rcx, rsi
	sar	rcx, 0x20
	mov	rsi, r8
	sub	rsi, rdx
	cmp	rcx, rsi
	jl	.label_1135
.label_1127:
	add	rcx, rdx
	sub	rcx, -0x80000000
	shr	rcx, 0x20
	jne	.label_1135
	add	edx, eax
	mov	dword ptr [r14 + 0x18], edx
	mov	rdx, qword ptr [rsp + 0x88]
	mov	rsi, qword ptr [rsp + 0x60]
	jmp	.label_945
.label_1183:
	movabs	rsi, 0xfdddddddddddddde
	cmp	rcx, rsi
	jge	.label_1151
.label_1159:
	mov	sil, 1
	jmp	.label_1155
.label_1151:
	xor	esi, esi
.label_1155:
	imul	rcx, rcx, 0x3c
	test	dl, dl
	je	.label_1157
	mov	rdx, rax
	xor	rdx, r8
	cmp	rcx, rdx
	setl	dl
	sub	rcx, rax
	jmp	.label_1161
.label_1157:
	lea	rdx, [r8 - 1]
	sub	rdx, rax
	cmp	rdx, rcx
	setl	dl
	add	rcx, rax
.label_1161:
	or	dl, sil
	sete	al
	mov	rsi, rbp
.label_984:
	mov	ebp, 1
	test	al, al
	mov	rdx, rbx
	je	.label_1021
	lea	rax, [rcx + 0x5a0]
	cmp	rax, 0xb40
	ja	.label_1021
	imul	eax, ecx, 0x3c
	mov	dword ptr [r14 + 0x18], eax
	jmp	.label_945
.label_944:
	mov	rbx, rdx
	cmp	rdi, 2
	jg	.label_1182
	mov	rax, qword ptr [r14 + 0xc8]
	test	rax, rax
	jne	.label_1182
	mov	qword ptr [r14 + 0xc8], 1
	pshufd	xmm0, xmm0, 0x4e
	movq	rcx, xmm0
	xor	eax, eax
	jmp	.label_1122
.label_1130:
	cmp	rdi, 2
	jg	.label_1194
	mov	rax, qword ptr [r14 + 0xc8]
	test	rax, rax
	jne	.label_1194
	mov	qword ptr [r14 + 0xc8], 1
	pshufd	xmm0, xmm0, 0x4e
	movq	rcx, xmm0
	xor	eax, eax
	jmp	.label_1175
.label_1048:
	mov	rsi, qword ptr [rsp + 0x60]
	jmp	.label_952
.label_1182:
	mov	byte ptr [r14 + 0xd8], 1
	movdqu	xmmword ptr [r14 + 0x20], xmm0
	mov	qword ptr [r14 + 0x30], rdi
	jmp	.label_954
.label_1194:
	mov	byte ptr [r14 + 0xd8], 1
	movdqu	xmmword ptr [r14 + 0x20], xmm0
	jmp	.label_960
.label_1190:
	test	cl, cl
	lea	rdx, [rsp + 0xa0]
	je	.label_965
.label_1126:
	shr	esi, 8
	cmp	cl, 0x2e
	sete	dil
	lea	rcx, [rsp + 0xa1]
	cmove	rcx, rdx
	mov	byte ptr [rcx], sil
	test	sil, sil
	je	.label_1073
	lea	rax, [rsp + 0xa2]
.label_979:
	lea	rbp, [rcx + 1]
	movzx	edx, byte ptr [rax]
	cmp	byte ptr [rax - 1], 0x2e
	mov	sil, 1
	je	.label_1132
	mov	esi, edi
.label_1132:
	cmovne	rcx, rbp
	mov	byte ptr [rcx], dl
	inc	rax
	test	dl, dl
	mov	edi, esi
	jne	.label_979
	jmp	.label_982
.label_1073:
	mov	esi, edi
.label_982:
	test	sil, 1
	lea	rsi, [rsp + 0xa0]
	je	.label_965
	mov	rdi, r14
	call	lookup_zone
	test	rax, rax
	jne	.label_947
.label_965:
	mov	r12d, 0x3f
	cmp	byte ptr [r14 + 0xd9], 0
	je	.label_993
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_1001
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	xor	eax, eax
	mov	rdi, rcx
	lea	rsi, [rsp + 0xa0]
	call	dbg_printf
	jmp	.label_993
	.section	.text
	.align	32
	#Procedure 0x40c101
	.globl sub_40c101
	.type sub_40c101, @function
sub_40c101:

	nop	word ptr cs:[rax + rax]
.label_990:
	cmp	eax, 0xc
	jne	.label_1022
	xor	ebp, ebp
.label_1021:
	mov	eax, ebp
	add	rsp, 0x588
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_1135:
	add	edx, eax
	mov	dword ptr [r14 + 0x18], edx
	jmp	.label_1021
	.section	.text
	.align	32
	#Procedure 0x40c137
	.globl sub_40c137
	.type sub_40c137, @function
sub_40c137:

	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40c140
	.globl quotearg_n_mem
	.type quotearg_n_mem, @function
quotearg_n_mem:

	mov	ecx, OFFSET FLAT:default_quoting_options
	jmp	quotearg_n_options
	.section	.text
	.align	32
	#Procedure 0x40c14a
	.globl sub_40c14a
	.type sub_40c14a, @function
sub_40c14a:

	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40c150

	.globl tzalloc
	.type tzalloc, @function
tzalloc:
	push	r15
	push	r14
	push	r12
	push	rbx
	push	rax
	mov	r14, rdi
	xor	r15d, r15d
	test	r14, r14
	je	.label_1196
	mov	rdi, r14
	call	strlen
	mov	r15, rax
	inc	r15
.label_1196:
	lea	rax, [r15 + 0x11]
	and	rax, 0xfffffffffffffff8
	cmp	r15, 0x77
	mov	edi, 0x80
	cmovae	rdi, rax
	call	malloc
	mov	rbx, rax
	test	rbx, rbx
	je	.label_1197
	mov	qword ptr [rbx], 0
	test	r14, r14
	setne	byte ptr [rbx + 8]
	mov	byte ptr [rbx + 9], 0
	je	.label_1197
	mov	r12, rbx
	add	r12, 9
	mov	rdi, r12
	mov	rsi, r14
	mov	rdx, r15
	call	memcpy
	mov	byte ptr [r12 + r15], 0
.label_1197:
	mov	rax, rbx
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	ret	
.label_1198:
	push	rax
	call	abort
	.section	.text
	.align	32
	#Procedure 0x40c1d6
	.globl sub_40c1d6
	.type sub_40c1d6, @function
sub_40c1d6:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40c1db
	.globl set_custom_quoting
	.type set_custom_quoting, @function
set_custom_quoting:

	test	rdi, rdi
	mov	eax, OFFSET FLAT:default_quoting_options
	cmovne	rax, rdi
	mov	dword ptr [rax], 0xa
	test	rsi, rsi
	je	.label_1198
	test	rdx, rdx
	je	.label_1198
	mov	qword ptr [rax + 0x28], rsi
	mov	qword ptr [rax + 0x30], rdx
	ret	
	.section	.text
	.align	32
	#Procedure 0x40c200

	.globl quote_n
	.type quote_n, @function
quote_n:
	mov	rdx, -1
	mov	ecx, OFFSET FLAT:quote_quoting_options
	jmp	quotearg_n_options
	.section	.text
	.align	32
	#Procedure 0x40c211
	.globl sub_40c211
	.type sub_40c211, @function
sub_40c211:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40c220

	.globl set_program_name
	.type set_program_name, @function
set_program_name:
	push	r14
	push	rbx
	push	rax
	mov	rbx, rdi
	test	rbx, rbx
	je	.label_1199
	mov	esi, 0x2f
	mov	rdi, rbx
	call	strrchr
	test	rax, rax
	lea	r14, [rax + 1]
	cmove	r14, rbx
	mov	rax, r14
	sub	rax, rbx
	cmp	rax, 7
	jl	.label_1201
	lea	rdi, [r14 - 7]
	mov	esi, OFFSET FLAT:label_1203
	mov	edx, 7
	call	strncmp
	test	eax, eax
	jne	.label_1201
	mov	esi, OFFSET FLAT:label_1202
	mov	edx, 3
	mov	rdi, r14
	call	strncmp
	test	eax, eax
	jne	.label_1204
	add	r14, 3
	mov	qword ptr [rip + __progname],  r14
.label_1204:
	mov	rbx, r14
.label_1201:
	mov	qword ptr [rip + program_name],  rbx
	mov	qword ptr [rip + __progname_full],  rbx
	add	rsp, 8
	pop	rbx
	pop	r14
	ret	
.label_1199:
	mov	rcx, qword ptr [rip + stderr]
	mov	edi, OFFSET FLAT:label_1200
	mov	esi, 0x37
	mov	edx, 1
	call	fwrite
	call	abort
	.section	.text
	.align	32
	#Procedure 0x40c2c1
	.globl sub_40c2c1
	.type sub_40c2c1, @function
sub_40c2c1:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40c2d0

	.globl xalloc_die
	.type xalloc_die, @function
xalloc_die:
	push	rbx
	mov	ebx, dword ptr [rip + exit_failure]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_1205
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	xor	esi, esi
	mov	edx, OFFSET FLAT:label_30
	xor	eax, eax
	mov	edi, ebx
	call	error
	call	abort
	.section	.text
	.align	32
	#Procedure 0x40c300
	.globl quotearg_colon_mem
	.type quotearg_colon_mem, @function
quotearg_colon_mem:

	sub	rsp, 0x38
	mov	rax, rsi
	mov	rdx, rdi
	mov	rcx, qword ptr [rip + label_329]
	mov	qword ptr [rsp + 0x30], rcx
	movups	xmm0, xmmword ptr [rip + label_330]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0, xmmword ptr [rip + label_331]
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
	#Procedure 0x40c354
	.globl sub_40c354
	.type sub_40c354, @function
sub_40c354:

	nop	word ptr cs:[rax + rax]
.label_1206:
	call	xalloc_die
	.section	.text
	.align	32
	#Procedure 0x40c365
	.globl sub_40c365
	.type sub_40c365, @function
sub_40c365:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40c373
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
	je	.label_1207
	test	r15, r15
	je	.label_1206
.label_1207:
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
	#Procedure 0x40c3b0

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
	je	.label_1212
	mov	rdi, rbx
	call	set_tz
	mov	r14, rax
	test	r14, r14
	je	.label_1208
	mov	rdi, r15
	call	mktime
	mov	qword ptr [rsp], rax
	cmp	rax, -1
	jne	.label_1209
	lea	rdi, [rsp]
	lea	rsi, [rsp + 8]
	call	localtime_r
	test	rax, rax
	je	.label_1211
	mov	rax, qword ptr [rsp + 8]
	mov	rcx, qword ptr [rsp + 0x10]
	xor	rax, qword ptr [r15]
	xor	rcx, qword ptr [r15 + 8]
	mov	edx, ecx
	or	edx, eax
	shr	rax, 0x20
	or	edx, eax
	shr	rcx, 0x20
	mov	rax, qword ptr [rsp + 0x18]
	xor	rax, qword ptr [r15 + 0x10]
	mov	esi, eax
	or	esi, ecx
	or	esi, edx
	shr	rax, 0x20
	or	eax, esi
	mov	edi, dword ptr [r15 + 0x20]
	mov	edx, dword ptr [rsp + 0x28]
	test	edi, edi
	sete	sil
	test	edx, edx
	sete	cl
	xor	cl, sil
	or	edx, edi
	setns	dl
	and	dl, cl
	movzx	ecx, dl
	or	ecx, eax
	jne	.label_1211
.label_1209:
	mov	rdi, rbx
	mov	rsi, r15
	call	save_abbr
	test	al, al
	jne	.label_1211
	mov	qword ptr [rsp], -1
.label_1211:
	mov	rdi, r14
	call	revert_tz
	test	al, al
	je	.label_1208
	mov	rax, qword ptr [rsp]
	jmp	.label_1210
.label_1208:
	mov	rax, -1
.label_1210:
	add	rsp, 0x40
	pop	rbx
	pop	r14
	pop	r15
	ret	
.label_1212:
	mov	rdi, r15
	add	rsp, 0x40
	pop	rbx
	pop	r14
	pop	r15
	jmp	timegm
	.section	.text
	.align	32
	#Procedure 0x40c4a4
	.globl sub_40c4a4
	.type sub_40c4a4, @function
sub_40c4a4:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40c4b0
	.globl quotearg_char_mem
	.type quotearg_char_mem, @function
quotearg_char_mem:

	sub	rsp, 0x38
	mov	ecx, edx
	mov	r8, rsi
	mov	rdx, rdi
	mov	rsi, qword ptr [rip + label_329]
	mov	qword ptr [rsp + 0x30], rsi
	movups	xmm0, xmmword ptr [rip + label_330]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0, xmmword ptr [rip + label_331]
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
	#Procedure 0x40c51e
	.globl sub_40c51e
	.type sub_40c51e, @function
sub_40c51e:

	nop	
	.section	.text
	.align	32
	#Procedure 0x40c520
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
	#Procedure 0x40c539
	.globl sub_40c539
	.type sub_40c539, @function
sub_40c539:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x40c540
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
	je	.label_1213
	mov	qword ptr [rax], rbx
.label_1213:
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
	#Procedure 0x40c62c
	.globl sub_40c62c
	.type sub_40c62c, @function
sub_40c62c:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x40c630
	.globl current_timespec
	.type current_timespec, @function
current_timespec:

	sub	rsp, 0x18
	lea	rsi, [rsp + 8]
	xor	edi, edi
	call	clock_gettime
	mov	rax, qword ptr [rsp + 8]
	mov	rdx, qword ptr [rsp + 0x10]
	add	rsp, 0x18
	ret	
	.section	.text
	.align	32
	#Procedure 0x40c64f
	.globl sub_40c64f
	.type sub_40c64f, @function
sub_40c64f:

	nop	
	.section	.text
	.align	32
	#Procedure 0x40c650

	.globl version_etc
	.type version_etc, @function
version_etc:
	sub	rsp, 0xd8
	test	al, al
	je	.label_1214
	movaps	xmmword ptr [rsp + 0x50], xmm0
	movaps	xmmword ptr [rsp + 0x60], xmm1
	movaps	xmmword ptr [rsp + 0x70], xmm2
	movaps	xmmword ptr [rsp + 0x80], xmm3
	movaps	xmmword ptr [rsp + 0x90], xmm4
	movaps	xmmword ptr [rsp + 0xa0], xmm5
	movaps	xmmword ptr [rsp + 0xb0], xmm6
	movaps	xmmword ptr [rsp + 0xc0], xmm7
.label_1214:
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

	.globl hard_locale
	.type hard_locale, @function
hard_locale:
	push	rbx
	xor	esi, esi
	call	setlocale
	mov	bl, 1
	test	rax, rax
	je	.label_1216
	cmp	byte ptr [rax], 0x43
	jne	.label_1218
	cmp	byte ptr [rax + 1], 0
	je	.label_1215
.label_1218:
	mov	esi, OFFSET FLAT:label_1217
	mov	rdi, rax
	call	strcmp
	test	eax, eax
	jne	.label_1216
.label_1215:
	xor	ebx, ebx
.label_1216:
	mov	eax, ebx
	pop	rbx
	ret	
	.section	.text
	.align	32
	#Procedure 0x40c711
	.globl sub_40c711
	.type sub_40c711, @function
sub_40c711:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40c720

	.globl lookup_zone
	.type lookup_zone, @function
lookup_zone:
	push	r15
	push	r14
	push	r12
	push	rbx
	push	rax
	mov	r14, rsi
	mov	r15, rdi
	mov	esi, OFFSET FLAT:label_1219
	mov	rdi, r14
	call	strcmp
	mov	r12d, OFFSET FLAT:universal_time_zone_table
	test	eax, eax
	je	.label_1220
	mov	esi, OFFSET FLAT:label_1222
	mov	rdi, r14
	call	strcmp
	mov	r12d, OFFSET FLAT:label_1225
	test	eax, eax
	je	.label_1220
	mov	esi, OFFSET FLAT:label_1221
	mov	rdi, r14
	call	strcmp
	mov	r12d, OFFSET FLAT:label_1224
	test	eax, eax
	je	.label_1220
	mov	rsi, qword ptr [r15 + 0xe8]
	test	rsi, rsi
	je	.label_1228
	add	r15, 0xe8
	mov	r12, r15
	nop	word ptr cs:[rax + rax]
.label_1223:
	mov	rdi, r14
	call	strcmp
	test	eax, eax
	je	.label_1220
	mov	rsi, qword ptr [r12 + 0x10]
	add	r12, 0x10
	test	rsi, rsi
	jne	.label_1223
.label_1228:
	mov	ebx, OFFSET FLAT:time_zone_table
	mov	esi, OFFSET FLAT:label_1227
	xor	r12d, r12d
	nop	word ptr [rax + rax]
.label_1229:
	mov	rdi, r14
	call	strcmp
	test	eax, eax
	je	.label_1226
	mov	rsi, qword ptr [rbx + 0x10]
	add	rbx, 0x10
	test	rsi, rsi
	jne	.label_1229
	jmp	.label_1220
.label_1226:
	mov	r12, rbx
.label_1220:
	mov	rax, r12
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	ret	
	.section	.text
	.align	32
	#Procedure 0x40c7fd
	.globl sub_40c7fd
	.type sub_40c7fd, @function
sub_40c7fd:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x40c800

	.globl debug_strfdatetime
	.type debug_strfdatetime, @function
debug_strfdatetime:
	push	rbp
	push	r15
	push	r14
	push	r12
	push	rbx
	sub	rsp, 0x20
	mov	r15, rdx
	mov	rbx, rsi
	mov	rax, rdi
	mov	esi, 0x64
	mov	edx, OFFSET FLAT:label_195
	xor	r8d, r8d
	xor	r9d, r9d
	mov	rdi, r15
	mov	rcx, rax
	call	nstrftime
	test	rbx, rbx
	je	.label_1230
	cmp	eax, 0x63
	jg	.label_1230
	cmp	qword ptr [rbx + 0xd0], 0
	je	.label_1230
	movsxd	rbx, dword ptr [rbx + 0x18]
	cdqe	
	lea	r14, [r15 + rax]
	mov	r12d, 0x64
	sub	r12d, eax
	mov	eax, ebx
	shr	eax, 0x1f
	imul	rbp, rbx, -0x6e5d4c3b
	shr	rbp, 0x20
	add	ebp, ebx
	mov	ecx, ebp
	shr	ecx, 0x1f
	sar	ebp, 0xb
	add	ebp, ecx
	mov	r9d, ebp
	neg	r9d
	cmp	rbx, -0xe10
	lea	r8d, [rax + rax + 0x2b]
	cmovg	r9d, ebp
	lea	rdi, [rsp]
	mov	esi, 1
	mov	edx, 0x1b
	mov	ecx, OFFSET FLAT:label_209
	xor	eax, eax
	call	__sprintf_chk
	imul	edx, ebp, 0xe10
	mov	esi, ebx
	sub	esi, edx
	mov	ecx, esi
	neg	ecx
	cmovl	ecx, esi
	cmp	ebx, edx
	movsxd	rsi, r12d
	je	.label_1233
	cdqe	
	lea	rax, [rsp + rax]
	movsxd	r9, ecx
	imul	rdx, r9, -0x77777777
	shr	rdx, 0x20
	add	edx, r9d
	mov	edi, edx
	shr	edi, 0x1f
	sar	edx, 5
	add	edx, edi
	imul	r8d, edx, 0x3c
	imul	rbp, r9, 0x1b4e81b5
	mov	rbx, rbp
	shr	rbx, 0x3f
	shr	rbp, 0x26
	movsxd	rdx, edx
	imul	rdi, rdx, 0x66666667
	mov	rcx, rdi
	shr	rcx, 0x3f
	sar	rdi, 0x22
	add	edi, ecx
	add	edi, edi
	lea	ecx, [rdi + rdi*4]
	sub	edx, ecx
	add	edx, 0x30
	sub	r9d, r8d
	mov	byte ptr [rax], 0x3a
	lea	ecx, [rbp + rbx + 0x30]
	mov	byte ptr [rax + 1], cl
	mov	byte ptr [rax + 2], dl
	je	.label_1232
	mov	byte ptr [rax + 3], 0x3a
	movsxd	rcx, r9d
	imul	rcx, rcx, 0x66666667
	mov	rdx, rcx
	shr	rdx, 0x3f
	sar	rcx, 0x22
	lea	edi, [rcx + rdx]
	lea	ecx, [rcx + rdx + 0x30]
	mov	byte ptr [rax + 4], cl
	add	edi, edi
	lea	ecx, [rdi + rdi*4]
	neg	ecx
	lea	ecx, [r9 + rcx + 0x30]
	mov	byte ptr [rax + 5], cl
	add	rax, 6
	jmp	.label_1234
.label_1232:
	add	rax, 3
.label_1234:
	mov	byte ptr [rax], 0
.label_1233:
	lea	r9, [rsp]
	mov	edx, 1
	mov	rcx, -1
	mov	r8d, OFFSET FLAT:label_1231
	xor	eax, eax
	mov	rdi, r14
	call	__snprintf_chk
.label_1230:
	mov	rax, r15
	add	rsp, 0x20
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40c9a4
	.globl sub_40c9a4
	.type sub_40c9a4, @function
sub_40c9a4:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40c9b0
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
	#Procedure 0x40ca25
	.globl sub_40ca25
	.type sub_40ca25, @function
sub_40ca25:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40ca30
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
	je	.label_1235
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
.label_1235:
	call	abort
	.section	.text
	.align	32
	#Procedure 0x40ca91
	.globl sub_40ca91
	.type sub_40ca91, @function
sub_40ca91:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40caa0

	.globl set_tz
	.type set_tz, @function
set_tz:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	push	rax
	mov	r14, rdi
	mov	edi, OFFSET FLAT:label_17
	call	getenv
	mov	r15, rax
	test	r15, r15
	mov	bl, byte ptr [r14 + 8]
	je	.label_1244
	test	bl, bl
	je	.label_1236
	lea	rdi, [r14 + 9]
	mov	rsi, r15
	call	strcmp
	mov	ecx, eax
	mov	eax, 1
	test	ecx, ecx
	je	.label_1239
.label_1236:
	mov	rdi, r15
	call	strlen
	mov	r12, rax
	inc	r12
	mov	bpl, 1
	jmp	.label_1241
.label_1244:
	xor	ebp, ebp
	mov	eax, 1
	test	bl, bl
	mov	r12d, 0
	je	.label_1239
.label_1241:
	lea	rax, [r12 + 0x11]
	and	rax, 0xfffffffffffffff8
	cmp	r12, 0x77
	mov	edi, 0x80
	cmovae	rdi, rax
	call	malloc
	mov	r13, rax
	xor	eax, eax
	test	r13, r13
	je	.label_1239
	mov	qword ptr [r13], 0
	mov	byte ptr [r13 + 8], bpl
	mov	byte ptr [r13 + 9], 0
	test	bpl, bpl
	je	.label_1243
	lea	rbp, [r13 + 9]
	mov	rdi, rbp
	mov	rsi, r15
	mov	rdx, r12
	call	memcpy
	mov	byte ptr [rbp + r12], 0
.label_1243:
	test	bl, bl
	je	.label_1240
	add	r14, 9
	mov	edi, OFFSET FLAT:label_17
	mov	edx, 1
	mov	rsi, r14
	call	setenv
	jmp	.label_1245
.label_1242:
	call	tzset
	mov	rax, r13
.label_1239:
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
	#Procedure 0x40cb95
	.globl sub_40cb95
	.type sub_40cb95, @function
sub_40cb95:

	nop	word ptr cs:[rax + rax]
.label_1240:
	mov	edi, OFFSET FLAT:label_17
	call	unsetenv
.label_1245:
	test	eax, eax
	je	.label_1242
	call	__errno_location
	mov	r14, rax
	mov	ebp, dword ptr [r14]
	cmp	r13, 2
	jb	.label_1237
	nop	dword ptr [rax]
.label_1238:
	mov	rbx, qword ptr [r13]
	mov	rdi, r13
	call	free
	test	rbx, rbx
	mov	r13, rbx
	jne	.label_1238
.label_1237:
	mov	dword ptr [r14], ebp
	xor	eax, eax
	jmp	.label_1239
	.section	.text
	.align	32
	#Procedure 0x40cbe0
	.globl quotearg_n
	.type quotearg_n, @function
quotearg_n:

	mov	rdx, -1
	mov	ecx, OFFSET FLAT:default_quoting_options
	jmp	quotearg_n_options
	.section	.text
	.align	32
	#Procedure 0x40cbee
	.globl sub_40cbee
	.type sub_40cbee, @function
sub_40cbee:

	nop	
	.section	.text
	.align	32
	#Procedure 0x40cbf0

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
	js	.label_1249
	mov	eax, dword ptr [r13]
	mov	rbp, qword ptr [rip + slotvec]
	cmp	dword ptr [rip + nslots],  r12d
	mov	qword ptr [rsp + 0x18], r13
	mov	dword ptr [rsp], eax
	mov	qword ptr [rsp + 0x10], rbx
	mov	qword ptr [rsp + 8], r15
	jg	.label_1252
	cmp	r12d, 0x7fffffff
	je	.label_1247
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
	jne	.label_1250
	movups	xmm0, xmmword ptr [rip + slotvec0]
	movups	xmmword ptr [r14], xmm0
.label_1250:
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
.label_1252:
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
	jbe	.label_1248
	mov	rax, qword ptr [rsp + 0x18]
	mov	ebp, dword ptr [rsp]
	jmp	.label_1251
.label_1248:
	lea	rax, [rbp + r13]
	lea	r12, [rbp + r13 + 8]
	inc	r15
	mov	qword ptr [rax], r15
	mov	eax, OFFSET FLAT:slot0
	cmp	r14, rax
	mov	ebp, dword ptr [rsp]
	je	.label_1246
	mov	rdi, r14
	call	free
.label_1246:
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
.label_1251:
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
.label_1249:
	call	abort
.label_1247:
	call	xalloc_die
	.section	.text
	.align	32
	#Procedure 0x40cdad
	.globl sub_40cdad
	.type sub_40cdad, @function
sub_40cdad:

	nop	dword ptr [rax]
.label_1253:
	call	xalloc_die
	.section	.text
	.align	32
	#Procedure 0x40cdb5
	.globl sub_40cdb5
	.type sub_40cdb5, @function
sub_40cdb5:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40cdc0
	.globl xnmalloc
	.type xnmalloc, @function
xnmalloc:

	push	rbx
	mov	rbx, rsi
	movabs	rax, 0x7fffffffffffffff
	xor	edx, edx
	div	rbx
	cmp	rax, rdi
	jb	.label_1253
	imul	rbx, rdi
	mov	rdi, rbx
	call	malloc
	test	rbx, rbx
	je	.label_1254
	test	rax, rax
	je	.label_1253
.label_1254:
	pop	rbx
	ret	
.label_1258:
	mov	byte ptr [r14], 0
	xor	eax, eax
	jmp	.label_1255
	.section	.text
	.align	32
	#Procedure 0x40cdf8

	.globl str_days
	.type str_days, @function
str_days:
	push	r14
	push	rbx
	push	rax
	mov	r14, rsi
	mov	rbx, rdi
	cmp	byte ptr [rbx + 0xe0], 0
	je	.label_1258
	mov	r9, qword ptr [rbx + 8]
	lea	rax, [r9 + 1]
	cmp	rax, 0xd
	ja	.label_1260
	imul	rax, rax, 0xb
	lea	r9, qword ptr [rax + str_days.ordinal_values]
	mov	esi, 0x64
	mov	edx, 1
	mov	rcx, -1
	mov	r8d, OFFSET FLAT:label_30
	jmp	.label_1259
.label_1260:
	mov	esi, 0x64
	mov	edx, 1
	mov	rcx, -1
	mov	r8d, OFFSET FLAT:label_1261
.label_1259:
	xor	eax, eax
	mov	rdi, r14
	call	__snprintf_chk
.label_1255:
	movsxd	rcx, dword ptr [rbx + 0x10]
	test	rcx, rcx
	js	.label_1257
	cmp	eax, 0x63
	ja	.label_1257
	cmp	ecx, 6
	jg	.label_1257
	movsxd	rdi, eax
	add	rdi, r14
	mov	edx, 0x64
	sub	edx, eax
	movsxd	rsi, edx
	mov	r8d, OFFSET FLAT:label_1256
	cmp	eax, 1
	adc	r8, 0
	lea	r9, qword ptr [(rcx * 4) + str_days.days_values]
	mov	edx, 1
	mov	rcx, -1
	xor	eax, eax
	call	__snprintf_chk
.label_1257:
	mov	rax, r14
	add	rsp, 8
	pop	rbx
	pop	r14
	ret	
	.section	.text
	.align	32
	#Procedure 0x40ceb4
	.globl sub_40ceb4
	.type sub_40ceb4, @function
sub_40ceb4:

	nop	word ptr cs:[rax + rax]
.label_1266:
	test	rax, rax
	mov	ebx, 0x80
	cmovne	rbx, rax
	test	rbx, rbx
	js	.label_1262
	mov	qword ptr [rsi], rbx
.label_1264:
	mov	rsi, rbx
	call	realloc
	test	rbx, rbx
	je	.label_1263
	test	rax, rax
	je	.label_1262
.label_1263:
	pop	rbx
	ret	
	.section	.text
	.align	32
	#Procedure 0x40cee8
	.globl x2realloc
	.type x2realloc, @function
x2realloc:

	push	rbx
	mov	rax, qword ptr [rsi]
	test	rdi, rdi
	je	.label_1266
	movabs	rcx, 0x5555555555555554
	cmp	rax, rcx
	jae	.label_1265
	mov	rbx, rax
	shr	rbx, 1
	add	rbx, rax
	inc	rbx
	mov	qword ptr [rsi], rbx
	jne	.label_1264
	call	free
	xor	eax, eax
	jmp	.label_1263
.label_1265:
	call	xalloc_die
	.section	.text
	.align	32
	#Procedure 0x40cf1f
	.globl sub_40cf1f
	.type sub_40cf1f, @function
sub_40cf1f:

	nop	word ptr cs:[rax + rax]
.label_1262:
	call	xalloc_die
	.section	.text
	.align	32
	#Procedure 0x40cf95
	.globl sub_40cf95
	.type sub_40cf95, @function
sub_40cf95:

	nop	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40cfa2
	.globl sub_40cfa2
	.type sub_40cfa2, @function
sub_40cfa2:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40cfc6
	.globl sub_40cfc6
	.type sub_40cfc6, @function
sub_40cfc6:

	nop	word ptr cs:[rax + rax]
