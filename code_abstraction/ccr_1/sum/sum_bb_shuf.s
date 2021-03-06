	.section	.text
	.align	32
	#Procedure 0x401769
	.globl sub_401769
	.type sub_401769, @function
sub_401769:

	hlt	
	.section	.text
	.align	32
	#Procedure 0x40176a
	.globl sub_40176a
	.type sub_40176a, @function
sub_40176a:

	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4017a2
	.globl sub_4017a2
	.type sub_4017a2, @function
sub_4017a2:

	nop	dword ptr [rax]
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4017ea
	.globl sub_4017ea
	.type sub_4017ea, @function
sub_4017ea:

	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40180c
	.globl sub_40180c
	.type sub_40180c, @function
sub_40180c:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x40181d
	.globl sub_40181d
	.type sub_40181d, @function
sub_40181d:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x401836
	.globl sub_401836
	.type sub_401836, @function
sub_401836:

	nop	word ptr cs:[rax + rax]
.label_10:
	test	eax, eax
	sete	cl
	neg	eax
	sbb	ebx, ebx
	test	r14, r14
	jne	.label_9
	test	cl, cl
	jne	.label_9
	call	__errno_location
	xor	ecx, ecx
	cmp	dword ptr [rax], 9
	mov	ebx, 0xffffffff
	cmove	ebx, ecx
.label_9:
	mov	eax, ebx
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40186b
	.globl sub_40186b
	.type sub_40186b, @function
sub_40186b:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x401875

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
	je	.label_10
	mov	ebx, 0xffffffff
	test	eax, eax
	jne	.label_9
	call	__errno_location
	mov	dword ptr [rax], 0
	jmp	.label_9
.label_12:
	mov	ecx, 1
.label_11:
	mov	rdi, rcx
	mov	rsi, rax
	jmp	calloc
	.section	.text
	.align	32
	#Procedure 0x4018c0
	.globl sub_4018c0
	.type sub_4018c0, @function
sub_4018c0:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4018c5

	.globl rpl_calloc
	.type rpl_calloc, @function
rpl_calloc:
	test	rdi, rdi
	mov	eax, 1
	je	.label_12
	test	rsi, rsi
	mov	ecx, 1
	je	.label_11
	mov	rax, rsi
	imul	rax, rdi
	xor	edx, edx
	div	rsi
	cmp	rax, rdi
	mov	rax, rsi
	mov	rcx, rdi
	je	.label_11
	push	rax
	call	__errno_location
	mov	dword ptr [rax], 0xc
	xor	eax, eax
	pop	rcx
	ret	
	.section	.text
	.align	32
	#Procedure 0x401900

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
	#Procedure 0x401936
	.globl sub_401936
	.type sub_401936, @function
sub_401936:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x401940
	.globl c_isgraph
	.type c_isgraph, @function
c_isgraph:

	add	edi, -0x21
	cmp	edi, 0x5e
	setb	al
	ret	
	.section	.text
	.align	32
	#Procedure 0x40194a
	.globl sub_40194a
	.type sub_40194a, @function
sub_40194a:

	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x401950

	.globl emit_stdin_note
	.type emit_stdin_note, @function
emit_stdin_note:
	push	rax
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_13
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	pop	rax
	jmp	fputs_unlocked
	.section	.text
	.align	32
	#Procedure 0x401972
	.globl sub_401972
	.type sub_401972, @function
sub_401972:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x401980

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
	#Procedure 0x4019b7
	.globl sub_4019b7
	.type sub_4019b7, @function
sub_4019b7:

	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4019c0
	.globl quotearg_alloc
	.type quotearg_alloc, @function
quotearg_alloc:

	mov	rax, rdx
	xor	edx, edx
	mov	rcx, rax
	jmp	quotearg_alloc_mem
	.section	.text
	.align	32
	#Procedure 0x4019ca
	.globl sub_4019ca
	.type sub_4019ca, @function
sub_4019ca:

	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4019d0

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
	je	.label_14
	mov	qword ptr [rax], rbx
.label_14:
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
	#Procedure 0x401abc
	.globl sub_401abc
	.type sub_401abc, @function
sub_401abc:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x401ac0

	.globl close_stdout
	.type close_stdout, @function
close_stdout:
	push	rbp
	push	r14
	push	rbx
	mov	rdi,  qword ptr [word ptr [rip + stdout]]
	call	close_stream
	test	eax, eax
	je	.label_19
	cmp	byte ptr [byte ptr [rip + ignore_EPIPE]],  0
	je	.label_15
	call	__errno_location
	cmp	dword ptr [rax], 0x20
	jne	.label_15
.label_19:
	mov	rdi,  qword ptr [word ptr [rip + stderr]]
	call	close_stream
	test	eax, eax
	jne	.label_20
	pop	rbx
	pop	r14
	pop	rbp
	ret	
.label_20:
	mov	edi,  dword ptr [dword ptr [rip + exit_failure]]
	call	_exit
.label_16:
	mov	rdi, rbx
	call	quotearg_colon
	mov	rcx, rax
	xor	edi, edi
	mov	edx, OFFSET FLAT:label_18
	xor	eax, eax
	mov	esi, ebp
	mov	r8, r14
	call	error
	mov	edi,  dword ptr [dword ptr [rip + exit_failure]]
	call	_exit
	nop	dword ptr [rax]
	nop	dword ptr [rax + rax]
.label_15:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_21
	mov	edx, 5
	call	dcgettext
	mov	r14, rax
	mov	rbx,  qword ptr [word ptr [rip + file_name]]
	call	__errno_location
	test	rbx, rbx
	mov	ebp, dword ptr [rax]
	jne	.label_16
	xor	edi, edi
	mov	edx, OFFSET FLAT:label_17
	xor	eax, eax
	mov	esi, ebp
	mov	rcx, r14
	call	error
	mov	edi,  dword ptr [dword ptr [rip + exit_failure]]
	call	_exit
	.section	.text
	.align	32
	#Procedure 0x401b80
	.globl x2realloc
	.type x2realloc, @function
x2realloc:

	mov	edx, 1
	jmp	x2nrealloc
	.section	.text
	.align	32
	#Procedure 0x401b8a
	.globl sub_401b8a
	.type sub_401b8a, @function
sub_401b8a:

	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x401b90

	.globl bkm_scale
	.type bkm_scale, @function
bkm_scale:
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
	#Procedure 0x401bbd
	.globl sub_401bbd
	.type sub_401bbd, @function
sub_401bbd:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x401bc0

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
	jne	.label_22
	mov	edi, OFFSET FLAT:label_25
	call	getenv
	mov	rdi, rax
	test	rdi, rdi
	jne	.label_22
	mov	edi, OFFSET FLAT:label_29
	call	getenv
	mov	rdi, rax
	test	rdi, rdi
	je	.label_32
.label_22:
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
	js	.label_30
	cdqe	
	or	ebp,  dword ptr [dword ptr [+ (rax * 4) + block_size_opts]]
	mov	qword ptr [r15], 1
.label_24:
	mov	dword ptr [r14], ebp
	xor	eax, eax
	jmp	.label_33
.label_23:
	mov	al, byte ptr [rbx]
	add	al, 0xd0
	cmp	al, 0xa
	jb	.label_24
	mov	rax, qword ptr [rsp]
	nop	dword ptr [rax]
.label_27:
	cmp	rax, rbx
	je	.label_26
	movzx	ecx, byte ptr [rbx + 1]
	inc	rbx
	add	cl, 0xd0
	cmp	cl, 0xa
	jae	.label_27
	jmp	.label_24
.label_30:
	lea	rsi, [rsp]
	xor	edx, edx
	mov	r8d, OFFSET FLAT:label_31
	mov	rdi, rbx
	mov	rcx, r15
	call	xstrtoumax
	test	eax, eax
	je	.label_23
	mov	dword ptr [r14], 0
.label_33:
	add	rsp, 8
	pop	rbx
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_32:
	call	default_block_size
	mov	qword ptr [r15], rax
	xor	ebp, ebp
	jmp	.label_24
.label_26:
	mov	ecx, ebp
	or	ecx, 0x80
	or	ebp, 0x180
	cmp	byte ptr [rax - 1], 0x42
	cmove	ecx, ebp
	jne	.label_28
	cmp	byte ptr [rax - 2], 0x69
	jne	.label_24
.label_28:
	or	ecx, 0x20
	mov	ebp, ecx
	jmp	.label_24
	.section	.text
	.align	32
	#Procedure 0x401ccd
	.globl sub_401ccd
	.type sub_401ccd, @function
sub_401ccd:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x401cd0
	.globl quotearg_colon_mem
	.type quotearg_colon_mem, @function
quotearg_colon_mem:

	mov	edx, 0x3a
	jmp	quotearg_char_mem
	.section	.text
	.align	32
	#Procedure 0x401cda
	.globl sub_401cda
	.type sub_401cda, @function
sub_401cda:

	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x401ce0
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
	jne	.label_34
	call	default_block_size
	mov	qword ptr [rbx], rax
	mov	eax, 4
.label_34:
	pop	rbx
	ret	
	.section	.text
	.align	32
	#Procedure 0x401d07
	.globl sub_401d07
	.type sub_401d07, @function
sub_401d07:

	nop	word ptr [rax + rax]
.label_37:
	xor	eax, eax
	cmp	cl, bpl
	jne	.label_35
.label_36:
	mov	eax, 1
	test	bpl, bpl
	je	.label_35
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
.label_35:
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
	#Procedure 0x401d58
	.globl sub_401d58
	.type sub_401d58, @function
sub_401d58:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x401d5b

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
	je	.label_37
	and	ecx, 0xffffffdf
	xor	eax, eax
	cmp	ecx, ebp
	je	.label_36
	jmp	.label_35
	.section	.text
	.align	32
	#Procedure 0x401d90
	.globl c_islower
	.type c_islower, @function
c_islower:

	add	edi, -0x61
	cmp	edi, 0x1a
	setb	al
	ret	
	.section	.text
	.align	32
	#Procedure 0x401d9a
	.globl sub_401d9a
	.type sub_401d9a, @function
sub_401d9a:

	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x401da0
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
	#Procedure 0x401daf
	.globl sub_401daf
	.type sub_401daf, @function
sub_401daf:

	nop	
	.section	.text
	.align	32
	#Procedure 0x401db0
	.globl close_stdout_set_ignore_EPIPE
	.type close_stdout_set_ignore_EPIPE, @function
close_stdout_set_ignore_EPIPE:

	mov	byte ptr [byte ptr [rip + ignore_EPIPE]],  dil
	ret	
	.section	.text
	.align	32
	#Procedure 0x401db8
	.globl sub_401db8
	.type sub_401db8, @function
sub_401db8:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x401dc0
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
	#Procedure 0x401dd9
	.globl sub_401dd9
	.type sub_401dd9, @function
sub_401dd9:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x401de0

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
	jne	.label_38
	mov	rax, qword ptr [rbx + 0x28]
	cmp	rax, qword ptr [rbx + 0x20]
	jne	.label_38
	cmp	qword ptr [rbx + 0x48], 0
	je	.label_39
.label_38:
	mov	rdi, rbx
	mov	rsi, rbp
	mov	edx, r14d
	pop	rbx
	pop	r14
	pop	rbp
	jmp	fseeko
.label_39:
	mov	rdi, rbx
	call	fileno
	mov	edi, eax
	mov	rsi, rbp
	mov	edx, r14d
	call	lseek
	mov	rcx, rax
	mov	eax, 0xffffffff
	cmp	rcx, -1
	je	.label_40
	and	byte ptr [rbx], 0xef
	mov	qword ptr [rbx + 0x90], rcx
	xor	eax, eax
.label_40:
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x401e4e
	.globl sub_401e4e
	.type sub_401e4e, @function
sub_401e4e:

	nop	
.label_43:
	xor	eax, eax
	jmp	.label_41
	.section	.text
	.align	32
	#Procedure 0x401e54
	.globl sub_401e54
	.type sub_401e54, @function
sub_401e54:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x401e5e
	.globl c_ispunct
	.type c_ispunct, @function
c_ispunct:

	add	edi, -0x21
	cmp	edi, 0x5d
	ja	.label_43
	mov	al, 1
	jmp	qword ptr [word ptr [+ (rdi * 8) + label_42]]
.label_41:
	ret	
	.section	.text
	.align	32
	#Procedure 0x401e70
	.globl c_isascii
	.type c_isascii, @function
c_isascii:

	cmp	edi, 0x80
	setb	al
	ret	
	.section	.text
	.align	32
	#Procedure 0x401e7a
	.globl sub_401e7a
	.type sub_401e7a, @function
sub_401e7a:

	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x401e80
	.globl c_isdigit
	.type c_isdigit, @function
c_isdigit:

	add	edi, -0x30
	cmp	edi, 0xa
	setb	al
	ret	
	.section	.text
	.align	32
	#Procedure 0x401e8a
	.globl sub_401e8a
	.type sub_401e8a, @function
sub_401e8a:

	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x401e90

	.globl quote_n_mem
	.type quote_n_mem, @function
quote_n_mem:
	mov	ecx, OFFSET FLAT:quote_quoting_options
	jmp	quotearg_n_options
	.section	.text
	.align	32
	#Procedure 0x401e9a
	.globl sub_401e9a
	.type sub_401e9a, @function
sub_401e9a:

	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x401ea0
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
	#Procedure 0x401eb0

	.globl quote_n
	.type quote_n, @function
quote_n:
	mov	rdx, -1
	jmp	quote_n_mem
	.section	.text
	.align	32
	#Procedure 0x401eb9
	.globl sub_401eb9
	.type sub_401eb9, @function
sub_401eb9:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x401ec0

	.globl quote
	.type quote, @function
quote:
	mov	rax, rdi
	xor	edi, edi
	mov	rsi, rax
	jmp	quote_n
	.section	.text
	.align	32
	#Procedure 0x401eca
	.globl sub_401eca
	.type sub_401eca, @function
sub_401eca:

	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x401ed0

	.globl xset_binary_mode
	.type xset_binary_mode, @function
xset_binary_mode:
	jmp	set_binary_mode
	.section	.text
	.align	32
	#Procedure 0x401ed5
	.globl sub_401ed5
	.type sub_401ed5, @function
sub_401ed5:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x401ee0
	.globl xnrealloc
	.type xnrealloc, @function
xnrealloc:

	mov	rcx, rdx
	movabs	rax, 0x7fffffffffffffff
	xor	edx, edx
	div	rcx
	cmp	rax, rsi
	jb	.label_44
	imul	rcx, rsi
	mov	rsi, rcx
	jmp	xrealloc
.label_44:
	push	rax
	call	xalloc_die
	.section	.text
	.align	32
	#Procedure 0x401f06
	.globl sub_401f06
	.type sub_401f06, @function
sub_401f06:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x401f10

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
.label_45:
	mov	rsi, rbx
	call	realloc
	test	rbx, rbx
	je	.label_47
	test	rax, rax
	je	.label_46
.label_47:
	pop	rbx
	ret	
.label_46:
	call	xalloc_die
	.section	.text
	.align	32
	#Procedure 0x401f40

	.globl emit_ancillary_info
	.type emit_ancillary_info, @function
emit_ancillary_info:
	push	r14
	push	rbx
	push	rax
	mov	ebx, OFFSET FLAT:emit_ancillary_info.infomap
	mov	esi, OFFSET FLAT:label_48
	nop	
.label_61:
	mov	edi, OFFSET FLAT:label_53
	call	strcmp
	test	eax, eax
	je	.label_59
	mov	rsi, qword ptr [rbx + 0x10]
	add	rbx, 0x10
	test	rsi, rsi
	jne	.label_61
.label_59:
	mov	rax, qword ptr [rbx + 8]
	test	rax, rax
	mov	ebx, OFFSET FLAT:label_53
	cmovne	rbx, rax
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_54
	mov	edx, 5
	call	dcgettext
	mov	rsi, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:label_51
	mov	ecx, OFFSET FLAT:label_52
	xor	eax, eax
	call	__printf_chk
	mov	edi, 5
	xor	esi, esi
	call	setlocale
	test	rax, rax
	je	.label_50
	mov	esi, OFFSET FLAT:label_58
	mov	edx, 3
	mov	rdi, rax
	call	strncmp
	test	eax, eax
	je	.label_50
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_49
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	call	fputs_unlocked
.label_50:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_55
	mov	edx, 5
	call	dcgettext
	mov	rsi, rax
	mov	r14d, OFFSET FLAT:label_53
	mov	edi, 1
	mov	edx, OFFSET FLAT:label_52
	mov	ecx, OFFSET FLAT:label_53
	xor	eax, eax
	call	__printf_chk
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_60
	mov	edx, 5
	call	dcgettext
	mov	rdx, rax
	cmp	rbx, r14
	mov	eax, OFFSET FLAT:label_56
	mov	ecx, OFFSET FLAT:label_57
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
	#Procedure 0x40205a
	.globl sub_40205a
	.type sub_40205a, @function
sub_40205a:

	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x402060

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
.label_127:
	mov	r11, rbp
	xor	r14d, r14d
	mov	ecx, r15d
	cmp	r15d, 0xa
	ja	.label_132
	mov	edi, 7
	mov	r13b, 1
	xor	esi, esi
	mov	r8, qword ptr [rsp + 0x30]
	jmp	qword ptr [word ptr [+ (rcx * 8) + label_137]]
.label_448:
	mov	r14d, r10d
	mov	edi, OFFSET FLAT:label_141
	mov	esi, r15d
	mov	rbx, r11
	mov	ebp, r9d
	call	gettext_quote
	mov	qword ptr [rsp + 0x78], rax
	mov	edi, OFFSET FLAT:label_76
	mov	esi, r15d
	call	gettext_quote
	mov	r9d, ebp
	mov	r10d, r14d
	mov	r11, rbx
	mov	qword ptr [rsp + 0x70], rax
.label_449:
	mov	dword ptr [rsp + 0x48], r9d
	mov	byte ptr [rsp + 0x17], r10b
	test	r12b, 1
	mov	r14d, 0
	mov	rcx, qword ptr [rsp + 0x78]
	jne	.label_153
	mov	al, byte ptr [rcx]
	test	al, al
	mov	r14d, 0
	je	.label_153
	xor	r14d, r14d
.label_162:
	cmp	r14, r11
	jae	.label_159
	mov	rdx, qword ptr [rsp + 8]
	mov	byte ptr [rdx + r14], al
.label_159:
	movzx	eax, byte ptr [rcx + r14 + 1]
	inc	r14
	test	al, al
	jne	.label_162
.label_153:
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
	jmp	.label_77
.label_441:
	xor	edi, edi
	xor	r14d, r14d
	mov	r13d, eax
	xor	esi, esi
	jmp	.label_77
.label_444:
	mov	al, 1
.label_442:
	mov	r12b, 1
.label_445:
	test	r12b, 1
	mov	cl, 1
	je	.label_175
	mov	ecx, eax
.label_175:
	mov	al, cl
.label_443:
	test	r12b, 1
	jne	.label_64
	test	r11, r11
	je	.label_67
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx], 0x27
.label_67:
	mov	r14d, 1
	jmp	.label_72
.label_64:
	xor	r14d, r14d
.label_72:
	mov	ecx, OFFSET FLAT:label_76
	mov	qword ptr [rsp + 0x40], rcx
	mov	ecx, 1
	mov	qword ptr [rsp + 0x38], rcx
	mov	r13d, eax
	mov	sil, r12b
	mov	edi, 2
	jmp	.label_77
.label_446:
	test	r12b, 1
	jne	.label_85
	test	r11, r11
	je	.label_87
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax], 0x22
.label_87:
	mov	r14d, 1
	jmp	.label_148
.label_447:
	mov	r13b, 1
	mov	edi, 5
	xor	r14d, r14d
	mov	eax, OFFSET FLAT:label_95
	mov	qword ptr [rsp + 0x40], rax
	mov	eax, 1
	mov	qword ptr [rsp + 0x38], rax
	mov	sil, 1
	jmp	.label_77
.label_85:
	xor	r14d, r14d
.label_148:
	mov	eax, OFFSET FLAT:label_95
	mov	qword ptr [rsp + 0x40], rax
	mov	eax, 1
	mov	qword ptr [rsp + 0x38], rax
	mov	r13b, 1
	mov	sil, r12b
	mov	edi, 5
	nop	word ptr cs:[rax + rax]
.label_77:
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
	jmp	.label_75
	.section	.text
	.align	32
	#Procedure 0x40233c
	.globl sub_40233c
	.type sub_40233c, @function
sub_40233c:

	nop	dword ptr [rax]
.label_69:
	inc	rsi
.label_75:
	cmp	rbp, -1
	je	.label_145
	cmp	rsi, rbp
	jne	.label_147
	jmp	.label_149
	.section	.text
	.align	32
	#Procedure 0x402353
	.globl sub_402353
	.type sub_402353, @function
sub_402353:

	nop	word ptr cs:[rax + rax]
.label_145:
	cmp	byte ptr [rdi + rsi], 0
	je	.label_149
.label_147:
	cmp	byte ptr [rsp + 0x2f], 0
	je	.label_155
	mov	rax, qword ptr [rsp + 0x38]
	lea	rbx, [rsi + rax]
	cmp	rax, 2
	jb	.label_129
	cmp	rbp, -1
	jne	.label_129
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
.label_129:
	cmp	rbx, rbp
	jbe	.label_164
.label_155:
	xor	r8d, r8d
.label_74:
	movzx	r15d, byte ptr [rdi + rsi]
	cmp	r15, 0x7e
	ja	.label_166
	xor	edx, edx
	mov	r13b, 1
	mov	cl, 0x6e
	mov	bl, 0x61
	xor	eax, eax
	jmp	qword ptr [word ptr [+ (r15 * 8) + label_170]]
.label_471:
	test	rsi, rsi
	jne	.label_73
	jmp	.label_102
	.section	.text
	.align	32
	#Procedure 0x4023ee
	.globl sub_4023ee
	.type sub_4023ee, @function
sub_4023ee:

	nop	
.label_164:
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
	jne	.label_70
	cmp	byte ptr [rsp + 7], 0
	mov	rdi, qword ptr [rsp + 0x30]
	mov	r11, rbx
	mov	r10d, r15d
	mov	rax, qword ptr [rsp + 0x68]
	mov	r9d, ebp
	mov	rsi, r12
	mov	r12, rax
	mov	rbp, qword ptr [rsp + 0x20]
	je	.label_74
	jmp	.label_86
.label_70:
	mov	rdi, qword ptr [rsp + 0x30]
	mov	r11, rbx
	mov	r10d, r15d
	mov	rax, qword ptr [rsp + 0x68]
	mov	r9d, ebp
	mov	rsi, r12
	mov	r12, rax
	mov	rbp, qword ptr [rsp + 0x20]
	jmp	.label_74
.label_475:
	xor	eax, eax
	cmp	rbp, -1
	je	.label_97
	test	rsi, rsi
	jne	.label_98
	cmp	rbp, 1
	je	.label_102
	xor	r13d, r13d
	jmp	.label_63
.label_464:
	cmp	byte ptr [rsp + 0x1e], 0
	je	.label_106
	cmp	byte ptr [rsp + 7], 0
	jne	.label_80
	cmp	r12d, 2
	jne	.label_108
	mov	eax, r9d
	and	al, 1
	jne	.label_108
	cmp	r14, r11
	jae	.label_109
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], 0x27
.label_109:
	lea	rax, [r14 + 1]
	cmp	rax, r11
	jae	.label_114
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + rax], 0x24
.label_114:
	lea	rax, [r14 + 2]
	cmp	rax, r11
	jae	.label_119
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + rax], 0x27
.label_119:
	add	r14, 3
	mov	r9b, 1
.label_108:
	mov	rcx, r14
	cmp	rcx, r11
	jae	.label_126
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + rcx], 0x5c
.label_126:
	lea	r14, [rcx + 1]
	mov	al, 1
	mov	r15b, 0x30
	cmp	r12d, 2
	je	.label_130
	lea	rdx, [rsi + 1]
	cmp	rdx, rbp
	jae	.label_130
	mov	dl, byte ptr [rdi + rdx]
	add	dl, 0xd0
	cmp	dl, 9
	ja	.label_130
	cmp	r14, r11
	jae	.label_142
	mov	rdx, qword ptr [rsp + 8]
	mov	byte ptr [rdx + r14], 0x30
.label_142:
	lea	rdx, [rcx + 2]
	cmp	rdx, r11
	jae	.label_157
	mov	rbx, qword ptr [rsp + 8]
	mov	byte ptr [rbx + rdx], 0x30
.label_157:
	add	rcx, 3
	xor	r13d, r13d
	mov	r14, rcx
	jmp	.label_63
.label_465:
	mov	bl, 0x62
	jmp	.label_151
.label_466:
	mov	cl, 0x74
	jmp	.label_154
.label_467:
	mov	bl, 0x76
	jmp	.label_151
.label_468:
	mov	bl, 0x66
	jmp	.label_151
.label_469:
	mov	cl, 0x72
	jmp	.label_154
.label_472:
	mov	r15b, 0x27
	mov	al, 1
	mov	qword ptr [rsp + 0xa0], rax
	cmp	r12d, 2
	jne	.label_158
	cmp	byte ptr [rsp + 7], 0
	jne	.label_80
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
	jae	.label_163
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], 0x27
.label_163:
	lea	rax, [r14 + 1]
	cmp	rax, r11
	jae	.label_172
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + rax], 0x5c
.label_172:
	lea	rax, [r14 + 2]
	cmp	rax, r11
	jae	.label_173
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + rax], 0x27
.label_173:
	add	r14, 3
	xor	r9d, r9d
.label_158:
	xor	eax, eax
	mov	r13b, 1
	jmp	.label_63
.label_473:
	mov	r15b, 0x3f
	cmp	r12d, 5
	je	.label_68
	cmp	r12d, 2
	jne	.label_73
	cmp	byte ptr [rsp + 7], 0
	je	.label_73
	jmp	.label_80
.label_474:
	cmp	r12d, 2
	jne	.label_82
	cmp	byte ptr [rsp + 7], 0
	jne	.label_80
	mov	r15b, 0x5c
	xor	eax, eax
	xor	r13d, r13d
	jmp	.label_152
.label_166:
	mov	dword ptr [rsp + 0x4c], r8d
	mov	dword ptr [rsp + 0x48], r9d
	mov	byte ptr [rsp + 0x17], r10b
	mov	qword ptr [rsp + 0x98], r11
	cmp	qword ptr [rsp + 0xb0], 1
	jne	.label_90
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
.label_91:
	and	r13b, 1
	mov	r8d, r13d
	or	r8b, byte ptr [rsp + 0x2b]
	mov	qword ptr [rsp + 0x58], r12
	cmp	r12, 1
	mov	r11, qword ptr [rsp + 0x98]
	mov	r10b, byte ptr [rsp + 0x17]
	mov	r12, qword ptr [rsp + 0x68]
	mov	r9d, dword ptr [rsp + 0x48]
	ja	.label_107
	test	r8b, r8b
	je	.label_107
	xor	eax, eax
	mov	rbp, qword ptr [rsp + 0x20]
	mov	r8d, dword ptr [rsp + 0x4c]
	jmp	.label_63
.label_97:
	test	rsi, rsi
	jne	.label_128
	mov	cl, byte ptr [rdi + 1]
	test	cl, cl
	jne	.label_128
.label_102:
	mov	dl, 1
.label_470:
	cmp	byte ptr [rsp + 0x1f], 0
	je	.label_80
	xor	eax, eax
	mov	r13b, dl
	nop	word ptr [rax + rax]
.label_63:
	cmp	byte ptr [rsp + 0x2e], 0
	je	.label_138
	cmp	qword ptr [rsp + 0xf0], 0
	jne	.label_139
	jmp	.label_143
	.section	.text
	.align	32
	#Procedure 0x402734
	.globl sub_402734
	.type sub_402734, @function
sub_402734:

	nop	word ptr cs:[rax + rax]
.label_138:
	cmp	byte ptr [rsp + 0x2d], 0
	je	.label_143
.label_139:
	mov	ebx, r8d
	mov	r8, rsi
	mov	ecx, r15d
	shr	cl, 5
	movzx	edx, cl
	mov	esi, 1
	mov	ecx, r15d
	shl	esi, cl
	test	bl, bl
	jne	.label_146
	mov	rcx, qword ptr [rsp + 0xf0]
	and	esi, dword ptr [rcx + rdx*4]
	mov	ebx, r15d
	mov	rsi, r8
	je	.label_152
	jmp	.label_150
	.section	.text
	.align	32
	#Procedure 0x40277d
	.globl sub_40277d
	.type sub_40277d, @function
sub_40277d:

	nop	dword ptr [rax]
.label_143:
	test	r8b, r8b
	mov	ebx, r15d
	jne	.label_150
	jmp	.label_152
.label_146:
	mov	ebx, r15d
	mov	rsi, r8
	jmp	.label_150
.label_106:
	cmp	dword ptr [rsp + 0x90], 0
	jne	.label_69
	xor	r15d, r15d
	jmp	.label_73
.label_82:
	mov	cl, 0x5c
	cmp	byte ptr [rsp + 0x2a], 0
	je	.label_154
	xor	eax, eax
	mov	r15b, 0x5c
	xor	r13d, r13d
	jmp	.label_152
.label_154:
	cmp	byte ptr [rsp + 0x1f], 0
	mov	ebx, ecx
	je	.label_80
.label_151:
	xor	eax, eax
	cmp	byte ptr [rsp + 0x1e], 0
	mov	r13d, 0
	je	.label_63
	nop	word ptr cs:[rax + rax]
.label_150:
	cmp	byte ptr [rsp + 7], 0
	jne	.label_80
	cmp	r12d, 2
	jne	.label_65
	mov	eax, r9d
	and	al, 1
	jne	.label_65
	cmp	r14, r11
	jae	.label_66
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], 0x27
.label_66:
	lea	rax, [r14 + 1]
	cmp	rax, r11
	jae	.label_103
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + rax], 0x24
.label_103:
	lea	rax, [r14 + 2]
	cmp	rax, r11
	jae	.label_79
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + rax], 0x27
.label_79:
	add	r14, 3
	mov	r9b, 1
.label_65:
	cmp	r14, r11
	jae	.label_83
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], 0x5c
.label_83:
	inc	r14
	jmp	.label_88
.label_90:
	mov	qword ptr [rsp + 0x80], 0
	cmp	rbp, -1
	jne	.label_92
	mov	rbx, rsi
	call	strlen
	mov	rsi, rbx
	mov	rdi, qword ptr [rsp + 0x30]
	mov	rbp, rax
.label_92:
	lea	rax, [rdi + rsi]
	mov	qword ptr [rsp + 0x58], rax
	mov	r13b, 1
	xor	r12d, r12d
	lea	rax, [rsp + 0x80]
	mov	rcx, rax
	mov	qword ptr [rsp + 0x20], rbp
	mov	qword ptr [rsp + 0x50], rsi
.label_144:
	lea	rbx, [r12 + rsi]
	lea	rsi, [rdi + rbx]
	mov	rdx, rbp
	sub	rdx, rbx
	lea	rdi, [rsp + 0x94]
	call	rpl_mbrtowc
	mov	rbp, rax
	test	rbp, rbp
	je	.label_111
	cmp	rbp, -1
	movabs	rsi, 0x20000002b
	je	.label_116
	cmp	rbp, -2
	je	.label_121
	cmp	rbp, 1
	seta	al
	and	al, byte ptr [rsp + 0x2c]
	cmp	al, 1
	mov	rdi, qword ptr [rsp + 0x30]
	mov	r11, qword ptr [rsp + 0x98]
	jne	.label_123
	mov	rax, qword ptr [rsp + 0x58]
	lea	rax, [rax + r12]
	mov	ecx, 1
	nop	word ptr cs:[rax + rax]
.label_81:
	movsx	edx, byte ptr [rax + rcx]
	add	edx, -0x5b
	cmp	edx, 0x21
	ja	.label_134
	bt	rsi, rdx
	jb	.label_86
.label_134:
	inc	rcx
	cmp	rcx, rbp
	jb	.label_81
.label_123:
	mov	edi, dword ptr [rsp + 0x94]
	call	iswprint
	test	eax, eax
	jne	.label_176
	xor	r13d, r13d
.label_176:
	lea	rdi, [rsp + 0x80]
	add	r12, rbp
	mov	rbx, rdi
	call	mbsinit
	mov	rcx, rbx
	test	eax, eax
	mov	rdi, qword ptr [rsp + 0x30]
	mov	rbp, qword ptr [rsp + 0x20]
	mov	rsi, qword ptr [rsp + 0x50]
	je	.label_144
	jmp	.label_91
.label_130:
	xor	r13d, r13d
	jmp	.label_63
.label_128:
	mov	rbp, -1
	xor	r13d, r13d
	jmp	.label_63
.label_68:
	cmp	dword ptr [rsp + 0x8c], 0
	je	.label_73
	lea	rcx, [rsi + 2]
	cmp	rcx, rbp
	jae	.label_73
	cmp	byte ptr [rdi + rsi + 1], 0x3f
	jne	.label_73
	movsx	edx, byte ptr [rdi + rcx]
	xor	eax, eax
	cmp	edx, 0x3e
	ja	.label_101
	mov	rbx, rsi
	movabs	rsi, 0x7000a38200000000
	bt	rsi, rdx
	jae	.label_120
	cmp	byte ptr [rsp + 7], 0
	jne	.label_80
	mov	r15b, byte ptr [rdi + rcx]
	cmp	r14, r11
	jae	.label_160
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], 0x3f
.label_160:
	lea	rax, [r14 + 1]
	cmp	rax, r11
	jae	.label_171
	mov	rdx, qword ptr [rsp + 8]
	mov	byte ptr [rdx + rax], 0x22
.label_171:
	lea	rax, [r14 + 2]
	cmp	rax, r11
	jae	.label_71
	mov	rdx, qword ptr [rsp + 8]
	mov	byte ptr [rdx + rax], 0x22
.label_71:
	lea	rax, [r14 + 3]
	cmp	rax, r11
	jae	.label_78
	mov	rdx, qword ptr [rsp + 8]
	mov	byte ptr [rdx + rax], 0x3f
.label_78:
	add	r14, 4
	xor	eax, eax
	mov	rsi, rcx
	xor	r13d, r13d
	jmp	.label_63
.label_73:
	xor	eax, eax
.label_98:
	xor	r13d, r13d
	jmp	.label_63
.label_107:
	add	qword ptr [rsp + 0x58], rsi
	xor	eax, eax
	mov	rbp, qword ptr [rsp + 0x20]
	jmp	.label_89
	.section	.text
	.align	32
	#Procedure 0x402a63
	.globl sub_402a63
	.type sub_402a63, @function
sub_402a63:

	nop	word ptr cs:[rax + rax]
.label_161:
	inc	r14
	mov	r15b, byte ptr [rdi + rsi + 1]
	mov	rsi, rdx
.label_89:
	test	r8b, r8b
	je	.label_99
	mov	ecx, dword ptr [rsp + 0x4c]
	test	cl, 1
	je	.label_100
	cmp	r14, r11
	jae	.label_104
	mov	rdx, qword ptr [rsp + 8]
	mov	byte ptr [rdx + r14], 0x5c
.label_104:
	inc	r14
	mov	dword ptr [rsp + 0x4c], 0
	jmp	.label_100
	.section	.text
	.align	32
	#Procedure 0x402aac
	.globl sub_402aac
	.type sub_402aac, @function
sub_402aac:

	nop	dword ptr [rax]
.label_99:
	cmp	byte ptr [rsp + 7], 0
	jne	.label_86
	cmp	r12d, 2
	jne	.label_110
	mov	eax, r9d
	and	al, 1
	jne	.label_110
	cmp	r14, r11
	jae	.label_115
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], 0x27
.label_115:
	lea	rax, [r14 + 1]
	cmp	rax, r11
	jae	.label_118
	mov	rdx, qword ptr [rsp + 8]
	mov	byte ptr [rdx + rax], 0x24
.label_118:
	lea	rax, [r14 + 2]
	cmp	rax, r11
	jae	.label_124
	mov	rdx, qword ptr [rsp + 8]
	mov	byte ptr [rdx + rax], 0x27
.label_124:
	add	r14, 3
	mov	r9b, 1
.label_110:
	cmp	r14, r11
	jae	.label_113
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], 0x5c
.label_113:
	lea	rax, [r14 + 1]
	cmp	rax, r11
	jae	.label_135
	mov	edx, r15d
	shr	dl, 6
	or	dl, 0x30
	mov	rbx, qword ptr [rsp + 8]
	mov	byte ptr [rbx + rax], dl
.label_135:
	lea	rax, [r14 + 2]
	cmp	rax, r11
	jae	.label_140
	mov	edx, r15d
	shr	dl, 3
	and	dl, 7
	or	dl, 0x30
	mov	rbx, qword ptr [rsp + 8]
	mov	byte ptr [rbx + rax], dl
.label_140:
	add	r14, 3
	and	r15b, 7
	or	r15b, 0x30
	mov	al, 1
.label_100:
	lea	rdx, [rsi + 1]
	cmp	qword ptr [rsp + 0x58], rdx
	jbe	.label_152
	test	r9b, 1
	je	.label_112
	mov	ebx, eax
	and	bl, 1
	jne	.label_112
	mov	rbx, rsi
	cmp	r14, r11
	jae	.label_156
	mov	rsi, qword ptr [rsp + 8]
	mov	byte ptr [rsi + r14], 0x27
.label_156:
	lea	rsi, [r14 + 1]
	cmp	rsi, r11
	jae	.label_96
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + rsi], 0x27
.label_96:
	add	r14, 2
	xor	r9d, r9d
	mov	rsi, rbx
.label_112:
	cmp	r14, r11
	jae	.label_161
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + r14], r15b
	jmp	.label_161
	.section	.text
	.align	32
	#Procedure 0x402bb3
	.globl sub_402bb3
	.type sub_402bb3, @function
sub_402bb3:

	nop	word ptr cs:[rax + rax]
.label_152:
	test	r9b, 1
	je	.label_167
	and	al, 1
	jne	.label_167
	cmp	r14, r11
	jae	.label_169
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], 0x27
.label_169:
	lea	rax, [r14 + 1]
	cmp	rax, r11
	jae	.label_117
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + rax], 0x27
.label_117:
	add	r14, 2
	xor	r9d, r9d
.label_167:
	mov	ebx, r15d
.label_88:
	cmp	r14, r11
	jae	.label_174
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], bl
.label_174:
	inc	r14
	shl	r13b, 7
	sar	r13b, 7
	and	r13b, r10b
	mov	r10d, r13d
	jmp	.label_69
.label_116:
	xor	r13d, r13d
.label_111:
	mov	rdi, qword ptr [rsp + 0x30]
	mov	rsi, qword ptr [rsp + 0x50]
	jmp	.label_91
.label_121:
	mov	rbp, qword ptr [rsp + 0x20]
	cmp	rbx, rbp
	mov	rdi, qword ptr [rsp + 0x30]
	jae	.label_131
	mov	rsi, qword ptr [rsp + 0x50]
.label_168:
	mov	rax, qword ptr [rsp + 0x58]
	cmp	byte ptr [rax + r12], 0
	je	.label_94
	lea	rax, [rsi + r12 + 1]
	inc	r12
	cmp	rax, rbp
	jb	.label_168
	xor	r13d, r13d
	jmp	.label_91
.label_131:
	xor	r13d, r13d
	mov	rsi, qword ptr [rsp + 0x50]
	jmp	.label_91
.label_94:
	xor	r13d, r13d
	jmp	.label_91
.label_101:
	xor	r13d, r13d
	jmp	.label_63
.label_120:
	xor	r13d, r13d
	mov	rsi, rbx
	jmp	.label_63
	.section	.text
	.align	32
	#Procedure 0x402c88
	.globl sub_402c88
	.type sub_402c88, @function
sub_402c88:

	nop	dword ptr [rax + rax]
.label_149:
	test	r14, r14
	setne	al
	cmp	r12d, 2
	setne	dl
	mov	rcx, qword ptr [rsp + 0xa8]
	and	cl, 1
	mov	qword ptr [rsp + 0x20], rbp
	je	.label_105
	or	dl, al
	je	.label_86
.label_105:
	test	cl, cl
	setne	al
	cmp	r12d, 2
	setne	dl
	mov	rsi, qword ptr [rsp + 0xa0]
	test	sil, 1
	mov	bl, byte ptr [rsp + 0x1d]
	mov	rsi, qword ptr [rsp + 0xa8]
	je	.label_93
	or	dl, al
	jne	.label_93
	test	r10b, 1
	jne	.label_122
	cmp	qword ptr [rsp + 0x60], 0
	je	.label_93
	test	r11, r11
	mov	r15d, r12d
	mov	al, bl
	mov	r12d, esi
	mov	rbp, qword ptr [rsp + 0x60]
	je	.label_127
.label_93:
	mov	rdx, qword ptr [rsp + 0x40]
	test	rdx, rdx
	je	.label_133
	test	cl, cl
	mov	rcx, qword ptr [rsp + 8]
	jne	.label_136
	mov	al, byte ptr [rdx]
	test	al, al
	je	.label_136
	inc	rdx
	nop	word ptr cs:[rax + rax]
.label_165:
	cmp	r14, r11
	jae	.label_125
	mov	byte ptr [rcx + r14], al
.label_125:
	inc	r14
	movzx	eax, byte ptr [rdx]
	inc	rdx
	test	al, al
	jne	.label_165
	jmp	.label_136
.label_80:
	mov	qword ptr [rsp + 0x20], rbp
.label_86:
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
.label_62:
	mov	r14, rax
.label_84:
	mov	rax, r14
	add	rsp, 0xb8
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_122:
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
	jmp	.label_62
.label_133:
	mov	rcx, qword ptr [rsp + 8]
.label_136:
	cmp	r14, r11
	jae	.label_84
	mov	byte ptr [rcx + r14], 0
	jmp	.label_84
.label_132:
	call	abort
	.section	.text
	.align	32
	#Procedure 0x402e1c
	.globl sub_402e1c
	.type sub_402e1c, @function
sub_402e1c:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x402e20

	.globl version_etc
	.type version_etc, @function
version_etc:
	sub	rsp, 0xd8
	test	al, al
	je	.label_177
	movaps	xmmword ptr [rsp + 0x50], xmm0
	movaps	xmmword ptr [rsp + 0x60], xmm1
	movaps	xmmword ptr [rsp + 0x70], xmm2
	movaps	xmmword ptr [rsp + 0x80], xmm3
	movaps	xmmword ptr [rsp + 0x90], xmm4
	movaps	xmmword ptr [rsp + 0xa0], xmm5
	movaps	xmmword ptr [rsp + 0xb0], xmm6
	movaps	xmmword ptr [rsp + 0xc0], xmm7
.label_177:
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
	#Procedure 0x402ea3
	.globl sub_402ea3
	.type sub_402ea3, @function
sub_402ea3:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x402eb0
	.globl c_isalpha
	.type c_isalpha, @function
c_isalpha:

	add	edi, -0x41
	cmp	edi, 0x39
	ja	.label_178
	movabs	rax, 0x3ffffff03ffffff
	mov	ecx, edi
	shr	rax, cl
	and	eax, 1
	ret	
.label_178:
	xor	eax, eax
	ret	
	.section	.text
	.align	32
	#Procedure 0x402ece
	.globl sub_402ece
	.type sub_402ece, @function
sub_402ece:

	nop	
	.section	.text
	.align	32
	#Procedure 0x402ed0

	.globl xcharalloc
	.type xcharalloc, @function
xcharalloc:
	jmp	xmalloc
	.section	.text
	.align	32
	#Procedure 0x402ed5
	.globl sub_402ed5
	.type sub_402ed5, @function
sub_402ed5:

	nop	word ptr cs:[rax + rax]
.label_180:
	cmp	edi, 0x7f
	je	.label_179
	xor	eax, eax
	jmp	.label_179
	.section	.text
	.align	32
	#Procedure 0x402ee9
	.globl sub_402ee9
	.type sub_402ee9, @function
sub_402ee9:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x402ef8
	.globl c_iscntrl
	.type c_iscntrl, @function
c_iscntrl:

	mov	al, 1
	cmp	edi, 0x20
	jae	.label_180
.label_179:
	ret	
	.section	.text
	.align	32
	#Procedure 0x402f00
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
	#Procedure 0x402f0f
	.globl sub_402f0f
	.type sub_402f0f, @function
sub_402f0f:

	nop	
	.section	.text
	.align	32
	#Procedure 0x402f10

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
	mov	esi, OFFSET FLAT:label_185
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stderr]]
	mov	rdi, rax
	call	fputs_unlocked
	mov	rbx, qword ptr [r15]
	test	rbx, rbx
	je	.label_183
	xor	r12d, r12d
	xor	ebp, ebp
	nop	word ptr cs:[rax + rax]
.label_187:
	test	rbp, rbp
	je	.label_181
	mov	rdi, r12
	mov	rsi, r13
	mov	rdx, r14
	call	memcmp
	test	eax, eax
	je	.label_186
.label_181:
	mov	rbx,  qword ptr [word ptr [rip + stderr]]
	mov	rdi, qword ptr [r15 + rbp*8]
	call	quote
	mov	rcx, rax
	mov	esi, 1
	mov	edx, OFFSET FLAT:label_184
	xor	eax, eax
	mov	rdi, rbx
	call	__fprintf_chk
	mov	r12, r13
	jmp	.label_188
	.section	.text
	.align	32
	#Procedure 0x402fa3
	.globl sub_402fa3
	.type sub_402fa3, @function
sub_402fa3:

	nop	word ptr cs:[rax + rax]
.label_186:
	mov	rax,  qword ptr [word ptr [rip + stderr]]
	mov	qword ptr [rsp], rax
	mov	rdi, rbx
	call	quote
	mov	rcx, rax
	mov	esi, 1
	mov	edx, OFFSET FLAT:label_182
	xor	eax, eax
	mov	rdi, qword ptr [rsp]
	call	__fprintf_chk
.label_188:
	mov	rbx, qword ptr [r15 + rbp*8 + 8]
	inc	rbp
	add	r13, r14
	test	rbx, rbx
	jne	.label_187
.label_183:
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
	#Procedure 0x40300e
	.globl sub_40300e
	.type sub_40300e, @function
sub_40300e:

	nop	
	.section	.text
	.align	32
	#Procedure 0x403010

	.globl quotearg_n
	.type quotearg_n, @function
quotearg_n:
	mov	rdx, -1
	mov	ecx, OFFSET FLAT:default_quoting_options
	jmp	quotearg_n_options
	.section	.text
	.align	32
	#Procedure 0x40301e
	.globl sub_40301e
	.type sub_40301e, @function
sub_40301e:

	nop	
	.section	.text
	.align	32
	#Procedure 0x403020

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
	js	.label_189
	mov	eax, dword ptr [r13]
	mov	rbp,  qword ptr [word ptr [rip + slotvec]]
	cmp	dword ptr [dword ptr [rip + nslots]],  r12d
	mov	qword ptr [rsp + 0x18], r13
	mov	dword ptr [rsp], eax
	mov	qword ptr [rsp + 0x10], rbx
	mov	qword ptr [rsp + 8], r15
	jg	.label_192
	cmp	r12d, 0x7fffffff
	je	.label_194
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
	jne	.label_190
	movups	xmm0,  xmmword ptr [word ptr [rip + slotvec0]]
	movups	xmmword ptr [r14], xmm0
.label_190:
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
.label_192:
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
	jbe	.label_195
	mov	rax, qword ptr [rsp + 0x18]
	mov	ebp, dword ptr [rsp]
	jmp	.label_191
.label_195:
	lea	rax, [rbp + r13]
	lea	r12, [rbp + r13 + 8]
	inc	r15
	mov	qword ptr [rax], r15
	mov	eax, OFFSET FLAT:slot0
	cmp	r14, rax
	mov	ebp, dword ptr [rsp]
	je	.label_193
	mov	rdi, r14
	call	free
.label_193:
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
.label_191:
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
.label_189:
	call	abort
.label_194:
	call	xalloc_die
	.section	.text
	.align	32
	#Procedure 0x4031dd
	.globl sub_4031dd
	.type sub_4031dd, @function
sub_4031dd:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x4031e0
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
	#Procedure 0x4031ef
	.globl sub_4031ef
	.type sub_4031ef, @function
sub_4031ef:

	nop	
	.section	.text
	.align	32
	#Procedure 0x4031f0
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
	#Procedure 0x403203
	.globl sub_403203
	.type sub_403203, @function
sub_403203:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x403210
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
	je	.label_196
	add	rbx, 8
	nop	word ptr cs:[rax + rax]
.label_197:
	mov	rdi, r12
	mov	rsi, r15
	mov	rdx, r14
	call	memcmp
	test	eax, eax
	mov	rax, r13
	je	.label_196
	mov	r13, qword ptr [rbx]
	add	rbx, 8
	add	r15, r14
	test	r13, r13
	mov	eax, 0
	jne	.label_197
.label_196:
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	ret	
	.section	.text
	.align	32
	#Procedure 0x403273
	.globl sub_403273
	.type sub_403273, @function
sub_403273:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x403280

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
	je	.label_198
	xor	ebp, ebp
	nop	word ptr [rax + rax]
.label_199:
	mov	rdi, r15
	mov	esi, r14d
	call	bkm_scale
	or	ebp, eax
	dec	ebx
	jne	.label_199
.label_198:
	mov	eax, ebp
	add	rsp, 8
	pop	rbx
	pop	r14
	pop	r15
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x4032be
	.globl sub_4032be
	.type sub_4032be, @function
sub_4032be:

	nop	
	.section	.text
	.align	32
	#Procedure 0x4032c0
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
	#Procedure 0x4032e7
	.globl sub_4032e7
	.type sub_4032e7, @function
sub_4032e7:

	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4032f0

	.globl hard_locale
	.type hard_locale, @function
hard_locale:
	push	rbx
	xor	esi, esi
	call	setlocale
	mov	bl, 1
	test	rax, rax
	je	.label_201
	cmp	byte ptr [rax], 0x43
	jne	.label_203
	cmp	byte ptr [rax + 1], 0
	je	.label_200
.label_203:
	mov	esi, OFFSET FLAT:label_202
	mov	rdi, rax
	call	strcmp
	test	eax, eax
	jne	.label_201
.label_200:
	xor	ebx, ebx
.label_201:
	mov	eax, ebx
	pop	rbx
	ret	
	.section	.text
	.align	32
	#Procedure 0x403321
	.globl sub_403321
	.type sub_403321, @function
sub_403321:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x403330

	.globl bsd_sum_file
	.type bsd_sum_file, @function
bsd_sum_file:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x298
	mov	r14d, esi
	mov	r15, rdi
	cmp	byte ptr [r15], 0x2d
	jne	.label_216
	cmp	byte ptr [r15 + 1], 0
	je	.label_206
.label_216:
	mov	esi, OFFSET FLAT:label_207
	mov	rdi, r15
	call	fopen
	mov	r12, rax
	test	r12, r12
	je	.label_212
	xor	r13d, r13d
	jmp	.label_214
.label_206:
	mov	r12,  qword ptr [word ptr [rip + stdin]]
	mov	byte ptr [byte ptr [rip + have_read_stdin]],  1
	xor	edi, edi
	xor	esi, esi
	call	xset_binary_mode
	mov	r13b, 1
.label_214:
	mov	esi, 2
	mov	rdi, r12
	call	fadvise
	mov	rdi, r12
	call	getc_unlocked
	xor	ebp, ebp
	cmp	eax, -1
	mov	ebx, 0
	je	.label_205
	xor	ebx, ebx
	xor	ebp, ebp
	nop	word ptr cs:[rax + rax]
.label_209:
	inc	rbp
	mov	ecx, ebx
	shr	ecx, 1
	shl	ebx, 0xf
	or	ebx, ecx
	add	ebx, eax
	movzx	ebx, bx
	mov	rdi, r12
	call	getc_unlocked
	cmp	eax, -1
	jne	.label_209
.label_205:
	mov	rdi, r12
	call	ferror_unlocked
	test	eax, eax
	je	.label_213
	call	__errno_location
	mov	ebp, dword ptr [rax]
	xor	ebx, ebx
	xor	edi, edi
	mov	esi, 3
	mov	rdx, r15
	call	quotearg_n_style_colon
	mov	rcx, rax
	xor	edi, edi
	mov	edx, OFFSET FLAT:label_17
	xor	eax, eax
	mov	esi, ebp
	call	error
	test	r13b, r13b
	jne	.label_208
	mov	rdi, r12
	call	rpl_fclose
	xor	ebx, ebx
	jmp	.label_208
.label_213:
	test	r13b, r13b
	jne	.label_215
	mov	rdi, r12
	call	rpl_fclose
	test	eax, eax
	je	.label_215
.label_212:
	call	__errno_location
	mov	ebp, dword ptr [rax]
	xor	ebx, ebx
	xor	edi, edi
	mov	esi, 3
	mov	rdx, r15
	call	quotearg_n_style_colon
	mov	rcx, rax
	xor	edi, edi
	mov	edx, OFFSET FLAT:label_17
	xor	eax, eax
	mov	esi, ebp
	call	error
	jmp	.label_208
.label_215:
	lea	rsi, [rsp]
	xor	edx, edx
	mov	ecx, 1
	mov	r8d, 0x400
	mov	rdi, rbp
	call	human_readable
	mov	rcx, rax
	mov	edi, 1
	mov	esi, OFFSET FLAT:label_204
	xor	eax, eax
	mov	edx, ebx
	call	__printf_chk
	cmp	r14d, 2
	jl	.label_210
	mov	edi, 1
	mov	esi, OFFSET FLAT:label_211
	xor	eax, eax
	mov	rdx, r15
	call	__printf_chk
.label_210:
	mov	edi, 0xa
	call	putchar_unlocked
	mov	bl, 1
.label_208:
	mov	eax, ebx
	add	rsp, 0x298
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x4034d4
	.globl sub_4034d4
	.type sub_4034d4, @function
sub_4034d4:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4034e0
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
	#Procedure 0x403552
	.globl sub_403552
	.type sub_403552, @function
sub_403552:

	nop	word ptr cs:[rax + rax]
.label_217:
	call	abort
	.section	.text
	.align	32
	#Procedure 0x403565
	.globl sub_403565
	.type sub_403565, @function
sub_403565:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x403573

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
	je	.label_217
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
	#Procedure 0x4035c0
	.globl c_isxdigit
	.type c_isxdigit, @function
c_isxdigit:

	add	edi, -0x30
	cmp	edi, 0x36
	ja	.label_218
	movabs	rax, 0x7e0000007e03ff
	mov	ecx, edi
	shr	rax, cl
	and	eax, 1
	ret	
.label_218:
	xor	eax, eax
	ret	
	.section	.text
	.align	32
	#Procedure 0x4035de
	.globl sub_4035de
	.type sub_4035de, @function
sub_4035de:

	nop	
	.section	.text
	.align	32
	#Procedure 0x4035e0

	.globl c_isupper
	.type c_isupper, @function
c_isupper:
	add	edi, -0x41
	cmp	edi, 0x1a
	setb	al
	ret	
	.section	.text
	.align	32
	#Procedure 0x4035ea
	.globl sub_4035ea
	.type sub_4035ea, @function
sub_4035ea:

	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4035f0

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
	jne	.label_220
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
	je	.label_219
	cmp	byte ptr [rbx], 0x60
	mov	ecx, OFFSET FLAT:label_224
	mov	eax, OFFSET FLAT:label_225
	jmp	.label_223
.label_219:
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
	je	.label_226
	cmp	byte ptr [rbx], 0x60
	mov	ecx, OFFSET FLAT:label_221
	mov	eax, OFFSET FLAT:label_222
	jmp	.label_223
.label_226:
	cmp	r14d, 9
	mov	ecx, OFFSET FLAT:label_95
	mov	eax, OFFSET FLAT:label_76
.label_223:
	cmove	rax, rcx
.label_220:
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x4036ad
	.globl sub_4036ad
	.type sub_4036ad, @function
sub_4036ad:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x4036b0

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
	#Procedure 0x4036dd
	.globl sub_4036dd
	.type sub_4036dd, @function
sub_4036dd:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x4036e0
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
	#Procedure 0x4036f3
	.globl sub_4036f3
	.type sub_4036f3, @function
sub_4036f3:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x403700
	.globl version_etc_ar
	.type version_etc_ar, @function
version_etc_ar:

	mov	r9, -1
	nop	word ptr [rax + rax]
.label_227:
	cmp	qword ptr [r8 + r9*8 + 8], 0
	lea	r9, [r9 + 1]
	jne	.label_227
	jmp	version_etc_arn
	.section	.text
	.align	32
	#Procedure 0x403721
	.globl sub_403721
	.type sub_403721, @function
sub_403721:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x403730

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
	#Procedure 0x403747
	.globl sub_403747
	.type sub_403747, @function
sub_403747:

	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x403750

	.globl rpl_fclose
	.type rpl_fclose, @function
rpl_fclose:
	push	rbp
	push	rbx
	push	rax
	mov	rbx, rdi
	call	fileno
	test	eax, eax
	js	.label_228
	mov	rdi, rbx
	call	__freading
	test	eax, eax
	je	.label_230
	mov	rdi, rbx
	call	fileno
	xor	esi, esi
	mov	edx, 1
	mov	edi, eax
	call	lseek
	cmp	rax, -1
	je	.label_228
.label_230:
	mov	rdi, rbx
	call	rpl_fflush
	test	eax, eax
	je	.label_228
	call	__errno_location
	mov	ebp, dword ptr [rax]
	mov	rdi, rbx
	call	fclose
	test	ebp, ebp
	je	.label_229
	call	__errno_location
	mov	dword ptr [rax], ebp
	mov	eax, 0xffffffff
.label_229:
	add	rsp, 8
	pop	rbx
	pop	rbp
	ret	
.label_228:
	mov	rdi, rbx
	add	rsp, 8
	pop	rbx
	pop	rbp
	jmp	fclose
	.section	.text
	.align	32
	#Procedure 0x4037c7
	.globl sub_4037c7
	.type sub_4037c7, @function
sub_4037c7:

	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4037d0

	.globl clear_ungetc_buffer_preserving_position
	.type clear_ungetc_buffer_preserving_position, @function
clear_ungetc_buffer_preserving_position:
	test	byte ptr [rdi + 1], 1
	jne	.label_231
	ret	
.label_231:
	xor	esi, esi
	mov	edx, 1
	jmp	rpl_fseeko
	.section	.text
	.align	32
	#Procedure 0x4037e3
	.globl sub_4037e3
	.type sub_4037e3, @function
sub_4037e3:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4037f0
	.globl quotearg_free
	.type quotearg_free, @function
quotearg_free:

	push	r15
	push	r14
	push	rbx
	mov	r14,  qword ptr [word ptr [rip + slotvec]]
	cmp	dword ptr [dword ptr [rip + nslots]],  2
	jl	.label_232
	lea	r15, [r14 + 0x18]
	mov	ebx, 1
	nop	
.label_235:
	mov	rdi, qword ptr [r15]
	call	free
	inc	rbx
	movsxd	rax,  dword ptr [dword ptr [rip + nslots]]
	add	r15, 0x10
	cmp	rbx, rax
	jl	.label_235
.label_232:
	mov	rdi, qword ptr [r14 + 8]
	mov	eax, OFFSET FLAT:slot0
	cmp	rdi, rax
	je	.label_236
	call	free
	mov	qword ptr [word ptr [rip + slotvec0]],  0x100
	mov	qword ptr [word ptr [rip + label_234]], OFFSET FLAT:slot0
.label_236:
	mov	eax, OFFSET FLAT:slotvec0
	cmp	r14, rax
	je	.label_233
	mov	rdi, r14
	call	free
	mov	qword ptr [word ptr [rip + slotvec]], OFFSET FLAT:slotvec0
.label_233:
	mov	dword ptr [dword ptr [rip + nslots]],  1
	pop	rbx
	pop	r14
	pop	r15
	ret	
	.section	.text
	.align	32
	#Procedure 0x403881
	.globl sub_403881
	.type sub_403881, @function
sub_403881:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x403890

	.globl set_custom_quoting
	.type set_custom_quoting, @function
set_custom_quoting:
	test	rdi, rdi
	mov	eax, OFFSET FLAT:default_quoting_options
	cmovne	rax, rdi
	mov	dword ptr [rax], 0xa
	test	rsi, rsi
	je	.label_237
	test	rdx, rdx
	je	.label_237
	mov	qword ptr [rax + 0x28], rsi
	mov	qword ptr [rax + 0x30], rdx
	ret	
.label_237:
	push	rax
	call	abort
	.section	.text
	.align	32
	#Procedure 0x4038bb
	.globl sub_4038bb
	.type sub_4038bb, @function
sub_4038bb:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4038c0

	.globl quotearg_n_custom
	.type quotearg_n_custom, @function
quotearg_n_custom:
	mov	r8, -1
	jmp	quotearg_n_custom_mem
	.section	.text
	.align	32
	#Procedure 0x4038c9
	.globl sub_4038c9
	.type sub_4038c9, @function
sub_4038c9:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x4038d0

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
	mov	rax,  qword ptr [word ptr [rip + label_238]]
	mov	qword ptr [rsp + 0x30], rax
	movups	xmm0,  xmmword ptr [word ptr [rip + label_239]]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0,  xmmword ptr [word ptr [rip + label_240]]
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
	#Procedure 0x403938
	.globl sub_403938
	.type sub_403938, @function
sub_403938:

	nop	dword ptr [rax + rax]
.label_241:
	call	xalloc_die
.label_243:
	test	rcx, rcx
	jne	.label_242
	mov	eax, 0x80
	xor	edx, edx
	div	r8
	xor	ecx, ecx
	cmp	r8, 0x80
	seta	cl
	add	rcx, rax
.label_242:
	movabs	rax, 0x7fffffffffffffff
	xor	edx, edx
	div	r8
	cmp	rax, rcx
	jb	.label_245
.label_244:
	mov	qword ptr [rsi], rcx
	imul	r8, rcx
	mov	rsi, r8
	pop	rax
	jmp	xrealloc
	.section	.text
	.align	32
	#Procedure 0x403987

	.globl x2nrealloc
	.type x2nrealloc, @function
x2nrealloc:
	push	rax
	mov	r8, rdx
	mov	rcx, qword ptr [rsi]
	test	rdi, rdi
	je	.label_243
	movabs	rax, 0x5555555555555554
	xor	edx, edx
	div	r8
	cmp	rax, rcx
	jbe	.label_241
	mov	rax, rcx
	shr	rax, 1
	lea	rcx, [rcx + rax + 1]
	jmp	.label_244
.label_245:
	call	xalloc_die
	.section	.text
	.align	32
	#Procedure 0x4039b9
	.globl sub_4039b9
	.type sub_4039b9, @function
sub_4039b9:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x4039c0

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
	je	.label_246
	cmp	r15, -2
	jb	.label_246
	xor	edi, edi
	call	hard_locale
	test	al, al
	jne	.label_246
	movzx	eax, byte ptr [r14]
	mov	dword ptr [rbx], eax
	mov	r15d, 1
.label_246:
	mov	rax, r15
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	ret	
	.section	.text
	.align	32
	#Procedure 0x403a16
	.globl sub_403a16
	.type sub_403a16, @function
sub_403a16:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x403a20

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
	je	.label_253
	mov	qword ptr [rsp + 8], -1
	xor	eax, eax
	mov	qword ptr [rsp + 0x10], rax
	mov	qword ptr [rsp + 0x18], r14
	xor	ebp, ebp
	nop	dword ptr [rax + rax]
.label_247:
	mov	rdi, r15
	mov	rsi, r12
	mov	rdx, rbx
	call	strncmp
	test	eax, eax
	jne	.label_252
	mov	rdi, r15
	call	strlen
	cmp	rax, rbx
	je	.label_249
	cmp	qword ptr [rsp + 8], -1
	je	.label_251
	mov	rax, qword ptr [rsp + 0x18]
	test	rax, rax
	je	.label_250
	mov	rdi, qword ptr [rsp + 8]
	imul	rdi, r13
	add	rdi, rax
	mov	rsi, r14
	mov	rdx, r13
	call	memcmp
	test	eax, eax
	je	.label_252
.label_250:
	mov	al, 1
	mov	qword ptr [rsp + 0x10], rax
	jmp	.label_252
.label_251:
	mov	qword ptr [rsp + 8], rbp
	nop	word ptr [rax + rax]
.label_252:
	mov	rax, qword ptr [rsp + 0x20]
	mov	r15, qword ptr [rax + rbp*8 + 8]
	inc	rbp
	add	r14, r13
	test	r15, r15
	jne	.label_247
	jmp	.label_248
.label_253:
	mov	qword ptr [rsp + 8], -1
	xor	eax, eax
	mov	qword ptr [rsp + 0x10], rax
.label_248:
	mov	rax, qword ptr [rsp + 0x10]
	test	al, 1
	mov	rbp, -2
	cmove	rbp, qword ptr [rsp + 8]
.label_249:
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
	#Procedure 0x403b1d
	.globl sub_403b1d
	.type sub_403b1d, @function
sub_403b1d:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x403b20

	.globl sysv_sum_file
	.type sysv_sum_file, @function
sysv_sum_file:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x22a8
	mov	ebx, esi
	mov	r15, rdi
	cmp	byte ptr [r15], 0x2d
	jne	.label_261
	cmp	byte ptr [r15 + 1], 0
	je	.label_263
.label_261:
	xor	r13d, r13d
	xor	esi, esi
	xor	eax, eax
	mov	rdi, r15
	call	open
	mov	r12d, eax
	cmp	r12d, -1
	jne	.label_258
	jmp	.label_260
.label_263:
	mov	byte ptr [byte ptr [rip + have_read_stdin]],  1
	xor	r12d, r12d
	xor	edi, edi
	xor	esi, esi
	call	xset_binary_mode
	mov	r13b, 1
.label_258:
	mov	dword ptr [rsp + 0xc], ebx
	xor	r14d, r14d
	lea	rbp, [rsp + 0x2a0]
	xor	ebx, ebx
	jmp	.label_264
	.section	.text
	.align	32
	#Procedure 0x403b89
	.globl sub_403b89
	.type sub_403b89, @function
sub_403b89:

	nop	dword ptr [rax]
.label_257:
	add	rbx, rax
.label_264:
	mov	edx, 0x2000
	mov	edi, r12d
	mov	rsi, rbp
	call	safe_read
	cmp	rax, -1
	je	.label_262
	test	rax, rax
	je	.label_265
	mov	rcx, rax
	mov	rdx, rbp
	nop	word ptr cs:[rax + rax]
.label_254:
	movzx	esi, byte ptr [rdx]
	add	r14d, esi
	inc	rdx
	dec	rcx
	jne	.label_254
	jmp	.label_257
.label_262:
	call	__errno_location
	mov	ebp, dword ptr [rax]
	xor	ebx, ebx
	xor	edi, edi
	mov	esi, 3
	mov	rdx, r15
	call	quotearg_n_style_colon
	mov	rcx, rax
	xor	edi, edi
	mov	edx, OFFSET FLAT:label_17
	xor	eax, eax
	mov	esi, ebp
	call	error
	test	r13b, r13b
	jne	.label_256
	mov	edi, r12d
	call	close
	xor	ebx, ebx
	jmp	.label_256
.label_265:
	test	r13b, r13b
	jne	.label_259
	mov	edi, r12d
	call	close
	test	eax, eax
	je	.label_259
.label_260:
	call	__errno_location
	mov	ebp, dword ptr [rax]
	xor	ebx, ebx
	xor	edi, edi
	mov	esi, 3
	mov	rdx, r15
	call	quotearg_n_style_colon
	mov	rcx, rax
	xor	edi, edi
	mov	edx, OFFSET FLAT:label_17
	xor	eax, eax
	mov	esi, ebp
	call	error
	jmp	.label_256
.label_259:
	movzx	ebp, r14w
	mov	eax, r14d
	shr	eax, 0x10
	add	ebp, eax
	add	eax, r14d
	movzx	eax, ax
	shr	ebp, 0x10
	add	ebp, eax
	lea	rsi, [rsp + 0x10]
	xor	edx, edx
	mov	ecx, 1
	mov	r8d, 0x200
	mov	rdi, rbx
	call	human_readable
	mov	rcx, rax
	mov	edi, 1
	mov	esi, OFFSET FLAT:label_255
	xor	eax, eax
	mov	edx, ebp
	call	__printf_chk
	cmp	dword ptr [rsp + 0xc], 0
	je	.label_266
	mov	edi, 1
	mov	esi, OFFSET FLAT:label_211
	xor	eax, eax
	mov	rdx, r15
	call	__printf_chk
.label_266:
	mov	edi, 0xa
	call	putchar_unlocked
	mov	bl, 1
.label_256:
	mov	eax, ebx
	add	rsp, 0x22a8
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x403cd3
	.globl sub_403cd3
	.type sub_403cd3, @function
sub_403cd3:

	nop	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x403ce0
	.globl __gl_setmode_check
	.type __gl_setmode_check, @function
__gl_setmode_check:

	xor	eax, eax
	ret	
	.section	.text
	.align	32
	#Procedure 0x403ce3
	.globl sub_403ce3
	.type sub_403ce3, @function
sub_403ce3:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x403cf0
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
	jns	.label_267
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
.label_267:
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
	#Procedure 0x403d58
	.globl sub_403d58
	.type sub_403d58, @function
sub_403d58:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x403d60

	.globl safe_read
	.type safe_read, @function
safe_read:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	push	rax
	mov	rbx, rdx
	mov	r14, rsi
	mov	r15d, edi
	mov	r12d, 0x7ff00000
	nop	word ptr [rax + rax]
.label_269:
	mov	edi, r15d
	mov	rsi, r14
	mov	rdx, rbx
	call	read
	mov	rbp, rax
	test	rbp, rbp
	jns	.label_268
	call	__errno_location
	mov	eax, dword ptr [rax]
	cmp	eax, 4
	je	.label_269
	cmp	eax, 0x16
	sete	cl
	cmp	rbx, 0x7ff00000
	seta	dl
	and	dl, cl
	mov	rcx, rbx
	cmovne	rcx, r12
	test	dl, dl
	cmovne	rbp, r13
	cmp	rbx, 0x7ff00001
	jb	.label_268
	cmp	eax, 0x16
	mov	rbx, rcx
	mov	r13, rbp
	je	.label_269
.label_268:
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
	#Procedure 0x403de7
	.globl sub_403de7
	.type sub_403de7, @function
sub_403de7:

	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x403df0

	.globl quotearg_n_mem
	.type quotearg_n_mem, @function
quotearg_n_mem:
	mov	ecx, OFFSET FLAT:default_quoting_options
	jmp	quotearg_n_options
	.section	.text
	.align	32
	#Procedure 0x403dfa
	.globl sub_403dfa
	.type sub_403dfa, @function
sub_403dfa:

	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x403e00
	.globl quotearg
	.type quotearg, @function
quotearg:

	mov	rax, rdi
	xor	edi, edi
	mov	rsi, rax
	jmp	quotearg_n
	.section	.text
	.align	32
	#Procedure 0x403e0d
	.globl sub_403e0d
	.type sub_403e0d, @function
sub_403e0d:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x403e10
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
	#Procedure 0x403e20

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
	#Procedure 0x403e59
	.globl sub_403e59
	.type sub_403e59, @function
sub_403e59:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x403e60
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
	#Procedure 0x403e71
	.globl sub_403e71
	.type sub_403e71, @function
sub_403e71:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x403e80
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
	#Procedure 0x403e94
	.globl sub_403e94
	.type sub_403e94, @function
sub_403e94:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x403ea0

	.globl fdadvise
	.type fdadvise, @function
fdadvise:
	jmp	posix_fadvise
	.section	.text
	.align	32
	#Procedure 0x403ea5
	.globl sub_403ea5
	.type sub_403ea5, @function
sub_403ea5:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x403eb0

	.globl fadvise
	.type fadvise, @function
fadvise:
	push	rbx
	mov	ebx, esi
	test	rdi, rdi
	je	.label_270
	call	fileno
	xor	esi, esi
	xor	edx, edx
	mov	edi, eax
	mov	ecx, ebx
	pop	rbx
	jmp	fdadvise
.label_270:
	pop	rbx
	ret	
	.section	.text
	.align	32
	#Procedure 0x403eca
	.globl sub_403eca
	.type sub_403eca, @function
sub_403eca:

	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x403ed0

	.globl main
	.type main, @function
main:
	push	rbp
	push	r15
	push	r14
	push	r12
	push	rbx
	sub	rsp, 0x10
	mov	r14, rsi
	mov	r15d, edi
	mov	rdi, qword ptr [r14]
	call	set_program_name
	mov	edi, 6
	mov	esi, OFFSET FLAT:label_57
	call	setlocale
	mov	edi, OFFSET FLAT:label_275
	mov	esi, OFFSET FLAT:label_287
	call	bindtextdomain
	mov	edi, OFFSET FLAT:label_275
	call	textdomain
	mov	edi, OFFSET FLAT:close_stdout
	call	atexit
	mov	rdi,  qword ptr [word ptr [rip + stdout]]
	xor	esi, esi
	mov	edx, 1
	xor	ecx, ecx
	call	setvbuf
	mov	byte ptr [byte ptr [rip + have_read_stdin]],  0
	mov	r12d, OFFSET FLAT:bsd_sum_file
	jmp	.label_283
.label_285:
	mov	r12d, OFFSET FLAT:sysv_sum_file
.label_283:
	mov	edx, OFFSET FLAT:label_274
	mov	ecx, OFFSET FLAT:longopts
	xor	r8d, r8d
	mov	edi, r15d
	mov	rsi, r14
	call	getopt_long
	cmp	eax, 0x71
	jle	.label_281
	cmp	eax, 0x72
	mov	r12d, OFFSET FLAT:bsd_sum_file
	je	.label_283
	cmp	eax, 0x73
	je	.label_285
	jmp	.label_273
.label_281:
	cmp	eax, -1
	jne	.label_286
	mov	ebp, r15d
	sub	ebp,  dword ptr [dword ptr [rip + optind]]
	jle	.label_271
	mov	eax,  dword ptr [dword ptr [rip + optind]]
	mov	bl, 1
	cmp	eax, r15d
	jge	.label_276
	mov	bl, 1
	nop	dword ptr [rax + rax]
.label_284:
	cdqe	
	mov	rdi, qword ptr [r14 + rax*8]
	mov	esi, ebp
	call	r12
	and	bl, al
	mov	eax,  dword ptr [dword ptr [rip + optind]]
	inc	eax
	mov	dword ptr [dword ptr [rip + optind]],  eax
	cmp	eax, r15d
	jl	.label_284
	jmp	.label_276
.label_271:
	mov	edi, OFFSET FLAT:label_272
	mov	esi, ebp
	call	r12
	mov	ebx, eax
.label_276:
	cmp	byte ptr [byte ptr [rip + have_read_stdin]],  1
	jne	.label_277
	mov	rdi,  qword ptr [word ptr [rip + stdin]]
	call	rpl_fclose
	cmp	eax, -1
	je	.label_280
.label_277:
	not	bl
	and	bl, 1
	movzx	eax, bl
	add	rsp, 0x10
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_286:
	cmp	eax, 0xffffff7d
	je	.label_288
	cmp	eax, 0xffffff7e
	jne	.label_273
	xor	edi, edi
	call	usage
.label_288:
	mov	rdi,  qword ptr [word ptr [rip + stdout]]
	mov	rcx,  qword ptr [word ptr [rip + Version]]
	mov	qword ptr [rsp], 0
	mov	esi, OFFSET FLAT:label_53
	mov	edx, OFFSET FLAT:label_51
	mov	r8d, OFFSET FLAT:label_278
	mov	r9d, OFFSET FLAT:label_279
	xor	eax, eax
	call	version_etc
	xor	edi, edi
	call	exit
.label_273:
	mov	edi, 1
	call	usage
.label_280:
	call	__errno_location
	mov	ebx, dword ptr [rax]
	xor	edi, edi
	mov	esi, 3
	mov	edx, OFFSET FLAT:label_272
	call	quotearg_n_style_colon
	mov	rcx, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:label_17
	xor	eax, eax
	mov	esi, ebx
	call	error
	nop	word ptr cs:[rax + rax]
.label_292:
	mov	rcx,  qword ptr [word ptr [rip + stderr]]
	mov	edi, OFFSET FLAT:label_282
	mov	esi, 0x37
	mov	edx, 1
	call	fwrite
	call	abort
	.section	.text
	.align	32
	#Procedure 0x4040b0
	.globl sub_4040b0
	.type sub_4040b0, @function
sub_4040b0:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4040bf

	.globl set_program_name
	.type set_program_name, @function
set_program_name:
	push	r14
	push	rbx
	push	rax
	mov	rbx, rdi
	test	rbx, rbx
	je	.label_292
	mov	esi, 0x2f
	mov	rdi, rbx
	call	strrchr
	test	rax, rax
	lea	r14, [rax + 1]
	cmove	r14, rbx
	mov	rax, r14
	sub	rax, rbx
	cmp	rax, 7
	jl	.label_290
	lea	rdi, [r14 - 7]
	mov	esi, OFFSET FLAT:label_293
	mov	edx, 7
	call	strncmp
	test	eax, eax
	jne	.label_290
	mov	esi, OFFSET FLAT:label_291
	mov	edx, 3
	mov	rdi, r14
	call	strncmp
	test	eax, eax
	jne	.label_289
	add	r14, 3
	mov	qword ptr [word ptr [rip + __progname]],  r14
.label_289:
	mov	rbx, r14
.label_290:
	mov	qword ptr [word ptr [rip + program_name]],  rbx
	mov	qword ptr [word ptr [rip + __progname_full]],  rbx
	add	rsp, 8
	pop	rbx
	pop	r14
	ret	
	.section	.text
	.align	32
	#Procedure 0x404140

	.globl locale_charset
	.type locale_charset, @function
locale_charset:
	push	rax
	mov	edi, 0xe
	call	rpl_nl_langinfo
	test	rax, rax
	mov	ecx, OFFSET FLAT:label_57
	cmovne	rcx, rax
	cmp	byte ptr [rcx], 0
	mov	eax, OFFSET FLAT:label_294
	cmovne	rax, rcx
	pop	rcx
	ret	
	.section	.text
	.align	32
	#Procedure 0x404165
	.globl sub_404165
	.type sub_404165, @function
sub_404165:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x404170
	.globl xnmalloc
	.type xnmalloc, @function
xnmalloc:

	movabs	rax, 0x7fffffffffffffff
	xor	edx, edx
	div	rsi
	cmp	rax, rdi
	jb	.label_295
	imul	rsi, rdi
	mov	rdi, rsi
	jmp	xmalloc
.label_295:
	push	rax
	call	xalloc_die
	.section	.text
	.align	32
	#Procedure 0x404193
	.globl sub_404193
	.type sub_404193, @function
sub_404193:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4041a0

	.globl xmalloc
	.type xmalloc, @function
xmalloc:
	push	rbx
	mov	rbx, rdi
	call	malloc
	test	rbx, rbx
	je	.label_296
	test	rax, rax
	je	.label_297
.label_296:
	pop	rbx
	ret	
.label_297:
	call	xalloc_die
	.section	.text
	.align	32
	#Procedure 0x4041ba
	.globl sub_4041ba
	.type sub_4041ba, @function
sub_4041ba:

	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4041c0
	.globl xset_binary_mode_error
	.type xset_binary_mode_error, @function
xset_binary_mode_error:

	ret	
	.section	.text
	.align	32
	#Procedure 0x4041c1
	.globl sub_4041c1
	.type sub_4041c1, @function
sub_4041c1:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4041d0

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
	jae	.label_310
	mov	qword ptr [rsp + 8], rcx
	call	__errno_location
	mov	r12, rax
	mov	dword ptr [r12], 0
	call	__ctype_b_loc
	mov	rcx, qword ptr [rax]
	mov	rdx, rbx
	nop	word ptr cs:[rax + rax]
.label_307:
	movzx	eax, byte ptr [rdx]
	inc	rdx
	test	byte ptr [rcx + rax*2 + 1], 0x20
	jne	.label_307
	test	rbp, rbp
	lea	rsi, [rsp + 0x10]
	cmovne	rsi, rbp
	mov	r15d, 4
	cmp	al, 0x2d
	je	.label_302
	mov	rdi, rbx
	mov	edx, r14d
	mov	r14, rsi
	call	strtoumax
	mov	rcx, r14
	mov	qword ptr [rsp], rax
	mov	rax, qword ptr [rcx]
	cmp	rax, rbx
	je	.label_311
	mov	eax, dword ptr [r12]
	xor	r12d, r12d
	test	eax, eax
	mov	rbp, r13
	je	.label_314
	cmp	eax, 0x22
	jne	.label_302
	mov	r12d, 1
.label_314:
	test	rbp, rbp
	jne	.label_299
	jmp	.label_300
.label_311:
	mov	rbp, r13
	test	rbp, rbp
	je	.label_302
	movsx	esi, byte ptr [rax]
	test	esi, esi
	je	.label_302
	mov	rdi, rbp
	call	strchr
	mov	rcx, r14
	test	rax, rax
	je	.label_302
	mov	qword ptr [rsp], 1
	xor	r12d, r12d
.label_299:
	mov	rax, qword ptr [rcx]
	movsx	ebx, byte ptr [rax]
	test	ebx, ebx
	je	.label_300
	mov	rdi, rbp
	mov	esi, ebx
	call	strchr
	test	rax, rax
	je	.label_312
	mov	r15d, 0x400
	mov	r13d, 1
	add	ebx, -0x45
	cmp	ebx, 0x2f
	ja	.label_313
	movabs	rax, 0x814400308945
	bt	rax, rbx
	jae	.label_313
	mov	esi, 0x30
	mov	rdi, rbp
	call	strchr
	mov	r13d, 1
	mov	rsi, r14
	test	rax, rax
	je	.label_303
	mov	rax, qword ptr [rsi]
	movsx	ecx, byte ptr [rax + 1]
	mov	r13d, 1
	cmp	ecx, 0x42
	je	.label_308
	cmp	ecx, 0x44
	je	.label_308
	cmp	ecx, 0x69
	jne	.label_303
	xor	ecx, ecx
	cmp	byte ptr [rax + 2], 0x42
	sete	cl
	lea	r13, [rcx + rcx + 1]
	jmp	.label_303
.label_308:
	mov	r15d, 0x3e8
	mov	r13d, 2
	jmp	.label_303
.label_313:
	mov	rsi, r14
.label_303:
	mov	rax, qword ptr [rsi]
	movsx	ecx, byte ptr [rax]
	add	ecx, -0x42
	cmp	ecx, 0x35
	ja	.label_312
	xor	eax, eax
	jmp	qword ptr [word ptr [+ (rcx * 8) + label_315]]
.label_453:
	lea	rdi, [rsp]
	mov	edx, 3
	jmp	.label_301
.label_312:
	mov	rax, qword ptr [rsp]
	mov	rcx, qword ptr [rsp + 8]
	mov	qword ptr [rcx], rax
	or	r12d, 2
	jmp	.label_298
.label_454:
	lea	rdi, [rsp]
	mov	edx, 1
	jmp	.label_301
.label_455:
	lea	rdi, [rsp]
	mov	edx, 2
	jmp	.label_301
.label_457:
	lea	rdi, [rsp]
	mov	edx, 4
	jmp	.label_301
.label_451:
	lea	rdi, [rsp]
	mov	esi, 0x400
	call	bkm_scale
	jmp	.label_309
.label_452:
	lea	rdi, [rsp]
	mov	edx, 6
	jmp	.label_301
.label_456:
	lea	rdi, [rsp]
	mov	edx, 5
	jmp	.label_301
.label_458:
	lea	rdi, [rsp]
	mov	edx, 8
	jmp	.label_301
.label_459:
	lea	rdi, [rsp]
	mov	edx, 7
.label_301:
	mov	esi, r15d
	call	bkm_scale_by_power
.label_309:
	mov	rsi, r14
.label_461:
	or	eax, r12d
	mov	rcx, qword ptr [rsi]
	lea	rdx, [rcx + r13]
	mov	qword ptr [rsi], rdx
	mov	r12d, eax
	or	r12d, 2
	cmp	byte ptr [rcx + r13], 0
	cmove	r12d, eax
.label_300:
	mov	rax, qword ptr [rsp]
	mov	rcx, qword ptr [rsp + 8]
	mov	qword ptr [rcx], rax
.label_298:
	mov	r15d, r12d
.label_302:
	mov	eax, r15d
	add	rsp, 0x18
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_460:
	lea	rdi, [rsp]
	mov	esi, 0x200
	call	bkm_scale
	jmp	.label_309
.label_462:
	lea	rdi, [rsp]
	mov	esi, 2
	call	bkm_scale
	jmp	.label_309
.label_310:
	mov	edi, OFFSET FLAT:label_304
	mov	esi, OFFSET FLAT:label_305
	mov	edx, 0x54
	mov	ecx, OFFSET FLAT:label_306
	call	__assert_fail
	.section	.text
	.align	32
	#Procedure 0x404472
	.globl sub_404472
	.type sub_404472, @function
sub_404472:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x404480
	.globl __gl_setmode
	.type __gl_setmode, @function
__gl_setmode:

	xor	eax, eax
	ret	
	.section	.text
	.align	32
	#Procedure 0x404483
	.globl sub_404483
	.type sub_404483, @function
sub_404483:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x404490

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
	je	.label_322
	mov	edx, OFFSET FLAT:label_331
	xor	eax, eax
	mov	rdi, r14
	mov	r8, rbx
	call	__fprintf_chk
	jmp	.label_318
.label_322:
	mov	edx, OFFSET FLAT:label_320
	xor	eax, eax
	mov	rdi, r14
	mov	rcx, rbx
	mov	r8, r9
	call	__fprintf_chk
.label_318:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_324
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
	ja	.label_326
	jmp	qword ptr [word ptr [+ (r12 * 8) + label_327]]
.label_508:
	add	rsp, 8
	jmp	.label_319
.label_326:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_334
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
	jmp	.label_319
.label_509:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_325
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
.label_510:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_316
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
.label_511:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_332
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
.label_512:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_329
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
	jmp	.label_319
.label_513:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_328
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
	jmp	.label_319
.label_514:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_330
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
	jmp	.label_319
.label_515:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_333
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
	jmp	.label_319
.label_517:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_317
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
	jmp	.label_319
.label_516:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_323
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
.label_319:
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	ret	
	.section	.text
	.align	32
	#Procedure 0x4047e8
	.globl sub_4047e8
	.type sub_4047e8, @function
sub_4047e8:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4047f0

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
	#Procedure 0x404839
	.globl sub_404839
	.type sub_404839, @function
sub_404839:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x404840
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
	#Procedure 0x404856
	.globl sub_404856
	.type sub_404856, @function
sub_404856:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x404860

	.globl default_block_size
	.type default_block_size, @function
default_block_size:
	push	rax
	mov	edi, OFFSET FLAT:label_335
	call	getenv
	test	rax, rax
	mov	ecx, 0x200
	mov	eax, 0x400
	cmovne	rax, rcx
	pop	rcx
	ret	
	.section	.text
	.align	32
	#Procedure 0x40487e
	.globl sub_40487e
	.type sub_40487e, @function
sub_40487e:

	nop	
	.section	.text
	.align	32
	#Procedure 0x404880
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
	#Procedure 0x40488d
	.globl sub_40488d
	.type sub_40488d, @function
sub_40488d:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x404890

	.globl set_binary_mode
	.type set_binary_mode, @function
set_binary_mode:
	xor	eax, eax
	ret	
	.section	.text
	.align	32
	#Procedure 0x404893
	.globl sub_404893
	.type sub_404893, @function
sub_404893:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4048a0

	.globl __argmatch_die
	.type __argmatch_die, @function
__argmatch_die:
	mov	edi, 1
	jmp	usage
	.section	.text
	.align	32
	#Procedure 0x4048aa
	.globl sub_4048aa
	.type sub_4048aa, @function
sub_4048aa:

	nop	word ptr [rax + rax]
.label_336:
	mov	r11, qword ptr [r8 + 8]
	lea	rax, [r11 + 8]
	mov	qword ptr [r8 + 8], rax
.label_338:
	mov	rax, qword ptr [r11]
	mov	qword ptr [rsp + r9*8], rax
	test	rax, rax
	je	.label_339
	inc	r9
	cmp	r9, 0xa
	jb	.label_337
.label_339:
	lea	r8, [rsp]
	call	version_etc_arn
	add	rsp, 0x58
	ret	
	.section	.text
	.align	32
	#Procedure 0x4048df
	.globl sub_4048df
	.type sub_4048df, @function
sub_4048df:

	nop	
	.section	.text
	.align	32
	#Procedure 0x4048e0

	.globl version_etc_va
	.type version_etc_va, @function
version_etc_va:
	sub	rsp, 0x58
	xor	r9d, r9d
	nop	word ptr [rax + rax]
.label_337:
	movsxd	r10, dword ptr [r8]
	cmp	r10, 0x28
	ja	.label_336
	mov	r11, r10
	add	r11, qword ptr [r8 + 0x10]
	lea	eax, [r10 + 8]
	mov	dword ptr [r8], eax
	jmp	.label_338
	.section	.text
	.align	32
	#Procedure 0x404909
	.globl sub_404909
	.type sub_404909, @function
sub_404909:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x404910
	.globl c_isprint
	.type c_isprint, @function
c_isprint:

	add	edi, -0x20
	cmp	edi, 0x5f
	setb	al
	ret	
	.section	.text
	.align	32
	#Procedure 0x40491a
	.globl sub_40491a
	.type sub_40491a, @function
sub_40491a:

	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x404920

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
	je	.label_342
	and	ecx, 0xffffffdf
	xor	eax, eax
	cmp	ecx, ebp
	je	.label_340
	jmp	.label_341
.label_342:
	xor	eax, eax
	cmp	cl, bpl
	jne	.label_341
.label_340:
	mov	eax, 1
	test	bpl, bpl
	je	.label_341
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
.label_341:
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
	#Procedure 0x4049a8
	.globl sub_4049a8
	.type sub_4049a8, @function
sub_4049a8:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4049b0

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
	je	.label_343
	and	ecx, 0xffffffdf
	xor	eax, eax
	cmp	ecx, ebp
	je	.label_345
	jmp	.label_344
.label_343:
	xor	eax, eax
	cmp	cl, bpl
	jne	.label_344
.label_345:
	mov	eax, 1
	test	bpl, bpl
	je	.label_344
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
.label_344:
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
	#Procedure 0x404a29
	.globl sub_404a29
	.type sub_404a29, @function
sub_404a29:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x404a30

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
	je	.label_348
	and	ecx, 0xffffffdf
	xor	eax, eax
	cmp	ecx, ebp
	je	.label_347
	jmp	.label_346
.label_348:
	xor	eax, eax
	cmp	cl, bpl
	jne	.label_346
.label_347:
	mov	eax, 1
	test	bpl, bpl
	je	.label_346
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
.label_346:
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x404a93
	.globl sub_404a93
	.type sub_404a93, @function
sub_404a93:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x404aa0

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
	je	.label_351
	and	ecx, 0xffffffdf
	xor	eax, eax
	cmp	ecx, ebp
	je	.label_349
	jmp	.label_350
.label_351:
	xor	eax, eax
	cmp	cl, bpl
	jne	.label_350
.label_349:
	mov	eax, 1
	test	bpl, bpl
	je	.label_350
	movsx	esi, r15b
	movsx	edx, r14b
	mov	rdi, rbx
	add	rsp, 8
	pop	rbx
	pop	r14
	pop	r15
	pop	rbp
	jmp	strcaseeq5
.label_350:
	add	rsp, 8
	pop	rbx
	pop	r14
	pop	r15
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x404aff
	.globl sub_404aff
	.type sub_404aff, @function
sub_404aff:

	nop	
	.section	.text
	.align	32
	#Procedure 0x404b00

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
	je	.label_352
	and	ecx, 0xffffffdf
	xor	eax, eax
	cmp	ecx, ebp
	je	.label_354
	jmp	.label_353
.label_352:
	xor	eax, eax
	cmp	cl, bpl
	jne	.label_353
.label_354:
	mov	eax, 1
	test	bpl, bpl
	je	.label_353
	movsx	esi, r14b
	mov	rdi, rbx
	pop	rbx
	pop	r14
	pop	rbp
	jmp	strcaseeq6
.label_353:
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x404b49
	.globl sub_404b49
	.type sub_404b49, @function
sub_404b49:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x404b50

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
	je	.label_357
	and	ecx, 0xffffffdf
	xor	eax, eax
	cmp	ecx, ebp
	je	.label_356
	jmp	.label_355
.label_357:
	xor	eax, eax
	cmp	cl, bpl
	jne	.label_355
.label_356:
	mov	eax, 1
	test	bpl, bpl
	je	.label_355
	mov	rdi, rbx
	add	rsp, 8
	pop	rbx
	pop	rbp
	jmp	strcaseeq7
.label_355:
	add	rsp, 8
	pop	rbx
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x404b95
	.globl sub_404b95
	.type sub_404b95, @function
sub_404b95:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x404ba0

	.globl strcaseeq7
	.type strcaseeq7, @function
strcaseeq7:
	push	rbx
	mov	rbx, rdi
	xor	edi, edi
	call	c_isupper
	movsx	ecx, byte ptr [rbx + 7]
	test	al, al
	je	.label_360
	mov	eax, 1
	test	ecx, 0xffffffdf
	jne	.label_359
	jmp	.label_358
.label_360:
	mov	eax, 1
	test	cl, cl
	je	.label_358
.label_359:
	xor	eax, eax
.label_358:
	pop	rbx
	ret	
	.section	.text
	.align	32
	#Procedure 0x404bcf
	.globl sub_404bcf
	.type sub_404bcf, @function
sub_404bcf:

	nop	
	.section	.text
	.align	32
	#Procedure 0x404bd0
	.globl close_stdout_set_file_name
	.type close_stdout_set_file_name, @function
close_stdout_set_file_name:

	mov	qword ptr [word ptr [rip + file_name]],  rdi
	ret	
	.section	.text
	.align	32
	#Procedure 0x404bd8
	.globl sub_404bd8
	.type sub_404bd8, @function
sub_404bd8:

	nop	dword ptr [rax + rax]
.label_364:
	mov	esi, OFFSET FLAT:label_361
.label_363:
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
	#Procedure 0x404c33

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
	je	.label_364
	mov	esi, OFFSET FLAT:label_362
	jmp	.label_363
.label_365:
	xor	eax, eax
	ret	
	.section	.text
	.align	32
	#Procedure 0x404c53
	.globl sub_404c53
	.type sub_404c53, @function
sub_404c53:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x404c5b
	.globl c_isspace
	.type c_isspace, @function
c_isspace:

	add	edi, -9
	cmp	edi, 0x17
	ja	.label_365
	mov	eax, 0x80001f
	mov	ecx, edi
	shr	eax, cl
	and	eax, 1
	ret	
	.section	.text
	.align	32
	#Procedure 0x404c70

	.globl rpl_fflush
	.type rpl_fflush, @function
rpl_fflush:
	push	rbx
	mov	rbx, rdi
	test	rbx, rbx
	je	.label_366
	mov	rdi, rbx
	call	__freading
	test	eax, eax
	je	.label_366
	mov	rdi, rbx
	call	clear_ungetc_buffer_preserving_position
.label_366:
	mov	rdi, rbx
	pop	rbx
	jmp	fflush
	.section	.text
	.align	32
	#Procedure 0x404c96
	.globl sub_404c96
	.type sub_404c96, @function
sub_404c96:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x404ca0
	.globl c_isalnum
	.type c_isalnum, @function
c_isalnum:

	mov	al, 1
	lea	ecx, [rdi - 0x41]
	cmp	ecx, 0x39
	ja	.label_367
	movabs	rdx, 0x3ffffff03ffffff
	bt	rdx, rcx
	jae	.label_367
.label_368:
	ret	
.label_367:
	add	edi, -0x30
	cmp	edi, 0xa
	jb	.label_368
	xor	eax, eax
	ret	
	.section	.text
	.align	32
	#Procedure 0x404cc6
	.globl sub_404cc6
	.type sub_404cc6, @function
sub_404cc6:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x404cd0

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
	jmp	.label_371
	.section	.text
	.align	32
	#Procedure 0x404d19
	.globl sub_404d19
	.type sub_404d19, @function
sub_404d19:

	nop	dword ptr [rax]
.label_369:
	add	rbx, r13
	mov	rdi, rbx
	mov	rsi, qword ptr [rsp + 8]
	mov	rdx, r14
	call	memcpy
.label_371:
	movzx	eax, byte ptr [r15]
	test	rax, rax
	je	.label_370
	cmp	al, 0x7f
	cmovae	rax, r12
	inc	r15
	mov	rbp, rax
.label_370:
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
	jne	.label_369
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
	#Procedure 0x404d7f
	.globl sub_404d7f
	.type sub_404d7f, @function
sub_404d7f:

	nop	
	.section	.text
	.align	32
	#Procedure 0x404d80
	.globl emit_bug_reporting_address
	.type emit_bug_reporting_address, @function
emit_bug_reporting_address:

	push	rax
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_372
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:label_373
	xor	eax, eax
	mov	rsi, rcx
	call	__printf_chk
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_375
	mov	edx, 5
	call	dcgettext
	mov	rsi, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:label_51
	mov	ecx, OFFSET FLAT:label_52
	xor	eax, eax
	call	__printf_chk
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_374
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	pop	rax
	jmp	fputs_unlocked
	.section	.text
	.align	32
	#Procedure 0x404df4
	.globl sub_404df4
	.type sub_404df4, @function
sub_404df4:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x404e00

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
	mov	rcx,  qword ptr [word ptr [rip + label_238]]
	mov	qword ptr [rsp + 0x30], rcx
	movups	xmm0,  xmmword ptr [word ptr [rip + label_239]]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0,  xmmword ptr [word ptr [rip + label_240]]
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
	#Procedure 0x404e6d
	.globl sub_404e6d
	.type sub_404e6d, @function
sub_404e6d:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x404e70

	.globl quotearg_char
	.type quotearg_char, @function
quotearg_char:
	mov	eax, esi
	mov	rsi, -1
	mov	edx, eax
	jmp	quotearg_char_mem
	.section	.text
	.align	32
	#Procedure 0x404e7d
	.globl sub_404e7d
	.type sub_404e7d, @function
sub_404e7d:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x404e80

	.globl quotearg_colon
	.type quotearg_colon, @function
quotearg_colon:
	mov	esi, 0x3a
	jmp	quotearg_char
	.section	.text
	.align	32
	#Procedure 0x404e87
	.globl sub_404e87
	.type sub_404e87, @function
sub_404e87:

	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x404e90

	.globl adjust_value
	.type adjust_value, @function
adjust_value:
	fld	xword ptr [rsp + 8]
	cmp	edi, 1
	je	.label_376
	fld	xword ptr [word ptr [rip + label_379]]
	fucomip	st(1)
	jbe	.label_376
	fld	dword ptr [dword ptr [rip + label_377]]
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
	fadd	dword ptr [dword ptr [+ (rdx * 4) + label_378]]
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
	fadd	dword ptr [dword ptr [+ (rdx * 4) + label_378]]
.label_376:
	ret	
	.section	.text
	.align	32
	#Procedure 0x404f5d
	.globl sub_404f5d
	.type sub_404f5d, @function
sub_404f5d:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x404f60
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
	#Procedure 0x404f93
	.globl sub_404f93
	.type sub_404f93, @function
sub_404f93:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x404fa0
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
	#Procedure 0x404fad
	.globl sub_404fad
	.type sub_404fad, @function
sub_404fad:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x404fb0

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
	mov	eax, OFFSET FLAT:label_384
	cmovb	rax, rbx
	mov	qword ptr [rsp + 0x40], rax
	mov	rbx, qword ptr [rbp + 8]
	mov	rbp, qword ptr [rbp + 0x10]
	mov	rdi, rbx
	call	strlen
	mov	rsi, r14
	cmp	rax, 0x11
	mov	r14d, OFFSET FLAT:label_57
	cmovb	r14, rbx
	mov	qword ptr [rsp + 0x20], r12
	lea	rax, [r12 + 0x287]
	mov	qword ptr [rsp + 0x28], rax
	cmp	rsi, r15
	mov	qword ptr [rsp + 0x60], rsi
	mov	qword ptr [rsp + 0x70], rbp
	mov	qword ptr [rsp + 0x68], r14
	jbe	.label_399
	test	r15, r15
	mov	r8d, dword ptr [rsp + 0x34]
	je	.label_406
	xor	edx, edx
	mov	rax, rsi
	div	r15
	test	rdx, rdx
	jne	.label_406
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
	jmp	.label_413
.label_399:
	xor	edx, edx
	mov	rax, r15
	div	rsi
	test	rdx, rdx
	mov	r8d, dword ptr [rsp + 0x34]
	jne	.label_406
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
	jne	.label_406
.label_413:
	mov	r15d, dword ptr [rsp + 0x1c]
	and	r15d, 0x10
	mov	ebx, 0xffffffff
	je	.label_386
	mov	esi, r8d
	xor	ebx, ebx
	cmp	rsi, r12
	mov	rax, qword ptr [rsp + 0x28]
	jbe	.label_389
	mov	r14, rax
	jmp	.label_394
.label_406:
	mov	qword ptr [rsp + 0x80], rsi
	xor	eax, eax
	test	rsi, rsi
	setns	al
	fild	qword ptr [rsp + 0x80]
	fadd	dword ptr [dword ptr [+ (rax * 4) + label_378]]
	mov	qword ptr [rsp + 0x88], r13
	xor	eax, eax
	test	r13, r13
	setns	al
	fild	qword ptr [rsp + 0x88]
	fadd	dword ptr [dword ptr [+ (rax * 4) + label_378]]
	mov	qword ptr [rsp + 0x90], r15
	xor	eax, eax
	test	r15, r15
	setns	al
	fild	qword ptr [rsp + 0x90]
	fadd	dword ptr [dword ptr [+ (rax * 4) + label_378]]
	fdivrp	st(2)
	fmulp	st(1)
	mov	r12d, dword ptr [rsp + 0x1c]
	test	r12b, 0x10
	jne	.label_398
	fstp	xword ptr [rsp]
	mov	edi, dword ptr [rsp + 0x3c]
	call	adjust_value
	fstp	xword ptr [rsp]
	xor	r13d, r13d
	mov	esi, 1
	mov	rdx, -1
	mov	ecx, OFFSET FLAT:label_385
	xor	eax, eax
	mov	r15, qword ptr [rsp + 0x20]
	mov	rdi, r15
	call	__sprintf_chk
	mov	rdi, r15
	call	strlen
	mov	ebx, 0xffffffff
	jmp	.label_408
.label_398:
	mov	eax, r8d
	mov	qword ptr [rsp + 0x78], rax
	fld1	
	xor	ebx, ebx
	fild	qword ptr [rsp + 0x78]
	fldz	
	nop	dword ptr [rax]
.label_387:
	fstp	st(0)
	fmul	st(1), st(0)
	inc	ebx
	fld	st(0)
	fmul	st(2)
	cmp	ebx, 7
	jg	.label_380
	fxch	st(3)
	fucomi	st(3)
	fstp	st(3)
	fldz	
	jae	.label_387
.label_380:
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
	mov	ecx, OFFSET FLAT:label_395
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
	jb	.label_401
	fld	xword ptr [rsp + 0x40]
	fstp	st(0)
	inc	r13
	test	r12b, 8
	je	.label_408
	cmp	byte ptr [r15 + rax - 1], 0x30
	jne	.label_408
.label_401:
	fld	dword ptr [dword ptr [rip + label_409]]
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
	mov	ecx, OFFSET FLAT:label_385
	xor	eax, eax
	mov	rdi, r15
	call	__sprintf_chk
	mov	rdi, r15
	call	strlen
.label_408:
	mov	r14, qword ptr [rsp + 0x28]
	mov	rbp, r14
	sub	rbp, rax
	mov	rdi, rbp
	mov	rsi, r15
	mov	rdx, rax
	call	memmove
	sub	r14, r13
	jmp	.label_418
.label_386:
	mov	r14, qword ptr [rsp + 0x28]
	jmp	.label_394
.label_389:
	xor	ebx, ebx
	mov	r9d, dword ptr [rsp + 0x3c]
	nop	dword ptr [rax]
.label_403:
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
	jae	.label_388
	xor	eax, eax
	add	edx, ebp
	setne	al
	mov	ebp, eax
	jmp	.label_396
	.section	.text
	.align	32
	#Procedure 0x405341
	.globl sub_405341
	.type sub_405341, @function
sub_405341:

	nop	word ptr cs:[rax + rax]
.label_388:
	add	edx, ebp
	cmp	r8d, edx
	sbb	ebp, ebp
	and	ebp, 1
	or	ebp, 2
.label_396:
	inc	ebx
	cmp	ebx, 7
	jg	.label_392
	cmp	rsi, r12
	jbe	.label_403
.label_392:
	cmp	r12, 9
	ja	.label_405
	cmp	r9d, 1
	jne	.label_414
	mov	eax, ecx
	and	eax, 1
	add	eax, ebp
	cmp	eax, 2
	ja	.label_407
	jmp	.label_411
.label_405:
	mov	r14, qword ptr [rsp + 0x28]
	jmp	.label_394
.label_414:
	test	r9d, r9d
	jne	.label_411
	test	ebp, ebp
	je	.label_411
.label_407:
	inc	ecx
	xor	ebp, ebp
	cmp	ecx, 0xa
	jne	.label_411
	inc	r12
	xor	ecx, ecx
	cmp	r12, 9
	mov	ebp, 0
	ja	.label_415
.label_411:
	mov	eax, dword ptr [rsp + 0x1c]
	test	al, 8
	je	.label_416
	test	ecx, ecx
	jne	.label_416
	mov	r14, qword ptr [rsp + 0x28]
	jmp	.label_394
.label_416:
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
	jmp	.label_394
.label_415:
	xor	ebp, ebp
	mov	r14, qword ptr [rsp + 0x28]
	mov	r12d, 0xa
.label_394:
	mov	eax, dword ptr [rsp + 0x1c]
	and	al, 3
	je	.label_391
	cmp	al, 1
	jne	.label_382
	movsxd	rax, ebp
	mov	edx, r12d
	and	edx, 1
	xor	esi, esi
	add	rdx, rax
	setne	sil
	add	esi, ecx
	cmp	esi, 5
	jg	.label_393
	jmp	.label_382
.label_391:
	add	ecx, ebp
	jle	.label_382
.label_393:
	inc	r12
	mov	eax, dword ptr [rsp + 0x34]
	cmp	ebx, 7
	jg	.label_382
	test	r15d, r15d
	je	.label_382
	cmp	r12, rax
	jne	.label_382
	inc	ebx
	mov	r12d, 1
	mov	eax, dword ptr [rsp + 0x1c]
	test	al, 8
	jne	.label_382
	mov	byte ptr [r14 - 1], 0x30
	dec	r14
	mov	rdx, qword ptr [rsp + 0x50]
	sub	r14, rdx
	mov	rdi, r14
	mov	rsi, qword ptr [rsp + 0x40]
	call	memcpy
	mov	r12d, 1
.label_382:
	mov	r15, qword ptr [rsp + 0x20]
	movabs	rcx, 0xcccccccccccccccd
	mov	rbp, r14
	nop	word ptr cs:[rax + rax]
.label_412:
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
	ja	.label_412
	mov	r12d, dword ptr [rsp + 0x1c]
.label_418:
	test	r12b, 4
	je	.label_417
	sub	r14, rbp
	mov	rdi, rbp
	mov	rsi, r14
	mov	rdx, qword ptr [rsp + 0x70]
	mov	rcx, qword ptr [rsp + 0x68]
	call	group_number
	mov	rbp, rax
.label_417:
	mov	rsi, qword ptr [rsp + 0x60]
	mov	eax, dword ptr [rsp + 0x34]
	mov	rdi, qword ptr [rsp + 0x28]
	test	r12b, r12b
	jns	.label_410
	test	ebx, ebx
	jns	.label_381
	xor	ebx, ebx
	cmp	rsi, 2
	jb	.label_381
	mov	eax, eax
	xor	ecx, ecx
	mov	edx, 1
	nop	word ptr cs:[rax + rax]
.label_390:
	mov	ebx, 8
	cmp	ecx, 7
	je	.label_381
	inc	ecx
	imul	rdx, rax
	cmp	rdx, rsi
	mov	ebx, ecx
	jb	.label_390
.label_381:
	mov	eax, r12d
	and	eax, 0x100
	test	r12b, 0x40
	je	.label_397
	mov	ecx, ebx
	or	ecx, eax
	je	.label_397
	mov	byte ptr [r15 + 0x287], 0x20
	add	r15, 0x288
	mov	rdi, r15
.label_397:
	test	ebx, ebx
	je	.label_400
	cmp	dword ptr [rsp + 0x38], 0
	jne	.label_402
	mov	cl, 0x6b
	cmp	ebx, 1
	je	.label_404
.label_402:
	movsxd	rcx, ebx
	mov	cl,  byte ptr [byte ptr [rcx + power_letter]]
.label_404:
	mov	byte ptr [rdi], cl
	inc	rdi
.label_400:
	test	eax, eax
	je	.label_410
	cmp	dword ptr [rsp + 0x38], 0
	je	.label_383
	test	ebx, ebx
	je	.label_383
	mov	byte ptr [rdi], 0x69
	inc	rdi
.label_383:
	mov	byte ptr [rdi], 0x42
	inc	rdi
.label_410:
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
.label_421:
	mov	rbx,  qword ptr [word ptr [rip + stderr]]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_420
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
	#Procedure 0x4055e8

	.globl usage
	.type usage, @function
usage:
	push	rbp
	push	rbx
	push	rax
	mov	ebp, edi
	test	ebp, ebp
	jne	.label_421
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_423
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	mov	rdx,  qword ptr [word ptr [rip + program_name]]
	mov	edi, 1
	xor	eax, eax
	mov	rsi, rcx
	call	__printf_chk
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_425
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	call	emit_stdin_note
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_419
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_424
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_422
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	call	emit_ancillary_info
	mov	edi, ebp
	call	exit
.label_426:
	call	xalloc_die
	.section	.text
	.align	32
	#Procedure 0x4056b5
	.globl sub_4056b5
	.type sub_4056b5, @function
sub_4056b5:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4056bf
	.globl xcalloc
	.type xcalloc, @function
xcalloc:

	push	rax
	movabs	rax, 0x7fffffffffffffff
	xor	edx, edx
	div	rsi
	cmp	rax, rdi
	jb	.label_426
	call	rpl_calloc
	test	rax, rax
	je	.label_426
	pop	rcx
	ret	
	.section	.text
	.align	32
	#Procedure 0x4056e0

	.globl xalloc_die
	.type xalloc_die, @function
xalloc_die:
	push	rbx
	mov	ebx,  dword ptr [dword ptr [rip + exit_failure]]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_427
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
	.align	32
	#Procedure 0x405775
	.globl sub_405775
	.type sub_405775, @function
sub_405775:

	nop	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x405782
	.globl sub_405782
	.type sub_405782, @function
sub_405782:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4057a6
	.globl sub_4057a6
	.type sub_4057a6, @function
sub_4057a6:

	nop	word ptr cs:[rax + rax]
