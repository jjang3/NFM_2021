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

	.globl hard_locale
	.type hard_locale, @function
hard_locale:
	push	rbx
	xor	esi, esi
	call	setlocale
	mov	bl, 1
	test	rax, rax
	je	.label_10
	cmp	byte ptr [rax], 0x43
	jne	.label_12
	cmp	byte ptr [rax + 1], 0
	je	.label_9
.label_12:
	mov	esi, OFFSET FLAT:label_11
	mov	rdi, rax
	call	strcmp
	test	eax, eax
	jne	.label_10
.label_9:
	xor	ebx, ebx
.label_10:
	mov	eax, ebx
	pop	rbx
	ret	
	.section	.text
	.align	16
	#Procedure 0x4015c1
	.globl sub_4015c1
	.type sub_4015c1, @function
sub_4015c1:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4015d0

	.globl set_program_name
	.type set_program_name, @function
set_program_name:
	push	r14
	push	rbx
	push	rax
	mov	rbx, rdi
	test	rbx, rbx
	je	.label_16
	mov	esi, 0x2f
	mov	rdi, rbx
	call	strrchr
	test	rax, rax
	lea	r14, [rax + 1]
	cmove	r14, rbx
	mov	rax, r14
	sub	rax, rbx
	cmp	rax, 7
	jl	.label_18
	lea	rdi, [r14 - 7]
	mov	esi, OFFSET FLAT:label_13
	mov	edx, 7
	call	strncmp
	test	eax, eax
	jne	.label_18
	mov	esi, OFFSET FLAT:label_15
	mov	edx, 3
	mov	rdi, r14
	call	strncmp
	test	eax, eax
	jne	.label_14
	add	r14, 3
	mov	qword ptr [rip + __progname],  r14
.label_14:
	mov	rbx, r14
.label_18:
	mov	qword ptr [rip + program_name],  rbx
	mov	qword ptr [rip + __progname_full],  rbx
	add	rsp, 8
	pop	rbx
	pop	r14
	ret	
.label_16:
	mov	rcx, qword ptr [rip + stderr]
	mov	edi, OFFSET FLAT:label_17
	mov	esi, 0x37
	mov	edx, 1
	call	fwrite
	call	abort
	.section	.text
	.align	16
	#Procedure 0x401671
	.globl sub_401671
	.type sub_401671, @function
sub_401671:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x401680
	.globl quotearg_colon_mem
	.type quotearg_colon_mem, @function
quotearg_colon_mem:

	sub	rsp, 0x38
	mov	rax, rsi
	mov	rdx, rdi
	mov	rcx, qword ptr [rip + label_19]
	mov	qword ptr [rsp + 0x30], rcx
	movups	xmm0, xmmword ptr [rip + label_20]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0, xmmword ptr [rip + label_21]
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
	#Procedure 0x4016d4
	.globl sub_4016d4
	.type sub_4016d4, @function
sub_4016d4:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4016e0

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
	je	.label_22
	cmp	r15, -2
	jb	.label_22
	xor	edi, edi
	call	hard_locale
	test	al, al
	jne	.label_22
	movzx	eax, byte ptr [r14]
	mov	dword ptr [rbx], eax
	mov	r15d, 1
.label_22:
	mov	rax, r15
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	ret	
	.section	.text
	.align	16
	#Procedure 0x401736
	.globl sub_401736
	.type sub_401736, @function
sub_401736:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x401740
	.globl quotearg_char
	.type quotearg_char, @function
quotearg_char:

	sub	rsp, 0x38
	mov	ecx, esi
	mov	rax, rdi
	mov	rdx, qword ptr [rip + label_19]
	mov	qword ptr [rsp + 0x30], rdx
	movups	xmm0, xmmword ptr [rip + label_20]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0, xmmword ptr [rip + label_21]
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
	#Procedure 0x4017af
	.globl sub_4017af
	.type sub_4017af, @function
sub_4017af:

	nop	
	.section	.text
	.align	16
	#Procedure 0x4017b0

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
	#Procedure 0x4017c7
	.globl sub_4017c7
	.type sub_4017c7, @function
sub_4017c7:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4017d0

	.globl locale_charset
	.type locale_charset, @function
locale_charset:
	push	rax
	mov	edi, 0xe
	call	rpl_nl_langinfo
	test	rax, rax
	mov	ecx, OFFSET FLAT:label_23
	cmovne	rcx, rax
	cmp	byte ptr [rcx], 0
	mov	eax, OFFSET FLAT:label_24
	cmovne	rax, rcx
	pop	rcx
	ret	
	.section	.text
	.align	16
	#Procedure 0x4017f5
	.globl sub_4017f5
	.type sub_4017f5, @function
sub_4017f5:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x401800
	.globl version_etc_ar
	.type version_etc_ar, @function
version_etc_ar:

	mov	r9, -1
	nop	word ptr [rax + rax]
.label_25:
	cmp	qword ptr [r8 + r9*8 + 8], 0
	lea	r9, [r9 + 1]
	jne	.label_25
	jmp	version_etc_arn
	.section	.text
	.align	16
	#Procedure 0x401821
	.globl sub_401821
	.type sub_401821, @function
sub_401821:

	nop	word ptr cs:[rax + rax]
.label_26:
	call	abort
	.section	.text
	.align	16
	#Procedure 0x401835
	.globl sub_401835
	.type sub_401835, @function
sub_401835:

	nop	
	.section	.text
	.align	16
	#Procedure 0x401837
	.globl quotearg_n_custom
	.type quotearg_n_custom, @function
quotearg_n_custom:

	sub	rsp, 0x38
	mov	rax, qword ptr [rip + label_19]
	mov	qword ptr [rsp + 0x30], rax
	movups	xmm0, xmmword ptr [rip + label_20]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0, xmmword ptr [rip + label_21]
	movaps	xmmword ptr [rsp + 0x10], xmm0
	movups	xmm0, xmmword ptr [rip + default_quoting_options]
	movaps	xmmword ptr [rsp], xmm0
	mov	dword ptr [rsp], 0xa
	test	rsi, rsi
	je	.label_26
	test	rdx, rdx
	je	.label_26
	mov	qword ptr [rsp + 0x28], rsi
	mov	qword ptr [rsp + 0x30], rdx
	lea	rax, [rsp]
	mov	rdx, -1
	mov	rsi, rcx
	mov	rcx, rax
	call	quotearg_n_options
	add	rsp, 0x38
	ret	
.label_27:
	call	xalloc_die
	.section	.text
	.align	16
	#Procedure 0x4018a5
	.globl sub_4018a5
	.type sub_4018a5, @function
sub_4018a5:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4018b3
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
	je	.label_28
	test	r15, r15
	je	.label_27
.label_28:
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
	#Procedure 0x4018f0

	.globl xmalloc
	.type xmalloc, @function
xmalloc:
	push	rbx
	mov	rbx, rdi
	call	malloc
	test	rbx, rbx
	je	.label_29
	test	rax, rax
	je	.label_30
.label_29:
	pop	rbx
	ret	
.label_30:
	call	xalloc_die
	.section	.text
	.align	16
	#Procedure 0x40190a
	.globl sub_40190a
	.type sub_40190a, @function
sub_40190a:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x401910
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
	je	.label_31
	mov	qword ptr [rax], rbx
.label_31:
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
	#Procedure 0x4019fc
	.globl sub_4019fc
	.type sub_4019fc, @function
sub_4019fc:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x401a00

	.globl version_etc
	.type version_etc, @function
version_etc:
	sub	rsp, 0xd8
	test	al, al
	je	.label_32
	movaps	xmmword ptr [rsp + 0x50], xmm0
	movaps	xmmword ptr [rsp + 0x60], xmm1
	movaps	xmmword ptr [rsp + 0x70], xmm2
	movaps	xmmword ptr [rsp + 0x80], xmm3
	movaps	xmmword ptr [rsp + 0x90], xmm4
	movaps	xmmword ptr [rsp + 0xa0], xmm5
	movaps	xmmword ptr [rsp + 0xb0], xmm6
	movaps	xmmword ptr [rsp + 0xc0], xmm7
.label_32:
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
	#Procedure 0x401a83
	.globl sub_401a83
	.type sub_401a83, @function
sub_401a83:

	nop	word ptr cs:[rax + rax]
.label_34:
	mov	ecx, 1
.label_33:
	mov	rdi, rcx
	mov	rsi, rax
	jmp	calloc
	.section	.text
	.align	16
	#Procedure 0x401aa0
	.globl sub_401aa0
	.type sub_401aa0, @function
sub_401aa0:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x401aa5

	.globl rpl_calloc
	.type rpl_calloc, @function
rpl_calloc:
	test	rdi, rdi
	mov	eax, 1
	je	.label_34
	test	rsi, rsi
	mov	ecx, 1
	je	.label_33
	mov	rax, rsi
	imul	rax, rdi
	xor	edx, edx
	div	rsi
	cmp	rax, rdi
	mov	rax, rsi
	mov	rcx, rdi
	je	.label_33
	push	rax
	call	__errno_location
	mov	dword ptr [rax], 0xc
	xor	eax, eax
	pop	rcx
	ret	
	.section	.text
	.align	16
	#Procedure 0x401ae0
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
	je	.label_36
	test	r14, r14
	je	.label_35
.label_36:
	xor	esi, esi
	mov	rdi, r14
	mov	rdx, rbx
	call	memset
	mov	rax, r14
	add	rsp, 8
	pop	rbx
	pop	r14
	ret	
.label_35:
	call	xalloc_die
	.section	.text
	.align	16
	#Procedure 0x401b16
	.globl sub_401b16
	.type sub_401b16, @function
sub_401b16:

	nop	word ptr cs:[rax + rax]
.label_37:
	mov	rdi, rbx
	pop	rbx
	pop	r14
	pop	rbp
	jmp	fclose
	.section	.text
	.align	16
	#Procedure 0x401b2c
	.globl sub_401b2c
	.type sub_401b2c, @function
sub_401b2c:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x401b38

	.globl rpl_fclose
	.type rpl_fclose, @function
rpl_fclose:
	push	rbp
	push	r14
	push	rbx
	mov	rbx, rdi
	call	fileno
	test	eax, eax
	js	.label_37
	mov	rdi, rbx
	call	__freading
	test	eax, eax
	je	.label_39
	mov	rdi, rbx
	call	fileno
	xor	esi, esi
	mov	edx, 1
	mov	edi, eax
	call	lseek
	cmp	rax, -1
	je	.label_37
.label_39:
	mov	rdi, rbx
	call	rpl_fflush
	test	eax, eax
	je	.label_37
	call	__errno_location
	mov	r14, rax
	mov	ebp, dword ptr [r14]
	mov	rdi, rbx
	call	fclose
	test	ebp, ebp
	je	.label_38
	mov	dword ptr [r14], ebp
	mov	eax, 0xffffffff
.label_38:
	pop	rbx
	pop	r14
	pop	rbp
	ret	
.label_42:
	call	xalloc_die
.label_40:
	mov	rsi, rbx
	call	realloc
	test	rbx, rbx
	je	.label_41
	test	rax, rax
	je	.label_42
.label_41:
	pop	rbx
	ret	
	.section	.text
	.align	16
	#Procedure 0x401bb9

	.globl xrealloc
	.type xrealloc, @function
xrealloc:
	push	rbx
	mov	rbx, rsi
	test	rdi, rdi
	je	.label_40
	test	rbx, rbx
	jne	.label_40
	call	free
	xor	eax, eax
	pop	rbx
	ret	
	.section	.text
	.align	16
	#Procedure 0x401bd0

	.globl xdectoimax
	.type xdectoimax, @function
xdectoimax:
	push	rax
	mov	r10, r8
	mov	rax, rcx
	mov	rcx, rdx
	mov	rdx, rsi
	mov	dword ptr [rsp], r9d
	mov	esi, 0xa
	mov	r8, rax
	mov	r9, r10
	call	xnumtoimax
	pop	rcx
	ret	
	.section	.text
	.align	16
	#Procedure 0x401bf3
	.globl sub_401bf3
	.type sub_401bf3, @function
sub_401bf3:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x401c00

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
	#Procedure 0x401c3c
	.globl sub_401c3c
	.type sub_401c3c, @function
sub_401c3c:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x401c40
	.globl quote_n_mem
	.type quote_n_mem, @function
quote_n_mem:

	mov	ecx, OFFSET FLAT:quote_quoting_options
	jmp	quotearg_n_options
	.section	.text
	.align	16
	#Procedure 0x401c4a
	.globl sub_401c4a
	.type sub_401c4a, @function
sub_401c4a:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x401c50

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
	mov	r15, rsi
	mov	r14d, edi
	mov	rdi, qword ptr [r15]
	call	set_program_name
	mov	edi, 6
	mov	esi, OFFSET FLAT:label_23
	call	setlocale
	mov	edi, OFFSET FLAT:label_86
	mov	esi, OFFSET FLAT:label_87
	call	bindtextdomain
	mov	edi, OFFSET FLAT:label_86
	call	textdomain
	mov	edi, OFFSET FLAT:close_stdout
	call	atexit
	xor	r13d, r13d
	movabs	r12, 0x7fffffffffffffff
	xor	ebp, ebp
	jmp	.label_58
.label_492:
	mov	rax, qword ptr [rip + optarg]
	mov	qword ptr [rip + ref_file],  rax
.label_58:
	mov	edx, OFFSET FLAT:label_109
	mov	ecx, OFFSET FLAT:longopts
	xor	r8d, r8d
	mov	edi, r14d
	mov	rsi, r15
	call	getopt_long
	cmp	eax, 0x62
	jle	.label_117
	add	eax, -0x63
	cmp	eax, 0x10
	ja	.label_67
	jmp	qword ptr [(rax * 8) + label_121]
.label_490:
	mov	byte ptr [rip + no_create],  1
	jmp	.label_58
.label_491:
	mov	byte ptr [rip + block_mode],  1
	jmp	.label_58
.label_493:
	mov	rbx, qword ptr [rip + optarg]
	movzx	ebp, byte ptr [rbx]
	call	__ctype_b_loc
	mov	rcx, qword ptr [rax]
	test	byte ptr [rcx + rbp*2 + 1], 0x20
	je	.label_54
	inc	rbx
	nop	word ptr cs:[rax + rax]
.label_62:
	mov	qword ptr [rip + optarg],  rbx
	movzx	ebp, byte ptr [rbx]
	mov	rcx, qword ptr [rax]
	inc	rbx
	test	byte ptr [rcx + rbp*2 + 1], 0x20
	jne	.label_62
	dec	rbx
.label_54:
	movsx	ecx, bpl
	add	ecx, -0x25
	cmp	ecx, 0x19
	ja	.label_70
	jmp	qword ptr [(rcx * 8) + label_78]
.label_486:
	inc	rbx
	mov	qword ptr [rip + optarg],  rbx
	mov	r13d, 5
	jmp	.label_70
.label_487:
	inc	rbx
	mov	qword ptr [rip + optarg],  rbx
	mov	r13d, 4
	jmp	.label_70
.label_488:
	inc	rbx
	mov	qword ptr [rip + optarg],  rbx
	mov	r13d, 3
	jmp	.label_70
.label_489:
	inc	rbx
	mov	qword ptr [rip + optarg],  rbx
	mov	r13d, 2
.label_70:
	movzx	ecx, byte ptr [rbx]
	mov	rdx, qword ptr [rax]
	test	byte ptr [rdx + rcx*2 + 1], 0x20
	je	.label_103
	inc	rbx
	nop	word ptr cs:[rax + rax]
.label_84:
	mov	qword ptr [rip + optarg],  rbx
	movzx	ecx, byte ptr [rbx]
	mov	rdx, qword ptr [rax]
	inc	rbx
	test	byte ptr [rdx + rcx*2 + 1], 0x20
	jne	.label_84
	dec	rbx
.label_103:
	cmp	cl, 0x2d
	je	.label_118
	cmp	cl, 0x2b
	jne	.label_55
.label_118:
	test	r13d, r13d
	mov	r13d, 1
	jne	.label_120
.label_55:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_123
	mov	edx, 5
	call	dcgettext
	lea	rsi, [r12 + 1]
	mov	ecx, OFFSET FLAT:label_56
	xor	r9d, r9d
	mov	rdi, rbx
	mov	rdx, r12
	mov	r8, rax
	call	xdectoimax
	mov	rbx, rax
	mov	eax, r13d
	or	eax, 1
	mov	bpl, 1
	cmp	eax, 5
	jne	.label_58
	test	rbx, rbx
	jne	.label_58
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_65
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	mov	edi, 1
	xor	esi, esi
	xor	eax, eax
	mov	rdx, rcx
	call	error
.label_117:
	mov	qword ptr [rsp + 0x10], r13
	cmp	eax, -1
	jne	.label_81
	movsxd	r13, dword ptr [rip + optind]
	mov	rsi, qword ptr [rip + ref_file]
	test	bpl, bpl
	jne	.label_83
	test	rsi, rsi
	je	.label_88
.label_83:
	mov	rax, qword ptr [rsp + 0x10]
	test	eax, eax
	jne	.label_93
	test	bpl, bpl
	je	.label_93
	test	rsi, rsi
	jne	.label_98
.label_93:
	test	bpl, bpl
	jne	.label_116
	test	byte ptr [rip + block_mode],  1
	jne	.label_102
.label_116:
	cmp	r13d, r14d
	jge	.label_107
	test	rsi, rsi
	mov	qword ptr [rsp + 0x20], rbx
	je	.label_108
	lea	rdx, [rsp + 0x38]
	mov	edi, 1
	call	__xstat
	test	eax, eax
	jne	.label_49
	movzx	eax, word ptr [rsp + 0x50]
	or	eax, 0x2000
	and	eax, 0xf000
	cmp	eax, 0xa000
	jne	.label_119
	mov	rbx, qword ptr [rsp + 0x68]
	test	rbx, rbx
	jns	.label_124
	jmp	.label_104
.label_108:
	mov	rdx, -1
	jmp	.label_48
.label_119:
	mov	rdi, qword ptr [rip + ref_file]
	xor	esi, esi
	xor	eax, eax
	call	open
	mov	r12d, eax
	test	r12d, r12d
	js	.label_104
	xor	esi, esi
	mov	edx, 2
	mov	edi, r12d
	call	lseek
	mov	rbx, rax
	call	__errno_location
	mov	r14, rax
	mov	eax, dword ptr [r14]
	mov	dword ptr [rsp + 0xc], eax
	mov	edi, r12d
	call	close
	test	rbx, rbx
	js	.label_77
.label_124:
	cmp	bpl, 1
	sbb	rdx, rdx
	or	rdx, rbx
	test	bpl, bpl
	mov	rax, qword ptr [rsp + 0x20]
	cmove	rax, rbx
	mov	qword ptr [rsp + 0x20], rax
.label_48:
	lea	r12, [r15 + r13*8]
	mov	rax, qword ptr [rsp + 0x10]
	test	eax, eax
	setne	al
	mov	cl, byte ptr [rip + no_create]
	test	cl, cl
	mov	ecx, 0x801
	mov	r13d, 0x841
	cmovne	r13d, ecx
	mov	qword ptr [rsp + 0x28], rdx
	test	rdx, rdx
	sets	cl
	and	cl, al
	mov	byte ptr [rsp + 0xc], cl
	xor	r14d, r14d
	jmp	.label_85
	.section	.text
	.align	16
	#Procedure 0x401fb1
	.globl sub_401fb1
	.type sub_401fb1, @function
sub_401fb1:

	nop	word ptr cs:[rax + rax]
.label_69:
	mov	edx, 5
	call	dcgettext
	mov	rbp, rax
	mov	edi, 4
	mov	rsi, r15
	call	quotearg_style
	mov	rcx, rax
	xor	edi, edi
	xor	eax, eax
	mov	esi, r14d
	mov	rdx, rbp
	call	error
	mov	r14b, 1
.label_85:
	add	r12, 8
	mov	rcx, r12
	nop	word ptr cs:[rax + rax]
.label_82:
	mov	r12, rcx
	mov	r15, qword ptr [r12 - 8]
	test	r15, r15
	je	.label_45
	mov	edx, 0x1b6
	xor	eax, eax
	mov	rdi, r15
	mov	esi, r13d
	call	open
	mov	ebp, eax
	cmp	ebp, -1
	jne	.label_60
	movzx	ebx, byte ptr [rip + no_create]
	call	__errno_location
	cmp	bl, 1
	jne	.label_63
	lea	rcx, [r12 + 8]
	cmp	dword ptr [rax], 2
	je	.label_82
.label_63:
	mov	r14d, dword ptr [rax]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_68
	jmp	.label_69
	.section	.text
	.align	16
	#Procedure 0x402054
	.globl sub_402054
	.type sub_402054, @function
sub_402054:

	nop	word ptr cs:[rax + rax]
.label_60:
	mov	al, byte ptr [rip + block_mode]
	or	al, byte ptr [rsp + 0xc]
	test	al, 1
	mov	rbx, qword ptr [rsp + 0x20]
	mov	rcx, rbx
	mov	qword ptr [rsp + 0x30], r14
	je	.label_66
	mov	edi, 1
	mov	esi, ebp
	lea	rdx, [rsp + 0x38]
	call	__fxstat
	test	eax, eax
	je	.label_95
	call	__errno_location
	mov	r14d, dword ptr [rax]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_125
.label_51:
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
	mov	edi, 4
	mov	rsi, r15
	call	quotearg_style
	mov	rcx, rax
	xor	edi, edi
	xor	eax, eax
	mov	esi, r14d
	mov	rdx, rbx
	call	error
	jmp	.label_113
.label_95:
	cmp	byte ptr [rip + block_mode],  1
	mov	rcx, rbx
	jne	.label_66
	mov	rax, qword ptr [rsp + 0x70]
	movabs	rcx, 0x2000000000000001
	cmp	rax, rcx
	mov	ecx, 0x200
	cmovb	rcx, rax
	test	rax, rax
	mov	eax, 0x200
	cmovle	rcx, rax
	movabs	rax, 0x7fffffffffffffff
	inc	rax
	cqo	
	idiv	rcx
	cmp	rax, rbx
	jg	.label_112
	movabs	rax, 0x7fffffffffffffff
	cqo	
	idiv	rcx
	cmp	rax, rbx
	jge	.label_59
.label_112:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_111
	mov	edx, 5
	mov	qword ptr [rsp + 0x18], rcx
	call	dcgettext
	mov	r14, rax
	mov	edi, 4
	mov	rsi, r15
	call	quotearg_style
	mov	r9, rax
	xor	edi, edi
	xor	esi, esi
	xor	eax, eax
	mov	rdx, r14
	mov	rcx, rbx
	mov	r8, qword ptr [rsp + 0x18]
	call	error
	jmp	.label_113
.label_59:
	imul	rcx, rbx
.label_66:
	mov	rax, qword ptr [rsp + 0x10]
	test	eax, eax
	je	.label_61
	mov	rax, qword ptr [rsp + 0x28]
	test	rax, rax
	mov	rsi, rax
	jns	.label_92
	movzx	eax, word ptr [rsp + 0x50]
	or	eax, 0x2000
	and	eax, 0xf000
	cmp	eax, 0xa000
	jne	.label_97
	mov	rsi, qword ptr [rsp + 0x68]
	test	rsi, rsi
	jns	.label_92
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_46
	jmp	.label_47
.label_97:
	xor	esi, esi
	mov	edx, 2
	mov	edi, ebp
	mov	rbx, rcx
	call	lseek
	mov	rcx, rbx
	mov	rsi, rax
	test	rsi, rsi
	js	.label_71
.label_92:
	mov	rax, qword ptr [rsp + 0x10]
	lea	eax, [rax - 2]
	cmp	eax, 3
	ja	.label_79
	jmp	qword ptr [(rax * 8) + label_122]
.label_537:
	cmp	rsi, rcx
	cmova	rcx, rsi
	jmp	.label_61
.label_79:
	movabs	rax, 0x7fffffffffffffff
	sub	rax, rsi
	cmp	rcx, rax
	jle	.label_94
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_89
	jmp	.label_47
.label_538:
	cmp	rsi, rcx
	cmovb	rcx, rsi
	jmp	.label_61
.label_539:
	xor	edx, edx
	mov	rax, rsi
	div	rcx
	sub	rsi, rdx
	mov	rcx, rsi
	jmp	.label_61
.label_540:
	lea	rsi, [rcx + rsi - 1]
	xor	edx, edx
	mov	rax, rsi
	div	rcx
	sub	rsi, rdx
	mov	rcx, rsi
	jns	.label_61
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_114
.label_47:
	mov	edx, 5
	call	dcgettext
	mov	r14, rax
	mov	edi, 4
	mov	rsi, r15
	call	quotearg_style
	mov	rcx, rax
	xor	edi, edi
	xor	esi, esi
	xor	eax, eax
	mov	rdx, r14
	call	error
	jmp	.label_113
.label_94:
	add	rcx, rsi
.label_61:
	xor	ebx, ebx
	test	rcx, rcx
	mov	r14d, 0
	cmovns	r14, rcx
	mov	edi, ebp
	mov	rsi, r14
	call	ftruncate
	cmp	eax, -1
	jne	.label_99
	call	__errno_location
	mov	eax, dword ptr [rax]
	mov	dword ptr [rsp + 0x18], eax
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_101
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
	mov	edi, 4
	mov	rsi, r15
	call	quotearg_style
	mov	rcx, rax
	xor	edi, edi
	xor	eax, eax
	mov	esi, dword ptr [rsp + 0x18]
	mov	rdx, rbx
	mov	r8, r14
	call	error
.label_113:
	mov	bl, 1
.label_99:
	mov	r14, qword ptr [rsp + 0x30]
	or	r14b, bl
	mov	edi, ebp
	call	close
	test	eax, eax
	je	.label_85
	call	__errno_location
	mov	r14d, dword ptr [rax]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_80
	jmp	.label_69
.label_71:
	call	__errno_location
	mov	r14d, dword ptr [rax]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_50
	jmp	.label_51
.label_45:
	movzx	eax, r14b
	add	rsp, 0xc8
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_81:
	cmp	eax, 0xffffff7d
	je	.label_64
	cmp	eax, 0xffffff7e
	jne	.label_67
	xor	edi, edi
	call	usage
.label_64:
	mov	rdi, qword ptr [rip + stdout]
	mov	rcx, qword ptr [rip + Version]
	mov	esi, OFFSET FLAT:label_74
	mov	edx, OFFSET FLAT:label_75
	mov	r8d, OFFSET FLAT:label_76
	xor	r9d, r9d
	xor	eax, eax
	call	version_etc
	xor	edi, edi
	call	exit
.label_67:
	mov	edi, 1
	call	usage
.label_88:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_90
	jmp	.label_91
.label_98:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_96
.label_91:
	mov	edx, 5
	call	dcgettext
	mov	r14, rax
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_100
	call	quote_n
	mov	rbp, rax
	mov	edi, 1
	mov	esi, OFFSET FLAT:label_105
	jmp	.label_106
.label_102:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_110
	mov	edx, 5
	call	dcgettext
	mov	r14, rax
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_115
	call	quote_n
	mov	rbp, rax
	mov	edi, 1
	mov	esi, OFFSET FLAT:label_100
.label_106:
	call	quote_n
	mov	rbx, rax
	xor	edi, edi
	xor	esi, esi
	xor	eax, eax
	mov	rdx, r14
	mov	rcx, rbp
	mov	r8, rbx
	call	error
	mov	edi, 1
	call	usage
.label_107:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_52
	jmp	.label_53
.label_120:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_57
.label_53:
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
.label_49:
	call	__errno_location
	mov	ebx, dword ptr [rax]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_72
	jmp	.label_73
.label_77:
	mov	eax, dword ptr [rsp + 0xc]
	mov	dword ptr [r14], eax
.label_104:
	call	__errno_location
	mov	ebx, dword ptr [rax]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_50
.label_73:
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
	.section	.text
	.align	16
	#Procedure 0x4024a0
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
	#Procedure 0x4024af
	.globl sub_4024af
	.type sub_4024af, @function
sub_4024af:

	nop	
	.section	.text
	.align	16
	#Procedure 0x4024b0
	.globl close_stdout_set_ignore_EPIPE
	.type close_stdout_set_ignore_EPIPE, @function
close_stdout_set_ignore_EPIPE:

	mov	byte ptr [rip + ignore_EPIPE],  dil
	ret	
	.section	.text
	.align	16
	#Procedure 0x4024b8
	.globl sub_4024b8
	.type sub_4024b8, @function
sub_4024b8:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4024c0
	.globl emit_bug_reporting_address
	.type emit_bug_reporting_address, @function
emit_bug_reporting_address:

	push	rax
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_126
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:label_127
	xor	eax, eax
	mov	rsi, rcx
	call	__printf_chk
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_129
	mov	edx, 5
	call	dcgettext
	mov	rsi, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:label_75
	mov	ecx, OFFSET FLAT:label_130
	xor	eax, eax
	call	__printf_chk
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_128
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	pop	rax
	jmp	fputs_unlocked
	.section	.text
	.align	16
	#Procedure 0x402534
	.globl sub_402534
	.type sub_402534, @function
sub_402534:

	nop	word ptr cs:[rax + rax]
.label_132:
	call	xalloc_die
.label_135:
	test	rax, rax
	mov	ebx, 0x80
	cmovne	rbx, rax
	test	rbx, rbx
	js	.label_132
	mov	qword ptr [rsi], rbx
.label_133:
	mov	rsi, rbx
	call	realloc
	test	rbx, rbx
	je	.label_131
	test	rax, rax
	je	.label_132
.label_131:
	pop	rbx
	ret	
.label_134:
	call	xalloc_die
	.section	.text
	.align	16
	#Procedure 0x402572
	.globl sub_402572
	.type sub_402572, @function
sub_402572:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40257e
	.globl x2realloc
	.type x2realloc, @function
x2realloc:

	push	rbx
	mov	rax, qword ptr [rsi]
	test	rdi, rdi
	je	.label_135
	movabs	rcx, 0x5555555555555554
	cmp	rax, rcx
	jae	.label_134
	mov	rbx, rax
	shr	rbx, 1
	add	rbx, rax
	inc	rbx
	mov	qword ptr [rsi], rbx
	jne	.label_133
	call	free
	xor	eax, eax
	jmp	.label_131
	.section	.text
	.align	16
	#Procedure 0x4025b0
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
	#Procedure 0x402625
	.globl sub_402625
	.type sub_402625, @function
sub_402625:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x402630

	.globl xalloc_die
	.type xalloc_die, @function
xalloc_die:
	push	rbx
	mov	ebx, dword ptr [rip + exit_failure]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_136
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	xor	esi, esi
	mov	edx, OFFSET FLAT:label_137
	xor	eax, eax
	mov	edi, ebx
	call	error
	call	abort
	.section	.text
	.align	16
	#Procedure 0x402660
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
	#Procedure 0x402696
	.globl sub_402696
	.type sub_402696, @function
sub_402696:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4026a0
	.globl set_custom_quoting
	.type set_custom_quoting, @function
set_custom_quoting:

	test	rdi, rdi
	mov	eax, OFFSET FLAT:default_quoting_options
	cmovne	rax, rdi
	mov	dword ptr [rax], 0xa
	test	rsi, rsi
	je	.label_138
	test	rdx, rdx
	je	.label_138
	mov	qword ptr [rax + 0x28], rsi
	mov	qword ptr [rax + 0x30], rdx
	ret	
.label_138:
	push	rax
	call	abort
	.section	.text
	.align	16
	#Procedure 0x4026cb
	.globl sub_4026cb
	.type sub_4026cb, @function
sub_4026cb:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4026d0

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
	#Procedure 0x4026e9
	.globl sub_4026e9
	.type sub_4026e9, @function
sub_4026e9:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x4026f0
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
	je	.label_139
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
.label_139:
	call	abort
	.section	.text
	.align	16
	#Procedure 0x402758
	.globl sub_402758
	.type sub_402758, @function
sub_402758:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x402760
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
	#Procedure 0x402778
	.globl sub_402778
	.type sub_402778, @function
sub_402778:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x402780

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
	jae	.label_172
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
	je	.label_185
	mov	eax, dword ptr [r15]
	test	eax, eax
	je	.label_158
	mov	r13d, 4
	cmp	eax, 0x22
	jne	.label_142
	mov	r13d, 1
.label_158:
	test	r14, r14
	je	.label_191
	mov	r15d, r13d
	jmp	.label_141
.label_185:
	mov	r13d, 4
	test	r14, r14
	je	.label_142
	movsx	esi, byte ptr [rbx]
	test	esi, esi
	je	.label_142
	mov	rdi, r14
	call	strchr
	xor	r15d, r15d
	mov	ebp, 1
	test	rax, rax
	je	.label_142
.label_141:
	movsx	r13d, byte ptr [r12]
	test	r13d, r13d
	je	.label_155
	mov	rdi, r14
	mov	esi, r13d
	call	strchr
	test	rax, rax
	je	.label_150
	mov	ebx, 1
	mov	r10d, 0x400
	lea	eax, [r13 - 0x45]
	cmp	eax, 0x2f
	ja	.label_165
	movabs	rcx, 0x814400308945
	bt	rcx, rax
	jae	.label_165
	mov	esi, 0x30
	mov	rdi, r14
	call	strchr
	mov	ebx, 1
	mov	r10d, 0x400
	test	rax, rax
	je	.label_165
	movsx	eax, byte ptr [r12 + 1]
	mov	ebx, 1
	mov	r10d, 0x400
	cmp	eax, 0x42
	je	.label_160
	cmp	eax, 0x44
	je	.label_160
	cmp	eax, 0x69
	jne	.label_165
	xor	eax, eax
	cmp	byte ptr [r12 + 2], 0x42
	sete	al
	lea	rbx, [rax + rax + 1]
	mov	r10d, 0x400
	jmp	.label_165
.label_191:
	mov	rax, qword ptr [rsp]
	mov	qword ptr [rax], rbp
	jmp	.label_142
.label_160:
	mov	ebx, 2
	mov	r10d, 0x3e8
.label_165:
	add	r13d, -0x42
	cmp	r13d, 0x35
	ja	.label_150
	movabs	r9, 0x7fffffffffffffff
	xor	ecx, ecx
	mov	r8, rbp
	jmp	qword ptr [(r13 * 8) + label_192]
.label_453:
	lea	r8, [r9 + 1]
	mov	rax, r8
	cqo	
	idiv	r10
	mov	r11, rax
	cmp	rbp, r11
	mov	r14d, 1
	mov	rsi, r8
	mov	ecx, 1
	jl	.label_146
	xor	edx, edx
	mov	rax, r9
	div	r10
	mov	rsi, rbp
	imul	rsi, r10
	xor	ecx, ecx
	cmp	rax, rbp
	setl	cl
	cmovl	rsi, r9
.label_146:
	cmp	rsi, r11
	mov	rdi, r8
	jl	.label_161
	xor	edx, edx
	mov	rax, r9
	div	r10
	mov	rdi, rsi
	imul	rdi, r10
	xor	r14d, r14d
	cmp	rax, rsi
	setl	r14b
	cmovl	rdi, r9
.label_161:
	or	r14d, ecx
	cmp	rdi, r11
	mov	ecx, 1
	jl	.label_168
	xor	edx, edx
	mov	rax, r9
	div	r10
	imul	r10, rdi
	xor	ecx, ecx
	cmp	rax, rdi
	setl	cl
	cmovl	r10, r9
	mov	r8, r10
.label_168:
	or	ecx, r14d
	jmp	.label_145
.label_150:
	mov	rax, qword ptr [rsp]
	mov	qword ptr [rax], rbp
	or	r15d, 2
	jmp	.label_178
.label_454:
	lea	r8, [r9 + 1]
	mov	rax, r8
	cqo	
	idiv	r10
	cmp	rbp, rax
	mov	ecx, 1
	jl	.label_145
	xor	edx, edx
	mov	rax, r9
	div	r10
	imul	r10, rbp
	xor	ecx, ecx
	cmp	rax, rbp
	setl	cl
	cmovl	r10, r9
	mov	r8, r10
	jmp	.label_145
.label_455:
	lea	r8, [r9 + 1]
	mov	rax, r8
	cqo	
	idiv	r10
	mov	rdi, rax
	cmp	rbp, rdi
	mov	ecx, 1
	mov	rsi, r8
	mov	r11d, 1
	jl	.label_189
	xor	edx, edx
	mov	rax, r9
	div	r10
	mov	rsi, rbp
	imul	rsi, r10
	xor	r11d, r11d
	cmp	rax, rbp
	setl	r11b
	cmovl	rsi, r9
.label_189:
	cmp	rsi, rdi
	jl	.label_153
	xor	edx, edx
	mov	rax, r9
	div	r10
	imul	r10, rsi
	xor	ecx, ecx
	cmp	rax, rsi
	setl	cl
	cmovl	r10, r9
	mov	r8, r10
.label_153:
	or	ecx, r11d
	jmp	.label_145
.label_457:
	lea	r8, [r9 + 1]
	mov	rax, r8
	cqo	
	idiv	r10
	mov	r11, rax
	cmp	rbp, r11
	mov	r14d, 1
	mov	rdi, r8
	mov	ecx, 1
	jl	.label_162
	xor	edx, edx
	mov	rax, r9
	div	r10
	mov	rdi, rbp
	imul	rdi, r10
	xor	ecx, ecx
	cmp	rax, rbp
	setl	cl
	cmovl	rdi, r9
.label_162:
	mov	rbp, rbx
	cmp	rdi, r11
	mov	rsi, r8
	jl	.label_175
	xor	edx, edx
	mov	rax, r9
	div	r10
	mov	rsi, rdi
	imul	rsi, r10
	xor	r14d, r14d
	cmp	rax, rdi
	setl	r14b
	cmovl	rsi, r9
.label_175:
	or	r14d, ecx
	cmp	rsi, r11
	mov	ecx, 1
	mov	rbx, r8
	mov	edi, 1
	jl	.label_181
	xor	edx, edx
	mov	rax, r9
	div	r10
	mov	rbx, rsi
	imul	rbx, r10
	xor	edi, edi
	cmp	rax, rsi
	setl	dil
	cmovl	rbx, r9
.label_181:
	or	edi, r14d
	cmp	rbx, r11
	jl	.label_187
	xor	edx, edx
	mov	rax, r9
	div	r10
	imul	r10, rbx
	xor	ecx, ecx
	cmp	rax, rbx
	setl	cl
	cmovl	r10, r9
	mov	r8, r10
.label_187:
	or	ecx, edi
	mov	rbx, rbp
	jmp	.label_145
.label_451:
	movabs	rax, 0xffe0000000000000
	cmp	rbp, rax
	jl	.label_149
	mov	r8, rbp
	shl	r8, 0xa
	movabs	rax, 0x1fffffffffffff
	jmp	.label_151
.label_452:
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
	jl	.label_157
	xor	edx, edx
	mov	rax, r9
	div	r10
	mov	rsi, rbp
	imul	rsi, r10
	xor	edi, edi
	cmp	rax, rbp
	setl	dil
	cmovl	rsi, r9
.label_157:
	cmp	rsi, r11
	mov	rcx, r8
	jl	.label_148
	xor	edx, edx
	mov	rax, r9
	div	r10
	mov	rcx, rsi
	imul	rcx, r10
	xor	ebx, ebx
	cmp	rax, rsi
	setl	bl
	cmovl	rcx, r9
.label_148:
	or	ebx, edi
	cmp	rcx, r11
	mov	r14d, 1
	mov	rsi, r8
	mov	ebp, 1
	jl	.label_190
	xor	edx, edx
	mov	rax, r9
	div	r10
	mov	rsi, rcx
	imul	rsi, r10
	xor	ebp, ebp
	cmp	rax, rcx
	setl	bpl
	cmovl	rsi, r9
.label_190:
	or	ebp, ebx
	cmp	rsi, r11
	mov	rdi, r8
	jl	.label_183
	xor	edx, edx
	mov	rax, r9
	div	r10
	mov	rdi, rsi
	imul	rdi, r10
	xor	r14d, r14d
	cmp	rax, rsi
	setl	r14b
	cmovl	rdi, r9
.label_183:
	or	r14d, ebp
	cmp	rdi, r11
	mov	ecx, 1
	mov	rsi, r8
	mov	ebx, 1
	jl	.label_193
	xor	edx, edx
	mov	rax, r9
	div	r10
	mov	rsi, rdi
	imul	rsi, r10
	xor	ebx, ebx
	cmp	rax, rdi
	setl	bl
	cmovl	rsi, r9
.label_193:
	or	ebx, r14d
	cmp	rsi, r11
	jl	.label_152
	xor	edx, edx
	mov	rax, r9
	div	r10
	imul	r10, rsi
	xor	ecx, ecx
	cmp	rax, rsi
	setl	cl
	cmovl	r10, r9
	mov	r8, r10
.label_152:
	or	ecx, ebx
	mov	rbx, r13
	jmp	.label_145
.label_456:
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
	jl	.label_164
	xor	edx, edx
	mov	rax, r9
	div	r10
	mov	rsi, rbp
	imul	rsi, r10
	xor	edi, edi
	cmp	rax, rbp
	setl	dil
	cmovl	rsi, r9
.label_164:
	cmp	rsi, r11
	mov	rcx, r8
	jl	.label_177
	xor	edx, edx
	mov	rax, r9
	div	r10
	mov	rcx, rsi
	imul	rcx, r10
	xor	ebx, ebx
	cmp	rax, rsi
	setl	bl
	cmovl	rcx, r9
.label_177:
	or	ebx, edi
	cmp	rcx, r11
	mov	r14d, 1
	mov	rsi, r8
	mov	ebp, 1
	jl	.label_182
	xor	edx, edx
	mov	rax, r9
	div	r10
	mov	rsi, rcx
	imul	rsi, r10
	xor	ebp, ebp
	cmp	rax, rcx
	setl	bpl
	cmovl	rsi, r9
.label_182:
	or	ebp, ebx
	cmp	rsi, r11
	mov	rdi, r8
	jl	.label_188
	xor	edx, edx
	mov	rax, r9
	div	r10
	mov	rdi, rsi
	imul	rdi, r10
	xor	r14d, r14d
	cmp	rax, rsi
	setl	r14b
	cmovl	rdi, r9
.label_188:
	or	r14d, ebp
	cmp	rdi, r11
	mov	ecx, 1
	mov	rbx, r13
	jl	.label_147
	xor	edx, edx
	mov	rax, r9
	div	r10
	imul	r10, rdi
	xor	ecx, ecx
	cmp	rax, rdi
	setl	cl
	cmovl	r10, r9
	mov	r8, r10
.label_147:
	or	ecx, r14d
	jmp	.label_145
.label_458:
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
	jl	.label_159
	xor	edx, edx
	mov	rax, r9
	div	r10
	mov	rbx, rbp
	imul	rbx, r10
	xor	ecx, ecx
	cmp	rax, rbp
	setl	cl
	cmovl	rbx, r9
.label_159:
	cmp	rbx, r11
	mov	rsi, r8
	jl	.label_174
	xor	edx, edx
	mov	rax, r9
	div	r10
	mov	rsi, rbx
	imul	rsi, r10
	xor	edi, edi
	cmp	rax, rbx
	setl	dil
	cmovl	rsi, r9
.label_174:
	or	edi, ecx
	cmp	rsi, r11
	mov	r14d, 1
	mov	rbx, r8
	mov	ecx, 1
	jl	.label_180
	xor	edx, edx
	mov	rax, r9
	div	r10
	mov	rbx, rsi
	imul	rbx, r10
	xor	ecx, ecx
	cmp	rax, rsi
	setl	cl
	cmovl	rbx, r9
.label_180:
	or	ecx, edi
	cmp	rbx, r11
	mov	rsi, r8
	jl	.label_184
	xor	edx, edx
	mov	rax, r9
	div	r10
	mov	rsi, rbx
	imul	rsi, r10
	xor	r14d, r14d
	cmp	rax, rbx
	setl	r14b
	cmovl	rsi, r9
.label_184:
	or	r14d, ecx
	cmp	rsi, r11
	mov	ebp, 1
	mov	rdi, r8
	mov	ecx, 1
	jl	.label_140
	xor	edx, edx
	mov	rax, r9
	div	r10
	mov	rdi, rsi
	imul	rdi, r10
	xor	ecx, ecx
	cmp	rax, rsi
	setl	cl
	cmovl	rdi, r9
.label_140:
	or	ecx, r14d
	cmp	rdi, r11
	mov	rsi, r8
	jl	.label_154
	xor	edx, edx
	mov	rax, r9
	div	r10
	mov	rsi, rdi
	imul	rsi, r10
	xor	ebp, ebp
	cmp	rax, rdi
	setl	bpl
	cmovl	rsi, r9
.label_154:
	or	ebp, ecx
	cmp	rsi, r11
	mov	ecx, 1
	mov	rbx, r8
	mov	edi, 1
	jl	.label_163
	xor	edx, edx
	mov	rax, r9
	div	r10
	mov	rbx, rsi
	imul	rbx, r10
	xor	edi, edi
	cmp	rax, rsi
	setl	dil
	cmovl	rbx, r9
.label_163:
	or	edi, ebp
	cmp	rbx, r11
	jl	.label_167
	xor	edx, edx
	mov	rax, r9
	div	r10
	imul	r10, rbx
	xor	ecx, ecx
	cmp	rax, rbx
	jmp	.label_173
.label_459:
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
	jl	.label_179
	xor	edx, edx
	mov	rax, r9
	div	r10
	mov	rbx, rbp
	imul	rbx, r10
	xor	ecx, ecx
	cmp	rax, rbp
	setl	cl
	cmovl	rbx, r9
.label_179:
	cmp	rbx, r11
	mov	rsi, r8
	jl	.label_186
	xor	edx, edx
	mov	rax, r9
	div	r10
	mov	rsi, rbx
	imul	rsi, r10
	xor	edi, edi
	cmp	rax, rbx
	setl	dil
	cmovl	rsi, r9
.label_186:
	or	edi, ecx
	cmp	rsi, r11
	mov	r14d, 1
	mov	rbx, r8
	mov	ecx, 1
	jl	.label_144
	xor	edx, edx
	mov	rax, r9
	div	r10
	mov	rbx, rsi
	imul	rbx, r10
	xor	ecx, ecx
	cmp	rax, rsi
	setl	cl
	cmovl	rbx, r9
.label_144:
	or	ecx, edi
	cmp	rbx, r11
	mov	rsi, r8
	jl	.label_156
	xor	edx, edx
	mov	rax, r9
	div	r10
	mov	rsi, rbx
	imul	rsi, r10
	xor	r14d, r14d
	cmp	rax, rbx
	setl	r14b
	cmovl	rsi, r9
.label_156:
	or	r14d, ecx
	cmp	rsi, r11
	mov	edi, 1
	mov	rbx, r8
	mov	ecx, 1
	jl	.label_166
	xor	edx, edx
	mov	rax, r9
	div	r10
	mov	rbx, rsi
	imul	rbx, r10
	xor	ecx, ecx
	cmp	rax, rsi
	setl	cl
	cmovl	rbx, r9
.label_166:
	or	ecx, r14d
	cmp	rbx, r11
	mov	rsi, r8
	jl	.label_176
	xor	edx, edx
	mov	rax, r9
	div	r10
	mov	rsi, rbx
	imul	rsi, r10
	xor	edi, edi
	cmp	rax, rbx
	setl	dil
	cmovl	rsi, r9
.label_176:
	or	edi, ecx
	cmp	rsi, r11
	mov	ecx, 1
	jl	.label_167
	xor	edx, edx
	mov	rax, r9
	div	r10
	imul	r10, rsi
	xor	ecx, ecx
	cmp	rax, rsi
.label_173:
	setl	cl
	cmovl	r10, r9
	mov	r8, r10
.label_167:
	or	ecx, edi
	mov	rbx, r13
	jmp	.label_145
.label_460:
	movabs	rax, 0xffc0000000000000
	cmp	rbp, rax
	jl	.label_149
	mov	r8, rbp
	shl	r8, 9
	movabs	rax, 0x3fffffffffffff
	jmp	.label_151
.label_461:
	movabs	rax, 0xc000000000000000
	cmp	rbp, rax
	jge	.label_143
.label_149:
	inc	r9
	mov	ecx, 1
	mov	r8, r9
	jmp	.label_145
.label_143:
	lea	r8, [rbp + rbp]
	movabs	rax, 0x3fffffffffffffff
.label_151:
	xor	ecx, ecx
	cmp	rbp, rax
	setg	cl
	cmovg	r8, r9
.label_145:
	or	ecx, r15d
	lea	rax, [r12 + rbx]
	mov	rdx, qword ptr [rsp + 8]
	mov	qword ptr [rdx], rax
	lea	r15d, [rcx + 2]
	cmp	byte ptr [r12 + rbx], 0
	cmove	r15d, ecx
	mov	rbp, r8
.label_155:
	mov	rax, qword ptr [rsp]
	mov	qword ptr [rax], rbp
.label_178:
	mov	r13d, r15d
.label_142:
	mov	eax, r13d
	add	rsp, 0x18
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_172:
	mov	edi, OFFSET FLAT:label_169
	mov	esi, OFFSET FLAT:label_170
	mov	edx, 0x54
	mov	ecx, OFFSET FLAT:label_171
	call	__assert_fail
	.section	.text
	.align	16
	#Procedure 0x403098
	.globl sub_403098
	.type sub_403098, @function
sub_403098:

	nop	dword ptr [rax + rax]
.label_194:
	call	xalloc_die
	.section	.text
	.align	16
	#Procedure 0x4030a5
	.globl sub_4030a5
	.type sub_4030a5, @function
sub_4030a5:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4030ab
	.globl xcharalloc
	.type xcharalloc, @function
xcharalloc:

	push	rbx
	mov	rbx, rdi
	call	malloc
	test	rbx, rbx
	je	.label_195
	test	rax, rax
	je	.label_194
.label_195:
	pop	rbx
	ret	
	.section	.text
	.align	16
	#Procedure 0x4030c0

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
	jmp	.label_273
	.section	.text
	.align	16
	#Procedure 0x40316f
	.globl sub_40316f
	.type sub_40316f, @function
sub_40316f:

	nop	
.label_312:
	cmp	r8d, 2
	setne	al
	cmp	byte ptr [rsp + 0xf], 0
	setne	dl
	mov	rsi, qword ptr [rsp + 0xa8]
	test	sil, 1
	mov	bl, byte ptr [rsp + 0x34]
	mov	rsi, qword ptr [rsp + 0xc0]
	je	.label_267
	or	al, dl
	jne	.label_267
	test	dil, 1
	jne	.label_309
	cmp	qword ptr [rsp + 0x68], 0
	je	.label_267
	test	rbp, rbp
	mov	r15d, r8d
	mov	al, bl
	mov	qword ptr [rsp + 0x48], rcx
	mov	r12d, esi
	mov	r13, qword ptr [rsp + 0x68]
	je	.label_273
	jmp	.label_267
.label_478:
	mov	r8d, 5
	test	r12b, 1
	jne	.label_315
	test	rbp, rbp
	je	.label_293
	mov	rax, qword ptr [rsp + 0x10]
	mov	byte ptr [rax], 0x22
.label_293:
	mov	r14d, 1
	jmp	.label_320
.label_479:
	mov	r13b, 1
	mov	r8d, 5
	xor	r14d, r14d
	mov	eax, OFFSET FLAT:label_208
	mov	qword ptr [rsp + 0x58], rax
	mov	eax, 1
	mov	qword ptr [rsp + 0x50], rax
	mov	sil, 1
	jmp	.label_269
.label_315:
	xor	r14d, r14d
.label_320:
	mov	eax, OFFSET FLAT:label_208
	mov	qword ptr [rsp + 0x58], rax
	mov	eax, 1
	mov	qword ptr [rsp + 0x50], rax
	mov	r13b, 1
	jmp	.label_209
	.section	.text
	.align	16
	#Procedure 0x40323f
	.globl sub_40323f
	.type sub_40323f, @function
sub_40323f:

	nop	
.label_273:
	mov	rbp, r13
	xor	r14d, r14d
	mov	ecx, r15d
	cmp	r15d, 0xa
	ja	.label_218
	mov	r8d, 7
	mov	r13b, 1
	xor	esi, esi
	mov	r10, qword ptr [rsp + 0x28]
	mov	r11, qword ptr [rsp + 0x48]
	jmp	qword ptr [(rcx * 8) + label_321]
.label_480:
	mov	r14d, edi
	mov	edi, OFFSET FLAT:label_232
	mov	esi, r15d
	mov	ebx, r9d
	call	gettext_quote
	mov	qword ptr [rsp + 0x80], rax
	mov	edi, OFFSET FLAT:label_274
	mov	esi, r15d
	call	gettext_quote
	mov	r9d, ebx
	mov	edi, r14d
	mov	qword ptr [rsp + 0x78], rax
.label_481:
	mov	byte ptr [rsp + 0x1e], dil
	mov	dword ptr [rsp + 0x60], r9d
	test	r12b, 1
	mov	r14d, 0
	mov	rcx, qword ptr [rsp + 0x80]
	jne	.label_246
	mov	al, byte ptr [rcx]
	test	al, al
	mov	r14d, 0
	je	.label_246
	xor	r14d, r14d
	nop	
.label_261:
	cmp	r14, rbp
	jae	.label_263
	mov	rdx, qword ptr [rsp + 0x10]
	mov	byte ptr [rdx + r14], al
.label_263:
	movzx	eax, byte ptr [rcx + r14 + 1]
	inc	r14
	test	al, al
	jne	.label_261
.label_246:
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
	jmp	.label_269
.label_473:
	xor	r8d, r8d
	xor	r14d, r14d
	mov	r13d, eax
	xor	esi, esi
	jmp	.label_269
.label_476:
	mov	al, 1
.label_474:
	mov	r12b, 1
.label_477:
	test	r12b, 1
	mov	cl, 1
	je	.label_281
	mov	ecx, eax
.label_281:
	mov	al, cl
.label_475:
	mov	r8d, 2
	test	r12b, 1
	jne	.label_284
	test	rbp, rbp
	je	.label_291
	mov	rcx, qword ptr [rsp + 0x10]
	mov	byte ptr [rcx], 0x27
.label_291:
	mov	r14d, 1
	jmp	.label_201
.label_284:
	xor	r14d, r14d
.label_201:
	mov	ecx, OFFSET FLAT:label_274
	mov	qword ptr [rsp + 0x58], rcx
	mov	ecx, 1
	mov	qword ptr [rsp + 0x50], rcx
	mov	r13d, eax
.label_209:
	mov	sil, r12b
.label_269:
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
	jmp	.label_301
	.section	.text
	.align	16
	#Procedure 0x403401
	.globl sub_403401
	.type sub_403401, @function
sub_403401:

	nop	word ptr cs:[rax + rax]
.label_275:
	inc	r12
.label_301:
	cmp	r11, -1
	je	.label_202
	cmp	r12, r11
	jne	.label_205
	jmp	.label_207
	.section	.text
	.align	16
	#Procedure 0x403423
	.globl sub_403423
	.type sub_403423, @function
sub_403423:

	nop	word ptr cs:[rax + rax]
.label_202:
	mov	rcx, -1
	cmp	byte ptr [r10 + r12], 0
	je	.label_212
.label_205:
	cmp	byte ptr [rsp + 0x37], 0
	je	.label_219
	mov	rax, qword ptr [rsp + 0x50]
	lea	rbx, [r12 + rax]
	cmp	rax, 2
	jb	.label_215
	cmp	r11, -1
	jne	.label_215
	mov	r15d, edi
	mov	rdi, r10
	mov	r13d, r9d
	call	strlen
	mov	r9d, r13d
	mov	r8, qword ptr [rsp + 0x38]
	mov	edi, r15d
	mov	r10, qword ptr [rsp + 0x28]
	mov	r11, rax
.label_215:
	cmp	rbx, r11
	jbe	.label_237
.label_219:
	xor	esi, esi
.label_247:
	movzx	r15d, byte ptr [r10 + r12]
	cmp	r15, 0x7e
	ja	.label_240
	xor	edx, edx
	mov	r13b, 1
	mov	cl, 0x6e
	mov	bl, 0x61
	xor	eax, eax
	jmp	qword ptr [(r15 * 8) + label_243]
.label_501:
	test	r12, r12
	jne	.label_249
	jmp	.label_251
	.section	.text
	.align	16
	#Procedure 0x4034b6
	.globl sub_4034b6
	.type sub_4034b6, @function
sub_4034b6:

	nop	word ptr cs:[rax + rax]
.label_237:
	mov	r13d, r9d
	mov	r15d, edi
	mov	rbx, r11
	lea	rdi, [r10 + r12]
	mov	rsi, qword ptr [rsp + 0x58]
	mov	rdx, qword ptr [rsp + 0x50]
	call	memcmp
	test	eax, eax
	sete	sil
	jne	.label_260
	cmp	byte ptr [rsp + 0xf], 0
	mov	r10, qword ptr [rsp + 0x28]
	mov	r11, rbx
	mov	edi, r15d
	mov	r8, qword ptr [rsp + 0x38]
	mov	r9d, r13d
	je	.label_247
	jmp	.label_250
.label_260:
	mov	r10, qword ptr [rsp + 0x28]
	mov	r11, rbx
	mov	edi, r15d
	mov	r8, qword ptr [rsp + 0x38]
	mov	r9d, r13d
	jmp	.label_247
.label_505:
	xor	eax, eax
	cmp	r11, -1
	je	.label_277
	test	r12, r12
	jne	.label_280
	cmp	r11, 1
	je	.label_251
	xor	r13d, r13d
	jmp	.label_196
.label_494:
	cmp	byte ptr [rsp + 0x1f], 0
	je	.label_286
	cmp	byte ptr [rsp + 0xf], 0
	jne	.label_250
	cmp	r8d, 2
	jne	.label_295
	mov	eax, r9d
	and	al, 1
	jne	.label_295
	cmp	r14, rbp
	jae	.label_297
	mov	rax, qword ptr [rsp + 0x10]
	mov	byte ptr [rax + r14], 0x27
.label_297:
	lea	rax, [r14 + 1]
	cmp	rax, rbp
	jae	.label_298
	mov	rcx, qword ptr [rsp + 0x10]
	mov	byte ptr [rcx + rax], 0x24
.label_298:
	lea	rax, [r14 + 2]
	cmp	rax, rbp
	jae	.label_303
	mov	rcx, qword ptr [rsp + 0x10]
	mov	byte ptr [rcx + rax], 0x27
.label_303:
	add	r14, 3
	mov	r9b, 1
.label_295:
	mov	rcx, r14
	cmp	rcx, rbp
	jae	.label_307
	mov	rax, qword ptr [rsp + 0x10]
	mov	byte ptr [rax + rcx], 0x5c
.label_307:
	lea	r14, [rcx + 1]
	mov	al, 1
	mov	r15b, 0x30
	cmp	r8d, 2
	je	.label_311
	lea	rdx, [r12 + 1]
	cmp	rdx, r11
	jae	.label_311
	mov	dl, byte ptr [r10 + rdx]
	add	dl, 0xd0
	cmp	dl, 9
	ja	.label_311
	cmp	r14, rbp
	jae	.label_230
	mov	rdx, qword ptr [rsp + 0x10]
	mov	byte ptr [rdx + r14], 0x30
.label_230:
	lea	rdx, [rcx + 2]
	cmp	rdx, rbp
	jae	.label_308
	mov	ebx, esi
	mov	rsi, qword ptr [rsp + 0x10]
	mov	byte ptr [rsi + rdx], 0x30
	mov	esi, ebx
.label_308:
	add	rcx, 3
	xor	r13d, r13d
	mov	r14, rcx
	jmp	.label_196
.label_495:
	mov	bl, 0x62
	jmp	.label_203
.label_496:
	mov	cl, 0x74
	jmp	.label_213
.label_497:
	mov	bl, 0x76
	jmp	.label_203
.label_498:
	mov	bl, 0x66
	jmp	.label_203
.label_499:
	mov	cl, 0x72
	jmp	.label_213
.label_502:
	mov	r15b, 0x27
	mov	al, 1
	mov	qword ptr [rsp + 0xa8], rax
	cmp	r8d, 2
	jne	.label_216
	cmp	byte ptr [rsp + 0xf], 0
	jne	.label_200
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
	jae	.label_224
	mov	rax, qword ptr [rsp + 0x10]
	mov	byte ptr [rax + r14], 0x27
.label_224:
	lea	rax, [r14 + 1]
	cmp	rax, rbp
	jae	.label_241
	mov	rcx, qword ptr [rsp + 0x10]
	mov	byte ptr [rcx + rax], 0x5c
.label_241:
	lea	rax, [r14 + 2]
	cmp	rax, rbp
	jae	.label_245
	mov	rcx, qword ptr [rsp + 0x10]
	mov	byte ptr [rcx + rax], 0x27
.label_245:
	add	r14, 3
	xor	r9d, r9d
.label_216:
	xor	eax, eax
	mov	r13b, 1
	jmp	.label_196
.label_503:
	mov	r15b, 0x3f
	cmp	r8d, 5
	je	.label_254
	cmp	r8d, 2
	jne	.label_249
	cmp	byte ptr [rsp + 0xf], 0
	je	.label_249
	jmp	.label_200
.label_504:
	cmp	r8d, 2
	jne	.label_265
	cmp	byte ptr [rsp + 0xf], 0
	jne	.label_200
	mov	r15b, 0x5c
	xor	eax, eax
	jmp	.label_322
.label_240:
	cmp	qword ptr [rsp + 0xb8], 1
	mov	qword ptr [rsp + 0xa0], rbp
	mov	byte ptr [rsp + 0x1e], dil
	mov	dword ptr [rsp + 0x60], r9d
	mov	dword ptr [rsp + 0x94], esi
	jne	.label_272
	mov	qword ptr [rsp + 0x48], r11
	call	__ctype_b_loc
	mov	r10, qword ptr [rsp + 0x28]
	mov	rax, qword ptr [rax]
	movzx	r13d, word ptr [rax + r15*2]
	shr	r13d, 0xe
	and	r13b, 1
	mov	ebx, 1
	jmp	.label_283
.label_277:
	test	r12, r12
	jne	.label_296
	mov	cl, byte ptr [r10 + 1]
	test	cl, cl
	jne	.label_296
.label_251:
	mov	dl, 1
.label_500:
	cmp	byte ptr [rsp + 0x27], 0
	je	.label_200
	xor	eax, eax
	mov	r13b, dl
.label_196:
	cmp	byte ptr [rsp + 0x36], 0
	je	.label_302
	cmp	qword ptr [rsp + 0x100], 0
	jne	.label_304
	jmp	.label_305
	.section	.text
	.align	16
	#Procedure 0x403794
	.globl sub_403794
	.type sub_403794, @function
sub_403794:

	nop	word ptr cs:[rax + rax]
.label_302:
	cmp	byte ptr [rsp + 0x35], 0
	je	.label_305
.label_304:
	mov	ecx, r15d
	shr	cl, 5
	movzx	edx, cl
	mov	ebx, esi
	mov	esi, 1
	mov	ecx, r15d
	shl	esi, cl
	test	bl, bl
	jne	.label_294
	mov	rcx, qword ptr [rsp + 0x100]
	and	esi, dword ptr [rcx + rdx*4]
	jmp	.label_314
	.section	.text
	.align	16
	#Procedure 0x4037cd
	.globl sub_4037cd
	.type sub_4037cd, @function
sub_4037cd:

	nop	dword ptr [rax]
.label_305:
	test	sil, sil
.label_314:
	mov	ebx, r15d
	je	.label_197
	jmp	.label_317
.label_294:
	mov	ebx, r15d
	jmp	.label_317
.label_286:
	cmp	dword ptr [rsp + 0x9c], 0
	jne	.label_275
	xor	r15d, r15d
	jmp	.label_249
.label_265:
	mov	cl, 0x5c
	cmp	byte ptr [rsp + 0x32], 0
	je	.label_213
	xor	eax, eax
	mov	r15b, 0x5c
.label_322:
	xor	r13d, r13d
	jmp	.label_197
.label_213:
	cmp	byte ptr [rsp + 0x27], 0
	mov	ebx, ecx
	je	.label_200
.label_203:
	xor	eax, eax
	cmp	byte ptr [rsp + 0x1f], 0
	mov	r13d, 0
	je	.label_196
	nop	
.label_317:
	cmp	byte ptr [rsp + 0xf], 0
	jne	.label_250
	cmp	r8d, 2
	jne	.label_217
	mov	eax, r9d
	and	al, 1
	jne	.label_217
	cmp	r14, rbp
	jae	.label_221
	mov	rax, qword ptr [rsp + 0x10]
	mov	byte ptr [rax + r14], 0x27
.label_221:
	lea	rax, [r14 + 1]
	cmp	rax, rbp
	jae	.label_225
	mov	rcx, qword ptr [rsp + 0x10]
	mov	byte ptr [rcx + rax], 0x24
.label_225:
	lea	rax, [r14 + 2]
	cmp	rax, rbp
	jae	.label_229
	mov	rcx, qword ptr [rsp + 0x10]
	mov	byte ptr [rcx + rax], 0x27
.label_229:
	add	r14, 3
	mov	r9b, 1
.label_217:
	cmp	r14, rbp
	jae	.label_239
	mov	rax, qword ptr [rsp + 0x10]
	mov	byte ptr [rax + r14], 0x5c
.label_239:
	inc	r14
	jmp	.label_256
.label_272:
	mov	qword ptr [rsp + 0x70], 0
	cmp	r11, -1
	jne	.label_244
	mov	rdi, r10
	call	strlen
	mov	r10, qword ptr [rsp + 0x28]
	mov	r11, rax
.label_244:
	cmp	byte ptr [rsp + 0x31], 0
	mov	qword ptr [rsp + 0x48], r11
	mov	qword ptr [rsp + 0x88], r12
	je	.label_252
	lea	rax, [r10 + r12]
	mov	qword ptr [rsp + 0xb0], rax
	mov	r13b, 1
	xor	r12d, r12d
	lea	rbp, [rsp + 0x70]
.label_214:
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
	je	.label_266
	cmp	rbx, -1
	mov	r10, qword ptr [rsp + 0x28]
	movabs	rsi, 0x20000002b
	je	.label_278
	test	rbx, rbx
	mov	r11, qword ptr [rsp + 0x48]
	je	.label_253
	cmp	rbx, 2
	mov	rbp, qword ptr [rsp + 0xa0]
	jb	.label_289
	mov	rax, qword ptr [rsp + 0x40]
	mov	rcx, qword ptr [rsp + 0xb0]
	lea	rax, [rcx + rax]
	mov	ecx, 1
	nop	dword ptr [rax]
.label_310:
	movsx	edx, byte ptr [rax + rcx]
	add	edx, -0x5b
	cmp	edx, 0x21
	ja	.label_268
	bt	rsi, rdx
	jb	.label_200
.label_268:
	inc	rcx
	cmp	rcx, rbx
	jb	.label_310
.label_289:
	mov	edi, dword ptr [rsp + 0x64]
	call	iswprint
	test	eax, eax
	jne	.label_306
	xor	r13d, r13d
.label_306:
	lea	rbp, [rsp + 0x70]
	mov	r12, qword ptr [rsp + 0x40]
	add	r12, rbx
	mov	rdi, rbp
	call	mbsinit
	test	eax, eax
	mov	r10, qword ptr [rsp + 0x28]
	mov	r11, qword ptr [rsp + 0x48]
	je	.label_214
	jmp	.label_262
.label_311:
	xor	r13d, r13d
	jmp	.label_196
.label_296:
	mov	r11, -1
	xor	r13d, r13d
	jmp	.label_196
.label_254:
	cmp	dword ptr [rsp + 0x98], 0
	je	.label_249
	lea	rcx, [r12 + 2]
	cmp	rcx, r11
	jae	.label_249
	cmp	byte ptr [r10 + r12 + 1], 0x3f
	jne	.label_249
	movsx	edx, byte ptr [r10 + rcx]
	xor	eax, eax
	cmp	edx, 0x3e
	ja	.label_198
	mov	ebx, esi
	movabs	rsi, 0x7000a38200000000
	bt	rsi, rdx
	jae	.label_255
	cmp	byte ptr [rsp + 0xf], 0
	jne	.label_211
	cmp	r14, rbp
	jae	.label_287
	mov	rax, qword ptr [rsp + 0x10]
	mov	byte ptr [rax + r14], 0x3f
.label_287:
	lea	rax, [r14 + 1]
	cmp	rax, rbp
	jae	.label_220
	mov	rsi, qword ptr [rsp + 0x10]
	mov	byte ptr [rsi + rax], 0x22
.label_220:
	lea	rax, [r14 + 2]
	cmp	rax, rbp
	jae	.label_199
	mov	rsi, qword ptr [rsp + 0x10]
	mov	byte ptr [rsi + rax], 0x22
.label_199:
	lea	rax, [r14 + 3]
	cmp	rax, rbp
	jae	.label_258
	mov	rsi, qword ptr [rsp + 0x10]
	mov	byte ptr [rsi + rax], 0x3f
.label_258:
	add	r14, 4
	xor	eax, eax
	mov	r12, rcx
	mov	r15b, dl
.label_255:
	xor	r13d, r13d
	mov	esi, ebx
	jmp	.label_196
.label_249:
	xor	eax, eax
.label_280:
	xor	r13d, r13d
	jmp	.label_196
.label_252:
	mov	r13b, 1
	xor	r12d, r12d
	lea	rbx, [rsp + 0x70]
	nop	word ptr cs:[rax + rax]
.label_276:
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
	je	.label_282
	cmp	rbp, -1
	je	.label_264
	cmp	rbp, -2
	je	.label_266
	mov	edi, dword ptr [rsp + 0x64]
	call	iswprint
	test	eax, eax
	mov	r12, qword ptr [rsp + 0x40]
	jne	.label_270
	xor	r13d, r13d
.label_270:
	add	r12, rbp
	lea	rbx, [rsp + 0x70]
	mov	rdi, rbx
	call	mbsinit
	test	eax, eax
	mov	r10, qword ptr [rsp + 0x28]
	mov	r11, qword ptr [rsp + 0x48]
	je	.label_276
	jmp	.label_262
.label_266:
	mov	r10, qword ptr [rsp + 0x28]
	mov	rsi, qword ptr [rsp + 0x40]
	lea	rax, [rsi + r12]
	mov	rdx, qword ptr [rsp + 0x48]
	cmp	rax, rdx
	jae	.label_234
	lea	rax, [r10 + r12]
.label_231:
	cmp	byte ptr [rax + rsi], 0
	je	.label_234
	lea	rcx, [r12 + rsi + 1]
	inc	rsi
	cmp	rcx, rdx
	jb	.label_231
.label_234:
	mov	qword ptr [rsp + 0x40], rsi
.label_278:
	xor	r13d, r13d
	jmp	.label_253
.label_264:
	xor	r13d, r13d
.label_282:
	mov	r10, qword ptr [rsp + 0x28]
.label_253:
	mov	r12, qword ptr [rsp + 0x40]
.label_262:
	mov	rbx, r12
	mov	r12, qword ptr [rsp + 0x88]
.label_283:
	and	r13b, 1
	mov	eax, r13d
	or	al, byte ptr [rsp + 0x33]
	cmp	rbx, 1
	mov	rbp, qword ptr [rsp + 0xa0]
	mov	dil, byte ptr [rsp + 0x1e]
	mov	r8, qword ptr [rsp + 0x38]
	mov	r9d, dword ptr [rsp + 0x60]
	mov	esi, dword ptr [rsp + 0x94]
	ja	.label_300
	test	al, al
	je	.label_300
	xor	eax, eax
	mov	r11, qword ptr [rsp + 0x48]
	jmp	.label_196
.label_300:
	mov	byte ptr [rsp + 0x40], al
	add	rbx, r12
	xor	eax, eax
	mov	r11, qword ptr [rsp + 0x48]
	jmp	.label_313
	.section	.text
	.align	16
	#Procedure 0x403bc7
	.globl sub_403bc7
	.type sub_403bc7, @function
sub_403bc7:

	nop	word ptr [rax + rax]
.label_279:
	inc	r14
	mov	r15b, byte ptr [r10 + r12 + 1]
	mov	r12, rdx
.label_313:
	cmp	byte ptr [rsp + 0x40], 0
	je	.label_316
	test	sil, 1
	je	.label_227
	cmp	r14, rbp
	jae	.label_319
	mov	rdx, qword ptr [rsp + 0x10]
	mov	byte ptr [rdx + r14], 0x5c
.label_319:
	inc	r14
	xor	esi, esi
	jmp	.label_227
	.section	.text
	.align	16
	#Procedure 0x403c05
	.globl sub_403c05
	.type sub_403c05, @function
sub_403c05:

	nop	word ptr cs:[rax + rax]
.label_316:
	cmp	byte ptr [rsp + 0xf], 0
	jne	.label_250
	cmp	r8d, 2
	jne	.label_206
	mov	eax, r9d
	and	al, 1
	jne	.label_206
	cmp	r14, rbp
	jae	.label_210
	mov	rax, qword ptr [rsp + 0x10]
	mov	byte ptr [rax + r14], 0x27
.label_210:
	lea	rax, [r14 + 1]
	cmp	rax, rbp
	jae	.label_226
	mov	rdx, qword ptr [rsp + 0x10]
	mov	byte ptr [rdx + rax], 0x24
.label_226:
	lea	rax, [r14 + 2]
	cmp	rax, rbp
	jae	.label_235
	mov	rdx, qword ptr [rsp + 0x10]
	mov	byte ptr [rdx + rax], 0x27
.label_235:
	add	r14, 3
	mov	r9b, 1
.label_206:
	cmp	r14, rbp
	jae	.label_228
	mov	rax, qword ptr [rsp + 0x10]
	mov	byte ptr [rax + r14], 0x5c
.label_228:
	lea	rax, [r14 + 1]
	cmp	rax, rbp
	jae	.label_248
	mov	edx, r15d
	shr	dl, 6
	or	dl, 0x30
	mov	ecx, esi
	mov	rsi, qword ptr [rsp + 0x10]
	mov	byte ptr [rsi + rax], dl
	mov	esi, ecx
.label_248:
	lea	rax, [r14 + 2]
	cmp	rax, rbp
	jae	.label_242
	mov	edx, r15d
	shr	dl, 3
	and	dl, 7
	or	dl, 0x30
	mov	ecx, esi
	mov	rsi, qword ptr [rsp + 0x10]
	mov	byte ptr [rsi + rax], dl
	mov	esi, ecx
.label_242:
	add	r14, 3
	and	r15b, 7
	or	r15b, 0x30
	mov	al, 1
.label_227:
	lea	rdx, [r12 + 1]
	cmp	rbx, rdx
	jbe	.label_197
	test	r9b, 1
	je	.label_271
	mov	rcx, rbx
	mov	ebx, eax
	and	bl, 1
	jne	.label_318
	mov	r8, r12
	mov	r12d, esi
	cmp	r14, rbp
	jae	.label_259
	mov	rsi, qword ptr [rsp + 0x10]
	mov	byte ptr [rsi + r14], 0x27
.label_259:
	lea	rsi, [r14 + 1]
	cmp	rsi, rbp
	jae	.label_292
	mov	rbx, qword ptr [rsp + 0x10]
	mov	byte ptr [rbx + rsi], 0x27
.label_292:
	add	r14, 2
	xor	r9d, r9d
	mov	esi, r12d
	mov	rbx, rcx
	mov	r12, r8
	mov	r8, qword ptr [rsp + 0x38]
	jmp	.label_271
	.section	.text
	.align	16
	#Procedure 0x403d16
	.globl sub_403d16
	.type sub_403d16, @function
sub_403d16:

	nop	word ptr cs:[rax + rax]
.label_318:
	mov	rbx, rcx
.label_271:
	cmp	r14, rbp
	jae	.label_279
	mov	ecx, esi
	mov	rsi, qword ptr [rsp + 0x10]
	mov	byte ptr [rsi + r14], r15b
	mov	esi, ecx
	jmp	.label_279
	.section	.text
	.align	16
	#Procedure 0x403d3e
	.globl sub_403d3e
	.type sub_403d3e, @function
sub_403d3e:

	nop	
.label_197:
	test	r9b, 1
	je	.label_285
	and	al, 1
	jne	.label_285
	cmp	r14, rbp
	jae	.label_290
	mov	rax, qword ptr [rsp + 0x10]
	mov	byte ptr [rax + r14], 0x27
.label_290:
	lea	rax, [r14 + 1]
	cmp	rax, rbp
	jae	.label_204
	mov	rcx, qword ptr [rsp + 0x10]
	mov	byte ptr [rcx + rax], 0x27
.label_204:
	add	r14, 2
	xor	r9d, r9d
.label_285:
	mov	ebx, r15d
.label_256:
	cmp	r14, rbp
	jae	.label_299
	mov	rax, qword ptr [rsp + 0x10]
	mov	byte ptr [rax + r14], bl
.label_299:
	inc	r14
	shl	r13b, 7
	sar	r13b, 7
	and	r13b, dil
	mov	edi, r13d
	jmp	.label_275
.label_198:
	xor	r13d, r13d
	jmp	.label_196
	.section	.text
	.align	16
	#Procedure 0x403da1
	.globl sub_403da1
	.type sub_403da1, @function
sub_403da1:

	nop	word ptr cs:[rax + rax]
.label_207:
	mov	rcx, r12
.label_212:
	cmp	r8d, 2
	setne	al
	test	r14, r14
	setne	dl
	cmp	byte ptr [rsp + 0xf], 0
	je	.label_312
	or	al, dl
	jne	.label_312
	mov	r11, rcx
	jmp	.label_250
.label_200:
	mov	eax, 2
.label_288:
	mov	qword ptr [rsp + 0x38], rax
.label_250:
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
.label_238:
	mov	r14, rax
.label_257:
	mov	rax, r14
	add	rsp, 0xc8
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_267:
	mov	rdx, qword ptr [rsp + 0x58]
	test	rdx, rdx
	je	.label_222
	cmp	byte ptr [rsp + 0xf], 0
	mov	rcx, qword ptr [rsp + 0x10]
	jne	.label_223
	mov	al, byte ptr [rdx]
	test	al, al
	je	.label_223
	inc	rdx
	nop	dword ptr [rax + rax]
.label_236:
	cmp	r14, rbp
	jae	.label_233
	mov	byte ptr [rcx + r14], al
.label_233:
	inc	r14
	movzx	eax, byte ptr [rdx]
	inc	rdx
	test	al, al
	jne	.label_236
	jmp	.label_223
.label_309:
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
	jmp	.label_238
.label_222:
	mov	rcx, qword ptr [rsp + 0x10]
.label_223:
	cmp	r14, rbp
	jae	.label_257
	mov	byte ptr [rcx + r14], 0
	jmp	.label_257
.label_211:
	mov	eax, 5
	jmp	.label_288
.label_218:
	call	abort
.label_323:
	call	xalloc_die
	.section	.text
	.align	16
	#Procedure 0x403ef5
	.globl sub_403ef5
	.type sub_403ef5, @function
sub_403ef5:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x403eff
	.globl xcalloc
	.type xcalloc, @function
xcalloc:

	push	rax
	movabs	rax, 0x7fffffffffffffff
	xor	edx, edx
	div	rsi
	cmp	rax, rdi
	jb	.label_323
	call	rpl_calloc
	test	rax, rax
	je	.label_323
	pop	rcx
	ret	
	.section	.text
	.align	16
	#Procedure 0x403f20
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
	je	.label_324
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
.label_324:
	call	abort
	.section	.text
	.align	16
	#Procedure 0x403f8c
	.globl sub_403f8c
	.type sub_403f8c, @function
sub_403f8c:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x403f90
	.globl xnrealloc
	.type xnrealloc, @function
xnrealloc:

	push	rbx
	mov	rbx, rdx
	movabs	rax, 0x7fffffffffffffff
	xor	edx, edx
	div	rbx
	cmp	rax, rsi
	jb	.label_325
	imul	rbx, rsi
	test	rdi, rdi
	je	.label_326
	test	rbx, rbx
	jne	.label_326
	call	free
	xor	eax, eax
	pop	rbx
	ret	
.label_325:
	call	xalloc_die
	.section	.text
	.align	16
	#Procedure 0x403fc4
	.globl sub_403fc4
	.type sub_403fc4, @function
sub_403fc4:

	nop	dword ptr [rax + rax]
.label_326:
	mov	rsi, rbx
	call	realloc
	test	rbx, rbx
	je	.label_327
	test	rax, rax
	je	.label_325
.label_327:
	pop	rbx
	ret	
	.section	.text
	.align	16
	#Procedure 0x403fe0
	.globl quotearg_n_custom_mem
	.type quotearg_n_custom_mem, @function
quotearg_n_custom_mem:

	sub	rsp, 0x38
	mov	rax, qword ptr [rip + label_19]
	mov	qword ptr [rsp + 0x30], rax
	movups	xmm0, xmmword ptr [rip + label_20]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0, xmmword ptr [rip + label_21]
	movaps	xmmword ptr [rsp + 0x10], xmm0
	movups	xmm0, xmmword ptr [rip + default_quoting_options]
	movaps	xmmword ptr [rsp], xmm0
	mov	dword ptr [rsp], 0xa
	test	rsi, rsi
	je	.label_328
	test	rdx, rdx
	je	.label_328
	mov	qword ptr [rsp + 0x28], rsi
	mov	qword ptr [rsp + 0x30], rdx
	lea	rax, [rsp]
	mov	rsi, rcx
	mov	rdx, r8
	mov	rcx, rax
	call	quotearg_n_options
	add	rsp, 0x38
	ret	
.label_328:
	call	abort
	.section	.text
	.align	16
	#Procedure 0x40404a
	.globl sub_40404a
	.type sub_40404a, @function
sub_40404a:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404050

	.globl quote_n
	.type quote_n, @function
quote_n:
	mov	rdx, -1
	mov	ecx, OFFSET FLAT:quote_quoting_options
	jmp	quotearg_n_options
	.section	.text
	.align	16
	#Procedure 0x404061
	.globl sub_404061
	.type sub_404061, @function
sub_404061:

	nop	word ptr cs:[rax + rax]
.label_333:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_329
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
	mov	rdi, qword ptr [rip + file_name]
	test	rdi, rdi
	mov	ebp, dword ptr [rbp]
	jne	.label_331
	xor	edi, edi
	mov	edx, OFFSET FLAT:label_137
	xor	eax, eax
	mov	esi, ebp
	mov	rcx, rbx
	call	error
	mov	edi, dword ptr [rip + exit_failure]
	call	_exit
	.section	.text
	.align	16
	#Procedure 0x4040b1

	.globl close_stdout
	.type close_stdout, @function
close_stdout:
	push	rbp
	push	rbx
	push	rax
	mov	rdi, qword ptr [rip + stdout]
	call	close_stream
	test	eax, eax
	je	.label_332
	mov	bl, byte ptr [rip + ignore_EPIPE]
	call	__errno_location
	mov	rbp, rax
	cmp	bl, 0
	je	.label_333
	cmp	dword ptr [rbp], 0x20
	jne	.label_333
.label_332:
	mov	rdi, qword ptr [rip + stderr]
	call	close_stream
	test	eax, eax
	jne	.label_334
	add	rsp, 8
	pop	rbx
	pop	rbp
	ret	
.label_334:
	mov	edi, dword ptr [rip + exit_failure]
	call	_exit
.label_331:
	call	quotearg_colon
	mov	rcx, rax
	xor	edi, edi
	mov	edx, OFFSET FLAT:label_330
	xor	eax, eax
	mov	esi, ebp
	mov	r8, rbx
	call	error
	mov	edi, dword ptr [rip + exit_failure]
	call	_exit
	nop	dword ptr [rax]
	nop	dword ptr [rax + rax]
.label_335:
	call	abort
	.section	.text
	.align	16
	#Procedure 0x404135
	.globl quotearg_custom
	.type quotearg_custom, @function
quotearg_custom:

	sub	rsp, 0x38
	mov	rax, rdx
	mov	rcx, qword ptr [rip + label_19]
	mov	qword ptr [rsp + 0x30], rcx
	movups	xmm0, xmmword ptr [rip + label_20]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0, xmmword ptr [rip + label_21]
	movaps	xmmword ptr [rsp + 0x10], xmm0
	movups	xmm0, xmmword ptr [rip + default_quoting_options]
	movaps	xmmword ptr [rsp], xmm0
	mov	dword ptr [rsp], 0xa
	test	rdi, rdi
	je	.label_335
	test	rsi, rsi
	je	.label_335
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
	#Procedure 0x4041a0

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
	jne	.label_337
	test	eax, eax
	sete	cl
	neg	eax
	sbb	ebx, ebx
	test	r14, r14
	jne	.label_336
	test	cl, cl
	jne	.label_336
	call	__errno_location
	xor	ecx, ecx
	cmp	dword ptr [rax], 9
	mov	ebx, 0xffffffff
	cmove	ebx, ecx
	jmp	.label_336
.label_337:
	mov	ebx, 0xffffffff
	test	eax, eax
	jne	.label_336
	call	__errno_location
	mov	dword ptr [rax], 0
.label_336:
	mov	eax, ebx
	pop	rbx
	pop	r14
	pop	rbp
	ret	
.label_338:
	call	abort
	.section	.text
	.align	16
	#Procedure 0x404205
	.globl sub_404205
	.type sub_404205, @function
sub_404205:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40420d

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
	je	.label_338
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
	#Procedure 0x404270
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
	#Procedure 0x40427f
	.globl sub_40427f
	.type sub_40427f, @function
sub_40427f:

	nop	
	.section	.text
	.align	16
	#Procedure 0x404280
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
	#Procedure 0x404299
	.globl sub_404299
	.type sub_404299, @function
sub_404299:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x4042a0

	.globl xnumtoimax
	.type xnumtoimax, @function
xnumtoimax:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	push	rax
	mov	r14, r9
	mov	r12, rcx
	mov	r13, rdx
	mov	eax, esi
	mov	r15, rdi
	lea	rcx, [rsp]
	xor	esi, esi
	mov	edx, eax
	call	xstrtoimax
	test	eax, eax
	je	.label_340
	cmp	eax, 1
	je	.label_341
	cmp	eax, 3
	jne	.label_346
	call	__errno_location
	mov	dword ptr [rax], 0
	jmp	.label_339
.label_345:
	mov	dword ptr [rax], 0x22
	jmp	.label_339
	.section	.text
	.align	16
	#Procedure 0x4042e9
	.globl sub_4042e9
	.type sub_4042e9, @function
sub_4042e9:

	nop	word ptr cs:[rax + rax]
.label_344:
	call	__errno_location
	cmp	rbx, -0x40000001
	jg	.label_345
	mov	dword ptr [rax], 0x4b
	jmp	.label_339
.label_340:
	mov	rbx, qword ptr [rsp]
	cmp	rbx, r13
	jl	.label_342
	cmp	rbx, r12
	jle	.label_343
.label_342:
	cmp	rbx, 0x40000000
	jl	.label_344
.label_341:
	call	__errno_location
	mov	dword ptr [rax], 0x4b
	jmp	.label_339
.label_346:
	call	__errno_location
.label_339:
	mov	ecx, dword ptr [rsp + 0x40]
	test	ecx, ecx
	mov	ebx, 1
	cmovne	ebx, ecx
	mov	ebp, dword ptr [rax]
	xor	eax, eax
	cmp	ebp, 0x16
	cmove	ebp, eax
	mov	rdi, r15
	call	quote
	mov	r8, rax
	mov	edx, OFFSET FLAT:label_330
	xor	eax, eax
	mov	edi, ebx
	mov	esi, ebp
	mov	rcx, r14
	call	error
	mov	rbx, qword ptr [rsp]
.label_343:
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
	#Procedure 0x404380
	.globl close_stdout_set_file_name
	.type close_stdout_set_file_name, @function
close_stdout_set_file_name:

	mov	qword ptr [rip + file_name],  rdi
	ret	
	.section	.text
	.align	16
	#Procedure 0x404388
	.globl sub_404388
	.type sub_404388, @function
sub_404388:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404390

	.globl quotearg_colon
	.type quotearg_colon, @function
quotearg_colon:
	sub	rsp, 0x38
	mov	rax, rdi
	mov	rcx, qword ptr [rip + label_19]
	mov	qword ptr [rsp + 0x30], rcx
	movups	xmm0, xmmword ptr [rip + label_20]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0, xmmword ptr [rip + label_21]
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
	#Procedure 0x4043e5
	.globl sub_4043e5
	.type sub_4043e5, @function
sub_4043e5:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4043f0
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
	#Procedure 0x4044b1
	.globl sub_4044b1
	.type sub_4044b1, @function
sub_4044b1:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4044c0

	.globl usage
	.type usage, @function
usage:
	push	rbp
	push	rbx
	push	rax
	mov	ebp, edi
	test	ebp, ebp
	jne	.label_347
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_350
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	mov	rdx, qword ptr [rip + program_name]
	mov	edi, 1
	xor	eax, eax
	mov	rsi, rcx
	call	__printf_chk
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_356
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_364
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_365
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_354
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_348
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_349
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_358
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_359
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_360
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_355
	mov	edx, 5
	call	dcgettext
	mov	rsi, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:label_75
	mov	ecx, OFFSET FLAT:label_130
	xor	eax, eax
	call	__printf_chk
	mov	edi, 5
	xor	esi, esi
	call	setlocale
	test	rax, rax
	je	.label_351
	mov	esi, OFFSET FLAT:label_352
	mov	edx, 3
	mov	rdi, rax
	call	strncmp
	test	eax, eax
	je	.label_351
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_361
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	call	fputs_unlocked
.label_351:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_362
	mov	edx, 5
	call	dcgettext
	mov	rsi, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:label_130
	mov	ecx, OFFSET FLAT:label_74
	xor	eax, eax
	call	__printf_chk
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_363
	mov	edx, 5
	call	dcgettext
	mov	rsi, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:label_74
	mov	ecx, OFFSET FLAT:label_353
	xor	eax, eax
	call	__printf_chk
	mov	edi, ebp
	call	exit
.label_347:
	mov	rbx, qword ptr [rip + stderr]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_357
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
	#Procedure 0x40471b
	.globl sub_40471b
	.type sub_40471b, @function
sub_40471b:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404720
	.globl quotearg_custom_mem
	.type quotearg_custom_mem, @function
quotearg_custom_mem:

	sub	rsp, 0x38
	mov	rax, qword ptr [rip + label_19]
	mov	qword ptr [rsp + 0x30], rax
	movups	xmm0, xmmword ptr [rip + label_20]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0, xmmword ptr [rip + label_21]
	movaps	xmmword ptr [rsp + 0x10], xmm0
	movups	xmm0, xmmword ptr [rip + default_quoting_options]
	movaps	xmmword ptr [rsp], xmm0
	mov	dword ptr [rsp], 0xa
	test	rdi, rdi
	je	.label_366
	test	rsi, rsi
	je	.label_366
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
.label_366:
	call	abort
	.section	.text
	.align	16
	#Procedure 0x40478c
	.globl sub_40478c
	.type sub_40478c, @function
sub_40478c:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x404790
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
	#Procedure 0x4047a8
	.globl sub_4047a8
	.type sub_4047a8, @function
sub_4047a8:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4047b0
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
	je	.label_367
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
.label_367:
	call	abort
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
	jne	.label_372
	call	locale_charset
	movsx	ecx, byte ptr [rax]
	and	ecx, 0xffffffdf
	cmp	ecx, 0x47
	je	.label_376
	cmp	ecx, 0x55
	jne	.label_368
	movsx	ecx, byte ptr [rax + 1]
	and	ecx, 0xffffffdf
	cmp	ecx, 0x54
	jne	.label_368
	movsx	ecx, byte ptr [rax + 2]
	and	ecx, 0xffffffdf
	cmp	ecx, 0x46
	jne	.label_368
	cmp	byte ptr [rax + 3], 0x2d
	jne	.label_368
	cmp	byte ptr [rax + 4], 0x38
	jne	.label_368
	cmp	byte ptr [rax + 5], 0
	jne	.label_368
	cmp	byte ptr [rbx], 0x60
	mov	ecx, OFFSET FLAT:label_374
	mov	eax, OFFSET FLAT:label_375
	jmp	.label_371
.label_376:
	movsx	ecx, byte ptr [rax + 1]
	and	ecx, 0xffffffdf
	cmp	ecx, 0x42
	jne	.label_368
	cmp	byte ptr [rax + 2], 0x31
	jne	.label_368
	cmp	byte ptr [rax + 3], 0x38
	jne	.label_368
	cmp	byte ptr [rax + 4], 0x30
	jne	.label_368
	cmp	byte ptr [rax + 5], 0x33
	jne	.label_368
	cmp	byte ptr [rax + 6], 0x30
	jne	.label_368
	cmp	byte ptr [rax + 7], 0
	je	.label_373
.label_368:
	cmp	ebp, 9
	mov	ecx, OFFSET FLAT:label_208
	mov	eax, OFFSET FLAT:label_274
.label_371:
	cmove	rax, rcx
.label_372:
	add	rsp, 8
	pop	rbx
	pop	rbp
	ret	
.label_373:
	cmp	byte ptr [rbx], 0x60
	mov	ecx, OFFSET FLAT:label_369
	mov	eax, OFFSET FLAT:label_370
	jmp	.label_371
	.section	.text
	.align	16
	#Procedure 0x404915
	.globl sub_404915
	.type sub_404915, @function
sub_404915:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404920
	.globl quotearg_free
	.type quotearg_free, @function
quotearg_free:

	push	r15
	push	r14
	push	rbx
	mov	r14, qword ptr [rip + slotvec]
	cmp	dword ptr [rip + nslots],  2
	jl	.label_377
	lea	r15, [r14 + 0x18]
	mov	ebx, 1
	nop	
.label_379:
	mov	rdi, qword ptr [r15]
	call	free
	inc	rbx
	movsxd	rax, dword ptr [rip + nslots]
	add	r15, 0x10
	cmp	rbx, rax
	jl	.label_379
.label_377:
	mov	rdi, qword ptr [r14 + 8]
	mov	eax, OFFSET FLAT:slot0
	cmp	rdi, rax
	je	.label_380
	call	free
	mov	qword ptr [rip + slotvec0],  0x100
	mov	qword ptr [rip + label_381], OFFSET FLAT:slot0
.label_380:
	mov	eax, OFFSET FLAT:slotvec0
	cmp	r14, rax
	je	.label_378
	mov	rdi, r14
	call	free
	mov	qword ptr [rip + slotvec], OFFSET FLAT:slotvec0
.label_378:
	mov	dword ptr [rip + nslots],  1
	pop	rbx
	pop	r14
	pop	r15
	ret	
	.section	.text
	.align	16
	#Procedure 0x4049b1
	.globl sub_4049b1
	.type sub_4049b1, @function
sub_4049b1:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4049c0

	.globl rpl_fflush
	.type rpl_fflush, @function
rpl_fflush:
	push	rbx
	mov	rbx, rdi
	test	rbx, rbx
	je	.label_382
	mov	rdi, rbx
	call	__freading
	test	eax, eax
	je	.label_382
	test	byte ptr [rbx + 1], 1
	je	.label_382
	xor	esi, esi
	mov	edx, 1
	mov	rdi, rbx
	call	rpl_fseeko
.label_382:
	mov	rdi, rbx
	pop	rbx
	jmp	fflush
	.section	.text
	.align	16
	#Procedure 0x4049f3
	.globl sub_4049f3
	.type sub_4049f3, @function
sub_4049f3:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404a00

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
	jne	.label_383
	mov	rax, qword ptr [rbx + 0x28]
	cmp	rax, qword ptr [rbx + 0x20]
	jne	.label_383
	cmp	qword ptr [rbx + 0x48], 0
	je	.label_384
.label_383:
	mov	rdi, rbx
	mov	rsi, rbp
	mov	edx, r14d
	pop	rbx
	pop	r14
	pop	rbp
	jmp	fseeko
.label_384:
	mov	rdi, rbx
	call	fileno
	mov	edi, eax
	mov	rsi, rbp
	mov	edx, r14d
	call	lseek
	mov	rcx, rax
	mov	eax, 0xffffffff
	cmp	rcx, -1
	je	.label_385
	and	byte ptr [rbx], 0xef
	mov	qword ptr [rbx + 0x90], rcx
	xor	eax, eax
.label_385:
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x404a6e
	.globl sub_404a6e
	.type sub_404a6e, @function
sub_404a6e:

	nop	
	.section	.text
	.align	16
	#Procedure 0x404a70
	.globl quotearg_char_mem
	.type quotearg_char_mem, @function
quotearg_char_mem:

	sub	rsp, 0x38
	mov	ecx, edx
	mov	r8, rsi
	mov	rdx, rdi
	mov	rsi, qword ptr [rip + label_19]
	mov	qword ptr [rsp + 0x30], rsi
	movups	xmm0, xmmword ptr [rip + label_20]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0, xmmword ptr [rip + label_21]
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
	#Procedure 0x404ade
	.globl sub_404ade
	.type sub_404ade, @function
sub_404ade:

	nop	
	.section	.text
	.align	16
	#Procedure 0x404ae0
	.globl quotearg_n_mem
	.type quotearg_n_mem, @function
quotearg_n_mem:

	mov	ecx, OFFSET FLAT:default_quoting_options
	jmp	quotearg_n_options
	.section	.text
	.align	16
	#Procedure 0x404aea
	.globl sub_404aea
	.type sub_404aea, @function
sub_404aea:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404af0
	.globl quotearg_n
	.type quotearg_n, @function
quotearg_n:

	mov	rdx, -1
	mov	ecx, OFFSET FLAT:default_quoting_options
	jmp	quotearg_n_options
	.section	.text
	.align	16
	#Procedure 0x404afe
	.globl sub_404afe
	.type sub_404afe, @function
sub_404afe:

	nop	
	.section	.text
	.align	16
	#Procedure 0x404b00

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
	js	.label_386
	mov	eax, dword ptr [r13]
	mov	rbp, qword ptr [rip + slotvec]
	cmp	dword ptr [rip + nslots],  r12d
	mov	qword ptr [rsp + 0x18], r13
	mov	dword ptr [rsp], eax
	mov	qword ptr [rsp + 0x10], rbx
	mov	qword ptr [rsp + 8], r15
	jg	.label_389
	cmp	r12d, 0x7fffffff
	je	.label_391
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
	jne	.label_387
	movups	xmm0, xmmword ptr [rip + slotvec0]
	movups	xmmword ptr [r14], xmm0
.label_387:
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
.label_389:
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
	jbe	.label_392
	mov	rax, qword ptr [rsp + 0x18]
	mov	ebp, dword ptr [rsp]
	jmp	.label_388
.label_392:
	lea	rax, [rbp + r13]
	lea	r12, [rbp + r13 + 8]
	inc	r15
	mov	qword ptr [rax], r15
	mov	eax, OFFSET FLAT:slot0
	cmp	r14, rax
	mov	ebp, dword ptr [rsp]
	je	.label_390
	mov	rdi, r14
	call	free
.label_390:
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
.label_388:
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
.label_386:
	call	abort
.label_391:
	call	xalloc_die
	.section	.text
	.align	16
	#Procedure 0x404cbd
	.globl sub_404cbd
	.type sub_404cbd, @function
sub_404cbd:

	nop	dword ptr [rax]
.label_399:
	test	rcx, rcx
	jne	.label_393
	mov	eax, 0x80
	xor	edx, edx
	div	rbx
	xor	ecx, ecx
	cmp	rbx, 0x80
	seta	cl
	add	rcx, rax
.label_393:
	movabs	rax, 0x7fffffffffffffff
	xor	edx, edx
	div	rbx
	cmp	rax, rcx
	jb	.label_397
.label_398:
	mov	qword ptr [rsi], rcx
	imul	rbx, rcx
	test	rdi, rdi
	je	.label_396
	test	rbx, rbx
	jne	.label_396
	call	free
	xor	eax, eax
	pop	rbx
	ret	
.label_397:
	call	xalloc_die
	.section	.text
	.align	16
	#Procedure 0x404d11
	.globl sub_404d11
	.type sub_404d11, @function
sub_404d11:

	nop	word ptr [rax + rax]
.label_396:
	mov	rsi, rbx
	call	realloc
	test	rbx, rbx
	je	.label_394
	test	rax, rax
	je	.label_395
.label_394:
	pop	rbx
	ret	
	.section	.text
	.align	16
	#Procedure 0x404d2e
	.globl x2nrealloc
	.type x2nrealloc, @function
x2nrealloc:

	push	rbx
	mov	rbx, rdx
	mov	rcx, qword ptr [rsi]
	test	rdi, rdi
	je	.label_399
	movabs	rax, 0x5555555555555554
	xor	edx, edx
	div	rbx
	cmp	rax, rcx
	jbe	.label_395
	mov	rax, rcx
	shr	rax, 1
	lea	rcx, [rcx + rax + 1]
	jmp	.label_398
.label_395:
	call	xalloc_die
	.section	.text
	.align	16
	#Procedure 0x404d60

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
	je	.label_412
	mov	edx, OFFSET FLAT:label_403
	xor	eax, eax
	mov	rdi, r14
	mov	r8, rbx
	call	__fprintf_chk
	jmp	.label_409
.label_412:
	mov	edx, OFFSET FLAT:label_410
	xor	eax, eax
	mov	rdi, r14
	mov	rcx, rbx
	mov	r8, r9
	call	__fprintf_chk
.label_409:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_414
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
	mov	esi, OFFSET FLAT:label_411
	mov	edx, 5
	call	dcgettext
	mov	rdi, rax
	mov	rsi, r14
	call	fputs_unlocked
	cmp	r12, 9
	ja	.label_415
	jmp	qword ptr [(r12 * 8) + label_416]
.label_440:
	add	rsp, 8
	jmp	.label_402
.label_415:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_406
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
	jmp	.label_402
.label_441:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_401
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
.label_442:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_407
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
.label_443:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_404
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
.label_444:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_418
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
	jmp	.label_402
.label_445:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_417
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
	jmp	.label_402
.label_446:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_400
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
	jmp	.label_402
.label_447:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_405
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
	jmp	.label_402
.label_449:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_408
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
	jmp	.label_402
.label_448:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_413
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
.label_402:
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	ret	
	.section	.text
	.align	16
	#Procedure 0x4050b8
	.globl sub_4050b8
	.type sub_4050b8, @function
sub_4050b8:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4050c0

	.globl version_etc_va
	.type version_etc_va, @function
version_etc_va:
	movsxd	r10, dword ptr [r8]
	cmp	r10, 0x28
	ja	.label_419
	mov	r9, r10
	add	r9, qword ptr [r8 + 0x10]
	lea	r10d, [r10 + 8]
	mov	dword ptr [r8], r10d
	jmp	.label_421
.label_419:
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
.label_421:
	sub	rsp, 0x58
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp], rax
	xor	r9d, r9d
	test	rax, rax
	je	.label_422
	cmp	r10d, 0x29
	jae	.label_431
	movsxd	r9, r10d
	add	r9, qword ptr [r8 + 0x10]
	add	r10d, 8
	mov	dword ptr [r8], r10d
	jmp	.label_420
.label_431:
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
.label_420:
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp + 8], rax
	mov	r9d, 1
	test	rax, rax
	je	.label_422
	cmp	r10d, 0x29
	jae	.label_429
	movsxd	r9, r10d
	add	r9, qword ptr [r8 + 0x10]
	add	r10d, 8
	mov	dword ptr [r8], r10d
	jmp	.label_430
.label_429:
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
.label_430:
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp + 0x10], rax
	mov	r9d, 2
	test	rax, rax
	je	.label_422
	cmp	r10d, 0x29
	jae	.label_427
	movsxd	r9, r10d
	add	r9, qword ptr [r8 + 0x10]
	add	r10d, 8
	mov	dword ptr [r8], r10d
	jmp	.label_428
.label_427:
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
.label_428:
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp + 0x18], rax
	mov	r9d, 3
	test	rax, rax
	je	.label_422
	cmp	r10d, 0x29
	jae	.label_425
	movsxd	r9, r10d
	add	r9, qword ptr [r8 + 0x10]
	add	r10d, 8
	mov	dword ptr [r8], r10d
	jmp	.label_426
.label_425:
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
.label_426:
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp + 0x20], rax
	mov	r9d, 4
	test	rax, rax
	je	.label_422
	cmp	r10d, 0x29
	jae	.label_423
	movsxd	r9, r10d
	add	r9, qword ptr [r8 + 0x10]
	add	r10d, 8
	mov	dword ptr [r8], r10d
	jmp	.label_424
.label_423:
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
.label_424:
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp + 0x28], rax
	mov	r9d, 5
	test	rax, rax
	je	.label_422
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp + 0x30], rax
	mov	r9d, 6
	test	rax, rax
	je	.label_422
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp + 0x38], rax
	mov	r9d, 7
	test	rax, rax
	je	.label_422
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp + 0x40], rax
	mov	r9d, 8
	test	rax, rax
	je	.label_422
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp + 0x48], rax
	cmp	rax, 1
	mov	r9d, 9
	sbb	r9, -1
.label_422:
	lea	r8, [rsp]
	call	version_etc_arn
	add	rsp, 0x58
	ret	
	.section	.text
	.align	16
	#Procedure 0x4052a2
	.globl sub_4052a2
	.type sub_4052a2, @function
sub_4052a2:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4052b0
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
	#Procedure 0x4052c3
	.globl sub_4052c3
	.type sub_4052c3, @function
sub_4052c3:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4052d0
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
	#Procedure 0x405303
	.globl sub_405303
	.type sub_405303, @function
sub_405303:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x405310
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
.label_432:
	call	abort
	.section	.text
	.align	16
	#Procedure 0x405371
	.globl sub_405371
	.type sub_405371, @function
sub_405371:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x405380
	.globl xnmalloc
	.type xnmalloc, @function
xnmalloc:

	push	rbx
	mov	rbx, rsi
	movabs	rax, 0x7fffffffffffffff
	xor	edx, edx
	div	rbx
	cmp	rax, rdi
	jb	.label_433
	imul	rbx, rdi
	mov	rdi, rbx
	call	malloc
	test	rbx, rbx
	je	.label_434
	test	rax, rax
	je	.label_433
.label_434:
	pop	rbx
	ret	
.label_433:
	call	xalloc_die
	.section	.text
	.align	16
	#Procedure 0x4053b5
	.globl sub_4053b5
	.type sub_4053b5, @function
sub_4053b5:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x405425
	.globl sub_405425
	.type sub_405425, @function
sub_405425:

	nop	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x405432
	.globl sub_405432
	.type sub_405432, @function
sub_405432:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x405456
	.globl sub_405456
	.type sub_405456, @function
sub_405456:

	nop	word ptr cs:[rax + rax]
