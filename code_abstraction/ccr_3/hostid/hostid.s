	.section	.text
	.align	32
	#Procedure 0x401380

	.globl usage
	.type usage, @function
usage:
	push	rbp
	push	rbx
	push	rax
	mov	ebp, edi
	test	ebp, ebp
	jne	.label_9
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_14
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	mov	rdx, qword ptr [rip + program_name]
	mov	edi, 1
	xor	eax, eax
	mov	rsi, rcx
	call	__printf_chk
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_23
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_18
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_13
	mov	edx, 5
	call	dcgettext
	mov	rsi, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:label_16
	mov	ecx, OFFSET FLAT:label_17
	xor	eax, eax
	call	__printf_chk
	mov	edi, 5
	xor	esi, esi
	call	setlocale
	test	rax, rax
	je	.label_11
	mov	esi, OFFSET FLAT:label_22
	mov	edx, 3
	mov	rdi, rax
	call	strncmp
	test	eax, eax
	je	.label_11
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_12
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	call	fputs_unlocked
.label_11:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_19
	mov	edx, 5
	call	dcgettext
	mov	rsi, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:label_17
	mov	ecx, OFFSET FLAT:label_20
	xor	eax, eax
	call	__printf_chk
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_15
	mov	edx, 5
	call	dcgettext
	mov	rsi, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:label_20
	mov	ecx, OFFSET FLAT:label_21
	xor	eax, eax
	call	__printf_chk
	mov	edi, ebp
	call	exit
.label_9:
	mov	rbx, qword ptr [rip + stderr]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_10
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
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x401500

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
	mov	esi, OFFSET FLAT:label_28
	call	setlocale
	mov	edi, OFFSET FLAT:label_27
	mov	esi, OFFSET FLAT:label_30
	call	bindtextdomain
	mov	edi, OFFSET FLAT:label_27
	call	textdomain
	mov	edi, OFFSET FLAT:close_stdout
	call	atexit
	mov	r8, qword ptr [rip + Version]
	sub	rsp, 8
	mov	edx, OFFSET FLAT:label_20
	mov	ecx, OFFSET FLAT:label_16
	mov	r9d, 1
	mov	eax, 0
	mov	edi, ebp
	mov	rsi, rbx
	push	0
	push	OFFSET FLAT:label_24
	push	OFFSET FLAT:usage
	call	parse_gnu_standard_options_only
	add	rsp, 0x20
	cmp	dword ptr [rip + optind],  ebp
	jl	.label_29
	call	gethostid
	mov	rcx, rax
	mov	edi, 1
	mov	esi, OFFSET FLAT:label_26
	xor	eax, eax
	mov	edx, ecx
	call	__printf_chk
	xor	eax, eax
	add	rsp, 8
	pop	rbx
	pop	rbp
	ret	
.label_29:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_25
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
	nop	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4015f0
	.globl close_stdout_set_file_name
	.type close_stdout_set_file_name, @function
close_stdout_set_file_name:

	mov	qword ptr [rip + file_name],  rdi
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x401600
	.globl close_stdout_set_ignore_EPIPE
	.type close_stdout_set_ignore_EPIPE, @function
close_stdout_set_ignore_EPIPE:

	mov	byte ptr [rip + ignore_EPIPE],  dil
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x401610

	.globl close_stdout
	.type close_stdout, @function
close_stdout:
	push	rbp
	push	rbx
	push	rax
	mov	rdi, qword ptr [rip + stdout]
	call	close_stream
	test	eax, eax
	je	.label_37
	mov	bl, byte ptr [rip + ignore_EPIPE]
	call	__errno_location
	mov	rbp, rax
	cmp	bl, 0
	je	.label_34
	cmp	dword ptr [rbp], 0x20
	jne	.label_34
.label_37:
	mov	rdi, qword ptr [rip + stderr]
	call	close_stream
	test	eax, eax
	jne	.label_33
	add	rsp, 8
	pop	rbx
	pop	rbp
	ret	
.label_34:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_35
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
	mov	rdi, qword ptr [rip + file_name]
	test	rdi, rdi
	mov	ebp, dword ptr [rbp]
	jne	.label_31
	xor	edi, edi
	mov	edx, OFFSET FLAT:label_32
	xor	eax, eax
	mov	esi, ebp
	mov	rcx, rbx
	call	error
	mov	edi, dword ptr [rip + exit_failure]
	call	_exit
.label_33:
	mov	edi, dword ptr [rip + exit_failure]
	call	_exit
.label_31:
	call	quotearg_colon
	mov	rcx, rax
	xor	edi, edi
	mov	edx, OFFSET FLAT:label_36
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
	#Procedure 0x4016d0
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
	je	.label_38
	movaps	xmmword ptr [rsp + 0x50], xmm0
	movaps	xmmword ptr [rsp + 0x60], xmm1
	movaps	xmmword ptr [rsp + 0x70], xmm2
	movaps	xmmword ptr [rsp + 0x80], xmm3
	movaps	xmmword ptr [rsp + 0x90], xmm4
	movaps	xmmword ptr [rsp + 0xa0], xmm5
	movaps	xmmword ptr [rsp + 0xb0], xmm6
	movaps	xmmword ptr [rsp + 0xc0], xmm7
.label_38:
	mov	ebp, dword ptr [rip + opterr]
	mov	dword ptr [rip + opterr],  0
	cmp	edi, 2
	jne	.label_40
	mov	edi, 2
	mov	edx, OFFSET FLAT:label_41
	mov	ecx, OFFSET FLAT:long_options
	xor	r8d, r8d
	call	getopt_long
	cmp	eax, 0x68
	je	.label_39
	cmp	eax, 0x76
	jne	.label_40
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
.label_39:
	xor	edi, edi
	call	rbx
.label_40:
	mov	dword ptr [rip + opterr],  ebp
	mov	dword ptr [rip + optind],  0
	add	rsp, 0xd0
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	pop	rbp
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4017d0

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
	je	.label_45
	movaps	xmmword ptr [rsp + 0x50], xmm0
	movaps	xmmword ptr [rsp + 0x60], xmm1
	movaps	xmmword ptr [rsp + 0x70], xmm2
	movaps	xmmword ptr [rsp + 0x80], xmm3
	movaps	xmmword ptr [rsp + 0x90], xmm4
	movaps	xmmword ptr [rsp + 0xa0], xmm5
	movaps	xmmword ptr [rsp + 0xb0], xmm6
	movaps	xmmword ptr [rsp + 0xc0], xmm7
.label_45:
	mov	ebp, dword ptr [rip + opterr]
	mov	dword ptr [rip + opterr],  1
	mov	eax, OFFSET FLAT:label_28
	mov	edx, OFFSET FLAT:label_41
	test	r9b, r9b
	cmovne	rdx, rax
	mov	ecx, OFFSET FLAT:long_options
	xor	r8d, r8d
	call	getopt_long
	cmp	eax, -1
	je	.label_44
	mov	rcx, qword ptr [rsp + 0x100]
	cmp	eax, 0x68
	je	.label_46
	cmp	eax, 0x76
	je	.label_43
	mov	edi, dword ptr [rip + exit_failure]
	jmp	.label_42
.label_46:
	xor	edi, edi
.label_42:
	call	rcx
.label_44:
	mov	dword ptr [rip + opterr],  ebp
	add	rsp, 0xd8
	pop	rbx
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_43:
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
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x4018d0

	.globl set_program_name
	.type set_program_name, @function
set_program_name:
	push	r14
	push	rbx
	push	rax
	mov	rbx, rdi
	test	rbx, rbx
	je	.label_49
	mov	esi, 0x2f
	mov	rdi, rbx
	call	strrchr
	test	rax, rax
	lea	r14, [rax + 1]
	cmove	r14, rbx
	mov	rax, r14
	sub	rax, rbx
	cmp	rax, 7
	jl	.label_48
	lea	rdi, [r14 - 7]
	mov	esi, OFFSET FLAT:label_47
	mov	edx, 7
	call	strncmp
	test	eax, eax
	jne	.label_48
	mov	esi, OFFSET FLAT:label_51
	mov	edx, 3
	mov	rdi, r14
	call	strncmp
	test	eax, eax
	jne	.label_52
	add	r14, 3
	mov	qword ptr [rip + __progname],  r14
.label_52:
	mov	rbx, r14
.label_48:
	mov	qword ptr [rip + program_name],  rbx
	mov	qword ptr [rip + __progname_full],  rbx
	add	rsp, 8
	pop	rbx
	pop	r14
	ret	
.label_49:
	mov	rcx, qword ptr [rip + stderr]
	mov	edi, OFFSET FLAT:label_50
	mov	esi, 0x37
	mov	edx, 1
	call	fwrite
	call	abort
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x401980
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
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4019c0
	.globl get_quoting_style
	.type get_quoting_style, @function
get_quoting_style:

	test	rdi, rdi
	mov	eax, OFFSET FLAT:default_quoting_options
	cmovne	rax, rdi
	mov	eax, dword ptr [rax]
	ret	
	nop	
	.section	.text
	.align	32
	#Procedure 0x4019d0
	.globl set_quoting_style
	.type set_quoting_style, @function
set_quoting_style:

	test	rdi, rdi
	mov	eax, OFFSET FLAT:default_quoting_options
	cmovne	rax, rdi
	mov	dword ptr [rax], esi
	ret	
	nop	
	.section	.text
	.align	32
	#Procedure 0x4019e0
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
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x401a20
	.globl set_quoting_flags
	.type set_quoting_flags, @function
set_quoting_flags:

	test	rdi, rdi
	mov	ecx, OFFSET FLAT:default_quoting_options
	cmovne	rcx, rdi
	mov	eax, dword ptr [rcx + 4]
	mov	dword ptr [rcx + 4], esi
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x401a40
	.globl set_custom_quoting
	.type set_custom_quoting, @function
set_custom_quoting:

	test	rdi, rdi
	mov	eax, OFFSET FLAT:default_quoting_options
	cmovne	rax, rdi
	mov	dword ptr [rax], 0xa
	test	rsi, rsi
	je	.label_53
	test	rdx, rdx
	je	.label_53
	mov	qword ptr [rax + 0x28], rsi
	mov	qword ptr [rax + 0x30], rdx
	ret	
.label_53:
	push	rax
	call	abort
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x401a70
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
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x401af0

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
	jmp	.label_141
	nop	
.label_175:
	cmp	r8d, 2
	setne	al
	cmp	byte ptr [rsp + 0xf], 0
	setne	dl
	mov	rsi, qword ptr [rsp + 0xa8]
	test	sil, 1
	mov	bl, byte ptr [rsp + 0x34]
	mov	rsi, qword ptr [rsp + 0xc0]
	je	.label_59
	or	al, dl
	jne	.label_59
	test	dil, 1
	jne	.label_173
	cmp	qword ptr [rsp + 0x68], 0
	je	.label_59
	test	rbp, rbp
	mov	r15d, r8d
	mov	al, bl
	mov	qword ptr [rsp + 0x48], rcx
	mov	r12d, esi
	mov	r13, qword ptr [rsp + 0x68]
	je	.label_141
	jmp	.label_59
.label_317:
	mov	r8d, 5
	test	r12b, 1
	jne	.label_56
	test	rbp, rbp
	je	.label_61
	mov	rax, qword ptr [rsp + 0x10]
	mov	byte ptr [rax], 0x22
.label_61:
	mov	r14d, 1
	jmp	.label_63
.label_318:
	mov	r13b, 1
	mov	r8d, 5
	xor	r14d, r14d
	mov	eax, OFFSET FLAT:label_64
	mov	qword ptr [rsp + 0x58], rax
	mov	eax, 1
	mov	qword ptr [rsp + 0x50], rax
	mov	sil, 1
	jmp	.label_65
.label_56:
	xor	r14d, r14d
.label_63:
	mov	eax, OFFSET FLAT:label_64
	mov	qword ptr [rsp + 0x58], rax
	mov	eax, 1
	mov	qword ptr [rsp + 0x50], rax
	mov	r13b, 1
	jmp	.label_76
	nop	
.label_141:
	mov	rbp, r13
	xor	r14d, r14d
	mov	ecx, r15d
	cmp	r15d, 0xa
	ja	.label_88
	mov	r8d, 7
	mov	r13b, 1
	xor	esi, esi
	mov	r10, qword ptr [rsp + 0x28]
	mov	r11, qword ptr [rsp + 0x48]
	jmp	qword ptr [(rcx * 8) + label_95]
.label_319:
	mov	r14d, edi
	mov	edi, OFFSET FLAT:label_102
	mov	esi, r15d
	mov	ebx, r9d
	call	gettext_quote
	mov	qword ptr [rsp + 0x80], rax
	mov	edi, OFFSET FLAT:label_109
	mov	esi, r15d
	call	gettext_quote
	mov	r9d, ebx
	mov	edi, r14d
	mov	qword ptr [rsp + 0x78], rax
.label_320:
	mov	byte ptr [rsp + 0x1e], dil
	mov	dword ptr [rsp + 0x60], r9d
	test	r12b, 1
	mov	r14d, 0
	mov	rcx, qword ptr [rsp + 0x80]
	jne	.label_117
	mov	al, byte ptr [rcx]
	test	al, al
	mov	r14d, 0
	je	.label_117
	xor	r14d, r14d
	nop	
.label_130:
	cmp	r14, rbp
	jae	.label_125
	mov	rdx, qword ptr [rsp + 0x10]
	mov	byte ptr [rdx + r14], al
.label_125:
	movzx	eax, byte ptr [rcx + r14 + 1]
	inc	r14
	test	al, al
	jne	.label_130
.label_117:
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
	jmp	.label_65
.label_312:
	xor	r8d, r8d
	xor	r14d, r14d
	mov	r13d, eax
	xor	esi, esi
	jmp	.label_65
.label_315:
	mov	al, 1
.label_313:
	mov	r12b, 1
.label_316:
	test	r12b, 1
	mov	cl, 1
	je	.label_148
	mov	ecx, eax
.label_148:
	mov	al, cl
.label_314:
	mov	r8d, 2
	test	r12b, 1
	jne	.label_151
	test	rbp, rbp
	je	.label_156
	mov	rcx, qword ptr [rsp + 0x10]
	mov	byte ptr [rcx], 0x27
.label_156:
	mov	r14d, 1
	jmp	.label_138
.label_151:
	xor	r14d, r14d
.label_138:
	mov	ecx, OFFSET FLAT:label_109
	mov	qword ptr [rsp + 0x58], rcx
	mov	ecx, 1
	mov	qword ptr [rsp + 0x50], rcx
	mov	r13d, eax
.label_76:
	mov	sil, r12b
.label_65:
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
	jmp	.label_166
	nop	word ptr cs:[rax + rax]
.label_68:
	inc	r12
.label_166:
	cmp	r11, -1
	je	.label_72
	cmp	r12, r11
	jne	.label_74
	jmp	.label_75
	nop	word ptr cs:[rax + rax]
.label_72:
	mov	rcx, -1
	cmp	byte ptr [r10 + r12], 0
	je	.label_81
.label_74:
	cmp	byte ptr [rsp + 0x37], 0
	je	.label_89
	mov	rax, qword ptr [rsp + 0x50]
	lea	rbx, [r12 + rax]
	cmp	rax, 2
	jb	.label_98
	cmp	r11, -1
	jne	.label_98
	mov	r15d, edi
	mov	rdi, r10
	mov	r13d, r9d
	call	strlen
	mov	r9d, r13d
	mov	r8, qword ptr [rsp + 0x38]
	mov	edi, r15d
	mov	r10, qword ptr [rsp + 0x28]
	mov	r11, rax
.label_98:
	cmp	rbx, r11
	jbe	.label_108
.label_89:
	xor	esi, esi
.label_131:
	movzx	r15d, byte ptr [r10 + r12]
	cmp	r15, 0x7e
	ja	.label_110
	xor	edx, edx
	mov	r13b, 1
	mov	cl, 0x6e
	mov	bl, 0x61
	xor	eax, eax
	jmp	qword ptr [(r15 * 8) + label_114]
.label_344:
	test	r12, r12
	jne	.label_60
	jmp	.label_119
	nop	word ptr cs:[rax + rax]
.label_108:
	mov	r13d, r9d
	mov	r15d, edi
	mov	rbx, r11
	lea	rdi, [r10 + r12]
	mov	rsi, qword ptr [rsp + 0x58]
	mov	rdx, qword ptr [rsp + 0x50]
	call	memcmp
	test	eax, eax
	sete	sil
	jne	.label_129
	cmp	byte ptr [rsp + 0xf], 0
	mov	r10, qword ptr [rsp + 0x28]
	mov	r11, rbx
	mov	edi, r15d
	mov	r8, qword ptr [rsp + 0x38]
	mov	r9d, r13d
	je	.label_131
	jmp	.label_55
.label_129:
	mov	r10, qword ptr [rsp + 0x28]
	mov	r11, rbx
	mov	edi, r15d
	mov	r8, qword ptr [rsp + 0x38]
	mov	r9d, r13d
	jmp	.label_131
.label_348:
	xor	eax, eax
	cmp	r11, -1
	je	.label_142
	test	r12, r12
	jne	.label_146
	cmp	r11, 1
	je	.label_119
	xor	r13d, r13d
	jmp	.label_54
.label_337:
	cmp	byte ptr [rsp + 0x1f], 0
	je	.label_152
	cmp	byte ptr [rsp + 0xf], 0
	jne	.label_55
	cmp	r8d, 2
	jne	.label_158
	mov	eax, r9d
	and	al, 1
	jne	.label_158
	cmp	r14, rbp
	jae	.label_161
	mov	rax, qword ptr [rsp + 0x10]
	mov	byte ptr [rax + r14], 0x27
.label_161:
	lea	rax, [r14 + 1]
	cmp	rax, rbp
	jae	.label_164
	mov	rcx, qword ptr [rsp + 0x10]
	mov	byte ptr [rcx + rax], 0x24
.label_164:
	lea	rax, [r14 + 2]
	cmp	rax, rbp
	jae	.label_78
	mov	rcx, qword ptr [rsp + 0x10]
	mov	byte ptr [rcx + rax], 0x27
.label_78:
	add	r14, 3
	mov	r9b, 1
.label_158:
	mov	rcx, r14
	cmp	rcx, rbp
	jae	.label_172
	mov	rax, qword ptr [rsp + 0x10]
	mov	byte ptr [rax + rcx], 0x5c
.label_172:
	lea	r14, [rcx + 1]
	mov	al, 1
	mov	r15b, 0x30
	cmp	r8d, 2
	je	.label_136
	lea	rdx, [r12 + 1]
	cmp	rdx, r11
	jae	.label_136
	mov	dl, byte ptr [r10 + rdx]
	add	dl, 0xd0
	cmp	dl, 9
	ja	.label_136
	cmp	r14, rbp
	jae	.label_127
	mov	rdx, qword ptr [rsp + 0x10]
	mov	byte ptr [rdx + r14], 0x30
.label_127:
	lea	rdx, [rcx + 2]
	cmp	rdx, rbp
	jae	.label_177
	mov	ebx, esi
	mov	rsi, qword ptr [rsp + 0x10]
	mov	byte ptr [rsi + rdx], 0x30
	mov	esi, ebx
.label_177:
	add	rcx, 3
	xor	r13d, r13d
	mov	r14, rcx
	jmp	.label_54
.label_338:
	mov	bl, 0x62
	jmp	.label_73
.label_339:
	mov	cl, 0x74
	jmp	.label_66
.label_340:
	mov	bl, 0x76
	jmp	.label_73
.label_341:
	mov	bl, 0x66
	jmp	.label_73
.label_342:
	mov	cl, 0x72
	jmp	.label_66
.label_345:
	mov	r15b, 0x27
	mov	al, 1
	mov	qword ptr [rsp + 0xa8], rax
	cmp	r8d, 2
	jne	.label_86
	cmp	byte ptr [rsp + 0xf], 0
	jne	.label_71
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
	jae	.label_96
	mov	rax, qword ptr [rsp + 0x10]
	mov	byte ptr [rax + r14], 0x27
.label_96:
	lea	rax, [r14 + 1]
	cmp	rax, rbp
	jae	.label_111
	mov	rcx, qword ptr [rsp + 0x10]
	mov	byte ptr [rcx + rax], 0x5c
.label_111:
	lea	rax, [r14 + 2]
	cmp	rax, rbp
	jae	.label_116
	mov	rcx, qword ptr [rsp + 0x10]
	mov	byte ptr [rcx + rax], 0x27
.label_116:
	add	r14, 3
	xor	r9d, r9d
.label_86:
	xor	eax, eax
	mov	r13b, 1
	jmp	.label_54
.label_346:
	mov	r15b, 0x3f
	cmp	r8d, 5
	je	.label_121
	cmp	r8d, 2
	jne	.label_60
	cmp	byte ptr [rsp + 0xf], 0
	je	.label_60
	jmp	.label_71
.label_347:
	cmp	r8d, 2
	jne	.label_134
	cmp	byte ptr [rsp + 0xf], 0
	jne	.label_71
	mov	r15b, 0x5c
	xor	eax, eax
	jmp	.label_132
.label_110:
	cmp	qword ptr [rsp + 0xb8], 1
	mov	qword ptr [rsp + 0xa0], rbp
	mov	byte ptr [rsp + 0x1e], dil
	mov	dword ptr [rsp + 0x60], r9d
	mov	dword ptr [rsp + 0x94], esi
	jne	.label_140
	mov	qword ptr [rsp + 0x48], r11
	call	__ctype_b_loc
	mov	r10, qword ptr [rsp + 0x28]
	mov	rax, qword ptr [rax]
	movzx	r13d, word ptr [rax + r15*2]
	shr	r13d, 0xe
	and	r13b, 1
	mov	ebx, 1
	jmp	.label_150
.label_142:
	test	r12, r12
	jne	.label_159
	mov	cl, byte ptr [r10 + 1]
	test	cl, cl
	jne	.label_159
.label_119:
	mov	dl, 1
.label_343:
	cmp	byte ptr [rsp + 0x27], 0
	je	.label_71
	xor	eax, eax
	mov	r13b, dl
.label_54:
	cmp	byte ptr [rsp + 0x36], 0
	je	.label_167
	cmp	qword ptr [rsp + 0x100], 0
	jne	.label_169
	jmp	.label_170
	nop	word ptr cs:[rax + rax]
.label_167:
	cmp	byte ptr [rsp + 0x35], 0
	je	.label_170
.label_169:
	mov	ecx, r15d
	shr	cl, 5
	movzx	edx, cl
	mov	ebx, esi
	mov	esi, 1
	mov	ecx, r15d
	shl	esi, cl
	test	bl, bl
	jne	.label_174
	mov	rcx, qword ptr [rsp + 0x100]
	and	esi, dword ptr [rcx + rdx*4]
	jmp	.label_178
	nop	dword ptr [rax]
.label_170:
	test	sil, sil
.label_178:
	mov	ebx, r15d
	je	.label_69
	jmp	.label_58
.label_174:
	mov	ebx, r15d
	jmp	.label_58
.label_152:
	cmp	dword ptr [rsp + 0x9c], 0
	jne	.label_68
	xor	r15d, r15d
	jmp	.label_60
.label_134:
	mov	cl, 0x5c
	cmp	byte ptr [rsp + 0x32], 0
	je	.label_66
	xor	eax, eax
	mov	r15b, 0x5c
.label_132:
	xor	r13d, r13d
	jmp	.label_69
.label_66:
	cmp	byte ptr [rsp + 0x27], 0
	mov	ebx, ecx
	je	.label_71
.label_73:
	xor	eax, eax
	cmp	byte ptr [rsp + 0x1f], 0
	mov	r13d, 0
	je	.label_54
	nop	
.label_58:
	cmp	byte ptr [rsp + 0xf], 0
	jne	.label_55
	cmp	r8d, 2
	jne	.label_87
	mov	eax, r9d
	and	al, 1
	jne	.label_87
	cmp	r14, rbp
	jae	.label_93
	mov	rax, qword ptr [rsp + 0x10]
	mov	byte ptr [rax + r14], 0x27
.label_93:
	lea	rax, [r14 + 1]
	cmp	rax, rbp
	jae	.label_137
	mov	rcx, qword ptr [rsp + 0x10]
	mov	byte ptr [rcx + rax], 0x24
.label_137:
	lea	rax, [r14 + 2]
	cmp	rax, rbp
	jae	.label_101
	mov	rcx, qword ptr [rsp + 0x10]
	mov	byte ptr [rcx + rax], 0x27
.label_101:
	add	r14, 3
	mov	r9b, 1
.label_87:
	cmp	r14, rbp
	jae	.label_180
	mov	rax, qword ptr [rsp + 0x10]
	mov	byte ptr [rax + r14], 0x5c
.label_180:
	inc	r14
	jmp	.label_97
.label_140:
	mov	qword ptr [rsp + 0x70], 0
	cmp	r11, -1
	jne	.label_115
	mov	rdi, r10
	call	strlen
	mov	r10, qword ptr [rsp + 0x28]
	mov	r11, rax
.label_115:
	cmp	byte ptr [rsp + 0x31], 0
	mov	qword ptr [rsp + 0x48], r11
	mov	qword ptr [rsp + 0x88], r12
	je	.label_120
	lea	rax, [r10 + r12]
	mov	qword ptr [rsp + 0xb0], rax
	mov	r13b, 1
	xor	r12d, r12d
	lea	rbp, [rsp + 0x70]
.label_113:
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
	je	.label_135
	cmp	rbx, -1
	mov	r10, qword ptr [rsp + 0x28]
	movabs	rsi, 0x20000002b
	je	.label_143
	test	rbx, rbx
	mov	r11, qword ptr [rsp + 0x48]
	je	.label_160
	cmp	rbx, 2
	mov	rbp, qword ptr [rsp + 0xa0]
	jb	.label_154
	mov	rax, qword ptr [rsp + 0x40]
	mov	rcx, qword ptr [rsp + 0xb0]
	lea	rax, [rcx + rax]
	mov	ecx, 1
	nop	dword ptr [rax]
.label_92:
	movsx	edx, byte ptr [rax + rcx]
	add	edx, -0x5b
	cmp	edx, 0x21
	ja	.label_153
	bt	rsi, rdx
	jb	.label_71
.label_153:
	inc	rcx
	cmp	rcx, rbx
	jb	.label_92
.label_154:
	mov	edi, dword ptr [rsp + 0x64]
	call	iswprint
	test	eax, eax
	jne	.label_91
	xor	r13d, r13d
.label_91:
	lea	rbp, [rsp + 0x70]
	mov	r12, qword ptr [rsp + 0x40]
	add	r12, rbx
	mov	rdi, rbp
	call	mbsinit
	test	eax, eax
	mov	r10, qword ptr [rsp + 0x28]
	mov	r11, qword ptr [rsp + 0x48]
	je	.label_113
	jmp	.label_145
.label_136:
	xor	r13d, r13d
	jmp	.label_54
.label_159:
	mov	r11, -1
	xor	r13d, r13d
	jmp	.label_54
.label_121:
	cmp	dword ptr [rsp + 0x98], 0
	je	.label_60
	lea	rcx, [r12 + 2]
	cmp	rcx, r11
	jae	.label_60
	cmp	byte ptr [r10 + r12 + 1], 0x3f
	jne	.label_60
	movsx	edx, byte ptr [r10 + rcx]
	xor	eax, eax
	cmp	edx, 0x3e
	ja	.label_70
	mov	ebx, esi
	movabs	rsi, 0x7000a38200000000
	bt	rsi, rdx
	jae	.label_168
	cmp	byte ptr [rsp + 0xf], 0
	jne	.label_80
	cmp	r14, rbp
	jae	.label_83
	mov	rax, qword ptr [rsp + 0x10]
	mov	byte ptr [rax + r14], 0x3f
.label_83:
	lea	rax, [r14 + 1]
	cmp	rax, rbp
	jae	.label_90
	mov	rsi, qword ptr [rsp + 0x10]
	mov	byte ptr [rsi + rax], 0x22
.label_90:
	lea	rax, [r14 + 2]
	cmp	rax, rbp
	jae	.label_122
	mov	rsi, qword ptr [rsp + 0x10]
	mov	byte ptr [rsi + rax], 0x22
.label_122:
	lea	rax, [r14 + 3]
	cmp	rax, rbp
	jae	.label_162
	mov	rsi, qword ptr [rsp + 0x10]
	mov	byte ptr [rsi + rax], 0x3f
.label_162:
	add	r14, 4
	xor	eax, eax
	mov	r12, rcx
	mov	r15b, dl
.label_168:
	xor	r13d, r13d
	mov	esi, ebx
	jmp	.label_54
.label_60:
	xor	eax, eax
.label_146:
	xor	r13d, r13d
	jmp	.label_54
.label_120:
	mov	r13b, 1
	xor	r12d, r12d
	lea	rbx, [rsp + 0x70]
	nop	word ptr cs:[rax + rax]
.label_157:
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
	je	.label_77
	cmp	rbp, -1
	je	.label_133
	cmp	rbp, -2
	je	.label_135
	mov	edi, dword ptr [rsp + 0x64]
	call	iswprint
	test	eax, eax
	mov	r12, qword ptr [rsp + 0x40]
	jne	.label_126
	xor	r13d, r13d
.label_126:
	add	r12, rbp
	lea	rbx, [rsp + 0x70]
	mov	rdi, rbx
	call	mbsinit
	test	eax, eax
	mov	r10, qword ptr [rsp + 0x28]
	mov	r11, qword ptr [rsp + 0x48]
	je	.label_157
	jmp	.label_145
.label_135:
	mov	r10, qword ptr [rsp + 0x28]
	mov	rsi, qword ptr [rsp + 0x40]
	lea	rax, [rsi + r12]
	mov	rdx, qword ptr [rsp + 0x48]
	cmp	rax, rdx
	jae	.label_107
	lea	rax, [r10 + r12]
.label_147:
	cmp	byte ptr [rax + rsi], 0
	je	.label_107
	lea	rcx, [r12 + rsi + 1]
	inc	rsi
	cmp	rcx, rdx
	jb	.label_147
.label_107:
	mov	qword ptr [rsp + 0x40], rsi
.label_143:
	xor	r13d, r13d
	jmp	.label_160
.label_133:
	xor	r13d, r13d
.label_77:
	mov	r10, qword ptr [rsp + 0x28]
.label_160:
	mov	r12, qword ptr [rsp + 0x40]
.label_145:
	mov	rbx, r12
	mov	r12, qword ptr [rsp + 0x88]
.label_150:
	and	r13b, 1
	mov	eax, r13d
	or	al, byte ptr [rsp + 0x33]
	cmp	rbx, 1
	mov	rbp, qword ptr [rsp + 0xa0]
	mov	dil, byte ptr [rsp + 0x1e]
	mov	r8, qword ptr [rsp + 0x38]
	mov	r9d, dword ptr [rsp + 0x60]
	mov	esi, dword ptr [rsp + 0x94]
	ja	.label_84
	test	al, al
	je	.label_84
	xor	eax, eax
	mov	r11, qword ptr [rsp + 0x48]
	jmp	.label_54
.label_84:
	mov	byte ptr [rsp + 0x40], al
	add	rbx, r12
	xor	eax, eax
	mov	r11, qword ptr [rsp + 0x48]
	jmp	.label_176
	nop	word ptr [rax + rax]
.label_144:
	inc	r14
	mov	r15b, byte ptr [r10 + r12 + 1]
	mov	r12, rdx
.label_176:
	cmp	byte ptr [rsp + 0x40], 0
	je	.label_57
	test	sil, 1
	je	.label_67
	cmp	r14, rbp
	jae	.label_62
	mov	rdx, qword ptr [rsp + 0x10]
	mov	byte ptr [rdx + r14], 0x5c
.label_62:
	inc	r14
	xor	esi, esi
	jmp	.label_67
	nop	word ptr cs:[rax + rax]
.label_57:
	cmp	byte ptr [rsp + 0xf], 0
	jne	.label_55
	cmp	r8d, 2
	jne	.label_82
	mov	eax, r9d
	and	al, 1
	jne	.label_82
	cmp	r14, rbp
	jae	.label_79
	mov	rax, qword ptr [rsp + 0x10]
	mov	byte ptr [rax + r14], 0x27
.label_79:
	lea	rax, [r14 + 1]
	cmp	rax, rbp
	jae	.label_94
	mov	rdx, qword ptr [rsp + 0x10]
	mov	byte ptr [rdx + rax], 0x24
.label_94:
	lea	rax, [r14 + 2]
	cmp	rax, rbp
	jae	.label_149
	mov	rdx, qword ptr [rsp + 0x10]
	mov	byte ptr [rdx + rax], 0x27
.label_149:
	add	r14, 3
	mov	r9b, 1
.label_82:
	cmp	r14, rbp
	jae	.label_100
	mov	rax, qword ptr [rsp + 0x10]
	mov	byte ptr [rax + r14], 0x5c
.label_100:
	lea	rax, [r14 + 1]
	cmp	rax, rbp
	jae	.label_171
	mov	edx, r15d
	shr	dl, 6
	or	dl, 0x30
	mov	ecx, esi
	mov	rsi, qword ptr [rsp + 0x10]
	mov	byte ptr [rsi + rax], dl
	mov	esi, ecx
.label_171:
	lea	rax, [r14 + 2]
	cmp	rax, rbp
	jae	.label_112
	mov	edx, r15d
	shr	dl, 3
	and	dl, 7
	or	dl, 0x30
	mov	ecx, esi
	mov	rsi, qword ptr [rsp + 0x10]
	mov	byte ptr [rsi + rax], dl
	mov	esi, ecx
.label_112:
	add	r14, 3
	and	r15b, 7
	or	r15b, 0x30
	mov	al, 1
.label_67:
	lea	rdx, [r12 + 1]
	cmp	rbx, rdx
	jbe	.label_69
	test	r9b, 1
	je	.label_123
	mov	rcx, rbx
	mov	ebx, eax
	and	bl, 1
	jne	.label_179
	mov	r8, r12
	mov	r12d, esi
	cmp	r14, rbp
	jae	.label_128
	mov	rsi, qword ptr [rsp + 0x10]
	mov	byte ptr [rsi + r14], 0x27
.label_128:
	lea	rsi, [r14 + 1]
	cmp	rsi, rbp
	jae	.label_105
	mov	rbx, qword ptr [rsp + 0x10]
	mov	byte ptr [rbx + rsi], 0x27
.label_105:
	add	r14, 2
	xor	r9d, r9d
	mov	esi, r12d
	mov	rbx, rcx
	mov	r12, r8
	mov	r8, qword ptr [rsp + 0x38]
	jmp	.label_123
	nop	word ptr cs:[rax + rax]
.label_179:
	mov	rbx, rcx
.label_123:
	cmp	r14, rbp
	jae	.label_144
	mov	ecx, esi
	mov	rsi, qword ptr [rsp + 0x10]
	mov	byte ptr [rsi + r14], r15b
	mov	esi, ecx
	jmp	.label_144
	nop	
.label_69:
	test	r9b, 1
	je	.label_104
	and	al, 1
	jne	.label_104
	cmp	r14, rbp
	jae	.label_155
	mov	rax, qword ptr [rsp + 0x10]
	mov	byte ptr [rax + r14], 0x27
.label_155:
	lea	rax, [r14 + 1]
	cmp	rax, rbp
	jae	.label_139
	mov	rcx, qword ptr [rsp + 0x10]
	mov	byte ptr [rcx + rax], 0x27
.label_139:
	add	r14, 2
	xor	r9d, r9d
.label_104:
	mov	ebx, r15d
.label_97:
	cmp	r14, rbp
	jae	.label_165
	mov	rax, qword ptr [rsp + 0x10]
	mov	byte ptr [rax + r14], bl
.label_165:
	inc	r14
	shl	r13b, 7
	sar	r13b, 7
	and	r13b, dil
	mov	edi, r13d
	jmp	.label_68
.label_70:
	xor	r13d, r13d
	jmp	.label_54
	nop	word ptr cs:[rax + rax]
.label_75:
	mov	rcx, r12
.label_81:
	cmp	r8d, 2
	setne	al
	test	r14, r14
	setne	dl
	cmp	byte ptr [rsp + 0xf], 0
	je	.label_175
	or	al, dl
	jne	.label_175
	mov	r11, rcx
	jmp	.label_55
.label_71:
	mov	eax, 2
.label_85:
	mov	qword ptr [rsp + 0x38], rax
.label_55:
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
.label_163:
	mov	r14, rax
.label_124:
	mov	rax, r14
	add	rsp, 0xc8
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_59:
	mov	rdx, qword ptr [rsp + 0x58]
	test	rdx, rdx
	je	.label_118
	cmp	byte ptr [rsp + 0xf], 0
	mov	rcx, qword ptr [rsp + 0x10]
	jne	.label_99
	mov	al, byte ptr [rdx]
	test	al, al
	je	.label_99
	inc	rdx
	nop	dword ptr [rax + rax]
.label_106:
	cmp	r14, rbp
	jae	.label_103
	mov	byte ptr [rcx + r14], al
.label_103:
	inc	r14
	movzx	eax, byte ptr [rdx]
	inc	rdx
	test	al, al
	jne	.label_106
	jmp	.label_99
.label_173:
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
	jmp	.label_163
.label_118:
	mov	rcx, qword ptr [rsp + 0x10]
.label_99:
	cmp	r14, rbp
	jae	.label_124
	mov	byte ptr [rcx + r14], 0
	jmp	.label_124
.label_80:
	mov	eax, 5
	jmp	.label_85
.label_88:
	call	abort
	.section	.text
	.align	32
	#Procedure 0x402920
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
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4029f0
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
	je	.label_181
	mov	qword ptr [rax], rbx
.label_181:
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
	#Procedure 0x402ae0
	.globl quotearg_free
	.type quotearg_free, @function
quotearg_free:

	push	r15
	push	r14
	push	rbx
	mov	r14, qword ptr [rip + slotvec]
	cmp	dword ptr [rip + nslots],  2
	jl	.label_182
	lea	r15, [r14 + 0x18]
	mov	ebx, 1
	nop	
.label_185:
	mov	rdi, qword ptr [r15]
	call	free
	inc	rbx
	movsxd	rax, dword ptr [rip + nslots]
	add	r15, 0x10
	cmp	rbx, rax
	jl	.label_185
.label_182:
	mov	rdi, qword ptr [r14 + 8]
	mov	eax, OFFSET FLAT:slot0
	cmp	rdi, rax
	je	.label_186
	call	free
	mov	qword ptr [rip + slotvec0],  0x100
	mov	qword ptr [rip + label_183], OFFSET FLAT:slot0
.label_186:
	mov	eax, OFFSET FLAT:slotvec0
	cmp	r14, rax
	je	.label_184
	mov	rdi, r14
	call	free
	mov	qword ptr [rip + slotvec], OFFSET FLAT:slotvec0
.label_184:
	mov	dword ptr [rip + nslots],  1
	pop	rbx
	pop	r14
	pop	r15
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x402b80
	.globl quotearg_n
	.type quotearg_n, @function
quotearg_n:

	mov	rdx, -1
	mov	ecx, OFFSET FLAT:default_quoting_options
	jmp	quotearg_n_options
	nop	
	.section	.text
	.align	32
	#Procedure 0x402b90

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
	js	.label_190
	mov	eax, dword ptr [r13]
	mov	rbp, qword ptr [rip + slotvec]
	cmp	dword ptr [rip + nslots],  r12d
	mov	qword ptr [rsp + 0x18], r13
	mov	dword ptr [rsp], eax
	mov	qword ptr [rsp + 0x10], rbx
	mov	qword ptr [rsp + 8], r15
	jg	.label_193
	cmp	r12d, 0x7fffffff
	je	.label_188
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
	jne	.label_191
	movups	xmm0, xmmword ptr [rip + slotvec0]
	movups	xmmword ptr [r14], xmm0
.label_191:
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
.label_193:
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
	jbe	.label_189
	mov	rax, qword ptr [rsp + 0x18]
	mov	ebp, dword ptr [rsp]
	jmp	.label_192
.label_189:
	lea	rax, [rbp + r13]
	lea	r12, [rbp + r13 + 8]
	inc	r15
	mov	qword ptr [rax], r15
	mov	eax, OFFSET FLAT:slot0
	cmp	r14, rax
	mov	ebp, dword ptr [rsp]
	je	.label_187
	mov	rdi, r14
	call	free
.label_187:
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
.label_192:
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
.label_190:
	call	abort
.label_188:
	call	xalloc_die
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x402d50
	.globl quotearg_n_mem
	.type quotearg_n_mem, @function
quotearg_n_mem:

	mov	ecx, OFFSET FLAT:default_quoting_options
	jmp	quotearg_n_options
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x402d60
	.globl quotearg
	.type quotearg, @function
quotearg:

	mov	rax, rdi
	xor	edi, edi
	mov	rdx, -1
	mov	ecx, OFFSET FLAT:default_quoting_options
	mov	rsi, rax
	jmp	quotearg_n_options
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x402d80
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
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x402da0
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
	je	.label_194
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
.label_194:
	call	abort
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x402e10
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
	je	.label_195
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
.label_195:
	call	abort
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x402e80
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
	je	.label_196
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
.label_196:
	call	abort
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x402ef0
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
	je	.label_197
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
.label_197:
	call	abort
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x402f60
	.globl quotearg_char_mem
	.type quotearg_char_mem, @function
quotearg_char_mem:

	sub	rsp, 0x38
	mov	ecx, edx
	mov	r8, rsi
	mov	rdx, rdi
	mov	rsi, qword ptr [rip + label_198]
	mov	qword ptr [rsp + 0x30], rsi
	movups	xmm0, xmmword ptr [rip + label_199]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0, xmmword ptr [rip + label_200]
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
	#Procedure 0x402fd0
	.globl quotearg_char
	.type quotearg_char, @function
quotearg_char:

	sub	rsp, 0x38
	mov	ecx, esi
	mov	rax, rdi
	mov	rdx, qword ptr [rip + label_198]
	mov	qword ptr [rsp + 0x30], rdx
	movups	xmm0, xmmword ptr [rip + label_199]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0, xmmword ptr [rip + label_200]
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
	.section	.text
	.align	32
	#Procedure 0x403040

	.globl quotearg_colon
	.type quotearg_colon, @function
quotearg_colon:
	sub	rsp, 0x38
	mov	rax, rdi
	mov	rcx, qword ptr [rip + label_198]
	mov	qword ptr [rsp + 0x30], rcx
	movups	xmm0, xmmword ptr [rip + label_199]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0, xmmword ptr [rip + label_200]
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
	#Procedure 0x4030a0
	.globl quotearg_colon_mem
	.type quotearg_colon_mem, @function
quotearg_colon_mem:

	sub	rsp, 0x38
	mov	rax, rsi
	mov	rdx, rdi
	mov	rcx, qword ptr [rip + label_198]
	mov	qword ptr [rsp + 0x30], rcx
	movups	xmm0, xmmword ptr [rip + label_199]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0, xmmword ptr [rip + label_200]
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
	#Procedure 0x403100
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
	je	.label_201
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
.label_201:
	call	abort
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4031a0
	.globl quotearg_n_custom
	.type quotearg_n_custom, @function
quotearg_n_custom:

	sub	rsp, 0x38
	mov	rax, qword ptr [rip + label_198]
	mov	qword ptr [rsp + 0x30], rax
	movups	xmm0, xmmword ptr [rip + label_199]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0, xmmword ptr [rip + label_200]
	movaps	xmmword ptr [rsp + 0x10], xmm0
	movups	xmm0, xmmword ptr [rip + default_quoting_options]
	movaps	xmmword ptr [rsp], xmm0
	mov	dword ptr [rsp], 0xa
	test	rsi, rsi
	je	.label_202
	test	rdx, rdx
	je	.label_202
	mov	qword ptr [rsp + 0x28], rsi
	mov	qword ptr [rsp + 0x30], rdx
	lea	rax, [rsp]
	mov	rdx, -1
	mov	rsi, rcx
	mov	rcx, rax
	call	quotearg_n_options
	add	rsp, 0x38
	ret	
.label_202:
	call	abort
	nop	
	.section	.text
	.align	32
	#Procedure 0x403210
	.globl quotearg_n_custom_mem
	.type quotearg_n_custom_mem, @function
quotearg_n_custom_mem:

	sub	rsp, 0x38
	mov	rax, qword ptr [rip + label_198]
	mov	qword ptr [rsp + 0x30], rax
	movups	xmm0, xmmword ptr [rip + label_199]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0, xmmword ptr [rip + label_200]
	movaps	xmmword ptr [rsp + 0x10], xmm0
	movups	xmm0, xmmword ptr [rip + default_quoting_options]
	movaps	xmmword ptr [rsp], xmm0
	mov	dword ptr [rsp], 0xa
	test	rsi, rsi
	je	.label_203
	test	rdx, rdx
	je	.label_203
	mov	qword ptr [rsp + 0x28], rsi
	mov	qword ptr [rsp + 0x30], rdx
	lea	rax, [rsp]
	mov	rsi, rcx
	mov	rdx, r8
	mov	rcx, rax
	call	quotearg_n_options
	add	rsp, 0x38
	ret	
.label_203:
	call	abort
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x403280
	.globl quotearg_custom
	.type quotearg_custom, @function
quotearg_custom:

	sub	rsp, 0x38
	mov	rax, rdx
	mov	rcx, qword ptr [rip + label_198]
	mov	qword ptr [rsp + 0x30], rcx
	movups	xmm0, xmmword ptr [rip + label_199]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0, xmmword ptr [rip + label_200]
	movaps	xmmword ptr [rsp + 0x10], xmm0
	movups	xmm0, xmmword ptr [rip + default_quoting_options]
	movaps	xmmword ptr [rsp], xmm0
	mov	dword ptr [rsp], 0xa
	test	rdi, rdi
	je	.label_204
	test	rsi, rsi
	je	.label_204
	mov	qword ptr [rsp + 0x28], rdi
	mov	qword ptr [rsp + 0x30], rsi
	lea	rcx, [rsp]
	xor	edi, edi
	mov	rdx, -1
	mov	rsi, rax
	call	quotearg_n_options
	add	rsp, 0x38
	ret	
.label_204:
	call	abort
	.section	.text
	.align	32
	#Procedure 0x4032f0
	.globl quotearg_custom_mem
	.type quotearg_custom_mem, @function
quotearg_custom_mem:

	sub	rsp, 0x38
	mov	rax, qword ptr [rip + label_198]
	mov	qword ptr [rsp + 0x30], rax
	movups	xmm0, xmmword ptr [rip + label_199]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0, xmmword ptr [rip + label_200]
	movaps	xmmword ptr [rsp + 0x10], xmm0
	movups	xmm0, xmmword ptr [rip + default_quoting_options]
	movaps	xmmword ptr [rsp], xmm0
	mov	dword ptr [rsp], 0xa
	test	rdi, rdi
	je	.label_205
	test	rsi, rsi
	je	.label_205
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
.label_205:
	call	abort
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x403360
	.globl quote_n_mem
	.type quote_n_mem, @function
quote_n_mem:

	mov	ecx, OFFSET FLAT:quote_quoting_options
	jmp	quotearg_n_options
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x403370
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
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x403390
	.globl quote_n
	.type quote_n, @function
quote_n:

	mov	rdx, -1
	mov	ecx, OFFSET FLAT:quote_quoting_options
	jmp	quotearg_n_options
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4033b0

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
	#Procedure 0x4033d0

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
	jne	.label_210
	call	locale_charset
	movsx	ecx, byte ptr [rax]
	and	ecx, 0xffffffdf
	cmp	ecx, 0x47
	je	.label_214
	cmp	ecx, 0x55
	jne	.label_206
	movsx	ecx, byte ptr [rax + 1]
	and	ecx, 0xffffffdf
	cmp	ecx, 0x54
	jne	.label_206
	movsx	ecx, byte ptr [rax + 2]
	and	ecx, 0xffffffdf
	cmp	ecx, 0x46
	jne	.label_206
	cmp	byte ptr [rax + 3], 0x2d
	jne	.label_206
	cmp	byte ptr [rax + 4], 0x38
	jne	.label_206
	cmp	byte ptr [rax + 5], 0
	jne	.label_206
	cmp	byte ptr [rbx], 0x60
	mov	ecx, OFFSET FLAT:label_212
	mov	eax, OFFSET FLAT:label_213
	jmp	.label_209
.label_214:
	movsx	ecx, byte ptr [rax + 1]
	and	ecx, 0xffffffdf
	cmp	ecx, 0x42
	jne	.label_206
	cmp	byte ptr [rax + 2], 0x31
	jne	.label_206
	cmp	byte ptr [rax + 3], 0x38
	jne	.label_206
	cmp	byte ptr [rax + 4], 0x30
	jne	.label_206
	cmp	byte ptr [rax + 5], 0x33
	jne	.label_206
	cmp	byte ptr [rax + 6], 0x30
	jne	.label_206
	cmp	byte ptr [rax + 7], 0
	je	.label_211
.label_206:
	cmp	ebp, 9
	mov	ecx, OFFSET FLAT:label_64
	mov	eax, OFFSET FLAT:label_109
.label_209:
	cmove	rax, rcx
.label_210:
	add	rsp, 8
	pop	rbx
	pop	rbp
	ret	
.label_211:
	cmp	byte ptr [rbx], 0x60
	mov	ecx, OFFSET FLAT:label_207
	mov	eax, OFFSET FLAT:label_208
	jmp	.label_209
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4034a0

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
	je	.label_227
	mov	edx, OFFSET FLAT:label_218
	xor	eax, eax
	mov	rdi, r14
	mov	r8, rbx
	call	__fprintf_chk
	jmp	.label_224
.label_227:
	mov	edx, OFFSET FLAT:label_225
	xor	eax, eax
	mov	rdi, r14
	mov	rcx, rbx
	mov	r8, r9
	call	__fprintf_chk
.label_224:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_229
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
	mov	esi, OFFSET FLAT:label_226
	mov	edx, 5
	call	dcgettext
	mov	rdi, rax
	mov	rsi, r14
	call	fputs_unlocked
	cmp	r12, 9
	ja	.label_230
	jmp	qword ptr [(r12 * 8) + label_231]
.label_321:
	add	rsp, 8
	jmp	.label_217
.label_230:
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
	jmp	.label_217
.label_322:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_216
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
.label_323:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_222
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
.label_324:
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
.label_325:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_233
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
	jmp	.label_217
.label_326:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_232
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
	jmp	.label_217
.label_327:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_215
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
	jmp	.label_217
.label_328:
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
	jmp	.label_217
.label_330:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_223
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
	jmp	.label_217
.label_329:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_228
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
.label_217:
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x403800
	.globl version_etc_ar
	.type version_etc_ar, @function
version_etc_ar:

	mov	r9, -1
	nop	word ptr [rax + rax]
.label_234:
	cmp	qword ptr [r8 + r9*8 + 8], 0
	lea	r9, [r9 + 1]
	jne	.label_234
	jmp	version_etc_arn
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x403830

	.globl version_etc_va
	.type version_etc_va, @function
version_etc_va:
	movsxd	r10, dword ptr [r8]
	cmp	r10, 0x28
	ja	.label_245
	mov	r9, r10
	add	r9, qword ptr [r8 + 0x10]
	lea	r10d, [r10 + 8]
	mov	dword ptr [r8], r10d
	jmp	.label_247
.label_245:
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
.label_247:
	sub	rsp, 0x58
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp], rax
	xor	r9d, r9d
	test	rax, rax
	je	.label_235
	cmp	r10d, 0x29
	jae	.label_244
	movsxd	r9, r10d
	add	r9, qword ptr [r8 + 0x10]
	add	r10d, 8
	mov	dword ptr [r8], r10d
	jmp	.label_246
.label_244:
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
.label_246:
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp + 8], rax
	mov	r9d, 1
	test	rax, rax
	je	.label_235
	cmp	r10d, 0x29
	jae	.label_242
	movsxd	r9, r10d
	add	r9, qword ptr [r8 + 0x10]
	add	r10d, 8
	mov	dword ptr [r8], r10d
	jmp	.label_243
.label_242:
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
.label_243:
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp + 0x10], rax
	mov	r9d, 2
	test	rax, rax
	je	.label_235
	cmp	r10d, 0x29
	jae	.label_240
	movsxd	r9, r10d
	add	r9, qword ptr [r8 + 0x10]
	add	r10d, 8
	mov	dword ptr [r8], r10d
	jmp	.label_241
.label_240:
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
.label_241:
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp + 0x18], rax
	mov	r9d, 3
	test	rax, rax
	je	.label_235
	cmp	r10d, 0x29
	jae	.label_238
	movsxd	r9, r10d
	add	r9, qword ptr [r8 + 0x10]
	add	r10d, 8
	mov	dword ptr [r8], r10d
	jmp	.label_239
.label_238:
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
.label_239:
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp + 0x20], rax
	mov	r9d, 4
	test	rax, rax
	je	.label_235
	cmp	r10d, 0x29
	jae	.label_236
	movsxd	r9, r10d
	add	r9, qword ptr [r8 + 0x10]
	add	r10d, 8
	mov	dword ptr [r8], r10d
	jmp	.label_237
.label_236:
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
.label_237:
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp + 0x28], rax
	mov	r9d, 5
	test	rax, rax
	je	.label_235
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp + 0x30], rax
	mov	r9d, 6
	test	rax, rax
	je	.label_235
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp + 0x38], rax
	mov	r9d, 7
	test	rax, rax
	je	.label_235
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp + 0x40], rax
	mov	r9d, 8
	test	rax, rax
	je	.label_235
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp + 0x48], rax
	cmp	rax, 1
	mov	r9d, 9
	sbb	r9, -1
.label_235:
	lea	r8, [rsp]
	call	version_etc_arn
	add	rsp, 0x58
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x403a20
	.globl version_etc
	.type version_etc, @function
version_etc:

	sub	rsp, 0xd8
	test	al, al
	je	.label_248
	movaps	xmmword ptr [rsp + 0x50], xmm0
	movaps	xmmword ptr [rsp + 0x60], xmm1
	movaps	xmmword ptr [rsp + 0x70], xmm2
	movaps	xmmword ptr [rsp + 0x80], xmm3
	movaps	xmmword ptr [rsp + 0x90], xmm4
	movaps	xmmword ptr [rsp + 0xa0], xmm5
	movaps	xmmword ptr [rsp + 0xb0], xmm6
	movaps	xmmword ptr [rsp + 0xc0], xmm7
.label_248:
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
	#Procedure 0x403ab0
	.globl emit_bug_reporting_address
	.type emit_bug_reporting_address, @function
emit_bug_reporting_address:

	push	rax
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_249
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:label_250
	xor	eax, eax
	mov	rsi, rcx
	call	__printf_chk
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_252
	mov	edx, 5
	call	dcgettext
	mov	rsi, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:label_16
	mov	ecx, OFFSET FLAT:label_17
	xor	eax, eax
	call	__printf_chk
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_251
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	pop	rax
	jmp	fputs_unlocked
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x403b30
	.globl xnmalloc
	.type xnmalloc, @function
xnmalloc:

	push	rbx
	mov	rbx, rsi
	movabs	rax, 0x7fffffffffffffff
	xor	edx, edx
	div	rbx
	cmp	rax, rdi
	jb	.label_253
	imul	rbx, rdi
	mov	rdi, rbx
	call	malloc
	test	rbx, rbx
	je	.label_254
	test	rax, rax
	je	.label_253
.label_254:
	pop	rbx
	ret	
.label_253:
	call	xalloc_die
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x403b70

	.globl xmalloc
	.type xmalloc, @function
xmalloc:
	push	rbx
	mov	rbx, rdi
	call	malloc
	test	rbx, rbx
	je	.label_255
	test	rax, rax
	je	.label_256
.label_255:
	pop	rbx
	ret	
.label_256:
	call	xalloc_die
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x403b90
	.globl xnrealloc
	.type xnrealloc, @function
xnrealloc:

	push	rbx
	mov	rbx, rdx
	movabs	rax, 0x7fffffffffffffff
	xor	edx, edx
	div	rbx
	cmp	rax, rsi
	jb	.label_257
	imul	rbx, rsi
	test	rdi, rdi
	je	.label_258
	test	rbx, rbx
	jne	.label_258
	call	free
	xor	eax, eax
	pop	rbx
	ret	
.label_258:
	mov	rsi, rbx
	call	realloc
	test	rbx, rbx
	je	.label_259
	test	rax, rax
	je	.label_257
.label_259:
	pop	rbx
	ret	
.label_257:
	call	xalloc_die
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x403be0

	.globl xrealloc
	.type xrealloc, @function
xrealloc:
	push	rbx
	mov	rbx, rsi
	test	rdi, rdi
	je	.label_260
	test	rbx, rbx
	jne	.label_260
	call	free
	xor	eax, eax
	pop	rbx
	ret	
.label_260:
	mov	rsi, rbx
	call	realloc
	test	rbx, rbx
	je	.label_262
	test	rax, rax
	je	.label_261
.label_262:
	pop	rbx
	ret	
.label_261:
	call	xalloc_die
	.section	.text
	.align	32
	#Procedure 0x403c10
	.globl x2nrealloc
	.type x2nrealloc, @function
x2nrealloc:

	push	rbx
	mov	rbx, rdx
	mov	rcx, qword ptr [rsi]
	test	rdi, rdi
	je	.label_266
	movabs	rax, 0x5555555555555554
	xor	edx, edx
	div	rbx
	cmp	rax, rcx
	jbe	.label_268
	mov	rax, rcx
	shr	rax, 1
	lea	rcx, [rcx + rax + 1]
	jmp	.label_263
.label_266:
	test	rcx, rcx
	jne	.label_269
	mov	eax, 0x80
	xor	edx, edx
	div	rbx
	xor	ecx, ecx
	cmp	rbx, 0x80
	seta	cl
	add	rcx, rax
.label_269:
	movabs	rax, 0x7fffffffffffffff
	xor	edx, edx
	div	rbx
	cmp	rax, rcx
	jb	.label_264
.label_263:
	mov	qword ptr [rsi], rcx
	imul	rbx, rcx
	test	rdi, rdi
	je	.label_265
	test	rbx, rbx
	jne	.label_265
	call	free
	xor	eax, eax
	pop	rbx
	ret	
.label_265:
	mov	rsi, rbx
	call	realloc
	test	rbx, rbx
	je	.label_267
	test	rax, rax
	je	.label_268
.label_267:
	pop	rbx
	ret	
.label_268:
	call	xalloc_die
.label_264:
	call	xalloc_die
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x403cb0
	.globl xcharalloc
	.type xcharalloc, @function
xcharalloc:

	push	rbx
	mov	rbx, rdi
	call	malloc
	test	rbx, rbx
	je	.label_270
	test	rax, rax
	je	.label_271
.label_270:
	pop	rbx
	ret	
.label_271:
	call	xalloc_die
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x403cd0
	.globl x2realloc
	.type x2realloc, @function
x2realloc:

	push	rbx
	mov	rax, qword ptr [rsi]
	test	rdi, rdi
	je	.label_274
	movabs	rcx, 0x5555555555555554
	cmp	rax, rcx
	jae	.label_276
	mov	rbx, rax
	shr	rbx, 1
	add	rbx, rax
	inc	rbx
	mov	qword ptr [rsi], rbx
	jne	.label_273
	call	free
	xor	eax, eax
	jmp	.label_275
.label_274:
	test	rax, rax
	mov	ebx, 0x80
	cmovne	rbx, rax
	test	rbx, rbx
	js	.label_272
	mov	qword ptr [rsi], rbx
.label_273:
	mov	rsi, rbx
	call	realloc
	test	rbx, rbx
	je	.label_275
	test	rax, rax
	je	.label_272
.label_275:
	pop	rbx
	ret	
.label_272:
	call	xalloc_die
.label_276:
	call	xalloc_die
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x403d40
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
	je	.label_278
	test	r14, r14
	je	.label_277
.label_278:
	xor	esi, esi
	mov	rdi, r14
	mov	rdx, rbx
	call	memset
	mov	rax, r14
	add	rsp, 8
	pop	rbx
	pop	r14
	ret	
.label_277:
	call	xalloc_die
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x403d80
	.globl xcalloc
	.type xcalloc, @function
xcalloc:

	push	rax
	movabs	rax, 0x7fffffffffffffff
	xor	edx, edx
	div	rsi
	cmp	rax, rdi
	jb	.label_279
	call	rpl_calloc
	test	rax, rax
	je	.label_279
	pop	rcx
	ret	
.label_279:
	call	xalloc_die
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x403db0

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
	je	.label_280
	test	r15, r15
	je	.label_281
.label_280:
	mov	rdi, r15
	mov	rsi, r14
	mov	rdx, rbx
	call	memcpy
	mov	rax, r15
	pop	rbx
	pop	r14
	pop	r15
	ret	
.label_281:
	call	xalloc_die
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x403df0
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
	je	.label_283
	test	r15, r15
	je	.label_282
.label_283:
	mov	rdi, r15
	mov	rsi, r14
	mov	rdx, rbx
	call	memcpy
	mov	rax, r15
	pop	rbx
	pop	r14
	pop	r15
	ret	
.label_282:
	call	xalloc_die
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x403e40

	.globl xalloc_die
	.type xalloc_die, @function
xalloc_die:
	push	rbx
	mov	ebx, dword ptr [rip + exit_failure]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_284
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	xor	esi, esi
	mov	edx, OFFSET FLAT:label_32
	xor	eax, eax
	mov	edi, ebx
	call	error
	call	abort
	.section	.text
	.align	32
	#Procedure 0x403e70

	.globl rpl_calloc
	.type rpl_calloc, @function
rpl_calloc:
	test	rdi, rdi
	mov	eax, 1
	je	.label_285
	test	rsi, rsi
	mov	ecx, 1
	je	.label_286
	mov	rax, rsi
	imul	rax, rdi
	xor	edx, edx
	div	rsi
	cmp	rax, rdi
	mov	rax, rsi
	mov	rcx, rdi
	je	.label_286
	push	rax
	call	__errno_location
	mov	dword ptr [rax], 0xc
	xor	eax, eax
	pop	rcx
	ret	
.label_285:
	mov	ecx, 1
.label_286:
	mov	rdi, rcx
	mov	rsi, rax
	jmp	calloc
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x403ec0

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
	je	.label_287
	cmp	r15, -2
	jb	.label_287
	xor	edi, edi
	call	hard_locale
	test	al, al
	jne	.label_287
	movzx	eax, byte ptr [r14]
	mov	dword ptr [rbx], eax
	mov	r15d, 1
.label_287:
	mov	rax, r15
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x403f20

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
	jne	.label_289
	test	eax, eax
	sete	cl
	neg	eax
	sbb	ebx, ebx
	test	r14, r14
	jne	.label_288
	test	cl, cl
	jne	.label_288
	call	__errno_location
	xor	ecx, ecx
	cmp	dword ptr [rax], 9
	mov	ebx, 0xffffffff
	cmove	ebx, ecx
	jmp	.label_288
.label_289:
	mov	ebx, 0xffffffff
	test	eax, eax
	jne	.label_288
	call	__errno_location
	mov	dword ptr [rax], 0
.label_288:
	mov	eax, ebx
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x403f80

	.globl hard_locale
	.type hard_locale, @function
hard_locale:
	push	rbx
	xor	esi, esi
	call	setlocale
	mov	bl, 1
	test	rax, rax
	je	.label_291
	cmp	byte ptr [rax], 0x43
	jne	.label_293
	cmp	byte ptr [rax + 1], 0
	je	.label_290
.label_293:
	mov	esi, OFFSET FLAT:label_292
	mov	rdi, rax
	call	strcmp
	test	eax, eax
	jne	.label_291
.label_290:
	xor	ebx, ebx
.label_291:
	mov	eax, ebx
	pop	rbx
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x403fc0

	.globl locale_charset
	.type locale_charset, @function
locale_charset:
	push	rax
	mov	edi, 0xe
	call	rpl_nl_langinfo
	test	rax, rax
	mov	ecx, OFFSET FLAT:label_28
	cmovne	rcx, rax
	cmp	byte ptr [rcx], 0
	mov	eax, OFFSET FLAT:label_294
	cmovne	rax, rcx
	pop	rcx
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x403ff0

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
.label_295:
	mov	rdi, rbx
	pop	rbx
	pop	r14
	pop	rbp
	jmp	fclose
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x404070

	.globl rpl_fflush
	.type rpl_fflush, @function
rpl_fflush:
	push	rbx
	mov	rbx, rdi
	test	rbx, rbx
	je	.label_298
	mov	rdi, rbx
	call	__freading
	test	eax, eax
	je	.label_298
	test	byte ptr [rbx + 1], 1
	je	.label_298
	xor	esi, esi
	mov	edx, 1
	mov	rdi, rbx
	call	rpl_fseeko
.label_298:
	mov	rdi, rbx
	pop	rbx
	jmp	fflush
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4040b0

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
	jne	.label_299
	mov	rax, qword ptr [rbx + 0x28]
	cmp	rax, qword ptr [rbx + 0x20]
	jne	.label_299
	cmp	qword ptr [rbx + 0x48], 0
	je	.label_300
.label_299:
	mov	rdi, rbx
	mov	rsi, rbp
	mov	edx, r14d
	pop	rbx
	pop	r14
	pop	rbp
	jmp	fseeko
.label_300:
	mov	rdi, rbx
	call	fileno
	mov	edi, eax
	mov	rsi, rbp
	mov	edx, r14d
	call	lseek
	mov	rcx, rax
	mov	eax, 0xffffffff
	cmp	rcx, -1
	je	.label_301
	and	byte ptr [rbx], 0xef
	mov	qword ptr [rbx + 0x90], rcx
	xor	eax, eax
.label_301:
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	nop	
	.section .text
	.align	32
	#Procedure 0x404120

	.globl rpl_nl_langinfo
	.type rpl_nl_langinfo, @function
rpl_nl_langinfo:
	lea	eax, [rdi - 0x27d8]
	lea	ecx, [rdi + 0x1d842]
	cmp	eax, 0xc
	cmovb	edi, ecx
	jmp	nl_langinfo
	nop	word ptr [rax + rax]
	nop	
	nop	word ptr cs:[rax + rax]
	nop	word ptr cs:[rax + rax]
	nop	word ptr cs:[rax + rax]
