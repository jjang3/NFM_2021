	.section	.text
	.align	32
	#Procedure 0x401589
	.globl sub_401589
	.type sub_401589, @function
sub_401589:

	hlt	
	.section	.text
	.align	32
	#Procedure 0x40158a
	.globl sub_40158a
	.type sub_40158a, @function
sub_40158a:

	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4015c2
	.globl sub_4015c2
	.type sub_4015c2, @function
sub_4015c2:

	nop	dword ptr [rax]
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40160a
	.globl sub_40160a
	.type sub_40160a, @function
sub_40160a:

	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40162c
	.globl sub_40162c
	.type sub_40162c, @function
sub_40162c:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x40163d
	.globl sub_40163d
	.type sub_40163d, @function
sub_40163d:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x401656
	.globl sub_401656
	.type sub_401656, @function
sub_401656:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x401660

	.globl set_program_name
	.type set_program_name, @function
set_program_name:
	push	r14
	push	rbx
	push	rax
	mov	rbx, rdi
	test	rbx, rbx
	je	.label_9
	mov	esi, 0x2f
	mov	rdi, rbx
	call	strrchr
	test	rax, rax
	lea	r14, [rax + 1]
	cmove	r14, rbx
	mov	rax, r14
	sub	rax, rbx
	cmp	rax, 7
	jl	.label_11
	lea	rdi, [r14 - 7]
	mov	esi, OFFSET FLAT:label_13
	mov	edx, 7
	call	strncmp
	test	eax, eax
	jne	.label_11
	mov	esi, OFFSET FLAT:label_12
	mov	edx, 3
	mov	rdi, r14
	call	strncmp
	test	eax, eax
	jne	.label_14
	add	r14, 3
	mov	qword ptr [rip + __progname],  r14
.label_14:
	mov	rbx, r14
.label_11:
	mov	qword ptr [rip + program_name],  rbx
	mov	qword ptr [rip + __progname_full],  rbx
	add	rsp, 8
	pop	rbx
	pop	r14
	ret	
.label_9:
	mov	rcx, qword ptr [rip + stderr]
	mov	edi, OFFSET FLAT:label_10
	mov	esi, 0x37
	mov	edx, 1
	call	fwrite
	call	abort
	.section	.text
	.align	32
	#Procedure 0x401701
	.globl sub_401701
	.type sub_401701, @function
sub_401701:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x401710
	.globl quote_n
	.type quote_n, @function
quote_n:

	mov	rdx, -1
	mov	ecx, OFFSET FLAT:quote_quoting_options
	jmp	quotearg_n_options
	.section	.text
	.align	32
	#Procedure 0x401721
	.globl sub_401721
	.type sub_401721, @function
sub_401721:

	nop	word ptr cs:[rax + rax]
.label_32:
	mov	rbx, qword ptr [rip + stderr]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_15
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
	#Procedure 0x401768
	.globl sub_401768
	.type sub_401768, @function
sub_401768:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x401772

	.globl usage
	.type usage, @function
usage:
	push	rbp
	push	rbx
	push	rax
	mov	ebp, edi
	test	ebp, ebp
	jne	.label_32
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_35
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
	mov	esi, OFFSET FLAT:label_27
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_19
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_29
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_30
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_28
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_34
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_31
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_20
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:label_24
	xor	eax, eax
	mov	rsi, rcx
	call	__printf_chk
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_33
	mov	edx, 5
	call	dcgettext
	mov	rsi, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:label_17
	mov	ecx, OFFSET FLAT:label_18
	xor	eax, eax
	call	__printf_chk
	mov	edi, 5
	xor	esi, esi
	call	setlocale
	test	rax, rax
	je	.label_16
	mov	esi, OFFSET FLAT:label_22
	mov	edx, 3
	mov	rdi, rax
	call	strncmp
	test	eax, eax
	je	.label_16
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_23
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	call	fputs_unlocked
.label_16:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_26
	mov	edx, 5
	call	dcgettext
	mov	rsi, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:label_18
	mov	ecx, OFFSET FLAT:label_24
	xor	eax, eax
	call	__printf_chk
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_21
	mov	edx, 5
	call	dcgettext
	mov	rsi, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:label_24
	mov	ecx, OFFSET FLAT:label_25
	xor	eax, eax
	call	__printf_chk
	mov	edi, ebp
	call	exit
.label_36:
	call	xalloc_die
	.section	.text
	.align	32
	#Procedure 0x401985
	.globl sub_401985
	.type sub_401985, @function
sub_401985:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x401993
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
	je	.label_37
	test	r15, r15
	je	.label_36
.label_37:
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
	#Procedure 0x4019d0

	.globl rpl_fflush
	.type rpl_fflush, @function
rpl_fflush:
	push	rbx
	mov	rbx, rdi
	test	rbx, rbx
	je	.label_38
	mov	rdi, rbx
	call	__freading
	test	eax, eax
	je	.label_38
	test	byte ptr [rbx + 1], 1
	je	.label_38
	xor	esi, esi
	mov	edx, 1
	mov	rdi, rbx
	call	rpl_fseeko
.label_38:
	mov	rdi, rbx
	pop	rbx
	jmp	fflush
	.section	.text
	.align	32
	#Procedure 0x401a03
	.globl sub_401a03
	.type sub_401a03, @function
sub_401a03:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x401a10

	.globl rpl_fclose
	.type rpl_fclose, @function
rpl_fclose:
	push	rbp
	push	r14
	push	rbx
	mov	rbx, rdi
	call	fileno
	test	eax, eax
	js	.label_39
	mov	rdi, rbx
	call	__freading
	test	eax, eax
	je	.label_41
	mov	rdi, rbx
	call	fileno
	xor	esi, esi
	mov	edx, 1
	mov	edi, eax
	call	lseek
	cmp	rax, -1
	je	.label_39
.label_41:
	mov	rdi, rbx
	call	rpl_fflush
	test	eax, eax
	je	.label_39
	call	__errno_location
	mov	r14, rax
	mov	ebp, dword ptr [r14]
	mov	rdi, rbx
	call	fclose
	test	ebp, ebp
	je	.label_40
	mov	dword ptr [r14], ebp
	mov	eax, 0xffffffff
.label_40:
	pop	rbx
	pop	r14
	pop	rbp
	ret	
.label_39:
	mov	rdi, rbx
	pop	rbx
	pop	r14
	pop	rbp
	jmp	fclose
	.section	.text
	.align	32
	#Procedure 0x401a84
	.globl sub_401a84
	.type sub_401a84, @function
sub_401a84:

	nop	word ptr cs:[rax + rax]
.label_43:
	mov	ebx, 0xffffffff
	test	eax, eax
	jne	.label_42
	call	__errno_location
	mov	dword ptr [rax], 0
.label_42:
	mov	eax, ebx
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x401aab

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
	jne	.label_43
	test	eax, eax
	sete	cl
	neg	eax
	sbb	ebx, ebx
	test	r14, r14
	jne	.label_42
	test	cl, cl
	jne	.label_42
	call	__errno_location
	xor	ecx, ecx
	cmp	dword ptr [rax], 9
	mov	ebx, 0xffffffff
	cmove	ebx, ecx
	jmp	.label_42
.label_46:
	call	xalloc_die
	.section	.text
	.align	32
	#Procedure 0x401af5
	.globl sub_401af5
	.type sub_401af5, @function
sub_401af5:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x401afd
	.globl xnrealloc
	.type xnrealloc, @function
xnrealloc:

	push	rbx
	mov	rbx, rdx
	movabs	rax, 0x7fffffffffffffff
	xor	edx, edx
	div	rbx
	cmp	rax, rsi
	jb	.label_46
	imul	rbx, rsi
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
	je	.label_44
	test	rax, rax
	je	.label_46
.label_44:
	pop	rbx
	ret	
	.section	.text
	.align	32
	#Procedure 0x401b40

	.globl version_etc
	.type version_etc, @function
version_etc:
	sub	rsp, 0xd8
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
	#Procedure 0x401bc3
	.globl sub_401bc3
	.type sub_401bc3, @function
sub_401bc3:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x401bd0

	.globl quotearg_colon
	.type quotearg_colon, @function
quotearg_colon:
	sub	rsp, 0x38
	mov	rax, rdi
	mov	rcx, qword ptr [rip + label_48]
	mov	qword ptr [rsp + 0x30], rcx
	movups	xmm0, xmmword ptr [rip + label_49]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0, xmmword ptr [rip + label_50]
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
	#Procedure 0x401c25
	.globl sub_401c25
	.type sub_401c25, @function
sub_401c25:

	nop	word ptr cs:[rax + rax]
.label_53:
	call	xalloc_die
	.section	.text
	.align	32
	#Procedure 0x401c35

	.globl xrealloc
	.type xrealloc, @function
xrealloc:
	push	rbx
	mov	rbx, rsi
	test	rdi, rdi
	je	.label_52
	test	rbx, rbx
	jne	.label_52
	call	free
	xor	eax, eax
	pop	rbx
	ret	
.label_52:
	mov	rsi, rbx
	call	realloc
	test	rbx, rbx
	je	.label_51
	test	rax, rax
	je	.label_53
.label_51:
	pop	rbx
	ret	
	.section	.text
	.align	32
	#Procedure 0x401c60

	.globl u8_uctomb_aux
	.type u8_uctomb_aux, @function
u8_uctomb_aux:
	mov	eax, 0xfffffffe
	cmp	esi, 0x80
	jb	.label_54
	mov	r8d, 2
	cmp	esi, 0x800
	jb	.label_56
	cmp	esi, 0xffff
	ja	.label_59
	mov	ecx, esi
	and	ecx, 0xfffff800
	mov	r8d, 3
	mov	eax, 0xffffffff
	cmp	ecx, 0xd800
	jne	.label_56
	jmp	.label_54
.label_59:
	mov	eax, 0xffffffff
	mov	r8d, 4
	cmp	esi, 0x10ffff
	ja	.label_54
.label_56:
	cmp	r8d, edx
	mov	eax, 0xfffffffe
	jg	.label_54
	mov	eax, r8d
	and	al, 7
	cmp	al, 2
	je	.label_55
	cmp	al, 3
	je	.label_57
	cmp	al, 4
	jne	.label_58
	mov	eax, esi
	and	eax, 0x3f
	or	eax, 0x80
	mov	byte ptr [rdi + 3], al
	shr	esi, 6
	or	esi, 0x10000
.label_57:
	mov	eax, esi
	and	eax, 0x3f
	or	eax, 0x80
	mov	byte ptr [rdi + 2], al
	shr	esi, 6
	or	esi, 0x800
.label_55:
	mov	eax, esi
	and	eax, 0x3f
	or	eax, 0x80
	mov	byte ptr [rdi + 1], al
	shr	esi, 6
	or	esi, 0xc0
	mov	byte ptr [rdi], sil
.label_58:
	mov	eax, r8d
.label_54:
	ret	
	.section	.text
	.align	32
	#Procedure 0x401d1b
	.globl sub_401d1b
	.type sub_401d1b, @function
sub_401d1b:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x401d20
	.globl set_custom_quoting
	.type set_custom_quoting, @function
set_custom_quoting:

	test	rdi, rdi
	mov	eax, OFFSET FLAT:default_quoting_options
	cmovne	rax, rdi
	mov	dword ptr [rax], 0xa
	test	rsi, rsi
	je	.label_60
	test	rdx, rdx
	je	.label_60
	mov	qword ptr [rax + 0x28], rsi
	mov	qword ptr [rax + 0x30], rdx
	ret	
.label_60:
	push	rax
	call	abort
	.section	.text
	.align	32
	#Procedure 0x401d4b
	.globl sub_401d4b
	.type sub_401d4b, @function
sub_401d4b:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x401d50
	.globl quotearg_colon_mem
	.type quotearg_colon_mem, @function
quotearg_colon_mem:

	sub	rsp, 0x38
	mov	rax, rsi
	mov	rdx, rdi
	mov	rcx, qword ptr [rip + label_48]
	mov	qword ptr [rsp + 0x30], rcx
	movups	xmm0, xmmword ptr [rip + label_49]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0, xmmword ptr [rip + label_50]
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
	#Procedure 0x401da4
	.globl sub_401da4
	.type sub_401da4, @function
sub_401da4:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x401db0

	.globl main
	.type main, @function
main:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x178
	mov	r14, rsi
	mov	r15d, edi
	mov	rdi, qword ptr [r14]
	call	set_program_name
	mov	edi, 6
	mov	esi, OFFSET FLAT:label_108
	call	setlocale
	mov	edi, OFFSET FLAT:label_153
	mov	esi, OFFSET FLAT:label_154
	call	bindtextdomain
	mov	edi, OFFSET FLAT:label_153
	call	textdomain
	mov	edi, OFFSET FLAT:close_stdout
	call	atexit
	mov	byte ptr [rip + exit_status],  0
	mov	edi, OFFSET FLAT:label_61
	call	getenv
	test	rax, rax
	setne	byte ptr [rip + posixly_correct]
	cmp	r15d, 2
	jne	.label_67
	mov	rbp, qword ptr [r14 + 8]
	mov	esi, OFFSET FLAT:label_71
	mov	rdi, rbp
	call	strcmp
	test	eax, eax
	je	.label_77
	mov	esi, OFFSET FLAT:label_78
	mov	rdi, rbp
	call	strcmp
	test	eax, eax
	je	.label_83
	lea	rbx, [r14 + 8]
	jmp	.label_85
.label_67:
	jl	.label_68
	lea	rbx, [r14 + 8]
	mov	rbp, qword ptr [r14 + 8]
.label_85:
	cmp	byte ptr [rbp], 0x2d
	jne	.label_88
	cmp	byte ptr [rbp + 1], 0x2d
	jne	.label_88
	cmp	byte ptr [rbp + 2], 0
	je	.label_107
.label_88:
	mov	rbx, r14
.label_69:
	add	r15d, -2
	add	rbx, 0x10
	movabs	r14, 0x410150000001
	mov	qword ptr [rsp + 0x60], rbp
	nop	word ptr cs:[rax + rax]
.label_109:
	mov	qword ptr [rsp + 0x68], rbx
	mov	al, byte ptr [rbp]
	test	al, al
	mov	dword ptr [rsp + 0x48], r15d
	mov	ebx, r15d
	je	.label_148
	mov	dword ptr [rsp + 0x18], 0
	mov	ebx, dword ptr [rsp + 0x48]
	mov	r12, qword ptr [rsp + 0x68]
	mov	r15, qword ptr [rsp + 0x60]
	xor	ecx, ecx
	mov	qword ptr [rsp + 0x28], rcx
	jmp	.label_111
.label_127:
	test	ebx, ebx
	jle	.label_106
	mov	rsi, qword ptr [r12]
	mov	edi, 3
	call	quotearg_style
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	call	fputs_unlocked
	add	r12, 8
	dec	ebx
	jmp	.label_106
.label_118:
	test	ebx, ebx
	jle	.label_106
	mov	r15d, ebx
	mov	rbx, qword ptr [r12]
	jmp	.label_70
	.section	.text
	.align	32
	#Procedure 0x401f1b
	.globl sub_401f1b
	.type sub_401f1b, @function
sub_401f1b:

	nop	dword ptr [rax + rax]
.label_130:
	mov	esi, 1
	mov	rdi, rbx
	call	print_esc
	cdqe	
	add	rax, rbx
	inc	rax
	mov	rbx, rax
.label_70:
	movzx	esi, byte ptr [rbx]
	cmp	esi, 0x5c
	je	.label_130
	test	sil, sil
	je	.label_131
	mov	rdi, qword ptr [rip + stdout]
	mov	rax, qword ptr [rdi + 0x28]
	cmp	rax, qword ptr [rdi + 0x30]
	jae	.label_132
	lea	rcx, [rax + 1]
	mov	qword ptr [rdi + 0x28], rcx
	mov	byte ptr [rax], sil
	inc	rbx
	jmp	.label_70
.label_132:
	call	__overflow
	inc	rbx
	jmp	.label_70
.label_119:
	xorps	xmm0, xmm0
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
	movaps	xmmword ptr [rsp + 0x70], xmm0
	mov	byte ptr [rsp + 0xc8], 1
	mov	byte ptr [rsp + 0xe8], 1
	mov	byte ptr [rsp + 0xe5], 1
	mov	byte ptr [rsp + 0xe3], 1
	mov	byte ptr [rsp + 0xdf], 1
	mov	byte ptr [rsp + 0xd9], 1
	mov	byte ptr [rsp + 0xb7], 1
	mov	byte ptr [rsp + 0xb6], 1
	mov	byte ptr [rsp + 0xb5], 1
	mov	byte ptr [rsp + 0xb1], 1
	mov	byte ptr [rsp + 0xd1], 1
	lea	rax, [rsp + 0xd3]
	mov	byte ptr [rax + 4], 1
	mov	dword ptr [rax], 0x1010101
	xor	eax, eax
	mov	r13d, 1
	jmp	.label_141
	.section	.text
	.align	32
	#Procedure 0x402068
	.globl sub_402068
	.type sub_402068, @function
sub_402068:

	nop	dword ptr [rax + rax]
.label_102:
	inc	r13
	inc	rax
.label_141:
	movsx	ecx, byte ptr [r15 + r13]
	lea	edx, [rcx - 0x20]
	cmp	edx, 0x29
	ja	.label_94
	jmp	qword ptr [(rdx * 8) + label_99]
.label_578:
	mov	byte ptr [rsp + 0xc8], 0
	mov	byte ptr [rsp + 0xe8], 0
	mov	byte ptr [rsp + 0xe3], 0
	mov	byte ptr [rsp + 0xdf], 0
	mov	byte ptr [rsp + 0xb5], 0
	mov	byte ptr [rsp + 0xd5], 0
	mov	byte ptr [rsp + 0xd3], 0
	mov	byte ptr [rsp + 0xb1], 0
	mov	byte ptr [rsp + 0xd1], 0
	jmp	.label_102
.label_577:
	mov	byte ptr [rsp + 0xe5], 0
	mov	byte ptr [rsp + 0xe3], 0
	mov	byte ptr [rsp + 0xd9], 0
	mov	word ptr [rsp + 0xd3], 0
	jmp	.label_102
.label_579:
	mov	byte ptr [rsp + 0xe3], 0
	mov	byte ptr [rsp + 0xd3], 0
	jmp	.label_102
.label_94:
	cmp	cl, 0x2a
	jne	.label_124
	lea	rbp, [r15 + r13 + 1]
	inc	r13
	mov	al, 1
	mov	dword ptr [rsp + 0x1c], eax
	test	ebx, ebx
	jle	.label_125
	mov	rdi, qword ptr [r12]
	call	vstrtoimax
	mov	rcx, rax
	mov	qword ptr [rsp + 0x28], rcx
	sub	rax, -0x80000000
	shr	rax, 0x20
	jne	.label_128
	add	r12, 8
	dec	ebx
	jmp	.label_133
.label_131:
	add	r12, 8
	mov	ebx, r15d
	dec	ebx
	jmp	.label_106
.label_124:
	add	ecx, -0x30
	cmp	ecx, 9
	ja	.label_84
	nop	word ptr [rax + rax]
.label_139:
	movsx	ecx, byte ptr [r15 + rax + 2]
	add	ecx, -0x30
	inc	rax
	cmp	ecx, 0xa
	jb	.label_139
	lea	rbp, [r15 + rax + 1]
	inc	rax
	mov	dword ptr [rsp + 0x1c], 0
	mov	r13, rax
	jmp	.label_133
.label_84:
	lea	rbp, [r15 + r13]
	mov	dword ptr [rsp + 0x1c], 0
	jmp	.label_133
.label_125:
	xor	eax, eax
	mov	qword ptr [rsp + 0x28], rax
.label_133:
	cmp	byte ptr [rbp], 0x2e
	jne	.label_147
	mov	byte ptr [rsp + 0xd3], 0
	movsx	eax, byte ptr [rbp + 1]
	cmp	eax, 0x2a
	jne	.label_74
	add	rbp, 2
	add	r13, 2
	mov	al, 1
	mov	dword ptr [rsp + 0x14], eax
	test	ebx, ebx
	jle	.label_149
	mov	rdi, qword ptr [r12]
	call	vstrtoimax
	mov	dword ptr [rsp + 0x18], 0xffffffff
	test	rax, rax
	js	.label_152
	mov	ecx, 0x80000000
	cmp	rax, rcx
	jge	.label_156
	mov	dword ptr [rsp + 0x18], eax
.label_152:
	add	r12, 8
	mov	qword ptr [rsp + 0x30], r12
	dec	ebx
	jmp	.label_82
.label_147:
	mov	qword ptr [rsp + 0x30], r12
	jmp	.label_63
.label_74:
	inc	r13
	add	eax, -0x30
	cmp	eax, 9
	mov	qword ptr [rsp + 0x30], r12
	ja	.label_65
	inc	rbp
	nop	word ptr cs:[rax + rax]
.label_76:
	inc	r13
	movsx	eax, byte ptr [rbp + 1]
	inc	rbp
	add	eax, -0x30
	cmp	eax, 0xa
	jb	.label_76
	jmp	.label_63
.label_65:
	inc	rbp
.label_63:
	mov	dword ptr [rsp + 0x14], 0
	jmp	.label_82
.label_149:
	mov	dword ptr [rsp + 0x18], 0
	mov	qword ptr [rsp + 0x30], r12
	jmp	.label_82
.label_95:
	inc	rbp
.label_82:
	movzx	r12d, byte ptr [rbp]
	movzx	eax, r12b
	mov	ecx, r12d
	add	cl, 0xb4
	movzx	ecx, cl
	cmp	cl, 0x2e
	ja	.label_91
	bt	r14, rcx
	jb	.label_95
.label_91:
	cmp	byte ptr [rsp + rax + 0x70], 0
	je	.label_97
	movsx	r14d, r12b
	test	ebx, ebx
	jle	.label_100
	dec	ebx
	mov	dword ptr [rsp + 0x4c], ebx
	mov	rax, qword ptr [rsp + 0x30]
	mov	rcx, qword ptr [rax]
	add	rax, 8
	mov	qword ptr [rsp + 0x30], rax
	jmp	.label_104
.label_100:
	mov	dword ptr [rsp + 0x4c], ebx
	mov	ecx, OFFSET FLAT:label_108
.label_104:
	mov	qword ptr [rsp + 0x20], rcx
	add	r14d, -0x41
	cmp	r14d, 0x37
	ja	.label_110
	movabs	rax, 0x7100000071
	bt	rax, r14
	jae	.label_113
	mov	ebx, 1
	mov	eax, OFFSET FLAT:label_115
	jmp	.label_116
.label_113:
	movabs	rax, 0x90410800800000
	bt	rax, r14
	mov	ebx, 1
	mov	eax, OFFSET FLAT:label_117
	jae	.label_110
.label_116:
	mov	qword ptr [rsp + 0x38], rax
	lea	rdi, [r13 + rbx + 2]
	call	xmalloc
	mov	rcx, -1
	mov	rdi, rax
	mov	rsi, r15
	mov	rdx, r13
	mov	r13, rax
	call	__mempcpy_chk
	mov	rcx, -1
	mov	rdi, rax
	mov	rsi, qword ptr [rsp + 0x38]
	mov	rdx, rbx
	call	__mempcpy_chk
	mov	byte ptr [rax], r12b
	mov	byte ptr [rax + 1], 0
	cmp	r14d, 0x37
	mov	r12, qword ptr [rsp + 0x30]
	mov	ebx, dword ptr [rsp + 0x4c]
	ja	.label_73
	jmp	qword ptr [(r14 * 8) + label_135]
.label_532:
	mov	rcx, qword ptr [rsp + 0x20]
	mov	al, byte ptr [rcx]
	cmp	al, 0x27
	je	.label_105
	cmp	al, 0x22
	jne	.label_138
.label_105:
	mov	al, byte ptr [rcx + 1]
	test	al, al
	je	.label_138
	mov	r14d, ebx
	movzx	eax, al
	mov	dword ptr [rsp + 0x5c], eax
	fild	dword ptr [rsp + 0x5c]
	fstp	xword ptr [rsp + 0x38]
	cmp	byte ptr [rcx + 2], 0
	je	.label_142
	mov	al, byte ptr [rip + posixly_correct]
	test	al, al
	mov	ebx, dword ptr [rsp + 0x1c]
	mov	r15d, dword ptr [rsp + 0x14]
	jne	.label_143
	add	rcx, 2
	mov	qword ptr [rsp + 0x20], rcx
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_103
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	xor	edi, edi
	xor	esi, esi
	xor	eax, eax
	mov	rdx, rcx
	mov	rcx, qword ptr [rsp + 0x20]
	call	error
	jmp	.label_143
.label_138:
	mov	r14d, ebx
	mov	rbx, rcx
	call	__errno_location
	mov	dword ptr [rax], 0
	mov	rdi, rbx
	lea	rsi, [rsp + 0x50]
	call	cl_strtold
	fstp	xword ptr [rsp + 0x38]
	mov	rsi, qword ptr [rsp + 0x50]
	mov	rdi, rbx
	call	verify_numeric
.label_142:
	mov	ebx, dword ptr [rsp + 0x1c]
	mov	r15d, dword ptr [rsp + 0x14]
.label_143:
	test	bl, bl
	je	.label_64
	test	r15b, r15b
	mov	ebx, r14d
	je	.label_92
	fld	xword ptr [rsp + 0x38]
	fstp	xword ptr [rsp]
	xor	eax, eax
	mov	rdi, r13
	mov	rsi, qword ptr [rsp + 0x28]
	mov	edx, dword ptr [rsp + 0x18]
	call	xprintf
	jmp	.label_73
.label_64:
	test	r15b, r15b
	mov	ebx, r14d
	je	.label_79
	fld	xword ptr [rsp + 0x38]
	fstp	xword ptr [rsp]
	xor	eax, eax
	mov	rdi, r13
	mov	esi, dword ptr [rsp + 0x18]
	call	xprintf
	jmp	.label_73
.label_533:
	mov	rcx, qword ptr [rsp + 0x20]
	mov	al, byte ptr [rcx]
	cmp	al, 0x27
	je	.label_90
	cmp	al, 0x22
	jne	.label_93
.label_90:
	movzx	r15d, byte ptr [rcx + 1]
	test	r15, r15
	je	.label_93
	cmp	byte ptr [rcx + 2], 0
	je	.label_96
	mov	al, byte ptr [rip + posixly_correct]
	test	al, al
	mov	r14d, dword ptr [rsp + 0x1c]
	jne	.label_98
	add	rcx, 2
	mov	qword ptr [rsp + 0x20], rcx
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_103
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	xor	edi, edi
	xor	esi, esi
	xor	eax, eax
	mov	rdx, rcx
	mov	rcx, qword ptr [rsp + 0x20]
	call	error
	jmp	.label_98
.label_93:
	mov	r14, rcx
	call	__errno_location
	mov	dword ptr [rax], 0
	xor	edx, edx
	xor	ecx, ecx
	mov	rdi, r14
	lea	rsi, [rsp + 0x50]
	call	__strtoul_internal
	mov	r15, rax
	mov	rsi, qword ptr [rsp + 0x50]
	mov	rdi, r14
	call	verify_numeric
.label_96:
	mov	r14d, dword ptr [rsp + 0x1c]
.label_98:
	test	r14b, r14b
	je	.label_120
	mov	eax, dword ptr [rsp + 0x14]
	test	al, al
	je	.label_121
	xor	eax, eax
	mov	rdi, r13
	mov	rsi, qword ptr [rsp + 0x28]
	mov	edx, dword ptr [rsp + 0x18]
	mov	rcx, r15
	jmp	.label_123
.label_535:
	mov	rdi, qword ptr [rsp + 0x20]
	call	vstrtoimax
	mov	rcx, rax
	mov	eax, dword ptr [rsp + 0x1c]
	test	al, al
	je	.label_126
	mov	eax, dword ptr [rsp + 0x14]
	test	al, al
	je	.label_129
	xor	eax, eax
	mov	rdi, r13
	mov	rsi, qword ptr [rsp + 0x28]
	mov	edx, dword ptr [rsp + 0x18]
	jmp	.label_123
.label_120:
	mov	eax, dword ptr [rsp + 0x14]
	test	al, al
	je	.label_134
	xor	eax, eax
	mov	rdi, r13
	mov	esi, dword ptr [rsp + 0x18]
	jmp	.label_137
.label_92:
	fld	xword ptr [rsp + 0x38]
	fstp	xword ptr [rsp]
	xor	eax, eax
	mov	rdi, r13
	mov	rsi, qword ptr [rsp + 0x28]
	call	xprintf
	jmp	.label_73
.label_79:
	fld	xword ptr [rsp + 0x38]
	fstp	xword ptr [rsp]
	xor	eax, eax
	mov	rdi, r13
	call	xprintf
	jmp	.label_73
.label_110:
	xor	ebx, ebx
	mov	rax, r15
	jmp	.label_116
.label_534:
	mov	rax, qword ptr [rsp + 0x20]
	movsx	ecx, byte ptr [rax]
	mov	eax, dword ptr [rsp + 0x1c]
	test	al, al
	je	.label_158
	xor	eax, eax
	mov	rdi, r13
	mov	rsi, qword ptr [rsp + 0x28]
	mov	edx, ecx
	call	xprintf
	jmp	.label_73
.label_536:
	mov	eax, dword ptr [rsp + 0x1c]
	test	al, al
	je	.label_150
	mov	eax, dword ptr [rsp + 0x14]
	test	al, al
	je	.label_151
	xor	eax, eax
	mov	rdi, r13
	mov	rsi, qword ptr [rsp + 0x28]
	mov	edx, dword ptr [rsp + 0x18]
	mov	rcx, qword ptr [rsp + 0x20]
.label_123:
	call	xprintf
	jmp	.label_73
.label_126:
	mov	eax, dword ptr [rsp + 0x14]
	test	al, al
	je	.label_62
	xor	eax, eax
	mov	rdi, r13
	mov	esi, dword ptr [rsp + 0x18]
	jmp	.label_136
.label_121:
	xor	eax, eax
	mov	rdi, r13
	mov	rsi, qword ptr [rsp + 0x28]
.label_137:
	mov	rdx, r15
	call	xprintf
	jmp	.label_73
.label_134:
	xor	eax, eax
	mov	rdi, r13
	mov	rsi, r15
	jmp	.label_75
.label_158:
	xor	eax, eax
	mov	rdi, r13
	mov	esi, ecx
	call	xprintf
	jmp	.label_73
.label_150:
	mov	eax, dword ptr [rsp + 0x14]
	test	al, al
	je	.label_81
	xor	eax, eax
	mov	rdi, r13
	mov	esi, dword ptr [rsp + 0x18]
	jmp	.label_146
.label_129:
	xor	eax, eax
	mov	rdi, r13
	mov	rsi, qword ptr [rsp + 0x28]
.label_136:
	mov	rdx, rcx
	call	xprintf
	jmp	.label_73
.label_62:
	xor	eax, eax
	mov	rdi, r13
	mov	rsi, rcx
	jmp	.label_75
.label_151:
	xor	eax, eax
	mov	rdi, r13
	mov	rsi, qword ptr [rsp + 0x28]
.label_146:
	mov	rdx, qword ptr [rsp + 0x20]
	call	xprintf
	jmp	.label_73
.label_81:
	xor	eax, eax
	mov	rdi, r13
	mov	rsi, qword ptr [rsp + 0x20]
.label_75:
	call	xprintf
.label_73:
	mov	rdi, r13
	call	free
	movabs	r14, 0x410150000001
	jmp	.label_106
.label_112:
	movzx	esi, al
	call	__overflow
	jmp	.label_80
.label_122:
	mov	esi, 0x25
	call	__overflow
	jmp	.label_106
	nop	dword ptr [rax]
.label_111:
	movsx	ecx, al
	cmp	ecx, 0x5c
	je	.label_114
	cmp	ecx, 0x25
	jne	.label_101
	lea	rbp, [r15 + 1]
	mov	al, byte ptr [r15 + 1]
	cmp	al, 0x71
	je	.label_127
	cmp	al, 0x62
	je	.label_118
	cmp	al, 0x25
	jne	.label_119
	mov	rdi, qword ptr [rip + stdout]
	mov	rax, qword ptr [rdi + 0x28]
	cmp	rax, qword ptr [rdi + 0x30]
	jae	.label_122
	lea	rcx, [rax + 1]
	mov	qword ptr [rdi + 0x28], rcx
	mov	byte ptr [rax], 0x25
	jmp	.label_106
	nop	dword ptr [rax + rax]
.label_114:
	xor	esi, esi
	mov	rdi, r15
	call	print_esc
	movsxd	rbp, eax
	add	rbp, r15
	jmp	.label_106
	nop	word ptr cs:[rax + rax]
.label_101:
	mov	rdi, qword ptr [rip + stdout]
	mov	rcx, qword ptr [rdi + 0x28]
	cmp	rcx, qword ptr [rdi + 0x30]
	jae	.label_112
	lea	rdx, [rcx + 1]
	mov	qword ptr [rdi + 0x28], rdx
	mov	byte ptr [rcx], al
.label_80:
	mov	rbp, r15
.label_106:
	mov	al, byte ptr [rbp + 1]
	inc	rbp
	test	al, al
	mov	r15, rbp
	jne	.label_111
.label_148:
	mov	ecx, dword ptr [rsp + 0x48]
	sub	ecx, ebx
	movsxd	rax, ecx
	mov	edx, ebx
	mov	rbx, qword ptr [rsp + 0x68]
	lea	rbx, [rbx + rax*8]
	test	edx, edx
	mov	rbp, qword ptr [rsp + 0x60]
	jle	.label_140
	test	ecx, ecx
	mov	r15d, edx
	jg	.label_109
.label_140:
	test	edx, edx
	jle	.label_144
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_145
	mov	edx, 5
	call	dcgettext
	mov	rbp, rax
	mov	rdi, qword ptr [rbx]
	call	quote
	mov	rcx, rax
	xor	edi, edi
	xor	esi, esi
	xor	eax, eax
	mov	rdx, rbp
	call	error
.label_144:
	movzx	ebx, byte ptr [rip + exit_status]
.label_66:
	mov	eax, ebx
	add	rsp, 0x178
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_83:
	mov	rdi, qword ptr [rip + stdout]
	mov	rcx, qword ptr [rip + Version]
	xor	ebx, ebx
	mov	esi, OFFSET FLAT:label_24
	mov	edx, OFFSET FLAT:label_17
	mov	r8d, OFFSET FLAT:label_155
	xor	r9d, r9d
	xor	eax, eax
	call	version_etc
	jmp	.label_66
.label_107:
	cmp	r15d, 3
	jl	.label_68
	dec	r15d
	mov	rbp, qword ptr [r14 + 0x10]
	jmp	.label_69
.label_97:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_72
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	inc	ebp
	sub	ebp, r15d
	mov	edi, 1
	xor	esi, esi
	xor	eax, eax
	mov	rdx, rcx
	mov	ecx, ebp
	mov	r8, r15
	call	error
.label_128:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_86
	jmp	.label_87
.label_156:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_89
.label_87:
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
	mov	rdi, qword ptr [r12]
	call	quote
	mov	rcx, rax
	mov	edi, 1
	xor	esi, esi
	xor	eax, eax
	mov	rdx, rbx
	call	error
.label_68:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_157
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
.label_77:
	xor	edi, edi
	call	usage
	.section	.text
	.align	32
	#Procedure 0x4028c1
	.globl sub_4028c1
	.type sub_4028c1, @function
sub_4028c1:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4028d0
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
	#Procedure 0x4028df
	.globl sub_4028df
	.type sub_4028df, @function
sub_4028df:

	nop	
	.section	.text
	.align	32
	#Procedure 0x4028e0
	.globl quotearg_char_mem
	.type quotearg_char_mem, @function
quotearg_char_mem:

	sub	rsp, 0x38
	mov	ecx, edx
	mov	r8, rsi
	mov	rdx, rdi
	mov	rsi, qword ptr [rip + label_48]
	mov	qword ptr [rsp + 0x30], rsi
	movups	xmm0, xmmword ptr [rip + label_49]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0, xmmword ptr [rip + label_50]
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
	#Procedure 0x40294e
	.globl sub_40294e
	.type sub_40294e, @function
sub_40294e:

	nop	
.label_161:
	fstp	st(0)
	mov	dword ptr [r15], ebp
	fld	xword ptr [rsp + 0x14]
.label_160:
	test	r14, r14
	je	.label_159
	mov	qword ptr [r14], r12
.label_159:
	add	rsp, 0x20
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40296e
	.globl sub_40296e
	.type sub_40296e, @function
sub_40296e:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40297b

	.globl cl_strtold
	.type cl_strtold, @function
cl_strtold:
	push	rbp
	push	r15
	push	r14
	push	r12
	push	rbx
	sub	rsp, 0x20
	mov	r14, rsi
	mov	rbx, rdi
	lea	rsi, [rsp]
	call	strtold
	mov	r12, qword ptr [rsp]
	cmp	byte ptr [r12], 0
	je	.label_160
	fstp	xword ptr [rsp + 0x14]
	call	__errno_location
	mov	r15, rax
	mov	ebp, dword ptr [r15]
	lea	rsi, [rsp + 8]
	mov	rdi, rbx
	call	c_strtold
	mov	rax, qword ptr [rsp + 8]
	cmp	r12, rax
	jae	.label_161
	mov	qword ptr [rsp], rax
	mov	r12, rax
	jmp	.label_160
.label_162:
	call	abort
	.section	.text
	.align	32
	#Procedure 0x4029d5
	.globl sub_4029d5
	.type sub_4029d5, @function
sub_4029d5:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x4029d9
	.globl quotearg_custom_mem
	.type quotearg_custom_mem, @function
quotearg_custom_mem:

	sub	rsp, 0x38
	mov	rax, qword ptr [rip + label_48]
	mov	qword ptr [rsp + 0x30], rax
	movups	xmm0, xmmword ptr [rip + label_49]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0, xmmword ptr [rip + label_50]
	movaps	xmmword ptr [rsp + 0x10], xmm0
	movups	xmm0, xmmword ptr [rip + default_quoting_options]
	movaps	xmmword ptr [rsp], xmm0
	mov	dword ptr [rsp], 0xa
	test	rdi, rdi
	je	.label_162
	test	rsi, rsi
	je	.label_162
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
	#Procedure 0x402a40

	.globl xvprintf
	.type xvprintf, @function
xvprintf:
	push	rbp
	push	r14
	push	rbx
	mov	rax, rsi
	mov	rcx, rdi
	mov	rdi, qword ptr [rip + stdout]
	mov	esi, 1
	mov	rdx, rcx
	mov	rcx, rax
	call	__vfprintf_chk
	mov	ebx, eax
	test	ebx, ebx
	jns	.label_163
	mov	rdi, qword ptr [rip + stdout]
	call	ferror
	test	eax, eax
	jne	.label_163
	mov	r14d, dword ptr [rip + exit_failure]
	call	__errno_location
	mov	ebp, dword ptr [rax]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_164
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	xor	eax, eax
	mov	edi, r14d
	mov	esi, ebp
	mov	rdx, rcx
	call	error
.label_163:
	mov	eax, ebx
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x402aaf
	.globl sub_402aaf
	.type sub_402aaf, @function
sub_402aaf:

	nop	
	.section	.text
	.align	32
	#Procedure 0x402ab0
	.globl quote_n_mem
	.type quote_n_mem, @function
quote_n_mem:

	mov	ecx, OFFSET FLAT:quote_quoting_options
	jmp	quotearg_n_options
	.section	.text
	.align	32
	#Procedure 0x402aba
	.globl sub_402aba
	.type sub_402aba, @function
sub_402aba:

	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x402ac0

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
	je	.label_165
	cmp	r15, -2
	jb	.label_165
	xor	edi, edi
	call	hard_locale
	test	al, al
	jne	.label_165
	movzx	eax, byte ptr [r14]
	mov	dword ptr [rbx], eax
	mov	r15d, 1
.label_165:
	mov	rax, r15
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	ret	
	.section	.text
	.align	32
	#Procedure 0x402b16
	.globl sub_402b16
	.type sub_402b16, @function
sub_402b16:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x402b20

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
	jne	.label_166
	mov	rax, qword ptr [rbx + 0x28]
	cmp	rax, qword ptr [rbx + 0x20]
	jne	.label_166
	cmp	qword ptr [rbx + 0x48], 0
	je	.label_167
.label_166:
	mov	rdi, rbx
	mov	rsi, rbp
	mov	edx, r14d
	pop	rbx
	pop	r14
	pop	rbp
	jmp	fseeko
.label_167:
	mov	rdi, rbx
	call	fileno
	mov	edi, eax
	mov	rsi, rbp
	mov	edx, r14d
	call	lseek
	mov	rcx, rax
	mov	eax, 0xffffffff
	cmp	rcx, -1
	je	.label_168
	and	byte ptr [rbx], 0xef
	mov	qword ptr [rbx + 0x90], rcx
	xor	eax, eax
.label_168:
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x402b8e
	.globl sub_402b8e
	.type sub_402b8e, @function
sub_402b8e:

	nop	
.label_170:
	mov	ecx, 1
.label_169:
	mov	rdi, rcx
	mov	rsi, rax
	jmp	calloc
	.section	.text
	.align	32
	#Procedure 0x402ba0
	.globl sub_402ba0
	.type sub_402ba0, @function
sub_402ba0:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x402ba5

	.globl rpl_calloc
	.type rpl_calloc, @function
rpl_calloc:
	test	rdi, rdi
	mov	eax, 1
	je	.label_170
	test	rsi, rsi
	mov	ecx, 1
	je	.label_169
	mov	rax, rsi
	imul	rax, rdi
	xor	edx, edx
	div	rsi
	cmp	rax, rdi
	mov	rax, rsi
	mov	rcx, rdi
	je	.label_169
	push	rax
	call	__errno_location
	mov	dword ptr [rax], 0xc
	xor	eax, eax
	pop	rcx
	ret	
.label_171:
	call	__errno_location
	mov	dword ptr [rax], 0
	lea	rsi, [rsp]
	xor	edx, edx
	xor	ecx, ecx
	mov	rdi, rbx
	call	__strtol_internal
	mov	r14, rax
	mov	rsi, qword ptr [rsp]
	mov	rdi, rbx
	call	verify_numeric
.label_172:
	mov	rax, r14
	add	rsp, 8
	pop	rbx
	pop	r14
	ret	
	.section	.text
	.align	32
	#Procedure 0x402c15
	.globl sub_402c15
	.type sub_402c15, @function
sub_402c15:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x402c1a

	.globl vstrtoimax
	.type vstrtoimax, @function
vstrtoimax:
	push	r14
	push	rbx
	push	rax
	mov	rbx, rdi
	mov	al, byte ptr [rbx]
	cmp	al, 0x27
	je	.label_173
	cmp	al, 0x22
	jne	.label_171
.label_173:
	movzx	r14d, byte ptr [rbx + 1]
	test	r14, r14
	je	.label_171
	cmp	byte ptr [rbx + 2], 0
	je	.label_172
	mov	al, byte ptr [rip + posixly_correct]
	test	al, al
	jne	.label_172
	add	rbx, 2
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_103
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	xor	edi, edi
	xor	esi, esi
	xor	eax, eax
	mov	rdx, rcx
	mov	rcx, rbx
	call	error
	jmp	.label_172
.label_174:
	call	xalloc_die
	.section	.text
	.align	32
	#Procedure 0x402c75
	.globl sub_402c75
	.type sub_402c75, @function
sub_402c75:

	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x402c7b
	.globl xcharalloc
	.type xcharalloc, @function
xcharalloc:

	push	rbx
	mov	rbx, rdi
	call	malloc
	test	rbx, rbx
	je	.label_175
	test	rax, rax
	je	.label_174
.label_175:
	pop	rbx
	ret	
.label_179:
	cmp	byte ptr [rbx], 0
	je	.label_178
	xor	edi, edi
	cmp	r14, rbx
	je	.label_183
	mov	esi, OFFSET FLAT:label_181
	jmp	.label_182
.label_183:
	mov	esi, OFFSET FLAT:label_180
.label_182:
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
	mov	rdi, r14
	call	quote
	mov	rcx, rax
	xor	edi, edi
	xor	esi, esi
	xor	eax, eax
	mov	rdx, rbx
.label_177:
	call	error
	mov	byte ptr [rip + exit_status],  1
.label_178:
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x402cda
	.globl sub_402cda
	.type sub_402cda, @function
sub_402cda:

	nop
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x402ce3

	.globl verify_numeric
	.type verify_numeric, @function
verify_numeric:
	push	rbp
	push	r14
	push	rbx
	mov	rbx, rsi
	mov	r14, rdi
	call	__errno_location
	mov	ebp, dword ptr [rax]
	test	ebp, ebp
	je	.label_179
	mov	rdi, r14
	call	quote
	mov	rcx, rax
	xor	edi, edi
	mov	edx, OFFSET FLAT:label_176
	xor	eax, eax
	mov	esi, ebp
	jmp	.label_177
	.section	.text
	.align	32
	#Procedure 0x402d10
	.globl quotearg_n
	.type quotearg_n, @function
quotearg_n:

	mov	rdx, -1
	mov	ecx, OFFSET FLAT:default_quoting_options
	jmp	quotearg_n_options
	.section	.text
	.align	32
	#Procedure 0x402d1e
	.globl sub_402d1e
	.type sub_402d1e, @function
sub_402d1e:

	nop	
	.section	.text
	.align	32
	#Procedure 0x402d20

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
	js	.label_184
	mov	eax, dword ptr [r13]
	mov	rbp, qword ptr [rip + slotvec]
	cmp	dword ptr [rip + nslots],  r12d
	mov	qword ptr [rsp + 0x18], r13
	mov	dword ptr [rsp], eax
	mov	qword ptr [rsp + 0x10], rbx
	mov	qword ptr [rsp + 8], r15
	jg	.label_187
	cmp	r12d, 0x7fffffff
	je	.label_189
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
	jne	.label_185
	movups	xmm0, xmmword ptr [rip + slotvec0]
	movups	xmmword ptr [r14], xmm0
.label_185:
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
.label_187:
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
	jbe	.label_190
	mov	rax, qword ptr [rsp + 0x18]
	mov	ebp, dword ptr [rsp]
	jmp	.label_186
.label_190:
	lea	rax, [rbp + r13]
	lea	r12, [rbp + r13 + 8]
	inc	r15
	mov	qword ptr [rax], r15
	mov	eax, OFFSET FLAT:slot0
	cmp	r14, rax
	mov	ebp, dword ptr [rsp]
	je	.label_188
	mov	rdi, r14
	call	free
.label_188:
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
.label_186:
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
.label_184:
	call	abort
.label_189:
	call	xalloc_die
	.section	.text
	.align	32
	#Procedure 0x402edd
	.globl sub_402edd
	.type sub_402edd, @function
sub_402edd:

	nop	dword ptr [rax]
.label_191:
	call	abort
	.section	.text
	.align	32
	#Procedure 0x402ee5
	.globl sub_402ee5
	.type sub_402ee5, @function
sub_402ee5:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x402ef4
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
	je	.label_191
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
	.align	32
	#Procedure 0x402f50

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
	je	.label_192
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
.label_192:
	call	abort
	.section	.text
	.align	32
	#Procedure 0x402fb8
	.globl sub_402fb8
	.type sub_402fb8, @function
sub_402fb8:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x402fc0

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
	#Procedure 0x402fd9
	.globl sub_402fd9
	.type sub_402fd9, @function
sub_402fd9:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x402fe0

	.globl xalloc_die
	.type xalloc_die, @function
xalloc_die:
	push	rbx
	mov	ebx, dword ptr [rip + exit_failure]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_193
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	xor	esi, esi
	mov	edx, OFFSET FLAT:label_176
	xor	eax, eax
	mov	edi, ebx
	call	error
	call	abort
	.section	.text
	.align	32
	#Procedure 0x403010

	.globl xprintf
	.type xprintf, @function
xprintf:
	sub	rsp, 0xd8
	test	al, al
	je	.label_194
	movaps	xmmword ptr [rsp + 0x50], xmm0
	movaps	xmmword ptr [rsp + 0x60], xmm1
	movaps	xmmword ptr [rsp + 0x70], xmm2
	movaps	xmmword ptr [rsp + 0x80], xmm3
	movaps	xmmword ptr [rsp + 0x90], xmm4
	movaps	xmmword ptr [rsp + 0xa0], xmm5
	movaps	xmmword ptr [rsp + 0xb0], xmm6
	movaps	xmmword ptr [rsp + 0xc0], xmm7
.label_194:
	mov	qword ptr [rsp + 0x48], r9
	mov	qword ptr [rsp + 0x40], r8
	mov	qword ptr [rsp + 0x38], rcx
	mov	qword ptr [rsp + 0x30], rdx
	mov	qword ptr [rsp + 0x28], rsi
	lea	rax, [rsp + 0x20]
	mov	qword ptr [rsp + 0x10], rax
	lea	rax, [rsp + 0xe0]
	mov	qword ptr [rsp + 8], rax
	mov	dword ptr [rsp + 4], 0x30
	mov	dword ptr [rsp], 8
	lea	rsi, [rsp]
	call	xvprintf
	add	rsp, 0xd8
	ret	
	.section	.text
	.align	32
	#Procedure 0x4030a2
	.globl sub_4030a2
	.type sub_4030a2, @function
sub_4030a2:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4030b0
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
	je	.label_195
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
.label_195:
	call	abort
	.section	.text
	.align	32
	#Procedure 0x40311c
	.globl sub_40311c
	.type sub_40311c, @function
sub_40311c:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x403120

	.globl unicode_to_mb
	.type unicode_to_mb, @function
unicode_to_mb:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x58
	mov	r13, rcx
	mov	r14, rdx
	mov	r15, rsi
	mov	ebp, edi
	mov	al, byte ptr [rip + unicode_to_mb.initialized]
	test	al, al
	jne	.label_206
	call	locale_charset
	mov	rbx, rax
	mov	esi, OFFSET FLAT:label_200
	mov	rdi, rbx
	call	strcmp
	xor	ecx, ecx
	test	eax, eax
	sete	cl
	mov	dword ptr [rip + unicode_to_mb.is_utf8],  ecx
	je	.label_202
	mov	esi, OFFSET FLAT:label_200
	mov	rdi, rbx
	call	iconv_open
	mov	qword ptr [rip + unicode_to_mb.utf8_to_local],  rax
	cmp	rax, -1
	jne	.label_202
	mov	edi, OFFSET FLAT:label_199
	mov	esi, OFFSET FLAT:label_200
	call	iconv_open
	mov	qword ptr [rip + unicode_to_mb.utf8_to_local],  rax
.label_202:
	mov	byte ptr [rip + unicode_to_mb.initialized],  1
.label_206:
	mov	ecx, dword ptr [rip + unicode_to_mb.is_utf8]
	test	ecx, ecx
	jne	.label_205
	cmp	qword ptr [rip + unicode_to_mb.utf8_to_local],  -1
	jne	.label_205
	mov	esi, OFFSET FLAT:label_208
.label_204:
	mov	edi, ebp
	mov	rdx, r13
	call	r14
	jmp	.label_210
.label_205:
	cmp	ebp, 0x7f
	ja	.label_196
	mov	byte ptr [rsp + 0xa], bpl
	mov	esi, 1
	jmp	.label_198
.label_196:
	lea	rdi, [rsp + 0xa]
	mov	edx, 6
	mov	esi, ebp
	call	u8_uctomb_aux
	test	eax, eax
	js	.label_207
	mov	ecx, dword ptr [rip + unicode_to_mb.is_utf8]
	movsxd	rsi, eax
.label_198:
	test	ecx, ecx
	je	.label_209
	lea	rdi, [rsp + 0xa]
.label_197:
	mov	rdx, r13
	call	r15
.label_210:
	add	rsp, 0x58
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_209:
	lea	rax, [rsp + 0xa]
	mov	qword ptr [rsp + 0x28], rax
	mov	qword ptr [rsp + 0x20], rsi
	lea	r12, [rsp + 0x30]
	mov	qword ptr [rsp + 0x10], r12
	mov	qword ptr [rsp + 0x18], 0x19
	mov	rdi, qword ptr [rip + unicode_to_mb.utf8_to_local]
	lea	rsi, [rsp + 0x28]
	lea	rdx, [rsp + 0x20]
	lea	rcx, [rsp + 0x10]
	lea	r8, [rsp + 0x18]
	call	iconv
	cmp	rax, -1
	je	.label_201
	mov	rax, qword ptr [rsp + 0x20]
	test	rax, rax
	jne	.label_201
	mov	rdi, qword ptr [rip + unicode_to_mb.utf8_to_local]
	lea	rcx, [rsp + 0x10]
	lea	r8, [rsp + 0x18]
	xor	esi, esi
	xor	edx, edx
	call	iconv
	cmp	rax, -1
	je	.label_201
	mov	rsi, qword ptr [rsp + 0x10]
	sub	rsi, r12
	mov	rdi, r12
	jmp	.label_197
.label_201:
	xor	esi, esi
	jmp	.label_204
.label_207:
	mov	esi, OFFSET FLAT:label_203
	jmp	.label_204
	.section	.text
	.align	32
	#Procedure 0x4032a5
	.globl sub_4032a5
	.type sub_4032a5, @function
sub_4032a5:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4032b0

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
	jne	.label_212
	call	locale_charset
	movsx	ecx, byte ptr [rax]
	and	ecx, 0xffffffdf
	cmp	ecx, 0x47
	je	.label_219
	cmp	ecx, 0x55
	jne	.label_211
	movsx	ecx, byte ptr [rax + 1]
	and	ecx, 0xffffffdf
	cmp	ecx, 0x54
	jne	.label_211
	movsx	ecx, byte ptr [rax + 2]
	and	ecx, 0xffffffdf
	cmp	ecx, 0x46
	jne	.label_211
	cmp	byte ptr [rax + 3], 0x2d
	jne	.label_211
	cmp	byte ptr [rax + 4], 0x38
	jne	.label_211
	cmp	byte ptr [rax + 5], 0
	jne	.label_211
	cmp	byte ptr [rbx], 0x60
	mov	ecx, OFFSET FLAT:label_216
	mov	eax, OFFSET FLAT:label_217
	jmp	.label_218
.label_219:
	movsx	ecx, byte ptr [rax + 1]
	and	ecx, 0xffffffdf
	cmp	ecx, 0x42
	jne	.label_211
	cmp	byte ptr [rax + 2], 0x31
	jne	.label_211
	cmp	byte ptr [rax + 3], 0x38
	jne	.label_211
	cmp	byte ptr [rax + 4], 0x30
	jne	.label_211
	cmp	byte ptr [rax + 5], 0x33
	jne	.label_211
	cmp	byte ptr [rax + 6], 0x30
	jne	.label_211
	cmp	byte ptr [rax + 7], 0
	je	.label_213
.label_211:
	cmp	ebp, 9
	mov	ecx, OFFSET FLAT:label_214
	mov	eax, OFFSET FLAT:label_215
.label_218:
	cmove	rax, rcx
.label_212:
	add	rsp, 8
	pop	rbx
	pop	rbp
	ret	
.label_213:
	cmp	byte ptr [rbx], 0x60
	mov	ecx, OFFSET FLAT:label_220
	mov	eax, OFFSET FLAT:label_221
	jmp	.label_218
	.section	.text
	.align	32
	#Procedure 0x403375
	.globl sub_403375
	.type sub_403375, @function
sub_403375:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x403380

	.globl print_esc
	.type print_esc, @function
print_esc:
	push	rbp
	push	r15
	push	r14
	push	r12
	push	rbx
	mov	r14, rdi
	movsx	r12d, byte ptr [r14 + 1]
	cmp	r12d, 0x78
	jne	.label_244
	call	__ctype_b_loc
	mov	rcx, qword ptr [rax]
	movzx	edx, byte ptr [r14 + 2]
	test	byte ptr [rcx + rdx*2 + 1], 0x10
	je	.label_242
	movsx	eax, dl
	mov	ebx, eax
	add	bl, 0x9f
	cmp	bl, 5
	ja	.label_251
	add	eax, -0x57
	jmp	.label_247
.label_244:
	lea	rbx, [r14 + 1]
	mov	eax, r12d
	and	al, 0xf8
	cmp	al, 0x30
	jne	.label_257
	cmp	r12b, 0x30
	sete	al
	and	al, sil
	movzx	eax, al
	lea	rcx, [rbx + rax]
	movsx	eax, byte ptr [rbx + rax]
	mov	edx, eax
	and	dl, 0xf8
	cmp	dl, 0x30
	jne	.label_260
	add	eax, -0x30
	movsx	edx, byte ptr [rcx + 1]
	inc	rcx
	mov	ebx, edx
	and	bl, 0xf8
	cmp	bl, 0x30
	jne	.label_224
	lea	eax, [rdx + rax*8 - 0x30]
	movsx	edx, byte ptr [rcx + 1]
	inc	rcx
	mov	ebx, edx
	and	bl, 0xf8
	cmp	bl, 0x30
	jne	.label_224
	lea	eax, [rdx + rax*8 - 0x30]
	inc	rcx
	jmp	.label_224
.label_257:
	test	r12b, r12b
	je	.label_228
	mov	edi, OFFSET FLAT:label_229
	mov	edx, 0xc
	mov	esi, r12d
	call	memchr
	test	rax, rax
	je	.label_233
	lea	rbx, [r14 + 2]
	mov	eax, r12d
	add	eax, -0x61
	cmp	eax, 0x15
	ja	.label_234
	jmp	qword ptr [(rax * 8) + label_236]
.label_545:
	mov	rdi, qword ptr [rip + stdout]
	mov	rax, qword ptr [rdi + 0x28]
	cmp	rax, qword ptr [rdi + 0x30]
	jae	.label_241
	lea	rcx, [rax + 1]
	mov	qword ptr [rdi + 0x28], rcx
	mov	byte ptr [rax], 7
	jmp	.label_222
.label_251:
	add	dl, 0xbf
	cmp	dl, 5
	ja	.label_246
	add	eax, -0x37
	jmp	.label_247
.label_260:
	xor	eax, eax
.label_224:
	mov	rbx, rcx
	mov	rdi, qword ptr [rip + stdout]
	mov	rcx, qword ptr [rdi + 0x28]
	cmp	rcx, qword ptr [rdi + 0x30]
	jae	.label_248
	lea	rdx, [rcx + 1]
	mov	qword ptr [rdi + 0x28], rdx
	mov	byte ptr [rcx], al
	jmp	.label_222
.label_246:
	add	eax, -0x30
.label_247:
	movzx	edx, byte ptr [r14 + 3]
	test	byte ptr [rcx + rdx*2 + 1], 0x10
	jne	.label_256
	lea	rbx, [r14 + 3]
	jmp	.label_258
.label_256:
	movsx	ecx, dl
	shl	eax, 4
	mov	ebx, ecx
	add	bl, 0x9f
	cmp	bl, 6
	jae	.label_261
	add	ecx, -0x57
	jmp	.label_238
.label_261:
	add	dl, 0xbf
	cmp	dl, 6
	jae	.label_262
	add	ecx, -0x37
	jmp	.label_238
.label_262:
	add	ecx, -0x30
.label_238:
	add	eax, ecx
	lea	rbx, [r14 + 4]
.label_258:
	mov	rdi, qword ptr [rip + stdout]
	mov	rcx, qword ptr [rdi + 0x28]
	cmp	rcx, qword ptr [rdi + 0x30]
	jae	.label_223
	lea	rdx, [rcx + 1]
	mov	qword ptr [rdi + 0x28], rdx
	mov	byte ptr [rcx], al
.label_222:
	not	r14d
	add	ebx, r14d
	mov	eax, ebx
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_233:
	mov	eax, r12d
	or	al, 0x20
	cmp	al, 0x75
	jne	.label_228
	xor	ebp, ebp
	cmp	r12b, 0x75
	setne	bpl
	lea	r15d, [rbp*4 + 4]
	lea	rbx, [r14 + 2]
	call	__ctype_b_loc
	mov	r8, qword ptr [rax]
	lea	ecx, [rbp*4 + 5]
	xor	ebp, ebp
	nop	word ptr [rax + rax]
.label_253:
	movzx	edi, byte ptr [rbx]
	test	byte ptr [r8 + rdi*2 + 1], 0x10
	je	.label_242
	movsx	esi, dil
	mov	edx, ebp
	shl	edx, 4
	mov	eax, esi
	add	al, 0x9f
	cmp	al, 5
	ja	.label_243
	add	esi, -0x57
	jmp	.label_237
	.section	.text
	.align	32
	#Procedure 0x403595
	.globl sub_403595
	.type sub_403595, @function
sub_403595:

	nop	word ptr cs:[rax + rax]
.label_243:
	add	dil, 0xbf
	cmp	dil, 5
	ja	.label_249
	add	esi, -0x37
	jmp	.label_237
	.section	.text
	.align	32
	#Procedure 0x4035af
	.globl sub_4035af
	.type sub_4035af, @function
sub_4035af:

	nop	
.label_249:
	add	esi, -0x30
.label_237:
	mov	ebp, esi
	add	ebp, edx
	inc	rbx
	dec	ecx
	cmp	ecx, 1
	jg	.label_253
	cmp	ebp, 0x9f
	ja	.label_255
	lea	eax, [rbp - 0x24]
	cmp	eax, 0x3c
	ja	.label_235
	movabs	rcx, 0x1000000010000001
	bt	rcx, rax
	jae	.label_235
.label_255:
	mov	eax, ebp
	and	eax, 0xfffff800
	cmp	eax, 0xd800
	je	.label_235
	mov	rdi, qword ptr [rip + stdout]
	xor	edx, edx
	mov	esi, ebp
	call	print_unicode_char
	jmp	.label_222
.label_228:
	mov	rdi, qword ptr [rip + stdout]
	mov	rax, qword ptr [rdi + 0x28]
	cmp	rax, qword ptr [rdi + 0x30]
	jae	.label_225
	lea	rcx, [rax + 1]
	mov	qword ptr [rdi + 0x28], rcx
	mov	byte ptr [rax], 0x5c
.label_252:
	movzx	esi, byte ptr [rbx]
	test	esi, esi
	je	.label_222
	mov	rdi, qword ptr [rip + stdout]
	mov	rax, qword ptr [rdi + 0x28]
	cmp	rax, qword ptr [rdi + 0x30]
	jae	.label_230
	lea	rcx, [rax + 1]
	mov	qword ptr [rdi + 0x28], rcx
	mov	byte ptr [rax], sil
.label_254:
	lea	rbx, [r14 + 2]
	jmp	.label_222
.label_546:
	mov	rdi, qword ptr [rip + stdout]
	mov	rax, qword ptr [rdi + 0x28]
	cmp	rax, qword ptr [rdi + 0x30]
	jae	.label_239
	lea	rcx, [rax + 1]
	mov	qword ptr [rdi + 0x28], rcx
	mov	byte ptr [rax], 8
	jmp	.label_222
.label_234:
	mov	rdi, qword ptr [rip + stdout]
	mov	rax, qword ptr [rdi + 0x28]
	cmp	rax, qword ptr [rdi + 0x30]
	jae	.label_245
	lea	rcx, [rax + 1]
	mov	qword ptr [rdi + 0x28], rcx
	mov	byte ptr [rax], r12b
	jmp	.label_222
.label_548:
	mov	rdi, qword ptr [rip + stdout]
	mov	rax, qword ptr [rdi + 0x28]
	cmp	rax, qword ptr [rdi + 0x30]
	jae	.label_226
	lea	rcx, [rax + 1]
	mov	qword ptr [rdi + 0x28], rcx
	mov	byte ptr [rax], 0x1b
	jmp	.label_222
.label_549:
	mov	rdi, qword ptr [rip + stdout]
	mov	rax, qword ptr [rdi + 0x28]
	cmp	rax, qword ptr [rdi + 0x30]
	jae	.label_259
	lea	rcx, [rax + 1]
	mov	qword ptr [rdi + 0x28], rcx
	mov	byte ptr [rax], 0xc
	jmp	.label_222
.label_550:
	mov	rdi, qword ptr [rip + stdout]
	mov	rax, qword ptr [rdi + 0x28]
	cmp	rax, qword ptr [rdi + 0x30]
	jae	.label_263
	lea	rcx, [rax + 1]
	mov	qword ptr [rdi + 0x28], rcx
	mov	byte ptr [rax], 0xa
	jmp	.label_222
.label_551:
	mov	rdi, qword ptr [rip + stdout]
	mov	rax, qword ptr [rdi + 0x28]
	cmp	rax, qword ptr [rdi + 0x30]
	jae	.label_227
	lea	rcx, [rax + 1]
	mov	qword ptr [rdi + 0x28], rcx
	mov	byte ptr [rax], 0xd
	jmp	.label_222
.label_552:
	mov	rdi, qword ptr [rip + stdout]
	mov	rax, qword ptr [rdi + 0x28]
	cmp	rax, qword ptr [rdi + 0x30]
	jae	.label_231
	lea	rcx, [rax + 1]
	mov	qword ptr [rdi + 0x28], rcx
	mov	byte ptr [rax], 9
	jmp	.label_222
.label_553:
	mov	rdi, qword ptr [rip + stdout]
	mov	rax, qword ptr [rdi + 0x28]
	cmp	rax, qword ptr [rdi + 0x30]
	jae	.label_240
	lea	rcx, [rax + 1]
	mov	qword ptr [rdi + 0x28], rcx
	mov	byte ptr [rax], 0xb
	jmp	.label_222
.label_223:
	movzx	esi, al
	call	__overflow
	jmp	.label_222
.label_248:
	movzx	esi, al
	call	__overflow
	jmp	.label_222
.label_225:
	mov	esi, 0x5c
	call	__overflow
	jmp	.label_252
.label_230:
	call	__overflow
	jmp	.label_254
.label_241:
	mov	esi, 7
	call	__overflow
	jmp	.label_222
.label_239:
	mov	esi, 8
	call	__overflow
	jmp	.label_222
.label_245:
	movzx	esi, r12b
	call	__overflow
	jmp	.label_222
.label_226:
	mov	esi, 0x1b
	call	__overflow
	jmp	.label_222
.label_259:
	mov	esi, 0xc
	call	__overflow
	jmp	.label_222
.label_263:
	mov	esi, 0xa
	call	__overflow
	jmp	.label_222
.label_227:
	mov	esi, 0xd
	call	__overflow
	jmp	.label_222
.label_231:
	mov	esi, 9
	call	__overflow
	jmp	.label_222
.label_240:
	mov	esi, 0xb
	call	__overflow
	jmp	.label_222
.label_242:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_232
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	mov	edi, 1
	xor	esi, esi
	xor	eax, eax
	mov	rdx, rcx
	call	error
.label_547:
	xor	edi, edi
	call	exit
.label_235:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_250
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	mov	edi, 1
	xor	esi, esi
	xor	eax, eax
	mov	rdx, rcx
	mov	ecx, r12d
	mov	r8d, r15d
	mov	r9d, ebp
	call	error
	nop	
	.section	.text
	.align	32
	#Procedure 0x4038a0

	.globl c_strtold
	.type c_strtold, @function
c_strtold:
	push	rbp
	push	r15
	push	r14
	push	rbx
	sub	rsp, 0x18
	mov	r15, rsi
	mov	r14, rdi
	cmp	qword ptr [rip + c_locale_cache],  0
	jne	.label_264
	mov	edi, 0x1fbf
	mov	esi, OFFSET FLAT:label_268
	xor	edx, edx
	call	newlocale
	mov	qword ptr [rip + c_locale_cache],  rax
.label_264:
	mov	rdi, qword ptr [rip + c_locale_cache]
	test	rdi, rdi
	je	.label_265
	call	uselocale
	mov	rbx, rax
	test	rbx, rbx
	je	.label_265
	mov	rdi, r14
	mov	rsi, r15
	call	strtold
	fstp	xword ptr [rsp + 0xc]
	call	__errno_location
	mov	r14, rax
	mov	ebp, dword ptr [r14]
	mov	rdi, rbx
	call	uselocale
	test	rax, rax
	je	.label_267
	mov	dword ptr [r14], ebp
	fld	xword ptr [rsp + 0xc]
	jmp	.label_266
.label_267:
	call	abort
	.section	.text
	.align	32
	#Procedure 0x403920
	.globl sub_403920
	.type sub_403920, @function
sub_403920:

	nop	word ptr cs:[rax + rax]
.label_265:
	fldz	
	test	r15, r15
	je	.label_266
	mov	qword ptr [r15], r14
.label_266:
	add	rsp, 0x18
	pop	rbx
	pop	r14
	pop	r15
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x403940

	.globl version_etc_va
	.type version_etc_va, @function
version_etc_va:
	movsxd	r10, dword ptr [r8]
	cmp	r10, 0x28
	ja	.label_269
	mov	r9, r10
	add	r9, qword ptr [r8 + 0x10]
	lea	r10d, [r10 + 8]
	mov	dword ptr [r8], r10d
	jmp	.label_271
.label_269:
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
.label_271:
	sub	rsp, 0x58
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp], rax
	xor	r9d, r9d
	test	rax, rax
	je	.label_272
	cmp	r10d, 0x29
	jae	.label_281
	movsxd	r9, r10d
	add	r9, qword ptr [r8 + 0x10]
	add	r10d, 8
	mov	dword ptr [r8], r10d
	jmp	.label_270
.label_281:
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
.label_270:
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp + 8], rax
	mov	r9d, 1
	test	rax, rax
	je	.label_272
	cmp	r10d, 0x29
	jae	.label_279
	movsxd	r9, r10d
	add	r9, qword ptr [r8 + 0x10]
	add	r10d, 8
	mov	dword ptr [r8], r10d
	jmp	.label_280
.label_279:
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
.label_280:
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp + 0x10], rax
	mov	r9d, 2
	test	rax, rax
	je	.label_272
	cmp	r10d, 0x29
	jae	.label_277
	movsxd	r9, r10d
	add	r9, qword ptr [r8 + 0x10]
	add	r10d, 8
	mov	dword ptr [r8], r10d
	jmp	.label_278
.label_277:
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
.label_278:
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp + 0x18], rax
	mov	r9d, 3
	test	rax, rax
	je	.label_272
	cmp	r10d, 0x29
	jae	.label_275
	movsxd	r9, r10d
	add	r9, qword ptr [r8 + 0x10]
	add	r10d, 8
	mov	dword ptr [r8], r10d
	jmp	.label_276
.label_275:
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
.label_276:
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp + 0x20], rax
	mov	r9d, 4
	test	rax, rax
	je	.label_272
	cmp	r10d, 0x29
	jae	.label_273
	movsxd	r9, r10d
	add	r9, qword ptr [r8 + 0x10]
	add	r10d, 8
	mov	dword ptr [r8], r10d
	jmp	.label_274
.label_273:
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
.label_274:
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp + 0x28], rax
	mov	r9d, 5
	test	rax, rax
	je	.label_272
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp + 0x30], rax
	mov	r9d, 6
	test	rax, rax
	je	.label_272
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp + 0x38], rax
	mov	r9d, 7
	test	rax, rax
	je	.label_272
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp + 0x40], rax
	mov	r9d, 8
	test	rax, rax
	je	.label_272
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp + 0x48], rax
	cmp	rax, 1
	mov	r9d, 9
	sbb	r9, -1
.label_272:
	lea	r8, [rsp]
	call	version_etc_arn
	add	rsp, 0x58
	ret	
	.section	.text
	.align	32
	#Procedure 0x403b22
	.globl sub_403b22
	.type sub_403b22, @function
sub_403b22:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x403b30

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
	#Procedure 0x403b47
	.globl sub_403b47
	.type sub_403b47, @function
sub_403b47:

	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x403b50
	.globl version_etc_ar
	.type version_etc_ar, @function
version_etc_ar:

	mov	r9, -1
	nop	word ptr [rax + rax]
.label_282:
	cmp	qword ptr [r8 + r9*8 + 8], 0
	lea	r9, [r9 + 1]
	jne	.label_282
	jmp	version_etc_arn
	.section	.text
	.align	32
	#Procedure 0x403b71
	.globl sub_403b71
	.type sub_403b71, @function
sub_403b71:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x403b80
	.globl close_stdout_set_ignore_EPIPE
	.type close_stdout_set_ignore_EPIPE, @function
close_stdout_set_ignore_EPIPE:

	mov	byte ptr [rip + ignore_EPIPE],  dil
	ret	
	.section	.text
	.align	32
	#Procedure 0x403b88
	.globl sub_403b88
	.type sub_403b88, @function
sub_403b88:

	nop	dword ptr [rax + rax]
.label_287:
	test	rax, rax
	mov	ebx, 0x80
	cmovne	rbx, rax
	test	rbx, rbx
	js	.label_283
	mov	qword ptr [rsi], rbx
.label_285:
	mov	rsi, rbx
	call	realloc
	test	rbx, rbx
	je	.label_284
	test	rax, rax
	je	.label_283
.label_284:
	pop	rbx
	ret	
.label_286:
	call	xalloc_die
	.section	.text
	.align	32
	#Procedure 0x403bbd
	.globl sub_403bbd
	.type sub_403bbd, @function
sub_403bbd:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x403bc9
	.globl x2realloc
	.type x2realloc, @function
x2realloc:

	push	rbx
	mov	rax, qword ptr [rsi]
	test	rdi, rdi
	je	.label_287
	movabs	rcx, 0x5555555555555554
	cmp	rax, rcx
	jae	.label_286
	mov	rbx, rax
	shr	rbx, 1
	add	rbx, rax
	inc	rbx
	mov	qword ptr [rsi], rbx
	jne	.label_285
	call	free
	xor	eax, eax
	jmp	.label_284
.label_283:
	call	xalloc_die
	.section	.text
	.align	32
	#Procedure 0x403c00

	.globl print_unicode_char
	.type print_unicode_char, @function
print_unicode_char:
	mov	eax, esi
	mov	rcx, rdi
	test	edx, edx
	mov	esi, OFFSET FLAT:exit_failure_callback
	mov	edx, OFFSET FLAT:fallback_failure_callback
	cmovne	rdx, rsi
	mov	esi, OFFSET FLAT:fwrite_success_callback
	mov	edi, eax
	jmp	unicode_to_mb
	.section	.text
	.align	32
	#Procedure 0x403c21
	.globl sub_403c21
	.type sub_403c21, @function
sub_403c21:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x403c30
	.globl quotearg_char
	.type quotearg_char, @function
quotearg_char:

	sub	rsp, 0x38
	mov	ecx, esi
	mov	rax, rdi
	mov	rdx, qword ptr [rip + label_48]
	mov	qword ptr [rsp + 0x30], rdx
	movups	xmm0, xmmword ptr [rip + label_49]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0, xmmword ptr [rip + label_50]
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
	#Procedure 0x403c9f
	.globl sub_403c9f
	.type sub_403c9f, @function
sub_403c9f:

	nop	
	.section	.text
	.align	32
	#Procedure 0x403ca0
	.globl quotearg_n_mem
	.type quotearg_n_mem, @function
quotearg_n_mem:

	mov	ecx, OFFSET FLAT:default_quoting_options
	jmp	quotearg_n_options
	.section	.text
	.align	32
	#Procedure 0x403caa
	.globl sub_403caa
	.type sub_403caa, @function
sub_403caa:

	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x403cb0
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
	#Procedure 0x403cc8
	.globl sub_403cc8
	.type sub_403cc8, @function
sub_403cc8:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x403cd0
	.globl close_stdout_set_file_name
	.type close_stdout_set_file_name, @function
close_stdout_set_file_name:

	mov	qword ptr [rip + file_name],  rdi
	ret	
	.section	.text
	.align	32
	#Procedure 0x403cd8
	.globl sub_403cd8
	.type sub_403cd8, @function
sub_403cd8:

	nop	dword ptr [rax + rax]
.label_288:
	call	abort
	.section	.text
	.align	32
	#Procedure 0x403ce5
	.globl quotearg_custom
	.type quotearg_custom, @function
quotearg_custom:

	sub	rsp, 0x38
	mov	rax, rdx
	mov	rcx, qword ptr [rip + label_48]
	mov	qword ptr [rsp + 0x30], rcx
	movups	xmm0, xmmword ptr [rip + label_49]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0, xmmword ptr [rip + label_50]
	movaps	xmmword ptr [rsp + 0x10], xmm0
	movups	xmm0, xmmword ptr [rip + default_quoting_options]
	movaps	xmmword ptr [rsp], xmm0
	mov	dword ptr [rsp], 0xa
	test	rdi, rdi
	je	.label_288
	test	rsi, rsi
	je	.label_288
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
	.align	32
	#Procedure 0x403d50
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
	#Procedure 0x403d5f
	.globl sub_403d5f
	.type sub_403d5f, @function
sub_403d5f:

	nop	
	.section	.text
	.align	32
	#Procedure 0x403d60

	.globl fwrite_success_callback
	.type fwrite_success_callback, @function
fwrite_success_callback:
	push	rax
	mov	rax, rdx
	mov	rcx, rsi
	mov	esi, 1
	mov	rdx, rcx
	mov	rcx, rax
	call	fwrite
	xor	eax, eax
	pop	rcx
	ret	
	.section	.text
	.align	32
	#Procedure 0x403d7b
	.globl sub_403d7b
	.type sub_403d7b, @function
sub_403d7b:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x403d80
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
	#Procedure 0x403d98
	.globl sub_403d98
	.type sub_403d98, @function
sub_403d98:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x403da0
	.globl emit_bug_reporting_address
	.type emit_bug_reporting_address, @function
emit_bug_reporting_address:

	push	rax
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_289
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:label_290
	xor	eax, eax
	mov	rsi, rcx
	call	__printf_chk
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_292
	mov	edx, 5
	call	dcgettext
	mov	rsi, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:label_17
	mov	ecx, OFFSET FLAT:label_18
	xor	eax, eax
	call	__printf_chk
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_291
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	pop	rax
	jmp	fputs_unlocked
	.section	.text
	.align	32
	#Procedure 0x403e14
	.globl sub_403e14
	.type sub_403e14, @function
sub_403e14:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x403e20
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
	#Procedure 0x403e33
	.globl sub_403e33
	.type sub_403e33, @function
sub_403e33:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x403e40
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
	#Procedure 0x403eb5
	.globl sub_403eb5
	.type sub_403eb5, @function
sub_403eb5:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x403ec0
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
	#Procedure 0x403ef6
	.globl sub_403ef6
	.type sub_403ef6, @function
sub_403ef6:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x403f00
	.globl xcalloc
	.type xcalloc, @function
xcalloc:

	push	rax
	movabs	rax, 0x7fffffffffffffff
	xor	edx, edx
	div	rsi
	cmp	rax, rdi
	jb	.label_293
	call	rpl_calloc
	test	rax, rax
	je	.label_293
	pop	rcx
	ret	
.label_293:
	call	xalloc_die
	.section	.text
	.align	32
	#Procedure 0x403f26
	.globl sub_403f26
	.type sub_403f26, @function
sub_403f26:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x403f30

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
.label_410:
	mov	r11, rbp
	xor	r14d, r14d
	mov	ecx, r15d
	cmp	r15d, 0xa
	ja	.label_408
	mov	edi, 7
	mov	r13b, 1
	xor	esi, esi
	mov	r8, qword ptr [rsp + 0x30]
	jmp	qword ptr [(rcx * 8) + label_385]
.label_604:
	mov	byte ptr [rsp + 7], r10b
	mov	edi, OFFSET FLAT:label_294
	mov	esi, r15d
	mov	rbx, r11
	mov	ebp, r9d
	call	gettext_quote
	mov	qword ptr [rsp + 0x78], rax
	mov	edi, OFFSET FLAT:label_215
	mov	esi, r15d
	call	gettext_quote
	mov	r9d, ebp
	mov	r10b, byte ptr [rsp + 7]
	mov	r11, rbx
	mov	qword ptr [rsp + 0x70], rax
.label_605:
	mov	dword ptr [rsp + 0x50], r9d
	mov	byte ptr [rsp + 7], r10b
	test	r12b, 1
	mov	r14d, 0
	mov	rcx, qword ptr [rsp + 0x78]
	jne	.label_312
	mov	al, byte ptr [rcx]
	test	al, al
	mov	r14d, 0
	je	.label_312
	xor	r14d, r14d
	nop	word ptr cs:[rax + rax]
.label_325:
	cmp	r14, r11
	jae	.label_321
	mov	rdx, qword ptr [rsp + 8]
	mov	byte ptr [rdx + r14], al
.label_321:
	movzx	eax, byte ptr [rcx + r14 + 1]
	inc	r14
	test	al, al
	jne	.label_325
.label_312:
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
	jmp	.label_332
.label_597:
	xor	edi, edi
	xor	r14d, r14d
	mov	r13d, eax
	xor	esi, esi
	jmp	.label_332
.label_600:
	mov	al, 1
.label_598:
	mov	r12b, 1
.label_601:
	test	r12b, 1
	mov	cl, 1
	je	.label_349
	mov	ecx, eax
.label_349:
	mov	al, cl
.label_599:
	test	r12b, 1
	jne	.label_352
	test	r11, r11
	je	.label_296
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx], 0x27
.label_296:
	mov	r14d, 1
	jmp	.label_356
.label_352:
	xor	r14d, r14d
.label_356:
	mov	ecx, OFFSET FLAT:label_215
	mov	qword ptr [rsp + 0x48], rcx
	mov	ecx, 1
	mov	qword ptr [rsp + 0x40], rcx
	mov	r13d, eax
	mov	sil, r12b
	mov	edi, 2
	jmp	.label_332
.label_602:
	test	r12b, 1
	jne	.label_367
	test	r11, r11
	je	.label_369
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax], 0x22
.label_369:
	mov	r14d, 1
	jmp	.label_373
.label_603:
	mov	r13b, 1
	mov	edi, 5
	xor	r14d, r14d
	mov	eax, OFFSET FLAT:label_214
	mov	qword ptr [rsp + 0x48], rax
	mov	eax, 1
	mov	qword ptr [rsp + 0x40], rax
	mov	sil, 1
	jmp	.label_332
.label_367:
	xor	r14d, r14d
.label_373:
	mov	eax, OFFSET FLAT:label_214
	mov	qword ptr [rsp + 0x48], rax
	mov	eax, 1
	mov	qword ptr [rsp + 0x40], rax
	mov	r13b, 1
	mov	sil, r12b
	mov	edi, 5
	nop	word ptr cs:[rax + rax]
.label_332:
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
	jmp	.label_390
	.section	.text
	.align	32
	#Procedure 0x40421d
	.globl sub_40421d
	.type sub_40421d, @function
sub_40421d:

	nop	dword ptr [rax]
.label_326:
	inc	rsi
.label_390:
	cmp	rbp, -1
	je	.label_304
	cmp	rsi, rbp
	jne	.label_306
	jmp	.label_308
	.section	.text
	.align	32
	#Procedure 0x404233
	.globl sub_404233
	.type sub_404233, @function
sub_404233:

	nop	word ptr cs:[rax + rax]
.label_304:
	mov	rcx, -1
	cmp	byte ptr [rdi + rsi], 0
	je	.label_313
.label_306:
	cmp	byte ptr [rsp + 0x2f], 0
	je	.label_412
	mov	rax, qword ptr [rsp + 0x40]
	lea	rbx, [rsi + rax]
	cmp	rax, 2
	jb	.label_300
	cmp	rbp, -1
	jne	.label_300
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
.label_300:
	cmp	rbx, rbp
	jbe	.label_333
.label_412:
	xor	r8d, r8d
.label_336:
	movzx	r15d, byte ptr [rdi + rsi]
	cmp	r15, 0x7e
	ja	.label_335
	xor	edx, edx
	mov	r13b, 1
	mov	cl, 0x6e
	mov	bl, 0x61
	xor	eax, eax
	jmp	qword ptr [(r15 * 8) + label_341]
.label_491:
	test	rsi, rsi
	jne	.label_328
	jmp	.label_348
	.section	.text
	.align	32
	#Procedure 0x4042d5
	.globl sub_4042d5
	.type sub_4042d5, @function
sub_4042d5:

	nop	word ptr cs:[rax + rax]
.label_333:
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
	jne	.label_359
	cmp	byte ptr [rsp + 6], 0
	mov	rdi, qword ptr [rsp + 0x30]
	mov	r11, rbx
	mov	r10d, r15d
	mov	rax, qword ptr [rsp + 0x38]
	mov	r9d, ebp
	mov	rsi, r12
	mov	r12, rax
	mov	rbp, qword ptr [rsp + 0x20]
	je	.label_336
	jmp	.label_371
.label_359:
	mov	rdi, qword ptr [rsp + 0x30]
	mov	r11, rbx
	mov	r10d, r15d
	mov	rax, qword ptr [rsp + 0x38]
	mov	r9d, ebp
	mov	rsi, r12
	mov	r12, rax
	mov	rbp, qword ptr [rsp + 0x20]
	jmp	.label_336
.label_495:
	xor	eax, eax
	cmp	rbp, -1
	je	.label_378
	test	rsi, rsi
	jne	.label_380
	cmp	rbp, 1
	je	.label_348
	xor	r13d, r13d
	jmp	.label_314
.label_484:
	cmp	byte ptr [rsp + 0x17], 0
	je	.label_387
	cmp	byte ptr [rsp + 6], 0
	jne	.label_351
	cmp	r12d, 2
	jne	.label_394
	mov	eax, r9d
	and	al, 1
	jne	.label_394
	cmp	r14, r11
	jae	.label_398
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], 0x27
.label_398:
	lea	rax, [r14 + 1]
	cmp	rax, r11
	jae	.label_401
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + rax], 0x24
.label_401:
	lea	rax, [r14 + 2]
	cmp	rax, r11
	jae	.label_391
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + rax], 0x27
.label_391:
	add	r14, 3
	mov	r9b, 1
.label_394:
	mov	rcx, r14
	cmp	rcx, r11
	jae	.label_411
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + rcx], 0x5c
.label_411:
	lea	r14, [rcx + 1]
	mov	al, 1
	mov	r15b, 0x30
	cmp	r12d, 2
	je	.label_297
	lea	rdx, [rsi + 1]
	cmp	rdx, rbp
	jae	.label_297
	mov	dl, byte ptr [rdi + rdx]
	add	dl, 0xd0
	cmp	dl, 9
	ja	.label_297
	cmp	r14, r11
	jae	.label_307
	mov	rdx, qword ptr [rsp + 8]
	mov	byte ptr [rdx + r14], 0x30
.label_307:
	lea	rdx, [rcx + 2]
	cmp	rdx, r11
	jae	.label_404
	mov	rbx, qword ptr [rsp + 8]
	mov	byte ptr [rbx + rdx], 0x30
.label_404:
	add	rcx, 3
	xor	r13d, r13d
	mov	r14, rcx
	jmp	.label_314
.label_485:
	mov	bl, 0x62
	jmp	.label_316
.label_486:
	mov	cl, 0x74
	jmp	.label_319
.label_487:
	mov	bl, 0x76
	jmp	.label_316
.label_488:
	mov	bl, 0x66
	jmp	.label_316
.label_489:
	mov	cl, 0x72
	jmp	.label_319
.label_492:
	mov	r15b, 0x27
	mov	al, 1
	mov	qword ptr [rsp + 0xa0], rax
	cmp	r12d, 2
	jne	.label_322
	cmp	byte ptr [rsp + 6], 0
	jne	.label_327
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
	jae	.label_330
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], 0x27
.label_330:
	lea	rax, [r14 + 1]
	cmp	rax, r11
	jae	.label_347
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + rax], 0x5c
.label_347:
	lea	rax, [r14 + 2]
	cmp	rax, r11
	jae	.label_350
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + rax], 0x27
.label_350:
	add	r14, 3
	xor	r9d, r9d
.label_322:
	xor	eax, eax
	mov	r13b, 1
	jmp	.label_314
.label_493:
	mov	r15b, 0x3f
	cmp	r12d, 5
	je	.label_357
	cmp	r12d, 2
	jne	.label_328
	cmp	byte ptr [rsp + 6], 0
	je	.label_328
	jmp	.label_327
.label_494:
	cmp	r12d, 2
	jne	.label_368
	cmp	byte ptr [rsp + 6], 0
	jne	.label_327
	mov	r15b, 0x5c
	xor	eax, eax
	xor	r13d, r13d
	jmp	.label_317
.label_335:
	mov	dword ptr [rsp + 0x54], r8d
	mov	dword ptr [rsp + 0x50], r9d
	mov	byte ptr [rsp + 7], r10b
	mov	qword ptr [rsp + 0x98], r11
	cmp	qword ptr [rsp + 0xa8], 1
	jne	.label_376
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
.label_309:
	and	r13b, 1
	mov	r8d, r13d
	or	r8b, byte ptr [rsp + 0x2a]
	mov	qword ptr [rsp + 0x60], r12
	cmp	r12, 1
	mov	r11, qword ptr [rsp + 0x98]
	mov	r10b, byte ptr [rsp + 7]
	mov	r12, qword ptr [rsp + 0x38]
	mov	r9d, dword ptr [rsp + 0x50]
	ja	.label_393
	test	r8b, r8b
	je	.label_393
	xor	eax, eax
	mov	rbp, qword ptr [rsp + 0x20]
	mov	r8d, dword ptr [rsp + 0x54]
	jmp	.label_314
.label_378:
	test	rsi, rsi
	jne	.label_372
	mov	cl, byte ptr [rdi + 1]
	test	cl, cl
	jne	.label_372
.label_348:
	mov	dl, 1
.label_490:
	cmp	byte ptr [rsp + 0x1f], 0
	je	.label_327
	xor	eax, eax
	mov	r13b, dl
	nop	word ptr [rax + rax]
.label_314:
	cmp	byte ptr [rsp + 0x2e], 0
	je	.label_299
	cmp	qword ptr [rsp + 0xf0], 0
	jne	.label_353
	jmp	.label_303
	.section	.text
	.align	32
	#Procedure 0x404624
	.globl sub_404624
	.type sub_404624, @function
sub_404624:

	nop	word ptr cs:[rax + rax]
.label_299:
	cmp	byte ptr [rsp + 0x2d], 0
	je	.label_303
.label_353:
	mov	ebx, r8d
	mov	r8, rsi
	mov	ecx, r15d
	shr	cl, 5
	movzx	edx, cl
	mov	esi, 1
	mov	ecx, r15d
	shl	esi, cl
	test	bl, bl
	jne	.label_310
	mov	rcx, qword ptr [rsp + 0xf0]
	and	esi, dword ptr [rcx + rdx*4]
	mov	ebx, r15d
	mov	rsi, r8
	je	.label_317
	jmp	.label_324
	.section	.text
	.align	32
	#Procedure 0x40466d
	.globl sub_40466d
	.type sub_40466d, @function
sub_40466d:

	nop	dword ptr [rax]
.label_303:
	test	r8b, r8b
	mov	ebx, r15d
	jne	.label_324
	jmp	.label_317
.label_310:
	mov	ebx, r15d
	mov	rsi, r8
	jmp	.label_324
.label_387:
	cmp	dword ptr [rsp + 0x90], 0
	jne	.label_326
	xor	r15d, r15d
	jmp	.label_328
.label_368:
	mov	cl, 0x5c
	cmp	byte ptr [rsp + 0x29], 0
	je	.label_319
	xor	eax, eax
	mov	r15b, 0x5c
	xor	r13d, r13d
	jmp	.label_317
.label_319:
	cmp	byte ptr [rsp + 0x1f], 0
	mov	ebx, ecx
	je	.label_327
.label_316:
	xor	eax, eax
	cmp	byte ptr [rsp + 0x17], 0
	mov	r13d, 0
	je	.label_314
	nop	word ptr cs:[rax + rax]
.label_324:
	cmp	byte ptr [rsp + 6], 0
	jne	.label_351
	cmp	r12d, 2
	jne	.label_354
	mov	eax, r9d
	and	al, 1
	jne	.label_354
	cmp	r14, r11
	jae	.label_407
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], 0x27
.label_407:
	lea	rax, [r14 + 1]
	cmp	rax, r11
	jae	.label_361
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + rax], 0x24
.label_361:
	lea	rax, [r14 + 2]
	cmp	rax, r11
	jae	.label_331
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + rax], 0x27
.label_331:
	add	r14, 3
	mov	r9b, 1
.label_354:
	cmp	r14, r11
	jae	.label_370
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], 0x5c
.label_370:
	inc	r14
	jmp	.label_388
.label_376:
	mov	qword ptr [rsp + 0x80], 0
	cmp	rbp, -1
	jne	.label_377
	mov	rbx, rsi
	call	strlen
	mov	rsi, rbx
	mov	rdi, qword ptr [rsp + 0x30]
	mov	rbp, rax
.label_377:
	lea	rax, [rdi + rsi]
	mov	qword ptr [rsp + 0x60], rax
	mov	r13b, 1
	xor	r12d, r12d
	lea	rax, [rsp + 0x80]
	mov	rcx, rax
	mov	qword ptr [rsp + 0x20], rbp
	mov	qword ptr [rsp + 0x58], rsi
.label_340:
	lea	rbx, [r12 + rsi]
	lea	rsi, [rdi + rbx]
	mov	rdx, rbp
	sub	rdx, rbx
	lea	rdi, [rsp + 0x94]
	call	rpl_mbrtowc
	mov	rbp, rax
	test	rbp, rbp
	je	.label_400
	cmp	rbp, -1
	movabs	rsi, 0x20000002b
	je	.label_403
	cmp	rbp, -2
	je	.label_406
	cmp	rbp, 1
	seta	al
	and	al, byte ptr [rsp + 0x2b]
	cmp	al, 1
	mov	rdi, qword ptr [rsp + 0x30]
	mov	r11, qword ptr [rsp + 0x98]
	jne	.label_383
	mov	rax, qword ptr [rsp + 0x60]
	lea	rax, [rax + r12]
	mov	ecx, 1
	nop	word ptr cs:[rax + rax]
.label_345:
	movsx	edx, byte ptr [rax + rcx]
	add	edx, -0x5b
	cmp	edx, 0x21
	ja	.label_305
	bt	rsi, rdx
	jb	.label_302
.label_305:
	inc	rcx
	cmp	rcx, rbp
	jb	.label_345
.label_383:
	mov	edi, dword ptr [rsp + 0x94]
	call	iswprint
	test	eax, eax
	jne	.label_363
	xor	r13d, r13d
.label_363:
	lea	rdi, [rsp + 0x80]
	add	r12, rbp
	mov	rbx, rdi
	call	mbsinit
	mov	rcx, rbx
	test	eax, eax
	mov	rdi, qword ptr [rsp + 0x30]
	mov	rbp, qword ptr [rsp + 0x20]
	mov	rsi, qword ptr [rsp + 0x58]
	je	.label_340
	jmp	.label_309
.label_297:
	xor	r13d, r13d
	jmp	.label_314
.label_372:
	mov	rbp, -1
	xor	r13d, r13d
	jmp	.label_314
.label_357:
	cmp	dword ptr [rsp + 0x8c], 0
	je	.label_328
	lea	rcx, [rsi + 2]
	cmp	rcx, rbp
	jae	.label_328
	cmp	byte ptr [rdi + rsi + 1], 0x3f
	jne	.label_328
	movsx	edx, byte ptr [rdi + rcx]
	xor	eax, eax
	cmp	edx, 0x3e
	ja	.label_339
	mov	rbx, rsi
	movabs	rsi, 0x7000a38200000000
	bt	rsi, rdx
	jae	.label_338
	cmp	byte ptr [rsp + 6], 0
	jne	.label_360
	cmp	r14, r11
	jae	.label_337
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], 0x3f
.label_337:
	lea	rax, [r14 + 1]
	cmp	rax, r11
	jae	.label_396
	mov	rsi, qword ptr [rsp + 8]
	mov	byte ptr [rsi + rax], 0x22
.label_396:
	lea	rax, [r14 + 2]
	cmp	rax, r11
	jae	.label_358
	mov	rsi, qword ptr [rsp + 8]
	mov	byte ptr [rsi + rax], 0x22
.label_358:
	lea	rax, [r14 + 3]
	cmp	rax, r11
	jae	.label_323
	mov	rsi, qword ptr [rsp + 8]
	mov	byte ptr [rsi + rax], 0x3f
.label_323:
	add	r14, 4
	xor	eax, eax
	mov	rsi, rcx
	mov	r15b, dl
	xor	r13d, r13d
	jmp	.label_314
.label_328:
	xor	eax, eax
.label_380:
	xor	r13d, r13d
	jmp	.label_314
.label_393:
	add	qword ptr [rsp + 0x60], rsi
	xor	eax, eax
	mov	rbp, qword ptr [rsp + 0x20]
	jmp	.label_375
	.section	.text
	.align	32
	#Procedure 0x404952
	.globl sub_404952
	.type sub_404952, @function
sub_404952:

	nop	word ptr cs:[rax + rax]
.label_329:
	inc	r14
	mov	r15b, byte ptr [rdi + rsi + 1]
	mov	rsi, rdx
.label_375:
	test	r8b, r8b
	je	.label_381
	mov	ecx, dword ptr [rsp + 0x54]
	test	cl, 1
	je	.label_382
	cmp	r14, r11
	jae	.label_355
	mov	rdx, qword ptr [rsp + 8]
	mov	byte ptr [rdx + r14], 0x5c
.label_355:
	inc	r14
	mov	dword ptr [rsp + 0x54], 0
	jmp	.label_382
	.section	.text
	.align	32
	#Procedure 0x40499c
	.globl sub_40499c
	.type sub_40499c, @function
sub_40499c:

	nop	dword ptr [rax]
.label_381:
	cmp	byte ptr [rsp + 6], 0
	jne	.label_371
	cmp	r12d, 2
	jne	.label_399
	mov	eax, r9d
	and	al, 1
	jne	.label_399
	cmp	r14, r11
	jae	.label_402
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], 0x27
.label_402:
	lea	rax, [r14 + 1]
	cmp	rax, r11
	jae	.label_397
	mov	rdx, qword ptr [rsp + 8]
	mov	byte ptr [rdx + rax], 0x24
.label_397:
	lea	rax, [r14 + 2]
	cmp	rax, r11
	jae	.label_365
	mov	rdx, qword ptr [rsp + 8]
	mov	byte ptr [rdx + rax], 0x27
.label_365:
	add	r14, 3
	mov	r9b, 1
.label_399:
	cmp	r14, r11
	jae	.label_389
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], 0x5c
.label_389:
	lea	rax, [r14 + 1]
	cmp	rax, r11
	jae	.label_295
	mov	edx, r15d
	shr	dl, 6
	or	dl, 0x30
	mov	rbx, qword ptr [rsp + 8]
	mov	byte ptr [rbx + rax], dl
.label_295:
	lea	rax, [r14 + 2]
	cmp	rax, r11
	jae	.label_301
	mov	edx, r15d
	shr	dl, 3
	and	dl, 7
	or	dl, 0x30
	mov	rbx, qword ptr [rsp + 8]
	mov	byte ptr [rbx + rax], dl
.label_301:
	add	r14, 3
	and	r15b, 7
	or	r15b, 0x30
	mov	al, 1
.label_382:
	lea	rdx, [rsi + 1]
	cmp	qword ptr [rsp + 0x60], rdx
	jbe	.label_317
	test	r9b, 1
	je	.label_318
	mov	ebx, eax
	and	bl, 1
	jne	.label_318
	mov	rbx, rsi
	cmp	r14, r11
	jae	.label_320
	mov	rsi, qword ptr [rsp + 8]
	mov	byte ptr [rsi + r14], 0x27
.label_320:
	lea	rsi, [r14 + 1]
	cmp	rsi, r11
	jae	.label_384
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + rsi], 0x27
.label_384:
	add	r14, 2
	xor	r9d, r9d
	mov	rsi, rbx
.label_318:
	cmp	r14, r11
	jae	.label_329
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + r14], r15b
	jmp	.label_329
	.section	.text
	.align	32
	#Procedure 0x404aa3
	.globl sub_404aa3
	.type sub_404aa3, @function
sub_404aa3:

	nop	word ptr cs:[rax + rax]
.label_317:
	test	r9b, 1
	je	.label_342
	and	al, 1
	jne	.label_342
	cmp	r14, r11
	jae	.label_344
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], 0x27
.label_344:
	lea	rax, [r14 + 1]
	cmp	rax, r11
	jae	.label_343
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + rax], 0x27
.label_343:
	add	r14, 2
	xor	r9d, r9d
.label_342:
	mov	ebx, r15d
.label_388:
	cmp	r14, r11
	jae	.label_379
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], bl
.label_379:
	inc	r14
	shl	r13b, 7
	sar	r13b, 7
	and	r13b, r10b
	mov	r10d, r13d
	jmp	.label_326
.label_403:
	xor	r13d, r13d
.label_400:
	mov	rdi, qword ptr [rsp + 0x30]
	mov	rsi, qword ptr [rsp + 0x58]
	jmp	.label_309
.label_406:
	mov	rbp, qword ptr [rsp + 0x20]
	cmp	rbp, rbx
	mov	rdi, qword ptr [rsp + 0x30]
	jbe	.label_334
	mov	rsi, qword ptr [rsp + 0x58]
.label_374:
	mov	rax, qword ptr [rsp + 0x60]
	cmp	byte ptr [rax + r12], 0
	je	.label_409
	lea	rax, [rsi + r12 + 1]
	inc	r12
	cmp	rax, rbp
	jb	.label_374
	xor	r13d, r13d
	jmp	.label_309
.label_334:
	xor	r13d, r13d
	mov	rsi, qword ptr [rsp + 0x58]
	jmp	.label_309
.label_409:
	xor	r13d, r13d
	jmp	.label_309
.label_339:
	xor	r13d, r13d
	jmp	.label_314
.label_338:
	xor	r13d, r13d
	mov	rsi, rbx
	jmp	.label_314
	.section	.text
	.align	32
	#Procedure 0x404b78
	.globl sub_404b78
	.type sub_404b78, @function
sub_404b78:

	nop	dword ptr [rax + rax]
.label_308:
	mov	rcx, rsi
.label_313:
	cmp	r12d, 2
	setne	al
	test	r14, r14
	setne	dl
	cmp	byte ptr [rsp + 6], 0
	je	.label_386
	or	al, dl
	je	.label_392
.label_386:
	cmp	r12d, 2
	setne	al
	cmp	byte ptr [rsp + 6], 0
	setne	dl
	mov	rsi, qword ptr [rsp + 0xa0]
	test	sil, 1
	mov	bl, byte ptr [rsp + 0x2c]
	mov	rsi, qword ptr [rsp + 0xb0]
	je	.label_395
	or	al, dl
	jne	.label_395
	test	r10b, 1
	jne	.label_405
	cmp	qword ptr [rsp + 0x68], 0
	je	.label_395
	test	r11, r11
	mov	r15d, r12d
	mov	al, bl
	mov	qword ptr [rsp + 0x20], rcx
	mov	r12d, esi
	mov	rbp, qword ptr [rsp + 0x68]
	je	.label_410
.label_395:
	mov	rdx, qword ptr [rsp + 0x48]
	test	rdx, rdx
	je	.label_413
	cmp	byte ptr [rsp + 6], 0
	mov	rcx, qword ptr [rsp + 8]
	jne	.label_298
	mov	al, byte ptr [rdx]
	test	al, al
	je	.label_298
	inc	rdx
	nop	word ptr cs:[rax + rax]
.label_311:
	cmp	r14, r11
	jae	.label_366
	mov	byte ptr [rcx + r14], al
.label_366:
	inc	r14
	movzx	eax, byte ptr [rdx]
	inc	rdx
	test	al, al
	jne	.label_311
	jmp	.label_298
.label_351:
	mov	qword ptr [rsp + 0x20], rbp
.label_371:
	mov	rdx, rdi
	jmp	.label_315
.label_327:
	mov	qword ptr [rsp + 0x20], rbp
.label_302:
	mov	rdx, rdi
	mov	eax, 2
.label_346:
	mov	qword ptr [rsp + 0x38], rax
.label_315:
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
.label_362:
	mov	r14, rax
.label_364:
	mov	rax, r14
	add	rsp, 0xb8
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_392:
	mov	rdx, rdi
	mov	qword ptr [rsp + 0x20], rcx
	jmp	.label_315
.label_405:
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
	jmp	.label_362
.label_413:
	mov	rcx, qword ptr [rsp + 8]
.label_298:
	cmp	r14, r11
	jae	.label_364
	mov	byte ptr [rcx + r14], 0
	jmp	.label_364
.label_360:
	mov	qword ptr [rsp + 0x20], rbp
	mov	rdx, rdi
	mov	eax, 5
	jmp	.label_346
.label_408:
	call	abort
	.section	.text
	.align	32
	#Procedure 0x404d37
	.globl sub_404d37
	.type sub_404d37, @function
sub_404d37:

	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x404d40
	.globl quotearg_free
	.type quotearg_free, @function
quotearg_free:

	push	r15
	push	r14
	push	rbx
	mov	r14, qword ptr [rip + slotvec]
	cmp	dword ptr [rip + nslots],  2
	jl	.label_414
	lea	r15, [r14 + 0x18]
	mov	ebx, 1
	nop	
.label_417:
	mov	rdi, qword ptr [r15]
	call	free
	inc	rbx
	movsxd	rax, dword ptr [rip + nslots]
	add	r15, 0x10
	cmp	rbx, rax
	jl	.label_417
.label_414:
	mov	rdi, qword ptr [r14 + 8]
	mov	eax, OFFSET FLAT:slot0
	cmp	rdi, rax
	je	.label_418
	call	free
	mov	qword ptr [rip + slotvec0],  0x100
	mov	qword ptr [rip + label_416], OFFSET FLAT:slot0
.label_418:
	mov	eax, OFFSET FLAT:slotvec0
	cmp	r14, rax
	je	.label_415
	mov	rdi, r14
	call	free
	mov	qword ptr [rip + slotvec], OFFSET FLAT:slotvec0
.label_415:
	mov	dword ptr [rip + nslots],  1
	pop	rbx
	pop	r14
	pop	r15
	ret	
	.section	.text
	.align	32
	#Procedure 0x404dd1
	.globl sub_404dd1
	.type sub_404dd1, @function
sub_404dd1:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x404de0
	.globl xfprintf
	.type xfprintf, @function
xfprintf:

	push	rbp
	push	r14
	push	rbx
	sub	rsp, 0xd0
	mov	rbx, rsi
	mov	r14, rdi
	test	al, al
	je	.label_419
	movaps	xmmword ptr [rsp + 0x50], xmm0
	movaps	xmmword ptr [rsp + 0x60], xmm1
	movaps	xmmword ptr [rsp + 0x70], xmm2
	movaps	xmmword ptr [rsp + 0x80], xmm3
	movaps	xmmword ptr [rsp + 0x90], xmm4
	movaps	xmmword ptr [rsp + 0xa0], xmm5
	movaps	xmmword ptr [rsp + 0xb0], xmm6
	movaps	xmmword ptr [rsp + 0xc0], xmm7
.label_419:
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
	lea	rcx, [rsp]
	mov	esi, 1
	mov	rdi, r14
	mov	rdx, rbx
	call	__vfprintf_chk
	mov	ebx, eax
	test	ebx, ebx
	jns	.label_420
	mov	rdi, r14
	call	ferror
	test	eax, eax
	jne	.label_420
	mov	r14d, dword ptr [rip + exit_failure]
	call	__errno_location
	mov	ebp, dword ptr [rax]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_164
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	xor	eax, eax
	mov	edi, r14d
	mov	esi, ebp
	mov	rdx, rcx
	call	error
.label_420:
	mov	eax, ebx
	add	rsp, 0xd0
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x404ecb
	.globl sub_404ecb
	.type sub_404ecb, @function
sub_404ecb:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x404ed0

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
	je	.label_430
	mov	edx, OFFSET FLAT:label_436
	xor	eax, eax
	mov	rdi, r14
	mov	r8, rbx
	call	__fprintf_chk
	jmp	.label_423
.label_430:
	mov	edx, OFFSET FLAT:label_425
	xor	eax, eax
	mov	rdi, r14
	mov	rcx, rbx
	mov	r8, r9
	call	__fprintf_chk
.label_423:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_429
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
	mov	esi, OFFSET FLAT:label_426
	mov	edx, 5
	call	dcgettext
	mov	rdi, rax
	mov	rsi, r14
	call	fputs_unlocked
	cmp	r12, 9
	ja	.label_431
	jmp	qword ptr [(r12 * 8) + label_432]
.label_511:
	add	rsp, 8
	jmp	.label_424
.label_431:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_439
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
	jmp	.label_424
.label_512:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_427
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
.label_513:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_421
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
.label_514:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_437
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
.label_515:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_434
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
	jmp	.label_424
.label_516:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_433
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
	jmp	.label_424
.label_517:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_435
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
	jmp	.label_424
.label_518:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_438
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
	jmp	.label_424
.label_520:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_422
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
	jmp	.label_424
.label_519:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_428
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
.label_424:
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	ret	
	.section	.text
	.align	32
	#Procedure 0x405228
	.globl sub_405228
	.type sub_405228, @function
sub_405228:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x405230
	.globl xvfprintf
	.type xvfprintf, @function
xvfprintf:

	push	rbp
	push	r14
	push	rbx
	mov	rax, rdx
	mov	rcx, rsi
	mov	rbx, rdi
	mov	esi, 1
	mov	rdx, rcx
	mov	rcx, rax
	call	__vfprintf_chk
	mov	ebp, eax
	test	ebp, ebp
	jns	.label_440
	mov	rdi, rbx
	call	ferror
	test	eax, eax
	jne	.label_440
	mov	r14d, dword ptr [rip + exit_failure]
	call	__errno_location
	mov	ebx, dword ptr [rax]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_164
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	xor	eax, eax
	mov	edi, r14d
	mov	esi, ebx
	mov	rdx, rcx
	call	error
.label_440:
	mov	eax, ebp
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x405297
	.globl sub_405297
	.type sub_405297, @function
sub_405297:

	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4052a0
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
	#Procedure 0x405361
	.globl sub_405361
	.type sub_405361, @function
sub_405361:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x405370
	.globl xnmalloc
	.type xnmalloc, @function
xnmalloc:

	push	rbx
	mov	rbx, rsi
	movabs	rax, 0x7fffffffffffffff
	xor	edx, edx
	div	rbx
	cmp	rax, rdi
	jb	.label_441
	imul	rbx, rdi
	mov	rdi, rbx
	call	malloc
	test	rbx, rbx
	je	.label_442
	test	rax, rax
	je	.label_441
.label_442:
	pop	rbx
	ret	
.label_441:
	call	xalloc_die
	.section	.text
	.align	32
	#Procedure 0x4053a5
	.globl sub_4053a5
	.type sub_4053a5, @function
sub_4053a5:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4053b0

	.globl hard_locale
	.type hard_locale, @function
hard_locale:
	push	rbx
	xor	esi, esi
	call	setlocale
	mov	bl, 1
	test	rax, rax
	je	.label_444
	cmp	byte ptr [rax], 0x43
	jne	.label_446
	cmp	byte ptr [rax + 1], 0
	je	.label_443
.label_446:
	mov	esi, OFFSET FLAT:label_445
	mov	rdi, rax
	call	strcmp
	test	eax, eax
	jne	.label_444
.label_443:
	xor	ebx, ebx
.label_444:
	mov	eax, ebx
	pop	rbx
	ret	
	.section	.text
	.align	32
	#Procedure 0x4053e1
	.globl sub_4053e1
	.type sub_4053e1, @function
sub_4053e1:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4053f0
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
	je	.label_447
	mov	qword ptr [rax], rbx
.label_447:
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
	#Procedure 0x4054dc
	.globl sub_4054dc
	.type sub_4054dc, @function
sub_4054dc:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x4054e0

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
	je	.label_448
	test	r15, r15
	je	.label_449
.label_448:
	mov	rdi, r15
	mov	rsi, r14
	mov	rdx, rbx
	call	memcpy
	mov	rax, r15
	pop	rbx
	pop	r14
	pop	r15
	ret	
.label_449:
	call	xalloc_die
	.section	.text
	.align	32
	#Procedure 0x40551c
	.globl sub_40551c
	.type sub_40551c, @function
sub_40551c:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x405520
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
	#Procedure 0x405553
	.globl sub_405553
	.type sub_405553, @function
sub_405553:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x405560

	.globl locale_charset
	.type locale_charset, @function
locale_charset:
	push	rax
	mov	edi, 0xe
	call	rpl_nl_langinfo
	test	rax, rax
	mov	ecx, OFFSET FLAT:label_108
	cmovne	rcx, rax
	cmp	byte ptr [rcx], 0
	mov	eax, OFFSET FLAT:label_199
	cmovne	rax, rcx
	pop	rcx
	ret	
	.section	.text
	.align	32
	#Procedure 0x405585
	.globl sub_405585
	.type sub_405585, @function
sub_405585:

	nop	word ptr cs:[rax + rax]
.label_455:
	test	rcx, rcx
	jne	.label_452
	mov	eax, 0x80
	xor	edx, edx
	div	rbx
	xor	ecx, ecx
	cmp	rbx, 0x80
	seta	cl
	add	rcx, rax
.label_452:
	movabs	rax, 0x7fffffffffffffff
	xor	edx, edx
	div	rbx
	cmp	rax, rcx
	jb	.label_453
.label_456:
	mov	qword ptr [rsi], rcx
	imul	rbx, rcx
	test	rdi, rdi
	je	.label_451
	test	rbx, rbx
	jne	.label_451
	call	free
	xor	eax, eax
	pop	rbx
	ret	
.label_454:
	call	xalloc_die
.label_451:
	mov	rsi, rbx
	call	realloc
	test	rbx, rbx
	je	.label_450
	test	rax, rax
	je	.label_454
.label_450:
	pop	rbx
	ret	
	.section	.text
	.align	32
	#Procedure 0x4055f5
	.globl x2nrealloc
	.type x2nrealloc, @function
x2nrealloc:

	push	rbx
	mov	rbx, rdx
	mov	rcx, qword ptr [rsi]
	test	rdi, rdi
	je	.label_455
	movabs	rax, 0x5555555555555554
	xor	edx, edx
	div	rbx
	cmp	rax, rcx
	jbe	.label_454
	mov	rax, rcx
	shr	rax, 1
	lea	rcx, [rcx + rax + 1]
	jmp	.label_456
.label_453:
	call	xalloc_die
	.section	.text
	.align	32
	#Procedure 0x405627
	.globl sub_405627
	.type sub_405627, @function
sub_405627:

	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x405630
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
	#Procedure 0x405649
	.globl sub_405649
	.type sub_405649, @function
sub_405649:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x405650
	.globl quotearg_n_custom
	.type quotearg_n_custom, @function
quotearg_n_custom:

	sub	rsp, 0x38
	mov	rax, qword ptr [rip + label_48]
	mov	qword ptr [rsp + 0x30], rax
	movups	xmm0, xmmword ptr [rip + label_49]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0, xmmword ptr [rip + label_50]
	movaps	xmmword ptr [rsp + 0x10], xmm0
	movups	xmm0, xmmword ptr [rip + default_quoting_options]
	movaps	xmmword ptr [rsp], xmm0
	mov	dword ptr [rsp], 0xa
	test	rsi, rsi
	je	.label_457
	test	rdx, rdx
	je	.label_457
	mov	qword ptr [rsp + 0x28], rsi
	mov	qword ptr [rsp + 0x30], rdx
	lea	rax, [rsp]
	mov	rdx, -1
	mov	rsi, rcx
	mov	rcx, rax
	call	quotearg_n_options
	add	rsp, 0x38
	ret	
.label_457:
	call	abort
	.section	.text
	.align	32
	#Procedure 0x4056be
	.globl sub_4056be
	.type sub_4056be, @function
sub_4056be:

	nop	
	.section	.text
	.align	32
	#Procedure 0x4056c0
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
	je	.label_459
	test	r14, r14
	je	.label_458
.label_459:
	xor	esi, esi
	mov	rdi, r14
	mov	rdx, rbx
	call	memset
	mov	rax, r14
	add	rsp, 8
	pop	rbx
	pop	r14
	ret	
.label_458:
	call	xalloc_die
	.section	.text
	.align	32
	#Procedure 0x4056f6
	.globl sub_4056f6
	.type sub_4056f6, @function
sub_4056f6:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x405700

	.globl close_stdout
	.type close_stdout, @function
close_stdout:
	push	rbp
	push	rbx
	push	rax
	mov	rdi, qword ptr [rip + stdout]
	call	close_stream
	test	eax, eax
	je	.label_463
	mov	bl, byte ptr [rip + ignore_EPIPE]
	call	__errno_location
	mov	rbp, rax
	cmp	bl, 0
	je	.label_461
	cmp	dword ptr [rbp], 0x20
	jne	.label_461
.label_463:
	mov	rdi, qword ptr [rip + stderr]
	call	close_stream
	test	eax, eax
	jne	.label_465
	add	rsp, 8
	pop	rbx
	pop	rbp
	ret	
.label_460:
	call	quotearg_colon
	mov	rcx, rax
	xor	edi, edi
	mov	edx, OFFSET FLAT:label_462
	xor	eax, eax
	mov	esi, ebp
	mov	r8, rbx
	call	error
	mov	edi, dword ptr [rip + exit_failure]
	call	_exit
	nop	dword ptr [rax]
	nop	dword ptr [rax + rax]
.label_461:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_464
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
	mov	rdi, qword ptr [rip + file_name]
	test	rdi, rdi
	mov	ebp, dword ptr [rbp]
	jne	.label_460
	xor	edi, edi
	mov	edx, OFFSET FLAT:label_176
	xor	eax, eax
	mov	esi, ebp
	mov	rcx, rbx
	call	error
	mov	edi, dword ptr [rip + exit_failure]
	call	_exit
.label_465:
	mov	edi, dword ptr [rip + exit_failure]
	call	_exit
	.section	.text
	.align	32
	#Procedure 0x4057c0
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
	je	.label_466
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
.label_466:
	call	abort
	.section	.text
	.align	32
	#Procedure 0x405828
	.globl sub_405828
	.type sub_405828, @function
sub_405828:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x405830
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
	je	.label_467
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
.label_467:
	call	abort
	.section	.text
	.align	32
	#Procedure 0x4058c5
	.globl sub_4058c5
	.type sub_4058c5, @function
sub_4058c5:

	nop	word ptr cs:[rax + rax]
.label_468:
	call	xalloc_die
	.section	.text
	.align	32
	#Procedure 0x4058d5
	.globl sub_4058d5
	.type sub_4058d5, @function
sub_4058d5:

	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4058db

	.globl xmalloc
	.type xmalloc, @function
xmalloc:
	push	rbx
	mov	rbx, rdi
	call	malloc
	test	rbx, rbx
	je	.label_469
	test	rax, rax
	je	.label_468
.label_469:
	pop	rbx
	ret	
.label_470:
	call	abort
	.section	.text
	.align	32
	#Procedure 0x4058f5
	.globl sub_4058f5
	.type sub_4058f5, @function
sub_4058f5:

	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4058fb
	.globl quotearg_n_custom_mem
	.type quotearg_n_custom_mem, @function
quotearg_n_custom_mem:

	sub	rsp, 0x38
	mov	rax, qword ptr [rip + label_48]
	mov	qword ptr [rsp + 0x30], rax
	movups	xmm0, xmmword ptr [rip + label_49]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0, xmmword ptr [rip + label_50]
	movaps	xmmword ptr [rsp + 0x10], xmm0
	movups	xmm0, xmmword ptr [rip + default_quoting_options]
	movaps	xmmword ptr [rsp], xmm0
	mov	dword ptr [rsp], 0xa
	test	rsi, rsi
	je	.label_470
	test	rdx, rdx
	je	.label_470
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
	.align	32
	#Procedure 0x405960

	.globl exit_failure_callback
	.type exit_failure_callback, @function
exit_failure_callback:
	push	rbp
	push	r14
	push	rbx
	mov	rbx, rsi
	mov	r14d, edi
	xor	edi, edi
	test	rbx, rbx
	je	.label_471
	mov	esi, OFFSET FLAT:label_472
	mov	edx, 5
	call	dcgettext
	mov	rbp, rax
	xor	edi, edi
	mov	edx, 5
	mov	rsi, rbx
	call	dcgettext
	mov	rbx, rax
	mov	edi, 1
	xor	esi, esi
	xor	eax, eax
	mov	rdx, rbp
	mov	ecx, r14d
	mov	r8, rbx
	call	error
	jmp	.label_473
.label_471:
	mov	esi, OFFSET FLAT:label_474
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	mov	edi, 1
	xor	esi, esi
	xor	eax, eax
	mov	rdx, rcx
	mov	ecx, r14d
	call	error
.label_473:
	mov	rax, -1
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x4059e0

	.globl fallback_failure_callback
	.type fallback_failure_callback, @function
fallback_failure_callback:
	push	rax
	mov	r8, rdx
	mov	ecx, edi
	mov	esi, 1
	cmp	ecx, 0xffff
	ja	.label_475
	mov	edx, OFFSET FLAT:label_477
	jmp	.label_478
.label_475:
	mov	edx, OFFSET FLAT:label_476
.label_478:
	xor	eax, eax
	mov	rdi, r8
	call	__fprintf_chk
	mov	rax, -1
	pop	rcx
	ret	
	.section	.text
	.align	32
	#Procedure 0x405a12
	.globl sub_405a12
	.type sub_405a12, @function
sub_405a12:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x405a85
	.globl sub_405a85
	.type sub_405a85, @function
sub_405a85:

	nop	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x405a92
	.globl sub_405a92
	.type sub_405a92, @function
sub_405a92:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x405ab6
	.globl sub_405ab6
	.type sub_405ab6, @function
sub_405ab6:

	nop	word ptr cs:[rax + rax]
